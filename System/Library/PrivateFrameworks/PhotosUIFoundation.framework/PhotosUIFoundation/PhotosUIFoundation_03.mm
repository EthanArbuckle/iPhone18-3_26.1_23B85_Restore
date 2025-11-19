BOOL sub_1B3FC7414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v5 = sub_1B405DEC4();
    }
  }

  return (v5 & 1) == 0;
}

uint64_t sub_1B3FC7468(uint64_t a1, uint64_t a2)
{
  sub_1B3FC64B0(a1, v10);
  sub_1B3FC64B0(a2, &v12);
  if (!v11)
  {
    if (!*(&v13 + 1))
    {
      sub_1B3FB3BC0(v10, &qword_1EB87C5D0);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_1B3FB3BC0(v10, qword_1EB87C5D8);
    v4 = 1;
    return v4 & 1;
  }

  sub_1B3FC64B0(v10, v8);
  if (!*(&v13 + 1))
  {
    sub_1B3FC7974(v8);
    goto LABEL_7;
  }

  v6[0] = v12;
  v6[1] = v13;
  v6[2] = v14;
  v7 = v15;
  v3 = v9(v6);
  sub_1B3FC7974(v6);
  sub_1B3FC7974(v8);
  sub_1B3FB3BC0(v10, &qword_1EB87C5D0);
  v4 = v3 ^ 1;
  return v4 & 1;
}

uint64_t sub_1B3FC7650(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a1 + *a4);
  *v4 = a2;
  v4[1] = a3;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
}

uint64_t sub_1B3FC770C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___additionalInfo;
  swift_beginAccess();
  sub_1B3FC7D88(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t PhotosObservableCollectionTitleModel.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel_id;
  sub_1B405CF44();
  OUTLINED_FUNCTION_8();
  (*(v2 + 8))(v0 + v1);

  sub_1B3FB3BC0(v0 + OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___additionalInfo, &qword_1EB87C5D0);
  v3 = OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___observationRegistrar;
  sub_1B405D064();
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t PhotosObservableCollectionTitleModel.__deallocating_deinit()
{
  PhotosObservableCollectionTitleModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1B3FC7A74()
{
  sub_1B405CF44();
  if (v0 <= 0x3F)
  {
    sub_1B3FC7B60(319, &qword_1EB879FA8);
    if (v1 <= 0x3F)
    {
      sub_1B3FC7B60(319, &qword_1EB879FA0);
      if (v2 <= 0x3F)
      {
        sub_1B3FC7B60(319, &qword_1EB87A350);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B3FC7B60(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B405DAC4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1B3FC7BD4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B3FC7C0C()
{
  result = sub_1B405CF44();
  if (v1 <= 0x3F)
  {
    result = sub_1B405D064();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B3FC7D30()
{
  result = qword_1EB87AD18;
  if (!qword_1EB87AD18)
  {
    type metadata accessor for PhotosObservableCollectionTitleModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87AD18);
  }

  return result;
}

uint64_t sub_1B3FC7D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C5D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1B3FC7E14()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC18PhotosUIFoundation36PhotosObservableCollectionTitleModel___assetCount;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

id MenuGroupAction.init(group:title:systemImageName:role:state:wantsDisclosureButton:customMenuElementFactory:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x60);
  v18 = sub_1B405DAC4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v14[v17], a1, v18);
  OUTLINED_FUNCTION_0_34();
  v21 = &v14[*(v20 + 104)];
  *v21 = a2;
  *(v21 + 1) = a3;
  OUTLINED_FUNCTION_0_34();
  v23 = &v14[*(v22 + 112)];
  *v23 = a4;
  *(v23 + 1) = a5;
  OUTLINED_FUNCTION_3_16();
  *&v14[*(v24 + 120)] = v25;
  OUTLINED_FUNCTION_3_16();
  *&v14[*(v26 + 128)] = v27;
  OUTLINED_FUNCTION_0_34();
  v14[*(v28 + 136)] = a10;
  OUTLINED_FUNCTION_0_34();
  v30 = &v14[*(v29 + 144)];
  *v30 = a11;
  *(v30 + 1) = a12;
  OUTLINED_FUNCTION_0_34();
  v32 = &v14[*(v31 + 152)];
  *v32 = a13;
  *(v32 + 1) = a14;
  v38.receiver = v14;
  v38.super_class = type metadata accessor for MenuGroupAction();
  v33 = objc_msgSendSuper2(&v38, sel_init);
  (*(v19 + 8))(a1, v18);
  return v33;
}

id MenuGroupAction.__allocating_init<A>(group:menuAction:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v33 - v12;
  v14 = *(v9 + 16);
  v37 = v15;
  v38 = a1;
  v14(&v33 - v12, a1);
  v16 = [a2 title];
  v17 = sub_1B405D444();
  v35 = v18;
  v36 = v17;

  v19 = [a2 systemImageName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1B405D444();
    v33 = v22;
    v34 = v21;
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v23 = [a2 role];
  v24 = [a2 state];
  v25 = swift_allocObject();
  v25[2] = v7;
  v25[3] = a3;
  v26 = *(v3 + 88);
  v25[4] = v26;
  v25[5] = a2;
  v27 = swift_allocObject();
  v28 = a3;
  v29 = v27;
  v27[2] = v7;
  v27[3] = v28;
  v27[4] = v26;
  v27[5] = a2;
  swift_unknownObjectRetain();
  *&v32 = sub_1B3FC84F8;
  *(&v32 + 1) = v25;
  v30 = MenuGroupAction.__allocating_init(group:title:systemImageName:role:state:wantsDisclosureButton:customMenuElementFactory:handler:)(v13, v36, v35, v34, v33, v23, 0, v24, 0, 0, v32, sub_1B3FC8650, v29);
  (*(v9 + 8))(v38, v37);
  return v30;
}

id sub_1B3FC83E0(uint64_t a1, uint64_t a2, id a3)
{
  if (([a3 respondsToSelector_] & 1) == 0)
  {
    return 0;
  }

  v6 = [a3 customMenuElementFactory];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v12[4] = a1;
  v12[5] = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B3FA78A4;
  v12[3] = &block_descriptor_10;
  v8 = _Block_copy(v12);
  v9 = v7[2];

  v10 = v9(v7, v8);
  _Block_release(v8);

  _Block_release(v7);
  return v10;
}

uint64_t sub_1B3FC8504(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B3F77C10(a1, v12);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6, v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_1B405DEB4();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  [a3 performAction:v10 presentationSource:a2];
  return swift_unknownObjectRelease();
}

id MenuGroupAction.__allocating_init<A>(group:menuGroupAction:)(uint64_t a1, char *a2)
{
  v33 = a1;
  v4 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v29 - v9;
  (*(v6 + 16))(&v29 - v9, a1, v4);
  OUTLINED_FUNCTION_2_22();
  v12 = &a2[*(v11 + 104)];
  v13 = v12[1];
  v32 = *v12;
  OUTLINED_FUNCTION_2_22();
  v15 = &a2[*(v14 + 112)];
  v16 = v15[1];
  v31 = *v15;
  OUTLINED_FUNCTION_2_22();
  v30 = *&a2[*(v17 + 120)];
  OUTLINED_FUNCTION_2_22();
  v29 = *&a2[*(v18 + 128)];
  v19 = _s18PhotosUIFoundation15MenuGroupActionC07_customC14ElementFactorySo06UIMenuG0CSgyypSg_So41UIPopoverPresentationControllerSourceItem_pSgtccSgvg_0();
  v21 = v20;
  OUTLINED_FUNCTION_2_22();
  v23 = &a2[*(v22 + 152)];
  v24 = *v23;
  v25 = v23[1];
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  *&v28 = v19;
  *(&v28 + 1) = v21;
  v26 = MenuGroupAction.__allocating_init(group:title:systemImageName:role:state:wantsDisclosureButton:customMenuElementFactory:handler:)(v10, v32, v13, v31, v16, v30, 0, v29, 0, 0, v28, v24, v25);

  (*(v6 + 8))(v33, v4);
  return v26;
}

uint64_t MenuGroupAction.group.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v4 = sub_1B405DAC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, &v1[v3], v4);
}

id sub_1B3FC88F8()
{
  MenuGroupAction.title.getter();
  v0 = sub_1B405D414();

  return v0;
}

id sub_1B3FC8998()
{
  MenuGroupAction.systemImageName.getter();
  if (v0)
  {
    v1 = sub_1B405D414();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1B3FC8B0C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B3FC8B94(char a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1B3FC8C7C()
{
  v0 = _s18PhotosUIFoundation15MenuGroupActionC07_customC14ElementFactorySo06UIMenuG0CSgyypSg_So41UIPopoverPresentationControllerSourceItem_pSgtccSgvg_0();
  if (v0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1B3FC8D28;
    v4[3] = &block_descriptor_8;
    v2 = _Block_copy(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1B3FC8D28(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_1B3FC954C, v4);

  return v5;
}

uint64_t sub_1B3FC8DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B3F77C10(a1, v12);
  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6, v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_1B405DEB4();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  (*(a3 + 16))(a3, v10, a2);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B3FC8F14()
{
  memset(v1, 0, sizeof(v1));
  sub_1B3FC8F4C();
  return sub_1B3F791B4(v1);
}

uint64_t sub_1B3FC8F9C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1B405DAF4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    swift_unknownObjectRetain();
    v5 = a1;
  }

  sub_1B3FC8F4C();
  swift_unknownObjectRelease();

  return sub_1B3F791B4(v7);
}

uint64_t sub_1B3FC9034()
{
  v0 = OUTLINED_FUNCTION_1_22();
  sub_1B3F7F018(v0);
  return OUTLINED_FUNCTION_1_22();
}

id MenuGroupAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MenuGroupAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenuGroupAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B3FC916C()
{
  result = sub_1B405DAC4();
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

uint64_t sub_1B3FC923C(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v3 = sub_1B405DAC4();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);
  OUTLINED_FUNCTION_1_27();

  OUTLINED_FUNCTION_1_27();

  OUTLINED_FUNCTION_1_27();
  sub_1B3F7BAA8(*&a1[*(v4 + 144)]);
  OUTLINED_FUNCTION_1_27();
}

uint64_t PhotosItemListChangeDetailsRepository.__allocating_init(countLimit:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosItemListChangeDetailsRepository.init(countLimit:)(a1);
  return v2;
}

uint64_t sub_1B3FC95A8(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1B3FC9FD4(0, result, *(*v1 + 16));
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_1B3FC9E44(0, result);
}

uint64_t sub_1B3FC9618()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  os_unfair_lock_unlock((v1 + 24));

  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1B3FC9908(0, v3, 0);
    v4 = v2 + 48;
    do
    {
      v5 = PhotosItemListChangeDetails.description.getter();
      v7 = v6;
      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1B3FC9908((v8 > 1), v9 + 1, 1);
      }

      *(v15 + 16) = v9 + 1;
      v10 = v15 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      v4 += 24;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE40);
  sub_1B3F97C44();
  v11 = sub_1B405D394();
  v13 = v12;

  sub_1B405DBC4();
  MEMORY[0x1B8C6F500](0xD000000000000028, 0x80000001B4077350);
  sub_1B405DD34();
  MEMORY[0x1B8C6F500](0xD000000000000011, 0x80000001B4077380);
  MEMORY[0x1B8C6F500](v11, v13);

  MEMORY[0x1B8C6F500](4087050, 0xE300000000000000);
  return 0;
}

uint64_t PhotosItemListChangeDetailsRepository.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

char *sub_1B3FC98C8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_35(a3, result);
  }

  return result;
}

char *sub_1B3FC98E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_35(a3, result);
  }

  return result;
}

char *sub_1B3FC9908(char *a1, int64_t a2, char a3)
{
  result = sub_1B3FC9A00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B3FC99C0(char *a1, int64_t a2, char a3)
{
  result = sub_1B3FC9C08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B3FC99E0(void *a1, int64_t a2, char a3)
{
  result = sub_1B3FC9D10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B3FC9A00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B3FC9B08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1B3FC9C08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B3FC9D10(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C678);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B3FC9E44(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1B3F7FFDC();
  v8 = *v2;
  v9 = *v2 + 32;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 24 * a2);
  if (v5 != a2 || v12 + 24 * v11 <= v9 + 24 * v5)
  {
    result = memmove((v9 + 24 * v5), v12, 24 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1B3FC9F40()
{
  OUTLINED_FUNCTION_1_28();
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v0;
  if (result)
  {
    if ((v0 & 0x8000000000000000) == 0 && (v0 & 0x4000000000000000) == 0)
    {
      if (v2 <= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v0 & 0x8000000000000000) == 0 && (v0 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1B405DDE4();
LABEL_9:
  result = sub_1B405DC24();
  *v1 = result;
  return result;
}

uint64_t sub_1B3FC9FD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t PXImageDynamicRange.description.getter(uint64_t a1)
{
  v1 = a1 + 1;
  result = 0x6669636570736E55;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x647261646E617453;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 1751607624;
      break;
    default:
      result = 16191;
      break;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UniqueAddress(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 255) >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 255) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        return 0;
      }

      return (*a1 | (v4 << 8)) - 255;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 255;
    }
  }

  return 0;
}

_BYTE *storeEnumTagSinglePayload for UniqueAddress(_BYTE *result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
        goto LABEL_19;
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
        break;
      case 2:
        *(result + 1) = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *(result + 1) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

CGFloat CGAffineTransform.uniformlyScaled(by:)@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>)
{
  v4 = v2[1];
  *&v9.a = *v2;
  *&v9.c = v4;
  *&v9.tx = v2[2];
  CGAffineTransformScale(&v8, &v9, a2, a2);
  result = v8.a;
  v6 = *&v8.c;
  v7 = *&v8.tx;
  *a1 = *&v8.a;
  a1[1] = v6;
  a1[2] = v7;
  return result;
}

__C::CGRect __swiftcall CGRect.init(center:size:)(CGPoint center, CGSize size)
{
  v2 = center.x - size.width * 0.5;
  v3 = center.y - size.height * 0.5;
  result.size.height = size.height;
  result.size.width = size.width;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__C::CGRect __swiftcall CGRect.offsetBy(_:)(CGPoint a1)
{
  v5 = a1.x + v1;
  v6 = a1.y + v2;
  v7 = v3;
  v8 = v4;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

__C::CGRect __swiftcall CGRect.insetBy(_:)(CGSize a1)
{
  v5 = PXEdgeInsetsInsetRect(v1, v2, v3, v4, a1.height, a1.width);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

__C::CGRect __swiftcall CGRect.insetBy(_:)(UIEdgeInsets a1)
{
  v5 = PXEdgeInsetsInsetRect(v1, v2, v3, v4, a1.top, a1.left);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

void CGRect.rounded(accuracy:)(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 <= 0.0)
  {
    sub_1B405DD74();
    __break(1u);
  }

  else
  {

    PXRectRoundToPixel(a2, a3, a4, a5, 1.0 / a1);
  }
}

double CGRect.scaledFromCenter(by:)()
{
  OUTLINED_FUNCTION_3_17();
  v2 = v1;
  v9.origin.x = v3;
  v9.origin.y = v4;
  v9.size.width = v5;
  v9.size.height = v6;
  MidX = CGRectGetMidX(v9);
  v10.origin.x = OUTLINED_FUNCTION_0_36();
  CGRectGetMidY(v10);
  return MidX - v2 * v0 * 0.5;
}

double sub_1B3FCA520(double (*a1)(void), void (*a2)(double))
{
  v3 = a1();
  v4 = OUTLINED_FUNCTION_0_36();
  a2(v4);
  return v3;
}

void CGRect.divided(atDistance:from:spacing:)(CGRectEdge edge@<W0>, CGPoint *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  CGRectDivide(v19, &slice, &remainder, a3, edge);
  v20 = remainder;
  size = slice.size;
  origin = slice.origin;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v20, &slice, &remainder, a4, edge);
  v12 = remainder.origin;
  v13 = remainder.size;
  *a2 = origin;
  a2[1] = size;
  a2[2] = v12;
  a2[3] = v13;
}

void CGRect.slice(length:from:)(int a1, double a2, double a3, double a4, double a5, CGFloat a6)
{
  switch(a1)
  {
    case 0:
    case 1:
      goto LABEL_4;
    case 2:
      v7.origin.x = OUTLINED_FUNCTION_2_23();
      v7.size.height = a6;
      CGRectGetMaxX(v7);
      goto LABEL_4;
    case 3:
      v8.origin.x = OUTLINED_FUNCTION_2_23();
      v8.size.height = a6;
      CGRectGetMaxY(v8);
LABEL_4:
      OUTLINED_FUNCTION_2_23();
      break;
    default:
      type metadata accessor for CGRectEdge(0);
      sub_1B405E044();
      __break(1u);
      break;
  }
}

int8x16_t CGRect.nilIfNull.getter@<Q0>(int8x16_t *a1@<X8>, double a2@<D0>, uint64_t a3@<D1>, double a4@<D2>, uint64_t a5@<D3>)
{
  IsNull = CGRectIsNull(*&a2);
  *v7.i64 = a2;
  v7.i64[1] = a3;
  *v8.i64 = a4;
  v8.i64[1] = a5;
  if (IsNull)
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s64(v9);
  v11 = vbicq_s8(v7, v10);
  result = vbicq_s8(v8, v10);
  *a1 = v11;
  a1[1] = result;
  a1[2].i8[0] = IsNull;
  return result;
}

double static CGSize.withAspectRatio(_:fitting:)(double a1, double a2, double a3)
{
  result = 0.0;
  if (a2 != 0.0 && a3 != 0.0)
  {
    if (a2 / a3 <= a1)
    {
      return a2;
    }

    else
    {
      return a1 * a3;
    }
  }

  return result;
}

double sub_1B3FCA844()
{
  OUTLINED_FUNCTION_3_17();
  v1 = v0();
  v4.origin.x = OUTLINED_FUNCTION_0_36();
  MidX = CGRectGetMidX(v4);
  v5.origin.x = OUTLINED_FUNCTION_0_36();
  CGRectGetMidY(v5);
  return MidX - v1 * 0.5;
}

double static CGSize.withAspectRatio(_:filling:)(double a1, double a2, double a3)
{
  result = 0.0;
  if (a2 != 0.0 && a3 != 0.0)
  {
    if (a2 / a3 >= a1)
    {
      return a2;
    }

    else
    {
      return a1 * a3;
    }
  }

  return result;
}

double * infix(_:_:)(double a1, double a2, double a3)
{
  return a1 * a3;
}

{
  return a1 * a3;
}

double / infix(_:_:)(double a1, double a2, double a3)
{
  return a1 / a3;
}

{
  return a1 / a3;
}

CGSize __swiftcall CGSize.rounded()()
{
  v2 = round(v0);
  v3 = round(v1);
  result.height = v3;
  result.width = v2;
  return result;
}

CGSize __swiftcall CGSize.roundedToEven()()
{
  v0.f64[1] = v1;
  __asm { FMOV            V1.2D, #0.5 }

  v7 = vrndaq_f64(vmulq_f64(v0, _Q1));
  v8 = vrndaq_f64(vaddq_f64(v7, v7));
  v9 = v8.f64[1];
  result.width = v8.f64[0];
  result.height = v9;
  return result;
}

CGSize __swiftcall CGSize.insetBy(_:)(UIEdgeInsets a1)
{
  v3 = v1 - a1.left - a1.right;
  v4 = v2 - a1.top - a1.bottom;
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

uint64_t sub_1B3FCAAB8(unsigned int (*a1)(void), double a2)
{
  if (a1())
  {
    return 0;
  }

  else
  {
    return *&a2;
  }
}

BOOL CGFloat.isEqual(toAngleInDegrees:tolerance:)(double a1, double a2, double a3)
{
  v3 = vabdd_f64(a3, a1);
  if (360.0 - v3 < v3)
  {
    v3 = 360.0 - v3;
  }

  return fabs(fmod(v3, 360.0)) <= a2;
}

BOOL CGFloat.isEqual(to:modulo:tolerance:)(double a1, long double a2, double a3, double a4)
{
  v4 = vabdd_f64(a4, a1);
  if (360.0 - v4 < v4)
  {
    v4 = 360.0 - v4;
  }

  return fabs(fmod(v4, a2)) <= a3;
}

int64x2_t sub_1B3FCAD2C()
{
  result = vdupq_n_s64(1uLL);
  xmmword_1EB87C680 = result;
  return result;
}

double static PhotosVerticalTextSpecs.default.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EB87B7C0 != -1)
  {
    swift_once();
  }

  result = *&xmmword_1EB87C680;
  *a1 = xmmword_1EB87C680;
  return result;
}

id PXDisplayRect.init(rect:in:)()
{
  OUTLINED_FUNCTION_0_37();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRect:v0 inCoordinateSpace:{v4, v3, v2, v1}];
  swift_unknownObjectRelease();
  return v5;
}

{
  OUTLINED_FUNCTION_0_37();
  v5 = &v0[OBJC_IVAR___PXDisplayRect_implementation];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  v5[48] = 1;
  v18.receiver = v0;
  v18.super_class = PXDisplayRect;
  v6 = objc_msgSendSuper2(&v18, sel_init);
  v13 = v4;
  v14 = v3;
  v15 = v2;
  v16 = v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v7 = v6;
  v8 = sub_1B405D3F4();
  swift_unknownObjectRelease();
  v12 = v8;
  v17 = 0;
  v9 = OBJC_IVAR___PXDisplayRect_implementation;
  swift_beginAccess();
  sub_1B3FCAF28(v11, v7 + v9);
  swift_endAccess();

  return v7;
}

uint64_t sub_1B3FCAF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C698);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3FCB040()
{
  v1 = OBJC_IVAR___PXDisplayRect_implementation;
  OUTLINED_FUNCTION_2();
  result = sub_1B3FCB8B4(v0 + v1, v5, &unk_1EB87C698);
  if (v5[48])
  {
    __break(1u);
  }

  else
  {
    sub_1B3FCB8B4(v5, v4, &unk_1EB87BFE0);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B3F92F94(v4, &unk_1EB87BFE0);
    sub_1B3FCB360(v5);
    return Strong;
  }

  return result;
}

uint64_t PXDisplayRect.isEqual(_:)(uint64_t a1)
{
  sub_1B3FCB8B4(a1, v12, &qword_1EB87C120);
  if (!v13)
  {
    v6 = &qword_1EB87C120;
LABEL_10:
    sub_1B3F92F94(v12, v6);
    return 0;
  }

  type metadata accessor for PXDisplayRect();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = v17[0];
  v3 = OBJC_IVAR___PXDisplayRect_implementation;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_24(v2 + v3, v17);
  v4 = OBJC_IVAR___PXDisplayRect_implementation;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_24(v17, v12);
  OUTLINED_FUNCTION_2_24(v1 + v4, v15);
  if (v14)
  {

    sub_1B3F92F94(v17, &unk_1EB87C698);
    if (v16)
    {
      sub_1B3F92F94(v12, &unk_1EB87C698);
      return 1;
    }

    goto LABEL_9;
  }

  sub_1B3FCB8B4(v12, v10, &unk_1EB87C698);
  if (v16)
  {

    sub_1B3F92F94(v17, &unk_1EB87C698);
    sub_1B3FCB360(v10);
LABEL_9:
    v6 = &unk_1EB87C6A8;
    goto LABEL_10;
  }

  sub_1B3FCB3B4(v15, v8);
  v5 = sub_1B3FA39D4(v10, v8) && CGRectEqualToRect(v11, v9);

  sub_1B3FCB360(v8);
  sub_1B3F92F94(v17, &unk_1EB87C698);
  sub_1B3FCB360(v10);
  sub_1B3F92F94(v12, &unk_1EB87C698);
  return v5;
}

unint64_t type metadata accessor for PXDisplayRect()
{
  result = qword_1EB87A9F8;
  if (!qword_1EB87A9F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB87A9F8);
  }

  return result;
}

uint64_t sub_1B3FCB498(uint64_t a1)
{
  v3 = OBJC_IVAR___PXDisplayRect_implementation;
  OUTLINED_FUNCTION_2();
  result = sub_1B3FCB8B4(v1 + v3, v7, &unk_1EB87C698);
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_1B3FCB8B4(v7, v6, &unk_1EB87BFE0);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1B3F92F94(v6, &unk_1EB87BFE0);
    if (Strong)
    {
      [Strong convertRect:a1 toCoordinateSpace:{v8, v9, v10, v11}];
      swift_unknownObjectRelease();
    }

    return sub_1B3FCB360(v7);
  }

  return result;
}

id sub_1B3FCB630@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for PXDisplayRect();
  *a1 = v3;

  return v3;
}

id sub_1B3FCB708(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B405D414();

  return v5;
}

uint64_t _sSo13PXDisplayRectC18PhotosUIFoundationE11descriptionSSvg_0()
{
  v1 = OBJC_IVAR___PXDisplayRect_implementation;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_24(v0 + v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB87C698);
  v2 = sub_1B405DAB4();
  sub_1B3F92F94(v4, &unk_1EB87C698);
  return v2;
}

void __swiftcall PXDisplayRect.init()(PXDisplayRect *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1B3FCB8B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B3FCB920(uint64_t a1)
{
  sub_1B405D0F4();
  OUTLINED_FUNCTION_1_30();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3F87FBC(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB87C6E0);
  if (swift_dynamicCast())
  {
    v9 = v23;
    v10 = sub_1B3FCBBF8();
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v24, ObjectType, v9);
    swift_unknownObjectRelease();
    *&v10[OBJC_IVAR____TtCE18PhotosUIFoundationCSo17PXFooterViewModelP33_69EE6FA5B7909E985301F07D077C2A4B14AssociatedData_environmentValues] = v24[0];
  }

  else
  {
    if (qword_1EB87B7C8 != -1)
    {
      OUTLINED_FUNCTION_0_38();
    }

    v13 = qword_1EB87C6B8;
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_1B405DBC4();

    v22 = 0xD00000000000001DLL;
    v23 = 0x80000001B4077640;
    sub_1B3F87FBC(a1, v24);
    v14 = sub_1B405D464();
    MEMORY[0x1B8C6F500](v14);

    v16 = v22;
    v15 = v23;
    v17 = v13;
    sub_1B405D104();
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    v18 = sub_1B405D0D4();
    v19 = sub_1B405D9B4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1B3F95078(v16, v15, v24);
      _os_log_impl(&dword_1B3F73000, v18, v19, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1B8C71C00](v21, -1, -1);
      MEMORY[0x1B8C71C00](v20, -1, -1);
    }

    return (*(v4 + 8))(v8, v1);
  }
}

id sub_1B3FCBBF8()
{
  if (objc_getAssociatedObject(v0, &unk_1EB87C6B0))
  {
    sub_1B405DAF4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_1B3F92F94(v6, &qword_1EB87C120);
    goto LABEL_8;
  }

  _s14AssociatedDataCMa_0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v1 = [objc_allocWithZone(_s14AssociatedDataCMa_0()) init];
    objc_setAssociatedObject(v0, &unk_1EB87C6B0, v1, 1);
    return v1;
  }

  return v3;
}

void PXFooterViewModel.environmentValues.getter(void *a1@<X8>)
{
  v2 = sub_1B3FCBBF8();
  v3 = *&v2[OBJC_IVAR____TtCE18PhotosUIFoundationCSo17PXFooterViewModelP33_69EE6FA5B7909E985301F07D077C2A4B14AssociatedData_environmentValues];
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

  *a1 = v3;
}

id sub_1B3FCBD9C()
{
  *&v0[OBJC_IVAR____TtCE18PhotosUIFoundationCSo17PXFooterViewModelP33_69EE6FA5B7909E985301F07D077C2A4B14AssociatedData_environmentValues] = MEMORY[0x1E69E7CC8];
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_0();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B3FCBE0C()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PXFooterViewModel.axLabel.getter()
{
  sub_1B405CEB4();
  OUTLINED_FUNCTION_1_30();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  v43 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C6C8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v39 - v13;
  sub_1B3FCC308(v1, &selRef_extendedTitle);
  if (v15)
  {

    v16 = &selRef_extendedTitle;
  }

  else
  {
    v16 = &selRef_title;
  }

  v17 = sub_1B3FCC308(v1, v16);
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C6D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B406F250;
  *(inited + 32) = v17;
  *(inited + 40) = v19;
  v21 = inited + 40;
  *(inited + 48) = sub_1B3FCC308(v1, &selRef_subtitle1);
  *(inited + 56) = v22;
  v23 = 0;
  *(inited + 64) = sub_1B3FCC308(v1, &selRef_subtitle2);
  *(inited + 72) = v24;
  v39[1] = inited;
  v41 = (v3 + 8);
  v42 = (v3 + 32);
  v40 = MEMORY[0x1E69E7CC0];
  v39[0] = inited + 40;
LABEL_5:
  for (i = (v21 + 16 * v23); ; i += 2)
  {
    if (v23 == 3)
    {
      swift_setDeallocating();
      sub_1B3F9BD10();
      v45 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE40);
      sub_1B3F97C44();
      sub_1B405D394();

      return;
    }

    if (v23 > 2)
    {
      break;
    }

    v27 = *(i - 1);
    v26 = *i;
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    sub_1B405CEA4();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v0);
    if (v26)
    {
      sub_1B3FCC368(v14, v11);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v0);
      v44 = v27;
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_2_25(v14);
        OUTLINED_FUNCTION_2_25(v11);
        v29 = v26;
      }

      else
      {
        v30 = v43;
        (*v42)(v43, v11, v0);
        v45 = v27;
        v46 = v26;
        sub_1B3FCC3D8();
        v27 = sub_1B405DAE4();
        v29 = v31;
        (*v41)(v30, v0);
        OUTLINED_FUNCTION_2_25(v14);
      }

      v32 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v32 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B3F97D64();
          v40 = v37;
        }

        v33 = v44;
        v34 = *(v40 + 16);
        if (v34 >= *(v40 + 24) >> 1)
        {
          sub_1B3F97D64();
          v40 = v38;
        }

        ++v23;
        v35 = v40;
        *(v40 + 16) = v34 + 1;
        v36 = v35 + 16 * v34;
        *(v36 + 32) = v33;
        *(v36 + 40) = v26;
        v21 = v39[0];
        goto LABEL_5;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2_25(v14);
    }

    ++v23;
  }

  __break(1u);
}

uint64_t sub_1B3FCC260()
{
  sub_1B3FB414C();
  sub_1B405D4B4();
  result = sub_1B405DAA4();
  qword_1EB87C6B8 = result;
  return result;
}

id static OS_os_log.footerView.getter()
{
  if (qword_1EB87B7C8 != -1)
  {
    OUTLINED_FUNCTION_0_38();
  }

  v1 = qword_1EB87C6B8;

  return v1;
}

uint64_t sub_1B3FCC308(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1B405D444();

  return v4;
}

uint64_t sub_1B3FCC368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C6C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B3FCC3D8()
{
  result = qword_1EB87C6D8;
  if (!qword_1EB87C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C6D8);
  }

  return result;
}

BOOL sub_1B3FCC450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1B405E124();
  sub_1B405D494();
  v6 = sub_1B405E154();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1B405DEC4();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t SettingsGroupEncoder.__allocating_init()()
{
  v0 = swift_allocObject();
  SettingsGroupEncoder.init()();
  return v0;
}

uint64_t SettingsGroupEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 48))(v9, v8);
  v10 = SettingsGroupEncoder.loadDefaultsByKey<A>(_:defaultSettings:)();
  (*(v5 + 8))(v7, a2);
  OUTLINED_FUNCTION_2_26();
  *(v3 + 24) = v10;

  v11 = sub_1B405D2A4();
  OUTLINED_FUNCTION_2_26();
  *(v3 + 16) = v11;

  result = sub_1B3FCC91C();
  v13 = *(v3 + 16);
  if (v13)
  {
    *(v3 + 24) = 0;
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

    *(v3 + 16) = 0;

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SettingsGroupEncoder.loadDefaultsByKey<A>(_:defaultSettings:)()
{
  v1 = sub_1B405D2A4();
  OUTLINED_FUNCTION_2_26();
  *(v0 + 16) = v1;

  sub_1B3FCC91C();
  result = *(v0 + 16);
  if (result)
  {
    *(v0 + 16) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SettingsGroupEncoder.changedKeys<A>(_:baseline:)()
{
  v1 = SettingsGroupEncoder.loadDefaultsByKey<A>(_:defaultSettings:)();
  OUTLINED_FUNCTION_2_26();
  v0[3] = v1;

  OUTLINED_FUNCTION_2_26();
  v0[4] = MEMORY[0x1E69E7CD0];

  result = sub_1B3FCC91C();
  v3 = v0[4];
  if (v3)
  {
    v0[3] = 0;
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

    OUTLINED_FUNCTION_2_26();
    v0[2] = 0;

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B3FCC898()
{
  result = sub_1B3FCE47C(&unk_1F2B81AC8);
  qword_1EB883D10 = result;
  return result;
}

void *SettingsGroupEncoder.init()()
{
  v0[2] = 0;
  v0[3] = 0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[4] = 0;
  v0[5] = v1;
  sub_1B405DD44();
  v0[6] = sub_1B405D2A4();
  return v0;
}

uint64_t sub_1B3FCC91C()
{
  v2[3] = *v0;
  v2[4] = sub_1B3FCE60C();
  v2[0] = v0;

  sub_1B405D354();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t SettingsGroupEncoder.container<A>(keyedBy:)()
{
  type metadata accessor for SettingsGroupEncodingContainer();

  swift_getWitnessTable();
  return sub_1B405DE44();
}

uint64_t SettingsGroupEncoder.deinit()
{

  return v0;
}

uint64_t SettingsGroupEncoder.__deallocating_deinit()
{
  SettingsGroupEncoder.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B3FCCC6C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B3FCCCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B405E1B4();
  v13 = v12;
  if (qword_1EB87A090 != -1)
  {
    swift_once();
  }

  if (sub_1B3FCC450(v11, v13, qword_1EB883D10))
  {
    sub_1B3FCD9C4();
    OUTLINED_FUNCTION_2_18();
    *v14 = v11;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    return swift_willThrow();
  }

  (*(v8 + 16))(v10, a1, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C268);
  if (!swift_dynamicCast())
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1B3F92F94(&v39, &qword_1EB87C770);
    sub_1B3FCD9C4();
    OUTLINED_FUNCTION_2_18();
    *v23 = v11;
    *(v23 + 8) = v13;
    *(v23 + 16) = 1;
    return swift_willThrow();
  }

  sub_1B3F90E0C(&v39, v42);
  v15 = *v4;
  swift_beginAccess();
  v16 = v15[3];
  if (!v16)
  {
    swift_endAccess();
    v39 = 0u;
    v40 = 0u;
    goto LABEL_13;
  }

  sub_1B3F8148C(v11, v13, v16, &v39);
  swift_endAccess();
  if (!*(&v40 + 1))
  {
LABEL_13:
    sub_1B3F92F94(&v39, &qword_1EB87C120);
    goto LABEL_14;
  }

  sub_1B3F7AC48(&v39, v37);
  v17 = dynamic_cast_existential_1_unconditional(a4);
  v19 = v18;
  v20 = *(v18 + 32);
  *(&v40 + 1) = v17;
  v41 = v18;
  __swift_allocate_boxed_opaque_existential_1(&v39);
  v20(v37, v36, v17, v19);
  if (!v5)
  {
    v30 = v43;
    v31 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v32 = *(&v40 + 1);
    v33 = __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    v36[3] = v32;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    (*(*(v32 - 8) + 16))(boxed_opaque_existential_1, v33, v32);
    v35 = (*(v31 + 40))(v36, v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(&v39);
    if (v35)
    {

      return __swift_destroy_boxed_opaque_existential_1(v42);
    }

LABEL_14:
    v25 = v43;
    v26 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    (*(v26 + 24))(&v39, v25, v26);
    swift_beginAccess();
    if (v15[2])
    {
      v27 = *(&v40 + 1);
      v28 = __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
      v38 = v27;
      v29 = __swift_allocate_boxed_opaque_existential_1(v37);
      (*(*(v27 - 8) + 16))(v29, v28, v27);
      _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
      sub_1B3FA3E84(v37, v11, v13);
    }

    swift_endAccess();
    swift_beginAccess();
    if (v15[4])
    {
      sub_1B3FCDB98(v36, v11, v13);
    }

    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(&v39);
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v21 = v36[0];
  sub_1B3FB975C();
  OUTLINED_FUNCTION_2_18();
  *v22 = v21;
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_deallocate_boxed_opaque_existential_1(&v39);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_1B3FCD17C()
{
  sub_1B405E1B4();
  sub_1B3FCD9C4();
  v0 = OUTLINED_FUNCTION_2_18();
  return OUTLINED_FUNCTION_3_18(v0, v1);
}

uint64_t sub_1B3FCD1D4()
{
  sub_1B405E1B4();
  sub_1B3FCD9C4();
  v0 = OUTLINED_FUNCTION_2_18();
  return OUTLINED_FUNCTION_3_18(v0, v1);
}

uint64_t sub_1B3FCD3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  return sub_1B3FCCCA8(v5, a3, a4, MEMORY[0x1E69E6158]);
}

unint64_t sub_1B3FCD9C4()
{
  result = qword_1EB87C768;
  if (!qword_1EB87C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C768);
  }

  return result;
}

uint64_t sub_1B3FCDA18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      OUTLINED_FUNCTION_1_31();
      sub_1B405DBC4();

      v11 = 0x222079654BLL;
      MEMORY[0x1B8C6F500](a1, a2);
      v9 = 0x80000001B40777C0;
      v8 = 0xD000000000000015;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_31();
    sub_1B405DBC4();

    OUTLINED_FUNCTION_5_10();
    v6 = v5 + 18;
  }

  else
  {
    OUTLINED_FUNCTION_1_31();
    sub_1B405DBC4();

    OUTLINED_FUNCTION_5_10();
    v6 = v7 + 5;
  }

  v11 = v6;
  MEMORY[0x1B8C6F500](a1, a2);
  v8 = 34;
  v9 = 0xE100000000000000;
LABEL_7:
  MEMORY[0x1B8C6F500](v8, v9);
  return v11;
}

uint64_t sub_1B3FCDB34(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B4073070;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1B3FCDB98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B405E124();
  sub_1B405D494();
  v8 = sub_1B405E154();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_1B405DEC4() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;
      _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  sub_1B3FCDF88(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B3FCDD2C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C778);
  result = sub_1B405DB84();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1B3FCDB34(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_1B405E124();
    sub_1B405D494();
    result = sub_1B405E154();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B3FCDF88(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B3FCDD2C();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B3FCE248();
LABEL_10:
      v15 = *v4;
      sub_1B405E124();
      sub_1B405D494();
      result = sub_1B405E154();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_1B405DEC4() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1B3FCE0F0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1B405E0A4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1B3FCE0F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C778);
  v2 = *v0;
  v3 = sub_1B405DB74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
        result = _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1B3FCE248()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C778);
  result = sub_1B405DB84();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_1B405E124();
        _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
        sub_1B405D494();
        result = sub_1B405E154();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B3FCE47C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C778);
  result = sub_1B405DB94();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1B405E124();
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    sub_1B405D494();
    result = sub_1B405E154();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_1B405DEC4() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1B3FCE60C()
{
  result = qword_1EB87C780;
  if (!qword_1EB87C780)
  {
    type metadata accessor for SettingsGroupEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C780);
  }

  return result;
}

uint64_t static ScrollBehavior.normal(axis:intrinsicContentOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0x80;
  *(a2 + 40) = a3;
  return result;
}

uint64_t static ScrollBehavior.paging(axis:pagingOrigin:pageOffset:decelerationRate:allowFlickAcrossMultiplePages:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_3_19();
    v6 = sub_1B405D7C4();
    MEMORY[0x1B8C6F500](v6);

    OUTLINED_FUNCTION_6_9();
    result = OUTLINED_FUNCTION_9_4();
    __break(1u);
  }

  else
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = a5;
    *(a4 + 24) = a6;
    *(a4 + 32) = a3 & 1;
    *(a4 + 40) = 0;
  }

  return result;
}

uint64_t static ScrollBehavior.detents(_:axis:intrinsicContentOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a2;
  *(a3 + 8) = 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 64;
  *(a3 + 40) = a4;
  return _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
}

uint64_t ScrollBehavior.Detent.identifier.getter()
{
  v1 = *(v0 + 8);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  return v1;
}

uint64_t ScrollBehavior.Detent.init(identifier:offset:availableForScrollingGesture:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *a4 = a5;
  *(a4 + 24) = a3;
  return result;
}

void ScrollBehavior.Detent.init(pxScrollDetent:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 identifier];
    v5 = sub_1B405D444();
    v7 = v6;

    [v3 offset];
    v9 = v8;
    v10 = [v3 availableForScrollingGesture];
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v10 = 0;
    v9 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v10;
}

uint64_t static ScrollBehavior.Detent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v4 || (sub_1B405DEC4() & 1) != 0)
  {
    return v2 ^ v3 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t static ScrollBehavior.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 >> 6)
  {
    if (v4 >> 6 == 1)
    {
      v8 = *a1;
      if ((v7 & 0xC0) == 0x40)
      {
        v9 = sub_1B3FCEA48(*&v8, *a2);
        v10 = OUTLINED_FUNCTION_0_40();
        sub_1B3FCEA20(v10, v11, v12);
        v13 = OUTLINED_FUNCTION_1_32();
        sub_1B3FCEA20(v13, v14, v15);
        v16 = OUTLINED_FUNCTION_1_32();
        sub_1B3FCEA34(v16, v17, v18);
        v19 = OUTLINED_FUNCTION_0_40();
        sub_1B3FCEA34(v19, v20, v21);
        return v9 & 1;
      }

      _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
      goto LABEL_20;
    }

    v31 = (v7 & 0xC0) == 0x80 && (*&v5 | *&v6) == 0;
    if (v31 && v7 == 128)
    {
      v32 = OUTLINED_FUNCTION_1_32();
      sub_1B3FCEA34(v32, v33, v34);
      sub_1B3FCEA34(0, 0, 128);
      v30 = 1;
      return v30 & 1;
    }

LABEL_20:
    v35 = OUTLINED_FUNCTION_0_40();
    sub_1B3FCEA20(v35, v36, v37);
    v38 = OUTLINED_FUNCTION_1_32();
    sub_1B3FCEA34(v38, v39, v40);
    v41 = OUTLINED_FUNCTION_0_40();
    sub_1B3FCEA34(v41, v42, v43);
LABEL_21:
    v30 = 0;
    return v30 & 1;
  }

  if (v7 >= 0x40)
  {
    goto LABEL_20;
  }

  v2 = *(a1 + 8);
  v23 = OUTLINED_FUNCTION_1_32();
  sub_1B3FCEA34(v23, v24, v25);
  v26 = OUTLINED_FUNCTION_0_40();
  sub_1B3FCEA34(v26, v27, v28);
  if (v3 != v6 || v2 != v5)
  {
    goto LABEL_21;
  }

  v30 = v7 ^ v4 ^ 1;
  return v30 & 1;
}

uint64_t sub_1B3FCEA20(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
    return _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  }

  return result;
}

uint64_t sub_1B3FCEA34(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) == 0x40)
  {
  }

  return result;
}

uint64_t sub_1B3FCEA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 32)
    {
      v6 = a1 + i;
      v7 = a2 + i;
      if (*(a1 + i + 32) != *(a2 + i + 32))
      {
        break;
      }

      v8 = *(v6 + 56);
      v9 = *(v7 + 56);
      if (*(v6 + 40) == *(v7 + 40) && *(v6 + 48) == *(v7 + 48))
      {
        if (v8 != v9)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_1B405DEC4();
        result = 0;
        if (v11 & 1) == 0 || ((v8 ^ v9))
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t ScrollBehavior.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1B3FCEA20(v2, v3, v4);
}

void ScrollBehavior.adjustedScrollTargetContentOffset(for:velocity:currentContentOffset:decelerationRate:)(double *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v45 = *MEMORY[0x1E69E9840];
  v13 = *v7;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  v16 = *(v7 + 24);
  v17 = *(v7 + 32);
  if (v17 >> 6)
  {
    if (v17 >> 6 == 1)
    {
      v18 = *(v7 + 40);
      v39 = *v7;
      v40 = v14;
      v41 = v15;
      v42 = v16;
      v43 = v17;
      v44 = v18;
      v19 = OUTLINED_FUNCTION_7_6();
      sub_1B3FCED40(v20, a1, v19, v21, v22, v23, a6, a7);
    }

    goto LABEL_25;
  }

  v24 = *(v7 + 16);
  v25 = *(v7 + 24);
  v26 = PXPointValueForAxis(*v7, a4, a5);
  v27 = OUTLINED_FUNCTION_7_6();
  v29 = PXPointValueForAxis(v13, v27, v28);
  PXFloatRoundInDirection((v29 - v24) / v25, v26);
  OUTLINED_FUNCTION_2_27();
  if (!(v32 ^ v33 | v31))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v30 <= -9.22337204e18)
  {
    goto LABEL_26;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = v30;
  if ((v17 & 1) == 0)
  {
    v35 = PXPointValueForAxis(v13, a6, a7);
    PXFloatRoundInDirection((v35 - v24) / v25, v26);
    OUTLINED_FUNCTION_2_27();
    if (!(v32 ^ v33 | v31))
    {
      goto LABEL_28;
    }

    if (v36 <= -9.22337204e18)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    if (v36 >= 9.22337204e18)
    {
      goto LABEL_30;
    }

    v37 = v36;
    if (v36 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v36;
    }

    if (v36 <= v34)
    {
      v37 = v34;
    }

    if (v26 >= 0.0)
    {
      v37 = v34;
    }

    if (v26 <= 0.0)
    {
      v34 = v37;
    }

    else
    {
      v34 = v38;
    }
  }

  v39 = a2;
  v40 = a3;
  PXPointSetValueForAxis(&v39, v13, v25 * v34 + v24);
  if (a1)
  {
    *a1 = v14;
  }

LABEL_25:
  OUTLINED_FUNCTION_7_6();
}

double sub_1B3FCED40(char *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = a3;
  v66 = *MEMORY[0x1E69E9840];
  v17 = *v8;
  v18 = PXPointValueForAxis(*v8, a3, a4);
  sub_1B3FCF1E8(a1, v64);
  if (!v65)
  {
LABEL_55:
    if (!a2)
    {
      return v16;
    }

LABEL_56:
    *a2 = 0;
    return v16;
  }

  v19 = v64[0];
  sub_1B3FCF2D0(a1, v64);
  if (!v65)
  {
    goto LABEL_28;
  }

  v63 = a4;
  v20 = v64[0];
  v21 = PXPointValueForAxis(v17, a5, a6);
  v22 = PXPointValueForAxis(v17, a7, a8);
  v64[0] = a1;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  sub_1B3FD0B4C(v64);

  if (*&v19 > *&v20)
  {
    goto LABEL_62;
  }

  v23 = v64[0];
  v24 = *&v19 > v18 || v18 > *&v20;
  if (!v24 || (*&v19 <= v22 ? (v25 = v22 > *&v20) : (v25 = 1), !v25))
  {
    if (v21 >= 0.0)
    {
      v42 = 0;
      v43 = *(v64[0] + 2);
      v44 = MEMORY[0x1E69E7CC0];
      v27 = *&v63;
LABEL_31:
      v45 = 32 * v42;
      while (v43 != v42)
      {
        if (v42 >= *(v23 + 2))
        {
          goto LABEL_61;
        }

        v46 = v45 + 32;
        ++v42;
        v47 = *&v23[v45 + 32];
        v45 += 32;
        if (v22 <= v47)
        {
          v49 = *&v23[v46 + 8];
          v48 = *&v23[v46 + 16];
          v50 = v23[v46 + 24];
          _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64[0] = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B3FC99C0(0, *(v44 + 2) + 1, 1);
            v44 = v64[0];
          }

          v53 = *(v44 + 2);
          v52 = *(v44 + 3);
          v54 = v53 + 1;
          if (v53 >= v52 >> 1)
          {
            sub_1B3FC99C0((v52 > 1), v53 + 1, 1);
            v54 = v53 + 1;
            v44 = v64[0];
          }

          *(v44 + 2) = v54;
          v55 = &v44[32 * v53];
          *(v55 + 4) = v47;
          *(v55 + 5) = v49;
          *(v55 + 6) = v48;
          v55[56] = v50;
          goto LABEL_31;
        }
      }

      if (*(v44 + 2))
      {
        v60 = (v44 + 32);
        goto LABEL_48;
      }
    }

    else
    {
      v28 = 0;
      v62 = v64[0] + 32;
      v29 = *(v64[0] + 2);
      v30 = MEMORY[0x1E69E7CC0];
      v27 = *&v63;
LABEL_19:
      v31 = 32 * v28;
      while (v29 != v28)
      {
        if (v28 >= *(v23 + 2))
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v32 = *&v23[v31 + 32];
        ++v28;
        v31 += 32;
        if (v32 <= v22)
        {
          v33 = &v23[v31];
          v35 = *(v33 + 1);
          v34 = *(v33 + 2);
          v36 = v33[24];
          _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
          v37 = swift_isUniquelyReferenced_nonNull_native();
          v64[0] = v30;
          if ((v37 & 1) == 0)
          {
            sub_1B3FC99E0(0, *(v30 + 2) + 1, 1);
            v30 = v64[0];
          }

          v39 = *(v30 + 2);
          v38 = *(v30 + 3);
          v40 = v39 + 1;
          if (v39 >= v38 >> 1)
          {
            sub_1B3FC99E0((v38 > 1), v39 + 1, 1);
            v40 = v39 + 1;
            v30 = v64[0];
          }

          *(v30 + 2) = v40;
          v41 = &v30[40 * v39];
          *(v41 + 4) = v28 - 1;
          *(v41 + 5) = v32;
          *(v41 + 6) = v35;
          *(v41 + 7) = v34;
          v41[64] = v36;
          goto LABEL_19;
        }
      }

      v56 = *(v30 + 2);
      if (v56)
      {
        v57 = &v30[40 * v56];
        v58 = *(v57 - 1);
        v26 = *v57;
        v59 = v57[24];
        _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

        if ((v59 & 1) != 0 || v58 >= v29)
        {
          goto LABEL_49;
        }

        if (v58 < -1)
        {
          goto LABEL_63;
        }

        if ((v58 + 1) >= *(v23 + 2))
        {
LABEL_64:
          __break(1u);
        }

        v60 = &v62[32 * v58 + 32];
LABEL_48:
        v26 = *v60;
        _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
LABEL_49:

        goto LABEL_50;
      }
    }

    goto LABEL_55;
  }

  if (!*(v64[0] + 2))
  {

    if (!a2)
    {
      return v16;
    }

    goto LABEL_56;
  }

  v26 = *(v64[0] + 4);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

  v27 = *&v63;
  if (v18 >= v26)
  {
LABEL_28:

    if (!a2)
    {
      return v16;
    }

    goto LABEL_56;
  }

LABEL_50:
  v64[0] = *&v16;
  v64[1] = v27;
  PXPointSetValueForAxis(v64, v17, v26);

  if (a2)
  {
    *a2 = 1;
  }

  return *v64;
}

uint64_t sub_1B3FCF1E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result;
    v5 = *(result + 32);
    v7 = *(result + 40);
    v6 = *(result + 48);
    v8 = *(result + 56);
    result = _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    v9 = v4 + 16;
    v10 = 1;
LABEL_3:
    v11 = (v9 + 32 * v10);
    while (1)
    {
      if (v3 == v10)
      {
        *a2 = v5;
        *(a2 + 8) = v7;
        *(a2 + 16) = v6;
        *(a2 + 24) = v8 & 1;
        return result;
      }

      if (v10 >= v3)
      {
        break;
      }

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_12;
      }

      v13 = v11[2];
      v11 += 4;
      ++v10;
      if (v13 < v5)
      {
        v7 = *(v11 - 1);
        v14 = *v11;
        v8 = *(v11 + 8);
        _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

        v5 = v13;
        v6 = v14;
        v10 = v12;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_1B3FCF2D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result;
    v5 = *(result + 32);
    v7 = *(result + 40);
    v6 = *(result + 48);
    v8 = *(result + 56);
    result = _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    v9 = v4 + 16;
    v10 = 1;
LABEL_3:
    v11 = (v9 + 32 * v10);
    while (1)
    {
      if (v3 == v10)
      {
        *a2 = v5;
        *(a2 + 8) = v7;
        *(a2 + 16) = v6;
        *(a2 + 24) = v8 & 1;
        return result;
      }

      if (v10 >= v3)
      {
        break;
      }

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_12;
      }

      v13 = v11[2];
      v11 += 4;
      ++v10;
      if (v5 < v13)
      {
        v7 = *(v11 - 1);
        v14 = *v11;
        v8 = *(v11 + 8);
        _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

        v5 = v13;
        v6 = v14;
        v10 = v12;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t PXScrollDetent.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___PXScrollDetent_identifier);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  return v1;
}

id PXScrollDetent.init(identifier:offset:availableForScrollingGesture:)(double a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1B405D414();

  v8 = [v6 initWithIdentifier:v7 offset:a4 & 1 availableForScrollingGesture:a1];

  return v8;
}

id PXScrollDetent.init(identifier:offset:availableForScrollingGesture:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = (v4 + OBJC_IVAR___PXScrollDetent_identifier);
  *v5 = a1;
  v5[1] = a2;
  *(v4 + OBJC_IVAR___PXScrollDetent_offset) = a4;
  *(v4 + OBJC_IVAR___PXScrollDetent_availableForScrollingGesture) = a3;
  v7.super_class = PXScrollDetent;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t PXScrollDetent.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1B3F77C10(a1, v20);
  if (v21)
  {
    if (swift_dynamicCast())
    {
      v3 = [v1 identifier];
      v4 = sub_1B405D444();
      v6 = v5;

      v7 = [v19 identifier];
      v8 = sub_1B405D444();
      v10 = v9;

      if (v4 == v8 && v6 == v10)
      {
      }

      else
      {
        v12 = sub_1B405DEC4();

        if ((v12 & 1) == 0)
        {
LABEL_13:

          return 0;
        }
      }

      [v1 offset];
      v14 = v13;
      [v19 offset];
      if (v14 == v15)
      {
        v16 = [v1 availableForScrollingGesture];
        v17 = [v19 availableForScrollingGesture];

        return v16 ^ v17 ^ 1;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_1B3F791B4(v20);
  }

  return 0;
}

uint64_t PXScrollDetent.debugDescription.getter()
{
  v1 = v0;
  v10.super_class = PXScrollDetent;
  v2 = objc_msgSendSuper2(&v10, sel_description);
  v3 = sub_1B405D444();

  sub_1B405DBC4();

  v4 = [v1 identifier];
  v5 = sub_1B405D444();
  v7 = v6;

  MEMORY[0x1B8C6F500](v5, v7);

  MEMORY[0x1B8C6F500](0x74657366664F205DLL, 0xEA0000000000203ALL);
  [v1 offset];
  v8 = sub_1B405D7C4();
  MEMORY[0x1B8C6F500](v8);

  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  MEMORY[0x1B8C6F500](1528835360, 0xE400000000000000);

  return v3;
}

uint64_t static PXScrollBehavior.normal(axis:)()
{
  OUTLINED_FUNCTION_8_5();
  v4 = 0;
  v0 = sub_1B3FCFAE8(v2);
  sub_1B3FCEA34(v2[2], v2[3], v3);
  return v0;
}

uint64_t sub_1B3FCFAE8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = [objc_allocWithZone(PXScrollBehavior) init];
  v5 = &v4[OBJC_IVAR___PXScrollBehavior_behavior];
  v6 = *&v4[OBJC_IVAR___PXScrollBehavior_behavior];
  v7 = *&v4[OBJC_IVAR___PXScrollBehavior_behavior + 8];
  v8 = *&v4[OBJC_IVAR___PXScrollBehavior_behavior + 16];
  v9 = *&v4[OBJC_IVAR___PXScrollBehavior_behavior + 24];
  v10 = *&v4[OBJC_IVAR___PXScrollBehavior_behavior + 32];
  v11 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v11;
  *(v5 + 4) = v3;
  *(v5 + 5) = v2;
  sub_1B3FCEA20(v11, *(&v11 + 1), v3);
  sub_1B3FD0840(v6, v7, v8, v9, v10);

  return MEMORY[0x1EEE6BE48](v4, v13, 0, 0, 0);
}

uint64_t static PXScrollBehavior.normal(axis:intrinsicContentOffset:)()
{
  OUTLINED_FUNCTION_8_5();
  v5 = v0;
  v1 = sub_1B3FCFAE8(v3);
  sub_1B3FCEA34(v3[2], v3[3], v4);
  return v1;
}

uint64_t static PXScrollBehavior.paging(axis:pagingOrigin:pageOffset:decelerationRate:)()
{
  OUTLINED_FUNCTION_2_27();
  if (v5 ^ v6 | v4)
  {
    v10[0] = v0;
    v10[1] = 0;
    v11 = v2;
    v12 = v3;
    v13 = v1 == 0;
    v14 = 0;
    v7 = sub_1B3FCFAE8(v10);
    sub_1B3FCEA34(v11, v12, v13);
    return v7;
  }

  else
  {
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_3_19();
    v8 = sub_1B405D7C4();
    MEMORY[0x1B8C6F500](v8);

    OUTLINED_FUNCTION_6_9();
    result = OUTLINED_FUNCTION_9_4();
    __break(1u);
  }

  return result;
}

void static PXScrollBehavior.detents(axis:detents:intrinsicContentOffset:)(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1B3FA81F0(a2);
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v6)
    {
      v22[0] = a1;
      v22[1] = 1;
      v23 = v7;
      v24 = 0;
      v25 = 64;
      v26 = a3;
      sub_1B3FCFAE8(v22);
      sub_1B3FCEA34(v23, v24, v25);
      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B8C6FC70](v6, a2);
    }

    else
    {
      if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(a2 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = v8;
    v10 = [v9 identifier];
    v11 = sub_1B405D444();
    v13 = v12;

    [v9 offset];
    v15 = v14;
    v16 = [v9 availableForScrollingGesture];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B3F97ECC();
      v7 = v19;
    }

    v17 = *(v7 + 16);
    if (v17 >= *(v7 + 24) >> 1)
    {
      sub_1B3F97ECC();
      v7 = v20;
    }

    *(v7 + 16) = v17 + 1;
    v18 = v7 + 32 * v17;
    *(v18 + 32) = v15;
    *(v18 + 40) = v11;
    *(v18 + 48) = v13;
    *(v18 + 56) = v16;
    ++v6;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t PXScrollBehavior.axis.getter()
{
  if ((~*(v0 + OBJC_IVAR___PXScrollBehavior_behavior + 32) & 0xFELL) != 0)
  {
    return *(v0 + OBJC_IVAR___PXScrollBehavior_behavior);
  }

  __break(1u);
  return result;
}

uint64_t PXScrollBehavior.decelerationRate.getter()
{
  if ((~*(v0 + OBJC_IVAR___PXScrollBehavior_behavior + 32) & 0xFELL) != 0)
  {
    return *(v0 + OBJC_IVAR___PXScrollBehavior_behavior + 8);
  }

  __break(1u);
  return result;
}

BOOL PXScrollBehavior.pagingEnabled.getter()
{
  if ((~*(v0 + OBJC_IVAR___PXScrollBehavior_behavior + 32) & 0xFELL) != 0)
  {
    return (*(v0 + OBJC_IVAR___PXScrollBehavior_behavior + 32) & 0xC0) == 0;
  }

  __break(1u);
  return result;
}

void PXScrollBehavior.pagingOrigin.getter()
{
  if ((~*(v0 + OBJC_IVAR___PXScrollBehavior_behavior + 32) & 0xFELL) == 0)
  {
    __break(1u);
  }
}

void PXScrollBehavior.pageOffset.getter()
{
  if ((~*(v0 + OBJC_IVAR___PXScrollBehavior_behavior + 32) & 0xFELL) == 0)
  {
    __break(1u);
  }
}

uint64_t PXScrollBehavior.allowFlickAcrossMultiplePages.getter()
{
  if ((~*(v0 + OBJC_IVAR___PXScrollBehavior_behavior + 32) & 0xFELL) != 0)
  {
    return ((*(v0 + OBJC_IVAR___PXScrollBehavior_behavior + 32) & 0xC0) == 0) & *(v0 + OBJC_IVAR___PXScrollBehavior_behavior + 32);
  }

  __break(1u);
  return result;
}

void PXScrollBehavior.intrinsicContentOffset.getter()
{
  if ((~*(v0 + OBJC_IVAR___PXScrollBehavior_behavior + 32) & 0xFELL) == 0)
  {
    __break(1u);
  }
}

void PXScrollBehavior.detent(atContentOffset:)()
{
  OUTLINED_FUNCTION_5_11();
  if (v2)
  {
LABEL_29:
    __break(1u);
    return;
  }

  if ((v0 & 0xC0) == 0x40)
  {
    v3 = *v1;
    v4 = v1[2];
    v5 = *(v4 + 16);
    v30 = v1[3];
    v31 = v1[1];
    sub_1B3FCEA20(v4, v30, v0);
    v6 = 0;
    v7 = v4 + 56;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v9 = (v7 + 32 * v6);
    while (v5 != v6)
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_27:
        MEMORY[0x1B8C6FC70](0, v8);
LABEL_23:

        return;
      }

      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;
      _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
      v14 = OUTLINED_FUNCTION_7_6();
      if (PXFloatEqualToFloatWithTolerance(v14, v15, v16))
      {
        v32[0] = v8;
        v29 = v3;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B3FC99C0(0, *(v8 + 16) + 1, 1);
          v8 = v32[0];
        }

        v7 = v4 + 56;
        v18 = *(v8 + 16);
        v17 = *(v8 + 24);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          sub_1B3FC99C0((v17 > 1), v18 + 1, 1);
          v19 = v18 + 1;
          v7 = v4 + 56;
          v8 = v32[0];
        }

        *(v8 + 16) = v19;
        v20 = v8 + 32 * v18;
        *(v20 + 32) = v10;
        ++v6;
        *(v20 + 40) = v11;
        *(v20 + 48) = v12;
        *(v20 + 56) = v13;
        v3 = v29;
        goto LABEL_4;
      }

      v9 += 32;
      ++v6;
    }

    sub_1B3FD0840(v3, v31, v4, v30, v0);
    v21 = *(v8 + 16);
    if (v21)
    {
      v34 = MEMORY[0x1E69E7CC0];
      v22 = sub_1B405DCA4();
      type metadata accessor for PXScrollDetent(v22);
      v23 = (v8 + 56);
      do
      {
        v24 = *(v23 - 3);
        v26 = *(v23 - 2);
        v25 = *(v23 - 1);
        v27 = *v23;
        v23 += 32;
        v32[0] = v24;
        v32[1] = v26;
        v32[2] = v25;
        v33 = v27;
        _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
        PXScrollDetent.init(_:)(v32);
        sub_1B405DC74();
        sub_1B405DCB4();
        sub_1B405DCC4();
        sub_1B405DC84();
        --v21;
      }

      while (v21);

      v8 = v34;
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    if (sub_1B3FA81F0(v8))
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        goto LABEL_27;
      }

      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v28 = *(v8 + 32);
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_29;
    }
  }
}

id PXScrollDetent.init(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v4 = sub_1B405D414();

  v5 = [v3 initWithIdentifier:v4 offset:v2 availableForScrollingGesture:v1];

  return v5;
}

void PXScrollBehavior.adjustedScrollTargetContentOffset(forProposedTargetContentOffset:velocity:currentContentOffset:decelerationRate:)()
{
  OUTLINED_FUNCTION_5_11();
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v10 = v1;
    v11 = v8;
    v12 = v7;
    v13 = v6;
    v14 = v5;
    v15 = v4;
    v16 = v3;
    v17 = *(v2 + 16);
    v18 = *(v2 + 24);
    sub_1B3FCEA20(v17, v18, v0);
    ScrollBehavior.adjustedScrollTargetContentOffset(for:velocity:currentContentOffset:decelerationRate:)(v10, v16, v15, v14, v13, v12, v11);
    sub_1B3FCEA34(v17, v18, v0);
  }
}

id PXScrollBehavior.init()()
{
  v1 = (v0 + OBJC_IVAR___PXScrollBehavior_behavior);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = xmmword_1B4073450;
  v3.super_class = PXScrollBehavior;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t sub_1B3FD081C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B3FD0840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((~a5 & 0xFE) != 0)
  {
    return sub_1B3FCEA34(a3, a4, a5);
  }

  return result;
}

unint64_t sub_1B3FD0878()
{
  result = qword_1EB87C7A8;
  if (!qword_1EB87C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C7A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosUIFoundation14ScrollBehaviorV4KindO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B3FD08EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 48))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B3FD0938(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B3FD09BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1B3FD09FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B3FD0A50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 17))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B3FD0A9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1B3FD0B00(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    v2 = 0x80;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_1B3FD0B4C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B3FD1608(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B3FD0BB8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B3FD0BB8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B405DE54();
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
        v6 = sub_1B405D654();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B3FD0D28(v7, v8, a1, v4);
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
    return sub_1B3FD0CAC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B3FD0CAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 + 24;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = (v8 - 24);
        v10 = *(v8 - 24);
        if (v10 >= *(v8 - 56))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v12 = *(v8 - 56);
        v11 = *(v8 - 40);
        *(v8 - 32) = *v8;
        v8 -= 32;
        v13 = *(v8 + 16);
        v14 = *(v8 + 24);
        *v9 = v12;
        v9[1] = v11;
        *(v8 - 24) = v10;
        *(v8 - 16) = v13;
        *(v8 - 8) = v14;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 32;
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

void sub_1B3FD0D28(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v87 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9);
        v11 = 32 * v7;
        v12 = (*a3 + 32 * v7);
        v14 = *v12;
        v13 = v12 + 8;
        v15 = v14;
        v16 = v7 + 2;
        while (1)
        {
          v17 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = (v10 < v15) ^ (*v13 >= *(v13 - 4));
          v13 += 4;
          ++v16;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v15)
        {
          if (v9 < v7)
          {
            goto LABEL_114;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v19 = 32 * v6 - 32;
            v20 = v9;
            v21 = v7;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v23 = v22 + v11;
                v24 = v22 + v19;
                v25 = *v23;
                v26 = *(v23 + 8);
                v27 = *(v23 + 16);
                v28 = *(v23 + 24);
                v29 = v11 != v19 || v23 >= v24 + 32;
                if (v29)
                {
                  v30 = *(v24 + 16);
                  *v23 = *v24;
                  *(v23 + 16) = v30;
                }

                *v24 = v25;
                *(v24 + 8) = v26;
                *(v24 + 16) = v27;
                *(v24 + 24) = v28;
              }

              ++v21;
              v19 -= 32;
              v11 += 32;
            }

            while (v21 < v20);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_113;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_115;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
LABEL_121:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v31 = *a3;
            v32 = *a3 + 32 * v9 + 24;
            v33 = v7 - v9;
            do
            {
              v34 = v33;
              v35 = v32;
              do
              {
                v36 = (v35 - 24);
                v37 = *(v35 - 24);
                if (v37 >= *(v35 - 56))
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_117;
                }

                v39 = *(v35 - 56);
                v38 = *(v35 - 40);
                *(v35 - 32) = *v35;
                v35 -= 32;
                v40 = *(v35 + 16);
                v41 = *(v35 + 24);
                *v36 = v39;
                v36[1] = v38;
                *(v35 - 24) = v37;
                *(v35 - 16) = v40;
                *(v35 - 8) = v41;
                v29 = __CFADD__(v34++, 1);
              }

              while (!v29);
              ++v9;
              v32 += 32;
              --v33;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_112;
      }

      v89 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B3F97E1C();
        v8 = v85;
      }

      v42 = v8[2];
      v43 = v42 + 1;
      if (v42 >= v8[3] >> 1)
      {
        sub_1B3F97E1C();
        v8 = v86;
      }

      v8[2] = v43;
      v44 = v8 + 4;
      v45 = &v8[2 * v42 + 4];
      *v45 = v7;
      v45[1] = v9;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_120;
      }

      if (v42)
      {
        while (1)
        {
          v46 = v43 - 1;
          v47 = &v44[2 * v43 - 2];
          v48 = &v8[2 * v43];
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v49 = v8[4];
            v50 = v8[5];
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_62:
            if (v52)
            {
              goto LABEL_102;
            }

            v64 = *v48;
            v63 = v48[1];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_105;
            }

            v68 = v47[1];
            v69 = v68 - *v47;
            if (__OFSUB__(v68, *v47))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v66, v69))
            {
              goto LABEL_110;
            }

            if (v66 + v69 >= v51)
            {
              if (v51 < v69)
              {
                v46 = v43 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v43 < 2)
          {
            goto LABEL_104;
          }

          v71 = *v48;
          v70 = v48[1];
          v59 = __OFSUB__(v70, v71);
          v66 = v70 - v71;
          v67 = v59;
LABEL_77:
          if (v67)
          {
            goto LABEL_107;
          }

          v73 = *v47;
          v72 = v47[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (v74 < v66)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v46 - 1 >= v43)
          {
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
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v78 = &v44[2 * v46 - 2];
          v79 = *v78;
          v80 = &v44[2 * v46];
          v81 = v80[1];
          sub_1B3FD135C((*a3 + 32 * *v78), (*a3 + 32 * *v80), (*a3 + 32 * v81), v90);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v81 < v79)
          {
            goto LABEL_97;
          }

          v82 = v8;
          v83 = v8[2];
          if (v46 > v83)
          {
            goto LABEL_98;
          }

          *v78 = v79;
          v78[1] = v81;
          if (v46 >= v83)
          {
            goto LABEL_99;
          }

          v43 = v83 - 1;
          memmove(&v44[2 * v46], v80 + 2, 16 * (v83 - 1 - v46));
          v82[2] = v83 - 1;
          v84 = v83 > 2;
          v8 = v82;
          v5 = 0;
          if (!v84)
          {
            goto LABEL_91;
          }
        }

        v53 = &v44[2 * v43];
        v54 = *(v53 - 8);
        v55 = *(v53 - 7);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_100;
        }

        v58 = *(v53 - 6);
        v57 = *(v53 - 5);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_101;
        }

        v60 = v48[1];
        v61 = v60 - *v48;
        if (__OFSUB__(v60, *v48))
        {
          goto LABEL_103;
        }

        v59 = __OFADD__(v51, v61);
        v62 = v51 + v61;
        if (v59)
        {
          goto LABEL_106;
        }

        if (v62 >= v56)
        {
          v76 = *v47;
          v75 = v47[1];
          v59 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v59)
          {
            goto LABEL_111;
          }

          if (v51 < v77)
          {
            v46 = v43 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v89;
      a4 = v87;
      if (v89 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_121;
  }

  sub_1B3FD1230(&v92, *a1, a3);
LABEL_95:
}

uint64_t sub_1B3FD1230(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B3FD14E0(v5);
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
    sub_1B3FD135C((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
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

uint64_t sub_1B3FD135C(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_1B3FC98E8(a1, (a2 - a1) / 32, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_13;
  }

  sub_1B3FC98E8(a2, (a3 - a2) / 32, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  v15 = v6 - 4;
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    if (*(v10 - 4) < *v15)
    {
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        v18 = *(v15 + 1);
        *v5 = *v15;
        *(v5 + 1) = v18;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      v17 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v17;
    }

    v10 -= 4;
  }

LABEL_28:
  v19 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[4 * v19])
  {
    memmove(v6, v4, 32 * v19);
  }

  return 1;
}

char *sub_1B3FD14F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t PhotosFilteredItemList.__allocating_init(originalItemList:removedId:insertedItem:allowedIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v8 = swift_allocObject();
  PhotosFilteredItemList.init(originalItemList:removedId:insertedItem:allowedIds:)(a1, a2, a3, a4);
  return v8;
}

char *PhotosFilteredItemList.init(originalItemList:removedId:insertedItem:allowedIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v144 = a4;
  v151 = a3;
  v152 = a2;
  v154 = a1;
  v122 = *v4;
  v5 = *(v122 + 88);
  v6 = *(v122 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v150 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_11();
  v141 = v9;
  v159 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v139 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_28();
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v158 = &v117 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (&v117 - v18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB87C7B8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_12();
  v135 = v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_28();
  MEMORY[0x1EEE9AC00](v24, v25);
  v125 = &v117 - v26;
  v27 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v149 = v28;
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v132 = &v117 - v32;
  v156 = v8;
  v143 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  OUTLINED_FUNCTION_2_0();
  v157 = v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v123 = &v117 - v37;
  v38 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v148 = v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_28();
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v117 - v44;
  v138 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v136 = v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_28();
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v117 - v51;
  OUTLINED_FUNCTION_8_6();
  v54 = *(v53 + 152);
  *&v4[v54] = PXDataSourceIdentifierMakeUnique();
  OUTLINED_FUNCTION_7_7();
  v56 = *(v55 + 96);
  v140 = *(v6 - 8);
  v57 = *(v140 + 16);
  v121 = v56;
  v153 = v6;
  v57(&v4[v56], v154, v6);
  OUTLINED_FUNCTION_7_7();
  v59 = *(v58 + 112);
  v60 = *(v149 + 16);
  v155 = v4;
  v120 = v59;
  v61 = v148;
  v147 = v27;
  v129 = v149 + 16;
  v128 = v60;
  v60(&v4[v59], v152, v27);
  v62 = *(v61 + 16);
  v131 = v61 + 16;
  v130 = v62;
  v62(v45, v151, v38);
  OUTLINED_FUNCTION_12_3(v45);
  v146 = v38;
  v137 = TupleTypeMetadata2;
  if (v63)
  {
    (*(v61 + 8))(v45, v38);
    v66 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_9_5();
    (*(v64 + 32))(v52, &v45[v65], AssociatedTypeWitness);
    v66 = 0;
  }

  v127 = AssociatedTypeWitness;
  __swift_storeEnumTagSinglePayload(v52, v66, 1, AssociatedTypeWitness);
  v67 = v155;
  v68 = *(*v155 + 120);
  v126 = *(v136 + 32);
  v119 = v68;
  v69 = v138;
  v126(&v155[v68], v52, v138);
  v117 = *(*v67 + 104);
  *&v67[v117] = v144;
  v70 = v150;
  v71 = *(v150 + 104);
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  v72 = v133;
  v73 = v153;
  (v71)(v153, v70);
  v118 = *(*v67 + 144);
  v126(&v67[v118], v72, v69);
  v74 = *(v70 + 48);
  v133 = v70 + 48;
  v75 = v74(v73, v70);
  v167 = v75;
  v76 = v132;
  v77 = v147;
  v128(v132, v152, v147);
  v78 = v156;
  if (__swift_getEnumTagSinglePayload(v76, 1, v156) == 1)
  {
    (*(v149 + 8))(v76, v77);
    v79 = v127;
    v80 = v144;
    OUTLINED_FUNCTION_10_2();
    v81 = v134;
  }

  else
  {
    OUTLINED_FUNCTION_10_2();
    v82 = v123;
    (*(v71 + 32))(v123, v76, v78);
    v160 = v75;
    sub_1B405D704();
    swift_getWitnessTable();
    v83 = v127;
    swift_getAssociatedConformanceWitness();
    sub_1B405D964();
    if (v165 == 1)
    {
      (*(v71 + 8))(v82, v78);
    }

    else
    {
      v84 = v157;
      sub_1B405D6B4();
      v85 = *(v71 + 8);
      v85(v84, v78);
      v85(v82, v78);
    }

    v80 = v144;
    v81 = v134;
    v79 = v83;
  }

  v86 = v146;
  v130(v81, v151, v146);
  v87 = v137;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v137);
  v89 = v135;
  if (EnumTagSinglePayload == 1)
  {
    v90 = (*(v148 + 8))(v81, v86);
  }

  else
  {
    v144 = v74;
    v92 = v125;
    (*(v135 + 32))(v125, v81, v87);
    v93 = v124;
    (*(v89 + 16))(v124, v92, v87);
    if (*(v93 + 8) == 1)
    {
      OUTLINED_FUNCTION_9_5();
      (*(v94 + 8))(v93 + v95, v79);
      OUTLINED_FUNCTION_5_12();
      v96(v79);
      sub_1B405D704();
      sub_1B405D694();
    }

    else
    {
      OUTLINED_FUNCTION_9_5();
      (*(v97 + 8))(v93 + v98, v79);
      OUTLINED_FUNCTION_5_12();
      v71 = v157;
      v99(v79);
      sub_1B405D704();
      OUTLINED_FUNCTION_10_2();
      sub_1B405D6A4();
    }

    v90 = (*(v89 + 8))(v92, v87);
    v74 = v144;
  }

  v100 = v167;
  if (v80)
  {
    v164 = v167;
    MEMORY[0x1EEE9AC00](v90, v91);
    v101 = v150;
    *(&v117 - 4) = v153;
    *(&v117 - 3) = v101;
    *(&v117 - 2) = v80;
    sub_1B405D704();
    _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
    swift_getWitnessTable();
    v102 = sub_1B405DC64();
    v137 = 0;

    v167 = v102;
    v100 = v102;
    OUTLINED_FUNCTION_10_2();
  }

  else
  {
    v137 = 0;
  }

  *&v155[*(*v155 + 160)] = v100;
  v144 = v100;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_11();
  v143 = v103;
  sub_1B405D644();
  swift_getAssociatedConformanceWitness();
  v166 = sub_1B405D2A4();
  v164 = v74(v153, v150);
  v104 = sub_1B405D704();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8C6F570](&v160, v104, WitnessTable);

  v163 = v160;
  v138 = sub_1B405DDD4();
  sub_1B405DDA4();
  v150 = v104;
  AssociatedConformanceWitness = WitnessTable;
  sub_1B405DDC4();
  v106 = (v139 + 32);
  v107 = (v71 + 32);
  v108 = v141;
  while (1)
  {
    v109 = v158;
    sub_1B405DDB4();
    v110 = *v106;
    (*v106)(v19, v109, v159);
    OUTLINED_FUNCTION_12_3(v19);
    if (v63)
    {
      break;
    }

    v111 = *v19;
    (*v107)(v157, v19 + *(v108 + 48), v156);
    v160 = v111;
    v161 = 0;
    sub_1B405D324();
    sub_1B405D344();
  }

  *&v155[*(*v155 + 128)] = v166;
  sub_1B405D644();
  v112 = v156;
  v163 = sub_1B405D2A4();
  v164 = v144;
  MEMORY[0x1B8C6F570](&v160, v150, AssociatedConformanceWitness);

  v162 = v160;
  sub_1B405DDA4();
  v113 = v142;
  while (1)
  {
    v114 = v158;
    sub_1B405DDB4();
    v110(v113, v114, v159);
    OUTLINED_FUNCTION_12_3(v113);
    if (v63)
    {
      break;
    }

    v115 = *v113;
    (*v107)(v157, v113 + *(v108 + 48), v112);
    v160 = v115;
    v161 = 0;
    sub_1B405D324();
    sub_1B405D344();
  }

  (*(v148 + 8))(v151, v146);
  (*(v149 + 8))(v152, v147);
  (*(v140 + 8))(v154, v153);

  result = v155;
  *&v155[*(*v155 + 136)] = v163;
  return result;
}

uint64_t sub_1B3FD2740()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1B405D814() & 1;
}

uint64_t PhotosFilteredItemList.placeholderObject.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_27();
  v4 = *(v3 + 144);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_11();
  sub_1B405DAC4();
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 16);

  return v7(a1, v1 + v4, v5);
}

uint64_t PhotosFilteredItemList.numberOfItems.getter()
{
  OUTLINED_FUNCTION_27();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();

  return sub_1B405D684();
}

uint64_t PhotosFilteredItemList.item(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v3 = *v2;
  OUTLINED_FUNCTION_8_6();
  v5 = *(v4 + 88);
  v6 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v23 = v9;
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - v11;
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v23 - v18;
  OUTLINED_FUNCTION_8_6();
  sub_1B405D734();
  OUTLINED_FUNCTION_7_7();
  swift_getAssociatedConformanceWitness();
  sub_1B405D334();
  if (v28)
  {
    v20 = v26;
    OUTLINED_FUNCTION_7_7();
    (*(v23 + 16))(v12, &v2[*(v21 + 120)], v24);
    result = __swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v15 + 8))(v19, v13);
      return (*(*(AssociatedTypeWitness - 8) + 32))(v20, v12, AssociatedTypeWitness);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_7();
    (*(v5 + 56))(v27, v6, v5);
    return (*(v15 + 8))(v19, v13);
  }

  return result;
}

char *PhotosFilteredItemList.deinit()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8_6();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_9_5();
  (*(v3 + 8))(&v0[v4], v2);
  OUTLINED_FUNCTION_7_7();

  OUTLINED_FUNCTION_7_7();
  v6 = *(v5 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_11();
  sub_1B405DAC4();
  OUTLINED_FUNCTION_8();
  (*(v7 + 8))(&v0[v6]);
  OUTLINED_FUNCTION_7_7();
  v9 = *(v8 + 120);
  v10 = sub_1B405DAC4();
  OUTLINED_FUNCTION_8();
  v12 = *(v11 + 8);
  v12(&v0[v9], v10);
  OUTLINED_FUNCTION_7_7();

  OUTLINED_FUNCTION_7_7();

  OUTLINED_FUNCTION_7_7();
  v12(&v0[*(v13 + 144)], v10);
  OUTLINED_FUNCTION_7_7();

  return v0;
}

uint64_t PhotosFilteredItemList.__deallocating_deinit()
{
  PhotosFilteredItemList.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B3FD3200()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    v0 = sub_1B405DAC4();
    if (v2 <= 0x3F)
    {
      v0 = sub_1B405DAC4();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return v0;
}

uint64_t PhotosGroupingItemListManager.__allocating_init(inputItemListManager:options:groupProvider:)()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_5_13();
  PhotosGroupingItemListManager.init(inputItemListManager:options:groupProvider:)(v1, v2, v3, v4);
  return v0;
}

uint64_t PhotosGroupingItemListManager.init(inputItemListManager:options:groupProvider:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v5;
  v10 = *a2;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  v11 = v9;
  if (qword_1EB87ACC8 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB87ACD0;
  *(v5 + 72) = qword_1EB87ACD0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v13 = v11[10];
  v14 = v11[11];
  v16 = v11[12];
  v15 = v11[13];
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v17 = v12;
  State = type metadata accessor for PhotosGroupingItemListManager.FetchState();
  *(v5 + 96) = sub_1B3F92440(v27, State);
  *(v5 + 16) = v10;
  *(v5 + 32) = a1;
  *(v5 + 56) = a3;
  *(v5 + 64) = a4;
  type metadata accessor for PhotosBasicItemListManager();
  type metadata accessor for PhotosBasicItemList();
  LOBYTE(v27[0]) = 0;
  swift_unknownObjectRetain();

  v19 = sub_1B3F7C574();
  v20 = PhotosBasicItemList.__allocating_init(items:loadingStatus:)(v19, v27);
  *(v5 + 24) = PhotosBasicItemListManager.__allocating_init(itemList:)(v20);
  *&v27[0] = a1;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v13;
  v22[3] = v14;
  v22[4] = v16;
  v22[5] = v15;
  v22[6] = v21;
  v23 = (*(*(v16 + 16) + 24))(sub_1B3FD5478, v22, v13);
  v25 = v24;

  *(v5 + 40) = v23;
  *(v5 + 48) = v25;
  swift_unknownObjectRelease();
  sub_1B3FD3748();
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_1B3FD36C0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      sub_1B3FD3748();
    }
  }

  return result;
}

uint64_t sub_1B3FD3748()
{
  v1 = v0;
  v66 = *v0;
  sub_1B405D1B4();
  OUTLINED_FUNCTION_0_12();
  v72 = v3;
  v73 = v2;
  MEMORY[0x1EEE9AC00](v2, v4);
  OUTLINED_FUNCTION_1_13();
  v70 = v6 - v5;
  v71 = sub_1B405D1D4();
  OUTLINED_FUNCTION_0_12();
  v69 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_1_13();
  v68 = v11 - v10;
  v12 = v66[12];
  v13 = v66[10];
  OUTLINED_FUNCTION_23();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  v67 = v14;
  v16 = *(v15 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v57 - v22;
  v24 = sub_1B405D204();
  OUTLINED_FUNCTION_0_12();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_1_13();
  v31 = v30 - v29;
  v32 = v1[2];
  *(v30 - v29) = v32;
  (*(v26 + 104))(v30 - v29, *MEMORY[0x1E69E8020], v24);
  v65 = v32;
  LOBYTE(v32) = sub_1B405D224();
  result = (*(v26 + 8))(v31, v24);
  if (v32)
  {
    if ((v1[10] & 1) == 0)
    {
      *(v1 + 80) = 1;
      v62 = sub_1B3FA2728();
      v34 = *(v12 + 40);
      v35 = v23;
      v64 = v23;
      v34(v13, v12);
      v36 = v1[8];
      v61 = v1[7];
      v60 = v36;
      v63 = v1[9];
      v37 = swift_allocObject();
      v58 = v12;
      v38 = v13;
      v39 = v37;
      v59 = v37;
      swift_weakInit();
      v40 = v67;
      v41 = AssociatedTypeWitness;
      (*(v67 + 16))(v20, v35, AssociatedTypeWitness);
      v42 = (*(v40 + 80) + 56) & ~*(v40 + 80);
      v43 = (v16 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      *(v45 + 2) = v38;
      v46 = v66;
      v47 = v58;
      *(v45 + 3) = v66[11];
      *(v45 + 4) = v47;
      *(v45 + 5) = v46[13];
      *(v45 + 6) = v39;
      (*(v40 + 32))(&v45[v42], v20, v41);
      v48 = &v45[v43];
      v49 = v62;
      v50 = v60;
      *v48 = v61;
      *(v48 + 1) = v50;
      *&v45[v44] = v49;
      v51 = v65;
      *&v45[(v44 + 15) & 0xFFFFFFFFFFFFFFF8] = v65;
      aBlock[4] = sub_1B3FD5D8C;
      aBlock[5] = v45;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B3F934F0;
      aBlock[3] = &block_descriptor_9;
      v52 = _Block_copy(aBlock);
      v53 = v51;

      v54 = v68;
      sub_1B405D1C4();
      v75 = MEMORY[0x1E69E7CC0];
      sub_1B3FD5EA4(qword_1EB87AA10, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BB48);
      sub_1B3FD5EEC(&qword_1EB87AA08, &qword_1EB87BB48);
      v55 = v70;
      v56 = v73;
      sub_1B405DB24();
      MEMORY[0x1B8C6FA80](0, v54, v55, v52);
      _Block_release(v52);

      (*(v72 + 8))(v55, v56);
      (*(v69 + 8))(v54, v71);
      (*(v40 + 8))(v64, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B3FD3D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a4;
  v14 = *a5;
  v15 = sub_1B405D1B4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v57 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1B405D1D4();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v19);
  v55 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v49 = result;
    swift_getAssociatedTypeWitness();
    v52 = v15;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v51 = a6;
    v23 = *(AssociatedConformanceWitness + 8);
    v53 = v16;
    v24 = *(v23 + 8);
    v25 = swift_checkMetadataState();
    v48 = v24(v25, v23);
    v26 = a3(a2);
    v27 = *(v14 + 80);
    v28 = *(v14 + 88);
    v29 = type metadata accessor for PhotosBasicItemList();
    sub_1B3FB7918(&aBlock);
    v65 = PhotosBasicItemList.__allocating_init(items:loadingStatus:)(v26, &aBlock);
    v66 = a5;
    v47[0] = a8;
    v30 = v65;
    v54 = v65;
    WitnessTable = swift_getWitnessTable();
    static PhotosItemListChangeDetails.calculateChangeDetails<A, B, C>(from:to:allItemsChanged:)(&v66, &v65, 1, v27, v29, v29, WitnessTable, WitnessTable, &aBlock);
    v33 = aBlock;
    v32 = v60;
    v34 = a7;
    v35 = v61;
    v50 = v61;
    v36 = sub_1B3FD4818();
    v47[1] = v47;
    MEMORY[0x1EEE9AC00](v36, v37);
    v38 = v47[0];
    v47[-8] = v34;
    v47[-7] = v38;
    v47[-6] = v30;
    v47[-5] = v33;
    v47[-4] = v32;
    v47[-3] = v35;
    v47[-2] = v48;
    aBlock = v34;
    v60 = v27;
    v61 = v38;
    v62 = v28;
    v39 = v38;
    State = type metadata accessor for PhotosGroupingItemListManager.FetchState();
    sub_1B3F923B8(sub_1B3FD5E6C, &v47[-10], v36, State, MEMORY[0x1E69E7CA8] + 8);

    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v42[2] = v34;
    v42[3] = v27;
    v42[4] = v39;
    v42[5] = v28;
    v42[6] = v41;
    v63 = sub_1B3FD5E94;
    v64 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_1B3F934F0;
    v62 = &block_descriptor_30;
    v43 = _Block_copy(&aBlock);

    v44 = v55;
    sub_1B405D1C4();
    v66 = MEMORY[0x1E69E7CC0];
    sub_1B3FD5EA4(qword_1EB87AA10, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BB48);
    sub_1B3FD5EEC(&qword_1EB87AA08, &qword_1EB87BB48);
    v45 = v57;
    v46 = v52;
    sub_1B405DB24();
    MEMORY[0x1B8C6FA80](0, v44, v45, v43);

    _Block_release(v43);

    (*(v53 + 8))(v45, v46);
    (*(v56 + 8))(v44, v58);
  }

  return result;
}

void sub_1B3FD42BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];

  v14 = a5;
  sub_1B3FD5CC8(v10, v11, v12, v13);
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

uint64_t sub_1B3FD4354()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B3FD43AC();
  }

  return result;
}

BOOL sub_1B3FD43AC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  v54 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v51 = &v47 - v9;
  v10 = sub_1B3FD4818();
  v11 = *(v2 + 88);
  v12 = *(v2 + 104);
  v52 = v4;
  v53 = v3;
  *&v13 = v4;
  *(&v13 + 1) = v11;
  *&v14 = v3;
  *(&v14 + 1) = v12;
  v56 = v13;
  v57 = v14;
  v49 = v14;
  v50 = v13;
  v58 = v13;
  v59 = v14;
  State = type metadata accessor for PhotosGroupingItemListManager.FetchState();
  type metadata accessor for PhotosBasicItemList();
  swift_getTupleTypeMetadata3();
  v16 = sub_1B405DAC4();
  sub_1B3F923B8(sub_1B3FD5CA8, v55, v10, State, v16);

  v17 = v58;
  v18 = v59;
  v19 = v60;
  if (v58)
  {
    v1[11] = v60;
    *&v58 = v1[3];
    v20 = swift_allocObject();
    v48 = AssociatedTypeWitness;
    v21 = v20;
    v22 = v49;
    *(v20 + 16) = v50;
    *(v20 + 32) = v22;
    *(v20 + 48) = v17;
    *(v20 + 64) = v18;
    *(v20 + 80) = v19;
    v23 = OUTLINED_FUNCTION_1_33();
    sub_1B3FD5D4C(v23, v24, v25, v26);
    v27 = OUTLINED_FUNCTION_1_33();
    sub_1B3FD5D4C(v27, v28, v29, v30);
    v31 = type metadata accessor for PhotosBasicItemListManager();

    WitnessTable = swift_getWitnessTable();
    PhotosMutableComposedObservable<>.performChanges(using:)(sub_1B3FD5D08, v21, v31, WitnessTable);
    AssociatedTypeWitness = v48;

    v33 = OUTLINED_FUNCTION_1_33();
    sub_1B3FD5CC8(v33, v34, v35, v36);

    *(v1 + 80) = 0;
  }

  v37 = v1[11];
  v38 = v51;
  sub_1B3FA0E04();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_4_10();
  v40 = v39(AssociatedTypeWitness);
  v41 = (*(v54 + 8))(v38, AssociatedTypeWitness);
  if (v37 != v40)
  {
    sub_1B3FD3748(v41);
  }

  v42 = OUTLINED_FUNCTION_1_33();
  sub_1B3FD5CC8(v42, v43, v44, v45);
  return v17 != 0;
}

double sub_1B3FD46EC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_1B3FD5D4C(*a1, v5, v6, v7);
  sub_1B3FD5CC8(v4, v5, v6, v7);
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  return result;
}

uint64_t sub_1B3FD4784(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87BE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B406FF50;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  v6 = v4;
  sub_1B3F7FE78();
  swift_setDeallocating();
  return sub_1B3F8880C();
}

uint64_t sub_1B3FD4820(double a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_23();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  v25 = a1;
  v11 = mach_absolute_time();
  sub_1B3FD4A44(v2, &v25, &v24 + 7);
  result = mach_absolute_time();
  v13 = result >= v11;
  v14 = result - v11;
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = PXTimebaseConversionFactor();
    if (HIBYTE(v24) != 1)
    {
      return 0;
    }

    v16 = a1 - v15 * v14;
    v17 = (v6 + 8);
    while (1)
    {
      if ((*(v2 + 80) & 1) == 0)
      {
        v18 = *(v2 + 88);
        sub_1B3FA0E04();
        swift_getAssociatedConformanceWitness();
        OUTLINED_FUNCTION_4_10();
        v20 = v19(AssociatedTypeWitness);
        (*v17)(v10, AssociatedTypeWitness);
        if (v18 == v20)
        {
          return 1;
        }
      }

      sub_1B3FD3748();
      px_dispatch_queue_wait(*(v2 + 72), v16);
      v21 = mach_absolute_time();
      v22 = sub_1B3FD43AC();
      result = mach_absolute_time();
      v23 = result - v21;
      if (result < v21)
      {
        break;
      }

      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_14;
      }

      v16 = v16 - PXTimebaseConversionFactor() * v23;
      if (!v22)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1B3FD4A44@<X0>(uint64_t a1@<X0>, double *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(*(*a1 + 96) + 56))(*(*a1 + 80), *a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B3FD4AB4()
{
  v1 = sub_1B405D204();
  OUTLINED_FUNCTION_0_12();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_1_13();
  v8 = v7 - v6;
  v9 = *(v0 + 16);
  *(v7 - v6) = v9;
  (*(v3 + 104))(v7 - v6, *MEMORY[0x1E69E8020], v1);
  v10 = v9;
  LOBYTE(v9) = sub_1B405D224();
  result = (*(v3 + 8))(v8, v1);
  if (v9)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_1B3FD4BB4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B405D204();
  OUTLINED_FUNCTION_0_12();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_1_13();
  v12 = v11 - v10;
  v13 = *(v2 + 16);
  *(v11 - v10) = v13;
  (*(v7 + 104))(v11 - v10, *MEMORY[0x1E69E8020], v5);
  v14 = v13;
  LOBYTE(v13) = sub_1B405D224();
  result = (*(v7 + 8))(v12, v5);
  if (v13)
  {
    v16 = type metadata accessor for PhotosBasicItemListManager();

    WitnessTable = swift_getWitnessTable();
    v18 = PhotosComposedObservable<>.observeChanges(using:)(a1, a2, v16, WitnessTable);

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PhotosGroupingItemListManager.GroupItem.contents.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 76);

  *(v2 + v4) = a1;
  return result;
}

uint64_t PhotosGroupingItemListManager.GroupItem.init(id:contents:)()
{
  OUTLINED_FUNCTION_3_21();
  v2 = v1;
  (*(*(v3 - 8) + 32))(v1, v4, v3);
  result = type metadata accessor for PhotosGroupingItemListManager.GroupItem();
  *(v2 + *(result + 76)) = v0;
  return result;
}

uint64_t static PhotosGroupingItemListManager.GroupItem.== infix(_:_:)()
{
  if (sub_1B405D404())
  {
    type metadata accessor for PhotosGroupingItemListManager.GroupItem();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_23();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v0 = sub_1B405D714();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t PhotosGroupingItemListManager.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PhotosGroupingItemListManager.__deallocating_deinit()
{
  PhotosGroupingItemListManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t PhotosItemListManager.groupBy<A>(options:groupProvider:)()
{
  OUTLINED_FUNCTION_3_21();
  type metadata accessor for PhotosGroupingItemListManager();
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_5_13();
  sub_1B3FD3408();
  return PhotosGroupingItemListManager.__allocating_init(inputItemListManager:options:groupProvider:)();
}

uint64_t sub_1B3FD5210()
{
  v10 = sub_1B405DA04();
  v0 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v1);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B405D9E4();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1B405D1D4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9[1] = sub_1B3F99C40();
  sub_1B405D1C4();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1B3FD5EA4(&qword_1EB87A9E0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C840);
  sub_1B3FD5EEC(&qword_1EB87AA00, &qword_1EB87C840);
  sub_1B405DB24();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1B405DA34();
  qword_1EB87ACD0 = result;
  return result;
}

uint64_t sub_1B3FD54C0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B3FD54FC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B3FD56CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B3FD5728()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    result = sub_1B405D704();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B3FD5878(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B3FD59B4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B3FD5BA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18PhotosUIFoundation0A13BasicItemListCyq_G04itemE0_AA0adE13ChangeDetailsV06changeH0Si06sourcedE7VersiontSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B3FD5BF8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B3FD5C4C(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1B3FD5CC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t sub_1B3FD5D08(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = v2;
  v8 = v3;
  return sub_1B3FD4784(a1, &v5);
}

id sub_1B3FD5D4C(id result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {

    return a4;
  }

  return result;
}

uint64_t sub_1B3FD5D8C()
{
  v1 = v0[2];
  v2 = v0[4];
  OUTLINED_FUNCTION_23();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[6];
  v8 = v0 + v5;
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *(v0 + v6);
  v12 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B3FD3D40(v7, v0 + v4, v9, v10, v11, v12, v1, v2);
}

uint64_t sub_1B3FD5EA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B3FD5EEC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PhotosMappingItemList.__allocating_init(itemIdentifiers:loadingStatus:itemProvider:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  PhotosMappingItemList.init(itemIdentifiers:loadingStatus:itemProvider:)(a1, a2, a3, a4);
  return v8;
}

uint64_t PhotosMappingItemList.__allocating_init()()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  swift_getAssociatedTypeWitness();
  v3 = sub_1B405D644();
  v6 = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  return PhotosMappingItemList.__allocating_init(itemIdentifiers:loadingStatus:itemProvider:)(v3, &v6, sub_1B3FD63D4, v4);
}

uint64_t PhotosMappingItemList.init(itemIdentifiers:loadingStatus:itemProvider:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  *(v4 + 32) = PXDataSourceIdentifierMakeUnique();
  *(v4 + 40) = a1;
  *(v4 + 48) = v8;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return v4;
}

uint64_t PhotosMappingItemList.numberOfItems.getter()
{
  swift_getAssociatedTypeWitness();

  return sub_1B405D684();
}

uint64_t PhotosMappingItemList.item(at:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v5);
  v7 = &v10 - v6;
  v8 = *(v1 + 16);
  sub_1B405D734();
  v8(a1, v7);
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t PhotosMappingItemList.deinit()
{

  return v0;
}

uint64_t PhotosMappingItemList.__deallocating_deinit()
{
  PhotosMappingItemList.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 49, 7);
}

uint64_t PhotosChromeStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1B405E124();
  MEMORY[0x1B8C70190](v1);
  return sub_1B405E154();
}

UIColor __swiftcall UIColor.adjusted(chromeStyle:)(PhotosUIFoundation::PhotosChromeStyle_optional chromeStyle)
{
  v2 = *chromeStyle.value;
  if (v2 == 2)
  {

    return v1;
  }

  else
  {
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v6 = [v1 resolvedColorWithTraitCollection_];

    return v6;
  }
}

unint64_t sub_1B3FD65DC()
{
  result = qword_1EB87C848;
  if (!qword_1EB87C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C848);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosChromeStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

id PhotosUserDefaultsObservation.init(userDefaults:key:changeHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = &v5[OBJC_IVAR____TtC18PhotosUIFoundation29PhotosUserDefaultsObservation_changeHandler];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v5[OBJC_IVAR____TtC18PhotosUIFoundation29PhotosUserDefaultsObservation_userDefaults] = a1;
  v8 = &v5[OBJC_IVAR____TtC18PhotosUIFoundation29PhotosUserDefaultsObservation_key];
  *v8 = a2;
  *(v8 + 1) = a3;
  *v7 = a4;
  *(v7 + 1) = a5;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for PhotosUserDefaultsObservation();
  v9 = a1;
  _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();

  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = sub_1B405D414();

  [v9 addObserver:v10 forKeyPath:v11 options:0 context:{0, v13.receiver, v13.super_class}];

  return v10;
}

void sub_1B3FD6894()
{
  v1 = (v0 + OBJC_IVAR____TtC18PhotosUIFoundation29PhotosUserDefaultsObservation_changeHandler);
  v2 = *(v0 + OBJC_IVAR____TtC18PhotosUIFoundation29PhotosUserDefaultsObservation_changeHandler);
  if (v2)
  {
    v3 = v1[1];
    *v1 = 0;
    v1[1] = 0;
    sub_1B3F971F8(v2, v3);
    v4 = *(v0 + OBJC_IVAR____TtC18PhotosUIFoundation29PhotosUserDefaultsObservation_userDefaults);
    v5 = sub_1B405D414();
    [v4 removeObserver:v0 forKeyPath:v5];
  }
}

id PhotosUserDefaultsObservation.__deallocating_deinit()
{
  sub_1B3FD6894();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosUserDefaultsObservation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B3FD69FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PhotosUIFoundation29PhotosUserDefaultsObservation_changeHandler);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18PhotosUIFoundation29PhotosUserDefaultsObservation_changeHandler + 8);

    v1(v3);

    sub_1B3F971F8(v1, v2);
  }
}

id PhotosUserDefaultsObservation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1B3FD6C24()
{
  result = qword_1EB87B948;
  if (!qword_1EB87B948)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87B948);
  }

  return result;
}

BOOL PhotosItemList.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 72))();
  return (v3 & 1) == 0;
}

{
  (*(a3 + 80))();
  return (v3 & 1) == 0;
}

uint64_t PhotosItemList.placeholderObject.getter()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_6();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t PhotosItemListLoadingStatus.description.getter()
{
  v1 = 0x6465646172676564;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F686563616C70;
  }
}

PhotosUIFoundation::PhotosItemListLoadingStatus_optional __swiftcall PhotosItemListLoadingStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BOOL PhotosItemList.isContentUnavailable.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 40))() & 1) == 0)
  {
    return 0;
  }

  (*(a2 + 112))(&v5, a1, a2);
  return v5 == 2;
}

uint64_t PhotosItemList.item<A>(nearest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a4;
  v47 = a5;
  v45 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - v13;
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_0();
  v20 = v19;
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v45 - v25;
  (*(v27 + 16))(v18, a1, a3);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_10_3();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, AssociatedTypeWitness);
    (*(v20 + 32))(v26, v14, AssociatedTypeWitness);
    v31 = v46;
    v32 = v45;
    v33 = (*(v46 + 96))(v26, v45, v46);
    if ((v34 & 1) == 0)
    {
      (*(v31 + 56))(v33, v32, v31);
      v42 = OUTLINED_FUNCTION_11_3();
      v43(v42);
      v41 = v47;
      v37 = swift_dynamicCast() ^ 1;
      return __swift_storeEnumTagSinglePayload(v41, v37, 1, a3);
    }

    v35 = OUTLINED_FUNCTION_11_3();
    v36(v35);
    v37 = 1;
  }

  else
  {
    v37 = 1;
    OUTLINED_FUNCTION_9_6();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, AssociatedTypeWitness);
    (*(v10 + 8))(v14, v8);
  }

  v41 = v47;
  return __swift_storeEnumTagSinglePayload(v41, v37, 1, a3);
}

Swift::Int_optional __swiftcall PhotosItemList.indexClosest(to:)(Swift::Int to)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v2 + 32);
  v7 = v6();
  if (v7 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = (v6)(v4, v3);
    v10 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
      goto LABEL_9;
    }

    if (v10 >= to)
    {
      v10 = to;
    }

    v8 = v10 & ~(v10 >> 63);
  }

  v9 = v7 < 1;
LABEL_9:
  result.value = v8;
  result.is_nil = v9;
  return result;
}

uint64_t PhotosItemList.item(for:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    if (v3 < 0 || (v5 = OUTLINED_FUNCTION_11_3(), v3 >= v6(v5)))
    {
      v8 = OUTLINED_FUNCTION_2_29();
      v9 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_4_11();
      OUTLINED_FUNCTION_8_7();
      v7();
      v8 = OUTLINED_FUNCTION_2_29();
      v9 = 0;
    }

    return __swift_storeEnumTagSinglePayload(a3, v9, 1, v8);
  }

  return result;
}

uint64_t PhotosItemList.firstItem.getter()
{
  OUTLINED_FUNCTION_7_8();
  if ((*(v0 + 32))() >= 1)
  {
    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_8_7();
    v1();
  }

  OUTLINED_FUNCTION_2_29();
  v2 = OUTLINED_FUNCTION_1_34();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t PhotosItemList.lastItem.getter()
{
  OUTLINED_FUNCTION_7_8();
  v1 = *(v0 + 32);
  if (v1() >= 1)
  {
    v2 = OUTLINED_FUNCTION_11_3();
    v3 = (v1)(v2);
    v4 = __OFSUB__(v3, 1);
    result = v3 - 1;
    if (v4)
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_8_7();
    v6();
  }

  OUTLINED_FUNCTION_2_29();
  v7 = OUTLINED_FUNCTION_1_34();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t PhotosItemList.singleItem.getter()
{
  OUTLINED_FUNCTION_7_8();
  if ((*(v0 + 32))() == 1)
  {
    OUTLINED_FUNCTION_4_11();
    OUTLINED_FUNCTION_8_7();
    v1();
  }

  OUTLINED_FUNCTION_2_29();
  v2 = OUTLINED_FUNCTION_1_34();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

unint64_t sub_1B3FD754C()
{
  result = qword_1EB87C868;
  if (!qword_1EB87C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C868);
  }

  return result;
}

uint64_t dispatch thunk of PhotosItemList.index(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 72))();
}

{
  return (*(a3 + 80))();
}

_BYTE *storeEnumTagSinglePayload for PhotosItemListLoadingStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PhotosItem.matches(itemReference:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B3F87FBC(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C870);
  if (swift_dynamicCast())
  {
    sub_1B3F90E0C(v10, v13);
    v5 = v14;
    v6 = v15;
    v7 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = PhotosItem.matchesID<A>(of:)(v7, a2, v5, a3, v6);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1B3FD7894(v10);
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1B3FD7894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB87C878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B3FD78FC()
{
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_4_12();

  return PhotosItem.analyticsDescription.getter(v0, v1);
}

uint64_t PhotosItem.analyticsDescription.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v5);
  (*(a2 + 64))(a1, a2);
  return sub_1B405D464();
}

uint64_t sub_1B3FD7A08()
{
  OUTLINED_FUNCTION_2_30();

  return PhotosItem.diagnosticDescription.getter();
}

uint64_t PhotosItem.diagnosticDescription.getter()
{
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v0, v1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1B405D464();
}

uint64_t sub_1B3FD7AEC()
{
  OUTLINED_FUNCTION_2_30();
  v0 = OUTLINED_FUNCTION_4_12();

  return PhotosItem.analyticsDescription.getter(v0, v1);
}

uint64_t sub_1B3FD7B20()
{
  OUTLINED_FUNCTION_0_42();

  return PhotosItem.diagnosticDescription.getter();
}

uint64_t sub_1B3FD7B54()
{
  OUTLINED_FUNCTION_0_42();
  v0 = OUTLINED_FUNCTION_4_12();

  return PhotosItem.analyticsDescription.getter(v0, v1);
}

uint64_t sub_1B3FD7B88()
{
  OUTLINED_FUNCTION_1_35();

  return PhotosItem.diagnosticDescription.getter();
}

uint64_t sub_1B3FD7BBC()
{
  OUTLINED_FUNCTION_1_35();
  v0 = OUTLINED_FUNCTION_4_12();

  return PhotosItem.analyticsDescription.getter(v0, v1);
}

uint64_t PhotosItem.matchesID<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a2;
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1B405DAC4();
  OUTLINED_FUNCTION_0_0();
  v29 = v9;
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v28 - v11;
  v13 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v28 - v23;
  (*(a5 + 64))(a3, a5);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v24, v12, AssociatedTypeWitness);
    (*(v32 + 64))(v31, v32);
    swift_getAssociatedConformanceWitness();
    v25 = sub_1B405D404();
    v26 = *(v16 + 8);
    v26(v21, AssociatedTypeWitness);
    v26(v24, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, AssociatedTypeWitness);
    (*(v29 + 8))(v12, v30);
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_1B3FD7F28@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a1;
  v29 = a4;
  v25 = *(a3 - 8);
  v26 = a3;
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v8, v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  v23 = 1;
  if (__swift_getEnumTagSinglePayload(v20, 1, v12) != 1)
  {
    (*(v13 + 32))(v17, v20, v12);
    v28(v17, v10);
    (*(v13 + 8))(v17, v12);
    if (v6)
    {
      return (*(v25 + 32))(v27, v10, v26);
    }

    v23 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a6, v23, 1, v29);
}

uint64_t sub_1B3FD821C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PhotosWeakSendableTransfer();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v8, a1, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v5 + 8))(v8, v4);
  *a2 = Strong;
  return result;
}

uint64_t PhotosWeakSendableTransfer.wrappedValue.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*PhotosWeakSendableTransfer.wrappedValue.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1B3F95C00;
}

uint64_t PhotosWeakSendableTransfer.init(wrappedValue:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t PhotosSendableTransfer.unwrapped<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[2] = *(*(a1 + 16) + 16);
  v3 = type metadata accessor for PhotosSendableTransfer();
  return sub_1B3FD7F28(sub_1B3FD851C, v6, MEMORY[0x1E69E73E0], v3, v4, a2);
}

uint64_t sub_1B3FD8434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  return (*(v5 + 32))(a3, v7, a2);
}

uint64_t sub_1B3FD853C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1B3FD8678(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1B3FD8880@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(a1 + 24) = MEMORY[0x1E69E7DE0];
  result = sub_1B3FDA570();
  *(a1 + 32) = result;
  *a1 = a2;
  return result;
}

uint64_t sub_1B3FD88C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x1E69E6160];
  a3[3] = MEMORY[0x1E69E6158];
  a3[4] = v3;
  *a3 = a1;
  a3[1] = a2;
  return _s18PhotosUIFoundation12BasicBuilderV11buildEither5firstSayxGAF_tFZ_0();
}

uint64_t sub_1B3FD88E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E6378];
  *(a2 + 24) = MEMORY[0x1E69E6370];
  *(a2 + 32) = v2;
  *a2 = result;
  return result;
}

void sub_1B3FD8900(uint64_t a1@<X8>, double a2@<D0>)
{
  v2 = MEMORY[0x1E69E63C0];
  *(a1 + 24) = MEMORY[0x1E69E63B0];
  *(a1 + 32) = v2;
  *a1 = a2;
}

void sub_1B3FD891C(uint64_t a1@<X8>, float a2@<S0>)
{
  v2 = MEMORY[0x1E69E6458];
  *(a1 + 24) = MEMORY[0x1E69E6448];
  *(a1 + 32) = v2;
  *a1 = a2;
}

uint64_t sub_1B3FD8938@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E6538];
  a2[3] = MEMORY[0x1E69E6530];
  a2[4] = v2;
  *a2 = result;
  return result;
}

uint64_t sub_1B3FD8954@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E6818];
  a2[3] = MEMORY[0x1E69E6810];
  a2[4] = v2;
  *a2 = result;
  return result;
}

uint64_t sub_1B3FD8970@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7238];
  *(a2 + 24) = MEMORY[0x1E69E7230];
  *(a2 + 32) = v2;
  *a2 = result;
  return result;
}

uint64_t sub_1B3FD898C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7298];
  *(a2 + 24) = MEMORY[0x1E69E7290];
  *(a2 + 32) = v2;
  *a2 = result;
  return result;
}

uint64_t sub_1B3FD89A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E72F8];
  *(a2 + 24) = MEMORY[0x1E69E72F0];
  *(a2 + 32) = v2;
  *a2 = result;
  return result;
}

uint64_t sub_1B3FD89C4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7368];
  a2[3] = MEMORY[0x1E69E7360];
  a2[4] = v2;
  *a2 = result;
  return result;
}

uint64_t sub_1B3FD89E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7510];
  *(a2 + 24) = MEMORY[0x1E69E7508];
  *(a2 + 32) = v2;
  *a2 = result;
  return result;
}

uint64_t sub_1B3FD89FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = MEMORY[0x1E69E7578];
  a3[3] = MEMORY[0x1E69E7570];
  a3[4] = v6;
  result = swift_allocObject();
  *a3 = result;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1B3FD8A5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7600];
  *(a2 + 24) = MEMORY[0x1E69E75F8];
  *(a2 + 32) = v2;
  *a2 = result;
  return result;
}

uint64_t sub_1B3FD8A78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7670];
  *(a2 + 24) = MEMORY[0x1E69E7668];
  *(a2 + 32) = v2;
  *a2 = result;
  return result;
}

uint64_t sub_1B3FD8A94@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E76E0];
  a2[3] = MEMORY[0x1E69E76D8];
  a2[4] = v2;
  *a2 = result;
  return result;
}

uint64_t sub_1B3FD8AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = MEMORY[0x1E69E77C0];
  a3[3] = MEMORY[0x1E69E77B8];
  a3[4] = v6;
  result = swift_allocObject();
  *a3 = result;
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SettingsCodable.writableSettingsValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  a3[3] = a1;
  a3[4] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = *(*(a1 - 8) + 16);

  return v8(boxed_opaque_existential_1, v3, a1);
}

uint64_t sub_1B3FD8B7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = _s18PhotosUIFoundation15SettingsCodablePAAE04readC5ValueyxypAA0cF9ReadErrorOYKFZ(a1, a3, &v7, a4);
  if (v4)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1B3FD8BB8(uint64_t a1, _BYTE *a2)
{
  sub_1B3F87FBC(a1, v5);
  if (swift_dynamicCast())
  {
    return v4;
  }

  *a2 = 0;
  v5[0] = 0;
  sub_1B3FB975C();
  return swift_willThrowTypedImpl();
}

uint64_t sub_1B3FD8C44()
{
  OUTLINED_FUNCTION_2_31();
  v2 = sub_1B3F87FBC(v1, v12);
  OUTLINED_FUNCTION_7_9(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  result = OUTLINED_FUNCTION_6_11();
  if ((result & 1) == 0)
  {
    *v0 = 0;
    v12[0] = 0;
    sub_1B3FB975C();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_1B3FD8CC0(uint64_t a1, _BYTE *a2)
{
  sub_1B3F87FBC(a1, v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
    v4[0] = 0;
    sub_1B3FB975C();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_1B3FD8D4C()
{
  OUTLINED_FUNCTION_2_31();
  sub_1B3F87FBC(v1, v3);
  if (OUTLINED_FUNCTION_6_11())
  {
    return v3[46];
  }

  *v0 = 0;
  v3[0] = 0;
  sub_1B3FB975C();
  return swift_willThrowTypedImpl();
}

uint64_t sub_1B3FD8DCC()
{
  OUTLINED_FUNCTION_2_31();
  sub_1B3F87FBC(v1, v3);
  if (OUTLINED_FUNCTION_6_11())
  {
    return v4;
  }

  *v0 = 0;
  v3[0] = 0;
  sub_1B3FB975C();
  return swift_willThrowTypedImpl();
}

uint64_t sub_1B3FD8E4C()
{
  OUTLINED_FUNCTION_2_31();
  sub_1B3F87FBC(v1, v3);
  if (OUTLINED_FUNCTION_6_11())
  {
    return v4;
  }

  *v0 = 0;
  v3[0] = 0;
  sub_1B3FB975C();
  return swift_willThrowTypedImpl();
}

uint64_t sub_1B3FD8ECC()
{
  OUTLINED_FUNCTION_2_31();
  v2 = sub_1B3F87FBC(v1, v13);
  OUTLINED_FUNCTION_7_9(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  if (OUTLINED_FUNCTION_6_11())
  {
    return v12;
  }

  *v0 = 0;
  v13[0] = 0;
  sub_1B3FB975C();
  return swift_willThrowTypedImpl();
}

uint64_t sub_1B3FD8F48()
{
  OUTLINED_FUNCTION_2_31();
  sub_1B3F87FBC(v1, v4);
  if (OUTLINED_FUNCTION_6_11())
  {
    return v3;
  }

  *v0 = 0;
  v4[0] = 0;
  sub_1B3FB975C();
  return swift_willThrowTypedImpl();
}

uint64_t _s18PhotosUIFoundation15SettingsCodablePAAE04readC5ValueyxypAA0cF9ReadErrorOYKFZ@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v10 = v9;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v16[-v13];
  sub_1B3F87FBC(a1, v16);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, a2);
    return (*(*(a2 - 8) + 32))(a4, v14, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, a2);
    (*(v10 + 8))(v14, v8);
    *a3 = 0;
    v16[0] = 0;
    sub_1B3FB975C();
    return swift_willThrowTypedImpl();
  }
}

uint64_t SettingsValueReadError.hashValue.getter()
{
  v1 = *v0;
  sub_1B405E124();
  MEMORY[0x1B8C70190](v1);
  return sub_1B405E154();
}

uint64_t sub_1B3FD91E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B3F87FBC(a1, v10);
  if (swift_dynamicCast())
  {
    if (v8 == a2 && v9 == a3)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_1B405DEC4();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1B3FD92F4(uint64_t a1, double a2)
{
  sub_1B3F87FBC(a1, v5);
  LODWORD(result) = OUTLINED_FUNCTION_3_22();
  if (v4 == a2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3FD934C(uint64_t a1, float a2)
{
  sub_1B3F87FBC(a1, v5);
  LODWORD(result) = swift_dynamicCast();
  if (v4 == a2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3FD93AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_8(a1, a2, a3);
  LODWORD(result) = OUTLINED_FUNCTION_3_22();
  if (v5 == v3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3FD93F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_8(a1, a2, a3);
  LODWORD(result) = OUTLINED_FUNCTION_3_22();
  if (v5 == v3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3FD943C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_8(a1, a2, a3);
  LODWORD(result) = OUTLINED_FUNCTION_3_22();
  if (v5 == v3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3FD9480(uint64_t a1, uint64_t a2)
{
  sub_1B3F87FBC(a1, v5);
  LODWORD(result) = OUTLINED_FUNCTION_3_22();
  if (v4 == a2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3FD94D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B3F87FBC(a1, v9);
  result = swift_dynamicCast();
  if (result)
  {
    return v7 == a2 && v8 == a3;
  }

  return result;
}

uint64_t SettingsCodable<>.isEqual(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v17[-v7];
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v6, v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B3F87FBC(a1, v17);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v8, 0, 1, a2);
    (*(v9 + 32))(v12, v8, a2);
    v13 = sub_1B405D404();
    (*(v9 + 8))(v12, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, a2);
    v14 = OUTLINED_FUNCTION_5_15();
    v15(v14);
    v13 = 0;
  }

  return v13 & 1;
}

void sub_1B3FD9898()
{
  OUTLINED_FUNCTION_0_44();
  v2 = sub_1B3FD8ECC();
  if (v1)
  {
    OUTLINED_FUNCTION_4_13(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
  }

  else
  {
    *v0 = v2;
  }
}

void sub_1B3FD99C4()
{
  OUTLINED_FUNCTION_0_44();
  v2 = sub_1B3FD8D4C();
  if (v1)
  {
    OUTLINED_FUNCTION_4_13(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
  }

  else
  {
    *v0 = v2;
  }
}

void sub_1B3FD9A50()
{
  OUTLINED_FUNCTION_0_44();
  v2 = sub_1B3FD8DCC();
  if (v1)
  {
    OUTLINED_FUNCTION_4_13(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
  }

  else
  {
    *v0 = v2;
  }
}

void sub_1B3FD9ADC()
{
  OUTLINED_FUNCTION_0_44();
  v2 = sub_1B3FD8E4C();
  if (v1)
  {
    OUTLINED_FUNCTION_4_13(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
  }

  else
  {
    *v0 = v2;
  }
}

void sub_1B3FD9BB8()
{
  OUTLINED_FUNCTION_0_44();
  v2 = sub_1B3FD8F48();
  if (v1)
  {
    OUTLINED_FUNCTION_4_13(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
  }

  else
  {
    *v0 = v2;
    v0[1] = v3;
  }
}

uint64_t sub_1B3FD9C24@<X0>(_BYTE *a1@<X1>, void *a2@<X8>)
{
  result = sub_1B3FD8C44();
  if (v2)
  {
    *a1 = v7;
  }

  else
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1B3FD9CA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _DWORD *a3@<X8>)
{
  result = sub_1B3FD8CC0(a1, &v8);
  if (v3)
  {
    *a2 = v8;
  }

  else
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1B3FD9D04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B3FD8BB8(a1, &v8);
  if (v3)
  {
    *a2 = v8;
  }

  else
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_1B3FD9D60@<X0>(_BYTE *a1@<X1>, void *a2@<X8>)
{
  result = sub_1B3FD8C44();
  if (v2)
  {
    *a1 = v7;
  }

  else
  {
    *a2 = v6;
  }

  return result;
}

BOOL _sSb18PhotosUIFoundationE17readSettingsValueySbypAA0dE9ReadErrorOYKFZ(uint64_t a1, _BYTE *a2)
{
  v4 = sub_1B3F87FBC(a1, v42);
  OUTLINED_FUNCTION_7_9(v4, v5, v6, MEMORY[0x1E69E6370], v7, v8, v9, v10, v39);
  if (swift_dynamicCast())
  {
    return v40;
  }

  v12 = sub_1B3F87FBC(a1, v42);
  OUTLINED_FUNCTION_7_9(v12, v13, v14, MEMORY[0x1E69E6530], v15, v16, v17, v18, v40);
  if (swift_dynamicCast())
  {
    return v41 != 0;
  }

  v19 = sub_1B3F87FBC(a1, v42);
  OUTLINED_FUNCTION_7_9(v19, v20, v21, MEMORY[0x1E69E6158], v22, v23, v24, v25, v41);
  if (!swift_dynamicCast())
  {
    *a2 = 0;
    v42[0] = 0;
LABEL_28:
    sub_1B3FB975C();
    swift_willThrowTypedImpl();
    return v11;
  }

  v26 = sub_1B405D474();
  v28 = v27;

  v29 = v26 == 1702195828 && v28 == 0xE400000000000000;
  if (v29 || (OUTLINED_FUNCTION_5_15(), (sub_1B405DEC4() & 1) != 0) || (v26 == 116 ? (v30 = v28 == 0xE100000000000000) : (v30 = 0), v30 || (OUTLINED_FUNCTION_5_15(), (OUTLINED_FUNCTION_11_4() & 1) != 0) || (v26 == 7562617 ? (v31 = v28 == 0xE300000000000000) : (v31 = 0), v31 || (OUTLINED_FUNCTION_5_15(), (sub_1B405DEC4() & 1) != 0) || (v26 == 121 ? (v32 = v28 == 0xE100000000000000) : (v32 = 0), v32 || (OUTLINED_FUNCTION_5_15(), (OUTLINED_FUNCTION_11_4() & 1) != 0)))))
  {

    return 1;
  }

  v34 = v26 == 0x65736C6166 && v28 == 0xE500000000000000;
  if (v34 || (OUTLINED_FUNCTION_5_15(), (sub_1B405DEC4() & 1) != 0) || (v26 == 102 ? (v35 = v28 == 0xE100000000000000) : (v35 = 0), v35 || (OUTLINED_FUNCTION_5_15(), (OUTLINED_FUNCTION_11_4() & 1) != 0) || (v26 == 28526 ? (v36 = v28 == 0xE200000000000000) : (v36 = 0), v36 || (OUTLINED_FUNCTION_5_15(), (sub_1B405DEC4() & 1) != 0) || (v26 == 110 ? (v37 = v28 == 0xE100000000000000) : (v37 = 0), v37))))
  {

    return 0;
  }

  OUTLINED_FUNCTION_5_15();
  v38 = OUTLINED_FUNCTION_11_4();

  v11 = 0;
  if ((v38 & 1) == 0)
  {
    *a2 = 1;
    v42[0] = 1;
    goto LABEL_28;
  }

  return v11;
}

BOOL sub_1B3FDA084@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  result = _sSb18PhotosUIFoundationE17readSettingsValueySbypAA0dE9ReadErrorOYKFZ(a1, &v7);
  if (v3)
  {
    *a2 = v7;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t RawRepresentable<>.writableSettingsValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  v7 = v6;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13 - v10;
  sub_1B405D5A4();
  (*(a4 + 24))(AssociatedTypeWitness, a4);
  return (*(v7 + 8))(v11, AssociatedTypeWitness);
}

uint64_t _sSY18PhotosUIFoundationAA15SettingsCodableRzAaB8RawValueSYRpzrlE04readcF0yxypAA0cF9ReadErrorOYKFZ@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X5>, uint64_t a6@<X8>)
{
  v38 = a5;
  v34 = a6;
  v11 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_12();
  v35 = v12;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - v15;
  v36 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_12();
  v37 = v18;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v33 - v25;
  result = (*(a4 + 32))(a1, &v40, AssociatedTypeWitness, a4);
  if (v6)
  {
    *v38 = v40;
  }

  else
  {
    v28 = v35;
    (*(v37 + 16))(v23, v26, AssociatedTypeWitness);
    sub_1B405D5B4();
    if (__swift_getEnumTagSinglePayload(v16, 1, a2) == 1)
    {
      (*(v28 + 8))(v16, v11);
      *v38 = 2;
      v39 = 2;
      sub_1B3FB975C();
      swift_willThrowTypedImpl();
      v29 = OUTLINED_FUNCTION_9_7();
      return v30(v29);
    }

    else
    {
      v31 = OUTLINED_FUNCTION_9_7();
      v32(v31);
      return (*(*(a2 - 8) + 32))(v34, v16, a2);
    }
  }

  return result;
}

unint64_t sub_1B3FDA498()
{
  result = qword_1EB87C880;
  if (!qword_1EB87C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C880);
  }

  return result;
}

unint64_t sub_1B3FDA4EC(uint64_t a1)
{
  *(a1 + 8) = sub_1B3FDA51C();
  result = sub_1B3FDA570();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B3FDA51C()
{
  result = qword_1EB87C888;
  if (!qword_1EB87C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C888);
  }

  return result;
}

unint64_t sub_1B3FDA570()
{
  result = qword_1EB87C890;
  if (!qword_1EB87C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB87C890);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SettingsValueReadError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ObservingUpdater.__allocating_init(target:updatePolicy:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  ObservingUpdater.init(target:updatePolicy:)(a1, a2);
  return v4;
}

void *ObservingUpdater.init(target:updatePolicy:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v40 = a2;
  v42 = a1;
  v5 = v2 + 2;
  v4 = *v2;
  v6 = *(v4 + 88);
  OUTLINED_FUNCTION_0_0();
  v41 = v7;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - v10;
  sub_1B405DAC4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33 - v14;
  v34 = *(v4 + 96);
  v16 = *(v34 + 8);
  OUTLINED_FUNCTION_23();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v17, v18);
  v37 = &v33 - v19;
  v38 = v16;
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_23();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v39 = v21;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v33 - v24;
  v26 = *v40;
  v35 = v40[1];
  v36 = v26;
  v40 = v5;
  swift_unknownObjectWeakInit();
  v27 = sub_1B405D644();
  if (sub_1B405D684())
  {
    v28 = sub_1B3FDB53C(v27, v6, *(v34 + 16));
  }

  else
  {

    v28 = MEMORY[0x1E69E7CD0];
  }

  v29 = v35;
  v3[3] = v36;
  v3[4] = v29;
  v3[5] = v28;
  swift_unknownObjectWeakAssign();
  sub_1B405DBD4();
  sub_1B405D4E4();
  swift_getAssociatedConformanceWitness();
  v30 = (v41 + 32);
  for (i = (v41 + 8); ; (*i)(v11, v6))
  {
    sub_1B405DAD4();
    if (__swift_getEnumTagSinglePayload(v15, 1, v6) == 1)
    {
      break;
    }

    (*v30)(v11, v15, v6);
    sub_1B3FDB190(v11);
  }

  (*(v39 + 8))(v25, AssociatedTypeWitness);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t ObservingUpdater.__allocating_init(target:needsUpdateHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return ObservingUpdater.__allocating_init(target:updatePolicy:)(a1, v4);
}

uint64_t sub_1B3FDAB54()
{
  v1 = *v0;
  v24[2] = v0 + 5;
  v2 = *(v1 + 88);
  OUTLINED_FUNCTION_0_0();
  v26 = v3;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v24 - v6;
  OUTLINED_FUNCTION_23();
  sub_1B405DAC4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v24 - v10;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12, v13);
  v24[1] = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0();
  v25 = v15;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v24 - v18;
  v27 = v0;
  v28 = sub_1B3FDB4A0();
  swift_beginAccess();
  OUTLINED_FUNCTION_23();
  sub_1B405D834();
  sub_1B405D824();
  swift_endAccess();
  sub_1B405DBD4();
  sub_1B405D4E4();
  v20 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v21 = (v26 + 32);
  for (i = (v26 + 8); ; (*i)(v7, v2))
  {
    sub_1B405DAD4();
    if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
    {
      break;
    }

    (*v21)(v7, v11, v2);
    if (sub_1B405D814())
    {
      sub_1B3FDB190(v7);
    }
  }

  (*(v25 + 8))(v19, v20);
}

uint64_t sub_1B3FDAEBC(uint64_t a1)
{
  v17 = *v1;
  v18 = a1;
  v2 = *(v17 + 88);
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  sub_1B3FDB4A0();
  v13 = sub_1B405D804();

  (*(v4 + 16))(v9, v18, v2);
  swift_beginAccess();
  OUTLINED_FUNCTION_23();
  sub_1B405D834();
  sub_1B405D7E4();
  (*(v4 + 8))(v12, v2);
  result = swift_endAccess();
  if (v13)
  {
    v15 = v1[4];
    v19 = v1[3];
    v20 = v15;
    sub_1B3F7F018(v19);
    type metadata accessor for ObservingUpdater.UpdatePolicy();
    sub_1B3FDB0B8(v1);
    return sub_1B3F7BAA8(v19);
  }

  return result;
}

void sub_1B3FDB0B8(uint64_t a1)
{
  if (*v1)
  {
    (*v1)(a1);
  }

  else
  {
    v3[4] = sub_1B3FDBAFC;
    v3[5] = a1;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 1107296256;
    v3[2] = sub_1B3F934F0;
    v3[3] = &block_descriptor_10;
    v2 = _Block_copy(v3);

    px_perform_on_main_runloop(1, v2);
    _Block_release(v2);
  }
}

uint64_t sub_1B3FDB190(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = MEMORY[0x1EEE9AC00](result, v6);
    v8[1] = *(v4 + 80);
    v9 = *(v4 + 96);
    v10 = a1;
    v11 = v7;
    MEMORY[0x1EEE9AC00](v7, v8);
    sub_1B405D024();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_1B3FDB2A0(uint64_t *a1, uint64_t a2))()
{
  v3 = *a1;
  v4 = *(*a1 + 88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v12 - v6;
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v7, a2, v4);
  v9 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = *(v3 + 80);
  *(v10 + 3) = v4;
  *(v10 + 4) = *(v3 + 96);
  *(v10 + 5) = v8;
  (*(v5 + 32))(&v10[v9], v7, v4);
  return sub_1B3FDBB54;
}

uint64_t sub_1B3FDB438(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B3FDAEBC(a2);
  }

  return result;
}

uint64_t ObservingUpdater.deinit()
{
  MEMORY[0x1B8C71CD0](v0 + 16);
  sub_1B3F7BAA8(*(v0 + 24));

  return v0;
}

uint64_t ObservingUpdater.__deallocating_deinit()
{
  ObservingUpdater.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B3FDB53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v45 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v35 - v14;
  if (sub_1B405D684())
  {
    sub_1B405DBA4();
    v16 = sub_1B405DB94();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v38 = sub_1B405D684();
  if (v38)
  {
    v35 = v7;
    v36 = v5;
    v17 = 0;
    v43 = (v6 + 16);
    v44 = v16 + 56;
    v40 = (v6 + 32);
    v42 = v6 + 8;
    v37 = v15;
    while (1)
    {
      v18 = sub_1B405D664();
      sub_1B405D614();
      if (v18)
      {
        v19 = *(v6 + 16);
        result = v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      }

      else
      {
        v41 = v17;
        result = sub_1B405DC04();
        if (v35 != 8)
        {
          goto LABEL_23;
        }

        v46 = result;
        v19 = *v43;
        (*v43)(v15, &v46, a2);
        result = swift_unknownObjectRelease();
        v17 = v41;
      }

      v41 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v39 = *v40;
      v39(v45, v15, a2);
      v21 = sub_1B405D364();
      v22 = ~(-1 << *(v16 + 32));
      while (1)
      {
        v23 = v21 & v22;
        v24 = (v21 & v22) >> 6;
        v25 = *(v44 + 8 * v24);
        v26 = 1 << (v21 & v22);
        if ((v26 & v25) == 0)
        {
          break;
        }

        v27 = v16;
        v19(v9, (*(v16 + 48) + *(v6 + 72) * v23), a2);
        v28 = a3;
        v29 = sub_1B405D404();
        v30 = *(v6 + 8);
        v30(v9, a2);
        if (v29)
        {
          v30(v45, a2);
          a3 = v28;
          v15 = v37;
          v16 = v27;
          v17 = v41;
          goto LABEL_16;
        }

        v21 = v23 + 1;
        a3 = v28;
        v16 = v27;
      }

      v31 = v45;
      *(v44 + 8 * v24) = v26 | v25;
      result = (v39)(*(v16 + 48) + *(v6 + 72) * v23, v31, a2);
      v32 = *(v16 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      v15 = v37;
      v17 = v41;
      if (v33)
      {
        goto LABEL_22;
      }

      *(v16 + 16) = v34;
LABEL_16:
      v5 = v36;
      if (v17 == v38)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v16;
  }

  return result;
}

uint64_t sub_1B3FDB9F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18PhotosUIFoundation16ObservingUpdaterC12UpdatePolicyOyxq__G(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B3FDBA44(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B3FDBA94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B3FDBB00()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v0[6];
  return (*(v2 + 32))(&v4, v1);
}

uint64_t sub_1B3FDBBA8(uint64_t a1)
{
  OUTLINED_FUNCTION_6_12();
  v4 = *(v3 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_6_12();
  sub_1B405DAC4();
  OUTLINED_FUNCTION_8();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1B3FDBC70(uint64_t a1)
{
  v2 = sub_1B405DAC4();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1);
  return sub_1B3FDBD40(v5);
}

uint64_t sub_1B3FDBD40(char *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_1B405DAC4();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v19 - v10;
  sub_1B3F790F0(v19 - v10);
  v12 = *(v3 + 88);
  v19[1] = v12;
  swift_getWitnessTable();
  LOBYTE(v3) = sub_1B3FDC724();
  v13 = *(v7 + 8);
  v14 = v13(v11, v5);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v14, v15);
    v19[-2] = v4;
    v19[-1] = v12;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath, v17);
    v19[-2] = v1;
    v19[-1] = a1;
    sub_1B3FDC654();
  }

  else
  {
    (*(v7 + 16))(v11, a1, v5);
    sub_1B3FDBBA8(v11);
  }

  return v13(a1, v5);
}

uint64_t sub_1B3FDBF5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B405DAC4();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a2);
  return sub_1B3FDBBA8(v6);
}

uint64_t PhotosInfoUpdater.__allocating_init(infoKind:requestHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  PhotosInfoUpdater.init(infoKind:requestHandler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1B3FDC0A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosInfoUpdater.Request();
  result = sub_1B405DBF4();
  *a1 = result;
  return result;
}

id sub_1B3FDC144()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosInfoUpdater.UpdaterDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B3FDC1B4()
{
}

uint64_t sub_1B3FDC218(uint64_t a1, uint64_t a2)
{
  v39 = *(v2 + 80);
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](a1, v39);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B405DAC4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v8);
  v11 = &v34 - v10;
  v12 = *(v6 - 8);
  v14 = MEMORY[0x1EEE9AC00](v9, v13);
  v40 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v34 - v17;
  v19 = *(*a1 + 96);
  swift_beginAccess();
  v20 = *(v12 + 16);
  v20(v18, a1 + v19, v6);
  v21 = *(*a2 + 96);
  swift_beginAccess();
  v37 = TupleTypeMetadata2;
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = v39;
  v20(v11, v18, v6);
  v20(&v11[v22], a2 + v21, v6);
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) != 1)
  {
    v26 = v18;
    v27 = v12;
    v20(v40, v11, v6);
    if (__swift_getEnumTagSinglePayload(&v11[v22], 1, v23) != 1)
    {
      v28 = v38;
      v29 = v35;
      (*(v38 + 32))(v35, &v11[v22], v23);
      v30 = v40;
      v25 = sub_1B405D404();
      v31 = *(v28 + 8);
      v31(v29, v23);
      v32 = *(v27 + 8);
      v32(v26, v6);
      v31(v30, v23);
      v32(v11, v6);
      return v25 & 1;
    }

    (*(v12 + 8))(v26, v6);
    (*(v38 + 8))(v40, v23);
    goto LABEL_6;
  }

  v24 = *(v12 + 8);
  v24(v18, v6);
  if (__swift_getEnumTagSinglePayload(&v11[v22], 1, v23) != 1)
  {
LABEL_6:
    (*(v36 + 8))(v11, v37);
    v25 = 0;
    return v25 & 1;
  }

  v24(v11, v6);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1B3FDC654()
{
  OUTLINED_FUNCTION_0_45();
  swift_getWitnessTable();
  return sub_1B405D034();
}

uint64_t PhotosInfoUpdater.deinit()
{
  v1 = *(*v0 + 96);
  sub_1B405DAC4();
  OUTLINED_FUNCTION_8();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_7_7();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_7_7();
  v6 = *(v5 + 120);
  sub_1B405D064();
  OUTLINED_FUNCTION_8();
  (*(v7 + 8))(v0 + v6);
  return v0;
}
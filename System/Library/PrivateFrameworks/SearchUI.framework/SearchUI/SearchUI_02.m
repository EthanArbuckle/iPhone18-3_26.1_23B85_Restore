uint64_t sub_1DA24D9D0(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_1DA25F244();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = *(*(v3 + 64) + 40);
  *v6 = v4;
  v6[1] = v5;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1DA24DBB4(const void *a1)
{
  *(v1 + 160) = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1DA24DC1C, 0, 0);
}

uint64_t sub_1DA24DC1C()
{
  sub_1DA25EF94();
  v1 = sub_1DA25EF84();
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DA24DD4C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DA24D9D0;
  v0[13] = &block_descriptor_36;
  v0[14] = v2;
  [v1 providerNameWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DA24DD4C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA24DE2C, 0, 0);
}

uint64_t sub_1DA24DE2C()
{
  v1 = *(v0 + 152);

  if (v1)
  {
    v2 = sub_1DA25F234();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 160);
  (v3)[2](v3, v2);

  _Block_release(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DA24DED8(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AB8);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA24DF74, 0, 0);
}

uint64_t sub_1DA24DF74()
{
  sub_1DA25EF94();
  v0[4] = sub_1DA25EF84();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DA24E024;
  v2 = v0[3];

  return MEMORY[0x1EEDF1D98](v2);
}

uint64_t sub_1DA24E024()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1DA24E138, 0, 0);
}

uint64_t sub_1DA24E138()
{
  v1 = v0[3];
  v2 = sub_1DA25EF64();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[2];
  if (v4 == 1)
  {
    sub_1DA24E288(v1);
    v6 = sub_1DA25DE84();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    sub_1DA25EF54();
    (*(v3 + 8))(v1, v2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DA24E288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA24E45C(const void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AB8);
  v1[2] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33E0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v1[5] = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1DA24E548, 0, 0);
}

uint64_t sub_1DA24E548()
{
  sub_1DA25EF94();
  v0[6] = sub_1DA25EF84();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1DA24E5F8;
  v2 = v0[2];

  return MEMORY[0x1EEDF1D98](v2);
}

uint64_t sub_1DA24E5F8()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1DA24E70C, 0, 0);
}

uint64_t sub_1DA24E70C()
{
  v1 = v0[2];
  v2 = sub_1DA25EF64();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[4];
  if (v4 == 1)
  {
    sub_1DA24E288(v1);
    v6 = sub_1DA25DE84();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    sub_1DA25EF54();
    (*(v3 + 8))(v1, v2);
  }

  v7 = v0[3];
  sub_1DA24EF0C(v0[4], v7);
  v8 = sub_1DA25DE84();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = v0[3];
    v11 = sub_1DA25DE64();
    (*(v9 + 8))(v12, v8);
  }

  v13 = v0[5];
  (v13)[2](v13, v11);
  _Block_release(v13);

  v14 = v0[1];

  return v14();
}

id SearchUICalculateUIUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchUICalculateUIUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUICalculateUIUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchUICalculateUIUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUICalculateUIUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of static SearchUICalculateUIUtilities.currencyConversionProviderImage()()
{
  v4 = (*(v0 + 80) + **(v0 + 80));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DA24384C;

  return v4();
}

uint64_t dispatch thunk of static SearchUICalculateUIUtilities.currencyConversionProviderName()()
{
  v4 = (*(v0 + 88) + **(v0 + 88));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DA24EC48;

  return v4();
}

uint64_t sub_1DA24EC48(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of static SearchUICalculateUIUtilities.currencyConversionProviderURL()(uint64_t a1)
{
  v6 = (*(v1 + 96) + **(v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DA22C568;

  return v6(a1);
}

uint64_t sub_1DA24EE60()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA231210;

  return sub_1DA24E45C(v2);
}

uint64_t sub_1DA24EF0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA24EF7C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA231210;

  return sub_1DA24DBB4(v2);
}

uint64_t sub_1DA24F028()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA231210;

  return sub_1DA24D43C(v2);
}

uint64_t sub_1DA24F0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA231210;

  return MEMORY[0x1EEDCCC68](a1, a2, a3, a4, 0);
}

uint64_t sub_1DA24F340(int a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v4[2] = _Block_copy(aBlock);
  v7 = sub_1DA25F244();
  v9 = v8;
  v4[3] = v8;
  v10 = swift_task_alloc();
  v4[4] = v10;
  *v10 = v4;
  v10[1] = sub_1DA24F418;

  return MEMORY[0x1EEDCCC68](v7, v9, a2, a3, 0);
}

uint64_t sub_1DA24F418()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = sub_1DA25DE04();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1DA24F5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA22C568;

  return MEMORY[0x1EEDCCC60](a1, a2, a3, a4);
}

uint64_t sub_1DA24F7E4(int a1, int a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  v4 = sub_1DA25F244();
  v6 = v5;
  v3[3] = v5;
  v7 = sub_1DA25F244();
  v9 = v8;
  v3[4] = v8;
  v10 = swift_task_alloc();
  v3[5] = v10;
  *v10 = v3;
  v10[1] = sub_1DA24F8C8;

  return MEMORY[0x1EEDCCC60](v4, v6, v7, v9);
}

uint64_t sub_1DA24F8C8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = sub_1DA25DE04();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(*(v3 + 16), 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

id SearchUIMarketplaceKitUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchUIMarketplaceKitUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUIMarketplaceKitUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchUIMarketplaceKitUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUIMarketplaceKitUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of static SearchUIMarketplaceKitUtilities.requestProductPage(distributorID:itemID:versionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(v4 + 80) + **(v4 + 80));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DA231210;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of static SearchUIMarketplaceKitUtilities.requestSearchPage(distributorID:searchString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(v4 + 88) + **(v4 + 88));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DA22C568;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1DA24FDE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DA22C568;

  return sub_1DA24F7E4(v2, v3, v4);
}

uint64_t sub_1DA24FEA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DA231210;

  return sub_1DA24F340(v2, v3, v4, v5);
}

uint64_t sub_1DA24FF6C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  sub_1DA254990(a2, a1);
  sub_1DA25F424();
  sub_1DA25F434();
  if (v15[4] == v15[0])
  {
    v8 = a3(0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }

  else
  {
    v10 = sub_1DA25F444();
    v12 = v11;
    v13 = a3(0);
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v15, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }
}

uint64_t sub_1DA25011C()
{
  v1 = [*(v0 + 16) mediaIdentifier];
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = v1;
    v4 = sub_1DA25F244();
    v6 = v5;

    *(v0 + 24) = v6;
    v7 = [v2 mediaType];
    v8 = swift_task_alloc();
    *(v0 + 32) = v8;
    *v8 = v0;
    v8[1] = sub_1DA250240;

    return sub_1DA251F0C(v4, v6, v7);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1DA250240()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DA2504D4(void *a1, void *aBlock)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = _Block_copy(aBlock);
  v4 = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DA250550, 0, 0);
}

uint64_t sub_1DA250550()
{
  v1 = [*(v0 + 16) mediaIdentifier];
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    v4 = sub_1DA25F244();
    v6 = v5;

    *(v0 + 32) = v6;
    v7 = [v2 mediaType];
    v8 = swift_task_alloc();
    *(v0 + 40) = v8;
    *v8 = v0;
    v8[1] = sub_1DA250690;

    return sub_1DA251F0C(v4, v6, v7);
  }

  else
  {

    (*(*(v0 + 24) + 16))();
    _Block_release(*(v0 + 24));
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1DA250690()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1DA25083C;
  }

  else
  {
    v2 = sub_1DA2507C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA2507C0()
{
  (*(*(v0 + 24) + 16))();
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA25083C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);

  v3 = sub_1DA25DE04();
  (*(v2 + 16))(v2, v3);

  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DA2508DC()
{
  v1 = sub_1DA25EE44();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1DA25EE74();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA2509F4, 0, 0);
}

uint64_t sub_1DA2509F4()
{
  (*(v0[3] + 104))(v0[4], *MEMORY[0x1E69B2950], v0[2]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1DA250AB4;
  v2 = v0[7];
  v3 = v0[4];

  return MEMORY[0x1EEE1F778](v2, v3);
}

uint64_t sub_1DA250AB4()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1DA250CCC;
  }

  else
  {
    v5 = sub_1DA250C24;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DA250C24()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = sub_1DA25EE64();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_1DA250CCC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1DA250EAC(const void *a1)
{
  v3 = sub_1DA25EE44();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v1[4] = swift_task_alloc();
  v4 = sub_1DA25EE74();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1DA250FD4, 0, 0);
}

uint64_t sub_1DA250FD4()
{
  (*(v0[3] + 104))(v0[4], *MEMORY[0x1E69B2950], v0[2]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1DA251094;
  v2 = v0[7];
  v3 = v0[4];

  return MEMORY[0x1EEE1F778](v2, v3);
}

uint64_t sub_1DA251094()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1DA2512C8;
  }

  else
  {
    v5 = sub_1DA251204;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DA251204()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = sub_1DA25EE64();
  (*(v4 + 8))(v2, v3);
  (*(v1 + 16))(v1, v5 & 1, 0);
  _Block_release(*(v0 + 64));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DA2512C8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = sub_1DA25DE04();

  (*(v2 + 16))(v2, 0, v3);
  _Block_release(*(v0 + 64));

  v4 = *(v0 + 8);

  return v4();
}

id SearchUIMusicUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchUIMusicUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUIMusicUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchUIMusicUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUIMusicUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA251458(uint64_t a1, int a2)
{
  *(v2 + 288) = a2;
  *(v2 + 136) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B78);
  *(v2 + 144) = swift_task_alloc();
  v3 = sub_1DA25EF44();
  *(v2 + 152) = v3;
  *(v2 + 160) = *(v3 - 8);
  *(v2 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AE8);
  *(v2 + 176) = swift_task_alloc();
  v4 = sub_1DA25EF04();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B08);
  *(v2 + 208) = swift_task_alloc();
  v5 = sub_1DA25EEF4();
  *(v2 + 216) = v5;
  *(v2 + 224) = *(v5 - 8);
  *(v2 + 232) = swift_task_alloc();
  sub_1DA25F394();
  *(v2 + 240) = sub_1DA25F384();
  v7 = sub_1DA25F364();
  *(v2 + 248) = v7;
  *(v2 + 256) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1DA2516B0, v7, v6);
}

uint64_t sub_1DA2516B0()
{
  v1 = *(v0 + 288);
  sub_1DA25EDF4();
  *(v0 + 264) = sub_1DA25EDE4();
  switch(v1)
  {
    case 3:
      v19 = *(v0 + 160);
      sub_1DA2549E4(*(v0 + 136), v0 + 16);
      v20 = (v19 + 56);
      if (*(v0 + 40))
      {
        v21 = *(v0 + 152);
        v22 = *(v0 + 160);
        v23 = *(v0 + 144);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B80);
        v24 = swift_dynamicCast();
        (*v20)(v23, v24 ^ 1u, 1, v21);
        if ((*(v22 + 48))(v23, 1, v21) != 1)
        {
          v9 = *(v0 + 160);
          v8 = *(v0 + 168);
          v10 = *(v0 + 152);
          (*(v9 + 32))(v8, *(v0 + 144), v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B88);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_1DA275380;
          v12 = MEMORY[0x1E6977138];
          goto LABEL_13;
        }
      }

      else
      {
        v32 = *(v0 + 144);
        v31 = *(v0 + 152);
        sub_1DA179568(v0 + 16, &qword_1ECBA3B38);
        (*v20)(v32, 1, 1, v31);
      }

      v29 = *(v0 + 144);
      v30 = &unk_1ECBA3B78;
      break;
    case 2:
      v13 = *(v0 + 192);
      sub_1DA2549E4(*(v0 + 136), v0 + 56);
      v14 = (v13 + 56);
      if (*(v0 + 80))
      {
        v15 = *(v0 + 184);
        v16 = *(v0 + 192);
        v17 = *(v0 + 176);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B80);
        v18 = swift_dynamicCast();
        (*v14)(v17, v18 ^ 1u, 1, v15);
        if ((*(v16 + 48))(v17, 1, v15) != 1)
        {
          v9 = *(v0 + 192);
          v8 = *(v0 + 200);
          v10 = *(v0 + 184);
          (*(v9 + 32))(v8, *(v0 + 176), v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B88);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_1DA275380;
          v12 = MEMORY[0x1E6976CB8];
          goto LABEL_13;
        }
      }

      else
      {
        v28 = *(v0 + 176);
        v27 = *(v0 + 184);
        sub_1DA179568(v0 + 56, &qword_1ECBA3B38);
        (*v14)(v28, 1, 1, v27);
      }

      v29 = *(v0 + 176);
      v30 = &unk_1ECBA3AE8;
      break;
    case 1:
      v2 = *(v0 + 224);
      sub_1DA2549E4(*(v0 + 136), v0 + 96);
      v3 = (v2 + 56);
      if (*(v0 + 120))
      {
        v4 = *(v0 + 216);
        v5 = *(v0 + 224);
        v6 = *(v0 + 208);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B80);
        v7 = swift_dynamicCast();
        (*v3)(v6, v7 ^ 1u, 1, v4);
        if ((*(v5 + 48))(v6, 1, v4) != 1)
        {
          v9 = *(v0 + 224);
          v8 = *(v0 + 232);
          v10 = *(v0 + 216);
          (*(v9 + 32))(v8, *(v0 + 208), v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B88);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_1DA275380;
          v12 = MEMORY[0x1E6976B80];
LABEL_13:
          *(v11 + 56) = v10;
          *(v11 + 64) = v12;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 32));
          (*(v9 + 16))(boxed_opaque_existential_1, v8, v10);
          sub_1DA25EEE4();
          sub_1DA25EED4();
          sub_1DA25EDD4();
          (*(v9 + 8))(v8, v10);
          goto LABEL_22;
        }
      }

      else
      {
        v34 = *(v0 + 208);
        v33 = *(v0 + 216);
        sub_1DA179568(v0 + 96, &qword_1ECBA3B38);
        (*v3)(v34, 1, 1, v33);
      }

      v29 = *(v0 + 208);
      v30 = &unk_1ECBA3B08;
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B30);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1DA275380;
      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 32) = 0xD000000000000014;
      *(v26 + 40) = 0x80000001DA27A420;
      sub_1DA25F724();

      goto LABEL_22;
  }

  sub_1DA179568(v29, v30);
LABEL_22:
  v37 = (*MEMORY[0x1E6975548] + MEMORY[0x1E6975548]);
  v35 = swift_task_alloc();
  *(v0 + 272) = v35;
  *v35 = v0;
  v35[1] = sub_1DA251C48;

  return v37();
}

uint64_t sub_1DA251C48()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_1DA251E48;
  }

  else
  {
    v5 = sub_1DA251D84;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1DA251D84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA251E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA251F0C(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 + 696) = a3;
  *(v3 + 224) = a1;
  *(v3 + 232) = a2;
  v4 = sub_1DA25EF44();
  *(v3 + 240) = v4;
  *(v3 + 248) = *(v4 - 8);
  *(v3 + 256) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AC0);
  *(v3 + 264) = v5;
  *(v3 + 272) = *(v5 - 8);
  *(v3 + 280) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AC8);
  *(v3 + 288) = v6;
  *(v3 + 296) = *(v6 - 8);
  *(v3 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AD0);
  *(v3 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AD8);
  *(v3 + 320) = swift_task_alloc();
  v7 = sub_1DA25EF14();
  *(v3 + 328) = v7;
  *(v3 + 336) = *(v7 - 8);
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AE0);
  *(v3 + 360) = v8;
  *(v3 + 368) = *(v8 - 8);
  *(v3 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AE8);
  *(v3 + 384) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AF0);
  *(v3 + 392) = v9;
  *(v3 + 400) = *(v9 - 8);
  *(v3 + 408) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AF8);
  *(v3 + 416) = v10;
  *(v3 + 424) = *(v10 - 8);
  *(v3 + 432) = swift_task_alloc();
  v11 = sub_1DA25EF04();
  *(v3 + 440) = v11;
  *(v3 + 448) = *(v11 - 8);
  *(v3 + 456) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B00);
  *(v3 + 464) = v12;
  *(v3 + 472) = *(v12 - 8);
  *(v3 + 480) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B08);
  *(v3 + 488) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B10);
  *(v3 + 496) = v13;
  *(v3 + 504) = *(v13 - 8);
  *(v3 + 512) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B18);
  *(v3 + 520) = v14;
  *(v3 + 528) = *(v14 - 8);
  *(v3 + 536) = swift_task_alloc();
  v15 = sub_1DA25EEF4();
  *(v3 + 544) = v15;
  *(v3 + 552) = *(v15 - 8);
  *(v3 + 560) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B20);
  *(v3 + 568) = v16;
  *(v3 + 576) = *(v16 - 8);
  *(v3 + 584) = swift_task_alloc();
  v17 = sub_1DA25EE14();
  *(v3 + 592) = v17;
  *(v3 + 600) = *(v17 - 8);
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA2525E0, 0, 0);
}

uint64_t sub_1DA2525E0()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  sub_1DA25EE24();
  v5 = *MEMORY[0x1E69B2930];
  v6 = *(v3 + 104);
  v6(v2, v5, v4);
  sub_1DA254948(&qword_1ECBA3B28, MEMORY[0x1E69B2938]);
  v7 = sub_1DA25F1B4();
  v8 = *(v3 + 8);
  v8(v2, v4);
  v8(v1, v4);
  if ((v7 & 1) == 0)
  {
    v6(*(v0 + 616), v5, *(v0 + 592));
    sub_1DA25EE34();
  }

  v9 = *(v0 + 696);

  v10 = sub_1DA25EEC4();
  v12 = v11;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  switch(v9)
  {
    case 3:
      swift_getKeyPath();
      *(v0 + 176) = v10;
      *(v0 + 184) = v12;
      *(v0 + 656) = sub_1DA25EF34();
      sub_1DA254948(&qword_1ECBA3B40, MEMORY[0x1E6976F28]);
      sub_1DA25EE94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33C0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DA273A50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B48);
      *(v17 + 32) = sub_1DA25EE04();
      sub_1DA25EE84();
      v18 = swift_task_alloc();
      *(v0 + 664) = v18;
      *v18 = v0;
      v18[1] = sub_1DA25347C;
      v14 = *(v0 + 360);
      v15 = *(v0 + 304);
      goto LABEL_9;
    case 2:
      swift_getKeyPath();
      *(v0 + 192) = v10;
      *(v0 + 200) = v12;
      sub_1DA254948(&qword_1ECBA3B50, MEMORY[0x1E6976D28]);
      sub_1DA25EE94();
      v16 = swift_task_alloc();
      *(v0 + 640) = v16;
      *v16 = v0;
      v16[1] = sub_1DA252FF4;
      v14 = *(v0 + 464);
      v15 = *(v0 + 432);
      goto LABEL_9;
    case 1:
      swift_getKeyPath();
      *(v0 + 208) = v10;
      *(v0 + 216) = v12;
      sub_1DA254948(&qword_1ECBA3B58, MEMORY[0x1E6976BE8]);
      sub_1DA25EE94();
      v13 = swift_task_alloc();
      *(v0 + 624) = v13;
      *v13 = v0;
      v13[1] = sub_1DA252B50;
      v14 = *(v0 + 568);
      v15 = *(v0 + 536);
LABEL_9:

      return MEMORY[0x1EEDCEDA0](v15, v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DA275380;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 32) = 0xD000000000000014;
  *(v19 + 40) = 0x80000001DA27A420;
  sub_1DA25F724();

  v20 = swift_task_alloc();
  *(v0 + 680) = v20;
  *v20 = v0;
  v20[1] = sub_1DA253B14;
  v21 = *(v0 + 696);

  return sub_1DA251458(v0 + 16, v21);
}

uint64_t sub_1DA252B50()
{
  *(*v1 + 632) = v0;

  if (v0)
  {
    v2 = sub_1DA253F40;
  }

  else
  {
    v2 = sub_1DA252C64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA252C64()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v7 = *(v0 + 504);
  v6 = *(v0 + 512);
  v9 = *(v0 + 488);
  v8 = *(v0 + 496);
  sub_1DA25EEB4();
  (*(v4 + 8))(v3, v5);
  sub_1DA24FF6C(&qword_1ECBA3B10, &qword_1ECBA3B60, MEMORY[0x1E6976BE8], v9);
  (*(v7 + 8))(v6, v8);
  if ((*(v1 + 48))(v9, 1, v2) == 1)
  {
    v10 = *(v0 + 488);
    (*(*(v0 + 576) + 8))(*(v0 + 584), *(v0 + 568));
    sub_1DA179568(v0 + 16, &qword_1ECBA3B38);
    sub_1DA179568(v10, &qword_1ECBA3B08);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 584);
    v14 = *(v0 + 576);
    v15 = *(v0 + 568);
    v16 = *(v0 + 560);
    v17 = *(v0 + 544);
    v18 = *(*(v0 + 552) + 32);
    v18(v16, *(v0 + 488), v17);
    v19 = MEMORY[0x1E6976BB0];
    *(v0 + 160) = v17;
    *(v0 + 168) = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    v18(boxed_opaque_existential_1, v16, v17);
    (*(v14 + 8))(v13, v15);
    sub_1DA179568(v0 + 16, &qword_1ECBA3B38);
    v21 = *(v0 + 152);
    *(v0 + 16) = *(v0 + 136);
    *(v0 + 32) = v21;
    *(v0 + 48) = *(v0 + 168);
    v22 = swift_task_alloc();
    *(v0 + 680) = v22;
    *v22 = v0;
    v22[1] = sub_1DA253B14;
    v23 = *(v0 + 696);

    return sub_1DA251458(v0 + 16, v23);
  }
}

uint64_t sub_1DA252FF4()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_1DA2540F0;
  }

  else
  {
    v2 = sub_1DA253108;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA253108()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  v7 = *(v0 + 392);
  v8 = *(v0 + 400);
  v9 = *(v0 + 384);
  sub_1DA25EEB4();
  (*(v4 + 8))(v3, v5);
  sub_1DA24FF6C(&qword_1ECBA3AF0, &qword_1ECBA3B68, MEMORY[0x1E6976D28], v9);
  (*(v8 + 8))(v6, v7);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    v10 = *(v0 + 384);
    (*(*(v0 + 472) + 8))(*(v0 + 480), *(v0 + 464));
    sub_1DA179568(v0 + 16, &qword_1ECBA3B38);
    sub_1DA179568(v10, &qword_1ECBA3AE8);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v14 = *(v0 + 472);
    v13 = *(v0 + 480);
    v16 = *(v0 + 456);
    v15 = *(v0 + 464);
    v17 = *(v0 + 440);
    v18 = *(*(v0 + 448) + 32);
    v18(v16, *(v0 + 384), v17);
    v19 = MEMORY[0x1E6976CF0];
    *(v0 + 120) = v17;
    *(v0 + 128) = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v18(boxed_opaque_existential_1, v16, v17);
    (*(v14 + 8))(v13, v15);
    sub_1DA179568(v0 + 16, &qword_1ECBA3B38);
    v21 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v21;
    *(v0 + 48) = *(v0 + 128);
    v22 = swift_task_alloc();
    *(v0 + 680) = v22;
    *v22 = v0;
    v22[1] = sub_1DA253B14;
    v23 = *(v0 + 696);

    return sub_1DA251458(v0 + 16, v23);
  }
}

uint64_t sub_1DA25347C()
{
  *(*v1 + 672) = v0;

  if (v0)
  {
    v2 = sub_1DA25429C;
  }

  else
  {
    v2 = sub_1DA253590;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA253590()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v8 = *(v0 + 264);
  sub_1DA25EEB4();
  (*(v5 + 8))(v2, v4);
  sub_1DA24FF6C(&qword_1ECBA3AC0, &qword_1ECBA3B70, MEMORY[0x1E6976F28], v3);
  (*(v7 + 8))(v6, v8);
  v9 = *(v1 - 8);
  if ((*(v9 + 48))(v3, 1, v1) == 1)
  {
    v10 = *(v0 + 328);
    v11 = *(v0 + 336);
    v13 = *(v0 + 312);
    v12 = *(v0 + 320);
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    sub_1DA179568(v0 + 16, &qword_1ECBA3B38);
    sub_1DA179568(v13, &qword_1ECBA3AD0);
    (*(v11 + 56))(v12, 1, 1, v10);
LABEL_5:
    sub_1DA179568(*(v0 + 320), &qword_1ECBA3AD8);
LABEL_6:

    v19 = *(v0 + 8);

    return v19();
  }

  v14 = *(v0 + 656);
  v15 = *(v0 + 328);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  sub_1DA25EF24();
  (*(v9 + 8))(v17, v14);
  if ((*(v16 + 48))(v18, 1, v15) == 1)
  {
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    sub_1DA179568(v0 + 16, &qword_1ECBA3B38);
    goto LABEL_5;
  }

  v21 = *(v0 + 344);
  v22 = *(v0 + 352);
  v23 = *(v0 + 328);
  v24 = *(v0 + 336);
  (*(v24 + 32))(v22, *(v0 + 320), v23);
  (*(v24 + 16))(v21, v22, v23);
  if ((*(v24 + 88))(v21, v23) != *MEMORY[0x1E69B2968])
  {
    v40 = *(v0 + 368);
    v39 = *(v0 + 376);
    v41 = *(v0 + 360);
    v42 = *(v0 + 344);
    v43 = *(v0 + 328);
    v44 = *(*(v0 + 336) + 8);
    v44(*(v0 + 352), v43);
    (*(v40 + 8))(v39, v41);
    sub_1DA179568(v0 + 16, &qword_1ECBA3B38);
    v44(v42, v43);
    goto LABEL_6;
  }

  v25 = *(v0 + 368);
  v26 = *(v0 + 352);
  v45 = *(v0 + 360);
  v46 = *(v0 + 376);
  v28 = *(v0 + 336);
  v27 = *(v0 + 344);
  v29 = *(v0 + 328);
  v30 = *(v0 + 248);
  v31 = *(v0 + 256);
  v32 = *(v0 + 240);
  (*(v28 + 96))(v27, v29);
  v33 = *(v30 + 32);
  v33(v31, v27, v32);
  v34 = MEMORY[0x1E6977150];
  *(v0 + 80) = v32;
  *(v0 + 88) = v34;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  v33(boxed_opaque_existential_1, v31, v32);
  (*(v28 + 8))(v26, v29);
  (*(v25 + 8))(v46, v45);
  sub_1DA179568(v0 + 16, &qword_1ECBA3B38);
  v36 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v36;
  *(v0 + 48) = *(v0 + 88);
  v37 = swift_task_alloc();
  *(v0 + 680) = v37;
  *v37 = v0;
  v37[1] = sub_1DA253B14;
  v38 = *(v0 + 696);

  return sub_1DA251458(v0 + 16, v38);
}

uint64_t sub_1DA253B14()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_1DA253DAC;
  }

  else
  {
    v2 = sub_1DA253C28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA253C28()
{
  sub_1DA179568(v0 + 16, &qword_1ECBA3B38);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA253DAC()
{
  sub_1DA179568(v0 + 16, &qword_1ECBA3B38);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA253F40()
{
  (*(v0[72] + 8))(v0[73], v0[71]);
  sub_1DA179568((v0 + 2), &qword_1ECBA3B38);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DA2540F0()
{
  (*(v0[59] + 8))(v0[60], v0[58]);
  sub_1DA179568((v0 + 2), &qword_1ECBA3B38);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DA25429C()
{
  (*(v0[46] + 8))(v0[47], v0[45]);
  sub_1DA179568((v0 + 2), &qword_1ECBA3B38);

  v1 = v0[1];

  return v1();
}

uint64_t dispatch thunk of static SearchUIMusicUtilities.playMusicItem(withMediaMetadata:)(uint64_t a1)
{
  v6 = (*(v1 + 80) + **(v1 + 80));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DA22C568;

  return v6(a1);
}

uint64_t dispatch thunk of static SearchUIMusicUtilities.canPlayAppleMusic()()
{
  v4 = (*(v0 + 112) + **(v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DA254694;

  return v4();
}

uint64_t sub_1DA254694(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1DA254790()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA231210;

  return sub_1DA250EAC(v2);
}

uint64_t sub_1DA25483C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DA22C568;

  return sub_1DA2504D4(v2, v3);
}

uint64_t keypath_getTm_0@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1DA254948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA254990(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1DA2549E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA254A9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA22C568;

  return sub_1DA255DC0(a1);
}

uint64_t sub_1DA254CC8(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1DA254D90;

  return sub_1DA255DC0(v4);
}

uint64_t sub_1DA254D90()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1DA25DE04();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1DA254F30()
{
  if (qword_1ECBA5738)
  {
    sub_1DA25DB94();
    sub_1DA25E154();
    qword_1ECBA5738 = 0;
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA25515C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1DA2551C4, 0, 0);
}

uint64_t sub_1DA2551C4()
{
  if (qword_1ECBA5738)
  {
    sub_1DA25DB94();
    sub_1DA25E154();
    qword_1ECBA5738 = 0;
  }

  (*(*(v0 + 16) + 16))();
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

id SearchUITTSUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchUITTSUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUITTSUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchUITTSUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUITTSUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DA2553A0(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1DA2554F0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1DA25F564();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1DA25F5C4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1DA2554F0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1DA255588(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1DA2555FC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1DA255588(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1DA255720(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DA2555FC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1DA25F5C4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1DA255720(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DA25F2E4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA747B70](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1DA25579C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_1DA25F2B4();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1DA255864(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1DA2558E8(void *a1)
{
  v1 = a1;
  result = [a1 audioBuffer];
  if (!result)
  {
    return result;
  }

  v3 = result;
  sub_1DA25DEA4();

  [v1 sampleRate];
  v5 = v4;
  v6 = [v1 formatID];
  if (!v6)
  {
    v15 = 0;
LABEL_50:
    v31 = [v1 formatFlags];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 unsignedIntValue];
    }

    else
    {
      v33 = 0;
    }

    v34 = [v1 bytesPerPacket];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 unsignedIntValue];
    }

    else
    {
      v36 = 0;
    }

    v37 = [v1 framesPerPacket];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 unsignedIntValue];
    }

    else
    {
      v39 = 0;
    }

    v40 = [v1 bytesPerFrame];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 unsignedIntValue];
    }

    else
    {
      v42 = 0;
    }

    v43 = [v1 channelsPerFrame];
    if (v43)
    {
      v44 = v43;
      v45 = [v43 unsignedIntValue];
    }

    else
    {
      v45 = 0;
    }

    v46 = [v1 bitsPerChannel];
    if (v46)
    {
      v47 = v46;
      v48 = [v46 unsignedIntValue];
    }

    else
    {
      v48 = 0;
    }

    v49 = [v1 reserved];
    if (v49)
    {
      v50 = v49;
      v51 = [v49 unsignedIntValue];
    }

    else
    {
      v51 = 0;
    }

    sub_1DA25E1B4();
    v53 = v5;
    v54 = v15;
    v55 = v33;
    v56 = v36;
    v57 = v39;
    v58 = v42;
    v59 = v45;
    v60 = v48;
    v61 = v51;
    return sub_1DA25E194();
  }

  v7 = v6;
  v8 = sub_1DA25F244();
  v10 = v9;

  v11 = sub_1DA25F294();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1DA255864(v11, 0);

    v14 = sub_1DA25579C(&v53, v13 + 4, v12, v8, v10);

    if (v14 != v12)
    {
      goto LABEL_79;
    }
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v52 = v1;
  v16 = v13[2];
  if (!v16)
  {
    v15 = 0;
LABEL_49:

    v1 = v52;
    goto LABEL_50;
  }

  v15 = 0;
  v17 = 0;
  v18 = 8 * v16 - 8;
  v19 = v13 + 5;
  while (v16 != v17)
  {
    if ((v16 - 0x2000000000000001) >> 61 != 7)
    {
      goto LABEL_74;
    }

    if (v17 >= v13[2])
    {
      goto LABEL_75;
    }

    v20 = *(v19 - 1);
    v21 = *v19;
    v22 = v20 == 2573 && v21 == 0xE200000000000000;
    if (v22 || (result = sub_1DA25F6B4(), (result & 1) != 0))
    {
      if (v18 > 0x20)
      {
        goto LABEL_39;
      }

      result = 10;
    }

    else
    {
      if ((v21 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v21) & 0xF;
      }

      else
      {
        v23 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (!v23)
      {
        goto LABEL_77;
      }

      if ((v21 & 0x1000000000000000) != 0)
      {
        v28 = sub_1DA25F274();
      }

      else
      {
        if ((v21 & 0x2000000000000000) != 0)
        {
          v25 = v20;
        }

        else
        {
          if ((v20 & 0x1000000000000000) != 0)
          {
            v24 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v24 = sub_1DA25F5C4();
          }

          v25 = *v24;
        }

        v26 = v25;
        v27 = (__clz(~v25) - 24) << 16;
        if (v26 < 0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 65541;
        }
      }

      if (v28 >> 14 != 4 * v23)
      {
        goto LABEL_40;
      }

      result = sub_1DA2553A0(v20, v21);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_80;
      }

      if ((result & 0xFFFFFF80) != 0)
      {
LABEL_40:
        result = 0;
        v29 = 0;
        if (v18 > 0x20)
        {
          goto LABEL_43;
        }
      }

      else
      {
        result = sub_1DA2553A0(v20, v21);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_81;
        }

        if ((result & 0xFFFFFF00) != 0)
        {
          goto LABEL_78;
        }

        if (v18 > 0x20)
        {
LABEL_39:
          v29 = 0;
          goto LABEL_43;
        }
      }
    }

    v29 = result << v18;
    if (v18 >= 0x20)
    {
      v29 = 0;
    }

LABEL_43:
    v30 = __CFADD__(v15, v29);
    v15 += v29;
    if (v30)
    {
      goto LABEL_76;
    }

    ++v17;
    v18 -= 8;
    v19 += 2;
    if (v16 == v17)
    {
      goto LABEL_49;
    }
  }

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
  return result;
}

uint64_t sub_1DA255DC0(uint64_t a1)
{
  *(v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DA255E50, 0, 0);
}

uint64_t sub_1DA255E50()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 56) = 0;
  v2 = (v0 + 56);
  v3 = [v1 setCategory:*MEMORY[0x1E6958068] mode:*MEMORY[0x1E6958130] options:19 error:v0 + 56];
  v4 = *(v0 + 56);
  if (!v3)
  {
    v9 = v4;
    sub_1DA25DE14();

LABEL_6:
    swift_willThrow();
LABEL_7:

    v11 = *(v0 + 8);
    goto LABEL_8;
  }

  *v2 = 0;
  v5 = v4;
  v6 = [v1 setActive:1 withOptions:0 error:v0 + 56];
  v7 = *v2;
  if (!v6)
  {
    v10 = v7;
    sub_1DA25DE14();

    goto LABEL_6;
  }

  v8 = v7;
  [v1 opaqueSessionID];
  sub_1DA25E1A4();
  sub_1DA25E184();
  swift_allocObject();
  qword_1ECBA5738 = sub_1DA25E144();
  sub_1DA25DB94();

  sub_1DA25E164();
  sub_1DA25E174();
  sub_1DA25E154();
  *v2 = 0;
  v13 = [v1 setActive:0 withOptions:0 error:v0 + 56];
  v14 = *v2;
  if (!v13)
  {
    v16 = v14;
    sub_1DA25DE14();

    swift_willThrow();

    goto LABEL_7;
  }

  qword_1ECBA5738 = 0;
  v15 = v14;

  v11 = *(v0 + 8);
LABEL_8:

  return v11();
}

uint64_t dispatch thunk of static SearchUITTSUtilities.play(audioData:)(uint64_t a1)
{
  v6 = (*(v1 + 88) + **(v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DA22C568;

  return v6(a1);
}

uint64_t dispatch thunk of static SearchUITTSUtilities.stop()()
{
  v4 = (*(v0 + 96) + **(v0 + 96));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DA231210;

  return v4();
}

uint64_t sub_1DA256370()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA231210;

  return sub_1DA25515C(v2);
}

uint64_t sub_1DA25641C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DA22C568;

  return sub_1DA254CC8(v2, v3);
}

uint64_t sub_1DA2564D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA2593A8;

  return sub_1DA2572A4();
}

uint64_t sub_1DA2566DC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DA256784;

  return sub_1DA2572A4();
}

uint64_t sub_1DA256784(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_1DA25DE04();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1DA2568FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA2569A4;

  return sub_1DA2578A8(a1);
}

uint64_t sub_1DA2569A4(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1DA256C30(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1DA256CF8;

  return sub_1DA2578A8(v4);
}

uint64_t sub_1DA256CF8(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_1DA25DE04();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1DA256E88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA22C568;

  return (sub_1DA2582FC)(a1, a2);
}

uint64_t sub_1DA2570C8(void *a1, char a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1DA254D90;

  return sub_1DA2582FC(v6, a2);
}

id SearchUITVUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchUITVUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUITVUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchUITVUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUITVUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA2572A4()
{
  v1 = sub_1DA25E024();
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v2 = sub_1DA25E114();
  v0[10] = v2;
  v0[11] = *(v2 - 8);
  v0[12] = swift_task_alloc();
  v3 = sub_1DA25E014();
  v0[13] = v3;
  v0[14] = *(v3 - 8);
  v0[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA257424, 0, 0);
}

uint64_t sub_1DA257424()
{
  sub_1DA25E094();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1DA2574C8;
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE43730](v2);
}

uint64_t sub_1DA2574C8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 136) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1DA257818;
  }

  else
  {
    v5 = sub_1DA257638;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DA257638()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  sub_1DA25E004();
  (*(v3 + 104))(v1, *MEMORY[0x1E69D5858], v2);
  sub_1DA259358(&qword_1ECBA3BC0, MEMORY[0x1E69D5868]);
  sub_1DA25F2F4();
  sub_1DA25F2F4();
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1DA25F6B4();
  }

  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[13];
  v7 = v0[9];
  v8 = v0[6];
  v9 = *(v0[7] + 8);
  v9(v0[8], v8);
  v9(v7, v8);
  (*(v4 + 8))(v5, v6);

  v10 = v0[1];

  return v10(v12 & 1);
}

uint64_t sub_1DA257818()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1DA2578A8(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_1DA25E0B4();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = sub_1DA25E0D4();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = sub_1DA25E074();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  v5 = sub_1DA25E114();
  v1[19] = v5;
  v1[20] = *(v5 - 8);
  v1[21] = swift_task_alloc();
  v6 = sub_1DA25E104();
  v1[22] = v6;
  v1[23] = *(v6 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA257AF0, 0, 0);
}

uint64_t sub_1DA257AF0()
{
  sub_1DA25E094();
  v0[6] = MEMORY[0x1E69E7CC0];
  sub_1DA259358(&qword_1ECBA3BA0, MEMORY[0x1E69D58A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3BA8);
  sub_1DA2592F4();
  sub_1DA25F4F4();
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_1DA257C34;
  v2 = v0[24];
  v3 = v0[18];

  return MEMORY[0x1EEE43758](v2, v3);
}

uint64_t sub_1DA257C34()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 136);
  v7 = *(*v1 + 128);
  *(*v1 + 208) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_1DA258244;
  }

  else
  {
    v8 = sub_1DA257E08;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DA257E08()
{
  v1 = v0[13];
  v2 = v0[9];
  result = sub_1DA25E0F4();
  v4 = result;
  v5 = 0;
  v38 = result + 56;
  v6 = -1;
  v7 = -1 << *(result + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(result + 56);
  v37 = (63 - v7) >> 6;
  v41 = *MEMORY[0x1E69D58B8];
  v39 = (v2 + 8);
  v40 = (v2 + 104);
  v9 = v1;
  v46 = result;
  v47 = (v1 + 8);
  v42 = v1;
  while (v8)
  {
LABEL_9:
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[12];
    v14 = v0[7];
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v9 + 16))(v11, *(v4 + 48) + *(v9 + 72) * (v15 | (v5 << 6)), v13);
    (*(v9 + 32))(v12, v11, v13);
    v16 = sub_1DA25E0A4();
    v18 = v17;
    v19 = [v14 identifier];
    if (!v19)
    {

      goto LABEL_17;
    }

    v20 = v19;
    v21 = sub_1DA25F244();
    v23 = v22;

    if (v16 == v21 && v18 == v23)
    {

      goto LABEL_19;
    }

    v25 = sub_1DA25F6B4();

    if (v25)
    {
LABEL_19:
      v26 = v0[10];
      v27 = v0[8];
      sub_1DA25E0C4();
      (*v40)(v26, v41, v27);
      sub_1DA259358(&qword_1ECBA3BB8, MEMORY[0x1E69D58C8]);
      sub_1DA25F2F4();
      sub_1DA25F2F4();
      if (v0[2] == v0[4] && v0[3] == v0[5])
      {
        v45 = 1;
      }

      else
      {
        v45 = sub_1DA25F6B4();
      }

      v28 = v0[11];
      v43 = v0[12];
      v44 = v0[14];
      v30 = v0[7];
      v29 = v0[8];
      v31 = *v39;
      (*v39)(v0[10], v29);
      v31(v28, v29);

      v32 = [v30 type];
      result = (*v47)(v44, v43);
      v4 = v46;
      v9 = v42;
      if ((v45 ^ (v32 != 1)))
      {
        v48 = 1;
LABEL_26:
        v33 = v0[23];
        v34 = v0[24];
        v35 = v0[22];

        (*(v33 + 8))(v34, v35);

        v36 = v0[1];

        return v36(v48);
      }
    }

    else
    {
LABEL_17:
      result = (*v47)(v0[14], v0[12]);
    }
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v37)
    {
      v48 = 0;
      goto LABEL_26;
    }

    v8 = *(v38 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA258244()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1DA2582FC(uint64_t a1, char a2)
{
  *(v2 + 160) = a2;
  *(v2 + 16) = a1;
  v3 = sub_1DA25E114();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  v4 = sub_1DA25E104();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v5 = sub_1DA25E0E4();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA258490, 0, 0);
}

uint64_t sub_1DA258490()
{
  v1 = [*(v0 + 16) identifier];
  v2 = *(v0 + 104);
  if (v1)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = *(v0 + 160);
    v6 = *(v0 + 16);
    v7 = v1;
    v8 = sub_1DA25F244();
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33D8);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DA275380;
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    v12 = [v6 type];
    *v2 = v11;
    v13 = MEMORY[0x1E69D58D8];
    if (v12 != 1)
    {
      v13 = MEMORY[0x1E69D58E0];
    }

    (*(v4 + 104))(v2, *v13, v3);
    v14 = *(v0 + 104);
    v15 = *(v0 + 88);
    if (v5 == 1)
    {
      sub_1DA25E094();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B98);
      v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v17 = swift_allocObject();
      *(v0 + 112) = v17;
      *(v17 + 16) = xmmword_1DA275380;
      (*(v4 + 16))(v17 + v16, v14, v15);
      v18 = swift_task_alloc();
      *(v0 + 120) = v18;
      *v18 = v0;
      v18[1] = sub_1DA2587EC;
      v19 = *(v0 + 80);

      return MEMORY[0x1EEE43750](v19, v17);
    }

    else
    {
      sub_1DA25E094();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3B98);
      v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v22 = swift_allocObject();
      *(v0 + 136) = v22;
      *(v22 + 16) = xmmword_1DA275380;
      (*(v4 + 16))(v22 + v21, v14, v15);
      v23 = swift_task_alloc();
      *(v0 + 144) = v23;
      *v23 = v0;
      v23[1] = sub_1DA258A40;
      v24 = *(v0 + 72);

      return MEMORY[0x1EEE43768](v24, v22);
    }
  }

  else
  {

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1DA2587EC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[6], v2[3]);

    v3 = sub_1DA258BE8;
  }

  else
  {
    v4 = v2[10];
    v5 = v2[7];
    v6 = v2[8];
    v7 = v2[6];
    v10 = v2 + 3;
    v8 = v2[3];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v6 + 8))(v4, v5);
    v3 = sub_1DA258994;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA258994()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DA258A40()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_1DA258CA0;
  }

  else
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];
    v8 = v2[4];
    v7 = v2[5];
    v9 = v2[3];

    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    v3 = sub_1DA2593A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA258BE8()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DA258CA0()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t dispatch thunk of static SearchUITVUtilities.fetchSportsFavoritesEnabledStatus()()
{
  v4 = (*(v0 + 80) + **(v0 + 80));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DA2593A4;

  return v4();
}

uint64_t dispatch thunk of static SearchUITVUtilities.fetchSportsItemIsFavorited(sportsItem:)(uint64_t a1)
{
  v6 = (*(v1 + 88) + **(v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DA254694;

  return v6(a1);
}

uint64_t dispatch thunk of static SearchUITVUtilities.updateSportsItemFavoriteStatus(sportsItem:shouldBeFavorite:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 96) + **(v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DA22C568;

  return v8(a1, a2);
}

uint64_t sub_1DA2590D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DA231210;

  return sub_1DA2570C8(v2, v3, v4);
}

uint64_t sub_1DA259194()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DA22C568;

  return sub_1DA256C30(v2, v3);
}

uint64_t sub_1DA259248()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA231210;

  return sub_1DA2566DC(v2);
}

unint64_t sub_1DA2592F4()
{
  result = qword_1ECBA3BB0;
  if (!qword_1ECBA3BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3BB0);
  }

  return result;
}

uint64_t sub_1DA259358(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA2593AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA22C568;

  return (sub_1DA259CC0)(a1, a2);
}

uint64_t sub_1DA2595E4(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v3 = sub_1DA25F244();
  v5 = v4;
  v2[3] = v4;
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_1DA24F418;

  return sub_1DA259CC0(v3, v5);
}

id sub_1DA2596B4()
{
  result = qword_1ECBA5740;
  if (qword_1ECBA5740)
  {
    return [qword_1ECBA5740 play];
  }

  return result;
}

id sub_1DA2596EC()
{
  result = qword_1ECBA5740;
  if (qword_1ECBA5740)
  {
    return [qword_1ECBA5740 pause];
  }

  return result;
}

id SearchUIVoicemailUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchUIVoicemailUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUIVoicemailUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchUIVoicemailUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUIVoicemailUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA259804(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1DA231210;

  return v6();
}

uint64_t sub_1DA2598EC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1DA22C568;

  return v7();
}

uint64_t sub_1DA2599D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1DA25A820(a3, v23 - v10);
  v12 = sub_1DA25F3C4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DA179568(v11, &qword_1ECBA33B0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1DA25F3B4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1DA25F364();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1DA25F264() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;
    sub_1DA25DB94();
    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1DA179568(a3, &qword_1ECBA33B0);

    return v21;
  }

LABEL_8:
  sub_1DA179568(a3, &qword_1ECBA33B0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1DA259CC0(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1DA25DE84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3BC8);
  v2[8] = swift_task_alloc();
  v4 = sub_1DA25DF04();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA259E40, 0, 0);
}

uint64_t sub_1DA259E40()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_1DA25DEE4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1DA179568(v0[8], &qword_1ECBA3BC8);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    (*(v7 + 32))(v6, v0[8], v8);
    sub_1DA25E244();
    v0[12] = sub_1DA25E234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBA3BD0);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    v0[13] = v10;
    *(v10 + 16) = xmmword_1DA275380;
    (*(v7 + 16))(v10 + v9, v6, v8);
    v11 = swift_task_alloc();
    v0[14] = v11;
    *v11 = v0;
    v11[1] = sub_1DA25A078;

    return MEMORY[0x1EEE03BF0](v10);
  }
}

uint64_t sub_1DA25A078(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_1DA25A52C;
  }

  else
  {
    v4 = sub_1DA25A1FC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DA25A1FC()
{
  v1 = v0[15];
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:
    (*(v0[10] + 8))(v0[11], v0[9]);

    goto LABEL_13;
  }

  if (!sub_1DA25F634())
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1DA747E20](0, v0[15]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v2 = *(v0[15] + 32);
  }

  v3 = sub_1DA25E214();
  v4 = sub_1DA25E254();

  if (v4)
  {
    v5 = v0[10];
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[5];
    sub_1DA25DE74();
    v9 = objc_allocWithZone(MEMORY[0x1E6988098]);
    v10 = sub_1DA25DE64();
    v11 = [v9 initWithURL_];

    (*(v7 + 8))(v6, v8);
    v12 = [objc_opt_self() sharedInstance];
    v13 = *MEMORY[0x1E6958068];
    v0[2] = 0;
    LODWORD(v10) = [v12 setCategory:v13 error:v0 + 2];

    v14 = v0[2];
    v15 = (v5 + 8);
    v16 = v0[11];
    v17 = v0[9];
    if (!v10)
    {
      v20 = v14;
      sub_1DA25DE14();

      swift_willThrow();
      (*v15)(v16, v17);

      v21 = v0[1];
      goto LABEL_14;
    }

    v18 = v14;
    [v11 play];
    v19 = qword_1ECBA5740;
    qword_1ECBA5740 = v11;

    (*v15)(v16, v17);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
  }

LABEL_13:

  v21 = v0[1];
LABEL_14:

  return v21();
}

uint64_t sub_1DA25A52C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t dispatch thunk of static SearchUIVoicemailUtilities.playVoicemail(identifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 80) + **(v2 + 80));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DA22C568;

  return v8(a1, a2);
}

uint64_t sub_1DA25A76C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DA22C568;

  return sub_1DA2595E4(v2, v3);
}

uint64_t sub_1DA25A820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA25A890(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA231210;

  return sub_1DA2455F8(a1, v4);
}

uint64_t sub_1DA25A9A8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DA25E2B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1DA25E2A4();
}

void SearchUITapLog_cold_1(void *a1)
{
  if (SearchUIInitLogging_once != -1)
  {
    dispatch_once(&SearchUIInitLogging_once, &__block_literal_global_47);
  }

  *a1 = qword_1EDAE61C0;
}

void SearchUIPeekLog_cold_1(void *a1)
{
  if (SearchUIInitLogging_once != -1)
  {
    dispatch_once(&SearchUIInitLogging_once, &__block_literal_global_47);
  }

  *a1 = qword_1EDAE61C8;
}

void SearchUITelemetryLog_cold_1(void *a1)
{
  if (SearchUIInitLogging_once != -1)
  {
    dispatch_once(&SearchUIInitLogging_once, &__block_literal_global_47);
  }

  *a1 = qword_1EDAE61D0;
}

void SearchUIDataSourceLog_cold_1(void *a1)
{
  if (SearchUIInitLogging_once != -1)
  {
    dispatch_once(&SearchUIInitLogging_once, &__block_literal_global_47);
  }

  *a1 = qword_1EDAE61D8;
}

void SearchUIAppTopHitSectionLoaderLog_cold_1(void *a1)
{
  if (SearchUIInitLogging_once != -1)
  {
    dispatch_once(&SearchUIInitLogging_once, &__block_literal_global_47);
  }

  *a1 = qword_1EDAE61E0;
}

void SearchUIButtonItemLog_cold_1(void *a1)
{
  if (SearchUIInitLogging_once != -1)
  {
    dispatch_once(&SearchUIInitLogging_once, &__block_literal_global_47);
  }

  *a1 = qword_1EDAE61E8;
}

void SearchUIBiomeLog_cold_1(void *a1)
{
  if (SearchUIInitLogging_once != -1)
  {
    dispatch_once(&SearchUIInitLogging_once, &__block_literal_global_47);
  }

  *a1 = qword_1EDAE61F0;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

MKCoordinateRegion MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2D centerCoordinate, CLLocationDistance latitudinalMeters, CLLocationDistance longitudinalMeters)
{
  MEMORY[0x1EEDCCB60](centerCoordinate, *&centerCoordinate.longitude, latitudinalMeters, longitudinalMeters);
  result.span.longitudeDelta = v6;
  result.span.latitudeDelta = v5;
  result.center.longitude = v4;
  result.center.latitude = v3;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x1EEDCCB88](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}

MKMapRect MKMapRectInset(MKMapRect rect, double dx, double dy)
{
  MEMORY[0x1EEDCCBB0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}
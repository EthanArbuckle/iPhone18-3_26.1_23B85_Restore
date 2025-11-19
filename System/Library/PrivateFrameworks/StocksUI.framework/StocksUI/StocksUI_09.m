id SUCrawlViewControllerAndCollect(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = objc_opt_new();
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __SUCrawlViewControllerAndCollect_block_invoke;
  v15 = &unk_27844A3B8;
  v16 = v7;
  v17 = v5;
  v8 = v7;
  v9 = v5;
  SUCrawlViewController(v6, a2, &v12);

  v10 = [v8 copy];

  return v10;
}

void __SUCrawlViewControllerAndCollect_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

id SUFirstViewControllerPassing(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __SUFirstViewControllerPassing_block_invoke;
  v10[3] = &unk_27844A3E0;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  SUCrawlViewController(v5, a2, v10);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_22054D184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SUFirstViewControllerPassing_block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v8 = a2;
  v5 = (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = *(v6 + 40);
  }

  objc_storeStrong((v6 + 40), v7);
  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

BOOL SUViewControllerContainsViewControllerOfClass(void *a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SUViewControllerContainsViewControllerOfClass_block_invoke;
  v6[3] = &__block_descriptor_40_e26_B16__0__UIViewController_8lu32l8;
  v6[4] = a3;
  v3 = SUFirstViewControllerPassing(a1, a2, v6);
  v4 = v3 != 0;

  return v4;
}

id SUViewHierarchy(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __SUViewHierarchy_block_invoke_2;
  v9 = &unk_27844A448;
  v10 = v2;
  v11 = &__block_literal_global_16;
  v3 = v2;
  _SUCrawlView(v1, 2, &v6);

  v4 = [v3 copy];

  return v4;
}

id __SUViewHierarchy_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  for (i = objc_opt_new(); a3; --a3)
  {
    [i appendString:@"     "];
  }

  v6 = [v4 description];
  [i appendFormat:@"%@\n", v6];

  v7 = [i copy];

  return v7;
}

void __SUViewHierarchy_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 appendString:v2];
}

id SUViewControllerHierarchy(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __SUViewControllerHierarchy_block_invoke_2;
  v9 = &unk_27844A490;
  v10 = v2;
  v11 = &__block_literal_global_23;
  v3 = v2;
  _SUCrawlViewController(v1, 2, &v6);

  v4 = [v3 copy];

  return v4;
}

id __SUViewControllerHierarchy_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  for (i = objc_opt_new(); a3; --a3)
  {
    [i appendString:@"     "];
  }

  v6 = [v4 description];
  [i appendFormat:@"%@\n", v6];

  v7 = [i copy];

  return v7;
}

void __SUViewControllerHierarchy_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 appendString:v2];
}

void sub_22054D870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_22054D98C@<D0>(double a1@<X1>, double *a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a1;
  v58 = a4;
  v57 = a3;
  v56 = a5;
  v55 = a6;
  v54 = a7;
  v53 = a8;
  v9 = sub_22088ABEC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277D6D320];
  v16 = *(v10 + 104);
  v16(v14, v15, v9, v12);
  sub_22088ABDC();
  v50 = v18;
  v51 = v17;
  v48 = v20;
  v49 = v19;
  v21 = *(v10 + 8);
  v21(v14, v9);
  (v16)(v14, v15, v9);
  sub_22088ABDC();
  v46 = v23;
  v47 = v22;
  v45 = v24;
  v44 = v25;
  v21(v14, v9);
  [*(*&v52 + 48) displayScale];
  v52 = v26;
  (v16)(v14, v15, v9);
  sub_22088ABDC();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v21(v14, v9);
  (v16)(v14, v15, v9);
  sub_22088ABDC();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v21(v14, v9);
  *a2 = v51;
  *(a2 + 1) = v50;
  *(a2 + 2) = v49;
  *(a2 + 3) = v48;
  *(a2 + 4) = v47;
  *(a2 + 5) = v46;
  *(a2 + 6) = v45;
  *(a2 + 7) = v44;
  *(a2 + 8) = v57;
  *(a2 + 9) = v58;
  result = v52;
  a2[10] = v52;
  *(a2 + 11) = v28;
  *(a2 + 12) = v30;
  *(a2 + 13) = v32;
  *(a2 + 14) = v34;
  *(a2 + 15) = v36;
  *(a2 + 16) = v38;
  *(a2 + 17) = v40;
  *(a2 + 18) = v42;
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

uint64_t sub_22054DD64(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x223D89A40](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_22054DDB8(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x223D89A50](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_22054DE40(uint64_t a1, id *a2)
{
  result = sub_22089134C();
  *a2 = 0;
  return result;
}

uint64_t sub_22054DEB8(uint64_t a1, id *a2)
{
  v3 = sub_22089135C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22054DF38@<X0>(uint64_t *a1@<X8>)
{
  sub_22089136C();
  v2 = sub_22089132C();

  *a1 = v2;
  return result;
}

uint64_t sub_22054DF7C()
{
  v1 = *v0;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  return sub_220892A2C();
}

uint64_t sub_22054DFC4()
{
  v1 = *v0;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  return sub_220892A2C();
}

uint64_t sub_22054E018(uint64_t a1)
{
  v2 = sub_2204A60F4(&unk_27CF58F60, type metadata accessor for SKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22054E084(uint64_t a1)
{
  v2 = sub_2204A60F4(&unk_27CF58F60, type metadata accessor for SKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22054E0F0(void *a1, uint64_t a2)
{
  v4 = sub_2204A60F4(&unk_27CF58F60, type metadata accessor for SKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22054E1A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2204A60F4(&unk_27CF58F60, type metadata accessor for SKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22054E220()
{
  sub_2208929EC();
  sub_2208912AC();
  return sub_220892A2C();
}

uint64_t sub_22054E280()
{
  sub_2204A60F4(&qword_27CF56500, type metadata accessor for UIContentSizeCategory);
  sub_2204A60F4(&qword_27CF56508, type metadata accessor for UIContentSizeCategory);

  return sub_2208926FC();
}

uint64_t sub_22054E414()
{
  sub_2204A60F4(&qword_28127E6A8, type metadata accessor for Key);
  sub_2204A60F4(&qword_27CF56730, type metadata accessor for Key);

  return sub_2208926FC();
}

uint64_t sub_22054E4D0()
{
  sub_2204A60F4(&qword_27CF56748, type metadata accessor for Identifier);
  sub_2204A60F4(&unk_27CF56750, type metadata accessor for Identifier);

  return sub_2208926FC();
}

uint64_t sub_22054E58C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22089132C();

  *a1 = v2;
  return result;
}

uint64_t sub_22054E5D4()
{
  sub_2204A60F4(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey);
  sub_2204A60F4(&qword_27CF56760, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_2208926FC();
}

uint64_t sub_22054E690()
{
  sub_2204A60F4(&qword_27CF56738, type metadata accessor for ActivityType);
  sub_2204A60F4(&qword_27CF56740, type metadata accessor for ActivityType);

  return sub_2208926FC();
}

_DWORD *sub_22054E74C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_22054E75C@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_22054E768()
{
  sub_2204A60F4(&qword_27CF56708, type metadata accessor for UILayoutPriority);
  sub_2204A60F4(&qword_27CF56710, type metadata accessor for UILayoutPriority);
  return sub_2208926FC();
}

uint64_t sub_22054E824(uint64_t a1)
{
  v2 = sub_2204A60F4(&qword_27CF566C0, type metadata accessor for SKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22054E890(uint64_t a1)
{
  v2 = sub_2204A60F4(&qword_27CF566C0, type metadata accessor for SKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22054E900(uint64_t a1)
{
  v2 = sub_2204A60F4(&unk_27CF58F60, type metadata accessor for SKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_22054E96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2204A60F4(&unk_27CF58F60, type metadata accessor for SKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22054E9F0()
{
  sub_2204A60F4(&qword_27CF56718, type metadata accessor for AccessibilityTechnology);
  sub_2204A60F4(&unk_27CF56720, type metadata accessor for AccessibilityTechnology);

  return sub_2208926FC();
}

uint64_t sub_22054EB0C()
{
  v0 = sub_22089136C();
  v1 = MEMORY[0x223D89710](v0);

  return v1;
}

uint64_t sub_22054EB48()
{
  sub_22089136C();
  sub_22089146C();
}

uint64_t sub_22054EB9C()
{
  sub_22089136C();
  sub_2208929EC();
  sub_22089146C();
  v0 = sub_220892A2C();

  return v0;
}

uint64_t sub_22054EC94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22054ECB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_22054EF2C()
{
  v0 = sub_22089136C();
  v2 = v1;
  if (v0 == sub_22089136C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2208928BC();
  }

  return v5 & 1;
}

unint64_t sub_22054F4A8()
{
  result = qword_27CF566E8;
  if (!qword_27CF566E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF566E8);
  }

  return result;
}

id sub_22054F6AC(uint64_t a1, double *a2, void *a3, char *a4)
{
  v5 = v4;
  v10 = sub_22088516C();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x28223BE20](v10, v12).n128_u64[0];
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a3 horizontalSizeClass];
  if (v16 < 2)
  {
    v18 = sel_setHidden_;
    v19 = a4;
    v17 = 1;

    return [v19 v18];
  }

  if (v16 != 2)
  {
    v18 = sel_setFrame_;
    v19 = a4;

    return [v19 v18];
  }

  [a4 setHidden_];
  [a4 setFrame_];
  v21 = *&a4[qword_28128CCA0];
  [v21 setFrame_];
  v22 = *&a4[qword_28128CC98];
  [v22 setFrame_];
  v23 = a2[6];
  v24 = a2[7];
  v25 = a2[8];
  v26 = a2[9];
  v44 = *&a4[qword_28128CC90];
  [v44 setFrame_];
  if ((sub_220812FFC() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (qword_281299530 != -1)
  {
    swift_once();
  }

  type metadata accessor for ForYouMastheadModel();
  sub_22054FCC8();
  sub_220886B3C();
  if (v45 == 1)
  {
    [v21 setHidden_];
    sub_22088A22C();
  }

  else
  {
LABEL_14:
    [v21 setHidden_];
  }

  v27 = *(a1 + 64);
  v28 = *(a1 + 72);

  v29 = sub_22067A850(v27, v28);

  [v22 setAttributedText_];

  [v44 frame];
  MaxX = CGRectGetMaxX(v48);
  [v21 frame];
  if (CGRectGetMinX(v49) + -10.0 >= MaxX || (sub_220812FFC() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (qword_281299530 != -1)
  {
    swift_once();
  }

  type metadata accessor for ForYouMastheadModel();
  sub_22054FCC8();
  sub_220886B3C();
  if (v46 != 1)
  {
LABEL_24:
    __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
    if (qword_28128FE98 != -1)
    {
      swift_once();
    }

    v31 = qword_28128FEA0;
    if (qword_28128FEA0)
    {
      goto LABEL_27;
    }

LABEL_28:
    v35 = 0xE000000000000000;
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  if (qword_27CF55C10 != -1)
  {
    swift_once();
  }

  v31 = qword_27CF5A228;
  if (!qword_27CF5A228)
  {
    goto LABEL_28;
  }

LABEL_27:
  sub_22088515C();
  v32 = sub_22088509C();
  (*(v11 + 8))(v15, v10);
  v33 = [v31 stringFromDate_];

  v31 = sub_22089136C();
  v35 = v34;

LABEL_29:
  v36 = sub_22067A4F4(v31, v35);

  [v44 setAttributedText_];

  v37 = [objc_opt_self() clearColor];
  [a4 setBackgroundColor_];

  v38 = __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v39 = *v38;
  v40 = *(*v38 + 40);
  v41 = *(*v38 + 48);
  __swift_project_boxed_opaque_existential_1((*v38 + 16), v40);
  (*(*(v41 + 16) + 536))(v40);
  sub_22088A24C();
  v42 = v39[5];
  v43 = v39[6];
  __swift_project_boxed_opaque_existential_1(v39 + 2, v42);
  (*(*(v43 + 16) + 544))(v42);
  return sub_22088A25C();
}

unint64_t sub_22054FCC8()
{
  result = qword_27CF56AF0;
  if (!qword_27CF56AF0)
  {
    type metadata accessor for ForYouMastheadModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56AF0);
  }

  return result;
}

uint64_t sub_22054FD20()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);

  __swift_destroy_boxed_opaque_existential_1(v0 + 360);
  __swift_destroy_boxed_opaque_existential_1(v0 + 400);
  __swift_destroy_boxed_opaque_existential_1(v0 + 440);
  return v0;
}

uint64_t sub_22054FDA0()
{
  sub_22054FD20();

  return swift_deallocClassInstance();
}

uint64_t sub_22054FF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *v4;
  v6 = sub_22088C96C();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_22088C32C();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  sub_220454EE0(0, &qword_28127E3B0, sub_22055CD20, MEMORY[0x277D84220]);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for StockFeedLayoutSectionDescriptor(0);
  v5[21] = swift_task_alloc();
  sub_22055CD20();
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = type metadata accessor for StockFeedSectionDescriptor();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  sub_22055CE14();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  sub_22055CF9C(0);
  v5[35] = v10;
  v5[36] = *(v10 - 8);
  v5[37] = swift_task_alloc();
  sub_22055CFBC();
  v5[38] = v11;
  v5[39] = swift_task_alloc();
  sub_22055D054();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  sub_22055D0EC(0);
  v5[42] = swift_task_alloc();
  sub_22055D120();
  v5[43] = v12;
  v5[44] = swift_task_alloc();
  sub_22055CE80(0);
  v5[45] = v13;
  v5[46] = *(v13 - 8);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v14 = sub_22088FCAC();
  v5[49] = v14;
  v5[50] = *(v14 - 8);
  v5[51] = swift_task_alloc();
  v15 = sub_220886D4C();
  v5[52] = v15;
  v5[53] = *(v15 - 8);
  v5[54] = swift_task_alloc();
  v16 = sub_220886D3C();
  v5[55] = v16;
  v5[56] = *(v16 - 8);
  v5[57] = swift_task_alloc();
  v17 = sub_220886D1C();
  v5[58] = v17;
  v5[59] = *(v17 - 8);
  v5[60] = swift_task_alloc();
  sub_22055D188(0);
  v5[61] = swift_task_alloc();
  v18 = sub_22088FF3C();
  v5[62] = v18;
  v5[63] = *(v18 - 8);
  v5[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2205505D4, 0, 0);
}

uint64_t sub_2205505D4()
{
  v140 = v0;
  v136 = v0 + 65;
  sub_22088E6FC();
  if (qword_2812948A0 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v115 = v0[64];
    v6 = v0[61];
    v128 = v0[63];
    v130 = v0[62];
    v7 = v0[59];
    v8 = v0[60];
    v9 = v0[58];
    v114 = v0[57];
    v124 = v0[56];
    v126 = v0[55];
    v10 = v0[53];
    v11 = v0[54];
    v113 = v0[52];
    v118 = v0[51];
    v120 = v0[50];
    v122 = v0[49];
    v116 = v0[11];
    v117 = v0[10];
    v12 = v0[9];
    (*(v128 + 104))(v115, *MEMORY[0x277D32E58], v130, v1, v2, v3, v4, v5, v106, v107, v108, v109);
    v13 = sub_22088FFFC();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    (*(v7 + 104))(v8, *MEMORY[0x277D6D180], v9);
    sub_22088C21C();
    sub_220891EDC();
    sub_22088C21C();
    sub_22088C25C();
    sub_22088C1EC();
    sub_22088C26C();
    v111 = v15;
    v112 = v14;
    sub_22088C24C();
    sub_22088C20C();
    v17 = v16;
    v19 = v18;
    sub_22088C23C();
    sub_22088C2AC();
    sub_22088C22C();
    v21 = v20;
    (*(v10 + 104))(v11, *MEMORY[0x277D6D198], v113);
    v108 = v17;
    v109 = v19;
    v106 = v112;
    v107 = v111;
    sub_220886D2C();
    sub_2205517B0(v116, v117, v118);
    v22 = sub_22088F5EC();

    (*(v120 + 8))(v118, v122);
    (*(v124 + 8))(v114, v126);
    (*(v7 + 8))(v8, v9);
    sub_2204C5EE4(v6, sub_22055D188);
    (*(v128 + 8))(v115, v130);
    *(v0 + 520) = 1;
    v23 = swift_task_alloc();
    v23[2] = v116;
    v23[3] = v12;
    v23[4] = v136;
    v23[5] = v22;
    v24 = sub_220556DE8(sub_22055D1BC, v23);
    v25 = v0[40];
    v26 = v0[41];
    v27 = v0[39];
    v136 = v0[38];
    v29 = v0[36];
    v28 = v0[37];
    v30 = v0[35];
    v31 = v0[8];

    v121 = v24;
    v137 = v24;
    (*(v29 + 16))(v26, v31, v30);
    sub_22055D274(v26, v25, sub_22055D054);
    (*(v29 + 32))(v28, v25, v30);
    sub_220444254(&qword_281296F28, 255, sub_22055CF9C);
    sub_2208915BC();
    v119 = *(v136 + 9);
    sub_22055D1DC();
    v33 = *(v32 + 36);
    sub_220444254(&qword_281296F20, 255, sub_22055CF9C);
    v34 = v33;
    sub_22089199C();
    v132 = 0;
    v134 = v27;
    if (*(v27 + v33) == v0[6])
    {
      break;
    }

    v35 = 0;
    v36 = v0[46];
    v129 = v0[30];
    v125 = (v36 + 32);
    v127 = (v36 + 16);
    v123 = (v36 + 8);
    while (1)
    {
      v136 = v35;
      v37 = v0[47];
      v131 = v0[45];
      v38 = v0[34];
      v39 = sub_2208919BC();
      (*v127)(v37);
      v39(v0 + 2, 0);
      sub_2208919AC();
      v40 = *(v129 + 48);
      *v38 = v35;
      (*v125)(&v38[v40], v37, v131);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v132 = v35 + 1;
      v41 = v34;
      v42 = v0[45];
      v43 = v0[33];
      v44 = v0[32];
      v46 = v0[28];
      v45 = v0[29];
      sub_22055DC0C(v0[34], v43, sub_22055CE14);
      sub_22055D274(v43, v44, sub_22055CE14);
      v47 = *(v129 + 48);
      sub_22088B2AC();
      (*v123)(v44 + v47, v42);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v43) = sub_2206124C0(v45, v46);
      sub_2204C5EE4(v46, type metadata accessor for StockFeedSectionDescriptor);
      sub_2204C5EE4(v45, type metadata accessor for StockFeedSectionDescriptor);
      if (v43)
      {
        v50 = v0[42];
        v51 = v0[39];
        v52 = v0[33];
        sub_2204C5EE4(v0[41], sub_22055D054);
        *(v134 + v119) = v132;
        sub_2204C5EE4(v51, sub_22055CFBC);
        sub_22055DC0C(v52, v50, sub_22055CE14);
        v49 = 0;
        goto LABEL_9;
      }

      sub_2204C5EE4(v0[33], sub_22055CE14);
      sub_22089199C();
      v34 = v41;
      v35 = (v35 + 1);
      if (*(v134 + v41) == v0[6])
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_44:
    swift_once();
  }

LABEL_7:
  v48 = v0[39];
  sub_2204C5EE4(v0[41], sub_22055D054);
  *(v134 + v119) = v132;
  sub_2204C5EE4(v48, sub_22055CFBC);
  v49 = 1;
LABEL_9:
  v53 = v0[42];
  v54 = v0[30];
  v55 = v0[31];
  (*(v55 + 56))(v53, v49, 1, v54);
  if ((*(v55 + 48))(v53, 1, v54) == 1)
  {
    sub_2204C5EE4(v0[42], sub_22055D0EC);
    goto LABEL_34;
  }

  v56 = v0[48];
  v57 = v0[45];
  v58 = v0[46];
  v60 = v0[43];
  v59 = v0[44];
  v61 = v0[42];
  v62 = v0[11];
  v63 = *(v0[30] + 48);
  v64 = *(v60 + 48);
  *v59 = *v61;
  v65 = *(v58 + 32);
  (v65)(v59 + v64, v61 + v63, v57);
  v66 = *v59;
  (v65)(v56, v59 + *(v60 + 48), v57);
  v67 = v62[59];
  __swift_project_boxed_opaque_existential_1(v62 + 55, v62[58]);
  if ((sub_22088618C() & 1) == 0)
  {
    (*(v0[46] + 8))(v0[48], v0[45]);
    goto LABEL_34;
  }

  v133 = v66;
  sub_22088C31C();
  v69 = v68;
  v70 = v121[2];
  v110 = v0;
  if (!v70)
  {
    v74 = MEMORY[0x277D84F90];
    v67 = *(MEMORY[0x277D84F90] + 16);
    if (!v67)
    {
      v21 = 0.0;
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  v71 = v0[23];
  v138 = MEMORY[0x277D84F90];
  sub_22070BC04(0, v70, 0);
  v72 = v121;
  v73 = v121[2];
  if (!v73)
  {
    goto LABEL_45;
  }

  v74 = v138;
  v59 = ((*(v71 + 80) + 32) & ~*(v71 + 80));
  v76 = *(v71 + 16);
  v75 = v71 + 16;
  v66 = v76;
  v77 = v0;
  v78 = v0[26];
  v79 = v0[22];
  v0 = *(v75 + 56);
  (v76)(v78, v59 + v121, v79);
  sub_220558488(v139);
  v136 = *(v75 - 8);
  (v136)(v77[26], v77[22]);
  v21 = v139[0];
  v65 = *(v138 + 16);
  v73 = *(v138 + 24);
  v67 = v65 + 1;
  if (v65 >= v73 >> 1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    *(v74 + 16) = v67;
    *(v74 + 8 * v65 + 32) = v21;
    if (v70 != 1)
    {
      v103 = v0;
      v0 = v66;
      v135 = v103;
      v59 = (v72 + v59 + v103);
      v65 = 1;
      while (1)
      {
        v73 = v72[2];
        v66 = v110;
        if (v65 >= v73)
        {
          break;
        }

        (v0)(v110[26], v59, v110[22]);
        sub_220558488(v139);
        (v136)(v110[26], v110[22]);
        v21 = v139[0];
        v138 = v74;
        v105 = *(v74 + 16);
        v104 = *(v74 + 24);
        v67 = v105 + 1;
        if (v105 >= v104 >> 1)
        {
          sub_22070BC04((v104 > 1), v105 + 1, 1);
          v72 = v121;
        }

        ++v65;
        *(v74 + 16) = v67;
        *(v74 + 8 * v105 + 32) = v21;
        v59 = (v135 + v59);
        if (v70 == v65)
        {
          goto LABEL_20;
        }
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_20:
    if (v67 <= 3)
    {
      v80 = 0;
      v21 = 0.0;
LABEL_25:
      v83 = v67 - v80;
      v84 = 8 * v80 + 32;
      do
      {
        v21 = v21 + *(v74 + v84);
        v84 += 8;
        --v83;
      }

      while (v83);
      goto LABEL_27;
    }

    v80 = v67 & 0xFFFFFFFFFFFFFFFCLL;
    v81 = (v74 + 48);
    v21 = 0.0;
    v82 = v67 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v21 = v21 + *(v81 - 2) + *(v81 - 1) + *v81 + v81[1];
      v81 += 4;
      v82 -= 4;
    }

    while (v82);
    if (v67 != v80)
    {
      goto LABEL_25;
    }

LABEL_27:
    v0 = v110;
    v85 = v110[24];
    v86 = v110[23];
    v136 = v110[22];
    v66 = v110[21];
    v87 = v110[11];
    v59 = v110[12];
    v88 = v110[9];

    sub_22088C22C();
    sub_220891A7C();
    v69 = v69 - v21 - v89 + -10.0;
    swift_storeEnumTagMultiPayload();
    v90 = swift_task_alloc();
    *(v90 + 16) = v87;
    *(v90 + 24) = v88;
    *(v90 + 32) = v69;
    *(v90 + 40) = 0;
    *(v90 + 48) = v59;
    sub_220571FC0(sub_22055D2DC, v90);

    v67 = type metadata accessor for StockFeedLayoutModel();
    sub_220444254(qword_281283F90, 255, type metadata accessor for StockFeedLayoutSectionDescriptor);
    sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
    sub_22088C33C();
    sub_220558A3C(v133, v85);
    v65 = *(v86 + 8);
    (v65)(v85, v136);
    v70 = v137;
    v73 = v137[2];
    if (v73 < v133)
    {
      goto LABEL_46;
    }

    if ((v133 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    v67 = v110;
    (*(v110[23] + 16))(v110[19], v110[25], v110[22]);
    v91 = v137[2];
    if (v91 >= v133)
    {
      break;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    sub_22070BC04((v73 > 1), v67, 1);
    v72 = v121;
    v74 = v138;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v91 >= v137[3] >> 1)
  {
    sub_2205879D0(isUniquelyReferenced_nonNull_native, v91 + 1, 1, v137);
  }

  v93 = v110[48];
  v94 = v110[46];
  v95 = v110[45];
  v96 = v110[25];
  v97 = v110[22];
  sub_2206629F4(v133, v133, 1, v110[19]);
  (v65)(v96, v97);
  (*(v94 + 8))(v93, v95);
LABEL_34:
  v99 = v0[14];
  v98 = v0[15];
  v100 = v0[13];
  (*(v0[17] + 16))(v0[18], v0[9], v0[16]);
  (*(v99 + 104))(v98, *MEMORY[0x277D6E080], v100);
  type metadata accessor for StockFeedLayoutModel();
  sub_220444254(&qword_281283F88, 255, type metadata accessor for StockFeedLayoutSectionDescriptor);
  sub_220444254(&qword_28128E7F0, 255, type metadata accessor for StockFeedLayoutModel);
  sub_22088B06C();
  sub_22088F5DC();

  v101 = v0[1];

  return v101();
}

uint64_t sub_2205517B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v41 = a2;
  v38 = a1;
  v3 = sub_22088FC9C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v39 = sub_22088FBBC();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088FBDC();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = sub_22088FC0C();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = sub_22088FC3C();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v15 = sub_22088FC5C();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v17 = MEMORY[0x277D83D88];
  sub_220454EE0(0, &qword_281296A28, MEMORY[0x277D326A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v38 - v20;
  sub_220454EE0(0, &unk_281296A30, MEMORY[0x277D32698], v17);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v38 - v24;
  v26 = sub_22088FC7C();
  v28 = MEMORY[0x28223BE20](v26, v27);
  v30 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v31 + 104);
  if (*(v38 + 352))
  {
    v32(v30, *MEMORY[0x277D326B8], v28);
    sub_22088FC4C();
    v33 = sub_22088FC1C();
    (*(*(v33 - 8) + 56))(v25, 1, 1, v33);
    v34 = sub_22088FC6C();
    (*(*(v34 - 8) + 56))(v21, 1, 1, v34);
  }

  else
  {
    v32(v30, *MEMORY[0x277D326B0], v28);
    v35 = sub_22088FC1C();
    (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
    v36 = sub_22088FC6C();
    (*(*(v36 - 8) + 56))(v21, 1, 1, v36);
    sub_22088FC4C();
  }

  sub_22088FBFC();
  sub_22088FBFC();
  (*(v5 + 104))(v8, *MEMORY[0x277D32680], v39);
  sub_22088FBCC();
  sub_22088FC8C();

  return sub_22088FBEC();
}

uint64_t sub_220551D14@<X0>(void (*a1)(char *, void (**)(char *), void (**)(void, void))@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v236 = a5;
  v223 = a4;
  v229 = a3;
  v233 = a2;
  v245 = a1;
  v231 = a6;
  v241 = type metadata accessor for StockFeedLayoutModel();
  MEMORY[0x28223BE20](v241, v6);
  v247 = v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_22088FD8C();
  v244 = *(v246 - 1);
  MEMORY[0x28223BE20](v246, v8);
  v249 = (v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22055D3C0();
  v242 = v10;
  v243 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v205 = v197 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v204 = v197 - v15;
  v235 = sub_22088F58C();
  v215 = *(v235 - 8);
  MEMORY[0x28223BE20](v235, v16);
  v221 = v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v218 = v197 - v20;
  v226 = sub_22088DA5C();
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226, v21);
  v227 = v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v224 = v197 - v25;
  v220 = sub_22088F39C();
  v217 = *(v220 - 8);
  MEMORY[0x28223BE20](v220, v26);
  v209 = v197 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204595F4(0);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v216 = v197 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v219 = v197 - v33;
  v239 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v239, v34);
  v206 = v197 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328();
  v240 = v36;
  v228 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v37);
  v230 = v197 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v237 = v197 - v41;
  sub_22055D48C();
  v208 = v42;
  MEMORY[0x28223BE20](v42, v43);
  v238 = v197 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CE80(0);
  v234 = v45;
  v222 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v46);
  v214 = v197 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v207 = v197 - v50;
  sub_22055D524();
  v213 = v51;
  v212 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v52);
  v210 = v197 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v55);
  v211 = v197 - v56;
  v232 = type metadata accessor for StockFeedLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v232, v57);
  v59 = v197 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v61);
  v63 = v197 - v62;
  MEMORY[0x28223BE20](v64, v65);
  v67 = v197 - v66;
  v68 = type metadata accessor for StockFeedMastheadViewLayoutAttributes();
  MEMORY[0x28223BE20](v68 - 8, v69);
  v71 = v197 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for StockFeedMastheadViewLayoutOptions();
  MEMORY[0x28223BE20](v72 - 8, v73);
  v75 = v197 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v76 - 8, v77);
  v79 = v197 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v80, v81);
  v83 = v197 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84, v85);
  v87 = v197 - v86;
  v88 = v248;
  result = sub_22089183C();
  if (v88)
  {
    return result;
  }

  v201 = v79;
  v198 = v75;
  v199 = v71;
  v200 = v63;
  v197[1] = v83;
  v202 = v59;
  v203 = v67;
  v90 = v235;
  v91 = v236;
  v248 = 0;
  v92 = v234;
  sub_22088B2AC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    v107 = v233;
    v109 = v246;
    v108 = v247;
    v110 = v249;
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v121 = swift_storeEnumTagMultiPayload();
        MEMORY[0x28223BE20](v121, v122);
        v153 = &v197[-4];
        v123 = v229;
        v197[-2] = v107;
        v197[-1] = v123;
        v155 = sub_22055D798;
      }

      else
      {
        v151 = swift_storeEnumTagMultiPayload();
        MEMORY[0x28223BE20](v151, v152);
        v153 = &v197[-4];
        v154 = v229;
        v197[-2] = v107;
        v197[-1] = v154;
        v155 = sub_22055D778;
      }

      sub_220571FC0(v155, v153);
      sub_220444254(qword_281283F90, 255, type metadata accessor for StockFeedLayoutSectionDescriptor);
      sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
      v106 = v231;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        swift_storeEnumTagMultiPayload();
        v135 = v225;
        v136 = v226;
        (*(v225 + 104))(v227, *MEMORY[0x277D6E9B0], v226);
        sub_22055D5F8();
        v250 = 0u;
        v251 = 0u;
        v252 = 0;
        v137 = v221;
        v138 = v248;
        sub_22088F5BC();
        v248 = v138;
        if (!v138)
        {
          sub_2204C5EE4(&v250, sub_22055D6E0);
          v172 = sub_22088F55C();
          (*(v215 + 8))(v137, v90);
          v173 = *(v172 + 16);
          if (v173)
          {
            *&v250 = MEMORY[0x277D84F90];
            sub_22070BBB4(0, v173, 0);
            v174 = v250;
            v245 = *(v244 + 16);
            v175 = (*(v244 + 80) + 32) & ~*(v244 + 80);
            v237 = v172;
            v176 = v172 + v175;
            v240 = *(v244 + 72);
            v244 += 16;
            v239 = (v244 - 8);
            v238 = (v243 + 32);
            v177 = v205;
            do
            {
              v178 = v245;
              v245(v110, v176, v109);
              v178(v108, v249, v109);
              v110 = v249;
              swift_storeEnumTagMultiPayload();
              sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
              sub_22088BC2C();
              (*v239)(v110, v109);
              *&v250 = v174;
              v180 = *(v174 + 16);
              v179 = *(v174 + 24);
              if (v180 >= v179 >> 1)
              {
                sub_22070BBB4(v179 > 1, v180 + 1, 1);
                v174 = v250;
              }

              *(v174 + 16) = v180 + 1;
              (*(v243 + 32))(v174 + ((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v180, v177, v242);
              v176 += v240;
              --v173;
              v109 = v246;
              v108 = v247;
            }

            while (v173);
          }

          sub_220444254(&qword_281283F88, 255, type metadata accessor for StockFeedLayoutSectionDescriptor);
          sub_220444254(&qword_28128E7F0, 255, type metadata accessor for StockFeedLayoutModel);
          v195 = v231;
          sub_22088C35C();
          sub_22055CD20();
          return (*(*(v196 - 8) + 56))(v195, 0, 1, v196);
        }

        sub_2204C5EE4(&v250, sub_22055D6E0);
        (*(v135 + 8))(v227, v136);
        v139 = type metadata accessor for StockFeedLayoutSectionDescriptor;
        v140 = &v234;
        return sub_2204C5EE4(*(v140 - 32), v139);
      }

      v111 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v111, v112);
      v113 = v229;
      v197[-2] = v107;
      v197[-1] = v113;
      sub_220571FC0(sub_22055D7B8, &v197[-4]);
      sub_220444254(qword_281283F90, 255, type metadata accessor for StockFeedLayoutSectionDescriptor);
      sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
      v106 = v231;
    }

    sub_22088C33C();
    goto LABEL_27;
  }

  v94 = v91;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      __swift_project_boxed_opaque_existential_1(v233 + 55, v233[58]);
      if (sub_22088618C())
      {
        v244 = v80;
        (*(v222 + 16))(v207, v245, v92);
        sub_220444254(&qword_281297DF0, 255, sub_22055CE80);
        v141 = v238;
        sub_2208915BC();
        v142 = *(v208 + 36);
        sub_220444254(&qword_281297DE8, 255, sub_22055CE80);
        sub_22089199C();
        if (*(v141 + v142) == v250)
        {
          v143 = MEMORY[0x277D84F90];
        }

        else
        {
          v249 = (v228 + 16);
          v246 = (v228 + 8);
          v247 = (v228 + 32);
          v143 = MEMORY[0x277D84F90];
          v181 = v206;
          do
          {
            v183 = sub_2208919BC();
            v184 = v237;
            v185 = v240;
            (*v249)(v237);
            v183(&v250, 0);
            sub_2208919AC();
            sub_22088AD8C();
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v182 = sub_22088685C();
              (*(*(v182 - 8) + 8))(v181, v182);
              (*v246)(v184, v185);
            }

            else
            {
              sub_2204C5EE4(v181, type metadata accessor for StockFeedModel);
              v186 = *v247;
              v187 = v230;
              (*v247)(v230, v184, v185);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v254 = v143;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_22070BC24(0, *(v143 + 16) + 1, 1);
                v187 = v230;
                v143 = v254;
              }

              v189 = v228;
              v191 = *(v143 + 16);
              v190 = *(v143 + 24);
              if (v191 >= v190 >> 1)
              {
                sub_22070BC24(v190 > 1, v191 + 1, 1);
                v187 = v230;
                v189 = v228;
                v143 = v254;
              }

              *(v143 + 16) = v191 + 1;
              v186(v143 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v191, v187);
            }

            v141 = v238;
            sub_22089199C();
          }

          while (*(v141 + v142) != v250);
        }

        sub_2204C5EE4(v141, sub_22055D48C);
        v144 = sub_220444254(&qword_281297FB8, 255, sub_22055D328);
        v145 = sub_220444254(&qword_281297FC0, 255, sub_22055D328);
        v146 = v211;
        MEMORY[0x223D80A20](v143, v240, v144, v145);
        swift_storeEnumTagMultiPayload();
        v147 = v212;
        v148 = v213;
        (*(v212 + 16))(v210, v146, v213);
        sub_220444254(&unk_281288C10, 255, type metadata accessor for StockFeedSectionDescriptor);
        sub_220444254(&qword_281293DD0, 255, type metadata accessor for StockFeedModel);
        v149 = v214;
        sub_22088B29C();
        v150 = v231;
        sub_220553D54(v149, v229, 0, 1);
        (*(v222 + 8))(v149, v92);
        (*(v147 + 8))(v146, v148);
      }

      else
      {
        v150 = v231;
        sub_220553D54(v245, v229, 0, 1);
      }

      sub_22055CD20();
      return (*(*(v160 - 8) + 56))(v150, 0, 1, v160);
    }

    v114 = v90;
    v237 = v87;
    v115 = v200;
    swift_storeEnumTagMultiPayload();
    v116 = v225;
    v117 = v224;
    v118 = v226;
    (*(v225 + 104))(v224, *MEMORY[0x277D6E9B0], v226);
    sub_22055D5F8();
    v250 = 0u;
    v251 = 0u;
    v252 = 0;
    v119 = v218;
    v120 = v248;
    sub_22088F5BC();
    v248 = v120;
    if (v120)
    {
      sub_2204C5EE4(&v250, sub_22055D6E0);
      (*(v116 + 8))(v117, v118);
      sub_2204C5EE4(v115, type metadata accessor for StockFeedLayoutSectionDescriptor);
    }

    else
    {
      sub_2204C5EE4(&v250, sub_22055D6E0);
      v161 = sub_22088F55C();
      (*(v215 + 8))(v119, v114);
      v162 = *(v161 + 16);
      if (v162)
      {
        *&v250 = MEMORY[0x277D84F90];
        sub_22070BBB4(0, v162, 0);
        v163 = v250;
        v245 = *(v244 + 16);
        v164 = (*(v244 + 80) + 32) & ~*(v244 + 80);
        v236 = v161;
        v165 = v161 + v164;
        v240 = *(v244 + 72);
        v239 = (v244 + 8);
        v238 = (v243 + 32);
        v166 = v249;
        v167 = v204;
        v244 += 16;
        do
        {
          v168 = v246;
          v169 = v245;
          v245(v166, v165, v246);
          v169(v247, v166, v168);
          swift_storeEnumTagMultiPayload();
          sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
          sub_22088BC2C();
          (*v239)(v166, v168);
          *&v250 = v163;
          v171 = *(v163 + 16);
          v170 = *(v163 + 24);
          if (v171 >= v170 >> 1)
          {
            sub_22070BBB4(v170 > 1, v171 + 1, 1);
            v163 = v250;
          }

          *(v163 + 16) = v171 + 1;
          (*(v243 + 32))(v163 + ((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v171, v167, v242);
          v165 += v240;
          --v162;
          v166 = v249;
        }

        while (v162);
      }

      sub_220444254(&qword_281283F88, 255, type metadata accessor for StockFeedLayoutSectionDescriptor);
      sub_220444254(&qword_28128E7F0, 255, type metadata accessor for StockFeedLayoutModel);
      v193 = v231;
      sub_22088C35C();
      sub_22055CD20();
      (*(*(v194 - 8) + 56))(v193, 0, 1, v194);
    }

    v139 = type metadata accessor for StockFeedSectionDescriptor;
    v140 = &v254;
    return sub_2204C5EE4(*(v140 - 32), v139);
  }

  if (!EnumCaseMultiPayload)
  {
    v95 = v201;
    sub_22055DC0C(v87, v201, type metadata accessor for StockFeedMastheadModel);
    v96 = sub_22088C32C();
    v97 = v198;
    v98 = v229;
    (*(*(v96 - 8) + 16))(v198, v229, v96);
    v99 = v233;
    __swift_project_boxed_opaque_existential_1(v233 + 2, v233[5]);
    v100 = v199;
    sub_2207F0BC0(*&v95, v97, v199);
    sub_22055D82C();
    v102 = *(v101 + 48);
    v103 = v203;
    sub_22055D274(v95, v203, type metadata accessor for StockFeedMastheadModel);
    sub_22055D274(v100, v103 + v102, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
    v104 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v104, v105);
    v197[-4] = v99;
    v197[-3] = v97;
    v197[-2] = v98;
    sub_220571FC0(sub_22055D89C, &v197[-6]);
    sub_220444254(qword_281283F90, 255, type metadata accessor for StockFeedLayoutSectionDescriptor);
    sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
    v106 = v231;
    sub_22088C33C();
    sub_2204C5EE4(v100, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
    sub_2204C5EE4(v201, type metadata accessor for StockFeedMastheadModel);
    sub_2204C5EE4(v97, type metadata accessor for StockFeedMastheadViewLayoutOptions);
LABEL_27:
    sub_22055CD20();
    return (*(*(v156 - 8) + 56))(v106, 0, 1, v156);
  }

  sub_220459628();
  v125 = &v87[*(v124 + 64)];
  v126 = v219;
  sub_22055DC0C(v125, v219, sub_2204595F4);
  v127 = v245;
  v128 = v223;
  sub_220553F0C(v223, v229, v233, v253);
  v129 = v216;
  sub_22055D274(v126, v216, sub_2204595F4);
  v130 = v217;
  v131 = v220;
  if ((*(v217 + 48))(v129, 1, v220) == 1)
  {
    sub_2204C5EE4(v129, sub_2204595F4);
    v132 = v231;
    v133 = v248;
    sub_220555448(v127, v253, v91, v231);
    sub_2204C5EE4(v126, sub_2204595F4);
    result = sub_22055D7D8(v253);
    if (!v133)
    {
      sub_22055CD20();
      result = (*(*(v134 - 8) + 56))(v132, 0, 1, v134);
    }

    *v128 = 0;
  }

  else
  {
    v157 = v209;
    (*(v130 + 32))(v209, v129, v131);
    v158 = v231;
    v159 = v248;
    sub_2205543F8(*&v127, v253, v94, v157, v231);
    sub_22055D7D8(v253);
    (*(v130 + 8))(v157, v131);
    if (v159)
    {
      result = sub_2204C5EE4(v126, sub_2204595F4);
    }

    else
    {
      sub_2204C5EE4(v126, sub_2204595F4);
      sub_22055CD20();
      result = (*(*(v192 - 8) + 56))(v158, 0, 1, v192);
    }

    *v128 = 0;
  }

  return result;
}

uint64_t sub_220553D54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  v9 = type metadata accessor for StockFeedLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v9, v10);
  swift_storeEnumTagMultiPayload();
  v13 = v4;
  v14 = a2;
  v15 = a3;
  v16 = a4 & 1;
  v17 = v8;
  sub_220571FC0(sub_22055E084, v12);
  type metadata accessor for StockFeedLayoutModel();
  sub_220444254(qword_281283F90, 255, type metadata accessor for StockFeedLayoutSectionDescriptor);
  sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
  return sub_22088C33C();
}

uint64_t sub_220553F0C@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BrandingTitleViewLayoutOptions();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CE80(0);
  sub_22088B2AC();
  result = swift_getEnumCaseMultiPayload();
  v17 = 0uLL;
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {

        sub_220459628();
        v24 = *(v23 + 64);
        if (*a1 == 1 && (v15[16] & 1) == 0)
        {
          v25 = sub_22088C24C();
          v26 = [v25 horizontalSizeClass];

          if (v26 == 1)
          {
            type metadata accessor for Localized();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v28 = [objc_opt_self() bundleForClass_];
            v58 = 0x80000002208BF420;
            v18 = sub_220884CAC();
            v19 = v29;

            v30 = __swift_project_boxed_opaque_existential_1((a3 + 296), *(a3 + 320));
            v31 = sub_22088C32C();
            (*(*(v31 - 8) + 16))(v11, a2, v31);
            v32 = &v11[*(v8 + 20)];
            *v32 = 0x4020000000000000;
            *(v32 + 1) = 0;
            *(v32 + 2) = 0;
            *(v32 + 3) = 0;
            v33 = *v30;
            sub_22088C21C();
            sub_22088C21C();
            sub_22088C20C();
            sub_22088C20C();
            sub_220891EEC();
            v35 = v34;
            v37 = v36;
            __swift_project_boxed_opaque_existential_1((v33 + 16), *(v33 + 40));
            v38 = sub_220752A48(v18, v19, 0);
            [v38 boundingRectWithSize:33 options:0 context:{v35, v37}];
            v40 = v39;
            v42 = v41;
            v44 = v43;
            v46 = v45;

            sub_22088C20C();
            v48 = v47;
            v68.origin.x = v40;
            v68.origin.y = v42;
            v68.size.width = v44;
            v68.size.height = v46;
            Width = CGRectGetWidth(v68);
            v69.origin.x = v40;
            v69.origin.y = v42;
            v69.size.width = v44;
            v69.size.height = v46;
            Height = CGRectGetHeight(v69);
            sub_22088C21C();
            v52 = v51;
            v70.origin.y = 8.0;
            v70.origin.x = v48;
            v70.size.width = Width;
            v70.size.height = Height;
            CGRectGetMaxY(v70);
            MEMORY[0x28223BE20](v53, v54);
            *(&v60 - 8) = 0;
            *(&v60 - 7) = 0;
            *(&v60 - 6) = v52;
            *(&v60 - 5) = v55;
            *(&v60 - 4) = v48;
            *(&v60 - 3) = 0x4020000000000000;
            v58 = *&Width;
            v59 = Height;
            sub_22088C19C();
            sub_2204C5EE4(v11, type metadata accessor for BrandingTitleViewLayoutOptions);
            v62 = v65;
            v63 = v64;
            v61 = v66;
            v60 = v67;
            result = sub_2204C5EE4(&v15[v24], sub_2204595F4);
            v22 = v60;
            v21 = v61;
            v20 = v62;
            v17 = v63;
            goto LABEL_13;
          }
        }

        v56 = sub_2204595F4;
        v57 = &v15[v24];
      }

      else
      {
        v56 = type metadata accessor for StockFeedSectionDescriptor;
        v57 = v15;
      }

      result = sub_2204C5EE4(v57, v56);
      v18 = 0;
      v19 = 0;
      v20 = 0uLL;
      v21 = 0uLL;
      v22 = 0uLL;
      v17 = 0uLL;
      goto LABEL_13;
    }

    result = sub_2204C5EE4(v15, type metadata accessor for StockFeedMastheadModel);
    v17 = 0uLL;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0uLL;
LABEL_13:
  *a4 = v18;
  *(a4 + 8) = v19;
  *(a4 + 16) = 0;
  *(a4 + 24) = v17;
  *(a4 + 40) = v20;
  *(a4 + 56) = v21;
  *(a4 + 72) = v22;
  return result;
}

uint64_t sub_2205543F8@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v127 = a3;
  v117 = a2;
  MaxY = a1;
  v107 = a5;
  v134 = type metadata accessor for StockFeedLayoutModel();
  MEMORY[0x28223BE20](v134, v6);
  v132 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_22088FD8C();
  v136 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v8);
  v130 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D3C0();
  v129 = v10;
  v133 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v97 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22088DA5C();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v13);
  v113 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for StockFeedLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v112, v15);
  v111 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D934(0);
  v104 = v17;
  v103 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v110 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454EE0(0, &qword_281298C80, MEMORY[0x277D6D1A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v121 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v119 = &v97 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v118 = &v97 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v116 = &v97 - v31;
  v123 = sub_220886D7C();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v32);
  v120 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_22088F58C();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v34);
  v102 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v124 = &v97 - v38;
  sub_22055D968(0);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v42 = &v97 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22088F39C();
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v97 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D99C(0);
  MEMORY[0x28223BE20](v48 - 8, v49);
  v51 = &v97 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D9D0(0);
  MEMORY[0x28223BE20](v52 - 8, v53);
  v55 = &v97 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_22089037C();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v56);
  v58 = &v97 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088F37C();
  v59 = sub_22088F43C();
  (*(*(v59 - 8) + 56))(v55, 1, 1, v59);
  v60 = *(v44 + 16);
  v101 = v43;
  v99 = v44 + 16;
  v98 = v60;
  v60(v47, a4, v43);
  v100 = v47;
  sub_22088FB3C();
  v61 = sub_22088FB4C();
  (*(*(v61 - 8) + 56))(v51, 0, 1, v61);
  v62 = sub_22088F86C();
  (*(*(v62 - 8) + 56))(v42, 1, 1, v62);
  sub_22055CE80(0);
  sub_220444254(qword_281288C20, 255, type metadata accessor for StockFeedSectionDescriptor);
  sub_220444254(&qword_281293DC8, 255, type metadata accessor for StockFeedModel);
  v63 = sub_22088B36C();
  sub_2204C5EE4(v42, sub_22055D968);
  sub_2204C5EE4(v51, sub_22055D99C);
  sub_2204C5EE4(v55, sub_22055D9D0);
  v64 = *(v114 + 8);
  v65 = v115;
  v64(v58, v115);
  v114 = a4;
  sub_22088F37C();
  v126 = v63;
  v66 = v117;
  v67 = sub_220890AFC();
  v64(v58, v65);
  if (*(v66 + 8))
  {
    MaxY = CGRectGetMaxY(*(v66 + 24));
  }

  else
  {
    MaxY = 0.0;
  }

  v135[3] = sub_22089097C();
  v135[4] = MEMORY[0x277D33EB8];
  v135[0] = v67;
  v68 = sub_220886D8C();
  v69 = *(*(v68 - 8) + 56);
  v69(v116, 1, 1, v68);
  v69(v118, 1, 1, v68);
  v69(v119, 1, 1, v68);
  v69(v121, 1, 1, v68);

  v70 = v120;
  sub_220886D6C();
  v71 = v124;
  v72 = v128;
  sub_22088F5CC();
  if (v72)
  {
    (*(v122 + 8))(v70, v123);

    return sub_2204C5EE4(v135, sub_22055D6E0);
  }

  else
  {
    v121 = v67;
    (*(v122 + 8))(v70, v123);

    sub_2204C5EE4(v135, sub_22055D6E0);
    v74 = v100;
    v98(v100, v114, v101);
    v75 = v102;
    (*(v108 + 16))(v102, v71, v109);
    v76 = v110;
    sub_22055B4F0(v74, v75, v110);
    sub_22055DA04();
    v78 = v111;
    v79 = v111 + *(v77 + 48);
    sub_22055D274(v76, v111, sub_22055D934);
    (*(v103 + 56))(v78, 0, 1, v104);
    v80 = *(v66 + 48);
    *(v79 + 32) = *(v66 + 32);
    *(v79 + 48) = v80;
    *(v79 + 64) = *(v66 + 64);
    *(v79 + 80) = *(v66 + 80);
    v81 = *(v66 + 16);
    *v79 = *v66;
    *(v79 + 16) = v81;
    swift_storeEnumTagMultiPayload();
    v82 = *MEMORY[0x277D6E980];
    v83 = sub_22088DA3C();
    v84 = v113;
    (*(*(v83 - 8) + 104))(v113, v82, v83);
    (*(v105 + 104))(v84, *MEMORY[0x277D6E988], v106);
    sub_22055DA9C(v66, v135);
    v85 = sub_22088F55C();
    v86 = *(v85 + 16);
    if (v86)
    {
      v123 = 0;
      v135[0] = MEMORY[0x277D84F90];
      sub_22070BBB4(0, v86, 0);
      v87 = v135[0];
      v128 = *(v136 + 16);
      v88 = (*(v136 + 80) + 32) & ~*(v136 + 80);
      v122 = v85;
      v89 = v85 + v88;
      v90 = *(v136 + 72);
      v136 += 16;
      v126 = (v136 - 8);
      v127 = v90;
      *&MaxY = v133 + 32;
      v91 = v97;
      do
      {
        v93 = v130;
        v92 = v131;
        v94 = v128;
        v128(v130, v89, v131);
        v94(v132, v93, v92);
        swift_storeEnumTagMultiPayload();
        sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
        sub_22088BC2C();
        (*v126)(v93, v92);
        v135[0] = v87;
        v96 = *(v87 + 16);
        v95 = *(v87 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_22070BBB4(v95 > 1, v96 + 1, 1);
          v87 = v135[0];
        }

        *(v87 + 16) = v96 + 1;
        (*(v133 + 32))(v87 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v96, v91, v129);
        v89 += v127;
        --v86;
      }

      while (v86);

      v71 = v124;
    }

    else
    {
    }

    sub_220444254(&qword_281283F88, 255, type metadata accessor for StockFeedLayoutSectionDescriptor);
    sub_220444254(&qword_28128E7F0, 255, type metadata accessor for StockFeedLayoutModel);
    sub_22088C35C();

    sub_2204C5EE4(v110, sub_22055D934);
    return (*(v108 + 8))(v71, v109);
  }
}

uint64_t sub_220555448@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v167 = a3;
  v154 = a2;
  v151 = a4;
  sub_22055D99C(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v166 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088F4FC();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v164 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_22088FF2C();
  v158 = *(v161 - 1);
  MEMORY[0x28223BE20](v161, v11);
  v157 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328();
  v170 = v13;
  v175 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v143 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v156 = &v140 - v18;
  v142 = sub_22089018C();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v19);
  v162 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for StockFeedLayoutModel();
  MEMORY[0x28223BE20](v181, v21);
  v179 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_22088FD8C();
  v168 = *(v178 - 8);
  MEMORY[0x28223BE20](v178, v23);
  v177 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D3C0();
  v176 = v25;
  v180 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v26);
  v140 = &v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v159 = &v140 - v30;
  v163 = sub_22088F58C();
  v147 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v31);
  v165 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v160 = &v140 - v35;
  v149 = sub_22088DA5C();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v36);
  v155 = &v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v145 = &v140 - v40;
  v150 = type metadata accessor for StockFeedLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v150, v41);
  v146 = &v140 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v44);
  v144 = &v140 - v45;
  v174 = sub_220886DAC();
  v46 = *(v174 - 8);
  MEMORY[0x28223BE20](v174, v47);
  v49 = &v140 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_220886D0C();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v52);
  v54 = &v140 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v55, v56);
  v58 = &v140 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CE80(0);
  v171 = v59;
  v60 = a1;
  sub_22088B2AC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_57;
  }

  v153 = v58;
  v61 = v58[16];
  sub_220459628();
  v152 = *(v62 + 64);
  if (v61 == 1)
  {
    sub_22088F5AC();
    sub_220886CFC();
    (*(v51 + 8))(v54, v50);
    v63 = (*(v46 + 88))(v49, v174);
    if (v63 == *MEMORY[0x277D6D1B0])
    {
      v64 = v154;
    }

    else
    {
      v64 = v154;
      if (v63 != *MEMORY[0x277D6D1B8] && v63 != *MEMORY[0x277D6D1C0])
      {
        goto LABEL_59;
      }
    }

    sub_220444254(&qword_281297DE8, 255, sub_22055CE80);
    v105 = sub_22089195C();
    MEMORY[0x28223BE20](v105, v106);
    i = v60;
    v107 = v169;
    v108 = sub_22057235C(sub_22055DBA4, v137, v105);
    v109 = v107;

    if (v108 >> 62)
    {
      goto LABEL_51;
    }

    v110 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v110)
    {
LABEL_52:

      v112 = MEMORY[0x277D84F90];
      goto LABEL_53;
    }

    while (1)
    {
      v186 = MEMORY[0x277D84F90];
      sub_22070BC74(0, v110 & ~(v110 >> 63), 0);
      v158 = v110;
      if (v110 < 0)
      {
        goto LABEL_56;
      }

      v111 = 0;
      v162 = (v108 & 0xC000000000000001);
      v112 = v186;
      v156 = (v108 & 0xFFFFFFFFFFFFFF8);
      v155 = (v108 + 32);
      v173 = (v168 + 16);
      v172 = (v168 + 8);
      v171 = v180 + 32;
      v161 = (v147 + 8);
      v113 = v160;
      v64 = v158;
      v157 = v108;
      while (1)
      {
        v114 = (v111 + 1);
        if (__OFADD__(v111, 1))
        {
          break;
        }

        if (v162)
        {
          v115 = MEMORY[0x223D8A700]();
        }

        else
        {
          if (v111 >= *(v156 + 2))
          {
            goto LABEL_50;
          }

          v115 = *&v155[8 * v111];
        }

        v185 = v115;
        sub_22088F4EC();
        sub_220444254(&qword_281296BF8, 255, MEMORY[0x277D31E90]);
        v182 = 0u;
        v183 = 0u;
        v184 = 0;
        sub_22088F5BC();
        if (v109)
        {
          sub_2204C5EE4(&v182, sub_22055D6E0);

          return sub_2204C5EE4(&v153[v152], sub_2204595F4);
        }

        v169 = v114;
        v170 = v112;
        sub_2204C5EE4(&v182, sub_22055D6E0);
        v116 = sub_22088F55C();
        v117 = *(v116 + 16);
        if (v117)
        {
          v165 = v115;
          v166 = 0;
          *&v182 = MEMORY[0x277D84F90];
          sub_22070BBB4(0, v117, 0);
          v118 = v182;
          v119 = (*(v168 + 80) + 32) & ~*(v168 + 80);
          v164 = v116;
          v120 = v116 + v119;
          v121 = *(v168 + 72);
          v174 = *(v168 + 16);
          v175 = v121;
          v122 = v159;
          do
          {
            v124 = v177;
            v123 = v178;
            v125 = v174;
            (v174)(v177, v120, v178);
            v125(v179, v124, v123);
            swift_storeEnumTagMultiPayload();
            sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
            sub_22088BC2C();
            (*v172)(v124, v123);
            *&v182 = v118;
            v127 = *(v118 + 16);
            v126 = *(v118 + 24);
            if (v127 >= v126 >> 1)
            {
              sub_22070BBB4(v126 > 1, v127 + 1, 1);
              v118 = v182;
            }

            *(v118 + 16) = v127 + 1;
            (*(v180 + 32))(v118 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v127, v122, v176);
            v120 += v175;
            --v117;
          }

          while (v117);
          v113 = v160;
          (*v161)(v160, v163);

          v109 = v166;
          v108 = v157;
          v64 = v158;
        }

        else
        {

          (*v161)(v113, v163);
          v118 = MEMORY[0x277D84F90];
        }

        v112 = v170;
        v186 = v170;
        v129 = *(v170 + 16);
        v128 = *(v170 + 24);
        if (v129 >= v128 >> 1)
        {
          sub_22070BC74((v128 > 1), v129 + 1, 1);
          v112 = v186;
        }

        *(v112 + 16) = v129 + 1;
        *(v112 + 8 * v129 + 32) = v118;
        v111 = v169;
        if (v169 == v64)
        {

          v64 = v154;
LABEL_53:
          sub_22055BD54(v112);

          sub_22055DA04();
          v131 = v144;
          v132 = &v144[*(v130 + 48)];
          sub_22055D934(0);
          (*(*(v133 - 8) + 56))(v131, 1, 1, v133);
          v134 = *(v64 + 48);
          *(v132 + 2) = *(v64 + 32);
          *(v132 + 3) = v134;
          *(v132 + 4) = *(v64 + 64);
          *(v132 + 10) = *(v64 + 80);
          v135 = *(v64 + 16);
          *v132 = *v64;
          *(v132 + 1) = v135;
          swift_storeEnumTagMultiPayload();
          (*(v148 + 104))(v145, *MEMORY[0x277D6E9B0], v149);
          sub_22055DA9C(v64, &v182);
          sub_220444254(&qword_281283F88, 255, type metadata accessor for StockFeedLayoutSectionDescriptor);
          sub_220444254(&qword_28128E7F0, 255, type metadata accessor for StockFeedLayoutModel);
          sub_22088C35C();
          return sub_2204C5EE4(&v153[v152], sub_2204595F4);
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v110 = sub_2208926AC();
      if (!v110)
      {
        goto LABEL_52;
      }
    }
  }

  v65 = sub_220444254(&qword_281297DE8, 255, sub_22055CE80);
  v66 = sub_22089197C();
  if (v66)
  {
    v67 = v66;
    v186 = MEMORY[0x277D84F90];
    sub_22070BC24(0, v66 & ~(v66 >> 63), 0);
    v68 = v186;
    sub_22089193C();
    if (v67 < 0)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v139 = 0;
      for (i = 419; ; i = 365)
      {
        sub_22089267C();
        __break(1u);
LABEL_59:
        v139 = 0;
      }
    }

    v174 = v175 + 16;
    v173 = (v175 + 32);
    v69 = v170;
    v70 = v143;
    v71 = v68;
    v172 = v65;
    do
    {
      v72 = sub_2208919BC();
      (*v174)(v70);
      v72(&v182, 0);
      v186 = v71;
      v74 = *(v71 + 16);
      v73 = *(v71 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_22070BC24(v73 > 1, v74 + 1, 1);
        v71 = v186;
      }

      *(v71 + 16) = v74 + 1;
      (*(v175 + 32))(v71 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v74, v70, v69);
      sub_2208919AC();
      --v67;
    }

    while (v67);
  }

  v75 = v154;
  v174 = sub_22088B2BC();
  v173 = v76;
  v172 = sub_22088B2BC();
  v160 = v77;
  v78 = v156;
  sub_22088B3BC();
  sub_220444254(&qword_281293DC8, 255, type metadata accessor for StockFeedModel);
  v79 = v157;
  v80 = v170;
  sub_22088AD9C();
  (*(v175 + 8))(v78, v80);
  v81 = sub_22088FF0C();
  (*(v158 + 8))(v79, v161);
  v82 = v165;
  if (v81)
  {
    (*(v141 + 104))(v162, *MEMORY[0x277D33180], v142);
  }

  else
  {
    sub_220444254(qword_281288C20, 255, type metadata accessor for StockFeedSectionDescriptor);
    sub_22088B34C();
  }

  sub_220444254(qword_281288C20, 255, type metadata accessor for StockFeedSectionDescriptor);
  sub_22088B35C();
  v83 = sub_22088FB4C();
  v182 = 0u;
  v183 = 0u;
  v184 = 0;
  (*(*(v83 - 8) + 56))(v166, 1, 1, v83);
  sub_22088F4EC();
  swift_allocObject();
  i = sub_22055DAF8();
  v137[0] = 0;
  v137[1] = v170;
  v84 = MEMORY[0x277D84F90];
  v85 = sub_22088F4DC();
  v186 = v85;
  sub_220444254(&qword_281296BF8, 255, MEMORY[0x277D31E90]);
  v182 = 0u;
  v183 = 0u;
  v184 = 0;
  v86 = v169;
  sub_22088F5BC();
  sub_2204C5EE4(&v182, sub_22055D6E0);
  if (v86)
  {
  }

  else
  {
    v87 = v84;
    sub_22055DA04();
    v89 = v146;
    v90 = &v146[*(v88 + 48)];
    sub_22055D934(0);
    (*(*(v91 - 8) + 56))(v89, 1, 1, v91);
    v92 = *(v75 + 48);
    *(v90 + 2) = *(v75 + 32);
    *(v90 + 3) = v92;
    *(v90 + 4) = *(v75 + 64);
    *(v90 + 10) = *(v75 + 80);
    v93 = *(v75 + 16);
    *v90 = *v75;
    *(v90 + 1) = v93;
    swift_storeEnumTagMultiPayload();
    (*(v148 + 104))(v155, *MEMORY[0x277D6E9B0], v149);
    sub_22055DA9C(v75, &v182);
    v94 = sub_22088F55C();
    v95 = *(v94 + 16);
    if (v95)
    {
      v171 = v85;
      v166 = 0;
      *&v182 = v87;
      sub_22070BBB4(0, v95, 0);
      v96 = v182;
      v175 = *(v168 + 16);
      v97 = (*(v168 + 80) + 32) & ~*(v168 + 80);
      v170 = v94;
      v98 = v94 + v97;
      v174 = *(v168 + 72);
      v168 += 16;
      v173 = (v168 - 8);
      v172 = (v180 + 32);
      v99 = v140;
      v100 = v177;
      do
      {
        v101 = v178;
        v102 = v175;
        (v175)(v100, v98, v178);
        v102(v179, v100, v101);
        swift_storeEnumTagMultiPayload();
        sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
        sub_22088BC2C();
        (*v173)(v100, v101);
        *&v182 = v96;
        v104 = *(v96 + 16);
        v103 = *(v96 + 24);
        if (v104 >= v103 >> 1)
        {
          sub_22070BBB4(v103 > 1, v104 + 1, 1);
          v96 = v182;
        }

        *(v96 + 16) = v104 + 1;
        (*(v180 + 32))(v96 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v104, v99, v176);
        v98 += v174;
        --v95;
      }

      while (v95);

      v82 = v165;
    }

    else
    {
    }

    sub_220444254(&qword_281283F88, 255, type metadata accessor for StockFeedLayoutSectionDescriptor);
    sub_220444254(&qword_28128E7F0, 255, type metadata accessor for StockFeedLayoutModel);
    sub_22088C35C();

    (*(v147 + 8))(v82, v163);
  }

  return sub_2204C5EE4(&v153[v152], sub_2204595F4);
}

void *sub_220556DE8(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v56 = a1;
  v57 = a2;
  sub_22055D458(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CD20();
  v58 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v54 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v46 = &v45 - v15;
  sub_22055CE80(0);
  v47 = v16;
  v60 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v55 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D1DC();
  v26 = v25 - 8;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v5, v20, v28);
  sub_220444254(&qword_281296F28, 255, sub_22055CF9C);
  sub_2208915BC();
  v31 = *(v26 + 44);
  sub_220444254(&qword_281296F20, 255, sub_22055CF9C);
  sub_22089199C();
  if (*&v30[v31] == v59[0])
  {
    v60 = MEMORY[0x277D84F90];
LABEL_3:
    sub_2204C5EE4(v30, sub_22055D1DC);
  }

  else
  {
    v52 = (v60 + 2);
    v53 = (v60 + 1);
    v45 = v10;
    v50 = (v10 + 32);
    v51 = (v10 + 48);
    v60 = MEMORY[0x277D84F90];
    v33 = v47;
    v32 = v48;
    while (1)
    {
      v34 = sub_2208919BC();
      v35 = v55;
      (*v52)(v55);
      v34(v59, 0);
      sub_2208919AC();
      v56(v35);
      if (v4)
      {
        break;
      }

      (*v53)(v35, v33);
      v36 = v58;
      if ((*v51)(v32, 1, v58) == 1)
      {
        sub_2204C5EE4(v32, sub_22055D458);
      }

      else
      {
        v49 = 0;
        v37 = *v50;
        v38 = v46;
        (*v50)(v46, v32, v36);
        v37(v54, v38, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_2205879D0(0, v60[2] + 1, 1, v60);
        }

        v40 = v60[2];
        v39 = v60[3];
        v41 = v45;
        v33 = v47;
        if (v40 >= v39 >> 1)
        {
          v43 = sub_2205879D0(v39 > 1, v40 + 1, 1, v60);
          v41 = v45;
          v60 = v43;
        }

        v42 = v60;
        v60[2] = v40 + 1;
        v4 = v49;
        v37(&v42[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40], v54, v58);
        v32 = v48;
      }

      sub_22089199C();
      if (*&v30[v31] == v59[0])
      {
        goto LABEL_3;
      }
    }

    (*v53)(v35, v33);
    sub_2204C5EE4(v30, sub_22055D1DC);
  }

  return v60;
}

void *sub_2205573C4(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v56 = a1;
  v57 = a2;
  sub_22055DD10(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v48 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DD44();
  v58 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v54 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v46 = &v45 - v15;
  sub_22055DDDC();
  v47 = v16;
  v60 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v55 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DE74();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DF84();
  v26 = v25 - 8;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v5, v20, v28);
  sub_220444254(&qword_27CF56B48, 255, sub_22055DE74);
  sub_2208915BC();
  v31 = *(v26 + 44);
  sub_220444254(&qword_27CF56B40, 255, sub_22055DE74);
  sub_22089199C();
  if (*&v30[v31] == v59[0])
  {
    v60 = MEMORY[0x277D84F90];
LABEL_3:
    sub_2204C5EE4(v30, sub_22055DF84);
  }

  else
  {
    v52 = (v60 + 2);
    v53 = (v60 + 1);
    v45 = v10;
    v50 = (v10 + 32);
    v51 = (v10 + 48);
    v60 = MEMORY[0x277D84F90];
    v33 = v47;
    v32 = v48;
    while (1)
    {
      v34 = sub_2208919BC();
      v35 = v55;
      (*v52)(v55);
      v34(v59, 0);
      sub_2208919AC();
      v56(v35);
      if (v4)
      {
        break;
      }

      (*v53)(v35, v33);
      v36 = v58;
      if ((*v51)(v32, 1, v58) == 1)
      {
        sub_2204C5EE4(v32, sub_22055DD10);
      }

      else
      {
        v49 = 0;
        v37 = *v50;
        v38 = v46;
        (*v50)(v46, v32, v36);
        v37(v54, v38, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_2205881CC(0, v60[2] + 1, 1, v60);
        }

        v40 = v60[2];
        v39 = v60[3];
        v41 = v45;
        v33 = v47;
        if (v40 >= v39 >> 1)
        {
          v43 = sub_2205881CC(v39 > 1, v40 + 1, 1, v60);
          v41 = v45;
          v60 = v43;
        }

        v42 = v60;
        v60[2] = v40 + 1;
        v4 = v49;
        v37(&v42[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40], v54, v58);
        v32 = v48;
      }

      sub_22089199C();
      if (*&v30[v31] == v59[0])
      {
        goto LABEL_3;
      }
    }

    (*v53)(v35, v33);
    sub_2204C5EE4(v30, sub_22055DF84);
  }

  return v60;
}

char *sub_2205579A0(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v53 = a1;
  v54 = a2;
  sub_22055E01C(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CE80(0);
  v10 = v9;
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v43 = &v43 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v44 = &v43 - v18;
  sub_22055CF9C(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D1DC();
  v26 = v25 - 8;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v5, v20, v28);
  sub_220444254(&qword_281296F28, 255, sub_22055CF9C);
  sub_2208915BC();
  v31 = *(v26 + 44);
  sub_220444254(&qword_281296F20, 255, sub_22055CF9C);
  sub_22089199C();
  if (*&v30[v31] == v55)
  {
    v56 = MEMORY[0x277D84F90];
LABEL_3:
    sub_2204C5EE4(v30, sub_22055D1DC);
  }

  else
  {
    v32 = v45;
    v50 = (v46 + 16);
    v51 = (v46 + 8);
    v48 = (v46 + 32);
    v49 = (v46 + 48);
    v56 = MEMORY[0x277D84F90];
    v33 = v44;
    while (1)
    {
      v34 = sub_2208919BC();
      (*v50)(v33);
      v34(&v55, 0);
      sub_2208919AC();
      v53(v33);
      if (v4)
      {
        break;
      }

      (*v51)(v33, v10);
      if ((*v49)(v32, 1, v10) == 1)
      {
        sub_2204C5EE4(v32, sub_22055E01C);
      }

      else
      {
        v47 = 0;
        v35 = *v48;
        v36 = v43;
        (*v48)(v43, v32, v10);
        v35(v52, v36, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_2205885A8(0, *(v56 + 2) + 1, 1, v56);
        }

        v38 = *(v56 + 2);
        v37 = *(v56 + 3);
        v39 = v46;
        if (v38 >= v37 >> 1)
        {
          v41 = sub_2205885A8(v37 > 1, v38 + 1, 1, v56);
          v39 = v46;
          v56 = v41;
        }

        v40 = v56;
        *(v56 + 2) = v38 + 1;
        v4 = v47;
        v35(&v40[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v38], v52, v10);
        v33 = v44;
        v32 = v45;
      }

      sub_22089199C();
      if (*&v30[v31] == v55)
      {
        goto LABEL_3;
      }
    }

    (*v51)(v33, v10);
    sub_2204C5EE4(v30, sub_22055D1DC);
  }

  return v56;
}

char *sub_220557F14(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v53 = a1;
  v54 = a2;
  sub_22055E050(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328();
  v10 = v9;
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v43 = &v43 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v44 = &v43 - v18;
  sub_22055CE80(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D48C();
  v26 = v25 - 8;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v5, v20, v28);
  sub_220444254(&qword_281297DF0, 255, sub_22055CE80);
  sub_2208915BC();
  v31 = *(v26 + 44);
  sub_220444254(&qword_281297DE8, 255, sub_22055CE80);
  sub_22089199C();
  if (*&v30[v31] == v55)
  {
    v56 = MEMORY[0x277D84F90];
LABEL_3:
    sub_2204C5EE4(v30, sub_22055D48C);
  }

  else
  {
    v32 = v45;
    v50 = (v46 + 16);
    v51 = (v46 + 8);
    v48 = (v46 + 32);
    v49 = (v46 + 48);
    v56 = MEMORY[0x277D84F90];
    v33 = v44;
    while (1)
    {
      v34 = sub_2208919BC();
      (*v50)(v33);
      v34(&v55, 0);
      sub_2208919AC();
      v53(v33);
      if (v4)
      {
        break;
      }

      (*v51)(v33, v10);
      if ((*v49)(v32, 1, v10) == 1)
      {
        sub_2204C5EE4(v32, sub_22055E050);
      }

      else
      {
        v47 = 0;
        v35 = *v48;
        v36 = v43;
        (*v48)(v43, v32, v10);
        v35(v52, v36, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_2205885DC(0, *(v56 + 2) + 1, 1, v56);
        }

        v38 = *(v56 + 2);
        v37 = *(v56 + 3);
        v39 = v46;
        if (v38 >= v37 >> 1)
        {
          v41 = sub_2205885DC(v37 > 1, v38 + 1, 1, v56);
          v39 = v46;
          v56 = v41;
        }

        v40 = v56;
        *(v56 + 2) = v38 + 1;
        v4 = v47;
        v35(&v40[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v38], v52, v10);
        v33 = v44;
        v32 = v45;
      }

      sub_22089199C();
      if (*&v30[v31] == v55)
      {
        goto LABEL_3;
      }
    }

    (*v51)(v33, v10);
    sub_2204C5EE4(v30, sub_22055D48C);
  }

  return v56;
}

uint64_t sub_220558488@<X0>(double *a1@<X8>)
{
  v52 = a1;
  v1 = type metadata accessor for StockFeedLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for StockFeedLayoutModel();
  MEMORY[0x28223BE20](v58, v5);
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D3C0();
  v56 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CD20();
  v13 = v12;
  sub_220444254(&qword_27CF56AF8, 255, sub_22055CD20);
  v14 = sub_22089197C();
  v15 = MEMORY[0x277D84F90];
  v53 = v13;
  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v16 = v14;
  v17 = v8;
  v60 = MEMORY[0x277D84F90];
  sub_22070BC04(0, v14 & ~(v14 >> 63), 0);
  v18 = v60;
  result = sub_22089193C();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v51 = v4;
    v54 = (v17 + 8);
    v55 = (v17 + 16);
    do
    {
      v20 = sub_2208919BC();
      v21 = v56;
      (*v55)(v11);
      v20(v59, 0);
      v22 = v57;
      sub_22088BC3C();
      sub_220444254(&qword_28128E7F0, 255, type metadata accessor for StockFeedLayoutModel);
      sub_22088D90C();
      v24 = v23;
      sub_2204C5EE4(v22, type metadata accessor for StockFeedLayoutModel);
      (*v54)(v11, v21);
      v60 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_22070BC04((v25 > 1), v26 + 1, 1);
        v18 = v60;
      }

      *(v18 + 16) = v26 + 1;
      *(v18 + 8 * v26 + 32) = v24;
      sub_2208919AC();
      --v16;
    }

    while (v16);
    v4 = v51;
    v15 = MEMORY[0x277D84F90];
LABEL_9:
    v27 = *(v18 + 16);
    v28 = 0.0;
    v29 = 0.0;
    if (!v27)
    {
      goto LABEL_17;
    }

    if (v27 > 3)
    {
      v30 = v27 & 0x7FFFFFFFFFFFFFFCLL;
      v31 = (v18 + 48);
      v32 = v27 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v29 = v29 + *(v31 - 2) + *(v31 - 1) + *v31 + v31[1];
        v31 += 4;
        v32 -= 4;
      }

      while (v32);
      if (v27 == v30)
      {
LABEL_17:

        sub_22088C34C();
        v36 = sub_2206C3740();
        result = sub_2204C5EE4(v4, type metadata accessor for StockFeedLayoutSectionDescriptor);
        if (!v36)
        {
LABEL_34:
          *v52 = v29 + v28;
          return result;
        }

        v37 = *(v36 + 16);
        if (v37)
        {
          v60 = v15;
          sub_22070BC04(0, v37, 0);
          v38 = v60;
          v39 = v36 + 32;
          do
          {
            sub_22046DA2C(v39, v59);
            __swift_project_boxed_opaque_existential_1(v59, v59[3]);
            sub_22088D8CC();
            Height = CGRectGetHeight(v61);
            __swift_destroy_boxed_opaque_existential_1(v59);
            v60 = v38;
            v42 = *(v38 + 16);
            v41 = *(v38 + 24);
            if (v42 >= v41 >> 1)
            {
              sub_22070BC04((v41 > 1), v42 + 1, 1);
              v38 = v60;
            }

            *(v38 + 16) = v42 + 1;
            *(v38 + 8 * v42 + 32) = Height;
            v39 += 40;
            --v37;
          }

          while (v37);

          v43 = *(v38 + 16);
          if (v43)
          {
            goto LABEL_24;
          }
        }

        else
        {

          v38 = MEMORY[0x277D84F90];
          v43 = *(MEMORY[0x277D84F90] + 16);
          if (v43)
          {
LABEL_24:
            if (v43 > 3)
            {
              v44 = v43 & 0x7FFFFFFFFFFFFFFCLL;
              v45 = (v38 + 48);
              v28 = 0.0;
              v46 = v43 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v28 = v28 + *(v45 - 2) + *(v45 - 1) + *v45 + v45[1];
                v45 += 4;
                v46 -= 4;
              }

              while (v46);
              if (v43 == v44)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v44 = 0;
              v28 = 0.0;
            }

            v47 = v43 - v44;
            v48 = (v38 + 8 * v44 + 32);
            do
            {
              v49 = *v48++;
              v28 = v28 + v49;
              --v47;
            }

            while (v47);
LABEL_33:

            goto LABEL_34;
          }
        }

        v28 = 0.0;
        goto LABEL_33;
      }
    }

    else
    {
      v30 = 0;
    }

    v33 = v27 - v30;
    v34 = (v18 + 8 * v30 + 32);
    do
    {
      v35 = *v34++;
      v29 = v29 + v35;
      --v33;
    }

    while (v33);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_220558A3C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22055BD40(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    sub_22055CD20();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_220558B44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v38 = a1;
  v39 = a4;
  v4 = type metadata accessor for StockFeedPriceViewLayoutOptions();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockFeedLayoutModel();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockFeedMastheadViewLayoutAttributes();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328();
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 1)
  {
    sub_22055DC0C(v23, v19, type metadata accessor for StockFeedMastheadModel);
    __swift_project_boxed_opaque_existential_1((v38 + 16), *(v38 + 40));
    sub_2207F0BC0(*&v19, v36, v15);
    sub_22055D8C0();
    v26 = *(v25 + 48);
    sub_22055D274(v19, v11, type metadata accessor for StockFeedMastheadModel);
    sub_22055D274(v15, &v11[v26], type metadata accessor for StockFeedMastheadViewLayoutAttributes);
    swift_storeEnumTagMultiPayload();
    sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
    sub_22088BC2C();
    sub_2204C5EE4(v15, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
    return sub_2204C5EE4(v19, type metadata accessor for StockFeedMastheadModel);
  }

  v27 = v38;
  if (EnumCaseMultiPayload <= 1)
  {
    sub_22055DC0C(v23, v19, type metadata accessor for StockFeedMastheadModel);
    __swift_project_boxed_opaque_existential_1((v27 + 56), *(v27 + 80));
    v28 = sub_22088C32C();
    (*(*(v28 - 8) + 16))(v7, v37, v28);
    sub_22088292C(v19, v7, v40);
    sub_2204C5EE4(v7, type metadata accessor for StockFeedPriceViewLayoutOptions);
    sub_22055DC74(0, qword_28128C5A8, type metadata accessor for StockFeedMastheadModel);
    v30 = *(v29 + 48);
    sub_22055D274(v19, v11, type metadata accessor for StockFeedMastheadModel);
    memcpy(&v11[v30], v40, 0x208uLL);
    swift_storeEnumTagMultiPayload();
    sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
    sub_22088BC2C();
    return sub_2204C5EE4(v19, type metadata accessor for StockFeedMastheadModel);
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_2204597F0();
        v33 = *(v32 + 48);
        sub_2204C5EE4(&v23[*(v32 + 64)], sub_220455030);
        sub_2204C5EE4(&v23[v33], sub_22045987C);
      }

      v34 = sub_22088685C();
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v35 = type metadata accessor for StockEarningsModel;
LABEL_20:
      sub_2204C5EE4(v23, v35);
      goto LABEL_21;
    }

LABEL_19:
    v35 = type metadata accessor for StockFeedModel;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload != 9)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_22055DC74(0, &qword_281296910, MEMORY[0x277D333C8]);

  v34 = sub_22089030C();
LABEL_17:
  (*(*(v34 - 8) + 8))(v23, v34);
LABEL_21:
  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_22055914C@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37[1] = a3;
  v37[0] = type metadata accessor for StockFeedLayoutModel();
  MEMORY[0x28223BE20](v37[0], v5);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockFeedEarningsViewLayoutOptions();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockFeedEarningsViewModel();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StockEarningsModel();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v20, v21);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328();
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    sub_22055DC0C(v23, v19, type metadata accessor for StockEarningsModel);
    __swift_project_boxed_opaque_existential_1(a1 + 50, a1[53]);
    sub_2207C26A0(v19, a2, v15);
    __swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
    v25 = sub_22088C32C();
    (*(*(v25 - 8) + 16))(v11, a2, v25);
    sub_22063EF10(v15, v38);
    sub_2204C5EE4(v11, type metadata accessor for StockFeedEarningsViewLayoutOptions);
    sub_22055DC74(0, &qword_281288D90, type metadata accessor for StockFeedEarningsViewModel);
    v27 = &v7[*(v26 + 48)];
    sub_22055D274(v15, v7, type metadata accessor for StockFeedEarningsViewModel);
    v28 = v38[5];
    *(v27 + 4) = v38[4];
    *(v27 + 5) = v28;
    v29 = v38[7];
    *(v27 + 6) = v38[6];
    *(v27 + 7) = v29;
    v30 = v38[1];
    *v27 = v38[0];
    *(v27 + 1) = v30;
    v31 = v38[3];
    *(v27 + 2) = v38[2];
    *(v27 + 3) = v31;
    swift_storeEnumTagMultiPayload();
    sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
    sub_22088BC2C();
    sub_2204C5EE4(v15, type metadata accessor for StockFeedEarningsViewModel);
    return sub_2204C5EE4(v19, type metadata accessor for StockEarningsModel);
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_22055DC74(0, &qword_281296910, MEMORY[0x277D333C8]);

        v36 = sub_22089030C();
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v33 = type metadata accessor for StockFeedMastheadModel;
LABEL_17:
    sub_2204C5EE4(v23, v33);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_16:
    v33 = type metadata accessor for StockFeedModel;
    goto LABEL_17;
  }

  sub_2204597F0();
  v35 = *(v34 + 48);
  sub_2204C5EE4(&v23[*(v34 + 64)], sub_220455030);
  sub_2204C5EE4(&v23[v35], sub_22045987C);
LABEL_11:
  v36 = sub_22088685C();
LABEL_14:
  (*(*(v36 - 8) + 8))(v23, v36);
LABEL_18:
  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_220559694@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(uint64_t a1)@<X3>, int a4@<W4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v153 = a6;
  v135[1] = a5;
  v136 = a3;
  LODWORD(v137) = a4;
  *&v145 = a2;
  *&v144 = a1;
  *&v140 = type metadata accessor for QuoteDetailViewLayoutOptions();
  MEMORY[0x28223BE20](v140, v6);
  v146 = v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D2F4(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  *&v138 = v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  *&v143 = v135 - v13;
  *&v139 = type metadata accessor for QuoteDetailViewModel();
  MEMORY[0x28223BE20](v139, v14);
  *&v148 = v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220455030(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  *&v142 = v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v135 - v21;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  *&v141 = v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v147 = v135 - v28;
  v152 = type metadata accessor for StockFeedLayoutModel();
  MEMORY[0x28223BE20](v152, v29);
  v150 = v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for StockChartViewLayoutOptions();
  MEMORY[0x28223BE20](v31, v32);
  v34 = v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for StockChartModel();
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_22088685C();
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v39);
  v41 = v135 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v42, v43);
  v45 = v135 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328();
  sub_22088AD8C();
  v154 = v45;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 3)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v47 = v149;
      v48 = v151;
      (*(v149 + 32))(v41, v154, v151);
      (*(v47 + 16))(v38, v41, v48);
      __swift_project_boxed_opaque_existential_1((v144 + 96), *(v144 + 120));
      v49 = sub_22088C32C();
      (*(*(v49 - 8) + 16))(v34, v145, v49);
      *&v34[*(v31 + 20)] = 0x406A400000000000;
      v50 = &v34[*(v31 + 24)];
      *v50 = v136;
      v50[8] = v137 & 1;
      sub_220745098(v34, &v163);
      sub_2204C5EE4(v34, type metadata accessor for StockChartViewLayoutOptions);
      sub_22055DC74(0, qword_281293018, type metadata accessor for StockChartModel);
      v52 = v150 + *(v51 + 48);
      sub_22055D274(v38, v150, type metadata accessor for StockChartModel);
      v53 = v174;
      *(v52 + 160) = v173;
      *(v52 + 176) = v53;
      *(v52 + 192) = v175;
      v54 = v170;
      *(v52 + 96) = v169;
      *(v52 + 112) = v54;
      v55 = v172;
      *(v52 + 128) = v171;
      *(v52 + 144) = v55;
      v56 = v166;
      *(v52 + 32) = v165;
      *(v52 + 48) = v56;
      v57 = v168;
      *(v52 + 64) = v167;
      *(v52 + 80) = v57;
      v58 = v164;
      *v52 = v163;
      *(v52 + 16) = v58;
      swift_storeEnumTagMultiPayload();
      sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
      sub_22088BC2C();
      sub_2204C5EE4(v38, type metadata accessor for StockChartModel);
      return (*(v47 + 8))(v41, v48);
    }

    v132 = type metadata accessor for StockFeedMastheadModel;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v132 = type metadata accessor for StockEarningsModel;
LABEL_25:
        sub_2204C5EE4(v154, v132);
        goto LABEL_26;
      }

LABEL_24:
      v132 = type metadata accessor for StockFeedModel;
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        goto LABEL_24;
      }

      sub_22055DC74(0, &qword_281296910, MEMORY[0x277D333C8]);
      v133 = v154;

      v134 = sub_22089030C();
      (*(*(v134 - 8) + 8))(v133, v134);
    }

LABEL_26:
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  sub_2204597F0();
  v61 = *(v60 + 64);
  v62 = v154;
  v63 = v147;
  sub_22055DC0C(&v154[*(v60 + 48)], v147, sub_22045987C);
  sub_22055DC0C(v62 + v61, v22, sub_220455030);
  v136 = sub_22045987C;
  v64 = v141;
  sub_22055D274(v63, v141, sub_22045987C);
  v135[0] = sub_220455030;
  v137 = v22;
  sub_22055D274(v22, v142, sub_220455030);
  v65 = v144;
  v66 = *(v144 + 384);
  v67 = *(v144 + 392);
  __swift_project_boxed_opaque_existential_1((v144 + 360), v66);
  v68 = v143;
  AttributionProviderType.source.getter(v66, v67);
  v69 = type metadata accessor for AttributionSource();
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  v70 = v139;
  v71 = *(v139 + 28);
  type metadata accessor for PriceFormatter();
  v72 = swift_allocObject();
  sub_22088524C();
  v73 = v148;
  *(v148 + v71) = v72;
  v74 = v70[8];
  type metadata accessor for UnitNumberFormatter();
  v75 = swift_allocObject();
  *(v75 + 16) = [objc_allocWithZone(MEMORY[0x277D698F0]) init];
  *(v73 + v74) = v75;
  sub_22055D274(v64, v73, v136);
  v76 = v142;
  sub_22055D274(v142, v73 + v70[5], v135[0]);
  v77 = v138;
  sub_22055D274(v68, v138, sub_22055D2F4);
  v78 = sub_22083AD60(v77);
  v79 = (v73 + v70[6]);
  *v79 = v78;
  v79[1] = v80;
  v79[2] = v81;
  v82 = [objc_allocWithZone(MEMORY[0x277CCABB8]) &_OBJC_LABEL_PROTOCOL___FCClearableReadingHistory];
  *(v73 + v70[9]) = v82;
  v83 = v82;
  [v83 setNumberStyle_];
  sub_22044D56C(0, &qword_28127E470);
  v84 = sub_22089205C();
  [v83 setMultiplier_];

  [v83 setMinimumFractionDigits_];
  [v83 setMaximumFractionDigits_];

  v85 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  *(v73 + v70[10]) = v85;
  v86 = v85;
  [v86 setNumberStyle_];
  [v86 setMinimumFractionDigits_];
  [v86 setMaximumFractionDigits_];

  sub_2204C5EE4(v143, sub_22055D2F4);
  sub_2204C5EE4(v76, sub_220455030);
  sub_2204C5EE4(v141, sub_22045987C);
  __swift_project_boxed_opaque_existential_1(v65 + 55, v65[58]);
  v87 = sub_22088618C();
  v89 = v146;
  if (v87)
  {
    goto LABEL_9;
  }

  if (qword_281298D20 != -1)
  {
    swift_once();
  }

  sub_220444254(&qword_281284CC8, v88, type metadata accessor for StockFeedBlueprintLayoutBuilder);
  sub_220886B3C();
  if (v163 == 1)
  {
LABEL_9:
    v90 = 1;
    v91 = 5.0;
    v92 = 20.0;
    v93 = 10.0;
    v94 = 2;
  }

  else
  {
    v90 = 0;
    v91 = 20.0;
    v93 = 6.0;
    v92 = 122.0;
    v94 = 3;
  }

  v95 = __swift_project_boxed_opaque_existential_1(v65 + 22, v65[25]);
  v96 = sub_22088C32C();
  (*(*(v96 - 8) + 16))(v89, v145, v96);
  v97 = v140;
  v98 = v89 + *(v140 + 20);
  *v98 = v94;
  *(v98 + 8) = v93;
  *(v98 + 16) = v92;
  *(v98 + 24) = v91;
  *(v98 + 32) = xmmword_2208991E0;
  *&v141 = v98 + 32;
  *(v98 + 48) = xmmword_2208991F0;
  *(v98 + 64) = 0;
  *(v98 + 72) = 0;
  *(v98 + 80) = v90;
  *(v89 + *(v97 + 24)) = 0x4038000000000000;
  v99 = v89 + *(v97 + 28);
  *v99 = xmmword_2208991F0;
  *(v99 + 16) = 0;
  *(v99 + 24) = 0;
  v100 = *(*v95 + 40);
  v101 = *(*v95 + 48);
  *&v145 = *v95;
  *&v144 = __swift_project_boxed_opaque_existential_1((v145 + 16), v100);
  v102 = sub_22088C24C();
  v103 = *(v101 + 8);
  v104 = *(v103 + 8);
  v155[3] = v100;
  v155[4] = v101;
  *&v143 = v101;
  *&v142 = __swift_allocate_boxed_opaque_existential_1(v155);
  *&v144 = v100;
  v104(v102, v100, v103);

  v105 = *v98;
  v106 = *(v98 + 8);
  v107 = *(v98 + 16);
  v108 = *(v98 + 24);
  if (*(v98 + 80))
  {
    v109 = &v181;
    v110 = &v180;
    v111 = v179;
    v112 = v148;
    v113 = v146;
    sub_2207A4F88(v148, v146, v105, v142, qword_283410C30, v145, v144, v143, v179, v106, v107, v108);
  }

  else
  {
    v109 = &v178;
    v110 = &v177;
    *&v163 = *v98;
    *(&v163 + 1) = v106;
    *&v164 = v107;
    *(&v164 + 1) = v108;
    v114 = *(v141 + 16);
    v165 = *v141;
    v166 = v114;
    v167 = *(v141 + 32);
    v111 = v176;
    v112 = v148;
    v113 = v146;
    sub_2207A43B0(v148, v146, &v163, v142, qword_283410C30, v145, v144, v143, v176);
  }

  v115 = *v109;
  v116 = *(v110 + 5);
  v160 = *(v110 + 4);
  v161 = v116;
  v162 = *(v110 + 96);
  v117 = *(v110 + 1);
  v156 = *v110;
  v157 = v117;
  v118 = *(v110 + 3);
  v158 = *(v110 + 2);
  v159 = v118;
  v119 = *(v111 + 11);
  v120 = v111[64];
  v141 = *v111;
  v121 = *(v111 + 1);
  v122 = *(v111 + 2);
  v139 = *(v111 + 3);
  v140 = v121;
  v148 = *(v111 + 200);
  v123 = *(v111 + 232);
  v144 = *(v111 + 216);
  v145 = v123;
  v124 = *(v111 + 248);
  v142 = v122;
  v143 = v124;
  v138 = *(v111 + 72);
  __swift_destroy_boxed_opaque_existential_1(v155);
  sub_2204C5EE4(v113, type metadata accessor for QuoteDetailViewLayoutOptions);
  sub_22055DC74(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel);
  v126 = v150 + *(v125 + 48);
  sub_22055D274(v112, v150, type metadata accessor for QuoteDetailViewModel);
  v127 = v140;
  *v126 = v141;
  *(v126 + 16) = v127;
  v128 = v139;
  *(v126 + 32) = v142;
  *(v126 + 48) = v128;
  *(v126 + 64) = v120;
  *(v126 + 72) = v138;
  *(v126 + 88) = v119;
  v129 = v161;
  *(v126 + 160) = v160;
  *(v126 + 176) = v129;
  *(v126 + 192) = v162;
  v130 = v157;
  *(v126 + 96) = v156;
  *(v126 + 112) = v130;
  v131 = v159;
  *(v126 + 128) = v158;
  *(v126 + 144) = v131;
  *(v126 + 216) = v144;
  *(v126 + 200) = v148;
  *(v126 + 248) = v143;
  *(v126 + 232) = v145;
  *(v126 + 264) = v115;
  swift_storeEnumTagMultiPayload();
  sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
  sub_22088BC2C();
  sub_2204C5EE4(v112, type metadata accessor for QuoteDetailViewModel);
  sub_2204C5EE4(v137, sub_220455030);
  sub_2204C5EE4(v147, sub_22045987C);
  return (*(v149 + 8))(v154, v151);
}

uint64_t sub_22055A664@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  sub_22055D99C(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v39 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088F4FC();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22088FF2C();
  v9 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22089018C();
  v29 = *(v19 - 8);
  v30 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v37 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  sub_22055CE80(0);
  v36 = v22;

  v23 = sub_22088B2BC();
  v34 = v24;
  v35 = v23;
  v25 = sub_22088B2BC();
  v32 = v26;
  v33 = v25;
  sub_22088B3BC();
  sub_220444254(&qword_281293DC8, 255, type metadata accessor for StockFeedModel);
  sub_22088AD9C();
  (*(v15 + 8))(v18, v14);
  LOBYTE(v22) = sub_22088FF0C();
  (*(v9 + 8))(v12, v31);
  if (v22)
  {
    (*(v29 + 104))(v37, *MEMORY[0x277D33180], v30);
  }

  else
  {
    sub_220444254(qword_281288C20, 255, type metadata accessor for StockFeedSectionDescriptor);
    sub_22088B34C();
  }

  sub_220444254(qword_281288C20, 255, type metadata accessor for StockFeedSectionDescriptor);
  sub_22088B35C();
  v27 = sub_22088FB4C();
  v41 = 0u;
  v42 = 0u;
  v43 = 0;
  (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
  sub_22088F4EC();
  swift_allocObject();
  sub_22055DAF8();
  result = sub_22088F4DC();
  *v40 = result;
  return result;
}

uint64_t sub_22055AB18@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v41[1] = a2;
  v3 = type metadata accessor for StockFeedLayoutModel();
  MEMORY[0x28223BE20](v3, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088C32C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v12, v13);
  v15 = (v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22055D328();
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        i = type metadata accessor for StockFeedMastheadModel;
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          goto LABEL_19;
        }

        sub_2204597F0();
        v39 = *(v38 + 48);
        sub_2204C5EE4(v15 + *(v38 + 64), sub_220455030);
        sub_2204C5EE4(v15 + v39, sub_22045987C);
      }

      v40 = sub_22088685C();
LABEL_14:
      (*(*(v40 - 8) + 8))(v15, v40);
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_22055DC74(0, &qword_281296910, MEMORY[0x277D333C8]);

        v40 = sub_22089030C();
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_18;
      }
    }

    for (i = type metadata accessor for StockFeedModel; ; i = type metadata accessor for StockEarningsModel)
    {
LABEL_17:
      sub_2204C5EE4(v15, i);
LABEL_18:
      sub_22089267C();
      __break(1u);
LABEL_19:
      ;
    }
  }

  v18 = *v15;
  v17 = v15[1];
  (*(v8 + 16))(v11, a1, v7);
  sub_22088C31C();
  v20 = v19;
  sub_22088C31C();
  sub_22088C20C();
  v22 = v21;
  v24 = v23;
  (*(v8 + 8))(v11, v7);
  sub_22044D56C(0, &qword_28127E570);
  v25 = sub_220891F2C();
  v26 = [objc_allocWithZone(MEMORY[0x277D74248]) init];
  sub_22089148C();
  v28 = v27;
  v30 = v29;

  v31 = v22 + (v20 - v22 - v24) * 0.5 - v28 * 0.5;
  v42.origin.x = v31;
  v42.origin.y = 100.0;
  v42.size.width = v28;
  v42.size.height = v30;
  v43.size.height = CGRectGetMaxY(v42);
  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = v20;
  v44 = CGRectIntegral(v43);
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  v44.origin.x = v31;
  v44.origin.y = 100.0;
  v44.size.width = v28;
  v44.size.height = v30;
  v45 = CGRectIntegral(v44);
  *v6 = v18;
  *(v6 + 1) = v17;
  *(v6 + 2) = x;
  *(v6 + 3) = y;
  *(v6 + 4) = width;
  *(v6 + 5) = height;
  *(v6 + 48) = v45;
  swift_storeEnumTagMultiPayload();
  sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
  return sub_22088BC2C();
}

uint64_t sub_22055B040@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v39 = a2;
  v41 = a3;
  v40 = type metadata accessor for StockFeedLayoutModel();
  MEMORY[0x28223BE20](v40, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088C32C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328();
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 8)
      {
        for (i = type metadata accessor for StockFeedModel; ; i = type metadata accessor for StockEarningsModel)
        {
LABEL_14:
          sub_2204C5EE4(v15, i);
LABEL_15:
          sub_22089267C();
          __break(1u);
LABEL_16:
          ;
        }
      }

      sub_22055DC74(0, &qword_281296910, MEMORY[0x277D333C8]);

      v37 = sub_22089030C();
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        i = type metadata accessor for StockFeedMastheadModel;
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          goto LABEL_16;
        }

        sub_2204597F0();
        v36 = *(v35 + 48);
        sub_2204C5EE4(&v15[*(v35 + 64)], sub_220455030);
        sub_2204C5EE4(&v15[v36], sub_22045987C);
      }

      v37 = sub_22088685C();
    }

    (*(*(v37 - 8) + 8))(v15, v37);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1((a1 + 256), *(a1 + 280));
  sub_220814B10(v46);
  v42 = v46[0];
  v43 = v46[1];
  v44 = v47;
  v45 = v48;
  (*(v8 + 16))(v11, v39, v7);
  sub_22088C31C();
  v18 = v17;
  sub_22088C31C();
  v20 = v19;
  sub_22088C20C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  (*(v8 + 8))(v11, v7);
  v56[0] = v18;
  v56[1] = v20;
  v56[2] = v22;
  v56[3] = v24;
  v56[4] = v26;
  v56[5] = v28;
  v57 = xmmword_220899200;
  v58 = 0x4026000000000000;
  sub_2205C5ADC(v56, &v49);

  v29 = v53;
  *(v6 + 4) = v52;
  *(v6 + 5) = v29;
  v30 = v55;
  *(v6 + 6) = v54;
  *(v6 + 7) = v30;
  size = v49.size;
  *v6 = v49.origin;
  *(v6 + 1) = size;
  v32 = v51;
  *(v6 + 2) = v50;
  *(v6 + 3) = v32;
  swift_storeEnumTagMultiPayload();
  sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
  return sub_22088BC2C();
}

uint64_t sub_22055B4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StockFeedLayoutSectionDescriptor.Header(0);
  v81 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StockFeedLayoutSectionDescriptor.Footer(0);
  v72 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StockFeedLayoutSectionDescriptor.Decoration(0);
  v86 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088D61C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088F39C();
  v78 = *(v23 - 8);
  v79 = v23;
  v24 = *(v78 + 16);
  v80 = a1;
  v24(a3, a1);
  v25 = *MEMORY[0x277D6E758];
  v74 = *(v19 + 104);
  v75 = v19 + 104;
  v74(v22, v25, v18);
  v26 = sub_22088F57C();
  v27 = *(v19 + 8);
  v76 = v22;
  v77 = v19 + 8;
  v73 = v27;
  v27(v22, v18);
  v28 = *(v26 + 16);
  v29 = MEMORY[0x277D84F90];
  v83 = a2;
  v84 = a3;
  v82 = v17;
  if (v28)
  {
    v70 = v18;
    v71 = v13;
    v87 = MEMORY[0x277D84F90];
    sub_22070BD34(0, v28, 0);
    v30 = v87;
    v85 = sub_22088FE7C();
    v31 = *(v85 - 8);
    v32 = *(v31 + 16);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v69 = v26;
    v34 = v26 + v33;
    v35 = *(v31 + 72);
    v36 = v81;
    do
    {
      v32(v9, v34, v85);
      v87 = v30;
      v37 = v9;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22070BD34(v38 > 1, v39 + 1, 1);
        v36 = v81;
        v30 = v87;
      }

      *(v30 + 16) = v39 + 1;
      sub_22055DC0C(v37, v30 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v39, type metadata accessor for StockFeedLayoutSectionDescriptor.Header);
      v34 += v35;
      --v28;
      v9 = v37;
    }

    while (v28);

    a2 = v83;
    a3 = v84;
    v17 = v82;
    v18 = v70;
    v13 = v71;
    v29 = MEMORY[0x277D84F90];
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  sub_22055D934(0);
  v41 = v40;
  *(a3 + *(v40 + 28)) = v30;
  v42 = v76;
  v74(v76, *MEMORY[0x277D6E750], v18);
  v43 = sub_22088F57C();
  v73(v42, v18);
  v44 = *(v43 + 16);
  v81 = v41;
  if (v44)
  {
    v87 = v29;
    sub_22070BCE4(0, v44, 0);
    v45 = v87;
    v85 = sub_22088FE7C();
    v46 = *(v85 - 8);
    v47 = *(v46 + 16);
    v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v77 = v43;
    v49 = v43 + v48;
    v50 = *(v46 + 72);
    v51 = v72;
    do
    {
      v47(v13, v49, v85);
      v87 = v45;
      v52 = v13;
      v54 = *(v45 + 16);
      v53 = *(v45 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_22070BCE4(v53 > 1, v54 + 1, 1);
        v51 = v72;
        v45 = v87;
      }

      *(v45 + 16) = v54 + 1;
      sub_22055DC0C(v52, v45 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v54, type metadata accessor for StockFeedLayoutSectionDescriptor.Footer);
      v49 += v50;
      --v44;
      v13 = v52;
    }

    while (v44);

    a2 = v83;
    a3 = v84;
    v41 = v81;
    v17 = v82;
    v29 = MEMORY[0x277D84F90];
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  *(a3 + *(v41 + 32)) = v45;
  v55 = sub_22088F56C();
  v56 = *(v55 + 16);
  if (v56)
  {
    v87 = v29;
    sub_22070BC94(0, v56, 0);
    v57 = v87;
    v58 = sub_22088F7AC();
    v59 = *(v58 - 8);
    v60 = *(v59 + 16);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v85 = v55;
    v62 = v55 + v61;
    v63 = *(v59 + 72);
    do
    {
      v60(v17, v62, v58);
      v87 = v57;
      v65 = *(v57 + 16);
      v64 = *(v57 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_22070BC94(v64 > 1, v65 + 1, 1);
        v57 = v87;
      }

      *(v57 + 16) = v65 + 1;
      sub_22055DC0C(v17, v57 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v65, type metadata accessor for StockFeedLayoutSectionDescriptor.Decoration);
      v62 += v63;
      --v56;
    }

    while (v56);

    v66 = sub_22088F58C();
    (*(*(v66 - 8) + 8))(v83, v66);
    result = (*(v78 + 8))(v80, v79);
    a3 = v84;
    v41 = v81;
  }

  else
  {

    v68 = sub_22088F58C();
    (*(*(v68 - 8) + 8))(a2, v68);
    result = (*(v78 + 8))(v80, v79);
    v57 = MEMORY[0x277D84F90];
  }

  *(a3 + *(v41 + 36)) = v57;
  return result;
}

uint64_t sub_22055BC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2204C6018;

  return sub_22054FF58(a1, a2, a3, a4);
}

void sub_22055BD54(uint64_t a1)
{
  sub_22055DBC4(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v58 = &v50 - v8;
  sub_22055D3C0();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v62 = 0;
  v63 = 0;
  v14 = 0;
  v51 = *(v15 + 80);
  v16 = MEMORY[0x277D84F90];
  v56 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = (v51 + 32) & ~v51;
  v61 = MEMORY[0x277D84F90] + v57;
  v17 = (v15 + 56);
  v52 = v15 + 48;
  v53 = v15 + 16;
  v54 = v15;
  v60 = (v15 + 32);
LABEL_4:
  v20 = *(a1 + 16);
  if (v14 != v20)
  {
    if (v14 < v20)
    {
      while (1)
      {
        v21 = *(a1 + 32 + 8 * v14);

        if (v21)
        {
          break;
        }

LABEL_9:
        ++v14;
        v22 = *(a1 + 16);
        if (v14 == v22)
        {
          goto LABEL_36;
        }

        if (v14 >= v22)
        {
          goto LABEL_42;
        }
      }

      v18 = *(v21 + 16);
      if (!v18)
      {
        (*v17)(v5, 1, 1, v10);
        sub_2204C5EE4(v5, sub_22055DBC4);
        goto LABEL_9;
      }

      v19 = 0;
      ++v14;
      while (1)
      {
        if (v19 >= v18)
        {
          goto LABEL_43;
        }

        v59 = v16;
        v23 = v54;
        v24 = *(v54 + 72);
        v63 = v19;
        (*(v54 + 16))(v5, v21 + v57 + v24 * v19, v10);
        (*(v23 + 56))(v5, 0, 1, v10);
        v25 = v58;
        sub_22055DC0C(v5, v58, sub_22055DBC4);
        if ((*(v23 + 48))(v25, 1, v10) == 1)
        {
          v16 = v59;
          goto LABEL_37;
        }

        v26 = v56;
        v55 = *v60;
        v55(v56, v25, v10);
        v27 = v59;
        v28 = v62;
        if (!v62)
        {
          break;
        }

LABEL_34:
        v42 = __OFSUB__(v28, 1);
        v43 = v28 - 1;
        if (v42)
        {
          goto LABEL_44;
        }

        v62 = v43;
        ++v63;
        v59 = v27;
        v44 = v24;
        v45 = v26;
        v46 = v61;
        v55(v61, v45, v10);
        v61 = v46 + v44;
        v16 = v59;
        v18 = *(v21 + 16);
        v19 = v63;
        if (v63 == v18)
        {
          (*v17)(v5, 1, 1, v10);
          sub_2204C5EE4(v5, sub_22055DBC4);
          goto LABEL_4;
        }
      }

      v29 = v59[3];
      if (((v29 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
      if (v30 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      sub_220454EE0(0, &qword_28127E098, sub_22055D3C0, MEMORY[0x277D84560]);
      v32 = v57;
      v62 = v31;
      v27 = swift_allocObject();
      v33 = _swift_stdlib_malloc_size(v27);
      if (!v24)
      {
        goto LABEL_47;
      }

      v34 = v33 - v32;
      if (v33 - v32 == 0x8000000000000000 && v24 == -1)
      {
        goto LABEL_48;
      }

      v36 = v32;
      v37 = v34 / v24;
      v27[2] = v62;
      v27[3] = 2 * (v34 / v24);
      v38 = v27 + v32;
      v39 = v59[3] >> 1;
      v40 = v39 * v24;
      if (!v59[2])
      {
LABEL_33:
        v61 = &v38[v40];
        v41 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - v39;

        v28 = v41;
        v26 = v56;
        goto LABEL_34;
      }

      if (v27 < v59 || v38 >= v59 + v36 + v40)
      {
        v61 = v34 / v24;
        v62 = v39;
        v50 = v38;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v27 == v59)
        {
LABEL_32:
          v59[2] = 0;
          goto LABEL_33;
        }

        v61 = v34 / v24;
        v62 = v39;
        v50 = v38;
        swift_arrayInitWithTakeBackToFront();
      }

      v37 = v61;
      v39 = v62;
      v38 = v50;
      goto LABEL_32;
    }

LABEL_42:
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
LABEL_48:
    __break(1u);
    return;
  }

LABEL_36:
  v25 = v58;
  (*v17)(v58, 1, 1, v10, v12);
LABEL_37:

  sub_2204C5EE4(v25, sub_22055DBC4);
  v47 = v16[3];
  if (v47 >= 2)
  {
    v48 = v47 >> 1;
    v42 = __OFSUB__(v48, v62);
    v49 = v48 - v62;
    if (!v42)
    {
      v16[2] = v49;
      return;
    }

    goto LABEL_45;
  }
}

uint64_t sub_22055C2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, __int128 *a12, uint64_t a13, uint64_t *a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t **a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v115 = a8;
  v113 = a7;
  v110 = a6;
  v105 = a5;
  v102 = a3;
  v103 = a4;
  v100 = a2;
  v122 = a11;
  v121 = a10;
  v120 = a9;
  v119 = a15;
  v118 = a14;
  v123 = a12;
  v116 = a13;
  v117 = a31;
  v107 = a30;
  v114 = a21;
  v106 = a20;
  v112 = a35;
  v104 = a34;
  v111 = a25;
  v101 = a29;
  v109 = a27;
  v108 = a17;
  v152 = a16;
  v153 = a26;
  v99 = a33;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v151);
  (*(*(a16 - 8) + 32))(boxed_opaque_existential_1, a1, a16);
  v149 = a22;
  v150 = a32;
  v37 = __swift_allocate_boxed_opaque_existential_1(v148);
  (*(*(a22 - 8) + 32))(v37, v100, a22);
  v146 = a18;
  v147 = a28;
  v38 = __swift_allocate_boxed_opaque_existential_1(v145);
  (*(*(a18 - 8) + 32))(v38, v102, a18);
  v143 = a23;
  v144 = a33;
  v39 = __swift_allocate_boxed_opaque_existential_1(v142);
  (*(*(a23 - 8) + 32))(v39, v103, a23);
  v140 = a19;
  v141 = a29;
  v40 = __swift_allocate_boxed_opaque_existential_1(v139);
  (*(*(a19 - 8) + 32))(v40, v105, a19);
  v137 = a24;
  v138 = a34;
  v41 = __swift_allocate_boxed_opaque_existential_1(v136);
  (*(*(a24 - 8) + 32))(v41, v110, a24);
  v134 = a20;
  v135 = a30;
  v42 = __swift_allocate_boxed_opaque_existential_1(v133);
  (*(*(a20 - 8) + 32))(v42, v113, a20);
  v131 = a17;
  v132 = a27;
  v43 = __swift_allocate_boxed_opaque_existential_1(v130);
  (*(*(a17 - 8) + 32))(v43, v115, a17);
  v128 = a25;
  v129 = a35;
  v44 = __swift_allocate_boxed_opaque_existential_1(v127);
  (*(*(a25 - 8) + 32))(v44, a13, a25);
  v125 = a21;
  v126 = a31;
  v45 = __swift_allocate_boxed_opaque_existential_1(&v124);
  (*(*(a21 - 8) + 32))(v45, a14, a21);
  v46 = swift_allocObject();
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v151, v152);
  v48 = MEMORY[0x28223BE20](v47, v47);
  v50 = (&v99 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50, v48);
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v148, v149);
  v53 = MEMORY[0x28223BE20](v52, v52);
  v55 = (&v99 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55, v53);
  v57 = __swift_mutable_project_boxed_opaque_existential_1(v145, v146);
  v58 = MEMORY[0x28223BE20](v57, v57);
  v119 = (&v99 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v60 + 16))(v58);
  v61 = __swift_mutable_project_boxed_opaque_existential_1(v142, v143);
  v62 = MEMORY[0x28223BE20](v61, v61);
  v118 = (&v99 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v64 + 16))(v62);
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v139, v140);
  v66 = MEMORY[0x28223BE20](v65, v65);
  v117 = (&v99 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v66);
  v69 = __swift_mutable_project_boxed_opaque_existential_1(v136, v137);
  v70 = MEMORY[0x28223BE20](v69, v69);
  v72 = (&v99 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v73 + 16))(v72, v70);
  v74 = __swift_mutable_project_boxed_opaque_existential_1(v133, v134);
  v75 = MEMORY[0x28223BE20](v74, v74);
  v77 = (&v99 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77, v75);
  v79 = __swift_mutable_project_boxed_opaque_existential_1(v130, v131);
  v80 = MEMORY[0x28223BE20](v79, v79);
  v82 = (&v99 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v83 + 16))(v82, v80);
  v84 = __swift_mutable_project_boxed_opaque_existential_1(v127, v128);
  v85 = MEMORY[0x28223BE20](v84, v84);
  v87 = (&v99 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v88 + 16))(v87, v85);
  v89 = *v50;
  v90 = *v55;
  v91 = *v119;
  v92 = *v118;
  v119 = *v117;
  v93 = *v72;
  v94 = *v77;
  v95 = *v82;
  v96 = *v87;
  *(v46 + 40) = type metadata accessor for StockFeedMastheadViewLayoutAttributesFactory();
  *(v46 + 48) = &off_283423DE8;
  *(v46 + 16) = v89;
  *(v46 + 80) = type metadata accessor for StockFeedPriceViewLayoutAttributesFactory();
  *(v46 + 88) = &off_283428418;
  *(v46 + 56) = v90;
  *(v46 + 120) = type metadata accessor for StockChartViewLayoutAttributesFactory();
  *(v46 + 128) = &off_28341F720;
  *(v46 + 96) = v91;
  *(v46 + 200) = type metadata accessor for QuoteDetailViewLayoutAttributesFactory();
  *(v46 + 208) = &off_283421C78;
  *(v46 + 176) = v92;
  *(v46 + 160) = type metadata accessor for StockFeedEarningsViewLayoutAttributesFactory();
  *(v46 + 168) = &off_283418190;
  *(v46 + 136) = v119;
  *(v46 + 240) = type metadata accessor for PlacardViewLayoutAttributesFactory();
  *(v46 + 248) = &off_283424018;
  *(v46 + 216) = v93;
  *(v46 + 280) = type metadata accessor for BilingualFeedPromptViewLayoutAttributesFactory();
  *(v46 + 288) = &off_283414E98;
  *(v46 + 256) = v94;
  *(v46 + 320) = type metadata accessor for BrandingTitleViewLayoutAttributesFactory();
  *(v46 + 328) = &off_28341A990;
  *(v46 + 296) = v95;
  *(v46 + 424) = type metadata accessor for StockFeedEarningsViewModelFactory();
  *(v46 + 432) = &off_283422A00;
  *(v46 + 400) = v96;
  v97 = v121;
  *(v46 + 336) = v120;
  *(v46 + 344) = v97;
  *(v46 + 352) = v122 & 1;
  sub_220457328(v123, v46 + 360);
  sub_220457328(&v124, v46 + 440);
  __swift_destroy_boxed_opaque_existential_1(v127);
  __swift_destroy_boxed_opaque_existential_1(v130);
  __swift_destroy_boxed_opaque_existential_1(v133);
  __swift_destroy_boxed_opaque_existential_1(v136);
  __swift_destroy_boxed_opaque_existential_1(v139);
  __swift_destroy_boxed_opaque_existential_1(v142);
  __swift_destroy_boxed_opaque_existential_1(v145);
  __swift_destroy_boxed_opaque_existential_1(v148);
  __swift_destroy_boxed_opaque_existential_1(v151);
  return v46;
}

void sub_22055CD20()
{
  if (!qword_2812979D0)
  {
    type metadata accessor for StockFeedLayoutSectionDescriptor(255);
    type metadata accessor for StockFeedLayoutModel();
    sub_220444254(qword_281283F90, 255, type metadata accessor for StockFeedLayoutSectionDescriptor);
    sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
    v0 = sub_22088C36C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812979D0);
    }
  }
}

void sub_22055CE14()
{
  if (!qword_28127E940)
  {
    sub_22055CE80(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E940);
    }
  }
}

void sub_22055CEA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_220444254(&unk_281288C10, 255, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_220444254(&qword_281293DD0, 255, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22055CFBC()
{
  if (!qword_28127E358)
  {
    sub_22055CF9C(255);
    sub_220444254(&qword_281296F28, 255, sub_22055CF9C);
    v0 = sub_22089268C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E358);
    }
  }
}

void sub_22055D054()
{
  if (!qword_28127E348)
  {
    sub_22055CF9C(255);
    sub_220444254(&qword_281296F28, 255, sub_22055CF9C);
    v0 = sub_22089269C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E348);
    }
  }
}

void sub_22055D120()
{
  if (!qword_28127E8F8)
  {
    sub_22055CE80(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E8F8);
    }
  }
}

void sub_22055D1DC()
{
  if (!qword_28127E378)
  {
    sub_22055CF9C(255);
    sub_220444254(&qword_281296F20, 255, sub_22055CF9C);
    v0 = sub_22089265C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E378);
    }
  }
}

uint64_t sub_22055D274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22055D328()
{
  if (!qword_281297FB0)
  {
    type metadata accessor for StockFeedModel();
    sub_220444254(&qword_281293DD0, 255, type metadata accessor for StockFeedModel);
    v0 = sub_22088ADAC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297FB0);
    }
  }
}

void sub_22055D3C0()
{
  if (!qword_281297B10)
  {
    type metadata accessor for StockFeedLayoutModel();
    sub_220444254(qword_28128E7F8, 255, type metadata accessor for StockFeedLayoutModel);
    v0 = sub_22088BC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297B10);
    }
  }
}

void sub_22055D48C()
{
  if (!qword_28127E388)
  {
    sub_22055CE80(255);
    sub_220444254(&qword_281297DE8, 255, sub_22055CE80);
    v0 = sub_22089265C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E388);
    }
  }
}

void sub_22055D524()
{
  if (!qword_2812987D0)
  {
    sub_22055D328();
    sub_220444254(&qword_281297FB8, 255, sub_22055D328);
    sub_220444254(&qword_281297FC0, 255, sub_22055D328);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812987D0);
    }
  }
}

unint64_t sub_22055D5F8()
{
  result = qword_281297E08;
  if (!qword_281297E08)
  {
    sub_22055CE80(255);
    sub_220444254(qword_281288C20, 255, type metadata accessor for StockFeedSectionDescriptor);
    sub_220444254(&qword_281293DC8, 255, type metadata accessor for StockFeedModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281297E08);
  }

  return result;
}

unint64_t sub_22055D714()
{
  result = qword_2812969B8;
  if (!qword_2812969B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2812969B8);
  }

  return result;
}

void sub_22055D82C()
{
  if (!qword_28128C4F0[0])
  {
    type metadata accessor for StockFeedMastheadModel();
    type metadata accessor for StockFeedMastheadViewLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_28128C4F0);
    }
  }
}

void sub_22055D8C0()
{
  if (!qword_28128C5A0)
  {
    type metadata accessor for StockFeedMastheadModel();
    type metadata accessor for StockFeedMastheadViewLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28128C5A0);
    }
  }
}

void sub_22055DA04()
{
  if (!qword_2812840D8)
  {
    sub_220454EE0(255, &qword_2812840E0, sub_22055D934, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812840D8);
    }
  }
}

unint64_t sub_22055DAF8()
{
  result = qword_281297FC8;
  if (!qword_281297FC8)
  {
    sub_22055D328();
    sub_220444254(&qword_281293DC8, 255, type metadata accessor for StockFeedModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281297FC8);
  }

  return result;
}

uint64_t sub_22055DC0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22055DC74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_22055DD44()
{
  if (!qword_27CF56B10)
  {
    type metadata accessor for ManageWatchlistsLayoutModel();
    sub_220444254(&qword_27CF56B18, 255, type metadata accessor for ManageWatchlistsLayoutModel);
    v0 = sub_22088BC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56B10);
    }
  }
}

void sub_22055DDDC()
{
  if (!qword_27CF56B20)
  {
    type metadata accessor for ManageWatchlistsModel();
    sub_220444254(&qword_27CF59130, 255, type metadata accessor for ManageWatchlistsModel);
    v0 = sub_22088ADAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56B20);
    }
  }
}

void sub_22055DE74()
{
  if (!qword_27CF56B28)
  {
    type metadata accessor for ManageWatchlistsModel();
    sub_22055DF30();
    sub_220444254(&qword_27CF59130, 255, type metadata accessor for ManageWatchlistsModel);
    v0 = sub_22088B39C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56B28);
    }
  }
}

unint64_t sub_22055DF30()
{
  result = qword_27CF56B30;
  if (!qword_27CF56B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56B30);
  }

  return result;
}

void sub_22055DF84()
{
  if (!qword_27CF56B38)
  {
    sub_22055DE74();
    sub_220444254(&qword_27CF56B40, 255, sub_22055DE74);
    v0 = sub_22089265C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56B38);
    }
  }
}

uint64_t sub_22055E09C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a1;
  v5 = sub_2208877BC();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088743C();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220884E9C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v49 - v21;
  v23 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = (&v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2205603E4();
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208903FC();
  v31 = sub_22089030C();
  v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
  sub_220560440(v30, sub_2205603E4);
  if (v32 != 1)
  {
    return (*(v12 + 56))(a2, 1, 1, v11);
  }

  v53 = a2;
  sub_220560168(v61, v26, type metadata accessor for StocksActivity.Article);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_220560440(v26, type metadata accessor for StocksActivity.Article);
LABEL_10:
    a2 = v53;
    return (*(v12 + 56))(a2, 1, 1, v11);
  }

  v33 = *v26;
  v34 = [*v26 contentURL];
  if (!v34)
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v61 = v33;
  v35 = v34;
  sub_220884E4C();

  v50 = *(v12 + 32);
  v50(v22, v18, v11);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_220446A58(0, &qword_281298B90);
  result = sub_2208884DC();
  if (v63)
  {
    sub_220457328(&v62, v64);
    v52 = v64[4];
    v51 = __swift_project_boxed_opaque_existential_1(v64, v64[3]);
    v37 = MEMORY[0x277D2FBB0];
    sub_220479E80(0, &unk_27CF5A400, MEMORY[0x277D2FBB0], MEMORY[0x277D84560]);
    v38 = v56;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_220899360;
    sub_2208877AC();
    *&v62 = v39;
    sub_220448958(&qword_27CF599B0, MEMORY[0x277D2FBB0]);
    sub_220479E80(0, &qword_27CF5A410, v37, MEMORY[0x277D83940]);
    sub_22055F7F4();
    v40 = v55;
    v41 = v57;
    sub_2208923FC();
    v42 = v58;
    sub_2208875FC();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v40, v41);
    (*(v12 + 8))(v22, v11);
    v44 = v59;
    v43 = v60;
    v45 = (*(v59 + 88))(v42, v60);
    if (v45 == *MEMORY[0x277D2F978] || v45 == *MEMORY[0x277D2F948])
    {
      (*(v44 + 96))(v42, v43);
      v46 = v54;
      v47 = v50;
      v50(v54, v42, v11);
      v48 = v53;
      v47(v53, v46, v11);
      (*(v12 + 56))(v48, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v53, 1, 1, v11);
      (*(v44 + 8))(v42, v43);
    }

    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_22055E754(uint64_t a1, uint64_t a2)
{
  v123 = a2;
  v118 = a1;
  v2 = sub_2208848BC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v103 = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_220479E80(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v104 = v99 - v8;
  sub_220479E80(0, &qword_2812968E8, MEMORY[0x277D33410], v5);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v106 = v99 - v11;
  v105 = sub_22089033C();
  v107 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v12);
  v101 = v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v102 = v99 - v16;
  sub_22055F760();
  v111 = v17;
  v110 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v108 = v19;
  v109 = v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2208877BC();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v20);
  v22 = v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22088743C();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v23);
  v114 = v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_220884E9C();
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122, v25);
  v117 = v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = v99 - v29;
  MEMORY[0x28223BE20](v31, v32);
  v119 = v99 - v33;
  v34 = sub_220887C9C();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v38 = v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2208876BC();
  MEMORY[0x28223BE20](v39, v40);
  v42 = (v99 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v43, v44);
  v46 = v99 - v45;
  v47 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v47, v48);
  v50 = (v99 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220560168(v123, v50, type metadata accessor for StocksActivity.Article);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2204481D8();
    v70 = v50 + *(v69 + 64);
    sub_220560104(v50, v46);
    v71 = *(v70 + 1);
    v130 = *v70;
    v131 = v71;
    v132 = *(v70 + 4);
    sub_220560168(v46, v42, MEMORY[0x277D2FB40]);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v73 = *v42;
      sub_220560230();
      (*(v35 + 32))(v38, v42 + *(v74 + 48), v34);
      v75 = sub_22055F8D0(v118, v73, v38, &v130);

      (*(v35 + 8))(v38, v34);
      sub_2205601D0(&v130, &qword_281285B20, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType, sub_220447FB4);
      sub_220560440(v46, MEMORY[0x277D2FB40]);
      return v75;
    }

    sub_2205601D0(&v130, &qword_281285B20, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType, sub_220447FB4);
    v72 = MEMORY[0x277D2FB40];
    sub_220560440(v46, MEMORY[0x277D2FB40]);
    sub_220560440(v42, v72);
    return 0;
  }

  v51 = *v50;
  ObjectType = swift_getObjectType();
  v53 = [v51 contentURL];
  if (v53)
  {
    v99[1] = ObjectType;
    v123 = v51;
    v54 = v53;
    sub_220884E4C();

    v55 = v119;
    v100 = *(v120 + 32);
    v100(v119, v30, v122);
    __swift_project_boxed_opaque_existential_1((v121 + 16), *(v121 + 40));
    sub_220446A58(0, &qword_281298B90);
    result = sub_2208884DC();
    if (!v129)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_220457328(&v128, &v130);
    __swift_project_boxed_opaque_existential_1(&v130, *(&v131 + 1));
    v57 = MEMORY[0x277D2FBB0];
    sub_220479E80(0, &unk_27CF5A400, MEMORY[0x277D2FBB0], MEMORY[0x277D84560]);
    v58 = v112;
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_220899360;
    sub_2208877AC();
    *&v128 = v59;
    sub_220448958(&qword_27CF599B0, MEMORY[0x277D2FBB0]);
    sub_220479E80(0, &qword_27CF5A410, v57, MEMORY[0x277D83940]);
    sub_22055F7F4();
    v60 = v113;
    sub_2208923FC();
    v61 = v114;
    sub_2208875FC();
    (*(v58 + 8))(v22, v60);
    v62 = v115;
    v63 = v116;
    if ((*(v115 + 88))(v61, v116) != *MEMORY[0x277D2F968])
    {
      (*(v120 + 8))(v55, v122);
      swift_unknownObjectRelease();
      (*(v62 + 8))(v61, v63);
LABEL_24:
      __swift_destroy_boxed_opaque_existential_1(&v130);
      return 0;
    }

    (*(v62 + 96))(v61, v63);
    v100(v117, v61, v122);
    v64 = v118;
    sub_22088E11C();
    if (v129)
    {
      sub_22088731C();
      if (swift_dynamicCast())
      {
        v65 = v124;
        __swift_project_boxed_opaque_existential_1((v121 + 16), *(v121 + 40));
        sub_220446A58(0, &qword_281299280);
        result = sub_2208884DC();
        if (!v129)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }

        type metadata accessor for WebViewCoordinator();
        swift_allocObject();
        v66 = v123;
        swift_unknownObjectRetain();
        v67 = sub_2206931C4(v65, v66, &v128);

        swift_unknownObjectRelease();
        v68 = v67;

        goto LABEL_16;
      }
    }

    else
    {
      sub_220560440(&v128, sub_22055F87C);
    }

    v68 = 0;
LABEL_16:
    __swift_project_boxed_opaque_existential_1((v121 + 16), *(v121 + 40));
    sub_220446A58(0, qword_281286BC0);
    v76 = v110;
    v77 = v109;
    v78 = v111;
    (*(v110 + 16))(v109, v64, v111);
    v79 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v80 = swift_allocObject();
    (*(v76 + 32))(v80 + v79, v77, v78);
    sub_2208884BC();

    if (v126)
    {
      sub_220457328(&v124, &v128);
      __swift_project_boxed_opaque_existential_1(&v128, v129);
      v81 = v107;
      v82 = v106;
      v83 = v117;
      if (v68)
      {
        v84 = type metadata accessor for WebViewCoordinator();
        v85 = &off_28341AA30;
        v86 = v68;
      }

      else
      {
        v86 = 0;
        v84 = 0;
        v85 = 0;
        *(&v124 + 1) = 0;
        v125 = 0;
      }

      *&v124 = v86;
      v126 = v84;
      v127 = v85;
      v87 = sub_220663D20(v83, &v124);
      sub_2205601D0(&v124, &qword_27CF56B50, &qword_27CF58420, &protocol descriptor for WebViewCoordinatorType, sub_220447FB4);
      if (v87)
      {
        [v87 setModalPresentationStyle_];
        swift_unknownObjectRetain();
        sub_220891DCC();
        sub_22089031C();
        v88 = v105;
        if ((*(v81 + 48))(v82, 1, v105) == 1)
        {
          swift_unknownObjectRelease();

          v89 = *(v120 + 8);
          v90 = v122;
          v89(v83, v122);
          v89(v119, v90);
          sub_2205601D0(v82, &qword_2812968E8, MEMORY[0x277D33410], MEMORY[0x277D83D88], sub_220479E80);
LABEL_29:
          __swift_destroy_boxed_opaque_existential_1(&v128);
          __swift_destroy_boxed_opaque_existential_1(&v130);
          return v87;
        }

        v93 = v102;
        (*(v81 + 32))(v102, v82, v88);
        result = [v87 view];
        if (result)
        {
          v94 = result;
          (*(v81 + 16))(v101, v93, v88);
          sub_2208848AC();
          v95 = objc_allocWithZone(sub_22088A63C());
          sub_220448958(&unk_2812968F0, MEMORY[0x277D33410]);
          v96 = sub_22088A62C();
          sub_220891F7C();
          swift_unknownObjectRelease();

          (*(v81 + 8))(v93, v88);
          v97 = *(v120 + 8);
          v98 = v122;
          v97(v117, v122);
          v97(v119, v98);
          goto LABEL_29;
        }

        goto LABEL_33;
      }

      swift_unknownObjectRelease();

      v91 = *(v120 + 8);
      v92 = v122;
      v91(v83, v122);
      v91(v119, v92);
      __swift_destroy_boxed_opaque_existential_1(&v128);
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_22055F760()
{
  if (!qword_281297140)
  {
    type metadata accessor for StocksActivity(255);
    sub_220448958(qword_2812951E0, type metadata accessor for StocksActivity);
    v0 = sub_22088E12C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297140);
    }
  }
}

unint64_t sub_22055F7F4()
{
  result = qword_27CF599C0;
  if (!qword_27CF599C0)
  {
    sub_220479E80(255, &qword_27CF5A410, MEMORY[0x277D2FBB0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF599C0);
  }

  return result;
}

void sub_22055F87C()
{
  if (!qword_28127DE00)
  {
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DE00);
    }
  }
}

uint64_t sub_22055F8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v50 = a4;
  v43 = a3;
  v53 = a2;
  v46 = sub_22088D38C();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v7);
  v45 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22055F760();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9, v13);
  v47 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088740C();
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2208871DC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = v10;
  sub_22088E11C();
  if (*(&v57 + 1))
  {
    sub_22088731C();
    if (swift_dynamicCast())
    {
      *v22 = 0x656C6369747261;
      v22[1] = 0xE700000000000000;
      (*(v19 + 104))(v22, *MEMORY[0x277CEAE50], v18);
      sub_22088804C();
      sub_2208873EC();
      v48 = a1;
      (*(v51 + 8))(v17, v52);
      sub_2208872DC();

      a1 = v48;

      (*(v19 + 8))(v22, v18);
    }
  }

  else
  {
    sub_220560440(&v56, sub_22055F87C);
  }

  v23 = v5[5];
  v48 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v23);
  sub_220446A58(0, &unk_281298AD0);
  sub_2205602A4(v50, &v56);
  v24 = v47;
  v25 = v49;
  (*(v11 + 16))(v47, a1, v49);
  v26 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v53;
  v28 = v57;
  *(v27 + 24) = v56;
  *(v27 + 40) = v28;
  *(v27 + 56) = v58;
  (*(v11 + 32))(v27 + v26, v24, v25);

  sub_2208884BC();

  if (v55)
  {
    sub_220457328(&v54, &v56);
    __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
    sub_22088806C();
    v30 = sub_220887CAC();
    __swift_destroy_boxed_opaque_existential_1(&v54);
    sub_22088804C();
    sub_2208873EC();
    (*(v51 + 8))(v17, v52);
    sub_220887EAC();

    v31 = sub_22088F0DC();
    v32 = sub_220448958(&qword_281298A58, MEMORY[0x277D300D0]);
    v33 = objc_allocWithZone(sub_22088BE5C());
    v34 = v30;
    v35 = [v33 initWithRootViewController_];
    sub_22088D89C();
    if (v31)
    {
      v36 = sub_2205604A0;
    }

    else
    {
      v36 = sub_220560398;
    }

    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    *(v37 + 24) = v32;
    v38 = v44;
    v39 = v45;
    *v45 = v36;
    v39[1] = v37;
    (*(v38 + 104))(v39, *MEMORY[0x277D6E650], v46);
    v40 = v34;
    v41 = v35;
    v42 = sub_22088D86C();
    sub_22088D88C();

    __swift_destroy_boxed_opaque_existential_1(&v56);
    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22055FF20(uint64_t a1)
{
  sub_22055F760();
  v2 = sub_22088E0FC();
  v2(a1);
}

uint64_t sub_22055FF78(uint64_t a1)
{
  sub_22055F760();

  return sub_22055FF20(a1);
}

uint64_t sub_22055FFE8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088805C();
  sub_220446A58(0, &qword_281298AA0);
  sub_22088833C();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281285B30);
  sub_22088833C();
  sub_22055F760();
  v2 = sub_22088E0FC();
  v2(a1);
}

uint64_t sub_220560104(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208876BC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220560168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205601D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_220560230()
{
  if (!qword_281298A00)
  {
    sub_22088807C();
    sub_220887C9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281298A00);
    }
  }
}

uint64_t sub_2205602A4(uint64_t a1, uint64_t a2)
{
  sub_220447FB4(0, &qword_281285B20, &qword_281285B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220560320(void *a1)
{
  sub_22055F760();

  return sub_22055FFE8(a1);
}

void sub_2205603E4()
{
  if (!qword_2812968B0)
  {
    sub_22044BB70();
    v0 = sub_2208903EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812968B0);
    }
  }
}

uint64_t sub_220560440(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for WebViewSession()
{
  result = qword_27CF56B58;
  if (!qword_27CF56B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220560518()
{
  result = sub_22088516C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2205605B0()
{
  result = qword_27CF56B68;
  if (!qword_27CF56B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56B68);
  }

  return result;
}

uint64_t sub_220560604()
{
  v1 = *v0;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  return sub_220892A2C();
}

void sub_22056064C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v83 = a1;
  v84 = a2;
  v5 = a3;
  v6 = MEMORY[0x277D83D88];
  sub_22056143C(0, &qword_281296E60, MEMORY[0x277D74D08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v80 = &v76 - v9;
  sub_22056143C(0, &qword_281299500, MEMORY[0x277CC8C40], v6);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v77 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v81 = &v76 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v78 = &v76 - v18;
  v19 = sub_22089210C();
  v79 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22056143C(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  v24 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v25 = sub_220561394();
  v26 = v24;
  v27 = sub_220891F2C();
  v82 = v25;
  *(inited + 64) = v25;
  *(inited + 40) = v27;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2205613E0(inited + 32);
  v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v29 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2205614A0(&qword_28127E6A8, type metadata accessor for Key);
  v30 = sub_22089125C();

  v31 = [v28 initWithString:v29 attributes:v30];

  if (v5)
  {
    if (v5 == 1)
    {
      sub_22089224C();
      v32 = sub_22088F0DC();
      v33 = v4[5];
      v34 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v33);
      v35 = *(v34 + 16);
      if (v32)
      {
        (*(v35 + 256))(v33);
      }

      else
      {
        (*(v35 + 128))(v33);
      }

      v55 = v77;
      sub_2208921DC();
      v56 = sub_22089214C();
      *(v57 + 8) = 0;
      v56(v85, 0);
      v58 = sub_22089214C();
      *(v59 + 24) = 0;
      v58(v85, 0);
      swift_getKeyPath();
      sub_220884BEC();
      sub_2205614A0(&qword_281299508, MEMORY[0x277D74A38]);
      v60 = v31;
      sub_220884C7C();
      v67 = sub_220884C6C();
      (*(*(v67 - 8) + 56))(v55, 0, 1, v67);
      sub_2208921AC();
      v68 = sub_220891F2C();
      v69 = [objc_opt_self() configurationWithFont:v68 scale:1];
    }

    else
    {
      sub_22089221C();
      (*(v79 + 104))(v22, *MEMORY[0x277D74FD8], v19);
      sub_22089211C();
      v50 = [objc_opt_self() tertiarySystemFillColor];
      sub_2208921CC();
      v51 = sub_22088F0DC();
      v52 = v4[5];
      v53 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v52);
      v54 = *(v53 + 16);
      if (v51)
      {
        (*(v54 + 256))(v52);
      }

      else
      {
        (*(v54 + 128))(v52);
      }

      v61 = v78;
      sub_2208921DC();
      v62 = sub_22089214C();
      *(v63 + 8) = 0x4030000000000000;
      v62(v85, 0);
      v64 = sub_22089214C();
      *(v65 + 24) = 0x4030000000000000;
      v64(v85, 0);
      swift_getKeyPath();
      sub_220884BEC();
      sub_2205614A0(&qword_281299508, MEMORY[0x277D74A38]);
      v66 = v31;
      sub_220884C7C();
      v72 = sub_220884C6C();
      (*(*(v72 - 8) + 56))(v61, 0, 1, v72);
      sub_2208921AC();
      v68 = sub_220891F2C();
      v69 = [objc_opt_self() configurationWithFont:v68 scale:1];
    }

    v73 = v69;

    sub_2208920DC();
  }

  else
  {
    sub_22089224C();
    v37 = v4[5];
    v36 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v37);
    (*(*(v36 + 16) + 256))(v37);
    sub_2208921DC();
    v39 = v4[5];
    v38 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v39);
    v40 = (*(*(v38 + 16) + 264))(v39);
    *(swift_allocObject() + 16) = v40;
    v41 = v40;
    v42 = v80;
    sub_22088EA5C();
    v43 = sub_22088EA4C();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    sub_2208921EC();
    v44 = sub_22089214C();
    *(v45 + 8) = 0x4024000000000000;
    v44(v85, 0);
    v46 = sub_22089214C();
    *(v47 + 24) = 0x4024000000000000;
    v46(v85, 0);
    swift_getKeyPath();
    sub_220884BEC();
    sub_2205614A0(&qword_281299508, MEMORY[0x277D74A38]);
    v48 = v31;
    v49 = v81;
    sub_220884C7C();
    v70 = sub_220884C6C();
    (*(*(v70 - 8) + 56))(v49, 0, 1, v70);
    sub_2208921AC();
    v71 = [objc_opt_self() configurationWithPointSize:6 weight:11.0];
    sub_2208920DC();
  }

  sub_2208921BC();
  v74 = sub_22089132C();
  v75 = [objc_opt_self() systemImageNamed_];

  sub_22089223C();
  sub_22089218C();
  sub_22089213C();
}

uint64_t sub_220561144(void *a1, char a2)
{
  if ([a1 userInterfaceIdiom] == 5)
  {
    return 0;
  }

  v5 = [a1 horizontalSizeClass];
  if (a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5 == 2)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

id sub_2205611A8()
{
  sub_22056143C(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = sub_220561394();
  v3 = v1;
  v4 = sub_220891F2C();
  *(inited + 64) = v2;
  *(inited + 40) = v4;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2205613E0(inited + 32);
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2205614A0(&qword_28127E6A8, type metadata accessor for Key);
  v7 = sub_22089125C();

  v8 = [v5 initWithString:v6 attributes:v7];

  return v8;
}

unint64_t sub_220561394()
{
  result = qword_28127E570;
  if (!qword_28127E570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E570);
  }

  return result;
}

uint64_t sub_2205613E0(uint64_t a1)
{
  sub_2204A5D84();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22056143C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2205614A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220561518@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_22045343C(0, &qword_2812968D8, MEMORY[0x277D33478]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16 - v6;
  sub_220561FE4(0, &qword_28127E208, MEMORY[0x277D844C8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220561F10();
  sub_220892A4C();
  if (!v2)
  {
    v14 = v17;
    sub_22089039C();
    sub_22044EE6C(&qword_2812968E0, MEMORY[0x277D33478]);
    sub_22089276C();
    (*(v10 + 8))(v13, v9);
    sub_220561F64(v7, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_22056174C()
{
  sub_2208929EC();
  MEMORY[0x223D8ABA0](0);
  return sub_220892A2C();
}

uint64_t sub_2205617D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2208928BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_220561864(uint64_t a1)
{
  v2 = sub_220561F10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2205618A0(uint64_t a1)
{
  v2 = sub_220561F10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2205618F4(void *a1)
{
  sub_220561FE4(0, &qword_27CF56B70, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220561F10();
  sub_220892A5C();
  sub_22089039C();
  sub_22044EE6C(&qword_27CF56B78, MEMORY[0x277D33478]);
  sub_2208927FC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_220561A7C()
{
  v33 = type metadata accessor for NewsStockFeedGroupConfigData();
  MEMORY[0x28223BE20](v33, v0);
  v32 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22088FCCC();
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v3);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045343C(0, &qword_2812985C8, MEMORY[0x277D6CF38]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v28 - v10;
  v12 = sub_22088FB9C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088519C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452BA4();
  v23 = v22;
  __swift_allocate_value_buffer(v22, qword_2812B6B88);
  __swift_project_value_buffer(v23, qword_2812B6B88);
  sub_22088518C();
  v28 = sub_22088517C();
  (*(v18 + 8))(v21, v17);
  (*(v13 + 104))(v16, *MEMORY[0x277D32628], v12);
  v24 = sub_220888F5C();
  v25 = *(*(v24 - 8) + 56);
  v25(v11, 1, 1, v24);
  v25(v29, 1, 1, v24);
  (*(v2 + 104))(v30, *MEMORY[0x277D32750], v31);
  v26 = sub_22089039C();
  (*(*(v26 - 8) + 56))(v32, 1, 1, v26);
  sub_22044EE6C(&qword_281287350, type metadata accessor for NewsStockFeedGroupConfigData);
  sub_22044EE6C(&qword_281287358, type metadata accessor for NewsStockFeedGroupConfigData);
  return sub_22088F4AC();
}

unint64_t sub_220561F10()
{
  result = qword_281287370[0];
  if (!qword_281287370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281287370);
  }

  return result;
}

uint64_t sub_220561F64(uint64_t a1, uint64_t a2)
{
  sub_22045343C(0, &qword_2812968D8, MEMORY[0x277D33478]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220561FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220561F10();
    v7 = a3(a1, &type metadata for NewsStockFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NewsStockFeedGroupConfigData.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

unint64_t sub_2205620AC()
{
  result = qword_27CF56B80;
  if (!qword_27CF56B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56B80);
  }

  return result;
}

unint64_t sub_220562104()
{
  result = qword_281287360;
  if (!qword_281287360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281287360);
  }

  return result;
}

unint64_t sub_22056215C()
{
  result = qword_281287368;
  if (!qword_281287368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281287368);
  }

  return result;
}

uint64_t sub_2205621D4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_2205622E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for ForYouFeedExpandBlueprintModifier();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v22 - v15;
  v17 = *v4;
  sub_22046DA2C(v17 + 16, &v22 - v15);
  sub_22046DA2C(v17 + 56, (v16 + 64));
  v18 = *(v9 + 28);
  v19 = sub_220885D4C();
  (*(*(v19 - 8) + 16))(&v16[v18], a4, v19);
  *(v16 + 5) = a1;
  *(v16 + 6) = a2;
  *(v16 + 7) = a3;
  sub_220562ACC(v16, v12, type metadata accessor for ForYouFeedExpandBlueprintModifier);
  sub_220524414();
  swift_allocObject();
  sub_22044E16C(&qword_281283A50, type metadata accessor for ForYouFeedExpandBlueprintModifier);

  v20 = sub_22088B66C();
  sub_220562B34(v16, type metadata accessor for ForYouFeedExpandBlueprintModifier);
  return v20;
}

uint64_t sub_2205624A0(uint64_t a1)
{
  v2 = type metadata accessor for ForYouFeedPriceChangeDisplayBlueprintModifier();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v15 - v8;
  v11 = *(v10 + 20);
  v12 = sub_220885D4C();
  (*(*(v12 - 8) + 16))(&v9[v11], a1, v12);
  *v9 = 0xD000000000000012;
  *(v9 + 1) = 0x80000002208BF650;
  sub_220562ACC(v9, v5, type metadata accessor for ForYouFeedPriceChangeDisplayBlueprintModifier);
  sub_220524414();
  swift_allocObject();
  sub_22044E16C(qword_28127F6E0, type metadata accessor for ForYouFeedPriceChangeDisplayBlueprintModifier);
  v13 = sub_22088B66C();
  sub_220562B34(v9, type metadata accessor for ForYouFeedPriceChangeDisplayBlueprintModifier);
  return v13;
}

uint64_t sub_220562634(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for ForYouFeedRefreshBlueprintModifier();
  MEMORY[0x28223BE20](refreshed, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v18 - v11;
  v13 = *v2;
  sub_22046DA2C(v13 + 16, &v18 - v11 + 16);
  sub_22046DA2C(v13 + 56, (v12 + 64));
  v14 = *(refreshed + 32);
  v15 = sub_220885D4C();
  (*(*(v15 - 8) + 16))(&v12[v14], a2, v15);
  *v12 = 0x68736572666552;
  *(v12 + 1) = 0xE700000000000000;
  *(v12 + 7) = a1;
  sub_220562ACC(v12, v8, type metadata accessor for ForYouFeedRefreshBlueprintModifier);
  sub_220524414();
  swift_allocObject();
  sub_22044E16C(&qword_2812829B8, type metadata accessor for ForYouFeedRefreshBlueprintModifier);

  v16 = sub_22088B66C();
  sub_220562B34(v12, type metadata accessor for ForYouFeedRefreshBlueprintModifier);
  return v16;
}

uint64_t sub_220562828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  sub_220524414();
  v6 = swift_allocObject();
  a5(v6, v7);
  return sub_22088B66C();
}

uint64_t sub_220562894()
{
  sub_220524414();
  swift_allocObject();
  sub_220562A24();

  return sub_22088B66C();
}

uint64_t sub_220562928()
{
  v1 = *(*v0 + 96);
  sub_220524414();
  swift_allocObject();
  sub_2205629D0();
  v2 = v1;

  return sub_22088B66C();
}

unint64_t sub_2205629D0()
{
  result = qword_2812839A0;
  if (!qword_2812839A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812839A0);
  }

  return result;
}

unint64_t sub_220562A24()
{
  result = qword_281280680;
  if (!qword_281280680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281280680);
  }

  return result;
}

unint64_t sub_220562A78()
{
  result = qword_2812834E8[0];
  if (!qword_2812834E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812834E8);
  }

  return result;
}

uint64_t sub_220562ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220562B34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_220562B94()
{
  result = qword_281281F50;
  if (!qword_281281F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281281F50);
  }

  return result;
}

uint64_t sub_220562C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_22088D83C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_220562C88()
{
  sub_220562D64(&qword_281283400);

  return sub_22088D90C();
}

uint64_t sub_220562D64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SectionHeaderViewLayoutAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LayoutSizeClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_220562E4C()
{
  result = qword_27CF56B88;
  if (!qword_27CF56B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56B88);
  }

  return result;
}

uint64_t sub_220562EA0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_220562F9C()
{
  [v0 frame];
  if (CGRectGetHeight(v14) <= 1.0)
  {
    return 0;
  }

  [v0 frame];
  if (CGRectGetWidth(v15) <= 1.0)
  {
    return 0;
  }

  sub_2205023E8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_220899920;
  v2 = [*&v0[OBJC_IVAR____TtC8StocksUI9TodayView_titleLabel] text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22089136C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(v1 + 32) = v4;
  *(v1 + 40) = v6;
  v8 = [*&v0[OBJC_IVAR____TtC8StocksUI9TodayView_brandingLabel] text];
  if (v8)
  {
    v9 = v8;
    v10 = sub_22089136C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v1 + 48) = v10;
  *(v1 + 56) = v12;
  v13 = sub_22088AD1C();

  return v13;
}

id sub_2205630F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_220563184()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8StocksUI9TodayView_isSelected;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_220563234()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8StocksUI9TodayView_isHighlighted;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_2205632E0()
{
  sub_22049F5E4(&qword_28127EE20);

  JUMPOUT(0x223D86790);
}

void sub_220563338()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8StocksUI9TodayView_titleLabel;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI9TodayView_brandingLabel;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC8StocksUI9TodayView_isSelectable) = 1;
  *(v1 + OBJC_IVAR____TtC8StocksUI9TodayView_isSelected) = 0;
  *(v1 + OBJC_IVAR____TtC8StocksUI9TodayView_isHighlightable) = 1;
  *(v1 + OBJC_IVAR____TtC8StocksUI9TodayView_isHighlighted) = 0;
  v4 = OBJC_IVAR____TtC8StocksUI9TodayView_isEditing;
  sub_2204D04D8(0, &qword_2812971A0, MEMORY[0x277D839B0], MEMORY[0x277D6EB40]);
  swift_allocObject();
  *(v1 + v4) = sub_22088DFFC();
  *(v1 + OBJC_IVAR____TtC8StocksUI9TodayView_labelAlphaValueWhenEditing) = 0x3FE0000000000000;
  *(v1 + OBJC_IVAR____TtC8StocksUI9TodayView_shouldChangeLabelAlphaWhenEditing) = 1;
  sub_22089267C();
  __break(1u);
}

uint64_t sub_2205634B0()
{
  v1 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220564734(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v7 = 0xD000000000000011;
    if (EnumCaseMultiPayload == 1)
    {
      v7 = 0x6973736553707061;
    }

    if (EnumCaseMultiPayload)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0x6973736553707061;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      return 0x6D73694464726163;
    }

    v6 = 0x7765695664656566;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v6 = 0x7765695664656566;
  }

  else
  {
    v6 = 0x6D79536863746177;
  }

  sub_2205647FC(v4, type metadata accessor for EngagementEvent);
  return v6;
}

uint64_t _s8StocksUI15EngagementEventO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v217 = a1;
  v3 = sub_220889FFC();
  v201 = *(v3 - 8);
  v202 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v191 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v190 = &v179 - v8;
  v200 = sub_2208893DC();
  v210 = *(v200 - 8);
  MEMORY[0x28223BE20](v200, v9);
  v199 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v198 = &v179 - v13;
  v14 = sub_2208897CC();
  v208 = *(v14 - 8);
  v209 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v197 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v196 = &v179 - v19;
  v216 = sub_220889B4C();
  v206 = *(v216 - 8);
  MEMORY[0x28223BE20](v216, v20);
  v195 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v194 = &v179 - v24;
  v215 = sub_22088988C();
  v207 = *(v215 - 8);
  MEMORY[0x28223BE20](v215, v25);
  v192 = &v179 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v193 = &v179 - v29;
  v30 = sub_22088733C();
  v211 = *(v30 - 8);
  v212 = v30;
  MEMORY[0x28223BE20](v30, v31);
  v189 = &v179 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v187 = &v179 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v188 = &v179 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v185 = &v179 - v41;
  MEMORY[0x28223BE20](v42, v43);
  v186 = &v179 - v44;
  MEMORY[0x28223BE20](v45, v46);
  v183 = &v179 - v47;
  MEMORY[0x28223BE20](v48, v49);
  v184 = &v179 - v50;
  MEMORY[0x28223BE20](v51, v52);
  v182 = &v179 - v53;
  MEMORY[0x28223BE20](v54, v55);
  v181 = &v179 - v56;
  MEMORY[0x28223BE20](v57, v58);
  v180 = &v179 - v59;
  v60 = sub_220889A4C();
  v213 = *(v60 - 8);
  v214 = v60;
  MEMORY[0x28223BE20](v60, v61);
  v63 = &v179 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64, v65);
  v67 = &v179 - v66;
  v68 = type metadata accessor for EngagementEvent();
  MEMORY[0x28223BE20](v68, v69);
  v205 = &v179 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71, v72);
  v204 = &v179 - v73;
  MEMORY[0x28223BE20](v74, v75);
  v203 = &v179 - v76;
  MEMORY[0x28223BE20](v77, v78);
  v80 = &v179 - v79;
  MEMORY[0x28223BE20](v81, v82);
  v84 = &v179 - v83;
  MEMORY[0x28223BE20](v85, v86);
  v88 = &v179 - v87;
  sub_220564798();
  MEMORY[0x28223BE20](v89 - 8, v90);
  v92 = &v179 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *(v93 + 56);
  sub_220564734(v217, v92);
  v95 = v94;
  sub_220564734(a2, &v92[v94]);
  v96 = v92;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v210 = v67;
    v217 = v63;
    v115 = v213;
    v114 = v214;
    v116 = v215;
    v117 = v216;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_220564734(v96, v84);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v118 = *(v207 + 32);
          v101 = v116;
          v118(v193, v84, v116);
          v118(v192, (v96 + v95), v116);
          v119 = v182;
          sub_22088987C();
          v217 = sub_22088732C();
          v121 = v120;
          v122 = v212;
          v123 = *(v211 + 8);
          v123(v119, v212);
          v124 = v184;
          sub_22088987C();
          v125 = sub_22088732C();
          v127 = v126;
          v123(v124, v122);
          if (v217 == v125 && v121 == v127)
          {
            v113 = 1;
          }

          else
          {
            v113 = sub_2208928BC();
          }

          v171 = *(v207 + 8);
          v171(v192, v101);
          v172 = &v222;
          goto LABEL_46;
        }

        (*(v207 + 8))(v84, v116);
      }

      else
      {
        sub_220564734(v96, v80);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v134 = *(v206 + 32);
          v101 = v117;
          v134(v194, v80, v117);
          v134(v195, (v96 + v95), v117);
          v135 = v183;
          sub_220889B3C();
          v136 = sub_22088732C();
          v138 = v137;
          v139 = v212;
          v140 = *(v211 + 8);
          v140(v135, v212);
          v141 = v186;
          sub_220889B3C();
          v142 = sub_22088732C();
          v144 = v143;
          v140(v141, v139);
          if (v136 == v142 && v138 == v144)
          {
            v113 = 1;
          }

          else
          {
            v113 = sub_2208928BC();
          }

          v171 = *(v206 + 8);
          v171(v195, v117);
          v172 = &v223;
          goto LABEL_46;
        }

        (*(v206 + 8))(v80, v117);
      }
    }

    else
    {
      sub_220564734(v96, v88);
      if (!swift_getEnumCaseMultiPayload())
      {
        v161 = *(v115 + 32);
        v161(v210, v88, v114);
        v161(v217, (v96 + v95), v114);
        v162 = v180;
        sub_220889A3C();
        v216 = sub_22088732C();
        v164 = v163;
        v165 = v212;
        v166 = *(v211 + 8);
        v166(v162, v212);
        v167 = v181;
        sub_220889A3C();
        v168 = sub_22088732C();
        v170 = v169;
        v166(v167, v165);
        if (v216 == v168 && v164 == v170)
        {
          v113 = 1;
        }

        else
        {
          v113 = sub_2208928BC();
        }

        v178 = *(v115 + 8);
        v178(v217, v114);
        v178(v210, v114);
        goto LABEL_52;
      }

      (*(v115 + 8))(v88, v114);
    }

    goto LABEL_36;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v98 = v92;
      v99 = v204;
      sub_220564734(v92, v204);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v100 = *(v210 + 4);
        v101 = v200;
        v100(v198, v99, v200);
        v100(v199, v96 + v94, v101);
        v102 = v187;
        sub_2208893CC();
        v103 = sub_22088732C();
        v105 = v104;
        v106 = *(v211 + 8);
        v107 = v102;
        v108 = v212;
        v106(v107, v212);
        v109 = v189;
        sub_2208893CC();
        v110 = sub_22088732C();
        v112 = v111;
        v106(v109, v108);
        v96 = v98;
        if (v103 == v110 && v105 == v112)
        {
          v113 = 1;
        }

        else
        {
          v113 = sub_2208928BC();
        }

        v171 = *(v210 + 1);
        v171(v199, v101);
        v172 = &v224;
LABEL_46:
        v173 = *(v172 - 32);
        v174 = v101;
LABEL_51:
        v171(v173, v174);
LABEL_52:
        v160 = type metadata accessor for EngagementEvent;
        goto LABEL_53;
      }

      (*(v210 + 1))(v99, v200);
    }

    else
    {
      v145 = v203;
      sub_220564734(v92, v203);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v146 = *(v208 + 32);
        v147 = v145;
        v148 = v209;
        v146(v196, v147, v209);
        v146(v197, &v92[v94], v148);
        v149 = v185;
        sub_2208897BC();
        v150 = sub_22088732C();
        v152 = v151;
        v153 = v212;
        v154 = *(v211 + 8);
        v154(v149, v212);
        v155 = v188;
        sub_2208897BC();
        v156 = sub_22088732C();
        v158 = v157;
        v154(v155, v153);
        if (v150 == v156 && v152 == v158)
        {
          v113 = 1;
        }

        else
        {
          v113 = sub_2208928BC();
        }

        v176 = v209;
        v171 = *(v208 + 8);
        v171(v197, v209);
        v173 = v196;
        v174 = v176;
        goto LABEL_51;
      }

      (*(v208 + 8))(v145, v209);
    }

    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v128 = v205;
    sub_220564734(v92, v205);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v130 = v201;
      v129 = v202;
      v131 = *(v201 + 32);
      v132 = v190;
      v131(v190, v128, v202);
      v133 = v191;
      v131(v191, v96 + v95, v129);
      sub_22056485C();
      sub_22089167C();
      sub_22089167C();
      if (v220 == v218 && v221 == v219)
      {
        v113 = 1;
      }

      else
      {
        v113 = sub_2208928BC();
      }

      v175 = *(v130 + 8);
      v175(v133, v129);
      v175(v132, v129);

      goto LABEL_52;
    }

    (*(v201 + 8))(v128, v202);
    goto LABEL_36;
  }

  v159 = swift_getEnumCaseMultiPayload();
  v160 = type metadata accessor for EngagementEvent;
  if (v159 != 6)
  {
LABEL_36:
    v113 = 0;
    v160 = sub_220564798;
    goto LABEL_53;
  }

  v113 = 1;
LABEL_53:
  sub_2205647FC(v96, v160);
  return v113 & 1;
}

uint64_t sub_220564734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220564798()
{
  if (!qword_27CF56BD8)
  {
    type metadata accessor for EngagementEvent();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF56BD8);
    }
  }
}

uint64_t sub_2205647FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22056485C()
{
  result = qword_2812982C0;
  if (!qword_2812982C0)
  {
    sub_220889FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812982C0);
  }

  return result;
}

uint64_t sub_2205648B4()
{
  sub_22054B9F8(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocClassInstance();
}

id sub_220564920()
{
  v1 = v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  sub_220565BE4(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = sub_22044D56C(0, &qword_28127E570);
  v7 = v5;
  v8 = sub_220891F2C();
  v9 = MEMORY[0x277D740C0];
  *(inited + 40) = v8;
  v10 = *v9;
  *(inited + 64) = v6;
  *(inited + 72) = v10;
  v11 = v1[5];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
  v13 = *(v12 + 16);
  v14 = *(v13 + 128);
  v15 = v10;
  v16 = v14(v11, v13);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v16;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_22089132C();

  type metadata accessor for Key(0);
  sub_2204A63B8();
  v19 = sub_22089125C();

  v20 = [v17 initWithString:v18 attributes:{v19, 0x80000002208BF8C0}];

  return v20;
}

void sub_220564C34(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v68 = a4;
  v61 = a3;
  sub_220565BE4(0, &qword_28127E448, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v64 = &v60 - v9;
  v67 = sub_22089217C();
  v10 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22089220C();
  v14 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22089210C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22089226C();
  v62 = *(v23 - 8);
  v63 = v23;
  *&v25 = MEMORY[0x28223BE20](v23, v24).n128_u64[0];
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  [a1 setPreferredBehavioralStyle_];
  sub_22089225C();
  sub_22089216C();
  (*(v19 + 104))(v22, *MEMORY[0x277D74FE0], v18);
  sub_22089211C();
  v29 = v5[5];
  v28 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v29);
  (*(*(v28 + 16) + 296))(v29);
  sub_2208921CC();
  v31 = v5[5];
  v30 = v5[6];
  v69 = v5;
  __swift_project_boxed_opaque_existential_1(v5 + 2, v31);
  (*(*(v30 + 16) + 128))(v31);
  sub_2208921DC();
  (*(v14 + 104))(v17, *MEMORY[0x277D75028], v66);
  sub_2208920FC();
  (*(v10 + 104))(v13, *MEMORY[0x277D74FF0], v67);
  sub_22089219C();
  v32 = sub_2208920EC();
  sub_22088EA1C();
  v32(aBlock, 0);
  if (v68)
  {
    sub_22044D56C(0, &qword_28127E570);
    v33 = sub_220891F2C();
    v34 = objc_opt_self();
    v35 = [v34 configurationWithFont:v33 scale:1];

    sub_2208920DC();
    if (qword_27CF55850 != -1)
    {
      swift_once();
    }

    v36 = qword_27CF6CE88;
    v37 = sub_220891F2C();
    v38 = [v34 configurationWithFont:v37 scale:1];

    v39 = [v36 imageWithConfiguration_];
    v40 = v69;
    v42 = v69[5];
    v41 = v69[6];
    __swift_project_boxed_opaque_existential_1(v69 + 2, v42);
    v43 = (*(*(v41 + 16) + 128))(v42);
    v44 = [v39 imageWithTintColor:v43 renderingMode:1];
    goto LABEL_8;
  }

  v40 = v69;
  if (!v61)
  {
LABEL_9:
    v56 = v62;
    v55 = v63;
    v57 = v64;
    (*(v62 + 16))(v64, v27, v63);
    (*(v56 + 56))(v57, 0, 1, v55);
    v58 = v65;
    sub_22089228C();
    aBlock[4] = sub_220565C48;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2205659F0;
    aBlock[3] = &block_descriptor;
    v59 = _Block_copy(aBlock);
    swift_retain_n();

    [v58 setConfigurationUpdateHandler_];
    _Block_release(v59);

    (*(v56 + 8))(v27, v55);
    return;
  }

  sub_22044D56C(0, &qword_28127E570);
  v45 = sub_220891F2C();
  v46 = objc_opt_self();
  v47 = [v46 configurationWithFont:v45 scale:1];

  sub_2208920DC();
  v48 = sub_22089132C();
  v49 = [objc_opt_self() systemImageNamed_];

  if (v49)
  {
    v50 = sub_220891F2C();
    v51 = [v46 configurationWithFont:v50 scale:1];

    v39 = [v49 imageWithConfiguration_];
    v53 = v40[5];
    v52 = v40[6];
    __swift_project_boxed_opaque_existential_1(v40 + 2, v53);
    v43 = (*(*(v52 + 16) + 128))(v53);
    v54 = [v39 imageWithTintColor:v43 renderingMode:1];

LABEL_8:
    sub_22089223C();
    sub_22089213C();
    sub_22089218C();
    goto LABEL_9;
  }

  __break(1u);
}

void sub_2205654D8(void *a1, void *a2)
{
  sub_220565BE4(0, &qword_28127E448, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v48[-v10];
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v48[-v14];
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v48[-v18];
  *&v22 = MEMORY[0x28223BE20](v20, v21).n128_u64[0];
  v24 = &v48[-v23];
  v25 = [a1 state];
  if (v25 == 4 || v25 == 1)
  {
    sub_22089227C();
    v27 = sub_22089226C();
    v28 = *(*(v27 - 8) + 48);
    if (v28(v24, 1, v27))
    {
      sub_220565C50(v24, v19);
      sub_22089228C();
      sub_220565CE4(v24);
    }

    else
    {
      v32 = a2[5];
      v31 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v32);
      (*(*(v31 + 16) + 304))(v32);
      sub_2208921CC();
      sub_22089228C();
    }

    sub_22089227C();
    if (v28(v15, 1, v27))
    {
      sub_220565C50(v15, v19);
      sub_22089228C();
      sub_220565CE4(v15);
    }

    else
    {
      v34 = a2[5];
      v33 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v34);
      (*(*(v33 + 16) + 304))(v34);
      v35 = sub_2208920EC();
      sub_22088EA2C();
      v35(v48, 0);
      sub_22089228C();
    }

    v36 = [a1 titleLabel];
    if (v36)
    {
      v37 = v36;
      [v36 setAlpha_];
    }

    v38 = [a1 imageView];
    if (v38)
    {
      v39 = v38;
      [v38 setAlpha_];
LABEL_26:
    }
  }

  else
  {
    sub_22089227C();
    v29 = sub_22089226C();
    v30 = *(*(v29 - 8) + 48);
    if (v30(v11, 1, v29))
    {
      sub_220565C50(v11, v19);
      sub_22089228C();
      sub_220565CE4(v11);
    }

    else
    {
      v41 = a2[5];
      v40 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v41);
      (*(*(v40 + 16) + 296))(v41);
      sub_2208921CC();
      sub_22089228C();
    }

    sub_22089227C();
    if (v30(v7, 1, v29))
    {
      sub_220565C50(v7, v19);
      sub_22089228C();
      sub_220565CE4(v7);
    }

    else
    {
      v43 = a2[5];
      v42 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v43);
      (*(*(v42 + 16) + 296))(v43);
      v44 = sub_2208920EC();
      sub_22088EA2C();
      v44(v48, 0);
      sub_22089228C();
    }

    v45 = [a1 titleLabel];
    if (v45)
    {
      v46 = v45;
      [v45 setAlpha_];
    }

    v47 = [a1 imageView];
    if (v47)
    {
      v39 = v47;
      [v47 setAlpha_];
      goto LABEL_26;
    }
  }
}

void sub_2205659F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_220565A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

void sub_220565BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220565C50(uint64_t a1, uint64_t a2)
{
  sub_220565BE4(0, &qword_28127E448, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220565CE4(uint64_t a1)
{
  sub_220565BE4(0, &qword_28127E448, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220565D98()
{
  sub_220565E58(&qword_27CF56BE8);

  return sub_22088D90C();
}

uint64_t sub_220565E58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220565E9C(void *a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(*(v4 + 16) + 424))(v3);
  [a1 setBackgroundColor_];

  v6 = [a1 titleLabel];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];
  }

  v9 = [a1 layer];
  [v9 setCornerCurve_];

  v10 = [a1 layer];
  [a1 frame];
  [v10 setCornerRadius_];
}

uint64_t sub_220566028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

char *sub_220566190(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI17SectionHeaderView_backgroundView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI17SectionHeaderView_titleLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC8StocksUI17SectionHeaderView_backgroundView];
  v14 = v12;
  [v14 addSubview_];
  v15 = OBJC_IVAR____TtC8StocksUI17SectionHeaderView_titleLabel;
  [v14 addSubview_];
  v16 = *&v14[v15];
  v17 = [v16 accessibilityTraits];
  v18 = v17;
  v19 = *MEMORY[0x277D76558];
  if (v17)
  {
    if ((v19 & ~v17) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v19)
  {
    v18 = 0;
    goto LABEL_7;
  }

  v18 = v19 | v17;
LABEL_7:
  [v16 setAccessibilityTraits_];

  [*&v14[v15] setNumberOfLines_];
  return v14;
}

void sub_220566460()
{
  sub_220515B94(&qword_281291728);

  JUMPOUT(0x223D86790);
}

uint64_t sub_2205664B8(uint64_t a1)
{
  sub_22056A858();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22056B7E0(a1, v5, sub_22056A858);
    v7 = sub_22089030C();
    if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {
          sub_22056AC48(v9, v10);
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      return sub_22056C1BC(v5, sub_22056A858);
    }
  }

  return result;
}

void sub_220566630(uint64_t a1, void *a2, int a3, double a4)
{
  v5 = v4;
  v75 = a3;
  v8 = *v5;
  v78 = a2;
  v79 = v8;
  v9 = sub_220889DFC();
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v66 = v11;
  v67 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v68 = &v66 - v14;
  v15 = sub_22089030C();
  v80 = *(v15 - 8);
  v81 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v69 = v17;
  v70 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v77 = &v66 - v20;
  v21 = sub_2208854FC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v74 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22056A858();
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D69160];
  sub_220569484(0, &qword_281299390, MEMORY[0x277D69160], MEMORY[0x277D83D88]);
  v32 = MEMORY[0x28223BE20](v30 - 8, v31);
  v34 = &v66 - v33;
  v35 = *(v22 + 16);
  v76 = a1;
  v35(&v66 - v33, a1, v21, v32);
  (*(v22 + 56))(v34, 0, 1, v21);
  v36 = OBJC_IVAR____TtC8StocksUI20StockChartInteractor_activeChartRange;
  swift_beginAccess();
  v37 = v34;
  v38 = v5;
  sub_22056BB10(v37, v5 + v36, &qword_281299390, v29);
  swift_endAccess();
  sub_2208903FC();
  v40 = v80;
  v39 = v81;
  v41 = (*(v80 + 48))(v28, 1, v81);
  if (v41 == 1)
  {
    v73 = v38;
    MEMORY[0x28223BE20](v41, v42);
    v43 = v76;
    *(&v66 - 2) = v44;
    *(&v66 - 1) = v43;
    sub_22056AF78();
    sub_220888FBC();
    v45 = v74;
    (v35)(v74, v43, v21);
    v46 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v47 = swift_allocObject();
    (*(v22 + 32))(v47 + v46, v45, v21);
    v48 = v47 + ((v23 + v46 + 7) & 0xFFFFFFFFFFFFFFF8);
    v49 = v78;
    *v48 = v78;
    *(v48 + 8) = a4;
    v50 = v49;
    v51 = sub_220888D9C();
    sub_220888E6C();

    swift_allocObject();
    swift_weakInit();

    v52 = sub_220888D9C();
    sub_220888E9C();
  }

  else
  {
    v53 = *(v40 + 32);
    v54 = v77;
    v53(v77, v28, v39);
    if ((v75 & 1) == 0)
    {
      v55 = *MEMORY[0x277D68D48];
      v56 = v71;
      v57 = v72;
      v58 = *(v71 + 104);
      v79 = v53;
      v59 = v68;
      v58(v68, v55, v72);
      v60 = v67;
      (*(v56 + 16))(v67, v59, v57);
      v61 = (*(v56 + 80) + 16) & ~*(v56 + 80);
      v62 = swift_allocObject();
      v73 = v38;
      (*(v56 + 32))(v62 + v61, v60, v57);
      sub_22088726C();

      (*(v56 + 8))(v59, v57);
      v63 = v70;
      v39 = v81;
      (*(v40 + 16))(v70, v54, v81);
      v64 = (*(v40 + 80) + 24) & ~*(v40 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = v73;
      v79(v65 + v64, v63, v39);

      sub_220888FEC();
    }

    (*(v40 + 8))(v54, v39);
  }
}

uint64_t sub_220566D70(uint64_t a1, uint64_t a2)
{
  sub_2206C21DC(a2);
  v2 = off_28341C150[0];
  type metadata accessor for StockChartDataManager();
  v2();
  v3 = sub_220888D9C();
  v4 = sub_220888D8C();

  return v4;
}

uint64_t sub_220566E10(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5)
{
  v128 = a4;
  v131 = a3;
  v134 = sub_2208854FC();
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v8);
  v125 = v9;
  v126 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_220569484(0, &unk_2812990E0, MEMORY[0x277D697C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v118 = v107 - v13;
  v111 = sub_220889DFC();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v14);
  v108 = v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107[1] = v15;
  MEMORY[0x28223BE20](v16, v17);
  v109 = v107 - v18;
  v127 = sub_22088543C();
  v123 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v19);
  v122 = (v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2204B0E8C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v120 = (v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = type metadata accessor for StockChartDescriptor() - 8;
  MEMORY[0x28223BE20](v121, v24);
  v135 = v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22056AF78();
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26, v28);
  v30 = v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220569484(0, &qword_2812990C0, MEMORY[0x277D697F8], v10);
  v116 = *(v31 - 8);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v124 = v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v33;
  MEMORY[0x28223BE20](v34, v35);
  v37 = v107 - v36;
  v38 = sub_22088665C();
  v136 = v38;
  v133 = *(v38 - 8);
  v39 = v133;
  MEMORY[0x28223BE20](v38, v40);
  v115 = v107 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v41;
  MEMORY[0x28223BE20](v42, v43);
  v45 = v107 - v44;
  sub_22056B7E0(a1, v30, sub_22056AF78);
  v46 = *(v27 + 56);
  v47 = *(v39 + 32);
  v114 = v39 + 32;
  v113 = v47;
  v47(v45, v30, v38);
  sub_22056B848(&v30[v46], v37);
  v129 = a2;
  v48 = *__swift_project_boxed_opaque_existential_1(a2 + 7, a2[10]);
  v130 = v37;
  v49 = v37;
  v50 = v131;
  v51 = sub_220754F34(v45, v49, v131);
  v119 = v51;
  v52 = v48[5];
  v53 = v48[6];
  __swift_project_boxed_opaque_existential_1(v48 + 2, v52);
  v54 = v120;
  sub_22088664C();
  v55 = (*(v53 + 8))(v51, v54, v52, v53);
  sub_22056C1BC(v54, sub_2204B0E8C);
  v56 = v122;
  sub_22088542C();
  v57 = v50;
  v58 = sub_220753B8C(v55, v50, v56);
  (*(v123 + 8))(v56, v127);
  v59 = *(v133 + 16);
  v60 = v135;
  v127 = v45;
  v59(v135, v45, v136);
  v61 = v121;
  v62 = *(v132 + 16);
  v63 = v57;
  v64 = v132 + 16;
  v62(&v60[*(v121 + 32)], v63, v134);
  *&v60[v61[7]] = v119;
  *&v60[v61[9]] = v55;
  v65 = v129;
  *&v60[v61[10]] = v58;
  __swift_project_boxed_opaque_existential_1(v65 + 12, v65[15]);
  v66 = sub_2206A3D20(v60, v128, a5);
  v122 = v62;
  v123 = v64;
  if (v66)
  {
    v67 = v66;
    v68 = OBJC_IVAR____TtC8StocksUI20StockChartInteractor_lastKnownQoute;
    swift_beginAccess();
    v69 = v65 + v68;
    v70 = v59;
    v120 = v59;
    sub_22056BA7C(v130, v69);
    swift_endAccess();
    v71 = *__swift_project_boxed_opaque_existential_1(v65 + 17, v65[20]);
    v72 = v118;
    v73 = v62;
    v74 = v127;
    v121 = v67;
    v75 = v136;
    v70(v118, v127, v136);
    v76 = v133 + 56;
    (*(v133 + 56))(v72, 0, 1, v75);
    v77 = OBJC_IVAR____TtC8StocksUI33StockChartCalloutViewModelFactory_chart;
    swift_beginAccess();
    sub_22056BB10(v72, v71 + v77, &unk_2812990E0, MEMORY[0x277D697C0]);
    swift_endAccess();
    v78 = v126;
    v73(v126, v131, v134);
    sub_2204B2610(v130, v124, &qword_2812990C0, MEMORY[0x277D697F8]);
    v79 = v115;
    v120(v115, v74, v136);
    v80 = v132;
    v81 = (*(v132 + 80) + 16) & ~*(v132 + 80);
    v82 = (v125 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = (*(v116 + 80) + v82 + 8) & ~*(v116 + 80);
    v84 = (v117 + *(v76 + 24) + v83) & ~*(v76 + 24);
    v85 = (v112 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v86 = swift_allocObject();
    v87 = v86 + v81;
    v88 = v134;
    (*(v80 + 32))(v87, v78, v134);
    *(v86 + v82) = v129;
    v89 = v86 + v83;
    v65 = v129;
    sub_22056B848(v124, v89);
    v90 = v79;
    v91 = v121;
    v113(v86 + v84, v90, v136);
    *(v86 + v85) = v91;

    sub_220888FEC();

    v92 = v88;
  }

  else
  {
    v93 = v110;
    v94 = v109;
    v95 = v111;
    (*(v110 + 104))(v109, *MEMORY[0x277D68D50], v111);
    v96 = v108;
    (*(v93 + 16))(v108, v94, v95);
    v97 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v98 = swift_allocObject();
    (*(v93 + 32))(v98 + v97, v96, v95);
    sub_22088726C();

    (*(v93 + 8))(v94, v95);

    sub_220888FEC();
    v92 = v134;
  }

  __swift_project_boxed_opaque_existential_1(v65 + 12, v65[15]);
  v99 = sub_2206A500C(v135, v128, a5);
  if (v99)
  {
    v100 = v99;
    v101 = v126;
    v122(v126, v131, v92);
    v102 = v132;
    v103 = (*(v132 + 80) + 16) & ~*(v132 + 80);
    v104 = (v125 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
    v105 = swift_allocObject();
    (*(v102 + 32))(v105 + v103, v101, v92);
    *(v105 + v104) = v65;
    *(v105 + ((v104 + 15) & 0xFFFFFFFFFFFFFFF8)) = v100;

    sub_220888FEC();
  }

  else
  {

    sub_220888FEC();
  }

  sub_22056C1BC(v135, type metadata accessor for StockChartDescriptor);
  sub_22056BEDC(v130, &qword_2812990C0, MEMORY[0x277D697F8]);
  return (*(v133 + 8))(v127, v136);
}

uint64_t sub_2205679E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v41 = a3;
  v42 = a4;
  v7 = sub_2208854FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22056BD2C();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D69160];
  sub_220569484(0, &qword_281299390, MEMORY[0x277D69160], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v25 = &v37 - v24;
  v26 = *(v8 + 16);
  v40 = a1;
  v26(&v37 - v24, a1, v7, v23);
  (*(v8 + 56))(v25, 0, 1, v7);
  v27 = OBJC_IVAR____TtC8StocksUI20StockChartInteractor_activeChartRange;
  swift_beginAccess();
  v28 = *(v12 + 56);
  sub_2204B2610(v25, v15, &qword_281299390, v16);
  v43 = a2;
  sub_2204B2610(a2 + v27, &v15[v28], &qword_281299390, v16);
  v29 = *(v8 + 48);
  if (v29(v15, 1, v7) != 1)
  {
    sub_2204B2610(v15, v20, &qword_281299390, MEMORY[0x277D69160]);
    if (v29(&v15[v28], 1, v7) != 1)
    {
      v31 = v39;
      (*(v8 + 32))(v39, &v15[v28], v7);
      sub_2204B0E44(&qword_2812993A0, MEMORY[0x277D69160]);
      v32 = sub_2208912FC();
      v33 = *(v8 + 8);
      v33(v31, v7);
      v34 = MEMORY[0x277D69160];
      sub_22056BEDC(v25, &qword_281299390, MEMORY[0x277D69160]);
      v33(v20, v7);
      result = sub_22056BEDC(v15, &qword_281299390, v34);
      if ((v32 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_22056BEDC(v25, &qword_281299390, MEMORY[0x277D69160]);
    (*(v8 + 8))(v20, v7);
    return sub_22056C1BC(v15, sub_22056BD2C);
  }

  sub_22056BEDC(v25, &qword_281299390, MEMORY[0x277D69160]);
  if (v29(&v15[v28], 1, v7) != 1)
  {
    return sub_22056C1BC(v15, sub_22056BD2C);
  }

  sub_22056BEDC(v15, &qword_281299390, MEMORY[0x277D69160]);
LABEL_8:
  v35 = sub_220567E98(v40, v41);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_22056B0E0(v38, v35, Strong);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220567E98(uint64_t a1, uint64_t a2)
{
  sub_220569484(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21 - v6;
  v8 = sub_2208854FC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8, v11);
  LODWORD(a1) = (*(v9 + 88))(v13, v8);
  v14 = *MEMORY[0x277D69120];
  (*(v9 + 8))(v13, v8);
  if (a1 != v14)
  {
    return sub_22064F774();
  }

  sub_2204B2610(a2, v7, &qword_2812990C0, MEMORY[0x277D697F8]);
  v15 = sub_22088676C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    sub_22056BEDC(v7, &qword_2812990C0, MEMORY[0x277D697F8]);
    return sub_22064F774();
  }

  v17 = COERCE_DOUBLE(sub_22088666C());
  v19 = v18;
  (*(v16 + 8))(v7, v15);
  if (v19)
  {
    return sub_22064F774();
  }

  return v17 < 0.0;
}

uint64_t sub_220568128()
{
  v0 = sub_22089030C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (qword_27CF55C40 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v0, qword_27CF6D2D0);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(result + OBJC_IVAR____TtC8StocksUI24StockChartViewController_stateMachine);
      if (v7)
      {
        v16 = v7;
        v8 = sub_22089132C();
        v9 = *(v1 + 16);
        v9(v4, v6, v0);
        v10 = type metadata accessor for StockChartViewController.ErrorContext(0);
        v11 = objc_allocWithZone(v10);
        v9(&v11[OBJC_IVAR____TtCC8StocksUI24StockChartViewControllerP33_E483C2B618A7CE6B48867B145DEE9A5212ErrorContext_model], v4, v0);
        v17.receiver = v11;
        v17.super_class = v10;
        v12 = objc_msgSendSuper2(&v17, sel_init);
        (*(v1 + 8))(v4, v0);
        v13 = v16;
        v14 = [v16 fireEventWithName:v8 withContext:v12];
        swift_unknownObjectRelease();

        return swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_220568380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v5 = sub_2208854FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22056BD2C();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D69160];
  sub_220569484(0, &qword_281299390, MEMORY[0x277D69160], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v36 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v32 - v21;
  (*(v6 + 16))(&v32 - v21, a1, v5, v20);
  (*(v6 + 56))(v22, 0, 1, v5);
  v23 = OBJC_IVAR____TtC8StocksUI20StockChartInteractor_activeChartRange;
  swift_beginAccess();
  v24 = *(v10 + 56);
  sub_2204B2610(v22, v13, &qword_281299390, v14);
  v35 = a2;
  sub_2204B2610(a2 + v23, &v13[v24], &qword_281299390, v14);
  v25 = *(v6 + 48);
  if (v25(v13, 1, v5) != 1)
  {
    v26 = v36;
    sub_2204B2610(v13, v36, &qword_281299390, MEMORY[0x277D69160]);
    if (v25(&v13[v24], 1, v5) != 1)
    {
      v28 = v34;
      (*(v6 + 32))(v34, &v13[v24], v5);
      sub_2204B0E44(&qword_2812993A0, MEMORY[0x277D69160]);
      v29 = sub_2208912FC();
      v30 = *(v6 + 8);
      v30(v28, v5);
      v31 = MEMORY[0x277D69160];
      sub_22056BEDC(v22, &qword_281299390, MEMORY[0x277D69160]);
      v30(v26, v5);
      result = sub_22056BEDC(v13, &qword_281299390, v31);
      if ((v29 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_22056BEDC(v22, &qword_281299390, MEMORY[0x277D69160]);
    (*(v6 + 8))(v26, v5);
    return sub_22056C1BC(v13, sub_22056BD2C);
  }

  sub_22056BEDC(v22, &qword_281299390, MEMORY[0x277D69160]);
  if (v25(&v13[v24], 1, v5) != 1)
  {
    return sub_22056C1BC(v13, sub_22056BD2C);
  }

  sub_22056BEDC(v13, &qword_281299390, MEMORY[0x277D69160]);
LABEL_8:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_22056B3DC(v33);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220568804()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_220890F6C();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220568888(uint64_t a1)
{
  v2 = sub_220889DFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  sub_220569484(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25 - v12;
  sub_220891ADC();
  sub_22048D7F8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220899360;
  v28 = 0;
  v29 = 0xE000000000000000;
  v27 = a1;
  sub_2204446D4(0, &qword_28127DE30);
  sub_22089264C();
  v15 = v28;
  v16 = v29;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_22048D860();
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  sub_22048D2F4();
  v17 = sub_2208922DC();
  sub_22088A7EC();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = sub_22088676C();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    v21 = OBJC_IVAR____TtC8StocksUI20StockChartInteractor_lastKnownQoute;
    swift_beginAccess();
    sub_22056BB10(v13, v19 + v21, &qword_2812990C0, MEMORY[0x277D697F8]);
    swift_endAccess();
    (*(v3 + 104))(v9, *MEMORY[0x277D68D40], v2);
    v22 = v26;
    (*(v3 + 16))(v26, v9, v2);
    v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v24 = swift_allocObject();
    (*(v3 + 32))(v24 + v23, v22, v2);
    sub_22088726C();

    (*(v3 + 8))(v9, v2);

    sub_220888FEC();
  }

  return result;
}

uint64_t sub_220568C64()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (qword_28128C708 != -1)
    {
      swift_once();
    }

    v0 = sub_22089030C();
    v1 = __swift_project_value_buffer(v0, qword_2812B6A18);
    sub_22056B618(v1);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_220890F6C();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220568D50(uint64_t a1, uint64_t a2)
{
  v3 = sub_22089030C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v9 = *(result + OBJC_IVAR____TtC8StocksUI24StockChartViewController_stateMachine);
      if (v9)
      {
        v18 = v9;
        v10 = sub_22089132C();
        v11 = *(v4 + 16);
        v11(v7, a2, v3);
        v12 = type metadata accessor for StockChartViewController.ErrorContext(0);
        v13 = objc_allocWithZone(v12);
        v11(&v13[OBJC_IVAR____TtCC8StocksUI24StockChartViewControllerP33_E483C2B618A7CE6B48867B145DEE9A5212ErrorContext_model], v7, v3);
        v19.receiver = v13;
        v19.super_class = v12;
        v14 = objc_msgSendSuper2(&v19, sel_init);
        (*(v4 + 8))(v7, v3);
        v15 = v18;
        v16 = [v18 fireEventWithName:v10 withContext:v14];
        swift_unknownObjectRelease();

        return swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_220568F68()
{
  sub_220569484(0, &qword_281299390, MEMORY[0x277D69160], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v14 - v3;
  v5 = sub_2208854FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0[22] + 72))
  {
    *(v0 + OBJC_IVAR____TtC8StocksUI20StockChartInteractor_needRefresh) = 1;
  }

  else
  {
    v10 = OBJC_IVAR____TtC8StocksUI20StockChartInteractor_activeChartRange;
    swift_beginAccess();
    sub_2204B2610(v0 + v10, v4, &qword_281299390, MEMORY[0x277D69160]);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_22056BEDC(v4, &qword_281299390, MEMORY[0x277D69160]);
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      v11 = v0[24];
      if (v11)
      {
        v12 = *(v0 + 25);
        v13 = v11;
        sub_220566630(v9, v13, 0, v12);
      }

      (*(v6 + 8))(v9, v5);
    }
  }
}

uint64_t sub_2205691A4()
{
  sub_22054B9F8(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  sub_22056BEDC(v0 + OBJC_IVAR____TtC8StocksUI20StockChartInteractor_activeChartRange, &qword_281299390, MEMORY[0x277D69160]);
  sub_22056BEDC(v0 + OBJC_IVAR____TtC8StocksUI20StockChartInteractor_lastKnownQoute, &qword_2812990C0, MEMORY[0x277D697F8]);
  return v0;
}

uint64_t sub_22056925C()
{
  sub_2205691A4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockChartInteractor()
{
  result = qword_28128EC30;
  if (!qword_28128EC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220569308()
{
  sub_220569484(319, &qword_281299390, MEMORY[0x277D69160], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_220569484(319, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_220569484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2205694E8(uint64_t a1, void *a2, int a3)
{
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = *(v3 + 192);
  *(v3 + 192) = a2;
  *(v3 + 200) = v9;
  v11 = a2;

  sub_220566630(a1, v11, a3, v9);
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  sub_2204B0E44(&qword_28128EC48, type metadata accessor for StockChartInteractor);
  sub_220886C6C();
}

uint64_t sub_2205696E0(uint64_t a1)
{
  v41 = a1;
  v2 = sub_22088665C();
  v42 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_220569484(0, &unk_2812993E0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v37 - v8;
  v39 = type metadata accessor for StockChartCalloutViewModel(0);
  MEMORY[0x28223BE20](v39, v10);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v40 = &v37 - v14;
  v15 = MEMORY[0x277D69160];
  sub_220569484(0, &qword_281299390, MEMORY[0x277D69160], v5);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v37 - v18;
  v20 = sub_2208854FC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC8StocksUI20StockChartInteractor_activeChartRange;
  swift_beginAccess();
  sub_2204B2610(v1 + v25, v19, &qword_281299390, v15);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_22056BEDC(v19, &qword_281299390, MEMORY[0x277D69160]);
  }

  (*(v21 + 32))(v24, v19, v20);
  v27 = *__swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
  v28 = OBJC_IVAR____TtC8StocksUI33StockChartCalloutViewModelFactory_chart;
  swift_beginAccess();
  v29 = v42;
  if ((*(v42 + 48))(v27 + v28, 1, v2))
  {
    v30 = sub_22088543C();
    (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
    sub_22056BEDC(v9, &unk_2812993E0, MEMORY[0x277CC9A70]);
  }

  else
  {
    v31 = v27 + v28;
    v32 = v37;
    (*(v29 + 16))(v37, v31, v2);
    sub_22088659C();
    (*(v29 + 8))(v32, v2);
    v33 = sub_22088543C();
    (*(*(v33 - 8) + 56))(v9, 0, 1, v33);
    sub_22056BEDC(v9, &unk_2812993E0, MEMORY[0x277CC9A70]);
    sub_22056BDC0();
    v35 = v38;
    (*(*(v34 - 8) + 16))(v38, v41, v34);
    (*(v21 + 16))(v35 + *(v39 + 20), v24, v20);
    sub_22088542C();
    v36 = v40;
    sub_22056C050(v35, v40, type metadata accessor for StockChartCalloutViewModel);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_22056BF4C(v36);
      swift_unknownObjectRelease();
    }

    sub_22056C1BC(v36, type metadata accessor for StockChartCalloutViewModel);
  }

  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_220569C68(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v3 = sub_22088665C();
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_220569484(0, &unk_2812993E0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v41 - v9;
  v44 = type metadata accessor for StockChartRangeCalloutViewModel(0);
  MEMORY[0x28223BE20](v44, v11);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v45 = &v41 - v15;
  v16 = MEMORY[0x277D69160];
  sub_220569484(0, &qword_281299390, MEMORY[0x277D69160], v6);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v41 - v19;
  v21 = sub_2208854FC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC8StocksUI20StockChartInteractor_activeChartRange;
  swift_beginAccess();
  sub_2204B2610(v2 + v26, v20, &qword_281299390, v16);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_22056BEDC(v20, &qword_281299390, MEMORY[0x277D69160]);
  }

  (*(v22 + 32))(v25, v20, v21);
  v28 = *__swift_project_boxed_opaque_existential_1((v2 + 136), *(v2 + 160));
  v29 = OBJC_IVAR____TtC8StocksUI33StockChartCalloutViewModelFactory_chart;
  swift_beginAccess();
  v30 = v48;
  if ((*(v48 + 48))(v28 + v29, 1, v3))
  {
    v31 = sub_22088543C();
    (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
    sub_22056BEDC(v10, &unk_2812993E0, MEMORY[0x277CC9A70]);
  }

  else
  {
    v32 = v28 + v29;
    v33 = v42;
    (*(v30 + 16))(v42, v32, v3);
    sub_22088659C();
    (*(v30 + 8))(v33, v3);
    v34 = sub_22088543C();
    (*(*(v34 - 8) + 56))(v10, 0, 1, v34);
    sub_22056BEDC(v10, &unk_2812993E0, MEMORY[0x277CC9A70]);
    sub_22056BDC0();
    v36 = v35;
    v37 = *(*(v35 - 8) + 16);
    v38 = v43;
    v37(v43, v46, v35);
    v39 = v44;
    v37((v38 + *(v44 + 20)), v47, v36);
    (*(v22 + 16))(v38 + *(v39 + 24), v25, v21);
    sub_22088542C();
    v40 = v45;
    sub_22056C050(v38, v45, type metadata accessor for StockChartRangeCalloutViewModel);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_22056C0B8(v40);
      swift_unknownObjectRelease();
    }

    sub_22056C1BC(v40, type metadata accessor for StockChartRangeCalloutViewModel);
  }

  return (*(v22 + 8))(v25, v21);
}

void sub_22056A210()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_22088AEFC();
      swift_unknownObjectRelease();
      v3 = *(v2 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_activeCallout);
      *(v2 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_activeCallout) = 0xF000000000000007;
      sub_22056BEC4(v3);
    }

    swift_unknownObjectRelease();
  }

  if (*(v0 + OBJC_IVAR____TtC8StocksUI20StockChartInteractor_needRefresh) == 1)
  {
    *(v0 + OBJC_IVAR____TtC8StocksUI20StockChartInteractor_needRefresh) = 0;

    sub_220568F68();
  }
}

uint64_t sub_22056A3BC(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_22088676C();
  v44 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220569484(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v42 - v18;
  v20 = v2;
  (*(v7 + 16))(v10, *(v2 + 32) + OBJC_IVAR____TtC8StocksUI21StockChartDataManager_stock, v6, v17);
  v21 = sub_22088681C();
  v23 = v22;
  (*(v7 + 8))(v10, v6);
  v24 = v43;
  if (*(v43 + 16))
  {
    v25 = sub_2204AF97C(v21, v23);
    v27 = v26;

    if (v27)
    {
      v28 = v44;
      (*(v44 + 16))(v19, *(v24 + 56) + *(v44 + 72) * v25, v3);
      v29 = 0;
      v30 = v20;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v29 = 1;
  v30 = v20;
  v28 = v44;
LABEL_6:
  v31 = 1;
  (*(v28 + 56))(v19, v29, 1, v3);
  v32 = OBJC_IVAR____TtC8StocksUI20StockChartInteractor_lastKnownQoute;
  swift_beginAccess();
  v33 = *(v28 + 48);
  if (v33(v30 + v32, 1, v3))
  {
    v34 = 0.0;
  }

  else
  {
    v35 = v42;
    (*(v28 + 16))(v42, v30 + v32, v3);
    v36 = sub_22088675C();
    v31 = v37;
    (*(v28 + 8))(v35, v3);
    v34 = *&v36;
  }

  sub_2204B2610(v19, v14, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v33(v14, 1, v3) == 1)
  {
    sub_22056BEDC(v14, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v31)
    {
      return sub_22056BEDC(v19, &qword_2812990C0, MEMORY[0x277D697F8]);
    }

    goto LABEL_17;
  }

  v38 = COERCE_DOUBLE(sub_22088675C());
  v40 = v39;
  (*(v28 + 8))(v14, v3);
  if (v31)
  {
    if (v40)
    {
      return sub_22056BEDC(v19, &qword_2812990C0, MEMORY[0x277D697F8]);
    }

    goto LABEL_17;
  }

  if ((v40 & 1) != 0 || v34 != v38)
  {
LABEL_17:
    sub_220568F68();
  }

  return sub_22056BEDC(v19, &qword_2812990C0, MEMORY[0x277D697F8]);
}

void sub_22056A858()
{
  if (!qword_2812968C8)
  {
    sub_22056A8B4();
    v0 = sub_2208903EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812968C8);
    }
  }
}

unint64_t sub_22056A8B4()
{
  result = qword_28128C700;
  if (!qword_28128C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128C700);
  }

  return result;
}

uint64_t sub_22056A908(uint64_t a1, uint64_t a2)
{
  v3 = sub_220889DFC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220889E1C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a2, v3, v11);
  sub_220889E0C();
  sub_220569484(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v14 = sub_220886F8C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_220899360;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x277CEAD18], v14);
  sub_2204B0E44(&qword_281298308, MEMORY[0x277D68D60]);
  sub_220886F1C();

  (*(v9 + 8))(v13, v8);
  sub_220889E5C();
  sub_2204B0E44(&qword_281298300, MEMORY[0x277D68D90]);
  memset(v19, 0, sizeof(v19));
  sub_220886F3C();
  return sub_22056C1BC(v19, sub_22055F87C);
}

id sub_22056AC48(uint64_t a1, char *a2)
{
  sub_220569484(0, &qword_281299390, MEMORY[0x277D69160], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19 - v5;
  v7 = sub_2208854FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*&a2[OBJC_IVAR____TtC8StocksUI24StockChartViewController_dateRangePicker] + OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl);
  sub_22088B59C();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_22056BEDC(v6, &qword_281299390, MEMORY[0x277D69160]);
  }

  result = (*(v8 + 32))(v11, v6, v7);
  v14 = *&a2[OBJC_IVAR____TtC8StocksUI24StockChartViewController_stateMachine];
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  v15 = v14;
  v16 = sub_22089132C();

  result = [a2 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v17 = result;
  v18 = [result traitCollection];

  type metadata accessor for StockChartInteractor();
  sub_2205694E8(v11, v18, 0);

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_22056AEF8()
{
  v1 = *(sub_22089030C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_220568D50(v2, v3);
}

void sub_22056AF78()
{
  if (!qword_2812990D0)
  {
    sub_22088665C();
    sub_220569484(255, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812990D0);
    }
  }
}

uint64_t sub_22056B018(uint64_t a1, void *a2)
{
  v5 = *(sub_2208854FC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_220566E10(a1, a2, v2 + v6, *v7, *(v7 + 8));
}

void sub_22056B0E0(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  sub_220569484(0, &qword_28127ED80, sub_22056BDC0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v26[-v12];
  v14 = sub_220890D4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(a3 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_stateMachine);
  if (v19)
  {
    v20 = v19;
    v21 = sub_22089132C();

    v27 = a1;
    v22 = (a3 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_styler);
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_22058113C(a2, v18);
    sub_220890F5C();
    (*(v15 + 8))(v18, v14);
    *(*(a3 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_interactionHandler) + OBJC_IVAR____TtC8StocksUI28StockChartInteractionHandler_trend) = a2;
    sub_22056BDC0();
    v24 = v23;
    v25 = *(*(v23 - 8) + 56);
    v25(v13, 1, 1, v23);
    v25(v9, 1, 1, v24);
    sub_2207343C4(v13, v9);
    sub_22056BEDC(v9, &qword_28127ED80, sub_22056BDC0);
    sub_22056BEDC(v13, &qword_28127ED80, sub_22056BDC0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22056B3DC(uint64_t a1)
{
  v2 = sub_220890E1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = a1;
    v8 = (result + OBJC_IVAR____TtC8StocksUI24StockChartViewController_styler);
    swift_beginAccess();
    v9 = *__swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_220569484(0, &qword_28127DF18, MEMORY[0x277D6C630], MEMORY[0x277D84560]);
    sub_220890C3C();
    *(swift_allocObject() + 16) = xmmword_220899360;
    v11 = v9[10];
    v10 = v9[11];
    __swift_project_boxed_opaque_existential_1(v9 + 7, v11);
    (*(*(v10 + 16) + 392))(v11);
    sub_220890C2C();
    sub_220890E0C();
    sub_220890F5C();
    (*(v3 + 8))(v6, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22056B618(uint64_t a1)
{
  v2 = sub_22089030C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC8StocksUI24StockChartViewController_stateMachine);
    if (v8)
    {
      v9 = v8;
      v10 = sub_22089132C();
      v11 = *(v3 + 16);
      v11(v6, a1, v2);
      v12 = type metadata accessor for StockChartViewController.ErrorContext(0);
      v13 = objc_allocWithZone(v12);
      v11(&v13[OBJC_IVAR____TtCC8StocksUI24StockChartViewControllerP33_E483C2B618A7CE6B48867B145DEE9A5212ErrorContext_model], v6, v2);
      v16.receiver = v13;
      v16.super_class = v12;
      v14 = objc_msgSendSuper2(&v16, sel_init);
      (*(v3 + 8))(v6, v2);
      v15 = [v9 fireEventWithName:v10 withContext:v14];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_22056B7E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22056B848(uint64_t a1, uint64_t a2)
{
  sub_220569484(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = sub_220889DFC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22056B964(uint64_t a1)
{
  v3 = *(sub_220889DFC() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22056A908(a1, v4);
}

uint64_t sub_22056B9E4()
{
  v1 = *(sub_2208854FC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_220568380(v0 + v2, v4, v5);
}

uint64_t sub_22056BA7C(uint64_t a1, uint64_t a2)
{
  sub_220569484(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22056BB10(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220569484(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22056BB90()
{
  v1 = *(sub_2208854FC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_220569484(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  v5 = (v3 + *(*(v4 - 8) + 80) + 8) & ~*(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = *(sub_22088665C() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v0 + v3);
  v10 = *(v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2205679E8(v0 + v2, v9, v0 + v5, v0 + v8, v10);
}

void sub_22056BD2C()
{
  if (!qword_281299388)
  {
    sub_220569484(255, &qword_281299390, MEMORY[0x277D69160], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281299388);
    }
  }
}

void sub_22056BDC0()
{
  if (!qword_28127ED88)
  {
    sub_220890E5C();
    v0 = MEMORY[0x277D6C6B0];
    sub_2204B0E44(&qword_28127EDB8, MEMORY[0x277D6C6B0]);
    sub_2204B0E44(&qword_28127EDC8, v0);
    sub_2204B0E44(&qword_28127EDC0, v0);
    v1 = sub_220890EBC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127ED88);
    }
  }
}

void sub_22056BEC4(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t sub_22056BEDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220569484(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_22056BF4C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_2207FE4CC(result, a1);
    result = [v3 view];
    if (result)
    {
      v5 = result;
      [result layoutMargins];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = *&v3[OBJC_IVAR____TtC8StocksUI24StockChartViewController_calloutViewProvider + 24];
      v15 = *&v3[OBJC_IVAR____TtC8StocksUI24StockChartViewController_calloutViewProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC8StocksUI24StockChartViewController_calloutViewProvider], v14);
      v16[0] = v7;
      v16[1] = v9;
      v16[2] = v11;
      v16[3] = v13;
      (*(v15 + 16))(a1, v4, v16, v14, v15);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22056C050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_22056C0B8(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_2207FE5EC(result, a1);
    result = [v3 view];
    if (result)
    {
      v5 = result;
      [result layoutMargins];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = *&v3[OBJC_IVAR____TtC8StocksUI24StockChartViewController_rangeCalloutViewProvider + 24];
      v15 = *&v3[OBJC_IVAR____TtC8StocksUI24StockChartViewController_rangeCalloutViewProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC8StocksUI24StockChartViewController_rangeCalloutViewProvider], v14);
      v16[0] = v7;
      v16[1] = v9;
      v16[2] = v11;
      v16[3] = v13;
      (*(v15 + 16))(a1, v4, v16, v14, v15);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22056C1BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22056C220(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22056C268(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22056C2B4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();
  v4 = v3;

  qword_2812B6D80 = v2;
  *algn_2812B6D88 = v4;
}

uint64_t sub_22056C380(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2208928BC();
  }
}

uint64_t type metadata accessor for StockSearchCellViewLayoutOptions()
{
  result = qword_27CF56C00;
  if (!qword_27CF56C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22056C434()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t sub_22056C5E8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_22056C6B4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t sub_22056C7A0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_2206C1FA0(sub_2204CB288, v4);
}

void sub_22056C8C0(void *a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v52 = a3;
  v51 = a2;
  v4 = sub_22088F11C();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v56 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22088F14C();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v7);
  v53 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22088F17C();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v54, v11);
  v12 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v60 = v48 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v59 = v48 - v18;
  v19 = sub_22088CC6C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22089132C();
  v25 = [a1 objectForKey_];

  if (v25)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  aBlock = v67;
  v64 = v68;
  if (*(&v68 + 1))
  {
    v50 = v20;
    sub_22044D56C(0, &qword_27CF56C10);
    if (swift_dynamicCast())
    {
      v26 = v61;
      v27 = [v61 isCollapsed];

      if (v27)
      {
        v28 = sub_22089132C();
        v29 = [a1 objectForKey_];

        if (!v29)
        {
          goto LABEL_13;
        }

        sub_2208923BC();
        swift_unknownObjectRelease();
        sub_2204A62A4(&v67, &aBlock);
        sub_22056D25C();
        swift_dynamicCast();
        v30 = v61;
        v49 = v62;
        v48[1] = swift_getObjectType();
        v31 = v50;
        (*(v50 + 104))(v23, *MEMORY[0x277D6E260], v19);
        sub_22088D08C();

        (*(v31 + 8))(v23, v19);
      }
    }
  }

  else
  {
    sub_22056D130(&aBlock);
  }

  v50 = v4;
  v32 = sub_22089132C();
  v33 = [a1 objectForKey_];

  if (v33)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v67, &aBlock);
    type metadata accessor for StockListViewController();
    swift_dynamicCast();
    v49 = v61;
    sub_22088C71C();
    v34 = sub_22088BFCC();

    v35 = swift_allocObject();
    *(v35 + 16) = v51;
    *(v35 + 24) = v52;

    v36 = v59;
    sub_22088F15C();
    sub_22044D56C(0, &qword_28127E7C0);
    v51 = sub_220891D0C();
    sub_22088F16C();
    sub_22088F18C();
    v52 = *(v9 + 8);
    v37 = v54;
    v52(v12, v54);
    (*(v9 + 16))(v12, v36, v37);
    v38 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = 0x3FF0000000000000;
    *(v39 + 24) = 0;
    *(v39 + 32) = v34;
    *(v39 + 40) = sub_22056D18C;
    *(v39 + 48) = v35;
    (*(v9 + 32))(v39 + v38, v12, v37);
    v65 = sub_22056D194;
    v66 = v39;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v64 = sub_2204C35E8;
    *(&v64 + 1) = &block_descriptor_0;
    v40 = _Block_copy(&aBlock);
    v41 = v34;

    v42 = v53;
    sub_22088F13C();
    *&aBlock = MEMORY[0x277D84F90];
    sub_22046275C(&qword_281296CA0, MEMORY[0x277D85198]);
    sub_22056D204();
    sub_22046275C(&qword_28127EA50, sub_22056D204);
    v43 = v56;
    v44 = v50;
    sub_2208923FC();
    v45 = v60;
    v46 = v51;
    MEMORY[0x223D89E80](v60, v42, v43, v40);
    _Block_release(v40);

    (*(v58 + 8))(v43, v44);
    (*(v55 + 8))(v42, v57);
    v47 = v52;
    v52(v45, v37);
    v47(v59, v37);
    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_22056D130(uint64_t a1)
{
  sub_22055F87C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22056D194()
{
  v1 = *(sub_22088F17C() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_2206C1318(v2, v3, v4, v5, v6, v7);
}

void sub_22056D204()
{
  if (!qword_28127EA60)
  {
    sub_22088F11C();
    v0 = sub_2208917AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127EA60);
    }
  }
}

unint64_t sub_22056D25C()
{
  result = qword_27CF56C18;
  if (!qword_27CF56C18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CF56C18);
  }

  return result;
}

uint64_t sub_22056D2E0(uint64_t a1, int a2)
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

uint64_t sub_22056D328(uint64_t result, int a2, int a3)
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

uint64_t sub_22056D380()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 16) + 48))(v2);
}
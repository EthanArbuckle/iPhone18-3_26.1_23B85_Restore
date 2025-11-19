uint64_t sub_267520FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v14 = type metadata accessor for _SnippetHostingView(0, v16);
  return sub_2675209EC(v12, v14);
}

void (*sub_2675210AC(void *a1))(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_2675215FC;
}

uint64_t sub_267521110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = *(v7 + 64);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v25 - v15;
  if (qword_2801C7088 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v17 = sub_267533504();
  __swift_project_value_buffer(v17, qword_2801C7AD0);
  v18 = sub_2675334E4();
  v19 = sub_267533B54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_267507000, v18, v19, "SnippetHostView.updateUIViewController(_:context:)", v20, 2u);
    MEMORY[0x26D5F8BD0](v20, -1, -1);
  }

  sub_267521770(v16);
  sub_2675209A8(a3);
  v21 = *(a3 + 40);
  v22 = sub_2675339B4();
  v23 = *(v6 + 8);
  v23(v13, v4);
  result = (v23)(v16, v4);
  if ((v22 & 1) == 0)
  {
    sub_2675209A8(a3);
    return sub_267521ABC(v16);
  }

  return result;
}

uint64_t sub_26752130C()
{
  if (qword_2801C7088 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = sub_267533504();
  __swift_project_value_buffer(v0, qword_2801C7AD0);
  v1 = sub_2675334E4();
  v2 = sub_267533B54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_267507000, v1, v2, "SnippetHostView.dismantleUIViewController(_:coordinator:)", v3, 2u);
    MEMORY[0x26D5F8BD0](v3, -1, -1);
  }

  return sub_267522DFC();
}

uint64_t sub_2675213EC()
{
  v1 = *(v0 + 32);
  v13[0] = *(v0 + 16);
  v12 = *&v13[0];
  v13[1] = v1;
  v2 = (type metadata accessor for _SnippetHostingView(0, v13) - 8);
  v3 = *(*v2 + 64);
  v4 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  v5 = *(v4 + 8);

  v6 = (v4 + v2[15]);
  v7 = *v6;

  v8 = *(v6 + 1);

  v9 = sub_267533914();
  (*(*(v12 - 8) + 8))(&v6[*(v9 + 32)], v12);
  v10 = *(v4 + v2[16]);

  return swift_deallocObject();
}

uint64_t sub_267521518(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for _SnippetHostingView(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_267520FBC(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_2675215C4()
{

  return swift_deallocObject();
}

uint64_t sub_2675216B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 32) - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = *a2;
  return sub_267521ABC(v7);
}

uint64_t sub_267521770@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + 0x50);
  sub_267533C64();
  OUTLINED_FUNCTION_0();
  v28[0] = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8, v9);
  v11 = v28 - v10;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7D30, &qword_267536760) - 8) + 64);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13, v14);
  v16 = v28 - v15;
  sub_267521E54();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C7D38, &unk_267536768);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_267523C0C(v16, &qword_2801C7D30, &qword_267536760);
    v18 = 0;
    v19 = 0xC000000000000000;
  }

  else
  {
    swift_getOpaqueTypeConformance2();
    sub_26750A34C();
    v18 = sub_267533544();
    v19 = v20;
    OUTLINED_FUNCTION_3_7(v17);
    (*(v21 + 8))(v16, v17);
  }

  v22 = sub_2675333B4();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_2675333A4();
  v25 = *(v3 + 88);
  sub_267533394();
  sub_26750C4D8(v18, v19);

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v4);
  OUTLINED_FUNCTION_3_7(v4);
  return (*(v26 + 32))(a1, v11, v4);
}

uint64_t sub_267521ABC(uint64_t a1)
{
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & *v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7D30, &qword_267536760) - 8) + 64);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v20 - v10;
  sub_267521E54();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C7D38, &unk_267536768);
  v13 = OUTLINED_FUNCTION_14(v12);
  v14 = *((v5 & v4) + 0x50);
  if (v13 == 1)
  {
    OUTLINED_FUNCTION_3_7(v14);
    (*(v15 + 8))(a1, v14);
    return sub_267523C0C(v11, &qword_2801C7D30, &qword_267536760);
  }

  else
  {
    v17 = *(v6 + 96);
    sub_2675136F8();
    swift_getOpaqueTypeConformance2();
    sub_26750A34C();
    sub_267533554();
    OUTLINED_FUNCTION_3_7(v14);
    (*(v18 + 8))(a1, v14);
    OUTLINED_FUNCTION_3_7(v2);
    return (*(v19 + 8))(v11, v2);
  }
}

void (*sub_267521CB8(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v3[1] = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  OUTLINED_FUNCTION_0();
  *(v4 + 16) = v5;
  v7 = *(v6 + 64);
  v3[3] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[4] = v8;
  sub_267521770(v8);
  return sub_267521DA0;
}

void sub_267521DA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_267521ABC(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    sub_267521ABC((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_267521E84(void (*a1)(void))
{
  v2 = sub_267521EEC();
  if (v2)
  {
    v3 = v2;
    a1();
  }

  else
  {
    __break(1u);
  }
}

void *sub_267521EEC()
{
  v1 = *(v0 + qword_2801C7D48);
  v2 = v1;
  return v1;
}

uint64_t sub_267521F1C(uint64_t a1)
{
  v2 = *(v1 + qword_2801C7D48);
  *(v1 + qword_2801C7D48) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_267521F30(uint64_t a1)
{
  v2 = *(v1 + qword_2801C7D50);
  *(v1 + qword_2801C7D50) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_267521F48()
{
  v1 = *(v0 + qword_2801C7D58);
  v2 = *(v0 + qword_2801C7D58 + 8);

  return v1;
}

id _SnippetHostingController.init(bundleIdentifier:viewModel:onViewModelUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85000] & *v3;
  v6 = *(v5 + 0x50);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v24 - v13;
  *(v3 + qword_2801C7D48) = 0;
  *(v3 + qword_2801C7D50) = 0;
  v15 = (v3 + qword_2801C7D58);
  *v15 = v16;
  v15[1] = v17;
  v20 = *((v19 & v18) + 0x68);

  v24 = v6;
  v25 = *(v5 + 88);
  v26 = v20;
  v21 = type metadata accessor for _SnippetHostingController(0, &v24);
  v27.receiver = v3;
  v27.super_class = v21;
  v22 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  sub_267523178();

  (*(v8 + 16))(v14, a3, v6);
  sub_267521ABC(v14);

  (*(v8 + 8))(a3, v6);
  return v22;
}

void sub_267522184()
{
  *(v0 + qword_2801C7D48) = 0;
  *(v0 + qword_2801C7D50) = 0;
  sub_267533DD4();
  __break(1u);
}

id _SnippetHostingController.__deallocating_deinit()
{
  v1 = v0;
  OUTLINED_FUNCTION_12_0();
  v3 = *MEMORY[0x277D85000] & v2;
  if (qword_2801C7078 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v4 = sub_267533504();
  __swift_project_value_buffer(v4, qword_2801C7AA0);
  v5 = v0;
  v6 = sub_2675334E4();
  v7 = sub_267533B54();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_9_1();
    v9 = OUTLINED_FUNCTION_7_4();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v1;
    v10 = v5;
    OUTLINED_FUNCTION_13(&dword_267507000, v11, v12, "[%{public}@] Dealloc");
    sub_26751C99C(v9);
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_2_5();
  }

  v13 = *(v3 + 80);
  v14 = *(v3 + 96);
  v15 = OUTLINED_FUNCTION_0_1();
  v18.receiver = v5;
  v18.super_class = type metadata accessor for _SnippetHostingController(v15, v16);
  return objc_msgSendSuper2(&v18, sel_dealloc);
}

uint64_t sub_267522384(uint64_t a1)
{
  v2 = *(a1 + qword_2801C7D50);
  swift_unknownObjectRelease();
  v3 = *(a1 + qword_2801C7D58 + 8);
}

id sub_2675223E4(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  v5 = *((*MEMORY[0x277D85000] & v4) + 0x50);
  v6 = *((*MEMORY[0x277D85000] & v4) + 0x60);
  v7 = OUTLINED_FUNCTION_0_1();
  v22.receiver = v1;
  v22.super_class = type metadata accessor for _SnippetHostingController(v7, v8);
  objc_msgSendSuper2(&v22, sel_preferredContentSizeDidChangeForChildContentContainer_, a1);
  if (qword_2801C7078 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v9 = sub_267533504();
  __swift_project_value_buffer(v9, qword_2801C7AA0);
  v10 = v1;
  swift_unknownObjectRetain();
  v11 = sub_2675334E4();
  v12 = sub_267533B54();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_7_4();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v13 = 138543618;
    *(v13 + 4) = v10;
    *v14 = v2;
    *(v13 + 12) = 2080;
    v16 = v10;
    [a1 preferredContentSize];
    v17 = sub_267533C04();
    v19 = sub_26751C8D8(v17, v18, &v21);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_267507000, v11, v12, "[%{public}@] preferredContentSizeDidChange: %s", v13, 0x16u);
    sub_26751C99C(v14);
    OUTLINED_FUNCTION_2_5();
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_2_5();
  }

  [a1 preferredContentSize];
  return [v10 setPreferredContentSize_];
}

void sub_2675225DC(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_2675223E4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_267522644(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7D68, &qword_267536778) - 8) + 64);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7, v8);
  v10 = v22 - v9;
  v11 = *((v5 & v4) + 0x50);
  v12 = *((v5 & v4) + 0x58);
  v13 = *((v5 & v4) + 0x60);
  v14 = *((v5 & v4) + 0x68);
  v22[0] = v11;
  v22[1] = v12;
  v22[2] = v13;
  v22[3] = v14;
  v15 = type metadata accessor for _SnippetHostingController(0, v22);
  v23.receiver = v2;
  v23.super_class = v15;
  objc_msgSendSuper2(&v23, sel_viewWillAppear_, a1 & 1);
  sub_267521E6C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7D70, &qword_267536780);
  if (OUTLINED_FUNCTION_14(v16) == 1)
  {
    sub_267523C0C(v10, &qword_2801C7D68, &qword_267536778);
    v17 = 0;
  }

  else
  {
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v11;
    v19[3] = v12;
    v19[4] = v13;
    v19[5] = v14;
    v19[6] = v18;
    swift_getOpaqueTypeConformance2();
    sub_26750A34C();
    v17 = sub_267533524();

    OUTLINED_FUNCTION_3_7(v4);
    (*(v20 + 8))(v10, v4);
  }

  return sub_267521F30(v17);
}

void sub_267522898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v7 = sub_267533C64();
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v41 - v11;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v10, v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v41 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = v13;
    v42 = v21;
    v22 = sub_2675333B4();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_2675333A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7E60, &qword_267536850);
    sub_267533514();
    v26 = v45;
    v25 = v46;
    sub_267533394();

    sub_26750C4D8(v26, v25);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, a3);
    v28 = v41;
    v27 = v42;
    (*(v41 + 32))(v42, v12, a3);
    v29 = Strong;
    sub_267521770(v18);
    v30 = sub_2675339B4();
    v31 = *(v28 + 8);
    v31(v18, a3);
    if (v30)
    {
      v31(v27, a3);
    }

    else
    {
      if (qword_2801C7070 != -1)
      {
        swift_once();
      }

      v32 = sub_267533504();
      __swift_project_value_buffer(v32, qword_2801C7A88);
      v33 = v29;
      v34 = sub_2675334E4();
      v35 = sub_267533B54();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138543362;
        *(v36 + 4) = v33;
        *v37 = v29;
        v38 = v33;
        _os_log_impl(&dword_267507000, v34, v35, "[%{public}@] Host received a new value from client", v36, 0xCu);
        sub_26751C99C(v37);
        MEMORY[0x26D5F8BD0](v37, -1, -1);
        MEMORY[0x26D5F8BD0](v36, -1, -1);
      }

      v39 = sub_267521F48();
      v40 = v42;
      v39(v42);

      v31(v40, a3);
    }
  }
}

void sub_267522CD0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_267522644(a3);
}

uint64_t sub_267522D24(char a1)
{
  OUTLINED_FUNCTION_12_0();
  v4 = *((*MEMORY[0x277D85000] & v3) + 0x50);
  v5 = *((*MEMORY[0x277D85000] & v3) + 0x60);
  v6 = OUTLINED_FUNCTION_0_1();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for _SnippetHostingController(v6, v7);
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
  return sub_267521F30(0);
}

void sub_267522DA8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_267522D24(a3);
}

void sub_267522E00(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  v5 = *MEMORY[0x277D85000] & v4;
  if (qword_2801C7078 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v6 = sub_267533504();
  __swift_project_value_buffer(v6, qword_2801C7AA0);
  v7 = v1;
  v8 = sub_2675334E4();
  v9 = sub_267533B54();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_9_1();
    v11 = OUTLINED_FUNCTION_7_4();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v2;
    v12 = v7;
    OUTLINED_FUNCTION_8_2(&dword_267507000, v13, v9, "[%{public}@] Sending action to client");
    sub_26751C99C(v11);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_1_12();
  }

  v14 = *(v5 + 80);
  v15 = *(v5 + 96);
  v16 = OUTLINED_FUNCTION_0_1();
  type metadata accessor for SnippetHostingAction.HostToClient(v16, v17);
  v18 = a1[3];
  v19 = a1[5];
  __swift_project_boxed_opaque_existential_0(a1, v18);
  v24[3] = v18;
  v24[4] = v19;
  __swift_allocate_boxed_opaque_existential_2(v24);
  OUTLINED_FUNCTION_3_7(v18);
  (*(v20 + 16))();
  v21 = sub_26750BAC8(v24);
  v22 = sub_267521EEC();
  if (v22)
  {
    v23 = v22;
    [v22 sendAction_];
  }

  else
  {
    __break(1u);
  }
}

void sub_267522FCC()
{
  if (qword_2801C7070 != -1)
  {
    swift_once();
  }

  v1 = sub_267533504();
  __swift_project_value_buffer(v1, qword_2801C7A88);
  v2 = v0;
  v3 = sub_2675334E4();
  v4 = sub_267533B54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_9_1();
    v6 = OUTLINED_FUNCTION_7_4();
    *v5 = 138543362;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    OUTLINED_FUNCTION_13(&dword_267507000, v8, v9, "[%{public}@] Host received action from Client");
    sub_26751C99C(v6);
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_2_5();
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_2801C7058 != -1)
  {
    swift_once();
  }

  v11 = qword_2801C7428;
  v12 = sub_267533474();
  [v10 postNotificationName:v11 object:v12];
}

void sub_267523178()
{
  v1 = sub_267521EEC();
  if (!v1)
  {
    if (qword_2801C7078 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v2 = sub_267533504();
    __swift_project_value_buffer(v2, qword_2801C7AA0);
    v3 = v0;
    v4 = sub_2675334E4();
    v5 = sub_267533B54();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_9_1();
      v7 = OUTLINED_FUNCTION_7_4();
      *v6 = 138543362;
      *(v6 + 4) = v3;
      *v7 = v3;
      v8 = v3;
      OUTLINED_FUNCTION_8_2(&dword_267507000, v9, v5, "[%{public}@] Creating snippet scene");
      sub_26751C99C(v7);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_1_12();
    }

    sub_2675103C4(0, &qword_2801C7E68, 0x277D46F60);

    v10 = sub_2675236E0();
    sub_2675103C4(0, &unk_2801C7E70, 0x277D761E0);
    v11 = objc_allocWithZone(type metadata accessor for SceneHostingSpecification());
    v52 = v10;
    v12 = sub_267523778(v52, [v11 init]);
    sub_267521F1C(v12);
    v13 = sub_267521EEC();
    if (v13)
    {
      v14 = v13;
      [v13 setDelegate_];

      v15 = sub_267521EEC();
      if (v15)
      {
        v16 = v15;
        v17 = [v15 sceneViewController];

        [v3 addChildViewController_];
        v18 = [v17 view];
        if (v18)
        {
          v19 = v18;
          v20 = [v3 view];
          if (v20)
          {
            v21 = v20;
            [v20 addSubview_];

            [v19 setTranslatesAutoresizingMaskIntoConstraints_];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7770, &unk_267535AA0);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_267535AC0;
            v23 = [v19 leadingAnchor];
            v24 = OUTLINED_FUNCTION_11_0();
            if (v24)
            {
              v25 = v24;
              v26 = [v24 leadingAnchor];

              v27 = OUTLINED_FUNCTION_10_0();
              *(v22 + 32) = v27;
              v28 = [v19 trailingAnchor];
              v29 = OUTLINED_FUNCTION_11_0();
              if (v29)
              {
                v30 = v29;
                v31 = [v29 trailingAnchor];

                v32 = OUTLINED_FUNCTION_10_0();
                *(v22 + 40) = v32;
                v33 = [v19 topAnchor];
                v34 = OUTLINED_FUNCTION_11_0();
                if (v34)
                {
                  v35 = v34;
                  v36 = [v34 topAnchor];

                  v37 = OUTLINED_FUNCTION_10_0();
                  *(v22 + 48) = v37;
                  v38 = [v19 bottomAnchor];
                  v39 = [v3 view];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = objc_opt_self();
                    v42 = [v40 bottomAnchor];

                    v43 = [v38 constraintEqualToAnchor_];
                    *(v22 + 56) = v43;
                    sub_2675103C4(0, &qword_2801C7E80, 0x277CCAAD0);
                    v44 = sub_267533A44();

                    [v41 activateConstraints_];

                    [v17 didMoveToParentViewController_];
                    v45 = v3;
                    v46 = sub_2675334E4();
                    v47 = sub_267533B54();

                    if (os_log_type_enabled(v46, v47))
                    {
                      v48 = OUTLINED_FUNCTION_9_1();
                      v49 = OUTLINED_FUNCTION_7_4();
                      *v48 = 138543362;
                      *(v48 + 4) = v45;
                      *v49 = v3;
                      v50 = v45;
                      OUTLINED_FUNCTION_8_2(&dword_267507000, v51, v47, "[%{public}@] Snippet scene did move to parent");
                      sub_26751C99C(v49);
                      OUTLINED_FUNCTION_2_5();
                      OUTLINED_FUNCTION_1_12();
                    }

                    v1 = v52;
                    goto LABEL_17;
                  }

LABEL_27:
                  __break(1u);
                  return;
                }

LABEL_26:
                __break(1u);
                goto LABEL_27;
              }

LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
}

id sub_2675236E0()
{
  v0 = sub_2675339C4();

  v1 = [swift_getObjCClassFromMetadata() identityForEmbeddedApplicationIdentifier_];

  return v1;
}

id SceneHostingSpecification.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_267523778(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProcessIdentity:a1 sceneSpecification:a2];

  return v4;
}

void sub_2675237D4()
{
  v0 = sub_267521EEC();
  if (v0)
  {
    v1 = v0;
    v4 = [v0 sceneViewController];
    [v4 willMoveToParentViewController_];
    v2 = [v4 view];
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];

      [v4 removeFromParentViewController];
      sub_267521F1C(0);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2675238AC()
{
  if (qword_2801C7078 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = sub_267533504();
  __swift_project_value_buffer(v1, qword_2801C7AA0);
  v2 = v0;
  oslog = sub_2675334E4();
  v3 = sub_267533B54();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = OUTLINED_FUNCTION_9_1();
    v5 = OUTLINED_FUNCTION_7_4();
    *v4 = 138543362;
    *(v4 + 4) = v2;
    *v5 = v2;
    v6 = v2;
    _os_log_impl(&dword_267507000, oslog, v3, "[%{public}@] clientIsReady", v4, 0xCu);
    sub_26751C99C(v5);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }
}

void sub_2675239B8(void *a1)
{
  v1 = a1;
  sub_2675238AC();
}

id _SnippetHostingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2675339C4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_267523AA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_2675339D4();
  }

  v5 = a4;
  _SnippetHostingController.init(nibName:bundle:)();
}

id sub_267523B14()
{
  if (qword_2801C7068 != -1)
  {
    swift_once();
  }

  v1 = qword_2801C7720;

  return v1;
}

id SceneHostingSpecification.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneHostingSpecification();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SceneHostingSpecification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneHostingSpecification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_267523BFC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_267536750;
  return result;
}

uint64_t sub_267523C0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_7(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_267523C68()
{
  MEMORY[0x26D5F8C80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_267523CA0()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

__n128 sub_267523D40(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_10()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_12()
{

  JUMPOUT(0x26D5F8BD0);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_8_2(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_10_0()
{

  return [v1 (v0 + 3941)];
}

id OUTLINED_FUNCTION_11_0()
{

  return [v0 (v1 + 2808)];
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t sub_26752405C(unsigned __int8 a1, char a2)
{
  v2 = 0x656E6563735FLL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = "_processIdentity";
  v6 = 0x656E6563735FLL;
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_42();
      break;
    case 2:
      v6 = 0xD000000000000010;
      v3 = 0x8000000267536C30;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v6 = 0x776569765FLL;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6E6F43776569765FLL;
      v7 = 0xEF72656C6C6F7274;
      break;
    case 2:
      v2 = 0xD000000000000010;
      v7 = (v5 - 32) | 0x8000000000000000;
      break;
    case 3:
      v7 = 0xE500000000000000;
      v2 = 0x776569765FLL;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_267533E34();
  }

  return v9 & 1;
}

uint64_t sub_2675241C8(uint64_t a1)
{
  sub_267533EE4();
  MEMORY[0x26D5F84A0](a1);
  return sub_267533F14();
}

uint64_t sub_267524210(char a1)
{
  sub_267533EE4();
  sub_2675242F0(v3, a1);
  return sub_267533F14();
}

uint64_t sub_267524258()
{
  sub_267533EE4();
  sub_267533F04();
  return sub_267533F14();
}

uint64_t sub_2675242F0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_42();
      break;
    default:
      break;
  }

  sub_267533A04();
}

uint64_t sub_2675243B4(uint64_t a1, char a2)
{
  sub_267533EE4();
  sub_2675242F0(v4, a2);
  return sub_267533F14();
}

uint64_t sub_2675243F8(uint64_t a1, uint64_t a2)
{
  sub_267533EE4();
  MEMORY[0x26D5F84A0](a2);
  return sub_267533F14();
}

uint64_t sub_26752443C()
{
  sub_267533EE4();
  sub_267533F04();
  return sub_267533F14();
}

void sub_267524480()
{
  OUTLINED_FUNCTION_38();
  v48 = *MEMORY[0x277D85DE8];
  v3 = v2 >> 60;
  if (v2 >> 60 == 15)
  {
    sub_267513638(v1, v2);
    v4 = OUTLINED_FUNCTION_26();
    sub_26750FD08(v4, v5);
  }

  else
  {
    sub_267513638(v1, v2);
    v6 = sub_2675103C4(0, &unk_2801C7790, 0x277D75348);
    OUTLINED_FUNCTION_40(v6, v7, MEMORY[0x277CC9318], v8, v9, v10, v11, v12, v41, v44);
    if (swift_dynamicCast())
    {

      v13 = objc_opt_self();
      OUTLINED_FUNCTION_40(v13, v14, MEMORY[0x277CC9318], v15, v16, v17, v18, v19, v42, v45);
      v20 = swift_dynamicCast();
      v21 = v46;
      v28 = OUTLINED_FUNCTION_45(v20, sel_archivedDataWithRootObject_requiringSecureCoding_error_, v22, v23, v24, v25, v26, v27, v43, v46, 0);

      v29 = v47;
      if (v28)
      {
        sub_267533484();

        v30 = [v0 otherSettings];
        OUTLINED_FUNCTION_36();
        v31 = sub_267533474();
        OUTLINED_FUNCTION_4_5();
        swift_beginAccess();
        v32 = OUTLINED_FUNCTION_27();
        [v32 v33];
        v34 = OUTLINED_FUNCTION_36();
        sub_26750C4D8(v34, v35);
      }

      else
      {
        v39 = v29;
        v40 = sub_267533434();

        swift_willThrow();
      }

      goto LABEL_10;
    }
  }

  v36 = [v0 otherSettings];
  if (v3 <= 0xE)
  {
    v37 = sub_267533E54();
  }

  else
  {
    v37 = 0;
  }

  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  [v36 setObject:v37 forSetting:qword_2801C7998];

  swift_unknownObjectRelease();
LABEL_10:
  v38 = *MEMORY[0x277D85DE8];
}

void sub_2675246C4(uint64_t a1)
{
  v2 = a1;
  v46 = *MEMORY[0x277D85DE8];
  if (a1 && (, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7788, &qword_267535E20), v3 = sub_2675103C4(0, &unk_2801C7790, 0x277D75348), OUTLINED_FUNCTION_40(v3, v4, v5, v6, v7, v8, v9, v10, v39, v42), (swift_dynamicCast() & 1) != 0))
  {

    v11 = objc_opt_self();
    OUTLINED_FUNCTION_40(v11, v12, v13, v14, v15, v16, v17, v18, v40, v43);
    v19 = swift_dynamicCast();
    v20 = v44;
    v27 = OUTLINED_FUNCTION_45(v19, sel_archivedDataWithRootObject_requiringSecureCoding_error_, v21, v22, v23, v24, v25, v26, v41, v44, 0);

    v28 = v45;
    if (v27)
    {
      sub_267533484();

      v29 = [v1 otherSettings];
      OUTLINED_FUNCTION_36();
      v30 = sub_267533474();
      OUTLINED_FUNCTION_4_5();
      swift_beginAccess();
      v31 = OUTLINED_FUNCTION_27();
      [v31 v32];
      v33 = OUTLINED_FUNCTION_36();
      sub_26750C4D8(v33, v34);
    }

    else
    {
      v37 = v28;
      v38 = sub_267533434();

      swift_willThrow();
    }
  }

  else
  {
    v35 = [v1 otherSettings];
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7788, &qword_267535E20);
      v2 = sub_267533E54();
    }

    OUTLINED_FUNCTION_4_5();
    swift_beginAccess();
    [v35 setObject:v2 forSetting:qword_2801C79C8];

    swift_unknownObjectRelease();
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t sub_267524914(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = [v3 otherSettings];
  if (a2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_267533E54();
  }

  swift_beginAccess();
  [v5 setObject:v6 forSetting:qword_2801C7C08];

  return swift_unknownObjectRelease();
}

void sub_2675249D4()
{
  OUTLINED_FUNCTION_38();
  v3 = [v1 otherSettings];
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  v4 = *v0;
  v5 = OUTLINED_FUNCTION_41();
  [v5 v6];
}

id SnippetHostViewController.__allocating_init<A>(bundleIdentifier:viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(v7);
  v14 = OUTLINED_FUNCTION_25();
  return SnippetHostViewController.init<A>(bundleIdentifier:viewModel:)(v14, v15, a3, a4, a5, a6, a7);
}

uint64_t sub_267524AF8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_267524B98()
{
  OUTLINED_FUNCTION_5_5();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_267524BE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  return sub_267524B98();
}

void (*sub_267524C14(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_24();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_267524C90;
}

void sub_267524C90(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t SnippetHostViewController.PresentationMode.description.getter(int a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 2:
      return 0x616E73206576696CLL;
    case 1:
      return 1702259052;
  }

  result = sub_267533E44();
  __break(1u);
  return result;
}

unint64_t SnippetHostViewController.PresentationMode.init(rawValue:)(unsigned int a1)
{
  v1 = a1;
  v2 = 2;
  if (a1 != 2)
  {
    v2 = 0;
  }

  v3 = a1 != 2;
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v1 = v2;
  }

  if (!a1)
  {
    v1 = 0;
    v3 = 0;
  }

  return v1 | (v3 << 32);
}

unint64_t sub_267524E0C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = SnippetHostViewController.PresentationMode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_267524EDC(unsigned int a1)
{
  BSDispatchQueueAssertMain();

  sub_26752A088(a1, 0);
}

void (*sub_267524F18(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController__presentationMode);
  return sub_267524F4C;
}

void sub_267524F4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2);
  BSDispatchQueueAssertMain();
  sub_26752A088(v2, 0);
}

void *sub_267524FB4()
{
  v1 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_resolvedMetrics;
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_267525054(void *a1)
{
  v3 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_resolvedMetrics;
  OUTLINED_FUNCTION_5_5();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  BSDispatchQueueAssertMain();
  sub_26752BF94();
}

void sub_2675250B0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_267525054(v2);
}

uint64_t sub_26752513C()
{
  v1 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_activityTouchRestrictedRects;
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2675251EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_activityTouchRestrictedRects;
  OUTLINED_FUNCTION_5_5();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_267525234(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2675251EC(v4);
}

id sub_267525294()
{
  v1 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_systemProvidedMetrics;
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_26752533C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_systemProvidedMetrics;
  OUTLINED_FUNCTION_5_5();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_267525408()
{
  sub_2675103C4(0, &qword_2801C8170, 0x277D0AAE8);
  result = sub_267527AFC();
  qword_2801C7E90 = result;
  return result;
}

uint64_t sub_267525464()
{
  v1 = (v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController____lazy_storage___logIdentifier);
  if (*(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController____lazy_storage___logIdentifier + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController____lazy_storage___logIdentifier + 8);
  }

  else
  {
    v2 = sub_2675254E0(v0);
    v4 = v1[1];
    *v1 = v2;
    v1[1] = v5;
  }

  return v2;
}

uint64_t sub_2675254E0(uint64_t a1)
{
  sub_267533D64();
  MEMORY[0x26D5F7FC0](45, 0xE100000000000000);
  MEMORY[0x26D5F7FC0](*(a1 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_processIdentity), *(a1 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_processIdentity + 8));
  return 0;
}

id sub_267525564()
{
  v1 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController____lazy_storage___queue;
  v2 = *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController____lazy_storage___queue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController____lazy_storage___queue);
  }

  else
  {
    v4 = sub_2675255C8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2675255C8()
{
  v13 = sub_267533B94();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_267533B74();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = sub_267533944();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12[1] = sub_2675103C4(0, &qword_2801C7FA0, 0x277D85C78);
  v12[0] = sub_267525464();
  sub_267533934();
  v14 = MEMORY[0x277D84F90];
  sub_2675319AC(&qword_2801C8198, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81A0, &qword_2675369F8);
  sub_267531B0C(&qword_2801C81A8, &qword_2801C81A0, &qword_2675369F8);
  sub_267533C84();
  (*(v0 + 104))(v4, *MEMORY[0x277D85260], v13);
  return sub_267533BC4();
}

void sub_267525820()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  if (qword_2801C7078 != -1)
  {
    swift_once();
  }

  v2 = sub_267533504();
  __swift_project_value_buffer(v2, qword_2801C7AA0);
  v3 = sub_2675334E4();
  v4 = sub_267533B24();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_267507000, v3, v4, "Host didSet wrappedValue and about to forward to client.", v5, 2u);
    MEMORY[0x26D5F8BD0](v5, -1, -1);
  }

  v6 = *&v1[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene];
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_267531DF0;
    *(v8 + 24) = v7;
    v13[4] = sub_267532620;
    v13[5] = v8;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_267525B0C;
    v13[3] = &block_descriptor_210;
    v9 = _Block_copy(v13);
    v10 = v6;
    v11 = v1;

    [v10 performUpdate_];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_267525A48(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LiveMutableSceneSettings();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_viewModel;
    swift_beginAccess();
    sub_26752FFB4(a3 + v6, v10);
    __swift_project_boxed_opaque_existential_0(v10, v10[3]);
    v7 = a1;
    v8 = sub_2675136F8();
    sub_267524914(v8, v9);

    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

void sub_267525B0C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

id SnippetHostViewController.init<A>(bundleIdentifier:viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController__presentationMode) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_resolvedMetrics) = 0;
  v15 = MEMORY[0x277D84F90];
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_activityTouchRestrictedRects) = MEMORY[0x277D84F90];
  v16 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_settingsDiffInspector;
  *(v8 + v16) = [objc_allocWithZone(type metadata accessor for SnippetSceneClientSettingsDiffInspector()) init];
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scenePresenter) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_activatedSceneView) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_snippetSceneSnapshotView) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isInvalidated) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isSceneForeground) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_waitingForArchiveContentReady) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_waitingForArchiveContentReadyBlocks) = v15;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneActivated) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneActivatedBlocks) = v15;
  v17 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_touchDeliveryPolicyAssertions;
  sub_2675103C4(0, &qword_2801C7F20, 0x277CF0798);
  *(v8 + v17) = sub_267533974();
  v18 = (v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController____lazy_storage___logIdentifier);
  *v18 = 0;
  v18[1] = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController____lazy_storage___queue) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_backOffTimer) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_ensureContentTimer) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientAlreadyExitedOnceWithinTimeout) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientExitTimer) = 0;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientExitTimeout) = 0x4014000000000000;
  if (sub_2675136E0(v15))
  {
    v19 = sub_267512910(MEMORY[0x277D84F90]);
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];
  }

  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_cancellables) = v19;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_modalSceneViewController) = 0;
  v20 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneSpecification;
  *(v8 + v20) = [objc_allocWithZone(type metadata accessor for SnippetSceneSpecification()) init];
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_shouldShareTouchesWithHost) = 0;
  v21 = (v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_processIdentity);
  *v21 = a1;
  v21[1] = a2;
  v22 = type metadata accessor for SceneItemMetricsRequest();
  sub_267514324();
  OUTLINED_FUNCTION_39();
  v23 = type metadata accessor for SceneMetricsRequest();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics] = v22;
  v43.receiver = v24;
  v43.super_class = v23;
  *(v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_systemProvidedMetrics) = objc_msgSendSuper2(&v43, sel_init);
  v40 = a4;
  v41 = a5;
  v42 = a6;
  __swift_allocate_boxed_opaque_existential_2(&v39);
  OUTLINED_FUNCTION_39();
  v25 = sub_267533914();
  MEMORY[0x26D5F7EA0]();
  sub_26752FE70(&v39, (v8 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_viewModel));
  type metadata accessor for SnippetHostViewController();
  OUTLINED_FUNCTION_4_5();
  v28 = objc_msgSendSuper2(v26, v27);
  v29 = qword_2801C7078;
  v30 = v28;
  if (v29 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v31 = sub_267533504();
  OUTLINED_FUNCTION_31(v31, qword_2801C7AA0);
  v32 = sub_2675334E4();
  v33 = sub_267533B54();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = OUTLINED_FUNCTION_9_1();
    v35 = OUTLINED_FUNCTION_7_4();
    *v34 = 138543362;
    *(v34 + 4) = v30;
    *v35 = v30;
    v36 = v30;
    _os_log_impl(&dword_267507000, v32, v33, "[%{public}@] Created", v34, 0xCu);
    sub_26751C99C(v35);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_2_5();
  }

  sub_267528E30(a3, a4, a5, a6, a7);
  (*(*(v25 - 8) + 8))(a3, v25);
  return v30;
}

void sub_267525F8C()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController__presentationMode) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_resolvedMetrics) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_activityTouchRestrictedRects) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_settingsDiffInspector;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for SnippetSceneClientSettingsDiffInspector()) init];
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scenePresenter) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_activatedSceneView) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_snippetSceneSnapshotView) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isInvalidated) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isSceneForeground) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_waitingForArchiveContentReady) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_waitingForArchiveContentReadyBlocks) = v1;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneActivated) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneActivatedBlocks) = v1;
  v3 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_touchDeliveryPolicyAssertions;
  sub_2675103C4(0, &qword_2801C7F20, 0x277CF0798);
  *(v0 + v3) = sub_267533974();
  v4 = (v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController____lazy_storage___logIdentifier);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController____lazy_storage___queue) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_backOffTimer) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_ensureContentTimer) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientAlreadyExitedOnceWithinTimeout) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientExitTimer) = 0;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientExitTimeout) = 0x4014000000000000;
  if (sub_2675136E0(v1))
  {
    v5 = sub_267512910(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_cancellables) = v5;
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_modalSceneViewController) = 0;
  v6 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneSpecification;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for SnippetSceneSpecification()) init];
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_shouldShareTouchesWithHost) = 0;
  sub_267533DD4();
  __break(1u);
}

id SnippetHostViewController.__deallocating_deinit()
{
  if (qword_2801C7078 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = sub_267533504();
  __swift_project_value_buffer(v1, qword_2801C7AA0);
  v2 = v0;
  v3 = sub_2675334E4();
  v4 = sub_267533B54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_9_1();
    v6 = OUTLINED_FUNCTION_7_4();
    *v5 = 138543362;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    OUTLINED_FUNCTION_44(&dword_267507000, v8, v9, "[%{public}@] Dealloc");
    sub_26751C99C(v6);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_14_0();
  }

  [*&v2[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_settingsDiffInspector] removeAllObservers];
  sub_267527CF4();
  v11.receiver = v2;
  v11.super_class = type metadata accessor for SnippetHostViewController();
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

void sub_2675264C0()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  v17.receiver = v0;
  v17.super_class = type metadata accessor for SnippetHostViewController();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  sub_26752D27C();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 frame];

    v4 = type metadata accessor for SizeDimensionRequest();
    v5 = objc_allocWithZone(v4);
    OUTLINED_FUNCTION_47();
    v6 = objc_allocWithZone(v4);
    v7 = OUTLINED_FUNCTION_46();
    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      [v8 _cornerRadius];

      v10 = objc_allocWithZone(type metadata accessor for SceneItemMetricsRequest());
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_39();
      v11 = type metadata accessor for SceneMetricsRequest();
      v12 = objc_allocWithZone(v11);
      *&v12[OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics] = v7;
      v16.receiver = v12;
      v16.super_class = v11;
      v13 = objc_msgSendSuper2(&v16, sel_init);
      v14 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_systemProvidedMetrics;
      OUTLINED_FUNCTION_8_3();
      v15 = *&v1[v14];
      *&v1[v14] = v13;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_267526660(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SnippetHostViewController();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  OUTLINED_FUNCTION_7_5();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26752BD2C(sub_26752FEE0, v3);
}

void sub_2675266E8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for LiveMutableSceneSettings();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      v7 = [v3 traitCollection];
      v8 = [v7 userInterfaceStyle];

      [v5 setUserInterfaceStyle_];
      v3 = v6;
    }
  }
}

uint64_t sub_267526818()
{
  OUTLINED_FUNCTION_38();
  BSDispatchQueueAssertMain();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SnippetHostViewController();
  objc_msgSendSuper2(&v6, sel_willTransitionToTraitCollection_withTransitionCoordinator_, v2, v0);
  v5 = v2;
  return sub_26752BD2C(sub_26752FEE8, &v4);
}

void sub_26752688C(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for LiveMutableSceneSettings();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    [v6 setUserInterfaceStyle_];
  }
}

void sub_2675269B0(uint64_t a1, char a2)
{
  BSDispatchQueueAssertMain();
  v6.receiver = v2;
  v6.super_class = type metadata accessor for SnippetHostViewController();
  objc_msgSendSuper2(&v6, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  v5 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_shouldShareTouchesWithHost;
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  if (*(v2 + v5) == 1)
  {
    if (a1)
    {
      sub_26752C5CC();
    }

    else
    {
      sub_26752D140();
    }
  }
}

void sub_267526AB0()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for SnippetHostViewController();
  objc_msgSendSuper2(&v17, sel_viewDidLayoutSubviews);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 frame];

    v4 = type metadata accessor for SizeDimensionRequest();
    v5 = objc_allocWithZone(v4);
    OUTLINED_FUNCTION_47();
    v6 = objc_allocWithZone(v4);
    v7 = OUTLINED_FUNCTION_46();
    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      [v8 _cornerRadius];

      v10 = objc_allocWithZone(type metadata accessor for SceneItemMetricsRequest());
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_39();
      v11 = type metadata accessor for SceneMetricsRequest();
      v12 = objc_allocWithZone(v11);
      *&v12[OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics] = v7;
      v16.receiver = v12;
      v16.super_class = v11;
      v13 = objc_msgSendSuper2(&v16, sel_init);
      v14 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_systemProvidedMetrics;
      OUTLINED_FUNCTION_8_3();
      v15 = *&v1[v14];
      *&v1[v14] = v13;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_267526C48(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SnippetHostViewController();
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, a1);
  v5 = v1;
  return sub_26752BD2C(sub_26752FEF0, &v4);
}

void sub_267526CAC(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for LiveMutableSceneSettings();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v9 = a1;
    v7 = [a3 traitCollection];
    v8 = [v7 userInterfaceStyle];

    [v6 setUserInterfaceStyle_];
  }
}

void sub_267526DE8(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  ObjectType = swift_getObjectType();
  BSDispatchQueueAssertMain();
  if (qword_2801C7078 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v9 = sub_267533504();
  __swift_project_value_buffer(v9, qword_2801C7AA0);
  v10 = v4;
  v11 = sub_2675334E4();
  v12 = sub_267533B54();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_9_1();
    v14 = OUTLINED_FUNCTION_7_4();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_267507000, v11, v12, "[%{public}@] Ensure content begin", v13, 0xCu);
    sub_26751C99C(v14);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  if (!*&v10[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene])
  {
    sub_26752A088(*&v10[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController__presentationMode], 1);
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CF0D08]) init];
  OUTLINED_FUNCTION_25();
  v17 = sub_2675339C4();
  [v16 addMilestone_];

  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a1;
  v18[4] = v10;
  v18[5] = a2;
  v18[6] = a3;
  OUTLINED_FUNCTION_11_1();
  v62 = 1107296256;
  v63 = sub_26752791C;
  v64 = &block_descriptor_4;
  v19 = _Block_copy(aBlock);
  v20 = v10;
  v21 = v16;
  v22 = a1;

  [v21 setCompletionBlock_];
  _Block_release(v19);
  v23 = v20[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneActivated];
  v24 = v20;
  v25 = sub_2675334E4();
  v26 = sub_267533B54();

  v27 = os_log_type_enabled(v25, v26);
  if (v23 == 1)
  {
    if (v27)
    {
      v28 = OUTLINED_FUNCTION_9_1();
      v29 = OUTLINED_FUNCTION_7_4();
      *v28 = 138543362;
      *(v28 + 4) = v24;
      *v29 = v24;
      v30 = v24;
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_33(v31, v32, v33, v34);
      sub_26751C99C(v29);
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_10_1();
    }

    OUTLINED_FUNCTION_25();
    v35 = sub_2675339C4();
    v36 = OUTLINED_FUNCTION_27();
    [v36 v37];
  }

  else
  {
    if (v27)
    {
      v38 = OUTLINED_FUNCTION_9_1();
      v39 = OUTLINED_FUNCTION_7_4();
      *v38 = 138543362;
      *(v38 + 4) = v24;
      *v39 = v24;
      v40 = v24;
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_33(v41, v42, v43, v44);
      sub_26751C99C(v39);
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_10_1();
    }

    v45 = swift_allocObject();
    v45[2] = v24;
    v45[3] = v21;
    v45[4] = ObjectType;
    v46 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneActivatedBlocks;
    OUTLINED_FUNCTION_24();
    v47 = v24;
    v48 = v21;
    sub_26752FC38();
    v49 = *(*&v24[v46] + 16);
    sub_26752FC84(v49);
    v50 = *&v24[v46];
    *(v50 + 16) = v49 + 1;
    v51 = v50 + 16 * v49;
    *(v51 + 32) = sub_26752FFA0;
    *(v51 + 40) = v45;
    *&v24[v46] = v50;
    swift_endAccess();
  }

  [v21 begin];
  v52 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_ensureContentTimer;
  [*&v24[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_ensureContentTimer] invalidate];
  sub_2675103C4(0, &qword_2801C7F98, 0x277CF0B50);
  v53 = sub_267527AFC();
  v54 = *&v24[v52];
  *&v24[v52] = v53;
  v55 = v53;

  if (v55)
  {
    sub_2675103C4(0, &qword_2801C7FA0, 0x277D85C78);
    v56 = sub_267533BA4();
    OUTLINED_FUNCTION_7_5();
    *(swift_allocObject() + 16) = v21;
    OUTLINED_FUNCTION_11_1();
    v62 = 1107296256;
    OUTLINED_FUNCTION_0_8();
    v63 = v57;
    v64 = &block_descriptor_12;
    v58 = _Block_copy(aBlock);
    v59 = v21;

    [v55 scheduleWithFireInterval:v56 leewayInterval:v58 queue:a4 handler:0.0];

    _Block_release(v58);
    v21 = v56;
  }
}

uint64_t sub_267527330(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v10 = sub_267533924();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_267533944();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v26, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a2 error];
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  aBlock[4] = sub_267531E40;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26753263C;
  aBlock[3] = &block_descriptor_216;
  v22 = _Block_copy(aBlock);
  v23 = v20;
  v24 = a4;

  sub_267533934();
  v29 = MEMORY[0x277D84F90];
  sub_2675319AC(&qword_2801C8178, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C8180, &qword_2675369F0);
  sub_267531B0C(&qword_2801C8188, &qword_2801C8180, &qword_2675369F0);
  sub_267533C84();
  MEMORY[0x26D5F8160](0, v19, v14, v22);
  _Block_release(v22);

  (*(v27 + 8))(v14, v10);
  (*(v15 + 8))(v19, v26);
}

uint64_t sub_267527628(void *a1, void *a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    if (qword_2801C7078 != -1)
    {
      swift_once();
    }

    v6 = sub_267533504();
    __swift_project_value_buffer(v6, qword_2801C7AA0);
    v7 = a2;
    v8 = a1;
    v9 = sub_2675334E4();
    v10 = sub_267533B54();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = a3;
      v13 = swift_slowAlloc();
      v28 = v13;
      *v11 = 138543618;
      *(v11 + 4) = v7;
      *v12 = v7;
      *(v11 + 12) = 2082;
      swift_getErrorValue();
      v14 = v7;
      v15 = sub_267533E84();
      v17 = sub_26751C8D8(v15, v16, &v28);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_267507000, v9, v10, "[%{public}@] Ensure content failed: %{public}s", v11, 0x16u);
      sub_26751C99C(v12);
      MEMORY[0x26D5F8BD0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      v18 = v13;
      a3 = v27;
      MEMORY[0x26D5F8BD0](v18, -1, -1);
      MEMORY[0x26D5F8BD0](v11, -1, -1);
    }
  }

  else
  {
    if (qword_2801C7078 != -1)
    {
      swift_once();
    }

    v19 = sub_267533504();
    __swift_project_value_buffer(v19, qword_2801C7AA0);
    v20 = a2;
    v21 = sub_2675334E4();
    v22 = sub_267533B54();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_267507000, v21, v22, "[%{public}@] Ensure content complete", v23, 0xCu);
      sub_26751C99C(v24);
      MEMORY[0x26D5F8BD0](v24, -1, -1);
      MEMORY[0x26D5F8BD0](v23, -1, -1);
    }
  }

  return a3(a1);
}

uint64_t sub_26752791C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_267527970(void *a1, void *a2)
{
  if (qword_2801C7078 != -1)
  {
    swift_once();
  }

  v4 = sub_267533504();
  __swift_project_value_buffer(v4, qword_2801C7AA0);
  v5 = a1;
  v6 = sub_2675334E4();
  v7 = sub_267533B54();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_267507000, v6, v7, "[%{public}@] Ensure content: scene activated", v8, 0xCu);
    sub_26751C99C(v9);
    MEMORY[0x26D5F8BD0](v9, -1, -1);
    MEMORY[0x26D5F8BD0](v8, -1, -1);
  }

  v11 = sub_2675339C4();
  [a2 satisfyMilestone_];
}

id sub_267527AFC()
{
  OUTLINED_FUNCTION_38();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_26();
  v1 = sub_2675339C4();

  v2 = OUTLINED_FUNCTION_41();
  v4 = [v2 v3];

  return v4;
}

id sub_267527B64(void *a1, id a2)
{
  if (([a2 isComplete] & 1) == 0)
  {
    sub_267530F1C(0x756F2064656D6974, 0xE900000000000074, a2, &selRef_failWithReason_);
  }

  return [a1 invalidate];
}

void sub_267527C90(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_267533424();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_267527CF4()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  v2 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isInvalidated;
  if ((v0[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isInvalidated] & 1) == 0)
  {
    if (qword_2801C7078 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v3 = sub_267533504();
    OUTLINED_FUNCTION_31(v3, qword_2801C7AA0);
    v4 = v0;
    v5 = sub_2675334E4();
    v6 = sub_267533B54();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_9_1();
      v8 = OUTLINED_FUNCTION_7_4();
      *v7 = 138543362;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_267507000, v5, v6, "[%{public}@] Invalidated", v7, 0xCu);
      sub_26751C99C(v8);
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_8_3();
    swift_unknownObjectWeakAssign();
    v1[v2] = 1;
    sub_26752BE98();
    v10 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_backOffTimer;
    if (*&v4[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_backOffTimer])
    {
      v11 = *&v4[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_backOffTimer];

      sub_267519AB0();

      v12 = *&v4[v10];
    }

    *&v4[v10] = 0;

    v13 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_ensureContentTimer;
    [*&v4[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_ensureContentTimer] invalidate];
    v14 = *&v4[v13];
    *&v4[v13] = 0;

    v15 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientExitTimer;
    [*&v4[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientExitTimer] invalidate];
    v16 = *&v4[v15];
    *&v4[v15] = 0;
  }
}

uint64_t sub_267527F60()
{
  v1 = v0;
  v2 = 7104878;
  v3 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController__presentationMode;
  v4 = *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController__presentationMode);
  if (v4 == 1)
  {
    sub_267533D34();

    v7 = *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_activatedSceneView);
    if (v7)
    {
      v8 = [v7 description];
      sub_2675339D4();
    }

    OUTLINED_FUNCTION_30();
  }

  else if (v4 == 2)
  {
    sub_267533D34();

    v5 = *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_snippetSceneSnapshotView);
    if (v5)
    {
      v6 = [v5 description];
      sub_2675339D4();
    }

    OUTLINED_FUNCTION_30();

    MEMORY[0x26D5F7FC0](44, 0xE100000000000000);
  }

  sub_267533D34();
  MEMORY[0x26D5F7FC0](0xD000000000000020, 0x8000000267537E00);
  v9 = SnippetHostViewController.PresentationMode.description.getter(*(v1 + v3));
  MEMORY[0x26D5F7FC0](v9);

  MEMORY[0x26D5F7FC0](0x696C61766E69202CLL, 0xEF203A6465746164);
  if (*(v1 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isInvalidated))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isInvalidated))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x26D5F7FC0](v10, v11);

  MEMORY[0x26D5F7FC0](0x6E6573657270202CLL, 0xED0000203A726574);
  v12 = *(v1 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scenePresenter);
  if (v12)
  {
    v13 = [v12 description];
    v14 = sub_2675339D4();
    v16 = v15;
  }

  else
  {
    v16 = 0xE300000000000000;
    v14 = 7104878;
  }

  MEMORY[0x26D5F7FC0](v14, v16);

  MEMORY[0x26D5F7FC0](44, 0xE100000000000000);
  OUTLINED_FUNCTION_30();

  MEMORY[0x26D5F7FC0](0x203A656E65637320, 0xE800000000000000);
  v17 = *(v1 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene);
  if (v17)
  {
    v18 = [v17 description];
    v2 = sub_2675339D4();
    v20 = v19;
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  MEMORY[0x26D5F7FC0](v2, v20);

  MEMORY[0x26D5F7FC0](62, 0xE100000000000000);
  return 0;
}

void sub_2675282DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v61 = a4;
  v59 = a3;
  v63 = *(a2 - 8);
  v8 = *(v63 + 64);
  MEMORY[0x28223BE20](a1, a2);
  OUTLINED_FUNCTION_1_11();
  v62 = v10 - v9;
  v11 = sub_267533C64();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = OUTLINED_FUNCTION_1_2(TupleTypeMetadata2);
  v54 = v14;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v13, v17);
  v20 = &v53 - v19;
  v21 = *(v11 - 8);
  v22 = v21[8];
  v24 = MEMORY[0x28223BE20](v18, v23);
  v64 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v53 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v53 - v31;
  v33 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_viewModel;
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  v60 = v5;
  sub_26752FFB4(v5 + v33, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7FA8, &qword_267536898);
  v34 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v32, v34 ^ 1u, 1, a2);
  v35 = v63;
  v36 = *(v63 + 16);
  v57 = v63 + 16;
  v58 = a1;
  v56 = v36;
  v36(v29, a1, a2);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, a2);
  v55 = TupleTypeMetadata2;
  v37 = *(TupleTypeMetadata2 + 48);
  v38 = v21[2];
  v38(v20, v32, v11);
  v38(&v20[v37], v29, v11);
  OUTLINED_FUNCTION_49(v20);
  if (v42)
  {
    v39 = v21[1];
    v40 = OUTLINED_FUNCTION_34();
    v39(v40);
    OUTLINED_FUNCTION_49(&v20[v37]);
    if (v42)
    {
      v41 = OUTLINED_FUNCTION_25();
      v39(v41);
      (v39)(v32, v11);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v38(v64, v20, v11);
  OUTLINED_FUNCTION_49(&v20[v37]);
  if (v42)
  {
    v39 = v21[1];
    v43 = OUTLINED_FUNCTION_34();
    v39(v43);
    (*(v35 + 8))(v64, a2);
LABEL_9:
    (*(v54 + 8))(v20, v55);
    (v39)(v32, v11);
LABEL_10:
    v44 = v62;
    v56(v62, v58, a2);
    sub_267530F88(v44, v60, a2, v59, v61);
    goto LABEL_11;
  }

  v45 = v35;
  v46 = &v20[v37];
  v47 = v62;
  (*(v35 + 32))(v62, v46, a2);
  v48 = sub_2675339B4();
  v49 = *(v45 + 8);
  v49(v47, a2);
  v50 = v21[1];
  v51 = OUTLINED_FUNCTION_34();
  v50(v51);
  v49(v64, a2);
  v52 = OUTLINED_FUNCTION_25();
  v50(v52);
  (v50)(v32, v11);
  if ((v48 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  OUTLINED_FUNCTION_48();
}

uint64_t sub_267528798()
{
  v1 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_shouldShareTouchesWithHost;
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_267528828(char a1)
{
  v3 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_shouldShareTouchesWithHost;
  OUTLINED_FUNCTION_5_5();
  *(v1 + v3) = a1;
  sub_26752886C();
}

void sub_26752886C()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_shouldShareTouchesWithHost;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    sub_26752C5CC();
  }

  else
  {
    sub_26752D140();
  }
}

void (*sub_2675288C8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_24();
  return sub_267528924;
}

void sub_267528924(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_26752886C();
  }
}

void sub_267528958()
{
  v1 = sub_267533454();
  v2 = OUTLINED_FUNCTION_1_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2, v7);
  OUTLINED_FUNCTION_1_11();
  v10 = v9 - v8;
  BSDispatchQueueAssertMain();
  OUTLINED_FUNCTION_7_5();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v41 = sub_267531030;
  v42 = v11;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v39 = sub_267528D80;
  v40 = &block_descriptor_18;
  v12 = _Block_copy(&aBlock);
  v13 = v0;

  v14 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
  _Block_release(v12);
  v15 = [v13 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v17 = [v15 window];

  if (!v17)
  {
    goto LABEL_17;
  }

  if (!v14)
  {

LABEL_18:
    OUTLINED_FUNCTION_43();
    return;
  }

  v18 = *&v13[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene];
  if (!v18)
  {

LABEL_17:
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v19 = *MEMORY[0x277D76620];
  if (*MEMORY[0x277D76620])
  {
    v20 = v18;
    [v19 _initialTouchTimestampForWindow_];
    v22 = v21;
    v34 = v20;
    v23 = [v20 layerManager];
    v24 = [v23 layers];

    v25 = MEMORY[0x277D84F90];
    v37 = MEMORY[0x277D84F90];
    sub_267533B14();
    while (1)
    {
      sub_267533444();
      if (!v40)
      {
        break;
      }

      sub_267510354(&aBlock, &v36);
      sub_2675103C4(0, &unk_2801C7FB0, 0x277D0AAD0);
      if (swift_dynamicCast())
      {
        v33 = v1;
        v26 = [v35 contextID];
        v27 = [objc_allocWithZone(MEMORY[0x277CF0798]) init];
        v28 = [objc_opt_self() policyCancelingTouchesDeliveredToContextId:v26 withInitialTouchTimestamp:v22];
        v29 = v28;
        if (v28)
        {
          v30 = v28;
          [v30 setAssertionEndpoint_];

          swift_unknownObjectRelease();
        }

        [v14 ipc:v29 addPolicy:?];
        v31 = v27;
        MEMORY[0x26D5F7FE0]();
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267533A74();
        }

        OUTLINED_FUNCTION_34();
        sub_267533A84();

        v25 = v37;
        v1 = v33;
      }
    }

    (*(v4 + 8))(v10, v1);
    v32 = objc_allocWithZone(type metadata accessor for SceneCancelTouchAssertion());
    sub_26750C580(v25);
    swift_unknownObjectRelease();

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

void sub_267528D80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_267528E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v39 = a4;
  v40 = a5;
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v7 = sub_267533914();
  v8 = OUTLINED_FUNCTION_1_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  v15 = &v36 - v14;
  v16 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_settingsDiffInspector;
  v17 = *(v5 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_settingsDiffInspector);
  OUTLINED_FUNCTION_7_5();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  v19 = qword_2801C79B0;
  v20 = v17;

  sub_26751681C(v19, sub_267531F60, v18);

  v21 = *(v6 + v16);
  OUTLINED_FUNCTION_7_5();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  v22 = v21;

  v23 = OUTLINED_FUNCTION_41();
  sub_26751681C(v23, v24, v25);

  v26 = *(v6 + v16);
  OUTLINED_FUNCTION_7_5();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(v15, v36, v7);
  v28 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v29 = swift_allocObject();
  v30 = v38;
  *(v29 + 2) = v37;
  *(v29 + 3) = v30;
  v31 = v40;
  *(v29 + 4) = v39;
  *(v29 + 5) = v31;
  *(v29 + 6) = v27;
  (*(v10 + 32))(&v29[v28], v15, v7);
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  v32 = v26;

  v33 = OUTLINED_FUNCTION_41();
  sub_26751681C(v33, v34, v35);

  OUTLINED_FUNCTION_48();
}

void sub_2675290E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene);
    if (v2 && (v3 = [v2 clientSettings]) != 0)
    {
      v4 = v3;
      type metadata accessor for SnippetSceneClientSettings();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        if (qword_2801C7078 != -1)
        {
          swift_once();
        }

        v7 = sub_267533504();
        __swift_project_value_buffer(v7, qword_2801C7AA0);
        v8 = v1;
        v9 = v4;
        v10 = sub_2675334E4();
        v11 = sub_267533B24();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 138543618;
          *(v12 + 4) = v8;
          *v13 = v1;
          *(v12 + 12) = 2114;
          v14 = v8;
          v15 = [v6 otherSettings];
          swift_beginAccess();
          if ([v15 objectForSetting_])
          {
            sub_267533C74();
            swift_unknownObjectRelease();
            sub_267510354(v19, &v20);
          }

          else
          {
            v20 = 0u;
            v21 = 0u;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C7610, &qword_267535780);
          type metadata accessor for SceneMetrics();
          if (swift_dynamicCast())
          {
            v16 = *&v19[0];
          }

          else
          {
            v16 = 0;
            *&v19[0] = 0;
          }

          *(v12 + 14) = v16;
          v13[1] = v16;
          _os_log_impl(&dword_267507000, v10, v11, "[%{public}@] ClientSetting[resolvedMetrics] did change to %{public}@", v12, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7D60, &qword_2675361D0);
          swift_arrayDestroy();
          MEMORY[0x26D5F8BD0](v13, -1, -1);
          MEMORY[0x26D5F8BD0](v12, -1, -1);
        }

        v17 = [v6 otherSettings];
        swift_beginAccess();
        if ([v17 objectForSetting_])
        {
          sub_267533C74();
          swift_unknownObjectRelease();
          sub_267510354(v19, &v20);
        }

        else
        {
          v20 = 0u;
          v21 = 0u;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C7610, &qword_267535780);
        type metadata accessor for SceneMetrics();
        if (swift_dynamicCast())
        {
          v18 = *&v19[0];
        }

        else
        {
          v18 = 0;
          *&v19[0] = 0;
        }

        sub_267525054(v18);
      }
    }

    else
    {
      v4 = v1;
    }
  }
}

void sub_2675294A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene);
    if (v2 && (v3 = [v2 clientSettings]) != 0)
    {
      v4 = v3;
      type metadata accessor for SnippetSceneClientSettings();
      v5 = swift_dynamicCastClass();
      if (v5 && (v6 = [v5 otherSettings], v7 = sub_26750F994(v6), v6, v7))
      {
        if (qword_2801C7078 != -1)
        {
          swift_once();
        }

        v8 = sub_267533504();
        __swift_project_value_buffer(v8, qword_2801C7AA0);
        v9 = v1;

        v10 = sub_2675334E4();
        v11 = sub_267533B24();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v23 = v14;
          *v12 = 138543618;
          *(v12 + 4) = v9;
          *v13 = v1;
          *(v12 + 12) = 2082;
          type metadata accessor for CGRect(0);
          v16 = v15;
          v17 = v9;
          v18 = MEMORY[0x26D5F8010](v7, v16);
          v20 = sub_26751C8D8(v18, v19, &v23);

          *(v12 + 14) = v20;
          _os_log_impl(&dword_267507000, v10, v11, "[%{public}@] ClientSetting[touchRestrictedRects] did change to %{public}s", v12, 0x16u);
          sub_26751C99C(v13);
          MEMORY[0x26D5F8BD0](v13, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v14);
          MEMORY[0x26D5F8BD0](v14, -1, -1);
          MEMORY[0x26D5F8BD0](v12, -1, -1);
        }

        v21 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_activityTouchRestrictedRects;
        swift_beginAccess();
        v22 = *&v9[v21];
        *&v9[v21] = v7;
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

void sub_267529738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = a5;
  v87 = a6;
  v91 = a4;
  v83 = a2;
  v90 = sub_267533914();
  v85 = *(v90 - 8);
  v7 = *(v85 + 64);
  MEMORY[0x28223BE20](v90, v8);
  v89 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C8200, &unk_267536230);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v71 - v13;
  v15 = sub_267533C64();
  v88 = *(v15 - 8);
  v16 = *(v88 + 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v71 - v19;
  v84 = *(a3 - 8);
  isa = v84[8].isa;
  v23 = MEMORY[0x28223BE20](v18, v22);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v71 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = *(Strong + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene);
    if (v29 && (v30 = [v29 clientSettings]) != 0)
    {
      v31 = v30;
      type metadata accessor for SnippetSceneClientSettings();
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        v81 = v31;
        v33 = [v32 otherSettings];
        sub_26750F794(v33, &v92);

        if (*(&v92 + 1) >> 60 == 15)
        {
        }

        else
        {
          v74 = v15;
          v75 = &v71 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
          v76 = v26;
          v78 = v14;
          v82 = *(&v92 + 1);
          v34 = v92;
          if (qword_2801C7078 != -1)
          {
            swift_once();
          }

          v35 = sub_267533504();
          __swift_project_value_buffer(v35, qword_2801C7AA0);
          v36 = v28;
          v37 = v82;
          sub_267513638(v34, v82);
          v38 = sub_2675334E4();
          v39 = v34;
          v40 = sub_267533B24();
          v79 = v36;

          sub_26750FD08(v39, v37);
          v73 = v40;
          v77 = v38;
          v41 = os_log_type_enabled(v38, v40);
          v80 = v39;
          if (v41)
          {
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *&v92 = v44;
            *v42 = 138543618;
            v45 = v79;
            *(v42 + 4) = v79;
            *v43 = v28;
            *(v42 + 12) = 2082;
            v46 = v45;
            v47 = v82;
            sub_267513638(v39, v82);
            v72 = sub_267533464();
            v49 = v48;
            sub_26750FD08(v39, v47);
            v50 = sub_26751C8D8(v72, v49, &v92);

            *(v42 + 14) = v50;
            v51 = v77;
            _os_log_impl(&dword_267507000, v77, v73, "[%{public}@] ClientSetting[viewModelData] did change to %{public}s", v42, 0x16u);
            sub_26751C99C(v43);
            MEMORY[0x26D5F8BD0](v43, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v44);
            MEMORY[0x26D5F8BD0](v44, -1, -1);
            MEMORY[0x26D5F8BD0](v42, -1, -1);
          }

          else
          {
          }

          v52 = v78;
          v53 = v76;
          v54 = v75;
          v55 = sub_2675333B4();
          v56 = *(v55 + 48);
          v57 = *(v55 + 52);
          swift_allocObject();
          sub_2675333A4();
          sub_267533394();

          __swift_storeEnumTagSinglePayload(v20, 0, 1, a3);
          v58 = v52;
          v59 = v84;
          v60 = v84[4].isa;
          v77 = v84 + 4;
          v88 = v60;
          v60(v53, v20, a3);
          v61 = sub_267533AD4();
          __swift_storeEnumTagSinglePayload(v58, 1, 1, v61);
          v62 = v85;
          (*(v85 + 16))(v89, v83, v90);
          (v59[2].isa)(v54, v53, a3);
          sub_267533AB4();
          v63 = sub_267533AA4();
          v64 = (*(v62 + 80) + 64) & ~*(v62 + 80);
          v65 = (v7 + LOBYTE(v59[10].isa) + v64) & ~LOBYTE(v59[10].isa);
          v66 = swift_allocObject();
          v67 = MEMORY[0x277D85700];
          *(v66 + 2) = v63;
          *(v66 + 3) = v67;
          v68 = v90;
          v69 = v91;
          *(v66 + 4) = a3;
          *(v66 + 5) = v69;
          v70 = v87;
          *(v66 + 6) = v86;
          *(v66 + 7) = v70;
          (*(v62 + 32))(&v66[v64], v89, v68);
          v88(&v66[v65], v54, a3);
          sub_26751F044(0, 0, v78, &unk_267536A50, v66);

          sub_26750FD08(v80, v82);

          (v59[1].isa)(v53, a3);
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
}

uint64_t sub_267529E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[5] = v13;
  v6[2] = a4;
  v6[3] = a5;
  v7 = *(a6 - 8);
  v6[6] = v7;
  v8 = *(v7 + 64) + 15;
  v6[7] = swift_task_alloc();
  sub_267533AB4();
  v6[8] = sub_267533AA4();
  v10 = sub_267533A94();

  return MEMORY[0x2822009F8](sub_267529F84, v10, v9);
}

uint64_t sub_267529F84()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  sub_267533914();
  MEMORY[0x26D5F7EA0]();
  LOBYTE(v7) = sub_2675339B4();
  (*(v4 + 8))(v2, v5);
  if ((v7 & 1) == 0)
  {
    v8 = v0[2];
    (*(v0[6] + 16))(v0[7], v0[3], v0[4]);
    OUTLINED_FUNCTION_26();
    sub_267533904();
  }

  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

void sub_26752A088(unsigned int a1, char a2)
{
  v3 = v2;
  v6 = sub_267533924();
  v7 = OUTLINED_FUNCTION_1_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  OUTLINED_FUNCTION_1_11();
  v15 = v14 - v13;
  v16 = sub_267533944();
  v17 = OUTLINED_FUNCTION_1_2(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17, v22);
  OUTLINED_FUNCTION_1_11();
  v25 = v24 - v23;
  BSDispatchQueueAssertMain();
  if ((v3[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isInvalidated] & 1) != 0 || (a2 & 1) == 0 && *&v3[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController__presentationMode] == a1)
  {
    goto LABEL_17;
  }

  v55 = v19;
  v56 = v15;
  if (qword_2801C7078 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v26 = sub_267533504();
  OUTLINED_FUNCTION_31(v26, qword_2801C7AA0);
  v27 = v3;
  v28 = sub_2675334E4();
  v29 = sub_267533B54();

  v57 = v16;
  if (os_log_type_enabled(v28, v29))
  {
    v54 = v9;
    v30 = swift_slowAlloc();
    v53 = v25;
    v31 = OUTLINED_FUNCTION_7_4();
    v52 = OUTLINED_FUNCTION_23();
    aBlock[0] = v52;
    *v30 = 138543874;
    *(v30 + 4) = v27;
    *v31 = v27;
    *(v30 + 12) = 2082;
    v32 = v27;
    v33 = SnippetHostViewController.PresentationMode.description.getter(a1);
    v35 = a2;
    v36 = v6;
    v37 = sub_26751C8D8(v33, v34, aBlock);

    *(v30 + 14) = v37;
    v6 = v36;
    *(v30 + 22) = 1026;
    *(v30 + 24) = v35 & 1;
    _os_log_impl(&dword_267507000, v28, v29, "[%{public}@] Updating presentationMode to: %{public}s - (forced? %{BOOL,public}d).", v30, 0x1Cu);
    sub_26751C99C(v31);
    v25 = v53;
    OUTLINED_FUNCTION_2_5();
    __swift_destroy_boxed_opaque_existential_1(v52);
    OUTLINED_FUNCTION_2_5();
    v9 = v54;
    OUTLINED_FUNCTION_2_5();
  }

  *&v27[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController__presentationMode] = a1;
  if (a1 < 2)
  {
    sub_26752D418(0, 1);
    sub_26752A998(a1 == 1, 0, 0);
LABEL_16:
    v40 = sub_267525564();
    v41 = swift_allocObject();
    *(v41 + 16) = v27;
    *(v41 + 24) = a1 == 1;
    aBlock[4] = sub_2675323C0;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26753263C;
    aBlock[3] = &block_descriptor_248;
    v42 = _Block_copy(aBlock);
    v43 = v27;
    sub_267533934();
    sub_2675319AC(&qword_2801C8178, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C8180, &qword_2675369F0);
    sub_267531B0C(&qword_2801C8188, &qword_2801C8180, &qword_2675369F0);
    sub_267533C84();
    MEMORY[0x26D5F8160](0, v25, v56, v42);
    _Block_release(v42);

    (*(v9 + 8))(v56, v6);
    (*(v55 + 8))(v25, v57);

LABEL_17:
    OUTLINED_FUNCTION_48();
    return;
  }

  if (a1 != 2)
  {
    LODWORD(aBlock[0]) = a1;
    sub_267533E44();
    __break(1u);
    return;
  }

  v38 = *&v27[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene];
  if (v38)
  {
    v39 = v38;
    if ([v39 contentState] != 2)
    {
      sub_26752A998(1, 0, 0);
    }

    sub_26752A648();

    goto LABEL_16;
  }

  v44 = v27;
  v58 = sub_2675334E4();
  v45 = sub_267533B34();

  if (os_log_type_enabled(v58, v45))
  {
    OUTLINED_FUNCTION_9_1();
    v46 = OUTLINED_FUNCTION_22();
    aBlock[0] = v46;
    *v29 = 136446210;
    v47 = sub_267525464();
    v49 = sub_26751C8D8(v47, v48, aBlock);

    *(v29 + 4) = v49;
    OUTLINED_FUNCTION_33(&dword_267507000, v58, v45, "[%{public}s] Snapshot failed because there is no scene found");
    __swift_destroy_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_10_1();

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_48();
}

uint64_t sub_26752A648()
{
  result = BSDispatchQueueAssertMain();
  if (*&v0[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController__presentationMode] == 2)
  {
    OUTLINED_FUNCTION_7_5();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v3 = v0;
    BSDispatchQueueAssertMain();
    v4 = v3;

    sub_26752DD2C(v4, v4, sub_26753191C, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_26752A6EC(unsigned __int8 a1, void *a2)
{
  v4 = a1;
  BSDispatchQueueAssertMain();
  if (v4 == 3)
  {
    v5 = 1;
  }

  else
  {
    if (qword_2801C7078 != -1)
    {
      swift_once();
    }

    v6 = sub_267533504();
    __swift_project_value_buffer(v6, qword_2801C7AA0);
    v7 = a2;
    v8 = sub_2675334E4();
    v9 = sub_267533B34();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543618;
      *(v10 + 4) = v7;
      *v11 = v7;
      *(v10 + 12) = 2114;
      sub_267531A5C();
      swift_allocError();
      *v12 = a1;
      v13 = v7;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v14;
      v11[1] = v14;
      _os_log_impl(&dword_267507000, v8, v9, "[%{public}@] Snapshot failed so backgrounding scene without updated snapshot: %{public}@", v10, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7D60, &qword_2675361D0);
      swift_arrayDestroy();
      MEMORY[0x26D5F8BD0](v11, -1, -1);
      MEMORY[0x26D5F8BD0](v10, -1, -1);
    }

    v5 = 0;
  }

  sub_26752D418(v5, 0);
  return sub_26752A998(0, 0, 0);
}

uint64_t sub_26752A8B4()
{
  v0 = sub_267533954();
  v1 = OUTLINED_FUNCTION_1_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1, v6);
  OUTLINED_FUNCTION_1_11();
  v9 = (v8 - v7);
  *v9 = sub_267525564();
  (*(v3 + 104))(v9, *MEMORY[0x277D85200], v0);
  v10 = sub_267533964();
  v11 = *(v3 + 8);
  v12 = OUTLINED_FUNCTION_26();
  result = v13(v12);
  if ((v10 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

id sub_26752A998(char a1, void (*a2)(void), void *a3)
{
  BSDispatchQueueAssertMain();
  v8 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene;
  v9 = *(v3 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene);
  if (v9)
  {
    v10 = qword_2801C7078;
    v11 = v9;
    if (v10 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v12 = sub_267533504();
    __swift_project_value_buffer(v12, qword_2801C7AA0);
    v13 = v3;
    v14 = sub_2675334E4();
    v15 = sub_267533B54();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_29();
      v89 = v11;
      v17 = a3;
      v18 = a2;
      v19 = OUTLINED_FUNCTION_7_4();
      v8 = OUTLINED_FUNCTION_23();
      aBlock = v8;
      *v16 = 138543618;
      *(v16 + 4) = v13;
      *v19 = v13;
      *(v16 + 12) = 2082;
      if (a1)
      {
        v20 = 0x756F726765726F66;
      }

      else
      {
        v20 = 0x756F72676B636162;
      }

      v21 = v13;
      v22 = sub_26751C8D8(v20, 0xEA0000000000646ELL, &aBlock);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_267507000, v14, v15, "[%{public}@] Updating snippet scene to %{public}s.", v16, 0x16u);
      sub_26751C99C(v19);
      a2 = v18;
      a3 = v17;
      v11 = v89;
      OUTLINED_FUNCTION_2_5();
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_9_2();
    }

    v3 = swift_allocObject();
    *(v3 + 16) = a1 & 1;
    OUTLINED_FUNCTION_5_0();
    v23 = swift_allocObject();
    a1 = v23;
    *(v23 + 16) = sub_2675318D0;
    *(v23 + 24) = v3;
    v96 = sub_267532620;
    v97 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v93 = 1107296256;
    v94 = sub_267525B0C;
    v95 = &block_descriptor_167;
    v24 = _Block_copy(&aBlock);

    OUTLINED_FUNCTION_5_0();
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    v96 = sub_267531918;
    v97 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v93 = 1107296256;
    v94 = sub_26752B728;
    v95 = &block_descriptor_173;
    v26 = _Block_copy(&aBlock);
    sub_267516A64(a2);

    [v11 performUpdate:v24 withCompletion:v26];

    _Block_release(v26);
    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_13;
  }

  v29 = *(v3 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_processIdentity);
  v30 = *(v3 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_processIdentity + 8);
  v31 = sub_267532C98(v29, v30);
  if (!v31)
  {
    if (qword_2801C7078 == -1)
    {
LABEL_31:
      v77 = sub_267533504();
      __swift_project_value_buffer(v77, qword_2801C7AA0);
      v78 = v3;
      v79 = sub_2675334E4();
      v80 = sub_267533B54();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_7_4();
        v82 = OUTLINED_FUNCTION_22();
        aBlock = v82;
        *v81 = 138543619;
        *(v81 + 4) = v78;
        *v4 = v78;
        *(v81 + 12) = 2081;
        v83 = v78;
        *(v81 + 14) = sub_26751C8D8(v29, v30, &aBlock);
        _os_log_impl(&dword_267507000, v79, v80, "[%{public}@] Couldn't create a scene with %{private}s", v81, 0x16u);
        sub_26751C99C(v4);
        OUTLINED_FUNCTION_10_1();
        __swift_destroy_boxed_opaque_existential_1(v82);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();
      }

      if (a2)
      {
        a2();
      }

LABEL_10:
      v28 = 0;
      return sub_2675160C4(v28);
    }

LABEL_42:
    OUTLINED_FUNCTION_0_10();
    goto LABEL_31;
  }

  v89 = a3;
  v88 = v31;
  isEscapingClosureAtFileLocation = [objc_opt_self() identityForProcessIdentity_];
  if (qword_2801C7090 != -1)
  {
    goto LABEL_36;
  }

LABEL_13:
  v32 = qword_2801C7E90;
  OUTLINED_FUNCTION_5_0();
  v33 = swift_allocObject();
  *(v33 + 16) = v3;
  *(v33 + 24) = isEscapingClosureAtFileLocation;
  OUTLINED_FUNCTION_5_0();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2675317F8;
  *(v34 + 24) = v33;
  v96 = sub_26751040C;
  v97 = v34;
  OUTLINED_FUNCTION_2_8();
  v93 = 1107296256;
  v94 = sub_26752B968;
  v95 = &block_descriptor_130;
  v35 = _Block_copy(&aBlock);
  v36 = v97;
  v37 = v3;
  v87 = isEscapingClosureAtFileLocation;

  v38 = [v32 createScene_];
  _Block_release(v35);
  v39 = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
    goto LABEL_38;
  }

  v86 = a2;
  v39 = *(v8 + v3);
  *(v8 + v3) = v38;
  v32 = v38;

  [v32 setDelegate_];
  v40 = [v32 layerManager];
  [v40 addObserver_];

  result = [v32 uiPresentationManager];
  if (!result)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v42 = result;
  v43 = sub_2675339C4();
  v44 = OUTLINED_FUNCTION_27();
  a2 = [v44 v45];

  v46 = *&v37[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scenePresenter];
  *&v37[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scenePresenter] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v96 = sub_26752BA5C;
  v97 = 0;
  OUTLINED_FUNCTION_2_8();
  v93 = 1107296256;
  v94 = sub_26753265C;
  v95 = &block_descriptor_133;
  v38 = _Block_copy(&aBlock);

  [a2 modifyPresentationContext_];
  _Block_release(v38);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [a2 activate];
  v47 = [a2 presentationView];
  v48 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_systemProvidedMetrics;
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  v49 = *(*&v37[v48] + OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics);
  v90 = 0.0;
  v91 = 0.0;
  v50 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  if (sub_267514278())
  {
    v51 = sub_267514000();
    v50 = v53;
    v90 = v51;
    v91 = v53;
    v54 = OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius;
    OUTLINED_FUNCTION_4_5();
    swift_beginAccess();
    v52 = *&v49[v54];
  }

  v55 = *&v37[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_activatedSceneView];
  *&v37[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_activatedSceneView] = v47;
  v56 = v49;
  v36 = v47;

  result = [v37 view];
  if (!result)
  {
    goto LABEL_44;
  }

  v57 = result;
  [result addSubview_];

  result = [v37 view];
  if (result)
  {
    v58 = result;
    [result setNeedsLayout];

    [v36 setClipsToBounds_];
    v59 = [v36 layer];
    sub_267530F1C(0xD00000000000001CLL, 0x80000002675384C0, v59, &selRef_setName_);

    [v36 _setContinuousCornerRadius_];
    [v37 setPreferredContentSize_];
    OUTLINED_FUNCTION_7_5();
    v60 = swift_allocObject();
    *(v60 + 16) = v37;
    OUTLINED_FUNCTION_5_0();
    v61 = swift_allocObject();
    *(v61 + 16) = sub_26753184C;
    *(v61 + 24) = v60;
    v96 = sub_2675326B4;
    v97 = v61;
    OUTLINED_FUNCTION_2_8();
    v93 = 1107296256;
    v94 = sub_26753265C;
    v95 = &block_descriptor_142;
    v62 = _Block_copy(&aBlock);
    v38 = v37;

    [v32 configureParameters_];
    _Block_release(v62);
    v39 = swift_isEscapingClosureAtFileLocation();

    if ((v39 & 1) == 0)
    {
      v84 = v56;
      if (qword_2801C7078 == -1)
      {
LABEL_22:
        v85 = v32;
        v63 = sub_267533504();
        OUTLINED_FUNCTION_31(v63, qword_2801C7AA0);
        v64 = v38;
        v65 = sub_2675334E4();
        v66 = sub_267533B54();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_7_4();
          v68 = OUTLINED_FUNCTION_22();
          aBlock = v68;
          *v67 = 138543618;
          *(v67 + 4) = v64;
          *v39 = v37;
          *(v67 + 12) = 2082;
          if (a1)
          {
            v69 = 0x756F726765726F66;
          }

          else
          {
            v69 = 0x756F72676B636162;
          }

          v70 = v64;
          v71 = sub_26751C8D8(v69, 0xEA0000000000646ELL, &aBlock);

          *(v67 + 14) = v71;
          _os_log_impl(&dword_267507000, v65, v66, "[%{public}@] Creating snippet scene to %{public}s.", v67, 0x16u);
          sub_26751C99C(v39);
          OUTLINED_FUNCTION_10_1();
          __swift_destroy_boxed_opaque_existential_1(v68);
          OUTLINED_FUNCTION_9_2();
          OUTLINED_FUNCTION_2_5();
        }

        v3 = swift_allocObject();
        *(v3 + 16) = &v90;
        *(v3 + 24) = a1 & 1;
        *(v3 + 32) = v64;
        OUTLINED_FUNCTION_5_0();
        v72 = swift_allocObject();
        *(v72 + 16) = sub_267531884;
        *(v72 + 24) = v3;
        v96 = sub_267531894;
        v97 = v72;
        aBlock = MEMORY[0x277D85DD0];
        v93 = 1107296256;
        v30 = &v94;
        v94 = sub_267525B0C;
        v95 = &block_descriptor_151;
        v73 = _Block_copy(&aBlock);
        v74 = v64;

        OUTLINED_FUNCTION_5_0();
        v75 = swift_allocObject();
        v29 = v89;
        *(v75 + 16) = v86;
        *(v75 + 24) = v89;
        v96 = sub_2675326B0;
        v97 = v75;
        aBlock = MEMORY[0x277D85DD0];
        v93 = 1107296256;
        v94 = sub_26752B728;
        v95 = &block_descriptor_157;
        v76 = _Block_copy(&aBlock);
        sub_267516A64(v86);

        v4 = v85;
        [v85 performUpdate:v73 withCompletion:v76];

        swift_unknownObjectRelease();
        _Block_release(v76);
        _Block_release(v73);
        LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

        if ((v76 & 1) == 0)
        {
          v28 = sub_267531884;
          return sub_2675160C4(v28);
        }

        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      OUTLINED_FUNCTION_0_10();
      goto LABEL_22;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_45:
  __break(1u);
  return result;
}

void sub_26752B728(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_26752B7A0(void *a1, char *a2, uint64_t a3)
{
  v6 = sub_2675334B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = 0x3A656E656373;
  v21[1] = 0xE600000000000000;
  sub_2675334A4();
  v12 = sub_267533494();
  v14 = v13;
  (*(v7 + 8))(v11, v6);
  MEMORY[0x26D5F7FC0](v12, v14);

  MEMORY[0x26D5F7FC0](58, 0xE100000000000000);
  v15 = [a2 description];
  v16 = sub_2675339D4();
  v18 = v17;

  MEMORY[0x26D5F7FC0](v16, v18);

  v19 = sub_2675339C4();

  [a1 setIdentifier_];

  [a1 setClientIdentity_];
  return [a1 setSpecification_];
}

uint64_t sub_26752B968(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id sub_26752B9BC(void *a1)
{
  [a1 setPresentedLayerTypes_];
  [a1 setAppearanceStyle_];
  [a1 setBackgroundColorWhileHosting_];
  [a1 setBackgroundColorWhileNotHosting_];
  [a1 setInheritsSecurity_];

  return [a1 setResizesHostedContext_];
}

void sub_26752BA60(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for SnippetSceneMutableClientSettings()) init];
  v5 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_viewModel;
  swift_beginAccess();
  sub_26752FFB4(a2 + v5, v6);
  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  sub_2675136F8();
  sub_267524480();
  __swift_destroy_boxed_opaque_existential_1(v6);
  [a1 setClientSettings_];
}

void sub_26752BB28(void *a1, uint64_t a2, uint64_t *a3, char a4, char *a5)
{
  type metadata accessor for LiveMutableSceneSettings();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = objc_opt_self();
    v12 = a1;
    v13 = [v11 _applicationKeyWindow];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 interfaceOrientation];

      if ((v15 - 3) <= 1)
      {
        v16 = a3++;
LABEL_7:
        v17 = *a3;
        v18 = *v16;
        v19 = v12;
        BSRectWithSize();
        [v10 setFrame_];

        v20 = v19;
        [v10 setInterfaceOrientation_];
        v21 = [objc_opt_self() mainConfiguration];
        [v10 setDisplayConfiguration_];

        [v10 setForeground_];
        v22 = v20;
        v23 = [a5 traitCollection];
        v24 = [v23 userInterfaceStyle];

        [v10 setUserInterfaceStyle_];
        v25 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_systemProvidedMetrics;
        swift_beginAccess();
        v26 = *&a5[v25];
        sub_2675249D4();

        return;
      }
    }

    else
    {
      v15 = 1;
    }

    v16 = a3 + 1;
    goto LABEL_7;
  }
}

uint64_t sub_26752BD2C(uint64_t a1, uint64_t a2)
{
  result = BSDispatchQueueAssertMain();
  v6 = *(v2 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene);
  if (v6)
  {
    OUTLINED_FUNCTION_5_0();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    OUTLINED_FUNCTION_5_0();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_267531894;
    *(v8 + 24) = v7;
    v11[4] = sub_267532620;
    v11[5] = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_267525B0C;
    v11[3] = &block_descriptor_232;
    v9 = _Block_copy(v11);
    v10 = v6;

    [v10 performUpdate_];

    _Block_release(v9);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_26752BE98()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scenePresenter;
  v2 = *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scenePresenter);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
  swift_unknownObjectRelease();
  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isSceneForeground) = 0;
  v4 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_activatedSceneView;
  [*(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_activatedSceneView) removeFromSuperview];
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;

  v6 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene;
  v7 = *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene);
  if (v7)
  {
    v8 = [v7 layerManager];
    [v8 remove_];

    v7 = *(v0 + v6);
    if (v7)
    {
      [v7 setDelegate_];
      v7 = *(v0 + v6);
    }
  }

  [v7 invalidate];
  v9 = *(v0 + v6);
  *(v0 + v6) = 0;

  *(v0 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isInvalidated) = 1;
}

void sub_26752BF94()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  if (*&v0[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene])
  {
    v2 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_resolvedMetrics;
    OUTLINED_FUNCTION_4_5();
    swift_beginAccess();
    v3 = *&v1[v2];
    if (v3)
    {
      v4 = &v3[OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_size];
      OUTLINED_FUNCTION_4_5();
      swift_beginAccess();
      v6 = *v4;
      v5 = v4[1];
      v19 = *v4;
      v20 = v5;
      v7 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_systemProvidedMetrics;
      OUTLINED_FUNCTION_4_5();
      swift_beginAccess();
      v8 = *(*&v1[v7] + OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics);
      if (sub_267514278())
      {
        v9 = *&v8[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__widthRequest];
        v6 = sub_26750A7FC(v6);
        v19 = v6;
        v20 = v5;
      }

      v10 = v8;
      v11 = v3;
      v12 = [v1 view];
      if (v12)
      {
        v13 = v12;
        [v12 bounds];
        v15 = v14;
        v17 = v16;

        if (v5 <= 40.0)
        {
        }

        else
        {
          v21.width = v15;
          v21.height = v17;
          v22.width = v6;
          v22.height = v5;
          if (!CGSizeEqualToSize(v21, v22))
          {
            v18 = MEMORY[0x26D5F85F0]();
            sub_26752C130(v1, &v19);
            objc_autoreleasePoolPop(v18);
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_26752C130(void *a1, double *a2)
{
  v24 = a2;
  v25 = a1;
  sub_26752BD2C(sub_2675317B8, v23);
  v4 = *a2;
  v5 = a2[1];
  if (qword_2801C7078 != -1)
  {
    swift_once();
  }

  v6 = sub_267533504();
  __swift_project_value_buffer(v6, qword_2801C7AA0);
  v7 = a1;
  v8 = sub_2675334E4();
  v9 = sub_267533B54();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v10 = 138543874;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2082;
    v26 = v4;
    v27 = v5;
    type metadata accessor for CGSize(0);
    v12 = v7;
    v13 = sub_2675339E4();
    v15 = sub_26751C8D8(v13, v14, &v28);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2082;
    [v12 preferredContentSize];
    v26 = v16;
    v27 = v17;
    v18 = sub_2675339E4();
    v20 = sub_26751C8D8(v18, v19, &v28);

    *(v10 + 24) = v20;
    _os_log_impl(&dword_267507000, v8, v9, "[%{public}@] Updating preferred content size with requested size: %{public}s, current size: %{public}s", v10, 0x20u);
    sub_26751C99C(v11);
    MEMORY[0x26D5F8BD0](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26D5F8BD0](v22, -1, -1);
    MEMORY[0x26D5F8BD0](v10, -1, -1);
  }

  return [v7 setPreferredContentSize_];
}

void sub_26752C398(void *a1, void *a2, uint64_t *a3, void *a4)
{
  type metadata accessor for LiveMutableSceneSettings();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = objc_opt_self();
  v11 = a1;
  v12 = [v10 _applicationKeyWindow];
  if (!v12)
  {
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [v12 interfaceOrientation];

  if (v14 == 4)
  {
    goto LABEL_6;
  }

  v15 = [v10 _applicationKeyWindow];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 interfaceOrientation];

  if (v17 == 3)
  {
LABEL_6:
    v18 = a3++;
  }

  else
  {
    v18 = a3 + 1;
  }

  v19 = *a3;
  v20 = *v18;
  v27 = v11;
  BSRectWithSize();
  [v9 setFrame_];

  v21 = [a4 view];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  v23 = [v21 window];

  if (v23)
  {
    v24 = [v23 windowScene];

    if (v24)
    {
      v25 = [v24 _synchronizedDrawingFence];

      if (v25)
      {
        v26 = v25;
        [a2 setAnimationFence_];
      }
    }
  }
}

void sub_26752C5CC()
{
  v1 = v0;
  v73 = sub_267533454();
  v2 = OUTLINED_FUNCTION_1_2(v73);
  v4 = v3;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v2, v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v69 - v12;
  BSDispatchQueueAssertMain();
  v14 = *&v1[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene];
  if (!v14)
  {
LABEL_30:
    OUTLINED_FUNCTION_43();
    return;
  }

  v74 = v4;
  v72 = v14;
  v15 = [v1 view];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 window];

    if (v17)
    {
      v18 = v17;
      v19 = [v72 layerManager];
      v20 = [v19 layers];

      sub_2675103C4(0, &qword_2801C81D8, 0x277CBEB58);
      v21 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_touchDeliveryPolicyAssertions;
      OUTLINED_FUNCTION_4_5();
      swift_beginAccess();
      v81 = v21;
      v22 = *&v1[v21];

      v24 = sub_26752CD68(v23);
      sub_26752CDF8(v24);

      v78 = sub_26752CEF0();
      v71 = v18;
      v77 = [v18 _contextId];
      v70 = v20;
      sub_267533B14();
      v76 = &v83;
      v79 = v10;
      v75 = v13;
      while (1)
      {
        sub_267533444();
        if (!v89)
        {
          break;
        }

        sub_267510354(&v88, &aBlock);
        sub_2675103C4(0, &unk_2801C7FB0, 0x277D0AAD0);
        if (swift_dynamicCast())
        {
          v80 = v87;
          v25 = [v87 contextID];
          v26 = sub_267533F24();
          [v78 removeObject_];

          v27 = [objc_allocWithZone(MEMORY[0x277CF0798]) init];
          v28 = [objc_opt_self() policyRequiringSharingOfTouchesDeliveredToChildContextId:v25 withHostContextId:v77];
          v29 = v28;
          if (v28)
          {
            v30 = v28;
            [v30 setAssertionEndpoint_];

            swift_unknownObjectRelease();
          }

          OUTLINED_FUNCTION_7_5();
          v31 = swift_allocObject();
          *(v31 + 16) = v1;
          v85 = sub_267531E4C;
          v86 = v31;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v83 = sub_267528D80;
          v84 = &block_descriptor_222;
          v32 = _Block_copy(&aBlock);
          v33 = v1;

          v34 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
          _Block_release(v32);
          v35 = v81;
          OUTLINED_FUNCTION_24();
          v36 = v27;
          v37 = *&v1[v35];
          swift_isUniquelyReferenced_nonNull_native();
          v87 = *&v1[v35];
          v38 = v87;
          *&v1[v35] = 0x8000000000000000;
          v39 = sub_267530094(v25);
          if (__OFADD__(v38[2], (v40 & 1) == 0))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v41 = v39;
          v42 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81E0, &qword_267536A20);
          if (sub_267533D74())
          {
            v43 = sub_267530094(v25);
            if ((v42 & 1) != (v44 & 1))
            {
              goto LABEL_37;
            }

            v41 = v43;
          }

          v45 = v87;
          if (v42)
          {
            v46 = *(v87 + 7);
            v47 = *(v46 + 8 * v41);
            *(v46 + 8 * v41) = v36;
          }

          else
          {
            *(v87 + (v41 >> 6) + 8) |= 1 << v41;
            *(v45[6] + 4 * v41) = v25;
            *(v45[7] + 8 * v41) = v36;
            v48 = v45[2];
            v49 = __OFADD__(v48, 1);
            v50 = v48 + 1;
            if (v49)
            {
              goto LABEL_35;
            }

            v45[2] = v50;
          }

          *&v1[v81] = v45;
          swift_endAccess();
          v13 = v75;
          if (v34)
          {
            [swift_unknownObjectRetain() ipc:v29 addPolicy:?];

            swift_unknownObjectRelease_n();
          }

          else
          {
          }

          v10 = v79;
        }
      }

      v51 = *(v74 + 8);
      v74 += 8;
      v51(v13, v73);
      sub_267533B14();
      v52 = v81;
      while (1)
      {
        sub_267533444();
        if (!v84)
        {
          break;
        }

        sub_267510354(&aBlock, &v88);
        if (swift_dynamicCast())
        {
          v53 = *&v1[v81];
          if (*(v53 + 16))
          {
            v54 = v87;
            v55 = sub_267530094(v87);
            if (v56)
            {
              v57 = *(*(v53 + 56) + 8 * v55);
              [v57 invalidate];
              v58 = v81;
              OUTLINED_FUNCTION_24();
              v59 = *&v1[v58];
              v60 = sub_267530094(v54);
              if (v61)
              {
                v62 = v60;
                v63 = *&v1[v52];
                swift_isUniquelyReferenced_nonNull_native();
                v87 = *&v1[v52];
                v64 = v87;
                *&v1[v52] = 0x8000000000000000;
                v65 = v64[3];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81E0, &qword_267536A20);
                v10 = v79;
                sub_267533D74();
                v66 = v87;

                sub_2675103C4(0, &qword_2801C7F20, 0x277CF0798);
                sub_267533D84();
                *&v1[v52] = v66;
              }

              swift_endAccess();
            }
          }
        }
      }

      v51(v10, v73);

      goto LABEL_30;
    }

    OUTLINED_FUNCTION_43();
  }

  else
  {
LABEL_36:
    __break(1u);
LABEL_37:
    sub_267533E74();
    __break(1u);
  }
}

void *sub_26752CD68(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26752FDF4(*(a1 + 16), 0);
  v4 = sub_267531E70(&v6, v3 + 8, v2, a1);
  sub_267531F58();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_26752CDF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_267530284(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_267530284((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_267510354(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_26752CEF0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_267533A44();

  v2 = [v0 initWithArray_];

  return v2;
}

void sub_26752CF68(void *a1, void *a2, char *a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_2801C7078 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v7 = sub_267533504();
    __swift_project_value_buffer(v7, qword_2801C7AA0);
    v8 = a1;
    v9 = a2;
    v10 = sub_2675334E4();
    v11 = sub_267533B54();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_29();
      v13 = OUTLINED_FUNCTION_7_4();
      v14 = OUTLINED_FUNCTION_23();
      v20 = v14;
      *v12 = 138543618;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2082;
      swift_getErrorValue();
      format = a3;
      v15 = v9;
      v16 = sub_267533E84();
      v18 = sub_26751C8D8(v16, v17, &v20);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_267507000, v10, v11, format, v12, 0x16u);
      sub_26751C99C(v13);
      OUTLINED_FUNCTION_2_5();
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_15();
    }

    else
    {
    }
  }
}

id sub_26752D140()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_touchDeliveryPolicyAssertions;
  OUTLINED_FUNCTION_4_5();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + v1);

  for (i = 0; v5; result = [*(*(v2 + 56) + ((v10 << 9) | (8 * v11))) invalidate])
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      OUTLINED_FUNCTION_24();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81F8, &unk_267536A38);
      sub_267533984();
      return swift_endAccess();
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_26752D27C()
{
  BSDispatchQueueAssertMain();
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = [v1 layer];
  sub_267530F1C(0xD000000000000018, 0x80000002675385E0, v2, &selRef_setName_);

  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v1 setFrame_];
  [v1 setClipsToBounds_];
  [v1 setAutoresizingMask_];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 addSubview_];

  v15 = *&v0[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_snippetSceneSnapshotView];
  *&v0[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_snippetSceneSnapshotView] = v1;
  v16 = v1;

  sub_26752D418(0, 0);
}

void sub_26752D418(unsigned __int8 a1, char a2)
{
  BSDispatchQueueAssertMain();
  v5 = *(v2 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_snippetSceneSnapshotView);
  if (!v5)
  {
    return;
  }

  v16 = *(v2 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_snippetSceneSnapshotView);
  if (a1 != 2)
  {
    v7 = v5;
    if ((a2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    objc_opt_self();
    OUTLINED_FUNCTION_5_0();
    v8 = swift_allocObject();
    *(v8 + 16) = a1 & 1;
    *(v8 + 24) = v16;
    v21 = sub_267531744;
    v22 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_26753263C;
    v20 = &block_descriptor_115;
    v9 = _Block_copy(&aBlock);
    v10 = v16;

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a1 & 1;
    v21 = sub_26753179C;
    v22 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_26752791C;
    v20 = &block_descriptor_121;
    v12 = _Block_copy(&aBlock);
    v13 = v10;

    v14 = OUTLINED_FUNCTION_27();
    [v14 v15];

    _Block_release(v12);
    _Block_release(v9);
    return;
  }

  a1 = [v5 isHidden];
  if (a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = 0.0;
  if (a1)
  {
    v6 = 1.0;
  }

  [v16 setAlpha_];
  [v16 setHidden_];
}

uint64_t sub_26752D678(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_26752D6BC(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_2801C7078 != -1)
    {
      swift_once();
    }

    v9 = sub_267533504();
    __swift_project_value_buffer(v9, qword_2801C7AA0);
    v10 = a3;
    v11 = sub_2675334E4();
    v12 = sub_267533B34();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v13 = 138543618;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2080;
      sub_267531A5C();
      v24 = a4;
      v16 = v10;
      v17 = sub_267533E84();
      v19 = sub_26751C8D8(v17, v18, &aBlock);

      *(v13 + 14) = v19;
      a4 = v24;
      _os_log_impl(&dword_267507000, v11, v12, "[%{public}@] Snapshot failed - %s", v13, 0x16u);
      sub_26751C99C(v14);
      MEMORY[0x26D5F8BD0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x26D5F8BD0](v15, -1, -1);
      MEMORY[0x26D5F8BD0](v13, -1, -1);
    }

    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;
    *(v20 + 32) = a1;
    v29 = sub_267531A2C;
    v30 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_26753263C;
    v28 = &block_descriptor_191;
    v21 = _Block_copy(&aBlock);
  }

  else
  {
    v22 = swift_allocObject();
    v22[2] = a3;
    v22[3] = a1;
    v22[4] = a4;
    v22[5] = a5;
    v29 = sub_267531AF4;
    v30 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_26753263C;
    v28 = &block_descriptor_197;
    v21 = _Block_copy(&aBlock);
    v23 = a3;
    sub_267531B00(a1, 0);
  }

  BSDispatchMain();
  _Block_release(v21);
}

void sub_26752D9D4(char *a1, void *a2, void (*a3)(uint64_t))
{
  if (*&a1[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController__presentationMode] == 2)
  {
    if (qword_2801C7078 != -1)
    {
      swift_once();
    }

    v7 = sub_267533504();
    __swift_project_value_buffer(v7, qword_2801C7AA0);
    v8 = a1;
    v9 = sub_2675334E4();
    v10 = sub_267533B54();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_267507000, v9, v10, "[%{public}@] Snapshot success - Updating layer.", v11, 0xCu);
      sub_26751C99C(v12);
      MEMORY[0x26D5F8BD0](v12, -1, -1);
      MEMORY[0x26D5F8BD0](v11, -1, -1);
    }

    v14 = [a2 IOSurface];
    if (!v14)
    {
      v14 = [a2 fallbackIOSurface];
    }

    v17 = v14;
    v15 = *&v8[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_snippetSceneSnapshotView];
    if (v15)
    {
      v16 = [v15 layer];
      [v16 setContents_];
    }

    a3(3);
  }
}

unint64_t sub_26752DBD0(char a1)
{
  result = 0xD00000000000001DLL;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000025;
    }

    else
    {
      return 0xD000000000000021;
    }
  }

  return result;
}

uint64_t sub_26752DC60(unsigned __int8 a1)
{
  sub_267533EE4();
  MEMORY[0x26D5F84A0](a1);
  return sub_267533F14();
}

uint64_t sub_26752DCC4()
{
  v1 = *v0;
  sub_267533EE4();
  MEMORY[0x26D5F84A0](v1);
  return sub_267533F14();
}

uint64_t sub_26752DD2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_267533924();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_267533944();
  v34 = *(v13 - 8);
  v35 = v13;
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v19 = a2;

  BSDispatchQueueAssertMain();
  v20 = *(a1 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scenePresenter);
  if (v20 && (v21 = *(a1 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene)) != 0)
  {
    v22 = *(a1 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scenePresenter);
    swift_unknownObjectRetain();
    v23 = v21;
    if ([v23 contentState] != 2)
    {
      sub_26752D6BC(1, 1, v19, a3, a4);

      swift_unknownObjectRelease();
    }

    v24 = [v20 newSnapshot];
    v33 = sub_267525564();
    v25 = swift_allocObject();
    v25[2] = sub_267531958;
    v25[3] = v18;
    v25[4] = v24;
    aBlock[4] = sub_2675319A0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26753263C;
    aBlock[3] = &block_descriptor_185;
    v31 = _Block_copy(aBlock);

    v32 = v24;
    sub_267533934();
    v37 = MEMORY[0x277D84F90];
    v29[1] = sub_2675319AC(&qword_2801C8178, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C8180, &qword_2675369F0);
    v30 = v23;
    sub_267531B0C(&qword_2801C8188, &qword_2801C8180, &qword_2675369F0);
    sub_267533C84();
    v26 = v31;
    v27 = v33;
    MEMORY[0x26D5F8160](0, v17, v12, v31);
    _Block_release(v26);

    swift_unknownObjectRelease();
    (*(v36 + 8))(v12, v8);
    (*(v34 + 8))(v17, v35);
  }

  else
  {
    sub_26752D6BC(0, 1, v19, a3, a4);
  }
}

uint64_t sub_26752E130(uint64_t (*a1)(uint64_t, void), int a2, id a3)
{
  v5 = [a3 capture];
  v6 = 2;
  if (v5)
  {
    v6 = a3;
  }

  return a1(v6, v5 ^ 1);
}

id SnippetHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2675339C4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void *sub_26752E25C(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81B8, &qword_267536A08);
    sub_2675103C4(0, &qword_2801C81C0, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v2 = [v11 domain];
    v3 = sub_2675339D4();
    v5 = v4;

    v6 = *MEMORY[0x277D0AA48];
    if (v3 == sub_2675339D4() && v5 == v7)
    {
    }

    else
    {
      v9 = sub_267533E34();

      if ((v9 & 1) == 0)
      {

        return 0;
      }
    }

    v10 = [v11 code];

    return (v10 == 4);
  }

  return result;
}

uint64_t SnippetHostViewController.sceneDidActivate(_:)()
{
  if (qword_2801C7078 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = sub_267533504();
  __swift_project_value_buffer(v1, qword_2801C7AA0);
  v2 = v0;
  v3 = sub_2675334E4();
  v4 = sub_267533B24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_9_1();
    v6 = OUTLINED_FUNCTION_7_4();
    *v5 = 138543362;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    OUTLINED_FUNCTION_44(&dword_267507000, v8, v9, "[%{public}@] Scene did activate.");
    sub_26751C99C(v6);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_14_0();
  }

  v2[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneActivated] = 1;
  v10 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneActivatedBlocks;
  OUTLINED_FUNCTION_8_3();
  v11 = *&v2[v10];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *&v2[v10];

    v14 = (v11 + 40);
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;

      v16(v17);

      v14 += 2;
      --v12;
    }

    while (v12);

    v18 = *&v2[v10];
  }

  *&v2[v10] = MEMORY[0x277D84F90];
}

void SnippetHostViewController.sceneDidInvalidate(_:)()
{
  v0[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneActivated] = 0;
  if (qword_2801C7078 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v1 = sub_267533504();
  __swift_project_value_buffer(v1, qword_2801C7AA0);
  v2 = v0;
  oslog = sub_2675334E4();
  v3 = sub_267533B24();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = OUTLINED_FUNCTION_9_1();
    v5 = OUTLINED_FUNCTION_7_4();
    *v4 = 138543362;
    *(v4 + 4) = v2;
    *v5 = v2;
    v6 = v2;
    OUTLINED_FUNCTION_33(&dword_267507000, oslog, v3, "[%{public}@] Scene did invalidate.");
    sub_26751C99C(v5);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_10_1();
  }
}

void SnippetHostViewController.sceneDidDeactivate(_:withError:)(void *a1, id a2)
{
  v4 = v2;
  v2[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneActivated] = 0;
  v7 = 0x2801C7000uLL;
  if (a2)
  {
    v8 = a2;
    if (qword_2801C7078 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v9 = sub_267533504();
    OUTLINED_FUNCTION_31(v9, qword_2801C7AA0);
    v10 = a2;
    v11 = v2;
    v12 = sub_2675334E4();
    v13 = sub_267533B24();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_29();
      v89 = a1;
      v15 = OUTLINED_FUNCTION_7_4();
      v91 = v2;
      v16 = OUTLINED_FUNCTION_23();
      aBlock = v16;
      *v14 = 138543618;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2082;
      swift_getErrorValue();
      v3 = v92;
      v17 = v11;
      OUTLINED_FUNCTION_26();
      v18 = sub_267533E84();
      v20 = sub_26751C8D8(v18, v19, &aBlock);
      v7 = 0x2801C7000;

      *(v14 + 14) = v20;
      _os_log_impl(&dword_267507000, v12, v13, "[%{public}@] Scene did deactivate with error: %{public}s.", v14, 0x16u);
      sub_26751C99C(v15);
      a1 = v89;
      OUTLINED_FUNCTION_2_5();
      __swift_destroy_boxed_opaque_existential_1(v16);
      v4 = v91;
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_9_2();
    }

    else
    {
    }
  }

  else
  {
    if (qword_2801C7078 != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v21 = sub_267533504();
    OUTLINED_FUNCTION_31(v21, qword_2801C7AA0);
    v22 = v2;
    v23 = sub_2675334E4();
    v24 = sub_267533B24();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_9_1();
      v3 = OUTLINED_FUNCTION_7_4();
      *v25 = 138543362;
      *(v25 + 4) = v22;
      *v3 = v22;
      v26 = v22;
      _os_log_impl(&dword_267507000, v23, v24, "[%{public}@] Scene did deactivate.", v25, 0xCu);
      sub_26751C99C(v3);
      OUTLINED_FUNCTION_10_1();
      v7 = 0x2801C7000uLL;
      OUTLINED_FUNCTION_2_5();
    }
  }

  v27 = *&v4[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_scene];
  if (v27)
  {
    v28 = v27;
    if (sub_26752E25C(a2))
    {
      v29 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientAlreadyExitedOnceWithinTimeout;
      v30 = *(v7 + 120);
      if (v4[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientAlreadyExitedOnceWithinTimeout] == 1)
      {
        if (v30 != -1)
        {
          OUTLINED_FUNCTION_0_10();
        }

        v31 = sub_267533504();
        OUTLINED_FUNCTION_31(v31, qword_2801C7AA0);
        v32 = v4;
        v33 = sub_2675334E4();
        v34 = sub_267533B54();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_23();
          v36 = v28;
          v37 = OUTLINED_FUNCTION_7_4();
          v38 = OUTLINED_FUNCTION_23();
          aBlock = v38;
          *v35 = 138543874;
          *(v35 + 4) = v32;
          *v37 = v32;
          *(v35 + 12) = 2082;
          v39 = *&v32[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_processIdentity];
          v40 = *&v32[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_processIdentity + 8];
          v41 = v32;
          *(v35 + 14) = sub_26751C8D8(v39, v40, &aBlock);
          *(v35 + 22) = 2050;
          *(v35 + 24) = 0x4014000000000000;
          _os_log_impl(&dword_267507000, v33, v34, "[%{public}@] This is the second %{public}s exit within %{public}f seconds, ending the session", v35, 0x20u);
          sub_26751C99C(v37);
          OUTLINED_FUNCTION_2_5();
          __swift_destroy_boxed_opaque_existential_1(v38);
          OUTLINED_FUNCTION_9_2();
          OUTLINED_FUNCTION_2_5();

          return;
        }

        goto LABEL_37;
      }

      if (v30 != -1)
      {
        OUTLINED_FUNCTION_0_10();
      }

      v52 = sub_267533504();
      OUTLINED_FUNCTION_31(v52, qword_2801C7AA0);
      v53 = a2;
      v54 = v4;
      v55 = sub_2675334E4();
      v56 = sub_267533B54();

      if (os_log_type_enabled(v55, v56))
      {
        v88 = v28;
        v57 = swift_slowAlloc();
        v90 = a1;
        v58 = OUTLINED_FUNCTION_7_4();
        aBlock = swift_slowAlloc();
        *v57 = 138544130;
        *(v57 + 4) = v54;
        *v58 = v54;
        *(v57 + 12) = 2082;
        v59 = *&v54[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_processIdentity];
        v60 = *&v54[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_processIdentity + 8];
        v61 = v54;
        *(v57 + 14) = sub_26751C8D8(v59, v60, &aBlock);
        *(v57 + 22) = 2050;
        *(v57 + 24) = 0x4014000000000000;
        *(v57 + 32) = 2080;
        v62 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7FC0, &qword_2675368A0);
        v63 = sub_2675339E4();
        v65 = sub_26751C8D8(v63, v64, &aBlock);

        *(v57 + 34) = v65;
        _os_log_impl(&dword_267507000, v55, v56, "[%{public}@] %{public}s exited for the first time within %{public}f seconds with error: %s", v57, 0x2Au);
        sub_26751C99C(v58);
        a1 = v90;
        OUTLINED_FUNCTION_2_5();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_2_5();
        v28 = v88;
        OUTLINED_FUNCTION_2_5();
      }

      v4[v29] = 1;
      v66 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientExitTimer;
      if (!*&v54[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientExitTimer])
      {
        sub_2675103C4(0, &qword_2801C7F98, 0x277CF0B50);
        v67 = sub_267527AFC();
        v68 = *&v54[v66];
        *&v54[v66] = v67;
        v69 = v67;

        if (v69)
        {
          sub_2675103C4(0, &qword_2801C7FA0, 0x277D85C78);
          v70 = sub_267533BA4();
          OUTLINED_FUNCTION_7_5();
          v71 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v97 = sub_267531098;
          v98 = v71;
          aBlock = MEMORY[0x277D85DD0];
          v94 = 1107296256;
          OUTLINED_FUNCTION_0_8();
          v95 = v72;
          v96 = &block_descriptor_26_0;
          v73 = _Block_copy(&aBlock);

          [v69 scheduleWithFireInterval:v70 leewayInterval:v73 queue:5.0 handler:0.0];
          _Block_release(v73);
        }
      }
    }

    sub_2675103C4(0, &qword_2801C7710, 0x277D82BB8);
    if ((sub_267533C44() & 1) == 0)
    {
LABEL_37:

      return;
    }

    v74 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_backOffTimer;
    if (*&v4[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_backOffTimer])
    {
LABEL_35:

      sub_267519398();

      goto LABEL_37;
    }

    aBlock = 0;
    v94 = 0xE000000000000000;
    sub_267533D34();

    aBlock = 0xD00000000000001BLL;
    v94 = 0x8000000267537EC0;
    v75 = [v4 description];
    v76 = sub_2675339D4();
    v78 = v77;

    MEMORY[0x26D5F7FC0](v76, v78);

    v79 = aBlock;
    v80 = v94;
    sub_2675103C4(0, &qword_2801C7FA0, 0x277D85C78);
    v81 = sub_267533BA4();
    OUTLINED_FUNCTION_7_5();
    v82 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_5_0();
    v83 = swift_allocObject();
    *(v83 + 16) = v82;
    *(v83 + 24) = a1;
    type metadata accessor for BackOffTimer();
    swift_allocObject();
    v84 = sub_2675192D8(v79, v80, v81, sub_267531090, v83);
    v85 = *&v4[v74];
    *&v4[v74] = v84;
    v86 = a1;

    v87 = *&v4[v74];
    if (v87)
    {
      *(v87 + 72) = 0x4046800000000000;
      *(v87 + 80) = 0;
      goto LABEL_35;
    }

    __break(1u);
  }

  else
  {
    if (*(v7 + 120) != -1)
    {
      OUTLINED_FUNCTION_0_10();
    }

    v42 = sub_267533504();
    OUTLINED_FUNCTION_31(v42, qword_2801C7AA0);
    v43 = a1;
    v44 = sub_2675334E4();
    v45 = sub_267533B34();

    if (os_log_type_enabled(v44, v45))
    {
      OUTLINED_FUNCTION_9_1();
      v46 = OUTLINED_FUNCTION_22();
      aBlock = v46;
      *v3 = 136315138;
      v47 = [v43 identifier];
      v48 = sub_2675339D4();
      v50 = v49;

      v51 = sub_26751C8D8(v48, v50, &aBlock);

      *(v3 + 4) = v51;
      OUTLINED_FUNCTION_33(&dword_267507000, v44, v45, "No snippet scene found: %s");
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_10_1();
    }
  }
}

void sub_26752F064(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientAlreadyExitedOnceWithinTimeout) = 0;
    [a1 invalidate];
    v4 = *&v3[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientExitTimer];
    *&v3[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_sceneClientExitTimer] = 0;
  }
}

void sub_26752F0E8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 settings];
    v6 = [v5 isForeground];

    if ((*(v4 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isInvalidated) & 1) == 0 && v6)
    {
      if (qword_2801C7078 != -1)
      {
        swift_once();
      }

      v7 = sub_267533504();
      __swift_project_value_buffer(v7, qword_2801C7AA0);
      v8 = v4;
      v9 = sub_2675334E4();
      v10 = sub_267533B54();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138543362;
        *(v11 + 4) = v8;
        *v12 = v4;
        v13 = v8;
        _os_log_impl(&dword_267507000, v9, v10, "[%{public}@] Scene did deactivate but was foreground - reactivating.", v11, 0xCu);
        sub_26751C99C(v12);
        MEMORY[0x26D5F8BD0](v12, -1, -1);
        MEMORY[0x26D5F8BD0](v11, -1, -1);
      }

      [a2 activateWithTransitionContext_];
    }
  }
}

void SnippetHostViewController.scene(_:didReceive:)(uint64_t a1, uint64_t a2)
{
  if (qword_2801C7078 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    OUTLINED_FUNCTION_0_10();
LABEL_2:
    v4 = sub_267533504();
    __swift_project_value_buffer(v4, qword_2801C7AA0);
    v5 = v2;

    v2 = sub_2675334E4();
    v6 = sub_267533B54();

    if (os_log_type_enabled(v2, v6))
    {
      v7 = OUTLINED_FUNCTION_29();
      v8 = OUTLINED_FUNCTION_7_4();
      v9 = OUTLINED_FUNCTION_23();
      v32[0] = v9;
      *v7 = 138543619;
      *(v7 + 4) = v5;
      *v8 = v5;
      *(v7 + 12) = 2081;
      sub_2675103C4(0, &qword_2801C7FC8, 0x277CF0B58);
      sub_2675310A0();
      v10 = v5;
      v11 = sub_267533AF4();
      v13 = sub_26751C8D8(v11, v12, v32);

      *(v7 + 14) = v13;
      OUTLINED_FUNCTION_35();
      _os_log_impl(v14, v15, v16, v17, v7, 0x16u);
      sub_26751C99C(v8);
      OUTLINED_FUNCTION_2_5();
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_14_0();
    }

    if (*(&v5->isa + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_isInvalidated))
    {
      break;
    }

    v31 = MEMORY[0x277D84FA0];
    if ((a2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_267533CA4();
      v2 = sub_2675103C4(0, &qword_2801C7FC8, 0x277CF0B58);
      sub_2675310A0();
      sub_267533B04();
      a2 = v32[0];
      v18 = v32[1];
      v19 = v32[2];
      v20 = v32[3];
      v21 = v32[4];
    }

    else
    {
      v22 = -1 << *(a2 + 32);
      v18 = a2 + 56;
      v19 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v21 = v24 & *(a2 + 56);

      v20 = 0;
    }

    if (a2 < 0)
    {
      while (sub_267533CD4())
      {
        sub_2675103C4(0, &qword_2801C7FC8, 0x277CF0B58);
        swift_dynamicCast();
        v29 = v30;
        v27 = v20;
        v28 = v21;
        if (!v30)
        {
          break;
        }

LABEL_20:
        v2 = &v31;
        sub_2675303B0(&v30, v29);

        v20 = v27;
        v21 = v28;
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_22;
    }

LABEL_12:
    v25 = v20;
    v26 = v21;
    v27 = v20;
    if (v21)
    {
LABEL_16:
      v28 = (v26 - 1) & v26;
      v29 = *(*(a2 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
      if (v29)
      {
        goto LABEL_20;
      }

LABEL_22:

      sub_267531F58();
      return;
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= ((v19 + 64) >> 6))
      {
        goto LABEL_22;
      }

      v26 = *(v18 + 8 * v27);
      ++v25;
      if (v26)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

id SnippetHostViewController.scene(_:didUpdateClientSettingsWith:oldClientSettings:transitionContext:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_2801C7078 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v7 = sub_267533504();
  __swift_project_value_buffer(v7, qword_2801C7AA0);
  v8 = v4;
  v9 = sub_2675334E4();
  v10 = sub_267533B24();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_9_1();
    v12 = OUTLINED_FUNCTION_7_4();
    *v11 = 138543362;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    OUTLINED_FUNCTION_35();
    _os_log_impl(v14, v15, v16, v17, v11, 0xCu);
    sub_26751C99C(v12);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_9_2();
  }

  if (a4)
  {
    v18 = [a4 animationFence];
    if (v18)
    {
      v19 = v18;
      [objc_opt_self() _synchronizeDrawingWithFence_];
    }
  }

  v20 = *&v8[OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_settingsDiffInspector];

  return [v20 inspectDiff:a2 withContext:0];
}

void sub_26752FA50(uint64_t a1, void (*a2)(void), const char *a3)
{
  a2();
  if (qword_2801C7078 != -1)
  {
    OUTLINED_FUNCTION_0_10();
  }

  v5 = sub_267533504();
  __swift_project_value_buffer(v5, qword_2801C7AA0);
  v6 = v3;
  oslog = sub_2675334E4();
  v7 = sub_267533B24();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = OUTLINED_FUNCTION_9_1();
    v9 = OUTLINED_FUNCTION_7_4();
    *v8 = 138543362;
    *(v8 + 4) = v6;
    *v9 = v6;
    v10 = v6;
    _os_log_impl(&dword_267507000, oslog, v7, a3, v8, 0xCu);
    sub_26751C99C(v9);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_14_0();
  }
}

Swift::Void __swiftcall SnippetHostViewController.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_modalSceneViewController);
  *(v1 + OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_modalSceneViewController) = 0;
}

void *sub_26752FC38()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_26752FCC4(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_26752FC84(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_26752FCC4((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void *sub_26752FCC4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81C8, &qword_267536A10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81D0, &qword_267536A18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26752FDF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81F0, &qword_267536A30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 4);
  return v4;
}

_OWORD *sub_26752FE70(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_26752FEAC()
{
  MEMORY[0x26D5F8C80](v0 + 16);
  OUTLINED_FUNCTION_7_5();

  return swift_deallocObject();
}

uint64_t sub_26752FEF8()
{
  OUTLINED_FUNCTION_18();

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26752FF6C()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_16();

  return swift_deallocObject();
}

uint64_t sub_26752FFB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_267530018(uint64_t a1)
{
  v3 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7960, &qword_267535BB0);
  v4 = sub_267533994();
  return sub_2675300DC(a1, v4);
}

unint64_t sub_267530094(unsigned int a1)
{
  v3 = MEMORY[0x26D5F8480](*(v1 + 40), a1, 4);

  return sub_2675301C0(a1, v3);
}

unint64_t sub_2675300DC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7960, &qword_267535BB0);
    v6 = *(*(v2 + 48) + 8 * i);
    if (sub_2675339B4())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2675301C0(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_267530220(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_267536880;
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

char *sub_267530284(char *a1, int64_t a2, char a3)
{
  result = sub_2675302A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2675302A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81E8, &qword_267536A28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_2675303B0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_267533CC4();

    if (v9)
    {

      sub_2675103C4(0, &qword_2801C7FC8, 0x277CF0B58);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_267533CB4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_2675305D4(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_2675307B0(v18 + 1);
        }

        v19 = v8;
        sub_2675309D4(v19, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v19;
        return 1;
      }
    }
  }

  else
  {
    sub_2675103C4(0, &qword_2801C7FC8, 0x277CF0B58);
    v11 = *(v6 + 40);
    v12 = sub_267533C34();
    v13 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v14 = v12 & v13;
      if (((*(v6 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
      {
        v20 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *v3;
        v19 = a2;
        sub_267530A58(v19, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v25;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_267533C44();

      if (v16)
      {
        break;
      }

      v12 = v14 + 1;
    }

    v22 = *(*(v6 + 48) + 8 * v14);
    *a1 = v22;
    v23 = v22;
    return 0;
  }

  return result;
}

uint64_t sub_2675305D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81B0, &qword_267536A00);
    v2 = sub_267533D04();
    v16 = v2;
    sub_267533CA4();
    while (1)
    {
      if (!sub_267533CD4())
      {

        return v2;
      }

      sub_2675103C4(0, &qword_2801C7FC8, 0x277CF0B58);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_2675307B0(v3 + 1);
      }

      v2 = v16;
      v4 = *(v16 + 40);
      result = sub_267533C34();
      v6 = v16 + 56;
      v7 = -1 << *(v16 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v16 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v16 + 48) + 8 * v10) = v15;
      ++*(v16 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2675307B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81B0, &qword_267536A00);
  result = sub_267533CF4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_267530220(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_267533C34();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2675309D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_267533C34();
  v5 = -1 << *(a2 + 32);
  result = sub_267533C94();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_267530A58(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2675307B0(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_267530D0C(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = *(*v3 + 40);
      result = sub_267533C34();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v10;
        if (((*(v8 + 56 + (((result & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_2675103C4(0, &qword_2801C7FC8, 0x277CF0B58);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_267533C44();

        if (v12)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_267530BBC();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    result = sub_267533E64();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

id sub_267530BBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81B0, &qword_267536A00);
  v2 = *v0;
  v3 = sub_267533CE4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_267530D0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C81B0, &qword_267536A00);
  result = sub_267533CF4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(v6 + 40);
        v17 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        result = sub_267533C34();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_267530F1C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_2675339C4();

  [a3 *a4];
}

uint64_t sub_267530F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v11);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_2, a1, a3);
  v9 = OBJC_IVAR____TtC15SiriInteractive25SnippetHostViewController_viewModel;
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24();
  __swift_assign_boxed_opaque_existential_2((a2 + v9), v11);
  swift_endAccess();
  sub_267525820();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_267531054()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_5_0();

  return swift_deallocObject();
}

unint64_t sub_2675310A0()
{
  result = qword_2801C7FD0;
  if (!qword_2801C7FD0)
  {
    sub_2675103C4(255, &qword_2801C7FC8, 0x277CF0B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C7FD0);
  }

  return result;
}

unint64_t sub_26753110C()
{
  result = qword_2801C7FD8;
  if (!qword_2801C7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C7FD8);
  }

  return result;
}

uint64_t sub_267531160(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_1(a1);
  result = sub_267524AF8();
  *v1 = result;
  return result;
}

uint64_t sub_267531188(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_1(a1);
  result = sub_267524E78();
  *v1 = result;
  return result;
}

void *sub_2675311D4(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_1(a1);
  result = sub_267524FB4();
  *v1 = result;
  return result;
}

uint64_t sub_2675311FC(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_1(a1);
  result = sub_26752513C();
  *v1 = result;
  return result;
}

id sub_267531224(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_1(a1);
  result = sub_267525294();
  *v1 = result;
  return result;
}

uint64_t sub_26753124C(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_1(a1);
  result = sub_267528798();
  *v1 = result & 1;
  return result;
}

uint64_t sub_267531710()
{
  OUTLINED_FUNCTION_5_0();

  return swift_deallocObject();
}

id sub_267531744()
{
  v1 = 0.0;
  if (*(v0 + 16))
  {
    v1 = 1.0;
  }

  return [*(v0 + 24) setAlpha_];
}

uint64_t sub_267531768()
{
  OUTLINED_FUNCTION_18();

  return swift_deallocObject();
}

uint64_t sub_2675317C0()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_5_0();

  return swift_deallocObject();
}

uint64_t sub_26753181C()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_7_5();

  return swift_deallocObject();
}

uint64_t sub_267531854()
{
  OUTLINED_FUNCTION_16();

  return swift_deallocObject();
}

uint64_t sub_267531894()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_153Tm()
{
  OUTLINED_FUNCTION_18();
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  OUTLINED_FUNCTION_5_0();

  return swift_deallocObject();
}

uint64_t sub_267531924()
{
  OUTLINED_FUNCTION_18();

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_16();

  return swift_deallocObject();
}

uint64_t sub_267531968()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_16();

  return swift_deallocObject();
}

uint64_t sub_2675319AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2675319F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_267531A5C()
{
  result = qword_2801C8190;
  if (!qword_2801C8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C8190);
  }

  return result;
}

uint64_t sub_267531AB0()
{
  OUTLINED_FUNCTION_18();

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

id sub_267531B00(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_267531B0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_267531B60()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_7_5();

  return swift_deallocObject();
}

uint64_t *__swift_assign_boxed_opaque_existential_2(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;

        *v3 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      result[5] = a2[5];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v7 + 16))(result, a2, v5);
        }
      }

      else
      {
        (*(v6 + 32))(v16, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
        }

        else
        {
          (*(v8 + 16))(v3, a2, v5);
        }

        return (*(v6 + 8))(v16, v4);
      }
    }
  }

  return result;
}

uint64_t sub_267531DF8()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

void *sub_267531E70(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 8) | (4 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_267531F70()
{
  v2 = *(v0 + 16);
  v3 = sub_267533914();
  OUTLINED_FUNCTION_37(v3);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v0 + 48);

  v9 = *(v0 + v5);

  v10 = *(v0 + v5 + 8);

  (*(*(v2 - 8) + 8))(v0 + v5 + *(v1 + 40), v2);

  return swift_deallocObject();
}

void sub_267532064()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(sub_267533914() - 8);
  v6 = v0[6];
  v7 = v0 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  sub_267529738(v6, v7, v1, v2, v3, v4);
}

uint64_t sub_2675320FC()
{
  v2 = *(v0 + 32);
  v3 = sub_267533914();
  OUTLINED_FUNCTION_37(v3);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v7 = *(v2 - 8);
  v8 = (v5 + *(v6 + 64) + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = (v0 + v5);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(v1 + 40);
  v15 = *(v7 + 8);
  v15(&v11[v14], v2);
  v15((v0 + v8), v2);

  return swift_deallocObject();
}

uint64_t sub_267532244(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v16 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(sub_267533914() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = (v9 + *(v8 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_26751D168;

  return sub_267529E90(a1, v11, v12, v1 + v9, v1 + v10, v5);
}

uint64_t getEnumTagSinglePayload for SnippetHostViewController.SceneCaptureError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SnippetHostViewController.SceneCaptureError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26753253CLL);
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

unint64_t sub_26753257C()
{
  result = qword_2801C8210;
  if (!qword_2801C8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C8210);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_9_2()
{

  JUMPOUT(0x26D5F8BD0);
}

void OUTLINED_FUNCTION_10_1()
{

  JUMPOUT(0x26D5F8BD0);
}

void OUTLINED_FUNCTION_14_0()
{

  JUMPOUT(0x26D5F8BD0);
}

void OUTLINED_FUNCTION_15()
{

  JUMPOUT(0x26D5F8BD0);
}

uint64_t OUTLINED_FUNCTION_22()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_30()
{

  JUMPOUT(0x26D5F7FC0);
}

id OUTLINED_FUNCTION_32()
{

  return SceneItemMetricsRequest.init(width:height:cornerRadius:)(v1, v0, v3);
}

void OUTLINED_FUNCTION_33(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_45(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{

  return [v12 a2];
}

id OUTLINED_FUNCTION_46()
{

  return SizeDimensionRequest.init(minimum:maximum:type:)(1, v1, v1);
}

id OUTLINED_FUNCTION_47()
{

  return SizeDimensionRequest.init(minimum:maximum:type:)(1, v1, v1);
}

id SnippetSceneSpecification.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SnippetSceneSpecification.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnippetSceneSpecification();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SnippetSceneSpecification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnippetSceneSpecification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_267532C0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_267532C4C(uint64_t result, int a2, int a3)
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

id sub_267532C98(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  OUTLINED_FUNCTION_4_6();
  v5 = sub_267533260(a1, a2, 0);
  if (!v5)
  {
    if (qword_2801C7080 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v12 = sub_267533504();
    __swift_project_value_buffer(v12, qword_2801C7AB8);
    OUTLINED_FUNCTION_4_6();
    v6 = sub_2675334E4();
    v13 = sub_267533B34();

    if (os_log_type_enabled(v6, v13))
    {
      v14 = swift_slowAlloc();
      v26 = OUTLINED_FUNCTION_23();
      *v14 = 136380675;
      *(v14 + 4) = OUTLINED_FUNCTION_2_9(v26, v15);
      _os_log_impl(&dword_267507000, v6, v13, "No application record created with bundle identifier: %{private}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    goto LABEL_21;
  }

  v6 = v5;
  v7 = [v6 identities];
  sub_2675103C4(0, &qword_2801C8280, 0x277CC1E58);
  v8 = sub_267533A54();

  if (sub_2675128EC(v8) != 1)
  {

    if (qword_2801C7080 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v16 = sub_267533504();
    __swift_project_value_buffer(v16, qword_2801C7AB8);
    OUTLINED_FUNCTION_4_6();
    v17 = sub_2675334E4();
    v18 = sub_267533B34();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_20;
    }

    v19 = swift_slowAlloc();
    v20 = OUTLINED_FUNCTION_23();
    *v19 = 136380675;
    *(v19 + 4) = OUTLINED_FUNCTION_2_9(v20, v21);
    v22 = "Multiple identities found with bundle identifier: %{private}s";
    goto LABEL_19;
  }

  if (!sub_2675136E0(v8))
  {

    if (qword_2801C7080 == -1)
    {
LABEL_17:
      v23 = sub_267533504();
      __swift_project_value_buffer(v23, qword_2801C7AB8);
      OUTLINED_FUNCTION_4_6();
      v17 = sub_2675334E4();
      v18 = sub_267533B34();

      if (!os_log_type_enabled(v17, v18))
      {
LABEL_20:

LABEL_21:
        return 0;
      }

      v19 = swift_slowAlloc();
      v20 = OUTLINED_FUNCTION_23();
      *v19 = 136380675;
      *(v19 + 4) = OUTLINED_FUNCTION_2_9(v20, v24);
      v22 = "No lsIdentity found for bundle identifier: %{private}s";
LABEL_19:
      _os_log_impl(&dword_267507000, v17, v18, v22, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
      goto LABEL_20;
    }

LABEL_25:
    OUTLINED_FUNCTION_1_7();
    goto LABEL_17;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D5F82F0](0, v8);
    goto LABEL_7;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_25;
  }

  v9 = *(v8 + 32);
LABEL_7:
  v10 = v9;

  v11 = [objc_opt_self() identityForLSApplicationIdentity:v10 LSApplicationRecord:v6];

  return v11;
}

id sub_267533260(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2675339C4();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_267533434();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_26753333C(unint64_t result, char a2, uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_26751C8D8(v3, v2, va);
}

uint64_t OUTLINED_FUNCTION_4_6()
{
}
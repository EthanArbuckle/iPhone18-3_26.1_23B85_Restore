__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_26F46709C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F4670BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 168) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26F467134(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26F467154(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_26F4671B4()
{
  result = qword_2806E1198;
  if (!qword_2806E1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1198);
  }

  return result;
}

unint64_t sub_26F46720C()
{
  result = qword_2806E11A0;
  if (!qword_2806E11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E11A0);
  }

  return result;
}

unint64_t sub_26F467264()
{
  result = qword_2806E11A8;
  if (!qword_2806E11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E11A8);
  }

  return result;
}

uint64_t sub_26F4672B8()
{
  v0 = sub_26F4A02A8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26F467304@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11C8, &qword_26F4AA468);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F4675FC();
  sub_26F4A0588();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  type metadata accessor for CGPoint(0);
  v22 = 0;
  sub_26F467650(&qword_2806E11D0, type metadata accessor for CGPoint);
  sub_26F4A0348();
  v11 = v20;
  v12 = v21;
  v22 = 1;
  sub_26F4A0348();
  v13 = v20;
  v14 = v21;
  v22 = 2;
  sub_26F4A0348();
  v15 = v20;
  v16 = v21;
  v22 = 3;
  sub_26F4A0348();
  (*(v6 + 8))(v9, v5);
  v17 = v20;
  v18 = v21;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v16;
  a2[6] = v17;
  a2[7] = v18;
  return result;
}

uint64_t sub_26F4675B0()
{
  v0 = sub_26F4A02A8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26F4675FC()
{
  result = qword_2806E11B8;
  if (!qword_2806E11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E11B8);
  }

  return result;
}

uint64_t sub_26F467650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F467698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11D8, &qword_26F4AA470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_26F467700(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 168) = 1;
  return result;
}

unint64_t sub_26F467744()
{
  result = qword_2806E11E0;
  if (!qword_2806E11E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E11E0);
  }

  return result;
}

unint64_t sub_26F46779C()
{
  result = qword_2806E11E8;
  if (!qword_2806E11E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E11E8);
  }

  return result;
}

unint64_t sub_26F4677F4()
{
  result = qword_2806E11F0;
  if (!qword_2806E11F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E11F0);
  }

  return result;
}

uint64_t VisualTranslationErrorViewModel.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  VisualTranslationErrorViewModel.init()();
  return v3;
}

uint64_t VisualTranslationErrorViewModel.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11F8, &qword_26F4AA5C0);
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  MEMORY[0x28223BE20](v0);
  v34 = &v31 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  v3 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1208, &qword_26F4AA5D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = sub_26F49EA88();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v31 - v20);
  v22 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__popoverAttachmentAnchor;
  sub_26F49F658();
  *v21 = v23;
  v21[1] = v24;
  (*(v15 + 104))(v21, *MEMORY[0x277CDE250], v14);
  (*(v15 + 16))(v18, v21, v14);
  sub_26F49DD68();
  (*(v15 + 8))(v21, v14);
  v25 = v33;
  (*(v10 + 32))(v33 + v22, v13, v9);
  v26 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__errorModel;
  v27 = type metadata accessor for TranslationUnavailableModel(0);
  v28 = *(*(v27 - 8) + 56);
  v28(v8, 1, 1, v27);
  sub_26F467C74(v8, v5);
  v29 = v34;
  sub_26F49DD68();
  sub_26F3B6B4C(v8, &qword_2806E1200, &qword_26F4AA5C8);
  (*(v35 + 32))(v25 + v26, v29, v36);
  v28((v25 + OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel), 1, 1, v27);
  return v25;
}

uint64_t sub_26F467C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F467CE4(unint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1248, &unk_26F4AA780);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v42[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v42[-v16];
  v18 = a1[1];
  if (v18)
  {
    v19 = *a1;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v20 = sub_26F49DCA8();
    __swift_project_value_buffer(v20, qword_280F67ED0);

    v21 = sub_26F49DC88();
    v22 = sub_26F49FDF8();

    v23 = (v19 >> 8);
    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      v46 = v2;
      v25 = v24;
      v26 = swift_slowAlloc();
      v45 = v11;
      v43 = v22;
      v27 = v26;
      *v25 = 138412290;
      sub_26F45A980();
      v28 = swift_allocError();
      v44 = v7;
      v29 = v19 >> 8;
      v23 = v28;
      *v30 = v19;
      *(v30 + 8) = v18;

      v31 = v17;
      v32 = v19;
      v19 = sub_26F49D7E8();
      v33 = v23;
      LOBYTE(v23) = v29;
      v7 = v44;

      *(v25 + 4) = v19;
      *v27 = v19;
      LOBYTE(v19) = v32;
      v17 = v31;
      _os_log_impl(&dword_26F39E000, v21, v43, "Setting UI to show error: %@", v25, 0xCu);
      sub_26F3B6B4C(v27, &qword_2806DF258, &qword_26F4A6220);
      v11 = v45;
      MEMORY[0x274391F70](v27, -1, -1);
      v34 = v25;
      v2 = v46;
      MEMORY[0x274391F70](v34, -1, -1);
    }

    v47[0] = v19;
    v47[1] = v23;
    v48 = v18;

    sub_26F45AEC0(v47, v7);
    v35 = type metadata accessor for TranslationUnavailableState(0);
    if ((*(*(v35 - 8) + 48))(v7, 1, v35) == 1)
    {
      sub_26F3B6B4C(v7, &qword_2806E1248, &unk_26F4AA780);
      v36 = 1;
    }

    else
    {
      sub_26F45B69C(v17);
      sub_26F46A230(v7, type metadata accessor for TranslationUnavailableState);
      v36 = 0;
    }

    v39 = type metadata accessor for TranslationUnavailableModel(0);
    (*(*(v39 - 8) + 56))(v17, v36, 1, v39);
    sub_26F467C74(v17, v14);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F467C74(v14, v11);

    sub_26F49DDB8();
    sub_26F3B6B4C(v14, &qword_2806E1200, &qword_26F4AA5C8);
    sub_26F46A1C0(v17, v14);
  }

  else
  {
    v37 = type metadata accessor for TranslationUnavailableModel(0);
    v38 = *(*(v37 - 8) + 56);
    v38(v14, 1, 1, v37);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F467C74(v14, v11);

    sub_26F49DDB8();
    sub_26F3B6B4C(v14, &qword_2806E1200, &qword_26F4AA5C8);
    v38(v14, 1, 1, v37);
  }

  v40 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel;
  swift_beginAccess();
  sub_26F46915C(v14, v2 + v40);
  return swift_endAccess();
}

uint64_t sub_26F468204(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-1] - v8;
  if (a1)
  {
    v10 = a1;
    sub_26F458904(a1, v17);
    v16[0] = v17[0];
    v16[1] = v17[1];
    sub_26F467CE4(v16);
  }

  else
  {
    v12 = type metadata accessor for TranslationUnavailableModel(0);
    v13 = *(*(v12 - 8) + 56);
    v13(v9, 1, 1, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F467C74(v9, v6);

    sub_26F49DDB8();
    sub_26F3B6B4C(v9, &qword_2806E1200, &qword_26F4AA5C8);
    v13(v9, 1, 1, v12);
    v14 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel;
    swift_beginAccess();
    sub_26F46915C(v9, v1 + v14);
    return swift_endAccess();
  }
}

uint64_t sub_26F4683D8(unsigned __int8 *a1)
{
  v2[0] = *a1 | (*a1 << 8);
  v2[1] = sub_26F3BDADC(MEMORY[0x277D84F90]);
  sub_26F467CE4(v2);
}

uint64_t sub_26F46843C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TranslationUnavailableModel(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F467C74(v7, v4);

  sub_26F49DDB8();
  sub_26F3B6B4C(v7, &qword_2806E1200, &qword_26F4AA5C8);
  v9(v7, 1, 1, v8);
  v10 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel;
  swift_beginAccess();
  sub_26F46915C(v7, v0 + v10);
  return swift_endAccess();
}

uint64_t sub_26F4685E0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v9 = v8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v68[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v24 = &v68[-v23];
  MEMORY[0x28223BE20](v25);
  v27 = &v68[-v26];
  v28 = type metadata accessor for TranslationUnavailableModel(0);
  v75 = *(v28 - 8);
  v29 = *(v75 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v68[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_26F49EA88();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v68[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v37);
  v39 = &v68[-v38];
  v77.origin.x = a5;
  v77.origin.y = a6;
  v77.size.width = a7;
  v77.size.height = a8;
  if (CGRectGetWidth(v77) <= 0.0 || (v78.origin.x = a5, v78.origin.y = a6, v78.size.width = a7, v78.size.height = a8, CGRectGetHeight(v78) <= 0.0))
  {
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v61 = sub_26F49DCA8();
    __swift_project_value_buffer(v61, qword_280F67ED0);
    v62 = sub_26F49DC88();
    v63 = sub_26F49FDD8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_26F39E000, v62, v63, "Presentation anchor content size contain a zero value, fallback to .bottomLeading", v64, 2u);
      MEMORY[0x274391F70](v64, -1, -1);
    }

    sub_26F49F658();
    *v39 = v65;
    *(v39 + 1) = v66;
    (*(v33 + 104))(v39, *MEMORY[0x277CDE250], v32);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v33 + 16))(v36, v39, v32);

    sub_26F49DDB8();
    return (*(v33 + 8))(v39, v32);
  }

  else
  {
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v73 = v31;
    v74 = v28;
    v40 = sub_26F49DCA8();
    __swift_project_value_buffer(v40, qword_280F67ED0);
    v41 = sub_26F49DC88();
    v42 = sub_26F49FDB8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v72 = v24;
      v44 = v43;
      v70 = swift_slowAlloc();
      v76[0] = v70;
      *v44 = 136446466;
      v45 = sub_26F49FEE8();
      v71 = v21;
      v47 = sub_26F3B38D0(v45, v46, v76);
      v69 = v42;
      v48 = v47;

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      v49 = sub_26F49FEE8();
      v51 = sub_26F3B38D0(v49, v50, v76);

      *(v44 + 14) = v51;
      v21 = v71;
      _os_log_impl(&dword_26F39E000, v41, v69, "Presentation anchor %{public}s in %{public}s", v44, 0x16u);
      v52 = v70;
      swift_arrayDestroy();
      MEMORY[0x274391F70](v52, -1, -1);
      v53 = v44;
      v24 = v72;
      MEMORY[0x274391F70](v53, -1, -1);
    }

    v79.origin.x = a1;
    v79.origin.y = a2;
    v79.size.width = a3;
    v79.size.height = a4;
    MidX = CGRectGetMidX(v79);
    v80.origin.x = a5;
    v80.origin.y = a6;
    v80.size.width = a7;
    v80.size.height = a8;
    v55 = MidX / CGRectGetWidth(v80);
    v81.origin.x = a5;
    v81.origin.y = a6;
    v81.size.width = a7;
    v81.size.height = a8;
    Height = CGRectGetHeight(v81);
    *v39 = v55;
    v39[1] = a2 / Height;
    (*(v33 + 104))(v39, *MEMORY[0x277CDE250], v32);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v33 + 16))(v36, v39, v32);

    sub_26F49DDB8();
    (*(v33 + 8))(v39, v32);
    v57 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel;
    swift_beginAccess();
    sub_26F467C74(v9 + v57, v27);
    v58 = v74;
    v59 = v75;
    if ((*(v75 + 48))(v27, 1, v74) == 1)
    {
      return sub_26F3B6B4C(v27, &qword_2806E1200, &qword_26F4AA5C8);
    }

    else
    {
      v67 = v73;
      sub_26F4699C4(v27, v73);
      sub_26F469A28(v67, v24);
      (*(v59 + 56))(v24, 0, 1, v58);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26F467C74(v24, v21);

      sub_26F49DDB8();
      sub_26F3B6B4C(v24, &qword_2806E1200, &qword_26F4AA5C8);
      return sub_26F46A230(v67, type metadata accessor for TranslationUnavailableModel);
    }
  }
}

uint64_t VisualTranslationErrorViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__popoverAttachmentAnchor;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1208, &qword_26F4AA5D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__errorModel;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11F8, &qword_26F4AA5C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_26F3B6B4C(v0 + OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel, &qword_2806E1200, &qword_26F4AA5C8);
  return v0;
}

uint64_t VisualTranslationErrorViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__popoverAttachmentAnchor;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1208, &qword_26F4AA5D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__errorModel;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11F8, &qword_26F4AA5C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_26F3B6B4C(v0 + OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel, &qword_2806E1200, &qword_26F4AA5C8);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26F468F18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VisualTranslationErrorViewModel();
  result = sub_26F49DD48();
  *a1 = result;
  return result;
}

uint64_t View.errorHandler(viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VisualTranslationErrorViewModel();
  sub_26F46A178(&qword_2806E1210, type metadata accessor for VisualTranslationErrorViewModel);

  v7[0] = sub_26F49E288();
  v7[1] = v5;
  MEMORY[0x27438FF50](v7, a2, &type metadata for VisualTranslationErrorModifier, a3);
}

uint64_t sub_26F46903C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26F467C74(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F467C74(v10, v7);

  sub_26F49DDB8();
  return sub_26F3B6B4C(v10, &qword_2806E1200, &qword_26F4AA5C8);
}

uint64_t sub_26F46915C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F4691CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TranslationUnavailableModel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TranslationUIErrorView();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE850, &qword_26F4A1DD8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  sub_26F469A28(a1, v7);
  sub_26F469A28(v7, v11);
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  sub_26F46A230(v7, type metadata accessor for TranslationUnavailableModel);
  v11[*(v8 + 20)] = v18 == 0;
  v19 = sub_26F46A178(&qword_2806DE858, type metadata accessor for TranslationUIErrorView);
  sub_26F49F088();
  sub_26F46A230(v11, type metadata accessor for TranslationUIErrorView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1228, &qword_26F4AA770);
  v20 = *(sub_26F49E7B8() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26F4A3B80;
  sub_26F49E7A8();
  sub_26F49E798();
  sub_26F469E58(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v27[0] = v8;
  v27[1] = v19;
  swift_getOpaqueTypeConformance2();
  sub_26F49F098();

  (*(v13 + 8))(v16, v12);
  v24 = sub_26F49E328();
  LOBYTE(v12) = sub_26F49EC48();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE830, &qword_26F4A1DD0);
  v26 = a2 + *(result + 36);
  *v26 = v24;
  *(v26 + 8) = v12;
  return result;
}

uint64_t sub_26F469574(uint64_t a1)
{
  v14[0] = a1;
  v2 = sub_26F49EA88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1220, &unk_26F4AA760);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v14 - v9;
  v12 = *v1;
  v11 = v1[1];
  type metadata accessor for VisualTranslationErrorViewModel();
  sub_26F46A178(&qword_2806E1210, type metadata accessor for VisualTranslationErrorViewModel);
  sub_26F49E298();
  swift_getKeyPath();
  sub_26F49E2A8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE828, &qword_26F4A1DC8);
  type metadata accessor for TranslationUnavailableModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE830, &qword_26F4A1DD0);
  sub_26F3B0F3C();
  sub_26F46A178(&qword_2806DE840, type metadata accessor for TranslationUnavailableModel);
  sub_26F3B0FE8();
  sub_26F49EF68();
  (*(v3 + 8))(v6, v2);
  return sub_26F3B6B4C(v10, &qword_2806E1220, &unk_26F4AA760);
}

uint64_t sub_26F469854(uint64_t a1, uint64_t *a2)
{
  v4 = sub_26F49EA88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  (v13)(v8, v12, v4);

  sub_26F49DDB8();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_26F4699C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationUnavailableModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F469A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranslationUnavailableModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for VisualTranslationErrorViewModel()
{
  result = qword_280F66190;
  if (!qword_280F66190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F469AE0()
{
  sub_26F469D74(319, &qword_280F65788, MEMORY[0x277CDE258], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26F469D10();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26F469D74(319, qword_280F65FD8, type metadata accessor for TranslationUnavailableModel, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26F469D10()
{
  if (!qword_280F65790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1200, &qword_26F4AA5C8);
    v0 = sub_26F49DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F65790);
    }
  }
}

void sub_26F469D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26F469DD8()
{
  result = qword_2806E1218;
  if (!qword_2806E1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1218);
  }

  return result;
}

uint64_t sub_26F469E58(uint64_t a1)
{
  v2 = sub_26F49E7B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1230, &qword_26F4AA778);
    v10 = sub_26F4A0138();
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
      sub_26F46A178(&qword_2806E1238, MEMORY[0x277CDDE90]);
      v18 = sub_26F49F818();
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
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_26F46A178(&qword_2806E1240, MEMORY[0x277CDDE90]);
          v25 = sub_26F49F868();
          v26 = *v16;
          (*v16)(v6, v2);
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

uint64_t sub_26F46A178(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F46A1C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F46A230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F46A290()
{
  v1 = *v0;
  v2 = 0x7478655472636FLL;
  v3 = 0x74786554746C78;
  if (v1 != 5)
  {
    v3 = 0x69666E6F43746C78;
  }

  v4 = 0x6C61636F4C64696CLL;
  if (v1 != 3)
  {
    v4 = 0x6C61636F4C746C78;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x69666E6F4372636FLL;
  if (v1 != 1)
  {
    v5 = 0x786F4272636FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26F46A388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F46BE44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F46A3B0(uint64_t a1)
{
  v2 = sub_26F46AA38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46A3EC(uint64_t a1)
{
  v2 = sub_26F46AA38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextDiagnosticsModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1268, &qword_26F4AA7A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F46AA38();
  sub_26F4A0598();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v36) = 0;
  sub_26F4A0398();
  if (!v2)
  {
    if (*(v3 + 4) > 0.0)
    {
      LOBYTE(v36) = 1;
      sub_26F4A03C8();
    }

    v15 = *(v3 + 3);
    v14 = *(v3 + 4);
    v17 = *(v3 + 5);
    v16 = *(v3 + 6);
    v40.origin.x = 0.0;
    v40.origin.y = 0.0;
    v40.size.width = 0.0;
    v40.size.height = 0.0;
    v39.origin.x = v15;
    v39.origin.y = v14;
    v39.size.width = v17;
    v39.size.height = v16;
    if (!CGRectEqualToRect(v39, v40))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1278, &qword_26F4AA7A8);
      inited = swift_initStackObject();
      *(inited + 32) = 120;
      *(inited + 16) = xmmword_26F4AA790;
      *(inited + 40) = 0xE100000000000000;
      *(inited + 48) = v15;
      *(inited + 56) = 121;
      *(inited + 64) = 0xE100000000000000;
      *(inited + 72) = v14;
      *(inited + 80) = 0x6874646977;
      *(inited + 88) = 0xE500000000000000;
      *(inited + 96) = v17;
      *(inited + 104) = 0x746867696568;
      *(inited + 112) = 0xE600000000000000;
      *(inited + 120) = v16;
      v19 = sub_26F3BE610(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1280, &qword_26F4AA7B0);
      swift_arrayDestroy();
      v36 = v19;
      LOBYTE(v34) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1288, &unk_26F4AA7B8);
      sub_26F46BA8C();
      sub_26F4A03F8();
    }

    v20 = type metadata accessor for TextDiagnosticsModel();
    v21 = v20[7];
    if (qword_2806DE7E8 != -1)
    {
      swift_once();
    }

    v22 = sub_26F49DAB8();
    __swift_project_value_buffer(v22, qword_2806E1250);
    sub_26F46BC14(qword_2806E07F0, MEMORY[0x277CC9788]);
    if ((sub_26F49F868() & 1) == 0)
    {
      v36 = sub_26F49D988();
      v37 = v23;
      v34 = 45;
      v35 = 0xE100000000000000;
      v32 = 95;
      v33 = 0xE100000000000000;
      sub_26F3BDC0C();
      sub_26F49FFF8();

      LOBYTE(v36) = 3;
      sub_26F4A0398();
    }

    v24 = (v3 + v20[9]);
    v25 = *v24;
    v26 = v24[1];
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v31 = v25;
      v28 = v3 + v20[8];
      v36 = sub_26F49D988();
      v37 = v29;
      v34 = 45;
      v35 = 0xE100000000000000;
      v32 = 95;
      v33 = 0xE100000000000000;
      sub_26F3BDC0C();
      sub_26F49FFF8();
      v38 = v20;

      LOBYTE(v36) = 4;
      sub_26F4A0398();

      v30 = *(v3 + v38[10]);
      LOBYTE(v36) = 6;
      sub_26F4A03C8();
      LOBYTE(v36) = 5;
      sub_26F4A0398();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26F46AA38()
{
  result = qword_2806E1270;
  if (!qword_2806E1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1270);
  }

  return result;
}

uint64_t TextDiagnosticsModel.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v67 - v7;
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v67 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v74 = &v67 - v13;
  v14 = type metadata accessor for TextModel();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - v20;
  v22 = type metadata accessor for VisualTranslationModel(0);
  v23 = *(a1 + *(v22 + 28));
  v24 = *(v23 + 16);
  v70 = a1;
  v73 = v15;
  v72 = v14;
  if (v24)
  {
    v25 = *(v14 + 40);
    v26 = v15;
    v27 = v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v28 = *(v26 + 72);
    v29 = 0.0;
    do
    {
      sub_26F446844(v27, v21);
      v30 = *&v21[v25];
      sub_26F463744(v21, type metadata accessor for TextModel);
      v29 = v29 + v30;
      v27 += v28;
      --v24;
    }

    while (v24);
    v31 = v29 / *(v23 + 16);
    a1 = v70;
    v15 = v73;
    v14 = v72;
  }

  else
  {
    v31 = NAN;
  }

  v32 = v68;
  *(v68 + 16) = v31;
  v33 = (a1 + *(v22 + 20));
  v34 = v33[9];
  v83 = v33[8];
  v84 = v34;
  v85 = *(v33 + 20);
  v35 = v33[5];
  v79 = v33[4];
  v80 = v35;
  v36 = v33[7];
  v81 = v33[6];
  v82 = v36;
  v37 = v33[1];
  v75 = *v33;
  v38 = v33[2];
  v78 = v33[3];
  v76 = v37;
  v77 = v38;
  *(v32 + 24) = sub_26F466434(0, 0, 1, 0);
  *(v32 + 32) = v39;
  *(v32 + 40) = v40;
  *(v32 + 48) = v41;
  *v32 = Array<A>.sourceParagraph.getter(v23);
  *(v32 + 8) = v42;
  if (*(v23 + 16))
  {
    v43 = v71;
    sub_26F3E718C(v23 + *(v14 + 28) + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v71);
    v44 = *(v9 + 48);
    if (v44(v43, 1, v8) != 1)
    {
      (*(v9 + 32))(v74, v43, v8);
      goto LABEL_14;
    }
  }

  else
  {
    (*(v9 + 56))(v71, 1, 1, v8);
  }

  if (qword_2806DE7E8 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v8, qword_2806E1250);
  (*(v9 + 16))(v74, v45, v8);
  v44 = *(v9 + 48);
  v46 = v71;
  if (v44(v71, 1, v8) != 1)
  {
    sub_26F3EDA38(v46);
  }

LABEL_14:
  v47 = type metadata accessor for TextDiagnosticsModel();
  v48 = *(v9 + 32);
  v48(v32 + v47[7], v74, v8);
  if (*(v23 + 16))
  {
    v49 = v69;
    (*(v9 + 16))(v69, v23 + *(v72 + 36) + ((*(v73 + 80) + 32) & ~*(v73 + 80)), v8);
    (*(v9 + 56))(v49, 0, 1, v8);
    v50 = v67;
    v48(v67, v49, v8);
  }

  else
  {
    (*(v9 + 56))(v69, 1, 1, v8);
    if (qword_2806DE7E8 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v8, qword_2806E1250);
    v52 = *(v9 + 16);
    v50 = v67;
    v52(v67, v51, v8);
    v53 = v69;
    if (v44(v69, 1, v8) != 1)
    {
      sub_26F3EDA38(v53);
    }
  }

  v48(v32 + v47[8], v50, v8);
  v54 = Array<A>.targetParagraph.getter(v23);
  v55 = (v32 + v47[9]);
  *v55 = v54;
  v55[1] = v56;
  v57 = *(v23 + 16);
  if (v57)
  {
    v58 = v70;
    v59 = *(v72 + 40);
    v60 = v23 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v61 = *(v73 + 72);
    v62 = 0.0;
    do
    {
      sub_26F446844(v60, v18);
      v63 = *&v18[v59];
      sub_26F463744(v18, type metadata accessor for TextModel);
      v62 = v62 + v63;
      v60 += v61;
      --v57;
    }

    while (v57);
    v64 = v62 / *(v23 + 16);
    v65 = v58;
  }

  else
  {
    v64 = NAN;
    v65 = v70;
  }

  result = sub_26F463744(v65, type metadata accessor for VisualTranslationModel);
  *(v32 + v47[10]) = v64;
  return result;
}

float TextDiagnosticsModel.init(textModel:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TextModel();
  v14 = (a1 + v13[6]);
  v15 = v14[1];
  *a2 = *v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  sub_26F3E718C(a1 + v13[7], v7);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    v28 = v12;
    v17 = qword_2806DE7E8;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v8, qword_2806E1250);
    v12 = v28;
    (*(v9 + 16))(v28, v18, v8);
    if (v16(v7, 1, v8) != 1)
    {
      sub_26F3EDA38(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  v19 = type metadata accessor for TextDiagnosticsModel();
  (*(v9 + 32))(a2 + v19[7], v12, v8);
  (*(v9 + 16))(a2 + v19[8], a1 + v13[9], v8);
  v20 = (a1 + v13[8]);
  v21 = v20[1];
  if (v21)
  {
    v22 = *v20;
    v23 = v21;
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = (a2 + v19[9]);
  *v24 = v22;
  v24[1] = v23;
  v25 = *(a1 + v13[10]);

  sub_26F463744(a1, type metadata accessor for TextModel);
  result = v25;
  *(a2 + v19[10]) = result;
  return result;
}

void TextDiagnosticsModel.init(ocrModel:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 topCandidates_];
  sub_26F46BB64();
  v5 = sub_26F49FAF8();

  if (v5 >> 62)
  {
    if (sub_26F4A00A8())
    {
      goto LABEL_3;
    }

LABEL_8:

    v9 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_9;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x274390F80](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = [v7 string];

  v9 = sub_26F49F8C8();
  v11 = v10;

LABEL_9:
  *a2 = v9;
  *(a2 + 8) = v11;
  [a1 confidence];
  *(a2 + 16) = v12;
  [a1 boundingBox];
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  if (qword_2806DE7E8 != -1)
  {
    swift_once();
  }

  v17 = sub_26F49DAB8();
  v18 = __swift_project_value_buffer(v17, qword_2806E1250);
  v19 = type metadata accessor for TextDiagnosticsModel();
  v20 = *(*(v17 - 8) + 16);
  v20(a2 + v19[7], v18, v17);
  v20(a2 + v19[8], v18, v17);

  v21 = (a2 + v19[9]);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  *(a2 + v19[10]) = 0;
}

uint64_t sub_26F46B6B4()
{
  v0 = sub_26F49DAB8();
  __swift_allocate_value_buffer(v0, qword_2806E1250);
  __swift_project_value_buffer(v0, qword_2806E1250);
  return sub_26F49D978();
}

uint64_t TextDiagnosticsModel.string.getter()
{
  v1 = TextDiagnosticsModel.json.getter();
  MEMORY[0x2743907E0](10, 0xE100000000000000);
  return v1;
}

uint64_t TextDiagnosticsModel.json.getter()
{
  v0 = sub_26F49F918();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_26F49D6E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_26F49D728();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_26F49D718();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E12A0, &qword_26F4AA7C8);
  v8 = *(v3 + 72);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_26F4A3B80;
  sub_26F49D6C8();
  sub_26F49D6D8();
  sub_26F46BC14(&qword_2806E12A8, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E12B0, &qword_26F4AA7D0);
  sub_26F46BBB0();
  sub_26F4A0058();
  sub_26F49D6F8();
  type metadata accessor for TextDiagnosticsModel();
  sub_26F46BC14(&qword_2806E12C0, type metadata accessor for TextDiagnosticsModel);
  v10 = sub_26F49D708();
  v12 = v11;
  sub_26F49F908();
  v13 = sub_26F49F8E8();
  if (v14)
  {
    v15 = v13;
    sub_26F3C8F70(v10, v12);
  }

  else
  {
    sub_26F3C8F70(v10, v12);

    return 0;
  }

  return v15;
}

unint64_t sub_26F46BA8C()
{
  result = qword_2806E1290;
  if (!qword_2806E1290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1288, &unk_26F4AA7B8);
    sub_26F466E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1290);
  }

  return result;
}

uint64_t type metadata accessor for TextDiagnosticsModel()
{
  result = qword_2806E12C8;
  if (!qword_2806E12C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26F46BB64()
{
  result = qword_2806E1298;
  if (!qword_2806E1298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806E1298);
  }

  return result;
}

unint64_t sub_26F46BBB0()
{
  result = qword_2806E12B8;
  if (!qword_2806E12B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E12B0, &qword_26F4AA7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E12B8);
  }

  return result;
}

uint64_t sub_26F46BC14(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26F46BC84()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_26F49DAB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26F46BD40()
{
  result = qword_2806E12D8;
  if (!qword_2806E12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E12D8);
  }

  return result;
}

unint64_t sub_26F46BD98()
{
  result = qword_2806E12E0;
  if (!qword_2806E12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E12E0);
  }

  return result;
}

unint64_t sub_26F46BDF0()
{
  result = qword_2806E12E8;
  if (!qword_2806E12E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E12E8);
  }

  return result;
}

uint64_t sub_26F46BE44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7478655472636FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_26F4A0458() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69666E6F4372636FLL && a2 == 0xED000065636E6564 || (sub_26F4A0458() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x786F4272636FLL && a2 == 0xE600000000000000 || (sub_26F4A0458() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61636F4C64696CLL && a2 == 0xE900000000000065 || (sub_26F4A0458() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61636F4C746C78 && a2 == 0xE900000000000065 || (sub_26F4A0458() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74786554746C78 && a2 == 0xE700000000000000 || (sub_26F4A0458() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69666E6F43746C78 && a2 == 0xED000065636E6564)
  {

    return 6;
  }

  else
  {
    v6 = sub_26F4A0458();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_26F46C0A0()
{
  sub_26F49F9A8();
}

uint64_t sub_26F46C1F4()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F46C35C()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F46C4B4()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F46C610()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

id sub_26F46C73C(id result, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x274390F80](j, a4);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a4 + 8 * j + 32);
      }

      v8 = result;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = result;
      a2(&v13, &v12);

      if (v4)
      {
      }

      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = result;
    i = sub_26F4A00A8();
  }

  return result;
}

uint64_t sub_26F46C864(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_26F49F7D8() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t VisualTranslationModel.updating(paragraphs:useIndex:allowFuzzy:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v90 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = &v80 - v12;
  v99 = type metadata accessor for TextModel();
  v13 = *(v99 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v99);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v83 = &v80 - v18;
  MEMORY[0x28223BE20](v19);
  v84 = &v80 - v20;
  MEMORY[0x28223BE20](v21);
  v95 = &v80 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v80 - v24;
  v26 = type metadata accessor for VisualTranslationModel(0);
  v27 = *(v26 + 28);
  v81 = v4;
  v82 = a4;
  v28 = *(v4 + v27);
  v29 = *(a1 + 16);
  v80 = v26;
  if (a2)
  {
    if (v29)
    {
      v30 = v99[5];
      v31 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v32 = a1 + v31;
      v33 = *(v13 + 72);

      while (1)
      {
        sub_26F448DA4(v32, v25, type metadata accessor for TextModel);
        v34 = *&v25[v30];
        if ((v34 & 0x8000000000000000) != 0 || v34 >= v28[2])
        {
          sub_26F475CB0(v25, type metadata accessor for TextModel);
        }

        else
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_26F4469BC(v28);
            v28 = result;
          }

          if (v34 >= v28[2])
          {
            __break(1u);
            goto LABEL_42;
          }

          sub_26F446A6C(v25, v28 + v31 + v34 * v33);
        }

        v32 += v33;
        if (!--v29)
        {
          goto LABEL_40;
        }
      }
    }

LABEL_39:

LABEL_40:
    v59 = sub_26F49D968();
    v61 = v81;
    v60 = v82;
    (*(*(v59 - 8) + 16))(v82, v81, v59);
    v62 = v80;
    v63 = (v61 + v80[5]);
    v64 = v63[9];
    v108 = v63[8];
    v109 = v64;
    v110 = *(v63 + 20);
    v65 = v63[5];
    v104 = v63[4];
    v105 = v65;
    v66 = v63[7];
    v106 = v63[6];
    v107 = v66;
    v67 = v63[3];
    v102 = v63[2];
    v103 = v67;
    v68 = v63[1];
    v100 = *v63;
    v101 = v68;
    v69 = v80[6];
    v70 = sub_26F49D918();
    result = (*(*(v70 - 8) + 16))(v60 + v69, v61 + v69, v70);
    v71 = *(v61 + v62[8]);
    v72 = *(v61 + v62[9]);
    v73 = *(v61 + v62[10]);
    v74 = v60 + v62[5];
    v75 = v109;
    *(v74 + 128) = v108;
    *(v74 + 144) = v75;
    *(v74 + 160) = v110;
    v76 = v105;
    *(v74 + 64) = v104;
    *(v74 + 80) = v76;
    v77 = v107;
    *(v74 + 96) = v106;
    *(v74 + 112) = v77;
    v78 = v101;
    *v74 = v100;
    *(v74 + 16) = v78;
    v79 = v103;
    *(v74 + 32) = v102;
    *(v74 + 48) = v79;
    *(v60 + v62[7]) = v28;
    *(v60 + v62[8]) = v71;
    *(v60 + v62[9]) = v72;
    *(v60 + v62[10]) = v73;
    *(v60 + v62[11]) = 0;
    return result;
  }

  if (!v29)
  {
    goto LABEL_39;
  }

  v85 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v86 = a1 + v85;
  v94 = *(v13 + 72);

  v36 = 0;
  v37 = v99;
  v91 = v16;
  v38 = v95;
  v87 = v29;
  while (2)
  {
    sub_26F448DA4(v86 + v94 * v36, v38, type metadata accessor for TextModel);
    v40 = v28[2];
    if (!v40)
    {
LABEL_15:
      v39 = v87;
      goto LABEL_16;
    }

    v88 = v36;
    v89 = v28;
    v41 = v28 + v85;
    v42 = v93;
    while (1)
    {
      v96 = v40;
      sub_26F448DA4(v41, v16, type metadata accessor for TextModel);
      sub_26F3E718C(&v16[v37[7]], v42);
      v43 = sub_26F49DAB8();
      v44 = *(v43 - 8);
      v97 = *(v44 + 48);
      v98 = v97(v42, 1, v43);
      if (v98 == 1)
      {
        sub_26F3B6B4C(v42, &qword_2806DEFD8, &qword_26F4A3670);
        v47 = 0;
        v48 = v92;
        v49 = v95;
        goto LABEL_29;
      }

      sub_26F49D988();
      (*(v44 + 8))(v42, v43);
      sub_26F4A0578();
      sub_26F49F9A8();

      v45 = &v16[v99[9]];
      sub_26F49D988();
      sub_26F49F9A8();

      if (v90)
      {
        sub_26F4475B4(*&v16[v99[6]], *&v16[v99[6] + 8]);
        if (!v46)
        {
          sub_26F4A0548();
          v48 = v92;
          v49 = v95;
          goto LABEL_28;
        }
      }

      else
      {
      }

      v48 = v92;
      v49 = v95;
      sub_26F4A0548();
      sub_26F49F9A8();

LABEL_28:
      v118 = v102;
      v119 = v103;
      v120 = v104;
      v116 = v100;
      v117 = v101;
      v47 = sub_26F4A0558();
      v42 = v93;
      v37 = v99;
LABEL_29:
      sub_26F3E718C(v49 + v37[7], v48);
      if (v97(v48, 1, v43) != 1)
      {
        break;
      }

      sub_26F3B6B4C(v48, &qword_2806DEFD8, &qword_26F4A3670);
      v16 = v91;
      if (v98 == 1)
      {
        goto LABEL_34;
      }

LABEL_20:
      sub_26F475CB0(v16, type metadata accessor for TextModel);
      v41 += v94;
      v40 = v96 - 1;
      if (v96 == 1)
      {
        v36 = v88;
        v28 = v89;
        goto LABEL_15;
      }
    }

    sub_26F49D988();
    (*(v44 + 8))(v48, v43);
    sub_26F4A0578();
    sub_26F49F9A8();

    v50 = v49 + v99[9];
    sub_26F49D988();
    sub_26F49F9A8();

    v51 = (v49 + v99[6]);
    v52 = *v51;
    v53 = v51[1];
    sub_26F4A0548();
    v42 = v93;
    sub_26F49F9A8();
    v113 = v102;
    v114 = v103;
    v115 = v104;
    v111 = v100;
    v112 = v101;
    v54 = sub_26F4A0558();
    v37 = v99;
    v16 = v91;
    if (v98 == 1 || v47 != v54)
    {
      goto LABEL_20;
    }

LABEL_34:
    v55 = v83;
    sub_26F476988(v16, v83, type metadata accessor for TextModel);
    v56 = v55;
    v57 = v84;
    sub_26F476988(v56, v84, type metadata accessor for TextModel);
    v58 = *(v57 + v37[5]);
    v28 = v89;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_26F4469BC(v28);
    }

    v39 = v87;
    result = sub_26F475CB0(v84, type metadata accessor for TextModel);
    v36 = v88;
    if ((v58 & 0x8000000000000000) != 0)
    {
LABEL_42:
      __break(1u);
    }

    else if (v58 < v28[2])
    {
      sub_26F446A08(v95, v28 + v85 + v58 * v94);
      v37 = v99;
LABEL_16:
      v38 = v95;
      sub_26F475CB0(v95, type metadata accessor for TextModel);
      if (++v36 == v39)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_26F46D23C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for TextModel();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for VisualTranslationModel(0);
  v11 = *(v0 + *(result + 28));
  v12 = *(v11 + 16);
  if (!v12)
  {
    return 1;
  }

  v13 = 0;
  while (v13 < *(v11 + 16))
  {
    sub_26F448DA4(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v9, type metadata accessor for TextModel);
    if (*&v9[v5[11]])
    {
      goto LABEL_17;
    }

    v14 = &v9[v5[6]];
    v16 = *v14;
    v15 = *(v14 + 1);
    v17 = v16 & 0xFFFFFFFFFFFFLL;
    if (!((v15 & 0x2000000000000000) != 0 ? HIBYTE(v15) & 0xF : v17))
    {
      goto LABEL_17;
    }

    sub_26F3E718C(&v9[v5[7]], v4);
    v19 = sub_26F49DAB8();
    v20 = (*(*(v19 - 8) + 48))(v4, 1, v19);
    sub_26F3B6B4C(v4, &qword_2806DEFD8, &qword_26F4A3670);
    if (v20 == 1)
    {
      goto LABEL_17;
    }

    v21 = &v9[v5[8]];
    v22 = *(v21 + 1);
    if (!v22)
    {
      goto LABEL_17;
    }

    v23 = *v21 & 0xFFFFFFFFFFFFLL;
    if (!((v22 & 0x2000000000000000) != 0 ? HIBYTE(v22) & 0xF : v23))
    {
LABEL_17:
      sub_26F475CB0(v9, type metadata accessor for TextModel);
      return 0;
    }

    ++v13;
    result = sub_26F475CB0(v9, type metadata accessor for TextModel);
    if (v12 == v13)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t VisualTranslationModel.update(paragraph:useIndex:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0118, &qword_26F4ABEF0);
  v6 = *(type metadata accessor for TextModel() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26F4A3150;
  sub_26F448DA4(a1, v9 + v8, type metadata accessor for TextModel);
  VisualTranslationModel.updating(paragraphs:useIndex:allowFuzzy:)(v9, a2, 0, a3);
  swift_setDeallocating();
  sub_26F475CB0(v9 + v8, type metadata accessor for TextModel);

  return swift_deallocClassInstance();
}

uint64_t sub_26F46D5F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = 0x76726573624F6F6ELL;
  }

  if (v3)
  {
    v5 = 0xEE00736E6F697461;
  }

  else
  {
    v5 = 0x800000026F4AC640;
  }

  if (*a2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0x76726573624F6F6ELL;
  }

  if (*a2)
  {
    v7 = 0x800000026F4AC640;
  }

  else
  {
    v7 = 0xEE00736E6F697461;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26F4A0458();
  }

  return v9 & 1;
}

uint64_t sub_26F46D6AC()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F46D740()
{
  *v0;
  sub_26F49F9A8();
}

uint64_t sub_26F46D7C0()
{
  v1 = *v0;
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F46D850@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26F4A02A8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26F46D8B0(unint64_t *a1@<X8>)
{
  v2 = 0x800000026F4AC640;
  v3 = 0x76726573624F6F6ELL;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xEE00736E6F697461;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_26F46D900()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0x76726573624F6F6ELL;
  }

  *v0;
  return result;
}

uint64_t VisualTranslationResult.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_uuid;
  v4 = sub_26F49D968();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VisualTranslationResult.string.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_string);
  v2 = *(v0 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_string + 8);

  return v1;
}

double VisualTranslationResult.topLeft.getter()
{
  result = *(v0 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topLeft);
  v2 = *(v0 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topLeft + 8);
  return result;
}

double VisualTranslationResult.topRight.getter()
{
  result = *(v0 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topRight);
  v2 = *(v0 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topRight + 8);
  return result;
}

double VisualTranslationResult.bottomLeft.getter()
{
  result = *(v0 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomLeft);
  v2 = *(v0 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomLeft + 8);
  return result;
}

double VisualTranslationResult.bottomRight.getter()
{
  result = *(v0 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomRight);
  v2 = *(v0 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomRight + 8);
  return result;
}

uint64_t sub_26F46DC20()
{
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0550, &unk_26F4A75B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v19 = *(v0 + *(type metadata accessor for VisualTranslationModel(0) + 28));
  v20 = *(v19 + 16);
  v41 = v19;
  if (v20)
  {
    v21 = type metadata accessor for TextModel();
    v22 = v21 - 8;
    v23 = v19 + ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80));
    sub_26F3E718C(v23 + *(v21 + 28), v18);
    (*(v2 + 16))(v15, v23 + *(v22 + 44), v1);
    (*(v2 + 56))(v15, 0, 1, v1);
  }

  else
  {
    v24 = *(v2 + 56);
    v24(v18, 1, 1, v1);
    v24(v15, 1, 1, v1);
  }

  v25 = *(v5 + 48);
  sub_26F3E718C(v18, v8);
  sub_26F3E718C(v15, &v8[v25]);
  v26 = *(v2 + 48);
  if (v26(v8, 1, v1) == 1)
  {
    sub_26F3B6B4C(v15, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B6B4C(v18, &qword_2806DEFD8, &qword_26F4A3670);
    if (v26(&v8[v25], 1, v1) == 1)
    {
      sub_26F3B6B4C(v8, &qword_2806DEFD8, &qword_26F4A3670);
LABEL_15:
      v34 = 1;
      return v34 & 1;
    }

    goto LABEL_9;
  }

  sub_26F3E718C(v8, v12);
  if (v26(&v8[v25], 1, v1) == 1)
  {
    sub_26F3B6B4C(v15, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B6B4C(v18, &qword_2806DEFD8, &qword_26F4A3670);
    (*(v2 + 8))(v12, v1);
LABEL_9:
    sub_26F3B6B4C(v8, &qword_2806E0550, &unk_26F4A75B0);
    v27 = v41;
    goto LABEL_10;
  }

  v35 = &v8[v25];
  v36 = v40;
  (*(v2 + 32))(v40, v35, v1);
  sub_26F4749EC(qword_2806E07F0, MEMORY[0x277CC9788]);
  v37 = sub_26F49F868();
  v38 = *(v2 + 8);
  v38(v36, v1);
  sub_26F3B6B4C(v15, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v18, &qword_2806DEFD8, &qword_26F4A3670);
  v38(v12, v1);
  sub_26F3B6B4C(v8, &qword_2806DEFD8, &qword_26F4A3670);
  v27 = v41;
  if (v37)
  {
    goto LABEL_15;
  }

LABEL_10:
  Array<A>.sourceParagraph.getter(v27);
  v28 = sub_26F49F948();
  v30 = v29;

  Array<A>.targetParagraph.getter(v27);
  v31 = sub_26F49F948();
  v33 = v32;

  if (v28 == v31 && v30 == v33)
  {

    goto LABEL_15;
  }

  v34 = sub_26F4A0458();

  return v34 & 1;
}

id VisualTranslationResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26F46E214()
{
  v1 = *v0;
  v2 = 1684632949;
  v3 = 0x654C6D6F74746F62;
  if (v1 != 5)
  {
    v3 = 0x69526D6F74746F62;
  }

  v4 = 0x7466654C706F74;
  if (v1 != 3)
  {
    v4 = 0x7468676952706F74;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x676E69727473;
  if (v1 != 1)
  {
    v5 = 0x6874737361507369;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26F46E2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F474B84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F46E324(uint64_t a1)
{
  v2 = sub_26F474998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46E360(uint64_t a1)
{
  v2 = sub_26F474998();

  return MEMORY[0x2821FE720](a1, v2);
}

id VisualTranslationResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t VisualTranslationResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E12F0, &qword_26F4AA940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F474998();
  sub_26F4A0598();
  LOBYTE(v17) = 0;
  sub_26F49D968();
  sub_26F4749EC(&qword_2806DEE68, MEMORY[0x277CC95F0]);
  sub_26F4A03F8();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_string);
    v12 = *(v3 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_string + 8);
    LOBYTE(v17) = 1;
    sub_26F4A0398();
    v13 = *(v3 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_isPassthrough);
    LOBYTE(v17) = 2;
    sub_26F4A03A8();
    v17 = *(v3 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topLeft);
    v16 = 3;
    type metadata accessor for CGPoint(0);
    sub_26F4749EC(&qword_2806E11C0, type metadata accessor for CGPoint);
    sub_26F4A03F8();
    v17 = *(v3 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topRight);
    v16 = 4;
    sub_26F4A03F8();
    v17 = *(v3 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomLeft);
    v16 = 5;
    sub_26F4A03F8();
    v17 = *(v3 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomRight);
    v16 = 6;
    sub_26F4A03F8();
  }

  return (*(v6 + 8))(v9, v5);
}

id VisualTranslationResult.init(from:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_26F49D968();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1300, &qword_26F4AA948);
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v27);
  v10 = v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F474998();
  v28 = v10;
  sub_26F4A0588();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v23 = v29;
    v15 = *((*MEMORY[0x277D85000] & *v29) + 0x30);
    v16 = *((*MEMORY[0x277D85000] & *v29) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v7;
    v25 = a1;
    v13 = v26;
    LOBYTE(v32) = 0;
    sub_26F4749EC(&qword_2806DEE78, MEMORY[0x277CC95F0]);
    v14 = v27;
    sub_26F4A0348();
    v18 = *(v13 + 32);
    v19 = v29;
    v18(v29 + OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_uuid, v6, v3);
    LOBYTE(v32) = 1;
    v20 = sub_26F4A02F8();
    v21 = &v19[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_string];
    *v21 = v20;
    v21[1] = v22;
    LOBYTE(v32) = 2;
    v19[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_isPassthrough] = sub_26F4A0308() & 1;
    type metadata accessor for CGPoint(0);
    v33 = 3;
    v24[1] = sub_26F4749EC(&qword_2806E11D0, type metadata accessor for CGPoint);
    sub_26F4A0348();
    *&v19[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topLeft] = v32;
    v33 = 4;
    sub_26F4A0348();
    *&v19[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topRight] = v32;
    v33 = 5;
    sub_26F4A0348();
    *&v19[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomLeft] = v32;
    v33 = 6;
    sub_26F4A0348();
    *&v19[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomRight] = v32;
    v31.receiver = v19;
    v31.super_class = ObjectType;
    v23 = objc_msgSendSuper2(&v31, sel_init);
    (*(v12 + 8))(v28, v14);
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  return v23;
}

id sub_26F46ED18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = VisualTranslationResult.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26F46EDAC(uint64_t a1)
{
  v2 = sub_26F474B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46EDE8(uint64_t a1)
{
  v2 = sub_26F474B30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F46EE24()
{
  v1 = 0x676E696461656CLL;
  if (*v0 != 1)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746E6563;
  }
}

uint64_t sub_26F46EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F474DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F46EEB0(uint64_t a1)
{
  v2 = sub_26F474A34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46EEEC(uint64_t a1)
{
  v2 = sub_26F474A34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F46EF28(uint64_t a1)
{
  v2 = sub_26F474ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46EF64(uint64_t a1)
{
  v2 = sub_26F474ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26F46EFA0(uint64_t a1)
{
  v2 = sub_26F474A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46EFDC(uint64_t a1)
{
  v2 = sub_26F474A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisualTranslationTextAlignment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1308, &qword_26F4AA950);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1310, &qword_26F4AA958);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1318, &qword_26F4AA960);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1320, &qword_26F4AA968);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F474A34();
  sub_26F4A0598();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_26F474ADC();
      v12 = v26;
      sub_26F4A0368();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_26F474A88();
      v12 = v29;
      sub_26F4A0368();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_26F474B30();
    sub_26F4A0368();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t VisualTranslationTextAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](v1);
  return sub_26F4A0568();
}

uint64_t VisualTranslationTextAlignment.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1348, &qword_26F4AA970);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1350, &qword_26F4AA978);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1358, &qword_26F4AA980);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1360, &qword_26F4AA988);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F474A34();
  v18 = v49;
  sub_26F4A0588();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_26F4A0358();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_26F474ADC();
          v33 = v40;
          sub_26F4A02B8();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_26F474A88();
          v37 = v40;
          sub_26F4A02B8();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_26F474B30();
        v35 = v40;
        sub_26F4A02B8();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_0(v30);
    }
  }

  v26 = sub_26F4A01A8();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1368, &unk_26F4AA990) + 48);
  *v28 = &type metadata for VisualTranslationTextAlignment;
  sub_26F4A02C8();
  sub_26F4A0198();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t VisualTranslationModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49D968();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 VisualTranslationModel.bounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VisualTranslationModel(0) + 20);
  v4 = *(v3 + 144);
  *(a1 + 128) = *(v3 + 128);
  *(a1 + 144) = v4;
  *(a1 + 160) = *(v3 + 160);
  v5 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v5;
  v6 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v6;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  result = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t VisualTranslationModel.boundsTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VisualTranslationModel(0) + 24);
  v4 = sub_26F49D918();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VisualTranslationModel.paragraphs.getter()
{
  v1 = *(v0 + *(type metadata accessor for VisualTranslationModel(0) + 28));
}

uint64_t VisualTranslationModel.textAlignment.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for VisualTranslationModel(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t sub_26F46FC28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F474EF0();
  *a2 = result;
  return result;
}

void sub_26F46FC58(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xED0000746E656D6ELL;
  v6 = 0x67696C4174786574;
  if (v2 != 6)
  {
    v6 = 0xD00000000000001BLL;
    v5 = 0x800000026F4AC6C0;
  }

  v7 = 0xED000073656E694CLL;
  v8 = 0x664F7265626D756ELL;
  if (v2 != 4)
  {
    v8 = 0xD000000000000015;
    v7 = 0x800000026F4AC690;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF706D617473656DLL;
  v10 = 0x695473646E756F62;
  if (v2 != 2)
  {
    v10 = 0x7061726761726170;
    v9 = 0xEA00000000007368;
  }

  if (*v1)
  {
    v4 = 0x73646E756F62;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_26F46FD7C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x67696C4174786574;
  if (v1 != 6)
  {
    v3 = 0xD00000000000001BLL;
  }

  v4 = 0x664F7265626D756ELL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x695473646E756F62;
  if (v1 != 2)
  {
    v5 = 0x7061726761726170;
  }

  if (*v0)
  {
    v2 = 0x73646E756F62;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26F46FE9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F474EF0();
  *a1 = result;
  return result;
}

uint64_t sub_26F46FED0(uint64_t a1)
{
  v2 = sub_26F475D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F46FF0C(uint64_t a1)
{
  v2 = sub_26F475D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VisualTranslationModel.init(id:bounds:boundsTimestamp:paragraphs:numberOfLines:displayAsVerticalText:textAlignment:significantTranscriptChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v17 = *a7;
  v18 = sub_26F49D968();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for VisualTranslationModel(0);
  v20 = a9 + v19[5];
  v21 = *(a2 + 144);
  *(v20 + 128) = *(a2 + 128);
  *(v20 + 144) = v21;
  *(v20 + 160) = *(a2 + 160);
  v22 = *(a2 + 80);
  *(v20 + 64) = *(a2 + 64);
  *(v20 + 80) = v22;
  v23 = *(a2 + 112);
  *(v20 + 96) = *(a2 + 96);
  *(v20 + 112) = v23;
  v24 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v24;
  v25 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v25;
  v26 = v19[6];
  v27 = sub_26F49D918();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a3, v27);
  *(a9 + v19[7]) = a4;
  *(a9 + v19[8]) = a5;
  *(a9 + v19[9]) = a6;
  *(a9 + v19[10]) = v17;
  *(a9 + v19[11]) = a8;
  return result;
}

__n128 VisualTranslationModel.init(id:string:bounds:boundsTimestamp:numberOfLines:displayAsVerticalText:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v65 = a7;
  v64 = a6;
  v63 = a5;
  v60 = a3;
  v59 = a2;
  v56 = a1;
  v58 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v56 - v12;
  v14 = type metadata accessor for TextModel();
  v15 = (v14 - 8);
  v61 = *(v14 - 8);
  v62 = v61;
  v16 = *(v61 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a4[9];
  v74 = a4[8];
  v75 = v19;
  v76 = *(a4 + 20);
  v20 = a4[5];
  v70 = a4[4];
  v71 = v20;
  v21 = a4[7];
  v72 = a4[6];
  v73 = v21;
  v22 = a4[1];
  v66 = *a4;
  v67 = v22;
  v23 = a4[3];
  v68 = a4[2];
  v69 = v23;
  v24 = sub_26F49D968();
  v57 = *(v24 - 8);
  v25 = *(v57 + 16);
  v26 = a1;
  v27 = v24;
  v25(v18, v26);
  v28 = sub_26F49DAB8();
  v29 = *(*(v28 - 8) + 56);
  v29(v13, 1, 1, v28);
  v30 = &v18[v15[11]];
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v31 = v15[9];
  v29(&v18[v31], 1, 1, v28);
  v32 = &v18[v15[10]];
  v33 = v15[13];
  v34 = v15[14];
  *&v18[v15[7]] = 0;
  v35 = &v18[v15[8]];
  v36 = v60;
  *v35 = v59;
  *(v35 + 1) = v36;
  sub_26F3D27D4(v13, &v18[v31]);
  *v32 = 0;
  *(v32 + 1) = 0;
  *&v18[v15[12]] = 0;
  *&v18[v33] = 0;
  *&v18[v34] = 1;
  v37 = v58;
  v38 = v56;
  v39 = v27;
  (v25)(v58, v56, v27);
  v40 = type metadata accessor for VisualTranslationModel(0);
  v41 = v40[6];
  v42 = sub_26F49D918();
  v43 = *(v42 - 8);
  v44 = v37 + v41;
  v45 = v37;
  v46 = v63;
  (*(v43 + 16))(v44, v63, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0118, &qword_26F4ABEF0);
  v47 = *(v61 + 72);
  v48 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_26F4A3150;
  sub_26F448DA4(v18, v49 + v48, type metadata accessor for TextModel);
  (*(v43 + 8))(v46, v42);
  (*(v57 + 8))(v38, v39);
  sub_26F475CB0(v18, type metadata accessor for TextModel);
  v50 = v45 + v40[5];
  v51 = v75;
  *(v50 + 128) = v74;
  *(v50 + 144) = v51;
  *(v50 + 160) = v76;
  v52 = v71;
  *(v50 + 64) = v70;
  *(v50 + 80) = v52;
  v53 = v73;
  *(v50 + 96) = v72;
  *(v50 + 112) = v53;
  v54 = v67;
  *v50 = v66;
  *(v50 + 16) = v54;
  result = v69;
  *(v50 + 32) = v68;
  *(v50 + 48) = result;
  *(v45 + v40[7]) = v49;
  *(v45 + v40[8]) = v64;
  *(v45 + v40[9]) = v65;
  *(v45 + v40[10]) = 3;
  *(v45 + v40[11]) = 0;
  return result;
}

uint64_t VisualTranslationModel.updateTranslation(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_26F49D968();
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  v7 = type metadata accessor for VisualTranslationModel(0);
  v8 = (v3 + v7[5]);
  v25 = v8[8];
  v26 = v8[9];
  v27 = *(v8 + 20);
  v21 = v8[4];
  v22 = v8[5];
  v23 = v8[6];
  v24 = v8[7];
  v19 = v8[2];
  v20 = v8[3];
  v17 = *v8;
  v18 = v8[1];
  v9 = v7[6];
  v10 = sub_26F49D918();
  (*(*(v10 - 8) + 16))(a2 + v9, v3 + v9, v10);
  v11 = *(a1 + v7[7]);
  v12 = *(a1 + v7[8]);
  v13 = *(a1 + v7[9]);
  v14 = *(a1 + v7[10]);
  v15 = a2 + v7[5];
  *(v15 + 128) = v25;
  *(v15 + 144) = v26;
  *(v15 + 160) = v27;
  *(v15 + 64) = v21;
  *(v15 + 80) = v22;
  *(v15 + 96) = v23;
  *(v15 + 112) = v24;
  *v15 = v17;
  *(v15 + 16) = v18;
  *(v15 + 32) = v19;
  *(v15 + 48) = v20;
  *(a2 + v7[7]) = v11;
  *(a2 + v7[8]) = v12;
  *(a2 + v7[9]) = v13;
  *(a2 + v7[10]) = v14;
  *(a2 + v7[11]) = 0;
}

uint64_t VisualTranslationModel.updateBounds(bounds:boundsTimeStamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for VisualTranslationModel(0);
  v9 = v8[6];
  sub_26F49D8F8();
  if (v10 > 0.0)
  {
    return sub_26F448DA4(v4, a3, type metadata accessor for VisualTranslationModel);
  }

  v12 = sub_26F49D968();
  (*(*(v12 - 8) + 16))(a3, v4, v12);
  v13 = v8[6];
  v14 = sub_26F49D918();
  (*(*(v14 - 8) + 16))(a3 + v13, a2, v14);
  v15 = *(v4 + v8[7]);
  v16 = *(v4 + v8[8]);
  v17 = *(v4 + v8[9]);
  v18 = *(v4 + v8[10]);
  v19 = a3 + v8[5];
  v20 = *(a1 + 144);
  *(v19 + 128) = *(a1 + 128);
  *(v19 + 144) = v20;
  *(v19 + 160) = *(a1 + 160);
  v21 = *(a1 + 80);
  *(v19 + 64) = *(a1 + 64);
  *(v19 + 80) = v21;
  v22 = *(a1 + 112);
  *(v19 + 96) = *(a1 + 96);
  *(v19 + 112) = v22;
  v23 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 16) = v23;
  v24 = *(a1 + 48);
  *(v19 + 32) = *(a1 + 32);
  *(v19 + 48) = v24;
  *(a3 + v8[7]) = v15;
  *(a3 + v8[8]) = v16;
  *(a3 + v8[9]) = v17;
  *(a3 + v8[10]) = v18;
  *(a3 + v8[11]) = 0;
}

uint64_t VisualTranslationModel.json.getter()
{
  v0 = sub_26F49D728();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_26F49D718();
  type metadata accessor for VisualTranslationModel(0);
  sub_26F4749EC(&qword_2806E1370, type metadata accessor for VisualTranslationModel);
  v3 = sub_26F49D708();

  return v3;
}

uint64_t sub_26F470A30(unint64_t a1, uint64_t *a2)
{
  v13 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_26F4A01F8();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26F4A00A8())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x274390F80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = *a2;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_26F4A01D8();
      v11 = *(v13 + 16);
      sub_26F4A0208();
      sub_26F4A0218();
      sub_26F4A01E8();
      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_26F4A00A8();
    sub_26F4A01F8();
  }

  return v13;
}

uint64_t sub_26F470B98(void **a1, id *a2, char a3, uint64_t a4, uint64_t a5)
{
  v124 = a4;
  v125 = a5;
  v123 = a1;
  v103 = sub_26F49D918();
  v127 = *(v103 - 8);
  v7 = *(v127 + 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_26F49D968();
  v116 = *(v101 - 8);
  v9 = *(v116 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_26F49DA98();
  v117 = *(v111 - 8);
  v11 = *(v117 + 64);
  MEMORY[0x28223BE20](v111);
  v112 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF918, &qword_26F4A5810);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v110 = &v94 - v15;
  v16 = sub_26F49DAB8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v143 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v99 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v94 - v24;
  MEMORY[0x28223BE20](v26);
  v130 = &v94 - v27;
  MEMORY[0x28223BE20](v28);
  v129 = &v94 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v94 - v32;
  v128 = type metadata accessor for VisualTranslationModel(0);
  v113 = *(v128 - 8);
  v34 = *(v113 + 64);
  MEMORY[0x28223BE20](v128);
  v122 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = MEMORY[0x28223BE20](v36).n128_u64[0];
  v121 = &v94 - v38;
  if (a3)
  {
    v39 = 4;
  }

  else
  {
    v39 = 8;
  }

  v40 = [*a2 getCROutputRegion];
  v41 = [v40 contentsWithTypes_];

  sub_26F3B0C24(0, &qword_280F669F8, 0x277D70098);
  v42 = sub_26F49FAF8();

  if ((a3 & 1) == 0 || !sub_26F470A30(v42, 0x277D700A0))
  {
    goto LABEL_9;
  }

  v43 = objc_opt_self();
  sub_26F3B0C24(0, &qword_280F669E0, 0x277D700A0);
  v44 = sub_26F49FAD8();

  v45 = [v43 groupedParagraphBlocksFromParagraphs_];

  sub_26F3B0C24(0, &qword_280F669E8, 0x277D70060);
  v46 = sub_26F49FAF8();

  if (v46 >> 62)
  {
    goto LABEL_59;
  }

  sub_26F4A0468();
  v42 = v46;
  while (1)
  {

LABEL_9:
    v47 = v128;
    if (v42 >> 62)
    {
      break;
    }

    v48 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v48)
    {
    }

LABEL_11:
    if (v48 >= 1)
    {
      v49 = v42;
      v50 = 0;
      v126 = v49;
      v119 = v49 & 0xC000000000000001;
      v108 = (v117 + 8);
      v109 = (v17 + 32);
      v97 = (v17 + 56);
      v98 = (v17 + 16);
      v95 = (v127 + 32);
      v96 = (v116 + 32);
      v116 = v113 + 56;
      v117 = v17 + 8;
      v114 = v16;
      v115 = (v113 + 48);
      v127 = v25;
      v120 = v48;
      v118 = (v17 + 48);
      while (1)
      {
        if (v119)
        {
          v51 = MEMORY[0x274390F80](v50, v126);
        }

        else
        {
          v51 = *(v126 + 8 * v50 + 32);
        }

        v52 = v51;
        sub_26F3E718C(v124, v129);
        v53 = v130;
        sub_26F3E718C(v125, v130);
        sub_26F3E718C(v53, v25);
        v54 = *v118;
        if ((*v118)(v25, 1, v16) == 1)
        {
          v55 = v52;
          _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
          if (v54(v25, 1, v16) != 1)
          {
            sub_26F3B6B4C(v25, &qword_2806DEFD8, &qword_26F4A3670);
          }
        }

        else
        {
          (*v109)(v143, v25, v16);
          v56 = v52;
        }

        if ([v52 layoutDirection] == 5)
        {
          v57 = v112;
          sub_26F49DAA8();
          v58 = v110;
          sub_26F49DA58();
          (*v108)(v57, v111);
          v59 = sub_26F49D9B8();
          v60 = *(v59 - 8);
          if ((*(v60 + 48))(v58, 1, v59) == 1)
          {
            sub_26F3B6B4C(v58, &qword_2806DF918, &qword_26F4A5810);
            v61 = 0;
            v25 = v127;
          }

          else
          {
            v62 = v58;
            v63 = sub_26F49D998();
            v65 = v64;
            (*(v60 + 8))(v62, v59);
            if (v63 == 24938 && v65 == 0xE200000000000000)
            {

              v61 = 1;
              v16 = v114;
              v25 = v127;
            }

            else
            {
              v66 = sub_26F4A0458();
              v25 = v127;
              if ((v66 & 1) != 0 || v63 == 26746 && v65 == 0xE200000000000000)
              {

                v61 = 1;
              }

              else
              {
                v61 = sub_26F4A0458();
              }

              v16 = v114;
            }
          }

          v47 = v128;
        }

        else
        {
          v61 = 0;
        }

        v67 = [v52 text];
        if (v67)
        {
          v68 = v67;
          v69 = sub_26F49F8C8();
          v71 = v70;

          v72 = HIBYTE(v71) & 0xF;
          if ((v71 & 0x2000000000000000) == 0)
          {
            v72 = v69 & 0xFFFFFFFFFFFFLL;
          }

          if (v72)
          {
            v73 = v52;
            sub_26F465CC0(v73, v131);
            v141 = v131[8];
            v142[0] = v132[0];
            *(v142 + 9) = *(v132 + 9);
            v137 = v131[4];
            v138 = v131[5];
            v139 = v131[6];
            v140 = v131[7];
            v133 = v131[0];
            v134 = v131[1];
            v135 = v131[2];
            v136 = v131[3];
            if (sub_26F476AC8(&v133) != 1)
            {
              v78 = v99;
              v79 = v143;
              (*v98)(v99, v143, v16);
              (*v97)(v78, 0, 1, v16);
              v107 = v61;
              v80 = v129;
              v106 = sub_26F474F3C(v73, v129, v78);
              sub_26F3B6B4C(v78, &qword_2806DEFD8, &qword_26F4A3670);
              v81 = [v73 textAlignment];
              v82 = 0x2010003u >> (8 * v81);
              if (v81 >= 4)
              {
                v82 = 3;
              }

              v105 = v82;
              v83 = [v73 uuid];
              v84 = v100;
              sub_26F49D948();

              v85 = v102;
              sub_26F49D8E8();
              v104 = [v73 numberOfLines];

              (*v117)(v79, v114);
              sub_26F3B6B4C(v130, &qword_2806DEFD8, &qword_26F4A3670);
              sub_26F3B6B4C(v80, &qword_2806DEFD8, &qword_26F4A3670);
              v86 = v84;
              v16 = v114;
              (*v96)(v33, v86, v101);
              v47 = v128;
              v87 = &v33[*(v128 + 20)];
              v88 = v134;
              *v87 = v133;
              *(v87 + 1) = v88;
              v89 = v138;
              *(v87 + 4) = v137;
              *(v87 + 5) = v89;
              v90 = v136;
              *(v87 + 2) = v135;
              *(v87 + 3) = v90;
              *(v87 + 20) = *&v142[1];
              v91 = v142[0];
              *(v87 + 8) = v141;
              *(v87 + 9) = v91;
              v92 = v140;
              *(v87 + 6) = v139;
              *(v87 + 7) = v92;
              (*v95)(&v33[v47[6]], v85, v103);
              *&v33[v47[7]] = v106;
              *&v33[v47[8]] = v104;
              v33[v47[9]] = v107 & 1;
              v33[v47[10]] = v105;
              v33[v47[11]] = 0;
              (*v116)(v33, 0, 1, v47);
              v25 = v127;
              goto LABEL_46;
            }
          }

          else
          {
          }

          (*v117)(v143, v16);
          sub_26F3B6B4C(v130, &qword_2806DEFD8, &qword_26F4A3670);
          sub_26F3B6B4C(v129, &qword_2806DEFD8, &qword_26F4A3670);
          v25 = v127;
          v47 = v128;
        }

        else
        {

          (*v117)(v143, v16);
          sub_26F3B6B4C(v130, &qword_2806DEFD8, &qword_26F4A3670);
          sub_26F3B6B4C(v129, &qword_2806DEFD8, &qword_26F4A3670);
        }

        (*v116)(v33, 1, 1, v47);
LABEL_46:
        if ((*v115)(v33, 1, v47) == 1)
        {

          sub_26F3B6B4C(v33, &qword_2806E0908, &qword_26F4AB220);
        }

        else
        {
          v74 = v121;
          sub_26F476988(v33, v121, type metadata accessor for VisualTranslationModel);
          sub_26F448DA4(v74, v122, type metadata accessor for VisualTranslationModel);
          v75 = *v123;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_26F44650C(0, v75[2] + 1, 1, v75);
          }

          v77 = v75[2];
          v76 = v75[3];
          if (v77 >= v76 >> 1)
          {
            v75 = sub_26F44650C(v76 > 1, v77 + 1, 1, v75);
          }

          sub_26F475CB0(v121, type metadata accessor for VisualTranslationModel);
          v75[2] = v77 + 1;
          sub_26F476988(v122, v75 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v77, type metadata accessor for VisualTranslationModel);
          *v123 = v75;
          v25 = v127;
          v47 = v128;
        }

        if (v120 == ++v50)
        {
        }
      }
    }

    __break(1u);
LABEL_59:

    v42 = sub_26F4A0248();
  }

  v48 = sub_26F4A00A8();
  if (v48)
  {
    goto LABEL_11;
  }
}

uint64_t static VisualTranslationModel.models(from:currentModels:sourceLocale:targetLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  return sub_26F46C864(MEMORY[0x277D84F98], sub_26F475C90, v5, a1);
}

void sub_26F471A28(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void, uint64_t, uint64_t), uint64_t a5)
{
  v234 = a5;
  v235 = a4;
  v232 = a3;
  v264 = a2;
  v233 = a1;
  v213 = sub_26F49D918();
  v212 = *(v213 - 8);
  v5 = *(v212 + 64);
  MEMORY[0x28223BE20](v213);
  v211 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_26F49DAB8();
  v244 = *(v245 - 8);
  v7 = *(v244 + 64);
  MEMORY[0x28223BE20](v245);
  v218 = &v204 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v214 = &v204 - v10;
  MEMORY[0x28223BE20](v11);
  v228 = &v204 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v216 = &v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v224 = &v204 - v17;
  MEMORY[0x28223BE20](v18);
  v223 = &v204 - v19;
  MEMORY[0x28223BE20](v20);
  v215 = &v204 - v21;
  MEMORY[0x28223BE20](v22);
  v230 = &v204 - v23;
  MEMORY[0x28223BE20](v24);
  v226 = &v204 - v25;
  MEMORY[0x28223BE20](v26);
  v241 = (&v204 - v27);
  MEMORY[0x28223BE20](v28);
  v240 = (&v204 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v210 = &v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v217 = &v204 - v34;
  MEMORY[0x28223BE20](v35);
  v227 = &v204 - v36;
  v236 = type metadata accessor for VisualTranslationModel(0);
  v237 = *(v236 - 8);
  v37 = *(v237 + 64);
  MEMORY[0x28223BE20](v236);
  v219 = &v204 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v229 = &v204 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1470, &qword_26F4AB228);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v231 = &v204 - v43;
  v242 = sub_26F49D968();
  v246 = *(v242 - 8);
  v44 = *(v246 + 64);
  MEMORY[0x28223BE20](v242);
  v209 = &v204 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v221 = &v204 - v47;
  MEMORY[0x28223BE20](v48);
  v222 = &v204 - v49;
  MEMORY[0x28223BE20](v50);
  v238 = &v204 - v51;
  MEMORY[0x28223BE20](v52);
  v239 = &v204 - v53;
  MEMORY[0x28223BE20](v54);
  v225 = &v204 - v55;
  MEMORY[0x28223BE20](v56);
  v243 = &v204 - v57;
  v58 = sub_26F49F7D8();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v62 = &v204 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v65 = &v204 - v64;
  v66 = sub_26F49F728();
  v67 = *(v66 - 8);
  v68 = *(v67 + 64);
  v69 = MEMORY[0x28223BE20](v66);
  v71 = &v204 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(v59 + 16);
  v72(v65, v264, v58, v69);
  if ((*(v59 + 88))(v65, v58) != *MEMORY[0x277CE3090])
  {
    (*(v59 + 8))(v65, v58);
LABEL_7:
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v84 = sub_26F49DCA8();
    __swift_project_value_buffer(v84, qword_280F67ED0);
    v85 = sub_26F49DC88();
    v86 = sub_26F49FDD8();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_26F39E000, v85, v86, "Observation is not text as expected", v87, 2u);
      MEMORY[0x274391F70](v87, -1, -1);
    }

    return;
  }

  (*(v59 + 96))(v65, v58);
  (*(v67 + 32))(v71, v65, v66);
  v73 = sub_26F49F708();
  objc_opt_self();
  v74 = swift_dynamicCastObjCClass();
  if (!v74)
  {

    (*(v67 + 8))(v71, v66);
    goto LABEL_7;
  }

  v220 = v73;
  v206 = v71;
  v207 = v67;
  v208 = v66;
  v205 = v74;
  v75 = [v74 getCROutputRegion];
  (v72)(v62, v264, v58);
  v76 = [v75 trackingID];
  if (v76)
  {
    v77 = v225;
    v78 = v76;
    sub_26F49D948();

    v79 = v246;
    v80 = *(v246 + 32);
    v81 = v231;
    v82 = v242;
    v80(v231, v77, v242);
    (*(v79 + 56))(v81, 0, 1, v82);
    v83 = v243;
    v80(v243, v81, v82);
  }

  else
  {
    v88 = v246;
    v89 = v231;
    v82 = v242;
    (*(v246 + 56))(v231, 1, 1, v242);
    v90 = [v75 uuid];
    v83 = v243;
    sub_26F49D948();

    if ((*(v88 + 48))(v89, 1, v82) != 1)
    {
      sub_26F3B6B4C(v89, &qword_2806E1470, &qword_26F4AB228);
    }
  }

  v264 = v75;
  v91 = [v75 significantTranscriptChange];
  v92 = v232;
  if (*(v232 + 16))
  {
    v93 = sub_26F45FF48(v83);
    if (v94)
    {
      v95 = *(v92 + 56) + *(v237 + 72) * v93;
      v96 = v219;
      sub_26F448DA4(v95, v219, type metadata accessor for VisualTranslationModel);
      sub_26F476988(v96, v229, type metadata accessor for VisualTranslationModel);
      if (v91)
      {
        goto LABEL_45;
      }

      v97 = *(v229 + *(v236 + 28));
      v98 = *(v97 + 16);
      v241 = v97;
      if (v98)
      {
        v99 = type metadata accessor for TextModel();
        v100 = v97 + ((*(*(v99 - 8) + 80) + 32) & ~*(*(v99 - 8) + 80)) + *(v99 + 28);
        v101 = v215;
        sub_26F3E718C(v100, v215);
        if ((*(v244 + 48))(v101, 1, v245) != 1)
        {
          v251 = sub_26F49D988();
          v252 = v102;
          v249 = 45;
          v250 = 0xE100000000000000;
          v247 = 95;
          v248 = 0xE100000000000000;
          sub_26F3BDC0C();
          v103 = sub_26F49FFF8();
          v105 = v104;

          (*(v244 + 8))(v101, v245);
          goto LABEL_32;
        }
      }

      else
      {
        v101 = v215;
        (*(v244 + 56))(v215, 1, 1, v245);
      }

      sub_26F3B6B4C(v101, &qword_2806DEFD8, &qword_26F4A3670);
      v103 = 0;
      v105 = 0;
LABEL_32:
      v251 = sub_26F49D988();
      v252 = v137;
      v249 = 45;
      v250 = 0xE100000000000000;
      v247 = 95;
      v248 = 0xE100000000000000;
      sub_26F3BDC0C();
      v138 = sub_26F49FFF8();
      v140 = v139;

      if (!v105)
      {
        goto LABEL_44;
      }

      if (v103 == v138 && v105 == v140)
      {
      }

      else
      {
        v141 = sub_26F4A0458();

        v83 = v243;
        if ((v141 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v142 = v241;
      if (*(v241 + 2))
      {
        v143 = type metadata accessor for TextModel();
        v144 = v244;
        v145 = v214;
        v146 = v245;
        (*(v244 + 16))(v214, v142 + ((*(*(v143 - 8) + 80) + 32) & ~*(*(v143 - 8) + 80)) + *(v143 + 36), v245);
        v251 = sub_26F49D988();
        v252 = v147;
        v249 = 45;
        v250 = 0xE100000000000000;
        v247 = 95;
        v248 = 0xE100000000000000;
        v240 = sub_26F49FFF8();
        v149 = v148;

        (*(v144 + 8))(v145, v146);
      }

      else
      {
        v240 = 0;
        v149 = 0;
      }

      v251 = sub_26F49D988();
      v252 = v150;
      v249 = 45;
      v250 = 0xE100000000000000;
      v247 = 95;
      v248 = 0xE100000000000000;
      v151 = sub_26F49FFF8();
      v153 = v152;

      if (!v149)
      {
LABEL_44:

        v83 = v243;
        goto LABEL_45;
      }

      if (v240 == v151 && v149 == v153)
      {

        v83 = v243;
LABEL_57:
        v188 = *(v246 + 16);
        v189 = v209;
        v188(v209, v83, v82);
        v190 = v211;
        sub_26F49D8E8();
        v191 = v236;
        v192 = *(v236 + 24);
        v186 = v229;
        sub_26F49D8F8();
        if (v193 <= 0.0)
        {
          v194 = v210;
          v188(v210, v186, v82);
          (*(v212 + 32))(v194 + v191[6], v190, v213);
          v195 = *(v186 + v191[8]);
          v196 = *(v186 + v191[9]);
          v197 = *(v186 + v191[10]);
          v198 = v194 + v191[5];
          v199 = v262;
          *(v198 + 128) = v261;
          *(v198 + 144) = v199;
          *(v198 + 160) = v263;
          v200 = v258;
          *(v198 + 64) = v257;
          *(v198 + 80) = v200;
          v201 = v260;
          *(v198 + 96) = v259;
          *(v198 + 112) = v201;
          v202 = v254;
          *v198 = v253;
          *(v198 + 16) = v202;
          v203 = v256;
          *(v198 + 32) = v255;
          *(v198 + 48) = v203;
          *(v194 + v191[7]) = v241;
          *(v194 + v191[8]) = v195;
          *(v194 + v191[9]) = v196;
          *(v194 + v191[10]) = v197;
          *(v194 + v191[11]) = 0;
        }

        else
        {
          (*(v212 + 8))(v190, v213);
          v194 = v210;
          sub_26F448DA4(v186, v210, type metadata accessor for VisualTranslationModel);
        }

        (*(v237 + 56))(v194, 0, 1, v191);
        sub_26F48806C(v194, v189);

        (*(v246 + 8))(v243, v82);
LABEL_55:
        (*(v207 + 8))(v206, v208);
        sub_26F475CB0(v186, type metadata accessor for VisualTranslationModel);
        return;
      }

      v187 = sub_26F4A0458();

      v83 = v243;
      if (v187)
      {
        goto LABEL_57;
      }

LABEL_45:
      v154 = v245;
      v155 = *(v246 + 16);
      v155(v222, v83, v82);
      v241 = v155;
      v155(v221, v83, v82);
      v156 = v244;
      v157 = *(v244 + 16);
      v158 = v223;
      v157(v223, v235, v154);
      v159 = v156[7];
      (v159)(v158, 0, 1, v154);
      v160 = v224;
      v157(v224, v234, v154);
      v240 = v159;
      (v159)(v160, 0, 1, v154);
      v161 = v216;
      sub_26F3E718C(v160, v216);
      v162 = v156[6];
      if (v162(v161, 1, v154) == 1)
      {
        v163 = v220;
        v164 = v218;
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        if (v162(v161, 1, v154) != 1)
        {
          sub_26F3B6B4C(v161, &qword_2806DEFD8, &qword_26F4A3670);
        }
      }

      else
      {
        v165 = v156[4];
        v164 = v218;
        v165(v218, v161, v154);
        v166 = v220;
      }

      v167 = [v205 getCROutputRegion];
      LODWORD(v239) = [v167 layoutDirection] == 5 && Locale.supportsVerticalText()();
      v168 = v230;
      v169 = v245;
      v157(v230, v164, v245);
      (v240)(v168, 0, 1, v169);
      v170 = v223;
      v240 = sub_26F474F3C(v167, v223, v168);
      sub_26F3B6B4C(v168, &qword_2806DEFD8, &qword_26F4A3670);
      v238 = [v167 numberOfLines];
      v171 = [v167 textAlignment];
      v172 = 0x2010003u >> (8 * v171);
      if (v171 >= 4)
      {
        v172 = 3;
      }

      LODWORD(v235) = v172;
      v173 = v217;
      v174 = v221;
      v175 = v242;
      v241(v217, v221, v242);
      v176 = v236;
      v177 = v173 + *(v236 + 24);
      sub_26F49D8E8();
      v178 = v220;

      (*(v244 + 8))(v164, v169);
      sub_26F3B6B4C(v224, &qword_2806DEFD8, &qword_26F4A3670);
      sub_26F3B6B4C(v170, &qword_2806DEFD8, &qword_26F4A3670);
      v179 = *(v246 + 8);
      v179(v174, v175);
      v180 = v173 + v176[5];
      v181 = v258;
      *(v180 + 64) = v257;
      *(v180 + 80) = v181;
      *(v180 + 160) = v263;
      v182 = v262;
      *(v180 + 128) = v261;
      *(v180 + 144) = v182;
      v183 = v260;
      *(v180 + 96) = v259;
      *(v180 + 112) = v183;
      v184 = v254;
      *v180 = v253;
      *(v180 + 16) = v184;
      v185 = v256;
      *(v180 + 32) = v255;
      *(v180 + 48) = v185;
      *(v173 + v176[7]) = v240;
      *(v173 + v176[8]) = v238;
      *(v173 + v176[9]) = v239 & 1;
      *(v173 + v176[10]) = v235;
      *(v173 + v176[11]) = 1;
      (*(v237 + 56))(v173, 0, 1, v176);
      sub_26F48806C(v173, v222);

      v179(v243, v175);
      v186 = v229;
      goto LABEL_55;
    }
  }

  LODWORD(v232) = v91;
  v106 = *(v246 + 16);
  v106(v239, v83, v82);
  v231 = v106;
  v106(v238, v83, v82);
  v107 = v244;
  v108 = *(v244 + 16);
  v109 = v240;
  v110 = v245;
  v108(v240, v235, v245);
  v111 = v107[7];
  v111(v109, 0, 1, v110);
  v112 = v241;
  v108(v241, v234, v110);
  v235 = v111;
  v111(v112, 0, 1, v110);
  v113 = v226;
  sub_26F3E718C(v112, v226);
  v114 = v107[6];
  if (v114(v113, 1, v110) == 1)
  {
    v115 = v220;
    v116 = v228;
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    if (v114(v113, 1, v245) != 1)
    {
      sub_26F3B6B4C(v113, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  else
  {
    v117 = v107[4];
    v116 = v228;
    v117(v228, v113, v245);
    v118 = v220;
  }

  v119 = [v205 getCROutputRegion];
  LODWORD(v234) = [v119 layoutDirection] == 5 && Locale.supportsVerticalText()();
  v120 = v230;
  v121 = v245;
  v108(v230, v116, v245);
  v235(v120, 0, 1, v121);
  v122 = v240;
  v235 = sub_26F474F3C(v119, v240, v120);
  sub_26F3B6B4C(v120, &qword_2806DEFD8, &qword_26F4A3670);
  v230 = [v119 numberOfLines];
  v123 = [v119 textAlignment];
  v124 = 0x2010003u >> (8 * v123);
  if (v123 >= 4)
  {
    v124 = 3;
  }

  LODWORD(v229) = v124;
  v125 = v227;
  v126 = v238;
  v127 = v242;
  (v231)(v227, v238, v242);
  v128 = v236;
  v129 = v125 + *(v236 + 24);
  sub_26F49D8E8();

  (*(v244 + 8))(v116, v121);
  sub_26F3B6B4C(v241, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v122, &qword_2806DEFD8, &qword_26F4A3670);
  v130 = *(v246 + 8);
  v130(v126, v127);
  v131 = v125 + v128[5];
  v132 = v258;
  *(v131 + 64) = v257;
  *(v131 + 80) = v132;
  *(v131 + 160) = v263;
  v133 = v262;
  *(v131 + 128) = v261;
  *(v131 + 144) = v133;
  v134 = v260;
  *(v131 + 96) = v259;
  *(v131 + 112) = v134;
  v135 = v254;
  *v131 = v253;
  *(v131 + 16) = v135;
  v136 = v256;
  *(v131 + 32) = v255;
  *(v131 + 48) = v136;
  *(v125 + v128[7]) = v235;
  *(v125 + v128[8]) = v230;
  *(v125 + v128[9]) = v234 & 1;
  *(v125 + v128[10]) = v229;
  *(v125 + v128[11]) = v232;
  (*(v237 + 56))(v125, 0, 1, v128);
  sub_26F48806C(v125, v239);

  v130(v243, v127);
  (*(v207 + 8))(v206, v208);
}

uint64_t VisualTranslationModel.debugDescription.getter()
{
  v1 = type metadata accessor for VisualTranslationModel(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TextDiagnosticsModel();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F448DA4(v0, v4, type metadata accessor for VisualTranslationModel);
  TextDiagnosticsModel.init(model:)(v4, v8);
  v12[0] = TextDiagnosticsModel.json.getter();
  v12[1] = v9;
  MEMORY[0x2743907E0](10, 0xE100000000000000);
  v10 = v12[0];
  sub_26F475CB0(v8, type metadata accessor for TextDiagnosticsModel);
  return v10;
}

uint64_t VisualTranslationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1378, &unk_26F4AA9A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F475D10();
  sub_26F4A0598();
  v36 = 0;
  sub_26F49D968();
  sub_26F4749EC(&qword_2806DEE68, MEMORY[0x277CC95F0]);
  sub_26F4A03F8();
  if (!v2)
  {
    v11 = type metadata accessor for VisualTranslationModel(0);
    v12 = (v3 + v11[5]);
    v13 = v12[9];
    v33 = v12[8];
    v34 = v13;
    v35 = *(v12 + 20);
    v14 = v12[5];
    v29 = v12[4];
    v30 = v14;
    v15 = v12[7];
    v31 = v12[6];
    v32 = v15;
    v16 = v12[1];
    v25 = *v12;
    v26 = v16;
    v17 = v12[3];
    v27 = v12[2];
    v28 = v17;
    v24 = 1;
    sub_26F475D64();
    sub_26F4A03F8();
    v18 = v11[6];
    LOBYTE(v25) = 2;
    sub_26F49D918();
    sub_26F4749EC(&qword_2806E1390, MEMORY[0x277CC9578]);
    sub_26F4A03F8();
    *&v25 = *(v3 + v11[7]);
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB8, &unk_26F4A8E10);
    sub_26F475E60(&qword_2806E1398, &qword_2806E13A0);
    sub_26F4A03F8();
    v19 = *(v3 + v11[8]);
    LOBYTE(v25) = 4;
    sub_26F4A03D8();
    v20 = *(v3 + v11[9]);
    LOBYTE(v25) = 5;
    sub_26F4A03A8();
    LOBYTE(v25) = *(v3 + v11[10]);
    v24 = 6;
    sub_26F475DB8();
    sub_26F4A0388();
    v21 = *(v3 + v11[11]);
    LOBYTE(v25) = 7;
    sub_26F4A03A8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t VisualTranslationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v39 = sub_26F49D918();
  v38 = *(v39 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F49D968();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E13B0, &qword_26F4AA9B0);
  v40 = *(v41 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v11 = v34 - v10;
  v12 = type metadata accessor for VisualTranslationModel(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F475D10();
  v43 = v11;
  v17 = v58;
  sub_26F4A0588();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v18 = v5;
  v58 = v12;
  v35 = v15;
  v19 = v38;
  v20 = v39;
  LOBYTE(v47) = 0;
  sub_26F4749EC(&qword_2806DEE78, MEMORY[0x277CC95F0]);
  sub_26F4A0348();
  v21 = v35;
  (*(v37 + 32))(v35, v42, v6);
  v46 = 1;
  sub_26F475E0C();
  sub_26F4A0348();
  v34[1] = v6;
  v22 = v58;
  v23 = &v21[v58[5]];
  v24 = v54;
  v25 = v56;
  *(v23 + 8) = v55;
  *(v23 + 9) = v25;
  *(v23 + 20) = v57;
  v26 = v52;
  *(v23 + 4) = v51;
  *(v23 + 5) = v26;
  *(v23 + 6) = v53;
  *(v23 + 7) = v24;
  v27 = v48;
  *v23 = v47;
  *(v23 + 1) = v27;
  v28 = v50;
  *(v23 + 2) = v49;
  *(v23 + 3) = v28;
  LOBYTE(v45) = 2;
  sub_26F4749EC(&qword_2806E13C0, MEMORY[0x277CC9578]);
  sub_26F4A0348();
  (*(v19 + 32))(&v21[v22[6]], v18, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB8, &unk_26F4A8E10);
  v44 = 3;
  sub_26F475E60(&qword_2806E13C8, &qword_2806E13D0);
  sub_26F4A0348();
  *&v21[v22[7]] = v45;
  LOBYTE(v45) = 4;
  *&v21[v22[8]] = sub_26F4A0328();
  LOBYTE(v45) = 5;
  v29 = sub_26F4A0308();
  v30 = v40;
  v21[v22[9]] = v29 & 1;
  v44 = 6;
  sub_26F475EFC();
  sub_26F4A02E8();
  v21[v22[10]] = v45;
  LOBYTE(v45) = 7;
  LOBYTE(v22) = sub_26F4A0308();
  (*(v30 + 8))(v43, v41);
  v31 = v22 & 1;
  v32 = v35;
  v35[v58[11]] = v31;
  sub_26F448DA4(v32, v36, type metadata accessor for VisualTranslationModel);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_26F475CB0(v32, type metadata accessor for VisualTranslationModel);
}

uint64_t sub_26F474404(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TextDiagnosticsModel();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F448DA4(v1, v4, type metadata accessor for VisualTranslationModel);
  TextDiagnosticsModel.init(model:)(v4, v8);
  v12[0] = TextDiagnosticsModel.json.getter();
  v12[1] = v9;
  MEMORY[0x2743907E0](10, 0xE100000000000000);
  v10 = v12[0];
  sub_26F475CB0(v8, type metadata accessor for TextDiagnosticsModel);
  return v10;
}

uint64_t sub_26F474520@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for TextModel();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for VisualTranslationModel(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = *(v15 + 72);
    while (1)
    {
      sub_26F448DA4(v19, v13, type metadata accessor for VisualTranslationModel);
      v21 = *&v13[*(v10 + 28)];
      if (*(v21 + 16))
      {
        break;
      }

      v22 = sub_26F49DAB8();
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      sub_26F3B6B4C(v9, &qword_2806DEFD8, &qword_26F4A3670);
      sub_26F475CB0(v13, type metadata accessor for VisualTranslationModel);
      v19 += v20;
      if (!--v18)
      {
        goto LABEL_5;
      }
    }

    v25 = v39;
    v26 = *(v39 + 36);
    v38 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v27 = v38 + v26;
    v28 = sub_26F49DAB8();
    v29 = *(v28 - 8);
    v36 = *(v29 + 16);
    v36(v9, v21 + v27, v28);
    v30 = *(v29 + 56);
    v30(v9, 0, 1, v28);
    sub_26F3B6B4C(v9, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F476988(v13, v17, type metadata accessor for VisualTranslationModel);
    v31 = *&v17[*(v10 + 28)];

    sub_26F475CB0(v17, type metadata accessor for VisualTranslationModel);
    if (*(v31 + 16))
    {
      v32 = v30;
      v33 = v37;
      sub_26F448DA4(v31 + v38, v37, type metadata accessor for TextModel);

      v34 = v40;
      v36(v40, v33 + *(v25 + 36), v28);
      sub_26F475CB0(v33, type metadata accessor for TextModel);
      return v32(v34, 0, 1, v28);
    }

    else
    {

      return (v30)(v40, 1, 1, v28);
    }
  }

  else
  {
LABEL_5:
    v23 = sub_26F49DAB8();
    return (*(*(v23 - 8) + 56))(v40, 1, 1, v23);
  }
}

unint64_t sub_26F474998()
{
  result = qword_2806E12F8;
  if (!qword_2806E12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E12F8);
  }

  return result;
}

uint64_t sub_26F4749EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26F474A34()
{
  result = qword_2806E1328;
  if (!qword_2806E1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1328);
  }

  return result;
}

unint64_t sub_26F474A88()
{
  result = qword_2806E1330;
  if (!qword_2806E1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1330);
  }

  return result;
}

unint64_t sub_26F474ADC()
{
  result = qword_2806E1338;
  if (!qword_2806E1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1338);
  }

  return result;
}

unint64_t sub_26F474B30()
{
  result = qword_2806E1340;
  if (!qword_2806E1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1340);
  }

  return result;
}

uint64_t sub_26F474B84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_26F4A0458() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_26F4A0458() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874737361507369 && a2 == 0xED00006867756F72 || (sub_26F4A0458() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7466654C706F74 && a2 == 0xE700000000000000 || (sub_26F4A0458() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xE800000000000000 || (sub_26F4A0458() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xEA00000000007466 || (sub_26F4A0458() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69526D6F74746F62 && a2 == 0xEB00000000746867)
  {

    return 6;
  }

  else
  {
    v6 = sub_26F4A0458();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_26F474DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746E6563 && a2 == 0xE600000000000000;
  if (v4 || (sub_26F4A0458() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_26F4A0458() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26F4A0458();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26F474EF0()
{
  v0 = sub_26F4A02A8();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

size_t sub_26F474F3C(void *a1, uint64_t a2, uint64_t a3)
{
  v117 = a3;
  v115 = a2;
  v124 = sub_26F49DAB8();
  v105 = *(v124 - 8);
  v4 = *(v105 + 64);
  MEMORY[0x28223BE20](v124);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v97 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v98 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v103 = &v97 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  MEMORY[0x28223BE20](v18);
  v123 = &v97 - v19;
  v116 = sub_26F49D968();
  v104 = *(v116 - 8);
  v20 = *(v104 + 64);
  MEMORY[0x28223BE20](v116);
  v102 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v122 = &v97 - v23;
  v24 = type metadata accessor for TextModel();
  v113 = *(v24 - 8);
  v114 = v24;
  v25 = *(v113 + 64);
  MEMORY[0x28223BE20](v24);
  v125 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1478, &unk_26F4AB230);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  *&v30 = MEMORY[0x28223BE20](v27).n128_u64[0];
  v32 = &v97 - v31;
  v100 = a1;
  v33 = [a1 text];
  v99 = v6;
  v101 = v9;
  if (v33)
  {
    v34 = v33;
    v35 = sub_26F49F8C8();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  v126 = v35;
  v127 = v37;
  sub_26F49DB68();
  sub_26F4769F0();
  sub_26F476A44();
  v38 = sub_26F49F838();
  (*(v28 + 8))(v32, v27);

  v40 = 0;
  v41 = *(v38 + 16);
  v42 = v38 + 24;
  v43 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
LABEL_5:
  v45 = (v42 + 32 * v40);
  while (v41 != v40)
  {
    if (v40 >= *(v38 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    ++v40;
    v46 = v45 + 4;
    v47 = v45[1];
    v48 = v45[2];
    v45 += 4;
    if ((v48 ^ v47) >= 0x4000)
    {
      v49 = *v46;
      v119 = *(v46 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      v126 = v44;
      v120 = v49;
      v121 = v42;
      if ((result & 1) == 0)
      {
        result = sub_26F4034CC(0, v44[2] + 1, 1);
        v44 = v126;
      }

      v51 = v44[2];
      v50 = v44[3];
      if (v51 >= v50 >> 1)
      {
        result = sub_26F4034CC((v50 > 1), v51 + 1, 1);
        v44 = v126;
      }

      v44[2] = v51 + 1;
      v52 = &v44[4 * v51];
      v52[4] = v47;
      v52[5] = v48;
      v53 = v120;
      v52[6] = v119;
      v52[7] = v53;
      v42 = v121;
      goto LABEL_5;
    }
  }

  v54 = v44[2];
  if (v54)
  {
    v126 = v43;
    result = sub_26F403444(0, v54, 0);
    v55 = 0;
    v118 = (v105 + 32);
    v112 = v44[2];
    v107 = (v105 + 56);
    v108 = (v105 + 48);
    v106 = (v104 + 32);
    v56 = v44 + 7;
    v57 = v101;
    v58 = v125;
    v59 = v126;
    v110 = v44;
    v111 = v17;
    v109 = v54;
    while (v112 != v55)
    {
      if (v55 >= v44[2])
      {
        goto LABEL_39;
      }

      v121 = v59;
      v60 = *(v56 - 3);
      v61 = *(v56 - 2);
      v62 = *(v56 - 1);
      v63 = *v56;

      sub_26F49D958();
      v64 = MEMORY[0x274390760](v60, v61, v62, v63);
      v119 = v65;
      v120 = v64;
      sub_26F3E718C(v115, v123);
      sub_26F3E718C(v117, v17);
      v66 = *v108;
      if ((*v108)(v17, 1, v124) == 1)
      {
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        if (v66(v17, 1, v124) != 1)
        {
          sub_26F3B6B4C(v17, &qword_2806DEFD8, &qword_26F4A3670);
        }
      }

      else
      {
        (*v118)(v57, v17, v124);
      }

      v67 = v114;
      v68 = v114[7];
      v69 = v124;
      (*v107)(v58 + v68, 1, 1, v124);
      v70 = (v58 + v67[8]);
      v72 = v67[11];
      v71 = v67[12];
      (*v106)(v125, v122, v116);
      *&v125[v67[5]] = v55;
      v73 = &v125[v67[6]];
      v74 = v119;
      *v73 = v120;
      *(v73 + 1) = v74;
      sub_26F3D27D4(v123, &v125[v68]);
      *v70 = 0;
      v70[1] = 0;
      (*v118)(&v125[v67[9]], v57, v69);

      *&v125[v67[10]] = 0;
      *&v125[v72] = 0;
      *&v125[v71] = 1;
      v58 = v125;
      v59 = v121;
      v126 = v121;
      v76 = *(v121 + 16);
      v75 = *(v121 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_26F403444(v75 > 1, v76 + 1, 1);
        v59 = v126;
      }

      ++v55;
      *(v59 + 16) = v76 + 1;
      result = sub_26F476988(v58, v59 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v76, type metadata accessor for TextModel);
      v56 += 4;
      v44 = v110;
      v17 = v111;
      if (v109 == v55)
      {

        goto LABEL_27;
      }
    }

    goto LABEL_38;
  }

  v59 = MEMORY[0x277D84F90];
LABEL_27:
  v77 = v105;
  if (!*(v59 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0118, &qword_26F4ABEF0);
    v78 = *(v113 + 72);
    v79 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_26F4A3150;
    v81 = v80 + v79;
    sub_26F49D958();
    v82 = [v100 text];
    if (v82)
    {
      v83 = v82;
      v125 = sub_26F49F8C8();
      v123 = v84;
    }

    else
    {
      v125 = 0;
      v123 = 0xE000000000000000;
    }

    v85 = v98;
    sub_26F3E718C(v115, v103);
    sub_26F3E718C(v117, v85);
    v86 = *(v77 + 48);
    if (v86(v85, 1, v124) == 1)
    {
      v87 = v99;
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      if (v86(v85, 1, v124) != 1)
      {
        sub_26F3B6B4C(v85, &qword_2806DEFD8, &qword_26F4A3670);
      }
    }

    else
    {
      v87 = v99;
      (*(v77 + 32))(v99, v85, v124);
    }

    v88 = v114;
    v89 = v114[7];
    v90 = v124;
    (*(v77 + 56))(v81 + v89, 1, 1, v124);
    v91 = (v81 + v88[8]);
    v92 = v77;
    v93 = v88[11];
    v94 = v88[12];
    (*(v104 + 32))(v81, v102, v116);
    *(v81 + v88[5]) = 0;
    v95 = (v81 + v88[6]);
    v96 = v123;
    *v95 = v125;
    v95[1] = v96;
    sub_26F3D27D4(v103, v81 + v89);
    *v91 = 0;
    v91[1] = 0;
    (*(v92 + 32))(v81 + v88[9], v87, v90);
    *(v81 + v88[10]) = 0;
    *(v81 + v93) = 0;
    *(v81 + v94) = 1;
    return v80;
  }

  return v59;
}

id _s13TranslationUI06VisualA5ModelV6models4from5group12sourceLocale06targetI0SayACGSaySo27VNRecognizedTextObservationCG_Sb10Foundation0I0VSgAPtFZ_0(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26F470A30(a1, 0x277CE2DD8);
  if (v8)
  {
    v9 = v8;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v10 = sub_26F49DCA8();
    __swift_project_value_buffer(v10, qword_280F67ED0);

    v11 = sub_26F49DC88();
    v12 = sub_26F49FDB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134349056;
      if (v9 >> 62)
      {
        v14 = sub_26F4A00A8();
      }

      else
      {
        v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v13 + 4) = v14;

      _os_log_impl(&dword_26F39E000, v11, v12, "OCR observations unwrapped %{public}ld", v13, 0xCu);
      MEMORY[0x274391F70](v13, -1, -1);
    }

    else
    {
    }

    MEMORY[0x28223BE20](v15);
    v23[16] = a2 & 1;
    v24 = a3;
    v25 = a4;
    v21 = sub_26F46C73C(MEMORY[0x277D84F90], sub_26F476AA8, v23, v9);
  }

  else
  {
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v16 = sub_26F49DCA8();
    __swift_project_value_buffer(v16, qword_280F67ED0);

    v17 = sub_26F49DC88();
    v18 = sub_26F49FDB8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      if (a1 >> 62)
      {
        v20 = sub_26F4A00A8();
      }

      else
      {
        v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v19 + 4) = v20;

      _os_log_impl(&dword_26F39E000, v17, v18, "Failed to unwrap %{public}ld OCR observations", v19, 0xCu);
      MEMORY[0x274391F70](v19, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84F90];
  }

  return v21;
}

uint64_t sub_26F475CB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26F475D10()
{
  result = qword_2806E1380;
  if (!qword_2806E1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1380);
  }

  return result;
}

unint64_t sub_26F475D64()
{
  result = qword_2806E1388;
  if (!qword_2806E1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1388);
  }

  return result;
}

unint64_t sub_26F475DB8()
{
  result = qword_2806E13A8;
  if (!qword_2806E13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E13A8);
  }

  return result;
}

unint64_t sub_26F475E0C()
{
  result = qword_2806E13B8;
  if (!qword_2806E13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E13B8);
  }

  return result;
}

uint64_t sub_26F475E60(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0AB8, &unk_26F4A8E10);
    sub_26F4749EC(a2, type metadata accessor for TextModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F475EFC()
{
  result = qword_2806E13D8;
  if (!qword_2806E13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E13D8);
  }

  return result;
}

unint64_t sub_26F475F54()
{
  result = qword_2806E13E0;
  if (!qword_2806E13E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E13E0);
  }

  return result;
}

uint64_t sub_26F476018()
{
  result = sub_26F49D968();
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

void sub_26F476144()
{
  sub_26F49D968();
  if (v0 <= 0x3F)
  {
    sub_26F49D918();
    if (v1 <= 0x3F)
    {
      sub_26F476218();
      if (v2 <= 0x3F)
      {
        sub_26F476270();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26F476218()
{
  if (!qword_280F66A00)
  {
    type metadata accessor for TextModel();
    v0 = sub_26F49FB48();
    if (!v1)
    {
      atomic_store(v0, &qword_280F66A00);
    }
  }
}

void sub_26F476270()
{
  if (!qword_280F66B90)
  {
    v0 = sub_26F49FFC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F66B90);
    }
  }
}

uint64_t getEnumTagSinglePayload for VisualTranslationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualTranslationModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F476464()
{
  result = qword_2806E13F8;
  if (!qword_2806E13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E13F8);
  }

  return result;
}

unint64_t sub_26F4764BC()
{
  result = qword_2806E1400;
  if (!qword_2806E1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1400);
  }

  return result;
}

unint64_t sub_26F476514()
{
  result = qword_2806E1408;
  if (!qword_2806E1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1408);
  }

  return result;
}

unint64_t sub_26F47656C()
{
  result = qword_2806E1410;
  if (!qword_2806E1410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1410);
  }

  return result;
}

unint64_t sub_26F4765C4()
{
  result = qword_2806E1418;
  if (!qword_2806E1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1418);
  }

  return result;
}

unint64_t sub_26F47661C()
{
  result = qword_2806E1420;
  if (!qword_2806E1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1420);
  }

  return result;
}

unint64_t sub_26F476674()
{
  result = qword_2806E1428;
  if (!qword_2806E1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1428);
  }

  return result;
}

unint64_t sub_26F4766CC()
{
  result = qword_2806E1430;
  if (!qword_2806E1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1430);
  }

  return result;
}

unint64_t sub_26F476724()
{
  result = qword_2806E1438;
  if (!qword_2806E1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1438);
  }

  return result;
}

unint64_t sub_26F47677C()
{
  result = qword_2806E1440;
  if (!qword_2806E1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1440);
  }

  return result;
}

unint64_t sub_26F4767D4()
{
  result = qword_2806E1448;
  if (!qword_2806E1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1448);
  }

  return result;
}

unint64_t sub_26F47682C()
{
  result = qword_2806E1450;
  if (!qword_2806E1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1450);
  }

  return result;
}

unint64_t sub_26F476884()
{
  result = qword_2806E1458;
  if (!qword_2806E1458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1458);
  }

  return result;
}

unint64_t sub_26F4768DC()
{
  result = qword_2806E1460;
  if (!qword_2806E1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1460);
  }

  return result;
}

unint64_t sub_26F476934()
{
  result = qword_2806E1468;
  if (!qword_2806E1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1468);
  }

  return result;
}

uint64_t sub_26F476988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26F4769F0()
{
  result = qword_280F66A10;
  if (!qword_280F66A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F66A10);
  }

  return result;
}

unint64_t sub_26F476A44()
{
  result = qword_280F66A18[0];
  if (!qword_280F66A18[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1478, &unk_26F4AB230);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F66A18);
  }

  return result;
}

uint64_t sub_26F476AC8(uint64_t a1)
{
  if (*(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26F476AF8()
{
  result = qword_2806E1480;
  if (!qword_2806E1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1480);
  }

  return result;
}

__n128 sub_26F476B60@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  CGAffineTransformMakeScale(&v24, a4, a4);
  a = v24.a;
  b = v24.b;
  c = v24.c;
  d = v24.d;
  tx = v24.tx;
  ty = v24.ty;
  CGAffineTransformMakeTranslation(&v24, (1.0 - a4) * (a2 * 0.5 + a5), (1.0 - a4) * (a3 * 0.5 + a6));
  v24.a = a;
  v24.b = b;
  v24.c = 0.0;
  v24.d = c;
  v24.tx = d;
  v24.ty = 0.0;
  v25 = tx;
  v26 = ty;
  v27 = 0x3FF0000000000000;
  sub_26F49E818();
  *(a1 + 32) = v21;
  *(a1 + 48) = v22;
  *(a1 + 64) = v23;
  result = v20;
  *a1 = v19;
  *(a1 + 16) = v20;
  return result;
}

__n128 sub_26F476C84@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_26F476B60(v7, a2, a3, *v3, v3[1], v3[2]);
  v5 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8;
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

double sub_26F476CE0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_26F476CEC(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_26F476CF8(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_26F476D24;
}

double sub_26F476D24(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t sub_26F476D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_26F47A550();

  return MEMORY[0x282130D98](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_26F476DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_26F47A550();

  return MEMORY[0x282130D80](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_26F476EA0()
{
  sub_26F47A3EC();
  sub_26F49E118();
  MEMORY[0x2743903E0](1.2, 0.7, 0.0);
  sub_26F49E128();

  sub_26F49E0F8();
  MEMORY[0x2743903E0](0.4, 1.0, 0.0);
  sub_26F49E128();

  sub_26F49E108();
  sub_26F49E0F8();
  sub_26F49F5D8();
  sub_26F49E128();

  v0 = sub_26F49E0E8();

  return v0;
}

uint64_t VisualTranslationOverlay.init(models:zoomScale:systemTranslationDismissHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v25 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  type metadata accessor for CGRect(0);
  v26 = 0u;
  v27 = 0u;
  sub_26F49F338();
  v16 = v30;
  v17 = v29;
  *(a4 + 32) = v28;
  *(a4 + 48) = v17;
  *(a4 + 64) = v16;
  v18 = type metadata accessor for VisualTranslationOverlay();
  v19 = *(v18 + 32);
  v20 = type metadata accessor for VisualTranslationModel(0);
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  sub_26F3B8DD4(v15, v12, &qword_2806E0908, &qword_26F4AB220);
  sub_26F49F338();
  sub_26F3B6B4C(v15, &qword_2806E0908, &qword_26F4AB220);
  v21 = a4 + *(v18 + 36);
  result = swift_getKeyPath();
  *v21 = result;
  *(v21 + 8) = 0;
  *a4 = a1;
  *(a4 + 8) = a5;
  v23 = v25;
  *(a4 + 16) = a2;
  *(a4 + 24) = v23;
  return result;
}

uint64_t type metadata accessor for VisualTranslationOverlay()
{
  result = qword_2806E14A8;
  if (!qword_2806E14A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F47720C()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for VisualTranslationOverlay() + 36);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_26F49FDE8();
    v8 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_26F477364@<X0>(_BYTE *a1@<X8>)
{
  sub_26F456E0C();
  result = sub_26F49E688();
  *a1 = v3;
  return result;
}

uint64_t sub_26F4773B4(char *a1)
{
  v2 = *a1;
  sub_26F456E0C();
  return sub_26F49E698();
}

uint64_t VisualTranslationOverlay.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for VisualTranslationOverlay();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_26F47A124(v2, v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualTranslationOverlay);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_26F47A18C(v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for VisualTranslationOverlay);
  v10 = *(v5 + 40);
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1490, &qword_26F4AB398) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1488, &qword_26F4AB390);
  sub_26F49F368();
  v12 = *(v2 + 64);
  v13 = *(v2 + 48);
  v26[2] = *(v2 + 32);
  v26[3] = v13;
  v27 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1498, &qword_26F4AB3A0);
  sub_26F49F348();
  v14 = type metadata accessor for SystemWidePresentation(0);
  v15 = v26[1];
  v17 = *(v2 + 16);
  v16 = *(v2 + 24);
  v18 = &v11[*(v14 + 20)];
  *v18 = v26[0];
  *(v18 + 1) = v15;
  v19 = &v11[*(v14 + 24)];
  *v19 = v17;
  v19[1] = v16;
  *a1 = sub_26F477A64;
  a1[1] = v9;
  sub_26F3ACF68(v17);
  LOBYTE(v10) = sub_26F47720C();
  KeyPath = swift_getKeyPath();
  v21 = sub_26F49F5A8();
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E14A0, &qword_26F4AB3D8);
  v25 = a1 + *(result + 36);
  *v25 = KeyPath;
  v25[8] = 0;
  v25[9] = v10 & 1;
  *(v25 + 2) = v21;
  *(v25 + 3) = v23;
  return result;
}

uint64_t sub_26F477628@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = type metadata accessor for VisualTranslationOverlay();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_26F49E178();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1508, &qword_26F4AB478);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v26 - v13);
  sub_26F49E158();
  if (v15 <= 0.0 || (sub_26F49E158(), v16 <= 0.0))
  {
    v24 = v29;
    v25 = *(v28 + 56);

    return v25(v24, 1, 1, v11);
  }

  else
  {
    *v14 = sub_26F49F578();
    v14[1] = v17;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1510, &qword_26F4AB480) + 44);
    v26[0] = *a2;
    v26[1] = v18;
    v30 = v26[0];
    (*(v8 + 16))(v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    sub_26F47A124(a2, v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualTranslationOverlay);
    v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v20 = (v9 + *(v27 + 80) + v19) & ~*(v27 + 80);
    v21 = swift_allocObject();
    (*(v8 + 32))(v21 + v19, v10, v7);
    sub_26F47A18C(v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for VisualTranslationOverlay);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1518, &qword_26F4AB488);
    sub_26F49D968();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1520, &qword_26F4AB490);
    sub_26F3B18CC(&qword_280F65700, &qword_2806E1518, &qword_26F4AB488);
    sub_26F479C8C();
    sub_26F47A3A4(qword_280F66030, type metadata accessor for VisualTranslationModel);
    sub_26F49F4C8();
    v22 = v29;
    sub_26F3BBAEC(v14, v29, &qword_2806E1508, &qword_26F4AB478);
    return (*(v28 + 56))(v22, 0, 1, v11);
  }
}

uint64_t sub_26F477A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VisualTranslationOverlay() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_26F477628(a1, v6, a2);
}

uint64_t sub_26F477AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v252 = a2;
  v242 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v241 = &v199 - v6;
  v7 = type metadata accessor for VisualTranslationModel(0);
  v239 = *(v7 - 1);
  v8 = *(v239 + 64);
  MEMORY[0x28223BE20](v7);
  v249 = v9;
  v250 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VisualTranslationOverlay();
  v237 = *(v10 - 8);
  v11 = *(v237 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v238 = v12;
  v248 = &v199 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26F49DA98();
  v201 = *(v13 - 8);
  v202 = v13;
  v14 = *(v201 + 64);
  MEMORY[0x28223BE20](v13);
  v200 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = COERCE_DOUBLE(sub_26F49DAB8());
  v246 = *(v16 - 8);
  v17 = *(v246 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v199 = &v199 - v21;
  v218 = sub_26F49E2E8();
  v216 = *(v218 - 8);
  v22 = *(v216 + 64);
  MEMORY[0x28223BE20](v218);
  *&v215 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  v24 = *(*(locked - 8) + 64);
  MEMORY[0x28223BE20](locked);
  v209 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v208 = &v199 - v27;
  v28 = type metadata accessor for TranslationOverlay(0);
  v29 = *(*(v28 - 1) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v199 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1588, &qword_26F4AB4D0);
  v32 = *(*(v211 - 8) + 64);
  MEMORY[0x28223BE20](v211);
  *&v214 = &v199 - v33;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1590, &qword_26F4AB4D8);
  v34 = *(*(v213 - 8) + 64);
  MEMORY[0x28223BE20](v213);
  v219 = &v199 - v35;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1598, &qword_26F4AB4E0);
  v36 = *(*(v217 - 8) + 64);
  MEMORY[0x28223BE20](v217);
  v226 = &v199 - v37;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15A0, &qword_26F4AB4E8);
  v38 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224);
  v227 = &v199 - v39;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15A8, &qword_26F4AB4F0);
  v40 = *(*(v225 - 8) + 64);
  MEMORY[0x28223BE20](v225);
  v222 = &v199 - v41;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15B0, &qword_26F4AB4F8);
  v42 = *(*(v220 - 8) + 64);
  MEMORY[0x28223BE20](v220);
  v223 = &v199 - v43;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1568, &qword_26F4AB4B0);
  v44 = *(*(v221 - 8) + 64);
  MEMORY[0x28223BE20](v221);
  v228 = &v199 - v45;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1558, &qword_26F4AB4A8);
  v46 = *(*(v230 - 8) + 64);
  MEMORY[0x28223BE20](v230);
  v229 = &v199 - v47;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1540, &qword_26F4AB4A0);
  v48 = *(*(v231 - 8) + 64);
  MEMORY[0x28223BE20](v231);
  v232 = &v199 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15B8, &qword_26F4AB500);
  v234 = *(v50 - 8);
  v235 = v50;
  v51 = *(v234 + 64);
  MEMORY[0x28223BE20](v50);
  v245 = &v199 - v52;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1538, &qword_26F4AB498);
  v53 = *(*(v233 - 8) + 64);
  MEMORY[0x28223BE20](v233);
  v236 = &v199 - v54;
  v55 = a1 + v7[5];
  v56 = *(v55 + 16);
  v212 = (v55 + 16);
  v57 = *(v55 + 24);
  v58 = *(v55 + 32);
  v60 = *(v55 + 40);
  v59 = *(v55 + 48);
  v62 = *(v55 + 56);
  v61 = *(v55 + 64);
  v63 = *(v55 + 72);
  sub_26F49E158();
  v251 = v64;
  v247 = v65;
  v66 = *(a1 + v7[9]);
  LODWORD(v243) = v66;
  if (v66)
  {
    v67 = v59;
  }

  else
  {
    v67 = v56;
  }

  if (v66)
  {
    v68 = v62;
  }

  else
  {
    v68 = v57;
  }

  if (!v66)
  {
    v56 = v58;
  }

  v296 = v67;
  v297 = v68;
  if (v66)
  {
    v59 = v61;
    v62 = v63;
  }

  else
  {
    v57 = v60;
  }

  if (!v66)
  {
    v58 = v61;
  }

  v69 = v67;
  v298 = v56;
  v299 = v57;
  if (!v66)
  {
    v60 = v63;
  }

  v70 = v68;
  v300 = v59;
  v301 = v62;
  v302 = v58;
  v303 = v60;
  if (sub_26F465174())
  {
    *&v71.f64[0] = v251;
    sub_26F465208(&v259, v71, v247);
    v70 = v259.f64[1];
    v69 = v259.f64[0];
    v56 = v260;
    v57 = v261;
    v59 = v262;
    v62 = v263;
    v58 = v264;
    v60 = v265;
  }

  v72 = [objc_allocWithZone(MEMORY[0x277D78578]) initWithTopLeft:v69 topRight:v70 bottomLeft:v56 bottomRight:{v57, v59, v62, v58, v60}];
  [v72 minimumBoundingRectWithoutRotation];
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;

  v81 = *(v55 + 152);
  sub_26F49E158();
  v287 = v81 / v82;
  v290 = 0;
  v288 = 0;
  v289 = 0;
  v291 = v81 / v82;
  v292 = 0;
  v293 = 0;
  v294 = 0;
  v295 = 0x3FF0000000000000;
  v273 = 1.0 / (v81 / v82);
  v276 = 0;
  v274 = 0;
  v275 = 0;
  v277 = v273;
  v278 = 0;
  v279 = 0;
  v280 = 0;
  v281 = 0x3FF0000000000000;
  CATransform3DMakeTranslation(&v253, v74, v76, 0.0);
  *&v253.m13 = *&v253.m14;
  v253.m21 = v253.m22;
  v253.m22 = v253.m24;
  *&v253.m23 = *&v253.m41;
  v253.m31 = v253.m44;
  sub_26F49E818();
  v83 = *(v55 + 128);
  v284 = *(v55 + 112);
  v285 = v83;
  v286 = *(v55 + 144);
  v84 = *(v55 + 80);
  v283 = *(v55 + 96);
  v282 = v84;
  sub_26F49E818();
  sub_26F49E818();
  v85 = sub_26F46D23C();
  v247 = *&v16;
  v240 = v19;
  if (v85)
  {
    v86 = Array<A>.targetParagraph.getter(*(a1 + v7[7]));
    v206 = v87;
    v207 = v86;
  }

  else
  {
    v206 = 0xE000000000000000;
    v207 = 0;
  }

  v244 = *(a1 + v7[7]);
  v88 = Array<A>.sourceParagraph.getter(v244);
  v204 = v89;
  v205 = v88;
  v203 = *(a1 + v7[8]);
  v90 = *(v252 + 8);
  v91 = v7[10];
  v251 = a1;
  v92 = *(a1 + v91);
  if (v92 == 3)
  {
    v93 = 1;
  }

  else
  {
    v93 = v92;
  }

  KeyPath = swift_getKeyPath();
  *&v31[v28[13]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CC8, &qword_26F4A93E8);
  swift_storeEnumTagMultiPayload();
  *&v31[v28[14]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CD0, &qword_26F4A93F0);
  swift_storeEnumTagMultiPayload();
  v95 = swift_getKeyPath();
  if (qword_2806DE7D0 != -1)
  {
    swift_once();
  }

  v96 = __swift_project_value_buffer(locked, qword_2806EA928);
  v97 = v208;
  sub_26F47A124(v96, v208, type metadata accessor for TranslationOverlay.LockedMetrics);
  *v31 = v78;
  *(v31 + 1) = v80;
  v98 = v206;
  *(v31 + 2) = v207;
  *(v31 + 3) = v98;
  v99 = v204;
  *(v31 + 4) = v205;
  *(v31 + 5) = v99;
  *(v31 + 6) = v203;
  *(v31 + 7) = v90;
  v31[64] = v243;
  v31[65] = v93;
  v100 = &v31[v28[11]];
  sub_26F49EE48();
  v101 = &v31[v28[12]];
  *v101 = KeyPath;
  v101[8] = 0;
  v102 = &v31[v28[15]];
  *v102 = v95;
  v102[8] = 0;
  v103 = v28[16];
  sub_26F47A124(v97, v209, type metadata accessor for TranslationOverlay.LockedMetrics);
  sub_26F49F338();
  sub_26F4563CC(v97);
  v104 = v28[17];
  *&v31[v104] = sub_26F49DEF8();
  v105 = swift_getKeyPath();
  v106 = v244;
  v108 = v246;
  v107 = v247;
  if (!*(v244 + 16))
  {
    goto LABEL_29;
  }

  v109 = type metadata accessor for TextModel();
  v110 = v199;
  (*(v108 + 16))(v199, v106 + *(v109 + 36) + ((*(*(v109 - 8) + 80) + 32) & ~*(*(v109 - 8) + 80)), COERCE_FLOAT64_T(*&v107));
  v111 = v200;
  sub_26F49DAA8();
  v112 = sub_26F49DA78();
  (*(v201 + 8))(v111, v202);
  (*(v108 + 8))(v110, COERCE_FLOAT64_T(*&v107));
  if (v112 == 2)
  {
    v113 = MEMORY[0x277CDFA90];
  }

  else
  {
LABEL_29:
    v113 = MEMORY[0x277CDFA88];
  }

  v115 = v215;
  v114 = v216;
  v116 = v218;
  (*(v216 + 104))(COERCE_DOUBLE(*&v215), *v113, v218);
  v117 = *&v214;
  v118 = (*&v214 + *(v211 + 36));
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3E0, &qword_26F4A82B0);
  (*(v114 + 32))(v118 + *(v119 + 28), COERCE_DOUBLE(*&v115), v116);
  *v118 = v105;
  sub_26F47A18C(v31, v117, type metadata accessor for TranslationOverlay);
  v120 = v219;
  sub_26F3BBAEC(v117, v219, &qword_2806E1588, &qword_26F4AB4D0);
  *(v120 + *(v213 + 36)) = 0;
  if (*(v55 + 8))
  {
    v122 = *(v55 + 64);
    v121 = *(v55 + 72);
    v124 = *(v55 + 48);
    v123 = *(v55 + 56);
    v126 = *(v55 + 32);
    v125 = *(v55 + 40);
    v128 = *(v55 + 16);
    v127 = *(v55 + 24);
    v129 = v243;
    if (v243)
    {
      v130 = *(v55 + 48);
    }

    else
    {
      v130 = *(v55 + 16);
    }

    v215 = v74;
    v216 = v78;
    if (v243)
    {
      v131 = v123;
    }

    else
    {
      v131 = v127;
    }

    if (v243)
    {
      v132 = v128;
    }

    else
    {
      v132 = v126;
    }

    v214 = v76;
    if (v243)
    {
      v133 = v127;
    }

    else
    {
      v133 = v125;
    }

    if (v243)
    {
      v134 = v122;
    }

    else
    {
      v134 = v124;
    }

    if (v243)
    {
      v135 = v121;
    }

    else
    {
      v135 = v123;
    }

    if (v243)
    {
      v136 = v126;
    }

    else
    {
      v136 = v122;
    }

    v218 = v80;
    if (v243)
    {
      v137 = v125;
    }

    else
    {
      v137 = v121;
    }

    v138 = objc_allocWithZone(MEMORY[0x277D78578]);
    v139 = v131;
    v140 = v132;
    v74 = v215;
    v78 = v216;
    v141 = v133;
    v76 = v214;
    v142 = v137;
    v80 = v218;
    v143 = [v138 initWithTopLeft:v130 topRight:v139 bottomLeft:v140 bottomRight:{v141, v134, v135, v136, v142}];
    [v143 averagedAngleFromBottomAndTopEdges];
    v145 = v144;
  }

  else
  {
    v145 = *v55;
    v129 = v243;
  }

  if (v129)
  {
    v146 = v145 + -1.57079633;
  }

  else
  {
    v146 = v145;
  }

  sub_26F49F668();
  v148 = v147;
  v150 = v149;
  v151 = v226;
  sub_26F3BBAEC(v120, v226, &qword_2806E1590, &qword_26F4AB4D8);
  v152 = v151 + *(v217 + 36);
  *v152 = v146;
  *(v152 + 8) = v148;
  *(v152 + 16) = v150;
  sub_26F49F5A8();
  sub_26F49E0C8();
  v153 = v227;
  sub_26F3BBAEC(v151, v227, &qword_2806E1598, &qword_26F4AB4E0);
  v154 = (v153 + *(v224 + 36));
  v155 = v267;
  *v154 = v266;
  v154[1] = v155;
  v154[2] = v268;
  v156 = sub_26F476EA0();
  v157 = v153;
  v158 = v222;
  sub_26F3BBAEC(v157, v222, &qword_2806E15A0, &qword_26F4AB4E8);
  *(v158 + *(v225 + 36)) = v156;
  v159 = v223;
  sub_26F3BBAEC(v158, v223, &qword_2806E15A8, &qword_26F4AB4F0);
  v160 = v159 + *(v220 + 36);
  v161 = v257;
  *(v160 + 32) = v256;
  *(v160 + 48) = v161;
  *(v160 + 64) = v258;
  v162 = v255;
  *v160 = v254;
  *(v160 + 16) = v162;
  v163 = v228;
  sub_26F3BBAEC(v159, v228, &qword_2806E15B0, &qword_26F4AB4F8);
  v164 = *(v221 + 52);
  v165 = sub_26F49D968();
  v166 = v251;
  (*(*(v165 - 8) + 16))(v163 + v164, v251, v165);
  v167 = v244;
  v168 = *(v244 + 16);
  v169 = v212[1];
  v269 = *v212;
  v270 = v169;
  v170 = v212[3];
  v271 = v212[2];
  v272 = v170;
  v171 = sub_26F4650B4() / 10000.0 + v168;
  v172 = v229;
  sub_26F3BBAEC(v163, v229, &qword_2806E1568, &qword_26F4AB4B0);
  *(v172 + *(v230 + 36)) = v171;
  sub_26F479EC8();
  v173 = v232;
  sub_26F49F0C8();
  sub_26F3B6B4C(v172, &qword_2806E1558, &qword_26F4AB4A8);
  v174 = v248;
  sub_26F47A124(v252, v248, type metadata accessor for VisualTranslationOverlay);
  v175 = v250;
  sub_26F47A124(v166, v250, type metadata accessor for VisualTranslationModel);
  v176 = *(v237 + 80);
  v177 = (v176 + 16) & ~v176;
  v243 = v177 + v238;
  v178 = (v177 + v238 + 7) & 0xFFFFFFFFFFFFFFF8;
  v179 = *(v239 + 80);
  v238 = ~v179;
  v239 = v176 | v179;
  v180 = swift_allocObject();
  sub_26F47A18C(v174, v180 + v177, type metadata accessor for VisualTranslationOverlay);
  v181 = (v180 + v178);
  *v181 = v74;
  v181[1] = v76;
  *(v181 + 2) = v78;
  *(v181 + 3) = v80;
  sub_26F47A18C(v175, v180 + ((v179 + v178 + 32) & ~v179), type metadata accessor for VisualTranslationModel);
  sub_26F479E0C();
  sub_26F49EF98();

  sub_26F3B6B4C(v173, &qword_2806E1540, &qword_26F4AB4A0);
  v182 = swift_getKeyPath();
  if (*(v167 + 16))
  {
    v183 = type metadata accessor for TextModel();
    v185 = v246;
    v184 = v247;
    v186 = v241;
    (*(v246 + 16))(v241, v167 + *(v183 + 36) + ((*(*(v183 - 8) + 80) + 32) & ~*(*(v183 - 8) + 80)), COERCE_FLOAT64_T(*&v247));
    (*(v185 + 56))(v186, 0, 1, COERCE_FLOAT64_T(*&v184));
    v187 = v240;
    (*(v185 + 32))(v240, v186, COERCE_FLOAT64_T(*&v184));
  }

  else
  {
    v185 = v246;
    v184 = v247;
    v188 = v241;
    (*(v246 + 56))(v241, 1, 1, COERCE_FLOAT64_T(*&v247));
    v187 = v240;
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    if ((*(v185 + 48))(v188, 1, COERCE_FLOAT64_T(*&v184)) != 1)
    {
      sub_26F3B6B4C(v188, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  v189 = v236;
  v190 = &v236[*(v233 + 36)];
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1580, &unk_26F4AB4C0);
  (*(v185 + 32))(v190 + *(v191 + 28), v187, COERCE_FLOAT64_T(*&v184));
  *v190 = v182;
  (*(v234 + 32))(v189, v245, v235);
  v192 = v248;
  sub_26F47A124(v252, v248, type metadata accessor for VisualTranslationOverlay);
  v193 = v250;
  sub_26F47A124(v251, v250, type metadata accessor for VisualTranslationModel);
  v194 = (v243 + v179) & v238;
  v195 = swift_allocObject();
  sub_26F47A18C(v192, v195 + v177, type metadata accessor for VisualTranslationOverlay);
  sub_26F47A18C(v193, v195 + v194, type metadata accessor for VisualTranslationModel);
  v196 = v242;
  sub_26F3BBAEC(v189, v242, &qword_2806E1538, &qword_26F4AB498);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1520, &qword_26F4AB490);
  v198 = (v196 + *(result + 36));
  *v198 = sub_26F47A2D8;
  v198[1] = v195;
  v198[2] = 0;
  v198[3] = 0;
  return result;
}

uint64_t sub_26F478FBC(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  v28.origin.x = a3;
  v28.origin.y = a4;
  v28.size.width = a5;
  v28.size.height = a6;
  v29 = CGRectInset(v28, -5.0, -5.0);
  v19 = *(a1 + 64);
  v20 = *(a1 + 48);
  v25 = *(a1 + 32);
  v26 = v20;
  v27 = v19;
  v24 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1498, &qword_26F4AB3A0);
  sub_26F49F358();
  sub_26F47A124(a2, v18, type metadata accessor for VisualTranslationModel);
  v21 = type metadata accessor for VisualTranslationModel(0);
  (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  v22 = *(type metadata accessor for VisualTranslationOverlay() + 32);
  sub_26F3B8DD4(v18, v15, &qword_2806E0908, &qword_26F4AB220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1488, &qword_26F4AB390);
  sub_26F49F358();
  return sub_26F3B6B4C(v18, &qword_2806E0908, &qword_26F4AB220);
}

void sub_26F4791A4(uint64_t *a1, unint64_t a2)
{
  v4 = sub_26F49D968();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15C0, &unk_26F4AB5E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1470, &qword_26F4AB228);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v38 = v16;
    v39 = a2;
    v37 = v8;
    v23 = *a1;
    if (*(*a1 + 16))
    {
      v24 = *(type metadata accessor for VisualTranslationModel(0) - 8);
      v25 = *(v5 + 16);
      v25(v22, v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v4);
      v26 = *(v5 + 56);
      v26(v22, 0, 1, v4);
    }

    else
    {
      v26 = *(v5 + 56);
      v26(v22, 1, 1, v4);
      v25 = *(v5 + 16);
    }

    v25(v19, v39, v4);
    v26(v19, 0, 1, v4);
    v27 = *(v9 + 48);
    sub_26F3B8DD4(v22, v12, &qword_2806E1470, &qword_26F4AB228);
    sub_26F3B8DD4(v19, &v12[v27], &qword_2806E1470, &qword_26F4AB228);
    v28 = *(v5 + 48);
    if (v28(v12, 1, v4) == 1)
    {
      sub_26F3B6B4C(v19, &qword_2806E1470, &qword_26F4AB228);
      sub_26F3B6B4C(v22, &qword_2806E1470, &qword_26F4AB228);
      if (v28(&v12[v27], 1, v4) == 1)
      {
        sub_26F3B6B4C(v12, &qword_2806E1470, &qword_26F4AB228);
LABEL_12:
        type metadata accessor for _BundleObject();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v34 = [objc_opt_self() bundleForClass_];
        sub_26F49D7D8();

        v35 = sub_26F49F898();

        UIAccessibilitySpeakAndDoNotBeInterrupted();

        return;
      }
    }

    else
    {
      v29 = v38;
      sub_26F3B8DD4(v12, v38, &qword_2806E1470, &qword_26F4AB228);
      if (v28(&v12[v27], 1, v4) != 1)
      {
        v30 = v37;
        (*(v5 + 32))(v37, &v12[v27], v4);
        sub_26F47A3A4(&qword_2806E1128, MEMORY[0x277CC95F0]);
        v31 = sub_26F49F868();
        v32 = *(v5 + 8);
        v32(v30, v4);
        sub_26F3B6B4C(v19, &qword_2806E1470, &qword_26F4AB228);
        sub_26F3B6B4C(v22, &qword_2806E1470, &qword_26F4AB228);
        v32(v29, v4);
        sub_26F3B6B4C(v12, &qword_2806E1470, &qword_26F4AB228);
        if ((v31 & 1) == 0)
        {
          return;
        }

        goto LABEL_12;
      }

      sub_26F3B6B4C(v19, &qword_2806E1470, &qword_26F4AB228);
      sub_26F3B6B4C(v22, &qword_2806E1470, &qword_26F4AB228);
      (*(v5 + 8))(v29, v4);
    }

    sub_26F3B6B4C(v12, &qword_2806E15C0, &unk_26F4AB5E0);
  }
}

uint64_t sub_26F479754@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F49E578();
  *a1 = result & 1;
  return result;
}

void sub_26F4797C8()
{
  sub_26F479954(319, &qword_2806E14B8, type metadata accessor for VisualTranslationModel, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26F3F1EF8(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26F479954(319, &qword_2806E14C0, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_26F3F1EF8(319, &qword_2806E14C8, &qword_2806E0908, &qword_26F4AB220, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_26F4799B8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26F479954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26F4799B8()
{
  if (!qword_2806DF870)
  {
    v0 = sub_26F49DFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2806DF870);
    }
  }
}

unint64_t sub_26F479A08()
{
  result = qword_2806E14D0;
  if (!qword_2806E14D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E14A0, &qword_26F4AB3D8);
    sub_26F479AC0();
    sub_26F3B18CC(&qword_2806E14F8, &qword_2806E1500, &qword_26F4AB470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E14D0);
  }

  return result;
}

unint64_t sub_26F479AC0()
{
  result = qword_2806E14D8;
  if (!qword_2806E14D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1490, &qword_26F4AB398);
    sub_26F3B18CC(&qword_2806E14E0, &qword_2806E14E8, &qword_26F4AB468);
    sub_26F47A3A4(&qword_2806E14F0, type metadata accessor for SystemWidePresentation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E14D8);
  }

  return result;
}

uint64_t sub_26F479BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_26F49E178() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for VisualTranslationOverlay() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_26F477AE4(a1, v9, a2);
}

unint64_t sub_26F479C8C()
{
  result = qword_2806E1528;
  if (!qword_2806E1528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1520, &qword_26F4AB490);
    sub_26F479D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1528);
  }

  return result;
}

unint64_t sub_26F479D18()
{
  result = qword_2806E1530;
  if (!qword_2806E1530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1538, &qword_26F4AB498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1540, &qword_26F4AB4A0);
    sub_26F479E0C();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806E1578, &qword_2806E1580, &unk_26F4AB4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1530);
  }

  return result;
}

unint64_t sub_26F479E0C()
{
  result = qword_2806E1548;
  if (!qword_2806E1548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1540, &qword_26F4AB4A0);
    sub_26F479EC8();
    sub_26F47A3A4(&qword_2806DF900, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1548);
  }

  return result;
}

unint64_t sub_26F479EC8()
{
  result = qword_2806E1550;
  if (!qword_2806E1550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1558, &qword_26F4AB4A8);
    sub_26F3B18CC(&qword_2806E1560, &qword_2806E1568, &qword_26F4AB4B0);
    sub_26F3B18CC(&qword_280F65730, &qword_2806E1570, &qword_26F4AB4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1550);
  }

  return result;
}

uint64_t sub_26F479FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_26F47A07C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C90, &qword_26F4AB5F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F3B8DD4(a1, &v6 - v4, &qword_2806E0C90, &qword_26F4AB5F0);
  return sub_26F49E4D8();
}

uint64_t sub_26F47A124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F47A18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F47A1F4()
{
  v1 = *(type metadata accessor for VisualTranslationOverlay() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for VisualTranslationModel(0) - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = *(v0 + v3 + 16);
  v8 = *(v0 + v3 + 24);
  v9 = v0 + ((v3 + *(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_26F478FBC(v0 + v2, v9, v5, v6, v7, v8);
}

void sub_26F47A2D8()
{
  v1 = *(type metadata accessor for VisualTranslationOverlay() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for VisualTranslationModel(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_26F4791A4((v0 + v2), v5);
}

uint64_t sub_26F47A3A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26F47A3EC()
{
  result = qword_2806E15C8;
  if (!qword_2806E15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E15C8);
  }

  return result;
}

uint64_t _s19ScaleOffsetModifierVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s19ScaleOffsetModifierVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_26F47A4A0()
{
  result = qword_2806E15D0;
  if (!qword_2806E15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E15D0);
  }

  return result;
}

unint64_t sub_26F47A4F8()
{
  result = qword_2806E15D8;
  if (!qword_2806E15D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E15D8);
  }

  return result;
}

unint64_t sub_26F47A550()
{
  result = qword_2806E15E0;
  if (!qword_2806E15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E15E0);
  }

  return result;
}

uint64_t sub_26F47A5A4(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_26F4A0528();
  v5 = *a1;
  v6 = a1[1];
  sub_26F49F9A8();
  v7 = sub_26F4A0568();
  v8 = a2 + 56;
  v9 = -1 << *(a2 + 32);
  v10 = v7 & ~v9;
  if ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = a1[2];
    v13 = *(a1 + 24);
    v14 = *(a2 + 48);
    v20 = v12 == 0;
    v15 = v12 != 0;
    v16 = v20;
    v23 = v13 & v15;
    v22 = v13 & v16;
    do
    {
      v17 = v14 + 48 * v10;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *v17 == v5 && *(v17 + 8) == v6;
      if (v20 || (sub_26F4A0458() & 1) != 0)
      {
        if (v19)
        {
          if (v18)
          {
            if (v23)
            {
              return 1;
            }
          }

          else if (v22)
          {
            return 1;
          }
        }

        else if ((v13 & 1) == 0)
        {
          return 1;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return 0;
}

uint64_t sub_26F47A700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_26F4A0528();
  sub_26F49F9A8();
  v7 = sub_26F4A0568();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_26F4A0458() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26F47A7F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_26F49D968();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_26F480E80(&qword_280F663A8, MEMORY[0x277CC95F0]), v9 = sub_26F49F818(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_26F480E80(&qword_2806E1128, MEMORY[0x277CC95F0]);
      v17 = sub_26F49F868();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t static VisualTranslationService.isOCRLocale(_:)()
{
  v0 = sub_26F49D9F8();
  v1 = [v0 languageIdentifier];

  if (!v1)
  {
    sub_26F49F8C8();
    v1 = sub_26F49F898();
  }

  v2 = [objc_opt_self() baseLanguageFromLanguage_];

  v3 = sub_26F49F8C8();
  v5 = v4;

  if (qword_280F66B48 != -1)
  {
    swift_once();
  }

  v6 = qword_280F67EB0;

  v7 = sub_26F47A700(v3, v5, v6);

  return v7 & 1;
}

void sub_26F47AB44()
{
  sub_26F3B0C24(0, &qword_280F669F0, 0x277D78560);
  v0 = [swift_getObjCClassFromMetadata() supportedRecognitionLanguages];
  v1 = sub_26F49FAF8();

  v14[2] = MEMORY[0x277D84FA0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = objc_opt_self();

      v8 = sub_26F49F898();
      v9 = [v7 baseLanguageFromLanguage_];

      v10 = sub_26F49F8C8();
      v12 = v11;

      v13 = v10 == 29281 && v12 == 0xE200000000000000;
      if (v13 || (sub_26F4A0458() & 1) != 0)
      {
      }

      else
      {
        sub_26F484E48(v14, v10, v12);
      }

      ++v3;
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

uint64_t static VisualTranslationService.isTranslatable(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F47AD90;

  return sub_26F47F388(a1);
}

uint64_t sub_26F47AD90(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t static VisualTranslationService.isTranslatable(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_26F49FC08();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = v3;

  sub_26F40570C(0, 0, v10, &unk_26F4AB730, v12);
}

uint64_t sub_26F47AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F47B06C, 0, 0);
}

uint64_t sub_26F47B06C()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v10 = v0[2];
    }

    if (sub_26F4A00A8())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[2];
    v5 = sub_26F49DAB8();
    v6 = *(*(v5 - 8) + 56);
    v6(v3, 1, 1, v5);
    v6(v2, 1, 1, v5);
    v7 = _s13TranslationUI06VisualA5ModelV6models4from5group12sourceLocale06targetI0SayACGSaySo27VNRecognizedTextObservationCG_Sb10Foundation0I0VSgAPtFZ_0(v4, 1, v3, v2);
    v0[7] = v7;
    sub_26F3B6B4C(v2, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B6B4C(v3, &qword_2806DEFD8, &qword_26F4A3670);
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_26F47B3D0;

    return sub_26F47F388(v7);
  }

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v11 = sub_26F49DCA8();
  __swift_project_value_buffer(v11, qword_280F67ED0);
  v12 = sub_26F49DC88();
  v13 = sub_26F49FDD8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    sub_26F480E2C();
    v16 = swift_allocError();
    *v17 = 0;
    v18 = sub_26F49D7E8();

    *(v14 + 4) = v18;
    *v15 = v18;
    _os_log_impl(&dword_26F39E000, v12, v13, "Visual isTranslatable: NO; reason: observation failure: %@", v14, 0xCu);
    sub_26F3B6B4C(v15, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v15, -1, -1);
    MEMORY[0x274391F70](v14, -1, -1);
  }

  sub_26F480E2C();
  v0[12] = swift_allocError();
  *v19 = 0;
  sub_26F49FBD8();
  v0[13] = sub_26F49FBC8();
  v21 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F47B7E4, v21, v20);
}

uint64_t sub_26F47B3D0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_26F47B644;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v8 = sub_26F47B520;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26F47B520()
{
  sub_26F49FBD8();
  *(v0 + 80) = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F47B5B4, v2, v1);
}

uint64_t sub_26F47B5B4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);

  v4(v2, 0);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26F47B644()
{
  v1 = *(v0 + 72);
  sub_26F49FBD8();
  v2 = v1;
  *(v0 + 88) = sub_26F49FBC8();
  v4 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F47B6E4, v4, v3);
}

uint64_t sub_26F47B6E4()
{
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[3];
  v3 = v0[4];

  v4(0, v2);

  return MEMORY[0x2822009F8](sub_26F47B774, 0, 0);
}

uint64_t sub_26F47B774()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26F47B7E4()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[3];
  v3 = v0[4];

  v4(0, v2);

  v6 = v0[5];
  v5 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26F47B93C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_26F49FC08();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = v19 + v11;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v27;
  *(v21 + 4) = a2;
  *(v21 + 5) = v22;
  (*(v10 + 32))(&v21[v19], v13, v9);
  v23 = &v21[v20];
  v24 = v29;
  *v23 = v28;
  v23[1] = v24 & 1;
  *&v21[(v20 + 9) & 0xFFFFFFFFFFFFFFF8] = a6;

  v25 = a6;
  sub_26F480F28(0, 0, v17, &unk_26F4AB7E0, v21);
}

uint64_t sub_26F47BB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 120) = a6;
  *(v8 + 128) = v39;
  *(v8 + 449) = a8;
  *(v8 + 448) = a7;
  *(v8 + 112) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220) - 8) + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  v10 = type metadata accessor for TextModel();
  *(v8 + 144) = v10;
  v11 = *(v10 - 8);
  *(v8 + 152) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB0, &qword_26F4A8DF0) - 8) + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A08, &unk_26F4A89F0);
  *(v8 + 184) = v14;
  v15 = *(v14 - 8);
  *(v8 + 192) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v17 = sub_26F49D968();
  *(v8 + 208) = v17;
  v18 = *(v17 - 8);
  *(v8 + 216) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AD0, &qword_26F4A8E58);
  *(v8 + 240) = v20;
  v21 = *(v20 - 8);
  *(v8 + 248) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AC8, &qword_26F4A8E50);
  *(v8 + 264) = v23;
  v24 = *(v23 - 8);
  *(v8 + 272) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1608, &qword_26F4AB8C0);
  *(v8 + 288) = v26;
  v27 = *(v26 - 8);
  *(v8 + 296) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v29 = *(*(type metadata accessor for Signpost() - 8) + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  v31 = sub_26F49DAB8();
  *(v8 + 328) = v31;
  v32 = *(v31 - 8);
  *(v8 + 336) = v32;
  v33 = *(v32 + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  v34 = type metadata accessor for VisualTranslationModel(0);
  *(v8 + 352) = v34;
  v35 = *(v34 - 8);
  *(v8 + 360) = v35;
  v36 = *(v35 + 64) + 15;
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F47C004, 0, 0);
}

uint64_t sub_26F47C004()
{
  v176 = v0;
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_23:
    *(v0 + 40) = &type metadata for TranslateFeatures;
    *(v0 + 48) = sub_26F3D3D60();
    *(v0 + 16) = 0;
    v32 = sub_26F49DB58();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if (v32)
    {
      if (v2)
      {
        v33 = *(v0 + 112);
        sub_26F43762C(1, 0, *(v0 + 312));
        type metadata accessor for VisualTranslationBatch();
        *(v0 + 400) = swift_initStackObject();

        *(v0 + 408) = sub_26F463CBC(v34);

        v35 = sub_26F462218();
        v36 = *(v35 + 2);
        if (v36)
        {
          v37 = *(v0 + 360);
          v38 = v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
          v170 = *(v37 + 72);
          v39 = (*(v0 + 296) + 8);
          do
          {
            v40 = *(v0 + 376);
            v41 = *(v0 + 384);
            v42 = *(v0 + 304);
            v43 = *(v0 + 288);
            v44 = *(v0 + 120);
            sub_26F480DC4(v38, v41, type metadata accessor for VisualTranslationModel);
            sub_26F480DC4(v41, v40, type metadata accessor for VisualTranslationModel);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
            sub_26F49FCC8();
            (*v39)(v42, v43);
            sub_26F480EC8(v41, type metadata accessor for VisualTranslationModel);
            v38 += v170;
            --v36;
          }

          while (v36);
        }

        v95 = *(v0 + 232);
        v96 = *(v0 + 128);
        v97 = sub_26F462B94();
        *(v0 + 416) = v97;
        v98 = [v96 logIdentifier];
        sub_26F49D948();

        v99 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
        v100 = sub_26F49D928();
        v101 = [v99 startTranslationSessionWithSELFLoggingInvocationId_];

        if (qword_280F66CB0 != -1)
        {
          swift_once();
        }

        v102 = sub_26F49DCA8();
        *(v0 + 424) = __swift_project_value_buffer(v102, qword_280F67ED0);

        v103 = sub_26F49DC88();
        v104 = sub_26F49FDB8();
        v168 = v101;
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v174 = v106;
          *v105 = 134349314;
          v107 = *(v97 + 16);
          *(v105 + 4) = v107;

          *(v105 + 12) = 2082;
          v108 = MEMORY[0x277D84F90];
          if (v107)
          {
            v149 = v106;
            v154 = v104;
            v159 = v105;
            v109 = *(v0 + 216);
            v110 = *(v0 + 152);
            v175 = MEMORY[0x277D84F90];
            sub_26F403488(0, v107, 0);
            v108 = v175;
            v111 = v97 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
            v172 = *(v110 + 72);
            do
            {
              v112 = *(v0 + 224);
              v113 = *(v0 + 208);
              v114 = *(v0 + 168);
              sub_26F480DC4(v111, v114, type metadata accessor for TextModel);
              (*(v109 + 16))(v112, v114, v113);
              sub_26F480EC8(v114, type metadata accessor for TextModel);
              v175 = v108;
              v116 = *(v108 + 16);
              v115 = *(v108 + 24);
              if (v116 >= v115 >> 1)
              {
                sub_26F403488(v115 > 1, v116 + 1, 1);
                v108 = v175;
              }

              v117 = *(v0 + 224);
              v118 = *(v0 + 208);
              *(v108 + 16) = v116 + 1;
              (*(v109 + 32))(v108 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v116, v117, v118);
              v111 += v172;
              --v107;
            }

            while (v107);
            v105 = v159;
            v104 = v154;
            v106 = v149;
          }

          v120 = MEMORY[0x274390900](v108, *(v0 + 208));
          v122 = v121;

          v123 = sub_26F3B38D0(v120, v122, &v174);

          *(v105 + 14) = v123;
          _os_log_impl(&dword_26F39E000, v103, v104, "Requested translating %{public}ld models: %{public}s", v105, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v106);
          MEMORY[0x274391F70](v106, -1, -1);
          MEMORY[0x274391F70](v105, -1, -1);

          v119 = v97;
        }

        else
        {

          v119 = v97;
        }

        v124 = *(v0 + 256);
        v173 = *(v0 + 248);
        v160 = *(v0 + 240);
        v164 = *(v0 + 280);
        v125 = *(v0 + 216);
        v150 = *(v0 + 208);
        v155 = *(v0 + 232);
        v126 = *(v0 + 192);
        v127 = *(v0 + 200);
        v145 = *(v0 + 184);
        v128 = *(v0 + 144);
        v129 = *(v0 + 449);
        v130 = *(v0 + 448);
        v131 = swift_task_alloc();
        *(v131 + 16) = v119;
        *(v131 + 24) = v130;
        *(v131 + 25) = v129 & 1;
        *(v131 + 32) = v168;
        (*(v126 + 104))(v127, *MEMORY[0x277D85778], v145);
        sub_26F49FC78();

        (*(v125 + 8))(v155, v150);
        sub_26F49FC58();
        (*(v173 + 8))(v124, v160);
        *(v0 + 432) = MEMORY[0x277D84F90];
        v132 = *(MEMORY[0x277D85798] + 4);
        v133 = swift_task_alloc();
        *(v0 + 440) = v133;
        *v133 = v0;
        v133[1] = sub_26F47CFFC;
        v134 = *(v0 + 280);
        v135 = *(v0 + 264);
        v136 = *(v0 + 176);

        return MEMORY[0x2822003E8](v136, 0, 0, v135);
      }

      if (qword_280F66CB0 != -1)
      {
        swift_once();
      }

      v77 = sub_26F49DCA8();
      __swift_project_value_buffer(v77, qword_280F67ED0);
      v78 = sub_26F49DC88();
      v79 = sub_26F49FDD8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v80 = 138412290;
        sub_26F442974();
        v82 = swift_allocError();
        *v83 = 0;
        v84 = sub_26F49D7E8();

        *(v80 + 4) = v84;
        *v81 = v84;
        _os_log_impl(&dword_26F39E000, v78, v79, "Failed to translate because models are empty: %@", v80, 0xCu);
        sub_26F3B6B4C(v81, &qword_2806DF258, &qword_26F4A6220);
        MEMORY[0x274391F70](v81, -1, -1);
        MEMORY[0x274391F70](v80, -1, -1);
      }

      sub_26F442974();
      swift_allocError();
      *v85 = 0;
    }

    else
    {
      if (qword_280F66CB0 != -1)
      {
        swift_once();
      }

      v70 = sub_26F49DCA8();
      __swift_project_value_buffer(v70, qword_280F67ED0);
      v71 = sub_26F49DC88();
      v72 = sub_26F49FDD8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        sub_26F480D70();
        v75 = swift_allocError();
        v76 = sub_26F49D7E8();

        *(v73 + 4) = v76;
        *v74 = v76;
        _os_log_impl(&dword_26F39E000, v71, v72, "Failed to translate because visual translation is disabled: %@", v73, 0xCu);
        sub_26F3B6B4C(v74, &qword_2806DF258, &qword_26F4A6220);
        MEMORY[0x274391F70](v74, -1, -1);
        MEMORY[0x274391F70](v73, -1, -1);
      }

      sub_26F480D70();
      swift_allocError();
    }

    v87 = *(v0 + 384);
    v86 = *(v0 + 392);
    v89 = *(v0 + 368);
    v88 = *(v0 + 376);
    v90 = *(v0 + 344);
    v91 = *(v0 + 312);
    v92 = *(v0 + 320);
    v93 = *(v0 + 304);
    v137 = *(v0 + 280);
    v139 = *(v0 + 256);
    v141 = *(v0 + 232);
    v144 = *(v0 + 224);
    v148 = *(v0 + 200);
    v153 = *(v0 + 176);
    v158 = *(v0 + 168);
    v163 = *(v0 + 160);
    v167 = *(v0 + 136);
    swift_willThrow();

    v69 = *(v0 + 8);
    goto LABEL_46;
  }

  v3 = 0;
  v4 = *(v0 + 392);
  v5 = *(v0 + 360);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v0 + 336);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v10 = *(*(v0 + 352) + 28);
  v146 = v6;
  v151 = (v7 + 32);
  v156 = (v7 + 8);
  v161 = (v7 + 56);
  v165 = (v7 + 48);
  v169 = *(v5 + 72);
  v140 = v8;
  v142 = v9;
  v138 = v10;
  while (1)
  {
    sub_26F480DC4(v6 + v3 * v169, *(v0 + 392), type metadata accessor for VisualTranslationModel);
    v11 = *(v4 + v10);
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    if (*(v11 + 16))
    {
      break;
    }

    (*v161)(*(v0 + 320), 1, 1, *(v0 + 328));
LABEL_4:
    sub_26F3B6B4C(*(v0 + 320), &qword_2806DEFD8, &qword_26F4A3670);
LABEL_5:
    ++v3;
    sub_26F480EC8(*(v0 + 392), type metadata accessor for VisualTranslationModel);
    if (v3 == v2)
    {
      goto LABEL_23;
    }
  }

  sub_26F3E718C(v11 + *(v8 + 28) + ((*(v9 + 80) + 32) & ~*(v9 + 80)), *(v0 + 320));
  if ((*v165)(v13, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  (*v151)(*(v0 + 344), *(v0 + 320), *(v0 + 328));
  v14 = sub_26F49D9F8();
  v15 = [v14 languageIdentifier];

  if (!v15)
  {
    sub_26F49F8C8();
    v15 = sub_26F49F898();
  }

  v16 = [objc_opt_self() baseLanguageFromLanguage_];

  v17 = sub_26F49F8C8();
  v19 = v18;

  if (qword_280F66B48 != -1)
  {
    swift_once();
  }

  v20 = qword_280F67EB0;
  if (!*(qword_280F67EB0 + 16))
  {
    goto LABEL_30;
  }

  v21 = v2;
  v22 = v4;
  v23 = *(qword_280F67EB0 + 40);
  sub_26F4A0528();

  sub_26F49F9A8();
  v24 = sub_26F4A0568();
  v25 = -1 << *(v20 + 32);
  v26 = v24 & ~v25;
  if ((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v27 = ~v25;
    while (1)
    {
      v28 = (*(v20 + 48) + 16 * v26);
      v29 = *v28 == v17 && v28[1] == v19;
      if (v29 || (sub_26F4A0458() & 1) != 0)
      {
        break;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v30 = *(v0 + 344);
    v31 = *(v0 + 328);

    (*v156)(v30, v31);
    v4 = v22;
    v2 = v21;
    v9 = v142;
    v6 = v146;
    v10 = v138;
    v8 = v140;
    goto LABEL_5;
  }

LABEL_29:

LABEL_30:
  v45 = *(v0 + 392);
  v46 = *(v0 + 344);
  v47 = *(v0 + 328);

  (*v156)(v46, v47);
  sub_26F480EC8(v45, type metadata accessor for VisualTranslationModel);
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v48 = sub_26F49DCA8();
  __swift_project_value_buffer(v48, qword_280F67ED0);
  v49 = sub_26F49DC88();
  v50 = sub_26F49FDD8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    sub_26F480E2C();
    v53 = swift_allocError();
    *v54 = 1;
    v55 = sub_26F49D7E8();

    *(v51 + 4) = v55;
    *v52 = v55;
    _os_log_impl(&dword_26F39E000, v49, v50, "Failed to translate because OCR for source locale is unsupported: %@", v51, 0xCu);
    sub_26F3B6B4C(v52, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v52, -1, -1);
    MEMORY[0x274391F70](v51, -1, -1);
  }

  v56 = *(v0 + 120);

  sub_26F480E2C();
  v57 = swift_allocError();
  *v58 = 1;
  *(v0 + 104) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  sub_26F49FCD8();
  v60 = *(v0 + 384);
  v59 = *(v0 + 392);
  v62 = *(v0 + 368);
  v61 = *(v0 + 376);
  v63 = *(v0 + 344);
  v65 = *(v0 + 312);
  v64 = *(v0 + 320);
  v66 = *(v0 + 304);
  v67 = *(v0 + 280);
  v68 = *(v0 + 256);
  v143 = *(v0 + 232);
  v147 = *(v0 + 224);
  v152 = *(v0 + 200);
  v157 = *(v0 + 176);
  v162 = *(v0 + 168);
  v166 = *(v0 + 160);
  v171 = *(v0 + 136);

  v69 = *(v0 + 8);
LABEL_46:

  return v69();
}

uint64_t sub_26F47CFFC()
{
  v1 = *(*v0 + 440);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F47D0F8, 0, 0);
}

uint64_t sub_26F47D0F8()
{
  v1 = v0[22];
  v2 = v0[18];
  if ((*(v0[19] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[54];
    v4 = v0[39];
    (*(v0[34] + 8))(v0[35], v0[33]);
    sub_26F437AD0();
    if (*(v3 + 16))
    {
      v5 = *(v0[54] + 32);
      v6 = *(v0[52] + 16);
      v7 = v5;

      v8 = *(v3 + 16);

      if (v6 == v8)
      {
        v9 = v0[53];
        v10 = v5;
        v11 = sub_26F49DC88();
        v12 = sub_26F49FDD8();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412290;
          v15 = sub_26F49D7E8();
          *(v13 + 4) = v15;
          *v14 = v15;
          _os_log_impl(&dword_26F39E000, v11, v12, "Failed to translate: %@", v13, 0xCu);
          sub_26F3B6B4C(v14, &qword_2806DF258, &qword_26F4A6220);
          MEMORY[0x274391F70](v14, -1, -1);
          MEMORY[0x274391F70](v13, -1, -1);
        }

        v16 = v0[51];
        v17 = v0[39];
        v18 = v0[15];

        v0[12] = v5;
        v19 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
        sub_26F49FCD8();

        goto LABEL_22;
      }
    }

    else
    {
      v44 = v0[52];
    }

    v45 = v0[51];
    v17 = v0[39];
    v46 = v0[15];
    v0[11] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCD8();

LABEL_22:
    sub_26F480EC8(v17, type metadata accessor for Signpost);
    v48 = v0[48];
    v47 = v0[49];
    v50 = v0[46];
    v49 = v0[47];
    v51 = v0[43];
    v53 = v0[39];
    v52 = v0[40];
    v54 = v0[38];
    v55 = v0[35];
    v56 = v0[32];
    v59 = v0[29];
    v60 = v0[28];
    v61 = v0[25];
    v62 = v0[22];
    v63 = v0[21];
    v64 = v0[20];
    v65 = v0[17];

    v57 = v0[1];

    return v57();
  }

  v20 = v0[20];
  sub_26F3BEF64(v1, v20, type metadata accessor for TextModel);
  v21 = *(v20 + *(v2 + 44));
  v22 = v0[54];
  if (v21)
  {
    v23 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v0[54];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_26F446710(0, v22[2] + 1, 1, v0[54]);
    }

    v26 = v22[2];
    v25 = v22[3];
    if (v26 >= v25 >> 1)
    {
      v22 = sub_26F446710((v25 > 1), v26 + 1, 1, v22);
    }

    v22[2] = v26 + 1;
    v22[v26 + 4] = v21;
  }

  v27 = v0[51];
  v28 = v0[44];
  v29 = v0[45];
  v30 = v0[17];
  sub_26F462D80(v0[20], v30);
  if ((*(v29 + 48))(v30, 1, v28) == 1)
  {
    v31 = v0[17];
    sub_26F480EC8(v0[20], type metadata accessor for TextModel);
    sub_26F3B6B4C(v31, &qword_2806E0908, &qword_26F4AB220);
  }

  else
  {
    v32 = v0[46];
    v33 = v0[47];
    v35 = v0[37];
    v34 = v0[38];
    v36 = v0[36];
    v37 = v0[20];
    v38 = v0[15];
    sub_26F3BEF64(v0[17], v32, type metadata accessor for VisualTranslationModel);
    sub_26F480DC4(v32, v33, type metadata accessor for VisualTranslationModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCC8();
    (*(v35 + 8))(v34, v36);
    sub_26F480EC8(v32, type metadata accessor for VisualTranslationModel);
    sub_26F480EC8(v37, type metadata accessor for TextModel);
  }

  v0[54] = v22;
  v39 = *(MEMORY[0x277D85798] + 4);
  v40 = swift_task_alloc();
  v0[55] = v40;
  *v40 = v0;
  v40[1] = sub_26F47CFFC;
  v41 = v0[35];
  v42 = v0[33];
  v43 = v0[22];

  return MEMORY[0x2822003E8](v43, 0, 0, v42);
}

uint64_t static VisualTranslationService.translate(models:strictLocales:taskHint:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26F49D968();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  sub_26F49D958();
  static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(a1, a2, &v15, a4);
  return (*(v9 + 8))(v12, v8);
}

void static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v18[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15E8, &qword_26F4AB800);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  v14 = *a3;
  v15 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
  v16 = sub_26F49D928();
  v17 = [v15 startTranslationSessionWithSELFLoggingInvocationId_];

  v18[4] = a1;
  v18[5] = v5;
  v19 = a2;
  v20 = v14;
  v21 = v17;
  type metadata accessor for VisualTranslationModel(0);
  (*(v10 + 104))(v13, *MEMORY[0x277D858A0], v9);
  sub_26F49FD08();
}

uint64_t static VisualTranslationService.translate(_:strictLocales:taskHint:)(uint64_t a1, char a2, _BYTE *a3)
{
  *(v4 + 152) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220) - 8) + 64) + 15;
  *(v4 + 32) = swift_task_alloc();
  v7 = type metadata accessor for VisualTranslationModel(0);
  *(v4 + 40) = v7;
  v8 = *(v7 - 8);
  *(v4 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F0, &qword_26F4AB750);
  *(v4 + 72) = v10;
  v11 = *(v10 - 8);
  *(v4 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F8, &unk_26F4AB8B0);
  *(v4 + 96) = v13;
  v14 = *(v13 - 8);
  *(v4 + 104) = v14;
  v15 = *(v14 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 153) = *a3;

  return MEMORY[0x2822009F8](sub_26F47DB50, 0, 0);
}

uint64_t sub_26F47DB50()
{
  v17 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 152);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v16 = *(v0 + 153);
  static VisualTranslationService.translate(models:strictLocales:taskHint:)(v7, v6, &v16, v1);
  (*(v4 + 16))(v2, v1, v3);
  sub_26F3B18CC(&qword_280F656A8, &qword_2806E15F8, &unk_26F4AB8B0);
  sub_26F49FCA8();
  *(v0 + 128) = MEMORY[0x277D84F90];
  v9 = sub_26F3B18CC(&qword_280F656B0, &qword_2806E15F0, &qword_26F4AB750);
  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_26F47DCD4;
  v12 = *(v0 + 88);
  v13 = *(v0 + 72);
  v14 = *(v0 + 32);

  return MEMORY[0x282200308](v14, v13, v9);
}

uint64_t sub_26F47DCD4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[16];
    (*(v2[10] + 8))(v2[11], v2[9]);

    v5 = sub_26F47E0E8;
  }

  else
  {
    v5 = sub_26F47DE0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26F47DE0C()
{
  v1 = v0[4];
  if ((*(v0[6] + 48))(v1, 1, v0[5]) == 1)
  {
    v3 = v0[14];
    v2 = v0[15];
    v4 = v0[12];
    v5 = v0[13];
    v6 = v0[8];
    v7 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v5 + 8))(v2, v4);
    sub_26F3B6B4C(v1, &qword_2806E0908, &qword_26F4AB220);

    v8 = v0[1];
    v9 = v0[16];

    return v8(v9);
  }

  else
  {
    v11 = v0[16];
    v13 = v0[7];
    v12 = v0[8];
    sub_26F3BEF64(v1, v12, type metadata accessor for VisualTranslationModel);
    sub_26F480DC4(v12, v13, type metadata accessor for VisualTranslationModel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v0[16];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_26F44650C(0, v15[2] + 1, 1, v0[16]);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_26F44650C(v16 > 1, v17 + 1, 1, v15);
    }

    v18 = v0[7];
    v19 = v0[6];
    sub_26F480EC8(v0[8], type metadata accessor for VisualTranslationModel);
    v15[2] = v17 + 1;
    sub_26F3BEF64(v18, v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, type metadata accessor for VisualTranslationModel);
    v0[16] = v15;
    v20 = sub_26F3B18CC(&qword_280F656B0, &qword_2806E15F0, &qword_26F4AB750);
    v21 = *(MEMORY[0x277D856D0] + 4);
    v22 = swift_task_alloc();
    v0[17] = v22;
    *v22 = v0;
    v22[1] = sub_26F47DCD4;
    v23 = v0[11];
    v24 = v0[9];
    v25 = v0[4];

    return MEMORY[0x282200308](v25, v24, v20);
  }
}

uint64_t sub_26F47E0E8()
{
  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[4];
  (*(v0[13] + 8))(v0[15], v0[12]);

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t static VisualTranslationService.translate(_:sourceLocale:targetLocale:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[0] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v28 - v18;
  v20 = sub_26F49FC08();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_26F3E718C(a2, v15);
  sub_26F3E718C(a3, v12);
  v21 = *(v10 + 80);
  v22 = (v21 + 40) & ~v21;
  v23 = (v11 + v21 + v22) & ~v21;
  v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a1;
  sub_26F3FA30C(v15, v25 + v22);
  sub_26F3FA30C(v12, v25 + v23);
  v26 = (v25 + v24);
  *v26 = v28[0];
  v26[1] = a5;
  *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v28[1];

  sub_26F40570C(0, 0, v19, &unk_26F4AB760, v25);
}

uint64_t sub_26F47E3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v17;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_26F49D968();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = type metadata accessor for VisualTranslationModel(0);
  v8[13] = v12;
  v13 = *(v12 - 8);
  v8[14] = v13;
  v14 = *(v13 + 64) + 15;
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F47E53C, 0, 0);
}

uint64_t sub_26F47E53C()
{
  v1 = _s13TranslationUI06VisualA5ModelV6models4from5group12sourceLocale06targetI0SayACGSaySo27VNRecognizedTextObservationCG_Sb10Foundation0I0VSgAPtFZ_0(*(v0 + 32), 1, *(v0 + 40), *(v0 + 48));
  *(v0 + 144) = v1;
  *(v0 + 200) = 1;
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26F47E604;
  v3 = *(v0 + 72);

  return static VisualTranslationService.translate(_:strictLocales:taskHint:)(v1, 0, (v0 + 200));
}

uint64_t sub_26F47E604(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v8 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = v3[18];

    v6 = sub_26F47EDA4;
  }

  else
  {
    v6 = sub_26F47E720;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F47E720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 160);
  v62 = *(v4 + 16);
  if (v62)
  {
    v5 = 0;
    v60 = *(v3 + 104);
    v61 = *(v3 + 112);
    v6 = *(v3 + 88);
    v59 = v4 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v63 = (v6 + 16);
    v56 = v6;
    v58 = (v6 + 8);
    v7 = MEMORY[0x277D84F98];
    v57 = *(v3 + 160);
    do
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return MEMORY[0x2822009F8](v4, a2, a3);
      }

      v10 = *(v3 + 136);
      v11 = *(v3 + 120);
      v12 = *(v3 + 96);
      v13 = *(v3 + 80);
      sub_26F480DC4(v59 + *(v61 + 72) * v5, v10, type metadata accessor for VisualTranslationModel);
      v14 = *v63;
      (*v63)(v12, v10, v13);
      sub_26F480DC4(v10, v11, type metadata accessor for VisualTranslationModel);
      v15 = type metadata accessor for VisualTranslationResult(0);
      v16 = objc_allocWithZone(v15);
      v14(&v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_uuid], v11, v13);
      v17 = Array<A>.targetParagraph.getter(*(v11 + *(v60 + 28)));
      v18 = &v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_string];
      *v18 = v17;
      v18[1] = v19;
      v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_isPassthrough] = sub_26F46DC20() & 1;
      v20 = (v11 + *(v60 + 20));
      *&v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topLeft] = v20[1];
      *&v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topRight] = v20[2];
      *&v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomLeft] = v20[3];
      *&v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomRight] = v20[4];
      *(v3 + 16) = v16;
      *(v3 + 24) = v15;
      v21 = objc_msgSendSuper2((v3 + 16), sel_init);
      sub_26F480EC8(v11, type metadata accessor for VisualTranslationModel);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v7;
      v4 = sub_26F45FF48(v12);
      v23 = v7[2];
      v24 = (a2 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_36;
      }

      v27 = a2;
      if (v7[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v4;
          sub_26F3C7AF8();
          v4 = v36;
          v7 = v64;
        }
      }

      else
      {
        v28 = *(v3 + 96);
        sub_26F3C67B4(v26, isUniquelyReferenced_nonNull_native);
        v4 = sub_26F45FF48(v28);
        if ((v27 & 1) != (v29 & 1))
        {
          v54 = *(v3 + 80);

          return sub_26F4A04A8();
        }
      }

      v30 = *(v3 + 136);
      v31 = *(v3 + 96);
      v32 = *(v3 + 80);
      if (v27)
      {
        v8 = v7[7];
        v9 = *(v8 + 8 * v4);
        *(v8 + 8 * v4) = v21;

        (*v58)(v31, v32);
        sub_26F480EC8(v30, type metadata accessor for VisualTranslationModel);
      }

      else
      {
        v7[(v4 >> 6) + 8] |= 1 << v4;
        v33 = v4;
        v14(v7[6] + *(v56 + 72) * v4, v31, v32);
        *(v7[7] + 8 * v33) = v21;
        (*(v56 + 8))(v31, v32);
        v4 = sub_26F480EC8(v30, type metadata accessor for VisualTranslationModel);
        v34 = v7[2];
        v25 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v25)
        {
          goto LABEL_37;
        }

        v7[2] = v35;
      }

      ++v5;
      v4 = v57;
    }

    while (v62 != v5);
    v37 = *(v3 + 160);
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v38 = *(v3 + 144);

  v65 = MEMORY[0x277D84F90];
  v39 = *(v38 + 16);
  if (!v39)
  {

    v43 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v40 = *(v3 + 112);
  v41 = *(v3 + 144) + ((*(v40 + 80) + 32) & ~*(v40 + 80));
  v42 = *(v40 + 72);
  v43 = MEMORY[0x277D84F90];
  do
  {
    sub_26F480DC4(v41, *(v3 + 128), type metadata accessor for VisualTranslationModel);
    v44 = *(v3 + 128);
    if (!v7[2])
    {
      goto LABEL_20;
    }

    v45 = sub_26F45FF48(v44);
    if ((v46 & 1) == 0)
    {
      v44 = *(v3 + 128);
LABEL_20:
      sub_26F480EC8(v44, type metadata accessor for VisualTranslationModel);
      goto LABEL_21;
    }

    v47 = *(v7[7] + 8 * v45);
    MEMORY[0x2743908C0]();
    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v49 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26F49FB18();
    }

    v48 = *(v3 + 128);
    sub_26F49FB38();

    sub_26F480EC8(v48, type metadata accessor for VisualTranslationModel);
    v43 = v65;
LABEL_21:
    v41 += v42;
    --v39;
  }

  while (v39);
  v50 = *(v3 + 144);

LABEL_29:
  *(v3 + 176) = v43;
  sub_26F49FBD8();
  *(v3 + 184) = sub_26F49FBC8();
  v51 = sub_26F49FB68();
  v53 = v52;
  v4 = sub_26F47ECF8;
  a2 = v51;
  a3 = v53;

  return MEMORY[0x2822009F8](v4, a2, a3);
}

uint64_t sub_26F47ECF8()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[7];
  v3 = v0[8];

  v4(v2, 0);

  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v8 = v0[12];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26F47EDA4()
{
  v1 = *(v0 + 168);
  sub_26F49FBD8();
  v2 = v1;
  *(v0 + 192) = sub_26F49FBC8();
  v4 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F47EE44, v4, v3);
}

uint64_t sub_26F47EE44()
{
  v1 = v0[24];
  v2 = v0[21];
  v4 = v0[7];
  v3 = v0[8];

  v4(MEMORY[0x277D84F90], v2);

  return MEMORY[0x2822009F8](sub_26F47EED8, 0, 0);
}

uint64_t sub_26F47EED8()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);

  v5 = *(v0 + 8);

  return v5();
}

void sub_26F47F1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VisualTranslationResult(0);
  v5 = sub_26F49FAD8();
  if (a2)
  {
    v6 = sub_26F49D7E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id VisualTranslationService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisualTranslationService.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VisualTranslationService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F47F348@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_26F49DD48();
  *a1 = result;
  return result;
}

uint64_t sub_26F47F388(uint64_t a1)
{
  v1[19] = a1;
  v2 = type metadata accessor for LocalePair();
  v1[20] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v4 = type metadata accessor for VisualTranslationModel(0);
  v1[22] = v4;
  v5 = *(v4 - 8);
  v1[23] = v5;
  v6 = *(v5 + 64) + 15;
  v1[24] = swift_task_alloc();
  v7 = *(*(type metadata accessor for Signpost() - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v9 = sub_26F49DAB8();
  v1[27] = v9;
  v10 = *(v9 - 8);
  v1[28] = v10;
  v11 = *(v10 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F47F568, 0, 0);
}

uint64_t sub_26F47F568()
{
  v0[5] = &type metadata for TranslateFeatures;
  v1 = sub_26F3D3D60();
  *(v0 + 16) = 0;
  v0[6] = v1;
  v2 = sub_26F49DB58();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if ((v2 & 1) == 0)
  {
    if (qword_280F66CB0 != -1)
    {
LABEL_43:
      swift_once();
    }

    v17 = sub_26F49DCA8();
    __swift_project_value_buffer(v17, qword_280F67ED0);
    v18 = sub_26F49DC88();
    v19 = sub_26F49FDD8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26F480D70();
      v22 = swift_allocError();
      v23 = sub_26F49D7E8();

      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26F39E000, v18, v19, "Visual isTranslatable: NO; reason: visualTranslation is disabled: %@", v20, 0xCu);
      sub_26F3B6B4C(v21, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v21, -1, -1);
      MEMORY[0x274391F70](v20, -1, -1);
    }

    sub_26F480D70();
    swift_allocError();
    goto LABEL_18;
  }

  v3 = v0[19];
  v4 = *(v3 + 16);
  v0[34] = v4;
  if (!v4)
  {
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v24 = sub_26F49DCA8();
    __swift_project_value_buffer(v24, qword_280F67ED0);
    v25 = sub_26F49DC88();
    v26 = sub_26F49FDD8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      sub_26F442974();
      v29 = swift_allocError();
      *v30 = 0;
      v31 = sub_26F49D7E8();

      *(v27 + 4) = v31;
      *v28 = v31;
      _os_log_impl(&dword_26F39E000, v25, v26, "Visual isTranslatable: NO; reason: the request was empty: %@", v27, 0xCu);
      sub_26F3B6B4C(v28, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v28, -1, -1);
      MEMORY[0x274391F70](v27, -1, -1);
    }

    sub_26F442974();
    swift_allocError();
    *v32 = 0;
    goto LABEL_18;
  }

  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];
  sub_26F474520(v3, v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_26F3B6B4C(v0[26], &qword_2806DEFD8, &qword_26F4A3670);
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v8 = sub_26F49DCA8();
    __swift_project_value_buffer(v8, qword_280F67ED0);
    v9 = sub_26F49DC88();
    v10 = sub_26F49FDD8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      sub_26F442974();
      v13 = swift_allocError();
      *v14 = 7;
      v15 = sub_26F49D7E8();

      *(v11 + 4) = v15;
      *v12 = v15;
      _os_log_impl(&dword_26F39E000, v9, v10, "Visual isTranslatable: NO; there's no targetLocale set: %@", v11, 0xCu);
      sub_26F3B6B4C(v12, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v12, -1, -1);
      MEMORY[0x274391F70](v11, -1, -1);
    }

    sub_26F442974();
    swift_allocError();
    *v16 = 7;
LABEL_18:
    v34 = v0[32];
    v33 = v0[33];
    v36 = v0[30];
    v35 = v0[31];
    v37 = v0[29];
    v39 = v0[25];
    v38 = v0[26];
    v40 = v0[24];
    v70 = v0[21];
    swift_willThrow();

    v41 = v0[1];

    return v41(0);
  }

  v43 = v0[25];
  v44 = v0[23];
  v71 = v0[24];
  v45 = v0[22];
  v46 = v0[19];
  (*(v0[28] + 32))(v0[33], v0[26], v0[27]);
  sub_26F43762C(0, 0, v43);
  v47 = *(v45 + 28);
  v48 = v46 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
  v49 = *(v44 + 72);
  v50 = MEMORY[0x277D84F90];
  do
  {
    v51 = v0[24];
    sub_26F480DC4(v48, v51, type metadata accessor for VisualTranslationModel);
    v52 = *(v71 + v47);

    sub_26F480EC8(v51, type metadata accessor for VisualTranslationModel);
    v53 = *(v52 + 16);
    v54 = v50[2];
    v55 = v54 + v53;
    if (__OFADD__(v54, v53))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v55 > v50[3] >> 1)
    {
      if (v54 <= v55)
      {
        v57 = v54 + v53;
      }

      else
      {
        v57 = v54;
      }

      v50 = sub_26F4464E4(isUniquelyReferenced_nonNull_native, v57, 1, v50);
    }

    v0[38] = v50;
    if (*(v52 + 16))
    {
      v58 = (v50[3] >> 1) - v50[2];
      v59 = *(type metadata accessor for TextModel() - 8);
      if (v58 < v53)
      {
        goto LABEL_41;
      }

      v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v61 = *(v59 + 72);
      swift_arrayInitWithCopy();

      if (v53)
      {
        v62 = v50[2];
        v63 = __OFADD__(v62, v53);
        v64 = v62 + v53;
        if (v63)
        {
          goto LABEL_42;
        }

        v50[2] = v64;
      }
    }

    else
    {

      if (v53)
      {
        goto LABEL_40;
      }
    }

    v48 += v49;
    --v4;
  }

  while (v4);
  v65 = swift_task_alloc();
  v0[35] = v65;
  *(v65 + 16) = v50;
  v66 = *(MEMORY[0x277D85A40] + 4);
  v67 = swift_task_alloc();
  v0[36] = v67;
  *v67 = v0;
  v67[1] = sub_26F47FD60;
  v68 = v0[32];
  v69 = v0[27];

  return MEMORY[0x2822008A0](v68, 0, 0, 0x796669746E656469, 0xEC000000293A5F28, sub_26F442B90, v65, v69);
}

uint64_t sub_26F47FD60()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v8 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = sub_26F480718;
  }

  else
  {
    v5 = *(v2 + 304);
    v6 = *(v2 + 280);

    v4 = sub_26F47FE88;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26F47FE88()
{
  v95 = v0;
  v1 = v0[32];
  v2 = sub_26F49D9F8();
  v3 = [v2 languageIdentifier];

  if (!v3)
  {
    sub_26F49F8C8();
    v3 = sub_26F49F898();
  }

  v4 = [objc_opt_self() baseLanguageFromLanguage_];

  v5 = sub_26F49F8C8();
  v7 = v6;

  if (qword_280F66B48 != -1)
  {
    swift_once();
  }

  v8 = qword_280F67EB0;

  v9 = sub_26F47A700(v5, v7, v8);

  if (v9)
  {
    v10 = v0[33];
    v11 = v0[27];
    v13 = v0[20];
    v12 = v0[21];
    v14 = *(v0[28] + 16);
    v14(v12, v0[32], v11);
    v14(v12 + *(v13 + 20), v10, v11);
    v92 = _s13TranslationUI22LanguagesStatusServiceO25languagePairIsPassthroughySbAA06LocaleG0VFZ_0(v12) ^ 1;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v15 = v0[32];
    v16 = v0[33];
    v18 = v0[30];
    v17 = v0[31];
    v19 = v0[27];
    v20 = v0[19];
    v21 = sub_26F49DCA8();
    __swift_project_value_buffer(v21, qword_280F67ED0);
    v14(v17, v15, v19);
    v14(v18, v16, v19);

    v22 = sub_26F49DC88();
    v23 = sub_26F49FDB8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[34];
      v25 = v0[31];
      v26 = v0[28];
      v83 = v0[27];
      v84 = v0[30];
      v87 = v0[21];
      v89 = v0[32];
      v86 = v23;
      v27 = v0[19];
      v28 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v94 = v85;
      *v28 = 67240962;
      *(v28 + 4) = v92 & 1;
      *(v28 + 8) = 2050;
      *(v28 + 10) = v24;

      *(v28 + 18) = 2082;
      v0[7] = sub_26F49D988();
      v0[8] = v29;
      v0[9] = 45;
      v0[10] = 0xE100000000000000;
      v0[11] = 95;
      v0[12] = 0xE100000000000000;
      sub_26F3BDC0C();
      v30 = sub_26F49FFF8();
      v32 = v31;
      v82 = *(v26 + 8);
      v82(v25, v83);

      v33 = sub_26F3B38D0(v30, v32, &v94);

      *(v28 + 20) = v33;
      *(v28 + 28) = 2082;
      v0[13] = sub_26F49D988();
      v0[14] = v34;
      v0[15] = 45;
      v0[16] = 0xE100000000000000;
      v0[17] = 95;
      v0[18] = 0xE100000000000000;
      v35 = sub_26F49FFF8();
      v37 = v36;
      v82(v84, v83);

      v38 = sub_26F3B38D0(v35, v37, &v94);

      *(v28 + 30) = v38;
      _os_log_impl(&dword_26F39E000, v22, v86, "Visual isTranslatable: %{BOOL,public}d samples: %{public}ld source: %{public}s target: %{public}s", v28, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x274391F70](v85, -1, -1);
      MEMORY[0x274391F70](v28, -1, -1);

      sub_26F480EC8(v87, type metadata accessor for LocalePair);
      v82(v89, v83);
    }

    else
    {
      v63 = v0[31];
      v62 = v0[32];
      v64 = v0[30];
      v65 = v0[27];
      v66 = v0[28];
      v67 = v0[21];
      v68 = v0[19];

      v69 = *(v66 + 8);
      v69(v64, v65);
      v69(v63, v65);
      sub_26F480EC8(v67, type metadata accessor for LocalePair);
      v69(v62, v65);
    }
  }

  else
  {
    v39 = qword_280F66CB0;

    if (v39 != -1)
    {
      swift_once();
    }

    v40 = v0[32];
    v42 = v0[28];
    v41 = v0[29];
    v43 = v0[27];
    v44 = sub_26F49DCA8();
    __swift_project_value_buffer(v44, qword_280F67ED0);
    (*(v42 + 16))(v41, v40, v43);

    v45 = sub_26F49DC88();
    v46 = sub_26F49FDB8();

    v47 = os_log_type_enabled(v45, v46);
    v48 = v0[32];
    v50 = v0[28];
    v49 = v0[29];
    v51 = v0[27];
    if (v47)
    {
      v52 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = v93;
      *v52 = 136446466;
      sub_26F480E80(&unk_280F66398, MEMORY[0x277CC9788]);
      v53 = sub_26F4A0428();
      v90 = v48;
      v55 = v54;
      v56 = *(v50 + 8);
      v56(v49, v51);
      v57 = sub_26F3B38D0(v53, v55, &v94);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2082;
      v58 = sub_26F49FD48();
      v60 = v59;

      v61 = sub_26F3B38D0(v58, v60, &v94);

      *(v52 + 14) = v61;
      _os_log_impl(&dword_26F39E000, v45, v46, "Visual isTranslatable: NO; locale %{public}s not supported by VK OCR set %{public}s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x274391F70](v93, -1, -1);
      MEMORY[0x274391F70](v52, -1, -1);

      v56(v90, v51);
    }

    else
    {

      v70 = *(v50 + 8);
      v70(v49, v51);
      v70(v48, v51);
    }

    LOBYTE(v92) = 0;
  }

  v72 = v0[32];
  v71 = v0[33];
  v74 = v0[30];
  v73 = v0[31];
  v76 = v0[28];
  v75 = v0[29];
  v78 = v0[26];
  v77 = v0[27];
  v79 = v0[25];
  v88 = v0[24];
  v91 = v0[21];
  sub_26F437AD0();
  sub_26F480EC8(v79, type metadata accessor for Signpost);
  (*(v76 + 8))(v71, v77);

  v80 = v0[1];

  return v80(v92 & 1);
}

uint64_t sub_26F480718()
{
  v1 = v0[38];
  v2 = v0[35];

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v3 = v0[37];
  v4 = sub_26F49DCA8();
  __swift_project_value_buffer(v4, qword_280F67ED0);
  v5 = v3;
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDD8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[37];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = sub_26F49D7E8();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_26F39E000, v6, v7, "Visual isTranslatable: NO; not offering translation: %@", v10, 0xCu);
    sub_26F3B6B4C(v11, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v11, -1, -1);
    MEMORY[0x274391F70](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[30];
  v15 = v0[31];
  v18 = v0[28];
  v17 = v0[29];
  v20 = v0[26];
  v19 = v0[27];
  v21 = v0[25];
  v24 = v0[24];
  v25 = v0[21];
  sub_26F437AD0();
  sub_26F480EC8(v21, type metadata accessor for Signpost);
  (*(v18 + 8))(v13, v19);

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_26F48097C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26F3CEEAC;

  return sub_26F47AFC0(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_26F480A64(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = (v1 + v9);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v1 + v10);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_26F3CF3AC;

  return sub_26F47E3F8(a1, v11, v12, v13, v1 + v6, v1 + v8, v15, v16);
}

uint64_t sub_26F480C0C(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = (v6 + 9) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1 + v6;
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_26F3CEEAC;

  return sub_26F47BB6C(a1, v8, v9, v10, v11, v1 + v5, v13, v14);
}

unint64_t sub_26F480D70()
{
  result = qword_2806E1610;
  if (!qword_2806E1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1610);
  }

  return result;
}

uint64_t sub_26F480DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26F480E2C()
{
  result = qword_280F66CB8;
  if (!qword_280F66CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F66CB8);
  }

  return result;
}
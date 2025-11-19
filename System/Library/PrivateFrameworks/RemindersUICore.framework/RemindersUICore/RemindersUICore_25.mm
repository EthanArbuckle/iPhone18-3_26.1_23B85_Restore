id sub_21D31842C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21DC09CF0;
  *(v4 + 32) = v3;
  v5 = type metadata accessor for TTRRemindersListChangeItemAttributeEditorProvider();
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = v4;
  v7 = type metadata accessor for TTRRemindersListAttributeEditor();
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0;
  v8 = swift_allocObject();
  v8[5] = v5;
  v8[6] = &protocol witness table for TTRRemindersListChangeItemAttributeEditorProvider;
  v8[2] = v6;
  a2[3] = v7;
  a2[4] = &protocol witness table for TTRRemindersListAttributeEditor;
  *a2 = v8;
  return v3;
}

void sub_21D31850C(void (*a1)(id *))
{
  v2 = objc_opt_self();
  v3 = sub_21DBFA12C();
  v4 = [v2 internalErrorWithDebugDescription_];

  v5 = v4;
  v6 = 1;
  a1(&v5);
}

uint64_t sub_21D3185CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7C0);
  swift_allocObject();
  return sub_21DBF911C();
}

uint64_t sub_21D318638(uint64_t a1, char a2)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277CD46E0]) init];
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = v9 + v6;
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v9, v7, v4);
  *(v11 + v10) = a2;
  *(v11 + (v10 & 0xFFFFFFFFFFFFFFF8) + 8) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7C0);
  swift_allocObject();
  return sub_21DBF911C();
}

uint64_t TTRURLMetadataInteractor.__allocating_init()()
{
  type metadata accessor for TTRLPLinkMetadataProvider();
  v0 = swift_allocObject();
  v1 = swift_allocObject();

  return sub_21D319C40(v0, 0, 0, v1);
}

void TTRURLMetadataInteractor.metadata(for:savingIfNeededWith:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7B0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  sub_21D319E94(a2, &v20);
  v18 = a1;
  v19 = 1;
  if (*(v4 + 16))
  {
    v12 = a1;

    sub_21DBF6B4C();

    (*(v9 + 16))(v11, a3, v8);
    v13 = (*(v9 + 88))(v11, v8);
    if (v13 == *MEMORY[0x277D450E0])
    {
      goto LABEL_6;
    }

    if (v13 == *MEMORY[0x277D450E8])
    {
      (*(v9 + 96))(v11, v8);
      v14 = *v11;
      sub_21D318ABC(*v11, &v18, 1);

      sub_21D319FD8(&v18);
      return;
    }

    if (v13 == *MEMORY[0x277D450D8])
    {
LABEL_6:
      sub_21D319FD8(&v18);
      (*(v9 + 8))(v11, v8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  if (qword_280D0F278 != -1)
  {
    swift_once();
  }

  v15 = sub_21DBF84BC();
  __swift_project_value_buffer(v15, qword_280D0F280);
  v16 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v16);
  sub_21DAEAB00("Unknown operation state", 23, 2);
  __break(1u);
}

uint64_t sub_21D318ABC(void *a1, id *a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7C8);
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v34 - v10;
  v12 = *a2;
  v13 = [*a2 metadata];
  if (v13)
  {
    v14 = v13;
    v15 = sub_21DBF551C();
    v17 = v16;

    return sub_21D17B8A8(v15, v17);
  }

  else
  {
    sub_21D319E94((a2 + 2), &v38);
    if (v39[1])
    {
      v36 = v3;
      sub_21D0D0FD0(&v38, v40);
      if (qword_280D0F278 != -1)
      {
        swift_once();
      }

      v19 = sub_21DBF84BC();
      __swift_project_value_buffer(v19, qword_280D0F280);
      sub_21D31A7B0(a2, &v38);
      v20 = sub_21DBF84AC();
      v21 = sub_21DBFAE9C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v34 = a1;
        v24 = v23;
        v35 = swift_slowAlloc();
        v37 = v35;
        *v22 = 138412546;
        v25 = [v38 objectID];
        sub_21D319FD8(&v38);
        *(v22 + 4) = v25;
        *v24 = v25;
        *(v22 + 12) = 2080;
        if (a3)
        {
          v26 = 1702195828;
        }

        else
        {
          v26 = 0x65736C6166;
        }

        if (a3)
        {
          v27 = 0xE400000000000000;
        }

        else
        {
          v27 = 0xE500000000000000;
        }

        v28 = sub_21D0CDFB4(v26, v27, &v37);

        *(v22 + 14) = v28;
        _os_log_impl(&dword_21D0C9000, v20, v21, "TTRURLMetadataInteractor: saving metadata {attachmentID: %@, isResave: %s}", v22, 0x16u);
        v29 = v24;
        a1 = v34;
        sub_21D0CF7E0(v29, &unk_27CE60070);
        MEMORY[0x223D46520](v29, -1, -1);
        v30 = v35;
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x223D46520](v30, -1, -1);
        MEMORY[0x223D46520](v22, -1, -1);
      }

      else
      {

        sub_21D319FD8(&v38);
      }

      v31 = v36;
      result = sub_21D0D32E4(v40, v39);
      *&v38 = a1;
      *(&v38 + 1) = v12;
      if (*(v31 + 24))
      {
        v32 = v12;
        v33 = a1;

        sub_21DBF6B4C();

        (*(v8 + 8))(v11, v7);
        sub_21D31A7E8(&v38);
        return __swift_destroy_boxed_opaque_existential_0(v40);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return sub_21D0CF7E0(&v38, &qword_27CE5A7B8);
    }
  }

  return result;
}

uint64_t sub_21D318E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_21D318F7C(a1, a3);

    return v5;
  }

  else
  {
    v7 = sub_21DBF5F5C();
    sub_21D31A8A0();
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D44D48], v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7F0);
    swift_allocObject();
    return sub_21DBF823C();
  }
}

uint64_t sub_21D318F7C(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A800);
  v12 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A808);
  v16 = *(v15 - 8);
  v43 = v15;
  v44 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A810);
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = &v39 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A818);
  v21 = *(v20 - 8);
  v48 = v20;
  v49 = v21;
  MEMORY[0x28223BE20](v20);
  v45 = &v39 - v22;
  LOBYTE(v52) = 1;
  sub_21DBF90EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  sub_21DBF90DC();
  (*(v9 + 8))(v11, v8);
  sub_21D31A7B0(a1, &v52);
  sub_21D0D32E4(a2, v51);
  v23 = swift_allocObject();
  v24 = v53;
  *(v23 + 16) = v52;
  *(v23 + 32) = v24;
  *(v23 + 48) = v54;
  *(v23 + 64) = v55;
  sub_21D0D0FD0(v51, v23 + 72);
  *(v23 + 112) = v5;
  sub_21DBF8FFC();
  sub_21D0D8CF0(0, &qword_280D17838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A820);
  sub_21D0D0F1C(&qword_280D17630, &qword_27CE5A800);
  sub_21D0D0F1C(&qword_280D17988, &qword_27CE5A820);
  v25 = v40;
  sub_21DBF934C();

  (*(v12 + 8))(v14, v25);
  sub_21D0D8CF0(0, &qword_280D1B900);
  v26 = sub_21DBFB12C();
  *&v52 = v26;
  v27 = sub_21DBFB0DC();
  v28 = v46;
  (*(*(v27 - 8) + 56))(v46, 1, 1, v27);
  sub_21D0D0F1C(&qword_280D179D0, &qword_27CE5A808);
  sub_21D0D65DC(&qword_280D17800, &qword_280D1B900);
  v29 = v42;
  v30 = v43;
  sub_21DBF936C();
  sub_21D0CF7E0(v28, &unk_27CE5F250);

  (*(v44 + 8))(v18, v30);
  v31 = swift_allocObject();
  swift_weakInit();
  sub_21D31A7B0(v41, &v52);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  v33 = v53;
  *(v32 + 24) = v52;
  *(v32 + 40) = v33;
  *(v32 + 56) = v54;
  *(v32 + 72) = v55;
  sub_21D0D0F1C(&qword_280D17998, &qword_27CE5A810);
  v34 = v45;
  v35 = v47;
  sub_21DBF927C();

  (*(v50 + 8))(v29, v35);
  sub_21D0D0F1C(&qword_280D179F0, &qword_27CE5A818);
  v36 = v48;
  v37 = sub_21DBF91CC();
  (*(v49 + 8))(v34, v36);
  return v37;
}

uint64_t sub_21D319728@<X0>(uint64_t a1@<X8>)
{
  sub_21D31A84C();
  result = swift_allocError();
  *v3 = 0;
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

id sub_21D319774@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 8) objectID];
  *a1 = result;
  return result;
}

uint64_t sub_21D3197B0@<X0>(id *a1@<X1>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = [*a1 metadata];
  if (v6)
  {
    v7 = v6;
    v8 = sub_21DBF551C();
    v10 = v9;

    if (qword_280D0F278 != -1)
    {
      swift_once();
    }

    v11 = sub_21DBF84BC();
    __swift_project_value_buffer(v11, qword_280D0F280);
    sub_21D31A7B0(a1, v25);
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAE9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = [v25[0] objectID];
      sub_21D319FD8(v25);
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_21D0C9000, v12, v13, "TTRURLMetadataInteractor: found metadata {attachmentID: %@}", v14, 0xCu);
      sub_21D0CF7E0(v15, &unk_27CE60070);
      MEMORY[0x223D46520](v15, -1, -1);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    else
    {

      sub_21D319FD8(v25);
    }

    v23 = sub_21D31A914(v8, v10);
    result = sub_21D17B8A8(v8, v10);
  }

  else
  {
    if (qword_280D0F278 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF84BC();
    __swift_project_value_buffer(v17, qword_280D0F280);
    sub_21D31A7B0(a1, v25);
    v18 = sub_21DBF84AC();
    v19 = sub_21DBFAE9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = [v25[0] objectID];
      sub_21D319FD8(v25);
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_21D0C9000, v18, v19, "TTRURLMetadataInteractor: fetching metadata {attachmentID: %@}", v20, 0xCu);
      sub_21D0CF7E0(v21, &unk_27CE60070);
      MEMORY[0x223D46520](v21, -1, -1);
      MEMORY[0x223D46520](v20, -1, -1);
    }

    else
    {

      sub_21D319FD8(v25);
    }

    result = sub_21D31AE8C(a1, a2);
    v23 = result;
  }

  *a3 = v23;
  return result;
}

id sub_21D319AD4@<X0>(id *a1@<X0>, id *a2@<X2>, void *a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21D318ABC(v6, a2, 0);
  }

  *a3 = v6;

  return v6;
}

void sub_21D319B6C(void *a1@<X8>)
{
  v2 = sub_21DBF54FC();
  v3 = [objc_opt_self() metadataWithDataRepresentation_];

  *a1 = v3;
}

uint64_t TTRURLMetadataInteractor.deinit()
{

  return v0;
}

uint64_t TTRURLMetadataInteractor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D319C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = type metadata accessor for TTRLPLinkMetadataProvider();
  v15[4] = &off_282EB1698;
  v15[0] = a1;
  sub_21D0D8CF0(0, &qword_280D1B900);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  sub_21DBFB12C();
  v8 = swift_allocObject();
  swift_weakInit();
  sub_21D0D32E4(v15, v14);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_21D0D0FD0(v14, v9 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7D0);
  swift_allocObject();
  *(a4 + 16) = sub_21DBF6B5C();

  sub_21DBFB12C();
  if (a2)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_21D0E6078;
    *(v11 + 24) = v10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7D8);
  swift_allocObject();
  v12 = sub_21DBF6B5C();
  __swift_destroy_boxed_opaque_existential_0(v15);
  *(a4 + 24) = v12;

  return a4;
}

uint64_t sub_21D319E94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D319F04(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v2);
  (*(v3 + 192))(*a1, a1[1], v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260);
  sub_21D0D0F1C(&qword_27CE5A7E8, &qword_27CE59260);
  v4 = sub_21DBF91CC();

  return v4;
}

uint64_t initializeWithCopy for TTRURLMetadataInteractor.SavingOperationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 40);
  *(a1 + 40) = v6;
  v7 = v6;
  v8 = **(v6 - 8);
  v9 = v4;
  v10 = v5;
  v8(a1 + 16, a2 + 16, v7);
  return a1;
}

uint64_t assignWithCopy for TTRURLMetadataInteractor.SavingOperationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  __swift_assign_boxed_opaque_existential_1((a1 + 16), (a2 + 16));
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t assignWithTake for TTRURLMetadataInteractor.SavingOperationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  __swift_destroy_boxed_opaque_existential_0(a1 + 16);
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

void destroy for TTRURLMetadataInteractor.MainOperationParams(uint64_t a1)
{
  if (*(a1 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(a1 + 16);
  }
}

uint64_t initializeWithCopy for TTRURLMetadataInteractor.MainOperationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 40);
  v6 = v4;
  if (v5)
  {
    v7 = *(a2 + 48);
    *(a1 + 40) = v5;
    *(a1 + 48) = v7;
    (**(v5 - 8))(a1 + 16, a2 + 16, v5);
  }

  else
  {
    v8 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v8;
    *(a1 + 48) = *(a2 + 48);
  }

  return a1;
}

uint64_t assignWithCopy for TTRURLMetadataInteractor.MainOperationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v7)
    {
      *(a1 + 40) = v7;
      *(a1 + 48) = *(a2 + 48);
      (**(v7 - 8))(a1 + 16, a2 + 16);
      return a1;
    }

LABEL_7:
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 16) = v9;
    *(a1 + 32) = v10;
    return a1;
  }

  v8 = (a1 + 16);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v8, (a2 + 16));
  return a1;
}

uint64_t assignWithTake for TTRURLMetadataInteractor.MainOperationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (*(a1 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(a1 + 16);
  }

  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRDateIconGenerator.IconTemplate(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRDateIconGenerator.IconTemplate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21D31A700(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_21DBF54CC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + v7);
  v9 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);

  sub_21D901480(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_21D31A84C()
{
  result = qword_27CE5A7E0;
  if (!qword_27CE5A7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A7E0);
  }

  return result;
}

unint64_t sub_21D31A8A0()
{
  result = qword_280D0C850;
  if (!qword_280D0C850)
  {
    sub_21DBF5F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C850);
  }

  return result;
}

uint64_t sub_21D31A914(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A828);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A830);
  v12 = *(v11 - 8);
  v31 = v11;
  v32 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A838);
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A840);
  v18 = *(v17 - 8);
  v34 = v17;
  v35 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - v19;
  v37 = a1;
  v38 = a2;
  sub_21D1BAF70(a1, a2);
  sub_21DBF90EC();
  sub_21DBF60DC();
  v21 = sub_21DBF60CC();
  v37 = v21;
  v22 = sub_21DBFB0DC();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  sub_21D0D8CF0(0, &qword_280D1B900);
  sub_21D0D0F1C(&qword_280D17958, &qword_27CE5A828);
  sub_21D0D65DC(&qword_280D17800, &qword_280D1B900);
  v23 = v29;
  sub_21DBF936C();
  sub_21D0CF7E0(v6, &unk_27CE5F250);

  (*(v30 + 8))(v10, v23);
  sub_21D0D8CF0(0, &qword_280D17838);
  sub_21D0D0F1C(&qword_280D179A0, &qword_27CE5A830);
  v24 = v31;
  sub_21DBF927C();
  (*(v32 + 8))(v14, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  sub_21D0D0F1C(&qword_280D179F8, &qword_27CE5A838);
  v25 = v33;
  sub_21DBF93BC();
  (*(v36 + 8))(v16, v25);
  sub_21D0D0F1C(&qword_280D17A10, &qword_27CE5A840);
  v26 = v34;
  v27 = sub_21DBF920C();
  (*(v35 + 8))(v20, v26);
  return v27;
}

uint64_t sub_21D31AE8C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A848);
  v12 = *(v11 - 8);
  v24 = v11;
  v25 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  v17 = [*a1 url];
  sub_21DBF546C();

  v18 = (*(v16 + 8))(v10, *(a1 + 8), v15, v16);
  (*(v8 + 8))(v10, v7);
  v27 = v18;
  sub_21DBF60DC();
  v19 = sub_21DBF60CC();
  v26 = v19;
  v20 = sub_21DBFB0DC();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A7C0);
  sub_21D0D8CF0(0, &qword_280D1B900);
  sub_21D0D0F1C(&qword_27CE5A850, &qword_27CE5A7C0);
  sub_21D0D65DC(&qword_280D17800, &qword_280D1B900);
  sub_21DBF936C();
  sub_21D0CF7E0(v6, &unk_27CE5F250);

  sub_21D0D0F1C(&qword_27CE5A858, &qword_27CE5A848);
  v21 = v24;
  v22 = sub_21DBF920C();
  (*(v25 + 8))(v14, v21);
  return v22;
}

unint64_t sub_21D31B250()
{
  result = qword_27CE5A860;
  if (!qword_27CE5A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A860);
  }

  return result;
}

uint64_t sub_21D31B2B4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A868);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A868);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRICollectionViewAccessibilityController.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRICollectionViewAccessibilityController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

void *TTRICollectionViewAccessibilityController.__allocating_init(collectionView:diffableDataSource:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[4] = a1;
  v4[5] = a2;
  return v4;
}

void *TTRICollectionViewAccessibilityController.init(collectionView:diffableDataSource:)(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[4] = a1;
  v2[5] = a2;
  return v2;
}

id TTRICollectionViewAccessibilityController.ttriAXRotor(named:criteria:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v8 = swift_allocObject();
  v8[2] = *(v7 + 80);
  v8[3] = *(v7 + 88);
  v8[4] = v4;
  v8[5] = a3;
  v8[6] = a4;
  v9 = objc_allocWithZone(MEMORY[0x277D75090]);

  v10 = sub_21DBFA12C();
  v14[4] = sub_21D31B754;
  v14[5] = v8;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21D114B20;
  v14[3] = &block_descriptor_13;
  v11 = _Block_copy(v14);
  v12 = [v9 initWithName:v10 itemSearchBlock:v11];
  swift_unownedRelease();

  _Block_release(v11);

  return v12;
}

id sub_21D31B6C0(void *a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4)
{
  swift_unownedRetainStrong();
  v7 = sub_21D31B764(a1, a3, a4);

  if (!v7)
  {
    return 0;
  }

  v8 = [objc_allocWithZone(MEMORY[0x277D75098]) initWithTargetElement:v7 targetRange:0];

  return v8;
}

uint64_t sub_21D31B764(void *a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v99 = a3;
  v98 = a2;
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v7 - 8);
  v90 = &v89 - v8;
  v9 = sub_21DBF5D5C();
  v92 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v89 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 80);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v97 = &v89 - v17;
  v115 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v115);
  v95 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v104 = &v89 - v20;
  MEMORY[0x28223BE20](v21);
  v108 = &v89 - v22;
  MEMORY[0x28223BE20](v23);
  v107 = &v89 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v89 - v26;
  MEMORY[0x28223BE20](v28);
  v113 = &v89 - v29;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v89 - v32;
  v34 = *(v12 + 56);
  v114 = v11;
  v35 = v11;
  v37 = v36;
  v102 = v34;
  v103 = v12 + 56;
  (v34)(&v89 - v32, 1, 1, v35, v31);
  v109 = a1;
  v38 = [a1 currentItem];
  v39 = [v38 targetElement];

  if (v39)
  {
    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    if (v40)
    {
      v112 = v40;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = v4[3];
        ObjectType = swift_getObjectType();
        v43 = v41;
        v44 = *(v41 + 24);
        v45 = v113;
        v44(v112, ObjectType, v43);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v37 + 8))(v33, v115);
      }

      else
      {
        swift_unknownObjectRelease();
        (*(v37 + 8))(v33, v115);
        v45 = v113;
        v102(v113, 1, 1, v114);
      }

      (*(v37 + 32))(v33, v45, v115);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v112 = v33;
  v91 = v15;
  v111 = v4;
  v93 = v9;
  v102(v27, 1, 1, v114);
  v105 = (v37 + 40);
  v46 = (v37 + 16);
  v47 = (v12 + 48);
  v48 = v12;
  v49 = (v37 + 8);
  v100 = (v48 + 32);
  v96 = (v48 + 16);
  v101 = (v48 + 8);
  v110 = v27;
  v106 = (v37 + 16);
  while (1)
  {
    v55 = [v109 searchDirection];
    v56 = v107;
    v57 = v115;
    v58 = v112;
    sub_21D31C194(v112, v55, v107);
    (*v105)(v27, v56, v57);
    v59 = v108;
    v113 = *v46;
    (v113)(v108, v27, v57);
    v60 = v114;
    v61 = *v47;
    v62 = (*v47)(v59, 1, v114);
    v63 = *v49;
    if (v62 != 1)
    {
      break;
    }

    v63(v59, v57);
    v27 = v110;
    v46 = v106;
    v50 = v113;
    v51 = v61;
LABEL_10:
    v52 = v104;
    v53 = v115;
    v50(v104, v27, v115);
    v54 = v51(v52, 1, v114);
    v63(v52, v53);
    if (v54 == 1)
    {
      goto LABEL_13;
    }
  }

  v63(v58, v57);
  v64 = v97;
  (*v100)(v97, v59, v60);
  (*v96)(v58, v64, v60);
  v102(v58, 0, 1, v60);
  v65 = v98(v64);
  (*v101)(v64, v60);
  v27 = v110;
  v46 = v106;
  v50 = v113;
  v51 = v61;
  if ((v65 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v94 = v63;
  v66 = v95;
  v50(v95, v27, v115);
  v67 = v114;
  if (v51(v66, 1, v114) == 1)
  {
    v68 = v115;
    v69 = v94;
    v94(v27, v115);
    v69(v112, v68);
    v69(v66, v68);
    return 0;
  }

  else
  {
    v71 = v91;
    (*v100)(v91, v66, v67);
    v72 = v111;
    v73 = v90;
    sub_21DBF8C3C();
    v74 = v92;
    v75 = v93;
    if ((*(v92 + 48))(v73, 1, v93) == 1)
    {
      (*v101)(v71, v67);
      v76 = v115;
      v77 = v94;
      v94(v110, v115);
      v77(v112, v76);
      sub_21D31DD48(v73);
      return 0;
    }

    else
    {
      v78 = v89;
      (*(v74 + 32))(v89, v73, v75);
      v79 = v72[4];
      v80 = [v79 indexPathsForVisibleItems];
      v81 = sub_21DBFA5EC();

      LOBYTE(v80) = sub_21DAEED34(v78, v81);

      if ((v80 & 1) == 0)
      {
        if ([v109 searchDirection] == 1)
        {
          v82 = 4;
        }

        else
        {
          v82 = 1;
        }

        v83 = sub_21DBF5C6C();
        [v79 scrollToItemAtIndexPath:v83 atScrollPosition:v82 animated:0];
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v84 = v72[3];
        v85 = swift_getObjectType();
        v86 = (*(v84 + 32))(v71, v85, v84);
        swift_unknownObjectRelease();
      }

      else
      {
        v86 = 0;
      }

      (*(v74 + 8))(v78, v75);
      (*v101)(v71, v114);
      v87 = v115;
      v88 = v94;
      v94(v110, v115);
      v88(v112, v87);
      return v86;
    }
  }
}

void sub_21D31C194(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v125 = a2;
  v133 = a3;
  v5 = *(*v3 + 80);
  v6 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_21DBFBA8C();
  v128 = *(v7 - 8);
  v129 = v7;
  MEMORY[0x28223BE20](v7);
  v119 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v131 = &v104 - v10;
  v127 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v127);
  v118 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v126 = &v104 - v13;
  v14 = *(v6 - 8);
  MEMORY[0x28223BE20](v15);
  v123 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v117 = &v104 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v104 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v104 - v23;
  MEMORY[0x28223BE20](v25);
  v130 = &v104 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v104 - v28;
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v31);
  v122 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v120 = &v104 - v34;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v104 - v37;
  v121 = *(v14 + 16);
  v121(v29, a1, v6, v36);
  v124 = *(v30 + 48);
  if (v124(v29, 1, v5) == 1)
  {
    v39 = *(v14 + 8);
    v39(v29, v6);
    v40 = *(v30 + 56);
    v40(v24, 1, 1, v5);
    v41 = sub_21D31CF58(v24);
    v39(v24, v6);
    if (v41 < 1)
    {
      v40(v133, 1, 1, v5);
    }

    else
    {
      v40(v24, 1, 1, v5);
      sub_21D31D154(0, v24, v133);
      v39(v24, v6);
    }

    return;
  }

  v109 = v21;
  v114 = v24;
  v115 = v14;
  v116 = v6;
  v42 = *(v30 + 32);
  v111 = v30 + 32;
  v110 = v42;
  v42(v38, v29, v5);
  v43 = v131;
  UICollectionViewDiffableDataSource<>.parentAndChildIndex(for:)(v38, v131);
  v44 = TupleTypeMetadata2;
  v45 = *(*(TupleTypeMetadata2 - 8) + 48);
  v46 = *(TupleTypeMetadata2 - 8) + 48;
  if (v45(v43, 1, TupleTypeMetadata2) == 1)
  {
    (*(v30 + 8))(v38, v5);
    (*(v128 + 8))(v43, v129);
    (*(v30 + 56))(v133, 1, 1, v5);
    return;
  }

  v106 = v46;
  v107 = v45;
  v112 = v38;
  v113 = v30;
  v108 = v5;
  v47 = *&v43[*(v44 + 48)];
  v49 = v126;
  v48 = v127;
  v50 = *(v127 + 48);
  v51 = v115;
  v52 = (v115 + 32);
  v53 = *(v115 + 32);
  v54 = v43;
  v55 = v116;
  v53(v126, v54, v116);
  *&v49[v50] = v47;
  v56 = *&v49[*(v48 + 48)];
  v57 = v130;
  v131 = v52;
  v126 = v53;
  v53(v130, v49, v55);
  v58 = sub_21D31CF58(v57);
  if (v58 < 1)
  {
    (*(v51 + 8))(v57, v55);
    v67 = v113;
    v68 = v108;
    (*(v113 + 8))(v112, v108);
    (*(v67 + 56))(v133, 1, 1, v68);
    return;
  }

  v59 = v108;
  if (!v125)
  {
    if (v56 < 1)
    {
      (*(v113 + 8))(v112, v108);
      (v126)(v133, v57, v116);
    }

    else
    {
      v60 = v123;
      sub_21D31D154(v56 - 1, v57, v123);
      v61 = v124(v60, 1, v59);
      v62 = v57;
      v63 = v112;
      if (v61 == 1)
      {
        v64 = v116;
        v65 = *(v115 + 8);
        v65(v62, v116);
        v66 = v113;
        (*(v113 + 8))(v63, v59);
        v65(v60, v64);
        (*(v66 + 56))(v133, 1, 1, v59);
      }

      else
      {
        v81 = v122;
        v110(v122, v60, v59);
        v82 = v133;
        sub_21D31D334(v81, v133);
        v83 = v59;
        v84 = v113;
        v85 = *(v113 + 8);
        v85(v81, v83);
        (*(v115 + 8))(v62, v116);
        v85(v63, v83);
        (*(v84 + 56))(v82, 0, 1, v83);
      }
    }

    return;
  }

  v105 = v58 - 1;
  v122 = v56;
  if (v125 == 1)
  {
    v69 = v113;
    v70 = v114;
    v123 = *(v113 + 16);
    (v123)(v114, v112, v108);
    v72 = *(v69 + 56);
    v71 = (v69 + 56);
    v125 = v72;
    v72(v70, 0, 1, v59);
    v73 = sub_21D31CF58(v70);
    v74 = v115 + 8;
    v75 = *(v115 + 8);
    v76 = v59;
    v77 = v116;
    v75(v70, v116);
    if (v73 >= 1)
    {
      v78 = v112;
      (v123)(v70, v112, v76);
      v125(v70, 0, 1, v76);
      sub_21D31D154(0, v70, v133);
      v75(v70, v77);
      v75(v130, v77);
      (*(v113 + 8))(v78, v76);
      return;
    }

    v123 = v71;
    v79 = v75;
    if (v122 < v105)
    {
      v80 = v130;
      sub_21D31D154((v122 + 1), v130, v133);
      v79(v80, v116);
      (*(v113 + 8))(v112, v76);
      return;
    }

    v86 = v109;
    v87 = v130;
    v88 = v116;
    (v121)(v109, v130, v116);
    v89 = v76;
    if (v124(v86, 1, v76) == 1)
    {
      v79(v87, v88);
      (*(v113 + 8))(v112, v76);
      v79(v86, v88);
LABEL_30:
      v125(v133, 1, 1, v89);
      return;
    }

    v90 = v120;
    v110(v120, v86, v76);
    v91 = v119;
    UICollectionViewDiffableDataSource<>.parentAndChildIndex(for:)(v90, v119);
    v92 = TupleTypeMetadata2;
    if (v107(v91, 1, TupleTypeMetadata2) == 1)
    {
      v93 = *(v113 + 8);
      v93(v90, v76);
      v79(v87, v88);
      v93(v112, v76);
      (*(v128 + 8))(v91, v129);
      goto LABEL_30;
    }

    v115 = v74;
    TupleTypeMetadata2 = *&v91[*(v92 + 48)];
    v94 = v126;
    v95 = v127;
    v129 = *(v127 + 48);
    v96 = v118;
    (v126)(v118, v91, v88);
    *&v96[v129] = TupleTypeMetadata2;
    v97 = *&v96[*(v95 + 48)];
    v98 = v117;
    v94(v117, v96, v88);
    v99 = sub_21D31CF58(v98);
    if (!__OFSUB__(v99, 1))
    {
      if (v97 < v99 - 1)
      {
        sub_21D31D154(v97 + 1, v98, v133);
        v79(v98, v88);
        v100 = *(v113 + 8);
        v100(v120, v76);
        v79(v87, v88);
        v100(v112, v76);
        return;
      }

      v79(v98, v88);
      v101 = *(v113 + 8);
      v89 = v76;
      v101(v120, v76);
      v79(v87, v88);
      v101(v112, v76);
      goto LABEL_30;
    }

    __break(1u);
  }

  if (qword_27CE56610 != -1)
  {
    swift_once();
  }

  v102 = sub_21DBF84BC();
  __swift_project_value_buffer(v102, qword_27CE5A868);
  v103 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v103);
  sub_21DAEAB00("unknown direction", 17, 2);
  __break(1u);
}

uint64_t sub_21D31CF58(uint64_t a1)
{
  v2 = type metadata accessor for UICollectionViewDiffableDataSource<>.SubtreeSnapshot();
  v3 = sub_21DBFBA8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = v2[-1].f64[1];
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  UICollectionViewDiffableDataSource<>.subtreeSnapshot(for:)(a1, v6);
  if ((*(*&v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  else
  {
    (*(*&v7 + 32))(v10, v6, v2);
    v12 = UICollectionViewDiffableDataSource<>.SubtreeSnapshot.numberOfChildren(visibleOnly:)(1, v2);
    (*(*&v7 + 8))(v10, v2);
    return v12;
  }
}

uint64_t sub_21D31D154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*v3 + 80);
  v8 = type metadata accessor for UICollectionViewDiffableDataSource<>.SubtreeSnapshot();
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  UICollectionViewDiffableDataSource<>.subtreeSnapshot(for:)(a2, &v15 - v11);
  v13 = *(v8 - 8);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    (*(v10 + 8))(v12, v9);
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }

  else
  {
    UICollectionViewDiffableDataSource<>.SubtreeSnapshot.child(at:)(a1, v8, a3);
    return (*(v13 + 8))(v12, v8);
  }
}

uint64_t sub_21D31D334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = a1;
  v76.val[0] = *(*v2 + 80);
  v76.val[1] = v76.val[0];
  v3 = v76.val[0].f64[0];
  v4 = sub_21DBF8D0C();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v71 = &v60 - v5;
  v6 = *(*&v76.val[0].f64[0] - 8);
  MEMORY[0x28223BE20](v7);
  v66 = &v60 - v8;
  v9 = &v79;
  v80 = v76;
  vst2q_f64(v9, v80);
  v75 = sub_21DBF8B0C();
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v70 = &v60 - v10;
  v11 = sub_21DBFBA8C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v60 - v15;
  MEMORY[0x28223BE20](v16);
  v69 = &v60 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  v21 = type metadata accessor for UICollectionViewDiffableDataSource<>.SubtreeSnapshot();
  v22 = sub_21DBFBA8C();
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v60 - v24;
  v26 = *(*&v6 + 16);
  v26(v20, v78, *&v3, v23);
  v76.val[0].f64[0] = v6;
  (*(*&v6 + 56))(v20, 0, 1, COERCE_FLOAT64_T(*&v3));
  UICollectionViewDiffableDataSource<>.subtreeSnapshot(for:)(v20, v25);
  v27 = *(v12 + 8);
  v67 = v12 + 8;
  v68 = v11;
  v27(v20, v11);
  if ((*(*(v21 - 8) + 48))(v25, 1, v21) == 1)
  {
    return (v26)(v77, v78, *&v3);
  }

  v63 = *&v6 + 16;
  v62 = v26;
  v29 = v77;
  v30 = v25;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v74;
    v32 = v3;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v75 = *(TupleTypeMetadata3 + 48);
    v34 = v30[*(TupleTypeMetadata3 + 64)];
    v35 = v73;
    v36 = v71;
    (*(v73 + 32))(v71, v30, v31);
    v37 = v78;
    if (v34)
    {
      (*(v35 + 8))(v36, v31);
      v62(v29, v37, *&v32);
      return (*(*&v76.val[0].f64[0] + 8))(&v30[v75], COERCE_FLOAT64_T(*&v32));
    }

    else
    {
      v47 = v29;
      v72 = v30;
      v61 = v27;
      v79 = sub_21DBF8C5C();
      sub_21DBFA74C();
      v48 = v36;
      swift_getWitnessTable();
      v49 = v64;
      sub_21DBFA04C();
      (*(v35 + 8))(v48, v31);

      v50 = v76.val[0].f64[0];
      v51 = *(*&v76.val[0].f64[0] + 48);
      if (v51(v49, 1, *&v32) == 1)
      {
        v62(v47, v78, *&v32);
        v52 = v51(v49, 1, *&v32);
        v53 = v75;
        if (v52 != 1)
        {
          v61(v49, v68);
        }
      }

      else
      {
        (*(*&v50 + 32))(v47, v49, COERCE_FLOAT64_T(*&v32));
        v53 = v75;
      }

      return (*(*&v50 + 8))(&v72[v53], COERCE_FLOAT64_T(*&v32));
    }
  }

  else
  {
    v61 = v27;
    v38 = v72;
    v39 = v70;
    v40 = v75;
    (*(v72 + 4))(v70, v25, v75);
    v74 = sub_21DBF8AEC();
    v79 = v74;
    sub_21DBFA74C();
    WitnessTable = swift_getWitnessTable();
    v42 = v69;
    v71 = WitnessTable;
    sub_21DBFA04C();
    v43 = v42;
    v44 = v76.val[0].f64[0];
    v73 = *(*&v76.val[0].f64[0] + 48);
    v45 = (v73)(v42, 1, *&v3);
    v46 = v62;
    if (v45 == 1)
    {
      (*(v38 + 1))(v39, v40);
      v61(v43, v68);

      return v46(v77, v78, *&v3);
    }

    else
    {
      v54 = *(*&v44 + 32);
      v55 = v39;
      v56 = v38;
      v57 = v66;
      v69 = (*&v44 + 32);
      v64 = v54;
      (v54)(v66, v43, *&v3);

      v79 = sub_21DBF8AAC();
      v58 = v65;
      sub_21DBFA04C();
      (*(*&v44 + 8))(v57, COERCE_FLOAT64_T(*&v3));
      (*(v56 + 1))(v55, v75);

      v59 = v73;
      if ((v73)(v58, 1, *&v3) == 1)
      {
        v62(v77, v78, *&v3);
        result = v59(v58, 1, *&v3);
        if (result != 1)
        {
          return (v61)(v58, v68);
        }
      }

      else
      {
        return (v64)(v77, v58, *&v3);
      }
    }
  }

  return result;
}

uint64_t TTRICollectionViewAccessibilityController.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRICollectionViewAccessibilityController.__deallocating_deinit()
{
  TTRICollectionViewAccessibilityController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21D31DD48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D31DDE4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  v5 = *(v3 + 16);
  *(v3 + 16) = v2;
  if (v2 != v5)
  {
    return sub_21D31DE9C(1);
  }

  return result;
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.isMultiSelectMode.setter(char a1)
{
  v3 = a1 & 1;
  result = swift_beginAccess();
  v5 = *(v1 + 16);
  *(v1 + 16) = a1;
  if (v5 != v3)
  {
    return sub_21D31DE9C(1);
  }

  return result;
}

uint64_t sub_21D31DE9C(int a1)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v30[-v6];
  v35 = &v30[-v6];
  v8 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v30[-v13];
  swift_beginAccess();
  v37 = *(v1 + 16);
  swift_beginAccess();
  v36 = *(v1 + 17);
  v15 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_internalEditingItemID;
  swift_beginAccess();
  sub_21D0D3954(v1 + v15, v7, &qword_27CE5FB90);
  v16 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  swift_beginAccess();
  sub_21D0D3954(v1 + v16, v4, &qword_27CE5FB90);
  v33 = sub_21D320568();
  v32 = sub_21D32092C();
  v17 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDsWithPonderingTextEffect;
  swift_beginAccess();
  v18 = *(v1 + v17);
  v19 = v9[8];
  v20 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v21 = *(*(v20 - 8) + 56);
  v21(&v14[v19], 1, 1, v20);
  v22 = v9[9];
  v21(&v14[v22], 1, 1, v20);
  *v14 = v37;
  v14[1] = v36;
  sub_21DBF8E0C();
  sub_21D322950(v35, &v14[v19]);
  sub_21D322950(v34, &v14[v22]);
  v23 = &v14[v9[10]];
  *v23 = 0;
  *(v23 + 1) = v33;
  v24 = &v14[v9[11]];
  *v24 = 0;
  *(v24 + 1) = v32;
  *&v14[v9[12]] = v18;
  v25 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStates;
  swift_beginAccess();
  sub_21D3229C0(v1 + v25, v11, type metadata accessor for TTRIRemindersListCellPresentationStates);
  LOBYTE(v20) = _s15RemindersUICore39TTRIRemindersListCellPresentationStatesV2eeoiySbAC_ACtFZ_0(v11, v14);
  sub_21D322C74(v11, type metadata accessor for TTRIRemindersListCellPresentationStates);
  if ((v20 & 1) == 0)
  {
    swift_beginAccess();
    sub_21D322D3C(v14, v1 + v25);
    swift_endAccess();
    if (v31)
    {
      v26 = (v1 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
      swift_beginAccess();
      v27 = *v26;
      if (!*v26)
      {
        sub_21D322C74(v14, type metadata accessor for TTRIRemindersListCellPresentationStates);
        return swift_endAccess();
      }

      swift_endAccess();

      v27(v28);
      sub_21D0D0E88(v27);
    }
  }

  return sub_21D322C74(v14, type metadata accessor for TTRIRemindersListCellPresentationStates);
}

void (*TTRIRemindersListCellPresentationStatesPresenterCapability.isMultiSelectMode.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 16);
  return sub_21D31E350;
}

void sub_21D31E350(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 16);
  *(v2 + 16) = v3;
  if (v3 != v4)
  {
    sub_21D31DE9C(1);
  }

  free(v1);
}

uint64_t sub_21D31E3DC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  v5 = *(v3 + 17);
  *(v3 + 17) = v2;
  if (v2 != v5)
  {
    return sub_21D31DE9C(1);
  }

  return result;
}

void (*TTRIRemindersListCellPresentationStatesPresenterCapability.hasActiveDragAndDrop.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 17);
  return sub_21D31E4C4;
}

void sub_21D31E4C4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 17);
  *(v2 + 17) = v3;
  if (v3 != v4)
  {
    sub_21D31DE9C(1);
  }

  free(v1);
}

uint64_t sub_21D31E528(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21D0D3954(a1, &v6 - v3, &qword_27CE5FB90);
  return TTRIRemindersListCellPresentationStatesPresenterCapability.editingItemID.setter(v4);
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.editingItemID.setter(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_internalEditingItemID;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_21D0D3954(v1 + v13, v12, &qword_27CE5FB90);
  v22 = a1;
  sub_21D0D3954(a1, &v12[v14], &qword_27CE5FB90);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) != 1)
  {
    sub_21D0D3954(v12, v8, &qword_27CE5FB90);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v19 = v21;
      sub_21D322CD4(&v12[v14], v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v20 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v8, v19);
      sub_21D322C74(v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D322C74(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v12, &qword_27CE5FB90);
      v17 = v22;
      if (v20)
      {
        return sub_21D0CF7E0(v17, &qword_27CE5FB90);
      }

      goto LABEL_7;
    }

    sub_21D322C74(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v17 = v22;
LABEL_6:
    sub_21D0CF7E0(v12, &qword_27CE5F2E0);
LABEL_7:
    swift_beginAccess();
    sub_21D31E91C(v17, v1 + v13);
    swift_endAccess();
    sub_21D31DE9C(1);
    return sub_21D0CF7E0(v17, &qword_27CE5FB90);
  }

  v16 = v15(&v12[v14], 1, v3);
  v17 = v22;
  if (v16 != 1)
  {
    goto LABEL_6;
  }

  sub_21D0CF7E0(v12, &qword_27CE5FB90);
  return sub_21D0CF7E0(v17, &qword_27CE5FB90);
}

uint64_t sub_21D31E91C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*TTRIRemindersListCellPresentationStatesPresenterCapability.editingItemID.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  v5[10] = v9;
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v5[11] = v11;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90) - 8) + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(v12);
    v5[13] = malloc(v12);
    v13 = malloc(v12);
  }

  v14 = v13;
  v15 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_internalEditingItemID;
  v5[14] = v13;
  v5[15] = v15;
  swift_beginAccess();
  sub_21D0D3954(v1 + v15, v14, &qword_27CE5FB90);
  return sub_21D31EB64;
}

void sub_21D31EB64(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[13];
    v3 = v2[14];
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[9];
    sub_21D0D3954(v3, v5, &qword_27CE5FB90);
    TTRIRemindersListCellPresentationStatesPresenterCapability.editingItemID.setter(v5);
    goto LABEL_11;
  }

  v8 = v2[14];
  v9 = v2[11];
  v10 = v2[7];
  v11 = v2[8];
  v12 = *(v2[10] + 48);
  sub_21D0D3954(v2[6] + v2[15], v9, &qword_27CE5FB90);
  sub_21D0D3954(v8, v9 + v12, &qword_27CE5FB90);
  v13 = *(v11 + 48);
  if (v13(v9, 1, v10) != 1)
  {
    v14 = v2[7];
    sub_21D0D3954(v2[11], v2[13], &qword_27CE5FB90);
    v15 = v13(v9 + v12, 1, v14);
    v16 = v2[13];
    if (v15 != 1)
    {
      v20 = v2[11];
      v21 = v2[9];
      sub_21D322CD4(v9 + v12, v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v22 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v16, v21);
      sub_21D322C74(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D322C74(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v20, &qword_27CE5FB90);
      if (v22)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_21D322C74(v2[13], type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_8:
    sub_21D0CF7E0(v2[11], &qword_27CE5F2E0);
LABEL_9:
    v17 = v2[14];
    v18 = v2[15];
    v19 = v2[6];
    swift_beginAccess();
    sub_21D31E91C(v17, v19 + v18);
    swift_endAccess();
    sub_21D31DE9C(1);
    goto LABEL_10;
  }

  if (v13(v9 + v12, 1, v2[7]) != 1)
  {
    goto LABEL_8;
  }

  sub_21D0CF7E0(v2[11], &qword_27CE5FB90);
LABEL_10:
  v4 = v2[13];
  v3 = v2[14];
  v6 = v2[11];
  v5 = v2[12];
  v7 = v2[9];
LABEL_11:
  sub_21D0CF7E0(v3, &qword_27CE5FB90);
  free(v3);
  free(v4);
  free(v5);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_21D31EE14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_21D0D3954(v2 + v4, a2, &qword_27CE5FB90);
}

uint64_t sub_21D31EE78(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v13[-v8];
  sub_21D0D3954(a1, &v13[-v8], &qword_27CE5FB90);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  swift_beginAccess();
  sub_21D0D3954(v10 + v11, v6, &qword_27CE5FB90);
  swift_beginAccess();
  sub_21D31E91C(v9, v10 + v11);
  swift_endAccess();
  sub_21D31F0D0(v6);
  sub_21D0CF7E0(v6, &qword_27CE5FB90);
  return sub_21D0CF7E0(v9, &qword_27CE5FB90);
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.itemIDWithAnchoredPopover.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  swift_beginAccess();
  sub_21D0D3954(v1 + v6, v5, &qword_27CE5FB90);
  swift_beginAccess();
  sub_21D31E91C(a1, v1 + v6);
  swift_endAccess();
  sub_21D31F0D0(v5);
  sub_21D0CF7E0(a1, &qword_27CE5FB90);
  return sub_21D0CF7E0(v5, &qword_27CE5FB90);
}

uint64_t sub_21D31F0D0(uint64_t a1)
{
  v20 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  swift_beginAccess();
  v14 = *(v10 + 56);
  v19 = v1;
  sub_21D0D3954(v1 + v13, v12, &qword_27CE5FB90);
  sub_21D0D3954(v20, &v12[v14], &qword_27CE5FB90);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_21D0CF7E0(v12, &qword_27CE5FB90);
    }

    goto LABEL_6;
  }

  sub_21D0D3954(v12, v8, &qword_27CE5FB90);
  if (v15(&v12[v14], 1, v2) == 1)
  {
    sub_21D322C74(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_6:
    sub_21D0CF7E0(v12, &qword_27CE5F2E0);
    return sub_21D31DE9C(1);
  }

  sub_21D322CD4(&v12[v14], v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v17 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v8, v5);
  sub_21D322C74(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D322C74(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
  result = sub_21D0CF7E0(v12, &qword_27CE5FB90);
  if ((v17 & 1) == 0)
  {
    return sub_21D31DE9C(1);
  }

  return result;
}

void (*TTRIRemindersListCellPresentationStatesPresenterCapability.itemIDWithAnchoredPopover.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5FB90);
  return sub_21D31F4F8;
}

void sub_21D31F4F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_21D0D3954(*(*a1 + 96), v6, &qword_27CE5FB90);
    sub_21D0D3954(v7 + v4, v5, &qword_27CE5FB90);
    swift_beginAccess();
    sub_21D31E91C(v6, v7 + v4);
    swift_endAccess();
    sub_21D31F0D0(v5);
    sub_21D0CF7E0(v5, &qword_27CE5FB90);
  }

  else
  {
    sub_21D0D3954(v7 + v4, v6, &qword_27CE5FB90);
    swift_beginAccess();
    sub_21D31E91C(v3, v7 + v4);
    swift_endAccess();
    sub_21D31F0D0(v6);
  }

  sub_21D0CF7E0(v6, &qword_27CE5FB90);
  sub_21D0CF7E0(v3, &qword_27CE5FB90);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_21D31F6AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDsWithPonderingTextEffect;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_bridgeObjectRetain_n();
  sub_21D320EEC(v2, v5);
  LOBYTE(v4) = v6;

  if ((v4 & 1) == 0)
  {
    return sub_21D31DE9C(1);
  }

  return result;
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.itemIDsWithPonderingTextEffect.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDsWithPonderingTextEffect;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = sub_21DBF8E0C();
  sub_21D320EEC(v5, v4);
  LOBYTE(v3) = v6;

  if ((v3 & 1) == 0)
  {
    return sub_21D31DE9C(1);
  }

  return result;
}

void (*TTRIRemindersListCellPresentationStatesPresenterCapability.itemIDsWithPonderingTextEffect.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDsWithPonderingTextEffect;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D31F85C;
}

void sub_21D31F85C(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);
  v7 = sub_21DBF8E0C();
  if (a2)
  {
    v8 = sub_21DBF8E0C();
    sub_21D320EEC(v8, v6);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      sub_21D31DE9C(1);
    }
  }

  else
  {
    sub_21D320EEC(v7, v6);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      sub_21D31DE9C(1);
    }
  }

  free(v3);
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.isMultiSelected.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_isMultiSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21D31F970(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_isMultiSelected;
  result = swift_beginAccess();
  v6 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v6)
  {
    return sub_21D31DE9C(1);
  }

  return result;
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.isMultiSelected.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_isMultiSelected;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    return sub_21D31DE9C(1);
  }

  return result;
}

void (*TTRIRemindersListCellPresentationStatesPresenterCapability.isMultiSelected.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_isMultiSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D31FAD4;
}

void sub_21D31FAD4(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    sub_21D31DE9C(1);
  }

  free(v1);
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.cellPresentationStates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStates;
  swift_beginAccess();
  return sub_21D3229C0(v1 + v3, a1, type metadata accessor for TTRIRemindersListCellPresentationStates);
}

uint64_t sub_21D31FB98@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4);
}

uint64_t sub_21D31FC38(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3);
  return sub_21D0D0E88(v8);
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.cellPresentationStatesDidChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1);
  return v2;
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.cellPresentationStatesDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6);
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.__allocating_init()()
{
  v0 = swift_allocObject();
  TTRIRemindersListCellPresentationStatesPresenterCapability.init()();
  return v0;
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v24 = &v23 - v5;
  v7 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v0 + 16) = 0;
  v11 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v0 + v11, 1, 1, v12);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDsWithPonderingTextEffect) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_isMultiSelected) = 0;
  v14 = (v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  *v14 = 0;
  v14[1] = 0;
  v13(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_internalEditingItemID, 1, 1, v12);
  v13(v6, 1, 1, v12);
  v13(v3, 1, 1, v12);
  v15 = MEMORY[0x277D84F90];
  v16 = sub_21D177EFC(MEMORY[0x277D84F90]);
  v17 = sub_21D177F14(v15);
  v18 = v8[8];
  v13(v10 + v18, 1, 1, v12);
  v19 = v8[9];
  v13(v10 + v19, 1, 1, v12);
  *v10 = 0;
  sub_21D322950(v24, v10 + v18);
  sub_21D322950(v23, v10 + v19);
  v20 = v10 + v8[10];
  *v20 = 0;
  *(v20 + 1) = v16;
  v21 = v10 + v8[11];
  *v21 = 0;
  *(v21 + 1) = v17;
  *(v10 + v8[12]) = MEMORY[0x277D84FA0];
  sub_21D322CD4(v10, v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStates, type metadata accessor for TTRIRemindersListCellPresentationStates);
  sub_21D31DE9C(1);
  return v0;
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.prepareToInsertAndEdit(_:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v10 - 8);
  v32 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_internalEditingItemID;
  swift_beginAccess();
  v33 = a1;
  sub_21D3229C0(a1, v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v30 = *(v4 + 56);
  v30(v17, 0, 1, v3);
  v19 = *(v7 + 56);
  v34 = v1;
  v31 = v18;
  v20 = v1 + v18;
  v21 = v3;
  sub_21D0D3954(v20, v9, &qword_27CE5FB90);
  sub_21D0D3954(v17, &v9[v19], &qword_27CE5FB90);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v21) == 1)
  {
    sub_21D0CF7E0(v17, &qword_27CE5FB90);
    if (v22(&v9[v19], 1, v21) == 1)
    {
      return sub_21D0CF7E0(v9, &qword_27CE5FB90);
    }

    goto LABEL_6;
  }

  sub_21D0D3954(v9, v14, &qword_27CE5FB90);
  if (v22(&v9[v19], 1, v21) == 1)
  {
    sub_21D0CF7E0(v17, &qword_27CE5FB90);
    sub_21D322C74(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_6:
    sub_21D0CF7E0(v9, &qword_27CE5F2E0);
LABEL_7:
    v24 = v32;
    sub_21D3229C0(v33, v32, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v30(v24, 0, 1, v21);
    v25 = v34;
    v26 = v31;
    swift_beginAccess();
    sub_21D322950(v24, v25 + v26);
    swift_endAccess();
    return sub_21D31DE9C(0);
  }

  v27 = v29;
  sub_21D322CD4(&v9[v19], v29, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v28 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v14, v27);
  sub_21D322C74(v27, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D0CF7E0(v17, &qword_27CE5FB90);
  sub_21D322C74(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
  result = sub_21D0CF7E0(v9, &qword_27CE5FB90);
  if ((v28 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_21D320568()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v21[-v5];
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  swift_beginAccess();
  sub_21D0D3954(v0 + v11, v3, &qword_27CE5FB90);
  v12 = *(v8 + 48);
  if (v12(v3, 1, v7) == 1)
  {
    v13 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_internalEditingItemID;
    swift_beginAccess();
    sub_21D0D3954(v0 + v13, v6, &qword_27CE5FB90);
    if (v12(v3, 1, v7) != 1)
    {
      sub_21D0CF7E0(v3, &qword_27CE5FB90);
    }
  }

  else
  {
    sub_21D322CD4(v3, v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
    (*(v8 + 56))(v6, 0, 1, v7);
  }

  if (v12(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5FB90);
    return sub_21D177EFC(MEMORY[0x277D84F90]);
  }

  else
  {
    sub_21D322CD4(v6, v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A888);
    v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582B0) - 8);
    v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21DC08D00;
    v18 = v17 + v16;
    v19 = v15[14];
    sub_21D3229C0(v10, v18, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *(v18 + v19) = 1;
    v20 = sub_21D177EFC(v17);
    swift_setDeallocating();
    sub_21D0CF7E0(v18, &qword_27CE582B0);
    swift_deallocClassInstance();
    sub_21D322C74(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return v20;
  }
}

unint64_t sub_21D32092C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v21[-v5];
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  swift_beginAccess();
  sub_21D0D3954(v0 + v11, v3, &qword_27CE5FB90);
  v12 = *(v8 + 48);
  if (v12(v3, 1, v7) == 1)
  {
    v13 = OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_internalEditingItemID;
    swift_beginAccess();
    sub_21D0D3954(v0 + v13, v6, &qword_27CE5FB90);
    if (v12(v3, 1, v7) != 1)
    {
      sub_21D0CF7E0(v3, &qword_27CE5FB90);
    }
  }

  else
  {
    sub_21D322CD4(v3, v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
    (*(v8 + 56))(v6, 0, 1, v7);
  }

  if (v12(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5FB90);
    return sub_21D177F14(MEMORY[0x277D84F90]);
  }

  else
  {
    sub_21D322CD4(v6, v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A880);
    v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582A0) - 8);
    v16 = (*(*v15 + 80) + 32) & ~*(*v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21DC08D00;
    v18 = v17 + v16;
    v19 = v15[14];
    sub_21D3229C0(v10, v18, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *(v18 + v19) = 1;
    v20 = sub_21D177F14(v17);
    swift_setDeallocating();
    sub_21D0CF7E0(v18, &qword_27CE582A0);
    swift_deallocClassInstance();
    sub_21D322C74(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return v20;
  }
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.deinit()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover, &qword_27CE5FB90);

  sub_21D322C74(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStates, type metadata accessor for TTRIRemindersListCellPresentationStates);
  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_internalEditingItemID, &qword_27CE5FB90);
  return v0;
}

uint64_t TTRIRemindersListCellPresentationStatesPresenterCapability.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover, &qword_27CE5FB90);

  sub_21D322C74(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStates, type metadata accessor for TTRIRemindersListCellPresentationStates);
  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapability_internalEditingItemID, &qword_27CE5FB90);

  return swift_deallocClassInstance();
}

uint64_t _s15RemindersUICore58TTRIRemindersListCellPresentationStatesPresenterCapabilityC20hasActiveDragAndDropSbvs_0(char a1)
{
  v3 = a1 & 1;
  result = swift_beginAccess();
  v5 = *(v1 + 17);
  *(v1 + 17) = a1;
  if (v5 != v3)
  {
    return sub_21D31DE9C(1);
  }

  return result;
}

void sub_21D320EEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v93[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v7);
  v112 = &v93[-v8];
  v9 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v9);
  v115 = &v93[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v110 = &v93[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v111 = &v93[-v15];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58AD0);
  MEMORY[0x28223BE20](v113);
  v17 = &v93[-v16];
  v18 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v18);
  v117 = &v93[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v116 = &v93[-v21];
  MEMORY[0x28223BE20](v22);
  v118 = &v93[-v23];
  MEMORY[0x28223BE20](v24);
  v114 = &v93[-v25];
  MEMORY[0x28223BE20](v26);
  v28 = &v93[-v27];
  MEMORY[0x28223BE20](v29);
  v123 = &v93[-v30];
  MEMORY[0x28223BE20](v31);
  v34 = &v93[-v33];
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v108 = v6;
  v35 = 0;
  v36 = a1 + 56;
  v37 = 1 << *(a1 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & *(a1 + 56);
  v40 = (v37 + 63) >> 6;
  v122 = a2 + 56;
  v103 = 0x800000021DC43E30;
  v102 = 0x800000021DC43E00;
  v109 = 0x800000021DC43DE0;
  v104 = (v12 + 48);
  v120 = a2;
  v105 = v11;
  v41 = v114;
  v99 = a1;
  v107 = v7;
  v106 = v9;
  v98 = v32;
  v97 = v34;
  v96 = a1 + 56;
  v95 = v40;
  if (!v39)
  {
    goto LABEL_8;
  }

  do
  {
    v101 = (v39 - 1) & v39;
    v100 = v35;
    v42 = __clz(__rbit64(v39)) | (v35 << 6);
LABEL_13:
    v46 = *(a1 + 48);
    v121 = *(v32 + 72);
    v47 = v34;
    sub_21D3229C0(v46 + v121 * v42, v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D322CD4(v47, v123, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21DBFC7DC();
    TTRRemindersListViewModel.ItemID.hash(into:)();
    v48 = sub_21DBFC82C();
    v49 = -1 << *(a2 + 32);
    v50 = v48 & ~v49;
    v51 = v113;
    if (((*(v122 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
LABEL_90:
      sub_21D322C74(v123, type metadata accessor for TTRRemindersListViewModel.ItemID);
      return;
    }

    v119 = ~v49;
    while (1)
    {
      sub_21D3229C0(*(a2 + 48) + v50 * v121, v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v54 = *(v51 + 48);
      sub_21D3229C0(v28, v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D3229C0(v123, &v17[v54], type metadata accessor for TTRRemindersListViewModel.ItemID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          v71 = v117;
          sub_21D3229C0(v17, v117, type metadata accessor for TTRRemindersListViewModel.ItemID);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v72 = *v71;
            if (v72 > 2)
            {
              if (v72 == 3)
              {
                v75 = 0xD00000000000001FLL;
                v81 = &v124;
              }

              else
              {
                if (v72 == 4)
                {
                  v76 = 0xE700000000000000;
                  v75 = 0x6D657449706974;
                  goto LABEL_58;
                }

                v75 = 0xD00000000000001DLL;
                v81 = &v125;
              }

              v76 = *(v81 - 32);
            }

            else
            {
              v73 = 0xD000000000000012;
              if (v72 == 1)
              {
                v73 = 0x7367617468736168;
              }

              v74 = v109;
              if (v72 == 1)
              {
                v74 = 0xEC0000006D657449;
              }

              if (*v71)
              {
                v75 = v73;
              }

              else
              {
                v75 = 0x6574656C706D6F63;
              }

              if (*v71)
              {
                v76 = v74;
              }

              else
              {
                v76 = 0xED00006D65744964;
              }
            }

LABEL_58:
            v82 = v17[v54];
            if (v82 > 2)
            {
              if (v82 == 3)
              {
                v85 = 0xD00000000000001FLL;
                v86 = &v124;
              }

              else
              {
                if (v82 == 4)
                {
                  v84 = 0xE700000000000000;
                  if (v75 == 0x6D657449706974)
                  {
                    goto LABEL_77;
                  }

                  goto LABEL_78;
                }

                v85 = 0xD00000000000001DLL;
                v86 = &v125;
              }

              v84 = *(v86 - 32);
              if (v75 == v85)
              {
                goto LABEL_77;
              }

              goto LABEL_78;
            }

            if (v17[v54])
            {
              if (v82 == 1)
              {
                v83 = 0x7367617468736168;
              }

              else
              {
                v83 = 0xD000000000000012;
              }

              if (v82 == 1)
              {
                v84 = 0xEC0000006D657449;
              }

              else
              {
                v84 = v109;
              }

              if (v75 != v83)
              {
                goto LABEL_78;
              }

LABEL_77:
              if (v76 == v84)
              {

                v91 = type metadata accessor for TTRRemindersListViewModel.ItemID;
                v92 = v28;
                goto LABEL_85;
              }
            }

            else
            {
              v84 = 0xED00006D65744964;
              if (v75 == 0x6574656C706D6F63)
              {
                goto LABEL_77;
              }
            }

LABEL_78:
            v87 = sub_21DBFC64C();

            sub_21D322C74(v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
            if (v87)
            {
              goto LABEL_86;
            }

LABEL_82:
            sub_21D322C74(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
            goto LABEL_18;
          }

          v52 = type metadata accessor for TTRRemindersListViewModel.ItemID;
          v53 = v28;
          goto LABEL_16;
        }

        v56 = v116;
        sub_21D3229C0(v17, v116, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v57 = *v56;
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_21D322C74(v28, type metadata accessor for TTRRemindersListViewModel.ItemID);

          goto LABEL_17;
        }

        v58 = *&v17[v54];
        sub_21D0D8CF0(0, &qword_280D17680);
        v59 = sub_21DBFB63C();

        sub_21D322C74(v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D322C74(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
        if (v59)
        {
          goto LABEL_87;
        }

        goto LABEL_18;
      }

      if (EnumCaseMultiPayload)
      {
        break;
      }

      sub_21D3229C0(v17, v41, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_21D322C74(v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v52 = type metadata accessor for TTRRemindersListViewModel.SectionID;
        v53 = v41;
        goto LABEL_16;
      }

      v77 = &v17[v54];
      v78 = v111;
      sub_21D322CD4(v77, v111, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v79 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v41, v78);
      sub_21D322C74(v78, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D322C74(v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D322C74(v41, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21D322C74(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v79)
      {
        goto LABEL_87;
      }

LABEL_18:
      a2 = v120;
      v50 = (v50 + 1) & v119;
      if (((*(v122 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    v60 = v118;
    sub_21D3229C0(v17, v118, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D322C74(v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v52 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      v53 = v60;
LABEL_16:
      sub_21D322C74(v53, v52);
LABEL_17:
      sub_21D0CF7E0(v17, &qword_27CE58AD0);
      goto LABEL_18;
    }

    v61 = &v17[v54];
    v62 = v115;
    sub_21D322CD4(v61, v115, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    sub_21D0D8CF0(0, &qword_280D17680);
    v63 = v60;
    if ((sub_21DBFB63C() & 1) == 0)
    {
      sub_21D322C74(v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v41 = v114;
      goto LABEL_81;
    }

    v64 = *(v106 + 20);
    v65 = *(v107 + 48);
    v66 = v62;
    v67 = v112;
    sub_21D0D3954(&v63[v64], v112, &unk_27CE5CD70);
    sub_21D0D3954(&v66[v64], &v67[v65], &unk_27CE5CD70);
    v68 = *v104;
    v69 = v105;
    if ((*v104)(v67, 1, v105) != 1)
    {
      sub_21D0D3954(v67, v108, &unk_27CE5CD70);
      v80 = v68(&v67[v65], 1, v69);
      v41 = v114;
      if (v80 == 1)
      {
        sub_21D322C74(v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D322C74(v108, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v67 = v112;
        v51 = v113;
LABEL_54:
        sub_21D0CF7E0(v67, &qword_27CE58388);
        v62 = v115;
      }

      else
      {
        v88 = v112;
        v89 = v110;
        sub_21D322CD4(&v112[v65], v110, type metadata accessor for TTRRemindersListViewModel.SectionID);
        v90 = v108;
        v94 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v108, v89);
        sub_21D322C74(v89, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D322C74(v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D322C74(v90, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D0CF7E0(v88, &unk_27CE5CD70);
        v62 = v115;
        v51 = v113;
        if (v94)
        {
          goto LABEL_84;
        }
      }

LABEL_81:
      sub_21D322C74(v62, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D322C74(v118, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      goto LABEL_82;
    }

    sub_21D322C74(v28, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v70 = v68(&v67[v65], 1, v69);
    v51 = v113;
    v41 = v114;
    if (v70 != 1)
    {
      goto LABEL_54;
    }

    sub_21D0CF7E0(v67, &unk_27CE5CD70);
    v62 = v115;
LABEL_84:
    sub_21D322C74(v62, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v92 = v118;
    v91 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
LABEL_85:
    sub_21D322C74(v92, v91);
LABEL_86:
    sub_21D322C74(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_87:
    sub_21D322C74(v123, type metadata accessor for TTRRemindersListViewModel.ItemID);
    a2 = v120;
    a1 = v99;
    v32 = v98;
    v34 = v97;
    v36 = v96;
    v40 = v95;
    v39 = v101;
    v35 = v100;
  }

  while (v101);
LABEL_8:
  v43 = v35;
  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v44 >= v40)
    {
      return;
    }

    v45 = *(v36 + 8 * v44);
    ++v43;
    if (v45)
    {
      v101 = (v45 - 1) & v45;
      v100 = v44;
      v42 = __clz(__rbit64(v45)) | (v44 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_21D321D9C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
    v14 = *v13;
    v15 = v13[1];
    sub_21DBFC7DC();
    MEMORY[0x223D44FA0](v14);
    MEMORY[0x223D44FA0](v15);
    result = sub_21DBFC82C();
    v16 = -1 << *(a2 + 32);
    v17 = result & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(a2 + 48) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      if (v21 == v14 && v20 == v15)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D321F28(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  if (v7)
  {
    do
    {
      v10 = __clz(__rbit64(v7));
      v24 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(result + 48) + 24 * (v10 | (v3 << 6));
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v14);
      MEMORY[0x223D44FA0](v15);
      MEMORY[0x223D44FA0](v16);
      v17 = sub_21DBFC82C();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }

      v20 = ~v18;
      while (1)
      {
        v21 = *(a2 + 48) + 24 * v19;
        v22 = *v21 == v14 && *(v21 + 8) == v15;
        if (v22 && ((v16 ^ *(v21 + 16)) & 1) == 0)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return 0;
        }
      }

      result = v23;
      v7 = v24;
    }

    while (v24);
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v24 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D3220EC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_21DBFC7DC();
    sub_21DBF8E0C();
    sub_21DBFA27C();
    v16 = sub_21DBFC82C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_21DBFC64C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D3222A4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_21DBFC7DC();
    MEMORY[0x223D44FA0](v13);
    result = sub_21DBFC82C();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D32243C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v4)
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v7 = a2;
      }

      sub_21D322850(v7, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v8 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v9 = a1 + 56;
        v10 = 1 << *(a1 + 32);
        if (v10 < 64)
        {
          v11 = ~(-1 << v10);
        }

        else
        {
          v11 = -1;
        }

        v12 = v11 & *(a1 + 56);
        v6 = sub_21D0D8CF0(0, a3);
        v13 = 0;
        v14 = (v10 + 63) >> 6;
        v15 = a2 + 56;
        v28 = v14;
        v16 = a1;
        if (!v12)
        {
LABEL_24:
          v18 = v13;
          while (1)
          {
            v13 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              break;
            }

            if (v13 >= v14)
            {
              goto LABEL_36;
            }

            v19 = *(v9 + 8 * v13);
            ++v18;
            if (v19)
            {
              v17 = __clz(__rbit64(v19));
              v29 = (v19 - 1) & v19;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v6, v5);
        }

        while (1)
        {
          v17 = __clz(__rbit64(v12));
          v29 = (v12 - 1) & v12;
LABEL_29:
          v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
          v21 = sub_21DBFB62C();
          v22 = -1 << *(a2 + 32);
          v23 = v21 & ~v22;
          if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            break;
          }

          v24 = ~v22;
          while (1)
          {
            v25 = *(*(a2 + 48) + 8 * v23);
            v26 = sub_21DBFB63C();

            if (v26)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v14 = v28;
          v12 = v29;
          v16 = a1;
          if (!v29)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v8 = 0;
    }

    return v8 & 1;
  }

  if (a1 < 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v4)
  {
    sub_21D322850(v5, a2);
    return v8 & 1;
  }

  if (a2 < 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](v6, v5);
}

uint64_t sub_21D32268C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
LABEL_7:
  if (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_21DBFC7DC();
    if (v13 == 2)
    {
      MEMORY[0x223D44FA0](1);
    }

    else
    {
      MEMORY[0x223D44FA0](0);
      sub_21DBFC7FC();
    }

    result = sub_21DBFC82C();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if ((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (1)
      {
        v17 = *(*(a2 + 48) + v15);
        if (v17 == 2)
        {
          if (v13 == 2)
          {
            goto LABEL_7;
          }
        }

        else if (v13 != 2 && ((v17 ^ v13) & 1) == 0)
        {
          goto LABEL_7;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_21D322850(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_21DBFBD7C())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_21DBFBDCC();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21D322950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D3229C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t keypath_get_6Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_21D0D3954(v4 + v5, a3, &qword_27CE5FB90);
}

uint64_t type metadata accessor for TTRIRemindersListCellPresentationStatesPresenterCapability()
{
  result = qword_280D0CA90;
  if (!qword_280D0CA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D322AF8()
{
  sub_21D322C1C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRIRemindersListCellPresentationStates();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21D322C1C()
{
  if (!qword_280D14240)
  {
    type metadata accessor for TTRRemindersListViewModel.ItemID(255);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D14240);
    }
  }
}

uint64_t sub_21D322C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D322CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D322D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D322DA8(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_21DBF54CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_21D0D3954(v1, &v11 - v8, &qword_27CE5EA20);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11;
  }

  return result;
}

uint64_t sub_21D322F8C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v18[1] = a2;
  v19 = a1;
  v7 = sub_21DBF563C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v18 - v12;
  sub_21D0D3954(v5, v18 - v12, &qword_27CE58D68);
  v14 = 1;
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    v15 = a3;
LABEL_5:
    v16 = sub_21DBF509C();
    return (*(*(v16 - 8) + 56))(v15, v14, 1, v16);
  }

  (*(v8 + 32))(v10, v13, v7);
  v15 = a3;
  v19(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t sub_21D3231BC(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v24 = a1;
  v25 = sub_21DBF5A0C();
  MEMORY[0x28223BE20](v25);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v22 = v6 + 16;
  v23 = v6;
  v21 = (v6 + 8);
  v26 = a3;
  result = sub_21DBF8E0C();
  v15 = 0;
  while (v12)
  {
    v16 = v25;
LABEL_11:
    (*(v23 + 16))(v8, *(v26 + 48) + *(v23 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
    v18 = v24(v8);
    if (v3)
    {
      (*v21)(v8, v16);

      return a2 & 1;
    }

    v19 = v18;
    v12 &= v12 - 1;
    result = (*v21)(v8, v16);
    if ((v19 & 1) == 0)
    {
      a2 = 0;
LABEL_15:

      return a2 & 1;
    }
  }

  v16 = v25;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      a2 = 1;
      goto LABEL_15;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D3233D4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D44740](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);

      if (v3)
      {
        v10 = 0;
        return v10 & 1;
      }

      if ((v10 & (v9 != i)) == 0)
      {
        return v10 & 1;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v10 = 1;
  return v10 & 1;
}

uint64_t sub_21D3234F8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_21DBF8E0C();
      sub_21D29B8E4(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_21D323614(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D17880);
    sub_21D183A0C();
    sub_21DBFAB5C();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_21D0CFAF8();
      return;
    }

    while (1)
    {
      sub_21D29B0D0(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_21DBFBDBC())
      {
        sub_21D0D8CF0(0, &qword_280D17880);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_21D32380C(uint64_t result, uint64_t (*a2)(char *, void))
{
  v3 = result;
  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      result = a2(&v12, *(*(v3 + 48) + (v11 | (v10 << 6))));
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }
}

uint64_t sub_21D3238F8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5A890);
  v1 = __swift_project_value_buffer(v0, qword_27CE5A890);
  if (qword_280D0C890 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id INTaskList.remList(store:)(void *a1)
{

  return sub_21D328328(a1, INTaskList.listID.getter, &selRef_fetchListWithObjectID_error_, "Attempting to acquire REMList from INTaskList whose listID is nil", "Error obtaining REMList from INTaskList {error: %s}");
}

uint64_t INTaskList.init(list:includeReminders:)(id a1, char a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v25[0] = 0;
    v3 = [a1 fetchRemindersAndSubtasksWithError_];
    v4 = v25[0];
    if (v3)
    {
      v5 = v3;
      sub_21D0D8CF0(0, &qword_280D17860);
      v6 = sub_21DBFA5EC();
      v7 = v4;

      v8 = v6;
    }

    else
    {
      v9 = v25[0];
      v10 = sub_21DBF52DC();

      swift_willThrow();
      if (qword_27CE56618 != -1)
      {
        swift_once();
      }

      v11 = sub_21DBF84BC();
      __swift_project_value_buffer(v11, qword_27CE5A890);
      v12 = a1;
      v13 = v10;
      v14 = sub_21DBF84AC();
      v15 = sub_21DBFAEBC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v25[0] = v18;
        *v16 = 138412546;
        v19 = [v12 objectID];
        *(v16 + 4) = v19;
        *v17 = v19;
        *(v16 + 12) = 2080;
        swift_getErrorValue();
        v20 = sub_21DBFC74C();
        v22 = sub_21D0CDFB4(v20, v21, v25);

        *(v16 + 14) = v22;
        _os_log_impl(&dword_21D0C9000, v14, v15, "Error fetching reminders for list {listID: %@, error: %s", v16, 0x16u);
        sub_21D0CF7E0(v17, &unk_27CE60070);
        MEMORY[0x223D46520](v17, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x223D46520](v18, -1, -1);
        MEMORY[0x223D46520](v16, -1, -1);
      }

      v8 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v23 = sub_21D333AA8(a1, v8);

  return v23;
}

uint64_t INTaskList.init(list:reminders:)(void *a1, unint64_t a2)
{
  v3 = sub_21D333AA8(a1, a2);

  return v3;
}

id INTask.init(reminder:)(void *a1)
{
  v2 = sub_21DBF56BC();
  v82 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v84 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_21DBF5A2C();
  v89 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_21DBF563C();
  v77 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21DBF509C();
  v76 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D324D9C();
  v81 = v10;
  sub_21D325AB4();
  v80 = v11;
  v12 = [a1 titleAsString];
  v83 = v2;
  if (v12)
  {
    v13 = v12;
    sub_21DBFA16C();
  }

  v14 = objc_allocWithZone(MEMORY[0x277CD4188]);
  v15 = sub_21DBFA12C();

  v79 = [v14 initWithSpokenPhrase_];

  v78 = [a1 isCompleted];
  v16 = [a1 creationDate];
  sub_21DBF55FC();

  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
  v17 = sub_21DBF5A0C();
  v18 = *(v17 - 8);
  v19 = v18;
  v88 = a1;
  v20 = *(v18 + 72);
  v21 = *(v18 + 80);
  v73 = ((v21 + 32) & ~v21) + 6 * v20;
  v74 = v21;
  v22 = (v21 + 32) & ~v21;
  v72 = v22;
  v23 = swift_allocObject();
  v71 = xmmword_21DC10990;
  *(v23 + 16) = xmmword_21DC10990;
  v70 = *MEMORY[0x277CC9988];
  v24 = *(v19 + 104);
  v24(v23 + v22);
  v69 = *MEMORY[0x277CC9998];
  v24(v23 + v22 + v20);
  v65 = 2 * v20;
  v68 = *MEMORY[0x277CC9968];
  v24(v23 + v22 + 2 * v20);
  v67 = 3 * v20;
  v66 = *MEMORY[0x277CC9980];
  v24(v23 + v22 + 3 * v20);
  v61 = 4 * v20;
  v64 = *MEMORY[0x277CC99A0];
  v24(v23 + v22 + 4 * v20);
  v63 = 5 * v20;
  v62 = *MEMORY[0x277CC99A8];
  v24(v23 + v22 + 5 * v20);
  sub_21D1D0F50(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_21DBF58DC();

  v25 = *(v89 + 8);
  v89 += 8;
  v60 = v25;
  v58 = v5;
  v25(v5, v87);
  v59 = v77[1];
  v59(v7, v86);
  v26 = sub_21DBF4EDC();
  v76 = *(v76 + 8);
  v77 = v26;
  (v76)(v9, v85);
  v27 = [v88 lastModifiedDate];
  sub_21DBF55FC();

  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v28 = swift_allocObject();
  *(v28 + 16) = v71;
  v29 = v28 + v72;
  (v24)(v28 + v72, v70, v17);
  v30 = v29 + v20;
  v31 = v88;
  (v24)(v30, v69, v17);
  (v24)(v29 + v65, v68, v17);
  (v24)(v29 + v67, v66, v17);
  (v24)(v29 + v61, v64, v17);
  (v24)(v29 + v63, v62, v17);
  sub_21D1D0F50(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = v58;
  sub_21DBF58DC();

  v60(v32, v87);
  v59(v7, v86);
  v33 = sub_21DBF4EDC();
  (v76)(v9, v85);
  v34 = [v31 objectID];
  v35 = [v34 uuid];

  v36 = v84;
  sub_21DBF568C();

  sub_21DBF565C();
  v37 = v83;
  v38 = *(v82 + 8);
  v38(v36, v83);
  v39 = sub_21DBFA12C();

  v40 = [v31 flaggedContext];
  if (v40 && (v41 = v40, v42 = [v40 flagged], v41, v42 > 0))
  {
    v43 = 2;
  }

  else
  {
    v43 = 1;
  }

  v44 = [v31 parentReminder];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 objectID];

    if (v46)
    {
      v47 = [v46 uuid];

      v48 = v84;
      sub_21DBF568C();

      sub_21DBF565C();
      v38(v48, v37);
      v46 = sub_21DBFA12C();
    }
  }

  else
  {
    v46 = 0;
  }

  if (v78)
  {
    v49 = 2;
  }

  else
  {
    v49 = 1;
  }

  v50 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v57 = v43;
  v52 = v79;
  v51 = v80;
  v53 = v81;
  v54 = v77;
  v55 = [v50 initWithTitle:v79 status:v49 taskType:2 spatialEventTrigger:v81 temporalEventTrigger:v80 createdDateComponents:v77 modifiedDateComponents:v33 identifier:v39 priority:v57 contactEventTrigger:0 taskReference:0 parentIdentifier:v46];

  return v55;
}

uint64_t static INTaskList.isDefaultListTitle(title:)(uint64_t a1, uint64_t a2)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  if (sub_21DBF516C() == a1 && v4 == a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_21DBFC64C();
  }

  return v6 & 1;
}

id String.speakableString.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD4188]);
  v1 = sub_21DBFA12C();
  v2 = [v0 initWithSpokenPhrase_];

  return v2;
}

uint64_t INTaskList.init(smartList:reminders:)(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = sub_21DBFBD7C();
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  result = sub_21DBFC01C();
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  sub_21D0D8CF0(0, &qword_280D176C8);
  v6 = 0;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D44740](v6, a2);
    }

    else
    {
      v7 = *(a2 + 8 * v6 + 32);
    }

    ++v6;
    INTask.init(reminder:)(v7);
    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    sub_21DBFBFFC();
  }

  while (v4 != v6);
LABEL_11:

  v8 = [a1 name];
  if (!v8)
  {
    sub_21DBFA16C();
    v8 = sub_21DBFA12C();
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CD4188]) initWithSpokenPhrase_];

  _sSo10INTaskListC15RemindersUICoreE16encodeIdentifier3forSSSo08REMSmartB0C_tFZ_0(a1);
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_21D0D8CF0(0, &qword_280D176C8);
  v11 = sub_21DBFA5DC();

  v12 = sub_21DBFA12C();

  v13 = [v10 initWithTitle:v9 tasks:v11 groupName:0 createdDateComponents:0 modifiedDateComponents:0 identifier:v12];

  return v13;
}

uint64_t INTaskList.isTitleDefaultListTitle.getter()
{
  v1 = [v0 title];
  v2 = [v1 spokenPhrase];

  v3 = sub_21DBFA16C();
  v5 = v4;

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  if (v3 == sub_21DBF516C() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();
  }

  return v8 & 1;
}

Swift::tuple_isSmartListID_Bool_decodedIdentifier_String_optional __swiftcall INTaskList.decodeIdentifier()()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21DBFA16C();
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initWithString_];

    if (v6)
    {
      v7 = [v6 scheme];
      if (v7)
      {
        v8 = v7;
        v9 = sub_21DBFA16C();
        v11 = v10;

        if (v9 == 7107427 && v11 == 0xE300000000000000)
        {

          v13 = 1;
        }

        else
        {
          v13 = sub_21DBFC64C();
        }

        v14 = [v6 host];
        if (v14)
        {
          v15 = v14;

          v3 = sub_21DBFA16C();
          v5 = v16;
        }
      }

      else
      {

        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    LOBYTE(v1) = v13 & 1;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v17 = v3;
  v18 = v5;
  result.value.decodedIdentifier._object = v18;
  result.value.decodedIdentifier._countAndFlagsBits = v17;
  result.value.isSmartListID = v1;
  return result;
}

void sub_21D324D9C()
{
  v0 = off_282EEAC18;
  v1 = sub_21D0D8CF0(0, &qword_280D17860);
  v2 = v0(v1, &protocol witness table for REMReminder);
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  v31 = v1;
  v32 = v0;
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = sub_21DBFBD7C();
  if (!v5)
  {
LABEL_20:

LABEL_21:
    v1 = v31;
    v0 = v32;
LABEL_22:
    v17 = v0(v1, &protocol witness table for REMReminder);
    if (!v17)
    {
      return;
    }

    v18 = v17;
    v19 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
LABEL_40:
      v20 = sub_21DBFBD7C();
      if (v20)
      {
LABEL_25:
        v21 = 0;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x223D44740](v21, v18);
          }

          else
          {
            if (v21 >= *(v19 + 16))
            {
              goto LABEL_39;
            }

            v22 = *(v18 + 8 * v21 + 32);
          }

          v23 = v22;
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v25 = [v22 trigger];
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v21;
          if (v24 == v20)
          {
            goto LABEL_41;
          }
        }

        v26 = [v23 trigger];
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = [v27 event];
          if (v28 >= 3)
          {
            goto LABEL_43;
          }

          [objc_allocWithZone(MEMORY[0x277CD4178]) initWithMobileSpace:1 event:v28];
        }

        else
        {
        }

        return;
      }
    }

    else
    {
      v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_25;
      }
    }

LABEL_41:

    return;
  }

LABEL_4:
  v6 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D44740](v6, v3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_18;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v10 = [v7 trigger];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_20;
    }
  }

  v11 = [v8 trigger];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

    goto LABEL_21;
  }

  v13 = v12;
  v14 = [v12 structuredLocation];
  v15 = sub_21DBFB3BC();

  v16 = [v13 proximity];
  if (v16 >= 3)
  {
LABEL_43:
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_27CE5A890);
    v30 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v30);
    sub_21DAEAB00("unknown event", 13, 2);
    __break(1u);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277CD4178]) initWithPlacemark:v15 event:v16];
  }
}

void sub_21D3251CC()
{
  v0 = off_282EEACF8[0];
  v1 = sub_21D0D8CF0(0, &qword_280D17770);
  v2 = (v0)(v1, &protocol witness table for REMReminderChangeItem);
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  v31 = v1;
  v32 = v0;
  if (!(v2 >> 62))
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = sub_21DBFBD7C();
  if (!v5)
  {
LABEL_20:

LABEL_21:
    v1 = v31;
    v0 = v32;
LABEL_22:
    v17 = (v0)(v1, &protocol witness table for REMReminderChangeItem);
    if (!v17)
    {
      return;
    }

    v18 = v17;
    v19 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
LABEL_40:
      v20 = sub_21DBFBD7C();
      if (v20)
      {
LABEL_25:
        v21 = 0;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x223D44740](v21, v18);
          }

          else
          {
            if (v21 >= *(v19 + 16))
            {
              goto LABEL_39;
            }

            v22 = *(v18 + 8 * v21 + 32);
          }

          v23 = v22;
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v25 = [v22 trigger];
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v21;
          if (v24 == v20)
          {
            goto LABEL_41;
          }
        }

        v26 = [v23 trigger];
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = [v27 event];
          if (v28 >= 3)
          {
            goto LABEL_43;
          }

          [objc_allocWithZone(MEMORY[0x277CD4178]) initWithMobileSpace:1 event:v28];
        }

        else
        {
        }

        return;
      }
    }

    else
    {
      v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_25;
      }
    }

LABEL_41:

    return;
  }

LABEL_4:
  v6 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D44740](v6, v3);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_18;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v10 = [v7 trigger];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_20;
    }
  }

  v11 = [v8 trigger];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

    goto LABEL_21;
  }

  v13 = v12;
  v14 = [v12 structuredLocation];
  v15 = sub_21DBFB3BC();

  v16 = [v13 proximity];
  if (v16 >= 3)
  {
LABEL_43:
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v29 = sub_21DBF84BC();
    __swift_project_value_buffer(v29, qword_27CE5A890);
    v30 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v30);
    sub_21DAEAB00("unknown event", 13, 2);
    __break(1u);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277CD4178]) initWithPlacemark:v15 event:v16];
  }
}

INSpatialEventTrigger_optional __swiftcall TTRReminderProtocol.spatialEventTrigger()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 80);
  v5 = v4();
  if (!v5)
  {
LABEL_21:
    v22 = (v4)(v3, v2);
    if (!v22)
    {
      goto LABEL_46;
    }

    v23 = v22;
    v24 = v22 & 0xFFFFFFFFFFFFFF8;
    if (v22 >> 62)
    {
LABEL_39:
      v25 = sub_21DBFBD7C();
      if (v25)
      {
LABEL_24:
        v26 = 0;
        while (1)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x223D44740](v26, v23);
          }

          else
          {
            if (v26 >= *(v24 + 16))
            {
              goto LABEL_38;
            }

            v27 = *(v23 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v30 = [v27 trigger];
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v26;
          if (v29 == v25)
          {
            goto LABEL_40;
          }
        }

        v31 = [v28 trigger];
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (!v32)
        {

          goto LABEL_41;
        }

        v33 = [v32 event];
        if (v33 >= 3)
        {
          goto LABEL_43;
        }

        v34 = [objc_allocWithZone(MEMORY[0x277CD4178]) initWithMobileSpace:1 event:v33];

        v22 = v34;
        goto LABEL_46;
      }
    }

    else
    {
      v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_24;
      }
    }

LABEL_40:

LABEL_41:
    v22 = 0;
    goto LABEL_46;
  }

  v6 = v5;
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  v37 = v4;
  v38 = v3;
  if (!(v5 >> 62))
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

LABEL_19:
  v8 = sub_21DBFBD7C();
  if (!v8)
  {
LABEL_20:

    v4 = v37;
    v3 = v38;
    goto LABEL_21;
  }

LABEL_4:
  v9 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223D44740](v9, v6);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_18;
      }

      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v13 = [v10 trigger];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_20;
    }
  }

  v14 = [v11 trigger];
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  v4 = v37;
  v3 = v38;
  if (!v15)
  {

    goto LABEL_21;
  }

  v16 = v15;
  v17 = [v15 structuredLocation];
  v18 = sub_21DBFB3BC();

  v19 = [v16 proximity];
  if (v19 >= 3)
  {
LABEL_43:
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v35 = sub_21DBF84BC();
    __swift_project_value_buffer(v35, qword_27CE5A890);
    v36 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v36);
    sub_21DAEAB00("unknown event", 13, 2);
    __break(1u);
  }

  else
  {
    v20 = [objc_allocWithZone(MEMORY[0x277CD4178]) initWithPlacemark:v18 event:v19];

    v22 = v20;
  }

LABEL_46:
  result.value.super.isa = v22;
  result.is_nil = v21;
  return result;
}

void sub_21D325A14(unint64_t a1)
{
  if (a1 >= 3)
  {
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_27CE5A890);
    v2 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v2);
    sub_21DAEAB00("unknown event", 13, 2);
    __break(1u);
  }
}

void sub_21D325AB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v2 - 8);
  v99 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v102 = &v92 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v6 - 8);
  v106 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v103 = &v92 - v9;
  MEMORY[0x28223BE20](v10);
  v110 = &v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v92 - v13;
  v111 = sub_21DBF563C();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v100 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v92 - v16;
  v18 = sub_21DBF509C();
  v112 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v117 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DBF5C4C();
  v104 = *(v20 - 8);
  v105 = v20;
  MEMORY[0x28223BE20](v20);
  v116 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21DBF583C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_21DBF5A2C();
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v0;
  v27 = off_282EEAC50;
  v28 = sub_21D0D8CF0(0, &qword_280D17860);
  v29 = v27(v28, &protocol witness table for REMReminder);
  if (!v29)
  {
    v33 = 0;
    v31 = v117;
    goto LABEL_11;
  }

  v30 = v29 & 0xFFFFFFFFFFFFFF8;
  if (v29 >> 62)
  {
    v34 = v29;
    v35 = sub_21DBFBD7C();
    v29 = v34;
    v31 = v117;
    if (v35)
    {
      goto LABEL_4;
    }

LABEL_10:

    v33 = 0;
    goto LABEL_11;
  }

  v31 = v117;
  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x223D44740](0);
  }

  else
  {
    if (!*(v30 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v32 = *(v29 + 32);
  }

  v33 = v32;

LABEL_11:
  v36 = [v1 displayDate];
  if (!v36)
  {

    return;
  }

  v108 = v18;
  (*(v23 + 104))(v25, *MEMORY[0x277CC9830], v22);
  v37 = v114;
  sub_21DBF584C();
  (*(v23 + 8))(v25, v22);
  v38 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  v39 = objc_opt_self();
  v40 = [v36 date];
  sub_21DBF55FC();

  v41 = sub_21DBF55BC();
  v42 = v109;
  v98 = *(v109 + 8);
  v96 = v109 + 8;
  v98(v17, v111);
  v43 = sub_21DBF5C0C();
  v101 = v36;
  v44 = [v36 isAllDay];
  v97 = v39;
  v45 = [v39 rem:v41 dateComponentsWithDate:v43 timeZone:v44 isAllDay:?];

  sub_21DBF4EFC();
  v46 = v113;
  v47 = *(v113 + 16);
  v48 = v107;
  v49 = v115;
  v47(v107, v37, v115);
  v50 = *(v46 + 56);
  v50(v48, 0, 1, v49);
  sub_21DBF506C();
  if (!v33)
  {
    v64 = v112;
    v65 = v103;
    v66 = v108;
    (*(v112 + 16))(v103, v31, v108);
    v67 = *(v64 + 56);
    v67(v65, 0, 1, v66);
    v68 = v106;
    v67(v106, 1, 1, v66);
    v69 = objc_allocWithZone(MEMORY[0x277CD3B68]);
    v70 = sub_21D332A2C(v65, v68, 0);
    v53 = 0;
LABEL_27:
    [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];

    (*(v64 + 8))(v31, v66);
    (*(v104 + 8))(v116, v105);
    (*(v113 + 8))(v114, v115);
    return;
  }

  v94 = v50;
  v51 = v112 + 56;
  v52 = *(v112 + 56);
  v52(v110, 1, 1, v108);
  v53 = v33;
  v54 = [v53 recurrenceEnd];
  if (!v54)
  {
    v61 = v102;
    (*(v42 + 56))(v102, 1, 1, v111);
    v62 = v103;
LABEL_21:
    sub_21D0CF7E0(v61, &qword_27CE58D68);
    v64 = v112;
    goto LABEL_25;
  }

  v93 = v47;
  v95 = v51;
  v55 = v54;
  v56 = [v54 endDate];

  v57 = v111;
  v58 = v52;
  if (v56)
  {
    v59 = v99;
    sub_21DBF55FC();

    v60 = 0;
    v61 = v102;
    v62 = v103;
  }

  else
  {
    v60 = 1;
    v61 = v102;
    v62 = v103;
    v59 = v99;
  }

  v63 = v100;
  v71 = v109;
  (*(v109 + 56))(v59, v60, 1, v57);
  v72 = v59;
  v73 = v71;
  sub_21D0D523C(v72, v61, &qword_27CE58D68);
  v74 = (*(v71 + 48))(v61, 1, v57);
  v52 = v58;
  if (v74 == 1)
  {
    goto LABEL_21;
  }

  (*(v73 + 32))(v63, v61, v57);
  v75 = sub_21DBF55BC();
  v76 = sub_21DBF5C0C();
  v77 = [v101 isAllDay];
  v78 = [v97 rem:v75 dateComponentsWithDate:v76 timeZone:v77 isAllDay:?];

  sub_21DBF4EFC();
  v79 = v108;
  v58(v62, 0, 1, v108);
  v80 = v110;
  sub_21D334320(v62, v110);
  v64 = v112;
  if (!(*(v112 + 48))(v80, 1, v79))
  {
    v81 = v107;
    v93(v107, v114, v115);
    v94(v81, 0, 1, v115);
    sub_21DBF506C();
  }

  v98(v100, v57);
LABEL_25:
  v82 = [v53 interval];
  v83 = [v53 frequency];
  v66 = v108;
  if (v83 < 5)
  {
    v84 = [objc_opt_self() rem:v82 recurrenceRuleWithInterval:qword_21DC10B30[v83] frequency:?];
    v85 = v117;
    (*(v64 + 16))(v62, v117, v66);
    v52(v62, 0, 1, v66);
    v31 = v85;
    v86 = v110;
    v87 = v106;
    sub_21D0D3954(v110, v106, &qword_27CE58D60);
    v88 = objc_allocWithZone(MEMORY[0x277CD3B68]);
    v89 = sub_21D332A2C(v62, v87, v84);

    v70 = v89;
    sub_21D0CF7E0(v86, &qword_27CE58D60);
    goto LABEL_27;
  }

LABEL_30:
  if (qword_27CE56618 != -1)
  {
    swift_once();
  }

  v90 = sub_21DBF84BC();
  __swift_project_value_buffer(v90, qword_27CE5A890);
  v91 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v91);
  sub_21DAEAB00("Unknown REMRecurrenceFrequency", 30, 2);
  __break(1u);
}

void sub_21D326728()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v2 - 8);
  v99 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v102 = &v92 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v6 - 8);
  v106 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v103 = &v92 - v9;
  MEMORY[0x28223BE20](v10);
  v110 = &v92 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v92 - v13;
  v111 = sub_21DBF563C();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v100 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v92 - v16;
  v18 = sub_21DBF509C();
  v112 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v117 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21DBF5C4C();
  v104 = *(v20 - 8);
  v105 = v20;
  MEMORY[0x28223BE20](v20);
  v116 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21DBF583C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_21DBF5A2C();
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v0;
  v27 = off_282EEAD30;
  v28 = sub_21D0D8CF0(0, &qword_280D17770);
  v29 = v27(v28, &protocol witness table for REMReminderChangeItem);
  if (!v29)
  {
    v33 = 0;
    v31 = v117;
    goto LABEL_11;
  }

  v30 = v29 & 0xFFFFFFFFFFFFFF8;
  if (v29 >> 62)
  {
    v34 = v29;
    v35 = sub_21DBFBD7C();
    v29 = v34;
    v31 = v117;
    if (v35)
    {
      goto LABEL_4;
    }

LABEL_10:

    v33 = 0;
    goto LABEL_11;
  }

  v31 = v117;
  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x223D44740](0);
  }

  else
  {
    if (!*(v30 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v32 = *(v29 + 32);
  }

  v33 = v32;

LABEL_11:
  v36 = [v1 displayDate];
  if (!v36)
  {

    return;
  }

  v108 = v18;
  (*(v23 + 104))(v25, *MEMORY[0x277CC9830], v22);
  v37 = v114;
  sub_21DBF584C();
  (*(v23 + 8))(v25, v22);
  v38 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  v39 = objc_opt_self();
  v40 = [v36 date];
  sub_21DBF55FC();

  v41 = sub_21DBF55BC();
  v42 = v109;
  v98 = *(v109 + 8);
  v96 = v109 + 8;
  v98(v17, v111);
  v43 = sub_21DBF5C0C();
  v101 = v36;
  v44 = [v36 isAllDay];
  v97 = v39;
  v45 = [v39 rem:v41 dateComponentsWithDate:v43 timeZone:v44 isAllDay:?];

  sub_21DBF4EFC();
  v46 = v113;
  v47 = *(v113 + 16);
  v48 = v107;
  v49 = v115;
  v47(v107, v37, v115);
  v50 = *(v46 + 56);
  v50(v48, 0, 1, v49);
  sub_21DBF506C();
  if (!v33)
  {
    v64 = v112;
    v65 = v103;
    v66 = v108;
    (*(v112 + 16))(v103, v31, v108);
    v67 = *(v64 + 56);
    v67(v65, 0, 1, v66);
    v68 = v106;
    v67(v106, 1, 1, v66);
    v69 = objc_allocWithZone(MEMORY[0x277CD3B68]);
    v70 = sub_21D332A2C(v65, v68, 0);
    v53 = 0;
LABEL_27:
    [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];

    (*(v64 + 8))(v31, v66);
    (*(v104 + 8))(v116, v105);
    (*(v113 + 8))(v114, v115);
    return;
  }

  v94 = v50;
  v51 = v112 + 56;
  v52 = *(v112 + 56);
  v52(v110, 1, 1, v108);
  v53 = v33;
  v54 = [v53 recurrenceEnd];
  if (!v54)
  {
    v61 = v102;
    (*(v42 + 56))(v102, 1, 1, v111);
    v62 = v103;
LABEL_21:
    sub_21D0CF7E0(v61, &qword_27CE58D68);
    v64 = v112;
    goto LABEL_25;
  }

  v93 = v47;
  v95 = v51;
  v55 = v54;
  v56 = [v54 endDate];

  v57 = v111;
  v58 = v52;
  if (v56)
  {
    v59 = v99;
    sub_21DBF55FC();

    v60 = 0;
    v61 = v102;
    v62 = v103;
  }

  else
  {
    v60 = 1;
    v61 = v102;
    v62 = v103;
    v59 = v99;
  }

  v63 = v100;
  v71 = v109;
  (*(v109 + 56))(v59, v60, 1, v57);
  v72 = v59;
  v73 = v71;
  sub_21D0D523C(v72, v61, &qword_27CE58D68);
  v74 = (*(v71 + 48))(v61, 1, v57);
  v52 = v58;
  if (v74 == 1)
  {
    goto LABEL_21;
  }

  (*(v73 + 32))(v63, v61, v57);
  v75 = sub_21DBF55BC();
  v76 = sub_21DBF5C0C();
  v77 = [v101 isAllDay];
  v78 = [v97 rem:v75 dateComponentsWithDate:v76 timeZone:v77 isAllDay:?];

  sub_21DBF4EFC();
  v79 = v108;
  v58(v62, 0, 1, v108);
  v80 = v110;
  sub_21D334320(v62, v110);
  v64 = v112;
  if (!(*(v112 + 48))(v80, 1, v79))
  {
    v81 = v107;
    v93(v107, v114, v115);
    v94(v81, 0, 1, v115);
    sub_21DBF506C();
  }

  v98(v100, v57);
LABEL_25:
  v82 = [v53 interval];
  v83 = [v53 frequency];
  v66 = v108;
  if (v83 < 5)
  {
    v84 = [objc_opt_self() rem:v82 recurrenceRuleWithInterval:qword_21DC10B30[v83] frequency:?];
    v85 = v117;
    (*(v64 + 16))(v62, v117, v66);
    v52(v62, 0, 1, v66);
    v31 = v85;
    v86 = v110;
    v87 = v106;
    sub_21D0D3954(v110, v106, &qword_27CE58D60);
    v88 = objc_allocWithZone(MEMORY[0x277CD3B68]);
    v89 = sub_21D332A2C(v62, v87, v84);

    v70 = v89;
    sub_21D0CF7E0(v86, &qword_27CE58D60);
    goto LABEL_27;
  }

LABEL_30:
  if (qword_27CE56618 != -1)
  {
    swift_once();
  }

  v90 = sub_21DBF84BC();
  __swift_project_value_buffer(v90, qword_27CE5A890);
  v91 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v91);
  sub_21DAEAB00("Unknown REMRecurrenceFrequency", 30, 2);
  __break(1u);
}

INTemporalEventTrigger_optional __swiftcall TTRReminderProtocol.temporalEventTrigger()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v108 = &v98 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v8 - 8);
  v111 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v113 = &v98 - v11;
  MEMORY[0x28223BE20](v12);
  v115 = &v98 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v14 - 8);
  v112 = &v98 - v15;
  v16 = sub_21DBF563C();
  v116 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v104 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v98 - v19;
  v114 = sub_21DBF509C();
  v118 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v117 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21DBF5C4C();
  v109 = *(v22 - 8);
  v110 = v22;
  MEMORY[0x28223BE20](v22);
  v122 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21DBF583C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_21DBF5A2C();
  v119 = *(v121 - 8);
  v28 = MEMORY[0x28223BE20](v121);
  v120 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = (*(v2 + 136))(v3, v2, v28);
  if (!v30)
  {
    goto LABEL_10;
  }

  v31 = v30;
  v32 = v30 & 0xFFFFFFFFFFFFFF8;
  if (v30 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v34 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v31 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x223D44740](0, v31);
  }

  else
  {
    if (!*(v32 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    v33 = *(v31 + 32);
  }

  v34 = v33;

LABEL_11:
  v35 = (*(v2 + 104))(v3, v2);
  if (!v35)
  {

    v67 = 0;
LABEL_28:
    v95 = v67;
    goto LABEL_34;
  }

  v36 = v35;
  (*(v25 + 104))(v27, *MEMORY[0x277CC9830], v24);
  v37 = v16;
  v38 = v120;
  sub_21DBF584C();
  (*(v25 + 8))(v27, v24);
  v39 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();

  v40 = objc_opt_self();
  v41 = [v36 date];
  sub_21DBF55FC();

  v42 = sub_21DBF55BC();
  v43 = *(v116 + 8);
  v106 = v37;
  v102 = v43;
  v43(v20, v37);
  v44 = sub_21DBF5C0C();
  v107 = v36;
  v45 = [v36 isAllDay];
  v101 = v40;
  v46 = [v40 rem:v42 dateComponentsWithDate:v44 timeZone:v45 isAllDay:?];

  v47 = v117;
  sub_21DBF4EFC();

  v48 = v119;
  v49 = *(v119 + 16);
  v50 = v112;
  v51 = v121;
  v49(v112, v38, v121);
  v52 = *(v48 + 56);
  v52(v50, 0, 1, v51);
  sub_21DBF506C();
  if (!v34)
  {
    v64 = v118;
    v68 = v113;
    v54 = v114;
    (*(v118 + 16))(v113, v47, v114);
    v69 = *(v64 + 56);
    v69(v68, 0, 1, v54);
    v70 = v111;
    v69(v111, 1, 1, v54);
    v71 = objc_allocWithZone(MEMORY[0x277CD3B68]);
    v72 = sub_21D332A2C(v68, v70, 0);
    v55 = 0;
    v73 = v47;
LABEL_27:
    v67 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];

    (*(v64 + 8))(v73, v54);
    (*(v109 + 8))(v122, v110);
    (*(v119 + 8))(v120, v121);
    goto LABEL_28;
  }

  v99 = v49;
  v53 = v118 + 56;
  v54 = v114;
  v103 = *(v118 + 56);
  v103(v115, 1, 1, v114);
  v55 = v34;
  v56 = [v55 recurrenceEnd];
  if (!v56)
  {
    v65 = v108;
    (*(v116 + 56))(v108, 1, 1, v106);
    v64 = v118;
LABEL_21:
    sub_21D0CF7E0(v65, &qword_27CE58D68);
    v76 = v103;
    goto LABEL_25;
  }

  v98 = v52;
  v57 = v56;
  v58 = [v56 endDate];

  v59 = v106;
  v100 = v53;
  if (v58)
  {
    v60 = v105;
    v61 = v106;
    sub_21DBF55FC();

    v59 = v61;
    v62 = v60;
    v63 = 0;
    v64 = v118;
    v65 = v108;
  }

  else
  {
    v63 = 1;
    v64 = v118;
    v65 = v108;
    v62 = v105;
  }

  v74 = v116;
  v75 = v59;
  (*(v116 + 56))(v62, v63, 1, v59);
  sub_21D0D523C(v62, v65, &qword_27CE58D68);
  if ((*(v74 + 48))(v65, 1, v75) == 1)
  {
    goto LABEL_21;
  }

  v77 = v104;
  (*(v74 + 32))(v104, v65, v106);
  v78 = v77;
  v79 = sub_21DBF55BC();
  v80 = sub_21DBF5C0C();
  v81 = [v107 isAllDay];
  v82 = [v101 rem:v79 dateComponentsWithDate:v80 timeZone:v81 isAllDay:?];

  v83 = v113;
  sub_21DBF4EFC();

  v54 = v114;
  v76 = v103;
  v103(v83, 0, 1, v114);
  v84 = v83;
  v85 = v115;
  sub_21D334320(v84, v115);
  if (!(*(v64 + 48))(v85, 1, v54))
  {
    v86 = v112;
    v99(v112, v120, v121);
    v98(v86, 0, 1, v121);
    v76 = v103;
    sub_21DBF506C();
  }

  v102(v78, v106);
LABEL_25:
  v87 = [v55 interval];
  v88 = [v55 frequency];
  v73 = v117;
  if (v88 < 5)
  {
    v89 = [objc_opt_self() rem:v87 recurrenceRuleWithInterval:qword_21DC10B30[v88] frequency:?];
    v90 = v113;
    (*(v64 + 16))(v113, v73, v54);
    v76(v90, 0, 1, v54);
    v91 = v115;
    v92 = v111;
    sub_21D0D3954(v115, v111, &qword_27CE58D60);
    v93 = objc_allocWithZone(MEMORY[0x277CD3B68]);
    v94 = sub_21D332A2C(v90, v92, v89);

    v72 = v94;
    sub_21D0CF7E0(v91, &qword_27CE58D60);
    goto LABEL_27;
  }

LABEL_31:
  if (qword_27CE56618 != -1)
  {
    swift_once();
  }

  v96 = sub_21DBF84BC();
  __swift_project_value_buffer(v96, qword_27CE5A890);
  v97 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v97);
  sub_21DAEAB00("Unknown REMRecurrenceFrequency", 30, 2);
  __break(1u);
LABEL_34:
  result.value.super.isa = v95;
  result.is_nil = v66;
  return result;
}

void REMRecurrenceFrequency.inRecurrenceFrequency.getter(unint64_t a1)
{
  if (a1 >= 5)
  {
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_27CE5A890);
    v2 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v2);
    sub_21DAEAB00("Unknown REMRecurrenceFrequency", 30, 2);
    __break(1u);
  }
}

id sub_21D32809C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_21DBF56BC();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 identifier];
  if (result)
  {
    v11 = result;
    sub_21DBFA16C();

    sub_21DBF564C();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_21D0CF7E0(v4, &qword_27CE58370);
      return 0;
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      v12 = objc_opt_self();
      v13 = sub_21DBF566C();
      v14 = [v12 objectIDWithUUID_];

      (*(v6 + 8))(v9, v5);
      return v14;
    }
  }

  return result;
}

id INTask.remReminder(store:)(void *a1)
{

  return sub_21D328328(a1, INTask.reminderID.getter, &selRef_fetchReminderWithObjectID_error_, "Attempting to acquire REMReminder from INTask whose reminderID is nil", "Error obtaining REMReminder from INTask {error: %s}");
}

id sub_21D328328(void *a1, uint64_t (*a2)(void), SEL *a3, const char *a4, const char *a5)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v9 = a2();
  if (!v9)
  {
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_27CE5A890);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAEBC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21D0C9000, v14, v15, a4, v16, 2u);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    return 0;
  }

  v10 = v9;
  v29[0] = 0;
  v11 = [a1 *a3];
  v12 = v29[0];
  if (!v11)
  {
    v17 = v12;
    v18 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_27CE5A890);
    v20 = v18;
    v21 = sub_21DBF84AC();
    v22 = sub_21DBFAEBC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29[0] = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = sub_21DBFC74C();
      v27 = sub_21D0CDFB4(v25, v26, v29);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_21D0C9000, v21, v22, a5, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223D46520](v24, -1, -1);
      MEMORY[0x223D46520](v23, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v11;
}

id INTask.init(reminderChangeItem:)(void *a1)
{
  v109 = sub_21DBF56BC();
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v108 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF5A2C();
  v97 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF563C();
  v106 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v104 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v99 = &v91 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v91 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v91 - v16;
  v18 = sub_21DBF509C();
  v95 = *(v18 - 8);
  v96 = v18;
  MEMORY[0x28223BE20](v18);
  v93 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v92 = &v91 - v21;
  sub_21D3251CC();
  v103 = v22;
  sub_21D326728();
  v102 = v23;
  v110 = a1;
  v24 = [a1 titleAsString];
  if (v24)
  {
    v25 = v24;
    sub_21DBFA16C();
  }

  v26 = objc_allocWithZone(MEMORY[0x277CD4188]);
  v27 = sub_21DBFA12C();

  v101 = [v26 initWithSpokenPhrase_];

  v28 = v110;
  v100 = [v110 isCompleted];
  v29 = [v28 creationDate];
  if (v29)
  {
    v30 = v29;
    sub_21DBF55FC();

    v31 = v106;
    v32 = v106[7];
    v32(v14, 0, 1, v6);
  }

  else
  {
    v31 = v106;
    v32 = v106[7];
    v32(v14, 1, 1, v6);
  }

  v33 = v105;
  sub_21D0D523C(v14, v17, &qword_27CE58D68);
  v98 = v31[6];
  if (v98(v17, 1, v6))
  {
    sub_21D0CF7E0(v17, &qword_27CE58D68);
    v34 = 0;
  }

  else
  {
    (v31[2])(v104, v17, v6);
    sub_21D0CF7E0(v17, &qword_27CE58D68);
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
    v35 = sub_21DBF5A0C();
    v36 = *(v35 - 8);
    v91 = v32;
    v37 = v36;
    v94 = v6;
    v38 = *(v36 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_21DC10990;
    v41 = v40 + v39;
    v42 = *(v37 + 104);
    v42(v41, *MEMORY[0x277CC9988], v35);
    v42(v41 + v38, *MEMORY[0x277CC9998], v35);
    v43 = v5;
    v42(v41 + 2 * v38, *MEMORY[0x277CC9968], v35);
    v42(v41 + 3 * v38, *MEMORY[0x277CC9980], v35);
    v42(v41 + 4 * v38, *MEMORY[0x277CC99A0], v35);
    v44 = 5 * v38;
    v6 = v94;
    v45 = v97;
    v42(v41 + v44, *MEMORY[0x277CC99A8], v35);
    sub_21D1D0F50(v40);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v46 = v92;
    v47 = v104;
    sub_21DBF58DC();
    v33 = v105;

    v48 = v45;
    v5 = v43;
    v31 = v106;
    (*(v48 + 8))(v5, v3);
    (v31[1])(v47, v6);
    v34 = sub_21DBF4EDC();
    v49 = v46;
    v32 = v91;
    (*(v95 + 8))(v49, v96);
  }

  v50 = [v110 lastModifiedDate];
  v51 = v107;
  if (v50)
  {
    v52 = v50;
    sub_21DBF55FC();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v32(v33, v53, 1, v6);
  v54 = v99;
  sub_21D0D523C(v33, v99, &qword_27CE58D68);
  if (v98(v54, 1, v6))
  {
    sub_21D0CF7E0(v54, &qword_27CE58D68);
    v55 = 0;
  }

  else
  {
    v56 = v31[2];
    v106 = v34;
    v57 = v104;
    v56(v104, v54, v6);
    sub_21D0CF7E0(v54, &qword_27CE58D68);
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
    v105 = v3;
    v58 = sub_21DBF5A0C();
    v59 = *(v58 - 8);
    v60 = *(v59 + 72);
    v61 = *(v59 + 80);
    v94 = v6;
    v62 = (v61 + 32) & ~v61;
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_21DC10990;
    v64 = v63 + v62;
    v65 = *(v59 + 104);
    v65(v64, *MEMORY[0x277CC9988], v58);
    v65(v64 + v60, *MEMORY[0x277CC9998], v58);
    v65(v64 + 2 * v60, *MEMORY[0x277CC9968], v58);
    v65(v64 + 3 * v60, *MEMORY[0x277CC9980], v58);
    v65(v64 + 4 * v60, *MEMORY[0x277CC99A0], v58);
    v51 = v107;
    v65(v64 + 5 * v60, *MEMORY[0x277CC99A8], v58);
    sub_21D1D0F50(v63);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v66 = v93;
    sub_21DBF58DC();

    (*(v97 + 8))(v5, v105);
    v67 = v57;
    v34 = v106;
    (v31[1])(v67, v94);
    v55 = sub_21DBF4EDC();
    (*(v95 + 8))(v66, v96);
  }

  v68 = v110;
  v69 = [v110 objectID];
  v70 = [v69 uuid];

  v71 = v108;
  sub_21DBF568C();

  sub_21DBF565C();
  v72 = *(v51 + 8);
  v72(v71, v109);
  v73 = sub_21DBFA12C();

  v74 = [v68 flaggedContext];
  if (v74 && (v75 = v74, v76 = [v74 flagged], v75, v76 > 0))
  {
    v77 = 2;
  }

  else
  {
    v77 = 1;
  }

  v78 = [v110 parentReminderID];
  if (v78)
  {
    v79 = v78;
    v80 = [v78 uuid];

    v81 = v108;
    sub_21DBF568C();

    sub_21DBF565C();
    v72(v81, v109);
    v82 = sub_21DBFA12C();
  }

  else
  {
    v82 = 0;
  }

  if (v100)
  {
    v83 = 2;
  }

  else
  {
    v83 = 1;
  }

  v84 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v90 = v77;
  v86 = v101;
  v85 = v102;
  v87 = v103;
  v88 = [v84 initWithTitle:v101 status:v83 taskType:2 spatialEventTrigger:v103 temporalEventTrigger:v102 createdDateComponents:v34 modifiedDateComponents:v55 identifier:v73 priority:v90 contactEventTrigger:0 taskReference:0 parentIdentifier:v82];

  return v88;
}

void *static INTask.disambiguateWithIncompleteReminders<A>(store:)(void *a1)
{
  v2 = _sSo6INTaskC15RemindersUICoreE18allIncompleteTasks5storeSayABGSo8REMStoreC_tFZ_0(a1);
  v3 = v2;
  v4 = (v2 >> 62);
  if (v2 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      v5 = sub_21DBFBD7C();
      goto LABEL_3;
    }

LABEL_28:

    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_27CE5A890);
    v23 = sub_21DBF84AC();
    v24 = sub_21DBFAEDC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21D0C9000, v23, v24, "disambiguateWithIncompleteReminders done with 0 results {result: .needsValue}", v25, 2u);
      MEMORY[0x223D46520](v25, -1, -1);
    }

    v26 = [swift_getObjCClassFromMetadata() needsValue];

    return v26;
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (v5 != 1)
  {
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE5A890);
    sub_21DBF8E0C();
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAEDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      if (v4)
      {
        v16 = sub_21DBFBD7C();
      }

      else
      {
        v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v15 + 4) = v16;

      _os_log_impl(&dword_21D0C9000, v13, v14, "disambiguateWithIncompleteReminders done with %ld results {result: .disambiguation}", v15, 0xCu);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    else
    {
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_21D0D8CF0(0, &qword_280D176C8);
    v18 = sub_21DBFA5DC();

    v19 = [ObjCClassFromMetadata disambiguationWithTasksToDisambiguate_];
LABEL_25:
    v21 = v19;

    return v21;
  }

  if (qword_27CE56618 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_27CE5A890);
  sub_21DBF8E0C();
  v7 = sub_21DBF84AC();
  v8 = sub_21DBFAEDC();

  if (!os_log_type_enabled(v7, v8))
  {

    v10 = v3 & 0xC000000000000001;
    goto LABEL_17;
  }

  v1 = swift_slowAlloc();
  result = swift_slowAlloc();
  v4 = result;
  *v1 = 138412290;
  v10 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_37;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v3 + 32); ; i = MEMORY[0x223D44740](0, v3))
    {
      *(v1 + 4) = i;
      *v4 = i;
      _os_log_impl(&dword_21D0C9000, v7, v8, "disambiguateWithIncompleteReminders done with 1 result {result: .success, task: %@}", v1, 0xCu);
      sub_21D0CF7E0(v4, &unk_27CE60070);
      MEMORY[0x223D46520](v4, -1, -1);
      MEMORY[0x223D46520](v1, -1, -1);

LABEL_17:
      if (v10)
      {
        break;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v3 + 32);
        goto LABEL_20;
      }

      __break(1u);
LABEL_37:
      ;
    }

    v17 = MEMORY[0x223D44740](0, v3);
LABEL_20:
    v18 = v17;

    v19 = [swift_getObjCClassFromMetadata() successWithResolvedTask_];
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

id static INTask.augmentWithSubtasks(reminders:)(unint64_t a1)
{
  v87[1] = *MEMORY[0x277D85DE8];
  v86 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_81;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v77 = 0;
    v82 = a1 & 0xC000000000000001;
    v79 = a1 & 0xFFFFFFFFFFFFFF8;
    v3 = MEMORY[0x277D84F98];
    v80 = a1;
    v78 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    v81 = v1;
    while (1)
    {
      if (v82)
      {
        a1 = MEMORY[0x223D44740](v2, v80);
      }

      else
      {
        if (v2 >= *(v79 + 16))
        {
          goto LABEL_79;
        }

        a1 = *(v78 + 8 * v2);
      }

      v8 = a1;
      v9 = __OFADD__(v2++, 1);
      if (v9)
      {
        break;
      }

      v10 = [a1 subtaskContext];
      v83 = v3;
      if (v10)
      {
        v87[0] = 0;
        v11 = v10;
        v12 = [v10 fetchRemindersWithError_];

        v13 = v87[0];
        if (!v12)
        {
          v32 = v87[0];
          v33 = sub_21DBF52DC();

          swift_willThrow();
          if (qword_27CE56618 != -1)
          {
            swift_once();
          }

          v77 = 0;
          v34 = sub_21DBF84BC();
          __swift_project_value_buffer(v34, qword_27CE5A890);
          v35 = v8;
          v36 = v33;
          v37 = sub_21DBF84AC();
          v38 = sub_21DBFAEBC();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v87[0] = v41;
            *v39 = 138412546;
            v42 = [v35 objectID];
            *(v39 + 4) = v42;
            *v40 = v42;
            *(v39 + 12) = 2080;
            swift_getErrorValue();
            v43 = sub_21DBFC74C();
            v45 = sub_21D0CDFB4(v43, v44, v87);

            *(v39 + 14) = v45;
            _os_log_impl(&dword_21D0C9000, v37, v38, "Error fetching subtasks from reminder {reminderID: %@, error: %s}", v39, 0x16u);
            sub_21D0CF7E0(v40, &unk_27CE60070);
            MEMORY[0x223D46520](v40, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v41);
            v46 = v41;
            v4 = MEMORY[0x277D84F90];
            MEMORY[0x223D46520](v46, -1, -1);
            MEMORY[0x223D46520](v39, -1, -1);
          }

          else
          {
          }

          v7 = v81;
          v3 = v83;
          goto LABEL_6;
        }

        sub_21D0D8CF0(0, &qword_280D17860);
        v14 = sub_21DBFA5EC();
        v15 = v13;
      }

      else
      {
        v14 = v4;
      }

      if (qword_27CE56618 != -1)
      {
        swift_once();
      }

      v16 = sub_21DBF84BC();
      __swift_project_value_buffer(v16, qword_27CE5A890);
      v6 = v8;
      sub_21DBF8E0C();
      v17 = sub_21DBF84AC();
      v18 = sub_21DBFAE9C();

      v19 = v14 >> 62;
      if (os_log_type_enabled(v17, v18))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412546;
        v22 = [v6 objectID];
        *(v20 + 4) = v22;
        *v21 = v22;
        *(v20 + 12) = 2048;
        if (v19)
        {
          v23 = sub_21DBFBD7C();
        }

        else
        {
          v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v20 + 14) = v23;

        _os_log_impl(&dword_21D0C9000, v17, v18, "Found subtasks for reminder {reminderID: %@, subtasks: %ld}", v20, 0x16u);
        sub_21D0CF7E0(v21, &unk_27CE60070);
        MEMORY[0x223D46520](v21, -1, -1);
        MEMORY[0x223D46520](v20, -1, -1);
      }

      else
      {
      }

      v24 = [v6 objectID];
      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87[0] = v83;
      a1 = sub_21D17E07C(v24);
      v27 = v83[2];
      v28 = (v26 & 1) == 0;
      v9 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v9)
      {
        goto LABEL_76;
      }

      v30 = v26;
      if (v83[3] < v29)
      {
        sub_21D219970(v29, isUniquelyReferenced_nonNull_native);
        a1 = sub_21D17E07C(v24);
        if ((v30 & 1) != (v31 & 1))
        {
          sub_21D0D8CF0(0, &qword_280D17880);
          result = sub_21DBFC70C();
          __break(1u);
          return result;
        }

LABEL_28:
        v3 = v87[0];
        if (v30)
        {
          goto LABEL_29;
        }

        goto LABEL_38;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }

      v47 = a1;
      sub_21D222B4C();
      a1 = v47;
      v3 = v87[0];
      if (v30)
      {
LABEL_29:
        *(v3[7] + 8 * a1) = v14;

        goto LABEL_40;
      }

LABEL_38:
      v3[(a1 >> 6) + 8] |= 1 << a1;
      *(v3[6] + 8 * a1) = v24;
      *(v3[7] + 8 * a1) = v14;
      v48 = v3[2];
      v9 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v9)
      {
        goto LABEL_78;
      }

      v3[2] = v49;
LABEL_40:
      if (v19)
      {
        v50 = sub_21DBFBD7C();
        if (v50)
        {
LABEL_42:
          v87[0] = v4;
          a1 = sub_21DBFC01C();
          if (v50 < 0)
          {
            goto LABEL_77;
          }

          v84 = v6;
          v51 = v4;
          v52 = v3;
          v53 = 0;
          do
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v54 = MEMORY[0x223D44740](v53, v14);
            }

            else
            {
              v54 = *(v14 + 8 * v53 + 32);
            }

            v55 = v54;
            ++v53;
            v56 = [v54 objectID];

            sub_21DBFBFEC();
            sub_21DBFC03C();
            sub_21DBFC04C();
            sub_21DBFBFFC();
          }

          while (v50 != v53);

          v5 = v87[0];
          v3 = v52;
          v4 = v51;
          v6 = v84;
          goto LABEL_5;
        }
      }

      else
      {
        v50 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v50)
        {
          goto LABEL_42;
        }
      }

      v5 = v4;
LABEL_5:
      sub_21D3339C8(v5, sub_21D29B0D0);

      v7 = v81;
LABEL_6:
      if (v2 == v7)
      {
        v85 = v3;
        v87[0] = v4;
        a1 = sub_21D0D8CF0(0, &qword_280D17880);
        v57 = 0;
        v58 = v86 + 56;
        while (1)
        {
          if (v82)
          {
            a1 = MEMORY[0x223D44740](v57, v80);
          }

          else
          {
            if (v57 >= *(v79 + 16))
            {
              goto LABEL_80;
            }

            a1 = *(v78 + 8 * v57);
          }

          v59 = a1;
          v9 = __OFADD__(v57++, 1);
          if (v9)
          {
            goto LABEL_75;
          }

          v60 = [a1 objectID];
          v61 = v60;
          if ((v86 & 0xC000000000000001) == 0)
          {
            break;
          }

          v62 = v60;
          v63 = sub_21DBFBDCC();

          if ((v63 & 1) == 0)
          {
            goto LABEL_67;
          }

          v61 = v59;
LABEL_52:

          if (v57 == v7)
          {
            goto LABEL_83;
          }
        }

        if (*(v86 + 16))
        {
          v64 = sub_21DBFB62C();
          v65 = -1 << *(v86 + 32);
          v66 = v64 & ~v65;
          if ((*(v58 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
          {
            v67 = ~v65;
            while (1)
            {
              v68 = *(*(v86 + 48) + 8 * v66);
              v69 = sub_21DBFB63C();

              if (v69)
              {
                break;
              }

              v66 = (v66 + 1) & v67;
              if (((*(v58 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
              {
                goto LABEL_66;
              }
            }

            v7 = v81;
            goto LABEL_52;
          }
        }

LABEL_66:

        v7 = v81;
LABEL_67:
        v61 = v59;
        MEMORY[0x223D42D80]();
        if (*((v87[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v70 = [v61 objectID];
        v71 = v70;
        if (v85[2] && (v72 = sub_21D17E07C(v70), (v73 & 1) != 0))
        {
          v74 = *(v85[7] + 8 * v72);
          sub_21DBF8E0C();

          sub_21D562710(v74);
        }

        else
        {
        }

        goto LABEL_52;
      }
    }

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
    v75 = a1;
    v1 = sub_21DBFBD7C();
    a1 = v75;
  }

  v87[0] = MEMORY[0x277D84F90];
LABEL_83:

  return v87[0];
}

char *sub_21D32A0BC(id a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = [v3 personHandle];
  v6 = [v3 aliases];
  v7 = MEMORY[0x277D84F90];
  v56 = v3;
  v57 = a2;
  if (v6)
  {
    v8 = v6;
    sub_21D0D8CF0(0, &qword_27CE5A908);
    v9 = sub_21DBFA5EC();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = sub_21D7F613C(v9);

  sub_21D56273C(v10);
  v11 = 0;
  v59 = v7;
  v12 = *(inited + 16);
  v13 = v7;
  while (1)
  {
    if (v12 == v11)
    {

      v59 = v7;
      if (v13 >> 62)
      {
        goto LABEL_27;
      }

      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_13;
      }

      goto LABEL_28;
    }

    if (v11 >= *(inited + 16))
    {
      break;
    }

    v14 = *(inited + 8 * v11++ + 32);
    if (v14)
    {
      v15 = v14;
      MEMORY[0x223D42D80]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v13 = v7;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v16 = sub_21DBFBD7C();
    if (!v16)
    {
      break;
    }

LABEL_13:
    v17 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x223D44740](v17, v13);
      }

      else
      {
        if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v18 = *(v13 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if ([v18 type] == a1)
      {
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
      }

      else
      {
      }

      ++v17;
      if (v20 == v16)
      {
        v21 = v59;
        goto LABEL_29;
      }
    }
  }

LABEL_28:
  v21 = MEMORY[0x277D84F90];
LABEL_29:

  if ((v21 & 0x8000000000000000) == 0 && (v21 & 0x4000000000000000) == 0)
  {
    v22 = *(v21 + 16);
    if (v22)
    {
      goto LABEL_32;
    }

LABEL_51:
    v24 = MEMORY[0x277D84F90];
    goto LABEL_52;
  }

LABEL_50:
  v22 = sub_21DBFBD7C();
  if (!v22)
  {
    goto LABEL_51;
  }

LABEL_32:
  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  do
  {
    v25 = v23;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x223D44740](v25, v21);
      }

      else
      {
        if (v25 >= *(v21 + 16))
        {
          goto LABEL_49;
        }

        v26 = *(v21 + 8 * v25 + 32);
      }

      v27 = v26;
      v23 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v28 = [v26 value];
      if (v28)
      {
        break;
      }

      ++v25;
      if (v23 == v22)
      {
        goto LABEL_52;
      }
    }

    v29 = v28;
    v30 = sub_21DBFA16C();
    v32 = v31;

    v33 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_21D210A84(0, *(v24 + 2) + 1, 1, v24);
    }

    v35 = *(v24 + 2);
    v34 = *(v24 + 3);
    if (v35 >= v34 >> 1)
    {
      v24 = sub_21D210A84((v34 > 1), v35 + 1, 1, v24);
    }

    *(v24 + 2) = v35 + 1;
    v36 = &v24[16 * v35];
    *(v36 + 4) = v30;
    *(v36 + 5) = v33;
  }

  while (v23 != v22);
LABEL_52:

  v60 = v24;
  v37 = [v56 alternatives];
  if (v37)
  {
    v38 = v37;
    sub_21D0D8CF0(0, &qword_27CE5A8B8);
    v39 = sub_21DBFA5EC();

    if (v57 > 0)
    {

      return v60;
    }

    if (v39 >> 62)
    {
      goto LABEL_84;
    }

    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
LABEL_57:
      v41 = 0;
      v42 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x223D44740](v41, v39);
        }

        else
        {
          if (v41 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_79;
          }

          v43 = *(v39 + 8 * v41 + 32);
        }

        v44 = v43;
        v45 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
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
          v40 = sub_21DBFBD7C();
          if (!v40)
          {
            break;
          }

          goto LABEL_57;
        }

        v46 = sub_21D32A0BC(a1, v57 + 1);

        v47 = *(v46 + 16);
        v48 = *(v42 + 2);
        v49 = v48 + v47;
        if (__OFADD__(v48, v47))
        {
          goto LABEL_80;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v49 <= *(v42 + 3) >> 1)
        {
          if (*(v46 + 16))
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v48 <= v49)
          {
            v51 = v48 + v47;
          }

          else
          {
            v51 = v48;
          }

          v42 = sub_21D210A84(isUniquelyReferenced_nonNull_native, v51, 1, v42);
          if (*(v46 + 16))
          {
LABEL_73:
            if ((*(v42 + 3) >> 1) - *(v42 + 2) < v47)
            {
              goto LABEL_82;
            }

            swift_arrayInitWithCopy();

            if (v47)
            {
              v52 = *(v42 + 2);
              v53 = __OFADD__(v52, v47);
              v54 = v52 + v47;
              if (v53)
              {
                goto LABEL_83;
              }

              *(v42 + 2) = v54;
            }

            goto LABEL_59;
          }
        }

        if (v47)
        {
          goto LABEL_81;
        }

LABEL_59:
        ++v41;
        if (v45 == v40)
        {
          goto LABEL_86;
        }
      }
    }

    v42 = MEMORY[0x277D84F90];
LABEL_86:

    sub_21D5623AC(v42);
  }

  return v60;
}

uint64_t INPerson.contactRepresentation(contactStore:)(void *a1)
{
  v3 = [v1 contactIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_21DBFA16C();

    sub_21D0D8CF0(0, &unk_27CE626A0);
    v5 = a1;
    return sub_21DBFB49C();
  }

  else
  {
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE5A890);
    v8 = v1;
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAEBC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_21D0C9000, v9, v10, "Unable to get contactRepresentation from INPerson because contactIdentifier is nil {self: %@}", v11, 0xCu);
      sub_21D0CF7E0(v12, &unk_27CE60070);
      MEMORY[0x223D46520](v12, -1, -1);
      MEMORY[0x223D46520](v11, -1, -1);
    }

    return 0;
  }
}

id static INPerson.skeletonPerson(email:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  v1 = sub_21DBFA12C();
  v2 = [v0 initWithValue:v1 type:0];

  v3 = [objc_allocWithZone(MEMORY[0x277CD3E90]) initWithPersonHandle:v2 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
  v4 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  v5 = sub_21DBFA12C();
  v6 = [v4 initWithValue:v5 type:1];

  v7 = [objc_allocWithZone(MEMORY[0x277CD3E90]) initWithPersonHandle:v6 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC09CF0;
  *(v8 + 32) = v7;
  sub_21D0D8CF0(0, &qword_27CE5A8B8);
  v9 = v7;
  v10 = sub_21DBFA5DC();

  [v3 setAlternatives_];

  return v3;
}

id REMAlarmLocationTrigger.init(spatialEventTrigger:)(void *a1)
{
  if ([a1 mobileSpace])
  {
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_27CE5A890);
    v3 = a1;
    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAEAC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = [v3 mobileSpace];

      _os_log_impl(&dword_21D0C9000, v4, v5, "spatialEventTrigger.mobileSpace is set, which means this is not really a locationTrigger. {mobileSpace: %ld}", v6, 0xCu);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v7 = [a1 placemark];
  v8 = [v7 region];
  if (!v8)
  {
LABEL_22:
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v36 = sub_21DBF84BC();
    __swift_project_value_buffer(v36, qword_27CE5A890);
    v37 = a1;
    v38 = sub_21DBF84AC();
    v39 = sub_21DBFAEBC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v53 = v41;
      *v40 = 136315138;
      v42 = [v37 placemark];
      v43 = [v42 region];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8C0);
      v44 = sub_21DBFBA5C();
      v46 = v45;

      v47 = sub_21D0CDFB4(v44, v46, &v53);

      *(v40 + 4) = v47;
      _os_log_impl(&dword_21D0C9000, v38, v39, "Placemark region is not a CLCircularRegion, unable to create REMAlarmLocationTrigger. {region: %s}", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x223D46520](v41, -1, -1);
      MEMORY[0x223D46520](v40, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

    goto LABEL_22;
  }

  v11 = v10;
  if (qword_27CE56618 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_27CE5A890);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_21D0C9000, v13, v14, "Non-nil .spatialEventTrigger", v15, 2u);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v16 = v7;
  v17 = sub_21DBF84AC();
  v18 = sub_21DBFAEAC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&dword_21D0C9000, v17, v18, ".placemark = %@", v19, 0xCu);
    sub_21D0CF7E0(v20, &unk_27CE60070);
    MEMORY[0x223D46520](v20, -1, -1);
    MEMORY[0x223D46520](v19, -1, -1);
  }

  v22 = v9;
  v23 = sub_21DBF84AC();
  v24 = sub_21DBFAEAC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v53 = v26;
    *v25 = 136315138;
    v27 = [v11 description];
    v28 = sub_21DBFA16C();
    v30 = v29;

    v31 = sub_21D0CDFB4(v28, v30, &v53);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_21D0C9000, v23, v24, ".circularRegion = %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x223D46520](v26, -1, -1);
    MEMORY[0x223D46520](v25, -1, -1);
  }

  v32 = [a1 event];
  v33 = [v16 name];
  if (v33)
  {
    v34 = v33;
    sub_21DBFA16C();
  }

  sub_21D0D8CF0(0, &qword_280D17760);
  v48 = v16;
  v49 = v22;
  v50 = sub_21DBFB3EC();
  if (v32 == 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = 2;
  }

  v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStructuredLocation:v50 proximity:v51];

  return v52;
}

void REMAlarmVehicleTrigger.init(spatialEventTrigger:)(void *a1)
{
  if ([a1 mobileSpace] == 1)
  {
    v2 = [a1 event];
    if (v2 >= 3)
    {
      if (qword_27CE56618 != -1)
      {
        swift_once();
      }

      v8 = sub_21DBF84BC();
      __swift_project_value_buffer(v8, qword_27CE5A890);
      v9 = MEMORY[0x277D84F90];
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21D17716C(v9);
      sub_21DAEAB00("unknown event", 13, 2);
      __break(1u);
    }

    else
    {
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEvent_];
    }
  }

  else
  {
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_27CE5A890);
    v4 = a1;
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEAC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = [v4 mobileSpace];

      _os_log_impl(&dword_21D0C9000, v5, v6, "spatialEventTrigger.mobileSpace is not .car, which means this is not really a REMAlarmVehicleTrigger. {mobileSpace: %ld}", v7, 0xCu);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t TTRRecurrenceRuleModel.init(temporalEventTrigger:timeProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = &v16[-v8 - 8];
  v10 = [a1 dateComponentsRange];
  sub_21D0D32E4(a2, v16);
  TTRRecurrenceRuleModel.init(dateComponentsRange:timeProvider:)(v10, v16, v9);

  __swift_destroy_boxed_opaque_existential_0(a2);
  v11 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11))
  {
    sub_21D0CF7E0(v9, &qword_27CE5A018);
    v13 = 1;
  }

  else
  {
    sub_21D335654(v9, a3, type metadata accessor for TTRRecurrenceRuleModel);
    v13 = 0;
  }

  return (*(v12 + 56))(a3, v13, 1, v11);
}

uint64_t TTRRecurrenceRuleModel.init(dateComponentsRange:timeProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v77 - v7;
  v9 = sub_21DBF563C();
  v88 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v87 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = v77 - v12;
  v13 = sub_21DBF509C();
  v92 = *(v13 - 8);
  v93 = v13;
  MEMORY[0x28223BE20](v13);
  v85 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v77 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v77 - v24;
  v89 = sub_21DBF5A2C();
  v94 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v91 = v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v95 = *(v27 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31 = MEMORY[0x28223BE20](v30).n128_u64[0];
  v90 = v77 - v32;
  v96 = a1;
  v33 = [a1 recurrenceRule];
  if (!v33)
  {
LABEL_4:

    __swift_destroy_boxed_opaque_existential_0(a2);
    v37 = *(v95 + 56);

    return v37(a3, 1, 1, v27);
  }

  v34 = v33;
  v82 = v8;
  INRecurrenceFrequency.remRecurrenceFrequency.getter([v33 frequency]);
  if (v36)
  {

    goto LABEL_4;
  }

  v39 = v35;
  v80 = v9;
  v81 = a3;
  v83 = a2;
  v40 = [v34 interval];
  v41 = [v34 weeklyRecurrenceDays];
  v42 = type metadata accessor for TTRRecurrenceEndModel(0);
  v43 = *(v42 - 8);
  v78 = *(v43 + 56);
  v79 = v42;
  v77[1] = v43 + 56;
  v78(v29, 1, 1);
  v44 = v27[5];
  v45 = v27[6];
  *&v29[v27[7]] = 0;
  v46 = v27[8];
  *&v29[v46] = 0;
  *&v29[v27[9]] = 0;
  *&v29[v27[10]] = 0;
  *&v29[v27[11]] = 0;
  *&v29[v27[12]] = 0;
  *&v29[v27[13]] = 0;
  *&v29[v44] = v39;
  *&v29[v45] = v40;
  if (v39 == 1 && v41)
  {
    *&v29[v46] = sub_21D7D7330(v41);
  }

  v47 = v90;
  sub_21D335654(v29, v90, type metadata accessor for TTRRecurrenceRuleModel);
  v48 = [v96 endDateComponents];
  if (v48)
  {
    v49 = v48;
    sub_21DBF4EFC();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = v83;
  v53 = v92;
  v52 = v93;
  (*(v92 + 56))(v19, v50, 1, v93);
  sub_21D0D523C(v19, v22, &qword_27CE58D60);
  if ((*(v53 + 48))(v22, 1, v52) == 1)
  {
    sub_21D0CF7E0(v22, &qword_27CE58D60);
    v54 = v89;
    (*(v94 + 56))(v25, 1, 1, v89);
    goto LABEL_16;
  }

  sub_21DBF505C();
  v55 = v92;
  (*(v92 + 8))(v22, v52);
  v56 = v94;
  v54 = v89;
  if ((*(v94 + 48))(v25, 1, v89) == 1)
  {
LABEL_16:
    v57 = v51[3];
    v58 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v57);
    v59 = v57;
    v56 = v94;
    (*(v58 + 16))(v59, v58);
    v55 = v92;
    if ((*(v56 + 48))(v25, 1, v54) != 1)
    {
      sub_21D0CF7E0(v25, &qword_27CE5A8B0);
    }

    goto LABEL_19;
  }

  (*(v56 + 32))(v91, v25, v54);
LABEL_19:
  v60 = v96;
  v61 = [v96 endDateComponents];
  if (v61)
  {
    v62 = v85;
    v63 = v61;
    sub_21DBF4EFC();

    v64 = v86;
    (*(v55 + 32))(v86, v62, v93);
    v65 = v51[3];
    v66 = v51[4];
    __swift_project_boxed_opaque_existential_1(v51, v65);
    v67 = v87;
    v68 = v55;
    (*(v66 + 8))(v65, v66);
    v69 = v82;
    v70 = v91;
    Calendar.dateMatching(_:now:)(v64, v67, v82);

    v71 = v88;
    v72 = v80;
    (*(v88 + 8))(v67, v80);
    (*(v68 + 8))(v64, v93);
    (*(v94 + 8))(v70, v89);
    if ((*(v71 + 48))(v69, 1, v72) == 1)
    {
      sub_21D0CF7E0(v69, &qword_27CE58D68);
      v47 = v90;
    }

    else
    {
      v73 = *(v71 + 32);
      v74 = v84;
      v73(v84, v69, v72);
      v47 = v90;
      sub_21D0CF7E0(v90, &unk_27CE62610);
      v73(v47, v74, v72);
      v75 = v79;
      swift_storeEnumTagMultiPayload();
      (v78)(v47, 0, 1, v75);
    }

    v51 = v83;
  }

  else
  {
    (*(v56 + 8))(v91, v54);
  }

  v76 = v81;
  sub_21D3351BC(v47, v81);
  (*(v95 + 56))(v76, 0, 1, v27);
  __swift_destroy_boxed_opaque_existential_0(v51);
  return sub_21D335220(v47);
}

void INRecurrenceFrequency.remRecurrenceFrequency.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4 || a1 == 5 || a1 == 6)
    {
      return;
    }
  }

  else if (a1 < 2 || a1 == 2 || a1 == 3)
  {
    return;
  }

  if (qword_27CE56618 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE5A890);
  v2 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v2);
  sub_21DAEAB00("unknown frequency", 17, 2);
  __break(1u);
}

uint64_t Calendar.dateMatching(_:now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v58 = a2;
  v59 = sub_21DBF58EC();
  v65 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_21DBF592C();
  v5 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF58AC();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v45 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
  v12 = sub_21DBF5A0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21DC08D10;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, *MEMORY[0x277CC9988], v12);
  v18(v17 + v14, *MEMORY[0x277CC9998], v12);
  v18(v17 + 2 * v14, *MEMORY[0x277CC9968], v12);
  v19 = sub_21D1D0F50(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v64 = a1;
  v67 = a1;
  LOBYTE(v12) = sub_21D3231BC(sub_21D33527C, &v66, v19);

  if (v12)
  {
    return sub_21DBF597C();
  }

  v21 = v62;
  v22 = *(v62 + 104);
  v23 = v55;
  v53 = *MEMORY[0x277CC9878];
  v54 = v62 + 104;
  v52 = v22;
  v22(v55);
  v24 = *(v5 + 104);
  v50 = *MEMORY[0x277CC9900];
  v25 = v56;
  v51 = v5 + 104;
  v49 = v24;
  v24(v7);
  v26 = *MEMORY[0x277CC98E8];
  v27 = v65;
  v28 = *(v65 + 104);
  v29 = v57;
  v30 = v59;
  v48 = v65 + 104;
  v47 = v28;
  v28(v57, v26, v59);
  v31 = v60;
  sub_21DBF59EC();
  v32 = *(v27 + 8);
  v65 = v27 + 8;
  v46 = v32;
  v32(v29, v30);
  v33 = v7;
  v45 = *(v5 + 8);
  v45(v7, v25);
  v34 = *(v21 + 8);
  v62 = v21 + 8;
  v34(v23, v63);
  v35 = sub_21DBF563C();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v31, 1, v35) == 1)
  {
    sub_21D0CF7E0(v60, &qword_27CE58D68);
    v37 = v55;
    v38 = v63;
    v52(v55, v53, v63);
    v39 = v33;
    v40 = v56;
    v49(v33, v50, v56);
    v41 = v57;
    v42 = v34;
    v43 = v59;
    v47(v57, *MEMORY[0x277CC98F0], v59);
    sub_21DBF59EC();
    v46(v41, v43);
    v45(v39, v40);
    return v42(v37, v38);
  }

  else
  {
    v44 = v61;
    (*(v36 + 32))(v61, v60, v35);
    return (*(v36 + 56))(v44, 0, 1, v35);
  }
}

uint64_t sub_21D32C524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v101 = a4;
  v104 = a3;
  v98 = a1;
  v99 = a2;
  v107 = a5;
  v7 = sub_21DBF5C4C();
  v102 = *(v7 - 8);
  v103 = v7;
  MEMORY[0x28223BE20](v7);
  v100 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF563C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v88 - v14);
  sub_21D0D3954(v6, &v88 - v14, &unk_27CE62610);
  v16 = type metadata accessor for TTRRecurrenceEndModel(0);
  v17 = (*(*(v16 - 8) + 48))(v15, 1, v16);
  v109 = 0;
  if (v17 != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = [objc_opt_self() recurrenceEndWithOccurrenceCount_];
    }

    else
    {
      (*(v10 + 32))(v12, v15, v9);
      v19 = sub_21DBF55BC();
      v18 = [objc_opt_self() recurrenceEndWithEndDate_];

      (*(v10 + 8))(v12, v9);
    }

    v109 = v18;
  }

  v105 = v10;
  v106 = v9;
  v20 = objc_opt_self();
  v96 = [v20 newObjectID];
  v95 = [v20 newObjectID];
  v97 = v20;
  v94 = [v20 newObjectID];
  v21 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v22 = *(v6 + v21[5]);
  v92 = *(v6 + v21[6]);
  v93 = v22;
  v23 = v21[8];
  v91 = *(v6 + v21[7]);
  v24 = *(v6 + v23);
  if (v24)
  {
    v25 = *(v24 + 16);
    v26 = MEMORY[0x277D84F90];
    if (v25)
    {
      v110 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v27 = (v24 + 40);
      do
      {
        [objc_allocWithZone(MEMORY[0x277D44718]) initWithDayOfTheWeek:*(v27 - 1) weekNumber:*v27];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v27 += 2;
        --v25;
      }

      while (v25);
      v26 = v110;
    }

    v90 = v26;
  }

  else
  {
    v90 = 0;
  }

  v28 = *(v6 + v21[9]);
  if (v28)
  {
    v29 = *(v28 + 16);
    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      v110 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v31 = (v28 + 32);
      do
      {
        v32 = *v31++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v29;
      }

      while (v29);
      v30 = v110;
    }
  }

  else
  {
    v30 = 0;
  }

  v33 = *(v6 + v21[12]);
  if (v33)
  {
    v34 = *(v33 + 16);
    v35 = MEMORY[0x277D84F90];
    if (v34)
    {
      v110 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v36 = (v33 + 32);
      do
      {
        v37 = *v36++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v34;
      }

      while (v34);
      v35 = v110;
    }
  }

  else
  {
    v35 = 0;
  }

  v38 = *(v6 + v21[11]);
  v108 = v35;
  if (v38)
  {
    v39 = *(v38 + 16);
    v40 = MEMORY[0x277D84F90];
    if (v39)
    {
      v89 = v30;
      v110 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v41 = (v38 + 32);
      do
      {
        v42 = *v41++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v39;
      }

      while (v39);
      v40 = v110;
      v30 = v89;
      v35 = v108;
    }
  }

  else
  {
    v40 = 0;
  }

  v43 = *(v6 + v21[10]);
  if (v43)
  {
    v44 = *(v43 + 16);
    v45 = MEMORY[0x277D84F90];
    if (v44)
    {
      v89 = v30;
      v110 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v46 = (v43 + 32);
      do
      {
        v47 = *v46++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v44;
      }

      while (v44);
      v45 = v110;
      v30 = v89;
      v35 = v108;
    }
  }

  else
  {
    v45 = 0;
  }

  v48 = *(v6 + v21[13]);
  if (v48)
  {
    v49 = *(v48 + 16);
    v50 = MEMORY[0x277D84F90];
    if (v49)
    {
      v110 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v51 = (v48 + 32);
      do
      {
        v52 = *v51++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        --v49;
      }

      while (v49);
      v50 = v110;
      v35 = v108;
    }

    if (v90)
    {
LABEL_43:
      sub_21D0D8CF0(0, &qword_27CE5A8F8);
      v53 = sub_21DBFA5DC();

      if (v30)
      {
        goto LABEL_44;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v50 = 0;
    if (v90)
    {
      goto LABEL_43;
    }
  }

  v53 = 0;
  if (v30)
  {
LABEL_44:
    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v54 = sub_21DBFA5DC();

    if (v35)
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

LABEL_51:
  v54 = 0;
  if (v35)
  {
LABEL_45:
    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v55 = sub_21DBFA5DC();

    if (v40)
    {
      goto LABEL_46;
    }

    goto LABEL_53;
  }

LABEL_52:
  v55 = 0;
  if (v40)
  {
LABEL_46:
    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v56 = sub_21DBFA5DC();

    if (v45)
    {
      goto LABEL_47;
    }

LABEL_54:
    v57 = 0;
    if (v50)
    {
      goto LABEL_48;
    }

    goto LABEL_55;
  }

LABEL_53:
  v56 = 0;
  if (!v45)
  {
    goto LABEL_54;
  }

LABEL_47:
  sub_21D0D8CF0(0, &unk_280D0C1E0);
  v57 = sub_21DBFA5DC();

  if (v50)
  {
LABEL_48:
    sub_21D0D8CF0(0, &unk_280D0C1E0);
    v58 = sub_21DBFA5DC();

    goto LABEL_56;
  }

LABEL_55:
  v58 = 0;
LABEL_56:
  v59 = objc_allocWithZone(MEMORY[0x277D44740]);
  v60 = v109;
  v87 = v56;
  v85 = v54;
  v86 = v55;
  v61 = v53;
  v84 = v53;
  v62 = v56;
  v63 = v55;
  v64 = v54;
  v65 = v95;
  v66 = v96;
  v67 = v94;
  v108 = [v59 initRecurrenceRuleWithObjectID:v96 accountID:v95 reminderID:v94 frequency:v93 interval:v92 firstDayOfTheWeek:v91 daysOfTheWeek:v84 daysOfTheMonth:v85 monthsOfTheYear:v86 weeksOfTheYear:v87 daysOfTheYear:v57 setPositions:v58 end:v109];

  v68 = sub_21DBF55BC();
  v69 = sub_21DBF55BC();
  v70 = v101[3];
  v71 = v101[4];
  __swift_project_boxed_opaque_existential_1(v101, v70);
  v72 = v100;
  (*(v71 + 24))(v70, v71);
  v73 = sub_21DBF5C0C();
  (*(v102 + 8))(v72, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_21DC09CF0;
  v75 = v108;
  *(v74 + 32) = v108;
  sub_21D0D8CF0(0, &qword_280D177E8);
  v76 = v75;
  v77 = sub_21DBFA5DC();

  v78 = [v97 nextRecurrentDueDateAfter:v68 dueDate:v69 timeZone:v73 allDay:v104 & 1 recurrenceRules:v77];

  if (v78)
  {
    v79 = v107;
    sub_21DBF55FC();

    v80 = 0;
  }

  else
  {
    v80 = 1;
    v79 = v107;
  }

  v82 = v105;
  v81 = v106;

  return (*(v82 + 56))(v79, v80, 1, v81);
}

uint64_t DateComponents.smartlyCorrectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v2 = sub_21DBF563C();
  v85 = *(v2 - 8);
  v86 = v2;
  MEMORY[0x28223BE20](v2);
  v82 = &v77[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_21DBF509C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v81 = &v77[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21DBF5A2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v87 = &v77[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21DBF583C();
  v104 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v98 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8C8);
  MEMORY[0x28223BE20](v103);
  v93 = &v77[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v77[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v16 - 8);
  v79 = &v77[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v91 = &v77[-v19];
  MEMORY[0x28223BE20](v20);
  v22 = &v77[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8D0);
  MEMORY[0x28223BE20](v23 - 8);
  v80 = &v77[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v96 = &v77[-v26];
  MEMORY[0x28223BE20](v27);
  v92 = &v77[-v28];
  MEMORY[0x28223BE20](v29);
  v94 = &v77[-v30];
  MEMORY[0x28223BE20](v31);
  v33 = &v77[-v32];
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v77[-v36];
  v83 = v5;
  v38 = *(v5 + 16);
  v84 = v4;
  v38(v99, v1, v4, v35);
  v97 = v1;
  sub_21DBF505C();
  v88 = *(v8 + 48);
  v89 = v8 + 48;
  v39 = v88(v22, 1, v7);
  v102 = v7;
  v95 = v8;
  if (v39 == 1)
  {
    sub_21D0CF7E0(v22, &qword_27CE5A8B0);
    v40 = 1;
  }

  else
  {
    sub_21DBF585C();
    (*(v8 + 8))(v22, v7);
    v40 = 0;
  }

  v41 = v104;
  v42 = *(v104 + 56);
  v42(v37, v40, 1, v10);
  v43 = *MEMORY[0x277CC9820];
  v100 = *(v41 + 104);
  v101 = v41 + 104;
  v100(v33, v43, v10);
  v90 = v42;
  v42(v33, 0, 1, v10);
  v44 = *(v103 + 48);
  sub_21D0D3954(v37, v15, &qword_27CE5A8D0);
  sub_21D0D3954(v33, &v15[v44], &qword_27CE5A8D0);
  v45 = *(v41 + 48);
  if (v45(v15, 1, v10) == 1)
  {
    sub_21D0CF7E0(v33, &qword_27CE5A8D0);
    sub_21D0CF7E0(v37, &qword_27CE5A8D0);
    if (v45(&v15[v44], 1, v10) == 1)
    {
      v46 = v102;
LABEL_16:
      sub_21D0CF7E0(v15, &qword_27CE5A8D0);
      goto LABEL_23;
    }
  }

  else
  {
    v47 = v94;
    sub_21D0D3954(v15, v94, &qword_27CE5A8D0);
    if (v45(&v15[v44], 1, v10) != 1)
    {
      v57 = v98;
      (*(v104 + 32))(v98, &v15[v44], v10);
      sub_21D3356BC(&qword_27CE5A8D8, MEMORY[0x277CC9840]);
      v78 = sub_21DBFA10C();
      v58 = *(v104 + 8);
      v58(v57, v10);
      sub_21D0CF7E0(v33, &qword_27CE5A8D0);
      sub_21D0CF7E0(v37, &qword_27CE5A8D0);
      v58(v94, v10);
      sub_21D0CF7E0(v15, &qword_27CE5A8D0);
      v46 = v102;
      if (v78)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    sub_21D0CF7E0(v33, &qword_27CE5A8D0);
    sub_21D0CF7E0(v37, &qword_27CE5A8D0);
    (*(v104 + 8))(v47, v10);
  }

  sub_21D0CF7E0(v15, &qword_27CE5A8C8);
  v46 = v102;
LABEL_10:
  v48 = v91;
  sub_21DBF505C();
  if (v88(v48, 1, v46) == 1)
  {
    sub_21D0CF7E0(v48, &qword_27CE5A8B0);
    v49 = 1;
    v50 = v92;
  }

  else
  {
    v50 = v92;
    sub_21DBF585C();
    (*(v95 + 8))(v48, v46);
    v49 = 0;
  }

  v51 = v96;
  v52 = v90;
  v90(v50, v49, 1, v10);
  v100(v51, *MEMORY[0x277CC9828], v10);
  v52(v51, 0, 1, v10);
  v53 = *(v103 + 48);
  v54 = v93;
  sub_21D0D3954(v50, v93, &qword_27CE5A8D0);
  sub_21D0D3954(v51, &v54[v53], &qword_27CE5A8D0);
  if (v45(v54, 1, v10) == 1)
  {
    sub_21D0CF7E0(v51, &qword_27CE5A8D0);
    sub_21D0CF7E0(v50, &qword_27CE5A8D0);
    if (v45(&v54[v53], 1, v10) == 1)
    {
      v15 = v54;
      v46 = v102;
      goto LABEL_16;
    }

    return sub_21D0CF7E0(v54, &qword_27CE5A8C8);
  }

  v55 = v80;
  sub_21D0D3954(v54, v80, &qword_27CE5A8D0);
  if (v45(&v54[v53], 1, v10) == 1)
  {
    sub_21D0CF7E0(v96, &qword_27CE5A8D0);
    sub_21D0CF7E0(v50, &qword_27CE5A8D0);
    (*(v104 + 8))(v55, v10);
    return sub_21D0CF7E0(v54, &qword_27CE5A8C8);
  }

  v59 = v104;
  v60 = v98;
  (*(v104 + 32))(v98, &v54[v53], v10);
  sub_21D3356BC(&qword_27CE5A8D8, MEMORY[0x277CC9840]);
  v61 = sub_21DBFA10C();
  v62 = *(v59 + 8);
  v62(v60, v10);
  sub_21D0CF7E0(v96, &qword_27CE5A8D0);
  sub_21D0CF7E0(v50, &qword_27CE5A8D0);
  v62(v55, v10);
  result = sub_21D0CF7E0(v54, &qword_27CE5A8D0);
  v46 = v102;
  if ((v61 & 1) == 0)
  {
    return result;
  }

LABEL_23:
  v63 = v46;
  v64 = v98;
  v100(v98, *MEMORY[0x277CC9830], v10);
  v65 = v87;
  sub_21DBF584C();
  (*(v104 + 8))(v64, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
  v66 = sub_21DBF5A0C();
  v67 = *(v66 - 8);
  v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_21DC08D00;
  (*(v67 + 104))(v69 + v68, *MEMORY[0x277CC9988], v66);
  sub_21D1D0F50(v69);
  swift_setDeallocating();
  (*(v67 + 8))(v69 + v68, v66);
  swift_deallocClassInstance();
  v70 = v82;
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v71 = v81;
  sub_21DBF58DC();

  (*(v85 + 8))(v70, v86);
  v72 = sub_21DBF4F7C();
  LOBYTE(v66) = v73;
  (*(v83 + 8))(v71, v84);
  if (v66)
  {
    v72 = 0;
  }

  result = sub_21DBF4F7C();
  if (v74)
  {
    return (*(v95 + 8))(v65, v46);
  }

  v75 = v95;
  if (__OFSUB__(v72, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  if (result >= v72 - 1)
  {
    if (!__OFADD__(v72, 1))
    {
      if (v72 + 1 >= result)
      {
        v76 = v79;
        (*(v95 + 16))(v79, v65, v63);
        (*(v75 + 56))(v76, 0, 1, v63);
        sub_21DBF506C();
      }

      return (*(v75 + 8))(v65, v63);
    }

LABEL_35:
    __break(1u);
    return result;
  }

  return (*(v75 + 8))(v65, v63);
}

uint64_t sub_21D32DD48(void *a1, int a2)
{
  v70 = a2;
  v4 = sub_21DBF509C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v61 - v12;
  v14 = sub_21DBF5C4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21DBF563C();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v68 = &v61 - v20;
  MEMORY[0x28223BE20](v21);
  v73 = &v61 - v22;
  v72 = sub_21DBF4EDC();
  v64 = v2;
  sub_21DBF507C();
  v23 = *(v15 + 48);
  v24 = v23(v13, 1, v14);
  v71 = a1;
  if (v24 == 1)
  {
    v61 = v5;
    v25 = v4;
    v26 = a1;
    v28 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(v26, v28);
    v29 = v28;
    v4 = v25;
    v5 = v61;
    (*(v27 + 24))(v29, v27);
    if (v23(v13, 1, v14) != 1)
    {
      sub_21D0CF7E0(v13, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
  }

  v30 = objc_opt_self();
  v31 = sub_21DBF5C0C();
  (*(v15 + 8))(v17, v14);
  v32 = v72;
  v33 = [v30 rem:v72 dateWithDateComponents:v31 timeZone:?];

  if (v33)
  {
    v34 = v73;
    sub_21DBF55FC();

    v35 = v71;
    v36 = v71[3];
    v37 = v71[4];
    __swift_project_boxed_opaque_existential_1(v71, v36);
    v38 = v66;
    (*(v37 + 8))(v36, v37);
    v39 = v68;
    sub_21DBF559C();
    v40 = v67;
    v41 = *(v67 + 8);
    v42 = v69;
    v41(v38, v69);
    if ((v70 & 1) == 0 || (v43 = v35[3], v72 = v35[4], __swift_project_boxed_opaque_existential_1(v35, v43), v44 = sub_21DBF5A2C(), v45 = 1, v46 = v62, (*(*(v44 - 8) + 56))(v62, 1, 1, v44), v47 = v63, (*(v40 + 56))(v63, 1, 1, v42), v48 = TTRTimeProvider.isDateInToday(_:calendar:now:)(v73, v46, v47, v43, v72), v49 = v47, v34 = v73, sub_21D0CF7E0(v49, &qword_27CE58D68), sub_21D0CF7E0(v46, &qword_27CE5A8B0), (v48 & 1) == 0))
    {
      v45 = sub_21DBF55CC();
    }

    v41(v39, v42);
    v41(v34, v42);
  }

  else
  {
    if (qword_27CE56618 != -1)
    {
      swift_once();
    }

    v50 = sub_21DBF84BC();
    __swift_project_value_buffer(v50, qword_27CE5A890);
    v51 = v65;
    (*(v5 + 16))(v65, v64, v4);
    v52 = sub_21DBF84AC();
    v53 = sub_21DBFAEBC();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v74 = v55;
      *v54 = 136315138;
      sub_21D3356BC(&qword_27CE5A8F0, MEMORY[0x277CC8990]);
      v56 = sub_21DBFC5BC();
      v58 = v57;
      (*(v5 + 8))(v51, v4);
      v59 = sub_21D0CDFB4(v56, v58, &v74);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_21D0C9000, v52, v53, "Unable to determine if date is in the future {dateComponents: %s}", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x223D46520](v55, -1, -1);
      MEMORY[0x223D46520](v54, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v51, v4);
    }

    v45 = 0;
  }

  return v45 & 1;
}

Swift::Bool __swiftcall String.fuzzyMatch(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  sub_21D0D8CF0(0, &qword_27CE5A8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC08D00;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_21D17A884();
  *(v3 + 32) = countAndFlagsBits;
  *(v3 + 40) = object;
  sub_21DBF8E0C();
  v4 = sub_21DBFADEC();
  v5 = sub_21DBFA12C();
  v6 = [v4 evaluateWithObject_];

  return v6;
}

uint64_t INSearchForNotebookItemsIntent.isTodayQuery(timeProvider:)(void *a1)
{
  v2 = v1;
  v99 = a1;
  v3 = sub_21DBF509C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v91 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v10 - 8);
  v88 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = &v87 - v13;
  v102 = sub_21DBF5A2C();
  v92 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF563C();
  v95 = *(v15 - 8);
  v96 = v15;
  MEMORY[0x28223BE20](v15);
  v100 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v17 - 8);
  v90 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v89 = &v87 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v87 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v87 - v31;
  MEMORY[0x28223BE20](v33);
  v104 = &v87 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v87 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v87 - v39;
  *&v42 = MEMORY[0x28223BE20](v41).n128_u64[0];
  v103 = &v87 - v43;
  v94 = v2;
  v44 = [v2 dateTime];
  if (!v44)
  {
    v47 = *(v4 + 56);
LABEL_8:
    v48 = v92;
    v47(v103, 1, 1, v3);
    goto LABEL_10;
  }

  v45 = v44;
  v46 = [v44 startDateComponents];

  if (v46)
  {
    sub_21DBF4EFC();

    v47 = *(v4 + 56);
    v47(v37, 0, 1, v3);
  }

  else
  {
    v47 = *(v4 + 56);
    v47(v37, 1, 1, v3);
  }

  sub_21D0D523C(v37, v40, &qword_27CE58D60);
  if ((*(v4 + 48))(v40, 1, v3) == 1)
  {
    sub_21D0CF7E0(v40, &qword_27CE58D60);
    goto LABEL_8;
  }

  v49 = v103;
  DateComponents.smartlyCorrectedValue.getter(v103);
  (*(v4 + 8))(v40, v3);
  v47(v49, 0, 1, v3);
  v48 = v92;
LABEL_10:
  v50 = [v94 dateTime];
  if (v50)
  {
    v51 = v50;
    v52 = [v50 endDateComponents];

    if (v52)
    {
      sub_21DBF4EFC();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v47(v29, v53, 1, v3);
    sub_21D0D523C(v29, v32, &qword_27CE58D60);
    if ((*(v4 + 48))(v32, 1, v3) == 1)
    {
      sub_21D0CF7E0(v32, &qword_27CE58D60);
      v54 = 1;
    }

    else
    {
      DateComponents.smartlyCorrectedValue.getter(v104);
      (*(v4 + 8))(v32, v3);
      v54 = 0;
    }
  }

  else
  {
    v54 = 1;
  }

  v47(v104, v54, 1, v3);
  v55 = v99[3];
  v56 = v99[4];
  __swift_project_boxed_opaque_existential_1(v99, v55);
  (*(v56 + 8))(v55, v56);
  sub_21D0D3954(v103, v26, &qword_27CE58D60);
  v57 = *(v4 + 48);
  v58 = v57(v26, 1, v3);
  v59 = v98;
  if (v58 == 1)
  {
    sub_21D0CF7E0(v26, &qword_27CE58D60);
    v60 = v97;
    (*(v48 + 56))(v97, 1, 1, v102);
  }

  else
  {
    v60 = v97;
    sub_21DBF505C();
    (*(v4 + 8))(v26, v3);
    if ((*(v48 + 48))(v60, 1, v102) != 1)
    {
      (*(v48 + 32))(v101, v60, v102);
      goto LABEL_31;
    }
  }

  sub_21D0D3954(v104, v23, &qword_27CE58D60);
  v61 = v57(v23, 1, v3);
  v87 = v4;
  if (v61 == 1)
  {
    sub_21D0CF7E0(v23, &qword_27CE58D60);
    v62 = v88;
    v63 = v102;
    (*(v48 + 56))(v88, 1, 1, v102);
LABEL_24:
    v65 = v99[3];
    v66 = v99[4];
    __swift_project_boxed_opaque_existential_1(v99, v65);
    (*(v66 + 16))(v65, v66);
    v64 = *(v48 + 48);
    if (v64(v62, 1, v63) != 1)
    {
      sub_21D0CF7E0(v62, &qword_27CE5A8B0);
    }

    v60 = v97;
    goto LABEL_29;
  }

  v62 = v88;
  sub_21DBF505C();
  (*(v4 + 8))(v23, v3);
  v64 = *(v48 + 48);
  v63 = v102;
  if (v64(v62, 1, v102) == 1)
  {
    goto LABEL_24;
  }

  (*(v48 + 32))(v101, v62, v63);
LABEL_29:
  v59 = v98;
  v67 = v64(v60, 1, v63);
  v4 = v87;
  if (v67 != 1)
  {
    sub_21D0CF7E0(v60, &qword_27CE5A8B0);
  }

LABEL_31:
  v68 = v89;
  sub_21D0D3954(v103, v89, &qword_27CE58D60);
  if (v57(v68, 1, v3) == 1)
  {
    (*(v95 + 56))(v59, 1, 1, v96);
  }

  else
  {
    v69 = v91;
    (*(v4 + 32))(v91, v68, v3);
    Calendar.dateMatching(_:now:)(v69, v100, v59);
    (*(v4 + 8))(v69, v3);
  }

  v70 = v90;
  sub_21D0D3954(v104, v90, &qword_27CE58D60);
  if (v57(v70, 1, v3) == 1)
  {
    v72 = v95;
    v71 = v96;
    v73 = v93;
    (*(v95 + 56))(v93, 1, 1, v96);
  }

  else
  {
    v74 = v91;
    (*(v4 + 32))(v91, v70, v3);
    v73 = v93;
    Calendar.dateMatching(_:now:)(v74, v100, v93);
    (*(v4 + 8))(v74, v3);
    v72 = v95;
    v71 = v96;
  }

  v75 = *(v72 + 48);
  if (v75(v59, 1, v71) == 1 && v75(v73, 1, v71) == 1)
  {
    goto LABEL_47;
  }

  v76 = v99;
  v77 = sub_21D3352E0(v59, v99);
  v78 = sub_21D3352E0(v73, v76);
  v79 = 0;
  if ((v77 & 1) == 0 && (v78 & 1) == 0)
  {
    v80 = [v94 dateTime];
    if (!v80)
    {
      goto LABEL_47;
    }

    v81 = v80;
    v79 = [v80 allDay];

    if (v79)
    {
      v82 = [v79 BOOLValue];

      if (v82)
      {
        v83 = v94;
        v84 = [v94 title];
        if (!v84)
        {
          v84 = [v83 content];
          if (!v84)
          {
            v86 = [v83 dateTime];
            if (!v86)
            {
              goto LABEL_47;
            }

            if ([v83 status])
            {
              goto LABEL_47;
            }

            v84 = [v83 location];
            if (!v84)
            {
              if ([v83 temporalEventTriggerTypes] || objc_msgSend(v83, sel_taskPriority))
              {
                goto LABEL_47;
              }

              v84 = [v83 notebookItemIdentifier];
              if (!v84)
              {
                v79 = 1;
                goto LABEL_48;
              }
            }
          }
        }
      }

LABEL_47:
      v79 = 0;
    }
  }

LABEL_48:
  sub_21D0CF7E0(v104, &qword_27CE58D60);
  sub_21D0CF7E0(v103, &qword_27CE58D60);
  sub_21D0CF7E0(v59, &qword_27CE58D68);
  sub_21D0CF7E0(v73, &qword_27CE58D68);
  (*(v48 + 8))(v101, v102);
  (*(v72 + 8))(v100, v71);
  return v79;
}

uint64_t INSearchForNotebookItemsIntent.isFlaggedQuery.getter()
{
  if ([v0 taskPriority] != 2)
  {
    return 0;
  }

  v1 = [v0 title];
  if (v1)
  {
    goto LABEL_5;
  }

  v1 = [v0 content];
  if (v1)
  {
    goto LABEL_5;
  }

  v1 = [v0 dateTime];
  if (v1)
  {
    goto LABEL_5;
  }

  if ([v0 status])
  {
    return 0;
  }

  v1 = [v0 location];
  if (v1)
  {
LABEL_5:

    return 0;
  }

  if ([v0 temporalEventTriggerTypes])
  {
    return 0;
  }

  result = [v0 taskPriority];
  if (result)
  {
    v1 = [v0 notebookItemIdentifier];
    if (!v1)
    {
      return 1;
    }

    goto LABEL_5;
  }

  return result;
}
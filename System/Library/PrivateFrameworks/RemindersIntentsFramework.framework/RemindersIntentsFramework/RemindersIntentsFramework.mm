__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_261D57C58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261D57C78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_261D57CB4()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF3F38);
  v1 = __swift_project_value_buffer(v0, qword_27FEF3F38);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_261D57D88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_261D57DA0(uint64_t a1, id *a2)
{
  result = sub_261D86514();
  *a2 = 0;
  return result;
}

uint64_t sub_261D57E18(uint64_t a1, id *a2)
{
  v3 = sub_261D86524();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_261D57E98@<X0>(uint64_t *a1@<X8>)
{
  sub_261D86534();
  v2 = sub_261D86504();

  *a1 = v2;
  return result;
}

uint64_t sub_261D57EDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_261D86534();
  v6 = v5;
  if (v4 == sub_261D86534() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261D86B84();
  }

  return v9 & 1;
}

uint64_t sub_261D57F64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261D86504();

  *a2 = v5;
  return result;
}

uint64_t sub_261D57FAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_261D86534();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_261D57FD8(uint64_t a1)
{
  v2 = sub_261D59910(&qword_27FEF4030);
  v3 = sub_261D59910(&qword_27FEF4038);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_261D58070()
{
  v1 = *v0;
  v2 = sub_261D86534();
  v3 = MEMORY[0x26671E070](v2);

  return v3;
}

uint64_t sub_261D580AC()
{
  v1 = *v0;
  sub_261D86534();
  sub_261D86574();
}

uint64_t sub_261D58100()
{
  v1 = *v0;
  sub_261D86534();
  sub_261D86BC4();
  sub_261D86574();
  v2 = sub_261D86BD4();

  return v2;
}

void sub_261D58174(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FEF3F30 != -1)
  {
    swift_once();
  }

  v6 = sub_261D864A4();
  __swift_project_value_buffer(v6, qword_27FEF3F38);
  v7 = a1;
  v8 = sub_261D86494();
  v9 = sub_261D866C4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = a3;
    v12 = swift_slowAlloc();
    v66 = v12;
    *v10 = 136315138;
    v3 = [v7 contactEventTrigger];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF8, &qword_261D878E0);
    v13 = sub_261D868D4();
    v15 = v14;

    v16 = sub_261D8464C(v13, v15, &v66);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_261D56000, v8, v9, "SiriKit asked for resolving contactEventTrigger {contactEventTrigger: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v17 = v12;
    a3 = v11;
    MEMORY[0x26671EBF0](v17, -1, -1);
    MEMORY[0x26671EBF0](v10, -1, -1);
  }

  v18 = [v7 contactEventTrigger];
  if (!v18)
  {
    goto LABEL_12;
  }

  v19 = v18;
  v20 = [v18 triggerContact];
  if (!v20)
  {

LABEL_12:
    v27 = sub_261D86494();
    v28 = sub_261D866C4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_261D56000, v27, v28, "Got nil contactEventTrigger. {result: .notRequired}", v29, 2u);
      MEMORY[0x26671EBF0](v29, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4000, 0x277CD3A10);
    v19 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a3 + 16))(a3, v19);
    goto LABEL_15;
  }

  v21 = v20;
  v22 = sub_261D5C578(v7);
  if (!v22)
  {
    v30 = sub_261D86494();
    v31 = sub_261D866A4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_261D56000, v30, v31, "Unable to lookup capabilities. Ignoring contactEventTrigger. {result: .notRequired}", v32, 2u);
      MEMORY[0x26671EBF0](v32, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4000, 0x277CD3A10);
    v33 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a3 + 16))(a3, v33);

    v19 = v33;
    goto LABEL_15;
  }

  v23 = v22;
  if (([v22 supportsPersonTrigger] & 1) == 0)
  {
    v34 = sub_261D86494();
    v35 = sub_261D866C4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_261D56000, v34, v35, "Reminder account doesn't support contactTrigger. {result: .unsupported(.accountDoesNotSupport)}", v36, 2u);
      MEMORY[0x26671EBF0](v36, -1, -1);
    }

    v37 = [objc_opt_self() unsupportedForReason_];
    (*(a3 + 16))(a3, v37);

    v19 = v37;
    goto LABEL_15;
  }

  v24 = [v21 contactIdentifier];
  if (v24)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_261D877A0;
    *(v25 + 32) = v21;
    v26 = v21;
  }

  else
  {
    v38 = [v21 alternatives];
    if (v38)
    {
      v39 = v38;
      sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
      v25 = sub_261D865D4();
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }
  }

  if (v25 >> 62)
  {
    v40 = sub_261D86954();
    if (v40)
    {
      goto LABEL_27;
    }

LABEL_35:

    v25 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v40 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_35;
  }

LABEL_27:
  v64 = a3;
  v66 = MEMORY[0x277D84F90];
  sub_261D86A34();
  if (v40 < 0)
  {
    __break(1u);
LABEL_59:
    v63 = MEMORY[0x26671E4C0](0, v25);
LABEL_55:
    v53 = v63;

    sub_261D597EC(0, &qword_27FEF4000, 0x277CD3A10);
    v54 = [swift_getObjCClassFromMetadata() successWithResolvedContactEventTrigger_];
    goto LABEL_56;
  }

  v41 = 0;
  do
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x26671E4C0](v41, v25);
    }

    else
    {
      v42 = *(v25 + 8 * v41 + 32);
    }

    v43 = v42;
    ++v41;
    [objc_allocWithZone(MEMORY[0x277CD3B08]) initWithTriggerContact_];

    sub_261D86A14();
    v3 = v66[2];
    sub_261D86A44();
    sub_261D86A54();
    sub_261D86A24();
  }

  while (v40 != v41);

  v25 = v66;
  a3 = v64;
LABEL_36:
  if (v25 >> 62)
  {
    v44 = sub_261D86954();
    if (v44 >= 2)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v44 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44 >= 2)
    {
LABEL_38:

      v45 = sub_261D86494();
      v46 = sub_261D866C4();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = v65;
        *v47 = 136315138;
        v48 = sub_261D597EC(0, &unk_27FEF3FE0, 0x277CD3B08);
        v49 = MEMORY[0x26671E0C0](v25, v48);
        v51 = sub_261D8464C(v49, v50, &v66);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_261D56000, v45, v46, "Got >1 triggersToChoose {result: .disambiguation(%s)}", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x26671EBF0](v65, -1, -1);
        MEMORY[0x26671EBF0](v47, -1, -1);
      }

      sub_261D597EC(0, &qword_27FEF4000, 0x277CD3A10);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_261D597EC(0, &unk_27FEF3FE0, 0x277CD3B08);
      v53 = sub_261D865C4();

      v54 = [ObjCClassFromMetadata disambiguationWithContactEventTriggersToDisambiguate_];
LABEL_56:
      v62 = v54;

LABEL_57:
      (*(a3 + 16))(a3, v62);

LABEL_15:
      return;
    }
  }

  if (v44 != 1)
  {

    v59 = sub_261D86494();
    v60 = sub_261D866C4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_261D56000, v59, v60, "Got 0 triggersToChoose {result: .unsupported}", v61, 2u);
      MEMORY[0x26671EBF0](v61, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4000, 0x277CD3A10);
    v62 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_57;
  }

  v55 = sub_261D86494();
  v56 = sub_261D866C4();

  if (!os_log_type_enabled(v55, v56))
  {

    v57 = v25 & 0xC000000000000001;
    goto LABEL_52;
  }

  v3 = v23;
  v23 = v21;
  v21 = a3;
  v40 = swift_slowAlloc();
  a3 = swift_slowAlloc();
  *v40 = 138412290;
  v57 = v25 & 0xC000000000000001;
  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_61;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v25 + 32); ; i = MEMORY[0x26671E4C0](0, v25))
    {
      *(v40 + 4) = i;
      *a3 = i;
      _os_log_impl(&dword_261D56000, v55, v56, "Got 1 triggersToChoose {result: .success(%@)}", v40, 0xCu);
      sub_261D5968C(a3);
      MEMORY[0x26671EBF0](a3, -1, -1);
      MEMORY[0x26671EBF0](v40, -1, -1);

      a3 = v21;
      v21 = v23;
      v23 = v3;
LABEL_52:
      if (v57)
      {
        break;
      }

      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v63 = *(v25 + 32);
        goto LABEL_55;
      }

      __break(1u);
LABEL_61:
      ;
    }

    goto LABEL_59;
  }

  __break(1u);
}

void sub_261D58BA4(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FEF3F30 != -1)
  {
    swift_once();
  }

  v7 = sub_261D864A4();
  __swift_project_value_buffer(v7, qword_27FEF3F38);
  v8 = a1;
  v9 = sub_261D86494();
  v10 = sub_261D866C4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = a3;
    v13 = swift_slowAlloc();
    v71 = v13;
    *v11 = 136315138;
    v3 = [v8 contactEventTrigger];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF8, &qword_261D878E0);
    v14 = sub_261D868D4();
    v16 = v15;

    v17 = sub_261D8464C(v14, v16, &v71);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_261D56000, v9, v10, "SiriKit asked for resolving contactEventTrigger {contactEventTrigger: %s}", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v18 = v13;
    a3 = v12;
    MEMORY[0x26671EBF0](v18, -1, -1);
    MEMORY[0x26671EBF0](v11, -1, -1);
  }

  v19 = [v8 contactEventTrigger];
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v19 triggerContact];
  if (!v21)
  {

LABEL_17:
    v36 = sub_261D86494();
    v37 = sub_261D866C4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_261D56000, v36, v37, "Got nil contactEventTrigger. {result: .notRequired}", v38, 2u);
      MEMORY[0x26671EBF0](v38, -1, -1);
    }

    sub_261D597EC(0, &unk_27FEF3FD0, 0x277CD4100);
    v20 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a3 + 16))(a3, v20);
    goto LABEL_20;
  }

  v22 = v21;
  v23 = [v8 targetTask];
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = v23;
  v25 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_store);
  v26 = sub_261D867F4();

  if (!v26 || (v27 = [v26 account], v28 = objc_msgSend(v27, sel_capabilities), v27, v26, !v28))
  {
LABEL_13:
    v32 = sub_261D86494();
    v33 = sub_261D866A4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_261D56000, v32, v33, "Unable to lookup capabilities. Ignoring contactEventTrigger. {result: .notRequired}", v34, 2u);
      MEMORY[0x26671EBF0](v34, -1, -1);
    }

    sub_261D597EC(0, &unk_27FEF3FD0, 0x277CD4100);
    v35 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a3 + 16))(a3, v35);

    v20 = v35;
    goto LABEL_20;
  }

  if (![v28 supportsPersonTrigger])
  {
    v39 = sub_261D86494();
    v40 = sub_261D866C4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_261D56000, v39, v40, "Reminder account doesn't support contactTrigger. {result: .unsupported(.accountDoesNotSupport)}", v41, 2u);
      MEMORY[0x26671EBF0](v41, -1, -1);
    }

    v42 = [objc_opt_self() unsupportedForReason_];
    (*(a3 + 16))(a3, v42);

    v20 = v42;
    goto LABEL_20;
  }

  v29 = [v22 contactIdentifier];
  if (v29)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_261D877A0;
    *(v30 + 32) = v22;
    v31 = v22;
  }

  else
  {
    v43 = [v22 alternatives];
    if (v43)
    {
      v44 = v43;
      sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
      v30 = sub_261D865D4();
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }
  }

  if (v30 >> 62)
  {
    v45 = sub_261D86954();
    if (v45)
    {
      goto LABEL_29;
    }

LABEL_37:

    v30 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v45 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v45)
  {
    goto LABEL_37;
  }

LABEL_29:
  v69 = a3;
  v71 = MEMORY[0x277D84F90];
  sub_261D86A34();
  if (v45 < 0)
  {
    __break(1u);
LABEL_61:
    v68 = MEMORY[0x26671E4C0](0, v30);
LABEL_57:
    v58 = v68;

    sub_261D597EC(0, &unk_27FEF3FD0, 0x277CD4100);
    v59 = [swift_getObjCClassFromMetadata() successWithResolvedContactEventTrigger_];
    goto LABEL_58;
  }

  v46 = 0;
  do
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x26671E4C0](v46, v30);
    }

    else
    {
      v47 = *(v30 + 8 * v46 + 32);
    }

    v48 = v47;
    ++v46;
    [objc_allocWithZone(MEMORY[0x277CD3B08]) initWithTriggerContact_];

    sub_261D86A14();
    v3 = v71[2];
    sub_261D86A44();
    sub_261D86A54();
    sub_261D86A24();
  }

  while (v45 != v46);

  v30 = v71;
  a3 = v69;
LABEL_38:
  if (v30 >> 62)
  {
    v49 = sub_261D86954();
    if (v49 >= 2)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v49 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v49 >= 2)
    {
LABEL_40:

      v50 = sub_261D86494();
      v51 = sub_261D866C4();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v71 = v70;
        *v52 = 136315138;
        v53 = sub_261D597EC(0, &unk_27FEF3FE0, 0x277CD3B08);
        v54 = MEMORY[0x26671E0C0](v30, v53);
        v56 = sub_261D8464C(v54, v55, &v71);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_261D56000, v50, v51, "Got >1 triggersToChoose {result: .disambiguation(%s)}", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x26671EBF0](v70, -1, -1);
        MEMORY[0x26671EBF0](v52, -1, -1);
      }

      sub_261D597EC(0, &unk_27FEF3FD0, 0x277CD4100);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_261D597EC(0, &unk_27FEF3FE0, 0x277CD3B08);
      v58 = sub_261D865C4();

      v59 = [ObjCClassFromMetadata disambiguationWithContactEventTriggersToDisambiguate_];
LABEL_58:
      v67 = v59;

LABEL_59:
      (*(a3 + 16))(a3, v67);

LABEL_20:
      return;
    }
  }

  if (v49 != 1)
  {

    v64 = sub_261D86494();
    v65 = sub_261D866C4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_261D56000, v64, v65, "Got 0 triggersToChoose {result: .unsupported}", v66, 2u);
      MEMORY[0x26671EBF0](v66, -1, -1);
    }

    sub_261D597EC(0, &unk_27FEF3FD0, 0x277CD4100);
    v67 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_59;
  }

  v60 = sub_261D86494();
  v61 = sub_261D866C4();

  if (!os_log_type_enabled(v60, v61))
  {

    v62 = v30 & 0xC000000000000001;
    goto LABEL_54;
  }

  v3 = v28;
  v28 = v22;
  v22 = a3;
  v45 = swift_slowAlloc();
  a3 = swift_slowAlloc();
  *v45 = 138412290;
  v62 = v30 & 0xC000000000000001;
  if ((v30 & 0xC000000000000001) != 0)
  {
    goto LABEL_63;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v30 + 32); ; i = MEMORY[0x26671E4C0](0, v30))
    {
      *(v45 + 4) = i;
      *a3 = i;
      _os_log_impl(&dword_261D56000, v60, v61, "Got 1 triggersToChoose {result: .success(%@)}", v45, 0xCu);
      sub_261D5968C(a3);
      MEMORY[0x26671EBF0](a3, -1, -1);
      MEMORY[0x26671EBF0](v45, -1, -1);

      a3 = v22;
      v22 = v28;
      v28 = v3;
LABEL_54:
      if (v62)
      {
        break;
      }

      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v68 = *(v30 + 32);
        goto LABEL_57;
      }

      __break(1u);
LABEL_63:
      ;
    }

    goto LABEL_61;
  }

  __break(1u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_261D5968C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_261D597EC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_261D5985C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_261D59910(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for REMSmartListType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261D5998C()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF40A0);
  v1 = __swift_project_value_buffer(v0, qword_27FEF40A0);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261D59A54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_261D86214();
  v6 = sub_261D861F4();
  v55 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF42B0, qword_261D87C80);
  sub_261D85D64();
  sub_261D648A8();
  sub_261D64648(&unk_27FEF42C0, MEMORY[0x277CC95F0]);
  v7 = sub_261D865A4();

  v8 = v7 >> 62;
  if (v7 >> 62)
  {
    v9 = sub_261D86954();
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  if (v6 >> 62)
  {
    goto LABEL_55;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_56:

    if (qword_27FEF3F50 == -1)
    {
      goto LABEL_57;
    }

    goto LABEL_62;
  }

  while (1)
  {
LABEL_5:
    if (v8)
    {
      v10 = sub_261D86954();
      if (!v9)
      {
        break;
      }
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        break;
      }
    }

    if (v10 != 1)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x26671E4C0](0, v7);
LABEL_13:
      v12 = v11;

      sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
      v13 = v12;
      v14 = sub_261D86654();
      if (qword_27FEF3F50 != -1)
      {
        swift_once();
      }

      v15 = sub_261D864A4();
      __swift_project_value_buffer(v15, qword_27FEF40A0);
      v16 = v13;
      v17 = v14;
      v18 = sub_261D86494();
      v19 = sub_261D866C4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412546;
        v22 = [v16 objectID];
        *(v20 + 4) = v22;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v17;
        *v21 = v22;
        v21[1] = v17;
        v23 = v17;
        _os_log_impl(&dword_261D56000, v18, v19, "Got one REMList(%@) matches the name {result: .success(%@)}", v20, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
        swift_arrayDestroy();
        MEMORY[0x26671EBF0](v21, -1, -1);
        MEMORY[0x26671EBF0](v20, -1, -1);
      }

LABEL_28:

      sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
      v34 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList_];

LABEL_51:
      goto LABEL_52;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v7 + 32);
      goto LABEL_13;
    }

    __break(1u);
LABEL_55:
    if (!sub_261D86954())
    {
      goto LABEL_56;
    }
  }

  if (v6 >> 62)
  {
    if (sub_261D86954() != 1)
    {
      goto LABEL_34;
    }

    if (sub_261D86954())
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
LABEL_34:

    v35 = MEMORY[0x277D84F90];
    if (v10)
    {
      v55 = MEMORY[0x277D84F90];
      sub_261D86A34();
      if (v10 < 0)
      {
        __break(1u);
        return;
      }

      sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
      v36 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26671E4C0](v36, v7);
        }

        else
        {
          v38 = *(v7 + 8 * v36 + 32);
        }

        ++v36;
        sub_261D86654();
        sub_261D86A14();
        v37 = *(v55 + 16);
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
      }

      while (v10 != v36);
      v35 = v55;
    }

    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v39 = sub_261D864A4();
    __swift_project_value_buffer(v39, qword_27FEF40A0);

    v40 = sub_261D86494();
    v41 = sub_261D866C4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55 = v43;
      *v42 = 134218242;
      if (v8)
      {
        v44 = sub_261D86954();
      }

      else
      {
        v44 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v42 + 4) = v44;

      *(v42 + 12) = 2080;
      v45 = sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
      v46 = MEMORY[0x26671E0C0](v35, v45);
      v48 = sub_261D8464C(v46, v47, &v55);

      *(v42 + 14) = v48;
      _os_log_impl(&dword_261D56000, v40, v41, "Got %ld REMList matches the name {result: .disambiguation(%s)}", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x26671EBF0](v43, -1, -1);
      MEMORY[0x26671EBF0](v42, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v16 = sub_261D865C4();

    v34 = [ObjCClassFromMetadata disambiguationWithTaskListsToDisambiguate_];
    goto LABEL_51;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_34;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

LABEL_21:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x26671E4C0](0, v6);
    goto LABEL_24;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v6 + 32);
LABEL_24:
    v25 = v24;

    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v26 = v25;
    v27 = sub_261D86634();
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v28 = sub_261D864A4();
    __swift_project_value_buffer(v28, qword_27FEF40A0);
    v16 = v26;
    v17 = v27;
    v18 = sub_261D86494();
    v29 = sub_261D866C4();

    if (os_log_type_enabled(v18, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      v32 = [v16 objectID];
      *(v30 + 4) = v32;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v17;
      *v31 = v32;
      v31[1] = v17;
      v33 = v17;
      _os_log_impl(&dword_261D56000, v18, v29, "Found REMSmartList matching the name {objectID: %@, result: .success(%@)}", v30, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
      swift_arrayDestroy();
      MEMORY[0x26671EBF0](v31, -1, -1);
      MEMORY[0x26671EBF0](v30, -1, -1);
    }

    goto LABEL_28;
  }

  __break(1u);
LABEL_62:
  swift_once();
LABEL_57:
  v51 = sub_261D864A4();
  __swift_project_value_buffer(v51, qword_27FEF40A0);
  v52 = sub_261D86494();
  v53 = sub_261D866C4();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_261D56000, v52, v53, "No REMList or REMSmartList matches the name, prompt for creation {result: .confirmationRequired(.listShouldBeCreated)}", v54, 2u);
    MEMORY[0x26671EBF0](v54, -1, -1);
  }

  v34 = [objc_opt_self() confirmationRequiredWithTaskListToConfirm:a2 forReason:1];
LABEL_52:
  v50 = v34;
  a3();
}

void sub_261D5A428(id *a1)
{
  v1 = [*a1 remObjectID];
  v2 = [v1 uuid];

  sub_261D85D54();
}

void sub_261D5A4A0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(void))
{
  v11 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_31:
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v64 = sub_261D864A4();
    __swift_project_value_buffer(v64, qword_27FEF40A0);

    v65 = sub_261D86494();
    v66 = sub_261D866C4();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v80 = v85;
      *v67 = 136315650;
      v68 = sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
      v69 = MEMORY[0x26671E0C0](a2, v68);
      v71 = sub_261D8464C(v69, v70, &v85);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      v72 = MEMORY[0x277D837D0];
      v73 = MEMORY[0x26671E0C0](a3, MEMORY[0x277D837D0]);
      v75 = sub_261D8464C(v73, v74, &v85);

      *(v67 + 14) = v75;
      *(v67 + 22) = 2080;
      v76 = MEMORY[0x26671E0C0](a4, v72);
      v78 = sub_261D8464C(v76, v77, &v85);

      *(v67 + 24) = v78;
      _os_log_impl(&dword_261D56000, v65, v66, "No list shared with the specified .targetTaskListMembers {targetTaskListMembers: %s, emails: %s, phones: %s, result: .disambiguateDueToNoDefaultList}", v67, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671EBF0](v80, -1, -1);
      MEMORY[0x26671EBF0](v67, -1, -1);
    }

    v33 = sub_261D5AE54();
    goto LABEL_36;
  }

  if (!sub_261D86954())
  {
    goto LABEL_31;
  }

  v12 = sub_261D86954();
LABEL_3:
  v13 = MEMORY[0x277D84F90];
  v83 = a4;
  if (!v12)
  {
LABEL_20:
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v41 = sub_261D864A4();
    __swift_project_value_buffer(v41, qword_27FEF40A0);

    v42 = sub_261D86494();
    v43 = sub_261D866C4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v85 = v45;
      *v44 = 134219010;
      v82 = a6;
      if (v11)
      {
        v46 = sub_261D86954();
      }

      else
      {
        v46 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v44 + 4) = v46;

      *(v44 + 12) = 2080;
      v47 = sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
      v48 = MEMORY[0x26671E0C0](a2, v47);
      v50 = sub_261D8464C(v48, v49, &v85);

      *(v44 + 14) = v50;
      *(v44 + 22) = 2080;
      v51 = MEMORY[0x277D837D0];
      v52 = MEMORY[0x26671E0C0](a3, MEMORY[0x277D837D0]);
      v54 = sub_261D8464C(v52, v53, &v85);

      *(v44 + 24) = v54;
      *(v44 + 32) = 2080;
      v55 = MEMORY[0x26671E0C0](v83, v51);
      v57 = sub_261D8464C(v55, v56, &v85);

      *(v44 + 34) = v57;
      *(v44 + 42) = 2080;
      v58 = sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
      v59 = MEMORY[0x26671E0C0](v13, v58);
      v61 = sub_261D8464C(v59, v60, &v85);

      *(v44 + 44) = v61;
      _os_log_impl(&dword_261D56000, v42, v43, "Got %ld REMList matching .targetTaskListMembers {targetTaskListMembers: %s, emails: %s, phones: %s, result: .disambiguation(%s)}", v44, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x26671EBF0](v45, -1, -1);
      MEMORY[0x26671EBF0](v44, -1, -1);

      a6 = v82;
    }

    else
    {
    }

    sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v63 = sub_261D865C4();

    v33 = [ObjCClassFromMetadata disambiguationWithTaskListsToDisambiguate_];

    goto LABEL_36;
  }

  if (v12 == 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26671E4C0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v14 = *(a1 + 32);
    }

    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v12 = sub_261D86654();
    if (qword_27FEF3F50 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

  v85 = MEMORY[0x277D84F90];
  sub_261D86A34();
  if ((v12 & 0x8000000000000000) == 0)
  {
    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v34 = 0;
      do
      {
        v35 = v34 + 1;
        MEMORY[0x26671E4C0]();
        sub_261D86654();
        sub_261D86A14();
        v36 = *(v85 + 16);
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
        v34 = v35;
      }

      while (v12 != v35);
    }

    else
    {
      v37 = (a1 + 32);
      do
      {
        v38 = *v37++;
        v39 = v38;
        sub_261D86654();
        sub_261D86A14();
        v40 = *(v85 + 16);
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
        --v12;
      }

      while (v12);
    }

    v13 = v85;
    goto LABEL_20;
  }

  __break(1u);
LABEL_41:
  swift_once();
LABEL_9:
  v15 = sub_261D864A4();
  __swift_project_value_buffer(v15, qword_27FEF40A0);

  v16 = v12;
  v17 = sub_261D86494();
  v18 = sub_261D866C4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v85 = v79;
    *v19 = 136315906;
    v21 = sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
    v22 = MEMORY[0x26671E0C0](a2, v21);
    v81 = a6;
    v24 = sub_261D8464C(v22, v23, &v85);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = MEMORY[0x277D837D0];
    v26 = MEMORY[0x26671E0C0](a3, MEMORY[0x277D837D0]);
    v28 = sub_261D8464C(v26, v27, &v85);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2080;
    v29 = MEMORY[0x26671E0C0](a4, v25);
    v31 = sub_261D8464C(v29, v30, &v85);
    a6 = v81;

    *(v19 + 24) = v31;
    *(v19 + 32) = 2112;
    *(v19 + 34) = v16;
    *v20 = v16;
    v32 = v16;
    _os_log_impl(&dword_261D56000, v17, v18, "Found exactly 1 list matching .targetTaskListMembers, using that. {targetTaskListMembers: %s, emails: %s, phones: %s, result: .success(%@)}", v19, 0x2Au);
    sub_261D646F8(v20, &qword_27FEF4200, &unk_261D878D0);
    MEMORY[0x26671EBF0](v20, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v79, -1, -1);
    MEMORY[0x26671EBF0](v19, -1, -1);
  }

  sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
  v33 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList_];

LABEL_36:
  v84 = v33;
  a6();
}

id sub_261D5AE54()
{
  v64[1] = *MEMORY[0x277D85DE8];
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41B0, &unk_261D87DA0) - 8) + 64);
  v2 = (MEMORY[0x28223BE20])();
  v4 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  MEMORY[0x28223BE20](v2);
  v6 = v64 - v5 + 32;
  v7 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store);
  v64[0] = 0;
  v8 = [v7 fetchEligibleDefaultListsWithError_];
  v9 = v64[0];
  if (!v8)
  {
    v17 = v64[0];
    v18 = sub_261D85C64();

    swift_willThrow();
    goto LABEL_42;
  }

  v10 = v8;
  v63 = v7;
  sub_261D597EC(0, &qword_27FEF41C0, 0x277D44660);
  v11 = sub_261D865D4();
  v12 = v9;

  if (!(v11 >> 62))
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_13:

    v11 = MEMORY[0x277D84F90];
LABEL_14:
    if (v11 >> 62)
    {
      if (sub_261D86954())
      {
        v19 = sub_261D86954();
LABEL_16:
        if (v19 != 1)
        {
          if (qword_27FEF3F50 != -1)
          {
            swift_once();
          }

          v26 = sub_261D864A4();
          __swift_project_value_buffer(v26, qword_27FEF40A0);

          v27 = sub_261D86494();
          v28 = sub_261D866C4();
          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            *v29 = 134217984;
            if (v11 >> 62)
            {
              v30 = sub_261D86954();
            }

            else
            {
              v30 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v29 + 4) = v30;

            _os_log_impl(&dword_261D56000, v27, v28, "Disambiguating with some lists {count: %ld}", v29, 0xCu);
            MEMORY[0x26671EBF0](v29, -1, -1);
          }

          else
          {
          }

          sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
          v32 = sub_261D865C4();

          v33 = [ObjCClassFromMetadata disambiguationWithTaskListsToDisambiguate_];

          goto LABEL_58;
        }

        if (qword_27FEF3F50 == -1)
        {
          goto LABEL_18;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_16;
      }
    }

    sub_261D86024();
    v34 = sub_261D86564();

    v35 = sub_261D85C44();
    v36 = *(v35 - 8);
    v37 = *(v36 + 56);
    v37(v6, 1, 1, v35);
    v37(v4, 1, 1, v35);
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v38 = sub_261D865C4();
    v39 = *(v36 + 48);
    v40 = 0;
    if (v39(v6, 1, v35) != 1)
    {
      v40 = sub_261D85BD4();
      (*(v36 + 8))(v6, v35);
    }

    if (v39(v4, 1, v35) == 1)
    {
      v41 = 0;
    }

    else
    {
      v41 = sub_261D85BD4();
      (*(v36 + 8))(v4, v35);
    }

    v11 = [objc_allocWithZone(MEMORY[0x277CD4228]) initWithTitle:v34 tasks:v38 groupName:0 createdDateComponents:v40 modifiedDateComponents:v41 identifier:0];

    v64[0] = 0;
    v42 = [v63 fetchDefaultAccountWithError_];
    v4 = v42;
    if (!v64[0])
    {
      if (!v42)
      {
        if (qword_27FEF3F50 != -1)
        {
          swift_once();
        }

        v58 = sub_261D864A4();
        __swift_project_value_buffer(v58, qword_27FEF40A0);
        v59 = sub_261D86494();
        v60 = sub_261D866A4();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_261D56000, v59, v60, "No lists found in fetchEligibleDefaultLists and no default account available. Responding with .success so that we can fail the user in handle() with .failureRequiringAppLaunch. {result: .success}", v61, 2u);
          MEMORY[0x26671EBF0](v61, -1, -1);
        }

        sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
        v33 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList_];

        goto LABEL_58;
      }

      if (qword_27FEF3F50 == -1)
      {
        goto LABEL_50;
      }

      goto LABEL_63;
    }

    v18 = v64[0];

    swift_willThrow();
LABEL_42:
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v43 = sub_261D864A4();
    __swift_project_value_buffer(v43, qword_27FEF40A0);
    v44 = v18;
    v45 = sub_261D86494();
    v46 = sub_261D866A4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v64[0] = v48;
      *v47 = 136315138;
      swift_getErrorValue();
      v49 = sub_261D86BA4();
      v51 = sub_261D8464C(v49, v50, v64);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_261D56000, v45, v46, "Error trying to retrieve eligible default lists {error: %s}", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x26671EBF0](v48, -1, -1);
      MEMORY[0x26671EBF0](v47, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
    v25 = [swift_getObjCClassFromMetadata() unsupported];

    goto LABEL_47;
  }

  v13 = sub_261D86954();
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_4:
  v64[0] = MEMORY[0x277D84F90];
  sub_261D86A34();
  if ((v13 & 0x8000000000000000) == 0)
  {
    sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26671E4C0](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      ++v14;
      sub_261D86654();
      sub_261D86A14();
      v15 = *(v64[0] + 2);
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
    }

    while (v13 != v14);

    v11 = v64[0];
    goto LABEL_14;
  }

  __break(1u);
LABEL_60:
  swift_once();
LABEL_18:
  v20 = sub_261D864A4();
  __swift_project_value_buffer(v20, qword_27FEF40A0);
  v21 = sub_261D86494();
  v22 = sub_261D866C4();
  if (os_log_type_enabled(v21, v22))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261D56000, v21, v22, "Got exactly 1 list from fetchEligibleDefaultLists, using that. {result: .confirmationRequired}", v4, 2u);
    MEMORY[0x26671EBF0](v4, -1, -1);
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x26671E4C0](0, v11);
    goto LABEL_23;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v11 + 32);
LABEL_23:
    v24 = v23;

    sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
    v25 = [swift_getObjCClassFromMetadata() confirmationRequiredWithTaskListToConfirm_];

LABEL_47:
    v52 = *MEMORY[0x277D85DE8];
    return v25;
  }

  __break(1u);
LABEL_63:
  swift_once();
LABEL_50:
  v54 = sub_261D864A4();
  __swift_project_value_buffer(v54, qword_27FEF40A0);
  v55 = sub_261D86494();
  v56 = sub_261D866C4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_261D56000, v55, v56, "No lists found in fetchEligibleDefaultLists(), prompt for creation {result: .confirmationRequired(.listShouldBeCreated)}", v57, 2u);
    MEMORY[0x26671EBF0](v57, -1, -1);
  }

  v33 = [objc_opt_self() confirmationRequiredWithTaskListToConfirm:v11 forReason:1];
LABEL_58:
  v62 = *MEMORY[0x277D85DE8];
  return v33;
}

void sub_261D5B910(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v6 = sub_261D864A4();
  __swift_project_value_buffer(v6, qword_27FEF40A0);
  v7 = a1;
  v8 = sub_261D86494();
  v9 = sub_261D866C4();

  if (os_log_type_enabled(v8, v9))
  {
    v27 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    v12 = [v7 taskTitles];
    if (v12)
    {
      v13 = v12;
      sub_261D597EC(0, &unk_27FEF4190, 0x277CD4188);
      sub_261D865D4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4188, &unk_261D87C00);
    v15 = sub_261D868D4();
    v17 = v16;

    v18 = sub_261D8464C(v15, v17, &v28);

    *(v10 + 4) = v18;
    _os_log_impl(&dword_261D56000, v8, v9, "SiriKit asked for resolving task titles {taskTitles: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26671EBF0](v11, -1, -1);
    MEMORY[0x26671EBF0](v10, -1, -1);

    a2 = v27;
  }

  else
  {
  }

  MEMORY[0x28223BE20](v14);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4170, &qword_261D87BE8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_261D86464();
  v22 = sub_261D863F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF46C0, &qword_261D87BF0);
  sub_261D86434();

  *(swift_allocObject() + 16) = v7;
  v23 = v7;
  v24 = sub_261D863F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4180, &qword_261D87BF8);
  sub_261D86434();

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;

  v26 = sub_261D863F4();
  sub_261D86434();
}

uint64_t sub_261D5BCBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41A8, &unk_261D87C10);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  if (*a1)
  {
    sub_261D86704();
    v11 = sub_261D866F4();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v11 = sub_261D866F4();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  sub_261D64690(v10, v8, &qword_27FEF41A8, &unk_261D87C10);
  sub_261D866F4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_261D646F8(v10, &qword_27FEF41A8, &unk_261D87C10);
    result = sub_261D646F8(v8, &qword_27FEF41A8, &unk_261D87C10);
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v14 = sub_261D866E4();
    v16 = v15;
    sub_261D646F8(v10, &qword_27FEF41A8, &unk_261D87C10);
    *a2 = v14;
    a2[1] = v16;
    return (*(v12 + 8))(v8, v11);
  }

  return result;
}

id sub_261D5BEF0@<X0>(id a1@<X1>, uint64_t *a2@<X0>, char *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = [a1 taskTitles];
  v7 = MEMORY[0x277D84F90];
  v47 = a3;
  if (!v6)
  {
    a3 = MEMORY[0x277D84F90];
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v8 = v6;
  sub_261D597EC(0, &unk_27FEF4190, 0x277CD4188);
  v9 = sub_261D865D4();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_21:

    a3 = MEMORY[0x277D84F90];
    if (!v5)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v10 = sub_261D86954();
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_4:
  sub_261D803FC(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v45 = v5;
  v46 = v4;
  v11 = 0;
  a3 = v7;
  v12 = v9;
  v48 = v9 & 0xC000000000000001;
  v13 = v9;
  v14 = v10;
  do
  {
    if (v48)
    {
      v15 = MEMORY[0x26671E4C0](v11, v12);
    }

    else
    {
      v15 = *(v12 + 8 * v11 + 32);
    }

    v16 = v15;
    v17 = [v15 spokenPhrase];
    v18 = sub_261D86534();
    v20 = v19;

    v22 = *(a3 + 2);
    v21 = *(a3 + 3);
    if (v22 >= v21 >> 1)
    {
      sub_261D803FC((v21 > 1), v22 + 1, 1);
    }

    ++v11;
    *(a3 + 2) = v22 + 1;
    v23 = &a3[16 * v22];
    *(v23 + 4) = v18;
    *(v23 + 5) = v20;
    v12 = v13;
  }

  while (v14 != v11);

  v7 = MEMORY[0x277D84F90];
  v5 = v45;
  v4 = v46;
  if (v45)
  {
LABEL_15:
    if (*(a3 + 2))
    {
LABEL_23:
      if (qword_27FEF3F50 != -1)
      {
        swift_once();
      }

      v27 = sub_261D864A4();
      __swift_project_value_buffer(v27, qword_27FEF40A0);
      v28 = sub_261D86494();
      v29 = sub_261D866C4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_261D56000, v28, v29, "Resolved taskTitles {result: .success}", v30, 2u);
        MEMORY[0x26671EBF0](v30, -1, -1);
      }

      v31 = *(a3 + 2);
      if (v31)
      {
        v49 = v7;
        sub_261D86A34();
        v32 = objc_opt_self();
        v33 = (a3 + 40);
        do
        {
          v35 = *(v33 - 1);
          v34 = *v33;

          v36 = sub_261D86564();
          v37 = [v32 successWithResolvedString_];

          sub_261D86A14();
          v38 = *(v49 + 16);
          sub_261D86A44();
          sub_261D86A54();
          sub_261D86A24();
          v33 += 2;
          --v31;
        }

        while (v31);

        v40 = v49;
      }

      else
      {

        v40 = MEMORY[0x277D84F90];
      }

      goto LABEL_37;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_17:
      v25 = *(a3 + 2);
      v24 = *(a3 + 3);
      if (v25 >= v24 >> 1)
      {
        a3 = sub_261D842B4((v24 > 1), v25 + 1, 1, a3);
      }

      *(a3 + 2) = v25 + 1;
      v26 = &a3[16 * v25];
      *(v26 + 4) = v4;
      *(v26 + 5) = v5;
      goto LABEL_23;
    }

LABEL_39:
    a3 = sub_261D842B4(0, 1, 1, a3);
    goto LABEL_17;
  }

LABEL_22:
  if (*(a3 + 2))
  {
    goto LABEL_23;
  }

  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v41 = sub_261D864A4();
  __swift_project_value_buffer(v41, qword_27FEF40A0);
  v42 = sub_261D86494();
  v43 = sub_261D866C4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_261D56000, v42, v43, "userTitles has 0 elements {result: .needsValue}", v44, 2u);
    MEMORY[0x26671EBF0](v44, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_261D877A0;
  sub_261D597EC(0, &qword_27FEF41A0, 0x277CD4198);
  result = [swift_getObjCClassFromMetadata() needsValue];
  *(v40 + 32) = result;
LABEL_37:
  *v47 = v40;
  return result;
}

void sub_261D5C4CC(uint64_t a1, uint64_t a2)
{
  sub_261D597EC(0, &qword_27FEF41A0, 0x277CD4198);
  v3 = sub_261D865C4();
  (*(a2 + 16))(a2, v3);
}

id sub_261D5C578(void *a1)
{
  v2 = v1;
  v3 = [a1 targetTaskList];
  if (!v3 || (v4 = v3, v5 = *(v1 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store), v6 = sub_261D86624(), v4, !v6))
  {
    v7 = sub_261D5F63C(*(v2 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store));
    if (!v7)
    {
      return 0;
    }

LABEL_6:
    v8 = [v7 capabilities];

    return v8;
  }

  v7 = [v6 account];

  if (v7)
  {
    goto LABEL_6;
  }

  return 0;
}

void sub_261D5C640(void *a1, void (*a2)(void))
{
  if (*a1)
  {
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v3 = sub_261D864A4();
    __swift_project_value_buffer(v3, qword_27FEF40A0);
    v4 = sub_261D86494();
    v5 = sub_261D866C4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_261D56000, v4, v5, "Got userActivity {result: .success(.currentActivity)", v6, 2u);
      MEMORY[0x26671EBF0](v6, -1, -1);
    }

    v7 = [objc_opt_self() successWithResolvedTaskReference_];
  }

  else
  {
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v8 = sub_261D864A4();
    __swift_project_value_buffer(v8, qword_27FEF40A0);
    v9 = sub_261D86494();
    v10 = sub_261D866C4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261D56000, v9, v10, "Got nil userActivity {result: .notRequired}", v11, 2u);
      MEMORY[0x26671EBF0](v11, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4270, 0x277CD4230);
    v7 = [swift_getObjCClassFromMetadata() notRequired];
  }

  v12 = v7;
  a2();
}

void sub_261D5C844(void *a1, void (*a2)(void))
{
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF40A0);
  v5 = a1;
  v6 = sub_261D86494();
  v7 = sub_261D866A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_261D86BA4();
    v12 = sub_261D8464C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_261D56000, v6, v7, "Got error userActivity. {result: .notRequired, error: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671EBF0](v9, -1, -1);
    MEMORY[0x26671EBF0](v8, -1, -1);
  }

  sub_261D597EC(0, &qword_27FEF4270, 0x277CD4230);
  v13 = [swift_getObjCClassFromMetadata() notRequired];
  a2();
}

void sub_261D5CA30(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_261D5CAD8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v10 = a3;
  v9 = a1;
  a5(v10, v9, v8);
  _Block_release(v8);

  _Block_release(v8);
}

void sub_261D5CB6C(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = v2;
    v5 = v2;
  }
}

uint64_t sub_261D5CBD0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = sub_261D866F4();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4208, &qword_261D87C38);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - v14;
  v16 = *a1;
  result = swift_projectBox();
  if (v16)
  {
    v18 = result;
    v31 = v4;
    v19 = objc_allocWithZone(MEMORY[0x277D448F0]);
    v20 = v16;
    v21 = [v19 initWithUserActivity_];
    v22 = 1;
    swift_beginAccess();
    v23 = *(a2 + 16);
    *(a2 + 16) = v21;

    v24 = [v20 webpageURL];
    if (v24)
    {
      v25 = v24;
      sub_261D85C84();

      v22 = 0;
    }

    v26 = sub_261D85C94();
    (*(*(v26 - 8) + 56))(v15, v22, 1, v26);
    swift_beginAccess();
    sub_261D64758(v15, v18);
    sub_261D86704();
    v27 = sub_261D866D4();
    v29 = v28;

    (*(v8 + 8))(v11, v32);
    swift_beginAccess();
    v30 = *(a4 + 24);
    *(a4 + 16) = v27;
    *(a4 + 24) = v29;
  }

  return result;
}

void sub_261D5CE48(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void (*a16)(void))
{
  v83[1] = *MEMORY[0x277D85DE8];
  v65 = swift_projectBox();
  v18 = swift_projectBox();
  v19 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store);
  v20 = objc_allocWithZone(MEMORY[0x277D447D8]);
  a3;
  v21 = [v20 initWithStore_];
  sub_261D85E64();
  v22 = v21;
  sub_261D85F34();
  v71 = v83[0];
  v72 = 0;
  v73 = a5;
  v74 = a6;
  v75 = v65;
  v76 = a8;
  v77 = a9 + 16;
  v78 = a10 + 16;
  v79 = v18;
  v80 = a12 + 16;
  v81 = a13 + 16;
  v82 = a14;
  v23 = sub_261D80E10(sub_261D64600, v70, a4);
  v83[0] = 0;
  v24 = [v22 saveSynchronouslyWithError_];
  v25 = v83[0];
  if (v24)
  {
    sub_261D85EB4();
    v26 = v25;
    sub_261D85EA4();
    sub_261D85E94();

    if (v23 >> 62)
    {
      v27 = sub_261D86954();
      v64 = v22;
      if (v27)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v27 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v64 = v22;
      if (v27)
      {
LABEL_4:
        v83[0] = MEMORY[0x277D84F90];
        sub_261D86A34();
        if (v27 < 0)
        {
          __break(1u);
        }

        sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
        v28 = 0;
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            MEMORY[0x26671E4C0](v28, v23);
          }

          else
          {
            v30 = *(v23 + 8 * v28 + 32);
          }

          ++v28;
          sub_261D86804();
          sub_261D86A14();
          v29 = *(v83[0] + 2);
          sub_261D86A44();
          sub_261D86A54();
          sub_261D86A24();
        }

        while (v27 != v28);

        v43 = v83[0];
        goto LABEL_18;
      }
    }

    v43 = MEMORY[0x277D84F90];
LABEL_18:
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v44 = sub_261D864A4();
    __swift_project_value_buffer(v44, qword_27FEF40A0);

    v45 = sub_261D86494();
    v46 = sub_261D866C4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v83[0] = v48;
      *v47 = 136315138;
      v49 = sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
      v50 = MEMORY[0x26671E0C0](v43, v49);
      v52 = sub_261D8464C(v50, v51, v83);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_261D56000, v45, v46, "insertedTasks: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x26671EBF0](v48, -1, -1);
      MEMORY[0x26671EBF0](v47, -1, -1);
    }

    v53 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:3 userActivity:0];
    [v53 setModifiedTaskList_];
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v54 = sub_261D865C4();

    [v53 setAddedTasks_];

    v83[0] = a14;
    v55 = sub_261D86854();
    sub_261D597EC(0, &qword_27FEF41F0, 0x277CD3A18);
    v56 = sub_261D860F4();

    [v53 setWarnings_];
    v57 = v53;
    v58 = sub_261D86494();
    v59 = sub_261D866C4();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138412290;
      *(v60 + 4) = v57;
      *v61 = v57;
      v62 = v57;
      _os_log_impl(&dword_261D56000, v58, v59, "successfully handled intent {result: %@}", v60, 0xCu);
      sub_261D646F8(v61, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v61, -1, -1);
      MEMORY[0x26671EBF0](v60, -1, -1);
    }

    (a16)(v57);

    goto LABEL_25;
  }

  v31 = v83[0];

  v32 = sub_261D85C64();

  swift_willThrow();
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v33 = sub_261D864A4();
  __swift_project_value_buffer(v33, qword_27FEF40A0);
  v34 = v32;
  v35 = sub_261D86494();
  v36 = sub_261D866A4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v83[0] = v38;
    *v37 = 136446210;
    swift_getErrorValue();
    v39 = sub_261D86BB4();
    v41 = sub_261D8464C(v39, v40, v83);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_261D56000, v35, v36, "Error saving saveRequest {error: %{public}s}", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x26671EBF0](v38, -1, -1);
    MEMORY[0x26671EBF0](v37, -1, -1);
  }

  v42 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
  a16();

LABEL_25:
  v63 = *MEMORY[0x277D85DE8];
}

void sub_261D5D5F0(void **a1@<X0>, void *a2@<X2>, void *a3@<X3>, void *a4@<X4>, void (*a5)(void, void)@<X5>, void (*a6)(char *, uint64_t)@<X6>, void **a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t *a11, id *a12, id a13)
{
  v214 = a7;
  v204 = a6;
  v211 = a5;
  v219 = a8;
  v209 = sub_261D85D24();
  v208 = *(v209 - 8);
  v17 = *(v208 + 64);
  MEMORY[0x28223BE20](v209);
  v207 = v198 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4208, &qword_261D87C38);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v206 = v198 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v215 = (v198 - v23);
  v218 = sub_261D85C94();
  v217 = *(v218 - 8);
  v24 = *(v217 + 64);
  MEMORY[0x28223BE20](v218);
  v224 = (v198 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v216 = v198 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41D8, &qword_261D87C20);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v203 = v198 - v30;
  v213 = sub_261D86074();
  v210 = *(v213 - 8);
  v31 = *(v210 + 64);
  MEMORY[0x28223BE20](v213);
  v199 = v198 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v200 = v198 - v34;
  MEMORY[0x28223BE20](v35);
  v205 = v198 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41B0, &unk_261D87DA0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v202 = v198 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = v198 - v41;
  v43 = sub_261D85C44();
  v44 = *(v43 - 8);
  v222 = v43;
  v223 = v44;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v201 = v198 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v220 = (v198 - v48);
  v49 = *a1;
  v50 = sub_261D85E54();
  sub_261D86014();
  sub_261D64648(&unk_27FEF4240, MEMORY[0x277D45CF0]);
  v51 = v50;
  v52 = a2;
  v221 = v51;
  sub_261D86034();
  v53 = v226[3];
  v54 = [v49 spokenPhrase];
  if (!v54)
  {
    sub_261D86534();
    v54 = sub_261D86504();
  }

  v55 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

  sub_261D85FD4();
  v226[8] = v53;
  if (a3)
  {
    v56 = qword_27FEF3F50;
    v57 = a3;
    if (v56 != -1)
    {
      swift_once();
    }

    v58 = sub_261D864A4();
    __swift_project_value_buffer(v58, qword_27FEF40A0);
    v59 = v57;
    v60 = sub_261D86494();
    v61 = sub_261D866C4();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      *(v62 + 4) = v59;
      *v63 = a3;
      v64 = v59;
      _os_log_impl(&dword_261D56000, v60, v61, "setting locationTrigger {locationTrigger: %@}", v62, 0xCu);
      sub_261D646F8(v63, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v63, -1, -1);
      MEMORY[0x26671EBF0](v62, -1, -1);
    }

    v65 = v59;
    MEMORY[0x26671DA60](a3);
  }

  v66 = 0x27FEF3000uLL;
  if (a4)
  {
    v67 = qword_27FEF3F50;
    v68 = a4;
    if (v67 != -1)
    {
      swift_once();
    }

    v69 = sub_261D864A4();
    __swift_project_value_buffer(v69, qword_27FEF40A0);
    v70 = v68;
    v71 = sub_261D86494();
    v72 = sub_261D866C4();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412290;
      *(v73 + 4) = v70;
      *v74 = a4;
      v75 = v70;
      _os_log_impl(&dword_261D56000, v71, v72, "setting vehicleTrigger {vehicleTrigger: %@}", v73, 0xCu);
      sub_261D646F8(v74, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v74, -1, -1);
      MEMORY[0x26671EBF0](v73, -1, -1);
    }

    v76 = v70;
    MEMORY[0x26671DA50](a4);
  }

  v212 = a9;
  v77 = v211;
  swift_beginAccess();
  sub_261D64690(v77, v42, &qword_27FEF41B0, &unk_261D87DA0);
  v78 = v222;
  v79 = v223;
  if ((*(v223 + 48))(v42, 1, v222) == 1)
  {
    sub_261D646F8(v42, &qword_27FEF41B0, &unk_261D87DA0);
    v80 = v224;
  }

  else
  {
    v81 = v220;
    (*(v79 + 32))(v220, v42, v78);
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v82 = sub_261D864A4();
    v83 = __swift_project_value_buffer(v82, qword_27FEF40A0);
    v84 = *(v79 + 16);
    v85 = v201;
    v84(v201, v81, v78);
    v198[1] = v83;
    v86 = sub_261D86494();
    v87 = sub_261D866C4();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = v85;
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v226[0] = v90;
      *v89 = 136315138;
      sub_261D64648(&qword_27FEF4250, MEMORY[0x277CC8990]);
      v91 = sub_261D86B54();
      v93 = v92;
      v94 = v88;
      v78 = v222;
      v211 = *(v223 + 8);
      v211(v94, v222);
      v95 = sub_261D8464C(v91, v93, v226);

      *(v89 + 4) = v95;
      _os_log_impl(&dword_261D56000, v86, v87, "setting dueDateComponents {dueDateComponents: %s}", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      v96 = v90;
      v79 = v223;
      MEMORY[0x26671EBF0](v96, -1, -1);
      MEMORY[0x26671EBF0](v89, -1, -1);
    }

    else
    {

      v211 = *(v79 + 8);
      v211(v85, v78);
    }

    v80 = v224;
    v97 = v213;
    v98 = v202;
    v99 = v220;
    v84(v202, v220, v78);
    (*(v79 + 56))(v98, 0, 1, v78);
    sub_261D85FA4();
    sub_261D646F8(v98, &qword_27FEF41B0, &unk_261D87DA0);
    v100 = v203;
    sub_261D64690(v204, v203, &qword_27FEF41D8, &qword_261D87C20);
    v101 = v210;
    if ((*(v210 + 48))(v100, 1, v97) == 1)
    {
      v211(v99, v78);
      sub_261D646F8(v100, &qword_27FEF41D8, &qword_261D87C20);
    }

    else
    {
      v102 = v205;
      (*(v101 + 32))(v205, v100, v97);
      v103 = v200;
      v222 = *(v101 + 16);
      v222(v200, v102, v97);
      v104 = sub_261D86494();
      v105 = sub_261D866C4();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v226[0] = v107;
        *v106 = 136315138;
        v222(v199, v103, v213);
        v108 = sub_261D86544();
        v110 = v109;
        v204 = *(v210 + 8);
        v204(v103, v213);
        v111 = sub_261D8464C(v108, v110, v226);

        *(v106 + 4) = v111;
        v80 = v224;
        _os_log_impl(&dword_261D56000, v104, v105, "setting recurrenceRule {recurrenceRule: %s}", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v107);
        v112 = v107;
        v101 = v210;
        MEMORY[0x26671EBF0](v112, -1, -1);
        v113 = v106;
        v97 = v213;
        MEMORY[0x26671EBF0](v113, -1, -1);
      }

      else
      {

        v204 = *(v101 + 8);
        v204(v103, v97);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4400, &qword_261D87C50);
      v114 = *(v101 + 72);
      v115 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_261D87AE0;
      v117 = v205;
      v222(v116 + v115, v205, v97);
      sub_261D85F94();

      v204(v117, v97);
      v211(v220, v78);
    }

    v66 = 0x27FEF3000uLL;
  }

  v118 = v214;
  swift_beginAccess();
  v119 = *v118;
  if (v119)
  {
    v120 = qword_27FEF3F50;
    v121 = v119;
    if (v120 != -1)
    {
      swift_once();
    }

    v122 = sub_261D864A4();
    __swift_project_value_buffer(v122, qword_27FEF40A0);
    v123 = v121;
    v124 = sub_261D86494();
    v125 = sub_261D866C4();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v126 = 138412290;
      *(v126 + 4) = v123;
      *v127 = v119;
      v128 = v123;
      _os_log_impl(&dword_261D56000, v124, v125, "setting contactRepresentation {contactRepresentation: %@}", v126, 0xCu);
      sub_261D646F8(v127, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v127, -1, -1);
      v129 = v126;
      v80 = v224;
      MEMORY[0x26671EBF0](v129, -1, -1);
    }

    v130 = v123;
    sub_261D85F64();
  }

  v131 = a11;
  v132 = v212;
  swift_beginAccess();
  v133 = *v132;
  if (*v132)
  {
    v134 = qword_27FEF3F50;
    v135 = v133;
    if (v134 != -1)
    {
      swift_once();
    }

    v136 = sub_261D864A4();
    __swift_project_value_buffer(v136, qword_27FEF40A0);
    v137 = v135;
    v138 = sub_261D86494();
    v139 = sub_261D866C4();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *v140 = 138412290;
      *(v140 + 4) = v137;
      *v141 = v133;
      v142 = v137;
      _os_log_impl(&dword_261D56000, v138, v139, "setting userActivity {remUserActivity: %@}", v140, 0xCu);
      sub_261D646F8(v141, &qword_27FEF4200, &unk_261D878D0);
      v143 = v141;
      v66 = 0x27FEF3000uLL;
      MEMORY[0x26671EBF0](v143, -1, -1);
      MEMORY[0x26671EBF0](v140, -1, -1);
    }

    v144 = v137;
    sub_261D85F54();

    v80 = v224;
  }

  v224 = a12;
  swift_beginAccess();
  v145 = v215;
  sub_261D64690(a10, v215, &qword_27FEF4208, &qword_261D87C38);
  v146 = v217;
  v147 = v218;
  if ((*(v217 + 48))(v145, 1, v218) == 1)
  {
    sub_261D646F8(v145, &qword_27FEF4208, &qword_261D87C38);
  }

  else
  {
    v223 = a11;
    v148 = v216;
    (*(v146 + 32))(v216, v145, v147);
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v149 = sub_261D864A4();
    __swift_project_value_buffer(v149, qword_27FEF40A0);
    v222 = *(v146 + 16);
    v222(v80, v148, v147);
    v150 = sub_261D86494();
    v151 = sub_261D866C4();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = swift_slowAlloc();
      v215 = v152;
      v220 = swift_slowAlloc();
      v225 = v220;
      *v152 = 136315138;
      v153 = sub_261D85C74();
      v155 = v154;
      v156 = v80;
      v157 = *(v146 + 8);
      v157(v156, v147);
      v158 = sub_261D8464C(v153, v155, &v225);
      v66 = 0x27FEF3000;

      v159 = v215;
      *(v215 + 1) = v158;
      v160 = v151;
      v161 = v159;
      _os_log_impl(&dword_261D56000, v150, v160, "setting URL attachment {userActivityURL: %s}", v159, 0xCu);
      v162 = v220;
      __swift_destroy_boxed_opaque_existential_0(v220);
      MEMORY[0x26671EBF0](v162, -1, -1);
      MEMORY[0x26671EBF0](v161, -1, -1);
    }

    else
    {

      v163 = v80;
      v157 = *(v146 + 8);
      v157(v163, v147);
    }

    v164 = v206;
    v165 = v216;
    v222(v206, v216, v147);
    (*(v146 + 56))(v164, 0, 1, v147);
    sub_261D85FB4();
    sub_261D646F8(v164, &qword_27FEF4208, &qword_261D87C38);
    v157(v165, v147);
    v131 = v223;
  }

  swift_beginAccess();
  if (v131[1])
  {
    v166 = *v131;
    v167 = *(v66 + 3920);
    v168 = v131[1];

    if (v167 != -1)
    {
      swift_once();
    }

    v169 = sub_261D864A4();
    __swift_project_value_buffer(v169, qword_27FEF40A0);
    v170 = sub_261D86494();
    v171 = sub_261D866C4();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      _os_log_impl(&dword_261D56000, v170, v171, "setting notes", v172, 2u);
      MEMORY[0x26671EBF0](v172, -1, -1);
    }

    v173 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v174 = sub_261D86504();

    v175 = [v173 initWithString_];

    sub_261D85FC4();
  }

  v176 = v224;
  swift_beginAccess();
  v177 = v221;
  if (*v176)
  {
    v178 = *(v66 + 3920);
    v179 = *v176;
    if (v178 != -1)
    {
      swift_once();
    }

    v180 = sub_261D864A4();
    __swift_project_value_buffer(v180, qword_27FEF40A0);
    v181 = sub_261D86494();
    v182 = sub_261D866C4();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&dword_261D56000, v181, v182, "setting custom smart list filters", v183, 2u);
      v184 = v183;
      v177 = v221;
      MEMORY[0x26671EBF0](v184, -1, -1);
    }

    v185 = v207;
    sub_261D85D14();
    sub_261D85FE4();

    (*(v208 + 8))(v185, v209);
  }

  v186 = [v177 accountCapabilities];
  v187 = [v186 supportsFlagged];

  if (!v187)
  {
    goto LABEL_66;
  }

  v188 = [a13 priority];
  if (!v188)
  {
    goto LABEL_66;
  }

  if (v188 == 1 || v188 == 2)
  {
    sub_261D86004();
LABEL_66:
    if (*(v66 + 3920) != -1)
    {
      swift_once();
    }

    v189 = sub_261D864A4();
    __swift_project_value_buffer(v189, qword_27FEF40A0);
    v190 = v177;
    v191 = sub_261D86494();
    v192 = sub_261D866C4();

    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *v193 = 138543362;
      v195 = [v190 objectID];
      *(v193 + 4) = v195;
      *v194 = v195;
      _os_log_impl(&dword_261D56000, v191, v192, "Inserting reminder: {objectID: %{public}@}", v193, 0xCu);
      sub_261D646F8(v194, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v194, -1, -1);
      MEMORY[0x26671EBF0](v193, -1, -1);
    }

    *v219 = v190;
    return;
  }

  if (*(v66 + 3920) != -1)
  {
    swift_once();
  }

  v196 = sub_261D864A4();
  __swift_project_value_buffer(v196, qword_27FEF40A0);
  v197 = MEMORY[0x277D84F90];
  sub_261D70458(MEMORY[0x277D84F90]);
  sub_261D70458(v197);
  sub_261D6751C("unknown priority", 16, 2);
  __break(1u);
}

void sub_261D5EE80(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_261D5EF14(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = [a5 taskReference];
  if (!v13)
  {

    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v17 = sub_261D864A4();
    __swift_project_value_buffer(v17, qword_27FEF40A0);
    v18 = sub_261D86494();
    v19 = sub_261D86694();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = ".taskReference is .unknown. {resolve: nil}";
    goto LABEL_14;
  }

  if (v13 != 1)
  {

    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v22 = sub_261D864A4();
    __swift_project_value_buffer(v22, qword_27FEF40A0);
    v18 = sub_261D86494();
    v19 = sub_261D866A4();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = ".taskReference is an unhandled enum. {resolve: nil}";
LABEL_14:
    _os_log_impl(&dword_261D56000, v18, v19, v21, v20, 2u);
    MEMORY[0x26671EBF0](v20, -1, -1);
LABEL_15:

    v23 = 0;
    return a1(&v23);
  }

  v14 = *(a6 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_userActivityProvider + 32);
  __swift_project_boxed_opaque_existential_1((a6 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_userActivityProvider), *(a6 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_userActivityProvider + 24));
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = sub_261D5F5B8;
  v15[5] = v12;

  sub_261D86124();
}

void sub_261D5F1BC(int a1, id a2, void (*a3)(id), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v7 = a2;
    a3(a2);
  }

  else
  {
    a5();
  }
}

uint64_t sub_261D5F234(void *a1)
{
  v2 = [a1 contactEventTrigger];
  if (v2 && (v3 = v2, v4 = [v2 triggerContact], v3, v4))
  {
    v5 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_contactRepresentationResolver), *(v1 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_contactRepresentationResolver + 24));
    v6 = *v5;
    MEMORY[0x28223BE20](v5);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4168, &qword_261D87BE0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = v4;
    v11 = sub_261D86464();

    return v11;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4168, &qword_261D87BE0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    return sub_261D86454();
  }
}

id sub_261D5F3A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRAddTasksIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_261D5F4F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D5F54C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D5F584(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_261D5F5B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_261D5F5F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_261D5F63C(void *a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  result = [a1 fetchDefaultAccountWithError_];
  if (v14[0])
  {
    v2 = result;
    v3 = v14[0];

    swift_willThrow();
    if (qword_27FEF3F50 != -1)
    {
      swift_once();
    }

    v4 = sub_261D864A4();
    __swift_project_value_buffer(v4, qword_27FEF40A0);
    v5 = v3;
    v6 = sub_261D86494();
    v7 = sub_261D866A4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14[0] = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_261D86BA4();
      v12 = sub_261D8464C(v10, v11, v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_261D56000, v6, v7, "Unable to determine default account {error: %s}", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x26671EBF0](v9, -1, -1);
      MEMORY[0x26671EBF0](v8, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261D5F820(char *a1, unint64_t a2, void *a3)
{
  v88[1] = *MEMORY[0x277D85DE8];
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_27FEF3F50 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v7 = sub_261D864A4();
    __swift_project_value_buffer(v7, qword_27FEF40A0);
    v8 = a1;
    v9 = sub_261D86494();
    v10 = sub_261D866C4();

    v84 = v6;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = a3;
      v13 = swift_slowAlloc();
      v88[0] = v13;
      *v11 = 136315138;
      v87 = [v8 targetTaskList];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF42A8, &qword_261D87C78);
      v14 = sub_261D868D4();
      v16 = v15;

      v17 = sub_261D8464C(v14, v16, v88);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_261D56000, v9, v10, "SiriKit asked for resolving tasklist {targetTaskList: %s}", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      v18 = v13;
      a3 = v12;
      MEMORY[0x26671EBF0](v18, -1, -1);
      MEMORY[0x26671EBF0](v11, -1, -1);
    }

    v19 = [v8 targetTaskList];
    if (v19)
    {
      v20 = v19;
      v21 = (a2 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource);
      v22 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource + 24);
      v23 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource + 32);
      __swift_project_boxed_opaque_existential_1(v21, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_261D877A0;
      *(v24 + 32) = v20;
      v25 = swift_allocObject();
      v25[2] = v20;
      v25[3] = sub_261D6497C;
      v25[4] = v84;
      v26 = *(v23 + 40);
      v27 = v20;

      v26(v24, sub_261D6489C, v25, v22, v23);

LABEL_6:

      goto LABEL_7;
    }

    v29 = [v8 targetTaskListMembers];
    if (!v29)
    {
      goto LABEL_68;
    }

    a1 = v29;
    sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
    v6 = sub_261D865D4();

    if (!(v6 >> 62))
    {
      v30 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        break;
      }

      goto LABEL_11;
    }

    v30 = sub_261D86954();
    if (!v30)
    {
      break;
    }

LABEL_11:
    v83 = a2;
    v31 = 0;
    a2 = v6 & 0xC000000000000001;
    v86 = v6 & 0xFFFFFFFFFFFFFF8;
    v32 = MEMORY[0x277D84F90];
    do
    {
      if (a2)
      {
        v33 = MEMORY[0x26671E4C0](v31, v6);
      }

      else
      {
        if (v31 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v33 = *(v6 + 8 * v31 + 32);
      }

      a1 = v33;
      a3 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v34 = sub_261D86864();

      a1 = *(v34 + 16);
      v35 = *(v32 + 2);
      v36 = &a1[v35];
      if (__OFADD__(v35, a1))
      {
        goto LABEL_55;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v36 <= *(v32 + 3) >> 1)
      {
        if (*(v34 + 16))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v35 <= v36)
        {
          v38 = &a1[v35];
        }

        else
        {
          v38 = v35;
        }

        v32 = sub_261D842B4(isUniquelyReferenced_nonNull_native, v38, 1, v32);
        if (*(v34 + 16))
        {
LABEL_27:
          if ((*(v32 + 3) >> 1) - *(v32 + 2) < a1)
          {
            goto LABEL_61;
          }

          swift_arrayInitWithCopy();

          if (a1)
          {
            v39 = *(v32 + 2);
            v40 = __OFADD__(v39, a1);
            v41 = &a1[v39];
            if (v40)
            {
              goto LABEL_63;
            }

            *(v32 + 2) = v41;
          }

          goto LABEL_13;
        }
      }

      if (a1)
      {
        goto LABEL_56;
      }

LABEL_13:
      ++v31;
    }

    while (a3 != v30);
    v42 = 0;
    v43 = MEMORY[0x277D84F90];
    while (1)
    {
      if (a2)
      {
        v44 = MEMORY[0x26671E4C0](v42, v6);
      }

      else
      {
        if (v42 >= *(v86 + 16))
        {
          goto LABEL_58;
        }

        v44 = *(v6 + 8 * v42 + 32);
      }

      a1 = v44;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      v85 = v42 + 1;
      v45 = v32;
      v46 = a2;
      a2 = v30;
      v47 = v6;
      a3 = sub_261D86874();

      a1 = a3[2];
      v48 = *(v43 + 2);
      v6 = &a1[v48];
      if (__OFADD__(v48, a1))
      {
        goto LABEL_59;
      }

      v49 = swift_isUniquelyReferenced_nonNull_native();
      if (!v49 || v6 > *(v43 + 3) >> 1)
      {
        if (v48 <= v6)
        {
          v50 = &a1[v48];
        }

        else
        {
          v50 = v48;
        }

        v43 = sub_261D842B4(v49, v50, 1, v43);
      }

      v6 = v47;
      v30 = a2;
      if (a3[2])
      {
        if ((*(v43 + 3) >> 1) - *(v43 + 2) < a1)
        {
          goto LABEL_62;
        }

        a2 = v46;
        swift_arrayInitWithCopy();

        v32 = v45;
        if (a1)
        {
          v51 = *(v43 + 2);
          v40 = __OFADD__(v51, a1);
          v52 = &a1[v51];
          if (v40)
          {
            goto LABEL_64;
          }

          *(v43 + 2) = v52;
        }
      }

      else
      {

        a2 = v46;
        v32 = v45;
        if (a1)
        {
          goto LABEL_60;
        }
      }

      ++v42;
      if (v85 == v30)
      {
        v53 = *&v83[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource + 24];
        v54 = *&v83[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource + 32];
        __swift_project_boxed_opaque_existential_1(&v83[OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_dataSource], v53);

        v56 = sub_261D6BFA0(v55);

        v58 = v43;
        v59 = v6;
        v60 = sub_261D6BFA0(v57);

        v61 = swift_allocObject();
        v61[2] = v59;
        v61[3] = v32;
        v61[4] = v58;
        v61[5] = v83;
        v61[6] = sub_261D6497C;
        v61[7] = v84;
        v62 = *(v54 + 56);

        v63 = v83;
        v62(v56, v60, sub_261D6484C, v61, v53, v54);

        goto LABEL_6;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

LABEL_68:
  v64 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store);
  v88[0] = 0;
  v65 = [v64 fetchDefaultListWithError_];
  v66 = v65;
  if (v88[0])
  {
    v67 = v88[0];

    swift_willThrow();
LABEL_70:
    v68 = sub_261D86494();
    v69 = sub_261D866C4();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_261D56000, v68, v69, "No .targetTaskList and unable to get defaultList. {result: .disambiguateDueToNoDefaultList}", v70, 2u);
      MEMORY[0x26671EBF0](v70, -1, -1);
    }

    v71 = sub_261D5AE54();
    (a3[2])(a3, v71);

    goto LABEL_7;
  }

  if (!v65)
  {
    goto LABEL_70;
  }

  sub_261D597EC(0, &unk_27FEF46E0, 0x277CD4228);
  v72 = v66;
  v73 = sub_261D86654();
  v74 = v72;
  v75 = v73;
  v76 = sub_261D86494();
  v77 = sub_261D866C4();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v78 = 138412546;
    v80 = [v74 objectID];
    *(v78 + 4) = v80;
    *(v78 + 12) = 2112;
    *(v78 + 14) = v75;
    *v79 = v80;
    v79[1] = v75;
    v81 = v75;
    _os_log_impl(&dword_261D56000, v76, v77, "Using defaultList {objectID: %@, result: .success(%@)}", v78, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v79, -1, -1);
    MEMORY[0x26671EBF0](v78, -1, -1);
  }

  *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_didNotSpecifyTargetList) = 1;
  sub_261D597EC(0, &qword_27FEF41B8, 0x277CD3A28);
  v82 = [swift_getObjCClassFromMetadata() successWithResolvedTaskList_];
  (a3[2])(a3, v82);

LABEL_7:
  v28 = *MEMORY[0x277D85DE8];
}

void sub_261D601E8(void *a1, uint64_t a2)
{
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF40A0);
  v5 = a1;
  v6 = sub_261D86494();
  v7 = sub_261D866C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v103 = v9;
    *v8 = 136315138;
    v101 = [v5 spatialEventTrigger];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF42A0, &qword_261D87C70);
    v10 = sub_261D868D4();
    v12 = v11;

    v13 = sub_261D8464C(v10, v12, &v103);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261D56000, v6, v7, "SiriKit asked for resolving spatial event trigger {spatialEventTrigger: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671EBF0](v9, -1, -1);
    MEMORY[0x26671EBF0](v8, -1, -1);
  }

  v14 = [v5 spatialEventTrigger];
  if (!v14)
  {
    v25 = sub_261D86494();
    v26 = sub_261D866C4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_261D56000, v25, v26, ".spatialEventTrigger is nil {result: .notRequired}", v27, 2u);
      MEMORY[0x26671EBF0](v27, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4278, 0x277CD4180);
    v24 = [swift_getObjCClassFromMetadata() notRequired];
    (*(a2 + 16))(a2, v24);
    goto LABEL_68;
  }

  v15 = v14;
  if (![v14 event])
  {
    v28 = sub_261D86494();
    v29 = sub_261D866A4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_261D56000, v28, v29, "spatialEventTrigger.event must not be .unknown {result: .unsupported}", v30, 2u);
      MEMORY[0x26671EBF0](v30, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4278, 0x277CD4180);
    v24 = [swift_getObjCClassFromMetadata() unsupported];
    (*(a2 + 16))(a2, v24);

    goto LABEL_68;
  }

  v16 = [v15 mobileSpace];
  v17 = v15;
  v18 = sub_261D86494();
  v19 = sub_261D866C4();

  v20 = os_log_type_enabled(v18, v19);
  if (v16 == 1)
  {
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v17;
      *v22 = v15;
      v23 = v17;
      _os_log_impl(&dword_261D56000, v18, v19, "Resolved vehicle trigger {result: .success, spatialEventTrigger: %@}", v21, 0xCu);
      sub_261D646F8(v22, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v22, -1, -1);
      MEMORY[0x26671EBF0](v21, -1, -1);
    }

    v24 = [objc_opt_self() successWithResolvedSpatialEventTrigger_];
    (*(a2 + 16))(a2, v24);
LABEL_67:

    goto LABEL_68;
  }

  v100 = a2;
  if (v20)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v103 = v32;
    *v31 = 136315138;
    v33 = [v17 suggestedValues];
    if (v33)
    {
      v34 = v33;
      sub_261D597EC(0, &qword_27FEF4288, 0x277CBFC40);
      sub_261D865D4();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4298, &qword_261D87C68);
    v35 = sub_261D868D4();
    v37 = v36;

    v38 = sub_261D8464C(v35, v37, &v103);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_261D56000, v18, v19, "suggestedValues: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x26671EBF0](v32, -1, -1);
    MEMORY[0x26671EBF0](v31, -1, -1);

    a2 = v100;
  }

  else
  {
  }

  v39 = [v17 suggestedValues];
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    v41 = v39;
    sub_261D597EC(0, &qword_27FEF4288, 0x277CBFC40);
    v42 = sub_261D865D4();
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v43 = v42 >> 62;
  if (!(v42 >> 62))
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_50:

    v68 = sub_261D86494();
    v69 = sub_261D866C4();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_261D56000, v68, v69, "fallback to spatialEventTrigger.placemark instead because placemark count is 0 {count: 0}", v70, 2u);
      MEMORY[0x26671EBF0](v70, -1, -1);
    }

    v71 = [v17 placemark];
    if (!v71)
    {
      v87 = sub_261D86494();
      v88 = sub_261D866A4();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_261D56000, v87, v88, "spatialEventTrigger.placemark == nil. Siri is messed up. Ignoring. {result: .notRequired}", v89, 2u);
        MEMORY[0x26671EBF0](v89, -1, -1);
      }

      sub_261D597EC(0, &qword_27FEF4278, 0x277CD4180);
      v66 = [swift_getObjCClassFromMetadata() notRequired];
      v67 = *(a2 + 16);
      goto LABEL_62;
    }

    v45 = [v17 placemark];
LABEL_54:
    v72 = [v45 region];
    if (v72)
    {
      v73 = v72;
      objc_opt_self();
      v74 = swift_dynamicCastObjCClass();
      if (v74)
      {
        v75 = v74;
        v76 = a2;
        v17 = v17;
        v77 = v73;
        v78 = sub_261D86494();
        v79 = sub_261D866C4();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          *v80 = 138412546;
          *(v80 + 4) = v75;
          *(v80 + 12) = 2112;
          *(v80 + 14) = v17;
          *v81 = v75;
          v81[1] = v15;
          v82 = v17;
          v83 = v77;
          _os_log_impl(&dword_261D56000, v78, v79, "Resolved circularRegion {circularRegion: %@, result: .success(%@)}", v80, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
          swift_arrayDestroy();
          MEMORY[0x26671EBF0](v81, -1, -1);
          MEMORY[0x26671EBF0](v80, -1, -1);
        }

        v24 = v45;
        v84 = [v17 event];
        v85 = [objc_allocWithZone(MEMORY[0x277CD4178]) initWithPlacemark:v24 event:v84];

        v86 = [objc_opt_self() successWithResolvedSpatialEventTrigger_];
        (*(v76 + 16))(v76, v86);

        goto LABEL_67;
      }
    }

    v24 = v45;
    v90 = sub_261D86494();
    v91 = sub_261D866A4();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v103 = v93;
      *v92 = 136315138;
      v102 = [v24 region];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4290, &qword_261D87C60);
      v94 = sub_261D868D4();
      v95 = a2;
      v97 = v96;

      v98 = sub_261D8464C(v94, v97, &v103);
      a2 = v95;

      *(v92 + 4) = v98;
      _os_log_impl(&dword_261D56000, v90, v91, "Got a placemark with a CLRegion that is not a CLCircularRegion {region: %s, result: unsupported}", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v93);
      MEMORY[0x26671EBF0](v93, -1, -1);
      MEMORY[0x26671EBF0](v92, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4278, 0x277CD4180);
    v99 = [swift_getObjCClassFromMetadata() unsupported];
    (*(a2 + 16))(a2, v99);

    goto LABEL_67;
  }

  if (!sub_261D86954())
  {
    goto LABEL_50;
  }

LABEL_27:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x26671E4C0](0, v42);
  }

  else
  {
    if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_71;
    }

    v44 = *(v42 + 32);
  }

  v45 = v44;
  if (!v43)
  {
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

  if (sub_261D86954() == 1)
  {
LABEL_43:

    v61 = sub_261D86494();
    v62 = sub_261D866C4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_261D56000, v61, v62, "Using the only suggestedValue because placemarks.count is 1 {count: 1}", v63, 2u);
      MEMORY[0x26671EBF0](v63, -1, -1);
    }

    a2 = v100;
    goto LABEL_54;
  }

LABEL_32:

  v46 = sub_261D86494();
  v47 = sub_261D866C4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v103 = v49;
    *v48 = 136315138;
    v50 = sub_261D597EC(0, &qword_27FEF4288, 0x277CBFC40);
    v51 = MEMORY[0x26671E0C0](v42, v50);
    v53 = sub_261D8464C(v51, v52, &v103);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_261D56000, v46, v47, "Disambiguate suggestedValues {result: .disambiguation, placemarks: %s}", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    v54 = v49;
    v40 = MEMORY[0x277D84F90];
    MEMORY[0x26671EBF0](v54, -1, -1);
    MEMORY[0x26671EBF0](v48, -1, -1);
  }

  if (!v43)
  {
    v55 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v55)
    {
      goto LABEL_36;
    }

LABEL_48:

    v64 = objc_opt_self();
    sub_261D597EC(0, &qword_27FEF4280, 0x277CD4178);
    v65 = sub_261D865C4();

    v66 = [v64 disambiguationWithSpatialEventTriggersToDisambiguate_];

    v67 = *(v100 + 16);
LABEL_62:
    v67();

    v24 = v17;
LABEL_68:

    return;
  }

  v55 = sub_261D86954();
  if (!v55)
  {
    goto LABEL_48;
  }

LABEL_36:
  v103 = v40;
  sub_261D86A34();
  if ((v55 & 0x8000000000000000) == 0)
  {
    v56 = 0;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x26671E4C0](v56, v42);
      }

      else
      {
        v57 = *(v42 + 8 * v56 + 32);
      }

      v58 = v57;
      ++v56;
      v59 = [v17 event];
      [objc_allocWithZone(MEMORY[0x277CD4178]) initWithPlacemark:v58 event:v59];

      sub_261D86A14();
      v60 = *(v103 + 16);
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
    }

    while (v55 != v56);
    goto LABEL_48;
  }

LABEL_71:
  __break(1u);
}

void sub_261D6102C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v6 = sub_261D864A4();
  __swift_project_value_buffer(v6, qword_27FEF40A0);
  v7 = a1;
  v8 = sub_261D86494();
  v9 = sub_261D866C4();

  if (os_log_type_enabled(v8, v9))
  {
    v33 = v5;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315138;
    [v7 taskReference];
    type metadata accessor for INTaskReference(0);
    v12 = sub_261D86544();
    v14 = sub_261D8464C(v12, v13, &v34);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_261D56000, v8, v9, "SiriKit asked for resolving task reference {taskReference: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26671EBF0](v11, -1, -1);
    v15 = v10;
    v5 = v33;
    MEMORY[0x26671EBF0](v15, -1, -1);
  }

  if ([v7 taskReference] != 1)
  {
    v26 = sub_261D86494();
    v27 = sub_261D866C4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_261D56000, v26, v27, "userActivity not requested {result: .notRequired}", v28, 2u);
      MEMORY[0x26671EBF0](v28, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF4270, 0x277CD4230);
    v29 = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_15;
  }

  v16 = sub_261D5C578(v7);
  if (v16)
  {
    v17 = v16;
    v18 = [v16 supportsReminderActions];

    if ((v18 & 1) == 0)
    {
      v30 = sub_261D86494();
      v31 = sub_261D866A4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_261D56000, v30, v31, "Target list account doesn't support userActivity. {result: .unsupported()}", v32, 2u);
        MEMORY[0x26671EBF0](v32, -1, -1);
      }

      sub_261D597EC(0, &qword_27FEF4270, 0x277CD4230);
      v29 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_15:
      v25 = v29;
      (a3)[2](a3, v25);
      goto LABEL_16;
    }
  }

  MEMORY[0x28223BE20](v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4170, &qword_261D87BE8);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_261D86464();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_261D6497C;
  *(v22 + 24) = v5;

  v23 = sub_261D863F4();
  sub_261D86434();

  v24 = swift_allocObject();
  *(v24 + 16) = sub_261D6497C;
  *(v24 + 24) = v5;

  v25 = sub_261D863F4();
  sub_261D86444();

LABEL_16:
}

void sub_261D614FC(void *a1, uint64_t a2)
{
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF40A0);
  v5 = a1;
  v6 = sub_261D86494();
  v7 = sub_261D866C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v10 = [v5 targetTaskListMembers];
    if (v10)
    {
      v11 = v10;
      sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
      v12 = sub_261D865D4();
    }

    else
    {
      v12 = 0;
    }

    v30 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4268, &qword_261D87C58);
    v13 = sub_261D86544();
    v15 = sub_261D8464C(v13, v14, &v31);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_261D56000, v6, v7, "SiriKit asked for resolving target task list members {targetTaskListMembers: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671EBF0](v9, -1, -1);
    MEMORY[0x26671EBF0](v8, -1, -1);
  }

  v16 = [v5 targetTaskListMembers];
  if (!v16)
  {
    sub_261D597EC(0, &qword_27FEF4258, 0x277CD3EA0);
    v26 = [swift_getObjCClassFromMetadata() notRequired];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_261D877A0;
    *(v27 + 32) = v26;
    v28 = v26;
    v29 = sub_261D865C4();
    (*(a2 + 16))(a2, v29);

LABEL_21:

    return;
  }

  v17 = v16;
  sub_261D597EC(0, &qword_27FEF4260, 0x277CD3E90);
  v18 = sub_261D865D4();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_20:

    sub_261D597EC(0, &qword_27FEF4258, 0x277CD3EA0);
    v29 = sub_261D865C4();
    (*(a2 + 16))(a2, v29);
    goto LABEL_21;
  }

  v19 = sub_261D86954();
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_11:
  v31 = MEMORY[0x277D84F90];
  sub_261D86A34();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = objc_opt_self();
    v21 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x26671E4C0](v21, v18);
      }

      else
      {
        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      v24 = [v20 successWithResolvedPerson_];

      sub_261D86A14();
      v25 = v31[2];
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
    }

    while (v19 != v21);
    goto LABEL_20;
  }

  __break(1u);
}

void sub_261D61910(void *a1, uint64_t *a2, void (**a3)(void, void))
{
  v315 = a2;
  v321 = *MEMORY[0x277D85DE8];
  v297 = sub_261D85E04();
  v296 = *(v297 - 8);
  v5 = *(v296 + 64);
  MEMORY[0x28223BE20](v297);
  v295 = &v281 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = sub_261D85C44();
  v302 = *(v303 - 8);
  v7 = *(v302 + 64);
  MEMORY[0x28223BE20](v303);
  v301 = &v281 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_261D85D24();
  v299 = *(v300 - 8);
  v9 = *(v299 + 64);
  MEMORY[0x28223BE20](v300);
  v298 = &v281 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_261D86144();
  v305 = *(v306 - 8);
  v11 = *(v305 + 64);
  MEMORY[0x28223BE20](v306);
  v304 = &v281 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41D8, &qword_261D87C20);
  v307 = *(v13 - 8);
  v14 = *(v307 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v309 = &v281 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = v15;
  MEMORY[0x28223BE20](v16);
  v311 = &v281 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41E0, &qword_261D87C28);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v281 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v281 - v23;
  v314 = sub_261D85D64();
  v313 = *(v314 - 1);
  isa = v313[8].isa;
  MEMORY[0x28223BE20](v314);
  v312 = (&v281 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v310 = &v281 - v28;
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  _Block_copy(a3);
  if (qword_27FEF3F50 != -1)
  {
    swift_once();
  }

  v30 = sub_261D864A4();
  __swift_project_value_buffer(v30, qword_27FEF40A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41E8, &qword_261D87C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_261D87AE0;
  *(inited + 32) = 0x746E65746E69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_261D597EC(0, &qword_27FEF41F0, 0x277CD3A18);
  *(inited + 48) = a1;
  v32 = a1;
  sub_261D70458(inited);
  swift_setDeallocating();
  sub_261D646F8(inited + 32, &qword_27FEF41F8, &qword_261D87DB0);
  sub_261D67278();

  v33 = v32;
  v34 = sub_261D86494();
  v35 = sub_261D866C4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = a3;
    v38 = v29;
    v39 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v33;
    *v39 = v33;
    v40 = v33;
    _os_log_impl(&dword_261D56000, v34, v35, "SiriKit asked for handling intent {intent: %@}", v36, 0xCu);
    sub_261D646F8(v39, &qword_27FEF4200, &unk_261D878D0);
    v41 = v39;
    v29 = v38;
    a3 = v37;
    MEMORY[0x26671EBF0](v41, -1, -1);
    MEMORY[0x26671EBF0](v36, -1, -1);
  }

  v42 = [v33 taskTitles];
  if (!v42)
  {
    v81 = sub_261D86494();
    v82 = sub_261D866A4();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_261D56000, v81, v82, "intent.taskTitles is nil - should have resolved it in previous calls. {result: .failure}", v83, 2u);
      v84 = v83;
LABEL_24:
      MEMORY[0x26671EBF0](v84, -1, -1);
    }

LABEL_25:

    v92 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
    (a3)[2](a3, v92);

LABEL_83:
    v264 = *MEMORY[0x277D85DE8];
    return;
  }

  v43 = v42;
  sub_261D597EC(0, &unk_27FEF4190, 0x277CD4188);
  v44 = sub_261D865D4();

  v45 = [v33 targetTaskList];
  if (!v45)
  {

    v85 = v33;
    v81 = sub_261D86494();
    v86 = sub_261D866A4();

    if (os_log_type_enabled(v81, v86))
    {
      v87 = swift_slowAlloc();
      v88 = a3;
      v89 = swift_slowAlloc();
      *v87 = 138412290;
      *(v87 + 4) = v85;
      *v89 = v85;
      v90 = v85;
      _os_log_impl(&dword_261D56000, v81, v86, "Unexpected nil .targetTaskList from intent. {intent: %@, result: .failure}", v87, 0xCu);
      sub_261D646F8(v89, &qword_27FEF4200, &unk_261D878D0);
      v91 = v89;
      a3 = v88;
      MEMORY[0x26671EBF0](v91, -1, -1);
      v84 = v87;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v46 = v45;
  v292 = v44;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  v294 = v46;
  v48 = sub_261D86644();
  v293 = v47;
  if (v49)
  {
    if ((v48 & 1) == 0)
    {
LABEL_11:
      sub_261D85D34();

      v52 = v313;
      v53 = v314;
      if ((v313[6].isa)(v21, 1, v314) == 1)
      {
        sub_261D646F8(v21, &qword_27FEF41E0, &qword_261D87C28);
        goto LABEL_13;
      }

      (v52[4].isa)(v312, v21, v53);
      v106 = objc_opt_self();
      v107 = sub_261D85D44();
      v108 = [v106 objectIDWithUUID_];

      v54 = v315;
      v109 = *(v315 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store);
      v319 = 0;
      v110 = [v109 fetchListWithObjectID:v108 error:&v319];
      v111 = v319;
      if (v110)
      {
        v112 = v110;
        v113 = v111;
        v114 = sub_261D86494();
        v115 = sub_261D866C4();

        v116 = os_log_type_enabled(v114, v115);
        v310 = v112;
        if (v116)
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          *v117 = 138543362;
          v119 = [v112 objectID];
          *(v117 + 4) = v119;
          *v118 = v119;
          _os_log_impl(&dword_261D56000, v114, v115, "Successfully fetched list {listID: %{public}@}", v117, 0xCu);
          sub_261D646F8(v118, &qword_27FEF4200, &unk_261D878D0);
          v120 = v118;
          v54 = v315;
          MEMORY[0x26671EBF0](v120, -1, -1);
          v121 = v117;
          v52 = v313;
          MEMORY[0x26671EBF0](v121, -1, -1);
          v122 = v108;
        }

        else
        {
          v122 = v114;
          v114 = v108;
        }

        (v52[1].isa)(v312, v314);
        v190 = 0;
        v70 = v310;
        goto LABEL_52;
      }

      v290 = a3;
      v174 = v319;

      v175 = sub_261D85C64();

      swift_willThrow();
      v319 = v175;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4228, &qword_261D87C48);
      sub_261D597EC(0, &qword_27FEF4230, 0x277CCA9B8);
      swift_dynamicCast();
      v176 = v317;
      v177 = v108;
      v178 = v176;
      v179 = sub_261D86494();
      v180 = sub_261D866A4();

      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v291 = v29;
        v184 = v183;
        v318 = v183;
        *v181 = 138543618;
        *(v181 + 4) = v177;
        *v182 = v177;
        *(v181 + 12) = 2082;
        v316 = v178;
        sub_261D64598();
        v315 = v178;
        v185 = v177;
        v186 = sub_261D86BB4();
        v188 = sub_261D8464C(v186, v187, &v318);

        *(v181 + 14) = v188;
        v178 = v315;
        _os_log_impl(&dword_261D56000, v179, v180, "Unable to fetch list. {result: .failure, listID: %{public}@, error: %{public}s}", v181, 0x16u);
        sub_261D646F8(v182, &qword_27FEF4200, &unk_261D878D0);
        MEMORY[0x26671EBF0](v182, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v184);
        MEMORY[0x26671EBF0](v184, -1, -1);
        MEMORY[0x26671EBF0](v181, -1, -1);
      }

      v189 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
      (v290)[2](v290, v189);

      (v313[1].isa)(v312, v314);
LABEL_63:

LABEL_82:

      goto LABEL_83;
    }

    sub_261D85D34();
    v50 = v313;
    v51 = v314;
    if ((v313[6].isa)(v24, 1, v314) == 1)
    {
      sub_261D646F8(v24, &qword_27FEF41E0, &qword_261D87C28);
      goto LABEL_11;
    }

    (v50[4].isa)(v310, v24, v51);
    v132 = objc_opt_self();
    v133 = sub_261D85D44();
    v134 = [v132 objectIDWithUUID_];

    v135 = *(v315 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store);
    v319 = 0;
    v288 = v135;
    v136 = [v135 fetchCustomSmartListWithObjectID:v134 error:&v319];
    if (v136)
    {
      v137 = v136;
      v289 = v134;
      v138 = v319;
      v139 = [v137 customContext];
      if (!v139)
      {
        (v313[1].isa)(v310, v314);

        goto LABEL_11;
      }

      v140 = v139;
      v287 = v137;
      v141 = sub_261D867B4();

      if (!v141)
      {
        (v313[1].isa)(v310, v314);

        goto LABEL_11;
      }

      v285 = v141;
      v290 = a3;
      v142 = v289;
      v143 = sub_261D86494();
      v286 = v143;
      v144 = sub_261D866C4();

      v145 = os_log_type_enabled(v143, v144);
      v146 = v293;
      if (v145)
      {
        v147 = swift_slowAlloc();
        v291 = v29;
        v148 = v147;
        v149 = swift_slowAlloc();
        *v148 = 138543362;
        *(v148 + 4) = v142;
        *v149 = v142;
        v150 = v142;
        v151 = v149;
        v152 = v150;
        _os_log_impl(&dword_261D56000, v286, v144, "Successfully fetched custom smart list {smartListID: %{public}@}", v148, 0xCu);
        sub_261D646F8(v151, &qword_27FEF4200, &unk_261D878D0);
        v153 = v151;
        v142 = v150;
        MEMORY[0x26671EBF0](v153, -1, -1);
        v154 = v148;
        v29 = v291;
        MEMORY[0x26671EBF0](v154, -1, -1);
      }

      v155 = *(v146 + 16);
      v156 = v285;
      *(v146 + 16) = v285;
      v157 = v156;

      v319 = 0;
      v158 = [v288 fetchDefaultListWithError_];
      if (!v319)
      {
        (v313[1].isa)(v310, v314);

        a3 = v290;
        if (v158)
        {
          v265 = v158;

          v70 = v265;
          v190 = v70;
          v54 = v315;
          goto LABEL_52;
        }

        goto LABEL_11;
      }

      v159 = v319;

      swift_willThrow();
      v319 = v159;
      v160 = v159;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4228, &qword_261D87C48);
      sub_261D597EC(0, &qword_27FEF4230, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v315 = v157;

        v161 = v317;
        v162 = v142;
        v163 = v161;
        v164 = sub_261D86494();
        v165 = sub_261D866A4();

        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          v312 = swift_slowAlloc();
          v318 = v312;
          *v166 = 138543618;
          *(v166 + 4) = v162;
          *v167 = v162;
          *(v166 + 12) = 2082;
          v316 = v163;
          sub_261D64598();
          v168 = v162;
          v169 = sub_261D86BB4();
          v171 = sub_261D8464C(v169, v170, &v318);

          *(v166 + 14) = v171;
          _os_log_impl(&dword_261D56000, v164, v165, "Smart List found and unable to fetch default list. {result: .failure, smartListID: %{public}@, error: %{public}s}", v166, 0x16u);
          sub_261D646F8(v167, &qword_27FEF4200, &unk_261D878D0);
          MEMORY[0x26671EBF0](v167, -1, -1);
          v172 = v312;
          __swift_destroy_boxed_opaque_existential_0(v312);
          MEMORY[0x26671EBF0](v172, -1, -1);
          MEMORY[0x26671EBF0](v166, -1, -1);
        }

        v173 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
        (v290)[2](v290, v173);

LABEL_62:
        (v313[1].isa)(v310, v314);
        goto LABEL_63;
      }

      v134 = v289;
    }

    else
    {
      v290 = a3;
      v203 = v319;

      v160 = sub_261D85C64();

      swift_willThrow();
    }

    v319 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4228, &qword_261D87C48);
    sub_261D597EC(0, &qword_27FEF4230, 0x277CCA9B8);
    swift_dynamicCast();
    v204 = v317;
    v205 = v134;
    v206 = v204;
    v207 = sub_261D86494();
    v208 = sub_261D866A4();

    if (os_log_type_enabled(v207, v208))
    {
      v209 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v315 = swift_slowAlloc();
      v316 = v206;
      v318 = v315;
      *v209 = 138543618;
      *(v209 + 4) = v205;
      *v210 = v205;
      *(v209 + 12) = 2082;
      sub_261D64598();
      v211 = v205;
      v212 = sub_261D86BB4();
      v214 = sub_261D8464C(v212, v213, &v318);

      *(v209 + 14) = v214;
      _os_log_impl(&dword_261D56000, v207, v208, "Error fetching smart list. {listID: %{public}@, error: %{public}s}", v209, 0x16u);
      sub_261D646F8(v210, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v210, -1, -1);
      v215 = v315;
      __swift_destroy_boxed_opaque_existential_0(v315);
      MEMORY[0x26671EBF0](v215, -1, -1);
      MEMORY[0x26671EBF0](v209, -1, -1);
    }

    v216 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
    (v290)[2](v290, v216);

    goto LABEL_62;
  }

LABEL_13:
  v291 = v29;
  v54 = v315;
  v55 = *(v315 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_store);
  v56 = sub_261D5F63C(v55);
  if (!v56)
  {

    v123 = v33;
    v124 = sub_261D86494();
    v125 = sub_261D866A4();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = a3;
      v128 = swift_slowAlloc();
      *v126 = 138412290;
      *(v126 + 4) = v123;
      *v128 = v123;
      v129 = v123;
      _os_log_impl(&dword_261D56000, v124, v125, "Unable to create list because there is no default account. {intent: %@, result: .failureRequiringAppLaunch}", v126, 0xCu);
      sub_261D646F8(v128, &qword_27FEF4200, &unk_261D878D0);
      v130 = v128;
      a3 = v127;
      MEMORY[0x26671EBF0](v130, -1, -1);
      MEMORY[0x26671EBF0](v126, -1, -1);
    }

    v131 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:5 userActivity:0];
    (a3)[2](a3, v131);

    goto LABEL_83;
  }

  v57 = v56;
  v58 = [v294 title];
  v59 = [v58 spokenPhrase];

  if (!v59)
  {
    sub_261D86534();
    v59 = sub_261D86504();
  }

  v60 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v314 = [v60 updateAccount_];
  v61 = [v60 addListWithName:v59 toAccountChangeItem:?];

  v319 = 0;
  v62 = [v60 saveSynchronouslyWithError_];
  v63 = v319;
  if (!v62 || (v64 = v319, v65 = [v61 objectID], v319 = 0, v66 = objc_msgSend(v55, sel_fetchListWithObjectID_error_, v65, &v319), v65, v63 = v319, !v66))
  {
    v93 = a3;
    v94 = v63;

    v95 = sub_261D85C64();

    swift_willThrow();
    v96 = v57;
    v97 = v61;
    v98 = sub_261D86494();
    v99 = sub_261D866A4();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v100 = 138543618;
      v102 = [v97 objectID];
      *(v100 + 4) = v102;
      *(v100 + 12) = 2112;
      *(v100 + 14) = v96;
      *v101 = v102;
      v101[1] = v57;
      v103 = v96;
      _os_log_impl(&dword_261D56000, v98, v99, "Error creating new list. {listID: %{public}@, account: %@, result: .failure}", v100, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
      swift_arrayDestroy();
      MEMORY[0x26671EBF0](v101, -1, -1);
      MEMORY[0x26671EBF0](v100, -1, -1);
    }

    v104 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
    (v93)[2](v93, v104);

    v105 = &v320;
    goto LABEL_81;
  }

  v312 = v61;
  v67 = v66;
  v68 = v63;
  v69 = v57;
  v70 = v67;
  v71 = sub_261D86494();
  v72 = sub_261D866C4();

  v313 = v71;
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v310 = v70;
    v75 = v74;
    *v73 = 138543618;
    v76 = [v310 objectID];
    *(v73 + 4) = v76;
    *(v73 + 12) = 2112;
    *(v73 + 14) = v69;
    *v75 = v76;
    v75[1] = v57;
    v77 = v69;
    v78 = v313;
    _os_log_impl(&dword_261D56000, v313, v72, "Successfully created new list {listID: %{public}@, account: %@}", v73, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4200, &unk_261D878D0);
    swift_arrayDestroy();
    v79 = v75;
    v70 = v310;
    MEMORY[0x26671EBF0](v79, -1, -1);
    v80 = v73;
    v54 = v315;
    MEMORY[0x26671EBF0](v80, -1, -1);
  }

  else
  {
  }

  v190 = 0;
  v29 = v291;
LABEL_52:
  v191 = [v70 isGroup];

  if (v191)
  {

    v192 = v70;
    v193 = sub_261D86494();
    v194 = sub_261D866A4();

    if (os_log_type_enabled(v193, v194))
    {
      v195 = v190;
      v196 = swift_slowAlloc();
      v197 = a3;
      v198 = swift_slowAlloc();
      *v196 = 138543362;
      v199 = [v192 objectID];
      *(v196 + 4) = v199;
      *v198 = v199;
      _os_log_impl(&dword_261D56000, v193, v194, "Fetched list is a Group, can't add reminder to groups. {result: .failure, listID: %{public}@}", v196, 0xCu);
      sub_261D646F8(v198, &qword_27FEF4200, &unk_261D878D0);
      v200 = v198;
      a3 = v197;
      MEMORY[0x26671EBF0](v200, -1, -1);
      v201 = v196;
      v190 = v195;
      MEMORY[0x26671EBF0](v201, -1, -1);
    }

    v202 = [objc_allocWithZone(MEMORY[0x277CD3A20]) initWithCode:4 userActivity:0];
    (a3)[2](a3, v202);

    goto LABEL_83;
  }

  v310 = v70;
  if ([v33 spatialEventTrigger])
  {
    sub_261D597EC(0, &qword_27FEF4220, 0x277D44580);
    v313 = sub_261D867A4();
  }

  else
  {
    v313 = 0;
  }

  if ([v33 spatialEventTrigger])
  {
    sub_261D597EC(0, &unk_27FEF4410, 0x277D44590);
    v285 = sub_261D86794();
  }

  else
  {
    v285 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41B0, &unk_261D87DA0);
  v314 = swift_allocBox();
  v218 = v217;
  v219 = [v33 temporalEventTrigger];
  v282 = v218;
  if (v219)
  {
    v220 = v219;
    sub_261D86774();
  }

  else
  {
    (*(v302 + 56))(v218, 1, 1, v303);
  }

  v221 = [v33 temporalEventTrigger];
  v291 = v29;
  v286 = v190;
  if (v221)
  {
    sub_261D64534(v54 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_timeProvider, &v319);
    sub_261D86064();
  }

  else
  {
    v222 = sub_261D86074();
    (*(*(v222 - 8) + 56))(v311, 1, 1, v222);
  }

  v223 = swift_allocObject();
  v223[2] = 0;
  v224 = sub_261D5F234(v33);
  v225 = swift_allocObject();
  *(v225 + 16) = 0;
  MEMORY[0x28223BE20](v225);
  *(&v281 - 2) = v33;
  *(&v281 - 1) = v54;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4170, &qword_261D87BE8);
  v227 = *(v226 + 48);
  v228 = *(v226 + 52);
  swift_allocObject();
  v287 = sub_261D86464();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4208, &qword_261D87C38);
  v229 = swift_allocBox();
  v231 = v230;
  v232 = sub_261D85C94();
  (*(*(v232 - 8) + 56))(v231, 1, 1, v232);
  v233 = swift_allocObject();
  *(v233 + 16) = 0;
  *(v233 + 24) = 0;
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4210, &qword_261D87C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
  v234 = swift_allocObject();
  *(v234 + 16) = xmmword_261D87AF0;

  v235 = sub_261D863F4();
  v284 = v224;
  v236 = sub_261D86434();
  v312 = v223;

  *(v234 + 32) = v236;
  v237 = swift_allocObject();
  v237[2] = v225;
  v237[3] = v229;
  v237[4] = v233;
  v290 = v225;

  v289 = v229;

  v288 = v233;

  v238 = sub_261D863F4();
  v239 = sub_261D86434();

  *(v234 + 40) = v239;
  v283 = sub_261D86404();

  v240 = v305;
  v241 = v304;
  v242 = v306;
  (*(v305 + 104))(v304, *MEMORY[0x277D44DB8], v306);
  LOBYTE(v233) = sub_261D86134();
  (*(v240 + 8))(v241, v242);
  if ((v233 & 1) == 0 || *(v315 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_didNotSpecifyTargetList) != 1)
  {
    goto LABEL_80;
  }

  v243 = [v33 temporalEventTrigger];
  if (v243 || (v243 = [v33 spatialEventTrigger]) != 0 || (v243 = objc_msgSend(v33, sel_contactEventTrigger)) != 0)
  {

LABEL_80:
    sub_261D64690(v311, v309, &qword_27FEF41D8, &qword_261D87C20);
    v307 = (*(v307 + 80) + 64) & ~*(v307 + 80);
    v306 = (v308 + v307 + 7) & 0xFFFFFFFFFFFFFFF8;
    v244 = (v306 + 15) & 0xFFFFFFFFFFFFFFF8;
    v245 = (v244 + 15) & 0xFFFFFFFFFFFFFFF8;
    v246 = (v245 + 15) & 0xFFFFFFFFFFFFFFF8;
    v308 = (v246 + 15) & 0xFFFFFFFFFFFFFFF8;
    v247 = (v308 + 15) & 0xFFFFFFFFFFFFFFF8;
    v248 = (v247 + 15) & 0xFFFFFFFFFFFFFFF8;
    v249 = swift_allocObject();
    v250 = v310;
    v249[2] = v315;
    v249[3] = v250;
    v251 = v313;
    v249[4] = v292;
    v249[5] = v251;
    v252 = v285;
    v253 = v314;
    v249[6] = v285;
    v249[7] = v253;
    sub_261D64390(v309, v249 + v307);
    *(v249 + v306) = v312;
    *(v249 + v244) = v290;
    *(v249 + v245) = v289;
    *(v249 + v246) = v288;
    v254 = (v249 + ((v248 + 15) & 0xFFFFFFFFFFFFFFF8));
    *(v249 + v308) = v293;
    *(v249 + v247) = v33;
    v255 = v294;
    *(v249 + v248) = v294;
    v256 = v291;
    *v254 = sub_261D640E0;
    v254[1] = v256;
    v309 = v252;

    v257 = v255;

    v258 = v33;
    v259 = v310;

    v260 = v315;
    v261 = v313;
    v262 = sub_261D863F4();
    sub_261D86434();

    sub_261D646F8(v311, &qword_27FEF41D8, &qword_261D87C20);

    v105 = &v319;
LABEL_81:
    v263 = *(v105 - 32);
    goto LABEL_82;
  }

  v266 = *(v315 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_timeProvider + 32);
  __swift_project_boxed_opaque_existential_1((v315 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_timeProvider), *(v315 + OBJC_IVAR____TtC25RemindersIntentsFramework24TTRAddTasksIntentHandler_timeProvider + 24));
  v267 = v298;
  sub_261D85E74();
  v268 = objc_opt_self();
  v269 = sub_261D85CD4();
  v270 = v295;
  sub_261D85DE4();
  v271 = sub_261D85DF4();
  (*(v296 + 8))(v270, v297);
  v272 = [v268 rem:v269 dateComponentsWithDate:v271 timeZone:0 isAllDay:?];

  v273 = v301;
  sub_261D85BE4();

  v274 = sub_261D85BF4();
  if ((v275 & 1) == 0)
  {
    v276 = v274;
    v277 = objc_opt_self();
    [v277 nextThirdsHour_];
    sub_261D85C04();
    sub_261D85C14();
    sub_261D85C24();
    (*(v299 + 8))(v267, v300);
    v278 = v282;
    sub_261D646F8(v282, &qword_27FEF41B0, &unk_261D87DA0);
    v279 = v302;
    v280 = v303;
    (*(v302 + 32))(v278, v273, v303);
    (*(v279 + 56))(v278, 0, 1, v280);
    goto LABEL_80;
  }

  _Block_release(a3);
  __break(1u);
}

uint64_t sub_261D640A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D640F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D64148()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D641B0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41D8, &qword_261D87C20) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(v0 + 32);

  v6 = *(v0 + 56);

  v7 = sub_261D86074();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v9);

  v18 = *(v0 + v10);

  v19 = *(v0 + v11);

  v20 = *(v0 + v12);

  v21 = *(v0 + v13);

  v22 = *(v0 + v16 + 8);

  return MEMORY[0x2821FE8E8](v0, v16 + 16, v2 | 7);
}

uint64_t sub_261D64390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41D8, &qword_261D87C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_261D64400(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41D8, &qword_261D87C20) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *(v12 + 8);
  sub_261D5CE48(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v11), *v12);
}

uint64_t sub_261D64534(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_261D64598()
{
  result = qword_27FEF4238;
  if (!qword_27FEF4238)
  {
    sub_261D597EC(255, &qword_27FEF4230, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF4238);
  }

  return result;
}

uint64_t sub_261D64648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261D64690(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_261D646F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_261D64758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4208, &qword_261D87C38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261D647F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261D6485C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_261D648A8()
{
  result = qword_27FEF42B8;
  if (!qword_27FEF42B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF42B0, qword_261D87C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF42B8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_261D64980()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF4330);
  v1 = __swift_project_value_buffer(v0, qword_27FEF4330);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261D64A48(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_261D86954();
    if (v4 > 0)
    {
      goto LABEL_3;
    }

LABEL_30:
    if (qword_27FEF3F58 != -1)
    {
      swift_once();
    }

    v35 = sub_261D864A4();
    __swift_project_value_buffer(v35, qword_27FEF4330);
    v36 = sub_261D86494();
    v37 = sub_261D866C4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_261D56000, v36, v37, "No reminder matches with the term {result: .unsupported}", v38, 2u);
      MEMORY[0x26671EBF0](v38, -1, -1);
    }

    sub_261D597EC(0, &unk_27FEF4428, 0x277CD4238);
    v34 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_35;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 <= 0)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (v4 == 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26671E4C0](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(a1 + 32);
    }

    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v6 = sub_261D86824();
    if (qword_27FEF3F58 != -1)
    {
      swift_once();
    }

    v7 = sub_261D864A4();
    __swift_project_value_buffer(v7, qword_27FEF4330);

    v8 = sub_261D86494();
    v9 = sub_261D866C4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26671E4C0](0, a1);
      }

      else
      {
        v12 = *(a1 + 32);
      }

      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&dword_261D56000, v8, v9, "One reminder matches with the term {result: .success(%@)}", v10, 0xCu);
      sub_261D646F8(v11, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v11, -1, -1);
      MEMORY[0x26671EBF0](v10, -1, -1);
    }

    v33 = [objc_opt_self() successWithResolvedTask_];
  }

  else
  {
    if (qword_27FEF3F58 != -1)
    {
      swift_once();
    }

    v13 = sub_261D864A4();
    __swift_project_value_buffer(v13, qword_27FEF4330);
    v14 = sub_261D86494();
    v15 = sub_261D866C4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261D56000, v14, v15, "Multiple reminders match with the term {result: .disambiguation}", v16, 2u);
      MEMORY[0x26671EBF0](v16, -1, -1);
    }

    v17 = sub_261D86494();
    v18 = sub_261D866C4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v19 = 136315138;
      v21 = sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
      v22 = MEMORY[0x26671E0C0](a1, v21);
      v24 = sub_261D8464C(v22, v23, &v40);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_261D56000, v17, v18, "Matching reminders: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x26671EBF0](v20, -1, -1);
      MEMORY[0x26671EBF0](v19, -1, -1);
    }

    v40 = MEMORY[0x277D84F90];
    sub_261D86A34();
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v25 = 0;
      do
      {
        v26 = v25 + 1;
        MEMORY[0x26671E4C0]();
        sub_261D86824();
        sub_261D86A14();
        v27 = v40[2];
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
        v25 = v26;
      }

      while (v4 != v26);
    }

    else
    {
      v28 = (a1 + 32);
      do
      {
        v29 = *v28++;
        v30 = v29;
        sub_261D86824();
        sub_261D86A14();
        v31 = v40[2];
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
        --v4;
      }

      while (v4);
    }

    v32 = objc_opt_self();
    v6 = sub_261D865C4();

    v33 = [v32 disambiguationWithTasksToDisambiguate_];
  }

  v34 = v33;

LABEL_35:
  v39 = v34;
  a2();
}

void sub_261D65150(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v10 = a3;
  v9 = a1;
  a5(v10, v9, v8);
  _Block_release(v8);

  _Block_release(v8);
}

void sub_261D651E4(void **a1, int a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v54[1] = *MEMORY[0x277D85DE8];
  v10 = *a1;
  if (*a1)
  {
    v11 = qword_27FEF3F58;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = sub_261D864A4();
    __swift_project_value_buffer(v13, qword_27FEF4330);
    v14 = v12;
    v15 = sub_261D86494();
    v16 = sub_261D866C4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = a7;
      v19 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v19 = v10;
      v20 = v14;
      _os_log_impl(&dword_261D56000, v15, v16, "Populating contactRepresentation {contactRepresentation: %@}", v17, 0xCu);
      sub_261D646F8(v19, &qword_27FEF4200, &unk_261D878D0);
      v21 = v19;
      a7 = v18;
      MEMORY[0x26671EBF0](v21, -1, -1);
      MEMORY[0x26671EBF0](v17, -1, -1);
    }

    v22 = v14;
    sub_261D85F64();
  }

  v54[0] = 0;
  v23 = [a3 saveSynchronouslyWithError_];
  v24 = v54[0];
  if (!v23)
  {
    goto LABEL_10;
  }

  sub_261D85EB4();
  v25 = v24;
  sub_261D85EA4();
  sub_261D85E94();

  v26 = *(a4 + OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_store);
  v54[0] = 0;
  v27 = [v26 fetchReminderWithObjectID:a5 error:v54];
  v24 = v54[0];
  if (v27)
  {
    v28 = v27;
    v29 = objc_allocWithZone(MEMORY[0x277CD4110]);
    v30 = v24;
    v31 = [v29 initWithCode:3 userActivity:0];
    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v32 = v28;
    v33 = sub_261D86824();
    [v31 setModifiedTask_];

    v54[0] = a6;
    v34 = sub_261D85F44();
    v35 = [v34 accountCapabilities];

    sub_261D597EC(0, &unk_27FEF43E0, 0x277CD4108);
    v36 = sub_261D860F4();

    [v31 setWarnings_];
    (a7)(v31);
  }

  else
  {
LABEL_10:
    v37 = v24;
    v38 = sub_261D85C64();

    swift_willThrow();
    if (qword_27FEF3F58 != -1)
    {
      swift_once();
    }

    v39 = sub_261D864A4();
    __swift_project_value_buffer(v39, qword_27FEF4330);
    v40 = v38;
    v41 = sub_261D86494();
    v42 = sub_261D866A4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = a7;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v54[0] = v45;
      *v44 = 136315138;
      swift_getErrorValue();
      v46 = sub_261D86BA4();
      v48 = sub_261D8464C(v46, v47, v54);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_261D56000, v41, v42, "Error saving saveRequest {error: %s}", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x26671EBF0](v45, -1, -1);
      v49 = v44;
      a7 = v43;
      MEMORY[0x26671EBF0](v49, -1, -1);
    }

    v50 = [objc_allocWithZone(MEMORY[0x277CD4110]) initWithCode:4 userActivity:0];
    a7();
  }

  v51 = *MEMORY[0x277D85DE8];
}

void sub_261D6571C(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_261D657E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSetTaskAttributeIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_261D658CC(void *a1, void *a2, void (**a3)(void, void))
{
  v48 = sub_261D86194();
  v46 = *(v48 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = swift_allocObject();
  *(v47 + 16) = a3;
  _Block_copy(a3);
  if (qword_27FEF3F58 != -1)
  {
    swift_once();
  }

  v8 = sub_261D864A4();
  __swift_project_value_buffer(v8, qword_27FEF4330);
  v9 = a1;
  v10 = sub_261D86494();
  v11 = sub_261D866C4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v43 = a2;
    v44 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v50 = v14;
    *v13 = 136315138;
    v15 = [v9 targetTask];
    v49 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF43F0, &unk_261D87DB8);
    v16 = sub_261D868D4();
    v18 = v17;

    v19 = sub_261D8464C(v16, v18, &v50);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_261D56000, v10, v11, "SiriKit asked for resolving target task {targetTask: %s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26671EBF0](v14, -1, -1);
    v20 = v13;
    a2 = v43;
    a3 = v44;
    MEMORY[0x26671EBF0](v20, -1, -1);
  }

  v21 = [v9 targetTask];
  if (v21)
  {
    v22 = v21;
    v23 = [v9 status] == 1;
    v24 = v45;
    v25 = v46;
    *v45 = v23;
    v26 = v48;
    (*(v25 + 104))(v24, *MEMORY[0x277D44EF0], v48);
    v27 = (a2 + OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_dataSource);
    v28 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_dataSource + 24);
    v44 = v27[4];
    v43 = __swift_project_boxed_opaque_existential_1(v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF3FF0, &qword_261D87DD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261D877A0;
    *(inited + 32) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4438, &qword_261D88170);
    v30 = *(v25 + 72);
    v31 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_261D87AE0;
    (*(v25 + 16))(v32 + v31, v24, v26);
    v33 = swift_allocObject();
    v34 = v47;
    *(v33 + 16) = sub_261D640E0;
    *(v33 + 24) = v34;
    v35 = v22;

    sub_261D6D02C(inited, v32, sub_261D6726C, v33, v28, v44);

    swift_setDeallocating();
    v36 = *(inited + 16);
    swift_arrayDestroy();
    (*(v25 + 8))(v24, v48);
  }

  else
  {
    v37 = sub_261D86494();
    v38 = sub_261D866A4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_261D56000, v37, v38, "INSetTaskAttributeIntent contains nil targetTask, returning INTask.disambiguateWithIncompleteReminders", v39, 2u);
      MEMORY[0x26671EBF0](v39, -1, -1);
    }

    sub_261D597EC(0, &qword_27FEF41D0, 0x277CD4220);
    v40 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_store);
    sub_261D597EC(0, &unk_27FEF4428, 0x277CD4238);
    v41 = sub_261D867D4();
    (a3)[2](a3, v41);
  }
}

uint64_t sub_261D65DEC(void *a1)
{
  v2 = [a1 contactEventTrigger];
  if (v2)
  {
    goto LABEL_2;
  }

  if ([a1 priority])
  {
    return 0;
  }

  v2 = [a1 spatialEventTrigger];
  if (v2)
  {
    goto LABEL_2;
  }

  if ([a1 status])
  {
    return 0;
  }

  v2 = [a1 taskTitle];
  if (v2 || (v2 = [a1 temporalEventTrigger]) != 0)
  {
LABEL_2:

    return 0;
  }

  return 1;
}

void sub_261D65EB4(void *a1, uint64_t a2)
{
  if (qword_27FEF3F58 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF4330);
  v5 = a1;
  v6 = sub_261D86494();
  v7 = sub_261D866C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v30 = [v5 taskTitle];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4420, &qword_261D87DC8);
    v10 = sub_261D868D4();
    v12 = v11;

    v13 = sub_261D8464C(v10, v12, &v31);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_261D56000, v6, v7, "SiriKit asked for resolving task title {taskTitle: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26671EBF0](v9, -1, -1);
    MEMORY[0x26671EBF0](v8, -1, -1);
  }

  v14 = [v5 taskTitle];
  if (v14)
  {
    v15 = v14;
    v16 = v14;
    v17 = sub_261D86494();
    v18 = sub_261D866C4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v15;
      v21 = v16;
      _os_log_impl(&dword_261D56000, v17, v18, "Resolving TaskTitle, got new task title, returning success {taskTitle: %@}", v19, 0xCu);
      sub_261D646F8(v20, &qword_27FEF4200, &unk_261D878D0);
      MEMORY[0x26671EBF0](v20, -1, -1);
      MEMORY[0x26671EBF0](v19, -1, -1);
    }

    v22 = [objc_opt_self() successWithResolvedString_];
    (*(a2 + 16))(a2, v22);
  }

  else
  {
    v23 = sub_261D65DEC(v5);
    v24 = sub_261D86494();
    v25 = sub_261D866C4();
    v26 = os_log_type_enabled(v24, v25);
    if (v23)
    {
      if (v26)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261D56000, v24, v25, "Resolving TaskTitle, nothing to do, returning .needsValue()", v27, 2u);
        MEMORY[0x26671EBF0](v27, -1, -1);
      }

      sub_261D597EC(0, &qword_27FEF41A0, 0x277CD4198);
      v28 = [swift_getObjCClassFromMetadata() needsValue];
    }

    else
    {
      if (v26)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261D56000, v24, v25, "Resolving TaskTitle, no title, other stuff to do, returning .notRequired()", v29, 2u);
        MEMORY[0x26671EBF0](v29, -1, -1);
      }

      sub_261D597EC(0, &qword_27FEF41A0, 0x277CD4198);
      v28 = [swift_getObjCClassFromMetadata() notRequired];
    }

    v22 = v28;
    (*(a2 + 16))(a2, v22);
  }
}

void sub_261D662D8(void *a1, char *a2, void (**a3)(void, void))
{
  v116 = sub_261D86074();
  v115 = *(v116 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x28223BE20](v116);
  v111 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41D8, &qword_261D87C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v113 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v114 = &v106 - v12;
  v13 = sub_261D85C44();
  v118 = *(v13 - 8);
  v119 = v13;
  v14 = *(v118 + 64);
  MEMORY[0x28223BE20](v13);
  v117 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41B0, &unk_261D87DA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v112 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v106 - v20;
  MEMORY[0x28223BE20](v22);
  v120 = &v106 - v23;
  v121 = swift_allocObject();
  *(v121 + 16) = a3;
  _Block_copy(a3);
  if (qword_27FEF3F58 != -1)
  {
    swift_once();
  }

  v24 = sub_261D864A4();
  __swift_project_value_buffer(v24, qword_27FEF4330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF41E8, &qword_261D87C30);
  inited = swift_initStackObject();
  v110 = xmmword_261D87AE0;
  *(inited + 16) = xmmword_261D87AE0;
  *(inited + 32) = 0x746E65746E69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_261D597EC(0, &unk_27FEF43E0, 0x277CD4108);
  *(inited + 48) = a1;
  v26 = a1;
  sub_261D70458(inited);
  swift_setDeallocating();
  sub_261D646F8(inited + 32, &qword_27FEF41F8, &qword_261D87DB0);
  sub_261D67278();

  v27 = v26;
  v28 = sub_261D86494();
  v29 = sub_261D866C4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_261D56000, v28, v29, "SiriKit asked for handling set task attribute intent {intent: %@}", v30, 0xCu);
    sub_261D646F8(v31, &qword_27FEF4200, &unk_261D878D0);
    MEMORY[0x26671EBF0](v31, -1, -1);
    MEMORY[0x26671EBF0](v30, -1, -1);
  }

  v33 = [v27 targetTask];
  if (v33)
  {
    v34 = v33;
    v35 = *&a2[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_store];
    v36 = sub_261D867F4();

    if (v36)
    {
      v109 = [v36 objectID];
      v37 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
      sub_261D86014();
      v123 = v36;
      v38 = v37;
      v108 = v36;
      v107 = v38;
      sub_261D85F34();
      v39 = v122[0];
      v40 = [v27 taskTitle];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 spokenPhrase];
        if (!v42)
        {
          sub_261D86534();
          v42 = sub_261D86504();
        }

        v43 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];

        sub_261D85FD4();
      }

      v44 = [v27 status];
      v45 = v118;
      if (v44)
      {
        if (v44 != 1 && v44 != 2)
        {
          v102 = MEMORY[0x277D84F90];
          sub_261D70458(MEMORY[0x277D84F90]);
          sub_261D70458(v102);

          _Block_release(a3);
          v103 = "unknown status";
          v104 = 14;
          goto LABEL_49;
        }

        sub_261D85FF4();
      }

      v57 = sub_261D85F44();
      v58 = [v57 accountCapabilities];

      LODWORD(v57) = [v58 supportsFlagged];
      if (!v57)
      {
        goto LABEL_24;
      }

      v59 = [v27 priority];
      if (!v59)
      {
        goto LABEL_24;
      }

      if (v59 == 1 || v59 == 2)
      {
        sub_261D86004();
LABEL_24:
        v60 = [v27 spatialEventTrigger];
        v61 = v119;
        if (v60)
        {
          v62 = v60;
          sub_261D597EC(0, &qword_27FEF4220, 0x277D44580);
          v63 = v62;
          v64 = sub_261D867A4();
          if (v64)
          {
            v65 = v64;
            MEMORY[0x26671DA60]();
          }

          sub_261D597EC(0, &unk_27FEF4410, 0x277D44590);
          v66 = v63;
          v67 = sub_261D86794();
          if (v67)
          {
            v68 = v67;
            MEMORY[0x26671DA50]();

            v66 = v68;
          }
        }

        v69 = [v27 temporalEventTrigger];
        v70 = v120;
        if (v69)
        {
          v71 = v69;
          sub_261D86774();
        }

        else
        {
          (*(v45 + 56))(v120, 1, 1, v61);
        }

        sub_261D64690(v70, v21, &qword_27FEF41B0, &unk_261D87DA0);
        if ((*(v45 + 48))(v21, 1, v61) == 1)
        {
          sub_261D646F8(v21, &qword_27FEF41B0, &unk_261D87DA0);
        }

        else
        {
          v72 = v117;
          (*(v45 + 32))(v117, v21, v61);
          v73 = v112;
          (*(v45 + 16))(v112, v72, v61);
          (*(v45 + 56))(v73, 0, 1, v61);
          sub_261D85FA4();
          sub_261D646F8(v73, &qword_27FEF41B0, &unk_261D87DA0);
          v74 = [v27 temporalEventTrigger];
          v106 = a2;
          if (v74)
          {
            sub_261D64534(&a2[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_timeProvider], v122);
            v75 = v114;
            sub_261D86064();
            v76 = v116;
            v77 = v115;
          }

          else
          {
            v77 = v115;
            v75 = v114;
            v76 = v116;
            (*(v115 + 56))(v114, 1, 1, v116);
          }

          v78 = v113;
          sub_261D64690(v75, v113, &qword_27FEF41D8, &qword_261D87C20);
          if ((*(v77 + 48))(v78, 1, v76) == 1)
          {
            sub_261D646F8(v75, &qword_27FEF41D8, &qword_261D87C20);
            (*(v45 + 8))(v117, v61);
            sub_261D646F8(v78, &qword_27FEF41D8, &qword_261D87C20);
          }

          else
          {
            v79 = v45;
            v80 = v111;
            (*(v77 + 32))(v111, v78, v76);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4400, &qword_261D87C50);
            v81 = *(v77 + 72);
            v82 = (*(v77 + 80) + 32) & ~*(v77 + 80);
            v83 = swift_allocObject();
            *(v83 + 16) = v110;
            (*(v77 + 16))(v83 + v82, v80, v76);
            sub_261D85F94();

            (*(v77 + 8))(v80, v76);
            sub_261D646F8(v75, &qword_27FEF41D8, &qword_261D87C20);
            (*(v79 + 8))(v117, v61);
          }

          a2 = v106;
        }

        v84 = [v27 contactEventTrigger];
        if (v84 && (v85 = v84, v86 = [v84 triggerContact], v85, v86))
        {
          __swift_project_boxed_opaque_existential_1(&a2[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_contactRepresentationResolver], *&a2[OBJC_IVAR____TtC25RemindersIntentsFramework32TTRSetTaskAttributeIntentHandler_contactRepresentationResolver + 24]);
          v87 = a2;
          v88 = off_28744B0E8;
          v89 = v86;
          v90 = v88();

          v119 = v90;
        }

        else
        {
          v122[0] = 0;
          v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4168, &qword_261D87BE0);
          v92 = *(v91 + 48);
          v93 = *(v91 + 52);
          swift_allocObject();
          sub_261D86454();
          v119 = 0;
          v89 = 0;
          v87 = a2;
        }

        v94 = swift_allocObject();
        v95 = v107;
        v94[2] = v39;
        v94[3] = v95;
        v96 = v109;
        v94[4] = v87;
        v94[5] = v96;
        v94[6] = v27;
        v94[7] = sub_261D6497C;
        v94[8] = v121;
        v97 = v27;
        v98 = v95;

        v99 = v87;
        v100 = v96;

        v101 = sub_261D863F4();
        sub_261D86434();

        sub_261D646F8(v120, &qword_27FEF41B0, &unk_261D87DA0);

        return;
      }

      v105 = MEMORY[0x277D84F90];
      sub_261D70458(MEMORY[0x277D84F90]);
      sub_261D70458(v105);

      _Block_release(a3);
      v103 = "unknown priority";
      v104 = 16;
LABEL_49:
      sub_261D6751C(v103, v104, 2);
      __break(1u);
      return;
    }
  }

  v46 = v27;
  v47 = sub_261D86494();
  v48 = sub_261D866A4();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v122[0] = v50;
    *v49 = 136315138;
    v51 = [v46 targetTask];
    v123 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF43F0, &unk_261D87DB8);
    v52 = sub_261D868D4();
    v54 = v53;

    v55 = sub_261D8464C(v52, v54, v122);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_261D56000, v47, v48, "Should have resolved targetTask into a reminder. {targetTask: %s}", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x26671EBF0](v50, -1, -1);
    MEMORY[0x26671EBF0](v49, -1, -1);
  }

  v56 = [objc_allocWithZone(MEMORY[0x277CD4110]) initWithCode:4 userActivity:0];
  (a3)[2](a3, v56);
}

uint64_t sub_261D67174()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D671AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_261D67234()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_261D67278()
{
  sub_261D86154();
  sub_261D86484();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF44B0, &qword_261D87DE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_261D87AE0;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_261D869D4();
  v1 = sub_261D86504();

  *(inited + 48) = v1;
  v2 = sub_261D70588(inited);
  swift_setDeallocating();
  sub_261D677BC(inited + 32);
  MEMORY[0x26671DF50](0xD00000000000001CLL, 0x8000000261D8D420, v2, 0, 1);

  if (qword_27FEF3F60 != -1)
  {
    swift_once();
  }

  v3 = sub_261D864A4();
  __swift_project_value_buffer(v3, qword_27FEF4CF0);

  v4 = sub_261D86494();
  v5 = sub_261D866C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446466;
    v8 = sub_261D869D4();
    v10 = sub_261D8464C(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_261D864D4();
    v13 = sub_261D8464C(v11, v12, &v14);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_261D56000, v4, v5, "%{public}s; UserInfo=%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v7, -1, -1);
    MEMORY[0x26671EBF0](v6, -1, -1);
  }
}

void sub_261D6751C(uint64_t a1, uint64_t a2, char a3)
{

  v5 = sub_261D86494();
  v6 = sub_261D866B4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446722;
    v9 = sub_261D869D4();
    v11 = sub_261D8464C(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_261D864D4();
    v14 = a3;
    v15 = sub_261D8464C(v12, v13, &v19);

    *(v7 + 14) = v15;
    *(v7 + 22) = 2082;
    v16 = sub_261D864D4();
    v18 = sub_261D8464C(v16, v17, &v19);
    a3 = v14;

    *(v7 + 24) = v18;
    _os_log_impl(&dword_261D56000, v5, v6, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26671EBF0](v8, -1, -1);
    MEMORY[0x26671EBF0](v7, -1, -1);
  }

  if (a3)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    rdi_os_crash();
LABEL_6:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_261D67748(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = sub_261D864A4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = [objc_opt_self() *a3];
  return sub_261D864B4();
}

uint64_t sub_261D677BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF44B8, &qword_261D87DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261D67824()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF44C0);
  v1 = __swift_project_value_buffer(v0, qword_27FEF44C0);
  if (qword_27FEF3F68 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_261D678EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v14 = a5(v13);
  v15 = swift_allocObject();
  v15[2] = sub_261D5F5B8;
  v15[3] = v12;
  v15[4] = a7;
  v15[5] = a5;
  v15[6] = a6;
  v18[4] = sub_261D67D8C;
  v18[5] = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_261D67D9C;
  v18[3] = &block_descriptor;
  v16 = _Block_copy(v18);
  v17 = a7;

  [v14 requestAccessForEntityType:0 completionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_261D67A34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_261D67A6C(char a1, id a2, void (*a3)(id), uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2)
  {
    v8 = a2;
    if (qword_27FEF3F80 != -1)
    {
      swift_once();
    }

    v9 = sub_261D864A4();
    __swift_project_value_buffer(v9, qword_27FEF44C0);
    v10 = a2;
    v11 = sub_261D86494();
    v12 = sub_261D866A4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_261D86BA4();
      v17 = sub_261D8464C(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_261D56000, v11, v12, "Error requesting permission for CNContactStore {error: %s}", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x26671EBF0](v14, -1, -1);
      MEMORY[0x26671EBF0](v13, -1, -1);
    }

    a3(0);
  }

  else if (a1)
  {
    v18 = a6();
    v23 = sub_261D86884();

    a3(v23);
  }

  else
  {
    if (qword_27FEF3F80 != -1)
    {
      swift_once();
    }

    v19 = sub_261D864A4();
    __swift_project_value_buffer(v19, qword_27FEF44C0);
    v20 = sub_261D86494();
    v21 = sub_261D866A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_261D56000, v20, v21, "Permission not granted for accessing CNContactStore {granted: false}", v22, 2u);
      MEMORY[0x26671EBF0](v22, -1, -1);
    }

    a3(0);
  }
}

uint64_t sub_261D67D44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_261D67D9C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261D67E2C()
{
  v5 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4168, &qword_261D87BE0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_261D86464();
}

void *_s25RemindersIntentsFramework32TTRContactRepresentationResolverVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for TTRContactRepresentationResolver(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t assignWithTake for TTRContactRepresentationResolver(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRContactRepresentationResolver(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTRContactRepresentationResolver(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_261D67FDC()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF44D8);
  v1 = __swift_project_value_buffer(v0, qword_27FEF44D8);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261D680A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_261D68158;
  v6[3] = &block_descriptor_0;
  v4 = _Block_copy(v6);

  [v3 getDeliveredNotificationsWithCompletionHandler_];
  _Block_release(v4);
}

uint64_t sub_261D68158(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_261D597EC(0, &qword_27FEF4500, 0x277CE1F78);
  v3 = sub_261D865D4();

  v2(v3);
}

uint64_t sub_261D681DC(unint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v72 = a4;
  v73 = a3;
  v71 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF44F8, &qword_261D87F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v64 - v7;
  v9 = sub_261D86274();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF4690, &qword_261D87F08);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v64 - v19;
  v94 = sub_261D863C4();
  v83 = *(v94 - 8);
  v21 = *(v83 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.n128_f64[0] = MEMORY[0x28223BE20](v23);
  v82 = &v64 - v25;
  if (a1 >> 62)
  {
LABEL_34:
    v26 = sub_261D86954();
    if (v26)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
LABEL_3:
      v84 = v13;
      v85 = v16;
      v13 = 0;
      v91 = a1 & 0xFFFFFFFFFFFFFF8;
      v92 = a1 & 0xC000000000000001;
      v88 = (v10 + 48);
      v80 = (v10 + 16);
      v81 = (v10 + 32);
      v79 = (v10 + 88);
      v78 = *MEMORY[0x277D450B8];
      v76 = *MEMORY[0x277D450B0];
      v74 = *MEMORY[0x277D450C0];
      v70 = *MEMORY[0x277D45090];
      v69 = *MEMORY[0x277D45098];
      v68 = *MEMORY[0x277D450D0];
      v77 = (v10 + 8);
      v87 = (v83 + 56);
      v75 = (v10 + 96);
      v27 = (v83 + 32);
      v86 = (v83 + 48);
      v67 = *MEMORY[0x277D450A0];
      v66 = *MEMORY[0x277D450A8];
      v65 = *MEMORY[0x277D450C8];
      v95 = MEMORY[0x277D84F90];
      v89 = v26;
      v90 = a1;
      while (1)
      {
        if (v92)
        {
          v28 = MEMORY[0x26671E4C0](v13, a1, v24);
        }

        else
        {
          if (v13 >= *(v91 + 16))
          {
            goto LABEL_33;
          }

          v28 = *(a1 + 8 * v13 + 32);
        }

        a1 = v28;
        v29 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v30 = [v28 request];
        v31 = [v30 content];

        v32 = v31;
        sub_261D86264();
        if ((*v88)(v8, 1, v9) == 1)
        {
          break;
        }

        v16 = v85;
        (*v81)(v85, v8, v9);
        v33 = v84;
        (*v80)(v84, v16, v9);
        v34 = (*v79)(v33, v9);
        if (v34 != v78)
        {
          if (v34 == v76 || v34 == v74 || v34 == v70 || v34 == v69 || v34 == v68)
          {
            v16 = v77;
            v36 = *v77;
            (*v77)(v85, v9);

            v36(v84, v9);
          }

          else
          {
            if (v34 != v67 && v34 != v66 && v34 != v65)
            {
              result = sub_261D86B74();
              __break(1u);
              return result;
            }

            (*v77)(v85, v9);
          }

          goto LABEL_20;
        }

        (*v77)(v16, v9);

        (*v75)(v33, v9);
        v10 = v94;
        (*v27)(v20, v33, v94);
        v35 = 0;
LABEL_21:
        (*v87)(v20, v35, 1, v10);

        if ((*v86)(v20, 1, v10) == 1)
        {
          sub_261D646F8(v20, &unk_27FEF4690, &qword_261D87F08);
        }

        else
        {
          v37 = *v27;
          v16 = v82;
          (*v27)(v82, v20, v10);
          v37(v93, v16, v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_261D843C0(0, *(v95 + 2) + 1, 1, v95);
          }

          v39 = *(v95 + 2);
          v38 = *(v95 + 3);
          v10 = v39 + 1;
          if (v39 >= v38 >> 1)
          {
            v95 = sub_261D843C0(v38 > 1, v39 + 1, 1, v95);
          }

          v40 = v94;
          v41 = v95;
          *(v95 + 2) = v10;
          v37(&v41[((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v39], v93, v40);
        }

        ++v13;
        a1 = v90;
        if (v29 == v89)
        {
          goto LABEL_36;
        }
      }

      sub_261D646F8(v8, &qword_27FEF44F8, &qword_261D87F00);
LABEL_20:
      v35 = 1;
      v10 = v94;
      goto LABEL_21;
    }
  }

  v95 = MEMORY[0x277D84F90];
LABEL_36:
  v42 = *(v71 + 16);
  v43 = v95;
  v44 = sub_261D868C4();
  v45 = v44;
  v46 = v44 >> 62;
  if (v44 >> 62)
  {
    v47 = sub_261D86954();
  }

  else
  {
    v47 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v47 != *(v43 + 2))
  {
    if (qword_27FEF3F88 != -1)
    {
      swift_once();
    }

    v48 = sub_261D864A4();
    __swift_project_value_buffer(v48, qword_27FEF44D8);

    v49 = sub_261D86494();
    v50 = sub_261D866A4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134218240;
      if (v46)
      {
        v52 = sub_261D86954();
      }

      else
      {
        v52 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v51 + 4) = v52;

      *(v51 + 12) = 2048;
      *(v51 + 14) = *(v43 + 2);

      _os_log_impl(&dword_261D56000, v49, v50, "Unable to fetch some reminders. reminders count doesn't match with reminderIDs count. {notificationIdentifiers.count: %ld, reminders.count: %ld}", v51, 0x16u);
      MEMORY[0x26671EBF0](v51, -1, -1);
    }

    else
    {
    }
  }

  if (qword_27FEF3F88 != -1)
  {
    swift_once();
  }

  v53 = sub_261D864A4();
  __swift_project_value_buffer(v53, qword_27FEF44D8);

  v54 = sub_261D86494();
  v55 = sub_261D866C4();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v96 = v57;
    *v56 = 134218242;
    if (v46)
    {
      v58 = sub_261D86954();
    }

    else
    {
      v58 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v56 + 4) = v58;

    *(v56 + 12) = 2080;
    v59 = MEMORY[0x26671E0C0](v43, v94);
    v61 = v60;

    v62 = sub_261D8464C(v59, v61, &v96);

    *(v56 + 14) = v62;
    _os_log_impl(&dword_261D56000, v54, v55, "Retrieved %ld reminders from notification center {notificationIdentifiers: %s}", v56, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x26671EBF0](v57, -1, -1);
    MEMORY[0x26671EBF0](v56, -1, -1);
  }

  else
  {
  }

  v73(v45);
}

uint64_t sub_261D68DCC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  v37 = v4;
  *(v4 + 16) = MEMORY[0x277D84F90];
  v6 = (v4 + 16);
  result = swift_allocObject();
  v8 = result;
  *(result + 16) = v5;
  if (a1 >> 62)
  {
    result = sub_261D86954();
    v9 = result;
    if (!result)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return result;
  }

  v10 = 0;
  v11 = a1 & 0xC000000000000001;
  v12 = MEMORY[0x277D84F90];
  v38 = v8;
  v39 = a1 & 0xC000000000000001;
  do
  {
    if (v11)
    {
      v14 = MEMORY[0x26671E4C0](v10, a1);
    }

    else
    {
      v14 = *(a1 + 8 * v10 + 32);
    }

    v15 = v14;
    v16 = sub_261D867E4();
    if (v16)
    {
      v13 = v16;
      MEMORY[0x26671E090]();
      if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = a1;
        v28 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_261D865F4();
        a1 = v27;
        v11 = v39;
      }

      sub_261D86604();
    }

    else
    {
      v17 = a1;
      v18 = [v15 title];
      v19 = [v18 spokenPhrase];

      v20 = sub_261D86534();
      v22 = v21;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 16) = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_261D842B4(0, *(v12 + 2) + 1, 1, v12);
        *(v8 + 16) = v12;
      }

      v25 = *(v12 + 2);
      v24 = *(v12 + 3);
      if (v25 >= v24 >> 1)
      {
        v12 = sub_261D842B4((v24 > 1), v25 + 1, 1, v12);
      }

      *(v12 + 2) = v25 + 1;
      v26 = &v12[16 * v25];
      *(v26 + 4) = v20;
      *(v26 + 5) = v22;
      v8 = v38;
      *(v38 + 16) = v12;
      a1 = v17;
      v11 = v39;
    }

    ++v10;
  }

  while (v9 != v10);
LABEL_19:
  v29 = swift_allocObject();
  v29[2] = v37;
  v29[3] = v8;
  v29[4] = a2;
  v29[5] = a3;
  v30 = v36[6];
  v31 = v36[7];
  __swift_project_boxed_opaque_existential_1(v36 + 3, v30);
  v32 = swift_allocObject();
  v32[2] = v36;
  v32[3] = sub_261D6954C;
  v32[4] = v29;
  v33 = *(v31 + 8);

  v33(sub_261D69598, v32, v30, v31);
}

uint64_t sub_261D6912C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t))
{

  v8 = sub_261D695A4(v7, (a2 + 16), (a3 + 16));

  if (qword_27FEF3F88 != -1)
  {
    swift_once();
  }

  v9 = sub_261D864A4();
  __swift_project_value_buffer(v9, qword_27FEF44D8);

  v10 = sub_261D86494();
  v11 = sub_261D866C4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 134218242;
    if (v8 >> 62)
    {
      v14 = sub_261D86954();
    }

    else
    {
      v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v14;

    *(v12 + 12) = 2080;
    v15 = sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
    v16 = MEMORY[0x26671E0C0](v8, v15);
    v18 = sub_261D8464C(v16, v17, &v20);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_261D56000, v10, v11, "Got %ld matchingReminders matching searchTerms {matchingReminders: %s}", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26671EBF0](v13, -1, -1);
    MEMORY[0x26671EBF0](v12, -1, -1);
  }

  else
  {
  }

  a4(v8);
}

uint64_t sub_261D69340()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_261D693A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D693DC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x26671E4C0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_261D86954();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_261D69504()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261D69558()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261D695A4(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v29 = a3;
  v6 = a1;
  v37 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D86954())
  {
    swift_beginAccess();
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v8 = 0;
    v32 = v6 & 0xFFFFFFFFFFFFFF8;
    v33 = v6 & 0xC000000000000001;
    v31 = v6 + 32;
    v27 = v6;
    v28 = a2;
    v26 = i;
    while (1)
    {
      if (v33)
      {
        v10 = MEMORY[0x26671E4C0](v8, v6);
      }

      else
      {
        if (v8 >= *(v32 + 16))
        {
          goto LABEL_27;
        }

        v10 = *(v31 + 8 * v8);
      }

      v35 = v10;
      v11 = __OFADD__(v8, 1);
      v12 = v8 + 1;
      if (v11)
      {
        break;
      }

      v34 = v12;
      v13 = *a2;

      v14 = [v35 objectID];
      v36 = v14;
      MEMORY[0x28223BE20](v14);
      v25[2] = &v36;
      v15 = sub_261D693DC(sub_261D698AC, v25, v13);

      if (v15)
      {
LABEL_5:
        sub_261D86A14();
        v9 = *(v37 + 16);
        sub_261D86A44();
        sub_261D86A54();
        sub_261D86A24();
      }

      else
      {
        v16 = *v29;
        v17 = *(*v29 + 16);
        if (v17)
        {
          v30 = v4;

          v6 = 0;
          v18 = (v16 + 40);
          v4 = v35;
          while (v6 < *(v16 + 16))
          {
            v19 = *(v18 - 1);
            v20 = *v18;

            v21 = [v4 titleAsString];
            if (v21)
            {
              v22 = v21;
              sub_261D86534();
              a2 = v23;

              v4 = v35;
              LOBYTE(v22) = sub_261D86554();

              if (v22)
              {

                v4 = v30;
                v6 = v27;
                a2 = v28;
                i = v26;
                goto LABEL_5;
              }
            }

            else
            {
            }

            ++v6;
            v18 += 2;
            if (v17 == v6)
            {

              v4 = v30;
              v6 = v27;
              a2 = v28;
              i = v26;
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }
      }

LABEL_6:
      v8 = v34;
      if (v34 == i)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_261D698AC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
  return sub_261D868A4() & 1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261D69930()
{
  v0 = sub_261D864A4();
  __swift_allocate_value_buffer(v0, qword_27FEF4508);
  v1 = __swift_project_value_buffer(v0, qword_27FEF4508);
  if (qword_27FEF3F70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FEF4D20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261D699F8(uint64_t a1)
{
  v2 = v1;
  if (qword_27FEF3F90 != -1)
  {
    swift_once();
  }

  v4 = sub_261D864A4();
  __swift_project_value_buffer(v4, qword_27FEF4508);
  v5 = sub_261D86494();
  v6 = sub_261D866C4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_261D56000, v5, v6, "[TTRIntentsHandlerStoreDataSource] Using the backup intents handler data source", v7, 2u);
    MEMORY[0x26671EBF0](v7, -1, -1);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_261D69AE8(uint64_t a1, void (*a2)(uint64_t))
{
  sub_261D86254();
  v4 = *(v2 + 16);
  v5 = [objc_opt_self() defaultFetchOptions];
  v6 = sub_261D86244();

  a2(v6);
}

void *sub_261D69D2C(unint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    result = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  if (!sub_261D86954())
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = *(v1 + 16);
  v4 = sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);
  v5 = sub_261D865C4();
  v23[0] = 0;
  v6 = [v3 fetchRemindersWithObjectIDs:v5 error:v23];

  v7 = v23[0];
  if (!v6)
  {
    v12 = v23[0];
    v13 = sub_261D85C64();

    swift_willThrow();
    if (qword_27FEF3F90 != -1)
    {
      swift_once();
    }

    v14 = sub_261D864A4();
    __swift_project_value_buffer(v14, qword_27FEF4508);

    v15 = sub_261D86494();
    v16 = sub_261D866A4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315138;
      v19 = MEMORY[0x26671E0C0](a1, v4);
      v21 = sub_261D8464C(v19, v20, v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_261D56000, v15, v16, "Error fetching reminders by objetIDs {objectIDs: %s}", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x26671EBF0](v18, -1, -1);
      MEMORY[0x26671EBF0](v17, -1, -1);
    }

    goto LABEL_10;
  }

  sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
  sub_261D6C624();
  v8 = sub_261D864C4();
  v9 = v7;

  v10 = sub_261D84C08(v8);

  result = v10;
LABEL_11:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_261D69FD4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v7 = sub_261D86224();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  if (*(a1 + 16) <= 1uLL)
  {
    sub_261D86254();
    v15 = *(v3 + 16);
    sub_261D861E4();
    a2(v12);
    return (*(v8 + 8))(v12, v7);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;

    sub_261D810E0(a1, sub_261D6C6D4, v13);
  }
}

uint64_t sub_261D6A318(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = sub_261D86224();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_261D86204();
  a3(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_261D6A41C(unint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v88 = a3;
  v87 = a2;
  v107[1] = *MEMORY[0x277D85DE8];
  v86 = sub_261D86224();
  v85 = *(v86 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_261D86194();
  v99 = *(v104 - 8);
  v10 = *(v99 + 64);
  MEMORY[0x28223BE20](v104);
  v93 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v102 = &v83 - v14;
  v106 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v15 = sub_261D86954();
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_3:
      if (v15 >= 1)
      {
        v16 = 0;
        v17 = a1 & 0xC000000000000001;
        v18 = *MEMORY[0x277D45270];
        v94 = *MEMORY[0x277D44F10];
        v95 = v18;
        v100 = (v99 + 32);
        v101 = (v99 + 104);
        v92 = 0x8000000261D8D570;
        v91 = *MEMORY[0x277D45060];
        v6 = MEMORY[0x277D84F90];
        v90 = *MEMORY[0x277D44F40];
        v103 = MEMORY[0x277D84F90];
        v96 = a1 & 0xC000000000000001;
        v97 = v15;
        v98 = a1;
        while (1)
        {
          if (v17)
          {
            v19 = MEMORY[0x26671E4C0](v16, a1, v13);
          }

          else
          {
            v19 = *(a1 + 8 * v16 + 32);
          }

          v20 = v19;
          v21 = sub_261D86674();
          if (v21)
          {
            v22 = v21;
            MEMORY[0x26671E090]();
            if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_261D865F4();
            }

            sub_261D86604();

            v103 = v106;
            goto LABEL_7;
          }

          v23 = [v20 title];
          v24 = [v23 spokenPhrase];

          v25 = sub_261D86534();
          v27 = v26;

          v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78) + 48);
          v29 = v102;
          *v102 = v25;
          *(v29 + 1) = v27;
          v30 = sub_261D862B4();
          (*(*(v30 - 8) + 104))(&v29[v28], v95, v30);
          v31 = *v101;
          (*v101)(v29, v94, v104);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_261D8428C(0, v6[2] + 1, 1, v6);
          }

          v33 = v6[2];
          v32 = v6[3];
          if (v33 >= v32 >> 1)
          {
            v6 = sub_261D8428C(v32 > 1, v33 + 1, 1, v6);
          }

          v6[2] = v33 + 1;
          v34 = (*(v99 + 80) + 32) & ~*(v99 + 80);
          v35 = v6;
          v36 = v6 + v34;
          v37 = *(v99 + 72);
          v38 = &v36[v37 * v33];
          v39 = *(v99 + 32);
          v39(v38, v102, v104);
          v40 = [v20 title];
          v41 = [v40 vocabularyIdentifier];

          if (v41)
          {
            v42 = sub_261D86534();
            v44 = v43;

            if (v42 == 0xD000000000000011 && v92 == v44)
            {

LABEL_24:
              v46 = sub_261D861D4();
              v47 = v93;
              (*(*(v46 - 8) + 104))(v93, v91, v46);
              v31(v47, v90, v104);
              v49 = v35[2];
              v48 = v35[3];
              if (v49 >= v48 >> 1)
              {
                v35 = sub_261D8428C(v48 > 1, v49 + 1, 1, v35);
              }

              a1 = v98;

              v35[2] = v49 + 1;
              v50 = v35 + v34 + v49 * v37;
              v6 = v35;
              v39(v50, v93, v104);
              goto LABEL_6;
            }

            v45 = sub_261D86B84();

            if (v45)
            {
              goto LABEL_24;
            }
          }

          v6 = v35;
          a1 = v98;
LABEL_6:
          v17 = v96;
          v15 = v97;
LABEL_7:
          if (v15 == ++v16)
          {
            goto LABEL_29;
          }
        }
      }

      __break(1u);
      goto LABEL_62;
    }
  }

  v6 = MEMORY[0x277D84F90];
  v103 = MEMORY[0x277D84F90];
LABEL_29:
  v5 = v103;
  if (!(v103 >> 62))
  {
    if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

LABEL_58:
    v58 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    if (v6[2])
    {
      goto LABEL_54;
    }

LABEL_59:

    v81 = v84;
    sub_261D86204();
    v87(v81);
    (*(v85 + 8))(v81, v86);

    goto LABEL_60;
  }

LABEL_57:
  if (!sub_261D86954())
  {
    goto LABEL_58;
  }

LABEL_31:
  v3 = *(v89 + 16);
  v51 = sub_261D597EC(0, &qword_27FEF44F0, 0x277D44700);

  v52 = sub_261D865C4();

  v107[0] = 0;
  v53 = [v3 fetchListsWithObjectIDs:v52 error:v107];

  v54 = v107[0];
  v102 = v51;
  if (!v53)
  {
    v65 = v107[0];
    v66 = sub_261D85C64();

    swift_willThrow();
    v4 = MEMORY[0x277D84F90];
LABEL_48:
    if (qword_27FEF3F90 != -1)
    {
      swift_once();
    }

    v68 = sub_261D864A4();
    __swift_project_value_buffer(v68, qword_27FEF4508);
    v69 = sub_261D86494();
    v70 = sub_261D866A4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v107[0] = v72;
      *v71 = 136315138;

      v73 = v4;
      v74 = MEMORY[0x26671E0C0](v103, v102);
      v76 = v75;

      v77 = sub_261D8464C(v74, v76, v107);

      *(v71 + 4) = v77;
      v4 = v73;
      _os_log_impl(&dword_261D56000, v69, v70, "Error fetching lists by objetIDs {objectIDs: %s}", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x26671EBF0](v72, -1, -1);
      MEMORY[0x26671EBF0](v71, -1, -1);
    }

    v58 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  sub_261D597EC(0, &qword_27FEF41C0, 0x277D44660);
  sub_261D6C624();
  v55 = sub_261D864C4();
  v56 = v54;

  v4 = sub_261D84BF4(v55);

  if (!(v5 >> 62))
  {
    v57 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_34;
  }

LABEL_62:
  v57 = sub_261D86954();
LABEL_34:
  v58 = MEMORY[0x277D84F90];
  if (v57)
  {
    v100 = v4;
    v101 = v6;
    v107[0] = MEMORY[0x277D84F90];

    sub_261D86A34();
    if (v57 < 0)
    {
      __break(1u);
    }

    v59 = 0;
    v6 = (v5 & 0xC000000000000001);
    v104 = v5 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v60 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (v6)
      {
        v61 = MEMORY[0x26671E4C0](v59, v5);
      }

      else
      {
        if (v59 >= *(v104 + 16))
        {
          goto LABEL_56;
        }

        v61 = *(v5 + 8 * v59 + 32);
      }

      v62 = v61;
      v105[0] = 0;
      if (![v3 fetchCustomSmartListWithObjectID:v61 error:v105])
      {
        v67 = v105[0];

        v66 = sub_261D85C64();

        swift_willThrow();

        v4 = v100;
        v6 = v101;
        goto LABEL_48;
      }

      v63 = v105[0];

      sub_261D86A14();
      v64 = *(v107[0] + 2);
      sub_261D86A44();
      sub_261D86A54();
      sub_261D86A24();
      ++v59;
      v5 = v103;
    }

    while (v60 != v57);

    v58 = v107[0];
    v4 = v100;
    v6 = v101;
    if (v101[2])
    {
      goto LABEL_54;
    }

    goto LABEL_59;
  }

LABEL_53:
  if (!v6[2])
  {
    goto LABEL_59;
  }

LABEL_54:
  v78 = swift_allocObject();
  v79 = v88;
  v78[2] = v87;
  v78[3] = v79;
  v78[4] = v4;
  v78[5] = v6;
  v78[6] = v58;

  sub_261D810E0(v6, sub_261D6C614, v78);

LABEL_60:
  v82 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_261D6AED8(unint64_t a1, unint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_261D86224();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;

  sub_261D6DB80(v15);
  sub_261D7A248(a6, v19);

  v19 = a2;

  sub_261D6DB68(v16);
  sub_261D86204();
  a3(v14);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_261D6B03C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  v14[4] = sub_261D6C5A0;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_261D6B964;
  v14[3] = &block_descriptor_1;
  v10 = _Block_copy(v14);

  [v8 enumerateAllListsWithBlock_];
  _Block_release(v10);
  swift_beginAccess();
  v11 = *(v7 + 16);

  a3(v12);
}

void sub_261D6B1B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a1;
  if (![a1 isShared])
  {
    return;
  }

  v9 = [v8 sharedOwnerAddress];
  if (v9)
  {
    v10 = v9;
    v11 = sub_261D86534();
    v13 = v12;

    if (sub_261D6B684(v11, v13, a3))
    {
    }

    else
    {
      v14 = sub_261D6B684(v11, v13, a4);

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    if ([v8 isShared])
    {
      swift_beginAccess();
      v15 = v8;
      MEMORY[0x26671E090]();
      if (*((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = *((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_261D865F4();
      }

      sub_261D86604();
      swift_endAccess();
    }
  }

LABEL_10:
  v16 = [v8 shareeContext];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = [v16 sharees];

  sub_261D597EC(0, &qword_27FEF4530, 0x277D447E8);
  v19 = sub_261D865D4();

  if (v19 >> 62)
  {
LABEL_34:
    v20 = sub_261D86954();
    v43 = a4;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = a4;
    if (v20)
    {
LABEL_13:
      a4 = 0;
      v44 = MEMORY[0x277D84F90];
      v41 = v8;
      v42 = a5;
      while (2)
      {
        v8 = a4;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x26671E4C0](v8, v19);
          }

          else
          {
            if (v8 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v21 = *(v19 + 8 * v8 + 32);
          }

          a5 = v21;
          a4 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v22 = [v21 status];
          if (v22 > 5)
          {
            if (qword_27FEF3F90 != -1)
            {
              swift_once();
            }

            v36 = sub_261D864A4();
            __swift_project_value_buffer(v36, qword_27FEF4508);
            v37 = MEMORY[0x277D84F90];
            sub_261D70458(MEMORY[0x277D84F90]);
            sub_261D70458(v37);
            sub_261D6751C("unknown status", 14, 2);
            __break(1u);
            return;
          }

          if (((1 << v22) & 0x1D) == 0)
          {
            v23 = [a5 address];
            if (v23)
            {
              break;
            }
          }

          ++v8;
          if (a4 == v20)
          {
            v8 = v41;
            a5 = v42;
            goto LABEL_36;
          }
        }

        v39 = v23;
        v24 = [v23 rem_removingMailto];

        v25 = sub_261D86534();
        v38 = v26;
        v40 = v25;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = sub_261D842B4(0, *(v44 + 2) + 1, 1, v44);
        }

        v29 = *(v44 + 2);
        v28 = *(v44 + 3);
        if (v29 >= v28 >> 1)
        {
          v44 = sub_261D842B4((v28 > 1), v29 + 1, 1, v44);
        }

        *(v44 + 2) = v29 + 1;
        v30 = &v44[16 * v29];
        *(v30 + 4) = v40;
        *(v30 + 5) = v38;
        v8 = v41;
        a5 = v42;
        if (a4 != v20)
        {
          continue;
        }

        goto LABEL_36;
      }
    }
  }

  v44 = MEMORY[0x277D84F90];
LABEL_36:

  v31 = sub_261D6BFA0(v44);

  if (sub_261D6B77C(v31, a3))
  {
    v32 = sub_261D6B77C(v31, v43);

    if (v32)
    {
      return;
    }
  }

  else
  {
  }

  swift_beginAccess();
  v33 = v8;
  MEMORY[0x26671E090]();
  if (*((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_261D865F4();
  }

  sub_261D86604();
  swift_endAccess();
}

uint64_t sub_261D6B684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_261D86BC4();
  sub_261D86574();
  v7 = sub_261D86BD4();
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
    if (v12 || (sub_261D86B84() & 1) != 0)
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

uint64_t sub_261D6B77C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_261D86BC4();

      sub_261D86574();
      v20 = sub_261D86BD4();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_261D86B84() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_261D6B964(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_261D6B9D8()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v15[0] = 0;
  result = [v1 fetchDefaultListWithError_];
  if (v15[0])
  {
    v3 = result;
    v4 = v15[0];

    swift_willThrow();
    if (qword_27FEF3F90 != -1)
    {
      swift_once();
    }

    v5 = sub_261D864A4();
    __swift_project_value_buffer(v5, qword_27FEF4508);
    v6 = v4;
    v7 = sub_261D86494();
    v8 = sub_261D866A4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_261D86BA4();
      v13 = sub_261D8464C(v11, v12, v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_261D56000, v7, v8, "Error fetching default list %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26671EBF0](v10, -1, -1);
      MEMORY[0x26671EBF0](v9, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_261D6BBC0(uint64_t a1)
{
  v19[0] = a1;
  v2 = sub_261D862E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261D86394();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4528, &qword_261D87F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v19 - v14;
  sub_261D863A4();
  v16 = *(v1 + 16);
  sub_261D862D4();
  sub_261D862C4();
  (*(v3 + 8))(v6, v2);
  sub_261D86384();
  (*(v8 + 8))(v11, v7);
  v17 = sub_261D86374();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  (v19[0])(v15);
  return sub_261D6C4B8(v15);
}

uint64_t sub_261D6BE44()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_261D6BFA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26671E0F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_261D7AB70(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_261D6C038(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v8 = sub_261D86224();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  if (*(a1 + 16) < 2uLL)
  {
    sub_261D86254();
    v17 = *(a2 + 16);

    sub_261D861E4();
    a3(v13);
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_261D6C6C4;
    *(v15 + 24) = v14;

    sub_261D810E0(a1, sub_261D6C6CC, v15);
  }
}

uint64_t sub_261D6C3D0(void (*a1)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4520, &qword_261D87F68);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_261D87F10;
  v3 = *MEMORY[0x277D44BC0];
  v4 = *MEMORY[0x277D44BA8];
  *(v2 + 32) = *MEMORY[0x277D44BC0];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x277D44B80];
  v6 = *MEMORY[0x277D44BA0];
  *(v2 + 48) = *MEMORY[0x277D44B80];
  *(v2 + 56) = v6;
  v7 = *MEMORY[0x277D44B88];
  *(v2 + 64) = *MEMORY[0x277D44B88];
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  a1(v2);
}

uint64_t sub_261D6C4B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4528, &qword_261D87F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261D6C520()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261D6C558()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261D6C5C4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_261D6C624()
{
  result = qword_27FEF4760;
  if (!qword_27FEF4760)
  {
    sub_261D597EC(255, &qword_27FEF44F0, 0x277D44700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEF4760);
  }

  return result;
}

uint64_t sub_261D6C68C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261D6C6E0(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v29 = a1 + 32;
  v3 = &unk_27FEF4598;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = sub_261D86954();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_261D86954();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_261D86954();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_261D869F4();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_261D6E618(&qword_27FEF45A0, v3, &unk_261D87FE0);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &unk_261D87FE0);
        v19 = v3;
        v20 = sub_261D84D94(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_261D597EC(0, &unk_27FEF4440, 0x277D44750);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_261D86954();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_261D6C9C4(uint64_t a1)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = *(sub_261D86224() - 8);
  v4 = MEMORY[0x277D84F90];
  v32 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v31 = *(v3 + 72);
  v5 = &qword_27FEF42B0;
  while (1)
  {
    v7 = sub_261D86214();
    v8 = v7;
    v9 = v7 >> 62;
    v10 = v7 >> 62 ? sub_261D86954() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v29 = sub_261D86954();
      v13 = v29 + v10;
      if (__OFADD__(v29, v10))
      {
LABEL_34:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v10;
    if (result)
    {
      if (v11)
      {
        goto LABEL_16;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
        sub_261D86954();
        goto LABEL_17;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = *(v14 + 16);
LABEL_17:
    result = sub_261D869F4();
    v4 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v17 >> 1) - v16) < v37)
    {
      goto LABEL_38;
    }

    v34 = v2;
    v35 = v4;
    v20 = v14 + 8 * v16 + 32;
    v30 = v14;
    if (v9)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      sub_261D6E618(&qword_27FEF4558, v5, qword_261D87C80);
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v5, qword_261D87C80);
        v22 = v5;
        v23 = sub_261D84D94(v36, i, v8);
        v25 = *v24;
        (v23)(v36, 0);
        v5 = v22;
        *(v20 + 8 * i) = v25;
      }
    }

    else
    {
      sub_261D597EC(0, &qword_27FEF41C0, 0x277D44660);
      swift_arrayInitWithCopy();
    }

    v2 = v34;
    v4 = v35;
    if (v37 >= 1)
    {
      v26 = *(v30 + 16);
      v27 = __OFADD__(v26, v37);
      v28 = v26 + v37;
      if (v27)
      {
        goto LABEL_39;
      }

      *(v30 + 16) = v28;
    }

LABEL_4:
    if (++v2 == v33)
    {
      return v4;
    }
  }

  v19 = v14;
  result = sub_261D86954();
  v14 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_261D6CCF8(uint64_t a1)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = *(sub_261D86224() - 8);
  v4 = MEMORY[0x277D84F90];
  v32 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v31 = *(v3 + 72);
  v5 = &unk_27FEF4548;
  while (1)
  {
    v7 = sub_261D861F4();
    v8 = v7;
    v9 = v7 >> 62;
    v10 = v7 >> 62 ? sub_261D86954() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v29 = sub_261D86954();
      v13 = v29 + v10;
      if (__OFADD__(v29, v10))
      {
LABEL_34:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v10;
    if (result)
    {
      if (v11)
      {
        goto LABEL_16;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
        sub_261D86954();
        goto LABEL_17;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = *(v14 + 16);
LABEL_17:
    result = sub_261D869F4();
    v4 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v17 >> 1) - v16) < v37)
    {
      goto LABEL_38;
    }

    v34 = v2;
    v35 = v4;
    v20 = v14 + 8 * v16 + 32;
    v30 = v14;
    if (v9)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      sub_261D6E618(&qword_27FEF4550, v5, &unk_261D87FA0);
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v5, &unk_261D87FA0);
        v22 = v5;
        v23 = sub_261D84D94(v36, i, v8);
        v25 = *v24;
        (v23)(v36, 0);
        v5 = v22;
        *(v20 + 8 * i) = v25;
      }
    }

    else
    {
      sub_261D597EC(0, &qword_27FEF4540, 0x277D447F8);
      swift_arrayInitWithCopy();
    }

    v2 = v34;
    v4 = v35;
    if (v37 >= 1)
    {
      v26 = *(v30 + 16);
      v27 = __OFADD__(v26, v37);
      v28 = v26 + v37;
      if (v27)
      {
        goto LABEL_39;
      }

      *(v30 + 16) = v28;
    }

LABEL_4:
    if (++v2 == v33)
    {
      return v4;
    }
  }

  v19 = v14;
  result = sub_261D86954();
  v14 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_261D6D02C(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v42 = a5;
  v52 = sub_261D86194();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v52);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v15 = sub_261D86954();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = a3;
  v46 = a4;
  v41 = a2;
  if (v15)
  {
    if (v15 < 1)
    {
      __break(1u);
      return;
    }

    v16 = 0;
    v53 = a1 & 0xC000000000000001;
    v50 = *MEMORY[0x277D45270];
    v49 = *MEMORY[0x277D44F10];
    v47 = v10 + 32;
    v48 = (v10 + 104);
    v17 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
    do
    {
      if (v53)
      {
        v19 = MEMORY[0x26671E4C0](v16, a1, v12);
      }

      else
      {
        v19 = *(a1 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = sub_261D867E4();
      if (v21)
      {
        v18 = v21;
        MEMORY[0x26671E090]();
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_261D865F4();
        }

        sub_261D86604();

        v51 = v55;
      }

      else
      {
        v22 = [v20 title];
        v23 = [v22 spokenPhrase];

        v24 = sub_261D86534();
        v26 = v25;

        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4538, &qword_261D87F78) + 48);
        *v14 = v24;
        v14[1] = v26;
        v28 = sub_261D862B4();
        (*(*(v28 - 8) + 104))(v14 + v27, v50, v28);
        (*v48)(v14, v49, v52);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_261D8428C(0, v17[2] + 1, 1, v17);
        }

        v30 = v17[2];
        v29 = v17[3];
        if (v30 >= v29 >> 1)
        {
          v17 = sub_261D8428C(v29 > 1, v30 + 1, 1, v17);
        }

        v17[2] = v30 + 1;
        (*(v10 + 32))(v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, v14, v52);
      }

      ++v16;
    }

    while (v15 != v16);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
  }

  v32 = v43;
  v31 = v44;
  v33 = v42;
  v34 = (*(v43 + 8))(v51, v42, v43, v12);
  if (v17[2])
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4580, &qword_261D87FD0);
    MEMORY[0x28223BE20](v35);
    *(&v40 - 4) = v33;
    *(&v40 - 3) = v32;
    v36 = v41;
    *(&v40 - 2) = v31;
    *(&v40 - 1) = v36;
    v37 = sub_261D80F84(sub_261D6E594, (&v40 - 6), v17);

    v54 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4588, &qword_261D87FD8);
    sub_261D6E618(&qword_27FEF4590, &qword_27FEF4588, &qword_261D87FD8);
    sub_261D86414();

    v38 = swift_allocObject();
    v38[2] = v45;
    v38[3] = v46;
    v38[4] = v34;

    v39 = sub_261D863F4();
    sub_261D86434();
  }

  else
  {

    v45(v34);
  }
}

uint64_t sub_261D6D548@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4438, &qword_261D88170);
  v3 = sub_261D86194();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_261D87AE0;
  (*(v4 + 16))(v7 + v6, a1, v3);

  sub_261D6DB98(v7);
  v8 = sub_261D6D698();

  *a2 = v8;
  return result;
}

uint64_t sub_261D6D698()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4580, &qword_261D87FD0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_261D86464();
}

uint64_t sub_261D6D704(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = sub_261D6C6E0(*a1);

  sub_261D6DCDC(v6, sub_261D6E1B4);
  a2(a4);
}

uint64_t sub_261D6D7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_261D5F5B8;
  *(v14 + 24) = v13;
  v15 = *(a8 + 24);

  v15(a6, sub_261D6E678, v14, a7, a8);
}

uint64_t sub_261D6D8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = *(a7 + 80);

  v12(sub_261D6E538, v11, a6, a7);
}

uint64_t sub_261D6D9B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_261D86464();
}

uint64_t sub_261D6DA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_261D5F5B8;
  *(v12 + 24) = v11;
  v13 = *(a7 + 88);

  v13(sub_261D6E56C, v12, a6, a7);
}

uint64_t sub_261D6DAF0(uint64_t *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = sub_261D6C9C4(*a1);
  v5 = sub_261D6CCF8(v3);
  a2(v4, v5);
}

uint64_t sub_261D6DB98(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_261D8428C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_261D86194();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_261D6DCDC(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_261D86954();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_261D86954();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_261D6DDD4(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_261D6DDD4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_261D86954();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_261D869F4();
  *v1 = result;
  return result;
}

uint64_t sub_261D6DE74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_261D86954();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_261D86954();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_261D6E618(&qword_27FEF4550, &qword_27FEF4548, &unk_261D87FA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF4548, &unk_261D87FA0);
            v9 = sub_261D84D94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_261D597EC(0, &qword_27FEF4540, 0x277D447F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}
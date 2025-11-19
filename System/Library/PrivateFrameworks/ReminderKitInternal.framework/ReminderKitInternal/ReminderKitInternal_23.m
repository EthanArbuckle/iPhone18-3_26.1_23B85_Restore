void sub_2302190BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t REMSaveRequest.saveAsync(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_230219148, 0, 0);
}

uint64_t sub_230219148()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_230219238;
  v3 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD000000000000010, 0x8000000230345120, sub_230219570, v1, v3);
}

uint64_t sub_230219238()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_230219354;
  }

  else
  {

    v2 = sub_2300E5640;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_230219354()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2302193B8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15290);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_2302195EC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2302190BC;
  aBlock[3] = &block_descriptor_13;
  v12 = _Block_copy(aBlock);

  [a2 saveWithQueue:a3 completion:v12];
  _Block_release(v12);
}

uint64_t sub_230219578(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15290);
    return sub_23030FE58();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15290);
    return sub_23030FE68();
  }
}

uint64_t sub_2302195EC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15290);

  return sub_230219578(a1);
}

uint64_t REMSmartList.userDefinedVisibility.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = [v0 smartListType];
  v6 = [v1 pinnedDate];
  if (v6)
  {
    v7 = v6;
    sub_23030EB18();

    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  }

  else
  {
    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  v10 = _sSo12REMSmartListC19ReminderKitInternalE028userDefinedVisibilityOfSmartB04with10pinnedDateSo0ab4UsergH0VSo0aB4Typea_10Foundation0M0VSgtFZ_0(v5, v4);

  sub_230215574(v4);
  return v10;
}

uint64_t sub_2302197BC()
{
  v0 = sub_23030EB58();
  __swift_allocate_value_buffer(v0, qword_27DB175B0);
  __swift_project_value_buffer(v0, qword_27DB175B0);
  return sub_23030EA68();
}

uint64_t static REMSmartList.hiddenPredefinedSmartListPinnedDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DB13C80 != -1)
  {
    swift_once();
  }

  v2 = sub_23030EB58();
  v3 = __swift_project_value_buffer(v2, qword_27DB175B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _sSo12REMSmartListC19ReminderKitInternalE028userDefinedVisibilityOfSmartB04with10pinnedDateSo0ab4UsergH0VSo0aB4Typea_10Foundation0M0VSgtFZ_0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_23030EB58();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = REMSmartListType.supportsUserDefinedVisibility.getter(a1);
  result = 0;
  if (v11)
  {
    sub_2301818F8(a2, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_230215574(v6);
      return 0;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      if (qword_27DB13C80 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v7, qword_27DB175B0);
      v13 = sub_23030EB08();
      (*(v8 + 8))(v10, v7);
      if (v13)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_230219A98()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB175D0);
  v1 = __swift_project_value_buffer(v0, qword_27DB175D0);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id REMContactRepresentation.init(contact:)(void *a1)
{
  v2 = sub_23021ABE8(a1);
  v3 = sub_23021ADE8(a1);
  if (*(v2 + 2) || *(v3 + 2))
  {
    v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v5 = sub_23030FCC8();

    v6 = sub_23030FCC8();

    v7 = [v4 initWithPhones:v5 emails:v6];
  }

  else
  {

    return 0;
  }

  return v7;
}

id REMContactRepresentation.init(contactIdentifier:contactStore:)(uint64_t a1, unint64_t a2, void *a3)
{
  v55[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14880);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2303172A0;
  v7 = *MEMORY[0x277CBD018];
  v8 = *MEMORY[0x277CBCFC0];
  *(v6 + 32) = *MEMORY[0x277CBD018];
  *(v6 + 40) = v8;
  v9 = *MEMORY[0x277CBD098];
  *(v6 + 48) = *MEMORY[0x277CBD098];
  v10 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  v11 = v7;
  v12 = v8;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB169E0);
  v14 = sub_23030FCC8();

  v15 = [v10 initWithKeysToFetch_];

  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_230315CE0;
  v53 = a1;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  v18 = sub_23030FCC8();

  v19 = [v16 predicateForContactsWithIdentifiers_];

  [v15 setPredicate_];
  v55[0] = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = v55;
  v21 = swift_allocObject();
  v21[2] = sub_23021AF8C;
  v21[3] = v20;
  aBlock[4] = sub_23021AFD0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23021A2F0;
  aBlock[3] = &block_descriptor_14;
  v22 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v23 = [a3 enumerateContactsWithFetchRequest:v15 error:aBlock usingBlock:v22];
  _Block_release(v22);
  v24 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_4;
  }

  if (v23)
  {
    goto LABEL_8;
  }

  v23 = sub_23030E808();

  swift_willThrow();
  if (qword_27DB13C88 != -1)
  {
    goto LABEL_21;
  }

LABEL_4:
  v26 = sub_23030EF48();
  __swift_project_value_buffer(v26, qword_27DB175D0);
  v27 = v15;
  v28 = v23;
  v29 = sub_23030EF38();
  v30 = sub_230310288();

  if (os_log_type_enabled(v29, v30))
  {
    v52 = a3;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136315394;
    if ([v27 predicate])
    {
      sub_23004CBA4(0, &qword_27DB175F0);
      v33 = sub_23030F948();
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v40 = sub_23004E30C(v33, v35, aBlock);

    *(v31 + 4) = v40;
    *(v31 + 12) = 2080;
    swift_getErrorValue();
    v41 = sub_2303112D8();
    v43 = sub_23004E30C(v41, v42, aBlock);

    *(v31 + 14) = v43;
    _os_log_impl(&dword_230044000, v29, v30, "Error enumerating contacts with CNContact predicate {predicate: %s, error: %s}", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231914180](v32, -1, -1);
    MEMORY[0x231914180](v31, -1, -1);

    a3 = v52;
    v36 = v55[0];
    if (!v55[0])
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_8:
  v36 = v55[0];
  if (!v55[0])
  {
LABEL_13:
    if (qword_27DB13C88 != -1)
    {
      swift_once();
    }

    v44 = sub_23030EF48();
    __swift_project_value_buffer(v44, qword_27DB175D0);

    v45 = sub_23030EF38();
    v46 = sub_230310288();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v47 = 136315138;
      v49 = sub_23004E30C(v53, a2, aBlock);

      *(v47 + 4) = v49;
      _os_log_impl(&dword_230044000, v45, v46, "Unable to look up contact identifier from CNContactStore {contactIdentifier: %s}", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x231914180](v48, -1, -1);
      MEMORY[0x231914180](v47, -1, -1);
    }

    else
    {
    }

    v38 = 0;
    goto LABEL_19;
  }

LABEL_9:
  v37 = v36;

  v38 = REMContactRepresentation.init(contact:)(v37);
  v39 = v38;

  if (v38)
  {
  }

LABEL_19:
  v50 = v55[0];

  return v38;
}

void sub_23021A2F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id REMContactRepresentation.init(address:)()
{
  sub_23030F958();

  v0 = sub_23030F8B8();
  v1 = [v0 rem_hasMailto];

  v2 = sub_23030F8B8();
  v3 = v2;
  if (v1)
  {

    v4 = [v3 rem_removingMailto];

    v5 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v7 = v6;

    v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  }

  else
  {
    v9 = [v2 rem_hasTel];

    if ((v9 & 1) == 0)
    {

      return 0;
    }

    v10 = sub_23030F8B8();

    v11 = [v10 rem_removingTel];

    v12 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v14 = v13;

    v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
    v15 = swift_allocObject();
    v5 = 0;
    v7 = 0;
    *(v15 + 16) = xmmword_230315CE0;
    *(v15 + 32) = v12;
    *(v15 + 40) = v14;
  }

  v16 = sub_23030FCC8();

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_230315CE0;
    *(v17 + 32) = v5;
    *(v17 + 40) = v7;
  }

  v18 = sub_23030FCC8();

  v19 = [v8 initWithPhones:v16 emails:v18];

  return v19;
}

Swift::Bool __swiftcall REMContactRepresentation.matches(contact:)(CNContact contact)
{
  v2 = v1;
  sub_23004CBA4(0, &qword_27DB175F8);
  v4 = REMContactRepresentation.init(contact:)(contact.super.isa);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v2 matchesContactRepresentation_];

  return v6;
}

CNContact_optional __swiftcall CNContactStore.contactFrom(emailAddresses:phoneNumbers:keysToFetch:)(Swift::OpaquePointer emailAddresses, Swift::OpaquePointer phoneNumbers, Swift::OpaquePointer keysToFetch)
{
  rawValue = phoneNumbers._rawValue;
  v46 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  v45 = MEMORY[0x277D84F90];
  v5 = *(emailAddresses._rawValue + 2);
  v6 = 0x277CBD000uLL;
  if (!v5)
  {
    v41 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v7 = 0;
  v8 = emailAddresses._rawValue + 40;
  v41 = MEMORY[0x277D84F90];
  while (2)
  {
    v9 = &v8[16 * v7];
    rawValue = v7;
    while (1)
    {
      if (rawValue >= v5)
      {
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
        if (sub_2303106D8())
        {
          v26 = sub_2303106D8();
          if (v26)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_34;
      }

      v7 = rawValue + 1;
      if (__OFADD__(rawValue, 1))
      {
        goto LABEL_43;
      }

      if (*v9)
      {
        v10 = v6;
        v11 = v8;
        v12 = objc_opt_self();

        v13 = sub_23030F8B8();
        v14 = v12;
        v8 = v11;
        v6 = v10;
        v15 = [v14 predicateForContactsMatchingEmailAddress_];

        if (v15)
        {
          break;
        }
      }

      ++rawValue;
      v9 += 16;
      if (v7 == v5)
      {
        v4 = MEMORY[0x277D84F90];
        rawValue = phoneNumbers._rawValue;
        goto LABEL_15;
      }
    }

    MEMORY[0x231911A30](v16);
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23030FD18();
    }

    sub_23030FD68();
    v41 = v44;
    v4 = MEMORY[0x277D84F90];
    rawValue = phoneNumbers._rawValue;
    if (v7 != v5)
    {
      continue;
    }

    break;
  }

LABEL_15:
  sub_23009D278(v41);
  v44 = v4;
  v17 = *(rawValue + 16);
  if (v17)
  {
    v18 = 0;
    v19 = (rawValue + 40);
    v40 = (rawValue + 40);
    do
    {
      v42 = v4;
      v20 = &v19[16 * v18];
      v21 = v18;
      while (1)
      {
        if (v21 >= v17)
        {
          goto LABEL_44;
        }

        v18 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_45;
        }

        if (*v20)
        {
          v22 = objc_allocWithZone(MEMORY[0x277CBDB70]);

          v23 = sub_23030F8B8();
          v24 = [v22 initWithStringValue_];

          rawValue = [objc_opt_self() predicateForContactsMatchingPhoneNumber_];

          if (rawValue)
          {
            break;
          }
        }

        ++v21;
        v20 += 16;
        if (v18 == v17)
        {
          v4 = v42;
          goto LABEL_28;
        }
      }

      MEMORY[0x231911A30](v25);
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23030FD18();
      }

      sub_23030FD68();
      v4 = v44;
      v19 = v40;
    }

    while (v18 != v17);
  }

LABEL_28:
  sub_23009D278(v4);
  rawValue = v45;
  if (v45 >> 62)
  {
    goto LABEL_47;
  }

  v26 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_34:

LABEL_35:
    v34 = 0;
    goto LABEL_54;
  }

LABEL_30:
  v27 = 0;
  while (1)
  {
    if (v27 >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v28 = *(rawValue + 8 * v27 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB169E0);
    v29 = sub_23030FCC8();
    v44 = 0;
    v30 = [v43 unifiedContactsMatchingPredicate:v28 keysToFetch:v29 error:&v44];

    if (v30)
    {
      break;
    }

    ++v27;
    v31 = v44;
    v32 = sub_23030E808();

    swift_willThrow();
    if (v26 == v27)
    {
      goto LABEL_34;
    }
  }

  v35 = v44;

  sub_23004CBA4(0, &qword_27DB16A60);
  v36 = sub_23030FCD8();

  if (!(v36 >> 62))
  {
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

LABEL_51:

    goto LABEL_35;
  }

  if (!sub_2303106D8())
  {
    goto LABEL_51;
  }

LABEL_38:
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x231912650](0, v36);
  }

  else
  {
    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v37 = *(v36 + 32);
  }

  v38 = v37;

  v34 = v38;
LABEL_54:
  result.value.super.isa = v34;
  result.is_nil = v33;
  return result;
}

unint64_t CNContactStore.contact(matching:keysToFetch:)(void *a1, Swift::OpaquePointer a2)
{
  v4 = [a1 emails];
  v5 = sub_23030FCD8();

  v6 = sub_2301C027C(v5);

  v7 = [a1 phones];
  v8 = sub_23030FCD8();

  v9 = sub_2301C027C(v8);

  v10 = CNContactStore.contactFrom(emailAddresses:phoneNumbers:keysToFetch:)(v6, v9, a2);

  return v10;
}

char *sub_23021ABE8(void *a1)
{
  v1 = [a1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169C8);
  v2 = sub_23030FCD8();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_2303106D8();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v17 = MEMORY[0x277D84F90];
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x231912650](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v8 = [v6 value];
      v9 = [v8 unformattedInternationalStringValue];

      if (v9)
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v10 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v12 = v11;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_23007E928(0, *(v17 + 2) + 1, 1, v17);
    }

    v14 = *(v17 + 2);
    v13 = *(v17 + 3);
    if (v14 >= v13 >> 1)
    {
      v17 = sub_23007E928((v13 > 1), v14 + 1, 1, v17);
    }

    *(v17 + 2) = v14 + 1;
    v15 = &v17[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = v12;
  }

  while (v4 != v3);
LABEL_23:

  return v17;
}

char *sub_23021ADE8(void *a1)
{
  v1 = [a1 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB169C8);
  v2 = sub_23030FCD8();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x277D84F90];
  }

  v3 = sub_2303106D8();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_23009EC34(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v16;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x231912650](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 value];
      v10 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v12 = v11;

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_23009EC34((v13 > 1), v14 + 1, 1);
      }

      ++v5;
      *(v16 + 16) = v14 + 1;
      v15 = v16 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

void sub_23021AF8C(void *a1)
{
  v2 = *(v1 + 16);
  v4 = *v2;
  *v2 = a1;
  v3 = a1;
}

uint64_t MutableOrderedSet.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  MutableOrderedSet.init(_:)();
  return v0;
}

uint64_t MutableOrderedSet.array.getter()
{
  v1 = [*(v0 + 16) array];
  sub_23030FCD8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15570);
  sub_23021B770();
  v2 = sub_23030FB78();

  return v2;
}

uint64_t sub_23021B230(uint64_t a1, SEL *a2)
{
  [*(v2 + 16) *a2];

  return swift_unknownObjectRelease();
}

uint64_t MutableOrderedSet.init(_:)()
{
  sub_230310A18();

  v1 = objc_allocWithZone(MEMORY[0x277CBEB40]);
  v2 = sub_23030FCC8();

  v3 = [v1 initWithArray_];

  *(v0 + 16) = v3;
  return v0;
}

uint64_t MutableOrderedSet.insert(_:at:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  result = sub_230311038();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    [v4 insertObject:result atIndex:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MutableOrderedSet.replaceValue(at:with:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    [*(v1 + 16) replaceObjectAtIndex:result withObject:sub_230311038()];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t MutableOrderedSet.value(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = [v3[2] count];
  if (v7 >= 1 && v7 > a1)
  {
    v11 = [v3[2] objectAtIndex_];
    sub_2303105E8();
    swift_unknownObjectRelease();
    v12 = *(v6 + 80);
    v13 = swift_dynamicCast();
    return (*(*(v12 - 8) + 56))(a2, v13 ^ 1u, 1, v12);
  }

  else
  {
    v9 = *(*(*(v6 + 80) - 8) + 56);

    return v9(a2, 1, 1);
  }
}

uint64_t MutableOrderedSet.index(of:)()
{
  v1 = [*(v0 + 16) indexOfObject_];
  swift_unknownObjectRelease();
  result = sub_23030E3B8();
  if (v1 == result)
  {
    return 0;
  }

  v3 = v1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

id MutableOrderedSet.contains(_:)()
{
  v1 = [*(v0 + 16) containsObject_];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_23021B6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23004D5CC(a1, &v7);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

unint64_t sub_23021B770()
{
  result = qword_280C96EE0;
  if (!qword_280C96EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96EE0);
  }

  return result;
}

Swift::Void __swiftcall MutableOrderedSet.removeValue(at:)(Swift::UInt at)
{
  v3 = [*(v1 + 16) count];
  if (v3 >= 1 && v3 > at)
  {
    v5 = *(v1 + 16);

    [v5 removeObjectAtIndex_];
  }
}

void sub_23021B874(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + 16);
  sub_230310A18();
  v5 = sub_23030FCC8();

  [v4 *a2];
}

uint64_t MutableOrderedSet.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void static Analytics.postBiomeEventForUncategorizedGroceryItem(item:locale:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CF1438]);
  v1 = sub_23030F8B8();
  v2 = sub_23030F8B8();
  v3 = [v0 initWithItemChanged:v1 originalCategory:0 destinationCategory:0 locale:v2];

  sub_23021CD6C(v3);
}

void static Analytics.postBiomeEventForCorrectedGroceryItem(item:originalCategory:destinationCategory:locale:)()
{
  v0 = objc_allocWithZone(MEMORY[0x277CF1438]);
  v1 = sub_23030F8B8();
  v2 = sub_23030F8B8();
  v3 = sub_23030F8B8();
  v4 = sub_23030F8B8();
  v5 = [v0 initWithItemChanged:v1 originalCategory:v2 destinationCategory:v3 locale:v4];

  sub_23021CD6C(v5);
}

void sub_23021BC40(uint64_t a1)
{
  if (qword_280C9BB50 != -1)
  {
    swift_once();
  }

  v2 = sub_23030EF48();
  __swift_project_value_buffer(v2, qword_280C989B0);

  oslog = sub_23030EF38();
  v3 = sub_2303102A8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    if (!a1)
    {
      sub_23008D308(MEMORY[0x277D84F90]);
    }

    v6 = sub_23030F668();
    v8 = v7;

    v9 = sub_23004E30C(v6, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_230044000, oslog, v3, "AutoBugCapture did reply {response: %s}", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x231914180](v5, -1, -1);
    MEMORY[0x231914180](v4, -1, -1);
  }
}

uint64_t sub_23021BDF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_23030F658();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

id Analytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Analytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Analytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Analytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Analytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall Analytics.isEventUsed(_:)(Swift::String a1)
{
  v1 = sub_23030F8B8();
  IsEventUsed = AnalyticsIsEventUsed();

  return IsEventUsed;
}

id sub_23021BFBC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = a1;
  if (!a4)
  {

    goto LABEL_17;
  }

  v7 = *(a1 + 16);

  v8 = a4;
  if (v7)
  {
    sub_23005EE00(0x6D6F44726F727265, 0xEB000000006E6961);
    if (v9)
    {
      goto LABEL_16;
    }
  }

  result = [v8 domain];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23005EA50(v11, 0x6D6F44726F727265, 0xEB000000006E6961, isUniquelyReferenced_nonNull_native);
  v13 = v5;
  [v8 code];
  v14 = sub_23030FFB8();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v34[0] = v13;
  sub_23005EA50(v14, 0x646F43726F727265, 0xE900000000000065, v15);
  v5 = v13;
  v16 = [v8 domain];
  v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v19 = v18;

  if (v17 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v19 == v20)
  {
  }

  else
  {
    v21 = sub_230311048();

    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v22 = [v8 userInfo];
  v23 = sub_23030F658();

  v24 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  if (!*(v23 + 16))
  {

    goto LABEL_15;
  }

  v26 = sub_23005EE00(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_23004D5CC(*(v23 + 56) + 32 * v26, v34);

  sub_23004CBA4(0, &qword_27DB14A70);
  if (swift_dynamicCast())
  {
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = v5;
    sub_23005EA50(v33, 0xD000000000000015, 0x8000000230345280, v29);

    v5 = v34[0];
    goto LABEL_17;
  }

LABEL_16:

LABEL_17:
  if ((a3 & 1) == 0)
  {
    if (!*(v5 + 16) || (sub_23005EE00(0x6E6F697461727564, 0xE800000000000000), (v30 & 1) == 0))
    {
      v31 = sub_23030FEC8();
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = v5;
      sub_23005EA50(v31, 0x6E6F697461727564, 0xE800000000000000, v32);
      return v34[0];
    }
  }

  return v5;
}

void sub_23021C324(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v6 = sub_23030F8B8();
  v7 = sub_23030F8B8();
  v8 = [a4 domain];
  if (!v8)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v8 = sub_23030F8B8();
  }

  v26 = [a4 code];
  sub_230310E58();
  v9 = sub_23030F8B8();

  v10 = [objc_opt_self() processInfo];
  v11 = [v10 processName];

  if (!v11)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v11 = sub_23030F8B8();
  }

  v12 = sub_23030F8B8();
  v13 = [v5 signatureWithDomain:v6 type:v7 subType:v8 subtypeContext:v9 detectedProcess:v11 triggerThresholdValues:v12];

  if (v13)
  {
    v26 = 0;
    v14 = v13;
    sub_23030F648();
  }

  if (qword_280C9BB50 != -1)
  {
    swift_once();
  }

  v15 = sub_23030EF48();
  __swift_project_value_buffer(v15, qword_280C989B0);
  v16 = v13;
  v17 = sub_23030EF38();
  v18 = sub_230310298();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    if (v13)
    {
      v21 = [v16 description];
      v22 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7104878;
    }

    v25 = sub_23004E30C(v22, v24, &v26);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_230044000, v17, v18, "Failed to cast signature {signature: %s}", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x231914180](v20, -1, -1);
    MEMORY[0x231914180](v19, -1, -1);
  }

  else
  {
  }
}

void sub_23021C84C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, id a6, char a7)
{
  if (a6)
  {
    v14 = a6;
    v39 = sub_23030E7F8();
    v15 = sub_23021BFBC(a3, a4, a5 & 1, v39);
    if (qword_280C9BB50 != -1)
    {
      swift_once();
    }

    v16 = sub_23030EF48();
    __swift_project_value_buffer(v16, qword_280C989B0);

    v17 = sub_23030EF38();
    v18 = sub_230310288();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      *v19 = 136315394;
      *(v19 + 4) = sub_23004E30C(a1, a2, &v40);
      *(v19 + 12) = 2080;
      sub_23004CBA4(0, &qword_280C9B980);
      v20 = sub_23030F668();
      v22 = sub_23004E30C(v20, v21, &v40);

      *(v19 + 14) = v22;
      _os_log_impl(&dword_230044000, v17, v18, "Posting analytics error {name: %s, payload: %s}", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v38, -1, -1);
      MEMORY[0x231914180](v19, -1, -1);
    }

    v23 = sub_23030F8B8();
    sub_23004CBA4(0, &qword_280C9B980);
    v24 = sub_23030F638();
    AnalyticsSendEvent();

    if (a7)
    {
      sub_23021C324(a1, a2, v15, v39);
    }
  }

  else
  {
    if (a5)
    {
    }

    else
    {
      v25 = *(a3 + 16);

      if (!v25 || (sub_23005EE00(0x6E6F697461727564, 0xE800000000000000), (v26 & 1) == 0))
      {
        v27 = sub_23030FEC8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = a3;
        sub_23005EA50(v27, 0x6E6F697461727564, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      }
    }

    if (qword_280C9BB50 != -1)
    {
      swift_once();
    }

    v29 = sub_23030EF48();
    __swift_project_value_buffer(v29, qword_280C989B0);

    v30 = sub_23030EF38();
    v31 = sub_2303102A8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136446466;
      *(v32 + 4) = sub_23004E30C(a1, a2, &v40);
      *(v32 + 12) = 2082;
      sub_23004CBA4(0, &qword_280C9B980);
      v34 = sub_23030F668();
      v36 = sub_23004E30C(v34, v35, &v40);

      *(v32 + 14) = v36;
      _os_log_impl(&dword_230044000, v30, v31, "Posting analytics {name: %{public}s, payload: %{public}s}", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v33, -1, -1);
      MEMORY[0x231914180](v32, -1, -1);
    }

    v37 = sub_23030F8B8();
    sub_23004CBA4(0, &qword_280C9B980);
    v39 = sub_23030F638();

    AnalyticsSendEvent();
  }
}

void sub_23021CD6C(uint64_t a1)
{
  v2 = [BiomeLibrary() Reminders];
  swift_unknownObjectRelease();
  v3 = [v2 Grocery];
  swift_unknownObjectRelease();
  v4 = [v3 MiscategorizedGroceryItem];
  swift_unknownObjectRelease();
  v5 = [v4 source];
  if (qword_280C9BB50 != -1)
  {
    swift_once();
  }

  v6 = sub_23030EF48();
  __swift_project_value_buffer(v6, qword_280C989B0);
  v16 = v5;
  v7 = sub_23030EF38();
  v8 = sub_2303102A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = [v16 identifier];
    v12 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v14 = v13;

    v15 = sub_23004E30C(v12, v14, &v17);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_230044000, v7, v8, "Donating event to {name: %{public}s}", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x231914180](v10, -1, -1);
    MEMORY[0x231914180](v9, -1, -1);
  }

  [v16 sendEvent_];
}

uint64_t sub_23021CFE8()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB17608);
  v1 = __swift_project_value_buffer(v0, qword_27DB17608);
  if (qword_280C99DE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void static REMSuggestedAttributesTrainer.train(in:parameters:)(__int128 *a1@<X1>, void *a2@<X8>)
{
  v4 = a1[9];
  v17[8] = a1[8];
  v18[0] = v4;
  *(v18 + 9) = *(a1 + 153);
  v5 = a1[5];
  v17[4] = a1[4];
  v17[5] = v5;
  v6 = a1[7];
  v17[6] = a1[6];
  v17[7] = v6;
  v7 = a1[1];
  v17[0] = *a1;
  v17[1] = v7;
  v8 = a1[3];
  v17[2] = a1[2];
  v17[3] = v8;
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_27DB13C98 != -1)
  {
    swift_once();
  }

  v10 = sub_23030EF48();
  __swift_project_value_buffer(v10, qword_27DB17608);
  v11 = sub_23030EF38();
  v12 = sub_2303102A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_230044000, v11, v12, "REMSuggestedAttributesTrainer init (train())", v13, 2u);
    MEMORY[0x231914180](v13, -1, -1);
  }

  sub_2300C91E4(v9, v17, __src);
  if (!v2)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_23021D270(__dst, v14);
    sub_230061918(__dst, &qword_27DB17620);
    memcpy(a2, __dst, 0x318uLL);
  }
}

id REMSuggestedAttributesTrainer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id REMSuggestedAttributesTrainer.init(coder:)(void *a1)
{
  v3 = [v1 init];

  return v3;
}

id REMSuggestedAttributesTrainer.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_27DB13C98 != -1)
  {
    swift_once();
  }

  v3 = sub_23030EF48();
  __swift_project_value_buffer(v3, qword_27DB17608);
  v4 = sub_23030EF38();
  v5 = sub_2303102A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_230044000, v4, v5, "REMSuggestedAttributesTrainer deinit", v6, 2u);
    MEMORY[0x231914180](v6, -1, -1);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t REMSuggestedAttributesTrainer.Result.Embedding.listAccuracy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 112);
  v20 = *(v1 + 96);
  v21 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v18 = *(v1 + 64);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 16);
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 112);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 128);
  *(a1 + 128) = *(v1 + 128);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_23007BDFC(v15, v14);
}

void __swiftcall REMSuggestedAttributesTrainer.Result.Embedding.init(listAccuracy:skippedRemindersCount:trainingSetCount:validationSetCount:trainingDuration:)(ReminderKitInternal::REMSuggestedAttributesTrainer::Result::Embedding *__return_ptr retstr, ReminderKitInternal::REMSuggestedAttributesAccuracy *listAccuracy, Swift::Int skippedRemindersCount, Swift::Int trainingSetCount, Swift::Int validationSetCount, Swift::Double trainingDuration)
{
  v6 = *&listAccuracy->metrics.precision;
  *&retstr->listAccuracy.metrics.typeIIErrors._rawValue = *&listAccuracy->metrics.typeIIErrors._rawValue;
  *&retstr->listAccuracy.metrics.precision = v6;
  rawValue = listAccuracy->metrics.indexedClasses._rawValue;
  v8 = *&listAccuracy->metrics.trueNegatives._rawValue;
  *&retstr->listAccuracy.metrics.confusionMatrix._rawValue = *&listAccuracy->metrics.confusionMatrix._rawValue;
  *&retstr->listAccuracy.metrics.trueNegatives._rawValue = v8;
  v9 = *&listAccuracy->metrics.recalls._rawValue;
  *&retstr->listAccuracy.metrics.falseNegatives._rawValue = *&listAccuracy->metrics.falseNegatives._rawValue;
  *&retstr->listAccuracy.metrics.recalls._rawValue = v9;
  v10 = *&listAccuracy->metrics.correctIndices._rawValue;
  *&retstr->listAccuracy.correctSample._rawValue = *&listAccuracy->correctSample._rawValue;
  *&retstr->listAccuracy.metrics.correctIndices._rawValue = v10;
  retstr->listAccuracy.metrics.indexedClasses._rawValue = rawValue;
  retstr->skippedRemindersCount = skippedRemindersCount;
  retstr->trainingSetCount = trainingSetCount;
  retstr->validationSetCount = validationSetCount;
  retstr->trainingDuration = trainingDuration;
}

uint64_t REMSuggestedAttributesTrainer.Result.Embedding.droppingSensitiveFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 112);
  v18 = *(v1 + 96);
  v4 = v18;
  v19 = v3;
  v5 = *(v1 + 32);
  v15[0] = *(v1 + 16);
  v6 = *(v1 + 48);
  v7 = *(v1 + 16);
  v15[1] = *(v1 + 32);
  v15[2] = v6;
  v8 = *(v1 + 80);
  v10 = *(v1 + 48);
  v16 = *(v1 + 64);
  v9 = v16;
  v17 = v8;
  *(a1 + 80) = v2;
  *(a1 + 96) = v4;
  v20 = *(v1 + 128);
  v11 = *(v1 + 152);
  *(a1 + 48) = v10;
  *(a1 + 64) = v9;
  *&v8 = *(v1 + 160);
  v12 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v12;
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 16) = v7;
  *(a1 + 32) = v5;
  *(a1 + 112) = *(v1 + 112);
  *(a1 + 136) = *(v1 + 136);
  *(a1 + 152) = v11;
  *(a1 + 160) = v8;
  return sub_23007B300(v15, v14);
}

unint64_t sub_23021D604()
{
  v1 = *v0;
  v2 = 0x756363417473696CLL;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23021D6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230228C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23021D6DC(uint64_t a1)
{
  v2 = sub_2302278D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23021D718(uint64_t a1)
{
  v2 = sub_2302278D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesTrainer.Result.Embedding.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17628);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = v1[7];
  v42 = v1[6];
  v43 = v7;
  v8 = *(v1 + 17);
  v44 = *(v1 + 16);
  v9 = v1[3];
  v38 = v1[2];
  v39 = v9;
  v10 = v1[5];
  v40 = v1[4];
  v41 = v10;
  v11 = v1[1];
  v36 = *v1;
  v37 = v11;
  v12 = *(v1 + 19);
  v15[2] = *(v1 + 18);
  v15[3] = v8;
  v15[1] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23007BDFC(&v36, &v27);
  sub_2302278D4();
  sub_230311448();
  v33 = v42;
  v34 = v43;
  v35 = v44;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v32 = v41;
  v27 = v36;
  v28 = v37;
  v26 = 0;
  sub_230227928();
  v13 = v15[4];
  sub_230310DF8();
  if (v13)
  {
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v17 = v27;
    v18 = v28;
    sub_23007BE34(&v17);
  }

  else
  {
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v19 = v29;
    v20 = v30;
    v21 = v31;
    v22 = v32;
    v17 = v27;
    v18 = v28;
    sub_23007BE34(&v17);
    v16 = 1;
    sub_230310DD8();
    v16 = 2;
    sub_230310DD8();
    v16 = 3;
    sub_230310DD8();
    v16 = 4;
    sub_230310DC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t REMSuggestedAttributesTrainer.Result.Embedding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17640);
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v22 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302278D4();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = 0;
  sub_23022797C();
  sub_230310CE8();
  v53 = v44;
  v54 = v45;
  v55 = v46;
  v49 = v40;
  v50 = v41;
  v51 = v42;
  v52 = v43;
  v47 = v38;
  v48 = v39;
  LOBYTE(v30[0]) = 1;
  v8 = sub_230310CC8();
  LOBYTE(v30[0]) = 2;
  v24 = sub_230310CC8();
  LOBYTE(v30[0]) = 3;
  v23 = sub_230310CC8();
  v36 = 4;
  sub_230310CB8();
  v10 = v9;
  (*(v5 + 8))(v7, v25);
  v11 = v53;
  v12 = v54;
  v26[6] = v53;
  v26[7] = v54;
  v13 = v49;
  v14 = v50;
  v26[2] = v49;
  v26[3] = v50;
  v15 = v52;
  v26[4] = v51;
  v26[5] = v52;
  v17 = v47;
  v16 = v48;
  v26[0] = v47;
  v26[1] = v48;
  *&v27 = v55;
  *(&v27 + 1) = v8;
  v18 = v23;
  v19 = v24;
  *&v28 = v24;
  *(&v28 + 1) = v23;
  v29 = v10;
  *(a2 + 64) = v51;
  *(a2 + 80) = v15;
  *(a2 + 96) = v11;
  *(a2 + 112) = v12;
  *a2 = v17;
  *(a2 + 16) = v16;
  *(a2 + 32) = v13;
  *(a2 + 48) = v14;
  v20 = v28;
  *(a2 + 128) = v27;
  *(a2 + 144) = v20;
  *(a2 + 160) = v29;
  sub_2302279D0(v26, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30[6] = v53;
  v30[7] = v54;
  v30[2] = v49;
  v30[3] = v50;
  v30[4] = v51;
  v30[5] = v52;
  v30[0] = v47;
  v30[1] = v48;
  v31 = v55;
  v32 = v8;
  v33 = v19;
  v34 = v18;
  v35 = v10;
  return sub_230227A08(v30);
}

void __swiftcall REMSuggestedAttributesTrainer.Result.AnchoredBubble.init(precision:recall:skippedRemindersCount:trainingSetCount:validationSetCount:trainingDuration:)(ReminderKitInternal::REMSuggestedAttributesTrainer::Result::AnchoredBubble *__return_ptr retstr, Swift::Double precision, Swift::Double recall, Swift::Int skippedRemindersCount, Swift::Int trainingSetCount, Swift::Int validationSetCount, Swift::Double trainingDuration)
{
  retstr->precision = precision;
  retstr->recall = recall;
  retstr->skippedRemindersCount = skippedRemindersCount;
  retstr->trainingSetCount = trainingSetCount;
  retstr->validationSetCount = validationSetCount;
  retstr->trainingDuration = trainingDuration;
}

double REMSuggestedAttributesTrainer.Result.AnchoredBubble.droppingSensitiveFields.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *(v1 + 40);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = result;
  return result;
}

unint64_t sub_23021DE4C()
{
  v1 = *v0;
  v2 = 0x6F69736963657270;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6C61636572;
  if (v1 != 1)
  {
    v5 = 0xD000000000000015;
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

uint64_t sub_23021DF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230228E14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23021DF3C(uint64_t a1)
{
  v2 = sub_230227A38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23021DF78(uint64_t a1)
{
  v2 = sub_230227A38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesTrainer.Result.AnchoredBubble.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17650);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230227A38();
  sub_230311448();
  v16 = 0;
  sub_230310DC8();
  if (!v2)
  {
    v15 = 1;
    sub_230310DC8();
    v14 = 2;
    sub_230310DD8();
    v13 = 3;
    sub_230310DD8();
    v12 = 4;
    sub_230310DD8();
    v11 = 5;
    sub_230310DC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMSuggestedAttributesTrainer.Result.AnchoredBubble.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17660);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230227A38();
  sub_230311428();
  if (!v2)
  {
    v24 = 0;
    sub_230310CB8();
    v10 = v9;
    v23 = 1;
    sub_230310CB8();
    v12 = v11;
    v22 = 2;
    v13 = sub_230310CC8();
    v21 = 3;
    v14 = sub_230310CC8();
    v20 = 4;
    v18 = sub_230310CC8();
    v19 = 5;
    sub_230310CB8();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v14;
    a2[4] = v18;
    a2[5] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMSuggestedAttributesTrainer.Result.CoreBehavior.listAccuracy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 112);
  v20 = *(v1 + 96);
  v21 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v18 = *(v1 + 64);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 16);
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 112);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 128);
  *(a1 + 128) = *(v1 + 128);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_23007BDFC(v15, v14);
}

uint64_t REMSuggestedAttributesTrainer.Result.CoreBehavior.dueDayOfWeekAccuracy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 248);
  v12[6] = *(v1 + 232);
  v12[7] = v3;
  v13 = *(v1 + 264);
  v4 = *(v1 + 152);
  v5 = *(v1 + 184);
  v12[2] = *(v1 + 168);
  v12[3] = v5;
  v12[4] = *(v1 + 200);
  v12[5] = v2;
  v12[0] = *(v1 + 136);
  v12[1] = v4;
  v6 = *(v1 + 216);
  v7 = *(v1 + 248);
  *(a1 + 96) = *(v1 + 232);
  *(a1 + 112) = v7;
  *(a1 + 128) = *(v1 + 264);
  v8 = *(v1 + 152);
  v9 = *(v1 + 184);
  *(a1 + 32) = *(v1 + 168);
  *(a1 + 48) = v9;
  *(a1 + 64) = *(v1 + 200);
  *(a1 + 80) = v6;
  *a1 = *(v1 + 136);
  *(a1 + 16) = v8;
  return sub_23007BDFC(v12, v11);
}

uint64_t REMSuggestedAttributesTrainer.Result.CoreBehavior.alarmLocationAccuracy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 352);
  v3 = *(v1 + 384);
  v20 = *(v1 + 368);
  v21 = v3;
  v4 = *(v1 + 288);
  v5 = *(v1 + 320);
  v16 = *(v1 + 304);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 320);
  v8 = *(v1 + 352);
  v18 = *(v1 + 336);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 288);
  v15[0] = *(v1 + 272);
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 384);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 400);
  *(a1 + 128) = *(v1 + 400);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_23007BDFC(v15, v14);
}

void __swiftcall REMSuggestedAttributesTrainer.Result.CoreBehavior.init(listAccuracy:dueDayOfWeekAccuracy:alarmLocationAccuracy:minedRuleCount:filteredOutRulesCount:distinctListCount:trainingSetCount:validationSetCount:trainingDuration:topRules:)(ReminderKitInternal::REMSuggestedAttributesTrainer::Result::CoreBehavior *__return_ptr retstr, ReminderKitInternal::REMSuggestedAttributesAccuracy *listAccuracy, ReminderKitInternal::REMSuggestedAttributesAccuracy *dueDayOfWeekAccuracy, ReminderKitInternal::REMSuggestedAttributesAccuracy *alarmLocationAccuracy, Swift::Int minedRuleCount, Swift::Int filteredOutRulesCount, Swift::Int distinctListCount, Swift::Int trainingSetCount, Swift::Int validationSetCount, Swift::Double trainingDuration, Swift::OpaquePointer topRules)
{
  v11 = *&listAccuracy->metrics.precision;
  *&retstr->listAccuracy.metrics.typeIIErrors._rawValue = *&listAccuracy->metrics.typeIIErrors._rawValue;
  *&retstr->listAccuracy.metrics.precision = v11;
  v12 = *&listAccuracy->metrics.trueNegatives._rawValue;
  *&retstr->listAccuracy.metrics.confusionMatrix._rawValue = *&listAccuracy->metrics.confusionMatrix._rawValue;
  *&retstr->listAccuracy.metrics.trueNegatives._rawValue = v12;
  v13 = *&listAccuracy->metrics.recalls._rawValue;
  *&retstr->listAccuracy.metrics.falseNegatives._rawValue = *&listAccuracy->metrics.falseNegatives._rawValue;
  *&retstr->listAccuracy.metrics.recalls._rawValue = v13;
  v14 = *&listAccuracy->metrics.correctIndices._rawValue;
  *&retstr->listAccuracy.correctSample._rawValue = *&listAccuracy->correctSample._rawValue;
  *&retstr->listAccuracy.metrics.correctIndices._rawValue = v14;
  v15 = *&dueDayOfWeekAccuracy->metrics.falseNegatives._rawValue;
  *&retstr->dueDayOfWeekAccuracy.metrics.recalls._rawValue = *&dueDayOfWeekAccuracy->metrics.recalls._rawValue;
  v16 = *&dueDayOfWeekAccuracy->metrics.precision;
  *&retstr->dueDayOfWeekAccuracy.metrics.typeIIErrors._rawValue = *&dueDayOfWeekAccuracy->metrics.typeIIErrors._rawValue;
  *&retstr->dueDayOfWeekAccuracy.metrics.precision = v16;
  v17 = *&dueDayOfWeekAccuracy->correctSample._rawValue;
  *&retstr->dueDayOfWeekAccuracy.metrics.correctIndices._rawValue = *&dueDayOfWeekAccuracy->metrics.correctIndices._rawValue;
  v18 = *&dueDayOfWeekAccuracy->metrics.trueNegatives._rawValue;
  *&retstr->dueDayOfWeekAccuracy.metrics.confusionMatrix._rawValue = *&dueDayOfWeekAccuracy->metrics.confusionMatrix._rawValue;
  *&retstr->dueDayOfWeekAccuracy.metrics.trueNegatives._rawValue = v18;
  retstr->listAccuracy.metrics.indexedClasses._rawValue = listAccuracy->metrics.indexedClasses._rawValue;
  retstr->dueDayOfWeekAccuracy.metrics.indexedClasses._rawValue = dueDayOfWeekAccuracy->metrics.indexedClasses._rawValue;
  *&retstr->dueDayOfWeekAccuracy.metrics.falseNegatives._rawValue = v15;
  *&retstr->dueDayOfWeekAccuracy.correctSample._rawValue = v17;
  v19 = *&alarmLocationAccuracy->metrics.precision;
  *&retstr->alarmLocationAccuracy.metrics.typeIIErrors._rawValue = *&alarmLocationAccuracy->metrics.typeIIErrors._rawValue;
  *&retstr->alarmLocationAccuracy.metrics.precision = v19;
  rawValue = alarmLocationAccuracy->metrics.indexedClasses._rawValue;
  v21 = *&alarmLocationAccuracy->metrics.trueNegatives._rawValue;
  *&retstr->alarmLocationAccuracy.metrics.confusionMatrix._rawValue = *&alarmLocationAccuracy->metrics.confusionMatrix._rawValue;
  *&retstr->alarmLocationAccuracy.metrics.trueNegatives._rawValue = v21;
  v22 = *&alarmLocationAccuracy->metrics.recalls._rawValue;
  *&retstr->alarmLocationAccuracy.metrics.falseNegatives._rawValue = *&alarmLocationAccuracy->metrics.falseNegatives._rawValue;
  *&retstr->alarmLocationAccuracy.metrics.recalls._rawValue = v22;
  v23 = *&alarmLocationAccuracy->metrics.correctIndices._rawValue;
  *&retstr->alarmLocationAccuracy.correctSample._rawValue = *&alarmLocationAccuracy->correctSample._rawValue;
  *&retstr->alarmLocationAccuracy.metrics.correctIndices._rawValue = v23;
  retstr->alarmLocationAccuracy.metrics.indexedClasses._rawValue = rawValue;
  retstr->minedRuleCount = minedRuleCount;
  retstr->filteredOutRulesCount = filteredOutRulesCount;
  retstr->trainingSetCount = trainingSetCount;
  retstr->validationSetCount = validationSetCount;
  retstr->distinctListCount = distinctListCount;
  retstr->trainingDuration = trainingDuration;
  retstr->topRules = topRules;
}

uint64_t REMSuggestedAttributesTrainer.Result.CoreBehavior.droppingSensitiveFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v4 = *(v1 + 112);
  v37 = *(v1 + 96);
  v3 = v37;
  v38 = v4;
  v5 = *(v1 + 32);
  v36[0] = *(v1 + 16);
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v36[1] = v5;
  v36[2] = v8;
  v10 = *(v1 + 48);
  v11 = *(v1 + 64);
  v12 = *(v1 + 80);
  v36[3] = v9;
  v36[4] = v12;
  v13 = *(v1 + 152);
  v14 = *(v1 + 168);
  v15 = *(v1 + 200);
  v40[2] = *(v1 + 184);
  v40[3] = v15;
  v40[0] = v13;
  v40[1] = v14;
  v16 = *(v1 + 216);
  v17 = *(v1 + 248);
  v40[5] = *(v1 + 232);
  v40[6] = v17;
  v40[4] = v16;
  v19 = *(v1 + 288);
  v18 = *(v1 + 304);
  v20 = *(v1 + 336);
  v42[2] = *(v1 + 320);
  v42[3] = v20;
  v21 = *(v1 + 304);
  v22 = *(v1 + 320);
  v23 = *(v1 + 288);
  v42[0] = v19;
  v42[1] = v21;
  v24 = *(v1 + 368);
  v45 = *(v1 + 384);
  v25 = *(v1 + 336);
  v26 = *(v1 + 368);
  v43 = *(v1 + 352);
  v27 = v43;
  v44 = v26;
  *(a1 + 48) = v10;
  *(a1 + 64) = v11;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  v28 = *(v1 + 112);
  *(a1 + 96) = v3;
  *(a1 + 112) = v28;
  *(a1 + 80) = v2;
  *(a1 + 200) = *(v1 + 200);
  *(a1 + 184) = *(v1 + 184);
  *(a1 + 168) = *(v1 + 168);
  *(a1 + 152) = *(v1 + 152);
  *(a1 + 248) = *(v1 + 248);
  *(a1 + 232) = *(v1 + 232);
  *(a1 + 216) = *(v1 + 216);
  v39 = *(v1 + 128);
  v41 = *(v1 + 264);
  v46 = *(v1 + 400);
  *(a1 + 320) = v22;
  *(a1 + 336) = v25;
  *&v2 = *(v1 + 448);
  v29 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v29;
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 136) = v29;
  *(a1 + 144) = v29;
  *(a1 + 264) = *(v1 + 264);
  *(a1 + 272) = v29;
  *(a1 + 280) = v29;
  *(a1 + 288) = v23;
  *(a1 + 304) = v18;
  v30 = *(v1 + 384);
  v32 = *(v1 + 400);
  v31 = *(v1 + 408);
  *(a1 + 368) = v24;
  *(a1 + 384) = v30;
  *(a1 + 352) = v27;
  *(a1 + 400) = v32;
  *(a1 + 408) = v31;
  v33 = *(v1 + 432);
  *(a1 + 416) = *(v1 + 416);
  *(a1 + 432) = v33;
  *(a1 + 448) = v2;
  *(a1 + 456) = v29;
  sub_23007B300(v36, v35);
  sub_23007B300(v40, v35);
  return sub_23007B300(v42, v35);
}

unint64_t sub_23021E868(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 0x73656C7552706F74;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x756363417473696CLL;
    v2 = 0xD000000000000015;
    v3 = 0x6C755264656E696DLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23021E9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230229024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23021EA14(uint64_t a1)
{
  v2 = sub_230227A8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23021EA50(uint64_t a1)
{
  v2 = sub_230227A8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesTrainer.Result.CoreBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17668);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = v1[7];
  v73 = v1[6];
  v74 = v7;
  v8 = v1[3];
  v69 = v1[2];
  v70 = v8;
  v9 = v1[5];
  v71 = v1[4];
  v72 = v9;
  v10 = v1[1];
  v67 = *v1;
  v68 = v10;
  v81 = *(v1 + 216);
  v82 = *(v1 + 232);
  v83 = *(v1 + 248);
  v11 = *(v1 + 152);
  v78 = *(v1 + 168);
  v79 = *(v1 + 184);
  v80 = *(v1 + 200);
  v76 = *(v1 + 136);
  v77 = v11;
  v12 = v1[21];
  v90 = v1[22];
  v13 = v1[24];
  v91 = v1[23];
  v92 = v13;
  v14 = v1[17];
  v86 = v1[18];
  v15 = v1[20];
  v87 = v1[19];
  v88 = v15;
  v89 = v12;
  v75 = *(v1 + 16);
  v84 = *(v1 + 33);
  v16 = *(v1 + 51);
  v93 = *(v1 + 50);
  v85 = v14;
  v17 = *(v1 + 53);
  v26 = *(v1 + 52);
  v27 = v16;
  v18 = *(v1 + 55);
  v24 = *(v1 + 54);
  v25 = v17;
  v22 = *(v1 + 57);
  v23 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23007BDFC(&v67, &v58);
  sub_230227A8C();
  sub_230311448();
  v64 = v73;
  v65 = v74;
  v66 = v75;
  v60 = v69;
  v61 = v70;
  v62 = v71;
  v63 = v72;
  v58 = v67;
  v59 = v68;
  v57 = 0;
  sub_230227928();
  v19 = v28;
  sub_230310DF8();
  v55[6] = v64;
  v55[7] = v65;
  v56 = v66;
  v55[2] = v60;
  v55[3] = v61;
  v55[4] = v62;
  v55[5] = v63;
  v55[0] = v58;
  v55[1] = v59;
  sub_23007BE34(v55);
  if (!v19)
  {
    v52 = v82;
    v53 = v83;
    v54 = v84;
    v48 = v78;
    v49 = v79;
    v50 = v80;
    v51 = v81;
    v46 = v76;
    v47 = v77;
    v45 = 1;
    sub_23007BDFC(&v76, v43);
    sub_230310DF8();
    v43[6] = v52;
    v43[7] = v53;
    v44 = v54;
    v43[2] = v48;
    v43[3] = v49;
    v43[4] = v50;
    v43[5] = v51;
    v43[0] = v46;
    v43[1] = v47;
    sub_23007BE34(v43);
    v40 = v91;
    v41 = v92;
    v42 = v93;
    v36 = v87;
    v37 = v88;
    v38 = v89;
    v39 = v90;
    v34 = v85;
    v35 = v86;
    v33 = 2;
    sub_23007BDFC(&v85, v31);
    sub_230310DF8();
    v31[6] = v40;
    v31[7] = v41;
    v32 = v42;
    v31[2] = v36;
    v31[3] = v37;
    v31[4] = v38;
    v31[5] = v39;
    v31[0] = v34;
    v31[1] = v35;
    sub_23007BE34(v31);
    LOBYTE(v30) = 3;
    sub_230310DD8();
    LOBYTE(v30) = 4;
    sub_230310DD8();
    LOBYTE(v30) = 5;
    sub_230310DD8();
    LOBYTE(v30) = 6;
    sub_230310DD8();
    LOBYTE(v30) = 7;
    sub_230310DD8();
    LOBYTE(v30) = 8;
    sub_230310DC8();
    v30 = v22;
    v29 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_230227AE0();
    sub_230310DF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t REMSuggestedAttributesTrainer.Result.CoreBehavior.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17678);
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230227A8C();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = a2;
  v21 = v5;
  v54 = 0;
  sub_23022797C();
  sub_230310CE8();
  v64[6] = v61;
  v64[7] = v62;
  *&v64[8] = v63;
  v64[2] = v57;
  v64[3] = v58;
  v64[5] = v60;
  v64[4] = v59;
  v64[1] = v56;
  v64[0] = v55;
  v44 = 1;
  sub_230310CE8();
  *(&v64[13] + 8) = v50;
  *(&v64[14] + 8) = v51;
  *(&v64[15] + 8) = v52;
  *(&v64[9] + 8) = v46;
  *(&v64[10] + 8) = v47;
  *(&v64[11] + 8) = v48;
  *(&v64[12] + 8) = v49;
  *(&v64[16] + 1) = v53;
  *(&v64[8] + 8) = v45;
  v34 = 2;
  sub_230310CE8();
  v64[23] = v41;
  v64[24] = v42;
  *&v64[25] = v43;
  v64[19] = v37;
  v64[20] = v38;
  v64[22] = v40;
  v64[21] = v39;
  v64[18] = v36;
  v64[17] = v35;
  v24[0] = 3;
  v8 = sub_230310CC8();
  v24[0] = 4;
  v9 = sub_230310CC8();
  v24[0] = 5;
  v19 = sub_230310CC8();
  v24[0] = 6;
  v18 = sub_230310CC8();
  v24[0] = 7;
  v17 = sub_230310CC8();
  v24[0] = 8;
  sub_230310CB8();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  v32 = 9;
  sub_230227B5C();
  sub_230310CE8();
  (*(v21 + 8))(v7, v22);
  v12 = v33;
  memcpy(v23, v64, 0x198uLL);
  v23[51] = v8;
  v23[52] = v9;
  v14 = v18;
  v13 = v19;
  v23[53] = v19;
  v23[54] = v18;
  v15 = v17;
  v23[55] = v17;
  v23[56] = v11;
  v23[57] = v33;
  memcpy(v20, v23, 0x1D0uLL);
  sub_230227BD8(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  memcpy(v24, v64, sizeof(v24));
  v25 = v8;
  v26 = v9;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v11;
  v31 = v12;
  return sub_230227C10(v24);
}

void __swiftcall REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed.init(clusterLabels:clusterVariances:clusterSizes:mse:trainingDuration:)(ReminderKitInternal::REMSuggestedAttributesTrainer::Result::IntentionalWordPrescribed *__return_ptr retstr, Swift::OpaquePointer clusterLabels, Swift::OpaquePointer clusterVariances, Swift::OpaquePointer clusterSizes, Swift::Double mse, Swift::Double trainingDuration)
{
  retstr->clusterVariances = clusterVariances;
  retstr->clusterLabels = clusterLabels;
  retstr->clusterSizes = clusterSizes;
  retstr->mse = mse;
  retstr->trainingDuration = trainingDuration;
}

uint64_t REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed.droppingSensitiveFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
}

unint64_t sub_23021F7A8()
{
  v1 = *v0;
  v2 = 0x4C72657473756C63;
  v3 = 0x5372657473756C63;
  v4 = 6648685;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23021F858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230229360(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23021F880(uint64_t a1)
{
  v2 = sub_230227C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23021F8BC(uint64_t a1)
{
  v2 = sub_230227C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17680);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230227C40();

  sub_230311448();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17690);
  sub_230227C94();
  sub_230310DF8();
  if (v2)
  {
  }

  else
  {
    v10 = v13;

    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_230227AE0();
    sub_230310DF8();
    v16 = v10;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB142D8);
    sub_230227D10();
    sub_230310DF8();
    LOBYTE(v16) = 3;
    sub_230310DC8();
    LOBYTE(v16) = 4;
    sub_230310DC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB176A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230227C40();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17690);
  v20 = 0;
  sub_230227D8C();
  sub_230310CE8();
  v9 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  v20 = 1;
  sub_230227B5C();
  sub_230310CE8();
  v19 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB142D8);
  v20 = 2;
  sub_230227E08();
  sub_230310CE8();
  v18 = v21;
  LOBYTE(v21) = 3;
  sub_230310CB8();
  v11 = v10;
  LOBYTE(v21) = 4;
  sub_230310CB8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v16 = v18;
  v15 = v19;
  *a2 = v9;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v11;
  a2[4] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void __swiftcall REMSuggestedAttributesTrainer.Result.IntentionalWordTuned.init(bestK:bestClusterLabels:minK:maxK:clusterVariances:clusterSizes:mse:trainingDuration:)(ReminderKitInternal::REMSuggestedAttributesTrainer::Result::IntentionalWordTuned *__return_ptr retstr, Swift::Int bestK, Swift::OpaquePointer bestClusterLabels, Swift::Int minK, Swift::Int maxK, Swift::OpaquePointer clusterVariances, Swift::OpaquePointer clusterSizes, Swift::OpaquePointer mse, Swift::Double trainingDuration)
{
  retstr->bestK = bestK;
  retstr->bestClusterLabels = bestClusterLabels;
  retstr->trainingDuration = trainingDuration;
  retstr->clusterVariances = clusterVariances;
  retstr->clusterSizes = clusterSizes;
  retstr->mse = mse;
  retstr->minK = minK;
  retstr->maxK = maxK;
}

uint64_t REMSuggestedAttributesTrainer.Result.IntentionalWordTuned.droppingSensitiveFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 56);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 56) = v6;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(v1 + 40);
}

unint64_t sub_230220000()
{
  v1 = *v0;
  v2 = 0x4B74736562;
  v3 = 1266180461;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 6648685;
  if (v1 != 4)
  {
    v4 = 1265527149;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x5372657473756C63;
  if (v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_2302200F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230229530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230220118(uint64_t a1)
{
  v2 = sub_230227E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230220154(uint64_t a1)
{
  v2 = sub_230227E84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesTrainer.Result.IntentionalWordTuned.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB176C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v21 = v1[2];
  v22 = v8;
  v10 = v1[5];
  v19 = v1[4];
  v20 = v9;
  v18[1] = v10;
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_230227E84();
  sub_230311448();
  LOBYTE(v24) = 0;
  sub_230310DD8();
  if (!v2)
  {
    v15 = v20;
    v16 = v21;
    v24 = v22;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_230227AE0();
    sub_230310DF8();
    v24 = v16;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB176D0);
    sub_230227ED8(&qword_27DB176D8, sub_230227C94);
    sub_230310DF8();
    v24 = v15;
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB176E0);
    sub_230227F50(&qword_27DB176E8, sub_230227D10);
    sub_230310DF8();
    v24 = v19;
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17690);
    sub_230227C94();
    sub_230310DF8();
    LOBYTE(v24) = 5;
    sub_230310DD8();
    LOBYTE(v24) = 6;
    sub_230310DD8();
    LOBYTE(v24) = 7;
    sub_230310DC8();
  }

  return (*(v5 + 8))(v7, v14);
}

uint64_t REMSuggestedAttributesTrainer.Result.IntentionalWordTuned.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB176F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230227E84();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30[0]) = 0;
  v9 = sub_230310CC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  LOBYTE(v26) = 1;
  sub_230227B5C();
  sub_230310CE8();
  v25 = v30[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB176D0);
  LOBYTE(v26) = 2;
  sub_230227ED8(&qword_27DB176F8, sub_230227D8C);
  sub_230310CE8();
  v24 = v30[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB176E0);
  LOBYTE(v26) = 3;
  sub_230227F50(&qword_27DB17700, sub_230227E08);
  sub_230310CE8();
  v23 = v30[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17690);
  LOBYTE(v26) = 4;
  sub_230227D8C();
  sub_230310CE8();
  v22 = v30[0];
  LOBYTE(v30[0]) = 5;
  v21 = sub_230310CC8();
  LOBYTE(v30[0]) = 6;
  v10 = sub_230310CC8();
  v31 = 7;
  sub_230310CB8();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v14 = v24;
  v13 = v25;
  *&v26 = v9;
  *(&v26 + 1) = v25;
  v15 = v23;
  *&v27 = v24;
  *(&v27 + 1) = v23;
  v16 = v21;
  *&v28 = v22;
  *(&v28 + 1) = v21;
  *&v29 = v10;
  *(&v29 + 1) = v12;
  v17 = v27;
  *a2 = v26;
  a2[1] = v17;
  v18 = v29;
  a2[2] = v28;
  a2[3] = v18;
  sub_230227FC8(&v26, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30[0] = v9;
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v15;
  v30[4] = v22;
  v30[5] = v16;
  v30[6] = v10;
  v30[7] = v12;
  return sub_230228000(v30);
}

uint64_t REMSuggestedAttributesTrainer.Result.IntentionalWord.droppingSensitiveFields.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v1[8])
  {
    v8 = 1;
  }

  else
  {
    v10 = v1[7];
    *(a1 + 40) = *(v1 + 5);
    *(a1 + 56) = v10;

    v8 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 64) = v8;
  return result;
}

uint64_t REMSuggestedAttributesTrainer.Result.IntentionalWord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17708);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230228030();
  sub_230311428();
  if (!v2)
  {
    v23 = 0;
    sub_230228084();
    sub_230310CE8();
    if (v24)
    {
      v10 = 1;
      v22 = 1;
      sub_2302280D8();
      sub_230310CE8();
      (*(v6 + 8))(v8, v5);
      v11 = v14;
      v12 = v15;
      v13 = v16;
      v21 = 1;
    }

    else
    {
      v22 = 1;
      sub_23022812C();
      sub_230310CE8();
      (*(v6 + 8))(v8, v5);
      v10 = 0;
      v11 = v14;
      v12 = v15;
      v13 = v16;
      v19 = v17;
      v20 = v18;
      v21 = 0;
    }

    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 40) = v19;
    *(a2 + 56) = v20;
    *(a2 + 64) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMSuggestedAttributesTrainer.Result.IntentionalWord.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17730);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = v3[1];
  v15 = *v3;
  v16 = v9;
  v17 = v3[2];
  v11 = v3[3];
  v10 = v3[4];
  v12 = *(v3 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230228030();
  sub_230311448();
  if (v12)
  {
    LOBYTE(v18) = 1;
    v25 = 0;
    sub_230228180();
    sub_230310DF8();
    if (!v2)
    {
      v18 = v15;
      v19 = v16;
      v20 = v17;
      v21 = v11;
      v22 = v10;
      v25 = 1;
      sub_2302281D4();
LABEL_6:
      sub_230310DF8();
    }
  }

  else
  {
    LOBYTE(v18) = 0;
    v25 = 0;
    sub_230228180();
    sub_230310DF8();
    if (!v2)
    {
      v18 = v15;
      v19 = v16;
      v20 = v17;
      v21 = v11;
      v22 = v10;
      v23 = *(v3 + 5);
      v24 = v3[7];
      v25 = 1;
      sub_230228228();
      goto LABEL_6;
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t REMSuggestedAttributesTrainer.Result.embedding.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26[0] = v3;
  *(v26 + 9) = *(v1 + 153);
  v4 = v1[3];
  v5 = v1[5];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v23 = v1[6];
  v9 = v23;
  v24 = v8;
  v10 = v1[1];
  v18[0] = *v1;
  v18[1] = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v19 = v1[2];
  v14 = v19;
  v20 = v11;
  v15 = v1[9];
  a1[8] = v25;
  a1[9] = v15;
  *(a1 + 153) = *(v1 + 153);
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v9;
  a1[7] = v2;
  *a1 = v13;
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = v4;
  return sub_230055F74(v18, &v17, &qword_27DB17750);
}

uint64_t REMSuggestedAttributesTrainer.Result.anchoredBubble.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v7[0] = v1[11];
  v7[1] = v2;
  v8[0] = v1[13];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 217);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_230055F74(v7, &v6, &qword_27DB17758);
}

uint64_t REMSuggestedAttributesTrainer.Result.corebehavior.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 240), 0x1D1uLL);
  memcpy(a1, (v1 + 240), 0x1D1uLL);
  return sub_230055F74(__dst, v4, &qword_27DB17760);
}

uint64_t REMSuggestedAttributesTrainer.Result.intentionalWord.getter@<X0>(uint64_t a1@<X8>)
{
  v11 = *(v1 + 776);
  v3 = *(v1 + 760);
  v9 = *(v1 + 744);
  v2 = v9;
  v10 = v3;
  v4 = *(v1 + 728);
  v8[0] = *(v1 + 712);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 64) = v11;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_230055F74(v8, v7, &qword_27DB17768);
}

__n128 REMSuggestedAttributesTrainer.Result.init(embedding:anchoredBubble:corebehavior:intentionalWord:trainingDuration:)@<Q0>(void *__src@<X2>, _OWORD *a2@<X0>, _OWORD *a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = a2[9];
  *(a5 + 128) = a2[8];
  *(a5 + 144) = v9;
  *(a5 + 153) = *(a2 + 153);
  v10 = a2[5];
  *(a5 + 64) = a2[4];
  *(a5 + 80) = v10;
  v11 = a2[7];
  *(a5 + 96) = a2[6];
  *(a5 + 112) = v11;
  v12 = a2[1];
  *a5 = *a2;
  *(a5 + 16) = v12;
  v13 = a2[3];
  *(a5 + 32) = a2[2];
  *(a5 + 48) = v13;
  v14 = a3[1];
  *(a5 + 176) = *a3;
  *(a5 + 192) = v14;
  *(a5 + 208) = a3[2];
  *(a5 + 217) = *(a3 + 41);
  memcpy((a5 + 240), __src, 0x1D1uLL);
  v15 = *(a4 + 48);
  *(a5 + 744) = *(a4 + 32);
  *(a5 + 760) = v15;
  *(a5 + 776) = *(a4 + 64);
  result = *(a4 + 16);
  *(a5 + 712) = *a4;
  *(a5 + 728) = result;
  *(a5 + 784) = a6;
  return result;
}

uint64_t REMSuggestedAttributesTrainer.Result.shortDescription.getter()
{
  v1 = *(v0 + 784);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14718);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D839F8];
  *(v2 + 16) = xmmword_230315CE0;
  v4 = MEMORY[0x277D83A80];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  v5 = sub_23030F918();
  MEMORY[0x231911790](v5);

  return 14948;
}

double REMSuggestedAttributesTrainer.Result.droppingSensitiveFields.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 22);
  v53 = *(v1 + 184);
  v54 = *(v1 + 200);
  v5 = *(v1 + 27);
  v6 = *(v1 + 232);
  v51 = *(v1 + 89);
  v52 = *(v1 + 28);
  v7 = *(v1 + 90);
  v8 = *(v1 + 93);
  v50 = *(v1 + 94);
  v9 = *(v1 + 95);
  v10 = *(v1 + 777);
  v11 = *(v1 + 98);
  v12 = v1[9];
  v82[8] = v1[8];
  v83[0] = v12;
  *(v83 + 9) = *(v1 + 153);
  v13 = v1[5];
  v82[4] = v1[4];
  v82[5] = v13;
  v14 = v1[6];
  v82[7] = v1[7];
  v82[6] = v14;
  v15 = v1[1];
  v82[0] = *v1;
  v82[1] = v15;
  v16 = v1[2];
  v82[3] = v1[3];
  v82[2] = v16;
  if (sub_23022827C(v82) == 1)
  {
    nullsub_1(v82);
    v17 = v1[7];
    v18 = v1[9];
    *v81 = v1[8];
    *&v81[16] = v18;
    *&v81[25] = *(v1 + 153);
    v19 = v1[3];
    v20 = v1[5];
    v77 = v1[4];
    v78 = v20;
    v22 = v1[5];
    v21 = v1[6];
    v23 = v21;
    v80 = v1[7];
    v79 = v21;
    v24 = v1[1];
    v73 = *v1;
    v74 = v24;
    v25 = v1[2];
    v27 = *v1;
    v26 = v1[1];
    v28 = v25;
    v76 = v1[3];
    v75 = v25;
    v29 = v1[9];
    __dst[8] = *v81;
    __dst[9] = v29;
    *(&__dst[9] + 9) = *(v1 + 153);
    __dst[4] = v77;
    __dst[5] = v22;
    __dst[7] = v17;
    __dst[6] = v23;
    __dst[0] = v27;
    __dst[1] = v26;
    __dst[3] = v19;
    __dst[2] = v28;
    nullsub_1(__dst);
  }

  else
  {
    nullsub_1(v82);
    v30 = v1[9];
    __dst[8] = v1[8];
    __dst[9] = v30;
    *(&__dst[9] + 9) = *(v1 + 153);
    v31 = v1[5];
    __dst[4] = v1[4];
    __dst[5] = v31;
    v32 = v1[6];
    __dst[7] = v1[7];
    __dst[6] = v32;
    v33 = v1[1];
    __dst[0] = *v1;
    __dst[1] = v33;
    v34 = v1[2];
    __dst[3] = v1[3];
    __dst[2] = v34;
    v35 = nullsub_1(__dst);
    v36 = *(v35 + 152);
    v37 = *(v35 + 160);
    *&v73 = MEMORY[0x277D84F90];
    *(&v73 + 1) = MEMORY[0x277D84F90];
    memmove(&v74, (v35 + 16), 0x78uLL);
    *&v81[8] = *(v35 + 136);
    *&v81[24] = v36;
    *&v81[32] = v37;
    sub_230228294(&v73);
    sub_23007B300(v35 + 16, v61);
  }

  v71 = *v81;
  v72[0] = *&v81[16];
  *(v72 + 9) = *&v81[25];
  v67 = v77;
  v68 = v78;
  v70 = v80;
  v69 = v79;
  v63 = v73;
  v64 = v74;
  v66 = v76;
  v65 = v75;
  if (v6)
  {
  }

  else
  {
    v6 = 0;
  }

  memcpy(__dst, v2 + 15, 0x1D1uLL);
  if (sub_230228284(__dst) == 1)
  {
    nullsub_1(__dst);
    memcpy(__src, v2 + 15, sizeof(__src));
    nullsub_1(__src);
    memcpy(v61, v2 + 15, 0x1D1uLL);
  }

  else
  {
    nullsub_1(__dst);
    memcpy(v55, v2 + 15, sizeof(v55));
    v38 = nullsub_1(v55);
    memcpy(v61, v38, 0x1D0uLL);
    REMSuggestedAttributesTrainer.Result.CoreBehavior.droppingSensitiveFields.getter(__src);
    sub_23022828C(__src);
    memcpy(v61, __src, 0x1D1uLL);
  }

  v39 = (v2 + 728);
  v40 = (v2 + 48);
  v41 = v51;
  if (v10)
  {
    v59 = *v39;
    v57 = *v40;
    v58 = *(v2 + 776);

    v42 = v50;
  }

  else
  {
    *&__src[16] = *v39;
    v43 = *v40;
    __src[64] = *(v2 + 776);
    *__src = v51;
    *&__src[8] = v7;
    *&__src[32] = v8;
    *&__src[40] = v50;
    *&__src[56] = v43;
    *&__src[48] = v9;
    REMSuggestedAttributesTrainer.Result.IntentionalWord.droppingSensitiveFields.getter(v55);
    v10 = 0;
    v41 = *v55;
    v7 = *&v55[8];
    v59 = *&v55[16];
    v8 = *&v55[32];
    v42 = *&v55[40];
    v9 = *&v55[48];
    v57 = *&v55[56];
    v58 = v55[64];
    v56 = 0;
  }

  v44 = v72[0];
  *(a1 + 128) = v71;
  *(a1 + 144) = v44;
  *(a1 + 153) = *(v72 + 9);
  v45 = v68;
  *(a1 + 64) = v67;
  *(a1 + 80) = v45;
  v46 = v70;
  *(a1 + 96) = v69;
  *(a1 + 112) = v46;
  v47 = v64;
  *a1 = v63;
  *(a1 + 16) = v47;
  v48 = v66;
  *(a1 + 32) = v65;
  *(a1 + 48) = v48;
  *(a1 + 176) = v4;
  *(a1 + 200) = v54;
  *(a1 + 184) = v53;
  *(a1 + 216) = v5;
  *(a1 + 224) = v52;
  *(a1 + 232) = v6;
  memcpy((a1 + 240), v61, 0x1D1uLL);
  *(a1 + 712) = v41;
  *(a1 + 720) = v7;
  result = *&v59;
  *(a1 + 728) = v59;
  *(a1 + 744) = v8;
  *(a1 + 752) = v42;
  *(a1 + 760) = v9;
  *(a1 + 768) = v57;
  *(a1 + 776) = v58;
  *(a1 + 777) = v10;
  *(a1 + 784) = v11;
  return result;
}

uint64_t sub_230221880()
{
  v1 = *v0;
  v2 = 0x6E69646465626D65;
  v3 = 0x6168656265726F63;
  v4 = 0x6F69746E65746E69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465726F68636E61;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_230221944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2302297D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23022196C(uint64_t a1)
{
  v2 = sub_23022829C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302219A8(uint64_t a1)
{
  v2 = sub_23022829C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesTrainer.Result.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17770);
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v19 - v4;
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[6];
  v58 = v1[7];
  v59 = v6;
  v60[0] = v7;
  *(v60 + 9) = *(v1 + 153);
  v9 = v1[5];
  v55 = v1[4];
  v56 = v9;
  v57 = v8;
  v10 = v1[1];
  v51 = *v1;
  v52 = v10;
  v11 = v1[3];
  v53 = v1[2];
  v54 = v11;
  v12 = v1[12];
  v61 = v1[11];
  v62 = v12;
  v63[0] = v1[13];
  *(v63 + 9) = *(v1 + 217);
  memcpy(v64, v1 + 15, 0x1D1uLL);
  v13 = *(v1 + 760);
  v67 = *(v1 + 744);
  v68 = v13;
  v69 = *(v1 + 388);
  v14 = *(v1 + 728);
  v65 = *(v1 + 712);
  v66 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230055F74(&v51, v31, &qword_27DB17750);
  sub_23022829C();
  v15 = v3;
  sub_230311448();
  v48 = v58;
  v49 = v59;
  v50[0] = v60[0];
  *(v50 + 9) = *(v60 + 9);
  v45 = v55;
  v46 = v56;
  v47 = v57;
  v41 = v51;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17750);
  sub_2302282F0();
  v16 = v19[1];
  sub_230310DF8();
  if (v16)
  {
    v31[7] = v48;
    v31[8] = v49;
    v31[9] = v50[0];
    *(&v31[9] + 9) = *(v50 + 9);
    v31[4] = v45;
    v31[5] = v46;
    v31[6] = v47;
    v31[0] = v41;
    v31[1] = v42;
    v31[2] = v43;
    v31[3] = v44;
    sub_230061918(v31, &qword_27DB17750);
    return (*(v20 + 8))(v5, v3);
  }

  else
  {
    v38[7] = v48;
    v38[8] = v49;
    *v39 = v50[0];
    *&v39[9] = *(v50 + 9);
    v38[4] = v45;
    v38[5] = v46;
    v38[6] = v47;
    v38[0] = v41;
    v38[1] = v42;
    v38[2] = v43;
    v38[3] = v44;
    sub_230061918(v38, &qword_27DB17750);
    v35 = v61;
    v36 = v62;
    v37[0] = v63[0];
    *(v37 + 9) = *(v63 + 9);
    v34 = 1;
    sub_230055F74(&v61, v31, &qword_27DB17758);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17758);
    sub_230228440();
    sub_230310DF8();
    v32[0] = v35;
    v32[1] = v36;
    *v33 = v37[0];
    *&v33[9] = *(v37 + 9);
    sub_230061918(v32, &qword_27DB17758);
    memcpy(v31, v64, 0x1D1uLL);
    v30[471] = 2;
    sub_230055F74(v64, v30, &qword_27DB17760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17760);
    sub_230228590();
    sub_230310DF8();
    v18 = v20;
    memcpy(v30, v31, 0x1D1uLL);
    sub_230061918(v30, &qword_27DB17760);
    v28 = v68;
    v29 = v69;
    v26 = v66;
    v27 = v67;
    v25 = v65;
    v24 = 3;
    sub_230055F74(&v65, v22, &qword_27DB17768);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17768);
    sub_2302286E0();
    sub_230310DF8();
    v22[2] = v27;
    v22[3] = v28;
    v23 = v29;
    v22[0] = v25;
    v22[1] = v26;
    sub_230061918(v22, &qword_27DB17768);
    v21 = 4;
    sub_230310DC8();
    return (*(v18 + 8))(v5, v15);
  }
}

uint64_t REMSuggestedAttributesTrainer.Result.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB177E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = a1[3];
  v14 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_23022829C();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17750);
  v30 = 0;
  sub_230228830();
  sub_230310CE8();
  v41[8] = v39;
  v41[9] = v40[0];
  *(&v41[9] + 9) = *(v40 + 9);
  v41[4] = v35;
  v41[5] = v36;
  v41[7] = v38;
  v41[6] = v37;
  v41[0] = v31;
  v41[1] = v32;
  v41[3] = v34;
  v41[2] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17758);
  v26[471] = 1;
  sub_2302288D8();
  sub_230310CE8();
  v41[11] = v27;
  v41[12] = v28;
  v41[13] = *v29;
  *(&v41[13] + 9) = *&v29[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17760);
  v25 = 2;
  sub_230228980();
  sub_230310CE8();
  memcpy(&v41[15], v26, 0x1D1uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17768);
  v19 = 3;
  sub_230228A28();
  sub_230310CE8();
  *(&v41[46] + 8) = v22;
  *(&v41[47] + 8) = v23;
  *(&v41[44] + 8) = v20;
  *(&v41[45] + 8) = v21;
  WORD4(v41[48]) = v24;
  v18 = 4;
  sub_230310CB8();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  memcpy(v15, v41, 0x310uLL);
  v15[98] = v11;
  memcpy(v13, v15, 0x318uLL);
  sub_23021D270(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(v14);
  memcpy(v16, v41, sizeof(v16));
  v17 = v11;
  return sub_230228AD0(v16);
}

ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::CoreBehavior::CodingKeys_optional __swiftcall REMSuggestedAttributesTrainer.Parameters.CoreBehavior.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::CoreBehavior::CodingKeys_optional __swiftcall REMSuggestedAttributesTrainer.Parameters.CoreBehavior.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = REMSuggestedAttributesTrainer.Parameters.CoreBehavior.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_230222644()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000018;
    if (v1 == 6)
    {
      v5 = 0xD000000000000014;
    }

    v6 = 0xD000000000000019;
    if (v1 != 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656C62616E457369;
    v3 = 0x656D7473756A6461;
    if (v1 != 2)
    {
      v3 = 0x6E656469666E6F63;
    }

    if (*v0)
    {
      v2 = 0x74726F70707573;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

void sub_23022278C(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x800000023033F740;
    v9 = 0xD000000000000018;
    if (v2 == 6)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v8 = 0x800000023033F760;
    }

    v10 = 0x800000023033F700;
    v11 = 0xD000000000000019;
    if (v2 != 4)
    {
      v11 = 0xD000000000000014;
      v10 = 0x800000023033F720;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v8;
    }

    *a1 = v12;
    a1[1] = v13;
  }

  else
  {
    v3 = 0xE900000000000064;
    v4 = 0x656C62616E457369;
    v5 = 0xEA0000000000746ELL;
    v6 = 0x656D7473756A6461;
    if (v2 != 2)
    {
      v6 = 0x6E656469666E6F63;
      v5 = 0xEA00000000006563;
    }

    if (*v1)
    {
      v4 = 0x74726F70707573;
      v3 = 0xE700000000000000;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::CoreBehavior::CodingKeys_optional sub_2302228A8@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = REMSuggestedAttributesTrainer.Parameters.CoreBehavior.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2302228F0(uint64_t a1)
{
  v2 = sub_230228B00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23022292C(uint64_t a1)
{
  v2 = sub_230228B00();

  return MEMORY[0x2821FE720](a1, v2);
}

void __swiftcall REMSuggestedAttributesTrainer.Parameters.CoreBehavior.init(isEnabled:support:adjustment:confidence:validationRelativeSupport:validationConfidence:feedbackResetVersion:feedbackExpirationWindow:)(ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::CoreBehavior *__return_ptr retstr, Swift::Bool_optional isEnabled, Swift::UInt_optional support, Swift::UInt_optional adjustment, Swift::Double_optional confidence, Swift::Double_optional validationRelativeSupport, Swift::Double_optional validationConfidence, Swift::UInt_optional feedbackResetVersion, Swift::Double_optional feedbackExpirationWindow)
{
  v45 = *&validationConfidence.is_nil;
  is_nil = validationRelativeSupport.is_nil;
  v10 = *&confidence.is_nil;
  v47 = adjustment.is_nil;
  value = adjustment.value;
  v49 = support.is_nil;
  v50 = support.value;
  v12 = isEnabled.value == 2;
  if (qword_27DB13C98 != -1)
  {
    v44 = isEnabled.value;
    swift_once();
    isEnabled.value = v44;
  }

  v13 = v12 || isEnabled.value;
  v14 = sub_23030EF48();
  __swift_project_value_buffer(v14, qword_27DB17608);
  v15 = sub_23030EF38();
  v16 = sub_2303102A8();
  v46 = v13;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v51 = v18;
    *v17 = 136446210;
    if (v13)
    {
      v19 = 5457241;
    }

    else
    {
      v19 = 20302;
    }

    if (v13)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = 0xE200000000000000;
    }

    v21 = sub_23004E30C(v19, v20, &v51);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_230044000, v15, v16, "CoreBehavior model enabled: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x231914180](v18, -1, -1);
    MEMORY[0x231914180](v17, -1, -1);
  }

  if (is_nil)
  {
    v22 = 0.5;
  }

  else
  {
    v22 = v10;
  }

  v23 = sub_23030EF38();
  v24 = sub_2303102A8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134349056;
    *(v25 + 4) = v22;
    _os_log_impl(&dword_230044000, v23, v24, "CoreBehavior model confidence threshold: %{public}f", v25, 0xCu);
    MEMORY[0x231914180](v25, -1, -1);
  }

  if (feedbackResetVersion.value)
  {
    v26 = 0.01;
  }

  else
  {
    v26 = v45;
  }

  v27 = sub_23030EF38();
  v28 = sub_2303102A8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134349056;
    *(v29 + 4) = v26;
    _os_log_impl(&dword_230044000, v27, v28, "CoreBehavior model validation relative support threshold: %{public}f", v29, 0xCu);
    MEMORY[0x231914180](v29, -1, -1);
  }

  if (v52)
  {
    v30 = 0.3;
  }

  else
  {
    v30 = *&feedbackResetVersion.is_nil;
  }

  v31 = sub_23030EF38();
  v32 = sub_2303102A8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134349056;
    *(v33 + 4) = v30;
    _os_log_impl(&dword_230044000, v31, v32, "CoreBehavior model validation confidence threshold: %{public}f", v33, 0xCu);
    MEMORY[0x231914180](v33, -1, -1);
  }

  if (v54)
  {
    v34 = 0;
  }

  else
  {
    v34 = v53;
  }

  v35 = sub_23030EF38();
  v36 = sub_2303102A8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134349056;
    *(v37 + 4) = v34;
    _os_log_impl(&dword_230044000, v35, v36, "CoreBehavior model feedbackResetVersion: %{public}lu", v37, 0xCu);
    MEMORY[0x231914180](v37, -1, -1);
  }

  if (v56)
  {
    v38 = 2592000.0;
  }

  else
  {
    v38 = v55;
  }

  v39 = sub_23030EF38();
  v40 = sub_2303102A8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134349056;
    *(v41 + 4) = v38;
    _os_log_impl(&dword_230044000, v39, v40, "CoreBehavior model feedbackExpirationWindow: %{public}f", v41, 0xCu);
    MEMORY[0x231914180](v41, -1, -1);
  }

  retstr->isEnabled = v46;
  v42 = value;
  if (v47)
  {
    v42 = 0;
  }

  v43 = 6;
  if (!v49)
  {
    v43 = v50;
  }

  retstr->support = v43;
  retstr->adjustment = v42;
  retstr->confidence = v22;
  retstr->validationRelativeSupport = v26;
  retstr->validationConfidence = v30;
  retstr->feedbackResetVersion = v34;
  retstr->feedbackExpirationWindow = v38;
}

uint64_t REMSuggestedAttributesTrainer.Parameters.CoreBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17808);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 8);
  v10[1] = *(v1 + 16);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230228B00();
  sub_230311448();
  v18 = 0;
  v8 = v10[3];
  sub_230310DB8();
  if (!v8)
  {
    v17 = 1;
    sub_230310DE8();
    v16 = 2;
    sub_230310DE8();
    v15 = 3;
    sub_230310DC8();
    v14 = 4;
    sub_230310DC8();
    v13 = 5;
    sub_230310DC8();
    v12 = 6;
    sub_230310DE8();
    v11 = 7;
    sub_230310DC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t REMSuggestedAttributesTrainer.Parameters.CoreBehavior.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17818);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230228B00();
  sub_230311428();
  if (!v2)
  {
    v30 = 0;
    v9 = sub_230310CA8();
    v29 = 1;
    v10 = sub_230310CD8();
    v28 = 2;
    v11 = sub_230310CD8();
    v27 = 3;
    sub_230310CB8();
    v13 = v12;
    v26 = 4;
    sub_230310CB8();
    v15 = v14;
    v25 = 5;
    sub_230310CB8();
    v17 = v16;
    v24 = 6;
    v22 = sub_230310CD8();
    v23 = 7;
    sub_230310CB8();
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v13;
    *(a2 + 32) = v15;
    *(a2 + 40) = v17;
    *(a2 + 48) = v22;
    *(a2 + 56) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMSuggestedAttributesTrainer.Parameters.Embedding.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x656C62616E457369;
  }
}

uint64_t sub_230223438(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x656C62616E457369;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0x800000023033F340;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x656C62616E457369;
  }

  if (*a2)
  {
    v6 = 0x800000023033F340;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

  return v8 & 1;
}

uint64_t sub_2302234E8()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_230223574()
{
  sub_23030F9C8();
}

uint64_t sub_2302235EC()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_230223680(unint64_t *a1@<X8>)
{
  v2 = 0x800000023033F340;
  v3 = 0x656C62616E457369;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xE900000000000064;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2302236C8()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x656C62616E457369;
  }
}

uint64_t sub_230223728(uint64_t a1)
{
  v2 = sub_230228B54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230223764(uint64_t a1)
{
  v2 = sub_230228B54();

  return MEMORY[0x2821FE720](a1, v2);
}

ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::Embedding __swiftcall REMSuggestedAttributesTrainer.Parameters.Embedding.init(isEnabled:neighborsToConsider:)(Swift::Bool_optional isEnabled, Swift::Int_optional neighborsToConsider)
{
  is_nil = neighborsToConsider.is_nil;
  value = neighborsToConsider.value;
  v5 = v2;
  v6 = isEnabled.value == 2;
  if (qword_27DB13C98 != -1)
  {
    v24 = isEnabled.value;
    swift_once();
    isEnabled.value = v24;
  }

  v7 = v6 || isEnabled.value;
  v8 = sub_23030EF48();
  __swift_project_value_buffer(v8, qword_27DB17608);
  v9 = sub_23030EF38();
  v10 = sub_2303102A8();
  if (os_log_type_enabled(v9, v10))
  {
    v25 = v5;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446210;
    v13 = v7;
    if (v7)
    {
      v14 = 5457241;
    }

    else
    {
      v14 = 20302;
    }

    if (v7)
    {
      v15 = 0xE300000000000000;
    }

    else
    {
      v15 = 0xE200000000000000;
    }

    v16 = sub_23004E30C(v14, v15, &v26);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_230044000, v9, v10, "kNN model is enabled: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x231914180](v12, -1, -1);
    v17 = v11;
    v5 = v25;
    MEMORY[0x231914180](v17, -1, -1);
  }

  else
  {
    v13 = v7;
  }

  if (is_nil)
  {
    v18 = 7;
  }

  else
  {
    v18 = value;
  }

  v19 = sub_23030EF38();
  v20 = sub_2303102A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134349056;
    *(v21 + 4) = v18;
    _os_log_impl(&dword_230044000, v19, v20, "Number of neighbors to consider in kNN: %{public}ld", v21, 0xCu);
    MEMORY[0x231914180](v21, -1, -1);
  }

  *v5 = v13;
  *(v5 + 8) = v18;
  result.neighborsToConsider = v23;
  result.isEnabled = v22;
  return result;
}

uint64_t REMSuggestedAttributesTrainer.Parameters.Embedding.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17820);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230228B54();
  sub_230311448();
  v11 = 0;
  sub_230310DB8();
  if (!v2)
  {
    v10 = 1;
    sub_230310DD8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMSuggestedAttributesTrainer.Parameters.Embedding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17830);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230228B54();
  sub_230311428();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_230310CA8();
    v13 = 1;
    v11 = sub_230310CC8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::AnchoredBubble::CodingKeys_optional __swiftcall REMSuggestedAttributesTrainer.Parameters.AnchoredBubble.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_230223E10()
{
  v1 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return 0x4F64656C62616E65;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_230223E9C()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_230223F64()
{
  sub_23030F9C8();
}

uint64_t sub_230224018()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_2302240E8(uint64_t *a1@<X8>)
{
  v2 = 0x4F64656C62616E65;
  v3 = 0xEC000000534F696ELL;
  v4 = 0xD000000000000018;
  v5 = 0x800000023033F780;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000001ELL;
    v5 = 0x800000023033F7A0;
  }

  if (*v1)
  {
    v3 = 0xEE00534F63616D6ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v4;
    v6 = v5;
  }

  *a1 = v2;
  a1[1] = v6;
}

ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::AnchoredBubble::CodingKeys_optional sub_23022416C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = REMSuggestedAttributesTrainer.Parameters.AnchoredBubble.CodingKeys.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2302241B4(uint64_t a1)
{
  v2 = sub_230228BA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302241F0(uint64_t a1)
{
  v2 = sub_230228BA8();

  return MEMORY[0x2821FE720](a1, v2);
}

ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::AnchoredBubble __swiftcall REMSuggestedAttributesTrainer.Parameters.AnchoredBubble.init(enabledOniOS:enabledOnmacOS:defaultWordDistanceScale:overrideLocalWordDistanceScale:)(Swift::Bool_optional enabledOniOS, Swift::Bool_optional enabledOnmacOS, Swift::Double_optional defaultWordDistanceScale, Swift::Bool_optional overrideLocalWordDistanceScale)
{
  v6 = *&defaultWordDistanceScale.is_nil;
  if (overrideLocalWordDistanceScale.value)
  {
    v6 = 0.2;
  }

  *v5 = enabledOniOS.value == 2 || enabledOniOS.value;
  *(v5 + 1) = enabledOnmacOS.value == 2 || enabledOnmacOS.value;
  *(v5 + 8) = v6;
  *(v5 + 16) = v4 & 1;
  result.defaultWordDistanceScale = v6;
  result.overrideLocalWordDistanceScale = enabledOnmacOS.value;
  result.enabledOniOS = enabledOniOS.value;
  return result;
}

uint64_t REMSuggestedAttributesTrainer.Parameters.AnchoredBubble.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17838);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 1);
  v10[1] = *(v1 + 16);
  v10[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230228BA8();
  sub_230311448();
  v14 = 0;
  sub_230310DB8();
  if (!v2)
  {
    v13 = 1;
    sub_230310DB8();
    v12 = 2;
    sub_230310DC8();
    v11 = 3;
    sub_230310DB8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMSuggestedAttributesTrainer.Parameters.AnchoredBubble.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17848);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230228BA8();
  sub_230311428();
  if (!v2)
  {
    v20 = 0;
    v9 = sub_230310CA8();
    v19 = 1;
    v10 = sub_230310CA8();
    v18 = 2;
    sub_230310CB8();
    v13 = v12;
    v17 = 3;
    v16 = sub_230310CA8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    v14 = v16 & 1;
    *(a2 + 1) = v10 & 1;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMSuggestedAttributesTrainer.Parameters.IntentionalWord.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 107;
  }

  else
  {
    return 0x656C62616E457369;
  }
}

uint64_t sub_230224750(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 107;
  }

  else
  {
    v3 = 0x656C62616E457369;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE100000000000000;
  }

  if (*a2)
  {
    v5 = 107;
  }

  else
  {
    v5 = 0x656C62616E457369;
  }

  if (*a2)
  {
    v6 = 0xE100000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_230311048();
  }

  return v8 & 1;
}

uint64_t sub_2302247F0()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23022486C()
{
  sub_23030F9C8();
}

uint64_t sub_2302248D4()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_230224958(uint64_t *a1@<X8>)
{
  v2 = 107;
  if (!*v1)
  {
    v2 = 0x656C62616E457369;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE100000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_230224990()
{
  if (*v0)
  {
    return 107;
  }

  else
  {
    return 0x656C62616E457369;
  }
}

uint64_t sub_2302249D0@<X0>(char *a1@<X8>)
{
  v2 = sub_230310C08();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_230224A40(uint64_t a1)
{
  v2 = sub_230228BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230224A7C(uint64_t a1)
{
  v2 = sub_230228BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::IntentionalWord __swiftcall REMSuggestedAttributesTrainer.Parameters.IntentionalWord.init(isEnabled:k:)(Swift::Bool_optional isEnabled, Swift::Int_optional k)
{
  is_nil = k.is_nil;
  value = k.value;
  v5 = v2;
  v6 = isEnabled.value == 2;
  if (qword_27DB13C98 != -1)
  {
    v31 = isEnabled.value;
    swift_once();
    isEnabled.value = v31;
  }

  v7 = v6 || isEnabled.value;
  v8 = sub_23030EF48();
  __swift_project_value_buffer(v8, qword_27DB17608);
  v9 = sub_23030EF38();
  v10 = sub_2303102A8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v32 = value;
    v33 = swift_slowAlloc();
    v12 = v33;
    *v11 = 136446210;
    if (v7)
    {
      v13 = 5457241;
    }

    else
    {
      v13 = 20302;
    }

    v14 = is_nil;
    v15 = v7;
    if (v7)
    {
      v16 = 0xE300000000000000;
    }

    else
    {
      v16 = 0xE200000000000000;
    }

    v17 = sub_23004E30C(v13, v16, &v33);
    v7 = v15;
    is_nil = v14;

    *(v11 + 4) = v17;
    _os_log_impl(&dword_230044000, v9, v10, "intentional word model is enabled: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v18 = v12;
    value = v32;
    MEMORY[0x231914180](v18, -1, -1);
    MEMORY[0x231914180](v11, -1, -1);
  }

  v19 = sub_23030EF38();
  v20 = sub_2303102A8();
  v21 = os_log_type_enabled(v19, v20);
  if (is_nil)
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Auto tuning number of clusters";
      v24 = v20;
      v25 = v19;
      v26 = v22;
      v27 = 2;
LABEL_16:
      _os_log_impl(&dword_230044000, v25, v24, v23, v26, v27);
      MEMORY[0x231914180](v22, -1, -1);
    }
  }

  else if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 134349056;
    *(v22 + 4) = value;
    v23 = "Number of clusters to consider in k-Mean: %{public}ld";
    v24 = v20;
    v25 = v19;
    v26 = v22;
    v27 = 12;
    goto LABEL_16;
  }

  *v5 = v7;
  *(v5 + 8) = value;
  *(v5 + 16) = is_nil;
  result.k.value = v29;
  result.isEnabled = v28;
  *result.gap1 = *(&v28 + 1);
  *&result.gap1[4] = *(&v28 + 5);
  result.gap1[6] = HIBYTE(v28);
  result.k.is_nil = v30;
  return result;
}

uint64_t REMSuggestedAttributesTrainer.Parameters.IntentionalWord.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17850);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230228BFC();
  sub_230311448();
  v12 = 0;
  sub_230310DB8();
  if (!v2)
  {
    v11 = 1;
    sub_230310D88();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMSuggestedAttributesTrainer.Parameters.IntentionalWord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230228BFC();
  sub_230311428();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_230310CA8();
    v15 = 1;
    v11 = sub_230310C78();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::CodingKeys_optional __swiftcall REMSuggestedAttributesTrainer.Parameters.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::CodingKeys_optional __swiftcall REMSuggestedAttributesTrainer.Parameters.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = REMSuggestedAttributesTrainer.Parameters.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_2302251B0()
{
  result = 0x4F64656C62616E65;
  switch(*v0)
  {
    case 2:
      result = 0x6C706D615378616DLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6153646C756F6873;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x65536D6F646E6172;
      break;
    case 9:
      result = 0x6168654265726F63;
      break;
    case 0xA:
      result = 0x6E69646465626D65;
      break;
    case 0xB:
      result = 0x6465726F68636E61;
      break;
    case 0xC:
      result = 0x6F69746E65746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23022535C()
{
  v0 = REMSuggestedAttributesTrainer.Parameters.CodingKeys.stringValue.getter();
  v2 = v1;
  if (v0 == REMSuggestedAttributesTrainer.Parameters.CodingKeys.stringValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_230311048();
  }

  return v5 & 1;
}

uint64_t sub_2302253F8()
{
  v0 = sub_230311358();
  REMSuggestedAttributesTrainer.Parameters.CodingKeys.stringValue.getter(v0);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_230225460(uint64_t a1)
{
  REMSuggestedAttributesTrainer.Parameters.CodingKeys.stringValue.getter(a1);
  sub_23030F9C8();
}

uint64_t sub_2302254C4()
{
  v0 = sub_230311358();
  REMSuggestedAttributesTrainer.Parameters.CodingKeys.stringValue.getter(v0);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_230225534@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::CodingKeys_optional sub_230225560@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = REMSuggestedAttributesTrainer.Parameters.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2302255A8(uint64_t a1)
{
  v2 = sub_2302299BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302255E4(uint64_t a1)
{
  v2 = sub_2302299BC();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 REMSuggestedAttributesTrainer.Parameters.coreBehavior.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  result = *(v1 + 80);
  v4 = *(v1 + 96);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

void REMSuggestedAttributesTrainer.Parameters.embedding.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
}

double REMSuggestedAttributesTrainer.Parameters.anchoredBubble.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 129);
  result = *(v1 + 136);
  v4 = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 1) = v2;
  *(a1 + 8) = result;
  *(a1 + 16) = v4;
  return result;
}

void REMSuggestedAttributesTrainer.Parameters.intentionalWord.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 168);
  *a1 = *(v1 + 152);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

void __swiftcall REMSuggestedAttributesTrainer.Parameters.init(enabledOnmacOS:enabledOniOS:maxSampleCount:minimumSampleCount:validationSetProportion:shouldSaveModel:allowLocalOverrides:allowCloudOverrides:randomSeed:coreBehavior:embedding:anchoredBubble:intentionalWord:)(ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters *__return_ptr retstr, Swift::Bool_optional enabledOnmacOS, Swift::Bool_optional enabledOniOS, Swift::Int_optional maxSampleCount, Swift::Int_optional minimumSampleCount, Swift::Double_optional validationSetProportion, Swift::Bool_optional shouldSaveModel, Swift::Bool_optional allowLocalOverrides, Swift::Bool_optional allowCloudOverrides, Swift::Int_optional randomSeed, ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::CoreBehavior *coreBehavior, ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::Embedding embedding, ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::AnchoredBubble anchoredBubble, ReminderKitInternal::REMSuggestedAttributesTrainer::Parameters::IntentionalWord intentionalWord)
{
  v15 = *&validationSetProportion.is_nil;
  is_nil = minimumSampleCount.is_nil;
  value = minimumSampleCount.value;
  v48 = **&embedding.isEnabled;
  v47 = *(*&embedding.isEnabled + 8);
  v45 = *(embedding.neighborsToConsider + 1);
  v46 = *embedding.neighborsToConsider;
  v19 = *(embedding.neighborsToConsider + 8);
  v43 = *v50;
  v44 = *(embedding.neighborsToConsider + 16);
  v42 = *(v50 + 1);
  v41 = v50[16];
  if (maxSampleCount.is_nil)
  {
    v20 = 100;
  }

  else
  {
    v20 = maxSampleCount.value;
  }

  if (qword_27DB13C98 != -1)
  {
    swift_once();
  }

  v21 = sub_23030EF48();
  __swift_project_value_buffer(v21, qword_27DB17608);
  v22 = sub_23030EF38();
  v23 = sub_2303102A8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134349056;
    *(v24 + 4) = v20;
    _os_log_impl(&dword_230044000, v22, v23, "maxSampleCount: %{public}ld", v24, 0xCu);
    MEMORY[0x231914180](v24, -1, -1);
  }

  if (is_nil)
  {
    v25 = 30;
  }

  else
  {
    v25 = value;
  }

  v26 = sub_23030EF38();
  v27 = sub_2303102A8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134349056;
    *(v28 + 4) = v25;
    _os_log_impl(&dword_230044000, v26, v27, "minimumSampleCount: %{public}ld", v28, 0xCu);
    MEMORY[0x231914180](v28, -1, -1);
  }

  v29 = randomSeed.value;

  if (shouldSaveModel.value)
  {
    v30 = 0.2;
  }

  else
  {
    v30 = v15;
  }

  v31 = sub_23030EF38();
  v32 = sub_2303102A8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134349056;
    *(v33 + 4) = v30;
    _os_log_impl(&dword_230044000, v31, v32, "validationSetProportion: %{public}f", v33, 0xCu);
    MEMORY[0x231914180](v33, -1, -1);
  }

  if (randomSeed.is_nil)
  {
    v29 = sub_2301ED1EC(0x7FFFFFFFFFFFFFFFuLL);
  }

  v34 = sub_23030EF38();
  v35 = sub_2303102A8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    *(v36 + 4) = v29;
    _os_log_impl(&dword_230044000, v34, v35, "randomSeed: %{public}ld", v36, 0xCu);
    MEMORY[0x231914180](v36, -1, -1);
  }

  retstr->enabledOnmacOS = enabledOnmacOS.value == 2 || enabledOnmacOS.value;
  retstr->enabledOniOS = enabledOniOS.value == 2 || enabledOniOS.value;
  retstr->maxSampleCount = v20;
  retstr->minimumSampleCount = v25;
  retstr->validationSetProportion = v30;
  retstr->shouldSaveModel = allowLocalOverrides.value;
  retstr->allowLocalOverrides = allowCloudOverrides.value == 2 || allowCloudOverrides.value;
  retstr->allowCloudOverrides = (v49 == 2) | v49 & 1;
  retstr->randomSeed = v29;
  v37 = *&coreBehavior->adjustment;
  *&retstr->coreBehavior.isEnabled = *&coreBehavior->isEnabled;
  *&retstr->coreBehavior.adjustment = v37;
  v38 = *&coreBehavior->feedbackResetVersion;
  *&retstr->coreBehavior.validationRelativeSupport = *&coreBehavior->validationRelativeSupport;
  *&retstr->coreBehavior.feedbackResetVersion = v38;
  retstr->embedding.isEnabled = v48;
  retstr->embedding.neighborsToConsider = v47;
  retstr->anchoredBubble.enabledOniOS = v46;
  retstr->anchoredBubble.enabledOnmacOS = v45;
  retstr->anchoredBubble.defaultWordDistanceScale = v19;
  retstr->anchoredBubble.overrideLocalWordDistanceScale = v44;
  retstr->intentionalWord.isEnabled = v43;
  retstr->intentionalWord.k.value = v42;
  retstr->intentionalWord.k.is_nil = v41;
}

void REMSuggestedAttributesTrainer.Parameters.init(partial:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  if (*(v3 + 16) && (v5 = sub_230082038(KeyPath), (v6 & 1) != 0) && (sub_23004D5CC(*(v3 + 56) + 32 * v5, &v150), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17880), swift_dynamicCast()))
  {
    v7 = v149;
  }

  else
  {
    v7 = sub_23008DEF0(MEMORY[0x277D84F90]);
  }

  v8 = swift_getKeyPath();
  if (*(v3 + 16) && (v9 = sub_230082038(v8), (v10 & 1) != 0) && (sub_23004D5CC(*(v3 + 56) + 32 * v9, &v150), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17878), swift_dynamicCast()))
  {
    v142 = v149;
  }

  else
  {
    v142 = sub_23008DDB0(MEMORY[0x277D84F90]);
  }

  v11 = swift_getKeyPath();
  if (*(v3 + 16) && (v12 = sub_230082038(v11), (v13 & 1) != 0) && (sub_23004D5CC(*(v3 + 56) + 32 * v12, &v150), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17870), swift_dynamicCast()))
  {
    v138 = v149;
  }

  else
  {
    v138 = sub_23008DC70(MEMORY[0x277D84F90]);
  }

  v14 = swift_getKeyPath();
  if (*(v3 + 16) && (v15 = sub_230082038(v14), (v16 & 1) != 0) && (sub_23004D5CC(*(v3 + 56) + 32 * v15, &v150), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17868), swift_dynamicCast()))
  {
    v140 = v149;
  }

  else
  {
    v140 = sub_23008DB30(MEMORY[0x277D84F90]);
  }

  v17 = swift_getKeyPath();
  v18 = sub_230226B60(v17, v7, sub_230082114);

  v19 = swift_getKeyPath();
  v148 = sub_230226AAC(v19, v7, sub_230082114);
  v147 = v20;

  v21 = swift_getKeyPath();
  v146 = sub_230226AAC(v21, v7, sub_230082114);
  v145 = v22;

  v23 = swift_getKeyPath();
  v124 = COERCE_DOUBLE(sub_230226AAC(v23, v7, sub_230082114));
  v122 = v24;

  v25 = swift_getKeyPath();
  v128 = COERCE_DOUBLE(sub_230226AAC(v25, v7, sub_230082114));
  v126 = v26;

  v27 = swift_getKeyPath();
  v132 = COERCE_DOUBLE(sub_230226AAC(v27, v7, sub_230082114));
  v130 = v28;

  v29 = swift_getKeyPath();
  v136 = sub_230226AAC(v29, v7, sub_230082114);
  v134 = v30;

  v31 = swift_getKeyPath();
  v32 = COERCE_DOUBLE(sub_230226AAC(v31, v7, sub_230082114));
  v34 = v33;

  if (qword_27DB13C98 != -1)
  {
    swift_once();
  }

  v35 = (v18 == 2) | v18;
  v36 = sub_23030EF48();
  __swift_project_value_buffer(v36, qword_27DB17608);
  v37 = sub_23030EF38();
  v38 = sub_2303102A8();
  v144 = v35;
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = v32;
    v41 = swift_slowAlloc();
    v150 = v41;
    *v39 = 136446210;
    if (v35)
    {
      v42 = 5457241;
    }

    else
    {
      v42 = 20302;
    }

    v43 = v3;
    v44 = v34;
    if (v35)
    {
      v45 = 0xE300000000000000;
    }

    else
    {
      v45 = 0xE200000000000000;
    }

    v46 = sub_23004E30C(v42, v45, &v150);
    v34 = v44;
    v3 = v43;

    *(v39 + 4) = v46;
    _os_log_impl(&dword_230044000, v37, v38, "CoreBehavior model enabled: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v47 = v41;
    v32 = v40;
    MEMORY[0x231914180](v47, -1, -1);
    MEMORY[0x231914180](v39, -1, -1);
  }

  if (v122)
  {
    v48 = 0.5;
  }

  else
  {
    v48 = v124;
  }

  v49 = sub_23030EF38();
  v50 = sub_2303102A8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134349056;
    *(v51 + 4) = v48;
    _os_log_impl(&dword_230044000, v49, v50, "CoreBehavior model confidence threshold: %{public}f", v51, 0xCu);
    MEMORY[0x231914180](v51, -1, -1);
  }

  if (v126)
  {
    v52 = 0.01;
  }

  else
  {
    v52 = v128;
  }

  v53 = sub_23030EF38();
  v54 = sub_2303102A8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 134349056;
    *(v55 + 4) = v52;
    _os_log_impl(&dword_230044000, v53, v54, "CoreBehavior model validation relative support threshold: %{public}f", v55, 0xCu);
    MEMORY[0x231914180](v55, -1, -1);
  }

  if (v130)
  {
    v56 = 0.3;
  }

  else
  {
    v56 = v132;
  }

  v57 = sub_23030EF38();
  v58 = sub_2303102A8();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 134349056;
    *(v59 + 4) = v56;
    _os_log_impl(&dword_230044000, v57, v58, "CoreBehavior model validation confidence threshold: %{public}f", v59, 0xCu);
    MEMORY[0x231914180](v59, -1, -1);
  }

  if (v134)
  {
    v60 = 0;
  }

  else
  {
    v60 = v136;
  }

  v61 = sub_23030EF38();
  v62 = sub_2303102A8();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134349056;
    *(v63 + 4) = v60;
    _os_log_impl(&dword_230044000, v61, v62, "CoreBehavior model feedbackResetVersion: %{public}lu", v63, 0xCu);
    MEMORY[0x231914180](v63, -1, -1);
  }

  v137 = v60;

  if (v34)
  {
    v64 = 2592000.0;
  }

  else
  {
    v64 = v32;
  }

  v65 = sub_23030EF38();
  v66 = sub_2303102A8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 134349056;
    *(v67 + 4) = v64;
    _os_log_impl(&dword_230044000, v65, v66, "CoreBehavior model feedbackExpirationWindow: %{public}f", v67, 0xCu);
    MEMORY[0x231914180](v67, -1, -1);
  }

  v68 = swift_getKeyPath();
  v135 = sub_230226B60(v68, v138, sub_230082100);

  v69 = swift_getKeyPath();
  v133 = sub_230226B60(v69, v138, sub_230082100);

  v70 = swift_getKeyPath();
  *&v127 = COERCE_DOUBLE(sub_230226AAC(v70, v138, sub_230082100));
  v129 = v71;

  v72 = swift_getKeyPath();
  v131 = sub_230226B60(v72, v138, sub_230082100);

  v73 = swift_getKeyPath();
  v74.value = sub_230226B60(v73, v142, sub_2300820EC);

  v75 = swift_getKeyPath();
  v76 = sub_230226AAC(v75, v142, sub_2300820EC);
  v78 = v77;

  v153.is_nil = v78 & 1;
  v153.value = v76;
  REMSuggestedAttributesTrainer.Parameters.Embedding.init(isEnabled:neighborsToConsider:)(v74, v153);
  v143 = v150;
  v139 = v151;
  v79 = swift_getKeyPath();
  v80.value = sub_230226B60(v79, v140, sub_23008204C);

  v81 = swift_getKeyPath();
  v82 = sub_230226BF8(v81, v140);
  v84 = v83;

  v154.is_nil = v84 & 1;
  v154.value = v82;
  REMSuggestedAttributesTrainer.Parameters.IntentionalWord.init(isEnabled:k:)(v80, v154);
  v141 = v150;
  v125 = v151;
  v123 = v152;
  v85 = swift_getKeyPath();
  v86 = sub_230226AAC(v85, v3, sub_230082038);
  v88 = v87;

  v89 = swift_getKeyPath();
  v117 = sub_230226AAC(v89, v3, sub_230082038);
  v91 = v90;

  v92 = swift_getKeyPath();
  v119 = COERCE_DOUBLE(sub_230226AAC(v92, v3, sub_230082038));
  v118 = v93;

  v94 = swift_getKeyPath();
  v121 = sub_230226B60(v94, v3, sub_230082038);

  v95 = swift_getKeyPath();
  v120 = sub_230226B60(v95, v3, sub_230082038);

  v96 = swift_getKeyPath();
  v97 = sub_230226AAC(v96, v3, sub_230082038);
  v99 = v98;

  if (v88)
  {
    v86 = 100;
  }

  v100 = sub_23030EF38();
  v101 = sub_2303102A8();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    *v102 = 134349056;
    *(v102 + 4) = v86;
    _os_log_impl(&dword_230044000, v100, v101, "maxSampleCount: %{public}ld", v102, 0xCu);
    MEMORY[0x231914180](v102, -1, -1);
  }

  if (v91)
  {
    v103 = 30;
  }

  else
  {
    v103 = v117;
  }

  v104 = sub_23030EF38();
  v105 = sub_2303102A8();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 134349056;
    *(v106 + 4) = v103;
    _os_log_impl(&dword_230044000, v104, v105, "minimumSampleCount: %{public}ld", v106, 0xCu);
    MEMORY[0x231914180](v106, -1, -1);
  }

  if (v118)
  {
    v107 = 0.2;
  }

  else
  {
    v107 = v119;
  }

  v108 = sub_23030EF38();
  v109 = sub_2303102A8();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 134349056;
    *(v110 + 4) = v107;
    _os_log_impl(&dword_230044000, v108, v109, "validationSetProportion: %{public}f", v110, 0xCu);
    MEMORY[0x231914180](v110, -1, -1);
  }

  if (v99)
  {
    v97 = sub_2301ED1EC(0x7FFFFFFFFFFFFFFFuLL);
  }

  v111 = sub_23030EF38();
  v112 = sub_2303102A8();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 134349056;
    *(v113 + 4) = v97;
    _os_log_impl(&dword_230044000, v111, v112, "randomSeed: %{public}ld", v113, 0xCu);
    MEMORY[0x231914180](v113, -1, -1);
  }

  LOBYTE(v150) = v123;
  *a2 = 257;
  *(a2 + 8) = v86;
  *(a2 + 16) = v103;
  *(a2 + 24) = v107;
  *(a2 + 32) = v121 & 1;
  *(a2 + 33) = 1;
  v114 = *&v127;
  *(a2 + 34) = (v120 == 2) | v120 & 1;
  if (v129)
  {
    v114 = 0.2;
  }

  *(a2 + 40) = v97;
  *(a2 + 48) = v144 & 1;
  v115 = v146;
  if (v145)
  {
    v115 = 0;
  }

  v116 = 6;
  if ((v147 & 1) == 0)
  {
    v116 = v148;
  }

  *(a2 + 56) = v116;
  *(a2 + 64) = v115;
  *(a2 + 72) = v48;
  *(a2 + 80) = v52;
  *(a2 + 88) = v56;
  *(a2 + 96) = v137;
  *(a2 + 104) = v64;
  *(a2 + 112) = v143;
  *(a2 + 120) = v139;
  *(a2 + 128) = (v135 == 2) | v135 & 1;
  *(a2 + 129) = (v133 == 2) | v133 & 1;
  *(a2 + 136) = v114;
  *(a2 + 144) = v131 & 1;
  *(a2 + 152) = v141;
  *(a2 + 160) = v125;
  *(a2 + 168) = v123;
}

uint64_t sub_2302269F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_230082128(a1), (v4 & 1) != 0))
  {
    sub_23004D5CC(*(a2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230226AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 16) && (v4 = a3(), (v5 & 1) != 0))
  {
    sub_23004D5CC(*(a2 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
  v6 = swift_dynamicCast();
  v7 = v10;
  if (!v6)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_230226B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 16) && (v4 = a3(), (v5 & 1) != 0))
  {
    sub_23004D5CC(*(a2 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_230226BF8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_23008204C(a1), (v4 & 1) != 0) && (sub_23004D5CC(*(a2 + 56) + 32 * v3, v7), sub_230061914(v7, v8), sub_230061914(v8, v7), (swift_dynamicCast() & 1) != 0))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t REMSuggestedAttributesTrainer.Parameters.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17888);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  LODWORD(v30) = *(v2 + 1);
  v8 = *(v2 + 8);
  v28 = *(v2 + 16);
  v29 = v8;
  v36 = *(v2 + 32);
  LODWORD(v8) = *(v2 + 33);
  v26 = *(v2 + 34);
  v27 = v8;
  v9 = *(v2 + 40);
  v10 = *(v2 + 112);
  v24 = *(v2 + 120);
  v25 = v9;
  LODWORD(v6) = *(v2 + 129);
  v20 = *(v2 + 128);
  v21 = v6;
  v11 = *(v2 + 136);
  v22 = *(v2 + 144);
  v23 = v10;
  v18 = *(v2 + 152);
  v19 = *(v2 + 160);
  v12 = *(v2 + 168);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302299BC();
  sub_230311448();
  LOBYTE(v32) = 0;
  v13 = v31;
  sub_230310DB8();
  if (!v13)
  {
    LODWORD(v31) = v12;
    LOBYTE(v32) = 1;
    sub_230310DB8();
    LOBYTE(v32) = 2;
    sub_230310DD8();
    v30 = v5;
    LOBYTE(v32) = 3;
    sub_230310DD8();
    LOBYTE(v32) = 4;
    sub_230310DC8();
    LOBYTE(v32) = 5;
    sub_230310DB8();
    LOBYTE(v32) = 6;
    sub_230310DB8();
    LOBYTE(v32) = 7;
    sub_230310DB8();
    LOBYTE(v32) = 8;
    sub_230310DD8();
    v14 = *(v2 + 64);
    v32 = *(v2 + 48);
    v33 = v14;
    v15 = *(v2 + 96);
    v34 = *(v2 + 80);
    v35 = v15;
    v37 = 9;
    sub_230229A10();
    sub_230310DF8();
    LOBYTE(v32) = v23;
    *(&v32 + 1) = v24;
    v37 = 10;
    sub_230229A64();
    sub_230310DF8();
    LOBYTE(v32) = v20;
    BYTE1(v32) = v21;
    *(&v32 + 1) = v11;
    LOBYTE(v33) = v22;
    v37 = 11;
    sub_230229AB8();
    sub_230310DF8();
    LOBYTE(v32) = v18;
    *(&v32 + 1) = v19;
    LOBYTE(v33) = v31;
    v37 = 12;
    sub_230229B0C();
    sub_230310DF8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t REMSuggestedAttributesTrainer.Parameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB178B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302299BC();
  sub_230311428();
  if (!v2)
  {
    LOBYTE(v42) = 0;
    v9 = sub_230310CA8();
    LOBYTE(v42) = 1;
    v10 = sub_230310CA8();
    LOBYTE(v42) = 2;
    v37 = sub_230310CC8();
    LOBYTE(v42) = 3;
    v36 = sub_230310CC8();
    LOBYTE(v42) = 4;
    sub_230310CB8();
    v12 = v11;
    LOBYTE(v42) = 5;
    v35 = sub_230310CA8();
    LOBYTE(v42) = 6;
    v34 = sub_230310CA8();
    LOBYTE(v42) = 7;
    v33 = sub_230310CA8();
    LOBYTE(v42) = 8;
    v32 = sub_230310CC8();
    v52 = 9;
    sub_230229B60();
    sub_230310CE8();
    v46 = v42;
    v47 = v43;
    v48 = v44;
    v49 = v45;
    v51 = 10;
    sub_230229BB4();
    sub_230310CE8();
    v31 = v38;
    v30 = v40;
    v51 = 11;
    sub_230229C08();
    sub_230310CE8();
    v29 = v38;
    v28 = v39;
    v14 = v40;
    v27 = v41;
    v51 = 12;
    sub_230229C5C();
    sub_230310CE8();
    v26 = v9 & 1;
    v25 = v10 & 1;
    v15 = v35 & 1;
    v16 = v34 & 1;
    v17 = v33 & 1;
    (*(v6 + 8))(v8, v5);
    v18 = v38;
    v19 = v40;
    v20 = v41;
    v50 = v41;
    *a2 = v26;
    *(a2 + 1) = v25;
    *(a2 + 8) = v37;
    *(a2 + 16) = v36;
    *(a2 + 24) = v12;
    *(a2 + 32) = v15;
    *(a2 + 33) = v16;
    *(a2 + 34) = v17;
    *(a2 + 40) = v32;
    v21 = v46;
    v22 = v47;
    v23 = v49;
    *(a2 + 80) = v48;
    *(a2 + 96) = v23;
    *(a2 + 48) = v21;
    *(a2 + 64) = v22;
    *(a2 + 112) = v31;
    *(a2 + 120) = v30;
    *(a2 + 128) = v29;
    *(a2 + 129) = v28;
    *(a2 + 136) = v14;
    *(a2 + 144) = v27;
    *(a2 + 152) = v18;
    *(a2 + 160) = v19;
    *(a2 + 168) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id REMSuggestedAttributesTrainer.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

id REMSuggestedAttributesTrainer.init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithFetchResultTokenToDiffAgainst_, a1);

  return v3;
}

uint64_t sub_2302276CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2302277AC(uint64_t a1)
{
  v2 = sub_230228030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302277E8(uint64_t a1)
{
  v2 = sub_230228030();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2302278D4()
{
  result = qword_27DB17630;
  if (!qword_27DB17630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17630);
  }

  return result;
}

unint64_t sub_230227928()
{
  result = qword_27DB17638;
  if (!qword_27DB17638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17638);
  }

  return result;
}

unint64_t sub_23022797C()
{
  result = qword_27DB17648;
  if (!qword_27DB17648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17648);
  }

  return result;
}

unint64_t sub_230227A38()
{
  result = qword_27DB17658;
  if (!qword_27DB17658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17658);
  }

  return result;
}

unint64_t sub_230227A8C()
{
  result = qword_27DB17670;
  if (!qword_27DB17670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17670);
  }

  return result;
}

unint64_t sub_230227AE0()
{
  result = qword_280C96EE8;
  if (!qword_280C96EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB13DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96EE8);
  }

  return result;
}

unint64_t sub_230227B5C()
{
  result = qword_280C98850;
  if (!qword_280C98850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB13DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98850);
  }

  return result;
}

unint64_t sub_230227C40()
{
  result = qword_27DB17688;
  if (!qword_27DB17688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17688);
  }

  return result;
}

unint64_t sub_230227C94()
{
  result = qword_27DB17698;
  if (!qword_27DB17698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17698);
  }

  return result;
}

unint64_t sub_230227D10()
{
  result = qword_27DB176A0;
  if (!qword_27DB176A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB142D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB176A0);
  }

  return result;
}

unint64_t sub_230227D8C()
{
  result = qword_27DB176B0;
  if (!qword_27DB176B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB176B0);
  }

  return result;
}

unint64_t sub_230227E08()
{
  result = qword_27DB176B8;
  if (!qword_27DB176B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB142D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB176B8);
  }

  return result;
}

unint64_t sub_230227E84()
{
  result = qword_27DB176C8;
  if (!qword_27DB176C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB176C8);
  }

  return result;
}

uint64_t sub_230227ED8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB176D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230227F50(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB176E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230228030()
{
  result = qword_27DB17710;
  if (!qword_27DB17710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17710);
  }

  return result;
}

unint64_t sub_230228084()
{
  result = qword_27DB17718;
  if (!qword_27DB17718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17718);
  }

  return result;
}

unint64_t sub_2302280D8()
{
  result = qword_27DB17720;
  if (!qword_27DB17720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17720);
  }

  return result;
}

unint64_t sub_23022812C()
{
  result = qword_27DB17728;
  if (!qword_27DB17728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17728);
  }

  return result;
}

unint64_t sub_230228180()
{
  result = qword_27DB17738;
  if (!qword_27DB17738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17738);
  }

  return result;
}

unint64_t sub_2302281D4()
{
  result = qword_27DB17740;
  if (!qword_27DB17740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17740);
  }

  return result;
}

unint64_t sub_230228228()
{
  result = qword_27DB17748;
  if (!qword_27DB17748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17748);
  }

  return result;
}

unint64_t sub_23022829C()
{
  result = qword_27DB17778;
  if (!qword_27DB17778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17778);
  }

  return result;
}

unint64_t sub_2302282F0()
{
  result = qword_27DB17780;
  if (!qword_27DB17780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17750);
    sub_230228398();
    sub_2302283EC();
    sub_2301EA210();
    sub_2301EA264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17780);
  }

  return result;
}

unint64_t sub_230228398()
{
  result = qword_27DB17788;
  if (!qword_27DB17788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17788);
  }

  return result;
}

unint64_t sub_2302283EC()
{
  result = qword_27DB17790;
  if (!qword_27DB17790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17790);
  }

  return result;
}

unint64_t sub_230228440()
{
  result = qword_27DB17798;
  if (!qword_27DB17798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17758);
    sub_2302284E8();
    sub_23022853C();
    sub_2301EA210();
    sub_2301EA264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17798);
  }

  return result;
}

unint64_t sub_2302284E8()
{
  result = qword_27DB177A0;
  if (!qword_27DB177A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB177A0);
  }

  return result;
}

unint64_t sub_23022853C()
{
  result = qword_27DB177A8;
  if (!qword_27DB177A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB177A8);
  }

  return result;
}

unint64_t sub_230228590()
{
  result = qword_27DB177B0;
  if (!qword_27DB177B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17760);
    sub_230228638();
    sub_23022868C();
    sub_2301EA210();
    sub_2301EA264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB177B0);
  }

  return result;
}

unint64_t sub_230228638()
{
  result = qword_27DB177B8;
  if (!qword_27DB177B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB177B8);
  }

  return result;
}

unint64_t sub_23022868C()
{
  result = qword_27DB177C0;
  if (!qword_27DB177C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB177C0);
  }

  return result;
}

unint64_t sub_2302286E0()
{
  result = qword_27DB177C8;
  if (!qword_27DB177C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17768);
    sub_230228788();
    sub_2302287DC();
    sub_2301EA210();
    sub_2301EA264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB177C8);
  }

  return result;
}

unint64_t sub_230228788()
{
  result = qword_27DB177D0;
  if (!qword_27DB177D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB177D0);
  }

  return result;
}

unint64_t sub_2302287DC()
{
  result = qword_27DB177D8;
  if (!qword_27DB177D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB177D8);
  }

  return result;
}

unint64_t sub_230228830()
{
  result = qword_27DB177E8;
  if (!qword_27DB177E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17750);
    sub_230228398();
    sub_2302283EC();
    sub_2301EA210();
    sub_2301EA264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB177E8);
  }

  return result;
}

unint64_t sub_2302288D8()
{
  result = qword_27DB177F0;
  if (!qword_27DB177F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17758);
    sub_2302284E8();
    sub_23022853C();
    sub_2301EA210();
    sub_2301EA264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB177F0);
  }

  return result;
}

unint64_t sub_230228980()
{
  result = qword_27DB177F8;
  if (!qword_27DB177F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17760);
    sub_230228638();
    sub_23022868C();
    sub_2301EA210();
    sub_2301EA264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB177F8);
  }

  return result;
}

unint64_t sub_230228A28()
{
  result = qword_27DB17800;
  if (!qword_27DB17800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17768);
    sub_230228788();
    sub_2302287DC();
    sub_2301EA210();
    sub_2301EA264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17800);
  }

  return result;
}

unint64_t sub_230228B00()
{
  result = qword_27DB17810;
  if (!qword_27DB17810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17810);
  }

  return result;
}

unint64_t sub_230228B54()
{
  result = qword_27DB17828;
  if (!qword_27DB17828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17828);
  }

  return result;
}

unint64_t sub_230228BA8()
{
  result = qword_27DB17840;
  if (!qword_27DB17840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17840);
  }

  return result;
}

unint64_t sub_230228BFC()
{
  result = qword_27DB17858;
  if (!qword_27DB17858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17858);
  }

  return result;
}

uint64_t sub_230228C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756363417473696CLL && a2 == 0xEC00000079636172;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002303452A0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002303452C0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002303452E0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345300 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_230228E14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C61636572 && a2 == 0xE600000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002303452A0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002303452C0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002303452E0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345300 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_230229024(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756363417473696CLL && a2 == 0xEC00000079636172;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230345320 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230345340 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C755264656E696DLL && a2 == 0xEE00746E756F4365 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000230345360 == a2 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002303452C0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002303452E0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000230345380 == a2 || (sub_230311048() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345300 == a2 || (sub_230311048() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73656C7552706F74 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_230229360(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000002303453A0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C72657473756C63 && a2 == 0xED0000736C656261 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5372657473756C63 && a2 == 0xEC00000073657A69 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6648685 && a2 == 0xE300000000000000 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345300 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_230311048();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_230229530(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B74736562 && a2 == 0xE500000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002303453C0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002303453A0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5372657473756C63 && a2 == 0xEC00000073657A69 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 6648685 && a2 == 0xE300000000000000 || (sub_230311048() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1265527149 && a2 == 0xE400000000000000 || (sub_230311048() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1266180461 && a2 == 0xE400000000000000 || (sub_230311048() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345300 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2302297D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465726F68636E61 && a2 == 0xEE00656C62627542 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6168656265726F63 && a2 == 0xEC000000726F6976 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69746E65746E69 && a2 == 0xEF64726F576C616ELL || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000230345300 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_2302299BC()
{
  result = qword_27DB17890;
  if (!qword_27DB17890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17890);
  }

  return result;
}

unint64_t sub_230229A10()
{
  result = qword_27DB17898;
  if (!qword_27DB17898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17898);
  }

  return result;
}

unint64_t sub_230229A64()
{
  result = qword_27DB178A0;
  if (!qword_27DB178A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB178A0);
  }

  return result;
}

unint64_t sub_230229AB8()
{
  result = qword_27DB178A8;
  if (!qword_27DB178A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB178A8);
  }

  return result;
}

unint64_t sub_230229B0C()
{
  result = qword_27DB178B0;
  if (!qword_27DB178B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB178B0);
  }

  return result;
}

unint64_t sub_230229B60()
{
  result = qword_27DB178C0;
  if (!qword_27DB178C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB178C0);
  }

  return result;
}

unint64_t sub_230229BB4()
{
  result = qword_27DB178C8;
  if (!qword_27DB178C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB178C8);
  }

  return result;
}

unint64_t sub_230229C08()
{
  result = qword_27DB178D0;
  if (!qword_27DB178D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB178D0);
  }

  return result;
}

unint64_t sub_230229C5C()
{
  result = qword_27DB178D8;
  if (!qword_27DB178D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB178D8);
  }

  return result;
}

unint64_t sub_230229CB4()
{
  result = qword_27DB178E0;
  if (!qword_27DB178E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB178E0);
  }

  return result;
}

unint64_t sub_230229D34()
{
  result = qword_27DB178E8;
  if (!qword_27DB178E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB178E8);
  }

  return result;
}

unint64_t sub_230229D8C()
{
  result = qword_27DB178F0;
  if (!qword_27DB178F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB178F0);
  }

  return result;
}

unint64_t sub_230229DE4()
{
  result = qword_27DB178F8;
  if (!qword_27DB178F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB178F8);
  }

  return result;
}

unint64_t sub_230229E70(uint64_t a1)
{
  result = sub_230229B60();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_230229E9C()
{
  result = qword_27DB17910;
  if (!qword_27DB17910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17910);
  }

  return result;
}

unint64_t sub_230229F1C()
{
  result = qword_27DB17918;
  if (!qword_27DB17918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17918);
  }

  return result;
}

unint64_t sub_230229F74()
{
  result = qword_27DB17920;
  if (!qword_27DB17920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17920);
  }

  return result;
}

unint64_t sub_230229FCC()
{
  result = qword_27DB17928;
  if (!qword_27DB17928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17928);
  }

  return result;
}

unint64_t sub_23022A058(uint64_t a1)
{
  result = sub_230229BB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23022A084()
{
  result = qword_27DB17940;
  if (!qword_27DB17940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17940);
  }

  return result;
}

unint64_t sub_23022A104()
{
  result = qword_27DB17948;
  if (!qword_27DB17948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17948);
  }

  return result;
}

unint64_t sub_23022A15C()
{
  result = qword_27DB17950;
  if (!qword_27DB17950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17950);
  }

  return result;
}

unint64_t sub_23022A1B4()
{
  result = qword_27DB17958;
  if (!qword_27DB17958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17958);
  }

  return result;
}

unint64_t sub_23022A240(uint64_t a1)
{
  result = sub_230229C08();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23022A26C()
{
  result = qword_27DB17970;
  if (!qword_27DB17970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17970);
  }

  return result;
}

unint64_t sub_23022A2EC()
{
  result = qword_27DB17978;
  if (!qword_27DB17978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17978);
  }

  return result;
}

unint64_t sub_23022A344()
{
  result = qword_27DB17980;
  if (!qword_27DB17980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17980);
  }

  return result;
}

unint64_t sub_23022A39C()
{
  result = qword_27DB17988;
  if (!qword_27DB17988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17988);
  }

  return result;
}

unint64_t sub_23022A428(uint64_t a1)
{
  result = sub_230229C5C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23022A454()
{
  result = qword_27DB179A0;
  if (!qword_27DB179A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB179A0);
  }

  return result;
}

uint64_t sub_23022A4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23022A510()
{
  result = qword_27DB179A8;
  if (!qword_27DB179A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB179A8);
  }

  return result;
}

unint64_t sub_23022A568()
{
  result = qword_27DB179B0;
  if (!qword_27DB179B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB179B0);
  }

  return result;
}

unint64_t sub_23022A5C0()
{
  result = qword_27DB179B8;
  if (!qword_27DB179B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB179B8);
  }

  return result;
}

unint64_t sub_23022A64C(uint64_t a1)
{
  result = sub_23022A674();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23022A674()
{
  result = qword_27DB179D0;
  if (!qword_27DB179D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB179D0);
  }

  return result;
}

unint64_t sub_23022A6D8()
{
  result = qword_27DB179D8;
  if (!qword_27DB179D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB179D8);
  }

  return result;
}

uint64_t sub_23022A750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if ((a22 & 1) == 0)
  {
  }
}

uint64_t sub_23022A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }

  return result;
}

uint64_t sub_23022A8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if ((a59 & 1) == 0)
  {
  }
}

uint64_t sub_23022AB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  if (a10)
  {
  }

  else
  {
    v12 = a9 & 1;

    return sub_23022ABD4(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  }
}

uint64_t sub_23022ABD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((a9 & 1) == 0)
  {
  }
}

uint64_t destroy for REMSuggestedAttributesTrainer.Result(uint64_t a1)
{
  sub_23022AD80(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168));
  sub_23022AE88(*(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224), *(a1 + 232));
  v15 = *(a1 + 656);
  v16 = *(a1 + 672);
  v13 = *(a1 + 624);
  v14 = *(a1 + 640);
  v11 = *(a1 + 592);
  v12 = *(a1 + 608);
  v9 = *(a1 + 560);
  v10 = *(a1 + 576);
  v7 = *(a1 + 528);
  v8 = *(a1 + 544);
  v5 = *(a1 + 496);
  v6 = *(a1 + 512);
  v3 = *(a1 + 464);
  v4 = *(a1 + 480);
  sub_23022AED8(*(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 272), *(a1 + 280), *(a1 + 288), *(a1 + 296), *(a1 + 304), *(a1 + 312), *(a1 + 320), *(a1 + 328), *(a1 + 336), *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 376), *(a1 + 384), *(a1 + 392), *(a1 + 400), *(a1 + 408), *(a1 + 416), *(a1 + 424), *(a1 + 432), *(a1 + 440), *(a1 + 448), *(a1 + 456), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), v12, *(&v12 + 1), v13, *(&v13 + 1), v14, *(&v14 + 1), v15, *(&v15 + 1), v16, *(&v16 + 1), *(a1 + 688), *(a1 + 696), *(a1 + 704));
  return sub_23022B18C(*(a1 + 712), *(a1 + 720), *(a1 + 728), *(a1 + 736), *(a1 + 744), *(a1 + 752), *(a1 + 760), *(a1 + 768), *(a1 + 776), *(a1 + 777));
}

uint64_t sub_23022AD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if ((a22 & 1) == 0)
  {
  }
}

uint64_t sub_23022AE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }

  return result;
}

uint64_t sub_23022AED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if ((a59 & 1) == 0)
  {
  }
}

uint64_t sub_23022B18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  if (a10)
  {
  }

  else
  {
    v12 = a9 & 1;

    return sub_23022B204(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  }
}

uint64_t sub_23022B204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((a9 & 1) == 0)
  {
  }
}

uint64_t initializeWithCopy for REMSuggestedAttributesTrainer.Result(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v73 = *(a2 + 64);
  v75 = *(a2 + 72);
  v77 = *(a2 + 80);
  v79 = *(a2 + 88);
  v81 = *(a2 + 96);
  v83 = *(a2 + 104);
  v85 = *(a2 + 112);
  v87 = *(a2 + 120);
  v89 = *(a2 + 128);
  v91 = *(a2 + 136);
  v93 = *(a2 + 144);
  v95 = *(a2 + 152);
  v97 = *(a2 + 160);
  v99 = *(a2 + 168);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 56);
  sub_23022A750(*a2, v9, v10, v4, v5, v6, v7, v11, *(a2 + 64), *(a2 + 72), *(a2 + 80), *(a2 + 88), *(a2 + 96), *(a2 + 104), *(a2 + 112), *(a2 + 120), *(a2 + 128), *(a2 + 136), *(a2 + 144), *(a2 + 152), *(a2 + 160), *(a2 + 168));
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v11;
  *(a1 + 64) = v73;
  *(a1 + 72) = v75;
  *(a1 + 80) = v77;
  *(a1 + 88) = v79;
  *(a1 + 96) = v81;
  *(a1 + 104) = v83;
  *(a1 + 112) = v85;
  *(a1 + 120) = v87;
  *(a1 + 128) = v89;
  *(a1 + 136) = v91;
  *(a1 + 144) = v93;
  *(a1 + 152) = v95;
  *(a1 + 160) = v97;
  *(a1 + 168) = v99;
  v12 = *(a2 + 176);
  v13 = *(a2 + 184);
  v14 = *(a2 + 192);
  v15 = *(a2 + 200);
  v16 = *(a2 + 208);
  v17 = *(a2 + 216);
  v18 = *(a2 + 224);
  LOBYTE(v7) = *(a2 + 232);
  sub_23022A858(v12, v13, v14, v15, v16, v17, v18, v7);
  *(a1 + 176) = v12;
  *(a1 + 184) = v13;
  *(a1 + 192) = v14;
  *(a1 + 200) = v15;
  *(a1 + 208) = v16;
  *(a1 + 216) = v17;
  *(a1 + 224) = v18;
  *(a1 + 232) = v7;
  v98 = *(a2 + 312);
  v100 = *(a2 + 304);
  v94 = *(a2 + 328);
  v96 = *(a2 + 320);
  v90 = *(a2 + 344);
  v92 = *(a2 + 336);
  v86 = *(a2 + 360);
  v88 = *(a2 + 352);
  v82 = *(a2 + 376);
  v84 = *(a2 + 368);
  v78 = *(a2 + 392);
  v80 = *(a2 + 384);
  v74 = *(a2 + 408);
  v76 = *(a2 + 400);
  v71 = *(a2 + 424);
  v72 = *(a2 + 416);
  v69 = *(a2 + 440);
  v70 = *(a2 + 432);
  v67 = *(a2 + 456);
  v68 = *(a2 + 448);
  v66 = *(a2 + 464);
  v65 = *(a2 + 472);
  v64 = *(a2 + 480);
  v63 = *(a2 + 488);
  v36 = *(a2 + 496);
  v37 = *(a2 + 504);
  v38 = *(a2 + 512);
  v39 = *(a2 + 520);
  v40 = *(a2 + 528);
  v41 = *(a2 + 536);
  v42 = *(a2 + 544);
  v43 = *(a2 + 552);
  v44 = *(a2 + 560);
  v45 = *(a2 + 568);
  v46 = *(a2 + 576);
  v47 = *(a2 + 584);
  v48 = *(a2 + 592);
  v49 = *(a2 + 600);
  v50 = *(a2 + 608);
  v51 = *(a2 + 616);
  v52 = *(a2 + 624);
  v53 = *(a2 + 632);
  v54 = *(a2 + 640);
  v55 = *(a2 + 648);
  v56 = *(a2 + 656);
  v57 = *(a2 + 664);
  v58 = *(a2 + 672);
  v59 = *(a2 + 680);
  v60 = *(a2 + 688);
  v61 = *(a2 + 696);
  v62 = *(a2 + 704);
  v19 = *(a2 + 240);
  v20 = *(a2 + 248);
  v21 = *(a2 + 256);
  v22 = *(a2 + 264);
  v23 = *(a2 + 272);
  v24 = *(a2 + 280);
  v25 = *(a2 + 288);
  v26 = *(a2 + 296);
  sub_23022A8A8(v19, v20, v21, v22, v23, v24, v25, v26, v100, v98, v96, v94, v92, v90, v88, v86, v84, v82, v80, v78, v76, v74, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
  *(a1 + 240) = v19;
  *(a1 + 248) = v20;
  *(a1 + 256) = v21;
  *(a1 + 264) = v22;
  *(a1 + 272) = v23;
  *(a1 + 280) = v24;
  *(a1 + 288) = v25;
  *(a1 + 296) = v26;
  *(a1 + 304) = v100;
  *(a1 + 312) = v98;
  *(a1 + 320) = v96;
  *(a1 + 328) = v94;
  *(a1 + 336) = v92;
  *(a1 + 344) = v90;
  *(a1 + 352) = v88;
  *(a1 + 360) = v86;
  *(a1 + 368) = v84;
  *(a1 + 376) = v82;
  *(a1 + 384) = v80;
  *(a1 + 392) = v78;
  *(a1 + 400) = v76;
  *(a1 + 408) = v74;
  *(a1 + 416) = v72;
  *(a1 + 424) = v71;
  *(a1 + 432) = v70;
  *(a1 + 440) = v69;
  *(a1 + 448) = v68;
  *(a1 + 456) = v67;
  *(a1 + 464) = v66;
  *(a1 + 472) = v65;
  *(a1 + 480) = v64;
  *(a1 + 488) = v63;
  *(a1 + 496) = v36;
  *(a1 + 504) = v37;
  *(a1 + 512) = v38;
  *(a1 + 520) = v39;
  *(a1 + 528) = v40;
  *(a1 + 536) = v41;
  *(a1 + 544) = v42;
  *(a1 + 552) = v43;
  *(a1 + 560) = v44;
  *(a1 + 568) = v45;
  *(a1 + 576) = v46;
  *(a1 + 584) = v47;
  *(a1 + 592) = v48;
  *(a1 + 600) = v49;
  *(a1 + 608) = v50;
  *(a1 + 616) = v51;
  *(a1 + 624) = v52;
  *(a1 + 632) = v53;
  *(a1 + 640) = v54;
  *(a1 + 648) = v55;
  *(a1 + 656) = v56;
  *(a1 + 664) = v57;
  *(a1 + 672) = v58;
  *(a1 + 680) = v59;
  *(a1 + 688) = v60;
  *(a1 + 696) = v61;
  *(a1 + 704) = v62;
  v27 = *(a2 + 712);
  v28 = *(a2 + 720);
  v29 = *(a2 + 728);
  v30 = *(a2 + 736);
  v31 = *(a2 + 744);
  v32 = *(a2 + 752);
  v33 = *(a2 + 760);
  v34 = *(a2 + 768);
  LOBYTE(v98) = *(a2 + 776);
  LOBYTE(v100) = *(a2 + 777);
  sub_23022AB5C(v27, v28, v29, v30, v31, v32, v33, v34, v98, v100);
  *(a1 + 712) = v27;
  *(a1 + 720) = v28;
  *(a1 + 728) = v29;
  *(a1 + 736) = v30;
  *(a1 + 744) = v31;
  *(a1 + 752) = v32;
  *(a1 + 760) = v33;
  *(a1 + 768) = v34;
  *(a1 + 776) = v98;
  *(a1 + 777) = v100;
  *(a1 + 784) = *(a2 + 784);
  return a1;
}

uint64_t assignWithCopy for REMSuggestedAttributesTrainer.Result(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v137 = *(a2 + 64);
  v139 = *(a2 + 72);
  v141 = *(a2 + 80);
  v143 = *(a2 + 88);
  v145 = *(a2 + 96);
  v147 = *(a2 + 104);
  v149 = *(a2 + 112);
  v151 = *(a2 + 120);
  v153 = *(a2 + 128);
  v155 = *(a2 + 136);
  v157 = *(a2 + 144);
  v159 = *(a2 + 152);
  v161 = *(a2 + 160);
  v163 = *(a2 + 168);
  sub_23022A750(*a2, v5, v6, v7, v8, v9, v10, v11, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163);
  v12 = *a1;
  v13 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  *(a1 + 64) = v137;
  *(a1 + 72) = v139;
  *(a1 + 80) = v141;
  *(a1 + 88) = v143;
  v22 = *(a1 + 96);
  v23 = *(a1 + 112);
  *(a1 + 96) = v145;
  *(a1 + 104) = v147;
  *(a1 + 112) = v149;
  *(a1 + 120) = v151;
  v24 = *(a1 + 128);
  v25 = *(a1 + 144);
  *(a1 + 128) = v153;
  *(a1 + 136) = v155;
  *(a1 + 144) = v157;
  *(a1 + 152) = v159;
  v26 = *(a1 + 160);
  *(a1 + 160) = v161;
  v27 = *(a1 + 168);
  *(a1 + 168) = v163;
  sub_23022AD80(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, v27);
  v28 = *(a2 + 176);
  v29 = *(a2 + 184);
  v30 = *(a2 + 192);
  v31 = *(a2 + 200);
  v32 = *(a2 + 208);
  v33 = *(a2 + 216);
  v34 = *(a2 + 224);
  LOBYTE(v5) = *(a2 + 232);
  sub_23022A858(v28, v29, v30, v31, v32, v33, v34, v5);
  v35 = *(a1 + 176);
  v36 = *(a1 + 184);
  v37 = *(a1 + 192);
  v38 = *(a1 + 200);
  v39 = *(a1 + 208);
  v40 = *(a1 + 216);
  v41 = *(a1 + 224);
  v42 = *(a1 + 232);
  *(a1 + 176) = v28;
  *(a1 + 184) = v29;
  *(a1 + 192) = v30;
  *(a1 + 200) = v31;
  *(a1 + 208) = v32;
  *(a1 + 216) = v33;
  *(a1 + 224) = v34;
  *(a1 + 232) = v5;
  sub_23022AE88(v35, v36, v37, v38, v39, v40, v41, v42);
  v127 = *(a2 + 304);
  v128 = *(a2 + 312);
  v129 = *(a2 + 320);
  v130 = *(a2 + 328);
  v131 = *(a2 + 336);
  v132 = *(a2 + 344);
  v133 = *(a2 + 352);
  v134 = *(a2 + 360);
  v135 = *(a2 + 368);
  v136 = *(a2 + 376);
  v138 = *(a2 + 384);
  v140 = *(a2 + 392);
  v142 = *(a2 + 400);
  v144 = *(a2 + 408);
  v146 = *(a2 + 416);
  v148 = *(a2 + 424);
  v150 = *(a2 + 432);
  v152 = *(a2 + 440);
  v154 = *(a2 + 448);
  v156 = *(a2 + 456);
  v158 = *(a2 + 464);
  v160 = *(a2 + 472);
  v162 = *(a2 + 480);
  v164 = *(a2 + 488);
  v105 = *(a2 + 496);
  v106 = *(a2 + 504);
  v107 = *(a2 + 512);
  v108 = *(a2 + 520);
  v109 = *(a2 + 528);
  v110 = *(a2 + 544);
  v111 = *(a2 + 560);
  v112 = *(a2 + 576);
  v113 = *(a2 + 584);
  v114 = *(a2 + 592);
  v115 = *(a2 + 608);
  v116 = *(a2 + 624);
  v117 = *(a2 + 632);
  v118 = *(a2 + 640);
  v119 = *(a2 + 648);
  v120 = *(a2 + 656);
  v121 = *(a2 + 664);
  v122 = *(a2 + 672);
  v123 = *(a2 + 680);
  v124 = *(a2 + 688);
  v125 = *(a2 + 696);
  v126 = *(a2 + 704);
  v44 = *(a2 + 248);
  v43 = *(a2 + 240);
  v46 = *(a2 + 264);
  v45 = *(a2 + 256);
  v47 = *(a2 + 280);
  v48 = *(a2 + 272);
  v49 = *(a2 + 296);
  v50 = *(a2 + 288);
  sub_23022A8A8(v43, v44, v45, v46, v48, v47, v50, v49, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v105, v106, v107, v108, *(a2 + 528), *(a2 + 536), *(a2 + 544), *(a2 + 552), *(a2 + 560), *(a2 + 568), v112, v113, *(a2 + 592), *(a2 + 600), *(a2 + 608), *(a2 + 616), v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
  v51 = *(a1 + 240);
  v52 = *(a1 + 248);
  *(a1 + 240) = v43;
  *(a1 + 248) = v44;
  v53 = *(a1 + 256);
  v54 = *(a1 + 264);
  *(a1 + 256) = v45;
  *(a1 + 264) = v46;
  v55 = *(a1 + 272);
  v56 = *(a1 + 280);
  *(a1 + 272) = v48;
  *(a1 + 280) = v47;
  v57 = *(a1 + 288);
  v58 = *(a1 + 296);
  *(a1 + 288) = v50;
  *(a1 + 296) = v49;
  v59 = *(a1 + 304);
  v60 = *(a1 + 320);
  *(a1 + 304) = v127;
  *(a1 + 312) = v128;
  *(a1 + 320) = v129;
  *(a1 + 328) = v130;
  v61 = *(a1 + 336);
  v62 = *(a1 + 352);
  *(a1 + 336) = v131;
  *(a1 + 344) = v132;
  *(a1 + 352) = v133;
  *(a1 + 360) = v134;
  v63 = *(a1 + 368);
  v64 = *(a1 + 384);
  *(a1 + 368) = v135;
  *(a1 + 376) = v136;
  *(a1 + 384) = v138;
  *(a1 + 392) = v140;
  v65 = *(a1 + 400);
  v66 = *(a1 + 416);
  *(a1 + 400) = v142;
  *(a1 + 408) = v144;
  *(a1 + 416) = v146;
  *(a1 + 424) = v148;
  v67 = *(a1 + 432);
  v68 = *(a1 + 448);
  *(a1 + 432) = v150;
  *(a1 + 440) = v152;
  *(a1 + 448) = v154;
  *(a1 + 456) = v156;
  v69 = *(a1 + 464);
  v70 = *(a1 + 480);
  *(a1 + 464) = v158;
  *(a1 + 472) = v160;
  *(a1 + 480) = v162;
  *(a1 + 488) = v164;
  v71 = *(a1 + 496);
  v72 = *(a1 + 512);
  *(a1 + 496) = v105;
  *(a1 + 504) = v106;
  *(a1 + 512) = v107;
  *(a1 + 520) = v108;
  v73 = *(a1 + 528);
  v74 = *(a1 + 544);
  *(a1 + 528) = v109;
  *(a1 + 544) = v110;
  v75 = *(a1 + 560);
  v76 = *(a1 + 576);
  *(a1 + 560) = v111;
  *(a1 + 576) = v112;
  *(a1 + 584) = v113;
  v77 = *(a1 + 592);
  v78 = *(a1 + 608);
  *(a1 + 592) = v114;
  *(a1 + 608) = v115;
  v79 = *(a1 + 624);
  v80 = *(a1 + 640);
  *(a1 + 624) = v116;
  *(a1 + 632) = v117;
  *(a1 + 640) = v118;
  *(a1 + 648) = v119;
  v81 = *(a1 + 656);
  v82 = *(a1 + 672);
  *(a1 + 656) = v120;
  *(a1 + 664) = v121;
  *(a1 + 672) = v122;
  *(a1 + 680) = v123;
  v83 = *(a1 + 688);
  *(a1 + 688) = v124;
  v84 = *(a1 + 696);
  *(a1 + 696) = v125;
  v85 = *(a1 + 704);
  *(a1 + 704) = v126;
  sub_23022AED8(v51, v52, v53, v54, v55, v56, v57, v58, v59, *(&v59 + 1), v60, *(&v60 + 1), v61, *(&v61 + 1), v62, *(&v62 + 1), v63, *(&v63 + 1), v64, *(&v64 + 1), v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, *(&v76 + 1), v77, *(&v77 + 1), v78, *(&v78 + 1), v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, v85);
  v86 = *(a2 + 712);
  v87 = *(a2 + 720);
  v88 = *(a2 + 728);
  v89 = *(a2 + 736);
  v90 = *(a2 + 744);
  v91 = *(a2 + 752);
  v92 = *(a2 + 760);
  v93 = *(a2 + 768);
  LOBYTE(v162) = *(a2 + 776);
  LOBYTE(v164) = *(a2 + 777);
  sub_23022AB5C(v86, v87, v88, v89, v90, v91, v92, v93, v162, v164);
  v94 = *(a1 + 712);
  v95 = *(a1 + 720);
  v96 = *(a1 + 728);
  v97 = *(a1 + 736);
  v98 = *(a1 + 744);
  v99 = *(a1 + 752);
  v100 = *(a1 + 760);
  v101 = *(a1 + 768);
  v102 = *(a1 + 776);
  v103 = *(a1 + 777);
  *(a1 + 712) = v86;
  *(a1 + 720) = v87;
  *(a1 + 728) = v88;
  *(a1 + 736) = v89;
  *(a1 + 744) = v90;
  *(a1 + 752) = v91;
  *(a1 + 760) = v92;
  *(a1 + 768) = v93;
  *(a1 + 776) = v162;
  *(a1 + 777) = v164;
  sub_23022B18C(v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
  *(a1 + 784) = *(a2 + 784);
  return a1;
}

uint64_t assignWithTake for REMSuggestedAttributesTrainer.Result(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 160);
  v5 = a1 + 704;
  v6 = *(a2 + 168);
  v7 = a2 + 704;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v18 = *(a1 + 96);
  v19 = *(a1 + 112);
  v20 = *(a1 + 128);
  v21 = *(a1 + 144);
  v22 = *(a1 + 160);
  v23 = *(a1 + 168);
  v24 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v24;
  v25 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v25;
  v26 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v26;
  v27 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v27;
  v28 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v28;
  *(a1 + 160) = v4;
  *(a1 + 168) = v6;
  sub_23022AD80(v8, v9, v10, v11, v12, v13, v14, v15, v16, *(&v16 + 1), v17, *(&v17 + 1), v18, *(&v18 + 1), v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23);
  v29 = *(a2 + 224);
  v30 = *(a2 + 232);
  v31 = *(a1 + 176);
  v32 = *(a1 + 184);
  v33 = *(a1 + 192);
  v34 = *(a1 + 200);
  v35 = *(a1 + 208);
  v36 = *(a1 + 216);
  v37 = *(a1 + 224);
  v38 = *(a1 + 232);
  v39 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v39;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v29;
  *(a1 + 232) = v30;
  sub_23022AE88(v31, v32, v33, v34, v35, v36, v37, v38);
  v40 = *(a2 + 704);
  v41 = *(a1 + 240);
  v42 = *(a1 + 248);
  v43 = *(a1 + 256);
  v44 = *(a1 + 264);
  v45 = *(a1 + 272);
  v46 = *(a1 + 280);
  v47 = *(a1 + 288);
  v48 = *(a1 + 296);
  v49 = *(a1 + 304);
  v50 = *(a1 + 320);
  v51 = *(a1 + 336);
  v52 = *(a1 + 352);
  v53 = *(a1 + 368);
  v54 = *(a1 + 384);
  v55 = *(a1 + 400);
  v56 = *(a1 + 416);
  v57 = *(a1 + 432);
  v58 = *(a1 + 448);
  v59 = *(a1 + 464);
  v60 = *(a1 + 480);
  v61 = *(a1 + 496);
  v62 = *(a1 + 512);
  v63 = *(a1 + 528);
  v64 = *(a1 + 544);
  v65 = *(a1 + 560);
  v66 = *(a1 + 576);
  v67 = *(a1 + 592);
  v68 = *(a1 + 608);
  v69 = *(a1 + 624);
  v70 = *(a1 + 640);
  v71 = *(a1 + 656);
  v72 = *(a1 + 672);
  v73 = *(a1 + 688);
  v74 = *(a1 + 696);
  v75 = *(a1 + 704);
  v76 = *(a2 + 256);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = v76;
  v77 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v77;
  v78 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v78;
  v79 = *(a2 + 352);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = v79;
  v80 = *(a2 + 384);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = v80;
  v81 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v81;
  v82 = *(a2 + 448);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = v82;
  v83 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v83;
  v84 = *(a2 + 512);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = v84;
  v85 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v85;
  v86 = *(a2 + 576);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = v86;
  v87 = *(a2 + 608);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = v87;
  v88 = *(a2 + 640);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 640) = v88;
  v89 = *(a2 + 672);
  *(a1 + 656) = *(a2 + 656);
  *(a1 + 672) = v89;
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 704) = v40;
  sub_23022AED8(v41, v42, v43, v44, v45, v46, v47, v48, v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1), v54, *(&v54 + 1), v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v59, *(&v59 + 1), v60, *(&v60 + 1), v61, *(&v61 + 1), v62, *(&v62 + 1), v63, *(&v63 + 1), v64, *(&v64 + 1), v65, *(&v65 + 1), v66, *(&v66 + 1), v67, *(&v67 + 1), v68, *(&v68 + 1), v69, *(&v69 + 1), v70, *(&v70 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75);
  v90 = *(a2 + 776);
  v91 = *(v7 + 73);
  v92 = *(v5 + 8);
  v93 = *(a1 + 720);
  v94 = *(v5 + 24);
  v95 = *(a1 + 736);
  v96 = *(v5 + 40);
  v97 = *(a1 + 752);
  v98 = *(v5 + 56);
  v99 = *(a1 + 768);
  v100 = *(a1 + 776);
  v101 = *(v5 + 73);
  *(v5 + 8) = *(v7 + 8);
  *(v5 + 24) = *(v7 + 24);
  *(v5 + 40) = *(v7 + 40);
  *(v5 + 56) = *(v7 + 56);
  *(a1 + 776) = v90;
  *(v5 + 73) = v91;
  sub_23022B18C(v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
  *(a1 + 784) = *(a2 + 784);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesTrainer.Result(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 792))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 168);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesTrainer.Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 792) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 792) = 0;
    }

    if (a2)
    {
      *(result + 168) = -a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for REMSuggestedAttributesTrainer.Result.Embedding(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v8 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v8;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);

  return a1;
}

void *assignWithCopy for REMSuggestedAttributesTrainer.Result.Embedding(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  a1[10] = a2[10];

  a1[11] = a2[11];

  a1[12] = a2[12];

  a1[13] = a2[13];
  a1[14] = a2[14];
  a1[15] = a2[15];
  a1[16] = a2[16];

  a1[17] = a2[17];
  a1[18] = a2[18];
  a1[19] = a2[19];
  a1[20] = a2[20];
  return a1;
}

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

uint64_t assignWithTake for REMSuggestedAttributesTrainer.Result.Embedding(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesTrainer.Result.Embedding(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesTrainer.Result.Embedding(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesTrainer.Result.AnchoredBubble(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesTrainer.Result.AnchoredBubble(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t destroy for REMSuggestedAttributesTrainer.Result.CoreBehavior()
{
}

uint64_t initializeWithCopy for REMSuggestedAttributesTrainer.Result.CoreBehavior(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  v8 = *(a2 + 88);
  v29 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v8;
  *(a1 + 96) = v29;
  *(a1 + 104) = *(a2 + 104);
  v9 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v9;
  v30 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v30;
  v31 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v31;
  v32 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v32;
  v33 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v33;
  v34 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v34;
  v10 = *(a2 + 264);
  *(a1 + 256) = *(a2 + 256);
  v11 = *(a2 + 376);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = v11;
  v12 = *(a2 + 408);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = v12;
  v13 = *(a2 + 456);
  *(a1 + 448) = *(a2 + 448);
  v14 = *(a2 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = v14;
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  v16 = *(a2 + 272);
  v15 = *(a2 + 280);
  *(a1 + 264) = v10;
  *(a1 + 272) = v16;
  v17 = *(a2 + 288);
  v18 = *(a2 + 296);
  *(a1 + 280) = v15;
  *(a1 + 288) = v17;
  v20 = *(a2 + 304);
  v19 = *(a2 + 312);
  *(a1 + 296) = v18;
  *(a1 + 304) = v20;
  v21 = *(a2 + 320);
  v26 = *(a2 + 328);
  *(a1 + 312) = v19;
  *(a1 + 320) = v21;
  v22 = *(a2 + 336);
  v28 = *(a2 + 344);
  *(a1 + 328) = v26;
  *(a1 + 336) = v22;
  *(a1 + 344) = v28;
  *(a1 + 384) = *(a2 + 384);
  v23 = *(a2 + 416);
  v24 = *(a2 + 432);
  v27 = *(a2 + 360);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = v27;
  *(a1 + 416) = v23;
  *(a1 + 432) = v24;
  *(a1 + 456) = v13;

  return a1;
}

void *assignWithCopy for REMSuggestedAttributesTrainer.Result.CoreBehavior(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  a1[10] = a2[10];

  a1[11] = a2[11];

  a1[12] = a2[12];

  a1[13] = a2[13];
  a1[14] = a2[14];
  a1[15] = a2[15];
  a1[16] = a2[16];

  a1[17] = a2[17];

  a1[18] = a2[18];

  a1[19] = a2[19];

  a1[20] = a2[20];

  a1[21] = a2[21];

  a1[22] = a2[22];

  a1[23] = a2[23];

  a1[24] = a2[24];

  a1[25] = a2[25];

  a1[26] = a2[26];

  a1[27] = a2[27];

  a1[28] = a2[28];

  a1[29] = a2[29];

  a1[30] = a2[30];
  a1[31] = a2[31];
  a1[32] = a2[32];
  a1[33] = a2[33];

  a1[34] = a2[34];

  a1[35] = a2[35];

  a1[36] = a2[36];

  a1[37] = a2[37];

  a1[38] = a2[38];

  a1[39] = a2[39];

  a1[40] = a2[40];

  a1[41] = a2[41];

  a1[42] = a2[42];

  a1[43] = a2[43];

  a1[44] = a2[44];

  a1[45] = a2[45];

  a1[46] = a2[46];

  a1[47] = a2[47];
  a1[48] = a2[48];
  a1[49] = a2[49];
  a1[50] = a2[50];

  a1[51] = a2[51];
  a1[52] = a2[52];
  a1[53] = a2[53];
  a1[54] = a2[54];
  a1[55] = a2[55];
  a1[56] = a2[56];
  a1[57] = a2[57];

  return a1;
}

uint64_t assignWithTake for REMSuggestedAttributesTrainer.Result.CoreBehavior(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);

  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);

  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);

  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);

  *(a1 + 272) = *(a2 + 272);

  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);

  *(a1 + 312) = *(a2 + 312);

  *(a1 + 320) = *(a2 + 320);

  *(a1 + 328) = *(a2 + 328);

  *(a1 + 336) = *(a2 + 336);

  *(a1 + 344) = *(a2 + 344);

  *(a1 + 352) = *(a2 + 352);

  *(a1 + 360) = *(a2 + 360);

  *(a1 + 368) = *(a2 + 368);

  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);

  *(a1 + 408) = *(a2 + 408);
  v4 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v4;
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);

  return a1;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesTrainer.Result.CoreBehavior(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
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

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesTrainer.Result.CoreBehavior(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 464) = 1;
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

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
}

uint64_t assignWithTake for REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesTrainer.Result.IntentionalWordPrescribed(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t destroy for REMSuggestedAttributesTrainer.Result.IntentionalWordTuned()
{
}

uint64_t initializeWithCopy for REMSuggestedAttributesTrainer.Result.IntentionalWordTuned(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

void *assignWithCopy for REMSuggestedAttributesTrainer.Result.IntentionalWordTuned(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  return a1;
}

uint64_t assignWithTake for REMSuggestedAttributesTrainer.Result.IntentionalWordTuned(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t initializeWithCopy for REMSuggestedAttributesTrainer.Result.IntentionalWord(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_23022ABD4(*a2, v4, v5, v6, v7, v8, v9, v10, v11);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  return a1;
}

uint64_t assignWithCopy for REMSuggestedAttributesTrainer.Result.IntentionalWord(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_23022ABD4(*a2, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  sub_23022B204(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  return a1;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for REMSuggestedAttributesTrainer.Result.IntentionalWord(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v13;
  v14 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v14;
  *(a1 + 64) = v3;
  sub_23022B204(v4, v6, v5, v7, v8, v9, v10, v11, v12);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesTrainer.Result.IntentionalWord(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesTrainer.Result.IntentionalWord(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesTrainer.Parameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[169])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesTrainer.Parameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesTrainer.Parameters.CoreBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesTrainer.Parameters.CoreBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesTrainer.Parameters.Embedding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesTrainer.Parameters.Embedding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23022DF00(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23022DF54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_23022E04C()
{
  result = qword_27DB179E0;
  if (!qword_27DB179E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB179E0);
  }

  return result;
}

unint64_t sub_23022E0A4()
{
  result = qword_27DB179E8;
  if (!qword_27DB179E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB179E8);
  }

  return result;
}

unint64_t sub_23022E0FC()
{
  result = qword_27DB179F0;
  if (!qword_27DB179F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB179F0);
  }

  return result;
}

unint64_t sub_23022E154()
{
  result = qword_27DB179F8;
  if (!qword_27DB179F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB179F8);
  }

  return result;
}

unint64_t sub_23022E1AC()
{
  result = qword_27DB17A00;
  if (!qword_27DB17A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A00);
  }

  return result;
}

unint64_t sub_23022E204()
{
  result = qword_27DB17A08;
  if (!qword_27DB17A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A08);
  }

  return result;
}

unint64_t sub_23022E25C()
{
  result = qword_27DB17A10;
  if (!qword_27DB17A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A10);
  }

  return result;
}

unint64_t sub_23022E2B4()
{
  result = qword_27DB17A18;
  if (!qword_27DB17A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A18);
  }

  return result;
}

unint64_t sub_23022E30C()
{
  result = qword_27DB17A20;
  if (!qword_27DB17A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A20);
  }

  return result;
}

unint64_t sub_23022E364()
{
  result = qword_27DB17A28;
  if (!qword_27DB17A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A28);
  }

  return result;
}

unint64_t sub_23022E3BC()
{
  result = qword_27DB17A30;
  if (!qword_27DB17A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A30);
  }

  return result;
}

unint64_t sub_23022E414()
{
  result = qword_27DB17A38;
  if (!qword_27DB17A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A38);
  }

  return result;
}

unint64_t sub_23022E46C()
{
  result = qword_27DB17A40;
  if (!qword_27DB17A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A40);
  }

  return result;
}

unint64_t sub_23022E4C4()
{
  result = qword_27DB17A48;
  if (!qword_27DB17A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A48);
  }

  return result;
}

unint64_t sub_23022E51C()
{
  result = qword_27DB17A50;
  if (!qword_27DB17A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A50);
  }

  return result;
}

unint64_t sub_23022E574()
{
  result = qword_27DB17A58;
  if (!qword_27DB17A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A58);
  }

  return result;
}

unint64_t sub_23022E5CC()
{
  result = qword_27DB17A60;
  if (!qword_27DB17A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A60);
  }

  return result;
}

unint64_t sub_23022E624()
{
  result = qword_27DB17A68;
  if (!qword_27DB17A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A68);
  }

  return result;
}

unint64_t sub_23022E67C()
{
  result = qword_27DB17A70;
  if (!qword_27DB17A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A70);
  }

  return result;
}

unint64_t sub_23022E6D4()
{
  result = qword_27DB17A78;
  if (!qword_27DB17A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A78);
  }

  return result;
}

unint64_t sub_23022E72C()
{
  result = qword_27DB17A80;
  if (!qword_27DB17A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A80);
  }

  return result;
}

unint64_t sub_23022E784()
{
  result = qword_27DB17A88;
  if (!qword_27DB17A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A88);
  }

  return result;
}

unint64_t sub_23022E7D8()
{
  result = qword_27DB17A90;
  if (!qword_27DB17A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17A90);
  }

  return result;
}

uint64_t sub_23022E86C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2302A37B8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_230236108(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23022E8D8(uint64_t result, uint64_t *a2, void *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      sub_230233E20(v9, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t static REMHashtagLabelDataView.fetchHashtagIDs(with:store:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300C86D0(v5, a1, v7);

  if (!v2)
  {
    a2 = v7[0];
  }

  return a2;
}

uint64_t sub_23022E9F4()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB17A98);
  v1 = __swift_project_value_buffer(v0, qword_27DB17A98);
  if (qword_280C9B438 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1768);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

ReminderKitInternal::REMHashtagLabelDataView::HashtagSuggestions __swiftcall REMHashtagLabelDataView.HashtagSuggestions.init(reminderHashtagSuggestions:spotlightHashtagSuggestions:)(Swift::OpaquePointer reminderHashtagSuggestions, Swift::OpaquePointer spotlightHashtagSuggestions)
{
  v2->_rawValue = reminderHashtagSuggestions._rawValue;
  v2[1]._rawValue = spotlightHashtagSuggestions._rawValue;
  result.spotlightHashtagSuggestions = spotlightHashtagSuggestions;
  result.reminderHashtagSuggestions = reminderHashtagSuggestions;
  return result;
}

uint64_t sub_23022EAEC(uint64_t a1)
{
  v2 = sub_23023157C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23022EB28(uint64_t a1)
{
  v2 = sub_23023157C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23022EB64()
{
  if (*v0)
  {
    return 0x65726F7473;
  }

  else
  {
    return 0x724F646568636163;
  }
}

uint64_t sub_23022EBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x724F646568636163 && a2 == 0xED000065726F7453;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F7473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}
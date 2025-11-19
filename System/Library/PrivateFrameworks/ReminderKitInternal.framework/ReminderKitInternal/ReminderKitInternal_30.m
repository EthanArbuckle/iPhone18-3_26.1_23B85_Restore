uint64_t sub_2302AD5EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007473694C67;
  v3 = a1;
  if (a1 > 3u)
  {
    v10 = 0x800000023033F960;
    v11 = 0x6574656C706D6F63;
    if (a1 == 6)
    {
      v11 = 0xD000000000000012;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    v12 = 0x800000023033F940;
    if (a1 == 4)
    {
      v13 = 0x6E6964616F6C7075;
    }

    else
    {
      v13 = 0xD000000000000012;
    }

    if (a1 == 4)
    {
      v12 = 0xED00007473694C67;
    }

    if (a1 <= 5u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v3 <= 5)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0x800000023033F8F0;
    v5 = 0xD000000000000016;
    if (a1 != 2)
    {
      v5 = 0xD000000000000014;
      v4 = 0x800000023033F910;
    }

    v6 = 0x800000023033F8B0;
    v7 = 0xD000000000000010;
    if (a1)
    {
      v6 = 0x800000023033F8D0;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        v2 = 0xE800000000000000;
        if (v8 != 0x6574656C706D6F63)
        {
LABEL_50:
          v15 = sub_230311048();
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      v14 = "finishingMigration";
    }

    else
    {
      if (a2 == 4)
      {
        if (v8 != 0x6E6964616F6C7075)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      v14 = "uploadingReminders";
    }

LABEL_43:
    v2 = (v14 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000012)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x800000023033F8F0;
      if (v8 != 0xD000000000000016)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v2 = 0x800000023033F910;
      if (v8 != 0xD000000000000014)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    if (!a2)
    {
      v14 = "preparingMigration";
      goto LABEL_43;
    }

    v2 = 0x800000023033F8D0;
    if (v8 != 0xD000000000000010)
    {
      goto LABEL_50;
    }
  }

LABEL_48:
  if (v9 != v2)
  {
    goto LABEL_50;
  }

  v15 = 1;
LABEL_51:

  return v15 & 1;
}

uint64_t sub_2302AD840(char a1, char a2)
{
  if (*&aBase_11[8 * a1] == *&aBase_11[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_230311048();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2302AD8A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6579570;
  v3 = a1;
  if (a1 > 3u)
  {
    v10 = 0x7274537865486164;
    v11 = 0xEB00000000676E69;
    if (a1 != 6)
    {
      v10 = 0xD000000000000013;
      v11 = 0x800000023033FA70;
    }

    v12 = 0x617053726F6C6F63;
    v13 = 0xEA00000000006563;
    if (a1 != 4)
    {
      v12 = 0xD000000000000013;
      v13 = 0x800000023033FA50;
    }

    if (a1 <= 5u)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }

    if (v3 <= 5)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 0xE400000000000000;
    v6 = 1702194274;
    if (a1 != 2)
    {
      v6 = 0x6168706C61;
      v5 = 0xE500000000000000;
    }

    v7 = 0x6E65657267;
    if (a1)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v7 = 6579570;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    if (v3 <= 1)
    {
      v9 = v4;
    }

    else
    {
      v9 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x7274537865486164;
        v14 = 0xEB00000000676E69;
        goto LABEL_39;
      }

      v2 = 0xD000000000000013;
      v15 = "ckSymbolicColorName";
    }

    else
    {
      if (a2 == 4)
      {
        v2 = 0x617053726F6C6F63;
        v14 = 0xEA00000000006563;
        goto LABEL_39;
      }

      v2 = 0xD000000000000013;
      v15 = "daSymbolicColorName";
    }

    v14 = (v15 - 32) | 0x8000000000000000;
    goto LABEL_39;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v14 = 0xE400000000000000;
      v2 = 1702194274;
    }

    else
    {
      v14 = 0xE500000000000000;
      v2 = 0x6168706C61;
    }
  }

  else if (a2)
  {
    v14 = 0xE500000000000000;
    v2 = 0x6E65657267;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

LABEL_39:
  if (v8 == v2 && v9 == v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_230311048();
  }

  return v16 & 1;
}

uint64_t sub_2302ADADC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEC00000079646165;
  v4 = 0x4365727574616546;
  if (a1 == 2)
  {
    v4 = 0x5277656976657250;
  }

  else
  {
    v3 = 0xEF6574656C706D6FLL;
  }

  v5 = 0xD000000000000010;
  v6 = 0x800000023033EFD0;
  if (a1)
  {
    v5 = 0x706D6F4365646F43;
    v6 = 0xEC0000006574656CLL;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x5277656976657250;
    }

    else
    {
      v11 = 0x4365727574616546;
    }

    if (a2 == 2)
    {
      v10 = 0xEC00000079646165;
    }

    else
    {
      v10 = 0xEF6574656C706D6FLL;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x706D6F4365646F43;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xEC0000006574656CLL;
    }

    else
    {
      v10 = 0x800000023033EFD0;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_230311048();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_2302ADC50()
{
  sub_23030F9C8();
}

uint64_t sub_2302ADDC0()
{
  sub_23030F9C8();
}

uint64_t sub_2302ADF08()
{
  sub_23030F9C8();
}

uint64_t sub_2302AE078()
{
  sub_23030F9C8();
}

uint64_t sub_2302AE1E4()
{
  sub_23030F9C8();
}

uint64_t sub_2302AE32C()
{
  sub_23030F9C8();
}

uint64_t sub_2302AE4B4()
{
  sub_23030F9C8();
}

uint64_t sub_2302AE5E8()
{
  sub_23030F9C8();
}

uint64_t sub_2302AE78C()
{
  sub_23030F9C8();
}

uint64_t sub_2302AE8EC()
{
  sub_23030F9C8();
}

uint64_t sub_2302AEA3C()
{
  sub_23030F9C8();
}

uint64_t sub_2302AEB64()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302AECA0()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302AEE04()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302AEF10()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302AF030()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302AF178()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302AF2D4()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302AF454()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302AF5B0()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

id REMFetchResultToken.codable.getter()
{
  v1 = type metadata accessor for REMFetchResultToken_Codable();
  v2 = objc_allocWithZone(v1);
  v3 = [v0 persistentHistoryTokens];
  sub_23004CBA4(0, &qword_280C987F8);
  sub_23030F658();

  v4 = sub_23030F638();

  v7.receiver = v2;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_initWithPersistentHistoryTokens_, v4);

  return v5;
}

id REMReminderFetchOptions.codable.getter()
{
  Options_Codable = type metadata accessor for REMReminderFetchOptions_Codable();
  v4.receiver = objc_allocWithZone(Options_Codable);
  v4.super_class = Options_Codable;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  [v2 copyFromFetchOptions_];
  return v2;
}

id REMObjectID_Codable.__allocating_init(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_23030EBB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  v9 = [a1 uuid];
  sub_23030EBA8();

  v10 = sub_23030EB88();
  (*(v5 + 8))(v7, v4);
  v11 = [a1 entityName];
  if (!v11)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v11 = sub_23030F8B8();
  }

  v14.receiver = v8;
  v14.super_class = v2;
  v12 = objc_msgSendSuper2(&v14, sel_initWithUUID_entityName_, v10, v11);

  return v12;
}

id REMObjectID.codable.getter()
{
  v1 = sub_23030EBB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMObjectID_Codable();
  v6 = objc_allocWithZone(v5);
  v7 = v0;
  v8 = [v7 uuid];
  sub_23030EBA8();

  v9 = sub_23030EB88();
  (*(v2 + 8))(v4, v1);
  v10 = [v7 entityName];
  if (!v10)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v10 = sub_23030F8B8();
  }

  v13.receiver = v6;
  v13.super_class = v5;
  v11 = objc_msgSendSuper2(&v13, sel_initWithUUID_entityName_, v9, v10);

  return v11;
}

id REMObjectID_Codable.__allocating_init(uuid:entityName:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_23030EB88();
  v5 = sub_23030F8B8();

  v6 = [v3 initWithUUID:v4 entityName:v5];

  v7 = sub_23030EBB8();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void *REMStoreObjectsContainer.__allocating_init(store:storages:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
  return v4;
}

id REMColor_Codable.__allocating_init(red:green:blue:alpha:colorSpace:daSymbolicColorName:daHexString:ckSymbolicColorName:)(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a7)
  {
    v19 = sub_23030F8B8();

    if (a9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v20 = 0;
    if (a11)
    {
      goto LABEL_4;
    }

LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  v19 = 0;
  if (!a9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = sub_23030F8B8();

  if (!a11)
  {
    goto LABEL_7;
  }

LABEL_4:
  v21 = sub_23030F8B8();

LABEL_8:
  v22 = [objc_allocWithZone(v11) initWithRed:a1 green:v19 blue:v20 alpha:v21 colorSpace:a2 daSymbolicColorName:a3 daHexString:a4 ckSymbolicColorName:a5];

  return v22;
}

id REMList.codable.getter()
{
  v1 = type metadata accessor for REMList_Codable();
  v2 = objc_allocWithZone(v1);
  v3 = [v0 store];
  v4 = [v0 account];
  v5 = [v0 storage];
  v10.receiver = v2;
  v10.super_class = v1;
  v6 = objc_msgSendSuper2(&v10, sel_initWithStore_account_storage_, v3, v4, v5);

  v7 = v6;
  v8 = [v0 parentList];
  [v7 setParentList_];

  return v7;
}

uint64_t sub_2302AFECC()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB191B8);
  v1 = __swift_project_value_buffer(v0, qword_27DB191B8);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMObjectID_Codable.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x614E797469746E65;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_2302B0008(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x614E797469746E65;
  }

  else
  {
    v3 = 1684632949;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEA0000000000656DLL;
  }

  if (*a2)
  {
    v5 = 0x614E797469746E65;
  }

  else
  {
    v5 = 1684632949;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000656DLL;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_2302B00AC()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302B012C()
{
  sub_23030F9C8();
}

uint64_t sub_2302B0198()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_2302B0220(uint64_t *a1@<X8>)
{
  v2 = 1684632949;
  if (*v1)
  {
    v2 = 0x614E797469746E65;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000656DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2302B0268(uint64_t a1)
{
  v2 = sub_230059CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302B02A4(uint64_t a1)
{
  v2 = sub_230059CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

id REMObjectID_Codable.init(uuid:entityName:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_23030EB88();
  v6 = sub_23030F8B8();

  v10.receiver = v2;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_initWithUUID_entityName_, v5, v6);

  v8 = sub_23030EBB8();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id REMObjectID_Codable.init(_:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_23030EBB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 uuid];
  sub_23030EBA8();

  v10 = sub_23030EB88();
  (*(v6 + 8))(v8, v5);
  v11 = [a1 entityName];
  if (!v11)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v11 = sub_23030F8B8();
  }

  v14.receiver = v2;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithUUID_entityName_, v10, v11);

  return v12;
}

void sub_2302B06E0(id *a1)
{
  v1 = [*a1 uuid];
  sub_23030EBA8();
}

void sub_2302B0740(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 entityName];
  v4 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id REMAccount_Codable.__allocating_init(store:storage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithStore:a1 storage:a2];

  return v5;
}

id REMSmartList_Codable.init(_:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [a1 customContext];
  v6 = [a1 store];
  if (v5)
  {
    v7 = [v5 account];
    v8 = [v5 parentList];
    v9 = [a1 storage];
    v13.receiver = v2;
    v13.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v13, sel_initWithStore_account_parentList_storage_, v6, v7, v8, v9);

    v6 = v9;
    v11 = a1;
    a1 = v5;
  }

  else
  {
    v11 = [a1 storage];
    v14.receiver = v2;
    v14.super_class = ObjectType;
    v10 = objc_msgSendSuper2(&v14, sel_initWithStore_storage_, v6, v11);
  }

  return v10;
}

id REMSmartList_Codable.__allocating_init(store:account:parentList:storage:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = [objc_allocWithZone(v4) initWithStore:a1 account:a2 parentList:a3 storage:a4];

  return v9;
}

id REMSmartList_Codable.init(store:account:parentList:storage:)(void *a1, void *a2, void *a3, void *a4)
{
  v11.receiver = v4;
  v11.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v11, sel_initWithStore_account_parentList_storage_, a1, a2, a3, a4);

  return v9;
}

uint64_t *sub_2302B0C4C@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  result = sub_2302BCF8C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_2302B0CB4(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = objc_allocWithZone(v2);
  v4 = [v1 store];
  v5 = [v1 storage];
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_initWithStore_storage_, v4, v5);

  return v6;
}

id _s19ReminderKitInternal18REMAccount_CodableCyACSo0D0CcfC_0(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [a1 store];
  v5 = [a1 storage];
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_initWithStore_storage_, v4, v5);

  return v6;
}

id _s19ReminderKitInternal18REMAccount_CodableCyACSo0D0Ccfc_0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [a1 store];
  v5 = [a1 storage];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithStore_storage_, v4, v5);

  return v6;
}

id sub_2302B0F20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2300557A4(a1, 0x277D44898, &qword_27DB19228, 0x277D448D0, type metadata accessor for REMTemplate_Codable);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_2302B0FC0(void *a1, SEL *a2, SEL *a3, SEL *a4, SEL *a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = [a1 store];
  v13 = [a1 *a2];
  v14 = [a1 storage];
  v19.receiver = v11;
  v19.super_class = v5;
  v15 = objc_msgSendSuper2(&v19, *a3, v12, v13, v14);

  v16 = v15;
  v17 = [a1 *a4];
  [v16 *a5];

  return v16;
}

id sub_2302B1104(void *a1, SEL *a2, SEL *a3, SEL *a4, SEL *a5)
{
  ObjectType = swift_getObjectType();
  v12 = [a1 store];
  v13 = [a1 *a2];
  v14 = [a1 storage];
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, *a3, v12, v13, v14);

  v16 = v15;
  v17 = [a1 *a4];
  [v16 *a5];

  return v16;
}

id sub_2302B1230(void *a1, void *a2, void *a3, SEL *a4)
{
  v8 = [objc_allocWithZone(v4) *a4];

  return v8;
}

id sub_2302B12A8(void *a1, void *a2, void *a3, SEL *a4)
{
  v11.receiver = v4;
  v11.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v11, *a4, a1, a2, a3);

  return v9;
}

id _s19ReminderKitInternal18REMAccount_CodableC5store7storageACSo8REMStoreC_So0D7StorageCtcfc_0(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithStore_storage_, a1, a2);

  return v5;
}

id REMReminder_Codable.__allocating_init(store:account:storage:)(void *a1, void *a2, void *a3)
{
  v7 = [objc_allocWithZone(v3) initWithStore:a1 account:a2 storage:a3];

  return v7;
}

id REMReminder_Codable.init(store:account:storage:)(void *a1, void *a2, void *a3)
{
  v9.receiver = v3;
  v9.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v9, sel_initWithStore_account_storage_, a1, a2, a3);

  return v7;
}

uint64_t *sub_2302B14B4@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  result = sub_2302BC944(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id REMReminder.codable.getter()
{
  v1 = type metadata accessor for REMReminder_Codable();
  v2 = objc_allocWithZone(v1);
  v3 = [v0 store];
  v4 = [v0 list];
  v5 = [v0 storage];
  v10.receiver = v2;
  v10.super_class = v1;
  v6 = objc_msgSendSuper2(&v10, sel_initWithStore_list_storage_, v3, v4, v5);

  v7 = v6;
  v8 = [v0 parentReminder];
  [v7 setParentReminder_];

  return v7;
}

id REMColor_Codable.init(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  [a1 red];
  v5 = v4;
  [a1 green];
  v7 = v6;
  [a1 blue];
  v9 = v8;
  [a1 alpha];
  v11 = v10;
  v12 = [a1 colorRGBSpace];
  v13 = [a1 daSymbolicColorName];
  if (!v13)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v13 = sub_23030F8B8();
  }

  v14 = [a1 daHexString];
  if (!v14)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v14 = sub_23030F8B8();
  }

  v15 = [a1 ckSymbolicColorName];
  if (!v15)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v15 = sub_23030F8B8();
  }

  v18.receiver = v1;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithRed_green_blue_alpha_colorSpace_daSymbolicColorName_daHexString_ckSymbolicColorName_, v12, v13, v14, v15, v5, v7, v9, v11);

  return v16;
}

id REMColor_Codable.init(red:green:blue:alpha:colorSpace:daSymbolicColorName:daHexString:ckSymbolicColorName:)(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  ObjectType = swift_getObjectType();
  if (a7)
  {
    v21 = sub_23030F8B8();

    if (a9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v22 = 0;
    if (a11)
    {
      goto LABEL_4;
    }

LABEL_7:
    v23 = 0;
    goto LABEL_8;
  }

  v21 = 0;
  if (!a9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v22 = sub_23030F8B8();

  if (!a11)
  {
    goto LABEL_7;
  }

LABEL_4:
  v23 = sub_23030F8B8();

LABEL_8:
  v26.receiver = v11;
  v26.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v26, sel_initWithRed_green_blue_alpha_colorSpace_daSymbolicColorName_daHexString_ckSymbolicColorName_, a1, v21, v22, v23, a2, a3, a4, a5);

  return v24;
}

objc_class *REMColor_Codable.__allocating_init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB191E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD54C();
  sub_230311428();
  if (!v2)
  {
    v34 = 0;
    sub_230310CB8();
    v10 = v9;
    v33 = 1;
    sub_230310CB8();
    v12 = v11;
    v32 = 2;
    sub_230310CB8();
    v14 = v13;
    v31 = 3;
    sub_230310CB8();
    v16 = v15;
    v30 = 4;
    v17 = sub_230310CD8();
    v29 = 5;
    v26 = sub_230310C98();
    v28 = 6;
    v25 = sub_230310C98();
    v27 = 7;
    v23 = sub_230310C98();
    v24 = objc_allocWithZone(v1);
    v26 = sub_23030F8B8();

    v19 = sub_23030F8B8();

    v20 = sub_23030F8B8();

    v21 = v17;
    v22 = v26;
    v3 = [v24 initWithRed:v21 green:v26 blue:v19 alpha:v20 colorSpace:v10 daSymbolicColorName:v12 daHexString:v14 ckSymbolicColorName:v16];

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t REMColor_Codable.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB191F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD54C();
  sub_230311448();
  [v3 red];
  v13[15] = 0;
  sub_230310DC8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  [v3 green];
  v13[14] = 1;
  sub_230310DC8();
  [v3 blue];
  v13[13] = 2;
  sub_230310DC8();
  [v3 alpha];
  v13[12] = 3;
  sub_230310DC8();
  [v3 colorRGBSpace];
  v13[11] = 4;
  sub_230310DE8();
  v9 = [v3 daSymbolicColorName];
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  v13[10] = 5;
  sub_230310DA8();

  v10 = [v3 daHexString];
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  v13[9] = 6;
  sub_230310DA8();

  v12 = [v3 ckSymbolicColorName];
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  v13[8] = 7;
  sub_230310DA8();
  (*(v6 + 8))(v8, v5);
}

id REMColor_Codable.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_2302B216C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2302BF098();
  *a1 = result;
  return result;
}

void sub_2302B219C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6579570;
  v5 = 0xEB00000000676E69;
  v6 = 0x7274537865486164;
  if (v2 != 6)
  {
    v6 = 0xD000000000000013;
    v5 = 0x800000023033FA70;
  }

  v7 = 0xEA00000000006563;
  v8 = 0x617053726F6C6F63;
  if (v2 != 4)
  {
    v8 = 0xD000000000000013;
    v7 = 0x800000023033FA50;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1702194274;
  if (v2 != 2)
  {
    v10 = 0x6168706C61;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x6E65657267;
    v3 = 0xE500000000000000;
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

unint64_t sub_2302B2294()
{
  v1 = *v0;
  v2 = 6579570;
  v3 = 0x7274537865486164;
  if (v1 != 6)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x617053726F6C6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1702194274;
  if (v1 != 2)
  {
    v5 = 0x6168706C61;
  }

  if (*v0)
  {
    v2 = 0x6E65657267;
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

uint64_t sub_2302B2388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2302BF098();
  *a1 = result;
  return result;
}

uint64_t sub_2302B23B0(uint64_t a1)
{
  v2 = sub_2302BD54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302B23EC(uint64_t a1)
{
  v2 = sub_2302BD54C();

  return MEMORY[0x2821FE720](a1, v2);
}

id REMColor_Codable.__allocating_init(red:green:blue:alpha:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithRed:a1 green:a2 blue:a3 alpha:a4];
}

id REMColor_Codable.__allocating_init(red:green:blue:alpha:colorSpace:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);

  return [v11 initWithRed:a1 green:a2 blue:a3 alpha:a4 colorSpace:a5];
}

id REMColor_Codable.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2302B2738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_23030F8B8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_23030F8B8();

LABEL_6:
  v10 = [objc_allocWithZone(v5) *a5];

  return v10;
}

objc_class *sub_2302B283C@<X0>(void *a1@<X0>, objc_class **a2@<X8>)
{
  result = REMColor_Codable.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id REMStructuredLocation_Codable.init(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [a1 title];
  v5 = [a1 locationUID];
  [a1 latitude];
  v7 = v6;
  [a1 longitude];
  v9 = v8;
  [a1 radius];
  v11 = v10;
  v12 = [a1 address];
  v13 = [a1 routing];
  v14 = [a1 referenceFrameString];
  v15 = [a1 contactLabel];
  v16 = [a1 mapKitHandle];
  if (v16)
  {
    v17 = v16;
    v32 = v15;
    v33 = v14;
    v18 = v12;
    v19 = ObjectType;
    v20 = v4;
    v21 = sub_23030EA18();
    v22 = v13;
    v23 = v5;
    v24 = v1;
    v26 = v25;

    v27 = sub_23030E9F8();
    v28 = v21;
    v4 = v20;
    ObjectType = v19;
    v12 = v18;
    v29 = v26;
    v1 = v24;
    v5 = v23;
    v13 = v22;
    v15 = v32;
    v14 = v33;
    sub_23005FE3C(v28, v29);
  }

  else
  {
    v27 = 0;
  }

  v34.receiver = v1;
  v34.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v34, sel_initWithTitle_locationUID_latitude_longitude_radius_address_routing_referenceFrameString_contactLabel_mapKitHandle_, v4, v5, v12, v13, v14, v15, v7, v9, v11, v27);

  return v30;
}

id REMStructuredLocation_Codable.__allocating_init(title:locationUID:latitude:longitude:radius:address:routing:referenceFrameString:contactLabel:mapKitHandle:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  if (a5)
  {
    v24 = sub_23030F8B8();

    if (a7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = 0;
    if (a7)
    {
LABEL_3:
      v25 = sub_23030F8B8();

      if (a9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v25 = 0;
  if (a9)
  {
LABEL_4:
    v26 = sub_23030F8B8();

    v27 = a13;
    if (a11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v26 = 0;
  v27 = a13;
  if (a11)
  {
LABEL_5:
    v28 = sub_23030F8B8();

    v29 = a15;
    if (v27)
    {
      goto LABEL_6;
    }

LABEL_12:
    v30 = 0;
    v31 = a17;
    if (v29)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v28 = 0;
  v29 = a15;
  if (!v27)
  {
    goto LABEL_12;
  }

LABEL_6:
  v30 = sub_23030F8B8();

  v31 = a17;
  if (v29)
  {
LABEL_7:
    v32 = sub_23030F8B8();

    goto LABEL_14;
  }

LABEL_13:
  v32 = 0;
LABEL_14:
  if (v31 >> 60 == 15)
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_23030E9F8();
    sub_230122604(a16, v31);
  }

  v34 = [objc_allocWithZone(v17) initWithTitle:v24 locationUID:v25 latitude:v26 longitude:v28 radius:v30 address:v32 routing:a1 referenceFrameString:a2 contactLabel:a3 mapKitHandle:v33];

  return v34;
}

id REMStructuredLocation_Codable.init(title:locationUID:latitude:longitude:radius:address:routing:referenceFrameString:contactLabel:mapKitHandle:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  ObjectType = swift_getObjectType();
  if (a5)
  {
    v25 = sub_23030F8B8();

    if (a7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = 0;
    if (a7)
    {
LABEL_3:
      v26 = sub_23030F8B8();

      if (a9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v26 = 0;
  if (a9)
  {
LABEL_4:
    v27 = sub_23030F8B8();

    v28 = a13;
    if (a11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v27 = 0;
  v28 = a13;
  if (a11)
  {
LABEL_5:
    v29 = sub_23030F8B8();

    v30 = a15;
    if (v28)
    {
      goto LABEL_6;
    }

LABEL_12:
    v31 = 0;
    v33 = a16;
    v32 = a17;
    if (v30)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v29 = 0;
  v30 = a15;
  if (!v28)
  {
    goto LABEL_12;
  }

LABEL_6:
  v31 = sub_23030F8B8();

  v33 = a16;
  v32 = a17;
  if (v30)
  {
LABEL_7:
    v34 = sub_23030F8B8();

    goto LABEL_14;
  }

LABEL_13:
  v34 = 0;
LABEL_14:
  if (v32 >> 60 == 15)
  {
    v35 = 0;
  }

  else
  {
    sub_23005FAD4(v33, v32);
    v35 = sub_23030E9F8();
    sub_230122604(v33, v32);
  }

  v39.receiver = v17;
  v39.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v39, sel_initWithTitle_locationUID_latitude_longitude_radius_address_routing_referenceFrameString_contactLabel_mapKitHandle_, v25, v26, v27, v29, v31, v34, a1, a2, a3, v35);
  sub_230122604(v33, v32);

  return v36;
}

void *REMStructuredLocation_Codable.__allocating_init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB191F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD5C4();
  sub_230311428();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v48) = 0;
    sub_230310C48();
    v11 = v10;
    LOBYTE(v48) = 1;
    sub_230310C48();
    v46 = v12;
    LOBYTE(v48) = 2;
    sub_230310CB8();
    v14 = v13;
    LOBYTE(v48) = 3;
    sub_230310CB8();
    v16 = v15;
    LOBYTE(v48) = 4;
    sub_230310CB8();
    v18 = v17;
    LOBYTE(v48) = 5;
    v44 = sub_230310C48();
    v45 = v20;
    LOBYTE(v48) = 6;
    v42 = sub_230310C48();
    v43 = v21;
    LOBYTE(v48) = 7;
    v37 = sub_230310C48();
    v41 = v22;
    v39 = v3;
    LOBYTE(v48) = 8;
    v38 = sub_230310C48();
    v40 = v23;
    v47 = 9;
    sub_23005F150();
    sub_230310C88();
    v35 = v48;
    v36 = v49;
    if (v11)
    {
      v34 = sub_23030F8B8();
    }

    else
    {
      v34 = 0;
    }

    if (v46)
    {
      v33 = sub_23030F8B8();
    }

    else
    {
      v33 = 0;
    }

    if (v45)
    {
      v32 = sub_23030F8B8();
    }

    else
    {
      v32 = 0;
    }

    if (v43)
    {
      v46 = sub_23030F8B8();
    }

    else
    {
      v46 = 0;
    }

    if (v41)
    {
      v45 = sub_23030F8B8();
    }

    else
    {
      v45 = 0;
    }

    if (v40)
    {
      v44 = sub_23030F8B8();
    }

    else
    {
      v44 = 0;
    }

    if (v36 >> 60 == 15)
    {
      v24 = 0;
    }

    else
    {
      v25 = v35;
      v26 = v36;
      sub_23005FAD4(v35, v36);
      v24 = sub_23030E9F8();
      sub_230122604(v25, v26);
    }

    v27 = objc_allocWithZone(v39);
    v43 = v24;
    v31 = v24;
    v28 = v33;
    v29 = v34;
    v30 = v32;
    v9 = [v27 initWithTitle:v34 locationUID:v33 latitude:v32 longitude:v46 radius:v45 address:v44 routing:v14 referenceFrameString:v16 contactLabel:v18 mapKitHandle:v31];

    sub_230122604(v35, v36);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t REMStructuredLocation_Codable.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19200);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD5C4();
  sub_230311448();
  v9 = [v3 title];
  if (v9)
  {
    v10 = v9;
    v11 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v52 = v11;
  v53 = v13;
  v54 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB148A8);
  sub_23021570C();
  sub_230310DF8();
  if (v2)
  {
  }

  else
  {

    v14 = [v3 locationUID];
    if (v14)
    {
      v51 = v8;
      v15 = v3;
      v16 = v14;
      v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v19 = v18;

      v3 = v15;
      v8 = v51;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v52 = v17;
    v53 = v19;
    v54 = 1;
    sub_230310DF8();

    [v3 latitude];
    LOBYTE(v52) = 2;
    sub_230310DC8();
    [v3 longitude];
    LOBYTE(v52) = 3;
    sub_230310DC8();
    [v3 radius];
    LOBYTE(v52) = 4;
    sub_230310DC8();
    v21 = [v3 address];
    v51 = v8;
    if (v21)
    {
      v22 = v3;
      v23 = v21;
      v24 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v26 = v25;

      v3 = v22;
      v8 = v51;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v52 = v24;
    v53 = v26;
    v54 = 5;
    sub_230310DF8();

    v27 = [v3 routing];
    if (v27)
    {
      v28 = v3;
      v29 = v27;
      v30 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v32 = v31;

      v3 = v28;
      v8 = v51;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v52 = v30;
    v53 = v32;
    v54 = 6;
    sub_230310DF8();

    v33 = [v3 referenceFrameString];
    if (v33)
    {
      v34 = v3;
      v35 = v33;
      v36 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v38 = v37;

      v3 = v34;
      v8 = v51;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v52 = v36;
    v53 = v38;
    v54 = 7;
    sub_230310DF8();

    v39 = [v3 contactLabel];
    if (v39)
    {
      v40 = v3;
      v41 = v39;
      v42 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v44 = v43;

      v3 = v40;
      v8 = v51;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v52 = v42;
    v53 = v44;
    v54 = 8;
    sub_230310DF8();

    v45 = [v3 mapKitHandle];
    if (v45)
    {
      v46 = v45;
      v47 = sub_23030EA18();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0xF000000000000000;
    }

    v52 = v47;
    v53 = v49;
    v54 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19208);
    sub_2302BD618();
    sub_230310DF8();
    sub_230122604(v52, v53);
  }

  return (*(v6 + 8))(v8, v5);
}

ReminderKitInternal::REMStructuredLocation_Codable::CodingKeys_optional __swiftcall REMStructuredLocation_Codable.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReminderKitInternal::REMStructuredLocation_Codable::CodingKeys_optional __swiftcall REMStructuredLocation_Codable.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = REMStructuredLocation_Codable.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_2302B3E40()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000014;
    v7 = 0x4C746361746E6F63;
    if (v1 != 8)
    {
      v7 = 0x614874694B70616DLL;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x73736572646461;
    if (v1 != 5)
    {
      v8 = 0x676E6974756F72;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x656C746974;
    v3 = 0x656475746974616CLL;
    v4 = 0x64757469676E6F6CLL;
    if (v1 != 3)
    {
      v4 = 0x737569646172;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6E6F697461636F6CLL;
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

uint64_t sub_2302B3FE4@<X0>(uint64_t *a1@<X8>)
{
  result = REMStructuredLocation_Codable.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ReminderKitInternal::REMStructuredLocation_Codable::CodingKeys_optional sub_2302B4010@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = REMStructuredLocation_Codable.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2302B4048(uint64_t a1)
{
  v2 = sub_2302BD5C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302B4084(uint64_t a1)
{
  v2 = sub_2302BD5C4();

  return MEMORY[0x2821FE720](a1, v2);
}

id REMStructuredLocation_Codable.__allocating_init(title:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_23030F8B8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(v2) initWithTitle_];

  return v4;
}

id REMStructuredLocation_Codable.__allocating_init(title:locationUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_23030F8B8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_23030F8B8();

LABEL_6:
  v8 = [objc_allocWithZone(v4) initWithTitle:v6 locationUID:v7];

  return v8;
}

void *sub_2302B42EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = REMStructuredLocation_Codable.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id REMReminderFetchOptions_Codable.__allocating_init(_:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  [v3 copyFromFetchOptions_];

  return v3;
}

id REMReminderFetchOptions_Codable.init(_:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  [v3 copyFromFetchOptions_];

  return v3;
}

id REMReminderFetchOptions_Codable.__allocating_init(includeConcealed:includeDueDateDeltaAlerts:)(char a1, char a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithIncludeConcealed:a1 & 1 includeDueDateDeltaAlerts:a2 & 1];
}

id REMReminderFetchOptions_Codable.init(includeConcealed:includeDueDateDeltaAlerts:)(char a1, char a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_initWithIncludeConcealed_includeDueDateDeltaAlerts_, a1 & 1, a2 & 1);
}

unint64_t REMReminderFetchOptions_Codable.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2302B457C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "ring";
  }

  else
  {
    v4 = "includeConcealed";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000019;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "includeConcealed";
  }

  else
  {
    v7 = "ring";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_230311048();
  }

  return v9 & 1;
}

uint64_t sub_2302B462C()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302B46B0()
{
  sub_23030F9C8();
}

uint64_t sub_2302B4720()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_2302B47AC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "includeConcealed";
  }

  else
  {
    v3 = "ring";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_2302B47F0()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2302B483C(uint64_t a1)
{
  v2 = sub_2302BD69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302B4878(uint64_t a1)
{
  v2 = sub_2302BD69C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *REMReminderFetchOptions_Codable.__allocating_init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19210);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD69C();
  sub_230311428();
  if (!v2)
  {
    v14 = 0;
    v10 = sub_230310CA8();
    v13 = 1;
    v9 = [objc_allocWithZone(v3) initWithIncludeConcealed:v10 & 1 includeDueDateDeltaAlerts:sub_230310CA8() & 1];
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t REMReminderFetchOptions_Codable.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19220);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD69C();
  sub_230311448();
  [v3 includeConcealed];
  v10[15] = 0;
  sub_230310DB8();
  if (!v2)
  {
    [v3 includeDueDateDeltaAlerts];
    v10[14] = 1;
    sub_230310DB8();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_2302B4C58@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = REMReminderFetchOptions_Codable.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2302B4CB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t sub_2302B4D10(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_2302B4DA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t sub_2302B4E40(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

void sub_2302B4ED8(void *a1)
{
  v4 = [a1 optionalObjectID];
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    v6 = *(v1 + 24);
    if (*(v6 + 16))
    {

      v7 = sub_230059108(v5);
      if (v8)
      {
        sub_23004D5CC(*(v6 + 56) + 32 * v7, &v19);

        sub_230061918(&v19, &qword_27DB14810);
        return;
      }
    }

    v19 = 0u;
    v20 = 0u;
    sub_230061918(&v19, &qword_27DB14810);
    v13 = [a1 customContext];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 account];

      if (v15)
      {
        sub_230061978(v15);
        if (v2)
        {
LABEL_18:

          return;
        }
      }
    }

    v16 = [a1 customContext];
    if (v16)
    {
      v17 = v16;
      v15 = [v16 parentList];

      if (v15)
      {
        sub_23006252C(v15);
        if (v2)
        {
          goto LABEL_18;
        }
      }
    }

    v18 = [a1 storage];
    *(&v20 + 1) = sub_23004CBA4(0, &qword_280C9C2B8);
    *&v19 = v18;
    swift_beginAccess();
    sub_23004BD34(&v19, v5);
    swift_endAccess();
  }

  else
  {
    if (qword_27DB13D00 != -1)
    {
      swift_once();
    }

    v9 = sub_23030EF48();
    __swift_project_value_buffer(v9, qword_27DB191B8);
    v10 = sub_23030EF38();
    v11 = sub_230310298();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      MEMORY[0x231914180](v12, -1, -1);
    }
  }
}

void sub_2302B51E4(void *a1)
{
  v4 = [a1 optionalObjectID];
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    v6 = *(v1 + 24);
    if (*(v6 + 16))
    {

      v7 = sub_230059108(v5);
      if (v8)
      {
        sub_23004D5CC(*(v6 + 56) + 32 * v7, &v18);

        sub_230061918(&v18, &qword_27DB14810);
        return;
      }
    }

    v18 = 0u;
    v19 = 0u;
    sub_230061918(&v18, &qword_27DB14810);
    v13 = [a1 account];
    sub_230061978(v13);
    if (v2)
    {
    }

    else
    {

      v14 = [a1 list];
      sub_23006252C(v14);

      v15 = [a1 parentReminder];
      if (v15)
      {
        v16 = v15;
        sub_2302B51E4();
      }

      v17 = [a1 storage];
      *(&v19 + 1) = sub_23004CBA4(0, &qword_280C9C2C0);
      *&v18 = v17;
      swift_beginAccess();
      sub_23004BD34(&v18, v5);
      swift_endAccess();
    }
  }

  else
  {
    if (qword_27DB13D00 != -1)
    {
      swift_once();
    }

    v9 = sub_23030EF48();
    __swift_project_value_buffer(v9, qword_27DB191B8);
    v10 = sub_23030EF38();
    v11 = sub_230310298();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      MEMORY[0x231914180](v12, -1, -1);
    }
  }
}

void sub_2302B54E0(void *a1)
{
  v3 = sub_230055FDC(a1, &qword_280C9C2B8);
  if (!v2)
  {
    v4 = v3;
    v5 = [v3 smartListType];
    v6 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v8 = v7;
    if (v6 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_230311048();

      if ((v11 & 1) == 0)
      {
        [objc_allocWithZone(type metadata accessor for REMSmartList_Codable()) initWithStore:*(v1 + 16) storage:v4];

        return;
      }
    }

    v12 = [v4 accountID];
    v13 = sub_230055FDC(v12, &qword_280C9C2C8);
    v14 = *(v1 + 16);
    v15 = [objc_allocWithZone(type metadata accessor for REMAccount_Codable()) initWithStore:v14 storage:v13];

    v16 = [v4 parentListID];
    if (v16)
    {
      v17 = v16;
      v18 = sub_230058EA8(v16);

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
    v21 = v14;
    v22 = v15;
    [v20 initWithStore:v21 account:v22 parentList:v19 storage:v4];
  }
}

uint64_t sub_2302B575C(void *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = sub_230055FDC(a1, a2);
  if (!v5)
  {
    v8 = result;
    v9 = [objc_allocWithZone(a4()) initWithStore:*(v4 + 16) storage:result];

    return v9;
  }

  return result;
}

id sub_2302B57C8(void *a1)
{
  v4 = sub_230055FDC(a1, &qword_280C9C2C0);
  if (!v2)
  {
    v5 = v4;
    v6 = [v4 listID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_230058EA8(v6);
      v3 = [objc_allocWithZone(type metadata accessor for REMReminder_Codable()) initWithStore:*(v1 + 16) list:v8 storage:v5];
    }

    else
    {
      v3 = [objc_allocWithZone(type metadata accessor for REMReminder_Codable()) initWithStore:*(v1 + 16) storage:v5];
    }

    v9 = [v5 parentReminderID];
    if (v9)
    {
      v10 = v9;
      v12 = sub_2302B57C8();
      [v3 setParentReminder_];
    }
  }

  return v3;
}

uint64_t REMStoreObjectsContainer.deinit()
{

  return v0;
}

id REMHashtagLabel.codable.getter()
{
  v1 = v0;
  v2 = type metadata accessor for REMHashtagLabel_Codable();
  v3 = objc_allocWithZone(v2);
  v4 = [v1 name];
  if (!v4)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v4 = sub_23030F8B8();
  }

  v7.receiver = v3;
  v7.super_class = v2;
  v5 = objc_msgSendSuper2(&v7, sel_initWithName_, v4);

  return v5;
}

id REMHashtagLabel_Codable.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [a1 name];
  if (!v4)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v4 = sub_23030F8B8();
  }

  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_initWithName_, v4);

  return v5;
}

id REMHashtagLabel_Codable.init(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [a1 name];
  if (!v4)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v4 = sub_23030F8B8();
  }

  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithName_, v4);

  return v5;
}

id REMHashtagLabel_Codable.init(name:)()
{
  ObjectType = swift_getObjectType();
  v2 = sub_23030F8B8();

  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_initWithName_, v2);

  return v3;
}

void *REMHashtagLabel_Codable.__allocating_init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19230);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD6F0();
  sub_230311428();
  if (!v2)
  {
    sub_230310C98();
    v11 = objc_allocWithZone(v3);
    v12 = sub_23030F8B8();

    v9 = [v11 initWithName_];

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t REMHashtagLabel_Codable.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19240);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD6F0();
  sub_230311448();
  v8 = [v2 name];
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  sub_230310DA8();
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_2302B5F74@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2302B5FCC(uint64_t a1)
{
  v2 = sub_2302BD6F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302B6008(uint64_t a1)
{
  v2 = sub_2302BD6F0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2302B62B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = REMHashtagLabel_Codable.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id REMHashtagLabelDetailed_Codable.init(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_23030EBB8();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23030EB58();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = [a1 name];
  if (!v12)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v12 = sub_23030F8B8();
  }

  v13 = [a1 canonicalName];
  v14 = [a1 firstOccurrenceCreationDate];
  if (v14)
  {
    v15 = v14;
    sub_23030EB18();

    v16 = sub_23030EAA8();
    (*(v6 + 8))(v11, v5);
  }

  else
  {
    v16 = 0;
  }

  v17 = [a1 recencyDate];
  if (v17)
  {
    v18 = v17;
    sub_23030EB18();

    v19 = sub_23030EAA8();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v19 = 0;
  }

  v20 = [a1 uuidForChangeTracking];
  if (v20)
  {
    v21 = v20;
    sub_23030EBA8();

    v22 = sub_23030EB88();
    (*(v25 + 8))(v4, v26);
  }

  else
  {
    v22 = 0;
  }

  v29.receiver = v28;
  v29.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v29, sel_initWithName_canonicalName_firstOccurrenceCreationDate_recencyDate_uuidForChangeTracking_, v12, v13, v16, v19, v22);

  return v23;
}

id _s19ReminderKitInternal23REMHashtagLabel_CodableC4name13canonicalName27firstOccurrenceCreationDate07recencyM021uuidForChangeTrackingACSS_SSSg10Foundation0M0VSgAmJ4UUIDVSgtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_23030F8B8();

  if (a4)
  {
    v12 = sub_23030F8B8();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_23030EB58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = 0;
  if (v15(a5, 1, v13) != 1)
  {
    v16 = sub_23030EAA8();
    (*(v14 + 8))(a5, v13);
  }

  if (v15(a6, 1, v13) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_23030EAA8();
    (*(v14 + 8))(a6, v13);
  }

  v18 = sub_23030EBB8();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(a7, 1, v18) != 1)
  {
    v20 = sub_23030EB88();
    (*(v19 + 8))(a7, v18);
  }

  v21 = [objc_allocWithZone(v23) initWithName:v11 canonicalName:v12 firstOccurrenceCreationDate:v16 recencyDate:v17 uuidForChangeTracking:v20];

  return v21;
}

id REMHashtagLabelDetailed_Codable.init(name:canonicalName:firstOccurrenceCreationDate:recencyDate:uuidForChangeTracking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v33 = sub_23030F8B8();

  v19 = a7;
  if (a4)
  {
    v20 = sub_23030F8B8();
  }

  else
  {
    v20 = 0;
  }

  v36 = a5;
  sub_230055F74(a5, v18, &unk_27DB15AA0);
  v21 = sub_23030EB58();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = 0;
  if (v23(v18, 1, v21) != 1)
  {
    v24 = sub_23030EAA8();
    (*(v22 + 8))(v18, v21);
  }

  sub_230055F74(v37, v16, &unk_27DB15AA0);
  if (v23(v16, 1, v21) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_23030EAA8();
    (*(v22 + 8))(v16, v21);
  }

  sub_230055F74(v19, v12, &qword_27DB14800);
  v26 = sub_23030EBB8();
  v27 = *(v26 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v12, 1, v26) != 1)
  {
    v28 = sub_23030EB88();
    (*(v27 + 8))(v12, v26);
  }

  v38.receiver = v35;
  v38.super_class = ObjectType;
  v29 = v33;
  v30 = objc_msgSendSuper2(&v38, sel_initWithName_canonicalName_firstOccurrenceCreationDate_recencyDate_uuidForChangeTracking_, v33, v20, v24, v25, v28);

  sub_230061918(v19, &qword_27DB14800);
  sub_230061918(v37, &unk_27DB15AA0);
  sub_230061918(v36, &unk_27DB15AA0);
  return v30;
}

void *REMHashtagLabelDetailed_Codable.__allocating_init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v56 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v58 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v46 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19248);
  v59 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = a1[3];
  v61 = a1;
  v22 = __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_2302BD744();
  v23 = v60;
  sub_230311428();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  else
  {
    v54 = v12;
    v55 = v17;
    v60 = v9;
    v24 = v59;
    v66 = 0;
    v25 = sub_230310C98();
    v27 = v26;
    v28 = v25;
    v65 = 1;
    v49 = sub_230310C48();
    v50 = v28;
    v52 = v29;
    v53 = v27;
    v30 = sub_23030EB58();
    v64 = 2;
    sub_230055F2C(&qword_280C9B738, 255, MEMORY[0x277CC9578]);
    v51 = v30;
    sub_230310C88();
    v63 = 3;
    sub_230310C88();
    v48 = v15;
    v31 = sub_23030EBB8();
    v62 = 4;
    sub_230055F2C(&unk_280C9C5F0, 255, MEMORY[0x277CC95F0]);
    sub_230310C88();
    v32 = v55;
    v47 = v31;
    v50 = sub_23030F8B8();

    if (v52)
    {
      v53 = sub_23030F8B8();
    }

    else
    {
      v53 = 0;
    }

    v34 = v54;
    sub_230055F74(v32, v54, &unk_27DB15AA0);
    v35 = *(v51 - 8);
    v36 = *(v35 + 48);
    if (v36(v34, 1) == 1)
    {
      v52 = 0;
    }

    else
    {
      v52 = sub_23030EAA8();
      (*(v35 + 8))(v34, v51);
    }

    v37 = v60;
    sub_230055F74(v48, v60, &unk_27DB15AA0);
    if ((v36)(v37, 1, v51) == 1)
    {
      v54 = 0;
    }

    else
    {
      v54 = sub_23030EAA8();
      (*(v35 + 8))(v37, v51);
    }

    v38 = v56;
    sub_230055F74(v58, v56, &qword_27DB14800);
    v39 = v47;
    v40 = *(v47 - 8);
    if ((*(v40 + 48))(v38, 1, v47) == 1)
    {
      v60 = 0;
    }

    else
    {
      v60 = sub_23030EB88();
      (*(v40 + 8))(v38, v39);
    }

    v41 = objc_allocWithZone(v57);
    v42 = v50;
    v44 = v52;
    v43 = v53;
    v45 = v54;
    v22 = [v41 initWithName:v50 canonicalName:v53 firstOccurrenceCreationDate:v52 recencyDate:v54 uuidForChangeTracking:v60];

    sub_230061918(v58, &qword_27DB14800);
    sub_230061918(v48, &unk_27DB15AA0);
    sub_230061918(v55, &unk_27DB15AA0);
    (*(v24 + 8))(v20, v18);
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  return v22;
}

uint64_t REMHashtagLabelDetailed_Codable.encode(to:)(void *a1)
{
  v2 = v1;
  v59 = sub_23030EBB8();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v58);
  v60 = &v53 - v5;
  v6 = sub_23030EB58();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v8 = MEMORY[0x28223BE20](v64);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19258);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD744();
  sub_230311448();
  v17 = [v2 name];
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  LOBYTE(v67) = 0;
  v18 = v66;
  sub_230310DA8();
  if (v18)
  {
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v53 = v10;
    v54 = v12;
    v56 = 0;
    v20 = v16;
    v66 = v14;

    v55 = v2;
    v21 = [v2 canonicalName];
    if (v21)
    {
      v22 = v21;
      v23 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v26 = v13;
    v67 = v23;
    v68 = v25;
    v69 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB148A8);
    sub_23021570C();
    v27 = v56;
    sub_230310DF8();
    v28 = v65;
    if (v27)
    {

      return (*(v66 + 8))(v20, v26);
    }

    else
    {

      v29 = v55;
      v30 = [v55 firstOccurrenceCreationDate];
      if (v30)
      {
        v31 = v30;
        sub_23030EB18();

        v32 = v62;
        v33 = v54;
        v34 = v28;
        v35 = v63;
        (*(v62 + 32))(v54, v34, v63);
        v36 = 0;
      }

      else
      {
        v36 = 1;
        v32 = v62;
        v35 = v63;
        v33 = v54;
      }

      v37 = *(v32 + 56);
      v37(v33, v36, 1, v35);
      LOBYTE(v67) = 2;
      sub_2300E0C1C();
      sub_230310DF8();
      sub_230061918(v33, &unk_27DB15AA0);
      v38 = [v29 recencyDate];
      if (v38)
      {
        v39 = v65;
        v40 = v38;
        sub_23030EB18();

        v41 = v53;
        v42 = v39;
        v43 = v63;
        (*(v62 + 32))(v53, v42, v63);
        v44 = 0;
      }

      else
      {
        v44 = 1;
        v43 = v63;
        v41 = v53;
      }

      v37(v41, v44, 1, v43);
      LOBYTE(v67) = 3;
      sub_230310DF8();
      sub_230061918(v41, &unk_27DB15AA0);
      v45 = v66;
      v46 = [v55 uuidForChangeTracking];
      if (v46)
      {
        v47 = v57;
        v48 = v46;
        sub_23030EBA8();

        v50 = v60;
        v49 = v61;
        v51 = v59;
        (*(v61 + 32))(v60, v47, v59);
        v52 = 0;
      }

      else
      {
        v52 = 1;
        v51 = v59;
        v50 = v60;
        v49 = v61;
      }

      (*(v49 + 56))(v50, v52, 1, v51);
      LOBYTE(v67) = 4;
      sub_2302BD798();
      sub_230310DF8();
      sub_230061918(v50, &qword_27DB14800);
      return (*(v45 + 8))(v20, v26);
    }
  }
}

uint64_t sub_2302B7DC4()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302B7EC0()
{
  sub_23030F9C8();
}

uint64_t sub_2302B7FA8()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302B80A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2302BF0E4();
  *a1 = result;
  return result;
}

void sub_2302B80D0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0x800000023033FB20;
  v6 = 0xD00000000000001BLL;
  v7 = 0xEB00000000657461;
  v8 = 0x4479636E65636572;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x800000023033FB50;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6163696E6F6E6163;
    v3 = 0xED0000656D614E6CLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_2302B8188()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0xD00000000000001BLL;
  v4 = 0x4479636E65636572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6163696E6F6E6163;
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

uint64_t sub_2302B823C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2302BF0E4();
  *a1 = result;
  return result;
}

uint64_t sub_2302B8264(uint64_t a1)
{
  v2 = sub_2302BD744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302B82A0(uint64_t a1)
{
  v2 = sub_2302BD744();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_2302B82DC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_23030F8B8();

  v7 = [v5 *a3];

  return v7;
}

void *sub_2302B83AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = REMHashtagLabelDetailed_Codable.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id REMTemplateConfiguration.codable.getter()
{
  v1 = type metadata accessor for REMTemplateConfiguration_Codable();
  v2 = objc_allocWithZone(v1);
  v3 = [v0 sourceListID];
  v6.receiver = v2;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_initWithSourceListID_shouldSaveCompleted_, v3, [v0 shouldSaveCompleted]);

  return v4;
}

id REMTemplateConfiguration_Codable.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [a1 sourceListID];
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_initWithSourceListID_shouldSaveCompleted_, v4, [a1 shouldSaveCompleted]);

  return v5;
}

id REMTemplateConfiguration_Codable.init(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [a1 sourceListID];
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithSourceListID_shouldSaveCompleted_, v4, [a1 shouldSaveCompleted]);

  return v5;
}

id REMTemplateConfiguration_Codable.__allocating_init(sourceListID:shouldSaveCompleted:)(void *a1, char a2)
{
  v4 = [objc_allocWithZone(v2) initWithSourceListID:a1 shouldSaveCompleted:a2 & 1];

  return v4;
}

id REMTemplateConfiguration_Codable.init(sourceListID:shouldSaveCompleted:)(void *a1, char a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithSourceListID_shouldSaveCompleted_, a1, a2 & 1);

  return v5;
}

void *REMTemplateConfiguration_Codable.__allocating_init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19268);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD874();
  sub_230311428();
  if (!v2)
  {
    type metadata accessor for REMObjectID_Codable();
    v13[15] = 0;
    sub_230055F2C(&qword_280C9C5D0, v10, type metadata accessor for REMObjectID_Codable);
    sub_230310CE8();
    v11 = v14;
    v13[14] = 1;
    v9 = [objc_allocWithZone(v3) initWithSourceListID:v14 shouldSaveCompleted:sub_230310CA8() & 1];

    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t REMTemplateConfiguration_Codable.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_23030EBB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19278);
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD874();
  sub_230311448();
  v21[0] = v2;
  v11 = [v2 sourceListID];
  v12 = type metadata accessor for REMObjectID_Codable();
  v13 = objc_allocWithZone(v12);
  v14 = [v11 uuid];
  sub_23030EBA8();

  v15 = sub_23030EB88();
  (*(v5 + 8))(v7, v4);
  v16 = [v11 entityName];
  if (!v16)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v16 = sub_23030F8B8();
  }

  v24.receiver = v13;
  v24.super_class = v12;
  v17 = objc_msgSendSuper2(&v24, sel_initWithUUID_entityName_, v15, v16);

  v25 = v17;
  v23 = 0;
  sub_230055F2C(qword_280C9BFD8, v18, type metadata accessor for REMObjectID_Codable);
  v19 = v21[1];
  sub_230310DF8();

  if (!v19)
  {
    [v21[0] shouldSaveCompleted];
    LOBYTE(v25) = 1;
    sub_230310DB8();
  }

  return (*(v22 + 8))(v10, v8);
}

uint64_t REMTemplateConfiguration_Codable.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x694C656372756F73;
  }
}

uint64_t sub_2302B8C84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x694C656372756F73;
  }

  if (v2)
  {
    v4 = 0xEC00000044497473;
  }

  else
  {
    v4 = 0x800000023033FB80;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x694C656372756F73;
  }

  if (*a2)
  {
    v6 = 0x800000023033FB80;
  }

  else
  {
    v6 = 0xEC00000044497473;
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

uint64_t sub_2302B8D38()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302B8DC8()
{
  sub_23030F9C8();
}

uint64_t sub_2302B8E44()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_2302B8EDC(unint64_t *a1@<X8>)
{
  v2 = 0x800000023033FB80;
  v3 = 0x694C656372756F73;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEC00000044497473;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2302B8F28()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x694C656372756F73;
  }
}

uint64_t sub_2302B8F7C(uint64_t a1)
{
  v2 = sub_2302BD874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302B8FB8(uint64_t a1)
{
  v2 = sub_2302BD874();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2302B8FF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = REMTemplateConfiguration_Codable.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id REMTemplatePublicLinkConfiguration.codable.getter()
{
  v1 = type metadata accessor for REMTemplatePublicLinkConfiguration_Codable();
  v3.receiver = objc_allocWithZone(v1);
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_initWithShouldIncludeHashtags_shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval_shouldIncludeAlarmTriggersBasedOnLocationOrVehicle_, [v0 shouldIncludeHashtags], objc_msgSend(v0, sel_shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval), objc_msgSend(v0, sel_shouldIncludeAlarmTriggersBasedOnLocationOrVehicle));
}

id REMTemplatePublicLinkConfiguration_Codable.__allocating_init(_:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_initWithShouldIncludeHashtags_shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval_shouldIncludeAlarmTriggersBasedOnLocationOrVehicle_, [a1 shouldIncludeHashtags], objc_msgSend(a1, sel_shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval), objc_msgSend(a1, sel_shouldIncludeAlarmTriggersBasedOnLocationOrVehicle));

  return v3;
}

id REMTemplatePublicLinkConfiguration_Codable.init(_:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithShouldIncludeHashtags_shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval_shouldIncludeAlarmTriggersBasedOnLocationOrVehicle_, [a1 shouldIncludeHashtags], objc_msgSend(a1, sel_shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval), objc_msgSend(a1, sel_shouldIncludeAlarmTriggersBasedOnLocationOrVehicle));

  return v3;
}

id REMTemplatePublicLinkConfiguration_Codable.__allocating_init(shouldIncludeHashtags:shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:)(char a1, char a2, char a3)
{
  v7 = objc_allocWithZone(v3);

  return [v7 initWithShouldIncludeHashtags:a1 & 1 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:a2 & 1 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:a3 & 1];
}

id REMTemplatePublicLinkConfiguration_Codable.init(shouldIncludeHashtags:shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:)(char a1, char a2, char a3)
{
  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v8, sel_initWithShouldIncludeHashtags_shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval_shouldIncludeAlarmTriggersBasedOnLocationOrVehicle_, a1 & 1, a2 & 1, a3 & 1);
}

void *REMTemplatePublicLinkConfiguration_Codable.__allocating_init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19280);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD8EC();
  sub_230311428();
  if (!v2)
  {
    v16 = 0;
    v10 = sub_230310CA8();
    v15 = 1;
    v11 = sub_230310CA8();
    v14 = 2;
    v9 = [objc_allocWithZone(v3) initWithShouldIncludeHashtags:v10 & 1 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:v11 & 1 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:sub_230310CA8() & 1];
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t REMTemplatePublicLinkConfiguration_Codable.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19290);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD8EC();
  sub_230311448();
  [v3 shouldIncludeHashtags];
  v10[15] = 0;
  sub_230310DB8();
  if (!v2)
  {
    [v3 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval];
    v10[14] = 1;
    sub_230310DB8();
    [v3 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle];
    v10[13] = 2;
    sub_230310DB8();
  }

  return (*(v6 + 8))(v8, v5);
}

ReminderKitInternal::REMTemplatePublicLinkConfiguration_Codable::CodingKeys_optional __swiftcall REMTemplatePublicLinkConfiguration_Codable.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t REMTemplatePublicLinkConfiguration_Codable.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000033;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000032;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2302B97CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "shouldIncludeHashtags";
  v4 = 0xD000000000000033;
  if (v2 == 1)
  {
    v5 = 0xD000000000000033;
  }

  else
  {
    v5 = 0xD000000000000032;
  }

  if (v2 == 1)
  {
    v6 = "shouldIncludeHashtags";
  }

  else
  {
    v6 = "nDateOrTimeInterval";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000015;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "shouldSaveCompleted";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000032;
    v3 = "nDateOrTimeInterval";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "shouldSaveCompleted";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230311048();
  }

  return v11 & 1;
}

uint64_t sub_2302B98A4()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302B9940()
{
  sub_23030F9C8();
}

uint64_t sub_2302B99C8()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_2302B9A6C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = "shouldIncludeHashtags";
  v4 = 0xD000000000000033;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000032;
    v3 = "nDateOrTimeInterval";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "shouldSaveCompleted";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_2302B9AC8()
{
  v1 = 0xD000000000000033;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000032;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

ReminderKitInternal::REMTemplatePublicLinkConfiguration_Codable::CodingKeys_optional sub_2302B9B20@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = REMTemplatePublicLinkConfiguration_Codable.CodingKeys.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2302B9B58(uint64_t a1)
{
  v2 = sub_2302BD8EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302B9B94(uint64_t a1)
{
  v2 = sub_2302BD8EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2302B9BD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = REMTemplatePublicLinkConfiguration_Codable.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id REMFetchResultToken_Codable.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [a1 persistentHistoryTokens];
  sub_23004CBA4(0, &qword_280C987F8);
  sub_23030F658();

  v5 = sub_23030F638();

  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_initWithPersistentHistoryTokens_, v5);

  return v6;
}

id REMFetchResultToken_Codable.init(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [a1 persistentHistoryTokens];
  sub_23004CBA4(0, &qword_280C987F8);
  sub_23030F658();

  v5 = sub_23030F638();

  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithPersistentHistoryTokens_, v5);

  return v6;
}

id REMFetchResultToken_Codable.__allocating_init(persistentHistoryTokens:)()
{
  v1 = objc_allocWithZone(v0);
  sub_23004CBA4(0, &qword_280C987F8);
  v2 = sub_23030F638();

  v3 = [v1 initWithPersistentHistoryTokens_];

  return v3;
}

id REMFetchResultToken_Codable.init(persistentHistoryTokens:)()
{
  ObjectType = swift_getObjectType();
  sub_23004CBA4(0, &qword_280C987F8);
  v2 = sub_23030F638();

  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, sel_initWithPersistentHistoryTokens_, v2);

  return v3;
}

uint64_t sub_2302B9FFC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2302BA054(uint64_t a1)
{
  v2 = sub_23005EE78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302BA090(uint64_t a1)
{
  v2 = sub_23005EE78();

  return MEMORY[0x2821FE720](a1, v2);
}

id REMDueDateDeltaInterval_Codable.__allocating_init(_:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_initWithUnit_count_, [a1 unit], objc_msgSend(a1, sel_count));

  return v3;
}

id REMDueDateDeltaInterval_Codable.init(_:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithUnit_count_, [a1 unit], objc_msgSend(a1, sel_count));

  return v3;
}

id REMDueDateDeltaInterval_Codable.__allocating_init(unit:count:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithUnit:a1 count:a2];
}

id REMDueDateDeltaInterval_Codable.init(unit:count:)(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_initWithUnit_count_, a1, a2);
}

void *REMDueDateDeltaInterval_Codable.__allocating_init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB192A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD940();
  sub_230311428();
  if (!v2)
  {
    v14 = 0;
    v10 = sub_230310CC8();
    v13 = 1;
    v9 = [objc_allocWithZone(v3) initWithUnit:v10 count:sub_230310CC8()];
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t REMDueDateDeltaInterval_Codable.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB192B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD940();
  sub_230311448();
  [v3 unit];
  v10[15] = 0;
  sub_230310DD8();
  if (!v2)
  {
    [v3 count];
    v10[14] = 1;
    sub_230310DD8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2302BA5E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E756F63;
  }

  else
  {
    v3 = 1953066613;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E756F63;
  }

  else
  {
    v5 = 1953066613;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_2302BA684()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302BA6FC()
{
  sub_23030F9C8();
}

uint64_t sub_2302BA760()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_2302BA7E0(uint64_t *a1@<X8>)
{
  v2 = 1953066613;
  if (*v1)
  {
    v2 = 0x746E756F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2302BA814()
{
  if (*v0)
  {
    return 0x746E756F63;
  }

  else
  {
    return 1953066613;
  }
}

uint64_t sub_2302BA850(uint64_t a1)
{
  v2 = sub_2302BD940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302BA88C(uint64_t a1)
{
  v2 = sub_2302BD940();

  return MEMORY[0x2821FE720](a1, v2);
}

id REMDueDateDeltaInterval_Codable.__allocating_init(unitInteger:count:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithUnitInteger:a1 count:a2];
}

void *sub_2302BA9DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = REMDueDateDeltaInterval_Codable.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id REMDueDateDeltaInterval.codable.getter()
{
  v1 = type metadata accessor for REMDueDateDeltaInterval_Codable();
  v3.receiver = objc_allocWithZone(v1);
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_initWithUnit_count_, [v0 unit], objc_msgSend(v0, sel_count));
}

void sub_2302BAB14(uint64_t a1@<X8>)
{
  strcpy(a1, "objectIDUUID");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_2302BAB38@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2302BAB90(uint64_t a1)
{
  v2 = sub_230055ED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302BABCC(uint64_t a1)
{
  v2 = sub_230055ED8();

  return MEMORY[0x2821FE720](a1, v2);
}

id REMSharedEntitySyncActivity_Codable.init(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_23030EBB8();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23030EB58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 accountIdentifier];
  if (!v9)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v9 = sub_23030F8B8();
  }

  v10 = [a1 activityDate];
  sub_23030EB18();

  v11 = sub_23030EAA8();
  (*(v6 + 8))(v8, v5);
  v25 = [a1 activityType];
  v12 = [a1 authorUserRecordIDString];
  if (!v12)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v12 = sub_23030F8B8();
  }

  v13 = [a1 ckParentCloudObjectEntityName];
  v14 = [a1 ckParentCloudObjectIdentifier];
  v15 = [a1 ckIdentifier];
  if (!v15)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v15 = sub_23030F8B8();
  }

  v16 = [a1 sharedEntityName];
  if (!v16)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v16 = sub_23030F8B8();
  }

  v17 = [a1 uuidForChangeTracking];
  if (v17)
  {
    v18 = v17;
    sub_23030EBA8();

    v19 = sub_23030EB88();
    (*(v23 + 8))(v4, v24);
  }

  else
  {
    v19 = 0;
  }

  v28.receiver = v27;
  v28.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v28, sel_initWithAccountIdentifier_activityDate_activityType_authorUserRecordIDString_ckParentCloudObjectEntityName_ckParentCloudObjectIdentifier_ckIdentifier_sharedEntityName_uuidForChangeTracking_, v9, v11, v25, v12, v13, v14, v15, v16, v19);

  return v20;
}

id REMSharedEntitySyncActivity_Codable.__allocating_init(accountIdentifier:activityDate:activityType:authorUserRecordIDString:ckParentCloudObjectEntityName:ckParentCloudObjectIdentifier:ckIdentifier:sharedEntityName:uuidForChangeTracking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v31 = sub_23030F8B8();

  v33 = a3;
  v17 = sub_23030EAA8();
  v29 = sub_23030F8B8();

  if (a8)
  {
    v18 = sub_23030F8B8();

    v19 = a15;
    if (a10)
    {
LABEL_3:
      v20 = sub_23030F8B8();

      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    v19 = a15;
    if (a10)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_6:
  v21 = sub_23030F8B8();

  v22 = sub_23030F8B8();

  v23 = sub_23030EBB8();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v19, 1, v23) != 1)
  {
    v25 = sub_23030EB88();
    (*(v24 + 8))(v19, v23);
  }

  v26 = [objc_allocWithZone(v30) initWithAccountIdentifier:v31 activityDate:v17 activityType:a4 authorUserRecordIDString:v29 ckParentCloudObjectEntityName:v18 ckParentCloudObjectIdentifier:v20 ckIdentifier:v21 sharedEntityName:v22 uuidForChangeTracking:v25];

  v27 = sub_23030EB58();
  (*(*(v27 - 8) + 8))(v33, v27);
  return v26;
}

id REMSharedEntitySyncActivity_Codable.init(accountIdentifier:activityDate:activityType:authorUserRecordIDString:ckParentCloudObjectEntityName:ckParentCloudObjectIdentifier:ckIdentifier:sharedEntityName:uuidForChangeTracking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v38 = v15;
  v39 = a4;
  v41 = a15;
  v34[2] = a13;
  v34[0] = a7;
  v34[1] = a11;
  ObjectType = swift_getObjectType();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v34 - v19;
  v36 = sub_23030F8B8();

  v40 = a3;
  v35 = sub_23030EAA8();
  v21 = sub_23030F8B8();

  if (a8)
  {
    v22 = sub_23030F8B8();

    if (a10)
    {
LABEL_3:
      v23 = sub_23030F8B8();

      goto LABEL_6;
    }
  }

  else
  {
    v22 = 0;
    if (a10)
    {
      goto LABEL_3;
    }
  }

  v23 = 0;
LABEL_6:
  v24 = sub_23030F8B8();

  v25 = sub_23030F8B8();

  sub_230055F74(v41, v20, &qword_27DB14800);
  v26 = sub_23030EBB8();
  v27 = *(v26 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v20, 1, v26) != 1)
  {
    v28 = sub_23030EB88();
    (*(v27 + 8))(v20, v26);
  }

  v42.receiver = v38;
  v42.super_class = ObjectType;
  v30 = v35;
  v29 = v36;
  v31 = objc_msgSendSuper2(&v42, sel_initWithAccountIdentifier_activityDate_activityType_authorUserRecordIDString_ckParentCloudObjectEntityName_ckParentCloudObjectIdentifier_ckIdentifier_sharedEntityName_uuidForChangeTracking_, v36, v35, v39, v21, v22, v23, v24, v25, v28);

  sub_230061918(v41, &qword_27DB14800);
  v32 = sub_23030EB58();
  (*(*(v32 - 8) + 8))(v40, v32);
  return v31;
}

void *REMSharedEntitySyncActivity_Codable.__allocating_init(from:)(void *a1)
{
  v2 = sub_23030EBB8();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23030EB58();
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB192B8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = a1[3];
  v58 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2302BD9B8();
  v14 = v57;
  sub_230311428();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    v51 = v4;
    v52 = v7;
    v57 = v5;
    v15 = v9;
    v67 = 0;
    v16 = sub_230310C98();
    v66 = 1;
    sub_230055F2C(&qword_280C9B738, 255, MEMORY[0x277CC9578]);
    sub_230310CE8();
    v65 = 2;
    v17 = sub_230310CC8();
    v50 = v16;
    v18 = v17;
    v64 = 3;
    v48 = sub_230310C98();
    v49 = v19;
    v63 = 4;
    v46 = sub_230310C48();
    v47 = v20;
    v62 = 5;
    v44 = sub_230310C48();
    v45 = v21;
    v61 = 6;
    v41 = sub_230310C98();
    v42 = v18;
    v43 = v22;
    v60 = 7;
    v39 = sub_230310C98();
    v40 = v23;
    v59 = 8;
    sub_230055F2C(&unk_280C9C5F0, 255, MEMORY[0x277CC95F0]);
    sub_230310CE8();
    v37 = v11;
    v38 = v8;
    v50 = sub_23030F8B8();

    v36 = sub_23030EAA8();
    v48 = sub_23030F8B8();

    if (v47)
    {
      v25 = sub_23030F8B8();
    }

    else
    {
      v25 = 0;
    }

    if (v45)
    {
      v26 = sub_23030F8B8();
    }

    else
    {
      v26 = 0;
    }

    v47 = objc_allocWithZone(v53);
    v27 = sub_23030F8B8();
    v49 = v27;

    v28 = sub_23030F8B8();
    v53 = v28;

    v29 = sub_23030EB88();
    v34 = v28;
    v33 = v27;
    v30 = v48;
    v31 = v50;
    v32 = v36;
    v13 = [v47 initWithAccountIdentifier:v50 activityDate:v36 activityType:v42 authorUserRecordIDString:v48 ckParentCloudObjectEntityName:v25 ckParentCloudObjectIdentifier:v26 ckIdentifier:v33 sharedEntityName:v34 uuidForChangeTracking:v29];

    (*(v54 + 8))(v51, v55);
    (*(v56 + 8))(v52, v57);
    (*(v15 + 8))(v37, v38);
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  return v13;
}

uint64_t REMSharedEntitySyncActivity_Codable.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_23030EBB8();
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v42);
  v8 = &v37 - v7;
  v44 = sub_23030EB58();
  v41 = *(v44 - 1);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB192C8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302BD9B8();
  sub_230311448();
  v14 = [v2 accountIdentifier];
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  v54 = 0;
  v15 = v45;
  sub_230310DA8();
  if (v15)
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = v41;
    v37 = v8;
    v45 = v11;

    v18 = [v2 activityDate];
    v19 = v43;
    sub_23030EB18();

    v53 = 1;
    sub_230055F2C(&qword_280C9B760, 255, MEMORY[0x277CC9578]);
    v20 = v44;
    sub_230310DF8();
    (*(v17 + 8))(v19, v20);
    [v2 activityType];
    v52 = 2;
    sub_230310DD8();
    v21 = [v2 authorUserRecordIDString];
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

    v51 = 3;
    sub_230310DA8();

    v44 = v2;
    v22 = [v2 ckParentCloudObjectEntityName];
    if (v22)
    {
      v23 = v22;
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    }

    v50 = 4;
    sub_230310D58();
    v24 = v40;

    v25 = [v44 ckParentCloudObjectIdentifier];
    if (v25)
    {
      v26 = v25;
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    }

    v49 = 5;
    sub_230310D58();

    v27 = v44;
    v28 = [v44 ckIdentifier];
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

    v48 = 6;
    sub_230310DA8();

    v29 = [v27 sharedEntityName];
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

    v47 = 7;
    sub_230310DA8();

    v30 = [v27 uuidForChangeTracking];
    if (v30)
    {
      v31 = v30;
      sub_23030EBA8();

      v32 = v38;
      v33 = v39;
      v34 = v37;
      (*(v39 + 32))(v37, v24, v38);
      v35 = 0;
      v36 = v45;
    }

    else
    {
      v35 = 1;
      v36 = v45;
      v32 = v38;
      v33 = v39;
      v34 = v37;
    }

    (*(v33 + 56))(v34, v35, 1, v32);
    v46 = 8;
    sub_2302BD798();
    sub_230310DF8();
    sub_230061918(v34, &qword_27DB14800);
    return (*(v36 + 8))(v13, v10);
  }
}

ReminderKitInternal::REMSharedEntitySyncActivity_Codable::CodingKeys_optional __swiftcall REMSharedEntitySyncActivity_Codable.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReminderKitInternal::REMSharedEntitySyncActivity_Codable::CodingKeys_optional __swiftcall REMSharedEntitySyncActivity_Codable.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = REMSharedEntitySyncActivity_Codable.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_2302BC5A8()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 0x7974697669746361;
    v6 = 0xD000000000000018;
    if (v1 == 2)
    {
      v6 = 0x7974697669746361;
    }

    if (!*v0)
    {
      v5 = 0xD000000000000011;
    }

    if (*v0 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x69746E6564496B63;
    v3 = 0xD000000000000015;
    if (v1 == 7)
    {
      v3 = 0xD000000000000010;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    if (*v0 <= 5u)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2302BC708(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  sub_230311358();
  a3(v7, v5);
  return sub_2303113A8();
}

uint64_t sub_2302BC778(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_230311358();
  a4(v8, v6);
  return sub_2303113A8();
}

uint64_t sub_2302BC7D0@<X0>(uint64_t *a1@<X8>)
{
  result = REMSharedEntitySyncActivity_Codable.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ReminderKitInternal::REMSharedEntitySyncActivity_Codable::CodingKeys_optional sub_2302BC7FC@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = REMSharedEntitySyncActivity_Codable.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_2302BC840(uint64_t a1)
{
  v2 = sub_2302BD9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302BC87C(uint64_t a1)
{
  v2 = sub_2302BD9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2302BC8B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = REMSharedEntitySyncActivity_Codable.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_2302BC944(void *a1)
{
  v3 = sub_23030EBB8();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB193C0);
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230055ED8();
  sub_230311428();
  if (!v1)
  {
    v36 = a1;
    sub_230055F2C(&unk_280C9C5F0, 255, MEMORY[0x277CC95F0]);
    sub_230310CE8();
    v34 = v3;
    v11 = objc_opt_self();
    v35 = v5;
    v12 = sub_23030EB88();
    v13 = [v11 objectIDWithUUID_];

    a1 = v36;
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v14 = sub_230311418();
    if (qword_280C9C458 != -1)
    {
      swift_once();
    }

    v15 = sub_230310A58();
    v16 = __swift_project_value_buffer(v15, qword_280C9C460);
    v17 = v37;
    v18 = v38;
    if (*(v14 + 16) && (v19 = sub_23004BFC0(v16), (v20 & 1) != 0))
    {
      sub_23004D5CC(*(v14 + 56) + 32 * v19, v43);
    }

    else
    {

      memset(v43, 0, 32);
    }

    sub_230055F74(v43, &v40, &qword_27DB14810);
    if (v41)
    {
      sub_230061914(&v40, v42);
      sub_23004D5CC(v42, &v40);
      type metadata accessor for REMStoreObjectsContainer();
      if (swift_dynamicCast())
      {
        v21 = v44;
        __swift_destroy_boxed_opaque_existential_1(v42);
        sub_230061918(v43, &qword_27DB14810);
        v22 = sub_2302B57C8(v13);
        v32 = type metadata accessor for REMReminder_Codable();
        v30 = objc_allocWithZone(v32);
        v29 = [v22 store];
        v23 = [v22 list];
        v24 = [v22 storage];
        v33 = v13;
        v31 = v21;
        v25 = v24;
        v39.receiver = v30;
        v39.super_class = v32;
        v26 = v29;
        v27 = objc_msgSendSuper2(&v39, sel_initWithStore_list_storage_, v29, v23, v24);

        v9 = v27;
        v28 = [v22 parentReminder];
        [v9 setParentReminder_];

        (*(v17 + 8))(v35, v34);
        (*(v38 + 8))(v8, v6);
        __swift_destroy_boxed_opaque_existential_1(v36);
        return v9;
      }

      sub_23004D5CC(v42, &v40);
      sub_2301FF8F0(&v40, 0, 0);
      v9 = &qword_27DB14810;
      sub_230061918(&v40, &qword_27DB14810);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v42);
      sub_230061918(v43, &qword_27DB14810);
      (*(v17 + 8))(v35, v34);
      (*(v18 + 8))(v8, v6);
      a1 = v36;
    }

    else
    {
      v9 = &qword_27DB14810;
      sub_230061918(&v40, &qword_27DB14810);
      sub_2301FF8F0(v43, 0, 0);
      swift_willThrow();

      sub_230061918(v43, &qword_27DB14810);
      (*(v17 + 8))(v35, v34);
      (*(v18 + 8))(v8, v6);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t *sub_2302BCF8C(void *a1)
{
  v3 = sub_23030EBB8();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB193C0);
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230055ED8();
  sub_230311428();
  if (!v1)
  {
    v27 = a1;
    sub_230055F2C(&unk_280C9C5F0, 255, MEMORY[0x277CC95F0]);
    sub_230310CE8();
    v11 = objc_opt_self();
    v25 = v5;
    v12 = sub_23030EB88();
    v26 = [v11 objectIDWithUUID_];

    a1 = v27;
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    v13 = sub_230311418();
    if (qword_280C9C458 != -1)
    {
      swift_once();
    }

    v14 = sub_230310A58();
    v15 = __swift_project_value_buffer(v14, qword_280C9C460);
    v16 = v28;
    v17 = v29;
    if (*(v13 + 16) && (v18 = sub_23004BFC0(v15), (v19 & 1) != 0))
    {
      sub_23004D5CC(*(v13 + 56) + 32 * v18, v33);
    }

    else
    {

      memset(v33, 0, sizeof(v33));
    }

    sub_230055F74(v33, &v30, &qword_27DB14810);
    if (v31)
    {
      sub_230061914(&v30, v32);
      sub_23004D5CC(v32, &v30);
      type metadata accessor for REMStoreObjectsContainer();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v32);
        sub_230061918(v33, &qword_27DB14810);
        sub_2302B54E0(v26);
        v20 = v25;
        v22 = v21;
        v24 = objc_allocWithZone(type metadata accessor for REMSmartList_Codable());
        v23 = v22;
        v9 = REMSmartList_Codable.init(_:)(v23);

        (*(v16 + 8))(v20, v3);
        (*(v29 + 8))(v8, v6);
        __swift_destroy_boxed_opaque_existential_1(v27);
        return v9;
      }

      sub_23004D5CC(v32, &v30);
      sub_2301FF8F0(&v30, 0, 0);
      v9 = &qword_27DB14810;
      sub_230061918(&v30, &qword_27DB14810);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v32);
      sub_230061918(v33, &qword_27DB14810);
      (*(v16 + 8))(v25, v3);
      (*(v17 + 8))(v8, v6);
      a1 = v27;
    }

    else
    {
      v9 = &qword_27DB14810;
      sub_230061918(&v30, &qword_27DB14810);
      sub_2301FF8F0(v33, 0, 0);
      swift_willThrow();

      sub_230061918(v33, &qword_27DB14810);
      (*(v16 + 8))(v25, v3);
      (*(v17 + 8))(v8, v6);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_2302BD54C()
{
  result = qword_280C9C338;
  if (!qword_280C9C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C338);
  }

  return result;
}

unint64_t sub_2302BD5C4()
{
  result = qword_280C9BC78[0];
  if (!qword_280C9BC78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C9BC78);
  }

  return result;
}

unint64_t sub_2302BD618()
{
  result = qword_280C9C198;
  if (!qword_280C9C198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB19208);
    sub_23006F7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C198);
  }

  return result;
}

unint64_t sub_2302BD69C()
{
  result = qword_27DB19218;
  if (!qword_27DB19218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19218);
  }

  return result;
}

unint64_t sub_2302BD6F0()
{
  result = qword_27DB19238;
  if (!qword_27DB19238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19238);
  }

  return result;
}

unint64_t sub_2302BD744()
{
  result = qword_27DB19250;
  if (!qword_27DB19250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19250);
  }

  return result;
}

unint64_t sub_2302BD798()
{
  result = qword_27DB19260;
  if (!qword_27DB19260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14800);
    sub_230055F2C(&unk_280C9C408, 255, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19260);
  }

  return result;
}

unint64_t sub_2302BD874()
{
  result = qword_27DB19270;
  if (!qword_27DB19270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19270);
  }

  return result;
}

unint64_t sub_2302BD8EC()
{
  result = qword_27DB19288;
  if (!qword_27DB19288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19288);
  }

  return result;
}

unint64_t sub_2302BD940()
{
  result = qword_27DB192A8;
  if (!qword_27DB192A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB192A8);
  }

  return result;
}

unint64_t sub_2302BD9B8()
{
  result = qword_27DB192C0;
  if (!qword_27DB192C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB192C0);
  }

  return result;
}

unint64_t sub_2302BDA10()
{
  result = qword_27DB192D0;
  if (!qword_27DB192D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB192D0);
  }

  return result;
}

unint64_t sub_2302BDA64(uint64_t a1)
{
  *(a1 + 8) = sub_2302BDA94();
  result = sub_230059CB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2302BDA94()
{
  result = qword_27DB192D8;
  if (!qword_27DB192D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB192D8);
  }

  return result;
}

unint64_t sub_2302BDAEC()
{
  result = qword_27DB192E0;
  if (!qword_27DB192E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB192E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB192E0);
  }

  return result;
}

uint64_t sub_2302BDB58(uint64_t a1, uint64_t a2)
{
  result = sub_230055F2C(&qword_280C9C5D0, a2, type metadata accessor for REMObjectID_Codable);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2302BDBB4()
{
  result = qword_27DB192F0;
  if (!qword_27DB192F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB192F0);
  }

  return result;
}

unint64_t sub_2302BDC0C()
{
  result = qword_280C9BC68;
  if (!qword_280C9BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BC68);
  }

  return result;
}

unint64_t sub_2302BDC64()
{
  result = qword_280C9BC70;
  if (!qword_280C9BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BC70);
  }

  return result;
}

unint64_t sub_2302BDCBC()
{
  result = qword_27DB192F8;
  if (!qword_27DB192F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB192F8);
  }

  return result;
}

unint64_t sub_2302BDD14()
{
  result = qword_27DB19300;
  if (!qword_27DB19300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19300);
  }

  return result;
}

unint64_t sub_2302BDD6C()
{
  result = qword_27DB19308;
  if (!qword_27DB19308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19308);
  }

  return result;
}

unint64_t sub_2302BDDC4()
{
  result = qword_27DB19310;
  if (!qword_27DB19310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19310);
  }

  return result;
}

unint64_t sub_2302BDE1C()
{
  result = qword_27DB19318;
  if (!qword_27DB19318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19318);
  }

  return result;
}

unint64_t sub_2302BDE74()
{
  result = qword_27DB19320;
  if (!qword_27DB19320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19320);
  }

  return result;
}

unint64_t sub_2302BDECC()
{
  result = qword_27DB19328;
  if (!qword_27DB19328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19328);
  }

  return result;
}

unint64_t sub_2302BDF24()
{
  result = qword_27DB19330;
  if (!qword_27DB19330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19330);
  }

  return result;
}

unint64_t sub_2302BDF7C()
{
  result = qword_27DB19338;
  if (!qword_27DB19338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19338);
  }

  return result;
}

unint64_t sub_2302BDFD4()
{
  result = qword_27DB19340;
  if (!qword_27DB19340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19340);
  }

  return result;
}

unint64_t sub_2302BE02C()
{
  result = qword_27DB19348;
  if (!qword_27DB19348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19348);
  }

  return result;
}

unint64_t sub_2302BE084()
{
  result = qword_27DB19350;
  if (!qword_27DB19350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19350);
  }

  return result;
}

uint64_t dispatch thunk of REMStoreObjectsContainer.store(_:)()
{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 192))();
}

uint64_t getEnumTagSinglePayload for REMSharedEntitySyncActivity_Codable.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMSharedEntitySyncActivity_Codable.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2302BEB1C()
{
  result = qword_27DB19358;
  if (!qword_27DB19358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19358);
  }

  return result;
}

unint64_t sub_2302BEB74()
{
  result = qword_27DB19360;
  if (!qword_27DB19360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19360);
  }

  return result;
}

unint64_t sub_2302BEBCC()
{
  result = qword_27DB19368;
  if (!qword_27DB19368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19368);
  }

  return result;
}

unint64_t sub_2302BEC24()
{
  result = qword_27DB19370;
  if (!qword_27DB19370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19370);
  }

  return result;
}

unint64_t sub_2302BEC7C()
{
  result = qword_27DB19378;
  if (!qword_27DB19378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19378);
  }

  return result;
}

unint64_t sub_2302BECD4()
{
  result = qword_27DB19380;
  if (!qword_27DB19380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19380);
  }

  return result;
}

unint64_t sub_2302BED2C()
{
  result = qword_27DB19388;
  if (!qword_27DB19388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19388);
  }

  return result;
}

unint64_t sub_2302BED84()
{
  result = qword_27DB19390;
  if (!qword_27DB19390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19390);
  }

  return result;
}

unint64_t sub_2302BEDDC()
{
  result = qword_280C98B78;
  if (!qword_280C98B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B78);
  }

  return result;
}

unint64_t sub_2302BEE34()
{
  result = qword_280C98B80;
  if (!qword_280C98B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B80);
  }

  return result;
}

unint64_t sub_2302BEE8C()
{
  result = qword_27DB19398;
  if (!qword_27DB19398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19398);
  }

  return result;
}

unint64_t sub_2302BEEE4()
{
  result = qword_27DB193A0;
  if (!qword_27DB193A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB193A0);
  }

  return result;
}

unint64_t sub_2302BEF3C()
{
  result = qword_27DB193A8;
  if (!qword_27DB193A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB193A8);
  }

  return result;
}

unint64_t sub_2302BEF94()
{
  result = qword_27DB193B0;
  if (!qword_27DB193B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB193B0);
  }

  return result;
}

unint64_t sub_2302BEFEC()
{
  result = qword_280C9C328;
  if (!qword_280C9C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C328);
  }

  return result;
}

unint64_t sub_2302BF044()
{
  result = qword_280C9C330;
  if (!qword_280C9C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9C330);
  }

  return result;
}

uint64_t sub_2302BF098()
{
  v0 = sub_230310C08();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2302BF0E4()
{
  v0 = sub_230310C08();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t Publishers.rem_combineLatest5.init(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v17 = type metadata accessor for Publishers.rem_combineLatest5();
  (*(*(a7 - 8) + 32))(a9 + v17[25], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v17[26], a3, a8);
  (*(*(a10 - 8) + 32))(a9 + v17[27], a4, a10);
  return (*(*(a11 - 8) + 32))(a9 + v17[28], a5, a11);
}

uint64_t Publishers.rem_combineLatest5.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a3;
  v78 = a4;
  v79 = a1;
  v87 = *(a2 + 32);
  AssociatedTypeWitness = v87;
  v92 = *(a2 + 72);
  v84 = v92;
  v85 = *(a2 + 16);
  v56[1] = *(&v85 + 1);
  v63 = v85;
  v89 = v85;
  v86 = *(a2 + 56);
  v68 = v86;
  v91 = v86;
  v65 = *(&v86 + 1);
  v88 = sub_23030EF78();
  v5 = *(a2 + 40);
  v81 = *(a2 + 48);
  v82 = MEMORY[0x277CBCAF8];
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 80);
  v92 = *(a2 + 88);
  v70 = v6;
  v67 = v92;
  v83 = sub_23030EF78();
  *&v89 = swift_getAssociatedTypeWitness();
  v7 = *(&v85 + 1);
  *(&v89 + 1) = swift_getAssociatedTypeWitness();
  v8 = v87;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = v5;
  *&v91 = swift_getAssociatedTypeWitness();
  *(&v91 + 1) = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9 = v83;
  v72 = swift_getWitnessTable();
  v74 = sub_23030EFF8();
  v75 = *(v74 - 8);
  v10 = MEMORY[0x28223BE20](v74);
  v69 = v56 - v11;
  v64 = *(v81 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v62 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *(v5 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v9 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v82 = v56 - v17;
  v18 = *(v8 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v58 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v7;
  v22 = *(v7 - 8);
  v23 = MEMORY[0x28223BE20](v19);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v63;
  v27 = MEMORY[0x28223BE20](v23);
  v29 = v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v88 - 8);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v56 - v33;
  v36 = v71;
  (*(v35 + 16))(v29, v71, v26);
  (*(v22 + 16))(v25, v36 + *(a2 + 100), v21);
  (*(v18 + 16))(v58, v36 + *(a2 + 104), v87);
  v57 = v34;
  sub_23030EF88();
  (*(v80 + 16))(v32, v34, v88);
  v37 = v61;
  (*(v60 + 16))(v59, v36 + *(a2 + 108), v61);
  v38 = v36 + *(a2 + 112);
  v39 = v81;
  (*(v64 + 16))(v62, v38, v81);
  v40 = v67;
  v41 = v37;
  v42 = v70;
  sub_23030EF88();
  v43 = swift_allocObject();
  v44 = v87;
  *&v45 = v87;
  *(&v45 + 1) = v41;
  *(v43 + 32) = v45;
  *(v43 + 16) = v85;
  v47 = v77;
  v46 = v78;
  *(v43 + 48) = v39;
  *(v43 + 56) = v47;
  v48 = v84;
  *&v45 = v84;
  *(&v45 + 1) = v42;
  *(v43 + 80) = v45;
  *(v43 + 64) = v86;
  *(v43 + 96) = v40;
  *(v43 + 104) = v46;
  v49 = swift_allocObject();
  v50 = v86;
  *(v49 + 16) = v85;
  *(v49 + 32) = v44;
  *(v49 + 40) = v41;
  *(v49 + 48) = v39;
  *(v49 + 56) = v47;
  *(v49 + 64) = v50;
  *(v49 + 80) = v48;
  *(v49 + 88) = v42;
  *(v49 + 96) = v40;
  *(v49 + 104) = v46;
  *(v49 + 112) = sub_2302C02B4;
  *(v49 + 120) = v43;
  v51 = v69;
  v53 = v82;
  v52 = v83;
  sub_23030F1D8();

  v54 = v74;
  sub_23030EFE8();
  (*(v75 + 8))(v51, v54);
  (*(v66 + 8))(v53, v52);
  return (*(v80 + 8))(v57, v88);
}

uint64_t sub_2302BFDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v65 = a7;
  v66 = a8;
  v67 = a1;
  v68 = a2;
  v75 = a21;
  v73 = a4;
  v74 = a15;
  v76 = a10;
  v77 = a5;
  v71 = a3;
  v72 = a9;
  v69 = a14;
  v70 = a20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v26 = *(TupleTypeMetadata3 - 8);
  v27 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v63 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v78 = &v60 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v60 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v60 - v34;
  v36 = *(AssociatedTypeWitness - 8);
  v37 = *(v36 + 16);
  v62 = AssociatedTypeWitness;
  v37(&v60 - v34, a6, AssociatedTypeWitness);
  v38 = *(TupleTypeMetadata3 + 48);
  v60 = v23;
  v39 = *(v23 - 8);
  (*(v39 + 16))(&v35[v38], v65, v23);
  v40 = *(TupleTypeMetadata3 + 64);
  v61 = v24;
  v41 = *(v24 - 8);
  (*(v41 + 16))(&v35[v40], v66, v24);
  v42 = *(v26 + 16);
  v64 = v33;
  v42(v33, v35, TupleTypeMetadata3);
  v43 = *(TupleTypeMetadata3 + 48);
  v65 = *(TupleTypeMetadata3 + 64);
  v66 = v43;
  (*(v36 + 32))(v67, v33, AssociatedTypeWitness);
  v44 = v78;
  v42(v78, v35, TupleTypeMetadata3);
  v45 = *(TupleTypeMetadata3 + 48);
  v67 = *(TupleTypeMetadata3 + 64);
  v46 = v60;
  (*(v39 + 32))(v68, &v44[v45], v60);
  v47 = v63;
  (*(v26 + 32))(v63, v35, TupleTypeMetadata3);
  v48 = *(TupleTypeMetadata3 + 48);
  v49 = v61;
  (*(v41 + 32))(v71, &v47[*(TupleTypeMetadata3 + 64)], v61);
  v50 = swift_getAssociatedTypeWitness();
  (*(*(v50 - 8) + 16))(v73, v72, v50);
  v51 = swift_getAssociatedTypeWitness();
  (*(*(v51 - 8) + 16))(v77, v76, v51);
  v52 = *(v39 + 8);
  v53 = v46;
  v52(&v47[v48], v46);
  v54 = *(v36 + 8);
  v55 = v62;
  v54(v47, v62);
  v56 = *(v41 + 8);
  v57 = v78;
  v56(&v78[v67], v49);
  v54(v57, v55);
  v58 = v64;
  v56(&v64[v65], v49);
  return (v52)(&v58[v66], v53);
}

uint64_t sub_2302C02FC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v6 = *(TupleTypeMetadata3 + 48);
  v12 = *(TupleTypeMetadata3 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v7 = swift_getTupleTypeMetadata3();
  v8 = a1 + *(v7 + 48);
  v9 = a1 + *(v7 + 64);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a3, a3 + TupleTypeMetadata[12], a3 + TupleTypeMetadata[16], a3 + TupleTypeMetadata[20], a3 + TupleTypeMetadata[24], a1, a1 + v6, a1 + v12, v8, v9);
}

uint64_t Publishers.rem_combineLatest6.init(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v16 = type metadata accessor for Publishers.rem_combineLatest6();
  (*(*(a8 - 8) + 32))(a9 + v16[29], a2, a8);
  (*(*(a10 - 8) + 32))(a9 + v16[30], a3, a10);
  (*(*(a11 - 8) + 32))(a9 + v16[31], a4, a11);
  (*(*(a12 - 8) + 32))(a9 + v16[32], a5, a12);
  return (*(*(a13 - 8) + 32))(a9 + v16[33], a6, a13);
}

uint64_t Publishers.rem_combineLatest6.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a4;
  v81 = a3;
  v83 = a1;
  v91 = *(a2 + 16);
  v68 = v91;
  v94 = v91;
  v58[1] = *(&v91 + 1);
  v84 = *(a2 + 32);
  AssociatedTypeWitness = v84;
  v90 = *(a2 + 64);
  v72 = v90;
  v96 = v90;
  v71 = *(&v90 + 1);
  v97 = *(a2 + 80);
  *&v89 = v97;
  v88 = sub_23030EF78();
  v5 = *(a2 + 40);
  v93 = *(a2 + 48);
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  *v86 = v93;
  v74 = v6;
  v92 = v7;
  v98 = v7;
  v85 = *(&v7 + 1);
  v87 = sub_23030EF98();
  *&v94 = swift_getAssociatedTypeWitness();
  v8 = *(&v91 + 1);
  *(&v94 + 1) = swift_getAssociatedTypeWitness();
  v9 = v84;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v5;
  v64 = v5;
  *&v96 = swift_getAssociatedTypeWitness();
  v11 = v93;
  *(&v96 + 1) = swift_getAssociatedTypeWitness();
  v97 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = v87;
  v76 = swift_getWitnessTable();
  v78 = sub_23030EFF8();
  v79 = *(v78 - 8);
  v13 = MEMORY[0x28223BE20](v78);
  v73 = v58 - v14;
  v69 = *(*(&v93 + 1) - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v67 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(v11 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v65 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v10 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v62 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(v12 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v85 = v58 - v22;
  v23 = *(v9 - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v59 = v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v8;
  v27 = *(v8 - 8);
  v28 = MEMORY[0x28223BE20](v24);
  v30 = v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v68;
  v32 = MEMORY[0x28223BE20](v28);
  v34 = v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(v88 - 8);
  v35 = v61;
  v36 = MEMORY[0x28223BE20](v32);
  v58[0] = v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = v58 - v38;
  v41 = v75;
  (*(v40 + 16))(v34, v75, v31);
  (*(v27 + 16))(v30, v41 + *(a2 + 116), v26);
  v42 = v84;
  (*(v23 + 16))(v59, v41 + *(a2 + 120), v84);
  v60 = v39;
  sub_23030EF88();
  v43 = v88;
  (*(v35 + 16))(v58[0], v39, v88);
  v44 = v64;
  (*(v63 + 16))(v62, v41 + *(a2 + 124), v64);
  (*(v66 + 16))(v65, v41 + *(a2 + 128), *v86);
  (*(v69 + 16))(v67, v41 + *(a2 + 132), *&v86[8]);
  v45 = v74;
  v46 = v44;
  sub_23030EFA8();
  v47 = swift_allocObject();
  *&v48 = v42;
  *(&v48 + 1) = v46;
  *&v86[8] = v48;
  *(v47 + 32) = v48;
  *(v47 + 16) = v91;
  *(v47 + 48) = v93;
  v49 = v81;
  *(v47 + 64) = v81;
  *&v48 = v89;
  *(&v48 + 1) = v45;
  v89 = v48;
  *(v47 + 88) = v48;
  *(v47 + 72) = v90;
  *(v47 + 104) = v92;
  v50 = v82;
  *(v47 + 120) = v82;
  v51 = swift_allocObject();
  v52 = v93;
  *(v51 + 16) = v91;
  *(v51 + 32) = *&v86[8];
  *(v51 + 48) = v52;
  *(v51 + 64) = v49;
  *(v51 + 72) = v90;
  *(v51 + 104) = v92;
  *(v51 + 88) = v89;
  *(v51 + 120) = v50;
  *(v51 + 128) = sub_2302C181C;
  *(v51 + 136) = v47;
  v53 = v73;
  v54 = v87;
  v55 = v85;
  sub_23030F1D8();

  v56 = v78;
  sub_23030EFE8();
  (*(v79 + 8))(v53, v56);
  (*(v70 + 8))(v55, v54);
  return (*(v61 + 8))(v60, v43);
}

uint64_t sub_2302C12D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v71 = a8;
  v72 = a1;
  v73 = a2;
  v85 = a12;
  v86 = a6;
  v80 = a4;
  v81 = a11;
  v83 = a25;
  v84 = a5;
  v82 = a18;
  v78 = a17;
  v79 = a24;
  v76 = a3;
  v77 = a10;
  v70 = a9;
  v74 = a16;
  v75 = a23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v30 = *(TupleTypeMetadata3 - 8);
  v31 = MEMORY[0x28223BE20](TupleTypeMetadata3);
  v67 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v66 = &v64 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v64 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v64 - v38;
  v40 = AssociatedTypeWitness;
  v41 = *(AssociatedTypeWitness - 8);
  v42 = *(v41 + 16);
  v68 = v40;
  v42(&v64 - v38, a7, v40);
  v43 = *(TupleTypeMetadata3 + 48);
  v64 = v27;
  v44 = *(v27 - 8);
  (*(v44 + 16))(&v39[v43], v71, v27);
  v45 = *(TupleTypeMetadata3 + 64);
  v65 = v28;
  v46 = *(v28 - 8);
  (*(v46 + 16))(&v39[v45], v70, v28);
  v47 = *(v30 + 16);
  v69 = v37;
  v47(v37, v39, TupleTypeMetadata3);
  v48 = *(TupleTypeMetadata3 + 48);
  v70 = *(TupleTypeMetadata3 + 64);
  v71 = v48;
  (*(v41 + 32))(v72, v37, v40);
  v49 = v66;
  v47(v66, v39, TupleTypeMetadata3);
  v50 = *(TupleTypeMetadata3 + 48);
  v72 = *(TupleTypeMetadata3 + 64);
  v51 = v64;
  (*(v44 + 32))(v73, &v49[v50], v64);
  v52 = v67;
  (*(v30 + 32))(v67, v39, TupleTypeMetadata3);
  v73 = *(TupleTypeMetadata3 + 48);
  v53 = v65;
  (*(v46 + 32))(v76, &v52[*(TupleTypeMetadata3 + 64)], v65);
  v54 = swift_getAssociatedTypeWitness();
  (*(*(v54 - 8) + 16))(v80, v77, v54);
  v55 = swift_getAssociatedTypeWitness();
  (*(*(v55 - 8) + 16))(v84, v81, v55);
  v56 = swift_getAssociatedTypeWitness();
  (*(*(v56 - 8) + 16))(v86, v85, v56);
  v57 = *(v44 + 8);
  v58 = v51;
  v57(&v52[v73], v51);
  v59 = *(v41 + 8);
  v60 = v68;
  v59(v52, v68);
  v61 = *(v46 + 8);
  v61(&v49[v72], v53);
  v59(v49, v60);
  v62 = v69;
  v61(&v69[v70], v53);
  return (v57)(&v62[v71], v58);
}

uint64_t sub_2302C186C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = a1 + *(TupleTypeMetadata3 + 64);
  v13 = *(TupleTypeMetadata3 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v7 = a1 + TupleTypeMetadata[12];
  v8 = a1 + TupleTypeMetadata[16];
  v9 = a1 + TupleTypeMetadata[20];
  v10 = swift_getTupleTypeMetadata();
  return a2(a3, a3 + v10[12], a3 + v10[16], a3 + v10[20], a3 + v10[24], a3 + v10[28], a1, a1 + v13, v12, v7, v8, v9);
}

uint64_t Publishers.rem_combineLatest7.init(_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v17 = type metadata accessor for Publishers.rem_combineLatest7();
  (*(*(a10 - 8) + 32))(a9 + v17[33], a2, a10);
  (*(*(a11 - 8) + 32))(a9 + v17[34], a3, a11);
  (*(*(a12 - 8) + 32))(a9 + v17[35], a4, a12);
  (*(*(a13 - 8) + 32))(a9 + v17[36], a5, a13);
  (*(*(a14 - 8) + 32))(a9 + v17[37], a6, a14);
  return (*(*(a15 - 8) + 32))(a9 + v17[38], a7, a15);
}

uint64_t Publishers.rem_combineLatest7.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v97 = a4;
  v96 = a3;
  v98 = a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v115 = *(a2 + 88);
  v116 = v7;
  v114 = v11;
  v117 = v6;
  AssociatedTypeWitness = v6;
  v119 = v5;
  v120 = v7;
  v110 = v5;
  v121 = v8;
  v122 = v9;
  v107 = v9;
  v108 = v8;
  v123 = v10;
  v124 = v115;
  v106 = v10;
  v125 = v11;
  v12 = sub_23030EF98();
  v13 = *(a2 + 56);
  v109 = *(a2 + 48);
  v111 = v13;
  v112 = *(a2 + 64);
  v113 = v12;
  v102 = MEMORY[0x277CBCB00];
  WitnessTable = swift_getWitnessTable();
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  v88 = *(a2 + 104);
  v125 = v15;
  v105 = v14;
  v104 = v15;
  v103 = sub_23030EF98();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = swift_getAssociatedTypeWitness();
  v16 = v116;
  v120 = swift_getAssociatedTypeWitness();
  v17 = v108;
  v121 = swift_getAssociatedTypeWitness();
  v18 = v109;
  v122 = swift_getAssociatedTypeWitness();
  v123 = swift_getAssociatedTypeWitness();
  v124 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = v103;
  v91 = swift_getWitnessTable();
  v93 = sub_23030EFF8();
  v94 = *(v93 - 8);
  v20 = MEMORY[0x28223BE20](v93);
  v89 = &v79 - v21;
  v86 = *(v112 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v85 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(v13 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v83 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v18 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v81 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = *(v19 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v102 = &v79 - v29;
  v79 = *(v17 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v80 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v16 - 8);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v110;
  v37 = *(v110 - 8);
  v38 = MEMORY[0x28223BE20](v33);
  v40 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v79 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *(v113 - 8);
  v44 = MEMORY[0x28223BE20](v41);
  v99 = &v79 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v100 = &v79 - v46;
  v48 = v90;
  (*(v47 + 16))(v43, v90);
  (*(v37 + 16))(v40, v48 + *(a2 + 132), v36);
  (*(v32 + 16))(v35, v48 + *(a2 + 136), v116);
  (*(v79 + 16))(v80, v48 + *(a2 + 140), v108);
  v49 = v100;
  sub_23030EFA8();
  (*(v101 + 16))(v99, v49, v113);
  v50 = v109;
  (*(v82 + 16))(v81, v48 + *(a2 + 144), v109);
  v51 = v111;
  (*(v84 + 16))(v83, v48 + *(a2 + 148), v111);
  v52 = v48 + *(a2 + 152);
  v53 = v112;
  (*(v86 + 16))(v85, v52, v112);
  v54 = v104;
  v55 = v105;
  v56 = v88;
  v57 = v50;
  v58 = v51;
  v59 = v53;
  sub_23030EFA8();
  v60 = swift_allocObject();
  v61 = v110;
  v60[2] = v117;
  v60[3] = v61;
  v62 = v115;
  v63 = v108;
  v60[4] = v116;
  v60[5] = v63;
  v60[6] = v57;
  v60[7] = v58;
  v64 = v96;
  v60[8] = v59;
  v60[9] = v64;
  v66 = v106;
  v65 = v107;
  v60[10] = v107;
  v60[11] = v66;
  v67 = v114;
  v60[12] = v62;
  v60[13] = v67;
  v60[14] = v56;
  v60[15] = v55;
  v60[16] = v54;
  v68 = v97;
  v60[17] = v97;
  v69 = swift_allocObject();
  v70 = v110;
  v69[2] = v117;
  v69[3] = v70;
  v69[4] = v116;
  v69[5] = v63;
  v72 = v111;
  v71 = v112;
  v69[6] = v109;
  v69[7] = v72;
  v69[8] = v71;
  v69[9] = v64;
  v69[10] = v65;
  v69[11] = v66;
  v69[12] = v62;
  v69[13] = v67;
  v73 = v105;
  v69[14] = v56;
  v69[15] = v73;
  v69[16] = v104;
  v69[17] = v68;
  v69[18] = sub_2302C3214;
  v69[19] = v60;
  v74 = v89;
  v75 = v103;
  v76 = v102;
  sub_23030F1D8();

  v77 = v93;
  sub_23030EFE8();
  (*(v94 + 8))(v74, v77);
  (*(v87 + 8))(v76, v75);
  return (*(v101 + 8))(v100, v113);
}

uint64_t sub_2302C29B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t), void (*a7)(char *, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v117 = a8;
  v110 = a7;
  v108 = a6;
  v104 = a5;
  v100 = a4;
  v97 = a3;
  v96 = a2;
  v95 = a1;
  v106 = a21;
  v107 = a29;
  v109 = a14;
  v105 = a13;
  v103 = a28;
  v99 = a27;
  v102 = a20;
  v98 = a19;
  v101 = a12;
  v94 = a11;
  v93 = a10;
  v91 = a9;
  v90 = a26;
  v87 = a25;
  v89 = a18;
  v86 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = swift_getAssociatedTypeWitness();
  v120 = swift_getAssociatedTypeWitness();
  v121 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v88 = *(TupleTypeMetadata - 1);
  v30 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v92 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v112 = &v85 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v111 = &v85 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v113 = &v85 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v85 - v38;
  v40 = swift_getAssociatedTypeWitness();
  v41 = *(v40 - 8);
  v114 = v40;
  v115 = v41;
  (*(v41 + 16))(v39, v117, v40);
  v42 = TupleTypeMetadata[12];
  v43 = swift_getAssociatedTypeWitness();
  v44 = *(v43 - 8);
  v116 = v43;
  v117 = v44;
  (*(v44 + 16))(&v39[v42], v91, v43);
  v45 = TupleTypeMetadata[16];
  v46 = swift_getAssociatedTypeWitness();
  v47 = *(v46 - 8);
  v48 = &v39[v45];
  v49 = v46;
  (*(v47 + 16))(v48, v93);
  v50 = TupleTypeMetadata[20];
  v51 = swift_getAssociatedTypeWitness();
  v52 = *(v51 - 8);
  v87 = v52;
  v53 = *(v52 + 16);
  v86 = v51;
  v53(&v39[v50], v94, v51);
  v54 = v88;
  v55 = *(v88 + 16);
  v56 = v113;
  v55(v113, v39, TupleTypeMetadata);
  v94 = TupleTypeMetadata[12];
  v93 = TupleTypeMetadata[16];
  v91 = TupleTypeMetadata[20];
  (*(v115 + 32))(v95, v56, v114);
  v57 = v111;
  v55(v111, v39, TupleTypeMetadata);
  v58 = TupleTypeMetadata[12];
  v95 = TupleTypeMetadata[16];
  v90 = TupleTypeMetadata[20];
  (*(v117 + 32))(v96, &v57[v58], v116);
  v59 = v112;
  v55(v112, v39, TupleTypeMetadata);
  v96 = TupleTypeMetadata[12];
  v60 = TupleTypeMetadata[16];
  v89 = TupleTypeMetadata[20];
  v61 = *(v47 + 32);
  v85 = v49;
  v61(v97, &v59[v60], v49);
  v62 = v92;
  (*(v54 + 32))(v92, v39, TupleTypeMetadata);
  v63 = TupleTypeMetadata[12];
  v64 = TupleTypeMetadata[16];
  (*(v52 + 32))(v100, &v62[TupleTypeMetadata[20]], v51);
  v65 = swift_getAssociatedTypeWitness();
  (*(*(v65 - 8) + 16))(v104, v101, v65);
  v66 = swift_getAssociatedTypeWitness();
  (*(*(v66 - 8) + 16))(v108, v105, v66);
  v67 = swift_getAssociatedTypeWitness();
  (*(*(v67 - 8) + 16))(v110, v109, v67);
  v68 = *(v47 + 8);
  v109 = v47 + 8;
  v110 = v68;
  v68(&v62[v64], v49);
  v69 = v116;
  v71 = v117 + 8;
  v70 = *(v117 + 8);
  v70(&v62[v63], v116);
  v72 = v70;
  v108 = v70;
  v117 = v71;
  v73 = v114;
  v74 = *(v115 + 8);
  v74(v62, v114);
  v75 = *(v87 + 8);
  v76 = v112;
  v77 = v86;
  v75(&v112[v89], v86);
  v72(&v76[v96], v69);
  v78 = v76;
  v79 = v73;
  v74(v78, v73);
  v80 = v111;
  v75(&v111[v90], v77);
  v81 = v85;
  v82 = v110;
  v110(&v80[v95], v85);
  v74(v80, v79);
  v83 = v113;
  v75(&v113[v91], v77);
  v82(&v83[v93], v81);
  return v108(&v83[v94], v116);
}

uint64_t sub_2302C326C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v14 = a1 + TupleTypeMetadata[12];
  v13 = a1 + TupleTypeMetadata[16];
  v12 = a1 + TupleTypeMetadata[20];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v6 = swift_getTupleTypeMetadata();
  v7 = a1 + v6[12];
  v8 = a1 + v6[16];
  v9 = a1 + v6[20];
  v10 = swift_getTupleTypeMetadata();
  return a2(a3, a3 + v10[12], a3 + v10[16], a3 + v10[20], a3 + v10[24], a3 + v10[28], a3 + v10[32], a1, v14, v13, v12, v7, v8, v9);
}

uint64_t sub_2302C35AC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_initStructMetadata();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t *sub_2302C373C(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 80);
  v8 = v5 + v7;
  v9 = (v5 + v7) & ~v7;
  v10 = *(v6 + 64);
  v11 = *(a3[4] - 8);
  v12 = *(v11 + 80);
  v13 = v10 + v12;
  v14 = (v10 + v12 + v9) & ~v12;
  v15 = *(v11 + 64);
  v16 = a3[6];
  v17 = *(a3[5] - 8);
  v18 = *(v17 + 80);
  v46 = v15 + v18;
  v19 = (v15 + v18 + v14) & ~v18;
  v20 = *(v17 + 64);
  v21 = *(v16 - 8);
  v22 = *(v21 + 80);
  v23 = v20 + v22;
  v24 = ((v20 + v22 + v19) & ~v22) + *(v21 + 64);
  v25 = (*(v6 + 80) | *(v4 + 80) | *(v11 + 80) | *(v17 + 80) | *(v21 + 80));
  if (v25 <= 7 && v24 <= 0x18 && ((*(v6 + 80) | *(v4 + 80) | *(v11 + 80) | *(v17 + 80) | *(v21 + 80)) & 0x100000) == 0)
  {
    v42 = a3[5];
    v43 = a3[4];
    v30 = ~v7;
    v39 = a3[3];
    v40 = ~v12;
    v41 = ~v18;
    v44 = ~v22;
    (*(v4 + 16))(a1);
    v45 = a1;
    v32 = (a1 + v8) & v30;
    v33 = (a2 + v8) & v30;
    (*(v6 + 16))(v32, v33, v39);
    v34 = v32 + v13;
    v29 = v45;
    v35 = v34 & v40;
    v36 = (v33 + v13) & v40;
    (*(v11 + 16))(v34 & v40, v36, v43);
    v37 = (v35 + v46) & v41;
    (*(v17 + 16))(v37, (v36 + v46) & v41, v42);
    (*(v21 + 16))((v37 + v23) & v44, (((v36 + v46) & v41) + v23) & v44, v16);
  }

  else
  {
    v28 = *a2;
    *a1 = *a2;
    v29 = (v28 + ((v25 + 16) & ~v25));
  }

  return v29;
}

uint64_t sub_2302C3A84(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(v7 + 56);
  v10 = *(a2[4] - 8);
  v11 = v10 + 8;
  v12 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  (*(v10 + 8))(v12);
  v13 = *(v11 + 56);
  v14 = *(a2[5] - 8);
  v15 = v14 + 8;
  v16 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  (*(v14 + 8))(v16);
  v17 = *(a2[6] - 8);
  v18 = *(v17 + 8);
  v19 = (v16 + *(v15 + 56) + *(v17 + 80)) & ~*(v17 + 80);

  return v18(v19);
}

uint64_t sub_2302C3BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(v8 + 48);
  v14 = *(a3[4] - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(v15 + 48);
  v21 = *(a3[5] - 8);
  v22 = v21 + 16;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 16))(v25, v26);
  v27 = *(a3[6] - 8);
  (*(v27 + 16))((*(v22 + 48) + *(v27 + 80) + v25) & ~*(v27 + 80), (*(v22 + 48) + *(v27 + 80) + v26) & ~*(v27 + 80));
  return a1;
}

uint64_t sub_2302C3D94(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(v8 + 40);
  v14 = *(a3[4] - 8);
  v15 = v14 + 24;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 24))(v18, v19);
  v20 = *(v15 + 40);
  v21 = *(a3[5] - 8);
  v22 = v21 + 24;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 24))(v25, v26);
  v27 = *(a3[6] - 8);
  (*(v27 + 24))((*(v22 + 40) + *(v27 + 80) + v25) & ~*(v27 + 80), (*(v22 + 40) + *(v27 + 80) + v26) & ~*(v27 + 80));
  return a1;
}

uint64_t sub_2302C3F34(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(v8 + 32);
  v14 = *(a3[4] - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 32))(v18, v19);
  v20 = *(v15 + 32);
  v21 = *(a3[5] - 8);
  v22 = v21 + 32;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 32))(v25, v26);
  v27 = *(a3[6] - 8);
  (*(v27 + 32))((*(v22 + 32) + *(v27 + 80) + v25) & ~*(v27 + 80), (*(v22 + 32) + *(v27 + 80) + v26) & ~*(v27 + 80));
  return a1;
}

uint64_t sub_2302C40D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(v8 + 24);
  v14 = *(a3[4] - 8);
  v15 = v14 + 40;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 40))(v18, v19);
  v20 = *(v15 + 24);
  v21 = *(a3[5] - 8);
  v22 = v21 + 40;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 40))(v25, v26);
  v27 = *(a3[6] - 8);
  (*(v27 + 40))((*(v22 + 24) + *(v27 + 80) + v25) & ~*(v27 + 80), (*(v22 + 24) + *(v27 + 80) + v26) & ~*(v27 + 80));
  return a1;
}

uint64_t sub_2302C4274(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v42 = *(a3[2] - 8);
  v4 = *(v42 + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v42 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3[6] - 8);
  v16 = *(v15 + 84);
  v17 = *(v5 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(*(a3[4] - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  if (v16 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(*(a3[2] - 8) + 64) + v17;
  v25 = *(*(v8 - 8) + 64) + v22;
  v26 = a2 - v23;
  if (a2 > v23)
  {
    v27 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
    v28 = 8 * v27;
    if (v27 <= 3)
    {
      v30 = ((v26 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v30))
      {
        v29 = *(a1 + v27);
        if (!v29)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 > 0xFF)
      {
        v29 = *(a1 + v27);
        if (!*(a1 + v27))
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 < 2)
      {
LABEL_36:
        if (v23)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    v29 = *(a1 + v27);
    if (!*(a1 + v27))
    {
      goto LABEL_36;
    }

LABEL_23:
    v31 = (v29 - 1) << v28;
    if (v27 > 3)
    {
      v31 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v32 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
      }

      else
      {
        v32 = 4;
      }

      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v33 = *a1;
        }
      }

      else if (v32 == 1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a1;
      }
    }

    else
    {
      v33 = 0;
    }

    return v23 + (v33 | v31) + 1;
  }

LABEL_37:
  if (v4 == v23)
  {
    v34 = *(v42 + 48);

    return v34();
  }

  v36 = (a1 + v24) & ~v17;
  if (v6 == v23)
  {
    v37 = *(v5 + 48);
    v38 = *(v5 + 84);
    v39 = a3[3];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v10 == v23)
  {
    v37 = *(v9 + 48);
    v38 = *(v9 + 84);
    v39 = a3[4];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v13 == v23)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = a3[5];

    return v37(v36, v38, v39);
  }

  v40 = *(v15 + 48);
  v41 = (v25 + v36) & ~v22;

  return v40(v41, v16);
}

char *sub_2302C4714(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v42 = a4[3];
  v43 = *(a4[2] - 8);
  v5 = *(v43 + 84);
  v6 = *(v42 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v43 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a4[5];
  v41 = a4[4];
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4[6] - 8);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v6 + 80);
  v19 = *(*(v42 - 8) + 64);
  v20 = *(v10 + 80);
  v21 = *(*(v41 - 8) + 64);
  v22 = *(v13 + 80);
  v23 = *(*(v9 - 8) + 64);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  v26 = v23 + v24;
  v27 = ((v23 + v24 + ((v21 + v22 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20)) & ~v22)) & ~v24) + *(*(a4[6] - 8) + 64);
  v28 = a3 >= v25;
  v29 = a3 - v25;
  if (v29 != 0 && v28)
  {
    if (v27 <= 3)
    {
      v34 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v34))
      {
        v30 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v30 = v35;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if (v25 < a2)
  {
    v31 = ~v25 + a2;
    if (v27 < 4)
    {
      v33 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v36 = v31 & ~(-1 << (8 * v27));
        v37 = result;
        bzero(result, v27);
        result = v37;
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v37 = v36;
            if (v30 > 1)
            {
LABEL_60:
              if (v30 == 2)
              {
                *&result[v27] = v33;
              }

              else
              {
                *&result[v27] = v33;
              }

              return result;
            }
          }

          else
          {
            *v37 = v31;
            if (v30 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v37 = v36;
        v37[2] = BYTE2(v36);
      }

      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v32 = result;
      bzero(result, v27);
      result = v32;
      *v32 = v31;
      v33 = 1;
      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v30)
    {
      result[v27] = v33;
    }

    return result;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&result[v27] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    }

    *&result[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!v30)
  {
    goto LABEL_39;
  }

  result[v27] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_40:
  if (v5 == v25)
  {
    v38 = *(v43 + 56);

    return v38();
  }

  else
  {
    v39 = &result[v17 + v18] & ~v18;
    if (v7 == v25)
    {
      v40 = *(v6 + 56);
    }

    else
    {
      v39 = (v39 + v19 + v20) & ~v20;
      if (v11 == v25)
      {
        v40 = *(v10 + 56);
      }

      else
      {
        v39 = (v39 + v21 + v22) & ~v22;
        if (v14 == v25)
        {
          v40 = *(v13 + 56);
        }

        else
        {
          v40 = *(v16 + 56);
          v39 = (v26 + v39) & ~v24;
        }
      }
    }

    return v40(v39);
  }
}

uint64_t sub_2302C4C34()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_initStructMetadata();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t *sub_2302C4E04(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 80);
  v8 = v5 + v7;
  v9 = (v5 + v7) & ~v7;
  v10 = *(a3[4] - 8);
  v11 = *(v10 + 80);
  v52 = *(v6 + 64) + v11;
  v12 = v52 + v9;
  v13 = *(v10 + 64);
  v14 = a3[6];
  v15 = v12 & ~v11;
  v53 = *(a3[5] - 8);
  v16 = *(v53 + 80);
  v51 = v13 + v16;
  v17 = (v13 + v16 + v15) & ~v16;
  v18 = *(v53 + 64);
  v19 = *(v14 - 8);
  v20 = *(v19 + 80);
  v50 = v18 + v20;
  v21 = *(v19 + 64);
  v22 = a3[7];
  v23 = *(v22 - 8);
  v24 = *(v23 + 80);
  v25 = v21 + v24;
  v26 = ((v21 + v24 + ((v18 + v20 + v17) & ~v20)) & ~v24) + *(v23 + 64);
  v27 = (*(v6 + 80) | *(v4 + 80) | *(v10 + 80) | *(v53 + 80) | *(v19 + 80) | *(v23 + 80));
  if (v27 <= 7 && v26 <= 0x18 && ((*(v6 + 80) | *(v4 + 80) | *(v10 + 80) | *(v53 + 80) | *(v19 + 80) | *(v23 + 80)) & 0x100000) == 0)
  {
    v42 = a3[3];
    v43 = a3[5];
    v32 = ~v7;
    v45 = a3[4];
    v33 = ~v11;
    v44 = ~v16;
    v47 = ~v20;
    v48 = v25;
    v49 = ~v24;
    (*(v4 + 16))(a1);
    v46 = v14;
    v31 = a1;
    v35 = (a1 + v8) & v32;
    v36 = (a2 + v8) & v32;
    (*(v6 + 16))(v35, v36, v42);
    (*(v10 + 16))((v35 + v52) & v33, (v36 + v52) & v33, v45);
    v37 = (((v35 + v52) & v33) + v51) & v44;
    v38 = (((v36 + v52) & v33) + v51) & v44;
    (*(v53 + 16))(v37, v38, v43);
    v39 = (v37 + v50) & v47;
    v40 = (v38 + v50) & v47;
    (*(v19 + 16))(v39, v40, v46);
    (*(v23 + 16))((v39 + v48) & v49, (v40 + v48) & v49, v22);
  }

  else
  {
    v30 = *a2;
    *a1 = *a2;
    v31 = (v30 + ((v27 + 16) & ~v27));
  }

  return v31;
}

uint64_t sub_2302C51F0(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(v7 + 56);
  v10 = *(a2[4] - 8);
  v11 = v10 + 8;
  v12 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  (*(v10 + 8))(v12);
  v13 = *(v11 + 56);
  v14 = *(a2[5] - 8);
  v15 = v14 + 8;
  v16 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  (*(v14 + 8))(v16);
  v17 = *(v15 + 56);
  v18 = *(a2[6] - 8);
  v19 = v18 + 8;
  v20 = (v16 + v17 + *(v18 + 80)) & ~*(v18 + 80);
  (*(v18 + 8))(v20);
  v21 = *(a2[7] - 8);
  v22 = *(v21 + 8);
  v23 = (v20 + *(v19 + 56) + *(v21 + 80)) & ~*(v21 + 80);

  return v22(v23);
}

uint64_t sub_2302C53A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(v8 + 48);
  v14 = *(a3[4] - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(v15 + 48);
  v21 = *(a3[5] - 8);
  v22 = v21 + 16;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 16))(v25, v26);
  v27 = *(v22 + 48);
  v28 = *(a3[6] - 8);
  v29 = v28 + 16;
  v30 = *(v28 + 80);
  v31 = v27 + v30;
  v32 = (v31 + v25) & ~v30;
  v33 = (v31 + v26) & ~v30;
  (*(v28 + 16))(v32, v33);
  v34 = *(a3[7] - 8);
  (*(v34 + 16))((*(v29 + 48) + *(v34 + 80) + v32) & ~*(v34 + 80), (*(v29 + 48) + *(v34 + 80) + v33) & ~*(v34 + 80));
  return a1;
}

uint64_t sub_2302C5594(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(v8 + 40);
  v14 = *(a3[4] - 8);
  v15 = v14 + 24;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 24))(v18, v19);
  v20 = *(v15 + 40);
  v21 = *(a3[5] - 8);
  v22 = v21 + 24;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 24))(v25, v26);
  v27 = *(v22 + 40);
  v28 = *(a3[6] - 8);
  v29 = v28 + 24;
  v30 = *(v28 + 80);
  v31 = v27 + v30;
  v32 = (v31 + v25) & ~v30;
  v33 = (v31 + v26) & ~v30;
  (*(v28 + 24))(v32, v33);
  v34 = *(a3[7] - 8);
  (*(v34 + 24))((*(v29 + 40) + *(v34 + 80) + v32) & ~*(v34 + 80), (*(v29 + 40) + *(v34 + 80) + v33) & ~*(v34 + 80));
  return a1;
}

uint64_t sub_2302C5784(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(v8 + 32);
  v14 = *(a3[4] - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 32))(v18, v19);
  v20 = *(v15 + 32);
  v21 = *(a3[5] - 8);
  v22 = v21 + 32;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 32))(v25, v26);
  v27 = *(v22 + 32);
  v28 = *(a3[6] - 8);
  v29 = v28 + 32;
  v30 = *(v28 + 80);
  v31 = v27 + v30;
  v32 = (v31 + v25) & ~v30;
  v33 = (v31 + v26) & ~v30;
  (*(v28 + 32))(v32, v33);
  v34 = *(a3[7] - 8);
  (*(v34 + 32))((*(v29 + 32) + *(v34 + 80) + v32) & ~*(v34 + 80), (*(v29 + 32) + *(v34 + 80) + v33) & ~*(v34 + 80));
  return a1;
}

uint64_t sub_2302C5974(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(v8 + 24);
  v14 = *(a3[4] - 8);
  v15 = v14 + 40;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 40))(v18, v19);
  v20 = *(v15 + 24);
  v21 = *(a3[5] - 8);
  v22 = v21 + 40;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 40))(v25, v26);
  v27 = *(v22 + 24);
  v28 = *(a3[6] - 8);
  v29 = v28 + 40;
  v30 = *(v28 + 80);
  v31 = v27 + v30;
  v32 = (v31 + v25) & ~v30;
  v33 = (v31 + v26) & ~v30;
  (*(v28 + 40))(v32, v33);
  v34 = *(a3[7] - 8);
  (*(v34 + 40))((*(v29 + 24) + *(v34 + 80) + v32) & ~*(v34 + 80), (*(v29 + 24) + *(v34 + 80) + v33) & ~*(v34 + 80));
  return a1;
}

uint64_t sub_2302C5B64(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v58 = a3[3];
  v59 = v4;
  v5 = *(v4 + 84);
  v6 = *(v58 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a3[5];
  v56 = v9;
  v57 = a3[4];
  v10 = *(v57 - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v15 = a3[6];
  v14 = a3[7];
  v55 = v14;
  v16 = *(v15 - 8);
  if (v13 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = *(v16 + 84);
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = *(v16 + 84);
  }

  v20 = *(v14 - 8);
  v21 = *(v20 + 84);
  v22 = *(v4 + 64);
  v23 = *(v6 + 80);
  v24 = *(*(v58 - 8) + 64);
  v25 = *(v10 + 80);
  v26 = *(*(v57 - 8) + 64);
  v27 = *(v12 + 80);
  v28 = *(*(v9 - 8) + 64);
  v29 = *(v16 + 80);
  v30 = *(v16 + 64);
  v31 = *(v20 + 80);
  v32 = *(v20 + 64);
  if (v21 <= v19)
  {
    v33 = v19;
  }

  else
  {
    v33 = *(v20 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v34 = v22 + v23;
  v35 = v28 + v29;
  v36 = v30 + v31;
  v37 = a2 - v33;
  if (a2 > v33)
  {
    v38 = (v36 + ((v35 + ((v26 + v27 + ((v24 + v25 + (v34 & ~v23)) & ~v25)) & ~v27)) & ~v29)) & ~v31;
    v39 = v38 + v32;
    v40 = 8 * (v38 + v32);
    if (v39 <= 3)
    {
      v42 = ((v37 + ~(-1 << v40)) >> v40) + 1;
      if (HIWORD(v42))
      {
        v41 = *(a1 + v39);
        if (!v41)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v42 > 0xFF)
      {
        v41 = *(a1 + v39);
        if (!*(a1 + v39))
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v42 < 2)
      {
LABEL_38:
        if (v33)
        {
          goto LABEL_39;
        }

        return 0;
      }
    }

    v41 = *(a1 + v39);
    if (!*(a1 + v39))
    {
      goto LABEL_38;
    }

LABEL_25:
    v43 = (v41 - 1) << v40;
    if (v39 > 3)
    {
      v43 = 0;
    }

    if (v39)
    {
      if (v39 <= 3)
      {
        v44 = v39;
      }

      else
      {
        v44 = 4;
      }

      if (v44 > 2)
      {
        if (v44 == 3)
        {
          v45 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v45 = *a1;
        }
      }

      else if (v44 == 1)
      {
        v45 = *a1;
      }

      else
      {
        v45 = *a1;
      }
    }

    else
    {
      v45 = 0;
    }

    return v33 + (v45 | v43) + 1;
  }

LABEL_39:
  if (v5 == v33)
  {
    v46 = *(v59 + 48);

    return v46(a1);
  }

  v48 = (a1 + v34) & ~v23;
  if (v7 == v33)
  {
    v49 = *(v6 + 48);
    v50 = (a1 + v34) & ~v23;
    v51 = *(v6 + 84);
    v52 = v58;

    return v49(v50, v51, v52);
  }

  if (v11 == v33)
  {
    v49 = *(v10 + 48);
    v50 = (v48 + v24 + v25) & ~v25;
    v51 = *(v10 + 84);
    v52 = v57;

    return v49(v50, v51, v52);
  }

  v50 = (((v48 + v24 + v25) & ~v25) + v26 + v27) & ~v27;
  if (v13 == v33)
  {
    v49 = *(v12 + 48);
    v51 = *(v12 + 84);
    v52 = v56;

    return v49(v50, v51, v52);
  }

  v50 = (v35 + v50) & ~v29;
  if (v18 == v33)
  {
    v49 = *(*(v15 - 8) + 48);
    v51 = v18;
    v52 = v15;

    return v49(v50, v51, v52);
  }

  v53 = *(v20 + 48);
  v54 = (v36 + v50) & ~v31;

  return v53(v54, v21, v55);
}

unsigned int *sub_2302C60C8(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v54 = v6;
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = a4[5];
  v52 = a4[4];
  v13 = *(v52 - 8);
  v53 = *(v13 + 84);
  if (v53 > v11)
  {
    v11 = *(v13 + 84);
  }

  v14 = *(v12 - 8);
  v51 = *(v14 + 84);
  if (v51 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v50 = a4[6];
  v16 = *(v50 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(a4[7] - 8);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v13 + 80);
  v24 = *(*(v52 - 8) + 64);
  v25 = *(v14 + 80);
  v26 = *(*(v12 - 8) + 64);
  v27 = *(v16 + 80);
  v28 = *(*(v50 - 8) + 64);
  v29 = *(v19 + 80);
  v30 = v26 + v27;
  v31 = v28 + v29;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v19 + 64);
  if (*(v19 + 84) <= v18)
  {
    v33 = v18;
  }

  else
  {
    v33 = *(v19 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  if (v33 < a2)
  {
    v35 = ~v33 + a2;
    if (v32 >= 4)
    {
      v36 = result;
      bzero(result, v32);
      result = v36;
      *v36 = v35;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_22;
      }

      goto LABEL_59;
    }

    v37 = (v35 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v35 & ~(-1 << (8 * v32));
      v41 = result;
      bzero(result, v32);
      result = v41;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *v41 = v40;
          if (v34 > 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *v41 = v35;
          if (v34 > 1)
          {
LABEL_22:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_59:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *v41 = v40;
      *(v41 + 2) = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(result + v32) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v32) = 0;
  }

  else if (v34)
  {
    *(result + v32) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v33)
  {
    v42 = v54;
LABEL_45:
    v43 = *(v42 + 56);
LABEL_48:

    return v43();
  }

  v44 = (result + v20 + v21) & ~v21;
  if (v10 == v33)
  {
    v43 = *(v9 + 56);
    goto LABEL_48;
  }

  v45 = (v44 + v22 + v23) & ~v23;
  if (v53 == v33)
  {
    v42 = v13;
    goto LABEL_45;
  }

  v46 = (v45 + v24 + v25) & ~v25;
  if (v51 == v33)
  {
    v47 = *(v14 + 56);

    return v47(v46);
  }

  v46 = (v30 + v46) & ~v27;
  if (v17 == v33)
  {
    v47 = *(v16 + 56);

    return v47(v46);
  }

  v48 = *(v19 + 56);
  v49 = (v31 + v46) & ~v29;

  return v48(v49);
}

uint64_t sub_2302C6648()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          result = swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            result = swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              result = swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                swift_initStructMetadata();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t *sub_2302C6858(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  v49 = *(a3[3] - 8);
  v48 = *(a3[4] - 8);
  v4 = a3[5];
  v46 = *(v4 - 8);
  v5 = *(v46 + 80);
  v47 = a3[6];
  v44 = *(v47 - 8);
  v6 = *(v44 + 80);
  v45 = a3[7];
  v7 = *(v49 + 80);
  v43 = *(v45 - 8);
  v8 = *(v43 + 80);
  v9 = *(v43 + 64);
  v42 = a3[8];
  v10 = *(*(a3[2] - 8) + 64) + v7;
  v41 = *(v42 - 8);
  v11 = *(v49 + 64) + *(v48 + 80);
  v12 = *(v48 + 64) + v5;
  v13 = *(v46 + 64) + v6;
  v14 = *(a3[2] - 8);
  v15 = *(v44 + 64) + v8;
  v16 = *(v41 + 80);
  v17 = (*(v49 + 80) | *(v14 + 80) | *(v48 + 80) | v5 | v6 | v8 | *(v41 + 80));
  if (v17 <= 7 && ((v9 + v16 + ((v15 + ((v13 + ((v12 + ((v11 + (v10 & ~v7)) & ~*(v48 + 80))) & ~*(v46 + 80))) & ~*(v44 + 80))) & ~*(v43 + 80))) & ~v16) + *(*(v42 - 8) + 64) <= 0x18 && ((*(v49 + 80) | *(v14 + 80) | *(v48 + 80) | v5 | v6 | v8 | *(v41 + 80)) & 0x100000) == 0)
  {
    v34 = a3[3];
    v21 = ~v7;
    v36 = a3[4];
    v22 = ~*(v48 + 80);
    v35 = ~v5;
    v37 = ~v6;
    v38 = ~v8;
    v39 = v9 + v16;
    v40 = ~v16;
    (*(v14 + 16))(a1);
    v24 = (v3 + v10) & v21;
    v25 = (a2 + v10) & v21;
    (*(v49 + 16))(v24, v25, v34);
    v26 = (v25 + v11) & v22;
    (*(v48 + 16))((v24 + v11) & v22, v26, v36);
    v27 = (((v24 + v11) & v22) + v12) & v35;
    v28 = (v26 + v12) & v35;
    (*(v46 + 16))(v27, v28, v4);
    v29 = (v27 + v13) & v37;
    v30 = (v28 + v13) & v37;
    (*(v44 + 16))(v29, v30, v47);
    v31 = (v29 + v15) & v38;
    v32 = (v30 + v15) & v38;
    (*(v43 + 16))(v31, v32, v45);
    (*(v41 + 16))((v31 + v39) & v40, (v32 + v39) & v40, v42);
  }

  else
  {
    v20 = *a2;
    *v3 = *a2;
    v3 = (v20 + ((v17 + 16) & ~v17));
  }

  return v3;
}

uint64_t sub_2302C6CD0(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(v7 + 56);
  v10 = *(a2[4] - 8);
  v11 = v10 + 8;
  v12 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  (*(v10 + 8))(v12);
  v13 = *(v11 + 56);
  v14 = *(a2[5] - 8);
  v15 = v14 + 8;
  v16 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  (*(v14 + 8))(v16);
  v17 = *(v15 + 56);
  v18 = *(a2[6] - 8);
  v19 = v18 + 8;
  v20 = (v16 + v17 + *(v18 + 80)) & ~*(v18 + 80);
  (*(v18 + 8))(v20);
  v21 = *(v19 + 56);
  v22 = *(a2[7] - 8);
  v23 = v22 + 8;
  v24 = (v20 + v21 + *(v22 + 80)) & ~*(v22 + 80);
  (*(v22 + 8))(v24);
  v25 = *(a2[8] - 8);
  v26 = *(v25 + 8);
  v27 = (v24 + *(v23 + 56) + *(v25 + 80)) & ~*(v25 + 80);

  return v26(v27);
}

uint64_t sub_2302C6EC8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(v8 + 48);
  v14 = *(a3[4] - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(v15 + 48);
  v21 = *(a3[5] - 8);
  v22 = v21 + 16;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 16))(v25, v26);
  v27 = *(v22 + 48);
  v28 = *(a3[6] - 8);
  v29 = v28 + 16;
  v30 = *(v28 + 80);
  v31 = v27 + v30;
  v32 = (v31 + v25) & ~v30;
  v33 = (v31 + v26) & ~v30;
  (*(v28 + 16))(v32, v33);
  v34 = *(v29 + 48);
  v35 = *(a3[7] - 8);
  v36 = v35 + 16;
  v37 = *(v35 + 80);
  v38 = v34 + v37;
  v39 = (v38 + v32) & ~v37;
  v40 = (v38 + v33) & ~v37;
  (*(v35 + 16))(v39, v40);
  v41 = *(a3[8] - 8);
  (*(v41 + 16))((*(v36 + 48) + *(v41 + 80) + v39) & ~*(v41 + 80), (*(v36 + 48) + *(v41 + 80) + v40) & ~*(v41 + 80));
  return a1;
}

uint64_t sub_2302C7108(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(v8 + 40);
  v14 = *(a3[4] - 8);
  v15 = v14 + 24;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 24))(v18, v19);
  v20 = *(v15 + 40);
  v21 = *(a3[5] - 8);
  v22 = v21 + 24;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 24))(v25, v26);
  v27 = *(v22 + 40);
  v28 = *(a3[6] - 8);
  v29 = v28 + 24;
  v30 = *(v28 + 80);
  v31 = v27 + v30;
  v32 = (v31 + v25) & ~v30;
  v33 = (v31 + v26) & ~v30;
  (*(v28 + 24))(v32, v33);
  v34 = *(v29 + 40);
  v35 = *(a3[7] - 8);
  v36 = v35 + 24;
  v37 = *(v35 + 80);
  v38 = v34 + v37;
  v39 = (v38 + v32) & ~v37;
  v40 = (v38 + v33) & ~v37;
  (*(v35 + 24))(v39, v40);
  v41 = *(a3[8] - 8);
  (*(v41 + 24))((*(v36 + 40) + *(v41 + 80) + v39) & ~*(v41 + 80), (*(v36 + 40) + *(v41 + 80) + v40) & ~*(v41 + 80));
  return a1;
}

uint64_t sub_2302C7348(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(v8 + 32);
  v14 = *(a3[4] - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 32))(v18, v19);
  v20 = *(v15 + 32);
  v21 = *(a3[5] - 8);
  v22 = v21 + 32;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 32))(v25, v26);
  v27 = *(v22 + 32);
  v28 = *(a3[6] - 8);
  v29 = v28 + 32;
  v30 = *(v28 + 80);
  v31 = v27 + v30;
  v32 = (v31 + v25) & ~v30;
  v33 = (v31 + v26) & ~v30;
  (*(v28 + 32))(v32, v33);
  v34 = *(v29 + 32);
  v35 = *(a3[7] - 8);
  v36 = v35 + 32;
  v37 = *(v35 + 80);
  v38 = v34 + v37;
  v39 = (v38 + v32) & ~v37;
  v40 = (v38 + v33) & ~v37;
  (*(v35 + 32))(v39, v40);
  v41 = *(a3[8] - 8);
  (*(v41 + 32))((*(v36 + 32) + *(v41 + 80) + v39) & ~*(v41 + 80), (*(v36 + 32) + *(v41 + 80) + v40) & ~*(v41 + 80));
  return a1;
}

uint64_t sub_2302C7588(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(v8 + 24);
  v14 = *(a3[4] - 8);
  v15 = v14 + 40;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 40))(v18, v19);
  v20 = *(v15 + 24);
  v21 = *(a3[5] - 8);
  v22 = v21 + 40;
  v23 = *(v21 + 80);
  v24 = v20 + v23;
  v25 = (v24 + v18) & ~v23;
  v26 = (v24 + v19) & ~v23;
  (*(v21 + 40))(v25, v26);
  v27 = *(v22 + 24);
  v28 = *(a3[6] - 8);
  v29 = v28 + 40;
  v30 = *(v28 + 80);
  v31 = v27 + v30;
  v32 = (v31 + v25) & ~v30;
  v33 = (v31 + v26) & ~v30;
  (*(v28 + 40))(v32, v33);
  v34 = *(v29 + 24);
  v35 = *(a3[7] - 8);
  v36 = v35 + 40;
  v37 = *(v35 + 80);
  v38 = v34 + v37;
  v39 = (v38 + v32) & ~v37;
  v40 = (v38 + v33) & ~v37;
  (*(v35 + 40))(v39, v40);
  v41 = *(a3[8] - 8);
  (*(v41 + 40))((*(v36 + 24) + *(v41 + 80) + v39) & ~*(v41 + 80), (*(v36 + 24) + *(v41 + 80) + v40) & ~*(v41 + 80));
  return a1;
}

uint64_t sub_2302C77C8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v53 = a3[2];
  v52 = a3[3];
  v5 = *(*(v53 - 8) + 84);
  v6 = *(v52 - 8);
  v7 = *(v6 + 84);
  v8 = a3[5];
  v50 = a3[4];
  v9 = *(v50 - 8);
  if (v7 <= v5)
  {
    v10 = *(*(v53 - 8) + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v51 = *(v9 + 84);
  if (v51 > v10)
  {
    v10 = *(v9 + 84);
  }

  v49 = *(*(v8 - 8) + 84);
  if (v49 > v10)
  {
    v10 = *(*(v8 - 8) + 84);
  }

  v11 = *(a3[6] - 8);
  if (*(v11 + 84) <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v11 + 84);
  }

  v48 = a3[7];
  v13 = *(v48 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v47 = a3[8];
  v16 = *(v47 - 8);
  v17 = *(v6 + 80);
  v54 = *(*(v52 - 8) + 64);
  v18 = *(v9 + 80);
  v19 = *(v8 - 8);
  v20 = *(v9 + 64);
  v21 = *(v19 + 80);
  v22 = *(v11 + 80);
  v23 = *(v13 + 80);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v26 = *(*(v53 - 8) + 64) + v17;
  v27 = *(v19 + 64) + v22;
  v28 = *(v11 + 64) + v23;
  v29 = *(*(v48 - 8) + 64) + v24;
  v30 = a2 >= v25;
  v31 = a2 - v25;
  if (v31 == 0 || !v30)
  {
    goto LABEL_42;
  }

  v32 = ((v29 + ((v28 + ((v27 + ((v20 + v21 + ((v54 + v18 + (v26 & ~v17)) & ~v18)) & ~v21)) & ~v22)) & ~v23)) & ~v24) + *(*(v47 - 8) + 64);
  v33 = 8 * v32;
  if (v32 > 3)
  {
    goto LABEL_21;
  }

  v35 = ((v31 + ~(-1 << v33)) >> v33) + 1;
  if (HIWORD(v35))
  {
    v34 = *(a1 + v32);
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v35 > 0xFF)
  {
    v34 = *(a1 + v32);
    if (!*(a1 + v32))
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v35 >= 2)
  {
LABEL_21:
    v34 = *(a1 + v32);
    if (!*(a1 + v32))
    {
      goto LABEL_41;
    }

LABEL_28:
    v36 = (v34 - 1) << v33;
    if (v32 > 3)
    {
      v36 = 0;
    }

    if (v32)
    {
      if (v32 <= 3)
      {
        v37 = ((v29 + ((v28 + ((v27 + ((v20 + v21 + ((v54 + v18 + (v26 & ~v17)) & ~v18)) & ~v21)) & ~v22)) & ~v23)) & ~v24) + *(*(v47 - 8) + 64);
      }

      else
      {
        v37 = 4;
      }

      if (v37 > 2)
      {
        if (v37 == 3)
        {
          v38 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v38 = *a1;
        }
      }

      else if (v37 == 1)
      {
        v38 = *a1;
      }

      else
      {
        v38 = *a1;
      }
    }

    else
    {
      v38 = 0;
    }

    return v25 + (v38 | v36) + 1;
  }

LABEL_41:
  if (!v25)
  {
    return 0;
  }

LABEL_42:
  if (v5 == v25)
  {
    v40 = *(v53 - 8);
    v39 = v53;
LABEL_44:
    v41 = *(v40 + 48);
    goto LABEL_48;
  }

  if (v7 == v25)
  {
    v39 = v52;
    v41 = *(*(v52 - 8) + 48);
    a1 = ((a1 + v26) & ~v17);
    v5 = v7;
LABEL_48:

    return v41(a1, v5, v39);
  }

  a1 = ((((a1 + v26) & ~v17) + v54 + v18) & ~v18);
  v5 = v51;
  if (v51 == v25)
  {
    v40 = *(v50 - 8);
    v39 = v50;
    goto LABEL_44;
  }

  v43 = (a1 + v20 + v21) & ~v21;
  if (v49 == v25)
  {
    v44 = *(v19 + 48);

    return v44(v43);
  }

  else
  {
    v45 = (v27 + v43) & ~v22;
    if (*(v11 + 84) != v25)
    {
      a1 = ((v28 + v45) & ~v23);
      if (v14 == v25)
      {
        v41 = *(v13 + 48);
        v5 = *(v13 + 84);
        v39 = v48;
      }

      else
      {
        v41 = *(v16 + 48);
        a1 = ((a1 + v29) & ~v24);
        v5 = *(v16 + 84);
        v39 = v47;
      }

      return v41(a1, v5, v39);
    }

    v46 = *(v11 + 48);

    return v46(v45);
  }
}

uint64_t sub_2302C7DAC(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v51 = *(a4[2] - 8);
  v4 = *(v51 + 84);
  v5 = *(a4[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v51 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a4[5];
  v9 = *(a4[4] - 8);
  v49 = *(v9 + 84);
  if (v49 > v7)
  {
    v7 = *(v9 + 84);
  }

  v10 = *(v8 - 8);
  v47 = *(v10 + 84);
  if (v47 > v7)
  {
    v7 = *(v10 + 84);
  }

  v11 = a4[7];
  v12 = *(a4[6] - 8);
  v45 = *(v12 + 84);
  if (v45 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(a4[8] - 8);
  v18 = *(*(a4[2] - 8) + 64);
  v50 = *(a4[3] - 8);
  v19 = *(v5 + 80);
  v20 = *(v50 + 64);
  v48 = *(a4[4] - 8);
  v21 = *(v9 + 80);
  v22 = *(v48 + 64);
  v46 = *(v8 - 8);
  v23 = *(v10 + 80);
  v24 = *(v46 + 64);
  v25 = *(v12 + 80);
  v26 = *(*(a4[6] - 8) + 64);
  v27 = *(v14 + 80);
  v28 = *(*(v11 - 8) + 64);
  v29 = *(v17 + 80);
  v30 = v18 + v19;
  v31 = v26 + v27;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v17 + 64);
  if (*(v17 + 84) <= v16)
  {
    v33 = v16;
  }

  else
  {
    v33 = *(v17 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  result = a1;
  if (v33 < a2)
  {
    v36 = ~v33 + a2;
    if (v32 >= 4)
    {
      bzero(a1, v32);
      result = a1;
      *a1 = v36;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_24;
      }

      goto LABEL_57;
    }

    v37 = (v36 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v36 & ~(-1 << (8 * v32));
      bzero(a1, v32);
      result = a1;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *a1 = v40;
          if (v34 > 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *a1 = v36;
          if (v34 > 1)
          {
LABEL_24:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_57:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *a1 = v40;
      a1[2] = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_45;
    }

    *&a1[v32] = 0;
  }

  else if (v34)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return result;
  }

LABEL_45:
  if (v4 == v33)
  {
    v41 = *(v51 + 56);
    goto LABEL_65;
  }

  if (v6 == v33)
  {
    v41 = *(v50 + 56);
    result = &a1[v30] & ~v19;
    goto LABEL_65;
  }

  result = ((&a1[v30] & ~v19) + v20 + v21) & ~v21;
  if (v49 == v33)
  {
    v42 = v48;
LABEL_64:
    v41 = *(v42 + 56);
LABEL_65:

    return v41(result);
  }

  result = (result + v22 + v23) & ~v23;
  if (v47 == v33)
  {
    v42 = v46;
    goto LABEL_64;
  }

  v43 = (v24 + v25 + result) & ~v25;
  if (v45 != v33)
  {
    result = (v31 + v43) & ~v27;
    if (v15 == v33)
    {
      v41 = *(v14 + 56);
    }

    else
    {
      v41 = *(v17 + 56);
      result = (v28 + v29 + result) & ~v29;
    }

    return v41(result);
  }

  v44 = *(v12 + 56);

  return v44(v43);
}

uint64_t sub_2302C83D8()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB19550);
  v1 = __swift_project_value_buffer(v0, qword_27DB19550);
  if (qword_27DB13B80 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DB4F5A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static SGRecordId.createFrom(data:)(uint64_t a1, unint64_t a2)
{
  sub_23004CBA4(0, &qword_27DB19568);
  sub_23004CBA4(0, &qword_27DB19570);
  v4 = sub_2303102C8();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 recordId];

    return v6;
  }

  if (qword_27DB13D10 != -1)
  {
    swift_once();
  }

  v8 = sub_23030EF48();
  __swift_project_value_buffer(v8, qword_27DB19550);
  sub_23005FAD4(a1, a2);
  v9 = sub_23030EF38();
  v10 = sub_230310288();
  if (!os_log_type_enabled(v9, v10))
  {
    sub_23005FE3C(a1, a2);
LABEL_18:

    return 0;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v12 = 0;
      goto LABEL_17;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = __OFSUB__(v13, v14);
    v12 = v13 - v14;
    if (!v15)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a2);
LABEL_17:
    *(result + 4) = v12;
    v16 = result;
    sub_23005FE3C(a1, a2);
    _os_log_impl(&dword_230044000, v9, v10, "Unable to unarchive SGReminderMetadata from data. {data.count: %ld}", v16, 0xCu);
    MEMORY[0x231914180](v16, -1, -1);
    goto LABEL_18;
  }

  LODWORD(v12) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v12 = v12;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2302C885C()
{
  v0 = sub_230310348();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2303102F8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23030F4C8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_230047540();
  sub_23030F478();
  v7[1] = MEMORY[0x277D84F90];
  sub_23004758C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14710);
  sub_2300475E4();
  sub_230310648();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v0);
  result = sub_230310388();
  qword_280C9B028 = result;
  return result;
}

id RDIDispatchQueue.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RDIDispatchQueue.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDIDispatchQueue();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RDIDispatchQueue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDIDispatchQueue();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *static REMGroceryDataView.fetchSecondaryGroceryLocale(store:modelBaseLocaleConversion:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300D7FBC(v10, a2, v9);
  if (v2)
  {
  }

  else
  {
    sub_2302C8D98(v9, v6);
    v11 = v9[*(type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result() + 20)];
    v12 = sub_23030ED38();
    v13 = *(v12 - 8);
    v14 = 0;
    if ((*(v13 + 48))(v6, 1, v12) != 1)
    {
      v14 = sub_23030EC38();
      (*(v13 + 8))(v6, v12);
    }

    v6 = [objc_allocWithZone(MEMORY[0x277D447E0]) initWithLocale:v14 isAutomatic:v11];

    sub_230061918(v9, &qword_27DB14B80);
  }

  return v6;
}

uint64_t sub_2302C8D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result()
{
  result = qword_27DB195C8;
  if (!qword_27DB195C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2302C8E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000230346B40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230311048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2302C8F1C(uint64_t a1)
{
  v2 = sub_2302C90CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302C8F58(uint64_t a1)
{
  v2 = sub_2302C90CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMGroceryDataView.SecondaryGroceryLocaleInvocation.Parameters.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19578);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302C90CC();
  sub_230311448();
  sub_230310DB8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_2302C90CC()
{
  result = qword_27DB19580;
  if (!qword_27DB19580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19580);
  }

  return result;
}

uint64_t REMGroceryDataView.SecondaryGroceryLocaleInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19588);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302C90CC();
  sub_230311428();
  if (!v2)
  {
    v9 = sub_230310CA8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2302C9290(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19578);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302C90CC();
  sub_230311448();
  sub_230310DB8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result.init(locale:isAutomatic:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2302C9434(a1, a3);
  result = type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_2302C9434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2302C94A4()
{
  if (*v0)
  {
    return 0x616D6F7475417369;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_2302C94E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616D6F7475417369 && a2 == 0xEB00000000636974)
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

uint64_t sub_2302C95C0(uint64_t a1)
{
  v2 = sub_2302C97F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302C95FC(uint64_t a1)
{
  v2 = sub_2302C97F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19590);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302C97F0();
  sub_230311448();
  v8[15] = 0;
  sub_23030ED38();
  sub_2302C9F64(&qword_27DB195A0, MEMORY[0x277CC9788]);
  sub_230310D98();
  if (!v1)
  {
    type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result();
    v8[14] = 1;
    sub_230310DB8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2302C97F0()
{
  result = qword_27DB19598;
  if (!qword_27DB19598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19598);
  }

  return result;
}

uint64_t REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  MEMORY[0x28223BE20](v4 - 8);
  v20 = &v17 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB195A8);
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result();
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2302C97F0();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v19;
  sub_23030ED38();
  v22 = 0;
  sub_2302C9F64(&qword_27DB195B0, MEMORY[0x277CC9788]);
  v14 = v20;
  sub_230310C88();
  sub_2302C9434(v14, v12);
  v21 = 1;
  v15 = sub_230310CA8();
  (*(v13 + 8))(v8, v6);
  *(v12 + *(v9 + 20)) = v15 & 1;
  sub_2302C9B30(v12, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2302C9B94(v12);
}

uint64_t sub_2302C9B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2302C9B94(uint64_t a1)
{
  v2 = type metadata accessor for REMGroceryDataView.SecondaryGroceryLocaleInvocation.Result();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id REMGroceryDataView.SecondaryGroceryLocaleInvocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

id REMGroceryDataView.SecondaryGroceryLocaleInvocation.init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithFetchResultTokenToDiffAgainst_, a1);

  return v3;
}

id REMGroceryDataView.SecondaryGroceryLocaleInvocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id REMGroceryDataView.SecondaryGroceryLocaleInvocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}
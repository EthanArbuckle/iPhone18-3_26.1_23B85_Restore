uint64_t sub_20B572C60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B572CAC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B572CEC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B572D2C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B572D64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B572DA4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B572DDC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B572E28()
{
  v1 = *(type metadata accessor for AccountSettingLink() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v6 = sub_20C132C14();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B572F30()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B572F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 50)
  {
    v10 = *(a1 + *(a3 + 20));
    v11 = (v10 >> 57) & 0x78 | v10 & 7;
    LODWORD(v10) = v11 ^ 0x7E;
    v12 = 128 - v11;
    if (v10 >= 0x32)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    v13 = sub_20C132E94();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_20B5730C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C133244();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 50)
  {
    *(a1 + *(a4 + 20)) = (-a2 | (-a2 << 57)) & 0xF000000000000007;
  }

  else
  {
    v11 = sub_20C132E94();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20B5731E8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B573234()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B5732DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B573314()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B573354()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B5733A4()
{
  v1 = sub_20C135174();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B57347C()
{
  v1 = sub_20C135174();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_20B573528()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B573570()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5735B8()
{
  v1 = sub_20C135174();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B573698()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5736D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B573724()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B573780()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5737C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B573808()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B573854()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B573898()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B573B2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B573B64()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B573B9C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B573BEC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B573CBC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B573CF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B573D2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B573DD8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B573E18()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B573E58()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B573E90()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B573EC8()
{
  v1 = (type metadata accessor for ButtonAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  type metadata accessor for ButtonAction.ActionType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload > 9)
    {
      if (EnumCaseMultiPayload == 10)
      {
        v13 = sub_20C134284();
        (*(*(v13 - 8) + 8))(v5, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200);

        goto LABEL_44;
      }

      if (EnumCaseMultiPayload != 12)
      {
        if (EnumCaseMultiPayload != 13)
        {
          goto LABEL_44;
        }

        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210) + 48);
        v9 = sub_20C132C14();
        goto LABEL_43;
      }

      type metadata accessor for StartWorkoutSessionRequest();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        v26 = sub_20C1344C4();
        (*(*(v26 - 8) + 8))(v5, v26);
      }

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0);
      v28 = *(v27 + 48);
      v29 = sub_20C135C54();
      v30 = *(v29 - 8);
      if (!(*(v30 + 48))(v5 + v28, 1, v29))
      {
        (*(v30 + 8))(v5 + v28, v29);
      }

      v8 = *(v27 + 64);
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {

          goto LABEL_44;
        }

        v7 = sub_20C138B94();
        (*(*(v7 - 8) + 8))(v5, v7);
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8) + 48);
        v9 = sub_20C138894();
        goto LABEL_43;
      }

      type metadata accessor for StartWorkoutSessionRequest();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        v21 = sub_20C1344C4();
        (*(*(v21 - 8) + 8))(v5, v21);
      }

      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0);
      v23 = *(v22 + 64);
      v24 = sub_20C135C54();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v5 + v23, 1, v24))
      {
        (*(v25 + 8))(v5 + v23, v24);
      }

      v8 = *(v22 + 80);
    }

    v9 = sub_20C137254();
LABEL_43:
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v12 = sub_20C134014();
        break;
      case 4:
        v12 = sub_20C133954();
        break;
      case 6:
        goto LABEL_14;
      default:
        goto LABEL_44;
    }

    (*(*(v12 - 8) + 8))(v5, v12);
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_44;
      }

LABEL_14:

      goto LABEL_44;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8);
    v15 = *(v14 + 48);
    v16 = sub_20C138B94();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }

    v18 = *(v14 + 64);
    v19 = sub_20C138894();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v5 + v18, 1, v19))
    {
      (*(v20 + 8))(v5 + v18, v19);
    }
  }

  else
  {
    v10 = sub_20C135814();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5, 1, v10))
    {
      (*(v11 + 8))(v5, v10);
    }
  }

LABEL_44:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B574574()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5745AC()
{
  v1 = sub_20C133954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B574678()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B5746B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B574730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20B5747AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[7]);
      if (v13 >= 7)
      {
        return v13 - 6;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_20B5748C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = a2 + 6;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_20B574A10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C1365E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20B574A3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B574A74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B574AD4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B574B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVFilterRootPropertyUpdated.PropertyType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B574BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVFilterRootPropertyUpdated.PropertyType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20B574C18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B574C50()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20B574CA8()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20B574D00()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B574D40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B574D78()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B574DB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B574E78()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B574EB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B574EF0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B574F30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B574F6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B574FA4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B574FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B575054(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20B575108()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B57518C()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 40) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B575FC4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B575FFC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B576034()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_20B576074()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5760B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134EC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20B576180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C134EC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_20B576240()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B576278()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5762B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5762F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B576388()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B5763C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B576404()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B576474()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5764C4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B57650C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B576558()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B576598()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B57665C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B576694()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B5767C8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B576888()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B576968()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5769C8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B576A74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B576AB8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B576AF0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B576B34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B576B74()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B576BAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B576C08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B576C40()
{
  v1 = sub_20C135734();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B576CC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B576D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C13BFF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_20C132EE4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_20B576E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C13BFF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_20C132EE4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20B576F94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B577010()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57705C()
{
  v1 = sub_20C1388F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5770E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57716C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5771BC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B577278()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5772B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5772F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57733C()
{
  v1 = type metadata accessor for CatalogTipPlaybackContent();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  v7 = sub_20C137C24();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v1 + 32);
  v10 = sub_20C132C14();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B5774DC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57754C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B577594()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5775CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B577618()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B577678()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5776B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B577718()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B577750()
{
  v1 = sub_20C135FB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5777D8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B577810()
{
  v1 = sub_20C132E94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B577904()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B577968()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B5779BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770D18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B577AA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770D18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B577B94()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B577BCC()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_20B577C0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B577C7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B577CB4()
{
  v1 = sub_20C1377C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B577D50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B577DB0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B577DF0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B577E48()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B577E80()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B577ECC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B577F0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B577F60()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B577FB0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B577FE8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B578020()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B578058()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B578098()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5780D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B57817C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5781BC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5781FC()
{
  v1 = sub_20C132614();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B578298()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5782D0()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B578310()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B578374()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B57840C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57846C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5784A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B578530()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B578568()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B57869C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B57875C()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B57883C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57889C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B578908()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B578958()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5789AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B578A54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B578A8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B578B38()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B578B78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B578BC0()
{

  sub_20B583FB8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B578C04()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B578C44()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_20C138204();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B578D54()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for NavigationResource();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 7u:
      case 8u:
      case 0xBu:
      case 0xDu:
        goto LABEL_4;
      case 1u:
        v8 = sub_20C132C14();
        (*(*(v8 - 8) + 8))(v0 + v3, v8);
        v7 = &unk_27C763FC0;
        goto LABEL_19;
      case 2u:
        v9 = sub_20C138894();
        goto LABEL_13;
      case 3u:

        goto LABEL_4;
      case 4u:
        v16 = sub_20C1387E4();
        (*(*(v16 - 8) + 8))(v0 + v3, v16);
        v7 = &unk_27C7710E0;
        goto LABEL_19;
      case 5u:

        break;
      case 6u:
        v6 = sub_20C138894();
        (*(*(v6 - 8) + 8))(v0 + v3, v6);
        v7 = &unk_27C763FD0;
LABEL_19:
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
        v18 = sub_20C1388F4();
        (*(*(v18 - 8) + 8))(v5 + v17, v18);
        break;
      case 9u:
        v9 = sub_20C132C14();
        goto LABEL_13;
      case 0xCu:

        break;
      case 0xEu:

        goto LABEL_4;
      case 0xFu:
        v9 = sub_20C138204();
LABEL_13:
        (*(*(v9 - 8) + 8))(v0 + v3, v9);
        break;
      case 0x10u:
        type metadata accessor for WorkoutNavigationResource();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v10 = sub_20C1344C4();
          (*(*(v10 - 8) + 8))(v0 + v3, v10);
          v11 = type metadata accessor for WorkoutSessionConfiguration();
          v12 = v11[5];
          v13 = sub_20C137254();
          (*(*(v13 - 8) + 8))(v5 + v12, v13);
          v14 = v11[7];
          sub_20C13A484();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v15 = sub_20C137EA4();
            (*(*(v15 - 8) + 8))(v5 + v14, v15);
          }

          else
          {
          }

          v34 = v11[9];
          v35 = sub_20C13BA24();
          v36 = *(v35 - 8);
          if (!(*(v36 + 48))(v5 + v34, 1, v35))
          {
            (*(v36 + 8))(v5 + v34, v35);
          }

          v37 = v11[10];
          v38 = sub_20C134A44();
          v39 = *(v38 - 8);
          if (!(*(v39 + 48))(v5 + v37, 1, v38))
          {
            (*(v39 + 8))(v5 + v37, v38);
          }

          if (*(v5 + v11[11] + 8) >= 0xC)
          {
          }

          v40 = v11[12];
          v41 = sub_20C135C54();
          v42 = *(v41 - 8);
          if (!(*(v42 + 48))(v5 + v40, 1, v41))
          {
            (*(v42 + 8))(v5 + v40, v41);
          }
        }

LABEL_4:

        break;
      default:
        break;
    }

    v19 = type metadata accessor for NavigationRequest();
    v20 = v5 + *(v19 + 20);
    type metadata accessor for NavigationIntent();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 5:

        v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
        v24 = sub_20C1344C4();
        v25 = *(v24 - 8);
        if (!(*(v25 + 48))(&v20[v23], 1, v24))
        {
          (*(v25 + 8))(&v20[v23], v24);
        }

        break;
      case 4:

        break;
      case 3:
        v22 = sub_20C139144();
        (*(*(v22 - 8) + 8))(v20, v22);
        break;
    }

    v26 = v5 + *(v19 + 24);
    type metadata accessor for NavigationSource();
    v27 = swift_getEnumCaseMultiPayload();
    if (v27 == 1)
    {
      v33 = sub_20C135024();
      (*(*(v33 - 8) + 8))(v26, v33);
    }

    else if (!v27)
    {
      v28 = v4;
      v29 = sub_20C132C14();
      v30 = *(v29 - 8);
      v31 = *(v30 + 8);
      v31(v26, v29);
      v32 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
      if (!(*(v30 + 48))(&v26[v32], 1, v29))
      {
        v31(&v26[v32], v29);
      }

      v4 = v28;
      v3 = (v2 + 32) & ~v2;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B5795C0()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5795F8()
{

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20B5796C8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B579700()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B579740()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5797A4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5797DC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B579814()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57984C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57989C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5798DC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B579914()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_20B57995C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    type metadata accessor for ShelfItemX();
    v10 = *(a3 + 20);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
    v12 = *(*(v11 - 8) + 48);

    return v12(a1 + v10, a2, v11);
  }
}

uint64_t sub_20B579A60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20C133244();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    type metadata accessor for ShelfItemX();
    v12 = *(a4 + 20);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a1 + v12, a2, a2, v13);
  }
}

uint64_t sub_20B579B70()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B579BB0()
{
  v1 = sub_20C1356C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B579C94()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B579CCC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B579D0C()
{
  sub_20B9E75BC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B579D58()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B579D90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B579DD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B579E08()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B579E44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B579E84()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B579EBC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B579F34()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B579F6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B579FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20B57A064(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FD90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B57A120()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57A158()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57A190()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B57A1E4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57A21C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B57A264()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B57A2A4()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B57A2F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57A32C()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = v0;
    v28 = v3;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v0 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B57AB44()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B57AB80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57ABF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57ACFC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57AD34()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20B57AD8C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57ADCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57AE64()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57AE9C()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v36 = v11[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v11[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v42 = v11[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v46 = v2;
    v27 = v0;
    v28 = v3;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v0 = v27;
    v2 = v46;
  }

  v35 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1(v0 + v35 + 16);

  return MEMORY[0x2821FE8E8](v0, v35 + 56, v2 | 7);
}

uint64_t sub_20B57B6D4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B57B70C()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 72) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B57BF48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57BF94()
{
  v1 = sub_20C1353F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for NavigationRequest();
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v49 = *(*(v6 - 8) + 64);

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  (*(v2 + 8))(v0 + v4, v1);
  v9 = (v0 + v8);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v12 = sub_20C132C14();
      (*(*(v12 - 8) + 8))(v0 + v8, v12);
      v11 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v13 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v20 = sub_20C1387E4();
      (*(*(v20 - 8) + 8))(v0 + v8, v20);
      v11 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v10 = sub_20C138894();
      (*(*(v10 - 8) + 8))(v0 + v8, v10);
      v11 = &unk_27C763FD0;
LABEL_17:
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v11) + 48);
      v22 = sub_20C1388F4();
      (*(*(v22 - 8) + 8))(v9 + v21, v22);
      break;
    case 9u:
      v13 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v13 = sub_20C138204();
LABEL_11:
      (*(*(v13 - 8) + 8))(v0 + v8, v13);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = sub_20C1344C4();
        (*(*(v14 - 8) + 8))(v0 + v8, v14);
        v15 = type metadata accessor for WorkoutSessionConfiguration();
        v16 = v15[5];
        v17 = sub_20C137254();
        (*(*(v17 - 8) + 8))(v9 + v16, v17);
        v18 = v15[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v19 = sub_20C137EA4();
          (*(*(v19 - 8) + 8))(v9 + v18, v19);
        }

        else
        {
        }

        v38 = v15[9];
        v39 = sub_20C13BA24();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v9 + v38, 1, v39))
        {
          (*(v40 + 8))(v9 + v38, v39);
        }

        v41 = v15[10];
        v42 = sub_20C134A44();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v9 + v41, 1, v42))
        {
          (*(v43 + 8))(v9 + v41, v42);
        }

        if (*(v9 + v15[11] + 8) >= 0xC)
        {
        }

        v44 = v15[12];
        v45 = sub_20C135C54();
        v46 = *(v45 - 8);
        if (!(*(v46 + 48))(v9 + v44, 1, v45))
        {
          (*(v46 + 8))(v9 + v44, v45);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v23 = v9 + *(v6 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v27 = sub_20C1344C4();
      v28 = *(v27 - 8);
      if (!(*(v28 + 48))(&v23[v26], 1, v27))
      {
        (*(v28 + 8))(&v23[v26], v27);
      }

      break;
    case 4:

      break;
    case 3:
      v25 = sub_20C139144();
      (*(*(v25 - 8) + 8))(v23, v25);
      break;
  }

  v29 = v9 + *(v6 + 24);
  type metadata accessor for NavigationSource();
  v30 = swift_getEnumCaseMultiPayload();
  if (v30 == 1)
  {
    v37 = sub_20C135024();
    (*(*(v37 - 8) + 8))(v29, v37);
  }

  else if (!v30)
  {
    v48 = v7;
    v31 = v3;
    v32 = v8;
    v33 = sub_20C132C14();
    v34 = *(v33 - 8);
    v35 = *(v34 + 8);
    v35(v29, v33);
    v36 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v34 + 48))(&v29[v36], 1, v33))
    {
      v35(&v29[v36], v33);
    }

    v8 = v32;
    v3 = v31;
    v7 = v48;
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v49, v3 | v7 | 7);
}

uint64_t sub_20B57C8D4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57C90C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_20B57C968(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC9SeymourUI21SessionViewController_pictureInPictureSurrogate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_20B57C9CC()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57CA14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57CA4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57CA8C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_20B57CAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20C133A74();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20B57CB70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20C133A74();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20B57CC24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57CC88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57CCCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57CD1C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57CD54()
{
  v1 = sub_20C136C64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_20B57CE70()
{
  v1 = sub_20C136C64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B57CFCC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20C137254();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_20C1344C4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_20C13A484();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[9]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_20B57D1C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_20C137254();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_20C1344C4();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = sub_20C13A484();
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[9]) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20B57D3C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57D460()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B57D4B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57D4E8()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B57D528()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57D58C()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20B57D5E4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B57D630()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57D6CC()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B57D730()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57D780()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57D7B8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57D7F8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57D830()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57D8D4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57D93C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57D974()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B57DAA8()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B57DB68()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B57DC48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57DCA8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57DCF0()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B57DD30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57DD90()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57DDE4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B57DE58()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57DEA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57DEFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57DF34()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57DF88()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57E07C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57E0B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57E114()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B57E180()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57E1B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57E290()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57E2D0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57E314()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57E360()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57E3AC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57E52C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57E564()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B57E5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134EC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20B57E6AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_20C134EC4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20B57E7B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57E7EC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57E82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134EC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20B57E8F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C134EC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_20B57E9B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57E9EC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57EA2C()
{
  v1 = sub_20C132EE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B57EAF8()
{
  v1 = sub_20C132EE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B57EBDC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57EC14()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B57EC54()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57EC9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57ECD8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57ED10()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B57EE44()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B57EF04()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_20B57EFE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57F044()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57F08C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57F0D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57F118()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B57F154()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57F18C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57F1CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57F204()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764480);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B57F2B0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57F2F4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B57F3B4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57F3F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57F42C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B57F4E0()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20B57F550()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57F5A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57F604()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57F63C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B57F674()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57F6AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57F6EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57F724()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B57F764()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57F79C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B57F7EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57F824()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57F8BC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57F8F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57F92C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48) >= 3uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B57F98C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B57F9CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C1382A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20B57FA58()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B57FA90()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B57FAD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B57FB1C()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v36 = v11[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v11[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v42 = v11[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v46 = v2;
    v27 = v0;
    v28 = v3;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v0 = v27;
    v2 = v46;
  }

  v35 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1(v0 + v35 + 8);

  return MEMORY[0x2821FE8E8](v0, v35 + 48, v2 | 7);
}

uint64_t sub_20B58034C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B580384()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &unk_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 64) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B580BB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B580C04()
{
  v1 = sub_20C1353F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for NavigationRequest();
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v50 = *(*(v6 - 8) + 64);

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  (*(v2 + 8))(v0 + v4, v1);
  v9 = (v0 + v8);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v12 = sub_20C132C14();
      (*(*(v12 - 8) + 8))(v0 + v8, v12);
      v11 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v13 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v20 = sub_20C1387E4();
      (*(*(v20 - 8) + 8))(v0 + v8, v20);
      v11 = &unk_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v10 = sub_20C138894();
      (*(*(v10 - 8) + 8))(v0 + v8, v10);
      v11 = &unk_27C763FD0;
LABEL_17:
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v11) + 48);
      v22 = sub_20C1388F4();
      (*(*(v22 - 8) + 8))(v9 + v21, v22);
      break;
    case 9u:
      v13 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v13 = sub_20C138204();
LABEL_11:
      (*(*(v13 - 8) + 8))(v0 + v8, v13);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v14 = sub_20C1344C4();
        (*(*(v14 - 8) + 8))(v0 + v8, v14);
        v15 = type metadata accessor for WorkoutSessionConfiguration();
        v16 = v15[5];
        v17 = sub_20C137254();
        (*(*(v17 - 8) + 8))(v9 + v16, v17);
        v18 = v15[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v19 = sub_20C137EA4();
          (*(*(v19 - 8) + 8))(v9 + v18, v19);
        }

        else
        {
        }

        v39 = v15[9];
        v40 = sub_20C13BA24();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v9 + v39, 1, v40))
        {
          (*(v41 + 8))(v9 + v39, v40);
        }

        v42 = v15[10];
        v43 = sub_20C134A44();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v9 + v42, 1, v43))
        {
          (*(v44 + 8))(v9 + v42, v43);
        }

        if (*(v9 + v15[11] + 8) >= 0xC)
        {
        }

        v45 = v15[12];
        v46 = sub_20C135C54();
        v47 = *(v46 - 8);
        if (!(*(v47 + 48))(v9 + v45, 1, v46))
        {
          (*(v47 + 8))(v9 + v45, v46);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v23 = v9 + *(v6 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v27 = sub_20C1344C4();
      v28 = *(v27 - 8);
      if (!(*(v28 + 48))(&v23[v26], 1, v27))
      {
        (*(v28 + 8))(&v23[v26], v27);
      }

      break;
    case 4:

      break;
    case 3:
      v25 = sub_20C139144();
      (*(*(v25 - 8) + 8))(v23, v25);
      break;
  }

  v29 = v9 + *(v6 + 24);
  type metadata accessor for NavigationSource();
  v30 = swift_getEnumCaseMultiPayload();
  if (v30 == 1)
  {
    v38 = sub_20C135024();
    (*(*(v38 - 8) + 8))(v29, v38);
  }

  else if (!v30)
  {
    v49 = v0;
    v31 = v7;
    v32 = v3;
    v33 = v8;
    v34 = sub_20C132C14();
    v35 = *(v34 - 8);
    v36 = *(v35 + 8);
    v36(v29, v34);
    v37 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v35 + 48))(&v29[v37], 1, v34))
    {
      v36(&v29[v37], v34);
    }

    v8 = v33;
    v3 = v32;
    v7 = v31;
    v0 = v49;
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v50, v3 | v7 | 7);
}

uint64_t sub_20B5814E4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B58151C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B581554()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5815A0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B5815F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B58162C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B581664()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B581710()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B581774()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B5817DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20B58184C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B581884()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5818C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B581904()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20B58193C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B58197C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B5819B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 8))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_20B581A08(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_20B581A44()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B581B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationSharingURLInfo();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B581B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationSharingURLInfo();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_20B581BEC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B581C2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B581C64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B581D20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B581D5C()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B581DB0()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_20B581DE8()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B581EAC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B581EE8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B581F34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B581F88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B581FC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B582010()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B582048()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B582088()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5820F8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B582130()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B582168()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5821A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5821EC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B582224()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B582264()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5822A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5822EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B582324()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B582364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C137544();
  *a1 = result;
  return result;
}

uint64_t sub_20B5823AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C137574();
  *a1 = result;
  return result;
}

uint64_t sub_20B5823D8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B582418()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B582460()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B582498()
{
  v1 = (type metadata accessor for MetadataEntry() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  sub_20BC1B034(*(v0 + v3 + 8));

  v5 = v1[9];
  v6 = sub_20C132EE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B58259C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5825DC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B58263C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B582688()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5826C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B582700()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B582738()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B5827B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5827F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B58282C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B582864()
{
  v1 = sub_20C134914();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B582928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C132EE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_20B5829E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C132EE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_20B582AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C134EC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_20B582B70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C134EC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_20B583034()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B58306C()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B583144()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5831B4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5831F4()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B58322C()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20B583284()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5832C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B58333C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B583374()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5833BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B583418()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B583478()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5834B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B5834EC()
{
  v1 = sub_20C135AE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B583640()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B583688()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5836C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B5836F8()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B583730()
{
  v1 = sub_20C134914();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B5837FC()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B583834()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B583870()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B5838B0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B5838F4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_20B58394C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B583998()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7641B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B583A40()
{
  v1 = sub_20C135734();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B583B18()
{
  v1 = sub_20C136014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_20B583BE0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B583C18()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B583C50()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B583CE4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_20B583D1C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20B583D54()
{
  MEMORY[0x20F2F6B80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20B583D8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B583DC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B583E0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20B583ECC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionBrickItemCell.Layout(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ActionBrickItemCell.Layout(uint64_t result, int a2, int a3)
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

uint64_t sub_20B583F4C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_20B583FB8(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_20B583FE4(uint64_t a1, int a2)
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

uint64_t sub_20B584004(uint64_t result, int a2, int a3)
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

uint64_t sub_20B584050(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20B584060(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_20B584078(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_20B583F4C(result, a2, a3 & 1);
  }

  return result;
}

void sub_20B586480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20B586654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_20B58893C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_20B588CF4()
{
  sub_20B583E6C(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);

  swift_unknownObjectRelease();

  sub_20B58CFB0(*(v0 + 264), *(v0 + 272));
  __swift_destroy_boxed_opaque_existential_1(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1(v0 + 320);

  __swift_destroy_boxed_opaque_existential_1(v0 + 368);
  __swift_destroy_boxed_opaque_existential_1(v0 + 408);

  v1 = OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_offset;
  v2 = sub_20C135214();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_workoutPlan;
  v4 = sub_20C133954();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_20B58CFC4(v0 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_configuration);

  return v0;
}

uint64_t sub_20B588E74()
{
  sub_20B588CF4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanWeekdayDetailPageDataProvider()
{
  result = qword_27C760D68;
  if (!qword_27C760D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B588F20()
{
  sub_20C135214();
  if (v0 <= 0x3F)
  {
    sub_20C133954();
    if (v1 <= 0x3F)
    {
      sub_20B524ACC();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20B5890BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 384))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B5890DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 376) = 0;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 384) = v3;
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

uint64_t sub_20B5892D8(uint64_t a1, int a2)
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

uint64_t sub_20B5892F8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20B5893F4@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = v23 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v23 - v11;
  v13 = sub_20C1352F4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C133864();
  v23[1] = *(v1[32] + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  (*(v14 + 16))(v12, v16, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v17 = v1[33];
  v18 = v1[34];
  v19 = sub_20C132C14();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = sub_20C135ED4();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = sub_20C136914();
  (*(*(v21 - 8) + 56))(v24, 1, 1, v21);

  sub_20B58C2C8(v17, v18);
  sub_20C133384();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_20B589790()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_isActive) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_isActive) = 1;
    v13 = *(v0 + 216);
    v23 = result;
    v24 = v10;
    __swift_project_boxed_opaque_existential_1((v0 + 192), v13);
    v14 = v0;
    sub_20C1398E4();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_20B58D02C;
    *(v15 + 24) = v14;
    (*(v2 + 16))(v5, v7, v1);
    v16 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v17 = (v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v2 + 32))(v18 + v16, v5, v1);
    v19 = (v18 + v17);
    *v19 = sub_20B58D058;
    v19[1] = v15;

    sub_20C137C94();
    (*(v2 + 8))(v7, v1);
    v20 = v23;
    v21 = sub_20C137CB4();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v21(sub_20B52347C, v22);

    return (*(v24 + 8))(v12, v20);
  }

  return result;
}

uint64_t sub_20B589C84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B58C2DC(v1 + v3, a1);
}

uint64_t sub_20B589D08(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x20F2EFAF0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_20B589D5C(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x20F2EFB00](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_20B589DE4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x20F2F4680](a1, &v6);
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

uint64_t sub_20B589E38(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x20F2F4690](a1, &v7);
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

BOOL sub_20B589EFC(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_20B589F2C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_20B589F58@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_20B58A020()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x20F2F5910](*&v1);
}

uint64_t sub_20B58A074()
{
  swift_getWitnessTable();

  return sub_20C13B654();
}

uint64_t sub_20B58A0E0(uint64_t a1, id *a2)
{
  result = sub_20C13C934();
  *a2 = 0;
  return result;
}

uint64_t sub_20B58A158(uint64_t a1, id *a2)
{
  v3 = sub_20C13C944();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_20B58A1D8@<X0>(uint64_t *a1@<X8>)
{
  sub_20C13C954();
  v2 = sub_20C13C914();

  *a1 = v2;
  return result;
}

uint64_t sub_20B58A21C()
{
  swift_getWitnessTable();

  return sub_20C13B654();
}

uint64_t sub_20B58A29C()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B58A2E4()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B58A328@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_20B64C114();

  *a1 = v2;
  return result;
}

uint64_t sub_20B58A368@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_20B64C0A4(a1);

  *a2 = v3;
  return result;
}

double sub_20B58A3A8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_20B58A470()
{
  sub_20B58ADE8(&qword_27C761818, type metadata accessor for TextStyle);
  sub_20B58ADE8(&qword_27C761820, type metadata accessor for TextStyle);

  return sub_20C13DE94();
}

uint64_t sub_20B58A52C()
{
  sub_20B58ADE8(&qword_27C761878, type metadata accessor for Weight);
  sub_20B58ADE8(&qword_27C761880, type metadata accessor for Weight);
  sub_20B58CF5C();
  return sub_20C13DE94();
}

uint64_t sub_20B58A5F4()
{
  sub_20B58ADE8(&qword_27C761D80, type metadata accessor for Key);
  sub_20B58ADE8(&qword_27C761D88, type metadata accessor for Key);

  return sub_20C13DE94();
}

uint64_t sub_20B58A6B0()
{
  sub_20B58ADE8(&qword_27C761D00, type metadata accessor for NLTagScheme);
  sub_20B58ADE8(&qword_27C761D08, type metadata accessor for NLTagScheme);

  return sub_20C13DE94();
}

uint64_t sub_20B58A76C()
{
  sub_20B58ADE8(&qword_27C761D70, type metadata accessor for SystemDesign);
  sub_20B58ADE8(&qword_27C761D78, type metadata accessor for SystemDesign);

  return sub_20C13DE94();
}

float sub_20B58A828@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_20B58A834()
{
  sub_20B58ADE8(&qword_27C761858, type metadata accessor for UILayoutPriority);
  sub_20B58ADE8(&qword_27C761860, type metadata accessor for UILayoutPriority);
  return sub_20C13DE94();
}

uint64_t sub_20B58A8F0()
{
  sub_20B58ADE8(&qword_27C761D90, type metadata accessor for CALayerCornerCurve);
  sub_20B58ADE8(&qword_27C761D98, type metadata accessor for CALayerCornerCurve);

  return sub_20C13DE94();
}

uint64_t sub_20B58A9AC()
{
  sub_20B58ADE8(&qword_27C761D50, type metadata accessor for ActivityType);
  sub_20B58ADE8(&qword_27C761D58, type metadata accessor for ActivityType);

  return sub_20C13DE94();
}

uint64_t sub_20B58AA68()
{
  sub_20B58ADE8(&qword_27C761808, type metadata accessor for UIContentSizeCategory);
  sub_20B58ADE8(&qword_27C761810, type metadata accessor for UIContentSizeCategory);

  return sub_20C13DE94();
}

uint64_t sub_20B58AB24()
{
  sub_20B58ADE8(&qword_27C761848, type metadata accessor for Identifier);
  sub_20B58ADE8(&qword_27C761850, type metadata accessor for Identifier);

  return sub_20C13DE94();
}

uint64_t sub_20B58ABE0()
{
  sub_20B58ADE8(&qword_27C761D10, type metadata accessor for AVMediaCharacteristic);
  sub_20B58ADE8(&qword_27C761D18, type metadata accessor for AVMediaCharacteristic);

  return sub_20C13DE94();
}

uint64_t sub_20B58AC9C()
{
  sub_20B58ADE8(&qword_27C7618A0, type metadata accessor for AttributeName);
  sub_20B58ADE8(&qword_27C7618A8, type metadata accessor for AttributeName);

  return sub_20C13DE94();
}

uint64_t sub_20B58ADE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B58AE30()
{
  sub_20B58ADE8(&qword_27C761890, type metadata accessor for TraitKey);
  sub_20B58ADE8(&qword_27C761898, type metadata accessor for TraitKey);

  return sub_20C13DE94();
}

uint64_t sub_20B58B09C()
{
  sub_20B58ADE8(&qword_27C761868, type metadata accessor for FeatureKey);
  sub_20B58ADE8(&qword_27C761870, type metadata accessor for FeatureKey);

  return sub_20C13DE94();
}

uint64_t sub_20B58B3E0()
{
  sub_20B58ADE8(&qword_27C761838, type metadata accessor for Category);
  sub_20B58ADE8(&qword_27C761840, type metadata accessor for Category);

  return sub_20C13DE94();
}

uint64_t sub_20B58B49C()
{
  sub_20B58ADE8(&qword_27C761828, type metadata accessor for Mode);
  sub_20B58ADE8(&qword_27C761830, type metadata accessor for Mode);

  return sub_20C13DE94();
}

uint64_t sub_20B58B558()
{
  sub_20B58ADE8(&qword_27C761D30, type metadata accessor for CAShapeLayerLineCap);
  sub_20B58ADE8(&qword_27C761D38, type metadata accessor for CAShapeLayerLineCap);

  return sub_20C13DE94();
}

uint64_t sub_20B58B614()
{
  sub_20B58ADE8(&qword_27C761D40, type metadata accessor for CAShapeLayerLineJoin);
  sub_20B58ADE8(&qword_27C761D48, type metadata accessor for CAShapeLayerLineJoin);

  return sub_20C13DE94();
}

uint64_t sub_20B58B78C()
{
  sub_20B58ADE8(&qword_27C761D60, type metadata accessor for OpenExternalURLOptionsKey);
  sub_20B58ADE8(&qword_27C761D68, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_20C13DE94();
}

uint64_t sub_20B58B848@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_20C13C914();

  *a1 = v2;
  return result;
}

uint64_t sub_20B58B890()
{
  sub_20B58ADE8(&qword_27C761D20, type metadata accessor for Option);
  sub_20B58ADE8(&qword_27C761D28, type metadata accessor for Option);

  return sub_20C13DE94();
}

uint64_t sub_20B58BA08()
{
  sub_20C13E164();
  swift_getWitnessTable();
  sub_20C13B664();
  return sub_20C13E1B4();
}

uint64_t sub_20B58BA6C()
{
  swift_getWitnessTable();

  return sub_20C13B654();
}

uint64_t sub_20B58BB38()
{
  v0 = sub_20C13C954();
  v1 = MEMORY[0x20F2F42D0](v0);

  return v1;
}

uint64_t sub_20B58BB74()
{
  sub_20C13C954();
  sub_20C13CA64();
}

uint64_t sub_20B58BBC8()
{
  sub_20C13C954();
  sub_20C13E164();
  sub_20C13CA64();
  v0 = sub_20C13E1B4();

  return v0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_20B58C2C8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t sub_20B58C2DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B58C34C()
{
  v0 = sub_20C13C954();
  v2 = v1;
  if (v0 == sub_20C13C954() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_20C13DFF4();
  }

  return v5 & 1;
}

uint64_t sub_20B58C3D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v87 = a5;
  v88 = a6;
  v81 = a4;
  v90 = a3;
  v91 = a2;
  v9 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v9 - 8);
  v82 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135214();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v80 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133954();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v89 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  v17 = MEMORY[0x277D84FA0];
  *(v7 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v7 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_bookmarks) = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_configuration;
  v19 = sub_20C134104();
  (*(*(v19 - 8) + 56))(v7 + v18, 1, 1, v19);
  *(v7 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_playlists) = v17;
  *(v7 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_resumableSessions) = v17;
  *(v7 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_upNextQueueItems) = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_isActive) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 192);
  *(v7 + 232) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v7 + 240) = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 320);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v7 + 360) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  v79 = a1;
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(&v103, v7 + 408);
  v85 = v12;
  v20 = *(v12 + 16);
  v21 = v90;
  v22 = v11;
  v20(v7 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_offset, v90, v11);
  v83 = v15;
  v23 = *(v15 + 16);
  v24 = v91;
  v23(v7 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_workoutPlan, v91, v14);
  v84 = v14;
  v23(v89, v24, v14);
  v25 = v80;
  v86 = v22;
  v20(v80, v21, v22);
  type metadata accessor for WorkoutPlanWeekdayDetailShelf();
  swift_allocObject();

  *(v7 + 448) = sub_20C06CAB0(v26, v89, v25, v81);
  v89 = sub_20C133874();
  v81 = v27;
  v78 = v7;
  v28 = *(v7 + 448);

  sub_20C133AA4();
  LODWORD(v80) = v102;
  v29 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v79 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v29 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v30 = sub_20C13C724();
  v31 = type metadata accessor for CatalogPageImpressionTracker();
  v32 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v33 = MEMORY[0x277D221C0];
  v32[2] = sub_20C13C6D4();
  v32[3] = v30;
  v32[4] = v33;
  v104 = v31;
  v34 = sub_20B58ADE8(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v105 = v34;
  *&v103 = v32;
  v35 = type metadata accessor for MetricLocationStore();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F90];
  *(v36 + 16) = MEMORY[0x277D84F90];
  *(v36 + 24) = v37;
  v39 = __swift_mutable_project_boxed_opaque_existential_1(&v103, v31);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = (&v77 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v40);
  v44 = *v42;
  v101[3] = v31;
  v101[4] = v34;
  v101[0] = v44;
  v100[3] = v35;
  v100[4] = &off_2822B6968;
  v100[0] = v36;
  v99[0] = v38;
  sub_20BB5D394(0, 1, 0);
  v45 = v99[0];
  v47 = *(v99[0] + 16);
  v46 = *(v99[0] + 24);
  if (v47 >= v46 >> 1)
  {
    sub_20BB5D394((v46 > 1), v47 + 1, 1);
    v45 = v99[0];
  }

  *(v45 + 16) = v47 + 1;
  v48 = v45 + 24 * v47;
  *(v48 + 32) = v28;
  *(v48 + 40) = &off_282303B40;
  *(v48 + 48) = 0;
  sub_20B51CC64(v101, v99);
  sub_20B51CC64(v100, v98);
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v99, v99[3]);
  v50 = MEMORY[0x28223BE20](v49);
  v52 = (&v77 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52, v50);
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v98, v98[3]);
  v55 = MEMORY[0x28223BE20](v54);
  v57 = (&v77 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57, v55);
  v59 = *v52;
  v60 = *v57;
  v96 = v31;
  v97 = v34;
  v95[0] = v59;
  v93 = v35;
  v94 = &off_2822B6968;
  v92[0] = v60;
  v61 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v62 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
  v63 = MEMORY[0x28223BE20](v62);
  v65 = (&v77 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v66 + 16))(v65, v63);
  v67 = __swift_mutable_project_boxed_opaque_existential_1(v92, v93);
  v68 = MEMORY[0x28223BE20](v67);
  v70 = (&v77 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70, v68);
  v72 = sub_20BE3AA74(v89, v81, v45, v80, v79, *v65, *v70, 2, v61);
  __swift_destroy_boxed_opaque_existential_1(v100);
  __swift_destroy_boxed_opaque_existential_1(v101);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v95);
  __swift_destroy_boxed_opaque_existential_1(v98);
  __swift_destroy_boxed_opaque_existential_1(v99);
  __swift_destroy_boxed_opaque_existential_1(&v103);
  v73 = v78;
  v75 = v87;
  v74 = v88;
  *(v78 + 256) = v72;
  *(v73 + 264) = v75;
  *(v73 + 272) = v74;
  sub_20BE11308();
  (*(v85 + 8))(v90, v86);
  (*(v83 + 8))(v91, v84);
  return v73;
}

unint64_t sub_20B58CF5C()
{
  result = qword_27C761888;
  if (!qword_27C761888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C761888);
  }

  return result;
}

uint64_t sub_20B58CFB0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t sub_20B58CFC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B58D060(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E0064(a1, a2, v2 + v6, v8, v9);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20B58D180(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B58D1A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_20B58D294(uint64_t a1, int a2)
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

uint64_t sub_20B58D2B4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
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

__n128 __swift_memcpy80_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_20B58D358(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B58D378(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
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

  *(result + 80) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_20B58E1BC()
{
  result = sub_20C1380F4();
  byte_27C7994D0 = result;
  return result;
}

void sub_20B58E1DC()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7994D8 = v2;
  unk_27C7994E0 = v4;
}

void sub_20B58E2A8()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7994E8 = v2;
  unk_27C7994F0 = v4;
}

void sub_20B58E374()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7994F8 = v2;
  unk_27C799500 = v4;
}

void sub_20B58E440()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799508 = v2;
  unk_27C799510 = v4;
}

void sub_20B58E510()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799518 = v2;
  unk_27C799520 = v4;
}

void sub_20B58E5DC()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799528 = v2;
  unk_27C799530 = v4;
}

void sub_20B58E6A8()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799538 = v2;
  unk_27C799540 = v4;
}

void sub_20B58E774()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799548 = v2;
  unk_27C799550 = v4;
}

void sub_20B58E844()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799558 = v2;
  unk_27C799560 = v4;
}

void sub_20B58E910()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799568 = v2;
  unk_27C799570 = v4;
}

void sub_20B58E9E0()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799578 = v2;
  unk_27C799580 = v4;
}

void sub_20B58EAAC()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799588 = v2;
  unk_27C799590 = v4;
}

void sub_20B58EB78()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799598 = v2;
  unk_27C7995A0 = v4;
}

void sub_20B58EC44()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7995A8 = v2;
  unk_27C7995B0 = v4;
}

void sub_20B58ED14()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7995B8 = v2;
  unk_27C7995C0 = v4;
}

void sub_20B58EDE0()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7995C8 = v2;
  unk_27C7995D0 = v4;
}

void sub_20B58EEAC()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7995D8 = v2;
  unk_27C7995E0 = v4;
}

void sub_20B58EF78()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7995E8 = v2;
  unk_27C7995F0 = v4;
}

void sub_20B58F044()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7995F8 = v2;
  unk_27C799600 = v4;
}

void sub_20B58F110()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799608 = v2;
  unk_27C799610 = v4;
}

void sub_20B58F1DC()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799618 = v2;
  unk_27C799620 = v4;
}

void sub_20B58F2A8()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799628 = v2;
  unk_27C799630 = v4;
}

void sub_20B58F374()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799638 = v2;
  unk_27C799640 = v4;
}

void sub_20B58F440()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799648 = v2;
  unk_27C799650 = v4;
}

void sub_20B58F50C()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799658 = v2;
  unk_27C799660 = v4;
}

void sub_20B58F5D8()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799668 = v2;
  unk_27C799670 = v4;
}

void sub_20B58F6A4()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799678 = v2;
  unk_27C799680 = v4;
}

void sub_20B58F770()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799688 = v2;
  unk_27C799690 = v4;
}

void sub_20B58F83C()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C799698 = v2;
  unk_27C7996A0 = v4;
}

void sub_20B58F908()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7996A8 = v2;
  unk_27C7996B0 = v4;
}

void sub_20B58F9D4()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7996B8 = v2;
  unk_27C7996C0 = v4;
}

void sub_20B58FAA0()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7996C8 = v2;
  unk_27C7996D0 = v4;
}

void sub_20B58FB6C()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7996D8 = v2;
  unk_27C7996E0 = v4;
}

void sub_20B58FC38()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7996E8 = v2;
  unk_27C7996F0 = v4;
}

void sub_20B58FD04()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C7996F8 = v2;
  unk_27C799700 = v4;
}

uint64_t sub_20B58FDD0(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      v2 = sub_20C1344B4();
      if (v4)
      {
        if (v2 == 2)
        {
          return 0xD00000000000001CLL;
        }

        else
        {
          return 0xD000000000000015;
        }
      }

      else
      {
        sub_20B583F4C(v2, v3, 0);
        return 0xD000000000000010;
      }
    }
  }

  else if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x7070612E6B636F6CLL;
  }
}

uint64_t sub_20B58FEF0(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_27C760600 != -1)
      {
        swift_once();
      }

      v1 = &qword_27C799668;
    }

    else
    {
      v2 = sub_20C1344B4();
      if (v4)
      {
        if (v2 == 2)
        {
          if (qword_27C7605C8 != -1)
          {
            swift_once();
          }

          v1 = &qword_27C7995F8;
        }

        else
        {
          if (qword_27C7605D0 != -1)
          {
            swift_once();
          }

          v1 = &qword_27C799608;
        }
      }

      else
      {
        sub_20B583F4C(v2, v3, 0);
        if (qword_27C760588 != -1)
        {
          swift_once();
        }

        v1 = &qword_27C799578;
      }
    }
  }

  else if (a1)
  {
    if (qword_27C7605F0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27C799648;
  }

  else
  {
    if (qword_27C7605D8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27C799618;
  }

  return *v1;
}

uint64_t sub_20B5900AC(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_27C760530 != -1)
      {
        swift_once();
      }

      if (byte_27C7994D0 > 1u)
      {
        if (byte_27C7994D0 == 2)
        {
          if (qword_27C760608 != -1)
          {
            swift_once();
          }

          v7 = &qword_27C799678;
        }

        else
        {
          if (qword_27C760620 != -1)
          {
            swift_once();
          }

          v7 = &qword_27C7996A8;
        }
      }

      else if (byte_27C7994D0)
      {
        if (qword_27C760610 != -1)
        {
          swift_once();
        }

        v7 = &qword_27C799688;
      }

      else
      {
        if (qword_27C760618 != -1)
        {
          swift_once();
        }

        v7 = &qword_27C799698;
      }
    }

    else
    {
      v8 = sub_20C1344B4();
      if (v10)
      {
        if (v8 >= 2u)
        {
          if (v8 == 2)
          {
            if (qword_27C7605B0 != -1)
            {
              swift_once();
            }

            v7 = &qword_27C7995C8;
          }

          else
          {
            if (qword_27C7605B8 != -1)
            {
              swift_once();
            }

            v7 = &qword_27C7995D8;
          }
        }

        else
        {
          if (qword_27C7605C0 != -1)
          {
            swift_once();
          }

          v7 = &qword_27C7995E8;
        }
      }

      else
      {
        sub_20B583F4C(v8, v9, 0);
        if (qword_27C760560 != -1)
        {
          swift_once();
        }

        v7 = &qword_27C799528;
      }
    }
  }

  else if (a1)
  {
    if (qword_27C7605F8 != -1)
    {
      swift_once();
    }

    v7 = &qword_27C799658;
  }

  else
  {
    v1 = sub_20C1344B4();
    v3 = v2;
    v5 = v4 & 1;
    sub_20B590B28();
    sub_20B590B7C();
    v6 = sub_20C133BF4();
    sub_20B583F4C(v1, v3, v5);
    if (v6)
    {
      if (qword_27C7605E8 != -1)
      {
        swift_once();
      }

      v7 = &qword_27C799638;
    }

    else
    {
      if (qword_27C7605E0 != -1)
      {
        swift_once();
      }

      v7 = &qword_27C799628;
    }
  }

  return *v7;
}

uint64_t sub_20B59046C@<X0>(char a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  if (a2 == 5)
  {
    if (!a1)
    {
      if (qword_27C760590 != -1)
      {
        swift_once();
      }

      v10 = qword_27C799588;
      v11 = unk_27C799590;
      v14 = qword_27C760568;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = qword_27C799538;
      v16 = unk_27C799540;
      v17 = qword_27C760630;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = qword_27C7996C8;

      v20 = 1;
      v21 = 0xEC0000006873616CLL;
      v22 = 0x732E656E6F687069;
      goto LABEL_42;
    }

    if (a1 == 1)
    {
      if (qword_27C760588 != -1)
      {
        swift_once();
      }

      v10 = qword_27C799578;
      v11 = unk_27C799580;
      v32 = qword_27C760560;

      if (v32 != -1)
      {
        swift_once();
      }

      v21 = 0x800000020C191FC0;
      v15 = qword_27C799528;
      v16 = unk_27C799530;
      v33 = qword_27C760630;

      if (v33 != -1)
      {
        swift_once();
      }

      v18 = qword_27C7996C8;

      v22 = 0xD000000000000010;
      v20 = 1;
      goto LABEL_42;
    }

    v37 = 0;
    v38 = 0xE000000000000000;
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD000000000000014, 0x800000020C191F70);
    v36 = a1;
    sub_20C13DDF4();
    MEMORY[0x20F2F4230](0xD00000000000002ALL, 0x800000020C191F90);
  }

  else
  {
    if (a2 != 4)
    {
      v22 = sub_20B58FDD0(a2);
      v21 = v23;
      v20 = v24;
      v25 = a2;
      v10 = sub_20B58FEF0(a2);
      v11 = v26;

      v15 = sub_20B5900AC(a2);
      v16 = v27;
      if (v25 == 3)
      {
        v28 = qword_27C760628;

        if (v28 != -1)
        {
          swift_once();
        }

        v29 = &qword_27C7996B8;
      }

      else
      {
        v34 = qword_27C760630;

        if (v34 != -1)
        {
          swift_once();
        }

        v29 = &qword_27C7996C8;
      }

      v18 = *v29;

      goto LABEL_42;
    }

    if (!a1)
    {
      if (qword_27C760540 != -1)
      {
        swift_once();
      }

      v10 = qword_27C7994E8;
      v11 = unk_27C7994F0;
      v12 = qword_27C760568;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = &qword_27C799538;
LABEL_27:
      v15 = *v13;
      v16 = v13[1];
      v31 = qword_27C760630;

      if (v31 != -1)
      {
        swift_once();
      }

      v18 = qword_27C7996C8;

      v22 = 0;
      v21 = 0;
      v20 = 0;
LABEL_42:
      *a3 = v22;
      *(a3 + 8) = v21;
      *(a3 + 16) = v10;
      *(a3 + 24) = v11;
      *(a3 + 32) = v15;
      *(a3 + 40) = v16;
      *(a3 + 48) = v18;
      *(a3 + 56) = result;
      *(a3 + 64) = v20 & 1;
      return result;
    }

    if (a1 == 1)
    {
      if (qword_27C760538 != -1)
      {
        swift_once();
      }

      v10 = qword_27C7994D8;
      v11 = unk_27C7994E0;
      v30 = qword_27C760560;

      if (v30 != -1)
      {
        swift_once();
      }

      v13 = &qword_27C799528;
      goto LABEL_27;
    }

    v37 = 0;
    v38 = 0xE000000000000000;
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD000000000000014, 0x800000020C191F70);
    v36 = a1;
    sub_20C13DDF4();
    MEMORY[0x20F2F4230](0xD000000000000028, 0x800000020C191FE0);
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

unint64_t sub_20B590B28()
{
  result = qword_27C76BBD0;
  if (!qword_27C76BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BBD0);
  }

  return result;
}

unint64_t sub_20B590B7C()
{
  result = qword_27C7653A0;
  if (!qword_27C7653A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7653A0);
  }

  return result;
}

uint64_t sub_20B590BD0@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = 0xD000000000000014;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v8 + 8))(v10, v7);
  if (a2 == 5)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_27C7605A0 != -1)
        {
          swift_once();
        }

        v11 = 0x800000020C192430;
        v13 = qword_27C7995A8;
        v12 = unk_27C7995B0;
        v14 = qword_27C760578;

        if (v14 != -1)
        {
          swift_once();
        }

        v16 = qword_27C799558;
        v15 = unk_27C799560;
        v17 = qword_27C760640;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = 1;
LABEL_21:
        v21 = &qword_27C7996E8;
LABEL_52:
        v30 = *v21;

        *a3 = v6;
        *(a3 + 8) = v11;
        *(a3 + 16) = v13;
        *(a3 + 24) = v12;
        *(a3 + 32) = v16;
        *(a3 + 40) = v15;
        *(a3 + 48) = v30;
        *(a3 + 56) = result;
        *(a3 + 64) = v18;
        return result;
      }

      if (qword_27C7605A8 != -1)
      {
        swift_once();
      }

      v13 = qword_27C7995B8;
      v12 = unk_27C7995C0;
      v26 = qword_27C760580;

      if (v26 != -1)
      {
        swift_once();
      }

      v6 = 0x7472616568;
      v16 = qword_27C799568;
      v15 = unk_27C799570;
      v27 = qword_27C760648;

      if (v27 != -1)
      {
        swift_once();
      }

      v18 = 1;
      v11 = 0xE500000000000000;
      goto LABEL_51;
    }

    if (qword_27C760598 != -1)
    {
      swift_once();
    }

    v13 = qword_27C799598;
    v12 = unk_27C7995A0;
    v22 = qword_27C760570;

    if (v22 != -1)
    {
      swift_once();
    }

    v11 = 0xEB000000006F7270;
    v6 = 0x2E73646F70726961;
    v16 = qword_27C799548;
    v15 = unk_27C799550;
    v23 = qword_27C760638;

    if (v23 != -1)
    {
      swift_once();
    }

    v18 = 1;
    goto LABEL_36;
  }

  if (a2 == 4)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_27C760550 != -1)
        {
          swift_once();
        }

        v13 = qword_27C799508;
        v12 = unk_27C799510;
        v19 = qword_27C760578;

        if (v19 != -1)
        {
          swift_once();
        }

        v16 = qword_27C799558;
        v15 = unk_27C799560;
        v20 = qword_27C760640;

        if (v20 != -1)
        {
          swift_once();
        }

        v6 = 0;
        v11 = 0;
        v18 = 0;
        goto LABEL_21;
      }

      if (qword_27C760558 != -1)
      {
        swift_once();
      }

      v13 = qword_27C799518;
      v12 = unk_27C799520;
      v28 = qword_27C760580;

      if (v28 != -1)
      {
        swift_once();
      }

      v16 = qword_27C799568;
      v15 = unk_27C799570;
      v29 = qword_27C760648;

      if (v29 != -1)
      {
        swift_once();
      }

      v6 = 0;
      v11 = 0;
      v18 = 0;
LABEL_51:
      v21 = &qword_27C7996F8;
      goto LABEL_52;
    }

    if (qword_27C760548 != -1)
    {
      swift_once();
    }

    v13 = qword_27C7994F8;
    v12 = unk_27C799500;
    v24 = qword_27C760570;

    if (v24 != -1)
    {
      swift_once();
    }

    v16 = qword_27C799548;
    v15 = unk_27C799550;
    v25 = qword_27C760638;

    if (v25 != -1)
    {
      swift_once();
    }

    v6 = 0;
    v11 = 0;
    v18 = 0;
LABEL_36:
    v21 = &qword_27C7996D8;
    goto LABEL_52;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B591278()
{
  result = sub_20C1323A4();
  dword_27C799708 = result;
  byte_27C79970C = BYTE4(result);
  dword_27C799710 = v1;
  byte_27C799714 = v2;
  return result;
}

uint64_t sub_20B5912B8(uint64_t a1)
{
  v177 = a1;
  v151 = sub_20C1321F4();
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v150 = &v147 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_20C132EE4();
  MEMORY[0x28223BE20](v2 - 8);
  v160 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767610);
  v152 = *(v153 - 8);
  v4 = MEMORY[0x28223BE20](v153);
  v158 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v157 = &v147 - v6;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = &v147 - v7;
  v173 = sub_20C134914();
  v172 = *(v173 - 8);
  v8 = MEMORY[0x28223BE20](v173);
  v162 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v161 = &v147 - v10;
  v168 = sub_20C1321D4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v175 = *(v171 - 8);
  v12 = MEMORY[0x28223BE20](v171);
  v163 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v169 = &v147 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v174 = &v147 - v17;
  MEMORY[0x28223BE20](v16);
  v170 = &v147 - v18;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v165 = *(v164 - 8);
  v19 = MEMORY[0x28223BE20](v164);
  v21 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v147 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v147 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v147 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v147 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v147 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v147 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v147 - v41;
  MEMORY[0x28223BE20](v40);
  v159 = &v147 - v43;
  v44 = type metadata accessor for SessionHeartUIState();
  MEMORY[0x28223BE20](v44);
  v46 = &v147 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5932AC(v177, v46, type metadata accessor for SessionHeartUIState);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v148 = v30;
    v177 = v36;
    v159 = v27;
    if (result)
    {
      (*(v172 + 32))(v162, v46, v173);
      v69 = v176;
      sub_20C1348A4();
      sub_20BB09168(&v178, v70);

      v91 = v24;
      v92 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_valueNode;
      swift_beginAccess();
      v93 = v165;
      v94 = v21;
      v95 = v21;
      v96 = v164;
      (*(v165 + 16))(v95, v69 + v92, v164);
      sub_20C132074();

      v97 = v91;
      v98 = *(v93 + 8);
      v98(v94, v96);
      v99 = v159;
      sub_20C131F34();
      v98(v97, v96);
      swift_beginAccess();
      (*(v93 + 40))(v69 + v92, v99, v96);
      swift_endAccess();
      v100 = v155;
      v101 = v154;
      v102 = v156;
      (*(v155 + 16))(v154, v69 + OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder__reducedOverlayAnimations, v156);
      sub_20C13A344();
      (*(v100 + 8))(v101, v102);
      if (v178 == 1)
      {
        v103 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_beatingHeartNode;
        swift_beginAccess();
        v104 = v175;
        v105 = v169;
        v106 = v171;
        (*(v175 + 16))(v169, v69 + v103, v171);
        v107 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_beatingHeartAsset;
        v108 = sub_20C132164();
        v109 = v166;
        (*(*(v108 - 8) + 16))(v166, v69 + v107, v108);
        v110 = v167;
        v111 = v168;
        (*(v167 + 104))(v109, *MEMORY[0x277CE9C40], v168);
        v112 = v174;
        sub_20C1320D4();
        (*(v110 + 8))(v109, v111);
        v113 = *(v104 + 8);
        v113(v105, v106);
        if (qword_27C760650 != -1)
        {
          swift_once();
        }

        v114 = v170;
        sub_20C131FF4();
        v113(v112, v106);
        (*(v172 + 8))(v162, v173);
        swift_beginAccess();
        (*(v104 + 40))(v69 + v103, v114, v106);
      }

      else
      {
        sub_20C1348A4();
        sub_20C1324F4();
        v178 = 0;
        v179 = 0;
        v180 = 0;
        LOBYTE(v181) = 1;
        sub_20C132ED4();
        v115 = *MEMORY[0x277CE9C70];
        v116 = *(v149 + 104);
        v117 = v150;
        v118 = v151;
        v116(v150, v115, v151);
        sub_20B593314();
        sub_20C132474();
        sub_20C132504();
        v178 = 0;
        v179 = 0;
        v180 = 0;
        LOBYTE(v181) = 1;
        sub_20C132ED4();
        v116(v117, v115, v118);
        sub_20C132474();
        v119 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_beatingHeartNode;
        swift_beginAccess();
        v120 = v175;
        v121 = *(v175 + 16);
        v177 = v119;
        v122 = v163;
        v123 = v171;
        v121(v163, v69 + v119, v171);
        v124 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_beatingHeartAsset;
        v125 = sub_20C132164();
        v126 = v166;
        (*(*(v125 - 8) + 16))(v166, v69 + v124, v125);
        v127 = v167;
        v128 = v168;
        (*(v167 + 104))(v126, *MEMORY[0x277CE9C40], v168);
        v129 = v169;
        sub_20C1320D4();
        (*(v127 + 8))(v126, v128);
        v130 = *(v120 + 8);
        v130(v122, v123);
        if (qword_27C760650 != -1)
        {
          swift_once();
        }

        sub_20C131FF4();
        v130(v129, v123);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB0);
        v131 = v152;
        v132 = *(v152 + 72);
        v133 = (*(v152 + 80) + 32) & ~*(v152 + 80);
        v134 = swift_allocObject();
        v169 = v130;
        *(v134 + 16) = xmmword_20C14F320;
        v135 = v134 + v133;
        v136 = v123;
        v137 = *(v131 + 16);
        v138 = v157;
        v139 = v153;
        v137(v135, v157, v153);
        v140 = v135 + v132;
        v141 = v158;
        v137(v140, v158, v139);
        v142 = v170;
        v143 = v174;
        sub_20C131F64();

        (v169)(v143, v136);
        v144 = *(v131 + 8);
        v144(v141, v139);
        v144(v138, v139);
        (*(v172 + 8))(v162, v173);
        v145 = v176;
        v146 = v177;
        swift_beginAccess();
        (*(v175 + 40))(v145 + v146, v142, v136);
      }
    }

    else
    {
      (*(v172 + 32))();
      v67 = v176;
      sub_20C1348A4();
      sub_20BB09168(&v178, v68);

      v71 = v171;
      v72 = v33;
      v73 = v148;
      v74 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_valueNode;
      swift_beginAccess();
      v75 = v165;
      v76 = v164;
      (*(v165 + 16))(v73, v67 + v74, v164);
      sub_20C132074();

      v77 = *(v75 + 8);
      v77(v73, v76);
      v78 = v177;
      sub_20C131F34();
      v77(v72, v76);
      swift_beginAccess();
      (*(v75 + 40))(v67 + v74, v78, v76);
      swift_endAccess();
      v79 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_beatingHeartNode;
      swift_beginAccess();
      v80 = v175;
      v81 = v163;
      (*(v175 + 16))(v163, v67 + v79, v71);
      v82 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_idleHeartAsset;
      v83 = sub_20C132164();
      v84 = v166;
      (*(*(v83 - 8) + 16))(v166, v67 + v82, v83);
      v85 = v167;
      v86 = v168;
      (*(v167 + 104))(v84, *MEMORY[0x277CE9C40], v168);
      v87 = v169;
      sub_20C1320D4();
      (*(v85 + 8))(v84, v86);
      v88 = *(v80 + 8);
      v88(v81, v71);
      if (qword_27C760650 != -1)
      {
        swift_once();
      }

      v89 = v174;
      sub_20C131FF4();
      v88(v87, v71);
      sub_20C132504();
      v90 = v170;
      sub_20C131F64();
      v88(v89, v71);
      (*(v172 + 8))(v161, v173);
      swift_beginAccess();
      (*(v80 + 40))(v67 + v79, v90, v71);
    }
  }

  else
  {
    if ((result - 2) >= 2)
    {
      return result;
    }

    v48 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_valueNode;
    v49 = v176;
    swift_beginAccess();
    v50 = v165;
    v51 = v164;
    (*(v165 + 16))(v39, v49 + v48, v164);
    sub_20C132074();
    v52 = *(v50 + 8);
    v52(v39, v51);
    sub_20C1323A4();
    v53 = v159;
    sub_20C131FF4();
    v52(v42, v51);
    swift_beginAccess();
    (*(v50 + 40))(v49 + v48, v53, v51);
    swift_endAccess();
    v54 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_beatingHeartNode;
    swift_beginAccess();
    v55 = v175;
    v56 = v163;
    v57 = v171;
    (*(v175 + 16))(v163, v49 + v54, v171);
    v58 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_idleHeartAsset;
    v59 = sub_20C132164();
    v60 = v166;
    (*(*(v59 - 8) + 16))(v166, v49 + v58, v59);
    v61 = v167;
    v62 = v168;
    (*(v167 + 104))(v60, *MEMORY[0x277CE9C40], v168);
    v63 = v169;
    sub_20C1320D4();
    (*(v61 + 8))(v60, v62);
    v64 = *(v55 + 8);
    v64(v56, v57);
    if (qword_27C760650 != -1)
    {
      swift_once();
    }

    v65 = v174;
    sub_20C131FF4();
    v64(v63, v57);
    sub_20C132504();
    v66 = v170;
    sub_20C131F64();
    v64(v65, v57);
    swift_beginAccess();
    (*(v55 + 40))(v49 + v54, v66, v57);
  }

  return swift_endAccess();
}

uint64_t sub_20B5928B0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_beatingHeartAsset;
  v2 = sub_20C132164();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_idleHeartAsset, v2);
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_containerBuilder);
  v4 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_valueNode;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_beatingHeartNode;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_unknownObjectRelease();
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_parent);
  v8 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder__reducedOverlayAnimations;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeartRateNodeBuilder()
{
  result = qword_27C761F58;
  if (!qword_27C761F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B592AE4()
{
  sub_20C132164();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContainerNodeBuilder();
    if (v1 <= 0x3F)
    {
      sub_20B592C74();
      if (v2 <= 0x3F)
      {
        sub_20B592D08();
        if (v3 <= 0x3F)
        {
          sub_20B52432C();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_20B592C74()
{
  if (!qword_27C761F68)
  {
    sub_20C1321C4();
    sub_20B592D9C(&qword_27C761F70, MEMORY[0x277CE9C30]);
    v0 = sub_20C132114();
    if (!v1)
    {
      atomic_store(v0, &qword_27C761F68);
    }
  }
}

void sub_20B592D08()
{
  if (!qword_27C761F78)
  {
    sub_20C1321E4();
    sub_20B592D9C(&qword_27C761F80, MEMORY[0x277CE9C50]);
    v0 = sub_20C132114();
    if (!v1)
    {
      atomic_store(v0, &qword_27C761F78);
    }
  }
}

uint64_t sub_20B592D9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B592DE4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContainerNodeBuilder();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_containerBuilder;
  swift_beginAccess();
  sub_20B5932AC(v1 + v6, v5, type metadata accessor for ContainerNodeBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F88);
  v7 = sub_20C132264();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20C14F320;
  v12 = v11 + v10;
  v13 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_valueNode;
  swift_beginAccess();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  (*(*(v14 - 8) + 16))(v12, v1 + v13, v14);
  v15 = *(v8 + 104);
  v15(v12, *MEMORY[0x277CE9CD8], v7);
  v16 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_beatingHeartNode;
  swift_beginAccess();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  (*(*(v17 - 8) + 16))(v12 + v9, v1 + v16, v17);
  v15(v12 + v9, *MEMORY[0x277CE9CE0], v7);
  sub_20B7E27F8(a1);

  return sub_20B593250(v5);
}

uint64_t sub_20B593070()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FA0);
  v1 = sub_20C132164();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C14F320;
  v6 = v5 + v4;
  v7 = *(v2 + 16);
  v7(v6, v0 + OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_beatingHeartAsset, v1);
  v7(v6 + v3, v0 + OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_idleHeartAsset, v1);
  return v5;
}

uint64_t sub_20B593184(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B5931D4(uint64_t a1)
{
  sub_20B5912B8(a1);
  v2 = v1 + OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_parent;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B593250(uint64_t a1)
{
  v2 = type metadata accessor for ContainerNodeBuilder();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B5932AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20B593314()
{
  result = qword_27C761FA8;
  if (!qword_27C761FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C761FA8);
  }

  return result;
}

id sub_20B593368(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  v106 = a1;
  v110 = sub_20C1321D4();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F98);
  v113 = *(v3 - 8);
  v114 = v3;
  MEMORY[0x28223BE20](v3);
  v109 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v111 = v88 - v6;
  MEMORY[0x28223BE20](v7);
  v112 = v88 - v8;
  v104 = sub_20C13A814();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_20C132364();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761F90);
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v95 = v88 - v11;
  v12 = sub_20C132EE4();
  v13 = *(v12 - 8);
  v117 = v12;
  v118 = v13;
  MEMORY[0x28223BE20](v12);
  v101 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8);
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = v88 - v15;
  v115 = sub_20C132254();
  v93 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v92 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C132144();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C132154();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() heartRateColors];
  if (result)
  {
    v26 = result;
    v27 = [result nonGradientTextColor];

    v28 = *MEMORY[0x277CE9BD8];
    v29 = *(v22 + 104);
    v88[1] = v22 + 104;
    v89 = v29;
    v29(v24, v28, v21);
    v30 = *MEMORY[0x277CE9BC8];
    v31 = *(v18 + 104);
    v31(v20, v30, v17);
    v32 = swift_allocObject();
    *(v32 + 16) = 0x69662E7472616568;
    *(v32 + 24) = 0xEA00000000006C6CLL;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 32) = v27;
    *(v32 + 56) = 1;
    *(v32 + 64) = 0x69662E7472616568;
    *(v32 + 72) = 0xEA00000000006C6CLL;
    v33 = v116;
    sub_20C132124();
    v88[0] = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_idleHeartAsset;
    v34 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.2];
    v89(v24, v28, v21);
    v31(v20, v30, v17);
    v35 = swift_allocObject();
    *(v35 + 16) = 0x7472616568;
    *(v35 + 24) = 0xE500000000000000;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 32) = v34;
    *(v35 + 56) = 1;
    *(v35 + 64) = 0x7472616568;
    *(v35 + 72) = 0xE500000000000000;
    sub_20C132124();
    v36 = (v33 + OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_containerBuilder);
    if (qword_27C760748 != -1)
    {
      swift_once();
    }

    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FC0) + 48);
    v38 = *MEMORY[0x277CE9C90];
    v39 = sub_20C132234();
    v40 = v92;
    (*(*(v39 - 8) + 104))(v92, v38, v39);
    *&v40[v37] = 0;
    v41 = v93;
    (*(v93 + 104))(v40, *MEMORY[0x277CE9CB8], v115);
    v36[1] = 2;
    v42 = v101;
    sub_20C132ED4();
    v43 = v90;
    sub_20C132104();
    v89 = *(v118 + 8);
    v118 += 8;
    (v89)(v42, v117);
    v44 = type metadata accessor for ContainerNodeBuilder();
    v45 = v94;
    sub_20C131F24();
    (*(v91 + 8))(v43, v45);
    *v36 = 1;
    v46 = sub_20C131F44();
    v47 = &v36[v44[7]];
    *v47 = v46;
    v47[8] = v48;
    v49 = sub_20C131FD4();
    v50 = &v36[v44[8]];
    *v50 = v49;
    v50[8] = v51;
    v52 = sub_20C131FE4();
    v53 = &v36[v44[9]];
    *v53 = v52;
    *(v53 + 1) = v54;
    v53[20] = v55;
    *(v53 + 4) = v56;
    v53[21] = v57;
    v58 = sub_20C132384();
    v59 = &v36[v44[10]];
    *v59 = v58 & 0xFFFFFFFFFFLL;
    v59[12] = v60;
    *(v59 + 2) = v61;
    v59[13] = 0;
    v62 = sub_20C132004();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    (*(v41 + 8))(v40, v115);
    v69 = &v36[v44[11]];
    *v69 = v62;
    *(v69 + 1) = v64;
    *(v69 + 2) = v66;
    v69[24] = v68;
    sub_20BA6D744(3);
    v70 = v96;
    sub_20C132374();
    sub_20C1323D4();
    sub_20C132ED4();
    v71 = v95;
    sub_20C1320B4();
    v72 = v89;
    (v89)(v42, v117);
    (*(v98 + 8))(v70, v100);
    sub_20C1323A4();
    v73 = v116;
    v74 = v99;
    sub_20C131FF4();
    (*(v97 + 8))(v71, v74);
    *(v73 + OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_parent + 8) = 0;
    swift_unknownObjectWeakInit();
    (*(v102 + 104))(v103, *MEMORY[0x277D4EF50], v104);
    LOBYTE(v119) = 1;
    sub_20C13A384();
    v75 = (v73 + OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_metricBuilder);
    v76 = v105;
    *v75 = v106;
    v75[1] = v76;
    v77 = OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_idleHeartAsset;
    v78 = sub_20C132164();
    v79 = v107;
    (*(*(v78 - 8) + 16))(v107, v73 + v77, v78);
    v80 = v108;
    v81 = v110;
    (*(v108 + 104))(v79, *MEMORY[0x277CE9C40], v110);
    swift_unknownObjectRetain();
    sub_20C1323C4();
    sub_20C132ED4();
    v82 = v109;
    sub_20C1320E4();
    v72(v42, v117);
    (*(v80 + 8))(v79, v81);
    if (qword_27C760650 != -1)
    {
      swift_once();
    }

    v83 = v111;
    v84 = v114;
    sub_20C131FF4();
    v85 = v113;
    v86 = *(v113 + 8);
    v86(v82, v84);
    sub_20C132504();
    v87 = v112;
    sub_20C131F64();
    v86(v83, v84);
    (*(v85 + 32))(v73 + OBJC_IVAR____TtC9SeymourUI20HeartRateNodeBuilder_beatingHeartNode, v87, v84);
    return v73;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_20B594178(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_20B594268;

  return sub_20B6A3574(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_20B594268(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

unint64_t sub_20B594378()
{
  result = qword_27C761FC8;
  if (!qword_27C761FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C761FC8);
  }

  return result;
}

uint64_t sub_20B5943E4()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B59442C()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

uint64_t getEnumTagSinglePayload for TwoColumnLayoutSectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TwoColumnLayoutSectionType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AlertError.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20B594668()
{
  result = qword_27C761FD0;
  if (!qword_27C761FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C761FD0);
  }

  return result;
}

void sub_20B5948B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageAlertController();
  ObjectType = swift_getObjectType();
  sub_20BD393A8(a2, v6, ObjectType, a3);
  v9 = v8;
  [v3 presentViewController:v8 animated:1 completion:0];
}

void sub_20B5949A8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PageAlertController();
  ObjectType = swift_getObjectType();
  sub_20BD393A8(a1, v5, ObjectType, a2);
  v8 = v7;
  [v2 presentViewController:v7 animated:1 completion:0];
}

void sub_20B594A38(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v3 = sub_20C13C914();
    if (*(a1 + 40))
    {
LABEL_3:
      v4 = sub_20C13C914();
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    if (*(a1 + 40))
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [objc_allocWithZone(SMUTVTextAlertController) initWithTitle:v3 text:v4];

  v6 = [v5 viewController];
  [v1 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_20B594C08()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TVCatalogWorkoutDetailViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  sub_20B79390C(0);
  sub_20B795E68();
  [v0 setRestoresFocusAfterTransition_];
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dataProvider];
  [*(*(v2 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
  [*(*(v2 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInsetAdjustmentBehavior_];
  sub_20B80A8A8();
  sub_20B86FC60();
  sub_20B976888(0, 1, 80.0);
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_ellipsisButton];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = (v3 + OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu);
  v6 = *(v3 + OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu);
  *v5 = sub_20B597924;
  v5[1] = v4;

  sub_20B583ECC(v6);
}

uint64_t sub_20B594D6C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_20B80CFC4();
  }

  return result;
}

id sub_20B594E24()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for TVCatalogWorkoutDetailViewController();
  objc_msgSendSuper2(&v15, sel_viewDidLayoutSubviews);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result layoutIfNeeded];

    v3 = *&v0[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_gradientMaskLayer];
    [*&v0[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_bottomBlurView] bounds];
    [v3 setFrame_];
    v4 = *&v0[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_shroudView];
    [*&v0[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_artworkView] bounds];
    [v4 setFrame_];
    v5 = *&v0[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dataProvider];
    v6 = *(v5 + 408);
    __swift_project_boxed_opaque_existential_1(&v6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
    v7 = *&v6[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
    v8 = v6;
    [v7 bounds];
    sub_20B9D8614(v9, v10, v11, v12);

    [*(*(v5 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
    return sub_20B978C28(v13, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B594FD8(char a1)
{
  v16 = sub_20C1333A4();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TVCatalogWorkoutDetailViewController();
  v18.receiver = v1;
  v18.super_class = v9;
  objc_msgSendSuper2(&v18, sel_viewDidAppear_, a1 & 1);
  v10 = *&v1[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dataProvider];
  v11 = OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v10 + v11, v8, &qword_27C7620C8);
  v12 = sub_20C135AE4();
  v13 = (*(*(v12 - 8) + 48))(v8, 1, v12);
  sub_20B520158(v8, &qword_27C7620C8);
  if (v13 == 1)
  {
    *(v10 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_shouldPublishPageEventWhenAvailable) = 1;
  }

  else
  {
    v17 = v10;
    sub_20B80D384(v5);
    type metadata accessor for TVCatalogWorkoutDetailPageDataProvider();
    sub_20B5978DC(&unk_27C7620D0, type metadata accessor for TVCatalogWorkoutDetailPageDataProvider);
    sub_20C138C54();
    (*(v3 + 8))(v5, v16);
  }

  sub_20B5978DC(&qword_27C7620A8, type metadata accessor for TVCatalogWorkoutDetailViewController);
  sub_20B5978DC(&unk_27C7620B0, type metadata accessor for TVCatalogWorkoutDetailViewController);
  return sub_20C139364();
}

void sub_20B595304(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TVCatalogWorkoutDetailViewController();
  v16.receiver = v2;
  v16.super_class = v8;
  objc_msgSendSuper2(&v16, sel_viewWillDisappear_, a1 & 1);
  v15 = v2;
  sub_20C132E84();
  sub_20B5978DC(&qword_27C7620A8, type metadata accessor for TVCatalogWorkoutDetailViewController);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v9 = [v2 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v12 = sub_20C13CC74();

    v15 = v2;
    MEMORY[0x28223BE20](v13);
    *(&v14 - 2) = &v15;
    LOBYTE(v11) = sub_20B79AEEC(sub_20B5978BC, (&v14 - 4), v12);

    if ((v11 & 1) == 0)
    {
      v15 = v2;
      sub_20B5978DC(&qword_27C7620C0, type metadata accessor for TVCatalogWorkoutDetailViewController);
      sub_20C138C64();
    }
  }
}

id sub_20B5956E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVCatalogWorkoutDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVCatalogWorkoutDetailViewController()
{
  result = qword_27C762060;
  if (!qword_27C762060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B595918()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B595A38()
{
  if (!qword_281103E20)
  {
    sub_20C133244();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_281103E20);
    }
  }
}

uint64_t sub_20B595A90()
{
  [*(*(*(v0 + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dataProvider) + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];

  return sub_20B978C28(v1, v2);
}

id sub_20B595AE0()
{
  v1 = v0;
  v2 = sub_20C133244();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(*&v1[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dataProvider] + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  MEMORY[0x20F2EA980](0, 0);
  v7 = sub_20C1331B4();
  (*(v3 + 8))(v5, v2);
  v8 = [v6 layoutAttributesForItemAtIndexPath_];

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = result;
  [result bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v22.origin.x = v12;
  v22.origin.y = v14;
  v22.size.width = v16;
  v22.size.height = v18;
  CGRectGetHeight(v22);
  result = [v1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = result;
  [result safeAreaInsets];

  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v20 = result;
  [result safeAreaInsets];

  if (v8)
  {
    [v8 bounds];
    CGRectGetHeight(v23);
  }

  [*&v1[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_titleLabel] frame];
  CGRectGetMaxY(v24);

  return 0;
}

__n128 sub_20B595DE0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_layout;
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  result = *(v2 + 32);
  v5 = *(v2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_20B595E60()
{
  v1 = sub_20C134B94();
  v3 = v2;
  if (v1 != sub_20C134B94() || v3 != v4)
  {
    sub_20C13DFF4();
  }

  v6 = [objc_allocWithZone(SMUBulletinInfo) init];
  v7 = sub_20C13C914();
  [v6 setImageSymbolName_];

  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_storefrontLocalizer + 24));
  sub_20C138D34();

  v8 = sub_20C13C914();

  [v6 setTitle_];

  [objc_msgSend(objc_opt_self() sharedBulletinService)];

  return swift_unknownObjectRelease();
}

uint64_t sub_20B596048()
{
  v1 = sub_20C134B94();
  v3 = v2;
  if (v1 != sub_20C134B94() || v3 != v4)
  {
    sub_20C13DFF4();
  }

  v6 = [objc_allocWithZone(SMUBulletinInfo) init];
  v7 = sub_20C13C914();
  [v6 setImageSymbolName_];

  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_storefrontLocalizer + 24));
  sub_20C138D34();

  v8 = sub_20C13C914();

  [v6 setTitle_];

  [objc_msgSend(objc_opt_self() sharedBulletinService)];

  return swift_unknownObjectRelease();
}

uint64_t sub_20B5962C4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_lastFocusedIndexPath;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &unk_27C7629C0);
}

uint64_t sub_20B59632C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B59784C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B596508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20B5965C4()
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20B596628()
{
  swift_getWitnessTable();

  return sub_20C139374();
}

char *sub_20B5966A4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v61[3] = a5;
  v61[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_visibility] = 1;
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_resignActiveObserver] = 0;
  v11 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_purchaseCoordinator;
  *&a4[v11] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v12 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_purchaseHandler;
  *&a4[v12] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v13 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dynamicOfferCoordinator;
  *&a4[v13] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v14 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_webUserInterfaceCoordinator;
  *&a4[v14] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v15 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_lastFocusedIndexPath;
  v16 = sub_20C133244();
  (*(*(v16 - 8) + 56))(&a4[v15], 1, 1, v16);
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_settlingTimer] = 0;
  v17 = &a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_layout];
  *v17 = xmmword_20C14F590;
  v17[1] = xmmword_20C14F5A0;
  v17[2] = xmmword_20C14F5B0;
  v17[3] = xmmword_20C14F5C0;
  v18 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_artworkView;
  v19 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a4[v18] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_shroudView;
  v21 = objc_opt_self();
  v22 = [v21 effectWithStyle_];
  v23 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *&a4[v20] = v23;
  v24 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_bottomBlurView;
  v25 = [v21 effectWithStyle_];
  v26 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a4[v24] = v26;
  v27 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_titleLabel;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v29 = sub_20BD518BC();

  [v29 setLineBreakMode_];
  [v29 setNumberOfLines_];
  [v29 setAllowsDefaultTighteningForTruncation_];
  v30 = objc_opt_self();
  v31 = [v30 preferredFontForTextStyle_];
  [v31 pointSize];
  v33 = v32;

  v34 = [v30 boldSystemFontOfSize_];
  [v29 setFont_];

  v35 = objc_opt_self();
  v36 = [v35 whiteColor];
  [v29 setTextColor_];

  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  [v29 setAdjustsFontForContentSizeCategory_];
  *&a4[v27] = v29;
  v37 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_subtitleLabel;
  v38 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v39 = sub_20BD518BC();

  [v39 setLineBreakMode_];
  [v39 setNumberOfLines_];
  [v39 setAllowsDefaultTighteningForTruncation_];
  v40 = [v30 preferredFontForTextStyle_];
  [v40 pointSize];
  v42 = v41;

  v43 = [v30 systemFontOfSize:v42 weight:*MEMORY[0x277D74420]];
  [v39 setFont_];

  v44 = [v35 whiteColor];
  [v39 setTextColor_];

  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  [v39 setAdjustsFontForContentSizeCategory_];
  *&a4[v37] = v39;
  v45 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_ellipsisButton;
  v46 = sub_20B8C98E0(1, 0.0, 0.0, 0.0, 0.0);
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a4[v45] = v46;
  v47 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_gradientMaskLayer;
  *&a4[v47] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_bag] = *&v60[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_eventHub] = v60[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090);
  sub_20C133AA4();
  sub_20B51C710(v60, &a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_marketingMetricFieldsProvider]);
  sub_20B51CC64(v61, &a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_platform] = v60[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v60, &a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_storefrontLocalizer]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v60, &a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_timerProvider]);
  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dataProvider] = a2;
  v48 = *(a2 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutIdentifier);
  v49 = *(a2 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_workoutIdentifier + 8);
  type metadata accessor for TVWorkoutDetailMenuPresenter();
  swift_allocObject();
  swift_retain_n();

  v50 = sub_20B875AD4(a1, v48, v49, a2);

  *&a4[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_menuPresenter] = v50;
  v59.receiver = a4;
  v59.super_class = type metadata accessor for TVCatalogWorkoutDetailViewController();
  v51 = objc_msgSendSuper2(&v59, sel_initWithNibName_bundle_, 0, 0);

  __swift_destroy_boxed_opaque_existential_1(v61);
  *(*&v51[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_menuPresenter] + 272) = &off_28228FE80;
  swift_unknownObjectWeakAssign();
  *(a2 + OBJC_IVAR____TtC9SeymourUI38TVCatalogWorkoutDetailPageDataProvider_backgroundArtworkDelegate + 8) = &off_28228FE48;
  swift_unknownObjectWeakAssign();
  v52 = *(a2 + 408);
  v53 = v51;
  v54 = v52;

  *&v54[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8] = &off_28228FF20;
  swift_unknownObjectWeakAssign();

  v55 = &v53[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_eventHub];
  *(*&v53[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_purchaseHandler] + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8) = *&v53[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_eventHub + 8];
  swift_unknownObjectWeakAssign();
  v56 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_purchaseCoordinator;
  swift_unknownObjectWeakAssign();
  *(*&v53[v56] + OBJC_IVAR____TtC9SeymourUI28MarketingPurchaseCoordinator_eventHub + 8) = *(v55 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(*&v53[OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dynamicOfferCoordinator] + OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8) = *(v55 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v53;
}

void sub_20B597068()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_visibility) = 1;
  *(v0 + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_resignActiveObserver) = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_purchaseCoordinator;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v3 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_purchaseHandler;
  *(v1 + v3) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v4 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dynamicOfferCoordinator;
  *(v1 + v4) = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v5 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_webUserInterfaceCoordinator;
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v6 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_lastFocusedIndexPath;
  v7 = sub_20C133244();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_settlingTimer) = 0;
  v8 = (v1 + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_layout);
  *v8 = xmmword_20C14F590;
  v8[1] = xmmword_20C14F5A0;
  v8[2] = xmmword_20C14F5B0;
  v8[3] = xmmword_20C14F5C0;
  v9 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_artworkView;
  v10 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v9) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_shroudView;
  v12 = objc_opt_self();
  v13 = [v12 effectWithStyle_];
  v14 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v1 + v11) = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_bottomBlurView;
  v16 = [v12 effectWithStyle_];
  v17 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  [v17 &selRef_count + 2];
  *(v1 + v15) = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_titleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v20 = sub_20BD518BC();

  [v20 setLineBreakMode_];
  [v20 setNumberOfLines_];
  [v20 setAllowsDefaultTighteningForTruncation_];
  v21 = objc_opt_self();
  v22 = [v21 preferredFontForTextStyle_];
  [v22 pointSize];
  v24 = v23;

  v25 = [v21 boldSystemFontOfSize_];
  [v20 setFont_];

  v26 = objc_opt_self();
  v27 = [v26 whiteColor];
  [v20 setTextColor_];

  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAdjustsFontForContentSizeCategory_];
  *(v1 + v18) = v20;
  v28 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_subtitleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v30 = sub_20BD518BC();

  [v30 setLineBreakMode_];
  [v30 setNumberOfLines_];
  [v30 setAllowsDefaultTighteningForTruncation_];
  v31 = [v21 preferredFontForTextStyle_];
  [v31 pointSize];
  v33 = v32;

  v34 = [v21 systemFontOfSize:v33 weight:*MEMORY[0x277D74420]];
  [v30 setFont_];

  v35 = [v26 whiteColor];
  [v30 setTextColor_];

  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  [v30 setAdjustsFontForContentSizeCategory_];
  *(v1 + v28) = v30;
  v36 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_ellipsisButton;
  v37 = sub_20B8C98E0(1, 0.0, 0.0, 0.0, 0.0);
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v36) = v37;
  v38 = OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_gradientMaskLayer;
  *(v1 + v38) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_20C13DE24();
  __break(1u);
}

void sub_20B597628(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = *(v5 + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_artworkView);
  sub_20B52F9E8(a2, &v17 - v9, &unk_27C766680);
  v12 = sub_20C137C24();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_20B520158(v10, &unk_27C766680);
  }

  else
  {
    sub_20C137BC4();
    (*(v13 + 8))(v10, v12);
  }

  sub_20B51C88C(0, &qword_27C762070);
  v14 = sub_20C13D5A4();
  if (!v14)
  {
    if (qword_27C760828 != -1)
    {
      swift_once();
    }

    v14 = qword_27C79AE50;
  }

  v15 = v14;
  [v11 setBackgroundColor_];

  v16 = *(v5 + OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_titleLabel);
  if (a4)
  {
    a4 = sub_20C13C914();
  }

  [v16 setText_];
}

uint64_t sub_20B59784C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5978DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B59793C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a2;
  v71 = a3;
  v69 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v74 = &v66 - v8;
  v72 = v9;
  MEMORY[0x28223BE20](v7);
  v75 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765DA0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v68 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v16 = type metadata accessor for ButtonAction.ActionType(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v67 = (&v66 - v22);
  MEMORY[0x28223BE20](v21);
  v24 = (&v66 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v66 - v26;
  v28 = sub_20C135AE4();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v27, v69, v28);
  (*(v29 + 56))(v27, 0, 1, v28);
  v30 = v16;
  v31 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_workoutDetail;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v3 + v31, &qword_27C7620C8);
  swift_endAccess();
  v32 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_marketingOffer;
  swift_beginAccess();
  sub_20B5DF33C(v70, v3 + v32);
  swift_endAccess();
  *(v3 + OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_bookmarks) = v71;

  v33 = OBJC_IVAR____TtC9SeymourUI33TVCatalogWorkoutDetailHeaderShelf_inProgressButtonActions;
  swift_beginAccess();
  v34 = *(v3 + v33);
  *v24 = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();
  v78 = v24;

  sub_20B6B713C(sub_20B5DF5A4, v34, v15);

  v35 = *(v17 + 48);
  v71 = v17 + 48;
  LODWORD(v34) = v35(v15, 1, v30);
  sub_20B520158(v15, &qword_27C765DA0);
  sub_20B5DF274(v24, type metadata accessor for ButtonAction.ActionType);
  if (v34 == 1)
  {
    v36 = *(v3 + v33);
    v37 = v67;
    *v67 = MEMORY[0x277D84FA0];
    v38 = swift_storeEnumTagMultiPayload();
    v70 = &v66;
    MEMORY[0x28223BE20](v38);
    *(&v66 - 2) = v37;

    v39 = v30;
    v40 = v68;
    sub_20B6B713C(sub_20B5DF5A4, v36, v68);

    v41 = v35(v40, 1, v39) != 1;
    sub_20B520158(v40, &qword_27C765DA0);
    sub_20B5DF274(v37, type metadata accessor for ButtonAction.ActionType);
  }

  else
  {
    v41 = 1;
  }

  v42 = MEMORY[0x277D84FA0];
  *v20 = MEMORY[0x277D84FA0];
  swift_storeEnumTagMultiPayload();
  v43 = swift_beginAccess();
  v44 = *(v3 + v33);
  MEMORY[0x28223BE20](v43);
  *(&v66 - 2) = v20;

  v45 = sub_20BEE0D74(sub_20B5DF5A4, (&v66 - 4), v44);
  sub_20B5ADF04(v45);
  sub_20B5DF274(v20, type metadata accessor for ButtonAction.ActionType);
  swift_endAccess();

  *v20 = v42;
  swift_storeEnumTagMultiPayload();
  v46 = swift_beginAccess();
  v47 = *(v3 + v33);
  MEMORY[0x28223BE20](v46);
  *(&v66 - 2) = v20;

  v48 = sub_20BEE0D74(sub_20B5DF5A4, (&v66 - 4), v47);
  sub_20B5ADF04(v48);
  sub_20B5DF274(v20, type metadata accessor for ButtonAction.ActionType);
  swift_endAccess();

  v49 = v74;
  sub_20B59935C(v74);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = v41;
  *(v51 + 24) = v50;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_20B5DF3AC;
  *(v52 + 24) = v51;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_20B5DF3B8;
  *(v53 + 24) = v52;
  v55 = v76;
  v54 = v77;
  v56 = v73;
  (*(v76 + 16))(v73, v49, v77);
  v57 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v58 = (v72 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  (*(v55 + 32))(v59 + v57, v56, v54);
  v60 = (v59 + v58);
  *v60 = sub_20B5DF3D4;
  v60[1] = v53;
  v61 = v75;
  sub_20C137C94();
  v62 = *(v55 + 8);
  v62(v49, v54);
  v63 = sub_20C137CB4();
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  v63(sub_20B5DF6DC, v64);

  return (v62)(v61, v54);
}
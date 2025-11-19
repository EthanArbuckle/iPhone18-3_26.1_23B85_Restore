uint64_t sub_21C979CE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for PMGroupMembersProviderMain();
  v30[3] = v7;
  v30[4] = &off_282E56208;
  v30[0] = a2;
  v28 = v6;
  v29 = &off_282E54DD8;
  v27[0] = a3;
  v8 = type metadata accessor for PMEditGroupViewModel();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v30, v7);
  v13 = *(*(v7 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = v28;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  v20 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = sub_21C9793A8(a1, *v16, *v23, v11);
  __swift_destroy_boxed_opaque_existential_0(v27);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return v25;
}

uint64_t sub_21C979EE8(uint64_t a1)
{
  v2 = type metadata accessor for PMSharingGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PMEditGroupView()
{
  result = qword_27CDF2AC0;
  if (!qword_27CDF2AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C979FB8()
{
  type metadata accessor for PMSharingGroup();
  if (v0 <= 0x3F)
  {
    sub_21C7226D8();
    if (v1 <= 0x3F)
    {
      sub_21C97A09C();
      if (v2 <= 0x3F)
      {
        sub_21C707F4C();
        if (v3 <= 0x3F)
        {
          sub_21C72E434();
          if (v4 <= 0x3F)
          {
            sub_21C7086F8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21C97A09C()
{
  if (!qword_27CDF2AD0)
  {
    type metadata accessor for PMEditGroupViewModel();
    sub_21C97ACD0(&qword_27CDF2AD8, type metadata accessor for PMEditGroupViewModel);
    v0 = sub_21CB82154();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF2AD0);
    }
  }
}

uint64_t sub_21C97A15C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C97A1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMEditGroupView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C97A23C()
{
  result = qword_27CDF2B80;
  if (!qword_27CDF2B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B00, &qword_21CBB5340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2AF8, &qword_21CBB5338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B68, &qword_21CBB5398);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2AF0, &qword_21CBB5330);
    sub_21CB829D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2AE8, &qword_21CBB5328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2AE0, &qword_21CBB5320);
    sub_21C6EADEC(&qword_27CDF2B60, &qword_27CDF2AE0, &qword_21CBB5320);
    swift_getOpaqueTypeConformance2();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C97ACD0(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B70, &qword_21CBB53A0);
    sub_21C6EADEC(&qword_27CDF2B78, &qword_27CDF2B70, &qword_21CBB53A0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2B80);
  }

  return result;
}

uint64_t sub_21C97A538(uint64_t a1)
{
  v3 = type metadata accessor for PMEditGroupView();
  v4 = v1 + *(v3 + 20) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));
  v5 = *(v4 + 8);
  return (*v4)(a1);
}

uint64_t sub_21C97A5B8(uint64_t a1)
{
  v3 = *(type metadata accessor for PMEditGroupView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C97551C(a1, v4);
}

uint64_t sub_21C97A664(uint64_t a1)
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
  v10[1] = sub_21C6F35D0;

  return sub_21C97874C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_76Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_79Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21C97A80C(uint64_t a1)
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
  v10[1] = sub_21C6F35D0;

  return sub_21C977BA0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21C97A91C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C9775E4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_126Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_129Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21C97AAA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C976AC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21C97AB80()
{
  v1 = *(type metadata accessor for PMEditGroupView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C9758BC(v2);
}

uint64_t sub_21C97ABE0(uint64_t a1)
{
  v4 = *(type metadata accessor for PMEditGroupView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C6F35D0;

  return sub_21C975B3C(a1, v6, v7, v1 + v5);
}

uint64_t sub_21C97ACD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C97AD20()
{
  result = qword_27CDF2BC0;
  if (!qword_27CDF2BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2BB8, &qword_21CBB5A08);
    sub_21C97ADAC();
    sub_21C97AF48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2BC0);
  }

  return result;
}

unint64_t sub_21C97ADAC()
{
  result = qword_27CDF2BC8;
  if (!qword_27CDF2BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2BD0, &qword_21CBB5A10);
    sub_21C97AE64();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2BC8);
  }

  return result;
}

unint64_t sub_21C97AE64()
{
  result = qword_27CDF2BD8;
  if (!qword_27CDF2BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2BE0, &qword_21CBB5A18);
    sub_21C6EADEC(&qword_27CDF2BE8, &qword_27CDF2BF0, &unk_21CBB5A20);
    sub_21C6EADEC(&qword_27CDEC730, &qword_27CDEC738, &unk_21CBA6BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2BD8);
  }

  return result;
}

unint64_t sub_21C97AF48()
{
  result = qword_27CDF2BF8;
  if (!qword_27CDF2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2BF8);
  }

  return result;
}

uint64_t sub_21C97AF9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21C97187C(a1);
}

uint64_t sub_21C97AFA4(uint64_t a1)
{
  v3 = *(type metadata accessor for PMEditGroupView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9718E8(a1, v4);
}

uint64_t sub_21C97B014(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PMEditGroupView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C9720F0(a1, a2, v6);
}

uint64_t sub_21C97B094(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for PMEditGroupView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21C9725B8(a1, a2, a3, v8);
}

uint64_t sub_21C97B11C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21C702EFC;

  return sub_21C972B58(a1, a2, v2);
}

uint64_t sub_21C97B260(uint64_t a1)
{
  v4 = *(type metadata accessor for PMEditGroupView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_21C6F35D0;

  return sub_21C9727C0(a1, v6, v7, v1 + v5, v9, v10, v11);
}

uint64_t sub_21C97B398(uint64_t a1)
{
  v4 = *(type metadata accessor for PMEditGroupView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21C6F35D0;

  return sub_21C9722E8(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_21C97B4C8(uint64_t a1)
{
  v4 = *(type metadata accessor for PMEditGroupView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21C6F35D0;

  return sub_21C971AD8(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_29Tm()
{
  v1 = (type metadata accessor for PMEditGroupView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_21CB85C44();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for PMSharingGroup();
  v8 = *(v0 + v3 + v7[5] + 8);

  v9 = *(v0 + v3 + v7[6]);

  v10 = *(v0 + v3 + v7[7] + 8);

  v11 = *(v0 + v3 + v1[7] + 8);

  v12 = v0 + v3 + v1[8];
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  sub_21C70AC30();

  v16 = *(v0 + v3 + v1[10] + 8);

  v17 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_21CB83834();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v5 + v17, 1, v18))
    {
      (*(v19 + 8))(v5 + v17, v18);
    }
  }

  else
  {
    v20 = *(v5 + v17);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C97B804@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMEditGroupView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9715F4(v4, a1);
}

uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI15PMEditGroupViewV6ActionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_21C97B89C()
{
  result = qword_27CDF2C20;
  if (!qword_27CDF2C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B88, &qword_21CBB5590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B40, &qword_21CBB5380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B38, &qword_21CBB5378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B30, &qword_21CBB5370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B28, &qword_21CBB5368);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1748, &qword_21CBBDF70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B20, &qword_21CBB5360);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED298, &qword_21CBA6570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B18, &qword_21CBB5358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B10, &qword_21CBB5350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B08, &qword_21CBB5348);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2B00, &qword_21CBB5340);
    sub_21C97A23C();
    sub_21C71F3FC();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF2C28, &qword_27CDF2B90, &qword_21CBB5598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2C20);
  }

  return result;
}

void sub_21C97BCD0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = sub_21CB817E4();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB81884();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a3, a1, v10);
  v27 = type metadata accessor for PMCredentialPickerHeaderView(0);
  v28 = a3;
  v12 = (a3 + *(v27 + 24));
  type metadata accessor for PMCredentialPickerViewController(0);
  sub_21C97E44C(&unk_27CDF2C30, type metadata accessor for PMCredentialPickerViewController);
  v13 = a2;
  *v12 = sub_21CB82674();
  v12[1] = v14;
  v15 = sub_21CB816C4();
  v16 = [v15 appleIDAuthorizationRequest];

  if (v16)
  {
    v17 = v10;
    sub_21CB81804();
    v25 = sub_21CB817D4();
    (*(v6 + 8))(v9, v26);
    v18 = sub_21CB816C4();
    v19 = [v18 teamIdentifier];

    if (!v19)
    {
      sub_21CB855C4();
      v19 = sub_21CB85584();
    }

    v20 = sub_21CB816C4();
    v21 = [v20 bundleIdentifier];

    if (!v21)
    {
      sub_21CB855C4();
      v21 = sub_21CB85584();
    }

    v22 = objc_allocWithZone(MEMORY[0x277CF0378]);
    v23 = sub_21CB85584();

    v24 = [v22 initWithAppName:v23 teamIdentifier:v19 bundleIdentifier:v21 authorizationRequest:v16];

    (*(v11 + 8))(a1, v17);
  }

  else
  {
    (*(v11 + 8))(a1, v10);

    v24 = 0;
  }

  *(v28 + *(v27 + 20)) = v24;
}

void sub_21C97C040()
{
  sub_21CB81884();
  if (v0 <= 0x3F)
  {
    sub_21C97E3F8(319, &qword_27CDF2C50, sub_21C97C0F8);
    if (v1 <= 0x3F)
    {
      sub_21C97C144();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21C97C0F8()
{
  result = qword_27CDF44E0;
  if (!qword_27CDF44E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF44E0);
  }

  return result;
}

void sub_21C97C144()
{
  if (!qword_27CDF2C60)
  {
    type metadata accessor for PMCredentialPickerViewController(255);
    sub_21C97E44C(&unk_27CDF2C30, type metadata accessor for PMCredentialPickerViewController);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF2C60);
    }
  }
}

double sub_21C97C1F4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB817C4();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81744();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB81A04();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_21CB817E4();
  v15 = *(v35 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v35);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v34 - v21;
  v23 = sub_21CB816A4();
  sub_21CB81874();
  sub_21CB81804();
  sub_21CB816E4();
  v38 = v10;
  sub_21CB81754();
  sub_21C97C62C();
  v41 = v6;
  sub_21CB817F4();
  swift_unknownObjectRelease();
  if (v23 >> 62)
  {
    v24 = sub_21CB85FA4();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = sub_21CB81704();
  v26 = *(v1 + *(type metadata accessor for PMCredentialPickerHeaderView(0) + 20));
  v27 = v26;
  v28 = sub_21CB81724() & (v24 > 1);
  sub_21C716934(v22, a1, &qword_27CDF4600, &qword_21CBB5D00);
  v29 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
  (*(v15 + 32))(a1 + v29[5], v18, v35);
  (*(v36 + 32))(a1 + v29[6], v14, v37);
  (*(v39 + 32))(a1 + v29[7], v38, v40);
  (*(v42 + 32))(a1 + v29[8], v41, v43);
  *(a1 + v29[9]) = v24;
  *(a1 + v29[10]) = v25 & 1;
  *(a1 + v29[11]) = v26;
  *(a1 + v29[12]) = v28;
  v30 = v29[13];
  *(a1 + v30) = swift_getKeyPath();
  v31 = a1 + v29[14];
  v44 = 0;
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  sub_21CB84D44();
  v32 = v47;
  result = *&v46;
  *v31 = v46;
  *(v31 + 16) = v32;
  return result;
}

uint64_t sub_21C97C62C()
{
  v1 = sub_21CB816A4();
  if (v1 >> 62)
  {
    goto LABEL_7;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v2)
  {
    do
    {
      v3 = sub_21CB816A4();
      v0 = *(v0 + *(type metadata accessor for PMCredentialPickerHeaderView(0) + 24) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      result = v10;
      if ((v3 & 0xC000000000000001) != 0)
      {
        goto LABEL_13;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v10 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      __break(1u);
LABEL_7:
      v5 = sub_21CB85FA4();
    }

    while (v5);
  }

  v6 = sub_21CB816C4();
  v7 = [v6 loginChoices];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF89E0, &qword_21CBB5D88);
  v3 = sub_21CB85824();

  v8 = *(v0 + *(type metadata accessor for PMCredentialPickerHeaderView(0) + 24) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = v10;
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_13:
    v9 = MEMORY[0x21CF15BD0](result, v3);
    goto LABEL_12;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
  }

  else if (v10 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    v9 = *(v3 + 8 * result + 32);
    swift_unknownObjectRetain();
LABEL_12:

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_21C97C840@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
  v4 = (v3 - 8);
  v55 = *(v3 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for PMOsloHeaderContentView(0);
  v15 = (v14 - 8);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C97CC48(v13);
  sub_21C97CF54(v9);
  v19 = v1 + v4[9];
  v51 = sub_21CB81734();
  v21 = v20;
  v22 = v4[10];
  v56 = *(v2 + v4[13]);
  v23 = sub_21CB817B4();
  v25 = v24;
  v26 = sub_21CB813C4();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  v27 = v15[7];
  v28 = type metadata accessor for PMOsloBadge(0);
  (*(*(v28 - 8) + 56))(&v18[v27], 1, 1, v28);
  v29 = v15[9];
  v30 = &v18[v15[8]];
  v31 = &v18[v29];
  sub_21C7D3344(v13, v18, &qword_27CDECC98, &unk_21CBCB9B0);
  sub_21C7D3344(v9, &v18[v27], &unk_27CDF2CA0, &unk_21CBA5520);
  *v30 = v51;
  v30[1] = v21;
  *v31 = v23;
  v31[1] = v25;
  LOBYTE(v31) = sub_21CB83D04();
  sub_21C97DA6C();
  sub_21CB81F24();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v52;
  sub_21C97E4B8(v18, v52, type metadata accessor for PMOsloHeaderContentView);
  v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2CB0, &qword_21CBA5530) + 36);
  v42 = v40;
  *v41 = v31;
  *(v41 + 8) = v33;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v39;
  *(v41 + 40) = 0;
  sub_21C816C58(v18);
  v43 = v2;
  v44 = v53;
  sub_21C97E4B8(v43, v53, type metadata accessor for PMCredentialPickerHeaderContentView);
  v45 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v46 = swift_allocObject();
  sub_21C97E520(v44, v46 + v45);
  v47 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2CB8, &qword_21CBB5E28) + 36));
  v48 = v47 + *(sub_21CB824F4() + 20);
  result = sub_21CB858C4();
  *v47 = &unk_21CBB5E20;
  v47[1] = v46;
  return result;
}

uint64_t sub_21C97CC48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_21CB81864();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  sub_21C97E650(v2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21C6EA794(v7, &qword_27CDF4600, &qword_21CBB5D00);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    v16 = *MEMORY[0x277CBA810];
    v17 = sub_21CB81824();
    (*(*(v17 - 8) + 104))(v12, v16, v17);
    (*(v9 + 104))(v12, *MEMORY[0x277CBA818], v8);
    sub_21C97E44C(&qword_27CDF2CD8, MEMORY[0x277CBA830]);
    LOBYTE(v16) = sub_21CB85574();
    v18 = *(v9 + 8);
    v18(v12, v8);
    if ((v16 & 1) == 0)
    {
      (*(v9 + 16))(v12, v15, v8);
      sub_21CB813B4();
      v18(v15, v8);
      v19 = 0;
      goto LABEL_7;
    }

    v18(v15, v8);
  }

  v19 = 1;
LABEL_7:
  v20 = sub_21CB813C4();
  return (*(*(v20 - 8) + 56))(a1, v19, 1, v20);
}

uint64_t sub_21C97CF54@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v2 = sub_21CB817E4();
  v86 = *(v2 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v2);
  v85 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81864();
  v89 = *(v5 - 8);
  v6 = *(v89 + 8);
  MEMORY[0x28223BE20](v5);
  v83 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2CD0, &unk_21CBB5E40);
  v8 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v84 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v78 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v78 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v78 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v78 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CA0, &unk_21CBA5520);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v78 - v33;
  v35 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
  v36 = *(v35 + 48);
  v90 = v1;
  if ((*(v1 + v36) & 1) == 0)
  {
    v80 = v31;
    v81 = v35;
    v79 = v2;
    v82 = v34;
    sub_21C97E650(v90, v27);
    v42 = v89;
    v43 = *(v89 + 6);
    if (v43(v27, 1, v5) == 1)
    {
      goto LABEL_7;
    }

    sub_21C97E650(v27, v24);
    v44 = v42[11](v24, v5);
    v78 = v21;
    v45 = v43;
    v46 = v5;
    v47 = v44;
    v48 = *MEMORY[0x277CBA818];
    v42[1](v24, v46);
    v49 = v47 == v48;
    v5 = v46;
    v43 = v45;
    v21 = v78;
    if (!v49)
    {
LABEL_7:
      v89 = v27;
      sub_21C97E650(v27, v21);
      sub_21CB81834();
      (v42[7])(v18, 0, 1, v5);
      v50 = *(v88 + 48);
      sub_21C97E650(v18, v10);
      sub_21C97E650(v21, &v10[v50]);
      if (v43(v10, 1, v5) == 1)
      {
        sub_21C6EA794(v18, &qword_27CDF4600, &qword_21CBB5D00);
        sub_21C6EA794(v21, &qword_27CDF4600, &qword_21CBB5D00);
        if (v43(&v10[v50], 1, v5) == 1)
        {
          sub_21C6EA794(v10, &qword_27CDF4600, &qword_21CBB5D00);
          v27 = v89;
          goto LABEL_19;
        }

        goto LABEL_12;
      }

      v51 = v87;
      sub_21C97E650(v10, v87);
      v88 = v43;
      if (v43(&v10[v50], 1, v5) == 1)
      {
        sub_21C6EA794(v18, &qword_27CDF4600, &qword_21CBB5D00);
        sub_21C6EA794(v21, &qword_27CDF4600, &qword_21CBB5D00);
        v42[1](v51, v5);
        v43 = v88;
LABEL_12:
        sub_21C6EA794(v10, &qword_27CDF2CD0, &unk_21CBB5E40);
        v27 = v89;
        goto LABEL_13;
      }

      v59 = v83;
      (v42[4])(v83, &v10[v50], v5);
      sub_21C97E44C(&qword_27CDF2CD8, MEMORY[0x277CBA830]);
      LODWORD(v78) = sub_21CB85574();
      v60 = v42[1];
      v60(v59, v5);
      sub_21C6EA794(v18, &qword_27CDF4600, &qword_21CBB5D00);
      sub_21C6EA794(v21, &qword_27CDF4600, &qword_21CBB5D00);
      v60(v87, v5);
      sub_21C6EA794(v10, &qword_27CDF4600, &qword_21CBB5D00);
      v43 = v88;
      v27 = v89;
      if ((v78 & 1) == 0)
      {
LABEL_13:
        v52 = v43(v27, 1, v5);
        v53 = v82;
        if (v52 != 1)
        {
          v54 = v84;
          sub_21C97E650(v27, v84);
          v55 = v42[11](v54, v5);
          if (v55 == *MEMORY[0x277CBA7F8] || (v56 = v55, v55 == *MEMORY[0x277CBA828]))
          {
            v42[1](v54, v5);
          }

          else
          {
            v57 = *MEMORY[0x277CBA820];
            v42[1](v54, v5);
            if (v56 != v57)
            {
              v58 = type metadata accessor for PMOsloBadge(0);
              (*(*(v58 - 8) + 56))(v53, 1, 1, v58);
              sub_21C6EA794(v27, &qword_27CDF4600, &qword_21CBB5D00);
              return sub_21C716934(v53, v91, &unk_27CDF2CA0, &unk_21CBA5520);
            }
          }
        }

        sub_21C6EA794(v27, &qword_27CDF4600, &qword_21CBB5D00);
        v76 = type metadata accessor for PMOsloBadge(0);
        (*(*(v76 - 8) + 56))(v53, 1, 1, v76);
        return sub_21C716934(v53, v91, &unk_27CDF2CA0, &unk_21CBA5520);
      }
    }

LABEL_19:
    sub_21C6EA794(v27, &qword_27CDF4600, &qword_21CBB5D00);
    v61 = v81;
    v63 = v85;
    v62 = v86;
    v64 = v79;
    (*(v86 + 16))(v85, v90 + *(v81 + 20), v79);
    v65 = (*(v62 + 88))(v63, v64);
    if (v65 == *MEMORY[0x277CBA7F0])
    {
      (*(v62 + 8))(v63, v64);
      v66 = (v90 + *(v61 + 56));
      v67 = *(v66 + 2);
      v94 = *v66;
      v95 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
      sub_21CB84D54();
      v68 = v93;
      v53 = v82;
      v69 = v80;
      if (!v93)
      {
        v77 = type metadata accessor for PMOsloBadge(0);
        (*(*(v77 - 8) + 56))(v69, 1, 1, v77);
        goto LABEL_29;
      }

      *v80 = v92;
      *(v69 + 8) = v68;
      v70 = *MEMORY[0x277CBA880];
      v71 = sub_21CB81A04();
      (*(*(v71 - 8) + 104))(v69, v70, v71);
    }

    else
    {
      v53 = v82;
      v69 = v80;
      if (v65 != *MEMORY[0x277CBA7E8])
      {
        v75 = type metadata accessor for PMOsloBadge(0);
        (*(*(v75 - 8) + 56))(v69, 1, 1, v75);
        (*(v62 + 8))(v63, v64);
        goto LABEL_29;
      }

      (*(v62 + 8))(v63, v64);
      v72 = *(v81 + 24);
      v73 = sub_21CB81A04();
      (*(*(v73 - 8) + 16))(v69, v90 + v72, v73);
    }

    v74 = type metadata accessor for PMOsloBadge(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v74 - 8) + 56))(v69, 0, 1, v74);
LABEL_29:
    sub_21C716934(v69, v53, &unk_27CDF2CA0, &unk_21CBA5520);
    return sub_21C716934(v53, v91, &unk_27CDF2CA0, &unk_21CBA5520);
  }

  v37 = type metadata accessor for PMOsloBadge(0);
  v38 = *(*(v37 - 8) + 56);
  v39 = v37;
  v40 = v91;

  return v38(v40, 1, 1, v39);
}

double sub_21C97DA6C()
{
  v1 = v0;
  v2 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
  v3 = v0 + v2[7];
  sub_21CB81734();
  v5 = v4;
  v6 = v2[8];
  v10 = *(v1 + v2[11]);
  sub_21CB817B4();
  v8 = v7;
  if (v5)
  {
  }

  else if (!v7)
  {
    return 0.0;
  }

  if (*(v1 + v2[9]) >= 2 || *(v1 + v2[10]) == 1)
  {

    return 16.0;
  }

  if (v8)
  {

    return 0.0;
  }

  return 8.0;
}

uint64_t sub_21C97DB48(uint64_t a1)
{
  v1[26] = a1;
  v2 = sub_21CB817E4();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();
  sub_21CB858B4();
  v1[30] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v1[31] = v6;
  v1[32] = v5;

  return MEMORY[0x2822009F8](sub_21C97DC3C, v6, v5);
}

uint64_t sub_21C97DC3C()
{
  if (PMOnboardingShouldShowIconBadge())
  {
    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
    *(v0 + 264) = v5;
    (*(v2 + 16))(v1, v4 + *(v5 + 20), v3);
    if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277CBA7F0])
    {
      v6 = *(v0 + 232);
      v7 = *(v0 + 208);
      (*(*(v0 + 224) + 96))(v6, *(v0 + 216));
      v9 = *v6;
      v8 = v6[1];
      v10 = *(v7 + *(v5 + 52));
      if (qword_27CDEA4C0 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v11 = sub_21C81C2FC(v10, *(v0 + 200));
      *(v0 + 272) = v11;

      if (v11)
      {
        v12 = sub_21CB85584();
        *(v0 + 280) = v12;

        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 168;
        *(v0 + 24) = sub_21C97DF40;
        v13 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED470, &qword_21CBA6AB8);
        *(v0 + 80) = MEMORY[0x277D85DD0];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_21C82D154;
        *(v0 + 104) = &block_descriptor_18;
        *(v0 + 112) = v13;
        [v11 bundleIDForDomain:v12 completionHandler:v0 + 80];

        return MEMORY[0x282200938](v0 + 16);
      }

      v19 = *(v0 + 240);

      v20 = *(v0 + 208) + *(*(v0 + 264) + 56);
      v21 = *(v20 + 16);
      *(v0 + 144) = *v20;
      *(v0 + 160) = v21;
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
      sub_21CB84D64();
    }

    else
    {
      v16 = *(v0 + 232);
      v15 = *(v0 + 240);
      v17 = *(v0 + 216);
      v18 = *(v0 + 224);

      (*(v18 + 8))(v16, v17);
    }
  }

  else
  {
    v14 = *(v0 + 240);
  }

  v22 = *(v0 + 232);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_21C97DF40()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21C97E048, v2, v1);
}

uint64_t sub_21C97E048()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 240);

  v9 = *(v0 + 168);

  v4 = *(v0 + 208) + *(*(v0 + 264) + 56);
  v5 = *(v4 + 16);
  *(v0 + 144) = *v4;
  *(v0 + 160) = v5;
  *(v0 + 184) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF2CC0, &unk_21CBB5E30);
  sub_21CB84D64();
  v6 = *(v0 + 232);

  v7 = *(v0 + 8);

  return v7();
}

id sub_21C97E120(void *a1, id a2)
{
  v2 = a2;
  if (a1)
  {
    if (a2)
    {
      v3 = a1;
      v4 = [objc_msgSend(v2 loginRowDataForLoginChoice_];
      swift_unknownObjectRelease();
      v2 = sub_21CB855C4();

LABEL_6:
    }
  }

  else if (a2)
  {
    v3 = [objc_msgSend(a2 loginRowData)];
    swift_unknownObjectRelease();
    v2 = sub_21CB855C4();
    goto LABEL_6;
  }

  return v2;
}

void sub_21C97E23C()
{
  sub_21C97E3F8(319, &qword_27CDF2C78, MEMORY[0x277CBA830]);
  if (v0 <= 0x3F)
  {
    sub_21CB817E4();
    if (v1 <= 0x3F)
    {
      sub_21CB81A04();
      if (v2 <= 0x3F)
      {
        sub_21CB81744();
        if (v3 <= 0x3F)
        {
          sub_21CB817C4();
          if (v4 <= 0x3F)
          {
            sub_21C97E3F8(319, &qword_27CDF2C50, sub_21C97C0F8);
            if (v5 <= 0x3F)
            {
              sub_21C71ED34(319, &unk_27CDF2C80, &qword_27CDEB9F0, &unk_21CBA5AC0, type metadata accessor for PMDependency);
              if (v6 <= 0x3F)
              {
                sub_21C71ED34(319, &qword_27CDF2C90, &unk_27CDED260, &qword_21CBA1C60, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C97E3F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21C97E44C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C97E4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C97E520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMCredentialPickerHeaderContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C97E584()
{
  v2 = *(type metadata accessor for PMCredentialPickerHeaderContentView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21C702EFC;

  return sub_21C97DB48(v0 + v3);
}

uint64_t sub_21C97E650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4600, &qword_21CBB5D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C97E6C0()
{
  result = qword_27CDF2CE0;
  if (!qword_27CDF2CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2CB8, &qword_21CBB5E28);
    sub_21C816E04();
    sub_21C97E44C(&qword_27CDEA598, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2CE0);
  }

  return result;
}

uint64_t sub_21C97E780()
{
  v0 = type metadata accessor for PMSharingGroup();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v8 = *&v7[*(v1 + 32)];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 32);
    while (1)
    {
      v11 = *v10;
      v12 = v10[2];
      v68 = v10[1];
      v69 = v12;
      v67 = v11;
      v13 = v10[3];
      v14 = v10[4];
      v15 = v10[6];
      v72 = v10[5];
      v73 = v15;
      v70 = v13;
      v71 = v14;
      v16 = *v10;
      v17 = v10[2];
      v33 = v10[1];
      v34 = v17;
      v32 = v16;
      v18 = v10[3];
      v19 = v10[4];
      v20 = v10[6];
      v37 = v10[5];
      v38 = v20;
      v35 = v18;
      v36 = v19;
      if (v72)
      {
        break;
      }

      v10 += 7;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    sub_21C7A33F0(&v67, &v60);
    v57 = v36;
    v58 = v37;
    v59 = v38;
    v53 = v32;
    v54 = v33;
    v55 = v34;
    v56 = v35;
    v21 = *(&v34 + 1);
  }

  else
  {
LABEL_5:
    v21 = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v53 = 0u;
  }

  sub_21C979EE8(v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CB25D9C(&v60);
  sub_21C979EE8(v4);
  v50 = v53;
  v51 = v54;
  v52 = v55;
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v49 = v59;
  if (!v21)
  {
    if (!*(&v62 + 1))
    {
      v32 = v53;
      v33 = v54;
      v34 = v55;
      v35 = v56;
      v36 = v57;
      v37 = v58;
      v38 = v59;
      sub_21C6EA794(&v32, &qword_27CDECC50, &unk_21CBB52A0);
      v22 = 1;
      return v22 & 1;
    }

    goto LABEL_11;
  }

  if (!*(&v62 + 1))
  {
LABEL_11:
    v32 = v53;
    v33 = v54;
    *&v34 = v55;
    *(&v34 + 1) = v21;
    v35 = v56;
    v36 = v57;
    v37 = v58;
    v38 = v59;
    v39 = v60;
    v40 = v61;
    v41 = v62;
    v44 = v65;
    v45 = v66;
    v42 = v63;
    v43 = v64;
    sub_21C6EA794(&v32, &qword_27CDF2DB0, &unk_21CBB6428);
    v22 = 0;
    return v22 & 1;
  }

  v24[0] = v60;
  v24[1] = v61;
  v24[2] = v62;
  v24[3] = v63;
  v24[4] = v64;
  v24[5] = v65;
  v24[6] = v66;
  v36 = v64;
  v37 = v65;
  v38 = v66;
  v34 = v62;
  v35 = v63;
  v32 = v60;
  v33 = v61;
  v67 = v53;
  v68 = v54;
  v72 = v58;
  v73 = v59;
  v70 = v56;
  v71 = v57;
  *&v69 = v55;
  *(&v69 + 1) = v21;
  sub_21C983094(&v53, v25);
  sub_21C983094(&v60, v25);
  v22 = sub_21C9DCA4C(&v67, &v32);
  sub_21C6EA794(v24, &qword_27CDECC50, &unk_21CBB52A0);
  sub_21C6EA794(&v60, &qword_27CDECC50, &unk_21CBB52A0);
  sub_21C6EA794(&v53, &qword_27CDECC50, &unk_21CBB52A0);
  v25[0] = v50;
  v25[1] = v51;
  v26 = v52;
  v27 = v21;
  v28 = v46;
  v29 = v47;
  v30 = v48;
  v31 = v49;
  sub_21C6EA794(v25, &qword_27CDECC50, &unk_21CBB52A0);
  return v22 & 1;
}

uint64_t sub_21C97EB48()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C97EBBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21C97EC3C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C97ECC0()
{
  v0 = type metadata accessor for PMSharingGroup();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CB25D9C(&v26);
  sub_21C979EE8(v3);
  v25[2] = v28;
  v25[3] = v29;
  v25[4] = v30;
  v25[5] = v31;
  v25[6] = v32;
  v25[0] = v26;
  v25[1] = v27;
  v4 = *(&v28 + 1);
  if (*(&v28 + 1))
  {
    v24[0] = v26;
    v24[1] = v27;
    v24[2] = v28;
    v24[3] = v29;
    v24[4] = v30;
    v24[5] = v31;
    v24[6] = v32;
    sub_21C7A33F0(v24, &v20);
    v5 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_21CA4F7F8(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_21CA4F7F8((v6 > 1), v7 + 1, 1, v5);
    }

    v19 = v28;
    v8 = v26;
    v17 = v26;
    v18 = v27;
    v22 = v31;
    v23 = v32;
    v20 = v29;
    v21 = v30;
    *(v5 + 2) = v7 + 1;
    v9 = &v5[112 * v7];
    v10 = v18;
    v11 = v19;
    *(v9 + 2) = v8;
    *(v9 + 3) = v10;
    *(v9 + 8) = v11;
    *(v9 + 9) = v4;
    v12 = v20;
    v13 = v21;
    v14 = v23;
    *(v9 + 7) = v22;
    *(v9 + 8) = v14;
    *(v9 + 5) = v12;
    *(v9 + 6) = v13;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  sub_21C6EA794(v25, &qword_27CDECC50, &unk_21CBB52A0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v15 = *&v24[0];
  *&v24[0] = v5;
  sub_21CAE8E18(v15);
  return *&v24[0];
}

uint64_t sub_21C97EF2C(uint64_t a1)
{
  v28 = a1;
  result = sub_21C97ECC0();
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result + 32;
    v27 = *(result + 16);
    v24 = v3 - 1;
    v6 = MEMORY[0x277D84F90];
    v25 = result + 32;
    do
    {
      v26 = v6;
      v7 = (v5 + 112 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= *(v2 + 16))
        {
          __break(1u);
          return result;
        }

        v9 = *v7;
        v10 = v7[2];
        v32 = v7[1];
        v33 = v10;
        v31 = v9;
        v11 = v7[3];
        v12 = v7[4];
        v13 = v7[6];
        v36 = v7[5];
        v37 = v13;
        v34 = v11;
        v35 = v12;
        v4 = v8 + 1;
        v30 = v10;
        MEMORY[0x28223BE20](result);
        v23[2] = &v30;
        sub_21C7A33F0(&v31, &v29);

        v14 = sub_21C8A13AC(sub_21C7AE838, v23, v28);

        if (v14)
        {
          break;
        }

        result = sub_21C7A344C(&v31);
        v7 += 7;
        ++v8;
        if (v27 == v4)
        {
          v6 = v26;
          goto LABEL_15;
        }
      }

      v6 = v26;
      result = swift_isUniquelyReferenced_nonNull_native();
      v38 = v6;
      if ((result & 1) == 0)
      {
        result = sub_21C7B10A0(0, *(v6 + 16) + 1, 1);
        v6 = v38;
      }

      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_21C7B10A0((v15 > 1), v16 + 1, 1);
        v6 = v38;
      }

      *(v6 + 16) = v16 + 1;
      v17 = (v6 + 112 * v16);
      v18 = v31;
      v19 = v33;
      v17[3] = v32;
      v17[4] = v19;
      v17[2] = v18;
      v20 = v34;
      v21 = v35;
      v22 = v37;
      v17[7] = v36;
      v17[8] = v22;
      v17[5] = v20;
      v17[6] = v21;
      v5 = v25;
    }

    while (v24 != v8);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_15:

  return v6;
}

uint64_t sub_21C97F14C(uint64_t a1, uint64_t a2)
{
  v3[51] = a2;
  v3[52] = v2;
  v3[50] = a1;
  v4 = type metadata accessor for PMSharingGroup();
  v3[53] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = sub_21CB858B4();
  v3[56] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v3[57] = v7;
  v3[58] = v6;

  return MEMORY[0x2822009F8](sub_21C97F21C, v7, v6);
}

uint64_t sub_21C97F21C()
{
  v22 = v0;
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v4 = *(v0 + 408);
  v3 = *(v0 + 416);
  v5 = *(v0 + 400);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v6 = *(v1 + *(v2 + 24));

  sub_21C979EE8(v1);
  *(v0 + 384) = v5;
  *(v0 + 392) = v4;
  *(swift_task_alloc() + 16) = v0 + 384;
  sub_21C969088(sub_21C983074, v6, v21);
  *(v0 + 472) = 0;

  v7 = v21[3];
  *(v0 + 48) = v21[2];
  *(v0 + 64) = v7;
  v8 = v21[5];
  *(v0 + 80) = v21[4];
  *(v0 + 96) = v8;
  *(v0 + 112) = v21[6];
  v9 = v21[1];
  *(v0 + 16) = v21[0];
  *(v0 + 32) = v9;
  if (*(v0 + 56))
  {
    v10 = *(v0 + 448);
    v11 = *(v0 + 416);

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = *(v0 + 96);
    *(v0 + 192) = *(v0 + 80);
    *(v0 + 208) = v12;
    *(v0 + 224) = *(v0 + 112);
    v13 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v13;
    v14 = *(v0 + 64);
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 176) = v14;
    sub_21C983094(v0 + 16, v0 + 240);

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 520) = 1;

    sub_21CB81DC4();
    sub_21C6EA794(v0 + 16, &qword_27CDECC50, &unk_21CBB52A0);
    v15 = *(v0 + 432);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 440);
    *(v0 + 480) = sub_21CB858A4();
    v20 = sub_21CB85874();
    *(v0 + 488) = v20;
    *(v0 + 496) = v19;

    return MEMORY[0x2822009F8](sub_21C97F4D4, v20, v19);
  }
}

uint64_t sub_21C97F4D4()
{
  v1 = v0[59];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[50];
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = sub_21CB81DA4();
  v7 = v6;
  v8 = sub_21C94BA9C(v6, v4, v3);

  v10 = *(*v7 + 16);
  if (v10 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_21CB65440(v8, v10);
    v5(v0 + 44, 0);

    v11 = swift_task_alloc();
    v0[63] = v11;
    *v11 = v0;
    v11[1] = sub_21C97F634;
    v12 = v0[52];

    return sub_21C980418();
  }

  return result;
}

uint64_t sub_21C97F634()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 496);
  v6 = *(v2 + 488);
  if (v0)
  {
    v7 = sub_21C97F840;
  }

  else
  {
    v7 = sub_21C97F770;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C97F770()
{
  v1 = v0[60];

  v2 = v0[57];
  v3 = v0[58];

  return MEMORY[0x2822009F8](sub_21C97F7D4, v2, v3);
}

uint64_t sub_21C97F7D4()
{
  v1 = v0[56];

  v2 = v0[54];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21C97F840()
{
  v1 = v0[60];

  v2 = v0[57];
  v3 = v0[58];

  return MEMORY[0x2822009F8](sub_21C97F8A4, v2, v3);
}

uint64_t sub_21C97F8A4()
{
  v1 = v0[56];
  v2 = v0[54];

  v3 = v0[1];
  v4 = v0[64];

  return v3();
}

uint64_t sub_21C97F914(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = v3;
  *(v4 + 153) = a3;
  *(v4 + 56) = a1;
  v5 = sub_21CB85C44();
  *(v4 + 80) = v5;
  v6 = *(v5 - 8);
  *(v4 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  v8 = *(*(type metadata accessor for PMSharingGroup() - 8) + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  sub_21CB858B4();
  *(v4 + 112) = sub_21CB858A4();
  v10 = sub_21CB85874();
  *(v4 + 120) = v10;
  *(v4 + 128) = v9;

  return MEMORY[0x2822009F8](sub_21C97FA3C, v10, v9);
}

uint64_t sub_21C97FA3C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v28 = *(v0 + 64);
  v6 = *(v0 + 56);
  v7 = *(v0 + 153);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  (*(v4 + 16))(v1, v2, v3);
  sub_21C979EE8(v2);
  LOBYTE(v2) = sub_21C9D92A8(v6, v28, v7);
  (*(v4 + 8))(v1, v3);
  if ((v2 & 1) == 0)
  {
    v15 = *(v0 + 112);
    v16 = *(v0 + 72);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 152) = 1;

    sub_21CB81DC4();
    goto LABEL_12;
  }

  v8 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v9 = *(v0 + 48);
  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_10:
    v14 = *(v0 + 112);

LABEL_12:
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);

    v19 = *(v0 + 8);

    return v19();
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *(v9 + v11 + 64) == *(v0 + 56) && *(v9 + v11 + 72) == *(v0 + 64);
    if (v13 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    ++v12;
    v11 += 112;
    if (v10 == v12)
    {
      goto LABEL_10;
    }
  }

  v21 = *(v0 + 72);

  swift_getKeyPath();
  swift_getKeyPath();
  v22 = sub_21CB81DA4();
  v24 = v23;
  v25 = *v23;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((result & 1) == 0)
  {
    result = sub_21CAA1154(v25);
    v25 = result;
    *v24 = result;
  }

  if (v12 >= *(v25 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v25 + v11 + 113) = *(v0 + 153);
    v22(v0 + 16, 0);

    v26 = swift_task_alloc();
    *(v0 + 136) = v26;
    *v26 = v0;
    v26[1] = sub_21C97FDA8;
    v27 = *(v0 + 72);

    return sub_21C980418();
  }

  return result;
}

uint64_t sub_21C97FDA8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_21C97FF58;
  }

  else
  {
    v7 = sub_21C97FEE4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C97FEE4()
{
  v1 = v0[14];

  v3 = v0[12];
  v2 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21C97FF58()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_21C97FFF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

__n128 sub_21C980070@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = v4;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_21C9801C8()
{
  v0 = type metadata accessor for PMSharingGroup();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v7 = &v6[*(v0 + 20)];
  v9 = *v7;
  v8 = *(v7 + 1);

  sub_21C979EE8(v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v9 == v18[0] && v8 == v18[1])
  {

    goto LABEL_8;
  }

  v11 = sub_21CB86344();

  if (v11)
  {
LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v13 = *&v3[*(v0 + 24)];

    sub_21C979EE8(v3);
    v14 = sub_21CB00F0C(v13);

    v15 = sub_21C97ECC0();
    v16 = sub_21CB00F0C(v15);

    LOBYTE(v13) = sub_21C7A261C(v14, v16);

    v12 = v13 ^ 1;
    return v12 & 1;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t sub_21C980418()
{
  v1[7] = v0;
  v2 = sub_21CB85C44();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = *(*(type metadata accessor for PMSharingGroup() - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_21CB858B4();
  v1[14] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v1[15] = v7;
  v1[16] = v6;

  return MEMORY[0x2822009F8](sub_21C980550, v7, v6);
}

uint64_t sub_21C980550()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 168) = 1;

  sub_21CB81DC4();
  v6 = __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_groupManager), *(v4 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_groupManager + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  (*(v3 + 16))(v2, v1, v5);
  sub_21C979EE8(v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  *(v0 + 136) = v8;
  v9 = sub_21C97ECC0();
  *(v0 + 144) = v9;
  v10 = *v6;
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  *v11 = v0;
  v11[1] = sub_21C98073C;
  v12 = *(v0 + 104);
  v13 = *(v0 + 80);

  return sub_21C9D6BA8(v12, v13, v7, v8, v9);
}

uint64_t sub_21C98073C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = v2[18];
  v6 = v2[17];
  (*(v2[9] + 8))(v2[10], v2[8]);

  v7 = v2[16];
  v8 = v2[15];
  if (v0)
  {
    v9 = sub_21C980A44;
  }

  else
  {
    v9 = sub_21C980904;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21C980904()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C94B4A8(v2, v3);

  sub_21CB81DC4();
  sub_21C981DE8();
  sub_21C979EE8(v2);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 172) = 0;

  sub_21CB81DC4();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21C980A44()
{
  v26 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);

  *(v0 + 32) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 40);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v5 = sub_21CB81C84();
    __swift_project_value_buffer(v5, qword_27CE186E0);
    v6 = v4;
    v7 = sub_21CB81C64();
    v8 = sub_21CB85AF4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136446210;
      v11 = [v6 safari_privacyPreservingDescription];
      v12 = sub_21CB855C4();
      v14 = v13;

      v15 = sub_21C98E004(v12, v14, &v25);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_21C6E5000, v7, v8, "Failed to save changes to a shared passwords group. %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x21CF16D90](v10, -1, -1);
      MEMORY[0x21CF16D90](v9, -1, -1);
    }

    v16 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 170) = 1;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 48) = v6;

    v6;
    sub_21CB81DC4();
    sub_21C981DE8();
    swift_willThrow();

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 171) = 0;

    sub_21CB81DC4();
  }

  else
  {
    v17 = *(v0 + 56);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 169) = 0;

    sub_21CB81DC4();
    v18 = *(v0 + 160);
  }

  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_21C980DEC()
{
  v1[5] = v0;
  v2 = sub_21CB85C44();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = *(*(type metadata accessor for PMSharingGroup() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_21CB858B4();
  v1[10] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v1[11] = v7;
  v1[12] = v6;

  return MEMORY[0x2822009F8](sub_21C980F0C, v7, v6);
}

uint64_t sub_21C980F0C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 120) = 1;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  (*(v4 + 16))(v1, v2, v3);
  sub_21C979EE8(v2);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_21C98108C;
  v7 = *(v0 + 64);

  return (sub_21C9DA3BC)(v7);
}

uint64_t sub_21C98108C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {
    v7 = sub_21C9812E4;
  }

  else
  {
    v7 = sub_21C981214;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C981214()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 124) = 0;

  sub_21CB81DC4();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21C9812E4()
{
  v24 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);

  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 24);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v5 = sub_21CB81C84();
    __swift_project_value_buffer(v5, qword_27CE186E0);
    v6 = v4;
    v7 = sub_21CB81C64();
    v8 = sub_21CB85AF4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      v11 = [v6 safari_privacyPreservingDescription];
      v12 = sub_21CB855C4();
      v14 = v13;

      v15 = sub_21C98E004(v12, v14, &v23);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_21C6E5000, v7, v8, "Failed to leave a shared passwords group. %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x21CF16D90](v10, -1, -1);
      MEMORY[0x21CF16D90](v9, -1, -1);
    }

    v16 = *(v0 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 122) = 1;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 32) = v6;

    v6;
    sub_21CB81DC4();
    swift_willThrow();

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 123) = 0;

    sub_21CB81DC4();
  }

  else
  {
    v17 = *(v0 + 40);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 121) = 0;

    sub_21CB81DC4();
    v18 = *(v0 + 112);
  }

  v20 = *(v0 + 64);
  v19 = *(v0 + 72);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_21C98165C()
{
  v1[5] = v0;
  v2 = sub_21CB85C44();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = *(*(type metadata accessor for PMSharingGroup() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  sub_21CB858B4();
  v1[10] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v1[11] = v7;
  v1[12] = v6;

  return MEMORY[0x2822009F8](sub_21C98177C, v7, v6);
}

uint64_t sub_21C98177C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 120) = 1;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  (*(v4 + 16))(v1, v2, v3);
  sub_21C979EE8(v2);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_21C9818FC;
  v7 = *(v0 + 64);

  return (sub_21C9DACD0)(v7);
}

uint64_t sub_21C9818FC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {
    v7 = sub_21C981A84;
  }

  else
  {
    v7 = sub_21C983104;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C981A84()
{
  v24 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);

  *(v0 + 16) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C82A2F0();
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 24);
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v5 = sub_21CB81C84();
    __swift_project_value_buffer(v5, qword_27CE186E0);
    v6 = v4;
    v7 = sub_21CB81C64();
    v8 = sub_21CB85AF4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      v11 = [v6 safari_privacyPreservingDescription];
      v12 = sub_21CB855C4();
      v14 = v13;

      v15 = sub_21C98E004(v12, v14, &v23);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_21C6E5000, v7, v8, "Failed to delete a shared passwords group. %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x21CF16D90](v10, -1, -1);
      MEMORY[0x21CF16D90](v9, -1, -1);
    }

    v16 = *(v0 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 122) = 1;

    sub_21CB81DC4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 32) = v6;

    v6;
    sub_21CB81DC4();
    swift_willThrow();

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 123) = 0;

    sub_21CB81DC4();
  }

  else
  {
    v17 = *(v0 + 40);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 121) = 0;

    sub_21CB81DC4();
    v18 = *(v0 + 112);
  }

  v20 = *(v0 + 64);
  v19 = *(v0 + 72);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_21C981DE8()
{
  v0 = type metadata accessor for PMSharingGroup();
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v32[-v6];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v8 = &v7[*(v1 + 28)];
  v10 = *v8;
  v9 = v8[1];

  sub_21C979EE8(v7);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v33 = v10;
  *(&v33 + 1) = v9;

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v11 = *&v4[*(v1 + 32)];

  result = sub_21C979EE8(v4);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    do
    {
      v16 = *(v11 + 16);
      v17 = (v11 + 32 + 112 * v14);
      v18 = v14;
      while (1)
      {
        if (v18 >= v16)
        {
          __break(1u);
          return result;
        }

        v19 = v17[3];
        v20 = v17[4];
        v21 = v17[6];
        v38 = v17[5];
        v22 = v17[1];
        v23 = v17[2];
        v33 = *v17;
        v34 = v22;
        v39 = v21;
        v36 = v19;
        v37 = v20;
        v35 = v23;
        v14 = v18 + 1;
        if (BYTE1(v38) != 2)
        {
          break;
        }

        v17 += 7;
        ++v18;
        if (v13 == v14)
        {
          goto LABEL_15;
        }
      }

      sub_21C7A33F0(&v33, v32);
      result = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      if ((result & 1) == 0)
      {
        result = sub_21C7B10A0(0, *(v15 + 16) + 1, 1);
        v15 = v40;
      }

      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_21C7B10A0((v24 > 1), v25 + 1, 1);
        v15 = v40;
      }

      *(v15 + 16) = v25 + 1;
      v26 = (v15 + 112 * v25);
      v27 = v33;
      v28 = v35;
      v26[3] = v34;
      v26[4] = v28;
      v26[2] = v27;
      v29 = v36;
      v30 = v37;
      v31 = v39;
      v26[7] = v38;
      v26[8] = v31;
      v26[5] = v29;
      v26[6] = v30;
    }

    while (v13 - 1 != v18);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_15:

  swift_getKeyPath();
  swift_getKeyPath();
  *&v33 = v15;

  return sub_21CB81DC4();
}

uint64_t sub_21C982108(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21C982184(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PMSharingGroup();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21C94B4A8(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C94B4A8(v10, v7);

  sub_21CB81DC4();
  sub_21C981DE8();
  return sub_21C979EE8(v10);
}

uint64_t sub_21C982284()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C982348(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_21CB81DC4();
}

uint64_t sub_21C9823C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21C97ECC0();
  v10 = *(v9 + 16);
  if (v10)
  {
    v44 = v6;
    v45 = a1;
    v46 = a2;
    v47 = v2;
    *&v58 = MEMORY[0x277D84F90];
    sub_21C7B11CC(0, v10, 0);
    v11 = v58;
    v12 = (v9 + 72);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      *&v58 = v11;
      v15 = *(v11 + 16);
      v16 = *(v11 + 24);

      if (v15 >= v16 >> 1)
      {
        sub_21C7B11CC((v16 > 1), v15 + 1, 1);
        v11 = v58;
      }

      *(v11 + 16) = v15 + 1;
      v17 = v11 + 16 * v15;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v12 += 14;
      --v10;
    }

    while (v10);

    a2 = v46;
    v3 = v47;
    v6 = v44;
    a1 = v45;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  *&v58 = a1;
  *(&v58 + 1) = a2;
  MEMORY[0x28223BE20](v18);
  *(&v43 - 2) = &v58;
  v19 = sub_21C8A13AC(sub_21C983108, (&v43 - 4), v11);

  if ((v19 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v48;
    sub_21CB81DB4();

    v22 = *(v21 + *(v6 + 24));

    v23 = sub_21C979EE8(v21);
    *&v50[0] = a1;
    *(&v50[0] + 1) = a2;
    MEMORY[0x28223BE20](v23);
    *(&v43 - 2) = v50;
    sub_21C969088(sub_21C983124, v22, &v51);

    v62 = v55;
    v63 = v56;
    v64 = v57;
    v60 = v53;
    v61 = v54;
    v58 = v51;
    v59 = v52;
    v69 = v51;
    v70 = v52;
    v24 = *(&v53 + 1);
    v71 = v53;
    v67 = v56;
    v68 = v57;
    v65 = v54;
    v66 = v55;
    if (*(&v53 + 1))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v50[4] = v62;
      v50[5] = v63;
      v50[6] = v64;
      v50[0] = v58;
      v50[1] = v59;
      v50[2] = v60;
      v50[3] = v61;
      sub_21C7A33F0(v50, v49);
      v25 = sub_21CB81DA4();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v27 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_21CA4F7F8(0, *(v28 + 2) + 1, 1, v28);
        *v27 = v28;
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_21CA4F7F8((v30 > 1), v31 + 1, 1, v28);
        *v27 = v28;
      }

      *(v28 + 2) = v31 + 1;
      v32 = &v28[112 * v31];
      v33 = v70;
      v34 = v71;
      *(v32 + 2) = v69;
      *(v32 + 3) = v33;
      *(v32 + 8) = v34;
      *(v32 + 9) = v24;
      v35 = v65;
      v36 = v66;
      v37 = v68;
      *(v32 + 7) = v67;
      *(v32 + 8) = v37;
      *(v32 + 5) = v35;
      *(v32 + 6) = v36;
      v25(v49, 0);

      return sub_21C6EA794(&v58, &qword_27CDECC50, &unk_21CBB52A0);
    }

    else
    {
      v38 = __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_membersProvider), *(v3 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_membersProvider + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB028, &unk_21CBB3650);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21CBA0690;
      *(inited + 32) = a1;
      *(inited + 40) = a2;
      v40 = *v38;

      v41 = sub_21CA0EBC8(inited, 1u);
      swift_setDeallocating();
      sub_21C953B50(inited + 32);
      swift_getKeyPath();
      swift_getKeyPath();
      v42 = sub_21CB81DA4();
      sub_21CAE8E18(v41);
      v42(&v51, 0);
    }
  }

  return result;
}

uint64_t sub_21C9828BC()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__group;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DA8, &unk_21CBB5EC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_membersProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel_groupManager));
  v3 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__groupName;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__nonOwnerGroupMembers;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EB0, &unk_21CBB2AA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__isProcessingChanges;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__removeMemberConfirmationAlertPresented, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__removeMemberMightStillHaveAccessAlertPresented, v8);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__memberToRemove;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2AB8, &unk_21CBB5ED0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToUpdateGroupAlertPresented, v8);
  v12 = OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__updateGroupFailureError;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E98, &unk_21CBB2A80);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__leaveGroupAlertPresented, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToLeaveGroupAlertPresented, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToMoveAccountsOnLeaveAlertPresented, v8);
  v14(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__leaveGroupFailureError, v13);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__deleteGroupAlertPresented, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToDeleteGroupAlertPresented, v8);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__failedToMoveAccountsOnDeleteAlertPresented, v8);
  v14(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__deleteGroupFailureError, v13);
  v9(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMEditGroupViewModel__cannotChangePermissionAlertPresented, v8);
  return v0;
}

uint64_t sub_21C982C34()
{
  sub_21C9828BC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMEditGroupViewModel()
{
  result = qword_27CDF2D88;
  if (!qword_27CDF2D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C982CE0()
{
  sub_21C982F20();
  if (v1 <= 0x3F)
  {
    v13 = *(v0 - 8) + 64;
    sub_21C6F039C(319, &qword_27CDEAEC8);
    if (v3 <= 0x3F)
    {
      v14 = *(v2 - 8) + 64;
      sub_21C6EA5CC(319, &qword_27CDF2118, &qword_27CDF1EB8, &qword_21CBB5E80);
      if (v5 <= 0x3F)
      {
        v15 = *(v4 - 8) + 64;
        sub_21C6F039C(319, &qword_27CDEAEE0);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_21C6EA5CC(319, &qword_27CDF2DA0, &qword_27CDECC50, &unk_21CBB52A0);
          if (v10 <= 0x3F)
          {
            v16 = *(v9 - 8) + 64;
            sub_21C6EA5CC(319, &qword_27CDF2128, &qword_27CDF1EC0, &qword_21CBB2AB0);
            if (v12 <= 0x3F)
            {
              v17 = *(v11 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_21C982F20()
{
  if (!qword_27CDF2D98)
  {
    type metadata accessor for PMSharingGroup();
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF2D98);
    }
  }
}

uint64_t sub_21C982F78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C982FF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C983094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC50, &unk_21CBB52A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C983140@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel);
  sub_21CB810D4();

  *a1 = *(v1 + 16);
}

uint64_t sub_21C9831F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel);
  sub_21CB810D4();

  *a2 = *(v3 + 16);
}

uint64_t sub_21C9832A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel);
  sub_21CB810C4();
}

uint64_t sub_21C98336C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI27PMAppDetailsWindowViewModel__safariViewControllerURL;
  swift_beginAccess();
  return sub_21C984954(v5 + v3, a1);
}

uint64_t sub_21C983434@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI27PMAppDetailsWindowViewModel__safariViewControllerURL;
  swift_beginAccess();
  return sub_21C984954(v3 + v4, a2);
}

uint64_t sub_21C9834FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  sub_21C984954(a1, &v10[-v6]);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel);
  sub_21CB810C4();

  return sub_21C9848EC(v7);
}

uint64_t sub_21C98362C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI27PMAppDetailsWindowViewModel__safariViewControllerURL;
  swift_beginAccess();
  sub_21C9849E0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C983698()
{
  v1 = *(v0 + 2);

  sub_21C9848EC(&v0[OBJC_IVAR____TtC17PasswordManagerUI27PMAppDetailsWindowViewModel__safariViewControllerURL]);
  v2 = OBJC_IVAR____TtC17PasswordManagerUI27PMAppDetailsWindowViewModel___observationRegistrar;
  v3 = sub_21CB81114();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PMAppDetailsWindowView.init(model:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for PMAppDetailsWindowViewModel(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC17PasswordManagerUI27PMAppDetailsWindowViewModel__safariViewControllerURL;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  sub_21CB81104();
  *(v5 + 16) = v1;
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel);

  return sub_21CB850A4();
}

__n128 PMAppDetailsWindowView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DD0, &qword_21CBB6438);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - v5;
  sub_21C983AC8();
  KeyPath = swift_getKeyPath();
  sub_21CB85084();
  v8 = *&v17[0];
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DD8, &qword_21CBB6468) + 36));
  *v9 = KeyPath;
  v9[1] = sub_21C984120;
  v9[2] = v8;
  sub_21CB85094();
  swift_getKeyPath();
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DE0, &qword_21CBB6498) + 36);
  sub_21CB850B4();

  (*(v3 + 8))(v6, v2);
  v11 = swift_getKeyPath();
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DE8, &qword_21CBB64C8) + 36);
  *v12 = v11;
  *(v12 + 8) = 1;
  sub_21CB85214();
  sub_21CB82AC4();
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DF0, &qword_21CBB64D0) + 36);
  v14 = v17[5];
  *(v13 + 64) = v17[4];
  *(v13 + 80) = v14;
  *(v13 + 96) = v17[6];
  v15 = v17[1];
  *v13 = v17[0];
  *(v13 + 16) = v15;
  result = v17[3];
  *(v13 + 32) = v17[2];
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_21C983AC8()
{
  v0 = type metadata accessor for PMWiFiDetailsWindowView();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2E88, &qword_21CBB6668);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = type metadata accessor for PMAppAccountDetailsWindowView();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2DD0, &qword_21CBB6438);
  sub_21CB85084();
  v12 = v20;
  swift_getKeyPath();
  v20 = v12;
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel);
  sub_21CB810D4();

  v13 = *(v12 + 16);

  if (v13 < 0)
  {
    v17 = *(v0 + 20);
    *&v3[v17] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2518, &qword_21CBB40D0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PMWiFiDetailsWindowModel();
    sub_21C984850(&qword_27CDF2E90, type metadata accessor for PMWiFiDetailsWindowModel);

    sub_21CB850A4();
    sub_21C984A50(v3, v7, type metadata accessor for PMWiFiDetailsWindowView);
    swift_storeEnumTagMultiPayload();
    sub_21C984850(&qword_27CDF2E70, type metadata accessor for PMAppAccountDetailsWindowView);
    sub_21C984850(&qword_27CDF2E78, type metadata accessor for PMWiFiDetailsWindowView);
    sub_21CB83494();

    v15 = v3;
    v16 = type metadata accessor for PMWiFiDetailsWindowView;
  }

  else
  {
    v14 = *(v8 + 20);
    *&v11[v14] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2518, &qword_21CBB40D0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PMAppAccountDetailsWindowModel();
    sub_21C984850(&qword_27CDF2520, type metadata accessor for PMAppAccountDetailsWindowModel);

    sub_21CB850A4();
    sub_21C984A50(v11, v7, type metadata accessor for PMAppAccountDetailsWindowView);
    swift_storeEnumTagMultiPayload();
    sub_21C984850(&qword_27CDF2E70, type metadata accessor for PMAppAccountDetailsWindowView);
    sub_21C984850(&qword_27CDF2E78, type metadata accessor for PMWiFiDetailsWindowView);
    sub_21CB83494();

    v15 = v11;
    v16 = type metadata accessor for PMAppAccountDetailsWindowView;
  }

  return sub_21C984AB8(v15, v16);
}

uint64_t sub_21C983F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11[-v6];
  v8 = sub_21CB80BE4();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  swift_getKeyPath();
  v12 = a2;
  v13 = v7;
  v14 = a2;
  sub_21C984850(&qword_27CDF2DC8, type metadata accessor for PMAppDetailsWindowViewModel);
  sub_21CB810C4();

  return sub_21C9848EC(v7);
}

void sub_21C984150()
{
  sub_21C704B88();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21CB81114();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21C984250()
{
  sub_21C9842BC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21C9842BC()
{
  if (!qword_27CDF2E18)
  {
    type metadata accessor for PMAppDetailsWindowViewModel(255);
    v0 = sub_21CB850C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF2E18);
    }
  }
}

uint64_t sub_21C984320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21C98437C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_21C984400()
{
  result = qword_27CDF2E20;
  if (!qword_27CDF2E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2DF0, &qword_21CBB64D0);
    sub_21C98448C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E20);
  }

  return result;
}

unint64_t sub_21C98448C()
{
  result = qword_27CDF2E28;
  if (!qword_27CDF2E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2DE8, &qword_21CBB64C8);
    sub_21C9846E8(&qword_27CDF2E30, &qword_27CDF2E38, &qword_21CBB6618, sub_21C98455C);
    sub_21C984898(&qword_27CDED5C8, qword_27CDED5D0, &unk_21CBA6FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E28);
  }

  return result;
}

unint64_t sub_21C98455C()
{
  result = qword_27CDF2E40;
  if (!qword_27CDF2E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2DE0, &qword_21CBB6498);
    sub_21C984618();
    sub_21C984850(&qword_27CDF00E0, type metadata accessor for PMSafariViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E40);
  }

  return result;
}

unint64_t sub_21C984618()
{
  result = qword_27CDF2E48;
  if (!qword_27CDF2E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2DD8, &qword_21CBB6468);
    sub_21C9846E8(&qword_27CDF2E50, &qword_27CDF2E58, &qword_21CBB6620, sub_21C984764);
    sub_21C984898(&qword_27CDF00D0, &qword_27CDF00D8, &unk_21CBB6630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E48);
  }

  return result;
}

uint64_t sub_21C9846E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C984764()
{
  result = qword_27CDF2E60;
  if (!qword_27CDF2E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2E68, &qword_21CBB6628);
    sub_21C984850(&qword_27CDF2E70, type metadata accessor for PMAppAccountDetailsWindowView);
    sub_21C984850(&qword_27CDF2E78, type metadata accessor for PMWiFiDetailsWindowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E60);
  }

  return result;
}

uint64_t sub_21C984850(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C984898(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21C9848EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C984954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9849E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C984A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C984AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C984B18()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_21C984B7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C984BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C984C40@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2E98, &qword_21CBB67B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - v4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EA0, &qword_21CBB67C0);
  v6 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EA8, &qword_21CBB67C8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v15 = *(v23 + 16);

  if (v15 || (swift_getKeyPath(), swift_getKeyPath(), sub_21CB81DB4(), , , v22 == 1))
  {
    sub_21C984FCC(v1, v5);
    sub_21C987FA0();
    sub_21CB845C4();
    v16 = sub_21C6EA794(v5, &qword_27CDF2E98, &qword_21CBB67B8);
    MEMORY[0x28223BE20](v16);
    *(&v20 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EE0, &qword_21CBB6828);
    sub_21C988198();
    sub_21C6EADEC(&qword_27CDF2ED8, &qword_27CDF2EE0, &qword_21CBB6828);
    sub_21CB84154();
    sub_21C6EA794(v8, &qword_27CDF2EA0, &qword_21CBB67C0);
    v17 = v21;
    (*(v10 + 32))(v21, v13, v9);
    v18 = 0;
  }

  else
  {
    v18 = 1;
    v17 = v21;
  }

  return (*(v10 + 56))(v17, v18, 1, v9);
}

uint64_t sub_21C984FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EB8, &qword_21CBB6818);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - v6;
  v8 = *(a1 + 8);
  v23 = *(a1 + 24);
  v24[0] = v8;
  v21 = *(a1 + 40);
  v22 = *(a1 + 56);
  v9 = swift_allocObject();
  v10 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v10;
  v9[3] = *(a1 + 32);
  *(v9 + 57) = *(a1 + 41);
  v18[4] = a1;
  sub_21C6EDBAC(v24, v20, &qword_27CDF2F08, &unk_21CBB68A0);
  sub_21C6EDBAC(&v23, v20, &unk_27CDF40F0, &qword_21CBA2500);
  sub_21C6EDBAC(&v21, v20, &qword_27CDF2F10, &unk_21CBB68B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1800, &qword_21CBB6960);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF17F8, &qword_21CBB1EA0);
  v12 = type metadata accessor for PMAdapativeStackLabeledContentStyle();
  v13 = sub_21C942698();
  v14 = sub_21C74419C(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle);
  v20[0] = v11;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v14;
  swift_getOpaqueTypeConformance2();
  sub_21CB84DA4();
  v19 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  v15[1] = *a1;
  v15[2] = v16;
  v15[3] = *(a1 + 32);
  *(v15 + 57) = *(a1 + 41);
  sub_21C6EDBAC(v24, v20, &qword_27CDF2F08, &unk_21CBB68A0);
  sub_21C6EDBAC(&v23, v20, &unk_27CDF40F0, &qword_21CBA2500);
  sub_21C6EDBAC(&v21, v20, &qword_27CDF2F10, &unk_21CBB68B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EC0, &qword_21CBB6820);
  sub_21C6EADEC(&qword_27CDF2EC8, &qword_27CDF2EB8, &qword_21CBB6818);
  sub_21C9880C0();
  sub_21CB848E4();

  return (*(v4 + 8))(v7, v3);
}

void sub_21C985390(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v10 = *(a1 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if (v13[15] == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      sub_21C988314(&v9[*(v6 + 24)], v5, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7194E0(v9, type metadata accessor for PMAccount);
        sub_21C7194E0(v5, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v11 = *v5;
        v12 = [v11 credentialTypes];

        sub_21C7194E0(v9, type metadata accessor for PMAccount);
        if (v12 == 2)
        {
          return;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v13[14] = 1;

      sub_21CB81DC4();
    }
  }
}

uint64_t sub_21C985600(uint64_t a1)
{
  v2 = type metadata accessor for PMAdapativeStackLabeledContentStyle();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17F8, &qword_21CBB1EA0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v16 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1838, &unk_21CBB1F20);
  v11 = sub_21CB839C4();
  v17 = MEMORY[0x277CE0BD8];
  v18 = v11;
  v19 = MEMORY[0x277CE0BC8];
  v20 = MEMORY[0x277CE0758];
  swift_getOpaqueTypeConformance2();
  sub_21CB825D4();
  *v5 = sub_21CB83034();
  v5[8] = 1;
  v12 = *(v2 + 24);
  *&v5[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  sub_21C942698();
  sub_21C74419C(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle);
  sub_21CB844C4();
  sub_21C7194E0(v5, type metadata accessor for PMAdapativeStackLabeledContentStyle);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_21C9858A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EE0, &qword_21CBB6828);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v12[15])
  {
    v10 = 1;
  }

  else
  {
    sub_21C9859F4(1, v8);
    sub_21C9884EC(v8, a2);
    v10 = 0;
  }

  return (*(v5 + 56))(a2, v10, 1, v4);
}

uint64_t sub_21C9859F4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v115 = type metadata accessor for PMAccount.Storage(0);
  v4 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v116 = (&v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = type metadata accessor for PMAccount(0);
  v6 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v117 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_21CB84FB4();
  v121 = *(v122 - 8);
  v8 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v132 = &v102 - v11;
  v12 = type metadata accessor for PMEditableWebsite();
  v103 = *(v12 - 8);
  v13 = *(v103 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v106 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v104 = &v102 - v16;
  v105 = v17;
  MEMORY[0x28223BE20](v18);
  v107 = &v102 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8C0, &unk_21CBA26A0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v118 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v119 = &v102 - v24;
  MEMORY[0x28223BE20](v25);
  v128 = &v102 - v26;
  MEMORY[0x28223BE20](v27);
  v129 = &v102 - v28;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EF0, &qword_21CBB6880);
  v108 = *(v113 - 1);
  v29 = *(v108 + 64);
  MEMORY[0x28223BE20](v113);
  v31 = &v102 - v30;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EF8, &unk_21CBB6888);
  v32 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v34 = &v102 - v33;
  v35 = sub_21CB81024();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB8D0, &unk_21CBA3D40);
  v130 = *(v126 - 8);
  v40 = *(v130 + 64);
  MEMORY[0x28223BE20](v126);
  v124 = &v102 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F00, &qword_21CBB6898);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v127 = &v102 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v131 = &v102 - v46;
  v141 = *(v2 + 8);
  v47 = *(&v141 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  v125 = v47;
  sub_21CB81DB4();

  v48 = *(v138 + 16);

  v111 = v35;
  v110 = v36;
  v109 = v39;
  if (v48 == 1 || (a1 & 1) != 0)
  {
    sub_21CB81014();
    v54 = sub_21CB81004();
    v56 = v55;
    (*(v36 + 8))(v39, v35);
    v140 = *(v2 + 24);
    v138 = *(v2 + 40);
    v139 = *(v2 + 56);
    v57 = swift_allocObject();
    v58 = *(v2 + 16);
    v57[1] = *v2;
    v57[2] = v58;
    v57[3] = *(v2 + 32);
    *(v57 + 57) = *(v2 + 41);
    v133[0] = v54;
    v133[1] = v56;
    MEMORY[0x28223BE20](v57);
    *(&v102 - 4) = v133;
    *(&v102 - 3) = 0x697261666173;
    v101 = 0xE600000000000000;
    sub_21C6EDBAC(&v141, &v135, &qword_27CDF2F08, &unk_21CBB68A0);
    sub_21C6EDBAC(&v140, &v135, &unk_27CDF40F0, &qword_21CBA2500);
    sub_21C6EDBAC(&v138, &v135, &qword_27CDF2F10, &unk_21CBB68B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
    v59 = v124;
    sub_21CB84DA4();

    v60 = v130;
    v51 = v126;
    (*(v130 + 16))(v34, v59, v126);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    sub_21C98825C();
    sub_21CB83494();
    (*(v60 + 8))(v59, v51);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v133[0] = v138;
    v140 = *(v2 + 24);
    v138 = *(v2 + 40);
    v139 = *(v2 + 56);
    v49 = swift_allocObject();
    v50 = *(v2 + 16);
    v49[1] = *v2;
    v49[2] = v50;
    v49[3] = *(v2 + 32);
    *(v49 + 57) = *(v2 + 41);
    sub_21C6EDBAC(&v141, &v135, &qword_27CDF2F08, &unk_21CBB68A0);
    sub_21C6EDBAC(&v140, &v135, &unk_27CDF40F0, &qword_21CBA2500);
    sub_21C6EDBAC(&v138, &v135, &qword_27CDF2F10, &unk_21CBB68B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE100, &unk_21CBA95B0);
    sub_21CB80E34();
    sub_21C6EADEC(&qword_27CDEE1F0, &qword_27CDEE100, &unk_21CBA95B0);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    v101 = sub_21C74419C(&qword_27CDEE228, type metadata accessor for PMEditableWebsite);
    v51 = v126;
    sub_21CB84FF4();
    v52 = v108;
    v53 = v113;
    (*(v108 + 16))(v34, v31, v113);
    swift_storeEnumTagMultiPayload();
    sub_21C98825C();
    sub_21CB83494();
    (*(v52 + 8))(v31, v53);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v61 = *(v135 + 16);

  if (v61 == 1 || (a1 & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v63 = v129;
    if (*(v135 + 16))
    {
      v64 = *(v103 + 80);
      v65 = v104;
      sub_21C988314(v135 + ((v64 + 32) & ~v64), v104, type metadata accessor for PMEditableWebsite);

      v66 = v107;
      sub_21C98837C(v65, v107);
      v67 = v109;
      sub_21CB81014();
      v68 = sub_21CB81004();
      v70 = v69;
      (*(v110 + 8))(v67, v111);
      v71 = v106;
      sub_21C988314(v66, v106, type metadata accessor for PMEditableWebsite);
      v72 = swift_allocObject();
      v73 = sub_21C98837C(v71, v72 + ((v64 + 16) & ~v64));
      v113 = &v102;
      *&v135 = v68;
      *(&v135 + 1) = v70;
      MEMORY[0x28223BE20](v73);
      *(&v102 - 4) = &v135;
      *(&v102 - 3) = 0x642E6E6F2E636F64;
      v101 = 0xEA0000000000636FLL;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
      v51 = v126;
      sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
      v74 = v124;
      sub_21CB84DA4();
      sub_21C7194E0(v66, type metadata accessor for PMEditableWebsite);

      (*(v130 + 32))(v63, v74, v51);
      v62 = 0;
    }

    else
    {

      v62 = 1;
    }
  }

  else
  {
    v62 = 1;
    v63 = v129;
  }

  v75 = *(v130 + 56);
  v75(v63, v62, 1, v51);
  sub_21CB84FA4();
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = v117;
  sub_21CB81DB4();

  v77 = v116;
  sub_21C988314(v76 + *(v114 + 24), v116, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7194E0(v77, type metadata accessor for PMAccount.Storage);
    sub_21C7194E0(v76, type metadata accessor for PMAccount);
  }

  else
  {
    v78 = *v77;
    v79 = [v78 credentialTypes];

    sub_21C7194E0(v76, type metadata accessor for PMAccount);
    if (v79 == 2)
    {
LABEL_16:
      v88 = 1;
      v87 = v128;
      goto LABEL_17;
    }
  }

  if ((*v2 & 1) == 0)
  {
    goto LABEL_16;
  }

  v80 = v109;
  sub_21CB81014();
  v81 = sub_21CB81004();
  v83 = v82;
  (*(v110 + 8))(v80, v111);
  v137 = *(v2 + 24);
  v135 = *(v2 + 40);
  v136 = *(v2 + 56);
  v84 = swift_allocObject();
  v85 = *(v2 + 16);
  v84[1] = *v2;
  v84[2] = v85;
  v84[3] = *(v2 + 32);
  *(v84 + 57) = *(v2 + 41);
  v134[0] = v81;
  v134[1] = v83;
  MEMORY[0x28223BE20](v84);
  *(&v102 - 4) = v134;
  *(&v102 - 3) = 0x6C69636E6570;
  v101 = 0xE600000000000000;
  sub_21C6EDBAC(&v141, v133, &qword_27CDF2F08, &unk_21CBB68A0);
  sub_21C6EDBAC(&v137, v133, &unk_27CDF40F0, &qword_21CBA2500);
  sub_21C6EDBAC(&v135, v133, &qword_27CDF2F10, &unk_21CBB68B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v51 = v126;
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  v86 = v124;
  sub_21CB84DA4();

  v87 = v128;
  (*(v130 + 32))(v128, v86, v51);
  v88 = 0;
LABEL_17:
  v75(v87, v88, 1, v51);
  v89 = v127;
  sub_21C6EDBAC(v131, v127, &qword_27CDF2F00, &qword_21CBB6898);
  v90 = v119;
  sub_21C6EDBAC(v63, v119, &qword_27CDEB8C0, &unk_21CBA26A0);
  v91 = v121;
  v92 = *(v121 + 16);
  v93 = v120;
  v94 = v122;
  v92(v120, v132, v122);
  v95 = v87;
  v96 = v118;
  sub_21C6EDBAC(v95, v118, &qword_27CDEB8C0, &unk_21CBA26A0);
  v97 = v123;
  sub_21C6EDBAC(v89, v123, &qword_27CDF2F00, &qword_21CBB6898);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F20, &qword_21CBB6908);
  sub_21C6EDBAC(v90, v97 + v98[12], &qword_27CDEB8C0, &unk_21CBA26A0);
  v92((v97 + v98[16]), v93, v94);
  sub_21C6EDBAC(v96, v97 + v98[20], &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v128, &qword_27CDEB8C0, &unk_21CBA26A0);
  v99 = *(v91 + 8);
  v99(v132, v94);
  sub_21C6EA794(v129, &qword_27CDEB8C0, &unk_21CBA26A0);
  sub_21C6EA794(v131, &qword_27CDF2F00, &qword_21CBB6898);
  sub_21C6EA794(v96, &qword_27CDEB8C0, &unk_21CBA26A0);
  v99(v93, v94);
  sub_21C6EA794(v90, &qword_27CDEB8C0, &unk_21CBA26A0);
  return sub_21C6EA794(v127, &qword_27CDF2F00, &qword_21CBB6898);
}

uint64_t sub_21C986DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v23 = sub_21CB839C4();
  v22[0] = *(v23 - 8);
  v3 = *(v22[0] + 64);
  MEMORY[0x28223BE20](v23);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v24 = sub_21C98856C();
  v25 = v7;
  sub_21C71F3FC();
  v8 = sub_21CB84054();
  v10 = v9;
  v12 = v11;
  if ((*a1 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), sub_21CB81DB4(), , , v24 == 1))
  {
    sub_21CB84B14();
  }

  else
  {
    sub_21CB84B34();
  }

  v13 = sub_21CB83FB4();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_21C74A72C(v8, v10, v12 & 1);

  v24 = v13;
  v25 = v15;
  v17 &= 1u;
  v26 = v17;
  v27 = v19;
  sub_21CB839B4();
  v20 = v23;
  sub_21CB84244();
  (*(v22[0] + 8))(v5, v20);
  sub_21C74A72C(v13, v15, v17);
}

uint64_t sub_21C987014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v30[-v10];
  sub_21CB81014();
  sub_21CB81014();
  v12 = sub_21CB80FF4();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v11, v4);
  v31 = v12;
  v32 = v14;
  sub_21C71F3FC();
  v16 = sub_21CB84054();
  v18 = v17;
  v20 = v19;
  if ((*a1 & 1) != 0 && (v21 = *(a1 + 16), swift_getKeyPath(), swift_getKeyPath(), sub_21CB81DB4(), , , v31 == 1))
  {
    sub_21CB84B34();
  }

  else
  {
    sub_21CB84B14();
  }

  v22 = sub_21CB83FB4();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_21C74A72C(v16, v18, v20 & 1);

  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v28;
  return result;
}

uint64_t sub_21C987268@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMEditableWebsite();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (*(v17[0] + 16))
  {
    sub_21C988314(v17[0] + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v7, type metadata accessor for PMEditableWebsite);

    sub_21C98837C(v7, v10);
    v12 = &v10[*(v3 + 20)];
    v13 = *v12;
    v14 = *(v12 + 1);
    v17[0] = 0x2F2F3A7370747468;
    v17[1] = 0xE800000000000000;
    MEMORY[0x21CF151F0](v13, v14);
    sub_21CB80BD4();

    return sub_21C7194E0(v10, type metadata accessor for PMEditableWebsite);
  }

  else
  {

    v16 = sub_21CB80BE4();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }
}

uint64_t sub_21C987480(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_21CB80BE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C987268(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_21C6EA794(v10, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  (*(v12 + 32))(v15, v10, v11);
  v20 = *(a1 + 40);
  v21 = *(a1 + 56);
  v17 = v20;
  if (v21 == 1)
  {
  }

  else
  {

    sub_21CB85B04();
    v18 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C6EA794(&v20, &qword_27CDF2F10, &unk_21CBB68B0);
    (*(v3 + 8))(v6, v2);
    v17 = v19;
  }

  v17(v15);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21C987760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[1] = a3;
  v5 = type metadata accessor for PMEditableWebsite();
  v6 = v5 - 8;
  v28[0] = *(v5 - 8);
  v7 = *(v28[0] + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB81024();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v10 + 8))(v13, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21CBA0690;
  v15 = (a1 + *(v6 + 28));
  v17 = *v15;
  v16 = v15[1];
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_21C7C0050();
  *(v14 + 32) = v17;
  *(v14 + 40) = v16;

  v18 = sub_21CB85594();
  v20 = v19;

  sub_21C988314(a1, v8, type metadata accessor for PMEditableWebsite);
  v21 = *(a2 + 8);
  v33 = *(a2 + 24);
  v34 = v21;
  v31 = *(a2 + 40);
  v32 = *(a2 + 56);
  v22 = (*(v28[0] + 80) + 16) & ~*(v28[0] + 80);
  v23 = (v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_21C98837C(v8, v24 + v22);
  v25 = (v24 + v23);
  v26 = *(a2 + 16);
  *v25 = *a2;
  v25[1] = v26;
  v25[2] = *(a2 + 32);
  *(v25 + 41) = *(a2 + 41);
  v30[0] = v18;
  v30[1] = v20;
  v28[4] = v30;
  v28[5] = 0x697261666173;
  v28[6] = 0xE600000000000000;
  sub_21C6EDBAC(&v34, v29, &qword_27CDF2F08, &unk_21CBB68A0);
  sub_21C6EDBAC(&v33, v29, &unk_27CDF40F0, &qword_21CBA2500);
  sub_21C6EDBAC(&v31, v29, &qword_27CDF2F10, &unk_21CBB68B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0);
  sub_21CB84DA4();
}

uint64_t sub_21C987B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_21CB80BE4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (a1 + *(type metadata accessor for PMEditableWebsite() + 20));
  v19 = *v18;
  v20 = v18[1];
  *&v25 = 0x2F2F3A7370747468;
  *(&v25 + 1) = 0xE800000000000000;
  MEMORY[0x21CF151F0](v19, v20);
  sub_21CB80BD4();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_21C6EA794(v12, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  (*(v14 + 32))(v17, v12, v13);
  v25 = *(a2 + 40);
  v26 = *(a2 + 56);
  v22 = v25;
  if (v26 == 1)
  {
  }

  else
  {

    sub_21CB85B04();
    v23 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C6EA794(&v25, &qword_27CDF2F10, &unk_21CBB68B0);
    (*(v5 + 8))(v8, v4);
    v22 = v24;
  }

  v22(v17);

  return (*(v14 + 8))(v17, v13);
}

void sub_21C987E30(uint64_t a1)
{
  if (qword_27CDEA480 != -1)
  {
    swift_once();
  }

  v2 = qword_27CE18710;
  v3 = type metadata accessor for PMEditableWebsite();
  v4 = *(v2 + 16);
  sub_21CADAA84(*(a1 + *(v3 + 20)), *(a1 + *(v3 + 20) + 8), 0);
}

uint64_t sub_21C987EA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C987F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[9] = *(v1 + 41);
  return sub_21C984C40(a1);
}

unint64_t sub_21C987FA0()
{
  result = qword_27CDF2EB0;
  if (!qword_27CDF2EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2E98, &qword_21CBB67B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EB8, &qword_21CBB6818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EC0, &qword_21CBB6820);
    sub_21C6EADEC(&qword_27CDF2EC8, &qword_27CDF2EB8, &qword_21CBB6818);
    sub_21C9880C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2EB0);
  }

  return result;
}

unint64_t sub_21C9880C0()
{
  result = qword_27CDF2ED0;
  if (!qword_27CDF2ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EC0, &qword_21CBB6820);
    sub_21C6EADEC(&qword_27CDF2ED8, &qword_27CDF2EE0, &qword_21CBB6828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2ED0);
  }

  return result;
}

unint64_t sub_21C988198()
{
  result = qword_27CDF2EE8;
  if (!qword_27CDF2EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EA0, &qword_21CBB67C0);
    sub_21C987FA0();
    sub_21C74419C(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2EE8);
  }

  return result;
}

unint64_t sub_21C98825C()
{
  result = qword_27CDF2F18;
  if (!qword_27CDF2F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EF0, &qword_21CBB6880);
    sub_21C6EADEC(&unk_27CDEC1A0, &qword_27CDEB8D0, &unk_21CBA3D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2F18);
  }

  return result;
}

uint64_t sub_21C988314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C98837C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMEditableWebsite();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21C9883E0()
{
  v1 = *(type metadata accessor for PMEditableWebsite() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21C987E30(v2);
}

uint64_t sub_21C988448()
{
  v1 = *(type metadata accessor for PMEditableWebsite() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_21C987B08(v0 + v2, v3);
}

uint64_t sub_21C9884EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2EE0, &qword_21CBB6828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C98856C()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for PMEditableWebsite();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v15 = *(v29 + 16);

  if (v15 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if (*(v29 + 16))
    {
      sub_21C988314(v29 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v14, type metadata accessor for PMEditableWebsite);

      v16 = &v14[*(v8 + 20)];
      v18 = *v16;
      v17 = *(v16 + 1);

      sub_21C7194E0(v14, type metadata accessor for PMEditableWebsite);
      sub_21CB81014();
      sub_21CB81014();
      sub_21CB80FF4();
      v19 = *(v1 + 8);
      v19(v4, v0);
      v19(v7, v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_21CBA15B0;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = sub_21C7C0050();
      *(v20 + 32) = v18;
      *(v20 + 40) = v17;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v21 = *(v29 + 16);

      v22 = MEMORY[0x277D83C10];
      *(v20 + 96) = MEMORY[0x277D83B88];
      *(v20 + 104) = v22;
      *(v20 + 72) = v21 - 1;
      v23 = sub_21CB85594();

LABEL_10:

      return v23;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v24 = *(v29 + 16);

  if (v24 != 1)
  {
LABEL_9:
    sub_21CB81014();
    sub_21CB81004();
    (*(v1 + 8))(v7, v0);
    v23 = sub_21CB85594();
    goto LABEL_10;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (!*(v29 + 16))
  {

    goto LABEL_9;
  }

  sub_21C988314(v29 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v11, type metadata accessor for PMEditableWebsite);

  v25 = &v11[*(v8 + 20)];
  v23 = *v25;
  v26 = v25[1];

  sub_21C7194E0(v11, type metadata accessor for PMEditableWebsite);
  return v23;
}

unint64_t sub_21C988B00()
{
  result = qword_27CDF2F28;
  if (!qword_27CDF2F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2F30, &unk_21CBB69A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EA0, &qword_21CBB67C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2EE0, &qword_21CBB6828);
    sub_21C988198();
    sub_21C6EADEC(&qword_27CDF2ED8, &qword_27CDF2EE0, &qword_21CBB6828);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2F28);
  }

  return result;
}

uint64_t sub_21C988C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v97 = sub_21CB81024();
  v102 = *(v97 - 8);
  v3 = *(v102 + 64);
  MEMORY[0x28223BE20](v97);
  v100 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v99 = &v94 - v6;
  MEMORY[0x28223BE20](v7);
  v98 = &v94 - v8;
  MEMORY[0x28223BE20](v9);
  v96 = &v94 - v10;
  MEMORY[0x28223BE20](v11);
  v107 = &v94 - v12;
  MEMORY[0x28223BE20](v13);
  v106 = &v94 - v14;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F38, &qword_21CBB6A48);
  v104 = *(v115 - 8);
  v15 = *(v104 + 64);
  MEMORY[0x28223BE20](v115);
  v103 = &v94 - v16;
  v95 = sub_21CB82FD4();
  v17 = *(v95 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v95);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PMWiFiDetailsView();
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F40, &qword_21CBB6A50);
  v101 = *(v111 - 8);
  v25 = *(v101 + 64);
  MEMORY[0x28223BE20](v111);
  v108 = &v94 - v26;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F48, &qword_21CBB6A58);
  v27 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v114 = &v94 - v28;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F50, &qword_21CBB6A60);
  v29 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v31 = &v94 - v30;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F58, &qword_21CBB6A68);
  v32 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v110 = &v94 - v33;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F60, &qword_21CBB6A70);
  v34 = *(v109 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v109);
  v37 = &v94 - v36;
  swift_getKeyPath();
  v117 = a1;
  sub_21C989E60(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel);
  sub_21CB810D4();

  v38 = *(a1 + 32);
  v39 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v94 = *(a1 + 32);
    if (v39 == 1)
    {
      *v24 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
      swift_storeEnumTagMultiPayload();
      v40 = v21[5];
      *(v24 + v40) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
      swift_storeEnumTagMultiPayload();
      v41 = v21[6];
      sub_21C8D7854(v38, 1);
      type metadata accessor for PMWiFiDetailsModel();
      sub_21C989E60(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);

      sub_21CB850A4();
      *(v24 + v21[7]) = 0;
      v42 = (v24 + v21[8]);
      *v42 = 0x6F435251776F6873;
      v42[1] = 0xEA00000000006564;
      v43 = v17;
      v44 = v95;
      (*(v17 + 104))(v20, *MEMORY[0x277CDDDC0], v95);
      v45 = sub_21C989E60(&qword_27CDF2F88, type metadata accessor for PMWiFiDetailsView);
      v46 = v108;
      sub_21CB84684();
      (*(v43 + 8))(v20, v44);
      sub_21C989EA8(v24);
      v47 = v101;
      v48 = v111;
      (*(v101 + 16))(v31, v46, v111);
      swift_storeEnumTagMultiPayload();
      v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2F78, &qword_21CBB6AA8);
      v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0560, &qword_21CBAEF20);
      v51 = sub_21C989DFC();
      v52 = sub_21C8F0690();
      v117 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
      v118 = v52;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v117 = v49;
      v118 = v50;
      v119 = v51;
      v120 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v117 = v21;
      v118 = v45;
      swift_getOpaqueTypeConformance2();
      v54 = v110;
      sub_21CB83494();
      sub_21C76D3B0(v54, v114);
      swift_storeEnumTagMultiPayload();
      sub_21C989C7C();
      v55 = sub_21C989C28();
      v117 = &type metadata for PMMultipleSelectionDetailView;
      v118 = v50;
      v119 = v55;
      v120 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_21CB83494();
      sub_21C989C08(v94, 1);
      sub_21C76D420(v54);
      return (*(v47 + 8))(v108, v48);
    }

    else
    {

      sub_21CB81014();
      sub_21CB81014();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
      v67 = sub_21CB81034();
      v68 = *(v67 - 8);
      v69 = *(v68 + 72);
      v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v71 = swift_allocObject();
      v72 = v96;
      sub_21CB81014();
      v73 = v98;
      sub_21CB81014();
      v74 = v99;
      sub_21CB81014();
      v75 = v100;
      sub_21CB81014();
      sub_21CB80FE4();
      v76 = *(v102 + 8);
      v77 = v75;
      v78 = v97;
      v76(v77, v97);
      v76(v74, v78);
      v76(v73, v78);
      v76(v72, v78);
      swift_setDeallocating();
      (*(v68 + 8))(v71 + v70, v67);
      swift_deallocClassInstance();
      v79 = v106;
      sub_21CB81004();
      v76(v107, v78);
      v76(v79, v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_21CBA0690;
      v81 = *(v94 + 16);
      sub_21C989C08(v94, 2);
      v82 = MEMORY[0x277D83C10];
      *(v80 + 56) = MEMORY[0x277D83B88];
      *(v80 + 64) = v82;
      *(v80 + 32) = v81;
      v83 = sub_21CB85594();
      v85 = v84;

      v117 = v83;
      v118 = v85;
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
      v87 = sub_21C989C28();
      v88 = sub_21C8F0690();
      v121 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
      v122 = v88;
      v89 = swift_getOpaqueTypeConformance2();
      v90 = v103;
      sub_21CB84894();

      v91 = v104;
      v92 = v115;
      (*(v104 + 16))(v114, v90, v115);
      swift_storeEnumTagMultiPayload();
      sub_21C989C7C();
      v117 = &type metadata for PMMultipleSelectionDetailView;
      v118 = v86;
      v119 = v87;
      v120 = v89;
      swift_getOpaqueTypeConformance2();
      sub_21CB83494();
      return (*(v91 + 8))(v90, v92);
    }
  }

  else
  {
    v56 = swift_allocObject();
    *(v56 + 16) = v38 & 1;
    v117 = sub_21C989F04;
    v118 = v56;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2F78, &qword_21CBB6AA8);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
    v59 = sub_21C989DFC();
    v60 = sub_21C8F0690();
    v121 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v122 = v60;
    v61 = swift_getOpaqueTypeConformance2();
    sub_21CB84894();

    v62 = v21;
    v63 = v109;
    (*(v34 + 16))(v31, v37, v109);
    swift_storeEnumTagMultiPayload();
    v117 = v57;
    v118 = v58;
    v119 = v59;
    v120 = v61;
    swift_getOpaqueTypeConformance2();
    v64 = sub_21C989E60(&qword_27CDF2F88, type metadata accessor for PMWiFiDetailsView);
    v117 = v62;
    v118 = v64;
    swift_getOpaqueTypeConformance2();
    v65 = v110;
    sub_21CB83494();
    sub_21C76D3B0(v65, v114);
    swift_storeEnumTagMultiPayload();
    sub_21C989C7C();
    v66 = sub_21C989C28();
    v117 = &type metadata for PMMultipleSelectionDetailView;
    v118 = v58;
    v119 = v66;
    v120 = v61;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    sub_21C76D420(v65);
    return (*(v34 + 8))(v37, v63);
  }
}

uint64_t sub_21C989B3C@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB85C44();
  (*(*(v8 - 8) + 56))(v7, 4, 6, v8);
  return sub_21C9E14F8(v7, a1, a2);
}

uint64_t sub_21C989C08(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  if (a2 == 1)
  {
  }

  return result;
}

unint64_t sub_21C989C28()
{
  result = qword_27CDF2F68;
  if (!qword_27CDF2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2F68);
  }

  return result;
}

unint64_t sub_21C989C7C()
{
  result = qword_27CDF2F70;
  if (!qword_27CDF2F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2F58, &qword_21CBB6A68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2F78, &qword_21CBB6AA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0560, &qword_21CBAEF20);
    sub_21C989DFC();
    sub_21C8F0690();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PMWiFiDetailsView();
    sub_21C989E60(&qword_27CDF2F88, type metadata accessor for PMWiFiDetailsView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2F70);
  }

  return result;
}

unint64_t sub_21C989DFC()
{
  result = qword_27CDF2F80;
  if (!qword_27CDF2F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2F78, &qword_21CBB6AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2F80);
  }

  return result;
}

uint64_t sub_21C989E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C989EA8(uint64_t a1)
{
  v2 = type metadata accessor for PMWiFiDetailsView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C989F0C()
{
  result = qword_27CDF2F90;
  if (!qword_27CDF2F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2F98, &unk_21CBB6B20);
    sub_21C989C7C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0560, &qword_21CBAEF20);
    sub_21C989C28();
    sub_21C8F0690();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2F90);
  }

  return result;
}

uint64_t sub_21C98A020@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_21CB81024();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v44 - v7;
  v8 = sub_21CB82FD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3048, &qword_21CBB6C00);
  v14 = *(v13 - 8);
  v44 = v13;
  v45 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3040, &qword_21CBB6BF8);
  v19 = *(v18 - 8);
  v47 = v18;
  v48 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v53 = &v44 - v21;
  v23 = *a1;
  v22 = a1[1];

  v24 = sub_21CB83D04();
  v25 = sub_21CB82934();
  v57 = v23;
  v58 = v22;
  v59 = v25;
  LOBYTE(v60) = v24;
  v54 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3050, &unk_21CBB6C08);
  v27 = type metadata accessor for PMPlatformRoleButton();
  v28 = sub_21C98AD6C();
  v29 = sub_21C98AE4C();
  sub_21CB848A4();

  (*(v9 + 104))(v12, *MEMORY[0x277CDDDC0], v8);
  v57 = v26;
  v58 = v27;
  v59 = v28;
  v60 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  sub_21CB84684();
  (*(v9 + 8))(v12, v8);
  v32 = v31;
  (*(v45 + 8))(v17, v31);
  v33 = v46;
  sub_21CB81014();
  v34 = v49;
  sub_21CB81014();
  v35 = sub_21CB80FF4();
  v37 = v36;
  v38 = *(v50 + 8);
  v39 = v34;
  v40 = v51;
  v38(v39, v51);
  v38(v33, v40);
  v57 = v35;
  v58 = v37;
  v55 = v32;
  v56 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  v41 = v53;
  v42 = v47;
  sub_21CB842F4();

  return (*(v48 + 8))(v41, v42);
}

uint64_t sub_21C98A4D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMOtpauthQRCodeScannerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v15 = type metadata accessor for PMPlatformRoleButton();
  v16 = a2 + *(v15 + 20);
  sub_21CB81EF4();
  sub_21C98AEAC(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  result = sub_21C98AF10(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *a2 = v12;
  a2[1] = v14;
  v20 = (a2 + *(v15 + 24));
  *v20 = sub_21C98AF74;
  v20[1] = v18;
  return result;
}

uint64_t sub_21C98A6BC(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_21CB823B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMOtpauthQRCodeScannerView();
  sub_21C7B8998(a1 + *(v16 + 20), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_21CB85B04();
    v18 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_21CB823A4();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_21C98A930()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3038, &qword_21CBB6BF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3040, &qword_21CBB6BF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3048, &qword_21CBB6C00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3050, &unk_21CBB6C08);
  type metadata accessor for PMPlatformRoleButton();
  sub_21C98AD6C();
  sub_21C98AE4C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  swift_getOpaqueTypeConformance2();
  return sub_21CB82924();
}

id sub_21C98ABE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PMOtpauthQRCodeScannerView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PMOtpauthQRCodeScannerView()
{
  result = qword_27CDF3020;
  if (!qword_27CDF3020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C98ACC4()
{
  sub_21C7226D8();
  if (v0 <= 0x3F)
  {
    sub_21C721A6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21C98AD6C()
{
  result = qword_27CDF3058;
  if (!qword_27CDF3058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3050, &unk_21CBB6C08);
    sub_21C98ADF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3058);
  }

  return result;
}

unint64_t sub_21C98ADF8()
{
  result = qword_27CDF3060;
  if (!qword_27CDF3060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3060);
  }

  return result;
}

unint64_t sub_21C98AE4C()
{
  result = qword_27CDEC040;
  if (!qword_27CDEC040)
  {
    type metadata accessor for PMPlatformRoleButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEC040);
  }

  return result;
}

uint64_t sub_21C98AEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOtpauthQRCodeScannerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C98AF10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOtpauthQRCodeScannerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C98AF74()
{
  v1 = *(type metadata accessor for PMOtpauthQRCodeScannerView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C98A6BC(v2);
}

id sub_21C98AFD4()
{
  v0 = [objc_allocWithZone(PMOtpauthQRCodeScannerViewController) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3088, &qword_21CBB6CE8);
  sub_21CB83C84();
  [v0 setDelegate_];

  return v0;
}

uint64_t sub_21C98B054()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3088, &qword_21CBB6CE8);
  sub_21CB83C84();
  v3 = &v6[OBJC_IVAR____TtCV17PasswordManagerUIP33_91FE3DB8FE855AA02E71C632A89C8F1E27_PMOtpauthQRCodeScannerView11Coordinator_completion];
  v4 = *&v6[OBJC_IVAR____TtCV17PasswordManagerUIP33_91FE3DB8FE855AA02E71C632A89C8F1E27_PMOtpauthQRCodeScannerView11Coordinator_completion + 8];
  *v3 = v2;
  *(v3 + 1) = v1;
}

id sub_21C98B0D4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for _PMOtpauthQRCodeScannerView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV17PasswordManagerUIP33_91FE3DB8FE855AA02E71C632A89C8F1E27_PMOtpauthQRCodeScannerView11Coordinator_completion];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_21C98B14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C98B2B4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21C98B1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C98B2B4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21C98B214()
{
  sub_21C98B2B4();
  sub_21CB83B44();
  __break(1u);
}

unint64_t sub_21C98B24C()
{
  result = qword_27CDF3070;
  if (!qword_27CDF3070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3078, &qword_21CBB6C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3070);
  }

  return result;
}

unint64_t sub_21C98B2B4()
{
  result = qword_27CDF3080;
  if (!qword_27CDF3080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF3080);
  }

  return result;
}

uint64_t sub_21C98B308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21C6EDBAC(a3, v27 - v11, &qword_27CDF1D50, &qword_21CBA0C00);
  v13 = sub_21CB858E4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21C6EA794(v12, &qword_27CDF1D50, &qword_21CBA0C00);
  }

  else
  {
    sub_21CB858D4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21CB85874();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21CB85644() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21C98B608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21C6EDBAC(a3, v27 - v11, &qword_27CDF1D50, &qword_21CBA0C00);
  v13 = sub_21CB858E4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21C6EA794(v12, &qword_27CDF1D50, &qword_21CBA0C00);
  }

  else
  {
    sub_21CB858D4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21CB85874();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21CB85644() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3090, &qword_21CBB6D60);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21C6EA794(a3, &qword_27CDF1D50, &qword_21CBA0C00);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3090, &qword_21CBB6D60);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t PMExtensionCoordinator.__allocating_init(appState:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  return result;
}

void sub_21C98B950(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D0, &qword_21CBBDC70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  if (![objc_opt_self() isPasswordsAppInstalled] || (v13 = objc_msgSend(objc_allocWithZone(PMOTPAuthHandlerMigration), sel_init), v14 = sub_21CB80B74(), v15 = objc_msgSend(v13, sel_migrateDefaultOTPAuthHandlerWithURL_, v14), v13, v14, (v15 & 1) == 0))
  {
    v16 = *(v3 + 16);
    v17 = sub_21CB80BE4();
    (*(*(v17 - 8) + 16))(v12, a1, v17);
    v18 = type metadata accessor for PMInboundOTPAuthURLContext(0);
    sub_21C6EDBAC(a2, &v12[*(v18 + 20)], &qword_27CDEC300, &qword_21CBA3ED0);
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21C6EDBAC(v12, v9, &qword_27CDF30D0, &qword_21CBBDC70);
    v19 = v16;
    sub_21CB81DC4();
    sub_21C6EA794(v12, &qword_27CDF30D0, &qword_21CBBDC70);
  }
}

void sub_21C98BB78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v77 - v5;
  v7 = sub_21CB85C44();
  v81 = *(v7 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  v14 = objc_opt_self();
  v15 = sub_21CB80B74();
  v16 = [v14 valueForPasswordManagerURL:v15 key:*MEMORY[0x277D49C90]];

  if (v16)
  {
    v17 = sub_21CB855C4();
    v19 = v18;

    v20 = *(v82 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v83 = MEMORY[0x277D84F90];
    v21 = v20;
    sub_21CB81DC4();
    sub_21CACB1D0();
    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v17;
    v84 = v19;

    sub_21CB81DC4();
    sub_21C8185F8();
    swift_getKeyPath();
    swift_getKeyPath();
    v83 = MEMORY[0x277D84FA0];
    sub_21CB81DC4();
    v22 = *&v21[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_mainAccountDetailsSheetController];
    v23 = *&v21[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState____lazy_storage___mainAccountsListModel];

    v24 = sub_21C819730();
    v26 = v25;

    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v24;
    v84 = v26;

LABEL_3:
    sub_21CB81DC4();
    return;
  }

  v80 = v7;
  v27 = sub_21CB80B74();
  v28 = [v14 valueForPasswordManagerURL:v27 key:*MEMORY[0x277D49C78]];

  v29 = &selRef_symbolForTypeIdentifier_error_;
  v30 = v3;
  if (v28)
  {
    sub_21CB855C4();

    v29 = &selRef_symbolForTypeIdentifier_error_;
    v31 = sub_21CB80C24();
    v33 = v32;
    swift_bridgeObjectRelease_n();
    if (v33 >> 60 != 15)
    {
      v34 = sub_21CB80B74();
      v35 = [v14 valueForPasswordManagerURL:v34 key:*MEMORY[0x277D49C80]];

      if (v35 && (v79 = sub_21CB855C4(), v35, , v79 = sub_21CB80C24(), v37 = v36, swift_bridgeObjectRelease_n(), v37 >> 60 != 15))
      {
        v78 = v31;
        v60 = sub_21CB80C64();
        v77 = v60;
        v61 = sub_21CB80C64();
        v62 = [objc_opt_self() sharablePasswordFromEncryptedData:v60 encryptionKeyReference:v61];

        sub_21C7902FC(v79, v37);
        v63 = v33;
        v64 = v62;
        sub_21C7902FC(v78, v63);
        v29 = &selRef_symbolForTypeIdentifier_error_;
        if (v62)
        {
          v57 = *(v82 + 16);
          swift_getKeyPath();
          swift_getKeyPath();
          v83 = v64;
          goto LABEL_23;
        }
      }

      else
      {
        sub_21C7902FC(v31, v33);
        v29 = &selRef_symbolForTypeIdentifier_error_;
      }
    }
  }

  v38 = sub_21CB80B74();
  v39 = [v14 v29[11]];

  if (v39)
  {
    sub_21CB855C4();

    sub_21CB85B54();
    v40 = v80;
    v41 = v81;
    (*(v81 + 32))(v13, v10, v80);
    v42 = *(v82 + 16);
    (*(v41 + 16))(v6, v13, v40);
    (*(v41 + 56))(v6, 0, 1, v40);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21C6EDBAC(v6, v30, &unk_27CDF20B0, &unk_21CBA0090);
    v43 = v42;
    sub_21CB81DC4();
    sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
    (*(v41 + 8))(v13, v40);
    return;
  }

  v44 = sub_21CB80B74();
  v45 = [v14 dictionaryWithPasswordManagerURL_];

  if (v45)
  {
    v46 = sub_21CB85474();
  }

  else
  {
    v46 = sub_21CB126C0(MEMORY[0x277D84F90]);
  }

  v48 = v81;
  v47 = v82;
  v49 = v80;
  if (!*(v46 + 16))
  {

    v57 = *(v47 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v83 = MEMORY[0x277D84F90];
LABEL_23:
    v65 = v57;
    goto LABEL_3;
  }

  v50 = sub_21CB85464();
  v51 = [v14 isPasswordManagerSecurityRecommendationsResourceDictionary_];

  if (v51 || (v58 = sub_21CB85464(), v59 = [v14 isPasswordManagerPasswordOptionsResourceDictionary_], v58, v59))
  {

    v52 = *(v82 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    v53 = *(type metadata accessor for PMSystemSettingsNavigationDestination() - 8);
    v54 = *(v53 + 72);
    v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_21CBA0690;
LABEL_26:
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v56;
    v71 = v52;
    goto LABEL_3;
  }

  v66 = sub_21CB85464();

  v67 = [v14 isPasswordManagerRecentlyDeletedResourceDictionary_];

  if (v67)
  {
    v52 = *(v82 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    v68 = *(type metadata accessor for PMSystemSettingsNavigationDestination() - 8);
    v69 = *(v68 + 72);
    v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_21CBA0690;
    (*(v48 + 56))(v56 + v70, 1, 2, v49);
    goto LABEL_26;
  }

  v72 = sub_21CB80B74();
  v73 = [v14 v29 + 938];

  if (v73)
  {
    v74 = sub_21CB855C4();
    v76 = v75;

    sub_21C98C64C(v74, v76);
  }
}

uint64_t sub_21C98C64C(uint64_t a1, unint64_t a2)
{
  result = sub_21C98F208(a1, a2);
  if (v4)
  {
    v5 = *(v2 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v5;
    sub_21CB81DC4();
    v7 = *&v6[OBJC_IVAR____TtC17PasswordManagerUI22PMPasswordManagerState_mainAccountDetailsSheetController];
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_21CB81DC4();
  }

  return result;
}

uint64_t sub_21C98C72C(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30C0, &qword_21CBB6EE8);
  if (swift_dynamicCast())
  {
    sub_21C6EA568(__src, &v42);
    __swift_project_boxed_opaque_existential_0(&v42, v43);
    sub_21CB80954();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_21C6EA794(__src, &qword_27CDF30C8, &unk_21CBB6EF0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_21CB86114();
  }

  sub_21C98E564(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_21C98F068(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_21C98E62C(sub_21C98F614);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_21CB80C44();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_21C965178(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_21CB85724();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_21CB85754();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_21CB86114();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_21C965178(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_21CB85734();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_21CB80C54();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_21CB80C54();
    sub_21C7902FC(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_21C7902FC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_21C7A35D0(*&__src[0], *(&__src[0] + 1));

  sub_21C7A34C0(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_21C98CC4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB85CA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7C61D0(v7);
  v8 = MEMORY[0x21CF15760](v7, a2);
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

uint64_t PMExtensionCoordinator.settingsHost.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t PMExtensionCoordinator.settingsHost.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall PMExtensionCoordinator.revealElement(forKey:)(Swift::String forKey)
{
  v2 = v1;
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v9 = sub_21CB81C84();
  __swift_project_value_buffer(v9, qword_27CE186E0);

  v10 = sub_21CB81C64();
  v11 = sub_21CB85AD4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136642819;
    *(v12 + 4) = sub_21C98E004(countAndFlagsBits, object, &v21);
    _os_log_impl(&dword_21C6E5000, v10, v11, "Reveal element: %{sensitive}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x21CF16D90](v13, -1, -1);
    MEMORY[0x21CF16D90](v12, -1, -1);
  }

  v14 = sub_21CB858E4();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = *(v2 + 16);
  sub_21CB858B4();

  v16 = v15;

  v17 = sub_21CB858A4();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = countAndFlagsBits;
  v18[5] = object;
  v18[6] = v16;
  v18[7] = v2;
  sub_21C98B308(0, 0, v8, &unk_21CBB6D00, v18);
}

uint64_t sub_21C98D190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0) - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v9 = sub_21CB80BE4();
  v7[21] = v9;
  v10 = *(v9 - 8);
  v7[22] = v10;
  v11 = *(v10 + 64) + 15;
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3098, &qword_21CBB6D90);
  v7[25] = v12;
  v13 = *(v12 - 8);
  v7[26] = v13;
  v14 = *(v13 + 64) + 15;
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30A0, &qword_21CBB6D98) - 8) + 64) + 15;
  v7[29] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30A8, &qword_21CBB6DA0);
  v7[30] = v16;
  v17 = *(v16 - 8);
  v7[31] = v17;
  v18 = *(v17 + 64) + 15;
  v7[32] = swift_task_alloc();
  sub_21CB858B4();
  v7[33] = sub_21CB858A4();
  v20 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C98D3F8, v20, v19);
}

uint64_t sub_21C98D3F8()
{
  v96 = v0;
  v1 = v0[33];
  v2 = v0[14];
  v3 = v0[15];

  v4 = v2 == 0x7974697275636553 && v3 == 0xE800000000000000;
  if (v4 || (v5 = v0[14], v6 = v0[15], (sub_21CB86344() & 1) != 0))
  {
    v7 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    v8 = *(type metadata accessor for PMSystemSettingsNavigationDestination() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_21CBA0690;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    v0[13] = v11;
    v12 = v7;
LABEL_7:
    sub_21CB81DC4();
    goto LABEL_8;
  }

  if (v0[14] == 0x736E6F6974704FLL && v0[15] == 0xE700000000000000 || (sub_21CB86344() & 1) != 0)
  {
    v24 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    v25 = *(type metadata accessor for PMSystemSettingsNavigationDestination() - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21CBA0690;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    v0[12] = v28;
    v29 = v24;
    goto LABEL_7;
  }

  if (v0[14] == 0x64726F7773736150 && v0[15] == 0xE900000000000073 || (sub_21CB86344() & 1) != 0)
  {
    v30 = v0[16];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = MEMORY[0x277D84F90];
    v31 = v30;
    goto LABEL_7;
  }

  if (v0[14] == 0x796C746E65636552 && v0[15] == 0xEF646574656C6544 || (sub_21CB86344() & 1) != 0)
  {
    v32 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    v33 = *(type metadata accessor for PMSystemSettingsNavigationDestination() - 8);
    v34 = *(v33 + 72);
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_21CBA0690;
    v37 = sub_21CB85C44();
    (*(*(v37 - 8) + 56))(v36 + v35, 1, 2, v37);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    v0[10] = v36;
    v38 = v32;
    goto LABEL_7;
  }

  v39 = v0[28];
  v40 = v0[29];
  v41 = v0[27];
  v42 = v0[25];
  v44 = v0[14];
  v43 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30B0, &qword_21CBB6DA8);
  sub_21CB81144();
  sub_21C98EF4C();
  sub_21CB81134();
  sub_21CB857B4();
  sub_21CB81154();
  v45 = v0[27];
  v46 = v0[28];
  v47 = v0[25];
  v48 = v0[26];

  v49 = *(v48 + 8);
  v49(v45, v47);
  v49(v46, v47);
  v50 = v0[30];
  v51 = v0[31];
  v52 = v0[29];
  if ((*(v51 + 48))(v52, 1, v50) == 1)
  {
    sub_21C6EA794(v52, &qword_27CDF30A0, &qword_21CBB6D98);
  }

  else
  {
    (*(v51 + 32))(v0[32], v52, v50);
    swift_getKeyPath();
    sub_21CB81164();

    v53 = MEMORY[0x21CF15150](v0[2], v0[3], v0[4], v0[5]);
    v55 = v54;

    v0[8] = v53;
    v0[9] = v55;
    sub_21C71F3FC();
    v56 = sub_21CB85EB4();
    v59 = v0[31];
    v58 = v0[32];
    v60 = v0[30];
    if (v57)
    {
      v61 = v56;
      v62 = v57;
      v63 = v0[17];

      sub_21C98C64C(v61, v62);

      (*(v59 + 8))(v58, v60);
      goto LABEL_8;
    }

    (*(v59 + 8))(v0[32], v0[30]);
  }

  v64 = v0[21];
  v65 = v0[22];
  v66 = v0[20];
  v67 = v0[14];
  v68 = v0[15];
  sub_21CB80BD4();
  v69 = *(v65 + 48);
  if (v69(v66, 1, v64) == 1)
  {
    sub_21C6EA794(v0[20], &qword_27CDEC300, &qword_21CBA3ED0);
  }

  else
  {
    (*(v0[22] + 32))(v0[24], v0[20], v0[21]);
    v70 = sub_21CB5EA14();
    v71 = v0[24];
    v72 = v0[21];
    v73 = v0[22];
    if (v70)
    {
      v74 = v0[19];
      v75 = v0[17];
      (*(v73 + 56))(v74, 1, 1, v0[21]);
      sub_21C98B950(v71, v74);
      sub_21C6EA794(v74, &qword_27CDEC300, &qword_21CBA3ED0);
      (*(v73 + 8))(v71, v72);
      goto LABEL_8;
    }

    (*(v73 + 8))(v0[24], v0[21]);
  }

  v76 = v0[15];
  v0[6] = v0[14];
  v0[7] = v76;
  sub_21C71F3FC();
  sub_21CB85EB4();
  if (v77)
  {
    v78 = v0[21];
    v79 = v0[18];
    sub_21CB80BD4();

    if (v69(v79, 1, v78) == 1)
    {
      sub_21C6EA794(v0[18], &qword_27CDEC300, &qword_21CBA3ED0);
    }

    else
    {
      (*(v0[22] + 32))(v0[23], v0[18], v0[21]);
      v80 = objc_opt_self();
      v81 = sub_21CB80B74();
      v82 = [v80 urlIsPasswordManagerURL_];

      v83 = v0[22];
      v84 = v0[21];
      if (v82)
      {
        v85 = v0[17];
        v86 = v0[23];
        sub_21C98BB78();
        (*(v83 + 8))(v86, v84);
        goto LABEL_8;
      }

      (*(v83 + 8))(v0[23], v0[21]);
    }
  }

  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v87 = v0[15];
  v88 = sub_21CB81C84();
  __swift_project_value_buffer(v88, qword_27CE186E0);

  v89 = sub_21CB81C64();
  v90 = sub_21CB85AF4();

  if (os_log_type_enabled(v89, v90))
  {
    v92 = v0[14];
    v91 = v0[15];
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v95 = v94;
    *v93 = 136315138;
    *(v93 + 4) = sub_21C98E004(v92, v91, &v95);
    _os_log_impl(&dword_21C6E5000, v89, v90, "Unrecognized resource key: %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v94);
    MEMORY[0x21CF16D90](v94, -1, -1);
    MEMORY[0x21CF16D90](v93, -1, -1);
  }

LABEL_8:
  v13 = v0[32];
  v14 = v0[28];
  v15 = v0[29];
  v16 = v0[27];
  v18 = v0[23];
  v17 = v0[24];
  v20 = v0[19];
  v19 = v0[20];
  v21 = v0[18];

  v22 = v0[1];

  return v22();
}

uint64_t PMExtensionCoordinator.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PMExtensionCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21C98DF30(uint64_t a1)
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
  v10[1] = sub_21C702EFC;

  return sub_21C98D190(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21C98E004(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21C98E0D0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21C7A3394(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21C98E0D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21C98E1DC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21CB86114();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21C98E1DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_21C98E228(a1, a2);
  sub_21C98E358(&unk_282E48B10);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_21C98E228(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21C964780(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21CB86114();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21CB85724();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21C964780(v10, 0);
        result = sub_21CB86084();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21C98E358(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_21C98E444(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_21C98E444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF28E8, &unk_21CBB6D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_21C98E564@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_21C98EFB0(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_21CB80904();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_21CB808B4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_21CB80C34();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_21C98E62C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_21C7A34C0(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_21C7A34C0(v6, v5);
    *v3 = xmmword_21CBA6120;
    sub_21C7A34C0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_21CB808C4() && __OFSUB__(v6, sub_21CB808F4()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_21CB80904();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_21CB808A4();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_21C98EAD0(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_21C7A34C0(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_21CBA6120;
    sub_21C7A34C0(0, 0xC000000000000000);
    sub_21CB80BF4();
    result = sub_21C98EAD0(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_21C98E9D0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_21C98EFB0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_21C98F108(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_21C98F184(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_21C98EA64(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_21C98EAD0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_21CB808C4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_21CB808F4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_21CB808E4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_21C98EB84@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_21CB860A4();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21C98EBD4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_21C98ECC8;

  return v6(v2 + 32);
}

uint64_t sub_21C98ECC8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_21C98EDDC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21C98EBD4(a1, v5);
}

uint64_t sub_21C98EE94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C6F35D0;

  return sub_21C6EE100(a1, v5);
}

unint64_t sub_21C98EF4C()
{
  result = qword_27CDF30B8;
  if (!qword_27CDF30B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3098, &qword_21CBB6D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF30B8);
  }

  return result;
}

uint64_t sub_21C98EFB0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21C98F068(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_21CB80904();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_21CB808D4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_21CB80C34();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_21C98F108(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_21CB80904();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_21CB808B4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21CB80C34();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_21C98F184(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_21CB80904();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_21CB808B4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_21C98F208(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v27 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC88, &qword_21CBB6E70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - v10;
  v12 = sub_21CB85CA4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();

  v18 = sub_21C98C72C(a1, a2);
  v20 = v19;
  sub_21CB85C74();
  sub_21C7A34C0(v18, v20);
  (*(v13 + 56))(v11, 0, 1, v12);
  (*(v13 + 32))(v16, v11, v12);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v27[0]);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v22 = v27[0];
  MEMORY[0x28223BE20](v21);
  v27[-2] = v16;
  sub_21C968D04(sub_21C98F5F4, v22, v7);

  v23 = type metadata accessor for PMAccount(0);
  if ((*(*(v23 - 8) + 48))(v7, 1, v23) == 1)
  {
    sub_21C6EA794(v7, &unk_27CDEBE60, &unk_21CB9FF40);
    v24 = 0;
  }

  else
  {
    v24 = *v7;
    v25 = v7[1];

    sub_21C7D4A64(v7);
  }

  (*(v13 + 8))(v16, v12);
  return v24;
}

void *sub_21C98F614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_21C98EA64(sub_21C98F67C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_21C98F6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v9 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for PMAccount(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  v43 = a3;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D8, &qword_21CBB7120);
  MEMORY[0x21CF14A20](v45, v18);
  if (v45[0])
  {
    v40 = a4;
    v41 = a1;
    v46 = MEMORY[0x277D84F90];
    v19 = *(v45[0] + 16);
    if (v19)
    {
      v20 = v45[0] + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v21 = *(v13 + 24);
      v22 = *(v14 + 72);
      do
      {
        sub_21C80EABC(v20, v17, type metadata accessor for PMAccount);
        sub_21C80EABC(&v17[v21], v12, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C7190C0(v12, type metadata accessor for PMAccount.Storage);
          sub_21C7190C0(v17, type metadata accessor for PMAccount);
        }

        else
        {
          v23 = *v12;
          v24 = sub_21C7190C0(v17, type metadata accessor for PMAccount);
          MEMORY[0x21CF15300](v24);
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v39[1] = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_21CB85834();
          }

          sub_21CB85854();
        }

        v20 += v22;
        --v19;
      }

      while (v19);
    }

    a4 = v40;
  }

  v25 = objc_opt_self();
  sub_21C897E98();
  v26 = sub_21CB85814();

  v27 = [v25 alertTitleForFailingToRecoverAccounts_];

  v28 = sub_21CB855C4();
  v30 = v29;

  v45[0] = v28;
  v45[1] = v30;
  sub_21CB858B4();

  v31 = v42;

  v32 = v43;

  v33 = sub_21CB858A4();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v31;
  v34[5] = v32;
  v34[6] = a4;

  v36 = sub_21CB858A4();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = v35;
  v37[4] = v31;
  v37[5] = v32;
  v37[6] = a4;
  sub_21CB84F64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30E0, &qword_21CBB7128);
  sub_21C98FC48();
  sub_21C71F3FC();
  sub_21CB84764();
}

void *sub_21C98FB50@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, BOOL *a4@<X8>)
{
  v8[1] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D8, &qword_21CBB7120);
  result = MEMORY[0x21CF14A20](v8, v5);
  v7 = v8[0];
  if (v8[0])
  {
  }

  *a4 = v7 != 0;
  return result;
}

_BYTE *sub_21C98FBBC(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF30D8, &qword_21CBB7120);
    return sub_21CB84F34();
  }

  return result;
}

void *sub_21C98FC28@<X0>(BOOL *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_21C98FB50(v1[4], v1[5], v1[6], a1);
}

_BYTE *sub_21C98FC38(_BYTE *result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_21C98FBBC(result);
}

unint64_t sub_21C98FC48()
{
  result = qword_27CDF30E8;
  if (!qword_27CDF30E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF30E0, &qword_21CBB7128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF30E8);
  }

  return result;
}

uint64_t sub_21C98FCAC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData;
  swift_beginAccess();
  return sub_21C9909BC(v5 + v3, a1);
}

uint64_t sub_21C98FD74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData;
  swift_beginAccess();
  return sub_21C9909BC(v3 + v4, a2);
}

uint64_t sub_21C98FE3C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_21C9909BC(a1, &v10 - v6);
  v8 = *a2;
  return sub_21C98FED0(v7);
}

uint64_t sub_21C98FED0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData;
  swift_beginAccess();
  sub_21C9909BC(v1 + v7, v6);
  v8 = sub_21C990A2C(v6, a1);
  sub_21C6EA794(v6, &qword_27CDEFFE8, &qword_21CBAE1B0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
    sub_21CB810C4();
  }

  else
  {
    sub_21C9909BC(a1, v6);
    swift_beginAccess();
    sub_21C990D1C(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &qword_27CDEFFE8, &qword_21CBAE1B0);
}

uint64_t sub_21C9900C0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData;
  swift_beginAccess();
  sub_21C990DA8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_21C99012C()
{
  swift_getKeyPath();
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager);
}

uint64_t sub_21C9901D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager);
}

uint64_t sub_21C99028C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810C4();
}

uint64_t sub_21C990358(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager);
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager) = a2;
}

uint64_t sub_21C9903C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C9903F0(v4);
}

uint64_t sub_21C99044C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810D4();

  v4 = *(v2 + *a2);
}

uint64_t sub_21C990504@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
  sub_21CB810D4();

  *a3 = *(v5 + *a2);
}

uint64_t sub_21C9905BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C9905E8(v4);
}

uint64_t sub_21C990610(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C990E18(&qword_27CDF00B8, type metadata accessor for PMCredentialExporter);
    sub_21CB810C4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = *(v2 + *a2);

  v7 = sub_21C714F88(v6, a1);

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + v4);
LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_21C99079C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);
  *(a1 + *a3) = a2;
}

uint64_t sub_21C9907DC()
{
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportedCredentialData, &qword_27CDEFFE8, &qword_21CBAE1B0);
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__dataToExportAfterAlert, &qword_27CDF3158, &qword_21CBB7248);
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager);

  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExport);

  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__accountsToExportAfterAlert);

  v4 = OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter___observationRegistrar;
  v5 = sub_21CB81114();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t keypath_setTm_1(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_21C990978()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMCredentialExporter__exportManager) = *(v0 + 24);
}

uint64_t sub_21C9909BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C990A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB818C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3150, &qword_21CBB7240);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_21C9909BC(a1, &v24 - v15);
  sub_21C9909BC(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_21C9909BC(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_21C990E18(&qword_27CDF00F0, MEMORY[0x277CBA840]);
      v21 = sub_21CB85574();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_21C6EA794(v16, &qword_27CDEFFE8, &qword_21CBAE1B0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v16, &qword_27CDF3150, &qword_21CBB7240);
    v20 = 1;
    return v20 & 1;
  }

  sub_21C6EA794(v16, &qword_27CDEFFE8, &qword_21CBAE1B0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21C990D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C990DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFE8, &qword_21CBAE1B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C990E18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21C990EA8()
{
  sub_21C7225E8(319, &qword_27CDEE2A8, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PMSharingGroup();
    if (v1 <= 0x3F)
    {
      sub_21C7225E8(319, &qword_27CDF3170, &type metadata for PMGroupMember, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21C7226D8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C990FEC()
{
  sub_21C9910A8(319, &qword_27CDF3198, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters);
  if (v0 <= 0x3F)
  {
    sub_21C9910A8(319, &qword_27CDF31A0, MEMORY[0x277CDD848]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C9910A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21C991118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a1;
  v70 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF31A8, &qword_21CBB72E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v68 = v58 - v6;
  v66 = sub_21CB81024();
  v62 = *(v66 - 8);
  v7 = v62[8];
  MEMORY[0x28223BE20](v66);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF31B0, &qword_21CBB72F0);
  v65 = *(v69 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v69);
  v64 = v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3178, &qword_21CBB7260);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v58 - v14;
  v16 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v3;
  sub_21C6EDBAC(v3, v15, &qword_27CDF3178, &qword_21CBB7260);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_21C6EA794(v15, &qword_27CDF3178, &qword_21CBB7260);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF31B8, &unk_21CBB72F8);
    (*(*(v21 - 8) + 16))(v68, v67, v21);
    swift_storeEnumTagMultiPayload();
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF4130, &qword_21CBB1B70);
    v24 = sub_21C6EADEC(&qword_27CDF31C0, &qword_27CDF31B8, &unk_21CBB72F8);
    v25 = sub_21C71F3FC();
    v26 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    v27 = sub_21C87DED8();
    *&v87 = v21;
    *(&v87 + 1) = MEMORY[0x277D837D0];
    *&v88 = v22;
    *(&v88 + 1) = v23;
    *&v89 = &type metadata for PMGroupMember;
    *(&v89 + 1) = v24;
    *&v90 = v25;
    *(&v90 + 1) = v26;
    *&v91 = v27;
    swift_getOpaqueTypeConformance2();
    return sub_21CB83494();
  }

  else
  {
    v61 = v4;
    sub_21C992908(v15, v20, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters);
    v29 = &v20[*(v16 + 28)];
    v30 = v20;
    if (*(v29 + 5))
    {
      v32 = *(v29 + 8);
      v31 = *(v29 + 9);
    }

    else
    {
      v32 = 0;
      v31 = 0xE000000000000000;
    }

    sub_21CB81014();
    sub_21CB81004();
    (v62[1])(v9, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_21CBA0690;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 64) = sub_21C7C0050();
    *(v33 + 32) = v32;
    *(v33 + 40) = v31;
    v34 = sub_21CB85594();
    v36 = v35;
    v66 = v35;

    v78 = v34;
    v79 = v36;
    v37 = *(v30 + 8);
    v38 = *(v30 + 16);
    *&v87 = *v30;
    *(&v87 + 1) = v37;
    LOBYTE(v88) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    v39 = sub_21CB84F54();
    v62 = v58;
    v58[2] = *(&v80 + 1);
    v58[3] = v80;
    v59 = v81;
    v40 = *(v29 + 3);
    v41 = *(v29 + 5);
    v84 = *(v29 + 4);
    v85 = v41;
    v42 = *(v29 + 5);
    v86 = *(v29 + 6);
    v43 = *(v29 + 1);
    v80 = *v29;
    v81 = v43;
    v44 = *(v29 + 3);
    v46 = *v29;
    v45 = *(v29 + 1);
    v82 = *(v29 + 2);
    v83 = v44;
    v75 = v84;
    v76 = v42;
    v77 = *(v29 + 6);
    v71 = v46;
    v72 = v45;
    v73 = v82;
    v74 = v40;
    MEMORY[0x28223BE20](v39);
    v58[1] = v57;
    MEMORY[0x28223BE20](v47);
    v60 = v30;
    sub_21C6EDBAC(&v80, &v87, &qword_27CDECC50, &unk_21CBB52A0);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF31B8, &unk_21CBB72F8);
    v58[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
    v50 = sub_21C6EADEC(&qword_27CDF31C0, &qword_27CDF31B8, &unk_21CBB72F8);
    v51 = sub_21C71F3FC();
    v63 = v51;
    v52 = sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    v53 = sub_21C87DED8();
    v57[2] = v52;
    v57[3] = v53;
    v57[0] = v50;
    v57[1] = v51;
    v54 = v64;
    sub_21CB84714();

    v91 = v75;
    v92 = v76;
    v93 = v77;
    v87 = v71;
    v88 = v72;
    v89 = v73;
    v90 = v74;
    sub_21C6EA794(&v87, &qword_27CDECC50, &unk_21CBB52A0);

    v55 = v65;
    v56 = v69;
    (*(v65 + 16))(v68, v54, v69);
    swift_storeEnumTagMultiPayload();
    *&v71 = v48;
    *(&v71 + 1) = MEMORY[0x277D837D0];
    *&v72 = v58[0];
    *(&v72 + 1) = v49;
    *&v73 = &type metadata for PMGroupMember;
    *(&v73 + 1) = v50;
    *&v74 = v63;
    *(&v74 + 1) = v52;
    *&v75 = v53;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v55 + 8))(v54, v56);
    return sub_21C992844(v60);
  }
}

uint64_t sub_21C9919C4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a3;
  v38 = a2;
  v41 = a4;
  v5 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v36 - v13;
  v15 = sub_21CB81024();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[5];
  v49 = a1[4];
  v50 = v20;
  v51 = a1[6];
  v21 = a1[1];
  v45 = *a1;
  v46 = v21;
  v22 = a1[3];
  v47 = a1[2];
  v48 = v22;
  sub_21CB81014();
  v23 = sub_21CB81004();
  v25 = v24;
  (*(v16 + 8))(v19, v15);
  v43 = v23;
  v44 = v25;
  sub_21CB81ED4();
  v26 = sub_21CB81F14();
  (*(*(v26 - 8) + 56))(v14, 0, 1, v26);
  sub_21C9928A0(v38, v10, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters);
  sub_21C9928A0(v40, v7, type metadata accessor for PMRemoveGroupMemberConfirmationAlert);
  v27 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v28 = (v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v39 + 80) + v28 + 112) & ~*(v39 + 80);
  v30 = swift_allocObject();
  sub_21C992908(v10, v30 + v27, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters);
  v31 = (v30 + v28);
  v32 = v50;
  v31[4] = v49;
  v31[5] = v32;
  v31[6] = v51;
  v33 = v46;
  *v31 = v45;
  v31[1] = v33;
  v34 = v48;
  v31[2] = v47;
  v31[3] = v34;
  sub_21C992908(v7, v30 + v29, type metadata accessor for PMRemoveGroupMemberConfirmationAlert);
  sub_21C7A33F0(&v45, v42);
  sub_21C71F3FC();
  return sub_21CB84DC4();
}

uint64_t sub_21C991DBC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v28 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - v14;
  v16 = sub_21CB858E4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_21C9928A0(a1, v11, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters);
  sub_21C9928A0(a3, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMRemoveGroupMemberConfirmationAlert);
  sub_21CB858B4();
  sub_21C7A33F0(a2, v30);
  v17 = sub_21CB858A4();
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v29 + 80) + v19 + 112) & ~*(v29 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v17;
  *(v21 + 24) = v22;
  sub_21C992908(v11, v21 + v18, type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters);
  v23 = (v21 + v19);
  v24 = a2[5];
  v23[4] = a2[4];
  v23[5] = v24;
  v23[6] = a2[6];
  v25 = a2[1];
  *v23 = *a2;
  v23[1] = v25;
  v26 = a2[3];
  v23[2] = a2[2];
  v23[3] = v26;
  sub_21C992908(v28, v21 + v20, type metadata accessor for PMRemoveGroupMemberConfirmationAlert);
  sub_21C822ECC(0, 0, v15, &unk_21CBB7310, v21);
}

uint64_t sub_21C9920A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3180, &qword_21CBB7268) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  sub_21CB858B4();
  v6[9] = sub_21CB858A4();
  v9 = sub_21CB85874();
  v6[10] = v9;
  v6[11] = v8;

  return MEMORY[0x2822009F8](sub_21C99217C, v9, v8);
}

uint64_t sub_21C99217C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = (v1 + *(type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0) + 32));
  v4 = v3[1];
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v10 = (*v3 + **v3);
  v7 = (*v3)[1];
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_21C99228C;

  return v10(v5, v6);
}

uint64_t sub_21C99228C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_21C992544;
  }

  else
  {
    v7 = sub_21C9923C8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21C9923C8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  *(v0 + 16) = *(v4 + 24);
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 33) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
  sub_21CB84F34();
  v7 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0);
  sub_21C6EDBAC(v3 + *(v7 + 20), v2, &qword_27CDF3180, &qword_21CBB7268);
  v8 = sub_21CB823B4();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v2, 1, v8);
  v11 = *(v0 + 64);
  if (v10 == 1)
  {
    sub_21C6EA794(*(v0 + 64), &qword_27CDF3180, &qword_21CBB7268);
  }

  else
  {
    sub_21CB823A4();
    (*(v9 + 8))(v11, v8);
  }

  v12 = *(v0 + 64);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21C992544()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_21C9925B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = [objc_opt_self() sharedStore];
  if (v12)
  {
    v14 = sub_21CB85584();
  }

  else
  {
    v14 = 0;
  }

  v15 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v16 = a2 + *(v15 + 24);
  sub_21CB85B64();
  v17 = sub_21CB85584();

  LODWORD(v16) = [v13 _hasPersonWithParticipantID_contributedSavedAccountsToGroupWithID_];

  result = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (v16)
  {
    v22 = (a2 + *(v15 + 28));
    if (v22[5])
    {
      v24 = v22[8];
      v23 = v22[9];
    }

    else
    {
      v24 = 0;
      v23 = 0xE000000000000000;
    }

    sub_21CB81014();
    sub_21CB81004();
    (*(v7 + 8))(v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_21CBA0690;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_21C7C0050();
    *(v25 + 32) = v24;
    *(v25 + 40) = v23;
    v26 = sub_21CB85594();
    v28 = v27;

    v30[0] = v26;
    v30[1] = v28;
    sub_21C71F3FC();
    result = sub_21CB84054();
    v20 = v29 & 1;
  }

  *a3 = result;
  a3[1] = v19;
  a3[2] = v20;
  a3[3] = v21;
  return result;
}

uint64_t sub_21C992844(uint64_t a1)
{
  v2 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C9928A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C992908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C992970()
{
  v1 = *(type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80) + 112) & ~*(v4 + 80));

  return sub_21C991DBC(v0 + v2, (v0 + v3), v5);
}

uint64_t sub_21C992A4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for PMRemoveGroupMemberConfirmationAlert(0) - 8);
  v9 = (v7 + *(v8 + 80) + 112) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21C702EFC;

  return sub_21C9920A8(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9);
}

unint64_t sub_21C992BB4()
{
  result = qword_27CDF31C8;
  if (!qword_27CDF31C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF31D0, &qword_21CBB7318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF31B8, &unk_21CBB72F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF4130, &qword_21CBB1B70);
    sub_21C6EADEC(&qword_27CDF31C0, &qword_27CDF31B8, &unk_21CBB72F8);
    sub_21C71F3FC();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    sub_21C87DED8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF31C8);
  }

  return result;
}

void sub_21C992D9C()
{
  v1 = v0;
  v2 = sub_21CB80DD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21C993E94(v1, v10, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v10;
  if (EnumCaseMultiPayload == 1)
  {
    v13 = v10[1];
    v14 = v10[2];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    (*(v3 + 32))(v6, v10 + *(v15 + 64), v2);
    MEMORY[0x21CF15F90](1);
    sub_21CB85DE4();
    sub_21CB854C4();

    sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578]);
    sub_21CB85494();

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    MEMORY[0x21CF15F90](0);
    sub_21CB85DE4();
  }
}

uint64_t sub_21C992FC8()
{
  sub_21CB86484();
  sub_21C992D9C();
  return sub_21CB864D4();
}

uint64_t sub_21C99300C()
{
  sub_21CB86484();
  sub_21C992D9C();
  return sub_21CB864D4();
}

uint64_t sub_21C99304C(uint64_t a1)
{
  sub_21CB86484();
  v3 = *v1;
  v4 = v1[1];
  sub_21CB854C4();
  v5 = v1[2];
  v6 = v1[3];
  sub_21CB854C4();
  v7 = *(a1 + 24);
  sub_21CB80DD4();
  sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578]);
  sub_21CB85494();
  return sub_21CB864D4();
}

uint64_t sub_21C993100(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_21CB854C4();
  v6 = v2[2];
  v7 = v2[3];
  sub_21CB854C4();
  v8 = *(a2 + 24);
  sub_21CB80DD4();
  sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578]);
  return sub_21CB85494();
}

uint64_t sub_21C993198(uint64_t a1, uint64_t a2)
{
  sub_21CB86484();
  v4 = *v2;
  v5 = v2[1];
  sub_21CB854C4();
  v6 = v2[2];
  v7 = v2[3];
  sub_21CB854C4();
  v8 = *(a2 + 24);
  sub_21CB80DD4();
  sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578]);
  sub_21CB85494();
  return sub_21CB864D4();
}

uint64_t sub_21C993248(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);

  return sub_21CB80D84();
}

uint64_t sub_21C99337C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C9933C4()
{
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PMGeneratedPassword(0);
  sub_21C993E94(v0 + *(v10 + 20), v9, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v9;
  if (EnumCaseMultiPayload == 1)
  {
    v13 = *(v9 + 2);

    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
    v15 = [v12 host];
    v16 = sub_21CB855C4();

    v17 = sub_21CB80DD4();
    (*(*(v17 - 8) + 8))(&v9[v14], v17);
  }

  else
  {
    v18 = [*v9 protectionSpace];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 host];

      if (!v20)
      {
        sub_21CB855C4();
        v20 = sub_21CB85584();
      }

      v21 = [v20 safari_highLevelDomainForPasswordManager];

      v16 = sub_21CB855C4();
    }

    else
    {
      sub_21CB81014();
      v16 = sub_21CB81004();

      (*(v2 + 8))(v5, v1);
    }
  }

  return v16;
}

uint64_t sub_21C993684()
{
  v1 = sub_21CB80F24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB80DD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = type metadata accessor for PMGeneratedPassword(0);
  sub_21C993E94(v0 + *(v18 + 20), v9, type metadata accessor for PMGeneratedPassword.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *v9;
  if (EnumCaseMultiPayload == 1)
  {

    v21 = *(v9 + 2);

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30);
    (*(v11 + 32))(v17, &v9[*(v22 + 64)], v10);
  }

  else
  {
    v23 = [*v9 generationDate];
    sub_21CB80D94();
  }

  v24 = [objc_opt_self() currentCalendar];
  sub_21CB80ED4();

  LOBYTE(v24) = sub_21CB80E84();
  (*(v2 + 8))(v5, v1);
  if (v24)
  {
    v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v25 setDateStyle_];
    [v25 setTimeStyle_];
    [v25 setDoesRelativeDateFormatting_];
    v26 = sub_21CB80D24();
    v27 = [v25 stringFromDate_];

    v28 = sub_21CB855C4();
    (*(v11 + 8))(v17, v10);
  }

  else
  {
    v29 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
    [v29 setUnitsStyle_];
    [v29 setDateTimeStyle_];
    v30 = sub_21CB80D24();
    sub_21CB80DA4();
    v31 = sub_21CB80D24();
    v32 = *(v11 + 8);
    v32(v14, v10);
    v33 = [v29 localizedStringForDate:v30 relativeToDate:v31];

    v28 = sub_21CB855C4();
    v32(v17, v10);
  }

  return v28;
}

uint64_t sub_21C993AB8(uint64_t a1)
{
  v3 = v1;
  sub_21CB86484();
  v4 = *v1;
  v5 = v1[1];
  sub_21CB854C4();
  v6 = v1[2];
  v7 = v1[3];
  sub_21CB854C4();
  v8 = *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
  sub_21CB80DD4();
  sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578]);
  sub_21CB85494();
  v9 = v3 + *(a1 + 20);
  sub_21C992D9C();
  return sub_21CB864D4();
}

void sub_21C993B88(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  sub_21CB854C4();
  v7 = v2[2];
  v8 = v2[3];
  sub_21CB854C4();
  v9 = *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
  sub_21CB80DD4();
  sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578]);
  sub_21CB85494();
  v10 = v4 + *(a2 + 20);
  sub_21C992D9C();
}

uint64_t sub_21C993C44(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_21CB86484();
  v5 = *v2;
  v6 = v2[1];
  sub_21CB854C4();
  v7 = v2[2];
  v8 = v2[3];
  sub_21CB854C4();
  v9 = *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
  sub_21CB80DD4();
  sub_21C99337C(&qword_27CDEC280, MEMORY[0x277CC9578]);
  sub_21CB85494();
  v10 = v4 + *(a2 + 20);
  sub_21C992D9C();
  return sub_21CB864D4();
}

uint64_t sub_21C993D44(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
  if ((sub_21CB80D84() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a3 + 20);

  return sub_21C993EFC(a1 + v9, a2 + v9);
}

uint64_t sub_21C993E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C993EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB80DD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v47 = &v42 - v9;
  v10 = type metadata accessor for PMGeneratedPassword.Storage(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v42 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3230, &qword_21CBB74B8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v42 - v19;
  v22 = (&v42 + *(v21 + 56) - v19);
  sub_21C993E94(a1, &v42 - v19, type metadata accessor for PMGeneratedPassword.Storage);
  sub_21C993E94(a2, v22, type metadata accessor for PMGeneratedPassword.Storage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21C993E94(v20, v16, type metadata accessor for PMGeneratedPassword.Storage);
    v36 = *v16;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = *v22;
      sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
      v38 = sub_21CB85DD4();

LABEL_20:
      sub_21C9943C8(v20);
      return v38 & 1;
    }

    goto LABEL_13;
  }

  sub_21C993E94(v20, v13, type metadata accessor for PMGeneratedPassword.Storage);
  v24 = *v13;
  v23 = v13[1];
  v25 = v13[2];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB570, &qword_21CBA8A30) + 64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v13 + v26, v4);

LABEL_13:
    sub_21C994360(v20);
    goto LABEL_17;
  }

  v45 = v25;
  v27 = *v22;
  v42 = v22[1];
  v43 = v23;
  v44 = v22[2];
  v28 = *(v5 + 32);
  v29 = v13 + v26;
  v30 = v47;
  v28(v47, v29, v4);
  v31 = v22 + v26;
  v32 = v46;
  v28(v46, v31, v4);
  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  v33 = sub_21CB85DD4();

  if (v33)
  {
    if (v43 == v42 && v45 == v44)
    {

LABEL_19:
      v38 = sub_21CB80D84();
      v40 = *(v5 + 8);
      v40(v32, v4);
      v40(v30, v4);
      goto LABEL_20;
    }

    v35 = sub_21CB86344();

    if (v35)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v39 = *(v5 + 8);
  v39(v32, v4);
  v39(v30, v4);
  sub_21C9943C8(v20);
LABEL_17:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_21C994360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3230, &qword_21CBB74B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C9943C8(uint64_t a1)
{
  v2 = type metadata accessor for PMGeneratedPassword.Storage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_21C994440@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v7 = v1;
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1);
  sub_21CB810D4();

  v3 = v1[2];
  v7 = v1[1];
  v8[0] = v3;
  *(v8 + 11) = *(v1 + 43);
  sub_21C82EA84(&v7, &v6);
  v4 = v8[0];
  *a1 = v7;
  a1[1] = v4;
  result = *(v8 + 11);
  *(a1 + 27) = *(v8 + 11);
  return result;
}

uint64_t sub_21C99450C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v9 = v3;
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1);
  sub_21CB810D4();

  v4 = v3[2];
  v5 = *(v3 + 43);
  v9 = v3[1];
  v10[0] = v4;
  *(v10 + 11) = v5;
  *(a2 + 27) = v5;
  v6 = v3[2];
  *a2 = v3[1];
  a2[1] = v6;
  return sub_21C82EA84(&v9, &v8);
}

uint64_t sub_21C9945D4(__int128 *a1, uint64_t *a2)
{
  v4 = *a1;
  *v5 = a1[1];
  *&v5[11] = *(a1 + 27);
  v2 = *a2;
  swift_getKeyPath();
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1);
  sub_21CB810C4();
}

uint64_t sub_21C9946B0()
{
  swift_getKeyPath();
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1);
  sub_21CB810D4();

  return *(v0 + 59);
}

uint64_t sub_21C994750@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1);
  sub_21CB810D4();

  *a2 = *(v3 + 59);
  return result;
}

uint64_t sub_21C9947F8(unsigned __int8 a1)
{
  v3 = *(v1 + 59);
  KeyPath = swift_getKeyPath();
  if (v3 == a1)
  {
    v7[0] = v1;
    sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1);
    sub_21CB810D4();

    sub_21C997CC8(*(v1 + 59), v7);
    v5 = swift_getKeyPath();
    MEMORY[0x28223BE20](v5);
    sub_21CB810C4();
    sub_21C85F75C(v7);
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    v7[0] = v1;
    sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1);
    sub_21CB810C4();
  }
}

uint64_t sub_21C9949FC(uint64_t a1, char a2)
{
  *(a1 + 59) = a2;
  swift_getKeyPath();
  v4[0] = a1;
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1);
  sub_21CB810D4();

  sub_21C997CC8(*(a1 + 59), v4);
  swift_getKeyPath();
  v4[7] = a1;
  sub_21CB810C4();
  sub_21C85F75C(v4);
}

uint64_t sub_21C994B30@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1);
  sub_21CB810D4();

  if (*(v1 + 59))
  {
    if (*(v1 + 59) == 1)
    {
      v3 = *MEMORY[0x277CBA878];
      v4 = sub_21CB81A04();
      (*(*(v4 - 8) + 104))(a1, v3, v4);
      v5 = MEMORY[0x277CBA668];
    }

    else
    {
      *a1 = 0x61702E656C707061;
      a1[1] = 0xEF7364726F777373;
      v5 = MEMORY[0x277CBA680];
    }

    v6 = *v5;
    v7 = sub_21CB813C4();
    (*(*(v7 - 8) + 104))(a1, v6, v7);
  }

  else
  {
    sub_21CB813A4();
  }

  v8 = sub_21CB813C4();
  return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
}

uint64_t sub_21C994CEC()
{
  v1 = *(v0 + 3);
  v3 = *(v0 + 5);
  v2 = *(v0 + 6);

  v4 = OBJC_IVAR____TtCE17PasswordManagerUICSo56PMSafariAutoFillStrongPasswordIntroductionViewController21ConfigurationProvider___observationRegistrar;
  v5 = sub_21CB81114();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_21C994DAC@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  *&v8 = v3;
  sub_21C99857C(&qword_27CDF32F8, _s21ConfigurationProviderCMa_1);
  sub_21CB810D4();

  v4 = v3[2];
  v8 = v3[1];
  v9[0] = v4;
  *(v9 + 11) = *(v3 + 43);
  sub_21C82EA84(&v8, &v7);
  v5 = v9[0];
  *a1 = v8;
  a1[1] = v5;
  result = *(v9 + 11);
  *(a1 + 27) = *(v9 + 11);
  return result;
}

uint64_t sub_21C994E9C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PMOsloBadge(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21C994F08()
{
  swift_getKeyPath();
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa);
  sub_21CB810D4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_21C994FAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa);
  sub_21CB810D4();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_21C995058(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa);
    sub_21CB810C4();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  type metadata accessor for PMSafariAutoFillStrongPasswordIntroductionViewController(a1);
  v3 = v2;
  v4 = sub_21CB85DD4();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_21C9951EC()
{
  swift_getKeyPath();
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa);
  sub_21CB810D4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_21C995290@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa);
  sub_21CB810D4();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_21C99533C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa);
  sub_21CB810C4();
}

uint64_t sub_21C995418(uint64_t a1)
{
  swift_getKeyPath();
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa);
  sub_21CB810D4();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    sub_21CB810D4();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = [Strong strongPasswordIntroductionViewController:v3 automaticStrongPasswordWithFormat:a1];
      swift_unknownObjectRelease();
      v6 = sub_21CB855C4();

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_21C995574()
{
  MEMORY[0x21CF16E70](v0 + 16);
  sub_21C7B0A14(v0 + 24);
  v1 = OBJC_IVAR____TtCE17PasswordManagerUICSo56PMSafariAutoFillStrongPasswordIntroductionViewController16PasswordProvider___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t static PMSafariAutoFillStrongPasswordIntroductionViewController.shouldShowView.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata shouldShowLoginIntroduction])
  {
    return 1;
  }

  else
  {
    return [ObjCClassFromMetadata shouldShowStrongPasswordIntroduction];
  }
}

uint64_t static PMSafariAutoFillStrongPasswordIntroductionViewController.shouldShowViews(in:)(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return [swift_getObjCClassFromMetadata() shouldShowLoginIntroduction];
    }

    if (a1 == 1)
    {
      return [swift_getObjCClassFromMetadata() shouldShowStrongPasswordIntroduction];
    }

    goto LABEL_15;
  }

  if (a1 == 2)
  {
    return 1;
  }

  if (a1 != 3)
  {
LABEL_15:
    type metadata accessor for PMSafariAutoFillStrongPasswordIntroductionViewControllerMode(0);
    result = sub_21CB86374();
    __break(1u);
    return result;
  }

  if (PMOnboardingIsICloudKeychainSyncingEnabled())
  {
    return 0;
  }

  v2 = [objc_opt_self() pm_defaults];
  v3 = [v2 BOOLForKey_];

  if (!v3)
  {
    return 1;
  }

  return sub_21C997F0C();
}

id static PMSafariAutoFillStrongPasswordIntroductionViewController.shouldShowLoginIntroduction.getter()
{
  result = [objc_opt_self() isPasswordsAppInstalled];
  if (result)
  {
    if (PMOnboardingIsPasswordAutoFillEnabled())
    {
      return 0;
    }

    v1 = objc_opt_self();
    v2 = [v1 pm_defaults];
    v3 = [v2 BOOLForKey_];

    if (v3)
    {
      return 0;
    }

    v4 = [v1 pm_defaults];
    v5 = [v4 BOOLForKey_];

    if (v5 && (sub_21C997F0C() & 1) == 0)
    {
      return 0;
    }

    else
    {
      return ([swift_getObjCClassFromMetadata() hasThirdPartyPasswordManagerEnabledAndPasswordsAppDisabledForAutoFill] ^ 1);
    }
  }

  return result;
}

id static PMSafariAutoFillStrongPasswordIntroductionViewController.shouldShowStrongPasswordIntroduction.getter()
{
  result = [objc_opt_self() isPasswordsAppInstalled];
  if (result)
  {
    v1 = objc_opt_self();
    v2 = [v1 pm_defaults];
    v3 = [v2 BOOLForKey_];

    if (v3 && ((PMOnboardingIsICloudKeychainSyncingEnabled() & 1) != 0 || (v4 = [v1 pm_defaults], v5 = objc_msgSend(v4, sel_BOOLForKey_, @"hasShownSafariAutoFillICloudKeychainSyncingView"), v4, v5) && (sub_21C997F0C() & 1) == 0))
    {
      return 0;
    }

    else
    {
      return ([swift_getObjCClassFromMetadata() hasThirdPartyPasswordManagerEnabledAndPasswordsAppDisabledForAutoFill] ^ 1);
    }
  }

  return result;
}

id static PMSafariAutoFillStrongPasswordIntroductionViewController.shouldShowStrongPasswordSavedView.getter()
{
  result = [objc_opt_self() isPasswordsAppInstalled];
  if (result)
  {
    return (PMOnboardingHasShownStrongPasswordSavedView() ^ 1);
  }

  return result;
}

uint64_t static PMSafariAutoFillStrongPasswordIntroductionViewController.shouldShowICloudKeychainSyncingView.getter()
{
  v0 = [objc_opt_self() pm_defaults];
  v1 = [v0 BOOLForKey_];

  if (v1)
  {
    return 0;
  }

  else
  {
    return PMOnboardingIsICloudKeychainSyncingEnabled() ^ 1;
  }
}

void PMSafariAutoFillStrongPasswordIntroductionViewController.contentSize.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 intrinsicContentSize];
  }

  else
  {
    __break(1u);
  }
}

id sub_21C995CEC(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_mode] = a1;
  v3 = sub_21C9983F8(a1);
  v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_viewStyle] = v3;
  v4 = *&v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_configurationProvider];
  sub_21C9947F8(v3);
  result = [v2 delegate];
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      [v6 strongPasswordIntroductionViewControllerDidUpdateContent_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21C995E40()
{
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_passwordProvider);
  swift_unknownObjectWeakLoadStrong();
  swift_getKeyPath();
  sub_21C99857C(&unk_27CDF3300, _s16PasswordProviderCMa);
  sub_21CB810C4();

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

char *sub_21C995F4C(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v3 = sub_21C9983F8(a1);
  v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_viewStyle] = v3;
  *&v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_mode] = a1;
  v4 = _s21ConfigurationProviderCMa_1(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_21CB81104();
  *(v7 + 59) = v3;
  sub_21C997CC8(v3, &v18);
  v8 = v19[0];
  *(v7 + 16) = v18;
  *(v7 + 32) = v8;
  *(v7 + 43) = *(v19 + 11);
  *&v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_configurationProvider] = v7;
  v9 = _s16PasswordProviderCMa(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_21CB81104();
  *&v1[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_passwordProvider] = v12;
  v17.receiver = v1;
  v17.super_class = PMSafariAutoFillStrongPasswordIntroductionViewController;
  v13 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  v14 = *&v13[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_passwordProvider];
  v15 = v13;

  sub_21C995058(v13);

  return v15;
}

id PMSafariAutoFillStrongPasswordIntroductionViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void PMSafariAutoFillStrongPasswordIntroductionViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  sub_21CB861C4();
  __break(1u);
}

Swift::Void __swiftcall PMSafariAutoFillStrongPasswordIntroductionViewController.loadView()()
{
  v1 = *&v0[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_configurationProvider];
  v2 = *&v0[OBJC_IVAR___PMSafariAutoFillStrongPasswordIntroductionViewController_passwordProvider];
  v10[3] = _s16PasswordProviderCMa(0);
  v10[4] = &off_282E538A8;
  v10[0] = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_21C6EDBAC(v12, v11, &unk_27CDFA2C0, &unk_21CBA68A0);
  v6 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDFA2C0, &unk_21CBA68A0);
  sub_21CB84D44();
  sub_21C6EA794(v12, &unk_27CDFA2C0, &unk_21CBA68A0);
  v14[0] = sub_21C9981F4;
  v14[1] = v3;
  v14[2] = sub_21C998218;
  v14[3] = v4;
  v14[8] = v1;
  v14[9] = 0;
  sub_21C6EA794(v15, &qword_27CDF3260, &qword_21CBAF450);
  v15[5] = 0;
  sub_21C6EDBAC(v10, v15, &unk_27CDFA2C0, &unk_21CBA68A0);
  v14[4] = sub_21C998220;
  v14[5] = v5;
  v14[6] = 0;
  v14[7] = 0;
  v7 = objc_opt_self();
  v15[6] = [v7 biometryType];
  LOBYTE(v7) = [v7 isPad];
  sub_21C6EA794(v10, &unk_27CDFA2C0, &unk_21CBA68A0);
  v16 = v7;
  sub_21C6EDBAC(v14, v10, &qword_27CDF3268, &qword_21CBB74C0);
  v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3270, &qword_21CBB74C8));
  v9 = sub_21CB827D4();
  sub_21C6EA794(v14, &qword_27CDF3268, &qword_21CBB74C0);
  [v6 setView_];
}
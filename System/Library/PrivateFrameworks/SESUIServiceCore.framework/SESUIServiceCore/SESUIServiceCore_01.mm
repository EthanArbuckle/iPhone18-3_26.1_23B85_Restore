void sub_26297BA70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_262996DC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26297BAC4()
{
  if (!qword_27FF31B40)
  {
    v0 = sub_262996C44();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF31B40);
    }
  }
}

uint64_t sub_26297BB14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_262996C14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26297BB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26297BBBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B10, &qword_262998D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26297BDE4()
{
  sub_262997004();
  sub_262996D64();

  return sub_262997044();
}

uint64_t sub_26297BED8()
{
  sub_262997004();
  sub_262996D64();

  return sub_262997044();
}

unint64_t LocalizedStringTable.rawValue.getter()
{
  v1 = 0xD000000000000015;
  v2 = *v0;
  v3 = 0xD00000000000001ALL;
  v4 = 0xD000000000000019;
  if (v2 == 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t formattedLocalizedString(for:table:_:)(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v7 = *a3;

  v8 = sub_26297C2EC(a4, a1, a2, v7);

  return v8;
}

SESUIServiceCore::LocalizedStringTable_optional __swiftcall LocalizedStringTable.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_262996ED4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26297C14C()
{
  *v0;
  *v0;
  *v0;
  sub_262996D64();
}

void sub_26297C23C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = *v1;
  v4 = "ESimTypes_Localizable";
  v5 = 0xD00000000000001ALL;
  v6 = "UsageFrequency_Localizable";
  v7 = 0xD000000000000019;
  if (v3 == 4)
  {
    v7 = 0xD000000000000016;
  }

  else
  {
    v6 = "Functional_Localizable";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "SEStorageManagement_Localizable";
  if (v3 == 1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v8 = "AppletTypes_Localizable";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
    v9 = "viennaSecondaryCategory";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t sub_26297C2EC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v33._countAndFlagsBits = a2;
  v33._object = a3;
  sub_262996E74();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v6 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_26:
    v27 = sub_262996E64();
    v34 = a4;
    localizedString(for:table:)(v33, &v34);
    v28 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v29 = sub_262996D34();

    v30 = [v28 initWithFormat:v29 arguments:v27];

    v31 = sub_262996D44();

    return v31;
  }

  v8 = 0;
  v9 = a1 + 32;
  while (1)
  {
    v10 = (v9 + 40 * v8);
    v11 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    result = sub_262997054();
    v13 = *v6;
    v14 = *(result + 16);
    v15 = __OFADD__(*v6, v14);
    v16 = *v6 + v14;
    if (v15)
    {
      break;
    }

    v17 = v5[4];
    if (v17 >= v16)
    {
      goto LABEL_18;
    }

    if (v17 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v18 = v5[5];
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    v5[4] = v16;
    if ((v16 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v19 = result;
    v20 = swift_slowAlloc();
    v21 = v20;
    v5[5] = v20;
    if (v18)
    {
      if (v20 != v18 || v20 >= &v18[8 * v13])
      {
        memmove(v20, v18, 8 * v13);
      }

      sub_262996E54();
      result = v19;
LABEL_18:
      v21 = v5[5];
      if (!v21)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v19;
    if (!v21)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v23 = *(result + 16);
    if (v23)
    {
      v24 = (result + 32);
      v25 = *v6;
      while (1)
      {
        v26 = *v24++;
        *&v21[8 * v25] = v26;
        v25 = *v6 + 1;
        if (__OFADD__(*v6, 1))
        {
          break;
        }

        *v6 = v25;
        if (!--v23)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v8 == v7)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_26297C540()
{
  result = qword_27FF31B68;
  if (!qword_27FF31B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31B68);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ESimProfile.ctUserLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SEStorageManagementViewModel.ESimProfile.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SEStorageManagementViewModel.ESimProfile.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_262996B24();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t SEStorageManagementViewModel.ESimProfile.init(iccid:ctUserLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!a4)
  {

    result = 0;
    a2 = 0;
    a3 = 0;
  }

  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = 0;
  return result;
}

BOOL static SEStorageManagementViewModel.ESimProfile.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_262996FD4()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_262996FD4()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26297C788()
{
  v1 = 0x614C726573557463;
  if (*v0 != 1)
  {
    v1 = 0x6567617375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6469636369;
  }
}

uint64_t sub_26297C7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26297D37C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26297C80C(uint64_t a1)
{
  v2 = sub_26297CA44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26297C848(uint64_t a1)
{
  v2 = sub_26297CA44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ESimProfile.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B70, &qword_262998EE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[0] = v1[3];
  v15[1] = v10;
  v11 = v1[4];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26297CA44();
  sub_262997074();
  v18 = 0;
  v13 = v15[2];
  sub_262996F84();
  if (!v13)
  {
    v17 = 1;
    sub_262996F84();
    v16 = 2;
    sub_262996FA4();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26297CA44()
{
  result = qword_27FF31B78;
  if (!qword_27FF31B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31B78);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ESimProfile.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[4];
  sub_262996D64();
  sub_262996D64();
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  return MEMORY[0x26672E320](*&v6);
}

uint64_t SEStorageManagementViewModel.ESimProfile.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[4];
  sub_262997004();
  sub_262996D64();
  sub_262996D64();
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  MEMORY[0x26672E320](*&v6);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ESimProfile.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B80, &qword_262998EE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26297CA44();
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v11 = sub_262996F14();
  v13 = v12;
  v21 = v11;
  v23 = 1;
  v19 = sub_262996F14();
  v20 = v14;
  v22 = 2;
  sub_262996F34();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  v17 = v20;
  *a2 = v21;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v17;
  a2[4] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26297CE08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_262996B24();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_26297CE74()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

BOOL sub_26297CED4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_262996FD4()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_262996FD4()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26297CF78()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[4];
  sub_262996D64();
  sub_262996D64();
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  return MEMORY[0x26672E320](*&v6);
}

uint64_t sub_26297CFE0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[4];
  sub_262997004();
  sub_262996D64();
  sub_262996D64();
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  MEMORY[0x26672E320](*&v6);
  return sub_262997044();
}

unint64_t sub_26297D070(void *a1)
{
  a1[1] = sub_262975568();
  a1[2] = sub_262974948();
  a1[3] = sub_26297D0B0();
  result = sub_26297D104();
  a1[4] = result;
  return result;
}

unint64_t sub_26297D0B0()
{
  result = qword_27FF31B88;
  if (!qword_27FF31B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31B88);
  }

  return result;
}

unint64_t sub_26297D104()
{
  result = qword_27FF31B90;
  if (!qword_27FF31B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31B90);
  }

  return result;
}

unint64_t sub_26297D15C()
{
  result = qword_27FF31B98;
  if (!qword_27FF31B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31B98);
  }

  return result;
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

uint64_t sub_26297D1C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26297D20C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26297D278()
{
  result = qword_27FF31BA0;
  if (!qword_27FF31BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31BA0);
  }

  return result;
}

unint64_t sub_26297D2D0()
{
  result = qword_27FF31BA8;
  if (!qword_27FF31BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31BA8);
  }

  return result;
}

unint64_t sub_26297D328()
{
  result = qword_27FF31BB0;
  if (!qword_27FF31BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31BB0);
  }

  return result;
}

uint64_t sub_26297D37C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6469636369 && a2 == 0xE500000000000000;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C726573557463 && a2 == 0xEB000000006C6562 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262996FD4();

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

uint64_t SEStorageManagementViewModel.WalletUsageCategory.localizedTitle.getter()
{
  v1 = v0;
  v2 = sub_262996C14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629818FC(v1, v10, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  if ((*(v3 + 48))(v10, 2, v2))
  {
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v13 = sub_262996D34();
    v14 = sub_262996D34();
    v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

    v16 = sub_262996D44();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v16 = CredentialType.localizedDescription.getter();
    (*(v3 + 8))(v6, v2);
  }

  return v16;
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.entries.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0) + 20));
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.passCount.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0) + 20));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = *(v1 + 20);
    v10 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    while (1)
    {
      result = sub_2629818FC(v10, v5, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      v13 = *(*&v5[v9] + 16);
      v14 = __OFADD__(v8, v13);
      v8 += v13;
      if (v14)
      {
        break;
      }

      sub_262981964(v5, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.allDeletable.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v12 = *(v0 + *(result + 20));
  v21 = *(v12 + 16);
  if (v21)
  {
    v13 = 0;
    v19 = v7;
    v20 = v6;
    while (2)
    {
      if (v13 >= *(v12 + 16))
      {
LABEL_13:
        __break(1u);
        return result;
      }

      result = sub_2629818FC(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v10, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      v14 = 0;
      ++v13;
      v15 = *&v10[*(v6 + 20)];
      v16 = *(v15 + 16);
      while (v16 != v14)
      {
        if (v14 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_13;
        }

        sub_2629818FC(v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14++, v5, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        v17 = v5[*(v1 + 36)];
        result = sub_262981964(v5, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        if ((v17 & 1) == 0)
        {
          sub_262981964(v10, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
          return 0;
        }
      }

      result = sub_262981964(v10, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      v6 = v20;
      v7 = v19;
      if (v13 != v21)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.init(identifier:entries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2629819C4(a1, a3);
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_26297DC10()
{
  if (*v0)
  {
    result = 0x73656972746E65;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_26297DC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_262996FD4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262996FD4();

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

uint64_t sub_26297DD40(uint64_t a1)
{
  v2 = sub_262981A28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26297DD7C(uint64_t a1)
{
  v2 = sub_262981A28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31BB8, &qword_262999160);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262981A28();
  sub_262997074();
  v14 = 0;
  type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  sub_262981A7C(&qword_27FF31BC8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  sub_262996FB4();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0) + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31BD0, &qword_262999168);
    sub_262981AC4(&qword_27FF31BD8, &qword_27FF31BE0);
    sub_262996FB4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629818FC(v2, v12, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v13 = (*(v5 + 48))(v12, 2, v4);
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    MEMORY[0x26672E300](v14);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298]);
    sub_262996D04();
    (*(v5 + 8))(v8, v4);
  }

  v15 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  return sub_262965F2C(a1, *(v2 + *(v15 + 20)));
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.hashValue.getter()
{
  v1 = v0;
  v2 = sub_262996C14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_262997004();
  sub_2629818FC(v1, v10, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    MEMORY[0x26672E300](v12);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298]);
    sub_262996D04();
    (*(v3 + 8))(v6, v2);
  }

  v13 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  sub_262965F2C(v16, *(v1 + *(v13 + 20)));
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31BE8, &unk_262999170);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262981A28();
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v22;
  v17 = v14;
  v27 = 0;
  sub_262981A7C(&qword_27FF31BF0, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v18 = v23;
  sub_262996F44();
  sub_2629819C4(v24, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31BD0, &qword_262999168);
  v26 = 1;
  sub_262981AC4(&qword_27FF31BF8, &qword_27FF31C00);
  sub_262996F44();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v25;
  sub_2629818FC(v17, v21, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262981964(v17, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
}

double SEStorageManagementViewModel.WalletUsageCategory.usage.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0) + 20));
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 0.0;
  }

  v8 = *(v1 + 28);
  v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v10 = *(v2 + 72);
  v11 = 0.0;
  do
  {
    sub_2629818FC(v9, v5, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    v12 = *&v5[v8];
    sub_262981964(v5, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    v11 = v11 + v12;
    v9 += v10;
    --v7;
  }

  while (v7);
  return v11;
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v61 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v60 = *(v61 - 8);
  v2 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v59 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v59 - v13;
  v15 = sub_262996B24();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v80 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v78 = &v59 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v79 = &v59 - v23;
  MEMORY[0x28223BE20](v22);
  v69 = &v59 - v24;
  v25 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v72 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v1 + *(type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0) + 20));
  v68 = *(v29 + 16);
  if (v68)
  {
    v30 = 0;
    v67 = v29 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v31 = *(v25 + 20);
    v65 = *(v26 + 72);
    v66 = v31;
    v82 = (v16 + 48);
    v83 = (v16 + 32);
    v77 = v16 + 16;
    v73 = v16 + 8;
    v62 = (v16 + 56);
    v70 = MEMORY[0x277D84F90];
    v74 = v4;
    v32 = v16;
    v81 = v16;
    v63 = v14;
    v64 = v12;
    while (1)
    {
      v71 = v30;
      v33 = v72;
      sub_2629818FC(v67 + v65 * v30, v72, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      v34 = *(v33 + v66);
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = *(v61 + 32);
        v37 = v34 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
        v38 = *(v60 + 72);
        v39 = MEMORY[0x277D84F90];
        do
        {
          sub_2629818FC(v37, v4, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
          sub_262967904(&v4[v36], v9);
          sub_262981964(v4, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
          if ((*v82)(v9, 1, v15) == 1)
          {
            sub_2629737D4(v9, &qword_27FF314D0, &qword_262997510);
          }

          else
          {
            v40 = *v83;
            (*v83)(v80, v9, v15);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_2629658A0(0, *(v39 + 2) + 1, 1, v39);
            }

            v42 = *(v39 + 2);
            v41 = *(v39 + 3);
            if (v42 >= v41 >> 1)
            {
              v39 = sub_2629658A0(v41 > 1, v42 + 1, 1, v39);
            }

            *(v39 + 2) = v42 + 1;
            v32 = v81;
            v40(&v39[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v81 + 72) * v42], v80, v15);
            v4 = v74;
          }

          v37 += v38;
          --v35;
        }

        while (v35);
      }

      else
      {
        v39 = MEMORY[0x277D84F90];
      }

      v43 = *(v39 + 2);
      if (v43)
      {
        v44 = &v39[(*(v32 + 80) + 32) & ~*(v32 + 80)];
        v75 = *(v32 + 16);
        v76 = v44;
        result = v75(v79);
        v46 = v78;
        if (v43 != 1)
        {
          v54 = 1;
          while (1)
          {
            v55 = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              break;
            }

            (v75)(v46, &v76[*(v32 + 72) * v54], v15);
            sub_262981A7C(&qword_27FF31600, MEMORY[0x277CC9578]);
            v56 = v79;
            v57 = sub_262996D14();
            v32 = v81;
            v58 = *(v81 + 8);
            if (v57)
            {
              v58(v56, v15);
              result = (*v83)(v56, v46, v15);
            }

            else
            {
              result = (v58)(v46, v15);
            }

            ++v54;
            v46 = v78;
            if (v55 == v43)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
          return result;
        }

LABEL_18:
        v47 = v64;
        (*v83)(v64, v79, v15);
        (*v62)(v47, 0, 1, v15);
      }

      else
      {
        v47 = v64;
        (*v62)(v64, 1, 1, v15);
      }

      v48 = v63;
      sub_262963C48(v47, v63);
      sub_262981964(v72, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      if ((*v82)(v48, 1, v15) == 1)
      {
        sub_2629737D4(v48, &qword_27FF314D0, &qword_262997510);
      }

      else
      {
        v49 = *v83;
        (*v83)(v69, v48, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_2629658A0(0, *(v70 + 2) + 1, 1, v70);
        }

        v51 = *(v70 + 2);
        v50 = *(v70 + 3);
        if (v51 >= v50 >> 1)
        {
          v70 = sub_2629658A0(v50 > 1, v51 + 1, 1, v70);
        }

        v52 = v69;
        v53 = v70;
        *(v70 + 2) = v51 + 1;
        v32 = v81;
        v49(&v53[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v81 + 72) * v51], v52, v15);
      }

      v30 = v71 + 1;
      if (v71 + 1 == v68)
      {
        goto LABEL_33;
      }
    }
  }

  v70 = MEMORY[0x277D84F90];
LABEL_33:
  sub_262963D20(v70, v59);
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.id.getter()
{
  type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  sub_262996E84();
  return 0;
}

uint64_t sub_26297F0FC()
{
  type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  sub_262996E84();
  return 0;
}

double sub_26297F14C(uint64_t a1)
{
  v3 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + *(a1 + 20));
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0.0;
  }

  v11 = *(v5 + 28);
  v12 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v13 = *(v6 + 72);
  v14 = 0.0;
  do
  {
    sub_2629818FC(v12, v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    v15 = *&v8[v11];
    sub_262981964(v8, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    v14 = v14 + v15;
    v12 += v13;
    --v10;
  }

  while (v10);
  return v14;
}

uint64_t sub_26297F2B4@<X0>(void *a1@<X8>)
{
  type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  result = sub_262996E84();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_26297F314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s16SESUIServiceCore28SEStorageManagementViewModelV19WalletUsageCategoryV10IdentifierO2eeoiySbAG_AGtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_262982B48(v7, v8);
}

uint64_t sub_26297F384(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_262996C14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_262997004();
  sub_2629818FC(v4, v13, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v14 = (*(v6 + 48))(v13, 2, v5);
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }

    MEMORY[0x26672E300](v15);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298]);
    sub_262996D04();
    (*(v6 + 8))(v9, v5);
  }

  sub_262965F2C(v18, *(v4 + *(a2 + 20)));
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.Identifier.init(credentialType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_262996B64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D49240])
  {
    v17 = *(v5 + 96);
    v40 = v4;
    v17(v8, v4);
    v18 = a1;
    v19 = a2;
    v20 = *(v10 + 32);
    v20(v16, v8, v9);
    v20(v14, v16, v9);
    v21 = (*(v10 + 88))(v14, v9);
    if (v21 != *MEMORY[0x277D490C0] && v21 != *MEMORY[0x277D490A8])
    {
      if (v21 == *MEMORY[0x277D49128] || v21 == *MEMORY[0x277D490D0])
      {
        goto LABEL_15;
      }

      v32 = v21 == *MEMORY[0x277D490B0] || v21 == *MEMORY[0x277D490D8];
      v33 = v32 || v21 == *MEMORY[0x277D490B8];
      v34 = v33 || v21 == *MEMORY[0x277D490E0];
      if (!v34 && v21 != *MEMORY[0x277D49118])
      {
        if (v21 == *MEMORY[0x277D49088] || v21 == *MEMORY[0x277D49080] || v21 == *MEMORY[0x277D49098] || v21 == *MEMORY[0x277D49090] || v21 == *MEMORY[0x277D490F0])
        {
          goto LABEL_15;
        }

        if (v21 != *MEMORY[0x277D49100] && v21 != *MEMORY[0x277D49120])
        {
          if (v21 == *MEMORY[0x277D49138] || v21 == *MEMORY[0x277D490C8] || v21 == *MEMORY[0x277D490E8])
          {
            goto LABEL_15;
          }

          if (v21 != *MEMORY[0x277D490F8])
          {
            if (v21 != *MEMORY[0x277D49108] && v21 != *MEMORY[0x277D49130])
            {
              if (v21 == *MEMORY[0x277D49140])
              {
LABEL_45:
                v36 = v18;
                v4 = v40;
                (*(v5 + 8))(v36, v40);
                v27 = *(v5 + 56);
                v28 = v19;
                goto LABEL_9;
              }

              if (v21 != *MEMORY[0x277D490A0])
              {
                if (v21 == *MEMORY[0x277D49110])
                {
                  goto LABEL_45;
                }

                if (v21 != *MEMORY[0x277D49148])
                {
                  v37 = v18;
                  v38 = v40;
                  (*(v5 + 8))(v37, v40);
                  (*(v5 + 56))(v19, 2, 2, v38);
                  return (*(v10 + 8))(v14, v9);
                }
              }
            }

LABEL_15:
            v31 = v18;
            v4 = v40;
            (*(v5 + 8))(v31, v40);
            v27 = *(v5 + 56);
            v28 = v19;
            v29 = 1;
            return v27(v28, v29, 2, v4);
          }
        }
      }
    }

    v23 = v18;
    v24 = v40;
    (*(v5 + 32))(v19, v23, v40);
    return (*(v5 + 56))(v19, 0, 2, v24);
  }

  v26 = *(v5 + 8);
  v26(a1, v4);
  v26(v8, v4);
  v27 = *(v5 + 56);
  v28 = a2;
LABEL_9:
  v29 = 2;
  return v27(v28, v29, 2, v4);
}

uint64_t sub_26297FAF4(uint64_t a1)
{
  v2 = sub_262981C5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26297FB30(uint64_t a1)
{
  v2 = sub_262981C5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26297FB6C()
{
  v1 = 0x7041656C676E6973;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737365636361;
  }
}

uint64_t sub_26297FBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262982814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26297FBF0(uint64_t a1)
{
  v2 = sub_262981B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26297FC2C(uint64_t a1)
{
  v2 = sub_262981B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26297FC68(uint64_t a1)
{
  v2 = sub_262981BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26297FCA4(uint64_t a1)
{
  v2 = sub_262981BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26297FCEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262996FD4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26297FD6C(uint64_t a1)
{
  v2 = sub_262981C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26297FDA8(uint64_t a1)
{
  v2 = sub_262981C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.Identifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C08, &qword_262999180);
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C10, &qword_262999188);
  v34 = *(v38 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v38);
  v40 = &v32 - v6;
  v7 = sub_262996C14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C18, &qword_262999190);
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C20, &qword_262999198);
  v19 = *(v42 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v42);
  v22 = &v32 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262981B60();
  v24 = v8;
  sub_262997074();
  sub_2629818FC(v41, v18, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v25 = (*(v8 + 48))(v18, 2, v7);
  if (v25)
  {
    if (v25 == 1)
    {
      v43 = 0;
      sub_262981C5C();
      v26 = v42;
      sub_262996F64();
      (*(v32 + 8))(v14, v33);
    }

    else
    {
      v45 = 2;
      sub_262981BB4();
      v31 = v35;
      v26 = v42;
      sub_262996F64();
      (*(v36 + 8))(v31, v37);
    }

    return (*(v19 + 8))(v22, v26);
  }

  else
  {
    v27 = v34;
    (*(v8 + 32))(v39, v18, v7);
    v44 = 1;
    sub_262981C08();
    v28 = v42;
    sub_262996F64();
    sub_262981A7C(&qword_27FF31C40, MEMORY[0x277D49298]);
    v29 = v38;
    sub_262996FB4();
    (*(v27 + 8))(v40, v29);
    (*(v24 + 8))(v39, v7);
    return (*(v19 + 8))(v22, v28);
  }
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.Identifier.hash(into:)()
{
  v1 = sub_262996C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629818FC(v0, v9, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v10 = (*(v2 + 48))(v9, 2, v1);
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    return MEMORY[0x26672E300](v11);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298]);
    sub_262996D04();
    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.Identifier.hashValue.getter()
{
  v1 = v0;
  v2 = sub_262996C14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262997004();
  sub_2629818FC(v1, v10, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    MEMORY[0x26672E300](v12);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298]);
    sub_262996D04();
    (*(v3 + 8))(v6, v2);
  }

  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.WalletUsageCategory.Identifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C50, &qword_2629991A0);
  v60 = *(v55 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v55);
  v59 = &v49 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C58, &qword_2629991A8);
  v56 = *(v54 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v58 = &v49 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C60, &qword_2629991B0);
  v57 = *(v53 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v53);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31C68, &qword_2629991B8);
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_262981B60();
  v23 = v63;
  sub_262997064();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v63 = v14;
  v25 = v57;
  v24 = v58;
  v50 = v18;
  v51 = v20;
  v26 = v59;
  v27 = v60;
  v52 = 0;
  v28 = v61;
  v29 = sub_262996F54();
  v30 = (2 * *(v29 + 16)) | 1;
  v65 = v29;
  v66 = v29 + 32;
  v67 = 0;
  v68 = v30;
  v31 = sub_262973850();
  if (v31 != 3 && v67 == v68 >> 1)
  {
    if (v31)
    {
      v32 = v62;
      if (v31 == 1)
      {
        v69 = 1;
        sub_262981C08();
        v33 = v24;
        v34 = v52;
        sub_262996EE4();
        if (!v34)
        {
          v35 = sub_262996C14();
          sub_262981A7C(&qword_27FF31C70, MEMORY[0x277D49298]);
          v36 = v50;
          v37 = v54;
          sub_262996F44();
          (*(v56 + 8))(v33, v37);
          (*(v32 + 8))(v13, v10);
          swift_unknownObjectRelease();
          (*(*(v35 - 8) + 56))(v36, 0, 2, v35);
          v38 = v51;
          sub_2629819C4(v36, v51);
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v69 = 2;
      sub_262981BB4();
      v46 = v52;
      sub_262996EE4();
      if (v46)
      {
LABEL_16:
        (*(v32 + 8))(v13, v10);
        goto LABEL_10;
      }

      (*(v27 + 8))(v26, v55);
      (*(v32 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v48 = sub_262996C14();
      v38 = v51;
      (*(*(v48 - 8) + 56))(v51, 2, 2, v48);
    }

    else
    {
      v69 = 0;
      sub_262981C5C();
      v44 = v52;
      sub_262996EE4();
      v45 = v62;
      if (v44)
      {
        (*(v62 + 8))(v13, v10);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v64);
      }

      (*(v25 + 8))(v9, v53);
      (*(v45 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v47 = sub_262996C14();
      v38 = v51;
      (*(*(v47 - 8) + 56))(v51, 1, 2, v47);
    }

LABEL_19:
    sub_2629819C4(v38, v28);
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v39 = sub_262996E44();
  swift_allocError();
  v41 = v40;
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31798, &qword_2629991C0) + 48);
  *v41 = v63;
  sub_262996EF4();
  sub_262996E34();
  (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
  swift_willThrow();
  (*(v62 + 8))(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_262980EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629818FC(v2, v12, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v13 = (*(v5 + 48))(v12, 2, v4);
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    return MEMORY[0x26672E300](v14);
  }

  else
  {
    (*(v5 + 32))(v9, v12, v4);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298]);
    sub_262996D04();
    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_262981080(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_262996C14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262997004();
  sub_2629818FC(v4, v13, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v14 = (*(v6 + 48))(v13, 2, v5);
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }

    MEMORY[0x26672E300](v15);
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x26672E300](1);
    sub_262981A7C(&qword_27FF315C8, MEMORY[0x277D49298]);
    sub_262996D04();
    (*(v6 + 8))(v10, v5);
  }

  return sub_262997044();
}

uint64_t _s16SESUIServiceCore28SEStorageManagementViewModelV19WalletUsageCategoryV10IdentifierO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D28, &qword_2629998C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_2629818FC(a1, &v24 - v16, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  sub_2629818FC(a2, &v17[v18], type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_2629818FC(v17, v12, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = MEMORY[0x26672DEF0](v12, v8);
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_262981964(v17, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_2629737D4(v17, &qword_27FF31D28, &qword_2629998C0);
    v21 = 0;
    return v21 & 1;
  }

  sub_262981964(v17, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v21 = 1;
  return v21 & 1;
}

uint64_t _s16SESUIServiceCore28SEStorageManagementViewModelV19WalletUsageCategoryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D28, &qword_2629998C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v26 - v16;
  v18 = *(v15 + 56);
  sub_2629818FC(a1, &v26 - v16, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  sub_2629818FC(a2, &v17[v18], type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (v20)
  {
    if (v20 == 1)
    {
      if (v19(&v17[v18], 2, v4) == 1)
      {
        goto LABEL_10;
      }
    }

    else if (v19(&v17[v18], 2, v4) == 2)
    {
LABEL_10:
      sub_262981964(v17, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
      v24 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
      v21 = sub_262982B48(*(a1 + *(v24 + 20)), *(a2 + *(v24 + 20)));
      return v21 & 1;
    }
  }

  else
  {
    sub_2629818FC(v17, v12, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v22 = MEMORY[0x26672DEF0](v12, v8);
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      if ((v22 & 1) == 0)
      {
        sub_262981964(v17, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier);
        v21 = 0;
        return v21 & 1;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v12, v4);
  }

  sub_2629737D4(v17, &qword_27FF31D28, &qword_2629998C0);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_2629818FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_262981964(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2629819C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_262981A28()
{
  result = qword_27FF31BC0;
  if (!qword_27FF31BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31BC0);
  }

  return result;
}

uint64_t sub_262981A7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_262981AC4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31BD0, &qword_262999168);
    sub_262981A7C(a2, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_262981B60()
{
  result = qword_27FF31C28;
  if (!qword_27FF31C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31C28);
  }

  return result;
}

unint64_t sub_262981BB4()
{
  result = qword_27FF31C30;
  if (!qword_27FF31C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31C30);
  }

  return result;
}

unint64_t sub_262981C08()
{
  result = qword_27FF31C38;
  if (!qword_27FF31C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31C38);
  }

  return result;
}

unint64_t sub_262981C5C()
{
  result = qword_27FF31C48;
  if (!qword_27FF31C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31C48);
  }

  return result;
}

uint64_t sub_262981CB4(void *a1)
{
  a1[1] = sub_262981A7C(&qword_27FF317A8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
  a1[2] = sub_262981A7C(&qword_27FF31748, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
  a1[3] = sub_262981A7C(&qword_27FF31C78, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
  result = sub_262981A7C(&qword_27FF31C80, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
  a1[4] = result;
  return result;
}

uint64_t sub_262981E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_262981EFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_262981FB4()
{
  type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory.Identifier(319);
  if (v0 <= 0x3F)
  {
    sub_262982038();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_262982038()
{
  if (!qword_27FF31CA8)
  {
    type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(255);
    v0 = sub_262996DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF31CA8);
    }
  }
}

uint64_t sub_2629820A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996C14();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_262982124(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_262996C14();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2629821A8()
{
  v0 = sub_262996C14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t _s19WalletUsageCategoryV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s19WalletUsageCategoryV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2629823A0()
{
  result = qword_27FF31CC0;
  if (!qword_27FF31CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CC0);
  }

  return result;
}

unint64_t sub_2629823F8()
{
  result = qword_27FF31CC8;
  if (!qword_27FF31CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CC8);
  }

  return result;
}

unint64_t sub_262982450()
{
  result = qword_27FF31CD0;
  if (!qword_27FF31CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CD0);
  }

  return result;
}

unint64_t sub_2629824A8()
{
  result = qword_27FF31CD8;
  if (!qword_27FF31CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CD8);
  }

  return result;
}

unint64_t sub_262982500()
{
  result = qword_27FF31CE0;
  if (!qword_27FF31CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CE0);
  }

  return result;
}

unint64_t sub_262982558()
{
  result = qword_27FF31CE8;
  if (!qword_27FF31CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CE8);
  }

  return result;
}

unint64_t sub_2629825B0()
{
  result = qword_27FF31CF0;
  if (!qword_27FF31CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CF0);
  }

  return result;
}

unint64_t sub_262982608()
{
  result = qword_27FF31CF8;
  if (!qword_27FF31CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31CF8);
  }

  return result;
}

unint64_t sub_262982660()
{
  result = qword_27FF31D00;
  if (!qword_27FF31D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D00);
  }

  return result;
}

unint64_t sub_2629826B8()
{
  result = qword_27FF31D08;
  if (!qword_27FF31D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D08);
  }

  return result;
}

unint64_t sub_262982710()
{
  result = qword_27FF31D10;
  if (!qword_27FF31D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D10);
  }

  return result;
}

unint64_t sub_262982768()
{
  result = qword_27FF31D18;
  if (!qword_27FF31D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D18);
  }

  return result;
}

unint64_t sub_2629827C0()
{
  result = qword_27FF31D20;
  if (!qword_27FF31D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D20);
  }

  return result;
}

uint64_t sub_262982814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737365636361 && a2 == 0xE600000000000000;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7041656C676E6973 && a2 == 0xEC00000074656C70 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262996FD4();

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

uint64_t sub_26298293C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v23 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_2629876BC(v14, v11, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
    if (!v12)
    {
      break;
    }

    sub_2629876BC(v15, v8, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
    v22 = *v11 == *v8 && v11[1] == v8[1];
    if (!v22 && (sub_262996FD4() & 1) == 0)
    {
      sub_262987724(v8, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
      sub_262987724(v11, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
      return 0;
    }

    v17 = *(v4 + 20);
    v18 = *(v11 + v17);
    v19 = *(v8 + v17);
    sub_262987724(v8, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
    sub_262987724(v11, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
    result = v18 == v19;
    v21 = v18 != v19 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v21)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_262982B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996B24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v90 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31E70, &qword_262999F98);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v90 - v15;
  v17 = sub_262996C14();
  v122 = *(v17 - 8);
  v18 = *(v122 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v120 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v90 - v21;
  v113 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v110 = *(v113 - 1);
  v23 = *(v110 + 64);
  v24 = MEMORY[0x28223BE20](v113);
  v121 = (&v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v119 = (&v90 - v26);
  v27 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v112 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v111 = &v90 - v33;
  v34 = *(a1 + 16);
  if (v34 != *(a2 + 16))
  {
    return 0;
  }

  if (!v34 || a1 == a2)
  {
    return 1;
  }

  v107 = v31;
  v101 = v13;
  v102 = v16;
  v92 = v12;
  v91 = v8;
  v103 = v4;
  v35 = 0;
  v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v37 = a1 + v36;
  v38 = a2 + v36;
  v116 = (v122 + 8);
  v117 = v122 + 16;
  v100 = (v5 + 48);
  v90 = (v5 + 32);
  v93 = (v5 + 8);
  v39 = *(v32 + 72);
  v40 = v119;
  v42 = v111;
  v41 = v112;
  v108 = v34;
  while (1)
  {
    result = sub_2629876BC(v37 + v39 * v35, v42, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    if (v35 == v108)
    {
      break;
    }

    sub_2629876BC(v38 + v39 * v35, v41, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    result = MEMORY[0x26672DEF0](v42, v41);
    v44 = v107;
    if ((result & 1) == 0 || (v45 = *(v107 + 20), v46 = *(v42 + v45), v47 = *(v46 + 16), v109 = *(v41 + v45), v47 != *(v109 + 16)))
    {
LABEL_59:
      sub_262987724(v41, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      sub_262987724(v42, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
      return 0;
    }

    if (v47 && v46 != v109)
    {
      v48 = 0;
      v49 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v105 = v46 + v49;
      v104 = v109 + v49;
      v99 = v35;
      v98 = v37;
      v97 = v38;
      v118 = v17;
      v96 = v39;
      v95 = v46;
      v94 = v47;
      while (1)
      {
        if (v48 >= *(v46 + 16))
        {
          goto LABEL_64;
        }

        v50 = v48;
        v51 = *(v110 + 72) * v48;
        result = sub_2629876BC(v105 + v51, v40, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        v52 = *(v109 + 16);
        v106 = v50;
        if (v50 >= v52)
        {
          goto LABEL_65;
        }

        v53 = v104 + v51;
        v54 = v121;
        sub_2629876BC(v53, v121, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        result = *v40;
        if (*v40 != *v54 || v40[1] != v54[1])
        {
          result = sub_262996FD4();
          if ((result & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        v55 = v119[2];
        v56 = v121[2];
        v57 = *(v55 + 16);
        if (v57 != *(v56 + 16))
        {
          goto LABEL_58;
        }

        if (v57 && v55 != v56)
        {
          break;
        }

LABEL_24:
        v68 = v119[3];
        v69 = v121[3];
        v70 = *(v68 + 16);
        if (v70 != *(v69 + 16))
        {
          goto LABEL_58;
        }

        if (v70 && v68 != v69)
        {
          v71 = (v68 + 40);
          v72 = (v69 + 40);
          do
          {
            v73 = *(v71 - 1) == *(v72 - 1) && *v71 == *v72;
            if (!v73 && (sub_262996FD4() & 1) == 0)
            {
              goto LABEL_58;
            }

            v71 += 2;
            v72 += 2;
          }

          while (--v70);
        }

        if ((v119[4] != v121[4] || v119[5] != v121[5]) && (sub_262996FD4() & 1) == 0)
        {
          goto LABEL_58;
        }

        v74 = v113[8];
        v75 = *(v101 + 48);
        v76 = v102;
        sub_262967904(v119 + v74, v102);
        sub_262967904(v121 + v74, v76 + v75);
        v77 = *v100;
        v78 = v103;
        if ((*v100)(v76, 1, v103) == 1)
        {
          if (v77(v76 + v75, 1, v78) != 1)
          {
            goto LABEL_57;
          }

          sub_2629737D4(v76, &qword_27FF314D0, &qword_262997510);
        }

        else
        {
          v79 = v92;
          sub_262967904(v76, v92);
          if (v77(v76 + v75, 1, v78) == 1)
          {
            (*v93)(v79, v78);
LABEL_57:
            sub_2629737D4(v76, &qword_27FF31E70, &qword_262999F98);
LABEL_58:
            sub_262987724(v121, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
            sub_262987724(v119, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
            v42 = v111;
            v41 = v112;
            goto LABEL_59;
          }

          v80 = v91;
          (*v90)(v91, v76 + v75, v78);
          sub_262987674(&qword_27FF31E78, MEMORY[0x277CC9578]);
          v81 = sub_262996D24();
          v82 = *v93;
          (*v93)(v80, v78);
          v82(v79, v78);
          sub_2629737D4(v76, &qword_27FF314D0, &qword_262997510);
          if ((v81 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        if (*(v119 + v113[9]) != *(v121 + v113[9]) || *(v119 + v113[10]) != *(v121 + v113[10]))
        {
          goto LABEL_58;
        }

        v83 = v113[11];
        v40 = v119;
        v84 = *(v119 + v83);
        v85 = *(v121 + v83);
        sub_262987724(v121, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        result = sub_262987724(v40, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        v73 = v84 == v85;
        v42 = v111;
        v41 = v112;
        v44 = v107;
        v35 = v99;
        v37 = v98;
        v38 = v97;
        v17 = v118;
        v39 = v96;
        v46 = v95;
        if (!v73)
        {
          goto LABEL_59;
        }

        v48 = v106 + 1;
        if (v106 + 1 == v94)
        {
          goto LABEL_48;
        }
      }

      v58 = 0;
      v59 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      v114 = v56 + v59;
      v115 = v55 + v59;
      while (v58 < *(v55 + 16))
      {
        v60 = *(v122 + 72) * v58;
        v61 = *(v122 + 16);
        v62 = v118;
        result = v61(v22, v115 + v60, v118);
        if (v58 >= *(v56 + 16))
        {
          goto LABEL_62;
        }

        v63 = v22;
        v64 = v120;
        v61(v120, v114 + v60, v62);
        sub_262987674(&qword_27FF31B48, MEMORY[0x277D49298]);
        v65 = sub_262996D24();
        v66 = *v116;
        v67 = v64;
        v22 = v63;
        (*v116)(v67, v62);
        result = v66(v63, v62);
        if ((v65 & 1) == 0)
        {
          goto LABEL_58;
        }

        if (v57 == ++v58)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
      break;
    }

LABEL_48:
    if (*(v42 + *(v44 + 24)) != *(v41 + *(v44 + 24)))
    {
      goto LABEL_59;
    }

    ++v35;
    v86 = *(v44 + 28);
    v87 = *(v42 + v86);
    v88 = *(v41 + v86);
    sub_262987724(v41, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    sub_262987724(v42, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup);
    result = v87 == v88;
    if (v87 != v88 || v35 == v108)
    {
      return result;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_26298364C(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996B24();
  v83 = *(v4 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v66 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31E70, &qword_262999F98);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v16 = sub_262996C14();
  v88 = *(v16 - 8);
  v17 = *(v88 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v86 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v66 - v20;
  v80 = type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry(0);
  v22 = *(*(v80 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v80);
  v87 = (&v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v27 = (&v66 - v26);
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
LABEL_47:
    v65 = 0;
    return v65 & 1;
  }

  if (!v28 || a1 == a2)
  {
    v65 = 1;
    return v65 & 1;
  }

  v73 = v12;
  v74 = v15;
  v70 = v11;
  v68 = v7;
  v75 = v4;
  v29 = 0;
  v30 = v28;
  v31 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v78 = a1 + v31;
  v76 = a2 + v31;
  v84 = (v88 + 8);
  v85 = v88 + 16;
  v72 = (v83 + 48);
  v67 = (v83 + 32);
  v69 = (v83 + 8);
  v77 = *(v25 + 72);
  v81 = (&v66 - v26);
  v71 = v28;
  while (1)
  {
    v32 = v77 * v29;
    result = sub_2629876BC(v78 + v77 * v29, v27, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    if (v29 == v30)
    {
      goto LABEL_51;
    }

    v79 = v29;
    v34 = v76 + v32;
    v35 = v87;
    sub_2629876BC(v34, v87, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    result = *v27;
    if (*v27 != *v35 || v27[1] != v35[1])
    {
      result = sub_262996FD4();
      if ((result & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v37 = v81[2];
    v38 = v87[2];
    v39 = *(v37 + 16);
    if (v39 != *(v38 + 16))
    {
      goto LABEL_46;
    }

    if (v39 && v37 != v38)
    {
      break;
    }

LABEL_19:
    v49 = v81[3];
    v50 = v87[3];
    v51 = *(v49 + 16);
    if (v51 != *(v50 + 16))
    {
      goto LABEL_46;
    }

    if (v51 && v49 != v50)
    {
      v52 = (v49 + 40);
      v53 = (v50 + 40);
      do
      {
        v54 = *(v52 - 1) == *(v53 - 1) && *v52 == *v53;
        if (!v54 && (sub_262996FD4() & 1) == 0)
        {
          goto LABEL_46;
        }

        v52 += 2;
        v53 += 2;
      }

      while (--v51);
    }

    if ((v81[4] != v87[4] || v81[5] != v87[5]) && (sub_262996FD4() & 1) == 0)
    {
      goto LABEL_46;
    }

    v55 = v80[8];
    v56 = v74;
    v57 = *(v73 + 48);
    sub_262967904(v81 + v55, v74);
    sub_262967904(v87 + v55, v56 + v57);
    v58 = *v72;
    v59 = v75;
    if ((*v72)(v56, 1, v75) == 1)
    {
      if (v58(v56 + v57, 1, v59) != 1)
      {
        goto LABEL_45;
      }

      sub_2629737D4(v56, &qword_27FF314D0, &qword_262997510);
    }

    else
    {
      v60 = v70;
      sub_262967904(v56, v70);
      if (v58(v56 + v57, 1, v59) == 1)
      {
        (*v69)(v60, v59);
LABEL_45:
        sub_2629737D4(v56, &qword_27FF31E70, &qword_262999F98);
LABEL_46:
        sub_262987724(v87, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        sub_262987724(v81, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
        goto LABEL_47;
      }

      v61 = v68;
      (*v67)(v68, v56 + v57, v59);
      sub_262987674(&qword_27FF31E78, MEMORY[0x277CC9578]);
      v62 = sub_262996D24();
      v63 = *v69;
      (*v69)(v61, v59);
      v63(v60, v59);
      sub_2629737D4(v56, &qword_27FF314D0, &qword_262997510);
      if ((v62 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    if (*(v81 + v80[9]) != *(v87 + v80[9]) || *(v81 + v80[10]) != *(v87 + v80[10]))
    {
      goto LABEL_46;
    }

    v27 = v81;
    v64 = *(v81 + v80[11]) ^ *(v87 + v80[11]);
    sub_262987724(v87, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    sub_262987724(v27, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    v30 = v71;
    if ((v64 & 1) == 0)
    {
      v29 = v79 + 1;
      if (v79 + 1 != v71)
      {
        continue;
      }
    }

    v65 = v64 ^ 1;
    return v65 & 1;
  }

  v40 = 0;
  v41 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v82 = v38 + v41;
  v83 = v37 + v41;
  while (v40 < *(v37 + 16))
  {
    v42 = *(v88 + 72) * v40;
    v43 = *(v88 + 16);
    result = v43(v21, v83 + v42, v16);
    if (v40 >= *(v38 + 16))
    {
      goto LABEL_50;
    }

    v44 = v21;
    v45 = v86;
    v43(v86, v82 + v42, v16);
    sub_262987674(&qword_27FF31B48, MEMORY[0x277D49298]);
    v46 = sub_262996D24();
    v47 = *v84;
    v48 = v45;
    v21 = v44;
    (*v84)(v48, v16);
    result = (v47)(v44, v16);
    if ((v46 & 1) == 0)
    {
      goto LABEL_46;
    }

    if (v39 == ++v40)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_262983E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_262996C14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_262987674(&qword_27FF31B48, MEMORY[0x277D49298]);
    v22 = sub_262996D24();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_262984098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_262996FD4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_262984128(uint64_t a1, uint64_t a2)
{
  v47 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  v4 = *(*(v47 - 1) + 64);
  v5 = MEMORY[0x28223BE20](v47);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16) && v10 && a1 != a2)
  {
    v11 = 0;
    v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v41 = *(a1 + 16);
    v42 = a2 + v12;
    v43 = *(v7 + 72);
    v44 = a1 + v12;
    v46 = &v41 - v8;
    while (1)
    {
      v13 = v43 * v11;
      sub_2629876BC(v44 + v43 * v11, v9, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      if (v11 == v10)
      {
        break;
      }

      v45 = v11;
      sub_2629876BC(v42 + v13, v48, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      if ((sub_262996B44() & 1) == 0)
      {
        goto LABEL_32;
      }

      v14 = v47[5];
      v15 = *&v46[v14];
      v16 = *&v46[v14 + 8];
      v17 = (v48 + v14);
      v18 = v15 == *v17 && v16 == v17[1];
      if (!v18 && (sub_262996FD4() & 1) == 0)
      {
        goto LABEL_32;
      }

      v19 = v47[6];
      v20 = *&v46[v19];
      v21 = *(v48 + v19);
      v22 = *(v21 + 16);
      v49 = *(v20 + 16);
      v50 = v20;
      if (v49 != v22)
      {
        goto LABEL_32;
      }

      if (v49)
      {
        v23 = v50 == v21;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        sub_2629658C8();
        v24 = 0;
        v25 = (v21 + 48);
        v26 = (v50 + 48);
        while (v24 < *(v50 + 16))
        {
          if (v24 >= *(v21 + 16))
          {
            goto LABEL_35;
          }

          v27 = *v26;
          v28 = *(v26 - 1);
          v29 = *(v25 - 2);
          v30 = *(v25 - 1);
          v31 = *v25;
          v32 = *(v26 - 2);
          v33 = v29;
          v34 = sub_262996DD4();

          if (v34 & 1) == 0 || v28 != v30 || ((v27 ^ v31))
          {
            goto LABEL_32;
          }

          ++v24;
          v25 += 24;
          v26 += 3;
          if (v49 == v24)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
        break;
      }

LABEL_24:
      v35 = v47[7];
      v36 = &v46[v35];
      v37 = (v48 + v35);
      if ((*v36 != *v37 || *(v36 + 1) != v37[1]) && (sub_262996FD4() & 1) == 0 || *&v46[v47[8]] != *(v48 + v47[8]))
      {
LABEL_32:
        sub_262987724(v48, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
        sub_262987724(v46, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
        return;
      }

      v9 = v46;
      v38 = v47[9];
      v39 = *&v46[v38];
      v40 = *(v48 + v38);
      sub_262987724(v48, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      sub_262987724(v9, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      if (v39 == v40)
      {
        v11 = v45 + 1;
        v10 = v41;
        if (v45 + 1 != v41)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_2629844D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    sub_2629658C8();
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 48);
      v7 = *(a1 + v5 + 40);
      v8 = *(a2 + v5 + 32);
      v9 = *(a2 + v5 + 40);
      v10 = *(a2 + v5 + 48);
      v11 = *(a1 + v5 + 32);
      v12 = v8;
      v13 = sub_262996DD4();

      if ((v13 ^ 1 | v6 ^ v10) & 1 | (v7 != v9))
      {
        break;
      }

      v5 += 24;
      --v2;
    }

    while (v2);
  }
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.groups.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.id.getter()
{
  BYTE8(v2) = 0;
  *&v2 = *v0;
  sub_262996E84();
  return *(&v2 + 1);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = sub_262996B24();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v33 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 8);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = *(v15 + 72);
    v22 = (v10 + 48);
    v29 = v10;
    v31 = (v10 + 32);
    v32 = v21;
    v23 = MEMORY[0x277D84F90];
    v30 = v6;
    do
    {
      sub_2629876BC(v20, v17, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      SEStorageManagementViewModel.ViennaUsageGroup.lastUsedDate.getter(v6);
      sub_262963C48(v6, v8);
      sub_262987724(v17, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      if ((*v22)(v8, 1, v9) == 1)
      {
        sub_2629737D4(v8, &qword_27FF314D0, &qword_262997510);
      }

      else
      {
        v24 = *v31;
        (*v31)(v33, v8, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_2629658A0(0, *(v23 + 2) + 1, 1, v23);
        }

        v26 = *(v23 + 2);
        v25 = *(v23 + 3);
        if (v26 >= v25 >> 1)
        {
          v23 = sub_2629658A0(v25 > 1, v26 + 1, 1, v23);
        }

        *(v23 + 2) = v26 + 1;
        v24(&v23[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26], v33, v9);
        v6 = v30;
      }

      v20 += v32;
      --v19;
    }

    while (v19);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  sub_262963D20(v23, v28);
}

double SEStorageManagementViewModel.ViennaUsageCategory.usage.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 8);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0.0;
  }

  v9 = *(v3 + 36);
  v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v4 + 72);
  v12 = 0.0;
  do
  {
    sub_2629876BC(v10, v6, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
    v13 = *&v6[v9];
    sub_262987724(v6, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
    v12 = v12 + v13;
    v10 += v11;
    --v8;
  }

  while (v8);
  return v12;
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.credentialCount.getter()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 8);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = *(v3 + 24);
    v11 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    while (1)
    {
      result = sub_2629876BC(v11, v6, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      v14 = *(*&v6[v10] + 16);
      v15 = __OFADD__(v9, v14);
      v9 += v14;
      if (v15)
      {
        break;
      }

      sub_262987724(v6, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
      v11 += v12;
      if (!--v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

_BYTE *SEStorageManagementViewModel.ViennaUsageCategory.init(identifier:groups:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

void static SEStorageManagementViewModel.ViennaUsageCategory.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    sub_262984128(*(a1 + 1), *(a2 + 1));
  }
}

uint64_t sub_262984C84()
{
  if (*v0)
  {
    result = 0x7370756F7267;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_262984CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_262996FD4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262996FD4();

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

uint64_t sub_262984DA0(uint64_t a1)
{
  v2 = sub_262986690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262984DDC(uint64_t a1)
{
  v2 = sub_262986690();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D30, &qword_2629998C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262986690();
  sub_262997074();
  v15 = v9;
  v14 = 0;
  sub_2629866E4();
  sub_262996FB4();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D48, &qword_2629998D0);
    sub_262986B4C(&qword_27FF31D50, &qword_27FF31D58);
    sub_262996FB4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 1);
  MEMORY[0x26672E300](*v1);

  return sub_262966630(a1, v3);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_262997004();
  MEMORY[0x26672E300](v1);
  sub_262966630(v4, v2);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D60, &qword_2629998D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262986690();
  sub_262997064();
  if (!v2)
  {
    v16 = 0;
    sub_262986AF8();
    sub_262996F44();
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D48, &qword_2629998D0);
    v15 = 1;
    sub_262986B4C(&qword_27FF31D70, &qword_27FF31D78);
    sub_262996F44();
    (*(v6 + 8))(v9, v5);
    v12 = v14[1];
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double sub_2629852D8()
{
  v1 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 8);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0.0;
  }

  v9 = *(v3 + 36);
  v10 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v4 + 72);
  v12 = 0.0;
  do
  {
    sub_2629876BC(v10, v6, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
    v13 = *&v6[v9];
    sub_262987724(v6, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
    v12 = v12 + v13;
    v10 += v11;
    --v8;
  }

  while (v8);
  return v12;
}

uint64_t sub_262985400()
{
  BYTE8(v2) = 0;
  *&v2 = *v0;
  sub_262996E84();
  return *(&v2 + 1);
}

uint64_t sub_262985484@<X0>(void *a1@<X8>)
{
  BYTE8(v4) = 0;
  *&v4 = *v1;
  result = sub_262996E84();
  *a1 = *(&v4 + 1);
  a1[1] = 0xE000000000000000;
  return result;
}

void sub_2629854E8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    sub_262984128(*(a1 + 1), *(a2 + 1));
  }
}

uint64_t sub_26298550C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_262997004();
  MEMORY[0x26672E300](v1);
  sub_262966630(v4, v2);
  return sub_262997044();
}

uint64_t sub_26298556C(uint64_t a1)
{
  v3 = *(v1 + 1);
  MEMORY[0x26672E300](*v1);

  return sub_262966630(a1, v3);
}

uint64_t sub_2629855BC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_262997004();
  MEMORY[0x26672E300](v1);
  sub_262966630(v4, v2);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.Identifier.init(config:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_262996BF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_262996CA4();
  v9 = sub_262996BE4();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v26[0] = 44;
  v26[1] = 0xE100000000000000;
  v25 = v26;
  v12 = sub_262986738(0x7FFFFFFFFFFFFFFFLL, 1, sub_262986BE8, v24, v9, v11, v26);
  if (v12[2])
  {
    v13 = v12[4];
    v14 = v12[5];
    v16 = v12[6];
    v15 = v12[7];

    if (sub_262986C40(0xD000000000000013, 0x800000026299C730, v13, v14, v16, v15))
    {
      v17 = sub_262996CB4();
      (*(*(v17 - 8) + 8))(a1, v17);

      v19 = 1;
    }

    else if (sub_262986C40(0x5359454B2D524143, 0xE800000000000000, v13, v14, v16, v15) & 1) != 0 || (sub_262986C40(0x454B2D4C45544F48, 0xEA00000000005359, v13, v14, v16, v15) & 1) != 0 || (sub_262986C40(0x59454B2D454D4F48, 0xE900000000000053, v13, v14, v16, v15))
    {
      v21 = sub_262996CB4();
      (*(*(v21 - 8) + 8))(a1, v21);

      v19 = 0;
    }

    else
    {
      v22 = sub_262986C40(0xD000000000000016, 0x800000026299C750, v13, v14, v16, v15);

      v23 = sub_262996CB4();
      result = (*(*(v23 - 8) + 8))(a1, v23);
      if (v22)
      {
        v19 = 0;
      }

      else
      {
        v19 = 2;
      }
    }
  }

  else
  {
    v20 = sub_262996CB4();
    (*(*(v20 - 8) + 8))(a1, v20);

    v19 = 2;
  }

  *a2 = v19;
  return result;
}

uint64_t sub_26298598C(uint64_t a1)
{
  v2 = sub_262986DA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629859C8(uint64_t a1)
{
  v2 = sub_262986DA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262985A04()
{
  v1 = 0x7469736E617274;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737365636361;
  }
}

uint64_t sub_262985A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262987564(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262985A80(uint64_t a1)
{
  v2 = sub_262986CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262985ABC(uint64_t a1)
{
  v2 = sub_262986CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262985AF8(uint64_t a1)
{
  v2 = sub_262986D00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262985B34(uint64_t a1)
{
  v2 = sub_262986D00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262985B70(uint64_t a1)
{
  v2 = sub_262986D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262985BAC(uint64_t a1)
{
  v2 = sub_262986D54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.Identifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D80, &qword_2629998E0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D88, &qword_2629998E8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D90, &qword_2629998F0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31D98, &qword_2629998F8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262986CAC();
  sub_262997074();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_262986D54();
      v12 = v26;
      sub_262996F64();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_262986D00();
      v12 = v29;
      sub_262996F64();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_262986DA8();
    sub_262996F64();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.Identifier.hashValue.getter()
{
  v1 = *v0;
  sub_262997004();
  MEMORY[0x26672E300](v1);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.Identifier.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31DC0, &qword_262999900);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31DC8, &qword_262999908);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31DD0, &qword_262999910);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31DD8, &unk_262999918);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_262986CAC();
  v20 = v43;
  sub_262997064();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_262996F54();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_262973850();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_262996E44();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31798, &qword_2629991C0) + 48);
      *v30 = &type metadata for SEStorageManagementViewModel.ViennaUsageCategory.Identifier;
      sub_262996EF4();
      sub_262996E34();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_262986D54();
          sub_262996EE4();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_262986D00();
          v33 = v22;
          sub_262996EE4();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_262986DA8();
        sub_262996EE4();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t SEStorageManagementViewModel.ViennaUsageCategory.localizedTitle.getter()
{
  v1 = *v0;
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_262996D34();
  v5 = sub_262996D34();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_262996D44();
  return v7;
}

unint64_t sub_262986690()
{
  result = qword_27FF31D38;
  if (!qword_27FF31D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D38);
  }

  return result;
}

unint64_t sub_2629866E4()
{
  result = qword_27FF31D40;
  if (!qword_27FF31D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D40);
  }

  return result;
}

unint64_t sub_262986738@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_262996D94();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_262965AD4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_262965AD4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_262996D84();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_262996D74();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_262996D74();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_262996D94();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_262965AD4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_262996D94();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_262965AD4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_262965AD4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_262996D74();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_262986AF8()
{
  result = qword_27FF31D68;
  if (!qword_27FF31D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31D68);
  }

  return result;
}

uint64_t sub_262986B4C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31D48, &qword_2629998D0);
    sub_262987674(a2, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262986BE8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_262996FD4() & 1;
  }
}

uint64_t sub_262986C40(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_262996FC4() & 1;
  }
}

unint64_t sub_262986CAC()
{
  result = qword_27FF31DA0;
  if (!qword_27FF31DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DA0);
  }

  return result;
}

unint64_t sub_262986D00()
{
  result = qword_27FF31DA8;
  if (!qword_27FF31DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DA8);
  }

  return result;
}

unint64_t sub_262986D54()
{
  result = qword_27FF31DB0;
  if (!qword_27FF31DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DB0);
  }

  return result;
}

unint64_t sub_262986DA8()
{
  result = qword_27FF31DB8;
  if (!qword_27FF31DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DB8);
  }

  return result;
}

unint64_t sub_262986DFC(void *a1)
{
  a1[1] = sub_262986E3C();
  a1[2] = sub_262986E90();
  a1[3] = sub_262986EE4();
  result = sub_262986F38();
  a1[4] = result;
  return result;
}

unint64_t sub_262986E3C()
{
  result = qword_27FF31DE0;
  if (!qword_27FF31DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DE0);
  }

  return result;
}

unint64_t sub_262986E90()
{
  result = qword_27FF31DE8;
  if (!qword_27FF31DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DE8);
  }

  return result;
}

unint64_t sub_262986EE4()
{
  result = qword_27FF31DF0;
  if (!qword_27FF31DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DF0);
  }

  return result;
}

unint64_t sub_262986F38()
{
  result = qword_27FF31DF8;
  if (!qword_27FF31DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31DF8);
  }

  return result;
}

unint64_t sub_262986F90()
{
  result = qword_27FF31E00;
  if (!qword_27FF31E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E00);
  }

  return result;
}

unint64_t sub_262986FE8()
{
  result = qword_27FF31E08;
  if (!qword_27FF31E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E08);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_262987048(uint64_t a1, int a2)
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

uint64_t sub_262987090(uint64_t result, int a2, int a3)
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

unint64_t sub_262987148()
{
  result = qword_27FF31E10;
  if (!qword_27FF31E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E10);
  }

  return result;
}

unint64_t sub_2629871A0()
{
  result = qword_27FF31E18;
  if (!qword_27FF31E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E18);
  }

  return result;
}

unint64_t sub_2629871F8()
{
  result = qword_27FF31E20;
  if (!qword_27FF31E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E20);
  }

  return result;
}

unint64_t sub_262987250()
{
  result = qword_27FF31E28;
  if (!qword_27FF31E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E28);
  }

  return result;
}

unint64_t sub_2629872A8()
{
  result = qword_27FF31E30;
  if (!qword_27FF31E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E30);
  }

  return result;
}

unint64_t sub_262987300()
{
  result = qword_27FF31E38;
  if (!qword_27FF31E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E38);
  }

  return result;
}

unint64_t sub_262987358()
{
  result = qword_27FF31E40;
  if (!qword_27FF31E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E40);
  }

  return result;
}

unint64_t sub_2629873B0()
{
  result = qword_27FF31E48;
  if (!qword_27FF31E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E48);
  }

  return result;
}

unint64_t sub_262987408()
{
  result = qword_27FF31E50;
  if (!qword_27FF31E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E50);
  }

  return result;
}

unint64_t sub_262987460()
{
  result = qword_27FF31E58;
  if (!qword_27FF31E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E58);
  }

  return result;
}

unint64_t sub_2629874B8()
{
  result = qword_27FF31E60;
  if (!qword_27FF31E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E60);
  }

  return result;
}

unint64_t sub_262987510()
{
  result = qword_27FF31E68;
  if (!qword_27FF31E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E68);
  }

  return result;
}

uint64_t sub_262987564(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737365636361 && a2 == 0xE600000000000000;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469736E617274 && a2 == 0xE700000000000000 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262996FD4();

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

uint64_t sub_262987674(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2629876BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_262987724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SEStorageManagementViewModel.Summary.init(totalStorage:currentUsage:usageAfterDelete:spaceRequired:hasEnoughSpace:systemUsage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = result;
  *(a2 + 40) = a7;
  return result;
}

uint64_t sub_2629878C0()
{
  v1 = *v0;
  v2 = 0x6F74536C61746F74;
  v3 = 0x7165526563617073;
  v4 = 0x67756F6E45736168;
  if (v1 != 4)
  {
    v4 = 0x73556D6574737973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x55746E6572727563;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_2629879A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26298811C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2629879CC(uint64_t a1)
{
  v2 = sub_262987C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262987A08(uint64_t a1)
{
  v2 = sub_262987C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.Summary.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31E80, &qword_262999FA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-v7];
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = *(v1 + 32);
  v14 = v1[5];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262987C70();
  sub_262997074();
  v17[15] = 0;
  sub_262996FA4();
  if (!v2)
  {
    v17[14] = 1;
    sub_262996FA4();
    v17[13] = 2;
    sub_262996FA4();
    v17[12] = 3;
    sub_262996FA4();
    v17[11] = 4;
    sub_262996F94();
    v17[10] = 5;
    sub_262996FA4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_262987C70()
{
  result = qword_27FF31E88;
  if (!qword_27FF31E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E88);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.Summary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31E90, &qword_262999FA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262987C70();
  sub_262997064();
  if (!v2)
  {
    v23[15] = 0;
    sub_262996F34();
    v12 = v11;
    v23[14] = 1;
    sub_262996F34();
    v14 = v13;
    v23[13] = 2;
    sub_262996F34();
    v16 = v15;
    v23[12] = 3;
    sub_262996F34();
    v18 = v17;
    v23[11] = 4;
    v20 = sub_262996F24();
    v23[10] = 5;
    sub_262996F34();
    v22 = v21;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
    *(a2 + 24) = v18;
    *(a2 + 32) = v20 & 1;
    *(a2 + 40) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t sub_262987F50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_262987FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_262988018()
{
  result = qword_27FF31E98;
  if (!qword_27FF31E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31E98);
  }

  return result;
}

unint64_t sub_262988070()
{
  result = qword_27FF31EA0;
  if (!qword_27FF31EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EA0);
  }

  return result;
}

unint64_t sub_2629880C8()
{
  result = qword_27FF31EA8;
  if (!qword_27FF31EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EA8);
  }

  return result;
}

uint64_t sub_26298811C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F74536C61746F74 && a2 == 0xEC00000065676172;
  if (v4 || (sub_262996FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x55746E6572727563 && a2 == 0xEC00000065676173 || (sub_262996FD4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026299C7D0 == a2 || (sub_262996FD4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7165526563617073 && a2 == 0xED00006465726975 || (sub_262996FD4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x67756F6E45736168 && a2 == 0xEE00656361705368 || (sub_262996FD4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73556D6574737973 && a2 == 0xEB00000000656761)
  {

    return 5;
  }

  else
  {
    v6 = sub_262996FD4();

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

uint64_t dispatch thunk of SEStorageManagementPassProviding.passes.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2629886A4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SEStorageManagementPassProviding.delete(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_262988580;

  return v11(a1, a2, a3);
}

uint64_t sub_262988580(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t SEStorageManagementViewModel.ESimBarItem.localizedTitle.getter()
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_262996D34();
  v3 = sub_262996D34();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_262996D44();
  return v5;
}

uint64_t sub_2629887F8(uint64_t a1)
{
  v2 = sub_2629889A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262988834(uint64_t a1)
{
  v2 = sub_2629889A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ESimBarItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31EB0, &qword_26299A188);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629889A8();
  sub_262997074();
  sub_262996FA4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2629889A8()
{
  result = qword_27FF31EB8;
  if (!qword_27FF31EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EB8);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ESimBarItem.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x26672E320](*&v1);
}

uint64_t SEStorageManagementViewModel.ESimBarItem.hashValue.getter()
{
  v1 = *v0;
  sub_262997004();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x26672E320](*&v2);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ESimBarItem.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31EC0, &qword_26299A190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629889A8();
  sub_262997064();
  if (!v2)
  {
    sub_262996F34();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262988C20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31EB0, &qword_26299A188);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629889A8();
  sub_262997074();
  sub_262996FA4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_262988D6C(void *a1)
{
  a1[1] = sub_262988DAC();
  a1[2] = sub_262988E00();
  a1[3] = sub_262988E54();
  result = sub_262988EA8();
  a1[4] = result;
  return result;
}

unint64_t sub_262988DAC()
{
  result = qword_27FF31EC8;
  if (!qword_27FF31EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EC8);
  }

  return result;
}

unint64_t sub_262988E00()
{
  result = qword_27FF31ED0;
  if (!qword_27FF31ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31ED0);
  }

  return result;
}

unint64_t sub_262988E54()
{
  result = qword_27FF31ED8;
  if (!qword_27FF31ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31ED8);
  }

  return result;
}

unint64_t sub_262988EA8()
{
  result = qword_27FF31EE0;
  if (!qword_27FF31EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EE0);
  }

  return result;
}

unint64_t sub_262988F00()
{
  result = qword_27FF31EE8;
  if (!qword_27FF31EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EE8);
  }

  return result;
}

unint64_t sub_262988F78()
{
  result = qword_27FF31EF0;
  if (!qword_27FF31EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EF0);
  }

  return result;
}

unint64_t sub_262988FD0()
{
  result = qword_27FF31EF8;
  if (!qword_27FF31EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31EF8);
  }

  return result;
}

unint64_t sub_262989028()
{
  result = qword_27FF31F00;
  if (!qword_27FF31F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31F00);
  }

  return result;
}

uint64_t static SEStorageManagementViewModel.ViennaUsageApp.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_262996FD4();
  }
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.localizedTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.categories.getter()
{
  v1 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp() + 20));
}

uint64_t type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp()
{
  result = qword_27FF31F50;
  if (!qword_27FF31F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.usage.getter()
{
  v17 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v17);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp();
  v6 = *(v0 + *(result + 20));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v18 = v6 + 32;
    v9 = 0.0;
    while (v8 < *(v6 + 16))
    {
      v11 = *(v18 + 16 * v8 + 8);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = *(v17 + 36);
        v14 = v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

        v15 = *(v1 + 72);
        v10 = 0.0;
        do
        {
          sub_26298A3C8(v14, v4, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
          v16 = *&v4[v13];
          sub_26298A430(v4, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
          v10 = v10 + v16;
          v14 += v15;
          --v12;
        }

        while (v12);
      }

      else
      {
        v10 = 0.0;
      }

      ++v8;
      v9 = v9 + v10;
      if (v8 == v7)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup();
  v63 = *(v2 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v81 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = sub_262996B24();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v80 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v62 = &v60 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v60 - v26;
  MEMORY[0x28223BE20](v25);
  v71 = &v60 - v28;
  result = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp();
  v30 = *(v1 + *(result + 20));
  v70 = *(v30 + 16);
  if (v70)
  {
    v31 = 0;
    v69 = v30 + 32;
    v82 = (v19 + 48);
    v84 = (v19 + 32);
    v78 = v19 + 16;
    v75 = v19 + 8;
    v65 = (v19 + 56);
    v72 = MEMORY[0x277D84F90];
    v67 = v17;
    v68 = v15;
    v83 = v19;
    v79 = v27;
    v66 = v30;
    v64 = v12;
    while (v31 < *(v30 + 16))
    {
      v32 = *(v69 + 16 * v31 + 8);
      v33 = *(v32 + 16);
      v73 = v32;
      v74 = v31;
      if (v33)
      {
        v34 = v63;
        v35 = v32 + ((*(v63 + 80) + 32) & ~*(v63 + 80));

        v36 = *(v34 + 72);
        v37 = MEMORY[0x277D84F90];
        do
        {
          sub_26298A3C8(v35, v5, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
          v38 = v81;
          SEStorageManagementViewModel.ViennaUsageGroup.lastUsedDate.getter(v81);
          sub_262963C48(v38, v12);
          sub_26298A430(v5, type metadata accessor for SEStorageManagementViewModel.ViennaUsageGroup);
          if ((*v82)(v12, 1, v18) == 1)
          {
            sub_262963CB8(v12);
          }

          else
          {
            v39 = *v84;
            (*v84)(v80, v12, v18);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_2629658A0(0, *(v37 + 2) + 1, 1, v37);
            }

            v41 = *(v37 + 2);
            v40 = *(v37 + 3);
            if (v41 >= v40 >> 1)
            {
              v37 = sub_2629658A0(v40 > 1, v41 + 1, 1, v37);
            }

            *(v37 + 2) = v41 + 1;
            v39(&v37[((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v41], v80, v18);
          }

          v35 += v36;
          --v33;
        }

        while (v33);
      }

      else
      {

        v37 = MEMORY[0x277D84F90];
      }

      v42 = *(v37 + 2);
      if (v42)
      {
        v43 = &v37[(*(v83 + 80) + 32) & ~*(v83 + 80)];
        v44 = v79;
        v76 = *(v83 + 16);
        v77 = v43;
        result = v76(v79);
        v45 = v62;
        if (v42 != 1)
        {
          v55 = 1;
          while (1)
          {
            v56 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              break;
            }

            v57 = v83;
            (v76)(v45, &v77[*(v83 + 72) * v55], v18);
            sub_26298A5B0(&qword_27FF31600, MEMORY[0x277CC9578]);
            v58 = sub_262996D14();
            v59 = *(v57 + 8);
            if (v58)
            {
              v59(v44, v18);
              result = (*v84)(v44, v45, v18);
            }

            else
            {
              result = (v59)(v45, v18);
            }

            ++v55;
            v44 = v79;
            if (v56 == v42)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          break;
        }

LABEL_19:
        v46 = v68;
        (*v84)(v68, v44, v18);
        (*v65)(v46, 0, 1, v18);
      }

      else
      {
        v46 = v68;
        (*v65)(v68, 1, 1, v18);
      }

      v47 = v67;
      sub_262963C48(v46, v67);

      v48 = (*v82)(v47, 1, v18);
      v49 = v83;
      v12 = v64;
      if (v48 == 1)
      {
        result = sub_262963CB8(v47);
      }

      else
      {
        v50 = *v84;
        (*v84)(v71, v47, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_2629658A0(0, v72[2] + 1, 1, v72);
        }

        v52 = v72[2];
        v51 = v72[3];
        if (v52 >= v51 >> 1)
        {
          v72 = sub_2629658A0(v51 > 1, v52 + 1, 1, v72);
        }

        v53 = v71;
        v54 = v72;
        v72[2] = v52 + 1;
        result = (v50)(v54 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v52, v53, v18);
      }

      v30 = v66;
      v31 = v74 + 1;
      if (v74 + 1 == v70)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
    v72 = MEMORY[0x277D84F90];
LABEL_34:
    sub_262963D20(v72, v61);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.init(application:categories:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2629659F8(a1, a3);
  result = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_262989B38()
{
  if (*v0)
  {
    result = 0x69726F6765746163;
  }

  else
  {
    result = 0x746163696C707061;
  }

  *v0;
  return result;
}

uint64_t sub_262989B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_262996FD4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262996FD4();

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

uint64_t sub_262989C68(uint64_t a1)
{
  v2 = sub_26298A2FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262989CA4(uint64_t a1)
{
  v2 = sub_26298A2FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31F08, &qword_26299A3E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298A2FC();
  sub_262997074();
  v14 = 0;
  type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  sub_26298A5B0(&qword_27FF31538, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo);
  sub_262996FB4();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp() + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31F18, &qword_26299A3F0);
    sub_26298A350(&qword_27FF31F20, sub_262986E90);
    sub_262996FB4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.hashValue.getter()
{
  sub_262997004();
  v1 = *v0;
  v2 = v0[1];
  sub_262996D64();
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31F28, &qword_26299A3F8);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298A2FC();
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v22;
  v17 = v14;
  v27 = 0;
  sub_26298A5B0(&qword_27FF31568, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo);
  v18 = v23;
  sub_262996F44();
  sub_2629659F8(v24, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31F18, &qword_26299A3F0);
  v26 = 1;
  sub_26298A350(&qword_27FF31F30, sub_262986E3C);
  sub_262996F44();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v25;
  sub_26298A3C8(v17, v21, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26298A430(v17, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
}

uint64_t sub_26298A294()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SEStorageManagementViewModel.ViennaUsageApp.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_262996D64();
}

unint64_t sub_26298A2FC()
{
  result = qword_27FF31F10;
  if (!qword_27FF31F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31F10);
  }

  return result;
}

uint64_t sub_26298A350(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31F18, &qword_26299A3F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26298A3C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26298A430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26298A494(void *a1)
{
  a1[1] = sub_26298A5B0(&qword_27FF317A0, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
  a1[2] = sub_26298A5B0(&qword_27FF31718, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
  a1[3] = sub_26298A5B0(&qword_27FF31F38, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
  result = sub_26298A5B0(&qword_27FF31F40, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
  a1[4] = result;
  return result;
}

uint64_t sub_26298A5B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26298A60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26298A6DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_26298A794()
{
  type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  if (v0 <= 0x3F)
  {
    sub_26298A818();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26298A818()
{
  if (!qword_27FF31F60)
  {
    v0 = sub_262996DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF31F60);
    }
  }
}

unint64_t sub_26298A87C()
{
  result = qword_27FF31F68;
  if (!qword_27FF31F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31F68);
  }

  return result;
}

unint64_t sub_26298A8D4()
{
  result = qword_27FF31F70;
  if (!qword_27FF31F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31F70);
  }

  return result;
}

unint64_t sub_26298A92C()
{
  result = qword_27FF31F78;
  if (!qword_27FF31F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31F78);
  }

  return result;
}

uint64_t type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp()
{
  result = qword_27FF31FC0;
  if (!qword_27FF31FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.usage.setter(double a1)
{
  result = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.id.getter()
{
  type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  sub_262996E84();
  return 0;
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SEStorageManagementViewModel.ApplicationInfo() + 24);

  return sub_262967904(v3, a1);
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.localizedTitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.init(app:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp() + 20)) = 0;

  return sub_2629659F8(a1, a2);
}

BOOL static SEStorageManagementViewModel.MuirfieldUsageApp.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_262996FD4(), result = 0, (v5 & 1) != 0))
  {
    v7 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp();
    return *(a1 + *(v7 + 20)) == *(a2 + *(v7 + 20));
  }

  return result;
}

uint64_t sub_26298AC2C()
{
  if (*v0)
  {
    result = 0x6567617375;
  }

  else
  {
    result = 7368801;
  }

  *v0;
  return result;
}

uint64_t sub_26298AC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7368801 && a2 == 0xE300000000000000;
  if (v5 || (sub_262996FD4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262996FD4();

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

uint64_t sub_26298AD34(uint64_t a1)
{
  v2 = sub_26298AF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26298AD70(uint64_t a1)
{
  v2 = sub_26298AF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31F80, &qword_26299A688);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298AF64();
  sub_262997074();
  v13[15] = 0;
  type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  sub_26298B7D4(&qword_27FF31538, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo);
  sub_262996FB4();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp() + 20));
    v13[14] = 1;
    sub_262996FA4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26298AF64()
{
  result = qword_27FF31F88;
  if (!qword_27FF31F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31F88);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262996D64();
  v3 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp() + 20));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x26672E320](*&v3);
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.hashValue.getter()
{
  sub_262997004();
  v1 = *v0;
  v2 = v0[1];
  sub_262996D64();
  v3 = *(v0 + *(type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp() + 20));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26672E320](*&v3);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.MuirfieldUsageApp.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31F90, &qword_26299A690);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v9 = &v23 - v8;
  v10 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298AF64();
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v10;
  v15 = v13;
  v16 = v25;
  v29 = 0;
  sub_26298B7D4(&qword_27FF31568, type metadata accessor for SEStorageManagementViewModel.ApplicationInfo);
  v18 = v26;
  v17 = v27;
  sub_262996F44();
  sub_2629659F8(v18, v15);
  v28 = 1;
  sub_262996F34();
  v20 = v19;
  v21 = *(v23 + 20);
  (*(v16 + 8))(v9, v17);
  *(v15 + v21) = v20;
  sub_26298B5F0(v15, v24, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26298B658(v15, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
}

uint64_t sub_26298B3A0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SEStorageManagementViewModel.ApplicationInfo() + 24);

  return sub_262967904(v3, a1);
}

uint64_t sub_26298B3E4()
{
  type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  sub_262996E84();
  return 0;
}

uint64_t sub_26298B464@<X0>(void *a1@<X8>)
{
  type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  result = sub_262996E84();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

BOOL sub_26298B4C4(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
  }

  v7 = sub_262996FD4();
  result = 0;
  if (v7)
  {
    return *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20));
  }

  return result;
}

uint64_t sub_26298B538(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_262996D64();
  v6 = *(v2 + *(a2 + 20));
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x26672E320](*&v6);
}

uint64_t sub_26298B58C(uint64_t a1, uint64_t a2)
{
  sub_262997004();
  v4 = *v2;
  v5 = v2[1];
  sub_262996D64();
  v6 = *(v2 + *(a2 + 20));
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26672E320](*&v6);
  return sub_262997044();
}

uint64_t sub_26298B5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26298B658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26298B6B8(void *a1)
{
  a1[1] = sub_26298B7D4(&qword_27FF31F98, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
  a1[2] = sub_26298B7D4(&qword_27FF31FA0, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
  a1[3] = sub_26298B7D4(&qword_27FF31FA8, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
  result = sub_26298B7D4(&qword_27FF31FB0, type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp);
  a1[4] = result;
  return result;
}

uint64_t sub_26298B7D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26298B830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26298B8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26298B920()
{
  result = type metadata accessor for SEStorageManagementViewModel.ApplicationInfo();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26298B9A8()
{
  result = qword_27FF31FD0;
  if (!qword_27FF31FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31FD0);
  }

  return result;
}

unint64_t sub_26298BA00()
{
  result = qword_27FF31FD8;
  if (!qword_27FF31FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31FD8);
  }

  return result;
}

unint64_t sub_26298BA58()
{
  result = qword_27FF31FE0;
  if (!qword_27FF31FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31FE0);
  }

  return result;
}

uint64_t sub_26298BAAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    v3 = 0xD000000000000017;
    if (v2 == 2)
    {
      v4 = 0x800000026299BF30;
    }

    else
    {
      v4 = 0x800000026299BF50;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x437972616D697270;
    }

    else
    {
      v3 = 0x7972616D6D7573;
    }

    if (v2)
    {
      v4 = 0xEF79726F67657461;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x800000026299BF30;
    }

    else
    {
      v6 = 0x800000026299BF50;
    }

    if (v3 != 0xD000000000000017)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x437972616D697270;
    }

    else
    {
      v5 = 0x7972616D6D7573;
    }

    if (a2)
    {
      v6 = 0xEF79726F67657461;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
LABEL_26:
    v7 = sub_262996FD4();
    goto LABEL_27;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_26298BC10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = 0xD00000000000001FLL;
  v4 = "viennaSecondaryCategory";
  v5 = a1;
  v6 = 0xD000000000000019;
  if (a1 == 4)
  {
    v6 = 0xD000000000000016;
    v7 = "UsageFrequency_Localizable";
  }

  else
  {
    v7 = "Functional_Localizable";
  }

  if (a1 == 3)
  {
    v8 = 0xD00000000000001ALL;
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 3)
  {
    v7 = "ESimTypes_Localizable";
  }

  v9 = 0xD000000000000017;
  if (v5 == 1)
  {
    v10 = "SEStorageManagement_Localizable";
  }

  else
  {
    v9 = 0xD000000000000015;
    v10 = "AppletTypes_Localizable";
  }

  if (v5)
  {
    v3 = v9;
  }

  else
  {
    v10 = "viennaSecondaryCategory";
  }

  if (v5 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001ALL;
      v4 = "ESimTypes_Localizable";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000016;
      v4 = "UsageFrequency_Localizable";
    }

    else
    {
      v2 = 0xD000000000000019;
      v4 = "Functional_Localizable";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000017;
      v4 = "SEStorageManagement_Localizable";
    }

    else
    {
      v4 = "AppletTypes_Localizable";
    }
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_262996FD4();
  }

  return v13 & 1;
}

double SEStorageManagementViewModel.summary.getter@<D0>(uint64_t a1@<X8>)
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

double SEStorageManagementViewModel.init(summary:entries:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = result;
  *(a3 + 48) = a2;
  return result;
}

uint64_t sub_26298BDD4()
{
  v1 = *v0;
  sub_262997004();
  sub_262996D64();

  return sub_262997044();
}

uint64_t sub_26298BEAC()
{
  *v0;
  *v0;
  *v0;
  sub_262996D64();
}

uint64_t sub_26298BF70()
{
  v1 = *v0;
  sub_262997004();
  sub_262996D64();

  return sub_262997044();
}

uint64_t sub_26298C044@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26298DBCC();
  *a2 = result;
  return result;
}

void sub_26298C074(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x7972616D6D7573;
  v4 = 0x800000026299BF30;
  if (*v1 != 2)
  {
    v4 = 0x800000026299BF50;
  }

  if (*v1)
  {
    v3 = 0x437972616D697270;
    v2 = 0xEF79726F67657461;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_26298C108()
{
  v1 = 0x7972616D6D7573;
  *v0;
  if (*v0)
  {
    v1 = 0x437972616D697270;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_26298C198@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26298DBCC();
  *a1 = result;
  return result;
}

uint64_t sub_26298C1CC(uint64_t a1)
{
  v2 = sub_26298C558();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26298C208(uint64_t a1)
{
  v2 = sub_26298C558();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31FE8, &qword_26299A8F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298C558();
  sub_262997064();
  if (!v2)
  {
    v19 = 0;
    sub_26298C5AC();
    sub_262996F44();
    v17 = v21;
    v18 = v20;
    v11 = v22;
    v12 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32000, &qword_26299A8F8);
    v19 = 1;
    sub_26298C600();
    sub_262996F44();
    if (*(v20 + 16))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317C8, &unk_26299A900);
      v19 = 2;
      sub_26298C6B4();
      sub_262996F44();
      if (*(v20 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317D8, &unk_262997F80);
        v19 = 3;
        sub_26298C768();
        sub_262996F44();
        if (*(v20 + 16))
        {
          v14 = MEMORY[0x277D84F90];
LABEL_10:

          (*(v6 + 8))(v9, v5);
          v16 = v17;
          *a2 = v18;
          *(a2 + 16) = v16;
          *(a2 + 32) = v11;
          *(a2 + 40) = v12;
          *(a2 + 48) = v14;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        v15 = sub_262970724(v20);
      }

      else
      {
        v15 = sub_262970980(v20);
      }
    }

    else
    {
      v15 = sub_262970B84(v20);
    }

    v14 = v15;
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26298C558()
{
  result = qword_27FF31FF0;
  if (!qword_27FF31FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31FF0);
  }

  return result;
}

unint64_t sub_26298C5AC()
{
  result = qword_27FF31FF8;
  if (!qword_27FF31FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31FF8);
  }

  return result;
}

unint64_t sub_26298C600()
{
  result = qword_27FF32008;
  if (!qword_27FF32008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF32000, &qword_26299A8F8);
    sub_26298D7A4(&qword_27FF31820, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32008);
  }

  return result;
}

unint64_t sub_26298C6B4()
{
  result = qword_27FF317D0;
  if (!qword_27FF317D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF317C8, &unk_26299A900);
    sub_26298D7A4(&qword_27FF317A8, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF317D0);
  }

  return result;
}

unint64_t sub_26298C768()
{
  result = qword_27FF317E0;
  if (!qword_27FF317E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF317D8, &unk_262997F80);
    sub_26298D7A4(&qword_27FF317A0, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF317E0);
  }

  return result;
}

uint64_t SEStorageManagementViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317E8, &unk_26299A910);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = v85 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317F0, &qword_262997F90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v90 = v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32010, &qword_26299A920);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v94 = v85 - v11;
  v12 = type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory(0);
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v93 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v86 = v85 - v16;
  v98 = type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp();
  v88 = *(v98 - 8);
  v17 = *(v88 + 64);
  v18 = MEMORY[0x28223BE20](v98);
  v89 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v97 = v85 - v20;
  v101 = type metadata accessor for SEStorageManagementViewModel.PrimaryCategory(0);
  v95 = *(v101 - 8);
  v21 = *(v95 + 64);
  v22 = MEMORY[0x28223BE20](v101);
  v96 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v85 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32018, &unk_26299A928);
  v91 = *(v26 - 8);
  v27 = *(v91 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = v85 - v28;
  v30 = *(v1 + 32);
  v31 = *(v1 + 40);
  v32 = *(v1 + 48);
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298C558();
  sub_262997074();
  v34 = *v1;
  v103[1] = *(v1 + 16);
  v103[0] = v34;
  v104 = v30;
  v105 = v31;
  v102[0] = 0;
  sub_26298D504();
  v35 = v92;
  result = sub_262996FB4();
  if (v35)
  {
    return (*(v91 + 8))(v29, v26);
  }

  v85[0] = v29;
  v85[1] = 0;
  v92 = v26;
  v37 = *(v32 + 16);
  if (v37)
  {
    v38 = 0;
    v39 = v32 + 32;
    v40 = v32 + 32;
    v41 = v86;
    do
    {
      if (v38 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_53;
      }

      sub_26296F988(v40, v103);
      sub_262973858(v103, v102);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31948, &qword_262998A30);
      result = swift_dynamicCast();
      v42 = result;
      if (!result)
      {
        break;
      }

      ++v38;
      result = sub_26298D854(v25, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
      v40 += 40;
    }

    while (v37 != v38);
    v43 = 0;
    v44 = v32 + 32;
    while (v43 < *(v32 + 16))
    {
      sub_26296F988(v44, v103);
      sub_262973858(v103, v102);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31948, &qword_262998A30);
      v45 = v97;
      result = swift_dynamicCast();
      v46 = result;
      if (result)
      {
        ++v43;
        result = sub_26298D854(v45, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
        v44 += 40;
        if (v37 != v43)
        {
          continue;
        }
      }

      v47 = 0;
      v48 = v32 + 32;
      while (1)
      {
        if (v47 >= *(v32 + 16))
        {
          goto LABEL_54;
        }

        sub_26296F988(v48, v103);
        sub_262973858(v103, v102);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31948, &qword_262998A30);
        if (!swift_dynamicCast())
        {
          break;
        }

        ++v47;
        result = sub_26298D854(v41, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
        v48 += 40;
        if (v37 == v47)
        {
          if ((v42 & 1) == 0)
          {
            v49 = (v99 + 56);
            v50 = (v99 + 48);
            v51 = MEMORY[0x277D84F90];
            v52 = v90;
            v53 = v100;
            do
            {
              sub_26296F988(v39, v103);
              sub_262973858(v103, v102);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31948, &qword_262998A30);
              v54 = swift_dynamicCast();
              (*v49)(v52, v54 ^ 1u, 1, v53);
              if ((*v50)(v52, 1, v53) == 1)
              {
                sub_2629737D4(v52, &qword_27FF317F0, &qword_262997F90);
              }

              else
              {
                sub_26298D7EC(v52, v93, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v51 = sub_262965A84(0, v51[2] + 1, 1, v51);
                }

                v56 = v51[2];
                v55 = v51[3];
                v57 = v99;
                if (v56 >= v55 >> 1)
                {
                  v58 = sub_262965A84(v55 > 1, v56 + 1, 1, v51);
                  v57 = v99;
                  v51 = v58;
                }

                v51[2] = v56 + 1;
                sub_26298D7EC(v93, v51 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v56, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
                v52 = v90;
                v53 = v100;
              }

              v39 += 40;
              --v37;
            }

            while (v37);
            *&v103[0] = v51;
            v102[0] = 2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317C8, &unk_26299A900);
            sub_26298D6F0();
            v81 = v92;
            v82 = v85[0];
            sub_262996FB4();
            (*(v91 + 8))(v82, v81);
          }

          goto LABEL_30;
        }
      }

      if (v42)
      {
LABEL_30:
        v62 = v94;
        v63 = (v95 + 56);
        v64 = (v95 + 48);
        v59 = MEMORY[0x277D84F90];
        v65 = v101;
        do
        {
          sub_26296F988(v39, v103);
          sub_262973858(v103, v102);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31948, &qword_262998A30);
          v66 = swift_dynamicCast();
          (*v63)(v62, v66 ^ 1u, 1, v65);
          if ((*v64)(v62, 1, v65) == 1)
          {
            sub_2629737D4(v62, &qword_27FF32010, &qword_26299A920);
          }

          else
          {
            sub_26298D7EC(v62, v96, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_262965BE0(0, v59[2] + 1, 1, v59);
            }

            v68 = v59[2];
            v67 = v59[3];
            v69 = v95;
            if (v68 >= v67 >> 1)
            {
              v70 = sub_262965BE0(v67 > 1, v68 + 1, 1, v59);
              v69 = v95;
              v59 = v70;
            }

            v59[2] = v68 + 1;
            sub_26298D7EC(v96, v59 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v68, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
            v62 = v94;
            v65 = v101;
          }

          v39 += 40;
          --v37;
        }

        while (v37);
        goto LABEL_27;
      }

      if (!v46)
      {
        return (*(v91 + 8))(v85[0], v92);
      }

      v71 = (v88 + 56);
      v72 = (v88 + 48);
      v73 = MEMORY[0x277D84F90];
      v74 = v87;
      v75 = v98;
      do
      {
        sub_26296F988(v39, v103);
        sub_262973858(v103, v102);
        v76 = swift_dynamicCast();
        (*v71)(v74, v76 ^ 1u, 1, v75);
        if ((*v72)(v74, 1, v75) == 1)
        {
          sub_2629737D4(v74, &qword_27FF317E8, &unk_26299A910);
        }

        else
        {
          sub_26298D7EC(v74, v89, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_262965A5C(0, v73[2] + 1, 1, v73);
          }

          v78 = v73[2];
          v77 = v73[3];
          v79 = v88;
          if (v78 >= v77 >> 1)
          {
            v80 = sub_262965A5C(v77 > 1, v78 + 1, 1, v73);
            v79 = v88;
            v73 = v80;
          }

          v73[2] = v78 + 1;
          sub_26298D7EC(v89, v73 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v78, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
          v74 = v87;
          v75 = v98;
        }

        v39 += 40;
        --v37;
      }

      while (v37);
      *&v103[0] = v73;
      v102[0] = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF317D8, &unk_262997F80);
      sub_26298D63C();
      v83 = v92;
      v84 = v85[0];
      sub_262996FB4();
      (*(v91 + 8))(v84, v83);
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
LABEL_27:
    *&v103[0] = v59;
    v102[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32000, &qword_26299A8F8);
    sub_26298D558();
    v60 = v92;
    v61 = v85[0];
    sub_262996FB4();
    (*(v91 + 8))(v61, v60);
  }

  return result;
}

unint64_t sub_26298D504()
{
  result = qword_27FF32020;
  if (!qword_27FF32020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32020);
  }

  return result;
}

unint64_t sub_26298D558()
{
  result = qword_27FF32028;
  if (!qword_27FF32028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF32000, &qword_26299A8F8);
    sub_26298D7A4(&qword_27FF31828, type metadata accessor for SEStorageManagementViewModel.PrimaryCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32028);
  }

  return result;
}

unint64_t sub_26298D63C()
{
  result = qword_27FF31810;
  if (!qword_27FF31810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF317D8, &unk_262997F80);
    sub_26298D7A4(&qword_27FF31718, type metadata accessor for SEStorageManagementViewModel.ViennaUsageApp);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31810);
  }

  return result;
}

unint64_t sub_26298D6F0()
{
  result = qword_27FF31818;
  if (!qword_27FF31818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF317C8, &unk_26299A900);
    sub_26298D7A4(&qword_27FF31748, type metadata accessor for SEStorageManagementViewModel.WalletUsageCategory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF31818);
  }

  return result;
}

uint64_t sub_26298D7A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26298D7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26298D854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26298D8D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26298D918(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SEStorageManagementViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SEStorageManagementViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26298DAC8()
{
  result = qword_27FF32030;
  if (!qword_27FF32030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32030);
  }

  return result;
}

unint64_t sub_26298DB20()
{
  result = qword_27FF32038;
  if (!qword_27FF32038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32038);
  }

  return result;
}

unint64_t sub_26298DB78()
{
  result = qword_27FF32040;
  if (!qword_27FF32040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32040);
  }

  return result;
}

uint64_t sub_26298DBCC()
{
  v0 = sub_262996ED4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t SEStorageManagementViewModel.MuirfieldRecommendableForDelete.lastUsedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF314D0, &qword_262997510);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_262996B24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v30 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v1 + 16);
  if (v15)
  {
    v16 = *v1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(type metadata accessor for SEStorageManagementViewModel.ApplicationInfo() + 24);
    v18 = *(v11 + 72);
    v27 = v7;
    v29 = (v7 + 32);
    v19 = MEMORY[0x277D84F90];
    v28 = v6;
    v26 = v18;
    do
    {
      sub_26298DF70(v16, v14);
      sub_262967904(&v14[v17], v5);
      sub_26298DFD4(v14);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_262963CB8(v5);
      }

      else
      {
        v20 = *v29;
        (*v29)(v30, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2629658A0(0, v19[2] + 1, 1, v19);
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = sub_2629658A0(v21 > 1, v22 + 1, 1, v19);
        }

        v19[2] = v22 + 1;
        v23 = v19 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22;
        v6 = v28;
        v20(v23, v30, v28);
        v18 = v26;
      }

      v16 += v18;
      --v15;
    }

    while (v15);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  sub_262963D20(v19, v25);
}

uint64_t sub_26298DF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26298DFD4(uint64_t a1)
{
  v2 = type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SEStorageManagementViewModel.MuirfieldRecommendableForDelete.init(apps:usage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t static SEStorageManagementViewModel.MuirfieldRecommendableForDelete.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_26298293C(*a1, *a2) & (v2 == v3);
}

uint64_t sub_26298E09C()
{
  if (*v0)
  {
    result = 0x6567617375;
  }

  else
  {
    result = 1936748641;
  }

  *v0;
  return result;
}

uint64_t sub_26298E0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1936748641 && a2 == 0xE400000000000000;
  if (v5 || (sub_262996FD4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262996FD4();

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

uint64_t sub_26298E1A4(uint64_t a1)
{
  v2 = sub_26298E840();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26298E1E0(uint64_t a1)
{
  v2 = sub_26298E840();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementViewModel.MuirfieldRecommendableForDelete.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32048, &qword_26299AB18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298E840();

  sub_262997074();
  v14 = v9;
  v13[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32058, &qword_26299AB20);
  sub_26298E894(&qword_27FF32060, &qword_27FF31FA0);
  sub_262996FB4();

  if (!v2)
  {
    v13[6] = 1;
    sub_262996FA4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SEStorageManagementViewModel.MuirfieldRecommendableForDelete.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_262965DE4(a1, *v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x26672E320](*&v3);
}

uint64_t SEStorageManagementViewModel.MuirfieldRecommendableForDelete.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_262997004();
  sub_262965DE4(v5, v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x26672E320](*&v3);
  return sub_262997044();
}

uint64_t SEStorageManagementViewModel.MuirfieldRecommendableForDelete.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32068, &qword_26299AB28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298E840();
  sub_262997064();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32058, &qword_26299AB20);
  v15[7] = 0;
  sub_26298E894(&qword_27FF32070, &qword_27FF31F98);
  sub_262996F44();
  v11 = v16;
  v15[6] = 1;
  sub_262996F34();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  a2[1] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26298E744(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_26298293C(*a1, *a2) & (v2 == v3);
}

uint64_t sub_26298E78C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_262965DE4(a1, *v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  return MEMORY[0x26672E320](*&v3);
}

uint64_t sub_26298E7D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_262997004();
  sub_262965DE4(v5, v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x26672E320](*&v3);
  return sub_262997044();
}

unint64_t sub_26298E840()
{
  result = qword_27FF32050;
  if (!qword_27FF32050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32050);
  }

  return result;
}

uint64_t sub_26298E894(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF32058, &qword_26299AB20);
    sub_26298E91C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26298E91C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SEStorageManagementViewModel.MuirfieldUsageApp();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26298E960(void *a1)
{
  a1[1] = sub_26298E9A0();
  a1[2] = sub_26298E9F4();
  a1[3] = sub_26298EA48();
  result = sub_26298EA9C();
  a1[4] = result;
  return result;
}

unint64_t sub_26298E9A0()
{
  result = qword_27FF32078;
  if (!qword_27FF32078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32078);
  }

  return result;
}

unint64_t sub_26298E9F4()
{
  result = qword_27FF32080;
  if (!qword_27FF32080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32080);
  }

  return result;
}

unint64_t sub_26298EA48()
{
  result = qword_27FF32088;
  if (!qword_27FF32088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32088);
  }

  return result;
}

unint64_t sub_26298EA9C()
{
  result = qword_27FF32090;
  if (!qword_27FF32090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32090);
  }

  return result;
}

unint64_t sub_26298EAF4()
{
  result = qword_27FF32098;
  if (!qword_27FF32098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32098);
  }

  return result;
}

uint64_t sub_26298EB48(uint64_t *a1, int a2)
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

uint64_t sub_26298EB90(uint64_t result, int a2, int a3)
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

unint64_t sub_26298EBF0()
{
  result = qword_27FF320A0;
  if (!qword_27FF320A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF320A0);
  }

  return result;
}

unint64_t sub_26298EC48()
{
  result = qword_27FF320A8;
  if (!qword_27FF320A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF320A8);
  }

  return result;
}

unint64_t sub_26298ECA0()
{
  result = qword_27FF320B0;
  if (!qword_27FF320B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF320B0);
  }

  return result;
}

uint64_t sub_26298ECF4(uint64_t a1, id *a2)
{
  v3 = sub_262996AB4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_262996AA4();
  v6 = sub_262996B14();
  v8 = v7;
  sub_262992440();
  sub_262996A94();

  sub_262969EB4(v6, v8);

  *a2 = v10;
  return result;
}

uint64_t sub_26298EDDC(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = sub_262996AB4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_262996AA4();
  v8 = sub_262996B14();
  v10 = v9;
  a3();
  sub_262996A94();
  v11 = *a2;

  sub_262969EB4(v8, v10);

  *a2 = v13;
  return result;
}

BOOL sub_26298EECC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B08, &qword_262998CE8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  sub_262976524(a2);
  v10 = sub_262996AB4();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_262996AA4();
  v13 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present();
  v14 = sub_262996B14();
  v16 = v15;
  sub_262992FE8(&qword_27FF31A98, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present);
  sub_262996A94();

  sub_262969EB4(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_26297658C(v9, a2);
  sub_262993030(a2, v7);
  v18 = (*(v17 + 48))(v7, 1, v13) != 1;
  sub_262976524(v7);
  return v18;
}

BOOL sub_26298F0D0(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = *a2;

  v6 = sub_262996AB4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_262996AA4();
  v9 = sub_262996B14();
  v11 = v10;
  a3();
  sub_262996A94();

  sub_262969EB4(v9, v11);
  *a2 = v13;
  return v13 != 0;
}

BOOL sub_26298F1C0(uint64_t a1, _BYTE *a2)
{
  v3 = sub_262996AB4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_262996AA4();
  v6 = sub_262996B14();
  v8 = v7;
  sub_262992280();
  sub_262996A94();

  sub_262969EB4(v6, v8);
  *a2 = v10;
  return v10 != 3;
}

BOOL sub_26298F2A0(uint64_t a1, id *a2)
{
  v3 = sub_262996AB4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_262996AA4();
  v6 = sub_262996B14();
  v8 = v7;
  sub_262992440();
  sub_262996A94();

  sub_262969EB4(v6, v8);
  *a2 = v10;
  return v10 != 0;
}

uint64_t sub_26298F388@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31B08, &qword_262998CE8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = type metadata accessor for SEStorageManagementUIServerXPCParameters.Present();
  v15 = *(v14 - 8);
  v23 = *(v15 + 56);
  v23(v13, 1, 1, v14);
  if (a1)
  {
    v16 = sub_262996AB4();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_262996AA4();
    v2 = sub_262996B14();
    a1 = v19;
    sub_262992FE8(&qword_27FF31A98, type metadata accessor for SEStorageManagementUIServerXPCParameters.Present);
    sub_262996A94();
    sub_262976524(v13);
    sub_262969EB4(v2, a1);

    v23(v11, 0, 1, v14);
    sub_26297658C(v11, v13);
    sub_262993030(v13, v8);
    if ((*(v15 + 48))(v8, 1, v14) != 1)
    {
      sub_262976524(v13);
      return sub_2629930A0(v8, v22);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_262969EB4(v2, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26298F610@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v5 = sub_262996AB4();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_262996AA4();
    v8 = sub_262996B14();
    v10 = v9;
    a2();
    sub_262996A94();
    sub_262969EB4(v8, v10);

    if (v12)
    {
      *a3 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26298F708@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_262996AB4();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_262996AA4();
    v6 = sub_262996B14();
    v8 = v7;
    sub_262992280();
    sub_262996A94();
    sub_262969EB4(v6, v8);

    if (v10 != 3)
    {
      *a2 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26298F7F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_262996AB4();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_262996AA4();
    v6 = sub_262996B14();
    v8 = v7;
    sub_262992440();
    sub_262996A94();
    sub_262969EB4(v6, v8);

    if (v10)
    {
      *a2 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26298F910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F54736573736170 && a2 == 0xEE006574656C6544)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262996FD4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26298F9A0(uint64_t a1)
{
  v2 = sub_26298FBC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26298F9DC(uint64_t a1)
{
  v2 = sub_26298FBC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementUIClientXPCParameters.DeletePass.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320B8, &unk_26299ADB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298FBC4();

  sub_262997074();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319C8, &qword_262998A70);
  sub_26298FDD0(&qword_27FF319D0, &qword_27FF319D8);
  sub_262996FB4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26298FBC4()
{
  result = qword_27FF320C0;
  if (!qword_27FF320C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF320C0);
  }

  return result;
}

uint64_t SEStorageManagementUIClientXPCParameters.DeletePass.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320C8, &qword_26299ADC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26298FBC4();
  sub_262997064();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF319C8, &qword_262998A70);
    sub_26298FDD0(&qword_27FF31A58, &qword_27FF31A60);
    sub_262996F44();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26298FDD0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF319C8, &qword_262998A70);
    sub_262992FE8(a2, type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26298FF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000026299C7F0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_262996FD4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_262990004(uint64_t a1)
{
  v2 = sub_262990228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262990040(uint64_t a1)
{
  v2 = sub_262990228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320D0, &qword_26299ADC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262990228();

  sub_262997074();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A08, &qword_26299ADD0);
  sub_262990434(&qword_27FF31A10, &qword_27FF314F0);
  sub_262996FB4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_262990228()
{
  result = qword_27FF320D8;
  if (!qword_27FF320D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF320D8);
  }

  return result;
}

uint64_t SEStorageManagementUIClientXPCParameters.DeleteSecureElementCredentials.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320E0, &qword_26299ADD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262990228();
  sub_262997064();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31A08, &qword_26299ADD0);
    sub_262990434(&qword_27FF31A80, &qword_27FF31500);
    sub_262996F44();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262990434(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF31A08, &qword_26299ADD0);
    sub_262992FE8(a2, MEMORY[0x277D492D0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_262990518(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v13 = *v3;
  v5 = sub_262996AE4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_262996AD4();
  a3();
  v8 = sub_262996AC4();
  v10 = v9;
  v11 = sub_262996B04();
  sub_262969EB4(v8, v10);

  return v11;
}

uint64_t sub_2629906D0(uint64_t a1)
{
  v2 = sub_262990DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26299070C(uint64_t a1)
{
  v2 = sub_262990DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262990748()
{
  v1 = 0x6569636966667573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C6C65636E6163;
  }
}

uint64_t sub_2629907B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262992EB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2629907E0(uint64_t a1)
{
  v2 = sub_262990CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26299081C(uint64_t a1)
{
  v2 = sub_262990CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262990858(uint64_t a1)
{
  v2 = sub_262990D08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262990894(uint64_t a1)
{
  v2 = sub_262990D08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629908D0(uint64_t a1)
{
  v2 = sub_262990D5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26299090C(uint64_t a1)
{
  v2 = sub_262990D5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320E8, &qword_26299ADE0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320F0, &qword_26299ADE8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF320F8, &qword_26299ADF0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32100, &qword_26299ADF8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262990CB4();
  sub_262997074();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_262990D5C();
      v12 = v26;
      sub_262996F64();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_262990D08();
      v12 = v29;
      sub_262996F64();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_262990DB0();
    sub_262996F64();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_262990CB4()
{
  result = qword_27FF32108;
  if (!qword_27FF32108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32108);
  }

  return result;
}

unint64_t sub_262990D08()
{
  result = qword_27FF32110;
  if (!qword_27FF32110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32110);
  }

  return result;
}

unint64_t sub_262990D5C()
{
  result = qword_27FF32118;
  if (!qword_27FF32118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32118);
  }

  return result;
}

unint64_t sub_262990DB0()
{
  result = qword_27FF32120;
  if (!qword_27FF32120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32120);
  }

  return result;
}

uint64_t SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.hashValue.getter()
{
  v1 = *v0;
  sub_262997004();
  MEMORY[0x26672E300](v1);
  return sub_262997044();
}

uint64_t SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32128, &qword_26299AE00);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32130, &qword_26299AE08);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32138, &qword_26299AE10);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32140, &unk_26299AE18);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_262990CB4();
  v20 = v43;
  sub_262997064();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_262996F54();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_262973850();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_262996E44();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF31798, &qword_2629991C0) + 48);
      *v30 = &type metadata for SEStorageManagementUIClientXPCParameters.Dismiss.DismissalContext;
      sub_262996EF4();
      sub_262996E34();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_262990D5C();
          sub_262996EE4();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_262990D08();
          v33 = v22;
          sub_262996EE4();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_262990DB0();
        sub_262996EE4();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_26299143C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262996FD4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2629914C4(uint64_t a1)
{
  v2 = sub_262991688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262991500(uint64_t a1)
{
  v2 = sub_262991688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementUIClientXPCParameters.Dismiss.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32148, &qword_26299AE28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262991688();
  sub_262997074();
  v12 = v8;
  sub_2629916DC();
  sub_262996FB4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_262991688()
{
  result = qword_27FF32150;
  if (!qword_27FF32150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32150);
  }

  return result;
}

unint64_t sub_2629916DC()
{
  result = qword_27FF32158;
  if (!qword_27FF32158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32158);
  }

  return result;
}

uint64_t SEStorageManagementUIClientXPCParameters.Dismiss.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32160, &qword_26299AE30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262991688();
  sub_262997064();
  if (!v2)
  {
    sub_26299189C();
    sub_262996F44();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26299189C()
{
  result = qword_27FF32168;
  if (!qword_27FF32168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32168);
  }

  return result;
}

uint64_t sub_262991920()
{
  v9 = *v0;
  v1 = sub_262996AE4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_262996AD4();
  sub_2629922D4();
  v4 = sub_262996AC4();
  v6 = v5;
  v7 = sub_262996B04();
  sub_262969EB4(v4, v6);

  return v7;
}

uint64_t sub_2629919DC(uint64_t a1, _BYTE *a2)
{
  v3 = sub_262996AB4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_262996AA4();
  v6 = sub_262996B14();
  v8 = v7;
  sub_262992280();
  sub_262996A94();
  sub_262969EB4(v6, v8);

  *a2 = v10;
  return result;
}

uint64_t sub_262991AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746F687370616E73 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262996FD4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_262991B6C(uint64_t a1)
{
  v2 = sub_262991D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262991BA8(uint64_t a1)
{
  v2 = sub_262991D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SEStorageManagementUIClientReturnValues.DeleteResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32170, &qword_26299AE38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262991D78();
  v10 = v8;
  sub_262997074();
  v12[1] = v10;
  sub_262996BD4();
  sub_262992FE8(&qword_27FF32180, MEMORY[0x277D49178]);
  sub_262996FB4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_262991D78()
{
  result = qword_27FF32178;
  if (!qword_27FF32178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32178);
  }

  return result;
}

uint64_t SEStorageManagementUIClientReturnValues.DeleteResult.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF32188, &qword_26299AE40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262991D78();
  sub_262997064();
  if (!v2)
  {
    sub_262996BD4();
    sub_262992FE8(&qword_27FF32190, MEMORY[0x277D49178]);
    sub_262996F44();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_262991FB0()
{
  result = qword_27FF32198;
  if (!qword_27FF32198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32198);
  }

  return result;
}

unint64_t sub_262992004()
{
  result = qword_27FF321A0;
  if (!qword_27FF321A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321A0);
  }

  return result;
}

unint64_t sub_262992058()
{
  result = qword_27FF321A8;
  if (!qword_27FF321A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321A8);
  }

  return result;
}

unint64_t sub_2629920EC()
{
  result = qword_27FF321B0;
  if (!qword_27FF321B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321B0);
  }

  return result;
}

unint64_t sub_262992140()
{
  result = qword_27FF321B8;
  if (!qword_27FF321B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321B8);
  }

  return result;
}

unint64_t sub_262992194()
{
  result = qword_27FF321C0;
  if (!qword_27FF321C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321C0);
  }

  return result;
}

unint64_t sub_2629921EC()
{
  result = qword_27FF321C8;
  if (!qword_27FF321C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321C8);
  }

  return result;
}

unint64_t sub_262992280()
{
  result = qword_27FF321D0;
  if (!qword_27FF321D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321D0);
  }

  return result;
}

unint64_t sub_2629922D4()
{
  result = qword_27FF321D8;
  if (!qword_27FF321D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321D8);
  }

  return result;
}

unint64_t sub_262992328()
{
  result = qword_27FF321E0;
  if (!qword_27FF321E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321E0);
  }

  return result;
}

uint64_t sub_2629923EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_262992440()
{
  result = qword_27FF321E8;
  if (!qword_27FF321E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321E8);
  }

  return result;
}

unint64_t sub_262992494()
{
  result = qword_27FF321F0;
  if (!qword_27FF321F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321F0);
  }

  return result;
}

unint64_t sub_2629924E8()
{
  result = qword_27FF321F8;
  if (!qword_27FF321F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF321F8);
  }

  return result;
}

uint64_t sub_26299253C()
{
  v9 = *v0;
  v1 = sub_262996AE4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_262996AD4();
  sub_262992494();
  v4 = sub_262996AC4();
  v6 = v5;
  v7 = sub_262996B04();
  sub_262969EB4(v4, v6);

  return v7;
}

uint64_t sub_26299266C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2629926B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_262992784()
{
  result = qword_27FF32200;
  if (!qword_27FF32200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32200);
  }

  return result;
}

unint64_t sub_2629927DC()
{
  result = qword_27FF32208;
  if (!qword_27FF32208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32208);
  }

  return result;
}

unint64_t sub_262992834()
{
  result = qword_27FF32210;
  if (!qword_27FF32210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32210);
  }

  return result;
}

unint64_t sub_26299288C()
{
  result = qword_27FF32218;
  if (!qword_27FF32218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF32218);
  }

  return result;
}
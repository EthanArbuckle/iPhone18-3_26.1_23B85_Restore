uint64_t get_enum_tag_for_layout_string_17PasswordManagerUI17PMEditableWebsiteV0E4TypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21CAFB140()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CB86484();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x21CF15F90](0);
      sub_21CB854C4();
      return sub_21CB864D4();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x21CF15F90](v3);
  return sub_21CB864D4();
}

uint64_t sub_21CAFB1C0()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 1;
    return MEMORY[0x21CF15F90](v2);
  }

  if (v1 == 1)
  {
    v2 = 2;
    return MEMORY[0x21CF15F90](v2);
  }

  v4 = *v0;
  MEMORY[0x21CF15F90](0);

  return sub_21CB854C4();
}

uint64_t sub_21CAFB248()
{
  v1 = *v0;
  v2 = v0[1];
  sub_21CB86484();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x21CF15F90](0);
      sub_21CB854C4();
      return sub_21CB864D4();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x21CF15F90](v3);
  return sub_21CB864D4();
}

uint64_t sub_21CAFB2C4(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_21CB86344();
  }
}

unint64_t sub_21CAFB32C()
{
  result = qword_27CDF8478;
  if (!qword_27CDF8478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8478);
  }

  return result;
}

uint64_t sub_21CAFB380(uint64_t a1)
{
  sub_21CB86484();
  sub_21CB80E34();
  sub_21CAFB700(&qword_27CDEE130, MEMORY[0x277CC95F0]);
  sub_21CB85494();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_21CB854C4();
  v6 = (v1 + *(a1 + 24));
  v7 = v6[1];
  if (v7)
  {
    if (v7 != 1)
    {
      v9 = *v6;
      MEMORY[0x21CF15F90](0);
      sub_21CB854C4();
      return sub_21CB864D4();
    }

    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  MEMORY[0x21CF15F90](v8);
  return sub_21CB864D4();
}

uint64_t sub_21CAFB47C(uint64_t a1, uint64_t a2)
{
  sub_21CB80E34();
  sub_21CAFB700(&qword_27CDEE130, MEMORY[0x277CC95F0]);
  sub_21CB85494();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_21CB854C4();
  v7 = (v2 + *(a2 + 24));
  v8 = v7[1];
  if (!v8)
  {
    v9 = 1;
    return MEMORY[0x21CF15F90](v9);
  }

  if (v8 == 1)
  {
    v9 = 2;
    return MEMORY[0x21CF15F90](v9);
  }

  v11 = *v7;
  MEMORY[0x21CF15F90](0);

  return sub_21CB854C4();
}

uint64_t sub_21CAFB574(uint64_t a1, uint64_t a2)
{
  sub_21CB86484();
  sub_21CB80E34();
  sub_21CAFB700(&qword_27CDEE130, MEMORY[0x277CC95F0]);
  sub_21CB85494();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_21CB854C4();
  v7 = (v2 + *(a2 + 24));
  v8 = v7[1];
  if (v8)
  {
    if (v8 != 1)
    {
      v10 = *v7;
      MEMORY[0x21CF15F90](0);
      sub_21CB854C4();
      return sub_21CB864D4();
    }

    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  MEMORY[0x21CF15F90](v9);
  return sub_21CB864D4();
}

uint64_t sub_21CAFB700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CAFB748(uint64_t a1, uint64_t a2)
{
  if ((sub_21CB80E14() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PMEditableWebsite();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (!v12)
  {
    return !v14;
  }

  if (v12 != 1)
  {
    if (v14 >= 2)
    {
      v16 = *v11 == *v13 && v12 == v14;
      if (v16 || (sub_21CB86344() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return v14 == 1;
}

uint64_t sub_21CAFB81C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_21CAFB89C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_21C7A6110(v2, v3);
}

uint64_t sub_21CAFB8DC(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_21CAFC780(&qword_27CDF8950, MEMORY[0x277D49978]);
  result = MEMORY[0x21CF154F0](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_21CA93D98(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CAFBB3C(uint64_t a1)
{
  result = MEMORY[0x21CF154F0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_21CA94078(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CAFBC7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C6EDBAC(a1, &v6 - v4, &qword_27CDEC390, &qword_21CBA40E0);
  return sub_21CB82D84();
}

uint64_t sub_21CAFBD24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21CAFBD9C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBD00, &unk_21CBA20F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v29 = sub_21CB82484();
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v29);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() mainBundle];
  v19 = [v18 bundleIdentifier];

  if (v19)
  {
    v28 = v6;
    v20 = a1;
    v21 = sub_21CB855C4();
    v23 = v22;

    if (v21 == 0xD00000000000001BLL && 0x800000021CB9B5E0 == v23)
    {

LABEL_6:
      sub_21C6EDBAC(v1 + OBJC_IVAR____TtC17PasswordManagerUI21PMSafariAutoFillModel__openURL, v13, &unk_27CDEBD00, &unk_21CBA20F0);
      sub_21C95B2F0(v17);
      sub_21C6EA794(v13, &unk_27CDEBD00, &unk_21CBA20F0);
      sub_21CB82454();
      return (*(v14 + 8))(v17, v29);
    }

    v24 = sub_21CB86344();

    a1 = v20;
    v6 = v28;
    if (v24)
    {
      goto LABEL_6;
    }
  }

  v26 = sub_21CB80BE4();
  (*(*(v26 - 8) + 16))(v9, a1, v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
  (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EDBAC(v9, v6, &qword_27CDEFEE8, &unk_21CBADDE0);

  sub_21CB81DC4();
  return sub_21C6EA794(v9, &qword_27CDEFEE8, &unk_21CBADDE0);
}

uint64_t sub_21CAFC148()
{
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI21PMSafariAutoFillModel__openURL, &unk_27CDEBD00, &unk_21CBA20F0);
  v1 = OBJC_IVAR____TtC17PasswordManagerUI21PMSafariAutoFillModel__safariViewControllerURL;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85A8, &qword_21CBC93E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21CAFC210@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for PMPasswordAutoFillPocketView(0);
  sub_21C6EDBAC(v1 + *(v12 + 40), v11, &qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21C716934(v11, a1, &qword_27CDEC390, &qword_21CBA40E0);
  }

  v14 = *v11;
  sub_21CB85B04();
  v15 = sub_21CB83C94();
  sub_21CB81C14();

  sub_21CB82F74();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t PMPasswordAutoFillPocketView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8488, &qword_21CBC90E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v29 - v5);
  v7 = *(v1 + 8);
  type metadata accessor for PMAccountPickerModel();
  sub_21CAFC780(&qword_27CDEB1F0, type metadata accessor for PMAccountPickerModel);

  v8 = sub_21CB82674();
  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = *(v2 + 64);
  v13 = swift_getKeyPath();
  v14 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8490, &unk_21CBC9138) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4AE8, &qword_21CBBC190) + 28);

  sub_21CAFC210(v14 + v15);
  *v14 = v13;
  *v6 = v8;
  v6[1] = v10;
  v6[2] = KeyPath;
  v6[3] = sub_21CAFC75C;
  v6[4] = v12;
  v16 = *(v2 + 56);
  type metadata accessor for PMSafariAutoFillModel(0);
  sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel);
  sub_21CB82684();
  swift_getKeyPath();
  v17 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF84A0, &qword_21CBC9170) + 36);
  sub_21CB82694();

  v18 = *v2;
  type metadata accessor for PMPasswordManagerState();
  sub_21CAFC780(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  v19 = sub_21CB81CE4();
  v20 = (v6 + *(v3 + 36));
  *v20 = v19;
  v20[1] = v18;
  v21 = *(v2 + *(type metadata accessor for PMPasswordAutoFillPocketView(0) + 44));
  v22 = v18;
  v23 = sub_21CB852C4();
  v24 = type metadata accessor for PMGlobalAnimationNamespaceContainer();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  sub_21CB81104();
  *(v27 + 16) = v23;
  sub_21CAFC994();
  sub_21CAFC780(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer);
  sub_21CB84164();

  return sub_21C6EA794(v6, &qword_27CDF8488, &qword_21CBC90E0);
}

uint64_t sub_21CAFC780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CAFC7C8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();
}

uint64_t sub_21CAFC844(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21C6EDBAC(a1, &v13 - v9, &qword_27CDEFEE8, &unk_21CBADDE0);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6EDBAC(v10, v7, &qword_27CDEFEE8, &unk_21CBADDE0);

  sub_21CB81DC4();
  return sub_21C6EA794(v10, &qword_27CDEFEE8, &unk_21CBADDE0);
}

unint64_t sub_21CAFC994()
{
  result = qword_27CDF84A8;
  if (!qword_27CDF84A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8488, &qword_21CBC90E0);
    sub_21CAFCA38();
    sub_21C984898(&qword_27CDED1A8, &unk_27CDED1B0, &unk_21CBA6420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF84A8);
  }

  return result;
}

unint64_t sub_21CAFCA38()
{
  result = qword_27CDF84B0;
  if (!qword_27CDF84B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF84A0, &qword_21CBC9170);
    sub_21CAFCAF4();
    sub_21CAFC780(&qword_27CDF00E0, type metadata accessor for PMSafariViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF84B0);
  }

  return result;
}

unint64_t sub_21CAFCAF4()
{
  result = qword_27CDF84B8;
  if (!qword_27CDF84B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8490, &unk_21CBC9138);
    sub_21CAFCB98();
    sub_21C984898(&qword_27CDF4B08, &qword_27CDF4AE8, &qword_21CBBC190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF84B8);
  }

  return result;
}

unint64_t sub_21CAFCB98()
{
  result = qword_27CDF84C0;
  if (!qword_27CDF84C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF84C8, &qword_21CBC9178);
    sub_21C71FB40();
    sub_21C984898(&qword_27CDF00D0, &qword_27CDF00D8, &unk_21CBB6630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF84C0);
  }

  return result;
}

id sub_21CAFCCC8()
{
  if (qword_27CDEA3C8 != -1)
  {
    swift_once();
  }

  return sub_21C95C78C();
}

uint64_t _PMPasswordAutoFillPocketViewController.__allocating_init(persona:appID:credentialTypes:promptString:promptStringWhenPasskeysAreAvailable:serviceNameHintStrings:domainNameHintStrings:savedAccountStore:suggestedDomainForNewAccount:localizedHostAppNameForNewAccount:bundleIDForFallbackIconForNewAccount:autoFillQuirksManager:shouldShowAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys:connectedAppAuditToken:isConnectedAppAWebBrowser:initialSearchQuery:savedAccountToInitiallyShowDetailsFor:shouldAllowAddingNewPasswords:bypassLockoutPolicy:authenticatedContext:savedAccountContext:didSelectAccountHandler:didSelectTextToInsertHandler:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9, uint64_t a10, void *a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, uint64_t a26, void *a27, unsigned __int8 a28, unsigned __int8 a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = v35;
  v178 = a6;
  v179 = a8;
  v155 = a5;
  v156 = a7;
  v200 = a4;
  v176 = a2;
  v177 = a3;
  v38 = type metadata accessor for PMPasswordAutoFillPocketView(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v153 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v189 = &v153 - v44;
  v173 = sub_21CB81024();
  *(&v195 + 1) = *(v173 - 8);
  v45 = *(*(&v195 + 1) + 64);
  MEMORY[0x28223BE20](v173);
  *&v195 = &v153 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v153 - v48;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  v50 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199);
  v185 = &v153 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = &v153 - v53;
  v55 = objc_allocWithZone(v36);
  v56 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
  v57 = type metadata accessor for PMAccount(0);
  v58 = *(v57 - 8);
  v183 = *(v58 + 56);
  v184 = v57;
  v182 = v58 + 56;
  v183(&v55[v56], 1, 1);
  v59 = &v55[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem];
  *v59 = 0;
  v59[1] = 0;
  if (a1 >= 3)
  {
    result = sub_21CB861C4();
    __break(1u);
  }

  else
  {
    v192 = v38;
    v193 = v41;
    v194 = v36;
    v175 = a29;
    v197 = a9;
    v198 = a32;
    LODWORD(v196) = byte_282E491E8[a1 + 32];
    v55[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_persona] = v196;
    *&v55[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountStore] = a11;
    *&v55[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_autoFillQuirksManager] = a17;
    v60 = &v55[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectAccountHandler];
    *v60 = a32;
    v60[1] = a33;
    v61 = &v55[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectTextToInsertHandler];
    v186 = a34;
    *v61 = a34;
    v61[1] = a35;
    v62 = type metadata accessor for PMPasswordManager();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    v188 = a17;
    v190 = a33;

    v191 = a35;

    v187 = a11;
    sub_21C6EBF3C(a11, a17);
    v66 = v65;
    if (qword_27CDEA3C8 != -1)
    {
      swift_once();
    }

    v67 = qword_27CE184E8;
    swift_beginAccess();
    v68 = *(v67 + 72);
    *(v67 + 72) = v66;
    *(v67 + 80) = &off_282E59B38;
    swift_unknownObjectRelease();
    v69 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState()) init];
    v180 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState;
    *&v55[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState] = v69;
    v70 = type metadata accessor for PMSafariAutoFillModel(0);
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    v181 = v70;
    v73 = swift_allocObject();
    v74 = OBJC_IVAR____TtC17PasswordManagerUI21PMSafariAutoFillModel__openURL;
    *(v73 + v74) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
    swift_storeEnumTagMultiPayload();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
    (*(*(v75 - 8) + 56))(v54, 1, 1, v75);
    sub_21C6EDBAC(v54, v185, &qword_27CDEFEE8, &unk_21CBADDE0);
    sub_21CB81D74();
    sub_21C6EA794(v54, &qword_27CDEFEE8, &unk_21CBADDE0);
    *&v55[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_model] = v73;
    v199 = v55;
    v175 &= 1u;
    v55[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_bypassLockoutPolicy] = v175;
    v185 = v73;

    v172 = sub_21CB009AC(v76);

    v170 = sub_21CB009AC(v77);

    v248 = 1;
    v154 = objc_opt_self();
    v171 = [v154 defaultContext];
    LODWORD(v73) = v196;
    v78 = sub_21C7EA4E4();
    v168 = v79;
    v169 = v78;
    sub_21CB81014();
    v80 = v195;
    sub_21CB81014();
    v81 = sub_21CB80FF4();
    v163 = v82;
    v164 = v81;
    v83 = *(*(&v195 + 1) + 8);
    v84 = v173;
    v83(v80, v173);
    v83(v49, v84);
    v85 = sub_21C7EA67C();
    v161 = v86;
    v162 = v85;
    if (v73)
    {
      v159 = 0xE000000000000000;
      v160 = 0;
    }

    else
    {
      sub_21CB81014();
      v87 = sub_21CB81004();
      v159 = v88;
      v160 = v87;
      v83(v49, v84);
    }

    v174 = a10;
    v195 = a12;
    sub_21CB81014();
    v89 = sub_21CB81004();
    v157 = v90;
    v158 = v89;
    v83(v49, v84);
    sub_21CB81014();
    v91 = sub_21CB81004();
    v93 = v92;
    v83(v49, v84);
    sub_21CB81014();
    v173 = a23;
    v167 = a22;
    v166 = a21;
    v165 = a20;
    v94 = sub_21CB81004();
    v96 = v95;
    v83(v49, v84);
    v97 = v196;
    v98 = v200;
    v99 = sub_21C7EA7D4(v196);
    LOBYTE(v203[0]) = v97;
    *(v203 + 1) = v250[0];
    DWORD1(v203[0]) = *(v250 + 3);
    *&v203[1] = 0;
    *(&v203[0] + 1) = 0;
    *(&v203[1] + 1) = v169;
    *&v203[2] = v168;
    *(&v203[2] + 1) = v164;
    *&v203[3] = v163;
    *(&v203[3] + 1) = v162;
    *&v203[4] = v161;
    *(&v203[4] + 1) = v160;
    *&v203[5] = v159;
    *(&v203[5] + 1) = v158;
    *&v203[6] = v157;
    *(&v203[6] + 1) = v91;
    *&v203[7] = v93;
    *(&v203[7] + 1) = v94;
    *&v203[8] = v96;
    *(&v203[8] + 1) = v99;
    *&v203[9] = v100;
    *(&v203[9] + 1) = v98;
    *&v203[10] = v172;
    *(&v203[10] + 1) = v170;
    v203[11] = v195;
    memset(&v203[12], 0, 33);
    *(&v203[14] + 1) = *v249;
    DWORD1(v203[14]) = *&v249[3];
    *(&v203[14] + 8) = 0u;
    *(&v203[15] + 8) = 0u;
    *(&v203[16] + 1) = 0;
    LOWORD(v203[17]) = v248;
    *(&v203[17] + 2) = v246;
    WORD3(v203[17]) = v247;
    v203[18] = 0uLL;
    *(&v203[17] + 1) = 0;
    LOBYTE(v203[19]) = 1;
    *(&v203[19] + 1) = *v245;
    DWORD1(v203[19]) = *&v245[3];
    *(&v203[19] + 1) = v171;
    v204 = v97;
    *&v205[3] = *(v250 + 3);
    *v205 = v250[0];
    v206 = 0;
    v207 = 0;
    v208 = v169;
    v209 = v168;
    v210 = v164;
    v211 = v163;
    v212 = v162;
    v213 = v161;
    v214 = v160;
    v215 = v159;
    v216 = v158;
    v217 = v157;
    v218 = v91;
    v219 = v93;
    v220 = v94;
    v221 = v96;
    v222 = v99;
    v223 = v100;
    v224 = v98;
    v225 = v172;
    v226 = v170;
    v227 = v195;
    v230 = 0;
    v228 = 0u;
    v229 = 0u;
    *v231 = *v249;
    *&v231[3] = *&v249[3];
    v232 = 0u;
    v233 = 0u;
    v234 = 0;
    v235 = v248;
    v236 = 0;
    v237 = v246;
    v238 = v247;
    v240 = 0;
    v239 = 0;
    v241 = 0;
    v242 = 1;
    *v243 = *v245;
    *&v243[3] = *&v245[3];
    v244 = v171;

    sub_21C7AE6B0(v203, v251);
    sub_21C7ADFB8(&v204);
    v101 = v199 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__pickerConfiguration;
    memcpy((v199 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__pickerConfiguration), v203, 0x140uLL);
    swift_beginAccess();
    v102 = v177;
    *(v101 + 8) = v176;
    *(v101 + 16) = v102;
    *(v101 + 152) = v98;

    v103 = v178;
    if (v178)
    {
      v104 = *(v101 + 64);
      *(v101 + 56) = v155;
      *(v101 + 64) = v103;
    }

    v105 = v179;
    if (v179)
    {
      v106 = *(v101 + 80);
      *(v101 + 72) = v156;
      *(v101 + 80) = v105;
    }

    v196 = a30;
    v179 = a31;
    LODWORD(v177) = a28;
    v178 = a27;
    v176 = a26;
    v172 = a25;
    LODWORD(v171) = a24;
    v107 = sub_21CB009AC(v197);

    v108 = *(v101 + 160);
    *(v101 + 160) = v107;

    v109 = sub_21CB009AC(v174);

    swift_beginAccess();
    v110 = *(v101 + 168);
    *(v101 + 168) = v109;

    v111 = *(v101 + 184);
    v112 = *(&v195 + 1);
    *(v101 + 176) = v195;
    *(v101 + 184) = v112;

    v113 = *(v101 + 200);
    *(v101 + 192) = a13;
    *(v101 + 200) = a14;

    v114 = *(v101 + 216);
    *(v101 + 208) = a15;
    *(v101 + 216) = a16;

    *(v101 + 224) = a18 & 1;
    v115 = *(v101 + 232);
    *(v101 + 232) = a19;
    v200 = a19;

    v117 = v165;
    v116 = v166;
    v118 = v167;
    v119 = v173;
    v120 = sub_21CB85AC4();
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    if ((v120 & 1) == 0)
    {
      v121 = v117;
      v122 = v116;
      v123 = v118;
      v124 = v119;
    }

    *(v101 + 240) = v121;
    *(v101 + 248) = v122;
    *(v101 + 256) = v123;
    *(v101 + 264) = v124;
    *(v101 + 272) = v120 & 1;
    *(v101 + 273) = v171 & 1;
    v125 = *(v101 + 288);
    v126 = *(v101 + 296);
    v127 = v176;
    *(v101 + 280) = v172;
    *(v101 + 288) = v127;
    v128 = v178;
    *(v101 + 296) = v178;
    *(v101 + 304) = v177 & 1;
    v197 = v128;
    swift_endAccess();

    v129 = v193;
    v130 = v179;
    if (v179)
    {
      v131 = v179;
    }

    else
    {
      v131 = [v154 defaultContext];
    }

    v132 = *(v101 + 312);
    *(v101 + 312) = v131;
    *(&v195 + 1) = v130;

    memcpy(v251, v101, 0x140uLL);
    v133 = swift_allocObject();
    v134 = v190;
    *(v133 + 16) = v198;
    *(v133 + 24) = v134;
    v135 = swift_allocObject();
    v136 = v186;
    v137 = v191;
    *(v135 + 16) = v186;
    *(v135 + 24) = v137;
    v138 = v189;
    (v183)(v189, 1, 1, v184);
    v139 = type metadata accessor for PMAccountPickerModel();
    v140 = *(v139 + 48);
    v141 = *(v139 + 52);
    swift_allocObject();

    sub_21C7AE6B0(v251, &v202);
    v142 = v196;
    *&v195 = v196;
    v143 = sub_21C7A4DA0(v251, v142, sub_21CB03020, v133, sub_21CB01634, v135, v138, nullsub_1, 0);
    v144 = v199;
    *(v199 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel) = v143;
    v145 = *&v144[v180];
    *v129 = v145;
    *(v129 + 1) = v143;
    v129[16] = v175;
    *(v129 + 3) = v198;
    *(v129 + 4) = v134;
    *(v129 + 5) = v136;
    *(v129 + 6) = v137;
    sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel);

    v146 = v145;
    *(v129 + 7) = sub_21CB82674();
    *(v129 + 8) = v147;
    v148 = v192;
    v149 = *(v192 + 40);
    *&v129[v149] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    *&v129[*(v148 + 44)] = 0;
    v150 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8548, &qword_21CBC91E8));
    *&v144[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__hostingViewController] = sub_21CB833B4();
    v201.receiver = v144;
    v201.super_class = v194;
    v151 = objc_msgSendSuper2(&v201, sel_initWithNibName_bundle_, 0, 0);

    return v151;
  }

  return result;
}

uint64_t _PMPasswordAutoFillPocketViewController.init(persona:appID:credentialTypes:promptString:promptStringWhenPasskeysAreAvailable:serviceNameHintStrings:domainNameHintStrings:savedAccountStore:suggestedDomainForNewAccount:localizedHostAppNameForNewAccount:bundleIDForFallbackIconForNewAccount:autoFillQuirksManager:shouldShowAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys:connectedAppAuditToken:isConnectedAppAWebBrowser:initialSearchQuery:savedAccountToInitiallyShowDetailsFor:shouldAllowAddingNewPasswords:bypassLockoutPolicy:authenticatedContext:savedAccountContext:didSelectAccountHandler:didSelectTextToInsertHandler:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, unsigned __int8 a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, uint64_t a26, void *a27, unsigned __int8 a28, unsigned __int8 a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v35 = sub_21CB0165C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);

  return v35;
}

void sub_21CAFE174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = sub_21CB85584();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

char *_PMPasswordAutoFillPocketViewController.__allocating_init(persona:appID:credentialTypes:promptString:promptStringWhenPasskeysAreAvailable:serviceNameHintStrings:domainNameHintStrings:savedAccountStore:suggestedDomainForNewAccount:localizedHostAppNameForNewAccount:bundleIDForFallbackIconForNewAccount:autoFillQuirksManager:shouldShowAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys:connectedAppAuditToken:isConnectedAppAWebBrowser:initialSearchQuery:savedAccountToInitiallyShowDetailsFor:shouldAllowAddingNewPasswords:bypassLockoutPolicy:authenticatedContext:savedAccountContext:savedAccountForHistorySection:didSelectHistoryItem:didSelectAccountHandler:didSelectTextToInsertHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, unsigned __int8 a19, void *a20, unsigned int a21, unsigned int a22, unsigned int a23, unsigned int a24, unsigned int a25, unsigned int a26, unsigned int a27, unsigned int a28, unsigned __int8 a29, uint64_t a30, uint64_t a31, void *a32, unsigned __int8 a33, unsigned __int8 a34, void *a35, void *a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v133 = a1;
  v134 = a4;
  v138 = type metadata accessor for PMPasswordAutoFillPocketView(0);
  v46 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v135 = (&v110 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = type metadata accessor for PMAccount.Storage(0);
  v48 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v111 = (&v110 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v137 = (&v110 - v52);
  v128 = objc_allocWithZone(v43);
  v132 = sub_21CB85584();

  if (a6)
  {
    v129 = sub_21CB85584();

    v53 = a13;
    if (a8)
    {
LABEL_3:
      v127 = sub_21CB85584();

      goto LABEL_6;
    }
  }

  else
  {
    v129 = 0;
    v53 = a13;
    if (a8)
    {
      goto LABEL_3;
    }
  }

  v127 = 0;
LABEL_6:
  v126 = sub_21CB85814();

  v125 = sub_21CB85814();

  if (v53)
  {
    v124 = sub_21CB85584();

    v54 = a17;
    if (a15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v139 = 0;
    v55 = a31;
    if (v54)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v124 = 0;
  v54 = a17;
  if (!a15)
  {
    goto LABEL_11;
  }

LABEL_8:
  v139 = sub_21CB85584();

  v55 = a31;
  if (v54)
  {
LABEL_9:
    v123 = sub_21CB85584();

    goto LABEL_13;
  }

LABEL_12:
  v123 = 0;
LABEL_13:
  v149 = a43;
  v148 = a37;
  v147 = a36;
  v140 = a35;
  v130 = a34;
  v120 = a33;
  v146 = a32;
  v121 = a29;
  v145 = a20;
  v122 = a19;
  v144 = a18;
  v143 = a11;
  v119 = a21;
  v118 = a23;
  v117 = a25;
  v116 = a26;
  v115 = a27;
  v114 = a28;
  if (v55)
  {
    v56 = sub_21CB85584();
  }

  else
  {
    v56 = 0;
  }

  v150 = a39;
  v131 = a38;
  v141 = a40;
  v152[4] = a40;
  v152[5] = a41;
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 1107296256;
  v152[2] = sub_21C7E80D4;
  v152[3] = &block_descriptor_39;
  v57 = _Block_copy(v152);
  v113 = v57;
  v136 = a41;

  v142 = a42;
  v152[4] = a42;
  v152[5] = v149;
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 1107296256;
  v152[2] = sub_21CAFF45C;
  v152[3] = &block_descriptor_22;
  v58 = _Block_copy(v152);

  v152[0] = __PAIR64__(a22, v119);
  v152[1] = __PAIR64__(a24, v118);
  v152[2] = __PAIR64__(v116, v117);
  v152[3] = __PAIR64__(v114, v115);
  v109 = v57;
  v130 &= 1u;
  BYTE1(v108) = v130;
  LOBYTE(v108) = v120 & 1;
  v107 = v56;
  v59 = v56;
  LOBYTE(v106) = v121 & 1;
  LOBYTE(v105) = v122 & 1;
  v60 = v123;
  v61 = v124;
  v62 = v125;
  v63 = v129;
  v64 = v132;
  v66 = v126;
  v65 = v127;
  v134 = [v128 initWithPersona:v133 appID:v132 credentialTypes:v134 promptString:v129 promptStringWhenPasskeysAreAvailable:v127 serviceNameHintStrings:v126 domainNameHintStrings:v125 savedAccountStore:v143 suggestedDomainForNewAccount:v124 localizedHostAppNameForNewAccount:v139 bundleIDForFallbackIconForNewAccount:v123 autoFillQuirksManager:v144 shouldShowAutoFillPasskeys:v105 currentWebFrameIdentifierForAutoFillPasskeys:v145 connectedAppAuditToken:v152 isConnectedAppAWebBrowser:v106 initialSearchQuery:v107 savedAccountToInitiallyShowDetailsFor:v146 shouldAllowAddingNewPasswords:v108 bypassLockoutPolicy:v140 authenticatedContext:v147 savedAccountContext:v109 didSelectAccountHandler:v58 didSelectTextToInsertHandler:?];
  _Block_release(v58);
  _Block_release(v113);

  v67 = v134;
  v68 = v137;
  v69 = v148;
  if (v148)
  {
    v70 = v111;
    *v111 = v148;
    swift_storeEnumTagMultiPayload();
    v71 = v69;
    sub_21C7C87D0(v70, v68);
    v72 = type metadata accessor for PMAccount(0);
    (*(*(v72 - 8) + 56))(v68, 0, 1, v72);
    v73 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
    swift_beginAccess();
    sub_21C7AE758(v68, &v67[v73]);
    swift_endAccess();
  }

  v74 = &v67[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem];
  v75 = *&v67[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem];
  v76 = *&v67[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem + 8];
  v77 = v131;
  v78 = v150;
  *v74 = v131;
  *(v74 + 1) = v78;

  sub_21C71B710(v75);
  v79 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__pickerConfiguration;
  swift_beginAccess();
  memcpy(v152, &v67[v79], 0x140uLL);
  v80 = swift_allocObject();
  v81 = v136;
  *(v80 + 16) = v141;
  *(v80 + 24) = v81;
  v82 = swift_allocObject();
  v83 = v149;
  *(v82 + 16) = v142;
  *(v82 + 24) = v83;
  v84 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
  swift_beginAccess();
  sub_21C6EDBAC(&v67[v84], v68, &unk_27CDEBE60, &unk_21CB9FF40);
  v85 = swift_allocObject();
  v86 = v150;
  *(v85 + 16) = v77;
  *(v85 + 24) = v86;
  v87 = type metadata accessor for PMAccountPickerModel();
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();

  sub_21C7AE6B0(v152, &v151);
  v90 = v140;
  v139 = v140;
  v91 = sub_21C7A4DA0(v152, v90, sub_21CB025AC, v80, sub_21CB0300C, v82, v68, sub_21CB025C8, v85);
  v92 = *&v67[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel];
  *&v67[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel] = v91;

  v93 = *&v67[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState];
  v94 = *&v67[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_model];
  v95 = v135;
  *v135 = v93;
  v95[1] = v91;
  *(v95 + 16) = v130;
  v96 = v142;
  v95[3] = v141;
  v95[4] = v81;
  v95[5] = v96;
  v95[6] = v83;
  type metadata accessor for PMSafariAutoFillModel(0);
  sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel);

  v97 = v93;

  v95[7] = sub_21CB82674();
  v95[8] = v98;
  v99 = v138;
  v100 = *(v138 + 40);
  *(v95 + v100) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  *(v95 + *(v99 + 44)) = 0;
  v101 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8548, &qword_21CBC91E8));
  v102 = sub_21CB833B4();

  v103 = *&v67[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__hostingViewController];
  *&v67[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__hostingViewController] = v102;

  return v67;
}

char *_PMPasswordAutoFillPocketViewController.init(persona:appID:credentialTypes:promptString:promptStringWhenPasskeysAreAvailable:serviceNameHintStrings:domainNameHintStrings:savedAccountStore:suggestedDomainForNewAccount:localizedHostAppNameForNewAccount:bundleIDForFallbackIconForNewAccount:autoFillQuirksManager:shouldShowAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys:connectedAppAuditToken:isConnectedAppAWebBrowser:initialSearchQuery:savedAccountToInitiallyShowDetailsFor:shouldAllowAddingNewPasswords:bypassLockoutPolicy:authenticatedContext:savedAccountContext:savedAccountForHistorySection:didSelectHistoryItem:didSelectAccountHandler:didSelectTextToInsertHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, unsigned __int8 a19, void *a20, unsigned int a21, unsigned int a22, unsigned int a23, unsigned int a24, unsigned int a25, unsigned int a26, unsigned int a27, unsigned int a28, unsigned __int8 a29, uint64_t a30, uint64_t a31, void *a32, unsigned __int8 a33, unsigned __int8 a34, void *a35, void *a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v133 = a4;
  v132 = a1;
  v138 = type metadata accessor for PMPasswordAutoFillPocketView(0);
  v45 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v136 = (&v110 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = type metadata accessor for PMAccount.Storage(0);
  v47 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v111 = (&v110 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v135 = (&v110 - v51);
  v131 = sub_21CB85584();

  if (a6)
  {
    v128 = sub_21CB85584();

    v52 = a13;
    if (a8)
    {
LABEL_3:
      v127 = sub_21CB85584();

      goto LABEL_6;
    }
  }

  else
  {
    v128 = 0;
    v52 = a13;
    if (a8)
    {
      goto LABEL_3;
    }
  }

  v127 = 0;
LABEL_6:
  v126 = sub_21CB85814();

  v125 = sub_21CB85814();

  if (v52)
  {
    v124 = sub_21CB85584();

    v53 = a17;
    if (a15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v139 = 0;
    v54 = a31;
    if (v53)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v124 = 0;
  v53 = a17;
  if (!a15)
  {
    goto LABEL_11;
  }

LABEL_8:
  v139 = sub_21CB85584();

  v54 = a31;
  if (v53)
  {
LABEL_9:
    v55 = sub_21CB85584();

    goto LABEL_13;
  }

LABEL_12:
  v55 = 0;
LABEL_13:
  v149 = a43;
  v148 = a37;
  v147 = a36;
  v140 = a35;
  v130 = a34;
  v121 = a33;
  v146 = a32;
  v122 = a29;
  v145 = a20;
  LODWORD(v123) = a19;
  v144 = a18;
  v143 = a11;
  v120 = a21;
  v119 = a22;
  v114 = a24;
  v118 = a25;
  v117 = a26;
  v116 = a27;
  v115 = a28;
  if (v54)
  {
    v56 = sub_21CB85584();
  }

  else
  {
    v56 = 0;
  }

  v150 = a39;
  v129 = a38;
  v141 = a40;
  v152[4] = a40;
  v152[5] = a41;
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 1107296256;
  v152[2] = sub_21C7E80D4;
  v152[3] = &block_descriptor_35;
  v57 = _Block_copy(v152);
  v113 = v57;
  v137 = a41;

  v142 = a42;
  v152[4] = a42;
  v152[5] = v149;
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 1107296256;
  v152[2] = sub_21CAFF45C;
  v152[3] = &block_descriptor_38_0;
  v58 = _Block_copy(v152);

  v152[0] = __PAIR64__(v119, v120);
  v152[1] = __PAIR64__(v114, a23);
  v152[2] = __PAIR64__(v117, v118);
  v152[3] = __PAIR64__(v115, v116);
  v109 = v57;
  v130 &= 1u;
  BYTE1(v108) = v130;
  LOBYTE(v108) = v121 & 1;
  v107 = v56;
  v59 = v56;
  LOBYTE(v106) = v122 & 1;
  LOBYTE(v105) = v123 & 1;
  v104 = v55;
  v123 = v55;
  v60 = v124;
  v61 = v125;
  v62 = v131;
  v64 = v127;
  v63 = v128;
  v65 = v126;
  v66 = [v134 initWithPersona:v132 appID:v131 credentialTypes:v133 promptString:v128 promptStringWhenPasskeysAreAvailable:v127 serviceNameHintStrings:v126 domainNameHintStrings:v125 savedAccountStore:v143 suggestedDomainForNewAccount:v124 localizedHostAppNameForNewAccount:v139 bundleIDForFallbackIconForNewAccount:v104 autoFillQuirksManager:v144 shouldShowAutoFillPasskeys:v105 currentWebFrameIdentifierForAutoFillPasskeys:v145 connectedAppAuditToken:v152 isConnectedAppAWebBrowser:v106 initialSearchQuery:v107 savedAccountToInitiallyShowDetailsFor:v146 shouldAllowAddingNewPasswords:v108 bypassLockoutPolicy:v140 authenticatedContext:v147 savedAccountContext:v109 didSelectAccountHandler:v58 didSelectTextToInsertHandler:?];
  _Block_release(v58);
  _Block_release(v113);

  v67 = v135;
  v68 = v148;
  if (v148)
  {
    v69 = v111;
    *v111 = v148;
    swift_storeEnumTagMultiPayload();
    v70 = v68;
    sub_21C7C87D0(v69, v67);
    v71 = type metadata accessor for PMAccount(0);
    (*(*(v71 - 8) + 56))(v67, 0, 1, v71);
    v72 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
    swift_beginAccess();
    sub_21C7AE758(v67, &v66[v72]);
    swift_endAccess();
  }

  v73 = &v66[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem];
  v74 = *&v66[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem];
  v75 = *&v66[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem + 8];
  v76 = v129;
  v77 = v150;
  *v73 = v129;
  *(v73 + 1) = v77;

  sub_21C71B710(v74);
  v78 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__pickerConfiguration;
  swift_beginAccess();
  memcpy(v152, &v66[v78], 0x140uLL);
  v79 = swift_allocObject();
  v80 = v137;
  *(v79 + 16) = v141;
  *(v79 + 24) = v80;
  v81 = swift_allocObject();
  v82 = v149;
  *(v81 + 16) = v142;
  *(v81 + 24) = v82;
  v83 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
  swift_beginAccess();
  sub_21C6EDBAC(&v66[v83], v67, &unk_27CDEBE60, &unk_21CB9FF40);
  v84 = swift_allocObject();
  v85 = v150;
  *(v84 + 16) = v76;
  *(v84 + 24) = v85;
  v86 = type metadata accessor for PMAccountPickerModel();
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();

  sub_21C7AE6B0(v152, &v151);
  v89 = v140;
  v139 = v140;
  v90 = sub_21C7A4DA0(v152, v89, sub_21CB03020, v79, sub_21CB0300C, v81, v67, sub_21CB0301C, v84);
  v91 = *&v66[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel];
  *&v66[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel] = v90;

  v92 = *&v66[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState];
  v93 = *&v66[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_model];
  v94 = v136;
  *v136 = v92;
  v94[1] = v90;
  *(v94 + 16) = v130;
  v95 = v142;
  v94[3] = v141;
  v94[4] = v80;
  v94[5] = v95;
  v94[6] = v82;
  type metadata accessor for PMSafariAutoFillModel(0);
  sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel);

  v96 = v92;

  v94[7] = sub_21CB82674();
  v94[8] = v97;
  v98 = v138;
  v99 = *(v138 + 40);
  *(v94 + v99) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  *(v94 + *(v98 + 44)) = 0;
  v100 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8548, &qword_21CBC91E8));
  v101 = sub_21CB833B4();

  v102 = *&v66[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__hostingViewController];
  *&v66[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__hostingViewController] = v101;

  return v66;
}

uint64_t sub_21CAFF45C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_21CB855C4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

void sub_21CAFF4F4(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  sub_21C6EDBAC(a1, &v14 - v10, &unk_27CDEBE60, &unk_21CB9FF40);
  v12 = type metadata accessor for PMAccount(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    sub_21C6EA794(v11, &unk_27CDEBE60, &unk_21CB9FF40);
    v13 = 0;
  }

  else
  {
    sub_21CB02DAC(&v11[*(v12 + 24)], v7, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CB02E14(v7, type metadata accessor for PMAccount.Storage);
      v13 = 0;
    }

    else
    {
      v13 = *v7;
    }

    sub_21CB02E14(v11, type metadata accessor for PMAccount);
  }

  a2(v13);
}

void sub_21CAFF6E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v8 = type metadata accessor for PMAccount.Storage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  sub_21C6EDBAC(a1, &v18 - v14, &unk_27CDEBE60, &unk_21CB9FF40);
  v16 = type metadata accessor for PMAccount(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_21C6EA794(v15, &unk_27CDEBE60, &unk_21CB9FF40);
    v17 = 0;
  }

  else
  {
    sub_21CB02DAC(&v15[*(v16 + 24)], v11, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CB02E14(v11, type metadata accessor for PMAccount.Storage);
      v17 = 0;
    }

    else
    {
      v17 = *v11;
    }

    sub_21CB02E14(v15, type metadata accessor for PMAccount);
  }

  a4(v17, a2, a3);
}

void sub_21CAFFC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    a3 = sub_21CB85584();
  }

  v6 = a3;
  (*(a4 + 16))(a4, a1);
}

void sub_21CAFFD7C()
{
  v1 = v0;
  v2 = type metadata accessor for PMPasswordAutoFillPocketView(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - v8;
  v10 = *&v1[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState];
  v11 = *&v1[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel];
  v12 = v1[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_bypassLockoutPolicy];
  v14 = *&v1[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectTextToInsertHandler];
  v21[0] = *&v1[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectAccountHandler];
  v13 = v21[0];
  v21[1] = v14;
  v15 = *&v1[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_model];
  *v9 = v10;
  *(v9 + 1) = v11;
  v9[16] = v12;
  *(v9 + 40) = v14;
  *(v9 + 24) = v13;
  type metadata accessor for PMSafariAutoFillModel(0);
  sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel);
  v16 = v10;

  *(v9 + 7) = sub_21CB82674();
  *(v9 + 8) = v17;
  v18 = *(v3 + 48);
  *&v9[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  *&v9[*(v3 + 52)] = 0;
  sub_21CB02DAC(v9, v6, type metadata accessor for PMPasswordAutoFillPocketView);
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8550, &qword_21CBC91F0));
  v20 = sub_21CB827D4();
  sub_21CB02E14(v9, type metadata accessor for PMPasswordAutoFillPocketView);
  [v1 setView_];
}

void *sub_21CB00010()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel) + 352);
  v2 = v1;
  return v1;
}

void sub_21CB00058(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel);
  v5 = *(v3 + 352);
  *(v3 + 352) = a1;

  v4 = a1;
}

uint64_t sub_21CB00114()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DB4();

  return v3;
}

uint64_t sub_21CB00264(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel);

  sub_21C7A6110(a1, a2);
}

uint64_t sub_21CB00354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel;
  v8 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel);

  v10 = sub_21CB009AC(v9);

  v11 = *(v8 + 192);
  *(v8 + 192) = v10;

  v12 = *(v4 + v7);

  v14 = sub_21CB009AC(v13);

  v15 = *(v12 + 200);
  *(v12 + 200) = v14;

  v16 = *(v4 + v7);
  v17 = *(v16 + 216);
  *(v16 + 208) = a3;
  *(v16 + 216) = a4;
}

id _PMPasswordAutoFillPocketViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21CB85584();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id _PMPasswordAutoFillPocketViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PMPasswordAutoFillPocketViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21CB00724(uint64_t a1@<X8>)
{
  v3 = sub_21CB81824();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85A0, &unk_21CBC93D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v15 = &v23 - v13;
  v16 = v1[1];
  v17 = *(*v1 + 16);
  if (v16 == v17)
  {
    (*(v4 + 56))(&v23 - v13, 1, 1, v3, v14);
  }

  else
  {
    if (v16 >= v17)
    {
      __break(1u);
      return;
    }

    (*(v4 + 16))(&v23 - v13, *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v3, v14);
    v1[1] = v16 + 1;
    (*(v4 + 56))(v15, 0, 1, v3, v18);
  }

  v20 = v1[2];
  v19 = v1[3];
  sub_21C716934(v15, v11, &qword_27CDF85A0, &unk_21CBC93D0);
  v21 = 1;
  if ((*(v4 + 48))(v11, 1, v3) != 1)
  {
    (*(v4 + 32))(v7, v11, v3);
    v20(v7);
    (*(v4 + 8))(v7, v3);
    v21 = 0;
  }

  v22 = sub_21CB813C4();
  (*(*(v22 - 8) + 56))(a1, v21, 1, v22);
}

uint64_t sub_21CB009AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CF154F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21CA94078(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_21CB00A44(uint64_t a1)
{
  v2 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_21CAFC780(&qword_27CDF85B0, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  result = MEMORY[0x21CF154F0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_21CB02DAC(v13, v7, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      sub_21CA941C8(v9, v7);
      sub_21CB02E14(v9, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_21CB00BD4(uint64_t a1)
{
  v2 = sub_21CB85BB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_21CAFC780(&qword_27CDEAF60, MEMORY[0x277D49948]);
  result = MEMORY[0x21CF154F0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_21CA94CC4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_21CB00D70(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_21CAFC780(&qword_27CDF8950, MEMORY[0x277D49978]);
  result = MEMORY[0x21CF154F0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_21CA93D98(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_21CB00F0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21CB02FA4();
  result = MEMORY[0x21CF154F0](v2, &type metadata for PMGroupMember, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[5];
      v12[4] = v5[4];
      v12[5] = v6;
      v12[6] = v5[6];
      v7 = v5[1];
      v12[0] = *v5;
      v12[1] = v7;
      v8 = v5[3];
      v12[2] = v5[2];
      v12[3] = v8;
      sub_21C7A33F0(v12, v10);
      sub_21CA94FA4(v9, v12);
      v10[4] = v9[4];
      v10[5] = v9[5];
      v10[6] = v9[6];
      v10[0] = v9[0];
      v10[1] = v9[1];
      v10[2] = v9[2];
      v10[3] = v9[3];
      sub_21C7A344C(v10);
      v5 += 7;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_21CB00FD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21CA1A9CC();
  result = MEMORY[0x21CF154F0](v2, &type metadata for PMWiFiNetworkIdentifier, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_21CA95338(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_21CB01070(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_21CAFC780(&qword_27CDEB1C8, type metadata accessor for PMAccount);
  result = MEMORY[0x21CF154F0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_21CB02DAC(v13, v6, type metadata accessor for PMAccount);
      sub_21CA95488(v9, v6);
      sub_21CB02E14(v9, type metadata accessor for PMAccount);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_21CB01200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CB813C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC98, &unk_21CBCB9B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v24 - v16;
  v18 = *(a1 + 16);
  v19 = sub_21CAFC780(&qword_27CDF0CC8, MEMORY[0x277CBA690]);
  v20 = MEMORY[0x21CF154F0](v18, v6, v19);
  v24[4] = a3;
  v25 = v20;
  v24[1] = a1;
  v24[2] = 0;
  v24[3] = a2;
  sub_21CB00724(v17);
  v21 = *(v7 + 48);
  if (v21(v17, 1, v6) != 1)
  {
    v22 = *(v7 + 32);
    do
    {
      v22(v10, v17, v6);
      sub_21CA96B80(v13, v10);
      (*(v7 + 8))(v13, v6);
      sub_21CB00724(v17);
    }

    while (v21(v17, 1, v6) != 1);
    return v25;
  }

  return v20;
}

uint64_t sub_21CB0143C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_21CB02EF0();
  result = MEMORY[0x21CF154F0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_21C6EDBAC(v13, v6, &unk_27CDED250, &qword_21CBA64C0);
      sub_21CA96FB4(v9, v6);
      sub_21C6EA794(v9, &unk_27CDED250, &qword_21CBA64C0);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_21CB015A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2200, &qword_21CBB3690);
  v4 = sub_21CB02E74();
  result = MEMORY[0x21CF154F0](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v6 += 16;
      sub_21CA96E60(v9, v7, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_21CB01634()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21CB0165C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, unsigned __int8 a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, uint64_t a26, void *a27, unsigned __int8 a28, unsigned __int8 a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = v35;
  v178 = a6;
  v179 = a8;
  v155 = a5;
  v156 = a7;
  v197 = a4;
  v176 = a2;
  v177 = a3;
  v191 = type metadata accessor for PMPasswordAutoFillPocketView(0);
  v38 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v192 = (&v154 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v190 = &v154 - v42;
  v174 = sub_21CB81024();
  *(&v193 + 1) = *(v174 - 8);
  v43 = *(*(&v193 + 1) + 64);
  MEMORY[0x28223BE20](v174);
  *&v193 = &v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v154 - v46;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEE8, &unk_21CBADDE0);
  v48 = *(*(v196 - 8) + 64);
  MEMORY[0x28223BE20](v196);
  v185 = &v154 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v52 = &v154 - v51;
  v53 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
  v54 = type metadata accessor for PMAccount(0);
  v55 = *(v54 - 8);
  v183 = *(v55 + 56);
  v184 = v54;
  v182 = v55 + 56;
  v183(v36 + v53, 1, 1);
  v56 = (v36 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem);
  *v56 = 0;
  v56[1] = 0;
  if (a1 >= 3)
  {
    result = sub_21CB861C4();
    __break(1u);
  }

  else
  {
    v175 = a29;
    v195 = a10;
    v194 = a9;
    v57 = byte_282E491E8[a1 + 32];
    *(v36 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_persona) = v57;
    *(v36 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountStore) = a11;
    *(v36 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_autoFillQuirksManager) = a17;
    v58 = (v36 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectAccountHandler);
    v186 = a32;
    v187 = a34;
    *v58 = a32;
    v58[1] = a33;
    v59 = (v36 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectTextToInsertHandler);
    *v59 = a34;
    v59[1] = a35;
    v60 = type metadata accessor for PMPasswordManager();
    v61 = *(v60 + 48);
    v62 = *(v60 + 52);
    swift_allocObject();
    v63 = a17;
    v188 = a33;

    v189 = a35;

    v64 = a11;
    sub_21C6EBF3C(a11, a17);
    v66 = v65;
    if (qword_27CDEA3C8 != -1)
    {
      swift_once();
    }

    v67 = qword_27CE184E8;
    swift_beginAccess();
    v68 = *(v67 + 72);
    *(v67 + 72) = v66;
    *(v67 + 80) = &off_282E59B38;
    swift_unknownObjectRelease();
    v69 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState()) init];
    v180 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState;
    *(v36 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_appState) = v69;
    v70 = type metadata accessor for PMSafariAutoFillModel(0);
    v71 = *(v70 + 48);
    v72 = *(v70 + 52);
    v181 = v70;
    v73 = swift_allocObject();
    v74 = OBJC_IVAR____TtC17PasswordManagerUI21PMSafariAutoFillModel__openURL;
    *(v73 + v74) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
    swift_storeEnumTagMultiPayload();
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE40, &unk_21CBAE4E0);
    (*(*(v75 - 8) + 56))(v52, 1, 1, v75);
    sub_21C6EDBAC(v52, v185, &qword_27CDEFEE8, &unk_21CBADDE0);
    sub_21CB81D74();
    sub_21C6EA794(v52, &qword_27CDEFEE8, &unk_21CBADDE0);
    *(v36 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_model) = v73;
    v196 = v36;
    v175 &= 1u;
    *(v36 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_bypassLockoutPolicy) = v175;
    v185 = v73;

    v172 = sub_21CB009AC(v76);

    v170 = sub_21CB009AC(v77);

    v245 = 1;
    v154 = objc_opt_self();
    v171 = [v154 defaultContext];
    v78 = sub_21C7EA4E4();
    v165 = v79;
    v166 = v78;
    sub_21CB81014();
    v80 = v193;
    sub_21CB81014();
    v81 = sub_21CB80FF4();
    v163 = v82;
    v164 = v81;
    v83 = *(*(&v193 + 1) + 8);
    v84 = v174;
    v83(v80, v174);
    v83(v47, v84);
    v85 = sub_21C7EA67C();
    v161 = v86;
    v162 = v85;
    v173 = v57;
    if (v57)
    {
      v159 = 0xE000000000000000;
      v160 = 0;
    }

    else
    {
      sub_21CB81014();
      v87 = sub_21CB81004();
      v159 = v88;
      v160 = v87;
      v83(v47, v84);
    }

    v193 = a12;
    sub_21CB81014();
    v89 = sub_21CB81004();
    v157 = v90;
    v158 = v89;
    v83(v47, v84);
    sub_21CB81014();
    v91 = sub_21CB81004();
    v93 = v92;
    v83(v47, v84);
    sub_21CB81014();
    v174 = a23;
    v169 = a22;
    v168 = a21;
    v167 = a20;
    v94 = sub_21CB81004();
    v96 = v95;
    v83(v47, v84);
    v97 = v173;
    v98 = v197;
    v99 = sub_21C7EA7D4(v173);
    LOBYTE(v200[0]) = v97;
    *(v200 + 1) = v247[0];
    DWORD1(v200[0]) = *(v247 + 3);
    *&v200[1] = 0;
    *(&v200[0] + 1) = 0;
    *(&v200[1] + 1) = v166;
    *&v200[2] = v165;
    *(&v200[2] + 1) = v164;
    *&v200[3] = v163;
    *(&v200[3] + 1) = v162;
    *&v200[4] = v161;
    *(&v200[4] + 1) = v160;
    *&v200[5] = v159;
    *(&v200[5] + 1) = v158;
    *&v200[6] = v157;
    *(&v200[6] + 1) = v91;
    *&v200[7] = v93;
    *(&v200[7] + 1) = v94;
    *&v200[8] = v96;
    *(&v200[8] + 1) = v99;
    *&v200[9] = v100;
    *(&v200[9] + 1) = v98;
    *&v200[10] = v172;
    *(&v200[10] + 1) = v170;
    v200[11] = v193;
    memset(&v200[12], 0, 33);
    *(&v200[14] + 1) = *v246;
    DWORD1(v200[14]) = *&v246[3];
    *(&v200[14] + 8) = 0u;
    *(&v200[15] + 8) = 0u;
    *(&v200[16] + 1) = 0;
    LOWORD(v200[17]) = v245;
    *(&v200[17] + 2) = v243;
    WORD3(v200[17]) = v244;
    v200[18] = 0uLL;
    *(&v200[17] + 1) = 0;
    LOBYTE(v200[19]) = 1;
    *(&v200[19] + 1) = *v242;
    DWORD1(v200[19]) = *&v242[3];
    *(&v200[19] + 1) = v171;
    v201 = v97;
    *&v202[3] = *(v247 + 3);
    *v202 = v247[0];
    v203 = 0;
    v204 = 0;
    v205 = v166;
    v206 = v165;
    v207 = v164;
    v208 = v163;
    v209 = v162;
    v210 = v161;
    v211 = v160;
    v212 = v159;
    v213 = v158;
    v214 = v157;
    v215 = v91;
    v216 = v93;
    v217 = v94;
    v218 = v96;
    v219 = v99;
    v220 = v100;
    v221 = v98;
    v222 = v172;
    v223 = v170;
    v224 = v193;
    v227 = 0;
    v225 = 0u;
    v226 = 0u;
    *v228 = *v246;
    *&v228[3] = *&v246[3];
    v229 = 0u;
    v230 = 0u;
    v231 = 0;
    v232 = v245;
    v233 = 0;
    v234 = v243;
    v235 = v244;
    v237 = 0;
    v236 = 0;
    v238 = 0;
    v239 = 1;
    *v240 = *v242;
    *&v240[3] = *&v242[3];
    v241 = v171;

    sub_21C7AE6B0(v200, v248);
    sub_21C7ADFB8(&v201);
    v101 = v196 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__pickerConfiguration;
    memcpy((v196 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__pickerConfiguration), v200, 0x140uLL);
    swift_beginAccess();
    v102 = v177;
    *(v101 + 8) = v176;
    *(v101 + 16) = v102;
    *(v101 + 152) = v98;

    v103 = v178;
    if (v178)
    {
      v104 = *(v101 + 64);
      *(v101 + 56) = v155;
      *(v101 + 64) = v103;
    }

    LODWORD(v172) = a18;
    v105 = v179;
    if (v179)
    {
      v106 = *(v101 + 80);
      *(v101 + 72) = v156;
      *(v101 + 80) = v105;
    }

    v197 = a30;
    v179 = a31;
    LODWORD(v178) = a28;
    v177 = a26;
    v176 = a25;
    v173 = a24;
    v107 = sub_21CB009AC(v194);

    v108 = *(v101 + 160);
    *(v101 + 160) = v107;

    v109 = sub_21CB009AC(v195);

    swift_beginAccess();
    v110 = *(v101 + 168);
    *(v101 + 168) = v109;

    v111 = *(v101 + 184);
    v112 = *(&v193 + 1);
    *(v101 + 176) = v193;
    *(v101 + 184) = v112;

    v113 = *(v101 + 200);
    *(v101 + 192) = a13;
    *(v101 + 200) = a14;

    v114 = *(v101 + 216);
    *(v101 + 208) = a15;
    *(v101 + 216) = a16;

    *(v101 + 224) = v172 & 1;
    v115 = *(v101 + 232);
    *(v101 + 232) = a19;
    v116 = a19;

    v118 = v167;
    v117 = v168;
    v119 = v169;
    v120 = v174;
    v121 = sub_21CB85AC4();
    if (v121)
    {
      v118 = 0;
      v117 = 0;
      v119 = 0;
      v120 = 0;
    }

    *(v101 + 240) = v118;
    *(v101 + 248) = v117;
    *(v101 + 256) = v119;
    *(v101 + 264) = v120;
    *(v101 + 272) = v121 & 1;
    *(v101 + 273) = v173 & 1;
    v122 = *(v101 + 288);
    v123 = *(v101 + 296);
    v124 = v177;
    *(v101 + 280) = v176;
    *(v101 + 288) = v124;
    *(v101 + 296) = a27;
    *(v101 + 304) = v178 & 1;
    v125 = a27;
    swift_endAccess();

    v126 = v179;
    if (v179)
    {
      v127 = v179;
    }

    else
    {
      v127 = [v154 defaultContext];
    }

    v128 = *(v101 + 312);
    *(v101 + 312) = v127;
    v129 = v126;

    memcpy(v248, v101, 0x140uLL);
    v130 = swift_allocObject();
    v131 = v186;
    v132 = v188;
    *(v130 + 16) = v186;
    *(v130 + 24) = v132;
    v133 = swift_allocObject();
    v134 = v187;
    v136 = v189;
    v135 = v190;
    *(v133 + 16) = v187;
    *(v133 + 24) = v136;
    (v183)(v135, 1, 1, v184);
    v137 = type metadata accessor for PMAccountPickerModel();
    v138 = *(v137 + 48);
    v139 = *(v137 + 52);
    swift_allocObject();

    sub_21C7AE6B0(v248, &v199);
    v140 = v197;
    v141 = v197;
    v142 = sub_21C7A4DA0(v248, v140, sub_21CB03020, v130, sub_21CB0300C, v133, v135, nullsub_1, 0);
    v143 = v196;
    *(v196 + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel) = v142;
    v144 = *&v143[v180];
    v145 = v192;
    *v192 = v144;
    v145[1] = v142;
    *(v145 + 16) = v175;
    v145[3] = v131;
    v145[4] = v132;
    v145[5] = v134;
    v145[6] = v136;
    sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel);

    v146 = v144;
    v145[7] = sub_21CB82674();
    v145[8] = v147;
    v148 = v191;
    v149 = *(v191 + 40);
    *(v145 + v149) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
    swift_storeEnumTagMultiPayload();
    *(v145 + *(v148 + 44)) = 0;
    v150 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8548, &qword_21CBC91E8));
    *&v143[OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController__hostingViewController] = sub_21CB833B4();
    v151 = type metadata accessor for _PMPasswordAutoFillPocketViewController(0);
    v198.receiver = v143;
    v198.super_class = v151;
    v152 = objc_msgSendSuper2(&v198, sel_initWithNibName_bundle_, 0, 0);

    return v152;
  }

  return result;
}

void sub_21CB02614()
{
  sub_21CB02D24(319, &qword_27CDF8568, MEMORY[0x277CDF708], MEMORY[0x277CDF458]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21CB028FC(319, &qword_27CDF8570, &qword_27CDEFEE8, &unk_21CBADDE0, MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21CB02760()
{
  type metadata accessor for PMPasswordManagerState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PMAccountPickerModel();
    if (v1 <= 0x3F)
    {
      sub_21C7226D8();
      if (v2 <= 0x3F)
      {
        sub_21CB02868();
        if (v3 <= 0x3F)
        {
          sub_21CB028FC(319, &qword_27CDEC388, &qword_27CDEC390, &qword_21CBA40E0, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CB02868()
{
  if (!qword_27CDF8588)
  {
    type metadata accessor for PMSafariAutoFillModel(255);
    sub_21CAFC780(&qword_27CDF8498, type metadata accessor for PMSafariAutoFillModel);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF8588);
    }
  }
}

void sub_21CB028FC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21CB02968()
{
  sub_21CB02D24(319, &qword_27CDF62D0, type metadata accessor for PMAccount, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of _PMPasswordAutoFillPocketViewController.__allocating_init(persona:appID:credentialTypes:promptString:promptStringWhenPasskeysAreAvailable:serviceNameHintStrings:domainNameHintStrings:savedAccountStore:suggestedDomainForNewAccount:localizedHostAppNameForNewAccount:bundleIDForFallbackIconForNewAccount:autoFillQuirksManager:shouldShowAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys:connectedAppAuditToken:isConnectedAppAWebBrowser:initialSearchQuery:savedAccountToInitiallyShowDetailsFor:shouldAllowAddingNewPasswords:bypassLockoutPolicy:authenticatedContext:savedAccountContext:didSelectAccountHandler:didSelectTextToInsertHandler:)()
{
  v2 = *(v0 + 320);

  return v2();
}

void sub_21CB02D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21CB02DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CB02E14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CB02E74()
{
  result = qword_27CDF85B8;
  if (!qword_27CDF85B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2200, &qword_21CBB3690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF85B8);
  }

  return result;
}

unint64_t sub_21CB02EF0()
{
  result = qword_27CDF85C0;
  if (!qword_27CDF85C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED250, &qword_21CBA64C0);
    sub_21CAFC780(&qword_27CDEC280, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF85C0);
  }

  return result;
}

unint64_t sub_21CB02FA4()
{
  result = qword_27CDF85C8;
  if (!qword_27CDF85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF85C8);
  }

  return result;
}

Swift::Void __swiftcall PMCredentialPickerViewController.refreshConfirmButton()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_21CB81604();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21C6EA794(v3, &qword_27CDF85D0, &qword_21CBC9430);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    sub_21CB05380();
    (*(v5 + 8))(v8, v4);
  }
}

void sub_21CB031D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id PMCredentialPickerViewControllerBase.init(requiringTableView:)(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PMCredentialPickerViewControllerBase();
  return objc_msgSendSuper2(&v4, sel_initRequiringTableView_, a1 & 1);
}

uint64_t sub_21CB03300()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21CB03374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = type metadata accessor for PMPasskeyAccountRegistrationContentView(0);
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8990, &qword_21CBC9698);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = sub_21CB81884();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8998, &qword_21CBC96A0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v41 - v25;
  (*(v14 + 16))(v17, a1, v13, v24);
  v27 = *(a1 + *(type metadata accessor for PMCredentialPickerViewController.CredentialPickerHeaderView(0) + 20));
  sub_21C97BCD0(v17, v27, v26);
  LOBYTE(v17) = sub_21CB83D04();
  sub_21CB81F24();
  v28 = &v26[*(v19 + 44)];
  *v28 = v17;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = sub_21CB0373C();
  if (v33)
  {
    v34 = v33;
    v35 = v27;
    v36 = v42;
    sub_21C8A2180(v34, v35, v42);
    sub_21CB16FC0(v36, v12, type metadata accessor for PMPasskeyAccountRegistrationContentView);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  (*(v3 + 56))(v12, v37, 1, v43);
  sub_21C6EDBAC(v26, v22, &qword_27CDF8998, &qword_21CBC96A0);
  sub_21C6EDBAC(v12, v9, &qword_27CDF8990, &qword_21CBC9698);
  v38 = v44;
  sub_21C6EDBAC(v22, v44, &qword_27CDF8998, &qword_21CBC96A0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF89A0, &qword_21CBC96A8);
  sub_21C6EDBAC(v9, v38 + *(v39 + 48), &qword_27CDF8990, &qword_21CBC9698);
  sub_21C6EA794(v12, &qword_27CDF8990, &qword_21CBC9698);
  sub_21C6EA794(v26, &qword_27CDF8998, &qword_21CBC96A0);
  sub_21C6EA794(v9, &qword_27CDF8990, &qword_21CBC9698);
  return sub_21C6EA794(v22, &qword_27CDF8998, &qword_21CBC96A0);
}

uint64_t sub_21CB0373C()
{
  v0 = sub_21CB816C4();
  v1 = [v0 requestTypes];

  if (v1 != 512)
  {
    return 0;
  }

  v2 = sub_21CB816A4();
  v3 = v2;
  if (v2 >> 62)
  {
LABEL_17:
    v4 = sub_21CB85FA4();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_18:

    return 0;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_4:
  v5 = 0;
  while ((v3 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x21CF15BD0](v5, v3);
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    sub_21CB81BE4();
    if ([v6 isKindOfClass_])
    {
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
    ++v5;
    if (v7 == v4)
    {
      goto LABEL_18;
    }
  }

  if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = *(v3 + 8 * v5 + 32);
  swift_unknownObjectRetain();
  v7 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:

  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_21CB03894@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_21CB832E4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8988, &qword_21CBC9690);
  return sub_21CB03374(v1, a1 + *(v3 + 44));
}

void sub_21CB038E4()
{
  v1 = v0;
  v2 = sub_21CB81024();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v2);
  v74 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81674();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v5);
  v78 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v73 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v73 - v15;
  v17 = sub_21CB81604();
  v79 = *(v17 - 8);
  v80 = v17;
  v18 = *(v79 + 64);
  MEMORY[0x28223BE20](v17);
  v73 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21CB83BD4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = type metadata accessor for PMCredentialPickerViewController.CredentialPickerHeaderView(0);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PMCredentialPickerViewController(0);
  v83.receiver = v0;
  v83.super_class = v27;
  objc_msgSendSuper2(&v83, sel_viewDidLoad);
  v28 = [v0 tableView];
  [v28 setDataSource_];

  v29 = [v1 tableView];
  sub_21C6E8F4C(0, &qword_27CDF85E0, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = sub_21CB85584();
  [v29 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v31];

  v32 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_uiContext;
  v33 = sub_21CB816A4();
  v34 = *&v1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow];
  *&v1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow] = v33;

  v35 = sub_21CB81884();
  (*(*(v35 - 8) + 16))(v26, &v1[v32], v35);
  *&v26[*(v23 + 28)] = v1;
  v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85F0, &qword_21CBC9438));
  v37 = v1;
  v38 = sub_21CB833B4();
  sub_21CB83BC4();
  sub_21CB833A4();
  v39 = v38;
  v40 = [v39 view];
  if (!v40)
  {
    __break(1u);
    goto LABEL_31;
  }

  v41 = v40;
  [v40 setAutoresizingMask_];

  v42 = [v39 view];
  if (!v42)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v43 = v42;
  [v42 setTranslatesAutoresizingMaskIntoConstraints_];

  v44 = [v39 view];
  if (!v44)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v45 = v44;
  v46 = [objc_opt_self() clearColor];
  [v45 setBackgroundColor_];

  [v37 addChildViewController_];
  [v39 didMoveToParentViewController_];
  v47 = [v37 paneHeaderStackView];
  v48 = v39;
  if (!v47)
  {
    goto LABEL_7;
  }

  v49 = v47;
  v48 = [v39 view];

  if (!v48)
  {
LABEL_33:
    __break(1u);
    return;
  }

  [v49 addArrangedSubview_];

LABEL_7:
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  v51 = v79;
  v50 = v80;
  if ((*(v79 + 48))(v16, 1, v80) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDF85D0, &qword_21CBC9430);
  }

  else
  {
    v52 = v73;
    (*(v51 + 32))(v73, v16, v50);
    v53 = 8.0;
    if (([*&v37[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] isCombinedPublicKeyCredentialRegistrationRequest] & 1) == 0)
    {
      if (qword_27CDEA488 != -1)
      {
        swift_once();
      }

      v53 = *&qword_27CE18730;
    }

    v54 = [v37 footerPaneContext];
    [v54 addSubPane:*&v37[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane] withCustomSpacingAfter:v53];

    sub_21CB05380();
    (*(v51 + 8))(v52, v50);
  }

  sub_21CB81684();
  v55 = sub_21CB1362C(v12);
  v57 = v56;
  v58 = v81;
  v59 = *(v81 + 8);
  v60 = v12;
  v61 = v82;
  v59(v60, v82);
  if (!v57)
  {
    goto LABEL_27;
  }

  v79 = v55;
  v80 = v37;
  v62 = v58;
  v63 = v77;
  sub_21CB81684();
  v64 = v78;
  (*(v62 + 32))(v78, v63, v61);
  v65 = (*(v62 + 88))(v64, v61);
  if (v65 == *MEMORY[0x277CBA7D8])
  {
    v66 = 0;
  }

  else
  {
    if (v65 != *MEMORY[0x277CBA7B8] && v65 != *MEMORY[0x277CBA7C8])
    {
      v67 = v79;
      if (v65 == *MEMORY[0x277CBA7C0] || v65 == *MEMORY[0x277CBA7D0])
      {
        v66 = sel_expandLoginChoicesButtonPressed;
      }

      else
      {
        v59(v64, v61);
        v66 = 0;
      }

      v68 = v67;
      goto LABEL_26;
    }

    v66 = sel_useCABLEButtonPressed;
  }

  v68 = v79;
LABEL_26:
  sub_21CB057CC(v68, v57, v66);

LABEL_27:
  if (sub_21CB81714())
  {
    v69 = v74;
    sub_21CB81014();
    v70 = sub_21CB81004();
    v72 = v71;
    (*(v75 + 8))(v69, v76);
    sub_21CB057CC(v70, v72, sel_manualPasswordEntryButtonPressed);
  }
}

uint64_t sub_21CB04204(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_21CB81604();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMCredentialPickerViewController(0);
  v15.receiver = v2;
  v15.super_class = v13;
  objc_msgSendSuper2(&v15, sel_viewIsAppearing_, a1 & 1);
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21C6EA794(v7, &qword_27CDF85D0, &qword_21CBC9430);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_21CB05380();
  return (*(v9 + 8))(v12, v8);
}

void PMCredentialPickerViewController.init(presentationContext:shouldExpandOtherLoginChoices:activity:)(char *a1, int a2, uint64_t a3)
{
  v4 = v3;
  v103 = a3;
  LODWORD(v102) = a2;
  v101 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8608, &qword_21CBC9440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v94 = &v86 - v7;
  v8 = sub_21CB81794();
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = *(v95 + 64);
  MEMORY[0x28223BE20](v8);
  v87 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CB85CE4();
  v92 = *(v11 - 8);
  v93 = v11;
  v12 = *(v92 + 64);
  MEMORY[0x28223BE20](v11);
  v91 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_21CB85CC4();
  v14 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v90 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21CB85404();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v88 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8610, &qword_21CBC9448);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v86 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8618, &qword_21CBC9450);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v86 - v25;
  v27 = sub_21CB81884();
  v104 = *(v27 - 8);
  v28 = *(v104 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8620, &unk_21CBC9458);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v86 - v34;
  v36 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow;
  *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow] = MEMORY[0x277D84F90];
  v97 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_externalPasswordCredentialForSelectedLoginChoice;
  *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_externalPasswordCredentialForSelectedLoginChoice] = 0;
  v98 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController] = 0;
  v99 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController;
  *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController] = 0;
  v100 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_secondaryButton;
  *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_secondaryButton] = 0;
  v37 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController__selectedLoginChoiceIndex;
  v107 = 0;
  sub_21CB81D74();
  v38 = *(v32 + 32);
  v105 = v4;
  v39 = v35;
  v40 = v27;
  v38(&v4[v37], v39, v31);
  v41 = sub_21CB816D4();
  (*(*(v41 - 8) + 56))(v22, 1, 1, v41);
  v42 = v101;
  v43 = v104;
  sub_21CB816B4();
  if ((*(v43 + 48))(v26, 1, v40) == 1)
  {

    swift_unknownObjectRelease();
    sub_21C6EA794(v26, &qword_27CDF8618, &qword_21CBC9450);
    v44 = v105;
    v45 = *&v105[v36];

    (*(v32 + 8))(&v44[v37], v31);
    type metadata accessor for PMCredentialPickerViewController(0);
    v46 = *((*MEMORY[0x277D85000] & *v44) + 0x30);
    v47 = *((*MEMORY[0x277D85000] & *v44) + 0x34);
    swift_deallocPartialClassInstance();
    return;
  }

  (*(v43 + 32))(v30, v26, v40);
  v48 = v105;
  *&v105[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] = v42;
  v49 = *(v43 + 16);
  v101 = v30;
  v102 = v40;
  v49(&v48[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_uiContext], v30, v40);
  v50 = v42;
  v51 = v103;
  swift_unknownObjectRetain();
  v52 = [v50 auditTokenData];
  v53 = sub_21CB80C84();
  v55 = v54;

  v56 = [v50 testOptions];
  v57 = objc_allocWithZone(MEMORY[0x277CBA948]);
  v58 = sub_21CB80C64();
  sub_21C7A34C0(v53, v55);
  v59 = [v57 initWithActivity:v51 auditTokenData:v58 testOptions:v56 addButtonPadding:0];
  swift_unknownObjectRelease();

  *&v48[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane] = v59;
  v60 = [v50 appleIDAuthorizationRequest];
  if (!v60)
  {
    *&v105[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_authKitAuthorizationProvider] = 0;
    v70 = v95;
    v69 = v96;
    goto LABEL_12;
  }

  v61 = [v50 serviceName];
  if (!v61)
  {
    __break(1u);
LABEL_19:

    __break(1u);
    return;
  }

  v56 = v61;
  v62 = [v50 teamIdentifier];
  v55 = v62;
  if (!v62)
  {
    sub_21CB855C4();
    v55 = sub_21CB85584();
  }

  v63 = v62;
  v64 = [v50 bundleIdentifier];
  v58 = v64;
  if (!v64)
  {
    sub_21CB855C4();
    v58 = sub_21CB85584();
  }

  v65 = v64;
  v66 = [v50 appleIDAuthorizationRequest];
  if (!v66)
  {
    goto LABEL_19;
  }

  v67 = v66;

  v68 = [objc_allocWithZone(MEMORY[0x277CF0378]) initWithAppName:v56 teamIdentifier:v55 bundleIdentifier:v58 authorizationRequest:v67];
  *&v105[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_authKitAuthorizationProvider] = v68;
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  sub_21CB853E4();
  v107 = MEMORY[0x277D84F90];
  sub_21CB13C94(&unk_27CDF8670, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7700, &unk_21CBC5B60);
  sub_21C6EADEC(&qword_27CDF8680, &unk_27CDF7700, &unk_21CBC5B60);
  sub_21CB85F14();
  (*(v92 + 104))(v91, *MEMORY[0x277D85260], v93);
  v60 = sub_21CB85D14();
  v70 = v95;
  v69 = v96;
LABEL_12:
  v71 = v105;
  *&v105[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_alertQueue] = v60;
  v72 = [objc_opt_self() sharedMonitor];
  v73 = [v72 isKeychainSyncEnabled];

  v71[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_isKeychainSyncEnabled] = v73;
  v74 = type metadata accessor for PMCredentialPickerViewController(0);
  v106.receiver = v71;
  v106.super_class = v74;
  v75 = objc_msgSendSuper2(&v106, sel_initRequiringTableView_, 1);
  v76 = v94;
  v77 = v101;
  sub_21CB817A4();
  v78 = (*(v70 + 48))(v76, 1, v69);
  v79 = v104;
  if (v78 == 1)
  {
    sub_21C6EA794(v76, &qword_27CDF8608, &qword_21CBC9440);
  }

  else
  {
    v80 = v87;
    (*(v70 + 32))(v87, v76, v69);
    v81 = [v75 as_navigationItem];
    v82 = sub_21CB04FFC();
    [v81 setLeftBarButtonItem_];

    (*(v70 + 8))(v80, v69);
  }

  [*&v75[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane] setDelegate_];
  v83 = *&v75[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_authKitAuthorizationProvider];
  v84 = v102;
  if (v83)
  {
    [v83 setPresentationProvider_];
  }

  v85 = [objc_opt_self() defaultCenter];
  [v85 addObserver:v75 selector:sel_keychainSyncStatusMayHaveChangedWithNotification_ name:*MEMORY[0x277D49C18] object:0];

  swift_unknownObjectRelease();
  (*(v79 + 8))(v77, v84);
}

id sub_21CB04FFC()
{
  v0 = sub_21CB81774();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = [objc_opt_self() systemFontOfSize:20.0 weight:*MEMORY[0x277D74420]];
  [v5 setFont_];

  sub_21CB81784();
  sub_21CB81764();
  (*(v1 + 8))(v4, v0);
  v7 = sub_21CB85584();

  [v5 setText_];

  v8 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v8 setHidesSharedBackground_];

  return v8;
}

void sub_21CB051FC()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow;
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
    }

    if (sub_21CB85FA4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v3 = *(v0 + v1);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = *(v0 + v1);

      v9 = v10;
LABEL_18:
      MEMORY[0x21CF15BD0](v9, v3);
      goto LABEL_13;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v3 + 8 * v10 + 32);
      swift_unknownObjectRetain();
      return;
    }

    __break(1u);
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v6 = [*(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext) loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF89E0, &qword_21CBB5D88);
  v3 = sub_21CB85824();

  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v3 + 32);
    swift_unknownObjectRetain();
LABEL_13:

    return;
  }

  __break(1u);
}

void sub_21CB05380()
{
  v1 = sub_21CB815B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB815C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  sub_21CB051FC();
  v22 = v14;
  sub_21CB815E4();
  v15 = (*(v7 + 88))(v13, v6);
  if (v15 == *MEMORY[0x277CBA780])
  {
    (*(v7 + 16))(v10, v13, v6);
    (*(v7 + 96))(v10, v6);
    if (*v10 == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (v15 != *MEMORY[0x277CBA760])
  {
    if (v15 == *MEMORY[0x277CBA778])
    {
      v16 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane];
      sub_21CB815D4();
      sub_21CB815A4();
      (*(v2 + 8))(v5, v1);
      v19 = sub_21CB85584();

      [v16 showContinueWithPasswordButtonWithTitle_];
LABEL_9:

      goto LABEL_10;
    }

LABEL_8:
    v16 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane];
    sub_21CB815D4();
    sub_21CB815A4();
    (*(v2 + 8))(v5, v1);
    v19 = sub_21CB85584();

    [v16 showContinueButtonWithTitle_];
    goto LABEL_9;
  }

LABEL_5:
  v16 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane];
  v21 = [v0 footerPaneContext];
  sub_21CB815D4();
  sub_21CB815A4();
  (*(v2 + 8))(v5, v1);
  v17 = sub_21CB85584();

  v18 = v21;
  [v16 setUpButtonInPaneContext:v21 buttonTitle:v17];

  [v16 setAuthorizationCapabilityEnabled:1 forLoginChoice:v22];
LABEL_10:
  (*(v7 + 8))(v13, v6);
  v20 = [v16 authorizationButton];
  [v20 setEnabled_];
  swift_unknownObjectRelease();
}

void sub_21CB057CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PMCredentialPickerViewController(0);
  v29[3] = v5;
  v29[0] = v3;
  v6 = v3;
  v7 = sub_21CB85584();
  if (v5)
  {
    v8 = __swift_project_boxed_opaque_existential_0(v29, v5);
    v9 = *(v5 - 8);
    v10 = *(v9 + 64);
    v11 = MEMORY[0x28223BE20](v8);
    v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v13, v11);
    v14 = sub_21CB86334();
    (*(v9 + 8))(v13, v5);
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_opt_self() buttonWithTitle:v7 target:v14 action:{a3, v29[0]}];

  swift_unknownObjectRelease();
  v16 = *&v6[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_secondaryButton];
  *&v6[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_secondaryButton] = v15;
  v17 = v15;

  if (v17)
  {
    v18 = [v6 paneFooterStackView];
    if (v18)
    {
      v19 = v18;
      v20 = objc_opt_self();
      v21 = v17;
      v22 = [v20 systemBackgroundColor];
      [v21 setBackgroundColor_];

      [v21 _setContinuousCornerRadius_];
      [v21 setTranslatesAutoresizingMaskIntoConstraints_];
      v23 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF76D8, &qword_21CBD0830);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_21CBC9410;
      v25 = [v21 heightAnchor];

      v26 = [v25 constraintEqualToConstant_];
      *(v24 + 32) = v26;
      sub_21C6E8F4C(0, &unk_27CDF8A50, 0x277CCAAD0);
      v27 = sub_21CB85814();

      [v23 activateConstraints_];

      LODWORD(v28) = 1148846080;
      [v21 setContentCompressionResistancePriority:1 forAxis:v28];
      [v19 addArrangedSubview_];
      if (([objc_opt_self() isPad] & 1) == 0)
      {
        [v19 setCustomSpacing:v21 afterView:8.0];
      }

      v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      [v19 addArrangedSubview_];
    }
  }
}

id PMCredentialPickerViewController.__allocating_init(requiringTableView:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initRequiringTableView_];
}

uint64_t sub_21CB05C20()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_uiContext;
  v2 = sub_21CB81884();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);

  v4 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController__selectedLoginChoiceIndex;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8620, &unk_21CBC9458);
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

id sub_21CB05D80(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21CB05F00@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PMCredentialPickerViewController(0);
  result = sub_21CB81CF4();
  *a1 = result;
  return result;
}

id PMCredentialPickerViewController.tableView(_:cellForRowAt:)(void *a1)
{
  v2 = v1;
  v4 = sub_21CB85584();
  v5 = [a1 dequeueReusableCellWithIdentifier_];

  if (!v5)
  {
    v13 = objc_allocWithZone(MEMORY[0x277D75B48]);

    return [v13 init];
  }

  v6 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow;
  v7 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  v25[0] = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v8)
  {
    v22 = v6;
    v23 = v2;
    v24 = v5;
    v9 = 0;
    v2 = v7 & 0xC000000000000001;
    v6 = &selRef_addedAt;
    while (1)
    {
      if (v2)
      {
        v10 = MEMORY[0x21CF15BD0](v9, v7);
        v5 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v5 = v24;
          v12 = v25[0];
          v2 = v23;
          v6 = v22;
          goto LABEL_21;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_33:
          v8 = sub_21CB85FA4();
          goto LABEL_4;
        }

        v10 = *(v7 + 8 * v9 + 32);
        swift_unknownObjectRetain();
        v5 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          goto LABEL_15;
        }
      }

      if ([v10 loginChoiceKind] == 6)
      {
        sub_21CB86134();
        v11 = *(v25[0] + 16);
        sub_21CB86164();
        sub_21CB86174();
        sub_21CB86144();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v9;
      if (v5 == v8)
      {
        goto LABEL_16;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_21:

  if (!sub_21CB80FB4())
  {
    goto LABEL_30;
  }

  v15 = sub_21CB80FA4();
  v16 = *(v6 + v2);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v21 = *(v6 + v2);
    }

    v17 = sub_21CB85FA4();
    if (v12 < 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12 < 0)
    {
LABEL_37:
      v18 = sub_21CB85FA4();
      goto LABEL_26;
    }
  }

  if ((v12 & 0x4000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v18 = *(v12 + 16);
LABEL_26:

  v19 = v17 - v18;
  if (!__OFSUB__(v17, v18))
  {
    v20 = v15 + v19;
    if (!__OFADD__(v15, v19))
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_30:

    v20 = sub_21CB80FA4();
LABEL_31:
    MEMORY[0x28223BE20](v20);
    v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8688, &qword_21CBC9468);
    v25[4] = sub_21C6EADEC(&qword_27CDF8690, &qword_27CDF8688, &qword_21CBC9468);
    __swift_allocate_boxed_opaque_existential_0(v25);
    type metadata accessor for PMLoginChoiceCell();
    sub_21CB13C94(&qword_27CDF8698, type metadata accessor for PMLoginChoiceCell);
    sub_21CB83814();
    MEMORY[0x21CF15630](v25);
    [v5 setSelectionStyle_];
    [v5 setBackgroundView_];
    return v5;
  }

  __break(1u);
  return result;
}

void sub_21CB06398(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = sub_21CB81884();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v29);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 16);
  v11(v10, &a1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_uiContext], v8);
  v12 = *&a1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow];
  v28 = v6;
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = MEMORY[0x21CF15BD0](a2, v12);

LABEL_5:
    v14 = type metadata accessor for PMLoginChoiceCell();
    v15 = v14[8];
    *(a3 + v15) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
    swift_storeEnumTagMultiPayload();
    v16 = v29;
    (v11)(a3, v10, v29);
    v17 = (a3 + v14[9]);
    type metadata accessor for PMCredentialPickerViewController(0);
    sub_21CB13C94(&unk_27CDF2C30, type metadata accessor for PMCredentialPickerViewController);
    v18 = a1;
    *v17 = sub_21CB82674();
    v17[1] = v19;
    *(a3 + v14[5]) = v13;
    *(a3 + v14[7]) = a2;
    if ([v13 loginChoiceKind])
    {
      (*(v28 + 8))(v10, v16);
    }

    else
    {
      v21 = *&v18[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext];
      v22 = [v21 serviceName];
      if (v22)
      {
        v23 = v22;
        v24 = [v21 appleIDAuthorizationRequest];
        if (v24)
        {
          v25 = v24;
          v26 = [v21 teamIdentifier];
          if (!v26)
          {
            sub_21CB855C4();
            v26 = sub_21CB85584();
          }

          v27 = [v21 bundleIdentifier];
          if (!v27)
          {
            sub_21CB855C4();
            v27 = sub_21CB85584();
          }

          v20 = [objc_allocWithZone(MEMORY[0x277CF0378]) initWithAppName:v23 teamIdentifier:v26 bundleIdentifier:v27 authorizationRequest:v25];

          (*(v28 + 8))(v10, v29);
          goto LABEL_8;
        }

        (*(v28 + 8))(v10, v29);
      }

      else
      {
        (*(v28 + 8))(v10, v29);
      }
    }

    v20 = 0;
LABEL_8:
    *(a3 + v14[6]) = v20;
    return;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v13 = *(v12 + 8 * a2 + 32);
    swift_unknownObjectRetain();
    goto LABEL_5;
  }

  __break(1u);
}

Swift::String_optional __swiftcall PMCredentialPickerViewController.tableView(_:titleForHeaderInSection:)(UITableView *_, Swift::Int titleForHeaderInSection)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0;
  if (titleForHeaderInSection == 1)
  {
    sub_21CB81014();
    v10 = sub_21CB81004();
    v12 = v11;
    (*(v4 + 8))(v7, v3);
    v9 = v12;
    v8 = v10;
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t PMCredentialPickerViewController.numberOfTableRows.getter()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow;
  v2 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
    }

    if (sub_21CB85FA4() > 1)
    {
      goto LABEL_4;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_4;
  }

  if ((sub_21CB81704() & 1) == 0)
  {
    return 0;
  }

LABEL_4:
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 0)
  {
    v6 = *(v0 + v1);
  }

  return sub_21CB85FA4();
}

char *PMCredentialPickerViewController.tableView(_:didSelectRowAt:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_21CB81604();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB80FB4();
  v14 = sub_21CB80FA4();
  if (v13 == 1)
  {
    result = [v2 tableView:a1 numberOfRowsInSection:0];
    v16 = &result[v14];
    if (__OFADD__(v14, result))
    {
      __break(1u);
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v16;
    v17 = v2;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v14;
    v18 = v2;
  }

  sub_21CB81DC4();
  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_21C6EA794(v7, &qword_27CDF85D0, &qword_21CBC9430);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_21CB05380();
  return (*(v9 + 8))(v12, v8);
}

uint64_t PMCredentialPickerViewController.confirmButtonSubPaneDidEnterProcessingState(_:withAuthenticatedContext:)(void *a1, uint64_t a2)
{
  v5 = [v2 as_navigationItem];
  v6 = [v5 rightBarButtonItems];

  if (!v6)
  {
    goto LABEL_10;
  }

  sub_21C6E8F4C(0, &unk_27CDF86A0, 0x277D751E0);
  v7 = sub_21CB85824();

  if (v7 >> 62)
  {
    result = sub_21CB85FA4();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_10;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x21CF15BD0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;

  [v10 setEnabled_];

LABEL_10:
  v11 = *&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_secondaryButton];
  if (v11)
  {
    [v11 setEnabled_];
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  v14 = a1;

  sub_21CB07B10(a2, sub_21CB13CDC, v13);
}

void sub_21CB07168(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = sub_21CB853D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB85404();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a1;
    v19[4] = a2;
    v39 = sub_21CB171B8;
    v40 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_21C6ECBD4;
    v38 = &block_descriptor_262;
    v20 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v21 = a2;

    [a3 finishProcessingWithCompletionHandler_];
    _Block_release(v20);
    return;
  }

  v32 = v16;
  v33 = v15;
  if (!a2)
  {
    goto LABEL_8;
  }

  aBlock = a2;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v23 = v34;
  if (![v34 safari:*MEMORY[0x277CF0400] matchesErrorDomain:3 andCode:?])
  {

LABEL_8:
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v26 = sub_21CB85CF4();
    v27 = swift_allocObject();
    v27[2] = a3;
    v27[3] = a4;
    v27[4] = 0;
    v27[5] = a2;
    v39 = sub_21CB171A4;
    v40 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_21C6ECBD4;
    v38 = &block_descriptor_253;
    v28 = _Block_copy(&aBlock);

    v29 = a2;
    v30 = a3;

    sub_21CB853E4();
    aBlock = MEMORY[0x277D84F90];
    sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
    sub_21CB85F14();
    MEMORY[0x21CF15800](0, v18, v12, v28);
    _Block_release(v28);

    (*(v9 + 8))(v12, v8);
    goto LABEL_9;
  }

  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v31 = sub_21CB85CF4();
  v39 = sub_21CB171B0;
  v40 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_21C6ECBD4;
  v38 = &block_descriptor_256;
  v24 = _Block_copy(&aBlock);

  sub_21CB853E4();
  aBlock = MEMORY[0x277D84F90];
  sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  v25 = v31;
  MEMORY[0x21CF15800](0, v18, v12, v24);
  _Block_release(v24);

  (*(v9 + 8))(v12, v8);
LABEL_9:
  (*(v32 + 8))(v18, v33);
}

void sub_21CB07760(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong delegate];

    if (v7)
    {
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        if (a3)
        {
          a3 = sub_21CB80B04();
        }

        [v7 requestPaneViewController:v9 dismissWithCredential:a2 error:a3];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_21CB07848()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong delegate];

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        [v2 requestPaneViewControllerRequiresPINEntryInterface_];

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_21CB07904(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  [a1 invalidateProcessingState];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v7 = Strong;
  v8 = [Strong as_navigationItem];

  v9 = [v8 rightBarButtonItems];
  if (!v9)
  {
    goto LABEL_11;
  }

  sub_21C6E8F4C(0, &unk_27CDF86A0, 0x277D751E0);
  v10 = sub_21CB85824();

  if (v10 >> 62)
  {
    if (sub_21CB85FA4())
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x21CF15BD0](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  [v12 setEnabled_];

LABEL_11:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v15 = [v13 delegate];

  if (!v15)
  {
    return;
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v17 = v16;
  if (a4)
  {
    a4 = sub_21CB80B04();
  }

  [v15 requestPaneViewController:v17 dismissWithCredential:a3 error:a4];

  swift_unknownObjectRelease();
}

void sub_21CB07B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_21CB051FC();
  v9 = [v8 loginChoiceKind];
  swift_unknownObjectRelease();
  if (v9)
  {
    v10 = [v3 delegate];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    sub_21CB051FC();
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v36 = sub_21CB17160;
    v37 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21CB0AE08;
    v35 = &block_descriptor_235;
    v15 = _Block_copy(&aBlock);

    [v11 requestPaneViewController:v4 didRequestCredentialForLoginChoice:v13 authenticatedContext:a1 completionHandler:v15];
    swift_unknownObjectRelease();
    _Block_release(v15);
    goto LABEL_4;
  }

  v16 = *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_authKitAuthorizationProvider];
  if (v16)
  {
    v17 = v16;
    sub_21CB051FC();
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18 && (v19 = [v18 underlyingAppleIDLoginChoice]) != 0)
    {
      v20 = v19;
      if ([v17 respondsToSelector_])
      {
        v21 = swift_allocObject();
        *(v21 + 16) = a2;
        *(v21 + 24) = a3;
        v36 = sub_21CB17318;
        v37 = v21;
        aBlock = MEMORY[0x277D85DD0];
        v33 = 1107296256;
        v34 = sub_21CB0AE08;
        v35 = &block_descriptor_247;
        v22 = _Block_copy(&aBlock);

        [v17 performAuthorizationWithLoginChoice:v20 completionHandler:v22];
        _Block_release(v22);

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v30 = swift_allocObject();
    *(v30 + 16) = a2;
    *(v30 + 24) = a3;
    v36 = sub_21CB17188;
    v37 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21CB0AE08;
    v35 = &block_descriptor_241;
    v31 = _Block_copy(&aBlock);

    [v17 performAuthorizationWithCompletionHandler_];
    _Block_release(v31);
  }

  else
  {
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v23 = sub_21CB81C84();
    __swift_project_value_buffer(v23, qword_27CE18598);
    v24 = sub_21CB81C64();
    v25 = sub_21CB85AF4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21C6E5000, v24, v25, "AKASAuthorizationProvider unavailable for Apple ID request.", v26, 2u);
      MEMORY[0x21CF16D90](v26, -1, -1);
    }

    v27 = [v4 delegate];
    if (v27)
    {
      v28 = v27;
      type metadata accessor for ASCAuthorizationError(0);
      sub_21C73181C(MEMORY[0x277D84F90]);
      sub_21CB13C94(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError);
      sub_21CB80AF4();
      v29 = sub_21CB80B04();

      [v28 requestPaneViewController:v4 dismissWithCredential:0 error:v29];
LABEL_4:
      swift_unknownObjectRelease();
    }
  }
}

void sub_21CB0807C(void *a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v29 = a1;
  sub_21CB086B8();
  sub_21CB81014();
  sub_21CB81004();
  v9 = *(v4 + 8);
  v10 = v3;
  v27 = v3;
  v9(v7, v3);
  v26 = v9;
  v11 = sub_21CB85584();

  v12 = sub_21CB85584();

  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  sub_21CB81014();
  sub_21CB81004();
  v9(v7, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21CB1714C;
  *(v14 + 24) = v8;
  v25 = v8;

  v15 = sub_21CB85584();

  v34 = sub_21C7A212C;
  v35 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_21CB173B0;
  v33 = &block_descriptor_223;
  v16 = _Block_copy(&aBlock);

  v17 = objc_opt_self();
  v18 = [v17 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v13 addAction_];
  sub_21CB81014();
  sub_21CB81004();
  v26(v7, v27);
  v19 = swift_allocObject();
  v20 = v25;
  v19[2] = sub_21CB1714C;
  v19[3] = v20;
  v19[4] = v28;

  v21 = sub_21CB85584();

  v34 = sub_21CB17154;
  v35 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_21CB173B0;
  v33 = &block_descriptor_229;
  v22 = _Block_copy(&aBlock);

  v23 = [v17 actionWithTitle:v21 style:0 handler:v22];
  _Block_release(v22);

  [v13 addAction_];
  [v13 setPreferredAction_];
  [v29 presentViewController:v13 animated:1 completion:0];
}

void sub_21CB0850C(void *a1)
{
  v2 = *MEMORY[0x277CF0400];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3330, &unk_21CBB0A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  v4 = *MEMORY[0x277CCA470];
  *(inited + 32) = sub_21CB855C4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v5;
  *(inited + 48) = 0xD00000000000003DLL;
  *(inited + 56) = 0x800000021CB9BC90;
  v6 = v2;
  sub_21C73181C(inited);
  swift_setDeallocating();
  sub_21C6EA794(inited + 32, &qword_27CDF86B0, &unk_21CBB7750);
  v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v8 = sub_21CB85464();

  v9 = [v7 initWithDomain:v6 code:1 userInfo:v8];

  v10 = [a1 delegate];
  if (v10)
  {
    v11 = v10;
    v12 = v9;
    v13 = sub_21CB80B04();

    [v11 requestPaneViewController:a1 dismissWithCredential:0 error:v13];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21CB086B8()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81624();
  sub_21CB81014();
  v5 = sub_21CB81004();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_21CB0881C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = [objc_opt_self() sharedApplication];
  sub_21CB80BD4();
  v8 = sub_21CB80BE4();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_21CB80B74();
    (*(v9 + 8))(v6, v8);
    sub_21CB13514(MEMORY[0x277D84F90], &qword_27CDF8938, &qword_21CBC9660, &unk_27CDF8940, &qword_21CBC9668);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_21CB13C94(&unk_27CDF8A40, type metadata accessor for OpenExternalURLOptionsKey);
    v12 = sub_21CB85464();

    [v7 openURL:v11 options:v12 completionHandler:0];

    return a2();
  }

  return result;
}

Swift::Void __swiftcall PMCredentialPickerViewController.userTappedContinueButton()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v72 = &v67 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v67 - v6;
  v7 = sub_21CB80BE4();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v7);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB815C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v67 - v17;
  v19 = sub_21CB81604();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB051FC();
  v73 = v0;
  v24 = v20;
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_21C6EA794(v18, &qword_27CDF85D0, &qword_21CBC9430);
    return;
  }

  (*(v20 + 32))(v23, v18, v19);
  if ((sub_21CB815F4() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_21CB815E4();
  v25 = (*(v11 + 88))(v14, v10);
  if (v25 == *MEMORY[0x277CBA780])
  {
    (*(v11 + 96))(v14, v10);
    if (*v14 == 1)
    {
      v26 = v73;
      v27 = *&v73[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane];
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      v78 = sub_21CB14154;
      v79 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v75 = 1107296256;
      v76 = sub_21CB09940;
      v77 = &block_descriptor_15_0;
      v29 = _Block_copy(&aBlock);
      v30 = v26;

      [v27 performPasscodeOrPasswordValidation_];
      _Block_release(v29);
    }

    else
    {
      v31 = v73;
      sub_21CB051FC();
      v33 = [v32 loginChoiceKind];
      swift_unknownObjectRelease();
      if (v33 > 3)
      {
        switch(v33)
        {
          case 4:
            v43 = [v31 delegate];
            if (v43)
            {
              v44 = v43;
              sub_21CB051FC();
              v46 = v45;
              v78 = nullsub_1;
              v79 = 0;
              aBlock = MEMORY[0x277D85DD0];
              v75 = 1107296256;
              v76 = sub_21CB0AE08;
              v77 = &block_descriptor_40;
              v47 = _Block_copy(&aBlock);
              [v44 requestPaneViewController:v31 didRequestCredentialForLoginChoice:v46 authenticatedContext:0 completionHandler:v47];
              _Block_release(v47);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            break;
          case 6:
            sub_21CB0A7D0();
            break;
          case 7:
            v34 = sub_21CB858E4();
            v35 = v72;
            (*(*(v34 - 8) + 56))(v72, 1, 1, v34);
            sub_21CB858B4();
            v36 = v31;
            v37 = sub_21CB858A4();
            v38 = swift_allocObject();
            v39 = MEMORY[0x277D85700];
            v38[2] = v37;
            v38[3] = v39;
            v38[4] = v36;
            sub_21C98B308(0, 0, v35, &unk_21CBC94C0, v38);

            break;
        }
      }

      else
      {
        switch(v33)
        {
          case 1:
            sub_21CB099B8();
            break;
          case 2:
            sub_21CB09D74(0);
            break;
          case 3:
            sub_21CB0A58C();
            break;
        }
      }
    }

    goto LABEL_11;
  }

  if (v25 != *MEMORY[0x277CBA790] && v25 != *MEMORY[0x277CBA760] && v25 != *MEMORY[0x277CBA778])
  {
    if (v25 == *MEMORY[0x277CBA768])
    {
      v40 = v69;
      sub_21CB80BD4();
      v42 = v70;
      v41 = v71;
      if ((*(v70 + 48))(v40, 1, v71) == 1)
      {
        sub_21C6EA794(v40, &qword_27CDEC300, &qword_21CBA3ED0);
        goto LABEL_10;
      }

      v72 = v23;
      v58 = v68;
      (*(v42 + 32))(v68, v40, v41);
      v59 = [objc_opt_self() defaultWorkspace];
      if (v59)
      {
        v60 = v59;
        v61 = sub_21CB80B74();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3330, &unk_21CBB0A10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21CBA0690;
        v63 = *MEMORY[0x277D0AC58];
        *(inited + 32) = sub_21CB855C4();
        *(inited + 40) = v64;
        *(inited + 72) = MEMORY[0x277D839B0];
        *(inited + 48) = 1;
        sub_21C73181C(inited);
        swift_setDeallocating();
        sub_21C6EA794(inited + 32, &qword_27CDF86B0, &unk_21CBB7750);
        v65 = sub_21CB85464();

        [v60 openSensitiveURL:v61 withOptions:v65];

        (*(v42 + 8))(v58, v41);
        v23 = v72;
        goto LABEL_10;
      }

LABEL_49:
      __break(1u);
      return;
    }

    if (v25 != *MEMORY[0x277CBA770])
    {
      if (v25 != *MEMORY[0x277CBA788])
      {
        sub_21CB095B0();
        (*(v20 + 8))(v23, v19);
        (*(v11 + 8))(v14, v10);
        return;
      }

      [objc_opt_self() openCredentialProviderAppSettingsWithCompletionHandler_];
      goto LABEL_10;
    }

    v48 = objc_opt_self();
    v49 = swift_allocObject();
    v50 = v73;
    *(v49 + 16) = v73;
    v78 = sub_21CB1417C;
    v79 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v75 = 1107296256;
    v76 = sub_21CB031D0;
    v77 = &block_descriptor_21_1;
    v51 = _Block_copy(&aBlock);
    v52 = v50;
    v24 = v20;

    [v48 setUserVisibleKeychainSyncEnabled:1 withCompletion:v51];
    _Block_release(v51);
    [*&v52[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane] showActivityIndicator];
    v53 = [v52 as_navigationItem];
    v54 = [v53 rightBarButtonItems];

    if (!v54)
    {
LABEL_45:
      v66 = *&v52[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_secondaryButton];
      if (v66)
      {
        [v66 setEnabled_];
      }

      goto LABEL_11;
    }

    sub_21C6E8F4C(0, &unk_27CDF86A0, 0x277D751E0);
    v55 = sub_21CB85824();

    if (v55 >> 62)
    {
      if (sub_21CB85FA4())
      {
        goto LABEL_34;
      }
    }

    else if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_34:
      if ((v55 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x21CF15BD0](0, v55);
      }

      else
      {
        if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_49;
        }

        v56 = *(v55 + 32);
      }

      v57 = v56;

      [v57 setEnabled_];

      goto LABEL_45;
    }

    goto LABEL_45;
  }

LABEL_10:
  sub_21CB095B0();
LABEL_11:
  (*(v24 + 8))(v23, v19);
}

id sub_21CB095B0()
{
  result = [v0 delegate];
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CF0400] code:2 userInfo:0];
    v4 = sub_21CB80B04();

    [v2 requestPaneViewController:v0 dismissWithCredential:0 error:v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21CB09678(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-v4];
  v6 = sub_21CB80BE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 1) == 0)
  {
    sub_21CB80BD4();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_21C6EA794(v5, &qword_27CDEC300, &qword_21CBA3ED0);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v11 = [objc_opt_self() defaultWorkspace];
      if (!v11)
      {
        __break(1u);
        return;
      }

      v12 = v11;
      v13 = sub_21CB80B74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3330, &unk_21CBB0A10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21CBA0690;
      v15 = *MEMORY[0x277D0AC58];
      *(inited + 32) = sub_21CB855C4();
      *(inited + 40) = v16;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = 1;
      sub_21C73181C(inited);
      swift_setDeallocating();
      sub_21C6EA794(inited + 32, &qword_27CDF86B0, &unk_21CBB7750);
      v17 = sub_21CB85464();

      [v12 openSensitiveURL:v13 withOptions:v17];

      (*(v7 + 8))(v10, v6);
    }

    sub_21CB095B0();
  }
}

void sub_21CB09940(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, v7);
}

void sub_21CB099B8()
{
  v1 = v0;
  sub_21CB051FC();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 providerBundleIdentifier];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 externalCredentialIdentity];
      if (v6)
      {
        v22 = v6;
        v7 = [objc_opt_self() sharedManager];
        v8 = [v7 enabledExtensionWithContainingAppBundleID_];

        if (v8)
        {
          v9 = [objc_allocWithZone(MEMORY[0x277CBA9C0]) initWithFoundationCredentialIdentity_];
          v10 = [objc_allocWithZone(MEMORY[0x277CBAA28]) initWithExtension:v8 credentialIdentity:v9];
          v11 = *&v1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
          *&v1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController] = v10;
          v12 = v10;

          if (v12)
          {
            [v12 setDelegate_];
          }

          swift_unknownObjectRelease();
        }

        else
        {
          if (qword_27CDEA3F8 != -1)
          {
            swift_once();
          }

          v18 = sub_21CB81C84();
          __swift_project_value_buffer(v18, qword_27CE18598);
          v19 = sub_21CB81C64();
          v20 = sub_21CB85AF4();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&dword_21C6E5000, v19, v20, "No credential provider extension available", v21, 2u);
            MEMORY[0x21CF16D90](v21, -1, -1);
          }

          sub_21CB095B0();
          swift_unknownObjectRelease();
        }

        return;
      }
    }

    v13 = [v1 delegate];
    if (v13)
    {
      v14 = v13;
      v15 = swift_allocObject();
      *(v15 + 16) = v1;
      aBlock[4] = sub_21CB170D0;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21CB0AE08;
      aBlock[3] = &block_descriptor_167;
      v16 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v17 = v1;

      [v14 requestPaneViewController:v17 didRequestCredentialForLoginChoice:v3 authenticatedContext:0 completionHandler:v16];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _Block_release(v16);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();

    sub_21CB095B0();
  }
}

void sub_21CB09D74(int a1)
{
  v2 = v1;
  LODWORD(v68) = a1;
  v3 = sub_21CB819B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB819E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB051FC();
  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 externalCredentialProviderBundleID];
    if (!v17)
    {
      [v16 isRegistrationRequest];
      v68 = 0;
LABEL_31:
      v57 = [v2 delegate];
      if (v57)
      {
        v58 = v57;
        v59 = swift_allocObject();
        *(v59 + 16) = v2;
        aBlock[4] = sub_21CB17320;
        aBlock[5] = v59;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21CB0AE08;
        aBlock[3] = &block_descriptor_173;
        v60 = _Block_copy(aBlock);
        swift_unknownObjectRetain();
        v61 = v2;

        [v58 requestPaneViewController:v61 didRequestCredentialForLoginChoice:v16 authenticatedContext:0 completionHandler:v60];

        _Block_release(v60);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRelease();
        v62 = v68;
      }

      return;
    }

    v66 = v9;
    v67 = v4;
    v18 = v17;
    v19 = sub_21CB855C4();
    v21 = v20;

    v22 = sub_21CB14184(v19, v21);

    if (v22)
    {

      if ([v16 isRegistrationRequest])
      {
        v64 = v3;
        v65 = v14;
        v23 = objc_opt_self();
        v24 = v22;
        v25 = [v23 &selRef__isEveryRecipientEligibleForSharing_];
        v26 = [v25 extensionSupportsPasskeys_];

        if (v26)
        {
          v27 = [*&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] passkeyCreationOptionsForExternalProvider];
          if (!v27 || (v28 = v27, v29 = [v27 extensions], v28, !v29))
          {
            [objc_allocWithZone(sub_21CB81C04()) init];
          }

          sub_21CB819C4();
          v30 = sub_21CB819D4();
          v31 = [objc_allocWithZone(MEMORY[0x277CBA998]) initWithLoginChoice:v16 registrationExtensionInput:v30];

          v32 = objc_allocWithZone(MEMORY[0x277CBAA28]);
          v33 = v24;
          v34 = [v32 initWithExtension:v24 passkeyRegistrationRequest:v31 forConditionalRegistration:v68 & 1];
          v35 = *&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
          *&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController] = v34;
          v36 = v34;

          v37 = v66;
          if (v36)
          {
            [v36 setDelegate_];

            swift_unknownObjectRelease();
            v33 = v36;
          }

          else
          {
            swift_unknownObjectRelease();
          }

          (*(v37 + 8))(v12, v8);
          return;
        }

        v3 = v64;
      }

      v44 = objc_opt_self();
      v68 = v22;
      v45 = [v44 sharedManager];
      LODWORD(v44) = [v45 extensionSupportsPasskeys_];

      if (v44)
      {
        v46 = [*&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] passkeyAssertionOptionsForExternalProvider];
        if (!v46 || (v47 = v46, v48 = [v46 extensions], v47, !v48))
        {
          [objc_allocWithZone(sub_21CB81BF4()) init];
        }

        sub_21CB81994();
        v49 = sub_21CB819A4();
        v50 = [objc_allocWithZone(MEMORY[0x277CBA998]) initWithLoginChoice:v16 assertionExtensionInput:v49];

        v51 = objc_allocWithZone(MEMORY[0x277CBAA28]);
        v52 = [v51 initWithExtension:v68 passkeyAssertionRequest:v50];
        v53 = *&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
        *&v2[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController] = v52;
        v54 = v52;

        v55 = v67;
        if (v54)
        {
          [v54 setDelegate_];

          swift_unknownObjectRelease();
          v56 = v54;
        }

        else
        {
          swift_unknownObjectRelease();

          v56 = v68;
        }

        (*(v55 + 8))(v7, v3);
        return;
      }

      goto LABEL_31;
    }

    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v38 = sub_21CB81C84();
    __swift_project_value_buffer(v38, qword_27CE18598);

    v39 = sub_21CB81C64();
    v40 = sub_21CB85AF4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136446210;
      v43 = sub_21C98E004(v19, v21, aBlock);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_21C6E5000, v39, v40, "Extension for bundle %{public}s not found", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x21CF16D90](v42, -1, -1);
      MEMORY[0x21CF16D90](v41, -1, -1);
    }

    else
    {
    }

    sub_21CB095B0();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    sub_21CB095B0();
  }
}

id sub_21CB0A58C()
{
  sub_21CB051FC();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 credentialKind];
    if (v3 < 2)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v5 = v0;
      v6 = sub_21CB170EC;
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      v6 = nullsub_1;
      v4 = 0;
LABEL_10:
      v8 = [v0 delegate];
      if (v8)
      {
        v9 = v8;
        v11[4] = v6;
        v11[5] = v4;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 1107296256;
        v11[2] = sub_21CB0AE08;
        v11[3] = &block_descriptor_179;
        v10 = _Block_copy(v11);
        swift_unknownObjectRetain();

        [v9 requestPaneViewController:v0 didRequestCredentialForLoginChoice:v2 authenticatedContext:0 completionHandler:v10];
        swift_unknownObjectRelease();

        _Block_release(v10);
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    sub_21CB095B0();

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    return sub_21CB095B0();
  }
}

void sub_21CB0A7D0()
{
  v1 = v0;
  sub_21CB051FC();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 providerExtensionBundleID];
    if (v4)
    {
      v5 = v4;
      v6 = sub_21CB855C4();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    sub_21C6E8F4C(0, qword_280E22EE0, 0x277CCA9C8);
    v16 = sub_21CB0C6BC(v6, v8);
    if (v16)
    {
      v27 = v16;
      v28 = [objc_allocWithZone(MEMORY[0x277D499C8]) init];
      v29 = swift_allocObject();
      *(v29 + 16) = v1;
      *(v29 + 24) = v27;
      v30 = *&v1[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext];
      v31 = v1;
      v32 = v27;
      if ([v30 isCABLEAuthenticatorRequest])
      {
        v41 = sub_21CB1713C;
        v42 = v29;
        aBlock = MEMORY[0x277D85DD0];
        v38 = 1107296256;
        v39 = sub_21CB173B0;
        v40 = &block_descriptor_200;
        v33 = _Block_copy(&aBlock);

        [v28 getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler_];
        swift_unknownObjectRelease();

        _Block_release(v33);
      }

      else
      {
        v34 = [v30 frameIdentifier];
        if (v34)
        {
          v35 = v34;
          v41 = sub_21CB1713C;
          v42 = v29;
          aBlock = MEMORY[0x277D85DD0];
          v38 = 1107296256;
          v39 = sub_21CB173B0;
          v40 = &block_descriptor_197;
          v36 = _Block_copy(&aBlock);

          [v28 getPasskeyAssertionRequestParametersForWebFrameIdentifier:v35 completionHandler:v36];
        }

        else
        {
          v35 = [v30 appIdentifier];
          if (!v35)
          {
            sub_21CB855C4();
            v35 = sub_21CB85584();
          }

          v41 = sub_21CB1713C;
          v42 = v29;
          aBlock = MEMORY[0x277D85DD0];
          v38 = 1107296256;
          v39 = sub_21CB173B0;
          v40 = &block_descriptor_194_0;
          v36 = _Block_copy(&aBlock);

          [v28 getPasskeyAssertionRequestParametersForApplicationIdentifier:v35 completionHandler:v36];
        }

        swift_unknownObjectRelease();

        _Block_release(v36);
      }
    }

    else
    {
      if (qword_27CDEA3F8 != -1)
      {
        swift_once();
      }

      v17 = sub_21CB81C84();
      __swift_project_value_buffer(v17, qword_27CE18598);
      swift_unknownObjectRetain();
      v18 = sub_21CB81C64();
      v19 = sub_21CB85AF4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        aBlock = v21;
        *v20 = 136446210;
        v22 = [v3 providerExtensionBundleID];
        swift_unknownObjectRelease();
        if (!v22)
        {
          __break(1u);
          return;
        }

        v23 = sub_21CB855C4();
        v25 = v24;

        v26 = sub_21C98E004(v23, v25, &aBlock);

        *(v20 + 4) = v26;
        _os_log_impl(&dword_21C6E5000, v18, v19, "Extension not found: %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x21CF16D90](v21, -1, -1);
        MEMORY[0x21CF16D90](v20, -1, -1);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      sub_21CB095B0();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v9 = sub_21CB81C84();
    __swift_project_value_buffer(v9, qword_27CE18598);
    v10 = v0;
    v11 = sub_21CB81C64();
    v12 = sub_21CB85AF4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      sub_21CB051FC();
      v15 = [v14 loginChoiceKind];
      swift_unknownObjectRelease();
      *(v13 + 4) = v15;

      _os_log_impl(&dword_21C6E5000, v11, v12, "Called userTappedContinueButtonForCredentialProvider but selected login choice was type %lu", v13, 0xCu);
      MEMORY[0x21CF16D90](v13, -1, -1);
    }

    else
    {

      v11 = v10;
    }

    sub_21CB095B0();
  }
}

uint64_t sub_21CB0AE08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_21CB0AE88()
{
  v0[2] = sub_21CB858B4();
  v0[3] = sub_21CB858A4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21C74FDC4;

  return sub_21CB0AF34();
}

uint64_t sub_21CB0AF34()
{
  v1[8] = v0;
  sub_21CB858B4();
  v1[9] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_21CB0AFCC, v3, v2);
}

uint64_t sub_21CB0AFCC()
{
  v43 = v0;
  v1 = v0[8];
  sub_21CB051FC();
  v0[12] = v2;
  sub_21CB81BE4();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = sub_21CB81BD4();
    v6 = sub_21CB81B04();
    v8 = v7;

    v9 = sub_21CB14184(v6, v8);
    v0[13] = v9;

    if (v9)
    {
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 sharedManager];
      v13 = [v12 extensionSupportsPasskeys_];

      if (v13)
      {
        sub_21C6E8F4C(0, &qword_27CDF8A38, 0x277CBA998);
        v14 = *(MEMORY[0x277CBA8A0] + 4);
        swift_unknownObjectRetain();
        v15 = swift_task_alloc();
        v0[14] = v15;
        *v15 = v0;
        v15[1] = sub_21CB0B42C;

        return MEMORY[0x28210CE18](v4);
      }

      v32 = v0[8];
      v31 = v0[9];

      v33 = [v32 delegate];
      if (!v33)
      {
        swift_unknownObjectRelease();

        goto LABEL_22;
      }

      v34 = v33;
      v35 = v0[8];
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      v0[6] = sub_21CB17320;
      v0[7] = v36;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_21CB0AE08;
      v0[5] = &block_descriptor_207;
      v37 = _Block_copy(v0 + 2);
      v38 = v0[7];
      swift_unknownObjectRetain();
      v39 = v35;

      [v34 requestPaneViewController:v39 didRequestCredentialForLoginChoice:v4 authenticatedContext:0 completionHandler:v37];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      _Block_release(v37);
    }

    else
    {
      v17 = v0[9];

      if (qword_27CDEA3F8 != -1)
      {
        swift_once();
      }

      v18 = sub_21CB81C84();
      __swift_project_value_buffer(v18, qword_27CE18598);
      swift_unknownObjectRetain();
      v19 = sub_21CB81C64();
      v20 = sub_21CB85AF4();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v42 = v22;
        *v21 = 136446210;
        v23 = sub_21CB81BD4();
        v24 = sub_21CB81B04();
        v26 = v25;

        if (v26)
        {
          v27 = v24;
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = 0xE000000000000000;
        }

        v29 = sub_21C98E004(v27, v28, &v42);

        *(v21 + 4) = v29;
        _os_log_impl(&dword_21C6E5000, v19, v20, "Extension for bundle %{public}s not found", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x21CF16D90](v22, -1, -1);
        MEMORY[0x21CF16D90](v21, -1, -1);
      }

      v30 = v0[8];
      sub_21CB095B0();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = v0[9];
    swift_unknownObjectRelease();
  }

LABEL_22:
  v40 = v0[1];

  return v40();
}

uint64_t sub_21CB0B42C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = a1;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_21CB0B554, v5, v4);
}

uint64_t sub_21CB0B554()
{
  v1 = v0[15];
  v2 = v0[9];

  if (v1)
  {
    v3 = v0[15];
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[8];

    v7 = [objc_allocWithZone(MEMORY[0x277CBAA28]) initWithExtension:v4 passkeyRegistrationRequest:v3 forConditionalRegistration:0];
    v8 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController);
    *(v6 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController) = v7;
    v9 = v7;

    [v9 setDelegate_];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v10 = sub_21CB81C84();
    __swift_project_value_buffer(v10, qword_27CE18598);
    v11 = sub_21CB81C64();
    v12 = sub_21CB85AF4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21C6E5000, v11, v12, "Failed to create passkey credential request from passkey account creation login choice.", v13, 2u);
      MEMORY[0x21CF16D90](v13, -1, -1);
    }

    v14 = v0[12];
    v15 = v0[13];
    v16 = v0[8];

    sub_21CB095B0();
    swift_unknownObjectRelease();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_21CB0B764(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_21CB853D4();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21CB85404();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v14 = sub_21CB85CF4();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_21CB170C4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_161;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  swift_unknownObjectRetain();
  v18 = a3;

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v13, v9, v16);
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v20);
}

void sub_21CB0BA74(id a1, id a2, uint64_t a3)
{
  v5 = a1;
  if (!a1 || (v6 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570), sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8), (swift_dynamicCast() & 1) == 0) || (v7 = [v10 ak_isUserCancelError], v10, (v7 & 1) == 0))
  {
    v8 = [a2 delegate];
    if (v8)
    {
      v9 = v8;
      if (v5)
      {
        v5 = sub_21CB80B04();
      }

      [v9 requestPaneViewController:a2 dismissWithCredential:a3 error:v5];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t PMCredentialPickerViewController.performAuthorization(_:withAuthenticatedLAContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = v2;
  sub_21CB07B10(a2, sub_21CB144F8, v4);
}

uint64_t sub_21CB0BC68(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_21CB853D4();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21CB85404();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_6;
  }

  aBlock = a2;
  v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v15 = v28;
  if (![v28 safari:*MEMORY[0x277CF0400] matchesErrorDomain:3 andCode:?])
  {

LABEL_6:
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v16 = sub_21CB85CF4();
    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a1;
    v20[4] = a2;
    v33 = sub_21CB17078;
    v34 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_21C6ECBD4;
    v32 = &block_descriptor_146;
    v21 = _Block_copy(&aBlock);
    v22 = a2;
    swift_unknownObjectRetain();
    v23 = a3;

    sub_21CB853E4();
    aBlock = MEMORY[0x277D84F90];
    sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
    sub_21CB85F14();
    MEMORY[0x21CF15800](0, v13, v9, v21);
    _Block_release(v21);
    goto LABEL_7;
  }

  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v16 = sub_21CB85CF4();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  v33 = sub_21CB17098;
  v34 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v30 = 1107296256;
  v31 = sub_21C6ECBD4;
  v32 = &block_descriptor_152;
  v25 = _Block_copy(&aBlock);
  v18 = a3;

  sub_21CB853E4();
  aBlock = MEMORY[0x277D84F90];
  sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  v19 = v25;
  MEMORY[0x21CF15800](0, v13, v9, v25);
  _Block_release(v19);

LABEL_7:
  (*(v27 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v26);
}

BOOL PMCredentialPickerViewController.validateReady(forAuthorization:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
    }

    v2 = sub_21CB85FA4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 != 0;
}

void sub_21CB0C2D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    v5 = objc_allocWithZone(MEMORY[0x277CF0410]);
    swift_unknownObjectRetain();
    v6 = [v5 initWithAuthorization_];
    (a3)(v6, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    a3();
  }
}

id sub_21CB0C3B8(uint64_t a1, void *a2, id a3)
{
  result = [a3 delegate];
  if (result)
  {
    v7 = result;
    if (a2)
    {
      a2 = sub_21CB80B04();
    }

    [v7 requestPaneViewController:a3 dismissWithCredential:a1 error:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21CB0C45C(uint64_t a1, void *a2, void *a3)
{
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v6 = sub_21CB85CF4();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21CB173B4;
  *(v8 + 24) = v7;
  v13[4] = sub_21C7A212C;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_21CB0C694;
  v13[3] = &block_descriptor_188;
  v9 = _Block_copy(v13);
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a2;

  dispatch_sync(v6, v9);

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

id sub_21CB0C5F4(void *a1, uint64_t a2, void *a3)
{
  result = [a1 delegate];
  if (result)
  {
    v7 = result;
    if (a3)
    {
      a3 = sub_21CB80B04();
    }

    [v7 requestPaneViewController:a1 dismissWithCredential:a2 error:a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21CB0C6BC(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = sub_21CB85584();
  }

  else
  {
    v2 = 0;
  }

  v8[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() extensionWithIdentifier:v2 error:v8];

  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_21CB80B14();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_21CB0C7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277CBAA30]);
  sub_21C6E8F4C(0, &qword_27CDF8A30, 0x277CBA988);
  v7 = sub_21CB85814();
  v8 = [v6 initWithExtension:a3 serviceIdentifiers:v7 requestParameters:a1];

  v9 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController;
  v10 = *(a2 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController);
  *(a2 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController) = v8;
  v11 = v8;

  if (v11)
  {
    [v11 setDelegate_];
  }

  result = *(a2 + v9);
  if (result)
  {

    return [result setDismissOnBackground_];
  }

  return result;
}

void sub_21CB0C8A8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_21CB0C910()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_confirmButtonSubpane] disableBiometricView];
  v2 = sub_21CB81694();
  if (v2 >> 62)
  {
    v3 = sub_21CB85FA4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 != 1)
  {
    goto LABEL_16;
  }

  result = sub_21CB81694();
  if (result >> 62)
  {
    v7 = result;
    v8 = sub_21CB85FA4();
    result = v7;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x21CF15BD0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(result + 32);
    swift_unknownObjectRetain();
  }

  if ([v5 loginChoiceKind] == 3)
  {
    v6 = [v1 delegate];
    if (v6)
    {
      [v6 requestPaneViewControllerPresentSecurityKeyView_];
      swift_unknownObjectRelease();
    }

    goto LABEL_18;
  }

  swift_unknownObjectRelease();
LABEL_16:
  result = [v1 delegate];
  if (!result)
  {
    return result;
  }

  [result requestPaneViewControllerPresentExpandedLoginChoiceInterface_];
LABEL_18:

  return swift_unknownObjectRelease();
}

id sub_21CB0CB2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v3 = *(*(v2 - 8) + 64);
  *&v4 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v6 = v26 - v5;
  v7 = [*&v0[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF89E0, &qword_21CBB5D88);
  v8 = sub_21CB85824();

  if (v8 >> 62)
  {
LABEL_15:
    v9 = sub_21CB85FA4();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x21CF15BD0](v10, v8);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            v13 = sub_21CB858E4();
            (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
            sub_21CB858B4();
            v14 = v1;
            swift_unknownObjectRetain();
            v15 = sub_21CB858A4();
            v16 = swift_allocObject();
            v17 = MEMORY[0x277D85700];
            v16[2] = v15;
            v16[3] = v17;
            v16[4] = v14;
            v16[5] = v11;
            sub_21C823194(0, 0, v6, &unk_21CBC96E8, v16);

            return swift_unknownObjectRelease();
          }
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v11 = *(v8 + 8 * v10 + 32);
          swift_unknownObjectRetain();
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_12;
          }
        }

        if ([v11 loginChoiceKind] == 4)
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        ++v10;
      }

      while (v12 != v9);
    }
  }

  if (qword_27CDEA3F8 != -1)
  {
    swift_once();
  }

  v18 = sub_21CB81C84();
  __swift_project_value_buffer(v18, qword_27CE18598);
  v19 = sub_21CB81C64();
  v20 = sub_21CB85AF4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21C6E5000, v19, v20, "Use caBLE button tapped but no caBLE login choice is available. Failing request.", v21, 2u);
    MEMORY[0x21CF16D90](v21, -1, -1);
  }

  result = [v1 delegate];
  if (result)
  {
    v23 = result;
    type metadata accessor for ASCAuthorizationError(0);
    v26[0] = 1;
    sub_21C73181C(MEMORY[0x277D84F90]);
    sub_21CB13C94(&qword_27CDEA930, type metadata accessor for ASCAuthorizationError);
    sub_21CB80AF4();
    v24 = v26[1];
    v25 = sub_21CB80B04();

    [v23 requestPaneViewController:v1 dismissWithCredential:0 error:v25];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21CB0CF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[19] = a1;
  sub_21CB858B4();
  v5[22] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v5[23] = v7;
  v5[24] = v6;

  return MEMORY[0x2822009F8](sub_21CB0CFA4, v7, v6);
}

uint64_t sub_21CB0CFA4()
{
  v1 = [*(v0 + 160) delegate];
  *(v0 + 200) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_21CB0D140;
    v5 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89F8, &qword_21CBC9700);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21CB0D368;
    *(v0 + 104) = &block_descriptor_111;
    *(v0 + 112) = v5;
    [v2 requestPaneViewController:v4 didRequestCredentialForLoginChoice:v3 authenticatedContext:0 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 152);

    *v7 = 0;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_21CB0D140()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 192);
  v5 = *(v1 + 184);
  if (v3)
  {
    v6 = sub_21CB0D2EC;
  }

  else
  {
    v6 = sub_21CB0D270;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CB0D270()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[19];

  *v3 = v0[18];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4();
}

uint64_t sub_21CB0D2EC()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];

  swift_willThrow();
  swift_unknownObjectRelease();
  v4 = v0[1];
  v5 = v0[26];

  return v4();
}

uint64_t sub_21CB0D368(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

void PMCredentialPickerViewController.credentialAuthenticationViewController(_:didFinishWith:error:completion:)(void *a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v77 = a4;
  v78 = a5;
  v10 = sub_21CB80DD4();
  v76 = *(v10 - 8);
  v11 = *(v76 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF85D0, &qword_21CBC9430);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v72 - v16;
  v18 = sub_21CB81604();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  *&v21 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (a2)
  {
    v24 = a2;
    sub_21CB051FC();
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25 && (v26 = v25, (v27 = [v25 externalCredentialIdentity]) != 0))
    {
      v28 = v27;
      v74 = v6;
      v29 = [v26 site];
      if (!v29)
      {
        sub_21CB855C4();
        v29 = sub_21CB85584();
      }

      v30 = [v24 user];
      if (!v30)
      {
        sub_21CB855C4();
        v30 = sub_21CB85584();
      }

      v31 = [v24 password];
      if (!v31)
      {
        sub_21CB855C4();
        v31 = sub_21CB85584();
      }

      sub_21CB80DC4();
      v75 = v28;
      v32 = [v28 owningExtensionState];
      if (v32 && (v33 = v32, v34 = [v32 providerBundleID], v33, v34))
      {
        v73 = v24;
        sub_21CB855C4();
        v36 = v35;

        v37 = sub_21CB80D24();
        if (v36)
        {
          v38 = sub_21CB85584();
        }

        else
        {
          v38 = 0;
        }

        v24 = v73;
      }

      else
      {
        v37 = sub_21CB80D24();
        v38 = 0;
      }

      v56 = [objc_allocWithZone(MEMORY[0x277CF0428]) initWithUser:v30 password:v31 site:v29 creationDate:v37 externalProviderBundleIdentifier:v38];

      (*(v76 + 8))(v13, v10);
      v57 = v74;
      v58 = [v74 delegate];
      if (!v58)
      {

        swift_unknownObjectRelease();
        goto LABEL_37;
      }

      [v58 requestPaneViewController:v57 dismissWithCredential:v56 error:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v59 = swift_unknownObjectRelease();
LABEL_37:
    v77(v59);
    return;
  }

  v39 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  v40 = *&v6[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
  v76 = a3;
  if (v40)
  {
    aBlock[4] = v77;
    aBlock[5] = v78;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_27;
    v41 = _Block_copy(aBlock);
    v42 = v40;

    [v42 dismissViewControllerAnimated:1 completion:v41];
    _Block_release(v41);

    v43 = *&v6[v39];
  }

  else
  {
    v43 = 0;
  }

  *&v6[v39] = 0;

  v44 = *&v6[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_externalPasswordCredentialForSelectedLoginChoice];
  *&v6[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_externalPasswordCredentialForSelectedLoginChoice] = 0;

  sub_21CB051FC();
  sub_21CB81614();
  swift_unknownObjectRelease();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_21C6EA794(v17, &qword_27CDF85D0, &qword_21CBC9430);
    v45 = v76;
    if (!v76)
    {
      return;
    }
  }

  else
  {
    (*(v19 + 32))(v23, v17, v18);
    sub_21CB05380();
    (*(v19 + 8))(v23, v18);
    v45 = v76;
    if (!v76)
    {
      return;
    }
  }

  aBlock[0] = v45;
  v46 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
  sub_21C6E8F4C(0, &qword_27CDED2A0, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v47 = v79;
    v48 = *MEMORY[0x277CBA8B0];
    if ([v79 safari:*MEMORY[0x277CBA8B0] matchesErrorDomain:102 andCode:?])
    {
      v49 = [v6 delegate];
      if (v49)
      {
        v50 = v49;
        v51 = sub_21CB80B04();
        [v50 requestPaneViewController:v6 dismissWithCredential:0 error:v51];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_48;
    }

    if ([v47 safari:v48 matchesErrorDomain:1 andCode:?])
    {
      if (qword_27CDEA3F8 != -1)
      {
        swift_once();
      }

      v52 = sub_21CB81C84();
      __swift_project_value_buffer(v52, qword_27CE18598);
      v53 = sub_21CB81C64();
      v54 = sub_21CB85B14();
      if (!os_log_type_enabled(v53, v54))
      {
        goto LABEL_45;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_21C6E5000, v53, v54, "Did not receive any external password credential because user canceled", v55, 2u);
    }

    else
    {
      if (qword_27CDEA3F8 != -1)
      {
        swift_once();
      }

      v60 = sub_21CB81C84();
      __swift_project_value_buffer(v60, qword_27CE18598);
      v61 = v47;
      v53 = sub_21CB81C64();
      v62 = sub_21CB85AF4();

      if (!os_log_type_enabled(v53, v62))
      {
        goto LABEL_45;
      }

      v55 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v55 = 136446210;
      v64 = [v61 safari_privacyPreservingDescription];
      v65 = sub_21CB855C4();
      v67 = v66;

      v68 = sub_21C98E004(v65, v67, aBlock);

      *(v55 + 4) = v68;
      _os_log_impl(&dword_21C6E5000, v53, v62, "Did not receive any external password credential because of error: %{public}s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x21CF16D90](v63, -1, -1);
    }

    MEMORY[0x21CF16D90](v55, -1, -1);
LABEL_45:

    if ([*&v6[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext] isConditionalRegistrationRequest])
    {
      v69 = [v6 delegate];
      if (v69)
      {
        v70 = v69;
        v71 = sub_21CB80B04();
        [v70 requestPaneViewController:v6 dismissWithCredential:0 error:v71];

        swift_unknownObjectRelease();
      }
    }

LABEL_48:
  }
}

uint64_t PMCredentialPickerViewController.credentialAuthenticationViewController(_:didFinishWith:error:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  v10 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController);
  if (v10)
  {
    v15[4] = a4;
    v15[5] = a5;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_21C6ECBD4;
    v15[3] = &block_descriptor_30;
    v11 = _Block_copy(v15);
    v12 = v10;

    [v12 dismissViewControllerAnimated:1 completion:v11];
    _Block_release(v11);

    v13 = *(v5 + v9);
  }

  else
  {
    v13 = 0;
  }

  *(v5 + v9) = 0;

  return sub_21CB0E030(a2, a3, a4);
}

uint64_t sub_21CB0E030(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3;
  v55[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v55[0] = 0;
    v7 = a1;
    if ([v7 _validateWithError_])
    {
      v51 = v3;
      v52 = a3;
      v8 = v55[0];

      v9 = v7;
      v53 = [v9 relyingParty];
      if (!v53)
      {
        sub_21CB855C4();
        v53 = sub_21CB85584();
      }

      v10 = [v9 authenticatorData];
      v54 = sub_21CB80C84();
      v49 = v11;

      v12 = [v9 signature];
      v48 = sub_21CB80C84();
      v50 = v13;

      v14 = [v9 userHandle];
      v15 = sub_21CB80C84();
      v46 = v16;
      v47 = v15;

      v17 = [v9 credentialID];
      v18 = sub_21CB80C84();
      v20 = v19;

      v21 = [v9 coreExtensions];
      v22 = *MEMORY[0x277CF0408];
      v23 = objc_allocWithZone(MEMORY[0x277CF0438]);
      v24 = sub_21CB80C64();
      v25 = sub_21CB80C64();
      v26 = sub_21CB80C64();
      v27 = sub_21CB80C64();
      LOBYTE(v45) = 1;
      v28 = [v23 initWithRelyingPartyIdentifier:v53 authenticatorData:v24 signature:v25 userHandle:v26 rawClientDataJSON:0 credentialID:v27 extensions:v21 attachment:v22 isExternal:v45];

      sub_21C7A34C0(v18, v20);
      sub_21C7A34C0(v47, v46);

      sub_21C7A34C0(v48, v50);
      sub_21C7A34C0(v54, v49);

      v29 = [v51 delegate];
      if (v29)
      {
        [v29 requestPaneViewController:v51 dismissWithCredential:v28 error:0];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      a3 = v52;
      goto LABEL_19;
    }

    v30 = v55[0];
    v31 = sub_21CB80B14();

    swift_willThrow();
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v32 = sub_21CB81C84();
    __swift_project_value_buffer(v32, qword_27CE18598);
    v33 = v31;
    v34 = sub_21CB81C64();
    v35 = sub_21CB85AF4();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138543362;
      v38 = v31;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_21C6E5000, v34, v35, "Returned credential failed validation: %{public}@", v36, 0xCu);
      sub_21C6EA794(v37, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v37, -1, -1);
      MEMORY[0x21CF16D90](v36, -1, -1);
    }

    else
    {
    }
  }

  v40 = [v4 delegate];
  if (v40)
  {
    v41 = v40;
    if (a2)
    {
      v42 = sub_21CB80B04();
    }

    else
    {
      v42 = 0;
    }

    [v41 requestPaneViewController:v4 dismissWithCredential:0 error:v42];

    swift_unknownObjectRelease();
  }

LABEL_19:
  result = a3();
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void PMCredentialPickerViewController.credentialAuthenticationViewController(_:didFinishWith:error:completion:)(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF470, &qword_21CBC94D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v75 = &v70 - v13;
  v14 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController;
  v15 = *&v5[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialAuthenticationViewController];
  if (v15)
  {
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_33;
    v16 = _Block_copy(aBlock);
    v17 = v15;

    [v17 dismissViewControllerAnimated:1 completion:v16];
    _Block_release(v16);

    v18 = *&v6[v14];
  }

  else
  {
    v18 = 0;
  }

  *&v6[v14] = 0;

  if (a2)
  {
    aBlock[0] = 0;
    v19 = a2;
    if ([v19 _validateWithError_])
    {
      v73 = a5;
      v20 = aBlock[0];

      v21 = v19;
      v22 = [v21 relyingParty];
      if (!v22)
      {
        sub_21CB855C4();
        v23 = sub_21CB85584();

        v22 = v23;
      }

      v71 = v22;
      v74 = a4;
      v24 = [v21 attestationObject];
      v25 = sub_21CB80C84();
      v27 = v26;

      v28 = [v21 credentialID];
      v29 = sub_21CB80C84();
      v31 = v30;

      v32 = [objc_opt_self() _defaultTransports];
      if (!v32)
      {
        sub_21CB85824();
        v32 = sub_21CB85814();
      }

      v72 = v21;
      v33 = [v21 coreExtensions];
      v34 = *MEMORY[0x277CF0408];
      v35 = objc_allocWithZone(MEMORY[0x277CF0448]);
      v36 = sub_21CB80C64();
      v37 = v25;
      v38 = sub_21CB80C64();
      LOBYTE(v69) = 1;
      v68 = v34;
      v39 = v71;
      v40 = [v35 initWithRelyingPartyIdentifier:v71 attestationObject:v36 rawClientDataJSON:0 credentialID:v38 transports:v32 extensions:v33 attachment:v68 isExternal:v69];

      sub_21C7A34C0(v29, v31);
      sub_21C7A34C0(v37, v27);

      v41 = v70;
      sub_21CB051FC();
      sub_21CB81BE4();
      if (swift_dynamicCastClass())
      {
        v42 = sub_21CB81BD4();
        sub_21CB81A74();

        v43 = sub_21CB81BD4();
        v44 = sub_21CB81A54();

        if (v44)
        {
          sub_21CB81A34();
        }

        v61 = sub_21CB81BD4();
        sub_21CB81B24();

        v62 = objc_allocWithZone(sub_21CB81BA4());
        v63 = v40;
        v64 = sub_21CB81B94();
        v65 = [v41 delegate];
        if (v65)
        {
          v66 = v65;
          v67 = v64;
          [v66 requestPaneViewController:v41 dismissWithCredential:v67 error:0];

          v65 = swift_unknownObjectRelease();
        }

        v74(v65);

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v59 = [v41 delegate];
        if (v59)
        {
          [v59 requestPaneViewController:v41 dismissWithCredential:v40 error:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v74(v60);
      }

      goto LABEL_24;
    }

    v45 = aBlock[0];
    v46 = sub_21CB80B14();

    swift_willThrow();
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v47 = sub_21CB81C84();
    __swift_project_value_buffer(v47, qword_27CE18598);
    v48 = v46;
    v49 = sub_21CB81C64();
    v50 = sub_21CB85AF4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138543362;
      v53 = v46;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 4) = v54;
      *v52 = v54;
      _os_log_impl(&dword_21C6E5000, v49, v50, "Returned credential failed validation: %{public}@", v51, 0xCu);
      sub_21C6EA794(v52, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v52, -1, -1);
      MEMORY[0x21CF16D90](v51, -1, -1);
    }

    else
    {
    }
  }

  v55 = [v6 delegate];
  if (v55)
  {
    v56 = v55;
    if (a3)
    {
      v57 = sub_21CB80B04();
    }

    else
    {
      v57 = 0;
    }

    [v56 requestPaneViewController:v6 dismissWithCredential:0 error:v57];

    v55 = swift_unknownObjectRelease();
  }

  (a4)(v55);
LABEL_24:
  v58 = *MEMORY[0x277D85DE8];
}

void sub_21CB0EC48(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock, void (*a7)(void *, void *, id, void *))
{
  v12 = _Block_copy(aBlock);
  _Block_copy(v12);
  v13 = a3;
  v14 = a4;
  v15 = a1;
  v16 = a5;
  a7(a4, a5, v15, v12);
  _Block_release(v12);
  _Block_release(v12);
}

void PMCredentialPickerViewController.credentialListViewController(_:didFinishWith:completion:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v9 = sub_21CB80DD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v46 = a4;
    v14 = *&v4[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_presentationContext];
    v15 = a2;
    v16 = [v14 serviceName];
    if (v16)
    {
      v17 = v16;
      sub_21CB051FC();
      v19 = v18;
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = [v20 externalCredentialIdentity];
        if (v21)
        {
          v22 = v21;
          v42 = v10;
          v44 = v19;
          v45 = a3;
          v23 = [v15 user];
          if (!v23)
          {
            sub_21CB855C4();
            v23 = sub_21CB85584();
          }

          v24 = [v15 password];
          if (!v24)
          {
            sub_21CB855C4();
            v24 = sub_21CB85584();
          }

          v25 = v23;
          sub_21CB80DC4();
          v43 = v22;
          v26 = [v22 owningExtensionState];
          if (v26 && (v27 = v26, v28 = [v26 providerBundleID], v27, v28))
          {
            sub_21CB855C4();
            v30 = v29;

            v31 = sub_21CB80D24();
            if (v30)
            {
              v32 = sub_21CB85584();

LABEL_17:
              v33 = [objc_allocWithZone(MEMORY[0x277CF0428]) initWithUser:v25 password:v24 site:v17 creationDate:v31 externalProviderBundleIdentifier:v32];

              swift_unknownObjectRelease();
              (*(v42 + 8))(v13, v9);
              v34 = 0;
              a3 = v45;
              goto LABEL_20;
            }
          }

          else
          {
            v31 = sub_21CB80D24();
          }

          v32 = 0;
          goto LABEL_17;
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  v34 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CF0400] code:2 userInfo:0];
  v33 = 0;
LABEL_20:
  v35 = [v5 delegate];
  if (v35)
  {
    v36 = v35;
    v37 = v33;
    if (v34)
    {
      v38 = v34;
      v39 = sub_21CB80B04();
    }

    else
    {
      v39 = 0;
    }

    [v36 requestPaneViewController:v5 dismissWithCredential:v33 error:v39];

    swift_unknownObjectRelease();
  }

  v40 = *&v5[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController];
  *&v5[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController] = 0;

  a3();
}

void PMCredentialPickerViewController.credentialListViewController(_:didFinishWith:completion:)(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController];
  *&v3[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_credentialListViewController] = 0;

  if (a2)
  {
    v11 = a2;
    sub_21CB0E030(a2, 0, a3);
  }

  else
  {
    v7 = [v3 delegate];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CF0400] code:2 userInfo:0];
      v10 = sub_21CB80B04();

      [v8 requestPaneViewController:v3 dismissWithCredential:0 error:v10];
      v7 = swift_unknownObjectRelease();
    }

    (a3)(v7);
  }
}

void sub_21CB0F2EC(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(void *, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(a4, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

Swift::Void __swiftcall PMCredentialPickerViewController.performConditionalRegistrationIfPossible()()
{
  sub_21CB051FC();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    if ([v1 isExternal] && (objc_msgSend(v2, sel_isRegistrationRequest) & 1) != 0)
    {
      sub_21CB09D74(1);
LABEL_9:

      swift_unknownObjectRelease();
      return;
    }

    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v3 = sub_21CB81C84();
    __swift_project_value_buffer(v3, qword_27CE18598);
    swift_unknownObjectRetain();
    oslog = sub_21CB81C64();
    v4 = sub_21CB85AF4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138477827;
      *(v5 + 4) = v2;
      *v6 = v2;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_21C6E5000, oslog, v4, "Tried to perform conditional registration with unexpected passkey login choice: %{private}@", v5, 0xCu);
      sub_21C6EA794(v6, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v6, -1, -1);
      MEMORY[0x21CF16D90](v5, -1, -1);

      goto LABEL_9;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v7 = sub_21CB81C84();
    __swift_project_value_buffer(v7, qword_27CE18598);
    v8 = v0;
    oslog = sub_21CB81C64();
    v9 = sub_21CB85AF4();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      sub_21CB051FC();
      swift_getObjectType();
      swift_unknownObjectRelease();
      v12 = sub_21CB86554();
      v14 = sub_21C98E004(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21C6E5000, oslog, v9, "Tried to perform conditional registration with unexpected login choice: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x21CF16D90](v11, -1, -1);
      MEMORY[0x21CF16D90](v10, -1, -1);
    }
  }
}

void sub_21CB0F750(void *a1, uint64_t a2)
{
  v3 = [a1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 pushViewController:a2 animated:1];
  }
}

void sub_21CB0F878(void *a1, id a2)
{
  v4 = [a2 navigationController];
  v5 = [v4 topViewController];

  if (v5 && (sub_21C6E8F4C(0, &unk_27CDF8A20, 0x277D75D28), v6 = a1, v7 = sub_21CB85DD4(), v5, v6, (v7 & 1) != 0))
  {
    v8 = [a2 navigationController];
    if (!v8)
    {
      return;
    }

    oslog = v8;
  }

  else
  {
    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v9 = sub_21CB81C84();
    __swift_project_value_buffer(v9, qword_27CE18598);
    oslog = sub_21CB81C64();
    v10 = sub_21CB85AF4();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21C6E5000, oslog, v10, "Authentication provider tried to pop view controller but it was not the top view controller in the navigation stack", v11, 2u);
      MEMORY[0x21CF16D90](v11, -1, -1);
    }
  }
}

void sub_21CB0FAE0(uint64_t a1, uint64_t a2, uint64_t a3, __CFUserNotification *a4, uint64_t a5)
{
  v38 = a4;
  v39 = a5;
  v37 = a2;
  v46[4] = *MEMORY[0x277D85DE8];
  v8 = sub_21CB853D4();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21CB85404();
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  error = 0;
  v16 = *MEMORY[0x277CBECE8];
  v17 = sub_21CB85464();
  v18 = CFUserNotificationCreate(v16, 0.0, 0, &error, v17);

  if (v18)
  {
    if (*(v5 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_alertQueue))
    {
      v19 = swift_allocObject();
      v21 = v37;
      v20 = v38;
      v19[2] = v18;
      v19[3] = v21;
      v19[4] = a3;
      v19[5] = v20;
      v19[6] = v39;
      aBlock[4] = sub_21CB17058;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21C6ECBD4;
      aBlock[3] = &block_descriptor_128;
      v22 = _Block_copy(aBlock);
      v38 = v18;

      sub_21CB853E4();
      v46[0] = MEMORY[0x277D84F90];
      sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
      sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
      sub_21CB85F14();
      MEMORY[0x21CF15800](0, v15, v11, v22);
      _Block_release(v22);

      (*(v41 + 8))(v11, v8);
      (*(v40 + 8))(v15, v12);
    }

    else
    {
    }

LABEL_26:
    v36 = *MEMORY[0x277D85DE8];
    return;
  }

  if (*MEMORY[0x277CBF188])
  {
    v46[0] = sub_21CB855C4();
    v46[1] = v23;
    sub_21CB86034();
    if (*(a1 + 16) && (v24 = sub_21CB10D50(aBlock), (v25 & 1) != 0))
    {
      sub_21C7A3394(*(a1 + 56) + 32 * v24, v46);
      sub_21C8E1980(aBlock);
      v26 = swift_dynamicCast();
      if (v26)
      {
        v27 = v42;
      }

      else
      {
        v27 = 0;
      }

      if (v26)
      {
        v28 = v43;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      sub_21C8E1980(aBlock);
      v27 = 0;
      v28 = 0;
    }

    if (qword_27CDEA3F8 != -1)
    {
      swift_once();
    }

    v29 = sub_21CB81C84();
    __swift_project_value_buffer(v29, qword_27CE18598);

    v30 = sub_21CB81C64();
    v31 = sub_21CB85AF4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v46[0] = v33;
      *v32 = 136315394;
      if (v28)
      {
        v34 = v27;
      }

      else
      {
        v34 = 0x64616568206C696ELL;
      }

      if (!v28)
      {
        v28 = 0xEA00000000007265;
      }

      v35 = sub_21C98E004(v34, v28, v46);

      *(v32 + 4) = v35;
      *(v32 + 12) = 1024;
      swift_beginAccess();
      *(v32 + 14) = error;
      _os_log_impl(&dword_21C6E5000, v30, v31, "Showing alert (%s) failed, user notification is nil!. Error: %d", v32, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x21CF16D90](v33, -1, -1);
      MEMORY[0x21CF16D90](v32, -1, -1);
    }

    else
    {
    }

    goto LABEL_26;
  }

  __break(1u);
}

void PMCredentialPickerViewController.presentationAnchor.getter()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v1 window];

  if (!v3)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_21CB102B4(__CFUserNotification *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  CFUserNotificationReceiveResponse(a1, 0.0, v8);
  if (AKUserNotificationResponseAction())
  {
    result = a4();
  }

  else
  {
    result = a2();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21CB10350()
{
  v1 = v0;
  v2 = sub_21CB853D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85404();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0[OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_isKeychainSyncEnabled];
  v13 = [objc_opt_self() sharedMonitor];
  v14 = [v13 isKeychainSyncEnabled];

  if (v12 != v14)
  {
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v20 = sub_21CB85CF4();
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    aBlock[4] = sub_21CB16EB4;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_76;
    v16 = _Block_copy(aBlock);
    v17 = v1;

    sub_21CB853E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21CB13C94(&qword_27CDEAF48, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    v19 = v7;
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
    sub_21CB85F14();
    v18 = v20;
    MEMORY[0x21CF15800](0, v11, v6, v16);
    _Block_release(v16);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v19);
  }
}

id sub_21CB10690(void *a1, SEL *a2)
{
  result = [a1 delegate];
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21CB107E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21CB10860(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_21CB81DC4();
}

unint64_t sub_21CB10910(uint64_t a1)
{
  v3 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8960, &qword_21CBC9678);
  v4 = sub_21CB85484();
  return sub_21CB10EE8(a1, v4);
}

unint64_t sub_21CB1098C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_21CB86474();

  return sub_21CB10FD0(a1, v4);
}

unint64_t sub_21CB109D0(char a1)
{
  v3 = *(v1 + 40);
  sub_21CB86484();
  MEMORY[0x21CF15F90](a1 & 1);
  v4 = sub_21CB864D4();

  return sub_21CB1103C(a1 & 1, v4);
}

unint64_t sub_21CB10A54(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_21CB85C44();
  sub_21CB13C94(&qword_27CDF8950, MEMORY[0x277D49978]);
  v5 = sub_21CB85484();

  return sub_21CB110AC(a1, v5);
}

unint64_t sub_21CB10AEC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21CB86484();
  type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  sub_21CB13C94(&qword_27CDEFF30, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
  sub_21CB85494();
  v4 = *(a1 + *(type metadata accessor for PMTOTPMigrationModel.TOTPCode(0) + 20));
  sub_21CB864A4();
  if (v4)
  {
    v5 = v4;
    sub_21CB85DE4();
  }

  v6 = sub_21CB864D4();

  return sub_21CB1126C(a1, v6);
}

unint64_t sub_21CB10BE4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21CB86484();
  sub_21C7CECE4();
  v4 = sub_21CB864D4();

  return sub_21CB11960(a1, v4);
}

unint64_t sub_21CB10C54(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21CB86484();
  MEMORY[0x21CF15F90](a1);
  v4 = sub_21CB864D4();

  return sub_21CB10FD0(a1, v4);
}

unint64_t sub_21CB10CC0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21CB855C4();
  sub_21CB86484();
  sub_21CB854C4();
  v4 = sub_21CB864D4();

  return sub_21CB1222C(a1, v4);
}

unint64_t sub_21CB10D50(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_21CB86014();

  return sub_21CB11E50(a1, v5);
}

unint64_t sub_21CB10D94(unint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_21CB86484();
  sub_21C9DC744();
  v4 = sub_21CB864D4();

  return sub_21CB11F18(a1, v4);
}

unint64_t sub_21CB10E00(unsigned int a1)
{
  v3 = MEMORY[0x21CF15F60](*(v1 + 40), a1, 4);

  return sub_21CB121C0(a1, v3);
}

unint64_t sub_21CB10E48(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(v3 + 40);
  sub_21CB86484();
  sub_21CB854C4();
  v8 = 0.0;
  if (a3 != 0.0)
  {
    v8 = a3;
  }

  MEMORY[0x21CF15FC0](*&v8);
  v9 = sub_21CB864D4();

  return sub_21CB12330(a1, a2, v9, a3);
}

unint64_t sub_21CB10EE8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8960, &qword_21CBC9678);
      v7 = *(*(v2 + 48) + 8 * v4);
      if (sub_21CB85574())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21CB10FD0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21CB1103C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21CB110AC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_21CB13C94(&qword_27CDEAC48, MEMORY[0x277D49978]);
      v16 = sub_21CB85574();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_21CB1126C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70[3] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v11 = (&v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v3 + 64;
  v13 = -1 << *(v3 + 32);
  v14 = a2 & ~v13;
  if ((*(v3 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v58 = v8;
    v15 = ~v13;
    v16 = *a1;
    v17 = *(a1 + 8);
    if (*a1)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17 == 0xC000000000000000;
    }

    v19 = !v18;
    v67 = v19;
    v68 = *(v9 + 72);
    v20 = v17 >> 62;
    v65 = v16;
    v21 = HIDWORD(v16) - v16;
    v22 = __OFSUB__(HIDWORD(v16), v16);
    v64 = v22;
    v62 = v17;
    v63 = v21;
    v66 = BYTE6(v17);
    v59 = v3;
    v60 = v3 + 64;
    v61 = v15;
    while (1)
    {
      sub_21CB171C4(*(v3 + 48) + v68 * v14, v11, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v23 = *v11;
      v24 = v11[1];
      v25 = v24 >> 62;
      if (v24 >> 62 == 3)
      {
        break;
      }

      if (v25 > 1)
      {
        if (v25 != 2)
        {
          goto LABEL_34;
        }

        v31 = *(v23 + 16);
        v30 = *(v23 + 24);
        v32 = __OFSUB__(v30, v31);
        v29 = v30 - v31;
        if (v32)
        {
          goto LABEL_121;
        }

        if (v20 > 1)
        {
          goto LABEL_35;
        }
      }

      else if (v25)
      {
        LODWORD(v29) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_122;
        }

        v29 = v29;
        if (v20 > 1)
        {
LABEL_35:
          if (v20 != 2)
          {
            if (v29)
            {
              goto LABEL_110;
            }

            goto LABEL_61;
          }

          v35 = *(v65 + 16);
          v34 = *(v65 + 24);
          v32 = __OFSUB__(v34, v35);
          v33 = v34 - v35;
          if (v32)
          {
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
          }

          goto LABEL_37;
        }
      }

      else
      {
        v29 = BYTE6(v24);
        if (v20 > 1)
        {
          goto LABEL_35;
        }
      }

LABEL_31:
      v33 = v66;
      if (v20)
      {
        v33 = v63;
        if (v64)
        {
          goto LABEL_120;
        }
      }

LABEL_37:
      if (v29 != v33)
      {
        goto LABEL_110;
      }

      if (v29 >= 1)
      {
        if (v25 > 1)
        {
          if (v25 != 2)
          {
            memset(v70, 0, 14);
LABEL_60:
            sub_21CA8FA10(v70, v65, v62, &v69);
            if (!v69)
            {
              goto LABEL_110;
            }

            goto LABEL_61;
          }

          v37 = *(v23 + 16);
          v36 = *(v23 + 24);
          v38 = sub_21CB808C4();
          if (v38)
          {
            v39 = sub_21CB808F4();
            if (__OFSUB__(v37, v39))
            {
              goto LABEL_125;
            }

            v38 += v37 - v39;
          }

          if (__OFSUB__(v36, v37))
          {
            goto LABEL_124;
          }
        }

        else
        {
          if (!v25)
          {
            v70[0] = *v11;
            LOWORD(v70[1]) = v24;
            BYTE2(v70[1]) = BYTE2(v24);
            BYTE3(v70[1]) = BYTE3(v24);
            BYTE4(v70[1]) = BYTE4(v24);
            BYTE5(v70[1]) = BYTE5(v24);
            goto LABEL_60;
          }

          v40 = v23;
          if (v23 >> 32 < v23)
          {
            goto LABEL_123;
          }

          v38 = sub_21CB808C4();
          if (v38)
          {
            v41 = sub_21CB808F4();
            if (__OFSUB__(v40, v41))
            {
              goto LABEL_126;
            }

            v38 += v40 - v41;
          }
        }

        sub_21CB808E4();
        sub_21CA8FA10(v38, v65, v62, v70);
        v3 = v59;
        v12 = v60;
        v15 = v61;
        if ((v70[0] & 1) == 0)
        {
          goto LABEL_110;
        }
      }

LABEL_61:
      if ((v11[2] != *(a1 + 16) || v11[3] != *(a1 + 24)) && (sub_21CB86344() & 1) == 0 || (v11[4] != *(a1 + 32) || v11[5] != *(a1 + 40)) && (sub_21CB86344() & 1) == 0)
      {
        goto LABEL_110;
      }

      v42 = v11[6];
      v43 = *(a1 + 48);
      if (*(a1 + 56) == 1)
      {
        if (v43 <= 1)
        {
          if (v43)
          {
            if (v42 != 1)
            {
              goto LABEL_110;
            }
          }

          else if (v42)
          {
            goto LABEL_110;
          }
        }

        else if (v43 == 2)
        {
          if (v42 != 2)
          {
            goto LABEL_110;
          }
        }

        else if (v43 == 3)
        {
          if (v42 != 3)
          {
            goto LABEL_110;
          }
        }

        else if (v42 != 4)
        {
          goto LABEL_110;
        }
      }

      else if (v42 != v43)
      {
        goto LABEL_110;
      }

      v44 = v11[8];
      v45 = *(a1 + 64);
      if (*(a1 + 72) == 1)
      {
        if (v45)
        {
          if (v45 == 1)
          {
            if (v44 != 1)
            {
              goto LABEL_110;
            }
          }

          else if (v44 != 2)
          {
            goto LABEL_110;
          }
        }

        else if (v44)
        {
          goto LABEL_110;
        }
      }

      else if (v44 != v45)
      {
        goto LABEL_110;
      }

      v46 = v11[10];
      v47 = *(a1 + 80);
      if (*(a1 + 88) == 1)
      {
        if (v47)
        {
          if (v47 == 1)
          {
            if (v46 != 1)
            {
              goto LABEL_110;
            }
          }

          else if (v46 != 2)
          {
            goto LABEL_110;
          }
        }

        else if (v46)
        {
          goto LABEL_110;
        }
      }

      else if (v46 != v47)
      {
        goto LABEL_110;
      }

      if (v11[12] != *(a1 + 96))
      {
        goto LABEL_110;
      }

      v48 = *(type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0) + 44);
      sub_21CB811C4();
      sub_21CB13C94(&unk_27CDF8A70, MEMORY[0x277D216C8]);
      if ((sub_21CB85574() & 1) == 0)
      {
        v15 = v61;
LABEL_110:
        sub_21CB1722C(v11, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        goto LABEL_111;
      }

      v49 = *(v58 + 20);
      v50 = *(v11 + v49);
      v51 = *(a1 + v49);
      if (v50)
      {
        if (v51)
        {
          sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
          v52 = v51;
          v53 = v50;
          v54 = sub_21CB85DD4();
          sub_21CB1722C(v11, type metadata accessor for PMTOTPMigrationModel.TOTPCode);

          v3 = v59;
          v12 = v60;
          v15 = v61;
          if (v54)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
        }

        sub_21CB1722C(v11, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      }

      else
      {
        v55 = v51;
        sub_21CB1722C(v11, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
        if (!v51)
        {
          goto LABEL_117;
        }
      }

      v12 = v60;
      v15 = v61;
LABEL_111:
      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_117;
      }
    }

    if (v23)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24 == 0xC000000000000000;
    }

    v28 = !v26 || v20 < 3;
    if (((v28 | v67) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_34:
    v29 = 0;
    if (v20 > 1)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

LABEL_117:
  v56 = *MEMORY[0x277D85DE8];
  return v14;
}

unint64_t sub_21CB11960(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v4 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3C8, &unk_21CBB0010);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for PMAccount.UniqueID(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v36 - v20);
  MEMORY[0x28223BE20](v19);
  v24 = &v36 - v23;
  v43 = v2;
  v25 = -1 << *(v2 + 32);
  v26 = a2 & ~v25;
  v41 = v2 + 64;
  if ((*(v2 + 64 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v39 = v10;
    v40 = ~v25;
    v27 = *(v22 + 72);
    do
    {
      sub_21CB171C4(*(v43 + 48) + v27 * v26, v24, type metadata accessor for PMAccount.UniqueID);
      v30 = *(v10 + 48);
      sub_21CB171C4(v24, v13, type metadata accessor for PMAccount.UniqueID);
      sub_21CB171C4(v42, &v13[v30], type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CB171C4(v13, v18, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v31 = v38;
          sub_21CB16FC0(&v13[v30], v38, type metadata accessor for PMAccount.SIWAUniqueID);
          v32 = sub_21C7D1550(v18, v31);
          sub_21CB1722C(v31, type metadata accessor for PMAccount.SIWAUniqueID);
          sub_21CB1722C(v24, type metadata accessor for PMAccount.UniqueID);
          sub_21CB1722C(v18, type metadata accessor for PMAccount.SIWAUniqueID);
          if (v32)
          {
            goto LABEL_15;
          }

LABEL_12:
          sub_21CB1722C(v13, type metadata accessor for PMAccount.UniqueID);
          v10 = v39;
          goto LABEL_5;
        }

        sub_21CB1722C(v24, type metadata accessor for PMAccount.UniqueID);
        v28 = type metadata accessor for PMAccount.SIWAUniqueID;
        v29 = v18;
      }

      else
      {
        sub_21CB171C4(v13, v21, type metadata accessor for PMAccount.UniqueID);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v33 = v37;
          sub_21CB16FC0(&v13[v30], v37, type metadata accessor for PMAccount.CombinedUniqueID);
          v34 = sub_21C7D1A58(v21, v33);
          sub_21CB1722C(v33, type metadata accessor for PMAccount.CombinedUniqueID);
          sub_21CB1722C(v24, type metadata accessor for PMAccount.UniqueID);
          sub_21CB1722C(v21, type metadata accessor for PMAccount.CombinedUniqueID);
          if (v34)
          {
LABEL_15:
            sub_21CB1722C(v13, type metadata accessor for PMAccount.UniqueID);
            return v26;
          }

          goto LABEL_12;
        }

        sub_21CB1722C(v24, type metadata accessor for PMAccount.UniqueID);
        v28 = type metadata accessor for PMAccount.CombinedUniqueID;
        v29 = v21;
      }

      sub_21CB1722C(v29, v28);
      sub_21C6EA794(v13, &qword_27CDEB3C8, &unk_21CBB0010);
LABEL_5:
      v26 = (v26 + 1) & v40;
    }

    while (((*(v41 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
  }

  return v26;
}

unint64_t sub_21CB11E50(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21C8D7AA4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CF15B20](v9, a1);
      sub_21C8E1980(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21CB11F18(unint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = *a1;
    v8 = a1[1];
    do
    {
      v9 = (*(v2 + 48) + 112 * v4);
      v11 = v9[1];
      v10 = v9[2];
      v24 = *v9;
      v25 = v11;
      v26 = v10;
      v12 = v9[6];
      v14 = v9[3];
      v13 = v9[4];
      *v29 = v9[5];
      *&v29[16] = v12;
      v27 = v14;
      v28 = v13;
      if (*(&v24 + 1))
      {
        if (!v8 || v24 != __PAIR128__(v8, v7) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v8)
      {
        goto LABEL_4;
      }

      v15 = a1[3];
      if (*(&v25 + 1))
      {
        if (!v15 || v25 != *(a1 + 1) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v15)
      {
        goto LABEL_4;
      }

      if (v26 != *(a1 + 2) && (sub_21CB86344() & 1) == 0 || v27 != *(a1 + 3) && (sub_21CB86344() & 1) == 0 || v28 != *(a1 + 4) && (sub_21CB86344() & 1) == 0 || v29[0] != (a1[10] & 1) || __PAIR64__(v29[2], v29[1]) != __PAIR64__(*(a1 + 82), *(a1 + 81)))
      {
        goto LABEL_4;
      }

      v16 = a1[12];
      if (*&v29[16])
      {
        if (!v16 || *&v29[8] != *(a1 + 11) && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v16)
      {
        goto LABEL_4;
      }

      v17 = *&v29[24];
      v18 = a1[13];
      if (*&v29[24])
      {
        if (v18)
        {
          sub_21C6E8F4C(0, &qword_27CDF8A90, 0x277CBDA58);
          sub_21C7A33F0(&v24, v23);
          v22 = v18;
          v19 = v17;
          v20 = sub_21CB85DD4();
          sub_21C7A344C(&v24);

          if (v20)
          {
            return v4;
          }
        }
      }

      else if (!v18)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21CB121C0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21CB1222C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21CB855C4();
      v9 = v8;
      if (v7 == sub_21CB855C4() && v9 == v10)
      {
        break;
      }

      v12 = sub_21CB86344();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_21CB12330(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a3 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_21CB86344()) && v14 == a4)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_21CB12414(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEF0, &qword_21CBC9670);
  v3 = sub_21CB86224();
  v4 = *(a1 + 32);
  v19 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_21CB109D0(v4);
  v7 = v19;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    v18 = v5;
    return v3;
  }

  v9 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v7;
    *(v10 + 16) = v5;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 4;
    v4 = *(v9 - 24);
    v20 = *(v9 - 1);
    v15 = *v9;

    v16 = v5;
    result = sub_21CB109D0(v4);
    v9 = v14;
    v5 = v15;
    v7 = v20;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21CB12570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF60, &unk_21CBAE000);
  v3 = sub_21CB86224();
  v4 = *(a1 + 32);
  v17 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_21CB109D0(v4);
  v7 = v17;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v7;
    *(v10 + 16) = v5;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 4;
    v4 = *(v9 - 24);
    v18 = *(v9 - 1);
    v15 = *v9;

    result = sub_21CB109D0(v4);
    v9 = v14;
    v5 = v15;
    v7 = v18;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21CB126C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8980, &qword_21CBADE78);
    v3 = sub_21CB86224();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21C731960(v5, v6, sub_21C7319E4);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CB127E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8A60, &qword_21CBADE58);
    v3 = sub_21CB86224();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_21C731960(v5, v6, sub_21C7319E4);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CB12900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8A10, &qword_21CBC9718);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFED0, &qword_21CBC9720);
    v8 = sub_21CB86224();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21C6EDBAC(v10, v6, &unk_27CDF8A10, &qword_21CBC9718);
      result = sub_21CB10BE4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for PMAccount.UniqueID(0);
      result = sub_21CB16FC0(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for PMAccount.UniqueID);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CB12B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89B8, &unk_21CBC96B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89C0, &qword_21CBADDB8);
    v8 = sub_21CB86224();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21C6EDBAC(v10, v6, &qword_27CDF89B8, &unk_21CBC96B0);
      result = sub_21CB10A54(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_21CB85C44();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CB12CF0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF38, &qword_21CBADE70);
  v3 = sub_21CB86224();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_21CB10C54(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_21CB10C54(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21CB12DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89C8, &unk_21CBC96C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89D0, &unk_21CBADDC0);
    v8 = sub_21CB86224();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_21C6EDBAC(v10, v6, &qword_27CDF89C8, &unk_21CBC96C0);
      result = sub_21CB10A54(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_21CB85C44();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CB12FF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC8, &qword_21CBADDB0);
    v3 = sub_21CB86224();
    v4 = a1 + 32;

    while (1)
    {
      sub_21C6EDBAC(v4, v13, &qword_27CDF89B0, &unk_21CBBC208);
      result = sub_21CB10D50(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_21C731A9C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CB13134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFF40, &qword_21CBADF70);
    v3 = sub_21CB86224();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 64);
      v7 = *(v4 + 96);
      v23 = *(v4 + 80);
      v24 = v7;
      v8 = *(v4 + 112);
      v25 = v8;
      v9 = *(v4 + 16);
      v22[0] = *v4;
      v10 = *(v4 + 32);
      v11 = *(v4 + 48);
      v22[1] = v9;
      v22[2] = v10;
      v22[3] = v11;
      v22[4] = v6;
      v30 = v6;
      v31 = v23;
      v32 = v7;
      v26 = v22[0];
      v27 = v9;
      v28 = v10;
      v29 = v11;
      sub_21C6EDBAC(v22, v21, &qword_27CDF8AA0, &qword_21CBC9770);
      result = sub_21CB10D94(&v26);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 112 * result);
      v15 = v31;
      v14[4] = v30;
      v14[5] = v15;
      v14[6] = v32;
      v16 = v27;
      *v14 = v26;
      v14[1] = v16;
      v17 = v29;
      v14[2] = v28;
      v14[3] = v17;
      *(v3[7] + 8 * result) = v8;
      v18 = v3[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_11;
      }

      v3[2] = v20;
      if (!i)
      {

        return v3;
      }

      v4 += 120;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CB132B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89D8, &unk_21CBC96D0);
    v3 = sub_21CB86224();

    for (i = (a1 + 49); ; i += 24)
    {
      v5 = *(i - 17);
      v6 = *(i - 9);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_21C731960(v5, v6, sub_21C7319E4);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 2 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_21CB133DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF8A00, &unk_21CBC9708);
  v3 = sub_21CB86224();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_21CB10E00(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_21CB10E00(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21CB13514(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_21CB86224();
    v10 = a1 + 32;

    while (1)
    {
      sub_21C6EDBAC(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_21CB10CC0(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_21C731A9C(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21CB1362C(uint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81674();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a1, v7, v10);
  v13 = (*(v8 + 88))(v12, v7);
  v14 = 0;
  if (v13 != *MEMORY[0x277CBA7D8])
  {
    if (v13 == *MEMORY[0x277CBA7B8] || v13 == *MEMORY[0x277CBA7C8] || (v13 != *MEMORY[0x277CBA7C0] ? (v17 = v13 == *MEMORY[0x277CBA7D0]) : (v17 = 1), v17))
    {
      sub_21CB81014();
      v15 = sub_21CB81004();
      (*(v3 + 8))(v6, v2);
      return v15;
    }

    else
    {
      (*(v8 + 8))(v12, v7, 0);
      return 0;
    }
  }

  return v14;
}

uint64_t sub_21CB138C0()
{
  v1 = v0;
  if (sub_21CB81704())
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow;
  v4 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  if (v4 >> 62)
  {
LABEL_23:
    v5 = sub_21CB85FA4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CF15BD0](v6, v4);
      if (__OFADD__(v7, 1))
      {
LABEL_14:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_23;
      }

      v8 = *(v4 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v7, 1))
      {
        goto LABEL_14;
      }
    }

    v9 = [v8 loginChoiceKind];
    swift_unknownObjectRelease();
    v6 = v7 + 1;
  }

  while (v9 != 6);

  v10 = *(v1 + v3);
  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v13 = *(v1 + v3);
    }

    v11 = sub_21CB85FA4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 1;
  if (v5 != v7)
  {
    v12 = 2;
  }

  if (v11 <= 1)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

uint64_t sub_21CB13A20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB81704();
  v5 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow;
  v6 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  if (v4)
  {
    if (v6 >> 62)
    {
      goto LABEL_32;
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    v8 = sub_21CB85FA4();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v8)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_20:

    if (a1 == 1)
    {
      if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
      {
        v14 = *(v13 + 16);
LABEL_24:

        return v14;
      }

LABEL_41:
      v14 = sub_21CB85FA4();
      goto LABEL_24;
    }

    v15 = *(v2 + v5);
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v18 = *(v2 + v5);
      }

      v16 = sub_21CB85FA4();
      if (v13 < 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 < 0)
      {
        goto LABEL_39;
      }
    }

    if ((v13 & 0x4000000000000000) == 0)
    {
      v17 = *(v13 + 16);
LABEL_29:

      result = v16 - v17;
      if (!__OFSUB__(v16, v17))
      {
        return result;
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    v17 = sub_21CB85FA4();
    goto LABEL_29;
  }

  v19 = v5;
  v20 = a1;
  v21 = v1;
  v9 = 0;
  while ((v6 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x21CF15BD0](v9, v6);
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      v2 = v21;
      v13 = v22;
      v5 = v19;
      a1 = v20;
      goto LABEL_20;
    }

LABEL_13:
    if ([v10 loginChoiceKind] == 6)
    {
      sub_21CB86134();
      v12 = *(v22 + 16);
      sub_21CB86164();
      sub_21CB86174();
      sub_21CB86144();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v9;
    if (v11 == v8)
    {
      goto LABEL_18;
    }
  }

  if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v6 + 8 * v9 + 32);
    swift_unknownObjectRetain();
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  __break(1u);
LABEL_32:

  return sub_21CB85FA4();
}
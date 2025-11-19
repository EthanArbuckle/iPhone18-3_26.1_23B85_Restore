id sub_26A0678E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692A8, &qword_26A09F4B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v5 = &v65 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692B0, &qword_26A09F4B8);
  v77 = *(v6 - 8);
  v78 = v6;
  v74 = v77[8];
  v7 = (MEMORY[0x28223BE20])();
  v75 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v73 = &v65 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v76 = &v65 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480);
  v68 = *(v15 - 8);
  v69 = v15;
  v16 = *(v68 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v65 - v20;
  v71 = v0;
  sub_26A09DE14();
  v22 = *MEMORY[0x277D85778];
  v23 = v2;
  v24 = *(v2 + 104);
  v24(v5, v22, v1);
  v67 = v21;
  sub_26A09E004();
  v25 = *(v23 + 8);
  v25(v5, v1);
  v24(v5, v22, v1);
  v66 = v19;
  v26 = v76;
  sub_26A09E004();
  v25(v5, v1);
  v27 = v77;
  v28 = v77[2];
  v29 = v73;
  v70 = v14;
  v30 = v14;
  v31 = v78;
  v28(v73, v30, v78);
  v32 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v72 = swift_allocObject();
  v33 = v27[4];
  v33(v72 + v32, v29, v31);
  v34 = v75;
  v35 = v26;
  v36 = v31;
  v28(v75, v35, v31);
  v37 = swift_allocObject();
  v33(v37 + v32, v34, v36);
  v38 = type metadata accessor for AuthorizationExtensionProvider.Observer();
  v39 = objc_allocWithZone(v38);
  v40 = &v39[OBJC_IVAR____TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer_updateHandler];
  v41 = v72;
  *v40 = sub_26A06A058;
  *(v40 + 1) = v41;
  v42 = &v39[OBJC_IVAR____TtCC18SmartStackSettings30AuthorizationExtensionProvider8Observer_queryHandler];
  *v42 = sub_26A069F30;
  *(v42 + 1) = v37;
  v79.receiver = v39;
  v79.super_class = v38;
  v43 = objc_msgSendSuper2(&v79, sel_init);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v45 = OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_lsApplicationWorkspace;
    v46 = v71;
    *(v71 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_lsApplicationWorkspace) = result;
    v47 = [objc_allocWithZone(MEMORY[0x277D0ACB0]) init];
    *(v46 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_applicationLibrary) = v47;
    [*(v46 + v45) addObserver_];
    v48 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
    v49 = sub_26A09DE74();
    v50 = [v48 initWithExtensionPointIdentifier_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692B8, &unk_26A09F4C0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_26A09F1F0;
    *(v51 + 32) = v50;
    v52 = objc_allocWithZone(MEMORY[0x277CC5E00]);
    sub_26A069F94(0, &qword_2803692C0, 0x277CC5DF8);
    v53 = v50;
    v54 = v43;
    v55 = sub_26A09DF74();

    v56 = [v52 initWithQueries:v55 delegate:v54];

    *(v46 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_extensionQueryController) = v56;
    v58 = v67;
    v57 = v68;
    v59 = *(v68 + 16);
    v60 = v69;
    v59(v46 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_allowedAppIdentifiersChangedStream, v67, v69);
    v61 = v66;
    v59(v46 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_onboardingPropertiesByAppChangedStream, v66, v60);
    [v56 resume];

    v62 = v77[1];
    v63 = v78;
    v62(v76, v78);
    v64 = *(v57 + 8);
    v64(v61, v60);
    v62(v70, v63);
    v64(v58, v60);
    return v46;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26A067FB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692C8, &unk_26A09F8F0);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v6 - v3;
  sub_26A09E014();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26A06807C()
{
  v1 = v0;
  v2 = sub_26A09DC84();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x277D84FA0];
  v31 = [objc_opt_self() enumeratorWithOptions_];
  sub_26A09E0E4();
  v6 = OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_applicationLibrary;
  v36 = OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_logger;
  sub_26A09DC74();
  if (v40)
  {
    *&v7 = 136446210;
    v30 = v7;
    *&v7 = 136315138;
    v29 = v7;
    v34 = v6;
    v35 = v0;
    do
    {
      sub_26A0697B4(&v39, v38);
      sub_26A069F94(0, &qword_280369268, 0x277CC1E70);
      if (swift_dynamicCast())
      {
        v8 = v37;
        v9 = [v37 bundleIdentifier];
        if (v9)
        {
          v10 = v9;
          v11 = sub_26A09DEA4();
          v13 = v12;
          v14 = [*(v1 + v6) applicationInfoForBundleIdentifier_];

          if (v14)
          {
            if ([v14 type])
            {
              sub_26A09352C(v38, v11, v13);
            }

            else
            {

              v15 = sub_26A09DE04();
              v16 = sub_26A09E124();

              if (os_log_type_enabled(v15, v16))
              {
                v17 = swift_slowAlloc();
                v18 = swift_slowAlloc();
                *&v38[0] = v18;
                *v17 = v29;
                v19 = sub_26A089EEC(v11, v13, v38);

                *(v17 + 4) = v19;
                _os_log_impl(&dword_26A066000, v15, v16, "Filtering %s due to internal", v17, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v18);
                v20 = v18;
                v6 = v34;
                MEMORY[0x26D65A520](v20, -1, -1);
                v21 = v17;
                v1 = v35;
                MEMORY[0x26D65A520](v21, -1, -1);
              }

              else
              {
              }
            }
          }

          else
          {

            v22 = sub_26A09DE04();
            v23 = sub_26A09E114();

            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              *&v38[0] = v25;
              *v24 = v30;
              v26 = sub_26A089EEC(v11, v13, v38);

              *(v24 + 4) = v26;
              v6 = v34;
              _os_log_impl(&dword_26A066000, v22, v23, "Unable to get application info for %{public}s", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v25);
              MEMORY[0x26D65A520](v25, -1, -1);
              v27 = v24;
              v1 = v35;
              MEMORY[0x26D65A520](v27, -1, -1);
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }

      sub_26A09DC74();
    }

    while (v40);
  }

  (*(v32 + 8))(v5, v33);

  return v41;
}

unint64_t sub_26A0684DC()
{
  v1 = v0;
  v83 = *MEMORY[0x277D85DE8];
  v2 = sub_26A0765E0(MEMORY[0x277D84F90]);
  v75 = v2;
  v3 = [*(v1 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_extensionQueryController) extensionIdentities];
  sub_26A069F94(0, &qword_280369270, 0x277CC5DD8);
  v4 = sub_26A09DF84();

  if (v4 >> 62)
  {
    v6 = sub_26A09E224();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_36:

    result = v2;
    goto LABEL_37;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_36;
  }

LABEL_3:
  if (v6 < 1)
  {
    __break(1u);
  }

  v7 = 0;
  v71 = OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_logger;
  v72 = v4 & 0xC000000000000001;
  v8 = 0x279C9C000;
  *&v5 = 136446210;
  v67 = v5;
  *&v5 = 136446466;
  v65 = v5;
  v66 = v1;
  v68 = v4;
  v70 = v6;
  do
  {
    if (v72)
    {
      v9 = MEMORY[0x26D659D40](v7, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = [v9 containingBundleRecord];
    if (v11 && (v12 = v11, v13 = [v11 *(v8 + 1504)], v12, v13))
    {
      v14 = sub_26A09DEA4();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = [v10 *(v8 + 1504)];
    v73 = sub_26A09DEA4();
    v19 = v18;

    if (v16)
    {
      v20 = objc_opt_self();
      v78 = 0;
      v21 = v10;
      v22 = [v20 extensionWithIdentity:v21 error:&v78];
      if (v22)
      {
        v23 = v22;
        v24 = v78;

        v25 = [v23 _extensionBundle];
        if (v25)
        {
          v69 = v25;
          sub_26A069810(v69, v79);
          if (v79[0])
          {
            v76 = v79[0];

            sub_26A069DDC(&v76, &qword_280369278, &qword_26A09F488);
            v77 = v80;
            sub_26A069D88(&v77);
            v82 = v81;
            sub_26A069DDC(&v82, &qword_280369280, &unk_26A09F490);

            sub_26A0791A0(v79, v14, v16);

            v26 = sub_26A09DE04();
            v27 = sub_26A09E124();

            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              v29 = swift_slowAlloc();
              v78 = v29;
              *v28 = v65;
              v30 = sub_26A089EEC(v73, v19, &v78);
              v73 = v26;
              v31 = v30;

              *(v28 + 4) = v31;
              *(v28 + 12) = 2082;
              v32 = sub_26A089EEC(v14, v16, &v78);

              *(v28 + 14) = v32;
              v33 = v73;
              _os_log_impl(&dword_26A066000, v73, v27, "Found onboarding properties for widget extension %{public}s in %{public}s", v28, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x26D65A520](v29, -1, -1);
              v34 = v28;
              v4 = v68;
              MEMORY[0x26D65A520](v34, -1, -1);
            }

            else
            {
            }

            v6 = v70;
          }

          else
          {

            v57 = sub_26A09DE04();
            v58 = sub_26A09E124();

            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v78 = v60;
              *v59 = v67;
              v61 = sub_26A089EEC(v73, v19, &v78);

              *(v59 + 4) = v61;
              v4 = v68;
              _os_log_impl(&dword_26A066000, v57, v58, "No widget extension onboarding properties for %{public}s", v59, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v60);
              MEMORY[0x26D65A520](v60, -1, -1);
              v62 = v59;
              v6 = v70;
              MEMORY[0x26D65A520](v62, -1, -1);
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }

      else
      {
        v41 = v78;

        v42 = sub_26A09DC64();

        swift_willThrow();

        v43 = v42;
        v44 = sub_26A09DE04();
        v45 = sub_26A09E114();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v78 = v47;
          *v46 = v65;
          v48 = sub_26A089EEC(v73, v19, &v78);

          *(v46 + 4) = v48;
          *(v46 + 12) = 2080;
          ErrorValue = swift_getErrorValue();
          v50 = *(*(v74 - 8) + 64);
          MEMORY[0x28223BE20](ErrorValue);
          (*(v52 + 16))(&v65 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
          v53 = sub_26A09DEB4();
          v55 = sub_26A089EEC(v53, v54, &v78);
          v6 = v70;

          *(v46 + 14) = v55;
          _os_log_impl(&dword_26A066000, v44, v45, "Widget extension %{public}s error: %s", v46, 0x16u);
          swift_arrayDestroy();
          v56 = v47;
          v4 = v68;
          MEMORY[0x26D65A520](v56, -1, -1);
          MEMORY[0x26D65A520](v46, -1, -1);
        }

        else
        {
        }
      }

      v8 = 0x279C9C000uLL;
    }

    else
    {

      v35 = sub_26A09DE04();
      v36 = sub_26A09E114();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v78 = v38;
        *v37 = v67;
        v39 = sub_26A089EEC(v73, v19, &v78);

        *(v37 + 4) = v39;
        v4 = v68;
        _os_log_impl(&dword_26A066000, v35, v36, "No app bundle identifier for %{public}s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x26D65A520](v38, -1, -1);
        v40 = v37;
        v6 = v70;
        MEMORY[0x26D65A520](v40, -1, -1);
      }

      else
      {
      }
    }

    ++v7;
  }

  while (v6 != v7);

  result = v75;
LABEL_37:
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26A068E18()
{
  v1 = OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_logger;
  v2 = sub_26A09DE24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_allowedAppIdentifiersChangedStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_onboardingPropertiesByAppChangedStream, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for AuthorizationExtensionProvider()
{
  result = qword_280369138;
  if (!qword_280369138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A068FB4()
{
  v0 = sub_26A09DE24();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26A06A004(319, &qword_280369148, MEMORY[0x277D84F78] + 8, MEMORY[0x277D857B8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

id sub_26A069194()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26A06929C(uint64_t a1, id *a2)
{
  result = sub_26A09DE84();
  *a2 = 0;
  return result;
}

uint64_t sub_26A069314(uint64_t a1, id *a2)
{
  v3 = sub_26A09DE94();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26A069394@<X0>(uint64_t *a1@<X8>)
{
  sub_26A09DEA4();
  v2 = sub_26A09DE74();

  *a1 = v2;
  return result;
}

uint64_t sub_26A0693D8()
{
  v1 = *v0;
  v2 = sub_26A09DEA4();
  v3 = MEMORY[0x26D659980](v2);

  return v3;
}

uint64_t sub_26A069414()
{
  v1 = *v0;
  sub_26A09DEA4();
  sub_26A09DEE4();
}

uint64_t sub_26A069468()
{
  v1 = *v0;
  sub_26A09DEA4();
  sub_26A09E514();
  sub_26A09DEE4();
  v2 = sub_26A09E534();

  return v2;
}

_DWORD *sub_26A0694DC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_26A0694F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26A09DEA4();
  v6 = v5;
  if (v4 == sub_26A09DEA4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26A09E4D4();
  }

  return v9 & 1;
}

uint64_t sub_26A069580@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26A09DE74();

  *a2 = v5;
  return result;
}

uint64_t sub_26A0695C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26A09DEA4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_26A0695F4(uint64_t a1)
{
  v2 = sub_26A0696F4(&qword_280369250);
  v3 = sub_26A0696F4(&qword_280369258);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26A0696F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKTypeIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

_OWORD *sub_26A0697B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

void sub_26A069810(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v43[4] = a1;
  v4 = off_287AFC868;
  sub_26A069F94(0, &qword_280369288, 0x277CCA8D8);
  v5 = v4();
  if (!v5)
  {
    goto LABEL_42;
  }

  v6 = v5;
  if (!*(v5 + 16) || (v7 = sub_26A099F20(0xD000000000000013, 0x800000026A0A0FB0), (v8 & 1) == 0))
  {

LABEL_43:
    v25 = 0;
    v36 = 0;
    v31 = 0;
    v33 = 0;
LABEL_44:
    v37 = 0;
    v38 = 0;
    goto LABEL_45;
  }

  sub_26A069E3C(*(v6 + 56) + 32 * v7, v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369290, &qword_26A09F7E0);
  v9 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:

    goto LABEL_43;
  }

  v10 = v42[0];
  if (*(v42[0] + 16))
  {
    v11 = sub_26A099F20(0x7A69726F68747561, 0xEE00736E6F697461);
    if (v12)
    {
      sub_26A069E3C(*(v42[0] + 56) + 32 * v11, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692A0, &qword_26A09F900);
      if (swift_dynamicCast())
      {
        v13 = *(v42[0] + 16);
        if (v13)
        {
          v14 = v42[0] + 32;
          v15 = MEMORY[0x277D84F90];
          while (1)
          {
            sub_26A069E3C(v14, v43);
            sub_26A069E3C(v43, v42);
            if (swift_dynamicCast())
            {
              break;
            }

            __swift_destroy_boxed_opaque_existential_0(v43);
LABEL_12:
            v14 += 32;
            if (!--v13)
            {

              goto LABEL_33;
            }
          }

          v16 = v9;
          v17 = sub_26A09E3B4();

          if (v17 > 2)
          {
            if (v17 != 3)
            {
LABEL_18:
              __swift_destroy_boxed_opaque_existential_0(v43);
LABEL_24:
              v9 = v16;
              goto LABEL_12;
            }
          }

          else if (v17 >= 2)
          {
            goto LABEL_18;
          }

          __swift_destroy_boxed_opaque_existential_0(v43);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_26A07B4A8(0, *(v15 + 2) + 1, 1, v15);
          }

          v19 = *(v15 + 2);
          v18 = *(v15 + 3);
          v20 = v19 + 1;
          if (v19 >= v18 >> 1)
          {
            v21 = sub_26A07B4A8((v18 > 1), v19 + 1, 1, v15);
            v20 = v19 + 1;
            v15 = v21;
          }

          *(v15 + 2) = v20;
          *&v15[8 * v19 + 32] = v17;
          goto LABEL_24;
        }

        v15 = MEMORY[0x277D84F90];
LABEL_33:
        v24 = sub_26A0806A0(v15);
LABEL_34:
        v25 = v24;

        if (*(v10 + 16))
        {
          goto LABEL_35;
        }

LABEL_41:

        goto LABEL_42;
      }
    }
  }

  if (*(v42[0] + 16))
  {
    v22 = sub_26A099F20(0x7A69726F68747561, 0xEE00736E6F697461);
    if (v23)
    {
      sub_26A069E3C(*(v42[0] + 56) + 32 * v22, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369298, &unk_26A09F4A0);
      if (swift_dynamicCast())
      {
        v24 = sub_26A0875EC(v42[0]);
        goto LABEL_34;
      }
    }
  }

  v25 = MEMORY[0x277D84FA0];
  if (!*(v42[0] + 16))
  {
    goto LABEL_41;
  }

LABEL_35:
  v26 = sub_26A099F20(1954047348, 0xE400000000000000);
  if ((v27 & 1) == 0)
  {
    goto LABEL_41;
  }

  sub_26A069E3C(*(v10 + 56) + 32 * v26, v43);
  if (!swift_dynamicCast())
  {
    goto LABEL_41;
  }

  v28 = sub_26A09DE74();

  v29 = sub_26A09DE74();
  v30 = [a1 localizedStringForKey:v28 value:v29 table:0];

  v31 = sub_26A09DEA4();
  v33 = v32;

  if (*(v10 + 16) && (v34 = sub_26A099F20(0xD000000000000010, 0x800000026A0A0DD0), (v35 & 1) != 0) && (sub_26A069E3C(*(v10 + 56) + 32 * v34, v43), swift_dynamicCast()))
  {
    v36 = LOBYTE(v42[0]);
  }

  else
  {
    v36 = 0;
  }

  if (!*(v10 + 16) || (v39 = sub_26A099F20(7107189, 0xE300000000000000), (v40 & 1) == 0))
  {

    goto LABEL_44;
  }

  sub_26A069E3C(*(v10 + 56) + 32 * v39, v43);

  v41 = swift_dynamicCast();
  v37 = v42[0];
  v38 = v42[1];
  if (!v41)
  {
    v37 = 0;
    v38 = 0;
  }

LABEL_45:
  *a2 = v25;
  a2[1] = v36;
  a2[2] = v31;
  a2[3] = v33;
  a2[4] = v37;
  a2[5] = v38;
}

uint64_t sub_26A069DDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26A069E3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692B0, &qword_26A09F4B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26A069F94(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_26A06A004(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t AuthorizationManager.__allocating_init(eligibilityDefaults:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CoreLocationAuthorizationProvider();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_26A09DE14();
  v10 = (v9 + OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_observationBlock);
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_locationManagersByApp;
  v12 = MEMORY[0x277D84F90];
  *(v9 + v11) = sub_26A076734(MEMORY[0x277D84F90]);
  v13 = OBJC_IVAR____TtC18SmartStackSettings33CoreLocationAuthorizationProvider_cachedLocationByApp;
  *(v9 + v13) = sub_26A07685C(v12);
  v14 = type metadata accessor for HealthKitAuthorizationProvider();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_26A081854();
  v18 = type metadata accessor for AuthorizationPersistence();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = AuthorizationPersistence.init(defaultsDomain:)(a1, a2);
  v22 = type metadata accessor for AuthorizationExtensionProvider();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v54[3] = v14;
  v54[4] = &off_287AFC5F0;
  v54[0] = v17;
  v53 = &off_287AFC588;
  v52 = v18;
  v50 = &off_287AFC108;
  v51[0] = v21;
  v49 = v22;
  v48[0] = sub_26A0678E8();
  v25 = *(v3 + 48);
  v26 = *(v3 + 52);
  v27 = swift_allocObject();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v54, v14);
  v29 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v48[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = v52;
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
  v35 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = (&v48[-1] - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = v49;
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  v41 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v43 = (&v48[-1] - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  v45 = sub_26A075E18(v9, *v31, *v37, *v43, v27, 86400.0);
  __swift_destroy_boxed_opaque_existential_0(v48);
  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v54);
  return v45;
}

uint64_t sub_26A06A408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
  v6 = sub_26A09DFA4();

  return MEMORY[0x2822009F8](sub_26A06A4F8, v6, v5);
}

uint64_t sub_26A06A4F8()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_26A06A594();
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

void *sub_26A06A594()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694B8, &qword_26A09F708);
  v141 = *(v1 - 8);
  v2 = *(v141 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v141 - v3;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803693F8, &qword_26A09F5A8);
  v145 = *(v146 - 8);
  v143 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v144 = &v141 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v167 = &v141 - v8;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480);
  v161 = *(v166 - 8);
  v9 = *(v161 + 64);
  v10 = MEMORY[0x28223BE20](v166);
  v148 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v158 = &v141 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v147 = &v141 - v15;
  v163 = v16;
  MEMORY[0x28223BE20](v14);
  v160 = &v141 - v17;
  v18 = sub_26A09DE24();
  v19 = *(v18 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A06D4E8();
  v22 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
  swift_beginAccess();
  v142 = v22;
  result = sub_26A079100(v0 + v22, &v170, &qword_280369388, &qword_26A09F588);
  v24 = v171;
  if (!v171)
  {
    __break(1u);
    goto LABEL_19;
  }

  v164 = v172;
  v165 = __swift_project_boxed_opaque_existential_1(&v170, v171);
  v25 = v19;
  v26 = *(v19 + 16);
  v162 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_logger;
  v154 = (v19 + 16);
  v152 = v26;
  v26(&v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_logger, v18);
  v27 = *(v19 + 80);
  v28 = (v27 + 16) & ~v27;
  v29 = (v20 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v151 = v27;
  v30 = swift_allocObject();
  v31 = *(v25 + 32);
  v153 = v28;
  v32 = v30 + v28;
  v33 = v31;
  v156 = v21;
  v159 = v18;
  v157 = v25 + 32;
  v31(v32, v21, v18);
  v155 = v29;
  *(v30 + v29) = v0;
  v34 = v164;
  v168 = v0;
  v35 = v164[2];

  v35(sub_26A0782A0, v30, v24, v34);

  __swift_destroy_boxed_opaque_existential_0(&v170);
  v36 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
  swift_beginAccess();
  v37 = v168 + v36;
  v38 = v168;
  result = sub_26A079100(v37, &v170, &qword_280369398, &qword_26A09F590);
  if (!v171)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = __swift_project_boxed_opaque_existential_1(&v170, v171);
  v40 = v156;
  v41 = v159;
  v152(v156, v38 + v162, v159);
  v42 = v155;
  v43 = swift_allocObject();
  v33(v43 + v153, v40, v41);
  *(v43 + v42) = v38;
  v44 = *v39;

  sub_26A081A18(sub_26A078364, v43);

  __swift_destroy_boxed_opaque_existential_0(&v170);
  v45 = (v38 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_extensionProvider);
  result = swift_beginAccess();
  v46 = v45[3];
  v47 = v161;
  if (!v46)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v48 = __swift_project_boxed_opaque_existential_1(v45, v46);
  v49 = *(v47 + 16);
  v50 = *v48 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_allowedAppIdentifiersChangedStream;
  v159 = v45;
  v51 = v160;
  v52 = v166;
  v49(v160, v50, v166);
  v53 = sub_26A09DFF4();
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v157 = v53;
  v165 = v55;
  v156 = (v54 + 56);
  (v55)(v167, 1, 1);
  v56 = swift_allocObject();
  swift_weakInit();
  v57 = v147;
  v154 = v49;
  v155 = v47 + 16;
  v49(v147, v51, v52);
  v58 = qword_280369100;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = off_280369A30;
  v60 = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
  v61 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v62 = (v163 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v152 = *(v47 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = v59;
  *(v63 + 24) = v60;
  v163 = v60;
  v64 = *(v47 + 32);
  v153 = v61;
  v65 = v63 + v61;
  v66 = v166;
  v151 = v47 + 32;
  v150 = v64;
  v64(v65, v57, v166);
  v149 = v62;
  *(v63 + v62) = v56;
  v164 = v59;
  swift_retain_n();

  v67 = v167;
  sub_26A06B90C(0, 0, v167, &unk_26A09F738, v63);

  result = v159;
  v68 = v159[3];
  if (!v68)
  {
    goto LABEL_21;
  }

  v69 = v66;
  v70 = v57;
  v71 = __swift_project_boxed_opaque_existential_1(v159, v68);
  v72 = v158;
  v73 = v66;
  v74 = v154;
  v154(v158, *v71 + OBJC_IVAR____TtC18SmartStackSettings30AuthorizationExtensionProvider_onboardingPropertiesByAppChangedStream, v73);
  v165(v67, 1, 1, v157);
  v75 = v67;
  v76 = swift_allocObject();
  v77 = v168;
  swift_weakInit();
  v74(v70, v72, v69);
  v78 = v149;
  v79 = swift_allocObject();
  v80 = v163;
  *(v79 + 16) = v164;
  *(v79 + 24) = v80;
  v150(v79 + v153, v70, v69);
  *(v79 + v78) = v76;

  sub_26A06B90C(0, 0, v75, &unk_26A09F748, v79);

  v81 = (v77 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore);
  result = swift_beginAccess();
  v82 = v81[3];
  if (!v82)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v83 = *__swift_project_boxed_opaque_existential_1(v81, v82);
  v84 = v148;
  AuthorizationPersistence.externalChangeStream.getter();
  v85 = v75;
  v86 = v157;
  v165(v85, 1, 1, v157);
  v87 = swift_allocObject();
  swift_weakInit();
  v154(v70, v84, v69);
  v88 = v149;
  v89 = swift_allocObject();
  v90 = v163;
  *(v89 + 16) = v164;
  *(v89 + 24) = v90;
  v150(v89 + v153, v70, v69);
  *(v89 + v88) = v87;

  v91 = v167;
  sub_26A06B90C(0, 0, v167, &unk_26A09F758, v89);

  v165(v91, 1, 1, v86);
  v92 = v168;
  v93 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifierStream;
  v94 = swift_allocObject();
  swift_weakInit();
  v95 = v145;
  v96 = v144;
  v97 = v146;
  (*(v145 + 16))(v144, v92 + v93, v146);
  v98 = (*(v95 + 80) + 32) & ~*(v95 + 80);
  v99 = (v143 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
  v100 = swift_allocObject();
  v101 = v163;
  *(v100 + 16) = v164;
  *(v100 + 24) = v101;
  (*(v95 + 32))(v100 + v98, v96, v97);
  *(v100 + v99) = v94;
  sub_26A06B90C(0, 0, v167, &unk_26A09F768, v100);

  v102 = v159;
  v103 = v159[3];
  if (!v103)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v104 = *__swift_project_boxed_opaque_existential_1(v159, v103);
  v105 = sub_26A0684DC();
  v106 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_onboardingPropertiesByApp;
  swift_beginAccess();
  v107 = *(v92 + v106);
  *(v92 + v106) = v105;

  v108 = v102[3];
  if (!v108)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v109 = v92;
  v110 = *__swift_project_boxed_opaque_existential_1(v102, v108);
  v111 = sub_26A06807C();
  v112 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps;
  v113 = *(v109 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps);
  *(v109 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps) = v111;

  v114 = sub_26A09DE04();
  v115 = sub_26A09E124();

  v116 = os_log_type_enabled(v114, v115);
  v167 = v112;
  if (v116)
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v170 = v118;
    *v117 = 136446210;
    v119 = *(v109 + v112);

    v120 = sub_26A09E0A4();
    v122 = v121;

    v123 = sub_26A089EEC(v120, v122, &v170);

    *(v117 + 4) = v123;
    _os_log_impl(&dword_26A066000, v114, v115, "Initial app list: %{public}s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v118);
    MEMORY[0x26D65A520](v118, -1, -1);
    MEMORY[0x26D65A520](v117, -1, -1);
  }

  result = sub_26A079100(v109 + v142, &v170, &qword_280369388, &qword_26A09F588);
  v124 = v171;
  if (!v171)
  {
    goto LABEL_25;
  }

  v125 = v172;
  __swift_project_boxed_opaque_existential_1(&v170, v171);
  v126 = v167;
  v169 = *(v109 + v167);
  v165 = v125[3];

  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369438, &qword_26A09F648);
  v128 = sub_26A0789F8();
  (v165)(&v169, v127, v128, v124, v125);

  __swift_destroy_boxed_opaque_existential_0(&v170);
  v129 = *(v109 + v126);

  sub_26A06D8F4(v130);

  sub_26A070F60();
  *(v109 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_started) = 1;
  v131 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations;
  v132 = *(v109 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations);
  v133 = *(v132 + 16);
  if (v133)
  {
    v167 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations;
    v134 = *(v141 + 16);
    v135 = v132 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
    v136 = *(v141 + 72);
    v137 = (v141 + 8);

    do
    {
      v134(v4, v135, v1);
      sub_26A09DFD4();
      (*v137)(v4, v1);
      v135 += v136;
      --v133;
    }

    while (v133);

    v131 = v167;
  }

  v138 = *(v161 + 8);
  v139 = v166;
  v138(v148, v166);
  v138(v158, v139);
  v138(v160, v139);
  v140 = *(v168 + v131);
  *(v168 + v131) = MEMORY[0x277D84F90];
}

uint64_t sub_26A06B5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26A079100(a3, v27 - v11, &qword_280369340, &qword_26A09F530);
  v13 = sub_26A09DFF4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26A069DDC(v12, &qword_280369340, &qword_26A09F530);
  }

  else
  {
    sub_26A09DFE4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26A09DFA4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26A09DEC4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694B0, &qword_26A09F6D8);
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

      sub_26A069DDC(a3, &qword_280369340, &qword_26A09F530);

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

  sub_26A069DDC(a3, &qword_280369340, &qword_26A09F530);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694B0, &qword_26A09F6D8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_26A06B90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26A079100(a3, v27 - v11, &qword_280369340, &qword_26A09F530);
  v13 = sub_26A09DFF4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26A069DDC(v12, &qword_280369340, &qword_26A09F530);
  }

  else
  {
    sub_26A09DFE4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26A09DFA4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26A09DEC4() + 32;
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

      sub_26A069DDC(a3, &qword_280369340, &qword_26A09F530);

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

  sub_26A069DDC(a3, &qword_280369340, &qword_26A09F530);
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

uint64_t AuthorizationManager.descriptorCollectionStream.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369348, &qword_26A09F538);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v20 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v20 - v14;
  *v8 = 1;
  (*(v5 + 104))(v8, *MEMORY[0x277D85768], v4);
  sub_26A09E004();
  (*(v5 + 8))(v8, v4);
  v16 = sub_26A09DFF4();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  (*(v10 + 16))(v13, v15, v9);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v20[1];
  (*(v10 + 32))(&v18[v17], v13, v9);

  sub_26A06B90C(0, 0, v3, &unk_26A09F550, v18);

  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_26A06BF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_26A06BFC4;

  return sub_26A06C0B8(a5);
}

uint64_t sub_26A06BFC4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26A06C0B8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369488, &qword_26A09F698);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v2[11] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v2[12] = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
  v10 = sub_26A09DFA4();
  v2[13] = v10;
  v2[14] = v9;

  return MEMORY[0x2822009F8](sub_26A06C280, v10, v9);
}

uint64_t sub_26A06C280()
{
  v1 = v0[4];
  if (*(v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_started))
  {
    (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
    v2 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations;
    v3 = *(v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v2) = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_26A07B5B4(0, v3[2] + 1, 1, v3);
      *(v1 + v2) = v3;
    }

    v6 = v3[2];
    v5 = v3[3];
    if (v6 >= v5 >> 1)
    {
      v3 = sub_26A07B5B4(v5 > 1, v6 + 1, 1, v3);
    }

    v8 = v0[13];
    v7 = v0[14];
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    v12 = v0[4];
    v3[2] = v6 + 1;
    (*(v10 + 32))(v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v6, v9, v11);
    *(v1 + v2) = v3;
    v13 = v12 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
    os_unfair_lock_lock((v12 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex));
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      v14 = v0[13];
      v15 = v0[14];
      swift_task_reportUnexpectedExecutor();
    }

    v16 = v0[10];
    v17 = v0[7];
    v18 = v0[8];
    v19 = v0[5];
    v20 = v0[6];
    v21 = v0[3];
    v0[2] = *(v13 + 8);

    sub_26A09E024();
    (*(v20 + 8))(v17, v19);
    os_unfair_lock_unlock(v13);

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = v0[11];
    v25 = v0[12];
    v26 = *(MEMORY[0x277D859E0] + 4);
    v27 = swift_task_alloc();
    v0[15] = v27;
    *v27 = v0;
    v27[1] = sub_26A06C52C;
    v28 = v0[4];

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_26A06C52C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_26A06C64C, v4, v3);
}

uint64_t sub_26A06C64C()
{
  v1 = v0[4];
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  v2 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations;
  v3 = *(v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_26A07B5B4(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_26A07B5B4(v5 > 1, v6 + 1, 1, v3);
  }

  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  v12 = v0[4];
  v3[2] = v6 + 1;
  (*(v10 + 32))(v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v6, v9, v11);
  *(v1 + v2) = v3;
  v13 = v12 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
  os_unfair_lock_lock((v12 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex));
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    v14 = v0[13];
    v15 = v0[14];
    swift_task_reportUnexpectedExecutor();
  }

  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[8];
  v19 = v0[5];
  v20 = v0[6];
  v21 = v0[3];
  v0[2] = *(v13 + 8);

  sub_26A09E024();
  (*(v20 + 8))(v17, v19);
  os_unfair_lock_unlock(v13);

  v22 = v0[1];

  return v22();
}

void AuthorizationManager.descriptorCollection.getter(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
  os_unfair_lock_lock(v3);
  *a1 = *(v3 + 8);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_26A06C89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26A06C8C0, 0, 0);
}

uint64_t sub_26A06C8C0()
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
  v1 = sub_26A09DFA4();

  return MEMORY[0x2822009F8](sub_26A06C9AC, v1, v0);
}

uint64_t sub_26A06C9AC()
{
  v1 = v0[2];
  sub_26A06CA14(v0[3], v0[4], 0);
  v2 = v0[1];

  return v2();
}

uint64_t sub_26A06CA14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = v3 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
  os_unfair_lock_lock((v3 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex));
  v9 = *(v8 + 8);

  os_unfair_lock_unlock(v8);
  if (*(v9 + 16) && (v10 = sub_26A099F20(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 72 * v10;
    v34 = *v12;
    v14 = *(v12 + 32);
    v13 = *(v12 + 48);
    v15 = *(v12 + 64);
    v35 = *(v12 + 16);
    v36 = v14;
    v38 = v15;
    v37 = v13;
    sub_26A077C4C(&v34, &v46);

    v41 = v36;
    v42 = v37;
    v43 = v38;
    v39 = v34;
    v40 = v35;
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v46 = v34;
    v47 = v35;
    AuthorizationDescriptor.eligibleAuthorizations.getter();
    v48 = v41;
    v49 = v42;
    v50 = v43;
    v46 = v39;
    v47 = v40;
    v45 = v16;
    if ((a3 & 1) == 0)
    {
LABEL_4:
      sub_26A069DDC(&v46, &qword_280369490, &qword_26A09F6A0);
      goto LABEL_9;
    }
  }

  else
  {

    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = MEMORY[0x277D84FA0];
    if ((a3 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  if (*(&v46 + 1))
  {
    v39 = v46;
    v40 = v47;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    AuthorizationDescriptor.eligibleForModalIncidentalUsePrompt.getter();
    v18 = v17;
    sub_26A069DDC(&v46, &qword_280369490, &qword_26A09F6A0);
    if (v18)
    {
      sub_26A09367C(&v39, 2);
      sub_26A077CFC(v39);
      goto LABEL_10;
    }
  }

LABEL_9:
  sub_26A095A78(2, &v39);
  sub_26A07800C(v39);
LABEL_10:
  v19 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore;
  swift_beginAccess();
  result = sub_26A079100(v4 + v19, &v39, &qword_2803693A8, &qword_26A09F598);
  if (*(&v40 + 1))
  {
    v21 = *__swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    v22 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
    swift_beginAccess();
    v23 = *(v21 + v22);
    if (*(v23 + 16) && (v24 = sub_26A099F20(a1, a2), (v25 & 1) != 0))
    {
      v26 = *(*(v23 + 56) + 8 * v24);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v26 = MEMORY[0x277D84FA0];
    }

    sub_26A079600(v27, v26);
    v29 = v28;
    swift_beginAccess();

    v30 = *(v21 + v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v21 + v22);
    *(v21 + v22) = 0x8000000000000000;
    sub_26A07E4B8(v29, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v21 + v22) = v44;
    swift_endAccess();
    sub_26A07A33C();

    __swift_destroy_boxed_opaque_existential_0(&v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A09F500;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    v33 = sub_26A08A494(inited);
    swift_setDeallocating();
    sub_26A069D88(inited + 32);
    sub_26A06D8F4(v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26A06CDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  v13 = sub_26A09DFF4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v6;
  v14[5] = a1;
  v14[6] = a2;

  sub_26A06B90C(0, 0, v12, a4, v14);
}

uint64_t sub_26A06CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26A06CF14, 0, 0);
}

uint64_t sub_26A06CF14()
{
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
  v1 = sub_26A09DFA4();

  return MEMORY[0x2822009F8](sub_26A06D000, v1, v0);
}

uint64_t sub_26A06D000()
{
  v1 = v0[2];
  sub_26A06D064(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_26A06D064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-v11];
  v13 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore;
  swift_beginAccess();
  result = sub_26A079100(v2 + v13, v24, &qword_2803693A8, &qword_26A09F598);
  if (!v25)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v15 = *__swift_project_boxed_opaque_existential_1(v24, v25);
  AuthorizationPersistence.dismissalDate(for:)(a1, a2, v12);
  v16 = sub_26A09DD34();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v12, 1, v16);
  sub_26A069DDC(v12, &qword_280369830, "J*");
  __swift_destroy_boxed_opaque_existential_0(v24);
  if (v18 == 1)
  {
    result = sub_26A079100(v3 + v13, v24, &qword_2803693A8, &qword_26A09F598);
    if (v25)
    {
      v19 = __swift_project_boxed_opaque_existential_1(v24, v25);
      sub_26A09DD24();
      (*(v17 + 56))(v10, 0, 1, v16);
      v20 = *v19;
      AuthorizationPersistence.updateDismissalDate(_:for:)(v10, a1, a2);
      sub_26A069DDC(v10, &qword_280369830, "J*");
      __swift_destroy_boxed_opaque_existential_0(v24);
      sub_26A070F60();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26A09F500;
      *(inited + 32) = a1;
      *(inited + 40) = a2;

      v22 = sub_26A08A494(inited);
      swift_setDeallocating();
      sub_26A069D88(inited + 32);
      sub_26A06D8F4(v22);
    }

    goto LABEL_8;
  }

  return sub_26A06CA14(a1, a2, 1);
}

uint64_t AuthorizationManager.updateUserConfiguredAppIdentifiers<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369360, &qword_26A09F578);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - v13;
  (*(v6 + 16))(v9, a1, a2);
  v15 = *(a3 + 8);
  v17[1] = sub_26A09E0C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369370, &qword_26A09F580);
  sub_26A09E024();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_26A06D4E8()
{
  v1 = sub_26A09DDF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v6 = *(off_280369A30 + 2);
  swift_unownedRetainStrong();
  v7 = v6;
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v0;
  sub_26A09DDE4();
  v8 = sub_26A09DDD4();

  swift_unownedRelease();
  (*(v2 + 8))(v5, v1);
  v9 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_stateDumpHandle);
  *(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_stateDumpHandle) = v8;
}

uint64_t sub_26A06D698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a4;
  return MEMORY[0x2822009F8](sub_26A06D6BC, 0, 0);
}

uint64_t sub_26A06D6BC()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A09F500;
    *(inited + 32) = v4;
    *(inited + 40) = v3;

    *(v0 + 128) = sub_26A08A494(inited);
    swift_setDeallocating();
    sub_26A069D88(inited + 32);
    if (qword_280369100 != -1)
    {
      swift_once();
    }

    type metadata accessor for AuthorizationActor();
    sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
    v7 = sub_26A09DFA4();

    return MEMORY[0x2822009F8](sub_26A06D878, v7, v6);
  }

  else
  {
    **(v0 + 88) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_26A06D878()
{
  v1 = *(v0 + 120);
  sub_26A06D8F4(*(v0 + 128));

  return MEMORY[0x2822009F8](sub_26A07919C, 0, 0);
}

uint64_t sub_26A06D8F4(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369488, &qword_26A09F698);
  v73 = *(v3 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v72 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v76 = *(v75 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x28223BE20](v75 - 8);
  v74 = &v72 - v8;
  v90 = v1;
  v77 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorsByApp;
  v9 = *&v1[OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorsByApp];
  v135 = MEMORY[0x277D84FA0];
  v136 = v9;
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v86 = a1;

  v15 = 0;
  v91 = v3;
  v84 = v9;
  v85 = v6;
  v78 = a1 + 56;
  while (v13)
  {
    v18 = v15;
LABEL_10:
    v19 = (*(v86 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v13)))));
    v20 = *v19;
    v21 = v19[1];

    sub_26A07182C(v20, v21, &v112);
    v132 = v114;
    v133 = v115;
    v134 = v116;
    v130 = v112;
    v131 = v113;
    v22 = *(v9 + 16);
    v89 = v20;
    if (v22 && (v23 = sub_26A099F20(v20, v21), (v24 & 1) != 0))
    {
      v25 = *(v9 + 56) + 72 * v23;
      v112 = *v25;
      v26 = *(v25 + 64);
      v28 = *(v25 + 32);
      v27 = *(v25 + 48);
      v113 = *(v25 + 16);
      v114 = v28;
      v115 = v27;
      v116 = v26;
      v82 = *(&v112 + 1);
      v83 = v112;
      v87 = *(&v113 + 1);
      v88 = v113;
      v29 = v14;
      v31 = *(&v28 + 1);
      v30 = v28;
      v32 = *(&v27 + 1);
      v33 = v27;
      sub_26A077C4C(&v112, &v107);
      v34 = v32;
      v35 = v33;
      v36 = v31;
      v38 = v82;
      v37 = v83;
      v39 = v30;
      v14 = v29;
      v10 = v78;
      v41 = v87;
      v40 = v88;
      v42 = v26;
    }

    else
    {
      v37 = 0;
      v38 = 0;
      v40 = 0;
      v41 = 0;
      v39 = 0;
      v36 = 0;
      v35 = 0;
      v34 = 0;
      v42 = 0;
    }

    v13 &= v13 - 1;
    v43 = v130;
    v126 = v131;
    v127 = v132;
    v128 = v133;
    v129 = v134;
    if (*(&v130 + 1))
    {
      v112 = v130;
      v113 = v131;
      v114 = v132;
      v115 = v133;
      v116 = v134;
      v107 = v130;
      v108 = v131;
      v109 = v132;
      v110 = v133;
      v111 = v134;
      if (!v38)
      {
        v79 = v34;
        v80 = v35;
        v81 = v36;
        v82 = v39;
        v87 = v41;
        v88 = v40;
        v83 = v42;
        v104 = v114;
        v105 = v115;
        v106 = v116;
        v102 = v112;
        v103 = v113;
        sub_26A079100(&v130, v100, &qword_280369490, &qword_26A09F6A0);
        sub_26A079100(&v112, v100, &qword_280369490, &qword_26A09F6A0);
        sub_26A077BF8(&v102);
        goto LABEL_21;
      }

      *&v93 = v37;
      *(&v93 + 1) = v38;
      *&v94 = v40;
      *(&v94 + 1) = v41;
      *&v95 = v39;
      *(&v95 + 1) = v36;
      *&v96 = v35;
      *(&v96 + 1) = v34;
      v97 = v42;
      sub_26A079100(&v130, v92, &qword_280369490, &qword_26A09F6A0);
      sub_26A079100(&v112, v92, &qword_280369490, &qword_26A09F6A0);
      v44 = _s18SmartStackSettings23AuthorizationDescriptorV2eeoiySbAC_ACtFZ_0(&v107, &v93);
      v98[2] = v95;
      v98[3] = v96;
      v99 = v97;
      v98[0] = v93;
      v98[1] = v94;
      sub_26A077BF8(v98);
      v100[2] = v109;
      v100[3] = v110;
      v101 = v111;
      v100[0] = v107;
      v100[1] = v108;
      sub_26A077BF8(v100);
      v102 = v43;
      v103 = v126;
      v104 = v127;
      v105 = v128;
      v106 = v129;
      sub_26A069DDC(&v102, &qword_280369490, &qword_26A09F6A0);
      if (v44)
      {

        v45 = &v130;
        goto LABEL_26;
      }

LABEL_22:
      v9 = v84;
      v6 = v85;

      v46 = v89;
      sub_26A09352C(&v112, v89, v21);

      if (*(&v130 + 1))
      {
        v137[2] = v132;
        v137[3] = v133;
        v138 = v134;
        v137[0] = v130;
        v137[1] = v131;
        v16 = v136;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v112 = v16;
        sub_26A07EC14(v137, v46, v21, isUniquelyReferenced_nonNull_native);

        v136 = v112;
      }

      else
      {
        sub_26A07BA80(v46, v21, &v107);

        v114 = v109;
        v115 = v110;
        v116 = v111;
        v112 = v107;
        v113 = v108;
        sub_26A069DDC(&v112, &qword_280369490, &qword_26A09F6A0);
      }

      v15 = v18;
    }

    else
    {
      if (v38)
      {
        v79 = v34;
        v80 = v35;
        v81 = v36;
        v82 = v39;
        v87 = v41;
        v88 = v40;
        v83 = v42;
        sub_26A079100(&v130, &v112, &qword_280369490, &qword_26A09F6A0);
LABEL_21:
        v112 = v43;
        v113 = v126;
        v114 = v127;
        v115 = v128;
        v116 = v129;
        v117 = v37;
        v118 = v38;
        v119 = v88;
        v120 = v87;
        v121 = v82;
        v122 = v81;
        v123 = v80;
        v124 = v79;
        v125 = v83;
        sub_26A069DDC(&v112, &qword_280369498, &qword_26A09F6A8);
        goto LABEL_22;
      }

      v112 = v43;
      v113 = v126;
      v114 = v127;
      v115 = v128;
      v116 = v129;
      v45 = &v112;
LABEL_26:
      sub_26A069DDC(v45, &qword_280369490, &qword_26A09F6A0);
      v15 = v18;
      v9 = v84;
      v6 = v85;
    }
  }

  while (2)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v18 < v14)
    {
      v13 = *(v10 + 8 * v18);
      ++v15;
      if (v13)
      {
        goto LABEL_10;
      }

      continue;
    }

    break;
  }

  v47 = v135;
  v48 = v136;
  if (!*(v135 + 16))
  {
  }

  v49 = v77;
  v50 = *&v90[v77];
  *&v90[v77] = v136;
  v87 = v48;

  v51 = sub_26A09DE04();
  v52 = sub_26A09E124();
  v53 = os_log_type_enabled(v51, v52);
  v88 = v47;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v112 = v55;
    *v54 = 136446210;

    v56 = sub_26A09E0A4();
    v58 = v57;

    v59 = sub_26A089EEC(v56, v58, &v112);

    *(v54 + 4) = v59;
    v49 = v77;
    _os_log_impl(&dword_26A066000, v51, v52, "Updating descriptor collection for keys: %{public}s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x26D65A520](v55, -1, -1);
    MEMORY[0x26D65A520](v54, -1, -1);
  }

  v9 = v76;
  v13 = *&v90[v49];
  v18 = &v90[OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex];

  os_unfair_lock_lock(v18);
  v60 = *(v18 + 8);

  if (qword_280369100 != -1)
  {
LABEL_41:
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
  sub_26A09DFA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(v18 + 8) = v13;
  v61 = *&v90[OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations];
  v62 = *(v61 + 2);
  if (v62)
  {
    v86 = v18;
    v64 = *(v9 + 16);
    v63 = v9 + 16;
    v65 = &v61[(*(v63 + 64) + 32) & ~*(v63 + 64)];
    v89 = *(v63 + 56);
    v90 = v64;
    v66 = v6;
    v67 = (v73 + 8);

    v85 = v61;

    v68 = v13;
    v69 = v74;
    v70 = v75;
    do
    {
      (v90)(v69, v65, v70);
      *&v112 = v68;

      sub_26A09E024();
      (*v67)(v66, v91);
      (*(v63 - 8))(v69, v70);
      v65 += v89;
      --v62;
    }

    while (v62);

    v18 = v86;
  }

  os_unfair_lock_unlock(v18);
}

uint64_t sub_26A06E2F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - v14;

  v16 = sub_26A09DE04();
  v17 = sub_26A09E124();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = a4;
    v19 = a7;
    v20 = v18;
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_26A089EEC(a1, a2, &v28);
    _os_log_impl(&dword_26A066000, v16, v17, a5, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x26D65A520](v21, -1, -1);
    v22 = v20;
    a7 = v19;
    MEMORY[0x26D65A520](v22, -1, -1);
  }

  v23 = sub_26A09DFF4();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v24;
  v25[5] = a1;
  v25[6] = a2;

  sub_26A06B5F8(0, 0, v15, a7, v25);
}

uint64_t sub_26A06E520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a4;
  return MEMORY[0x2822009F8](sub_26A06E544, 0, 0);
}

uint64_t sub_26A06E544()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A09F500;
    *(inited + 32) = v4;
    *(inited + 40) = v3;

    *(v0 + 128) = sub_26A08A494(inited);
    swift_setDeallocating();
    sub_26A069D88(inited + 32);
    if (qword_280369100 != -1)
    {
      swift_once();
    }

    type metadata accessor for AuthorizationActor();
    sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
    v7 = sub_26A09DFA4();

    return MEMORY[0x2822009F8](sub_26A06E700, v7, v6);
  }

  else
  {
    **(v0 + 88) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_26A06E700()
{
  v1 = *(v0 + 120);
  sub_26A06D8F4(*(v0 + 128));

  return MEMORY[0x2822009F8](sub_26A06E77C, 0, 0);
}

uint64_t sub_26A06E7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694D8, &qword_26A09F778);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v5[10] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v5[11] = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
  v10 = sub_26A09DFA4();
  v5[12] = v10;
  v5[13] = v9;

  return MEMORY[0x2822009F8](sub_26A06E904, v10, v9);
}

uint64_t sub_26A06E904()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480);
  sub_26A09E044();
  swift_beginAccess();
  v4 = v0[10];
  v5 = v0[11];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26A06E9F0;
  v8 = v0[9];
  v9 = v0[7];

  return MEMORY[0x2822003E8](v0 + 15, v4, v5, v9);
}

uint64_t sub_26A06E9F0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_26A06EB10, v4, v3);
}

uint64_t sub_26A06EB10()
{
  if (*(v0 + 120) == 1 || (v1 = *(v0 + 48), !swift_weakLoadStrong()))
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_6;
  }

  if (sub_26A09E084())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

LABEL_6:
    v2 = *(v0 + 72);

    v3 = *(v0 + 8);

    return v3();
  }

  sub_26A06EC70();

  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_26A06E9F0;
  v9 = *(v0 + 72);
  v10 = *(v0 + 56);

  return MEMORY[0x2822003E8](v0 + 120, v5, v6, v10);
}

void sub_26A06EC70()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_extensionProvider);
  swift_beginAccess();
  v3 = v2[3];
  if (!v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *__swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = sub_26A06807C();
  v6 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps;
  v7 = *(v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps);
  v48[0] = v5;

  sub_26A074C64(v8);
  v9 = v5;

  v10 = sub_26A09DE04();
  v11 = sub_26A09E124();

  v46 = v6;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v45 = v5;
    v13 = swift_slowAlloc();
    v48[0] = v13;
    *v12 = 136446466;
    v14 = *(v1 + v6);

    v15 = v9;
    v16 = sub_26A09E0A4();
    v18 = v17;

    v19 = v16;
    v9 = v15;
    v20 = sub_26A089EEC(v19, v18, v48);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2082;
    v21 = sub_26A09E0A4();
    v23 = sub_26A089EEC(v21, v22, v48);

    *(v12 + 14) = v23;
    _os_log_impl(&dword_26A066000, v10, v11, "Updating allowed apps: %{public}s\nChanged: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D65A520](v13, -1, -1);
    MEMORY[0x26D65A520](v12, -1, -1);
  }

  v24 = v2[3];
  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v26 = *(v24 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = (&v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v29);

  v30 = *v29;
  v31 = sub_26A06807C();
  (*(v26 + 8))(v29, v24);
  v32 = v46;
  v33 = *(v1 + v46);
  *(v1 + v46) = v31;

  v34 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
  swift_beginAccess();
  sub_26A079100(v1 + v34, v48, &qword_280369388, &qword_26A09F588);
  v35 = v49;
  if (!v49)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v36 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v47[0] = v31;
  v37 = *(v36 + 24);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369438, &qword_26A09F648);
  v39 = sub_26A0789F8();
  v37(v47, v38, v39, v35, v36);

  __swift_destroy_boxed_opaque_existential_0(v48);
  v40 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
  swift_beginAccess();
  sub_26A079100(v1 + v40, v48, &qword_280369398, &qword_26A09F590);
  if (v49)
  {
    v41 = __swift_project_boxed_opaque_existential_1(v48, v49);
    v42 = *(v1 + v32);
    v43 = *v41;

    sub_26A074528(v44);

    __swift_destroy_boxed_opaque_existential_0(v48);
    sub_26A06D8F4(v9);

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_26A06F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694D8, &qword_26A09F778);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v5[10] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v5[11] = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
  v10 = sub_26A09DFA4();
  v5[12] = v10;
  v5[13] = v9;

  return MEMORY[0x2822009F8](sub_26A06F224, v10, v9);
}

uint64_t sub_26A06F224()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480);
  sub_26A09E044();
  swift_beginAccess();
  v4 = v0[10];
  v5 = v0[11];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26A06F310;
  v8 = v0[9];
  v9 = v0[7];

  return MEMORY[0x2822003E8](v0 + 15, v4, v5, v9);
}

uint64_t sub_26A06F310()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_26A06F430, v4, v3);
}

uint64_t sub_26A06F430()
{
  if (*(v0 + 120) == 1 || (v1 = *(v0 + 48), !swift_weakLoadStrong()))
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_6;
  }

  if (sub_26A09E084())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

LABEL_6:
    v2 = *(v0 + 72);

    v3 = *(v0 + 8);

    return v3();
  }

  sub_26A06F590();

  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_26A06F310;
  v9 = *(v0 + 72);
  v10 = *(v0 + 56);

  return MEMORY[0x2822003E8](v0 + 120, v5, v6, v10);
}

void *sub_26A06F590()
{
  v1 = v0;
  v93 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_logger;
  v2 = sub_26A09DE04();
  v3 = sub_26A09E124();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26A066000, v2, v3, "Updating app onboarding properties", v4, 2u);
    MEMORY[0x26D65A520](v4, -1, -1);
  }

  v5 = (v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_extensionProvider);
  result = swift_beginAccess();
  v7 = v5[3];
  if (!v7)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v92 = v5;
  v8 = *__swift_project_boxed_opaque_existential_1(v5, v7);
  v9 = sub_26A0684DC();
  v10 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_onboardingPropertiesByApp;
  swift_beginAccess();
  v99 = v10;
  v11 = *(v1 + v10);

  v13 = sub_26A08184C(v12);

  v15 = sub_26A0796FC(v14, v13);
  v112 = MEMORY[0x277D84FA0];
  v16 = v15 + 56;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 56);
  v20 = (v17 + 63) >> 6;
  v100 = v15;

  v21 = 0;
  v97 = v1;
  v98 = v9;
  v96 = v20;
  v94 = v16;
  if (v19)
  {
    while (1)
    {
      while (1)
      {
LABEL_11:
        v23 = (*(v100 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v19)))));
        v25 = *v23;
        v24 = v23[1];
        swift_beginAccess();
        v26 = *(v1 + v99);
        if (*(v26 + 16))
        {

          v27 = sub_26A099F20(v25, v24);
          if (v28)
          {
            v29 = *(v26 + 56) + 48 * v27;
            v30 = *v29;
            v31 = *(v29 + 8);
            v32 = *(v29 + 24);
            v106 = *(v29 + 16);
            v33 = *(v29 + 32);
            v107 = *(v29 + 40);

            v104 = v30;
            v34 = v31;

            v105 = v32;
          }

          else
          {
            v104 = 0;
            v34 = 0;
            v106 = 0;
            v105 = 0;
            v33 = 0;
            v107 = 0;
          }
        }

        else
        {
          v104 = 0;
          v34 = 0;
          v106 = 0;
          v105 = 0;
          v33 = 0;
          v107 = 0;
        }

        swift_endAccess();
        v35 = *(v9 + 16);
        v102 = v24;
        v101 = v25;
        v103 = v33;
        if (v35)
        {
          v36 = v34;
          v37 = sub_26A099F20(v25, v24);
          if (v38)
          {
            v39 = *(v9 + 56) + 48 * v37;
            v40 = *v39;
            v41 = *(v39 + 8);
            v42 = *(v39 + 16);
            v43 = *(v39 + 24);
            v45 = *(v39 + 32);
            v44 = *(v39 + 40);

            v46 = v45;
            v47 = v42;
            v48 = v44;
          }

          else
          {
            v40 = 0;
            v41 = 0;
            v47 = 0;
            v43 = 0;
            v46 = 0;
            v48 = 0;
          }

          v49 = v104;
          v34 = v36;
        }

        else
        {
          v40 = 0;
          v41 = 0;
          v47 = 0;
          v43 = 0;
          v46 = 0;
          v48 = 0;
          v49 = v104;
        }

        v19 &= v19 - 1;
        if (!v49)
        {
          break;
        }

        if (!v40)
        {
          goto LABEL_35;
        }

        v50 = v47;
        v51 = v46;
        sub_26A078AA8(v40);
        v95 = v34;
        sub_26A078AA8(v49);
        if ((sub_26A086CF8(v49, v40) & 1) == 0)
        {

          sub_26A078A5C(v40);
          sub_26A078A5C(v49);

LABEL_43:

          v1 = v97;
          v9 = v98;
          v57 = v102;
          v20 = v96;
          v16 = v94;
          goto LABEL_44;
        }

        v91 = v40;
        v52 = v50;
        if (v95 != v41)
        {

          sub_26A078A5C(v91);
          sub_26A078A5C(v104);

          goto LABEL_43;
        }

        v53 = v107;
        v16 = v94;
        if (v106 != v52 || v105 != v43)
        {
          v54 = sub_26A09E4D4();
          v53 = v107;
          if ((v54 & 1) == 0)
          {
            v90 = v52;

            sub_26A078A5C(v91);
            sub_26A078A5C(v104);

LABEL_50:

            goto LABEL_37;
          }
        }

        if (v53)
        {
          if (!v48)
          {

            sub_26A078A5C(v91);
            sub_26A078A5C(v104);

            goto LABEL_50;
          }

          if (v103 == v51 && v53 == v48)
          {

            sub_26A078A5C(v91);
            v55 = v104;
            sub_26A078A5C(v104);
LABEL_52:

            v58 = v55;
LABEL_54:
            result = sub_26A078A5C(v58);
            goto LABEL_40;
          }

          v89[1] = v51;
          LODWORD(v90) = sub_26A09E4D4();

          sub_26A078A5C(v91);
          v55 = v104;
          sub_26A078A5C(v104);
          if (v90)
          {
            goto LABEL_52;
          }

          v56 = v104;
        }

        else
        {
          sub_26A078A5C(v91);
          sub_26A078A5C(v104);

          if (!v48)
          {

            v58 = v104;
            goto LABEL_54;
          }

          v56 = v104;
        }

LABEL_36:
        sub_26A078A5C(v56);
LABEL_37:
        v1 = v97;
        v9 = v98;
        v57 = v102;
        v20 = v96;
LABEL_44:
        sub_26A09352C(&v109, v101, v57);

        if (!v19)
        {
          goto LABEL_7;
        }
      }

      if (v40)
      {
LABEL_35:
        sub_26A078A5C(v49);
        v56 = v40;
        goto LABEL_36;
      }

LABEL_40:
      v1 = v97;
      v9 = v98;
      v20 = v96;
      if (!v19)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_11;
    }
  }

  v59 = sub_26A09DE04();
  v60 = sub_26A09E124();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v109 = v62;
    *v61 = 136446210;
    swift_beginAccess();

    v63 = sub_26A09E0A4();
    v65 = v64;

    v66 = sub_26A089EEC(v63, v65, &v109);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_26A066000, v59, v60, "Properties changed for: %{public}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x26D65A520](v62, -1, -1);
    MEMORY[0x26D65A520](v61, -1, -1);
  }

  result = v92;
  v67 = v92[3];
  if (!v67)
  {
    goto LABEL_64;
  }

  v68 = __swift_project_boxed_opaque_existential_1(v92, v92[3]);
  v69 = *(v67 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  v72 = (v89 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v72);

  v73 = *v72;
  v74 = sub_26A0684DC();
  (*(v69 + 8))(v72, v67);
  v75 = *(v1 + v99);
  *(v1 + v99) = v74;

  v76 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
  swift_beginAccess();
  result = sub_26A079100(v1 + v76, &v109, &qword_280369388, &qword_26A09F588);
  v77 = v110;
  if (!v110)
  {
    goto LABEL_65;
  }

  v78 = v111;
  __swift_project_boxed_opaque_existential_1(&v109, v110);
  v79 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps;
  v108[0] = *(v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps);
  v80 = *(v78 + 24);

  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369438, &qword_26A09F648);
  v82 = sub_26A0789F8();
  v80(v108, v81, v82, v77, v78);

  __swift_destroy_boxed_opaque_existential_0(&v109);
  v83 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
  swift_beginAccess();
  result = sub_26A079100(v1 + v83, &v109, &qword_280369398, &qword_26A09F590);
  if (v110)
  {
    v84 = __swift_project_boxed_opaque_existential_1(&v109, v110);
    v85 = *(v1 + v79);
    v86 = *v84;

    sub_26A074528(v87);

    __swift_destroy_boxed_opaque_existential_0(&v109);
    swift_beginAccess();

    sub_26A06D8F4(v88);
    return swift_bridgeObjectRelease_n();
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_26A070394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694D8, &qword_26A09F778);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v5[10] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v5[11] = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
  v10 = sub_26A09DFA4();
  v5[12] = v10;
  v5[13] = v9;

  return MEMORY[0x2822009F8](sub_26A0704F4, v10, v9);
}

uint64_t sub_26A0704F4()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480);
  sub_26A09E044();
  swift_beginAccess();
  v4 = v0[10];
  v5 = v0[11];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26A0705E0;
  v8 = v0[9];
  v9 = v0[7];

  return MEMORY[0x2822003E8](v0 + 15, v4, v5, v9);
}

uint64_t sub_26A0705E0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_26A070700, v4, v3);
}

uint64_t sub_26A070700()
{
  if (*(v0 + 120) == 1 || (v1 = *(v0 + 48), (Strong = swift_weakLoadStrong()) == 0))
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_6;
  }

  v3 = Strong;
  if (sub_26A09E084())
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

LABEL_6:
    v4 = *(v0 + 72);

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v3 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps);

  sub_26A06D8F4(v8);

  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(MEMORY[0x277D85798] + 4);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_26A0705E0;
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);

  return MEMORY[0x2822003E8](v0 + 120, v9, v10, v14);
}

uint64_t sub_26A07087C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694D0, &qword_26A09F770);
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  v5[11] = off_280369A30;
  type metadata accessor for AuthorizationActor();
  v5[12] = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
  v10 = sub_26A09DFA4();
  v5[13] = v10;
  v5[14] = v9;

  return MEMORY[0x2822009F8](sub_26A0709DC, v10, v9);
}

uint64_t sub_26A0709DC()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803693F8, &qword_26A09F5A8);
  sub_26A09E044();
  swift_beginAccess();
  v4 = v0[11];
  v5 = v0[12];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_26A070AC8;
  v8 = v0[10];
  v9 = v0[8];

  return MEMORY[0x2822003E8](v0 + 5, v4, v5, v9);
}

uint64_t sub_26A070AC8()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_26A070BE8, v4, v3);
}

uint64_t sub_26A070BE8()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[7];
    if (swift_weakLoadStrong())
    {
      sub_26A070D4C(v1);

      v3 = v0[11];
      v4 = v0[12];
      v5 = *(MEMORY[0x277D85798] + 4);
      v6 = swift_task_alloc();
      v0[15] = v6;
      *v6 = v0;
      v6[1] = sub_26A070AC8;
      v7 = v0[10];
      v8 = v0[8];

      return MEMORY[0x2822003E8](v0 + 5, v3, v4, v8);
    }

    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26A070D4C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifiers;
  v5 = *(v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifiers);
  v22 = a1;

  sub_26A074C64(v6);
  v7 = v22;

  v8 = sub_26A09DE04();
  v9 = sub_26A09E124();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v10 = 136446466;
    v11 = *(v2 + v4);

    v12 = sub_26A09E0A4();
    v14 = v13;

    v15 = sub_26A089EEC(v12, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    v16 = sub_26A09E0A4();
    v18 = sub_26A089EEC(v16, v17, &v22);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_26A066000, v8, v9, "Updating user configured app identifiers: %{public}s\nChanged: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D65A520](v21, -1, -1);
    MEMORY[0x26D65A520](v10, -1, -1);
  }

  v19 = *(v2 + v4);
  *(v2 + v4) = a1;

  sub_26A06D8F4(v7);
}

void sub_26A070F60()
{
  v1 = v0;
  v2 = sub_26A09DD34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore;
  swift_beginAccess();
  sub_26A079100(v1 + v20, aBlock, &qword_2803693A8, &qword_26A09F598);
  if (v54)
  {
    v21 = __swift_project_boxed_opaque_existential_1(aBlock, v54);
    sub_26A09DD14();
    v22 = *(v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_dismissalTimeout);
    v23 = *v21;
    AuthorizationPersistence.nextDismissalExpirationDate(after:timeout:)(v12, v19);
    v51 = *(v3 + 8);
    v51(v12, v2);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    v52 = v19;
    sub_26A079100(v19, v17, &qword_280369830, "J*");
    if ((*(v3 + 48))(v17, 1, v2) == 1)
    {
      sub_26A069DDC(v17, &qword_280369830, "J*");
      v24 = sub_26A09DE04();
      v25 = sub_26A09E0F4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_26A066000, v24, v25, "No upcoming dismissal expirations, not scheduling a new timer", v26, 2u);
        MEMORY[0x26D65A520](v26, -1, -1);
      }

      sub_26A069DDC(v52, &qword_280369830, "J*");
    }

    else
    {
      (*(v3 + 32))(v10, v17, v2);
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = objc_allocWithZone(MEMORY[0x277CBEBB8]);

      v29 = sub_26A09DCD4();
      v55 = sub_26A077D44;
      v56 = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_26A074A0C;
      v54 = &block_descriptor;
      v30 = _Block_copy(aBlock);
      v31 = [v28 initWithFireDate:v29 interval:0 repeats:v30 block:0.0];
      _Block_release(v30);

      v32 = [objc_opt_self() mainRunLoop];
      v33 = *MEMORY[0x277CBE640];
      v49 = v31;
      [v32 addTimer:v31 forMode:v33];

      v34 = *(v3 + 16);
      v35 = v7;
      v50 = v10;
      v34(v7, v10, v2);
      v36 = sub_26A09DE04();
      v37 = sub_26A09E0F4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        aBlock[0] = v39;
        *v38 = 136315138;
        sub_26A077D64(&qword_2803694A8, MEMORY[0x277CC9578]);
        v40 = sub_26A09E4B4();
        v42 = v41;
        v51(v35, v2);
        v43 = sub_26A089EEC(v40, v42, aBlock);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_26A066000, v36, v37, "Scheduled dismissal update timer for %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x26D65A520](v39, -1, -1);
        MEMORY[0x26D65A520](v38, -1, -1);
      }

      else
      {

        v51(v7, v2);
      }

      v44 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_dismissalTimer;
      swift_beginAccess();
      v45 = *(v1 + v44);
      v46 = v50;
      if (v45)
      {
        swift_endAccess();
        [v45 invalidate];
        v51(v46, v2);
        sub_26A069DDC(v52, &qword_280369830, "J*");
      }

      else
      {
        v51(v50, v2);
        sub_26A069DDC(v52, &qword_280369830, "J*");
        swift_endAccess();
      }

      v47 = *(v1 + v44);
      *(v1 + v44) = v49;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26A0715F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694B8, &qword_26A09F708);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  if (qword_280369100 != -1)
  {
    swift_once();
  }

  type metadata accessor for AuthorizationActor();
  sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
  sub_26A09DFA4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v8, a1, v4);
  v9 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations;
  v10 = *(a2 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_26A07B5D8(0, v10[2] + 1, 1, v10);
    *(a2 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_26A07B5D8(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(a2 + v9) = v10;
  return result;
}

uint64_t sub_26A07182C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps);

  v74 = a1;
  v9 = sub_26A091978(a1, a2, v8);

  if ((v9 & 1) == 0)
  {
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v11 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_onboardingPropertiesByApp;
  swift_beginAccess();
  v12 = *(v7 + v11);
  v70 = a3;
  if (*(v12 + 16) && (v13 = sub_26A099F20(v74, a2), (v14 & 1) != 0))
  {
    v15 = *(v12 + 56) + 48 * v13;
    v16 = *v15;
    v69 = *(v15 + 8);
    v17 = *(v15 + 24);
    v68 = *(v15 + 16);
    v65 = *(v15 + 40);
    v66 = *(v15 + 32);

    v67 = v17;
  }

  else
  {
    v16 = 0;
    v69 = 0;
    v67 = 0;
    v68 = 0;
    v65 = 0;
    v66 = 0;
  }

  swift_endAccess();
  v18 = sub_26A077544(MEMORY[0x277D84F90]);
  v72 = v16;
  if (!v16)
  {
    v40 = 0;
    while (1)
    {
      v41 = *(&unk_287AFC078 + v40 + 32);
      v76[0] = v41;
      sub_26A077CA8(v41);
      sub_26A071DE4(v74, a2, v76, v77);
      v42 = v77[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76[0] = v18;
      v44 = sub_26A099F98(v41);
      v46 = v18[2];
      v47 = (v45 & 1) == 0;
      v37 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v37)
      {
        goto LABEL_61;
      }

      v49 = v45;
      if (v18[3] < v48)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v53 = v44;
      sub_26A07F948();
      v44 = v53;
      v18 = v76[0];
      if ((v49 & 1) == 0)
      {
LABEL_37:
        v18[(v44 >> 6) + 8] |= 1 << v44;
        *(v18[6] + 8 * v44) = v41;
        *(v18[7] + v44) = v42;
        v51 = v18[2];
        v37 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v37)
        {
          goto LABEL_62;
        }

        v18[2] = v52;
        goto LABEL_30;
      }

LABEL_29:
      *(v18[7] + v44) = v42;
      sub_26A077CFC(v41);
LABEL_30:
      v40 += 8;
      if (v40 == 40)
      {
        v54 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
        swift_beginAccess();
        sub_26A079100(v7 + v54, v76, &qword_280369398, &qword_26A09F590);
        if (!v76[3])
        {
          goto LABEL_65;
        }

        v55 = sub_26A083068(v74, a2);
        sub_26A069DDC(v76, &qword_280369398, &qword_26A09F590);
        v16 = 0;
        v39 = v66;
        if (v55)
        {
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v76[0] = v18;
          sub_26A07EACC(3, 4, v56);
          v18 = v76[0];
        }

LABEL_44:
        v76[0] = 2;
        sub_26A071DE4(v74, a2, v76, &v75);
        v57 = v75;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v76[0] = v18;
        sub_26A07EACC(v57, 2, v58);
        v59 = v76[0];
        if (v16)
        {
          v60 = v16;
        }

        else
        {
          v60 = MEMORY[0x277D84FA0];
        }

        if (v16)
        {
          v61 = v65;
        }

        else
        {
          v61 = 0;
        }

        if (v16)
        {
          v62 = v67;
        }

        else
        {
          v39 = 0;
          v62 = 0;
        }

        if (v16)
        {
          v63 = v68;
        }

        else
        {
          v63 = 0;
        }

        if (v16)
        {
          v64 = v69;
        }

        else
        {
          v64 = 0;
        }

        result = sub_26A077CB8(0, 0);
        *v70 = v74;
        *(v70 + 8) = a2;
        *(v70 + 16) = v60;
        *(v70 + 24) = v59;
        *(v70 + 32) = v64;
        *(v70 + 40) = v63;
        *(v70 + 48) = v62;
        *(v70 + 56) = v39;
        *(v70 + 64) = v61;
        return result;
      }
    }

    sub_26A07C75C(v48, isUniquelyReferenced_nonNull_native);
    v44 = sub_26A099F98(v41);
    if ((v49 & 1) != (v50 & 1))
    {
      goto LABEL_66;
    }

LABEL_36:
    v18 = v76[0];
    if ((v49 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  v19 = v16 + 56;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v16 + 56);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  v71 = a2;
  while (v22)
  {
    v25 = v24;
LABEL_18:
    v26 = *(*(v16 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v22)))));
    v76[0] = v26;
    sub_26A077CA8(v26);
    sub_26A071DE4(v74, a2, v76, v77);
    v73 = v77[0];
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v18;
    v29 = sub_26A099F98(v26);
    v30 = v18[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_63;
    }

    v33 = v28;
    if (v18[3] >= v32)
    {
      if ((v27 & 1) == 0)
      {
        sub_26A07F948();
      }
    }

    else
    {
      sub_26A07C75C(v32, v27);
      v34 = sub_26A099F98(v26);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_66;
      }

      v29 = v34;
    }

    v22 &= v22 - 1;
    v18 = v76[0];
    if (v33)
    {
      *(*(v76[0] + 56) + v29) = v73;
      sub_26A077CFC(v26);
    }

    else
    {
      *(v76[0] + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v18[6] + 8 * v29) = v26;
      *(v18[7] + v29) = v73;
      v36 = v18[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_64;
      }

      v18[2] = v38;
    }

    v24 = v25;
    a2 = v71;
    v16 = v72;
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      v39 = v66;
      goto LABEL_44;
    }

    v22 = *(v19 + 8 * v25);
    ++v24;
    if (v22)
    {
      goto LABEL_18;
    }
  }

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
  __break(1u);
LABEL_66:
  result = sub_26A09E504();
  __break(1u);
  return result;
}

uint64_t sub_26A071DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v39[0] = *a3;
  v9 = v39[0];
  result = sub_26A0722EC(a1, a2, v39);
  v11 = result;
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_29;
      }

      v16 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
      swift_beginAccess();
      result = sub_26A079100(v5 + v16, v39, &qword_280369388, &qword_26A09F588);
      v17 = v40;
      if (!v40)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v18 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      (*(v18 + 8))(&v38, a1, a2, v17, v18);
      v19 = v38 | ((WORD2(v38) | (BYTE6(v38) << 16)) << 32);
      result = __swift_destroy_boxed_opaque_existential_0(v39);
      if ((v19 & 0xFF00000000) == 0x200000000)
      {
        goto LABEL_39;
      }

      v15 = 2;
      if (v19 > 2)
      {
        if (v19 != 3 && v19 != 4)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      if (v19)
      {
        if (v19 != 2)
        {
          goto LABEL_56;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v24 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
      swift_beginAccess();
      result = sub_26A079100(v5 + v24, v39, &qword_280369388, &qword_26A09F588);
      v25 = v40;
      if (!v40)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v26 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      (*(v26 + 8))(&v38, a1, a2, v25, v26);
      v23 = v38 | ((WORD2(v38) | (BYTE6(v38) << 16)) << 32);
      result = __swift_destroy_boxed_opaque_existential_0(v39);
      if ((v23 & 0xFF00000000) == 0x200000000)
      {
        goto LABEL_39;
      }

      v15 = 2;
      if (v23 > 2)
      {
        if (v23 != 3)
        {
          if (v23 != 4)
          {
            goto LABEL_56;
          }

          v36 = *(v5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifiers);

          v37 = sub_26A091978(a1, a2, v36);

          if ((v37 & 1) == 0)
          {
            v33 = (v11 & BYTE6(v23) & 1) == 0;
LABEL_36:
            if (v33)
            {
              v15 = 2;
            }

            else
            {
              v15 = 1;
            }

            goto LABEL_56;
          }
        }

LABEL_55:
        v15 = 3;
        goto LABEL_56;
      }

      if (v23)
      {
        goto LABEL_27;
      }
    }

LABEL_35:
    v33 = (v11 & 1) == 0;
    goto LABEL_36;
  }

  switch(v9)
  {
    case 2:
      v20 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
      swift_beginAccess();
      result = sub_26A079100(v5 + v20, v39, &qword_280369388, &qword_26A09F588);
      v21 = v40;
      if (!v40)
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v22 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      (*(v22 + 8))(&v38, a1, a2, v21, v22);
      v23 = v38 | ((WORD2(v38) | (BYTE6(v38) << 16)) << 32);
      result = __swift_destroy_boxed_opaque_existential_0(v39);
      if ((v23 & 0xFF00000000) == 0x200000000)
      {
        goto LABEL_39;
      }

      v15 = 2;
      if (v23 > 2)
      {
        if (v23 == 3)
        {
          goto LABEL_55;
        }

        if (v23 != 4)
        {
          goto LABEL_56;
        }

        v34 = *(v5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifiers);

        v35 = sub_26A091978(a1, a2, v34);

        v15 = 3;
        if ((v35 & 1) != 0 || (v23 & 0x100000000) != 0)
        {
          goto LABEL_56;
        }

LABEL_46:
        if ((v23 & 0x10000000000) == 0 || (v11 & 1) == 0)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        goto LABEL_56;
      }

      if (!v23)
      {
        goto LABEL_46;
      }

LABEL_27:
      if (v23 != 2)
      {
        goto LABEL_56;
      }

      goto LABEL_41;
    case 3:
      goto LABEL_55;
    case 4:
      v12 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
      swift_beginAccess();
      result = sub_26A079100(v5 + v12, v39, &qword_280369398, &qword_26A09F590);
      if (v40)
      {
        v13 = sub_26A083068(a1, a2);
        result = sub_26A069DDC(v39, &qword_280369398, &qword_26A09F590);
        v14 = (v13 & 1) == 0;
        goto LABEL_7;
      }

      goto LABEL_59;
  }

LABEL_29:
  v27 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
  swift_beginAccess();
  result = sub_26A079100(v5 + v27, v39, &qword_280369398, &qword_26A09F590);
  if (v40)
  {
    v28 = *__swift_project_boxed_opaque_existential_1(v39, v40);
    v29 = sub_26A081988(a1, a2);
    result = __swift_destroy_boxed_opaque_existential_0(v39);
    if (v29)
    {
      if (*(v29 + 16))
      {
        v30 = sub_26A09A024(v9);
        if (v31)
        {
          v32 = *(*(v29 + 56) + 8 * v30);

          if (v32 != 104)
          {
            if (v32 != 100)
            {
              result = HKAuthorizationStatusAllowsReading();
              v14 = result == 0;
LABEL_7:
              if (v14)
              {
                v15 = 2;
              }

              else
              {
                v15 = 3;
              }

              goto LABEL_56;
            }

            goto LABEL_35;
          }

LABEL_41:
          v15 = 4;
          goto LABEL_56;
        }
      }

      v15 = 2;
LABEL_56:
      *a4 = v15;
      return result;
    }

LABEL_39:
    v15 = 0;
    goto LABEL_56;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_26A0722EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = sub_26A09DD34();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v40 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = *a3;
  v23 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore;
  swift_beginAccess();
  result = sub_26A079100(v4 + v23, v44, &qword_2803693A8, &qword_26A09F598);
  if (!v45)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v25 = *__swift_project_boxed_opaque_existential_1(v44, v45);
  v26 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
  swift_beginAccess();
  v27 = *(v25 + v26);
  if (*(v27 + 16) && (v28 = sub_26A099F20(a1, a2), (v29 & 1) != 0))
  {
    v30 = *(*(v27 + 56) + 8 * v28);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v30 = MEMORY[0x277D84FA0];
  }

  __swift_destroy_boxed_opaque_existential_0(v44);
  if (sub_26A091A70(v22, v30))
  {

    return 0;
  }

  result = sub_26A079100(v4 + v23, v44, &qword_2803693A8, &qword_26A09F598);
  if (!v45)
  {
    goto LABEL_16;
  }

  v31 = *__swift_project_boxed_opaque_existential_1(v44, v45);
  AuthorizationPersistence.dismissalDate(for:)(a1, a2, v21);
  __swift_destroy_boxed_opaque_existential_0(v44);
  sub_26A079100(v21, v19, &qword_280369830, "J*");
  v32 = v43;
  if ((*(v43 + 48))(v19, 1, v8) == 1)
  {
    sub_26A069DDC(v21, &qword_280369830, "J*");
    sub_26A069DDC(v19, &qword_280369830, "J*");
  }

  else
  {
    v33 = v40;
    (*(v32 + 32))(v40, v19, v8);
    v34 = v41;
    sub_26A09DD14();
    v35 = *(v4 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_dismissalTimeout);
    v36 = v42;
    sub_26A09DCC4();
    v37 = sub_26A09DCF4();
    v38 = *(v32 + 8);
    v38(v36, v8);
    v38(v34, v8);
    v38(v33, v8);
    sub_26A069DDC(v21, &qword_280369830, "J*");
    if (v37)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26A0726E4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_26A09DFF4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_26A06B5F8(0, 0, v6, &unk_26A09F6C0, v8);
}

uint64_t sub_26A0727F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26A072810, 0, 0);
}

uint64_t sub_26A072810()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    if (qword_280369100 != -1)
    {
      swift_once();
    }

    type metadata accessor for AuthorizationActor();
    sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
    v4 = sub_26A09DFA4();

    return MEMORY[0x2822009F8](sub_26A072960, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_26A072960()
{
  v1 = *(v0 + 56);
  sub_26A0729F8();

  return MEMORY[0x2822009F8](sub_26A0729D0, 0, 0);
}

void sub_26A0729F8()
{
  v1 = v0;
  v2 = sub_26A09DE04();
  v3 = sub_26A09E124();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26A066000, v2, v3, "Dismissal timer fired", v4, 2u);
    MEMORY[0x26D65A520](v4, -1, -1);
  }

  v5 = *(v1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps);

  sub_26A06D8F4(v6);

  sub_26A070F60();
}

uint64_t sub_26A072ACC(uint64_t a1)
{
  v2 = sub_26A09DE24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  (*(v3 + 16))(v6, a1 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_logger, v2);

  v7 = sub_26A09DE04();
  v8 = sub_26A09E124();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26A066000, v7, v8, "Performing AuthorizationManager statedump", v9, 2u);
    MEMORY[0x26D65A520](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  swift_unownedRetainStrong();
  sub_26A072CC4();

  sub_26A09DD74();
  sub_26A09DD54();
  sub_26A09DD64();

  sub_26A09DDC4();
}

uint64_t sub_26A072CC4()
{
  v1 = sub_26A0779DC(MEMORY[0x277D84F90]);
  v2 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_onboardingPropertiesByApp;
  swift_beginAccess();
  v66 = v0;
  v3 = *(v0 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v69 = v3;

  v9 = 0;
  v10 = MEMORY[0x277D837D0];
  v67 = v8;
  v68 = v4;
  while (v7)
  {
    v73 = v1;
    v13 = v9;
LABEL_12:
    v14 = __clz(__rbit64(v7)) | (v13 << 6);
    v15 = (*(v69 + 48) + 16 * v14);
    v16 = v15[1];
    v71 = *v15;
    v17 = *(v69 + 56) + 48 * v14;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 24);
    v21 = *(v17 + 40);
    strcpy(&v75, "authorizations");
    HIBYTE(v75) = -18;

    v72 = v16;

    sub_26A09E284();
    sub_26A0741A0(v18);
    *&v75 = v22;

    sub_26A074E4C(&v75);
    v70 = 0;

    v23 = v75;
    v79[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694E8, &qword_26A09F8E0);
    v79[5] = v23;
    *&v75 = 0xD000000000000010;
    *(&v75 + 1) = 0x800000026A0A0DD0;
    sub_26A09E284();
    v81 = MEMORY[0x277D839B0];
    v80[40] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694F0, &qword_26A09F7C0);
    v24 = sub_26A09E394();

    sub_26A079100(v79, &v75, &qword_2803694F8, &unk_26A09F7C8);
    v25 = sub_26A09A0B8(&v75);
    v1 = v73;
    if (v26)
    {
      goto LABEL_31;
    }

    *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v25;
    v27 = v24[6] + 40 * v25;
    v28 = v75;
    v29 = v76;
    *(v27 + 32) = v77;
    *v27 = v28;
    *(v27 + 16) = v29;
    sub_26A0697B4(v78, (v24[7] + 32 * v25));
    v30 = v24[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_32;
    }

    v24[2] = v32;
    sub_26A079100(v80, &v75, &qword_2803694F8, &unk_26A09F7C8);
    v33 = sub_26A09A0B8(&v75);
    if (v34)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      v65 = v70;
LABEL_36:

      __break(1u);
      return result;
    }

    *(v24 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v33;
    v35 = v24[6] + 40 * v33;
    v36 = v75;
    v37 = v76;
    *(v35 + 32) = v77;
    *v35 = v36;
    *(v35 + 16) = v37;
    sub_26A0697B4(v78, (v24[7] + 32 * v33));
    v38 = v24[2];
    v31 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v31)
    {
      goto LABEL_32;
    }

    v24[2] = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694F8, &unk_26A09F7C8);
    swift_arrayDestroy();

    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369298, &unk_26A09F4A0);
    *&v82 = v24;
    sub_26A0697B4(&v82, &v75);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = sub_26A099F20(v71, v72);
    v43 = v73[2];
    v44 = (v42 & 1) == 0;
    v31 = __OFADD__(v43, v44);
    v45 = v43 + v44;
    if (v31)
    {
      goto LABEL_33;
    }

    v46 = v42;
    if (v73[3] >= v45)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = v41;
        sub_26A07FF40();
        v41 = v51;
      }
    }

    else
    {
      sub_26A07D3D8(v45, isUniquelyReferenced_nonNull_native);
      v41 = sub_26A099F20(v71, v72);
      if ((v46 & 1) != (v47 & 1))
      {
        sub_26A09E504();
        __break(1u);
        v65 = v10;
        goto LABEL_36;
      }
    }

    v7 &= v7 - 1;
    if (v46)
    {
      v11 = v41;

      v12 = (v73[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0(v12);
      sub_26A0697B4(&v75, v12);
    }

    else
    {
      v73[(v41 >> 6) + 8] |= 1 << v41;
      v48 = (v73[6] + 16 * v41);
      *v48 = v71;
      v48[1] = v72;
      sub_26A0697B4(&v75, (v73[7] + 32 * v41));
      v49 = v73[2];
      v31 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v31)
      {
        goto LABEL_34;
      }

      v73[2] = v50;
    }

    v9 = v13;
    v8 = v67;
    v4 = v68;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v73 = v1;
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369500, &qword_26A09F7D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A09F510;
  *(inited + 32) = 0x64657472617473;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = *(v66 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_started);
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = 0x416465776F6C6C61;
  *(inited + 88) = 0xEB00000000737070;
  v53 = *(v66 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps);
  v54 = *(v53 + 16);
  if (v54)
  {
    v55 = sub_26A07B7E4(v54, 0);
    v74 = sub_26A075AB8(&v75, v55 + 4, v54, v53);

    sub_26A0790E8();
    if (v74 != v54)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v55 = MEMORY[0x277D84F90];
  }

  *&v75 = v55;

  sub_26A074E4C(&v75);

  v56 = v75;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694E8, &qword_26A09F8E0);
  *(inited + 96) = v56;
  *(inited + 120) = v57;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x800000026A0A1290;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369290, &qword_26A09F7E0);
  *(inited + 144) = v1;
  *(inited + 168) = v58;
  *(inited + 176) = 0xD000000000000014;
  *(inited + 184) = 0x800000026A0A1430;
  v59 = v66 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
  os_unfair_lock_lock((v66 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex));
  v60 = *(v59 + 8);

  os_unfair_lock_unlock(v59);
  *&v75 = v60;
  v61 = sub_26A073480();

  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369298, &unk_26A09F4A0);
  *(inited + 192) = v61;
  v62 = sub_26A0779DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369508, &qword_26A09F7E8);
  swift_arrayDestroy();
  v63 = sub_26A07365C(v62);

  return v63;
}

uint64_t sub_26A073480()
{
  v1 = *v0;
  v2 = sub_26A0779DC(MEMORY[0x277D84F90]);

  result = sub_26A08184C(v3);
  v5 = result;
  v6 = 0;
  v7 = result + 56;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = v10;
LABEL_10:
    v10 = (v12 - 1) & v12;
    if (*(v1 + 16))
    {
      v14 = (*(v5 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v12)))));
      v16 = *v14;
      v15 = v14[1];

      v17 = sub_26A099F20(v16, v15);
      if (v18)
      {
        v19 = *(v1 + 56) + 72 * v17;
        v25 = *(v19 + 16);
        v26 = *(v19 + 32);
        v27 = *(v19 + 48);
        v28 = *(v19 + 64);
        v24 = *v19;
        v20 = sub_26A073B88();
        *(&v25 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369298, &unk_26A09F4A0);
        *&v24 = v20;
        sub_26A0697B4(&v24, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_26A07EDB4(v23, v16, v15, isUniquelyReferenced_nonNull_native);
      }
    }
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      v22 = sub_26A07365C(v2);

      return v22;
    }

    v12 = *(v7 + 8 * v13);
    ++v6;
    if (v12)
    {
      v6 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A07365C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694F0, &qword_26A09F7C0);
    v2 = sub_26A09E394();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26A069E3C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_26A0697B4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_26A0697B4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_26A0697B4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_26A09E264();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_26A0697B4(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t AuthorizationManager.deinit()
{
  v1 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_logger;
  v2 = sub_26A09DE24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_26A069DDC(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider, &qword_280369388, &qword_26A09F588);
  sub_26A069DDC(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider, &qword_280369398, &qword_26A09F590);
  sub_26A069DDC(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore, &qword_2803693A8, &qword_26A09F598);
  sub_26A069DDC(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_extensionProvider, &qword_2803693B8, &qword_26A09F5A0);
  v3 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations);

  sub_26A076D40(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex + 8);
  v4 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations);

  v5 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps);

  v6 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_onboardingPropertiesByApp);

  v7 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorsByApp);

  v8 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifierStream;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803693F8, &qword_26A09F5A8);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifierContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369370, &qword_26A09F580);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifiers);

  v13 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_stateDumpHandle);

  return v0;
}

uint64_t AuthorizationManager.__deallocating_deinit()
{
  AuthorizationManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A073B88()
{
  v50 = *v0;
  v51 = *(v0 + 8);
  v1 = *(v0 + 24);
  v52 = *(v0 + 16);
  v68 = *(v0 + 32);
  v2 = *(v0 + 49);
  v66 = *(v0 + 33);
  *v67 = v2;
  *&v67[15] = *(v0 + 64);
  v3 = sub_26A0778C8(MEMORY[0x277D84F90]);
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v55 = v1;

  v9 = 0;
  v53 = v8;
  v54 = v1 + 64;
  while (v7)
  {
    v12 = v9;
LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = *(*(v55 + 48) + 8 * v13);
    v15 = *(*(v55 + 56) + v13);
    v56 = v14;
    if (v14 <= 1)
    {
      if (!v14)
      {
        v16 = 0x6F4C737961776C61;
        v17 = 0xEE006E6F69746163;
        goto LABEL_23;
      }

      if (v14 == 1)
      {
        v16 = 0x636F4C6573556E69;
        v17 = 0xED00006E6F697461;
        goto LABEL_23;
      }
    }

    else
    {
      switch(v14)
      {
        case 2:
          v16 = 0xD000000000000013;
          v17 = 0x800000026A0A0D90;
          goto LABEL_23;
        case 3:
          v17 = 0xEE006E6F69746365;
          v16 = 0x746544646E756F73;
          goto LABEL_23;
        case 4:
          v16 = 0x694B68746C616568;
          v17 = 0xEF73736170794274;
          goto LABEL_23;
      }
    }

    v60 = 0xEA00000000002D74;
    v18 = sub_26A09DEA4();
    v20 = v19;
    sub_26A077CA8(v14);
    MEMORY[0x26D659940](v18, v20);

    v16 = 0x694B68746C616568;
    v17 = 0xEA00000000002D74;
LABEL_23:
    v21 = sub_26A09DEB4();
    v23 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v3;
    v25 = v16;
    v8 = sub_26A099F20(v16, v17);
    v27 = v3;
    v28 = v3[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_34;
    }

    v31 = v26;
    if (v27[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26A07FDC8();
      }
    }

    else
    {
      sub_26A07D118(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_26A099F20(v25, v17);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_36;
      }

      v8 = v32;
    }

    v7 &= v7 - 1;
    if (v31)
    {

      v3 = v59;
      v10 = (v59[7] + 16 * v8);
      v11 = v10[1];
      *v10 = v21;
      v10[1] = v23;

      sub_26A077CFC(v56);
    }

    else
    {
      v3 = v59;
      v59[(v8 >> 6) + 8] |= 1 << v8;
      v34 = (v3[6] + 16 * v8);
      *v34 = v25;
      v34[1] = v17;
      v35 = (v3[7] + 16 * v8);
      *v35 = v21;
      v35[1] = v23;
      sub_26A077CFC(v56);
      v36 = v3[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_35;
      }

      v3[2] = v38;
    }

    v9 = v12;
    v8 = v53;
    v4 = v54;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369510, &qword_26A09F7F0);
      v39 = v3;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26A09F520;
      v41 = MEMORY[0x277D837D0];
      sub_26A09E284();
      v59 = v50;
      v60 = v51;
      v61 = v52;
      v62 = v55;
      v63 = v68;
      v64 = v66;
      *v65 = *v67;
      *&v65[15] = *&v67[15];
      AuthorizationDescriptor.eligibleForModalIncidentalUsePrompt.getter();
      v42 = MEMORY[0x277D839B0];
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = v43 & 1;
      sub_26A09E284();
      *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369518, &qword_26A09F7F8);
      *(inited + 144) = v39;

      sub_26A09E284();
      *(inited + 240) = v41;
      *(inited + 216) = v50;
      *(inited + 224) = v51;
      v58 = 0x800000026A0A14C0;

      sub_26A09E284();
      sub_26A0741A0(v52);
      v45 = v44;

      v57 = v45;

      sub_26A074E4C(&v57);

      v46 = v57;
      *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694E8, &qword_26A09F8E0);
      *(inited + 288) = v46;
      v57 = 0xD000000000000010;
      v58 = 0x800000026A0A0DD0;
      sub_26A09E284();
      v47 = v68;
      *(inited + 384) = v42;
      *(inited + 360) = v47;
      v48 = sub_26A07778C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694F8, &unk_26A09F7C8);
      swift_arrayDestroy();
      return v48;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_26A09E504();
  __break(1u);

  __break(1u);
  return result;
}

void sub_26A0741A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v34 = MEMORY[0x277D84F90];
  v32 = *(a1 + 16);
  sub_26A0803D0(0, v1, 0);
  v2 = v34;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  v5 = sub_26A09E1E4();
  v7 = v32;
  v6 = a1;
  v8 = v5;
  v9 = 0;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v3 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_33;
    }

    v12 = *(v6 + 36);
    v13 = *(*(v6 + 48) + 8 * v8);
    if (v13 <= 1)
    {
      if (!v13)
      {
        v14 = 0x6F4C737961776C61;
        v15 = 0xEE006E6F69746163;
        goto LABEL_20;
      }

      if (v13 == 1)
      {
        v14 = 0x636F4C6573556E69;
        v15 = 0xED00006E6F697461;
        goto LABEL_20;
      }
    }

    else
    {
      switch(v13)
      {
        case 2:
          v14 = 0xD000000000000013;
          v15 = 0x800000026A0A0D90;
          goto LABEL_20;
        case 3:
          v15 = 0xEE006E6F69746365;
          v14 = 0x746544646E756F73;
          goto LABEL_20;
        case 4:
          v14 = 0x694B68746C616568;
          v15 = 0xEF73736170794274;
          goto LABEL_20;
      }
    }

    v16 = *(v6 + 36);
    v30 = sub_26A09DEA4();
    v18 = v17;
    sub_26A077CA8(v13);
    MEMORY[0x26D659940](v30, v18);

    sub_26A077CFC(v13);
    v12 = v16;
    v7 = v32;
    v6 = a1;
    v14 = 0x694B68746C616568;
    v15 = 0xEA00000000002D74;
LABEL_20:
    v20 = *(v2 + 16);
    v19 = *(v2 + 24);
    if (v20 >= v19 >> 1)
    {
      v31 = v12;
      sub_26A0803D0((v19 > 1), v20 + 1, 1);
      v12 = v31;
      v7 = v32;
      v6 = a1;
    }

    *(v2 + 16) = v20 + 1;
    v21 = v2;
    v22 = v2 + 16 * v20;
    *(v22 + 32) = v14;
    *(v22 + 40) = v15;
    v10 = 1 << *(v6 + 32);
    if (v8 >= v10)
    {
      goto LABEL_34;
    }

    v3 = a1 + 56;
    v23 = *(a1 + 56 + 8 * v11);
    if ((v23 & (1 << v8)) == 0)
    {
      goto LABEL_35;
    }

    if (v12 != *(v6 + 36))
    {
      goto LABEL_36;
    }

    v24 = v23 & (-2 << (v8 & 0x3F));
    if (v24)
    {
      v10 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v11 << 6;
      v26 = v11 + 1;
      v27 = (a1 + 64 + 8 * v11);
      while (v26 < (v10 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          sub_26A0790F0(v8, v12, 0);
          v7 = v32;
          v6 = a1;
          v10 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      sub_26A0790F0(v8, v12, 0);
      v7 = v32;
      v6 = a1;
    }

LABEL_4:
    ++v9;
    v8 = v10;
    v2 = v21;
    if (v9 == v7)
    {
      return;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_26A074528(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v48 = &i - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &i - v8;
  v10 = OBJC_IVAR____TtC18SmartStackSettings30HealthKitAuthorizationProvider_authorizationRecordByBundleIdentifier;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v55 = a1;

  v13 = sub_26A078C74(v12, sub_26A078AF8);

  v14 = *(v2 + v10);
  v52 = v10;
  *(v2 + v10) = v13;

  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;

  v21 = 0;
  v50 = a1;
  v51 = v19;
  v49 = v2;
  for (i = v9; v18; a1 = v50)
  {
LABEL_10:
    while (1)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = (*(a1 + 48) + ((v21 << 10) | (16 * v23)));
      v25 = *v24;
      v26 = v24[1];
      v27 = v52;
      swift_beginAccess();
      v28 = *(*(v2 + v27) + 16);

      if (!v28)
      {
        break;
      }

      sub_26A099F20(v25, v26);
      if ((v29 & 1) == 0)
      {
        break;
      }

      swift_endAccess();

      v19 = v51;
      if (!v18)
      {
        goto LABEL_6;
      }
    }

    v53 = v25;
    swift_endAccess();
    v30 = sub_26A09DFF4();
    v54 = *(v30 - 8);
    (*(v54 + 56))(v9, 1, 1, v30);
    v31 = qword_280369100;

    v32 = v31 == -1;
    v33 = v9;
    v34 = v2;
    if (!v32)
    {
      swift_once();
    }

    v35 = off_280369A30;
    v36 = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
    v37 = swift_allocObject();
    v37[2] = v35;
    v37[3] = v36;
    v38 = v53;
    v37[4] = v34;
    v37[5] = v38;
    v37[6] = v26;
    v39 = v33;
    v40 = v48;
    sub_26A079100(v39, v48, &qword_280369340, &qword_26A09F530);
    LODWORD(v36) = (*(v54 + 48))(v40, 1, v30);

    if (v36 == 1)
    {
      sub_26A069DDC(v40, &qword_280369340, &qword_26A09F530);
    }

    else
    {
      sub_26A09DFE4();
      (*(v54 + 8))(v40, v30);
    }

    v42 = v37[2];
    v41 = v37[3];
    swift_unknownObjectRetain();

    v2 = v49;
    if (v42)
    {
      swift_getObjectType();
      v43 = sub_26A09DFA4();
      v45 = v44;
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v9 = i;
    sub_26A069DDC(i, &qword_280369340, &qword_26A09F530);
    v46 = swift_allocObject();
    *(v46 + 16) = &unk_26A09F780;
    *(v46 + 24) = v37;
    if (v45 | v43)
    {
      v56 = 0;
      v57 = 0;
      v58 = v43;
      v59 = v45;
    }

    v19 = v51;
    swift_task_create();
  }

LABEL_6:
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
    }

    v18 = *(v15 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_26A074A0C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_26A074A74(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26A074B6C;

  return v7(a1);
}

uint64_t sub_26A074B6C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26A074C64(uint64_t result)
{
  v2 = 0;
  v22 = result;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v22 + 48) + ((v2 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *v1;
      if (*(*v1 + 16))
      {
        break;
      }

LABEL_7:
      v1 = v21;
      sub_26A09352C(&v23, v12, v11);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v14 = *(v13 + 40);
    sub_26A09E514();

    sub_26A09DEE4();
    v15 = sub_26A09E534();
    v16 = -1 << *(v13 + 32);
    v17 = v15 & ~v16;
    if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_7;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(v13 + 48) + 16 * v17);
      v20 = *v19 == v12 && v19[1] == v11;
      if (v20 || (sub_26A09E4D4() & 1) != 0)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v1 = v21;
    sub_26A095EB0(v12, v11);
  }

  while (v6);
  while (1)
  {
LABEL_8:
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
      goto LABEL_12;
    }
  }
}

uint64_t sub_26A074E4C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26A0765CC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26A074EB8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26A074EB8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26A09E4A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26A09DF94();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26A075080(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26A074FB0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26A074FB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_26A09E4D4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26A075080(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_26A075910(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_26A07565C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_26A09E4D4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_26A09E4D4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26A075924(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_26A075924((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_26A07565C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26A075910(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_26A075884(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_26A09E4D4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_26A07565C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_26A09E4D4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_26A09E4D4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_26A075884(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26A075910(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_26A075924(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369528, &qword_26A09F808);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_26A075A28(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_26A078B00(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_26A075AB8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26A075C10(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26A075D04;

  return v6(v2 + 32);
}

uint64_t sub_26A075D04()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_26A075E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369340, &qword_26A09F530);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v54 = &v46 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694C0, &qword_26A09F710);
  v15 = *(v53 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v53);
  v18 = (&v46 - v17);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369370, &qword_26A09F580);
  v51 = *(v52 - 8);
  v19 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v46 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803693F8, &qword_26A09F5A8);
  v48 = *(v49 - 8);
  v21 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v47 = &v46 - v22;
  v59[3] = type metadata accessor for CoreLocationAuthorizationProvider();
  v59[4] = &protocol witness table for CoreLocationAuthorizationProvider;
  v59[0] = a1;
  v58[3] = type metadata accessor for HealthKitAuthorizationProvider();
  v58[4] = &off_287AFC5F0;
  v58[0] = a2;
  v57[3] = type metadata accessor for AuthorizationPersistence();
  v57[4] = &off_287AFC588;
  v57[0] = a3;
  v56[3] = type metadata accessor for AuthorizationExtensionProvider();
  v56[4] = &off_287AFC108;
  v56[0] = a4;
  sub_26A09DE14();
  v23 = a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_locationAuthorizationProvider;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v24 = a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_healthAuthorizationProvider;
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  v25 = a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_ineligibilityStore;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_extensionProvider;
  *(v26 + 32) = 0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_started) = 0;
  v27 = MEMORY[0x277D84F90];
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_startedContinuations) = MEMORY[0x277D84F90];
  v28 = a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionMutex;
  if (qword_280369108 != -1)
  {
    swift_once();
  }

  v29 = qword_280369B18;
  *v28 = 0;
  *(v28 + 8) = v29;
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorCollectionContinuations) = v27;
  v30 = MEMORY[0x277D84FA0];
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_allowedApps) = MEMORY[0x277D84FA0];
  v31 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_onboardingPropertiesByApp;

  *(a5 + v31) = sub_26A0765E0(v27);
  v32 = OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_descriptorsByApp;
  *(a5 + v32) = sub_26A077384(v27);
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_dismissalTimer) = 0;
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifiers) = v30;
  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_stateDumpHandle) = 0;
  sub_26A0780DC(v59, v55);
  swift_beginAccess();
  sub_26A078140(v55, v23, &qword_280369388, &qword_26A09F588);
  swift_endAccess();
  sub_26A0780DC(v58, v55);
  swift_beginAccess();
  sub_26A078140(v55, v24, &qword_280369398, &qword_26A09F590);
  swift_endAccess();
  sub_26A0780DC(v57, v55);
  swift_beginAccess();
  sub_26A078140(v55, v25, &qword_2803693A8, &qword_26A09F598);
  swift_endAccess();
  sub_26A0780DC(v56, v55);
  swift_beginAccess();
  sub_26A078140(v55, v26, &qword_2803693B8, &qword_26A09F5A0);
  swift_endAccess();
  v33 = COERCE_DOUBLE(sub_26A09DD44());
  if (v34)
  {
    v33 = a6;
  }

  *(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_dismissalTimeout) = v33;
  *v18 = 1;
  v35 = v53;
  (*(v15 + 104))(v18, *MEMORY[0x277D85768], v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369438, &qword_26A09F648);
  v36 = v47;
  v37 = v50;
  sub_26A09E004();
  (*(v15 + 8))(v18, v35);
  (*(v48 + 32))(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifierStream, v36, v49);
  (*(v51 + 32))(a5 + OBJC_IVAR____TtC18SmartStackSettings20AuthorizationManager_userConfiguredAppIdentifierContinuation, v37, v52);
  v38 = sub_26A09DFF4();
  v39 = v54;
  (*(*(v38 - 8) + 56))(v54, 1, 1, v38);
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = qword_280369100;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = off_280369A30;
  v43 = sub_26A077D64(&qword_280369810, type metadata accessor for AuthorizationActor);
  v44 = swift_allocObject();
  v44[2] = v42;
  v44[3] = v43;
  v44[4] = v40;

  sub_26A06B5F8(0, 0, v39, &unk_26A09F720, v44);

  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v57);
  __swift_destroy_boxed_opaque_existential_0(v58);
  return a5;
}

unint64_t sub_26A0765E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369538, &unk_26A09F930);
    v3 = sub_26A09E394();

    v4 = (a1 + 48);
    while (1)
    {
      v20 = v1;
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v4 + 8);
      v10 = v4[2];
      v9 = v4[3];
      v11 = v4[4];
      v12 = v4[5];

      result = sub_26A099F20(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 48 * result;
      *v16 = v7;
      *(v16 + 8) = v8;
      *(v16 + 16) = v10;
      *(v16 + 24) = v9;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v4 += 8;
      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

unint64_t sub_26A076734(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369550, &unk_26A09F830);
    v3 = sub_26A09E394();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v15 = *i;

      v7 = v15;
      v8 = *(&v15 + 1);
      result = sub_26A099F20(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 16 * result) = v15;
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

unint64_t sub_26A07685C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369548, &unk_26A0A05A0);
    v3 = sub_26A09E394();

    for (i = (a1 + 54); ; i += 24)
    {
      v5 = *(i - 22);
      v6 = *(i - 14);
      v7 = *(i - 6);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = sub_26A099F20(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = v3[7] + 8 * result;
      *v14 = v7;
      *(v14 + 4) = v8;
      *(v14 + 5) = v9;
      *(v14 + 6) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_26A0769D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26A076AA8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369350, &qword_26A09F540) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06BF28(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_26A076BB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06C89C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26A076C78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06CEF0(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for AuthorizationManager()
{
  result = qword_280369420;
  if (!qword_280369420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A076DE8()
{
  v0 = sub_26A09DE24();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26A076FE4(319, &qword_280369430, MEMORY[0x277D857B8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26A076FE4(319, &qword_280369440, MEMORY[0x277D85788]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
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

void sub_26A076FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280369438, &qword_26A09F648);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_26A077050()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369448, &unk_26A09F650);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

unint64_t sub_26A077080(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369540, &unk_26A09F820);
    v3 = sub_26A09E394();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26A099F20(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_26A077198(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369468, &qword_26A09F670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369470, &qword_26A09F678);
    v8 = sub_26A09E394();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26A079100(v10, v6, &qword_280369468, &qword_26A09F670);
      v12 = *v6;
      v13 = v6[1];
      result = sub_26A099F20(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_26A09DD34();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

unint64_t sub_26A077384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369450, &unk_26A09F910);
  v3 = sub_26A09E394();

  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  v29 = *(a1 + 80);
  v30 = v5;
  v31 = *(a1 + 112);
  v6 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v6;
  v28 = v4;
  v8 = *(&v26 + 1);
  v7 = v26;
  sub_26A079100(&v26, v25, &qword_280369458, &qword_26A09F660);
  result = sub_26A099F20(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 72 * result;
    *v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    *(v13 + 64) = v31;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = (v11 + 88);
    v21 = v11[2];
    v22 = v11[4];
    v29 = v11[3];
    v30 = v22;
    v31 = *(v11 + 10);
    v23 = v11[1];
    v26 = *v11;
    v27 = v23;
    v28 = v21;
    v8 = *(&v26 + 1);
    v7 = v26;
    sub_26A079100(&v26, v25, &qword_280369458, &qword_26A09F660);
    result = sub_26A099F20(v7, v8);
    v11 = v20;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26A077544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694A0, &qword_26A09F6B0);
    v3 = sub_26A09E394();

    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      sub_26A077CA8(v5);
      result = sub_26A099F98(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_26A07764C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_26A09E394();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_26A099F20(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_26A07778C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694F0, &qword_26A09F7C0);
    v3 = sub_26A09E394();
    v4 = a1 + 32;

    while (1)
    {
      sub_26A079100(v4, v13, &qword_2803694F8, &unk_26A09F7C8);
      result = sub_26A09A0B8(v13);
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
      result = sub_26A0697B4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_26A0778C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369520, &qword_26A09F800);
    v3 = sub_26A09E394();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26A099F20(v5, v6);
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

unint64_t sub_26A0779DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369530, &unk_26A09F810);
    v3 = sub_26A09E394();
    v4 = a1 + 32;

    while (1)
    {
      sub_26A079100(v4, &v13, &qword_280369508, &qword_26A09F7E8);
      v5 = v13;
      v6 = v14;
      result = sub_26A099F20(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26A0697B4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_26A077B0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694E0, &qword_26A09F790);
    v3 = sub_26A09E394();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_26A09A024(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

id sub_26A077CA8(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

uint64_t sub_26A077CB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_26A077CFC(id a1)
{
  if (a1 >= 5)
  {
  }
}

uint64_t sub_26A077D0C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26A077D64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A077DB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A079198;

  return sub_26A0727F0(a1, v4, v5, v6);
}

uint64_t sub_26A077E64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26A077E9C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26A079198;

  return sub_26A075C10(a1, v5);
}

uint64_t sub_26A077F54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26A06BFC4;

  return sub_26A075C10(a1, v5);
}

void sub_26A07800C(id a1)
{
  if (a1 != 5)
  {
    sub_26A077CFC(a1);
  }
}

uint64_t sub_26A07801C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26A079198;

  return sub_26A074A74(a1, v5);
}

uint64_t sub_26A0780DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26A078140(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26A0781E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26A06BFC4;

  return sub_26A06A408(a1, v4, v5, v6);
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_26A09DE24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26A07838C(uint64_t a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_26A09DE24() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  return sub_26A06E2F4(a1, a2, v5 + v12, *(v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4, a5);
}

uint64_t sub_26A078460(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06E7A4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_26A07858C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06F0C4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_26A0786B8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369260, &qword_26A09F480) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A070394(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_55Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);
  v9 = *(v2 + v7);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_26A0788CC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803693F8, &qword_26A09F5A8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A07087C(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_26A0789F8()
{
  result = qword_2803694C8;
  if (!qword_2803694C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280369438, &qword_26A09F648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803694C8);
  }

  return result;
}

uint64_t sub_26A078A5C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A078AA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A078B00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v21 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_26A09B3B8(v21, a2, v22, a3);
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

    if (v4 >= v9)
    {
      return sub_26A09B3B8(v21, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A078C74(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_26A078B00(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_26A075A28(v11, v6, v4, a2);
  result = MEMORY[0x26D65A520](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26A078DF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A081FA0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26A078EBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06E520(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_3Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26A078FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26A079198;

  return sub_26A06D698(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26A079094()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26A0790F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26A079100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26A0791A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = *(a1 + 8);
    *&v25 = *a1;
    BYTE8(v25) = v9 & 1;
    v26 = v8;
    v27 = v7;
    v28 = *(a1 + 32);
    v10 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    sub_26A07E300(&v25, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v24;
  }

  else
  {
    v13 = *v3;
    v14 = sub_26A099F20(a2, a3);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      *&v25 = *v4;
      if (!v17)
      {
        sub_26A07F200();
        v18 = v25;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = (*(v18 + 56) + 48 * v14);
      v21 = *v20;
      v22 = v20[3];
      v23 = v20[5];

      result = sub_26A07DBF4(v14, v18);
      *v4 = v18;
    }
  }

  return result;
}

uint64_t sub_26A0792D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_26A09DD34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_26A0815B0(a1);
    sub_26A07B910(a2, a3, v10);

    return sub_26A0815B0(v10);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_26A07E658(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t AuthorizationPersistence.__allocating_init(defaultsDomain:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  AuthorizationPersistence.init(defaultsDomain:)(a1, a2);
  return v7;
}

uint64_t sub_26A0794E4(uint64_t a1)
{
  result = MEMORY[0x26D659AF0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_26A09352C(&v13, v11, v12);
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

void sub_26A079600(uint64_t a1, void *a2)
{
  v3 = 0;
  v12[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
    sub_26A077CA8(v11);
    sub_26A09367C(v12, v11);
    sub_26A077CFC(v12[0]);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_26A0796FC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_26A09352C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t AuthorizationPersistence.init(defaultsDomain:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_26A09DE14();
  v5 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
  v6 = MEMORY[0x277D84F90];
  *(v3 + v5) = sub_26A077184(MEMORY[0x277D84F90]);
  v7 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateByApp;
  *(v3 + v7) = sub_26A077198(v6);
  *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibilityObserver) = 0;
  *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateObserver) = 0;
  *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_changedContinuation) = v6;
  if (a2 && (v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]), v9 = sub_26A09DE74(), , v10 = [v8 initWithSuiteName_], v9, v10))
  {
    *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_defaults) = v10;
    v11 = v10;
    v12 = [v11 dictionaryRepresentation];
    v13 = sub_26A09DE64();

    v14 = sub_26A080728(v13);
    v15 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
    swift_beginAccess();
    v16 = *(v3 + v15);
    *(v3 + v15) = v14;

    v17 = sub_26A080DC8(v13);

    v18 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateByApp;
    swift_beginAccess();
    v19 = *(v3 + v18);
    *(v3 + v18) = v17;

    sub_26A09DD94();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v11;
    v22 = v11;

    v23 = sub_26A09DD84();
    v24 = *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibilityObserver);
    *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibilityObserver) = v23;

    v25 = swift_allocObject();
    swift_weakInit();

    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v22;
    v27 = v22;
    v28 = sub_26A09DD84();
    v29 = *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateObserver);
    *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateObserver) = v28;
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_defaults) = 0;
  }

  return v3;
}

uint64_t sub_26A079B44(uint64_t a1, void *a2, const char *a3, uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v40 = a3;
  v41 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692C8, &unk_26A09F8F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692B0, &qword_26A09F4B8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v38 = v8;
    v39 = a5;
    v19 = sub_26A09DE04();
    v20 = sub_26A09E124();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v18;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26A066000, v19, v20, v40, v22, 2u);
      v23 = v22;
      v18 = v21;
      MEMORY[0x26D65A520](v23, -1, -1);
    }

    v24 = [a2 dictionaryRepresentation];
    v25 = sub_26A09DE64();

    v26 = v41(v25);

    v27 = *v39;
    swift_beginAccess();
    v28 = *&v18[v27];
    *&v18[v27] = v26;

    v29 = *&v18[OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_changedContinuation];
    v30 = v18;
    v31 = v29[2];
    if (v31)
    {
      v33 = *(v13 + 16);
      v32 = v13 + 16;
      v40 = v30;
      v41 = v33;
      v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
      v35 = *(v32 + 56);
      v36 = (v38 + 8);
      v37 = (v32 - 8);
      v39 = v29;

      do
      {
        (v41)(v16, v34, v12);
        sub_26A09E014();
        (*v36)(v11, v7);
        (*v37)(v16, v12);
        v34 += v35;
        --v31;
      }

      while (v31);
    }

    else
    {
    }
  }

  return result;
}

uint64_t AuthorizationPersistence.externalChangeStream.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692A8, &qword_26A09F4B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803692B0, &qword_26A09F4B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  (*(v2 + 104))(v5, *MEMORY[0x277D85778], v1);
  sub_26A09E004();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 16))(v11, v13, v6);
  v14 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_changedContinuation;
  v15 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_changedContinuation);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + v14) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_26A07B5FC(0, v15[2] + 1, 1, v15, &qword_2803695B8, &qword_26A09F8E8, &qword_2803692B0, &qword_26A09F4B8);
    *(v0 + v14) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_26A07B5FC(v17 > 1, v18 + 1, 1, v15, &qword_2803695B8, &qword_26A09F8E8, &qword_2803692B0, &qword_26A09F4B8);
  }

  v15[2] = v18 + 1;
  (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v11, v6);
  *(v0 + v14) = v15;
  return (*(v7 + 8))(v13, v6);
}

uint64_t AuthorizationPersistence.ineligibleAuthorizationTypes(for:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_26A099F20(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return MEMORY[0x277D84FA0];
  }
}

void AuthorizationPersistence.removeEligibility(authorizations:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = sub_26A099F20(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v11 = MEMORY[0x277D84FA0];
  }

  sub_26A079600(v12, v11);
  v14 = v13;
  swift_beginAccess();

  v15 = *(v4 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v7);
  *(v4 + v7) = 0x8000000000000000;
  sub_26A07E4B8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v7) = v17;
  swift_endAccess();
  sub_26A07A33C();
}

void sub_26A07A33C()
{
  v1 = sub_26A077638(MEMORY[0x277D84F90]);
  v2 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp;
  swift_beginAccess();
  v37 = v0;
  v3 = *(v0 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v39 = v3;

  v9 = 0;
  v38 = v4;
  while (v7)
  {
    v13 = v9;
LABEL_11:
    v14 = __clz(__rbit64(v7)) | (v13 << 6);
    v15 = (*(v39 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(*(v39 + 56) + 8 * v14);

    sub_26A0741A0(v19);
    v40 = v20;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = sub_26A099F20(v17, v16);
    v24 = v1[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_26A09E504();
      __break(1u);
      return;
    }

    v28 = v23;
    if (v1[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v22;
        sub_26A07FC68(&qword_280369460, &qword_26A09F668);
        v22 = v33;
      }
    }

    else
    {
      sub_26A07CE78(v27, isUniquelyReferenced_nonNull_native, &qword_280369460, &qword_26A09F668);
      v22 = sub_26A099F20(v17, v16);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_26;
      }
    }

    v7 &= v7 - 1;
    if (v28)
    {
      v10 = v22;

      v11 = v1[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v40;
    }

    else
    {
      v1[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v1[6] + 16 * v22);
      *v30 = v17;
      v30[1] = v16;
      *(v1[7] + 8 * v22) = v40;
      v31 = v1[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_25;
      }

      v1[2] = v32;
    }

    v9 = v13;
    v4 = v38;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v34 = *(v37 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_defaults);
  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803694E8, &qword_26A09F8E0);
    v35 = sub_26A09DE54();

    v36 = sub_26A09DE74();
    [v34 setObject:v35 forKey:v36];
  }

  else
  {
  }
}

void AuthorizationPersistence.updateDismissalDate(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  sub_26A0814D0(a1, &v17 - v10);
  v12 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateByApp;
  swift_beginAccess();

  sub_26A0792D8(v11, a2, a3);
  swift_endAccess();
  v13 = *(v4 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_defaults);
  if (v13)
  {
    v14 = *(v4 + v12);
    sub_26A09DD34();

    v15 = sub_26A09DE54();

    v16 = sub_26A09DE74();
    [v13 setObject:v15 forKey:v16];
  }
}

uint64_t AuthorizationPersistence.dismissalDate(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateByApp;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16) && (v9 = sub_26A099F20(a1, a2), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = sub_26A09DD34();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a3, v12 + *(v14 + 72) * v11, v13);
    (*(v14 + 56))(a3, 0, 1, v13);
  }

  else
  {
    v15 = sub_26A09DD34();
    (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  return swift_endAccess();
}

uint64_t AuthorizationPersistence.nextDismissalExpirationDate(after:timeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v63 - v6;
  v8 = sub_26A09DD34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63 - v17;
  MEMORY[0x28223BE20](v16);
  v71 = &v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369590, &qword_26A09F868);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v79 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v78 = &v63 - v24;
  v25 = *(v9 + 56);
  v66 = v9 + 56;
  v65 = v25;
  v25(a2, 1, 1, v8);
  v26 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateByApp;
  swift_beginAccess();
  v27 = *(v2 + v26);
  v28 = *(v27 + 64);
  v68 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = v7;
  v31 = -1;
  if (v29 < 64)
  {
    v31 = ~(-1 << v29);
  }

  v32 = v31 & v28;
  v67 = (v29 + 63) >> 6;
  v84 = (v9 + 32);
  v74 = v27;
  v75 = (v9 + 8);
  v73 = v9;
  v69 = (v9 + 48);
  v70 = v9 + 16;

  v34 = 0;
  v81 = v30;
  v82 = a2;
  v72 = v15;
  v80 = v18;
  v76 = v8;
  while (v32)
  {
    v36 = v34;
LABEL_13:
    v38 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v39 = v38 | (v36 << 6);
    v40 = v73;
    v41 = (*(v74 + 48) + 16 * v39);
    v43 = *v41;
    v42 = v41[1];
    v44 = v71;
    (*(v73 + 16))(v71, *(v74 + 56) + *(v73 + 72) * v39, v8);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369598, &qword_26A09F870);
    v46 = *(v45 + 48);
    v47 = v8;
    v48 = v79;
    *v79 = v43;
    *(v48 + 1) = v42;
    (*(v40 + 32))(&v48[v46], v44, v47);
    (*(*(v45 - 8) + 56))(v48, 0, 1, v45);

    v83 = v36;
    v49 = v48;
    v30 = v81;
    a2 = v82;
    v15 = v72;
    v18 = v80;
LABEL_14:
    v50 = v78;
    sub_26A081540(v49, v78);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369598, &qword_26A09F870);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
    }

    v52 = *(v50 + 8);

    v53 = *v84;
    v54 = v50 + *(v51 + 48);
    v8 = v76;
    (*v84)(v18, v54, v76);
    sub_26A09DCC4();
    if (sub_26A09DCE4())
    {
      sub_26A0814D0(a2, v30);
      if ((*v69)(v30, 1, v8) == 1)
      {
        (*v75)(v18, v8);
        sub_26A0815B0(a2);
        sub_26A0815B0(v30);
        v53(a2, v15, v8);
        result = v65(a2, 0, 1, v8);
        v34 = v83;
      }

      else
      {
        v55 = v18;
        v56 = v15;
        v57 = v64;
        v53(v64, v30, v8);
        v58 = sub_26A09DCF4();
        v59 = *v75;
        (*v75)(v57, v8);
        v59(v55, v8);
        if (v58)
        {
          v60 = v82;
          sub_26A0815B0(v82);
          v53(v60, v56, v8);
          a2 = v60;
          result = v65(v60, 0, 1, v8);
        }

        else
        {
          result = (v59)(v56, v8);
          a2 = v82;
        }

        v34 = v83;
        v15 = v56;
        v18 = v80;
        v30 = v81;
      }
    }

    else
    {
      v35 = *v75;
      (*v75)(v15, v8);
      result = (v35)(v18, v8);
      v34 = v83;
    }
  }

  if (v67 <= v34 + 1)
  {
    v37 = v34 + 1;
  }

  else
  {
    v37 = v67;
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v67)
    {
      v83 = v37 - 1;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369598, &qword_26A09F870);
      v62 = v79;
      (*(*(v61 - 8) + 56))(v79, 1, 1, v61);
      v49 = v62;
      v32 = 0;
      goto LABEL_14;
    }

    v32 = *(v68 + 8 * v36);
    ++v34;
    if (v32)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall AuthorizationPersistence.resetState(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369830, "J*");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateByApp;
  swift_beginAccess();
  sub_26A07B910(countAndFlagsBits, object, v8);
  swift_endAccess();
  sub_26A0815B0(v8);
  v10 = *(v1 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_defaults);
  if (v10)
  {
    v11 = *(v2 + v9);
    sub_26A09DD34();

    v12 = sub_26A09DE54();

    v13 = sub_26A09DE74();
    [v10 setObject:v12 forKey:v13];
  }

  swift_beginAccess();
  sub_26A07B868(countAndFlagsBits, object);
  swift_endAccess();

  sub_26A07A33C();
}

uint64_t AuthorizationPersistence.deinit()
{
  v1 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_logger;
  v2 = sub_26A09DE24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp);

  v4 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateByApp);

  v5 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_changedContinuation);

  return v0;
}

uint64_t AuthorizationPersistence.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_logger;
  v2 = sub_26A09DE24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_ineligibleAuthorizationTypeByApp);

  v4 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_dismissalDateByApp);

  v5 = *(v0 + OBJC_IVAR____TtC18SmartStackSettings24AuthorizationPersistence_changedContinuation);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

char *sub_26A07B39C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26A07B4A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803695C8, &qword_26A09F908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26A07B5FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_26A07B7E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369480, &qword_26A09F690);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_26A07B868(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_26A099F20(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26A07FC68(&qword_280369478, &unk_26A09F680);
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_26A07DDB0(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_26A07B910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26A099F20(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26A07F3B0();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_26A09DD34();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_26A07DF60(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_26A09DD34();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_26A07BA80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26A099F20(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26A07FAA4();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 72 * v9;
    v15 = *(v14 + 48);
    *(a3 + 32) = *(v14 + 32);
    *(a3 + 48) = v15;
    *(a3 + 64) = *(v14 + 64);
    v16 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v16;
    sub_26A07E14C(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26A07BB40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369538, &unk_26A09F930);
  v41 = a2;
  result = sub_26A09E384();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v42 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v46 = *v23;
      v25 = *(v5 + 56) + 48 * v22;
      v26 = *v25;
      v45 = *(v25 + 8);
      v27 = *(v25 + 24);
      v28 = *(v25 + 32);
      v29 = *(v25 + 40);
      v43 = v28;
      v44 = *(v25 + 16);
      if ((v41 & 1) == 0)
      {
      }

      v30 = *(v8 + 40);
      sub_26A09E514();
      sub_26A09DEE4();
      result = sub_26A09E534();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v46;
      v17[1] = v24;
      v18 = *(v8 + 56) + 48 * v16;
      *v18 = v26;
      *(v18 + 8) = v45;
      *(v18 + 16) = v44;
      *(v18 + 24) = v27;
      *(v18 + 32) = v43;
      *(v18 + 40) = v29;
      ++*(v8 + 16);
      v5 = v40;
      v13 = v42;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v42 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}
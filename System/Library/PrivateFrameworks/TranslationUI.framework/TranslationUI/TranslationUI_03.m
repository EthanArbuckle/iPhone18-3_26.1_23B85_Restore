uint64_t sub_26F3EF778@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F49F2B8();
  *a1 = result;
  return result;
}

uint64_t sub_26F3EF7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF8, &qword_26F4A5D60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v41 - v7;
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v9;
  MEMORY[0x28223BE20](v10);
  v48 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF00, &qword_26F4A5D68);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v42 = &v41 - v16;
  sub_26F3EFCAC(&v41 - v16);
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  v20 = sub_26F49D7D8();
  v22 = v21;

  v23 = *(a1 + *(type metadata accessor for LanguageSelectionView() + 36));
  swift_getKeyPath();
  v41 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel___observationRegistrar;
  v51 = v23;
  sub_26F3F2FF4(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
  sub_26F49DB28();

  v24 = *(v23 + 24);
  v50[2] = a1;

  v25 = sub_26F442FE4(sub_26F3F2420, v50, v24);
  sub_26F3EFF58(v20, v22, v25, v48);

  v26 = [v18 bundleForClass_];
  v27 = sub_26F49D7D8();
  v29 = v28;

  swift_getKeyPath();
  v51 = v23;
  sub_26F49DB28();

  v30 = *(v23 + 16);
  v49[2] = a1;

  v31 = sub_26F442FE4(sub_26F3F2440, v49, v30);
  v32 = v44;
  sub_26F3EFF58(v27, v29, v31, v44);

  v34 = v42;
  v33 = v43;
  sub_26F3A4AB0(v42, v43);
  v35 = v48;
  v36 = v45;
  sub_26F3B8DD4(v48, v45, &qword_2806DFEF8, &qword_26F4A5D60);
  v37 = v46;
  sub_26F3B8DD4(v32, v46, &qword_2806DFEF8, &qword_26F4A5D60);
  v38 = v47;
  sub_26F3A4AB0(v33, v47);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF10, &qword_26F4A5DC0);
  sub_26F3B8DD4(v36, v38 + *(v39 + 48), &qword_2806DFEF8, &qword_26F4A5D60);
  sub_26F3B8DD4(v37, v38 + *(v39 + 64), &qword_2806DFEF8, &qword_26F4A5D60);
  sub_26F3F2460(v32);
  sub_26F3F2460(v35);
  sub_26F3B6B4C(v34, &qword_2806DFF00, &qword_26F4A5D68);
  sub_26F3F2460(v37);
  sub_26F3F2460(v36);
  return sub_26F3B6B4C(v33, &qword_2806DFF00, &qword_26F4A5D68);
}

uint64_t sub_26F3EFCAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF68, &qword_26F4A5E48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v18[0] = *(v1 + *(type metadata accessor for LanguageSelectionView() + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
  v9 = sub_26F49F348();
  v10 = v19;
  if (v19)
  {
    v16 = &v16;
    MEMORY[0x28223BE20](v9);
    v17 = a1;
    *(&v16 - 2) = v2;
    *(&v16 - 1) = v10;
    sub_26F3F179C(v2, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF70, &qword_26F4A5E50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF78, &qword_26F4A5E58);
    sub_26F3F2A14();
    sub_26F3B18CC(&qword_2806DFFB8, &qword_2806DFF78, &qword_26F4A5E58);
    a1 = v17;
    sub_26F49F4D8();

    v11 = &v8[*(v4 + 36)];
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF40, &qword_26F4A5DE0) + 28);
    v13 = sub_26F49EE88();
    (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
    *v11 = swift_getKeyPath();
    sub_26F3A4D10(v8, a1);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  return (*(v5 + 56))(a1, v14, 1, v4);
}

uint64_t sub_26F3EFF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF18, &qword_26F4A5DC8);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  if (a3 >> 62)
  {
    v40 = v10;
    v35 = sub_26F4A00A8();
    v10 = v40;
    if (v35 >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v42 = a1;
    v43 = a2;
    v40 = v10;
    sub_26F3BDC0C();

    v14 = sub_26F49EED8();
    v16 = v15;
    v18 = v17;
    sub_26F49EC98();
    sub_26F49ED28();
    sub_26F49ED58();
    v39 = a4;

    v19 = sub_26F49EEA8();
    v37 = v13;
    v38 = v8;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    sub_26F3B8D40(v14, v16, v18 & 1);

    v42 = v19;
    v43 = v21;
    v44 = v23 & 1;
    v45 = v25;
    MEMORY[0x28223BE20](v26);
    v27 = v41;
    *(&v37 - 2) = a3;
    *(&v37 - 1) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF20, &qword_26F4A5DD0);
    sub_26F3F25C4();
    v28 = v37;
    sub_26F49F4D8();
    v29 = v38;
    v30 = (v28 + *(v38 + 36));
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF40, &qword_26F4A5DE0) + 28);
    v32 = sub_26F49EE88();
    (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
    *v30 = swift_getKeyPath();
    v33 = v39;
    sub_26F3F2674(v28, v39);
    return (*(v40 + 56))(v33, 0, 1, v29);
  }

  v36 = *(v10 + 56);

  return v36(a4, 1, 1, v8, v11);
}

uint64_t sub_26F3F02A4(uint64_t a1)
{
  v1[5] = a1;
  sub_26F49FBD8();
  v1[6] = sub_26F49FBC8();
  v3 = sub_26F49FB68();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_26F3F033C, v3, v2);
}

uint64_t sub_26F3F033C()
{
  v1 = v0[5];
  v2 = type metadata accessor for LanguageSelectionView();
  v0[9] = v2;
  v0[10] = *(v1 + *(v2 + 36));
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_26F3F03E8;

  return LanguageSelectionViewModel.prepare()();
}

uint64_t sub_26F3F03E8()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26F3F0508, v4, v3);
}

uint64_t sub_26F3F0508()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  v5 = sub_26F3F3A14();
  *(v0 + 16) = *(v4 + *(v1 + 48));
  *(v0 + 32) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
  sub_26F49F358();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t *sub_26F3F05B0(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v3 = *result;
  v4 = *a2;
  if (*result)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v7 = OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;
    v8 = *result;

    if ((MEMORY[0x27438E800](v3 + v7, v4 + v7) & 1) == 0)
    {
      if (qword_2806DE7A0 != -1)
      {
        swift_once();
      }

      v9 = sub_26F49DCA8();
      __swift_project_value_buffer(v9, qword_2806EA8F0);

      v10 = sub_26F49DC88();
      v11 = sub_26F49FDB8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v21 = v13;
        *v12 = 136315138;
        v14 = sub_26F49D988();
        v16 = sub_26F3B38D0(v14, v15, &v21);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_26F39E000, v10, v11, "translate to %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x274391F70](v13, -1, -1);
        MEMORY[0x274391F70](v12, -1, -1);
      }

      v17 = a3 + *(type metadata accessor for LanguageSelectionView() + 40);
      v18 = *v17;
      if (*v17)
      {
        v19 = *(v17 + 8);

        v18(v20);
      }
    }
  }

  return result;
}

void sub_26F3F07E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = qword_2806DE7A0;
    v6 = *a2;

    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_26F49DCA8();
    __swift_project_value_buffer(v7, qword_2806EA8F0);

    v8 = sub_26F49DC88();
    v9 = sub_26F49FDB8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v20 = v11;
      *v10 = 136315138;
      v12 = sub_26F49D988();
      v14 = sub_26F3B38D0(v12, v13, &v20);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_26F39E000, v8, v9, "did select %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x274391F70](v11, -1, -1);
      MEMORY[0x274391F70](v10, -1, -1);
    }

    v15 = type metadata accessor for LanguageSelectionView();
    v16 = a3 + *(v15 + 44);
    v17 = *v16;
    if (*v16)
    {
      v18 = *(v16 + 8);
      v20 = *(a3 + *(v15 + 48));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
      sub_26F49F348();

      v17(v19, v3);
    }

    else
    {
    }
  }
}

uint64_t sub_26F3F0A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageSelectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v10[1] = a1;
  swift_getKeyPath();
  sub_26F3F2160(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_26F3F21C4(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF50, &qword_26F4A5E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF38, &qword_26F4A5DD8);
  sub_26F3B18CC(&qword_2806DFF58, &qword_2806DFF50, &qword_26F4A5E40);
  sub_26F3F2FF4(&qword_2806DFC18, MEMORY[0x277CC9788]);
  sub_26F3B18CC(&qword_2806DFF30, &qword_2806DFF38, &qword_26F4A5DD8);
  return sub_26F49F4B8();
}

uint64_t sub_26F3F0C28(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageSelectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *a1;
  sub_26F3F2160(a2, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_26F3F21C4(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_26F3F29B8();

  return sub_26F49F398();
}

uint64_t sub_26F3F0D78(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for LanguageSelectionView() + 52));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
  return sub_26F49F358();
}

uint64_t sub_26F3F0DE8(uint64_t a1)
{
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_26F49D7D8();

  v5 = *(a1 + *(type metadata accessor for LanguageSelectionView() + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
  sub_26F49F368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE20, &qword_26F4A5C48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFFC0, &qword_26F4A5EF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFFC8, &qword_26F4A5EF8);
  sub_26F3F2CC8(&qword_2806DFFD0, &qword_2806DFFD8);
  sub_26F3F2D64();
  sub_26F3BDC0C();
  sub_26F3F2EF4();
  return sub_26F49F3E8();
}

uint64_t sub_26F3F0FF8(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for LanguageSelectionView() + 36));
  swift_getKeyPath();
  sub_26F3F2FF4(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
  sub_26F49DB28();

  v3 = *(v1 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF50, &qword_26F4A5E40);
  sub_26F49DAB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFFF0, &qword_26F4A5F00);
  sub_26F3B18CC(&qword_2806DFF58, &qword_2806DFF50, &qword_26F4A5E40);
  sub_26F3F2DE8();
  sub_26F3F2FF4(&qword_2806E0010, type metadata accessor for LanguageSelectionDownloadModel);
  return sub_26F49F4C8();
}

uint64_t sub_26F3F11A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0018, &qword_26F4A5F38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v14 = sub_26F49D9F8();
  v15 = sub_26F49D9F8();
  v16 = [v14 lt:0 displayNameForContext:v15 inTargetLocale:?];

  if (v16)
  {
    v17 = sub_26F49F8C8();
    v19 = v18;

    (*(v9 + 8))(v12, v8);
    v27 = v17;
    v28 = v19;
    sub_26F3BDC0C();
    *v7 = sub_26F49EED8();
    *(v7 + 1) = v20;
    v7[16] = v21 & 1;
    *(v7 + 3) = v22;
    *(v7 + 4) = v13;
    v7[40] = 1;
    v23 = v26;
    (*(v4 + 32))(v26, v7, v3);
    (*(v4 + 56))(v23, 0, 1, v3);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    return (*(v4 + 56))(v26, 1, 1, v3);
  }
}

uint64_t sub_26F3F1430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26F49E758();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v13 = sub_26F49D9F8();
  v14 = sub_26F49D9F8();
  v15 = [v13 lt:0 displayNameForContext:v14 inTargetLocale:?];

  if (v15)
  {
    v16 = sub_26F49F8C8();
    v18 = v17;

    (*(v9 + 8))(v12, v8);
    swift_getKeyPath();
    *&v36 = a1;
    sub_26F3F2FF4(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
    sub_26F49DB28();

    if (*(a1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel) == 1)
    {
      sub_26F49E748();
      sub_26F49E738();
      sub_26F49E728();

      sub_26F49E738();
      sub_26F49E778();
      v19 = *(a2 + *(type metadata accessor for LanguageSelectionView() + 20));
      v31 = sub_26F49EEC8();
      v32 = v20;
      v33 = v21 & 1;
      v34 = v22;
      v35 = 0;
    }

    else
    {
      *&v36 = v16;
      *(&v36 + 1) = v18;
      sub_26F3BDC0C();
      v31 = sub_26F49EED8();
      v32 = v28;
      v33 = v27 & 1;
      v34 = v29;
      v35 = 1;
    }

    result = sub_26F49E928();
    v26 = v37;
    v24 = v36;
    v25 = v38;
  }

  else
  {
    result = (*(v9 + 8))(v12, v8);
    v24 = 0uLL;
    v25 = -1;
    v26 = 0uLL;
  }

  *a3 = v24;
  *(a3 + 16) = v26;
  *(a3 + 32) = v25;
  return result;
}

double sub_26F3F179C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for LanguageSelectionView() + 24));
  if (v3[1])
  {
    *&v35 = *v3;
    sub_26F3BDC0C();

    v4 = sub_26F49EED8();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    sub_26F49F5A8();
    sub_26F49E3D8();
    v11 = v8 & 1;
    KeyPath = swift_getKeyPath();
    v13 = sub_26F49EC68();
    sub_26F49EC98();
    sub_26F49ED28();
    v14 = sub_26F49ED58();

    *&v30 = v4;
    *(&v30 + 1) = v6;
    LOBYTE(v31) = v11;
    *(&v31 + 1) = v10;
    *&v32 = KeyPath;
    BYTE8(v32) = 1;
    v33[0] = v13;
    memset(&v33[8], 0, 32);
    v33[40] = 1;
    *&v34 = swift_getKeyPath();
    *(&v34 + 1) = v14;
    CGPointMake(0.0);
    v45 = *v33;
    v46 = *&v33[16];
    v47 = *&v33[32];
    v48 = v34;
    v41 = v27;
    v42 = v28;
    v43 = v29;
    v44 = v32;
    v37 = v23;
    v38 = v24;
    v39 = v25;
    v40 = v26;
    v35 = v30;
    v36 = v31;
  }

  else
  {
    sub_26F3F2C94(&v35);
  }

  v15 = v46;
  a2[10] = v45;
  a2[11] = v15;
  v16 = v48;
  a2[12] = v47;
  a2[13] = v16;
  v17 = v42;
  a2[6] = v41;
  a2[7] = v17;
  v18 = v44;
  a2[8] = v43;
  a2[9] = v18;
  v19 = v38;
  a2[2] = v37;
  a2[3] = v19;
  v20 = v40;
  a2[4] = v39;
  a2[5] = v20;
  result = *&v35;
  v22 = v36;
  *a2 = v35;
  a2[1] = v22;
  return result;
}

uint64_t type metadata accessor for LanguageSelectionView()
{
  result = qword_2806DFEB8;
  if (!qword_2806DFEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26F3F19F0()
{
  result = qword_2806DFE60;
  if (!qword_2806DFE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE58, &qword_26F4A5C78);
    sub_26F3B18CC(&qword_2806DFE68, &qword_2806DFE70, &qword_26F4A5C80);
    sub_26F3F2FF4(&qword_2806DFE78, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFE60);
  }

  return result;
}

BOOL sub_26F3F1AFC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v6 = *(a2 + *(type metadata accessor for LanguageSelectionView() + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
  sub_26F49F348();
  v3 = sub_26F3EB3A4(v5);

  return (v3 & 1) == 0;
}

uint64_t sub_26F3F1B90(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = type metadata accessor for LanguageSelectionView();
  v5 = *(a2 + *(v4 + 36));
  swift_getKeyPath();
  *&v14 = v5;
  sub_26F3F2FF4(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
  sub_26F49DB28();

  v6 = *(v5 + 24);
  v13[2] = a2;

  v7 = sub_26F442FE4(sub_26F3F303C, v13, v6);
  *&v14 = v3;
  v12[2] = &v14;
  v8 = sub_26F4011AC(sub_26F3F2570, v12, v7);

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v14 = *(a2 + *(v4 + 48));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF0, &qword_26F4A5D58);
    sub_26F49F348();
    v10 = sub_26F3EB3A4(v13[3]);

    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

void sub_26F3F1D58()
{
  sub_26F3B6E18();
  if (v0 <= 0x3F)
  {
    sub_26F3E17EC();
    if (v1 <= 0x3F)
    {
      sub_26F3F1EA8();
      if (v2 <= 0x3F)
      {
        sub_26F3F1EF8(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for LanguageSelectionViewModel();
          if (v4 <= 0x3F)
          {
            sub_26F3F1EF8(319, &qword_2806DFEC8, &qword_2806DFE20, &qword_26F4A5C48, MEMORY[0x277CE10B8]);
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

void sub_26F3F1EA8()
{
  if (!qword_280F66A08)
  {
    v0 = sub_26F49FFC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F66A08);
    }
  }
}

void sub_26F3F1EF8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_26F3F1F5C()
{
  result = qword_2806DFED0;
  if (!qword_2806DFED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFED8, &unk_26F4A5D30);
    sub_26F3B18CC(&qword_2806DFE40, &qword_2806DFE38, &qword_26F4A5C60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE48, &qword_26F4A5C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE20, &qword_26F4A5C48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE50, &qword_26F4A5C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE58, &qword_26F4A5C78);
    sub_26F49E9D8();
    sub_26F3F19F0();
    swift_getOpaqueTypeConformance2();
    sub_26F3F2CC8(&qword_2806DFE80, &qword_2806DFD38);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFED0);
  }

  return result;
}

uint64_t sub_26F3F2160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageSelectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3F21C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageSelectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3F2228()
{
  v1 = *(type metadata accessor for LanguageSelectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26F3EF448(v2);
}

uint64_t sub_26F3F2290()
{
  v2 = *(type metadata accessor for LanguageSelectionView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26F3CEEAC;

  return sub_26F3F02A4(v0 + v3);
}

uint64_t sub_26F3F238C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for LanguageSelectionView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_26F3F2460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFEF8, &qword_26F4A5D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F3F24C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF48, &qword_26F4A5E18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F3B8DD4(a1, &v6 - v4, &qword_2806DFF48, &qword_26F4A5E18);
  return sub_26F49E5F8();
}

unint64_t sub_26F3F25C4()
{
  result = qword_2806DFF28;
  if (!qword_2806DFF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFF20, &qword_26F4A5DD0);
    sub_26F3B18CC(&qword_2806DFF30, &qword_2806DFF38, &qword_26F4A5DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFF28);
  }

  return result;
}

uint64_t sub_26F3F2674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF18, &qword_26F4A5DC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for LanguageSelectionView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26F49E148();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + v1[6] + 8);

  v8 = (v4 + v1[8]);
  if (*v8)
  {
    v9 = v8[1];
  }

  v10 = *(v4 + v1[9]);

  v11 = (v4 + v1[10]);
  if (*v11)
  {
    v12 = v11[1];
  }

  v13 = (v4 + v1[11]);
  if (*v13)
  {
    v14 = v13[1];
  }

  v15 = (v4 + v1[12]);
  v16 = *v15;

  v17 = v15[1];

  v18 = (v4 + v1[13]);
  v19 = *v18;

  v20 = v18[1];

  return swift_deallocObject();
}

uint64_t sub_26F3F28A0(uint64_t *a1)
{
  v3 = *(type metadata accessor for LanguageSelectionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26F3F0C28(a1, v4);
}

uint64_t sub_26F3F2920()
{
  v1 = *(type metadata accessor for LanguageSelectionView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_26F3F0D78(v0 + v2);
}

unint64_t sub_26F3F29B8()
{
  result = qword_2806DFF60;
  if (!qword_2806DFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFF60);
  }

  return result;
}

unint64_t sub_26F3F2A14()
{
  result = qword_2806DFF80;
  if (!qword_2806DFF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFF70, &qword_26F4A5E50);
    sub_26F3F2A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFF80);
  }

  return result;
}

unint64_t sub_26F3F2A98()
{
  result = qword_2806DFF88;
  if (!qword_2806DFF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFF90, &qword_26F4A5E60);
    sub_26F3F2B50();
    sub_26F3B18CC(&qword_2806DF210, &qword_2806DF218, &qword_26F4A4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFF88);
  }

  return result;
}

unint64_t sub_26F3F2B50()
{
  result = qword_2806DFF98;
  if (!qword_2806DFF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFFA0, &qword_26F4A5E68);
    sub_26F3F2BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFF98);
  }

  return result;
}

unint64_t sub_26F3F2BDC()
{
  result = qword_2806DFFA8;
  if (!qword_2806DFFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFFB0, &unk_26F4A5E70);
    sub_26F3B8C64();
    sub_26F3B18CC(&qword_2806DF9E8, &qword_2806DF9F0, &unk_26F4A5E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFFA8);
  }

  return result;
}

double sub_26F3F2C94(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_26F3F2CC8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE20, &qword_26F4A5C48);
    sub_26F3F2FF4(a2, type metadata accessor for LanguageSelectionDownloadModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F3F2D64()
{
  result = qword_2806DFFE0;
  if (!qword_2806DFFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFFC0, &qword_26F4A5EF0);
    sub_26F3F2DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFFE0);
  }

  return result;
}

unint64_t sub_26F3F2DE8()
{
  result = qword_2806DFFE8;
  if (!qword_2806DFFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFFF0, &qword_26F4A5F00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFE20, &qword_26F4A5C48);
    sub_26F3F2CC8(&qword_2806DFFD0, &qword_2806DFFD8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFFE8);
  }

  return result;
}

unint64_t sub_26F3F2EF4()
{
  result = qword_2806DFFF8;
  if (!qword_2806DFFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806DFFC8, &qword_26F4A5EF8);
    sub_26F3F2F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806DFFF8);
  }

  return result;
}

unint64_t sub_26F3F2F78()
{
  result = qword_2806E0000;
  if (!qword_2806E0000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0008, &qword_26F4A5F08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0000);
  }

  return result;
}

uint64_t sub_26F3F2FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LanguageSelectionViewModel.prepare()()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0020, &qword_26F4A5F48);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0028, &qword_26F4A5F50);
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v1[14] = *(v6 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0030, &qword_26F4A5F58);
  v1[17] = v7;
  v8 = *(v7 - 8);
  v1[18] = v8;
  v9 = *(v8 + 64) + 15;
  v1[19] = swift_task_alloc();
  sub_26F49FBD8();
  v1[20] = sub_26F49FBC8();
  v11 = sub_26F49FB68();
  v1[21] = v11;
  v1[22] = v10;

  return MEMORY[0x2822009F8](sub_26F3F323C, v11, v10);
}

uint64_t sub_26F3F323C()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observer;
  if (*(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observer))
  {
    v3 = *(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_initialUpdateTask);
    v0[25] = v3;
    if (v3)
    {
      v4 = *(MEMORY[0x277D857E0] + 4);

      v5 = swift_task_alloc();
      v0[26] = v5;
      *v5 = v0;
      v5[1] = sub_26F3F3840;

      return MEMORY[0x282200460]();
    }

    else
    {
      v25 = v0[20];

      v26 = v0[19];
      v27 = v0[15];
      v28 = v0[16];
      v29 = v0[11];

      v30 = v0[1];

      return v30();
    }
  }

  else
  {
    v6 = v0[19];
    v7 = v0[16];
    v8 = v0[13];
    v33 = v0[15];
    v34 = v0[14];
    v9 = v0[11];
    v32 = v0[12];
    v11 = v0[9];
    v10 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0040, &qword_26F4A5F60);
    (*(v10 + 104))(v9, *MEMORY[0x277D85778], v11);
    sub_26F49FC18();
    (*(v10 + 8))(v9, v11);
    v35 = *(v1 + 40);
    v12 = *(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_useDedicatedMachPort);
    (*(v8 + 16))(v33, v7, v32);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    (*(v8 + 32))(v14 + v13, v33, v32);
    v15 = objc_allocWithZone(MEMORY[0x277CE1B20]);
    v0[6] = sub_26F3F5194;
    v0[7] = v14;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_26F3F71F8;
    v0[5] = &block_descriptor_2;
    v16 = _Block_copy(v0 + 2);
    v17 = [v15 initWithTaskHint:v35 useDedicatedMachPort:v12 observations:v16];
    v0[23] = v17;
    _Block_release(v16);
    v18 = v0[7];

    *(swift_allocObject() + 16) = v17;
    v19 = v17;
    sub_26F49FC28();
    v20 = *(v1 + v2);
    *(v1 + v2) = v19;
    v21 = v19;

    v22 = swift_task_alloc();
    v0[24] = v22;
    *v22 = v0;
    v22[1] = sub_26F3F363C;
    v23 = v0[19];
    v24 = v0[8];

    return sub_26F3F9C68(v23, v24);
  }
}

uint64_t sub_26F3F363C()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_26F3F375C, v4, v3);
}

uint64_t sub_26F3F375C()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[12];
  v8 = v0[13];

  (*(v8 + 8))(v6, v7);
  (*(v5 + 8))(v3, v4);
  v9 = v0[19];
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_26F3F3840()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v7 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_26F3F3984, v5, v4);
}

uint64_t sub_26F3F3984()
{
  v1 = v0[20];

  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26F3F3A14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v44 - v4;
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v53 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  sub_26F3E718C(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_currentTranslateToLocale, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_26F3EDA38(v5);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    v13 = sub_26F49D988();
    v15 = v14;
    v16 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_modelMap;
    swift_beginAccess();
    v17 = *(v1 + v16);
    if (*(v17 + 16))
    {
      v18 = sub_26F45FD88(v13, v15);
      v20 = v19;

      if (v20)
      {
        v21 = *(*(v17 + 56) + 8 * v18);
        swift_endAccess();
        v22 = *(v7 + 8);

        v22(v12, v6);
        return v21;
      }
    }

    else
    {
    }

    swift_endAccess();
    (*(v7 + 8))(v12, v6);
  }

  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel___observationRegistrar;
  v54 = v1;
  v50 = sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
  v51 = v23;
  sub_26F49DB28();

  v24 = *(v1 + 16);
  v52 = v7;
  v44 = v6;
  if (v24 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26F4A00A8())
  {

    if (i)
    {
      v26 = 0;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x274390F80](v26, v24);
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_20:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_37;
          }

          v21 = *(v24 + 8 * v26 + 32);

          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_20;
          }
        }

        swift_getKeyPath();
        v54 = v21;
        sub_26F3FAB20(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
        sub_26F49DB28();

        if (*(v21 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel))
        {
          goto LABEL_35;
        }

        ++v26;
      }

      while (v27 != i);
    }

    v49 = *(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_preferredLanguages);
    v28 = v44;
    v45 = *(v49 + 16);
    if (!v45)
    {
      break;
    }

    v29 = 0;
    v24 = 0;
    v30 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_modelMap;
    v31 = v53;
    v47 = v49 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v46 = v52 + 16;
    v48 = (v52 + 8);
    while (v29 < *(v49 + 16))
    {
      (*(v52 + 16))(v53, v47 + *(v52 + 72) * v29, v28);
      v32 = sub_26F49D988();
      v34 = v33;
      swift_beginAccess();
      v35 = *(v1 + v30);
      if (*(v35 + 16))
      {
        v36 = sub_26F45FD88(v32, v34);
        v38 = v37;

        if (v38)
        {
          v21 = *(*(v35 + 56) + 8 * v36);
          swift_endAccess();
          v43 = *v48;

          v43(v53, v28);
          return v21;
        }
      }

      else
      {
      }

      swift_endAccess();
      swift_getKeyPath();
      v54 = v1;
      sub_26F49DB28();

      v40 = *(v1 + 16);
      MEMORY[0x28223BE20](v39);
      *(&v44 - 2) = v31;

      v21 = sub_26F4005B8(sub_26F3FABF0, (&v44 - 4), v40);

      (*v48)(v31, v28);
      if (v21)
      {
        return v21;
      }

      if (v45 == ++v29)
      {
        goto LABEL_30;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_30:
  swift_getKeyPath();
  v54 = v1;
  sub_26F49DB28();

  v41 = *(v1 + 16);
  if (!(v41 >> 62))
  {
    result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_32;
    }

    return 0;
  }

  result = sub_26F4A00A8();
  if (!result)
  {
    return 0;
  }

LABEL_32:
  if ((v41 & 0xC000000000000001) != 0)
  {

    v21 = MEMORY[0x274390F80](0, v41);
LABEL_35:

    return v21;
  }

  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v41 + 32);

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t LanguageSelectionViewModel.availableLanguages.getter()
{
  swift_getKeyPath();
  sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
  sub_26F49DB28();

  v1 = *(v0 + 16);
}

uint64_t LanguageSelectionViewModel.suggestedLanguages.getter()
{
  swift_getKeyPath();
  sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
  sub_26F49DB28();

  v1 = *(v0 + 24);
}

uint64_t LanguageSelectionViewModel.__allocating_init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  sub_26F3E718C(a2, &v22 - v15);
  sub_26F3E718C(a3, v13);
  v17 = sub_26F49D9E8();
  v18 = *(v5 + 48);
  v19 = *(v5 + 52);
  v20 = swift_allocObject();
  LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(a1, v16, v13, a4, v17, 0);
  sub_26F3EDA38(a3);
  sub_26F3EDA38(a2);
  return v20;
}

uint64_t LanguageSelectionViewModel.__allocating_init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(a1, a2, a3, a4, a5, a6);
  return v15;
}

uint64_t LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v79 = a6;
  v82 = a5;
  v83 = a3;
  v84 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = v74 - v14;
  MEMORY[0x28223BE20](v15);
  v76 = v74 - v16;
  MEMORY[0x28223BE20](v17);
  v81 = v74 - v18;
  v91 = sub_26F49DAB8();
  v19 = *(v91 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v91);
  v75 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v89 = v74 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v74 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v74 - v28;
  v30 = MEMORY[0x277D84F90];
  *(v7 + 16) = MEMORY[0x277D84F90];
  *(v7 + 24) = v30;
  *(v7 + 32) = 0;
  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_modelMap) = MEMORY[0x277D84F98];
  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observer) = 0;
  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_initialUpdateTask) = 0;
  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observationTask) = 0;
  sub_26F49DB38();
  *(v7 + 40) = a1;
  v31 = *(a4 + 16);
  v90 = v19;
  v80 = v7;
  if (v31)
  {
    v74[0] = v29;
    v98 = v30;
    sub_26F40333C(0, v31, 0);
    v32 = v91;
    v33 = v98;
    v34 = v19 + 16;
    v87 = *(v19 + 16);
    v35 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v74[1] = a4;
    v86 = v35;
    v36 = a4 + v35;
    v85 = (v19 + 8);
    v37 = *(v19 + 72);
    v88 = v34;
    v38 = (v34 + 16);
    do
    {
      v39 = v89;
      v87(v89, v36, v32);
      v96 = sub_26F49D988();
      v97 = v40;
      v94 = 45;
      v95 = 0xE100000000000000;
      v92 = 95;
      v93 = 0xE100000000000000;
      v72 = sub_26F3BDC0C();
      v73 = v72;
      v71 = v72;
      v70 = MEMORY[0x277D837D0];
      sub_26F49FFF8();
      v41 = v26;

      v32 = v91;
      sub_26F49D978();
      (*v85)(v39, v32);
      v98 = v33;
      v43 = *(v33 + 16);
      v42 = *(v33 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_26F40333C(v42 > 1, v43 + 1, 1);
        v32 = v91;
        v33 = v98;
      }

      *(v33 + 16) = v43 + 1;
      (*v38)(v33 + v86 + v43 * v37, v41, v32);
      v36 += v37;
      --v31;
      v26 = v41;
    }

    while (v31);

    v7 = v80;
    v19 = v90;
    v29 = v74[0];
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v44 = _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  MEMORY[0x28223BE20](v44);
  v72 = v29;
  v96 = v33;

  sub_26F3F7298(sub_26F3FA2EC, &v70);

  v45 = v96;
  v46 = v91;
  v88 = *(v19 + 8);
  v88(v29, v91);
  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_suggestedLocales) = v45;
  v47 = v76;
  sub_26F3E718C(v84, v76);
  v48 = *(v19 + 48);
  v49 = 1;
  if (v48(v47, 1, v46) != 1)
  {
    v50 = v89;
    (*(v19 + 32))(v89, v47, v46);
    v96 = sub_26F49D988();
    v97 = v51;
    v94 = 45;
    v95 = 0xE100000000000000;
    v92 = 95;
    v93 = 0xE100000000000000;
    v72 = sub_26F3BDC0C();
    v73 = v72;
    v71 = v72;
    v70 = MEMORY[0x277D837D0];
    sub_26F49FFF8();

    sub_26F49D978();
    v88(v50, v46);
    v49 = 0;
  }

  v52 = *(v19 + 56);
  v53 = 1;
  v54 = v81;
  v52(v81, v49, 1, v46);
  sub_26F3FA30C(v54, v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_defaultTranslateToLocale);
  v55 = v77;
  sub_26F3E718C(v83, v77);
  v56 = v48(v55, 1, v46);
  v57 = v78;
  if (v56 != 1)
  {
    v58 = v89;
    (*(v90 + 32))(v89, v55, v46);
    v96 = sub_26F49D988();
    v97 = v59;
    v94 = 45;
    v95 = 0xE100000000000000;
    v92 = 95;
    v93 = 0xE100000000000000;
    v72 = sub_26F3BDC0C();
    v73 = v72;
    v71 = v72;
    v70 = MEMORY[0x277D837D0];
    sub_26F49FFF8();

    v46 = v91;
    sub_26F49D978();
    v88(v58, v46);
    v53 = 0;
  }

  v52(v57, v53, 1, v46);
  sub_26F3FA30C(v57, v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_currentTranslateToLocale);
  v60 = v82;
  v61 = *(v82 + 16);
  if (v61)
  {
    v98 = MEMORY[0x277D84F90];
    sub_26F40333C(0, v61, 0);
    v62 = v98;
    v63 = sub_26F3BDC0C();
    v64 = (v60 + 40);
    v65 = v75;
    do
    {
      v66 = *v64;
      v96 = *(v64 - 1);
      v97 = v66;
      v94 = 45;
      v95 = 0xE100000000000000;
      v92 = 95;
      v93 = 0xE100000000000000;

      v72 = v63;
      v73 = v63;
      v71 = v63;
      v70 = MEMORY[0x277D837D0];
      sub_26F49FFF8();
      sub_26F49D978();

      v98 = v62;
      v68 = *(v62 + 16);
      v67 = *(v62 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_26F40333C(v67 > 1, v68 + 1, 1);
        v65 = v75;
        v62 = v98;
      }

      *(v62 + 16) = v68 + 1;
      (*(v90 + 32))(v62 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v68, v65, v91);
      v64 += 2;
      --v61;
    }

    while (v61);

    sub_26F3EDA38(v83);
    sub_26F3EDA38(v84);
    v7 = v80;
  }

  else
  {

    sub_26F3EDA38(v83);
    sub_26F3EDA38(v84);
    v62 = MEMORY[0x277D84F90];
  }

  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_preferredLanguages) = v62;
  *(v7 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_useDedicatedMachPort) = v79 & 1;
  return v7;
}

uint64_t sub_26F3F4CD8(uint64_t a1)
{
  v3 = *(v1 + 16);

  v5 = sub_26F42DE5C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
    sub_26F49DB18();
  }
}

uint64_t sub_26F3F4E2C(uint64_t a1)
{
  v3 = *(v1 + 24);

  v5 = sub_26F42DE5C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
    sub_26F49DB18();
  }
}

uint64_t sub_26F3F4F80(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
    sub_26F49DB18();
  }

  return result;
}

uint64_t sub_26F3F5090(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00B8, &qword_26F4A6190);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - v5;
  v8[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0028, &qword_26F4A5F50);
  sub_26F49FC38();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26F3F5194(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0028, &qword_26F4A5F50) - 8) + 80);

  return sub_26F3F5090(a1);
}

uint64_t LanguageSelectionViewModel.restartObservation()()
{
  v1[3] = v0;
  sub_26F49FBD8();
  v1[4] = sub_26F49FBC8();
  v3 = sub_26F49FB68();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_26F3F52A8, v3, v2);
}

uint64_t sub_26F3F52A8()
{
  v1 = v0[3];
  if (*(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_initialUpdateTask))
  {
    v2 = *(v1 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_initialUpdateTask);

    sub_26F49FC88();

    v1 = v0[3];
  }

  if (*(v1 + 32))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 0;
    v0[2] = v1;
    sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
    sub_26F49DB18();
  }

  else
  {
    *(v1 + 32) = 0;
  }

  v4 = v0[3];
  v5 = *(v4 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observer);
  *(v4 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observer) = 0;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_26F3F5460;
  v7 = v0[3];

  return LanguageSelectionViewModel.prepare()();
}

uint64_t sub_26F3F5460()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_26F3F5580, v4, v3);
}

uint64_t sub_26F3F5580()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26F3F55E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
  sub_26F49DB28();

  *a2 = *(v3 + 16);
}

uint64_t sub_26F3F568C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26F3F4CD8(v4);
}

uint64_t sub_26F3F56B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
  sub_26F49DB28();

  *a2 = *(v3 + 24);
}

uint64_t sub_26F3F5764(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26F3F4E2C(v4);
}

uint64_t sub_26F3F5790()
{
  swift_getKeyPath();
  sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
  sub_26F49DB28();

  return *(v0 + 32);
}

uint64_t sub_26F3F5830@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
  sub_26F49DB28();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_26F3F58D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_26F49FBD8();
  v5[12] = sub_26F49FBC8();
  v7 = sub_26F49FB68();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x2822009F8](sub_26F3F5970, v7, v6);
}

uint64_t sub_26F3F5970()
{
  v1 = *(v0 + 80);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = *(MEMORY[0x277D85858] + 4);
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_26F3F5A48;

  return MEMORY[0x282200538](v0 + 64, &unk_26F4A6188, 0, v3, v2);
}

void sub_26F3F5A48()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 112);

    MEMORY[0x2822009F8](sub_26F3F5B7C, v5, v6);
  }
}

uint64_t sub_26F3F5B7C()
{
  v1 = v0[12];

  v2 = v0[8];
  if (v2 != 1)
  {
    v3 = v0[11];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_26F3F5E40(v2);
      sub_26F3FAAF0(v2);
    }

    else
    {
      sub_26F3FAAF0(v2);
    }

    v4 = v0[11];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 32) == 1)
      {
        *(Strong + 32) = 1;
      }

      else
      {
        v6 = v0[16];
        v7 = Strong;
        swift_getKeyPath();
        v8 = swift_task_alloc();
        *(v8 + 16) = v7;
        *(v8 + 24) = 1;
        v0[9] = v7;
        sub_26F3FAB20(&qword_2806DFF08, type metadata accessor for LanguageSelectionViewModel);
        sub_26F49DB18();
      }
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_26F3F5D44()
{
  sub_26F49FBD8();
  *(v0 + 16) = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F3F5DD8, v2, v1);
}

uint64_t sub_26F3F5DD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_26F3F5E40(unint64_t a1)
{
  v2 = sub_26F49DAB8();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = v38[8];
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84F90];
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    while (1)
    {
      v41[0] = v6;

      sub_26F4A01F8();
      if (v8 < 0)
      {
        __break(1u);
LABEL_33:

        __break(1u);
        return result;
      }

      v9 = 0;
      while ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x274390F80](v9, v7);
LABEL_9:
        v11 = v10;
        ++v9;
        sub_26F3F63B8(v10);

        sub_26F4A01D8();
        v12 = *(v41[0] + 16);
        sub_26F4A0208();
        sub_26F4A0218();
        sub_26F4A01E8();
        if (v8 == v9)
        {

          goto LABEL_19;
        }
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v8 = sub_26F4A00A8();
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v10 = *(v7 + 8 * v9 + 32);
    goto LABEL_9;
  }

LABEL_18:

LABEL_19:

  v41[0] = sub_26F3F99A8(v13);
  sub_26F3F7358(v41);
  v35 = 0;

  v14 = v40;
  sub_26F3F4CD8(v41[0]);
  v15 = *(v14 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_suggestedLocales);
  v42 = v6;
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_modelMap;
    v37 = v38[2];
    v38 += 2;
    v18 = v15 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v36 = v38[7];
    v19 = (v38 - 1);
    v37(v5, v18, v39);
    while (1)
    {
      v20 = sub_26F49D988();
      v22 = v21;
      v23 = v40;
      swift_beginAccess();
      v24 = *(v23 + v17);
      if (!*(v24 + 16))
      {
        break;
      }

      v25 = sub_26F45FD88(v20, v22);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
        goto LABEL_22;
      }

      v28 = *(*(v24 + 56) + 8 * v25);
      swift_endAccess();
      v29 = *v19;

      v30 = v29(v5, v39);
      MEMORY[0x2743908C0](v30);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_26F49FB18();
      }

      sub_26F49FB38();
LABEL_23:
      v18 += v36;
      if (!--v16)
      {
        goto LABEL_30;
      }

      v37(v5, v18, v39);
    }

LABEL_22:
    swift_endAccess();
    (*v19)(v5, v39);
    goto LABEL_23;
  }

LABEL_30:

  v41[0] = sub_26F3F99A8(v32);
  v7 = v35;
  sub_26F3F7358(v41);
  if (v7)
  {
    goto LABEL_33;
  }

  return sub_26F3F4E2C(v41[0]);
}

uint64_t sub_26F3F6218(void *a1)
{
  v2 = sub_26F49DA98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = *a1 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale;
  sub_26F49DAA8();
  v11 = sub_26F49DA68();
  v13 = v12;
  v14 = *(v3 + 8);
  v14(v9, v2);
  sub_26F49DAA8();
  v15 = sub_26F49DA68();
  v17 = v16;
  v14(v6, v2);
  if (v11 == v15 && v13 == v17)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_26F4A0458();
  }

  return v19 & 1;
}

uint64_t sub_26F3F63B8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v72 - v6;
  v8 = sub_26F49DAB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = &v72 - v14;
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v72 - v17;
  v80 = a1;
  v19 = [a1 locale];
  sub_26F49DA18();

  v20 = sub_26F49D988();
  v22 = v21;
  v78 = *(v9 + 8);
  v79 = v9 + 8;
  v76 = v8;
  v78(v18, v8);
  v23 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_modelMap;
  v75 = 0;
  swift_beginAccess();
  v73 = v23;
  v74 = v2;
  v24 = *(v2 + v23);
  if (*(v24 + 16))
  {
    v25 = sub_26F45FD88(v20, v22);
    v27 = v26;

    if (v27)
    {
      v28 = *(*(v24 + 56) + 8 * v25);
      swift_endAccess();

      v29 = v76;
      v30 = v80;
      v31 = &off_279DD7000;
      goto LABEL_6;
    }
  }

  else
  {
  }

  swift_endAccess();
  v31 = &off_279DD7000;
  v30 = v80;
  v32 = [v80 locale];
  v33 = v77;
  sub_26F49DA18();

  v34 = [v30 downloadSize];
  v35 = type metadata accessor for LanguageSelectionDownloadModel();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v28 = swift_allocObject();
  *(v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress) = 0;
  *(v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__state) = 0;
  *(v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel) = 0;
  sub_26F49DB38();
  v38 = v33;
  v29 = v76;
  (*(v9 + 32))(v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_locale, v38, v76);
  *(v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel_downloadSize) = v34;
LABEL_6:
  v39 = [v30 v31[317]];
  sub_26F49DA18();

  v40 = sub_26F49D988();
  v42 = v41;
  v43 = v78;
  v78(v12, v29);
  v44 = v74;
  sub_26F3E718C(v74 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_defaultTranslateToLocale, v7);
  if ((*(v9 + 48))(v7, 1, v29) == 1)
  {
    sub_26F3EDA38(v7);

    v45 = 0;
    v46 = (v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel);
    v47 = &qword_2806DF000;
    if (*(v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel))
    {
LABEL_8:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v72 - 2) = v28;
      *(&v72 - 8) = v45 & 1;
      v49 = v47[419];
      v82 = v28;
      sub_26F3FAB20(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
      sub_26F49DB18();

      goto LABEL_15;
    }
  }

  else
  {
    v50 = sub_26F49D988();
    v51 = v29;
    v53 = v52;
    v43(v7, v51);
    if (v40 == v50 && v42 == v53)
    {

      v46 = (v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel);
      v45 = 1;
      v29 = v76;
      v47 = &qword_2806DF000;
      if ((*(v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v45 = sub_26F4A0458();

      v46 = (v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel);
      v29 = v76;
      v47 = &qword_2806DF000;
      if ((v45 & 1) != *(v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__isDefaultModel))
      {
        goto LABEL_8;
      }
    }
  }

  *v46 = v45 & 1;
LABEL_15:
  v54 = v80;
  v55 = [v80 status];
  if (*(v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__state) != v55)
  {
    v56 = v55;
    v57 = swift_getKeyPath();
    MEMORY[0x28223BE20](v57);
    *(&v72 - 2) = v28;
    *(&v72 - 1) = v56;
    v58 = v47[419];
    v82 = v28;
    sub_26F3FAB20(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
    sub_26F49DB18();
  }

  [v54 progress];
  v60 = v59;
  if (*(v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress) == v59)
  {
    *(v28 + OBJC_IVAR____TtC13TranslationUI30LanguageSelectionDownloadModel__progress) = v59;
  }

  else
  {
    v61 = swift_getKeyPath();
    MEMORY[0x28223BE20](v61);
    *(&v72 - 2) = v28;
    *(&v72 - 1) = v60;
    v62 = v47[419];
    v82 = v28;
    sub_26F3FAB20(&qword_2806DFD20, type metadata accessor for LanguageSelectionDownloadModel);
    sub_26F49DB18();
  }

  v63 = [v54 locale];
  v64 = v77;
  sub_26F49DA18();

  v65 = sub_26F49D988();
  v67 = v66;
  v78(v64, v29);
  v68 = v73;
  swift_beginAccess();

  v69 = *(v44 + v68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = *(v44 + v68);
  *(v44 + v68) = 0x8000000000000000;
  sub_26F497FFC(v28, v65, v67, isUniquelyReferenced_nonNull_native);

  *(v44 + v68) = v81;
  swift_endAccess();
  return v28;
}

uint64_t sub_26F3F6B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[13] = sub_26F49FBD8();
  v5[14] = sub_26F49FBC8();
  v7 = sub_26F49FB68();
  v5[15] = v7;
  v5[16] = v6;

  return MEMORY[0x2822009F8](sub_26F3F6C38, v7, v6);
}

uint64_t sub_26F3F6C38()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v1[3];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_26F49FCA8();

  swift_beginAccess();
  v8 = v0[13];
  v9 = sub_26F49FBC8();
  v0[17] = v9;
  v10 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v11 = *(MEMORY[0x277D856D8] + 4);
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_26F3F6E1C;
  v13 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 10, v9, v13);
}

uint64_t sub_26F3F6E1C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[17];

    v6 = v2[15];
    v7 = v2[16];

    return MEMORY[0x2822009F8](sub_26F3F6F30, v6, v7);
  }

  return result;
}

uint64_t sub_26F3F6F30()
{
  v1 = v0[10];
  if (v1 == 1)
  {
    v2 = v0[14];

LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v11 = v0[1];

    return v11();
  }

  v3 = v0[12];
  if (!swift_weakLoadStrong())
  {
    v10 = v0[14];

    sub_26F3FAAF0(v1);
    goto LABEL_8;
  }

  sub_26F3F5E40(v1);

  sub_26F3FAAF0(v1);
  v4 = v0[13];
  v5 = sub_26F49FBC8();
  v0[17] = v5;
  v6 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v7 = *(MEMORY[0x277D856D8] + 4);
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_26F3F6E1C;
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 10, v5, v9);
}

uint64_t LanguageSelectionViewModel.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_26F3EDA38(v0 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_defaultTranslateToLocale);
  sub_26F3EDA38(v0 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_currentTranslateToLocale);
  v3 = *(v0 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_suggestedLocales);

  v4 = *(v0 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_preferredLanguages);

  v5 = *(v0 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_modelMap);

  v6 = *(v0 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_initialUpdateTask);

  v7 = *(v0 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observationTask);

  v8 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel___observationRegistrar;
  v9 = sub_26F49DB48();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t LanguageSelectionViewModel.__deallocating_deinit()
{
  LanguageSelectionViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26F3F71F8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_26F3FABA4();
    v2 = sub_26F49FAF8();
  }

  v4(v2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26F3F7298(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_26F49DAB8() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_26F40D67C(v7);
  }

  v8 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v9 = v7[2];
  sub_26F3F73D4(a1, a2);
  *v3 = v7;
}

uint64_t sub_26F3F7358(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26F40D690(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_26F3F7510(v6);
  return sub_26F4A01E8();
}

void sub_26F3F73D4(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_26F4A0418();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26F49DAB8();
        v9 = sub_26F49FB28();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_26F49DAB8() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_26F3F7AAC(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_26F3F7614(0, v5, 1, a1, a2);
  }
}

void sub_26F3F7510(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_26F4A0418();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LanguageSelectionDownloadModel();
        v6 = sub_26F49FB28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_26F3F86B8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_26F3F7900(0, v2, 1, a1);
  }
}

void sub_26F3F7614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v53 = a5;
  v54 = a4;
  v11 = sub_26F49DAB8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v48 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v55 = &v39 - v15;
  v19 = MEMORY[0x28223BE20](v16);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v17;
    v20 = *v5;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = (v20 + v23 * (a3 - 1));
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        (v49)(v51, v26, v11, v19);
        v30(v27, v28, v11);
        v31 = v54(v29, v27);
        if (v7)
        {
          v38 = *v50;
          (*v50)(v27, v11);
          v38(v29, v11);
          return;
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v11);
        v34(v29, v11);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v11);
        swift_arrayInitWithTakeFrontToBack();
        v35(v28, v36, v11);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v7 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v7 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = &v43[v39];
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }
}

void sub_26F3F7900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_26F49DAB8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v14 = (v10 + 8);
    v15 = (*a4 + 8 * a3 - 8);
    v16 = a1 - a3;
LABEL_5:
    v27 = a3;
    v17 = *(v13 + 8 * a3);
    v25 = v16;
    v26 = v15;
    v18 = v16;
    while (1)
    {
      v19 = *v15;

      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v20 = sub_26F427634();
      (*v14)(v12, v8);

      if (!v20)
      {
LABEL_4:
        a3 = v27 + 1;
        v15 = v26 + 1;
        v16 = v25 - 1;
        if (v27 + 1 == v24)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v13)
      {
        break;
      }

      v21 = *v15;
      *v15 = v15[1];
      v15[1] = v21;
      --v15;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_26F3F7AAC(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v143 = a1;
  v164 = sub_26F49DAB8();
  v12 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v147 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v150 = &v135 - v15;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v135 - v19;
  MEMORY[0x28223BE20](v21);
  v141 = &v135 - v22;
  MEMORY[0x28223BE20](v23);
  v30 = MEMORY[0x28223BE20](&v135 - v24);
  v162 = v27;
  v163 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
    v34 = a4;
LABEL_104:
    a4 = *v143;
    if (*v143)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v142 = &v135 - v26;
  v140 = v25;
  v152 = v20;
  v148 = v29;
  v149 = v28;
  v138 = a6;
  v32 = 0;
  v160 = (v27 + 8);
  v161 = v27 + 16;
  v156 = (v27 + 32);
  v33 = MEMORY[0x277D84F90];
  v157 = a5;
  v34 = a4;
  v159 = a4;
  while (1)
  {
    v35 = v32;
    v144 = v33;
    if ((v32 + 1) < v31)
    {
      v145 = v32;
      v146 = v31;
      v36 = *v163;
      v37 = *(v162 + 72);
      a4 = *v163 + v37 * (v32 + 1);
      v38 = *(v162 + 16);
      v39 = v164;
      v38(v142, a4, v164, v30);
      v158 = v37;
      v139 = v36;
      v40 = &v36[v37 * v145];
      v41 = v140;
      v153 = v38;
      (v38)(v140, v40, v39);
      v42 = v142;
      LODWORD(v155) = v34(v142, v41);
      if (v7)
      {
        v134 = *v160;
        (*v160)(v41, v39);
        v134(v42, v39);
        goto LABEL_117;
      }

      v165 = 0;
      v43 = *v160;
      (*v160)(v41, v39);
      v151 = v43;
      (v43)(v42, v39);
      v137 = v146 - 1;
      v154 = v146 - 2;
      v44 = v145;
      a5 = v157;
      v45 = v158;
      v46 = &v139[v158 * (v145 + 2)];
      v47 = v141;
      while (v154 != v44)
      {
        v48 = v164;
        v49 = v153;
        (v153)(v47, v46, v164);
        v50 = a5;
        v51 = v152;
        (v49)(v152, a4, v48);
        v52 = v50;
        v53 = v165;
        v54 = v159(v47, v51);
        v165 = v53;
        if (v53)
        {
          v132 = v151;
          (v151)(v51, v48);
          v132(v47, v48);
LABEL_117:

          return;
        }

        v55 = v54;
        v56 = v151;
        (v151)(v51, v48);
        v56(v47, v48);
        ++v44;
        v45 = v158;
        v46 += v158;
        a4 += v158;
        a5 = v52;
        if ((v155 ^ v55))
        {
          v57 = v44 + 1;
          goto LABEL_12;
        }
      }

      v44 = v137;
      v57 = v146;
LABEL_12:
      v35 = v145;
      if (v155)
      {
        if (v57 < v145)
        {
          goto LABEL_141;
        }

        v33 = v164;
        if (v145 <= v44)
        {
          a4 = v45 * (v57 - 1);
          v58 = v57;
          v59 = v57 * v45;
          v146 = v58;
          v60 = v58;
          v61 = v145;
          v62 = v145 * v45;
          do
          {
            if (v61 != --v60)
            {
              v64 = *v163;
              if (!*v163)
              {
                goto LABEL_145;
              }

              v65 = *v156;
              (*v156)(v147, &v64[v62], v164);
              if (v62 < a4 || &v64[v62] >= &v64[v59])
              {
                v63 = v164;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v63 = v164;
                if (v62 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v65(&v64[a4], v147, v63);
              a5 = v157;
              v45 = v158;
              v33 = v63;
            }

            ++v61;
            a4 -= v45;
            v59 -= v45;
            v62 += v45;
          }

          while (v61 < v60);
          v7 = v165;
          v34 = v159;
          v35 = v145;
          v57 = v146;
        }

        else
        {
          v7 = v165;
          v34 = v159;
        }
      }

      else
      {
        v33 = v164;
        v7 = v165;
        v34 = v159;
      }
    }

    else
    {
      v57 = (v32 + 1);
      v33 = v164;
    }

    v66 = v163[1];
    if (v57 < v66)
    {
      if (__OFSUB__(v57, v35))
      {
        goto LABEL_137;
      }

      if (v57 - v35 < v138)
      {
        if (__OFADD__(v35, v138))
        {
          __break(1u);
        }

        else
        {
          v146 = v57;
          if (&v35[v138] >= v66)
          {
            v67 = v66;
          }

          else
          {
            v67 = &v35[v138];
          }

          if (v67 >= v35)
          {
            if (v146 == v67)
            {
              v57 = v146;
              goto LABEL_38;
            }

            v165 = v7;
            v114 = *v163;
            v115 = *(v162 + 72);
            v158 = *(v162 + 16);
            v116 = (v114 + v115 * (v146 - 1));
            v154 = -v115;
            v155 = v114;
            v145 = v35;
            v117 = &v35[-v146];
            v136 = v115;
            a4 = v114 + v146 * v115;
            v153 = v67;
            while (1)
            {
              v137 = a4;
              v139 = v117;
              v151 = v116;
              while (1)
              {
                v118 = v148;
                v119 = v158;
                (v158)(v148, a4, v33, v30);
                v120 = v149;
                v119(v149, v116, v33);
                v121 = v165;
                v122 = v159(v118, v120);
                v165 = v121;
                if (v121)
                {
                  v133 = *v160;
                  (*v160)(v120, v33);
                  v133(v118, v33);
                  goto LABEL_117;
                }

                v123 = v122;
                v124 = *v160;
                (*v160)(v120, v33);
                v124(v118, v33);
                if ((v123 & 1) == 0)
                {
                  break;
                }

                if (!v155)
                {
                  goto LABEL_143;
                }

                v125 = *v156;
                v126 = v150;
                v33 = v164;
                (*v156)(v150, a4, v164);
                swift_arrayInitWithTakeFrontToBack();
                v125(v116, v126, v33);
                v116 += v154;
                a4 += v154;
                v127 = __CFADD__(v117++, 1);
                a5 = v157;
                if (v127)
                {
                  goto LABEL_101;
                }
              }

              a5 = v157;
              v33 = v164;
LABEL_101:
              v116 = &v151[v136];
              v117 = v139 - 1;
              a4 = v137 + v136;
              v57 = v153;
              if (++v146 == v153)
              {
                v34 = v159;
                v7 = v165;
                v35 = v145;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v33 = v144;
    if (v57 < v35)
    {
      goto LABEL_136;
    }

    a4 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_26F40D370(0, *(v33 + 2) + 1, 1, v33);
    }

    v69 = *(v33 + 2);
    v68 = *(v33 + 3);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v33 = sub_26F40D370((v68 > 1), v69 + 1, 1, v33);
    }

    *(v33 + 2) = v70;
    v71 = &v33[16 * v69];
    *(v71 + 4) = v35;
    *(v71 + 5) = v57;
    v153 = v57;
    v72 = *v143;
    if (!*v143)
    {
      goto LABEL_146;
    }

    if (v69)
    {
      break;
    }

    a5 = v157;
    v34 = a4;
LABEL_90:
    v31 = v163[1];
    v32 = v153;
    if (v153 >= v31)
    {
      goto LABEL_104;
    }
  }

  a5 = v157;
  v34 = a4;
  while (1)
  {
    a4 = v70 - 1;
    if (v70 >= 4)
    {
      v77 = &v33[16 * v70 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_123;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_124;
      }

      v84 = &v33[16 * v70];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_126;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_129;
      }

      if (v88 >= v80)
      {
        v106 = &v33[16 * a4 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_135;
        }

        if (v75 < v109)
        {
          a4 = v70 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v70 == 3)
    {
      v73 = *(v33 + 4);
      v74 = *(v33 + 5);
      v83 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      v76 = v83;
LABEL_59:
      if (v76)
      {
        goto LABEL_125;
      }

      v89 = &v33[16 * v70];
      v91 = *v89;
      v90 = *(v89 + 1);
      v92 = __OFSUB__(v90, v91);
      v93 = v90 - v91;
      v94 = v92;
      if (v92)
      {
        goto LABEL_128;
      }

      v95 = &v33[16 * a4 + 32];
      v97 = *v95;
      v96 = *(v95 + 1);
      v83 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v83)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v93, v98))
      {
        goto LABEL_132;
      }

      if (v93 + v98 >= v75)
      {
        if (v75 < v98)
        {
          a4 = v70 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v99 = &v33[16 * v70];
    v101 = *v99;
    v100 = *(v99 + 1);
    v83 = __OFSUB__(v100, v101);
    v93 = v100 - v101;
    v94 = v83;
LABEL_73:
    if (v94)
    {
      goto LABEL_127;
    }

    v102 = &v33[16 * a4];
    v104 = *(v102 + 4);
    v103 = *(v102 + 5);
    v83 = __OFSUB__(v103, v104);
    v105 = v103 - v104;
    if (v83)
    {
      goto LABEL_130;
    }

    if (v105 < v93)
    {
      goto LABEL_90;
    }

LABEL_80:
    v110 = a4 - 1;
    if (a4 - 1 >= v70)
    {
      break;
    }

    if (!*v163)
    {
      goto LABEL_142;
    }

    v111 = *&v33[16 * v110 + 32];
    v112 = *&v33[16 * a4 + 40];
    sub_26F3F8E14(*v163 + *(v162 + 72) * v111, *v163 + *(v162 + 72) * *&v33[16 * a4 + 32], *v163 + *(v162 + 72) * v112, v72, v34, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v112 < v111)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_26F40D35C(v33);
    }

    if (v110 >= *(v33 + 2))
    {
      goto LABEL_122;
    }

    v113 = &v33[16 * v110];
    *(v113 + 4) = v111;
    *(v113 + 5) = v112;
    v166 = v33;
    sub_26F40D2D0(a4);
    v33 = v166;
    v70 = *(v166 + 2);
    if (v70 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_137:
  __break(1u);
LABEL_138:
  v33 = sub_26F40D35C(v33);
LABEL_106:
  v166 = v33;
  v128 = *(v33 + 2);
  if (v128 < 2)
  {
    goto LABEL_117;
  }

  while (*v163)
  {
    v129 = *&v33[16 * v128];
    v130 = *&v33[16 * v128 + 24];
    sub_26F3F8E14(*v163 + *(v162 + 72) * v129, *v163 + *(v162 + 72) * *&v33[16 * v128 + 16], *v163 + *(v162 + 72) * v130, a4, v34, a5);
    if (v7)
    {
      goto LABEL_117;
    }

    if (v130 < v129)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_26F40D35C(v33);
    }

    if (v128 - 2 >= *(v33 + 2))
    {
      goto LABEL_134;
    }

    v131 = &v33[16 * v128];
    *v131 = v129;
    *(v131 + 1) = v130;
    v166 = v33;
    sub_26F40D2D0(v128 - 1);
    v33 = v166;
    v128 = *(v166 + 2);
    if (v128 <= 1)
    {
      goto LABEL_117;
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_26F3F86B8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v103 = a1;
  v108 = sub_26F49DAB8();
  v8 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a3;
  v12 = a3[1];
  if (v12 < 1)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_87:
    v11 = v14;
    v14 = *v103;
    if (!*v103)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_119:
      v11 = sub_26F40D35C(v11);
    }

    v109 = v11;
    v95 = *(v11 + 2);
    if (v95 >= 2)
    {
      while (*v106)
      {
        v96 = *&v11[16 * v95];
        v97 = *&v11[16 * v95 + 24];
        sub_26F3F950C((*v106 + 8 * v96), (*v106 + 8 * *&v11[16 * v95 + 16]), (*v106 + 8 * v97), v14);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v97 < v96)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_26F40D35C(v11);
        }

        if (v95 - 2 >= *(v11 + 2))
        {
          goto LABEL_113;
        }

        v98 = &v11[16 * v95];
        *v98 = v96;
        *(v98 + 1) = v97;
        v109 = v11;
        sub_26F40D2D0(v95 - 1);
        v11 = v109;
        v95 = *(v109 + 2);
        if (v95 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_123;
    }

LABEL_97:

    return;
  }

  v100 = a4;
  v13 = 0;
  v107 = (v9 + 8);
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = v13;
    v16 = v13 + 1;
    if (v13 + 1 < v12)
    {
      v104 = v12;
      v102 = v5;
      v17 = *(*v106 + 8 * v16);
      v18 = 8 * v13;
      v19 = (*v106 + 8 * v13);
      v21 = *v19;
      v20 = v19 + 2;
      v22 = v13;

      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      LODWORD(v105) = sub_26F427634();
      v23 = *v107;
      (*v107)(v11, v108);

      v101 = v22;
      v24 = v22 + 2;
      while (1)
      {
        v25 = v104;
        if (v104 == v24)
        {
          break;
        }

        v27 = *(v20 - 1);
        v26 = *v20;
        v28 = v14;

        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        v29 = sub_26F427634();
        v23(v11, v108);

        ++v24;
        ++v20;
        v30 = (v105 & 1) == v29;
        v14 = v28;
        if (!v30)
        {
          v25 = v24 - 1;
          break;
        }
      }

      v15 = v101;
      v5 = v102;
      if (v105)
      {
        if (v25 < v101)
        {
          goto LABEL_116;
        }

        if (v101 < v25)
        {
          v31 = 8 * v25 - 8;
          v32 = v25;
          v33 = v101;
          do
          {
            if (v33 != --v32)
            {
              v35 = *v106;
              if (!*v106)
              {
                goto LABEL_122;
              }

              v34 = *(v35 + v18);
              *(v35 + v18) = *(v35 + v31);
              *(v35 + v31) = v34;
            }

            ++v33;
            v31 -= 8;
            v18 += 8;
          }

          while (v33 < v32);
        }
      }

      v16 = v25;
    }

    v36 = v106[1];
    if (v16 < v36)
    {
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_115;
      }

      if (v16 - v15 < v100)
      {
        v37 = v15 + v100;
        if (__OFADD__(v15, v100))
        {
          goto LABEL_117;
        }

        if (v37 >= v36)
        {
          v37 = v106[1];
        }

        if (v37 < v15)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (v16 != v37)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v16 < v15)
    {
      goto LABEL_114;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_26F40D370(0, *(v14 + 2) + 1, 1, v14);
    }

    v49 = *(v14 + 2);
    v48 = *(v14 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v14 = sub_26F40D370((v48 > 1), v49 + 1, 1, v14);
    }

    *(v14 + 2) = v50;
    v51 = &v14[16 * v49];
    *(v51 + 4) = v15;
    *(v51 + 5) = v16;
    v52 = *v103;
    if (!*v103)
    {
      goto LABEL_124;
    }

    v105 = v16;
    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v14 + 4);
          v55 = *(v14 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_56:
          if (v57)
          {
            goto LABEL_103;
          }

          v70 = &v14[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_106;
          }

          v76 = &v14[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_110;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v80 = &v14[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_70:
        if (v75)
        {
          goto LABEL_105;
        }

        v83 = &v14[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_108;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_77:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (!*v106)
        {
          goto LABEL_121;
        }

        v92 = *&v14[16 * v91 + 32];
        v93 = *&v14[16 * v53 + 40];
        sub_26F3F950C((*v106 + 8 * v92), (*v106 + 8 * *&v14[16 * v53 + 32]), (*v106 + 8 * v93), v52);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v93 < v92)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_26F40D35C(v14);
        }

        if (v91 >= *(v14 + 2))
        {
          goto LABEL_100;
        }

        v94 = &v14[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        v109 = v14;
        sub_26F40D2D0(v53);
        v14 = v109;
        v50 = *(v109 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v14[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_101;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_102;
      }

      v65 = &v14[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_104;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_107;
      }

      if (v69 >= v61)
      {
        v87 = &v14[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_111;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = v105;
    v12 = v106[1];
    if (v105 >= v12)
    {
      goto LABEL_87;
    }
  }

  v99 = v14;
  v101 = v15;
  v102 = v5;
  v38 = *v106;
  v39 = *v106 + 8 * v16 - 8;
  v40 = v15 - v16;
  v104 = v37;
LABEL_29:
  v105 = v16;
  v41 = *(v38 + 8 * v16);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;

    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v45 = sub_26F427634();
    (*v107)(v11, v108);

    if (!v45)
    {
LABEL_28:
      v16 = v105 + 1;
      v39 += 8;
      --v40;
      if (v105 + 1 != v104)
      {
        goto LABEL_29;
      }

      v16 = v104;
      v15 = v101;
      v5 = v102;
      v14 = v99;
      goto LABEL_36;
    }

    if (!v38)
    {
      break;
    }

    v46 = *v43;
    *v43 = v43[1];
    v43[1] = v46;
    --v43;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

void sub_26F3F8E14(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v77 = sub_26F49DAB8();
  v11 = *(v77 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v77);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  MEMORY[0x28223BE20](v19);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v24 = &v69 - v20;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v26 = (a2 - a1) / v23;
    v85 = a1;
    v84 = a4;
    v80 = v23;
    if (v26 < v25 / v23)
    {
      v27 = v26 * v23;
      if (a4 < a1 || a1 + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v76 = a4 + v27;
      v83 = a4 + v27;
      if (v27 >= 1 && a2 < a3)
      {
        v53 = *(v11 + 16);
        v74 = v18;
        v75 = v11 + 16;
        v72 = v53;
        v73 = (v11 + 8);
        v54 = v24;
        v55 = v77;
        v56 = v6;
        v71 = a3;
        while (1)
        {
          v81 = a1;
          v57 = v72;
          v72(v54, a2, v55);
          v58 = a2;
          v59 = v54;
          v60 = v74;
          v57(v74, a4, v55);
          v61 = v79(v59, v60);
          if (v56)
          {
            break;
          }

          v62 = v61;
          v82 = 0;
          v63 = *v73;
          (*v73)(v60, v55);
          v63(v59, v55);
          v54 = v59;
          if (v62)
          {
            v64 = v80;
            v65 = v81;
            a2 = v58 + v80;
            if (v81 < v58 || v81 >= a2)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }
          }

          else
          {
            v64 = v80;
            v65 = v81;
            v66 = a4 + v80;
            a2 = v58;
            if (v81 < a4 || v81 >= v66)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }

            v84 = v66;
            a4 = v66;
          }

          a1 = v65 + v64;
          v85 = a1;
          if (a4 >= v76 || a2 >= v71)
          {
            goto LABEL_65;
          }
        }

        v67 = *v73;
        (*v73)(v60, v55);
        v67(v59, v55);
      }

LABEL_65:
      sub_26F3F98C4(&v85, &v84, &v83);
      return;
    }

    v76 = v21;
    v28 = a3;
    v29 = a2;
    v30 = v25 / v23 * v23;
    if (a4 < v29 || v29 + v30 <= a4)
    {
      v31 = v29;
      v32 = v77;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v31 = v29;
      v32 = v77;
      if (a4 == v29)
      {
LABEL_24:
        v82 = v6;
        v34 = a4 + v30;
        if (v30 >= 1)
        {
          v35 = -v23;
          v69 = a4;
          v70 = (v11 + 16);
          v72 = (v11 + 8);
          v36 = a4 + v30;
          v37 = v28;
          v38 = v76;
          v81 = a1;
          v74 = -v23;
          do
          {
            v75 = v34;
            v71 = v34;
            v39 = v31;
            v77 = v31 + v35;
            v73 = v31;
            while (1)
            {
              if (v39 <= a1)
              {
                v85 = v39;
                v34 = v71;
                goto LABEL_64;
              }

              v40 = v37;
              v41 = v74;
              v80 = v36;
              v42 = v36 + v74;
              v43 = *v70;
              (*v70)(v38, v36 + v74, v32);
              v43(v14, v77, v32);
              v44 = v38;
              v45 = v82;
              v46 = v79(v38, v14);
              v82 = v45;
              if (v45)
              {
                v68 = *v72;
                (*v72)(v14, v32);
                v68(v44, v32);
                v85 = v73;
                v34 = v75;
                goto LABEL_64;
              }

              v47 = v46;
              v48 = &v40[v41];
              v49 = v14;
              v50 = *v72;
              v51 = v49;
              (*v72)();
              v50(v44, v32);
              if (v47)
              {
                break;
              }

              v37 = &v40[v41];
              if (v40 < v80 || v48 >= v80)
              {
                swift_arrayInitWithTakeFrontToBack();
                v14 = v51;
                v38 = v76;
              }

              else
              {
                v14 = v51;
                v38 = v76;
                if (v40 != v80)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v75 = v42;
              v36 = v42;
              a1 = v81;
              v39 = v73;
              if (v42 <= v69)
              {
                v31 = v73;
                v34 = v75;
                goto LABEL_63;
              }
            }

            v37 = &v40[v41];
            if (v40 < v73 || v48 >= v73)
            {
              v31 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v52 = v69;
              v14 = v51;
              v38 = v76;
            }

            else
            {
              v38 = v76;
              v31 = v77;
              v52 = v69;
              v14 = v51;
              if (v40 != v73)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v80;
            a1 = v81;
            v35 = v74;
            v34 = v75;
          }

          while (v80 > v52);
        }

LABEL_63:
        v85 = v31;
LABEL_64:
        v83 = v34;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v80;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
}

uint64_t sub_26F3F950C(char *a1, char *a2, char *a3, char *a4)
{
  v45 = sub_26F49DAB8();
  v8 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 - a1;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    if (a4 != a2 || &a2[8 * v16] <= a4)
    {
      v27 = v9;
      memmove(a4, a2, 8 * v16);
      v9 = v27;
    }

    v20 = &a4[8 * v16];
    v18 = a4;
    if (a3 - a2 < 8)
    {
      v26 = a2;
    }

    else
    {
      v26 = a2;
      if (a2 > a1)
      {
        v42 = v11;
        v43 = (v9 + 8);
        v44 = a4;
        v40 = a1;
        do
        {
          v41 = v26;
          v28 = v26 - 8;
          a3 -= 8;
          v29 = v20;
          v30 = v20;
          while (1)
          {
            v31 = a3 + 8;
            v32 = *(v30 - 1);
            v30 -= 8;
            v33 = v28;
            v34 = *v28;

            v35 = v42;
            _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
            v36 = sub_26F427634();
            (*v43)(v35, v45);

            if (v36)
            {
              break;
            }

            if (v31 != v29)
            {
              *a3 = *v30;
            }

            a3 -= 8;
            v29 = v30;
            v28 = v33;
            if (v30 <= v44)
            {
              v20 = v30;
              v18 = v44;
              v26 = v41;
              goto LABEL_39;
            }
          }

          v37 = v40;
          v38 = v33;
          if (v31 != v41)
          {
            *a3 = *v33;
          }

          v18 = v44;
          v20 = v29;
          if (v29 <= v44)
          {
            break;
          }

          v26 = v38;
        }

        while (v38 > v37);
        v26 = v38;
      }
    }
  }

  else
  {
    v17 = a2;
    v18 = a4;
    if (a4 != a1 || &a1[8 * v14] <= a4)
    {
      v19 = v9;
      memmove(a4, a1, 8 * v14);
      v9 = v19;
    }

    v20 = &a4[8 * v14];
    if (v12 >= 8 && v17 < a3)
    {
      v43 = (v9 + 8);
      while (1)
      {
        v21 = *v17;
        v22 = *v18;

        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        v23 = sub_26F427634();
        (*v43)(v11, v45);

        if (!v23)
        {
          break;
        }

        v24 = v17;
        v25 = a1 == v17;
        v17 += 8;
        if (!v25)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 += 8;
        if (v18 >= v20 || v17 >= a3)
        {
          goto LABEL_20;
        }
      }

      v24 = v18;
      v25 = a1 == v18;
      v18 += 8;
      if (v25)
      {
        goto LABEL_18;
      }

LABEL_17:
      *a1 = *v24;
      goto LABEL_18;
    }

LABEL_20:
    v26 = a1;
  }

LABEL_39:
  if (v26 != v18 || v26 >= &v18[(v20 - v18 + (v20 - v18 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v26, v18, 8 * ((v20 - v18) / 8));
  }

  return 1;
}

uint64_t sub_26F3F98C4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_26F49DAB8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_26F3F99A8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_26F4A00A8();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_26F4970D4(v3, 0);
  sub_26F3F9A3C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_26F3F9A3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26F4A00A8();
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
      result = sub_26F4A00A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26F3B18CC(&qword_2806E00A8, &qword_2806DFF50, &qword_26F4A5E40);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFF50, &qword_26F4A5E40);
            v9 = sub_26F3F9BE0(v13, i, a3);
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
        type metadata accessor for LanguageSelectionDownloadModel();
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

uint64_t (*sub_26F3F9BE0(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x274390F80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_26F3F9C60;
  }

  __break(1u);
  return result;
}

uint64_t sub_26F3F9C68(uint64_t a1, uint64_t a2)
{
  v2[12] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0030, &qword_26F4A5F58);
  v2[5] = v4;
  v2[6] = sub_26F3B18CC(&qword_2806E00A0, &qword_2806E0030, &qword_26F4A5F58);
  v2[14] = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(*(v4 - 8) + 16))();
  v2[15] = sub_26F49FBD8();
  v2[16] = sub_26F49FBC8();
  v6 = sub_26F49FB68();
  v2[17] = v6;
  v2[18] = v5;

  return MEMORY[0x2822009F8](sub_26F3F9DD4, v6, v5);
}

uint64_t sub_26F3F9DD4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = sub_26F49FC08();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_26F3FA85C(v0 + 16, v0 + 56);

  v6 = sub_26F49FBC8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  sub_26F3FA8C0((v0 + 56), (v7 + 4));
  v7[9] = v5;

  v9 = sub_26F40570C(0, 0, v3, &unk_26F4A60F0, v7);
  v10 = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_initialUpdateTask;
  *(v0 + 152) = OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_initialUpdateTask;
  v11 = *(v2 + v10);
  *(v2 + v10) = v9;
  if (v11)
  {

    sub_26F49FC88();

    v9 = *(v2 + v10);
  }

  *(v0 + 160) = v9;
  if (v9)
  {
    v12 = *(MEMORY[0x277D857E0] + 4);

    v13 = swift_task_alloc();
    *(v0 + 168) = v13;
    *v13 = v0;
    v13[1] = sub_26F3FA06C;

    return MEMORY[0x282200460]();
  }

  else
  {
    v14 = *(v0 + 128);

    v15 = *(v0 + 152);
    v16 = *(v0 + 96);
    v17 = *(v16 + v15);
    *(v16 + v15) = 0;
    if (v17)
    {
      sub_26F49FC88();
    }

    v18 = *(v0 + 104);
    sub_26F3FA528(*(v0 + 112), *(v0 + 96));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_26F3FA06C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_26F3FA1B0, v5, v4);
}

uint64_t sub_26F3FA1B0()
{
  v1 = v0[16];

  v2 = v0[19];
  v3 = v0[12];
  v4 = *(v3 + v2);
  *(v3 + v2) = 0;
  if (v4)
  {
    sub_26F49FC88();
  }

  v5 = v0[13];
  sub_26F3FA528(v0[14], v0[12]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v6 = v0[1];

  return v6();
}

uint64_t type metadata accessor for LanguageSelectionViewModel()
{
  result = qword_2806E0090;
  if (!qword_2806E0090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_26F3FA30C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26F3FA394()
{
  sub_26F3FA4D0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_26F49DB48();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26F3FA4D0()
{
  if (!qword_280F66C80)
  {
    sub_26F49DAB8();
    v0 = sub_26F49FFC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F66C80);
    }
  }
}

uint64_t sub_26F3FA528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0030, &qword_26F4A5F58);
  v19[3] = v8;
  v19[4] = sub_26F3B18CC(&qword_2806E00A0, &qword_2806E0030, &qword_26F4A5F58);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  v10 = sub_26F49FC08();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  swift_weakInit();
  sub_26F3FA85C(v19, v18);
  sub_26F49FBD8();

  v12 = sub_26F49FBC8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  sub_26F3FA8C0(v18, (v13 + 4));
  v13[9] = v11;

  v15 = sub_26F40570C(0, 0, v7, &unk_26F4A6100, v13);
  v16 = *(a2 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observationTask);
  *(a2 + OBJC_IVAR____TtC13TranslationUI26LanguageSelectionViewModel_observationTask) = v15;
  if (v16)
  {

    sub_26F49FC88();
  }

  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_26F3FA780()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_26F3FA7BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_26F3FA85C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26F3FA8C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26F3FA8D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F3F58D8(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_22Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_26F3FA9E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CEEAC;

  return sub_26F3F6B9C(a1, v4, v5, (v1 + 4), v6);
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

uint64_t sub_26F3FAAF0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_26F3FAB20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26F3FABA4()
{
  result = qword_2806E00B0;
  if (!qword_2806E00B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806E00B0);
  }

  return result;
}

void sub_26F3FAC28(uint64_t a1, uint64_t a2, int a3)
{
  v44 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  v42 = *(v5 - 8);
  v43 = v5;
  v40 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v41 = &v37 - v6;
  v46 = sub_26F49DAB8();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v46);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    LODWORD(v39) = a3;
    aBlock = MEMORY[0x277D84F90];
    sub_26F4A01F8();
    v45 = (v7 + 8);
    v12 = (a2 + 40);
    do
    {
      v18 = *(v12 - 1);
      v19 = *v12;
      v20 = v12[1];
      v21 = *(v12 + 16);
      v22 = *(v12 + 4);
      v23 = objc_opt_self();
      swift_bridgeObjectRetain_n();

      v24 = sub_26F49F898();
      if (v21 == 1)
      {
        if (v20 == 0.0)
        {
          v25 = [v23 discreteProgressWithIdentifier:v24 offlineState:2];
        }

        else
        {
          v25 = [v23 discreteProgressWithIdentifier:v24 offlineState:0];
        }

        v13 = v25;
      }

      else
      {
        v13 = [v23 discreteProgressWithIdentifier:v24 offlineState:1];

        if (v20 > 0.001)
        {
          v14 = v20;
        }

        else
        {
          v14 = 0.001;
        }

        [v13 updatePercentComplete_];
      }

      sub_26F49D978();
      v15 = objc_allocWithZone(MEMORY[0x277CE1B00]);
      v16 = sub_26F49D9F8();
      [v15 initWithLocale:v16 progress:v13];

      (*v45)(v10, v46);
      sub_26F4A01D8();
      v17 = *(aBlock + 16);
      sub_26F4A0208();
      sub_26F4A0218();
      sub_26F4A01E8();
      v12 += 6;
      --v11;
    }

    while (v11);
    LOBYTE(a3) = v39;
  }

  v26 = 2;
  if (a3)
  {
    v26 = 3;
  }

  v46 = v26;
  v45 = objc_opt_self();
  sub_26F4003F4();
  v39 = sub_26F49FAD8();

  v28 = v41;
  v27 = v42;
  v38 = *(v42 + 16);
  v29 = v43;
  v38(v41, v44, v43);
  v30 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v31 = swift_allocObject();
  v32 = *(v27 + 32);
  v32(v31 + v30, v28, v29);
  v51 = sub_26F400440;
  v52 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_26F3FB728;
  v50 = &block_descriptor_3;
  v33 = _Block_copy(&aBlock);

  v38(v28, v44, v29);
  v34 = swift_allocObject();
  v32(v34 + v30, v28, v29);
  v51 = sub_26F400504;
  v52 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_26F3B3644;
  v50 = &block_descriptor_27;
  v35 = _Block_copy(&aBlock);

  v36 = v39;
  [v45 setLanguageAssets:v39 options:v46 progress:v33 completion:v35];
  _Block_release(v35);
  _Block_release(v33);
}

void sub_26F3FB12C(unint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D8, &unk_26F4A6C80);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  if (a1)
  {
    v65 = v19;
    v73 = v14;
    if (a1 >> 62)
    {
      v20 = sub_26F4A00A8();
    }

    else
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v66 = v8;
      v83 = MEMORY[0x277D84F90];
      sub_26F4032B0(0, v20 & ~(v20 >> 63), 0);
      if (v20 < 0)
      {
        __break(1u);
        return;
      }

      v62 = v16;
      v63 = v15;
      v64 = a2;
      v22 = 0;
      v21 = v83;
      v23 = a1;
      v67 = (v5 + 8);
      v68 = a1 & 0xC000000000000001;
      v24 = &off_279DD7000;
      v71 = v4;
      v72 = a1;
      v69 = v20;
      v70 = v11;
      do
      {
        v75 = v21;
        if (v68)
        {
          v25 = MEMORY[0x274390F80](v22, v23);
        }

        else
        {
          v25 = *(v23 + 8 * v22 + 32);
        }

        v26 = v25;
        v27 = [v25 v24[326]];
        v28 = v4;
        if (v27 == 2)
        {
          v32 = 1;
          v31 = 0;
        }

        else if (v27 == 1)
        {
          v29 = [v26 progress];
          [v29 fractionCompleted];
          v31 = v30;

          v32 = 0;
        }

        else
        {
          v32 = 1;
          v31 = 1;
        }

        v74 = v26;
        v33 = [v26 ltIdentifier];
        v34 = sub_26F49F8C8();
        v36 = v35;

        v81 = v34;
        v82 = v36;
        v79 = 45;
        v80 = 0xE100000000000000;
        v77 = 95;
        v78 = 0xE100000000000000;
        sub_26F3BDC0C();
        v37 = sub_26F49FFF8();
        v39 = v38;

        LOBYTE(v81) = v32;

        v40 = v73;
        v76 = v37;
        sub_26F49D978();
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        v41 = sub_26F49D9F8();
        v42 = sub_26F49D9F8();
        v43 = [v41 lt:0 displayNameForContext:v42 inTargetLocale:?];

        if (v43)
        {
          v44 = sub_26F49F8C8();
          v46 = v45;

          v47 = *v67;
          (*v67)(v11, v28);
          v47(v40, v28);
          v48 = v76;
        }

        else
        {
          v49 = *v67;
          (*v67)(v11, v28);
          v50 = v66;
          _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
          v51 = sub_26F49D9F8();
          v52 = sub_26F49D9F8();
          v53 = [v51 lt:0 displaySubnameForContext:v52 inTargetLocale:?];

          if (v53)
          {
            v44 = sub_26F49F8C8();
            v46 = v54;

            v49(v50, v28);
            v49(v40, v28);
            v24 = &off_279DD7000;
            v48 = v76;
          }

          else
          {
            v49(v50, v28);
            v49(v40, v28);

            v48 = v76;
            v44 = v76;
            v46 = v39;
            v24 = &off_279DD7000;
          }
        }

        v55 = v81;
        v21 = v75;
        v83 = v75;
        v57 = *(v75 + 16);
        v56 = *(v75 + 24);
        v58 = v69;
        if (v57 >= v56 >> 1)
        {
          sub_26F4032B0((v56 > 1), v57 + 1, 1);
          v48 = v76;
          v21 = v83;
        }

        ++v22;
        *(v21 + 16) = v57 + 1;
        v59 = v21 + 48 * v57;
        *(v59 + 32) = v48;
        *(v59 + 40) = v39;
        *(v59 + 48) = v31;
        *(v59 + 56) = v55;
        *(v59 + 64) = v44;
        *(v59 + 72) = v46;
        v4 = v71;
        v23 = v72;
        v11 = v70;
      }

      while (v58 != v22);
      v15 = v63;
      v16 = v62;
    }

    v81 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    v60 = v65;
    sub_26F49FCC8();
    (*(v16 + 8))(v60, v15);
  }
}

uint64_t sub_26F3FB728(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_26F4003F4();
    v2 = sub_26F49FAF8();
  }

  v4(v2);
}

uint64_t sub_26F3FB7A0(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  return sub_26F49FCD8();
}

uint64_t static LanguagesInstallService.save(_:useCellular:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C0, &unk_26F4A61B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  v11 = a1;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  (*(v5 + 104))(v8, *MEMORY[0x277D858A0], v4);
  return sub_26F49FD08();
}

uint64_t static LanguagesInstallService.add(_:useCellular:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C0, &unk_26F4A61B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v11 = sub_26F49DCA8();
  __swift_project_value_buffer(v11, qword_280F67EB8);

  v12 = sub_26F49DC88();
  v13 = sub_26F49FDB8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = a3;
    v24 = v22;
    *v14 = 134349314;
    *(v14 + 4) = *(a1 + 16);

    *(v14 + 12) = 2082;
    v15 = MEMORY[0x274390900](a1, &type metadata for LanguageModel);
    v17 = sub_26F3B38D0(v15, v16, &v24);

    *(v14 + 14) = v17;
    _os_log_impl(&dword_26F39E000, v12, v13, "Add %{public}ld languages: %{public}s", v14, 0x16u);
    v18 = v22;
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x274391F70](v18, -1, -1);
    MEMORY[0x274391F70](v14, -1, -1);
  }

  else
  {
  }

  MEMORY[0x28223BE20](v19);
  *(&v21 - 2) = a1;
  *(&v21 - 8) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  (*(v7 + 104))(v10, *MEMORY[0x277D858A0], v6);
  return sub_26F49FD08();
}

uint64_t sub_26F3FBC18(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = sub_26F49FC08();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 41) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  (*(v7 + 32))(v17 + v16, v10, v6);

  sub_26F40570C(0, 0, v14, &unk_26F4A6258, v17);
}

uint64_t sub_26F3FBE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 304) = a5;
  *(v6 + 152) = a4;
  *(v6 + 160) = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D8, &unk_26F4A6C80);
  *(v6 + 168) = v7;
  v8 = *(v7 - 8);
  *(v6 + 176) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  v10 = sub_26F49DAB8();
  *(v6 + 192) = v10;
  v11 = *(v10 - 8);
  *(v6 + 200) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C0, &unk_26F4A61B0);
  *(v6 + 216) = v13;
  v14 = *(v13 - 8);
  *(v6 + 224) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 232) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00E0, &qword_26F4A6210);
  *(v6 + 240) = v16;
  v17 = *(v16 - 8);
  *(v6 + 248) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 256) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00E8, &qword_26F4A6218);
  *(v6 + 264) = v19;
  v20 = *(v19 - 8);
  *(v6 + 272) = v20;
  v21 = *(v20 + 64) + 15;
  *(v6 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F3FC078, 0, 0);
}

uint64_t sub_26F3FC078()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  v0[36] = v2;
  if (v2)
  {
    v3 = v0[25];
    v43 = MEMORY[0x277D84F90];
    sub_26F4032B0(0, v2, 0);
    v4 = v43;
    v36 = (v3 + 8);
    v5 = (v1 + 72);
    do
    {
      v7 = *(v5 - 5);
      v6 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *v5;
      v41 = *(v5 - 1);
      if (*(v5 - 16) == 1)
      {

        if (v8)
        {
          v10 = v37[26];
          v39 = v37[24];

          sub_26F49D978();
          v40 = v4;
          v37[2] = sub_26F49D988();
          v37[3] = v11;
          v37[4] = 45;
          v38 = v9;
          v37[5] = 0xE100000000000000;
          v37[6] = 95;
          v37[7] = 0xE100000000000000;
          sub_26F3BDC0C();
          v12 = sub_26F49FFF8();
          v14 = v13;

          (*v36)(v10, v39);
          v37[8] = v12;
          v37[9] = v14;
          v37[10] = 45;
          v37[11] = 0xE100000000000000;
          v37[12] = 95;
          v37[13] = 0xE100000000000000;

          v7 = sub_26F49FFF8();
          v16 = v15;

          v17 = v38;

          v8 = 0;
          v18 = 0;
          v6 = v16;
          v4 = v40;
        }

        else
        {
          v17 = v9;
          v18 = 1;
        }
      }

      else
      {

        v17 = v9;

        v18 = 0;
      }

      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26F4032B0((v19 > 1), v20 + 1, 1);
      }

      v5 += 6;
      *(v4 + 16) = v20 + 1;
      v21 = v4 + 48 * v20;
      *(v21 + 32) = v7;
      *(v21 + 40) = v6;
      *(v21 + 48) = v8;
      *(v21 + 56) = v18;
      *(v21 + 64) = v41;
      *(v21 + 72) = v17;
      --v2;
    }

    while (v2);
    v22 = v4;
    v0 = v37;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v42 = v0[35];
  v24 = v0[31];
  v23 = v0[32];
  v26 = v0[29];
  v25 = v0[30];
  v28 = v0[27];
  v27 = v0[28];
  v29 = *(v0 + 304);
  v30 = swift_task_alloc();
  *(v30 + 16) = v22;
  *(v30 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  (*(v27 + 104))(v26, *MEMORY[0x277D858A0], v28);
  sub_26F49FD08();

  sub_26F49FC58();
  (*(v24 + 8))(v23, v25);
  v31 = *(MEMORY[0x277D858B8] + 4);
  v32 = swift_task_alloc();
  v0[37] = v32;
  *v32 = v0;
  v32[1] = sub_26F3FC470;
  v33 = v0[35];
  v34 = v0[33];

  return MEMORY[0x2822005A8](v0 + 14, 0, 0, v34, v0 + 15);
}

uint64_t sub_26F3FC470()
{
  v2 = *(*v1 + 296);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_26F3FC960;
  }

  else
  {
    v3 = sub_26F3FC580;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F3FC580()
{
  v47 = v0;
  v1 = v0[14];
  if (v1)
  {
    v3 = v0[22];
    v2 = v0[23];
    v4 = v0[20];
    v5 = v0[21];
    v0[18] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    sub_26F49FCC8();
    (*(v3 + 8))(v2, v5);
    v6 = *(MEMORY[0x277D858B8] + 4);
    v7 = swift_task_alloc();
    v0[37] = v7;
    *v7 = v0;
    v7[1] = sub_26F3FC470;
    v8 = v0[35];
    v9 = v0[33];

    return MEMORY[0x2822005A8](v0 + 14, 0, 0, v9, v0 + 15);
  }

  else
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v10 = v0[19];
    v11 = sub_26F49DCA8();
    __swift_project_value_buffer(v11, qword_280F67EB8);

    v12 = sub_26F49DC88();
    v13 = sub_26F49FDB8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[36];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      v45 = v16;
      *v15 = 136446210;
      v18 = MEMORY[0x277D84F90];
      if (v14)
      {
        v42 = v16;
        v43 = v13;
        v44 = v12;
        v19 = v0[36];
        v20 = v0[19];
        v46 = MEMORY[0x277D84F90];
        sub_26F403380(0, v19, 0);
        v21 = 0;
        v18 = v46;
        v22 = *(v46 + 16);
        v23 = 16 * v22;
        v24 = (v20 + 40);
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;
          v46 = v18;
          v27 = *(v18 + 24);

          if (v22 >= v27 >> 1)
          {
            sub_26F403380((v27 > 1), v22 + 1, 1);
            v18 = v46;
          }

          v28 = v0[36];
          ++v21;
          *(v18 + 16) = v22 + 1;
          v29 = v18 + v23;
          *(v29 + 32) = v25;
          *(v29 + 40) = v26;
          v23 += 16;
          v24 += 6;
          ++v22;
        }

        while (v21 != v28);
        v12 = v44;
        v13 = v43;
        v17 = v42;
      }

      v30 = MEMORY[0x274390900](v18, MEMORY[0x277D837D0]);
      v32 = v31;

      v33 = sub_26F3B38D0(v30, v32, &v45);

      *(v15 + 4) = v33;
      _os_log_impl(&dword_26F39E000, v12, v13, "Successfully added languages: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x274391F70](v17, -1, -1);
      MEMORY[0x274391F70](v15, -1, -1);
    }

    v34 = v0[20];
    v0[17] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    sub_26F49FCD8();
    v35 = v0[35];
    v36 = v0[32];
    v37 = v0[29];
    v38 = v0[26];
    v39 = v0[23];

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_26F3FC960()
{
  v45 = v0;
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[15];
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = sub_26F49DCA8();
  __swift_project_value_buffer(v3, qword_280F67EB8);

  v4 = v1;
  v5 = sub_26F49DC88();
  v6 = sub_26F49FDD8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = v0[19];
    v9 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v43 = v10;
    *v9 = 134218498;
    *(v9 + 4) = v7;

    *(v9 + 12) = 2082;
    v11 = MEMORY[0x277D84F90];
    if (v7)
    {
      v37 = v10;
      v38 = v6;
      v39 = v9;
      v40 = v5;
      v41 = v1;
      v12 = v0[36];
      v13 = v0[19];
      v44 = MEMORY[0x277D84F90];
      sub_26F403380(0, v12, 0);
      v14 = 0;
      v11 = v44;
      v15 = *(v44 + 16);
      v16 = 16 * v15;
      v17 = (v13 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        v44 = v11;
        v20 = *(v11 + 24);

        if (v15 >= v20 >> 1)
        {
          sub_26F403380((v20 > 1), v15 + 1, 1);
          v11 = v44;
        }

        v21 = v0[36];
        ++v14;
        *(v11 + 16) = v15 + 1;
        v22 = v11 + v16;
        *(v22 + 32) = v18;
        *(v22 + 40) = v19;
        v16 += 16;
        v17 += 6;
        ++v15;
      }

      while (v14 != v21);
      v5 = v40;
      v1 = v41;
      v9 = v39;
      v6 = v38;
      v10 = v37;
    }

    v24 = MEMORY[0x274390900](v11, MEMORY[0x277D837D0]);
    v26 = v25;

    v27 = sub_26F3B38D0(v24, v26, &v43);

    *(v9 + 14) = v27;
    *(v9 + 22) = 2112;
    v28 = sub_26F49D7E8();
    *(v9 + 24) = v28;
    *v42 = v28;
    _os_log_impl(&dword_26F39E000, v5, v6, "Failed to save %ld languages: %{public}s; %@", v9, 0x20u);
    sub_26F3CC31C(v42);
    MEMORY[0x274391F70](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x274391F70](v10, -1, -1);
    MEMORY[0x274391F70](v9, -1, -1);
  }

  else
  {
    v23 = v0[19];
  }

  v29 = v0[20];
  v0[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  sub_26F49FCD8();
  v30 = v0[35];
  v31 = v0[32];
  v32 = v0[29];
  v33 = v0[26];
  v34 = v0[23];

  v35 = v0[1];

  return v35();
}

uint64_t static LanguagesInstallService.add(pair:useCellular:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v3) = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C8, &unk_26F4A61C0);
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v33);
  v9 = &v29[-v8];
  v10 = type metadata accessor for LocalePair();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v14 = sub_26F49DCA8();
  __swift_project_value_buffer(v14, qword_280F67EB8);
  v32 = a1;
  sub_26F3FFF24(a1, v13);
  v15 = sub_26F49DC88();
  v16 = sub_26F49FDB8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = a3;
    v19 = v18;
    *v17 = 136446210;
    v34 = 0;
    v35 = 0xE000000000000000;
    v36 = v18;
    sub_26F4A0178();

    v34 = 0x203A656372756F73;
    v35 = 0xE800000000000000;
    v20 = sub_26F49D988();
    v30 = v3;
    MEMORY[0x2743907E0](v20);

    MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
    v21 = &v13[*(v10 + 20)];
    v22 = sub_26F49D988();
    MEMORY[0x2743907E0](v22);

    v23 = v34;
    v3 = v35;
    sub_26F3FFF88(v13);
    v24 = sub_26F3B38D0(v23, v3, &v36);
    LOBYTE(v3) = v30;

    *(v17 + 4) = v24;
    _os_log_impl(&dword_26F39E000, v15, v16, "Add locale pair: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x274391F70](v19, -1, -1);
    MEMORY[0x274391F70](v17, -1, -1);
  }

  else
  {

    v25 = sub_26F3FFF88(v13);
  }

  v26 = MEMORY[0x28223BE20](v25);
  v27 = v33;
  *&v29[-16] = v32;
  v29[-8] = v3 & 1;
  (*(v6 + 104))(v9, *MEMORY[0x277D858A0], v27, v26);
  return sub_26F49FD08();
}

uint64_t sub_26F3FD048(uint64_t a1, uint64_t a2, int a3)
{
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F0, &qword_26F4A6228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-v8];
  v10 = type metadata accessor for LocalePair();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24[-v16];
  v18 = sub_26F49FC08();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_26F3FFF24(a2, v13);
  (*(v6 + 16))(v9, a1, v5);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = v19 + v12;
  v21 = (*(v6 + 80) + v19 + v12 + 1) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_26F40010C(v13, v22 + v19);
  *(v22 + v20) = v25;
  (*(v6 + 32))(v22 + v21, v9, v5);
  sub_26F40570C(0, 0, v17, &unk_26F4A6238, v22);
}

uint64_t sub_26F3FD2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 265) = a5;
  *(v6 + 320) = a4;
  *(v6 + 328) = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F8, &unk_26F4A6240);
  *(v6 + 336) = v7;
  v8 = *(v7 - 8);
  *(v6 + 344) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 352) = swift_task_alloc();
  v10 = type metadata accessor for LocalePair();
  *(v6 + 360) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00E0, &qword_26F4A6210);
  *(v6 + 392) = v12;
  v13 = *(v12 - 8);
  *(v6 + 400) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 408) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00E8, &qword_26F4A6218);
  *(v6 + 416) = v15;
  v16 = *(v15 - 8);
  *(v6 + 424) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 432) = swift_task_alloc();
  v18 = sub_26F49DAB8();
  *(v6 + 440) = v18;
  v19 = *(v18 - 8);
  *(v6 + 448) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F3FD578, 0, 0);
}

uint64_t sub_26F3FD578()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 496);
  v81 = (*(v0 + 448) + 16);
  v77 = *v81;
  (*v81)(*(v0 + 512), *(v0 + 320), *(v0 + 440));
  *(v0 + 16) = sub_26F49D988();
  *(v0 + 24) = v3;
  *(v0 + 32) = 45;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 95;
  *(v0 + 56) = 0xE100000000000000;
  v4 = sub_26F3BDC0C();
  v5 = MEMORY[0x277D837D0];
  v6 = sub_26F49FFF8();
  v8 = v7;

  *(v0 + 64) = v6;
  *(v0 + 80) = 45;
  *(v0 + 72) = v8;
  *(v0 + 88) = 0xE100000000000000;
  *(v0 + 96) = 95;
  *(v0 + 104) = 0xE100000000000000;
  v70 = v5;
  v9 = sub_26F49FFF8();
  v11 = v10;

  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v12 = sub_26F49D9F8();
  v13 = sub_26F49D9F8();
  v14 = [v12 lt:0 displayNameForContext:v13 inTargetLocale:{v70, v4, v4, v4}];

  v16 = *(v0 + 496);
  v15 = *(v0 + 504);
  v85 = v9;
  if (v14)
  {
    v17 = *(v0 + 440);
    v18 = *(v0 + 448);
    v79 = sub_26F49F8C8();
    v80 = v19;

    v20 = *(v18 + 8);
    v20(v16, v17);
    v20(v15, v17);
  }

  else
  {
    v21 = *(v0 + 464);
    v83 = *(*(v0 + 448) + 8);
    v83(v16, *(v0 + 440));
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v22 = sub_26F49D9F8();
    v23 = sub_26F49D9F8();
    v24 = [v22 lt:0 displaySubnameForContext:v23 inTargetLocale:?];

    v25 = *(v0 + 504);
    v26 = *(v0 + 464);
    v27 = *(v0 + 440);
    if (v24)
    {
      v79 = sub_26F49F8C8();
      v80 = v28;

      v20 = v83;
      v83(v26, v27);
      v83(v25, v27);
    }

    else
    {
      v83(*(v0 + 464), *(v0 + 440));
      v83(v25, v27);

      v79 = v9;
      v80 = v11;
      v20 = v83;
    }
  }

  v29 = *(v0 + 480);
  v30 = *(v0 + 488);
  v75 = *(v0 + 472);
  v31 = *(v0 + 440);
  v32 = *(v0 + 360);
  v33 = *(v0 + 320);
  v20(*(v0 + 512), v31);
  v77(v30, v33 + *(v32 + 20), v31);
  *(v0 + 112) = sub_26F49D988();
  *(v0 + 120) = v34;
  *(v0 + 128) = 45;
  *(v0 + 136) = 0xE100000000000000;
  *(v0 + 144) = 95;
  *(v0 + 152) = 0xE100000000000000;
  v35 = MEMORY[0x277D837D0];
  v36 = sub_26F49FFF8();
  v38 = v37;

  *(v0 + 160) = v36;
  *(v0 + 168) = v38;
  *(v0 + 176) = 45;
  *(v0 + 184) = 0xE100000000000000;
  *(v0 + 192) = 95;
  *(v0 + 200) = 0xE100000000000000;
  v72 = v4;
  v73 = v4;
  v71 = v4;
  v39 = sub_26F49FFF8();
  v41 = v40;

  v82 = v41;
  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v42 = sub_26F49D9F8();
  v43 = sub_26F49D9F8();
  v44 = [v42 lt:0 displayNameForContext:v43 inTargetLocale:{v35, v71, v72, v73}];

  v46 = *(v0 + 472);
  v45 = *(v0 + 480);
  v78 = v39;
  if (v44)
  {
    v47 = *(v0 + 440);
    v48 = sub_26F49F8C8();
    v76 = v49;

    v50 = v46;
    v51 = v48;
    v20(v50, v47);
    v20(v45, v47);
  }

  else
  {
    v52 = *(v0 + 456);
    v20(v46, *(v0 + 440));
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v53 = sub_26F49D9F8();
    v54 = sub_26F49D9F8();
    v55 = [v53 lt:0 displaySubnameForContext:v54 inTargetLocale:?];

    v56 = *(v0 + 480);
    v57 = *(v0 + 456);
    v58 = *(v0 + 440);
    if (v55)
    {
      v59 = sub_26F49F8C8();
      v76 = v60;

      v51 = v59;
      v20(v57, v58);
      v20(v56, v58);
    }

    else
    {
      v20(*(v0 + 456), *(v0 + 440));
      v20(v56, v58);
      v51 = v39;
    }
  }

  v84 = *(v0 + 432);
  v62 = *(v0 + 400);
  v61 = *(v0 + 408);
  v74 = *(v0 + 392);
  v63 = *(v0 + 265);
  v20(*(v0 + 488), *(v0 + 440));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0100, &unk_26F4A6690);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_26F4A3B80;
  *(v64 + 32) = v85;
  *(v64 + 40) = v11;
  *(v64 + 48) = 0;
  *(v64 + 56) = 0;
  *(v64 + 64) = v79;
  *(v64 + 72) = v80;
  *(v64 + 80) = v78;
  *(v64 + 88) = v82;
  *(v64 + 96) = 0;
  *(v64 + 104) = 0;
  *(v64 + 112) = v51;
  *(v64 + 120) = v76;

  static LanguagesInstallService.add(_:useCellular:)(v64, v63, v61);

  sub_26F49FC58();
  (*(v62 + 8))(v61, v74);
  *(v0 + 576) = v80;
  *(v0 + 568) = 0;
  *(v0 + 560) = v11;
  *(v0 + 552) = v85;
  *(v0 + 544) = v76;
  *(v0 + 266) = 0;
  *(v0 + 536) = 0;
  *(v0 + 528) = v82;
  *(v0 + 520) = v78;
  v65 = *(MEMORY[0x277D858B8] + 4);
  v66 = swift_task_alloc();
  *(v0 + 584) = v66;
  *v66 = v0;
  v66[1] = sub_26F3FDCCC;
  v67 = *(v0 + 432);
  v68 = *(v0 + 416);

  return MEMORY[0x2822005A8](v0 + 272, 0, 0, v68, v0 + 280);
}

uint64_t sub_26F3FDCCC()
{
  v2 = *(*v1 + 584);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_26F3FE840;
  }

  else
  {
    v3 = sub_26F3FDDDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F3FDDDC()
{
  v101 = v1;
  v2 = *(*&v1 + 272);
  if (!v2)
  {
    (*(*(*&v1 + 424) + 8))(*(*&v1 + 432), *(*&v1 + 416));
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v16 = *(*&v1 + 384);
    v17 = *(*&v1 + 320);
    v18 = sub_26F49DCA8();
    __swift_project_value_buffer(v18, qword_280F67EB8);
    sub_26F3FFF24(v17, v16);
    v19 = sub_26F49DC88();
    v20 = sub_26F49FDB8();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(*&v1 + 384);
    if (v21)
    {
      v23 = *(*&v1 + 360);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v99 = v25;
      *v24 = 136446210;
      sub_26F4A0178();

      v100[0] = 0x203A656372756F73;
      v100[1] = 0xE800000000000000;
      v26 = sub_26F49D988();
      MEMORY[0x2743907E0](v26);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v27 = v22 + *(v23 + 20);
      v28 = sub_26F49D988();
      MEMORY[0x2743907E0](v28);

      sub_26F3FFF88(v22);
      v29 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v99);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_26F39E000, v19, v20, "Successfully added locale pair: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x274391F70](v25, -1, -1);
      MEMORY[0x274391F70](v24, -1, -1);
    }

    else
    {

      sub_26F3FFF88(v22);
    }

    v30 = *(*&v1 + 576);
    v31 = *(*&v1 + 560);
    v32 = *(*&v1 + 544);
    v33 = *(*&v1 + 528);
    v34 = *(*&v1 + 328);
    *(*&v1 + 296) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F0, &qword_26F4A6228);
    sub_26F49FCD8();

    v36 = *(*&v1 + 504);
    v35 = *(*&v1 + 512);
    v38 = *(*&v1 + 488);
    v37 = *(*&v1 + 496);
    v40 = *(*&v1 + 472);
    v39 = *(*&v1 + 480);
    v42 = *(*&v1 + 456);
    v41 = *(*&v1 + 464);
    v43 = *(*&v1 + 432);
    v44 = *(*&v1 + 408);
    v92 = *(*&v1 + 384);
    v94 = *(*&v1 + 376);
    v96 = *(*&v1 + 368);
    v98 = *(*&v1 + 352);

    v45 = *(*&v1 + 8);

    return v45();
  }

  v3 = 0;
  v93 = *(*&v1 + 272);
  v4 = *(v2 + 16);
  v87 = *(*&v1 + 267);
  v88 = *(*&v1 + 568);
  v5 = *(*&v1 + 560);
  v89 = *(*&v1 + 544);
  v90 = *(*&v1 + 576);
  v85 = *(*&v1 + 266);
  v86 = *(*&v1 + 536);
  v95 = *(*&v1 + 552);
  v97 = *(*&v1 + 528);
  v91 = *(*&v1 + 520);
LABEL_3:
  v6 = 48 * v3;
  v7 = v3;
  while (v4 != v7)
  {
    if (v7 >= v4)
    {
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v3 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_66;
    }

    v10 = *(v93 + v6 + 32);
    v9 = *(v93 + v6 + 40);
    v1 = *(v93 + v6 + 48);
    v0 = *(v93 + v6 + 56);
    v11 = *(v93 + v6 + 72);
    if (v95 == v10 && v5 == v9)
    {
      goto LABEL_19;
    }

    v13 = v5;
    v14 = *(v93 + v6 + 32);
    v15 = *(v93 + v6 + 40);
    if (sub_26F4A0458())
    {
      v95 = v10;
LABEL_19:

      v5 = v9;
      v88 = v1;
      v87 = v0;
      v90 = v11;
      goto LABEL_3;
    }

    if (v91 == v10 && v97 == v9)
    {
      v10 = v91;
LABEL_16:

      v5 = v13;
      v89 = v11;
      v85 = v0;
      v86 = v1;
      v97 = v9;
      v91 = v10;
      goto LABEL_3;
    }

    v8 = sub_26F4A0458();
    ++v7;
    v6 += 48;
    v5 = v13;
    if (v8)
    {
      goto LABEL_16;
    }
  }

  if ((v87 & 1) == 0)
  {
    v0 = v84;
    v83 = v5;
    if ((v85 & 1) == 0)
    {

      LODWORD(v1) = 0;
      v47 = (v86 + v88) * 0.5;
LABEL_40:
      v4 = *&v47;
      goto LABEL_41;
    }

    v1 = v88;
    if (v86 != 0.0)
    {
      goto LABEL_37;
    }

LABEL_39:

    v48 = v1;
    LODWORD(v1) = 0;
    v47 = v48 * 0.5 + 0.5;
    goto LABEL_40;
  }

  v0 = v84;
  if (v88 != 0.0)
  {
    v83 = v5;
    goto LABEL_37;
  }

  v83 = v5;
  v1 = v86;
  if ((v85 & 1) == 0)
  {
    goto LABEL_39;
  }

  if (v86 == 0.0)
  {

    v4 = 0;
    goto LABEL_38;
  }

LABEL_37:

  v4 = 1;
LABEL_38:
  LODWORD(v1) = 1;
LABEL_41:
  if (qword_280F66C10 == -1)
  {
    goto LABEL_42;
  }

LABEL_67:
  swift_once();
LABEL_42:
  v49 = sub_26F49DCA8();
  __swift_project_value_buffer(v49, qword_280F67EB8);
  v50 = sub_26F49DC88();
  v51 = sub_26F49FDC8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *(v0 + 312) = v53;
    *v52 = 136446210;
    v54 = LODWORD(v1);
    if (LODWORD(v1))
    {
      v55 = v4;
      if (v4)
      {
        v56 = 0xD000000000000014;
      }

      else
      {
        v56 = 0x656C6C6174736E69;
      }

      if (v4)
      {
        v57 = 0x800000026F4ADC00;
      }

      else
      {
        v57 = 0xE900000000000064;
      }
    }

    else
    {
      v55 = v4;
      *(v0 + 240) = 0;
      *(v0 + 248) = 0xE000000000000000;
      MEMORY[0x2743907E0](0x64616F6C6E776F64, 0xEC00000028676E69);
      sub_26F49FD28();
      MEMORY[0x2743907E0](41, 0xE100000000000000);
      v56 = *(v0 + 240);
      v57 = *(v0 + 248);
    }

    v58 = sub_26F3B38D0(v56, v57, (v0 + 312));

    *(v52 + 4) = v58;
    _os_log_impl(&dword_26F39E000, v50, v51, "Add locale pair state yield: %{public}s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x274391F70](v53, -1, -1);
    MEMORY[0x274391F70](v52, -1, -1);

    v4 = v55;
  }

  else
  {
    v54 = LODWORD(v1);
  }

  v60 = *(v0 + 344);
  v59 = *(v0 + 352);
  v61 = *(v0 + 328);
  v62 = *(v0 + 336);
  *(v0 + 256) = v4;
  *(v0 + 264) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F0, &qword_26F4A6228);
  sub_26F49FCC8();
  (*(v60 + 8))(v59, v62);
  if (v4)
  {
    v63 = 0;
  }

  else
  {
    v63 = v54;
  }

  if (v63 == 1)
  {
    sub_26F3FFF24(*(v0 + 320), *(v0 + 376));
    v64 = sub_26F49DC88();
    v65 = sub_26F49FDB8();
    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 376);
    if (v66)
    {
      v68 = *(v0 + 360);
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v100[0] = v70;
      *v69 = 136446210;
      *(v0 + 224) = 0;
      *(v0 + 232) = 0xE000000000000000;
      sub_26F4A0178();
      v71 = *(v0 + 232);

      *(v0 + 208) = 0x203A656372756F73;
      *(v0 + 216) = 0xE800000000000000;
      v72 = sub_26F49D988();
      MEMORY[0x2743907E0](v72);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v73 = v67 + *(v68 + 20);
      v74 = sub_26F49D988();
      MEMORY[0x2743907E0](v74);

      v75 = *(v0 + 208);
      v76 = *(v0 + 216);
      sub_26F3FFF88(v67);
      v77 = sub_26F3B38D0(v75, v76, v100);

      *(v69 + 4) = v77;
      _os_log_impl(&dword_26F39E000, v64, v65, "Install complete for locale pair: %{public}s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x274391F70](v70, -1, -1);
      MEMORY[0x274391F70](v69, -1, -1);
    }

    else
    {

      sub_26F3FFF88(v67);
    }

    v78 = *(v0 + 328);
    *(v0 + 304) = 0;
    sub_26F49FCD8();
  }

  *(v0 + 576) = v90;
  *(v0 + 267) = v87 & 1;
  *(v0 + 568) = v88;
  *(v0 + 560) = v83;
  *(v0 + 552) = v95;
  *(v0 + 544) = v89;
  *(v0 + 266) = v85 & 1;
  *(v0 + 536) = v86;
  *(v0 + 528) = v97;
  *(v0 + 520) = v91;
  v79 = *(MEMORY[0x277D858B8] + 4);
  v80 = swift_task_alloc();
  *(v0 + 584) = v80;
  *v80 = v0;
  v80[1] = sub_26F3FDCCC;
  v81 = *(v0 + 432);
  v82 = *(v0 + 416);

  return MEMORY[0x2822005A8](v0 + 272, 0, 0, v82, v0 + 280);
}

uint64_t sub_26F3FE840()
{
  v41 = v0;
  (*(v0[53] + 8))(v0[54], v0[52]);
  v1 = v0[35];
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v2 = v0[46];
  v3 = v0[40];
  v4 = sub_26F49DCA8();
  __swift_project_value_buffer(v4, qword_280F67EB8);
  sub_26F3FFF24(v3, v2);
  v5 = v1;
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDD8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[46];
  if (v8)
  {
    v38 = v0[45];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40[0] = v12;
    *v10 = 136446466;
    sub_26F4A0178();

    v40[1] = 0x203A656372756F73;
    v40[2] = 0xE800000000000000;
    v13 = sub_26F49D988();
    MEMORY[0x2743907E0](v13);

    MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
    v14 = v9 + *(v38 + 20);
    v15 = sub_26F49D988();
    MEMORY[0x2743907E0](v15);

    sub_26F3FFF88(v9);
    v16 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, v40);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    v17 = sub_26F49D7E8();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_26F39E000, v6, v7, "Failed to add locale pair %{public}s: %@", v10, 0x16u);
    sub_26F3CC31C(v11);
    MEMORY[0x274391F70](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x274391F70](v12, -1, -1);
    MEMORY[0x274391F70](v10, -1, -1);
  }

  else
  {

    sub_26F3FFF88(v9);
  }

  v18 = v0[72];
  v19 = v0[70];
  v20 = v0[68];
  v21 = v0[66];
  v22 = v0[41];
  v0[36] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F0, &qword_26F4A6228);
  sub_26F49FCD8();

  v24 = v0[63];
  v23 = v0[64];
  v26 = v0[61];
  v25 = v0[62];
  v28 = v0[59];
  v27 = v0[60];
  v30 = v0[57];
  v29 = v0[58];
  v31 = v0[54];
  v32 = v0[51];
  v35 = v0[48];
  v36 = v0[47];
  v37 = v0[46];
  v39 = v0[44];

  v33 = v0[1];

  return v33();
}

uint64_t static LanguagesInstallService.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C0, &unk_26F4A61B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v9 = sub_26F49DCA8();
  __swift_project_value_buffer(v9, qword_280F67EB8);

  v10 = sub_26F49DC88();
  v11 = sub_26F49FDB8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = a2;
    v21 = v13;
    v14 = v13;
    *v12 = 134349314;
    *(v12 + 4) = *(a1 + 16);

    *(v12 + 12) = 2082;
    v15 = MEMORY[0x274390900](a1, &type metadata for LanguageModel);
    v17 = sub_26F3B38D0(v15, v16, &v21);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_26F39E000, v10, v11, "Request to remove %{public}ld languages: %{public}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x274391F70](v14, -1, -1);
    MEMORY[0x274391F70](v12, -1, -1);
  }

  else
  {
  }

  MEMORY[0x28223BE20](v18);
  *(&v20 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  (*(v5 + 104))(v8, *MEMORY[0x277D858A0], v4);
  return sub_26F49FD08();
}

uint64_t sub_26F3FEE98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = sub_26F49FC08();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  sub_26F40570C(0, 0, v12, &unk_26F4A6200, v15);
}

uint64_t sub_26F3FF084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D8, &unk_26F4A6C80);
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v9 = sub_26F49DAB8();
  v5[24] = v9;
  v10 = *(v9 - 8);
  v5[25] = v10;
  v11 = *(v10 + 64) + 15;
  v5[26] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C0, &unk_26F4A61B0);
  v5[27] = v12;
  v13 = *(v12 - 8);
  v5[28] = v13;
  v14 = *(v13 + 64) + 15;
  v5[29] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00E0, &qword_26F4A6210);
  v5[30] = v15;
  v16 = *(v15 - 8);
  v5[31] = v16;
  v17 = *(v16 + 64) + 15;
  v5[32] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00E8, &qword_26F4A6218);
  v5[33] = v18;
  v19 = *(v18 - 8);
  v5[34] = v19;
  v20 = *(v19 + 64) + 15;
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F3FF2E4, 0, 0);
}

uint64_t sub_26F3FF2E4()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  v0[36] = v2;
  if (v2)
  {
    v3 = v0[25];
    v40 = MEMORY[0x277D84F90];
    sub_26F4032B0(0, v2, 0);
    v4 = v40;
    v35 = (v3 + 8);
    v5 = (v1 + 72);
    do
    {
      v7 = *(v5 - 5);
      v6 = *(v5 - 4);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (*(v5 - 16) == 1 && *(v5 - 3))
      {
        v10 = *(v5 - 4);
      }

      else
      {
        v11 = v0[26];
        v36 = v0[24];
        swift_bridgeObjectRetain_n();

        sub_26F49D978();
        v38 = v4;
        v0[2] = sub_26F49D988();
        v0[3] = v12;
        v0[4] = 45;
        v0[5] = 0xE100000000000000;
        v0[6] = 95;
        v0[7] = 0xE100000000000000;
        sub_26F3BDC0C();
        v13 = sub_26F49FFF8();
        v37 = v2;
        v14 = v9;
        v16 = v15;

        (*v35)(v11, v36);
        v0[8] = v13;
        v0[9] = v16;
        v0[10] = 45;
        v0[11] = 0xE100000000000000;
        v0[12] = 95;
        v0[13] = 0xE100000000000000;

        v7 = sub_26F49FFF8();
        v18 = v17;
        v9 = v14;
        v2 = v37;

        v6 = v18;
        v4 = v38;
      }

      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26F4032B0((v19 > 1), v20 + 1, 1);
      }

      *(v4 + 16) = v20 + 1;
      v21 = v4 + 48 * v20;
      *(v21 + 32) = v7;
      *(v21 + 40) = v6;
      *(v21 + 48) = 1;
      *(v21 + 56) = 1;
      *(v21 + 64) = v8;
      *(v21 + 72) = v9;
      v5 += 6;
      --v2;
    }

    while (v2);
    v22 = v4;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v39 = v0[35];
  v23 = v0[31];
  v24 = v0[32];
  v26 = v0[29];
  v25 = v0[30];
  v27 = v0[27];
  v28 = v0[28];
  v29 = swift_task_alloc();
  *(v29 + 16) = v22;
  *(v29 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  (*(v28 + 104))(v26, *MEMORY[0x277D858A0], v27);
  sub_26F49FD08();

  sub_26F49FC58();
  (*(v23 + 8))(v24, v25);
  v30 = *(MEMORY[0x277D858B8] + 4);
  v31 = swift_task_alloc();
  v0[37] = v31;
  *v31 = v0;
  v31[1] = sub_26F3FF6B4;
  v32 = v0[35];
  v33 = v0[33];

  return MEMORY[0x2822005A8](v0 + 14, 0, 0, v33, v0 + 15);
}

uint64_t sub_26F3FF6B4()
{
  v2 = *(*v1 + 296);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_26F3FFBA4;
  }

  else
  {
    v3 = sub_26F3FF7C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F3FF7C4()
{
  v47 = v0;
  v1 = v0[14];
  if (v1)
  {
    v3 = v0[22];
    v2 = v0[23];
    v4 = v0[20];
    v5 = v0[21];
    v0[18] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    sub_26F49FCC8();
    (*(v3 + 8))(v2, v5);
    v6 = *(MEMORY[0x277D858B8] + 4);
    v7 = swift_task_alloc();
    v0[37] = v7;
    *v7 = v0;
    v7[1] = sub_26F3FF6B4;
    v8 = v0[35];
    v9 = v0[33];

    return MEMORY[0x2822005A8](v0 + 14, 0, 0, v9, v0 + 15);
  }

  else
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v10 = v0[19];
    v11 = sub_26F49DCA8();
    __swift_project_value_buffer(v11, qword_280F67EB8);

    v12 = sub_26F49DC88();
    v13 = sub_26F49FDB8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[36];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      v45 = v16;
      *v15 = 136446210;
      v18 = MEMORY[0x277D84F90];
      if (v14)
      {
        v42 = v16;
        v43 = v13;
        v44 = v12;
        v19 = v0[36];
        v20 = v0[19];
        v46 = MEMORY[0x277D84F90];
        sub_26F403380(0, v19, 0);
        v21 = 0;
        v18 = v46;
        v22 = *(v46 + 16);
        v23 = 16 * v22;
        v24 = (v20 + 40);
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;
          v46 = v18;
          v27 = *(v18 + 24);

          if (v22 >= v27 >> 1)
          {
            sub_26F403380((v27 > 1), v22 + 1, 1);
            v18 = v46;
          }

          v28 = v0[36];
          ++v21;
          *(v18 + 16) = v22 + 1;
          v29 = v18 + v23;
          *(v29 + 32) = v25;
          *(v29 + 40) = v26;
          v23 += 16;
          v24 += 6;
          ++v22;
        }

        while (v21 != v28);
        v12 = v44;
        v13 = v43;
        v17 = v42;
      }

      v30 = MEMORY[0x274390900](v18, MEMORY[0x277D837D0]);
      v32 = v31;

      v33 = sub_26F3B38D0(v30, v32, &v45);

      *(v15 + 4) = v33;
      _os_log_impl(&dword_26F39E000, v12, v13, "Successfully removed languages: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x274391F70](v17, -1, -1);
      MEMORY[0x274391F70](v15, -1, -1);
    }

    v34 = v0[20];
    v0[17] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    sub_26F49FCD8();
    v35 = v0[35];
    v36 = v0[32];
    v37 = v0[29];
    v38 = v0[26];
    v39 = v0[23];

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_26F3FFBA4()
{
  v45 = v0;
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[15];
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = sub_26F49DCA8();
  __swift_project_value_buffer(v3, qword_280F67EB8);

  v4 = v1;
  v5 = sub_26F49DC88();
  v6 = sub_26F49FDD8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = v0[19];
    v9 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v43 = v10;
    *v9 = 134349570;
    *(v9 + 4) = v7;

    *(v9 + 12) = 2082;
    v11 = MEMORY[0x277D84F90];
    if (v7)
    {
      v37 = v10;
      v38 = v6;
      v39 = v9;
      v40 = v5;
      v41 = v1;
      v12 = v0[36];
      v13 = v0[19];
      v44 = MEMORY[0x277D84F90];
      sub_26F403380(0, v12, 0);
      v14 = 0;
      v11 = v44;
      v15 = *(v44 + 16);
      v16 = 16 * v15;
      v17 = (v13 + 40);
      do
      {
        v18 = *(v17 - 1);
        v19 = *v17;
        v44 = v11;
        v20 = *(v11 + 24);

        if (v15 >= v20 >> 1)
        {
          sub_26F403380((v20 > 1), v15 + 1, 1);
          v11 = v44;
        }

        v21 = v0[36];
        ++v14;
        *(v11 + 16) = v15 + 1;
        v22 = v11 + v16;
        *(v22 + 32) = v18;
        *(v22 + 40) = v19;
        v16 += 16;
        v17 += 6;
        ++v15;
      }

      while (v14 != v21);
      v5 = v40;
      v1 = v41;
      v9 = v39;
      v6 = v38;
      v10 = v37;
    }

    v24 = MEMORY[0x274390900](v11, MEMORY[0x277D837D0]);
    v26 = v25;

    v27 = sub_26F3B38D0(v24, v26, &v43);

    *(v9 + 14) = v27;
    *(v9 + 22) = 2112;
    v28 = sub_26F49D7E8();
    *(v9 + 24) = v28;
    *v42 = v28;
    _os_log_impl(&dword_26F39E000, v5, v6, "Failed to remove %{public}ld languages: %{public}s: %@", v9, 0x20u);
    sub_26F3CC31C(v42);
    MEMORY[0x274391F70](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x274391F70](v10, -1, -1);
    MEMORY[0x274391F70](v9, -1, -1);
  }

  else
  {
    v23 = v0[19];
  }

  v29 = v0[20];
  v0[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  sub_26F49FCD8();
  v30 = v0[35];
  v31 = v0[32];
  v32 = v0[29];
  v33 = v0[26];
  v34 = v0[23];

  v35 = v0[1];

  return v35();
}

uint64_t sub_26F3FFF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalePair();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F3FFF88(uint64_t a1)
{
  v2 = type metadata accessor for LocalePair();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F400008(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26F3CF3AC;

  return sub_26F3FF084(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_26F40010C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalePair();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F400170(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocalePair() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00F0, &qword_26F4A6228) - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_26F3CEEAC;

  return sub_26F3FD2E0(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_26F4002E0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8) - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_26F3CF3AC;

  return sub_26F3FBE14(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_26F4003F4()
{
  result = qword_280F65650;
  if (!qword_280F65650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F65650);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_20Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_26F40051C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_26F4005B8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_26F4A00A8();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x274390F80](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_26F4006DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a2 + 72);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *(v8 - 16);
      v12 = *(v8 - 4);
      v13 = *(v8 - 3);
      *&v18 = *(v8 - 5);
      *(&v18 + 1) = v12;
      v19 = v13;
      v20 = v11;
      v21 = v9;
      v22 = v10;

      result = v7(&v18);
      if (v4)
      {
      }

      if (result)
      {
        break;
      }

      v8 += 6;

      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    *a3 = v18;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
    *(a3 + 32) = v16;
    *(a3 + 40) = v17;
  }

  else
  {
LABEL_6:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void *sub_26F4007E4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26F4A00A8())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x274390F80](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
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

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t LanguageModel.init(identifier:state:displayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a4;
  v11 = sub_26F49DAB8();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = *a3;
  v22 = *(a3 + 8);
  v51 = a1;
  v52 = a2;
  v49 = 45;
  v50 = 0xE100000000000000;
  v46 = v21;
  v47 = 95;
  v48 = 0xE100000000000000;
  sub_26F3BDC0C();
  v23 = sub_26F49FFF8();
  v25 = v24;

  LOBYTE(v51) = v22;
  if (a5)
  {
    v27 = v45;
  }

  else
  {
    v28 = v14;
    v29 = v44;

    v45 = v23;
    sub_26F49D978();
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v30 = sub_26F49D9F8();
    v31 = sub_26F49D9F8();
    v32 = [v30 lt:0 displayNameForContext:v31 inTargetLocale:?];

    if (v32)
    {
      v27 = sub_26F49F8C8();
      a5 = v33;

      v34 = *(v29 + 8);
      v34(v17, v11);
      result = (v34)(v20, v11);
      v23 = v45;
    }

    else
    {
      v44 = *(v29 + 8);
      (v44)(v17, v11);
      v35 = v28;
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v36 = sub_26F49D9F8();
      v37 = sub_26F49D9F8();
      v38 = [v36 lt:0 displaySubnameForContext:v37 inTargetLocale:?];

      if (v38)
      {
        v27 = sub_26F49F8C8();
        a5 = v39;

        v40 = v44;
        (v44)(v35, v11);
        result = v40(v20, v11);
        v23 = v45;
      }

      else
      {
        v41 = v44;
        (v44)(v28, v11);
        v41(v20, v11);

        v23 = v45;
        v27 = v45;
        a5 = v25;
      }
    }
  }

  v42 = v51;
  *a6 = v23;
  *(a6 + 8) = v25;
  *(a6 + 16) = v46;
  *(a6 + 24) = v42;
  *(a6 + 32) = v27;
  *(a6 + 40) = a5;
  return result;
}

uint64_t sub_26F400C68(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = a1 == 0;
    if (a1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x656C6C6174736E69;
    }

    if (v2)
    {
      v4 = 0xE900000000000064;
    }

    else
    {
      v4 = 0x800000026F4ADC00;
    }
  }

  else
  {
    MEMORY[0x2743907E0](0x64616F6C6E776F64, 0xEC00000028676E69);
    sub_26F49FD28();
    MEMORY[0x2743907E0](41, 0xE100000000000000);
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x2743907E0](v3, v4);
}

uint64_t LanguageModel.locale.getter()
{
  v2 = *v0;
  v1 = v0[1];

  return sub_26F49D978();
}

BOOL Array<A>.installedLanguagesExist.getter(uint64_t a1)
{
  v1 = (a1 + 56);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *(v1 - 1);
    v4 = *v1;
    v1 += 48;
  }

  while (v4 != 1 || v3 != 0);
  return v2 != 0;
}

uint64_t Array<A>.downloadable.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 24;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v3 + 48 * v1;
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_17;
    }

    v7 = *(v5 + 32);
    v8 = *(v5 + 24);
    ++v1;
    v5 += 48;
    if (v7 != 1 || v8 != 0)
    {
      v11 = *(v5 - 40);
      v10 = *(v5 - 32);
      v13 = *(v5 - 8);
      v12 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = v11;
      if ((result & 1) == 0)
      {
        result = sub_26F4032B0(0, *(v4 + 16) + 1, 1);
      }

      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_26F4032B0((v14 > 1), v15 + 1, 1);
      }

      *(v4 + 16) = v15 + 1;
      v16 = v4 + 48 * v15;
      *(v16 + 32) = v17;
      *(v16 + 40) = v10;
      *(v16 + 48) = v8;
      *(v16 + 56) = v7;
      *(v16 + 64) = v13;
      *(v16 + 72) = v12;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t Array<A>.installed.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 24;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v3 + 48 * v1;
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_18;
    }

    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    ++v1;
    v5 += 48;
    if (v8 == 1 && v7 == 0)
    {
      v11 = *(v5 - 40);
      v10 = *(v5 - 32);
      v13 = *(v5 - 8);
      v12 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26F4032B0(0, *(v4 + 16) + 1, 1);
      }

      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_26F4032B0((v14 > 1), v15 + 1, 1);
      }

      *(v4 + 16) = v15 + 1;
      v16 = v4 + 48 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v10;
      *(v16 + 48) = 0;
      *(v16 + 56) = 1;
      *(v16 + 64) = v13;
      *(v16 + 72) = v12;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t LanguageModel.identifierForDownloads.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  MEMORY[0x2743907E0](*v0, *(v0 + 8));
  MEMORY[0x2743907E0](32, 0xE100000000000000);
  sub_26F400C68(v1, v2);
  return 0;
}

uint64_t sub_26F4010D4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (a3 + 72);
    do
    {
      v9 = v7;
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = *(v8 - 16);
      v13 = *(v8 - 4);
      v14 = *(v8 - 3);
      v17[0] = *(v8 - 5);
      v17[1] = v13;
      v17[2] = v14;
      v18 = v12;
      v19 = v10;
      v20 = v11;

      v15 = a1(v17);

      LOBYTE(v5) = (v4 != 0) | v15;
      if ((v4 != 0) | v15 & 1)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 6;
    }

    while (v9);
  }

  return v5 & 1;
}

uint64_t sub_26F4011AC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
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
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x274390F80](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_26F4A00A8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t static LanguageState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && (v8 = *a1, v9 = *a2, v2 == v3);
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t LanguageModel.replacing(state:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26F49DAB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v24 = *(a1 + 8);
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[4];
  v22 = v2[5];
  v23 = v12;

  sub_26F49D978();
  v30 = sub_26F49D988();
  v31 = v13;
  v28 = 45;
  v29 = 0xE100000000000000;
  v26 = 95;
  v27 = 0xE100000000000000;
  sub_26F3BDC0C();
  v14 = sub_26F49FFF8();
  v16 = v15;
  (*(v6 + 8))(v9, v5);

  v30 = v14;
  v31 = v16;
  v28 = 45;
  v29 = 0xE100000000000000;
  v26 = 95;
  v27 = 0xE100000000000000;
  v17 = v22;

  v18 = sub_26F49FFF8();
  v20 = v19;

  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v25;
  *(a2 + 24) = v24;
  *(a2 + 32) = v23;
  *(a2 + 40) = v17;
  return result;
}

uint64_t LanguageModel.init(locale:state:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a3;
  v40 = sub_26F49DAB8();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  v39 = *a2;
  LODWORD(v38) = *(a2 + 8);
  v41 = a1;
  v47 = sub_26F49D988();
  v48 = v14;
  v45 = 45;
  v46 = 0xE100000000000000;
  v43 = 95;
  v44 = 0xE100000000000000;
  sub_26F3BDC0C();
  v15 = sub_26F49FFF8();
  v17 = v16;

  v47 = v15;
  v48 = v17;
  v45 = 45;
  v46 = 0xE100000000000000;
  v43 = 95;
  v44 = 0xE100000000000000;
  v18 = sub_26F49FFF8();
  v20 = v19;

  LOBYTE(v47) = v38;

  v38 = v18;
  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v21 = sub_26F49D9F8();
  v22 = sub_26F49D9F8();
  v23 = [v21 lt:0 displayNameForContext:v22 inTargetLocale:?];

  if (v23)
  {
    v24 = sub_26F49F8C8();
    v26 = v25;

    v27 = *(v5 + 8);
    v28 = v40;
    v27(v10, v40);
  }

  else
  {
    v27 = *(v5 + 8);
    v28 = v40;
    v27(v10, v40);
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v29 = sub_26F49D9F8();
    v30 = sub_26F49D9F8();
    v31 = [v29 lt:0 displaySubnameForContext:v30 inTargetLocale:?];

    if (!v31)
    {
      v27(v37, v28);
      v27(v13, v28);

      v33 = v38;
      v24 = v38;
      v26 = v20;
      goto LABEL_6;
    }

    v24 = sub_26F49F8C8();
    v26 = v32;

    v27(v37, v28);
  }

  v27(v13, v28);
  v33 = v38;
LABEL_6:
  v34 = v47;
  result = (v27)(v41, v28);
  v36 = v42;
  *v42 = v33;
  v36[1] = v20;
  v36[2] = v39;
  *(v36 + 24) = v34;
  v36[4] = v24;
  v36[5] = v26;
  return result;
}

uint64_t LanguageState.combine(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *v2;
  if (*(v2 + 8) == 1)
  {
    if (v5 == 0.0)
    {
      if (*(result + 8))
      {
        if (v3 == 0.0)
        {
          *a2 = 0;
          *(a2 + 8) = 1;
          return result;
        }

        goto LABEL_8;
      }

      v5 = *result;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (*(result + 8))
  {
    if (v3 == 0.0)
    {
LABEL_11:
      v4 = 0;
      v6 = v5 * 0.5 + 0.5;
      goto LABEL_12;
    }

LABEL_8:
    *a2 = 1;
    *(a2 + 8) = 1;
    return result;
  }

  v6 = (v3 + v5) * 0.5;
LABEL_12:
  *a2 = v6;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_26F4019A4()
{
  *v0;
  sub_26F49F9A8();
}

uint64_t sub_26F401AF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26F404B00();
  *a2 = result;
  return result;
}

void sub_26F401B20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEB00000000657275;
    v9 = 0xD000000000000010;
    v10 = 0x800000026F4AC340;
    if (v2 != 1)
    {
      v9 = 0x546C6C6174736E69;
      v10 = 0xEE0074756F656D69;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x6C69614664616572;
    }

    if (!v11)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x800000026F4AC380;
    v4 = 0xD00000000000001ALL;
    if (v2 == 5)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x800000026F4AC3A0;
    }

    v5 = 0xEE006572756C6961;
    v6 = 0x466C6C6174736E69;
    if (v2 != 3)
    {
      v6 = 0x6E61697261567369;
      v5 = 0xE900000000000074;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_26F401C38()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000010;
    if (v1 != 1)
    {
      v5 = 0x546C6C6174736E69;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6C69614664616572;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 == 5)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0x466C6C6174736E69;
    if (v1 != 3)
    {
      v3 = 0x6E61697261567369;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

TranslationUI::TranslationTaskHint_optional __swiftcall TranslationTaskHint.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 10)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 5)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 1)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_26F401DAC()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](qword_26F4A66B8[v1]);
  return sub_26F4A0568();
}

uint64_t sub_26F401E34()
{
  v1 = *v0;
  sub_26F4A0528();
  MEMORY[0x274391330](qword_26F4A66B8[v1]);
  return sub_26F4A0568();
}

uint64_t LocalePair.sourceLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49DAB8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LocalePair.targetLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocalePair() + 20);
  v4 = sub_26F49DAB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LocalePair.init(sourceLocale:targetLocale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26F49DAB8();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for LocalePair() + 20);

  return v9(v7, a2, v6);
}

uint64_t LocalePair.identifier.getter()
{
  v0 = *(type metadata accessor for LocalePair() + 20);
  v1 = objc_allocWithZone(MEMORY[0x277CE1B38]);
  v2 = sub_26F49D9F8();
  v3 = sub_26F49D9F8();
  v4 = [v1 initWithSourceLocale:v2 targetLocale:v3];

  v5 = [v4 identifier];
  v6 = sub_26F49F8C8();

  return v6;
}

uint64_t LocalePair.description.getter()
{
  sub_26F4A0178();

  v1 = sub_26F49D988();
  MEMORY[0x2743907E0](v1);

  MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
  v2 = v0 + *(type metadata accessor for LocalePair() + 20);
  v3 = sub_26F49D988();
  MEMORY[0x2743907E0](v3);

  return 0x203A656372756F73;
}

uint64_t LanguageState.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0x656C6C6174736E69;
    }
  }

  else
  {
    v2 = *v0;
    MEMORY[0x2743907E0](0x64616F6C6E776F64, 0xEC00000028676E69);
    sub_26F49FD28();
    MEMORY[0x2743907E0](41, 0xE100000000000000);
    return 0;
  }
}

uint64_t sub_26F402298(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && (v8 = *a1, v9 = *a2, v2 == v3);
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t LanguageModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void LanguageModel.state.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t LanguageModel.state.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t LanguageModel.displayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t LanguageModel.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26F49F9A8();
}

BOOL static LanguageModel.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  sub_26F3BDC0C();
  return sub_26F4A0008() == -1;
}

uint64_t LanguageModel.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  MEMORY[0x2743907E0](v0[4], v0[5]);
  MEMORY[0x2743907E0](23328, 0xE200000000000000);
  MEMORY[0x2743907E0](v1, v2);
  MEMORY[0x2743907E0](2112093, 0xE300000000000000);
  sub_26F400C68(v3, v4);
  return 0;
}

uint64_t LanguageModel.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26F4A0528();
  sub_26F49F9A8();
  return sub_26F4A0568();
}

uint64_t sub_26F4024EC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_26F4024F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26F4A0528();
  sub_26F49F9A8();
  return sub_26F4A0568();
}

uint64_t sub_26F402544()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26F49F9A8();
}

uint64_t sub_26F40254C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26F4A0528();
  sub_26F49F9A8();
  return sub_26F4A0568();
}

BOOL sub_26F402598(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  sub_26F3BDC0C();
  return sub_26F4A0008() == -1;
}

BOOL sub_26F4025F8(__int128 *a1, __int128 *a2)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v10 = *(a1 + 24);
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 24);
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  return (sub_26F49F858() & 1) == 0;
}

BOOL sub_26F402668(__int128 *a1, __int128 *a2)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v10 = *(a1 + 24);
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 24);
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  return (sub_26F49F858() & 1) == 0;
}

uint64_t sub_26F4026D8(__int128 *a1, __int128 *a2)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v10 = *(a1 + 24);
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 24);
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  return sub_26F49F858() & 1;
}

uint64_t sub_26F402744()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  MEMORY[0x2743907E0](v0[4], v0[5]);
  MEMORY[0x2743907E0](23328, 0xE200000000000000);
  MEMORY[0x2743907E0](v1, v2);
  MEMORY[0x2743907E0](2112093, 0xE300000000000000);
  sub_26F400C68(v3, v4);
  return 0;
}

uint64_t Array<A>.set.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_26F403380(0, v1, 0);
    v2 = v12;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v12 + 16);
      v8 = *(v12 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_26F403380((v8 > 1), v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v9 = v12 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 6;
      --v1;
    }

    while (v1);
  }

  v10 = sub_26F4043EC(v2);

  return v10;
}

uint64_t Array<A>.available.getter(uint64_t a1)
{
  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v3 = v2;
  v4 = sub_26F49F898();
  v5 = [v3 BOOLForKey_];

  v6 = [objc_opt_self() sharedConnection];
  if (!v6)
  {

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:

    return a1;
  }

  v7 = v6;
  v8 = [v6 isOnDeviceOnlyTranslationForced];

  if (((v8 | v5) & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = Array<A>.installed.getter(a1);
  v10 = Array<A>.downloadable.getter(a1);
  sub_26F403F74(v10);
  return v9;
}

uint64_t Array<A>.downloading.getter(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v1 + 48 * v2;
  while (1)
  {
    if (v3 == v2)
    {
      return v4;
    }

    if (v2 >= v3)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 56);
    ++v2;
    v5 += 48;
    if ((v7 & 1) == 0)
    {
      v9 = *(v5 - 16);
      v8 = *(v5 - 8);
      v10 = *v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26F4032B0(0, *(v4 + 16) + 1, 1);
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_26F4032B0((v13 > 1), v14 + 1, 1);
      }

      *(v4 + 16) = v14 + 1;
      v15 = v4 + 48 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v8;
      *(v15 + 48) = v10;
      *(v15 + 56) = 0;
      *(v15 + 64) = v12;
      *(v15 + 72) = v11;
      v2 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t Array<A>.localeState(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_26F49D988();
  sub_26F3BDC0C();
  v4 = sub_26F49FFF8();
  v6 = v5;

  v7 = (a1 + 56);
  v8 = *(a1 + 16) + 1;
  while (--v8)
  {
    v9 = *(v7 - 1);
    v10 = *v7;
    if (*(v7 - 3) != v4 || *(v7 - 2) != v6)
    {
      v7 += 48;
      if ((sub_26F4A0458() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
LABEL_10:
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 9) = v8 == 0;
  return result;
}

uint64_t Array<A>.defaultPair(userLanguages:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v70 - v10;
  MEMORY[0x28223BE20](v12);
  v82 = &v70 - v13;
  MEMORY[0x28223BE20](v14);
  v75 = &v70 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  sub_26F49D978();
  sub_26F49D978();
  v25 = *(a1 + 16);
  v26 = (a1 + 56);
  v27 = v25 + 1;
  do
  {
    if (!--v27)
    {
      v43 = *(v5 + 32);
      v43(a2, v24, v4);
      v44 = type metadata accessor for LocalePair();
      return (v43)(&a2[*(v44 + 20)], v21, v4);
    }

    v28 = *(v26 - 1);
    v29 = *v26;
    v26 += 48;
  }

  while (v29 != 1 || v28 != 0);
  v71 = v24;
  v72 = v21;
  v73 = v8;
  v74 = a2;
  v79 = v18;
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v89 = MEMORY[0x277D84F90];
  sub_26F40333C(0, v25, 0);
  v31 = v89;
  v83 = v5 + 32;
  v84 = v4;
  v32 = (a1 + 40);
  do
  {
    v33 = *(v32 - 1);
    v34 = *v32;

    sub_26F49D978();
    v89 = v31;
    v36 = *(v31 + 16);
    v35 = *(v31 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_26F40333C(v35 > 1, v36 + 1, 1);
      v31 = v89;
    }

    *(v31 + 16) = v36 + 1;
    v37 = v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v38 = *(v5 + 72);
    v39 = v37 + v38 * v36;
    v40 = *(v5 + 32);
    v41 = v84;
    result = v40(v39, v11, v84);
    v32 += 6;
    --v25;
  }

  while (v25);
  v70 = v40;
  v45 = *(v31 + 16);
  v80 = (v5 + 8);
  v77 = -v45;
  v78 = (v5 + 16);
  v46 = -1;
  while (1)
  {
    if (v77 + v46 == -1)
    {
      v56 = v75;
      v58 = v70;
      v57 = v71;
      v70(v75, v71, v41);
      v59 = v79;
      goto LABEL_22;
    }

    if (++v46 >= *(v31 + 16))
    {
      break;
    }

    v76 = *v78;
    v76(v82, v37, v41);
    v89 = sub_26F49D988();
    v90 = v49;
    v87 = 45;
    v88 = 0xE100000000000000;
    v85 = 95;
    v86 = 0xE100000000000000;
    sub_26F3BDC0C();
    v81 = sub_26F49FFF8();
    v51 = v50;

    v89 = sub_26F49D988();
    v90 = v52;
    v87 = 45;
    v88 = 0xE100000000000000;
    v85 = 95;
    v86 = 0xE100000000000000;
    v53 = sub_26F49FFF8();
    v55 = v54;

    if (v81 == v53 && v51 == v55)
    {

      v48 = *v80;
      v41 = v84;
      (*v80)(v82, v84);
LABEL_21:
      v57 = v71;
      v48(v71, v41);
      v56 = v75;
      v59 = v79;
      v76(v75, v79, v41);
      v58 = v70;
LABEL_22:
      v58(v57, v56, v41);
      v60 = objc_opt_self();
      v61 = sub_26F49D9F8();
      v62 = sub_26F49D9F8();
      v63 = sub_26F49FAD8();

      v64 = [v60 lt:v61 defaultTargetForSource:v62 systemLocale:v63 availableLocales:0 targetMap:?];

      v65 = v73;
      sub_26F49DA18();

      v66 = *v80;
      (*v80)(v59, v41);
      v67 = v72;
      v66(v72, v41);
      v58(v67, v65, v41);
      v68 = v74;
      v58(v74, v57, v41);
      v69 = type metadata accessor for LocalePair();
      return (v58)(&v68[*(v69 + 20)], v67, v41);
    }

    v37 += v38;
    v47 = sub_26F4A0458();

    v48 = *v80;
    v41 = v84;
    result = (*v80)(v82, v84);
    if (v47)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

char *sub_26F4032B0(char *a1, int64_t a2, char a3)
{
  result = sub_26F403530(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for LocalePair()
{
  result = qword_280F66B38;
  if (!qword_280F66B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_26F40331C(char *a1, int64_t a2, char a3)
{
  result = sub_26F403650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26F40333C(size_t a1, int64_t a2, char a3)
{
  result = sub_26F403D98(a1, a2, a3, *v3, &qword_2806E0168, &qword_26F4A66A0, MEMORY[0x277CC9788]);
  *v3 = result;
  return result;
}

char *sub_26F403380(char *a1, int64_t a2, char a3)
{
  result = sub_26F40377C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26F4033A0(size_t a1, int64_t a2, char a3)
{
  result = sub_26F403D98(a1, a2, a3, *v3, &qword_2806E0158, &qword_26F4A6688, type metadata accessor for LanguageOption);
  *v3 = result;
  return result;
}

size_t sub_26F4033E4(size_t a1, int64_t a2, char a3)
{
  result = sub_26F403888(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26F403404(char *a1, int64_t a2, char a3)
{
  result = sub_26F403A78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26F403424(char *a1, int64_t a2, char a3)
{
  result = sub_26F403B88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26F403444(size_t a1, int64_t a2, char a3)
{
  result = sub_26F403D98(a1, a2, a3, *v3, &qword_2806E0118, &qword_26F4ABEF0, type metadata accessor for TextModel);
  *v3 = result;
  return result;
}

size_t sub_26F403488(size_t a1, int64_t a2, char a3)
{
  result = sub_26F403D98(a1, a2, a3, *v3, &qword_2806E0130, &qword_26F4A6660, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_26F4034CC(char *a1, int64_t a2, char a3)
{
  result = sub_26F403C8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26F4034EC(size_t a1, int64_t a2, char a3)
{
  result = sub_26F403D98(a1, a2, a3, *v3, &qword_2806E0120, &qword_26F4A6650, type metadata accessor for VisualTranslationModel);
  *v3 = result;
  return result;
}

char *sub_26F403530(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0100, &unk_26F4A6690);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26F403650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0170, &unk_26F4A66A8);
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

char *sub_26F40377C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0160, &unk_26F4A7660);
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

size_t sub_26F403888(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0148, &qword_26F4A6678);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0150, &qword_26F4A6680) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0150, &qword_26F4A6680) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26F403A78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0140, &qword_26F4A6670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26F403B88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0138, &qword_26F4A6668);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}
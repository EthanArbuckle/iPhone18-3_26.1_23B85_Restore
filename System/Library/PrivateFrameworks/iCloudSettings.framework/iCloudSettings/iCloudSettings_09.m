uint64_t sub_27592F164()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11150, &qword_2759CA1B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11158, &qword_2759CA1B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11160, &qword_2759CA1C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11168, &qword_2759CA1C8);
  v14 = *(*(v13 - 8) + 56);
  v14(v8, 1, 1, v13);
  sub_27592F468(v0, v4);
  v14(v4, 0, 1, v13);
  sub_2758229B4(v4, v8);
  v15 = [objc_opt_self() mainScreen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v33.origin.x = v17;
  v33.origin.y = v19;
  v33.size.width = v21;
  v33.size.height = v23;
  CGRectGetHeight(v33);
  sub_2759BA028();
  sub_2759B8F18();
  sub_275822A24(v8, v12);
  v24 = &v12[*(v9 + 36)];
  v25 = v31;
  *v24 = v30;
  *(v24 + 1) = v25;
  *(v24 + 2) = v32;
  sub_27586BF04(v8, &qword_280A11158, &qword_2759CA1B8);
  v28 = *(v0 + 64);
  v29 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA10, &unk_2759CA1D0);
  sub_2759B9D68();
  sub_275931194();
  sub_2759B9B38();

  return sub_27586BF04(v12, &qword_280A11160, &qword_2759CA1C0);
}

uint64_t sub_27592F468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = sub_2759B9608();
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v59);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F968, &qword_2759C4A10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F960, &qword_2759CA1E0);
  v61 = *(v62 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11180, &qword_2759CA1E8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v60 = &v54 - v18;
  v64 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9C0, &qword_2759C4A50);
  sub_2759B9D68();
  if (v67)
  {
    v55 = v16;
    v56 = v67;
    type metadata accessor for MicaPlayerModel();
    sub_275931520(&qword_280A0EA68, type metadata accessor for MicaPlayerModel);
    v57 = v15;

    sub_2759B9F78();
    v19 = [objc_opt_self() mainScreen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v70.origin.x = v21;
    v70.origin.y = v23;
    v70.size.width = v25;
    v70.size.height = v27;
    CGRectGetHeight(v70);
    sub_2759BA028();
    sub_2759B8F18();
    v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9D8, &unk_2759C4A90) + 36)];
    v29 = v68;
    *v28 = v67;
    *(v28 + 1) = v29;
    *(v28 + 2) = v69;
    *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9E0, &qword_2759CA1F0) + 36)] = 256;
    v30 = sub_2759B90B8();
    v31 = sub_2759B97D8();
    v32 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F9E8, &unk_2759C4AA0) + 36)];
    *v32 = v30;
    v32[8] = v31;
    v33 = swift_allocObject();
    v34 = *(a1 + 48);
    *(v33 + 48) = *(a1 + 32);
    *(v33 + 64) = v34;
    *(v33 + 80) = *(a1 + 64);
    *(v33 + 96) = *(a1 + 80);
    v35 = *(a1 + 16);
    *(v33 + 16) = *a1;
    *(v33 + 32) = v35;
    v36 = &v11[*(v8 + 36)];
    *v36 = sub_275931284;
    v36[1] = v33;
    v36[2] = 0;
    v36[3] = 0;
    v37 = swift_allocObject();
    v58 = a2;
    v38 = *(a1 + 48);
    *(v37 + 48) = *(a1 + 32);
    *(v37 + 64) = v38;
    *(v37 + 80) = *(a1 + 64);
    *(v37 + 96) = *(a1 + 80);
    v39 = *(a1 + 16);
    *(v37 + 16) = *a1;
    *(v37 + 32) = v39;
    sub_275931040(a1, &v64);
    sub_275931040(a1, &v64);
    sub_2759B96C8();
    v40 = sub_2758BF024();
    v41 = v59;
    sub_2759B9A98();

    (*(v4 + 8))(v7, v41);
    sub_27586BF04(v11, &qword_280A0F968, &qword_2759C4A10);
    v64 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
    sub_2759B9D68();
    v42 = v63;
    swift_getKeyPath();
    *&v64 = v42;
    sub_275931520(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v43 = *&v42[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
    v44 = v43;

    v63 = v43;
    v45 = swift_allocObject();
    v46 = *(a1 + 48);
    *(v45 + 48) = *(a1 + 32);
    *(v45 + 64) = v46;
    *(v45 + 80) = *(a1 + 64);
    *(v45 + 96) = *(a1 + 80);
    v47 = *(a1 + 16);
    *(v45 + 16) = *a1;
    *(v45 + 32) = v47;
    sub_275931040(a1, &v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11188, &unk_2759CA220);
    *&v64 = v8;
    *(&v64 + 1) = v41;
    v65 = v40;
    v15 = v57;
    v66 = MEMORY[0x277CE0380];
    swift_getOpaqueTypeConformance2();
    sub_275931330();
    v48 = v60;
    v49 = v62;
    a2 = v58;
    sub_2759B9B88();

    (*(v61 + 8))(v14, v49);
    v50 = v55;
    (*(v55 + 32))(a2, v48, v15);
    v51 = 0;
    v52 = v50;
  }

  else
  {
    v51 = 1;
    v52 = v16;
  }

  return (*(v52 + 56))(a2, v51, 1, v15);
}

void sub_27592FBDC()
{
  v1 = v0;
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v2 = *(v4 + OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_needsHeaderAnimation);

  if (v2 == 1)
  {
    v6 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA18, &qword_2759C4AB0);
    sub_2759B9D68();
    if (v4)
    {
      sub_275868E0C();
    }

    v3 = *(v1 + 10);
    v9 = v1[4];
    v8 = v3;
    v6 = v1[4];
    v7 = v3;
    sub_2758F5AD0(&v9, &v4);
    sub_2759313E4(&v8, &v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA10, &unk_2759CA1D0);
    sub_2759B9D68();
    MEMORY[0x277C840E0](0x696874616572622DLL, 0xEF64756F6C43676ELL);
    v4 = v1[4];
    v5 = v3;
    sub_2759B9D78();
    sub_275861BB0(&v9);
    sub_27586BF04(&v8, &qword_280A111A0, &unk_2759CA230);
  }
}

void sub_27592FD54(__int128 *a1, CGFloat a2, CGFloat a3)
{
  v23 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA18, &qword_2759C4AB0);
  sub_2759B9D68();
  if (v21)
  {
    sub_2758697F0(a2, a3);
    v7 = v6;
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      v23 = *a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
      sub_2759B9D68();
      v10 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
      swift_beginAccess();
      v11 = *(v21 + v10);

      v12 = v11 >> 62 ? sub_2759BA9E8() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v7 < v12)
      {
        v21 = *a1;
        sub_2759B9D68();
        v13 = *&v22[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityBarButtonItem];
        if (v13)
        {
          [v13 setHidden_];
        }

        v14 = *&v22[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_activityIndicator];
        if (v14)
        {
          v15 = v14;
          [v15 startAnimating];
        }

        v21 = *a1;
        sub_2759B9D68();
        v16 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
        swift_beginAccess();
        v17 = *&v22[v16];
        if ((v17 & 0xC000000000000001) == 0)
        {
          if (v7 < 0)
          {
            __break(1u);
          }

          else if (v7 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v18 = *(v17 + 8 * v7 + 32);
LABEL_14:
            v19 = v18;
            swift_endAccess();

            v21 = *a1;
            sub_2759B9D68();
            v20 = v22;
            LOBYTE(v21) = 14;
            ManageStorageAppsListViewModel.loadApp(app:refreshDataModels:from:)(v19, 0, &v21);

            return;
          }

          __break(1u);
          return;
        }

        v18 = MEMORY[0x277C846A0](v7);
        goto LABEL_14;
      }
    }
  }
}

void sub_27592FFB4(__int128 *a1)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v1 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v2 = *&v5[v1];

  if (v2 >> 62)
  {
    v3 = sub_2759BA9E8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 >= 1)
  {
    sub_275930088();
  }

  sub_27592FBDC();
}

void sub_275930088()
{
  v1 = v0;
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v2 = v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_needsHeaderAnimation];

  if (v2 == 1)
  {
    v6 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA18, &qword_2759C4AB0);
    sub_2759B9D68();
    if (v4)
    {
      v3 = sub_275930188();
      sub_275869494(v3);
    }

    v7 = *v1;
    sub_2759B9D68();
    v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_needsHeaderAnimation] = 0;
  }
}

uint64_t sub_275930188()
{
  v22 = v0[4];
  v1 = *(v0 + 10);
  v24 = v22;
  v23 = v1;
  v19 = v0[4];
  v20 = v1;
  sub_2758F5AD0(&v24, &v17);
  sub_2759313E4(&v23, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA10, &unk_2759CA1D0);
  sub_2759B9D68();
  v21 = v17;
  v19 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F118, &qword_2759C3510);
  sub_2759B9D68();
  v2 = v17;
  v3 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v4 = *&v2[v3];

  v5 = v4 >> 62;
  if (v4 >> 62)
  {
    v15 = sub_2759BA9E8();
    if (sub_2759BA9E8() < 0)
    {
      __break(1u);
    }

    if (v15 >= 5)
    {
      v16 = 5;
    }

    else
    {
      v16 = v15;
    }

    if (v15 >= 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = 5;
    }

    result = sub_2759BA9E8();
    if (result >= v7)
    {
      goto LABEL_6;
    }

LABEL_31:
    __break(1u);
    return result;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v7)
  {
    goto LABEL_31;
  }

LABEL_6:
  if ((v4 & 0xC000000000000001) == 0 || v7 == 0)
  {
  }

  else
  {
    type metadata accessor for ManageStorageAppViewModel();

    sub_2759BA8F8();
    if (v7 != 1)
    {
      sub_2759BA8F8();
      if (v7 != 2)
      {
        sub_2759BA8F8();
        if (v7 != 3)
        {
          sub_2759BA8F8();
          if (v7 != 4)
          {
            sub_2759BA8F8();
            if (v7 != 5)
            {
              sub_2759BA8F8();
              sub_2759BA8F8();
            }
          }
        }
      }
    }
  }

  if (v5)
  {
    sub_2759BA9F8();
    v9 = v11;
    v5 = v12;
    v10 = v13;
  }

  else
  {
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    v10 = (2 * v7) | 1;
  }

  v14 = sub_275930710(v9, v5, v10);
  swift_unknownObjectRelease();
  v17 = v22;
  v18 = v1;

  sub_2759B9D78();
  sub_275861BB0(&v24);
  sub_27586BF04(&v23, &qword_280A111A0, &unk_2759CA230);

  return v14;
}

id sub_27593048C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage);
  if (v4)
  {
    v20[0] = 45;
    v20[1] = 0xE100000000000000;
    v5 = (*&v3[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
    v6 = *v5;
    v7 = v5[1];
    v8 = v4;

    MEMORY[0x277C840E0](v6, v7);

    MEMORY[0x277C840E0](45, 0xE100000000000000);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_2815ADE70);
    v11 = v3;
    v12 = sub_2759B8988();
    v13 = sub_2759BA648();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      v16 = (*&v11[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
      v17 = *v16;
      v18 = v16[1];

      v19 = sub_2758937B8(v17, v18, v20);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_275819000, v12, v13, "Missing header image for app: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x277C85860](v15, -1, -1);
      MEMORY[0x277C85860](v14, -1, -1);
    }

    result = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v8 = result;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_2759306C4()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 10);
  v2 = *v0;
  v3 = v0[1];
  return sub_27592F164();
}

uint64_t sub_275930710(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v13 = a3 >> 1;
  v5 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = v4;
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v16 = MEMORY[0x277D84F90];
  v3 = &v16;
  sub_2759BA968();
  if ((v5 & 0x8000000000000000) == 0)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 + i) >= v13 || i >= v5)
      {
        goto LABEL_13;
      }

      v14 = *(a1 + 8 * a2 + 8 * i);
      v3 = v14;
      sub_27593048C(&v14, &v15);
      if (v6)
      {
        goto LABEL_16;
      }

      v6 = 0;

      sub_2759BA948();
      v12 = *(v16 + 16);
      sub_2759BA978();
      sub_2759BA988();
      v3 = &v16;
      sub_2759BA958();
      if (v11 == v5)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  __break(1u);
  return result;
}

uint64_t sub_275930854()
{
  v0 = sub_2759BAA48();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

double sub_2759308A0@<D0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  ObjectType = swift_getObjectType();
  v47 = sub_2759B8508();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v47);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v44[-v11];
  *&v59 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8B8, &qword_2759C4900);
  sub_2759B9D58();
  *v48 = v65;
  *&v59 = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8C0, &qword_2759C4908);
  sub_2759B9D58();
  v50[0] = v65;
  LOBYTE(v59) = 0;
  sub_2759B9D58();
  v55 = v65;
  v54 = *(&v65 + 1);
  *&v59 = 0xD000000000000015;
  *(&v59 + 1) = 0x80000002759E00F0;
  sub_2759B9D58();
  v52 = *(&v65 + 1);
  v53 = v65;
  v51 = v66;
  v56 = ObjectType;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v45 = a1;
  v15 = sub_2759BA258();

  v16 = sub_2759BA258();
  v49 = v14;
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (v17)
  {
    sub_2759B84C8();

    v18 = v47;
    (*(v6 + 16))(v10, v12, v47);
    v19 = *MEMORY[0x277CDA710];
    v20 = type metadata accessor for MicaPlayerModel();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = v19;
    v24 = sub_275865450(v10, 1, v23);

    *&v59 = v24;

    sub_2759B9D58();

    *&v48[8] = v65;
    v25 = type metadata accessor for InteractiveStorageMicaController();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();

    v29 = sub_27586A5E4(v28);

    *&v59 = v29;
    sub_2759B9D58();

    (*(v6 + 8))(v12, v18);

    *(v50 + 8) = v65;
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v30 = sub_2759B89A8();
    __swift_project_value_buffer(v30, qword_2815ADE70);
    v31 = sub_2759B8988();
    v32 = sub_2759BA648();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v65 = v34;
      *v33 = 136315138;
      if (v45 > 3u)
      {
        if (v45 > 5u)
        {
          if (v45 == 6)
          {
            v35 = 0xE700000000000000;
            v36 = 0x366C6961746564;
          }

          else
          {
            v36 = 0x764F70756B636162;
            v35 = 0xED000079616C7265;
          }
        }

        else
        {
          v35 = 0xE700000000000000;
          if (v45 == 4)
          {
            v36 = 0x346C6961746564;
          }

          else
          {
            v36 = 0x356C6961746564;
          }
        }
      }

      else if (v45 > 1u)
      {
        v35 = 0xE700000000000000;
        if (v45 == 2)
        {
          v36 = 0x326C6961746564;
        }

        else
        {
          v36 = 0x336C6961746564;
        }
      }

      else if (v45)
      {
        v35 = 0xE700000000000000;
        v36 = 0x316C6961746564;
      }

      else
      {
        v35 = 0xED0000656761726FLL;
        v36 = 0x74536567616E616DLL;
      }

      v37 = sub_2758937B8(v36, v35, &v65);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_275819000, v31, v32, "ManageStorageAnimationView Unable to resolve file url for type %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x277C85860](v34, -1, -1);
      MEMORY[0x277C85860](v33, -1, -1);
    }

    *(v50 + 8) = v50[0];
    *&v48[8] = *v48;
  }

  v38 = v49;
  *&v59 = v57;
  v39 = v57;
  sub_2759B9D58();

  v59 = v65;
  v61 = *(v50 + 8);
  v60 = *&v48[8];
  LOBYTE(v62) = v55;
  *(&v62 + 1) = v74[0];
  DWORD1(v62) = *(v74 + 3);
  *(&v62 + 1) = v54;
  *&v63 = v53;
  *(&v63 + 1) = v52;
  v64 = v51;
  v66 = *&v48[8];
  v67 = *(v50 + 8);
  v68 = v55;
  *v69 = v74[0];
  *&v69[3] = *(v74 + 3);
  v70 = v54;
  v71 = v53;
  v72 = v52;
  v73 = v51;
  sub_275931040(&v59, &v58);
  sub_275931078(&v65);
  v40 = v62;
  v41 = v63;
  *(a3 + 32) = v61;
  *(a3 + 48) = v40;
  *(a3 + 64) = v41;
  *(a3 + 80) = v64;
  result = *&v59;
  v43 = v60;
  *a3 = v59;
  *(a3 + 16) = v43;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2759310CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_275931114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_275931194()
{
  result = qword_280A11170;
  if (!qword_280A11170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11160, &qword_2759CA1C0);
    sub_275931220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11170);
  }

  return result;
}

unint64_t sub_275931220()
{
  result = qword_280A11178;
  if (!qword_280A11178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11158, &qword_2759CA1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11178);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  v7 = *(v0 + 88);

  v8 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

unint64_t sub_275931330()
{
  result = qword_280A11190;
  if (!qword_280A11190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11188, &unk_2759CA220);
    sub_275931520(&qword_280A11198, type metadata accessor for ManageStorageAppsListDataModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11190);
  }

  return result;
}

uint64_t sub_2759313E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A111A0, &unk_2759CA230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_275931464()
{
  result = qword_280A111A8;
  if (!qword_280A111A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A111B0, qword_2759CA260);
    sub_275931194();
    sub_275931520(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A111A8);
  }

  return result;
}

uint64_t sub_275931520(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27593156C()
{
  result = qword_280A111B8;
  if (!qword_280A111B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A111B8);
  }

  return result;
}

uint64_t sub_2759315C0()
{
  result = sub_2759BA258();
  qword_280A23998 = result;
  return result;
}

uint64_t sub_2759315F8()
{
  result = sub_2759BA258();
  qword_280A239A0 = result;
  return result;
}

uint64_t sub_2759316AC(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_2759B8288();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_2759B8268();
}

uint64_t sub_275931774@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B8288();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

id ICSAnalyticsController.__allocating_init(account:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_275935F68(a1);

  return v4;
}

uint64_t ICSAnalyticsController.sendActionEvent(viewID:componentID:actionType:targetViewID:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *a2;
  v14 = *a4;
  v15 = *(a4 + 8);
  LOBYTE(a4) = *(a4 + 16);
  LOBYTE(a1) = *(a1 + 16);
  sub_27591E640(v14, v15, a4);
  sub_2759BA4D8();
  v16 = sub_2759BA518();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v17;
  *(v18 + 40) = v11;
  *(v18 + 48) = v12;
  *(v18 + 56) = a1;
  *(v18 + 57) = v13;
  *(v18 + 58) = 0;
  *(v18 + 64) = v21;
  *(v18 + 72) = 0;
  *(v18 + 80) = v14;
  *(v18 + 88) = v15;
  *(v18 + 96) = a4;
  sub_27591E640(v14, v15, a4);
  sub_27591E640(v11, v12, a1);
  sub_275931D20(0, 0, v10, &unk_2759C4530, v18);

  sub_27589F7F0(v14, v15, a4);
  return sub_275936100(v10);
}

uint64_t ICSAnalyticsController.sendDisplayEvent(viewID:componentID:)(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *a2;
  LOBYTE(a2) = *(a1 + 16);
  sub_2759BA4D8();
  v11 = sub_2759BA518();
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v12;
  *(v13 + 40) = v8;
  *(v13 + 48) = v9;
  *(v13 + 56) = a2;
  *(v13 + 57) = v10;
  *(v13 + 58) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 1;
  *(v13 + 80) = 0;
  *(v13 + 88) = 0;
  *(v13 + 96) = -1;
  sub_27591E640(v8, v9, a2);
  sub_275931D20(0, 0, v7, &unk_2759CA348, v13);

  return sub_275936100(v7);
}

uint64_t sub_275931D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2758AD388(a3, v27 - v11);
  v13 = sub_2759BA518();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_275936100(v12);
  }

  else
  {
    sub_2759BA508();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2759BA468();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2759BA308() + 32;
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

uint64_t sub_275931FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2758AD388(a3, v27 - v11);
  v13 = sub_2759BA518();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_275936100(v12);
  }

  else
  {
    sub_2759BA508();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2759BA468();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2759BA308() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDC8, &qword_2759CA7C0);
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

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDC8, &qword_2759CA7C0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

unint64_t ICSAnalyticsActionType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2759323E8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

iCloudSettings::ICSAnalyticsComponentID_optional __swiftcall ICSAnalyticsComponentID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2759BAAE8();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t ICSAnalyticsComponentID.rawValue.getter()
{
  result = 0x6F5270756B636162;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F5470756B636162;
      break;
    case 3:
      result = 0x72616C756C6C6563;
      break;
    case 4:
      v2 = 0x6D6F74737563;
      goto LABEL_9;
    case 5:
      result = 0x73616C6361746164;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0x6B6E694C70656564;
      break;
    case 8:
      result = 0x6853796C696D6166;
      break;
    case 9:
      v2 = 0x794D65646968;
LABEL_9:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6D45000000000000;
      break;
    case 0xA:
      result = 0xD00000000000001ELL;
      break;
    case 0xB:
      result = 0x6C506567616E616DLL;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 0xD:
      result = 0xD000000000000022;
      break;
    case 0xE:
      result = 0xD00000000000001CLL;
      break;
    case 0xF:
      result = 0xD000000000000016;
      break;
    case 0x10:
      result = 0xD000000000000027;
      break;
    case 0x11:
      result = 0xD000000000000010;
      break;
    case 0x12:
      result = 0xD000000000000021;
      break;
    case 0x13:
      result = 0x636E75614C657270;
      break;
    case 0x14:
      result = 0x70416C6C41656573;
      break;
    case 0x15:
      result = 0x6C75666574617473;
      break;
    case 0x16:
      result = 0x6E776F6E6B6E75;
      break;
    case 0x17:
      result = 0xD000000000000017;
      break;
    case 0x18:
      result = 0x61436C6C65737075;
      break;
    case 0x19:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_2759328A4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ICSAnalyticsComponentID.rawValue.getter();
  v4 = v3;
  if (v2 == ICSAnalyticsComponentID.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2759BAAC8();
  }

  return v7 & 1;
}

uint64_t sub_275932940()
{
  v1 = *v0;
  sub_2759BABD8();
  ICSAnalyticsComponentID.rawValue.getter();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2759329A8()
{
  v2 = *v0;
  ICSAnalyticsComponentID.rawValue.getter();
  sub_2759BA328();
}

uint64_t sub_275932A0C()
{
  v1 = *v0;
  sub_2759BABD8();
  ICSAnalyticsComponentID.rawValue.getter();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_275932A7C@<X0>(uint64_t *a1@<X8>)
{
  result = ICSAnalyticsComponentID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_275932AA4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 4)
  {
    if (*(v0 + 16) <= 1u)
    {
      if (*(v0 + 16))
      {
        goto LABEL_20;
      }
    }

    else if (v3 != 2)
    {
      if (v3 == 3)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

LABEL_14:
    sub_2759BA8C8();

    goto LABEL_28;
  }

  if (*(v0 + 16) <= 7u)
  {
    if (v3 != 5)
    {
      if (v3 == 6)
      {

        sub_2759BA8C8();

        if (!v2)
        {
          sub_27589F7F0(v1, 0, 6u);
          v2 = 0xE700000000000000;
          v1 = 0x6E776F6E6B6E55;
        }

        MEMORY[0x277C840E0](v1, v2);
LABEL_27:

LABEL_29:
        v6 = sub_2759BA258();

        return v6;
      }

LABEL_28:
      MEMORY[0x277C840E0](v1, v2);
      goto LABEL_29;
    }

LABEL_20:
    sub_2759BA8C8();

    if (v1)
    {
      v4 = 0x64656C62616E65;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (v1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    MEMORY[0x277C840E0](v4, v5);
    goto LABEL_27;
  }

  if (v3 == 8)
  {
    goto LABEL_28;
  }

  if (v3 == 9)
  {
    goto LABEL_14;
  }

  sub_275861AF8(0, &qword_280A0EA28, 0x277CCACA8);
  return sub_2759BA7A8();
}

uint64_t ICSAnalyticsViewID.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 4)
  {
    if (*(v0 + 16) <= 1u)
    {
      if (!*(v0 + 16))
      {
        v4 = 4;
        goto LABEL_24;
      }

      v5 = 5;
    }

    else
    {
      if (v3 == 2)
      {
        v4 = 6;
        goto LABEL_24;
      }

      if (v3 == 3)
      {
        v4 = 7;
        goto LABEL_24;
      }

      v5 = 9;
    }

LABEL_21:
    MEMORY[0x277C84980](v5);
    return sub_2759BABF8();
  }

  if (*(v0 + 16) <= 7u)
  {
    if (v3 != 5)
    {
      if (v3 == 6)
      {
        MEMORY[0x277C84980](12);
        if (v2)
        {
          sub_2759BABF8();
LABEL_25:

          return sub_2759BA328();
        }

        return sub_2759BABF8();
      }

      v4 = 14;
LABEL_24:
      MEMORY[0x277C84980](v4);
      goto LABEL_25;
    }

    v5 = 10;
    goto LABEL_21;
  }

  if (v3 == 8)
  {
    v4 = 15;
    goto LABEL_24;
  }

  if (v3 == 9)
  {
    v4 = 18;
    goto LABEL_24;
  }

  if (v1 > 5)
  {
    if (v1 > 8)
    {
      if (v1 ^ 9 | v2)
      {
        if (v1 ^ 0xA | v2)
        {
          v7 = 21;
        }

        else
        {
          v7 = 20;
        }
      }

      else
      {
        v7 = 19;
      }
    }

    else if (v1 ^ 6 | v2)
    {
      if (v1 ^ 7 | v2)
      {
        v7 = 17;
      }

      else
      {
        v7 = 16;
      }
    }

    else
    {
      v7 = 13;
    }
  }

  else if (v1 > 2)
  {
    if (v1 ^ 3 | v2)
    {
      if (v1 ^ 4 | v2)
      {
        v7 = 11;
      }

      else
      {
        v7 = 8;
      }
    }

    else
    {
      v7 = 3;
    }
  }

  else if (v1 | v2)
  {
    if (v1 ^ 1 | v2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x277C84980](v7);
}

uint64_t ICSAnalyticsViewID.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_2759BABD8();
  ICSAnalyticsViewID.hash(into:)();
  return sub_2759BAC08();
}

uint64_t sub_2759332BC()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_2759BABD8();
  ICSAnalyticsViewID.hash(into:)();
  return sub_2759BAC08();
}

uint64_t sub_275933314()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_2759BABD8();
  ICSAnalyticsViewID.hash(into:)();
  return sub_2759BAC08();
}

id ICSAnalyticsController.init(account:)(void *a1)
{
  v2 = sub_275935F68(a1);

  return v2;
}

uint64_t sub_2759333E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 168) = a7;
  *(v7 + 120) = a5;
  *(v7 + 128) = a6;
  *(v7 + 112) = a4;
  return MEMORY[0x2822009F8](sub_275933408, 0, 0);
}

uint64_t sub_275933408()
{
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v0[18] = swift_allocObject();
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_2759335C8;

    return sub_275933AA8();
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_280A238D0);
    v6 = sub_2759B8988();
    v7 = sub_2759BA668();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_275819000, v6, v7, "ICSAnalyticsController.sendUpsellLaunchEvent: Self unavailable bailing.", v8, 2u);
      MEMORY[0x277C85860](v8, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2759335C8(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_2759336C8, 0, 0);
}

uint64_t sub_2759336C8()
{
  v31 = v0;
  v1 = v0[18];
  v2 = *(v0 + 168);
  v3 = v0[15];
  v4 = v0[16];
  *(v1 + 16) = v0[20];
  v5 = sub_2759BA258();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  sub_275906A58(v5, 0x61546E6F69746361, 0xEC00000074656772, isUniquelyReferenced_nonNull_native);
  *(v1 + 16) = v30;
  ICSAnalyticsComponentID.rawValue.getter();
  v7 = sub_2759BA258();

  v8 = *(v1 + 16);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v8;
  *(v1 + 16) = 0x8000000000000000;
  sub_275906A58(v7, 0x696F507972746E65, 0xEA0000000000746ELL, v9);
  *(v1 + 16) = v30;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v10 = v0[18];
  v11 = sub_2759B89A8();
  __swift_project_value_buffer(v11, qword_280A238D0);

  v12 = sub_2759B8988();
  v13 = sub_2759BA668();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[18];
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_2758937B8(0xD00000000000001FLL, 0x80000002759DD070, &v30);
    *(v16 + 12) = 2080;
    swift_beginAccess();
    v18 = *(v15 + 16);

    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v19 = sub_2759BA1E8();
    v21 = v20;

    v22 = sub_2758937B8(v19, v21, &v30);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_275819000, v12, v13, "Sending event %s with payload: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v17, -1, -1);
    MEMORY[0x277C85860](v16, -1, -1);
  }

  else
  {
  }

  v24 = v0[17];
  v23 = v0[18];
  v25 = sub_2759BA258();
  v0[6] = sub_275936848;
  v0[7] = v23;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_27594A654;
  v0[5] = &block_descriptor_9;
  v26 = _Block_copy(v0 + 2);
  v27 = v0[7];

  AnalyticsSendEventLazy();
  _Block_release(v26);

  v28 = v0[1];

  return v28();
}

uint64_t sub_275933AC8()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager);
  if (v2)
  {
    v3 = [v2 hasBackupError];
    v1 = v0[2];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v5 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_275906A58(v4, 0x724570756B636162, 0xEB00000000726F72, isUniquelyReferenced_nonNull_native);
  v0[3] = v5;
  v7 = *(v1 + OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController);
  v0[4] = v7;
  if (v7)
  {
    v7;
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_275933D08;

    return sub_275926D50(1);
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_280A238D0);
    v11 = sub_2759B8988();
    v12 = sub_2759BA648();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_275819000, v11, v12, "Fetching home data model failed", v13, 2u);
      MEMORY[0x277C85860](v13, -1, -1);
    }

    v14 = v0[3];
    v15 = v0[1];

    return v15(v14);
  }
}

uint64_t sub_275933D08(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(*v2 + 48) = a1;

  v6 = *(v3 + 32);
  if (v1)
  {

    v7 = sub_27593418C;
  }

  else
  {

    v7 = sub_275933E50;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_275933E50()
{
  v1 = v0[6];
  v2 = OBJC_IVAR___ICSHomeDataModel_headerCard;
  v3 = *(*(v1 + OBJC_IVAR___ICSHomeDataModel_headerCard) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary);
  v4 = *(v3 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_totalStorageInBytes);
  v5 = *(v3 + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usedStorageInBytes) / v4 * 100.0;
  if (!v4)
  {
    v5 = 100.0;
  }

  v6 = floor(v5);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v7 = v0[3];
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_275906A58(v8, 0xD00000000000001ALL, 0x80000002759E1FD0, isUniquelyReferenced_nonNull_native);
  v10 = (*(v1 + v2) + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageState);
  v11 = *v10;
  v12 = v10[1];

  v13 = sub_27598AB3C();
  if ((v13 - 3) >= 2u)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_275906A58(v14, 0x61745361746F7571, 0xEA00000000006574, v15);
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  if (sub_2759BA688())
  {
    v17 = 0;
  }

  else if (sub_2759BA678())
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v18 = v0[6];
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_275906A58(v19, 0x6269726373627573, 0xEE00657079547265, v20);
  v21 = v7;
  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_275906A58(v22, 0xD000000000000015, 0x80000002759E1FF0, v23);

  v24 = v0[1];

  v24(v21);
}

uint64_t sub_27593418C()
{
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A238D0);
  v2 = sub_2759B8988();
  v3 = sub_2759BA648();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Fetching home data model failed", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = *(v0 + 24);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_2759342A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 152) = a5;
  *(v5 + 112) = a4;
  return MEMORY[0x2822009F8](sub_2759342C8, 0, 0);
}

uint64_t sub_2759342C8()
{
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v0[16] = swift_allocObject();
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_275934488;

    return sub_275933AA8();
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_280A238D0);
    v6 = sub_2759B8988();
    v7 = sub_2759BA668();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_275819000, v6, v7, "ICSAnalyticsController.sendUpsellAppearEvent: Self unavailable bailing.", v8, 2u);
      MEMORY[0x277C85860](v8, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_275934488(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_275934588, 0, 0);
}

uint64_t sub_275934588()
{
  v27 = v0;
  v1 = v0[16];
  v2 = *(v0 + 152);
  *(v1 + 16) = v0[18];
  ICSAnalyticsComponentID.rawValue.getter();
  v3 = sub_2759BA258();

  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = v4;
  *(v1 + 16) = 0x8000000000000000;
  sub_275906A58(v3, 0x696F507972746E65, 0xEA0000000000746ELL, isUniquelyReferenced_nonNull_native);
  *(v1 + 16) = v26;
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v6 = v0[16];
  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_280A238D0);

  v8 = sub_2759B8988();
  v9 = sub_2759BA668();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[16];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_2758937B8(0xD00000000000001FLL, 0x80000002759DD070, &v26);
    *(v12 + 12) = 2080;
    swift_beginAccess();
    v14 = *(v11 + 16);

    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v15 = sub_2759BA1E8();
    v17 = v16;

    v18 = sub_2758937B8(v15, v17, &v26);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_275819000, v8, v9, "Sending event %s with payload: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  else
  {
  }

  v20 = v0[15];
  v19 = v0[16];
  v21 = sub_2759BA258();
  v0[6] = sub_275936694;
  v0[7] = v19;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_27594A654;
  v0[5] = &block_descriptor_52;
  v22 = _Block_copy(v0 + 2);
  v23 = v0[7];

  AnalyticsSendEventLazy();
  _Block_release(v22);

  v24 = v0[1];

  return v24();
}

uint64_t sub_275934914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 196) = v15;
  *(v8 + 144) = v13;
  *(v8 + 152) = v14;
  *(v8 + 195) = v12;
  *(v8 + 194) = v10;
  *(v8 + 193) = a8;
  *(v8 + 192) = a7;
  *(v8 + 128) = a6;
  *(v8 + 136) = v11;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  return MEMORY[0x2822009F8](sub_275934968, 0, 0);
}

uint64_t sub_275934968()
{
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v0[21] = swift_allocObject();
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_275934B28;

    return sub_275933AA8();
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_280A238D0);
    v6 = sub_2759B8988();
    v7 = sub_2759BA668();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_275819000, v6, v7, "ICSAnalyticsController.sendEvent: Self unavailable bailing.", v8, 2u);
      MEMORY[0x277C85860](v8, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_275934B28(uint64_t a1)
{
  v2 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_275934C28, 0, 0);
}

uint64_t sub_275934C28()
{
  v58 = v0;
  v1 = v0[21];
  v2 = *(v0 + 193);
  v3 = *(v0 + 192);
  v4 = *(v0 + 15);
  *(v1 + 16) = v0[23];
  v55 = v4;
  v56 = v3;
  v5 = sub_275932AA4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  sub_275906A58(v5, 0x444977656976, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v7 = v57;
  *(v1 + 16) = v57;
  if (v2 != 26)
  {
    v8 = v0[21];
    LOBYTE(v57) = *(v0 + 193);
    ICSAnalyticsComponentID.rawValue.getter();
    v9 = sub_2759BA258();

    v10 = *(v8 + 16);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    *&v55 = v10;
    *(v8 + 16) = 0x8000000000000000;
    sub_275906A58(v9, 0x6E656E6F706D6F63, 0xEB00000000444974, v11);
    v7 = v55;
    *(v8 + 16) = v55;
  }

  if (*(v0 + 194))
  {
    if (*(v0 + 194) == 1)
    {
      goto LABEL_11;
    }

    v12 = "Settings.display";
  }

  else
  {
    v12 = "complianceSection";
  }

  if ((v12 | 0x8000000000000000) != 0x80000002759DD020)
  {
LABEL_11:
    v14 = *(v0 + 195);
    v15 = sub_2759BAAC8();

    if ((v15 & 1) != 0 && (v14 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v13 = *(v0 + 195);

  if ((v13 & 1) == 0)
  {
LABEL_13:
    v16 = v0[21];
    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *&v55 = v7;
    *(v16 + 16) = 0x8000000000000000;
    sub_275906A58(v17, 0x79546E6F69746361, 0xEA00000000006570, v18);
    *(v16 + 16) = v55;
  }

LABEL_14:
  v19 = 0x80000002759DD020;
  if (*(v0 + 194))
  {
    if (*(v0 + 194) == 1)
    {
      goto LABEL_20;
    }

    v19 = 0x80000002759DD070;
  }

  if (0x80000002759DD020 == v19)
  {
    v20 = *(v0 + 196);

    if (v20 == 255)
    {
      goto LABEL_23;
    }

LABEL_22:
    v23 = v0[21];
    v24 = *(v0 + 196);
    v55 = *(v0 + 9);
    v56 = v24;
    v25 = sub_275932AA4();
    v26 = *(v23 + 16);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v26;
    *(v23 + 16) = 0x8000000000000000;
    sub_275906A58(v25, 0x6956746567726174, 0xEC00000044497765, v27);
    *(v23 + 16) = v57;
    goto LABEL_23;
  }

LABEL_20:
  v21 = *(v0 + 196);
  v22 = sub_2759BAAC8();

  if ((v22 & 1) != 0 && v21 != 255)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (qword_280A0E350 != -1)
  {
    swift_once();
  }

  v28 = v0[21];
  v29 = sub_2759B89A8();
  __swift_project_value_buffer(v29, qword_280A238D0);

  v30 = sub_2759B8988();
  v31 = sub_2759BA668();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 194);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v55 = v34;
    *v33 = 136315394;
    v35 = 0x80000002759DD040;
    if (v32 == 1)
    {
      v36 = 0xD000000000000020;
    }

    else
    {
      v36 = 0xD00000000000001FLL;
    }

    if (v32 != 1)
    {
      v35 = 0x80000002759DD070;
    }

    if (v32)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0xD00000000000001FLL;
    }

    if (v32)
    {
      v38 = v35;
    }

    else
    {
      v38 = 0x80000002759DD020;
    }

    v39 = v0[21];
    v40 = sub_2758937B8(v37, v38, &v55);

    *(v33 + 4) = v40;
    *(v33 + 12) = 2080;
    swift_beginAccess();
    v41 = *(v39 + 16);

    sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
    v42 = sub_2759BA1E8();
    v44 = v43;

    v45 = sub_2758937B8(v42, v44, &v55);

    *(v33 + 14) = v45;
    _os_log_impl(&dword_275819000, v30, v31, "Sending event %s with payload: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v34, -1, -1);
    MEMORY[0x277C85860](v33, -1, -1);

    v46 = *(v0 + 194);
  }

  else
  {
    v47 = v0[21];

    *(v0 + 194);
  }

  v49 = v0[20];
  v48 = v0[21];
  v50 = sub_2759BA258();

  v0[6] = sub_275936848;
  v0[7] = v48;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_27594A654;
  v0[5] = &block_descriptor_38;
  v51 = _Block_copy(v0 + 2);
  v52 = v0[7];

  AnalyticsSendEventLazy();
  _Block_release(v51);

  v53 = v0[1];

  return v53();
}

id ICSAnalyticsController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICSAnalyticsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2759353A8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_27593549C;

  return v6(v2 + 16);
}

uint64_t sub_27593549C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _s14iCloudSettings18ICSAnalyticsViewIDO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 4)
  {
    if (*(a1 + 16) <= 1u)
    {
      if (!*(a1 + 16))
      {
        if (*(a2 + 16))
        {
          goto LABEL_48;
        }

        if (v2 == v5 && v3 == v6)
        {
          sub_27591E640(*a1, v3, 0);
          sub_27591E640(v2, v3, 0);
          sub_27589F7F0(v2, v3, 0);
          v8 = v2;
          v9 = v3;
          v10 = 0;
          goto LABEL_124;
        }

        v28 = *a1;
        v20 = sub_2759BAAC8();
        sub_27591E640(v5, v6, 0);
        sub_27591E640(v2, v3, 0);
        sub_27589F7F0(v2, v3, 0);
        v21 = v5;
        v22 = v6;
        v23 = 0;
        goto LABEL_85;
      }

      if (v7 == 1)
      {
        sub_27589F7F0(*a1, v3, 1u);
        v11 = v5;
        v12 = v6;
        v13 = 1;
        goto LABEL_43;
      }
    }

    else
    {
      if (v4 == 2)
      {
        if (v7 != 2)
        {
          goto LABEL_48;
        }

        if (v2 == v5 && v3 == v6)
        {
          sub_27591E640(*a1, v3, 2u);
          sub_27591E640(v2, v3, 2u);
          sub_27589F7F0(v2, v3, 2u);
          v8 = v2;
          v9 = v3;
          v10 = 2;
          goto LABEL_124;
        }

        v19 = *a1;
        v20 = sub_2759BAAC8();
        sub_27591E640(v5, v6, 2u);
        sub_27591E640(v2, v3, 2u);
        sub_27589F7F0(v2, v3, 2u);
        v21 = v5;
        v22 = v6;
        v23 = 2;
        goto LABEL_85;
      }

      if (v4 == 3)
      {
        if (v7 != 3)
        {
          goto LABEL_48;
        }

        if (v2 == v5 && v3 == v6)
        {
          sub_27591E640(*a1, v3, 3u);
          sub_27591E640(v2, v3, 3u);
          sub_27589F7F0(v2, v3, 3u);
          v8 = v2;
          v9 = v3;
          v10 = 3;
          goto LABEL_124;
        }

        v25 = *a1;
        v20 = sub_2759BAAC8();
        sub_27591E640(v5, v6, 3u);
        sub_27591E640(v2, v3, 3u);
        sub_27589F7F0(v2, v3, 3u);
        v21 = v5;
        v22 = v6;
        v23 = 3;
        goto LABEL_85;
      }

      if (v7 == 4)
      {
        sub_27589F7F0(*a1, v3, 4u);
        v11 = v5;
        v12 = v6;
        v13 = 4;
        goto LABEL_43;
      }
    }

LABEL_49:
    sub_27591E640(v5, v6, v7);
    sub_27589F7F0(v2, v3, v4);
    v16 = v5;
    v17 = v6;
    v18 = v7;
    goto LABEL_50;
  }

  if (*(a1 + 16) > 7u)
  {
    if (v4 == 8)
    {
      if (v7 != 8)
      {
        goto LABEL_48;
      }

      if (v2 == v5 && v3 == v6)
      {
        sub_27591E640(*a1, v3, 8u);
        sub_27591E640(v2, v3, 8u);
        sub_27589F7F0(v2, v3, 8u);
        v8 = v2;
        v9 = v3;
        v10 = 8;
        goto LABEL_124;
      }

      v24 = *a1;
      v20 = sub_2759BAAC8();
      sub_27591E640(v5, v6, 8u);
      sub_27591E640(v2, v3, 8u);
      sub_27589F7F0(v2, v3, 8u);
      v21 = v5;
      v22 = v6;
      v23 = 8;
    }

    else
    {
      if (v4 != 9)
      {
        if (v2 > 5)
        {
          if (v2 > 8)
          {
            if (v2 ^ 9 | v3)
            {
              if (v2 ^ 0xA | v3)
              {
                if (v7 != 10 || v5 != 11 || v6)
                {
                  goto LABEL_49;
                }

                sub_27589F7F0(*a1, v3, 0xAu);
                v8 = 11;
              }

              else
              {
                if (v7 != 10 || v5 != 10 || v6)
                {
                  goto LABEL_49;
                }

                sub_27589F7F0(*a1, v3, 0xAu);
                v8 = 10;
              }
            }

            else
            {
              if (v7 != 10 || v5 != 9 || v6)
              {
                goto LABEL_49;
              }

              sub_27589F7F0(*a1, v3, 0xAu);
              v8 = 9;
            }
          }

          else if (v2 ^ 6 | v3)
          {
            if (v2 ^ 7 | v3)
            {
              if (v7 != 10 || v5 != 8 || v6)
              {
                goto LABEL_49;
              }

              sub_27589F7F0(*a1, v3, 0xAu);
              v8 = 8;
            }

            else
            {
              if (v7 != 10 || v5 != 7 || v6)
              {
                goto LABEL_49;
              }

              sub_27589F7F0(*a1, v3, 0xAu);
              v8 = 7;
            }
          }

          else
          {
            if (v7 != 10 || v5 != 6 || v6)
            {
              goto LABEL_49;
            }

            sub_27589F7F0(*a1, v3, 0xAu);
            v8 = 6;
          }
        }

        else if (v2 > 2)
        {
          if (v2 ^ 3 | v3)
          {
            if (v2 ^ 4 | v3)
            {
              if (v7 != 10 || v5 != 5 || v6)
              {
                goto LABEL_49;
              }

              sub_27589F7F0(*a1, v3, 0xAu);
              v8 = 5;
            }

            else
            {
              if (v7 != 10 || v5 != 4 || v6)
              {
                goto LABEL_49;
              }

              sub_27589F7F0(*a1, v3, 0xAu);
              v8 = 4;
            }
          }

          else
          {
            if (v7 != 10 || v5 != 3 || v6)
            {
              goto LABEL_49;
            }

            sub_27589F7F0(*a1, v3, 0xAu);
            v8 = 3;
          }
        }

        else if (v2 | v3)
        {
          if (!(v2 ^ 1 | v3))
          {
            if (v7 == 10 && v5 == 1 && !v6)
            {
              sub_27589F7F0(*a1, v3, 0xAu);
              v14 = 1;
              sub_27589F7F0(1, 0, 0xAu);
              return v14 & 1;
            }

            goto LABEL_49;
          }

          if (v7 != 10 || v5 != 2 || v6)
          {
            goto LABEL_49;
          }

          sub_27589F7F0(*a1, v3, 0xAu);
          v8 = 2;
        }

        else
        {
          if (v7 != 10 || v6 | v5)
          {
            goto LABEL_49;
          }

          sub_27589F7F0(*a1, v3, 0xAu);
          v8 = 0;
        }

        v9 = 0;
        v10 = 10;
        goto LABEL_124;
      }

      if (v7 != 9)
      {
        goto LABEL_48;
      }

      if (v2 == v5 && v3 == v6)
      {
        sub_27591E640(*a1, v3, 9u);
        sub_27591E640(v2, v3, 9u);
        sub_27589F7F0(v2, v3, 9u);
        v8 = v2;
        v9 = v3;
        v10 = 9;
        goto LABEL_124;
      }

      v26 = *a1;
      v20 = sub_2759BAAC8();
      sub_27591E640(v5, v6, 9u);
      sub_27591E640(v2, v3, 9u);
      sub_27589F7F0(v2, v3, 9u);
      v21 = v5;
      v22 = v6;
      v23 = 9;
    }

LABEL_85:
    sub_27589F7F0(v21, v22, v23);
    return v20 & 1;
  }

  if (v4 != 5)
  {
    if (v4 == 6)
    {
      if (v7 == 6)
      {
        if (v3)
        {
          if (v6)
          {
            if (v2 == v5 && v3 == v6)
            {
              sub_27591E640(*a1, v3, 6u);
              sub_27591E640(v2, v3, 6u);
              sub_27589F7F0(v2, v3, 6u);
              v8 = v2;
              v9 = v3;
              v10 = 6;
LABEL_124:
              sub_27589F7F0(v8, v9, v10);
LABEL_125:
              v14 = 1;
              return v14 & 1;
            }

            v31 = *a1;
            v32 = sub_2759BAAC8();
            sub_27591E640(v5, v6, 6u);
            sub_27591E640(v2, v3, 6u);
            sub_27589F7F0(v2, v3, 6u);
            sub_27589F7F0(v5, v6, 6u);
            if (v32)
            {
              goto LABEL_125;
            }

            goto LABEL_51;
          }

          sub_27591E640(*a2, 0, 6u);
          sub_27591E640(v5, 0, 6u);
          sub_27591E640(v2, v3, 6u);
          sub_27589F7F0(v2, v3, 6u);
        }

        else
        {
          v30 = *(a2 + 8);

          sub_27591E640(v5, v6, 6u);
          sub_27591E640(v2, 0, 6u);
          sub_27589F7F0(v2, 0, 6u);
          sub_27589F7F0(v5, v6, 6u);
          if (!v6)
          {
            goto LABEL_125;
          }
        }

        v16 = v5;
        v17 = v6;
        v18 = 6;
LABEL_50:
        sub_27589F7F0(v16, v17, v18);
LABEL_51:
        v14 = 0;
        return v14 & 1;
      }

      goto LABEL_48;
    }

    if (v7 == 7)
    {
      if (v2 == v5 && v3 == v6)
      {
        sub_27591E640(*a1, v3, 7u);
        sub_27591E640(v2, v3, 7u);
        sub_27589F7F0(v2, v3, 7u);
        v8 = v2;
        v9 = v3;
        v10 = 7;
        goto LABEL_124;
      }

      v27 = *a1;
      v20 = sub_2759BAAC8();
      sub_27591E640(v5, v6, 7u);
      sub_27591E640(v2, v3, 7u);
      sub_27589F7F0(v2, v3, 7u);
      v21 = v5;
      v22 = v6;
      v23 = 7;
      goto LABEL_85;
    }

LABEL_48:
    v15 = *(a1 + 8);

    goto LABEL_49;
  }

  if (v7 != 5)
  {
    goto LABEL_49;
  }

  sub_27589F7F0(*a1, v3, 5u);
  v11 = v5;
  v12 = v6;
  v13 = 5;
LABEL_43:
  sub_27589F7F0(v11, v12, v13);
  v14 = v5 ^ v2 ^ 1;
  return v14 & 1;
}

id sub_275935F68(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController;
  *&v2[OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_dataController] = 0;
  v6 = OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager;
  *&v2[OBJC_IVAR____TtC14iCloudSettings22ICSAnalyticsController_backupManager] = 0;
  if (a1)
  {
    v7 = objc_allocWithZone(type metadata accessor for iCloudHomeDataController());
    v8 = a1;
    v9 = [v7 initWithAccount:v8 launchedFromRootLevel:1];
    v10 = *&v2[v5];
    *&v2[v5] = v9;

    v11 = [objc_allocWithZone(ICSBackupManager) initWithAccount_];
    v12 = *&v2[v6];
    *&v2[v6] = v11;
  }

  else
  {
    if (qword_280A0E350 != -1)
    {
      swift_once();
    }

    v13 = sub_2759B89A8();
    __swift_project_value_buffer(v13, qword_280A238D0);
    v12 = sub_2759B8988();
    v14 = sub_2759BA648();
    if (os_log_type_enabled(v12, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_275819000, v12, v14, "ICSAnalyticsController init without account, some reporting data may be missing or incorrect", v15, 2u);
      MEMORY[0x277C85860](v15, -1, -1);
    }
  }

  v17.receiver = v2;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_275936100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27593616C()
{
  result = qword_280A111F0;
  if (!qword_280A111F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A111F0);
  }

  return result;
}

unint64_t sub_2759361C4()
{
  result = qword_280A111F8;
  if (!qword_280A111F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A111F8);
  }

  return result;
}

unint64_t sub_27593621C()
{
  result = qword_280A11200;
  if (!qword_280A11200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11200);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICSAnalyticsComponentID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICSAnalyticsComponentID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14iCloudSettings18ICSAnalyticsViewIDO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 9)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_2759363EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 17))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_275936434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_275936478(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2759364F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0x656C616974696E69 && a2 == 0xE900000000000064 || (sub_2759BAAC8() & 1) != 0)
    {

      return 0;
    }

    if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_2759BAAC8() & 1) != 0)
    {

      return 1;
    }

    if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    v5 = sub_2759BAAC8();

    if (v5)
    {
      return 2;
    }
  }

  return 0;
}

uint64_t sub_275936630()
{
  v0 = sub_2759BAA48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275936698()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_2759366D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return sub_2759353A8(a1, v5);
}

uint64_t sub_275936788(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585A7E4;

  return sub_2759353A8(a1, v5);
}

uint64_t sub_275936854()
{
  swift_getKeyPath();
  sub_2759381E4(&qword_280A11238);
  sub_2759B8638();

  v1 = *(v0 + 64);
}

uint64_t sub_2759368E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2759381E4(&qword_280A11238);
  sub_2759B8638();

  *a2 = *(v3 + 64);
}

uint64_t sub_27593697C(uint64_t a1)
{
  if (!*(v1 + 64))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2759381E4(&qword_280A11238);
    sub_2759B8628();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 64);

  v4 = sub_2759B9D08();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v1 + 64);
LABEL_7:
  *(v1 + 64) = a1;
}

void *sub_275936AD0()
{
  swift_getKeyPath();
  sub_2759381E4(&qword_280A11238);
  sub_2759B8638();

  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

id sub_275936B64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2759381E4(&qword_280A11238);
  sub_2759B8638();

  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

void sub_275936C08(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 112);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2759381E4(&qword_280A11238);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275938318();
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 112);
LABEL_8:
  *(v2 + 112) = a1;
}

id sub_275936D74()
{
  v1 = *(v0 + 40);
  v2 = *MEMORY[0x277CB8A08];
  v3 = sub_2759BA298();
  v5 = v4;
  if (v3 == sub_2759BA298() && v5 == v6)
  {
    goto LABEL_16;
  }

  v8 = sub_2759BAAC8();
  v9 = v1;

  if (v8)
  {
LABEL_6:

    goto LABEL_17;
  }

  v10 = *MEMORY[0x277CB8960];
  v11 = sub_2759BA298();
  v13 = v12;
  if (v11 == sub_2759BA298() && v13 == v14)
  {

LABEL_16:

    goto LABEL_17;
  }

  v16 = sub_2759BAAC8();

  if (v16)
  {
    goto LABEL_6;
  }

  v17 = *MEMORY[0x277CB8A58];
  v18 = sub_2759BA298();
  v20 = v19;
  if (v18 == sub_2759BA298() && v20 == v21)
  {
    goto LABEL_34;
  }

  v26 = sub_2759BAAC8();

  if (v26)
  {
    goto LABEL_6;
  }

  v27 = *MEMORY[0x277CB89C0];
  v28 = sub_2759BA298();
  v30 = v29;
  if (v28 == sub_2759BA298() && v30 == v31)
  {
    goto LABEL_34;
  }

  v32 = sub_2759BAAC8();

  if (v32)
  {
    goto LABEL_6;
  }

  v33 = *MEMORY[0x277CB89F8];
  v34 = sub_2759BA298();
  v36 = v35;
  if (v34 == sub_2759BA298() && v36 == v37)
  {
    goto LABEL_34;
  }

  v38 = sub_2759BAAC8();

  if (v38)
  {
    goto LABEL_6;
  }

  v39 = *MEMORY[0x277CB89D8];
  v40 = sub_2759BA298();
  v42 = v41;
  if (v40 == sub_2759BA298() && v42 == v43)
  {
    goto LABEL_34;
  }

  v44 = sub_2759BAAC8();

  if (v44)
  {
    goto LABEL_6;
  }

  v45 = *MEMORY[0x277CB89C8];
  v46 = sub_2759BA298();
  v48 = v47;
  if (v46 == sub_2759BA298() && v48 == v49)
  {
LABEL_34:

    goto LABEL_17;
  }

  v50 = sub_2759BAAC8();

  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v22 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v23 = sub_2759BA258();
  v24 = [v22 initWithBundleIdentifier_];

  return v24;
}

uint64_t sub_2759371C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v4[12] = a4;
  sub_2759BA4C8();
  v4[13] = sub_2759BA4B8();
  v5 = sub_2759BA468();
  v4[14] = v5;
  v4[15] = v6;
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_275937290, v5, v6);
}

uint64_t sub_275937290()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[12];
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEB0, &qword_2759C2620);
    inited = swift_initStackObject();
    v0[16] = inited;
    *(inited + 16) = xmmword_2759C17A0;
    *(inited + 32) = v3;
    *(inited + 40) = v2;

    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_275937418;
    v6 = *MEMORY[0x277D85DE8];

    return sub_275871740(inited, 28.0, 28.0);
  }

  else
  {
    v8 = v0[13];

    v9 = v0[1];
    v10 = *MEMORY[0x277D85DE8];

    return v9();
  }
}

uint64_t sub_275937418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *v3;
  v5 = *v3;
  v5[8] = v3;
  v5[9] = a1;
  v5[10] = a2;
  v5[11] = a3;
  v6 = v4[17];
  v7 = v4[16];
  v14 = *v3;
  v5[18] = a1;

  swift_setDeallocating();
  v8 = *(v7 + 16);
  swift_arrayDestroy();
  v9 = v4[15];
  v10 = v4[14];
  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2759375AC, v10, v9);
}

uint64_t sub_2759375AC()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[18];
  v2 = v0[13];

  if (v1)
  {
    v3 = v0[18];
    v4 = v0[11];
    v5 = v0[12];

    v6 = v3;
    v7 = sub_2759B9C98();
    sub_27593697C(v7);
  }

  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];

  return v8();
}

uint64_t sub_275937668()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  sub_2759BA4C8();
  v1[4] = sub_2759BA4B8();
  v4 = sub_2759BA468();
  v1[5] = v4;
  v1[6] = v3;

  return MEMORY[0x2822009F8](sub_275937738, v4, v3);
}

uint64_t sub_275937738()
{
  v1 = v0[2];
  v0[7] = *(v1 + 32);
  v2 = *(v1 + 40);
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_2759377E4;

  return sub_27590E9A4(v2, 0, 0);
}

uint64_t sub_2759377E4()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_275937904, v4, v3);
}

uint64_t sub_275937904()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];

  v5 = *(v2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController);
  v6 = sub_2759BA298();
  v8 = v7;
  v9 = v5;

  sub_2759BA4D8();
  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v11;
  *(v12 + 40) = xmmword_2759C43F0;
  *(v12 + 56) = 10;
  *(v12 + 58) = 0;
  *(v12 + 64) = 1;
  *(v12 + 72) = 0;
  *(v12 + 80) = v6;
  *(v12 + 88) = v8;
  *(v12 + 96) = 2;

  sub_275931D20(0, 0, v4, &unk_2759C4530, v12);

  swift_bridgeObjectRelease_n();
  sub_275936100(v4);

  v13 = v0[1];

  return v13();
}

uint64_t sub_275937AC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  v4 = OBJC_IVAR____TtC14iCloudSettings24iCloudDataclassCardModel___observationRegistrar;
  v5 = sub_2759B8678();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_275937B58()
{
  sub_275937AC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for iCloudDataclassCardModel()
{
  result = qword_280A11220;
  if (!qword_280A11220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275937C04()
{
  result = sub_2759B8678();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_275937CD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_275937D08()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  return sub_275888920();
}

void sub_275937D30(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 32);
  v5 = sub_275888EA4();
  if (v5)
  {
    v6 = *&v5[OBJC_IVAR____TtC14iCloudSettings9iCloudApp_icons];
    if (v6)
    {
      v10 = v5;
      v7 = v6;
      sub_2759889A0(a1);

      return;
    }
  }

  v8 = sub_2759B8508();
  v9 = *(*(v8 - 8) + 56);

  v9(a1, 1, 1, v8);
}

uint64_t sub_275937E10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27585A7E4;

  return sub_275937668();
}

uint64_t sub_275937E9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_2759BA518();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_2759BA4C8();

  v7 = sub_2759BA4B8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  sub_27587D460(0, 0, v5, &unk_2759C2DD8, v8);
}

uint64_t sub_275937FC0()
{
  v1 = *v0;
  sub_2759BABD8();
  v2 = *(v1 + 40);
  sub_2759BA298();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_275938024()
{
  v1 = *(*v0 + 40);
  sub_2759BA298();
  sub_2759BA328();
}

uint64_t sub_27593807C()
{
  v1 = *v0;
  sub_2759BABD8();
  v2 = *(v1 + 40);
  sub_2759BA298();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_2759380DC(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 40);
  v3 = *(*a2 + 40);
  v4 = sub_2759BA298();
  v6 = v5;
  if (v4 == sub_2759BA298() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2759BAAC8();
  }

  return v9 & 1;
}

uint64_t sub_2759381A0(uint64_t a1)
{
  result = sub_2759381E4(&qword_280A11238);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2759381E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for iCloudDataclassCardModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275938228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585A7E4;

  return sub_2759371C4(a1, v4, v5, v6);
}

uint64_t sub_2759382DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  *(v1 + 64) = *(v0 + 24);
}

unint64_t sub_275938318()
{
  result = qword_280A0F7B0;
  if (!qword_280A0F7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0F7B0);
  }

  return result;
}

uint64_t sub_275938364(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_2759BA538();
}

uint64_t type metadata accessor for AppsUsingiCloudSection()
{
  result = qword_280A11248;
  if (!qword_280A11248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275938400()
{
  sub_27593858C(319, &qword_280A107E8, MEMORY[0x277D402D0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_27593858C(319, &qword_280A0F5F0, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_27593858C(319, &qword_280A0F5F8, type metadata accessor for iCloudHomeViewModel, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_27593858C(319, &qword_280A11258, MEMORY[0x277CDF6E0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2759B8878();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27593858C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_27593860C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for AppsUsingiCloudSection();
  sub_27586FBC8(v1 + *(v12 + 20), v11, &qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B94D8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_275938814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = sub_2759B9648();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11280, &qword_2759CAAC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11270, &qword_2759CAAB8);
  v12 = *(v21[0] - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21[0]);
  v15 = v21 - v14;
  *v11 = sub_2759B94F8();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112B8, &unk_2759CAB08);
  sub_275938B68(a1, &v11[*(v16 + 44)]);
  sub_2759B9638();
  v17 = sub_27589B02C(&qword_280A11288, &qword_280A11280, &qword_2759CAAC8);
  v18 = sub_27593C13C(&qword_280A0FC00, MEMORY[0x277CDE0B8]);
  sub_2759B9A68();
  (*(v4 + 8))(v7, v3);
  sub_27586BF04(v11, &qword_280A11280, &qword_2759CAAC8);
  sub_2759B9FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11278, &qword_2759CAAC0);
  v21[2] = v8;
  v21[3] = v3;
  v21[4] = v17;
  v21[5] = v18;
  swift_getOpaqueTypeConformance2();
  sub_27593BE80();
  v19 = v21[0];
  sub_2759B9B98();
  return (*(v12 + 8))(v15, v19);
}

uint64_t sub_275938B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EED8, qword_2759C9B60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v52 - v5;
  v6 = sub_2759B94D8();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2759B8F58();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112C0, &qword_2759CAB18);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v60 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v52 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112C8, &qword_2759CAB20);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v57 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - v25;
  v53 = &v52 - v25;
  sub_275939068(a1, &v52 - v25);
  v27 = sub_2759B97F8();
  sub_2759B8D78();
  v28 = &v26[*(v21 + 44)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = type metadata accessor for AppsUsingiCloudSection();
  v34 = (a1 + *(v33 + 24));
  v36 = v34[1];
  v64 = *v34;
  v35 = v64;
  v65 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v37 = v63;
  v38 = *(v33 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11240, qword_2759CAA20);
  sub_2759B9D68();
  v39 = v54;
  sub_27593860C(v54);
  v52 = sub_27588790C(v12, v39);

  (*(v58 + 8))(v39, v59);
  v41 = v55;
  v40 = v56;
  (*(v55 + 8))(v12, v56);
  v64 = v35;
  v65 = v36;
  sub_2759B9D68();
  v42 = v63;
  v43 = v61;
  (*(v41 + 56))(v61, 1, 1, v40);
  v44 = v43;
  v45 = sub_2758965BC(v43);

  sub_27586BF04(v44, &qword_280A0EED8, qword_2759C9B60);
  *v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  v46 = v53;
  *(v19 + *(v14 + 52)) = v52;
  *(v19 + *(v14 + 56)) = v45;
  v47 = v57;
  sub_27586FBC8(v46, v57, &qword_280A112C8, &qword_2759CAB20);
  v48 = v60;
  sub_27586FBC8(v19, v60, &qword_280A112C0, &qword_2759CAB18);
  v49 = v62;
  sub_27586FBC8(v47, v62, &qword_280A112C8, &qword_2759CAB20);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112D0, &unk_2759CAB60);
  sub_27586FBC8(v48, v49 + *(v50 + 48), &qword_280A112C0, &qword_2759CAB18);
  sub_27586BF04(v19, &qword_280A112C0, &qword_2759CAB18);
  sub_27586BF04(v46, &qword_280A112C8, &qword_2759CAB20);
  sub_27586BF04(v48, &qword_280A112C0, &qword_2759CAB18);
  return sub_27586BF04(v47, &qword_280A112C8, &qword_2759CAB20);
}

uint64_t sub_275939068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10500, &qword_2759C9C10);
  v74 = *(v76 - 8);
  v3 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v71 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112D8, &qword_2759CAB70);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v77 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v71 - v9;
  v10 = type metadata accessor for AppsUsingiCloudSection();
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112E0, &qword_2759CAB78);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112E8, &unk_2759CAB80);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v73 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v71 - v23;
  sub_27593C184(a1, &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v26 = swift_allocObject();
  sub_27593C1E8(&v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112F0, &qword_2759CAB90);
  sub_27593C2B4();
  sub_2759B9DB8();
  sub_27589B02C(&qword_280A11320, &qword_280A112E0, &qword_2759CAB78);
  v72 = v24;
  sub_2759B9B38();
  (*(v15 + 8))(v18, v14);
  v27 = (a1 + *(v11 + 32));
  v29 = *v27;
  v28 = v27[1];
  v80 = v29;
  v81 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v30 = v84;
  swift_getKeyPath();
  v80 = v30;
  sub_27593C13C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v31 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v32 = *&v30[v31];
  v33 = v32;

  if (!v32)
  {
    goto LABEL_9;
  }

  v34 = *&v33[OBJC_IVAR___ICSHomeDataModel_icloudAppsCard];

  v36 = *&v34[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_subtitle];
  v35 = *&v34[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_subtitle + 8];

  v37 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v37 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

LABEL_9:
    v64 = 1;
    v58 = v75;
    v57 = v76;
    goto LABEL_10;
  }

  v80 = v36;
  v81 = v35;
  sub_27589F2D4();
  v38 = sub_2759B99C8();
  v40 = v39;
  v42 = v41;
  sub_2759B9848();
  v43 = sub_2759B9988();
  v45 = v44;
  v47 = v46;

  sub_27589F328(v38, v40, v42 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v80 = qword_280A239C0;

  v48 = sub_2759B9958();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_27589F328(v43, v45, v47 & 1);

  v80 = v48;
  v81 = v50;
  v82 = v52 & 1;
  v83 = v54;
  v55 = v71;
  sub_2759B9B38();
  sub_27589F328(v48, v50, v52 & 1);

  v56 = sub_2759B97E8();
  sub_2759B8D78();
  v58 = v75;
  v57 = v76;
  v59 = v55 + *(v76 + 36);
  *v59 = v56;
  *(v59 + 8) = v60;
  *(v59 + 16) = v61;
  *(v59 + 24) = v62;
  *(v59 + 32) = v63;
  *(v59 + 40) = 0;
  sub_27589F26C(v55, v58, &qword_280A10500, &qword_2759C9C10);
  v64 = 0;
LABEL_10:
  (*(v74 + 56))(v58, v64, 1, v57);
  v66 = v72;
  v65 = v73;
  sub_27586FBC8(v72, v73, &qword_280A112E8, &unk_2759CAB80);
  v67 = v77;
  sub_27586FBC8(v58, v77, &qword_280A112D8, &qword_2759CAB70);
  v68 = v78;
  sub_27586FBC8(v65, v78, &qword_280A112E8, &unk_2759CAB80);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11328, &qword_2759CABD0);
  sub_27586FBC8(v67, v68 + *(v69 + 48), &qword_280A112D8, &qword_2759CAB70);
  sub_27586BF04(v58, &qword_280A112D8, &qword_2759CAB70);
  sub_27586BF04(v66, &qword_280A112E8, &unk_2759CAB80);
  sub_27586BF04(v67, &qword_280A112D8, &qword_2759CAB70);
  return sub_27586BF04(v65, &qword_280A112E8, &unk_2759CAB80);
}

uint64_t sub_275939814(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AppsUsingiCloudSection() + 24));
  v4 = *v1;
  v5 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  sub_275913D20();

  return sub_275939888();
}

uint64_t sub_275939888()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v14 - v3;
  v5 = (v0 + *(type metadata accessor for AppsUsingiCloudSection() + 24));
  v7 = *v5;
  v6 = v5[1];
  v16 = v7;
  v17 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v8 = v15;
  v9 = *&v15[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController];

  sub_2759BA4D8();
  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v11;
  *(v12 + 40) = xmmword_2759C43F0;
  *(v12 + 56) = 5130;
  *(v12 + 58) = 0;
  *(v12 + 64) = 1;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = 10;
  sub_275931D20(0, 0, v4, &unk_2759C4530, v12);

  return sub_27586BF04(v4, &unk_280A0E510, &qword_2759C33C0);
}

uint64_t sub_275939A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11318, &qword_2759CABA0);
  v3 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v28 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11330, &qword_2759CABD8);
  v6 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v8 = &v28 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11308, &qword_2759CAB98);
  v9 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v28 - v10;
  v12 = sub_2759B94D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  sub_27593860C(&v28 - v18);
  (*(v13 + 104))(v17, *MEMORY[0x277CE0280], v12);
  v20 = sub_2758B2220(v19, v17);
  v21 = *(v13 + 8);
  v21(v17, v12);
  v21(v19, v12);
  if (v20)
  {
    *v11 = sub_2759B94E8();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11340, &qword_2759CABE8);
    sub_27593AE3C(a1, &v11[*(v22 + 44)]);
    v23 = &qword_280A11308;
    v24 = &qword_2759CAB98;
    sub_27586FBC8(v11, v8, &qword_280A11308, &qword_2759CAB98);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A11300, &qword_280A11308, &qword_2759CAB98);
    sub_27589B02C(&qword_280A11310, &qword_280A11318, &qword_2759CABA0);
    sub_2759B95E8();
    v25 = v11;
  }

  else
  {
    *v5 = sub_2759B9418();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11338, &qword_2759CABE0);
    sub_27593A2E4(a1, &v5[*(v26 + 44)]);
    v23 = &qword_280A11318;
    v24 = &qword_2759CABA0;
    sub_27586FBC8(v5, v8, &qword_280A11318, &qword_2759CABA0);
    swift_storeEnumTagMultiPayload();
    sub_27589B02C(&qword_280A11300, &qword_280A11308, &qword_2759CAB98);
    sub_27589B02C(&qword_280A11310, &qword_280A11318, &qword_2759CABA0);
    sub_2759B95E8();
    v25 = v5;
  }

  return sub_27586BF04(v25, v23, v24);
}

uint64_t sub_275939EC4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2();
  sub_2759B8D78();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11270, &qword_2759CAAB8);
  (*(*(v14 - 8) + 16))(a3, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11278, &qword_2759CAAC0);
  v16 = a3 + *(result + 36);
  *v16 = v5;
  *(v16 + 8) = v7;
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_275939F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_2759B8838();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A112A8, &unk_2759CAAD0);
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v10 = &v27 - v9;
  v11 = type metadata accessor for AppsUsingiCloudSection();
  v12 = *(v11 + 24);
  v27 = a1;
  v13 = (a1 + v12);
  v15 = *v13;
  v14 = v13[1];
  v33 = *v13;
  v34 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v16 = v32;
  swift_getKeyPath();
  v33 = v16;
  sub_27593C13C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_5;
  }

  v33 = v15;
  v34 = v14;
  sub_2759B9D68();
  v18 = v32;
  v19 = sub_27587C10C();

  if (!v19)
  {

LABEL_5:
    v25 = 1;
    v24 = v31;
    return (*(v7 + 56))(v24, v25, 1, v30);
  }

  v20 = *(v27 + *(v11 + 32));

  v21 = v19;
  v22 = Strong;
  sub_2759B8828();
  sub_27593C13C(&qword_280A112B0, MEMORY[0x277CFB258]);
  v23 = v29;
  sub_2759B9B38();

  (*(v28 + 8))(v6, v23);
  v24 = v31;
  sub_27589F26C(v10, v31, &qword_280A112A8, &unk_2759CAAD0);
  v25 = 0;
  return (*(v7 + 56))(v24, v25, 1, v30);
}

uint64_t sub_27593A2E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v110 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB8, &qword_2759C7C48);
  v3 = *(*(v109 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v109);
  v114 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v111 = (&v98 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v113 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v112 = &v98 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v116 = &v98 - v14;
  MEMORY[0x28223BE20](v13);
  v115 = &v98 - v15;
  sub_2759BA028();
  sub_2759B8F18();
  v107 = v123;
  v106 = v124;
  v105 = v125;
  v104 = v126;
  v103 = v127;
  v102 = v128;
  v16 = (a1 + *(type metadata accessor for AppsUsingiCloudSection() + 24));
  v18 = v16[1];
  v118 = *v16;
  v17 = v118;
  v119 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v20 = v122;
  v108 = sub_275882918();

  v99 = v17;
  v118 = v17;
  v119 = v18;
  v101 = v18;
  v100 = v19;
  sub_2759B9D68();
  v21 = v122;
  swift_getKeyPath();
  v118 = v21;
  v98 = sub_27593C13C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v22 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v23 = *&v21[v22];
  v24 = v23;

  if (v23)
  {
    v25 = *&v24[OBJC_IVAR___ICSHomeDataModel_icloudAppsCard];

    v26 = *&v25[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title];
    v27 = *&v25[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title + 8];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    v26 = sub_2759B83C8();
    v27 = v29;
  }

  v118 = v26;
  v119 = v27;
  sub_27589F2D4();
  v30 = sub_2759B99C8();
  v32 = v31;
  v34 = v33;
  sub_2759B9858();
  v35 = sub_2759B9988();
  v37 = v36;
  v39 = v38;

  sub_27589F328(v30, v32, v34 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v118 = qword_280A239B8;

  v40 = sub_2759B9958();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_27589F328(v35, v37, v39 & 1);

  v118 = v40;
  v119 = v42;
  v120 = v44 & 1;
  v121 = v46;
  sub_2759B9B38();
  sub_27589F328(v40, v42, v44 & 1);

  v118 = v99;
  v119 = v101;
  sub_2759B9D68();
  v47 = v117;
  swift_getKeyPath();
  v118 = v47;
  sub_2759B8638();

  v48 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v49 = *&v47[v48];
  v50 = v49;

  if (v49)
  {
    v51 = *&v50[OBJC_IVAR___ICSHomeDataModel_icloudAppsCard];

    v52 = *&v51[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel];
    v53 = *&v51[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel + 8];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel();
    v54 = swift_getObjCClassFromMetadata();
    v55 = [objc_opt_self() bundleForClass_];
    v52 = sub_2759B83C8();
    v53 = v56;
  }

  v118 = v52;
  v119 = v53;
  v57 = sub_2759B99C8();
  v59 = v58;
  v61 = v60;
  sub_2759B9858();
  v62 = sub_2759B9988();
  v64 = v63;
  v66 = v65;

  sub_27589F328(v57, v59, v61 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v118 = qword_280A239C0;

  v67 = sub_2759B9958();
  v69 = v68;
  v71 = v70;
  v73 = v72;
  sub_27589F328(v62, v64, v66 & 1);

  v118 = v67;
  v119 = v69;
  v120 = v71 & 1;
  v121 = v73;
  v74 = v116;
  sub_2759B9B38();
  sub_27589F328(v67, v69, v71 & 1);

  v75 = sub_2759B9CB8();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78);
  v77 = v111;
  v78 = (v111 + *(v76 + 36));
  v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v80 = *MEMORY[0x277CE1050];
  v81 = sub_2759B9D18();
  (*(*(v81 - 8) + 104))(v78 + v79, v80, v81);
  *v78 = swift_getKeyPath();
  *v77 = v75;
  v82 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v84 = (v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v84 = KeyPath;
  v84[1] = v82;
  v85 = [objc_opt_self() tertiaryLabelColor];
  v86 = sub_2759B9BD8();
  v87 = swift_getKeyPath();
  v88 = (v77 + *(v109 + 36));
  *v88 = v87;
  v88[1] = v86;
  v89 = v115;
  v90 = v112;
  sub_27586FBC8(v115, v112, &qword_280A0F600, &qword_2759C4210);
  v91 = v113;
  sub_27586FBC8(v74, v113, &qword_280A0F600, &qword_2759C4210);
  v92 = v114;
  sub_27586FBC8(v77, v114, &qword_280A10AB8, &qword_2759C7C48);
  v93 = v110;
  *v110 = v107;
  *(v93 + 8) = v106;
  v93[2] = v105;
  *(v93 + 24) = v104;
  v94 = v102;
  v93[4] = v103;
  v93[5] = v94;
  v93[6] = v108;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11368, &qword_2759CACC0);
  sub_27586FBC8(v90, v93 + v95[12], &qword_280A0F600, &qword_2759C4210);
  v96 = v93 + v95[16];
  *v96 = 0x4020000000000000;
  v96[8] = 0;
  sub_27586FBC8(v91, v93 + v95[20], &qword_280A0F600, &qword_2759C4210);
  sub_27586FBC8(v92, v93 + v95[24], &qword_280A10AB8, &qword_2759C7C48);

  sub_27586BF04(v77, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v116, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v89, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v92, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v91, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v90, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_27593AE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10A90, &qword_2759CABF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11348, &qword_2759CABF8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  *v17 = sub_2759B9418();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11350, &unk_2759CAC00);
  sub_27593B084(a1, &v17[*(v18 + 44)]);
  *v10 = sub_2759B9418();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AA8, &qword_2759C7C38);
  sub_27593B5C8(a1, &v10[*(v19 + 44)]);
  sub_27586FBC8(v17, v15, &qword_280A11348, &qword_2759CABF8);
  sub_27586FBC8(v10, v8, &qword_280A10A90, &qword_2759CABF0);
  sub_27586FBC8(v15, a2, &qword_280A11348, &qword_2759CABF8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11358, &qword_2759CAC10);
  sub_27586FBC8(v8, a2 + *(v20 + 48), &qword_280A10A90, &qword_2759CABF0);
  sub_27586BF04(v10, &qword_280A10A90, &qword_2759CABF0);
  sub_27586BF04(v17, &qword_280A11348, &qword_2759CABF8);
  sub_27586BF04(v8, &qword_280A10A90, &qword_2759CABF0);
  return sub_27586BF04(v15, &qword_280A11348, &qword_2759CABF8);
}

uint64_t sub_27593B084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v55 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v46 - v8;
  sub_2759BA028();
  sub_2759B8F18();
  v52 = v61;
  v51 = v62;
  v50 = v63;
  v49 = v64;
  v48 = v65;
  v47 = v66;
  v9 = (a1 + *(type metadata accessor for AppsUsingiCloudSection() + 24));
  v11 = v9[1];
  v56 = *v9;
  v10 = v56;
  v57 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v12 = v60;
  v53 = sub_275882918();

  v56 = v10;
  v57 = v11;
  sub_2759B9D68();
  v13 = v60;
  swift_getKeyPath();
  v56 = v13;
  sub_27593C13C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v14 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v15 = *&v13[v14];
  v16 = v15;

  if (v15)
  {
    v17 = *&v16[OBJC_IVAR___ICSHomeDataModel_icloudAppsCard];

    v18 = *&v17[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title];
    v19 = *&v17[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_title + 8];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    v18 = sub_2759B83C8();
    v19 = v21;
  }

  v56 = v18;
  v57 = v19;
  sub_27589F2D4();
  v22 = sub_2759B99C8();
  v24 = v23;
  v26 = v25;
  sub_2759B9858();
  v27 = sub_2759B9988();
  v29 = v28;
  v31 = v30;

  sub_27589F328(v22, v24, v26 & 1);

  if (qword_280A0E3B8 != -1)
  {
    swift_once();
  }

  v56 = qword_280A239B8;

  v32 = sub_2759B9958();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_27589F328(v27, v29, v31 & 1);

  v56 = v32;
  v57 = v34;
  v58 = v36 & 1;
  v59 = v38;
  v39 = v54;
  sub_2759B9B38();
  sub_27589F328(v32, v34, v36 & 1);

  v40 = v55;
  sub_27586FBC8(v39, v55, &qword_280A0F600, &qword_2759C4210);
  v41 = v53;
  *a2 = v52;
  *(a2 + 8) = v51;
  *(a2 + 16) = v50;
  *(a2 + 24) = v49;
  v42 = v47;
  *(a2 + 32) = v48;
  *(a2 + 40) = v42;
  *(a2 + 48) = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11360, &qword_2759CACB8);
  sub_27586FBC8(v40, a2 + *(v43 + 48), &qword_280A0F600, &qword_2759C4210);
  v44 = a2 + *(v43 + 64);
  *v44 = 0;
  *(v44 + 8) = 1;

  sub_27586BF04(v39, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v40, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_27593B5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AB8, &qword_2759C7C48);
  v3 = *(*(v61 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v61);
  v64 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v61 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v63 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v61 - v12;
  v13 = (a1 + *(type metadata accessor for AppsUsingiCloudSection() + 24));
  v15 = *v13;
  v14 = v13[1];
  v66 = v15;
  v67 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v16 = v70;
  swift_getKeyPath();
  v66 = v16;
  sub_27593C13C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v17 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v18 = *&v16[v17];
  v19 = v18;

  if (v18)
  {
    v20 = *&v19[OBJC_IVAR___ICSHomeDataModel_icloudAppsCard];

    v21 = *&v20[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel];
    v22 = *&v20[OBJC_IVAR____TtC14iCloudSettings14iCloudAppsCard_detailLabel + 8];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v21 = sub_2759B83C8();
    v22 = v24;
  }

  v66 = v21;
  v67 = v22;
  sub_27589F2D4();
  v25 = sub_2759B99C8();
  v27 = v26;
  v29 = v28;
  sub_2759B9858();
  v30 = sub_2759B9988();
  v32 = v31;
  v34 = v33;

  sub_27589F328(v25, v27, v29 & 1);

  if (qword_280A0E3C0 != -1)
  {
    swift_once();
  }

  v66 = qword_280A239C0;

  v35 = sub_2759B9958();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_27589F328(v30, v32, v34 & 1);

  v66 = v35;
  v67 = v37;
  v68 = v39 & 1;
  v69 = v41;
  v42 = v62;
  sub_2759B9B38();
  sub_27589F328(v35, v37, v39 & 1);

  v43 = sub_2759B9CB8();
  v44 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC0, &qword_2759C7C78) + 36));
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F1A8, &qword_2759C8C00) + 28);
  v46 = *MEMORY[0x277CE1050];
  v47 = sub_2759B9D18();
  (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
  *v44 = swift_getKeyPath();
  *v7 = v43;
  v48 = sub_2759B98F8();
  KeyPath = swift_getKeyPath();
  v50 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AC8, &qword_2759C7CE0) + 36));
  *v50 = KeyPath;
  v50[1] = v48;
  v51 = [objc_opt_self() tertiaryLabelColor];
  v52 = sub_2759B9BD8();
  v53 = swift_getKeyPath();
  v54 = (v7 + *(v61 + 36));
  *v54 = v53;
  v54[1] = v52;
  v55 = v63;
  sub_27586FBC8(v42, v63, &qword_280A0F600, &qword_2759C4210);
  v56 = v64;
  sub_27586FBC8(v7, v64, &qword_280A10AB8, &qword_2759C7C48);
  v57 = v65;
  sub_27586FBC8(v55, v65, &qword_280A0F600, &qword_2759C4210);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10AD0, &qword_2759CACB0);
  v59 = v57 + *(v58 + 48);
  *v59 = 0x4020000000000000;
  *(v59 + 8) = 0;
  sub_27586FBC8(v56, v57 + *(v58 + 64), &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v7, &qword_280A10AB8, &qword_2759C7C48);
  sub_27586BF04(v42, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v56, &qword_280A10AB8, &qword_2759C7C48);
  return sub_27586BF04(v55, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_27593BC48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11260, &qword_2759CAAA8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v14 = v0;
  sub_275939F9C(v0, &v13[-v3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11268, &qword_2759CAAB0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11270, &qword_2759CAAB8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11278, &qword_2759CAAC0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11280, &qword_2759CAAC8);
  v7 = sub_2759B9648();
  v8 = sub_27589B02C(&qword_280A11288, &qword_280A11280, &qword_2759CAAC8);
  v9 = sub_27593C13C(&qword_280A0FC00, MEMORY[0x277CDE0B8]);
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_27593BE80();
  v15 = v4;
  v16 = MEMORY[0x277CE1350];
  v17 = v5;
  v18 = v5;
  v19 = OpaqueTypeConformance2;
  v20 = MEMORY[0x277CE1340];
  v21 = v11;
  v22 = v11;
  swift_getOpaqueTypeConformance2();
  sub_27593BFCC();
  return sub_2759B9F48();
}

unint64_t sub_27593BE80()
{
  result = qword_280A11290;
  if (!qword_280A11290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11278, &qword_2759CAAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11280, &qword_2759CAAC8);
    sub_2759B9648();
    sub_27589B02C(&qword_280A11288, &qword_280A11280, &qword_2759CAAC8);
    sub_27593C13C(&qword_280A0FC00, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11290);
  }

  return result;
}

unint64_t sub_27593BFCC()
{
  result = qword_280A11298;
  if (!qword_280A11298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11260, &qword_2759CAAA8);
    sub_27593C050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11298);
  }

  return result;
}

unint64_t sub_27593C050()
{
  result = qword_280A112A0;
  if (!qword_280A112A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A112A8, &unk_2759CAAD0);
    sub_27593C13C(&qword_280A112B0, MEMORY[0x277CFB258]);
    sub_27593C13C(&qword_280A0F688, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A112A0);
  }

  return result;
}

uint64_t sub_27593C13C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27593C184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppsUsingiCloudSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27593C1E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppsUsingiCloudSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27593C24C()
{
  v1 = *(type metadata accessor for AppsUsingiCloudSection() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_275939814(v2);
}

unint64_t sub_27593C2B4()
{
  result = qword_280A112F8;
  if (!qword_280A112F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A112F0, &qword_2759CAB90);
    sub_27589B02C(&qword_280A11300, &qword_280A11308, &qword_2759CAB98);
    sub_27589B02C(&qword_280A11310, &qword_280A11318, &qword_2759CABA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A112F8);
  }

  return result;
}

unint64_t sub_27593C398()
{
  result = qword_280A11370;
  if (!qword_280A11370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11378, qword_2759CACC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11270, &qword_2759CAAB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11278, &qword_2759CAAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11280, &qword_2759CAAC8);
    sub_2759B9648();
    sub_27589B02C(&qword_280A11288, &qword_280A11280, &qword_2759CAAC8);
    sub_27593C13C(&qword_280A0FC00, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_27593BE80();
    swift_getOpaqueTypeConformance2();
    sub_27593BFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11370);
  }

  return result;
}

uint64_t type metadata accessor for InternalSymbolView()
{
  result = qword_280A11380;
  if (!qword_280A11380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27593C5E4()
{
  sub_27586E3E8(319, &qword_280A0E888, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_27593C708();
    if (v1 <= 0x3F)
    {
      sub_27586E3E8(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_27585AF74();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27593C708()
{
  if (!qword_280A11390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11398, &unk_2759CBFB0);
    v0 = sub_2759BA448();
    if (!v1)
    {
      atomic_store(v0, &qword_280A11390);
    }
  }
}

uint64_t sub_27593C76C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for InternalSymbolView();
  sub_27593D87C(v1 + v7[5], v6);
  v8 = sub_2759B8C48();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_27585F4E0(v6);
    v18 = 0;
    v19 = 1;
LABEL_5:
    result = sub_2759B95E8();
    v13 = v21;
    *a1 = v20;
    *(a1 + 8) = v13;
    return result;
  }

  v10 = (v1 + v7[8]);
  if (*v10)
  {
    v11 = *v10;

    sub_2759B8C38();

    (*(v9 + 8))(v6, v8);
    sub_2759B9CE8();
    v14 = *(v1 + v7[6]);
    v15 = sub_2759B9CA8();

    v18 = v15;
    v19 = 0;
    goto LABEL_5;
  }

  v16 = v10[1];
  sub_2759B8C08();
  sub_27593D940(&qword_280A0E6E0, MEMORY[0x277D23330]);
  result = sub_2759B9158();
  __break(1u);
  return result;
}

uint64_t sub_27593C9E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000002759DD170;
  if (v2 == 1)
  {
    v5 = 0x80000002759DD170;
  }

  else
  {
    v3 = 0x646F4D6567616D69;
    v5 = 0xEE00737265696669;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x646F4D6567616D69;
    v4 = 0xEE00737265696669;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2759BAAC8();
  }

  return v11 & 1;
}

uint64_t sub_27593CAEC()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27593CB94()
{
  *v0;
  *v0;
  sub_2759BA328();
}

uint64_t sub_27593CC28()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27593CCCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_27593DBE4();
  *a2 = result;
  return result;
}

void sub_27593CCFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0x80000002759DD170;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x646F4D6567616D69;
    v4 = 0xEE00737265696669;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_27593CD60()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x646F4D6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_27593CDC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27593DBE4();
  *a1 = result;
  return result;
}

uint64_t sub_27593CDE8(uint64_t a1)
{
  v2 = sub_27593D8EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27593CE24(uint64_t a1)
{
  v2 = sub_27593D8EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27593CE60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = sub_2759B8C88();
  v52 = *(v56 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v56);
  v59 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = (&v50 - v7);
  v53 = sub_2759B85A8();
  v57 = *(v53 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x28223BE20](v53);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A113C0, &unk_2759CAE30);
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v15 = type metadata accessor for InternalSymbolView();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v19 + *(v17 + 28)) = MEMORY[0x277D84F90];
  v20 = v19 + *(v17 + 32);
  sub_2759B8C08();
  sub_27593D940(&qword_280A0E6E0, MEMORY[0x277D23330]);
  v60 = sub_2759B9168();
  *v20 = v60;
  *(v20 + 1) = v21;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27593D8EC();
  v23 = v61;
  sub_2759BAC18();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = v57;
    v50 = v19;
    v51 = v15;
    v61 = a1;
    LOBYTE(v62) = 0;
    v25 = sub_2759BAA58();
    if (!v26)
    {
      v28 = v10;
      sub_2759B8598();
      v29 = sub_2759B8588();
      v31 = v30;
      (*(v24 + 8))(v28, v53);
      v26 = v31;
      v25 = v29;
    }

    v32 = v54;
    v33 = v55;
    v34 = v59;
    v35 = v50;
    *v50 = v25;
    *(v35 + 8) = v26;
    sub_2759B8C48();
    LOBYTE(v62) = 1;
    sub_27593D940(&qword_280A0E8C0, MEMORY[0x277D23340]);
    sub_2759BAA68();
    sub_27586FC84(v32, v35 + *(v51 + 20));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FD28, &qword_2759C56F8);
    LOBYTE(v62) = 2;
    sub_2758CD9FC();
    sub_2759BAA68();
    v53 = v14;
    v36 = v64;
    v37 = MEMORY[0x277D84F90];
    v38 = v61;
    v39 = v58;
    if (v64)
    {
      v40 = *(v64 + 16);
      if (v40)
      {
        v63 = MEMORY[0x277D84F90];
        sub_2759509F0(0, v40, 0);
        v37 = v63;
        v41 = v52 + 16;
        v60 = *(v52 + 16);
        v42 = *(v52 + 80);
        v52 = v36;
        v43 = v36 + ((v42 + 32) & ~v42);
        v57 = *(v41 + 56);
        v54 = (v41 - 8);
        v44 = v56;
        do
        {
          v45 = v34;
          v46 = v34;
          v47 = v41;
          v60(v45, v43, v44);
          sub_2759B8C78();
          v44 = v56;
          (*v54)(v46, v56);
          v63 = v37;
          v49 = *(v37 + 16);
          v48 = *(v37 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_2759509F0((v48 > 1), v49 + 1, 1);
            v44 = v56;
            v37 = v63;
          }

          *(v37 + 16) = v49 + 1;
          sub_275827D1C(&v62, v37 + 40 * v49 + 32);
          v43 += v57;
          --v40;
          v41 = v47;
          v34 = v59;
        }

        while (v40);

        v38 = v61;
        v33 = v55;
      }

      else
      {
      }

      v39 = v58;
      v35 = v50;
    }

    (*(v39 + 8))(v53, v11);
    *(v35 + *(v51 + 24)) = v37;
    sub_27593D988(v35, v33);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return sub_27593D9EC(v35);
  }
}

uint64_t sub_27593D4FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_27593D940(&qword_280A11050, type metadata accessor for InternalSymbolView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_27593D580(uint64_t a1, uint64_t a2)
{
  v4 = sub_27593D940(&qword_280A113A0, type metadata accessor for InternalSymbolView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_27593D5FC(uint64_t a1)
{
  v2 = sub_27593D940(&qword_280A113A0, type metadata accessor for InternalSymbolView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27593D678(uint64_t a1, uint64_t a2)
{
  v4 = sub_27593D940(&qword_280A113B8, type metadata accessor for InternalSymbolView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_27593D734()
{
  sub_27593D940(&qword_280A11050, type metadata accessor for InternalSymbolView);
  sub_27593D940(&qword_280A113A0, type metadata accessor for InternalSymbolView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27593D87C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27593D8EC()
{
  result = qword_280A113C8;
  if (!qword_280A113C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A113C8);
  }

  return result;
}

uint64_t sub_27593D940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27593D988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalSymbolView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27593D9EC(uint64_t a1)
{
  v2 = type metadata accessor for InternalSymbolView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27593DA58()
{
  result = qword_280A113D0;
  if (!qword_280A113D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A113D8, &qword_2759CAE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A113D0);
  }

  return result;
}

unint64_t sub_27593DAE0()
{
  result = qword_280A113E0;
  if (!qword_280A113E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A113E0);
  }

  return result;
}

unint64_t sub_27593DB38()
{
  result = qword_280A113E8;
  if (!qword_280A113E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A113E8);
  }

  return result;
}

unint64_t sub_27593DB90()
{
  result = qword_280A113F0;
  if (!qword_280A113F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A113F0);
  }

  return result;
}

uint64_t sub_27593DBE4()
{
  v0 = sub_2759BAA48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27593DC40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v11 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_27595CE18(v12);

  v14 = sub_27592E2A4(v13, a2, a3, v11, v20);

  if (a5)
  {
    v15 = a5;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = sub_27595CE18(v15);

  v17 = sub_275964980(v16, a2, a3, v14);

  v19 = MEMORY[0x277CE11C0];
  a6[3] = MEMORY[0x277CE11C8];
  a6[4] = v19;
  *a6 = v17;
  return result;
}

uint64_t sub_27593DD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x2822009F8](sub_27593DD94, 0, 0);
}

uint64_t sub_27593DD94()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_27593DEB0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10D50, &qword_2759C8DA8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_27590F81C;
  v0[13] = &block_descriptor_10;
  v0[14] = v2;
  [v1 fetchMultiUserVoiceIdentificationSetting_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_27593DEB0()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_27593DF90, 0, 0);
}

uint64_t sub_27593DF90()
{
  if (*(v0 + 184) == 1)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v1 = sub_2759B89A8();
    __swift_project_value_buffer(v1, qword_2815ADE70);
    v2 = sub_2759B8988();
    v3 = sub_2759BA668();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_275819000, v2, v3, "IfVoiceIdentificationInHomeEnabledAction: enabled, performing then actions", v4, 2u);
      MEMORY[0x277C85860](v4, -1, -1);
    }

    v5 = (v0 + 168);
    v6 = *(v0 + 168);

    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_13:
    v12 = *v5;
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    sub_2759BA438();
    goto LABEL_14;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_2815ADE70);
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_275819000, v8, v9, "IfVoiceIdentificationInHomeEnabledAction: NOT enabled, performing else actions", v10, 2u);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  v5 = (v0 + 176);
  v11 = *(v0 + 176);

  if (v11)
  {
    goto LABEL_13;
  }

LABEL_14:
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_27593E188(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1702063205;
  }

  else
  {
    v2 = 1852139636;
  }

  if (*a2)
  {
    v3 = 1702063205;
  }

  else
  {
    v3 = 1852139636;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2759BAAC8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_27593E200()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27593E268()
{
  *v0;
  sub_2759BA328();
}

uint64_t sub_27593E2B4()
{
  v1 = *v0;
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27593E318@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_27593E378(uint64_t *a1@<X8>)
{
  v2 = 1852139636;
  if (*v1)
  {
    v2 = 1702063205;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_27593E3A0()
{
  if (*v0)
  {
    return 1702063205;
  }

  else
  {
    return 1852139636;
  }
}

uint64_t sub_27593E3C4@<X0>(char *a1@<X8>)
{
  v2 = sub_2759BAA48();

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

uint64_t sub_27593E428(uint64_t a1)
{
  v2 = sub_27593EC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27593E464(uint64_t a1)
{
  v2 = sub_27593EC94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27593E4A0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_27585A7E4;

  return sub_27593DD6C(a1, a2, v6, v7, v8);
}

void *sub_27593E5DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_27593E6E8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_27593E610()
{
  result = qword_280A113F8;
  if (!qword_280A113F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A113F8);
  }

  return result;
}

unint64_t sub_27593E668()
{
  result = qword_280A11400;
  if (!qword_280A11400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11400);
  }

  return result;
}

void *sub_27593E6E8(uint64_t *a1)
{
  v3 = sub_2759B8BD8();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11408, &unk_2759CB0F0);
  v50 = *(v7 - 1);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  v12 = a1[3];
  v13 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_27593EC94();
  sub_2759BAC18();
  v14 = v1;
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v53);
    return v7;
  }

  v54 = v3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FB10, &qword_2759C79D0);
  LOBYTE(v55[0]) = 0;
  v16 = sub_2758C7304();
  v17 = v10;
  sub_2759BAA68();
  v19 = v7;
  v7 = v11;
  if (v57)
  {
    v48 = v19;
    v20 = *(v57 + 16);
    if (v20)
    {
      v43[2] = v16;
      v44 = v15;
      v45 = v10;
      v46 = 0;
      v47 = v7;
      v56 = MEMORY[0x277D84F90];
      v21 = v57;
      sub_2759509B0(0, v20, 0);
      v22 = v56;
      v23 = *(v49 + 16);
      v24 = *(v49 + 80);
      v43[1] = v21;
      v25 = v21 + ((v24 + 32) & ~v24);
      v51 = *(v49 + 72);
      v52 = v23;
      v26 = (v49 + 8);
      v27 = v54;
      do
      {
        v52(v6, v25, v27);
        sub_2759B8BC8();
        v27 = v54;
        (*v26)(v6, v54);
        v56 = v22;
        v29 = *(v22 + 16);
        v28 = *(v22 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2759509B0((v28 > 1), v29 + 1, 1);
          v27 = v54;
          v22 = v56;
        }

        *(v22 + 16) = v29 + 1;
        sub_275827D1C(v55, v22 + 40 * v29 + 32);
        v25 += v51;
        --v20;
      }

      while (v20);

      v30 = v53;
      v14 = v46;
      v7 = v47;
      v31 = v48;
      v17 = v45;
      goto LABEL_15;
    }

    v31 = v48;
  }

  else
  {
    v31 = v19;
  }

  v30 = v53;
LABEL_15:
  LOBYTE(v55[0]) = 1;
  sub_2759BAA68();
  if (v14)
  {
    (*(v50 + 8))(v17, v31);

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v32 = v57;
    if (v57)
    {
      v48 = v31;
      v33 = *(v57 + 16);
      if (v33)
      {
        v45 = v17;
        v46 = 0;
        v47 = v7;
        v56 = MEMORY[0x277D84F90];
        sub_2759509B0(0, v33, 0);
        v34 = v56;
        v35 = v49 + 16;
        v36 = *(v49 + 16);
        v37 = *(v49 + 80);
        v44 = v32;
        v38 = v32 + ((v37 + 32) & ~v37);
        v51 = *(v49 + 72);
        v52 = v36;
        v49 += 8;
        v39 = v54;
        do
        {
          v40 = v35;
          v52(v6, v38, v39);
          sub_2759B8BC8();
          v39 = v54;
          (*v49)(v6, v54);
          v56 = v34;
          v42 = *(v34 + 16);
          v41 = *(v34 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_2759509B0((v41 > 1), v42 + 1, 1);
            v39 = v54;
            v34 = v56;
          }

          *(v34 + 16) = v42 + 1;
          sub_275827D1C(v55, v34 + 40 * v42 + 32);
          v38 += v51;
          --v33;
          v35 = v40;
        }

        while (v33);
        (*(v50 + 8))(v45, v48);

        v30 = v53;
        v7 = v47;
      }

      else
      {

        (*(v50 + 8))(v17, v48);
      }
    }

    else
    {
      (*(v50 + 8))(v17, v31);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return v7;
}

unint64_t sub_27593EC94()
{
  result = qword_280A11410;
  if (!qword_280A11410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11410);
  }

  return result;
}

unint64_t sub_27593ECE8()
{
  result = qword_280A0FB20;
  if (!qword_280A0FB20)
  {
    sub_2759B8BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0FB20);
  }

  return result;
}

unint64_t sub_27593ED54()
{
  result = qword_280A11418;
  if (!qword_280A11418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11418);
  }

  return result;
}

unint64_t sub_27593EDAC()
{
  result = qword_280A11420;
  if (!qword_280A11420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11420);
  }

  return result;
}

unint64_t sub_27593EE04()
{
  result = qword_280A11428;
  if (!qword_280A11428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11428);
  }

  return result;
}

void sub_27593EEB0()
{
  sub_27593EFC4();
  if (v0 <= 0x3F)
  {
    sub_27594812C(319, &qword_280A11440, &type metadata for ManageStorageThermometerState, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_27594812C(319, &qword_280A11448, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2758BEB54();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27593EFC4()
{
  if (!qword_280A0F8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
    v0 = sub_2759B9D98();
    if (!v1)
    {
      atomic_store(v0, &qword_280A0F8E8);
    }
  }
}

uint64_t sub_27593F044@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ComplexThermometer(0);
  sub_27586FBC8(v1 + *(v12 + 44), v11, &qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B8DA8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_27593F24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_2759BA038();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11590, &qword_2759CB6F8);
  return sub_27593F2AC(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_27593F2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v82 = sub_2759B8F58();
  v5 = *(v82 - 8);
  v79 = *(v5 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComplexThermometer(0);
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11598, &qword_2759CB700);
  v10 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v12 = (&v66 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115A0, &qword_2759CB708);
  v76 = *(v13 - 8);
  v77 = v13;
  v14 = *(v76 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v75 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11128, &qword_2759CA080);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v72 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v66 - v23;
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_2759B94B8();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
  sub_2759B8F48();
  sub_2759BA028();
  sub_2759B8F18();
  v27 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11120, &qword_2759CA078) + 36)];
  v28 = v86;
  *v27 = v85;
  *(v27 + 1) = v28;
  *(v27 + 2) = v87;
  v29 = *(a2 + 24);
  v30 = *(v19 + 44);
  v69 = v24;
  *&v24[v30] = v29;

  *v12 = sub_2759BA038();
  v12[1] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115A8, &qword_2759CB710);
  sub_27593FAA8(a2, a1, v12 + *(v32 + 44));
  v33 = sub_2759BA038();
  v35 = v34;
  v36 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115B0, &qword_2759CB718) + 36));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115B8, &qword_2759CB720);
  sub_2759404B0(a2, v36 + *(v37 + 36));
  *v36 = v33;
  v36[1] = v35;
  sub_275948380(a2, v9, type metadata accessor for ComplexThermometer);
  v38 = *(v5 + 16);
  v39 = v81;
  v71 = a1;
  v40 = v82;
  v67 = v38;
  v38(v81, a1, v82);
  v41 = *(v73 + 80);
  v42 = (v41 + 16) & ~v41;
  v43 = *(v5 + 80);
  v44 = (v8 + v43 + v42) & ~v43;
  v66 = v41 | v43;
  v45 = swift_allocObject();
  v68 = v9;
  sub_275947D80(v9, v45 + v42, type metadata accessor for ComplexThermometer);
  v46 = *(v5 + 32);
  v73 = v5 + 32;
  v46(v45 + v44, v39, v40);
  v47 = (v12 + *(v80 + 36));
  *v47 = sub_275948468;
  v47[1] = v45;
  v47[2] = 0;
  v47[3] = 0;
  v70 = a2;
  v84 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  v48 = v83;
  if (v83)
  {
    swift_getKeyPath();
    *&v84 = v48;
    sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v49 = *&v48[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
    v50 = v49;
  }

  else
  {
    v49 = 0;
  }

  *&v84 = v49;
  v51 = v68;
  sub_275948380(v70, v68, type metadata accessor for ComplexThermometer);
  v53 = v81;
  v52 = v82;
  v67(v81, v71, v82);
  v54 = swift_allocObject();
  sub_275947D80(v51, v54 + v42, type metadata accessor for ComplexThermometer);
  v46(v54 + v44, v53, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11188, &unk_2759CA220);
  sub_2759486FC();
  sub_275931330();
  v55 = v74;
  sub_2759B9B88();

  sub_27586BF04(v12, &qword_280A11598, &qword_2759CB700);
  v56 = v69;
  v57 = v72;
  sub_27586FBC8(v69, v72, &qword_280A11128, &qword_2759CA080);
  v59 = v75;
  v58 = v76;
  v60 = *(v76 + 16);
  v61 = v77;
  v60(v75, v55, v77);
  v62 = v78;
  sub_27586FBC8(v57, v78, &qword_280A11128, &qword_2759CA080);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115E8, &qword_2759CB730);
  v60((v62 + *(v63 + 48)), v59, v61);
  v64 = *(v58 + 8);
  v64(v55, v61);
  sub_27586BF04(v56, &qword_280A11128, &qword_2759CA080);
  v64(v59, v61);
  return sub_27586BF04(v57, &qword_280A11128, &qword_2759CA080);
}

uint64_t sub_27593FAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v42 = a3;
  v4 = type metadata accessor for ComplexThermometer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115F0, &qword_2759CB760);
  v8 = *(*(v39 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v39);
  v41 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  *v12 = sub_2759B9418();
  *(v12 + 1) = 0x3FF0000000000000;
  v13 = v12;
  v12[16] = 0;
  v47 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  v14 = v43;
  if (v43)
  {
    swift_getKeyPath();
    *&v47 = v14;
    sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v15 = *&v14[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A115F8, &qword_2759CB768) + 44);
  *&v47 = v15;
  KeyPath = swift_getKeyPath();
  v38 = type metadata accessor for ComplexThermometer;
  sub_275948380(a1, v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComplexThermometer);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v35 = type metadata accessor for ComplexThermometer;
  sub_275947D80(v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ComplexThermometer);
  v34[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11600, &qword_2759CB790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11608, &qword_2759CB798);
  sub_27589B02C(&qword_280A11610, &qword_280A11600, &qword_2759CB790);
  sub_275947B3C(&qword_280A11618, type metadata accessor for ManageStorageThermometerSection);
  sub_275948A30();
  sub_2759B9ED8();
  sub_275948380(a1, v7, v38);
  v18 = swift_allocObject();
  sub_275947D80(v7, v18 + v16, v35);
  v19 = (v13 + *(v39 + 36));
  v34[0] = v13;
  *v19 = sub_275948C80;
  v19[1] = v18;
  sub_2759B8F48();
  sub_2759BA028();
  sub_2759B8F18();
  v20 = v56;
  v21 = v57;
  v40 = v58;
  v22 = v59;
  v24 = v60;
  v23 = v61;
  v25 = *(a1 + 32);
  if (*(a1 + 16) >= 2u)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = 1.0;
  }

  v55 = v57;
  v54 = v59;
  v27 = v41;
  sub_27586FBC8(v13, v41, &qword_280A115F0, &qword_2759CB760);
  v28 = v42;
  sub_27586FBC8(v27, v42, &qword_280A115F0, &qword_2759CB760);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11660, &qword_2759CB7C0) + 48));
  *&v43 = v20;
  BYTE8(v43) = v21;
  v30 = v40;
  *&v44 = v40;
  BYTE8(v44) = v22;
  *&v45 = v24;
  *(&v45 + 1) = v23;
  *&v46 = v25;
  *(&v46 + 1) = v26;
  v31 = v44;
  *v29 = v43;
  v29[1] = v31;
  v32 = v46;
  v29[2] = v45;
  v29[3] = v32;

  sub_27586FBC8(&v43, &v47, &qword_280A11668, &qword_2759CB7C8);
  sub_27586BF04(v34[0], &qword_280A115F0, &qword_2759CB760);
  *&v47 = v20;
  BYTE8(v47) = v21;
  v48 = v30;
  v49 = v22;
  v50 = v24;
  v51 = v23;
  v52 = v25;
  v53 = v26;
  sub_27586BF04(&v47, &qword_280A11668, &qword_2759CB7C8);
  return sub_27586BF04(v27, &qword_280A115F0, &qword_2759CB760);
}

uint64_t sub_2759400A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  v6 = *(v5 + 40);
  sub_2759BA028();
  sub_2759B8F18();
  v7 = sub_2759401E4(v5);
  v8 = *(a2 + 24);
  v9 = sub_2759B97D8();
  *a3 = v5;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = v15;
  *(a3 + 48) = v7;
  *(a3 + 56) = v8;
  *(a3 + 64) = v9;
}

uint64_t sub_2759401E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2759B8DA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_27593F044(&v17 - v10);
  (*(v5 + 104))(v9, *MEMORY[0x277CDF3D0], v4);
  v12 = sub_2759B8D98();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v13(v11, v4);
  swift_getKeyPath();
  v18 = a1;
  sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  if (v12)
  {
    v14 = 24;
  }

  else
  {
    v14 = 32;
  }

  v15 = *(a1 + v14);

  if (*(v2 + 16) >= 4u)
  {
    swift_getKeyPath();
    v18 = a1;
    sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
    sub_2759B8638();

    if ((*(a1 + 64) & 1) == 0)
    {

      v15 = *(v2 + 48);
    }
  }

  return v15;
}

uint64_t sub_2759404B0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2759B9EC8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_2759B94B8();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_2759B8F48();
  if (*(a1 + 16) - 2 >= 3)
  {
    if (!*(a1 + 16))
    {
LABEL_26:
      sub_2759BA028();
      sub_2759B8F18();
      sub_275947D80(v7, a2, MEMORY[0x277CE1260]);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11120, &qword_2759CA078);
      v25 = (a2 + *(result + 36));
      v26 = v32;
      *v25 = v31;
      v25[1] = v26;
      v25[2] = v33;
      return result;
    }

    v31 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
    sub_2759B9D68();
    v14 = v30;
    if (v30)
    {
      swift_getKeyPath();
      *&v31 = v14;
      sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
      sub_2759B8638();

      v15 = *&v14[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];

      if (!(v15 >> 62))
      {
LABEL_7:

        *(a1 + 5);
        goto LABEL_26;
      }
    }

    else if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_7;
    }

    sub_2759BA9E8();
    goto LABEL_7;
  }

  v10 = *a1;
  v11 = *(a1 + 1);
  *&v31 = *a1;
  *(&v31 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  v12 = v30;
  if (v30)
  {
    swift_getKeyPath();
    *&v31 = v12;
    sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v13 = *&v12[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v29 = v7;
  if (v13 >> 62)
  {
LABEL_32:
    v16 = sub_2759BA9E8();
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v16 - 1;
  if (!__OFSUB__(v16, 1))
  {
    *&v31 = v10;
    *(&v31 + 1) = v11;
    sub_2759B9D68();
    v19 = v30;
    if (v30)
    {
      swift_getKeyPath();
      *&v31 = v19;
      sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
      sub_2759B8638();

      v20 = *&v19[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];

      if (!(v20 >> 62))
      {
LABEL_14:
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
        v28 = a2;
        v22 = v18;
        if (v21)
        {
          v10 = 0;
          a2 = v20 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x277C846A0](v10, v20);
              v11 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
LABEL_24:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v10 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_32;
              }

              v23 = *(v20 + 8 * v10 + 32);

              v11 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                goto LABEL_24;
              }
            }

            swift_getKeyPath();
            *&v31 = v23;
            sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
            sub_2759B8638();

            v24 = *(v23 + 40);

            v22 = v22 + v24;
            ++v10;
          }

          while (v11 != v21);
        }

        a2 = v28;
        v7 = v29;
        goto LABEL_26;
      }
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_14;
      }
    }

    v21 = sub_2759BA9E8();
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_275940A28(__int128 *a1)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (v2)
  {
    sub_2759B8F48();
    sub_2758AB5E4(v1);
  }
}

uint64_t sub_275940A9C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_275948380(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComplexThermometer);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_275947D80(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ComplexThermometer);
  *a2 = sub_2759483E8;
  a2[1] = v7;
  return result;
}

uint64_t sub_275940BB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for StorageThermometerCategoriesView(0);
  sub_27586FBC8(v1 + *(v12 + 24), v11, &qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B8DA8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_275940DB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11670, &qword_2759CB820);
  v3 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v85 = (&v81 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11678, &qword_2759CB828);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v81 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11680, &qword_2759CB830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v81 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11688, &qword_2759CB838);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v81 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11690, &qword_2759CB840);
  v17 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v92 = &v81 - v18;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11698, &qword_2759CB848);
  v19 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v81 - v20;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116A0, &qword_2759CB850);
  v21 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v23 = (&v81 - v22);
  v24 = type metadata accessor for StorageThermometerCategoriesView(0);
  v86 = *(v24 - 8);
  v25 = *(v86 + 64);
  MEMORY[0x28223BE20](v24);
  v87 = v26;
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116A8, &qword_2759CB858);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v82 = (&v81 - v31);
  v32 = *(v2 + 16);
  v93 = v5;
  if (v32 >= 3)
  {
    v82 = v12;
    v83 = v8;
    v44 = v84;
    if (v32 == 3)
    {
      v83 = v30;
      v84 = v13;
      v85 = v23;
      v45 = sub_2759BA038();
      v46 = v82;
      *v82 = v45;
      v46[1] = v47;
      *(v46 + 16) = 0;
      v46[3] = 0x4024000000000000;
      *(v46 + 32) = 0;
      v99 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
      sub_2759B9D68();
      v48 = v98;
      v49 = v27;
      if (v98)
      {
        swift_getKeyPath();
        *&v99 = v48;
        sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
        sub_2759B8638();

        v50 = *&v48[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];
      }

      else
      {
        v50 = MEMORY[0x277D84F90];
      }

      v67 = v86;
      v68 = *(v9 + 44);
      *&v99 = v50;
      swift_getKeyPath();
      sub_275948380(v2, v49, type metadata accessor for StorageThermometerCategoriesView);
      v69 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v70 = swift_allocObject();
      sub_275947D80(v49, v70 + v69, type metadata accessor for StorageThermometerCategoriesView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11600, &qword_2759CB790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116C8, &qword_2759CB868);
      sub_27589B02C(&qword_280A11610, &qword_280A11600, &qword_2759CB790);
      sub_275947B3C(&qword_280A11618, type metadata accessor for ManageStorageThermometerSection);
      sub_275948D0C();
      v71 = v82;
      sub_2759B9ED8();
      sub_2759491E4();
      sub_2759B9B38();
      sub_27586BF04(v71, &qword_280A11680, &qword_2759CB830);
      v72 = &qword_280A11688;
      v73 = &qword_2759CB838;
      sub_27586FBC8(v16, v89, &qword_280A11688, &qword_2759CB838);
      swift_storeEnumTagMultiPayload();
      sub_275949014();
      sub_2759492C8(&qword_280A11738, &qword_280A11688, &qword_2759CB838, sub_2759491E4);
      v74 = v85;
      sub_2759B95E8();
      sub_27586FBC8(v74, v92, &qword_280A116A0, &qword_2759CB850);
      swift_storeEnumTagMultiPayload();
      sub_275948F5C();
      sub_2759492C8(&qword_280A11748, &qword_280A11678, &qword_2759CB828, sub_275948DF4);
      sub_2759B95E8();
      sub_27586BF04(v74, &qword_280A116A0, &qword_2759CB850);
      v64 = v16;
    }

    else
    {
      v52 = sub_2759BA038();
      v53 = v85;
      *v85 = v52;
      v53[1] = v54;
      *(v53 + 16) = 0;
      v53[3] = 0x4024000000000000;
      *(v53 + 32) = 0;
      v99 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
      sub_2759B9D68();
      v55 = v98;
      v56 = v27;
      if (v98)
      {
        swift_getKeyPath();
        *&v99 = v55;
        sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
        sub_2759B8638();

        v57 = *&v55[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];
      }

      else
      {
        v57 = MEMORY[0x277D84F90];
      }

      v75 = *(v44 + 44);
      *&v99 = v57;
      swift_getKeyPath();
      sub_275948380(v2, v56, type metadata accessor for StorageThermometerCategoriesView);
      v76 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v77 = swift_allocObject();
      sub_275947D80(v56, v77 + v76, type metadata accessor for StorageThermometerCategoriesView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11600, &qword_2759CB790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116B0, &qword_2759CB860);
      sub_27589B02C(&qword_280A11610, &qword_280A11600, &qword_2759CB790);
      sub_275947B3C(&qword_280A11618, type metadata accessor for ManageStorageThermometerSection);
      sub_27594917C(&qword_280A116B8, &qword_280A116B0, &qword_2759CB860);
      v78 = v85;
      sub_2759B9ED8();
      sub_275948DF4();
      v79 = v83;
      sub_2759B9B38();
      sub_27586BF04(v78, &qword_280A11670, &qword_2759CB820);
      v72 = &qword_280A11678;
      v73 = &qword_2759CB828;
      sub_27586FBC8(v79, v92, &qword_280A11678, &qword_2759CB828);
      swift_storeEnumTagMultiPayload();
      sub_275948F5C();
      sub_2759492C8(&qword_280A11748, &qword_280A11678, &qword_2759CB828, sub_275948DF4);
      sub_2759B95E8();
      v64 = v79;
    }

    v65 = v72;
    v66 = v73;
  }

  else
  {
    v81 = v27;
    v83 = v30;
    v84 = v13;
    v85 = v23;
    v34 = *v2;
    v33 = *(v2 + 8);
    *&v99 = *v2;
    *(&v99 + 1) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
    sub_2759B9D68();
    v35 = v98;
    if (!v98)
    {
      goto LABEL_10;
    }

    swift_getKeyPath();
    *&v99 = v35;
    sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v36 = *&v35[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
    v37 = v36;

    if (v36)
    {

      v38 = sub_2759BA038();
      v39 = *(v2 + *(v24 + 28));
      v97 = 0;
      v96 = 0;
      v95 = 0;
      v40 = v82;
      *v82 = v38;
      *(v40 + 8) = v41;
      *(v40 + 16) = 0;
      *(v40 + 24) = 0x4024000000000000;
      *(v40 + 32) = 0;
      *(v40 + 40) = v39;
      *(v40 + 48) = 0;
      *&v99 = v34;
      *(&v99 + 1) = v33;
      sub_2759B9D68();
      v42 = v98;
      if (v98)
      {
        swift_getKeyPath();
        *&v99 = v42;
        sub_2759B8638();

        v43 = *&v42[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];
      }

      else
      {
        v43 = MEMORY[0x277D84F90];
      }

      v58 = v81;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11720, &qword_2759CB888);
      v60 = *(v59 + 44);
      *&v99 = v43;
      swift_getKeyPath();
      sub_275948380(v2, v58, type metadata accessor for StorageThermometerCategoriesView);
      v61 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v62 = swift_allocObject();
      sub_275947D80(v58, v62 + v61, type metadata accessor for StorageThermometerCategoriesView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11600, &qword_2759CB790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116C8, &qword_2759CB868);
      sub_27589B02C(&qword_280A11610, &qword_280A11600, &qword_2759CB790);
      sub_275947B3C(&qword_280A11618, type metadata accessor for ManageStorageThermometerSection);
      sub_275948D0C();
      sub_2759B9ED8();
      (*(*(v59 - 8) + 56))(v40, 0, 1, v59);
    }

    else
    {
LABEL_10:
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11720, &qword_2759CB888);
      v40 = v82;
      (*(*(v51 - 8) + 56))(v82, 1, 1, v51);
    }

    sub_27586FBC8(v40, v89, &qword_280A116A8, &qword_2759CB858);
    swift_storeEnumTagMultiPayload();
    sub_275949014();
    sub_2759492C8(&qword_280A11738, &qword_280A11688, &qword_2759CB838, sub_2759491E4);
    v63 = v85;
    sub_2759B95E8();
    sub_27586FBC8(v63, v92, &qword_280A116A0, &qword_2759CB850);
    swift_storeEnumTagMultiPayload();
    sub_275948F5C();
    sub_2759492C8(&qword_280A11748, &qword_280A11678, &qword_2759CB828, sub_275948DF4);
    sub_2759B95E8();
    sub_27586BF04(v63, &qword_280A116A0, &qword_2759CB850);
    v64 = v40;
    v65 = &qword_280A116A8;
    v66 = &qword_2759CB858;
  }

  return sub_27586BF04(v64, v65, v66);
}

uint64_t sub_275941D10(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_2759B9418();
  v12 = 0;
  sub_2759420B8(a2, v3, &v30);
  v25 = v42;
  v26 = v43;
  v21 = v38;
  v22 = v39;
  v23 = v40;
  v24 = v41;
  v17 = v34;
  v18 = v35;
  v19 = v36;
  v20 = v37;
  v13 = v30;
  v14 = v31;
  v15 = v32;
  v16 = v33;
  v28[12] = v42;
  v28[13] = v43;
  v28[8] = v38;
  v28[9] = v39;
  v28[10] = v40;
  v28[11] = v41;
  v28[4] = v34;
  v28[5] = v35;
  v28[6] = v36;
  v28[7] = v37;
  v28[0] = v30;
  v28[1] = v31;
  v27 = v44;
  v29 = v44;
  v28[2] = v32;
  v28[3] = v33;
  sub_27586FBC8(&v13, &v9, &qword_280A11750, &qword_2759CB898);
  sub_27586BF04(v28, &qword_280A11750, &qword_2759CB898);
  *(&v11[11] + 7) = v24;
  *(&v11[12] + 7) = v25;
  *(&v11[13] + 7) = v26;
  *(&v11[14] + 7) = v27;
  *(&v11[7] + 7) = v20;
  *(&v11[8] + 7) = v21;
  *(&v11[9] + 7) = v22;
  *(&v11[10] + 7) = v23;
  *(&v11[3] + 7) = v16;
  *(&v11[4] + 7) = v17;
  *(&v11[5] + 7) = v18;
  *(&v11[6] + 7) = v19;
  *(v11 + 7) = v13;
  *(&v11[1] + 7) = v14;
  *(&v11[2] + 7) = v15;
  *&v10[177] = v11[11];
  *&v10[193] = v11[12];
  *&v10[209] = v11[13];
  *&v10[224] = *(&v11[13] + 15);
  *&v10[113] = v11[7];
  *&v10[129] = v11[8];
  *&v10[145] = v11[9];
  *&v10[161] = v11[10];
  *&v10[49] = v11[3];
  *&v10[65] = v11[4];
  *&v10[81] = v11[5];
  *&v10[97] = v11[6];
  *&v10[1] = v11[0];
  *&v10[17] = v11[1];
  *&v9 = v4;
  *(&v9 + 1) = 0x4008000000000000;
  v10[0] = v12;
  *&v10[33] = v11[2];
  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  sub_2759BA8C8();

  *&v30 = 0xD000000000000011;
  *(&v30 + 1) = 0x80000002759E2350;
  v5 = (*(v3 + 16) + OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_displayLabel);
  v6 = *v5;
  v7 = v5[1];

  MEMORY[0x277C840E0](v6, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116D8, &qword_2759CB870);
  sub_27589B02C(&qword_280A116D0, &qword_280A116D8, &qword_2759CB870);
  sub_2759B9B38();

  v42 = *&v10[176];
  v43 = *&v10[192];
  v44 = *&v10[208];
  v45 = *&v10[224];
  v38 = *&v10[112];
  v39 = *&v10[128];
  v40 = *&v10[144];
  v41 = *&v10[160];
  v34 = *&v10[48];
  v35 = *&v10[64];
  v36 = *&v10[80];
  v37 = *&v10[96];
  v30 = v9;
  v31 = *v10;
  v32 = *&v10[16];
  v33 = *&v10[32];
  return sub_27586BF04(&v30, &qword_280A116D8, &qword_2759CB870);
}

uint64_t sub_2759420B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v5 = sub_2759B8DA8();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v66 = a1;
  sub_275940BB0(&v55 - v11);
  v13 = v6[13];
  LODWORD(v65) = *MEMORY[0x277CDF3D0];
  v64 = v13;
  v13(v10);
  LOBYTE(a1) = sub_2759B8D98();
  v14 = v6[1];
  v14(v10, v5);
  v14(v12, v5);
  swift_getKeyPath();
  v67 = OBJC_IVAR____TtC14iCloudSettings27ThermometerSectionViewModel___observationRegistrar;
  v112 = *&v68;
  sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  if (a1)
  {
    v15 = 24;
  }

  else
  {
    v15 = 32;
  }

  v67 = *(v68 + v15);

  sub_275940BB0(v12);
  v64(v10, v65, v5);
  v16 = sub_2759B8D98();
  v14(v10, v5);
  v14(v12, v5);
  if (v16)
  {
    sub_2759B9C28();
  }

  else
  {
    sub_2759B9C48();
  }

  v65 = sub_2759B9C58();

  sub_2759B8DD8();
  v17 = v136;
  v18 = v136 * 0.5;
  v19 = v137;
  v63 = v137;
  v60 = v138;
  v20 = v139;
  v21 = v140;
  v62 = v140;
  v22 = v141;
  v64 = sub_2759BA028();
  v61 = v23;
  v24 = type metadata accessor for StorageThermometerCategoriesView(0);
  v25 = v66;
  v26 = *(v66 + v24[8]);
  sub_2759BA028();
  sub_2759B8F18();
  v27 = (*(v68 + 16) + OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_displayLabel);
  v28 = v27[1];
  v112 = *v27;
  v113 = v28;
  sub_27589F2D4();

  *&v68 = COERCE_DOUBLE(sub_2759B99C8());
  v58 = v30;
  v59 = v29;
  v32 = v31;
  KeyPath = swift_getKeyPath();
  v33 = *(v25 + v24[9]);
  v56 = swift_getKeyPath();
  LOBYTE(v28) = v32 & 1;
  LOBYTE(v112) = v32 & 1;
  LOBYTE(v87) = 0;
  v34 = *(v25 + v24[10]);
  v35 = swift_getKeyPath();
  *&v87 = v18;
  *(&v87 + 1) = v17;
  *&v88 = __PAIR64__(v60, v19);
  v36 = v60;
  *(&v88 + 1) = v20;
  *&v89 = v21;
  *(&v89 + 1) = v22;
  *&v90 = v65;
  WORD4(v90) = 256;
  *(&v90 + 10) = v134;
  HIWORD(v90) = v135;
  *&v91 = v67;
  WORD4(v91) = 256;
  HIWORD(v91) = v133;
  *(&v91 + 10) = v132;
  v37 = v61;
  *&v92 = v64;
  *(&v92 + 1) = v61;
  v93 = v84;
  v94 = v85;
  v71 = v89;
  v72 = v90;
  v95 = v86;
  v75 = v84;
  v76 = v85;
  v69 = v87;
  v70 = v88;
  v73 = v91;
  v74 = v92;
  v38 = v68;
  *&v96 = v68;
  v40 = v58;
  v39 = v59;
  *(&v96 + 1) = v59;
  LOBYTE(v97) = LOBYTE(v28);
  *(&v97 + 1) = v58;
  v42 = v56;
  v41 = KeyPath;
  *&v98 = KeyPath;
  *(&v98 + 1) = 1;
  LOBYTE(v99) = 0;
  *(&v99 + 1) = v56;
  *&v100 = v33;
  *(&v100 + 1) = v35;
  v101 = v34;
  v83 = v34;
  v43 = v98;
  v81 = v99;
  v82 = v100;
  v77 = v86;
  v78 = v96;
  v79 = v97;
  v80 = v98;
  v44 = v88;
  *a3 = v87;
  *(a3 + 16) = v44;
  v45 = v71;
  v46 = v72;
  v47 = v74;
  *(a3 + 64) = v73;
  *(a3 + 80) = v47;
  *(a3 + 32) = v45;
  *(a3 + 48) = v46;
  v48 = v75;
  v49 = v76;
  v50 = v78;
  *(a3 + 128) = v77;
  *(a3 + 144) = v50;
  *(a3 + 96) = v48;
  *(a3 + 112) = v49;
  v51 = v79;
  v52 = v81;
  v53 = v82;
  *(a3 + 224) = v83;
  *(a3 + 192) = v52;
  *(a3 + 208) = v53;
  *(a3 + 160) = v51;
  *(a3 + 176) = v43;
  v102[0] = v38;
  v102[1] = v39;
  v103 = LOBYTE(v28);
  v104 = v40;
  v105 = v41;
  v106 = 1;
  v107 = 0;
  v108 = v42;
  v109 = v33;
  v110 = v35;
  v111 = v34;

  sub_27586FBC8(&v87, &v112, &qword_280A11758, &qword_2759CB930);
  sub_27586FBC8(&v96, &v112, &qword_280A11760, &qword_2759CB938);
  sub_27586BF04(v102, &qword_280A11760, &qword_2759CB938);
  v112 = v18;
  v113 = v17;
  v114 = v63;
  v115 = v36;
  v116 = v20;
  v117 = v62;
  v118 = v22;
  v119 = v65;
  v120 = 256;
  v121 = v134;
  v122 = v135;
  v123 = v67;
  v124 = 256;
  v126 = v133;
  v125 = v132;
  v127 = v64;
  v128 = v37;
  v129 = v84;
  v130 = v85;
  v131 = v86;
  return sub_27586BF04(&v112, &qword_280A11758, &qword_2759CB930);
}

uint64_t sub_275942754@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116C8, &qword_2759CB868);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *a1;
  swift_getKeyPath();
  *&v35 = v11;
  sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  if (*(*&v11 + 64) != 1)
  {
    return (*(v7 + 56))(a3, 1, 1, v6);
  }

  v13 = sub_2759B9418();
  v17 = 0;
  sub_275942BC4(a2, v11, &v35);
  v30 = v47;
  v31 = v48;
  v26 = v43;
  v27 = v44;
  v28 = v45;
  v29 = v46;
  v22 = v39;
  v23 = v40;
  v24 = v41;
  v25 = v42;
  v18 = v35;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v33[12] = v47;
  v33[13] = v48;
  v33[8] = v43;
  v33[9] = v44;
  v33[10] = v45;
  v33[11] = v46;
  v33[4] = v39;
  v33[5] = v40;
  v33[6] = v41;
  v33[7] = v42;
  v33[0] = v35;
  v33[1] = v36;
  v32 = v49;
  v34 = v49;
  v33[2] = v37;
  v33[3] = v38;
  sub_27586FBC8(&v18, &v14, &qword_280A11750, &qword_2759CB898);
  sub_27586BF04(v33, &qword_280A11750, &qword_2759CB898);
  *(&v16[11] + 7) = v29;
  *(&v16[12] + 7) = v30;
  *(&v16[13] + 7) = v31;
  *(&v16[14] + 7) = v32;
  *(&v16[7] + 7) = v25;
  *(&v16[8] + 7) = v26;
  *(&v16[9] + 7) = v27;
  *(&v16[10] + 7) = v28;
  *(&v16[3] + 7) = v21;
  *(&v16[4] + 7) = v22;
  *(&v16[5] + 7) = v23;
  *(&v16[6] + 7) = v24;
  *(v16 + 7) = v18;
  *(&v16[1] + 7) = v19;
  *(&v16[2] + 7) = v20;
  *(&v15[11] + 1) = v16[11];
  *(&v15[12] + 1) = v16[12];
  *(&v15[13] + 1) = v16[13];
  v15[14] = *(&v16[13] + 15);
  *(&v15[7] + 1) = v16[7];
  *(&v15[8] + 1) = v16[8];
  *(&v15[9] + 1) = v16[9];
  *(&v15[10] + 1) = v16[10];
  *(&v15[3] + 1) = v16[3];
  *(&v15[4] + 1) = v16[4];
  *(&v15[5] + 1) = v16[5];
  *(&v15[6] + 1) = v16[6];
  *(v15 + 1) = v16[0];
  *(&v15[1] + 1) = v16[1];
  *&v14 = v13;
  *(&v14 + 1) = 0x4008000000000000;
  LOBYTE(v15[0]) = v17;
  *(&v15[2] + 1) = v16[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116D8, &qword_2759CB870);
  sub_27589B02C(&qword_280A116D0, &qword_280A116D8, &qword_2759CB870);
  sub_2759B9B38();
  v47 = v15[11];
  v48 = v15[12];
  v49 = v15[13];
  v50 = v15[14];
  v43 = v15[7];
  v44 = v15[8];
  v45 = v15[9];
  v46 = v15[10];
  v39 = v15[3];
  v40 = v15[4];
  v41 = v15[5];
  v42 = v15[6];
  v35 = v14;
  v36 = v15[0];
  v37 = v15[1];
  v38 = v15[2];
  sub_27586BF04(&v35, &qword_280A116D8, &qword_2759CB870);
  sub_275823B8C(v10, a3);
  return (*(v7 + 56))(a3, 0, 1, v6);
}

uint64_t sub_275942BC4@<X0>(uint64_t a1@<X0>, double a2@<X1>, void (*a3)(char *, uint64_t)@<X8>)
{
  v66 = a2;
  v5 = sub_2759B8DA8();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v67 = a1;
  sub_275940BB0(&v56 - v11);
  v13 = v6[13];
  LODWORD(v65) = *MEMORY[0x277CDF3D0];
  v64 = v13;
  v13(v10);
  LOBYTE(a1) = sub_2759B8D98();
  v14 = v6[1];
  v14(v10, v5);
  v14(v12, v5);
  swift_getKeyPath();
  if (a1)
  {
    v63 = v14;
    v15 = v66;
    v108 = v66;
    sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
    sub_2759B8638();
    v14 = v63;

    v16 = 24;
  }

  else
  {
    v63 = a3;
    v15 = v66;
    v108 = v66;
    sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
    sub_2759B8638();
    a3 = v63;

    v16 = 32;
  }

  v60 = *(*&v15 + v16);

  sub_275940BB0(v12);
  v64(v10, v65, v5);
  v17 = sub_2759B8D98();
  v14(v10, v5);
  v14(v12, v5);
  if (v17)
  {
    sub_2759B9C28();
  }

  else
  {
    sub_2759B9C48();
  }

  v66 = COERCE_DOUBLE(sub_2759B9C58());

  sub_2759B8DD8();
  v18 = v137;
  v62 = v139;
  LODWORD(v63) = v138;
  v19 = v140;
  v61 = v141;
  v20 = v142;
  v21 = sub_2759BA028();
  v64 = v22;
  v65 = v21;
  v23 = type metadata accessor for StorageThermometerCategoriesView(0);
  v24 = *(v67 + v23[8]);
  sub_2759BA028();
  sub_2759B8F18();
  swift_getKeyPath();
  v108 = v15;
  sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  if (*(*&v15 + 56))
  {
    v25 = *(*&v15 + 48);
    v26 = *(*&v15 + 56);
  }

  else
  {
    v27 = (*(*&v15 + 16) + OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_displayLabel);
    v25 = *v27;
    v28 = *(v27 + 1);
  }

  v108 = v25;
  v109 = *&v26;
  sub_27589F2D4();

  v29 = sub_2759B99C8();
  v31 = v30;
  v33 = v32;
  v59 = v34;
  KeyPath = swift_getKeyPath();
  v35 = v67;
  v36 = *(v67 + v23[9]);
  v57 = swift_getKeyPath();
  v37 = v33 & 1;
  v129 = v33 & 1;
  v128 = 0;
  v38 = *(v35 + v23[10]);
  v39 = swift_getKeyPath();
  *&v83 = v18 * 0.5;
  *(&v83 + 1) = v18;
  *&v84 = __PAIR64__(v62, v63);
  *(&v84 + 1) = v19;
  v40 = v60;
  *&v85 = v61;
  *(&v85 + 1) = v20;
  *&v86 = v66;
  WORD4(v86) = 256;
  *(&v86 + 10) = v135;
  HIWORD(v86) = v136;
  *&v87 = v60;
  WORD4(v87) = 256;
  HIWORD(v87) = v134;
  *(&v87 + 10) = v133;
  *&v88 = v65;
  *(&v88 + 1) = v64;
  v89 = v130;
  v90 = v131;
  v91 = v132;
  v70 = v85;
  v71 = v86;
  v74 = v130;
  v75 = v131;
  v68 = v83;
  v69 = v84;
  v72 = v87;
  v73 = v88;
  *&v92 = v29;
  *(&v92 + 1) = v31;
  LOBYTE(v93) = v37;
  v42 = KeyPath;
  v41 = v59;
  *(&v93 + 1) = v59;
  *&v94 = KeyPath;
  *(&v94 + 1) = 1;
  LOBYTE(v95) = 0;
  v43 = v57;
  *(&v95 + 1) = v57;
  *&v96 = v36;
  *(&v96 + 1) = v39;
  v97 = v38;
  v82 = v38;
  v44 = v94;
  v80 = v95;
  v81 = v96;
  v76 = v132;
  v77 = v92;
  v78 = v93;
  v79 = v94;
  v45 = v84;
  *a3 = v83;
  *(a3 + 1) = v45;
  v46 = v70;
  v47 = v71;
  v48 = v73;
  *(a3 + 4) = v72;
  *(a3 + 5) = v48;
  *(a3 + 2) = v46;
  *(a3 + 3) = v47;
  v49 = v74;
  v50 = v75;
  v51 = v77;
  *(a3 + 8) = v76;
  *(a3 + 9) = v51;
  *(a3 + 6) = v49;
  *(a3 + 7) = v50;
  v52 = v78;
  v53 = v80;
  v54 = v81;
  *(a3 + 28) = v82;
  *(a3 + 12) = v53;
  *(a3 + 13) = v54;
  *(a3 + 10) = v52;
  *(a3 + 11) = v44;
  v98[0] = v29;
  v98[1] = v31;
  v99 = v37;
  v100 = v41;
  v101 = v42;
  v102 = 1;
  v103 = 0;
  v104 = v43;
  v105 = v36;
  v106 = v39;
  v107 = v38;

  sub_27586FBC8(&v83, &v108, &qword_280A11758, &qword_2759CB930);
  sub_27586FBC8(&v92, &v108, &qword_280A11760, &qword_2759CB938);
  sub_27586BF04(v98, &qword_280A11760, &qword_2759CB938);
  v108 = v18 * 0.5;
  v109 = v18;
  v110 = v63;
  v111 = v62;
  v112 = v19;
  v113 = v61;
  v114 = v20;
  v115 = v66;
  v116 = 256;
  v117 = v135;
  v118 = v136;
  v119 = v40;
  v120 = 256;
  v122 = v134;
  v121 = v133;
  v123 = v65;
  v124 = v64;
  v125 = v130;
  v126 = v131;
  v127 = v132;
  return sub_27586BF04(&v108, &qword_280A11758, &qword_2759CB930);
}

uint64_t sub_2759432CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = sub_2759B8DA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = *a1;
  v21 = a2;
  sub_275940BB0(&v20 - v11);
  (*(v6 + 104))(v10, *MEMORY[0x277CDF3D0], v5);
  LOBYTE(a1) = sub_2759B8D98();
  v14 = *(v6 + 8);
  v14(v10, v5);
  v14(v12, v5);
  swift_getKeyPath();
  *&v44 = v13;
  sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
  sub_2759B8638();

  if (a1)
  {
    v15 = 24;
  }

  else
  {
    v15 = 32;
  }

  v16 = *(v13 + v15);

  v17 = sub_2759B9418();
  v26 = 0;
  sub_275943874(v16, v21, v13, &v44);
  v39 = v56;
  v40 = v57;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v38 = v55;
  v31 = v48;
  v32 = v49;
  v33 = v50;
  v34 = v51;
  v27 = v44;
  v28 = v45;
  v29 = v46;
  v30 = v47;
  v42[12] = v56;
  v42[13] = v57;
  v42[8] = v52;
  v42[9] = v53;
  v42[10] = v54;
  v42[11] = v55;
  v42[4] = v48;
  v42[5] = v49;
  v42[6] = v50;
  v42[7] = v51;
  v42[0] = v44;
  v42[1] = v45;
  v41 = v58;
  v43 = v58;
  v42[2] = v46;
  v42[3] = v47;
  sub_27586FBC8(&v27, &v23, &qword_280A11750, &qword_2759CB898);
  sub_27586BF04(v42, &qword_280A11750, &qword_2759CB898);
  *(&v25[11] + 7) = v38;
  *(&v25[12] + 7) = v39;
  *(&v25[13] + 7) = v40;
  *(&v25[14] + 7) = v41;
  *(&v25[7] + 7) = v34;
  *(&v25[8] + 7) = v35;
  *(&v25[9] + 7) = v36;
  *(&v25[10] + 7) = v37;
  *(&v25[3] + 7) = v30;
  *(&v25[4] + 7) = v31;
  *(&v25[5] + 7) = v32;
  *(&v25[6] + 7) = v33;
  *(v25 + 7) = v27;
  *(&v25[1] + 7) = v28;
  *(&v25[2] + 7) = v29;
  *(&v24[11] + 1) = v25[11];
  *(&v24[12] + 1) = v25[12];
  *(&v24[13] + 1) = v25[13];
  v24[14] = *(&v25[13] + 15);
  *(&v24[7] + 1) = v25[7];
  *(&v24[8] + 1) = v25[8];
  *(&v24[9] + 1) = v25[9];
  *(&v24[10] + 1) = v25[10];
  *(&v24[3] + 1) = v25[3];
  *(&v24[4] + 1) = v25[4];
  *(&v24[5] + 1) = v25[5];
  *(&v24[6] + 1) = v25[6];
  *(v24 + 1) = v25[0];
  *(&v24[1] + 1) = v25[1];
  *&v23 = v17;
  *(&v23 + 1) = 0x4008000000000000;
  LOBYTE(v24[0]) = v26;
  *(&v24[2] + 1) = v25[2];
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  sub_2759BA8C8();

  *&v44 = 0xD000000000000011;
  *(&v44 + 1) = 0x80000002759E2350;
  v18 = sub_2759B9BE8();
  MEMORY[0x277C840E0](v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116D8, &qword_2759CB870);
  sub_27589B02C(&qword_280A116D0, &qword_280A116D8, &qword_2759CB870);
  sub_2759B9B38();

  v56 = v24[11];
  v57 = v24[12];
  v58 = v24[13];
  v59 = v24[14];
  v52 = v24[7];
  v53 = v24[8];
  v54 = v24[9];
  v55 = v24[10];
  v48 = v24[3];
  v49 = v24[4];
  v50 = v24[5];
  v51 = v24[6];
  v44 = v23;
  v45 = v24[0];
  v46 = v24[1];
  v47 = v24[2];
  return sub_27586BF04(&v44, &qword_280A116D8, &qword_2759CB870);
}

uint64_t sub_275943874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v65 = a1;
  v6 = sub_2759B8DA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - v12;
  sub_275940BB0(&v53 - v12);
  (*(v7 + 104))(v11, *MEMORY[0x277CDF3D0], v6);
  v14 = sub_2759B8D98();
  v15 = *(v7 + 8);
  v15(v11, v6);
  v15(v13, v6);
  if (v14)
  {
    sub_2759B9C28();
  }

  else
  {
    sub_2759B9C48();
  }

  v64 = sub_2759B9C58();

  sub_2759B8DD8();
  v16 = v133;
  v17 = v133 * 0.5;
  v18 = v134;
  v19 = v135;
  v60 = v135;
  v61 = v134;
  v20 = v136;
  v58 = v137;
  v21 = v138;
  v63 = sub_2759BA028();
  v59 = v22;
  v23 = type metadata accessor for StorageThermometerCategoriesView(0);
  v24 = *(a2 + v23[8]);
  v25 = v65;

  sub_2759BA028();
  sub_2759B8F18();
  v26 = (*(v62 + 16) + OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_displayLabel);
  v27 = v26[1];
  v109 = *v26;
  v110 = v27;
  sub_27589F2D4();

  v62 = sub_2759B99C8();
  v56 = v29;
  v57 = v28;
  LOBYTE(v27) = v30;
  KeyPath = swift_getKeyPath();
  v31 = *(a2 + v23[9]);
  v54 = swift_getKeyPath();
  LOBYTE(v27) &= 1u;
  LOBYTE(v109) = LOBYTE(v27);
  LOBYTE(v84) = 0;
  v32 = *(a2 + v23[10]);
  v33 = swift_getKeyPath();
  *&v84 = v17;
  *(&v84 + 1) = v16;
  *&v85 = __PAIR64__(v19, v18);
  *(&v85 + 1) = v20;
  v34 = v58;
  *&v86 = v58;
  *(&v86 + 1) = v21;
  *&v87 = v64;
  WORD4(v87) = 256;
  *(&v87 + 10) = v131;
  HIWORD(v87) = v132;
  *&v88 = v25;
  WORD4(v88) = 256;
  HIWORD(v88) = v130;
  *(&v88 + 10) = v129;
  v35 = v59;
  *&v89 = v63;
  *(&v89 + 1) = v59;
  v90 = v81;
  v91 = v82;
  v68 = v86;
  v69 = v87;
  v92 = v83;
  v72 = v81;
  v73 = v82;
  v66 = v84;
  v67 = v85;
  v70 = v88;
  v71 = v89;
  v36 = v62;
  *&v93 = v62;
  v38 = v56;
  v37 = v57;
  *(&v93 + 1) = v57;
  LOBYTE(v94) = LOBYTE(v27);
  *(&v94 + 1) = v56;
  v40 = v54;
  v39 = KeyPath;
  *&v95 = KeyPath;
  *(&v95 + 1) = 1;
  LOBYTE(v96) = 0;
  *(&v96 + 1) = v54;
  *&v97 = v31;
  *(&v97 + 1) = v33;
  v98 = v32;
  v80 = v32;
  v41 = v95;
  v78 = v96;
  v79 = v97;
  v74 = v83;
  v75 = v93;
  v76 = v94;
  v77 = v95;
  v42 = v85;
  *a4 = v84;
  *(a4 + 16) = v42;
  v43 = v68;
  v44 = v69;
  v45 = v71;
  *(a4 + 64) = v70;
  *(a4 + 80) = v45;
  *(a4 + 32) = v43;
  *(a4 + 48) = v44;
  v46 = v72;
  v47 = v73;
  v48 = v75;
  *(a4 + 128) = v74;
  *(a4 + 144) = v48;
  *(a4 + 96) = v46;
  *(a4 + 112) = v47;
  v49 = v76;
  v50 = v78;
  v51 = v79;
  *(a4 + 224) = v80;
  *(a4 + 192) = v50;
  *(a4 + 208) = v51;
  *(a4 + 160) = v49;
  *(a4 + 176) = v41;
  v99[0] = v36;
  v99[1] = v37;
  v100 = LOBYTE(v27);
  v101 = v38;
  v102 = v39;
  v103 = 1;
  v104 = 0;
  v105 = v40;
  v106 = v31;
  v107 = v33;
  v108 = v32;

  sub_27586FBC8(&v84, &v109, &qword_280A11758, &qword_2759CB930);
  sub_27586FBC8(&v93, &v109, &qword_280A11760, &qword_2759CB938);
  sub_27586BF04(v99, &qword_280A11760, &qword_2759CB938);
  v109 = v17;
  v110 = v16;
  v111 = v61;
  v112 = v60;
  v113 = v20;
  v114 = v34;
  v115 = v21;
  v116 = v64;
  v117 = 256;
  v118 = v131;
  v119 = v132;
  v120 = v65;
  v121 = 256;
  v123 = v130;
  v122 = v129;
  v124 = v63;
  v125 = v35;
  v126 = v81;
  v127 = v82;
  v128 = v83;
  return sub_27586BF04(&v109, &qword_280A11758, &qword_2759CB930);
}

uint64_t sub_275943DA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11510, &qword_2759CB690);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v21[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11518, &qword_2759CB698);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11520, &qword_2759CB6A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21[-v11];
  if (*(v0 + 16) > 2u)
  {
    *v4 = sub_2759BA028();
    v4[1] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11528, &qword_2759CB6A8);
    sub_275944084(v0, v4 + *(v19 + 44));
    sub_27586FBC8(v4, v8, &qword_280A11510, &qword_2759CB690);
    swift_storeEnumTagMultiPayload();
    sub_27594829C();
    sub_27589B02C(&qword_280A11558, &qword_280A11510, &qword_2759CB690);
    sub_2759B95E8();
    v15 = v4;
    v16 = &qword_280A11510;
    v17 = &qword_2759CB690;
  }

  else
  {
    v13 = sub_2759BA038();
    v21[24] = 0;
    v21[16] = 1;
    v21[8] = 0;
    *v12 = v13;
    *(v12 + 1) = v14;
    v12[16] = 0;
    *(v12 + 3) = 0;
    v12[32] = 1;
    *(v12 + 5) = 0x4010000000000000;
    *(v12 + 24) = 256;
    sub_275944BDC(v0, &v12[*(v9 + 44)]);
    sub_27586FBC8(v12, v8, &qword_280A11520, &qword_2759CB6A0);
    swift_storeEnumTagMultiPayload();
    sub_27594829C();
    sub_27589B02C(&qword_280A11558, &qword_280A11510, &qword_2759CB690);
    sub_2759B95E8();
    v15 = v12;
    v16 = &qword_280A11520;
    v17 = &qword_2759CB6A0;
  }

  return sub_27586BF04(v15, v16, v17);
}

uint64_t sub_275944084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11520, &qword_2759CB6A0);
  v4 = *(v3 - 8);
  v48 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11568, &qword_2759CB6D0);
  v9 = *(v8 - 8);
  v47 = v8 - 8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v46 = &v45 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11570, &qword_2759CB6D8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11578, &qword_2759CB6E0);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v45 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v45 - v31;
  v33 = sub_2759BA038();
  v56 = 0;
  v55 = 1;
  v54 = 0;
  *v21 = v33;
  *(v21 + 1) = v34;
  v21[16] = 0;
  *(v21 + 3) = 0;
  v21[32] = 1;
  *(v21 + 5) = 0x4010000000000000;
  *(v21 + 24) = 256;
  sub_27594449C(&v21[*(v18 + 52)]);
  v35 = *(a1 + 16);
  v36 = 0.0;
  if (v35 == 3)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  sub_27589F26C(v21, v30, &qword_280A11570, &qword_2759CB6D8);
  *&v30[*(v23 + 44)] = v37;
  sub_27589F26C(v30, v32, &qword_280A11578, &qword_2759CB6E0);
  v38 = sub_2759BA038();
  v53 = 0;
  v52 = 1;
  v51 = 0;
  *v7 = v38;
  *(v7 + 1) = v39;
  v7[16] = 0;
  *(v7 + 3) = 0;
  v7[32] = 1;
  *(v7 + 5) = 0x4010000000000000;
  *(v7 + 24) = 256;
  sub_275944854(a1, &v7[*(v48 + 52)]);
  if (v35 == 4)
  {
    v36 = 1.0;
  }

  sub_27589F26C(v7, v15, &qword_280A11520, &qword_2759CB6A0);
  v40 = v46;
  *&v15[*(v47 + 44)] = v36;
  sub_27589F26C(v15, v40, &qword_280A11568, &qword_2759CB6D0);
  sub_27586FBC8(v32, v27, &qword_280A11578, &qword_2759CB6E0);
  v41 = v49;
  sub_27586FBC8(v40, v49, &qword_280A11568, &qword_2759CB6D0);
  v42 = v50;
  sub_27586FBC8(v27, v50, &qword_280A11578, &qword_2759CB6E0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11580, &qword_2759CB6E8);
  sub_27586FBC8(v41, v42 + *(v43 + 48), &qword_280A11568, &qword_2759CB6D0);
  sub_27586BF04(v40, &qword_280A11568, &qword_2759CB6D0);
  sub_27586BF04(v32, &qword_280A11578, &qword_2759CB6E0);
  sub_27586BF04(v41, &qword_280A11568, &qword_2759CB6D0);
  return sub_27586BF04(v27, &qword_280A11578, &qword_2759CB6E0);
}

uint64_t sub_27594449C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = sub_275944668();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0xE000000000000000;
  if (v10)
  {
    v12 = v10;
  }

  v21 = v11;
  v22 = v12;
  sub_27589F2D4();
  v13 = sub_2759B99C8();
  v15 = v14;
  v21 = v13;
  v22 = v14;
  v17 = v16 & 1;
  v23 = v16 & 1;
  v24 = v18;
  sub_2759B9B38();
  sub_27589F328(v13, v15, v17);

  sub_27586FBC8(v8, v6, &qword_280A0F600, &qword_2759C4210);
  sub_27586FBC8(v6, a1, &qword_280A0F600, &qword_2759C4210);
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11588, &qword_2759CB6F0) + 48);
  *v19 = 0;
  *(v19 + 8) = 1;
  sub_27586BF04(v8, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v6, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_275944668()
{
  v10 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (!v11)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_275947B3C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v2 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v3 = *&Strong[v2];
  v4 = v3;

  if (!v3)
  {
    return 0;
  }

  v5 = *&v4[OBJC_IVAR___ICSHomeDataModel_headerCard];

  v6 = *&v5[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
  v8 = *&v6[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel];
  v7 = *&v6[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarLabel + 8];

  return v8;
}

uint64_t sub_275944854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v42 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  if (a1[4])
  {
    v14 = a1[3];
    v15 = a1[4];
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v45 = v14;
  v46 = v15;
  sub_27589F2D4();

  v16 = sub_2759B99C8();
  v18 = v17;
  v45 = v16;
  v46 = v17;
  v20 = v19 & 1;
  v47 = v19 & 1;
  v48 = v21;
  sub_2759B9B38();
  sub_27589F328(v16, v18, v20);

  if (a1[6])
  {
    v22 = a1[5];
    v23 = a1[6];
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  v45 = v22;
  v46 = v23;

  v24 = sub_2759B99C8();
  v26 = v25;
  v28 = v27;
  LODWORD(v45) = sub_2759B9688();
  v29 = sub_2759B9958();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_27589F328(v24, v26, v28 & 1);

  v45 = v29;
  v46 = v31;
  v47 = v33 & 1;
  v48 = v35;
  sub_2759B9B38();
  sub_27589F328(v29, v31, v33 & 1);

  v36 = v42;
  sub_27586FBC8(v13, v42, &qword_280A0F600, &qword_2759C4210);
  v37 = v44;
  sub_27586FBC8(v11, v44, &qword_280A0F600, &qword_2759C4210);
  v38 = v43;
  sub_27586FBC8(v36, v43, &qword_280A0F600, &qword_2759C4210);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11560, &qword_2759CB6C8);
  v40 = v38 + *(v39 + 48);
  *v40 = 0x4020000000000000;
  *(v40 + 8) = 0;
  sub_27586FBC8(v37, v38 + *(v39 + 64), &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v11, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v13, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v37, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v36, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_275944BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53[1] = a1;
  v57 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v56 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = v53 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v54 = v53 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v53 - v10;
  v12 = sub_275944668();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v13)
  {
    v15 = v13;
  }

  v58 = v14;
  v59 = v15;
  sub_27589F2D4();
  v16 = sub_2759B99C8();
  v18 = v17;
  v20 = v19;
  LODWORD(v58) = sub_2759B9668();
  v21 = sub_2759B9958();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_27589F328(v16, v18, v20 & 1);

  v58 = v21;
  v59 = v23;
  v60 = v25 & 1;
  v61 = v27;
  sub_2759B9B38();
  sub_27589F328(v21, v23, v25 & 1);

  v28 = sub_275944FB8();
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  v31 = 0xE000000000000000;
  if (v29)
  {
    v31 = v29;
  }

  v58 = v30;
  v59 = v31;
  v32 = sub_2759B99C8();
  v34 = v33;
  v36 = v35;
  LODWORD(v58) = sub_2759B9688();
  v37 = sub_2759B9958();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_27589F328(v32, v34, v36 & 1);

  v58 = v37;
  v59 = v39;
  v60 = v41 & 1;
  v61 = v43;
  v44 = v54;
  sub_2759B9B38();
  sub_27589F328(v37, v39, v41 & 1);

  v45 = v55;
  sub_27586FBC8(v11, v55, &qword_280A0F600, &qword_2759C4210);
  v46 = v44;
  v47 = v44;
  v48 = v56;
  sub_27586FBC8(v46, v56, &qword_280A0F600, &qword_2759C4210);
  v49 = v57;
  sub_27586FBC8(v45, v57, &qword_280A0F600, &qword_2759C4210);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11560, &qword_2759CB6C8);
  v51 = v49 + *(v50 + 48);
  *v51 = 0x4020000000000000;
  *(v51 + 8) = 0;
  sub_27586FBC8(v48, v49 + *(v50 + 64), &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v47, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v11, &qword_280A0F600, &qword_2759C4210);
  sub_27586BF04(v48, &qword_280A0F600, &qword_2759C4210);
  return sub_27586BF04(v45, &qword_280A0F600, &qword_2759C4210);
}

uint64_t sub_275944FB8()
{
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (!v7)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v1 = *&v7[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
  v2 = v1;

  if (!v1)
  {
    return 0;
  }

  v3 = *&v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_thermometer];

  v4 = *&v3[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_usageLabel];
  v5 = *&v3[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_usageLabel + 8];

  return v4;
}

uint64_t sub_2759450F4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_275943DA0();
}

uint64_t sub_275945138@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2759B93D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for ManageStorageThermometerView(0);
  sub_27586FBC8(v1 + *(v12 + 36), v11, &qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2759B8DA8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2759BA658();
    v16 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_275945340()
{
  result = sub_2759BA0A8();
  qword_280A239A8 = result;
  return result;
}

uint64_t sub_275945368()
{
  sub_2759BA0A8();
  v0 = sub_2759BA068();

  qword_280A239B0 = v0;
  return result;
}

uint64_t sub_2759453B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for ManageStorageThermometerView(0);
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11458, &qword_2759CB370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11460, &qword_2759CB378);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11468, &qword_2759CB380);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11470, &qword_2759CB388);
  v18 = *(*(v17 - 8) + 56);
  v18(v12, 1, 1, v17);
  sub_27594584C(v2, v8);
  v18(v8, 0, 1, v17);
  sub_275823714(v8, v12);
  v19 = v2;
  sub_275948380(v2, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ManageStorageThermometerView);
  v20 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v32 = v4;
  v21 = swift_allocObject();
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275947D80(v31, v21 + v20, type metadata accessor for ManageStorageThermometerView);
  sub_27586FBC8(v12, v16, &qword_280A11460, &qword_2759CB378);
  v33 = v13;
  v22 = v19;
  v23 = &v16[*(v13 + 36)];
  *v23 = sub_275947880;
  v23[1] = v21;
  v23[2] = 0;
  v23[3] = 0;
  sub_27586BF04(v12, &qword_280A11460, &qword_2759CB378);
  v36 = *v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  v24 = v35;
  if (v35)
  {
    swift_getKeyPath();
    *&v36 = v24;
    sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v25 = *&v24[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
    v26 = v25;
  }

  else
  {
    v25 = 0;
  }

  *&v36 = v25;
  v27 = v31;
  sub_275948380(v22, v31, type metadata accessor for ManageStorageThermometerView);
  v28 = swift_allocObject();
  sub_275947D80(v27, v28 + v20, type metadata accessor for ManageStorageThermometerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11188, &unk_2759CA220);
  sub_275947A84();
  sub_275931330();
  sub_2759B9B88();

  return sub_27586BF04(v16, &qword_280A11468, &qword_2759CB380);
}

uint64_t sub_27594584C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11490, &qword_2759CB440);
  v3 = *(*(v114 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v114);
  v117 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v115 = &v104 - v6;
  v106 = type metadata accessor for ComplexThermometer(0);
  v7 = *(*(v106 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v106);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v108 = &v104 - v11;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11498, &qword_2759CB448);
  v12 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v109 = &v104 - v13;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A114A0, &qword_2759CB450);
  v14 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A114A8, &qword_2759CB458);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v113 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v104 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A114B0, &qword_2759CB460);
  v22 = *(v21 - 8);
  v105 = v21 - 8;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8);
  v112 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v125 = &v104 - v26;
  v124 = *a1;
  v123 = *(a1 + 8);
  *&v130 = v124;
  *(&v130 + 1) = v123;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  v118 = v127;
  v121 = *(a1 + 16);
  v120 = *(a1 + 24);
  LOBYTE(v130) = v121;
  *(&v130 + 1) = v120;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11488, &qword_2759CB3C0);
  sub_2759B9D68();
  v27 = v127;
  v29 = *(a1 + 48);
  v28 = *(a1 + 56);
  v31 = *(a1 + 64);
  v30 = *(a1 + 72);
  v127 = 0;

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A11C70, qword_2759C1240);
  sub_2759B9D58();
  v33 = v130;
  v127 = v118;
  v118 = v32;
  sub_2759B9D58();

  LOBYTE(v131) = v27;
  *(&v131 + 1) = v29;
  *&v132 = v28;
  *(&v132 + 1) = v31;
  v133 = v30;
  sub_2759B9FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A114B8, &qword_2759CB468);
  sub_275947CA0();
  sub_275947CF4();
  v34 = v125;
  sub_2759B9BA8();

  LOBYTE(v28) = sub_2759B97F8();
  sub_2759B8D78();
  v35 = v34 + *(v105 + 44);
  *v35 = v28;
  *(v35 + 8) = v36;
  *(v35 + 16) = v37;
  *(v35 + 24) = v38;
  *(v35 + 32) = v39;
  *(v35 + 40) = 0;
  *&v130 = v124;
  *(&v130 + 1) = v123;
  sub_2759B9D68();
  v40 = v127;
  LOBYTE(v130) = v121;
  *(&v130 + 1) = v120;
  sub_2759B9D68();
  v41 = v127;
  v42 = sub_275946668();
  v105 = a1;
  v43 = sub_275946808();
  if (qword_280A0E3C8 != -1)
  {
    swift_once();
  }

  v44 = qword_280A239C8;
  v127 = 0;

  sub_2759B9D58();
  v45 = v130;
  v127 = 0x3FF0000000000000;
  sub_2759B9D58();
  v46 = *(&v130 + 1);
  *(v10 + 7) = v130;
  *(v10 + 8) = v46;
  v47 = *(v106 + 44);
  *&v10[v47] = swift_getKeyPath();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  v127 = v40;
  v48 = v40;
  sub_2759B9D58();

  *v10 = v130;
  v10[16] = v41;
  *(v10 + 3) = v42;
  *(v10 + 4) = v43;
  *(v10 + 6) = v44;
  v49 = 0.0;
  v50 = v10;
  if (v40)
  {
    swift_getKeyPath();
    *&v130 = v48;
    sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    v51 = v48;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();

    v53 = 1.0;
    if (Strong)
    {
      swift_getKeyPath();
      *&v130 = Strong;
      sub_275947B3C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
      sub_2759B8638();

      v54 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
      swift_beginAccess();
      v55 = *&Strong[v54];
      v56 = v55;

      if (v55)
      {
        v57 = *&v56[OBJC_IVAR___ICSHomeDataModel_headerCard];

        v58 = *&v57[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
        v59 = *&v58[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_totalStorageInBytes];

        v53 = v59;
      }
    }

    swift_getKeyPath();
    *&v130 = v51;
    v60 = v51;
    sub_2759B8638();

    v61 = swift_unknownObjectWeakLoadStrong();

    if (v61)
    {
      swift_getKeyPath();
      *&v130 = v61;
      sub_275947B3C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
      sub_2759B8638();

      v62 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
      swift_beginAccess();
      v63 = *&v61[v62];
      v64 = v63;

      if (v63)
      {
        v65 = *&v64[OBJC_IVAR___ICSHomeDataModel_headerCard];

        v66 = *&v65[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
        v67 = *&v66[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_usedStorageInBytes];

        v49 = v67;
      }
    }

    else
    {
    }
  }

  else
  {
    v53 = 1.0;
  }

  *(v50 + 40) = v49 / v53;
  v68 = v108;
  sub_275947D80(v50, v108, type metadata accessor for ComplexThermometer);
  sub_2759BA028();
  sub_2759B8F18();
  v69 = v109;
  sub_275947D80(v68, v109, type metadata accessor for ComplexThermometer);
  v70 = (v69 + *(v107 + 36));
  v71 = v131;
  *v70 = v130;
  v70[1] = v71;
  v70[2] = v132;
  v72 = sub_2759B97F8();
  sub_275946A08();
  sub_2759B8D78();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v69;
  v82 = v110;
  sub_27589F26C(v81, v110, &qword_280A11498, &qword_2759CB448);
  v83 = v82 + *(v111 + 36);
  *v83 = v72;
  *(v83 + 8) = v74;
  *(v83 + 16) = v76;
  *(v83 + 24) = v78;
  *(v83 + 32) = v80;
  *(v83 + 40) = 0;
  sub_275947DE8();
  v84 = v126;
  sub_2759B9B38();
  sub_27586BF04(v82, &qword_280A114A0, &qword_2759CB450);
  *&v129 = v124;
  *(&v129 + 1) = v123;
  sub_2759B9D68();
  v85 = v128;
  LOBYTE(v129) = v121;
  *(&v129 + 1) = v120;
  sub_2759B9D68();
  v86 = v128;
  KeyPath = swift_getKeyPath();
  v88 = type metadata accessor for StorageThermometerCategoriesView(0);
  v89 = v115;
  *&v115[v88[6]] = KeyPath;
  swift_storeEnumTagMultiPayload();
  v128 = v85;
  sub_2759B9D58();
  *v89 = v129;
  *(v89 + 16) = v86;
  *(v89 + v88[7]) = 0x4020000000000000;
  *(v89 + v88[8]) = 0x4024000000000000;
  v90 = v88[9];
  *(v89 + v90) = sub_2759B98D8();
  v91 = v88[10];
  *(v89 + v91) = sub_2759B9C68();
  LOBYTE(v91) = sub_2759B97F8();
  sub_2759B8D78();
  v92 = v89 + *(v114 + 36);
  *v92 = v91;
  *(v92 + 8) = v93;
  *(v92 + 16) = v94;
  *(v92 + 24) = v95;
  *(v92 + 32) = v96;
  *(v92 + 40) = 0;
  v97 = v125;
  v98 = v112;
  sub_27586FBC8(v125, v112, &qword_280A114B0, &qword_2759CB460);
  v99 = v113;
  sub_27586FBC8(v84, v113, &qword_280A114A8, &qword_2759CB458);
  v100 = v117;
  sub_27586FBC8(v89, v117, &qword_280A11490, &qword_2759CB440);
  v101 = v116;
  sub_27586FBC8(v98, v116, &qword_280A114B0, &qword_2759CB460);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A114E8, &qword_2759CB4A0);
  sub_27586FBC8(v99, v101 + *(v102 + 48), &qword_280A114A8, &qword_2759CB458);
  sub_27586FBC8(v100, v101 + *(v102 + 64), &qword_280A11490, &qword_2759CB440);
  sub_27586BF04(v89, &qword_280A11490, &qword_2759CB440);
  sub_27586BF04(v126, &qword_280A114A8, &qword_2759CB458);
  sub_27586BF04(v97, &qword_280A114B0, &qword_2759CB460);
  sub_27586BF04(v100, &qword_280A11490, &qword_2759CB440);
  sub_27586BF04(v99, &qword_280A114A8, &qword_2759CB458);
  return sub_27586BF04(v98, &qword_280A114B0, &qword_2759CB460);
}

uint64_t sub_2759465B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = sub_2759B97E8();
  sub_2759B8D78();
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = v9;
  *(a2 + 48) = v8;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  *(a2 + 96) = 0;

  v15 = v4;
}

uint64_t sub_275946668()
{
  v1 = sub_2759B8DA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  sub_275945138(&v18 - v7);
  (*(v2 + 104))(v6, *MEMORY[0x277CDF3D0], v1);
  v9 = sub_2759B8D98();
  v10 = *(v2 + 8);
  v10(v6, v1);
  v10(v8, v1);
  if (v9)
  {
    return sub_2759B9C48();
  }

  v12 = type metadata accessor for ManageStorageThermometerView(0);
  v13 = (v0 + *(v12 + 44));
  v14 = *v13;
  v15 = v13[1];
  if (!sub_27594991C())
  {
    sub_27594972C(v14, v15);
  }

  v16 = *(v0 + *(v12 + 48));
  v17 = sub_2759B9C58();

  return v17;
}

uint64_t sub_275946808()
{
  v12 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (!v13)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_275947B3C(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v2 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v3 = *&Strong[v2];
  v4 = v3;

  if (v3)
  {
    v5 = *&v4[OBJC_IVAR___ICSHomeDataModel_headerCard];

    v6 = *&v5[OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary];
    v8 = *&v6[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor];
    v7 = *&v6[OBJC_IVAR____TtC14iCloudSettings14StorageSummary_storageBarColor + 8];

    v9 = v8;
  }

  else
  {
LABEL_5:
    v9 = 0;
    v7 = 0xE000000000000000;
  }

  v10 = sub_27594972C(v9, v7);

  return v10;
}

double sub_275946A08()
{
  v5 = *(v0 + 16);
  v7 = *(v0 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11488, &qword_2759CB3C0);
  sub_2759B9D68();
  result = 8.0;
  if (v4 <= 2u)
  {
    v6 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
    sub_2759B9D68();
    result = 24.0;
    if (v4)
    {
      swift_getKeyPath();
      sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
      sub_2759B8638();

      v2 = *&v4[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
      v3 = v2;

      result = 24.0;
      if (v2)
      {

        return 8.0;
      }
    }
  }

  return result;
}

void sub_275946B40(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11488, &qword_2759CB3C0);
  sub_2759B9D68();
  if (v1 > 1u)
  {
    if (v1 == 2)
    {
      return;
    }

    if (v1 != 3)
    {
      sub_275946D64();
      return;
    }

    sub_275946D64();
    if (qword_280A0E3B0 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (!v1)
  {
    if (qword_280A0E3B0 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (!sub_275947494())
  {
    return;
  }

  if (qword_280A0E3B0 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_12:
  MEMORY[0x28223BE20](qword_280A239B0);
  sub_2759B9008();
}

void sub_275946D64()
{
  v2 = v0;
  v3 = v0[5];
  v4 = *v0;
  if (!v3)
  {
    goto LABEL_31;
  }

  v33 = v0[4];
  v35 = *v0;
  v36 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (!v34)
  {
    goto LABEL_31;
  }

  swift_getKeyPath();
  sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v5 = *&v34[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];

  v6 = v5;
  if (v5 >> 62)
  {
    v17 = sub_2759BA9E8();
    v6 = v5;
    v7 = v17;
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_30:

    goto LABEL_31;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_30;
  }

LABEL_5:
  v30 = v2;
  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_47;
  }

  v8 = 0;
  v9 = 0;
  v31 = v6 & 0xC000000000000001;
  v32 = v6;
  do
  {
    if (v31)
    {
      v10 = MEMORY[0x277C846A0](v9);
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = (*(v10 + 16) + OBJC_IVAR____TtC14iCloudSettings31ManageStorageThermometerSection_bundleId);
    v12 = v33 == *v11 && v3 == v11[1];
    if (v12 || (sub_2759BAAC8() & 1) != 0)
    {
      if (*(v10 + 64) == 1)
      {
        v8 = 1;
        *(v10 + 64) = 1;
        if (!*(v10 + 56))
        {
          goto LABEL_7;
        }

        goto LABEL_24;
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v8 = 1;
      sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
      goto LABEL_23;
    }

    if (*(v10 + 64))
    {
      v14 = swift_getKeyPath();
      MEMORY[0x28223BE20](v14);
      sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
LABEL_23:
      sub_2759B8628();

      if (!*(v10 + 56))
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

    *(v10 + 64) = 0;
    if (!*(v10 + 56))
    {
LABEL_7:
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;

      goto LABEL_8;
    }

LABEL_24:
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15);
    sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
    sub_2759B8628();

LABEL_8:
    v6 = v32;
    ++v9;
  }

  while (v7 != v9);

  if (v8)
  {
    return;
  }

  v2 = v30;
  v16 = *v30;
LABEL_31:
  v18 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (!v34)
  {
    return;
  }

  v1 = &OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel;
  v19 = *&v34[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel];
  v20 = *&v34[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_otherAppsDisplayLabel + 8];

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    return;
  }

  sub_2759B9D68();
  swift_getKeyPath();
  sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v5 = *&v34[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__thermometerSections];

  if (v5 >> 62)
  {
LABEL_47:
    v22 = sub_2759BA9E8();
    if (!v22)
    {
      goto LABEL_48;
    }

LABEL_37:
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v23)
    {
      __break(1u);
    }

    else if ((v5 & 0xC000000000000001) == 0)
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v24 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v25 = *(v5 + 8 * v24 + 32);

LABEL_42:

        if (*(v25 + 64) == 1)
        {
          *(v25 + 64) = 1;
        }

        else
        {
          v26 = swift_getKeyPath();
          MEMORY[0x28223BE20](v26);
          sub_275947B3C(&qword_280A0F538, type metadata accessor for ThermometerSectionViewModel);
          sub_2759B8628();
        }

        sub_2759B9D68();
        v27 = &v34[*v1];
        v28 = *v27;
        v29 = v27[1];

        sub_2758A4418(v28, v29);

        return;
      }

      __break(1u);
      return;
    }

    v25 = MEMORY[0x277C846A0](v24, v5);
    goto LABEL_42;
  }

  v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
    goto LABEL_37;
  }

LABEL_48:
}

BOOL sub_275947494()
{
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FA28, &qword_2759C4AB8);
  sub_2759B9D68();
  if (!v7)
  {
    return 0;
  }

  swift_getKeyPath();
  sub_275947B3C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
  sub_2759B8638();

  v1 = *&v7[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__appsListDataModel];
  v2 = v1;

  if (!v1)
  {
    return 0;
  }

  v3 = *&v2[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListDataModel_thermometer];

  v4 = *&v3[OBJC_IVAR____TtC14iCloudSettings24ManageStorageThermometer_sections];

  v5 = v4 >> 62 ? sub_2759BA9E8() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

  return v5 != 0;
}
uint64_t sub_260E33ABC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260E343A8;

  return sub_260E30FFC(a1, a2, (v2 + 16));
}

uint64_t sub_260E33B70(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260E343A8;

  return sub_260E3125C(a1, a2, (v2 + 16));
}

uint64_t sub_260E33C28(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260E343A8;

  return sub_260E3140C(a1, a2, (v2 + 16));
}

uint64_t sub_260E33CDC(void *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_260E343A8;

  return sub_260E3155C(a1, (v1 + 16));
}

uint64_t sub_260E33D88(uint64_t a1, uint64_t a2)
{
  v4 = _s19ParentDirectoryCRUDVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E33DF0(uint64_t a1, uint64_t a2)
{
  v4 = _s19ParentDirectoryCRUDVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E33E54(uint64_t *a1, uint64_t *a2)
{
  v6 = *(_s19ParentDirectoryCRUDVMa() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260E343A8;

  return sub_260E30C00(a1, a2, v2 + v7);
}

uint64_t sub_260E33F48(uint64_t *a1, uint64_t *a2)
{
  v5 = *(_s19ParentDirectoryCRUDVMa() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260E343A8;

  return sub_260E30D6C(a1, a2);
}

uint64_t sub_260E34040(uint64_t *a1, uint64_t *a2)
{
  v6 = *(_s19ParentDirectoryCRUDVMa() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260E343A8;

  return sub_260E30DFC(a1, a2, v2 + v7);
}

uint64_t objectdestroy_199Tm()
{
  v1 = (_s19ParentDirectoryCRUDVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_260E68904();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_260E3421C(uint64_t *a1)
{
  v3 = *(_s19ParentDirectoryCRUDVMa() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260E343A8;

  return sub_260E30F78(a1);
}

id ProductKitCatalog.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProductKitCatalog.init()()
{
  v0 = type metadata accessor for MobileAssetManager();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = &unk_260E704C8;
  *(v1 + 128) = 0;
  *(v1 + 136) = &unk_260E704B8;
  *(v1 + 144) = 0;
  v11[3] = v0;
  v11[4] = &off_2873619E8;
  v11[0] = v1;
  v2 = objc_allocWithZone(type metadata accessor for ProductKitCatalog());
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v11, v0);
  v4 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = sub_260E35D2C(*v6, v2);
  __swift_destroy_boxed_opaque_existential_0(v11);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

BOOL static ProductKitCatalog.isProductKitURL(_:)()
{
  v0 = sub_260E688F4();
  if (!v1)
  {
    return 0;
  }

  if (v0 == 0x7370747468 && v1 == 0xE500000000000000)
  {
  }

  else
  {
    v2 = sub_260E69834();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  v3 = sub_260E688D4();
  if (v4)
  {
    if (v3 == 0x6C7070612E6E706DLL && v4 == 0xED00006D6F632E65)
    {
    }

    else
    {
      v5 = sub_260E69834();

      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    sub_260E688E4();
    v6 = sub_260E35A2C();

    if (v6)
    {
      sub_260E688E4();
      v7 = sub_260E690D4();

      return v7 > 5;
    }
  }

  return 0;
}

uint64_t sub_260E3478C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_260E62E28(sub_260E35F7C, v4);
}

void sub_260E3480C(uint64_t a1, void (*a2)(void *))
{
  if (*(a1 + 17))
  {
    v4 = *a1;
    v3 = *(a1 + 8);
    v5 = *(a1 + 16);
    sub_260E15590();
    v6 = swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v3;
    *(v7 + 16) = v5;
    sub_260E1A318(v4, v3, v5);
    a2(v6);
  }

  else
  {
    a2(0);
  }
}

void sub_260E3499C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_260E68844();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_260E34A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void *), uint64_t a7)
{
  v49 = a2;
  v52 = a6;
  v53 = a7;
  v45 = a4;
  v46 = a5;
  v50 = a3;
  v8 = sub_260E68A24();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_260E68A44();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54740, &unk_260E6D7C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v51 = &v45 - v16;
  v17 = sub_260E68904();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MarketingPartNumberURL();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v45 - v27;
  (*(v18 + 16))(v21, a1, v17);
  if (_s10ProductKit22MarketingPartNumberURLV7isValid3urlSb10Foundation0F0V_tFZ_0())
  {
    v30 = v52;
    v29 = v53;
    (*(v18 + 32))(v26, v21, v17);
    sub_260E360EC(v26, v28);
    v31 = *(v48 + OBJC_IVAR___ProductKitCatalogInternal_catalog);
    v32 = v51;
    sub_260E36E34(v28, v51, type metadata accessor for MarketingPartNumberURL);
    v33 = (v32 + *(v14 + 36));
    sub_260E36150(v31 + 16, v33);
    if (sub_260E69764())
    {
      sub_260E15590();
      v34 = swift_allocError();
      *v35 = xmmword_260E6D7B0;
      *(v35 + 16) = 2;
      v30(0, v34);
    }

    else
    {
      v38 = swift_allocObject();
      *(v38 + 16) = v30;
      *(v38 + 24) = v29;
      v39 = __swift_project_boxed_opaque_existential_0(v33, v33[3]);

      v40 = sub_260E3589C();
      v42 = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_260E36278;
      *(v43 + 24) = v38;
      v44 = *v39;

      sub_260E61A78(v40, v42, v45, v46, sub_260E36280, v43);
    }

    sub_260E361B4(v28);
    sub_260E36210(v32);
  }

  else
  {
    sub_260E68A14();
    sub_260E35F84(MEMORY[0x277D84F90]);
    sub_260E36094();
    sub_260E68834();
    v36 = sub_260E68A34();
    (*(v47 + 8))(v13, v10);
    swift_willThrow();
    (*(v18 + 8))(v21, v17);
    v37 = v36;
    v52(0, v36);
  }
}

void sub_260E34EC0(void *a1, void (*a2)(void, void *))
{
  v3 = *a1;
  if (*(a1 + 17))
  {
    v4 = a1[1];
    v5 = *(a1 + 16);
    sub_260E15590();
    v6 = swift_allocError();
    *v7 = v3;
    *(v7 + 8) = v4;
    *(v7 + 16) = v5;
    sub_260E1A318(v3, v4, v5);
    a2(0, v6);
  }

  else
  {
    a2(*a1, 0);
  }
}

void sub_260E34FA0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_260E68904();
    v5 = sub_260E691A4();
  }

  if (a2)
  {
    v6 = sub_260E68844();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_260E3503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void, void *), uint64_t a7)
{
  v49 = a2;
  v52 = a6;
  v53 = a7;
  v45 = a4;
  v46 = a5;
  v50 = a3;
  v8 = sub_260E68A24();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_260E68A44();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54740, &unk_260E6D7C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v51 = &v45 - v16;
  v17 = sub_260E68904();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MarketingPartNumberURL();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v45 - v27;
  (*(v18 + 16))(v21, a1, v17);
  if (_s10ProductKit22MarketingPartNumberURLV7isValid3urlSb10Foundation0F0V_tFZ_0())
  {
    v30 = v52;
    v29 = v53;
    (*(v18 + 32))(v26, v21, v17);
    sub_260E360EC(v26, v28);
    v31 = *(v48 + OBJC_IVAR___ProductKitCatalogInternal_catalog);
    v32 = v51;
    sub_260E36E34(v28, v51, type metadata accessor for MarketingPartNumberURL);
    v33 = (v32 + *(v14 + 36));
    sub_260E36150(v31 + 16, v33);
    if (sub_260E69764())
    {
      sub_260E15590();
      v34 = swift_allocError();
      *v35 = xmmword_260E6D7B0;
      *(v35 + 16) = 2;
      v30(0, 0, 0, v34);
    }

    else
    {
      v38 = swift_allocObject();
      *(v38 + 16) = v30;
      *(v38 + 24) = v29;
      v39 = __swift_project_boxed_opaque_existential_0(v33, v33[3]);

      v40 = sub_260E3589C();
      v42 = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_260E36288;
      *(v43 + 24) = v38;
      v44 = *v39;

      sub_260E61A78(v40, v42, v45, v46, sub_260E36290, v43);
    }

    sub_260E361B4(v28);
    sub_260E36210(v32);
  }

  else
  {
    sub_260E68A14();
    sub_260E35F84(MEMORY[0x277D84F90]);
    sub_260E36094();
    sub_260E68834();
    v36 = sub_260E68A34();
    (*(v47 + 8))(v13, v10);
    swift_willThrow();
    (*(v18 + 8))(v21, v17);
    v37 = v36;
    v52(0, 0, 0, v36);
  }
}

void sub_260E3550C(uint64_t *a1, void (*a2)(uint64_t, uint64_t, uint64_t, void *))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (a1[3])
  {
    sub_260E15590();
    v6 = swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v3;
    *(v7 + 16) = v5;
    sub_260E1A318(v4, v3, v5);
    a2(0, 0, 0, v6);
  }

  else
  {
    a2(*a1, v3, v5, 0);
  }
}

uint64_t sub_260E355F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, void (*a7)(char *, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v11 = sub_260E68904();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a6);
  sub_260E688C4();
  v17 = sub_260E69024();
  v19 = v18;
  if (a5)
  {
    v20 = sub_260E69024();
    a5 = v21;
  }

  else
  {
    v20 = 0;
  }

  _Block_copy(v16);
  v22 = a1;
  a7(v15, v17, v19, v20, a5, v22, v16);
  _Block_release(v16);
  _Block_release(v16);

  return (*(v12 + 8))(v15, v11);
}

void sub_260E3577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = sub_260E68FF4();
    if (a4)
    {
LABEL_3:
      v9 = sub_260E68844();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1, v8);
}

id ProductKitCatalog.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductKitCatalog();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_260E3589C()
{
  v1 = v0;
  v2 = type metadata accessor for Product.Identifier();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarketingPartNumberURL();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E36E34(v1, v5, type metadata accessor for Product.Identifier);
  sub_260E360EC(v5, v9);
  v10 = sub_260E688E4();
  sub_260E548C8(1uLL, v10, v11);

  v12 = sub_260E69594();
  v14 = v13;

  v17[0] = v12;
  v17[1] = v14;
  sub_260E69174();
  v15 = sub_260E69094();

  sub_260E361B4(v9);
  return v15;
}

uint64_t sub_260E35A2C()
{

  v0 = sub_260E69104();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_260E69104();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_260E69834();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_260E69104();
      v3 = v5;
    }

    while (v5);
  }

  sub_260E69104();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
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

unint64_t sub_260E35BFC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_260E698F4();
  sub_260E690C4();
  v6 = sub_260E69914();

  return sub_260E35C74(a1, a2, v6);
}

unint64_t sub_260E35C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_260E69834())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_260E35D2C(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for MobileAssetManager();
  v27[3] = v4;
  v27[4] = &off_2873619E8;
  v27[0] = a1;
  sub_260E36150(v27, &a2[OBJC_IVAR___ProductKitCatalogInternal_assetManager]);
  sub_260E36150(v27, v25);
  v5 = v26;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v24[3] = v4;
  v24[4] = &off_2873619E8;
  v24[0] = v11;
  type metadata accessor for Product.Catalog();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v24, v4);
  v14 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v12[5] = v4;
  v12[6] = &off_2873619E8;
  v12[2] = v18;
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);
  *&a2[OBJC_IVAR___ProductKitCatalogInternal_catalog] = v12;
  v19 = type metadata accessor for ProductKitCatalog();
  v23.receiver = a2;
  v23.super_class = v19;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v20;
}

uint64_t sub_260E35F44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_260E35F84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54760, &qword_260E6D7F8);
    v3 = sub_260E69744();
    v4 = a1 + 32;

    while (1)
    {
      sub_260E36E9C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_260E35BFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_260E145CC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_260E36094()
{
  result = qword_27FE54748;
  if (!qword_27FE54748)
  {
    sub_260E68A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54748);
  }

  return result;
}

uint64_t sub_260E360EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingPartNumberURL();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E36150(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_260E361B4(uint64_t a1)
{
  v2 = type metadata accessor for MarketingPartNumberURL();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E36210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54740, &unk_260E6D7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_260E3634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void))
{
  v49 = a6;
  v50 = a2;
  v45 = a4;
  v46 = a5;
  v51 = a3;
  v53 = a1;
  v8 = sub_260E68A24();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_260E68A44();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54740, &unk_260E6D7C0);
  v14 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v52 = &v45 - v15;
  v16 = sub_260E68904();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MarketingPartNumberURL();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v45 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a7;
  (*(v17 + 16))(v20, v53, v16);
  _Block_copy(a7);
  if (_s10ProductKit22MarketingPartNumberURLV7isValid3urlSb10Foundation0F0V_tFZ_0())
  {
    (*(v17 + 32))(v25, v20, v16);
    sub_260E360EC(v25, v27);
    v29 = *(v49 + OBJC_IVAR___ProductKitCatalogInternal_catalog);
    v30 = v52;
    sub_260E36E34(v27, v52, type metadata accessor for MarketingPartNumberURL);
    v31 = (v30 + *(v47 + 36));
    sub_260E36150(v29 + 16, v31);
    if (sub_260E69764())
    {
      sub_260E15590();
      v32 = swift_allocError();
      *v33 = xmmword_260E6D7B0;
      *(v33 + 16) = 2;
      v34 = sub_260E68844();
      (a7)[2](a7, 0, v34);
    }

    else
    {
      v38 = swift_allocObject();
      *(v38 + 16) = sub_260E36E24;
      *(v38 + 24) = v28;
      v39 = __swift_project_boxed_opaque_existential_0(v31, v31[3]);

      v40 = sub_260E3589C();
      v42 = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_260E36F40;
      *(v43 + 24) = v38;
      v44 = *v39;

      sub_260E61A78(v40, v42, v45, v46, sub_260E36F44, v43);
    }

    sub_260E361B4(v27);
    sub_260E36210(v30);
  }

  else
  {
    sub_260E68A14();
    sub_260E35F84(MEMORY[0x277D84F90]);
    sub_260E36094();
    sub_260E68834();
    v35 = sub_260E68A34();
    (*(v48 + 8))(v13, v10);
    swift_willThrow();
    (*(v17 + 8))(v20, v16);
    v36 = v35;
    v37 = sub_260E68844();
    (a7)[2](a7, 0, v37);
  }
}

void sub_260E36894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void, void))
{
  v49 = a6;
  v50 = a2;
  v45 = a4;
  v46 = a5;
  v51 = a3;
  v53 = a1;
  v8 = sub_260E68A24();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_260E68A44();
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54740, &unk_260E6D7C0);
  v14 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v52 = &v45 - v15;
  v16 = sub_260E68904();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MarketingPartNumberURL();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v45 - v26;
  v28 = swift_allocObject();
  *(v28 + 16) = a7;
  (*(v17 + 16))(v20, v53, v16);
  _Block_copy(a7);
  if (_s10ProductKit22MarketingPartNumberURLV7isValid3urlSb10Foundation0F0V_tFZ_0())
  {
    (*(v17 + 32))(v25, v20, v16);
    sub_260E360EC(v25, v27);
    v29 = *(v49 + OBJC_IVAR___ProductKitCatalogInternal_catalog);
    v30 = v52;
    sub_260E36E34(v27, v52, type metadata accessor for MarketingPartNumberURL);
    v31 = (v30 + *(v47 + 36));
    sub_260E36150(v29 + 16, v31);
    if (sub_260E69764())
    {
      sub_260E15590();
      v32 = swift_allocError();
      *v33 = xmmword_260E6D7B0;
      *(v33 + 16) = 2;
      v34 = sub_260E68844();
      (a7)[2](a7, 0, 0, v34);
    }

    else
    {
      v38 = swift_allocObject();
      *(v38 + 16) = sub_260E36E1C;
      *(v38 + 24) = v28;
      v39 = __swift_project_boxed_opaque_existential_0(v31, v31[3]);

      v40 = sub_260E3589C();
      v42 = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_260E36F38;
      *(v43 + 24) = v38;
      v44 = *v39;

      sub_260E61A78(v40, v42, v45, v46, sub_260E36F3C, v43);
    }

    sub_260E361B4(v27);
    sub_260E36210(v30);
  }

  else
  {
    sub_260E68A14();
    sub_260E35F84(MEMORY[0x277D84F90]);
    sub_260E36094();
    sub_260E68834();
    v35 = sub_260E68A34();
    (*(v48 + 8))(v13, v10);
    swift_willThrow();
    (*(v17 + 8))(v20, v16);
    v36 = v35;
    v37 = sub_260E68844();
    (a7)[2](a7, 0, 0, v37);
  }
}

uint64_t sub_260E36DE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260E36E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_260E36E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54768, &qword_260E6D800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_260E36F4C(uint64_t a1)
{
  v2 = sub_260E689E4();
  v3 = *(v2 - 8);
  v78 = v2;
  v79 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v77 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54780, &qword_260E6D818);
  v6 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v60 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8);
  v8 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v60 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  v62 = *(v72 - 8);
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v72);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v70 = &v60 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE547A8, &unk_260E6D840);
  v15 = *(*(v69 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v69);
  v68 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v67 = &v60 - v18;
  v80 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54798, &qword_260E6D830);
    v19 = sub_260E69744();
  }

  else
  {
    v19 = MEMORY[0x277D84F98];
  }

  v20 = v80 + 64;
  v21 = 1 << *(v80 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v80 + 64);
  v24 = (v21 + 63) >> 6;
  v64 = v79 + 32;
  v65 = v79 + 16;
  v61 = v19 + 8;

  v26 = 0;
  v66 = v20;
  v63 = v19;
  v71 = v13;
  if (v23)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v24)
    {

      return v19;
    }

    v23 = *(v20 + 8 * v29);
    ++v26;
    if (v23)
    {
      while (1)
      {
        v30 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v31 = v30 | (v29 << 6);
        v32 = v79;
        v33 = (*(v80 + 48) + 16 * v31);
        v35 = *v33;
        v34 = v33[1];
        v36 = v69;
        v37 = v67;
        v38 = v78;
        (*(v79 + 16))(&v67[*(v69 + 48)], *(v80 + 56) + *(v79 + 72) * v31, v78);
        *v37 = v35;
        v37[1] = v34;
        v39 = v68;
        sub_260E38F58(v37, v68, &qword_27FE547A8, &unk_260E6D840);
        v40 = *(v36 + 48);
        v41 = *(v76 + 48);
        v42 = *v39;
        v43 = v39[1];
        (*(v32 + 32))(v77, v39 + v40, v38);

        v44 = v75;
        v45 = v43;
        swift_dynamicCast();
        v46 = *(v74 + 48);
        v47 = &v44[v41];
        v48 = v73;
        sub_260E38F58(v47, &v73[v46], &qword_27FE54710, &qword_260E6D688);
        v49 = &v48[v46];
        v50 = v70;
        sub_260E38F58(v49, v70, &qword_27FE54710, &qword_260E6D688);
        v51 = v71;
        v52 = v42;
        sub_260E38F58(v50, v71, &qword_27FE54710, &qword_260E6D688);
        v53 = v42;
        v19 = v63;
        result = sub_260E35BFC(v53, v43);
        v54 = result;
        if (v55)
        {
          v27 = (v19[6] + 16 * result);
          v28 = v27[1];
          *v27 = v52;
          v27[1] = v43;

          result = sub_260E38EE8(v51, v19[7] + *(v62 + 72) * v54);
          v26 = v29;
          v20 = v66;
          if (!v23)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v20 = v66;
          if (v19[2] >= v19[3])
          {
            goto LABEL_20;
          }

          *(v61 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
          v56 = (v19[6] + 16 * result);
          *v56 = v52;
          v56[1] = v45;
          result = sub_260E38F58(v51, v19[7] + *(v62 + 72) * result, &qword_27FE54710, &qword_260E6D688);
          v57 = v19[2];
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_21;
          }

          v19[2] = v59;
          v26 = v29;
          if (!v23)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v29 = v26;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_260E374E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54780, &qword_260E6D818) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8);
  v7 = *a1;
  v6 = a1[1];
  sub_260E38E70(a1 + v4, a2 + *(v5 + 48));
  *a2 = v7;
  a2[1] = v6;
}

uint64_t sub_260E37570(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - v8;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54798, &qword_260E6D830);
  v44 = a2;
  result = sub_260E69734();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v2;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_260E38F58(v31, v45, &qword_27FE54710, &qword_260E6D688);
      }

      else
      {
        sub_260E38E70(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_260E698F4();
      sub_260E690C4();
      result = sub_260E69914();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_260E38F58(v45, *(v12 + 56) + v30 * v20, &qword_27FE54710, &qword_260E6D688);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_260E378D0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_260E695D4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_260E698F4();

      sub_260E690C4();
      v13 = sub_260E69914();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_260E37AD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54798, &qword_260E6D830);
  v5 = *v0;
  v6 = sub_260E69724();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_260E38E70(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_260E38F58(v26, *(v28 + 56) + v27, &qword_27FE54710, &qword_260E6D688);
      }

      while (v16);
    }

    v19 = v11;
    v7 = v33;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_260E37D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54780, &qword_260E6D818);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54778, &qword_260E6D810);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v44 - v17);
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  v44 = v6;
  v49 = v22;
  if (v23)
  {
    v45 = a1;
    v24 = v21;
LABEL_11:
    v28 = (v23 - 1) & v23;
    v29 = __clz(__rbit64(v23)) | (v24 << 6);
    v30 = (*(v19 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    sub_260E38E70(*(v19 + 56) + *(v46 + 72) * v29, v10);
    v33 = v48;
    v34 = *(v48 + 48);
    *v18 = v32;
    v18[1] = v31;
    v35 = v10;
    v36 = v33;
    sub_260E38F58(v35, v18 + v34, &qword_27FE54710, &qword_260E6D688);
    v37 = v47;
    (*(v47 + 56))(v18, 0, 1, v36);

    v27 = v24;
    v38 = v37;
    a1 = v45;
LABEL_12:
    *v1 = v19;
    v1[1] = v20;
    v1[2] = v49;
    v1[3] = v27;
    v1[4] = v28;
    v39 = v1[5];
    v40 = v1[6];
    sub_260E38F58(v18, v15, &qword_27FE54778, &qword_260E6D810);
    v41 = 1;
    if ((*(v38 + 48))(v15, 1, v36) != 1)
    {
      v42 = v44;
      sub_260E38F58(v15, v44, &qword_27FE54780, &qword_260E6D818);
      v39(v42);
      sub_260E155E4(v42, &qword_27FE54780, &qword_260E6D818);
      v41 = 0;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8);
    return (*(*(v43 - 8) + 56))(a1, v41, 1, v43);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v38 = v47;
        v36 = v48;
        (*(v47 + 56))(&v44 - v17, 1, 1, v48);
        v28 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_260E380E4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_260E68FF4();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_9:
    sub_260E155E4(&v9, &qword_27FE542C8, &qword_260E6BFE0);
    return sub_260E66BA4(MEMORY[0x277D84F90]);
  }

  v3 = sub_260E68FF4();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_260E695C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE547A0, &qword_260E6D838);
  if (swift_dynamicCast())
  {
    v5 = sub_260E36F4C(v7);

    return v5;
  }

  return sub_260E66BA4(MEMORY[0x277D84F90]);
}

uint64_t sub_260E38268(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54790, &qword_260E6D828);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (v42 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v42[3] = a1;
  v42[4] = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v42[5] = v19;
  v42[6] = 0;
  v42[7] = v22 & v20;
  v42[8] = a2;
  v42[9] = a3;

  v42[1] = a3;

  while (1)
  {
    sub_260E37D1C(v17);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54720, &qword_260E6D6A8);
    if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1)
    {
      sub_260E38EE0();
    }

    v25 = *v17;
    v24 = v17[1];
    sub_260E38F58(v17 + *(v23 + 48), v13, &qword_27FE54710, &qword_260E6D688);
    v26 = *a5;
    v28 = sub_260E35BFC(v25, v24);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_260E37AD4();
        v36 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_260E38EE8(v13, v36[7] + *(v43 + 72) * v28);
      a4 = 1;
    }

    else
    {
      sub_260E37570(v31, a4 & 1);
      v33 = *a5;
      v34 = sub_260E35BFC(v25, v24);
      if ((v32 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v28 = v34;
      v36 = *a5;
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = (v36[6] + 16 * v28);
      *v37 = v25;
      v37[1] = v24;
      sub_260E38F58(v13, v36[7] + *(v43 + 72) * v28, &qword_27FE54710, &qword_260E6D688);
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_20;
      }

      v36[2] = v40;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_260E69874();
  __break(1u);
  return result;
}

void sub_260E385B4(uint64_t a1)
{
  v70 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54770, &qword_260E6D808);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v66 = v64 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  v72 = *(v67 - 8);
  v4 = *(v72 + 64);
  v5 = MEMORY[0x28223BE20](v67);
  v73 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54778, &qword_260E6D810);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v64 - v13;
  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v64[1] = "tKit.updateVideoPlaneSize";
  v16 = sub_260E68FF4();
  v17 = [v15 initWithSuiteName_];

  if (v17)
  {
    v18 = sub_260E68FF4();
    v19 = [v17 objectForKey_];

    if (v19)
    {
      sub_260E695C4();
      swift_unknownObjectRelease();
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
    }

    v76 = v74;
    v77 = v75;
    if (*(&v75 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54788, &qword_260E6D820);
      if (swift_dynamicCast())
      {
        v20 = v74;
        v21 = v70;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v76 = v20;
        sub_260E38268(v21, sub_260E374E4, 0, isUniquelyReferenced_nonNull_native, &v76);
        v64[0] = 0;
        swift_bridgeObjectRelease_n();
        v70 = v76;
      }

      else
      {
        v64[0] = 0;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
  }

  v64[0] = 0;
  sub_260E155E4(&v76, &qword_27FE542C8, &qword_260E6BFE0);
LABEL_11:
  v23 = v70 + 64;
  v24 = 1 << *(v70 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v70 + 64);
  v27 = (v24 + 63) >> 6;
  v65 = (v72 + 56);
  v28 = 0;

  v68 = v12;
  v71 = v14;
  while (v26)
  {
    v30 = v28;
LABEL_26:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = v33 | (v30 << 6);
    v35 = v69;
    v36 = (*(v70 + 48) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    sub_260E38E70(*(v70 + 56) + *(v72 + 72) * v34, v69);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54780, &qword_260E6D818);
    v40 = *(v39 + 48);
    v41 = v68;
    *v68 = v38;
    *(v41 + 1) = v37;
    v42 = v35;
    v12 = v41;
    sub_260E38F58(v42, &v41[v40], &qword_27FE54710, &qword_260E6D688);
    (*(*(v39 - 8) + 56))(v12, 0, 1, v39);

LABEL_27:
    v43 = v71;
    sub_260E38F58(v12, v71, &qword_27FE54778, &qword_260E6D810);
    v44 = v43;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54780, &qword_260E6D818);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {

      v59 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v60 = sub_260E68FF4();
      v61 = [v59 initWithSuiteName_];

      if (v61)
      {
        v62 = sub_260E68F84();

        v63 = sub_260E68FF4();
        [v61 setObject:v62 forKey:v63];
      }

      else
      {
      }

      return;
    }

    v46 = *v44;
    v47 = v44[1];
    v48 = v44 + *(v45 + 48);
    v49 = v73;
    sub_260E38F58(v48, v73, &qword_27FE54710, &qword_260E6D688);
    v50 = sub_260E689E4();
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {
      v51 = sub_260E35BFC(v46, v47);
      v53 = v52;

      if (v53)
      {
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *&v76 = v29;
        if (!v54)
        {
          sub_260E37AD4();
          v29 = v76;
        }

        v55 = *(*(v29 + 48) + 16 * v51 + 8);

        v56 = v66;
        sub_260E38F58(*(v29 + 56) + *(v72 + 72) * v51, v66, &qword_27FE54710, &qword_260E6D688);
        sub_260E378D0(v51, v29);
        v57 = 0;
      }

      else
      {
        v57 = 1;
        v56 = v66;
      }

      (*v65)(v56, v57, 1, v67);
      sub_260E155E4(v56, &qword_27FE54770, &qword_260E6D808);
    }

    else
    {
    }

    sub_260E155E4(v73, &qword_27FE54710, &qword_260E6D688);
  }

  if (v27 <= v28 + 1)
  {
    v31 = v28 + 1;
  }

  else
  {
    v31 = v27;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54780, &qword_260E6D818);
      (*(*(v58 - 8) + 56))(v12, 1, 1, v58);
      v26 = 0;
      v28 = v32;
      goto LABEL_27;
    }

    v26 = *(v23 + 8 * v30);
    ++v28;
    if (v26)
    {
      v28 = v30;
      goto LABEL_26;
    }
  }

  __break(1u);
}

BOOL sub_260E38D68()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_260E68FF4();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_260E68FF4();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  sub_260E69024();

  v5 = sub_260E69764();

  return v5 == 1;
}

uint64_t sub_260E38E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E38EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54710, &qword_260E6D688);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E38F58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_260E38FD4()
{
  result = qword_27FE547B0;
  if (!qword_27FE547B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE547B0);
  }

  return result;
}

uint64_t sub_260E39050(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004C5FLL;
  v3 = a1;
  v4 = 0xEA0000000000525FLL;
  if (a1 == 4)
  {
    v4 = 0xEA00000000004C5FLL;
  }

  if (a1 == 3)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0x64726143786F7250;
  }

  if (a1 == 3)
  {
    v6 = 0x8000000260E71220;
  }

  else
  {
    v6 = v4;
  }

  v7 = 0x8000000260E710A0;
  v8 = 0xD00000000000001CLL;
  v9 = 0x8000000260E710C0;
  v10 = 0xD00000000000001DLL;
  if (v3 != 1)
  {
    v10 = 0xD00000000000001ALL;
    v9 = 0x8000000260E71200;
  }

  if (v3)
  {
    v8 = v10;
    v7 = v9;
  }

  if (v3 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v3 <= 2)
  {
    v12 = v7;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x8000000260E71220;
      if (v11 != 0xD00000000000001BLL)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xEA0000000000525FLL;
      }

      if (v11 != 0x64726143786F7250)
      {
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x8000000260E710C0;
      if (v11 != 0xD00000000000001DLL)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v2 = 0x8000000260E71200;
      if (v11 != 0xD00000000000001ALL)
      {
LABEL_36:
        v13 = sub_260E69834();
        goto LABEL_37;
      }
    }
  }

  else
  {
    v2 = 0x8000000260E710A0;
    if (v11 != 0xD00000000000001CLL)
    {
      goto LABEL_36;
    }
  }

  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_260E391D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = 0xD000000000000017;
  v4 = "BatterySwap_loop";
  v5 = a1;
  if (a1 == 5)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (a1 == 5)
  {
    v7 = "ProxCard_loop-charged";
  }

  else
  {
    v7 = "ProxCard_loop-charging";
  }

  v8 = 0xD000000000000015;
  if (a1 == 3)
  {
    v9 = 0xD000000000000011;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (v5 == 3)
  {
    v10 = "ProxCard_case-open-charging";
  }

  else
  {
    v10 = "ProxCard_connect-loop";
  }

  if (v5 > 4)
  {
    v9 = v6;
    v10 = v7;
  }

  if (v5 == 1)
  {
    v11 = "ProxCard_features";
  }

  else
  {
    v8 = 0xD000000000000011;
    v11 = "oxCard_L";
  }

  if (v5)
  {
    v3 = v8;
    v12 = v11;
  }

  else
  {
    v12 = "BatterySwap_loop";
  }

  if (v5 > 2)
  {
    v13 = v10;
  }

  else
  {
    v9 = v3;
    v13 = v12;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD000000000000015;
        v4 = "ProxCard_features";
      }

      else
      {
        v4 = "oxCard_L";
      }
    }

    else
    {
      v2 = 0xD000000000000017;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000016;
      v4 = "ProxCard_loop-charged";
    }

    else
    {
      v2 = 0xD000000000000014;
      v4 = "ProxCard_loop-charging";
    }
  }

  else if (a2 == 3)
  {
    v4 = "ProxCard_case-open-charging";
  }

  else
  {
    v2 = 0xD000000000000015;
    v4 = "ProxCard_connect-loop";
  }

  if (v9 == v2 && (v13 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_260E69834();
  }

  return v14 & 1;
}

uint64_t sub_260E39370(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004C5FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xEA00000000004C5FLL;
    }

    else
    {
      v5 = 0xEA0000000000525FLL;
    }

    v4 = 0x64726143786F7250;
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000001DLL;
    }

    else
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v3)
    {
      v5 = 0x8000000260E710C0;
    }

    else
    {
      v5 = 0x8000000260E710A0;
    }
  }

  if (a2 != 2)
  {
    v2 = 0xEA0000000000525FLL;
  }

  v6 = 0xD00000000000001CLL;
  v7 = 0x8000000260E710C0;
  if (a2)
  {
    v6 = 0xD00000000000001DLL;
  }

  else
  {
    v7 = 0x8000000260E710A0;
  }

  if (a2 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x64726143786F7250;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_260E69834();
  }

  return v10 & 1;
}

uint64_t sub_260E39488(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = 0xD000000000000017;
  v4 = "BatterySwap_loop";
  v5 = a1;
  if (a1 == 4)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (a1 == 4)
  {
    v7 = "ProxCard_loop-charged";
  }

  else
  {
    v7 = "ProxCard_loop-charging";
  }

  if (a1 == 3)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v8 = v6;
  }

  if (v5 == 3)
  {
    v9 = "ProxCard_connect-loop";
  }

  else
  {
    v9 = v7;
  }

  if (v5 == 1)
  {
    v10 = 0xD000000000000015;
  }

  else
  {
    v10 = 0xD000000000000011;
  }

  if (v5 == 1)
  {
    v11 = "ProxCard_features";
  }

  else
  {
    v11 = "oxCard_L";
  }

  if (v5)
  {
    v3 = v10;
    v12 = v11;
  }

  else
  {
    v12 = "BatterySwap_loop";
  }

  if (v5 > 2)
  {
    v13 = v9;
  }

  else
  {
    v8 = v3;
    v13 = v12;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v4 = "ProxCard_connect-loop";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000016;
      v4 = "ProxCard_loop-charged";
    }

    else
    {
      v2 = 0xD000000000000014;
      v4 = "ProxCard_loop-charging";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v4 = "ProxCard_features";
    }

    else
    {
      v2 = 0xD000000000000011;
      v4 = "oxCard_L";
    }
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (v8 == v2 && (v13 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_260E69834();
  }

  return v14 & 1;
}

uint64_t sub_260E395F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000706F6F6C5FLL;
  v3 = 0x64726143786F7250;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (v4)
    {
      v8 = 0x8000000260E71010;
    }

    else
    {
      v8 = 0x8000000260E70FF0;
    }
  }

  else
  {
    v5 = 0x5F656C6261736944;
    v6 = 0xEC000000706F6F6CLL;
    if (a1 == 3)
    {
      v5 = 0x64726143786F7250;
      v6 = 0xED0000706F6F6C5FLL;
    }

    if (a1 == 2)
    {
      v7 = 0xD000000000000017;
    }

    else
    {
      v7 = v5;
    }

    if (v4 == 2)
    {
      v8 = 0x8000000260E71030;
    }

    else
    {
      v8 = v6;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (a2)
    {
      v2 = 0x8000000260E71010;
    }

    else
    {
      v2 = 0x8000000260E70FF0;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v2 = 0x8000000260E71030;
      if (v7 != 0xD000000000000017)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    if (a2 != 3)
    {
      v2 = 0xEC000000706F6F6CLL;
      if (v7 != 0x5F656C6261736944)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }
  }

  if (v7 != v3)
  {
LABEL_31:
    v9 = sub_260E69834();
    goto LABEL_32;
  }

LABEL_28:
  if (v8 != v2)
  {
    goto LABEL_31;
  }

  v9 = 1;
LABEL_32:

  return v9 & 1;
}

uint64_t sub_260E39794()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE547B8);
  v1 = __swift_project_value_buffer(v0, qword_27FE547B8);
  if (qword_27FE53E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t HeadphonePairing.Configuration.engravingInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_260E16198(v2, v3, v4, v5);
}

__n128 HeadphonePairing.Configuration.engravingInformation.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_260E15F78(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

char *HeadphonePairing.Configuration.init(hardwareModel:color:timeout:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *result;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  *(a3 + 48) = -1;
  *(a3 + 16) = v4;
  *a3 = a2;
  *(a3 + 8) = a4;
  return result;
}

uint64_t HeadphonePairing.AssetRequest.assets()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(type metadata accessor for MobileAssetResult() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E399D0, 0, 0);
}

uint64_t sub_260E399D0()
{
  if (qword_27FE53DB0 != -1)
  {
    swift_once();
  }

  v1 = sub_260E68E94();
  v0[10] = __swift_project_value_buffer(v1, qword_27FE547B8);
  v2 = sub_260E68E74();
  v3 = sub_260E69474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v2, v3, "Beginning asset request", v4, 2u);
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = sub_260E3A010();
  v0[11] = v6;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_260E39B54;
  v8 = v0[9];
  v9 = v0[7];

  return (sub_260E3AE30)(v8, v6);
}

uint64_t sub_260E39B54()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *v1;
  v4[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_260E39FA4, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[14] = v5;
    *v5 = v4;
    v5[1] = sub_260E39CF0;
    v6 = v4[7];

    return sub_260E3A180((v4 + 2));
  }
}

uint64_t sub_260E39CF0()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_260E39DEC, 0, 0);
}

uint64_t sub_260E39DEC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_260E423C8(v0[9], v2, type metadata accessor for MobileAssetResult);
  sub_260E3C3D8(v3, v4, v5, v6);
  v7 = sub_260E6848C();
  sub_260E41B44(v2, type metadata accessor for MobileAssetResult);
  v8 = sub_260E68E74();
  v9 = sub_260E69474();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_260E02000, v8, v9, "Finished asset request", v10, 2u);
    MEMORY[0x2666F1EF0](v10, -1, -1);

    sub_260E3C41C(v3, v4, v5, v6);
  }

  else
  {
    sub_260E3C41C(v3, v4, v5, v6);
  }

  v11 = v0[8];
  v12 = v0[6];
  sub_260E41B44(v0[9], type metadata accessor for MobileAssetResult);
  *v12 = v7;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;

  v13 = v0[1];

  return v13();
}

uint64_t sub_260E39FA4()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_260E3A010()
{
  v14 = *(v0 + 32);
  v15 = HeadphoneHardwareModel.rawValue.getter();
  v16 = v1;
  MEMORY[0x2666F0C00](3307053, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548F0, &qword_260E6E260);
  v2 = (type metadata accessor for MobileAssetRequest() - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_260E6BDD0;
  v6 = v5 + v4;

  sub_260E689F4();
  *(v6 + v2[7]) = 0;
  v7 = (v6 + v2[8]);
  *v7 = v15;
  v7[1] = v16;
  v8 = v6 + v2[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v6 + v3;
  v10 = *(v0 + 16);
  sub_260E689F4();
  *(v9 + v2[7]) = 1;
  v11 = (v9 + v2[8]);
  *v11 = v15;
  v11[1] = v16;
  v12 = v9 + v2[9];
  *v12 = v10;
  *(v12 + 8) = 0;
  return v5;
}

uint64_t sub_260E3A180(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_260E68904();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E3A240, 0, 0);
}

uint64_t sub_260E3A240()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 40);
  *(v0 + 152) = v2;
  v3 = *(v1 + 48);
  *(v0 + 160) = v3;
  v4 = *(v1 + 56);
  *(v0 + 168) = v4;
  v5 = *(v1 + 64);
  *(v0 + 248) = v5;
  if (v5 == 255)
  {
    v26 = *(v0 + 112);
    *v26 = 0;
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = 1;
    v27 = *(v0 + 144);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    sub_260E15E24(v2, v3, v4, v5);
    if (qword_27FE53DB0 != -1)
    {
      swift_once();
    }

    v6 = sub_260E68E94();
    *(v0 + 176) = __swift_project_value_buffer(v6, qword_27FE547B8);
    v7 = sub_260E68E74();
    v8 = sub_260E69474();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_260E02000, v7, v8, "Fetching engraved asset", v9, 2u);
      MEMORY[0x2666F1EF0](v9, -1, -1);
    }

    v10 = _sSo11CKContainerC10ProductKitE16AirTagsContainerABvgZ_0();
    *(v0 + 184) = v10;
    v11 = _sSo11CKContainerC10ProductKitE31PersonalizationManateeContainerABvgZ_0();
    *(v0 + 192) = v11;
    v12 = qword_27FE53DA8;
    v13 = v10;
    v14 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 128);
    v18 = __swift_project_value_buffer(v17, qword_27FE54558);
    (*(v16 + 16))(v15, v18, v17);
    type metadata accessor for PersonalizationAssetManager();
    swift_allocObject();
    v19 = PersonalizationAssetManager.init(container:manateeContainer:cacheDirectory:)(v13, v14, v15);
    *(v0 + 200) = v19;
    v20 = swift_allocObject();
    *(v0 + 208) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v2;
    *(v20 + 32) = v3;
    *(v20 + 40) = v4;
    *(v20 + 48) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54898, &qword_260E6E1A0);
    inited = swift_initStackObject();
    *(v0 + 216) = inited;
    *(inited + 16) = xmmword_260E6BDB0;
    *(inited + 32) = 1;
    *(inited + 40) = &unk_260E6E198;
    *(inited + 48) = v20;
    sub_260E16198(v2, v3, v4, v5);

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A0, &qword_260E6E1A8);
    v23 = swift_task_alloc();
    *(v0 + 224) = v23;
    *(v23 + 16) = inited;
    *(v23 + 24) = 0x3FF0000000000000;
    v24 = *(MEMORY[0x277D859B8] + 4);
    v25 = swift_task_alloc();
    *(v0 + 232) = v25;
    *v25 = v0;
    v25[1] = sub_260E3A608;

    return MEMORY[0x282200740](v0 + 72, v22);
  }
}

uint64_t sub_260E3A608()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v10 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_260E3A828;
  }

  else
  {
    v7 = v2 + 216;
    v5 = *(v2 + 216);
    v6 = *(v7 + 8);
    swift_setDeallocating();
    v8 = *(v5 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A8, &qword_260E6E1C0);
    swift_arrayDestroy();

    v4 = sub_260E3A760;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_260E3A760()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 112);
  v8 = *(v0 + 248);

  sub_260E15F78(v6, v5, v4, v8);

  v9 = *(v0 + 88);
  *v7 = *(v0 + 72);
  v7[1] = v9;
  v10 = *(v0 + 144);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_260E3A828()
{
  v30 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 176);
  swift_setDeallocating();
  v9 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A8, &qword_260E6E1C0);
  swift_arrayDestroy();

  v10 = v1;
  v11 = sub_260E68E74();
  v12 = sub_260E69454();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 240);
    v27 = *(v0 + 160);
    v28 = *(v0 + 168);
    v14 = *(v0 + 152);
    v15 = *(v0 + 248);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 136315138;
    *(v0 + 104) = v13;
    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v19 = sub_260E69084();
    v21 = sub_260E43774(v19, v20, &v29);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_260E02000, v11, v12, "Failed to fetch engraving information: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x2666F1EF0](v17, -1, -1);
    MEMORY[0x2666F1EF0](v16, -1, -1);
    sub_260E15F78(v14, v27, v28, v15);
  }

  else
  {
    v22 = *(v0 + 240);
    sub_260E15F78(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 248));
  }

  v23 = *(v0 + 112);
  *v23 = 0;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = 1;
  v24 = *(v0 + 144);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_260E3AA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a1;
  *(v6 + 48) = a3;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  v7 = swift_task_alloc();
  *(v6 + 88) = v7;
  *v7 = v6;
  v7[1] = sub_260E3AB1C;

  return PersonalizationAssetManager.asset(for:)(v6 + 16, v6 + 48);
}

uint64_t sub_260E3AB1C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_260E1C6CC;
  }

  else
  {
    v3 = sub_260E3AC30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E3AC30()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_260E3AC54(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = a2[3];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 16);
  v17 = *(a1 + 3);
  v14 = a1[5];
  LOBYTE(a1) = *(a1 + 48);
  v15 = *v9;
  v19 = type metadata accessor for MobileAssetManager();
  v20 = &off_2873619E8;
  *&v18 = v15;
  *(v4 + 16) = v11;
  *(v4 + 24) = v12;
  *(v4 + 32) = v13;
  *(v4 + 40) = v17;
  *(v4 + 56) = v14;
  *(v4 + 64) = a1;
  sub_260E41B2C(&v18, v4 + 72);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v4;
}

uint64_t HeadphonePairing.AssetRequest.deinit()
{
  sub_260E15F78(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  return v0;
}

uint64_t HeadphonePairing.AssetRequest.__deallocating_deinit()
{
  sub_260E15F78(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_260E3AE30(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = type metadata accessor for MobileAssetRequest();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v3[17] = *(v5 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E3AF08, 0, 0);
}

uint64_t sub_260E3AF08()
{
  v1 = *(v0 + 104);
  sub_260E36150(*(v0 + 112) + 72, v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v25 = *(v0 + 152);
    v3 = *(v0 + 128);
    v24 = *(*(v0 + 120) + 20);
    v4 = *(v3 + 80);
    v5 = *(v0 + 104) + ((v4 + 32) & ~v4);
    v22 = (v4 + 16) & ~v4;
    v23 = *(v3 + 72);
    v6 = (*(v0 + 136) + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x277D84F90];
    do
    {
      v9 = *(v0 + 144);
      v8 = *(v0 + 152);
      sub_260E423C8(v5, v8, type metadata accessor for MobileAssetRequest);
      if (*(v25 + v24))
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      sub_260E428BC(v8, v9, type metadata accessor for MobileAssetRequest);
      sub_260E36150(v0 + 16, v0 + 56);
      v11 = swift_allocObject();
      sub_260E428BC(v9, v11 + v22, type metadata accessor for MobileAssetRequest);
      sub_260E41B2C((v0 + 56), v11 + v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_260E41EB0(0, v7[2] + 1, 1, v7);
      }

      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        v7 = sub_260E41EB0((v12 > 1), v13 + 1, 1, v7);
      }

      v7[2] = v13 + 1;
      v14 = &v7[3 * v13];
      v14[4] = v10;
      v14[5] = &unk_260E6E1F0;
      v14[6] = v11;
      v5 += v23;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *(v0 + 160) = v7;
  v15 = *(*(v0 + 112) + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548B8, &qword_260E6E1F8);
  type metadata accessor for MobileAssetResult();
  v17 = swift_task_alloc();
  *(v0 + 168) = v17;
  *(v17 + 16) = v7;
  *(v17 + 24) = v15;
  v18 = *(MEMORY[0x277D859B8] + 4);
  v19 = swift_task_alloc();
  *(v0 + 176) = v19;
  *v19 = v0;
  v19[1] = sub_260E3B1E8;
  v20 = *(v0 + 96);

  return MEMORY[0x282200740](v20, v16);
}

uint64_t sub_260E3B1E8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v8 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_260E3B384;
  }

  else
  {
    v5 = *(v2 + 160);
    v6 = *(v2 + 168);

    v4 = sub_260E3B30C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_260E3B30C()
{
  v1 = v0[18];
  v2 = v0[19];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_260E3B384()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v5 = v0[1];
  v6 = v0[23];

  return v5();
}

id HeadphonePairing.Assets.personalizationAsset.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_260E3C3D8(v2, v3, v4, v5);
}

ProductKit::HeadphonePairing::Assets::AdjustedImageIdentifier_optional __swiftcall HeadphonePairing.Assets.AdjustedImageIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HeadphonePairing.Assets.AdjustedImageIdentifier.rawValue.getter()
{
  *v0;
  v1 = 0xD00000000000001CLL;
  if (*v0)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x64726143786F7250;
  }
}

uint64_t sub_260E3B50C()
{
  v1 = *v0;
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E3B5CC()
{
  *v0;
  *v0;
  *v0;
  sub_260E690C4();
}

uint64_t sub_260E3B670()
{
  v1 = *v0;
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

void sub_260E3B738(unint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000525FLL;
  if (*v1 == 2)
  {
    v2 = 0xEA00000000004C5FLL;
  }

  v3 = 0xD00000000000001CLL;
  v4 = 0x8000000260E710A0;
  if (*v1)
  {
    v3 = 0xD00000000000001DLL;
    v4 = 0x8000000260E710C0;
  }

  if (*v1 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0x64726143786F7250;
    v5 = v2;
  }

  *a1 = v3;
  a1[1] = v5;
}

uint64_t HeadphonePairing.Assets.FileIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_260E69764();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_260E3B83C()
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E3B8B0()
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E3B904@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_260E69764();

  *a2 = v5 != 0;
  return result;
}

ProductKit::HeadphonePairing::Assets::VideoIdentifier_optional __swiftcall HeadphonePairing.Assets.VideoIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadphonePairing.Assets.VideoIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000015;
  v2 = *v0;
  v3 = 0xD000000000000014;
  if (v2 == 4)
  {
    v3 = 0xD000000000000016;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = v3;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v4;
  }

  *v0;
  return result;
}

uint64_t sub_260E3BAA8()
{
  *v0;
  *v0;
  *v0;
  sub_260E690C4();
}

void sub_260E3BB90(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000015;
  v3 = *v1;
  v4 = "ProxCard_connect-loop";
  v5 = "ProxCard_loop-charged";
  v6 = 0xD000000000000014;
  if (v3 == 4)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v5 = "ProxCard_loop-charging";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "ProxCard_features";
  if (v3 != 1)
  {
    v2 = 0xD000000000000011;
    v8 = "oxCard_L";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000017;
    v9 = "BatterySwap_loop";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v7;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

ProductKit::HeadphonePairing::Assets::ViewIdentifier_optional __swiftcall HeadphonePairing.Assets.ViewIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadphonePairing.Assets.ViewIdentifier.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_260E3BCF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (v3)
  {
    v5 = "ProxCard_repair-loop";
  }

  else
  {
    v5 = "caseClosedCharged";
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (*a2)
  {
    v7 = "caseClosedCharged";
  }

  else
  {
    v7 = "ProxCard_repair-loop";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_260E69834();
  }

  return v9 & 1;
}

uint64_t sub_260E3BD98()
{
  v1 = *v0;
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E3BE14()
{
  *v0;
  sub_260E690C4();
}

uint64_t sub_260E3BE7C()
{
  v1 = *v0;
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E3BEF4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_260E69764();

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

void sub_260E3BF54(unint64_t *a1@<X8>)
{
  v2 = "caseClosedCharged";
  v3 = 0xD000000000000011;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = "ProxCard_repair-loop";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

ProductKit::HeadphonePairing::Assets::VideoViewIdentifier_optional __swiftcall HeadphonePairing.Assets.VideoViewIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HeadphonePairing.Assets.VideoViewIdentifier.rawValue.getter()
{
  *v0;
  if (*v0)
  {
    return 0x72616843706F6F6CLL;
  }

  else
  {
    return 0x6F72746E69;
  }
}

uint64_t sub_260E3C070(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEB00000000646567;
  if (v2 != 1)
  {
    v3 = 0xEC000000676E6967;
  }

  if (*a1)
  {
    v4 = 0x72616843706F6F6CLL;
  }

  else
  {
    v4 = 0x6F72746E69;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0xEB00000000646567;
  if (*a2 != 1)
  {
    v6 = 0xEC000000676E6967;
  }

  if (*a2)
  {
    v7 = 0x72616843706F6F6CLL;
  }

  else
  {
    v7 = 0x6F72746E69;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_260E69834();
  }

  return v9 & 1;
}

uint64_t sub_260E3C158()
{
  v1 = *v0;
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E3C208()
{
  *v0;
  *v0;
  sub_260E690C4();
}

uint64_t sub_260E3C2A4()
{
  v1 = *v0;
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

void sub_260E3C35C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEB00000000646567;
  if (v2 != 1)
  {
    v4 = 0xEC000000676E6967;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x72616843706F6F6CLL;
  }

  else
  {
    v6 = 0x6F72746E69;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

id sub_260E3C3D8(id result, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 1)
  {
    sub_260E15E4C(result, a2);

    return a4;
  }

  return result;
}

void sub_260E3C41C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 1)
  {
    sub_260E15FB4(a1, a2);
  }
}

uint64_t HeadphonePairing.Assets.adjustedImage(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v22 - v7;
  v9 = *a1;
  v10 = *v2;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v13 = 0xEA00000000004C5FLL;
    }

    else
    {
      v13 = 0xEA0000000000525FLL;
    }

    v12 = 0x64726143786F7250;
  }

  else
  {
    if (!*a1)
    {
      v11 = v10;
      v12 = 0xD00000000000001CLL;
      v13 = 0x8000000260E710A0;
      goto LABEL_13;
    }

    v13 = 0x8000000260E710C0;
    v12 = 0xD00000000000001DLL;
  }

  v14 = sub_260E69834();
  v15 = v10;

  if (v14)
  {
    goto LABEL_14;
  }

  if (v9 != 1)
  {
    v16 = sub_260E69834();

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_13:

LABEL_14:
  v22[0] = v12;
  v22[1] = v13;
  v22[2] = v10;
  v22[3] = 6778480;
  v22[4] = 0xE300000000000000;
  v23 = 1;
  GenericAsset.fileURL.getter(v8);
  v17 = sub_260E68904();
  v18 = (*(*(v17 - 8) + 48))(v8, 1, v17);
  sub_260E155E4(v8, &qword_27FE54320, &qword_260E6E720);
  if (v18 == 1)
  {

    v12 = 0xD000000000000014;
    v13 = 0x8000000260E72B10;
  }

LABEL_16:
  v19 = *(type metadata accessor for AdjustedAsset() + 20);

  v20 = v10;

  sub_260E50238(a2 + v19);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v20;
  *(a2 + 24) = 6778480;
  *(a2 + 32) = 0xE300000000000000;
  *(a2 + 40) = 1;
}

id HeadphonePairing.Assets.file(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x8000000260E71100;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0x7473696C70;
  *(a1 + 32) = 0xE500000000000000;
  *(a1 + 40) = 0;
  return v2;
}

uint64_t HeadphonePairing.Assets.video(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0xD000000000000015;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = *a1;
  v11 = *v2;
  if (v10 > 2)
  {
    if (v10 != 3)
    {
      v13 = "ProxCard_loop-charged";
      if (v10 == 4)
      {
        v14 = 0xD000000000000016;
      }

      else
      {
        v14 = 0xD000000000000014;
      }

      if (v10 != 4)
      {
        v13 = "ProxCard_loop-charging";
      }

      goto LABEL_13;
    }

    v12 = "ProxCard_connect-loop";
  }

  else
  {
    if (!*a1)
    {
      v14 = 0xD000000000000017;
      v13 = "BatterySwap_loop";
      goto LABEL_13;
    }

    v12 = "ProxCard_features";
    if (v10 != 1)
    {
      v13 = "oxCard_L";
      v14 = 0xD000000000000011;
LABEL_13:
      v27 = "BatterySwap_loop";
      v15 = v13 | 0x8000000000000000;
      goto LABEL_14;
    }
  }

  v15 = v12 | 0x8000000000000000;
  if ((v12 | 0x8000000000000000) == 0x8000000260E71120)
  {
    v28 = *v2;
    v19 = v11;
LABEL_30:

    v14 = v5;
    goto LABEL_31;
  }

  v27 = "BatterySwap_loop";
  v14 = 0xD000000000000015;
LABEL_14:
  v16 = sub_260E69834();
  v17 = v11;

  if (v16)
  {
    goto LABEL_32;
  }

  v28 = v11;
  if (v10 > 2)
  {
    if (v10 != 3)
    {
      goto LABEL_27;
    }

    v18 = 0x8000000260E71140;
  }

  else
  {
    if (v10 != 1)
    {
      goto LABEL_27;
    }

    v18 = 0x8000000260E71120;
  }

  if (0x8000000260E71140 == v18)
  {
LABEL_29:
    v5 = v14;
    goto LABEL_30;
  }

LABEL_27:
  v20 = sub_260E69834();

  if ((v20 & 1) == 0)
  {
    v11 = v28;
    if (v10 != 4)
    {
      v26 = sub_260E69834();

      if ((v26 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    goto LABEL_29;
  }

LABEL_31:
  v11 = v28;
LABEL_32:
  v29 = v14;
  v30 = v15;
  v31 = v11;
  v32 = 7761773;
  v33 = 0xE300000000000000;
  v34 = 0;
  GenericAsset.fileURL.getter(v9);
  v21 = sub_260E68904();
  v22 = (*(*(v21 - 8) + 48))(v9, 1, v21);
  sub_260E155E4(v9, &qword_27FE54320, &qword_260E6E720);
  if (v22 == 1)
  {

    v15 = 0xED0000706F6F6C5FLL;
    v14 = 0x64726143786F7250;
  }

LABEL_34:
  v23 = *(type metadata accessor for AdjustedAsset() + 20);

  v24 = v11;

  sub_260E50238(a2 + v23);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v24;
  *(a2 + 24) = 7761773;
  *(a2 + 32) = 0xE300000000000000;
  *(a2 + 40) = 0;
}

char *HeadphonePairing.Assets.videoView(_:)(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v175 = &v152[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v166 = &v152[-v7];
  v165 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  v8 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v167 = &v152[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v158 = &v152[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v164 = &v152[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v162 = &v152[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v173 = &v152[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v170 = &v152[-v21];
  MEMORY[0x28223BE20](v20);
  v176 = &v152[-v22];
  v23 = type metadata accessor for AdjustedAsset();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v163 = &v152[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = MEMORY[0x28223BE20](v25);
  v161 = &v152[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v160 = &v152[-v30];
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v152[-v32];
  MEMORY[0x28223BE20](v31);
  v35 = &v152[-v34];
  v36 = sub_260E68904();
  v181 = *(v36 - 8);
  v37 = *(v181 + 64);
  v38 = MEMORY[0x28223BE20](v36);
  v157 = &v152[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = MEMORY[0x28223BE20](v38);
  v156 = &v152[-v41];
  v42 = MEMORY[0x28223BE20](v40);
  v171 = &v152[-v43];
  v44 = MEMORY[0x28223BE20](v42);
  v169 = &v152[-v45];
  v46 = MEMORY[0x28223BE20](v44);
  v174 = &v152[-v47];
  MEMORY[0x28223BE20](v46);
  v180 = &v152[-v48];
  v172 = *a1;
  v49 = v1[1];
  v51 = v1[2];
  v50 = v1[3];
  v52 = v1[4];
  *&v178 = *v1;
  *&v182 = v178;
  *(&v182 + 1) = v49;
  *(&v178 + 1) = v49;
  *&v179 = v51;
  *&v183 = v51;
  *(&v183 + 1) = v50;
  *(&v179 + 1) = v50;
  v177 = v52;
  *&v184 = v52;
  v191 = 1;
  HeadphonePairing.Assets.video(_:)(&v191, v35);
  v53 = *v35;
  v54 = *(v35 + 1);
  v56 = *(v35 + 2);
  v55 = *(v35 + 3);
  v57 = *(v35 + 4);
  v58 = v35[40];

  v59 = v56;

  sub_260E41B44(v35, type metadata accessor for AdjustedAsset);
  *&v182 = v53;
  *(&v182 + 1) = v54;
  *&v183 = v59;
  *(&v183 + 1) = v55;
  *&v184 = v57;
  BYTE8(v184) = v58;
  v60 = v176;
  GenericAsset.fileURL.getter(v176);
  v62 = (v181 + 48);
  v61 = *(v181 + 48);
  v63 = v36;
  if ((v61)(v60, 1, v36) != 1)
  {
    v64 = *(v181 + 32);
    v168 = v181 + 32;
    v159 = v64;
    v64(v180, v60, v36);

    v182 = v178;
    v183 = v179;
    v65 = v177;
    *&v184 = v177;
    v191 = 0;
    HeadphonePairing.Assets.video(_:)(&v191, v33);
    v66 = *v33;
    v67 = *(v33 + 1);
    v176 = v61;
    v68 = *(v33 + 2);
    v69 = *(v33 + 3);
    v70 = *(v33 + 4);
    v71 = v33[40];

    v72 = v68;

    sub_260E41B44(v33, type metadata accessor for AdjustedAsset);
    *&v182 = v66;
    *(&v182 + 1) = v67;
    *&v183 = v72;
    *(&v183 + 1) = v69;
    *&v184 = v70;
    BYTE8(v184) = v71;
    v73 = v170;
    GenericAsset.fileURL.getter(v170);
    v74 = v63;
    if ((v176)(v73, 1, v63) == 1)
    {
      (*(v181 + 8))(v180, v63);
      sub_260E155E4(v73, &qword_27FE54320, &qword_260E6E720);

      goto LABEL_5;
    }

    v83 = v65;
    v159(v174, v73, v63);

    v170 = v62;
    v84 = v178;
    v182 = v178;
    v85 = v179;
    v183 = v179;
    *&v184 = v65;
    v191 = 2;
    v86 = v160;
    HeadphonePairing.Assets.video(_:)(&v191, v160);
    v87 = *(v86 + 1);
    v155 = *v86;
    v88 = *(v86 + 2);
    v154 = *(v86 + 3);
    v89 = *(v86 + 4);
    v175 = v74;
    v153 = v86[40];

    v90 = v88;

    sub_260E41B44(v86, type metadata accessor for AdjustedAsset);
    *&v182 = v155;
    *(&v182 + 1) = v87;
    *&v183 = v90;
    *(&v183 + 1) = v154;
    *&v184 = v89;
    BYTE8(v184) = v153;
    GenericAsset.fileURL.getter(v173);

    v182 = v84;
    v183 = v85;
    *&v184 = v83;
    v191 = 3;
    v91 = v161;
    HeadphonePairing.Assets.video(_:)(&v191, v161);
    v93 = *v91;
    v92 = *(v91 + 1);
    v94 = *(v91 + 2);
    v95 = *(v91 + 3);
    v96 = *(v91 + 4);
    v97 = v91[40];

    v98 = v94;
    v99 = v176;
    v100 = v98;

    sub_260E41B44(v91, type metadata accessor for AdjustedAsset);
    *&v182 = v93;
    *(&v182 + 1) = v92;
    *&v183 = v100;
    *(&v183 + 1) = v95;
    *&v184 = v96;
    BYTE8(v184) = v97;
    v101 = v175;
    v102 = v162;
    GenericAsset.fileURL.getter(v162);

    if ((v99)(v102, 1, v101) == 1)
    {
      v103 = v169;
      (*(v181 + 16))(v169, v180, v101);
      if ((v99)(v102, 1, v101) != 1)
      {
        sub_260E155E4(v102, &qword_27FE54320, &qword_260E6E720);
      }
    }

    else
    {
      v103 = v169;
      v159(v169, v102, v101);
    }

    v182 = v178;
    v183 = v179;
    *&v184 = v177;
    v191 = 4;
    v104 = v163;
    HeadphonePairing.Assets.video(_:)(&v191, v163);
    v106 = *v104;
    v105 = *(v104 + 1);
    v107 = *(v104 + 2);
    v108 = *(v104 + 3);
    v109 = *(v104 + 4);
    v110 = v104[40];

    v111 = v107;

    sub_260E41B44(v104, type metadata accessor for AdjustedAsset);
    *&v182 = v106;
    *(&v182 + 1) = v105;
    *&v183 = v111;
    *(&v183 + 1) = v108;
    *&v184 = v109;
    BYTE8(v184) = v110;
    v112 = v164;
    GenericAsset.fileURL.getter(v164);

    v113 = v176;
    if ((v176)(v112, 1, v101) == 1)
    {
      v114 = v181;
      (*(v181 + 16))(v171, v180, v101);
      if ((v113)(v112, 1, v101) != 1)
      {
        sub_260E155E4(v112, &qword_27FE54320, &qword_260E6E720);
      }
    }

    else
    {
      v159(v171, v112, v101);
      v114 = v181;
    }

    if (v172)
    {
      v115 = sub_260E69834();

      v113 = v176;
      if ((v115 & 1) == 0)
      {
        if (v172 == 2)
        {
          v116 = sub_260E69834();

          v117 = v167;
          if ((v116 & 1) == 0)
          {
            (*(v114 + 16))(v167, v171, v101);
            swift_storeEnumTagMultiPayload();
            v118 = v178;
            goto LABEL_30;
          }
        }

        else
        {

          v117 = v167;
        }

        (*(v114 + 16))(v117, v103, v101);
LABEL_29:
        swift_storeEnumTagMultiPayload();
        v118 = v178;
        if (!v172)
        {
          swift_bridgeObjectRelease_n();
          v131 = 880.0;
          v130 = 750.0;
LABEL_38:
          type metadata accessor for MobileAssetManager();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v133 = [objc_opt_self() bundleForClass_];
          v134 = sub_260E68FF4();

          v135 = sub_260E68FF4();
          v136 = [v133 URLForResource:v134 withExtension:v135];

          if (v136)
          {
            v137 = v157;
            sub_260E688C4();

            v138 = v166;
            sub_260E423C8(v117, v166, type metadata accessor for VideoViewConfiguration.VideoSequence);
            v139 = type metadata accessor for VideoViewConfiguration(0);
            sub_260E50238(&v138[v139[5]]);
            v140 = v139[6];
            v159(&v138[v140], v137, v101);
            (*(v114 + 56))(&v138[v140], 0, 1, v101);
            v141 = v139[7];
            v142 = sub_260E68DB4();
            (*(*(v142 - 8) + 56))(&v138[v141], 1, 1, v142);
            sub_260E194C8(&v182);
            v143 = &v138[v139[8]];
            *v143 = v130;
            v143[1] = v131;
            *&v138[v139[9]] = 0;
            v144 = &v138[v139[10]];
            v145 = v185;
            *(v144 + 2) = v184;
            *(v144 + 3) = v145;
            v144[128] = v190;
            v146 = v189;
            *(v144 + 6) = v188;
            *(v144 + 7) = v146;
            v147 = v187;
            *(v144 + 4) = v186;
            *(v144 + 5) = v147;
            v148 = v183;
            *v144 = v182;
            *(v144 + 1) = v148;
            *&v138[v139[11]] = 0;
            (*(*(v139 - 1) + 56))(v138, 0, 1, v139);
          }

          else
          {
            v149 = type metadata accessor for VideoViewConfiguration(0);
            v138 = v166;
            (*(*(v149 - 8) + 56))(v166, 1, 1, v149);
          }

          *&v182 = v118;
          *(&v182 + 1) = *(&v178 + 1);
          v183 = v179;
          *&v184 = v177;
          v150 = sub_260E3DF8C(v138);
          sub_260E155E4(v138, &qword_27FE544D8, &unk_260E6C160);
          sub_260E41B44(v117, type metadata accessor for VideoViewConfiguration.VideoSequence);
          v151 = *(v114 + 8);
          v151(v171, v101);
          v151(v103, v101);
          sub_260E155E4(v173, &qword_27FE54320, &qword_260E6E720);
          v151(v174, v101);
          v151(v180, v101);
          return v150;
        }

LABEL_30:
        v129 = sub_260E69834();

        if (v129)
        {
          v130 = 750.0;
        }

        else
        {
          v130 = 1050.0;
        }

        if (v129)
        {
          v131 = 880.0;
        }

        else
        {
          v131 = 750.0;
        }

        sub_260E69834();

        goto LABEL_38;
      }
    }

    else
    {
    }

    v119 = v158;
    sub_260E15684(v173, v158, &qword_27FE54320, &qword_260E6E720);
    if ((v113)(v119, 1, v101) == 1)
    {
      sub_260E155E4(v119, &qword_27FE54320, &qword_260E6E720);
      v120 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
      v121 = *(v114 + 16);
      v117 = v167;
      v121(v167, v180, v101);
      v121((v117 + v120), v174, v101);
      v114 = v181;
    }

    else
    {
      v122 = v156;
      v123 = v119;
      v124 = v159;
      v159(v156, v123, v101);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
      v126 = *(v125 + 48);
      v127 = *(v125 + 64);
      v128 = *(v181 + 16);
      v117 = v167;
      v128(v167, v180, v101);
      v128((v117 + v126), v174, v101);
      v114 = v181;
      v103 = v169;
      v124(v117 + v127, v122, v101);
    }

    goto LABEL_29;
  }

  sub_260E155E4(v60, &qword_27FE54320, &qword_260E6E720);

LABEL_5:

  if (qword_27FE53DB0 != -1)
  {
    swift_once();
  }

  v75 = sub_260E68E94();
  __swift_project_value_buffer(v75, qword_27FE547B8);
  v76 = sub_260E68E74();
  v77 = sub_260E69474();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_260E02000, v76, v77, "Could not find asset files", v78, 2u);
    MEMORY[0x2666F1EF0](v78, -1, -1);
  }

  v79 = type metadata accessor for VideoViewConfiguration(0);
  v80 = v175;
  (*(*(v79 - 8) + 56))(v175, 1, 1, v79);
  v81 = objc_allocWithZone(type metadata accessor for AdjustedVideoView());
  return sub_260E559EC(v80);
}

char *sub_260E3DF8C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for VideoViewConfiguration(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *(v1 + 32);
  sub_260E15684(a1, v9, &qword_27FE544D8, &unk_260E6C160);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_260E155E4(v9, &qword_27FE544D8, &unk_260E6C160);
LABEL_5:
    sub_260E15684(a1, v7, &qword_27FE544D8, &unk_260E6C160);
    v19 = objc_allocWithZone(type metadata accessor for AdjustedVideoView());
    return sub_260E559EC(v7);
  }

  sub_260E428BC(v9, v17, type metadata accessor for VideoViewConfiguration);
  if (v18 == 1)
  {
    sub_260E41B44(v17, type metadata accessor for VideoViewConfiguration);
    goto LABEL_5;
  }

  sub_260E423C8(v17, v15, type metadata accessor for VideoViewConfiguration);
  v21 = objc_allocWithZone(type metadata accessor for PersonalizedVideoView(0));
  v22 = sub_260E0CE14(v15);
  sub_260E41B44(v17, type metadata accessor for VideoViewConfiguration);
  return v22;
}

id sub_260E3E360@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x8000000260E71100;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0x7473696C70;
  *(a1 + 32) = 0xE500000000000000;
  *(a1 + 40) = 0;
  return v2;
}

uint64_t sub_260E3E3A4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 96) = a4;
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 72) = a1;
  v5 = type metadata accessor for MobileAssetResult();
  *(v4 + 104) = v5;
  v6 = *(v5 - 8);
  *(v4 + 112) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548C0, &qword_260E6E210) - 8) + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548B8, &qword_260E6E1F8);
  *(v4 + 136) = v9;
  v10 = *(v9 - 8);
  *(v4 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548C8, &qword_260E6E218) - 8) + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545A0, &qword_260E6CA30) - 8) + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E3E5D0, 0, 0);
}

uint64_t sub_260E3E5D0()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v0[29] = v2;
  v54 = v2;
  if (v2)
  {
    v56 = v0 + 2;
    v59 = *v0[10];
    v3 = sub_260E69304();
    v4 = *(v3 - 8);
    v58 = *(v4 + 56);
    v57 = (v4 + 48);
    v55 = (v4 + 8);
    v5 = (v1 + 48);
    v6 = &qword_27FE545A0;
    v7 = &qword_260E6CA30;
    v8 = v54;
    do
    {
      v62 = v8;
      v13 = v0[27];
      v12 = v0[28];
      v14 = v7;
      v15 = v6;
      v17 = *(v5 - 2);
      v16 = *(v5 - 1);
      v61 = v5;
      v18 = *v5;
      v58(v12, 1, 1, v3);
      v19 = swift_allocObject();
      *(v19 + 16) = 0u;
      v20 = (v19 + 16);
      *(v19 + 32) = v17;
      *(v19 + 40) = v16;
      v6 = v15;
      v7 = v14;
      v0 = v60;
      *(v19 + 48) = v18;
      sub_260E15684(v12, v13, v6, v7);
      LODWORD(v13) = (*v57)(v13, 1, v3);
      swift_retain_n();
      v21 = v60[27];
      if (v13 == 1)
      {
        sub_260E155E4(v60[27], v6, v7);
        if (*v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_260E692F4();
        (*v55)(v21, v3);
        if (*v20)
        {
LABEL_9:
          v24 = *(v19 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_260E69284();
          v23 = v25;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v22 = 0;
      v23 = 0;
LABEL_10:

      if (v23 | v22)
      {
        v9 = v56;
        *v56 = 0;
        v56[1] = 0;
        v60[4] = v22;
        v60[5] = v23;
      }

      else
      {
        v9 = 0;
      }

      v10 = v60[28];
      v11 = v60[17];
      v60[6] = 1;
      v60[7] = v9;
      v60[8] = v59;
      swift_task_create();

      sub_260E155E4(v10, v6, v7);
      v5 = v61 + 3;
      v8 = v62 - 1;
    }

    while (v62 != 1);
  }

  v26 = v0[26];
  v27 = v0[12];
  v28 = v0[10];
  v29 = sub_260E69304();
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v27;
  sub_260E40A7C(v26, &unk_260E6E238, v30, &qword_27FE548B8, &qword_260E6E1F8);
  sub_260E155E4(v26, &qword_27FE545A0, &qword_260E6CA30);
  if (v54)
  {
    v31 = v0[11];
    v34 = *(v31 + 32);
    v32 = v31 + 32;
    v33 = v34;
    v35 = *(v32 + 16);

    v40 = 1;
LABEL_14:
    v41 = (v32 + 24 * v40);
    while (1)
    {
      if (v54 == v40)
      {

        goto LABEL_22;
      }

      if (v40 >= v54)
      {
        break;
      }

      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_26;
      }

      v44 = *v41;
      v41 += 3;
      v43 = v44;
      ++v40;
      if (v33 < v44)
      {
        v45 = *(v41 - 1);

        v40 = v42;
        v33 = v43;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v33 = -1;
LABEL_22:
    v60[30] = v33;
    v46 = v60[25];
    v47 = v60[13];
    v48 = v60[14];
    v49 = *(v48 + 56);
    v60[31] = v49;
    v60[32] = (v48 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v49(v46, 1, 1, v47);
    v60[33] = -1;
    v60[34] = 0;
    v50 = *(MEMORY[0x277D85818] + 4);
    v51 = swift_task_alloc();
    v60[35] = v51;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D0, &qword_260E6E240);
    *v51 = v60;
    v51[1] = sub_260E3EAA8;
    v36 = v60[16];
    v52 = v60[10];
    v37 = 0;
    v38 = 0;
  }

  return MEMORY[0x2822004D0](v36, v37, v38, v39);
}

uint64_t sub_260E3EAA8()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_260E3F398;
  }

  else
  {
    v3 = sub_260E3EBBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E3EBBC()
{
  v1 = *(v0 + 128);
  if ((*(*(v0 + 144) + 48))(v1, 1, *(v0 + 136)) != 1)
  {
    v4 = *(v0 + 152);
    v3 = *(v0 + 160);
    sub_260E38F58(v1, v3, &qword_27FE548B8, &qword_260E6E1F8);
    sub_260E15684(v3, v4, &qword_27FE548B8, &qword_260E6E1F8);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248);
    if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
    {
      v6 = *(v0 + 200);
      v7 = *(v0 + 176);
      v8 = *(v0 + 136);
      v9 = *(v0 + 104);
      v10 = *(v0 + 112);
      v11 = **(v0 + 80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      sub_260E69354();
      sub_260E15684(v6, v7, &qword_27FE548C8, &qword_260E6E218);
      v12 = (*(v10 + 48))(v7, 1, v9);
      v13 = *(v0 + 176);
      if (v12 == 1)
      {
        v14 = *(v0 + 160);
        sub_260E155E4(*(v0 + 176), &qword_27FE548C8, &qword_260E6E218);
        sub_260E15590();
        swift_allocError();
        *v15 = xmmword_260E6D940;
        *(v15 + 16) = 2;
        swift_willThrow();
        v16 = v14;
LABEL_6:
        sub_260E155E4(v16, &qword_27FE548B8, &qword_260E6E1F8);
        goto LABEL_7;
      }

      v50 = *(v0 + 176);
LABEL_17:
      v56 = *(v0 + 216);
      v55 = *(v0 + 224);
      v58 = *(v0 + 200);
      v57 = *(v0 + 208);
      v59 = *(v0 + 192);
      v73 = *(v0 + 184);
      v75 = *(v0 + 168);
      v77 = *(v0 + 152);
      v79 = *(v0 + 128);
      v80 = *(v0 + 120);
      v60 = *(v0 + 72);
      sub_260E155E4(*(v0 + 160), &qword_27FE548B8, &qword_260E6E1F8);
      sub_260E155E4(v58, &qword_27FE548C8, &qword_260E6E218);
      sub_260E428BC(v50, v60, type metadata accessor for MobileAssetResult);

      v25 = *(v0 + 8);
      goto LABEL_18;
    }

    v26 = *(v0 + 272);
    v27 = *(v0 + 152);
    v28 = *(v27 + *(v5 + 48));
    v29 = sub_260E38F58(v27, *(v0 + 192), &qword_27FE548C8, &qword_260E6E218);
    v33 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return MEMORY[0x2822004D0](v29, v30, v31, v32);
    }

    v34 = *(v0 + 184);
    v35 = *(v0 + 104);
    v36 = *(v0 + 112);
    sub_260E15684(*(v0 + 192), v34, &qword_27FE548C8, &qword_260E6E218);
    v37 = *(v36 + 48);
    v38 = v37(v34, 1, v35);
    v39 = *(v0 + 184);
    if (v38 == 1)
    {
      v40 = *(v0 + 232);
      sub_260E155E4(v39, &qword_27FE548C8, &qword_260E6E218);
      if (v33 == v40)
      {
        v42 = (v0 + 168);
        v41 = *(v0 + 168);
        v43 = *(v0 + 200);
        v44 = *(v0 + 136);
        v45 = *(v0 + 104);
        v46 = **(v0 + 80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
        sub_260E69354();
        sub_260E15684(v43, v41, &qword_27FE548C8, &qword_260E6E218);
        if (v37(v41, 1, v45) == 1)
        {
          v47 = *(v0 + 192);
          v48 = *(v0 + 160);
          sub_260E155E4(*(v0 + 168), &qword_27FE548C8, &qword_260E6E218);
          sub_260E15590();
          swift_allocError();
          *v49 = xmmword_260E6D930;
          *(v49 + 16) = 2;
          swift_willThrow();
          sub_260E155E4(v47, &qword_27FE548C8, &qword_260E6E218);
          v16 = v48;
          goto LABEL_6;
        }

        goto LABEL_16;
      }

      v62 = *(v0 + 160);
      sub_260E155E4(*(v0 + 192), &qword_27FE548C8, &qword_260E6E218);
      sub_260E155E4(v62, &qword_27FE548B8, &qword_260E6E1F8);
    }

    else
    {
      v42 = (v0 + 120);
      v51 = *(v0 + 240);
      sub_260E428BC(v39, *(v0 + 120), type metadata accessor for MobileAssetResult);
      if (v28 == v51)
      {
        v52 = *(v0 + 136);
        v53 = **(v0 + 80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
        sub_260E69354();
LABEL_16:
        v50 = *v42;
        sub_260E155E4(*(v0 + 192), &qword_27FE548C8, &qword_260E6E218);
        v54 = *(v0 + 176);
        goto LABEL_17;
      }

      v63 = *(v0 + 264);
      v64 = *(v0 + 160);
      sub_260E155E4(*(v0 + 192), &qword_27FE548C8, &qword_260E6E218);
      sub_260E155E4(v64, &qword_27FE548B8, &qword_260E6E1F8);
      if (v63 < v28)
      {
        v66 = *(v0 + 248);
        v65 = *(v0 + 256);
        v67 = *(v0 + 200);
        v68 = *(v0 + 120);
        v69 = *(v0 + 104);
        sub_260E155E4(v67, &qword_27FE548C8, &qword_260E6E218);
        sub_260E428BC(v68, v67, type metadata accessor for MobileAssetResult);
        v66(v67, 0, 1, v69);
        goto LABEL_26;
      }

      sub_260E41B44(*(v0 + 120), type metadata accessor for MobileAssetResult);
    }

    v28 = *(v0 + 264);
LABEL_26:
    *(v0 + 264) = v28;
    *(v0 + 272) = v33;
    v70 = *(MEMORY[0x277D85818] + 4);
    v71 = swift_task_alloc();
    *(v0 + 280) = v71;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D0, &qword_260E6E240);
    *v71 = v0;
    v71[1] = sub_260E3EAA8;
    v29 = *(v0 + 128);
    v72 = *(v0 + 80);
    v30 = 0;
    v31 = 0;

    return MEMORY[0x2822004D0](v29, v30, v31, v32);
  }

  sub_260E155E4(v1, &qword_27FE548C0, &qword_260E6E210);
  sub_260E15590();
  swift_allocError();
  *v2 = xmmword_260E6D940;
  *(v2 + 16) = 2;
  swift_willThrow();
LABEL_7:
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  v19 = *(v0 + 208);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v23 = *(v0 + 168);
  v22 = *(v0 + 176);
  v24 = *(v0 + 160);
  v74 = *(v0 + 152);
  v76 = *(v0 + 128);
  v78 = *(v0 + 120);
  sub_260E155E4(*(v0 + 200), &qword_27FE548C8, &qword_260E6E218);

  v25 = *(v0 + 8);
LABEL_18:

  return v25();
}

uint64_t sub_260E3F398()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v0[19];
  v12 = v0[16];
  v13 = v0[15];
  v14 = v0[36];
  sub_260E155E4(v0[25], &qword_27FE548C8, &qword_260E6E218);

  v9 = v0[1];

  return v9();
}

uint64_t sub_260E3F4B0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 136) = a4;
  *(v4 + 120) = a2;
  *(v4 + 128) = a3;
  *(v4 + 112) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545A0, &qword_260E6CA30) - 8) + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E3F56C, 0, 0);
}

uint64_t sub_260E3F56C()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  *(v0 + 168) = v2;
  v49 = v2;
  if (v2)
  {
    v51 = (v0 + 56);
    v54 = **(v0 + 120);
    v3 = sub_260E69304();
    v4 = *(v3 - 8);
    v53 = *(v4 + 56);
    v52 = (v4 + 48);
    v50 = (v4 + 8);
    v5 = (v1 + 48);
    v6 = &qword_27FE545A0;
    v7 = &qword_260E6CA30;
    v8 = v49;
    do
    {
      v57 = v8;
      v11 = *(v0 + 152);
      v10 = *(v0 + 160);
      v12 = v7;
      v13 = v6;
      v14 = *(v5 - 2);
      v15 = *(v5 - 1);
      v56 = v5;
      v16 = *v5;
      v53(v10, 1, 1, v3);
      v17 = swift_allocObject();
      *(v17 + 16) = 0u;
      v18 = (v17 + 16);
      *(v17 + 32) = v14;
      *(v17 + 40) = v15;
      v6 = v13;
      v7 = v12;
      v0 = v55;
      *(v17 + 48) = v16;
      sub_260E15684(v10, v11, v6, v7);
      LODWORD(v11) = (*v52)(v11, 1, v3);
      swift_retain_n();
      v19 = *(v55 + 152);
      if (v11 == 1)
      {
        sub_260E155E4(*(v55 + 152), v6, v7);
        if (*v18)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_260E692F4();
        (*v50)(v19, v3);
        if (*v18)
        {
LABEL_8:
          v22 = *(v17 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v20 = sub_260E69284();
          v21 = v23;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v20 = 0;
      v21 = 0;
LABEL_9:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A0, &qword_260E6E1A8);
      v24 = (v21 | v20);
      if (v21 | v20)
      {
        v24 = v51;
        *v51 = 0;
        v51[1] = 0;
        *(v55 + 72) = v20;
        *(v55 + 80) = v21;
      }

      v9 = *(v55 + 160);
      *(v55 + 88) = 1;
      *(v55 + 96) = v24;
      *(v55 + 104) = v54;
      swift_task_create();

      sub_260E155E4(v9, v6, v7);
      v5 = v56 + 3;
      v8 = v57 - 1;
    }

    while (v57 != 1);
  }

  v25 = *(v0 + 144);
  v26 = *(v0 + 136);
  v27 = *(v0 + 120);
  v28 = sub_260E69304();
  (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v26;
  sub_260E40A7C(v25, &unk_260E6E1E0, v29, &qword_27FE548A0, &qword_260E6E1A8);
  sub_260E155E4(v25, &qword_27FE545A0, &qword_260E6CA30);
  if (v49)
  {
    v30 = *(v0 + 128);
    v33 = *(v30 + 32);
    v31 = v30 + 32;
    v32 = v33;
    v34 = *(v31 + 16);

    v39 = 1;
LABEL_13:
    v40 = (v31 + 24 * v39);
    while (1)
    {
      if (v49 == v39)
      {

        goto LABEL_21;
      }

      if (v39 >= v49)
      {
        break;
      }

      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_25;
      }

      v43 = *v40;
      v40 += 3;
      v42 = v43;
      ++v39;
      if (v32 < v43)
      {
        v44 = *(v40 - 1);

        v39 = v41;
        v32 = v42;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    v32 = -1;
LABEL_21:
    *(v55 + 224) = 1;
    *(v55 + 192) = 0u;
    *(v55 + 208) = 0u;
    *(v55 + 176) = v32;
    *(v55 + 184) = -1;
    v45 = *(MEMORY[0x277D85818] + 4);
    v46 = swift_task_alloc();
    *(v55 + 232) = v46;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548B0, &qword_260E6E1E8);
    *v46 = v55;
    v46[1] = sub_260E3FA30;
    v47 = *(v55 + 120);
    v35 = v55 + 16;
    v36 = 0;
    v37 = 0;
  }

  return MEMORY[0x2822004D0](v35, v36, v37, v38);
}

uint64_t sub_260E3FA30()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_260E40070;
  }

  else
  {
    v3 = sub_260E3FB44;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E3FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  if (v5 != 3)
  {
    v12 = *(v4 + 16);
    v13 = *(v4 + 32);
    v14 = *(v4 + 48);
    if (v5 == 2)
    {
      v15 = *(v4 + 224);
      v16 = **(v4 + 120);
      v17 = *(v4 + 16);
      v55 = *(v4 + 16);
      v18 = *(v4 + 24);
      sub_260E423A8(v12, *(&v12 + 1), v13, 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A0, &qword_260E6E1A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      sub_260E69354();
      if (v15 == 1)
      {
        sub_260E15590();
        swift_allocError();
        *v19 = xmmword_260E6D940;
        *(v19 + 16) = 2;
        swift_willThrow();
        v20 = v17;
        v21 = v18;
        v22 = v13;
        v23 = 2;
LABEL_6:
        sub_260E42388(v20, v21, v22, v23);
        goto LABEL_7;
      }

LABEL_13:
      v52 = *(v4 + 200);
      v53 = *(v4 + 216);
      v35 = v55;
LABEL_16:
      v44 = *(v4 + 152);
      v43 = *(v4 + 160);
      v45 = *(v4 + 144);
      v46 = *(v4 + 112);
      sub_260E42388(v35, *(&v35 + 1), v13, v5);
      *v46 = v52;
      v46[1] = v53;

      v27 = *(v4 + 8);
      goto LABEL_17;
    }

    v28 = *(v4 + 192);
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return MEMORY[0x2822004D0](a1, a2, a3, a4);
    }

    if (v5 == 1)
    {
      v30 = *(v4 + 224);
      if (v29 == *(v4 + 168))
      {
        v31 = **(v4 + 120);
        v32 = *(v4 + 16);
        v55 = *(v4 + 16);
        v33 = *(v4 + 24);
        sub_260E423A8(v12, *(&v12 + 1), v13, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A0, &qword_260E6E1A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
        sub_260E69354();
        if (v30 == 1)
        {
          sub_260E15590();
          swift_allocError();
          *v34 = xmmword_260E6D930;
          *(v34 + 16) = 2;
          swift_willThrow();
          v20 = v32;
          v21 = v33;
          v22 = v13;
          v23 = 1;
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      v13 = *(v4 + 216);
      v48 = *(v4 + 200);
      v5 = *(v4 + 224);
    }

    else
    {
      if (v14 == *(v4 + 176))
      {
        v36 = *(v4 + 216);
        v54 = *(v4 + 224);
        v38 = *(v4 + 200);
        v37 = *(v4 + 208);
        v39 = **(v4 + 120);
        v40 = *(v4 + 16);
        sub_260E423B8(v12, *(&v12 + 1), v13, v5);
        sub_260E3C3D8(v40, *(&v40 + 1), v13, v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548A0, &qword_260E6E1A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
        sub_260E69354();
        sub_260E3C41C(v38, v37, v36, v54);
        sub_260E3C41C(v40, *(&v40 + 1), v13, v5);
        v35 = v40;
        v41 = *(v4 + 176);
        *&v42 = v13;
        *(&v42 + 1) = v5;
        v52 = v40;
        v53 = v42;
        goto LABEL_16;
      }

      if (*(v4 + 184) < v14)
      {
        v56 = *(v4 + 16);
        sub_260E3C41C(*(v4 + 200), *(v4 + 208), *(v4 + 216), *(v4 + 224));
        v48 = v56;
        goto LABEL_25;
      }

      sub_260E3C41C(v12, *(&v12 + 1), *(v4 + 32), *(v4 + 40));
      v13 = *(v4 + 216);
      v5 = *(v4 + 224);
      v48 = *(v4 + 200);
    }

    v14 = *(v4 + 184);
LABEL_25:
    *(v4 + 216) = v13;
    *(v4 + 224) = v5;
    *(v4 + 200) = v48;
    *(v4 + 184) = v14;
    *(v4 + 192) = v29;
    v49 = *(MEMORY[0x277D85818] + 4);
    v50 = swift_task_alloc();
    *(v4 + 232) = v50;
    a4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548B0, &qword_260E6E1E8);
    *v50 = v4;
    v50[1] = sub_260E3FA30;
    v51 = *(v4 + 120);
    a1 = v4 + 16;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822004D0](a1, a2, a3, a4);
  }

  v6 = *(v4 + 216);
  v7 = *(v4 + 224);
  v9 = *(v4 + 200);
  v8 = *(v4 + 208);
  v10 = *(v4 + 48);
  sub_260E42388(*(v4 + 16), *(v4 + 24), *(v4 + 32), 3);
  sub_260E15590();
  swift_allocError();
  *v11 = xmmword_260E6D940;
  *(v11 + 16) = 2;
  swift_willThrow();
  sub_260E3C41C(v9, v8, v6, v7);
LABEL_7:
  v25 = *(v4 + 152);
  v24 = *(v4 + 160);
  v26 = *(v4 + 144);

  v27 = *(v4 + 8);
LABEL_17:

  return v27();
}

uint64_t sub_260E40070()
{
  sub_260E3C41C(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));
  v1 = *(v0 + 240);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_260E400FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[3] = a1;
  v5[4] = a4;
  v10 = (a5 + *a5);
  v7 = a5[1];
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_260E401F8;

  return v10(a1);
}

uint64_t sub_260E401F8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_260E403DC;
  }

  else
  {
    *(v2 + 56) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248) + 48);
    v4 = sub_260E40328;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_260E40328()
{
  v1 = *(v0 + 24);
  *(v1 + *(v0 + 56)) = *(v0 + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_260E403DC()
{
  v22 = v0;
  if (qword_27FE53DF0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_260E68E94();
  __swift_project_value_buffer(v2, qword_27FE54C50);
  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69474();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260E02000, v4, v5, "Race task failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[3];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248) + 48);
  v16 = type metadata accessor for MobileAssetResult();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = v0[3];
  *(v17 + v15) = v0[4];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  v19 = v0[1];

  return v19();
}

uint64_t sub_260E40660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[3] = a1;
  v5[4] = a4;
  v10 = (a5 + *a5);
  v7 = a5[1];
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_260E4075C;

  return v10(a1);
}

uint64_t sub_260E4075C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_260E40890;
  }

  else
  {
    v3 = sub_260E40870;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E40890()
{
  v18 = v0;
  if (qword_27FE53DF0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_260E68E94();
  __swift_project_value_buffer(v2, qword_27FE54C50);
  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69474();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260E02000, v4, v5, "Race task failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[3];
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = 1;
  *(v0[3] + 32) = v0[4];
  v15 = v0[1];

  return v15();
}

uint64_t sub_260E40A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545A0, &qword_260E6CA30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v24 - v13;
  sub_260E15684(a1, v24 - v13, &qword_27FE545A0, &qword_260E6CA30);
  v15 = sub_260E69304();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_260E155E4(v14, &qword_27FE545A0, &qword_260E6CA30);
    if (*(a3 + 16))
    {
LABEL_3:
      v17 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_260E69284();
      v20 = v19;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_260E692F4();
    (*(v16 + 8))(v14, v15);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  v20 = 0;
LABEL_6:
  v21 = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v22 = (v20 | v18);
  if (v20 | v18)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v18;
    v25[3] = v20;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v21;
  swift_task_create();
}

uint64_t sub_260E40C80(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_260E40CA4, 0, 0);
}

uint64_t sub_260E40CA4(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_260E40D8C;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_260E40D8C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_260E40F4C;
  }

  else
  {
    v3 = sub_260E40EA0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E40EA0()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_260E40F4C()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548D8, &qword_260E6E248);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_260E41000(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_260E41024, 0, 0);
}

uint64_t sub_260E41024(unint64_t a1)
{
  v3 = *(v1 + 24) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_260E4110C;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_260E4110C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_260E41250;
  }

  else
  {
    v3 = sub_260E41220;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E41220()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = xmmword_260E6D950;
  return (*(v0 + 8))();
}

uint64_t sub_260E41250()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = xmmword_260E6D950;
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_260E412D0()
{
  result = qword_27FE547D0;
  if (!qword_27FE547D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE547D0);
  }

  return result;
}

unint64_t sub_260E41328()
{
  result = qword_27FE547D8;
  if (!qword_27FE547D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE547D8);
  }

  return result;
}

unint64_t sub_260E41380()
{
  result = qword_27FE547E0;
  if (!qword_27FE547E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE547E0);
  }

  return result;
}

unint64_t sub_260E41408()
{
  result = qword_27FE547F8;
  if (!qword_27FE547F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE547F8);
  }

  return result;
}

unint64_t sub_260E41490()
{
  result = qword_27FE54810;
  if (!qword_27FE54810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54810);
  }

  return result;
}

unint64_t sub_260E41518()
{
  result = qword_27FE54828;
  if (!qword_27FE54828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54828);
  }

  return result;
}

unint64_t sub_260E415A0()
{
  result = qword_27FE54840;
  if (!qword_27FE54840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54840);
  }

  return result;
}

unint64_t sub_260E41628()
{
  result = qword_27FE54858;
  if (!qword_27FE54858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54858);
  }

  return result;
}

unint64_t sub_260E41680()
{
  result = qword_27FE54860;
  if (!qword_27FE54860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54860);
  }

  return result;
}

unint64_t sub_260E416D8()
{
  result = qword_27FE54868;
  if (!qword_27FE54868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54868);
  }

  return result;
}

unint64_t sub_260E41730()
{
  result = qword_27FE54870;
  if (!qword_27FE54870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54870);
  }

  return result;
}

unint64_t sub_260E41788()
{
  result = qword_27FE54878;
  if (!qword_27FE54878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54878);
  }

  return result;
}

unint64_t sub_260E417E0()
{
  result = qword_27FE54880;
  if (!qword_27FE54880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54880);
  }

  return result;
}

uint64_t type metadata accessor for HeadphonePairing.AssetRequest()
{
  result = qword_27FE54888;
  if (!qword_27FE54888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10ProductKit27PersonalizationAssetManagerC0D0VSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260E418FC(uint64_t *a1, int a2)
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

uint64_t sub_260E41944(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for HeadphonePairing.Assets.VideoIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphonePairing.Assets.VideoIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_260E41B2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_260E41B44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_260E41BA4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548F8, &qword_260E6E268);
  v10 = *(sub_260E68904() - 8);
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
  v15 = *(sub_260E68904() - 8);
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

void *sub_260E41D7C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54900, &qword_260E6E270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54908, &qword_260E6E278);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_260E41EB0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548E0, &qword_260E6E250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE548E8, &qword_260E6E258);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_260E41FF8()
{
  v1 = *(v0 + 16);

  sub_260E15F8C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_260E42040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260E30A3C;

  return sub_260E3AA68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_260E42108(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260E343A8;

  return sub_260E3F4B0(a1, a2, v6, v7);
}

uint64_t sub_260E421CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260E343A8;

  return sub_260E40660(a1, v4, v5, v6, v7);
}

uint64_t sub_260E42294()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_260E422CC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260E343A8;

  return sub_260E41000(a1, v6);
}

void sub_260E42388(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 3)
  {
    sub_260E42398(a1, a2, a3, a4);
  }
}

void sub_260E42398(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 2)
  {
    sub_260E3C41C(a1, a2, a3, a4);
  }
}

id sub_260E423A8(id result, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 2)
  {
    return sub_260E3C3D8(result, a2, a3, a4);
  }

  return result;
}

id sub_260E423B8(id result, unint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 3)
  {
    return sub_260E423A8(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_260E423C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_260E42430()
{
  v1 = (type metadata accessor for MobileAssetRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_260E68A04();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[8] + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v4));

  return MEMORY[0x2821FE8E8](v0, v4 + 40, v2 | 7);
}

uint64_t sub_260E42530(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileAssetRequest() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260E343A8;

  return sub_260E4BFE4(a1, v1 + v5, v1 + v6);
}

uint64_t sub_260E42638(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_260E343A8;

  return sub_260E3E3A4(a1, a2, v6, v7);
}

uint64_t objectdestroy_61Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_260E42738(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260E343A8;

  return sub_260E400FC(a1, v4, v5, v6, v7);
}

uint64_t sub_260E42800(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260E343A8;

  return sub_260E40C80(a1, v6);
}

uint64_t sub_260E428BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double Adjustments.init(fileURL:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260E68914();
  v6 = v5;
  if (qword_27FE53DC0 != -1)
  {
    swift_once();
  }

  sub_260E43CA8();
  sub_260E68784();
  v7 = sub_260E68904();
  (*(*(v7 - 8) + 8))(a1, v7);
  sub_260E15FB4(v4, v6);
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_260E42BF4()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54910);
  v1 = __swift_project_value_buffer(v0, qword_27FE54910);
  if (qword_27FE53E58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E42CBC()
{
  v0 = sub_260E687A4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_260E68794();
  qword_27FE54928 = result;
  return result;
}

ProductKit::Adjustments::Adjustment __swiftcall Adjustments.Adjustment.init(bias:matrix:)(Swift::Double bias, Swift::Double matrix)
{
  *v2 = bias;
  v2[1] = matrix;
  result.matrix = matrix;
  result.bias = bias;
  return result;
}

uint64_t sub_260E42D14()
{
  if (*v0)
  {
    result = 0x78697274616DLL;
  }

  else
  {
    result = 1935763810;
  }

  *v0;
  return result;
}

uint64_t sub_260E42D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1935763810 && a2 == 0xE400000000000000;
  if (v5 || (sub_260E69834() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x78697274616DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_260E69834();

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

uint64_t sub_260E42E28(uint64_t a1)
{
  v2 = sub_260E43CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E42E64(uint64_t a1)
{
  v2 = sub_260E43CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Adjustments.Adjustment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54938, &qword_260E6E280);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E43CFC();
  sub_260E69944();
  v13[15] = 0;
  sub_260E697D4();
  if (!v2)
  {
    v13[14] = 1;
    sub_260E697D4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Adjustments.Adjustment.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54948, &qword_260E6E288);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E43CFC();
  sub_260E69934();
  if (!v2)
  {
    v18 = 0;
    sub_260E69794();
    v12 = v11;
    v17 = 1;
    sub_260E69794();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 Adjustments.dark.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 Adjustments.light.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

ProductKit::Adjustments __swiftcall Adjustments.init(dark:light:)(ProductKit::Adjustments::Adjustment dark, ProductKit::Adjustments::Adjustment light)
{
  v5 = *v2;
  v6 = *v3;
  *v4 = *v2;
  v4[1] = v6;
  result.light.matrix = light.matrix;
  result.light.bias = light.bias;
  result.dark.matrix = *&v6;
  result.dark.bias = *&v5;
  return result;
}

uint64_t sub_260E43228()
{
  if (*v0)
  {
    result = 0x746867696CLL;
  }

  else
  {
    result = 1802658148;
  }

  *v0;
  return result;
}

uint64_t sub_260E43258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802658148 && a2 == 0xE400000000000000;
  if (v5 || (sub_260E69834() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_260E69834();

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

uint64_t sub_260E43330(uint64_t a1)
{
  v2 = sub_260E43D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E4336C(uint64_t a1)
{
  v2 = sub_260E43D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Adjustments.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54950, &qword_260E6E290);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E43D50();
  sub_260E69944();
  v17 = v9;
  v18 = v10;
  v16 = 0;
  sub_260E43DA4();
  sub_260E697F4();
  if (!v2)
  {
    v17 = v11;
    v18 = v12;
    v16 = 1;
    sub_260E697F4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Adjustments.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54968, &qword_260E6E298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E43D50();
  sub_260E69934();
  if (!v2)
  {
    v15 = 0;
    sub_260E43DF8();
    sub_260E697B4();
    v11 = v14;
    v15 = 1;
    sub_260E697B4();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_260E43774(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_260E43840(v11, 0, 0, 1, a1, a2);
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
    sub_260E1426C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_260E43840(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_260E4394C(a5, a6);
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
    result = sub_260E696A4();
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

uint64_t sub_260E4394C(uint64_t a1, unint64_t a2)
{
  v4 = sub_260E43998(a1, a2);
  sub_260E43AC8(&unk_28735D298);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_260E43998(uint64_t a1, unint64_t a2)
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

  v6 = sub_260E4DBB0(v5, 0);
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

  result = sub_260E696A4();
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
        v10 = sub_260E69114();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_260E4DBB0(v10, 0);
        result = sub_260E69634();
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

uint64_t sub_260E43AC8(uint64_t result)
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

  result = sub_260E43BB4(result, v12, 1, v3);
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

char *sub_260E43BB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549A8, &qword_260E6E5B8);
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

unint64_t sub_260E43CA8()
{
  result = qword_27FE54930;
  if (!qword_27FE54930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54930);
  }

  return result;
}

unint64_t sub_260E43CFC()
{
  result = qword_27FE54940;
  if (!qword_27FE54940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54940);
  }

  return result;
}

unint64_t sub_260E43D50()
{
  result = qword_27FE54958;
  if (!qword_27FE54958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54958);
  }

  return result;
}

unint64_t sub_260E43DA4()
{
  result = qword_27FE54960;
  if (!qword_27FE54960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54960);
  }

  return result;
}

unint64_t sub_260E43DF8()
{
  result = qword_27FE54970;
  if (!qword_27FE54970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54970);
  }

  return result;
}

uint64_t sub_260E43E4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260E43E6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_260E43EDC()
{
  result = qword_27FE54978;
  if (!qword_27FE54978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54978);
  }

  return result;
}

unint64_t sub_260E43F34()
{
  result = qword_27FE54980;
  if (!qword_27FE54980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54980);
  }

  return result;
}

unint64_t sub_260E43F8C()
{
  result = qword_27FE54988;
  if (!qword_27FE54988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54988);
  }

  return result;
}

unint64_t sub_260E43FE4()
{
  result = qword_27FE54990;
  if (!qword_27FE54990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54990);
  }

  return result;
}

unint64_t sub_260E4403C()
{
  result = qword_27FE54998;
  if (!qword_27FE54998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54998);
  }

  return result;
}

unint64_t sub_260E44094()
{
  result = qword_27FE549A0;
  if (!qword_27FE549A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE549A0);
  }

  return result;
}

uint64_t AirTagHardwareModel.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_260E69764();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_260E44170()
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E441E4()
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E44238@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_260E69764();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_260E442C0()
{
  result = qword_27FE549B0;
  if (!qword_27FE549B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE549B0);
  }

  return result;
}

unint64_t sub_260E44318()
{
  result = qword_27FE549B8;
  if (!qword_27FE549B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE549C0, &qword_260E6E660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE549B8);
  }

  return result;
}

uint64_t sub_260E4438C()
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E44478()
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E44584()
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E4466C()
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E44770()
{
  sub_260E698F4();
  sub_260E690C4();

  return sub_260E69914();
}

uint64_t sub_260E44878()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE549C8);
  v1 = __swift_project_value_buffer(v0, qword_27FE549C8);
  if (qword_27FE53E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E44998(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a1 + 24);
  v10 = *(a2 + 48);
  sub_260E16198(*a1, v4, v5, v9);
  result = sub_260E15F78(v6, v7, v8, v10);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v9;
  return result;
}

void (*HeadphonePairing2.Configuration.engravingInformation.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  sub_260E16198(v5, v6, v7, v8);
  return sub_260E44AB4;
}

void sub_260E44AB4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  if (a2)
  {
    sub_260E16198(**a1, v4, v6, v7);
    sub_260E15F78(v8, v9, v10, v11);
    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 48) = v7;
    sub_260E15F78(*v2, v2[1], v2[2], *(v2 + 24));
  }

  else
  {
    sub_260E15F78(*(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    *(v3 + 48) = v7;
  }

  free(v2);
}

__n128 _s10ProductKit17HeadphonePairing2V13ConfigurationV20engravingInformationAA27PersonalizationAssetManagerC0I4InfoOSgvs_0(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_260E15F78(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

char *HeadphonePairing2.Configuration.init(hardwareModel:color:timeout:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *result;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  *(a3 + 48) = -1;
  *(a3 + 16) = v4;
  *(a3 + 17) = 26;
  *a3 = a2;
  *(a3 + 8) = a4;
  return result;
}

__n128 HeadphonePairing2.AssetRequest.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t HeadphonePairing2.AssetRequest.assets()()
{
  v2 = sub_260E68C64();
  *(v1 + 32) = v2;
  v3 = *(v2 - 8);
  *(v1 + 40) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  v5 = sub_260E68E24();
  *(v1 + 56) = v5;
  v6 = *(v5 - 8);
  *(v1 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544A8, &qword_260E6C138) - 8) + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  v9 = sub_260E68C94();
  *(v1 + 88) = v9;
  v10 = *(v9 - 8);
  *(v1 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549E0, &unk_260E6E6E0) - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v13 = sub_260E68DF4();
  *(v1 + 128) = v13;
  v14 = *(v13 - 8);
  *(v1 + 136) = v14;
  v15 = *(v14 + 64) + 15;
  *(v1 + 144) = swift_task_alloc();
  v16 = swift_task_alloc();
  v17 = *v0;
  *(v1 + 152) = v16;
  *(v1 + 160) = v17;
  *(v1 + 168) = v0[1];
  *(v1 + 240) = *(v0 + 16);
  *(v1 + 176) = *(v0 + 3);
  *(v1 + 192) = v0[5];
  *(v1 + 241) = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_260E44EE4, 0, 0);
}

uint64_t sub_260E44EE4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v48 = *(v0 + 240);
  HeadphoneHardwareModel.rawValue.getter();
  sub_260E68DE4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_260E155E4(*(v0 + 120), &qword_27FE549E0, &unk_260E6E6E0);
    sub_260E15590();
    swift_allocError();
    *v4 = xmmword_260E6C120;
    *(v4 + 16) = 2;
    swift_willThrow();
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 104);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 48);

    v13 = *(v0 + 8);

    return v13();
  }

  v15 = *(v0 + 241);
  v16 = *(v0 + 168);
  v17 = *(v0 + 152);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  v21 = *(v0 + 112);
  (*(v19 + 32))(v17, *(v0 + 120), v20);
  (*(v19 + 16))(v18, v17, v20);
  sub_260E68C74();
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      v39 = 1;
      goto LABEL_14;
    }

    v28 = *(v0 + 184);
    v29 = *(v0 + 192);
    v30 = *(v0 + 176);
    v32 = *(v0 + 64);
    v31 = *(v0 + 72);
    v33 = *(v0 + 56);
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544C0, &unk_260E6E6F0) + 48);
    *v31 = v30;
    v31[1] = v28;
    sub_260E16198(v30, v28, v29, 2);
    sub_260E15E4C(v30, v28);
    sub_260E68D64();
    (*(v32 + 104))(v31, *MEMORY[0x277D42750], v33);
  }

  else
  {
    if (v15)
    {
      v25 = *(v0 + 64);
      v24 = *(v0 + 72);
      v26 = *(v0 + 56);
      sub_260E16198(*(v0 + 176), *(v0 + 184), *(v0 + 192), 1);

      sub_260E68E14();
      v27 = MEMORY[0x277D42748];
    }

    else
    {
      v22 = *(v0 + 184);
      v23 = *(v0 + 176);
      v25 = *(v0 + 64);
      v24 = *(v0 + 72);
      v26 = *(v0 + 56);
      sub_260E16198(v23, v22, *(v0 + 192), 0);
      sub_260E15E4C(v23, v22);
      sub_260E68E04();
      v27 = MEMORY[0x277D42740];
    }

    (*(v25 + 104))(v24, *v27, v26);
  }

  v35 = *(v0 + 184);
  v36 = *(v0 + 192);
  v37 = *(v0 + 176);
  v38 = *(v0 + 241);
  (*(*(v0 + 64) + 32))(*(v0 + 80), *(v0 + 72), *(v0 + 56));
  sub_260E15F78(v37, v35, v36, v38);
  v39 = 0;
LABEL_14:
  v40 = *(v0 + 104);
  v41 = *(v0 + 112);
  v42 = *(v0 + 88);
  v43 = *(v0 + 96);
  v44 = *(v0 + 48);
  (*(*(v0 + 64) + 56))(*(v0 + 80), v39, 1, *(v0 + 56));
  sub_260E68C84();
  (*(v43 + 16))(v40, v41, v42);
  sub_260E68C44();
  v45 = *(MEMORY[0x277D42730] + 4);
  v46 = swift_task_alloc();
  *(v0 + 200) = v46;
  *v46 = v0;
  v46[1] = sub_260E45308;
  v47 = *(v0 + 48);

  return MEMORY[0x2821A3588]();
}

uint64_t sub_260E45308(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_260E457F0;
  }

  else
  {
    v5 = sub_260E4541C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_260E4541C()
{
  v15 = v0;
  if (qword_27FE53DC8 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = sub_260E68E94();
  __swift_project_value_buffer(v2, qword_27FE549C8);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[26];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[3] = v5;
    sub_260E68D54();

    v8 = sub_260E69084();
    v10 = sub_260E43774(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_260E02000, v3, v4, "Returning valid assets: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2666F1EF0](v7, -1, -1);
    MEMORY[0x2666F1EF0](v6, -1, -1);
  }

  sub_260E692E4();
  v0[28] = sub_260E692D4();
  v12 = sub_260E69284();

  return MEMORY[0x2822009F8](sub_260E45608, v12, v11);
}

uint64_t sub_260E45608()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 240);

  type metadata accessor for HeadphonePairing2.Assets();
  v4 = swift_allocObject();
  *(v0 + 232) = v4;
  *(v4 + 16) = sub_260E68D44();
  *(v4 + 40) = v2;
  *(v4 + 24) = v3;

  v5 = sub_260E68CF4();

  *(v4 + 32) = v5;

  return MEMORY[0x2822009F8](sub_260E456C4, 0, 0);
}

uint64_t sub_260E456C4()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[11];
  v12 = v0[13];
  v13 = v0[10];
  v14 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];
  v10 = v0[29];

  return v9(v10);
}

uint64_t sub_260E457F0()
{
  v35 = v0;
  if (qword_27FE53DC8 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = sub_260E68E94();
  __swift_project_value_buffer(v2, qword_27FE549C8);
  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136315138;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v10 = sub_260E69084();
    v12 = sub_260E43774(v10, v11, &v34);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260E02000, v4, v5, "Failed to find assets: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v13 = v0[27];
  v33 = v0[19];
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[11];
  v18 = v0[12];
  v19 = v0[5];
  v20 = v0[6];
  v21 = v0[4];
  swift_willThrow();
  (*(v19 + 8))(v20, v21);
  (*(v18 + 8))(v16, v17);
  (*(v15 + 8))(v33, v14);
  v22 = v0[27];
  v24 = v0[18];
  v23 = v0[19];
  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[13];
  v29 = v0[9];
  v28 = v0[10];
  v30 = v0[6];

  v31 = v0[1];

  return v31();
}

uint64_t sub_260E45A70@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_260E68D84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542E0, &qword_260E6BFE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = sub_260E68DB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32))
  {
    sub_260E68E54();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v16, v11, v12);
      v17 = sub_260E68DA4();
      v19 = v18;
      sub_260E68D94();
      v20 = sub_260E68D74();
      (*(v4 + 8))(v7, v3);
      result = (*(v13 + 8))(v16, v12);
      *a1 = v17;
      a1[1] = v19;
      a1[2] = v20;
      a1[3] = 0;
      return result;
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  result = sub_260E155E4(v11, &qword_27FE542E0, &qword_260E6BFE8);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  return result;
}

ProductKit::HeadphonePairing2::Assets::AdjustedImageIdentifier_optional __swiftcall HeadphonePairing2.Assets.AdjustedImageIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadphonePairing2.Assets.AdjustedImageIdentifier.rawValue.getter()
{
  v1 = 0x64726143786F7250;
  v2 = *v0;
  if (v2 == 3)
  {
    v1 = 0xD00000000000001BLL;
  }

  v3 = 0xD00000000000001DLL;
  if (v2 != 1)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_260E45E20()
{
  *v0;
  *v0;
  sub_260E690C4();
}

void sub_260E45F20(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000004C5FLL;
  v3 = 0x64726143786F7250;
  v4 = *v1;
  v5 = 0x8000000260E71220;
  if (v4 != 4)
  {
    v2 = 0xEA0000000000525FLL;
  }

  if (v4 == 3)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = v2;
  }

  v6 = 0x8000000260E710C0;
  v7 = 0xD00000000000001DLL;
  if (v4 != 1)
  {
    v7 = 0xD00000000000001ALL;
    v6 = 0x8000000260E71200;
  }

  if (!*v1)
  {
    v7 = 0xD00000000000001CLL;
    v6 = 0x8000000260E710A0;
  }

  if (*v1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  if (*v1 <= 2u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t HeadphonePairing2.Assets.FileIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_260E69764();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_260E4606C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_260E69764();

  *a2 = v5 != 0;
  return result;
}

ProductKit::HeadphonePairing2::Assets::VideoIdentifier_optional __swiftcall HeadphonePairing2.Assets.VideoIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadphonePairing2.Assets.VideoIdentifier.rawValue.getter()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000016;
  if (v2 != 5)
  {
    v3 = 0xD000000000000014;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_260E46210()
{
  *v0;
  *v0;
  *v0;
  sub_260E690C4();
}

unint64_t sub_260E46314@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = *v1;
  v4 = "ProxCard_loop-charged";
  v5 = 0xD000000000000016;
  if (v3 != 5)
  {
    v5 = 0xD000000000000014;
    v4 = "ProxCard_loop-charging";
  }

  v6 = "ProxCard_case-open-charging";
  if (v3 == 3)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000015;
  }

  if (v3 != 3)
  {
    v6 = "ProxCard_connect-loop";
  }

  if (*v1 <= 4u)
  {
    v5 = result;
    v4 = v6;
  }

  v8 = "ProxCard_features";
  if (v3 == 1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v8 = "oxCard_L";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000017;
    v9 = "BatterySwap_loop";
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
  return result;
}

ProductKit::HeadphonePairing2::Assets::ViewIdentifier_optional __swiftcall HeadphonePairing2.Assets.ViewIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t HeadphonePairing2.Assets.ViewIdentifier.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_260E46490@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_260E69764();

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

ProductKit::HeadphonePairing2::Assets::VideoViewIdentifier_optional __swiftcall HeadphonePairing2.Assets.VideoViewIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260E69764();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HeadphonePairing2.Assets.VideoViewIdentifier.rawValue.getter()
{
  *v0;
  if (*v0)
  {
    return 0x72616843706F6F6CLL;
  }

  else
  {
    return 0x6F72746E69;
  }
}

uint64_t sub_260E465EC@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = sub_260E68AA4();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_260E68AD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549E8, &qword_260E6E700);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v38 - v17;
  v19 = sub_260E68D14();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1;
  sub_260E68D04();
  result = (*(v20 + 48))(v18, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v25 = *(v20 + 32);
    v40 = v23;
    v41 = v19;
    v25(v23, v18, v19);
    v26 = *(v42 + 5);
    sub_260E68CA4();
    (*(v8 + 16))(v12, v14, v7);
    sub_260E68AC4();
    v27 = sub_260E68A94();
    v39 = v28;
    v29 = sub_260E68A84();
    v30 = sub_260E68A64();
    v42 = v14;
    v31 = v7;
    v33 = v32;
    LOBYTE(v26) = sub_260E68A74();
    (*(v44 + 8))(v6, v45);
    v34 = v43;
    v35 = v39;
    *v43 = v27;
    v34[1] = v35;
    v34[2] = v29;
    v34[3] = v30;
    v34[4] = v33;
    *(v34 + 40) = v26 & 1;
    v36 = v34 + *(type metadata accessor for AdjustedAsset() + 20);
    sub_260E68AB4();
    v37 = *(v8 + 8);
    v37(v12, v31);
    v37(v42, v31);
    return (*(v20 + 8))(v40, v41);
  }

  return result;
}

uint64_t sub_260E46A1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_260E68AA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549F0, &qword_260E6E708);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  v15 = sub_260E68CC4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E68CB4();
  result = (*(v16 + 48))(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v21 = *(v1 + 40);
    sub_260E68D24();
    (*(v4 + 16))(v8, v10, v3);
    *a1 = sub_260E68A94();
    *(a1 + 8) = v22;
    *(a1 + 16) = sub_260E68A84();
    *(a1 + 24) = sub_260E68A64();
    *(a1 + 32) = v23;
    LOBYTE(v21) = sub_260E68A74();
    v24 = *(v4 + 8);
    v24(v8, v3);
    v24(v10, v3);
    result = (*(v16 + 8))(v19, v15);
    *(a1 + 40) = v21 & 1;
  }

  return result;
}

uint64_t sub_260E46CC8@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v46 = sub_260E68AA4();
  v44 = *(v46 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260E68AD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549F8, &unk_260E6E710);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v39 - v15;
  v17 = sub_260E68CE4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1;
  *a1;
  *a1;
  sub_260E68CD4();
  result = (*(v18 + 48))(v16, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = *(v18 + 32);
    v41 = v21;
    v23(v21, v16, v17);
    v24 = *(v42 + 40);
    sub_260E68D34();
    (*(v6 + 16))(v10, v12, v5);
    v25 = v43;
    sub_260E68AC4();
    v39 = sub_260E68A94();
    v27 = v26;
    v28 = sub_260E68A84();
    v29 = sub_260E68A64();
    v42 = v17;
    v30 = v5;
    v31 = v29;
    v40 = v12;
    v32 = v10;
    v34 = v33;
    LOBYTE(v24) = sub_260E68A74();
    (*(v44 + 8))(v25, v46);
    v35 = v24 & 1;
    v36 = v45;
    *v45 = v39;
    v36[1] = v27;
    v36[2] = v28;
    v36[3] = v31;
    v36[4] = v34;
    *(v36 + 40) = v35;
    v37 = v36 + *(type metadata accessor for AdjustedAsset() + 20);
    sub_260E68AB4();
    v38 = *(v6 + 8);
    v38(v32, v30);
    v38(v40, v30);
    return (*(v18 + 8))(v41, v42);
  }

  return result;
}

char *sub_260E47118(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v248 = &v215 - v5;
  v6 = sub_260E68AA4();
  v222 = *(v6 - 8);
  v223 = v6;
  v7 = *(v222 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v221 = &v215 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v220 = &v215 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549F0, &qword_260E6E708);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v225 = &v215 - v13;
  v236 = sub_260E68CC4();
  v226 = *(v236 - 8);
  v14 = *(v226 + 64);
  MEMORY[0x28223BE20](v236);
  v219 = &v215 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for VideoViewConfiguration(0);
  v247 = *(v250 - 8);
  v16 = *(v247 + 64);
  MEMORY[0x28223BE20](v250);
  v242 = &v215 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v233 = COERCE_DOUBLE(type metadata accessor for VideoViewConfiguration.VideoSequence(0));
  v18 = *(*(v233 - 8) + 64);
  MEMORY[0x28223BE20](v233);
  v238 = &v215 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v218 = &v215 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v234 = &v215 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v245 = &v215 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v224 = &v215 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  *&v232 = &v215 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  *&v230 = &v215 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v244 = &v215 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v239 = &v215 - v37;
  MEMORY[0x28223BE20](v36);
  v249 = &v215 - v38;
  v39 = type metadata accessor for AdjustedAsset();
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v231 = (&v215 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = MEMORY[0x28223BE20](v41);
  v229 = (&v215 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v228 = (&v215 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = (&v215 - v48);
  MEMORY[0x28223BE20](v47);
  v51 = (&v215 - v50);
  v52 = sub_260E68904();
  v253 = *(v52 - 8);
  v53 = *(v253 + 64);
  v54 = MEMORY[0x28223BE20](v52);
  v216 = &v215 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v215 = &v215 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v217 = &v215 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v240 = &v215 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v241 = &v215 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v243 = &v215 - v65;
  MEMORY[0x28223BE20](v64);
  v251 = &v215 - v66;
  v252 = v1;
  LODWORD(v237) = *a1;
  LOBYTE(v256) = 1;
  sub_260E46CC8(&v256, v51);
  v67 = *v51;
  v68 = v51[1];
  v69 = v51[2];
  v70 = v51[3];
  v71 = v51[4];
  LOBYTE(a1) = *(v51 + 40);

  v72 = v69;

  sub_260E48E20(v51, type metadata accessor for AdjustedAsset);
  *&v256 = v67;
  *(&v256 + 1) = v68;
  *&v257 = v72;
  *(&v257 + 1) = v70;
  v73 = v52;
  v74 = v249;
  *&v258 = v71;
  BYTE8(v258) = a1;
  GenericAsset.fileURL.getter(v249);
  v75 = v253;
  v76 = *(v253 + 48);
  if (v76(v74, 1, v73) != 1)
  {
    v77 = *(v75 + 32);
    v227 = v75 + 32;
    v235 = v77;
    v77(v251, v74, v73);

    LOBYTE(v256) = 0;
    v249 = v75 + 48;
    sub_260E46CC8(&v256, v49);
    v78 = *v49;
    v79 = v49[1];
    v246 = v76;
    v80 = v49[2];
    v81 = v49[3];
    v82 = v49[4];
    v83 = *(v49 + 40);

    v84 = v80;

    v85 = v49;
    v86 = v84;
    sub_260E48E20(v85, type metadata accessor for AdjustedAsset);
    *&v256 = v78;
    *(&v256 + 1) = v79;
    *&v257 = v84;
    *(&v257 + 1) = v81;
    *&v258 = v82;
    BYTE8(v258) = v83;
    v87 = v239;
    GenericAsset.fileURL.getter(v239);
    if (v246(v87, 1, v73) == 1)
    {
      (*(v75 + 8))(v251, v73);
      sub_260E155E4(v87, &qword_27FE54320, &qword_260E6E720);

      goto LABEL_5;
    }

    v235(v243, v87, v73);

    LOBYTE(v256) = 2;
    v95 = v228;
    sub_260E46CC8(&v256, v228);
    v96 = *v95;
    v97 = v95[1];
    v98 = v95[2];
    v99 = v95[3];
    v239 = v73;
    v100 = v95[4];
    v101 = *(v95 + 40);

    v102 = v98;

    sub_260E48E20(v95, type metadata accessor for AdjustedAsset);
    *&v256 = v96;
    *(&v256 + 1) = v97;
    *&v257 = v102;
    *(&v257 + 1) = v99;
    *&v258 = v100;
    BYTE8(v258) = v101;
    GenericAsset.fileURL.getter(v244);

    LOBYTE(v256) = 4;
    v103 = v229;
    sub_260E46CC8(&v256, v229);
    v104 = *v103;
    v105 = v103[1];
    v106 = v103[2];
    v107 = v103[3];
    v108 = v103[4];
    LOBYTE(v99) = *(v103 + 40);

    v109 = v106;

    sub_260E48E20(v103, type metadata accessor for AdjustedAsset);
    *&v256 = v104;
    *(&v256 + 1) = v105;
    *&v257 = v109;
    *(&v257 + 1) = v107;
    *&v258 = v108;
    BYTE8(v258) = v99;
    v110 = *&v230;
    GenericAsset.fileURL.getter(*&v230);

    v111 = v239;
    v112 = v246;

    if (v112(v110, 1, v111) == 1)
    {
      (*(v253 + 16))(v241, v251, v111);
      v113 = v112(v110, 1, v111);
      v114 = v237;
      if (v113 != 1)
      {
        sub_260E155E4(v110, &qword_27FE54320, &qword_260E6E720);
      }
    }

    else
    {
      v235(v241, v110, v111);
      v114 = v237;
    }

    LOBYTE(v256) = 5;
    v115 = v231;
    sub_260E46CC8(&v256, v231);
    v116 = *v115;
    v117 = v115[1];
    v118 = v115[2];
    v119 = v115[3];
    v120 = v115[4];
    v121 = *(v115 + 40);

    v122 = v118;

    sub_260E48E20(v115, type metadata accessor for AdjustedAsset);
    *&v256 = v116;
    *(&v256 + 1) = v117;
    *&v257 = v122;
    *(&v257 + 1) = v119;
    *&v258 = v120;
    BYTE8(v258) = v121;
    v123 = *&v232;
    GenericAsset.fileURL.getter(*&v232);

    v124 = v246;
    v125 = v111;
    if (v246(v123, 1, v111) == 1)
    {
      v126 = v253;
      (*(v253 + 16))(v240, v251, v125);
      v127 = v124(v123, 1, v125);
      v128 = v235;
      if (v127 != 1)
      {
        sub_260E155E4(v123, &qword_27FE54320, &qword_260E6E720);
      }
    }

    else
    {
      v128 = v235;
      v235(v240, v123, v111);
      v126 = v253;
    }

    v232 = -2.56842574e207;
    if (v114)
    {
      v129 = sub_260E69834();

      if ((v129 & 1) == 0)
      {
        if (v114 == 2)
        {
          v130 = sub_260E69834();

          v131 = v238;
          v132 = v252;
          if ((v130 & 1) == 0)
          {
            v133 = *(v126 + 16);
            v134 = v238;
            v135 = v240;
LABEL_30:
            v231 = v133;
            (v133)(v134, v135, v125);
LABEL_31:
            swift_storeEnumTagMultiPayload();
            v144 = 8194;
            v145 = 8217;
            switch(*(v132 + 24))
            {
              case 1:
                v144 = 8207;
                goto LABEL_55;
              case 2:
                v144 = 8211;
                goto LABEL_55;
              case 3:
              case 4:
                goto LABEL_56;
              case 5:
                v144 = 8202;
                goto LABEL_55;
              case 6:
                v144 = 8223;
                goto LABEL_55;
              case 7:
                v144 = 8206;
                goto LABEL_55;
              case 8:
                v144 = 8212;
                goto LABEL_55;
              case 9:
                v144 = 8231;
                goto LABEL_55;
              case 0xA:
                v144 = 8210;
                goto LABEL_55;
              case 0xB:
                v144 = 8198;
                goto LABEL_55;
              case 0xC:
                v144 = 8204;
                goto LABEL_55;
              case 0xD:
                v144 = 8201;
                goto LABEL_55;
              case 0xE:
                v144 = 8215;
                goto LABEL_55;
              case 0xF:
                v144 = 8229;
                goto LABEL_55;
              case 0x10:
                v144 = 8218;
                goto LABEL_55;
              case 0x11:
                v144 = 8209;
                goto LABEL_55;
              case 0x12:
                v144 = 8214;
                goto LABEL_55;
              case 0x13:
                v144 = 8230;
                goto LABEL_55;
              case 0x14:
                v144 = 8197;
                goto LABEL_55;
              case 0x15:
                v144 = 8208;
                goto LABEL_55;
              case 0x16:
                v144 = 8195;
                goto LABEL_55;
              case 0x17:
                v144 = 8205;
                goto LABEL_55;
              case 0x18:
                v144 = 8203;
                goto LABEL_55;
              case 0x19:
                v144 = 8221;
                goto LABEL_55;
              default:
LABEL_55:
                v145 = v144;
LABEL_56:
                if (v114)
                {
                  v146 = sub_260E69834();

                  if ((v146 & 1) == 0)
                  {
                    LODWORD(v254.m11) = v145;
                    *&v256 = sub_260E69804();
                    *(&v256 + 1) = v147;
                    v148 = 0x68635F706F6F6C5FLL;
                    v149 = 0xED00006465677261;
                    goto LABEL_61;
                  }
                }

                else
                {
                }

                *&v256 = 0;
                *(&v256 + 1) = 0xE000000000000000;
                sub_260E69644();
                LODWORD(v254.m11) = v145;
                v150 = sub_260E69804();
                v152 = v151;

                *&v256 = v150;
                *(&v256 + 1) = v152;
                v148 = 0x7463656E6E6F635FLL;
                v149 = 0xEF656761676E655FLL;
LABEL_61:
                MEMORY[0x2666F0C00](v148, v149);
                type metadata accessor for MobileAssetManager();
                ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                v154 = [objc_opt_self() bundleForClass_];
                v155 = sub_260E68FF4();

                v156 = sub_260E68FF4();
                v157 = [v154 URLForResource:v155 withExtension:v156];

                if (v157)
                {
                  v158 = v234;
                  sub_260E688C4();

                  v159 = 0;
                }

                else
                {
                  v159 = 1;
                  v158 = v234;
                }

                (*(v126 + 56))(v158, v159, 1, v239);
                sub_260E48D40(v158, v245);
                if (v114)
                {
                  v160 = sub_260E69834();

                  if ((v160 & 1) == 0)
                  {
                    v161 = 750.0;
                    v162 = 1050.0;
                    goto LABEL_74;
                  }
                }

                else
                {
                }

                if (*(v132 + 24) == 9)
                {
                  v162 = 1100.0;
                }

                else
                {
                  v162 = 750.0;
                }

                if (*(v132 + 24) == 9)
                {
                  v161 = 785.0;
                }

                else
                {
                  v161 = 880.0;
                }

LABEL_74:
                v163 = v242;
                sub_260E48E88(v131, v242, type metadata accessor for VideoViewConfiguration.VideoSequence);
                v164 = *(v132 + 16);
                v165 = v250;
                sub_260E50238(v163 + *(v250 + 20));
                sub_260E48DB0(v245, v163 + v165[6]);
                v166 = v165[7];
                v167 = sub_260E68DB4();
                (*(*(v167 - 8) + 56))(v163 + v166, 1, 1, v167);
                sub_260E194C8(&v256);
                v168 = (v163 + v165[8]);
                *v168 = v162;
                v168[1] = v161;
                *(v163 + v165[9]) = 0;
                v169 = v163 + v165[10];
                v170 = v263;
                *(v169 + 96) = v262;
                *(v169 + 112) = v170;
                *(v169 + 128) = v264;
                v171 = v259;
                *(v169 + 32) = v258;
                *(v169 + 48) = v171;
                v172 = v261;
                *(v169 + 64) = v260;
                *(v169 + 80) = v172;
                v173 = v257;
                *v169 = v256;
                *(v169 + 16) = v173;
                v237 = v165[11];
                *(v163 + v237) = 0;
                if (v114)
                {
                  v174 = sub_260E69834();

                  if ((v174 & 1) == 0)
                  {
                    v175 = v132;
                    goto LABEL_77;
                  }
                }

                else
                {
                }

                CATransform3DMakeScale(&v254, 0.85, 0.85, 1.0);
                sub_260E48E80(&v254);
                v178 = *&v254.m43;
                *(v169 + 96) = *&v254.m41;
                *(v169 + 112) = v178;
                *(v169 + 128) = v255;
                v179 = *&v254.m23;
                *(v169 + 32) = *&v254.m21;
                *(v169 + 48) = v179;
                v180 = *&v254.m33;
                *(v169 + 64) = *&v254.m31;
                *(v169 + 80) = v180;
                v181 = *&v254.m13;
                *v169 = *&v254.m11;
                *(v169 + 16) = v181;
                v175 = v132;
                if (!v114)
                {

                  goto LABEL_84;
                }

LABEL_77:
                if (v114 != 1)
                {
                  v232 = -1.68324414e212;
                }

                v176 = sub_260E69834();

                v177 = v244;
                if ((v176 & 1) == 0)
                {
LABEL_89:
                  v209 = v131;
                  v210 = v242;
                  v211 = v248;
                  sub_260E48E88(v242, v248, type metadata accessor for VideoViewConfiguration);
                  (*(v247 + 56))(v211, 0, 1, v250);
                  v212 = sub_260E526E8(v211, *(v175 + 32));
                  sub_260E155E4(v211, &qword_27FE544D8, &unk_260E6C160);
                  sub_260E155E4(v245, &qword_27FE54320, &qword_260E6E720);
                  sub_260E48E20(v209, type metadata accessor for VideoViewConfiguration.VideoSequence);
                  v213 = *(v126 + 8);
                  v214 = v239;
                  v213(v240, v239);
                  v213(v241, v214);
                  sub_260E155E4(v177, &qword_27FE54320, &qword_260E6E720);
                  v213(v243, v214);
                  v213(v251, v214);
                  sub_260E48E20(v210, type metadata accessor for VideoViewConfiguration);
                  return v212;
                }

LABEL_84:
                v182 = v225;
                sub_260E68CB4();
                v183 = v226;
                v184 = v236;
                if ((*(v226 + 48))(v182, 1, v236) == 1)
                {
                  __break(1u);
                  JUMPOUT(0x260E489D0);
                }

                v185 = v219;
                (*(v183 + 32))(v219, v182, v184);
                v186 = *(v175 + 40);
                v187 = v220;
                sub_260E68D24();
                v188 = v221;
                v189 = v222;
                v190 = v223;
                (*(v222 + 16))(v221, v187, v223);
                v191 = sub_260E68A94();
                v233 = v192;
                v234 = v191;
                v232 = COERCE_DOUBLE(sub_260E68A84());
                v230 = COERCE_DOUBLE(sub_260E68A64());
                v194 = v193;
                v195 = sub_260E68A74();
                v196 = *(v189 + 8);
                v196(v188, v190);
                v196(v187, v190);
                v197 = v185;
                v198 = *&v233;
                (*(v183 + 8))(v197, v236);
                v199 = v195 & 1;
                v200 = v232;
                *&v254.m11 = v234;
                v254.m12 = v198;
                v254.m13 = v232;
                v254.m14 = v230;
                v254.m21 = v194;
                LOBYTE(v254.m22) = v199;
                v201 = v218;
                GenericAsset.fileURL.getter(v218);
                v202 = v239;
                if (v246(v201, 1, v239) == 1)
                {
                  sub_260E155E4(v201, &qword_27FE54320, &qword_260E6E720);

                  v175 = v252;
                  v126 = v253;
                }

                else
                {
                  v203 = v215;
                  v235(v215, v201, v202);

                  v126 = v253;
                  v204 = v216;
                  (v231)(v216, v203, v202);
                  sub_260E64768(v204, &v254);
                  (*(v126 + 8))(v203, v202);
                  m11 = v254.m11;
                  v206 = v242;
                  v207 = v237;
                  v208 = *(v242 + v237);

                  *(v206 + v207) = m11;
                  v175 = v252;
                }

                v131 = v238;
                v177 = v244;
                goto LABEL_89;
            }
          }
        }

        else
        {

          v131 = v238;
          v132 = v252;
        }

        v133 = *(v126 + 16);
        v134 = v131;
        v135 = v241;
        goto LABEL_30;
      }
    }

    else
    {
    }

    v136 = v224;
    sub_260E48DB0(v244, v224);
    if (v246(v136, 1, v125) == 1)
    {
      sub_260E155E4(v136, &qword_27FE54320, &qword_260E6E720);
      v137 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
      v138 = *(v126 + 16);
      v131 = v238;
      (v138)(v238, v251, v125);
      v231 = v138;
      (v138)(v131 + v137, v243, v125);
    }

    else
    {
      v139 = v217;
      v128(v217, v136, v125);
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
      v141 = *(v140 + 48);
      v142 = *(v140 + 64);
      v143 = *(v126 + 16);
      v131 = v238;
      (v143)(v238, v251, v125);
      v231 = v143;
      (v143)(v131 + v141, v243, v125);
      v235((v131 + v142), v139, v125);
      v114 = v237;
    }

    v132 = v252;
    goto LABEL_31;
  }

  sub_260E155E4(v74, &qword_27FE54320, &qword_260E6E720);

LABEL_5:

  if (qword_27FE53DC8 != -1)
  {
    swift_once();
  }

  v88 = sub_260E68E94();
  __swift_project_value_buffer(v88, qword_27FE549C8);
  v89 = sub_260E68E74();
  v90 = sub_260E69474();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_260E02000, v89, v90, "Could not find asset files", v91, 2u);
    MEMORY[0x2666F1EF0](v91, -1, -1);
  }

  v92 = v248;
  (*(v247 + 56))(v248, 1, 1, v250);
  v93 = objc_allocWithZone(type metadata accessor for AdjustedVideoView());
  return sub_260E559EC(v92);
}

id sub_260E48A38(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AdjustedAsset();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25[-1] - v9;
  LOBYTE(v25[0]) = (*a1 & 1) != 0;
  sub_260E465EC(v25, (&v25[-1] - v9));
  LOBYTE(v25[0]) = *(v2 + 24);
  if (HeadphoneHardwareModel.rawValue.getter() == 0x3173646F50726941 && v11 == 0xEA0000000000342CLL)
  {
    goto LABEL_3;
  }

  v12 = sub_260E69834();

  if (v12)
  {
    goto LABEL_5;
  }

  LOBYTE(v25[0]) = *(v2 + 24);
  if (HeadphoneHardwareModel.rawValue.getter() == 0x3173646F50726941 && v22 == 0xEA0000000000352CLL)
  {
LABEL_3:

LABEL_5:
    v13 = 100.0;
    v14 = 0x404B800000000000;
    goto LABEL_6;
  }

  v23 = sub_260E69834();

  if (v23)
  {
    goto LABEL_5;
  }

  v13 = 24.0;
  v14 = 0x4055C00000000000;
LABEL_6:
  v15 = *&v14;
  v16 = *(v2 + 32);
  sub_260E48E88(v10, v7, type metadata accessor for AdjustedAsset);
  v17 = type metadata accessor for PersonalizedImageView();
  v18 = objc_allocWithZone(v17);
  v19 = sub_260E55088(v7, v15, v13, 68.0);
  if (v16)
  {
    v25[3] = v17;
    v25[4] = sub_260E48EF0();
    v25[0] = v19;
    v20 = v19;
    sub_260E68E34();
    sub_260E48E20(v10, type metadata accessor for AdjustedAsset);
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    sub_260E48E20(v10, type metadata accessor for AdjustedAsset);
  }

  return v19;
}

uint64_t HeadphonePairing2.Assets.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t HeadphonePairing2.Assets.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_260E48D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E48DB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E48E20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_260E48E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_260E48EF0()
{
  result = qword_27FE54A00;
  if (!qword_27FE54A00)
  {
    type metadata accessor for PersonalizedImageView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54A00);
  }

  return result;
}
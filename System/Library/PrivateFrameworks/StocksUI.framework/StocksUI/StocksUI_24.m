uint64_t sub_220722858()
{
  v1 = v0;
  v2 = sub_220885D4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220886A4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v45 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088B50C();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220885D3C();
  v16 = *(v15 + 16);
  v50 = v6;
  v44 = v3;
  v41 = v8;
  if (v16)
  {
    v40 = v14;
    v51 = MEMORY[0x277D84F90];
    sub_2208925EC();
    v18 = *(v3 + 16);
    v17 = v3 + 16;
    v19 = *(v17 + 64);
    v39[1] = v15;
    v20 = v15 + ((v19 + 32) & ~v19);
    v46 = *(v17 + 56);
    v47 = v18;
    v48 = v17;
    v49 = v7;
    v21 = (v17 - 8);
    v22 = v45;
    do
    {
      v47(v6, v20, v2);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_2208863EC();
      sub_2207E53A0(v22, v6);
      (*(v8 + 8))(v22, v49);
      (*v21)(v6, v2);
      sub_2208925CC();
      sub_2208925FC();
      v6 = v50;
      sub_22089260C();
      sub_2208925DC();
      v20 += v46;
      --v16;
    }

    while (v16);

    v23 = v51;
    v14 = v40;
    v7 = v49;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v24 = *MEMORY[0x277D6D7A8];
  v25 = v43;
  v48 = *(v42 + 104);
  v48(v14, v24, v43);
  sub_2205AF574(v23);

  v26 = sub_22088B4FC();
  swift_allocObject();
  v47 = sub_22088B4CC();
  v49 = sub_220634DF8();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  v46 = sub_220884CAC();
  v42 = v29;

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v30 = v45;
  sub_2208863EC();
  v31 = v50;
  sub_2208869CC();
  (*(v41 + 8))(v30, v7);
  sub_220885D2C();
  (*(v44 + 8))(v31, v2);
  v32 = sub_22089132C();
  v33 = [objc_opt_self() systemImageNamed_];

  v48(v14, *MEMORY[0x277D6D7B8], v25);
  sub_22044769C(0, &qword_28127E080, sub_2205D3A54, MEMORY[0x277D84560]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_220899920;
  v35 = MEMORY[0x277D6D798];
  *(v34 + 56) = v26;
  *(v34 + 64) = v35;
  *(v34 + 32) = v47;
  v36 = sub_22088B17C();
  v37 = MEMORY[0x277D6D630];
  *(v34 + 96) = v36;
  *(v34 + 104) = v37;
  *(v34 + 72) = v49;
  swift_allocObject();
  return sub_22088B4CC();
}

uint64_t sub_220722E28()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_220722E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for QuoteSummaryViewLayoutOptions()
{
  result = qword_281286318;
  if (!qword_281286318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220722F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22088FFCC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088F52C();
  if ((*(v7 + 88))(v10, v6) != *MEMORY[0x277D32F88])
  {
    return (*(v7 + 8))(v10, v6);
  }

  (*(v7 + 96))(v10, v6);
  v11 = sub_22089023C();
  v12 = *(v11 - 8);
  if ((*(v12 + 88))(v10, v11) != *MEMORY[0x277D33338])
  {
    return (*(v12 + 8))(v10, v11);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2207FA020(a3, a4);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_220723168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2207FA020(a2, a3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_220723200()
{
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2207232E0(uint64_t a1)
{
  sub_22051D97C();
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_2208854AC() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_220722F5C(a1, v7, v1 + v4, v8);
}

uint64_t objectdestroy_3Tm_2()
{
  sub_22051D97C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_2208854AC();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v3 + 8))(v0 + v4, v2);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_220723508()
{
  sub_22051D97C();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_2208854AC() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_220723168(v5, v0 + v2, v6);
}

uint64_t Assembly.__allocating_init()()
{
  v0 = swift_allocObject();
  Assembly.init()();
  return v0;
}

uint64_t Assembly.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22072369C(void **a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v68 = a2;
  v72 = type metadata accessor for StockFeedServiceContext();
  MEMORY[0x28223BE20](v72, v4);
  v73 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22088F87C();
  v70 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v6);
  v75 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_220885ACC();
  v8 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for StockFeedServiceConfig();
  MEMORY[0x28223BE20](v69, v12);
  v67 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D83D88];
  sub_2207258D8(0, qword_28128E858, type metadata accessor for StockFeedKnobsConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v62 - v17;
  sub_2207258D8(0, qword_281292F18, type metadata accessor for StockFeedConfig, v14);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = (&v62 - v21);
  v23 = type metadata accessor for StockFeedContentConfig();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v62 - v29;
  v66 = *a1;
  sub_2207258D8(0, &qword_28127DF70, type metadata accessor for StockFeedGroupConfig, MEMORY[0x277D84560]);
  v31 = *(type metadata accessor for StockFeedGroupConfig() - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_220899360;
  if (qword_281296C20 != -1)
  {
    swift_once();
  }

  sub_220452BA4();
  v35 = v34;
  v36 = __swift_project_value_buffer(v34, qword_2812B6B88);
  (*(*(v35 - 8) + 16))(v33 + v32, v36, v35);
  v37 = type metadata accessor for StockFeedConfig();
  v38 = *(v37 + 20);
  sub_22088515C();
  v39 = sub_22088516C();
  (*(*(v39 - 8) + 56))(v22 + v38, 0, 1, v39);
  v40 = *(v37 + 24);
  v41 = sub_22088F67C();
  (*(*(v41 - 8) + 56))(v22 + v40, 1, 1, v41);
  *v22 = v33;
  (*(*(v37 - 8) + 56))(v22, 0, 1, v37);
  v42 = type metadata accessor for StockFeedKnobsConfig();
  (*(*(v42 - 8) + 56))(v18, 1, 1, v42);
  v43 = v30;
  v65 = v30;
  sub_220602A44(v22, v18, v30);
  v63 = *(v8 + 16);
  v64 = v8;
  v44 = v11;
  v45 = v74;
  v63(v11, v68 + OBJC_IVAR____TtC8StocksUI29StockFeedServiceConfigFetcher_appConfiguration, v74);
  v46 = v70;
  v47 = v76;
  (*(v70 + 104))(v75, *MEMORY[0x277D32220], v76);
  v62 = v26;
  sub_22072548C(v43, v26, type metadata accessor for StockFeedContentConfig);
  v48 = v73;
  sub_22072548C(v71, v73, type metadata accessor for StockFeedServiceContext);
  v49 = v67;
  v63(v67, v44, v45);
  v50 = v69;
  v51 = v75;
  (*(v46 + 16))(&v49[*(v69 + 20)], v75, v47);
  v52 = v62;
  sub_22072548C(v62, &v49[v50[6]], type metadata accessor for StockFeedContentConfig);
  sub_22072548C(v48, &v49[v50[7]], type metadata accessor for StockFeedServiceContext);
  v53 = v66;
  *&v49[v50[8]] = v66;
  v54 = v53;
  sub_220885A8C();
  v56 = v55;
  sub_2205A6140(v52, type metadata accessor for StockFeedContentConfig);
  (*(v46 + 8))(v51, v76);
  (*(v64 + 8))(v44, v74);
  *&v49[v50[9]] = v56;
  v57 = *(v72 + 20);
  v58 = v50[10];
  v59 = sub_22088685C();
  (*(*(v59 - 8) + 16))(&v49[v58], v48 + v57, v59);
  sub_2205A6140(v48, type metadata accessor for StockFeedServiceContext);
  sub_2207258D8(0, &qword_281298638, type metadata accessor for StockFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v60 = sub_220888ECC();
  sub_2205A6140(v65, type metadata accessor for StockFeedContentConfig);
  return v60;
}

uint64_t sub_220723EA4()
{
  v1 = OBJC_IVAR____TtC8StocksUI29StockFeedServiceConfigFetcher_appConfiguration;
  v2 = sub_220885ACC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI29StockFeedServiceConfigFetcher_paidBundleConfigManager);

  return swift_deallocClassInstance();
}

uint64_t sub_220723F88()
{
  result = sub_220885ACC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22072402C(uint64_t a1)
{
  v2 = type metadata accessor for StockFeedServiceContext();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  sub_22044E0CC();
  sub_220888FBC();
  sub_22072548C(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StockFeedServiceContext);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2207254F4(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for StockFeedServiceContext);
  v8 = sub_220888D9C();
  type metadata accessor for StockFeedServiceConfig();
  v9 = sub_220888E5C();

  return v9;
}

uint64_t sub_2207241CC(uint64_t a1, void *a2, void *a3)
{
  v5 = [*(a1 + *a2) appConfiguration];
  if ([v5 respondsToSelector_])
  {
    [v5 paidBundleConfig];
    swift_unknownObjectRelease();
    sub_2207258D8(0, &qword_2812985E8, sub_22044E0CC, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1((a1 + *a3), *(a1 + *a3 + 24));
    return sub_220890A4C();
  }
}

uint64_t sub_2207242E4(void **a1)
{
  v1 = *a1;
  sub_220888FBC();
  v2 = sub_220888D9C();
  type metadata accessor for StockFeedContentConfig();
  sub_220888E3C();

  *(swift_allocObject() + 16) = v1;
  v3 = v1;
  v4 = sub_220888D9C();
  sub_2207252B8();
  v5 = sub_220888E4C();

  return v5;
}

uint64_t sub_2207243F8(uint64_t a1, uint64_t a2, void *a3)
{
  v58 = a3;
  v56 = a2;
  v59 = type metadata accessor for StockFeedServiceContext() - 8;
  MEMORY[0x28223BE20](v59, v4);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22088F87C();
  v48 = *(v54 - 8);
  v6 = v48;
  MEMORY[0x28223BE20](v54, v7);
  v61 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_220885ACC();
  v52 = *(v60 - 8);
  v9 = v52;
  MEMORY[0x28223BE20](v60, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for StockFeedServiceConfig() - 8;
  MEMORY[0x28223BE20](v50, v13);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207252B8();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15, v17);
  v19 = (&v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for StockFeedContentConfig();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v47 - v26;
  sub_22072548C(a1, v19, sub_2207252B8);
  v51 = *v19;
  v28 = v19 + *(v16 + 56);
  v29 = v27;
  v55 = v27;
  sub_2207254F4(v28, v27, type metadata accessor for StockFeedContentConfig);
  v49 = *(v9 + 16);
  v30 = v60;
  v49(v12, v56 + OBJC_IVAR____TtC8StocksUI32NFFStockFeedServiceConfigFetcher_appConfiguration, v60);
  v31 = v61;
  v32 = v54;
  (*(v6 + 104))(v61, *MEMORY[0x277D32220], v54);
  sub_22072548C(v29, v23, type metadata accessor for StockFeedContentConfig);
  v33 = v57;
  sub_22072548C(v58, v57, type metadata accessor for StockFeedServiceContext);
  v34 = v53;
  v49(v53, v12, v30);
  v35 = v50;
  v36 = v48;
  (*(v48 + 16))(&v34[*(v50 + 28)], v31, v32);
  v37 = v47;
  sub_22072548C(v47, &v34[v35[8]], type metadata accessor for StockFeedContentConfig);
  sub_22072548C(v33, &v34[v35[9]], type metadata accessor for StockFeedServiceContext);
  v38 = v35;
  v39 = v51;
  *&v34[v35[10]] = v51;
  v58 = v39;
  sub_220885A8C();
  v41 = v40;
  sub_2205A6140(v37, type metadata accessor for StockFeedContentConfig);
  (*(v36 + 8))(v61, v32);
  (*(v52 + 8))(v12, v60);
  *&v34[v35[11]] = v41;
  v42 = *(v59 + 28);
  v43 = v38[12];
  v44 = sub_22088685C();
  (*(*(v44 - 8) + 16))(&v34[v43], v33 + v42, v44);
  sub_2205A6140(v33, type metadata accessor for StockFeedServiceContext);
  sub_2207258D8(0, &qword_281298638, type metadata accessor for StockFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v45 = sub_220888ECC();

  sub_2205A6140(v55, type metadata accessor for StockFeedContentConfig);
  return v45;
}

uint64_t sub_22072496C(uint64_t a1)
{
  sub_2207258D8(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = sub_220884E9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298D48 != -1)
  {
    swift_once();
  }

  if (sub_220886B7C())
  {
    if (qword_27CF55B90 != -1)
    {
      swift_once();
    }

    sub_220453568(&qword_27CF59240, type metadata accessor for NFFStockFeedServiceConfigFetcher);
    sub_220886B3C();
    sub_220884E8C();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_22047C4E4(v5);
      sub_2207255E4();
      swift_allocError();
      *v11 = 1;
      sub_2206EC60C();
      swift_allocObject();
      return sub_220888EBC();
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v13 = sub_220725638(v10);
      (*(v7 + 8))(v10, v6);
      return v13;
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
    return sub_2208863CC();
  }
}

uint64_t sub_220724C8C()
{
  v1 = type metadata accessor for StockFeedContentConfig();
  MEMORY[0x28223BE20](v1, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v11 - v7;
  sub_22088F60C();
  swift_allocObject();
  v9 = sub_22088F5FC();
  sub_220453568(&qword_28128C640, type metadata accessor for StockFeedContentConfig);
  sub_22088827C();

  if (!v0)
  {
    sub_22072548C(v8, v4, type metadata accessor for StockFeedContentConfig);
    sub_2207258D8(0, &unk_281298640, type metadata accessor for StockFeedContentConfig, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v9 = sub_220888ECC();
    sub_2205A6140(v8, type metadata accessor for StockFeedContentConfig);
  }

  return v9;
}

uint64_t sub_220724E5C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC8StocksUI32NFFStockFeedServiceConfigFetcher_appConfiguration;
  v2 = sub_220885ACC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI32NFFStockFeedServiceConfigFetcher_paidBundleConfigManager);

  return swift_deallocClassInstance();
}

uint64_t sub_220724F48()
{
  result = sub_220885ACC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_220724FF0(uint64_t a1)
{
  v2 = type metadata accessor for StockFeedServiceContext();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  sub_22044E0CC();
  sub_220888FBC();
  v6 = sub_220888D9C();
  sub_2207252B8();
  sub_220888E5C();

  sub_22072548C(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StockFeedServiceContext);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_2207254F4(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for StockFeedServiceContext);
  v9 = sub_220888D9C();
  type metadata accessor for StockFeedServiceConfig();
  v10 = sub_220888E5C();

  return v10;
}

void sub_2207252B8()
{
  if (!qword_28127E600)
  {
    sub_22044E0CC();
    type metadata accessor for StockFeedContentConfig();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E600);
    }
  }
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for StockFeedServiceContext() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_22088685C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_22072548C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207254F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_220725578@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_2207252B8();
  v7 = *(v6 + 48);
  *a2 = v5;
  sub_22072548C(a1, a2 + v7, type metadata accessor for StockFeedContentConfig);
  return v5;
}

unint64_t sub_2207255E4()
{
  result = qword_27CF59248;
  if (!qword_27CF59248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59248);
  }

  return result;
}

uint64_t sub_220725638(uint64_t a1)
{
  v2 = sub_220884E9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22088495C();
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812948A0 != -1)
  {
    swift_once();
  }

  sub_2207258D8(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_220899360;
  v12 = sub_220884E0C();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_22048D860();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_220891AFC();
  sub_22088A7EC();

  (*(v3 + 16))(v6, a1, v2);
  sub_22088494C();
  v15 = [objc_opt_self() sharedSession];
  v16 = sub_220888D7C();

  (*(v7 + 8))(v10, v19);
  return v16;
}

void sub_2207258D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_220725950()
{
  result = qword_27CF59250;
  if (!qword_27CF59250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59250);
  }

  return result;
}

unint64_t sub_220725B40()
{
  result = qword_28127E8B8;
  if (!qword_28127E8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E8B8);
  }

  return result;
}

uint64_t sub_220725BB4(uint64_t a1)
{
  sub_22061D1D0(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v30[-v10];
  v12 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v1 + 16);
  sub_2207261E0(a1, v15, type metadata accessor for WatchlistCreationRouteModel);
  swift_storeEnumTagMultiPayload();
  v17 = sub_22088969C();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = v16;
  sub_2205A0924(v36, &v31, &unk_281298970, &unk_281298980);
  if (*(&v32 + 1))
  {
    sub_220458198(&v31, v33);
    v18 = sub_220597454(v33);
    v20 = v19;
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_2205A0B34(&v31, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v18 = qword_2812908F8;
    v20 = qword_281290900;
    v22 = qword_281290908;

    sub_2204A80F4(v20);
  }

  v32 = 0u;
  v31 = 0u;
  sub_2207261E0(v11, v7, sub_22061D1D0);
  sub_2205A0924(v38, v33, &unk_281296D10, &qword_281296D20);
  v23 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v24 = (v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  sub_2205A0994(v7, v25 + v23);
  v26 = v25 + v24;
  v27 = v33[1];
  *v26 = v33[0];
  *(v26 + 16) = v27;
  *(v26 + 32) = v34;
  v28 = (v25 + ((v24 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v28 = v18;
  v28[1] = v20;
  v28[2] = v22;

  sub_2204A80F4(v20);
  sub_2204549FC();
  sub_2204489A0(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v20);
  sub_2205A0B34(v36, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v38, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220650F50(v11, sub_22061D1D0);
  sub_220650F50(v15, type metadata accessor for StocksActivity);
  return sub_2205A0B34(&v31, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_2207261E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ForYouFeedPriceChangeDisplayBlueprintModifier()
{
  result = qword_28127F6C8;
  if (!qword_28127F6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2207262BC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v37 = a3;
  v38 = a2;
  sub_22051D6A0(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v33 - v6;
  sub_2205252E0();
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_22051D6A0(0, &qword_281296EA0, MEMORY[0x277D6EC60]);
  v11 = v10;
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - v13;
  v46 = 0;
  sub_22088E6FC();
  v33 = v15;
  v40 = v3;
  v41 = &v46;
  v16 = sub_220573C28(sub_2207279B0, v39);
  sub_2204FA2D0();
  v18 = v17;
  v19 = sub_2207279D0(&qword_281297E78, sub_2204FA2D0);
  v20 = sub_2207279D0(&qword_281297E80, sub_2204FA2D0);
  MEMORY[0x223D80A20](v16, v18, v19, v20);
  type metadata accessor for ForYouFeedSectionDescriptor();
  type metadata accessor for ForYouFeedModel();
  sub_2207279D0(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
  sub_2207279D0(&unk_281293320, type metadata accessor for ForYouFeedModel);
  sub_22088E6EC();
  v21 = sub_2205BF5D0();
  sub_22088FA1C();
  sub_22088FA0C();
  type metadata accessor for ForYouFeedServiceConfig();
  sub_2207279D0(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
  v22 = sub_22088F9EC();

  v23 = 0;
  if (v22)
  {
    v23 = sub_22088F45C();
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v42 = v22;
  v45 = v23;
  sub_22088E7BC();
  sub_22062782C(v21);
  v24 = v34;
  if (v46 == 1)
  {
    sub_220525DD8();
    v26 = *(v25 + 48);
    (*(v24 + 16))(v7, v14, v11);
    v27 = *MEMORY[0x277D6D868];
    v28 = sub_22088B64C();
    (*(*(v28 - 8) + 104))(&v7[v26], v27, v28);
    v29 = MEMORY[0x277D6DF70];
  }

  else
  {
    v29 = MEMORY[0x277D6DF80];
  }

  v31 = v35;
  v30 = v36;
  (*(v35 + 104))(v7, *v29, v36);
  v38(v7);
  (*(v31 + 8))(v7, v30);
  return (*(v24 + 8))(v14, v11);
}

uint64_t sub_220726780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v146 = a3;
  v160 = a2;
  v172 = a4;
  v153 = sub_2208852DC();
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v6);
  v159 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_2208857EC();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v8);
  v158 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_22088699C();
  v155 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v10);
  v154 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v167 = &v134 - v14;
  v169 = sub_220885D4C();
  v157 = *(v169 - 1);
  MEMORY[0x28223BE20](v169, v15);
  v17 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204545BC(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v134 - v20;
  sub_2204545BC(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v145 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v134 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v144 = &v134 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v134 - v34;
  MEMORY[0x28223BE20](v36, v37);
  v156 = &v134 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v165 = &v134 - v41;
  sub_2204545BC(0, &qword_281296C60, MEMORY[0x277D31C50]);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v164 = &v134 - v44;
  v161 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v161, v45);
  v166 = &v134 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v162 = &v134 - v49;
  v171 = sub_22088685C();
  v163 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v50);
  v170 = &v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v53);
  v168 = &v134 - v54;
  v55 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v55, v56);
  v148 = &v134 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58, v59);
  v61 = &v134 - v60;
  sub_2204FA2D0();
  v63 = v62;
  v173 = a1;
  sub_22088B2AC();
  v147 = v55;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    return (*(*(v63 - 8) + 16))(v172, v173, v63);
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_2204FC224(v61, type metadata accessor for ForYouFeedSectionDescriptor);
    return (*(*(v63 - 8) + 16))(v172, v173, v63);
  }

  if (EnumCaseMultiPayload)
  {
    v140 = v28;
    v141 = v21;
    v142 = v17;
    v143 = v4;
    sub_22045849C();
    v67 = v66;
    v68 = *(v66 + 48);
    v69 = *(v66 + 64);
    v70 = v163;
    (*(v163 + 32))(v168, v61, v171);
    v71 = v162;
    sub_22050381C(&v61[v68], v162);
    v72 = &v61[v69];
    v73 = v164;
    sub_2204FBAC4(v72, v164);
    v74 = v161;
    v75 = *(type metadata accessor for ForYouFeedPriceChangeDisplayBlueprintModifier() + 20);
    sub_2207279D0(&qword_2812992E8, MEMORY[0x277D69488]);
    v139 = v75;
    v76 = v169;
    if (sub_2208912FC())
    {
      sub_22051F3D0(v73, &qword_281296C60, MEMORY[0x277D31C50]);
      sub_2204FC224(v71, type metadata accessor for StockViewModel);
      (*(v70 + 8))(v168, v171);
      return (*(*(v63 - 8) + 16))(v172, v173, v63);
    }

    else
    {
      v138 = v67;
      *v146 = 1;
      v77 = v70 + 16;
      v78 = *(v70 + 16);
      v78(v170, v71, v171);
      v79 = v74[5];
      v146 = MEMORY[0x277D697F8];
      sub_2204B2B80(v71 + v79, v165, &qword_2812990C0, MEMORY[0x277D697F8]);
      v80 = type metadata accessor for StockSparklineViewModel(0);
      v81 = v141;
      (*(*(v80 - 8) + 56))(v141, 1, 1, v80);
      v82 = v76;
      v136 = *(v157 + 16);
      v83 = v142;
      v136(v142, v160 + v139, v82);
      v84 = v166;
      v139 = v77;
      v137 = v78;
      v78(v166, v170, v171);
      v85 = v165;
      v86 = v146;
      sub_2204B2B80(v165, v84 + v74[5], &qword_2812990C0, v146);
      sub_2204B2B80(v81, v84 + v74[6], qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
      v136((v84 + v74[8]), v83, v169);
      *(v84 + v74[9]) = 0;
      v87 = v156;
      sub_2204B2B80(v85, v156, &qword_2812990C0, v86);
      sub_2208867CC();
      sub_2204B2B80(v87, v35, &qword_2812990C0, v86);
      v88 = sub_22088676C();
      v89 = *(v88 - 8);
      v90 = *(v89 + 48);
      v91 = v90(v35, 1, v88);
      v160 = v89;
      if (v91 == 1)
      {
        sub_22051F3D0(v35, &qword_2812990C0, MEMORY[0x277D697F8]);
        v136 = 0;
        v135 = 1;
      }

      else
      {
        v136 = sub_22088675C();
        v135 = v92;
        (*(v89 + 8))(v35, v88);
      }

      v93 = v155;
      v94 = v145;
      v95 = v140;
      v96 = v144;
      sub_2204B2B80(v87, v144, &qword_2812990C0, MEMORY[0x277D697F8]);
      if (v90(v96, 1, v88) == 1)
      {
        sub_22051F3D0(v96, &qword_2812990C0, MEMORY[0x277D697F8]);
        v145 = 0;
        LODWORD(v144) = 1;
      }

      else
      {
        v145 = sub_22088666C();
        LODWORD(v144) = v97;
        (*(v160 + 8))(v96, v88);
      }

      sub_2204B2B80(v87, v95, &qword_2812990C0, MEMORY[0x277D697F8]);
      v98 = v90(v95, 1, v88);
      v99 = v95;
      v100 = v149;
      if (v98 == 1)
      {
        sub_22051F3D0(v99, &qword_2812990C0, MEMORY[0x277D697F8]);
        v140 = 0;
        v134 = 1;
      }

      else
      {
        v140 = sub_22088671C();
        v134 = v101;
        (*(v160 + 8))(v99, v88);
      }

      sub_2204B2B80(v87, v94, &qword_2812990C0, MEMORY[0x277D697F8]);
      v102 = v90(v94, 1, v88);
      v103 = v88;
      v104 = v158;
      if (v102 == 1)
      {
        sub_22051F3D0(v94, &qword_2812990C0, MEMORY[0x277D697F8]);
        v146 = 0;
        v105 = 0;
      }

      else
      {
        v146 = sub_22088668C();
        v105 = v106;
        (*(v160 + 8))(v94, v103);
      }

      v107 = v154;
      v108 = &v166[*(v161 + 28)];
      v161 = *(v93 + 16);
      (v161)(v154, v167, v100);
      v109 = v150;
      v110 = v151;
      (*(v150 + 104))(v104, *MEMORY[0x277D69288], v151);
      v111 = v159;
      sub_22088524C();
      *v108 = v136;
      v108[8] = v135 & 1;
      *(v108 + 2) = v145;
      v108[24] = v144 & 1;
      *(v108 + 4) = v140;
      v108[40] = v134 & 1;
      *(v108 + 6) = v146;
      *(v108 + 7) = v105;
      v112 = type metadata accessor for PriceViewModel();
      v113 = v107;
      v114 = v100;
      (v161)(&v108[v112[10]], v113, v100);
      v115 = v110;
      v116 = v158;
      v117 = v111;
      *(v108 + 8) = 9666786;
      *(v108 + 9) = 0xA300000000000000;
      (*(v109 + 16))(&v108[v112[9]], v116, v115);
      v118 = v152;
      v119 = v117;
      v120 = v153;
      (*(v152 + 16))(&v108[v112[11]], v119, v153);
      if (qword_281294078 != -1)
      {
        swift_once();
      }

      v121 = qword_2812B6B48;
      (*(v109 + 8))(v116, v115);
      v122 = *(v155 + 8);
      v122(v154, v114);
      v122(v167, v114);
      v123 = MEMORY[0x277D697F8];
      sub_22051F3D0(v156, &qword_2812990C0, MEMORY[0x277D697F8]);
      (*(v157 + 8))(v142, v169);
      sub_22051F3D0(v141, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
      sub_22051F3D0(v165, &qword_2812990C0, v123);
      v169 = *(v163 + 8);
      v124 = v171;
      (v169)(v170, v171);
      v125 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
      swift_beginAccess();
      (*(v118 + 40))(v121 + v125, v159, v120);
      swift_endAccess();
      v126 = *(v138 + 48);
      v127 = *(v138 + 64);
      v128 = v148;
      v129 = v168;
      v137(v148, v168, v124);
      v130 = v166;
      sub_220527BCC(v166, v128 + v126);
      v131 = MEMORY[0x277D31C50];
      v132 = v128 + v127;
      v133 = v164;
      sub_2204B2B80(v164, v132, &qword_281296C60, MEMORY[0x277D31C50]);
      swift_storeEnumTagMultiPayload();
      sub_22088B2DC();
      sub_2204FC224(v128, type metadata accessor for ForYouFeedSectionDescriptor);
      sub_2204FC224(v130, type metadata accessor for StockViewModel);
      sub_22051F3D0(v133, &qword_281296C60, v131);
      sub_2204FC224(v162, type metadata accessor for StockViewModel);
      return (v169)(v129, v124);
    }
  }

  else
  {
    (*(*(v63 - 8) + 16))(v172, v173, v63);
    return sub_22051F3D0(v61, &qword_281296C60, MEMORY[0x277D31C50]);
  }
}

uint64_t sub_2207279D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_8StocksUI22WatchlistSwitcherModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_220727A4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_220727A94(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_220727AF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (v37)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281288850);
    result = sub_2208884DC();
    v5 = v35;
    if (v35)
    {
      sub_220728048();
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_22089C660;
      v7 = type metadata accessor for AppSessionEndEventTranslator();
      v8 = swift_allocObject();
      *(v6 + 56) = v7;
      *(v6 + 64) = &off_283417358;
      *(v6 + 32) = v8;
      started = type metadata accessor for AppSessionStartEventTranslator();
      v10 = swift_allocObject();
      *(v6 + 96) = started;
      *(v6 + 104) = &off_283416A58;
      *(v6 + 72) = v10;
      v11 = type metadata accessor for ArticleEngagementEventTranslator();
      v12 = swift_allocObject();
      *(v6 + 136) = v11;
      *(v6 + 144) = &off_28341BF70;
      *(v6 + 112) = v12;
      v13 = type metadata accessor for FeedViewEventTranslator();
      v14 = swift_allocObject();
      *(v6 + 176) = v13;
      *(v6 + 184) = &off_2834166E0;
      *(v6 + 152) = v14;
      v15 = type metadata accessor for WatchSymbolEventTranslator();
      v16 = swift_allocObject();
      *(v6 + 216) = v15;
      *(v6 + 224) = &off_28341FBB0;
      *(v6 + 192) = v16;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v34, v5);
      v18 = MEMORY[0x28223BE20](v17, v17);
      v20 = (&v31[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20, v18);
      v22 = *v20;
      v32 = type metadata accessor for AppReviewRequestManager();
      v33 = &off_283427CE0;
      v31[0] = v22;
      v23 = objc_allocWithZone(type metadata accessor for StocksEngagementEventProcessor());
      v24 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v25 = MEMORY[0x28223BE20](v24, v24);
      v27 = (&v31[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v28 + 16))(v27, v25);
      v29 = sub_220727E84(v36, *v27, v6, v23);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v34);
      result = sub_220457154(qword_281295768, type metadata accessor for StocksEngagementEventProcessor);
      *a2 = v29;
      a2[1] = result;
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

id sub_220727E84(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_22088825C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18[3] = type metadata accessor for AppReviewRequestManager();
  v18[4] = &off_283427CE0;
  v18[0] = a2;
  sub_22046DA2C(a1, &a4[OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_featureAvailability]);
  sub_22046DA2C(v18, &a4[OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_appReviewRequestManager]);
  *&a4[OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_eventTranslators] = a3;
  sub_22088829C();
  swift_allocObject();
  *&a4[OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_jsonDecoder] = sub_22088828C();
  *v13 = sub_220707CB8;
  v13[1] = 0;
  (*(v10 + 104))(v13, *MEMORY[0x277D6C9B0], v9);

  sub_22088826C();

  v17.receiver = a4;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

void sub_220728048()
{
  if (!qword_28127DF98)
  {
    sub_220446A58(255, qword_2812955B0);
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DF98);
    }
  }
}

uint64_t StockSearchCompositionalLayoutOptionsProvider.layoutOptions(for:)(void *a1)
{
  v2 = sub_22088DA1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088DFCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v18 - v14;
  *(&v18 - v14) = xmmword_2208AFC50;
  (*(v8 + 104))(&v18 - v14, *MEMORY[0x277D6EB28], v7);
  v16 = [a1 horizontalSizeClass];
  if (v16 < 2)
  {
    sub_22088D9FC();
    sub_22088D9EC();
    sub_22088D9EC();
    sub_22088D9EC();
    sub_22088D9EC();
LABEL_6:
    sub_22088D9BC();
    sub_22088D9CC();
    (*(v8 + 16))(v11, v15, v7);
    sub_22088D9DC();
    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v15, v7);
  }

  if (v16 == 2)
  {
    sub_22088DA0C();
    sub_22088D9EC();
    sub_22088D9EC();
    sub_22088D9EC();
    sub_22088D9EC();
    goto LABEL_6;
  }

  sub_22088D9FC();
  return (*(v8 + 8))(v15, v7);
}

BOOL sub_2207283C0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_22052024C();
      return sub_22088F70C() & 1;
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_220728420()
{
  if (*v0)
  {
    return 0x726F73727563;
  }

  else
  {
    return 0x656546664F706F74;
  }
}

uint64_t sub_22072845C()
{
  if (!*v0)
  {
    return 0x656546664F706F74;
  }

  v1 = sub_22088F6EC();
  MEMORY[0x223D89680](v1);

  MEMORY[0x223D89680](41, 0xE100000000000000);
  return 0x28726F73727563;
}

uint64_t sub_2207284E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteSummaryTimeRange();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22072854C(uint64_t a1)
{
  v2 = type metadata accessor for QuoteSummaryTimeRange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2207286D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_220728F6C(0, qword_28128B590, type metadata accessor for NewsStockFeedGroupKnobs);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v24 - v10;
  sub_220728F6C(0, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v24 - v14;
  v16 = type metadata accessor for StockFeedGroupKnobs();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220728FC0(a1, v15);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    v22 = type metadata accessor for NewsStockFeedGroupKnobs();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    sub_22068599C(v11, v20);
    sub_220729040(a1);
    if (v21(v15, 1, v16) != 1)
    {
      sub_220729040(v15);
    }
  }

  else
  {
    sub_220729040(a1);
    sub_2206682A8(v15, v20);
  }

  sub_2206682A8(v20, a4);
  if (a3)
  {
    a2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result = type metadata accessor for StockFeedKnobsConfig();
  *(a4 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_220728944@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_220728F6C(0, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_2207290B8();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220729114();
  sub_220892A4C();
  if (!v2)
  {
    type metadata accessor for StockFeedGroupKnobs();
    v20 = 0;
    sub_220729168();
    sub_22089271C();
    v19 = 1;
    sub_22089271C();
    sub_2207286D8(v7, v17, v18, v16);
    (*(v10 + 8))(v13, v9);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_220728B40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x70756F724778616DLL;
  }

  else
  {
    v3 = 0x6F6E4B70756F7267;
  }

  if (v2)
  {
    v4 = 0xEA00000000007362;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x70756F724778616DLL;
  }

  else
  {
    v5 = 0x6F6E4B70756F7267;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xEA00000000007362;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_220728BF0()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_220728C7C()
{
  sub_22089146C();
}

uint64_t sub_220728CF4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_220728D7C@<X0>(char *a1@<X8>)
{
  v2 = sub_22089270C();

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

void sub_220728DDC(uint64_t *a1@<X8>)
{
  v2 = 0x6F6E4B70756F7267;
  if (*v1)
  {
    v2 = 0x70756F724778616DLL;
  }

  v3 = 0xEA00000000007362;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_220728E24()
{
  if (*v0)
  {
    return 0x70756F724778616DLL;
  }

  else
  {
    return 0x6F6E4B70756F7267;
  }
}

uint64_t sub_220728E68@<X0>(char *a1@<X8>)
{
  v2 = sub_22089270C();

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

uint64_t sub_220728ECC(uint64_t a1)
{
  v2 = sub_220729114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220728F08(uint64_t a1)
{
  v2 = sub_220729114();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_220728F6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220728FC0(uint64_t a1, uint64_t a2)
{
  sub_220728F6C(0, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220729040(uint64_t a1)
{
  sub_220728F6C(0, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2207290B8()
{
  if (!qword_28127E250)
  {
    sub_220729114();
    v0 = sub_2208927BC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E250);
    }
  }
}

unint64_t sub_220729114()
{
  result = qword_28128E8B8[0];
  if (!qword_28128E8B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128E8B8);
  }

  return result;
}

unint64_t sub_220729168()
{
  result = qword_28128FB58;
  if (!qword_28128FB58)
  {
    type metadata accessor for StockFeedGroupKnobs();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FB58);
  }

  return result;
}

uint64_t sub_2207291C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_220729238()
{
  result = qword_27CF592A8;
  if (!qword_27CF592A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF592A8);
  }

  return result;
}

unint64_t sub_220729290()
{
  result = qword_28128E8A8;
  if (!qword_28128E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128E8A8);
  }

  return result;
}

unint64_t sub_2207292E8()
{
  result = qword_28128E8B0;
  if (!qword_28128E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128E8B0);
  }

  return result;
}

uint64_t sub_22072933C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v45 = a3;
  v5 = sub_22088F23C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D524();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v44 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v43, v13);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v41 - v17;
  v19 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for NewsPlacardStockFeedGroup();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for StockFeedGroup();
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206008F4(a1, v30, type metadata accessor for StockFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22060095C(v30, v22, type metadata accessor for NewsStockFeedGroup);
      sub_2207D62E8(v18);
      v32 = sub_2206008F4(v18, v42, type metadata accessor for StockFeedSectionDescriptor);
      MEMORY[0x28223BE20](v32, v33);
      *(&v41 - 4) = v41;
      *(&v41 - 3) = v22;
      *(&v41 - 2) = v3;
      v35 = sub_2205731B8(sub_22072ACF8, (&v41 - 6), v34);
      sub_22055D328();
      v37 = v36;
      v38 = sub_22072ACB0(&qword_281297FB8, sub_22055D328);
      v39 = sub_22072ACB0(&qword_281297FC0, sub_22055D328);
      MEMORY[0x223D80A20](v35, v37, v38, v39);
      type metadata accessor for StockFeedModel();
      sub_22072ACB0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
      sub_22072ACB0(&qword_281293DD0, type metadata accessor for StockFeedModel);
      sub_22088B29C();
      sub_22072AD1C(v18, type metadata accessor for StockFeedSectionDescriptor);
      return sub_22072AD1C(v22, type metadata accessor for NewsStockFeedGroup);
    }

    else
    {
      (*(v6 + 32))(v9, v30, v5);
      sub_220729D2C(v9, v45);
      return (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    sub_22060095C(v30, v26, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_220729860(v26, v45);
    return sub_22072AD1C(v26, type metadata accessor for NewsPlacardStockFeedGroup);
  }
}

uint64_t sub_220729860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v3 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v3, v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22055D328();
  v25 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D524();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v14, v15);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  if ((sub_220885E7C() & 1) != 0 && *(v23 + *(type metadata accessor for NewsPlacardStockFeedGroup() + 20)) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v16 = sub_22072ACB0(&qword_281297FB8, sub_22055D328);
    v17 = sub_22072ACB0(&qword_281297FC0, sub_22055D328);
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v25, v16, v17);
    sub_22072ACB0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    sub_22072ACB0(&qword_281293DD0, type metadata accessor for StockFeedModel);
    sub_22088B29C();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v18 = sub_22072ACB0(&qword_281297FB8, sub_22055D328);
    v19 = sub_22072ACB0(&qword_281297FC0, sub_22055D328);
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v25, v18, v19);
    sub_22072ACB0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    sub_22072ACB0(&qword_281293DD0, type metadata accessor for StockFeedModel);
    sub_22088B29C();
    if (qword_281299528 != -1)
    {
      swift_once();
    }

    v20 = *algn_2812B6D88;
    *v6 = qword_2812B6D80;
    v6[1] = v20;
    swift_storeEnumTagMultiPayload();
  }

  sub_22088AD7C();
  sub_22055CE80(0);
  sub_22088B30C();
  return (*(v8 + 8))(v11, v25);
}

uint64_t sub_220729D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  sub_22055D524();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v20[0] = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v7, v8);
  v9 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088F23C();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  swift_storeEnumTagMultiPayload();
  sub_22072A424();
  sub_22055D328();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220899360;
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  sub_22088FB2C();
  swift_storeEnumTagMultiPayload();
  sub_22072ACB0(&qword_281293DD0, type metadata accessor for StockFeedModel);
  sub_22088AD7C();
  v17 = sub_22072ACB0(&qword_281297FB8, sub_22055D328);
  v18 = sub_22072ACB0(&qword_281297FC0, sub_22055D328);
  MEMORY[0x223D80A10](v16, v15, v17, v18);
  sub_22072ACB0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
  return sub_22088B29C();
}

uint64_t sub_22072A07C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22072A0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a1;
  v21[1] = a3;
  sub_22055D524();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v6, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v10, v11);
  swift_storeEnumTagMultiPayload();
  sub_22072A424();
  sub_22055D328();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220899360;
  sub_220459914();
  v16 = *(v15 + 48);
  v17 = sub_22089030C();
  (*(*(v17 - 8) + 16))(v9, v21[0], v17);
  *&v9[v16] = a2;
  swift_storeEnumTagMultiPayload();
  sub_22072ACB0(&qword_281293DD0, type metadata accessor for StockFeedModel);

  sub_22088AD7C();
  v18 = sub_22072ACB0(&qword_281297FB8, sub_22055D328);
  v19 = sub_22072ACB0(&qword_281297FC0, sub_22055D328);
  MEMORY[0x223D80A10](v14, v13, v18, v19);
  sub_22072ACB0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
  return sub_22088B29C();
}

void sub_22072A424()
{
  if (!qword_28127E100)
  {
    sub_22055D328();
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E100);
    }
  }
}

uint64_t sub_22072A47C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v74 = a5;
  v8 = sub_22088FFFC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v69 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v58 - v14;
  v16 = sub_22088698C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v65 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v58 - v22;
  v70 = type metadata accessor for StockFeedModel();
  v25 = MEMORY[0x28223BE20](v70, v24);
  v67 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v17;
  v27 = *(v17 + 16);
  v66 = v23;
  v59 = v16;
  v62 = v17 + 16;
  v61 = v27;
  (v27)(v23, a1, v16, v25);
  v71 = v15;
  v72 = v9;
  v28 = *(v9 + 16);
  v73 = v8;
  v60 = v28;
  v28(v15, a2, v8);
  v29 = a3[1];
  v64 = *a3;
  v30 = *(v63 + 96);
  v63 = v29;

  v31 = sub_2208868DC();
  v32 = [v31 isPaid];
  if ([v31 respondsToSelector_])
  {
    v33 = [v31 isBundlePaid];
  }

  else
  {
    v33 = 0;
  }

  v34 = [v31 sourceChannel];
  if (v34)
  {
    v35 = [v34 identifier];
    swift_unknownObjectRelease();
    v36 = sub_22089136C();
    v38 = v37;

    if (v32)
    {
      goto LABEL_6;
    }

LABEL_10:
    if ((v33 & 1) == 0)
    {
      swift_unknownObjectRelease();

      goto LABEL_32;
    }

    goto LABEL_14;
  }

  v36 = 0;
  v38 = 0;
  if (!v32)
  {
    goto LABEL_10;
  }

LABEL_6:
  v39 = [v30 purchaseProvider];
  if (!v38)
  {
    swift_unknownObjectRelease();
LABEL_13:
    if (!v33)
    {
      swift_unknownObjectRelease();

      goto LABEL_37;
    }

LABEL_14:
    if (!v38)
    {
LABEL_36:
      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    v42 = [objc_msgSend(v30 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v42, v42 + 1))
    {
      sub_2208923BC();
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
    }

    v77 = v75;
    v78 = v76;
    if (*(&v76 + 1))
    {
      sub_2204DD8BC();
      if (swift_dynamicCast())
      {
        v43 = v79;
        v44 = [v79 integerValue];
        if (v44 == -1)
        {

          goto LABEL_31;
        }

LABEL_25:
        v58 = v44;
        if (objc_getAssociatedObject(v42, ~v44))
        {
          sub_2208923BC();
          swift_unknownObjectRelease();
        }

        else
        {
          v75 = 0u;
          v76 = 0u;
        }

        v77 = v75;
        v78 = v76;
        if (*(&v76 + 1))
        {
          sub_2204DD8BC();
          if (swift_dynamicCast())
          {
            v45 = v79;
            v46 = [v45 integerValue];

            if ((v46 ^ v58))
            {
              goto LABEL_31;
            }

LABEL_35:

            goto LABEL_36;
          }
        }

        else
        {
          sub_22072AD1C(&v77, sub_22055F87C);
        }

        if (v58)
        {
LABEL_31:
          v47 = [objc_msgSend(v30 bundleSubscriptionProvider)];
          swift_unknownObjectRelease();
          v48 = [v47 bundleChannelIDs];

          v49 = sub_22089132C();
          v50 = [v48 containsObject_];

          swift_unknownObjectRelease();
          if (v50)
          {
            goto LABEL_32;
          }

LABEL_37:
          v51 = 0;
          goto LABEL_38;
        }

        goto LABEL_35;
      }
    }

    else
    {
      sub_22072AD1C(&v77, sub_22055F87C);
    }

    v43 = 0;
    v44 = 0;
    goto LABEL_25;
  }

  v40 = [v39 purchasedTagIDs];
  v41 = sub_2208918EC();

  LOBYTE(v40) = sub_22056F244(v36, v38, v41);

  swift_unknownObjectRelease();
  if ((v40 & 1) == 0)
  {
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
LABEL_32:
  v51 = 1;
LABEL_38:
  v52 = v66;
  v53 = v59;
  v61(v65, v66, v59);
  v54 = v71;
  v55 = v73;
  v60(v69, v71, v73);
  LOBYTE(v77) = v51;
  v56 = MEMORY[0x277D69858];
  sub_22072ACB0(&unk_281299030, MEMORY[0x277D69858]);
  sub_22072ACB0(&unk_281299040, v56);
  sub_22088FF9C();
  (*(v72 + 8))(v54, v55);
  (*(v68 + 8))(v52, v53);
  swift_storeEnumTagMultiPayload();
  sub_22072ACB0(&qword_281293DD0, type metadata accessor for StockFeedModel);
  return sub_22088AD7C();
}

uint64_t sub_22072ACB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22072AD1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22072AD7C@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  *&v103 = a3;
  v93 = sub_22088516C();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v5);
  v91 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22072B7CC(0, &qword_28127ECC0, MEMORY[0x277D6C7C8]);
  *&v102 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v88 - v10;
  v12 = sub_220890E5C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v89 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v94 = &v88 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v88 - v21;
  v90 = v3;
  *&v101 = v3[2];
  sub_22072B7CC(0, &qword_28127ED88, MEMORY[0x277D6C6E8]);
  v24 = v23;
  sub_220890E9C();
  sub_220890E4C();
  v25 = *(v13 + 8);
  v99 = v12;
  v98 = v13 + 8;
  v95 = v25;
  v25(v22, v12);
  v96 = v24;
  *&v100 = a1;
  sub_220890EAC();
  *&v26 = COERCE_DOUBLE(sub_2208910AC());
  v28 = v27;

  result = (*(v8 + 8))(v11, v102);
  v30 = 0uLL;
  v31 = 0.0;
  if (v28)
  {
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0uLL;
    v38 = v103;
  }

  else
  {
    v39 = type metadata accessor for StockChartCalloutLayoutOptions();
    v40 = v97;
    v41 = (v97 + v39[8]);
    v42 = v41[1];
    v43 = v94;
    sub_220890E9C();
    v44 = sub_220890E4C();
    v46 = v45;
    v95(v43, v99);
    v104[0] = 0;
    LOBYTE(v44) = sub_2206E7BA8(v44, v46);

    if (v44)
    {
      v47 = v40;
      v48 = *&v26;
      v49 = v90[6];
      v50 = v90[7];
      __swift_project_boxed_opaque_existential_1(v90 + 3, v49);
      v51 = *(v47 + v39[7]);
      v52 = *(v50 + 8);
      *&v102 = v41;
      v53 = *(v52 + 8);
      v104[3] = v49;
      v104[4] = v50;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
      v53(v51, v49, v52);
      v55 = v97;
      v56 = v91;
      sub_2208850EC();
      sub_22072B578(v55 + v39[6]);
      v57 = v55 + v39[5];
      v58 = v56;
      v59 = sub_22078EE00(v56, v57);
      v60 = *(v50 + 24);
      v90 = boxed_opaque_existential_1;
      v94 = v49;
      v32 = v60(v59);

      sub_220891D7C();
      v62 = v61;
      v101 = v63;
      v64 = *v55;
      v65 = *(v102 + 24);
      sub_220891A6C();
      *&v66 = v64 - *&v66;
      if (*&v66 >= v62)
      {
        *&v66 = v62;
      }

      v102 = v66;
      v67 = v64 - *&v66;
      v68 = v89;
      sub_220890E9C();
      sub_220890E2C();
      v70 = v69;
      v95(v68, v99);
      if (v70 == 0.0 || fabs(v70) >= 5.0)
      {
        if (qword_281294138 != -1)
        {
          swift_once();
        }

        v71 = &qword_2812B6B60;
      }

      else
      {
        if (qword_27CF55B40 != -1)
        {
          swift_once();
        }

        v71 = &qword_27CF6D0B0;
      }

      v38 = v103;
      v72 = v58;
      v73 = v42 + v48;
      v31 = v67 * 0.5;
      v74 = *v71;
      [v74 setNumberStyle_];
      v75 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v76 = [v74 stringFromNumber_];

      if (v76)
      {
        v77 = sub_22089136C();
        v79 = v78;
      }

      else
      {

        v77 = 0;
        v79 = 0xE000000000000000;
      }

      v34 = (*(v50 + 32))(v77, v79, v94, v50, 0.0);

      sub_220891D7C();
      v103 = v80;
      v36 = v81;
      if (v64 - *&v80 - v65 > v42)
      {
        v82 = v64 - *&v80 - v65;
      }

      else
      {
        v82 = v42;
      }

      v83 = v73 + *&v80 * -0.5;
      if (v83 <= v42)
      {
        v83 = v42;
      }

      if (v82 >= v83)
      {
        v35 = v83;
      }

      else
      {
        v35 = v82;
      }

      v84 = v55[1] - v36 + -4.0;
      v105.origin.y = 4.0;
      v105.origin.x = v31;
      *&v105.size.height = v101;
      *&v105.size.width = v102;
      MaxY = CGRectGetMaxY(v105);

      (*(v92 + 8))(v72, v93);
      if (v84 > MaxY)
      {
        *&v86 = v84;
      }

      else
      {
        *&v86 = MaxY;
      }

      v100 = v86;
      result = __swift_destroy_boxed_opaque_existential_1(v104);
      *&v30 = v102;
      *(&v30 + 1) = v101;
      *&v87 = v100;
      *(&v87 + 1) = v103;
      v37 = v87;
      v33 = 0x4010000000000000;
    }

    else
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0.0;
      v36 = 0.0;
      v37 = 0uLL;
      v38 = v103;
      v30 = 0uLL;
    }
  }

  *v38 = v32;
  *(v38 + 8) = v31;
  *(v38 + 16) = v33;
  *(v38 + 24) = v30;
  *(v38 + 40) = v34;
  *(v38 + 48) = v35;
  *(v38 + 56) = v37;
  *(v38 + 72) = v36;
  return result;
}

uint64_t sub_22072B578(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22088543C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v1 + 64);
  if (*(v9 + 16) && (v10 = sub_2205CDF20(a1), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    (*(v5 + 16))(v8, a1, v4);
    type metadata accessor for StockChartCalloutDateFormatter();
    v12 = swift_allocObject();
    *(v12 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter) = 0;
    *(v12 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter) = 0;
    (*(v5 + 32))(v12 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter_timezone, v8, v4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + 64);
    *(v2 + 64) = 0x8000000000000000;
    sub_2207CF09C(v12, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 64) = v15;
    swift_endAccess();
  }

  return v12;
}

uint64_t sub_22072B758()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_22072B7CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_220890E5C();
    v7 = MEMORY[0x277D6C6B0];
    v10[0] = v6;
    v10[1] = sub_2204CF254(&qword_28127EDB8, MEMORY[0x277D6C6B0]);
    v10[2] = sub_2204CF254(&qword_28127EDC8, v7);
    v10[3] = sub_2204CF254(&qword_28127EDC0, v7);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_22072B8D8(double a1)
{
  v3 = sub_2208854FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088543C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088516C();
  v67 = *(v13 - 8);
  v68 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088515C();
  sub_22088542C();
  v17 = sub_22072B578(v12);
  (*(v9 + 8))(v12, v8);
  v55 = v1;
  v18 = __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  (*(v4 + 104))(v7, *MEMORY[0x277D69120], v3);
  v65 = v17;
  v66 = v16;
  v56 = sub_22078EE00(v16, v7);
  (*(v4 + 8))(v7, v3);
  v19 = *v18;
  sub_2204A5DF0();
  v64 = v20;
  inited = swift_initStackObject();
  v62 = xmmword_220899920;
  *(inited + 16) = xmmword_220899920;
  v22 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v23 = sub_22044D56C(0, &qword_28127E570);
  v24 = *MEMORY[0x277D76968];
  v60 = v22;
  v61 = v24;
  v25 = sub_220891F3C();
  v26 = MEMORY[0x277D740C0];
  *(inited + 40) = v25;
  v27 = *v26;
  v63 = v23;
  *(inited + 64) = v23;
  *(inited + 72) = v27;
  v28 = v19[5];
  v29 = v19[6];
  __swift_project_boxed_opaque_existential_1(v19 + 2, v28);
  v30 = *(v29 + 16);
  v31 = *(v30 + 40);
  v57 = v27;
  v32 = v31(v28, v30);
  v59 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 104) = v59;
  *(inited + 80) = v32;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  v58 = v33;
  swift_arrayDestroy();
  v34 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v35 = sub_22089132C();

  type metadata accessor for Key(0);
  sub_2204CF254(&qword_28127E6A8, type metadata accessor for Key);
  v36 = sub_22089125C();

  v37 = [v34 initWithString:v35 attributes:v36];

  v56 = v37;
  sub_220891D7C();
  sub_22046DA2C(v55 + 24, v69);
  v38 = __swift_project_boxed_opaque_existential_1(v69, v69[3]);
  if (qword_281294138 != -1)
  {
    swift_once();
  }

  v39 = qword_2812B6B60;
  [v39 setNumberStyle_];
  v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v41 = [v39 stringFromNumber_];

  if (v41)
  {
    sub_22089136C();
  }

  v42 = *v38;
  v43 = swift_initStackObject();
  *(v43 + 16) = v62;
  *(v43 + 32) = v60;
  v44 = v63;
  *(v43 + 40) = sub_220891F3C();
  v45 = v57;
  *(v43 + 64) = v44;
  *(v43 + 72) = v45;
  v47 = v42[5];
  v46 = v42[6];
  __swift_project_boxed_opaque_existential_1(v42 + 2, v47);
  v48 = (*(*(v46 + 16) + 208))(v47);
  *(v43 + 104) = v59;
  *(v43 + 80) = v48;
  sub_2204A5EAC(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  v49 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v50 = sub_22089132C();

  v51 = sub_22089125C();

  v52 = [v49 initWithString:v50 attributes:v51];

  __swift_destroy_boxed_opaque_existential_1(v69);
  sub_220891D7C();

  (*(v67 + 8))(v66, v68);
  return a1;
}

uint64_t sub_22072BFA4()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[15] = 0;
  sub_2204643A4(0, &qword_281298CC8);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF592B0 = result;
  return result;
}

uint64_t sub_22072C194()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204643A4(0, &qword_281298CC0);
  v6[2] = 1;
  v6[3] = 5;
  v6[1] = 5;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_220886C3C();
  qword_27CF592B8 = result;
  return result;
}

uint64_t sub_22072C2FC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[15] = 0;
  sub_2204643A4(0, &qword_281298CC8);
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298D28 = result;
  return result;
}

uint64_t sub_22072C4EC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  MEMORY[0x28223BE20](v5, v6);
  (*(v8 + 104))(&v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v10[15] = 0;
  sub_2204643A4(0, &qword_281298CC8);
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298D10 = result;
  return result;
}

uint64_t sub_22072C6DC()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BDC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[0] = 0xD000000000000042;
  v11[1] = 0x80000002208D1A60;
  sub_2204643A4(0, &qword_281298CD0);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF592C0 = result;
  return result;
}

uint64_t static Settings.StockFeed.ConfigOverrides.url.getter()
{
  if (qword_27CF55B90 != -1)
  {
    swift_once();
  }
}

uint64_t Settings.StockFeed.ConfigOverrides.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_220886B6C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.StockFeed.ConfigOverrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v8);
  v10 = sub_220886B6C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.StockFeed.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C8StocksUIE4TipsV8EarningsV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_22072CB90()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v12 - v8;
  (*(v1 + 104))(&v12 - v8, *MEMORY[0x277D6D098], v0, v7);
  type metadata accessor for Settings.StockFeed.ConfigOverrides();
  swift_allocObject();
  (*(v1 + 16))(v4, v9, v0);
  v10 = sub_220886B6C();
  result = (*(v1 + 8))(v9, v0);
  qword_281298D50 = v10;
  return result;
}

uint64_t sub_22072CD28()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[15] = 1;
  sub_2204643A4(0, &qword_281298CC8);
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298D38 = result;
  return result;
}

uint64_t sub_22072CF1C()
{
  v0 = sub_220886BDC();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v23 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_220886BEC();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v20 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088FB1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v19 - v13;
  sub_2206A7890();
  v19[0] = "15ConfigOverrides";
  v19[1] = v15;
  v16 = *MEMORY[0x277D325C0];
  v17 = *(v7 + 104);
  v17(v14, v16, v6);
  sub_2206A7944(0, &qword_28127E188, sub_2206A7910, MEMORY[0x277D84560]);
  sub_2206A7910(0);
  *(swift_allocObject() + 16) = xmmword_22089B140;
  v17(v10, v16, v6);
  sub_220886BFC();
  v17(v10, *MEMORY[0x277D325C8], v6);
  sub_220886BFC();
  v17(v10, *MEMORY[0x277D325B8], v6);
  sub_220886BFC();
  (*(v21 + 104))(v20, *MEMORY[0x277D6D0A8], v22);
  (*(v24 + 104))(v23, *MEMORY[0x277D6D090], v25);
  sub_2206A79A8(&qword_281296A80);
  result = sub_220886C1C();
  qword_281298DA0 = result;
  return result;
}

uint64_t type metadata accessor for Settings.StockFeed.ConfigOverrides()
{
  result = qword_281298D80;
  if (!qword_281298D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier()
{
  result = qword_28127FF48;
  if (!qword_28127FF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22072D4EC()
{
  type metadata accessor for StockFeedQuoteData();
  if (v0 <= 0x3F)
  {
    sub_22044D9A4(319, &qword_281299480, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_2204446D4(319, qword_281286088);
      if (v2 <= 0x3F)
      {
        sub_2204446D4(319, &qword_281299220);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22072D5F4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v49 = a3;
  v50 = a2;
  v6 = sub_22088B64C();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207320A4(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v39 - v11;
  sub_220587530();
  MEMORY[0x28223BE20](v13 - 8, v14);
  sub_2207320A4(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v16 = v15;
  v46 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v39 - v18;
  v44 = v4;
  v52 = v4;
  v20 = sub_2205579A0(sub_220731BC4, v51);
  v45 = v16;
  sub_22088E6FC();
  sub_22055CE80(0);
  v22 = v21;
  v23 = sub_220732544(&qword_281297DF8, sub_22055CE80);
  v24 = sub_220732544(&qword_281297E00, sub_22055CE80);
  MEMORY[0x223D80A20](v20, v22, v23, v24);
  type metadata accessor for StockFeedSectionDescriptor();
  type metadata accessor for StockFeedModel();
  sub_220732544(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
  sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel);
  sub_22088E6EC();
  v41 = a1;
  v25 = sub_220577460();
  sub_22088FA1C();
  sub_22088FA0C();
  type metadata accessor for StockFeedServiceConfig();
  sub_220732544(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
  v26 = sub_22088F9EC();

  v27 = 0;
  if (v26)
  {
    v27 = sub_22088F45C();
  }

  else
  {
    *(&v53 + 1) = 0;
    *&v54 = 0;
  }

  *&v53 = v26;
  *(&v54 + 1) = v27;
  v28 = v45;
  sub_22088E7BC();
  sub_22062782C(v25);
  v29 = type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier();
  if (*(v44 + *(v29 + 24)) == 1)
  {
    sub_220731BE0();
    v31 = *(v30 + 48);
    v32 = v46;
    (*(v46 + 16))(v12, v19, v28);
    (*(v42 + 104))(&v12[v31], *MEMORY[0x277D6D868], v43);
    sub_220731C88();
    sub_220732544(&unk_2812975D8, sub_220731C88);
    v53 = 0u;
    v54 = 0u;
    sub_22088B90C();
    v34 = v47;
    v33 = v48;
    (*(v47 + 104))(v12, *MEMORY[0x277D6DF58], v48);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v44 + *(v29 + 40)), *(v44 + *(v29 + 40) + 24));
    if (sub_22088618C())
    {
      sub_22088C66C();
    }

    else
    {
      v36 = v42;
      v35 = v43;
      v37 = v40;
      (*(v42 + 104))(v40, *MEMORY[0x277D6D868], v43);
      sub_220732544(&unk_281288C00, type metadata accessor for StockFeedSectionDescriptor);
      sub_22088C67C();
      (*(v36 + 8))(v37, v35);
    }

    v34 = v47;
    v33 = v48;
    v32 = v46;
  }

  v50(v12);
  (*(v34 + 8))(v12, v33);
  return (*(v32 + 8))(v19, v28);
}

uint64_t sub_22072DC9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = a1;
  sub_22055D524();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v39[1] = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v39 - v11;
  v13 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v13, v14);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v39 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = v39 - v23;
  sub_22055CE80(0);
  v26 = v25;
  sub_22088B2AC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_220459628();
      sub_220732420(&v20[*(v37 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    }

    else
    {
      sub_22073247C(v20, type metadata accessor for StockFeedSectionDescriptor);
    }

LABEL_2:
    v28 = sub_22088B2AC();
    goto LABEL_3;
  }

  sub_2207324DC(v20, v12, type metadata accessor for StockFeedMastheadModel);
  sub_22072E180(v12, v8);
  sub_22073247C(v12, type metadata accessor for StockFeedMastheadModel);
  sub_2207324DC(v8, v24, type metadata accessor for StockFeedMastheadModel);
  v28 = swift_storeEnumTagMultiPayload();
LABEL_3:
  MEMORY[0x28223BE20](v28, v29);
  v39[-2] = v41;
  v30 = sub_220557F14(sub_220732404, &v39[-4]);
  if (*(v30 + 2))
  {
    sub_22073258C(v24, v16, type metadata accessor for StockFeedSectionDescriptor);
    sub_22055D328();
    v32 = v31;
    v33 = sub_220732544(&qword_281297FB8, sub_22055D328);
    v34 = sub_220732544(&qword_281297FC0, sub_22055D328);
    v41 = v24;
    MEMORY[0x223D80A20](v30, v32, v33, v34);
    type metadata accessor for StockFeedModel();
    sub_220732544(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v35 = v40;
    sub_22088B29C();
    sub_22073247C(v41, type metadata accessor for StockFeedSectionDescriptor);
    v36 = 0;
  }

  else
  {
    sub_22073247C(v24, type metadata accessor for StockFeedSectionDescriptor);

    v36 = 1;
    v35 = v40;
  }

  return (*(*(v26 - 8) + 56))(v35, v36, 1, v26);
}

uint64_t sub_22072E180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v263 = a2;
  v251 = sub_2208852DC();
  v244 = *(v251 - 8);
  MEMORY[0x28223BE20](v251, v4);
  v262 = &v213[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v241 = sub_2208857EC();
  v240 = *(v241 - 8);
  MEMORY[0x28223BE20](v241, v6);
  v239 = &v213[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22044D9A4(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v218 = &v213[-v10];
  sub_22044D9A4(0, qword_281294018, type metadata accessor for PriceViewModel);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v217 = &v213[-v13];
  v246 = sub_22088699C();
  v253 = *(v246 - 8);
  MEMORY[0x28223BE20](v246, v14);
  v265 = &v213[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v248 = &v213[-v18];
  v245 = type metadata accessor for PriceViewModel();
  v216 = *(v245 - 8);
  MEMORY[0x28223BE20](v245, v19);
  v225 = &v213[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v268 = type metadata accessor for QuoteViewModel();
  v238 = *(v268 - 8);
  MEMORY[0x28223BE20](v268, v21);
  v226 = &v213[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22044D9A4(0, qword_281293F78, type metadata accessor for QuoteViewModel);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v224 = &v213[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26, v27);
  v234 = &v213[-v28];
  v29 = sub_22088676C();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v233 = &v213[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v242 = type metadata accessor for QuoteSummaryViewModel();
  MEMORY[0x28223BE20](v242, v33);
  v243 = &v213[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_2208854FC();
  v260 = *(v35 - 8);
  v261 = v35;
  MEMORY[0x28223BE20](v35, v36);
  v222 = &v213[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v38, v39);
  v258 = &v213[-v40];
  v271 = sub_220885D4C();
  v266 = *(v271 - 8);
  MEMORY[0x28223BE20](v271, v41);
  v215 = &v213[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v43, v44);
  v264 = &v213[-v45];
  MEMORY[0x28223BE20](v46, v47);
  v269 = &v213[-v48];
  sub_22044D9A4(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v49 - 8, v50);
  v267 = &v213[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v52, v53);
  v259 = &v213[-v54];
  v55 = MEMORY[0x277D697F8];
  sub_22044D9A4(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v56 - 8, v57);
  v223 = &v213[-((v58 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v59, v60);
  v221 = &v213[-v61];
  MEMORY[0x28223BE20](v62, v63);
  v220 = &v213[-v64];
  MEMORY[0x28223BE20](v65, v66);
  v219 = &v213[-v67];
  MEMORY[0x28223BE20](v68, v69);
  v247 = &v213[-v70];
  MEMORY[0x28223BE20](v71, v72);
  v230 = &v213[-v73];
  MEMORY[0x28223BE20](v74, v75);
  v254 = &v213[-v76];
  MEMORY[0x28223BE20](v77, v78);
  v80 = &v213[-v79];
  MEMORY[0x28223BE20](v81, v82);
  v84 = &v213[-v83];
  v85 = sub_22088685C();
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v87);
  v270 = &v213[-((v88 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = MEMORY[0x28223BE20](v89, v90);
  v237 = v86;
  v92 = *(v86 + 16);
  v255 = &v213[-v93];
  v257 = v94;
  v229 = v86 + 16;
  v228 = v92;
  v92(v91);
  v95 = type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier();
  sub_22047E980(v2 + *(v95 + 20), v80, &qword_2812990C0, v55);
  v96 = *(v30 + 48);
  v97 = v96(v80, 1, v29);
  v250 = v29;
  v249 = v30;
  v256 = v84;
  v232 = v30 + 48;
  v231 = v96;
  if (v97 == 1)
  {
    v98 = type metadata accessor for StockFeedMastheadModel();
    sub_22047E980(a1 + *(v98 + 20), v84, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v96(v80, 1, v29) != 1)
    {
      sub_220732420(v80, &qword_2812990C0, MEMORY[0x277D697F8]);
    }
  }

  else
  {
    (*(v30 + 32))(v84, v80, v29);
    (*(v30 + 56))(v84, 0, 1, v29);
  }

  v99 = type metadata accessor for StockFeedMastheadModel();
  v100 = v99[6];
  v227 = MEMORY[0x277D697C0];
  v101 = v259;
  sub_22047E980(a1 + v100, v259, &unk_2812990E0, MEMORY[0x277D697C0]);
  v102 = a1 + v99[7];
  v103 = *(v268 + 20);
  v104 = v266 + 16;
  v252 = *(v266 + 16);
  v252(v269, v102 + v103, v271);
  v235 = *(a1 + v99[8]);
  __swift_project_boxed_opaque_existential_1((v2 + *(v95 + 40)), *(v2 + *(v95 + 40) + 24));
  v214 = sub_2208861AC();
  v105 = v263;
  v106 = v255;
  v107 = v257;
  v108 = v228;
  (v228)(v263, v255, v257);
  v109 = MEMORY[0x277D697F8];
  v110 = v256;
  sub_22047E980(v256, v105 + v99[5], &qword_2812990C0, MEMORY[0x277D697F8]);
  v236 = v99;
  v111 = v105 + v99[6];
  v112 = v227;
  sub_22047E980(v101, v111, &unk_2812990E0, v227);
  (v108)(v270, v106, v107);
  v113 = v110;
  v114 = v254;
  sub_22047E980(v113, v254, &qword_2812990C0, v109);
  v115 = v271;
  sub_22047E980(v101, v267, &unk_2812990E0, v112);
  v229 = v104;
  v252(v264, v269, v115);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  v116 = v258;
  sub_220886B9C();

  v117 = v230;
  sub_22047E980(v114, v230, &qword_2812990C0, MEMORY[0x277D697F8]);
  v118 = v250;
  v119 = v231;
  v120 = v231(v117, 1, v250);
  v121 = v249;
  v122 = v248;
  v123 = v247;
  if (v120 == 1)
  {
    v124 = MEMORY[0x277D697F8];
    sub_220732420(v117, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v121 + 56))(v123, 1, 1, v118);
    sub_2208867CC();
    v125 = v219;
    sub_22047E980(v123, v219, &qword_2812990C0, v124);
    v126 = v119;
    if (v119(v125, 1, v118) == 1)
    {
      sub_220732420(v125, &qword_2812990C0, MEMORY[0x277D697F8]);
      v252 = 0;
      LODWORD(v234) = 1;
    }

    else
    {
      v252 = sub_22088675C();
      LODWORD(v234) = v143;
      (*(v121 + 8))(v125, v118);
    }

    v144 = v253;
    v145 = v223;
    v146 = v221;
    v147 = v220;
    sub_22047E980(v123, v220, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v126(v147, 1, v118) == 1)
    {
      sub_220732420(v147, &qword_2812990C0, MEMORY[0x277D697F8]);
      v233 = 0;
      LODWORD(v230) = 1;
    }

    else
    {
      v233 = sub_22088666C();
      LODWORD(v230) = v148;
      (*(v121 + 8))(v147, v118);
    }

    sub_22047E980(v123, v146, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v126(v146, 1, v118) == 1)
    {
      sub_220732420(v146, &qword_2812990C0, MEMORY[0x277D697F8]);
      v229 = 0;
      LODWORD(v228) = 1;
    }

    else
    {
      v229 = sub_22088671C();
      LODWORD(v228) = v149;
      (*(v121 + 8))(v146, v118);
    }

    sub_22047E980(v123, v145, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v126(v145, 1, v118) == 1)
    {
      sub_220732420(v145, &qword_2812990C0, MEMORY[0x277D697F8]);
      v232 = 0;
      v150 = 0;
    }

    else
    {
      v232 = sub_22088668C();
      v150 = v151;
      (*(v121 + 8))(v145, v118);
    }

    v152 = v262;
    v153 = *(v144 + 16);
    v154 = v265;
    v155 = v122;
    v156 = v246;
    v153(v265, v155, v246);
    v157 = v240;
    v158 = v239;
    v159 = v241;
    (*(v240 + 104))(v239, *MEMORY[0x277D69288], v241);
    sub_22088524C();
    v160 = v225;
    *v225 = v252;
    *(v160 + 8) = v234 & 1;
    *(v160 + 16) = v233;
    *(v160 + 24) = v230 & 1;
    *(v160 + 32) = v229;
    *(v160 + 40) = v228 & 1;
    *(v160 + 48) = v232;
    *(v160 + 56) = v150;
    v161 = v245;
    v153((v160 + *(v245 + 40)), v154, v156);
    *(v160 + 64) = 9666786;
    *(v160 + 72) = 0xA300000000000000;
    (*(v157 + 16))(v160 + *(v161 + 36), v158, v159);
    v162 = *(v161 + 44);
    v163 = v244;
    (*(v244 + 16))(v160 + v162, v152, v251);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v252 = qword_2812B6B48;
    (*(v157 + 8))(v158, v159);
    v164 = *(v253 + 8);
    v164(v265, v156);
    v164(v248, v156);
    v165 = MEMORY[0x277D697F8];
    sub_220732420(v247, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v260 + 8))(v258, v261);
    v166 = MEMORY[0x277D697C0];
    sub_220732420(v267, &unk_2812990E0, MEMORY[0x277D697C0]);
    sub_220732420(v254, &qword_2812990C0, v165);
    v167 = *(v237 + 8);
    v168 = v257;
    v167(v270, v257);
    v169 = v266;
    (*(v266 + 8))(v269, v271);
    sub_220732420(v259, &unk_2812990E0, v166);
    sub_220732420(v256, &qword_2812990C0, v165);
    v167(v255, v168);
    v170 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    v171 = v252;
    swift_beginAccess();
    (*(v163 + 40))(v171 + v170, v262, v251);
    swift_endAccess();
    v172 = v268;
    v173 = *(v268 + 24);
    v174 = type metadata accessor for QuoteSummaryTimeRange();
    v175 = v226;
    (*(*(v174 - 8) + 56))(&v226[v173], 1, 1, v174);
    sub_2207324DC(v160, v175, type metadata accessor for PriceViewModel);
    (*(v169 + 32))(v175 + *(v172 + 20), v264, v271);
    v176 = v243;
    (*(v238 + 56))(v243 + *(v242 + 20), 1, 1, v172);
    sub_2207324DC(v175, v176, type metadata accessor for QuoteViewModel);
    goto LABEL_35;
  }

  v127 = v233;
  (*(v249 + 32))(v233, v117, v118);
  v128 = sub_220656950(v116, v127, v267);
  v247 = v129;
  LODWORD(v232) = v130;
  v131 = v260;
  v132 = v222;
  (*(v260 + 104))(v222, *MEMORY[0x277D69120], v261, v128);
  sub_220732544(&qword_281299398, MEMORY[0x277D69160]);
  sub_22089167C();
  sub_22089167C();
  v133 = v268;
  if (v274 == v272 && v275 == v273)
  {
    v134 = 1;
  }

  else
  {
    v134 = sub_2208928BC();
  }

  v248 = *(v131 + 8);
  (v248)(v132, v261);

  v260 = v131 + 8;
  if (v134)
  {
    v135 = v265;
    sub_2208867CC();
    v136 = v214;
    v137 = v217;
    sub_22069DDE0(v135, v214 & 1, v217);
    (*(v253 + 8))(v135, v246);
    v138 = v215;
    v252(v215, v264, v115);
    v139 = v218;
    sub_22069E5AC(v136 & 1, v218);
    if ((*(v216 + 48))(v137, 1, v245) != 1)
    {
      v142 = v224;
      sub_2207324DC(v137, v224, type metadata accessor for PriceViewModel);
      (*(v266 + 32))(&v142[*(v133 + 20)], v138, v115);
      sub_220528C64(v139, &v142[*(v133 + 24)], &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
      v140 = 0;
      v141 = v234;
      goto LABEL_32;
    }

    sub_220732420(v139, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
    (*(v266 + 8))(v138, v115);
    sub_220732420(v137, qword_281294018, type metadata accessor for PriceViewModel);
  }

  v140 = 1;
  v141 = v234;
  v142 = v224;
LABEL_32:
  (*(v238 + 56))(v142, v140, 1, v133);
  sub_220528C64(v142, v141, qword_281293F78, type metadata accessor for QuoteViewModel);
  v177 = sub_22088675C();
  LODWORD(v238) = v178;
  v179 = sub_22088671C();
  v181 = v180;
  v182 = sub_22088668C();
  v184 = v183;
  v185 = v265;
  sub_2208867CC();
  v186 = v240;
  v187 = v239;
  v188 = v241;
  (*(v240 + 104))(v239, *MEMORY[0x277D69288], v241);
  v189 = v262;
  sub_22088524C();
  v190 = v243;
  *v243 = v177;
  *(v190 + 8) = v238 & 1;
  v190[2] = v247;
  *(v190 + 24) = v232 & 1;
  v190[4] = v179;
  v176 = v190;
  v191 = v188;
  *(v190 + 40) = v181 & 1;
  v190[6] = v182;
  v190[7] = v184;
  v192 = v245;
  v193 = v253;
  v194 = v246;
  (*(v253 + 16))(v190 + *(v245 + 40), v185, v246);
  *(v176 + 64) = 9666786;
  *(v176 + 72) = 0xA300000000000000;
  (*(v186 + 16))(v176 + *(v192 + 36), v187, v188);
  v195 = v244;
  v196 = v251;
  (*(v244 + 16))(v176 + *(v192 + 44), v189, v251);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v197 = qword_2812B6B48;
  (*(v186 + 8))(v187, v191);
  (*(v193 + 8))(v265, v194);
  v198 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v195 + 40))(v197 + v198, v262, v196);
  swift_endAccess();
  v199 = v268;
  v200 = v264;
  v201 = v271;
  v252((v176 + *(v268 + 20)), v264, v271);
  v202 = v176 + *(v199 + 24);
  v203 = v258;
  v204 = v233;
  sub_22069E834(v258, v202);
  (*(v249 + 8))(v204, v250);
  (v248)(v203, v261);
  v205 = *(v266 + 8);
  v205(v200, v201);
  v206 = MEMORY[0x277D697C0];
  sub_220732420(v267, &unk_2812990E0, MEMORY[0x277D697C0]);
  v207 = MEMORY[0x277D697F8];
  sub_220732420(v254, &qword_2812990C0, MEMORY[0x277D697F8]);
  v208 = *(v237 + 8);
  v209 = v257;
  v208(v270, v257);
  v205(v269, v201);
  sub_220732420(v259, &unk_2812990E0, v206);
  sub_220732420(v256, &qword_2812990C0, v207);
  v208(v255, v209);
  sub_220528C64(v234, v176 + *(v242 + 20), qword_281293F78, type metadata accessor for QuoteViewModel);
LABEL_35:
  v210 = v236;
  v211 = v263;
  result = sub_2207324DC(v176, v263 + v236[7], type metadata accessor for QuoteSummaryViewModel);
  *(v211 + v210[8]) = v235;
  return result;
}

uint64_t sub_22072FDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v228 = a2;
  v232 = a3;
  v4 = sub_22088685C();
  v226 = *(v4 - 8);
  v227 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v229 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D9A4(0, &qword_281299370, MEMORY[0x277D69178]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v215 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v222 = &v192 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v200 = &v192 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v202 = &v192 - v18;
  v214 = sub_22088516C();
  v220 = *(v214 - 8);
  MEMORY[0x28223BE20](v214, v19);
  v203 = &v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_22088543C();
  v213 = *(v207 - 8);
  MEMORY[0x28223BE20](v207, v21);
  v212 = &v192 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D9A4(0, &qword_281299480, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v206 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v201 = &v192 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v210 = &v192 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v211 = &v192 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v204 = &v192 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v209 = &v192 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v219 = &v192 - v43;
  sub_22044D9A4(0, qword_2812906B8, type metadata accessor for StockEarningsModel);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v208 = &v192 - v46;
  sub_22044D9A4(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v47 - 8, v48);
  v218 = &v192 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v223 = &v192 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v199 = &v192 - v55;
  MEMORY[0x28223BE20](v56, v57);
  v198 = &v192 - v58;
  MEMORY[0x28223BE20](v59, v60);
  v221 = &v192 - v61;
  MEMORY[0x28223BE20](v62, v63);
  v217 = &v192 - v64;
  v65 = sub_22088676C();
  v224 = *(v65 - 8);
  v225 = v65;
  MEMORY[0x28223BE20](v65, v66);
  v216 = &v192 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for StockEarningsModel();
  v205 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v69);
  v71 = &v192 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72, v73);
  v75 = &v192 - v74;
  v76 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v76 - 8, v77);
  v79 = &v192 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v80, v81);
  v83 = &v192 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84, v85);
  v87 = &v192 - v86;
  MEMORY[0x28223BE20](v88, v89);
  v91 = &v192 - v90;
  sub_22055D328();
  v230 = a1;
  v231 = v92;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v194 = v83;
    v95 = v229;
    v192 = v68;
    v193 = v71;
    v196 = v87;
    v195 = v75;
    v197 = v80;
    if (EnumCaseMultiPayload <= 1)
    {
      v117 = v196;
      sub_2207324DC(v91, v79, type metadata accessor for StockFeedMastheadModel);
      sub_22072E180(v79, v117);
      swift_storeEnumTagMultiPayload();
      sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel);
      v115 = v232;
      sub_22088AD7C();
      v129 = type metadata accessor for StockFeedMastheadModel;
      v130 = v79;
LABEL_19:
      sub_22073247C(v130, v129);
      v116 = 0;
      v94 = v231;
      v114 = *(v231 - 8);
      return (*(v114 + 56))(v115, v116, 1, v94);
    }

    if (EnumCaseMultiPayload == 2)
    {
      (*(v226 + 8))(v91, v227);
      v94 = v231;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_2204597F0();
      v97 = v96;
      v98 = *(v96 + 48);
      v99 = *(v96 + 64);
      v100 = v226;
      v101 = v227;
      (*(v226 + 32))(v95, v91, v227);
      v102 = MEMORY[0x277D697F8];
      v103 = v223;
      sub_220528C64(&v91[v98], v223, &qword_2812990C0, MEMORY[0x277D697F8]);
      sub_220528C64(&v91[v99], v222, &qword_281299370, MEMORY[0x277D69178]);
      v230 = v97;
      v104 = *(v97 + 48);
      v105 = v194;
      (*(v100 + 16))(v194, v95, v101);
      v106 = v228 + *(type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier() + 20);
      v107 = v218;
      sub_22047E980(v106, v218, &qword_2812990C0, v102);
      v109 = v224;
      v108 = v225;
      v110 = *(v224 + 48);
      if (v110(v107, 1, v225) == 1)
      {
        sub_22047E980(v103, &v105[v104], &qword_2812990C0, MEMORY[0x277D697F8]);
        v111 = v110(v107, 1, v108) == 1;
        v112 = v107;
        v113 = v215;
        if (!v111)
        {
          sub_220732420(v112, &qword_2812990C0, MEMORY[0x277D697F8]);
        }
      }

      else
      {
        (*(v109 + 32))(&v105[v104], v107, v108);
        (*(v109 + 56))(&v105[v104], 0, 1, v108);
        v113 = v215;
      }

      v131 = *(v230 + 64);
      v132 = type metadata accessor for StockFeedQuoteData();
      sub_22047E980(v106 + *(v132 + 20), v113, &qword_281299370, MEMORY[0x277D69178]);
      v133 = sub_2208855EC();
      v134 = *(v133 - 8);
      v135 = *(v134 + 48);
      if (v135(v113, 1, v133) == 1)
      {
        v136 = v222;
        sub_22047E980(v222, &v105[v131], &qword_281299370, MEMORY[0x277D69178]);
        if (v135(v113, 1, v133) != 1)
        {
          sub_220732420(v113, &qword_281299370, MEMORY[0x277D69178]);
        }
      }

      else
      {
        (*(v134 + 32))(&v105[v131], v113, v133);
        (*(v134 + 56))(&v105[v131], 0, 1, v133);
        v136 = v222;
      }

      swift_storeEnumTagMultiPayload();
      sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel);
      v115 = v232;
      sub_22088AD7C();
      sub_220732420(v136, &qword_281299370, MEMORY[0x277D69178]);
      sub_220732420(v223, &qword_2812990C0, MEMORY[0x277D697F8]);
      (*(v226 + 8))(v229, v227);
      v116 = 0;
      v94 = v231;
LABEL_29:
      v114 = *(v94 - 8);
      return (*(v114 + 56))(v115, v116, 1, v94);
    }

    v119 = v91;
    v120 = v195;
    sub_2207324DC(v119, v195, type metadata accessor for StockEarningsModel);
    v121 = type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier();
    v122 = v228;
    v123 = v228 + v121[5];
    v124 = v217;
    sub_22047E980(v123, v217, &qword_2812990C0, MEMORY[0x277D697F8]);
    v126 = v224;
    v125 = v225;
    v127 = *(v224 + 48);
    if (v127(v124, 1, v225) == 1)
    {
      sub_220732420(v124, &qword_2812990C0, MEMORY[0x277D697F8]);
      sub_22073258C(v120, v196, type metadata accessor for StockEarningsModel);
      swift_storeEnumTagMultiPayload();
      sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel);
      v128 = v120;
      v115 = v232;
      sub_22088AD7C();
      v129 = type metadata accessor for StockEarningsModel;
      v130 = v128;
      goto LABEL_19;
    }

    v229 = v123;
    v137 = v216;
    (*(v126 + 32))(v216, v124, v125);
    v138 = __swift_project_boxed_opaque_existential_1((v122 + v121[9]), *(v122 + v121[9] + 24));
    v139 = v221;
    (*(v126 + 16))(v221, v137, v125);
    (*(v126 + 56))(v139, 0, 1, v125);
    v140 = *(type metadata accessor for StockFeedQuoteData() + 20);
    v141 = v122;
    v142 = v125;
    v143 = v121[7];
    v144 = v121[8];
    v222 = *v138;
    v223 = v140;
    v145 = v209;
    sub_22047E980(v141 + v143, v209, &qword_281299480, MEMORY[0x277CC9578]);
    v146 = v220;
    v147 = v214;
    v230 = *(v220 + 48);
    if ((v230)(v145, 1, v214) != 1)
    {
      v152 = v219;
      (*(v146 + 32))(v219, v145, v147);
      (*(v146 + 56))(v152, 0, 1, v147);
      v153 = v228;
      v154 = v210;
      goto LABEL_41;
    }

    v148 = v139;
    v149 = v198;
    sub_22047E980(v148, v198, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v127(v149, 1, v142) == 1)
    {
      sub_220732420(v149, &qword_2812990C0, MEMORY[0x277D697F8]);
      (*(v146 + 56))(v204, 1, 1, v147);
      v150 = v200;
    }

    else
    {
      v155 = v204;
      sub_22088670C();
      v147 = v214;
      (*(v224 + 8))(v149, v142);
      v156 = (v230)(v155, 1, v147);
      v150 = v200;
      if (v156 != 1)
      {
        v160 = v219;
        (*(v146 + 32))(v219, v155, v147);
        (*(v146 + 56))(v160, 0, 1, v147);
        v153 = v228;
        v154 = v210;
LABEL_39:
        v161 = v209;
        if ((v230)(v209, 1, v147) != 1)
        {
          sub_220732420(v161, &qword_281299480, MEMORY[0x277CC9578]);
        }

LABEL_41:
        sub_22047E980(v153 + v144, v154, &qword_281299480, MEMORY[0x277CC9578]);
        if ((v230)(v154, 1, v147) != 1)
        {
          v166 = v211;
          (*(v146 + 32))(v211, v154, v147);
          (*(v146 + 56))(v166, 0, 1, v147);
          v94 = v231;
          v167 = v147;
          v169 = v212;
          v168 = v213;
          v170 = v219;
          goto LABEL_54;
        }

        v162 = v199;
        sub_22047E980(v221, v199, &qword_2812990C0, MEMORY[0x277D697F8]);
        v163 = v225;
        if (v127(v162, 1, v225) == 1)
        {
          sub_220732420(v162, &qword_2812990C0, MEMORY[0x277D697F8]);
          v164 = v201;
          (*(v220 + 56))(v201, 1, 1, v147);
          v165 = v202;
        }

        else
        {
          v164 = v201;
          sub_2208866DC();
          v147 = v214;
          (*(v224 + 8))(v162, v163);
          v171 = (v230)(v164, 1, v147);
          v165 = v202;
          if (v171 != 1)
          {
            v175 = v220;
            v166 = v211;
            (*(v220 + 32))(v211, v164, v147);
            (*(v175 + 56))(v166, 0, 1, v147);
            v94 = v231;
            v167 = v147;
            v169 = v212;
            v168 = v213;
            v170 = v219;
LABEL_52:
            v176 = v210;
            if ((v230)(v210, 1, v167) != 1)
            {
              sub_220732420(v176, &qword_281299480, MEMORY[0x277CC9578]);
            }

LABEL_54:
            sub_22056FA8C(v221, v169);
            v177 = v170;
            v178 = v170;
            v179 = v206;
            sub_22047E980(v177, v206, &qword_281299480, MEMORY[0x277CC9578]);
            if ((v230)(v179, 1, v167) == 1)
            {
              (*(v168 + 8))(v169, v207);
              v180 = MEMORY[0x277CC9578];
              sub_220732420(v166, &qword_281299480, MEMORY[0x277CC9578]);
              sub_220732420(v178, &qword_281299480, v180);
              sub_220732420(v221, &qword_2812990C0, MEMORY[0x277D697F8]);
              v181 = v224;
              v182 = v208;
              v183 = v179;
            }

            else
            {
              v184 = v220;
              v185 = v169;
              v186 = v203;
              v233 = *(v220 + 32);
              v233(v203, v179, v167);
              v187 = sub_22056FD0C(v186, v185);
              sub_220732420(v178, &qword_281299480, MEMORY[0x277CC9578]);
              sub_220732420(v221, &qword_2812990C0, MEMORY[0x277D697F8]);
              v181 = v224;
              v182 = v208;
              if (v187)
              {
                (*(v226 + 16))(v208, v195, v227);
                v188 = v192;
                v233((v182 + v192[5]), v186, v167);
                sub_220528C64(v211, v182 + v188[6], &qword_281299480, MEMORY[0x277CC9578]);
                (*(v213 + 32))(v182 + v188[7], v212, v207);
                v189 = 0;
                *(v182 + v188[8]) = 0;
                *(v182 + v188[9]) = 0;
                v115 = v232;
                v190 = v193;
LABEL_60:
                v191 = v205;
                (*(v205 + 56))(v182, v189, 1, v188);
                if ((*(v191 + 48))(v182, 1, v188) == 1)
                {
                  (*(v181 + 8))(v216, v225);
                  sub_22073247C(v195, type metadata accessor for StockEarningsModel);
                  sub_220732420(v182, qword_2812906B8, type metadata accessor for StockEarningsModel);
                  v114 = *(v94 - 8);
                  v116 = 1;
                  return (*(v114 + 56))(v115, v116, 1, v94);
                }

                sub_2207324DC(v182, v190, type metadata accessor for StockEarningsModel);
                sub_22073258C(v190, v196, type metadata accessor for StockEarningsModel);
                swift_storeEnumTagMultiPayload();
                sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel);
                sub_22088AD7C();
                sub_22073247C(v190, type metadata accessor for StockEarningsModel);
                (*(v181 + 8))(v216, v225);
                sub_22073247C(v195, type metadata accessor for StockEarningsModel);
                v116 = 0;
                goto LABEL_29;
              }

              (*(v184 + 8))(v186, v167);
              (*(v213 + 8))(v212, v207);
              v183 = v211;
            }

            sub_220732420(v183, &qword_281299480, MEMORY[0x277CC9578]);
            v189 = 1;
            v115 = v232;
            v190 = v193;
            v188 = v192;
            goto LABEL_60;
          }
        }

        sub_22047E980(&v229[v223], v165, &qword_281299370, MEMORY[0x277D69178]);
        v172 = sub_2208855EC();
        v173 = *(v172 - 8);
        if ((*(v173 + 48))(v165, 1, v172) == 1)
        {
          sub_220732420(v165, &qword_281299370, MEMORY[0x277D69178]);
          v166 = v211;
          (*(v220 + 56))(v211, 1, 1, v147);
          v94 = v231;
          v167 = v147;
        }

        else
        {
          v174 = v211;
          v167 = v147;
          sub_22088558C();
          (*(v173 + 8))(v165, v172);
          v166 = v174;
          v94 = v231;
        }

        v169 = v212;
        v168 = v213;
        v170 = v219;
        if ((v230)(v164, 1, v167) != 1)
        {
          sub_220732420(v164, &qword_281299480, MEMORY[0x277CC9578]);
        }

        goto LABEL_52;
      }
    }

    sub_22047E980(&v229[v223], v150, &qword_281299370, MEMORY[0x277D69178]);
    v157 = sub_2208855EC();
    v158 = *(v157 - 8);
    if ((*(v158 + 48))(v150, 1, v157) == 1)
    {
      sub_220732420(v150, &qword_281299370, MEMORY[0x277D69178]);
      v146 = v220;
      (*(v220 + 56))(v219, 1, 1, v147);
    }

    else
    {
      sub_2208855AC();
      v147 = v214;
      (*(v158 + 8))(v150, v157);
      v146 = v220;
    }

    v153 = v228;
    v154 = v210;
    v159 = v204;
    if ((v230)(v204, 1, v147) != 1)
    {
      sub_220732420(v159, &qword_281299480, MEMORY[0x277CC9578]);
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v94 = v231;
LABEL_12:
    sub_22073247C(v91, type metadata accessor for StockFeedModel);
    goto LABEL_13;
  }

  v94 = v231;
  if (EnumCaseMultiPayload == 8)
  {
    sub_220459914();

    v118 = sub_22089030C();
    (*(*(v118 - 8) + 8))(v91, v118);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 9)
  {
    goto LABEL_12;
  }

LABEL_13:
  v114 = *(v94 - 8);
  v115 = v232;
  (*(v114 + 16))(v232, v230, v94);
  v116 = 0;
  return (*(v114 + 56))(v115, v116, 1, v94);
}

void sub_220731BE0()
{
  if (!qword_27CF592C8)
  {
    sub_2207320A4(255, &unk_281296F10, MEMORY[0x277D6EC60]);
    sub_22088B64C();
    sub_22088B91C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF592C8);
    }
  }
}

void sub_220731C88()
{
  if (!qword_2812975D0)
  {
    sub_220731D1C();
    sub_220732544(&qword_281297A38, sub_220731D1C);
    v0 = sub_22088D23C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812975D0);
    }
  }
}

void sub_220731D1C()
{
  if (!qword_281297A30)
  {
    sub_220731E88();
    sub_220731ED4();
    sub_220732198();
    sub_220732318();
    type metadata accessor for StockFeedViewController();
    sub_220732544(&qword_2812973D8, sub_220731ED4);
    sub_220732544(&qword_281297550, sub_220732198);
    sub_220732544(&qword_281297360, sub_220732318);
    v0 = sub_22088BFDC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297A30);
    }
  }
}

unint64_t sub_220731E88()
{
  result = qword_28127E820;
  if (!qword_28127E820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E820);
  }

  return result;
}

void sub_220731ED4()
{
  if (!qword_2812973D0)
  {
    sub_2205E9B98(255);
    sub_2205E88C0();
    type metadata accessor for StockFeedBlueprintViewCellProvider();
    type metadata accessor for StockFeedBlueprintViewSupplementaryViewProvider();
    sub_220732544(&qword_281297CB0, sub_2205E9B98);
    sub_220732544(&qword_281297880, sub_2205E88C0);
    sub_220732544(qword_2812826E8, type metadata accessor for StockFeedBlueprintViewCellProvider);
    sub_220732544(qword_281296698, type metadata accessor for StockFeedBlueprintViewSupplementaryViewProvider);
    sub_220732544(&qword_28128E7F0, type metadata accessor for StockFeedLayoutModel);
    v0 = sub_22088D7DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812973D0);
    }
  }
}

void sub_2207320A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_220732544(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_220732544(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220732198()
{
  if (!qword_281297548)
  {
    sub_2205E9B98(255);
    sub_2205E88C0();
    type metadata accessor for StockFeedViewController();
    sub_220732544(&qword_281297CB0, sub_2205E9B98);
    sub_220732544(&qword_281297880, sub_2205E88C0);
    sub_220732544(&qword_28128AF30, type metadata accessor for StockFeedViewController);
    sub_220732544(&qword_28128E7F0, type metadata accessor for StockFeedLayoutModel);
    v0 = sub_22088D59C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297548);
    }
  }
}

void sub_220732318()
{
  if (!qword_281297358)
  {
    sub_2205E9B98(255);
    sub_2205E88C0();
    sub_220732544(&qword_281297CB0, sub_2205E9B98);
    sub_220732544(&qword_281297880, sub_2205E88C0);
    v0 = sub_22088D9AC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297358);
    }
  }
}

uint64_t sub_220732420(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22044D9A4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22073247C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207324DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220732544(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22073258C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2207325F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong becomeFirstResponder];
  }
}

void sub_220732650()
{
  sub_2207326AC();
  if (v0)
  {
    v1 = v0;
    sub_22088AB3C();
  }
}

void sub_2207326AC()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  v2 = sub_22044D56C(0, &qword_27CF58F88);
  sub_220732A50();
  v3 = sub_2208918EC();

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_22089243C();
    sub_22089190C();
    v3 = v29;
    v4 = v30;
    v5 = v31;
    v6 = v32;
    v7 = v33;
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v11 = (v5 + 64) >> 6;
  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if (!sub_22089248C() || (swift_dynamicCast(), v15 = v28, v14 = v6, v27 = v7, !v28))
  {
LABEL_35:
    sub_22067DE08();
    return;
  }

  while (1)
  {
    if ([v15 activationState] || (objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) == 0))
    {

      v6 = v14;
      v7 = v27;
      if (v3 < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    v24 = v11;
    v17 = [v16 windows];
    sub_22044D56C(0, &qword_28127E440);
    v18 = sub_2208916EC();

    v25 = v2;
    v26 = v5;
    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        break;
      }

      goto LABEL_33;
    }

    v19 = sub_2208926AC();
    if (v19)
    {
      break;
    }

LABEL_33:

    v6 = v14;
    v7 = v27;
    v2 = v25;
    v5 = v26;
    v11 = v24;
    if (v3 < 0)
    {
      goto LABEL_16;
    }

LABEL_10:
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_35;
        }

        v13 = *(v4 + 8 * v14);
        ++v12;
        if (v13)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_14:
    v27 = (v13 - 1) & v13;
    v15 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v15)
    {
      goto LABEL_35;
    }
  }

  v20 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x223D8A700](v20, v18);
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    sub_22088AB4C();
    if (swift_dynamicCastClass())
    {
      sub_22067DE08();

      return;
    }

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_33;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

unint64_t sub_220732A50()
{
  result = qword_27CF5AA10;
  if (!qword_27CF5AA10)
  {
    sub_22044D56C(255, &qword_27CF58F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5AA10);
  }

  return result;
}

uint64_t sub_220732AE4(uint64_t a1, uint64_t a2)
{
  v145 = a2;
  v2 = sub_22088959C();
  v142 = *(v2 - 8);
  v143 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v127 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v131 = &v124 - v7;
  MEMORY[0x28223BE20](v8, v9);
  v134 = &v124 - v10;
  MEMORY[0x28223BE20](v11, v12);
  v139 = &v124 - v13;
  v144 = sub_2208906CC();
  v147 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v14);
  v125 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v126 = &v124 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v128 = &v124 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v130 = &v124 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v132 = &v124 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v138 = (&v124 - v30);
  MEMORY[0x28223BE20](v31, v32);
  v135 = &v124 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v136 = (&v124 - v36);
  v37 = sub_220889ACC();
  v140 = *(v37 - 8);
  v141 = v37;
  MEMORY[0x28223BE20](v37, v38);
  v129 = &v124 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v133 = &v124 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v137 = (&v124 - v45);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v124 - v48;
  v50 = sub_22089022C();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v52);
  v124 = &v124 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v124 - v56;
  MEMORY[0x28223BE20](v58, v59);
  v61 = &v124 - v60;
  MEMORY[0x28223BE20](v62, v63);
  v65 = &v124 - v64;
  sub_22088E4CC();
  sub_22088E3CC();
  v66 = sub_22088E23C();

  if (v66)
  {
    v67 = v146;
    v68 = v146[10];
    v69 = v146[11];
    v137 = __swift_project_boxed_opaque_existential_1(v146 + 7, v68);
    sub_220733854();
    sub_2208905DC();
    v70 = v148;
    sub_2208905FC();
    v138 = v49;
    sub_2205B7B64(v49);
    v51[1](v65, v50);
    v71 = v136;
    sub_22089060C();
    v72 = v147;
    v73 = v135;
    v74 = v144;
    (*(v147 + 16))(v135, v71, v144);
    v75 = (*(v72 + 88))(v73, v74);
    v76 = v74;
    if (v75 == *MEMORY[0x277D33A68])
    {
      v77 = MEMORY[0x277D68618];
LABEL_16:
      (*(v72 + 8))(v71, v76);
      v98 = v142;
      v97 = v143;
      v99 = v139;
      (*(v142 + 104))(v139, *v77, v143);
      v100 = v138;
      (*(v69 + 48))(v138, v99, v68, v69, v70);
      (*(v98 + 8))(v99, v97);
      (*(v140 + 8))(v100, v141);
      __swift_project_boxed_opaque_existential_1(v67 + 2, v67[5]);
      sub_2208905DC();
      return sub_220887E5C();
    }

    if (v75 == *MEMORY[0x277D33A78])
    {
      v77 = MEMORY[0x277D68628];
      goto LABEL_16;
    }

    if (v75 == *MEMORY[0x277D33A70])
    {
      v77 = MEMORY[0x277D68620];
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  v136 = v51;
  v139 = v50;
  v78 = v144;
  v79 = v146;
  sub_22088E34C();
  v80 = sub_22088E23C();

  if (v80)
  {
    v81 = v79[11];
    v135 = v79[10];
    __swift_project_boxed_opaque_existential_1(v79 + 7, v135);
    sub_220733854();
    sub_2208905DC();
    v82 = v148;
    sub_2208905FC();
    sub_2205B7B64(v137);
    v136[1](v61, v139);
    v83 = v138;
    sub_22089060C();
    v84 = v147;
    v85 = v132;
    (*(v147 + 16))(v132, v83, v78);
    v86 = (*(v84 + 88))(v85, v78);
    if (v86 == *MEMORY[0x277D33A68])
    {
      v87 = MEMORY[0x277D68618];
LABEL_24:
      (*(v84 + 8))(v138, v78);
      v112 = v142;
      v111 = v143;
      v113 = v134;
      (*(v142 + 104))(v134, *v87, v143);
      v114 = v137;
      (*(v81 + 56))(v137, v113, v135, v81, v82);
      (*(v112 + 8))(v113, v111);
      (*(v140 + 8))(v114, v141);
      __swift_project_boxed_opaque_existential_1(v79 + 2, v79[5]);
      sub_2208905DC();
      return sub_220887E2C();
    }

    if (v86 == *MEMORY[0x277D33A78])
    {
      v87 = MEMORY[0x277D68628];
      goto LABEL_24;
    }

    if (v86 == *MEMORY[0x277D33A70])
    {
      v87 = MEMORY[0x277D68620];
      goto LABEL_24;
    }

LABEL_34:
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  sub_22088E38C();
  v88 = sub_22088E23C();

  if (v88)
  {
    v89 = v79[10];
    v90 = v79[11];
    v138 = __swift_project_boxed_opaque_existential_1(v79 + 7, v89);
    sub_220733854();
    sub_2208905DC();
    v91 = v148;
    sub_2208905FC();
    sub_2205B7B64(v133);
    v136[1](v57, v139);
    v92 = v130;
    sub_22089060C();
    v93 = v147;
    v94 = v128;
    (*(v147 + 16))(v128, v92, v78);
    v95 = (*(v93 + 88))(v94, v78);
    if (v95 == *MEMORY[0x277D33A68])
    {
      v96 = MEMORY[0x277D68618];
    }

    else if (v95 == *MEMORY[0x277D33A78])
    {
      v96 = MEMORY[0x277D68628];
    }

    else
    {
      if (v95 != *MEMORY[0x277D33A70])
      {
        goto LABEL_34;
      }

      v96 = MEMORY[0x277D68620];
    }

    (*(v147 + 8))(v92, v78);
    v116 = v142;
    v115 = v143;
    v117 = v131;
    (*(v142 + 104))(v131, *v96, v143);
    v118 = v133;
    (*(v90 + 64))(v133, v117, v89, v90, v91);
    (*(v116 + 8))(v117, v115);
    (*(v140 + 8))(v118, v141);
    __swift_project_boxed_opaque_existential_1(v79 + 2, v79[5]);
    sub_2208905DC();
    return sub_220887E4C();
  }

  sub_22088E35C();
  v102 = sub_22088E23C();

  if (v102)
  {
    v103 = v79[10];
    v104 = v79[11];
    __swift_project_boxed_opaque_existential_1(v79 + 7, v103);
    sub_220733854();
    v105 = v124;
    sub_2208905FC();
    sub_2205B7B64(v129);
    v136[1](v105, v139);
    v106 = v126;
    sub_22089060C();
    v107 = v147;
    v108 = v125;
    (*(v147 + 16))(v125, v106, v78);
    v109 = (*(v107 + 88))(v108, v78);
    if (v109 == *MEMORY[0x277D33A68])
    {
      v110 = MEMORY[0x277D68618];
    }

    else if (v109 == *MEMORY[0x277D33A78])
    {
      v110 = MEMORY[0x277D68628];
    }

    else
    {
      if (v109 != *MEMORY[0x277D33A70])
      {
        goto LABEL_34;
      }

      v110 = MEMORY[0x277D68620];
    }

    (*(v147 + 8))(v106, v78);
    v119 = *v110;
    v121 = v142;
    v120 = v143;
    v122 = v127;
    (*(v142 + 104))(v127, v119, v143);
    v123 = v129;
    (*(v104 + 32))(v129, v122, v103, v104);
    (*(v121 + 8))(v122, v120);
    (*(v140 + 8))(v123, v141);
    __swift_project_boxed_opaque_existential_1(v79 + 2, v79[5]);
    sub_2208905DC();
    return sub_220887E1C();
  }

  return result;
}

void sub_220733854()
{
  if (!qword_281296828)
  {
    v0 = sub_22089062C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296828);
    }
  }
}

uint64_t sub_2207338A4()
{
  MEMORY[0x223D8B910](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_220733920(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1853321060;
  }

  else
  {
    v3 = 28789;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1853321060;
  }

  else
  {
    v5 = 28789;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_2207339B4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_220733A24()
{
  sub_22089146C();
}

uint64_t sub_220733A80()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_220733AEC@<X0>(char *a1@<X8>)
{
  v2 = sub_22089270C();

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

void sub_220733B4C(uint64_t *a1@<X8>)
{
  v2 = 28789;
  if (*v1)
  {
    v2 = 1853321060;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_220733C2C()
{
  result = qword_27CF592D0;
  if (!qword_27CF592D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF592D0);
  }

  return result;
}

unint64_t sub_220733C80()
{
  result = qword_27CF592D8;
  if (!qword_27CF592D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF592D8);
  }

  return result;
}

uint64_t sub_220733CD4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6E69727065756C62;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE400000000000000;
    v5 = 1701869940;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 7107189;
    }

    else
    {
      v5 = 0x6B72616D6B6F6F62;
    }

    if (v4 == 3)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1701869940;
  v9 = 0xE300000000000000;
  v10 = 7107189;
  if (a2 != 3)
  {
    v10 = 0x6B72616D6B6F6F62;
    v9 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x6E69727065756C62;
    v2 = 0xE900000000000074;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2208928BC();
  }

  return v13 & 1;
}

uint64_t sub_220733E40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007365;
  v3 = 0x69726F7453706F74;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64657461727563;
    }

    else
    {
      v5 = 25697;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6B636F7473;
    }

    else
    {
      v5 = 0x69726F7453706F74;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEA00000000007365;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x64657461727563;
  if (a2 != 2)
  {
    v8 = 25697;
    v7 = 0xE200000000000000;
  }

  if (a2)
  {
    v3 = 0x6B636F7473;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2208928BC();
  }

  return v11 & 1;
}

uint64_t sub_220733F64(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000737275;
  v3 = 0xD000000000000012;
  v4 = 0x6F682D7265746661;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x6F682D7265746661;
    }

    if (v5 == 2)
    {
      v7 = 0x80000002208BEC00;
    }

    else
    {
      v7 = 0xEB00000000737275;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (v5)
    {
      v7 = 0x80000002208BEBE0;
    }

    else
    {
      v7 = 0x80000002208BEBC0;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000012;
    v2 = 0x80000002208BEC00;
  }

  v8 = 0x80000002208BEBE0;
  if (!a2)
  {
    v3 = 0xD000000000000011;
    v8 = 0x80000002208BEBC0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2208928BC();
  }

  return v11 & 1;
}

uint64_t sub_22073408C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ELL;
  v3 = "ight";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a1 == 4)
  {
    v6 = ".v2.SymbolSearch";
  }

  else
  {
    v6 = "com.apple.stocks.v2.Article";
  }

  if (v4 == 3)
  {
    v7 = 0xD000000000000020;
  }

  else
  {
    v7 = v5;
  }

  if (v4 == 3)
  {
    v8 = "com.apple.stocks.v2.SymbolFeed";
  }

  else
  {
    v8 = v6;
  }

  if (v4 == 1)
  {
    v9 = "com.apple.stocks.v2.StockList";
  }

  else
  {
    v9 = "com.apple.stocks.v2.ForYouFeed";
  }

  if (v4)
  {
    v10 = 0xD00000000000001ELL;
  }

  else
  {
    v10 = 0xD00000000000001DLL;
  }

  if (v4)
  {
    v11 = v9;
  }

  else
  {
    v11 = "ight";
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000020;
      v3 = "com.apple.stocks.v2.SymbolFeed";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000001BLL;
      v3 = ".v2.SymbolSearch";
    }

    else
    {
      v2 = 0xD000000000000017;
      v3 = "com.apple.stocks.v2.Article";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "com.apple.stocks.v2.StockList";
    }

    else
    {
      v3 = "com.apple.stocks.v2.ForYouFeed";
    }
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (v12 == v2 && (v13 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_2208928BC();
  }

  return v14 & 1;
}

uint64_t sub_2207341F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22048EE54(0, v1, 0);
    v3 = v22;
    v4 = (a1 + 32);
    v5 = 0x80000002208BEC00;
    v6 = 0x80000002208BEBE0;
    do
    {
      v8 = *v4++;
      v7 = v8;
      v9 = v8 == 2;
      if (v8 == 2)
      {
        v10 = 0xD000000000000012;
      }

      else
      {
        v10 = 0x6F682D7265746661;
      }

      if (v9)
      {
        v11 = v5;
      }

      else
      {
        v11 = 0xEB00000000737275;
      }

      if (v7)
      {
        v12 = 0xD000000000000012;
      }

      else
      {
        v12 = 0xD000000000000011;
      }

      if (v7)
      {
        v13 = v6;
      }

      else
      {
        v13 = 0x80000002208BEBC0;
      }

      if (v7 <= 1)
      {
        v14 = v12;
      }

      else
      {
        v14 = v10;
      }

      if (v7 <= 1)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      v23 = v3;
      v17 = *(v3 + 16);
      v16 = *(v3 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = v5;
        v21 = v6;
        sub_22048EE54((v16 > 1), v17 + 1, 1);
        v6 = v21;
        v5 = v19;
        v3 = v23;
      }

      *(v3 + 16) = v17 + 1;
      v18 = v3 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      --v1;
    }

    while (v1);
  }

  sub_22073755C(&qword_28127ED10, MEMORY[0x277D6C748]);
  sub_220890F7C();
}

uint64_t sub_2207343C4(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v156 = a1;
  v157 = sub_220890D2C();
  v161 = *(v157 - 8);
  MEMORY[0x28223BE20](v157, v5);
  v142 = v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v136 - v9;
  sub_220737450(0, &qword_28127ECC0, MEMORY[0x277D6C7C8]);
  v151 = *(v11 - 8);
  v152 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v140 = v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v150 = v136 - v16;
  sub_2204569E0(0, &qword_28127EDB0, MEMORY[0x277D6C6B0]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v143 = v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v136 - v22;
  v160 = sub_220890E5C();
  v158 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v24);
  v141 = v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v144 = v136 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v146 = v136 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v145 = (v136 - v34);
  v35 = sub_220890C9C();
  v148 = *(v35 - 8);
  v149 = v35;
  MEMORY[0x28223BE20](v35, v36);
  v139 = v136 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v147 = v136 - v40;
  sub_220737684(0, &qword_28127ED80, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v44 = v136 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v46);
  v48 = v136 - v47;
  sub_220737450(0, &qword_28127ED88, MEMORY[0x277D6C6E8]);
  v50 = v49;
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v52);
  v153 = (v136 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = MEMORY[0x28223BE20](v54, v55);
  v154 = v136 - v57;
  v155 = v51;
  v58 = *(v51 + 48);
  v59 = a2;
  v60 = v58(a2, 1, v50, v56);
  v159 = v3;
  if (v60 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v62 = Strong;
      sub_2207341F4(byte_283410C90);
    }

    v63 = OBJC_IVAR____TtC8StocksUI28StockChartInteractionHandler_chartModel;
    v64 = v159;
    swift_beginAccess();
    v65 = v161;
    v66 = *(v161 + 48);
    v67 = v157;
    v68 = v66(v64 + v63, 1, v157);
    v69 = v160;
    if (v68)
    {
      goto LABEL_5;
    }

    v77 = v160;
    v155 = *(v65 + 16);
    (v155)(v10, v64 + v63, v67);
    v78 = sub_220890D1C();
    v79 = *(v65 + 8);
    v161 = v65 + 8;
    v156 = v79;
    v79(v10, v67);
    if (!*(v78 + 16))
    {

      v69 = v77;
LABEL_5:
      (*(v158 + 56))(v23, 1, 1, v69);
LABEL_6:
      v70 = &qword_28127EDB0;
      v71 = MEMORY[0x277D6C6B0];
      v72 = sub_2204569E0;
      v73 = v23;
      return sub_220737624(v73, v70, v71, v72);
    }

    v147 = (v65 + 16);
    v80 = v151;
    v81 = *(v151 + 16);
    v138 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v82 = v150;
    v83 = v152;
    v146 = (v151 + 16);
    v145 = v81;
    v81(v150, v78 + v138, v152);

    v84 = sub_22089117C();
    v151 = *(v80 + 8);
    (v151)(v82, v83);
    if (*(v84 + 16))
    {
      v85 = v158;
      v86 = v160;
      (*(v158 + 16))(v23, v84 + ((*(v158 + 80) + 32) & ~*(v158 + 80)), v160);
      v87 = 0;
    }

    else
    {
      v87 = 1;
      v86 = v160;
      v85 = v158;
    }

    v153 = *(v85 + 56);
    v154 = (v85 + 56);
    v153(v23, v87, 1, v86);
    v150 = *(v85 + 48);
    if ((v150)(v23, 1, v86) == 1)
    {
      goto LABEL_6;
    }

    v136[1] = v85 + 48;
    v118 = v144;
    v137 = *(v85 + 32);
    v137(v144, v23, v86);
    v119 = v159;
    swift_beginAccess();
    v120 = v157;
    if (v66(v119 + v63, 1, v157))
    {
      (*(v85 + 8))(v118, v86);
      swift_endAccess();
      v121 = v143;
    }

    else
    {
      v122 = v137;
      v123 = v142;
      (v155)(v142, v119 + v63, v120);
      swift_endAccess();
      v124 = sub_220890D1C();
      v156(v123, v120);
      v121 = v143;
      if (*(v124 + 16))
      {
        v125 = v140;
        v126 = v152;
        v145(v140, v124 + v138, v152);

        v127 = sub_22089117C();
        (v151)(v125, v126);
        v128 = *(v127 + 16);
        if (v128)
        {
          v129 = v160;
          (*(v158 + 16))(v121, v127 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * (v128 - 1), v160);
          v130 = 0;
        }

        else
        {
          v130 = 1;
          v129 = v160;
        }

        v131 = v141;

        v153(v121, v130, 1, v129);
        if ((v150)(v121, 1, v129) != 1)
        {
          v122(v131, v121, v129);
          v132 = swift_unknownObjectWeakLoadStrong();
          if (v132)
          {
            v133 = v132;
            sub_220890E4C();
            sub_220890E4C();
            v134 = v139;
            sub_220890C8C();
            sub_22073755C(&qword_28127ED10, MEMORY[0x277D6C748]);
            sub_220890F8C();

            (*(v148 + 8))(v134, v149);
          }

          v135 = *(v158 + 8);
          v135(v131, v129);
          return (v135)(v118, v129);
        }

        (*(v158 + 8))(v118, v129);
        goto LABEL_62;
      }

      v86 = v160;
      (*(v158 + 8))(v118, v160);
    }

    v153(v121, 1, 1, v86);
LABEL_62:
    v70 = &qword_28127EDB0;
    v71 = MEMORY[0x277D6C6B0];
    v72 = sub_2204569E0;
    v73 = v121;
    return sub_220737624(v73, v70, v71, v72);
  }

  sub_2207375A4(v156, v48);
  if ((v58)(v48, 1, v50) == 1)
  {
    v70 = &qword_28127ED80;
    v71 = MEMORY[0x277D83D88];
    v72 = sub_220737684;
    v73 = v48;
    return sub_220737624(v73, v70, v71, v72);
  }

  v75 = v154;
  v74 = v155;
  v76 = *(v155 + 32);
  v76(v154, v48, v50);
  sub_2207375A4(v59, v44);
  if ((v58)(v44, 1, v50) == 1)
  {
    (*(v74 + 8))(v75, v50);
    v70 = &qword_28127ED80;
    v71 = MEMORY[0x277D83D88];
    v72 = sub_220737684;
    v73 = v44;
    return sub_220737624(v73, v70, v71, v72);
  }

  v88 = v153;
  v76(v153, v44, v50);
  LODWORD(v161) = sub_220736FD0();
  v89 = swift_unknownObjectWeakLoadStrong();
  v90 = v75;
  v91 = v160;
  if (!v89)
  {
    goto LABEL_52;
  }

  v156 = v89;
  v157 = v50;
  v92 = 0;
  v93 = MEMORY[0x277D84F90];
  v94 = 0xEB00000000737275;
  v95 = 0x6F682D7265746661;
  do
  {
    v96 = byte_283410C90[v92 + 32];
    if (v96 > 1)
    {
      if (v96 == 2)
      {
        v97 = 0xD000000000000012;
      }

      else
      {
        v97 = 0x6F682D7265746661;
      }

      if (v96 == 2)
      {
        v98 = 0x80000002208BEC00;
      }

      else
      {
        v98 = 0xEB00000000737275;
      }
    }

    else if (byte_283410C90[v92 + 32])
    {
      v97 = 0xD000000000000012;
      v98 = 0x80000002208BEBE0;
    }

    else
    {
      v97 = 0xD000000000000011;
      v98 = 0x80000002208BEBC0;
    }

    if (v161 == 2)
    {
      v95 = 0xD000000000000012;
      v94 = 0x80000002208BEC00;
    }

    if (v161)
    {
      v99 = 0xD000000000000012;
    }

    else
    {
      v99 = 0xD000000000000011;
    }

    if (v161)
    {
      v100 = 0x80000002208BEBE0;
    }

    else
    {
      v100 = 0x80000002208BEBC0;
    }

    if (v161 <= 1u)
    {
      v101 = v99;
    }

    else
    {
      v101 = v95;
    }

    if (v161 <= 1u)
    {
      v102 = v100;
    }

    else
    {
      v102 = v94;
    }

    if (v97 == v101 && v98 == v102)
    {

LABEL_17:
      v94 = 0xEB00000000737275;
      v95 = 0x6F682D7265746661;
      goto LABEL_18;
    }

    v103 = sub_2208928BC();

    if (v103)
    {
      goto LABEL_17;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v162 = v93;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22070BDE4(0, *(v93 + 16) + 1, 1);
      v93 = v162;
    }

    v106 = *(v93 + 16);
    v105 = *(v93 + 24);
    v94 = 0xEB00000000737275;
    v95 = 0x6F682D7265746661;
    if (v106 >= v105 >> 1)
    {
      sub_22070BDE4((v105 > 1), v106 + 1, 1);
      v95 = 0x6F682D7265746661;
      v94 = 0xEB00000000737275;
      v93 = v162;
    }

    *(v93 + 16) = v106 + 1;
    *(v93 + v106 + 32) = v96;
LABEL_18:
    ++v92;
  }

  while (v92 != 3);
  v107 = v156;
  sub_2207341F4(v93);

  v91 = v160;
  v50 = v157;
  v88 = v153;
  v90 = v154;
LABEL_52:
  v108 = swift_unknownObjectWeakLoadStrong();
  if (v108)
  {
    v109 = v108;
    v110 = v145;
    sub_220890E9C();
    v111 = sub_220890E4C();
    v159 = v112;
    v160 = v111;
    v113 = *(v158 + 8);
    v113(v110, v91);
    v114 = v146;
    sub_220890E9C();
    sub_220890E4C();
    v113(v114, v91);
    v115 = v147;
    sub_220890C8C();
    sub_22073755C(&qword_28127ED10, MEMORY[0x277D6C748]);
    sub_220890F8C();

    (*(v148 + 8))(v115, v149);
    v116 = *(v155 + 8);
    v116(v153, v50);
  }

  else
  {
    v116 = *(v155 + 8);
    v116(v88, v50);
  }

  return (v116)(v90, v50);
}

uint64_t sub_2207354B8()
{

  MEMORY[0x223D8B910](v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  sub_22054B9F8(v0 + 96);
  sub_220737624(v0 + OBJC_IVAR____TtC8StocksUI28StockChartInteractionHandler_chartModel, &qword_28127EDF0, MEMORY[0x277D6C670], sub_2204569E0);

  return swift_deallocClassInstance();
}

unint64_t sub_220735598()
{
  result = qword_27CF592E0;
  if (!qword_27CF592E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF592E0);
  }

  return result;
}

uint64_t sub_220735634(uint64_t a1)
{
  v2 = v1;
  sub_220737684(0, &qword_27CF592E8, MEMORY[0x277D6C690]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = v23 - v9;
  (*(v6 + 16))(v23 - v9, a1, v5, v8);
  if ((*(v6 + 88))(v10, v5) == *MEMORY[0x277D6C688])
  {
    (*(v6 + 96))(v10, v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v12 = Strong, v13 = sub_220890F3C(), v12, v13))
    {
      v14 = v2[7];
      v15 = v2[8];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v14);
      v16 = [v13 traitCollection];
      v17 = *(v15 + 8);
      v18 = *(v17 + 8);
      v24[3] = v14;
      v24[4] = v15;
      __swift_allocate_boxed_opaque_existential_1(v24);
      v18(v16, v14, v17);

      v19 = swift_allocObject();
      swift_weakInit();
      sub_22046DA2C(v24, v23);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v13;
      sub_220457328(v23, v20 + 32);
      v21 = v13;
      sub_220890FDC();

      swift_allocObject();
      swift_weakInit();

      sub_220890FCC();

      return __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
    }
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_220735954(void (*a1)(char *, uint64_t), uint64_t a2, void *a3, void *a4)
{
  v204 = a4;
  v210 = a3;
  v221 = a1;
  v195 = sub_220890C9C();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195, v4);
  v193 = &v186 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220737450(0, &qword_28127ECC0, MEMORY[0x277D6C7C8]);
  v219 = v6;
  v217 = *(v6 - 1);
  MEMORY[0x28223BE20](v6, v7);
  v214 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v186 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v200 = &v186 - v15;
  v16 = sub_220890E5C();
  v220 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v197 = &v186 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v216 = &v186 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v196 = &v186 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v199 = &v186 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v198 = &v186 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v201 = &v186 - v33;
  sub_220737684(0, &qword_28127ED80, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v203 = (&v186 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37, v38);
  v202 = (&v186 - v39);
  sub_220737714();
  v41 = v40;
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v43);
  v213 = &v186 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v186 - v47;
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v186 - v51;
  sub_22073778C();
  v54 = v53;
  MEMORY[0x28223BE20](v53, v55);
  v57 = &v186 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220737450(0, &qword_28127ED88, MEMORY[0x277D6C6E8]);
  v59 = *(v58 - 8);
  v222 = v58;
  v223 = v59;
  MEMORY[0x28223BE20](v58, v60);
  v218 = &v186 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62, v63);
  v215 = &v186 - v64;
  MEMORY[0x28223BE20](v65, v66);
  v208 = &v186 - v67;
  MEMORY[0x28223BE20](v68, v69);
  v71 = &v186 - v70;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v192 = v12;
  v209 = v16;
  v212 = result;
  v73 = *(result + 72);
  v74 = *(v54 + 48);
  v75 = v42;
  v78 = *(*&v42 + 16);
  v77 = *&v42 + 16;
  v76 = v78;
  v78(v57, v221, v41);
  v57[v74] = v73;
  v79 = *(*&v75 + 88);
  v207 = *&v75 + 88;
  v206 = v79;
  v80 = v79(v57, v41);
  v205 = *MEMORY[0x277D6C718];
  v211 = v75;
  if (v80 == v205)
  {
    v190 = v77;
    v76(v52, v57, v41);
    (*(*&v75 + 96))(v52, v41);
    v81 = v76;
    if (v73 != 1)
    {
      v191 = v76;
      v96 = v222;
      v95 = v223;
      (*(v223 + 32))(v71, v52, v222);
      (*(*&v75 + 8))(v57, v41);
      v97 = [v210 layer];
      v90 = v212;
      [v97 addSublayer_];

      [*(v90 + 88) removeFromSuperlayer];
      v98 = *(v95 + 56);
      v99 = v202;
      v98(v202, 1, 1, v96);
      v100 = v203;
      v98(v203, 1, 1, v96);
      sub_2207343C4(v99, v100);
      v101 = MEMORY[0x277D83D88];
      sub_220737624(v100, &qword_28127ED80, MEMORY[0x277D83D88], sub_220737684);
      sub_220737624(v99, &qword_28127ED80, v101, sub_220737684);
      v102 = v200;
      sub_220890EAC();
      v93 = v219;
      v103 = sub_22089117C();
      v104 = v217[1];
      v104(v102, v93);
      if (*(v103 + 16))
      {
        v105 = v220;
        v106 = v220[2];
        v187 = (*(v105 + 80) + 32) & ~*(v105 + 80);
        v200 = v104;
        v107 = v198;
        v108 = v209;
        v189 = v220 + 2;
        v188 = v106;
        v106(v198, v103 + v187, v209);

        v198 = v105[4];
        (v198)(v201, v107, v108);
        v109 = v192;
        v110 = v222;
        sub_220890EAC();
        (*(v223 + 8))(v71, v110);
        v111 = sub_22089117C();
        (v200)(v109, v93);
        v112 = *(v111 + 16);
        v82 = v213;
        if (v112)
        {
          v113 = v196;
          v188(v196, v111 + v187 + v220[9] * (v112 - 1), v108);

          v114 = v199;
          (v198)(v199, v113, v108);
          v115 = v108;
          v90 = v212;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v117 = Strong;
            sub_220890E4C();
            sub_220890E4C();
            v118 = v193;
            sub_220890C8C();
            sub_22073755C(&qword_28127ED10, MEMORY[0x277D6C748]);
            sub_220890F8C();

            (*(v194 + 8))(v118, v195);
            v119 = v220[1];
            v119(v199, v115);
          }

          else
          {
            v119 = v220[1];
            v119(v114, v115);
          }

          v119(v201, v115);
        }

        else
        {

          (v220[1])(v201, v108);
          v90 = v212;
        }

        v93 = v219;
      }

      else
      {

        (*(v223 + 8))(v71, v222);
        v82 = v213;
      }

      *(v90 + 72) = 1;
      v92 = v216;
      v94 = v221;
      v81 = v191;
      goto LABEL_20;
    }

    (*(v223 + 8))(v52, v222);
    v82 = v213;
    goto LABEL_8;
  }

  v83 = v223;
  v82 = v213;
  v81 = v76;
  if (v80 != *MEMORY[0x277D6C710] || (v76(v48, v57, v41), (*(*&v211 + 96))(v48, v41), sub_220737850(), v85 = *(v84 + 48), v191 = v76, v86 = *(v83 + 8), v87 = v222, v86(&v48[v85], v222), v86(v48, v87), v81 = v191, v73 > 1))
  {
LABEL_8:
    sub_2207377F4(v57);
    v92 = v216;
    v90 = v212;
    goto LABEL_9;
  }

  (*(*&v211 + 8))(v57, v41);
  v88 = v210;
  v89 = [v210 layer];
  v90 = v212;
  [v89 addSublayer_];

  v91 = [v88 layer];
  v81 = v191;
  [v91 addSublayer_];

  *(v90 + 72) = 2;
  v92 = v216;
LABEL_9:
  v93 = v219;
  v94 = v221;
LABEL_20:
  v81(v82, v94, v41);
  v120 = v206(v82, v41);
  if (v120 == v205)
  {
    (*(*&v211 + 96))(v82, v41);
    v121 = v222;
    v122 = v223;
    v123 = v208;
    (*(v223 + 32))(v208, v82, v222);
    sub_220890E9C();
    v124 = v90;
    v125 = v214;
    sub_220890EAC();
    v126 = COERCE_DOUBLE(sub_2208910BC());
    v128 = v127;
    v130 = v129;
    (v217[1])(v125, v93);
    (v220[1])(v92, v209);
    if (v130)
    {
      (*(v122 + 8))(v123, v121);
    }

    else
    {
      v152 = v126 + -0.5;
      v153 = *(v124 + 80);
      [v210 bounds];
      [v153 setFrame_];

      v154 = *(v124 + 80);
      *&v154[OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLocation] = v128;
      [v154 setNeedsLayout];
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_2205696E0(v123);
        swift_unknownObjectRelease();
      }

      __swift_project_boxed_opaque_existential_1(v204, v204[3]);
      sub_220814104(*(v124 + 80), 0.0);
      (*(v223 + 8))(v123, v121);
    }
  }

  else
  {
    v131 = v90;
    v132 = v217;
    if (v120 != *MEMORY[0x277D6C710])
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }

    (*(*&v211 + 96))(v82, v41);
    sub_220737850();
    v134 = *(v133 + 48);
    v135 = v222;
    v136 = *(v223 + 32);
    v136(v215, v82, v222);
    v136(v218, &v82[v134], v135);
    sub_220890E9C();
    v137 = v214;
    sub_220890EAC();
    v138 = v137;
    v211 = COERCE_DOUBLE(sub_2208910BC());
    v213 = v139;
    LOBYTE(v134) = v140;
    v141 = v132[1];
    v141(v138, v93);
    v142 = v131;
    v144 = v220 + 1;
    v143 = v220[1];
    v145 = v209;
    v143(v92, v209);
    if (v134 & 1) != 0 || (v221 = v143, v146 = v138, sub_220890E9C(), sub_220890EAC(), *&v147 = COERCE_DOUBLE(sub_2208910BC()), v217 = v148, v150 = v149, v141(v146, v219), v221(v92, v145), (v150))
    {

      v151 = *(v223 + 8);
      v151(v218, v135);
      return (v151)(v215, v135);
    }

    v220 = v144;
    v155 = *&v147;
    v156 = v211 + -0.5;
    v157 = *(v142 + 80);
    v158 = v210;
    [v210 bounds];
    [v157 setFrame_];

    v159 = *(v142 + 80);
    *&v159[OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLocation] = v213;
    [v159 setNeedsLayout];
    v160 = *(v142 + 88);
    [v158 bounds];
    [v160 setFrame_];

    v161 = *(v142 + 88);
    *&v161[OBJC_IVAR____TtC8StocksUI28StockChartCalloutHandleLayer_knobLocation] = v217;
    [v161 setNeedsLayout];
    v162 = v223;
    v163 = *(v223 + 16);
    v164 = v202;
    v165 = v215;
    v163(v202, v215, v135);
    v166 = *(v162 + 56);
    v166(v164, 0, 1, v135);
    v167 = v203;
    v168 = v218;
    v163(v203, v218, v135);
    v166(v167, 0, 1, v135);
    sub_2207343C4(v164, v167);
    v169 = MEMORY[0x277D83D88];
    sub_220737624(v167, &qword_28127ED80, MEMORY[0x277D83D88], sub_220737684);
    sub_220737624(v164, &qword_28127ED80, v169, sub_220737684);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_220569C68(v165, v168);
      swift_unknownObjectRelease();
    }

    v170 = v204;
    v219 = __swift_project_boxed_opaque_existential_1(v204, v204[3]);
    v171 = *(v212 + 80);
    v172 = v216;
    sub_220890E9C();
    sub_220890E2C();
    v174 = v173;
    v175 = v209;
    v176 = v221;
    v221(v172, v209);
    v177 = v197;
    sub_220890E9C();
    sub_220890E2C();
    v179 = v178;
    v176(v177, v175);
    sub_220814104(v171, v174 - v179);

    v217 = __swift_project_boxed_opaque_existential_1(v170, v170[3]);
    v219 = *(v212 + 88);
    v180 = v218;
    sub_220890E9C();
    sub_220890E2C();
    v182 = v181;
    v176(v172, v175);
    sub_220890E9C();
    sub_220890E2C();
    v184 = v183;
    v176(v177, v175);
    sub_220814104(v219, v182 - v184);
    v185 = *(v223 + 8);
    v185(v180, v135);
    v185(v165, v135);
  }
}

uint64_t sub_220736DC0()
{
  sub_220737684(0, &qword_28127ED80, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v14 - v6);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    *(result + 72) = 0;
    [*(result + 80) removeFromSuperlayer];
    [*(v9 + 88) removeFromSuperlayer];
    sub_220737450(0, &qword_28127ED88, MEMORY[0x277D6C6E8]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 56);
    v12(v7, 1, 1, v10);
    v12(v3, 1, 1, v11);
    sub_2207343C4(v7, v3);
    v13 = MEMORY[0x277D83D88];
    sub_220737624(v3, &qword_28127ED80, MEMORY[0x277D83D88], sub_220737684);
    sub_220737624(v7, &qword_28127ED80, v13, sub_220737684);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_22056A210();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_220736FD0()
{
  v0 = sub_220890E5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v19 - v7;
  sub_220737450(0, &qword_28127ED88, MEMORY[0x277D6C6E8]);
  sub_220890E9C();
  sub_220890E2C();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v8, v0);
  sub_220890E9C();
  sub_220890E2C();
  v13 = v12;
  v11(v4, v0);
  if (v13 < v10)
  {
    return 2;
  }

  sub_220890E9C();
  sub_220890E2C();
  v16 = v15;
  v11(v8, v0);
  sub_220890E9C();
  sub_220890E2C();
  v18 = v17;
  v11(v4, v0);
  return v18 < v16;
}

uint64_t sub_2207371B8(uint64_t a1)
{
  v3 = MEMORY[0x277D83D88];
  sub_220737684(0, &qword_28127ED80, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v23 - v10);
  sub_2204569E0(0, &qword_28127EDF0, MEMORY[0x277D6C670]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v23 - v14;
  v16 = sub_220890D2C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a1, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC8StocksUI28StockChartInteractionHandler_chartModel;
  swift_beginAccess();
  sub_2207378D0(v15, v1 + v18);
  swift_endAccess();
  sub_220737450(0, &qword_28127ED88, MEMORY[0x277D6C6E8]);
  v20 = v19;
  v21 = *(*(v19 - 8) + 56);
  v21(v11, 1, 1, v19);
  v21(v7, 1, 1, v20);
  sub_2207343C4(v11, v7);
  sub_220737624(v7, &qword_28127ED80, v3, sub_220737684);
  return sub_220737624(v11, &qword_28127ED80, v3, sub_220737684);
}

void sub_220737450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = sub_220890E5C();
    v7 = MEMORY[0x277D6C6B0];
    v10[0] = v6;
    v10[1] = sub_22073755C(&qword_28127EDB8, MEMORY[0x277D6C6B0]);
    v10[2] = sub_22073755C(&qword_28127EDC8, v7);
    v10[3] = sub_22073755C(&qword_28127EDC0, v7);
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_22073755C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2207375A4(uint64_t a1, uint64_t a2)
{
  sub_220737684(0, &qword_28127ED80, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220737624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_220737684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_220737450(255, &qword_28127ED88, MEMORY[0x277D6C6E8]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_220737714()
{
  if (!qword_27CF592F0)
  {
    sub_220737450(255, &qword_28127ED88, MEMORY[0x277D6C6E8]);
    v0 = sub_220890FBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF592F0);
    }
  }
}

void sub_22073778C()
{
  if (!qword_27CF592F8)
  {
    sub_220737714();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF592F8);
    }
  }
}

uint64_t sub_2207377F4(uint64_t a1)
{
  sub_22073778C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220737850()
{
  if (!qword_27CF59300)
  {
    sub_220737450(255, &qword_28127ED88, MEMORY[0x277D6C6E8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59300);
    }
  }
}

uint64_t sub_2207378D0(uint64_t a1, uint64_t a2)
{
  sub_2204569E0(0, &qword_28127EDF0, MEMORY[0x277D6C670]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_220737950()
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v3 accessibilityFrame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [v5 accessibilityFrame];
      v20.origin.x = v14;
      v20.origin.y = v15;
      v20.size.width = v16;
      v20.size.height = v17;
      v19.origin.x = v7;
      v19.origin.y = v9;
      v19.size.width = v11;
      v19.size.height = v13;
      CGRectUnion(v19, v20);

      return;
    }
  }

  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_accessibilityFrame);
}

uint64_t sub_220737BA4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_13;
  }

  swift_unknownObjectRelease();
  if (a1 != 1)
  {
    if (a1 != 2)
    {
      goto LABEL_13;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_13;
    }

    v5 = Strong;
    [Strong contentOffset];
    v7 = v6;
    [v5 visibleSize];
    v9 = v7 + v8;
    [v5 contentInset];
    v11 = v9 - v10;
    [v5 contentSize];
    if (v11 != v12)
    {
      v13 = [v5 accessibilityScrollLeftPage];
      goto LABEL_11;
    }

LABEL_9:

    goto LABEL_13;
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    goto LABEL_13;
  }

  v5 = v14;
  [v14 contentOffset];
  v16 = v15;
  [v5 contentInset];
  if (v16 == -v17)
  {
    goto LABEL_9;
  }

  v13 = [v5 accessibilityScrollRightPage];
LABEL_11:
  v18 = v13;

  if (v18)
  {
    return 1;
  }

LABEL_13:
  v20.receiver = v1;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_accessibilityScroll_, a1);
}

uint64_t OpenMainWindowCommandHandler.__allocating_init(navigator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t OpenMainWindowCommandHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void _s8StocksUI28OpenMainWindowCommandHandlerC6handle13commandCenter0I04with6sourcey03TeaB00fJ4Type_p_AI0F0CyytGytAI0F15ExecutionSourceCSgtF_0()
{
  v0 = sub_22088D1DC();
  v37 = *(v0 - 8);
  v38 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = objc_opt_self();
  v4 = [v3 sharedApplication];
  v5 = [v4 connectedScenes];

  v6 = sub_22070791C();
  sub_220732A50();
  v7 = sub_2208918EC();

  v35 = v3;
  v40 = v7;
  v41 = v6;
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22089243C();
    sub_22089190C();
    v7 = v45;
    v8 = v46;
    v9 = v47;
    v10 = v48;
    v11 = v49;
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v7 + 56);

    v10 = 0;
  }

  v39 = v9;
  v15 = (v9 + 64) >> 6;
  while (1)
  {
    if (v7 < 0)
    {
      v21 = sub_22089248C();
      if (!v21 || (v43 = v21, swift_dynamicCast(), v20 = v44, v18 = v10, v19 = v11, !v44))
      {
LABEL_25:
        sub_22067DE08();

        if (qword_281295418 == -1)
        {
LABEL_26:
          v28 = type metadata accessor for StocksActivity(0);
          __swift_project_value_buffer(v28, qword_281295420);
          v30 = v36;
          v29 = v37;
          v31 = v38;
          (*(v37 + 104))(v36, *MEMORY[0x277D6E5A0], v38);
          sub_22088B01C();
          (*(v29 + 8))(v30, v31);
          return;
        }

LABEL_30:
        swift_once();
        goto LABEL_26;
      }
    }

    else
    {
      v16 = v10;
      v17 = v11;
      v18 = v10;
      if (!v11)
      {
        while (1)
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v18 >= v15)
          {
            goto LABEL_25;
          }

          v17 = *(v8 + 8 * v18);
          ++v16;
          if (v17)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

LABEL_14:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v7 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v20)
      {
        goto LABEL_25;
      }
    }

    v42 = v10;
    v22 = [v20 session];
    v23 = sub_220891B7C();
    v25 = v24;

    if (v25)
    {
      break;
    }

LABEL_8:

    v10 = v18;
    v11 = v19;
  }

  if (v23 != 0x756F59726F46 || v25 != 0xE600000000000000)
  {
    v27 = sub_2208928BC();

    if (v27)
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

LABEL_28:
  sub_22067DE08();

  v32 = [v35 sharedApplication];
  v33 = [v20 session];
  [v32 requestSceneSessionActivation:v33 userActivity:0 options:0 errorHandler:0];
}

uint64_t sub_2207384A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22088ED0C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  sub_22088EC5C();
  sub_22088EC4C();
  v14 = (*(v10 + 88))(v13, v9);
  v15 = v14 == *MEMORY[0x277D2D4F0];
  if (v14 != *MEMORY[0x277D2D4F0] && v14 != *MEMORY[0x277D2D508])
  {
    if (v14 == *MEMORY[0x277D2D4F8])
    {
      return 0;
    }

    if (v14 == *MEMORY[0x277D2D520] || v14 == *MEMORY[0x277D2D528] || v14 == *MEMORY[0x277D2D510] || v14 == *MEMORY[0x277D2D518])
    {
      return 1;
    }
  }

  (*(v10 + 8))(v13, v9);
  return v15;
}

uint64_t sub_220738654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v107 = a7;
  v108 = a8;
  *&v104 = a5;
  v91 = a4;
  v109 = a1;
  v11 = sub_22088516C();
  v103 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v102 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088ED0C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v98 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088986C();
  v100 = *(v17 - 8);
  v101 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v99 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22088947C();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v20);
  v92 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22088946C();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v22);
  v95 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22088954C();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v24);
  v88 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2208890BC();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v26);
  v84 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22088949C();
  v87 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207396B0(0, &qword_281296CA8, MEMORY[0x277D2D680], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v77 - v34;
  v36 = sub_22088EF3C();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v77 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v106 = result;
    v110 = a6;
    v111 = v107;
    v112 = v108;
    v113 = a9;
    v42 = sub_22088EC5C();
    sub_22088EC3C();
    v43 = (*(v37 + 48))(v35, 1, v36);
    v44 = &unk_220899000;
    v83 = v11;
    v82 = a3;
    v105 = v42;
    if (v43 == 1)
    {
      sub_220739624(v35);
      LODWORD(v108) = *MEMORY[0x277CEAD18];
      v45 = 0x80000002208D1EB0;
LABEL_14:
      v107 = v45;

      v59 = v88;
      sub_22088953C();
      sub_2207396B0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v61 = v60;
      v62 = sub_220886F8C();
      v86 = v62;
      v63 = *(v62 - 8);
      v91 = *(v63 + 72);
      v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v85 = v61;
      v65 = swift_allocObject();
      v104 = v44[54];
      *(v65 + 16) = v104;
      v87 = *(v63 + 104);
      v66 = v108;
      (v87)(v65 + v64, v108, v62);
      sub_220739714(&qword_2812984C0, MEMORY[0x277D68600]);
      v67 = v90;
      sub_220886F1C();

      (*(v89 + 8))(v59, v67);
      (*(v93 + 16))(v92, v106 + qword_2812848C8, v94);
      LODWORD(v108) = v66;
      v68 = v95;
      sub_22088945C();
      v69 = swift_allocObject();
      *(v69 + 16) = v104;
      v70 = v86;
      v71 = v87;
      (v87)(v69 + v64, v66, v86);
      sub_220739714(&qword_2812984E8, MEMORY[0x277D68570]);
      v72 = v97;
      sub_220886F1C();

      (*(v96 + 8))(v68, v72);
      sub_22088EC4C();
      v73 = v99;
      sub_22088985C();
      v74 = swift_allocObject();
      *(v74 + 16) = v104;
      v71(v74 + v64, v108, v70);
      sub_220739714(&qword_281298448, MEMORY[0x277D68830]);
      v75 = v101;
      sub_220886F1C();

      (*(v100 + 8))(v73, v75);
      sub_22088996C();
      v76 = v102;
      sub_22088EC2C();
      sub_220739714(&qword_2812983F8, MEMORY[0x277D68908]);
      sub_220886EDC();

      return (*(v103 + 8))(v76, v83);
    }

    (*(v37 + 32))(v40, v35, v36);
    result = sub_22088EF2C();
    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v46 > -2147483650.0)
    {
      if (v46 < 2147483650.0)
      {
        sub_22088948C();
        sub_2207396B0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v48 = v47;
        v49 = sub_220886F8C();
        v50 = *(v49 - 8);
        v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v79 = *(v50 + 72);
        v80 = v48;
        v52 = swift_allocObject();
        v77 = xmmword_220899360;
        *(v52 + 16) = xmmword_220899360;
        v53 = *(v50 + 104);
        LODWORD(v108) = *MEMORY[0x277CEAD18];
        v81 = v49;
        v78 = v53;
        v53(v52 + v51);
        sub_220739714(&qword_2812984E0, MEMORY[0x277D685A0]);
        v107 = 0x80000002208D1EB0;
        sub_220886F1C();

        (*(v87 + 8))(v31, v28);
        result = sub_22088EF1C();
        if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v54 > -2147483650.0)
          {
            if (v54 < 2147483650.0)
            {
              result = sub_22088EF1C();
              if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v55 > -2147483650.0)
                {
                  if (v55 < 2147483650.0)
                  {
                    v56 = v84;
                    sub_2208890AC();
                    v57 = swift_allocObject();
                    *(v57 + 16) = v77;
                    v78(v57 + v51, v108, v81);
                    sub_220739714(&qword_281298588, MEMORY[0x277D68220]);
                    v45 = v107;
                    v58 = v86;
                    sub_220886F1C();

                    (*(v85 + 8))(v56, v58);
                    (*(v37 + 8))(v40, v36);
                    v44 = &unk_220899000;
                    goto LABEL_14;
                  }

LABEL_24:
                  __break(1u);
                  return result;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_220739478()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = qword_2812848C8;
  v2 = sub_22088947C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2207394E8()
{
  sub_220739478();

  return swift_deallocClassInstance();
}

uint64_t sub_220739550(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(sub_22088EC5C() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_220738654(a1, v1[6], v1 + v8, *v9, v9[1], v3, v4, v5, v6);
}

uint64_t sub_220739624(uint64_t a1)
{
  sub_2207396B0(0, &qword_281296CA8, MEMORY[0x277D2D680], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2207396B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220739714(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_22073975C(double *a1, char *a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v8 = *(*v6 + 40);
  v7 = *(*v6 + 48);
  __swift_project_boxed_opaque_existential_1((*v6 + 16), v8);
  v9 = (*(*(v7 + 16) + 56))(v8);
  [a2 setBackgroundColor_];

  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  [a2 setFrame_];
  v14 = *&a2[OBJC_IVAR____TtC8StocksUI13EmptyListView_titleLabel];
  [v14 &off_27844B978];
  sub_22046DA2C(v3 + 16, v45);
  __swift_project_boxed_opaque_existential_1(v45, v46);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  sub_220884CAC();

  v17 = sub_2205ED524();

  [v14 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(v45);
  [v14 setTextAlignment_];
  [v14 setNumberOfLines_];
  v44 = v14;
  [v14 setLineBreakMode_];
  v18 = *&a2[OBJC_IVAR____TtC8StocksUI13EmptyListView_descriptionLabel];
  [v18 setFrame_];
  sub_22046DA2C(v3 + 16, v45);
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v19 = [v15 bundleForClass_];
  sub_220884CAC();

  v20 = sub_2205ED7AC();

  [v18 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(v45);
  [v18 setTextAlignment_];
  [v18 setNumberOfLines_];
  [v18 setLineBreakMode_];
  v21 = *&a2[OBJC_IVAR____TtC8StocksUI13EmptyListView_button];
  v22 = [v15 bundleForClass_];
  sub_220884CAC();

  v23 = sub_22089132C();

  [v21 setTitle:v23 forState:{0, 0x80000002208D1F50}];

  v24 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v25 = [v21 titleLabel];
  if (v25)
  {
    v26 = v25;
    v27 = *(v24 + 56);
    if (v27)
    {
      v28 = *(v24 + 56);
    }

    else
    {
      v28 = *MEMORY[0x277D76840];
      v27 = 0;
    }

    v29 = *MEMORY[0x277D767F8];
    v30 = v27;
    if (sub_220891DDC())
    {
      v31 = v29;

      v28 = v31;
    }

    v32 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v33 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v32];

    [v26 setFont_];
  }

  v34 = [v21 titleLabel];
  [v34 setTextAlignment_];

  [v21 sizeToFit];
  [v44 frame];
  Width = CGRectGetWidth(v47);
  [v18 frame];
  v36 = CGRectGetWidth(v48);
  [v21 frame];
  v37 = CGRectGetWidth(v49);
  v38 = 0.0;
  if (*(a1 + 145))
  {
    sub_220891A6C();
    v38 = v39;
  }

  if (Width > v36)
  {
    v40 = Width;
  }

  else
  {
    v40 = v36;
  }

  if (v40 > v37)
  {
    v41 = v40;
  }

  else
  {
    v41 = v37;
  }

  v50.origin.x = v10;
  v50.origin.y = v11;
  v50.size.width = v12;
  v50.size.height = v13;
  [v21 setFrame_];
  return [v21 setHidden_];
}

uint64_t sub_220739DC4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_220739DFC()
{
  result = qword_27CF59328;
  if (!qword_27CF59328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF59328);
  }

  return result;
}

id sub_220739E48(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC8StocksUI17WebViewController_styler];
  swift_beginAccess();
  sub_22046DA2C(v4, v21);
  v5 = v22;
  v6 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v19 = v5;
  v20 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v18);
  v8(a1, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_220457328(&v18, v4);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v9 = __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
  v10 = *v9;
  v12 = *(*v9 + 40);
  v11 = *(*v9 + 48);
  __swift_project_boxed_opaque_existential_1((*v9 + 16), v12);
  v13 = (*(*(v11 + 16) + 136))(v12);
  [v2 setPreferredControlTintColor_];

  v15 = v10[5];
  v14 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v15);
  v16 = (*(*(v14 + 16) + 80))(v15);
  [v2 setPreferredBarTintColor_];

  return [v2 setDismissButtonStyle_];
}

uint64_t sub_22073A080(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v31[0] = sub_22088519C();
  v5 = *(v31[0] - 8);
  MEMORY[0x28223BE20](v31[0], v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebViewSession();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22073AA14();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v18, v19).n128_u64[0];
  v22 = v31 - v21;
  v34.receiver = v2;
  v34.super_class = ObjectType;
  v31[1] = ObjectType;
  objc_msgSendSuper2(&v34, sel_viewDidAppear_, a1 & 1, v20);
  v23 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  swift_beginAccess();
  sub_22073B98C(&v2[v23], v22);
  v24 = (*(v10 + 48))(v22, 1, v9);
  sub_22073BAC0(v22, sub_22073AA14);
  if (v24 == 1)
  {
    sub_22088518C();
    v25 = sub_22088517C();
    v27 = v26;
    (*(v5 + 8))(v8, v31[0]);
    sub_22088515C();
    *v13 = v25;
    v13[1] = v27;
    *(v13 + *(v9 + 24)) = 0;
    v28 = &v2[OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator];
    swift_beginAccess();
    v29 = *(v28 + 3);
    if (v29)
    {
      __swift_project_boxed_opaque_existential_1(v28, v29);
      sub_220692420(v13);
    }

    sub_22073BA5C(v13, v17);
    (*(v10 + 56))(v17, 0, 1, v9);
    swift_beginAccess();
    sub_22073B9F0(v17, &v2[v23]);
    swift_endAccess();
  }

  if (*&v2[OBJC_IVAR____TtC8StocksUI17WebViewController_navigator])
  {
    sub_220448CB8(&qword_27CF59368, type metadata accessor for WebViewController);

    sub_22088B00C();
  }

  else
  {
    v33 = 0;
    memset(v32, 0, sizeof(v32));
  }

  return sub_2206F9DA4(v32, &qword_27CF59370, &qword_27CF59378);
}

uint64_t sub_22073A47C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_22073AA14();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v9, v10).n128_u64[0];
  v13 = &v21 - v12;
  v22.receiver = v2;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, sel_viewDidDisappear_, a1 & 1, v11);
  v14 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  swift_beginAccess();
  sub_22073B98C(&v2[v14], v13);
  v15 = type metadata accessor for WebViewSession();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v13, 1, v15);
  result = sub_22073BAC0(v13, sub_22073AA14);
  if (v17 != 1)
  {
    v19 = &v2[OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator];
    swift_beginAccess();
    v20 = *(v19 + 3);
    if (v20)
    {
      __swift_project_boxed_opaque_existential_1(v19, v20);

      sub_22088726C();
    }

    (*(v16 + 56))(v8, 1, 1, v15);
    swift_beginAccess();
    sub_22073B9F0(v8, &v2[v14]);
    return swift_endAccess();
  }

  return result;
}

uint64_t type metadata accessor for WebViewController()
{
  result = qword_27CF59350;
  if (!qword_27CF59350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22073A964()
{
  sub_22073AA14();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22073AA14()
{
  if (!qword_27CF59360)
  {
    type metadata accessor for WebViewSession();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59360);
    }
  }
}

double sub_22073AA84@<D0>(uint64_t a1@<X8>)
{
  sub_22088CD7C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_22073AAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088B97C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_22088F0DC() & 1) == 0)
  {
    (*(v5 + 16))(v8, a1, v4);
    v13 = (*(v5 + 88))(v8, v4);
    if (v13 == *MEMORY[0x277D6D980])
    {
      v14 = MEMORY[0x277D6E208];
    }

    else
    {
      if (v13 != *MEMORY[0x277D6D978])
      {
        result = sub_22089267C();
        __break(1u);
        return result;
      }

      v14 = MEMORY[0x277D6E210];
    }

    v15 = *v14;
    v16 = sub_22088CC1C();
    (*(*(v16 - 8) + 104))(a2, v15, v16);
    v17 = *MEMORY[0x277D6E220];
    v18 = sub_22088CC2C();
    return (*(*(v18 - 8) + 104))(a2, v17, v18);
  }

  v9 = *MEMORY[0x277D6E1F0];
  v10 = sub_22088CC2C();
  v11 = *(*(v10 - 8) + 104);

  return v11(a2, v9, v10);
}

uint64_t sub_22073AD54@<X0>(uint64_t a1@<X8>)
{
  [v1 dismissViewControllerAnimated:0 completion:0];
  v3 = *MEMORY[0x277D6E350];
  v4 = sub_22088CD4C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_22073ADE0()
{
  v1 = v0;
  v27 = sub_22088519C();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebViewSession();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22073AA14();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v27 - v17;
  v19 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  swift_beginAccess();
  sub_22073B98C(v1 + v19, v18);
  v20 = (*(v7 + 48))(v18, 1, v6);
  result = sub_22073BAC0(v18, sub_22073AA14);
  if (v20 == 1)
  {
    sub_22088518C();
    v22 = sub_22088517C();
    v24 = v23;
    (*(v2 + 8))(v5, v27);
    sub_22088515C();
    *v10 = v22;
    v10[1] = v24;
    *(v10 + *(v6 + 24)) = 1;
    v25 = (v1 + OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator);
    swift_beginAccess();
    v26 = v25[3];
    if (v26)
    {
      __swift_project_boxed_opaque_existential_1(v25, v26);
      sub_220692420(v10);
    }

    sub_22073BA5C(v10, v14);
    (*(v7 + 56))(v14, 0, 1, v6);
    swift_beginAccess();
    sub_22073B9F0(v14, v1 + v19);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22073B0C4()
{
  sub_22073AA14();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WebViewSession();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  swift_beginAccess();
  sub_22073B98C(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_22073BAC0(v4, sub_22073AA14);
  }

  sub_22073BA5C(v4, v9);
  v12 = v0 + OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator;
  swift_beginAccess();
  if (*(v12 + 24))
  {
    sub_22046DA2C(v12, v16);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v13 = off_28341AA40[0];
    v14 = type metadata accessor for WebViewCoordinator();
    v13(v9, v14, &off_28341AA30);
    sub_22073BAC0(v9, type metadata accessor for WebViewSession);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_22073BAC0(v9, type metadata accessor for WebViewSession);
    return swift_endAccess();
  }
}

uint64_t sub_22073B2F4()
{
  sub_22073AA14();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WebViewSession();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  swift_beginAccess();
  sub_22073B98C(v0 + v10, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_22073BAC0(v4, sub_22073AA14);
  }

  sub_22073BA5C(v4, v9);
  v12 = v0 + OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator;
  swift_beginAccess();
  if (*(v12 + 24))
  {
    sub_22046DA2C(v12, v16);
    swift_endAccess();
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v13 = off_28341AA48;
    v14 = type metadata accessor for WebViewCoordinator();
    v13(v9, v14, &off_28341AA30);
    sub_22073BAC0(v9, type metadata accessor for WebViewSession);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_22073BAC0(v9, type metadata accessor for WebViewSession);
    return swift_endAccess();
  }
}

uint64_t sub_22073B524()
{
  sub_22073AA14();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC8StocksUI17WebViewController_session;
  swift_beginAccess();
  sub_22073B98C(v0 + v9, v8);
  v10 = type metadata accessor for WebViewSession();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  result = sub_22073BAC0(v8, sub_22073AA14);
  if (v12 != 1)
  {
    v14 = (v0 + OBJC_IVAR____TtC8StocksUI17WebViewController_webViewCoordinator);
    swift_beginAccess();
    v15 = v14[3];
    if (v15)
    {
      __swift_project_boxed_opaque_existential_1(v14, v15);

      sub_22088726C();
    }

    (*(v11 + 56))(v4, 1, 1, v10);
    swift_beginAccess();
    sub_22073B9F0(v4, v0 + v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_22073B724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DB0](a1, a2, a3, a4, a5, ObjectType);
}

uint64_t sub_22073B7A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DC0](a1, a2, ObjectType);
}

uint64_t sub_22073B808(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DD0](a1, a2, ObjectType);
}

uint64_t sub_22073B860(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DE8](a1, ObjectType);
}

uint64_t sub_22073B8B0()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DA8](ObjectType);
}

uint64_t sub_22073B934(uint64_t a1)
{
  result = sub_220448CB8(&qword_27CF59368, type metadata accessor for WebViewController);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22073B98C(uint64_t a1, uint64_t a2)
{
  sub_22073AA14();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22073B9F0(uint64_t a1, uint64_t a2)
{
  sub_22073AA14();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22073BA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebViewSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22073BAC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22073BB24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088A0EC();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v19 - v14;
  result = sub_22052C400();
  if ((v17 & 1) == 0)
  {
    v18 = result;
    sub_22073BF78(a2, a1, sub_2204FA2D0, &qword_281297E70, sub_2204FA2D0);
    sub_2204FA2D0();
    sub_22088B2AC();
    sub_22075360C(v7);
    sub_220503BCC(v15, type metadata accessor for ForYouFeedSectionDescriptor);
    result = sub_22088B2BC();
    if (v18 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v18 <= 0x7FFFFFFF)
    {
      sub_22088B2AC();
      sub_2207538C8();
      sub_220503BCC(v11, type metadata accessor for ForYouFeedSectionDescriptor);
      return sub_22088A0BC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22073BD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = sub_22088A0EC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220887F2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v22 - v16;
  result = sub_2206D1A58();
  if ((v19 & 1) == 0)
  {
    v20 = result;
    v22[3] = sub_22073BF78(a2, a1, sub_2206D32EC, &unk_27CF593A0, sub_2206D32EC);
    sub_2206D32EC();
    sub_22088B2AC();
    v23 = v8;
    sub_2205B90F8(v8);
    v21 = *(v10 + 8);
    v21(v17, v9);
    result = sub_22088B2BC();
    if (v20 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v20 <= 0x7FFFFFFF)
    {
      sub_22088B2AC();
      v21(v13, v9);
      return sub_22088A0BC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22073BF78(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  sub_2207417F4(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_22088D5BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22052063C(a1, v12, sub_2207417F4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_220503BCC(v12, sub_2207417F4);
    a3(0);
    sub_220454908(a4, a5);
    sub_22089193C();
    sub_22089199C();
    result = sub_22089198C();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_9;
    }

    v19 = result;
    if (result <= 0x7FFFFFFF)
    {
      return v19;
    }

    __break(1u);
  }

  (*(v14 + 32))(v17, v12, v13);
  v19 = sub_22088D5AC();
  result = (*(v14 + 8))(v17, v13);
  if (v19 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    return v19;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22073C1E4(uint64_t a1)
{
  v73 = a1;
  v89 = sub_22088FF2C();
  v92 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v2);
  v94 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v90 = v66 - v6;
  v72 = sub_22088CE3C();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v7);
  v68 = v8;
  v69 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_220889B9C();
  v71 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v9);
  v67 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66[1] = v10;
  MEMORY[0x28223BE20](v11, v12);
  v77 = v66 - v13;
  sub_2204FA2D0();
  v15 = v14;
  v87 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22071B7F0();
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19, v21);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480();
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v27);
  v29 = v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = v66 - v32;
  v76 = v1;
  v95[4] = *(v1 + 64);
  sub_220488310(0);
  sub_220454908(&qword_281297C80, sub_220488310);
  sub_22088BF9C();
  v75 = v26;
  v34 = *(v26 + 16);
  v74 = v33;
  v34(v29, v33, v25);
  sub_220454908(&qword_281296EC0, sub_2204F1480);
  sub_2208915BC();
  v35 = *(v20 + 44);
  v36 = v89;
  v37 = sub_220454908(&unk_281296EB0, sub_2204F1480);
  v38 = 0;
  v85 = v15;
  v86 = (v87 + 16);
  v91 = v92 + 16;
  v93 = (v92 + 32);
  v88 = (v92 + 8);
  v79 = (v87 + 8);
  v80 = v37;
  v83 = v23;
  v84 = v18;
  v81 = v35;
  v82 = v25;
  while (1)
  {
    v87 = v38;
    sub_22089199C();
    if (*&v23[v35] == v95[0])
    {
      break;
    }

    v43 = sub_2208919BC();
    (*v86)(v18);
    v43(v95, 0);
    sub_2208919AC();
    sub_220454908(qword_2812884A0, type metadata accessor for ForYouFeedSectionDescriptor);
    sub_220454908(&qword_281293318, type metadata accessor for ForYouFeedModel);
    result = sub_22088B37C();
    v44 = result;
    v45 = *(result + 16);
    if (v45)
    {
      v46 = 0;
      v39 = MEMORY[0x277D84F90];
      v47 = v90;
      while (v46 < *(v44 + 16))
      {
        v48 = (*(v92 + 80) + 32) & ~*(v92 + 80);
        v49 = *(v92 + 72);
        (*(v92 + 16))(v47, v44 + v48 + v49 * v46, v36);
        if (sub_22088FF1C())
        {
          swift_unknownObjectRelease();
          v50 = *v93;
          (*v93)(v94, v47, v36);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95[0] = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22070C19C(0, *(v39 + 16) + 1, 1);
            v39 = v95[0];
          }

          v53 = *(v39 + 16);
          v52 = *(v39 + 24);
          if (v53 >= v52 >> 1)
          {
            sub_22070C19C(v52 > 1, v53 + 1, 1);
            v39 = v95[0];
          }

          *(v39 + 16) = v53 + 1;
          v36 = v89;
          result = v50((v39 + v48 + v53 * v49), v94, v89);
          v47 = v90;
        }

        else
        {
          result = (*v88)(v47, v36);
        }

        if (v45 == ++v46)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v39 = MEMORY[0x277D84F90];
LABEL_3:
    v18 = v84;
    (*v79)(v84, v85);

    v40 = *(v39 + 16);

    v42 = __OFADD__(v87, v40);
    v38 = v87 + v40;
    v25 = v82;
    v23 = v83;
    v35 = v81;
    if (v42)
    {
      goto LABEL_20;
    }
  }

  sub_220503BCC(v23, sub_22071B7F0);
  (*(v75 + 8))(v74, v25);
  v54 = v76;
  __swift_project_boxed_opaque_existential_1((v76 + 296), *(v76 + 320));
  result = sub_22088618C();
  if (v87 < 0xFFFFFFFF80000000)
  {
    goto LABEL_21;
  }

  if (v87 <= 0x7FFFFFFF)
  {
    v55 = v77;
    sub_220889B8C();
    v94 = *(v54 + 16);
    v56 = v70;
    v57 = v69;
    v58 = v72;
    (*(v70 + 16))(v69, v73, v72);
    v59 = v71;
    v60 = v67;
    (*(v71 + 16))(v67, v55, v78);
    v61 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v62 = (v68 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = (*(v59 + 80) + v62 + 8) & ~*(v59 + 80);
    v64 = swift_allocObject();
    (*(v56 + 32))(v64 + v61, v57, v58);
    *(v64 + v62) = v54;
    v65 = v78;
    (*(v59 + 32))(v64 + v63, v60, v78);

    sub_22088726C();

    return (*(v59 + 8))(v77, v65);
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_22073CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  *&v61 = a3;
  v72 = a1;
  v5 = sub_22088516C();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v68 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088944C();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v58 = &v55 - v13;
  v59 = sub_220886A4C();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v14);
  v56 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088943C();
  v65 = *(v16 - 8);
  v66 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v64 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22088A06C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22088D81C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22088928C();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a2;
  sub_22088CE0C();
  v34 = (*(v25 + 88))(v28, v24);
  if (v34 == *MEMORY[0x277D6E830])
  {
    v35 = MEMORY[0x277D68F60];
  }

  else
  {
    v35 = MEMORY[0x277D68F68];
    if (v34 != *MEMORY[0x277D6E840] && v34 != *MEMORY[0x277D6E848] && v34 != *MEMORY[0x277D6E838])
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }
  }

  (*(v20 + 104))(v23, *v35, v19);
  sub_22088927C();
  sub_220454908(&qword_281298540, MEMORY[0x277D683C0]);
  sub_220886F1C();
  (*(v30 + 8))(v33, v29);
  __swift_project_boxed_opaque_existential_1((v61 + 256), *(v61 + 280));
  v36 = v56;
  sub_2208863EC();
  v37 = sub_2208869AC();
  v38 = MEMORY[0x277D68560];
  if ((v37 & 1) == 0)
  {
    v38 = MEMORY[0x277D68558];
  }

  v40 = v62;
  v39 = v63;
  v41 = v58;
  (*(v62 + 104))(v58, *v38, v63);
  (*(v40 + 16))(v60, v41, v39);
  v42 = v64;
  sub_22088942C();
  (*(v40 + 8))(v41, v39);
  (*(v57 + 8))(v36, v59);
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v63 = v43;
  v44 = sub_220886F8C();
  v45 = *(v44 - 8);
  v62 = *(v45 + 72);
  v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = swift_allocObject();
  v61 = xmmword_220899360;
  *(v47 + 16) = xmmword_220899360;
  v48 = *MEMORY[0x277CEAD18];
  v60 = *(v45 + 104);
  (v60)(v47 + v46, v48, v44);
  sub_220454908(&qword_2812984F0, MEMORY[0x277D68550]);
  v49 = v66;
  sub_220886F1C();

  (*(v65 + 8))(v42, v49);
  v50 = swift_allocObject();
  *(v50 + 16) = v61;
  (v60)(v50 + v46, v48, v44);
  sub_220889B9C();
  sub_220454908(&qword_281298380, MEMORY[0x277D68AD0]);
  sub_220886F1C();

  sub_2208893EC();
  v51 = v68;
  sub_22088CE2C();
  sub_220454908(&qword_2812984F8, MEMORY[0x277D68488]);
  sub_220886ECC();
  v52 = v71;
  v53 = *(v70 + 8);
  v53(v51, v71);
  sub_22088CE1C();
  sub_220886EDC();
  return (v53)(v51, v52);
}

uint64_t sub_22073D470(uint64_t a1)
{
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v3 = v2;
  v95 = *(v2 - 8);
  v89 = *(v95 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v94 = &v79 - v5;
  v6 = sub_22089049C();
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v87 = v8;
  v88 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v102 = &v79 - v11;
  sub_2204547E0();
  v100 = *(v12 - 8);
  v101 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v99 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088FFFC();
  v85 = *(v15 - 8);
  v86 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v93 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088FEFC();
  v19 = *(v18 - 8);
  v83 = v18;
  v84 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v82 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_22088698C();
  v81 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v22);
  v92 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v98 = &v79 - v26;
  sub_220454720();
  v28 = v27;
  v97 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D97C();
  v37 = v36;
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v3;
  v43 = a1;
  sub_22088BBEC();
  sub_22088AD8C();
  (*(v38 + 8))(v41, v37);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    if (result > 4)
    {
      if (result != 5)
      {
        return result;
      }
    }

    else if (result == 3)
    {

      sub_220458918();
      v46 = *(v45 + 48);
      v47 = sub_22089030C();
      return (*(*(v47 - 8) + 8))(&v35[v46], v47);
    }

    return sub_220503BCC(v35, type metadata accessor for ForYouFeedModel);
  }

  v49 = v92;
  v48 = v93;
  v50 = v31;
  v51 = v28;
  v53 = v94;
  v52 = v95;
  v54 = v102;
  v79 = v42;
  v55 = v43;
  if (result)
  {
    v56 = v96;
    if (result == 1)
    {
      (*(v100 + 32))(v99, v35, v101);
      v57 = v54;
      sub_22088FF6C();
      v98 = *(v56 + 16);
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = v52;
      v60 = v53;
      v61 = v53;
      v62 = v79;
      (*(v52 + 16))(v61, v43, v79);
      v64 = v90;
      v63 = v91;
      v65 = v88;
      (*(v90 + 16))(v88, v57, v91);
      v66 = (*(v59 + 80) + 24) & ~*(v59 + 80);
      v67 = (v89 + *(v64 + 80) + v66) & ~*(v64 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = v58;
      (*(v59 + 32))(v68 + v66, v60, v62);
      (*(v64 + 32))(v68 + v67, v65, v63);

      sub_22088726C();

      (*(v64 + 8))(v102, v63);
      (*(v100 + 8))(v99, v101);
    }

    return sub_220503BCC(v35, type metadata accessor for ForYouFeedModel);
  }

  v69 = v50;
  v70 = v35;
  v71 = v51;
  (*(v97 + 32))(v50, v70, v51);
  sub_22088FF6C();
  v72 = v48;
  sub_22088FF7C();
  v73 = v49;
  sub_22088FF6C();
  sub_2208868DC();
  v74 = *(v81 + 8);
  v75 = v73;
  v76 = v80;
  v74(v75, v80);
  sub_22088FF8C();
  v77 = v82;
  sub_22088FFEC();
  swift_unknownObjectRelease();
  (*(v85 + 8))(v72, v86);
  v78 = v98;
  sub_22073DD28(v55, v98, v77);
  (*(v84 + 8))(v77, v83);
  v74(v78, v76);
  return (*(v97 + 8))(v69, v71);
}

uint64_t sub_22073DD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a3;
  v37 = a2;
  v30 = a1;
  v32 = sub_22088FEFC();
  v36 = *(v32 - 8);
  v34 = *(v36 + 64);
  MEMORY[0x28223BE20](v32, v5);
  v35 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088698C();
  v28 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v29 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v12 = v11;
  v27 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11, v15);
  v17 = &v26 - v16;
  v31 = v4[2];
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v17, v30, v12);
  (*(v8 + 16))(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v7);
  v19 = v36;
  v20 = v32;
  (*(v36 + 16))(v35, v33, v32);
  v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v22 = (v14 + *(v8 + 80) + v21) & ~*(v8 + 80);
  v23 = (v9 + *(v19 + 80) + v22) & ~*(v19 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  (*(v13 + 32))(v24 + v21, v17, v27);
  (*(v8 + 32))(v24 + v22, v29, v28);
  (*(v36 + 32))(v24 + v23, v35, v20);

  sub_22088726C();

  __swift_project_boxed_opaque_existential_1(v4 + 11, v4[14]);
  sub_2208863AC();
  __swift_project_boxed_opaque_existential_1(v4 + 27, v4[30]);
  sub_2208868DC();
  sub_220887DDC();
  return swift_unknownObjectRelease();
}

uint64_t sub_22073E0E0(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v3 = sub_22088516C();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207417F4(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FA2D0();
  v37 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480();
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088A0DC();
  v23 = *(v22 - 8);
  v39 = v22;
  v40 = v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220516884(0, &qword_281297660, MEMORY[0x277D6E3A0]);
  v38 = a2;
  sub_22088CDDC();
  sub_22088CDCC();
  v27 = sub_22088D5BC();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  sub_22073BB24(v15, v10);
  sub_220503BCC(v10, sub_2207417F4);
  (*(v12 + 8))(v15, v37);
  (*(v18 + 8))(v21, v17);
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v28 = sub_220886F8C();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_220899360;
  (*(v29 + 104))(v31 + v30, *MEMORY[0x277CEAD18], v28);
  sub_220454908(&unk_281298290, MEMORY[0x277D68FD8]);
  v32 = v39;
  sub_220886F1C();

  (*(v40 + 8))(v26, v32);
  sub_22088991C();
  sub_22088CDEC();
  sub_220454908(&qword_281298418, MEMORY[0x277D688A8]);
  sub_220886ECC();
  v33 = v43;
  v34 = *(v42 + 8);
  v34(v6, v43);
  sub_22088CDBC();
  sub_220886EDC();
  return (v34)(v6, v33);
}

uint64_t sub_22073E66C(uint64_t a1, void *a2, uint64_t a3)
{
  v52 = a1;
  v53 = a3;
  v40 = sub_22088A10C();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v4);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208891DC();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220889BFC();
  v10 = *(v9 - 8);
  v54 = v9;
  v55 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v51 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088993C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  ObjectType = swift_getObjectType();
  sub_2206F6C58();
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v48 = v18;
  v46 = sub_220886F8C();
  v19 = *(v46 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v47 = xmmword_220899360;
  *(v21 + 16) = xmmword_220899360;
  v45 = *MEMORY[0x277CEAD18];
  v44 = *(v19 + 104);
  v44(v21 + v20);
  sub_220454908(&qword_27CF58950, MEMORY[0x277D688C8]);
  sub_220886F1C();

  (*(v14 + 8))(v17, v13);
  v22 = v53;
  v23 = v51;
  v24 = v49;
  sub_2206F69A0(*(v53 + 168));
  v25 = swift_allocObject();
  *(v25 + 16) = v47;
  (v44)(v25 + v20, v45, v46);
  sub_220454908(&qword_281298370, MEMORY[0x277D68B40]);
  v26 = v54;
  sub_220886F1C();

  (*(v55 + 8))(v23, v26);
  v27 = [v24 sourceChannel];
  if (v27)
  {
    v28 = v27;
    __swift_project_boxed_opaque_existential_1((v22 + 128), *(v22 + 152));
    v29 = v41;
    sub_2206EC95C(v28);
    sub_220454908(&qword_281298560, MEMORY[0x277D68340]);
    v30 = v43;
    sub_2208872CC();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v29, v30);
  }

  if ([v24 respondsToSelector_])
  {
    v31 = [v24 parentIssue];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 identifier];
      sub_22089136C();

      v34 = v38;
      sub_22088A0FC();
      sub_220454908(&qword_281298280, MEMORY[0x277D69030]);
      v35 = v40;
      sub_2208872CC();

      (*(v39 + 8))(v34, v35);
    }
  }

  sub_220889EBC();
  sub_220454908(&unk_27CF59380, MEMORY[0x277D68E00]);
  memset(v56, 0, 32);
  sub_220886F3C();
  return sub_220503BCC(v56, sub_22055F87C);
}

uint64_t sub_22073ED74(uint64_t a1)
{
  sub_22051D97C();
  v3 = v2;
  v71 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v68 = v5;
  v74 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480();
  v72 = v6;
  v75 = *(v6 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v69 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v78 = v60 - v11;
  v77 = sub_22088698C();
  v70 = *(v77 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v77, v13);
  v73 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v79 = v60 - v16;
  sub_220454720();
  v76 = v17;
  v81 = *(v17 - 8);
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v17, v19);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v60 - v22;
  v24 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v24, v25);
  v27 = v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088AD8C();
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    v62 = v18;
    v63 = v12;
    v65 = a1;
    v66 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = v7;
    v32 = v23;
    v33 = v80;
    v34 = v78;
    v35 = v79;
    v36 = v76;
    v37 = v77;
    v67 = v3;
    v38 = v75;
    if (!result)
    {
      v39 = *(v81 + 32);
      v60[2] = v81 + 32;
      v61 = v39;
      v40 = v32;
      v39(v32, v27, v76);
      v41 = v35;
      v42 = v36;
      v60[0] = v40;
      sub_22088FF6C();
      v82 = *(v33 + 64);
      sub_220488310(0);
      sub_220454908(&qword_281297C80, sub_220488310);
      v43 = v34;
      sub_22088BF9C();
      v60[1] = *(v33 + 16);
      v44 = v70;
      (*(v70 + 16))(v73, v41, v37);
      v45 = v38;
      v46 = v69;
      (*(v38 + 16))(v69, v43, v72);
      v47 = v71;
      (*(v71 + 16))(v74, v65, v67);
      v48 = v81;
      (*(v81 + 16))(v66, v40, v42);
      v49 = (*(v44 + 80) + 16) & ~*(v44 + 80);
      v50 = (v63 + *(v45 + 80) + v49) & ~*(v45 + 80);
      v51 = (v64 + *(v47 + 80) + v50) & ~*(v47 + 80);
      v52 = (v68 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = (*(v48 + 80) + v52 + 8) & ~*(v48 + 80);
      v54 = swift_allocObject();
      v55 = v54 + v49;
      v56 = v77;
      (*(v44 + 32))(v55, v73, v77);
      v57 = v46;
      v58 = v72;
      (*(v45 + 32))(v54 + v50, v57, v72);
      (*(v47 + 32))(v54 + v51, v74, v67);
      *(v54 + v52) = v80;
      v59 = v76;
      v61(v54 + v53, v66, v76);

      sub_22088726C();

      (*(v45 + 8))(v78, v58);
      (*(v44 + 8))(v79, v56);
      return (*(v81 + 8))(v60[0], v59);
    }
  }

  else if (result > 4)
  {
    if (result != 5)
    {
      return result;
    }
  }

  else if (result == 3)
  {

    sub_220458918();
    v30 = *(v29 + 48);
    v31 = sub_22089030C();
    return (*(*(v31 - 8) + 8))(&v27[v30], v31);
  }

  return sub_220503BCC(v27, type metadata accessor for ForYouFeedModel);
}

uint64_t sub_22073F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v121 = a6;
  v146 = a3;
  v147 = a5;
  v150 = a4;
  v124 = sub_220889BFC();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v8);
  v122 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22088698C();
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v10);
  v110 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22088FFFC();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117, v12);
  v111 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22088FEFC();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v14);
  v109 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_22088A04C();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v16);
  v118 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22088A10C();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v18);
  v100 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2208891DC();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v20);
  v103 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2208899AC();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v22);
  v106 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_22088971C();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v24);
  v125 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D0618(0, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v145 = &v100 - v28;
  sub_2204FA2D0();
  v143 = v29;
  v144 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v30);
  v128 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207417F4(0);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v142 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_22088A0DC();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v35);
  v129 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_22088916C();
  v151 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v37);
  v149 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_22088A02C();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v39);
  v137 = &v100 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_22088519C();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v41);
  v133 = &v100 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_22088A01C();
  v141 = *(v140 - 8);
  MEMORY[0x28223BE20](v140, v43);
  v134 = &v100 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2208895EC();
  v132 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v46);
  v48 = &v100 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = a2;
  sub_2208868DC();
  swift_getObjectType();
  sub_2206F61F0(v48);
  swift_unknownObjectRelease();
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v156 = v49;
  v50 = sub_220886F8C();
  v51 = *(v50 - 8);
  v157 = *(v51 + 72);
  v52 = *(v51 + 80);
  v53 = (v52 + 32) & ~v52;
  v54 = swift_allocObject();
  v158 = xmmword_220899360;
  *(v54 + 16) = xmmword_220899360;
  v152 = *MEMORY[0x277CEAD18];
  v155 = *(v51 + 104);
  v155(v54 + v53);
  sub_220454908(&qword_2812984B0, MEMORY[0x277D686A0]);
  v159 = a1;
  sub_220886F1C();

  (*(v132 + 8))(v48, v45);
  v55 = v133;
  sub_22088518C();
  sub_22088517C();
  (*(v135 + 8))(v55, v136);
  (*(v138 + 104))(v137, *MEMORY[0x277D68F28], v139);
  (*(v151 + 13))(v149, *MEMORY[0x277D682B8], v154);
  v56 = v134;
  sub_22088A00C();
  v154 = v52;
  v57 = swift_allocObject();
  *(v57 + 16) = v158;
  v139 = v53;
  v153 = v50;
  v149 = (v51 + 104);
  (v155)(v57 + v53, v152, v50);
  sub_220454908(&unk_2812982B0, MEMORY[0x277D68F18]);
  v151 = "feedDismissingManager";
  v58 = v140;
  sub_220886F1C();

  (*(v141 + 8))(v56, v58);
  v59 = sub_22088D5BC();
  v60 = v142;
  (*(*(v59 - 8) + 56))();
  sub_22051D97C();
  sub_22088AD4C();
  sub_2204F1480();
  v61 = v145;
  v62 = v143;
  sub_22088E76C();
  v63 = v61;
  v64 = v144;

  result = (*(v64 + 48))(v61, 1, v62);
  if (result == 1)
  {
    goto LABEL_17;
  }

  v66 = v128;
  (*(v64 + 32))(v128, v63, v62);
  v67 = v129;
  sub_22073BB24(v66, v60);
  (*(v64 + 8))(v66, v62);
  sub_220503BCC(v60, sub_2207417F4);
  v68 = v139;
  v69 = swift_allocObject();
  *(v69 + 16) = v158;
  v70 = *MEMORY[0x277CEAD10];
  v71 = v68;
  (v155)(v69 + v68, v70, v153);
  sub_220454908(&unk_281298290, MEMORY[0x277D68FD8]);
  v72 = v131;
  sub_220886F1C();

  (*(v130 + 8))(v67, v72);
  sub_220454908(&qword_281293340, type metadata accessor for ForYouFeedModel);
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v73 = v125;
  sub_22088970C();
  v74 = swift_allocObject();
  *(v74 + 16) = v158;
  (v155)(v74 + v68, v70, v153);
  sub_220454908(&qword_281298470, MEMORY[0x277D68720]);
  v75 = v127;
  sub_220886F1C();

  (*(v126 + 8))(v73, v75);
  result = sub_22088E80C();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v76 = v106;
  sub_22088999C();
  v77 = swift_allocObject();
  *(v77 + 16) = v158;
  v78 = v153;
  v79 = v155;
  (v155)(v77 + v68, v70, v153);
  sub_220454908(&qword_2812983F0, MEMORY[0x277D68928]);
  v80 = v108;
  sub_220886F1C();

  (*(v107 + 8))(v76, v80);
  v81 = [sub_2208868DC() sourceChannel];
  swift_unknownObjectRelease();
  if (v81)
  {
    __swift_project_boxed_opaque_existential_1((v147 + 128), *(v147 + 152));
    v82 = v103;
    sub_2206EC95C(v81);
    v83 = swift_allocObject();
    *(v83 + 16) = v158;
    (v79)(v83 + v68, v152, v78);
    sub_220454908(&qword_281298560, MEMORY[0x277D68340]);
    v84 = v105;
    sub_220886F1C();
    swift_unknownObjectRelease();

    (*(v104 + 8))(v82, v84);
  }

  v85 = sub_2208868DC();
  if ([v85 respondsToSelector_])
  {
    v86 = [v85 parentIssue];
    swift_unknownObjectRelease();
    if (v86)
    {
      v87 = [v86 identifier];
      sub_22089136C();

      v88 = v100;
      sub_22088A0FC();
      sub_220454908(&qword_281298280, MEMORY[0x277D69030]);
      v89 = v102;
      sub_2208872CC();

      (*(v101 + 8))(v88, v89);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_220454720();
  v90 = v111;
  sub_22088FF7C();
  v91 = v110;
  sub_22088FF6C();
  sub_2208868DC();
  (*(v114 + 8))(v91, v116);
  sub_22088FF8C();
  v92 = v109;
  sub_22088FFEC();
  swift_unknownObjectRelease();
  (*(v115 + 8))(v90, v117);
  v93 = v118;
  sub_220605740();
  (*(v112 + 8))(v92, v113);
  v94 = swift_allocObject();
  *(v94 + 16) = v158;
  v95 = v155;
  (v155)(v94 + v71, v152, v78);
  sub_220454908(&unk_2812982A0, MEMORY[0x277D68F38]);
  v96 = v120;
  sub_220886F1C();

  (*(v119 + 8))(v93, v96);
  sub_2208868DC();
  swift_getObjectType();
  v97 = v122;
  sub_2206F69A0(*(v147 + 168));
  swift_unknownObjectRelease();
  v98 = swift_allocObject();
  *(v98 + 16) = v158;
  (v95)(v98 + v71, v152, v153);
  sub_220454908(&qword_281298370, MEMORY[0x277D68B40]);
  v99 = v124;
  sub_220886F1C();

  (*(v123 + 8))(v97, v99);
  sub_220889DEC();
  sub_220454908(&qword_281298310, MEMORY[0x277D68D38]);
  memset(v160, 0, sizeof(v160));
  sub_220886F3C();
  return sub_220503BCC(v160, sub_22055F87C);
}

uint64_t sub_220740B3C(uint64_t a1)
{
  v74 = a1;
  v2 = sub_2208899AC();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088971C();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v60 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D0618(0, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v54 - v10;
  sub_2204FA2D0();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207417F4(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088A0DC();
  v64 = *(v22 - 8);
  v65 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v63 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480();
  v26 = v25;
  v55 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v1[8];
  sub_220488310(0);
  sub_220454908(&qword_281297C80, sub_220488310);
  sub_22088BF9C();
  v59 = v1;
  v73 = v1[2];
  v30 = sub_22088D5BC();
  (*(*(v30 - 8) + 56))(v21, 1, 1, v30);
  sub_22051D97C();
  sub_22088AD4C();
  sub_22088E76C();

  result = (*(v14 + 48))(v11, 1, v13);
  if (result == 1)
  {
    goto LABEL_11;
  }

  (*(v14 + 32))(v17, v11, v13);
  v32 = v63;
  sub_22073BB24(v17, v21);
  (*(v14 + 8))(v17, v13);
  sub_220503BCC(v21, sub_2207417F4);
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v34 = v33;
  v35 = sub_220886F8C();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v69 = *(v36 + 72);
  v71 = v34;
  v38 = swift_allocObject();
  v66 = xmmword_220899360;
  *(v38 + 16) = xmmword_220899360;
  v39 = *(v36 + 104);
  v68 = *MEMORY[0x277CEAD10];
  v72 = v35;
  v67 = v39;
  v39(v38 + v37);
  sub_220454908(&unk_281298290, MEMORY[0x277D68FD8]);
  v70 = "feedDismissingManager";
  v40 = v65;
  sub_2208872CC();

  (*(v64 + 8))(v32, v40);
  sub_220454908(&qword_281293340, type metadata accessor for ForYouFeedModel);
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v41 = v29;
  v42 = v60;
  sub_22088970C();
  v43 = swift_allocObject();
  *(v43 + 16) = v66;
  v67(v43 + v37, v68, v72);
  sub_220454908(&qword_281298470, MEMORY[0x277D68720]);
  v44 = v26;
  v45 = v62;
  sub_2208872CC();

  v46 = v45;
  v47 = v44;
  (*(v61 + 8))(v42, v46);
  result = sub_22088E80C();
  if (result >= 0xFFFFFFFF80000000)
  {
    if (result <= 0x7FFFFFFF)
    {
      v48 = v56;
      sub_22088999C();
      v49 = swift_allocObject();
      *(v49 + 16) = v66;
      v67(v49 + v37, v68, v72);
      sub_220454908(&qword_2812983F0, MEMORY[0x277D68928]);
      v50 = v58;
      v51 = v73;
      sub_2208872CC();

      (*(v57 + 8))(v48, v50);
      v52 = v59[6];
      v53 = v59[7];
      __swift_project_boxed_opaque_existential_1(v59 + 3, v52);
      (*(v53 + 8))(v51, v52, v53);
      return (*(v55 + 8))(v41, v47);
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220741438()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1(v0 + 296);
  sub_220503BCC(v0 + OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_onDeckViewAction, sub_220500B98);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_feedDismissingManager);
  return v0;
}

uint64_t sub_2207414E4()
{
  sub_220741438();

  return swift_deallocClassInstance();
}

uint64_t sub_2207415D4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_220454908(a4, a5);
  return sub_22088730C();
}

uint64_t sub_220741650(uint64_t a1)
{
  v3 = *(sub_22088698C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_2204F1480();
  v7 = (v4 + v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  sub_22051D97C();
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = (*(*(v9 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_220454720();
  v13 = *(v1 + v11);
  v14 = v1 + ((v11 + *(*(v12 - 8) + 80) + 8) & ~*(*(v12 - 8) + 80));

  return sub_22073F430(a1, v1 + v4, v1 + v7, v1 + v10, v13, v14);
}

uint64_t sub_220741828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v232 = a5;
  v260 = a4;
  v271 = a3;
  v275 = a1;
  v225 = sub_22088993C();
  v224 = *(v225 - 8);
  MEMORY[0x28223BE20](v225, v5);
  v223 = &v203 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088516C();
  v248 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v247 = &v203 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_22088824C();
  v234 = *(v235 - 8);
  MEMORY[0x28223BE20](v235, v10);
  v233 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_22088944C();
  v243 = *(v244 - 8);
  MEMORY[0x28223BE20](v244, v12);
  v222 = &v203 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v240 = &v203 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v230 = &v203 - v19;
  v242 = sub_220886A4C();
  v241 = *(v242 - 8);
  MEMORY[0x28223BE20](v242, v20);
  v220 = &v203 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v229 = &v203 - v24;
  v246 = sub_22088943C();
  v245 = *(v246 - 8);
  MEMORY[0x28223BE20](v246, v25);
  v221 = &v203 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v231 = &v203 - v29;
  v228 = sub_22088A04C();
  v227 = *(v228 - 8);
  MEMORY[0x28223BE20](v228, v30);
  v226 = &v203 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_22088A10C();
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206, v32);
  v204 = &v203 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_2208891DC();
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209, v34);
  v207 = &v203 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_2208898CC();
  v218 = *(v219 - 8);
  MEMORY[0x28223BE20](v219, v36);
  v217 = &v203 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_220889BFC();
  v215 = *(v216 - 8);
  MEMORY[0x28223BE20](v216, v38);
  v214 = &v203 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_2208895EC();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213, v40);
  v211 = &v203 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_22088698C();
  v256 = *(v239 - 8);
  MEMORY[0x28223BE20](v239, v42);
  v257 = &v203 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_2208899AC();
  v237 = *(v238 - 8);
  MEMORY[0x28223BE20](v238, v44);
  v236 = &v203 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_22088971C();
  v250 = *(v251 - 8);
  MEMORY[0x28223BE20](v251, v46);
  v249 = &v203 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D0618(0, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v48 - 8, v49);
  v51 = &v203 - v50;
  sub_2204FA2D0();
  v53 = v52;
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v55);
  v57 = &v203 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207417F4(0);
  MEMORY[0x28223BE20](v58 - 8, v59);
  v61 = &v203 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D97C();
  v264 = v62;
  v270 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v63);
  v263 = &v203 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65, v66);
  v68 = &v203 - v67;
  sub_2204F1480();
  v258 = v69;
  v269 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v70);
  v262 = &v203 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72, v73);
  v75 = &v203 - v74;
  v253 = sub_22088A0DC();
  v252 = *(v253 - 1);
  MEMORY[0x28223BE20](v253, v76);
  v78 = &v203 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v266 = result;
  if (!result)
  {
    return result;
  }

  v210 = v7;
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v81 = v80;
  sub_22088BC0C();
  v259 = v81;
  sub_22088BBEC();
  v82 = sub_22088D5BC();
  (*(*(v82 - 8) + 56))(v61, 1, 1, v82);
  sub_22088AD4C();
  sub_22088E76C();

  if ((*(v54 + 48))(v51, 1, v53) == 1)
  {
    goto LABEL_29;
  }

  (*(v54 + 32))(v57, v51, v53);
  sub_22073BB24(v57, v61);
  (*(v54 + 8))(v57, v53);
  sub_220503BCC(v61, sub_2207417F4);
  v83 = v270[1];
  v84 = v68;
  v85 = v264;
  ++v270;
  v83(v84, v264);
  v86 = *(v269 + 8);
  v87 = v75;
  v88 = v258;
  v269 += 8;
  v255 = v86;
  v86(v87, v258);
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v90 = v89;
  v91 = sub_220886F8C();
  v92 = *(v91 - 8);
  v93 = *(v92 + 80);
  v94 = (v93 + 32) & ~v93;
  v276 = *(v92 + 72);
  v268 = v93;
  v272 = v90;
  v95 = swift_allocObject();
  v277 = xmmword_220899360;
  *(v95 + 16) = xmmword_220899360;
  v97 = *(v92 + 104);
  v96 = v92 + 104;
  v273 = *MEMORY[0x277CEAD18];
  v265 = v91;
  v274 = v97;
  (v97)(v95 + v94);
  sub_220454908(&unk_281298290, MEMORY[0x277D68FD8]);
  v98 = v253;
  sub_220886F1C();

  (*(v252 + 8))(v78, v98);
  sub_22088BC0C();
  sub_22088BBEC();
  sub_220454908(&qword_281293340, type metadata accessor for ForYouFeedModel);
  v99 = sub_22088E7FC();
  if (v99 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v99 > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v100 = v88;
  v101 = v249;
  sub_22088970C();
  v253 = v83;
  v83(v263, v85);
  v255(v262, v100);
  v102 = swift_allocObject();
  *(v102 + 16) = v277;
  v254 = v94;
  v267 = v96;
  v274(v102 + v94, v273, v265);
  sub_220454908(&qword_281298470, MEMORY[0x277D68720]);
  v103 = v251;
  sub_220886F1C();

  (*(v250 + 8))(v101, v103);
  sub_22088BC0C();
  sub_22088BBEC();
  v104 = sub_22088E80C();
  if (v104 < 0xFFFFFFFF80000000)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v104 > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v105 = v236;
  sub_22088999C();
  (v253)(v263, v264);
  v255(v262, v100);
  v106 = v265;
  v107 = v254;
  v108 = swift_allocObject();
  *(v108 + 16) = v277;
  v274(v108 + v107, v273, v106);
  sub_220454908(&qword_2812983F0, MEMORY[0x277D68928]);
  v261 = "feedDismissingManager";
  v109 = v238;
  sub_220886F1C();

  (*(v237 + 8))(v105, v109);
  v110 = v256;
  v111 = v257;
  v112 = v239;
  (*(v256 + 16))(v257, v260, v239);
  v113 = (*(v110 + 88))(v111, v112);
  if (v113 == *MEMORY[0x277D69850])
  {
    (*(v110 + 96))(v111, v112);
    v114 = *v111;
    swift_getObjectType();
    v115 = v106;
    v116 = v211;
    v270 = v114;
    sub_2206F61F0(v211);
    v117 = swift_allocObject();
    *(v117 + 16) = v277;
    v274(v117 + v107, v273, v115);
    sub_220454908(&qword_2812984B0, MEMORY[0x277D686A0]);
    v118 = v213;
    sub_220886F1C();

    (*(v212 + 8))(v116, v118);
    v119 = *(v266 + 168);
    v120 = v214;
    sub_2206F69A0(v119);

    v121 = swift_allocObject();
    *(v121 + 16) = v277;
    v122 = v273;
    v123 = v274;
    v274(v121 + v107, v273, v265);
    sub_220454908(&qword_281298370, MEMORY[0x277D68B40]);
    v124 = v216;
    sub_220886F1C();

    (*(v215 + 8))(v120, v124);
    v125 = v217;
    sub_22057BB68();
    v126 = swift_allocObject();
    *(v126 + 16) = v277;
    v123(v126 + v107, v122, v265);
    sub_220454908(&qword_281298430, MEMORY[0x277D68860]);
    v127 = v219;
    sub_220886F1C();

    v128 = v125;
    v129 = v270;
    (*(v218 + 8))(v128, v127);
    v130 = [v129 sourceChannel];
    v131 = v122;
    if (v130)
    {
      v132 = v130;
      v133 = v123;
      __swift_project_boxed_opaque_existential_1((v266 + 128), *(v266 + 152));
      v134 = v207;
      sub_2206EC95C(v132);
      v135 = swift_allocObject();
      *(v135 + 16) = v277;
      v133(v135 + v107, v122, v265);
      sub_220454908(&qword_281298560, MEMORY[0x277D68340]);
      v136 = v209;
      sub_220886F1C();
      swift_unknownObjectRelease();

      v137 = v136;
      v131 = v122;
      (*(v208 + 8))(v134, v137);
    }

    if ([v129 respondsToSelector_])
    {
      v138 = [v129 parentIssue];
      if (v138)
      {
        v139 = v138;
        v140 = [v138 identifier];
        sub_22089136C();

        v141 = v204;
        sub_22088A0FC();
        sub_220454908(&qword_281298280, MEMORY[0x277D69030]);
        v142 = v206;
        sub_2208872CC();

        v131 = v273;
        (*(v205 + 8))(v141, v142);
      }
    }

    v143 = v266;
    v144 = v226;
    sub_220605740();
    v145 = swift_allocObject();
    *(v145 + 16) = v277;
    v146 = v265;
    v274(v145 + v107, v131, v265);
    sub_220454908(&unk_2812982A0, MEMORY[0x277D68F38]);
    v147 = v228;
    sub_220886F1C();

    (*(v227 + 8))(v144, v147);
    __swift_project_boxed_opaque_existential_1((v143 + 256), *(v143 + 280));
    v148 = v229;
    sub_2208863EC();
    v149 = sub_2208869AC();
    v150 = v243;
    v151 = MEMORY[0x277D68560];
    if ((v149 & 1) == 0)
    {
      v151 = MEMORY[0x277D68558];
    }

    v152 = v230;
    v153 = v244;
    (*(v243 + 104))(v230, *v151, v244);
    (*(v150 + 16))(v240, v152, v153);
    v154 = v231;
    sub_22088942C();
    (*(v150 + 8))(v152, v153);
    (*(v241 + 8))(v148, v242);
    v155 = swift_allocObject();
    *(v155 + 16) = v277;
    v274(v155 + v107, v131, v146);
    sub_220454908(&qword_2812984F0, MEMORY[0x277D68550]);
    v156 = v246;
    sub_220886F1C();

    (*(v245 + 8))(v154, v156);
    v157 = OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_feedDismissingManager;
    v158 = sub_22088691C();
    if (v159)
    {
      v160 = v158;
      v161 = v159;
      __swift_project_boxed_opaque_existential_1((v266 + v157), *(v266 + v157 + 24));
      v162 = sub_22088FDBC();
      sub_22056F244(v160, v161, v162);

      v163 = v233;
      sub_22088823C();
      v164 = v254;
      v165 = swift_allocObject();
      *(v165 + 16) = v277;
      v274(v165 + v164, v273, v146);
      sub_220454908(&unk_27CF5A280, MEMORY[0x277D2DAD8]);
      v166 = v235;
      sub_220886F1C();

      (*(v234 + 8))(v163, v166);
    }

    sub_22052EC94();
    *&v277 = *(v167 + 48);
    sub_220889D5C();
    v168 = v247;
    sub_22088BC1C();
    sub_220454908(&qword_281298338, MEMORY[0x277D68C90]);
    sub_220886ECC();
    v169 = *(v248 + 8);
    v170 = v210;
    v169(v168, v210);
    sub_22088BBFC();
    sub_220886EDC();
    swift_unknownObjectRelease();

    v169(v168, v170);
    v171 = sub_220885CDC();
    return (*(*(v171 - 8) + 8))(&v257[v277], v171);
  }

  v172 = v266;
  if (v113 != *MEMORY[0x277D69840])
  {
LABEL_30:
    result = sub_2208928AC();
    __break(1u);
    return result;
  }

  (*(v256 + 96))(v111, v112);
  v173 = *v111;
  swift_getObjectType();
  v174 = v223;
  v270 = v173;
  sub_2206F6C58();
  v175 = swift_allocObject();
  *(v175 + 16) = v277;
  v176 = v106;
  v177 = v274;
  v274(v175 + v107, v273, v106);
  sub_220454908(&qword_27CF58950, MEMORY[0x277D688C8]);
  v178 = v225;
  sub_220886F1C();

  (*(v224 + 8))(v174, v178);
  __swift_project_boxed_opaque_existential_1((v172 + 256), *(v172 + 280));
  v179 = v220;
  sub_2208863EC();
  v180 = sub_2208869AC();
  v181 = v243;
  v182 = MEMORY[0x277D68560];
  if ((v180 & 1) == 0)
  {
    v182 = MEMORY[0x277D68558];
  }

  v183 = v222;
  v184 = v244;
  (*(v243 + 104))(v222, *v182, v244);
  (*(v181 + 16))(v240, v183, v184);
  v185 = v221;
  sub_22088942C();
  (*(v181 + 8))(v183, v184);
  (*(v241 + 8))(v179, v242);
  v186 = swift_allocObject();
  *(v186 + 16) = v277;
  v187 = v176;
  v177(v186 + v107, v273, v176);
  sub_220454908(&qword_2812984F0, MEMORY[0x277D68550]);
  v188 = v266;
  v189 = v246;
  sub_220886F1C();

  (*(v245 + 8))(v185, v189);
  v190 = OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_feedDismissingManager;
  v191 = sub_22088691C();
  if (v192)
  {
    v193 = v191;
    v194 = v192;
    __swift_project_boxed_opaque_existential_1((v188 + v190), *(v188 + v190 + 24));
    v195 = sub_22088FDBC();
    sub_22056F244(v193, v194, v195);

    v196 = v233;
    sub_22088823C();
    v197 = v254;
    v198 = swift_allocObject();
    *(v198 + 16) = v277;
    v274(v198 + v197, v273, v187);
    sub_220454908(&unk_27CF5A280, MEMORY[0x277D2DAD8]);
    v199 = v235;
    sub_220886F1C();

    (*(v234 + 8))(v196, v199);
  }

  sub_220889E4C();
  v200 = v247;
  sub_22088BC1C();
  sub_220454908(&unk_27CF593B0, MEMORY[0x277D68D80]);
  sub_220886ECC();
  v201 = *(v248 + 8);
  v202 = v210;
  v201(v200, v210);
  sub_22088BBFC();
  sub_220886EDC();

  swift_unknownObjectRelease();
  return (v201)(v200, v202);
}

uint64_t sub_220743B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = a4;
  v129 = a3;
  v126 = a1;
  v4 = sub_22088516C();
  v104 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v103 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22088824C();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v7);
  v93 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2208894EC();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v9);
  v99 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_2208899AC();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v11);
  v96 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22088971C();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v13);
  v105 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D0618(0, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v92 - v17;
  sub_2204FA2D0();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207417F4(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D97C();
  v130 = v29;
  v128 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v30);
  v123 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v92 - v34;
  sub_2204F1480();
  v116 = v36;
  v127 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v37);
  v122 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v92 - v41;
  v109 = sub_22088A0DC();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v43);
  v45 = &v92 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v115 = result;
  if (!result)
  {
    return result;
  }

  v92 = v4;
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v48 = v47;
  sub_22088BC0C();
  v114 = v48;
  sub_22088BBEC();
  v49 = sub_22088D5BC();
  (*(*(v49 - 8) + 56))(v28, 1, 1, v49);
  sub_22088AD4C();
  sub_22088E76C();

  result = (*(v21 + 48))(v18, 1, v20);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  (*(v21 + 32))(v24, v18, v20);
  sub_22073BB24(v24, v28);
  (*(v21 + 8))(v24, v20);
  sub_220503BCC(v28, sub_2207417F4);
  v50 = *(v128 + 8);
  v128 += 8;
  v113 = v50;
  v50(v35, v130);
  v51 = *(v127 + 8);
  v52 = v116;
  v127 += 8;
  v112 = v51;
  v51(v42, v116);
  sub_2204D0618(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v54 = v53;
  v55 = sub_220886F8C();
  v56 = *(v55 - 8);
  v57 = *(v56 + 80);
  v58 = (v57 + 32) & ~v57;
  v117 = *(v56 + 72);
  v118 = v54;
  v125 = v57;
  v59 = swift_allocObject();
  v124 = xmmword_220899360;
  *(v59 + 16) = xmmword_220899360;
  v60 = *MEMORY[0x277CEAD18];
  v61 = *MEMORY[0x277CEAD18];
  v120 = *(v56 + 104);
  v121 = v56 + 104;
  v120(v59 + v58, v61, v55);
  sub_220454908(&unk_281298290, MEMORY[0x277D68FD8]);
  v119 = "feedDismissingManager";
  v62 = v109;
  sub_220886F1C();

  (*(v108 + 8))(v45, v62);
  sub_22088BC0C();
  sub_22088BBEC();
  sub_220454908(&qword_281293340, type metadata accessor for ForYouFeedModel);
  result = sub_22088E7FC();
  v63 = v130;
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v64 = v105;
  sub_22088970C();
  v113(v123, v63);
  v112(v122, v52);
  v65 = swift_allocObject();
  *(v65 + 16) = v124;
  v110 = v60;
  v111 = v55;
  (v120)(v65 + v58);
  sub_220454908(&qword_281298470, MEMORY[0x277D68720]);
  v66 = v107;
  sub_220886F1C();

  (*(v106 + 8))(v64, v66);
  sub_22088BC0C();
  sub_22088BBEC();
  result = sub_22088E80C();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v67 = v96;
  sub_22088999C();
  v113(v123, v130);
  v112(v122, v52);
  v68 = swift_allocObject();
  *(v68 + 16) = v124;
  v69 = v68 + v58;
  v70 = v58;
  v71 = v110;
  v72 = v111;
  v130 = v70;
  v120(v69, v110, v111);
  sub_220454908(&qword_2812983F0, MEMORY[0x277D68928]);
  v73 = v98;
  sub_220886F1C();

  (*(v97 + 8))(v67, v73);
  sub_22089046C();
  sub_22089048C();
  v74 = v99;
  sub_2208894DC();
  v75 = v130;
  v76 = swift_allocObject();
  *(v76 + 16) = v124;
  v77 = v71;
  v78 = v120;
  v120(v76 + v75, v77, v72);
  sub_220454908(&qword_27CF593C0, MEMORY[0x277D685C0]);
  v79 = v101;
  sub_220886F1C();

  (*(v100 + 8))(v74, v79);
  v80 = OBJC_IVAR____TtC8StocksUI17ForYouFeedTracker_feedDismissingManager;
  v81 = sub_22089047C();
  if (v82)
  {
    v83 = v81;
    v84 = v82;
    __swift_project_boxed_opaque_existential_1((v115 + v80), *(v115 + v80 + 24));
    v85 = sub_22088FDBC();
    sub_22056F244(v83, v84, v85);

    v86 = v93;
    sub_22088823C();
    v87 = swift_allocObject();
    *(v87 + 16) = v124;
    v78(v87 + v75, v110, v111);
    sub_220454908(&unk_27CF5A280, MEMORY[0x277D2DAD8]);
    v88 = v95;
    sub_220886F1C();

    (*(v94 + 8))(v86, v88);
  }

  sub_220889C6C();
  v89 = v103;
  sub_22088BC1C();
  sub_220454908(&qword_27CF593C8, MEMORY[0x277D68B90]);
  sub_220886ECC();
  v90 = *(v104 + 8);
  v91 = v92;
  v90(v89, v92);
  sub_22088BBFC();
  sub_220886EDC();

  return (v90)(v89, v91);
}
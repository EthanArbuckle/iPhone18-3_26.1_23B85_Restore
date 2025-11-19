id sub_20BDE79C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionButtonsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActionButtonsCell()
{
  result = qword_27C76F0C0;
  if (!qword_27C76F0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BDE7AE4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BDE7BA4(uint64_t a1)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_20B5F15A8(a1, v9);
    v12 = swift_storeEnumTagMultiPayload();
    *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
    *(&v16 - 4) = 0;
    *(&v16 - 24) = 1;
    *(&v16 - 2) = v9;
    *(&v16 - 1) = v11;
    v14 = [*(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v14)
    {
      v15 = v14;
      sub_20C1331E4();

      sub_20C0C1CDC(v6, sub_20B5E27BC);
      (*(v4 + 8))(v6, v3);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v9);
  }

  return result;
}

uint64_t sub_20BDE7DA4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI17ActionButtonsCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BDE7DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17ActionButtonsCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BDE7E48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17ActionButtonsCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BDE7EAC(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 2)
  {
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);
    v10 = *(v7 + 40);
    v6 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    *(v3 + 24) = a1;
    *(v3 + 32) = v8;
    *(v3 + 40) = v9;
    *(v3 + 48) = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_20BDE8234;
    *(v11 + 24) = v3;
    aBlock[4] = sub_20B5E0E90;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BB4C11C;
    aBlock[3] = &block_descriptor_132;
    v12 = _Block_copy(aBlock);

    v13 = isEscapingClosureAtFileLocation;

    [v6 performWithoutAnimation_];
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  sub_20C13B534();

  v15 = isEscapingClosureAtFileLocation;
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1D4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v18 = 138543618;
    *(v18 + 4) = v15;
    *v19 = v15;
    *(v18 + 12) = 2082;
    aBlock[6] = a1;
    v20 = sub_20B5F66D0();
    v21 = v15;
    v22 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v20);
    v24 = sub_20B51E694(v22, v23, aBlock);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_20B517000, v16, v17, "Attempted to configure %{public}@ with item: %{public}s", v18, 0x16u);
    sub_20B520158(v19, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v19, -1, -1);
    v25 = v26;
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x20F2F6A40](v25, -1, -1);
    MEMORY[0x20F2F6A40](v18, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20BDE828C()
{
  v1 = *(v0 + 8);
  sub_20C13E164();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x20F2F58E0](3);
        sub_20C13CA64();
        return sub_20C13E1B4();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x20F2F58E0](v2);
  return sub_20C13E1B4();
}

uint64_t sub_20BDE831C()
{
  v1 = *(v0 + 8);
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x20F2F58E0](v2);
    case 1:
      v2 = 1;
      return MEMORY[0x20F2F58E0](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x20F2F58E0](v2);
  }

  MEMORY[0x20F2F58E0](3);

  return sub_20C13CA64();
}

uint64_t sub_20BDE83B4()
{
  v1 = *(v0 + 8);
  sub_20C13E164();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x20F2F58E0](3);
        sub_20C13CA64();
        return sub_20C13E1B4();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x20F2F58E0](v2);
  return sub_20C13E1B4();
}

uint64_t sub_20BDE8440(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return sub_20C13DFF4();
}

unint64_t sub_20BDE84BC()
{
  result = qword_27C76F0D0;
  if (!qword_27C76F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76F0D0);
  }

  return result;
}

void sub_20BDE8510(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C132BF4();
  if (!v5)
  {
    return;
  }

  if (v4 == 0x6C6C6F726373 && v5 == 0xE600000000000000)
  {
    v6 = 0;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    if (sub_20C13DFF4())
    {
      v6 = 0;
    }

    else
    {
      if (v7 != 0x7366657270 || v8 != 0xE500000000000000)
      {
        v10 = sub_20C13DFF4();

        if (v10)
        {
          v6 = 1;
        }

        else
        {
          v11 = [objc_opt_self() sharedApplication];
          v12 = sub_20C132B64();
          v13 = [v11 canOpenURL_];

          if (v13)
          {
            v6 = 2;
          }

          else
          {
            sub_20C1380F4();
            if ((sub_20C1380B4() & 1) == 0)
            {
              return;
            }

            v6 = 3;
          }
        }

        goto LABEL_11;
      }

      v6 = 1;
    }
  }

LABEL_11:
  v9 = *(v2 + OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_actionHandler);
  if (v9)
  {

    v9(v6, a1);

    sub_20B583ECC(v9);
  }
}

id sub_20BDE86F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingControllerHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MarketingControllerHandler()
{
  result = qword_27C76F118;
  if (!qword_27C76F118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BDE883C()
{
  result = sub_20C1333A4();
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

void sub_20BDE88F8(void *a1, void *a2)
{
  v4 = sub_20C132C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v44 - v8;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 originalRequest];
  v15 = [a2 selectedActionIdentifier];
  if (!v15)
  {
    sub_20C13C954();
    v15 = sub_20C13C914();
  }

  v52 = [v14 locateActionWithIdentifier_];

  if (v52)
  {
    v47 = v5;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v48 = a1;
      sub_20C13B424();
      v18 = a2;
      v19 = sub_20C13BB74();
      v20 = sub_20C13D1F4();

      if (os_log_type_enabled(v19, v20))
      {
        v45 = v20;
        v46 = v4;
        v21 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v55 = v44;
        *v21 = 136315138;
        v22 = [v18 originalRequest];
        v23 = [v22 identifier];

        if (v23)
        {
          v24 = sub_20C13C954();
          v26 = v25;
        }

        else
        {
          v24 = 0;
          v26 = 0;
        }

        v53 = v24;
        v54 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
        v28 = sub_20C13D8F4();
        v30 = v29;

        v31 = sub_20B51E694(v28, v30, &v55);

        *(v21 + 4) = v31;
        _os_log_impl(&dword_20B517000, v19, v45, "[UM] Action received for engagement message deactivating content: %s", v21, 0xCu);
        v32 = v44;
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x20F2F6A40](v32, -1, -1);
        MEMORY[0x20F2F6A40](v21, -1, -1);

        (*(v10 + 8))(v13, v9);
        v4 = v46;
      }

      else
      {

        (*(v10 + 8))(v13, v9);
      }

      v33 = *(v51 + OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_marketingHostedContentCoordinator);

      v34 = sub_20BDE8FF0(v17, v33);
      if (v35)
      {
        v36 = v34;
        v37 = v35;
        v38 = sub_20C13CDF4();
        v39 = v50;
        (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
        v40 = swift_allocObject();
        v40[2] = 0;
        v40[3] = 0;
        v40[4] = v33;
        v40[5] = v36;
        v40[6] = v37;

        sub_20B6383D0(0, 0, v39, &unk_20C15DE40, v40);
      }

      sub_20BDE90E8(v17, v52);
      if ([v52 style] == 2 || (v41 = objc_msgSend(v52, sel_deepLink)) == 0)
      {
      }

      else
      {
        v42 = v49;
        v43 = v41;
        sub_20C132B94();

        sub_20BDE8510(v42);
        (*(v47 + 8))(v42, v4);
      }
    }

    else
    {
      v27 = v52;
    }
  }
}

uint64_t sub_20BDE8FF0(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = 0;
  v6 = *(a2 + 120);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v5;
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v11 << 6);
    if (*(*(v6 + 56) + 16 * v13) == a1)
    {
      v14 = *(*(v6 + 48) + 16 * v13);

      return v14;
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      return 0;
    }

    v9 = *(v6 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BDE90E8(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v4 = sub_20C1391E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v72 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C134C44();
  MEMORY[0x28223BE20](v7 - 8);
  v71 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v11 - 8);
  v69 = v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  MEMORY[0x28223BE20](v15 - 8);
  v66 = v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = v54 - v18;
  v19 = sub_20C135D24();
  v57 = *(v19 - 8);
  v58 = v19;
  MEMORY[0x28223BE20](v19);
  v59 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_20C134F74();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v64 = v54 - v23;
  v73 = sub_20C133654();
  v62 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v25 = v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C132E94();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_20BDE8FF0(a1, *(v2 + OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_marketingHostedContentCoordinator));
  if (v31)
  {
    v32 = result;
    v33 = v31;
    v55 = v4;
    v56 = v5;
    v34 = v2;
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_impressionConsumer), *(v2 + OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_impressionConsumer + 24));
    sub_20C132E64();
    v54[1] = v2;
    v35 = sub_20C139214();
    (*(v27 + 8))(v29, v26);
    v36 = v25;
    sub_20B6A7E58(v32, v33, v35, v25);

    v37 = OBJC_IVAR____TtC9SeymourUI26MarketingControllerHandler_metricPage;
    v38 = v62;
    v39 = v59;
    (*(v62 + 16))(v59, v25, v73);
    (*(v57 + 104))(v39, *MEMORY[0x277D52120], v58);
    v40 = sub_20C1333A4();
    v41 = *(v40 - 8);
    v42 = v63;
    (*(v41 + 16))(v63, v34 + v37, v40);
    (*(v41 + 56))(v42, 0, 1, v40);
    v43 = sub_20C135664();
    (*(*(v43 - 8) + 56))(v66, 1, 1, v43);
    v44 = sub_20C135674();
    (*(*(v44 - 8) + 56))(v68, 1, 1, v44);
    v45 = v69;
    sub_20C134F94();
    v46 = sub_20C134FB4();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
    (*(*(v47 - 8) + 56))(v70, 1, 1, v47);
    v48 = sub_20C135F14();
    (*(*(v48 - 8) + 56))(v71, 1, 1, v48);
    v49 = v64;
    sub_20C134F54();
    swift_getObjectType();
    v50 = v65;
    v51 = v67;
    (*(v65 + 16))(v61, v49, v67);
    v52 = v72;
    sub_20C1391F4();
    sub_20B877A50();
    v53 = v55;
    sub_20C13A764();
    (*(v56 + 8))(v52, v53);
    (*(v50 + 8))(v49, v51);
    return (*(v38 + 8))(v36, v73);
  }

  return result;
}

uint64_t sub_20BDE9978(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0xE900000000000029;
  }

  sub_20C13B424();

  v10 = sub_20C13BB74();
  v11 = sub_20C13D1B4();

  if (os_log_type_enabled(v10, v11))
  {
    if (a3)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0x74657320746F6E28;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315394;
    v15 = sub_20B51E694(v12, v9, &v21);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v16 = sub_20C13C764();
    v18 = sub_20B51E694(v16, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_20B517000, v10, v11, "[UM] Received metrics impression from delegate, but will be reported through click stream impression: topic:%s -> fields:%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v14, -1, -1);
    MEMORY[0x20F2F6A40](v13, -1, -1);
  }

  else
  {
  }

  return (*(v6 + 8))(v8, v5);
}

char *sub_20BDE9BE0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI13MarketingView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC9SeymourUI13MarketingView_isLoading] = 0;
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI13MarketingView_onElementAppearance];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI13MarketingView_onElementDisappearance];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI13MarketingView_onVisibleBoundsChange];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI13MarketingView_onImpressionableBoundsChange];
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI13MarketingView_backgroundImageView;
  v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v13] = v14;
  v15 = &v4[OBJC_IVAR____TtC9SeymourUI13MarketingView_layout];
  *v15 = xmmword_20C1615A0;
  *(v15 + 1) = xmmword_20C17E2E0;
  *(v15 + 2) = xmmword_20C169050;
  *(v15 + 3) = xmmword_20C17E2E0;
  *(v15 + 4) = xmmword_20C17E2F0;
  *(v15 + 5) = xmmword_20C17E300;
  __asm { FMOV            V0.2D, #24.0 }

  *(v15 + 6) = _Q0;
  *(v15 + 14) = 0x4020000000000000;
  v21 = OBJC_IVAR____TtC9SeymourUI13MarketingView_logoImageView;
  v22 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v21] = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI13MarketingView_stackView;
  v24 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v23] = v24;
  v25 = OBJC_IVAR____TtC9SeymourUI13MarketingView_titleLabel;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAdjustsFontForContentSizeCategory_];
  *&v4[v25] = v26;
  v27 = OBJC_IVAR____TtC9SeymourUI13MarketingView_subtitleLabel;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setAdjustsFontForContentSizeCategory_];
  *&v4[v27] = v28;
  v29 = OBJC_IVAR____TtC9SeymourUI13MarketingView_supportingTextLabel;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  [v30 setAdjustsFontForContentSizeCategory_];
  *&v4[v29] = v30;
  v31 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemSubtitles;
  v32 = MEMORY[0x277D84F90];
  *&v4[v31] = sub_20B6B2248(MEMORY[0x277D84F90]);
  v33 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemTitles;
  *&v4[v33] = sub_20B6B2248(v32);
  *&v4[OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemButtons] = v32;
  *&v4[OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemViews] = v32;
  v34 = OBJC_IVAR____TtC9SeymourUI13MarketingView_offer;
  v35 = sub_20C138894();
  v36 = *(*(v35 - 8) + 56);
  v36(&v4[v34], 1, 1, v35);
  v36(&v4[OBJC_IVAR____TtC9SeymourUI13MarketingView_pendingOffer], 1, 1, v35);
  *&v4[OBJC_IVAR____TtC9SeymourUI13MarketingView_lastTappedActionItemButton] = 0;
  v113.receiver = v4;
  v113.super_class = type metadata accessor for MarketingView();
  v37 = objc_msgSendSuper2(&v113, sel_initWithFrame_, a1, a2, a3, a4);
  v38 = *MEMORY[0x277D76818];
  v39 = v37;
  [v39 setMaximumContentSizeCategory_];
  v111 = objc_opt_self();
  v40 = [v111 systemBackgroundColor];
  [v39 setBackgroundColor_];

  v41 = OBJC_IVAR____TtC9SeymourUI13MarketingView_backgroundImageView;
  [v39 addSubview_];
  [*&v39[v41] setClipsToBounds_];
  v110 = v41;
  [*&v39[v41] setContentMode_];
  v42 = OBJC_IVAR____TtC9SeymourUI13MarketingView_stackView;
  [*&v39[OBJC_IVAR____TtC9SeymourUI13MarketingView_stackView] setAxis_];
  v43 = *&v39[v42];
  if (sub_20C1380F4() == 1)
  {
    v44 = 3;
  }

  else
  {
    v44 = 0;
  }

  [v43 setAlignment_];

  [v39 addSubview_];
  v45 = OBJC_IVAR____TtC9SeymourUI13MarketingView_logoImageView;
  v46 = *&v39[OBJC_IVAR____TtC9SeymourUI13MarketingView_logoImageView];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = objc_opt_self();
  v49 = v46;
  v50 = [v48 bundleForClass_];
  v51 = sub_20C13C914();
  v52 = [objc_opt_self() imageNamed:v51 inBundle:v50 withConfiguration:0];

  [v49 setImage_];
  [*&v39[v45] setContentMode_];
  [*&v39[v42] addArrangedSubview_];
  v53 = &v39[OBJC_IVAR____TtC9SeymourUI13MarketingView_layout];
  [*&v39[v42] setCustomSpacing:*&v39[v45] afterView:*&v39[OBJC_IVAR____TtC9SeymourUI13MarketingView_layout + 64]];
  v54 = OBJC_IVAR____TtC9SeymourUI13MarketingView_titleLabel;
  [*&v39[OBJC_IVAR____TtC9SeymourUI13MarketingView_titleLabel] setNumberOfLines_];
  v55 = *&v39[v54];
  v56 = *MEMORY[0x277D769A8];
  v57 = objc_opt_self();
  v58 = v55;
  v59 = [v57 preferredFontDescriptorWithTextStyle:v56 compatibleWithTraitCollection:0];
  v60 = [v59 fontDescriptorWithSymbolicTraits_];
  if (v60)
  {
    v61 = v60;

    v59 = v61;
  }

  v62 = objc_opt_self();
  v63 = [v62 fontWithDescriptor:v59 size:0.0];

  [v58 setFont_];
  [*&v39[v54] setTextAlignment_];
  v64 = *&v39[v54];
  v65 = [v111 whiteColor];
  [v64 setTextColor_];

  [*&v39[v42] addArrangedSubview_];
  [*&v39[v42] setCustomSpacing:*&v39[v54] afterView:v53[11]];
  v66 = OBJC_IVAR____TtC9SeymourUI13MarketingView_subtitleLabel;
  [*&v39[OBJC_IVAR____TtC9SeymourUI13MarketingView_subtitleLabel] setNumberOfLines_];
  v67 = *MEMORY[0x277D76918];
  v68 = *&v39[v66];
  v69 = [v62 preferredFontForTextStyle_];
  [v68 setFont_];

  [*&v39[v66] setTextAlignment_];
  v70 = *&v39[v66];
  v71 = [v111 whiteColor];
  [v70 setTextColor_];

  [*&v39[v42] addArrangedSubview_];
  [*&v39[v42] setCustomSpacing:*&v39[v66] afterView:v53[12]];
  v72 = OBJC_IVAR____TtC9SeymourUI13MarketingView_supportingTextLabel;
  [*&v39[OBJC_IVAR____TtC9SeymourUI13MarketingView_supportingTextLabel] setNumberOfLines_];
  v73 = *MEMORY[0x277D76938];
  v74 = *&v39[v72];
  v75 = [v62 preferredFontForTextStyle_];
  [v74 setFont_];

  [*&v39[v72] setTextAlignment_];
  v76 = *&v39[v72];
  v77 = [v111 whiteColor];
  [v76 setTextColor_];

  [*&v39[v42] addArrangedSubview_];
  [*&v39[v42] setCustomSpacing:*&v39[v72] afterView:v53[14]];
  v112 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_20C14FF90;
  v79 = [*&v39[v110] leadingAnchor];
  v80 = [v39 leadingAnchor];
  v81 = [v79 constraintEqualToAnchor_];

  *(v78 + 32) = v81;
  v82 = [*&v39[v110] trailingAnchor];
  v83 = [v39 trailingAnchor];
  v84 = [v82 constraintEqualToAnchor_];

  *(v78 + 40) = v84;
  v85 = [*&v39[v110] topAnchor];
  v86 = [v39 &selRef_setLineBreakMode_];
  v87 = [v85 constraintEqualToAnchor_];

  *(v78 + 48) = v87;
  v88 = [*&v39[v110] bottomAnchor];
  v89 = [v39 bottomAnchor];
  v90 = [v88 constraintEqualToAnchor_];

  *(v78 + 56) = v90;
  v91 = [*&v39[v42] leadingAnchor];
  v92 = [v39 leadingAnchor];
  v93 = [v91 constraintGreaterThanOrEqualToAnchor:v92 constant:v53[5]];

  *(v78 + 64) = v93;
  v94 = [*&v39[v42] trailingAnchor];
  v95 = [v39 trailingAnchor];
  v96 = [v94 constraintLessThanOrEqualToAnchor:v95 constant:-v53[7]];

  *(v78 + 72) = v96;
  v97 = [*&v39[v42] centerXAnchor];
  v98 = [v39 centerXAnchor];
  v99 = [v97 constraintEqualToAnchor_];

  *(v78 + 80) = v99;
  v100 = [*&v39[v42] topAnchor];
  v101 = [v39 topAnchor];
  v102 = [v100 constraintGreaterThanOrEqualToAnchor:v101 constant:v53[4]];

  *(v78 + 88) = v102;
  v103 = [*&v39[v42] bottomAnchor];
  v104 = [v39 bottomAnchor];

  v105 = [v103 constraintEqualToAnchor:v104 constant:-v53[6]];
  *(v78 + 96) = v105;
  v106 = [*&v39[v42] widthAnchor];
  v107 = [v106 constraintLessThanOrEqualToConstant_];

  *(v78 + 104) = v107;
  sub_20B51C88C(0, &qword_281100500);
  v108 = sub_20C13CC54();

  [v112 activateConstraints_];

  return v39;
}

id sub_20BDEA930()
{
  v1 = v0;
  v2 = type metadata accessor for MetricImpressionElement();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_20C138894();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MarketingView();
  v27.receiver = v0;
  v27.super_class = v13;
  objc_msgSendSuper2(&v27, sel_layoutSubviews);
  v14 = *&v0[OBJC_IVAR____TtC9SeymourUI13MarketingView_onVisibleBoundsChange];
  if (v14)
  {

    v14([v0 bounds]);
    sub_20B583ECC(v14);
  }

  v15 = *&v0[OBJC_IVAR____TtC9SeymourUI13MarketingView_onImpressionableBoundsChange];
  if (v15)
  {

    v15([v0 bounds]);
    sub_20B583ECC(v15);
  }

  result = [v0 bounds];
  if (v18 != 0.0 || v17 != 0.0)
  {
    v19 = OBJC_IVAR____TtC9SeymourUI13MarketingView_pendingOffer;
    swift_beginAccess();
    sub_20B8A9230(&v1[v19], v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_20B520158(v8, &unk_27C768660);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_20BDED0B0(v12);
      (*(v10 + 8))(v12, v9);
    }

    v20 = sub_20BDEACBC();
    v21 = v20[2];
    if (v21)
    {
      v22 = &v1[OBJC_IVAR____TtC9SeymourUI13MarketingView_onElementAppearance];
      v23 = v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v24 = *(v3 + 72);
      do
      {
        sub_20B853BA0(v23, v5);
        v25 = *v22;
        if (*v22)
        {

          v25(v5);
          sub_20B583ECC(v25);
        }

        sub_20BDEF358(v5, type metadata accessor for MetricImpressionElement);
        v23 += v24;
        --v21;
      }

      while (v21);
    }
  }

  return result;
}

void *sub_20BDEACBC()
{
  v1 = v0;
  v78 = sub_20C1388B4();
  v87 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v77 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F280);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v70 - v6);
  v76 = type metadata accessor for MetricImpressionElement();
  v84 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v94 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v70 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767C68);
  MEMORY[0x28223BE20](v95);
  v12 = (&v70 - v11);
  v97 = sub_20C136E94();
  v13 = *(v97 - 1);
  MEMORY[0x28223BE20](v97);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v70 - v17;
  v19 = sub_20C138894();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC9SeymourUI13MarketingView_offer;
  swift_beginAccess();
  sub_20B8A9230(&v1[v23], v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_20B520158(v18, &unk_27C768660);
    return MEMORY[0x277D84F90];
  }

  v92 = v20;
  (*(v20 + 32))(v22, v18, v19);
  sub_20C138814();
  sub_20C136DF4();
  v82 = MetricClickMarketingFields.impressionDictionary()();
  (*(v13 + 8))(v15, v97);
  v91 = v22;
  v93 = sub_20C138824();
  v25 = *(v93 + 16);
  v96 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemButtons;
  swift_beginAccess();
  v90 = v25;
  if (!v25)
  {
    v97 = MEMORY[0x277D84F90];
    v31 = v91;
    v30 = v92;
LABEL_30:

    (*(v30 + 8))(v31, v19);
    return v97;
  }

  v26 = 0;
  v88 = (v84 + 56);
  v81 = (v87 + 11);
  v80 = *MEMORY[0x277D540C8];
  v74 = *MEMORY[0x277D540D0];
  v73 = (v87 + 12);
  v72 = (v87 + 1);
  v97 = MEMORY[0x277D84F90];
  v87 = (v84 + 48);
  v79 = *MEMORY[0x277D51750];
  v27 = v78;
  v28 = v77;
  v29 = v76;
  v31 = v91;
  v30 = v92;
  v32 = v93;
  v89 = v19;
  v71 = v12;
  while (v26 < *(v32 + 16))
  {
    v33 = v32;
    v34 = sub_20C138B94();
    v35 = *(v34 - 8);
    v36 = *(v35 + 16);
    v37 = v33 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v26;
    v38 = *(v95 + 48);
    *v12 = v26;
    v36(v12 + v38, v37, v34);
    v39 = *&v1[v96];
    if (v39 >> 62)
    {
      if (v26 >= sub_20C13DB34())
      {
LABEL_21:
        (*v88)(v7, 1, 1, v29);
        goto LABEL_22;
      }
    }

    else if (v26 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v40 = *&v1[v96];
    if ((v40 & 0xC000000000000001) != 0)
    {

      v41 = MEMORY[0x20F2F5430](v26, v40);
    }

    else
    {
      if (v26 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v41 = *(v40 + 8 * v26 + 32);
    }

    [v41 frame];
    [v1 convertRect:v41 fromCoordinateSpace:?];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v86 = sub_20C138B64();
    v85 = v50;
    sub_20C138B74();
    v51 = (*v81)(v28, v27);
    if (v51 == v80)
    {
      v52 = v1;
      v53 = *v72;
      (*v72)(v28, v27);
      v54 = v75;
      sub_20C138B74();
      v55 = sub_20C1388A4();
      v57 = v56;
      v53(v54, v27);

      if (!v57)
      {
        v55 = 0;
        v57 = 0xE000000000000000;
      }

      v1 = v52;
      v27 = v78;
      v28 = v77;
      v29 = v76;
      v12 = v71;
    }

    else
    {
      if (v51 != v74)
      {
        goto LABEL_33;
      }

      (*v73)(v28, v27);
      v55 = sub_20C134994();
      v57 = v58;

      v59 = sub_20C132C14();
      (*(*(v59 - 8) + 8))(v28, v59);
    }

    v60 = v29[7];
    v61 = sub_20C1352E4();
    (*(*(v61 - 8) + 104))(v7 + v60, v79, v61);
    *v7 = v55;
    v7[1] = v57;
    v62 = v86;
    v7[2] = v26;
    v7[3] = v62;
    v7[4] = v85;
    v63 = (v7 + v29[8]);
    *v63 = v43;
    v63[1] = v45;
    v63[2] = v47;
    v63[3] = v49;
    *(v7 + v29[9]) = v82;
    (*v88)(v7, 0, 1, v29);

    v31 = v91;
    v30 = v92;
LABEL_22:
    sub_20B520158(v12, &qword_27C767C68);
    v64 = (*v87)(v7, 1, v29) == 1;
    v19 = v89;
    if (v64)
    {
      sub_20B520158(v7, &qword_27C76F280);
    }

    else
    {
      v65 = v83;
      sub_20B853C64(v7, v83);
      sub_20B853C64(v65, v94);
      v66 = v97;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_20BC05CB0(0, v66[2] + 1, 1, v66);
      }

      v68 = v66[2];
      v67 = v66[3];
      v97 = v66;
      if (v68 >= v67 >> 1)
      {
        v97 = sub_20BC05CB0(v67 > 1, v68 + 1, 1, v97);
      }

      v69 = v97;
      v97[2] = v68 + 1;
      sub_20B853C64(v94, v69 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v68);
      v31 = v91;
      v30 = v92;
    }

    ++v26;
    v32 = v93;
    if (v90 == v26)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_20C13DFE4();
  __break(1u);
  return result;
}

uint64_t sub_20BDEB73C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = sub_20C138894();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9SeymourUI13MarketingView_offer;
  swift_beginAccess();
  sub_20B8A9230(v2 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &unk_27C768660);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = MEMORY[0x20F2EFFB0](a1, v13);
    result = (*(v11 + 8))(v13, v10);
    if (v15)
    {
      return result;
    }
  }

  sub_20BDECDFC();
  (*(v11 + 16))(v6, a1, v10);
  v17 = 1;
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_20B8A944C(v6, v2 + v14);
  swift_endAccess();
  sub_20BDED0B0(a1);
  v18 = *(v2 + OBJC_IVAR____TtC9SeymourUI13MarketingView_titleLabel);
  v19 = sub_20C138864();
  if (v20)
  {
    v37 = v19;
    v38 = v20;
    sub_20B5F6EB0();
    v17 = sub_20C13DA54();
  }

  [v18 setHidden_];
  sub_20C138864();
  if (v21)
  {
    v22 = sub_20C13C914();
  }

  else
  {
    v22 = 0;
  }

  [v18 setText_];

  v23 = *(v2 + OBJC_IVAR____TtC9SeymourUI13MarketingView_subtitleLabel);
  v24 = sub_20C138884();
  if (v25)
  {
    v37 = v24;
    v38 = v25;
    sub_20B5F6EB0();
    v26 = sub_20C13DA54();
  }

  else
  {
    v26 = 1;
  }

  [v23 setHidden_];
  sub_20C138884();
  if (v27)
  {
    v28 = sub_20C13C914();
  }

  else
  {
    v28 = 0;
  }

  [v23 setText_];

  v29 = sub_20C138834();
  v31 = *(v2 + OBJC_IVAR____TtC9SeymourUI13MarketingView_supportingTextLabel);
  if (v30)
  {
    v37 = v29;
    v38 = v30;
    sub_20B5F6EB0();
    [v31 setHidden_];
    v32 = sub_20C13C914();
  }

  else
  {
    [*(v2 + OBJC_IVAR____TtC9SeymourUI13MarketingView_supportingTextLabel) setHidden_];
    v32 = 0;
  }

  [v31 setText_];

  v33 = *(v2 + OBJC_IVAR____TtC9SeymourUI13MarketingView_stackView);
  v34 = v2 + OBJC_IVAR____TtC9SeymourUI13MarketingView_layout;
  [v33 setCustomSpacing:v18 afterView:*(v2 + OBJC_IVAR____TtC9SeymourUI13MarketingView_layout + 88)];
  [v33 setCustomSpacing:v23 afterView:*(v34 + 96)];
  if (([v31 isHidden] & 1) == 0)
  {
    if ([v23 isHidden])
    {
      v35 = v18;
    }

    else
    {
      v35 = v23;
    }

    [v33 setCustomSpacing:v35 afterView:*(v34 + 104)];
  }

  v36 = sub_20C138824();
  sub_20BDEBC00(v36);
}

uint64_t sub_20BDEBC00(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MetricImpressionElement();
  v99 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v100 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_20C139634();
  v6 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v111 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v110 = &v98 - v9;
  MEMORY[0x28223BE20](v10);
  v123 = &v98 - v11;
  v125 = sub_20C139044();
  v12 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v109 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v122 = &v98 - v15;
  v16 = sub_20C138B94();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767C68);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v114 = (&v98 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F288);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v136 = &v98 - v27;
  v116 = a1;
  v28 = *(a1 + 16);
  v29 = 0;
  v133 = OBJC_IVAR____TtC9SeymourUI13MarketingView_stackView;
  v141 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemViews;
  v113 = v17 + 16;
  v135 = (v21 + 56);
  v132 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemButtons;
  v134 = (v21 + 48);
  v131 = (v17 + 32);
  v119 = (v12 + 8);
  v118 = (v6 + 88);
  v115 = v17;
  v30 = (v17 + 8);
  v31 = v28;
  v129 = v30;
  v139 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemTitles;
  v107 = (v6 + 104);
  v106 = (v6 + 8);
  v102 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemSubtitles;
  v103 = v2 + OBJC_IVAR____TtC9SeymourUI13MarketingView_layout + 24;
  v140 = (v2 + OBJC_IVAR____TtC9SeymourUI13MarketingView_layout);
  v104 = v2 + OBJC_IVAR____TtC9SeymourUI13MarketingView_layout + 8;
  v117 = *MEMORY[0x277D54440];
  v105 = *MEMORY[0x277D54430];
  v101 = *MEMORY[0x277D54438];
  v112 = xmmword_20C14F580;
  v130 = v16;
  v108 = v19;
  v121 = v20;
  v120 = v25;
  v137 = v28;
  while (1)
  {
    if (v29 == v31)
    {
      v33 = 1;
      v29 = v31;
      v34 = v136;
      v35 = v141;
    }

    else
    {
      if (v29 >= v31)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        result = sub_20C13DFE4();
        __break(1u);
        return result;
      }

      v35 = v141;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_38;
      }

      v36 = v115;
      v37 = v116 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29;
      v38 = *(v20 + 48);
      v39 = v114;
      *v114 = v29;
      (*(v36 + 16))(v39 + v38, v37, v16);
      sub_20B5DF134(v39, v25, &qword_27C767C68);
      v33 = 0;
      ++v29;
      v34 = v136;
    }

    (*v135)(v25, v33, 1, v20);
    sub_20B5DF134(v25, v34, &qword_27C76F288);
    if ((*v134)(v34, 1, v20) == 1)
    {
      break;
    }

    v40 = *v34;
    (*v131)(v19, &v34[*(v20 + 48)], v16);
    v41 = sub_20BDEE12C();
    [v41 setTag_];
    [v41 addTarget:v2 action:sel_actionItemButtonTapped_ forControlEvents:64];
    v142 = *(v2 + v133);
    [v142 addArrangedSubview_];
    swift_beginAccess();
    v42 = v41;
    MEMORY[0x20F2F43B0]();
    if (*((*(v2 + v35) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v35) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    v43 = v25;
    sub_20C13CCE4();
    swift_endAccess();
    v44 = v132;
    v45 = swift_beginAccess();
    MEMORY[0x20F2F43B0](v45);
    if (*((*(v2 + v44) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v44) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    swift_endAccess();
    v46 = sub_20C138B64();
    v48 = v47;
    v49 = v139;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v144 = *(v2 + v49);
    *(v2 + v49) = 0x8000000000000000;
    sub_20B91D110(v46, v48, v42, isUniquelyReferenced_nonNull_native);

    *(v2 + v49) = v144;
    swift_endAccess();
    if (sub_20C1380F4() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v51 = swift_allocObject();
      *(v51 + 16) = v112;
      v52 = [v42 widthAnchor];
      v53 = [v52 constraintEqualToConstant_];

      *(v51 + 32) = v53;
    }

    v143 = v42;
    v54 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);
    v55 = sub_20C13CC54();

    [v54 activateConstraints_];

    v56 = sub_20C138B84();
    v58 = v19;
    if (!v57)
    {
      v25 = v43;
      v32 = v143;

      [v142 setCustomSpacing:v32 afterView:v140[2]];
      v31 = v137;
      v16 = v130;
      goto LABEL_3;
    }

    v59 = v56;
    v60 = v57;
    v138 = v29;
    v61 = v122;
    sub_20C138B54();
    v62 = v123;
    sub_20C139034();
    v63 = *v119;
    v64 = v125;
    (*v119)(v61, v125);
    v65 = v62;
    v66 = v124;
    v67 = (*v118)(v65, v124);
    v68 = v117;
    if (v67 != v117)
    {
      v69 = v59;
      v31 = v137;
      if (v67 == v105)
      {
        v70 = v143;
        [v142 setCustomSpacing:v143 afterView:*v140];
        v71 = v102;
        swift_beginAccess();
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v144 = *(v2 + v71);
        *(v2 + v71) = 0x8000000000000000;
        sub_20B91D110(v69, v60, v70, v72);

        *(v2 + v71) = v144;
        swift_endAccess();
        v25 = v120;
        v16 = v130;
        v19 = v58;
        v32 = v70;
        v20 = v121;
        v29 = v138;
        goto LABEL_3;
      }

      v64 = v125;
      v59 = v69;
      if (v67 != v101)
      {
        goto LABEL_40;
      }
    }

    v126 = v59;
    v127 = v60;
    v128 = sub_20BDEF3B8(v59, v60);
    v73 = v109;
    sub_20C138B54();
    v74 = v110;
    sub_20C139034();
    v63(v73, v64);
    v75 = v111;
    (*v107)(v111, v68, v66);
    v76 = sub_20C139624();
    v77 = *v106;
    (*v106)(v75, v66);
    v77(v74, v66);
    if (v76)
    {
      v78 = v142;
      v79 = v128;
      [v142 addArrangedSubview_];
      v80 = v104;
      v81 = v143;
      v82 = v143;
      v83 = v79;
      v19 = v108;
      v20 = v121;
      v25 = v120;
      v31 = v137;
    }

    else
    {
      v79 = v128;
      v78 = v142;
      v84 = [v142 arrangedSubviews];
      sub_20B51C88C(0, &qword_27C762910);
      v85 = sub_20C13CC74();

      v25 = v120;
      v31 = v137;
      if (v85 >> 62)
      {
        v86 = sub_20C13DB34();
      }

      else
      {
        v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = v108;
      v81 = v143;

      v20 = v121;
      if (__OFSUB__(v86, 1))
      {
        goto LABEL_39;
      }

      [v78 insertArrangedSubview:v79 atIndex:v86 - 1];
      v80 = v103;
      v82 = v79;
      v83 = v81;
    }

    [v78 setCustomSpacing:v82 afterView:*v80];
    [v78 setCustomSpacing:v83 afterView:v140[2]];
    v87 = v141;
    swift_beginAccess();
    v32 = v79;
    MEMORY[0x20F2F43B0]();
    if (*((*(v2 + v87) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v87) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
      v31 = v137;
    }

    sub_20C13CCE4();
    swift_endAccess();
    v88 = v139;
    swift_beginAccess();
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v144 = *(v2 + v88);
    *(v2 + v88) = 0x8000000000000000;
    sub_20B91D110(v126, v127, v32, v89);
    *(v2 + v88) = v144;
    swift_endAccess();

    v16 = v130;
    v29 = v138;
LABEL_3:

    (*v129)(v19, v16);
  }

  v90 = sub_20BDEACBC();
  v91 = v90[2];
  if (v91)
  {
    v92 = (v2 + OBJC_IVAR____TtC9SeymourUI13MarketingView_onElementAppearance);
    v93 = v90 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v94 = *(v99 + 72);
    v95 = v100;
    do
    {
      sub_20B853BA0(v93, v95);
      v96 = *v92;
      if (*v92)
      {

        v96(v95);
        sub_20B583ECC(v96);
      }

      sub_20BDEF358(v95, type metadata accessor for MetricImpressionElement);
      v93 += v94;
      --v91;
    }

    while (v91);
  }
}

uint64_t sub_20BDECA9C(void *a1)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI13MarketingView_lastTappedActionItemButton);
  *(v1 + OBJC_IVAR____TtC9SeymourUI13MarketingView_lastTappedActionItemButton) = a1;
  v11 = a1;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = [v11 tag];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = swift_storeEnumTagMultiPayload();
      *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
      *(&v21 - 4) = v14;
      *(&v21 - 24) = 0;
      *(&v21 - 2) = v9;
      *(&v21 - 1) = v16;
      v19 = [*(v16 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
      if (v19)
      {
        v20 = v19;
        sub_20C1331E4();

        sub_20C0C1CDC(v6, sub_20B5E27BC);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v4 + 8))(v6, v3);
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      return sub_20BDEF358(v9, type metadata accessor for ShelfItemAction);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BDECDFC()
{
  v1 = v0;
  v2 = type metadata accessor for MetricImpressionElement();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20BDEACBC();
  v7 = v6[2];
  if (v7)
  {
    v8 = (v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_onElementDisappearance);
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_20B853BA0(v9, v5);
      v11 = *v8;
      if (*v8)
      {

        v11(v5);
        sub_20B583ECC(v11);
      }

      sub_20BDEF358(v5, type metadata accessor for MetricImpressionElement);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  v12 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemViews;
  result = swift_beginAccess();
  v14 = *(v0 + v12);
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_15:
    v19 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemButtons;
    swift_beginAccess();
    v20 = MEMORY[0x277D84F90];
    *(v1 + v19) = MEMORY[0x277D84F90];

    *(v1 + v12) = v20;

    v21 = sub_20B6B2248(v20);
    v22 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemTitles;
    swift_beginAccess();
    *(v1 + v22) = v21;

    v23 = sub_20B6B2248(v20);
    v24 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemSubtitles;
    swift_beginAccess();
    *(v1 + v24) = v23;
  }

  result = sub_20C13DB34();
  v15 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v15 >= 1)
  {

    for (i = 0; i != v15; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x20F2F5430](i, v14);
      }

      else
      {
        v17 = *(v14 + 8 * i + 32);
      }

      v18 = v17;
      [v17 removeFromSuperview];
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BDED0B0(uint64_t a1)
{
  v2 = v1;
  v99 = a1;
  v100 = sub_20C138894();
  v97 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v84 = v3;
  v85 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v86 = v4;
  v87 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v88 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v95 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v92 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = &v79 - v10;
  v90 = v11;
  MEMORY[0x28223BE20](v12);
  v94 = &v79 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v79 - v15;
  v17 = sub_20C139054();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F278);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v79 - v22;
  v24 = sub_20C138954();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v83 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = MEMORY[0x28223BE20](v27).n128_u64[0];
  v96 = &v79 - v29;
  v98 = v2;
  v30 = v2;
  v31 = v99;
  [v30 bounds];
  v34 = v33;
  v35 = v32;
  if (v33 == 0.0 && v32 == 0.0)
  {
    goto LABEL_5;
  }

  v82 = v7;
  (*(v18 + 104))(v20, *MEMORY[0x277D54260], v17);
  sub_20C138874();
  (*(v18 + 8))(v20, v17);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_20B520158(v23, &qword_27C76F278);
LABEL_5:
    v36 = v97;
    v37 = v100;
    (*(v97 + 16))(v16, v31, v100);
    (*(v36 + 56))(v16, 0, 1, v37);
    v38 = OBJC_IVAR____TtC9SeymourUI13MarketingView_pendingOffer;
    v39 = v98;
    swift_beginAccess();
    sub_20B8A944C(v16, v39 + v38);
    return swift_endAccess();
  }

  v41 = *(v25 + 32);
  v42 = v96;
  v41();
  v43 = v97;
  (*(v97 + 56))(v16, 1, 1, v100);
  v44 = OBJC_IVAR____TtC9SeymourUI13MarketingView_pendingOffer;
  v45 = v98;
  swift_beginAccess();
  sub_20B8A944C(v16, v45 + v44);
  swift_endAccess();
  v46 = sub_20C138934();
  [v45 setBackgroundColor_];

  v81 = v25;
  v47 = *(v25 + 16);
  v48 = v83;
  v80 = v24;
  v47(v83, v42, v24);
  v49 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v34;
  *(v50 + 24) = v35;
  (v41)(v50 + v49, v48, v24);
  sub_20B51C88C(0, &qword_27C7626E8);
  v51 = v88;
  sub_20C137C94();
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = v85;
  v54 = v100;
  (*(v43 + 16))(v85, v99, v100);
  v55 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  (*(v43 + 32))(v56 + v55, v53, v54);
  v57 = swift_allocObject();
  *(v57 + 16) = sub_20BDEF0E8;
  *(v57 + 24) = v56;
  v58 = v89;
  v59 = v87;
  v60 = v91;
  (*(v89 + 16))(v87, v51, v91);
  v61 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v62 = (v86 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  (*(v58 + 32))(v63 + v61, v59, v60);
  v64 = (v63 + v62);
  *v64 = sub_20B5F67A4;
  v64[1] = v57;
  v65 = v93;
  sub_20C137C94();
  (*(v58 + 8))(v51, v60);
  v66 = swift_allocObject();
  v66[2] = 0xD00000000000001DLL;
  v66[3] = 0x800000020C1B3A00;
  v66[4] = 279;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_20B5D9EA0;
  *(v67 + 24) = v66;
  v68 = v95;
  v69 = v92;
  v70 = v82;
  (*(v95 + 16))(v92, v65, v82);
  v71 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v72 = (v90 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  (*(v68 + 32))(v73 + v71, v69, v70);
  v74 = (v73 + v72);
  *v74 = sub_20B5D9EC0;
  v74[1] = v67;
  v75 = v94;
  sub_20C137C94();
  v76 = *(v68 + 8);
  v76(v65, v70);
  v77 = sub_20C137CB4();
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  *(v78 + 24) = 0;
  v77(sub_20B52347C, v78);

  v76(v75, v70);
  return (*(v81 + 8))(v96, v80);
}

uint64_t sub_20BDEDAD8(void **a1, uint64_t a2, uint64_t a3)
{
  v25 = sub_20C13C4B4();
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13C4F4();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C138894();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = *a1;
  sub_20B51C88C(0, &qword_281100530);
  v23 = sub_20C13D374();
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  (*(v11 + 32))(v15 + v14, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v15 + ((v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  aBlock[4] = sub_20BDEF280;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_133;
  v16 = _Block_copy(aBlock);

  v17 = v13;
  sub_20C13C4D4();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_20BDEF310(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  v19 = v24;
  v18 = v25;
  sub_20C13DA94();
  v20 = v23;
  MEMORY[0x20F2F4AF0](0, v9, v19, v16);
  _Block_release(v16);

  (*(v28 + 8))(v19, v18);
  (*(v26 + 8))(v9, v27);
}

uint64_t sub_20BDEDE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21[-v6];
  v8 = sub_20C138894();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    return sub_20B520158(v7, &unk_27C768660);
  }

  v13 = OBJC_IVAR____TtC9SeymourUI13MarketingView_offer;
  v14 = Strong;
  swift_beginAccess();
  sub_20B8A9230(v14 + v13, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_20B520158(v7, &unk_27C768660);
  }

  (*(v9 + 32))(v11, v7, v8);
  if (MEMORY[0x20F2EFFB0](v11, a2))
  {
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = *(v15 + OBJC_IVAR____TtC9SeymourUI13MarketingView_backgroundImageView);

      [v17 setImage_];
    }

    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      [v18 setBackgroundColor_];
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_20BDEE12C()
{
  v0 = sub_20C139634();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v26 - v5;
  v7 = sub_20C139044();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  sub_20C138B54();
  v14 = (*(v8 + 88))(v13, v7);
  if (v14 == *MEMORY[0x277D54250])
  {
    (*(v8 + 96))(v13, v7);
    sub_20C138B64();
    v15 = sub_20BDEEC90();

    (*(v1 + 8))(v13, v0);
    return v15;
  }

  if (v14 == *MEMORY[0x277D54258])
  {
    (*(v8 + 96))(v13, v7);
    sub_20C138B54();
    sub_20C139034();
    (*(v8 + 8))(v10, v7);
    (*(v1 + 104))(v3, *MEMORY[0x277D54430], v0);
    v16 = sub_20C139624();
    v17 = *(v1 + 8);
    v17(v3, v0);
    v17(v6, v0);
    if (v16)
    {
      v18 = sub_20C138B84();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v21 = sub_20C138B64();
    v23 = v22;
    type metadata accessor for ActionLoadingButton();
    v15 = [swift_getObjCClassFromMetadata() buttonWithType_];
    v24 = [v26[1] maximumContentSizeCategory];
    [v15 setMaximumContentSizeCategory_];

    v27[0] = v21;
    v27[1] = v23;
    v27[2] = v18;
    v27[3] = v20;
    v27[4] = 0;
    v27[5] = 0;
    sub_20BAC1A24(v27);

    v17(v13, v0);
    return v15;
  }

  result = sub_20C13DFE4();
  __break(1u);
  return result;
}

void sub_20BDEE4D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_lastTappedActionItemButton);
  if (v1 && (v2 = swift_getObjectType(), (v3 = swift_conformsToProtocol2()) != 0))
  {
    v16 = xmmword_20C157520;
    v17 = 0u;
    v18 = 0u;
    v4 = *(v3 + 16);
    v5 = v3;
    v15 = v1;
    v4(&v16, v2, v5);
  }

  else
  {
    v6 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemViews;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if (v7 >> 62)
    {
      v8 = sub_20C13DB34();
      if (!v8)
      {
        return;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        return;
      }
    }

    if (v8 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v8; ++i)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x20F2F5430](i, v7);
        }

        else
        {
          v10 = *(v7 + 8 * i + 32);
        }

        v11 = v10;
        swift_getObjectType();
        v12 = swift_conformsToProtocol2();
        if (v12 && v11)
        {
          v13 = v12;
          ObjectType = swift_getObjectType();
          v16 = xmmword_20C157520;
          v17 = 0u;
          v18 = 0u;
          (*(v13 + 16))(&v16, ObjectType, v13);
        }
      }
    }
  }
}

uint64_t sub_20BDEE6E4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_lastTappedActionItemButton);
  *(v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_lastTappedActionItemButton) = 0;

  v3 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemViews;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    result = sub_20C13DB34();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemTitles;
    v8 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemSubtitles;
    v9 = v5 & 0xC000000000000001;

    v32 = v7;
    swift_beginAccess();
    v31 = v8;
    swift_beginAccess();
    v10 = 0;
    v33 = v1;
    do
    {
      if (v9)
      {
        v11 = MEMORY[0x20F2F5430](v10, v5);
      }

      else
      {
        v11 = *(v5 + 8 * v10 + 32);
      }

      v12 = v11;
      swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13 && v12)
      {
        v14 = v13;
        v15 = v6;
        v16 = *(v1 + v32);
        v17 = *(v16 + 16);
        v18 = v12;
        if (v17)
        {

          v19 = sub_20B65AD10(v18);
          if (v20)
          {
            v21 = (*(v16 + 56) + 16 * v19);
            v23 = *v21;
            v22 = v21[1];
          }

          else
          {
            v23 = 0;
            v22 = 0;
          }
        }

        else
        {
          v23 = 0;
          v22 = 0;
        }

        v24 = *(v1 + v31);
        if (*(v24 + 16))
        {

          v25 = sub_20B65AD10(v18);
          if (v26)
          {
            v27 = (*(v24 + 56) + 16 * v25);
            v28 = *v27;
            v29 = v27[1];
          }

          else
          {
            v28 = 0;
            v29 = 0;
          }
        }

        else
        {
          v28 = 0;
          v29 = 0;
        }

        ObjectType = swift_getObjectType();
        v34[0] = v23;
        v34[1] = v22;
        v34[2] = v28;
        v34[3] = v29;
        v34[4] = 0;
        v34[5] = 0;
        (*(v14 + 16))(v34, ObjectType, v14);

        v6 = v15;
        v1 = v33;
        v9 = v5 & 0xC000000000000001;
      }

      else
      {
      }

      ++v10;
    }

    while (v6 != v10);
  }

  return result;
}

id sub_20BDEE97C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MarketingView()
{
  result = qword_281103990;
  if (!qword_281103990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BDEEB8C()
{
  sub_20B8A7BAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_20BDEEC90()
{
  v0 = [objc_opt_self() buttonWithType_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v0 setTintColor_];

  v2 = sub_20C13C914();
  [v0 setTitle:v2 forState:0];

  v3 = [v0 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = *MEMORY[0x277D74420];
    v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
    inited = swift_initStackObject();
    v25 = xmmword_20C14F980;
    *(inited + 16) = xmmword_20C14F980;
    v8 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
    v9 = swift_initStackObject();
    v10 = MEMORY[0x277D74430];
    *(v9 + 16) = xmmword_20C14F980;
    v11 = *v10;
    *(v9 + 32) = *v10;
    *(v9 + 40) = v5;
    v12 = v8;
    v13 = v11;
    v14 = sub_20B6B134C(v9);
    swift_setDeallocating();
    sub_20B520158(v9 + 32, &unk_27C773200);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
    *(inited + 40) = v14;
    sub_20B6B143C(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &qword_27C773210);
    type metadata accessor for AttributeName(0);
    sub_20BDEF310(&qword_27C7618A0, type metadata accessor for AttributeName);
    v15 = sub_20C13C744();

    v16 = [v6 fontDescriptorByAddingAttributes_];

    v17 = [objc_opt_self() fontWithDescriptor:v16 size:0.0];
    [v4 setFont_];
  }

  v18 = [v0 titleLabel];
  if (v18)
  {
    v19 = v18;
    [v18 setNumberOfLines_];
  }

  v20 = [v0 titleLabel];
  if (v20)
  {
    v21 = v20;
    [v20 setTextAlignment_];
  }

  v22 = [v0 titleLabel];
  if (v22)
  {
    v23 = v22;
    [v22 setAdjustsFontForContentSizeCategory_];
  }

  return v0;
}

void sub_20BDEF064(void (*a1)(CGAffineTransform *), uint64_t a2)
{
  sub_20C138954();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  sub_20BDD9F5C(a1, a2, v5, v6);
}

uint64_t sub_20BDEF1B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BDEF280()
{
  v1 = *(sub_20C138894() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BDEDE90(v3, v0 + v2, v4);
}

uint64_t sub_20BDEF310(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BDEF358(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_20BDEF3B8(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v4 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v5 = [v4 fontDescriptorWithSymbolicTraits_];
  if (v5)
  {
    v6 = v5;

    v4 = v6;
  }

  v7 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

  [v3 setFont_];
  [v3 setNumberOfLines_];
  if (a2)
  {
    a2 = sub_20C13C914();
  }

  [v3 setText_];

  [v3 setTextAlignment_];
  v8 = [objc_opt_self() systemGrayColor];
  [v3 setTextColor_];

  return v3;
}

void sub_20BDEF568()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_isLoading) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_onElementAppearance);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_onElementDisappearance);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_onVisibleBoundsChange);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_onImpressionableBoundsChange);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI13MarketingView_backgroundImageView;
  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_layout;
  *v7 = xmmword_20C1615A0;
  *(v7 + 16) = xmmword_20C17E2E0;
  *(v7 + 32) = xmmword_20C169050;
  *(v7 + 48) = xmmword_20C17E2E0;
  *(v7 + 64) = xmmword_20C17E2F0;
  *(v7 + 80) = xmmword_20C17E300;
  __asm { FMOV            V0.2D, #24.0 }

  *(v7 + 96) = _Q0;
  *(v7 + 112) = 0x4020000000000000;
  v13 = OBJC_IVAR____TtC9SeymourUI13MarketingView_logoImageView;
  v14 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v13) = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI13MarketingView_stackView;
  v16 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v15) = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI13MarketingView_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  *(v0 + v17) = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI13MarketingView_subtitleLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setAdjustsFontForContentSizeCategory_];
  *(v0 + v19) = v20;
  v21 = OBJC_IVAR____TtC9SeymourUI13MarketingView_supportingTextLabel;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 setAdjustsFontForContentSizeCategory_];
  *(v0 + v21) = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemSubtitles;
  v24 = MEMORY[0x277D84F90];
  *(v0 + v23) = sub_20B6B2248(MEMORY[0x277D84F90]);
  v25 = OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemTitles;
  *(v0 + v25) = sub_20B6B2248(v24);
  *(v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemButtons) = v24;
  *(v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_actionItemViews) = v24;
  v26 = OBJC_IVAR____TtC9SeymourUI13MarketingView_offer;
  v27 = sub_20C138894();
  v28 = *(*(v27 - 8) + 56);
  v28(v0 + v26, 1, 1, v27);
  v28(v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_pendingOffer, 1, 1, v27);
  *(v0 + OBJC_IVAR____TtC9SeymourUI13MarketingView_lastTappedActionItemButton) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BDEF89C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD000000000000054, 0x800000020C1B3A50);
    v2 = [v0 description];
    v3 = sub_20C13C954();
    v5 = v4;

    MEMORY[0x20F2F4230](v3, v5);

    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

id sub_20BDEF99C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20C150050;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.773 blue:0.0 alpha:1.0];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.878 green:0.557 blue:0.898 alpha:1.0];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.106 green:0.494 blue:0.62 alpha:1.0];
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.82 green:0.098 blue:0.478 alpha:1.0];
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.937 green:0.333 blue:0.188 alpha:1.0];
  *(v0 + 64) = result;
  qword_27C79C6A8 = v0;
  return result;
}

id sub_20BDEFAE8()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.22 green:0.22 blue:0.24 alpha:1.0];
  qword_27C79C6B0 = result;
  return result;
}

uint64_t MediaTag.accessibilityIdentifier.getter()
{
  v1 = v0;
  v2 = 0x6948206F69647541;
  v3 = sub_20C1327F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C138094();
  MEMORY[0x28223BE20](v7);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B634348(v1, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = *v9;
      v27 = 0xD000000000000012;
      v28 = 0x800000020C1B3B50;
      v26 = v23;
      v10 = sub_20C13DFA4();
      goto LABEL_19;
    case 2u:
      (*(v4 + 32))(v6, v9, v3);
      v27 = 0x2065746144;
      v28 = 0xE500000000000000;
      sub_20BDF0040();
      v22 = sub_20C13DFA4();
      MEMORY[0x20F2F4230](v22);

      v2 = v27;
      (*(v4 + 8))(v6, v3);
      return v2;
    case 3u:
      v27 = 0;
      v28 = 0xE000000000000000;
      MEMORY[0x20F2F4230](0x6E6F697461727544, 0xE800000000000000);
      MEMORY[0x20F2F4230](32, 0xE100000000000000);
      sub_20C13CEE4();
      MEMORY[0x20F2F4230](1852402976, 0xE400000000000000);
      return v27;
    case 4u:
      sub_20B6343AC(v9);
      return 0xD00000000000001CLL;
    case 5u:
      v18 = *v9;
      v19 = v9[1];

      v27 = 0xD000000000000011;
      v28 = 0x800000020C1B3B10;
      MEMORY[0x20F2F4230](v18, v19);
      goto LABEL_20;
    case 6u:
      v2 = 0xD000000000000010;
      sub_20B6343AC(v9);
      return v2;
    case 7u:
      v17 = *v9;
      v27 = 0;
      v28 = 0xE000000000000000;
      MEMORY[0x20F2F4230](0x6F74617261706553, 0xE900000000000072);
      MEMORY[0x20F2F4230](32, 0xE100000000000000);
      LOBYTE(v26) = v17;
      sub_20C13DDF4();
      return v27;
    case 8u:
      v10 = *v9;
      v11 = 0x49206D6574737953;
      v12 = 0xED0000206567616DLL;
      goto LABEL_12;
    case 9u:
      v10 = *v9;
      v11 = 0x2074786554;
      v12 = 0xE500000000000000;
LABEL_12:
      v27 = v11;
      v28 = v12;
      goto LABEL_19;
    case 0xAu:
      v13 = *v9;
      v14 = v9[1];
      v15 = v9[2];
      v16 = v9[3];
      v27 = 0xD000000000000010;
      v28 = 0x800000020C1B3AD0;
      MEMORY[0x20F2F4230](v13, v14);

      MEMORY[0x20F2F4230](8236, 0xE200000000000000);
      MEMORY[0x20F2F4230](v15, v16);
      goto LABEL_20;
    case 0xBu:
      v10 = *v9;
      v20 = 0x800000020C1B3AB0;
      v21 = 0xD000000000000016;
      goto LABEL_18;
    case 0xCu:
    case 0x10u:
      return v2;
    case 0xDu:
    case 0x11u:
      return 0x43206465736F6C43;
    case 0xEu:
      return 0x6574656C706D6F43;
    case 0xFu:
      return 0x746963696C707845;
    case 0x12u:
    case 0x13u:
      return 0x656C746974627553;
    default:
      v10 = *v9;
      v20 = 0x800000020C1B3B70;
      v21 = 0xD000000000000011;
LABEL_18:
      v27 = v21;
      v28 = v20;
LABEL_19:
      MEMORY[0x20F2F4230](v10);
LABEL_20:

      return v27;
  }
}

unint64_t sub_20BDF0040()
{
  result = qword_27C76F290;
  if (!qword_27C76F290)
  {
    sub_20C1327F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76F290);
  }

  return result;
}

id sub_20BDF0168()
{
  v0 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v1 = *MEMORY[0x277D76918];
  v2 = *MEMORY[0x277D74410];
  v3 = objc_opt_self();
  v4 = v0;
  v5 = [v3 preferredFontDescriptorWithTextStyle:v1 compatibleWithTraitCollection:v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v7 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v8 = swift_initStackObject();
  v9 = MEMORY[0x277D74430];
  *(v8 + 16) = xmmword_20C14F980;
  v10 = *v9;
  *(v8 + 32) = *v9;
  *(v8 + 40) = v2;
  v11 = v7;
  v12 = v10;
  v13 = sub_20B6B134C(v8);
  swift_setDeallocating();
  sub_20B520158(v8 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v13;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v14 = sub_20C13C744();

  v15 = [v5 fontDescriptorByAddingAttributes_];

  v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
  return v16;
}

char *sub_20BDF03D0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI10PlayButton_layout];
  v10 = sub_20BDF0168();
  *v9 = 0x6C69662E79616C70;
  *(v9 + 1) = 0xE90000000000006CLL;
  *(v9 + 2) = v10;
  *(v9 + 3) = 0x3FF0000000000000;
  v11 = OBJC_IVAR____TtC9SeymourUI10PlayButton_visualEffectView;
  v12 = [objc_opt_self() effectWithStyle_];
  v13 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v14 = v13;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setUserInteractionEnabled_];

  *&v4[v11] = v14;
  v42.receiver = v4;
  v42.super_class = type metadata accessor for PlayButton();
  v15 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 imageView];
  if (v16)
  {
    v17 = v16;
    [v15 insertSubview:*&v15[OBJC_IVAR____TtC9SeymourUI10PlayButton_visualEffectView] belowSubview:v16];
  }

  v18 = [objc_opt_self() configurationWithFont_];

  v19 = v18;
  v20 = sub_20C13C914();

  v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v19];

  if (v21)
  {
    v22 = [v21 imageWithRenderingMode_];
  }

  else
  {
    v22 = 0;
  }

  [v15 setImage:v22 forState:0];
  v23 = [objc_opt_self() whiteColor];
  [v15 setTintColor_];

  v24 = v15;
  [v24 imageEdgeInsets];
  [v24 setImageEdgeInsets_];

  v25 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14FE90;
  v27 = OBJC_IVAR____TtC9SeymourUI10PlayButton_visualEffectView;
  v28 = [*&v24[OBJC_IVAR____TtC9SeymourUI10PlayButton_visualEffectView] leadingAnchor];
  v29 = [v24 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v26 + 32) = v30;
  v31 = [*&v24[v27] trailingAnchor];
  v32 = [v24 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v26 + 40) = v33;
  v34 = [*&v24[v27] topAnchor];
  v35 = [v24 topAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v26 + 48) = v36;
  v37 = [*&v24[v27] bottomAnchor];
  v38 = [v24 bottomAnchor];

  v39 = [v37 constraintEqualToAnchor_];
  *(v26 + 56) = v39;
  sub_20B5E29D0();
  v40 = sub_20C13CC54();

  [v25 activateConstraints_];

  return v24;
}

id sub_20BDF09B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BDF0A78()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI10PlayButton_layout);
  v2 = sub_20BDF0168();
  *v1 = 0x6C69662E79616C70;
  v1[1] = 0xE90000000000006CLL;
  v1[2] = v2;
  v1[3] = 0x3FF0000000000000;
  v3 = OBJC_IVAR____TtC9SeymourUI10PlayButton_visualEffectView;
  v4 = [objc_opt_self() effectWithStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setUserInteractionEnabled_];

  *(v0 + v3) = v6;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20BDF0B9C()
{
  result = qword_27C76F2B0;
  if (!qword_27C76F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76F2B0);
  }

  return result;
}

uint64_t sub_20BDF0C10(uint64_t a1, int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BDF1028(a2);
  }

  return result;
}

uint64_t sub_20BDF0C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = sub_20C134EC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TrainerFilterUpdated();
  MEMORY[0x28223BE20](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_coordinator);

    v24[1] = *(v16 + 24);
    swift_unknownObjectRetain();

    v17 = *(v9 + 16);
    v25 = v8;
    v17(v11, a3, v8);
    sub_20B52F9E8(a1, v7, &qword_27C764A78);
    v18 = sub_20C134E04();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_20B520158(v7, &qword_27C764A78);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = sub_20C134DD4();
      v21 = v22;
      (*(v19 + 8))(v7, v18);
    }

    swift_getObjectType();
    (*(v9 + 32))(v14, v11, v25);
    v23 = &v14[*(v12 + 20)];
    *v23 = v20;
    v23[1] = v21;
    sub_20BDF2294(&qword_27C7667D0, type metadata accessor for TrainerFilterUpdated);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return sub_20BDF2238(v14);
  }

  return result;
}

uint64_t sub_20BDF0FA0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FDFC(v3, a1, Strong);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

char *sub_20BDF1028(int a1)
{
  v2 = v1;
  v87 = sub_20C13BB84();
  v4 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13C554();
  v83 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v82 = (&v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_20C132EE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x28223BE20](v13);
  v84 = &v71 - v14;
  if ((sub_20BF7A8FC(10, v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_rootModality) & 1) == 0)
  {
    sub_20C13B534();
    v25 = sub_20C13BB74();
    v26 = sub_20C13D1F4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v103[0] = v28;
      *v27 = 136446210;
      v29 = sub_20C1368A4();
      v31 = sub_20B51E694(v29, v30, v103);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_20B517000, v25, v26, "Unsupported property type: %{public}s. Aborting row creation.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v27, -1, -1);
    }

    return (*(v4 + 8))(v6, v87);
  }

  v74 = v7;
  v73 = a1;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_coordinator);
  v16 = (v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_storefrontLocalizer + 24));
  v17 = sub_20C138D34();
  v19 = sub_20BC74CB8(v17, v18, 0x322E6E6F73726570, 0xED00006C6C69662ELL, v15);

  if ((*(v15 + *(*v15 + 200)) & 8) != 0)
  {
    v23 = 0;
    v24 = 0;
    v20 = 0;
    v22 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v20 = sub_20C138D34();
    v22 = v21;
    v87 = v19;
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v19 = v87;
    v23 = sub_20C138D34();
  }

  *&v93 = v23;
  *(&v93 + 1) = v24;
  LOBYTE(v94) = 1;
  *(&v94 + 1) = 0;
  *&v95 = 0;
  WORD4(v95) = 128;
  v96 = 0uLL;
  v97 = xmmword_20C17E5B0;
  *&v98 = v20;
  *(&v98 + 1) = v22;
  LOBYTE(v99) = 0;
  *(&v99 + 1) = v19;
  v100 = MEMORY[0x277D84F90];
  *&v101 = 0;
  *(&v101 + 1) = v20;
  *v102 = v22;
  *&v102[8] = xmmword_20C150190;
  nullsub_1(&v93);
  v33 = v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row;
  v34 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 144);
  v103[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 128);
  v103[9] = v34;
  v104 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 160);
  v35 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 80);
  v103[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 64);
  v103[5] = v35;
  v36 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 112);
  v103[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 96);
  v103[7] = v36;
  v37 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 16);
  v103[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row);
  v103[1] = v37;
  v38 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 48);
  v103[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 32);
  v103[3] = v38;
  v39 = *v102;
  *(v33 + 128) = v101;
  *(v33 + 144) = v39;
  *(v33 + 160) = *&v102[16];
  v40 = v98;
  *(v33 + 64) = v97;
  *(v33 + 80) = v40;
  v41 = v100;
  *(v33 + 96) = v99;
  *(v33 + 112) = v41;
  v42 = v94;
  *v33 = v93;
  *(v33 + 16) = v42;
  v43 = v96;
  *(v33 + 32) = v95;
  *(v33 + 48) = v43;

  sub_20B520158(v103, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    return swift_unknownObjectRelease();
  }

  v72 = result;
  if (![*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
LABEL_27:
    sub_20C0C2D50(0);
    return swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v44 = v84;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v45 = v86;
  v46 = sub_20C13BE74();
  result = (*(v85 + 8))(v44, v45);
  v84 = *(v46 + 16);
  v85 = v46;
  if (!v84)
  {
LABEL_25:

    goto LABEL_27;
  }

  v47 = 0;
  v80 = v85 + 32;
  v81 = OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_identifier;
  v78 = (v10 + 8);
  v79 = (v10 + 16);
  v77 = v2;
  while (2)
  {
    if (v47 < *(v85 + 16))
    {
      v48 = (v80 + 24 * v47);
      v49 = v48[1];
      v76 = *v48;
      v50 = v48[2];
      v86 = v47 + 1;
      (*v79)(v12, v2 + v81, v9);
      v51 = *(v49 + 16);

      v87 = v50;

      v52 = 0;
      do
      {
        if (v51 == v52)
        {
          (*v78)(v12, v9);
          goto LABEL_15;
        }

        v53 = v52 + 1;
        sub_20BDF2294(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v54 = sub_20C13C894();
        v52 = v53;
      }

      while ((v54 & 1) == 0);
      (*v78)(v12, v9);
      v55 = *(v33 + 128);
      v56 = *(v33 + 144);
      v57 = *(v33 + 96);
      v89[7] = *(v33 + 112);
      v90 = v55;
      v91 = v56;
      v92 = *(v33 + 160);
      v58 = *(v33 + 80);
      v89[4] = *(v33 + 64);
      v89[5] = v58;
      v89[6] = v57;
      v59 = *(v33 + 16);
      v89[0] = *v33;
      v89[1] = v59;
      v60 = *(v33 + 48);
      v89[2] = *(v33 + 32);
      v89[3] = v60;
      v61 = sub_20B5EAF8C(v89);
      if (v61 == 1)
      {
        v62 = 0;
        v63 = 0;
      }

      else
      {
        v62 = *(&v90 + 1);
        v63 = v91;
      }

      v64 = v87;
      v75 = &v71;
      v88[0] = v62;
      v88[1] = v63;
      MEMORY[0x28223BE20](v61);
      *(&v71 - 2) = v88;
      v65 = sub_20B796758(sub_20B5EAFA4, (&v71 - 4), v64);

      if ((v65 & 1) == 0)
      {
LABEL_15:

        v47 = v86;
        v2 = v77;
        if (v86 == v84)
        {
          goto LABEL_25;
        }

        continue;
      }

      sub_20B5E2E18();
      v66 = sub_20C13D374();
      v68 = v82;
      v67 = v83;
      *v82 = v66;
      v69 = v74;
      (*(v67 + 104))(v68, *MEMORY[0x277D85200], v74);
      v70 = sub_20C13C584();
      result = (*(v67 + 8))(v68, v69);
      if ((v70 & 1) == 0)
      {
        goto LABEL_36;
      }

      if ((v73 & 0x80) != 0)
      {
        sub_20C10CC50(v77, v76, v73 & 1, v72);
      }

      else
      {
        sub_20B61F6D0(v76, v49, v87, v77, v73 & 1, v72);
      }

      return swift_unknownObjectRelease();
    }

    break;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_20BDF1A08(uint64_t a1, char a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_20C137C24();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134E04();
  sub_20C138D44();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &unk_27C766680);
    sub_20C13B4A4();
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1D4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20B517000, v14, v15, "[TrainerFilterOptionsShelf] failed to find artwork for trainer", v16, 2u);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return 0xF000000000000007;
  }

  else
  {
    v18 = *(v11 + 32);
    v18(v13, v9, v10);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767E58);
    v20 = swift_allocBox();
    v22 = v21;
    v23 = *(v19 + 64);
    *v21 = a2;
    *(v21 + 8) = sub_20C134DF4();
    *(v22 + 16) = v24;
    v18((v22 + v23), v13, v10);
    return v20 | 0x7000000000000004;
  }
}

uint64_t sub_20BDF1CF8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_rootModality, &unk_27C7710A0);
  v3 = OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_storefrontLocalizer);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrainerFilterOptionsShelf()
{
  result = qword_27C76F2B8;
  if (!qword_27C76F2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BDF1EC0()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B723EF4();
    if (v1 <= 0x3F)
    {
      sub_20C134EC4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20BDF1FF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BDF2068@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TrainerFilterOptionsShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BDF2238(uint64_t a1)
{
  v2 = type metadata accessor for TrainerFilterUpdated();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BDF2294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BDF22DC(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v22 = sub_20C133474();
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v10 = a4 + 56;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 56);
  v14 = (v11 + 63) >> 6;
  v19[1] = v7 + 16;
  v21 = (v7 + 8);
  v23 = a4;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
      v18 = v22;
LABEL_9:
      (*(v7 + 16))(v9, *(v23 + 48) + *(v7 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v18);
      v20(&v24, v9);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      result = (*v21)(v9, v18);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    (*v21)(v9, v18);
  }

  else
  {
LABEL_5:
    v18 = v22;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return v24;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20BDF24FC(uint64_t result, uint64_t a2, void (*a3)(void *, __int128 *), uint64_t a4, uint64_t a5)
{
  v11[0] = result;
  v11[1] = a2;
  v6 = *(a5 + 16);
  if (v6)
  {
    for (i = (a5 + 32); ; ++i)
    {
      v10 = *i;
      v9 = v10;
      a3(v11, &v10);
      if (v5)
      {
        break;
      }

      if (!--v6)
      {
        return v11[0];
      }
    }
  }

  return result;
}

uint64_t sub_20BDF25AC(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

BOOL sub_20BDF2654()
{
  v1 = v0;
  v2 = sub_20C133244();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 numberOfItemsInSection_] < 1)
  {
    return 0;
  }

  v6 = sub_20C133234();
  MEMORY[0x20F2EA980](0, v6);
  v7 = sub_20C1331B4();
  (*(v3 + 8))(v5, v2);
  v8 = [v0 layoutAttributesForItemAtIndexPath_];

  if (!v8)
  {
    return 0;
  }

  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = sub_20C1331B4();
  v18 = [v1 layoutAttributesForItemAtIndexPath_];

  if (!v18)
  {
    return 0;
  }

  [v18 frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v30.origin.x = v10;
  v30.origin.y = v12;
  v30.size.width = v14;
  v30.size.height = v16;
  MinY = CGRectGetMinY(v30);
  v31.origin.x = v20;
  v31.origin.y = v22;
  v31.size.width = v24;
  v31.size.height = v26;
  return MinY == CGRectGetMinY(v31);
}

void sub_20BDF2864(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26[-v6];
  v8 = sub_20C133244();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v26[-v14];
  v16 = [a1 nextFocusedIndexPath];
  if (v16)
  {
    v17 = v16;
    sub_20C1331E4();

    v18 = (*(v9 + 32))(v15, v11, v8);
    MEMORY[0x28223BE20](v18);
    *&v26[-16] = v2;
    *&v26[-8] = v15;
    v19 = sub_20B6124DC(sub_20BDF4874, &v26[-32], &unk_28228E278);
    swift_arrayDestroy();
    v20 = [a1 previouslyFocusedIndexPath];
    if (v20)
    {
      v21 = v20;
      sub_20C1331E4();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    (*(v9 + 56))(v7, v22, 1, v8);
    sub_20BDF30B4(v19, v15, v7, a2);

    sub_20B520158(v7, &unk_27C7629C0);
    (*(v9 + 8))(v15, v8);
  }

  else
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v2;
    aBlock[4] = sub_20BDF2CA0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B863940;
    aBlock[3] = &block_descriptor_134;
    v24 = _Block_copy(aBlock);
    v25 = v2;

    [a2 addCoordinatedUnfocusingAnimations:v24 completion:0];
    _Block_release(v24);
  }
}

uint64_t sub_20BDF2BA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_20C133244();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_20BDF2CA8(&unk_28228E2C8, v2);
  swift_arrayDestroy();
  return sub_20B520158(v2, &unk_27C7629C0);
}

void sub_20BDF2CA8(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v2 = sub_20BDF25AC(MEMORY[0x277D84F90], sub_20BDF484C, v13, a1);
  v3 = v2;
  v12 = *(v2 + 16);
  if (v12)
  {
    v4 = 0;
    v5 = (v2 + 40);
    while (v4 < *(v3 + 16))
    {
      ++v4;
      v6 = *(v5 - 1);
      v7 = *v5;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 16);
      v10 = v6;
      v11 = v9(ObjectType, v7);
      v15[1] = 0;
      v15[2] = 0;
      v15[0] = 0x3FF0000000000000;
      v15[3] = 0x3FF0000000000000;
      v15[4] = 0;
      v15[5] = 0;
      [v11 setTransform_];

      v5 += 2;
      if (v12 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void *sub_20BDF2DC8()
{
  v1 = v0;
  v2 = sub_20C133244();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C13C914();
  v7 = sub_20C133234();
  MEMORY[0x20F2EA980](0, v7);
  v8 = sub_20C1331B4();
  (*(v3 + 8))(v5, v2);
  v9 = [v1 supplementaryViewForElementKind:v6 atIndexPath:v8];

  if (v9)
  {
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (!v10)
    {

      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_20C13C914();
  v12 = sub_20C1331B4();
  v13 = [v1 supplementaryViewForElementKind:v11 atIndexPath:v12];

  if (!v13)
  {
    goto LABEL_8;
  }

  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (!v14)
  {

    v13 = 0;
LABEL_8:
    v14 = 0;
  }

  v29[0] = v9;
  v29[1] = v10;
  v29[2] = v13;
  v29[3] = v14;
  v15 = v13;
  v16 = v9;
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
LABEL_10:
  v19 = &v29[2 * v17];
  while (++v17 != 3)
  {
    v20 = v19 + 2;
    v21 = *v19;
    v19 += 2;
    if (v21)
    {
      v22 = *(v20 - 1);
      v23 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_20BC083E0(0, v18[2] + 1, 1, v18);
      }

      v25 = v18[2];
      v24 = v18[3];
      if (v25 >= v24 >> 1)
      {
        v18 = sub_20BC083E0((v24 > 1), v25 + 1, 1, v18);
      }

      v18[2] = v25 + 1;
      v26 = &v18[2 * v25];
      v26[4] = v23;
      v26[5] = v22;
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F2D8);
  swift_arrayDestroy();

  return v18;
}

void sub_20BDF30B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v83 - v11;
  v13 = sub_20C133244();
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a1;
  sub_20B800360(a3, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_20B520158(v12, &unk_27C7629C0);
  }

  else
  {
    v17 = *(v14 + 32);
    v88 = v13;
    v17(v16, v12, v13);

    v18 = sub_20C133234();
    v19 = sub_20C133234();
    MEMORY[0x28223BE20](v19);
    v20 = &v83 - 4;
    *(&v83 - 2) = v5;
    *(&v83 - 1) = v16;
    if (v18 == v21)
    {
      v22 = sub_20B614E50(sub_20BDF4164, v20, &unk_28228E228);
      swift_arrayDestroy();
      sub_20B8DB85C(v22);
    }

    else
    {
      v84 = v16;
      v85 = v14;
      v86 = a2;
      v87 = v5;
      v23 = sub_20B6124DC(sub_20BDF40FC, v20, &unk_28228E1D8);
      swift_arrayDestroy();
      v24 = v23[2];
      if (v24)
      {
        v25 = 0;
        while (v25 < v23[2])
        {
          if (a4)
          {
            v26 = swift_allocObject();
            v89 = *&v23[2 * v25 + 4];
            *(v26 + 16) = v89;
            *&aBlock.tx = sub_20BDF415C;
            *&aBlock.ty = v26;
            *&aBlock.a = MEMORY[0x277D85DD0];
            *&aBlock.b = 1107296256;
            *&aBlock.c = sub_20B863940;
            *&aBlock.d = &block_descriptor_19_4;
            v27 = _Block_copy(&aBlock);
            v28 = v89;

            [a4 addCoordinatedUnfocusingAnimations:v27 completion:0];

            _Block_release(v27);
          }

          if (v24 == ++v25)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

LABEL_11:

      a2 = v86;
      v5 = v87;
      v16 = v84;
      v14 = v85;
    }

    (*(v14 + 8))(v16, v88);
  }

  v29 = sub_20C1331B4();
  v30 = [v5 cellForItemAtIndexPath_];

  if (!v30 || (v95[4] = v30, sub_20B51C88C(0, &qword_27C772960), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F2D0), (swift_dynamicCast() & 1) == 0))
  {
    memset(&aBlock, 0, 40);
    goto LABEL_23;
  }

  d = aBlock.d;
  if (!*&aBlock.d)
  {
LABEL_23:
    sub_20B520158(&aBlock, &qword_27C76F2C8);
    goto LABEL_24;
  }

  tx = aBlock.tx;
  __swift_project_boxed_opaque_existential_1(&aBlock, *&aBlock.d);
  v33 = (*(*&tx + 8))(COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&tx));
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v34 = v92;
  v35 = sub_20BDF3F0C(v92, a2);
  v37 = v35;
  v87 = v36;
  if (a4)
  {
    v38 = v36;
    v85 = v35;
    v39 = v5;
    v88 = a4;

    v40 = v38[2];
    if (v40)
    {
      v41 = (v87 + 4);
      v86 = v95;
      do
      {
        v89 = *v41;
        v42 = v89;
        ObjectType = swift_getObjectType();
        v44 = *(&v89 + 1);
        v45 = *(*(&v89 + 1) + 16);
        v46 = v42;
        v47 = v45(ObjectType, v44);
        [v47 transform];

        [v39 transform];
        if ((sub_20C13D2D4() & 1) == 0)
        {
          v48 = swift_allocObject();
          *(v48 + 16) = v89;
          *(v48 + 32) = 0x3FF0000000000000;
          *(v48 + 40) = 0;
          *(v48 + 48) = 0;
          *(v48 + 56) = 0x3FF0000000000000;
          *(v48 + 64) = 0;
          *(v48 + 72) = 0;
          v95[2] = sub_20BDF4054;
          v95[3] = v48;
          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 1107296256;
          v95[0] = sub_20B863940;
          v95[1] = &block_descriptor_6_5;
          v49 = _Block_copy(v94);
          v50 = v46;

          [v88 addCoordinatedUnfocusingAnimations:v49 completion:0];
          _Block_release(v49);
        }

        ++v41;
        --v40;
      }

      while (v40);
    }

    CGAffineTransformMakeTranslation(&v93, 0.0, v33);
    v51 = v85;
    v52 = *(v85 + 16);
    if (v52)
    {
      v87 = v91;
      v53 = 32;
      do
      {
        v89 = *(v51 + v53);
        v54 = v89;
        v55 = swift_getObjectType();
        v56 = *(&v89 + 1);
        v57 = *(*(&v89 + 1) + 16);
        v58 = v54;
        v59 = v57(v55, v56);
        [v59 transform];

        if ((sub_20C13D2D4() & 1) == 0)
        {
          v60 = swift_allocObject();
          v61 = *&v93.a;
          v62 = *&v93.c;
          v60[1] = v89;
          v60[2] = v61;
          v63 = *&v93.tx;
          v60[3] = v62;
          v60[4] = v63;
          v91[2] = sub_20BDF488C;
          v91[3] = v60;
          v90[0] = MEMORY[0x277D85DD0];
          v90[1] = 1107296256;
          v91[0] = sub_20B863940;
          v91[1] = &block_descriptor_12_3;
          v64 = _Block_copy(v90);
          v65 = v58;

          [v88 addCoordinatedFocusingAnimations:v64 completion:0];
          _Block_release(v64);
        }

        v53 += 16;
        --v52;
      }

      while (v52);
    }

    goto LABEL_24;
  }

  v88 = v34;
  v66 = *(v35 + 16);
  if (!v66)
  {
LABEL_35:

    *&v89 = v87[2];
    if (v89)
    {
      v75 = 0;
      v76 = v87 + 5;
      while (v75 < v87[2])
      {
        ++v75;
        v77 = *(v76 - 1);
        v78 = *v76;
        v79 = swift_getObjectType();
        v80 = *(v78 + 16);
        v81 = v77;
        v82 = v80(v79, v78);
        aBlock.c = 0.0;
        *&aBlock.a = 0x3FF0000000000000uLL;
        aBlock.d = 1.0;
        *&aBlock.tx = 0uLL;
        [v82 setTransform_];

        v76 += 2;
        if (v89 == v75)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_42;
    }

LABEL_39:

LABEL_24:

    return;
  }

  v67 = 0;
  v68 = (v35 + 40);
  while (v67 < *(v37 + 16))
  {
    ++v67;
    v69 = *(v68 - 1);
    v70 = *v68;
    v71 = swift_getObjectType();
    v72 = *(v70 + 16);
    v73 = v69;
    v74 = v72(v71, v70);
    CGAffineTransformMakeTranslation(&aBlock, 0.0, v33);
    [v74 setTransform_];

    v68 += 2;
    if (v66 == v67)
    {
      goto LABEL_35;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_20BDF3A00(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  sub_20B51C88C(0, &qword_27C765FD8);
  v13 = sub_20C13D1A4();
  if (!v13)
  {
    return;
  }

  v24 = v13;
  if (![v13 focusedItem])
  {
LABEL_14:
    v22 = v24;

    return;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = [v1 indexPathForCell_];
    if (v15)
    {
      v16 = v15;
      sub_20C1331E4();

      (*(v7 + 32))(v12, v9, v6);
      v17 = sub_20C133234();
      if (v17 == sub_20C133234() && a1)
      {
        swift_getObjectType();
        v18 = swift_conformsToProtocol2();
        if (v18)
        {
          v19 = v18;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BF90);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20C14F980;
          *(inited + 32) = a1;
          *(inited + 40) = v19;
          (*(v7 + 56))(v5, 1, 1, v6);
          v21 = a1;
          sub_20BDF30B4(inited, v12, v5, 0);
          swift_unknownObjectRelease();

          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629D8);
          swift_arrayDestroy();

          sub_20B520158(v5, &unk_27C7629C0);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        (*(v7 + 8))(v12, v6);
      }

      else
      {
        (*(v7 + 8))(v12, v6);
        swift_unknownObjectRelease();
      }

      return;
    }

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  swift_unknownObjectRelease();
}

void sub_20BDF3DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v5 = (*(a3 + 16))(ObjectType, a3);
  v6[0] = 0x3FF0000000000000;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0x3FF0000000000000;
  v6[4] = 0;
  v6[5] = 0;
  [v5 setTransform_];
}

uint64_t sub_20BDF3E50@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = sub_20C13C914();
  v5 = sub_20C1331B4();
  v6 = [a1 supplementaryViewForElementKind:v4 atIndexPath:v5];

  if (!v6)
  {
    goto LABEL_4;
  }

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {

    v6 = 0;
LABEL_4:
    result = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_20BDF3F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C1331B4();
  v7 = [v2 cellForItemAtIndexPath_];

  if (v7)
  {
    v8 = [v3 superview];
    if (v8)
    {
      v9 = v8;
      [v7 bounds];
      v10 = [v9 convertRect:v7 fromCoordinateSpace:?];
      v16[2] = v9;
      v16[3] = MEMORY[0x28223BE20](v10).n128_u64[0];
      v16[4] = v11;
      v16[5] = v12;
      v16[6] = v13;
      v16[7] = v3;
      v16[8] = a2;
      v14 = sub_20BDF24FC(MEMORY[0x277D84F90], MEMORY[0x277D84F90], sub_20BDF4824, v16, a1);

      return v14;
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_20BDF4074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(a4 + 40);
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 16))(ObjectType, a3);
  v10 = *(a4 + 16);
  v11[0] = *a4;
  v11[1] = v10;
  v12 = v6;
  v13 = v7;
  [v9 setTransform_];
}

void *sub_20BDF4114@<X0>(void *a1@<X8>)
{
  result = sub_20BDF2DC8();
  *a1 = result;
  return result;
}

uint64_t sub_20BDF4180(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v31 - v8;
  v10 = sub_20C133244();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B800360(a3, v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v29 = sub_20BDF2DC8();
    sub_20B8DB85C(v29);
    return (*(v11 + 8))(v13, v10);
  }

  v31[3] = a1;
  sub_20B520158(v9, &unk_27C7629C0);
  v14 = sub_20C13C914();
  v15 = [a4 visibleSupplementaryViewsOfKind_];

  sub_20B51C88C(0, &unk_27C768240);
  v16 = sub_20C13CC74();

  if (v16 >> 62)
  {
LABEL_24:
    v17 = sub_20C13DB34();
    if (v17)
    {
LABEL_4:
      v18 = 0;
      v19 = MEMORY[0x277D84F90];
      do
      {
        v20 = v18;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x20F2F5430](v20, v16);
          }

          else
          {
            if (v20 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v21 = *(v16 + 8 * v20 + 32);
          }

          v22 = v21;
          v18 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          swift_getObjectType();
          v23 = swift_conformsToProtocol2();
          if (v23)
          {
            if (v22)
            {
              break;
            }
          }

          ++v20;
          if (v18 == v17)
          {
            goto LABEL_26;
          }
        }

        v31[0] = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_20BC083E0(0, v19[2] + 1, 1, v19);
        }

        v26 = v19[2];
        v25 = v19[3];
        v27 = v31[0];
        if (v26 >= v25 >> 1)
        {
          v19 = sub_20BC083E0((v25 > 1), v26 + 1, 1, v19);
          v27 = v31[0];
        }

        v19[2] = v26 + 1;
        v28 = &v19[2 * v26];
        v28[4] = v22;
        v28[5] = v27;
      }

      while (v18 != v17);
      goto LABEL_26;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_4;
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_26:

  return sub_20B8DB85C(v19);
}

uint64_t sub_20BDF450C(uint64_t a1, id *a2, void *a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v48 = *a2;
  v14 = *a2;
  [*a2 bounds];
  [a3 convertRect:v14 fromCoordinateSpace:?];
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  MinX = CGRectGetMinX(v55);
  v56.origin.x = x;
  v56.origin.y = y;
  v50 = height;
  rect2 = width;
  v56.size.width = width;
  v56.size.height = height;
  MaxX = CGRectGetMaxX(v56);
  if (MinX > MaxX)
  {
    __break(1u);
    goto LABEL_27;
  }

  v21 = MaxX;
  v49 = y;
  v57.origin.x = a5;
  v57.origin.y = a6;
  v57.size.width = a7;
  v57.size.height = a8;
  v22 = CGRectGetMinX(v57);
  v58.origin.x = a5;
  v58.origin.y = a6;
  v58.size.width = a7;
  v58.size.height = a8;
  v23 = CGRectGetMaxX(v58);
  if (v22 > v23)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_20BC083E0(0, a4[2] + 1, 1, a4);
    a4 = result;
    goto LABEL_16;
  }

  v26 = v23 <= MinX || v21 <= v22 || MinX == v21 || v22 == v23;
  if (!v26 && sub_20BDF2654())
  {
    v44 = *a1;
    v45 = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20BC083E0(0, v44[2] + 1, 1, v44);
      v44 = result;
    }

    v47 = v44[2];
    v46 = v44[3];
    if (v47 >= v46 >> 1)
    {
      result = sub_20BC083E0((v46 > 1), v47 + 1, 1, v44);
      v44 = result;
    }

    v44[2] = v47 + 1;
    *&v44[2 * v47 + 4] = v48;
    *a1 = v44;
    return result;
  }

  [a4 frame];
  v28 = v27;
  v30 = v29;
  [a4 contentOffset];
  v32 = -v31;
  [a4 contentOffset];
  CGAffineTransformMakeTranslation(&v53, v32, -v33);
  v54.x = v28;
  v54.y = v30;
  v34 = CGPointApplyAffineTransform(v54, &v53);
  [a4 contentSize];
  v36 = v35;
  v38 = v37;
  v59.origin.x = v34.x;
  v59.origin.y = v34.y;
  v59.size.width = v36;
  v59.size.height = v38;
  v61.origin.x = x;
  v61.origin.y = v49;
  v61.size.height = v50;
  v61.size.width = rect2;
  v39 = CGRectContainsRect(v59, v61);
  v60.origin.x = v34.x;
  v60.origin.y = v34.y;
  v60.size.width = v36;
  v60.size.height = v38;
  v62.origin.x = a5;
  v62.origin.y = a6;
  v62.size.width = a7;
  v62.size.height = a8;
  result = CGRectContainsRect(v60, v62);
  if (v39 != result)
  {
    return result;
  }

  a4 = *(a1 + 8);
  v41 = v14;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_16:
  v43 = a4[2];
  v42 = a4[3];
  if (v43 >= v42 >> 1)
  {
    result = sub_20BC083E0((v42 > 1), v43 + 1, 1, a4);
    a4 = result;
  }

  a4[2] = v43 + 1;
  *&a4[2 * v43 + 4] = v48;
  *(a1 + 8) = a4;
  return result;
}

uint64_t sub_20BDF489C(uint64_t a1)
{
  v3 = [v1 currentMediaSelection];
  v4 = [v3 selectedMediaOptionInMediaSelectionGroup_];

  if (!v4)
  {
    return 2;
  }

  if (qword_27C7607D0 != -1)
  {
    swift_once();
  }

  if ([v4 hasMediaCharacteristic_])
  {

    return 0;
  }

  else
  {
    if (qword_27C7607D8 != -1)
    {
      swift_once();
    }

    v6 = [v4 hasMediaCharacteristic_];

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::String_optional __swiftcall AVPlayerItem.currentAudioLanguageSelection(in:)(AVMediaSelectionGroup in)
{
  isa = in.super.isa;
  v3 = [v1 currentMediaSelection];
  v4 = [v3 selectedMediaOptionInMediaSelectionGroup_];

  if (v4 && (v5 = AVMediaSelectionOption.languageCodeIdentifier.getter(), v7 = v6, v4, v7))
  {
    v8 = v7;
    v9 = v5;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t CatalogTipError.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BDF4AE0()
{
  result = qword_27C76F2E0;
  if (!qword_27C76F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76F2E0);
  }

  return result;
}

uint64_t sub_20BDF4B54()
{
  sub_20C1380F4();
  v0 = sub_20C138104();
  result = sub_20C138104();
  v2 = 8.0;
  if (v0 == result)
  {
    v2 = 18.0;
  }

  qword_27C76F2E8 = *&v2;
  return result;
}

uint64_t sub_20BDF4B9C()
{
  sub_20C1380F4();
  v0 = sub_20C138104();
  result = sub_20C138104();
  v2 = 42.0;
  if (v0 == result)
  {
    v2 = 96.0;
  }

  qword_27C76F2F0 = *&v2;
  return result;
}

void sub_20BDF4BEC()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_platter];
  v3 = *MEMORY[0x277D768C8];
  v2 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  v6 = [v1 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:v2];

  LODWORD(v9) = 1148846080;
  [v8 setPriority_];
  v10 = v8;
  v11 = [v1 trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-v5];

  LODWORD(v14) = 1148846080;
  [v13 setPriority_];
  v15 = v13;
  v16 = [v1 topAnchor];
  v17 = [v0 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:v3];

  LODWORD(v19) = 1148846080;
  [v18 setPriority_];
  v20 = [v1 bottomAnchor];
  v21 = [v0 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-v4];

  LODWORD(v23) = 1148846080;
  [v22 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20C14FE90;
  *(v24 + 32) = v10;
  *(v24 + 40) = v15;
  *(v24 + 48) = v18;
  *(v24 + 56) = v22;
  v67 = v24;

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20C150040;
  v26 = *&v0[OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_label];
  v27 = [v26 leftAnchor];
  v28 = OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide;
  v29 = [*&v1[OBJC_IVAR____TtC9SeymourUI26SessionElementBackdropView_contentLayoutGuide] leftAnchor];
  v30 = [v27 constraintEqualToAnchor_];

  *(v25 + 32) = v30;
  v31 = [*&v1[v28] heightAnchor];
  v32 = [v26 heightAnchor];
  v33 = [v31 constraintGreaterThanOrEqualToAnchor_];

  *(v25 + 40) = v33;
  v34 = [v26 centerYAnchor];
  v35 = [*&v1[v28] centerYAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v25 + 48) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_20C151850;
  v38 = *&v0[OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_imageView];
  v39 = [v38 heightAnchor];
  if (qword_27C760C10 != -1)
  {
    swift_once();
  }

  v40 = *&qword_27C76F2F0;
  v41 = [v39 constraintEqualToConstant_];

  *(v37 + 32) = v41;
  v42 = [v38 widthAnchor];
  v43 = [v42 constraintEqualToConstant_];

  *(v37 + 40) = v43;
  v44 = [v38 leftAnchor];
  v45 = [v26 rightAnchor];
  if (qword_27C760C08 != -1)
  {
    swift_once();
  }

  v46 = [v44 constraintEqualToAnchor:v45 constant:*&qword_27C76F2E8];

  *(v37 + 48) = v46;
  v47 = [*&v1[v28] heightAnchor];
  v48 = [v38 heightAnchor];
  v49 = [v47 constraintGreaterThanOrEqualToAnchor_];

  *(v37 + 56) = v49;
  v50 = [v38 centerYAnchor];
  v51 = [*&v1[v28] &selRef_setNumberOfTapsRequired_];
  v52 = [v50 constraintEqualToAnchor_];

  *(v37 + 64) = v52;
  v53 = [v38 rightAnchor];
  v54 = [*&v1[v28] rightAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v37 + 72) = v55;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_20C151490;
  v57 = *&v0[OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_monogramLabel];
  v58 = [v57 centerXAnchor];
  v59 = [v38 centerXAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v56 + 32) = v60;
  v61 = [v57 centerYAnchor];
  v62 = [v38 centerYAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v56 + 40) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 32) = v67;
  *(inited + 16) = xmmword_20C152DF0;
  *(inited + 40) = v25;
  *(inited + 48) = v37;
  *(inited + 56) = v56;
  v65 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B5E29D0();
  v66 = sub_20C13CC54();

  [v65 activateConstraints_];
}

id sub_20BDF5474()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiUserCelebrationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BDF5558(uint64_t a1)
{
  v2 = sub_20C137184();
  v140 = *(v2 - 8);
  v141 = v2;
  MEMORY[0x28223BE20](v2);
  v139 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13BB84();
  v142 = *(v4 - 8);
  v143 = v4;
  MEMORY[0x28223BE20](v4);
  v132 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v133 = &v129 - v7;
  v138 = sub_20C136944();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_20C1366E4();
  MEMORY[0x28223BE20](v149);
  v150 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_20C135094();
  v10 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v136 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v129 - v13;
  MEMORY[0x28223BE20](v15);
  v153 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v129 - v18;
  v20 = sub_20C135BB4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v134 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v148 = &v129 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v129 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v129 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v129 - v32;
  v34 = a1;
  sub_20C13B204();
  sub_20C135BA4();
  v157 = *(v21 + 8);
  v157(v33, v20);
  v152 = sub_20C135074();
  v36 = v35;
  v39 = *(v10 + 8);
  v37 = v10 + 8;
  v38 = v39;
  v40 = v19;
  v41 = v146;
  (v39)(v40);
  v155 = v21 + 8;
  v156 = v20;
  v154 = v39;
  if (v36)
  {
    v147 = v36;
    v42 = v41;
    v43 = v34;
    v44 = v37;
    v45 = v157;
  }

  else
  {
    v145 = v34;
    sub_20C13B204();
    v46 = v153;
    sub_20C135BA4();
    v157(v30, v20);
    v152 = sub_20C135044();
    v48 = v47;
    v49 = v41;
    v38(v46, v41);
    v43 = v145;
    v50 = v38;
    v42 = v49;
    v44 = v37;
    if (v48)
    {
      v147 = v48;
      v45 = v157;
    }

    else
    {
      v51 = v50;
      sub_20C13B204();
      sub_20C135BA4();
      v45 = v157;
      v157(v27, v20);
      sub_20C135034();
      v51(v14, v42);
      v52 = sub_20BF63150(4);
      v54 = v53;
      v55 = v44;
      v57 = v56;
      v59 = v58;

      v60 = v54;
      v43 = v145;
      v61 = v57;
      v44 = v55;
      v152 = MEMORY[0x20F2F4190](v52, v60, v61, v59);
      v147 = v62;
    }
  }

  sub_20C13B204();
  sub_20C135BA4();
  v63 = v156;
  v45(v27, v156);
  v131 = sub_20C135074();
  v153 = v64;
  v65 = v154;
  v154(v14, v42);
  sub_20C13B204();
  sub_20C135BA4();
  v45(v27, v63);
  v130 = sub_20C135064();
  v151 = v66;
  v65(v14, v42);
  v67 = v148;
  sub_20C13B204();
  v68 = v150;
  sub_20C135B84();
  v69 = v63;
  v70 = v68;
  v45(v67, v69);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v149 = v44;
    v71 = v42;
    v73 = v139;
    v72 = v140;
    v74 = v68;
    v75 = v141;
    (*(v140 + 32))(v139, v74, v141);
    v76 = sub_20C137174();
    if ((v77 & 1) == 0)
    {

      v106 = v132;
      sub_20C13B534();
      v107 = sub_20C13BB74();
      v108 = sub_20C13D1D4();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_20B517000, v107, v108, "Burn Bar Celebration - unknown position type", v109, 2u);
        MEMORY[0x20F2F6A40](v109, -1, -1);
      }

      (*(v142 + 8))(v106, v143);
      (*(v72 + 8))(v73, v75);
      return;
    }

    v145 = v43;
    v78 = v144;
    v79 = sub_20B9B38B0(v76, v152, v147);

    [*(*(v78 + OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_label) + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel) setAttributedText_];
    v80 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.984313725 green:0.196078431 blue:0.419607843 alpha:1.0];

    (*(v72 + 8))(v73, v75);
  }

  else
  {
    v81 = v137;
    v82 = v135;
    v83 = v138;
    (*(v137 + 32))(v135, v70, v138);
    v84 = sub_20C136934();
    if ((v86 & 1) == 0)
    {
      sub_20B583F4C(v84, v85, 0);

      v110 = v133;
      sub_20C13B534();
      v111 = sub_20C13BB74();
      v112 = sub_20C13D1D4();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&dword_20B517000, v111, v112, "Rings Celebration - unknown ring type", v113, 2u);
        MEMORY[0x20F2F6A40](v113, -1, -1);
      }

      (*(v142 + 8))(v110, v143);
      (*(v81 + 8))(v82, v83);
      return;
    }

    v149 = v44;
    v87 = v82;
    v71 = v42;
    v145 = v43;
    v88 = v84;
    v89 = v144;
    v90 = sub_20B9B3470(v84, v152, v147);

    [*(*(v89 + OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_label) + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel) setAttributedText_];
    v78 = v89;
    v80 = sub_20B9B32F4(v88);

    (*(v81 + 8))(v87, v83);
  }

  v91 = *(v78 + OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_imageView);
  [v91 setTintColor_];
  v92 = *(v78 + OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_monogramLabel);
  [v92 setText_];
  v93 = v134;
  sub_20C13B204();
  v94 = v136;
  sub_20C135BA4();
  v157(v93, v156);
  v95 = sub_20C135084();
  v97 = v96;
  v154(v94, v71);
  v98 = v153;
  if (v97 >> 60 != 15)
  {

    v114 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_20B719888(v95, v97);
    v115 = v80;
    v116 = sub_20C132C34();
    v117 = [v114 initWithData_];

    sub_20B94ACA8(v95, v97);
    [v91 setImage_];
    sub_20B94ACA8(v95, v97);

    return;
  }

  [v91 setImage_];
  v99 = [objc_opt_self() systemGray5Color];
  [v91 setBackgroundColor_];

  if (v98)
  {
    v100 = v151;
    if (v151)
    {

      sub_20BEDD594(v131, v98);
      v102 = v101;

      if (v102)
      {
        sub_20BEDD594(v130, v100);
        v104 = v103;

        if (v104)
        {

          v158 = 0;
          v159 = 0xE000000000000000;
          sub_20C13C804();

          sub_20C13C804();

          sub_20B5F6EB0();
          sub_20C13D9E4();
          v105 = sub_20C13C914();

          [v92 setText_];

          return;
        }

        v98 = v153;
      }
    }

    v118 = sub_20BEDD594(v131, v98);
    v120 = v119;

    if (v120)
    {
      v158 = v118;
      v159 = v120;
      sub_20B5F6EB0();
      sub_20C13D9E4();
      v121 = sub_20C13C914();

      [v92 setText_];

      return;
    }
  }

  else
  {
  }

  v122 = v80;
  v123 = objc_opt_self();
  if (qword_27C760C10 != -1)
  {
    v128 = v123;
    swift_once();
    v123 = v128;
  }

  v124 = [v123 systemFontOfSize:*&qword_27C76F2F0 weight:*MEMORY[0x277D74408]];
  v125 = [objc_opt_self() configurationWithFont_];
  v126 = sub_20C13C914();
  v127 = [objc_opt_self() systemImageNamed:v126 withConfiguration:v125];

  [v91 setImage_];
  [v91 setTintColor_];
}

void sub_20BDF641C(double a1)
{
  v3 = [v1 layer];
  [v3 setAnchorPoint_];

  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v9[4] = sub_20B9B9D60;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_20B7B548C;
  v9[3] = &block_descriptor_135;
  v6 = _Block_copy(v9);
  v7 = v1;

  v8 = [v5 initWithDuration:v6 dampingRatio:a1 animations:1.0];
  _Block_release(v6);
  [v8 startAnimation];
}

char *sub_20BDF65D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_platter;
  v6 = objc_allocWithZone(type metadata accessor for SessionElementBackdropView());
  v7 = sub_20BFB39E0(2, 1);
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v5] = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_label;
  type metadata accessor for SessionStackedLabelView();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = sub_20BC90F74(2);

  [*&v10[OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel] setNumberOfLines_];
  [*&v10[OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel] setNumberOfLines_];
  [v10 invalidateIntrinsicContentSize];
  *&v3[v8] = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_imageView;
  v12 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setClipsToBounds_];
  v13 = *MEMORY[0x277CDA138];
  v14 = [v12 layer];
  [v14 setCornerCurve_];

  if (qword_27C760C10 != -1)
  {
    swift_once();
  }

  v15 = *&qword_27C76F2F0 * 0.5;
  v16 = [v12 layer];
  [v16 setCornerRadius_];

  [v12 setClipsToBounds_];
  *&v3[v11] = v12;
  v17 = OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_monogramLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = [objc_opt_self() preferredFontForTextStyle_];
  [v18 setFont_];

  v20 = [objc_opt_self() secondaryLabelColor];
  [v18 setTextColor_];

  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setTextAlignment_];
  *&v3[v17] = v18;
  *&v3[OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_presenter] = a1;
  sub_20B78290C(a2, &v3[OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_stringBuilder]);
  v26.receiver = v3;
  v26.super_class = type metadata accessor for MultiUserCelebrationView();

  v21 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + 24) = &off_2822E8AA0;
  swift_unknownObjectWeakAssign();
  v22 = *&v21[OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_platter];
  v23 = v21;
  [v23 addSubview_];
  [v23 addSubview_];
  [v23 addSubview_];
  [v23 addSubview_];
  sub_20BDF4BEC();
  [v23 setAlpha_];

  sub_20B815F44(a2);
  return v23;
}

void sub_20BDF69E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_platter;
  v3 = objc_allocWithZone(type metadata accessor for SessionElementBackdropView());
  v4 = sub_20BFB39E0(2, 1);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_label;
  type metadata accessor for SessionStackedLabelView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = sub_20BC90F74(2);

  [*&v7[OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel] setNumberOfLines_];
  [*&v7[OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel] setNumberOfLines_];
  [v7 invalidateIntrinsicContentSize];
  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_imageView;
  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setClipsToBounds_];
  v10 = *MEMORY[0x277CDA138];
  v11 = [v9 layer];
  [v11 setCornerCurve_];

  if (qword_27C760C10 != -1)
  {
    swift_once();
  }

  v12 = *&qword_27C76F2F0 * 0.5;
  v13 = [v9 layer];
  [v13 setCornerRadius_];

  [v9 setClipsToBounds_];
  *(v1 + v8) = v9;
  v14 = OBJC_IVAR____TtC9SeymourUI24MultiUserCelebrationView_monogramLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [objc_opt_self() preferredFontForTextStyle_];
  [v15 setFont_];

  v17 = [objc_opt_self() secondaryLabelColor];
  [v15 setTextColor_];

  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setTextAlignment_];
  *(v1 + v14) = v15;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BDF6D08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763158);
  v45 = *(v1 - 8);
  v46 = v1;
  v2 = *(v45 + 64);
  MEMORY[0x28223BE20](v1);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  v49 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763160);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - v17;
  v19 = OBJC_IVAR____TtC9SeymourUI31TVFilterOptionsListDataProvider_modalityDetail;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v19, v18, &qword_27C763160);
  v20 = sub_20C135CC4();
  LODWORD(v19) = (*(*(v20 - 8) + 48))(v18, 1, v20);
  result = sub_20B520158(v18, &qword_27C763160);
  if (v19 == 1)
  {
    sub_20C134E84();
    v22 = sub_20C135C84();
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      return sub_20B520158(v15, &unk_27C7629B0);
    }

    else if (swift_getEnumCaseMultiPayload() == 4)
    {
      __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
      sub_20C139EF4();

      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = sub_20BDF80D4;
      *(v24 + 24) = v23;
      v26 = v45;
      v25 = v46;
      (*(v45 + 16))(v3, v6, v46);
      v27 = (*(v26 + 80) + 16) & ~*(v26 + 80);
      v28 = (v2 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      (*(v26 + 32))(v29 + v27, v3, v25);
      v30 = (v29 + v28);
      *v30 = sub_20B66D40C;
      v30[1] = v24;
      v31 = v48;
      sub_20C137C94();
      (*(v26 + 8))(v6, v25);
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = sub_20BDF80F0;
      *(v33 + 24) = v32;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_20B5D9CB0;
      *(v34 + 24) = v33;
      v36 = v50;
      v35 = v51;
      v37 = v47;
      (*(v50 + 16))(v47, v31, v51);
      v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
      v39 = swift_allocObject();
      (*(v36 + 32))(v39 + v38, v37, v35);
      v40 = (v39 + ((v8 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v40 = sub_20B5D9CCC;
      v40[1] = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
      v41 = v49;
      sub_20C137C94();
      (*(v36 + 8))(v31, v35);
      v42 = v53;
      v43 = sub_20C137CB4();
      v44 = swift_allocObject();
      *(v44 + 16) = 0;
      *(v44 + 24) = 0;
      v43(sub_20B52347C, v44);

      return (*(v52 + 8))(v41, v42);
    }

    else
    {
      return sub_20B6134F0(v15);
    }
  }

  return result;
}

uint64_t sub_20BDF741C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C137F24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134734();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TVFilterRootPropertyUpdated.PropertyType(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BDF948C(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v14, v4);
    v15 = sub_20C137F04();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    v15 = sub_20C134704();
    v17 = v18;
    (*(v9 + 8))(v11, v8);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BDF8168(v15, v17, Strong);
    swift_unknownObjectRelease();
  }

  v20 = (*(a2 + 16) + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_title);
  *v20 = v15;
  v20[1] = v17;
}

uint64_t sub_20BDF7698()
{

  swift_unknownObjectRelease();

  sub_20B583E6C(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  v1 = OBJC_IVAR____TtC9SeymourUI31TVFilterOptionsListDataProvider_filterRoot;
  v2 = sub_20C134EC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI31TVFilterOptionsListDataProvider_modalityDetail, &qword_27C763160);
  return v0;
}

uint64_t sub_20BDF7750()
{
  sub_20BDF7698();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVFilterOptionsListDataProvider()
{
  result = qword_27C76F338;
  if (!qword_27C76F338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BDF77FC()
{
  sub_20C134EC4();
  if (v0 <= 0x3F)
  {
    sub_20BDF790C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BDF790C()
{
  if (!qword_27C763148)
  {
    sub_20C135CC4();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C763148);
    }
  }
}

uint64_t sub_20BDF7964@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - v11;
  v13 = *MEMORY[0x277D51800];
  v14 = sub_20C1352F4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  v16 = sub_20C132C14();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = sub_20C135ED4();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = sub_20C136914();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);

  return sub_20C133384();
}

uint64_t sub_20BDF7C78(uint64_t a1)
{
  v3 = sub_20C134734();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763160);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-v8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = v3;
    v13 = sub_20C135CC4();
    v14 = *(v13 - 8);
    v20 = v1;
    v15 = v14;
    (*(v14 + 16))(v9, a1, v13);
    v16 = v13;
    v3 = v12;
    (*(v15 + 56))(v9, 0, 1, v16);
    v17 = OBJC_IVAR____TtC9SeymourUI31TVFilterOptionsListDataProvider_modalityDetail;
    swift_beginAccess();
    sub_20BDF80F8(v9, v11 + v17);
    swift_endAccess();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C135CB4();
    sub_20BD97B94(v6);
    (*(v4 + 8))(v6, v3);
  }

  return result;
}

BOOL sub_20BDF7EE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v5 = Strong;
  if (Strong)
  {
    sub_20B51CC64(Strong + 88, v9);

    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_20C135E34();
    sub_20C139FB4();
    v6 = sub_20C137CB4();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_20B52347C, v7);

    (*(v1 + 8))(v3, v0);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return v5 == 0;
}

uint64_t sub_20BDF80F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_20BDF8168(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_titleLabel;
  v6 = *(a3 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_titleLabel);
  if (a2)
  {
    v7 = v6;
    v4 = sub_20C13C914();
  }

  else
  {
    v8 = v6;
  }

  [v6 setText_];

  v9 = (a3 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout);
  v10 = *(a3 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout + 8);
  v11 = *(a3 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout + 16);
  v12 = *(a3 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout + 24);
  v13 = *(a3 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_layout + 64);
  [*(a3 + v5) intrinsicContentSize];
  if (v13 > v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *v9 + v9[4] + v15;
  v17 = *(*(*(a3 + OBJC_IVAR____TtC9SeymourUI33TVFilterOptionsListViewController_dataProvider) + 40) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);

  return [v17 setContentInset_];
}

char *sub_20BDF8288(void (*a1)(uint64_t, uint64_t), void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v130 = a7;
  v138 = a6;
  v139 = a5;
  v140 = a4;
  v141 = a3;
  v142 = a2;
  v144 = a1;
  v13 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v13 - 8);
  v132 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  MEMORY[0x28223BE20](v15 - 8);
  v131 = &v119 - v16;
  v149 = sub_20C135914();
  v152 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v136 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C134EC4();
  v148 = *(v18 - 8);
  v19 = v148;
  MEMORY[0x28223BE20](v18);
  v135 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_20C135524();
  v151 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v134 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v145 = &v119 - v23;
  v150 = sub_20C133E24();
  v146 = *(v150 - 8);
  v24 = v146;
  MEMORY[0x28223BE20](v150);
  v26 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v26;
  *(v8 + 10) = 0;
  swift_unknownObjectWeakInit();
  v27 = OBJC_IVAR____TtC9SeymourUI31TVFilterOptionsListDataProvider_modalityDetail;
  v28 = sub_20C135CC4();
  (*(*(v28 - 8) + 56))(&v9[v27], 1, 1, v28);
  *(v9 + 7) = a7;
  *(v9 + 8) = a8;
  v129 = a8;

  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B52E424(v165, (v9 + 88));
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v29 = *(&v165[0] + 1);
  *(v9 + 3) = *&v165[0];
  *(v9 + 4) = v29;
  v30 = *(v19 + 16);
  v143 = v9;
  v30(&v9[OBJC_IVAR____TtC9SeymourUI31TVFilterOptionsListDataProvider_filterRoot], a4, v18);
  v122 = v30;
  v121 = sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v9 + 6) = sub_20C13A914();
  v31 = *(v24 + 16);
  v126 = v24 + 16;
  v127 = v31;
  v31(v26, v142, v150);
  v32 = v151 + 16;
  v33 = *(v151 + 16);
  v34 = v147;
  v33(v145, v141, v147);
  v35 = v33;
  v124 = v33;
  v125 = v32;
  v36 = v18;
  v137 = v18;
  v30(v135, v140, v18);
  v35(v134, v139, v34);
  v37 = *(v152 + 16);
  v119 = v152 + 16;
  v120 = v37;
  v37(v136, v138, v149);
  type metadata accessor for FilterOptionListShelf();
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  swift_unknownObjectWeakInit();

  sub_20C132ED4();
  v39 = (v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_title);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootModality;
  v41 = sub_20C134734();
  (*(*(v41 - 8) + 56))(v38 + v40, 1, 1, v41);
  v42 = v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_row;
  sub_20B5D8060(v165);
  v43 = v165[9];
  *(v42 + 128) = v165[8];
  *(v42 + 144) = v43;
  *(v42 + 160) = v166;
  v44 = v165[5];
  *(v42 + 64) = v165[4];
  *(v42 + 80) = v44;
  v45 = v165[7];
  *(v42 + 96) = v165[6];
  *(v42 + 112) = v45;
  v46 = v165[1];
  *v42 = v165[0];
  *(v42 + 16) = v46;
  v47 = v165[3];
  *(v42 + 32) = v165[2];
  *(v42 + 48) = v47;
  v48 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_bodyFocusProperty;
  v49 = sub_20C135C84();
  v50 = *(*(v49 - 8) + 56);
  v50(v38 + v48, 1, 1, v49);
  v50(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_durationProperty, 1, 1, v49);
  v50(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_equipmentProperty, 1, 1, v49);
  v50(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_genreProperty, 1, 1, v49);
  v50(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_modalityProperty, 1, 1, v49);
  v50(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_skillLevelProperty, 1, 1, v49);
  v50(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_themeProperty, 1, 1, v49);
  v50(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_tipCategoryProperty, 1, 1, v49);
  v50(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_trainerProperty, 1, 1, v49);
  *(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_optionCategories) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20C133AA4();
  sub_20C133AA4();
  v51 = v164[1];
  v52 = (v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_eventHub);
  *v52 = v164[0];
  v52[1] = v51;
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_subscriptionToken) = sub_20C13A914();
  v53 = v129;
  *v39 = v130;
  v39[1] = v53;

  v54 = v135;
  v122(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterRoot, v135, v36);
  v55 = v136;
  v56 = v149;
  v120(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterOptions, v136, v149);
  v127(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filter, v133, v150);
  v57 = v134;
  v58 = v147;
  v59 = v124;
  v124(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootFilterResult, v134, v147);
  v60 = v145;
  v59(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_filterResult, v145, v58);
  v59(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_initialFilterResult, v60, v58);
  v61 = OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_rootModality;
  swift_beginAccess();
  v62 = v131;
  sub_20B52F9E8(v38 + v61, v131, &unk_27C7710A0);
  v153[2] = v54;
  v153[3] = v62;
  v63 = v54;
  v64 = sub_20B5F888C(sub_20BDA25B8, v153, &unk_282287438);

  v65 = *(v152 + 8);
  v152 += 8;
  v144 = v65;
  v65(v55, v56);
  v67 = v151 + 8;
  v66 = *(v151 + 8);
  v66(v57, v58);
  v68 = v145;
  v151 = v67;
  v145 = v66;
  v66(v68, v58);
  v69 = *(v146 + 8);
  v146 += 8;
  v136 = v69;
  (v69)(v133, v150);
  v70 = *(v148 + 8);
  v148 += 8;
  v135 = v70;
  (v70)(v63, v137);
  sub_20B520158(v62, &unk_27C7710A0);
  *(v38 + OBJC_IVAR____TtC9SeymourUI21FilterOptionListShelf_optionCategories) = v64;

  *(v143 + 2) = v38;

  LODWORD(v134) = sub_20C1380F4();
  v71 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v133 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v71 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v72 = sub_20C13C724();
  v73 = type metadata accessor for CatalogPageImpressionTracker();
  v74 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v75 = MEMORY[0x277D221C0];
  v74[2] = sub_20C13C6D4();
  v74[3] = v72;
  v74[4] = v75;
  v164[3] = v73;
  v76 = sub_20BDF9444(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v164[4] = v76;
  v164[0] = v74;
  v77 = type metadata accessor for MetricLocationStore();
  v78 = swift_allocObject();
  v79 = MEMORY[0x277D84F98];
  v80 = MEMORY[0x277D84F90];
  *(v78 + 16) = MEMORY[0x277D84F90];
  *(v78 + 24) = v79;
  v81 = __swift_mutable_project_boxed_opaque_existential_1(v164, v73);
  v82 = MEMORY[0x28223BE20](v81);
  v84 = (&v119 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v85 + 16))(v84, v82);
  v86 = *v84;
  v163[4] = v76;
  v163[3] = v73;
  v163[0] = v86;
  v162[3] = v77;
  v162[4] = &off_2822B6968;
  v162[0] = v78;
  v161[0] = v80;
  sub_20BB5D394(0, 1, 0);
  v87 = v161[0];
  v89 = *(v161[0] + 16);
  v88 = *(v161[0] + 24);
  if (v89 >= v88 >> 1)
  {
    sub_20BB5D394((v88 > 1), v89 + 1, 1);
    v87 = v161[0];
  }

  *(v87 + 16) = v89 + 1;
  v90 = v87 + 24 * v89;
  *(v90 + 32) = v38;
  *(v90 + 40) = &off_2822E4AB0;
  *(v90 + 48) = 0;
  sub_20B51CC64(v163, v161);
  sub_20B51CC64(v162, v160);
  v91 = __swift_mutable_project_boxed_opaque_existential_1(v161, v161[3]);
  v132 = &v119;
  v92 = MEMORY[0x28223BE20](v91);
  v94 = (&v119 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v95 + 16))(v94, v92);
  v96 = __swift_mutable_project_boxed_opaque_existential_1(v160, v160[3]);
  v97 = MEMORY[0x28223BE20](v96);
  v99 = (&v119 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v100 + 16))(v99, v97);
  v101 = *v94;
  v102 = *v99;
  v158 = v73;
  v159 = v76;
  v157[0] = v101;
  v155 = v77;
  v156 = &off_2822B6968;
  v154[0] = v102;
  v103 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v104 = __swift_mutable_project_boxed_opaque_existential_1(v157, v158);
  v105 = MEMORY[0x28223BE20](v104);
  v107 = (&v119 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v108 + 16))(v107, v105);
  v109 = __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  v110 = MEMORY[0x28223BE20](v109);
  v112 = (&v119 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v113 + 16))(v112, v110);
  v114 = sub_20BE3AA74(0xD000000000000011, 0x800000020C1B2D00, v87, v134, v133, *v107, *v112, 2, v103);
  __swift_destroy_boxed_opaque_existential_1(v162);
  __swift_destroy_boxed_opaque_existential_1(v163);
  __swift_destroy_boxed_opaque_existential_1(v154);
  __swift_destroy_boxed_opaque_existential_1(v157);
  __swift_destroy_boxed_opaque_existential_1(v160);
  __swift_destroy_boxed_opaque_existential_1(v161);
  __swift_destroy_boxed_opaque_existential_1(v164);
  v115 = v143;
  *(v143 + 5) = v114;
  swift_getObjectType();
  type metadata accessor for TVFilterRootPropertyUpdated(0);
  sub_20BDF9444(&qword_27C763178, type metadata accessor for TVFilterRootPropertyUpdated);

  sub_20C13A784();

  v144(v138, v149);
  v116 = v147;
  v117 = v145;
  (v145)(v139, v147);
  (v135)(v140, v137);
  v117(v141, v116);
  (v136)(v142, v150);
  __swift_destroy_boxed_opaque_existential_1(v164);
  return v115;
}

uint64_t sub_20BDF9444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BDF948C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVFilterRootPropertyUpdated.PropertyType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BDF94F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v1 + 32))
  {
    if ((*(v1 + 16) & 1) != 0 || (sub_20C1380F4(), v4 = sub_20C138104(), v4 == sub_20C138104()))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F348);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_20C14F320;
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_20C14F980;
      *(v6 + 56) = &type metadata for ActionButtonTemplateItem;
      *(v6 + 64) = &off_28229DB08;
      *(v6 + 32) = 0;
      *(v6 + 40) = 1;
      v7 = type metadata accessor for ActionButtonTemplateGroup();
      *(v5 + 56) = v7;
      *(v5 + 64) = &off_282308AC0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
      boxed_opaque_existential_1[1] = 0;
      boxed_opaque_existential_1[2] = 0;
      *boxed_opaque_existential_1 = 1;
      *(boxed_opaque_existential_1 + 24) = 1;
      sub_20C132ED4();
      v9 = boxed_opaque_existential_1 + v7[8];
      *v9 = 0;
      v9[8] = 1;
      *(boxed_opaque_existential_1 + v7[9]) = v6;
      v10 = v7 + 10;
      *(boxed_opaque_existential_1 + v7[10]) = 2;
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_20C14F980;
      *(v11 + 56) = &type metadata for ActionButtonTemplateItem;
      *(v11 + 64) = &off_28229DB08;
      *(v11 + 32) = 0;
      *(v11 + 40) = 1;
      *(v5 + 96) = v7;
      *(v5 + 104) = &off_282308AC0;
      v12 = __swift_allocate_boxed_opaque_existential_1((v5 + 72));
      v12[1] = 0;
      v12[2] = 0;
      *v12 = 1;
      *(v12 + 24) = 1;
      sub_20C132ED4();
      v13 = v12 + v7[8];
      *v13 = 0;
      v13[8] = 1;
      *(v12 + v7[9]) = v11;
      *(v12 + v7[10]) = 1;
      a1[3] = v7;
      a1[4] = &off_282308AD0;
      v14 = __swift_allocate_boxed_opaque_existential_1(a1);
      *v14 = xmmword_20C157520;
      v14[2] = 0;
      *(v14 + 24) = 1;
      result = sub_20C132ED4();
      v16 = v14 + v7[8];
      *v16 = 0;
      v16[8] = 1;
      *(v14 + v7[9]) = v5;
LABEL_11:
      *(v14 + *v10) = 1;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F348);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_20C14F980;
    *(v19 + 56) = &type metadata for ActionButtonTemplateItem;
    *(v19 + 64) = &off_28229DB08;
    *(v19 + 32) = 0;
    *(v19 + 40) = 1;
    v20 = type metadata accessor for ActionButtonTemplateGroup();
    a1[3] = v20;
    a1[4] = &off_282308AD0;
    v14 = __swift_allocate_boxed_opaque_existential_1(a1);
    *v14 = xmmword_20C157520;
    v14[2] = 0;
    *(v14 + 24) = 1;
    result = sub_20C132ED4();
    v23 = v14 + *(v20 + 32);
    *v23 = 0;
    v23[8] = 1;
LABEL_10:
    *(v14 + *(v20 + 36)) = v19;
    v10 = (v20 + 40);
    goto LABEL_11;
  }

  v17 = *(v1 + 17) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 32);
  v18 = *(v1 + 24);
  if (v18 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F348);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_20C14F980;
    *(v19 + 56) = &type metadata for ActionButtonTemplateItem;
    *(v19 + 64) = &off_28229DB08;
    *(v19 + 32) = 0;
    *(v19 + 40) = 1;
    v20 = type metadata accessor for ActionButtonTemplateGroup();
    a1[3] = v20;
    a1[4] = &off_282308AD0;
    v21 = __swift_allocate_boxed_opaque_existential_1(a1);
    v14 = v21;
    *v21 = v3;
    *(v21 + 7) = BYTE6(v17);
    *(v21 + 5) = WORD2(v17);
    *(v21 + 1) = v17;
    *(v21 + 1) = xmmword_20C152300;
LABEL_9:
    *(v21 + 24) = 1;
    result = sub_20C132ED4();
    v22 = v14 + *(v20 + 32);
    *v22 = 0;
    v22[8] = 1;
    goto LABEL_10;
  }

  if (!v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F348);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_20C14F980;
    *(v19 + 56) = &type metadata for ActionButtonTemplateItem;
    *(v19 + 64) = &off_28229DB08;
    *(v19 + 32) = 0;
    *(v19 + 40) = 1;
    v20 = type metadata accessor for ActionButtonTemplateGroup();
    a1[3] = v20;
    a1[4] = &off_282308AD0;
    v21 = __swift_allocate_boxed_opaque_existential_1(a1);
    v14 = v21;
    *v21 = v3;
    *(v21 + 7) = BYTE6(v17);
    *(v21 + 5) = WORD2(v17);
    *(v21 + 1) = v17;
    v21[1] = 0;
    v21[2] = 0;
    goto LABEL_9;
  }

  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD000000000000038, 0x800000020C1B3D60);
  type metadata accessor for Axis(0);
  sub_20C13DDF4();
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20BDF99DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20BDF9A24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_20BDF9A7C(double a1)
{
  if (a1 < 480.0)
  {
    return 1;
  }

  if (a1 < 568.0)
  {
    return 2;
  }

  if (a1 >= 768.0)
  {
    return 5;
  }

  sub_20B6B2070(&unk_282286DF0);

  if (a1 >= 982.0 || a1 < 727.0)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_20BDF9B24(double a1)
{
  if (a1 < 438.0)
  {
    return 1;
  }

  if (a1 >= 1366.0)
  {
    v2 = 6;
  }

  else
  {
    v2 = 5;
  }

  if (a1 >= 981.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 4;
  }

  if (a1 >= 768.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (a1 >= 568.0)
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t WorkoutSessionConfiguration.init(catalogWorkout:activityTypeBehavior:allowsPictureInPicturePlayback:sessionOrigin:startTime:groupActivity:queueIdentifier:pageContext:planReference:playContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v22 = sub_20C1344C4();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for WorkoutSessionConfiguration();
  v24 = v23[5];
  v25 = sub_20C137254();
  (*(*(v25 - 8) + 32))(a9 + v24, a2, v25);
  *(a9 + v23[6]) = a3;
  sub_20B681E78(a4, a9 + v23[7]);
  *(a9 + v23[8]) = a10;
  sub_20B5DF134(a5, a9 + v23[9], &unk_27C7622A0);
  sub_20B5DF134(a6, a9 + v23[10], &qword_27C76BBB0);
  v26 = (a9 + v23[11]);
  *v26 = a7;
  v26[1] = a8;
  result = sub_20B5DF134(a11, a9 + v23[12], &qword_27C76A410);
  v28 = (a9 + v23[13]);
  *v28 = a12;
  v28[1] = a13;
  return result;
}

uint64_t WorkoutSessionConfiguration.catalogWorkout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C1344C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutSessionConfiguration.activityTypeBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutSessionConfiguration() + 20);
  v4 = sub_20C137254();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutSessionConfiguration.sessionOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutSessionConfiguration() + 28);

  return sub_20B64B624(v3, a1);
}

uint64_t WorkoutSessionConfiguration.pageContext.getter()
{
  v1 = v0 + *(type metadata accessor for WorkoutSessionConfiguration() + 44);
  v2 = *v1;
  sub_20B58C2C8(*v1, *(v1 + 8));
  return v2;
}

uint64_t WorkoutSessionConfiguration.playContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutSessionConfiguration() + 52));

  return v1;
}

uint64_t WorkoutSessionConfiguration.hash(into:)()
{
  v1 = v0;
  v2 = sub_20C135C54();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v29 - v5;
  v6 = sub_20C134A44();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BBB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_20C13BA24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v29 - v16;
  sub_20C1344C4();
  sub_20BDFB47C(&qword_27C76EE30, MEMORY[0x277D50820]);
  sub_20C13C7C4();
  v18 = type metadata accessor for WorkoutSessionConfiguration();
  sub_20C137254();
  sub_20BDFB47C(&qword_27C76EE28, MEMORY[0x277D531E0]);
  sub_20C13C7C4();
  sub_20C13E184();
  sub_20C13A454();
  v19 = *(v0 + v18[8]);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  MEMORY[0x20F2F5910](*&v19);
  sub_20B52F9E8(v0 + v18[9], v17, &unk_27C7622A0);
  if ((*(v12 + 48))(v17, 1, v11) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    sub_20C13E184();
    sub_20BDFB47C(&qword_27C76F350, MEMORY[0x277D4FB20]);
    sub_20C13C7C4();
    (*(v12 + 8))(v14, v11);
  }

  sub_20B52F9E8(v0 + v18[10], v10, &qword_27C76BBB0);
  v21 = v32;
  v20 = v33;
  v22 = (*(v32 + 48))(v10, 1, v33);
  v24 = v35;
  v23 = v36;
  if (v22 == 1)
  {
    sub_20C13E184();
  }

  else
  {
    v25 = v30;
    (*(v21 + 32))(v30, v10, v20);
    sub_20C13E184();
    sub_20BDFB47C(&qword_27C76F358, MEMORY[0x277D50C38]);
    sub_20C13C7C4();
    (*(v21 + 8))(v25, v20);
  }

  sub_20C134FC4();
  sub_20C13CA64();

  v26 = v34;
  sub_20B52F9E8(v1 + v18[12], v34, &qword_27C76A410);
  if ((*(v24 + 48))(v26, 1, v23) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    v27 = v31;
    (*(v24 + 32))(v31, v26, v23);
    sub_20C13E184();
    sub_20BDFB47C(&qword_27C762F50, MEMORY[0x277D51FE0]);
    sub_20C13C7C4();
    (*(v24 + 8))(v27, v23);
  }

  if (!*(v1 + v18[13] + 8))
  {
    return sub_20C13E184();
  }

  sub_20C13E184();
  return sub_20C13CA64();
}

uint64_t WorkoutSessionConfiguration.hashValue.getter()
{
  sub_20C13E164();
  WorkoutSessionConfiguration.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BDFA724()
{
  sub_20C13E164();
  WorkoutSessionConfiguration.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BDFA768()
{
  sub_20C13E164();
  WorkoutSessionConfiguration.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI27WorkoutSessionConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v76 = sub_20C135C54();
  v79 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A410);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v69 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EDF8);
  MEMORY[0x28223BE20](v75);
  v78 = &v69 - v7;
  v8 = sub_20C134A44();
  v82 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v74 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BBB0);
  MEMORY[0x28223BE20](v10 - 8);
  v80 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F368);
  MEMORY[0x28223BE20](v12);
  v81 = &v69 - v13;
  v14 = sub_20C13BA24();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622A0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v69 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F370);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v69 - v23;
  if ((MEMORY[0x20F2EBB60](a1, a2, v22) & 1) == 0)
  {
    return 0;
  }

  v72 = v8;
  v25 = type metadata accessor for WorkoutSessionConfiguration();
  if ((MEMORY[0x20F2EE970](a1 + v25[5], a2 + v25[5]) & 1) == 0 || *(a1 + v25[6]) != *(a2 + v25[6]) || (MEMORY[0x20F2F1BB0](a1 + v25[7], a2 + v25[7]) & 1) == 0 || *(a1 + v25[8]) != *(a2 + v25[8]))
  {
    return 0;
  }

  v69 = v25;
  v70 = a1;
  v26 = v25[9];
  v27 = *(v21 + 48);
  v28 = a1 + v26;
  v29 = v26;
  sub_20B52F9E8(v28, v24, &unk_27C7622A0);
  v71 = a2;
  v30 = a2 + v29;
  v31 = v27;
  sub_20B52F9E8(v30, &v24[v27], &unk_27C7622A0);
  v32 = *(v15 + 48);
  if (v32(v24, 1, v14) == 1)
  {
    if (v32(&v24[v31], 1, v14) == 1)
    {
      sub_20B520158(v24, &unk_27C7622A0);
      goto LABEL_13;
    }

LABEL_11:
    v33 = &qword_27C76F370;
LABEL_19:
    v42 = v24;
LABEL_20:
    sub_20B520158(v42, v33);
    return 0;
  }

  sub_20B52F9E8(v24, v20, &unk_27C7622A0);
  if (v32(&v24[v31], 1, v14) == 1)
  {
    (*(v15 + 8))(v20, v14);
    goto LABEL_11;
  }

  (*(v15 + 32))(v17, &v24[v31], v14);
  sub_20BDFB47C(&qword_27C76F380, MEMORY[0x277D4FB20]);
  v34 = sub_20C13C894();
  v35 = *(v15 + 8);
  v35(v17, v14);
  v35(v20, v14);
  sub_20B520158(v24, &unk_27C7622A0);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v36 = v69[10];
  v37 = *(v12 + 48);
  v24 = v81;
  sub_20B52F9E8(v70 + v36, v81, &qword_27C76BBB0);
  sub_20B52F9E8(v71 + v36, &v24[v37], &qword_27C76BBB0);
  v38 = v82;
  v39 = *(v82 + 48);
  v40 = v72;
  if (v39(v24, 1, v72) == 1)
  {
    if (v39(&v24[v37], 1, v40) == 1)
    {
      sub_20B520158(v24, &qword_27C76BBB0);
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v41 = v80;
  sub_20B52F9E8(v24, v80, &qword_27C76BBB0);
  if (v39(&v24[v37], 1, v40) == 1)
  {
    (*(v38 + 8))(v41, v40);
LABEL_18:
    v33 = &qword_27C76F368;
    goto LABEL_19;
  }

  v44 = &v24[v37];
  v45 = v74;
  (*(v38 + 32))(v74, v44, v40);
  sub_20BDFB47C(&qword_27C76F378, MEMORY[0x277D50C38]);
  v46 = sub_20C13C894();
  v47 = *(v38 + 8);
  v47(v45, v40);
  v47(v41, v40);
  sub_20B520158(v24, &qword_27C76BBB0);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v48 = sub_20C134FC4();
  v50 = v49;
  if (v48 == sub_20C134FC4() && v50 == v51)
  {

    v52 = v78;
    v53 = v79;
    v54 = v77;
  }

  else
  {
    v55 = sub_20C13DFF4();

    v52 = v78;
    v53 = v79;
    v54 = v77;
    if ((v55 & 1) == 0)
    {
      return 0;
    }
  }

  v56 = v69[12];
  v57 = *(v75 + 48);
  sub_20B52F9E8(v70 + v56, v52, &qword_27C76A410);
  sub_20B52F9E8(v71 + v56, v52 + v57, &qword_27C76A410);
  v58 = *(v53 + 48);
  v59 = v76;
  if (v58(v52, 1, v76) != 1)
  {
    sub_20B52F9E8(v52, v54, &qword_27C76A410);
    if (v58(v52 + v57, 1, v59) != 1)
    {
      v60 = v52 + v57;
      v61 = v73;
      (*(v53 + 32))(v73, v60, v59);
      sub_20BDFB47C(&qword_27C7640F0, MEMORY[0x277D51FE0]);
      v62 = sub_20C13C894();
      v63 = *(v53 + 8);
      v63(v61, v59);
      v63(v54, v59);
      sub_20B520158(v52, &qword_27C76A410);
      if ((v62 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_35;
    }

    (*(v53 + 8))(v54, v59);
    goto LABEL_33;
  }

  if (v58(v52 + v57, 1, v59) != 1)
  {
LABEL_33:
    v33 = &qword_27C76EDF8;
    v42 = v52;
    goto LABEL_20;
  }

  sub_20B520158(v52, &qword_27C76A410);
LABEL_35:
  v64 = v69[13];
  v65 = (v70 + v64);
  v66 = *(v70 + v64 + 8);
  v67 = (v71 + v64);
  v68 = v67[1];
  if (v66)
  {
    if (v68 && (*v65 == *v67 && v66 == v68 || (sub_20C13DFF4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v68)
  {
    return 1;
  }

  return 0;
}

void sub_20BDFB2C0()
{
  sub_20C1344C4();
  if (v0 <= 0x3F)
  {
    sub_20C137254();
    if (v1 <= 0x3F)
    {
      sub_20C13A484();
      if (v2 <= 0x3F)
      {
        sub_20BDFB428(319, &qword_281103AC0, MEMORY[0x277D4FB20]);
        if (v3 <= 0x3F)
        {
          sub_20BDFB428(319, &qword_281103BD0, MEMORY[0x277D50C38]);
          if (v4 <= 0x3F)
          {
            sub_20BDFB428(319, &qword_281103B98, MEMORY[0x277D51FE0]);
            if (v5 <= 0x3F)
            {
              sub_20B52CA84();
              if (v6 <= 0x3F)
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

void sub_20BDFB428(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BDFB47C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BDFB4C4()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  v16 = 8.0;
  if (Width / v13 <= 375.0)
  {
    v16 = 6.0;
  }

  if (v14 == result)
  {
    v16 = 10.0;
  }

  qword_27C76F388 = *&v16;
  return result;
}

id sub_20BDFB5D4()
{
  result = [objc_allocWithZone(MEMORY[0x277D753D0]) initWithControlPoint1:0.69 controlPoint2:{0.0, 0.31, 1.0}];
  qword_27C76F390 = result;
  return result;
}

void sub_20BDFB620()
{
  type metadata accessor for SessionTimerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_20C13C914();
  v4 = objc_opt_self();
  v31 = [v4 imageNamed:v3 inBundle:v2 withConfiguration:0];

  v5 = [v1 bundleForClass_];
  v6 = sub_20C13C914();
  v7 = [v4 imageNamed:v6 inBundle:v5 withConfiguration:0];

  v8 = [v1 bundleForClass_];
  v9 = sub_20C13C914();
  v10 = [v4 imageNamed:v9 inBundle:v8 withConfiguration:0];

  v11 = [v1 bundleForClass_];
  v12 = sub_20C13C914();
  v13 = [v4 imageNamed:v12 inBundle:v11 withConfiguration:0];

  sub_20C1380F4();
  v14 = objc_opt_self();
  v15 = [v14 mainScreen];
  [v15 nativeBounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v32.origin.x = v17;
  v32.origin.y = v19;
  v32.size.width = v21;
  v32.size.height = v23;
  Width = CGRectGetWidth(v32);
  v25 = [v14 mainScreen];
  [v25 nativeScale];
  v27 = v26;

  v28 = sub_20C138104();
  v29 = v13;
  if (v28 != sub_20C138104())
  {
    v29 = v31;
    if (Width / v27 > 375.0)
    {
      if (Width / v27 >= 834.0)
      {
        v29 = v10;
      }

      else
      {
        v29 = v7;
      }
    }
  }

  v30 = v29;

  qword_27C76F398 = v29;
}

void sub_20BDFB944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = objc_opt_self();
  v8 = [v7 elapsedTimeColors];
  if (!v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  v10 = [v8 nonGradientTextColor];

  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView;
  [v6 setTintColor_];

  LODWORD(v12) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v6 setContentCompressionResistancePriority:1 forAxis:v13];

  *&v4[v11] = v6;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_20C1380F4();
  v15 = sub_20BA6CE30();
  [v14 setFont_];

  v16 = [v7 elapsedTimeColors];
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = [v16 nonGradientTextColor];

  if (!v18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v19 = OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label;
  [v14 setTextColor_];

  type metadata accessor for UILayoutPriority(0);
  v53 = 1065353216;
  v54 = 1148846080;
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v20) = v55;
  [v14 setContentCompressionResistancePriority:1 forAxis:v20];

  *&v4[v19] = v14;
  *&v4[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_currentRotationAngle] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_presenter] = a1;
  v21 = &v4[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_metricBuilder];
  *v21 = a2;
  *(v21 + 1) = a3;
  v52.receiver = v4;
  v52.super_class = type metadata accessor for SessionTimerView();

  swift_unknownObjectRetain();
  v22 = objc_msgSendSuper2(&v52, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v22 setClipsToBounds_];
  *(a1 + 24) = &off_2822E8D30;
  swift_unknownObjectWeakAssign();
  v23 = OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView;
  v24 = qword_27C760C28;
  v25 = *&v22[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView];
  if (v24 != -1)
  {
    swift_once();
  }

  if (qword_27C76F398)
  {
    v26 = [qword_27C76F398 imageWithRenderingMode_];
  }

  else
  {
    v26 = 0;
  }

  [v25 setImage_];

  [v22 addSubview_];
  v27 = OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label;
  [v22 addSubview_];
  v28 = [*&v22[v23] image];
  if (v28)
  {
    v29 = v28;
    [v28 _contentInsets];
    v31 = v30;
  }

  else
  {
    v31 = 0.0;
  }

  [v22 updateDuration_];
  v49 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C150050;
  v33 = [*&v22[v27] topAnchor];
  v34 = [v22 topAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v32 + 32) = v35;
  v36 = [*&v22[v27] bottomAnchor];
  v37 = [v22 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v32 + 40) = v38;
  v39 = [*&v22[v23] leadingAnchor];
  v40 = [v22 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v32 + 48) = v41;
  v42 = [*&v22[v27] leadingAnchor];
  v43 = [*&v22[v23] trailingAnchor];
  if (qword_27C760C18 != -1)
  {
    swift_once();
  }

  v44 = [v42 constraintEqualToAnchor:v43 constant:*&qword_27C76F388 - v31];

  *(v32 + 56) = v44;
  v45 = [*&v22[v23] centerYAnchor];
  v46 = [v22 centerYAnchor];

  v47 = [v45 constraintEqualToAnchor_];
  *(v32 + 64) = v47;
  sub_20B5E29D0();
  v48 = sub_20C13CC54();

  [v49 activateConstraints_];

  swift_unknownObjectRelease();
}

id sub_20BDFBFEC(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label];
  sub_20BB09A9C(&v5, a1);

  v3 = sub_20C13C914();

  [v2 setText_];

  return [v1 setNeedsLayout];
}

double sub_20BDFC148()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView);
  v2 = [v1 image];
  if (v2)
  {
    v3 = v2;
    [v2 _contentInsets];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  [v1 intrinsicContentSize];
  v7 = v6;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label);
  [v8 intrinsicContentSize];
  if (qword_27C760C18 != -1)
  {
    v12 = v9;
    swift_once();
    v9 = v12;
  }

  v10 = v7 + v9 + *&qword_27C76F388 - v5;
  [v8 intrinsicContentSize];
  return v10;
}

id sub_20BDFC274()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator];
  if (v1)
  {
    [v1 stopAnimation_];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SessionTimerView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20BDFC418(double a1, double a2)
{
  if (a2 > 0.0)
  {
    v3 = a2 / a1 * 360.0 * 0.0174532925;
    *&v2[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_currentRotationAngle] = v3;
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = v3;
    v8[4] = sub_20BDFDEA8;
    v8[5] = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_20B7B548C;
    v8[3] = &block_descriptor_95_0;
    v6 = _Block_copy(v8);
    v7 = v2;

    [v4 animateWithDuration:0 delay:v6 options:0 animations:0.2 completion:0.0];
    _Block_release(v6);
  }
}

id sub_20BDFC550(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView);
  CGAffineTransformMakeRotation(&v4, a2);
  return [v2 setTransform_];
}

void sub_20BDFC5AC(char a1, double a2, double a3)
{
  [v3 updateDuration_];
  v6 = *&v3[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label];
  if (a2 < 1.0 || (a1 & 1) == 0)
  {
    [*&v3[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label] setAlpha_];
    CGAffineTransformMakeScale(&aBlock, 1.0, 1.0);
    [v6 setTransform_];
    v29 = *&v3[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView];
    [v29 setAlpha_];
    CGAffineTransformMakeRotation(&aBlock, *&v3[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_currentRotationAngle]);
    tx = aBlock.tx;
    ty = aBlock.ty;
    v59 = *&aBlock.c;
    *v61 = *&aBlock.a;
    CGAffineTransformMakeScale(&aBlock, 1.0, 1.0);
    v32 = *&aBlock.a;
    v33 = *&aBlock.c;
    v34 = *&aBlock.tx;
    *&aBlock.a = *v61;
    *&aBlock.c = v59;
    aBlock.tx = tx;
    aBlock.ty = ty;
    *&t2.a = v32;
    *&t2.c = v33;
    *&t2.tx = v34;
    CGAffineTransformConcat(&v62, &aBlock, &t2);
    aBlock = v62;
    [v29 setTransform_];
    return;
  }

  [*&v3[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label] setAlpha_];
  CGAffineTransformMakeScale(&aBlock, 0.0, 0.0);
  [v6 setTransform_];
  v7 = *&v3[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView];
  [v7 setAlpha_];
  CGAffineTransformMakeScale(&aBlock, 0.0, 0.0);
  [v7 setTransform_];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = objc_allocWithZone(MEMORY[0x277D75D40]);
  *&aBlock.tx = sub_20BDFDD60;
  *&aBlock.ty = v8;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20B7B548C;
  *&aBlock.d = &block_descriptor_12_4;
  v10 = _Block_copy(&aBlock);

  v11 = [v9 initWithDuration:v10 dampingRatio:0.5 animations:1.0];
  _Block_release(v10);

  if (qword_27C760C20 != -1)
  {
    swift_once();
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:qword_27C76F390 timingParameters:0.416666667];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_20BDFE180;
  *&aBlock.ty = v13;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20B7B548C;
  *&aBlock.d = &block_descriptor_16_1;
  v14 = _Block_copy(&aBlock);

  [v12 addAnimations_];
  _Block_release(v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v12;
  *&aBlock.tx = sub_20BDFE1C4;
  *&aBlock.ty = v16;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20BDFD16C;
  *&aBlock.d = &block_descriptor_23_1;
  v17 = _Block_copy(&aBlock);
  v18 = v12;

  [v11 addCompletion_];
  _Block_release(v17);
  v19 = [objc_allocWithZone(MEMORY[0x277D753D0]) initWithControlPoint1:0.33 controlPoint2:{0.0, 0.67, 1.0}];
  v20 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v19 timingParameters:0.0666666667];
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_20BDFDD8C;
  *&aBlock.ty = v21;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20B7B548C;
  *&aBlock.d = &block_descriptor_27_0;
  v22 = _Block_copy(&aBlock);

  [v20 addAnimations_];
  _Block_release(v22);
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v58 = v18;
  v60 = v20;
  if (v23 < 1)
  {
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v20;
    *&aBlock.tx = sub_20BDFE1C4;
    *&aBlock.ty = v36;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_20BDFD16C;
    *&aBlock.d = &block_descriptor_34_2;
    v37 = _Block_copy(&aBlock);
    v38 = v20;

    [v18 &selRef_handleMainActionButtonTapped];
    _Block_release(v37);
  }

  else
  {
    v24 = sub_20BDFD1C0(v23, 0, v20);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    *&aBlock.tx = sub_20BDFE1C4;
    *&aBlock.ty = v26;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_20BDFD16C;
    *&aBlock.d = &block_descriptor_67_1;
    v27 = _Block_copy(&aBlock);
    v28 = v24;

    [v18 &selRef_handleMainActionButtonTapped];
    _Block_release(v27);
  }

  v39 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v19 timingParameters:0.1];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_20BDFDDBC;
  *&aBlock.ty = v40;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20B7B548C;
  *&aBlock.d = &block_descriptor_38_0;
  v41 = _Block_copy(&aBlock);

  [v39 addAnimations_];
  _Block_release(v41);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v39;
  *&aBlock.tx = sub_20BDFE1C4;
  *&aBlock.ty = v43;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20BDFD16C;
  *&aBlock.d = &block_descriptor_45_2;
  v44 = _Block_copy(&aBlock);
  v57 = v39;

  [v60 &selRef_handleMainActionButtonTapped];
  _Block_release(v44);
  v45 = [objc_allocWithZone(MEMORY[0x277D753D0]) initWithControlPoint1:0.33 controlPoint2:{0.0, 0.31, 1.0}];
  v46 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v45 timingParameters:0.166666667];
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_20BDFDDE4;
  *&aBlock.ty = v47;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20B7B548C;
  *&aBlock.d = &block_descriptor_49;
  v48 = _Block_copy(&aBlock);

  [v46 addAnimations_];
  _Block_release(v48);
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(v50 + 24) = v46;
  *&aBlock.tx = sub_20BDFE1C4;
  *&aBlock.ty = v50;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20BDFD16C;
  *&aBlock.d = &block_descriptor_56;
  v51 = _Block_copy(&aBlock);
  v52 = v46;

  [v57 &selRef_handleMainActionButtonTapped];
  _Block_release(v51);
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_20BDFDDEC;
  *&aBlock.ty = v53;
  *&aBlock.a = MEMORY[0x277D85DD0];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_20BDFD16C;
  *&aBlock.d = &block_descriptor_60_1;
  v54 = _Block_copy(&aBlock);

  [v52 &selRef_handleMainActionButtonTapped];
  _Block_release(v54);
  v55 = *&v3[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator];
  *&v3[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator] = v11;
  v56 = v11;

  [v56 startAnimationAfterDelay_];
}

uint64_t sub_20BDFD16C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_20BDFD1C0(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_27C760C20 != -1)
  {
    swift_once();
  }

  v3 = qword_27C76F390;
  v4 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v5 = v3;
  v6 = [v4 initWithDuration:v5 timingParameters:0.5];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = sub_20BDFDDF4;
  v29 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_20B7B548C;
  v27 = &block_descriptor_71;
  v8 = _Block_copy(&aBlock);

  [v6 addAnimations_];
  _Block_release(v8);
  v9 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v5 timingParameters:0.5];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = sub_20BDFDE1C;
  v29 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_20B7B548C;
  v27 = &block_descriptor_75_0;
  v11 = _Block_copy(&aBlock);

  [v9 addAnimations_];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  v28 = sub_20BDFDE80;
  v29 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_20BDFD16C;
  v27 = &block_descriptor_82_1;
  v14 = _Block_copy(&aBlock);
  v15 = v9;

  [v6 addCompletion_];
  _Block_release(v14);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a1;
  v17[5] = a3;
  v28 = sub_20BDFDE9C;
  v29 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_20BDFD16C;
  v27 = &block_descriptor_89_0;
  v18 = _Block_copy(&aBlock);
  v19 = a3;

  [v15 addCompletion_];
  _Block_release(v18);

  return v6;
}

void sub_20BDFD56C(double a1, CGFloat a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label);

    [v6 setAlpha_];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label);

    CGAffineTransformMakeScale(&v16, a2, a2);
    [v9 setTransform_];
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView);

    [v12 setAlpha_];
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = *(v13 + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView);

    CGAffineTransformMakeScale(&v16, a2, a2);
    [v15 setTransform_];
  }
}

void sub_20BDFD734()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label);

    CGAffineTransformMakeScale(&v6, 1.0, 1.0);
    [v2 setTransform_];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView);

    CGAffineTransformMakeScale(&v6, 1.0, 1.0);
    [v5 setTransform_];
  }
}

void sub_20BDFD848()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator];
    *&Strong[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator] = 0;
  }
}

void sub_20BDFD8A8()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator];
  if (v1)
  {
    [v1 stopAnimation_];
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v7[4] = sub_20BDFDD58;
  v7[5] = v2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20B7B548C;
  v7[3] = &block_descriptor_136;
  v4 = _Block_copy(v7);
  v5 = v0;

  v6 = [v3 initWithDuration:v4 dampingRatio:0.5 animations:0.75];
  _Block_release(v4);
  [v6 startAnimation];

  *&v5[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_currentRotationAngle] = 0;
}

id sub_20BDFD9E0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label);
  [v2 setAlpha_];
  v3 = *(a1 + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView);
  [v3 setAlpha_];
  CGAffineTransformMakeScale(&v5, 0.001, 0.001);
  [v2 setTransform_];
  CGAffineTransformMakeScale(&v5, 0.001, 0.001);
  return [v3 setTransform_];
}

void sub_20BDFDAC0(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label);

    [v4 setAlpha_];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView);

    [v7 setAlpha_];
  }
}

void sub_20BDFDBA0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator);
    *(Strong + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator) = a3;
    v6 = Strong;
    v7 = a3;

    [v7 startAnimation];
  }
}

void sub_20BDFDC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (__OFADD__(a3, 1))
    {
      __break(1u);
    }

    else
    {
      v9 = Strong;
      if (a3 + 1 >= a4)
      {
        v13 = *(Strong + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator);
        *(Strong + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator) = a5;
        v14 = a5;

        [v14 startAnimation];
      }

      else
      {
        v10 = sub_20BDFD1C0(a4);
        v11 = *&v9[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator];
        *&v9[OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator] = v10;
        v12 = v10;

        [v12 startAnimation];
      }
    }
  }
}

uint64_t objectdestroy_19Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_20BDFDEB4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = objc_opt_self();
  v3 = [v2 elapsedTimeColors];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = [v3 nonGradientTextColor];

  if (!v5)
  {
    __break(1u);
  }

  v6 = OBJC_IVAR____TtC9SeymourUI16SessionTimerView_timerIconView;
  [v1 setTintColor_];

  LODWORD(v7) = 1148846080;
  [v1 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v8];

  *(v0 + v6) = v1;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_20C1380F4();
  v10 = sub_20BA6CE30();
  [v9 setFont_];

  v11 = [v2 elapsedTimeColors];
  if (!v11)
  {
    __break(1u);
  }

  v12 = v11;
  v13 = [v11 nonGradientTextColor];

  if (!v13)
  {
    __break(1u);
  }

  v14 = OBJC_IVAR____TtC9SeymourUI16SessionTimerView_label;
  [v9 setTextColor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v15) = v16;
  [v9 setContentCompressionResistancePriority:1 forAxis:v15];

  *(v0 + v14) = v9;
  *(v0 + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_animator) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI16SessionTimerView_currentRotationAngle) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BDFE1D8(uint64_t a1, int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BDFE5F0(a2);
  }

  return result;
}

uint64_t sub_20BDFE238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = sub_20C134EC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenreFilterUpdated();
  MEMORY[0x28223BE20](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_coordinator);

    v24[1] = *(v16 + 24);
    swift_unknownObjectRetain();

    v17 = *(v9 + 16);
    v25 = v8;
    v17(v11, a3, v8);
    sub_20B52F9E8(a1, v7, &qword_27C764AA0);
    v18 = sub_20C1333E4();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_20B520158(v7, &qword_27C764AA0);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = sub_20C1333B4();
      v21 = v22;
      (*(v19 + 8))(v7, v18);
    }

    swift_getObjectType();
    (*(v9 + 32))(v14, v11, v25);
    v23 = &v14[*(v12 + 20)];
    *v23 = v20;
    v23[1] = v21;
    sub_20BDFF504(&qword_27C7667B8, type metadata accessor for GenreFilterUpdated);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return sub_20BDFF4A8(v14);
  }

  return result;
}

uint64_t sub_20BDFE568(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FE08(v3, a1, Strong);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

char *sub_20BDFE5F0(int a1)
{
  v85 = sub_20C13BB84();
  v3 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x28223BE20](v6);
  v79 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_20C132EE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x28223BE20](v12);
  v82 = &v69 - v13;
  if ((sub_20BF7A8FC(6, v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_rootModality) & 1) == 0)
  {
    sub_20C13B534();
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v101[0] = v26;
      *v25 = 136446210;
      v27 = sub_20C1368A4();
      v29 = sub_20B51E694(v27, v28, v101);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20B517000, v23, v24, "Unsupported property type: %{public}s. Aborting row creation.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    return (*(v3 + 8))(v5, v85);
  }

  v71 = a1;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_coordinator);
  v15 = *(*(v14 + *(*v14 + 224)) + 16);
  v85 = v1;
  v16 = (v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v17 = sub_20C138D34();
  v19 = sub_20BC74F50(v17, v18, 0x636973756DLL, 0xE500000000000000, v14, v15);

  if ((*(v14 + *(*v14 + 200)) & 8) != 0)
  {
    v20 = 0;
    v22 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v20 = sub_20C138D34();
    v22 = v21;
  }

  v91 = 0uLL;
  LOBYTE(v92) = 1;
  *(&v92 + 1) = 0;
  *&v93 = 0;
  WORD4(v93) = 128;
  v94 = 0uLL;
  v95 = xmmword_20C17EB70;
  *&v96 = v20;
  *(&v96 + 1) = v22;
  LOBYTE(v97) = 0;
  *(&v97 + 1) = v19;
  v98 = MEMORY[0x277D84F90];
  *&v99 = 0;
  *(&v99 + 1) = v20;
  *v100 = v22;
  *&v100[8] = xmmword_20C150190;
  nullsub_1(&v91);
  v31 = v85 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row;
  v32 = *(v85 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 144);
  v101[8] = *(v85 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 128);
  v101[9] = v32;
  v102 = *(v85 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 160);
  v33 = *(v85 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 80);
  v101[4] = *(v85 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 64);
  v101[5] = v33;
  v34 = *(v85 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 112);
  v101[6] = *(v85 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 96);
  v101[7] = v34;
  v35 = *(v85 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 16);
  v101[0] = *(v85 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row);
  v101[1] = v35;
  v36 = *(v85 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 48);
  v101[2] = *(v85 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 32);
  v101[3] = v36;
  v37 = *v100;
  *(v31 + 128) = v99;
  *(v31 + 144) = v37;
  *(v31 + 160) = *&v100[16];
  v38 = v96;
  *(v31 + 64) = v95;
  *(v31 + 80) = v38;
  v39 = v98;
  *(v31 + 96) = v97;
  *(v31 + 112) = v39;
  v40 = v92;
  *v31 = v91;
  *(v31 + 16) = v40;
  v41 = v94;
  *(v31 + 32) = v93;
  *(v31 + 48) = v41;

  sub_20B520158(v101, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    return swift_unknownObjectRelease();
  }

  v70 = result;
  if (![*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
LABEL_27:
    sub_20C0C2D50(0);
    return swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v42 = v82;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v43 = v84;
  v44 = sub_20C13BE74();
  result = (*(v83 + 8))(v42, v43);
  v82 = v44;
  v78 = *(v44 + 16);
  if (!v78)
  {
LABEL_25:

    goto LABEL_27;
  }

  v45 = 0;
  v76 = v82 + 32;
  v77 = OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_identifier;
  v74 = (v9 + 8);
  v75 = (v9 + 16);
  while (2)
  {
    if (v45 < *(v82 + 2))
    {
      v46 = &v76[24 * v45];
      v47 = v46[1];
      v73 = *v46;
      v48 = v46[2];
      v83 = v45 + 1;
      (*v75)(v11, v85 + v77, v8);
      v49 = *(v47 + 16);

      v84 = v48;

      v50 = 0;
      do
      {
        if (v49 == v50)
        {
          (*v74)(v11, v8);
          goto LABEL_15;
        }

        v51 = v50 + 1;
        sub_20BDFF504(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v52 = sub_20C13C894();
        v50 = v51;
      }

      while ((v52 & 1) == 0);
      (*v74)(v11, v8);
      v53 = *(v31 + 128);
      v54 = *(v31 + 144);
      v55 = *(v31 + 96);
      v87[7] = *(v31 + 112);
      v88 = v53;
      v89 = v54;
      v90 = *(v31 + 160);
      v56 = *(v31 + 80);
      v87[4] = *(v31 + 64);
      v87[5] = v56;
      v87[6] = v55;
      v57 = *(v31 + 16);
      v87[0] = *v31;
      v87[1] = v57;
      v58 = *(v31 + 48);
      v87[2] = *(v31 + 32);
      v87[3] = v58;
      v59 = sub_20B5EAF8C(v87);
      if (v59 == 1)
      {
        v60 = 0;
        v61 = 0;
      }

      else
      {
        v60 = *(&v88 + 1);
        v61 = v89;
      }

      v62 = v84;
      v72 = &v69;
      v86[0] = v60;
      v86[1] = v61;
      MEMORY[0x28223BE20](v59);
      *(&v69 - 2) = v86;
      v63 = sub_20B796758(sub_20B5EAFA4, (&v69 - 4), v62);

      if ((v63 & 1) == 0)
      {
LABEL_15:

        v45 = v83;
        if (v83 == v78)
        {
          goto LABEL_25;
        }

        continue;
      }

      sub_20B5E2E18();
      v64 = sub_20C13D374();
      v66 = v79;
      v65 = v80;
      *v79 = v64;
      v67 = v81;
      (*(v65 + 104))(v66, *MEMORY[0x277D85200], v81);
      v68 = sub_20C13C584();
      result = (*(v65 + 8))(v66, v67);
      if ((v68 & 1) == 0)
      {
        goto LABEL_36;
      }

      if ((v71 & 0x80) != 0)
      {
        sub_20C10CC6C(v85, v73, v71 & 1, v70);
      }

      else
      {
        sub_20B61F714(v73, v47, v84, v85, v71 & 1, v70);
      }

      return swift_unknownObjectRelease();
    }

    break;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_20BDFEF94()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_rootModality, &unk_27C7710A0);
  v3 = OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_storefrontLocalizer);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MusicGenreFilterOptionsShelf()
{
  result = qword_27C76F3D0;
  if (!qword_27C76F3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BDFF15C()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B723EF4();
    if (v1 <= 0x3F)
    {
      sub_20C134EC4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20BDFF28C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BDFF304@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI28MusicGenreFilterOptionsShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BDFF4A8(uint64_t a1)
{
  v2 = type metadata accessor for GenreFilterUpdated();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BDFF504(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_20BDFF54C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_onItemTapped];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_displays] = MEMORY[0x277D84F90];
  v11 = OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_stackView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_items] = v10;
  v35.receiver = v4;
  v35.super_class = type metadata accessor for WeekdayPickerView();
  v13 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_stackView;
  v15 = *&v13[OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_stackView];
  v16 = v13;
  [v15 setAlignment_];
  [*&v13[v14] setAxis_];
  [*&v13[v14] setDistribution_];
  v17 = *&v13[v14];
  v18 = v16;
  [v18 addSubview_];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20C14FE90;
  v21 = [*&v13[v14] leadingAnchor];
  v22 = [v18 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v20 + 32) = v23;
  v24 = [*&v13[v14] trailingAnchor];
  v25 = [v18 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor_];
  *(v20 + 40) = v26;
  v27 = [*&v13[v14] topAnchor];
  v28 = [v18 topAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v20 + 48) = v29;
  v30 = [*&v13[v14] bottomAnchor];
  v31 = [v18 bottomAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v20 + 56) = v32;
  sub_20B51C88C(0, &qword_281100500);
  v33 = sub_20C13CC54();

  [v19 activateConstraints_];

  return v18;
}

void sub_20BDFF910()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for WeekdayPickerView();
  objc_msgSendSuper2(&v9, sel_tintColorDidChange);
  v1 = OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_displays;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 32);
    while (v4 < *(v2 + 16))
    {
      v6 = *v5;
      swift_unknownObjectRetain();
      v7 = [v0 tintColor];
      if (!v7)
      {
        goto LABEL_8;
      }

      v8 = v7;
      ++v4;
      [v6 setTintColor_];
      swift_unknownObjectRelease();

      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

void sub_20BDFFA64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_items;
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_items];

  v5 = sub_20BB81298(a1, v4);

  if (!v5)
  {
    *&v1[v3] = a1;

    v6 = *(a1 + 16);
    v7 = [*&v1[OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_stackView] arrangedSubviews];
    sub_20B51C88C(0, &qword_27C762910);
    v8 = sub_20C13CC74();

    if (v8 >> 62)
    {
      goto LABEL_11;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C13DB34())
    {

      if (__OFSUB__(v6, i))
      {
        break;
      }

      sub_20BDFFD60(v6 - i);
      if (!v6)
      {
        return;
      }

      v10 = 0;
      v11 = a1 + 41;
      while ((v6 & ~(v6 >> 63)) != v10)
      {
        a1 = *(v11 - 1);
        v12 = *(v11 - 9);
        sub_20BDFFBD0(v10, v12, a1, v1);

        v11 += 16;
        if (v6 == ++v10)
        {
          return;
        }
      }

      __break(1u);
LABEL_11:
      ;
    }

    __break(1u);
  }
}

void sub_20BDFFBD0(unint64_t a1, char *a2, __int16 a3, char *a4)
{
  v8 = OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_displays;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(*&a4[v8] + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  sub_20BD05924(a2, a3);
  swift_unknownObjectRelease();
  v9 = *&a4[v8];
  if (*(v9 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *&a4[OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_onItemTapped];
  v11 = *&a4[OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_onItemTapped + 8];
  v12 = (*(v9 + 16 * a1 + 32) + OBJC_IVAR____TtC9SeymourUI13WeekdayButton_onTap);
  v13 = *v12;
  *v12 = v10;
  v12[1] = v11;
  swift_unknownObjectRetain();
  sub_20B584050(v10);
  sub_20B583ECC(v13);
  swift_unknownObjectRelease();
  v14 = *&a4[v8];
  if (*(v14 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = *(v14 + 16 * a1 + 32);

  swift_unknownObjectRetain();
  v16 = [a4 tintColor];
  if (v16)
  {
    v17 = v16;

    [v15 setTintColor_];
    swift_unknownObjectRelease();

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_20BDFFD60(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    if (a1 < 1)
    {
      v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_stackView);
      v14 = [v13 arrangedSubviews];
      sub_20B51C88C(0, &qword_27C762910);
      v15 = sub_20C13CC74();

      sub_20BCC85A8(v2, v15);
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = v21 >> 1;
      v23 = (v21 >> 1) - v19;
      if (v23)
      {
        v24 = OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_displays;
        if (v19 > v22)
        {
          v22 = v19;
        }

        v25 = v22 - v19;
        v26 = (v17 + 8 * v19);
        while (v25)
        {
          v27 = *v26;
          [v13 removeArrangedSubview_];
          [v27 removeFromSuperview];
          swift_beginAccess();
          v28 = *(v1 + v24);
          if (!v28[2])
          {
            goto LABEL_25;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v1 + v24) = v28;
          if (isUniquelyReferenced_nonNull_native)
          {
            v30 = v28[2];
            if (!v30)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v28 = sub_20BF90878(v28);
            v30 = v28[2];
            if (!v30)
            {
LABEL_23:
              __break(1u);
              break;
            }
          }

          v28[2] = v30 - 1;
          *(v1 + v24) = v28;
          swift_endAccess();

          swift_unknownObjectRelease();
          --v25;
          ++v26;
          if (!--v23)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
      }

      else
      {
LABEL_11:
        swift_unknownObjectRelease();
      }
    }

    else
    {
      type metadata accessor for WeekdayButton();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_stackView);
      v5 = OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_displays;
      do
      {
        v6 = [ObjCClassFromMetadata buttonWithType_];
        [v6 setTranslatesAutoresizingMaskIntoConstraints_];
        [v4 addArrangedSubview_];
        swift_beginAccess();
        v7 = *(v1 + v5);
        v8 = v6;
        v9 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v5) = v7;
        if ((v9 & 1) == 0)
        {
          v7 = sub_20BC058FC(0, v7[2] + 1, 1, v7);
          *(v1 + v5) = v7;
        }

        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          v7 = sub_20BC058FC((v10 > 1), v11 + 1, 1, v7);
        }

        v7[2] = v11 + 1;
        v12 = &v7[2 * v11];
        v12[4] = v8;
        v12[5] = &off_2822DF2C8;
        *(v1 + v5) = v7;
        swift_endAccess();

        --v2;
      }

      while (v2);
    }
  }
}

id sub_20BE0003C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeekdayPickerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BE00104()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_onItemTapped);
  *v1 = 0;
  v1[1] = 0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_displays) = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_stackView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI17WeekdayPickerView_items) = v2;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20BE001E0(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v9 - 8);
  v143 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v137 - v12;
  *&v4[OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_itemInfo;
  v15 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageView;
  v17 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v16] = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageViewBackground;
  v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v18] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_pickerButton;
  type metadata accessor for MenuPickerButton();
  v21 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v20] = v21;
  v22 = &v4[OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_styleProvider];
  sub_20BE02820(v151);
  sub_20C13D514();
  v23 = v151[3];
  *(v22 + 2) = v151[2];
  *(v22 + 3) = v23;
  *(v22 + 4) = v151[4];
  v24 = v152;
  v25 = v151[1];
  *v22 = v151[0];
  *(v22 + 1) = v25;
  *(v22 + 10) = v24;
  *(v22 + 11) = 0x4030000000000000;
  *(v22 + 12) = v26;
  *(v22 + 13) = v27;
  *(v22 + 7) = xmmword_20C17ECD0;
  *(v22 + 8) = xmmword_20C17ECE0;
  *(v22 + 9) = xmmword_20C17ECE0;
  v28 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_titleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v28] = v29;
  v30 = type metadata accessor for ActivityPickerCell();
  v150.receiver = v4;
  v150.super_class = v30;
  v31 = objc_msgSendSuper2(&v150, sel_initWithFrame_, a1, a2, a3, a4);
  v32 = [v31 contentView];
  v33 = [objc_opt_self() systemGray5Color];
  [v32 setBackgroundColor_];

  v34 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageViewBackground;
  v35 = &v31[OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_styleProvider];
  v36 = *&v31[OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_styleProvider];
  v37 = *&v31[OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageViewBackground];
  v38 = v36;
  v39 = [v31 traitCollection];

  v40 = sub_20C13D3B4();
  v41 = [v38 resolvedColorWithTraitCollection_];

  [v37 setBackgroundColor_];
  v42 = [*&v31[v34] layer];
  [v42 setCornerRadius_];

  v43 = [v31 contentView];
  v144 = v34;
  [v43 addSubview_];

  v44 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageView;
  [*&v31[OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageView] setContentMode_];
  [*&v31[v44] setTintColor_];
  v45 = [v31 contentView];
  v142 = v44;
  [v45 addSubview_];

  v46 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_pickerButton;
  [*&v31[OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_pickerButton] setContentHorizontalAlignment_];
  [*&v31[v46] setTintColor_];
  v47 = *(v35 + 2);
  v48 = *&v31[v46];
  v49 = v47;
  sub_20C13D884();
  v50 = sub_20C13D874();
  if (!(*(*(v50 - 8) + 48))(v13, 1, v50))
  {
    v51 = v49;
    sub_20C13D774();
  }

  sub_20B52F9E8(v13, v143, &qword_27C764C60);
  sub_20C13D894();

  sub_20B520158(v13, &qword_27C764C60);
  v52 = *&v31[v46];
  v53 = *(v35 + 2);
  v54 = v46;
  v146 = v46;
  v55 = *&v52[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textForegroundColor];
  *&v52[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textForegroundColor] = v53;
  v56 = v53;
  v57 = v52;

  [v57 setNeedsUpdateConfiguration];
  v58 = v35;
  v145 = v35;
  v59 = *&v31[v54];
  v60 = *(v58 + 4);
  v61 = *(v58 + 5);
  v62 = *(v58 + 6);
  v63 = *(v58 + 7);
  v64 = *(v58 + 8);
  v65 = *(v58 + 9);
  v66 = *(v58 + 10);
  v67 = &v59[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textFontDescriptor];
  v68 = *&v59[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textFontDescriptor + 8];
  v143 = *&v59[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textFontDescriptor];
  v69 = *&v59[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textFontDescriptor + 24];
  v141 = *&v59[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textFontDescriptor + 16];
  v140 = v69;
  v70 = *&v59[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textFontDescriptor + 40];
  v139 = *&v59[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textFontDescriptor + 32];
  v138 = v70;
  v137 = *&v59[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textFontDescriptor + 48];
  *v67 = v60;
  *(v67 + 1) = v61;
  *(v67 + 2) = v62;
  *(v67 + 3) = v63;
  *(v67 + 4) = v64;
  *(v67 + 5) = v65;
  *(v67 + 6) = v66;
  sub_20B81F7A8(v60, v61, v62, v63, v64, v65);
  sub_20B81F7A8(v60, v61, v62, v63, v64, v65);
  v71 = v59;
  sub_20B81F800(v143, v68, v141, v140, v139, v138);
  [v71 setNeedsUpdateConfiguration];
  sub_20B786774(v60, v61, v62, v63, v64, v65);

  v72 = [v31 contentView];
  [v72 addSubview_];

  v73 = v145;
  v74 = v145[12] * 0.707106781;
  v75 = v145[13] * 0.707106781;
  v143 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_20C1530F0;
  v77 = [v31 &selRef_setMaximumFractionDigits_];
  v78 = [v77 heightAnchor];

  v79 = [v78 constraintGreaterThanOrEqualToConstant_];
  *(v76 + 32) = v79;
  v80 = v144;
  v81 = [*&v31[v144] leadingAnchor];
  v82 = [v31 &selRef_setMaximumFractionDigits_];
  v83 = [v82 leadingAnchor];

  v84 = [v81 constraintEqualToAnchor:v83 constant:v73[11]];
  *(v76 + 40) = v84;
  v85 = [*&v31[v80] widthAnchor];
  v86 = [v85 constraintEqualToConstant_];

  *(v76 + 48) = v86;
  v87 = [*&v31[v80] topAnchor];
  v88 = [v31 &selRef_setMaximumFractionDigits_];
  v89 = [v88 &selRef_setLineBreakMode_];

  v90 = [v87 &selRef_passwordEntryCancelledHandler + 6];
  *(v76 + 56) = v90;
  v91 = [*&v31[v80] bottomAnchor];
  v92 = [v31 &selRef_setMaximumFractionDigits_];
  v93 = [v92 &selRef_secondaryLabel + 5];

  v94 = [v91 &selRef_passwordEntryCancelledHandler + 6];
  type metadata accessor for UILayoutPriority(0);
  v147 = 1065353216;
  v148 = 1148846080;
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v95) = v149;
  [v94 setPriority_];
  *(v76 + 64) = v94;
  v96 = [*&v31[v80] centerYAnchor];
  v97 = [v31 contentView];
  v98 = [v97 &selRef_setNumberOfTapsRequired_];

  v99 = [v96 constraintEqualToAnchor_];
  v147 = 1065353216;
  v148 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v100) = v149;
  [v99 setPriority_];
  *(v76 + 72) = v99;
  v101 = [*&v31[v80] heightAnchor];
  v102 = [v101 constraintEqualToConstant_];

  *(v76 + 80) = v102;
  v103 = v142;
  v104 = [*&v31[v142] centerXAnchor];
  v105 = [*&v31[v80] centerXAnchor];
  v106 = [v104 constraintEqualToAnchor_];

  *(v76 + 88) = v106;
  v107 = [*&v31[v103] widthAnchor];
  v108 = [v107 constraintEqualToConstant_];

  *(v76 + 96) = v108;
  v109 = [*&v31[v103] centerYAnchor];
  v110 = [*&v31[v80] centerYAnchor];
  v111 = [v109 constraintEqualToAnchor_];

  *(v76 + 104) = v111;
  v112 = [*&v31[v103] heightAnchor];
  v113 = [v112 constraintEqualToConstant_];

  *(v76 + 112) = v113;
  v114 = v146;
  v115 = [*&v31[v146] leadingAnchor];
  v116 = [*&v31[v80] trailingAnchor];
  v117 = v145;
  v118 = [v115 constraintEqualToAnchor:v116 constant:v145[17]];

  *(v76 + 120) = v118;
  v119 = [*&v31[v114] trailingAnchor];
  v120 = [v31 contentView];
  v121 = [v120 trailingAnchor];

  v122 = [v119 constraintEqualToAnchor:v121 constant:-v117[11]];
  *(v76 + 128) = v122;
  v123 = [*&v31[v114] centerYAnchor];
  v124 = [v31 contentView];
  v125 = [v124 centerYAnchor];

  v126 = [v123 constraintEqualToAnchor_];
  *(v76 + 136) = v126;
  v127 = [*&v31[v114] topAnchor];
  v128 = [v31 contentView];
  v129 = [v128 topAnchor];

  v130 = [v127 constraintEqualToAnchor:v129 constant:v117[16]];
  *(v76 + 144) = v130;
  v131 = [*&v31[v114] bottomAnchor];
  v132 = [v31 contentView];

  v133 = [v132 bottomAnchor];
  v134 = [v131 constraintEqualToAnchor:v133 constant:-v117[18]];

  *(v76 + 152) = v134;
  sub_20B51C88C(0, &qword_281100500);
  v135 = sub_20C13CC54();

  [v143 activateConstraints_];

  return v31;
}

void sub_20BE012BC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v16 = *a3;
      v15 = a3[1];
      v25 = a3[2];
      v17 = v25;
      v26 = v15;
      *v10 = v16;
      v10[1] = v15;
      v10[2] = v17;
      v18 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v18);
      *(&v23 - 4) = 0;
      *(&v23 - 24) = 1;
      *(&v23 - 2) = v10;
      *(&v23 - 1) = v14;
      v19 = *(v14 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      sub_20BE027C4(&v26, v24);
      sub_20BE027C4(&v25, v24);
      v20 = v12;
      v21 = [v19 indexPathForCell_];
      if (v21)
      {
        v22 = v21;
        sub_20C1331E4();

        sub_20C0C1CDC(v7, sub_20B5E275C);
        (*(v5 + 8))(v7, v4);
      }

      swift_unknownObjectRelease();

      sub_20B5E2760(v10);
    }

    else
    {
    }
  }
}

id sub_20BE0151C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPickerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityPickerCell()
{
  result = qword_281103188;
  if (!qword_281103188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BE0167C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BE01734()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E2A84);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t sub_20BE01960(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_20BE019A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BE01A20(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BE01A6C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20BE01AD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BE01B38(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) != 4)
  {
    sub_20C13B534();

    v23 = v1;
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v92 = a1;
      v93 = v89;
      *v26 = 138543874;
      *(v26 + 4) = v23;
      *v27 = v23;
      *(v26 + 12) = 2160;
      *(v26 + 14) = 1752392040;
      *(v26 + 22) = 2080;
      v28 = sub_20B5F66D0();
      v29 = v23;
      v30 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v28);
      v32 = sub_20B51E694(v30, v31, &v93);

      *(v26 + 24) = v32;
      _os_log_impl(&dword_20B517000, v24, v25, "Attempted to configure %{public}@ with item: %{mask.hash}s", v26, 0x20u);
      sub_20B520158(v27, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      v33 = v89;
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x20F2F6A40](v33, -1, -1);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return;
  }

  v89 = v1;
  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v84[2] = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
  v10 = MEMORY[0x277D84F90];
  v93 = MEMORY[0x277D84F90];
  v11 = *(v7 + 16);

  v84[1] = v8;

  v86 = v9;
  v87 = v7;
  v85 = v11;
  if (v11)
  {
    v12 = 0;
    v13 = (v7 + 72);
    while (v12 < *(v87 + 16))
    {
      v14 = *(v13 - 32);
      v16 = *(v13 - 1);
      v15 = *v13;
      v17 = *(v13 - 2);
      v88 = *(v13 - 3);
      v18 = *(v13 - 5);
      swift_bridgeObjectRetain_n();

      sub_20B9C7E94(v18);
      v19 = sub_20C13C914();

      v20 = [objc_opt_self() smm:v19 systemImageNamed:?];

      v11 = [v20 imageWithRenderingMode_];
      sub_20B51C88C(0, &qword_27C7713A0);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v21;
      *(v22 + 24) = v18;
      *(v22 + 32) = v14;
      *(v22 + 40) = v88;
      *(v22 + 48) = v17;
      *(v22 + 56) = v16;
      *(v22 + 64) = v15;
      sub_20C13D624();
      MEMORY[0x20F2F43B0]();
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      ++v12;
      sub_20C13CCE4();
      v13 += 6;
      if (v85 == v12)
      {
        v34 = v93;
        v9 = v86;
        v7 = v87;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_13;
      }
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v34 = v10;
LABEL_13:
  v84[0] = v34;
  v93 = v10;
  v85 = *(v9 + 16);
  if (v85)
  {
    v35 = 0;
    v12 = v9 + 72;
    while (v35 < *(v86 + 16))
    {
      v36 = *(v12 - 32);
      v38 = *(v12 - 8);
      v37 = *v12;
      v11 = *(v12 - 16);
      v88 = *(v12 - 24);
      v39 = *(v12 - 40);
      swift_bridgeObjectRetain_n();

      sub_20B9C7E94(v39);
      v40 = sub_20C13C914();

      v41 = [objc_opt_self() smm:v40 systemImageNamed:?];

      v42 = [v41 imageWithRenderingMode_];
      sub_20B51C88C(0, &qword_27C7713A0);
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v43;
      *(v44 + 24) = v39;
      *(v44 + 32) = v36;
      *(v44 + 33) = v92;
      *(v44 + 36) = *(&v92 + 3);
      *(v44 + 40) = v88;
      *(v44 + 48) = v11;
      *(v44 + 56) = v38;
      *(v44 + 64) = v37;
      sub_20C13D624();
      MEMORY[0x20F2F43B0]();
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      ++v35;
      sub_20C13CCE4();
      v12 += 48;
      if (v85 == v35)
      {
        v12 = v93;
        v9 = v86;
        v7 = v87;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = v10;
LABEL_21:
  v90 = v7;
  v91 = v9;
  v45 = *(v7 + 16);
  v46 = *(v10 + 16);
  v47 = v46 + v45;
  if (__OFADD__(v46, v45))
  {
    goto LABEL_69;
  }

  v48 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v47 > *(v48 + 3) >> 1)
  {
    if (v46 <= v47)
    {
      v50 = v46 + v45;
    }

    else
    {
      v50 = v46;
    }

    v48 = sub_20BC057DC(isUniquelyReferenced_nonNull_native, v50, 1, MEMORY[0x277D84F90]);
  }

  if (*(v87 + 16))
  {
    if ((*(v48 + 3) >> 1) - *(v48 + 2) < v45)
    {
      goto LABEL_71;
    }

    swift_arrayInitWithCopy();

    v51 = *(v48 + 2);
    if (v45)
    {
      v52 = __OFADD__(v51, v45);
      v51 += v45;
      if (v52)
      {
        goto LABEL_74;
      }

      *(v48 + 2) = v51;
    }
  }

  else
  {

    if (v45)
    {
      goto LABEL_70;
    }

    v51 = *(v48 + 2);
  }

  v53 = *(v9 + 16);
  v54 = v51 + v53;
  if (__OFADD__(v51, v53))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v55 = swift_isUniquelyReferenced_nonNull_native();
  if (v55 && v54 <= *(v48 + 3) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_39;
    }

    goto LABEL_47;
  }

  if (v51 <= v54)
  {
    v58 = v51 + v53;
  }

  else
  {
    v58 = v51;
  }

  v48 = sub_20BC057DC(v55, v58, 1, v48);
  if (!*(v9 + 16))
  {
LABEL_47:

    if (!v53)
    {
LABEL_48:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76F408);
      swift_arrayDestroy();
      v11 = 0;
      v59 = *(v48 + 2);
      v60 = MEMORY[0x277D84F90];
LABEL_49:
      v61 = 48 * v11;
      while (v59 != v11)
      {
        if (v11 >= *(v48 + 2))
        {
          __break(1u);
          goto LABEL_67;
        }

        ++v11;
        v62 = v61 + 48;
        v63 = v48[v61 + 40];
        v61 += 48;
        if (v63)
        {
          v64 = *&v48[v62 - 16];
          v66 = *&v48[v62];
          v65 = *&v48[v62 + 8];
          v68 = *&v48[v62 + 16];
          v67 = *&v48[v62 + 24];

          v69 = swift_isUniquelyReferenced_nonNull_native();
          v93 = v60;
          v87 = v64;
          v88 = v12;
          if ((v69 & 1) == 0)
          {
            sub_20BB5D450(0, v60[2] + 1, 1);
            v60 = v93;
          }

          v71 = v60[2];
          v70 = v60[3];
          if (v71 >= v70 >> 1)
          {
            sub_20BB5D450((v70 > 1), v71 + 1, 1);
            v60 = v93;
          }

          v60[2] = v71 + 1;
          v72 = &v60[6 * v71];
          v12 = v88;
          v72[4] = v87;
          *(v72 + 40) = 1;
          v72[6] = v66;
          v72[7] = v65;
          v72[8] = v68;
          v72[9] = v67;
          goto LABEL_49;
        }
      }

      if (v60[2])
      {
        v73 = v60[4];

        v11 = v89;
        v74 = *&v89[OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageView];
        sub_20B9C7E94(v73);
        v75 = sub_20C13C914();

        v76 = [objc_opt_self() smm:v75 systemImageNamed:?];

        v77 = [v76 imageWithRenderingMode_];
        [v74 setImage_];
      }

      else
      {

        v11 = v89;
        [*&v89[OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageView] setImage_];
      }

      if (!(v84[0] >> 62))
      {

        sub_20C13E004();
        sub_20B51C88C(0, &qword_27C764F30);
        goto LABEL_63;
      }

      goto LABEL_72;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_39:
  if ((*(v48 + 3) >> 1) - *(v48 + 2) >= v53)
  {
    swift_arrayInitWithCopy();

    if (!v53)
    {
      goto LABEL_48;
    }

    v56 = *(v48 + 2);
    v52 = __OFADD__(v56, v53);
    v57 = v56 + v53;
    if (!v52)
    {
      *(v48 + 2) = v57;
      goto LABEL_48;
    }

LABEL_74:
    __break(1u);
    return;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  sub_20B51C88C(0, &qword_27C764F30);

  sub_20C13DE34();

LABEL_63:

  sub_20B51C88C(0, &unk_27C76FED0);
  v78 = sub_20C13D554();
  if (v12 >> 62)
  {
    sub_20B51C88C(0, &qword_27C764F30);

    v79 = sub_20C13DE34();
  }

  else
  {

    sub_20C13E004();
    sub_20B51C88C(0, &qword_27C764F30);
    v79 = v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F580;
  *(inited + 32) = v78;
  v93 = v79;
  v81 = v78;
  sub_20B8D904C(inited);
  v82 = sub_20C13D554();
  v83 = *(v11 + OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_pickerButton);
  [v83 setMenu_];
  [v83 addTarget:v11 action:sel_menuOpened forControlEvents:0x4000];
  [v11 smu:v83 setPopUpMenuButton:?];
}

uint64_t objectdestroy_16Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20BE02820@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v17 = [v2 tertiarySystemBackgroundColor];
  v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v15 = [v2 whiteColor];
  v14 = [v2 whiteColor];
  v3 = *MEMORY[0x277D76918];
  v4 = MEMORY[0x277D84FA0];
  sub_20C13E164();
  v13 = v3;
  sub_20C13CA64();
  v5 = sub_20C13E1B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 1 && v9 != 3 && v9 != 4)
      {
        break;
      }

      v10 = sub_20C13DFF4();

      if (v10)
      {
        goto LABEL_9;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v4 = MEMORY[0x277D84FA0];
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_20B706478(2, v7, isUniquelyReferenced_nonNull_native);
  }

LABEL_9:
  *a1 = v17;
  a1[1] = v16;
  a1[2] = v15;
  a1[3] = v14;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = v13;
  a1[7] = 0x90000000002;
  a1[8] = 0;
  a1[9] = 1;
  a1[10] = v4;
  return result;
}

void sub_20BE02AC4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageView;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_iconImageViewBackground;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_pickerButton;
  type metadata accessor for MenuPickerButton();
  v8 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v7) = v8;
  v9 = v0 + OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_styleProvider;
  sub_20BE02820(v17);
  sub_20C13D514();
  v10 = v17[3];
  *(v9 + 32) = v17[2];
  *(v9 + 48) = v10;
  *(v9 + 64) = v17[4];
  v11 = v18;
  v12 = v17[1];
  *v9 = v17[0];
  *(v9 + 16) = v12;
  *(v9 + 80) = v11;
  *(v9 + 88) = 0x4030000000000000;
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 112) = xmmword_20C17ECD0;
  *(v9 + 128) = xmmword_20C17ECE0;
  *(v9 + 144) = xmmword_20C17ECE0;
  v15 = OBJC_IVAR____TtC9SeymourUI18ActivityPickerCell_titleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v15) = v16;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20BE02D34()
{
  result = qword_27C76F410;
  if (!qword_27C76F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76F410);
  }

  return result;
}

void sub_20BE02D88()
{
  if (*(v0 + 56))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v14.origin.x = v3;
    v14.origin.y = v5;
    v14.size.width = v7;
    v14.size.height = v9;
    Width = CGRectGetWidth(v14);
    v15.origin.x = v3;
    v15.origin.y = v5;
    v15.size.width = v7;
    v15.size.height = v9;
    Height = CGRectGetHeight(v15);
    if (Height >= Width)
    {
      v12 = Width;
    }

    else
    {
      v12 = Height;
    }

    if (qword_27C7606D0 != -1)
    {
      swift_once();
    }

    v13 = *&qword_27C799F40;
    if (qword_27C7606E0 != -1)
    {
      swift_once();
    }

    *(v0 + 48) = (v12 - (v13 + *&qword_27C799F50)) * 0.5;
    *(v0 + 56) = 0;
  }
}
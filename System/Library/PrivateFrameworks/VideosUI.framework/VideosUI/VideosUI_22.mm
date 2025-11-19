uint64_t sub_1E37CD750()
{

  sub_1E37CD808(*(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state), *(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state + 8), *(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state + 16), *(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state + 24));

  sub_1E37CD87C(v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest);
}

uint64_t sub_1E37CD808(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((result - 1) >= 2)
  {

    return sub_1E37CD868(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1E37CD868(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1E37B5ACC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1E37CD87C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E37CD8E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_paginationSubscriber;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v2))
  {

    sub_1E42004E4();
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_childrenUpdateSubscriber))
  {

    sub_1E42004E4();
  }

  v3 = sub_1E3B4FF80();

  sub_1E37CD808(*(v3 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state), *(v3 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state + 8), *(v3 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state + 16), *(v3 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state + 24));

  sub_1E37CD87C(v3 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest);

  return v3;
}

uint64_t sub_1E37CDA08()
{
  v0 = sub_1E37CD8E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E37CDA5C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((result - 1) >= 2)
  {

    return sub_1E37CDABC(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1E37CDABC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1E3781F8C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1E37CDAD0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v9 = v4 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state;
  OUTLINED_FUNCTION_3_0();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  v13 = *(v9 + 24);
  *(v9 + 24) = a4;
  OUTLINED_FUNCTION_39_10();
  sub_1E37CDA5C(v14, v15, v16, v17);
  sub_1E37CD808(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v18 = v4 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_state;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if ((*v18 - 1) >= 2 && (v20 = *(v18 + 8), v19 = *(v18 + 16), v21 = *(v18 + 24), , sub_1E37CDABC(v20, v19, v21), sub_1E37CD868(v20, v19, v21), , (v21 & 0x100) != 0))
  {
    sub_1E4203E44();
    sub_1E4200FE4();
  }

  else
  {
    OUTLINED_FUNCTION_0_33();
    sub_1E37CE070(v22, v23);
    OUTLINED_FUNCTION_40_3();
    sub_1E4200514();
    sub_1E4200594();
  }

  OUTLINED_FUNCTION_39_10();
  return sub_1E37CD808(v24, v25, v26, v27);
}

void sub_1E37CDC8C(uint64_t a1)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  OUTLINED_FUNCTION_36();
  v3 = *(v2 + 768);

  v4 = v3(a1);

  sub_1E37CDDA4();
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_33();
    sub_1E37CE070(v5, v6);
    OUTLINED_FUNCTION_40_3();
    sub_1E4200514();
    sub_1E4200594();
  }
}

void sub_1E37CDDA4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v8 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
  OUTLINED_FUNCTION_3_0();
  if (*(v0 + v8) != v3)
  {
    OUTLINED_FUNCTION_8();
    v10 = *(v9 + 1192);

    v10(0, 0);

    OUTLINED_FUNCTION_36();
    v12 = *(v11 + 1216);

    v12(0, 0);

    *(v0 + v8) = v3;

    v13 = *v3 + 1192;
    v14 = *v13;

    v14(v15, &off_1F5D56EA8);
    OUTLINED_FUNCTION_36();
    v17 = *(v16 + 1216);

    v17(v0, &off_1F5D56EC0);

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v18(v1);

    v19 = sub_1E41FFC94();
    sub_1E42067D4();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_10_11();
      *v13 = 136446210;
      v20 = sub_1E37CE104();
      v22 = OUTLINED_FUNCTION_38_8(v20, v21);

      *(v13 + 4) = v22;
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v23, v24, "%{public}s did update to new collection view model.");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    (*(v6 + 8))(v1, v4);
    sub_1E37CD3EC();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37CE070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CollectionInteractor()
{
  result = qword_1EE29DCB0;
  if (!qword_1EE29DCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E37CE104()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_identifier);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x1E69109E0](v3, v4);

  v5 = sub_1E41E1364(v1);
  MEMORY[0x1E69109E0](v5);

  MEMORY[0x1E69109E0](8285, 0xE200000000000000);

  return 0xD00000000000001BLL;
}

uint64_t sub_1E37CE248()
{
  v2 = v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *(v2 + 24);
  if (v3)
  {
    v4 = *(v2 + 32);
    v5 = OUTLINED_FUNCTION_16_0();
    v7 = __swift_project_boxed_opaque_existential_1(v5, v6);
    v8 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_41();
    (*(v8 + 16))(v1);
    v9 = (*(v4 + 32))(v3, v4);
    (*(v8 + 8))(v1, v3);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_1E37CE37C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v125 = v2;
  v126 = v3;
  v124 = v4;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v130 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v128 = v121 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v121 - v16;
  v18 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  v25 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37D1314(v1 + v25, &v136);
  v129 = v7;
  v127 = v17;
  if (!*(&v137 + 1))
  {
    sub_1E37CD87C(&v136);
LABEL_9:
    if ((sub_1E37D01CC() & 1) == 0 || (v26 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel, OUTLINED_FUNCTION_25(), swift_beginAccess(), *&v136 = *(v1 + v26), v27 = type metadata accessor for CollectionViewModel(), !sub_1E39BD1F0(v27, &off_1F5D96700)))
    {
      if ((sub_1E37D01CC() & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A688);
  type metadata accessor for RemoteCollectionInteractorRequest();
  if ((OUTLINED_FUNCTION_35_14() & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = *(v133 + 40);

  if (!v17)
  {
    goto LABEL_9;
  }

  sub_1E327F454((v17 + 16), &v136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
  type metadata accessor for CollectionServiceRequestContext();
  if ((OUTLINED_FUNCTION_35_14() & 1) != 0 && *(v133 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType) != 5)
  {
    LOBYTE(v136) = *(v133 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType);
    LOBYTE(v133) = v6;
    sub_1E37D17DC();
    if (sub_1E4205E84())
    {

      v7 = v129;
      goto LABEL_26;
    }
  }

  v59 = sub_1E37D01CC();

  v7 = v129;
  if ((v59 & 1) == 0)
  {
LABEL_26:
    sub_1E324FBDC();
    v60 = v130;
    OUTLINED_FUNCTION_28_13();
    v61(v12);

    v62 = sub_1E41FFC94();
    v63 = sub_1E42067E4();

    if (os_log_type_enabled(v62, v63))
    {
      OUTLINED_FUNCTION_49_0();
      *&v136 = OUTLINED_FUNCTION_36_12();
      *v17 = 136446466;
      v64 = sub_1E37CE104();
      OUTLINED_FUNCTION_47_5(v64, v65);
      OUTLINED_FUNCTION_33_12();
      *(v17 + 4) = v60;
      *(v17 + 6) = 2080;
      v66 = ViewModelRequestType.rawValue.getter(v6);
      OUTLINED_FUNCTION_47_5(v66, v67);
      OUTLINED_FUNCTION_33_12();
      *(v17 + 14) = v60;
      OUTLINED_FUNCTION_46_6(&dword_1E323F000, v68, v69, "%{public}s Failed to make fetch request [%s]");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_6_0();

      (*(v60 + 8))(v12, v129);
    }

    else
    {

      (*(v60 + 8))(v12, v7);
    }

    goto LABEL_49;
  }

LABEL_12:
  sub_1E4206BA4();
  v28 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  (*(v20 + 8))(v24, v18);
  v29 = v1 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37D1314(v29, &v136);
  v30 = *(&v137 + 1);
  sub_1E37CD87C(&v136);
  if (v30)
  {
    sub_1E324FBDC();
    v31 = v130;
    OUTLINED_FUNCTION_28_13();
    v32 = v127;
    v33(v127);

    v34 = sub_1E41FFC94();
    v35 = sub_1E42067E4();

    if (os_log_type_enabled(v34, v35))
    {
      OUTLINED_FUNCTION_49_0();
      v36 = OUTLINED_FUNCTION_36_12();
      v122 = v29;
      *&v136 = v36;
      *v28 = 136315394;
      v37 = sub_1E37CF120();
      OUTLINED_FUNCTION_47_5(v37, v38);
      OUTLINED_FUNCTION_33_12();
      *(v28 + 1) = v31;
      *(v28 + 6) = 2080;
      v39 = ViewModelRequestType.rawValue.getter(v6);
      OUTLINED_FUNCTION_47_5(v39, v40);
      OUTLINED_FUNCTION_33_12();
      *(v28 + 14) = v31;
      OUTLINED_FUNCTION_46_6(&dword_1E323F000, v41, v42, "%s Cancelling to handle new request of type [%s]");
      swift_arrayDestroy();
      v29 = v122;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v130 + 8))(v127, v7);
    }

    else
    {

      (*(v31 + 8))(v32, v7);
    }

    sub_1E37CF3E4();
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  type metadata accessor for LibCollectionViewModel();
  OUTLINED_FUNCTION_40_3();
  v43 = swift_dynamicCastClass();
  if (v43)
  {
    v44 = *(*v43 + 1680);

    v44(&v136, v45);
  }

  else
  {
    v138 = 0;
    v136 = 0u;
    v137 = 0u;
  }

  sub_1E37D1314(&v136, &v131);
  if (v132)
  {
    sub_1E3251BE8(&v131, &v133);
    v46 = v130;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v48 = *(v47 + 1112);

    v50 = v48(v49);
    v52 = v51;

    if (v52)
    {
      v53 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_collectionViewModel;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_36();
      v55 = *(v54 + 648);

      v57 = v55(v56);

      if (v57)
      {
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
      }

      else
      {
        Strong = 0;
      }

      type metadata accessor for CollectionServiceRequestContext();

      v70 = sub_1E3E3D284(v6, v50, v52, Strong);
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_30_1();
      v72 = *(v71 + 208);

      v72(v73);
      OUTLINED_FUNCTION_36();
      v75 = v74 + 1136;
      v76 = *(v74 + 1136);

      v76(v77);
      OUTLINED_FUNCTION_11_5();

      OUTLINED_FUNCTION_30_1();
      (*(v78 + 232))(v75);

      sub_1E39C1AA0();
      OUTLINED_FUNCTION_11_5();

      (*(*v70 + 280))(v75);
      v79 = sub_1E37D01CC();
      v122 = v29;
      v127 = v52;
      if (v79)
      {
        OUTLINED_FUNCTION_8();
        v81 = *(v80 + 1160);

        v81(v82);
        OUTLINED_FUNCTION_11_5();

        (*(*v70 + 256))(v81);
        v83 = *(v1 + v53);
        OUTLINED_FUNCTION_36();
        v85 = v84 + 1040;
        v86 = *(v84 + 1040);

        v86(v87);
        OUTLINED_FUNCTION_11_5();

        if (v85)
        {
          sub_1E37D027C(v85);
          OUTLINED_FUNCTION_38();
        }

        else
        {
          v83 = 0;
        }

        OUTLINED_FUNCTION_30_1();
        (*(v91 + 184))(v83);
      }

      else
      {
        OUTLINED_FUNCTION_30_1();
        v89 = *(v88 + 184);

        v89(v90);
      }

      v92 = sub_1E37CF120();
      v94 = v93;
      v95 = type metadata accessor for RemoteCollectionInteractorRequest();
      OUTLINED_FUNCTION_44_15();
      v96 = swift_allocObject();
      v97 = v125;
      sub_1E34AF604(v125);
      *(v96 + 72) = 0;
      *(v96 + 24) = 0u;
      *(v96 + 40) = 0u;
      v98 = *(v70 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType);
      if (v98 == 5)
      {
        LOBYTE(v98) = 0;
      }

      *(v96 + 16) = v98;
      *(v96 + 17) = v124 & 1;
      *(v96 + 56) = v92;
      *(v96 + 64) = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A2A8);
      v99 = sub_1E37B2890();
      sub_1E34AF594(v97);

      *(v96 + 40) = v99;
      *(&v134 + 1) = v95;
      v135 = &off_1F5D56F90;

      *&v133 = v96;
      v29 = v122;
    }

    else
    {
      v135 = 0;
      v133 = 0u;
      v134 = 0u;
    }

    v7 = v129;
    v46 = v130;
    if (v132)
    {
      sub_1E37CD87C(&v131);
    }
  }

  LODWORD(v127) = v6;
  OUTLINED_FUNCTION_11_3();
  sub_1E37D1384(&v133, v29);
  swift_endAccess();
  v100 = sub_1E37CF120();
  v102 = v101;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_28_13();
  v103 = v128;
  v104(v128);

  v105 = sub_1E41FFC94();
  v106 = v7;
  v107 = sub_1E42067E4();

  v108 = os_log_type_enabled(v105, v107);
  v123 = v100;
  if (v108)
  {
    OUTLINED_FUNCTION_49_0();
    *&v133 = OUTLINED_FUNCTION_36_12();
    *v106 = 136315394;
    *(v106 + 4) = sub_1E3270FC8(v100, v102, &v133);
    *(v106 + 12) = 2080;
    v109 = ViewModelRequestType.rawValue.getter(v127);
    v121[1] = v1;
    v111 = v29;
    v112 = sub_1E3270FC8(v109, v110, &v133);

    *(v106 + 14) = v112;
    v29 = v111;
    _os_log_impl(&dword_1E323F000, v105, v107, "%s Starting with type [%s]", v106, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v46 + 8))(v128, v129);
  }

  else
  {

    (*(v46 + 8))(v103, v106);
  }

  swift_beginAccess();
  if (*(v29 + 24))
  {
    sub_1E327F454(v29, &v133);
    swift_endAccess();
    v113 = *(&v134 + 1);
    v114 = v135;
    __swift_project_boxed_opaque_existential_1(&v133, *(&v134 + 1));
    OUTLINED_FUNCTION_4_0();
    v115 = swift_allocObject();
    swift_weakInit();
    v116 = swift_allocObject();
    v117 = v123;
    *(v116 + 16) = v115;
    *(v116 + 24) = v117;
    *(v116 + 32) = v102;
    *(v116 + 40) = v127;
    *(v116 + 41) = v124 & 1;
    v119 = v125;
    v118 = v126;
    *(v116 + 48) = v125;
    *(v116 + 56) = v118;
    v120 = v114[5];

    sub_1E34AF604(v119);
    v120(sub_1E37D13F4, v116, v113, v114);

    sub_1E37CD87C(&v136);

    __swift_destroy_boxed_opaque_existential_1(&v133);
  }

  else
  {
    sub_1E37CD87C(&v136);
    swift_endAccess();
  }

LABEL_49:
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E37CF120()
{
  v1 = v0;
  v2 = 0xD000000000000017;
  v3 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37D1314(v1 + v3, v14);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A688);
    type metadata accessor for RemoteCollectionInteractorRequest();
    if (swift_dynamicCast())
    {
      v4 = *(v13 + 40);

      if (v4)
      {
        sub_1E327F454(v4 + 16, v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
        type metadata accessor for CollectionServiceRequestContext();
        if (swift_dynamicCast())
        {
          v5 = (v1 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_identifier);
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          if (v5[1])
          {
            v6 = *v5;
            v7 = v5[1];
          }

          else
          {
            v7 = 0xE700000000000000;
            v6 = 0x6E776F6E6B6E55;
          }

          MEMORY[0x1E69109E0](v6, v7);

          v9 = sub_1E41E1364(v1);
          MEMORY[0x1E69109E0](v9);

          MEMORY[0x1E69109E0](0x736575716552205DLL, 0xEB000000005B2074);

          MEMORY[0x1E69109E0](32, 0xE100000000000000);

          v10 = sub_1E41FE5E4();
          v12 = v11;

          MEMORY[0x1E69109E0](v10, v12);

          MEMORY[0x1E69109E0](2112093, 0xE300000000000000);

          return 0xD00000000000001BLL;
        }

        else
        {
        }
      }
    }
  }

  else
  {
    sub_1E37CD87C(v14);
  }

  return v2;
}

uint64_t sub_1E37CF3E4()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_1E327F454(v1, &v6);
    v2 = v8;
    __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
    v3 = OUTLINED_FUNCTION_38();
    v4(v3, v2);
    __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  OUTLINED_FUNCTION_11_3();
  sub_1E37D1384(&v6, v1);
  return swift_endAccess();
}

void sub_1E37CF4A0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v14 = v2;
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_shouldProcessResponse) == 1)
    {
      sub_1E37CF664();

      goto LABEL_8;
    }
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_28_13();
  v7 = OUTLINED_FUNCTION_43_0();
  v8(v7);

  v9 = sub_1E41FFC94();
  sub_1E42067F4();

  if (OUTLINED_FUNCTION_34_9())
  {
    OUTLINED_FUNCTION_6_21();
    v15 = OUTLINED_FUNCTION_10_11();
    *v4 = 136315138;
    *(v4 + 4) = sub_1E3270FC8(v14, v1, &v15);
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v10, v11, "%s collection view model object is invalid");
    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_55();
  }

  v12 = OUTLINED_FUNCTION_16_0();
  v13(v12);
LABEL_8:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37CF664()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v65 = v2;
  v67 = v4;
  v68 = v3;
  LODWORD(v63) = v5;
  v66 = v6;
  v8 = v7;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v64 = sub_1E37CF120();
  if ((v8 & 0x100) != 0)
  {
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v30 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
    OUTLINED_FUNCTION_11_3();
    sub_1E37D1384(&v71, v0 + v30);
    swift_endAccess();
    if (v8 == 2)
    {
      v31 = v68;
      v32 = OUTLINED_FUNCTION_25_19();
      sub_1E3781F8C(v32, v33, v34);
      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v35(v20);

      v36 = OUTLINED_FUNCTION_25_19();
      sub_1E3781FA4(v36, v37, v38, 1);
      v39 = sub_1E41FFC94();
      v40 = sub_1E42067F4();

      v41 = OUTLINED_FUNCTION_25_19();
      sub_1E37D172C(v41, v42, v43, 1);
      if (os_log_type_enabled(v39, v40))
      {
        v44 = OUTLINED_FUNCTION_49_0();
        v63 = swift_slowAlloc();
        *&v71 = v63;
        *v44 = 136315394;
        v45 = OUTLINED_FUNCTION_32_19();

        *(v44 + 4) = v45;
        v31 = v68;
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_1E3270FC8(v31, v10, &v71);
        _os_log_impl(&dword_1E323F000, v39, v40, "%s Received empty items from fragment request: [%s]", v44, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v13 + 8))(v20, v11);
      sub_1E37CDAD0(0, v31, v10, 2);
    }

    else
    {
      v69 = sub_1E3F6FB3C(v68, v10, v8);
      v70 = v49;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
      sub_1E4148C68(sub_1E37BCD7C, v50, &v71);

      v51 = v71;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_21_8();
      v52(v17);

      v53 = sub_1E41FFC94();
      v54 = sub_1E42067F4();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_49_0();
        v68 = swift_slowAlloc();
        *&v71 = v68;
        *v55 = 136315394;
        v56 = OUTLINED_FUNCTION_32_19();
        LODWORD(v64) = v54;
        v57 = v56;

        *(v55 + 4) = v57;
        *(v55 + 12) = 2080;
        v58 = sub_1E3270FC8(v51, *(&v51 + 1), &v71);

        *(v55 + 14) = v58;
        _os_log_impl(&dword_1E323F000, v53, v64, "%s Received error [%s]", v55, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v13 + 8))(v17, v11);
    }

    if (sub_1E37D01CC())
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_36();
      v60 = *(v59 + 1432);

      v60(v61);
    }

    if (v67)
    {
      v67(0);
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_21_8();
    v24(v23);

    v25 = sub_1E41FFC94();
    v26 = sub_1E42067E4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_6_21();
      v28 = OUTLINED_FUNCTION_100();
      *&v71 = v28;
      *v27 = 136315138;
      v29 = OUTLINED_FUNCTION_32_19();

      *(v27 + 4) = v29;
      _os_log_impl(&dword_1E323F000, v25, v26, "%s Received success response", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v13 + 8))(v23, v11);
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    v46 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
    OUTLINED_FUNCTION_11_3();
    sub_1E37D1384(&v71, v1 + v46);
    swift_endAccess();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    sub_1E40B6838();

    if (v63)
    {
      v48 = 511;
    }

    else
    {
      v48 = 255;
    }

    sub_1E37CDAD0(v47, 0, 0, v48);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37CFCD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37D1314(a1 + v3, &v14);
  if (!v15)
  {
    return sub_1E37CD87C(&v14);
  }

  sub_1E3251BE8(&v14, v16);
  sub_1E327F454(v16, &v14);
  v4 = OBJC_IVAR____TtC8VideosUI20CollectionInteractor_activeRequest;
  OUTLINED_FUNCTION_11_3();
  sub_1E37D1384(&v14, v1 + v4);
  swift_endAccess();
  v5 = sub_1E37CF120();
  v7 = v6;
  *(a1 + OBJC_IVAR____TtC8VideosUI20CollectionInteractor_shouldProcessResponse) = 0;
  v8 = v17;
  v9 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  swift_weakInit();
  sub_1E327F454(v16, &v14);
  OUTLINED_FUNCTION_44_15();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v5;
  v11[4] = v7;
  sub_1E3251BE8(&v14, (v11 + 5));
  v12 = *(v9 + 40);

  v12(sub_1E37D1430, v11, v8, v9);

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_1E37CFE64()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v40 = v4;
  v41 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v39 - v15;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  if (Strong)
  {
    v39[0] = v9;
    v39[1] = v7;
    v18(v16);

    v19 = sub_1E41FFC94();
    v20 = sub_1E42067F4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_6_21();
      v22 = OUTLINED_FUNCTION_100();
      v42[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1E3270FC8(v40, v3, v42);
      _os_log_impl(&dword_1E323F000, v19, v20, "%s continue old request", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v12 + 8))(v16, v10);
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v23 = OUTLINED_FUNCTION_26_1();
    v24(v23);
    v25 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    OUTLINED_FUNCTION_28_13();
    v26 = OUTLINED_FUNCTION_38();
    v27(v26, v25);
    v28 = v1[3];
    v29 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v28);
    v30 = (*(v29 + 24))(v28, v29);
    sub_1E37CF664();
    sub_1E34AF594(v30);
  }

  else
  {
    v31 = OUTLINED_FUNCTION_43_0();
    v32(v31);

    v33 = sub_1E41FFC94();
    v34 = sub_1E42067F4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_6_21();
      v36 = OUTLINED_FUNCTION_100();
      v42[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_1E3270FC8(v40, v3, v42);
      _os_log_impl(&dword_1E323F000, v33, v34, "%s continue request but collection view model object is invalid", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v37 = OUTLINED_FUNCTION_16_0();
    v38(v37);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37D01CC()
{
  sub_1E37D1788();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

uint64_t sub_1E37D027C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1E34AF4E4(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    return MEMORY[0x1E6911E60](v3, a1);
  }

  result = sub_1E4207384();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1E37D0310()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v6(v0);

    v7 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      OUTLINED_FUNCTION_10_11();
      *v1 = 136315138;
      v8 = sub_1E37CE104();
      v10 = OUTLINED_FUNCTION_38_8(v8, v9);

      *(v1 + 4) = v10;
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v11, v12, "%s collection's children did update");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    (*(v4 + 8))(v0, v2);
    type metadata accessor for CollectionInteractor();
    OUTLINED_FUNCTION_0_33();
    sub_1E37CE070(v13, v14);
    sub_1E4200514();
    sub_1E4200594();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37D04E0()
{

  return sub_1E37CDAD0(v0, 0, 0, 511);
}

void sub_1E37D0514()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v9(v8);

  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v29 = v11;
    v12 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v12 = 136315906;
    (*(*v1 + 1344))();
    sub_1E37D144C();
    v13 = sub_1E4207944();
    v15 = sub_1E3270FC8(v13, v14, &v30);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;

    v16 = OUTLINED_FUNCTION_57();
    v19 = sub_1E3270FC8(v16, v17, v18);

    *(v12 + 14) = v19;
    *(v12 + 22) = 2080;
    v20 = sub_1E4207944();
    v22 = sub_1E3270FC8(v20, v21, &v30);

    *(v12 + 24) = v22;
    *(v12 + 32) = 2080;

    v23 = OUTLINED_FUNCTION_57();
    v26 = sub_1E3270FC8(v23, v24, v25);

    *(v12 + 34) = v26;
    _os_log_impl(&dword_1E323F000, v10, v29, "CollectionInteractor::didUpdateItem collection: %s, collectionId: %s, viewModel: %s, id: %s", v12, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    (*(v4 + 8))(v8, v2);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_0_33();
  sub_1E37CE070(v27, v28);
  sub_1E4200514();
  sub_1E4200594();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37D0894()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 1160);

  v8 = v6(v7);

  v26[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
  v25 = sub_1E4205F84();
  v10 = v9;
  OUTLINED_FUNCTION_36();
  v12 = *(v11 + 368);

  v14 = v12(v13);
  v16 = v15;

  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v17(v0);

  v18 = sub_1E41FFC94();
  v19 = sub_1E4206814();

  if (os_log_type_enabled(v18, v19))
  {
    v24 = v1;
    v20 = OUTLINED_FUNCTION_100();
    v26[0] = swift_slowAlloc();
    *v20 = 136446722;
    v21 = sub_1E37CE104();
    OUTLINED_FUNCTION_38_8(v21, v22);
    OUTLINED_FUNCTION_11_5();

    *(v20 + 4) = v14;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1E3270FC8(v14, v16, v26);
    *(v20 + 22) = 2080;
    v23 = sub_1E3270FC8(v25, v10, v26);

    *(v20 + 24) = v23;

    _os_log_impl(&dword_1E323F000, v18, v19, "%{public}s needs more content for collection: %s with context: %s", v20, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();

    (*(v3 + 8))(v0, v24);
  }

  else
  {

    (*(v3 + 8))(v0, v1);
  }

  OUTLINED_FUNCTION_25();
  sub_1E37CE37C();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37D0BCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 40);
  if (v6)
  {
    v7 = *(*v6 + 352);

    v9 = v7(v8);
  }

  else
  {
    v9 = 0;
  }

  *(v3 + 48) = v9;

  if (v9)
  {
    OUTLINED_FUNCTION_4_0();
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = v10;

    sub_1E41EC148(sub_1E37D16B0, v11);
    OUTLINED_FUNCTION_11_5();
  }

  else
  {
    a2 = 0;
  }

  *(v3 + 72) = a2;
}

void sub_1E37D0D10()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v3 = v0[5];
  if (v3)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v4 = OUTLINED_FUNCTION_43_0();
    v5(v4);

    v6 = sub_1E41FFC94();
    sub_1E42067D4();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      v12 = OUTLINED_FUNCTION_10_11();
      *v1 = 136446210;
      *(v1 + 4) = sub_1E3270FC8(v0[7], v0[8], &v12);
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v7, v8, "%{public}s suspended.");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    v9 = OUTLINED_FUNCTION_16_0();
    v11 = v10(v9);
    (*(*v3 + 360))(v11);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37D0E90()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v3 = v0[5];
  if (v3)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v4 = OUTLINED_FUNCTION_43_0();
    v5(v4);

    v6 = sub_1E41FFC94();
    sub_1E42067D4();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      v12 = OUTLINED_FUNCTION_10_11();
      *v1 = 136446210;
      *(v1 + 4) = sub_1E3270FC8(v0[7], v0[8], &v12);
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v7, v8, "%{public}s resumed.");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    v9 = OUTLINED_FUNCTION_16_0();
    v11 = v10(v9);
    (*(*v3 + 368))(v11);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37D1010()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v3 = v0[5];
  if (v3)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v4(v0);

    v5 = sub_1E41FFC94();
    sub_1E42067D4();

    if (OUTLINED_FUNCTION_34_9())
    {
      OUTLINED_FUNCTION_6_21();
      v11 = OUTLINED_FUNCTION_10_11();
      *v1 = 136446210;
      *(v1 + 4) = sub_1E3270FC8(v0[7], v0[8], &v11);
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v6, v7, "%{public}s cancelled.");
      OUTLINED_FUNCTION_5_21();
      OUTLINED_FUNCTION_55();
    }

    v8 = OUTLINED_FUNCTION_57();
    v10 = v9(v8);
    (*(*v3 + 376))(v10);

    v0[5] = 0;

    v0[6] = 0;

    v0[9] = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37D11B8()
{
  sub_1E34AF594(*(v0 + 24));

  OUTLINED_FUNCTION_44_15();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1E37D1224()
{
  v1 = *(*v0 + 24);
  sub_1E34AF604(v1);
  return v1;
}

uint64_t sub_1E37D1314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E37D1384(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E37D144C()
{
  result = qword_1EE283360;
  if (!qword_1EE283360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE283360);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI0A11EngineErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t get_enum_tag_for_layout_string_8VideosUI0A11EngineErrorOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8VideosUI20CollectionInteractorC10FetchStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1E37D1590(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 26))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E37D15F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1E37D164C(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    v2 = a2 - 0x7FFFFFFF;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t sub_1E37D16B0(uint64_t a1)
{
  (*(v1 + 16))(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 17) << 8));
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 72) = 0;
  }

  return result;
}

uint64_t sub_1E37D172C(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {

    return sub_1E37B5ACC(a1, a2, a3);
  }

  else
  {
  }
}

unint64_t sub_1E37D1788()
{
  result = qword_1EE269318;
  if (!qword_1EE269318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE269318);
  }

  return result;
}

unint64_t sub_1E37D17DC()
{
  result = qword_1EE269320;
  if (!qword_1EE269320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE269320);
  }

  return result;
}

uint64_t sub_1E37D1830()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_33();
  sub_1E37CE070(v0, v1);
  sub_1E4200514();
  sub_1E4200594();
}

uint64_t sub_1E37D18C8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E37D0894();
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_32_19()
{
  v3 = *(v1 - 192);

  return sub_1E3270FC8(v3, v0, (v1 - 128));
}

uint64_t sub_1E37D1938()
{
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E37D1980()
{
  OUTLINED_FUNCTION_156();
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_1E37D1A20()
{
  OUTLINED_FUNCTION_156();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  return result;
}

uint64_t sub_1E37D1A5C(uint64_t a1, unint64_t a2)
{
  v140 = sub_1E41FFCB4();
  v141 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v139 - v12;
  v143 = sub_1E4205CB4();
  v154 = 2573;
  v155 = 0xE200000000000000;
  v153 = &v154;

  v14 = 0;
  v16 = sub_1E37D273C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E3756228, v152, a1, a2, v15);
  v17 = v16;
  v139[0] = 0;
  v150 = *(v16 + 16);
  if (!v150 || (v18 = *(v16 + 32), v19 = v17[6], v20 = v17[7], v149 = v17 + 4, v21 = v17[5], v142 = v17, v22 = sub_1E37D2BE0(v18, v21, v19, v20, 0x312E312F50545448, 0xEF4B4F2030303220), v23 = v142, (v22 & 1) == 0))
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_34();
    v3 = v140;
    v88(v13);
    v89 = v13;
    v90 = sub_1E41FFC94();
    v91 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_6_33(v91))
    {
      v92 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_3_29(v92);
      v93 = "SSDPResponseParser:: SSDP Data is not an M-Search response, skipping";
      goto LABEL_76;
    }

    goto LABEL_93;
  }

  v24 = 0;
  while (1)
  {
    if (v24 >= v23[2])
    {
      __break(1u);
      goto LABEL_85;
    }

    v25 = &v149[4 * v24];
    v26 = *v25;
    v13 = v25[1];
    v27 = v13 >> 14;
    if (v13 >> 14 != *v25 >> 14)
    {
      break;
    }

LABEL_56:
    if (++v24 == v150)
    {

      v94 = OUTLINED_FUNCTION_14_28(0x4F432D4548434143, 0xEE003A4C4F52544ELL);
      if (v95)
      {
        v13 = v94;
        v14 = v95;
        OUTLINED_FUNCTION_2_30();
        if (v96)
        {
          v97 = v143;
          sub_1E37D26AC(978606149, 0xE400000000000000, v143);
          if (!v98)
          {

            sub_1E324FBDC();
            OUTLINED_FUNCTION_0_34();
            v123 = OUTLINED_FUNCTION_1_63();
            v124(v123);
            v89 = v13;
            v90 = sub_1E41FFC94();
            v125 = sub_1E42067F4();
            if (OUTLINED_FUNCTION_6_33(v125))
            {
              v126 = OUTLINED_FUNCTION_125_0();
              OUTLINED_FUNCTION_3_29(v126);
              v93 = "SSDPResponseParser:: Required EXT field not found in response, skipping";
              goto LABEL_76;
            }

            goto LABEL_93;
          }

          v99 = sub_1E37D26AC(0x4E4F495441434F4CLL, 0xE90000000000003ALL, v97);
          if (v100)
          {
            v101 = v99;
            v3 = v100;
            OUTLINED_FUNCTION_2_30();
            if (v102)
            {
              v103 = OUTLINED_FUNCTION_14_28(0x3A524556524553, 0xE700000000000000);
              if (v104)
              {
                v105 = v103;
                v106 = v104;
                OUTLINED_FUNCTION_2_30();
                if (v107)
                {
                  v108 = OUTLINED_FUNCTION_14_28(3822675, 0xE300000000000000);
                  if (v109)
                  {
                    v2 = v108;
                    v110 = v109;
                    OUTLINED_FUNCTION_2_30();
                    if (v111)
                    {
                      OUTLINED_FUNCTION_14_28(978211669, 0xE400000000000000);
                      if (v112)
                      {
                        v113 = v112;
                        OUTLINED_FUNCTION_2_30();
                        if (v115)
                        {
                          v116 = *(*v139[1] + 88);
                          v151 = v114;
                          v117 = v116(v114);
                          v154 = v13;
                          v155 = v14;
                          v156 = v101;
                          v157 = v3;
                          v158 = v2;
                          v159 = v110;
                          v160 = v105;
                          v161 = v106;
                          v162 = v151;
                          v163 = v113;
                          v117(&v154);
                          sub_1E37D2C54(&v154);
                        }

LABEL_90:
                      }

                      sub_1E324FBDC();
                      OUTLINED_FUNCTION_0_34();
                      v135 = OUTLINED_FUNCTION_1_63();
                      v136(v135);
                      v89 = v13;
                      v90 = sub_1E41FFC94();
                      v137 = sub_1E42067F4();
                      if (OUTLINED_FUNCTION_6_33(v137))
                      {
                        v138 = OUTLINED_FUNCTION_125_0();
                        OUTLINED_FUNCTION_3_29(v138);
                        v93 = "SSDPResponseParser:: Required USN field not found in response, skipping";
LABEL_76:
                        _os_log_impl(&dword_1E323F000, v90, v89, v93, v14, 2u);
                        MEMORY[0x1E69143B0](v14, -1, -1);

                        (*(v2 + 8))(v13, v3);
                      }

LABEL_93:

                      (*(v14 + 8))(v13, v3);
                    }

LABEL_85:
                  }

                  sub_1E324FBDC();
                  OUTLINED_FUNCTION_0_34();
                  v131 = OUTLINED_FUNCTION_1_63();
                  v132(v131);
                  v89 = v13;
                  v90 = sub_1E41FFC94();
                  v133 = sub_1E42067F4();
                  if (OUTLINED_FUNCTION_6_33(v133))
                  {
                    v134 = OUTLINED_FUNCTION_125_0();
                    OUTLINED_FUNCTION_3_29(v134);
                    v93 = "SSDPResponseParser:: Required ST field not found in response, skipping";
                    goto LABEL_76;
                  }

                  goto LABEL_93;
                }
              }

              sub_1E324FBDC();
              OUTLINED_FUNCTION_0_34();
              v127 = OUTLINED_FUNCTION_1_63();
              v128(v127);
              v89 = v13;
              v90 = sub_1E41FFC94();
              v129 = sub_1E42067F4();
              if (OUTLINED_FUNCTION_6_33(v129))
              {
                v130 = OUTLINED_FUNCTION_125_0();
                OUTLINED_FUNCTION_3_29(v130);
                v93 = "SSDPResponseParser:: Required SERVER field not found in response, skipping";
                goto LABEL_76;
              }

              goto LABEL_93;
            }
          }

          sub_1E324FBDC();
          OUTLINED_FUNCTION_0_34();
LABEL_74:
          v119 = OUTLINED_FUNCTION_1_63();
          v120(v119);
          v89 = v13;
          v90 = sub_1E41FFC94();
          v121 = sub_1E42067F4();
          if (OUTLINED_FUNCTION_6_33(v121))
          {
            v122 = OUTLINED_FUNCTION_125_0();
            OUTLINED_FUNCTION_3_29(v122);
            v93 = "SSDPResponseParser:: Required CACHE-CONTROL field not found in response, skipping";
            goto LABEL_76;
          }

          goto LABEL_93;
        }
      }

      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_34();
      goto LABEL_74;
    }
  }

  v148 = v24;
  v14 = v25[2];

  v28 = v26;
  v151 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v28; ; i = sub_1E4207124())
    {
      v30 = i >> 14;
      if (i >> 14 == v27)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_5_39();
      v31 = sub_1E4207144();
      v2 = v32;
      if (v31 == 32 && v32 == 0xE100000000000000)
      {
        break;
      }

      v3 = sub_1E42079A4();

      if (v3)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_5_39();
    }

LABEL_16:
    v2 = v28 >> 14;
    if (v28 >> 14 != v30)
    {
      if (v30 < v2)
      {
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      v34 = OUTLINED_FUNCTION_13_37(v28, i);
      v36 = v35;
      v145 = v37;
      v144 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v146 = v36;
      v147 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v151 = sub_1E37D2AD8(0, *(v151 + 2) + 1, 1, v151);
      }

      v3 = *(v151 + 2);
      v40 = *(v151 + 3);
      if (v3 >= v40 >> 1)
      {
        v151 = sub_1E37D2AD8((v40 > 1), v3 + 1, 1, v151);
      }

      v41 = v151;
      *(v151 + 2) = v3 + 1;
      v42 = &v41[32 * v3];
      v43 = v146;
      *(v42 + 4) = v147;
      *(v42 + 5) = v43;
      v44 = v144;
      *(v42 + 6) = v145;
      *(v42 + 7) = v44;
    }

    OUTLINED_FUNCTION_5_39();
    v28 = sub_1E4207124();
  }

  while (v2 == v30 || *(v151 + 2) != 1);
LABEL_25:
  if (v28 >> 14 == v27)
  {

    v45 = v151;
    v2 = *(v151 + 2);
    goto LABEL_33;
  }

  if (v27 < v28 >> 14)
  {
    goto LABEL_89;
  }

  v46 = OUTLINED_FUNCTION_13_37(v28, v13);
  v14 = v47;
  v13 = v48;
  v50 = v49;

  v45 = v151;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_1E37D2AD8(0, *(v45 + 2) + 1, 1, v45);
  }

  v52 = *(v45 + 2);
  v51 = *(v45 + 3);
  v2 = v52 + 1;
  if (v52 >= v51 >> 1)
  {
    v45 = sub_1E37D2AD8((v51 > 1), v52 + 1, 1, v45);
  }

  *(v45 + 2) = v2;
  v53 = &v45[32 * v52];
  *(v53 + 4) = v46;
  *(v53 + 5) = v14;
  *(v53 + 6) = v13;
  *(v53 + 7) = v50;
LABEL_33:
  if (v2 == 1)
  {

    OUTLINED_FUNCTION_12_28();

    OUTLINED_FUNCTION_32_0();
    v14 = sub_1E4205FA4();
    v70 = v69;

    v71 = v143;
    v3 = swift_isUniquelyReferenced_nonNull_native();
    v154 = v71;
    v72 = sub_1E327D33C(v14, v70);
    if (__OFADD__(*(v71 + 16), (v73 & 1) == 0))
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v13 = v72;
    v2 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570);
    if (sub_1E4207644())
    {
      v74 = sub_1E327D33C(v14, v70);
      if ((v2 & 1) != (v75 & 1))
      {
        goto LABEL_100;
      }

      v13 = v74;
    }

    v143 = v154;
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_11_29(v154 + 8 * (v13 >> 6));
      v79 = (v78 + 16 * v13);
      *v79 = v14;
      v79[1] = v70;
      v80 = (*(v77 + 56) + 16 * v13);
      *v80 = 0;
      v80[1] = 0xE000000000000000;
      v81 = *(v77 + 16);
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (!v82)
      {
        goto LABEL_54;
      }

      goto LABEL_98;
    }

    v76 = (*(v154 + 56) + 16 * v13);
    *v76 = 0;
    v76[1] = 0xE000000000000000;
LABEL_48:

LABEL_49:

LABEL_55:
    v23 = v142;
    v24 = v148;
    goto LABEL_56;
  }

  if (v2 != 2)
  {
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_12_28();

  v13 = sub_1E4205FA4();
  v14 = v54;

  if (*(v45 + 2) < 2uLL)
  {
    __break(1u);
    goto LABEL_96;
  }

  v55 = *(v45 + 8);
  v56 = *(v45 + 9);
  v57 = *(v45 + 10);
  v58 = *(v45 + 11);

  v59 = MEMORY[0x1E6910920](v55, v56, v57, v58);
  v61 = v60;

  v62 = v143;
  v3 = swift_isUniquelyReferenced_nonNull_native();
  v154 = v62;
  v63 = sub_1E327D33C(v13, v14);
  if (__OFADD__(*(v62 + 16), (v64 & 1) == 0))
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v65 = v63;
  v2 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_40;
  }

  v66 = sub_1E327D33C(v13, v14);
  if ((v2 & 1) == (v67 & 1))
  {
    v65 = v66;
LABEL_40:
    v143 = v154;
    if (v2)
    {
      v68 = (*(v154 + 56) + 16 * v65);
      *v68 = v59;
      v68[1] = v61;
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_11_29(v154 + 8 * (v65 >> 6));
    v85 = (v84 + 16 * v65);
    *v85 = v13;
    v85[1] = v14;
    v86 = (*(v77 + 56) + 16 * v65);
    *v86 = v59;
    v86[1] = v61;
    v87 = *(v77 + 16);
    v82 = __OFADD__(v87, 1);
    v83 = v87 + 1;
    if (!v82)
    {
LABEL_54:
      *(v77 + 16) = v83;
      goto LABEL_55;
    }

LABEL_99:
    __break(1u);
  }

LABEL_100:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E37D26AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1E37D2704()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E37D273C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
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

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1E4206184();
    v11 = v29;
    v12 = v30;
    v13 = v31;

    v14 = sub_1E37D2AD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 2);
    a7 = *(v14 + 3);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 2) = v10;
      v35 = &v14[32 * v9];
      *(v35 + 4) = v7;
      *(v35 + 5) = v11;
      *(v35 + 6) = v12;
      *(v35 + 7) = v13;
      return v14;
    }

LABEL_41:
    v14 = sub_1E37D2AD8((a7 > 1), v10, 1, v14);
    goto LABEL_38;
  }

  v7 = a4;
  v14 = (4 * v16);
  v43 = MEMORY[0x1E69E7CC0];
  v17 = 15;
  while (1)
  {
    v41 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if ((v17 >> 14) == v14)
      {
        v17 = v41;
        goto LABEL_30;
      }

      v18 = sub_1E4206164();
      v12 = v19;
      v44[0] = v18;
      v44[1] = v19;
      v20 = v45(v44);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_1E4206034();
    }

    v23 = (v41 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v41 >> 14)
    {
      break;
    }

    v42 = sub_1E4206184();
    v37 = v25;
    v38 = v24;
    v36 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1E37D2AD8(0, *(v43 + 2) + 1, 1, v43);
    }

    v13 = *(v43 + 2);
    v27 = *(v43 + 3);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      v43 = sub_1E37D2AD8((v27 > 1), v13 + 1, 1, v43);
    }

    *(v43 + 2) = v12;
    v28 = &v43[32 * v13];
    *(v28 + 4) = v42;
    *(v28 + 5) = v38;
    *(v28 + 6) = v37;
    *(v28 + 7) = v36;
LABEL_20:
    v17 = sub_1E4206034();
    if ((v23 & 1) == 0 && *(v43 + 2) == a1)
    {
LABEL_30:
      if (v17 >> 14) == v14 && (a2)
      {

        return v43;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_1E4206184();
        v11 = v32;
        v12 = v33;
        v13 = v34;

        v14 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 2);
          a7 = *(v14 + 3);
          goto LABEL_37;
        }
      }

      v14 = sub_1E37D2AD8(0, *(v14 + 2) + 1, 1, v14);
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

char *sub_1E37D2AD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3D670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E37D2BE0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v7 = a3 == a5 && a4 == a6;
  if (v7 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1E4207924() & 1;
  }
}

uint64_t sub_1E37D2C8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E37D2CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1E37D2D54()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_5_40(&OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView);
  v8.receiver = v0;
  v8.super_class = v1;
  v2 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E4299720;
  *(v3 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0);
  *(v3 + 40) = sub_1E3280A90(0, &qword_1EE23AF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00);
  v4 = sub_1E42062A4();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1E37D460C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E3790FBC;
  aBlock[3] = &block_descriptor_8;
  v6 = _Block_copy(aBlock);

  [v2 vui:v4 registerForTraitChanges:v6 withHandler:?];
  _Block_release(v6);

  return v2;
}

void sub_1E37D2F38()
{
  OUTLINED_FUNCTION_5_40(&OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView);
  sub_1E42076B4();
  __break(1u);
}

double sub_1E37D2FC0(char a1, double a2, double a3)
{
  v7 = *&v3[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_layout];
  if (v7)
  {
    v8 = v3;
    v10 = *(*v7 + 176);

    v12 = v186;
    v10(v186, v11);
    if (v187)
    {
      v12 = MEMORY[0x1E69DDCE0];
      MaxX = *(MEMORY[0x1E69DDCE0] + 8);
      v14 = *(MEMORY[0x1E69DDCE0] + 16);
      v15 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      MaxX = *&v186[1];
      v14 = *&v186[2];
      v15 = *&v186[3];
    }

    v16 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView;
    v17 = *&v3[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView];
    v160 = *&a3;
    *&v171 = v14;
    v167 = *v12;
    if (v17)
    {
      [v17 vui:a2 - MaxX - v15 sizeThatFits:a3 - *v12 - v14];
      v19 = v18;
      rect_16 = v20;
      v22 = OUTLINED_FUNCTION_10_27();
      if (v21)
      {
        v23 = v21;
        if (([v23 isHidden] & 1) == 0)
        {
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_8();
          v137 = *(v136 + 152);

          v137(v188, v138);

          if (v189)
          {
            v139 = 0.0;
          }

          else
          {
            v139 = *&v188[1];
          }

          v166 = v19;
          rect_8a = v4 + v139;
          OUTLINED_FUNCTION_8();
          v141 = *(v140 + 152);

          v141(v190, v142);

          v143 = v190[0];
          if (v191)
          {
            v143 = 0.0;
          }

          v144 = MaxX + v139;
          *&v210.size.width = v166;
          v145 = v167 + v143;
          v210.origin.x = MaxX + v139;
          v210.origin.y = v145;
          v210.size.height = rect_16;
          CGRectGetMaxY(v210);
          OUTLINED_FUNCTION_8();
          v147 = *(v146 + 152);

          v147(&v192, v148);

          OUTLINED_FUNCTION_7_48();
          if (v55)
          {
            v149 = v150;
          }

          if (v151 < 0.0)
          {
            v26 = v152;
          }

          else
          {
            v26 = v149;
          }

          v211.origin.x = MaxX + v139;
          v211.origin.y = v145;
          *&v211.size.width = v166;
          v211.size.height = rect_16;
          *&v181 = CGRectGetMaxX(v211);
          OUTLINED_FUNCTION_8();
          v154 = *(v153 + 152);

          v154(v193, v155);

          if (v194)
          {
            v156 = 0.0;
          }

          else
          {
            v156 = *&v193[3];
          }

          rect = v144;
          v212.origin.x = v144;
          v169 = v145;
          v212.origin.y = v145;
          *&v212.size.width = v166;
          v212.size.height = rect_16;
          Width = CGRectGetWidth(v212);

          v4 = rect_8a + Width;
          v25 = v156;
          MaxX = *&v181;
          v24 = *&v166;
LABEL_12:
          v27 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView;
          v28 = *&v3[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView];
          rect_8 = 0.0;
          *&v173 = v15;
          v175 = v4;
          if (v28)
          {
            v29 = v28;
            if (([v29 isHidden] & 1) == 0)
            {
              OUTLINED_FUNCTION_5_0();
              OUTLINED_FUNCTION_0_35();
              v31 = *(v30 + 200);

              v33 = COERCE_DOUBLE(v31(v32));
              v35 = v34;

              if (v35)
              {
                v36 = 0.0;
              }

              else
              {
                v36 = v33;
              }

              OUTLINED_FUNCTION_0_35();
              v38 = *(v37 + 304);

              v40 = COERCE_DOUBLE(v38(v39));
              LOBYTE(v38) = v41;

              if (v38)
              {
                v42 = 0.0;
              }

              else
              {
                v42 = v40;
              }

              OUTLINED_FUNCTION_0_35();
              v44 = *(v43 + 152);

              v44(v195, v45);

              v46 = v195[0];
              if (v196)
              {
                v46 = 0.0;
              }

              v47 = v25 + MaxX;
              v48 = v167 + v46;
              v206.origin.x = v47;
              v206.origin.y = v48;
              v206.size.width = v36;
              v206.size.height = v42;
              MaxX = CGRectGetMaxX(v206);
              v177 = *&v47;
              v207.origin.x = v47;
              v162 = *&v48;
              v207.origin.y = v48;
              v207.size.width = v36;
              v207.size.height = v42;
              CGRectGetMaxY(v207);
              OUTLINED_FUNCTION_0_35();
              v50 = *(v49 + 152);

              v50(&v197, v51);

              OUTLINED_FUNCTION_7_48();
              if (v55)
              {
                v52 = v53;
              }

              if (v26 <= v54)
              {
                v26 = v52;
              }

              OUTLINED_FUNCTION_0_35();
              v57 = *(v56 + 152);

              v57(v198, v58);

              if (v199)
              {
                v25 = 0.0;
              }

              else
              {
                v25 = *&v198[3];
              }

              v15 = *&v173;
              v179 = *&v36;
              v175 = v175 + v36 + v25;
LABEL_33:
              v59 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView;
              v60 = *&v3[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView];
              if (v60)
              {
                v61 = v60;
                if (([v61 isHidden] & 1) == 0)
                {
                  OUTLINED_FUNCTION_5_0();
                  OUTLINED_FUNCTION_8();
                  v66 = *(v65 + 152);

                  v66(v200, v67);

                  v68 = *&v200[3];
                  if (v201)
                  {
                    v68 = 0.0;
                  }

                  *&v164 = v24;
                  v69 = v175 + v68;
                  v70 = v25 + MaxX;
                  v71 = v25;
                  v72 = a2 - v70 - v68 - v15;
                  [v61 vui:v72 sizeThatFits:1.79769313e308];
                  v64 = v74;
                  if (v72 >= v73)
                  {
                    v63 = v73;
                  }

                  else
                  {
                    v63 = v72;
                  }

                  rect_8 = v70;
                  v208.origin.x = v70;
                  v208.origin.y = v167;
                  v208.size.width = v63;
                  v208.size.height = v64;
                  CGRectGetMaxY(v208);
                  OUTLINED_FUNCTION_8();
                  v76 = *(v75 + 152);

                  v76(&v202, v77);

                  OUTLINED_FUNCTION_7_48();
                  if (v55)
                  {
                    v78 = v79;
                  }

                  v62 = v167;
                  if (v26 <= v80)
                  {
                    v26 = v78;
                  }

                  v175 = v69 + v71 + v63;
                  v24 = *&v164;
LABEL_48:
                  v81 = *&v171 + v26;
                  v82 = *&v171;
                  v83 = rect_8;
                  v84 = v63;
                  v85 = v64;
                  v86 = v81 - CGRectGetHeight(*(&v62 - 1));
                  v209.origin.x = rect;
                  v209.origin.y = v169;
                  v209.size.width = v24;
                  v209.size.height = rect_16;
                  CGRectGetHeight(v209);
                  OUTLINED_FUNCTION_5_0();
                  OUTLINED_FUNCTION_0_35();
                  v88 = *(v87 + 152);

                  v88(&v203, v89);

                  if ((v205 & 1) != 0 || (v98 = v204, v204 <= 0.0))
                  {
                    v99 = (v81 - OUTLINED_FUNCTION_15_31(v90, v91, v92, v93, v94, v95, v96, v97, v158, v160, v162, *&v63, *&v64, *&v169, v171, v173, *&v175, v177, v179)) * 0.5;
                  }

                  else
                  {
                    v99 = v81 - v82 - v98 - OUTLINED_FUNCTION_15_31(v90, v91, v92, v93, v94, v95, v96, v97, v158, v160, v162, *&v63, *&v64, *&v169, v171, v173, *&v175, v177, v179);
                  }

                  v100 = v86 * 0.5;
                  if ([v3 vuiIsRTL])
                  {
                    OUTLINED_FUNCTION_16_19();
                    OUTLINED_FUNCTION_2_6();
                    OUTLINED_FUNCTION_13_38(v109, v110, v111, v112, v113, v114, v115, v116, v159, *&v161, *&v163, *&v165, *&v168, *&v170, *&v172, *&v174, *&v176, *&v178, *&v180, rect);
                    VUIRectWithFlippedOriginRelativeToBoundingRect();
                    rect = v117;
                    OUTLINED_FUNCTION_16_19();
                    OUTLINED_FUNCTION_2_6();
                    VUIRectWithFlippedOriginRelativeToBoundingRect();
                    v178 = v118;
                    v180 = v119;
                    v99 = v120;
                    v64 = v121;
                    OUTLINED_FUNCTION_16_19();
                    OUTLINED_FUNCTION_2_6();
                    VUIRectWithFlippedOriginRelativeToBoundingRect();
                    rect_8 = v101;
                    v100 = v102;
                    v122 = v103;
                    v123 = v104;
                    if (a1)
                    {
                      goto LABEL_68;
                    }
                  }

                  else
                  {
                    v122 = *&v165;
                    v123 = *&v168;
                    if (a1)
                    {
LABEL_68:
                      a2 = *&v174 + *&v176;

                      return a2;
                    }
                  }

                  if (*&v3[v16])
                  {
                    v124 = OUTLINED_FUNCTION_13_38(v101, v102, v103, v104, v105, v106, v107, v108, v159, *&v161, *&v163, *&v165, *&v168, *&v170, *&v172, *&v174, *&v176, *&v178, *&v180, rect);
                    [v125 v126];
                  }

                  v127 = *&v3[v27];
                  if (v127)
                  {
                    [v127 setFrame_];
                  }

                  v128 = *&v3[v59];
                  if (v128)
                  {
                    [v128 setFrame_];
                  }

                  v129 = *&v3[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_backgroundView];
                  if (v129)
                  {
                    v130 = v129;
                    OUTLINED_FUNCTION_16_19();
                    [v130 setFrame_];
                  }

                  v131 = [v8 vuiLayer];
                  if (v131)
                  {
                    v132 = v131;
                    [v131 setMasksToBounds_];
                  }

                  v133 = [v8 vuiLayer];
                  if (v133)
                  {
                    v134 = v133;
                    [v133 setCornerRadius_];
                  }

                  goto LABEL_68;
                }
              }

              v62 = 0.0;
              v63 = 0.0;
              v64 = 0.0;
              goto LABEL_48;
            }
          }

          v177 = 0;
          v179 = 0;
          v162 = 0;
          goto LABEL_33;
        }

        v22 = 0.0;
      }
    }

    else
    {
      v22 = OUTLINED_FUNCTION_10_27();
    }

    v169 = v22;
    v24 = 0.0;
    rect_16 = v22;
    v25 = 0.0;
    v26 = 0.0;
    goto LABEL_12;
  }

  return a2;
}

char *sub_1E37D394C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A690);
  v3 = sub_1E4148C68(sub_1E37D4118, v2, v74);
  v4 = v74[0];
  v5 = (*(*a1 + 392))(v3);
  if (!v5)
  {
    return v4;
  }

  v6 = v5;
  if (*v5 != _TtC8VideosUI20PlaybackStatusLayout)
  {
LABEL_35:

    return v4;
  }

  *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_layout] = v5;

  v7 = sub_1E39C408C(39);
  if (v7)
  {
    v8 = v7;
    type metadata accessor for UIFactory();
    v73 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView;
    v9 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView];
    OUTLINED_FUNCTION_6_34();
    OUTLINED_FUNCTION_5_0();
    v10 = v6[13];
    v11 = sub_1E3280A90(0, &qword_1EE23B360);

    v12 = v9;
    v13 = sub_1E393D92C(v8, v9, v74, v10, v11);

    sub_1E373C624(v74);
    v14 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView];
    *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView] = v13;
    v15 = v13;
    OUTLINED_FUNCTION_9_27();
    [v4 vui_setNeedsLayout];

    v16 = *&v4[v73];
    if (v16)
    {
      v17 = v16;
      [v17 setHidden_];
    }
  }

  else
  {
    v18 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_imageView];
    if (v18)
    {
      [v18 setHidden_];
    }
  }

  v19 = sub_1E39C408C(115);
  if (v19)
  {
    v20 = v19;
    type metadata accessor for UIFactory();
    v21 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView;
    v22 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView];
    OUTLINED_FUNCTION_6_34();
    v23 = type metadata accessor for StyledProgressBarView();
    v24 = v22;
    v25 = sub_1E393D92C(v20, v22, v74, 0, v23);

    sub_1E373C624(v74);
    v26 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView];
    *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView] = v25;
    v27 = v25;
    OUTLINED_FUNCTION_9_27();

    v28 = *&v4[v21];
    if (v28)
    {
      v29 = v28;
      [v29 setHidden_];
    }
  }

  else
  {
    v30 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_progressView];
    if (v30)
    {
      [v30 setHidden_];
    }
  }

  v31 = sub_1E39C408C(23);
  if (v31)
  {
    v32 = v31;
    type metadata accessor for UIFactory();
    v33 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView;
    v34 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView];
    OUTLINED_FUNCTION_6_34();
    OUTLINED_FUNCTION_5_0();
    v35 = v6[14];
    v36 = sub_1E3280A90(0, &qword_1EE23AD40);

    v37 = v34;
    v38 = sub_1E393D92C(v32, v34, v74, v35, v36);

    sub_1E373C624(v74);
    v39 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView];
    *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView] = v38;
    v40 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView];
    v41 = &selRef_textLayout;
    v42 = v38;
    [v4 vui:v40 addSubview:v39 oldView:?];
    [v4 vui_setNeedsLayout];

    v43 = *&v4[v33];
    if (v43)
    {
      v44 = v43;
      [v44 setHidden_];
    }
  }

  else
  {
    v45 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView];
    v41 = &selRef_textLayout;
    if (v45)
    {
      [v45 setHidden_];
    }
  }

  type metadata accessor for PlaybackStatusBackgroundView();
  v46 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_backgroundView];
  v47 = v46;
  v48 = v47;
  if (!v46)
  {
    v48 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v49 = v47;
  if (*sub_1E3A70EB0() != 1)
  {
    vtable = (*v6)[18].vtable;
    v66 = v48;
    v67 = vtable();
    [v66 setVuiBackgroundColor_];

    v64 = &selRef_vui_disableLocalAsset;
LABEL_32:

    v68 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_backgroundView];
    *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_backgroundView] = v48;
    v69 = OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_backgroundView;
    v70 = *&v4[OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_backgroundView];
    v71 = v41[466];
    v72 = v48;
    [v4 v71];
    if (*&v4[v69])
    {
      [v4 vui_sendSubviewToBack_];
    }

    [v4 v64[122]];

    goto LABEL_35;
  }

  v50 = OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView;
  if (*&v48[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView])
  {
LABEL_27:
    v59 = objc_opt_self();
    v60 = v48;
    v61 = [v59 clearColor];
    [v60 setVuiBackgroundColor_];

    v62 = *&v48[v50];
    if (v62)
    {
      [v62 setHidden_];
    }

    v63 = *&v60[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_colorOverlayView];
    v64 = &selRef_vui_disableLocalAsset;
    v41 = &selRef_textLayout;
    if (v63)
    {
      [v63 setHidden_];
    }

    goto LABEL_32;
  }

  v51 = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1E429DCC0;
  result = [objc_opt_self() effectWithBlurRadius_];
  if (result)
  {
    *(v52 + 32) = result;
    *(v52 + 40) = [objc_opt_self() colorEffectSaturate_];
    sub_1E3280A90(0, &qword_1ECF2A698);
    v54 = sub_1E42062A4();

    [v51 setBackgroundEffects_];

    v55 = v51;
    sub_1E37D424C(v51);
    v56 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v57 = ((*v6)[18].vtable)();
    [v56 setVuiBackgroundColor_];

    v58 = v56;
    sub_1E37D4358(v56);

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

id sub_1E37D4118@<X0>(void *a1@<X8>)
{
  type metadata accessor for PlaybackStatusView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E37D4154()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI18PlaybackStatusView_labelView);
  if (result)
  {
    return [result bottomMarginWithBaselineMargin_];
  }

  return result;
}

void sub_1E37D424C(void *a1)
{
  v9 = *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView];
  *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView] = a1;
  v2 = OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView;
  v3 = *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView];
  v4 = a1;
  [v1 vui:v3 addSubview:v9 oldView:?];
  if (*&v1[v2])
  {
    [v1 vui_sendSubviewToBack_];
  }

  [v1 vui_setNeedsLayout];
  v5 = *&v1[v2];
  if (v5)
  {
    v6 = v5;
    v7 = *sub_1E3E932E0();
    v8 = *sub_1E3E932EC();
    if (v7)
    {
      if ((v8 & ~v7) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (!v8)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v7 |= v8;
LABEL_10:
    [v6 setAutoresizingMask_];
  }
}

void sub_1E37D4358(void *a1)
{
  v10 = *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_colorOverlayView];
  *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_colorOverlayView] = a1;
  v2 = OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_colorOverlayView;
  v3 = *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_colorOverlayView];
  v4 = *&v1[OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView];
  v5 = a1;
  [v1 vui:v3 insertSubview:v4 aboveSubview:v10 oldView:?];
  [v1 vui_setNeedsLayout];
  v6 = *&v1[v2];
  if (v6)
  {
    v7 = v6;
    v8 = *sub_1E3E932E0();
    v9 = *sub_1E3E932EC();
    if (v8)
    {
      if ((v9 & ~v8) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (!v9)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v8 |= v9;
LABEL_8:
    [v7 setAutoresizingMask_];
  }
}

id sub_1E37D4458()
{
  OUTLINED_FUNCTION_0_8();
  v5 = OUTLINED_FUNCTION_14_29(&OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView);
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E37D44D0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = OUTLINED_FUNCTION_14_29(&OBJC_IVAR____TtC8VideosUIP33_3640757FD29EBE275075096C89220C7228PlaybackStatusBackgroundView_visualEffectView);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E37D4568()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackStatusBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E37D460C()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong vui_setNeedsLayout];
    [v1 vui_setNeedsDisplay];
  }
}

uint64_t sub_1E37D466C(unint64_t a1, unint64_t a2)
{
  result = sub_1E32AE9B0(a1);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      return MEMORY[0x1E69E7CC0];
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
      v6 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E37D4BA4();
    sub_1E4206254();
    sub_1E4206254();
    if (v26 == v24 && v27 == v25)
    {

LABEL_16:
      result = sub_1E32AE9B0(a2);
      v10 = 0;
      v21 = a2 & 0xC000000000000001;
      v22 = result;
      while (1)
      {
        if (v22 == v10)
        {
          type metadata accessor for LibMenuItem();

          OUTLINED_FUNCTION_18();
          v11 = sub_1E3A8A680();
          goto LABEL_32;
        }

        if (v21)
        {
          result = MEMORY[0x1E6911E60](v10, a2);
          v11 = result;
        }

        else
        {
          if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v11 = *(a2 + 8 * v10 + 32);
        }

        if (__OFADD__(v10, 1))
        {
          goto LABEL_52;
        }

        sub_1E4206254();
        sub_1E4206254();
        if (v26 == v24 && v27 == v25)
        {
          break;
        }

        v13 = sub_1E42079A4();

        if (v13)
        {
          goto LABEL_31;
        }

        ++v10;
      }

LABEL_31:

LABEL_32:
      v20 = *(*v6 + 256);
      v14 = v20();
      result = (*(*v11 + 264))(v14 & 1);
      for (j = 0; ; ++j)
      {
        if (v22 == j)
        {
          type metadata accessor for LibMenuItem();

          OUTLINED_FUNCTION_18();
          v16 = sub_1E3A8A680();
          goto LABEL_48;
        }

        if (v21)
        {
          result = MEMORY[0x1E6911E60](j, a2);
          v16 = result;
        }

        else
        {
          if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v16 = *(a2 + 8 * j + 32);
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_54;
        }

        sub_1E4206254();
        sub_1E4206254();
        if (v26 == v24 && v27 == v25)
        {
          break;
        }

        v18 = sub_1E42079A4();

        if (v18)
        {
          goto LABEL_47;
        }
      }

LABEL_47:

LABEL_48:
      v19 = v20();
      (*(*v16 + 264))(v19 & 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1E429DCC0;
      *(v9 + 32) = v11;
      *(v9 + 40) = v16;

      return v9;
    }

    v8 = sub_1E42079A4();

    if (v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

unint64_t sub_1E37D4BA4()
{
  result = qword_1EE285EE0;
  if (!qword_1EE285EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE285EE0);
  }

  return result;
}

uint64_t sub_1E37D4C08()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E37D4CA4()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  v2 = *sub_1E37D4C08();
  (*(v2 + 2048))();
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_13();
  (*(v3 + 1696))(15);

  OUTLINED_FUNCTION_0_36();
  v5 = *(v4 + 2048);

  v5(v6);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_13();
  (*(v7 + 1792))(10);

  OUTLINED_FUNCTION_0_36();
  v9 = *(v8 + 2048);

  v9(v10);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_13();
  (*(v11 + 464))(1);

  OUTLINED_FUNCTION_0_36();
  v13 = *(v12 + 2048);

  v15 = v13(v14);

  sub_1E3755B54();
  OUTLINED_FUNCTION_2_7();
  v16 = sub_1E4206F24();
  (*(*v15 + 680))(v16);

  OUTLINED_FUNCTION_0_36();
  v18 = *(v17 + 2048);

  v20 = v18(v19);

  OUTLINED_FUNCTION_2_7();
  v21 = sub_1E4206F24();
  (*(*v20 + 872))(v21);

  OUTLINED_FUNCTION_0_36();
  v23 = *(v22 + 2048);

  v25 = v23(v24);

  v26 = sub_1E4206F24();
  (*(*v25 + 752))(v26);

  OUTLINED_FUNCTION_0_36();
  v28 = *(v27 + 2048);

  v28(v29);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_13();
  (*(v30 + 312))(0x4049000000000000, 0);

  sub_1E3C37CBC(v31, 59);

  v32 = sub_1E374EA2C();
  sub_1E3C37CBC(v32, 17);

  return v1;
}

id sub_1E37D5144(void *a1)
{
  v2 = [a1 documentRef];
  v3 = sub_1E4205F14();
  v5 = v4;

  v444 = @"Library";
  v7 = VUIDocumentRefLibraryMainPage;
  v8 = sub_1E4205F14() == v3 && v6 == v5;
  v9 = MEMORY[0x1E69E7D40];
  v10 = &unk_1EE297000;
  if (v8)
  {

    goto LABEL_8;
  }

  v11 = sub_1E42079A4();

  if (v11)
  {
LABEL_8:

    v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A6B0));
    *(v12 + *((*v9 & *v12) + qword_1EE297B00 + 32)) = 0;
    OUTLINED_FUNCTION_37_12((v12 + *((*v9 & *v12) + qword_1EE297B00 + 48)));
    v13 = a1;
    v14 = *(**sub_1E3B7B1C8() + 672);

    v16 = v14(v15);

    sub_1E37D9AD0(v16, v451);

    if (*(&v451[1] + 1))
    {
      sub_1E3251BE8(v451, v452);
      sub_1E327F454(v452, v451);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
      v17 = type metadata accessor for LibLocalSource();
      OUTLINED_FUNCTION_22_14(v17, v18, v19, v17, v20, v21, v22, v23, v429, v431, v433, v439, @"Library", v445, v446, v447, v448, v449, v450[0]);
      if (swift_dynamicCast())
      {

        v24 = *&v452[2];
        __swift_project_boxed_opaque_existential_1(v452, *(&v452[1] + 1));
        v25 = OUTLINED_FUNCTION_35_0();
        *(&v455[4] + 1) = v26(v25, v24);
        *&v455[5] = v27;
        sub_1E327F454(v452, v451);

        sub_1E41E2E34(v28, v451, v455);

        __swift_destroy_boxed_opaque_existential_1(v452);
        v29 = OUTLINED_FUNCTION_24_9();
        memcpy(v29, v30, 0x58uLL);
        if (*&__dst[0])
        {
          v31 = OUTLINED_FUNCTION_33_17();
          memcpy(v31, v32, 0x58uLL);
          v33 = [v13 uiConfiguration];
          v34 = [v33 isRootViewController];

          OUTLINED_FUNCTION_32();
          v35 = &unk_1EE297000;
          v434 = v34;
          *(v12 + *(v36 + qword_1EE297B00 + 40)) = v34;
          v37 = [v13 contextData];
          if (v37 && (v38 = v37, v39 = [v37 contextDataDict], v38, v39))
          {
            v40 = sub_1E4205C64();

            sub_1E374BD08(v40);
            OUTLINED_FUNCTION_35_0();

            v41 = sub_1E37FAFEC();
            v42 = *v41;
            v43 = v41[1];

            sub_1E3277E60(v42, v43, v39, v455);

            if (*(&v455[1] + 1))
            {
              OUTLINED_FUNCTION_24_9();
              v44 = 0;
              if (OUTLINED_FUNCTION_21_4())
              {
                v35 = &unk_1EE297000;
                if (LOBYTE(__dst[0]) != 1)
                {
                  v45 = 2;
                  v440 = 0;
                  goto LABEL_57;
                }
              }

              else
              {
                v35 = &unk_1EE297000;
              }

LABEL_56:
              v440 = v44;
              v44 = 1;
              v45 = 1;
LABEL_57:
              v96 = objc_opt_self();
              if ([v96 isPhone])
              {
                v97 = [v13 documentRef];
                v98 = sub_1E4205F14();
                v100 = v99;

                if (v98 == sub_1E4205F14() && v100 == v101)
                {
                  goto LABEL_108;
                }

                v103 = OUTLINED_FUNCTION_11_30();

                v9 = MEMORY[0x1E69E7D40];
                v35 = &unk_1EE297000;
                if (v103)
                {
                  goto LABEL_109;
                }

                v104 = [v13 documentRef];
                v105 = sub_1E4205F14();
                v107 = v106;

                if (v105 == sub_1E4205F14() && v107 == v108)
                {
                  goto LABEL_108;
                }

                v110 = OUTLINED_FUNCTION_11_30();

                v9 = MEMORY[0x1E69E7D40];
                v35 = &unk_1EE297000;
                if (v110)
                {
                  goto LABEL_109;
                }
              }

              v7 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
              if (![v96 isPad] || (v111 = sub_1E3D4C080(), (OUTLINED_FUNCTION_2_31(v111) & 1) == 0))
              {
LABEL_75:
                if (([v96 isPad] & v434 & 1) == 0)
                {
                  goto LABEL_112;
                }

                goto LABEL_109;
              }

              v112 = [v13 documentRef];
              v113 = sub_1E4205F14();
              v115 = v114;

              if (v113 != sub_1E4205F14() || v115 != v116)
              {
                v118 = OUTLINED_FUNCTION_11_30();

                v9 = MEMORY[0x1E69E7D40];
                v35 = &unk_1EE297000;
                if ((v118 & 1) == 0)
                {
                  goto LABEL_75;
                }

LABEL_109:
                if (v44)
                {
                  v45 = 3;
                }

                else
                {
                  v45 = 2;
                }

LABEL_112:
                v142 = v12 + *((*v9 & *v12) + v35[352] + 16);
                *v142 = v44;
                *(v142 + 8) = v45;
                *(v142 + 16) = 0;
                OUTLINED_FUNCTION_5_41(v142);
                if (v440)
                {
                  *&v143 = OUTLINED_FUNCTION_16_20();
                  *(v144 + 768) = v143;
                  *(v144 + 784) = v143;
                }

                else
                {
                  v145 = sub_1E37FAFB0();
                  v44 = *v145;
                  v146 = v145[1];

                  sub_1E3277E60(v44, v146, v39, v455);

                  if (*(&v455[1] + 1))
                  {
                    type metadata accessor for LibMenuItem();
                    OUTLINED_FUNCTION_24_9();
                    if (OUTLINED_FUNCTION_21_4())
                    {
                      v147 = *&__dst[0];
                    }

                    else
                    {
                      v147 = 0;
                    }

LABEL_119:
                    OUTLINED_FUNCTION_32();
                    *(v12 + *(v148 + v35[352] + 24)) = v147;
                    v149 = OUTLINED_FUNCTION_12_29();
                    sub_1E37DA3F4(v149, v150);

                    v151 = sub_1E4201E44();
                    if (OUTLINED_FUNCTION_47_6())
                    {
                      v152 = sub_1E4206AC4();
                    }

                    else
                    {
                      v152 = *MEMORY[0x1E69DF878];
                    }

                    v153 = v152;
                    v154 = objc_opt_self();
                    v155 = v153;
                    OUTLINED_FUNCTION_14_30();
                    v157 = [v154 v156];
                    [v157 addObserver:v44 selector:sel_handleNetworkChanges name:v153 object:0];

                    v158 = [objc_opt_self() sharedInstance];
                    v159 = [v158 launchConfig];

                    LODWORD(v158) = [v159 checkRemoteServerReachability];
                    if (v158)
                    {
                      v160 = [v154 v7 + 901];
                      [v160 addObserver:v44 selector:sel_handleNetworkChanges name:*NSNotification.remoteNetworkReachabilityDidChange.unsafeMutableAddressor() object:0];

                      sub_1E37DA42C(__src);
                    }

                    else
                    {
                      sub_1E37DA42C(__src);
                    }

                    return v44;
                  }
                }

                sub_1E325F748(v455, &unk_1ECF296E0);
                v147 = 0;
                goto LABEL_119;
              }

LABEL_108:

              v9 = MEMORY[0x1E69E7D40];
              v35 = &unk_1EE297000;
              goto LABEL_109;
            }

            LOBYTE(v44) = 0;
            v35 = &unk_1EE297000;
          }

          else
          {
            v39 = 0;
            *&v94 = OUTLINED_FUNCTION_16_20();
            *(v95 + 768) = v94;
            *(v95 + 784) = v94;
            LOBYTE(v44) = 1;
          }

          sub_1E325F748(v455, &unk_1ECF296E0);
          goto LABEL_56;
        }

        goto LABEL_26;
      }

      __swift_destroy_boxed_opaque_existential_1(v452);
    }

    else
    {

      sub_1E325F748(v451, &unk_1ECF2A740);
    }

    *&v50 = OUTLINED_FUNCTION_16_20();
    v51[24] = v50;
    v51[25] = v50;
    v51[26] = v50;
    v51[27] = v50;
    v51[28] = v50;
    *&__dst[5] = 0;
LABEL_26:

    sub_1E325F748(__dst, &qword_1ECF2A738);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A6B0);
LABEL_27:
    swift_deallocPartialClassInstance();
    return 0;
  }

  i = @"LibraryMainPage";
  sub_1E4205F14();
  OUTLINED_FUNCTION_41_17();
  if (v8 && v47 == v5)
  {

LABEL_31:

    v53 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A6A8));
    v54 = a1;
    OUTLINED_FUNCTION_38_3();
    v53[*((*v9 & v55) + qword_1EE297B00 + 32)] = 0;
    OUTLINED_FUNCTION_4_33();
    OUTLINED_FUNCTION_37_12(&v53[*(v56 + qword_1EE297B00 + 48)]);
    v58 = v57;
    v59 = &selRef_collectionViewCanBecomeFocused_;
    v60 = [v58 contextData];
    if (v60 && (v61 = sub_1E3751A20(v60)) != 0)
    {
      sub_1E374BD08(v61);
      OUTLINED_FUNCTION_35_0();

      if (v5)
      {
        v62 = sub_1E37FAFC8();
        v63 = *v62;
        v64 = v62[1];

        sub_1E3277E60(v63, v64, v5, __src);

        if (*(&__src[1] + 1))
        {
          if (swift_dynamicCast())
          {
            v439 = v58;
            v65 = *(&__dst[0] + 1);
            v9 = *&__dst[0];
            v431 = sub_1E3B7B1C8();
            v66 = *(**v431 + 672);

            v68 = v66(v67);

            v10 = 0;
            v69 = *(v68 + 16);
            for (i = (v68 + 32); ; i = (i + 40))
            {
              if (v69 == v10)
              {

                v58 = v439;

                v5 = 0;
                goto LABEL_181;
              }

              if (v10 >= *(v68 + 16))
              {
                break;
              }

              sub_1E327F454(i, v452);
              v70 = *&v452[2];
              __swift_project_boxed_opaque_existential_1(v452, *(&v452[1] + 1));
              v71 = OUTLINED_FUNCTION_38();
              if (v72(v71, v70) == v9 && v73 == v65)
              {

LABEL_172:

                sub_1E3251BE8(v452, __src);
                v204 = OUTLINED_FUNCTION_33_17();
                sub_1E3251BE8(v204, v205);
                v206 = *v431;
                v207 = *(**v431 + 408);

                v5 = v206;
                v207(v208);
                OUTLINED_FUNCTION_38();

                if (v206)
                {
                  sub_1E327F454(__dst, v452);

                  v209 = OUTLINED_FUNCTION_18();
                  sub_1E41E2FB4(v452, 0, v209 & 1, __src);
                  v58 = v439;

                  __swift_destroy_boxed_opaque_existential_1(__dst);
                  v77 = __src[0];
                  v78 = __src[1];
                  v79 = __src[2];
                  v80 = __src[3];
                  v76 = *&__src[4];
LABEL_182:
                  v9 = MEMORY[0x1E69E7D40];
                  v10 = &unk_1EE297000;
                  i = @"LibraryMainPage";
                  v59 = &selRef_collectionViewCanBecomeFocused_;
                  goto LABEL_47;
                }

                __swift_destroy_boxed_opaque_existential_1(__dst);
                v58 = v439;

LABEL_181:
                *&v77 = OUTLINED_FUNCTION_8_32();
                goto LABEL_182;
              }

              v75 = sub_1E42079A4();

              if (v75)
              {
                goto LABEL_172;
              }

              __swift_destroy_boxed_opaque_existential_1(v452);
              v10 = (v10 + 1);
            }

            __break(1u);
            goto LABEL_227;
          }
        }

        else
        {

          sub_1E325F748(__src, &unk_1ECF296E0);
        }

        v5 = 0;
        *&v77 = OUTLINED_FUNCTION_8_32();
        v10 = &unk_1EE297000;
LABEL_47:
        *(v455 + 8) = v77;
        *(&v455[1] + 8) = v78;
        *(&v455[2] + 8) = v79;
        *(&v455[3] + 8) = v80;
        *&v455[0] = v5;
        *(&v455[4] + 1) = v76;
        if (!v5)
        {

          v138 = &qword_1ECF2A6A8;
LABEL_101:
          __swift_instantiateConcreteTypeFromMangledNameV2(v138);
          goto LABEL_27;
        }

        v81 = OUTLINED_FUNCTION_12_29();
        memcpy(v81, v82, 0x50uLL);
        v83 = [v58 uiConfiguration];
        v84 = [v83 isRootViewController];

        OUTLINED_FUNCTION_4_33();
        v53[*(v85 + v10[352] + 40)] = v84;
        v86 = [v58 v59[188]];
        v441 = v58;
        if (v86 && (v87 = v86, v88 = [v86 contextDataDict], v87, v88))
        {
          v89 = sub_1E4205C64();

          sub_1E374BD08(v89);
          OUTLINED_FUNCTION_38();

          v90 = sub_1E37FAFEC();
          v91 = *v90;
          v92 = v90[1];

          sub_1E3277E60(v91, v92, v88, __dst);

          if (*(&__dst[1] + 1))
          {
            v44 = 0;
            if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && LOBYTE(v452[0]) != 1)
            {
              v93 = 2;
              v435 = 0;
              goto LABEL_80;
            }

LABEL_79:
            v435 = v44;
            v44 = 1;
            v93 = 1;
LABEL_80:
            if ([objc_opt_self() isPhone])
            {
              v121 = [v58 documentRef];
              v122 = v121;
              sub_1E4205F14();
              OUTLINED_FUNCTION_48_11();
              sub_1E4205F14();
              OUTLINED_FUNCTION_42_15();
              if (v8 && v9 == v123)
              {
                goto LABEL_125;
              }

              OUTLINED_FUNCTION_6_35();
              OUTLINED_FUNCTION_30_7();

              v9 = MEMORY[0x1E69E7D40];
              if (v122)
              {
                goto LABEL_126;
              }

              v125 = [v58 documentRef];
              v126 = v125;
              sub_1E4205F14();
              OUTLINED_FUNCTION_48_11();
              sub_1E4205F14();
              OUTLINED_FUNCTION_42_15();
              if (v8 && v9 == v127)
              {
                goto LABEL_125;
              }

              OUTLINED_FUNCTION_6_35();
              OUTLINED_FUNCTION_30_7();

              v9 = MEMORY[0x1E69E7D40];
              v84 = v84;
              if (v126)
              {
                goto LABEL_126;
              }
            }

            i = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
            if (!OUTLINED_FUNCTION_49_9() || (v129 = sub_1E3D4C080(), (OUTLINED_FUNCTION_2_31(v129) & 1) == 0))
            {
LABEL_98:
              if ((OUTLINED_FUNCTION_49_9() & v84 & 1) == 0)
              {
                goto LABEL_129;
              }

              goto LABEL_126;
            }

            v130 = v84;
            v131 = [v441 documentRef];
            v132 = sub_1E4205F14();
            v134 = v133;

            v135 = sub_1E4205F14();
            v84 = v136;
            if (v132 != v135 || v134 != v136)
            {
              OUTLINED_FUNCTION_29_8();
              OUTLINED_FUNCTION_30_7();

              v9 = MEMORY[0x1E69E7D40];
              v84 = v130;
              if ((v132 & 1) == 0)
              {
                goto LABEL_98;
              }

LABEL_126:
              if (v44)
              {
                v93 = 3;
              }

              else
              {
                v93 = 2;
              }

LABEL_129:
              OUTLINED_FUNCTION_38_3();
              v162 = &v53[*((*v9 & v161) + qword_1EE297B00 + 16)];
              *v162 = v44;
              *(v162 + 8) = v93;
              *(v162 + 16) = 0;
              OUTLINED_FUNCTION_5_41(v162);
              if (v435)
              {
                *&v163 = OUTLINED_FUNCTION_16_20();
                *(v164 + 384) = v163;
                *(v164 + 400) = v163;
              }

              else
              {
                v44 = *sub_1E37FAFB0();

                v165 = OUTLINED_FUNCTION_27_0();
                sub_1E3277E60(v165, v166, v88, v167);

                if (*(&__dst[1] + 1))
                {
                  type metadata accessor for LibMenuItem();
                  if (OUTLINED_FUNCTION_21_4())
                  {
                    v168 = *&v452[0];
                  }

                  else
                  {
                    v168 = 0;
                  }

LABEL_136:
                  OUTLINED_FUNCTION_4_33();
                  *&v53[*(v169 + qword_1EE297B00 + 24)] = v168;
                  memcpy(__dst, __src, 0x50uLL);

                  sub_1E37C5830(v455, v452, &qword_1ECF2A750);
                  v170 = sub_1E4201E44();
                  if (OUTLINED_FUNCTION_47_6())
                  {
                    v171 = sub_1E4206AC4();
                  }

                  else
                  {
                    v171 = *MEMORY[0x1E69DF878];
                  }

                  v172 = v171;
                  v69 = v441;
                  v173 = objc_opt_self();
                  v174 = v172;
                  OUTLINED_FUNCTION_14_30();
                  v176 = [v173 v175];
                  OUTLINED_FUNCTION_9_28(v176);

                  v177 = [objc_opt_self() sharedInstance];
                  v178 = [v177 launchConfig];

                  LODWORD(v177) = [v178 checkRemoteServerReachability];
                  if (v177)
                  {
                    v179 = [v173 &i[28].isa + 5];
                    v180 = *NSNotification.remoteNetworkReachabilityDidChange.unsafeMutableAddressor();
                    OUTLINED_FUNCTION_20_22(v179, v84 + 2040);
                    v181 = &qword_1ECF2A750;
                    v182 = v455;
LABEL_141:
                    sub_1E325F748(v182, v181);

LABEL_144:

                    return v44;
                  }

                  v183 = &qword_1ECF2A750;
                  v184 = v455;
LABEL_143:
                  sub_1E325F748(v184, v183);

                  v69 = v172;
                  goto LABEL_144;
                }
              }

              sub_1E325F748(__dst, &unk_1ECF296E0);
              v168 = 0;
              goto LABEL_136;
            }

LABEL_125:

            v9 = MEMORY[0x1E69E7D40];
            goto LABEL_126;
          }

          LOBYTE(v44) = 0;
        }

        else
        {
          v88 = 0;
          *&v119 = OUTLINED_FUNCTION_16_20();
          *(v120 + 384) = v119;
          *(v120 + 400) = v119;
          LOBYTE(v44) = 1;
        }

        sub_1E325F748(__dst, &unk_1ECF296E0);
        goto LABEL_79;
      }
    }

    else
    {

      v5 = 0;
    }

    *&v77 = OUTLINED_FUNCTION_8_32();
    goto LABEL_47;
  }

  v49 = OUTLINED_FUNCTION_10_28();

  if (v49)
  {
    goto LABEL_31;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_41_17();
  if (!v8 || v139 != v5)
  {
    v141 = OUTLINED_FUNCTION_10_28();

    if (v141)
    {
      goto LABEL_146;
    }

    sub_1E4205F14();
    OUTLINED_FUNCTION_41_17();
    if (v8 && v186 == v5)
    {

LABEL_161:

      v189 = [a1 contextData];
      if (!v189)
      {
        return 0;
      }

      v190 = sub_1E3751A20(v189);
      if (!v190)
      {
        return 0;
      }

      v191 = sub_1E374BD08(v190);

      if (!v191)
      {
        return 0;
      }

      sub_1E37FAFB0();
      OUTLINED_FUNCTION_44_0();
      v192 = OUTLINED_FUNCTION_13_39();
      sub_1E3277E60(v192, v193, v191, v194);

      if (*(&v455[1] + 1))
      {
        v195 = type metadata accessor for LibMenuItem();
        OUTLINED_FUNCTION_12_29();
        if ((swift_dynamicCast() & 1) == 0)
        {

          return 0;
        }

        v196 = *&__src[0];
        v197 = sub_1E3B7B1C8();
        OUTLINED_FUNCTION_8();
        v199 = *(v198 + 808);

        v199(v455, *&__src[0]);

        if (*(&v455[1] + 1))
        {
          sub_1E3251BE8(v455, &v445);
          sub_1E37FAFEC();
          OUTLINED_FUNCTION_44_0();
          v200 = OUTLINED_FUNCTION_13_39();
          sub_1E3277E60(v200, v201, v191, v202);

          if (*(&v455[1] + 1))
          {
            OUTLINED_FUNCTION_12_29();
            if (OUTLINED_FUNCTION_21_4())
            {
              v203 = __src[0];
              goto LABEL_204;
            }
          }

          else
          {
            sub_1E325F748(v455, &unk_1ECF296E0);
          }

          v203 = 1;
LABEL_204:
          v442 = v203;
          v432 = v195;
          v437 = @"LibraryMainPage";
          sub_1E37FAFE0();
          OUTLINED_FUNCTION_44_0();
          v249 = OUTLINED_FUNCTION_13_39();
          sub_1E3277E60(v249, v250, v191, v251);

          if (*(&v455[1] + 1))
          {
            v252 = v196;
            OUTLINED_FUNCTION_12_29();
            v253 = OUTLINED_FUNCTION_21_4();
            if (v253)
            {
              v254 = *&__src[0];
            }

            else
            {
              v254 = 0;
            }

            if (v253)
            {
              v255 = *(&__src[0] + 1);
            }

            else
            {
              v255 = 0;
            }
          }

          else
          {
            v252 = v196;
            sub_1E325F748(v455, &unk_1ECF296E0);
            v254 = 0;
            v255 = 0;
          }

          v256 = [a1 uiConfiguration];
          v257 = [v256 isRootViewController];

          v258 = *(**v197 + 856);

          v258(v252);

          v259 = *sub_1E38F1CD4();
          v260 = *(v252 + 32);

          LOBYTE(v260) = sub_1E37D7DAC(v260, v259);

          if (v260)
          {
            type metadata accessor for LibraryDetailsContainerViewController();
            sub_1E327F454(&v445, v455);

            v44 = sub_1E38F1FA0(v261, v455, v442, v254, v255, v257);
            OUTLINED_FUNCTION_8();
            v263 = *(v262 + 216);

            LOBYTE(v263) = v263(v264);

            (*((*MEMORY[0x1E69E7D40] & *v44) + 0x1C8))(v252, 1, v263 & 1);
LABEL_336:

            __swift_destroy_boxed_opaque_existential_1(&v445);
            return v44;
          }

          v443 = v252;

          v265 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A758));
          v266 = a1;
          OUTLINED_FUNCTION_26_3();
          *(v265 + *((*MEMORY[0x1E69E7D40] & v267) + qword_1EE297B00 + 32)) = 0;
          OUTLINED_FUNCTION_15_32();
          OUTLINED_FUNCTION_37_12((v265 + *(v268 + qword_1EE297B00 + 48)));
          v270 = v269;
          v271 = &selRef_collectionViewCanBecomeFocused_;
          v272 = [v270 contextData];
          if (v272 && (v273 = sub_1E3751A20(v272)) != 0)
          {
            v274 = sub_1E374BD08(v273);

            if (v274)
            {
              sub_1E37FAFB0();
              OUTLINED_FUNCTION_46_7();
              v275 = OUTLINED_FUNCTION_34();
              sub_1E3277E60(v275, v276, v274, v277);

              if (*(&v455[1] + 1))
              {
                OUTLINED_FUNCTION_12_29();
                if (swift_dynamicCast())
                {
                  v278 = *&__src[0];
                  sub_1E37FAFE0();
                  OUTLINED_FUNCTION_46_7();
                  v279 = OUTLINED_FUNCTION_34();
                  sub_1E3277E60(v279, v280, v274, v281);

                  if (*(&v455[1] + 1))
                  {
                    OUTLINED_FUNCTION_12_29();
                    if (OUTLINED_FUNCTION_21_4())
                    {
                      v254 = *(&__src[0] + 1);
                    }

                    else
                    {
                      v254 = 0;
                    }
                  }

                  else
                  {
                    sub_1E325F748(v455, &unk_1ECF296E0);
                    v254 = 0;
                  }

                  sub_1E37FAFEC();
                  OUTLINED_FUNCTION_46_7();
                  v423 = OUTLINED_FUNCTION_34();
                  sub_1E3277E60(v423, v424, v274, v425);

                  if (*(&v452[1] + 1))
                  {
                    OUTLINED_FUNCTION_21_4();
                  }

                  else
                  {
                    sub_1E325F748(v452, &unk_1ECF296E0);
                  }

                  v426 = [v270 uiConfiguration];
                  [v426 isRootViewController];

                  sub_1E3B7B1C8();

                  sub_1E3A71D24();

                  *&__src[0] = v278;
                  memcpy(__src + 8, __dst, 0xB1uLL);
                  nullsub_1(v427, v428);
                  memcpy(v455, __src, 0xB9uLL);
                  v271 = &selRef_collectionViewCanBecomeFocused_;
LABEL_286:
                  v348 = OUTLINED_FUNCTION_24_9();
                  memcpy(v348, v349, 0xB9uLL);
                  memcpy(v455, __dst, 0xB9uLL);
                  v350 = OUTLINED_FUNCTION_33_17();
                  memcpy(v350, v351, 0xB9uLL);
                  if (sub_1E32B30AC(__src) == 1)
                  {

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A758);
                    OUTLINED_FUNCTION_20_2();
                    swift_deallocPartialClassInstance();
                    v44 = 0;
                    goto LABEL_336;
                  }

                  memcpy(v452, v455, 0xB9uLL);
                  v352 = [v270 uiConfiguration];
                  v353 = [v352 isRootViewController];

                  OUTLINED_FUNCTION_15_32();
                  LODWORD(v429) = v353;
                  *(v265 + *(v354 + qword_1EE297B00 + 40)) = v353;
                  v355 = [v270 v271[188]];
                  if (v355 && (v356 = v355, v357 = [v355 contextDataDict], v356, v357) && (v358 = sub_1E4205C64(), v357, v359 = sub_1E374BD08(v358), , v359))
                  {

                    sub_1E37FAFEC();
                    OUTLINED_FUNCTION_46_7();
                    v360 = OUTLINED_FUNCTION_34();
                    sub_1E3277E60(v360, v361, v359, v362);

                    if (*(&v451[1] + 1))
                    {
                      OUTLINED_FUNCTION_22_14(v363, v364, v365, MEMORY[0x1E69E6370], v366, v367, v368, v369, v430, v432, @"LibraryMainPage", v252, @"Library", v445, v446, v447, v448, v449, v450[0]);
                      v370 = 0;
                      if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && LOBYTE(v450[0]) != 1)
                      {
                        v44 = 2;
                        HIDWORD(v430) = 0;
                        goto LABEL_298;
                      }

LABEL_297:
                      HIDWORD(v430) = v370;
                      v370 = 1;
                      v44 = 1;
LABEL_298:
                      v373 = objc_opt_self();
                      if ([v373 isPhone])
                      {
                        v374 = [v270 documentRef];
                        v375 = sub_1E4205F14();
                        v254 = v376;

                        if (v375 == sub_1E4205F14() && v254 == v377)
                        {
                          goto LABEL_318;
                        }

                        v379 = OUTLINED_FUNCTION_28_14();

                        if (v379)
                        {
                          goto LABEL_319;
                        }

                        v380 = [v270 documentRef];
                        v381 = sub_1E4205F14();
                        v254 = v382;

                        if (v381 == sub_1E4205F14() && v254 == v383)
                        {
                          goto LABEL_318;
                        }

                        v385 = OUTLINED_FUNCTION_28_14();

                        if (v385)
                        {
                          goto LABEL_319;
                        }
                      }

                      if (![v373 isPad] || (v386 = sub_1E3D4C080(), (OUTLINED_FUNCTION_2_31(v386) & 1) == 0))
                      {
LABEL_316:
                        if (([v373 isPad] & v430 & 1) == 0)
                        {
                          goto LABEL_322;
                        }

                        goto LABEL_319;
                      }

                      v387 = [v270 documentRef];
                      v388 = sub_1E4205F14();
                      v254 = v389;

                      if (v388 != sub_1E4205F14() || v254 != v390)
                      {
                        v392 = OUTLINED_FUNCTION_28_14();

                        if ((v392 & 1) == 0)
                        {
                          goto LABEL_316;
                        }

LABEL_319:
                        if (v370)
                        {
                          v44 = 3;
                        }

                        else
                        {
                          v44 = 2;
                        }

LABEL_322:
                        OUTLINED_FUNCTION_26_3();
                        v393 = MEMORY[0x1E69E7D40];
                        v395 = v265 + *((*MEMORY[0x1E69E7D40] & v394) + qword_1EE297B00 + 16);
                        *v395 = v370;
                        *(v395 + 8) = v44;
                        *(v395 + 16) = 0;
                        OUTLINED_FUNCTION_5_41(v395);
                        if ((v430 & 0x100000000) != 0)
                        {
                          *&v396 = OUTLINED_FUNCTION_16_20();
                          *v397 = v396;
                          v397[1] = v396;
                        }

                        else
                        {
                          v44 = *sub_1E37FAFB0();

                          v398 = OUTLINED_FUNCTION_27_0();
                          sub_1E3277E60(v398, v399, v359, v400);

                          if (*(&v451[1] + 1))
                          {
                            OUTLINED_FUNCTION_22_14(v401, v402, v403, v404, v405, v406, v407, v408, v430, v432, v437, v443, v444, v445, v446, v447, v448, v449, v450[0]);
                            if (swift_dynamicCast())
                            {
                              v409 = v450[0];
                            }

                            else
                            {
                              v409 = 0;
                            }

LABEL_329:
                            *(v265 + *((*v393 & *v265) + qword_1EE297B00 + 24)) = v409;
                            memcpy(v451, v452, 0xB9uLL);

                            sub_1E37C5830(__dst, v450, &qword_1ECF2A760);
                            v410 = sub_1E4201E44();
                            if (OUTLINED_FUNCTION_47_6())
                            {
                              v411 = sub_1E4206AC4();
                            }

                            else
                            {
                              v411 = *MEMORY[0x1E69DF878];
                            }

                            v412 = v411;
                            v413 = objc_opt_self();
                            v414 = v412;
                            OUTLINED_FUNCTION_14_30();
                            v416 = [v413 v415];
                            OUTLINED_FUNCTION_9_28(v416);

                            v417 = [objc_opt_self() sharedInstance];
                            v418 = [v417 launchConfig];

                            LODWORD(v417) = [v418 checkRemoteServerReachability];
                            if (v417)
                            {
                              v419 = [v413 (v254 + 901)];
                              v420 = *NSNotification.remoteNetworkReachabilityDidChange.unsafeMutableAddressor();
                              OUTLINED_FUNCTION_20_22(v419, v373 + 2040);
                              sub_1E325F748(__dst, &qword_1ECF2A760);
                            }

                            else
                            {
                              sub_1E325F748(__dst, &qword_1ECF2A760);

                              v270 = v412;
                            }

                            goto LABEL_336;
                          }
                        }

                        sub_1E325F748(v451, &unk_1ECF296E0);
                        v409 = 0;
                        goto LABEL_329;
                      }

LABEL_318:

                      goto LABEL_319;
                    }

                    v370 = 0;
                  }

                  else
                  {
                    v359 = 0;
                    *&v371 = OUTLINED_FUNCTION_16_20();
                    *v372 = v371;
                    v372[1] = v371;
                    v370 = 1;
                  }

                  sub_1E325F748(v451, &unk_1ECF296E0);
                  goto LABEL_297;
                }
              }

              else
              {

                sub_1E325F748(v455, &unk_1ECF296E0);
              }
            }

            else
            {
            }

            v271 = &selRef_collectionViewCanBecomeFocused_;
          }

          else
          {
          }

          sub_1E37DA45C(v455);
          goto LABEL_286;
        }

        v248 = &unk_1ECF2A740;
      }

      else
      {

        v248 = &unk_1ECF296E0;
      }

      sub_1E325F748(v455, v248);
      return 0;
    }

    v188 = OUTLINED_FUNCTION_10_28();

    if (v188)
    {
      goto LABEL_161;
    }

    sub_1E4205F14();
    OUTLINED_FUNCTION_41_17();
    if (v8 && v210 == v5)
    {
    }

    else
    {
      v212 = OUTLINED_FUNCTION_10_28();

      if ((v212 & 1) == 0)
      {
        return 0;
      }
    }

    v53 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A6A0));
    v213 = a1;
    OUTLINED_FUNCTION_38_3();
    v53[*((*v9 & v214) + qword_1EE297B00 + 32)] = 0;
    OUTLINED_FUNCTION_4_33();
    OUTLINED_FUNCTION_37_12(&v53[*(v215 + qword_1EE297B00 + 48)]);
    v69 = v216;
    v217 = [v69 contextData];
    if (!v217)
    {
      goto LABEL_228;
    }

    v218 = sub_1E3751A20(v217);
    if (!v218)
    {
      goto LABEL_228;
    }

    sub_1E374BD08(v218);
    OUTLINED_FUNCTION_35_0();

    if (!v5)
    {
      goto LABEL_228;
    }

    v219 = sub_1E37FAF8C();
    v220 = *v219;
    v221 = v219[1];

    sub_1E3277E60(v220, v221, v5, v455);

    if (*(&v455[1] + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      OUTLINED_FUNCTION_12_29();
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_228:

        goto LABEL_229;
      }

      v222 = *&__src[0];
      sub_1E37FAFC8();
      OUTLINED_FUNCTION_44_0();
      v223 = OUTLINED_FUNCTION_13_39();
      sub_1E3277E60(v223, v224, *&__src[0], v225);

      if (*(&v455[1] + 1))
      {
        OUTLINED_FUNCTION_12_29();
        if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
        {
LABEL_227:

          goto LABEL_228;
        }

        v436 = @"LibraryMainPage";
        v226 = __src[0];
        v227 = sub_1E3B7B1C8();
        v228 = *v227;
        v229 = *(**v227 + 408);

        v231 = v228;
        v229(v230);
        OUTLINED_FUNCTION_38();

        if (!v228)
        {

LABEL_342:
          v9 = MEMORY[0x1E69E7D40];
          v10 = &unk_1EE297000;
          i = v436;
          goto LABEL_229;
        }

        v232 = sub_1E37FAF98();
        v233 = *v232;
        v234 = v232[1];

        sub_1E3277E60(v233, v234, *&__src[0], __src);

        if (*(&__src[1] + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
          if (OUTLINED_FUNCTION_21_4())
          {
            if (*(&v455[1] + 1))
            {
              sub_1E3251BE8(v455, v452);
              v235 = sub_1E37FAFA4();
              v236 = *v235;
              v237 = v235[1];

              sub_1E3277E60(v236, v237, v222, v451);

              if (*(&v451[1] + 1))
              {
                OUTLINED_FUNCTION_22_14(v238, v239, v240, MEMORY[0x1E69E6370], v241, v242, v243, v244, v429, v431, @"LibraryMainPage", v439, @"Library", v445, v446, v447, v448, v449, v450[0]);
                if (OUTLINED_FUNCTION_21_4())
                {
                  sub_1E327F454(v452, v455);

                  sub_1E3B23ED0(v245, v226, *(&v226 + 1), v231, v455, v450[0], 0, __dst);

                  __swift_destroy_boxed_opaque_existential_1(v452);
                  *&__src[0] = v231;
                  memcpy(__src + 8, __dst, 0x78uLL);
                  nullsub_1(v246, v247);
                  memcpy(v455, __src, 0x80uLL);
                  v9 = MEMORY[0x1E69E7D40];
                  v10 = &unk_1EE297000;
                  i = v436;
                  goto LABEL_230;
                }

                __swift_destroy_boxed_opaque_existential_1(v452);
                goto LABEL_342;
              }

              __swift_destroy_boxed_opaque_existential_1(v452);
              v421 = &unk_1ECF296E0;
              v422 = v451;
              goto LABEL_341;
            }
          }

          else
          {
            memset(v455, 0, 40);
          }
        }

        else
        {

          sub_1E325F748(__src, &unk_1ECF296E0);
          memset(v455, 0, 40);
        }

        v421 = &qword_1ECF2A778;
        v422 = v455;
LABEL_341:
        sub_1E325F748(v422, v421);
        goto LABEL_342;
      }
    }

    sub_1E325F748(v455, &unk_1ECF296E0);
LABEL_229:
    sub_1E37DA50C(v455);
LABEL_230:
    v282 = OUTLINED_FUNCTION_24_9();
    memcpy(v282, v283, 0x80uLL);
    memcpy(v455, __dst, 0x80uLL);
    v284 = OUTLINED_FUNCTION_33_17();
    memcpy(v284, v285, 0x80uLL);
    if (sub_1E32B30AC(__src) == 1)
    {

      v138 = &qword_1ECF2A6A0;
      goto LABEL_101;
    }

    memcpy(v452, v455, 0x80uLL);
    v286 = [v69 uiConfiguration];
    v287 = [v286 isRootViewController];

    OUTLINED_FUNCTION_4_33();
    v53[*(v288 + v10[352] + 40)] = v287;
    v289 = [v69 contextData];
    if (v289 && (v290 = v289, v291 = [v289 contextDataDict], v290, v291) && (v292 = sub_1E4205C64(), v291, v293 = sub_1E374BD08(v292), , v293))
    {

      v294 = sub_1E37FAFEC();
      v295 = *v294;
      v296 = v294[1];

      sub_1E3277E60(v295, v296, v293, v451);

      v438 = v293;
      if (*(&v451[1] + 1))
      {
        OUTLINED_FUNCTION_22_14(v297, v298, v299, MEMORY[0x1E69E6370], v300, v301, v302, v303, v429, v431, v293, v439, v444, v445, v446, v447, v448, v449, v450[0]);
        v44 = 0;
        if ((OUTLINED_FUNCTION_21_4() & 1) != 0 && LOBYTE(v450[0]) != 1)
        {
          v304 = 2;
          LODWORD(v439) = 0;
          goto LABEL_242;
        }

LABEL_241:
        LODWORD(v439) = v44;
        v44 = 1;
        v304 = 1;
LABEL_242:
        if ([objc_opt_self() isPhone])
        {
          LODWORD(v431) = v287;
          v307 = [v69 documentRef];
          v308 = v307;
          sub_1E4205F14();
          OUTLINED_FUNCTION_48_11();
          sub_1E4205F14();
          OUTLINED_FUNCTION_42_15();
          if (v8 && v9 == v309)
          {
            goto LABEL_262;
          }

          OUTLINED_FUNCTION_6_35();
          OUTLINED_FUNCTION_30_7();

          v9 = MEMORY[0x1E69E7D40];
          if (v308)
          {
            goto LABEL_263;
          }

          v311 = [v69 documentRef];
          v312 = v311;
          sub_1E4205F14();
          OUTLINED_FUNCTION_48_11();
          sub_1E4205F14();
          OUTLINED_FUNCTION_42_15();
          if (v8 && v9 == v313)
          {
            goto LABEL_262;
          }

          OUTLINED_FUNCTION_6_35();
          OUTLINED_FUNCTION_30_7();

          v9 = MEMORY[0x1E69E7D40];
          v287 = v287;
          if (v312)
          {
            goto LABEL_263;
          }
        }

        i = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
        if (!OUTLINED_FUNCTION_49_9() || (v315 = sub_1E3D4C080(), (OUTLINED_FUNCTION_2_31(v315) & 1) == 0))
        {
LABEL_260:
          if ((OUTLINED_FUNCTION_49_9() & v287 & 1) == 0)
          {
            goto LABEL_266;
          }

          goto LABEL_263;
        }

        v316 = v287;
        v317 = [v69 documentRef];
        v318 = sub_1E4205F14();
        v320 = v319;

        v321 = sub_1E4205F14();
        v287 = v322;
        if (v318 != v321 || v320 != v322)
        {
          OUTLINED_FUNCTION_29_8();
          OUTLINED_FUNCTION_30_7();

          v9 = MEMORY[0x1E69E7D40];
          v287 = v316;
          if ((v318 & 1) == 0)
          {
            goto LABEL_260;
          }

LABEL_263:
          if (v44)
          {
            v304 = 3;
          }

          else
          {
            v304 = 2;
          }

LABEL_266:
          OUTLINED_FUNCTION_38_3();
          v325 = &v53[*((*v9 & v324) + qword_1EE297B00 + 16)];
          *v325 = v44;
          *(v325 + 8) = v304;
          *(v325 + 16) = 0;
          OUTLINED_FUNCTION_5_41(v325);
          if (v439)
          {
            *&v326 = OUTLINED_FUNCTION_16_20();
            *v327 = v326;
            v327[1] = v326;
          }

          else
          {
            sub_1E37FAFB0();

            v328 = OUTLINED_FUNCTION_27_0();
            v44 = v438;
            sub_1E3277E60(v328, v329, v438, v330);

            if (*(&v451[1] + 1))
            {
              v331 = type metadata accessor for LibMenuItem();
              OUTLINED_FUNCTION_22_14(v331, v332, v333, v331, v334, v335, v336, v337, v429, v431, v438, v439, v444, v445, v446, v447, v448, v449, v450[0]);
              if (OUTLINED_FUNCTION_21_4())
              {
                v338 = v450[0];
              }

              else
              {
                v338 = 0;
              }

LABEL_273:
              OUTLINED_FUNCTION_4_33();
              *&v53[*(v339 + qword_1EE297B00 + 24)] = v338;
              memcpy(v451, v452, 0x80uLL);

              sub_1E37C5830(__dst, v450, &qword_1ECF2A768);
              v340 = sub_1E4201E44();
              if (OUTLINED_FUNCTION_47_6())
              {
                v341 = sub_1E4206AC4();
              }

              else
              {
                v341 = *MEMORY[0x1E69DF878];
              }

              v172 = v341;
              v342 = objc_opt_self();
              v343 = v172;
              OUTLINED_FUNCTION_14_30();
              v345 = [v342 v344];
              OUTLINED_FUNCTION_9_28(v345);

              v346 = [objc_opt_self() sharedInstance];
              v347 = [v346 launchConfig];

              LODWORD(v346) = [v347 checkRemoteServerReachability];
              if (v346)
              {
                v179 = [v342 &i[28].isa + 5];
                v180 = *NSNotification.remoteNetworkReachabilityDidChange.unsafeMutableAddressor();
                OUTLINED_FUNCTION_20_22(v179, v287 + 2040);
                v181 = &qword_1ECF2A768;
                v182 = __dst;
                goto LABEL_141;
              }

              v183 = &qword_1ECF2A768;
              v184 = __dst;
              goto LABEL_143;
            }
          }

          sub_1E325F748(v451, &unk_1ECF296E0);
          v338 = 0;
          goto LABEL_273;
        }

LABEL_262:

        v9 = MEMORY[0x1E69E7D40];
        goto LABEL_263;
      }

      LODWORD(v44) = 0;
    }

    else
    {
      v438 = 0;
      *&v305 = OUTLINED_FUNCTION_16_20();
      *v306 = v305;
      v306[1] = v305;
      LODWORD(v44) = 1;
    }

    sub_1E325F748(v451, &unk_1ECF296E0);
    goto LABEL_241;
  }

LABEL_146:

  type metadata accessor for LibTransitionDetailsViewController();
  v185 = a1;
  return sub_1E4023030();
}

BOOL sub_1E37D7DAC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E37DA464();
  v3 = sub_1E4205DA4();
  v4 = ~(-1 << *(a2 + 32));
  do
  {
    v5 = v3 & v4;
    v6 = (1 << (v3 & v4)) & *(a2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v7 = v6 != 0;
    if (!v6)
    {
      break;
    }

    sub_1E37DA4B8();
    v8 = sub_1E4205E84();
    v3 = v5 + 1;
  }

  while ((v8 & 1) == 0);
  return v7;
}

id sub_1E37D7E94@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_39_11((*MEMORY[0x1E69E7D40] & v3) + qword_1EE297B00);
  swift_beginAccess();
  *a1 = *v1;
  OUTLINED_FUNCTION_43_1(*(v1 + 8));
  *(a1 + 48) = v4;

  return v4;
}

void sub_1E37D7F3C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_39_11((*MEMORY[0x1E69E7D40] & v15) + qword_1EE297B00);
  swift_beginAccess();
  v16 = *(v7 + 48);
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4 & 1;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6 & 1;
  *(v7 + 48) = a7;
}

uint64_t (*sub_1E37D8008())()
{
  OUTLINED_FUNCTION_26_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_1E37D81E4(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EE297B00 + 48));
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1E37D82B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206254();
  OUTLINED_FUNCTION_27_0();
  sub_1E4206254();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E37D8360()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v19 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v12 = sub_1E4206A04();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v15 = v1 + qword_1EE297B00;
  v14[2] = *(v1 + qword_1EE297B00);
  v14[3] = *(v15 + 8);
  v14[4] = v13;
  aBlock[4] = sub_1E37DA210;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_9;
  v16 = _Block_copy(aBlock);

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E37DA3B0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v11, v6, v16);
  _Block_release(v16);

  (*(v19 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v18);
}

void sub_1E37D86A8(void *a1)
{
  v1 = a1;
  sub_1E37D8360();
}

void sub_1E37D86F0()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EE297B00 + 32)) = 0;
  v2 = (v0 + *((*v1 & *v0) + qword_1EE297B00 + 48));
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  v2[1] = v3;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E37D87F8(char a1)
{
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_23_18();
  objc_msgSendSuper2(&v11, sel_viewWillAppear_, a1 & 1);
  OUTLINED_FUNCTION_26_3();
  *(v1 + *((*v3 & v4) + qword_1EE297B00 + 32)) = 1;
  sub_1E37D89F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A6B0);
  OUTLINED_FUNCTION_20_2();
  if (swift_dynamicCastClass())
  {
    v5 = OUTLINED_FUNCTION_45_8();
    v6 = [v5 standardAppearance];

    if (!v6)
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
    }

    v7 = OUTLINED_FUNCTION_45_8();
    v8 = [v7 scrollEdgeAppearance];

    if (!v8)
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
    }

    [v6 _setTitleControlHidden_];
    [v8 _setTitleControlHidden_];
    v9 = OUTLINED_FUNCTION_45_8();
    [v9 setStandardAppearance_];

    v10 = OUTLINED_FUNCTION_45_8();
    [v10 setScrollEdgeAppearance_];
  }
}

void sub_1E37D89F4()
{
  sub_1E37D7E94(v9);
  v1 = v9[0];
  v2 = v10;
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v8 = v15;
  v7 = OUTLINED_FUNCTION_5_11();
  sub_1E3F6FED8(v0, v1, v2, v7, v3, v4, v5, v6, v8);
}

void sub_1E37D8A90(void *a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_10_0();
  sub_1E37D87F8(v2);
}

void sub_1E37D8AD8(char a1)
{
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_23_18();
  objc_msgSendSuper2(&v4, sel_viewWillDisappear_, a1 & 1);
  *(v1 + *((*v3 & *v1) + qword_1EE297B00 + 32)) = 0;
  sub_1E37D8B9C();
}

void sub_1E37D8B9C()
{
  sub_1E3F6FD54(v0, v8);
  v1 = v8[0];
  v2 = v9;
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v6 = v13;
  v7 = v14;

  sub_1E37D7F3C(v1, v2, v3, v4, v5, v6, v7);
}

void sub_1E37D8BEC(void *a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_10_0();
  sub_1E37D8AD8(v2);
}

void sub_1E37D8C34()
{
  v1 = v0;
  OUTLINED_FUNCTION_26_3();
  v2 = MEMORY[0x1E69E7D40];
  v40.receiver = v0;
  v40.super_class = type metadata accessor for LibHostingViewController();
  objc_msgSendSuper2(&v40, sel_viewSafeAreaInsetsDidChange);
  if ([objc_opt_self() isPad])
  {
    sub_1E37D939C();
    v3 = OUTLINED_FUNCTION_31_10();
    if (!v3)
    {
      __break(1u);
      goto LABEL_21;
    }

    v4 = v3;
    [v3 safeAreaInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    if (sub_1E37D8144())
    {
      v16 = v6 == sub_1E37D8190() && v8 == v13;
      v17 = v16 && v10 == v14;
      if (!v17 || v12 != v15)
      {
        v19 = OUTLINED_FUNCTION_31_10();
        if (v19)
        {
          v20 = v19;
          [v19 safeAreaInsets];

          v21 = OUTLINED_FUNCTION_31_10();
          if (v21)
          {
            v22 = v21;
            [v21 safeAreaInsets];
            v39 = v23;

            v24 = OUTLINED_FUNCTION_31_10();
            if (v24)
            {
              v25 = v24;
              type metadata accessor for LayoutGrid();
              [v25 bounds];
              v27 = v26;
              v29 = v28;
              v31 = v30;
              v33 = v32;

              v41.origin.x = v27;
              v41.origin.y = v29;
              v41.size.width = v31;
              v41.size.height = v33;
              Width = CGRectGetWidth(v41);
              sub_1E3A258E4(Width);
              v35 = OUTLINED_FUNCTION_31_10();
              if (v35)
              {
                v36 = v35;
                [v35 vuiIsRTL];

                v37 = [v1 navigationItem];
                [v37 _titleMinimumMargins];
                [v37 _setTitleMinimumMargins_];

                v38 = (v1 + *((*v2 & *v1) + qword_1EE297B00 + 48));
                *v38 = v6;
                v38[1] = v8;
                v38[2] = v10;
                v38[3] = v12;
                return;
              }

LABEL_24:
              __break(1u);
              return;
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
    }
  }
}

void sub_1E37D8EF4(void *a1)
{
  v1 = a1;
  sub_1E37D8C34();
}

uint64_t sub_1E37D8F3C()
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_23_18();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  result = sub_1E37D80A0();
  if (result)
  {
    if ([objc_opt_self() isPad])
    {
      return sub_1E37D939C();
    }

    else
    {
      v2 = *sub_1E3CD9D88();

      result = [v0 view];
      if (result)
      {
        v3 = result;
        [result frame];
        v5 = v4;
        v7 = v6;

        (*(*v2 + 192))(v5, v7, 0);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_1E37D906C(void *a1)
{
  v1 = a1;
  sub_1E37D8F3C();
}

id sub_1E37D90BC()
{
  result = [v0 vuiView];
  if (result)
  {
    v2 = result;
    v3 = sub_1E4206ED4();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E37D913C(void *a1)
{
  sub_1E4205F14();
  v2 = a1;
  v3 = sub_1E37D90BC();

  return v3;
}

void sub_1E37D91B0(void *a1)
{
  v3 = [a1 viewControllers];
  sub_1E3280A90(0, &qword_1EE23B250);
  v4 = sub_1E42062B4();

  v5 = sub_1E32AE9B0(v4);

  v6 = [a1 interactivePopGestureRecognizer];
  v7 = v6;
  if (v5 < 2)
  {
    if (v6)
    {
      [v6 setEnabled_];
    }

    v9 = [a1 interactivePopGestureRecognizer];
    if (v9)
    {
      v10 = v9;
      [v9 setDelegate_];
      goto LABEL_10;
    }
  }

  else
  {
    if (v6)
    {
      [v6 setEnabled_];
    }

    v8 = [a1 interactivePopGestureRecognizer];
    if (v8)
    {
      v10 = v8;
      [v8 setDelegate_];
LABEL_10:
    }
  }
}

void sub_1E37D9320(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1E37D91B0(v6);
}

id sub_1E37D939C()
{
  v1 = [v0 vuiIsRTL];
  result = [v0 view];
  v3 = result;
  if (v1)
  {
    if (!result)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    [result safeAreaInsets];
    v5 = v4;
  }

  else
  {
    if (!result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    [result safeAreaInsets];
    v5 = v6;
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  [result frame];

  sub_1E3CD9D88();
  OUTLINED_FUNCTION_8();
  v9 = *(v8 + 192);

  v10 = OUTLINED_FUNCTION_34();
  v9(v10);

  OUTLINED_FUNCTION_8();
  v12 = *(v11 + 280);

  v12(v5, 0);
}

void sub_1E37D9534()
{
  v1 = objc_allocWithZone(v0);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_1E37D956C()
{
  v1 = objc_allocWithZone(v0);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1E37D95A4()
{
  OUTLINED_FUNCTION_26_3();

  OUTLINED_FUNCTION_15_32();
}

id sub_1E37D9654()
{
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_23_18();
  return objc_msgSendSuper2(&v1, sel_dealloc);
}

uint64_t sub_1E37D96C0(void *a1)
{
}

uint64_t sub_1E37D97B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 88))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E37D97EC(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 88) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E37D9848(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 80))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E37D9884(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[9] = 0;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E37D98E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 128))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E37D9924(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[15] = 0;
    *(result + 13) = 0u;
    *(result + 11) = 0u;
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 128) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

void sub_1E37D99A4(uint64_t a1@<X8>)
{
  sub_1E37D7E94(v4);
  v2 = v5;
  *a1 = v4[0];
  OUTLINED_FUNCTION_43_1(v2);
  *(a1 + 48) = v3;
}

void (*sub_1E37D9A28(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1E37D8008();
  return sub_1E37BCF0C;
}

double sub_1E37D9AD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1E327F454(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E37D9B08@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Router();
  sub_1E40C49A8();
  v4 = v3;
  OUTLINED_FUNCTION_1_64();
  sub_1E37DA3B0(v5, v6);
  OUTLINED_FUNCTION_20_2();
  sub_1E4200504();
  v7 = OUTLINED_FUNCTION_38();
  sub_1E37DA0FC(v7, a1);
  a1[9] = v2;
  a1[10] = v4;
  v8 = *sub_1E3CD9D88();
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_0_37();
  sub_1E37DA3B0(v9, v10);

  result = sub_1E4200504();
  a1[11] = result;
  a1[12] = v8;
  return result;
}

void *sub_1E37D9BE0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  type metadata accessor for Router();
  v3 = sub_1E38D1D7C();
  OUTLINED_FUNCTION_1_64();
  sub_1E37DA3B0(v4, v5);
  OUTLINED_FUNCTION_20_2();
  v6 = sub_1E4200504();
  memcpy(__src, (v1 + 8), sizeof(__src));
  sub_1E37DA158(__dst, v12);
  v7 = *sub_1E3CD9D88();
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_0_37();
  sub_1E37DA3B0(v8, v9);

  v10 = sub_1E4200504();
  result = memcpy(a1, __src, 0x48uLL);
  a1[9] = v6;
  a1[10] = v3;
  a1[11] = v10;
  a1[12] = v7;
  return result;
}

void *sub_1E37D9D08@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0xB1uLL);
  type metadata accessor for Router();
  v3 = sub_1E38D1D7C();
  OUTLINED_FUNCTION_1_64();
  sub_1E37DA3B0(v4, v5);
  OUTLINED_FUNCTION_20_2();
  v6 = sub_1E4200504();
  memcpy(__src, (v1 + 8), 0xB1uLL);
  sub_1E37DABC0(__dst, v12);
  v7 = *sub_1E3CD9D88();
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_0_37();
  sub_1E37DA3B0(v8, v9);

  v10 = sub_1E4200504();
  result = memcpy(a1, __src, 0xB8uLL);
  a1[23] = v6;
  a1[24] = v3;
  a1[25] = v10;
  a1[26] = v7;
  return result;
}

void *sub_1E37D9E30@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  type metadata accessor for Router();
  v3 = sub_1E38D1D7C();
  OUTLINED_FUNCTION_1_64();
  sub_1E37DA3B0(v4, v5);
  OUTLINED_FUNCTION_20_2();
  v6 = sub_1E4200504();
  memcpy(__src, (v1 + 8), sizeof(__src));
  sub_1E37DA1B4(__dst, v12);
  v7 = *sub_1E3CD9D88();
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_0_37();
  sub_1E37DA3B0(v8, v9);

  v10 = sub_1E4200504();
  result = memcpy(a1, __src, 0x78uLL);
  a1[15] = v6;
  a1[16] = v3;
  a1[17] = v10;
  a1[18] = v7;
  return result;
}

unint64_t sub_1E37D9F58(uint64_t a1)
{
  result = sub_1E37D9F80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37D9F80()
{
  result = qword_1ECF46880[0];
  if (!qword_1ECF46880[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46880);
  }

  return result;
}

unint64_t sub_1E37D9FEC(uint64_t a1)
{
  result = sub_1E37DA014();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37DA014()
{
  result = qword_1ECF46990[0];
  if (!qword_1ECF46990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46990);
  }

  return result;
}

unint64_t sub_1E37DA080(uint64_t a1)
{
  result = sub_1E37DA0A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37DA0A8()
{
  result = qword_1EE29D980[0];
  if (!qword_1EE29D980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29D980);
  }

  return result;
}

void sub_1E37DA210()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() isRemoteServerConnected];
    v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + qword_1EE297B00 + 24));
    if (v3)
    {
      v4 = v3[32];

      if (sub_1E37D82B8(v4, 10, sub_1E37D4BA4))
      {
        if (v2)
        {

LABEL_12:

          return;
        }

        (*(*v3 + 264))(1);

LABEL_10:
        v5 = [objc_opt_self() currentNavigationController];
        if (v5)
        {
          v6 = v5;
          v7 = [v5 popToRootViewControllerAnimated_];
        }

        goto LABEL_12;
      }
    }

    if (v2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }
}

uint64_t sub_1E37DA3B0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E37DA464()
{
  result = qword_1EE285F00;
  if (!qword_1EE285F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE285F00);
  }

  return result;
}

unint64_t sub_1E37DA4B8()
{
  result = qword_1EE285EF0;
  if (!qword_1EE285EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE285EF0);
  }

  return result;
}

double sub_1E37DA50C(_OWORD *a1)
{
  result = 0.0;
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

uint64_t sub_1E37DA52C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 185))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E37DA568(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 21) = 0u;
    *(result + 19) = 0u;
    *(result + 17) = 0u;
    *(result + 15) = 0u;
    *(result + 13) = 0u;
    *(result + 11) = 0u;
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 185) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E37DA5E0()
{
  result = qword_1EE2896A8;
  if (!qword_1EE2896A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2A790);
    sub_1E37DA698();
    sub_1E328FCF4(&qword_1EE288820, &qword_1ECF2A7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896A8);
  }

  return result;
}

unint64_t sub_1E37DA698()
{
  result = qword_1EE289B98;
  if (!qword_1EE289B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A7A0);
    sub_1E37DA750();
    sub_1E328FCF4(&qword_1EE2887F0, &unk_1ECF2A7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B98);
  }

  return result;
}

unint64_t sub_1E37DA750()
{
  result = qword_1EE252BE8[0];
  if (!qword_1EE252BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE252BE8);
  }

  return result;
}

unint64_t sub_1E37DA7A4()
{
  result = qword_1ECF2A7C0;
  if (!qword_1ECF2A7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A7C8);
    sub_1E37DA85C();
    sub_1E328FCF4(&qword_1EE288820, &qword_1ECF2A7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A7C0);
  }

  return result;
}

unint64_t sub_1E37DA85C()
{
  result = qword_1ECF2A7D0;
  if (!qword_1ECF2A7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2A7D8);
    sub_1E37DA914();
    sub_1E328FCF4(&qword_1EE2887F0, &unk_1ECF2A7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A7D0);
  }

  return result;
}

unint64_t sub_1E37DA914()
{
  result = qword_1EE25AB10;
  if (!qword_1EE25AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE25AB10);
  }

  return result;
}

unint64_t sub_1E37DA968()
{
  result = qword_1ECF2A7E8;
  if (!qword_1ECF2A7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A7F0);
    sub_1E37DAA20();
    sub_1E328FCF4(&qword_1EE288820, &qword_1ECF2A7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A7E8);
  }

  return result;
}

unint64_t sub_1E37DAA20()
{
  result = qword_1ECF2A7F8;
  if (!qword_1ECF2A7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A800);
    sub_1E37DAAD8();
    sub_1E328FCF4(&qword_1EE2887F0, &unk_1ECF2A7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A7F8);
  }

  return result;
}

unint64_t sub_1E37DAAD8()
{
  result = qword_1ECF2A808;
  if (!qword_1ECF2A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A808);
  }

  return result;
}

unint64_t sub_1E37DAB44(uint64_t a1)
{
  result = sub_1E37DAB6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37DAB6C()
{
  result = qword_1ECF46AA0[0];
  if (!qword_1ECF46AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46AA0);
  }

  return result;
}

unint64_t sub_1E37DAC1C()
{
  result = qword_1ECF2A810;
  if (!qword_1ECF2A810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A818);
    sub_1E37DACD4();
    sub_1E328FCF4(&qword_1EE288820, &qword_1ECF2A7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A810);
  }

  return result;
}

unint64_t sub_1E37DACD4()
{
  result = qword_1ECF2A820;
  if (!qword_1ECF2A820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A828);
    sub_1E37DAD8C();
    sub_1E328FCF4(&qword_1EE2887F0, &unk_1ECF2A7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A820);
  }

  return result;
}

unint64_t sub_1E37DAD8C()
{
  result = qword_1ECF2A830;
  if (!qword_1ECF2A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A830);
  }

  return result;
}

void OUTLINED_FUNCTION_48_11()
{
}

uint64_t sub_1E37DAE10()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E37DAE78()
{
  result = *(v0 + 128);
  if (result == 263)
  {
    result = 212;
    *(v0 + 128) = 212;
  }

  return result;
}

uint64_t sub_1E37DAECC(__int16 a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 263;
  v3 = sub_1E3C2F9A0();
  *(v3 + 128) = a1;

  v4 = sub_1E3E6011C();
  v5 = *v4;
  sub_1E3C2DE50();

  if (sub_1E373F6E0())
  {
    v6 = *sub_1E3E60700();
    sub_1E3C2E258();
    v7 = sub_1E37BD068();
    v8 = *v4;
    v9 = *(*v7 + 872);
    v10 = v8;
    v9(v8);

    OUTLINED_FUNCTION_0_36();
    v12 = *(v11 + 1984);

    v12(5);
  }

  else if (sub_1E373F6E0())
  {
    v13 = *sub_1E3E5FACC();
    sub_1E3C2E258();
  }

  sub_1E37BD068();
  LOBYTE(v124[0]) = 2;
  v137 = 15;
  sub_1E3C2FC98();
  v135 = v136;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v133 = v134;
  sub_1E3C3DE00(&qword_1F5D549D8);
  v131 = v132;
  v14 = sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v125) = v128;
  v22 = OUTLINED_FUNCTION_0_38(v14, v15, v16, v17, v18, v19, v20, v21, *&v124[0]);
  sub_1E3C2FCB8(v22, v23);
  OUTLINED_FUNCTION_11_31();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v32 = OUTLINED_FUNCTION_30_3(v24, v25, v26, v27, v28, v29, v30, v31, *&v124[0]);
  v33(v32, 48);

  v34 = *(v3 + 104);

  v35 = *sub_1E3E5FD88();
  v36 = *(*v34 + 680);
  v37 = v35;
  v36(v35);

  if (sub_1E373F6E0())
  {
    v38 = sub_1E37BD068();
    (*(*v38 + 1792))(0);

    OUTLINED_FUNCTION_0_36();
    v40 = *(v39 + 1696);

    v40(19);

    OUTLINED_FUNCTION_0_36();
    v42 = *(v41 + 2056);

    v43 = OUTLINED_FUNCTION_10_7();
    v42(v43);

    OUTLINED_FUNCTION_0_36();
    v45 = *(v44 + 2080);

    v46 = OUTLINED_FUNCTION_10_7();
    v45(v46);

    OUTLINED_FUNCTION_0_36();
    v48 = *(v47 + 2104);

    v49 = OUTLINED_FUNCTION_10_7();
    v48(v49);

    v50 = objc_opt_self();

    [v50 spacerA];
    OUTLINED_FUNCTION_9_29(MEMORY[0x1E69DDCE0]);
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_37();
    OUTLINED_FUNCTION_6_7();
    v51 = OUTLINED_FUNCTION_5_17();
    v125 = v128;
    v126 = v129;
    v127 = v130;
    v59 = OUTLINED_FUNCTION_0_38(v51, v52, v53, v54, v55, v56, v57, v58, 0);
    sub_1E3C2FCB8(v59, v60);
    memcpy(v124, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v69 = OUTLINED_FUNCTION_30_3(v61, v62, v63, v64, v65, v66, v67, v68, *&v124[0]);
    v70(v69, 0);

    LOBYTE(v124[0]) = 7;
    v137 = 1;

    sub_1E3C2FC98();
    v135 = v136;
    sub_1E3C3DE00(&unk_1F5D54CA8);
    v133 = v134;
    sub_1E3C3DE00(&unk_1F5D54CA8);
    v131 = v132;
    v71 = sub_1E3C3DE00(&unk_1F5D54CA8);
    LOBYTE(v125) = v128;
    v79 = OUTLINED_FUNCTION_0_38(v71, v72, v73, v74, v75, v76, v77, v78, *&v124[0]);
    sub_1E3C2FCB8(v79, v80);
    OUTLINED_FUNCTION_11_31();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v89 = OUTLINED_FUNCTION_30_3(v81, v82, v83, v84, v85, v86, v87, v88, *&v124[0]);
    v91 = 59;
  }

  else
  {
    v92 = *(**(v3 + 104) + 1792);

    v92(0);

    OUTLINED_FUNCTION_0_36();
    v94 = *(v93 + 2056);

    v95 = OUTLINED_FUNCTION_10_7();
    v94(v95);

    OUTLINED_FUNCTION_9_29(MEMORY[0x1E69DDCE0]);

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_37();
    OUTLINED_FUNCTION_6_7();
    v96 = OUTLINED_FUNCTION_5_17();
    v125 = v128;
    v126 = v129;
    v127 = v130;
    v104 = OUTLINED_FUNCTION_0_38(v96, v97, v98, v99, v100, v101, v102, v103, 0x4044000000000000);
    sub_1E3C2FCB8(v104, v105);
    memcpy(v124, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v89 = OUTLINED_FUNCTION_30_3(v106, v107, v108, v109, v110, v111, v112, v113, *&v124[0]);
    v91 = 0;
  }

  v90(v89, v91);

  v114 = sub_1E37BD0DC();
  (*(*v114 + 208))(0x4040000000000000, 0);

  OUTLINED_FUNCTION_36();
  v116 = *(v115 + 312);

  v116(0x4040000000000000, 0);

  v117 = *(v3 + 112);
  memset(__src, 0, 24);
  __src[3] = 0x4028000000000000;
  LOBYTE(__src[4]) = 0;
  v118 = *(*v117 + 160);

  v118(__src);

  v119 = sub_1E37DAE10();
  v124[0] = xmmword_1E4296CA0;
  memset(&v124[1], 0, 17);
  (*(*v119 + 160))(v124);

  sub_1E3C37CBC(v120, 23);

  sub_1E3C37CBC(v121, 39);

  sub_1E3C37CBC(v122, 31);

  return v3;
}

void sub_1E37DB794()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 263;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E37DB800()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E37DB840()
{
  v0 = sub_1E37DB800();

  return MEMORY[0x1EEE6BDC0](v0, 130, 7);
}

uint64_t sub_1E37DB870()
{
  sub_1E37DAE78();

  return sub_1E373F6E0();
}

uint64_t sub_1E37DB89C()
{
  sub_1E37DAE78();
  if (sub_1E373F6E0())
  {
    return 1;
  }

  return sub_1E373F6E0();
}

char *sub_1E37DB960()
{
  OUTLINED_FUNCTION_0_8();
  v1 = OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationBar;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCCC0]) init];
  v2 = OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationItem;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
  v14 = type metadata accessor for NavigationBarView();
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v14);
  v7 = OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationBar;
  v8 = *&v6[OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationBar];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E4298880;
  v10 = *&v6[OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationItem];
  *(v9 + 32) = v10;
  v11 = v6;
  v12 = v10;
  sub_1E37DBCD8(v9, v8);
  [v11 vui:*&v6[v7] addSubview:0 oldView:?];

  return v11;
}

void sub_1E37DBAD0()
{
  v1 = OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationBar;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCCC0]) init];
  v2 = OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationItem;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
  sub_1E42076B4();
  __break(1u);
}

double sub_1E37DBB94(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI17NavigationBarView_navigationBar);
  [v2 sizeThatFits_];
  v4 = v3;
  [v2 setFrame_];
  return v4;
}

id sub_1E37DBC58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E37DBCD8(uint64_t a1, void *a2)
{
  sub_1E37DBD4C();
  v3 = sub_1E42062A4();

  [a2 setItems_];
}

unint64_t sub_1E37DBD4C()
{
  result = qword_1EE23B268;
  if (!qword_1EE23B268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B268);
  }

  return result;
}

unint64_t sub_1E37DBDBC()
{
  result = qword_1ECF2A858;
  if (!qword_1ECF2A858)
  {
    type metadata accessor for FollowStateViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A858);
  }

  return result;
}

void sub_1E37DBE34()
{
  OUTLINED_FUNCTION_31_1();
  v81 = v1;
  v82 = v2;
  v79 = v3;
  LODWORD(v83) = v4;
  v80 = v5;
  v7 = v6;
  v77 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A850);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  v16 = type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  *(v0 + 16) = 0u;
  v75 = (v0 + 16);
  *(v0 + 56) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  LOBYTE(v86) = 1;
  sub_1E42038E4();
  v18 = v85[1];
  *(v0 + 184) = v85[0];
  v76 = v18;
  *(v0 + 192) = v18;
  v19 = v16[14];
  OUTLINED_FUNCTION_47_7();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_1E379D7E4(v15, v12, &qword_1ECF2A850);
  v78 = v19;
  v24 = v81;
  sub_1E42038E4();
  sub_1E325F69C(v15, &qword_1ECF2A850);
  nullsub_1(v25, v26);
  v27 = v16[17];
  sub_1E41FE8D4();
  swift_allocObject();
  v28 = sub_1E41FE8C4();
  *(v0 + v27) = v28;
  nullsub_1(v29, v30);
  *(v0 + 168) = v82;
  *(v0 + 176) = v24;
  *v0 = v7;
  *(v0 + 8) = v83;
  LOBYTE(v85[0]) = 4;
  v31 = *(*v7 + 776);

  v31(&v86, v85, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (!v88)
  {

    OUTLINED_FUNCTION_52_8();

    sub_1E325F69C(&v86, &unk_1ECF296E0);
LABEL_71:

    memcpy(v85, (v0 + 56), sizeof(v85));
    sub_1E325F69C(v85, &unk_1ECF2A868);

    sub_1E325F69C(v78 + v0, &qword_1ECF2A870);

    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v16);
    goto LABEL_79;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    OUTLINED_FUNCTION_52_8();

    goto LABEL_71;
  }

  v32 = v85[1];
  v33 = (v0 + v16[16]);
  *v33 = v85[0];
  v33[1] = v32;
  v34 = (*(*v7 + 464))();

  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = sub_1E32AE9B0(v35);
  if (!v36)
  {

    OUTLINED_FUNCTION_61_5();
    goto LABEL_77;
  }

  v72 = v16;
  if (v36 < 1)
  {
    __break(1u);
    return;
  }

  v37 = 0;
  v76 = 0;
  v74 = 0;
  v73 = 0;
  v78 = 0;
  v83 = v35 & 0xC000000000000001;
  OUTLINED_FUNCTION_61_5();
  v82 = v35;
  v81 = v38;
  do
  {
    if (v83)
    {
      v39 = MEMORY[0x1E6911E60](v37, v35);
    }

    else
    {
      v39 = *(v35 + 8 * v37 + 32);
    }

    LOBYTE(v86) = 29;
    (*(*v39 + 776))(v85, &v86, &unk_1F5D5DAC8, &off_1F5D5C998);
    if (v85[3])
    {
      v40 = swift_dynamicCast();
      if (v40)
      {
        v41 = v86;
      }

      else
      {
        v41 = 0;
      }

      if (v40)
      {
        v42 = v87;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      sub_1E325F69C(v85, &unk_1ECF296E0);
      v41 = 0;
      v42 = 0;
    }

    if (*v39 == _TtC8VideosUI13TextViewModel)
    {
      v89 = v39[49];
      v84 = 23;
      sub_1E3742F1C();
      swift_retain_n();
      OUTLINED_FUNCTION_46_2();
      sub_1E4206254();
      OUTLINED_FUNCTION_46_2();
      sub_1E4206254();
      if (v85[0] == v86 && v85[1] == v87)
      {

LABEL_33:

        *(v0 + 32) = v39;
        v78 = v39;
        OUTLINED_FUNCTION_61_5();
        goto LABEL_37;
      }

      v28 = sub_1E42079A4();

      if (v28)
      {
        goto LABEL_33;
      }

      v44 = v39[49];

      v89 = v44;
      v84 = 24;
      OUTLINED_FUNCTION_46_2();
      sub_1E4206254();
      OUTLINED_FUNCTION_46_2();
      sub_1E4206254();
      if (v85[0] == v86 && v85[1] == v87)
      {
      }

      else
      {
        v28 = sub_1E42079A4();

        if ((v28 & 1) == 0)
        {

LABEL_36:
          OUTLINED_FUNCTION_61_5();
          goto LABEL_37;
        }
      }

      *(v0 + 40) = v39;
      v73 = v39;
      goto LABEL_36;
    }

LABEL_37:
    v46 = FollowLiveUpdatesState.rawValue.getter(0);
    if (v42)
    {
      if (v41 == v46 && v42 == v47)
      {

LABEL_53:

        OUTLINED_FUNCTION_76_2();
        OUTLINED_FUNCTION_18_14();
        if (sub_1E4205E84())
        {
          goto LABEL_60;
        }

        LOWORD(v85[0]) = v39[49];
        LOWORD(v86) = 24;
        OUTLINED_FUNCTION_18_14();
        if (sub_1E4205E84())
        {
          goto LABEL_60;
        }

        type metadata accessor for ImageViewModel();
        v54 = swift_dynamicCastClass();
        if (v54)
        {
          v55 = v54;

          v56 = v55;
        }

        else
        {

          v56 = 0;
        }

        v35 = v82;
        v74 = v56;
        *v75 = v56;
        goto LABEL_61;
      }

      v49 = OUTLINED_FUNCTION_78_1();

      if (v49)
      {
        goto LABEL_53;
      }
    }

    else
    {
    }

    v50 = FollowLiveUpdatesState.rawValue.getter(1);
    if (!v42)
    {

LABEL_60:

      v35 = v82;
      goto LABEL_61;
    }

    if (v41 == v50 && v42 == v51)
    {
    }

    else
    {
      v53 = OUTLINED_FUNCTION_78_1();

      if ((v53 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    OUTLINED_FUNCTION_76_2();
    OUTLINED_FUNCTION_18_14();
    if (sub_1E4205E84())
    {
      goto LABEL_60;
    }

    type metadata accessor for ImageViewModel();
    v57 = swift_dynamicCastClass();
    if (v57)
    {
      v58 = v57;

      v59 = v58;
    }

    else
    {

      v59 = 0;
    }

    v35 = v82;
    v76 = v59;
    *(v0 + 24) = v59;
LABEL_61:
    ++v37;
  }

  while (v81 != v37);

  v16 = v72;
  if (v78 && sub_1E3C27528())
  {
    type metadata accessor for TextLayout();
    v63 = swift_dynamicCastClass();
    if (v63)
    {
      *(v0 + 48) = v63;
      (*(*v63 + 1720))(12);
      goto LABEL_78;
    }
  }

LABEL_77:
  *(v0 + 48) = 0;
LABEL_78:
  v64 = (v0 + v16[19]);
  type metadata accessor for FollowStateViewModel();
  sub_1E37DBDBC();
  *v64 = sub_1E42010C4();
  v64[1] = v65;
  v66 = (v0 + v16[20]);
  v67 = *(v28 + 16);
  *v66 = *v28;
  v66[1] = v67;
  v66[2] = *(v28 + 32);
  sub_1E37DFC14(v0, v77);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v16);
  sub_1E37DFC78(v0);
LABEL_79:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37DC818@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v2 = OUTLINED_FUNCTION_7_49();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = OUTLINED_FUNCTION_32_7();
  sub_1E37DFC14(v7, v8);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  result = sub_1E37DFCD4(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *a1 = sub_1E37DFD38;
  a1[1] = v10;
  return result;
}

uint64_t sub_1E37DC8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v68 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8A8);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v67 = v7;
  v58 = sub_1E4200EA4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  v57[1] = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_16_21();
  v70 = type metadata accessor for FollowLiveUpdatesButton(v12);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v57 - v20;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8B8);
  OUTLINED_FUNCTION_0_10();
  v60 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v69 = v24;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8C0);
  OUTLINED_FUNCTION_0_10();
  v63 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v62 = v27;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v66 = v29;
  sub_1E37DFC14(a2, v18);
  v30 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v31 = swift_allocObject();
  sub_1E37DFCD4(v18, v31 + v30);
  v72 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8D0);
  sub_1E37E0734();
  sub_1E4203964();
  sub_1E37DFC14(a2, v18);
  v32 = v58;
  (*(v9 + 16))(v3, v59, v58);
  v33 = (v30 + v16 + *(v9 + 80)) & ~*(v9 + 80);
  v34 = swift_allocObject();
  sub_1E37DFCD4(v18, v34 + v30);
  (*(v9 + 32))(v34 + v33, v3, v32);
  v35 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A910) + 36)];
  *v35 = sub_1E37E08F4;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  v21[*(v71 + 52)] = sub_1E3848584() & 1;
  v36 = *(**a2 + 392);
  v37 = v36();
  if (v37)
  {
    v38 = (*(*v37 + 744))(v37);
  }

  else
  {
    v38 = 0;
  }

  v39 = sub_1E374AD40(&qword_1ECF2A918, &qword_1ECF2A8B0);
  sub_1E39B87A4(v38);

  v40 = sub_1E325F69C(v21, &qword_1ECF2A8B0);
  v41 = (v36)(v40);
  if (v41)
  {
    (*(*v41 + 552))(v76);
    v42 = *v76;
    v43 = *&v76[1];
    v44 = *&v76[2];
    v45 = *&v76[3];

    if ((v77 & 1) == 0)
    {
      sub_1E3952BE8(v42, v43, v44, v45);
    }
  }

  v74 = v71;
  v75 = v39;
  swift_getOpaqueTypeConformance2();
  v46 = v62;
  v47 = v61;
  v48 = v69;
  sub_1E3E361E8();
  (*(v60 + 8))(v48, v47);
  v49 = *(a2 + 192);
  LOBYTE(v74) = *(a2 + 184);
  v75 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E42038F4();
  v50 = v73;
  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = (v50 & 1) == 0;
  v53 = v66;
  (*(v63 + 32))(v66, v46, v64);
  v54 = (v53 + *(v65 + 36));
  *v54 = KeyPath;
  v54[1] = sub_1E37E09AC;
  v54[2] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A870);
  v55 = v67;
  sub_1E4203914();
  type metadata accessor for AlertInfo(0);
  sub_1E37E09C4();
  sub_1E37E0B30();
  sub_1E4203424();
  sub_1E325F69C(v55, &qword_1ECF2A8A8);
  return sub_1E325F69C(v53, &qword_1ECF2A8C8);
}

void sub_1E37DD0E0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A850);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_67_7();
  MEMORY[0x1EEE9AC00](v4);
  v13 = OUTLINED_FUNCTION_48_12(v5, v6, v7, v8, v9, v10, v11, v12, v59[0]);
  v14 = type metadata accessor for FollowLiveUpdatesButton(v13);
  OUTLINED_FUNCTION_0_10();
  v61 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v19 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v59 - v21;
  v23 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = sub_1E3E37F30();
  v31 = *(v25 + 16);
  v64 = v23;
  v31(v29, v30, v23);
  sub_1E37DFC14(v1, v22);
  v32 = sub_1E41FFC94();
  v33 = sub_1E42067E4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v59[1] = v17;
    v35 = v34;
    v36 = swift_slowAlloc();
    v60 = v19;
    v37 = v36;
    v66 = v36;
    *v35 = 136315138;
    sub_1E3848584();
    v59[0] = v14;
    sub_1E37DFC78(v22);
    v38 = OUTLINED_FUNCTION_32_7();
    v41 = sub_1E3270FC8(v38, v39, v40);
    v14 = v59[0];

    *(v35 + 4) = v41;
    _os_log_impl(&dword_1E323F000, v32, v33, "FollowLiveUpdatesButton: %s pressed", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v19 = v60;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v43 = *(v25 + 8);
    v42 = v25 + 8;
    v43(v29, v64);
  }

  else
  {

    v44 = *(v25 + 8);
    v42 = v25 + 8;
    v44(v29, v64);
    sub_1E37DFC78(v22);
  }

  if (sub_1E41FE8A4())
  {
    if ((MEMORY[0x1E6909210]() & 1) == 0 && sub_1E395A870())
    {
      v45 = v63;
      sub_1E37DDFE0();
      OUTLINED_FUNCTION_47_7();
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
      v42 = *(v14 + 56);
      sub_1E379D7E4(v45, v62, &qword_1ECF2A850);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A870);
      sub_1E4203904();
      sub_1E325F69C(v45, &qword_1ECF2A850);
      sub_1E395A900();
    }

    v50 = *(v1 + 192);
    LOBYTE(v66) = *(v1 + 184);
    v67 = v50;
    v65 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
    OUTLINED_FUNCTION_56_7();
    if (sub_1E3848584())
    {
      sub_1E3848650();
      OUTLINED_FUNCTION_57_6();
      OUTLINED_FUNCTION_72_9();
      v51 = swift_allocObject();
      sub_1E37DFCD4(v19, v51 + v42);
      OUTLINED_FUNCTION_58_7();
      FollowLiveUpdatesRequestManager.unfollow(for:completion:)();
    }

    else
    {
      sub_1E3848650();
      OUTLINED_FUNCTION_57_6();
      OUTLINED_FUNCTION_72_9();
      v57 = swift_allocObject();
      sub_1E37DFCD4(v19, v57 + v42);
      OUTLINED_FUNCTION_58_7();
      FollowLiveUpdatesRequestManager.follow(for:completion:)();
    }

    (*(v1 + 168))(v58);
  }

  else
  {
    v52 = v63;
    sub_1E37DEDE0();
    OUTLINED_FUNCTION_47_7();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    sub_1E379D7E4(v52, v62, &qword_1ECF2A850);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A870);
    sub_1E4203904();
    sub_1E325F69C(v52, &qword_1ECF2A850);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37DD5FC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A930);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A908);
  OUTLINED_FUNCTION_0_10();
  v67 = v7;
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8F8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  type metadata accessor for FollowLiveUpdatesButton(0);
  v22 = sub_1E3848584();
  if (v22)
  {
    v23 = v2[2];
    if (v23)
    {
      if (v2[4])
      {
        v63 = &v60;
        MEMORY[0x1EEE9AC00](v22);
        OUTLINED_FUNCTION_28_15();
        MEMORY[0x1EEE9AC00](v24);
        OUTLINED_FUNCTION_49_10();
        *(v25 - 16) = v23;
        *(v25 - 8) = v2;
        v64 = v26;

        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A938);
        v61 = OUTLINED_FUNCTION_13_40(v27);
        v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A940);
        v66 = v4;
        v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8);
        v65 = v0;
        v30 = v29;
        OUTLINED_FUNCTION_4_34();
        v33 = sub_1E37E0C50(v31, &qword_1ECF2A940, &unk_1E429E7E8, v32);
        OUTLINED_FUNCTION_14_2();
        v35 = sub_1E374AD40(v34, &qword_1ECF2A1F8);
        v70[0] = v28;
        v70[1] = v30;
        v70[2] = v33;
        v70[3] = v35;
        OUTLINED_FUNCTION_14_31();
        OUTLINED_FUNCTION_20_23();
        sub_1E4203DA4();
        OUTLINED_FUNCTION_11_32();
        (*(v67 + 32))(v21, v13, v68);
        memcpy(&v21[*(v14 + 36)], v70, 0x70uLL);
        sub_1E32B35DC(v21, v65);
        swift_storeEnumTagMultiPayload();
        sub_1E37E083C();
        OUTLINED_FUNCTION_32_7();
        sub_1E4201F44();

        v36 = v21;
LABEL_9:
        sub_1E325F69C(v36, &qword_1ECF2A8F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8E8);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  v37 = sub_1E3848584();
  if ((v37 & 1) == 0)
  {
    v38 = v2[3];
    if (v38)
    {
      if (v2[5])
      {
        v63 = &v60;
        MEMORY[0x1EEE9AC00](v37);
        OUTLINED_FUNCTION_28_15();
        MEMORY[0x1EEE9AC00](v39);
        OUTLINED_FUNCTION_49_10();
        *(v40 - 16) = v38;
        *(v40 - 8) = v2;
        v64 = v41;

        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A938);
        v61 = OUTLINED_FUNCTION_13_40(v42);
        v65 = v0;
        v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A940);
        v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8);
        v66 = v4;
        v45 = v44;
        OUTLINED_FUNCTION_4_34();
        v48 = sub_1E37E0C50(v46, &qword_1ECF2A940, &unk_1E429E7E8, v47);
        OUTLINED_FUNCTION_14_2();
        v50 = sub_1E374AD40(v49, &qword_1ECF2A1F8);
        v70[0] = v43;
        v70[1] = v45;
        v70[2] = v48;
        v70[3] = v50;
        OUTLINED_FUNCTION_14_31();
        OUTLINED_FUNCTION_20_23();
        sub_1E4203DA4();
        OUTLINED_FUNCTION_11_32();
        (*(v67 + 32))(v18, v10, v68);
        memcpy((v18 + *(v14 + 36)), v70, 0x70uLL);
        sub_1E32B35DC(v18, v65);
        swift_storeEnumTagMultiPayload();
        sub_1E37E083C();
        sub_1E4201F44();

        v36 = v18;
        goto LABEL_9;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A8E8);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
}

uint64_t sub_1E37DDC0C(uint64_t a1)
{
  type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v9 = sub_1E4202064();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1E4202284();
  sub_1E4200E84();
  (*(v11 + 8))(v15, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A860);
  sub_1E4203AA4();
  v16 = sub_1E3E37F30();
  (*(v7 + 16))(v1, v16, v5);
  sub_1E37DFC14(a1, v2);
  v17 = sub_1E41FFC94();
  v18 = sub_1E42067E4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v19 = 136315138;
    sub_1E3848584();
    sub_1E37DFC78(v2);
    v20 = OUTLINED_FUNCTION_32_7();
    v23 = sub_1E3270FC8(v20, v21, v22);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1E323F000, v17, v18, "FollowLiveUpdatesButton.onAppear: state: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    return (*(v7 + 8))(v1, v5);
  }

  else
  {

    (*(v7 + 8))(v1, v5);
    return sub_1E37DFC78(v2);
  }
}

uint64_t sub_1E37DDF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AlertInfo(0) + 20);
  sub_1E4203634();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a2, a1 + v4, v5);
}

void sub_1E37DDFE0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_7_49();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_21();
  v5 = sub_1E4203624();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_7();
  sub_1E4203634();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v9 = objc_opt_self();
  if (![v9 sharedInstance])
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_43_10();
  v11 = OUTLINED_FUNCTION_55_7(v10 | 0xB, "entUpdatesMessage");
  v13 = v12;

  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = sub_1E32822E0();
  v15 = OUTLINED_FUNCTION_54_2();
  v19 = OUTLINED_FUNCTION_44_16(v15, v16, v17, v18);
  sub_1E37DFAF0(v19);
  v20 = [v9 sharedInstance];
  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v20;
  OUTLINED_FUNCTION_23();
  sub_1E3741090(0xD000000000000024, v22, v21);
  OUTLINED_FUNCTION_65_1();

  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_1_65();
  sub_1E4203614();
  v23 = OUTLINED_FUNCTION_27_0();
  sub_1E37434B8(v23, v24, v25);

  v26 = [v9 sharedInstance];
  if (!v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = v26;
  OUTLINED_FUNCTION_39_12("TV.Button.LiveUpdates.AllowInSettings");
  v29 = v28;

  if (v29)
  {
    OUTLINED_FUNCTION_54_2();
    OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_64_6();
    v30 = swift_allocObject();
    sub_1E37DFCD4(v1, v30 + v14);
    OUTLINED_FUNCTION_32_0();
    sub_1E4203614();

    v31 = OUTLINED_FUNCTION_32_0();
    sub_1E37434B8(v31, v32, v33);

    OUTLINED_FUNCTION_21_25();
    *v3 = 1;
    v34 = type metadata accessor for AlertInfo(0);
    v35 = OUTLINED_FUNCTION_41_18(v34);
    v36(v35);
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1E37DE32C(__int16 a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_7_49();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_1E37DFC14(a2, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_1E37DFCD4(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = (v18 + v17 + v8);
  *v19 = a1;
  v19[1] = HIBYTE(a1) & 1;
  sub_1E376FE58(0, 0, v12, &unk_1E429E810, v18);
}

uint64_t sub_1E37DE4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E37DE4C4, 0, 0);
}

uint64_t sub_1E37DE4C4()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 24) = sub_1E4206424();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E37DE554, v2, v1);
}

uint64_t sub_1E37DE554()
{
  OUTLINED_FUNCTION_27_2();

  sub_1E37DE5C0();
  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E37DE5C0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_45_9(*(v0 + 184));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  OUTLINED_FUNCTION_56_7();
  v12 = sub_1E3E37F30();
  v13 = *(v6 + 16);
  if ((v3 & 0x100) != 0)
  {
    v13(v10, v12, v4);
    v17 = sub_1E41FFC94();
    v18 = sub_1E42067F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v3;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_1E37E113C();
      swift_allocError();
      *v22 = v19;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1E323F000, v17, v18, "FollowLiveUpdatesButton.handleUnfollowRequest failed: %@", v20, 0xCu);
      sub_1E325F69C(v21, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v4);
    type metadata accessor for FollowLiveUpdatesButton(0);
    sub_1E3848650();
  }

  else
  {
    v13(v1, v12, v4);
    v14 = sub_1E41FFC94();
    v15 = sub_1E42067E4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_125_0();
      *v16 = 0;
      _os_log_impl(&dword_1E323F000, v14, v15, "FollowLiveUpdatesButton.handleUnfollowRequest success: state changed from 'following' to 'not following'", v16, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v1, v4);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37DE854()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A850);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_67_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_48_12(v8, v9, v10, v11, v12, v13, v14, v15, v79);
  v16 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v79 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v79 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v79 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19_7();
  v34 = *(v0 + 184);
  v81 = v0;
  OUTLINED_FUNCTION_45_9(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  OUTLINED_FUNCTION_56_7();
  if ((v4 & 0x100) != 0)
  {
    switch(v4)
    {
      case 1:
        sub_1E3E37F30();
        OUTLINED_FUNCTION_48_4();
        v58(v26);
        v59 = sub_1E41FFC94();
        v60 = sub_1E42067E4();
        if (OUTLINED_FUNCTION_6_33(v60))
        {
          *OUTLINED_FUNCTION_125_0() = 0;
          OUTLINED_FUNCTION_79_5(&dword_1E323F000, v61, v62, "FollowLiveUpdatesButton.handleFollowRequest failed: Max Target Live Activities. Reverting to 'not following'");
          OUTLINED_FUNCTION_6_0();
        }

        (*(v18 + 8))(v26, v16);
        v63 = v80;
        sub_1E37DF128();
        goto LABEL_20;
      case 2:
        sub_1E3E37F30();
        OUTLINED_FUNCTION_48_4();
        v64(v2);
        v65 = sub_1E41FFC94();
        v66 = sub_1E42067E4();
        if (OUTLINED_FUNCTION_6_33(v66))
        {
          *OUTLINED_FUNCTION_125_0() = 0;
          OUTLINED_FUNCTION_79_5(&dword_1E323F000, v67, v68, "FollowLiveUpdatesButton.handleFollowRequest failed: Max Global Live Activities. Reverting to 'not following'");
          OUTLINED_FUNCTION_6_0();
        }

        (*(v18 + 8))(v2, v16);
        v63 = v80;
        sub_1E37DF37C();
LABEL_20:
        OUTLINED_FUNCTION_47_7();
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
        type metadata accessor for FollowLiveUpdatesButton(0);
        sub_1E379D7E4(v63, v79, &qword_1ECF2A850);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A870);
        sub_1E4203904();
        sub_1E325F69C(v63, &qword_1ECF2A850);
        goto LABEL_21;
      case 3:
        break;
      case 4:
        v50 = *(v81 + *(type metadata accessor for FollowLiveUpdatesButton(0) + 64));
        if (FollowLiveUpdatesRequestManager.check(for:)(v50))
        {
          sub_1E3E37F30();
          OUTLINED_FUNCTION_48_4();
          v51 = v16;
          v52(v32);
          v53 = sub_1E41FFC94();
          v54 = sub_1E42067E4();
          if (OUTLINED_FUNCTION_6_33(v54))
          {
            v55 = OUTLINED_FUNCTION_125_0();
            OUTLINED_FUNCTION_9_11(v55);
            OUTLINED_FUNCTION_15_14(&dword_1E323F000, v56, v57, "FollowLiveUpdatesButton.handleFollowRequest failed: XPC Proxy Error. Reverting to 'not following'");
            OUTLINED_FUNCTION_6_0();
          }

          v41 = *(v18 + 8);
          v42 = v32;
        }

        else
        {
          sub_1E3848650();
          sub_1E3E37F30();
          OUTLINED_FUNCTION_48_4();
          v51 = v16;
          v73(v29);
          v74 = sub_1E41FFC94();
          v75 = sub_1E42067E4();
          if (OUTLINED_FUNCTION_6_33(v75))
          {
            v76 = OUTLINED_FUNCTION_125_0();
            OUTLINED_FUNCTION_9_11(v76);
            OUTLINED_FUNCTION_15_14(&dword_1E323F000, v77, v78, "FollowLiveUpdatesButton.handleFollowRequest success: state changed from 'not following' to 'following'");
            OUTLINED_FUNCTION_6_0();
          }

          v41 = *(v18 + 8);
          v42 = v29;
        }

        v43 = v51;
        goto LABEL_5;
      default:
        sub_1E3E37F30();
        OUTLINED_FUNCTION_48_4();
        v44(v22);
        v45 = sub_1E41FFC94();
        v46 = sub_1E42067E4();
        if (OUTLINED_FUNCTION_6_33(v46))
        {
          v47 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_9_11(v47);
          OUTLINED_FUNCTION_15_14(&dword_1E323F000, v48, v49, "FollowLiveUpdatesButton.handleFollowRequest failed: Unknown. Reverting to 'not following'");
          OUTLINED_FUNCTION_6_0();
        }

        (*(v18 + 8))(v22, v16);
        type metadata accessor for FollowLiveUpdatesButton(0);
LABEL_21:
        sub_1E3848650();
        break;
    }
  }

  else
  {
    sub_1E3E37F30();
    OUTLINED_FUNCTION_48_4();
    v35(v1);
    v36 = sub_1E41FFC94();
    v37 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_6_33(v37))
    {
      v38 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v38);
      OUTLINED_FUNCTION_15_14(&dword_1E323F000, v39, v40, "FollowLiveUpdatesButton.handleFollowRequest: state changed from 'not following' to 'following'");
      OUTLINED_FUNCTION_6_0();
    }

    v41 = *(v18 + 8);
    v42 = v1;
    v43 = v16;
LABEL_5:
    v41(v42, v43);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37DEDE0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_7_49();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16_21();
  v5 = sub_1E4203624();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_7();
  sub_1E4203634();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v9 = objc_opt_self();
  if (![v9 sharedInstance])
  {
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_43_10();
  v11 = OUTLINED_FUNCTION_55_7(v10 | 0xA, "yLimitReached.Body");
  v13 = v12;

  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = sub_1E32822E0();
  v15 = OUTLINED_FUNCTION_54_2();
  v19 = OUTLINED_FUNCTION_44_16(v15, v16, v17, v18);
  sub_1E37DFA1C(v19);
  v20 = [v9 sharedInstance];
  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v20;
  OUTLINED_FUNCTION_23();
  sub_1E3741090(0xD000000000000024, v22, v21);
  OUTLINED_FUNCTION_65_1();

  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_1_65();
  sub_1E4203614();
  v23 = OUTLINED_FUNCTION_27_0();
  sub_1E37434B8(v23, v24, v25);

  v26 = [v9 sharedInstance];
  if (!v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = v26;
  OUTLINED_FUNCTION_39_12("TV.Button.LiveUpdates.AllowInSettings");
  v29 = v28;

  if (v29)
  {
    OUTLINED_FUNCTION_54_2();
    OUTLINED_FUNCTION_38_9();
    OUTLINED_FUNCTION_64_6();
    v30 = swift_allocObject();
    sub_1E37DFCD4(v1, v30 + v14);
    OUTLINED_FUNCTION_32_0();
    sub_1E4203614();

    v31 = OUTLINED_FUNCTION_32_0();
    sub_1E37434B8(v31, v32, v33);

    OUTLINED_FUNCTION_21_25();
    *v3 = 0;
    v34 = type metadata accessor for AlertInfo(0);
    v35 = OUTLINED_FUNCTION_41_18(v34);
    v36(v35);
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1E37DF128()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A968);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_41();
  sub_1E4203634();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v5 = [objc_opt_self() sharedInstance];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  OUTLINED_FUNCTION_77_2(0xD000000000000023);
  v8 = v7;

  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1E32822E0();
  v9 = OUTLINED_FUNCTION_53_10();
  v13 = OUTLINED_FUNCTION_51_8(v9, v10, v11, v12);
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v31 = v1;
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_82_1(35, v15);
  v17 = v16;

  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_53_10();
  v18 = OUTLINED_FUNCTION_40_11();
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_80_0(v18);
  v20 = v19;

  if (v20)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_1_65();
    sub_1E4203614();
    v21 = OUTLINED_FUNCTION_32_7();
    sub_1E37434B8(v21, v22, v23);

    sub_1E4203624();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    OUTLINED_FUNCTION_22_15();
    *v31 = 2;
    v28 = type metadata accessor for AlertInfo(0);
    v29 = OUTLINED_FUNCTION_42_16(v28);
    v30(v29);
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1E37DF37C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A968);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_41();
  sub_1E4203634();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v5 = [objc_opt_self() sharedInstance];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  OUTLINED_FUNCTION_77_2(0xD000000000000032);
  v8 = v7;

  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1E32822E0();
  v9 = OUTLINED_FUNCTION_53_10();
  v13 = OUTLINED_FUNCTION_51_8(v9, v10, v11, v12);
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v31 = v1;
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_82_1(50, v15);
  v17 = v16;

  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_53_10();
  v18 = OUTLINED_FUNCTION_40_11();
  if (!v18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_80_0(v18);
  v20 = v19;

  if (v20)
  {
    OUTLINED_FUNCTION_53_10();
    OUTLINED_FUNCTION_1_65();
    sub_1E4203614();
    v21 = OUTLINED_FUNCTION_32_7();
    sub_1E37434B8(v21, v22, v23);

    sub_1E4203624();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    OUTLINED_FUNCTION_22_15();
    *v31 = 3;
    v28 = type metadata accessor for AlertInfo(0);
    v29 = OUTLINED_FUNCTION_42_16(v28);
    v30(v29);
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_1E37DF5D0()
{
  v0 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  sub_1E37E0EA0();
  sub_1E4205F14();
  result = sub_1E3763FC8();
  if (result)
  {
    v11 = result;
    sub_1E41FE3C4();

    (*(v2 + 32))(v9, v6, v0);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v12 = result;
      v13 = sub_1E41FE364();
      v14 = sub_1E4205CB4();
      sub_1E37E0EE4(v13, v14, v12);

      return (*(v2 + 8))(v9, v0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1E37DF768()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27_0();

  sub_1E3F23370();
}

void sub_1E37DF7B8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A940);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  sub_1E3EB9BB4(v24);
  v13 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v4, v24, 0, v13 & 1, 0, 0, v12);
  v14 = sub_1E375C31C(v24);
  v15 = *(v2 + 48);
  if (v15 && (v16 = (*(*v15 + 1712))(v14), v16 != 13))
  {
    sub_1E3B033CC(v16, v8);
  }

  else
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  sub_1E3B03114(v8, v0);
  sub_1E325F69C(v8, &qword_1ECF2A250);
  OUTLINED_FUNCTION_4_34();
  sub_1E37E0C50(v21, &qword_1ECF2A940, &unk_1E429E7E8, v22);
  OUTLINED_FUNCTION_14_2();
  sub_1E374AD40(v23, &qword_1ECF2A1F8);
  sub_1E4202FA4();
  sub_1E325F69C(v0, &qword_1ECF2A1F8);
  sub_1E325F69C(v12, &qword_1ECF2A940);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37DFA1C(char a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      __break(1u);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_82_1(48, v5);
    OUTLINED_FUNCTION_83();
    if (v1)
    {
LABEL_7:
      sub_1E32822E0();
      sub_1E4202C44();
      return;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_55_7(0xD00000000000003BLL, "tionBar");
  OUTLINED_FUNCTION_83();
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void sub_1E37DFAF0(char a1)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      __break(1u);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_82_1(49, v5);
    OUTLINED_FUNCTION_83();
    if (v1)
    {
LABEL_7:
      sub_1E32822E0();
      sub_1E4202C44();
      return;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_55_7(0xD00000000000003CLL, "ctivitiesMessage");
  OUTLINED_FUNCTION_83();
  if (v1)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_1E37DFC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowLiveUpdatesButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E37DFC78(uint64_t a1)
{
  v2 = type metadata accessor for FollowLiveUpdatesButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E37DFCD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowLiveUpdatesButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E37DFD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_135_0();

  return sub_1E37DC8F8(a1, v2 + v6, a2);
}

uint64_t sub_1E37DFDB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4201A34();
  *a1 = result & 1;
  return result;
}

void sub_1E37DFE4C()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E37E00E0(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E37E00E0(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E37E00E0(319, qword_1EE287258, type metadata accessor for TextLayout, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E37E1190(319, &qword_1ECF2A878, &type metadata for DefaultButton, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1E37E0144();
            if (v5 <= 0x3F)
            {
              sub_1E37E1190(319, &qword_1EE288668, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1E37E018C();
                if (v7 <= 0x3F)
                {
                  sub_1E41FE8D4();
                  if (v8 <= 0x3F)
                  {
                    sub_1E37E01F0();
                    if (v9 <= 0x3F)
                    {
                      sub_1E37E00E0(319, &qword_1ECF2A890, type metadata accessor for CGRect, MEMORY[0x1E6981948]);
                      if (v10 <= 0x3F)
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
    }
  }
}

void sub_1E37E00E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E37E0144()
{
  result = qword_1EE23ACD0;
  if (!qword_1EE23ACD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE23ACD0);
  }

  return result;
}

void sub_1E37E018C()
{
  if (!qword_1ECF2A880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A850);
    v0 = sub_1E4203924();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF2A880);
    }
  }
}

void sub_1E37E01F0()
{
  if (!qword_1ECF2A888)
  {
    type metadata accessor for FollowStateViewModel();
    sub_1E37DBDBC();
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF2A888);
    }
  }
}

uint64_t sub_1E37E027C()
{
  result = sub_1E4203634();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScoreboardViewModel.ScoreboardState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AlertInfo.AlertType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E37E0460()
{
  result = qword_1ECF46BD0[0];
  if (!qword_1ECF46BD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46BD0);
  }

  return result;
}

unint64_t sub_1E37E04B8()
{
  result = qword_1ECF46CE0[0];
  if (!qword_1ECF46CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46CE0);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_144();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  if (*(v4 + 56))
  {
  }

  v5 = v4 + v0[14];
  v6 = type metadata accessor for AlertInfo(0);
  if (!OUTLINED_FUNCTION_81_1(v6))
  {
    v7 = *(v2 + 20);
    sub_1E4203634();
    OUTLINED_FUNCTION_2();
    (*(v8 + 8))(v5 + v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A870);

  OUTLINED_FUNCTION_75_1(v0[16]);

  OUTLINED_FUNCTION_75_1(v0[19]);

  return swift_deallocObject();
}

void sub_1E37E06D8()
{
  v0 = type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_135_0();
  sub_1E37DD0E0();
}

unint64_t sub_1E37E0734()
{
  result = qword_1ECF2A8D8;
  if (!qword_1ECF2A8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A8D0);
    sub_1E37E07B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A8D8);
  }

  return result;
}

unint64_t sub_1E37E07B8()
{
  result = qword_1ECF2A8E0;
  if (!qword_1ECF2A8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A8E8);
    sub_1E37E083C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A8E0);
  }

  return result;
}

unint64_t sub_1E37E083C()
{
  result = qword_1ECF2A8F0;
  if (!qword_1ECF2A8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A8F8);
    sub_1E374AD40(&qword_1ECF2A900, &unk_1ECF2A908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A8F0);
  }

  return result;
}

uint64_t sub_1E37E08F4()
{
  OUTLINED_FUNCTION_7_49();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E4200EA4();
  OUTLINED_FUNCTION_17_2(v3);

  return sub_1E37DDC0C(v0 + v2);
}

unint64_t sub_1E37E09C4()
{
  result = qword_1ECF2A920;
  if (!qword_1ECF2A920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A8C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A8B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A8B0);
    sub_1E374AD40(&qword_1ECF2A918, &qword_1ECF2A8B0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E374AD40(&qword_1EE288760, &unk_1ECF2A928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A920);
  }

  return result;
}

unint64_t sub_1E37E0B30()
{
  result = qword_1ECF46D78;
  if (!qword_1ECF46D78)
  {
    type metadata accessor for AlertInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF46D78);
  }

  return result;
}

unint64_t sub_1E37E0B98()
{
  result = qword_1EE288CE8;
  if (!qword_1EE288CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A948);
    sub_1E37E0C50(&qword_1EE289158, &unk_1ECF2A950, &unk_1E429E800, sub_1E37E0CE8);
    sub_1E37E0D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CE8);
  }

  return result;
}

uint64_t sub_1E37E0C50(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E37E0CE8()
{
  result = qword_1EE2831B8[0];
  if (!qword_1EE2831B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2831B8);
  }

  return result;
}

unint64_t sub_1E37E0D3C()
{
  result = qword_1EE283108[0];
  if (!qword_1EE283108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE283108);
  }

  return result;
}

void sub_1E37E0D90()
{
  v0 = type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_135_0();
  sub_1E37DE854();
}

uint64_t sub_1E37E0E04(__int16 a1)
{
  v3 = type metadata accessor for FollowLiveUpdatesButton(0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_135_0();

  return sub_1E37DE32C(a1 & 0x1FF, v1 + v4);
}

id sub_1E37E0E74()
{
  type metadata accessor for FollowLiveUpdatesButton(0);

  return sub_1E37DF5D0();
}

unint64_t sub_1E37E0EA0()
{
  result = qword_1ECF2A958;
  if (!qword_1ECF2A958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF2A958);
  }

  return result;
}

id sub_1E37E0EE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E4205C44();

  v6 = [a3 openSensitiveURL:a1 withOptions:v5];

  return v6;
}

uint64_t sub_1E37E0F68()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_7_49();
  v4 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5 = *(v4 + *(v3 + 64)) | (*(v4 + *(v3 + 64) + 1) << 8);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1E37E1058;

  return sub_1E37DE4A0(v6, v7, v8, v4, v5);
}

uint64_t sub_1E37E1058()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

unint64_t sub_1E37E113C()
{
  result = qword_1ECF2A960;
  if (!qword_1ECF2A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A960);
  }

  return result;
}

void sub_1E37E1190(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_53_10()
{

  return sub_1E4202C44();
}

uint64_t OUTLINED_FUNCTION_56_7()
{

  return sub_1E4203904();
}

uint64_t OUTLINED_FUNCTION_57_6()
{

  return sub_1E37DFC14(v0, v1);
}

uint64_t OUTLINED_FUNCTION_77_2@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3741090(a1 + 2, (v1 - 32) | 0x8000000000000000, v2);
}

void OUTLINED_FUNCTION_79_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_80_0(void *a1)
{

  return sub_1E3741090(19279, 0xE200000000000000, a1);
}

uint64_t sub_1E37E12D0()
{
  result = sub_1E4205ED4();
  qword_1ECF71240 = result;
  return result;
}

uint64_t sub_1E37E1308()
{
  result = sub_1E4205ED4();
  qword_1EE2AA790 = result;
  return result;
}

uint64_t *sub_1E37E1340()
{
  if (qword_1EE28E6E8 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA790;
}

uint64_t sub_1E37E1390()
{
  result = sub_1E4205ED4();
  qword_1EE2AA788 = result;
  return result;
}

uint64_t *sub_1E37E13C8()
{
  if (qword_1EE28E6E0 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA788;
}

unint64_t sub_1E37E1424()
{
  result = qword_1EE279848;
  if (!qword_1EE279848)
  {
    type metadata accessor for TemplateViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE279848);
  }

  return result;
}

uint64_t sub_1E37E1484@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E3C0EFB8();
  v4 = v3;
  v15 = v5 & 1;
  type metadata accessor for ViewMetricsRecorder();
  v6 = sub_1E3FEFA68();
  type metadata accessor for TemplateViewModel();
  sub_1E37E1424();

  v7 = sub_1E42010C4();
  v9 = v8;
  v10 = sub_1E39C1F18();
  result = sub_1E32AE9B0(v10);
  if (result)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    type metadata accessor for CollectionViewModel();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
    }
  }

  else
  {

    v12 = 0;
  }

  type metadata accessor for ViewModel();
  j___s8VideosUI9ViewModelCMa();
  v13 = sub_1E39C1CF8(74);
  result = sub_1E32AE9B0(v13);
  if (!result)
  {

    v14 = 0;
    goto LABEL_14;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1E6911E60](0, v13);
    goto LABEL_12;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 32);

LABEL_12:

LABEL_14:
    *a1 = v7;
    *(a1 + 8) = v9;
    *(a1 + 16) = v2;
    *(a1 + 24) = v4;
    *(a1 + 32) = v15;
    *(a1 + 40) = v12;
    *(a1 + 48) = v14;
    *(a1 + 56) = 0;
    *(a1 + 64) = v6;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1E37E16B0@<X0>(uint64_t a1@<X8>)
{
  v6 = v1;
  v184 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A970);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v172 = v9;
  v173 = sub_1E42045D4();
  OUTLINED_FUNCTION_0_10();
  v171 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  v170 = v12;
  v13 = sub_1E4204624();
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A978);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v169 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A980);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A988);
  OUTLINED_FUNCTION_0_10();
  v167 = v21;
  v168 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v178 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A990);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v166 = v26;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A998);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v164 - v28;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v176 = v31;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v165 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_44();
  v177 = v36;
  v37 = v1[1];
  v209[3] = &unk_1F5D5CF88;
  v209[4] = &off_1F5D5C718;
  LOBYTE(v209[0]) = 2;
  v38 = j__OUTLINED_FUNCTION_18();
  v39 = sub_1E39C29F0(v209, v38 & 1);
  v40 = __swift_destroy_boxed_opaque_existential_1(v209);
  v179 = v6[5];
  v180 = v6;
  v182 = v29;
  v183 = v24;
  if (v179)
  {
    v178 = v34;
    if (v39)
    {
      v41 = v179;

      v43 = (*(*v37 + 392))(v42);
      v44 = 0.0;
      if (v43)
      {
        OUTLINED_FUNCTION_47_0();
        v46 = *(v45 + 200);

        *&v48 = COERCE_DOUBLE(v46(v47));
        LOBYTE(v46) = v49;

        if ((v46 & 1) == 0 || (OUTLINED_FUNCTION_47_0(), v51 = *(v50 + 224), v52 = , *&v48 = COERCE_DOUBLE(v51(v52)), LOBYTE(v51) = v53, , (v51 & 1) == 0))
        {
          v44 = *&v48;
        }
      }

      if (!(*(*v41 + 392))() || (OUTLINED_FUNCTION_30(), v55 = (*(v54 + 984))(), v57 = v56, , (v57 & 1) != 0) || v55 == 21)
      {
        type metadata accessor for LayoutGrid();
        sub_1E3A258E4(v44);
      }

      else
      {
        v58 = *MEMORY[0x1E69DDCE0];
        v59 = *(MEMORY[0x1E69DDCE0] + 8);
        v60 = *(MEMORY[0x1E69DDCE0] + 16);
        v61 = *(MEMORY[0x1E69DDCE0] + 24);
      }

      v94 = sub_1E3952BE0(v58, v59, v60, v61);
      if (v43 && (OUTLINED_FUNCTION_47_0(), v96 = *(v95 + 176), v97 = , v96(v204, v97), v3 = *v204, v4 = *&v204[1], v5 = *&v204[2], v98 = *&v204[3], , (v205 & 1) == 0))
      {
        *&v101 = sub_1E3952BE0(v3, v4, v5, v98);
        v100 = 0;
        v99 = v101;
      }

      else
      {
        v99 = 0;
        v100 = 1;
      }

      v102 = sub_1E4149E0C(v99, v100, v44 - v94);
      if (v43)
      {
        OUTLINED_FUNCTION_47_0();
        v104 = *(v103 + 328);

        v106 = v104(v105);
        v108 = v107;

        v109 = *(*v43 + 352);

        v111 = v109(v110);
        v113 = v112;

        if (v113)
        {
          v114 = 0;
        }

        else
        {
          v114 = v111;
        }

        if (v108)
        {
          v106 = 0;
        }
      }

      else
      {
        v114 = 0;
        v106 = 0;
      }

      j__OUTLINED_FUNCTION_51_1();
      j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_25_20();
      v115 = OUTLINED_FUNCTION_37_13();
      sub_1E3EB9C0C(v115, v116, v117, *&v44, v106, 0, v118, 2, v119, v160, 1, 0, 1, v161, v162[0], v162[1], v162[2]);
      sub_1E375C2C0(v206, v209);
      v120 = j__OUTLINED_FUNCTION_18();
      v121 = j__OUTLINED_FUNCTION_18();
      v163 = j__OUTLINED_FUNCTION_51_1() & 1;
      OUTLINED_FUNCTION_18_15();
      OUTLINED_FUNCTION_48_13(v122, v123, v124, v125, v126, 1, 0, 0, 256, 3, 0, v120 & 1, v121 & 1, v163);
      memcpy(v185, v207, 0x60uLL);
      memcpy(v199, v208, sizeof(v199));
      v200 = 0;
      memcpy(v212, v207, sizeof(v212));
      v213 = v44;
      v214 = v114;
      v215 = 0;
      memcpy(v216, v208, sizeof(v216));
      sub_1E375C1CC(v212, v209);
      v127 = j__OUTLINED_FUNCTION_18();
      v128 = j__OUTLINED_FUNCTION_18();
      j_j__OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_9_10();
      j__OUTLINED_FUNCTION_51_1();
      v129 = j__OUTLINED_FUNCTION_18();
      v130 = sub_1E3CBD2B8();
      v131 = j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_18_15();
      sub_1E3EBA150(v132, v133, v134, v135, v127, v128, 0, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, 0, 1, v129 & 1, v130, v131 & 1);
      memcpy(v198, v209, sizeof(v198));
      v196[0] = v210[0];
      *(v196 + 3) = *(v210 + 3);
      memcpy(v195, v211, sizeof(v195));
      v197 = 0;
      type metadata accessor for CollectionLayoutFactory();
      sub_1E3C11D38(v201);
      v146.n128_u64[0] = v201[0];
      v147.n128_u64[0] = v201[1];
      v148.n128_u64[0] = v201[2];
      v149.n128_u64[0] = v201[3];
      j_nullsub_1(v146, v147, v148, v149);
      OUTLINED_FUNCTION_9_10();
      sub_1E375C31C(v206);

      memcpy(v201, v185, 0x60uLL);
      *&v201[12] = v44;
      v201[13] = v114;
      v202 = v200;
      memcpy(v203, v199, sizeof(v203));
      sub_1E37E6F2C(v201);
      memcpy(v185, v198, sizeof(v185));
      v186 = v44;
      v187 = v114;
      v188 = v197;
      *v189 = v196[0];
      *&v189[3] = *(v196 + 3);
      v190 = v102;
      v191 = v3;
      v192 = v4;
      v193 = v5;
      memcpy(v194, v195, sizeof(v194));
      v150 = sub_1E4203D94();
      v151 = v165;
      *v165 = v150;
      *(v151 + 8) = v152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AA58);
      sub_1E37E27E0();
      sub_1E375B760(v185);
      sub_1E3743538(v151, v176, &qword_1ECF2A9A8);
      swift_storeEnumTagMultiPayload();
      v153 = OUTLINED_FUNCTION_75();
      __swift_instantiateConcreteTypeFromMangledNameV2(v153);
      OUTLINED_FUNCTION_17_5();
      sub_1E374AD40(v154, &qword_1ECF2A9A8);
      OUTLINED_FUNCTION_16_22();
      sub_1E374AD40(v155, &unk_1ECF2AA38);
      v93 = v177;
      sub_1E4201F44();
      sub_1E325F69C(v151, &qword_1ECF2A9A8);
    }

    else
    {
      OUTLINED_FUNCTION_64_4();
      v86 = swift_allocObject();
      v87 = v180;
      memcpy((v86 + 16), v180, 0x48uLL);
      *(v86 + 88) = v179;
      v88 = v176;
      *v176 = sub_1E37E6314;
      v88[1] = v86;
      swift_storeEnumTagMultiPayload();
      swift_retain_n();
      sub_1E37E6500(v87, v209);
      v89 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v89);
      OUTLINED_FUNCTION_17_5();
      sub_1E374AD40(v90, v91);
      OUTLINED_FUNCTION_16_22();
      sub_1E374AD40(v92, &unk_1ECF2AA38);
      v93 = v177;
      sub_1E4201F44();
    }

    v81 = &qword_1ECF2A9B0;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v156, v157, v158);
    swift_storeEnumTagMultiPayload();
    sub_1E37E60F8();
    sub_1E37E61DC();
    sub_1E4201F44();

    v85 = v93;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v40);
    sub_1E4202704();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A9B8);
    sub_1E37E5E4C();
    v62 = sub_1E4200AD4();
    v63 = (*(*v37 + 392))(v62);
    v64 = [objc_opt_self() isVision];
    v65 = sub_1E37E6048();
    sub_1E38838AC(v63, v64, 2, v65, v178);

    sub_1E325F69C(v2, &qword_1ECF2A980);
    v66 = MEMORY[0x1E69E7CC0];
    sub_1E4205CB4();
    sub_1E4204614();
    sub_1E37E5C70(v66);
    v67 = v169;
    sub_1E4204504();
    v68 = sub_1E4204514();
    __swift_storeEnumTagSinglePayload(v67, 0, 1, v68);
    v69 = MetricsJetEngine.shared.unsafeMutableAddressor();
    v70 = *((*MEMORY[0x1E69E7D40] & **v69) + 0x68);
    v71 = *v69;
    v72 = v170;
    v70();

    v73 = v180[8];
    (*(*v73 + 176))();
    v74 = sub_1E41FF594();
    v75 = v172;
    __swift_storeEnumTagSinglePayload(v172, 1, 1, v74);
    v209[0] = v18;
    v209[1] = v65;
    OUTLINED_FUNCTION_2_2();
    swift_getOpaqueTypeConformance2();
    v76 = v166;
    v77 = v168;
    v78 = v178;
    sub_1E4202C74();
    swift_unknownObjectRelease();
    sub_1E325F69C(v75, &qword_1ECF2A970);
    (*(v171 + 8))(v72, v173);
    sub_1E325F69C(v67, &qword_1ECF2A978);
    (*(v167 + 8))(v78, v77);
    KeyPath = swift_getKeyPath();
    v80 = (v76 + *(v183 + 36));
    *v80 = KeyPath;
    v80[1] = v73;
    v81 = &qword_1ECF2A990;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v82, v83, v84);
    swift_storeEnumTagMultiPayload();
    sub_1E37E60F8();
    sub_1E37E61DC();

    sub_1E4201F44();
    v85 = v76;
  }

  return sub_1E325F69C(v85, v81);
}
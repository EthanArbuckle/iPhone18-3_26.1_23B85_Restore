uint64_t sub_1E3A7A864()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1680))(&v5);
  if (v6)
  {
    sub_1E3251BE8(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v1 = OUTLINED_FUNCTION_27_0();
    v3 = v2(v1);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1E37CD87C(&v5);
    v3 = sub_1E40B44EC();
  }

  return v3 & 1;
}

void sub_1E3A7A920()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1680))(&v3);
  if (v4)
  {
    sub_1E3251BE8(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v1 = OUTLINED_FUNCTION_27_0();
    v2(v1);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_1E37CD87C(&v3);
    sub_1E40B7F08();
  }
}

uint64_t sub_1E3A7A9D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((sub_1E37D01CC() & 1) == 0)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_8();
  (*(v9 + 1680))(&v17);
  if (!v18)
  {
    sub_1E37CD87C(&v17);
LABEL_5:
    v15 = sub_1E40B4EC8(a1, a2);
    return v15 & 1;
  }

  sub_1E3251BE8(&v17, v19);
  v10 = v20;
  v11 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a1;
  v14 = *(v11 + 40);

  sub_1E34AF604(a4);
  v14(sub_1E3A7B4D0, v13, v10, v11);

  __swift_destroy_boxed_opaque_existential_1(v19);
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_1E3A7AB60(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, void (*a5)(void), uint64_t a6, int a7)
{
  v73 = a7;
  v74 = a6;
  v75 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v70 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70 - v22;
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if ((a3 & 0x100) != 0)
  {
    if (a3 == 2)
    {
      v35 = sub_1E324FBDC();
      v36 = v75;
      (*(v11 + 16))(v14, v35, v75);
      v37 = OUTLINED_FUNCTION_2_103();
      sub_1E3781F8C(v37, v38, 2u);
      v39 = sub_1E41FFC94();
      v40 = sub_1E42067F4();
      v41 = OUTLINED_FUNCTION_2_103();
      sub_1E37D172C(v41, v42, 2u, 1);
      if (os_log_type_enabled(v39, v40))
      {
        v43 = OUTLINED_FUNCTION_6_21();
        v44 = OUTLINED_FUNCTION_100();
        v76 = v44;
        *v43 = 136315138;
        v45 = OUTLINED_FUNCTION_2_103();
        *(v43 + 4) = sub_1E3270FC8(v45, v46, v47);
        _os_log_impl(&dword_1E323F000, v39, v40, "LibCollectionViewModel:: Received empty items from fragment request: [%s]", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v48 = *(v11 + 8);
        v49 = v14;
LABEL_24:
        v69 = v75;
        goto LABEL_30;
      }

      v48 = *(v11 + 8);
      v49 = v14;
    }

    else
    {
      v56 = OUTLINED_FUNCTION_2_103();
      v77 = sub_1E3F6FB3C(v56, v57, a3);
      v78 = v58;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
      sub_1E4148C68(sub_1E37BCD7C, v59, &v76);

      v60 = sub_1E324FBDC();
      v36 = v75;
      (*(v11 + 16))(v17, v60, v75);

      v61 = sub_1E41FFC94();
      v62 = sub_1E42067F4();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = OUTLINED_FUNCTION_6_21();
        v64 = OUTLINED_FUNCTION_100();
        v76 = v64;
        *v63 = 136315138;
        v65 = OUTLINED_FUNCTION_27_0();
        v68 = sub_1E3270FC8(v65, v66, v67);

        *(v63 + 4) = v68;
        _os_log_impl(&dword_1E323F000, v61, v62, "LibCollectionViewModel:: Received error [%s]", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v48 = *(v11 + 8);
        v49 = v17;
        goto LABEL_24;
      }

      v48 = *(v11 + 8);
      v49 = v17;
    }

    v69 = v36;
LABEL_30:
    v48(v49, v69);
    if (a5)
    {
      a5(0);
    }
  }

  v72 = a5;
  v25 = sub_1E324FBDC();
  v71 = *(v11 + 16);
  v71(v23, v25, v75);
  v26 = sub_1E41FFC94();
  v27 = sub_1E42067E4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1E323F000, v26, v27, "LibCollectionViewModel:: Received success response", v28, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v29 = *(v11 + 8);
  v30 = v75;
  v29(v23, v75);
  OUTLINED_FUNCTION_5_0();
  v77 = *(a1 + 32);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
  OUTLINED_FUNCTION_0_125(&qword_1EE23B540, &unk_1ECF2C790);
  if (sub_1E4149048(v31))
  {
    v71(v20, v25, v30);
    v32 = sub_1E41FFC94();
    v33 = sub_1E42067F4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1E323F000, v32, v33, "LibCollectionViewModel:: Received empty items from fragment request", v34, 2u);
      v30 = v75;
      OUTLINED_FUNCTION_6_0();
    }

    v29(v20, v30);
    if (v72)
    {
      v72(0);
    }
  }

  v50 = *(a1 + 32);
  if (!v50)
  {
LABEL_26:
    sub_1E40B6838();
  }

  v51 = sub_1E32AE9B0(*(a1 + 32));

  for (i = 0; ; ++i)
  {
    if (v51 == i)
    {

      goto LABEL_26;
    }

    if ((v50 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v50);
    }

    else
    {
      if (i >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_8();
    v54 = *(v53 + 632);

    v54(v55);
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1E3A7B22C()
{

  sub_1E37CD87C(v0 + 448);
}

uint64_t sub_1E3A7B274()
{
  v0 = CollectionViewModel.deinit();

  sub_1E37CD87C(v0 + 448);

  return v0;
}

uint64_t sub_1E3A7B2C4()
{
  v0 = sub_1E3A7B274();

  return MEMORY[0x1EEE6BDC0](v0, 496, 7);
}

uint64_t sub_1E3A7B2F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v14 = 0;
      return v14 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v14 = 1;
      return v14 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for CollectionGroupViewModel();
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }
      }

      sub_1E3A7B510();
      v14 = sub_1E4205E84();

      if (v14)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v14 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3A7B510()
{
  result = qword_1EE259C40;
  if (!qword_1EE259C40)
  {
    type metadata accessor for CollectionGroupViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE259C40);
  }

  return result;
}

uint64_t sub_1E3A7B5A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingViewController_viewModel;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

void *sub_1E3A7B638()
{
  v1 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingViewController_messageViewController;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3A7B674(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingViewController_messageViewController;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1E3A7B70C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingViewController_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingViewController_messageViewController] = 0;
  if (a2)
  {
    v5 = sub_1E4205ED4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for UnifiedMessagingViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_1E3A7B828(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingViewController_viewModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingViewController_messageViewController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for UnifiedMessagingViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3A7B8D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedMessagingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3A7B950()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E324FBDC();
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_1E41FFC94();
  v9 = sub_1E42067E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = sub_1E4206E64();
    v14 = sub_1E3270FC8(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1E323F000, v8, v9, "UnifiedMessaging::didUpdate newSize %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  return (*(v2 + 8))(v6, v0);
}

void sub_1E3A7BB68(uint64_t a1, void *a2)
{
  v99 = a1;
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v100 = v4;
  v101 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v98 = v6 - v5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v93 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v91 - v9;
  v94 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v92 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v96 = v13 - v12;
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v91 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v91 - v22;
  v24 = sub_1E324FBDC();
  v102 = *(v16 + 16);
  v102(v23, v24, v14);
  v25 = a2;
  v26 = sub_1E41FFC94();
  v27 = sub_1E42067E4();

  v28 = &selRef_needsAdamIdToCanonicalIdConversion;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412546;
    *(v29 + 4) = v25;
    *v30 = v25;
    *(v29 + 12) = 2112;
    v31 = [v25 originalRequest];
    *(v29 + 14) = v31;
    v30[1] = v31;
    _os_log_impl(&dword_1E323F000, v26, v27, "UnifiedMessaging::Action dialogResult: %@, request: %@", v29, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v28 = &selRef_needsAdamIdToCanonicalIdConversion;
    OUTLINED_FUNCTION_6_0();
  }

  v103 = *(v16 + 8);
  v103(v23, v14);
  v32 = [v25 v28[138]];
  v33 = [v25 selectedActionIdentifier];
  v34 = sub_1E4205F14();
  v36 = v35;

  v37 = sub_1E3A7C950(v34, v36, v32);
  if (!v37)
  {
    v61 = v105;
    v102(v105, v24, v14);
    v62 = v25;
    v63 = sub_1E41FFC94();
    v64 = sub_1E42067E4();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v109 = v66;
      *v65 = 136315138;
      v67 = [v62 selectedActionIdentifier];
      v68 = sub_1E4205F14();
      v70 = v69;

      v71 = sub_1E3270FC8(v68, v70, &v109);

      *(v65 + 4) = v71;
      _os_log_impl(&dword_1E323F000, v63, v64, "UnifiedMessaging::Action Could not find action for %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v72 = v105;
    }

    else
    {

      v72 = v61;
    }

LABEL_19:
    v103(v72, v14);
    return;
  }

  if ([v37 style] != 2)
  {
    v73 = [v37 deepLink];
    if (v73)
    {
      v74 = v73;
      v75 = v98;
      sub_1E41FE3C4();

      v76 = *((*MEMORY[0x1E69E7D40] & *v104) + 0x90);
      v77 = v76();
      sub_1E3B60024();

      v78 = v76();
      nullsub_1(v79, v80);

      (*(v100 + 8))(v75, v101);
      return;
    }

    v81 = v97;
    v102(v97, v24, v14);
    v82 = sub_1E41FFC94();
    v83 = sub_1E42067E4();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_1E323F000, v82, v83, "UnifiedMessaging::Action Deeplink does not exist", v84, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v72 = v81;
    goto LABEL_19;
  }

  v38 = [objc_opt_self() isSearchEnabled];
  v39 = v104;
  if (v38)
  {
    v40 = [v104 parentViewController];
    if (v40)
    {
      v41 = v40;
      type metadata accessor for SearchStackViewController();
      v42 = swift_dynamicCastClass();
      if (v42)
      {
        v43 = v42;
        v44 = v96;
        MEMORY[0x1E6909170](0, 0);
        v45 = *((*MEMORY[0x1E69E7D40] & *v43) + 0x218);
        v46 = v41;
        v47 = v45();
        sub_1E4200104();

        v48 = v45();
        sub_1E42000B4();

        v49 = v110;
        if (v110)
        {
          v50 = v109;
          v51 = v111;
          v105 = v46;
          v106 = v109;
          v107 = v110;
          v108 = v111;
          v52 = v95;
          sub_1E4200034();
          if (v110)
          {
            v102 = v111;
            v103 = v110;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848);
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_1E4297BE0;
            *(v53 + 32) = v50;
            *(v53 + 40) = v49;
            *(v53 + 48) = v51;

            v54 = v52;
            sub_1E41FFF84();

            v56 = (v45)(v55);
            v57 = v105;

            sub_1E42000D4();

            v58 = OUTLINED_FUNCTION_3_109();
            v60 = v54;
          }

          else
          {

            v87 = v105;

            v58 = OUTLINED_FUNCTION_3_109();
            v60 = v52;
          }

          v59(v58, v60);
          (*(v92 + 8))(v96, v94);
          v39 = v104;
        }

        else
        {

          v85 = OUTLINED_FUNCTION_3_109();
          v86(v85, v95);
          (*(v92 + 8))(v44, v94);
        }
      }

      else
      {
      }
    }

    [v39 willMoveToParentViewController_];
    v88 = [v39 view];
    if (!v88)
    {
      __break(1u);
      return;
    }

    v89 = v88;
    [v88 removeFromSuperview];

    v38 = [v39 removeFromParentViewController];
  }

  v90 = (*((*MEMORY[0x1E69E7D40] & *v39) + 0x60))(v38);
  if (v90)
  {
    (*(*v90 + 1008))(v90);
  }
}

void sub_1E3A7C5C8(uint64_t a1, void *a2)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  if (a2)
  {
    v10 = a2;
    v11 = sub_1E324FBDC();
    (*(v5 + 16))(v9, v11, v3);
    v12 = a2;
    v13 = sub_1E41FFC94();
    v14 = sub_1E42067E4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1E323F000, v13, v14, "UnifiedMessaging::messageViewController didFailWithError %@", v15, 0xCu);
      sub_1E3A66B00(v16);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_1E3A7C7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    sub_1E4205F14();
  }

  v4 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  sub_1E3B5A7AC();
}

id sub_1E3A7C950(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  v5 = [a3 locateActionWithIdentifier_];

  return v5;
}

uint64_t sub_1E3A7C9B4(char a1, uint64_t a2)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E328438C(a2, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (swift_dynamicCast())
  {
    type metadata accessor for SplitOfferTemplateViewModel();
    OUTLINED_FUNCTION_35_0();

    if (sub_1E39E3A90())
    {
      OUTLINED_FUNCTION_35_0();

      v10 = a2;
LABEL_6:
      v25 = &unk_1F5D5DAC8;
      v26 = &off_1F5D5C998;
      LOBYTE(v24[0]) = 51;
      sub_1E3A7E0E4();

      sub_1E39C2B80();
      __swift_destroy_boxed_opaque_existential_1(v24);
      if (v27 == 2 || (v27 & 1) != 0)
      {
      }

      else
      {
        v20 = type metadata accessor for PickerValueVariantResolver(0);
        v21 = sub_1E3B53CA8();
        v25 = v20;
        OUTLINED_FUNCTION_5_104();
        v26 = sub_1E3A7E138(v22, v23);
        v24[0] = v21;
        (*(*v10 + 424))(v24);
      }

      return v10;
    }

    type metadata accessor for TemplateViewModel();

    sub_1E410D4C8();
    if (v11)
    {
      v10 = v11;

      goto LABEL_6;
    }
  }

  v12 = sub_1E324FBDC();
  (*(v6 + 16))(v9, v12, v2);
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v15 = 136315138;
    LOBYTE(v27) = a1;
    sub_1E3A7E090();
    v16 = sub_1E4207944();
    v18 = sub_1E3270FC8(v16, v17, v24);

    *(v15 + 4) = v18;
    _os_log_impl(&dword_1E323F000, v13, v14, "ViewModelFactory::Failed to create template model of type <%s>", v15, 0xCu);
    OUTLINED_FUNCTION_5_21();
    MEMORY[0x1E69143B0](v15, -1, -1);
  }

  (*(v6 + 8))(v9, v2);
  return 0;
}

uint64_t sub_1E3A7CD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v147 - v13;

  v15 = sub_1E38506C8();
  if (v15 == 263)
  {
    v16 = sub_1E324FBDC();
    (*(v8 + 16))(v12, v16, v4);

    v17 = sub_1E41FFC94();
    v18 = sub_1E4206814();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *(v19 + 4) = OUTLINED_FUNCTION_15_74(4.8149e-34);
      _os_log_impl(&dword_1E323F000, v17, v18, "ViewModelFactory::Failed to parse model of type <%s>", v19, 0xCu);
      OUTLINED_FUNCTION_5_21();
      MEMORY[0x1E69143B0](v19, -1, -1);
    }

    (*(v8 + 8))(v12, v4);
    return 0;
  }

  v20 = v15;
  if (sub_1E38504C4(v15))
  {
    type metadata accessor for TextViewModel();
    sub_1E328438C(a3, &v151);

    v21 = sub_1E3C27638(v20, &v151, a4, 0, 0);
    if (v21)
    {
      goto LABEL_7;
    }

LABEL_98:
    v100 = sub_1E324FBDC();
    (*(v8 + 16))(v14, v100, v4);

    v101 = sub_1E41FFC94();
    v102 = sub_1E4206814();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *(v103 + 4) = OUTLINED_FUNCTION_15_74(4.8149e-34);
      _os_log_impl(&dword_1E323F000, v101, v102, "ViewModelFactory::Failed to create view model for type <%s>", v103, 0xCu);
      OUTLINED_FUNCTION_5_21();
      MEMORY[0x1E69143B0](v103, -1, -1);
    }

    (*(v8 + 8))(v14, v4);
    return 0;
  }

  if (sub_1E38504FC())
  {
    sub_1E328438C(a3, &v151);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_98;
    }

    v27 = v155;
    type metadata accessor for ImageViewModel();

    v21 = sub_1E3F5321C(v20, v27, a4);
    if (!v21)
    {
      goto LABEL_98;
    }

    goto LABEL_7;
  }

  sub_1E328438C(a3, &v151);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_98;
  }

  v29 = v155;
  v153 = &type metadata for ViewModelKeys;
  v154 = &off_1F5D7BCA8;
  v30 = OUTLINED_FUNCTION_0_126(11);
  sub_1E3F9F164(v30);
  v147[1] = v28;
  if (*(&v156 + 1))
  {
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(&v151);
      goto LABEL_25;
    }

    __swift_destroy_boxed_opaque_existential_1(&v151);
  }

  else
  {
    OUTLINED_FUNCTION_6_90();
  }

  sub_1E4205CB4();
LABEL_25:
  if (sub_1E385051C(v20))
  {
    v153 = &unk_1F5D5D0A8;
    v154 = &off_1F5D5C768;
    v32 = OUTLINED_FUNCTION_0_126(11);
    sub_1E3F9F164(v32);
    if (*(&v156 + 1))
    {
      if (OUTLINED_FUNCTION_1_129())
      {
        v148 = v29;
        v33 = v149;
        __swift_destroy_boxed_opaque_existential_1(&v151);
        v49 = v33 == 1;
        v29 = v148;
        if (v49)
        {
LABEL_42:

LABEL_43:
          type metadata accessor for ViewModel();
          OUTLINED_FUNCTION_35_0();

          OUTLINED_FUNCTION_4_107();
          v21 = sub_1E39BED80(v38, v39, v40);
          goto LABEL_97;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v151);
      }
    }

    else
    {
      OUTLINED_FUNCTION_6_90();
    }
  }

  switch(v20)
  {
    case 117:
    case 118:
    case 119:
    case 121:
    case 122:
    case 124:
    case 126:
    case 127:
    case 128:
    case 129:
      v148 = v29;
      v153 = &unk_1F5D5D888;
      v154 = &off_1F5D5C928;
      v34 = OUTLINED_FUNCTION_0_126(1);
      OUTLINED_FUNCTION_12_70(v34);

      if (*(&v156 + 1))
      {
        v35 = OUTLINED_FUNCTION_1_129();
        if (v35)
        {
          v36 = v149;
        }

        else
        {
          v36 = 0;
        }

        if (v35)
        {
          v37 = v150;
        }

        else
        {
          v37 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1(&v151);
      }

      else
      {
        OUTLINED_FUNCTION_6_90();
        v36 = 0;
        v37 = 0;
      }

      v151 = v36;
      v152 = v37;
      sub_1E3A7E180();
      sub_1E4149694();
      v44 = v155;
      v153 = &type metadata for ViewModelKeys;
      v154 = &off_1F5D7BCA8;
      v45 = OUTLINED_FUNCTION_0_126(7);
      sub_1E3F9F164(v45);
      if (*(&v156 + 1))
      {
        if (OUTLINED_FUNCTION_1_129())
        {
          v47 = v149;
          v46 = v150;
          __swift_destroy_boxed_opaque_existential_1(&v151);
          goto LABEL_52;
        }

        __swift_destroy_boxed_opaque_existential_1(&v151);
      }

      else
      {
        OUTLINED_FUNCTION_6_90();
      }

      v47 = 0;
      v46 = 0;
LABEL_52:
      v48 = sub_1E38156D0();
      if (!v46)
      {
        goto LABEL_58;
      }

      v49 = v47 == *v48 && v46 == v48[1];
      if (v49)
      {

        goto LABEL_62;
      }

      v50 = sub_1E42079A4();

      if (v50)
      {
LABEL_62:
        type metadata accessor for SportsPlayByPlayCollectionViewModel(0);
        OUTLINED_FUNCTION_35_0();

        v53 = OUTLINED_FUNCTION_7_103();
        v21 = sub_1E381581C(v53, v54, v55);
        goto LABEL_97;
      }

LABEL_58:
      if (v44 == 2)
      {
        goto LABEL_59;
      }

      LOBYTE(v151) = v44;
      LOBYTE(v155) = 0;
      sub_1E3857F18();
      OUTLINED_FUNCTION_3_110();
      if (sub_1E4205E84())
      {
        type metadata accessor for SyndicationCollectionViewModel();
        OUTLINED_FUNCTION_35_0();

        v64 = OUTLINED_FUNCTION_7_103();
        v21 = sub_1E37E751C(v64, v65, v66);
        goto LABEL_97;
      }

      LOBYTE(v151) = v44;
      LOBYTE(v155) = 1;
      OUTLINED_FUNCTION_3_110();
      if (sub_1E4205E84() & 1) == 0 || (TVAppFeature.isEnabled.getter(10))
      {
LABEL_59:
        type metadata accessor for CollectionViewModel();
        OUTLINED_FUNCTION_35_0();

        v51 = v20;
        v52 = v148;
LABEL_60:
        v21 = sub_1E40B198C(v51, v52, a4);
      }

      else
      {
        type metadata accessor for PlayerCollectionViewModel();
        OUTLINED_FUNCTION_35_0();

        v73 = OUTLINED_FUNCTION_7_103();
        v21 = sub_1E3FC60D0(v73, v74, v75);
      }

LABEL_97:
      if (!v21)
      {
        goto LABEL_98;
      }

LABEL_7:
      v22 = v21;
LABEL_8:

      v153 = &unk_1F5D5DAC8;
      v154 = &off_1F5D5C998;
      LOBYTE(v151) = 51;
      sub_1E3A7E0E4();
      sub_1E39C2B80();
      __swift_destroy_boxed_opaque_existential_1(&v151);
      if (v155 != 2)
      {
        if (v155)
        {
          v23 = type metadata accessor for TimeBasedVariantResolver();

          v24 = sub_1E3E05254();
          v153 = v23;
          v25 = &unk_1EE255278;
          v26 = type metadata accessor for TimeBasedVariantResolver;
        }

        else
        {
          v31 = type metadata accessor for PickerValueVariantResolver(0);

          v24 = sub_1E3B53CA8();
          v153 = v31;
          OUTLINED_FUNCTION_5_104();
        }

        v154 = sub_1E3A7E138(v25, v26);
        v151 = v24;
        (*(*v22 + 424))(&v151);
      }

      return v22;
    case 120:
    case 123:
    case 125:
    case 131:
    case 137:
    case 138:
    case 139:
    case 141:
    case 142:
    case 143:
    case 144:
    case 146:
    case 147:
    case 149:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 172:
    case 175:
    case 177:
    case 180:
    case 181:
    case 182:
    case 185:
    case 186:
    case 192:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 210:
    case 211:
    case 212:
    case 218:
    case 222:
      goto LABEL_82;
    case 130:

      type metadata accessor for EpisodeCollectionViewModel();
      OUTLINED_FUNCTION_35_0();

      OUTLINED_FUNCTION_4_107();
      v21 = sub_1E3CC8AFC(v85, v86, v87);
      goto LABEL_97;
    case 132:
    case 133:
    case 134:

      type metadata accessor for SearchCollectionViewModel();
      OUTLINED_FUNCTION_35_0();

      OUTLINED_FUNCTION_4_107();
      v21 = sub_1E3DD3FD0(v56, v57, v58);
      goto LABEL_97;
    case 135:

      type metadata accessor for UnifiedMessagingBannerViewModel();
      OUTLINED_FUNCTION_35_0();

      OUTLINED_FUNCTION_4_107();
      v21 = sub_1E3DFE14C(v88, v89, v90);
      goto LABEL_97;
    case 136:

      type metadata accessor for UnifiedMessagingAccountMessageViewModel();
      OUTLINED_FUNCTION_35_0();

      OUTLINED_FUNCTION_4_107();
      v21 = sub_1E375D8A0(v82, v83, v84);
      goto LABEL_97;
    case 140:

      type metadata accessor for CollectionGroupViewModel();
      OUTLINED_FUNCTION_35_0();

      OUTLINED_FUNCTION_4_107();
      v21 = sub_1E3960E00(v91, v92, v93);
      goto LABEL_97;
    case 145:

      type metadata accessor for SubsetCollectionViewModel();
      OUTLINED_FUNCTION_35_0();

      OUTLINED_FUNCTION_4_107();
      v21 = sub_1E3F74EA8(v94, v95, v96);
      goto LABEL_97;
    case 148:

      type metadata accessor for EpicInlineViewModel();
      OUTLINED_FUNCTION_35_0();

      OUTLINED_FUNCTION_4_107();
      v21 = sub_1E3DC6134(v97, v98, v99);
      goto LABEL_97;
    case 150:

LABEL_89:

      goto LABEL_98;
    case 169:
    case 174:
    case 223:
      v148 = v29;
      v153 = &unk_1F5D5D528;
      v154 = &off_1F5D5C868;
      v59 = OUTLINED_FUNCTION_0_126(9);
      OUTLINED_FUNCTION_12_70(v59);

      if (*(&v156 + 1))
      {
        if (OUTLINED_FUNCTION_1_129())
        {
          v60 = v149;
          __swift_destroy_boxed_opaque_existential_1(&v151);
          if (v60)
          {
            goto LABEL_125;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v151);
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_90();
      }

      type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_35_0();

      v109 = v20;
      v110 = v148;
      goto LABEL_147;
    case 170:
    case 171:
    case 173:
    case 176:
    case 183:
      goto LABEL_42;
    case 178:
      v105 = v29;
      v153 = &unk_1F5D5E578;
      v154 = &off_1F5D5CC08;
      v108 = OUTLINED_FUNCTION_0_126(3);
      OUTLINED_FUNCTION_12_70(v108);

      if (*(&v156 + 1))
      {
        if (OUTLINED_FUNCTION_1_129())
        {
          OUTLINED_FUNCTION_8_74();
          if (v49)
          {
            type metadata accessor for PlayerCellViewModel();
            OUTLINED_FUNCTION_35_0();

            v62 = 178;
            goto LABEL_119;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v151);
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_90();
      }

      type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_35_0();

      v109 = 178;
      goto LABEL_146;
    case 179:
      v105 = v29;
      v153 = &unk_1F5D5E578;
      v154 = &off_1F5D5CC08;
      v107 = OUTLINED_FUNCTION_0_126(3);
      OUTLINED_FUNCTION_12_70(v107);

      if (*(&v156 + 1))
      {
        if (OUTLINED_FUNCTION_1_129())
        {
          OUTLINED_FUNCTION_8_74();
          if (v49)
          {
            type metadata accessor for PlayerCellViewModel();
            OUTLINED_FUNCTION_35_0();

            v62 = 179;
            goto LABEL_119;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v151);
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_90();
      }

      type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_35_0();

      v109 = 179;
      goto LABEL_146;
    case 184:
    case 189:
    case 190:
      v148 = v29;
      v153 = &unk_1F5D5E578;
      v154 = &off_1F5D5CC08;
      v61 = OUTLINED_FUNCTION_0_126(3);
      OUTLINED_FUNCTION_12_70(v61);

      if (*(&v156 + 1))
      {
        if (OUTLINED_FUNCTION_1_129())
        {
          OUTLINED_FUNCTION_8_74();
          if (v49)
          {
            type metadata accessor for PlayerCellViewModel();
            OUTLINED_FUNCTION_35_0();

            v62 = v20;
            v63 = v148;
            goto LABEL_120;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v151);
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_90();
      }

LABEL_125:
      type metadata accessor for UpdatableLockupViewModel();
      OUTLINED_FUNCTION_35_0();

      v111 = OUTLINED_FUNCTION_7_103();
      v21 = sub_1E3E5A250(v111, v112, v113);
      if (!v21)
      {
        goto LABEL_98;
      }

      goto LABEL_7;
    case 187:
    case 188:

      goto LABEL_76;
    case 191:

      type metadata accessor for SportsPlayByPlayViewModel(0);
      OUTLINED_FUNCTION_35_0();

      OUTLINED_FUNCTION_4_107();
      v21 = sub_1E3818C98(v79, v80, v81);
      goto LABEL_97;
    case 193:
      v105 = v29;
      v153 = &unk_1F5D5E578;
      v154 = &off_1F5D5CC08;
      v106 = OUTLINED_FUNCTION_0_126(3);
      OUTLINED_FUNCTION_12_70(v106);

      if (*(&v156 + 1))
      {
        if (OUTLINED_FUNCTION_1_129())
        {
          OUTLINED_FUNCTION_8_74();
          if (v49 && (TVAppFeature.isEnabled.getter(10) & 1) == 0)
          {
            type metadata accessor for PlayerCellViewModel();
            OUTLINED_FUNCTION_35_0();

            v62 = 193;
LABEL_119:
            v63 = v105;
LABEL_120:
            v21 = sub_1E39D7698(v62, v63, a4);
            if (v21)
            {
              goto LABEL_7;
            }

            goto LABEL_98;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v151);
        }
      }

      else
      {
        OUTLINED_FUNCTION_6_90();
      }

      type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_35_0();

      v109 = 193;
LABEL_146:
      v110 = v105;
LABEL_147:
      v21 = sub_1E39BED80(v109, v110, a4);
      if (v21)
      {
        goto LABEL_7;
      }

      goto LABEL_98;
    case 213:
    case 214:
    case 215:
    case 216:
    case 217:
    case 219:
    case 220:
    case 221:

      type metadata accessor for SearchViewModel();
      OUTLINED_FUNCTION_35_0();

      OUTLINED_FUNCTION_4_107();
      v21 = sub_1E3E41278(v41, v42, v43);
      goto LABEL_97;
    default:
      if (v20 == 95)
      {

        type metadata accessor for VideoViewModel();
        OUTLINED_FUNCTION_35_0();

        OUTLINED_FUNCTION_4_107();
        v21 = sub_1E3E3A450(v70, v71, v72);
        goto LABEL_97;
      }

LABEL_82:
      v148 = v29;
      v153 = &unk_1F5D5DAC8;
      v154 = &off_1F5D5C9A8;
      v76 = OUTLINED_FUNCTION_0_126(31);
      OUTLINED_FUNCTION_12_70(v76);

      if (*(&v156 + 1))
      {
        if (OUTLINED_FUNCTION_1_129())
        {
          v77 = v149;
          __swift_destroy_boxed_opaque_existential_1(&v151);
          v78 = v148;
          if (v77)
          {
LABEL_76:
            type metadata accessor for UpdatableLockupViewModel();
            OUTLINED_FUNCTION_35_0();

            OUTLINED_FUNCTION_4_107();
            v21 = sub_1E3E5A250(v67, v68, v69);
            goto LABEL_97;
          }

LABEL_130:
          switch(v20)
          {
            case 229:
              type metadata accessor for MediaShowcasingScoreboardViewModel();
              OUTLINED_FUNCTION_35_0();

              OUTLINED_FUNCTION_4_107();
              sub_1E3BB62B4();
              goto LABEL_97;
            case 230:
            case 231:
            case 235:
            case 236:
            case 237:
            case 238:
            case 239:
            case 240:
              goto LABEL_43;
            case 232:
              sub_1E38F5EA8();

              v118 = sub_1E40A0F50();
              if (v118)
              {
                v119 = v118;
                type metadata accessor for DownloadMenuItemViewModel();

                v120 = sub_1E4001D80(v119);
                if (v120)
                {
                  v22 = v120;

                  goto LABEL_8;
                }
              }

              type metadata accessor for ContextMenuItemModel();
              OUTLINED_FUNCTION_35_0();

              OUTLINED_FUNCTION_4_107();
              v21 = sub_1E3BD97B8(v133, v134, v135);
              goto LABEL_97;
            case 233:
              type metadata accessor for DownloadStateIndicatorViewModel();
              OUTLINED_FUNCTION_35_0();

              OUTLINED_FUNCTION_4_107();
              v21 = sub_1E41738EC(v121, v122, v123);
              goto LABEL_97;
            case 234:
              if (TVAppFeature.isEnabled.getter(10))
              {
                if (!a4)
                {
                  goto LABEL_178;
                }

                OUTLINED_FUNCTION_14_81();
                LOWORD(v155) = 174;
                sub_1E3741534();
                OUTLINED_FUNCTION_3_110();
                v117 = sub_1E4205E84();
              }

              else
              {
                if (!a4)
                {
                  goto LABEL_178;
                }

                v117 = 0;
              }

              OUTLINED_FUNCTION_14_81();
              LOWORD(v155) = 86;
              sub_1E3741534();
              OUTLINED_FUNCTION_3_110();
              if (sub_1E4205E84() & 1) != 0 || (OUTLINED_FUNCTION_14_81(), LOWORD(v155) = 224, OUTLINED_FUNCTION_3_110(), (sub_1E4205E84()) || (OUTLINED_FUNCTION_14_81(), LOWORD(v155) = 174, OUTLINED_FUNCTION_3_110(), ((sub_1E4205E84() | v117)))
              {
                v153 = &type metadata for ViewModelKeys;
                v154 = &off_1F5D7BCA8;
                v136 = OUTLINED_FUNCTION_0_126(20);
                sub_1E3F9F164(v136);
                if (*(&v156 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v137 = v149;
                    __swift_destroy_boxed_opaque_existential_1(&v151);
                    if (v137)
                    {
                      v153 = &type metadata for ViewModelKeys.Sports;
                      v154 = &off_1F5D7BC68;
                      v138 = OUTLINED_FUNCTION_0_126(17);
                      sub_1E3F9F164(v138);

                      __swift_destroy_boxed_opaque_existential_1(&v151);
                      if (*(&v156 + 1))
                      {
                        if ((swift_dynamicCast() & 1) != 0 && v151)
                        {
                          v153 = &type metadata for ViewModelKeys.Sports;
                          v154 = &off_1F5D7BC68;
                          v139 = OUTLINED_FUNCTION_0_126(19);
                          sub_1E3F9F164(v139);

                          __swift_destroy_boxed_opaque_existential_1(&v151);
                          if (*(&v156 + 1))
                          {
                            if (swift_dynamicCast())
                            {
                              v140 = v152;
                              v148 = v151;
                              goto LABEL_186;
                            }

LABEL_185:
                            v148 = 0;
                            v140 = 0;
LABEL_186:
                            type metadata accessor for SportsBaseballScoreboardViewModel();
                            v144 = sub_1E40BADF8();
                            if (v140)
                            {
                              if (v148 == v144 && v140 == v145)
                              {

LABEL_196:

                                OUTLINED_FUNCTION_10_74();
                                sub_1E40BBCB4();
                                goto LABEL_97;
                              }

                              LODWORD(v148) = sub_1E42079A4();

                              if (v148)
                              {
                                goto LABEL_196;
                              }
                            }

                            else
                            {
                            }

                            type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
                            OUTLINED_FUNCTION_35_0();

                            OUTLINED_FUNCTION_10_74();
                            sub_1E3F90D40();
                            goto LABEL_97;
                          }

LABEL_184:
                          sub_1E329505C(&v155);
                          goto LABEL_185;
                        }

LABEL_183:
                        v155 = 0u;
                        v156 = 0u;
                        goto LABEL_184;
                      }

LABEL_182:
                      sub_1E329505C(&v155);
                      goto LABEL_183;
                    }
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1(&v151);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_6_90();
                }

                v155 = 0u;
                v156 = 0u;
                goto LABEL_182;
              }

LABEL_178:
              type metadata accessor for ViewModel();
              OUTLINED_FUNCTION_35_0();

              v141 = OUTLINED_FUNCTION_10_74();
              return sub_1E39BED80(v141, v142, v143);
            case 241:
              type metadata accessor for SportStatsViewModel();
              OUTLINED_FUNCTION_35_0();

              OUTLINED_FUNCTION_4_107();
              sub_1E374500C(v124, v125, v126);
              goto LABEL_97;
            case 242:
              type metadata accessor for TeamStatsViewModel(0);
              OUTLINED_FUNCTION_35_0();

              OUTLINED_FUNCTION_4_107();
              sub_1E3D725A4();
              goto LABEL_97;
            case 243:
              type metadata accessor for PlayerStatsViewModel();
              OUTLINED_FUNCTION_35_0();

              OUTLINED_FUNCTION_4_107();
              v21 = sub_1E3D6A980(v127, v128, v129);
              goto LABEL_97;
            default:
              if (v20 - 185 < 2)
              {
                if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
                {
                  goto LABEL_89;
                }

                type metadata accessor for ScoreboardViewModel();
                OUTLINED_FUNCTION_35_0();

                OUTLINED_FUNCTION_4_107();
                sub_1E3824528();
              }

              else
              {
                switch(v20)
                {
                  case 0x7Bu:
                    type metadata accessor for CollectionViewModel();
                    OUTLINED_FUNCTION_35_0();

                    v51 = 123;
                    v52 = v78;
                    goto LABEL_60;
                  case 0xCDu:
                    type metadata accessor for PlaybackSongViewModel();
                    OUTLINED_FUNCTION_35_0();

                    OUTLINED_FUNCTION_4_107();
                    v21 = sub_1E4071070(v130, v131, v132);
                    break;
                  case 0xFEu:
                    type metadata accessor for ListLockupWithDetailsViewModel();
                    OUTLINED_FUNCTION_35_0();

                    OUTLINED_FUNCTION_4_107();
                    v21 = sub_1E37BB954(v114, v115, v116);
                    break;
                  default:
                    goto LABEL_43;
                }
              }

              goto LABEL_97;
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v151);
      }

      else
      {
        OUTLINED_FUNCTION_6_90();
      }

      v78 = v148;
      goto LABEL_130;
  }
}

unint64_t sub_1E3A7E090()
{
  result = qword_1ECF3E3F0;
  if (!qword_1ECF3E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3E3F0);
  }

  return result;
}

unint64_t sub_1E3A7E0E4()
{
  result = qword_1EE254C60;
  if (!qword_1EE254C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE254C60);
  }

  return result;
}

uint64_t sub_1E3A7E138(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3A7E180()
{
  result = qword_1EE25D780;
  if (!qword_1EE25D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE25D780);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI15ViewModelResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1E3A7E1F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3A7E230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E3A7E274(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI16ViewModelLiteralO(uint64_t a1)
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

uint64_t sub_1E3A7E2B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3A7E2F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_1E3A7E338(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1E3A7E390(char a1)
{
  v5 = &type metadata for SpringBoardFeature;
  v6 = sub_1E3A7E3EC();
  v4[0] = a1 & 1;
  v2 = sub_1E41FE994();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

unint64_t sub_1E3A7E3EC()
{
  result = qword_1ECF318B8;
  if (!qword_1ECF318B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF318B8);
  }

  return result;
}

unint64_t sub_1E3A7E444()
{
  result = qword_1ECF318C0;
  if (!qword_1ECF318C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF318C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpringBoardFeature(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3A7E5A4(uint64_t a1)
{
  if (![objc_opt_self() vui_defaultBag])
  {

    return 0;
  }

  return a1;
}

void sub_1E3A7E608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF318E8);
  OUTLINED_FUNCTION_17_2(v25);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_71_0();
  v27 = sub_1E41FF974();
  v28 = OUTLINED_FUNCTION_17_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_87_1();
  v29 = sub_1E41FF734();
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  sub_1E3A7E8D4();
  v36 = v24;
  sub_1E41FF724();
  sub_1E41FE9C4();
  sub_1E41FE9B4();
  sub_1E41FF714();
  v37 = [objc_opt_self() currentProcess];
  sub_1E41FF6F4();
  if (_MergedGlobals_193 != -1)
  {
    swift_once();
  }

  v38 = sub_1E41FFAA4();
  __swift_project_value_buffer(v38, qword_1EE28BBB8);
  OUTLINED_FUNCTION_37_1();
  (*(v39 + 16))(v20);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v38);
  sub_1E41FF6E4();
  if (qword_1EE28BBA8 != -1)
  {
    swift_once();
  }

  sub_1E41FF704();
  OUTLINED_FUNCTION_69_8();
  v43 = OUTLINED_FUNCTION_24_4();
  v44(v43);
  sub_1E41FF744();
  (*(v31 + 8))(v35, v29);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A7E8A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E3A7E5A4(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1E3A7E8D4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v242 = v3;
  v246 = sub_1E41FF974();
  OUTLINED_FUNCTION_0_10();
  v245 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_87_1();
  v250 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v247 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF318F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF318F8);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v230 - v15;
  v274 = sub_1E41FFAC4();
  OUTLINED_FUNCTION_0_10();
  v271 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_3();
  v276 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31900);
  v21 = OUTLINED_FUNCTION_8_0(v20);
  v239 = v22;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  v270 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v275 = v27;
  OUTLINED_FUNCTION_138();
  v244 = sub_1E41FF794();
  OUTLINED_FUNCTION_0_10();
  v243 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v30);
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31908);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31910);
  v35 = OUTLINED_FUNCTION_17_2(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v230 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31918);
  OUTLINED_FUNCTION_17_2(v39);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44();
  v267 = v41;
  OUTLINED_FUNCTION_138();
  v269 = sub_1E41FFA24();
  OUTLINED_FUNCTION_0_10();
  v233 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31920);
  OUTLINED_FUNCTION_17_2(v46);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v48);
  v49 = sub_1E41FF7F4();
  OUTLINED_FUNCTION_0_10();
  v263 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_5();
  v268 = v52;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v54);
  sub_1E3D4160C();
  sub_1E38074D0();

  type metadata accessor for ViewModel();
  j___s8VideosUI9ViewModelCMa();
  v55 = sub_1E39C1CF8(46);
  if (sub_1E32AE9B0(v55))
  {
    if ((v55 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_15_44();
      v248 = v221;
    }

    else
    {
      OUTLINED_FUNCTION_9_39();
      if (!v56)
      {
        __break(1u);
        goto LABEL_150;
      }

      v248 = *(v55 + 32);
    }
  }

  else
  {

    v248 = 0;
  }

  j___s8VideosUI9ViewModelCMa();
  v57 = OUTLINED_FUNCTION_131_6();
  v58 = OUTLINED_FUNCTION_91_7(v57);
  if (sub_1E32AE9B0(v58))
  {
    if ((v58 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_15_44();
      v258 = v222;
    }

    else
    {
      OUTLINED_FUNCTION_9_39();
      if (!v59)
      {
        __break(1u);
        goto LABEL_152;
      }

      v258 = *(v58 + 32);
    }
  }

  else
  {

    v258 = 0;
  }

  j___s8VideosUI9ViewModelCMa();
  v60 = OUTLINED_FUNCTION_130_6();
  v61 = OUTLINED_FUNCTION_91_7(v60);
  if (sub_1E32AE9B0(v61))
  {
    if ((v61 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_9_39();
      if (!v62)
      {
        __break(1u);
        goto LABEL_154;
      }

      v257 = *(v61 + 32);

      goto LABEL_17;
    }

LABEL_150:
    OUTLINED_FUNCTION_15_44();
    v257 = v223;
LABEL_17:

    goto LABEL_19;
  }

  v257 = 0;
LABEL_19:
  j___s8VideosUI9ViewModelCMa();
  v63 = OUTLINED_FUNCTION_91_7(45);
  if (sub_1E32AE9B0(v63))
  {
    if ((v63 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_9_39();
      if (!v64)
      {
        __break(1u);
        goto LABEL_156;
      }

      v236 = *(v63 + 32);

      goto LABEL_23;
    }

LABEL_152:
    OUTLINED_FUNCTION_15_44();
    v236 = v224;
LABEL_23:

    goto LABEL_25;
  }

  v236 = 0;
LABEL_25:
  type metadata accessor for CollectionViewModel();
  v65 = sub_1E39C2218();
  if (sub_1E32AE9B0(v65))
  {
    if ((v65 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_9_39();
      if (!v66)
      {
        __break(1u);
        goto LABEL_158;
      }

      v261 = *(v65 + 32);

      goto LABEL_29;
    }

LABEL_154:
    OUTLINED_FUNCTION_15_44();
    v261 = v225;
LABEL_29:

    goto LABEL_31;
  }

  v261 = 0;
LABEL_31:
  j___s8VideosUI9ViewModelCMa();
  v67 = OUTLINED_FUNCTION_91_7(91);
  if (sub_1E32AE9B0(v67))
  {
    if ((v67 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_9_39();
      if (!v68)
      {
        __break(1u);
        goto LABEL_160;
      }

      v259 = *(v67 + 32);

      goto LABEL_35;
    }

LABEL_156:
    OUTLINED_FUNCTION_15_44();
    v259 = v226;
LABEL_35:

    goto LABEL_37;
  }

  v259 = 0;
LABEL_37:
  j___s8VideosUI9ViewModelCMa();
  v69 = OUTLINED_FUNCTION_91_7(13);
  if (sub_1E32AE9B0(v69))
  {
    if ((v69 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_9_39();
      if (!v70)
      {
        __break(1u);
        goto LABEL_162;
      }

      v256 = *(v69 + 32);

      goto LABEL_41;
    }

LABEL_158:
    OUTLINED_FUNCTION_15_44();
    v256 = v227;
LABEL_41:

    goto LABEL_43;
  }

  v256 = 0;
LABEL_43:
  j___s8VideosUI9ViewModelCMa();
  v71 = OUTLINED_FUNCTION_91_7(3);
  if (sub_1E32AE9B0(v71))
  {
    if ((v71 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_9_39();
      if (!v72)
      {
        __break(1u);
        goto LABEL_164;
      }

      v255 = *(v71 + 32);

      goto LABEL_47;
    }

LABEL_160:
    OUTLINED_FUNCTION_15_44();
    v255 = v228;
LABEL_47:

    goto LABEL_49;
  }

  v255 = 0;
LABEL_49:
  j___s8VideosUI9ViewModelCMa();
  v71 = OUTLINED_FUNCTION_91_7(11);
  if (sub_1E32AE9B0(v71))
  {
    if ((v71 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_9_39();
      if (v73)
      {
        v254 = *(v71 + 32);

LABEL_53:

        goto LABEL_55;
      }

LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      OUTLINED_FUNCTION_15_44();
      goto LABEL_73;
    }

LABEL_162:
    OUTLINED_FUNCTION_15_44();
    v254 = v229;
    goto LABEL_53;
  }

  v254 = 0;
LABEL_55:
  j___s8VideosUI9ViewModelCMa();
  v71 = OUTLINED_FUNCTION_91_7(99);
  v74 = sub_1E32AE9B0(v71);
  v272 = v49;
  if (v74)
  {
    if ((v71 & 0xC000000000000001) != 0)
    {
      goto LABEL_146;
    }

    OUTLINED_FUNCTION_9_39();
    if (v75)
    {
      goto LABEL_58;
    }

    goto LABEL_165;
  }

  v77 = (*v2 + 648);
  v78 = *v77;
  v79 = (*v77)(v76);
  if (v79)
  {
    v71 = v79;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v80 = *(v71 + 64);

    if (v80)
    {
      j___s8VideosUI9ViewModelCMa();
      sub_1E39C1CF8(39);
      OUTLINED_FUNCTION_12_1();

      if (sub_1E32AE9B0(v71))
      {
        if ((v71 & 0xC000000000000001) != 0)
        {
          goto LABEL_146;
        }

        OUTLINED_FUNCTION_9_39();
        if (v81)
        {
          goto LABEL_58;
        }

        __break(1u);
      }
    }
  }

  v82 = v78(v79);
  if (!v82)
  {
    goto LABEL_78;
  }

  v71 = v82;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v83 = *(v71 + 64);

  if (!v83)
  {
    goto LABEL_78;
  }

  j___s8VideosUI9ViewModelCMa();
  sub_1E39C1CF8(101);
  OUTLINED_FUNCTION_12_1();

  if (!sub_1E32AE9B0(v71))
  {
LABEL_77:

LABEL_78:
    v252 = 0;
    goto LABEL_79;
  }

  if ((v71 & 0xC000000000000001) != 0)
  {
    goto LABEL_166;
  }

  OUTLINED_FUNCTION_9_39();
  if (!v84)
  {
    __break(1u);
    return;
  }

LABEL_73:

  j___s8VideosUI9ViewModelCMa();
  sub_1E39C1CF8(39);
  OUTLINED_FUNCTION_12_1();

  if (!sub_1E32AE9B0(v71))
  {
    goto LABEL_77;
  }

  if ((v71 & 0xC000000000000001) != 0)
  {
    goto LABEL_146;
  }

  OUTLINED_FUNCTION_9_39();
  if (!v85)
  {
    __break(1u);
    goto LABEL_77;
  }

LABEL_58:
  v252 = *(v71 + 32);

  while (1)
  {

LABEL_79:
    v249 = v10;
    v253 = v16;
    v235 = v0;
    v234 = v2;
    v86 = v261;
    v251 = v38;
    if (!v261)
    {
      break;
    }

    v87 = *(*v261 + 1472);

    v89 = v86;
    v266 = v87(v88);
    v265 = v90;

    v279 = 0;
    v91 = *(*v86 + 1040);

    v91(v92);
    OUTLINED_FUNCTION_31_4();

    v10 = v274;
    v2 = sub_1E32AE9B0(v86);
    v93 = 0;
    v38 = (v86 & 0xC000000000000001);
    v16 = (v86 & 0xFFFFFFFFFFFFFF8);
    v94 = (v263 + 32);
    v273 = MEMORY[0x1E69E7CC0];
    v0 = v264;
    while (1)
    {
      if (v2 == v93)
      {

        goto LABEL_98;
      }

      if (v38)
      {
        v109 = OUTLINED_FUNCTION_32_0();
        v95 = MEMORY[0x1E6911E60](v109);
      }

      else
      {
        if (v93 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_143;
        }

        v95 = *(v89 + 8 * v93 + 32);
      }

      if (__OFADD__(v93, 1))
      {
        break;
      }

      v278[0] = v95;
      sub_1E3A81984(v278, &v279, v266, v265 & 1);

      v96 = OUTLINED_FUNCTION_74_9();
      v97 = v272;
      OUTLINED_FUNCTION_52(v96, v98, v272);
      if (v99)
      {
        sub_1E325F6F0(v0, &qword_1ECF31920);
      }

      else
      {
        v100 = v0;
        v101 = *v94;
        v102 = v262;
        (*v94)(v262, v100, v97);
        v101(v268, v102, v97);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v110 = OUTLINED_FUNCTION_27();
          v273 = sub_1E3A89138(v110, v111, v112, v113, &qword_1ECF31930, &unk_1E42B6970, v114, v115);
        }

        v105 = *(v273 + 16);
        v104 = *(v273 + 24);
        if (v105 >= v104 >> 1)
        {
          v116 = OUTLINED_FUNCTION_35(v104);
          v273 = sub_1E3A89138(v116, v105 + 1, 1, v273, &qword_1ECF31930, &unk_1E42B6970, MEMORY[0x1E69DEF80], MEMORY[0x1E69DEF80]);
        }

        *(v273 + 16) = v105 + 1;
        OUTLINED_FUNCTION_27_34();
        (v101)(v107 + v106 + *(v108 + 72) * v105, v268);
        v10 = v274;
        v0 = v264;
      }

      ++v93;
    }

    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    OUTLINED_FUNCTION_15_44();
    v252 = v220;
  }

  v273 = 0;
  v279 = 0;
  v10 = v274;
LABEL_98:
  if (v259 && (OUTLINED_FUNCTION_8(), v118 = *(v117 + 464), v119 = , (v118)(v119), OUTLINED_FUNCTION_12_1(), , v118))
  {
    v120 = sub_1E32AE9B0(v118);
    v2 = 0;
    v16 = (v118 & 0xC000000000000001);
    v38 = (v118 & 0xFFFFFFFFFFFFFF8);
    v268 = (v233 + 32);
    v272 = MEMORY[0x1E69E7CC0];
    v0 = &unk_1E42B6958;
    while (v120 != v2)
    {
      if (v16)
      {
        MEMORY[0x1E6911E60](v2, v118);
      }

      else
      {
        if (v2 >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_144;
      }

      v10 = v267;
      sub_1E3A83388();

      OUTLINED_FUNCTION_52(v10, 1, v269);
      if (v99)
      {
        sub_1E325F6F0(v10, &qword_1ECF31918);
        v2 = (v2 + 1);
      }

      else
      {
        v121 = *v268;
        v122 = v231;
        v123 = v10;
        v124 = v269;
        (*v268)(v231, v123, v269);
        v125 = v124;
        v10 = v121;
        v121(v232, v122, v125);
        v126 = swift_isUniquelyReferenced_nonNull_native();
        if ((v126 & 1) == 0)
        {
          v132 = OUTLINED_FUNCTION_27();
          v272 = sub_1E3A89138(v132, v133, v134, v135, &qword_1ECF31978, &unk_1E42B69B0, v136, v137);
        }

        v128 = *(v272 + 16);
        v127 = *(v272 + 24);
        v0 = &unk_1E42B6958;
        if (v128 >= v127 >> 1)
        {
          v138 = OUTLINED_FUNCTION_35(v127);
          v272 = sub_1E3A89138(v138, v128 + 1, 1, v272, &qword_1ECF31978, &unk_1E42B69B0, MEMORY[0x1E69DEFB0], MEMORY[0x1E69DEFB0]);
        }

        *(v272 + 16) = v128 + 1;
        OUTLINED_FUNCTION_27_34();
        v10(v130 + v129 + *(v131 + 72) * v128, v232, v269);
        v2 = (v2 + 1);
      }
    }

    v10 = v274;
  }

  else
  {
    v272 = 0;
  }

  v139 = v237;
  sub_1E3A83D80(v252);
  sub_1E41FF814();
  OUTLINED_FUNCTION_96_7();
  sub_1E4148F70(v140, v141, v238, v142, v143);
  v268 = 0;
  sub_1E325F6F0(v139, &qword_1ECF31908);
  v144 = v236;
  if (v236)
  {
    v145 = v236;
  }

  else
  {
    v144 = v248;

    v145 = 0;
  }

  v146 = v270;
  v269 = v145;

  sub_1E3A83D80(v144);

  sub_1E378249C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31928);
  v147 = *(v239 + 72);
  v148 = (*(v239 + 80) + 32) & ~*(v239 + 80);
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_1E4297BD0;
  v267 = v149;
  v150 = v149 + v148;
  OUTLINED_FUNCTION_169();
  sub_1E3A83278(v151, v152, v153, v154);
  OUTLINED_FUNCTION_169();
  sub_1E3A83278(v155, v156, v157, v158);
  OUTLINED_FUNCTION_169();
  sub_1E3A83278(v159, v160, v161, v162);
  v163 = (v271 + 32);
  v164 = MEMORY[0x1E69E7CC0];
  v165 = 3;
  do
  {
    sub_1E378249C();
    sub_1E3782004();
    OUTLINED_FUNCTION_52(v146, 1, v10);
    if (v99)
    {
      v166 = OUTLINED_FUNCTION_16_0();
      sub_1E325F6F0(v166, v167);
    }

    else
    {
      v168 = v146;
      v169 = *v163;
      (*v163)(v276, v168, v10);
      v170 = swift_isUniquelyReferenced_nonNull_native();
      if ((v170 & 1) == 0)
      {
        OUTLINED_FUNCTION_8_75();
        v176 = OUTLINED_FUNCTION_27();
        v164 = sub_1E3A89138(v176, v177, v178, v164, &qword_1ECF31980, &unk_1E42B69B8, v179, v180);
      }

      v172 = *(v164 + 16);
      v171 = *(v164 + 24);
      if (v172 >= v171 >> 1)
      {
        v181 = OUTLINED_FUNCTION_35(v171);
        v164 = sub_1E3A89138(v181, v172 + 1, 1, v164, &qword_1ECF31980, &unk_1E42B69B8, MEMORY[0x1E69DEFC8], MEMORY[0x1E69DEFC8]);
      }

      *(v164 + 16) = v172 + 1;
      OUTLINED_FUNCTION_27_34();
      v175 = v164 + v173 + *(v174 + 72) * v172;
      v10 = v274;
      v169(v175, v276, v274);
      v146 = v270;
    }

    v150 += v147;
    --v165;
  }

  while (v165);
  swift_setDeallocating();
  sub_1E3A890B4();
  OUTLINED_FUNCTION_169();
  sub_1E3A83278(v182, v183, v184, v185);
  OUTLINED_FUNCTION_169();
  sub_1E3A83278(v186, v187, v188, v189);
  sub_1E41FF784();
  v190 = sub_1E39C2DB4();
  v191 = v249;
  v192 = v253;
  v193 = v235;
  if (!v190)
  {
    OUTLINED_FUNCTION_8();
    v195 = (*(v194 + 576))();
    if (v195)
    {
      (*(*v195 + 128))(v195);
      OUTLINED_FUNCTION_12_1();
    }

    else
    {
      v190 = 0;
    }
  }

  v278[0] = v190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
  OUTLINED_FUNCTION_144_0();
  sub_1E41FF6A4();
  v196 = OUTLINED_FUNCTION_0_127();
  v197 = v240;
  sub_1E4148F70(v196, 0, v150, v198, v240);

  v199 = sub_1E41FF994();
  v200 = v197;
  sub_1E4148F70(sub_1E3A83E70, 0, v241, v199, v192);
  sub_1E325F6F0(v197, &qword_1ECF318F0);
  if (v261 && (LOWORD(v278[0]) = v261[49], v277 = 118, sub_1E3741534(), v200 = &qword_1F5D5CE68, (sub_1E4205E84() & 1) != 0))
  {
    OUTLINED_FUNCTION_80_7();
    sub_1E41FF954();
  }

  else
  {
    OUTLINED_FUNCTION_80_7();
    sub_1E41FF964();
  }

  v201 = v247;
  v202 = v246;
  v203 = v245;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_107_0();
  v204(v191);
  (*(v203 + 16))(v193, v200, v202);
  v205 = sub_1E41FFC94();
  v206 = sub_1E42067E4();
  if (os_log_type_enabled(v205, v206))
  {
    v207 = v201;
    v208 = OUTLINED_FUNCTION_6_21();
    v209 = OUTLINED_FUNCTION_100();
    v278[0] = v209;
    *v208 = 136315138;
    v210 = sub_1E3A83F44();
    v212 = v211;
    v213 = OUTLINED_FUNCTION_129_5();
    v214(v213, v202);
    v215 = sub_1E3270FC8(v210, v212, v278);

    *(v208 + 4) = v215;
    _os_log_impl(&dword_1E323F000, v205, v206, "AMSUpsell:: template processed: %s", v208, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v209);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    OUTLINED_FUNCTION_114_2();

    (*(v207 + 8))(v249, v250);
  }

  else
  {

    OUTLINED_FUNCTION_114_2();

    v216 = OUTLINED_FUNCTION_129_5();
    v217(v216, v202);
    v218 = OUTLINED_FUNCTION_33_11();
    v219(v218);
  }

  sub_1E325F6F0(v253, &qword_1ECF318F8);
  (*(v243 + 8))(v260, v244);
  sub_1E325F6F0(v251, &qword_1ECF31910);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A80214()
{
  v0 = sub_1E41FFAA4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v4 = v3 - v2;
  __swift_allocate_value_buffer(v5, qword_1EE28BBB8);
  v6 = OUTLINED_FUNCTION_27_0();
  v8 = __swift_project_value_buffer(v6, v7);
  sub_1E41FFA94();
  sub_1E41E1A64(v4, sub_1E3A80300, v0, v8);
  v9 = OUTLINED_FUNCTION_16_0();
  return v10(v9);
}

uint64_t sub_1E3A80300()
{
  sub_1E4205F14();
  sub_1E41FFA84();
}

uint64_t sub_1E3A80364()
{
  OUTLINED_FUNCTION_24();
  v0[6] = v1;
  v0[7] = v2;
  v3 = sub_1E41FFCB4();
  v0[8] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[9] = v4;
  v0[10] = OUTLINED_FUNCTION_107_1();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF318F0);
  OUTLINED_FUNCTION_17_2(v5);
  v0[13] = OUTLINED_FUNCTION_107_1();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v6 = sub_1E41FF6A4();
  v0[16] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[17] = v7;
  v0[18] = OUTLINED_FUNCTION_107_1();
  v0[19] = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3A804C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_37_27();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_56_17();
  a20 = v22;
  v25 = v22[15];
  v26 = v22[16];
  sub_1E378249C();
  OUTLINED_FUNCTION_52(v25, 1, v26);
  if (v27)
  {
    sub_1E325F6F0(v22[15], &qword_1ECF318F0);
  }

  else
  {
    (*(v22[17] + 32))(v22[19], v22[15], v22[16]);
    sub_1E3280A90(0, &qword_1EE23B0D0);
    v28 = sub_1E41FF684();
    sub_1E3744600(v28);

    v29 = sub_1E3A8101C();
    v22[20] = v29;
    if (v29)
    {
      OUTLINED_FUNCTION_106();
      type metadata accessor for DocumentInteractor();
      v30 = swift_task_alloc();
      v22[21] = v30;
      *v30 = v22;
      OUTLINED_FUNCTION_56_1(v30);
      OUTLINED_FUNCTION_30_38();

      return sub_1E3DE1D10(v31);
    }

    (*(v22[17] + 8))(v22[19], v22[16]);
  }

  v35 = v22[9];
  v34 = v22[10];
  v36 = v22[8];
  v37 = sub_1E324FBDC();
  (*(v35 + 16))(v34, v37, v36);
  sub_1E378249C();
  v38 = sub_1E41FFC94();
  v39 = sub_1E42067F4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v22[16];
    v41 = OUTLINED_FUNCTION_6_21();
    v42 = OUTLINED_FUNCTION_100();
    a10 = v42;
    *v41 = 136315138;
    sub_1E378249C();
    v43 = OUTLINED_FUNCTION_74_9();
    OUTLINED_FUNCTION_52(v43, v44, v40);
    if (v27)
    {
      sub_1E325F6F0(v22[13], &qword_1ECF318F0);
      v49 = 0;
    }

    else
    {
      v49 = sub_1E41FF684();
      v50 = OUTLINED_FUNCTION_33_11();
      v51(v50);
    }

    v52 = v22[14];
    v53 = v22[9];
    a9 = v22[10];
    v54 = v22[8];
    v22[5] = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
    v55 = sub_1E4205F84();
    v57 = v56;
    sub_1E325F6F0(v52, &qword_1ECF318F0);
    v58 = sub_1E3270FC8(v55, v57, &a10);

    *(v41 + 4) = v58;
    OUTLINED_FUNCTION_137_4(&dword_1E323F000, v59, v60, "AMSUpsell::navigation: invalid data: %s");
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    (*(v53 + 8))(a9, v54);
  }

  else
  {
    v45 = v22[14];
    v47 = v22[9];
    v46 = v22[10];
    v48 = v22[8];

    sub_1E325F6F0(v45, &qword_1ECF318F0);
    (*(v47 + 8))(v46, v48);
  }

  sub_1E3781F38();
  swift_allocError();
  *v61 = xmmword_1E42B6850;
  *(v61 + 16) = 4;
  swift_willThrow();
  OUTLINED_FUNCTION_67_12();

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_30_38();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1E3A808E8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v4;
  *(v2 + 184) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3A809EC()
{
  v50 = v0;
  v1 = v0[22];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v1 + 56);
  v0[24] = v2;
  if (v2)
  {
    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[9];

    v6 = sub_1E324FBDC();
    (*(v5 + 16))(v3, v6, v4);
    v7 = sub_1E41FFC94();
    v8 = sub_1E42067E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1E323F000, v7, v8, "AMSUpsell::navigation: successfully fetched upsell template for new page", v9, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v10 = OUTLINED_FUNCTION_27_0();
    v11(v10);
    sub_1E4206434();
    v0[25] = sub_1E4206424();
    v13 = sub_1E42063B4();

    return MEMORY[0x1EEE6DFA0](sub_1E3A80DF4, v13, v12);
  }

  else
  {
    v14 = v0[12];
    v15 = v0[8];
    v16 = v0[9];
    v17 = sub_1E324FBDC();
    (*(v16 + 16))(v14, v17, v15);
    v18 = OUTLINED_FUNCTION_32_0();
    v19(v18);
    v20 = sub_1E41FFC94();
    v21 = sub_1E42067F4();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[17];
    v23 = v0[18];
    v25 = v0[12];
    v26 = v0[8];
    v27 = v0[9];
    if (v22)
    {
      v45 = v0[16];
      v28 = OUTLINED_FUNCTION_6_21();
      v46 = OUTLINED_FUNCTION_100();
      v49 = v46;
      *v28 = 136315138;
      sub_1E41FF684();
      v47 = v26;
      v48 = v25;
      v29 = sub_1E4205C74();
      v31 = v30;

      v44 = v21;
      v32 = *(v24 + 8);
      v32(v23, v45);
      v33 = v32;
      v34 = sub_1E3270FC8(v29, v31, &v49);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_1E323F000, v20, v44, "AMSUpsell::navigation: missing template in document with context %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v35 = OUTLINED_FUNCTION_14_82();
      MEMORY[0x1E69143B0](v35);

      (*(v27 + 8))(v48, v47);
    }

    else
    {

      v36 = *(v24 + 8);
      v37 = OUTLINED_FUNCTION_33_11();
      v36(v37);
      v33 = v36;
      (*(v27 + 8))(v25, v26);
    }

    v38 = v0[20];
    sub_1E3781F38();
    v39 = swift_allocError();
    OUTLINED_FUNCTION_90_7(v39, v40);

    v41 = OUTLINED_FUNCTION_24_4();
    v33(v41);
    OUTLINED_FUNCTION_67_12();

    OUTLINED_FUNCTION_54();

    return v42();
  }
}

uint64_t sub_1E3A80DF4()
{
  OUTLINED_FUNCTION_24();

  sub_1E3A7E8D4();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1E3A80E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_27();
  OUTLINED_FUNCTION_56_17();
  v15 = v14[19];
  v16 = v14[20];
  v17 = v14[17];
  v18 = v14[16];
  v28 = v14[12];
  v29 = v14[11];
  v30 = v14[10];

  (*(v17 + 8))(v15, v18);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_30_38();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, a12, a13, a14);
}

uint64_t sub_1E3A80F50()
{
  v1 = OUTLINED_FUNCTION_16_0();
  v2(v1);
  OUTLINED_FUNCTION_67_12();

  OUTLINED_FUNCTION_54();

  return v3();
}

id sub_1E3A8101C()
{
  v0 = sub_1E4205C44();

  v1 = [swift_getObjCClassFromMetadata() documentDataSourceWithDictionary_];

  return v1;
}

uint64_t sub_1E3A8109C()
{
  sub_1E41FFA74();
  swift_allocObject();
  result = sub_1E41FFA54();
  qword_1EE28BBB0 = result;
  return result;
}

void sub_1E3A810F4()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_106();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v74 = v5;
  v75 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF318F0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_87_1();
  v76 = sub_1E41FF8C4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_126_2();
  v16 = sub_1E41FFA64();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_107_0();
  v21(v20, v0, v16);
  v22 = OUTLINED_FUNCTION_123_0();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x1E69DEFB8] || v24 != *MEMORY[0x1E69DEFC0])
  {
    v47 = OUTLINED_FUNCTION_123_0();
LABEL_8:
    v48(v47);
LABEL_9:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v25 = OUTLINED_FUNCTION_123_0();
  v26(v25);
  v27 = v13;
  v28 = OUTLINED_FUNCTION_21_9();
  v29 = v76;
  v30(v28);
  sub_1E41FF8B4();
  v31 = sub_1E41FF6A4();
  v32 = OUTLINED_FUNCTION_74_9();
  OUTLINED_FUNCTION_52(v32, v33, v31);
  if (v34)
  {
    sub_1E325F6F0(v4, &qword_1ECF318F0);
    sub_1E324FBDC();
    v35 = v74;
    v36 = v75;
    OUTLINED_FUNCTION_69_8();
    v37(v2);
    OUTLINED_FUNCTION_107_0();
    v38(v3, v1, v29);
    v39 = sub_1E41FFC94();
    v40 = sub_1E42067E4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_6_21();
      v42 = OUTLINED_FUNCTION_160();
      *v41 = 138412290;
      v43 = sub_1E41FF8A4();
      v44 = *(v27 + 8);
      v45 = v3;
      v46 = v76;
      v44(v45, v76);
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&dword_1E323F000, v39, v40, "AMSUpsell::purchase result: missing data: %@", v41, 0xCu);
      sub_1E325F6F0(v42, &unk_1ECF28E30);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      (*(v75 + 8))(v2, v74);
      v44(v1, v46);
    }

    else
    {

      v61 = *(v27 + 8);
      v61(v3, v29);
      (*(v36 + 8))(v2, v35);
      v62 = OUTLINED_FUNCTION_21_9();
      (v61)(v62);
    }

    goto LABEL_9;
  }

  v49 = sub_1E41FF684();
  OUTLINED_FUNCTION_37_1();
  (*(v50 + 8))(v4, v31);
  sub_1E3280A90(0, &qword_1ECF31090);
  v51 = sub_1E3744600(v49);
  sub_1E3280A90(0, &unk_1ECF3FA50);
  v52 = sub_1E3A81730();
  v53 = sub_1E3A817BC(v51, v52);
  v54 = v53;
  if (!v53)
  {
    v63 = 0;
LABEL_17:

    sub_1E324FBDC();
    v64 = v74;
    v65 = v75;
    OUTLINED_FUNCTION_69_8();
    v66(v9);
    v67 = v63;
    v68 = sub_1E41FFC94();
    v69 = sub_1E42067E4();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = OUTLINED_FUNCTION_6_21();
      v71 = OUTLINED_FUNCTION_160();
      *v70 = 138412290;
      *(v70 + 4) = v67;
      *v71 = v54;
      v72 = v67;
      _os_log_impl(&dword_1E323F000, v68, v69, "AMSUpsell::purchase result: action not handled: %@", v70, 0xCu);
      sub_1E325F6F0(v71, &unk_1ECF28E30);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v65 = v75;
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    (*(v65 + 8))(v9, v64);
    v47 = OUTLINED_FUNCTION_21_9();
    goto LABEL_8;
  }

  objc_opt_self();
  v55 = swift_dynamicCastObjCClass();
  if (!v55)
  {
    v63 = v54;
    goto LABEL_17;
  }

  sub_1E39A4DDC(v55, &selRef_sportsTeamID);
  if (v56)
  {

    v57 = OUTLINED_FUNCTION_67_0();
    sub_1E3A81848(v57, v58);

    v59 = OUTLINED_FUNCTION_21_9();
    v60(v59);
    goto LABEL_9;
  }

  __break(1u);
}

id sub_1E3A81730()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 appController];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 appContext];

  return v2;
}

id sub_1E3A817BC(uint64_t a1, void *a2)
{
  v3 = sub_1E4205C44();

  v4 = [swift_getObjCClassFromMetadata() actionWithDictionary:v3 appContext:a2];

  return v4;
}

uint64_t sub_1E3A81848(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_71_0();
  sub_1E4206474();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_1E4206434();

  v11 = sub_1E4206424();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;
  v12[5] = a2;
  sub_1E376FE58(0, 0, v2, &unk_1E42B6868, v12);
}

uint64_t sub_1E3A81934@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CollectionViewModel();
  OUTLINED_FUNCTION_20_2();
  result = swift_dynamicCastClass();
  v3 = result;
  if (result)
  {
  }

  *a1 = v3;
  return result;
}

void sub_1E3A81984(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v99) = a4;
  v100 = a3;
  OUTLINED_FUNCTION_155();
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF318F0);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v87 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31900);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v94 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31938);
  OUTLINED_FUNCTION_17_2(v21);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_71_0();
  v102 = sub_1E41FF7C4();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_5();
  v97 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  v96 = v28;
  v29 = *v5;
  v30 = *(*v29 + 872);
  v98 = v29;
  v31 = v30();
  if (v31)
  {
    v32 = v31;
    v88 = v15;
    v89 = v9;
    v87[1] = v8;
    v101 = v4;
    v92 = v6;
    v93 = v11;
    v33 = sub_1E32AE9B0(v31);
    v34 = 0;
    v11 = v32 & 0xC000000000000001;
    v35 = v99 ^ 1;
    v95 = (v24 + 32);
    v99 = MEMORY[0x1E69E7CC0];
    v91 = v24;
    while (v33 != v34)
    {
      if (v11)
      {
        v24 = MEMORY[0x1E6911E60](v34, v32);
      }

      else
      {
        if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v24 = *(v32 + 8 * v34 + 32);
      }

      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        do
        {
          __break(1u);
LABEL_46:
          v84 = OUTLINED_FUNCTION_21_17();
          MEMORY[0x1E6911E60](v84);
LABEL_26:

LABEL_27:
          v57 = (v24)(v53);
          if (v57)
          {
            type metadata accessor for ViewModel();
            j___s8VideosUI9ViewModelCMa();
            v58 = OUTLINED_FUNCTION_130_6();
            sub_1E39C1CF8(v58);
            OUTLINED_FUNCTION_31_4();

            if (sub_1E32AE9B0(v57))
            {
              if ((v57 & 0xC000000000000001) != 0)
              {
                v85 = OUTLINED_FUNCTION_21_17();
                MEMORY[0x1E6911E60](v85);
              }

              else
              {
                OUTLINED_FUNCTION_34_0();
                if (!v59)
                {
                  goto LABEL_50;
                }
              }
            }
          }

          OUTLINED_FUNCTION_8();
          if ((*(v60 + 928))())
          {
            type metadata accessor for TextViewModel();
            v61 = sub_1E39C2218();

            if (sub_1E32AE9B0(v61))
            {
              if ((v61 & 0xC000000000000001) != 0)
              {
                v86 = OUTLINED_FUNCTION_21_17();
                MEMORY[0x1E6911E60](v86);
              }

              else
              {
                OUTLINED_FUNCTION_34_0();
                if (!v62)
                {
                  goto LABEL_51;
                }
              }
            }
          }

          OUTLINED_FUNCTION_169();
          sub_1E3A83278(v63, v64, v65, v66);

          OUTLINED_FUNCTION_169();
          sub_1E3A83278(v67, v68, v69, v70);

          v71 = sub_1E41FF6A4();
          v72 = v88;
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v73, v74, v75, v71);

          sub_1E41FF7D4();
          OUTLINED_FUNCTION_169();
          sub_1E3A83278(v76, v77, v78, v79);
          sub_1E41FF7E4();
          v24 = sub_1E39C2DB4();
          v104 = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
          v80 = OUTLINED_FUNCTION_0_127();
          sub_1E4148F70(v80, 0, v81, v71, v72);

          sub_1E41FF7A4();

          v82 = *(v35 + 16);
        }

        while (__OFADD__(*v101, v82));
        v56 = 0;
        *v101 += v82;
        goto LABEL_41;
      }

      if (__OFADD__(*v101, v34))
      {
        goto LABEL_44;
      }

      sub_1E3A821BC();

      if (__swift_getEnumTagSinglePayload(v7, 1, v102) == 1)
      {
        sub_1E325F6F0(v7, &qword_1ECF31938);
        ++v34;
      }

      else
      {
        v36 = *v95;
        (*v95)(v96, v7, v102);
        v90 = v36;
        v36(v97, v96, v102);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = OUTLINED_FUNCTION_27();
          v99 = sub_1E3A89138(v41, v42, v43, v44, &qword_1ECF31950, &unk_1E42B6988, v45, v46);
        }

        v24 = *(v99 + 16);
        v37 = *(v99 + 24);
        if (v24 >= v37 >> 1)
        {
          v47 = OUTLINED_FUNCTION_35(v37);
          v99 = sub_1E3A89138(v47, v24 + 1, 1, v99, &qword_1ECF31950, &unk_1E42B6988, MEMORY[0x1E69DEF78], MEMORY[0x1E69DEF78]);
        }

        *(v99 + 16) = v24 + 1;
        OUTLINED_FUNCTION_27_34();
        v90(v39 + v38 + *(v40 + 72) * v24, v97, v102);
        ++v34;
      }
    }

    v104 = v99;
    v48 = OUTLINED_FUNCTION_32_0();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v48);
    OUTLINED_FUNCTION_21_1();
    sub_1E328FCF4(v50, v51);
    sub_1E38D23F0(v49, &v103);

    v35 = v103;
    if (!v103)
    {
      v56 = 1;
      v11 = v93;
      goto LABEL_41;
    }

    OUTLINED_FUNCTION_8();
    v52 += 113;
    v24 = *v52;
    v53 = (*v52)();
    v11 = v93;
    if (!v53)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_144_0();
    type metadata accessor for ViewModel();
    j___s8VideosUI9ViewModelCMa();
    v54 = OUTLINED_FUNCTION_131_6();
    sub_1E39C1CF8(v54);
    OUTLINED_FUNCTION_31_4();

    if (!sub_1E32AE9B0(v49))
    {
      goto LABEL_26;
    }

    if ((v49 & 0xC000000000000001) != 0)
    {
      goto LABEL_46;
    }

    OUTLINED_FUNCTION_34_0();
    if (v55)
    {

      goto LABEL_26;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {
    v56 = 1;
LABEL_41:
    v83 = sub_1E41FF7F4();
    __swift_storeEnumTagSinglePayload(v11, v56, 1, v83);
  }
}

void sub_1E3A821BC()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  v216 = v8;
  v210 = sub_1E41FFAC4();
  OUTLINED_FUNCTION_0_10();
  v209 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31958);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v188 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31900);
  v17 = OUTLINED_FUNCTION_8_0(v16);
  v205 = v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v188 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  v215 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31908);
  OUTLINED_FUNCTION_17_2(v29);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v214 = v31;
  OUTLINED_FUNCTION_138();
  v32 = sub_1E41FF9E4();
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_3();
  v212 = v34;
  OUTLINED_FUNCTION_138();
  v35 = sub_1E41FFA04();
  OUTLINED_FUNCTION_0_10();
  v208 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF318F0);
  v40 = OUTLINED_FUNCTION_17_2(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_6();
  v211 = v42;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_6();
  v218 = v44;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25_3();
  v217 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31960);
  v48 = OUTLINED_FUNCTION_17_2(v47);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_5();
  v213 = v49;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_25_3();
  v219 = v52;
  if (v7)
  {
    v199 = v35;
    v200 = v23;
    v201 = v15;
    v53 = *(*v7 + 488);

    v55 = v53(v54);
    if (v55)
    {
      v56 = v55;
      v204 = v1;
      v197 = v3;
      v198 = v0;
      sub_1E41FF844();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
      v61 = sub_1E41FF6A4();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v61);
      v68 = sub_1E373E010(59, v56);
      v202 = v2;
      v69 = v56;
      v203 = v7;
      if (!v68)
      {
        v81 = sub_1E39C2DB4();
        if (!v81)
        {
          OUTLINED_FUNCTION_45_27();
          v191 = 0;
          v107 = 0;
          OUTLINED_FUNCTION_117_5();
LABEL_47:
          if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
          {
            sub_1E41FF9C4();
          }

          else
          {
            sub_1E41FF9D4();
          }

          sub_1E378249C();
          v126 = sub_1E373E010(39, v69);
          sub_1E3A83D80(v126);

          sub_1E373E010(36, v69);
          OUTLINED_FUNCTION_169();
          sub_1E3A83278(v127, v128, v129, v130);

          if (v196)
          {
            v222 = v190;
            v223 = v196;
            sub_1E37614CC();
            sub_1E38D2484(sub_1E3A8983C, v1, v61);

            if (v107)
            {
LABEL_53:
              v222 = v191;
              v223 = v107;
              sub_1E37614CC();
              OUTLINED_FUNCTION_96_7();
              sub_1E38D2484(v131, v1, v132);

LABEL_56:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31928);
              v139 = (*(v205 + 80) + 32) & ~*(v205 + 80);
              *(swift_allocObject() + 16) = xmmword_1E4297BE0;
              sub_1E373E010(4, v69);
              OUTLINED_FUNCTION_169();
              sub_1E3A83278(v140, v141, v142, v143);

              OUTLINED_FUNCTION_127_5();
              sub_1E378249C();
              OUTLINED_FUNCTION_127_5();
              sub_1E3782004();
              OUTLINED_FUNCTION_52(v139, 1, v1);
              if (v144)
              {
                sub_1E325F6F0(v139, &qword_1ECF31900);
              }

              else
              {
                v145 = *(v209 + 32);
                v145(v207, v139, v1);
                v146 = MEMORY[0x1E69E7CC0];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  OUTLINED_FUNCTION_8_75();
                  v175 = OUTLINED_FUNCTION_27();
                  v146 = sub_1E3A89138(v175, v176, v177, v146, v178, v179, v180, v181);
                }

                v149 = *(v146 + 16);
                v148 = *(v146 + 24);
                if (v149 >= v148 >> 1)
                {
                  OUTLINED_FUNCTION_35(v148);
                  OUTLINED_FUNCTION_8_75();
                  v146 = sub_1E3A89138(v182, v149 + 1, 1, v146, v183, v184, v185, MEMORY[0x1E69DEFC8]);
                }

                *(v146 + 16) = v149 + 1;
                OUTLINED_FUNCTION_27_34();
                v145(v146 + v150 + *(v151 + 72) * v149, v207, v210);
              }

              swift_setDeallocating();
              sub_1E3A890B4();
              sub_1E373E010(14, v69);
              OUTLINED_FUNCTION_169();
              sub_1E3A83278(v152, v153, v154, v155);

              v156 = v218;
              sub_1E378249C();
              v157 = v217;
              sub_1E378249C();
              sub_1E41FF9A4();
              sub_1E41FF9B4();
              OUTLINED_FUNCTION_114();
              __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
              sub_1E373E010(15, v69);
              OUTLINED_FUNCTION_169();
              sub_1E3A83278(v162, v163, v164, v165);

              sub_1E373E010(23, v69);

              OUTLINED_FUNCTION_169();
              sub_1E3A83278(v166, v167, v168, v169);

              v170 = v206;
              sub_1E41FF9F4();
              sub_1E41FF7B4();

              (*(v208 + 8))(v170, v199);
              sub_1E325F6F0(v156, &qword_1ECF318F0);
              sub_1E325F6F0(v157, &qword_1ECF318F0);
              sub_1E325F6F0(v219, &qword_1ECF31960);
              sub_1E41FF7C4();
              OUTLINED_FUNCTION_119_2();
              OUTLINED_FUNCTION_114();
              __swift_storeEnumTagSinglePayload(v171, v172, v173, v174);
              OUTLINED_FUNCTION_25_2();
              return;
            }
          }

          else
          {
            v133 = OUTLINED_FUNCTION_13_80();
            __swift_storeEnumTagSinglePayload(v133, v134, v135, v1);
            if (v107)
            {
              goto LABEL_53;
            }
          }

          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v136, v137, v138, v1);
          goto LABEL_56;
        }

        v82 = v81;
        v195 = v61;
        v224 = &qword_1F5D5CE68;
        v225 = &off_1F5D5C708;
        LOWORD(v222) = 23;
        OUTLINED_FUNCTION_136_1();
        if (v227)
        {
          v83 = OUTLINED_FUNCTION_138_5();
          v84 = v220;
          if (!v83)
          {
            v84 = 0;
          }

          v191 = v84;
          if (v83)
          {
            v85 = v221;
          }

          else
          {
            v85 = 0;
          }

          v192 = v85;
          __swift_destroy_boxed_opaque_existential_1(&v222);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v222);
          sub_1E325F6F0(v226, &unk_1ECF296E0);
          v191 = 0;
          v192 = 0;
        }

        v224 = &qword_1F5D5CE68;
        v225 = &off_1F5D5C708;
        LOWORD(v222) = 15;
        OUTLINED_FUNCTION_136_1();
        HIDWORD(v194) = v5;
        v193 = v56;
        if (v227)
        {
          v108 = OUTLINED_FUNCTION_138_5();
          v109 = v220;
          if (!v108)
          {
            v109 = 0;
          }

          v190 = v109;
          if (v108)
          {
            v110 = v221;
          }

          else
          {
            v110 = 0;
          }

          v196 = v110;
          __swift_destroy_boxed_opaque_existential_1(&v222);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v222);
          sub_1E325F6F0(v226, &unk_1ECF296E0);
          OUTLINED_FUNCTION_45_27();
        }

        v224 = &type metadata for ViewModelKeys;
        v225 = &off_1F5D7BCA8;
        LOBYTE(v222) = 15;
        sub_1E39BD1A0(&v222, v82);
        OUTLINED_FUNCTION_12_1();

        __swift_destroy_boxed_opaque_existential_1(&v222);
        v111 = OUTLINED_FUNCTION_114_0();
        sub_1E3A84D3C(v111, v112, v113, v114, v115, v116, v117, v118, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);

        OUTLINED_FUNCTION_21_1();
        sub_1E325F6F0(v119, v120);
        sub_1E3782004();
        v222 = sub_1E39C2DB4();
        v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
        v61 = sub_1E3A86B7C;
        v1 = v7;
        v121 = v211;
        OUTLINED_FUNCTION_139_3(sub_1E3A86B7C, 0, v189, v211);
        v122 = OUTLINED_FUNCTION_210();
        sub_1E325F6F0(v122, v123);

        OUTLINED_FUNCTION_78_0();
        sub_1E3782004();
        v222 = sub_1E39C2DB4();
        sub_1E4148F70(sub_1E3A86B7C, 0, v189, v56, v121);
        v124 = OUTLINED_FUNCTION_210();
        sub_1E325F6F0(v124, v125);

LABEL_46:
        OUTLINED_FUNCTION_78_0();
        sub_1E3782004();
        OUTLINED_FUNCTION_117_5();
        v69 = v193;
        v107 = v192;
        goto LABEL_47;
      }

      v1 = v68;
      v195 = v61;
      type metadata accessor for ViewModel();
      j___s8VideosUI9ViewModelCMa();
      v70 = OUTLINED_FUNCTION_131_6();
      v71 = sub_1E39C1CF8(v70);
      if (sub_1E32AE9B0(v71))
      {
        if ((v71 & 0xC000000000000001) != 0)
        {
          v186 = OUTLINED_FUNCTION_21_17();
          v73 = MEMORY[0x1E6911E60](v186);
        }

        else
        {
          OUTLINED_FUNCTION_34_0();
          if (!v72)
          {
            __break(1u);
            goto LABEL_68;
          }

          v73 = *(v71 + 32);
        }

        if (*v73 == _TtC8VideosUI13TextViewModel)
        {
          v74 = sub_1E3C27024();
          v192 = v75;

LABEL_25:
          j___s8VideosUI9ViewModelCMa();
          v86 = OUTLINED_FUNCTION_130_6();
          v87 = sub_1E39C1CF8(v86);
          v88 = sub_1E32AE9B0(v87);
          HIDWORD(v194) = v5;
          v193 = v56;
          v191 = v74;
          if (!v88)
          {

            goto LABEL_33;
          }

          if ((v87 & 0xC000000000000001) != 0)
          {
            v187 = OUTLINED_FUNCTION_21_17();
            v90 = MEMORY[0x1E6911E60](v187);
            goto LABEL_29;
          }

          OUTLINED_FUNCTION_34_0();
          if (v89)
          {
            v90 = *(v87 + 32);

LABEL_29:

            if (*v90 == _TtC8VideosUI13TextViewModel)
            {
              v190 = sub_1E3C27024();
              v196 = v91;

LABEL_34:
              v92 = sub_1E39BE4D0();
              sub_1E3A84D3C(v92, v7, v93, v94, v95, v96, v97, v98, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);

              v99 = OUTLINED_FUNCTION_32_0();
              sub_1E325F6F0(v99, v100);
              OUTLINED_FUNCTION_21_1();
              sub_1E3782004();
              v222 = sub_1E39C2DB4();
              v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
              v102 = v211;
              OUTLINED_FUNCTION_139_3(sub_1E3A86B7C, 0, v101, v211);
              v103 = OUTLINED_FUNCTION_210();
              sub_1E325F6F0(v103, v104);

              OUTLINED_FUNCTION_78_0();
              sub_1E3782004();
              v61 = sub_1E39C2DB4();
              v222 = v61;
              sub_1E4148F70(sub_1E3A86B7C, 0, v101, v56, v102);

              v105 = OUTLINED_FUNCTION_210();
              sub_1E325F6F0(v105, v106);

              goto LABEL_46;
            }

LABEL_33:
            OUTLINED_FUNCTION_45_27();
            goto LABEL_34;
          }

LABEL_68:
          __break(1u);
          return;
        }
      }

      else
      {
      }

      v74 = 0;
      v192 = 0;
      goto LABEL_25;
    }
  }

  sub_1E41FF7C4();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
}

uint64_t sub_1E3A83214@<X0>(__objc2_class **a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1 == _TtC8VideosUI13TextViewModel)
  {
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1E3A83278@<X0>(__objc2_class **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  if (a1)
  {
    if (*a1 == _TtC8VideosUI13TextViewModel)
    {
    }

    else
    {
      v6 = 0;
    }
  }

  v10[5] = v6;
  MEMORY[0x1EEE9AC00](a1);
  v10[2] = a2;
  v10[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088);
  OUTLINED_FUNCTION_144_0();
  v8 = sub_1E41FFAC4();
  sub_1E4148F70(sub_1E3A896A0, v10, a2, v8, a4);
}

void sub_1E3A83388()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v123 = v6;
  v124 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E41FF6B4();
  OUTLINED_FUNCTION_0_10();
  v115 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_3();
  v114 = v13;
  OUTLINED_FUNCTION_138();
  v14 = sub_1E41FF6D4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_3();
  v113 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF318F0);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v112 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  v118 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31900);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_5();
  v111 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_6();
  v120 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v105 - v30;
  v122 = sub_1E41FFAC4();
  OUTLINED_FUNCTION_0_10();
  v119 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_25_3();
  v121 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31960);
  OUTLINED_FUNCTION_17_2(v36);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v105 - v38;
  v40 = sub_1E41FF844();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_25_3();
  if (!v2)
  {
    sub_1E41FFA24();
    OUTLINED_FUNCTION_13_80();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    return;
  }

  v116 = v43;
  v105 = v0;
  v109 = v44;
  v106 = v16;
  v107 = v10;
  v45 = type metadata accessor for ViewModel();

  j___s8VideosUI9ViewModelCMa();
  v46 = OUTLINED_FUNCTION_131_6();
  v47 = sub_1E39C1CF8(v46);
  v48 = sub_1E32AE9B0(v47);
  v117 = v4;
  v108 = v14;
  if (v48)
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      v104 = OUTLINED_FUNCTION_21_17();
      v125 = MEMORY[0x1E6911E60](v104);
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v49)
      {
        __break(1u);
LABEL_33:
        MEMORY[0x1E6911E60](0, v45);
        goto LABEL_25;
      }

      v125 = *(v47 + 32);
    }
  }

  else
  {

    v125 = 0;
  }

  v126[3] = &unk_1F5D5DAC8;
  v126[4] = &off_1F5D5C998;
  LOBYTE(v126[0]) = 1;
  v55 = sub_1E39C29A4(v126);
  v57 = v56;
  __swift_destroy_boxed_opaque_existential_1(v126);
  v58 = sub_1E39BE4D0();
  sub_1E3A84D3C(v58, v2, v59, v60, v61, v62, v63, v64, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);

  OUTLINED_FUNCTION_52(v39, 1, v40);
  if (v72)
  {

    sub_1E325F6F0(v39, &qword_1ECF31960);
LABEL_17:
    sub_1E324FBDC();
    v74 = v123;
    v73 = v124;
    OUTLINED_FUNCTION_69_8();
    v75(v9);

    v76 = sub_1E41FFC94();
    v77 = sub_1E42067F4();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = OUTLINED_FUNCTION_6_21();
      v79 = OUTLINED_FUNCTION_100();
      v126[0] = v79;
      *v78 = 136315138;
      v80 = (*(*v2 + 376))();
      v82 = sub_1E3270FC8(v80, v81, v126);

      *(v78 + 4) = v82;
      OUTLINED_FUNCTION_137_4(&dword_1E323F000, v83, v84, "AMSUpsell: invalid button %s");
      __swift_destroy_boxed_opaque_existential_1(v79);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    else
    {
    }

    (*(v74 + 8))(v9, v73);
    sub_1E41FFA24();
    v85 = OUTLINED_FUNCTION_119_2();
    v87 = 1;
LABEL_30:
    __swift_storeEnumTagSinglePayload(v85, v87, 1, v86);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v65 = v9;
  v66 = v109;
  v67 = v116;
  v68 = OUTLINED_FUNCTION_123_0();
  v69(v68);
  sub_1E3A83278(v125, v55, v57, v31);

  v70 = OUTLINED_FUNCTION_74_9();
  v4 = v122;
  OUTLINED_FUNCTION_52(v70, v71, v122);
  if (v72)
  {
    (*(v66 + 8))(v67, v40);
    sub_1E325F6F0(v31, &qword_1ECF31900);
    v9 = v65;
    goto LABEL_17;
  }

  (*(v119 + 32))(v121, v31, v4);
  j___s8VideosUI9ViewModelCMa();
  v88 = OUTLINED_FUNCTION_130_6();
  v45 = sub_1E39C1CF8(v88);
  if (!sub_1E32AE9B0(v45))
  {
    goto LABEL_25;
  }

  if ((v45 & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_25:

    OUTLINED_FUNCTION_169();
    sub_1E3A83278(v89, v90, v91, v92);

    v93 = sub_1E39C2DB4();
    if (!v93)
    {
      v94 = (*(*v2 + 576))();
      if (v94)
      {
        v93 = (*(*v94 + 176))(v94);
      }

      else
      {
        v93 = 0;
      }
    }

    v126[0] = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
    OUTLINED_FUNCTION_118();
    sub_1E41FF6A4();
    OUTLINED_FUNCTION_0_127();
    OUTLINED_FUNCTION_96_7();
    sub_1E4148F70(v95, v96, v45, v97, v98);

    v99 = v119;
    (*(v119 + 16))(v110, v121, v4);
    v100 = v109;
    OUTLINED_FUNCTION_107_0();
    v101(v105, v116, v40);
    sub_1E378249C();
    sub_1E378249C();
    (*(v115 + 104))(v114, *MEMORY[0x1E69DEF60], v107);
    v102 = v113;
    sub_1E41FF6C4();
    v103 = v117;
    sub_1E41FFA14();

    (*(v106 + 8))(v102, v108);
    sub_1E325F6F0(v118, &qword_1ECF318F0);
    sub_1E325F6F0(v120, &qword_1ECF31900);
    (*(v99 + 8))(v121, v122);
    (*(v100 + 8))(v116, v40);
    v86 = sub_1E41FFA24();
    v85 = v103;
    v87 = 0;
    goto LABEL_30;
  }

  __break(1u);
}

uint64_t sub_1E3A83D80(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_20_2();
    if (swift_dynamicCastClass())
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31990);
  OUTLINED_FUNCTION_118();
  sub_1E41FF674();
  OUTLINED_FUNCTION_104_4();
  sub_1E4148F70(v1, v2, v3, v4, v5);
}

uint64_t sub_1E3A83E30()
{
  sub_1E41FF804();
  sub_1E41FF814();
  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_114();
  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1E3A83E70(uint64_t a1)
{
  sub_1E41FF6A4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  (*(v5 + 16))(v4 - v3, a1);
  sub_1E41FF984();
  sub_1E41FF994();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_114();
  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1E3A83F44()
{
  v31 = *MEMORY[0x1E69E9840];
  v0 = sub_1E4205F64();
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  sub_1E41FDE54();
  swift_allocObject();
  sub_1E41FDE44();
  sub_1E41FF974();
  sub_1E3A897F8(&qword_1ECF31988, MEMORY[0x1E69DEFA0]);
  OUTLINED_FUNCTION_67_0();
  sub_1E41FDE34();

  v3 = objc_opt_self();
  OUTLINED_FUNCTION_78_0();
  v4 = sub_1E41FE454();
  v27[0] = 0;
  v5 = [v3 JSONObjectWithData:v4 options:1 error:v27];

  v6 = v27[0];
  if (v5)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E329504C(v28, &v29);
    __swift_project_boxed_opaque_existential_1(&v29, v30);
    v7 = sub_1E4207994();
    *&v28[0] = 0;
    v8 = [v3 dataWithJSONObject:v7 options:0 error:v28];
    swift_unknownObjectRelease();
    v9 = *&v28[0];
    if (v8)
    {
      v10 = sub_1E41FE464();
      v12 = v11;

      *&v28[0] = v10;
      *(&v28[0] + 1) = v12;
      sub_1E4205F54();
      sub_1E3A0D380();
      sub_1E4205F34();
      v14 = v13;
      v15 = OUTLINED_FUNCTION_78_0();
      sub_1E38DCCB0(v15, v16);
      __swift_destroy_boxed_opaque_existential_1(&v29);
      v17 = OUTLINED_FUNCTION_24_4();
      sub_1E38DCCB0(v17, v18);
      if (!v14)
      {
        OUTLINED_FUNCTION_21_53();
      }
    }

    else
    {
      v23 = v9;
      OUTLINED_FUNCTION_21_53();
      v24 = sub_1E41FE274();

      swift_willThrow();
      v25 = OUTLINED_FUNCTION_78_0();
      sub_1E38DCCB0(v25, v26);

      __swift_destroy_boxed_opaque_existential_1(&v29);
    }
  }

  else
  {
    v19 = v6;
    OUTLINED_FUNCTION_21_53();
    v20 = sub_1E41FE274();

    swift_willThrow();
    v21 = OUTLINED_FUNCTION_78_0();
    sub_1E38DCCB0(v21, v22);
  }

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3A84234(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  sub_1E41FFA44();
  OUTLINED_FUNCTION_0_10();
  v102 = v5;
  v103 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31998);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v10);
  v11 = sub_1E41FF774();
  OUTLINED_FUNCTION_0_10();
  v99 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_126_2();
  v105 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v97 - v19;
  v21 = *a1;
  v22 = *(*a1 + 248);
  if (!v22 || (OUTLINED_FUNCTION_25(), swift_beginAccess(), (v23 = *(v22 + 24)) == 0))
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v32 = v105;
    v33(v2);

    v34 = sub_1E41FFC94();
    v35 = sub_1E42067F4();

    if (!os_log_type_enabled(v34, v35))
    {

      (*(v16 + 8))(v2, v32);
LABEL_39:
      sub_1E41FF674();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v96);
      return;
    }

    OUTLINED_FUNCTION_57_3();
    v36 = swift_slowAlloc();
    OUTLINED_FUNCTION_71_15();
    v110 = swift_slowAlloc();
    *v36 = 136315394;
    v37 = (*(*v21 + 376))();
    sub_1E3270FC8(v37, v38, &v110);
    OUTLINED_FUNCTION_94_1();

    *(v36 + 4) = v11;
    *(v36 + 12) = 2080;
    if (v21[31])
    {
      v39 = sub_1E3F55FE4();
      v41 = v40;
    }

    else
    {
      v39 = 7104878;
      v41 = 0xE300000000000000;
    }

    v42 = v105;
    v43 = sub_1E3270FC8(v39, v41, &v110);

    *(v36 + 14) = v43;
    _os_log_impl(&dword_1E323F000, v34, v35, "AMSUpsell: invalid image data: %s = %s", v36, 0x16u);
    swift_arrayDestroy();
    v44 = OUTLINED_FUNCTION_7_104();
    MEMORY[0x1E69143B0](v44);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    v45 = *(v16 + 8);
    v46 = v2;
    goto LABEL_37;
  }

  v24 = *(v22 + 16);
  v113 = &unk_1F5D5E2A8;
  v114 = &off_1F5D5CB58;

  v25 = j__OUTLINED_FUNCTION_18();
  v26 = sub_1E39C29F0(&v110, v25 & 1);
  v27 = __swift_destroy_boxed_opaque_existential_1(&v110);
  if ((v26 & 1) == 0 || !(*(*v21 + 392))(v27))
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_106();
  type metadata accessor for ImageLayout();
  OUTLINED_FUNCTION_20_2();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

LABEL_15:
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v22 + 184))
    {

      sub_1E324FBDC();
      OUTLINED_FUNCTION_2_26();
      v47 = v105;
      v48(v20);

      v49 = sub_1E41FFC94();
      v50 = sub_1E42067F4();

      if (!os_log_type_enabled(v49, v50))
      {

        v46 = OUTLINED_FUNCTION_129_5();
        v63 = v47;
LABEL_38:
        v45(v46, v63);
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_57_3();
      v51 = swift_slowAlloc();
      OUTLINED_FUNCTION_71_15();
      v103 = swift_slowAlloc();
      v108 = v103;
      *v51 = 136315394;
      v52 = (*(*v21 + 376))();
      sub_1E3270FC8(v52, v53, &v108);
      OUTLINED_FUNCTION_94_1();

      *(v51 + 4) = v11;
      *(v51 + 12) = 2080;
      if (v21[31])
      {
        v54 = sub_1E3F55FE4();
        v56 = v55;
      }

      else
      {
        v54 = 7104878;
        v56 = 0xE300000000000000;
      }

      v42 = v105;
      v91 = sub_1E3270FC8(v54, v56, &v108);

      *(v51 + 14) = v91;
      _os_log_impl(&dword_1E323F000, v49, v50, "AMSUpsell: invalid image size: %s = %s", v51, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v92 = OUTLINED_FUNCTION_14_82();
      MEMORY[0x1E69143B0](v92);

      v46 = OUTLINED_FUNCTION_129_5();
LABEL_37:
      v63 = v42;
      goto LABEL_38;
    }

    goto LABEL_19;
  }

  v98 = v24;
  v97[1] = v21;
  v108 = (*(*v28 + 2296))(0.0, 0.0);
  v109 = v29;
  type metadata accessor for CGSize(0);
  v31 = v30;
  sub_1E3A897F8(&qword_1EE23AEA0, type metadata accessor for CGSize);
  sub_1E41499CC(v31, &v110);
  if (v112)
  {
    OUTLINED_FUNCTION_114_2();

    goto LABEL_15;
  }

  v80 = [objc_opt_self() mainScreen];
  [v80 vui_nativeScale];

  v110 = v98;
  v111 = v23;
  v108 = 8222587;
  v109 = 0xE300000000000000;
  OUTLINED_FUNCTION_133_0();
  if (!(v83 ^ v84 | v82))
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v81 <= -9.22337204e18)
  {
    goto LABEL_40;
  }

  if (v81 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v106 = v81;
  v106 = sub_1E4207944();
  v107 = v85;
  sub_1E32822E0();
  OUTLINED_FUNCTION_25();
  v86 = sub_1E42071F4();
  v88 = v87;

  v110 = v86;
  v111 = v88;
  v108 = 8218747;
  v109 = 0xE300000000000000;
  OUTLINED_FUNCTION_133_0();
  if (!(v83 ^ v84 | v82))
  {
    goto LABEL_42;
  }

  if (v89 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v89 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    return;
  }

  v106 = v89;
  v106 = sub_1E4207944();
  v107 = v90;
  OUTLINED_FUNCTION_25();
  sub_1E42071F4();

  OUTLINED_FUNCTION_114_2();

LABEL_19:
  sub_1E41FF764();
  OUTLINED_FUNCTION_25();
  v57 = swift_beginAccess();
  v58 = *(v22 + 40);
  if (v58)
  {
    v106 = *(v22 + 32);
    v107 = v58;
    MEMORY[0x1EEE9AC00](v57);
    sub_1E37614CC();

    v59 = v100;
    v60 = v115;
    sub_1E38D2484(sub_1E3A89788, v11, v100);
    v115 = v60;

    v62 = v59;
  }

  else
  {
    v62 = v100;
    OUTLINED_FUNCTION_32_2();
    v61 = __swift_storeEnumTagSinglePayload(v64, v65, v66, v11);
  }

  v67 = (*v21 + 904);
  v68 = *v67;
  (*v67)(v61);
  sub_1E41FF754();
  v69 = OUTLINED_FUNCTION_74_9();
  if (!__swift_getEnumTagSinglePayload(v69, v70, v11))
  {
    v68();
    sub_1E41FF754();
  }

  OUTLINED_FUNCTION_69_8();
  v71 = OUTLINED_FUNCTION_114_0();
  v72(v71);
  sub_1E378249C();
  v73 = v101;
  sub_1E41FFA34();
  sub_1E41FF664();

  (*(v102 + 8))(v73, v103);
  v74 = OUTLINED_FUNCTION_21_9();
  v75(v74);
  sub_1E41FF674();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  sub_1E325F6F0(v62, &qword_1ECF31998);
}

void sub_1E3A84D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v175 = v24;
  v26 = v25;
  v28 = v27;
  sub_1E41FF894();
  OUTLINED_FUNCTION_0_10();
  v171 = v30;
  v172 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_3();
  v170 = v31;
  OUTLINED_FUNCTION_138();
  v32 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v176 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v162 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v162 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF318F0);
  v45 = OUTLINED_FUNCTION_17_2(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v162 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v162 - v51;
  if (v26)
  {
    v173 = v32;
    v174 = v28;
    sub_1E3744600(v26);
    sub_1E3280A90(0, &unk_1ECF3FA50);
    sub_1E3A81730();
    v53 = objc_allocWithZone(VUIRouterDataSource);
    v54 = OUTLINED_FUNCTION_33_11();
    v56 = sub_1E37FB770(v54, v55);
    v57 = [v56 selectEventDataSource];

    if (v57)
    {
      v58 = sub_1E39BD118(0xD000000000000015, 0x80000001E426EC30, v26);
      v59 = [v57 documentDataSource];
      if (v59)
      {
        v60 = v59;
        v169 = v57;
        if (v58)
        {
          v61 = sub_1E39BD118(0xD000000000000012, 0x80000001E426EC50, v58);
        }

        else
        {
          v61 = 0;
        }

        v178 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
        OUTLINED_FUNCTION_118();
        sub_1E41FF6A4();
        OUTLINED_FUNCTION_0_127();
        OUTLINED_FUNCTION_104_4();
        v171 = v95;
        sub_1E4148F70(v96, v97, v98, v95, v99);

        v100 = sub_1E324FBDC();
        v101 = v176;
        v102 = v173;
        (*(v176 + 16))(v43, v100, v173);
        OUTLINED_FUNCTION_114_0();
        sub_1E378249C();
        v103 = v175;

        v104 = v60;
        v170 = v60;
        v105 = v104;
        v106 = sub_1E41FFC94();
        v107 = sub_1E42067E4();

        LODWORD(v172) = v107;
        if (os_log_type_enabled(v106, v107))
        {
          v166 = v43;
          v168 = v106;
          v108 = OUTLINED_FUNCTION_100();
          v109 = OUTLINED_FUNCTION_160();
          OUTLINED_FUNCTION_71_15();
          v167 = swift_slowAlloc();
          v178 = v167;
          *v108 = 136315650;
          v110 = (*(*v103 + 376))();
          v112 = OUTLINED_FUNCTION_58_0(v110, v111);

          *(v108 + 4) = v112;
          *(v108 + 12) = 2112;
          *(v108 + 14) = v105;
          v175 = v109;
          *v109 = v170;
          *(v108 + 22) = 2080;
          sub_1E378249C();
          v113 = v171;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v171);
          v115 = v105;
          v116 = v105;
          if (EnumTagSinglePayload == 1)
          {
            sub_1E325F6F0(v20, &qword_1ECF318F0);
            sub_1E4205CB4();
          }

          else
          {
            sub_1E41FF684();
            OUTLINED_FUNCTION_37_1();
            (*(v118 + 8))(v20, v113);
          }

          v119 = v166;
          sub_1E4205C74();

          sub_1E325F6F0(v49, &qword_1ECF318F0);
          v120 = OUTLINED_FUNCTION_24_4();
          v123 = sub_1E3270FC8(v120, v121, v122);

          *(v108 + 24) = v123;
          v124 = v168;
          _os_log_impl(&dword_1E323F000, v168, v172, "AMSUpsell: document for %s: %@ %s", v108, 0x20u);
          sub_1E325F6F0(v175, &unk_1ECF28E30);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
          v125 = OUTLINED_FUNCTION_14_82();
          MEMORY[0x1E69143B0](v125);

          (*(v176 + 8))(v119, v173);
          v117 = v169;
        }

        else
        {

          sub_1E325F6F0(v49, &qword_1ECF318F0);
          (*(v101 + 8))(v43, v102);
          v117 = v169;
          v116 = v105;
        }

        sub_1E3A85B7C();

        sub_1E325F6F0(v52, &qword_1ECF318F0);
        sub_1E41FF844();
        v126 = OUTLINED_FUNCTION_121_1();
        v128 = 0;
      }

      else
      {
        v67 = v58;
        v68 = [v57 action];
        if (v68)
        {
          v69 = v68;
          objc_opt_self();
          v70 = swift_dynamicCastObjCClass();
          if (v70)
          {
            v71 = v70;
            v168 = sub_1E39A4DDC(v70, &selRef_buyParams);
            if (v72)
            {
              v73 = v72;
              v167 = v71;
              v74 = sub_1E324FBDC();
              v75 = v176;
              (*(v176 + 16))(v40, v74, v173);
              v76 = v175;

              v77 = v69;

              v78 = v76;
              v79 = sub_1E41FFC94();
              v80 = sub_1E42067E4();

              v81 = os_log_type_enabled(v79, v80);
              v166 = v77;
              if (v81)
              {
                v82 = OUTLINED_FUNCTION_100();
                v164 = OUTLINED_FUNCTION_160();
                OUTLINED_FUNCTION_71_15();
                v165 = swift_slowAlloc();
                v178 = v165;
                *v82 = 136315650;
                v83 = *(v78->isa + 47);
                v163 = v80;
                v84 = v83();
                v86 = OUTLINED_FUNCTION_58_0(v84, v85);
                v162 = v79;
                v87 = v57;
                v88 = v86;

                *(v82 + 4) = v88;
                v57 = v87;
                *(v82 + 12) = 2112;
                v89 = v167;
                *(v82 + 14) = v167;
                v90 = v164;
                *v164 = v89;
                *(v82 + 22) = 2080;
                v91 = v77;
                *(v82 + 24) = sub_1E3270FC8(v168, v73, &v178);
                v92 = v162;
                _os_log_impl(&dword_1E323F000, v162, v163, "AMSUpsell: action for %s: %@ %s", v82, 0x20u);
                sub_1E325F6F0(v90, &unk_1ECF28E30);
                OUTLINED_FUNCTION_7_17();
                MEMORY[0x1E69143B0]();
                swift_arrayDestroy();
                OUTLINED_FUNCTION_7_17();
                MEMORY[0x1E69143B0]();
                v93 = OUTLINED_FUNCTION_7_104();
                MEMORY[0x1E69143B0](v93);

                (*(v176 + 8))(v40, v173);
              }

              else
              {

                (*(v75 + 8))(v40, v173);
              }

              v94 = v170;
              sub_1E41FF884();
              v144 = [v57 postActionDocumentDataSource];
              v178 = v144;
              MEMORY[0x1EEE9AC00](v144);
              *(&v162 - 4) = v67;
              *(&v162 - 3) = v78;
              *(&v162 - 2) = v94;
              MEMORY[0x1EEE9AC00](v145);
              *(&v162 - 2) = sub_1E3A89644;
              *(&v162 - 1) = v146;
              v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31968);
              sub_1E4148F70(sub_1E3A89650, &(&v162)[-4], v147, MEMORY[0x1E69E7CA8] + 8, &v177);

              v148 = [v57 postAction];
              v178 = v148;
              MEMORY[0x1EEE9AC00](v148);
              *(&v162 - 4) = v67;
              *(&v162 - 3) = v78;
              *(&v162 - 2) = v94;
              MEMORY[0x1EEE9AC00](v149);
              *(&v162 - 2) = sub_1E3A89694;
              *(&v162 - 1) = v150;
              v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31970);
              sub_1E4148F70(sub_1E3A89854, &(&v162)[-4], v151, MEMORY[0x1E69E7CA8] + 8, &v177);

              v152 = [v167 contextData];
              v153 = sub_1E4205C64();

              sub_1E374BD08(v153);
              OUTLINED_FUNCTION_31_4();

              if (&a19 == 88)
              {
                v152 = 0;
              }

              else
              {
                sub_1E39BD118(0x7363697274656DLL, 0xE700000000000000, &v178);
                OUTLINED_FUNCTION_12_1();
              }

              v178 = v152;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
              OUTLINED_FUNCTION_144_0();
              sub_1E41FF6A4();
              OUTLINED_FUNCTION_0_127();
              OUTLINED_FUNCTION_96_7();
              sub_1E4148F70(v154, v155, v153, v156, v157);

              sub_1E41FF864();
              sub_1E41FF824();

              sub_1E41FF844();
              OUTLINED_FUNCTION_119_2();
              OUTLINED_FUNCTION_114();
              __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
              (*(v171 + 8))(v94, v172);
              goto LABEL_32;
            }
          }
        }

        v129 = [v57 action];
        if (v129)
        {
          v130 = v129;
          v169 = v57;
          v131 = sub_1E324FBDC();
          v132 = v176;
          v133 = v173;
          (*(v176 + 16))(v37, v131, v173);
          v134 = v175;

          v135 = v130;
          v136 = sub_1E41FFC94();
          v137 = sub_1E42067F4();

          if (os_log_type_enabled(v136, v137))
          {
            OUTLINED_FUNCTION_57_3();
            v138 = swift_slowAlloc();
            OUTLINED_FUNCTION_160();
            v139 = OUTLINED_FUNCTION_52_2();
            v178 = v139;
            *v138 = 136315394;
            v140 = (*(*v134 + 376))();
            OUTLINED_FUNCTION_58_0(v140, v141);
            OUTLINED_FUNCTION_94_1();

            *(v138 + 4) = v134;
            *(v138 + 12) = 2112;
            *(v138 + 14) = v135;
            *v21 = v130;
            v142 = v135;
            _os_log_impl(&dword_1E323F000, v136, v137, "AMSUpsell: unrecognized action for %s: %@", v138, 0x16u);
            sub_1E325F6F0(v21, &unk_1ECF28E30);
            OUTLINED_FUNCTION_7_17();
            MEMORY[0x1E69143B0]();
            __swift_destroy_boxed_opaque_existential_1(v139);
            v143 = OUTLINED_FUNCTION_7_104();
            MEMORY[0x1E69143B0](v143);
            OUTLINED_FUNCTION_7_17();
            MEMORY[0x1E69143B0]();

            (*(v176 + 8))(v37, v173);
          }

          else
          {

            (*(v132 + 8))(v37, v133);
          }
        }

        else
        {
        }

        v127 = sub_1E41FF844();
        v126 = v174;
        v128 = 1;
      }

      __swift_storeEnumTagSinglePayload(v126, v128, 1, v127);
LABEL_32:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    sub_1E41FF844();
  }

  else
  {
    sub_1E41FF844();
    OUTLINED_FUNCTION_121_1();
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
}

void sub_1E3A85B7C()
{
  OUTLINED_FUNCTION_31_1();
  v84 = v2;
  v4 = v3;
  v89 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31960);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v82 - v10;
  v83 = sub_1E41FF934();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  sub_1E41FF944();
  OUTLINED_FUNCTION_0_10();
  v86 = v19;
  v87 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  v85 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v88 = v26;
  sub_1E39A4DDC(v4, &selRef_controllerRef);
  if (!v27)
  {
    v28 = [v4 documentRef];
    sub_1E4205F14();
  }

  v29 = [v4 uiConfiguration];
  v30 = [v29 type];

  switch(v30)
  {
    case 2uLL:
    case 3uLL:
    case 9uLL:
    case 0xEuLL:
      v31 = MEMORY[0x1E69DEF90];
      goto LABEL_10;
    case 4uLL:
      v31 = MEMORY[0x1E69DEF88];
      goto LABEL_10;
    case 5uLL:
      v31 = MEMORY[0x1E69DEF98];
LABEL_10:
      v53 = v83;
      (*(v13 + 104))(v17, *v31, v83);
      v54 = sub_1E41FF844();
      v55 = OUTLINED_FUNCTION_13_80();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v54);
      v58 = OUTLINED_FUNCTION_12_71();
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v54);
      sub_1E41FF914();

      OUTLINED_FUNCTION_21_1();
      sub_1E325F6F0(v61, v62);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F6F0(v63, v64);
      (*(v13 + 8))(v17, v53);
      goto LABEL_16;
    case 6uLL:

      v72 = sub_1E41FF844();
      OUTLINED_FUNCTION_11_75(v72);
      sub_1E41FF8D4();
      goto LABEL_15;
    case 7uLL:

      v73 = sub_1E41FF844();
      OUTLINED_FUNCTION_11_75(v73);
      sub_1E41FF904();
      goto LABEL_15;
    case 8uLL:
    case 0xAuLL:

      v32 = sub_1E41FF844();
      OUTLINED_FUNCTION_11_75(v32);
      sub_1E41FF8E4();
      goto LABEL_15;
    case 0xCuLL:
    case 0x10uLL:
      v33 = sub_1E41FF844();
      v34 = OUTLINED_FUNCTION_12_71();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
      sub_1E41FF8F4();

      OUTLINED_FUNCTION_109_0(v1);
      OUTLINED_FUNCTION_109_0(v0);
      sub_1E41FF834();
      (*(v86 + 8))(v22, v87);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v33);
      v43 = OUTLINED_FUNCTION_12_71();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v33);
      OUTLINED_FUNCTION_24_4();
      sub_1E41FF904();
      OUTLINED_FUNCTION_109_0(v0);
      OUTLINED_FUNCTION_109_0(v11);
      goto LABEL_16;
    case 0x11uLL:
      v46 = sub_1E41FF844();
      v47 = OUTLINED_FUNCTION_13_80();
      __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
      v50 = OUTLINED_FUNCTION_12_71();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v46);
      OUTLINED_FUNCTION_70_13();
      sub_1E41FF924();
      goto LABEL_12;
    default:
      v65 = sub_1E41FF844();
      v66 = OUTLINED_FUNCTION_13_80();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v65);
      v69 = OUTLINED_FUNCTION_12_71();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v65);
      OUTLINED_FUNCTION_70_13();
      sub_1E41FF8F4();
LABEL_12:

LABEL_15:
      OUTLINED_FUNCTION_21_1();
      sub_1E325F6F0(v74, v75);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F6F0(v76, v77);
LABEL_16:
      v78 = OUTLINED_FUNCTION_114_0();
      v79(v78);
      sub_1E41FF834();
      v80 = OUTLINED_FUNCTION_32_0();
      v81(v80);
      OUTLINED_FUNCTION_25_2();
      return;
  }
}

void sub_1E3A860AC()
{
  OUTLINED_FUNCTION_31_1();
  v61 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31960);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v60 = v10;
  OUTLINED_FUNCTION_138();
  v62 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF318F0);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  v58 = v23;
  if (v5)
  {
    v24 = sub_1E39BD118(0xD00000000000001CLL, 0x80000001E426EC90, v5);
  }

  else
  {
    v24 = 0;
  }

  v63 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
  OUTLINED_FUNCTION_118();
  v25 = sub_1E41FF6A4();
  OUTLINED_FUNCTION_0_127();
  OUTLINED_FUNCTION_104_4();
  sub_1E4148F70(v26, v27, v28, v25, v29);

  v30 = sub_1E324FBDC();
  (*(v12 + 16))(v16, v30, v62);
  sub_1E378249C();

  v31 = v7;
  v32 = sub_1E41FFC94();
  v33 = sub_1E42067E4();

  v59 = v33;
  v34 = v33;
  v35 = v32;
  if (os_log_type_enabled(v32, v34))
  {
    v57 = v12;
    v36 = OUTLINED_FUNCTION_100();
    v37 = OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_71_15();
    v56 = swift_slowAlloc();
    v63 = v56;
    *v36 = 136315650;
    v38 = (*(*v3 + 376))();
    OUTLINED_FUNCTION_58_0(v38, v39);
    OUTLINED_FUNCTION_94_1();

    *(v36 + 4) = v3;
    *(v36 + 12) = 2112;
    *(v36 + 14) = v31;
    v55 = v37;
    *v37 = v31;
    *(v36 + 22) = 2080;
    v40 = v58;
    sub_1E378249C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v25);
    v42 = v31;
    if (EnumTagSinglePayload == 1)
    {
      sub_1E325F6F0(v40, &qword_1ECF318F0);
      sub_1E4205CB4();
    }

    else
    {
      sub_1E41FF684();
      OUTLINED_FUNCTION_37_1();
      v45 = OUTLINED_FUNCTION_114_0();
      v46(v45);
    }

    sub_1E4205C74();

    sub_1E325F6F0(v0, &qword_1ECF318F0);
    v47 = OUTLINED_FUNCTION_114_0();
    v50 = sub_1E3270FC8(v47, v48, v49);

    *(v36 + 24) = v50;
    _os_log_impl(&dword_1E323F000, v35, v59, "AMSUpsell: post action document for %s: %@ %s", v36, 0x20u);
    sub_1E325F6F0(v55, &unk_1ECF28E30);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    (*(v57 + 8))(v16, v62);
  }

  else
  {

    sub_1E325F6F0(v0, &qword_1ECF318F0);
    v43 = OUTLINED_FUNCTION_33_11();
    v44(v43);
  }

  sub_1E3A85B7C();
  sub_1E41FF844();
  OUTLINED_FUNCTION_119_2();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  sub_1E41FF854();
  sub_1E325F6F0(v22, &qword_1ECF318F0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A865EC()
{
  OUTLINED_FUNCTION_31_1();
  v58 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v59 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF318F0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v57 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v55 = v22;
  if (v5)
  {
    v23 = sub_1E39BD118(0xD000000000000014, 0x80000001E426EC70, v5);
  }

  else
  {
    v23 = 0;
  }

  v60 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10);
  OUTLINED_FUNCTION_118();
  v24 = sub_1E41FF6A4();
  OUTLINED_FUNCTION_0_127();
  OUTLINED_FUNCTION_104_4();
  sub_1E4148F70(v25, v26, v27, v24, v28);

  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v29 = v13;
  v30 = v13;
  v31 = v59;
  v32(v29);
  sub_1E378249C();

  v33 = v7;
  v34 = sub_1E41FFC94();
  v35 = sub_1E42067E4();

  v56 = v35;
  v36 = v35;
  v37 = v34;
  if (os_log_type_enabled(v34, v36))
  {
    v38 = v30;
    v54 = v9;
    v39 = OUTLINED_FUNCTION_100();
    v40 = OUTLINED_FUNCTION_160();
    OUTLINED_FUNCTION_71_15();
    v53 = swift_slowAlloc();
    v60 = v53;
    *v39 = 136315650;
    v41 = (*(*v3 + 376))();
    OUTLINED_FUNCTION_58_0(v41, v42);
    OUTLINED_FUNCTION_94_1();

    *(v39 + 4) = v3;
    *(v39 + 12) = 2112;
    *(v39 + 14) = v33;
    v43 = v40;
    *v40 = v33;
    *(v39 + 22) = 2080;
    v44 = v55;
    sub_1E378249C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v44, 1, v24);
    v46 = v33;
    if (EnumTagSinglePayload == 1)
    {
      sub_1E325F6F0(v44, &qword_1ECF318F0);
      sub_1E4205CB4();
    }

    else
    {
      sub_1E41FF684();
      OUTLINED_FUNCTION_37_1();
      (*(v47 + 8))(v44, v24);
    }

    v48 = sub_1E4205C74();
    v50 = v49;

    sub_1E325F6F0(v0, &qword_1ECF318F0);
    v51 = sub_1E3270FC8(v48, v50, &v60);

    *(v39 + 24) = v51;
    _os_log_impl(&dword_1E323F000, v37, v56, "AMSUpsell: post action for %s: %@ %s", v39, 0x20u);
    sub_1E325F6F0(v43, &unk_1ECF28E30);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    (*(v54 + 8))(v38, v59);
  }

  else
  {

    sub_1E325F6F0(v0, &qword_1ECF318F0);
    (*(v9 + 8))(v30, v31);
  }

  sub_1E378249C();
  sub_1E41FF874();
  OUTLINED_FUNCTION_109_0(v21);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A86B14()
{

  OUTLINED_FUNCTION_25();
  sub_1E41FFAB4();
  sub_1E41FFAC4();
  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_114();
  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1E3A86B7C@<X0>(uint64_t a1@<X8>)
{
  sub_1E3A86B78();
  v2 = sub_1E41FF6A4();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_1E3A86BC8()
{
  OUTLINED_FUNCTION_24();
  v0[36] = v1;
  v0[37] = v2;
  v3 = sub_1E41FF144();
  v0[38] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[39] = v4;
  v0[40] = swift_task_alloc();
  v5 = sub_1E41FF044();
  v0[41] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[42] = v6;
  v0[43] = OUTLINED_FUNCTION_107_1();
  v0[44] = swift_task_alloc();
  v7 = sub_1E41FF154();
  v0[45] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[46] = v8;
  v0[47] = OUTLINED_FUNCTION_107_1();
  v0[48] = swift_task_alloc();
  v9 = sub_1E41FF024();
  v0[49] = v9;
  OUTLINED_FUNCTION_8_0(v9);
  v0[50] = v10;
  v0[51] = swift_task_alloc();
  v11 = sub_1E41FFCB4();
  v0[52] = v11;
  OUTLINED_FUNCTION_8_0(v11);
  v0[53] = v12;
  v0[54] = OUTLINED_FUNCTION_107_1();
  v0[55] = swift_task_alloc();
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  sub_1E4206434();
  v0[59] = sub_1E4206424();
  v14 = sub_1E42063B4();
  v0[60] = v14;
  v0[61] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1E3A86E30, v14, v13);
}

uint64_t sub_1E3A86E30()
{
  OUTLINED_FUNCTION_27_2();
  v1 = sub_1E3CFEA54();
  v0[62] = v1;
  v0[63] = *v1;
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 360);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[64] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_56_1(v4);

  return v6();
}

uint64_t sub_1E3A86F5C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[65] = v0;

  if (v0)
  {
    v7 = v3[60];
    v8 = v3[61];
    v9 = sub_1E3A88460;
  }

  else
  {

    v7 = v3[60];
    v8 = v3[61];
    v9 = sub_1E3A87064;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E3A87064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_37_27();
  OUTLINED_FUNCTION_56_17();
  v15 = *(***(v14 + 496) + 376);

  v16 = OUTLINED_FUNCTION_32_0();
  v17 = v15(v16);

  if (v17)
  {
    v18 = *(v14 + 464);
    v19 = *(v14 + 416);
    v20 = *(v14 + 424);

    v21 = sub_1E324FBDC();
    (*(v20 + 16))(v18, v21, v19);

    v22 = sub_1E41FFC94();
    sub_1E42067E4();

    if (OUTLINED_FUNCTION_84_1())
    {
      v23 = OUTLINED_FUNCTION_72_14();
      a11 = OUTLINED_FUNCTION_100();
      *(v23 + 4) = OUTLINED_FUNCTION_68_11(4.8149e-34, a11, v24);
      OUTLINED_FUNCTION_41_9(&dword_1E323F000, v25, v26, "AMSUpsell::auto-follow: already following team %s");
      __swift_destroy_boxed_opaque_existential_1(a11);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v27 = OUTLINED_FUNCTION_7_104();
      MEMORY[0x1E69143B0](v27);
    }

    v28 = OUTLINED_FUNCTION_27_0();
    v29(v28);
    OUTLINED_FUNCTION_2_104();
    v44 = v30;

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_30_38();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v44, a11, a12, a13, a14);
  }

  else
  {
    sub_1E41FF0C4();
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    *(v14 + 528) = v40;
    *v40 = v41;
    v40[1] = sub_1E3A872B8;
    OUTLINED_FUNCTION_30_38();

    return MEMORY[0x1EEE43730](v42);
  }
}

uint64_t sub_1E3A872B8()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *v4 = *v1;
  v3[67] = v0;

  v5 = v2[48];
  v6 = v2[46];
  v7 = v2[45];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v9(v5, v7);
    v11 = v3[60];
    v12 = v3[61];
    v13 = sub_1E3A88620;
  }

  else
  {
    v3[68] = v9;
    v3[69] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = v3[60];
    v12 = v3[61];
    v13 = sub_1E3A87430;
  }

  return MEMORY[0x1EEE6DFA0](v13, v11, v12);
}

uint64_t sub_1E3A87430()
{
  OUTLINED_FUNCTION_37_27();
  OUTLINED_FUNCTION_56_17();
  v1 = v0[53];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[41];
  v5 = v0[42];
  sub_1E41FF014();
  v6 = OUTLINED_FUNCTION_16_0();
  v7(v6);
  (*(v5 + 104))(v3, *MEMORY[0x1E69D5850], v4);
  sub_1E3A897F8(&qword_1ECF318D0, MEMORY[0x1E69D5868]);
  v8 = sub_1E4205E84();
  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_24_4();
  v9(v10);
  (v9)(v2, v4);
  v11 = sub_1E324FBDC();
  v0[70] = v11;
  v12 = *(v1 + 16);
  v0[71] = v12;
  v0[72] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13 = v0[52];
  if (v8)
  {
    v12(v0[56], v11, v13);

    v14 = sub_1E41FFC94();
    sub_1E42067E4();

    v15 = OUTLINED_FUNCTION_84_1();
    v16 = v0[53];
    if (v15)
    {
      v17 = OUTLINED_FUNCTION_72_14();
      v55 = OUTLINED_FUNCTION_100();
      *(v17 + 4) = OUTLINED_FUNCTION_68_11(4.8149e-34, v55, v18);
      OUTLINED_FUNCTION_41_9(&dword_1E323F000, v19, v20, "AMSUpsell::auto-follow: getting consent for team %s");
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v21 = OUTLINED_FUNCTION_7_104();
      MEMORY[0x1E69143B0](v21);
    }

    v22 = *(v16 + 8);
    v23 = OUTLINED_FUNCTION_27_0();
    v22(v23);
    v0[76] = v22;
    v25 = v0[36];
    v24 = v0[37];
    sub_1E3280A90(0, &qword_1EE23B0D0);
    sub_1E4205F14();
    v26 = sub_1E38A1F34();
    v0[77] = v26;
    sub_1E3280A90(0, &qword_1ECF318D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v0[32] = 0x64496D616574;
    v0[33] = 0xE600000000000000;
    v28 = MEMORY[0x1E69E6158];
    sub_1E4207414();
    *(inited + 96) = v28;
    *(inited + 72) = v25;
    *(inited + 80) = v24;

    sub_1E4205CB4();
    v29 = sub_1E37766C4();
    [v26 setPrefetchData_];

    type metadata accessor for DocumentInteractor();
    v30 = swift_task_alloc();
    v0[78] = v30;
    *v30 = v0;
    OUTLINED_FUNCTION_56_1(v30);
    OUTLINED_FUNCTION_30_38();

    return sub_1E3DE1D10(v31);
  }

  else
  {
    v12(v0[57], v11, v13);

    v34 = sub_1E41FFC94();
    sub_1E42067E4();

    if (OUTLINED_FUNCTION_84_1())
    {
      v35 = OUTLINED_FUNCTION_72_14();
      v56 = OUTLINED_FUNCTION_100();
      *(v35 + 4) = OUTLINED_FUNCTION_68_11(4.8149e-34, v56, v36);
      OUTLINED_FUNCTION_41_9(&dword_1E323F000, v37, v38, "AMSUpsell::auto-follow: auto-following team %s in background");
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v39 = OUTLINED_FUNCTION_7_104();
      MEMORY[0x1E69143B0](v39);
    }

    v40 = OUTLINED_FUNCTION_27_0();
    v41(v40);
    v43 = v0[36];
    v42 = v0[37];
    sub_1E41FF0C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E8);
    v44 = sub_1E41FF114();
    OUTLINED_FUNCTION_0_10();
    v46 = v45;
    v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = swift_allocObject();
    v0[73] = v48;
    *(v48 + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1E4297BE0;
    *(v48 + v47) = v49;
    *(v49 + 32) = v43;
    *(v49 + 40) = v42;
    (*(v46 + 104))(v48 + v47, *MEMORY[0x1E69D58D8], v44);

    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    v0[74] = v50;
    *v50 = v51;
    v50[1] = sub_1E3A879B0;
    OUTLINED_FUNCTION_30_38();

    return MEMORY[0x1EEE43750](v52, v53);
  }
}

uint64_t sub_1E3A879B0()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *v4 = *v1;
  v3[75] = v0;

  v5 = v2[68];
  v6 = v2[47];
  v7 = v2[45];
  if (v0)
  {
    v5(v2[47], v2[45]);

    v8 = v3[60];
    v9 = v3[61];
    v10 = sub_1E3A887D4;
  }

  else
  {

    v5(v6, v7);
    v11 = OUTLINED_FUNCTION_33_11();
    v12(v11);
    v8 = v3[60];
    v9 = v3[61];
    v10 = sub_1E3A87B84;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1E3A87B84()
{

  OUTLINED_FUNCTION_2_104();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3A87C5C()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  *(v8 + 632) = v7;
  *(v8 + 640) = v0;

  v9 = *(v2 + 488);
  v10 = *(v2 + 480);
  if (v0)
  {
    v11 = sub_1E3A88988;
  }

  else
  {
    v11 = sub_1E3A87D98;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, v9);
}

uint64_t sub_1E3A87D98()
{
  v67 = v0;
  v3 = *(v0 + 632);

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!*(v3 + 56) || (OUTLINED_FUNCTION_8(), v5 = *(v4 + 488), v6 = , v5(v6), OUTLINED_FUNCTION_12_1(), , !v5) || (*(v0 + 272) = v5, v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34240), sub_1E328FCF4(&qword_1ECF289A8, &qword_1ECF34240), sub_1E38D23F0(v7, v0 + 280), , (v8 = *(v0 + 280)) == 0))
  {
    (*(v0 + 568))(*(v0 + 440), *(v0 + 560), *(v0 + 416));

    v21 = sub_1E41FFC94();
    sub_1E42067F4();

    v22 = OUTLINED_FUNCTION_84_1();
    v23 = *(v0 + 608);
    if (v22)
    {
      v65 = *(v0 + 608);
      v24 = OUTLINED_FUNCTION_72_14();
      v2 = OUTLINED_FUNCTION_100();
      v66[0] = v2;
      *v24 = 136315138;
      *(v24 + 4) = sub_1E3270FC8(v1, v23, v66);
      OUTLINED_FUNCTION_41_9(&dword_1E323F000, v25, v26, "AMSUpsell::auto-follow: failed to fetch consent template for team %s");
      __swift_destroy_boxed_opaque_existential_1(v2);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v27 = OUTLINED_FUNCTION_7_104();
      MEMORY[0x1E69143B0](v27);

      v28 = OUTLINED_FUNCTION_27_0();
      v65(v28);
    }

    else
    {

      v29 = OUTLINED_FUNCTION_27_0();
      v23(v29);
    }

    v30 = *(v0 + 616);
    sub_1E3781F38();
    v31 = swift_allocError();
    OUTLINED_FUNCTION_90_7(v31, v32);

    OUTLINED_FUNCTION_60_12();
    v33 = OUTLINED_FUNCTION_15_75();
    v34(v33);

    v35 = v31;
    v36 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_112_0();

    OUTLINED_FUNCTION_110_5();
    OUTLINED_FUNCTION_102_8();
    if (v37)
    {
      v38 = *(v0 + 288);
      v39 = *(v0 + 296);
      OUTLINED_FUNCTION_57_3();
      v64 = v1;
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_160();
      v41 = OUTLINED_FUNCTION_52_2();
      v66[0] = v41;
      *v40 = 136315394;
      v42 = sub_1E3270FC8(v38, v39, v66);
      OUTLINED_FUNCTION_29_41(v42);
      v43 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_101_4(v43);
      OUTLINED_FUNCTION_28_35(&dword_1E323F000, v44, v45, "AMSUpsell::auto-follow: error for team %s: %@");
      sub_1E325F6F0(v2, &unk_1ECF28E30);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      __swift_destroy_boxed_opaque_existential_1(v41);
      v46 = OUTLINED_FUNCTION_7_104();
      MEMORY[0x1E69143B0](v46);
      v47 = OUTLINED_FUNCTION_14_82();
      MEMORY[0x1E69143B0](v47);

      v30[1](0x80000001E426EBE0, v64);
    }

    else
    {

      v48 = OUTLINED_FUNCTION_25_47();
      v50(v48, v49);
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_15_1();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  OUTLINED_FUNCTION_15_1();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  if (sub_1E373E010(40, v8))
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_20_2();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
LABEL_19:

      goto LABEL_20;
    }

    v13 = *(v12 + 248);

    if (v13)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (*(v13 + 24))
      {
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        OUTLINED_FUNCTION_132_4();
        sub_1E3280A90(0, &qword_1EE23B008);

        v14 = OUTLINED_FUNCTION_106_9();
        v15 = *v10;
        *v10 = v14;

        v16 = &selRef__shouldAnimatePropertyWithKey_;
        if (v14)
        {
          OUTLINED_FUNCTION_140_6();
          if (*v10)
          {
            v17 = *v10;
            v18 = sub_1E373E010(40, v8);
            if (v18)
            {
              *(v0 + 144) = &unk_1F5D5DAC8;
              *(v0 + 152) = &off_1F5D5C998;
              *(v0 + 120) = 1;
              sub_1E39C29A4((v0 + 120));
              v20 = v19;

              __swift_destroy_boxed_opaque_existential_1(v0 + 120);
              if (v20)
              {
                v18 = sub_1E4205ED4();
              }

              else
              {
                v18 = 0;
              }

              v16 = &selRef__shouldAnimatePropertyWithKey_;
            }

            [v17 v16[389]];
          }
        }

        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        if (*(v13 + 40))
        {
          OUTLINED_FUNCTION_132_4();

          v57 = OUTLINED_FUNCTION_106_9();
          v58 = *(v11 + 16);
          *(v11 + 16) = v57;

          if (v57)
          {
            OUTLINED_FUNCTION_140_6();
            v59 = *(v11 + 16);
            if (v59)
            {
              v60 = *v10;
              v61 = v59;
              if (v60 && (sub_1E3A89414(v10), v62))
              {
                v63 = sub_1E4205ED4();
              }

              else
              {
                v63 = 0;
              }

              [v61 v16[389]];
            }
          }
        }
      }

      goto LABEL_19;
    }
  }

LABEL_20:
  v51 = *(v0 + 616);
  v53 = *(v0 + 288);
  v52 = *(v0 + 296);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v54 = swift_task_alloc();
  v54[2] = v9;
  v54[3] = v11;
  v54[4] = v8;
  v54[5] = v53;
  v54[6] = v52;
  sub_1E3B79200(sub_1E3A89404, v54);

LABEL_21:
  OUTLINED_FUNCTION_2_104();

  OUTLINED_FUNCTION_54();

  return v55();
}

uint64_t sub_1E3A88B44()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3A86BC8();
}

id sub_1E3A88BD4(double a1, double a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1E4205ED4();

  v6 = [v4 initWithSrc:v5 size:{a1, a2}];

  return v6;
}

void sub_1E3A88C60()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v29 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v30 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v28 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  type metadata accessor for SportsFavoritesOnboardingViewController();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v7;
  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  OUTLINED_FUNCTION_4_0();
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  OUTLINED_FUNCTION_4_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  v17 = swift_allocObject();
  *(v17 + 16) = v29;
  *(v17 + 24) = v2;
  swift_bridgeObjectRetain_n();

  sub_1E3987320(sub_1E3A894B0, v12, sub_1E3A89510, v13, sub_1E3A89518, v14, sub_1E3A89520, v15, v31, sub_1E3A89528, v16, sub_1E3A895D8, v17);

  v18 = sub_1E39874B4();
  v19 = sub_1E324FBDC();
  (*(v28 + 16))(v0, v19, v30);
  v20 = v18;
  v21 = sub_1E41FFC94();
  v22 = sub_1E42067E4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_6_21();
    v24 = OUTLINED_FUNCTION_160();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_1E323F000, v21, v22, "AMSUpsell::auto-follow: presenting team consent sheet: %@", v23, 0xCu);
    sub_1E325F6F0(v24, &unk_1ECF28E30);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  (*(v28 + 8))(v0, v30);
  v26 = [objc_opt_self() sharedInstance];
  v27 = [v26 controllerPresenter];

  [v27 presentViewController:v20 animated:1 completion:0];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3A8900C(uint64_t a1)
{
  result = sub_1E3A89034();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3A89034()
{
  result = qword_1EE2846A8;
  if (!qword_1EE2846A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2846A8);
  }

  return result;
}

uint64_t sub_1E3A890B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31900);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

size_t sub_1E3A89138(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = *(a4 + 16);
  v15 = sub_1E3A89248(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_1E3A89338(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t sub_1E3A89248(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = OUTLINED_FUNCTION_118();
  v9 = a5(v8);
  OUTLINED_FUNCTION_8_0(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if (result - v13 != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E3A89338(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_155();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_2(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_67_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_67_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1E3A89414(id *a1)
{
  v1 = *a1;

  return sub_1E3A89440(v1);
}

uint64_t sub_1E3A89440(void *a1)
{
  v2 = [a1 accessibilityText];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3A894B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = v3;
  v6 = v4;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3A89530(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!*(v2 + 16) || (v3 = sub_1E3740AE8(a1), (v4 & 1) == 0) || **(*(v2 + 56) + 8 * v3) != _TtC8VideosUI13TextViewModel || (, sub_1E3C27024(), v6 = v5, , !v6))
  {
  }

  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E3A895D8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF318E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E4297BE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  *(v3 + 48) = 0;

  return v3;
}

uint64_t sub_1E3A89650@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = 0;
  return result;
}

uint64_t sub_1E3A896A0()
{
  v1 = *(v0 + 24);
  sub_1E3C27024();
  if (v2)
  {
    if (!v1)
    {
      v7[3] = &unk_1F5D5DAC8;
      v7[4] = &off_1F5D5C998;
      LOBYTE(v7[0]) = 1;
      sub_1E39C29A4(v7);
      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    sub_1E41FFAB4();
    sub_1E41FFAC4();
    v3 = OUTLINED_FUNCTION_93_4();
    v5 = 0;
  }

  else
  {
    sub_1E41FFAC4();
    v3 = OUTLINED_FUNCTION_93_4();
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v3, v5, 1, v4);
}

uint64_t sub_1E3A89788()
{

  OUTLINED_FUNCTION_67_0();
  sub_1E41FF764();
  sub_1E41FF774();
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_114();
  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1E3A897F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t OUTLINED_FUNCTION_68_11(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1E3270FC8(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_91_7(uint64_t a1)
{

  return sub_1E39C1CF8(a1);
}

id OUTLINED_FUNCTION_106_9()
{

  return sub_1E3A88BD4(v1, v2);
}

BOOL OUTLINED_FUNCTION_110_5()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_137_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_138_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_139_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(v4 - 408);

  return sub_1E4148F70(a1, a2, a3, v6, a4);
}

void OUTLINED_FUNCTION_140_6()
{

  sub_1E394D8F4(6778480, 0xE300000000000000, v0);
}

uint64_t sub_1E3A89A28()
{
  OUTLINED_FUNCTION_5_0();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3A89A68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_0();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_1E3A89AFC()
{

  sub_1E3B50380(&v1);

  return v1;
}

uint64_t sub_1E3A89B40(uint64_t a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);
}

uint64_t (*sub_1E3A89B84(uint64_t a1))(void *a1)
{
  *(a1 + 16) = *(v1 + 112);

  sub_1E3B50380(a1);
  return sub_1E3A89BD8;
}

uint64_t sub_1E3A89BD8(void *a1)
{
  a1[1] = *a1;
  sub_1E3B50420((a1 + 1));
}

uint64_t sub_1E3A89C18()
{

  v0 = sub_1E38074D0();

  return v0;
}

uint64_t sub_1E3A89C54()
{

  sub_1E3B50380(&v1);

  return v1;
}

uint64_t sub_1E3A89C98(char a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);
}

uint64_t (*sub_1E3A89CDC(void *a1))(uint64_t a1)
{
  *a1 = *(v1 + 120);

  sub_1E3B50380((a1 + 1));
  return sub_1E3A89D3C;
}

uint64_t sub_1E3A89D3C(uint64_t a1)
{
  *(a1 + 9) = *(a1 + 8);
  sub_1E3B50420(a1 + 9);
}

uint64_t sub_1E3A89D7C()
{

  v0 = sub_1E38074D0();

  return v0;
}

uint64_t sub_1E3A89DE8(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 128) = a1;
}

uint64_t sub_1E3A89E70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3A89EE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3A89F34(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 320);

  return v2(v3);
}

uint64_t sub_1E3A89F90()
{
  swift_getKeyPath();
  swift_getKeyPath();

  v1 = sub_1E4200684();
  v2 = (*(*v0 + 312))(v1);
  if (v2)
  {
    v3 = sub_1E32AE9B0(v2);
  }

  else
  {
    v3 = 0;
  }

  OUTLINED_FUNCTION_8();
  (*(v4 + 232))(v3);
  OUTLINED_FUNCTION_8();
  result = (*(v5 + 256))();
  if ((result & 1) == 0)
  {
    sub_1E3B7B1C8();
    OUTLINED_FUNCTION_111();
    v8 = *(v7 + 840);

    v8(v0);
  }

  return result;
}

uint64_t (*sub_1E3A8A0F0(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E3A89E70();
  return sub_1E3A8A138;
}

uint64_t sub_1E3A8A138(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1E3A89F90();
  }

  sub_1E3A89F90();
}

uint64_t sub_1E3A8A190()
{
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF319A8);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3A8A1FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0D8);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF319A8);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E3A8A320(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0D8);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF319A8);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E3A8A43C;
}

void sub_1E3A8A43C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E3A8A1FC(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E3A8A1FC(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1E3A8A4F0()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1E32752B0(&qword_1EE28A160, &qword_1ECF319B0);
  return sub_1E42006B4();
}

uint64_t sub_1E3A8A580()
{
  OUTLINED_FUNCTION_5_0();

  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E3A8A5CC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_nextPaginationRequestEndPoint);
  OUTLINED_FUNCTION_3_0();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1E3A8A680()
{
  v0 = swift_allocObject();
  sub_1E3A8A700();
  return v0;
}

void sub_1E3A8A700()
{
  OUTLINED_FUNCTION_31_1();
  v46 = v1;
  v43 = v2;
  v42 = v3;
  v45 = v4;
  v44 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF319A8);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_105();
  v18 = sub_1E41FE5E4();
  v20 = v19;
  (*(v16 + 8))(v0, v14);
  *(v0 + 16) = v18;
  *(v0 + 24) = v20;
  *(v0 + 104) = 0;
  *(v0 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF319A0);
  v49[0] = 0;
  *(v0 + 112) = sub_1E3B508D0(v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA58);
  LOBYTE(v49[0]) = 1;
  *(v0 + 120) = sub_1E3B508D0(v49);
  *(v0 + 128) = 0;
  v21 = OBJC_IVAR____TtC8VideosUI11LibMenuItem__lockupCollection;
  v49[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158);
  sub_1E4200634();
  (*(v10 + 32))(v0 + v21, v13, v8);
  v22 = OBJC_IVAR____TtC8VideosUI11LibMenuItem_lockupCollectionChangeSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF319B0);
  swift_allocObject();
  *(v0 + v22) = sub_1E4200544();
  v23 = (v0 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_nextPaginationRequestEndPoint);
  *v23 = 0;
  v23[1] = 0;
  *(v0 + 32) = v7;
  sub_1E3A8AAC4(v7);
  *(v0 + 40) = v24;
  *(v0 + 48) = v25;
  OUTLINED_FUNCTION_3_0();
  *(v0 + 96) = v42;
  *(v0 + 104) = v43;

  sub_1E3A8ACE0(v7);
  *(v0 + 56) = v26;
  *(v0 + 64) = v27;
  sub_1E3A8ADF4(v7);
  *(v0 + 72) = v28;
  *(v0 + 80) = v29;
  v47 = sub_1E4205F14();
  v48 = v30;
  MEMORY[0x1E69109E0](95, 0xE100000000000000);
  v31 = sub_1E3A8AF80(v7);
  MEMORY[0x1E69109E0](v31);

  v33 = v47;
  v32 = v48;
  type metadata accessor for Metrics();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v35;
  v36 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v33;
  *(inited + 56) = v32;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v37;
  *(inited + 120) = v36;
  *(inited + 96) = v33;
  *(inited + 104) = v32;

  v38 = sub_1E4205CB4();
  *(v0 + 88) = sub_1E3BA5560(v38, 1);
  v39 = (v0 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
  v40 = v45;
  *v39 = v44;
  v39[1] = v40;
  *(v0 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_isSidebandDownloadedMenu) = v46;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A8AAC4(char a1)
{
  v1 = 0x55505F5954504D45;
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_1_130();
      v1 = v2 - 5;
      break;
    case 2:
      OUTLINED_FUNCTION_1_130();
      v1 = v5 - 1;
      break;
    case 3:
      v1 = 0xD000000000000015;
      break;
    case 4:
    case 5:
      v1 = 0x5F5952415242494CLL;
      break;
    case 6:
      v1 = 0xD000000000000015;
      break;
    case 7:
      OUTLINED_FUNCTION_1_130();
      v1 = v6 - 4;
      break;
    case 8:
      OUTLINED_FUNCTION_1_130();
      v1 = v7 - 2;
      break;
    case 9:
      v1 = 0x534C41544E4552;
      break;
    case 10:
      v1 = 0x44414F4C4E574F44;
      break;
    case 11:
      OUTLINED_FUNCTION_1_130();
      v1 = v3 - 3;
      break;
    case 12:
      OUTLINED_FUNCTION_1_130();
      v1 = v4 + 1;
      break;
    case 13:
      v1 = 0xD000000000000015;
      break;
    case 14:
      v1 = 0;
      break;
    default:
      break;
  }

  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    OUTLINED_FUNCTION_16_0();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_15_19();
    v10 = [v9 localizedStringForKey_];

    if (v10)
    {
      sub_1E4205F14();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E3A8ACE0(char a1)
{
  switch(a1)
  {
    case 2:
    case 3:
    case 14:
      OUTLINED_FUNCTION_58_4();
      break;
    case 6:
      OUTLINED_FUNCTION_7_105();
      break;
    case 10:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

void sub_1E3A8ADF4(char a1)
{
  switch(a1)
  {
    case 7:
      OUTLINED_FUNCTION_23();
      break;
    case 8:
      OUTLINED_FUNCTION_12_72(0x6F68u);
      break;
    case 10:
      OUTLINED_FUNCTION_4_108(0x6F64u);
      break;
    case 12:
      OUTLINED_FUNCTION_11_76(0x6166u);
      break;
    default:
      return;
  }
}

uint64_t sub_1E3A8AF80(char a1)
{
  result = 0x7550207974706D45;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      result = 0x796C746E65636552;
      break;
    case 4:
      result = 0x736569766F4DLL;
      break;
    case 5:
      v3 = 0x776F68535654;
      goto LABEL_9;
    case 6:
      result = OUTLINED_FUNCTION_7_105();
      break;
    case 7:
      result = 17459;
      break;
    case 8:
      result = OUTLINED_FUNCTION_12_72(0x6F48u);
      break;
    case 9:
      v3 = 0x6C61746E6552;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    case 10:
      result = OUTLINED_FUNCTION_4_108(0x6F44u);
      break;
    case 11:
      result = 0x72616853656D6F48;
      break;
    case 12:
      result = OUTLINED_FUNCTION_11_76(0x6146u);
      break;
    case 13:
    case 14:
      result = OUTLINED_FUNCTION_58_4();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3A8B094()
{
  v0 = swift_allocObject();
  sub_1E3A8B0EC();
  return v0;
}

void sub_1E3A8B0EC()
{
  OUTLINED_FUNCTION_31_1();
  v36 = v1;
  v35 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF319A8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_105();
  v15 = sub_1E41FE5E4();
  v17 = v16;
  (*(v13 + 8))(v0, v11);
  *(v0 + 16) = v15;
  *(v0 + 24) = v17;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF319A0);
  *&v42[0] = 0;
  *(v0 + 112) = sub_1E3B508D0(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA58);
  LOBYTE(v42[0]) = 1;
  *(v0 + 120) = sub_1E3B508D0(v42);
  *(v0 + 128) = 0;
  v18 = OBJC_IVAR____TtC8VideosUI11LibMenuItem__lockupCollection;
  *&v42[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D158);
  sub_1E4200634();
  (*(v7 + 32))(v0 + v18, v10, v5);
  v19 = OBJC_IVAR____TtC8VideosUI11LibMenuItem_lockupCollectionChangeSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF319B0);
  swift_allocObject();
  *(v0 + v19) = sub_1E4200544();
  v20 = (v0 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_nextPaginationRequestEndPoint);
  *v20 = 0;
  v20[1] = 0;
  v21 = *v4;
  v41 = *(v4 + 16);
  v22 = v41;
  v42[0] = v21;
  *(v0 + 72) = v21;
  *(v0 + 32) = 14;
  *(v0 + 40) = v22;
  v40 = *(v4 + 32);
  *(v0 + 56) = v40;
  v38 = sub_1E4205F14();
  v39 = v23;
  sub_1E383A1D0(v42, v37);
  sub_1E383A1D0(&v41, v37);
  sub_1E383A1D0(&v40, v37);
  MEMORY[0x1E69109E0](95, 0xE100000000000000);
  v24 = *(v4 + 48);
  v25 = *(v4 + 56);

  MEMORY[0x1E69109E0](v24, v25);
  sub_1E3924220(v4);

  v26 = v38;
  v27 = v39;
  type metadata accessor for Metrics();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v29;
  v30 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v26;
  *(inited + 56) = v27;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v31;
  *(inited + 120) = v30;
  *(inited + 96) = v26;
  *(inited + 104) = v27;

  v32 = sub_1E4205CB4();
  *(v0 + 88) = sub_1E3BA5560(v32, 1);
  v33 = (v0 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier);
  v34 = v36;
  *v33 = v35;
  v33[1] = v34;
  *(v0 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_isSidebandDownloadedMenu) = 0;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A8B48C()
{
  v1 = v0;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1E42074B4();
  v18 = 0;
  v19 = 0xE000000000000000;
  MEMORY[0x1E69109E0](0x49756E654D62694CLL, 0xED0000203A6D6574);
  MEMORY[0x1E69109E0](*(v1 + 40), *(v1 + 48));
  MEMORY[0x1E69109E0](2108704, 0xE300000000000000);
  v2 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v2);

  v3 = MEMORY[0x1E69109E0](0xD000000000000010, 0x80000001E426EEE0);
  v4 = (*(*v0 + 256))(v3);
  v5 = (v4 & 1) == 0;
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v5)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v6, v7);

  v8 = MEMORY[0x1E69109E0](0x206D657469202D0ALL, 0xEE0020746E756F63);
  v9 = (*(*v0 + 312))(v8);
  if (v9)
  {
    v10 = sub_1E32AE9B0(v9);

    v11 = MEMORY[0x1E69E6530];
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v15 = 0;
    v16 = 0;
  }

  v14 = v10;
  v17 = v11;
  v12 = sub_1E3294FA4(&v14);
  MEMORY[0x1E69109E0](v12);

  MEMORY[0x1E69109E0](0x72656E776F202D0ALL, 0xEC000000203A6449);
  MEMORY[0x1E69109E0](*(v1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier), *(v1 + OBJC_IVAR____TtC8VideosUI11LibMenuItem_ownerIdentifier + 8));
  return v18;
}

uint64_t sub_1E3A8B6CC()
{
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 472))(0, 0);
  return (*(**(v0 + 88) + 296))(v2);
}

uint64_t sub_1E3A8B754(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_8();
  v8 = *(v7 + 808);

  v8(&v27, v3);

  if (!v28)
  {
    return sub_1E3A8D164(&v27);
  }

  v25 = a2;
  v26 = a3;
  sub_1E3251BE8(&v27, v29);
  result = sub_1E32AE9B0(a1);
  v10 = result;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v10 == v11)
    {
      v20 = v30;
      v21 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = a1;
      v23[4] = v25;
      v23[5] = v26;
      v24 = *(v21 + 128);

      v24(v3, v12, sub_1E3A8D1CC, v23, v20, v21);

      return __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v11, a1);
    }

    else
    {
      if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }
    }

    if (__OFADD__(v11, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_8();
    (*(v13 + 1496))(&v27);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = OUTLINED_FUNCTION_14_83();
      v12 = sub_1E3923890(v16, v17, v18, v19);
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_1E3923890((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    result = sub_1E3251BE8(&v27, &v12[5 * v15 + 4]);
    ++v11;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

BOOL sub_1E3A8B9F8()
{
  type metadata accessor for LibMenuItem();
  if ((sub_1E3A8BA7C(*(v0 + 32)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 312))();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  sub_1E32AE9B0(v3);
  OUTLINED_FUNCTION_15_19();
  return v0 == 0;
}

uint64_t sub_1E3A8BA7C(char a1)
{
  sub_1E3A8ADF4(a1);
  v3 = v2;
  if (v1 == 0x7365726E6567 && v2 == 0xE600000000000000)
  {
    goto LABEL_16;
  }

  v5 = v1;
  v6 = sub_1E42079A4();

  if (v6)
  {
    goto LABEL_17;
  }

  if (v5 == 0x654D796C696D6166 && v3 == 0xED0000737265626DLL)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_16_0();
  v8 = sub_1E42079A4();

  if (v8)
  {
LABEL_17:
    v11 = 0;
    return v11 & 1;
  }

  if (v5 == 0x72616853656D6F68 && v3 == 0xEB00000000676E69)
  {
LABEL_16:

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_16_0();
  v10 = sub_1E42079A4();

  v11 = v10 ^ 1;
  return v11 & 1;
}

void sub_1E3A8BB8C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v54 = v3;
  v55 = v2;
  OUTLINED_FUNCTION_8();
  v53 = v4;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v14 = sub_1E324FBDC();
  v15 = *(v7 + 16);
  v57 = v14;
  v58 = v7 + 16;
  v56 = v15;
  (v15)(v13);

  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v52 = OUTLINED_FUNCTION_100();
    v61[0] = v52;
    *v18 = 136315138;
    v19 = (*(*v0 + 432))();
    v21 = v10;
    v22 = v5;
    v23 = v7;
    v24 = sub_1E3270FC8(v19, v20, v61);

    *(v18 + 4) = v24;
    v7 = v23;
    v5 = v22;
    v10 = v21;
    v1 = v0;
    _os_log_impl(&dword_1E323F000, v16, v17, "LibMenuItem:: fetchCollectionData for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v25 = *(v7 + 8);
  v25(v13, v5);
  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_8();
  v27 = *(v26 + 808);

  v27(&v59, v1);

  if (v60)
  {
    sub_1E3251BE8(&v59, v61);
    OUTLINED_FUNCTION_111();
    if ((*(v28 + 256))())
    {
      type metadata accessor for LibMenuItem();
      v29 = v1[32];
      if (sub_1E3A8BA7C(v29))
      {
        OUTLINED_FUNCTION_111();
        v31 = (*(v30 + 392))();
        v33 = v32;
        sub_1E3A8ADF4(v29);
        if (v35 == 0x7550746E65636572 && v34 == 0xEF73657361686372)
        {

          v37 = 1;
        }

        else
        {
          v37 = sub_1E42079A4();
        }

        v44 = v62;
        v45 = v63;
        __swift_project_boxed_opaque_existential_1(v61, v62);
        v46 = swift_allocObject();
        swift_weakInit();
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        *(v47 + 24) = v37 & 1;
        *(v47 + 32) = v31;
        *(v47 + 40) = v33;
        v48 = v54;
        v49 = v55;
        *(v47 + 48) = v55;
        *(v47 + 56) = v48;
        *(v47 + 64) = v53;
        v50 = *(v45 + 112);

        sub_1E34AF604(v49);
        v50(v1, sub_1E3A8D5C4, v47, v44, v45);
      }

      else if (v55)
      {
        v55(0, 0);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v61);
  }

  else
  {
    sub_1E3A8D164(&v59);
    v56(v10, v57, v5);

    v38 = sub_1E41FFC94();
    v39 = sub_1E4206814();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = OUTLINED_FUNCTION_100();
      v61[0] = v41;
      *v40 = 136315138;
      v42 = (*(*v1 + 432))();
      sub_1E3270FC8(v42, v43, v61);
      OUTLINED_FUNCTION_15_19();
      *(v40 + 4) = v1;
      _os_log_impl(&dword_1E323F000, v38, v39, "LibMenuItem:: can not find the source for %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v25(v10, v5);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A8C154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v115 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v114 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v104 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v104 - v40;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_31;
  }

  v43 = Strong;
  v105 = v35;
  v107 = v38;
  v113 = v23;
  sub_1E3B7B1C8();
  OUTLINED_FUNCTION_8();
  v45 = *(v44 + 816);

  v46 = v45(v43);

  if (v46 & 1) == 0 || (v28)
  {
    v117 = v30;

    v106 = 0;
    v51 = 0;
    v52 = v31;
  }

  else
  {
    v106 = v26 != 0;
    if (v26)
    {
      OUTLINED_FUNCTION_71_2();
      v48 = (*(v47 + 312))();
      v49 = MEMORY[0x1E69E7CC0];
      if (v48)
      {
        v49 = v48;
      }

      v117 = v49;

      sub_1E399E150(v50);
    }

    else
    {
      v117 = v30;
    }

    OUTLINED_FUNCTION_71_2();
    v54 = (*(v53 + 392))();
    v52 = v31;
    if (v55)
    {
      v56 = v54;
      v57 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = 0xD000000000000011;
      *(inited + 40) = 0x80000001E426F010;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v56;
      *(inited + 56) = v57;
      v51 = sub_1E4205CB4();
    }

    else
    {
      v51 = 0;
    }
  }

  v59 = v114;
  v60 = sub_1E324FBDC();
  v61 = *(v59 + 16);
  v108 = v60;
  v110 = v59 + 16;
  v109 = v61;
  v61(v41);

  v62 = sub_1E41FFC94();
  v63 = sub_1E4206814();

  v64 = os_log_type_enabled(v62, v63);
  v111 = v51;
  v112 = v30;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v66 = v30;
    v67 = OUTLINED_FUNCTION_100();
    v116 = v67;
    *v65 = 134218242;
    *(v65 + 4) = sub_1E32AE9B0(v66);

    *(v65 + 12) = 2080;
    sub_1E3A8ADF4(*(v43 + 32));
    v70 = sub_1E3270FC8(v68, v69, &v116);

    *(v65 + 14) = v70;
    v59 = v114;
    _os_log_impl(&dword_1E323F000, v62, v63, "LibMenuItem:: fetched %ld items for %s", v65, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v71 = *(v59 + 8);
  v71(v41, v52);
  OUTLINED_FUNCTION_71_2();
  (*(v72 + 264))(0);
  v73 = v117;
  OUTLINED_FUNCTION_71_2();
  v75 = *(v74 + 312);

  v77 = v75(v76);
  if (v77)
  {
    v78 = sub_1E3A8CF58(v73, v77);

    if (v78)
    {

      v79 = OUTLINED_FUNCTION_5_105(&a14);
      v80(v79);

      v81 = sub_1E41FFC94();
      v82 = sub_1E4206814();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = OUTLINED_FUNCTION_100();
        v116 = v84;
        *v83 = 136315138;
        sub_1E3A8ADF4(*(v43 + 32));
        v87 = sub_1E3270FC8(v85, v86, &v116);

        *(v83 + 4) = v87;
        _os_log_impl(&dword_1E323F000, v81, v82, "LibMenuItem:: receive the same collection. Ignore updating, type %s", v83, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v84);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v88 = v105;
LABEL_27:
        v103 = v52;
        goto LABEL_28;
      }

LABEL_26:

      v88 = v52;
      goto LABEL_27;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_71_2();
  v90 = *(v89 + 320);

  v90(v91);
  if (v106)
  {
  }

  else
  {
    v116 = v73;

    sub_1E4200524();
  }

  v92 = OUTLINED_FUNCTION_5_105(&a16);
  v93(v92);

  v81 = sub_1E41FFC94();
  v94 = sub_1E4206814();

  if (!os_log_type_enabled(v81, v94))
  {
    goto LABEL_26;
  }

  v95 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  v114 = v52;
  v116 = v96;
  *v95 = 136315394;
  v97 = sub_1E41E1364(v43);
  v99 = sub_1E3270FC8(v97, v98, &v116);

  *(v95 + 4) = v99;
  *(v95 + 12) = 2080;
  sub_1E3A8ADF4(*(v43 + 32));
  v102 = sub_1E3270FC8(v100, v101, &v116);

  *(v95 + 14) = v102;
  _os_log_impl(&dword_1E323F000, v81, v94, "LibMenuItem:: receive new lockup collection. %s, type %s", v95, 0x16u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_6_0();

  v88 = v52;
  v103 = v114;
LABEL_28:
  v71(v88, v103);
  if (v115)
  {
    v115(v111, v112);
  }

LABEL_31:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A8C8EC()
{

  v1 = OBJC_IVAR____TtC8VideosUI11LibMenuItem__lockupCollection;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF319A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1E3A8C9E0()
{
  sub_1E3A8C8EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3A8CA38@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1E3A8CA48@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LibMenuItem();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A8CAD8(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4();
  }
}

uint64_t sub_1E3A8CB10()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3A8CB9C()
{
  sub_1E4207B44();
  sub_1E3A8CAD0();
  return sub_1E4207BA4();
}

uint64_t sub_1E3A8CC1C(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return 15;
  }

  else
  {
    return byte_1E42B6D1A[a1];
  }
}

void sub_1E3A8CC3C(char a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 4:
    case 5:
    case 8:
    case 9:
    case 10:
    case 13:
      return;
    default:
      sub_1E3A8ADF4(a1);
      break;
  }
}

uint64_t sub_1E3A8CD64()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3A8CDBC(char a1)
{
  sub_1E4207B44();
  sub_1E3A8ADF4(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3A8CE28(uint64_t a1, char a2)
{
  sub_1E3A8ADF4(a2);
  sub_1E4206014();
}

uint64_t sub_1E3A8CE84(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3A8ADF4(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3A8CEE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A8CD64();
  *a1 = result;
  return result;
}

void sub_1E3A8CF14(void *a1@<X8>)
{
  sub_1E3A8ADF4(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1E3A8CF58(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v14 = 0;
      return v14 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v14 = 1;
      return v14 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = type metadata accessor for LibLockupViewModel();
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }
      }

      sub_1E3A8D91C(qword_1EE277BC8, type metadata accessor for LibLockupViewModel);
      v14 = sub_1E4205E84();

      if (v14)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v14 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3A8D164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3A8D1CC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_5_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    v40 = v2;
    result = sub_1E32AE9B0(v1);
    v4 = result;
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 != v5)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](v5, v1);
        v7 = result;
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v7 = *(v1 + 8 * v5 + 32);
      }

      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      v8 = *(v7 + 280);
      v9 = *(v7 + 288);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v13 = OUTLINED_FUNCTION_14_83();
        result = sub_1E3740F88(v13, v14, v15, v16);
        v6 = result;
      }

      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1E3740F88((v10 > 1), v11 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      ++v5;
    }

    v17 = sub_1E32772D8(v6);
    OUTLINED_FUNCTION_111();
    v18 += 39;
    v19 = *v18;
    v20 = (*v18)();
    if (v20)
    {
      v21 = v20;
      v38 = v19;
      result = sub_1E32AE9B0(v20);
      v22 = result;
      v23 = 0;
      v41 = v21 & 0xFFFFFFFFFFFFFF8;
      v42 = v21 & 0xC000000000000001;
      v39 = v21;
      v24 = v21 + 32;
LABEL_16:
      while (v23 != v22)
      {
        if (v42)
        {
          result = MEMORY[0x1E6911E60](v23, v39);
          v25 = result;
        }

        else
        {
          if (v23 >= *(v41 + 16))
          {
            goto LABEL_40;
          }

          v25 = *(v24 + 8 * v23);
        }

        if (__OFADD__(v23++, 1))
        {
          goto LABEL_39;
        }

        if (*(v17 + 16))
        {
          v28 = *(v25 + 280);
          v27 = *(v25 + 288);
          sub_1E4207B44();

          sub_1E4206014();
          v29 = sub_1E4207BA4();
          v30 = ~(-1 << *(v17 + 32));
          while (1)
          {
            v31 = v29 & v30;
            if (((*(v17 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
            {
              break;
            }

            v32 = (*(v17 + 48) + 16 * v31);
            if (*v32 != v28 || v32[1] != v27)
            {
              v34 = sub_1E42079A4();
              v29 = v31 + 1;
              if ((v34 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_16;
          }
        }

        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        result = sub_1E4207554();
      }

      v19 = v38;
    }

    else
    {
    }

    OUTLINED_FUNCTION_111();
    (*(v35 + 320))();

    (v19)(v36);
    sub_1E4200524();

    v40(v37);
  }

  return result;
}

uint64_t type metadata accessor for LibMenuItem()
{
  result = qword_1EE2A8350;
  if (!qword_1EE2A8350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3A8D670()
{
  sub_1E3A8D754();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3A8D754()
{
  if (!qword_1EE289F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D158);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289F88);
    }
  }
}

uint64_t getEnumTagSinglePayload for LibMenuType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LibMenuType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3A8D91C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1E3A8D9D0()
{
  v3.receiver = v0;
  v3.super_class = _s12GradientViewCMa();
  v1 = objc_msgSendSuper2(&v3, sel_layer);

  return v1;
}

id sub_1E3A8DA18()
{
  OUTLINED_FUNCTION_0_8();
  v5 = _s12GradientViewCMa();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3A8DA88(void *a1)
{
  v5.receiver = v1;
  v5.super_class = _s12GradientViewCMa();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

double sub_1E3A8DB30()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_transitionAnimationDuration;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3A8DB64(double a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_transitionAnimationDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E3A8DC64()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_gradientColor;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3A8DD2C()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isSingleCase;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3A8DD60(char a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isSingleCase;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void sub_1E3A8DDEC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 superview];
    v5 = sub_1E3A8FC94();
    v6 = v5;
    if (v4)
    {
      sub_1E3280A90(0, &qword_1EE23AE80);
      v7 = sub_1E4206F64();

      if (v7)
      {
        v8 = v3;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
    }

    v9 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___visualEffectContainerView;
    v10 = *(v1 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___visualEffectContainerView);
    [v10 vui:v3 addSubview:0 oldView:?];

    v11 = sub_1E3A8FCE0();
    if (!v11)
    {
LABEL_15:

      goto LABEL_16;
    }

    v8 = v11;
    v12 = [v8 superview];
    if (!v12 || (v13 = v12, v14 = *(v1 + v9), sub_1E3280A90(0, &qword_1EE23AE80), v15 = v14, v16 = sub_1E4206F64(), v13, v15, (v16 & 1) == 0))
    {
      if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
      {
        v18 = v3;
        v3 = v8;
        goto LABEL_13;
      }

      v17 = *(v1 + v9);
      [v17 vui:v8 addSubview:0 oldView:?];
    }

    v18 = v8;
LABEL_13:

    goto LABEL_14;
  }

LABEL_16:
  if (TVAppFeature.isEnabled.getter(10))
  {
    OUTLINED_FUNCTION_15_36();
  }

  else
  {
    v19 = sub_1E3A8FCA8();
    v32 = [v19 superview];

    if (v32)
    {
      OUTLINED_FUNCTION_15_36();
    }

    else
    {
      v22 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___visualEffectView;
      [*(v1 + OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___visualEffectView) setVuiAlpha_];
      v23 = sub_1E3A8FC94();
      [v23 addSubview_];

      v24 = [*(v1 + v22) vuiLayer];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1E3A8FD60();
        v27 = [v26 layer];

        [v25 setMask_];
      }

      v28 = [*(v1 + v22) vuiLayer];
      if (v28)
      {
        v29 = v28;
        v30 = sub_1E3A8FDD4();
        [v29 addSublayer_];
      }

      OUTLINED_FUNCTION_15_36();

      sub_1E3A90214();
    }
  }
}

uint64_t sub_1E3A8E0FC()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_disableGradient;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

void sub_1E3A8E130()
{
  OUTLINED_FUNCTION_79_0();
  v2 = v1;
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_disableGradient;
  swift_beginAccess();
  v4 = v0[v3];
  v0[v3] = v2;
  v5 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_disableGradient;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (v4 != v0[v5])
  {
    v6 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView;
    v7 = *&v0[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_nonPlaybackGradientView];
    if (v0[v5])
    {
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = *&v0[v6];
      }

      else
      {
        v8 = 0;
      }

      *&v0[v6] = 0;

      v12 = sub_1E3A8FCE0();
      if (v12)
      {
        v13 = v12;
        [v12 removeFromSuperview];
      }

      v14 = *&v0[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___darkeningGradientView];
      *&v0[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___darkeningGradientView] = 0;
      sub_1E329CC84(v14);
    }

    else
    {
      if (!v7)
      {
        _s12GradientViewCMa();
        v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v10 = *&v0[v6];
        *&v0[v6] = v9;
      }

      v11 = sub_1E3A8FCE0();
      if (v11)
      {
      }

      else
      {
        _s12GradientViewCMa();
        v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v16 = *&v0[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___darkeningGradientView];
        *&v0[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___darkeningGradientView] = v15;
        sub_1E329CC84(v16);
      }

      sub_1E3A8DDEC();
    }

    [v0 vui_setNeedsLayout];
  }

  OUTLINED_FUNCTION_78_8();
}

void (*sub_1E3A8E280())(void **a1)
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_disableGradient;
  OUTLINED_FUNCTION_4_13();
  *(v3 + 32) = *(v1 + v4);
  return sub_1E3A8E2EC;
}

void sub_1E3A8E2EC(void **a1)
{
  v1 = *a1;
  sub_1E3A8E130();

  free(v1);
}

void sub_1E3A8E32C(void *a1)
{
  v19 = *&v2[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView];
  *&v2[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView] = a1;
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_titleView;
  v4 = a1;
  if (OUTLINED_FUNCTION_61_11(v4, v5, v6, v7, v8, v9, v10, v11, v18, v19))
  {
    v12 = *&v2[v3];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1E3A8FC94();
      v15 = [v14 superview];

      if (v15)
      {

        v13 = v15;
      }

      else
      {
        [v2 vui:*&v2[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___visualEffectContainerView] insertSubview:v13 belowSubview:0 oldView:?];
      }
    }

    sub_1E3A8DDEC();
    [v2 vui_setNeedsLayout];
  }

  OUTLINED_FUNCTION_200();
}

void *sub_1E3A8E424()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_badgeView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3A8E460()
{
  OUTLINED_FUNCTION_79_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_56_5();
  v4 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_badgeView;
  v5 = v3;
  v6 = OUTLINED_FUNCTION_10_4();
  if (OUTLINED_FUNCTION_58_17(v6, sel_vui_addSubview_oldView_, *&v1[v4]))
  {
    v7 = *&v1[v4];
    if (v7)
    {
      v8 = v7;
      OUTLINED_FUNCTION_19_36(v8, sel_vui_bringSubviewToFront_);
      [v1 vui_setNeedsLayout];
    }
  }

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3A8E4F8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3A8E574()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_legacyScorecardView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3A8E5BC()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3A8E638(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void sub_1E3A8E6B8(void *a1)
{
  v18 = *&v2[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView];
  *&v2[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView] = a1;
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_bannerScorecardView;
  v4 = a1;
  if (OUTLINED_FUNCTION_61_11(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18))
  {
    v12 = *&v2[v3];
    if (v12)
    {
      v13 = v12;
      [v2 vui:v13 bringSubviewToFront:?];
      v14 = [objc_opt_self() clearColor];
      [v13 setVuiBackgroundColor_];

      [v2 vui_setNeedsLayout];
    }
  }

  OUTLINED_FUNCTION_200();
}

void *sub_1E3A8E7AC()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scorecardView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3A8E7F4()
{
  OUTLINED_FUNCTION_79_0();
  v2 = v1;
  v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_102();
  v6 = *&v0[v5];
  *&v0[v5] = v4;
  v7 = *v2;
  v8 = v4;
  OUTLINED_FUNCTION_25();
  v9 = swift_beginAccess();
  if (OUTLINED_FUNCTION_58_17(v9, sel_vui_addSubview_oldView_, *&v0[v7]))
  {
    v10 = *&v0[v7];
    if (v10)
    {
      v11 = v10;
      OUTLINED_FUNCTION_19_36(v11, sel_vui_bringSubviewToFront_);
      v12 = [objc_opt_self() clearColor];
      [v11 setVuiBackgroundColor_];

      [v0 vui_setNeedsLayout];
    }
  }

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3A8E8E4()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3A8E9C4()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scoreboardViewModel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1E3A8EA8C()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageForMaterial;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E3A8EB54()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageHasChanged;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3A8EB88(char a1)
{
  v3 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_backgroundImageHasChanged;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E3A8EC14()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_scorecardViewBackgroundImage;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1E3A8ECDC()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_pendingOperation;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1E3A8EDA4()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isOperationCancelledObserver;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1E3A8EE6C()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_isOperationFinishedObserver;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3A8EF70(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 640))();
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_1E3280A90(0, &qword_1EE23AE00);
      v14 = a1;
      v6 = sub_1E4206F64();

      if (v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    OUTLINED_FUNCTION_200();
    return;
  }

  OUTLINED_FUNCTION_12_5();
  (*(v7 + 672))(1);
  OUTLINED_FUNCTION_36_3();
  v9 = *((*v2 & v8) + 0x288);
  a1;
  v9(a1);
  v10 = OUTLINED_FUNCTION_1_36();
  sub_1E388C300(0, v10, v11);
LABEL_9:
  OUTLINED_FUNCTION_200();
}

void (*sub_1E3A8F0F0(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  OUTLINED_FUNCTION_21();
  *a1 = (*(v3 + 640))();
  return sub_1E3A8F16C;
}

void sub_1E3A8F16C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1E3A8EF70(v2);
  }

  else
  {
    sub_1E3A8EF70(*a1);
  }
}

void *sub_1E3A8F1D4()
{
  v1 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_verticalStackView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3A8F210()
{
  OUTLINED_FUNCTION_79_0();
  v3 = v2;
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_56_5();
  v4 = OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView_verticalStackView;
  v5 = v3;
  v6 = OUTLINED_FUNCTION_10_4();
  if (OUTLINED_FUNCTION_58_17(v6, sel_vui_addSubview_oldView_, *&v1[v4]))
  {
    v7 = *&v1[v4];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1E3A8FC94();
      v10 = [v9 superview];

      if (v10)
      {

        v8 = v10;
      }

      else
      {
        [v1 vui:*&v1[OBJC_IVAR____TtCC8VideosUI16FlowcaseViewCell19FlowcaseOverlayView____lazy_storage___visualEffectContainerView] insertSubview:v8 belowSubview:0 oldView:?];
      }
    }

    sub_1E3A8DDEC();
    [v1 vui_setNeedsLayout];
  }

  OUTLINED_FUNCTION_78_8();
}

uint64_t sub_1E3A8F2F8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}
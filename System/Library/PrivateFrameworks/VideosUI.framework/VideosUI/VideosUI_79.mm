_BYTE *storeEnumTagSinglePayload for BackgroundPlaybackUIInteractionManager.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3C9C260()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x100))();
  v3 = *((*v1 & *v0) + 0x2A8);
  v4 = v2 & 1;

  return v3(v4);
}

void type metadata accessor for VUIUserInterfaceStyle()
{
  if (!qword_1EE23B0B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B0B8);
    }
  }
}

void sub_1E3C9C3A0()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (!(*((*MEMORY[0x1E69E7D40] & *Strong) + 0x178))())
    {
      sub_1E3C9B694();
    }
  }
}

void sub_1E3C9C42C()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x2C0))();
  }
}

uint64_t sub_1E3C9C4AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3C9C51C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3C9C58C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_documentController) = a1;

  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_documentController);
  if (v2)
  {
    OUTLINED_FUNCTION_14_0();
    *(v2 + 24) = &off_1F5D7CF20;
    swift_unknownObjectWeakAssign();
  }
}

id sub_1E3C9C60C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t))
{
  v8 = v7;
  v105 = a3;
  v106 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v107 = v103 - v16;
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v103 - v25;
  if (sub_1E3C9D138())
  {
    v104 = a6;
    sub_1E3C9D1A0();
    type metadata accessor for LibLockupViewModel();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_31_4();

      sub_1E3C9D334(v8);
LABEL_10:

      goto LABEL_11;
    }

    type metadata accessor for PlaybackSongViewModel();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_31_4();

      sub_1E3C9D578(v8);
      goto LABEL_10;
    }

    sub_1E3C9D644();
    sub_1E3C9C58C(v65);
    if (*&v8[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_documentController])
    {
LABEL_11:
      v38 = &v8[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_presentingView];
      v39 = *&v8[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_presentingView];
      *v38 = a4;
      *(v38 + 1) = a5;

      *&v8[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_originatorViewModel] = a1;
      v40 = a4;

      v41 = sub_1E41FE874();
      OUTLINED_FUNCTION_2();
      v43 = *(v42 + 16);
      v44 = v107;
      v103[1] = v42 + 16;
      v43(v107, a2, v41);
      OUTLINED_FUNCTION_48_8(v44);
      v45 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_indexPath;
      OUTLINED_FUNCTION_11_3();

      sub_1E3C9C51C(v44, &v8[v45]);
      swift_endAccess();
      swift_unknownObjectWeakAssign();
      v46 = &v8[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_delegate];
      OUTLINED_FUNCTION_3_0();
      v47 = v106;
      *(v46 + 1) = v106;
      swift_unknownObjectWeakAssign();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_30();
        v49 = *(v48 + 1232);

        v51 = v49(v50);
      }

      else
      {
        type metadata accessor for PlaybackSongViewModel();
        if (!swift_dynamicCastClass())
        {
          v76 = (*(*a1 + 544))();
          if (v76)
          {
            v77 = v76;
            v78 = [v76 contextMenuEventDataSource];

            if (v78)
            {
              v79 = [v78 documentDataSource];

              if (v79)
              {
                v80 = [v79 prefetchData];
                if (v80 && (v81 = v80, v82 = [v80 jsonData], v81, v82))
                {
                  v83 = sub_1E4205C64();

                  sub_1E374BD08(v83);
                  OUTLINED_FUNCTION_16_5();

                  v109[3] = &qword_1F5D5CE68;
                  v109[4] = &off_1F5D5C708;
                  LOWORD(v109[0]) = 230;
                  sub_1E3F9F164(v109);

                  if (v111)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
                    if (swift_dynamicCast())
                    {
                      v84 = v108;
                      __swift_destroy_boxed_opaque_existential_1(v109);
                      type metadata accessor for ViewModel();
                      v55 = sub_1E39BED80(230, v84, 0);

                      v47 = v106;
                      if (v55)
                      {
LABEL_16:
                        v106 = v43;
                        v56 = v104;
                        if (v104)
                        {
                          ObjectType = swift_getObjectType();
                          if ((*(v47 + 1))(ObjectType, v47) != 7)
                          {
                            v58 = (*(*v55 + 488))();
                            if (v58)
                            {
                              v59 = sub_1E373E010(39, v58);

                              if (v59)
                              {
                                OUTLINED_FUNCTION_47_0();
                                v61 = (*(v60 + 392))();
                                if (v61)
                                {
                                  v62 = v61;
                                  sub_1E3C2AE10();
                                  v64 = v63;
                                  (*(*v62 + 1640))();
                                }

                                else
                                {
                                }

                                v56 = v104;
                              }
                            }
                          }
                        }

                        type metadata accessor for ContextMenuPreviewItemController();
                        v85 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                        sub_1E3C9DC58();
                        v87 = v86;
                        if (v56)
                        {
                          swift_getObjectType();
                          v88 = v107;
                          v106(v107, a2, v41);
                          OUTLINED_FUNCTION_48_8(v88);
                          OUTLINED_FUNCTION_46_4();
                          v89();
                          sub_1E325F6F0(v88, &qword_1ECF309A0);
                        }

                        sub_1E40D7368(v55, v87);
                        v90 = sub_1E40D76E8(v87);
                        v92 = v91;
                        v93 = v85;
                        [v93 setPreferredContentSize_];

                        v94 = *&v8[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_previewController];
                        *&v8[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_previewController] = v93;
                      }
                    }

                    else
                    {

                      __swift_destroy_boxed_opaque_existential_1(v109);
                    }
                  }

                  else
                  {

                    __swift_destroy_boxed_opaque_existential_1(v109);
                    sub_1E325F6F0(v110, &unk_1ECF296E0);
                  }
                }

                else
                {
                }
              }
            }
          }

LABEL_41:
          OUTLINED_FUNCTION_15_1();
          v95 = swift_allocObject();
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_2_4();
          v96 = swift_allocObject();
          *(v96 + 16) = sub_1E3CA29DC;
          *(v96 + 24) = v95;
          OUTLINED_FUNCTION_15_1();
          v97 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1E3280A90(0, &qword_1ECF341E0);
          v98 = sub_1E41FE7E4();
          v37 = sub_1E3B8D318(v98, sub_1E3CA2A24, v97, sub_1E3CA29E4, v96);
          v99 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_currentContextMenuConfiguration;
          OUTLINED_FUNCTION_3_0();
          v100 = *&v8[v99];
          *&v8[v99] = v37;
          v101 = v37;

          return v37;
        }

        OUTLINED_FUNCTION_30();
        v53 = *(v52 + 896);

        v51 = v53(v54);
      }

      v55 = v51;

      if (v55)
      {
        goto LABEL_16;
      }

      goto LABEL_41;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v66(v26);

    v67 = v8;
    v68 = sub_1E41FFC94();
    v69 = sub_1E42067F4();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = OUTLINED_FUNCTION_49_0();
      v109[0] = OUTLINED_FUNCTION_72_0();
      *v70 = 136446466;
      OUTLINED_FUNCTION_23();
      *(v70 + 4) = OUTLINED_FUNCTION_26_68(v71, v72, v109);
      *(v70 + 12) = 2080;
      v73 = (*(*a1 + 376))();
      v75 = sub_1E3270FC8(v73, v74, v109);

      *(v70 + 14) = v75;
      _os_log_impl(&dword_1E323F000, v68, v69, "%{public}s no documentController for viewModel %s", v70, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    (*(v19 + 8))(v26, v17);
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v27(v23);

    v28 = v8;
    v29 = sub_1E41FFC94();
    v30 = sub_1E4206814();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_49_0();
      v109[0] = OUTLINED_FUNCTION_72_0();
      *v31 = 136446466;
      OUTLINED_FUNCTION_23();
      *(v31 + 4) = OUTLINED_FUNCTION_26_68(v32, v33, v109);
      *(v31 + 12) = 2080;
      v34 = (*(*a1 + 376))();
      v36 = sub_1E3270FC8(v34, v35, v109);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_1E323F000, v29, v30, "%{public}s supportsContextMenu is false for viewModel %s", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_21_0();
    }

    (*(v19 + 8))(v23, v17);
  }

  return 0;
}

uint64_t sub_1E3C9D138()
{
  v3[3] = &unk_1F5D5DAC8;
  v3[4] = &off_1F5D5C998;
  LOBYTE(v3[0]) = 21;
  v0 = j__OUTLINED_FUNCTION_18();
  v1 = sub_1E39C29F0(v3, v0 & 1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1 & 1;
}

uint64_t sub_1E3C9D1A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - v3;
  sub_1E3C9C58C(0);
  *(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_originatorViewModel) = 0;

  v5 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_selectedViewModel;
  OUTLINED_FUNCTION_3_0();
  *(v0 + v5) = 0;

  sub_1E41FE874();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_indexPath;
  OUTLINED_FUNCTION_11_3();
  sub_1E3C9C51C(v4, v0 + v10);
  swift_endAccess();
  v11 = (v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_presentingView);
  v12 = *(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_presentingView);
  *v11 = 0;
  v11[1] = 0;

  *(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_itemViewModels) = 0;

  v13 = (v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_deferredMenuHandler);
  v14 = *(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_deferredMenuHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_1E34AF594(v14);
  v15 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_currentContextMenuConfiguration;
  OUTLINED_FUNCTION_3_0();
  v16 = *(v0 + v15);
  *(v0 + v15) = 0;

  v17 = v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_delegate;
  OUTLINED_FUNCTION_3_0();
  *(v17 + 8) = 0;
  swift_unknownObjectWeakAssign();
  v18 = *(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_previewController);
  *(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_previewController) = 0;

  *(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_downloadStateObservation) = 0;
}

uint64_t sub_1E3C9D334(uint64_t a1)
{
  (*(*a1 + 1216))();
  sub_1E3CA0CDC();

  OUTLINED_FUNCTION_9_2();
  (*(v2 + 1496))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88);
  result = swift_dynamicCast();
  if (result)
  {
    __swift_destroy_boxed_opaque_existential_1(&v6);
    OUTLINED_FUNCTION_111();
    v7[0] = (*(v4 + 1192))();
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36590);
    sub_1E328FCF4(&qword_1ECF36598, &qword_1ECF36590);
    sub_1E4200844();
    OUTLINED_FUNCTION_31_4();

    *(v1 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_libContextMenuObserver) = v7;

    OUTLINED_FUNCTION_9_2();
    return (*(v5 + 1608))();
  }

  return result;
}

uint64_t sub_1E3C9D578(uint64_t a1)
{
  if ((*(*a1 + 888))() >> 62)
  {
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_20_2();
    sub_1E42076C4();
  }

  else
  {

    sub_1E42079D4();
    type metadata accessor for ViewModel();
  }

  sub_1E3CA0CDC();
}

void sub_1E3C9D644()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v9, v2);

  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_6_21();
    v53[0] = OUTLINED_FUNCTION_100();
    *v12 = 136315138;
    v13 = (*(*v1 + 376))();
    v15 = v1;
    v16 = sub_1E3270FC8(v13, v14, v53);

    *(v12 + 4) = v16;
    v1 = v15;
    OUTLINED_FUNCTION_54_1(&dword_1E323F000, v17, v18, "ContextMenuInteractor:: makeDocumentController for viewModel %s");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_6_0();

    v19 = (*(v4 + 8))(v8, v2);
  }

  else
  {

    v19 = (*(v4 + 8))(v8, v2);
  }

  if ((*(*v1 + 648))(v19) && (OUTLINED_FUNCTION_25(), swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), v21 = , Strong) || (v22 = [objc_opt_self() sharedInstance], v23 = objc_msgSend(v22, sel_appController), v22, v23) && (Strong = objc_msgSend(v23, sel_appContext), v23, Strong))
  {
    v24 = (*(*v1 + 544))(v21);
    if (v24 && (v25 = v24, v26 = [v24 contextMenuEventDataSource], v25, v26))
    {
      v27 = [v26 documentDataSource];
      if (v27)
      {
        v28 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *(inited + 32) = 0xD000000000000013;
        *(inited + 40) = 0x80000001E427C060;
        objc_opt_self();
        *(inited + 48) = swift_dynamicCastObjCClass() != 0;
        v30 = sub_1E4205CB4();
        v31 = sub_1E39C2CD0();
        if (v32)
        {
          v33 = v31;
          v34 = v32;
          v53[3] = &unk_1F5D5D528;
          v53[4] = &off_1F5D5C858;
          LOBYTE(v53[0]) = 0;
          v35 = v30;
          v36 = *(**sub_1E3CFEA54() + 376);

          v37 = v36(v33, v34);
          v30 = v35;
          LOBYTE(v33) = v37;

          v38 = sub_1E39C29F0(v53, v33 & 1);
          __swift_destroy_boxed_opaque_existential_1(v53);
          v39 = [v28 prefetchData];
          if (v39)
          {
            v40 = v39;
            v41 = sub_1E3CA2FB8(v39);
            if (v41)
            {
              v42 = v41;
              strcpy(&v51, "teamIsFollowed");
              HIBYTE(v51) = -18;
              sub_1E4207414();
              v52 = MEMORY[0x1E69E6370];
              LOBYTE(v51) = v38 & 1;
              sub_1E329504C(&v51, v50);
              swift_isUniquelyReferenced_nonNull_native();
              v49 = v42;
              v43 = &v49;
              sub_1E377DF14(v50, v53);
              v44 = v49;
              sub_1E375D84C(v53);
              if (v44)
              {
                sub_1E4205C44();
                OUTLINED_FUNCTION_60_1();
              }

              else
              {
                v43 = 0;
              }

              [v40 setPrefetchedDataDict_];
            }

            else
            {
              [v40 setPrefetchedDataDict_];
            }
          }
        }

        type metadata accessor for ContextMenuDocumentController();
        sub_1E3CA0690(v30);

        OUTLINED_FUNCTION_51_1();
        OUTLINED_FUNCTION_46_4();
        sub_1E3F41450(v45, v46, v47, v48);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C9DC58()
{
  OUTLINED_FUNCTION_30();
  v1 = (*(v0 + 544))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 contextMenuEventDataSource];

    if (v3)
    {
      v4 = [v3 documentDataSource];

      if (v4)
      {
        v5 = [v4 uiConfiguration];
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          v7 = v6;
          [v6 preferredSize];
          if (v8 > 0.0)
          {
            [v7 preferredSize];

            return;
          }
        }
      }
    }
  }

  type metadata accessor for ContextMenuPreviewItemViewLayout();
  v9 = OUTLINED_FUNCTION_20_2();
  sub_1E3E09BD8(v9);
}

void sub_1E3C9DD8C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_itemViewModels))
    {

      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v17(v8);
      v18 = v16;
      v19 = sub_1E41FFC94();
      v20 = sub_1E4206814();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = OUTLINED_FUNCTION_6_21();
        v41[0] = OUTLINED_FUNCTION_100();
        *v21 = 136446210;
        OUTLINED_FUNCTION_23();
        *(v21 + 4) = OUTLINED_FUNCTION_26_68(v22, v23, v41);
        OUTLINED_FUNCTION_54_1(&dword_1E323F000, v24, v25, "%{public}s itemViewModels are ready, no need for UIDeferredMenuElement");
        OUTLINED_FUNCTION_5_22();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v4 + 8))(v8, v2);
      sub_1E3280A90(0, &qword_1ECF2BA48);
      sub_1E3C9E1F0();
      OUTLINED_FUNCTION_16_5();

      OUTLINED_FUNCTION_1_188();
      v26 = sub_1E4206E94();
    }

    else
    {
      sub_1E3280A90(0, &qword_1ECF365F0);
      OUTLINED_FUNCTION_4_0();
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = sub_1E3C9E82C(sub_1E3CA337C, v31);
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v33(v11);
      v34 = v16;
      v35 = sub_1E41FFC94();
      v36 = sub_1E4206814();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = OUTLINED_FUNCTION_6_21();
        v41[0] = OUTLINED_FUNCTION_100();
        *v37 = 136446210;
        OUTLINED_FUNCTION_23();
        *(v37 + 4) = OUTLINED_FUNCTION_26_68(v38, v39, v41);
        _os_log_impl(&dword_1E323F000, v35, v36, "%{public}s Creating UIMenu with UIDeferredMenuElement", v37, 0xCu);
        OUTLINED_FUNCTION_5_22();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v4 + 8))(v11, v2);
      sub_1E3280A90(0, &qword_1ECF2BA48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      OUTLINED_FUNCTION_5_10();
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1E4298880;
      *(v40 + 32) = v32;
      OUTLINED_FUNCTION_1_188();
      v26 = sub_1E4206E94();
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v27(v14);
    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1E323F000, v28, v29, "ContextMenuInteractor:: unable to create UIContextMenuActionProvider. self is nil", v30, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    (*(v4 + 8))(v14, v2);
    v26 = 0;
  }

  *v1 = v26;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C9E1F0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  v14 = *&v1[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_presentingView];
  if (!v14)
  {
    OUTLINED_FUNCTION_13_23();
    goto LABEL_19;
  }

  v60 = v1;
  v15 = *&v1[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_presentingView + 8];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v58 = v4;
    v59 = v6;
    v18 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_indexPath;
    v19 = v60;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v20 = sub_1E3C9C4AC(v19 + v18, v13);
    MEMORY[0x1EEE9AC00](v20);
    *(&v56 - 2) = v17;
    v21 = sub_1E3280A90(0, &qword_1EE23B120);
    v22 = v14;
    OUTLINED_FUNCTION_46_4();
    sub_1E4148F70(v23, v24, v25, v21, v26);
    v57 = 0;
    sub_1E325F6F0(v13, &qword_1ECF309A0);
    if (v64[0])
    {
      v61 = v64[0];
      v27 = v64[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF365D0);
      if (swift_dynamicCast())
      {
        v4 = v58;
        if (v65)
        {
          v28 = v66;
          __swift_project_boxed_opaque_existential_1(v64, v65);
          v29 = OUTLINED_FUNCTION_60_1();
          v31 = v30(v29, v28);
          __swift_destroy_boxed_opaque_existential_1(v64);
          if (v31)
          {

            v6 = v59;
LABEL_17:
            v1 = v60;
            goto LABEL_21;
          }

LABEL_16:
          v6 = v59;

          v31 = MEMORY[0x1E69E7CC0];
          goto LABEL_17;
        }

LABEL_15:
        sub_1E325F6F0(v64, &qword_1ECF365C0);
        goto LABEL_16;
      }
    }

    else
    {
      v27 = 0;
    }

    OUTLINED_FUNCTION_13_23();
    v4 = v58;
    goto LABEL_15;
  }

  v62 = v14;
  v63 = v15;
  v32 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF365C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF365D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_13_23();
    v1 = v60;
    goto LABEL_19;
  }

  v1 = v60;
  if (!v65)
  {
LABEL_19:
    sub_1E325F6F0(v64, &qword_1ECF365C0);
    goto LABEL_20;
  }

  v33 = v6;
  v34 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  v35 = OUTLINED_FUNCTION_60_1();
  v36 = v34;
  v6 = v33;
  v31 = v37(v35, v36);
  __swift_destroy_boxed_opaque_existential_1(v64);
  if (!v31)
  {
LABEL_20:
    v57 = 0;

    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v57 = 0;
LABEL_21:
  v60 = MEMORY[0x1E69E7CC0];

  v38 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v38, v4);
  v39 = v1;

  v40 = sub_1E41FFC94();
  v41 = sub_1E4206814();

  v42 = os_log_type_enabled(v40, v41);
  v59 = v31;
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_100();
    v44 = OUTLINED_FUNCTION_100();
    v58 = v4;
    v45 = v44;
    v64[0] = v44;
    *v43 = 136446722;
    *(v43 + 4) = OUTLINED_FUNCTION_4_161("ContextMenuInteractor::");
    v46 = v10;
    *(v43 + 12) = 2048;
    *(v43 + 14) = sub_1E32AE9B0(v3);

    *(v43 + 22) = 2048;
    v47 = v6;
    v48 = sub_1E32AE9B0(v31);

    *(v43 + 24) = v48;

    _os_log_impl(&dword_1E323F000, v40, v41, "%{public}s makeMenu with %ld models and %ld dyamicActions", v43, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v45);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v47 + 8))(v46, v58);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v6 + 8))(v10, v4);
  }

  v64[0] = MEMORY[0x1E69E7CC0];
  v49 = sub_1E32AE9B0(v3);
  v50 = v39;
  v51 = 0;
  while (1)
  {
    if (v49 == v51)
    {

      v64[0] = v60;
      sub_1E3CA2EB4(v59);
      OUTLINED_FUNCTION_25_2();
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v51, v3);
    }

    else
    {
      if (v51 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }
    }

    v52 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    sub_1E3CA1C94();
    v54 = v53;

    ++v51;
    if (v54)
    {
      MEMORY[0x1E6910BF0](v55);
      if (*((v64[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v60 = v64[0];
      v51 = v52;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

id sub_1E3C9E82C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1E3C9E8DC;
  v5[3] = &block_descriptor_40_1;
  v2 = _Block_copy(v5);
  v3 = [swift_getObjCClassFromMetadata() elementWithProvider_];
  _Block_release(v2);

  return v3;
}

uint64_t sub_1E3C9E8DC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1E3CA33F4, v4);
}

void sub_1E3C9E970(uint64_t a1, uint64_t a2)
{
  sub_1E3280A90(0, &qword_1ECF2BA40);
  v3 = sub_1E42062A4();
  (*(a2 + 16))(a2, v3);
}

void sub_1E3C9E9EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_previewController);
  if (v1)
  {
    v2 = v1;
    sub_1E40D72DC();
  }
}

void sub_1E3C9EA54()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_17_95();
  MEMORY[0x1EEE9AC00](v6);
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_24_67();
  v8(v7);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v34 = v4;
    v12 = OUTLINED_FUNCTION_49_0();
    v13 = OUTLINED_FUNCTION_72_0();
    v37[0] = v13;
    *v12 = 136446466;
    *(v12 + 4) = OUTLINED_FUNCTION_26_68(v13, 0x80000001E427BE90, v37);
    *(v12 + 12) = 2080;
    v14 = *&v9[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_originatorViewModel];
    if (v14)
    {
      OUTLINED_FUNCTION_8();
      v16 = *(v15 + 376);

      v1 = v16(v17);
      v4 = v18;
    }

    else
    {
      OUTLINED_FUNCTION_45_41();
    }

    sub_1E3270FC8(v1, v4, v37);
    OUTLINED_FUNCTION_60_1();

    *(v12 + 14) = v14;
    OUTLINED_FUNCTION_63_20(&dword_1E323F000, v20, v21, "%{public}s will dismiss for view model %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v4 = v34;
    v22 = OUTLINED_FUNCTION_6_133();
    v11(v22);
  }

  else
  {

    v19 = OUTLINED_FUNCTION_6_133();
    v11(v19);
  }

  v23 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_currentContextMenuConfiguration;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v24 = *&v9[v23];
  if (v24)
  {
    v25 = v24 == v3;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    v32 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_selectedViewModel;
    OUTLINED_FUNCTION_3_0();
    v33 = *&v9[v32];
    if (v33 && *v33 == _TtC8VideosUI25DownloadMenuItemViewModel)
    {

      sub_1E3C9EDDC();

      *&v9[v32] = 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_4();
    v26();
    v27 = v9;
    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_6_21();
      v36 = OUTLINED_FUNCTION_100();
      *v30 = 136446210;
      *(v30 + 4) = OUTLINED_FUNCTION_4_161("ContextMenuInteractor::");
      OUTLINED_FUNCTION_50_32(&dword_1E323F000, v31, v29, "%{public}s ignore will dismiss due to configuration changed");
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();
    }

    (v11)(v35, v4);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C9EDDC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v71 = v5;
  v72 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v70 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v70 - v10;
  v11 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_selectedViewModel;
  OUTLINED_FUNCTION_3_0();
  *&v1[v11] = v3;

  OUTLINED_FUNCTION_9_2();
  v13 = *(v12 + 552);

  if (!v13(v14))
  {
    v77 = 0u;
    v78 = 0u;
    goto LABEL_8;
  }

  v75 = &unk_1F5D7C138;
  v76 = &off_1F5D7BC98;
  LOBYTE(v74) = 1;
  OUTLINED_FUNCTION_62_22();

  __swift_destroy_boxed_opaque_existential_1(&v74);
  if (!*(&v78 + 1))
  {
LABEL_8:
    v15 = sub_1E325F6F0(&v77, &unk_1ECF296E0);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v15 = OUTLINED_FUNCTION_49_37();
  if (v15)
  {
    v16 = v74;
    v17 = *&v1[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_presentingView];
    if (v17 && (objc_opt_self(), OUTLINED_FUNCTION_20_2(), (v18 = swift_dynamicCastObjCClass()) != 0))
    {
      v19 = v18;
      v20 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_indexPath;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v21 = v73;
      v22 = sub_1E3C9C4AC(&v1[v20], v73);
      MEMORY[0x1EEE9AC00](v22);
      *(&v70 - 2) = v19;
      v23 = sub_1E3280A90(0, &qword_1EE23AE80);
      v24 = v17;
      sub_1E4148F70(sub_1E3CA2C18, (&v70 - 4), v8, v23, &v77);

      sub_1E325F6F0(v21, &qword_1ECF309A0);
      v25 = v77;
      v17 = v77;
    }

    else
    {
      v25 = v17;
    }

    v62 = v25;
    v63 = sub_1E3744600(v16);

    v64 = objc_allocWithZone(VUIActionShareSheet);
    v65 = sub_1E3CA295C(v63, v17);
    [objc_opt_self() shareMediaWithShareSheet_];
    OUTLINED_FUNCTION_9_2();
    v66 = OUTLINED_FUNCTION_58_26();
    v67(v66);

    goto LABEL_40;
  }

LABEL_9:
  if (*v3 == _TtC8VideosUI25DownloadMenuItemViewModel)
  {
    v26 = *&v1[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_originatorViewModel];
    if (v26 && (v27 = *(v26 + 24)) != 0)
    {
      v28 = *(v3 + OBJC_IVAR____TtC8VideosUI25DownloadMenuItemViewModel_downloadViewModel);
      v29 = *(v26 + 16);
      v30 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_downloads;
      swift_beginAccess();
      v31 = *&v1[v30];

      v32 = sub_1E378A81C(v29, v27, v31);
      swift_endAccess();
      if (!v32)
      {
        v32 = [objc_allocWithZone(VUIDownloadButtonActionHandler) initWithViewModel_];
      }

      OUTLINED_FUNCTION_11_3();
      swift_isUniquelyReferenced_nonNull_native();
      *&v77 = *&v1[v30];
      sub_1E3CA2ADC(v32, v29, v27);
      v33 = v77;
      *&v1[v30] = v77;
      swift_endAccess();
      sub_1E378A81C(v29, v27, v33);
      OUTLINED_FUNCTION_16_5();

      if (v33)
      {
        [v33 performAction:0 confirmBeforeStopDownloading:1];
      }

      OUTLINED_FUNCTION_111();
      v34 = OUTLINED_FUNCTION_58_26();
      v35(v34);
    }

    else
    {
      v36 = sub_1E324FBDC();
      v37 = v70;
      v38 = v71;
      v39 = v72;
      (*(v71 + 16))(v70, v36, v72);

      v40 = v1;
      v41 = sub_1E41FFC94();
      v42 = sub_1E42067F4();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_49_0();
        v73 = OUTLINED_FUNCTION_72_0();
        *&v74 = v73;
        *v43 = 136446466;
        OUTLINED_FUNCTION_23();
        *(v43 + 4) = OUTLINED_FUNCTION_26_68(v44, v45, &v74);
        *(v43 + 12) = 2080;
        v46 = (*(*v3 + 376))();
        v48 = sub_1E3270FC8(v46, v47, &v74);

        *(v43 + 14) = v48;
        _os_log_impl(&dword_1E323F000, v41, v42, "%{public}s can't handle download from %s", v43, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v38 + 8))(v37, v39);
    }

    goto LABEL_40;
  }

  if (!v13(v15))
  {
    v77 = 0u;
    v78 = 0u;
    goto LABEL_27;
  }

  v75 = &unk_1F5D7C138;
  v76 = &off_1F5D7BC98;
  LOBYTE(v74) = 3;
  OUTLINED_FUNCTION_62_22();

  __swift_destroy_boxed_opaque_existential_1(&v74);
  if (!*(&v78 + 1))
  {
LABEL_27:
    v49 = &v77;
LABEL_28:
    sub_1E325F6F0(v49, &unk_1ECF296E0);
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (OUTLINED_FUNCTION_49_37())
  {
    sub_1E3277E60(0x6163696E6F6E6163, 0xEB0000000064496CLL, v74, &v74);

    if (v75)
    {
      if (swift_dynamicCast())
      {
        sub_1E3CA0944();
      }

      goto LABEL_29;
    }

    v49 = &v74;
    goto LABEL_28;
  }

LABEL_29:
  v50 = &v1[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_delegate];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v51 = *(v50 + 1), ObjectType = swift_getObjectType(), v53 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_indexPath, OUTLINED_FUNCTION_25(), swift_beginAccess(), v54 = v73, sub_1E3C9C4AC(&v1[v53], v73), v55 = *&v1[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_originatorViewModel], v56 = *(v51 + 24), , LOBYTE(v51) = v56(v3, v54, v55, ObjectType, v51), swift_unknownObjectRelease(), , sub_1E325F6F0(v54, &qword_1ECF309A0), (v51 & 1) != 0))
  {
    if (*&v1[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_originatorViewModel] && (type metadata accessor for LibLockupViewModel(), swift_dynamicCastClass()))
    {
      type metadata accessor for LibContextMenuViewModel();
      v57 = swift_dynamicCastClass();
      if (v57)
      {
        v58 = v57;
        OUTLINED_FUNCTION_8();
        v60 = *(v59 + 1672);

        v60(v58);
      }

      else
      {
        OUTLINED_FUNCTION_111();
        v69 = *(v68 + 800);

        OUTLINED_FUNCTION_58_26();
        OUTLINED_FUNCTION_25();
        v69();
      }
    }

    else
    {
      OUTLINED_FUNCTION_111();
      OUTLINED_FUNCTION_58_26();
      OUTLINED_FUNCTION_25();
      v61();
    }
  }

LABEL_40:
  OUTLINED_FUNCTION_11_6();
  sub_1E3CA0560();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C9F738()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_17_95();
  MEMORY[0x1EEE9AC00](v6);
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_24_67();
  v8(v7);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v33 = v4;
    v12 = OUTLINED_FUNCTION_49_0();
    v13 = OUTLINED_FUNCTION_72_0();
    v36[0] = v13;
    *v12 = 136446466;
    *(v12 + 4) = OUTLINED_FUNCTION_26_68(v13, 0x80000001E427BE90, v36);
    *(v12 + 12) = 2080;
    v14 = *&v9[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_originatorViewModel];
    if (v14)
    {
      OUTLINED_FUNCTION_8();
      v16 = *(v15 + 376);

      v1 = v16(v17);
      v4 = v18;
    }

    else
    {
      OUTLINED_FUNCTION_45_41();
    }

    sub_1E3270FC8(v1, v4, v36);
    OUTLINED_FUNCTION_60_1();

    *(v12 + 14) = v14;
    OUTLINED_FUNCTION_63_20(&dword_1E323F000, v20, v21, "%{public}s did dismiss for view model %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v4 = v33;
    v22 = OUTLINED_FUNCTION_6_133();
    v11(v22);
  }

  else
  {

    v19 = OUTLINED_FUNCTION_6_133();
    v11(v19);
  }

  v23 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_currentContextMenuConfiguration;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v24 = *&v9[v23];
  if (v24)
  {
    v25 = v24 == v3;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    v32 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_selectedViewModel;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*&v9[v32])
    {

      sub_1E3C9EDDC();
    }

    sub_1E3C9FAA4();

    sub_1E3C9D1A0();
  }

  else
  {
    OUTLINED_FUNCTION_46_4();
    v26();
    v27 = v9;
    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_6_21();
      v35 = OUTLINED_FUNCTION_100();
      *v30 = 136446210;
      *(v30 + 4) = OUTLINED_FUNCTION_4_161("ContextMenuInteractor::");
      OUTLINED_FUNCTION_50_32(&dword_1E323F000, v31, v29, "%{public}s ignore did dismiss due to configuration changed");
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();
    }

    (v11)(v34, v4);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C9FAA4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_139();
  v4 = v0 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_delegate;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    swift_getObjectType();
    v6 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_indexPath;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E3C9C4AC(v0 + v6, v1);
    v7 = *(v5 + 40);

    OUTLINED_FUNCTION_46_38();
    v7();
    swift_unknownObjectRelease();

    sub_1E325F6F0(v1, &qword_1ECF309A0);
  }

  sub_1E3C9D1A0();
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C9FBDC(void *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v97 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v97 - v16;
  v18 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v97 - v25;
  if (!a1)
  {
    return 0;
  }

  v100 = v4;
  v101 = v24;
  v27 = a1;
  v106[0] = [v27 identifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF365A0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v18);
    sub_1E325F6F0(v17, &qword_1ECF309A0);
    return 0;
  }

  v99 = v27;
  OUTLINED_FUNCTION_48_8(v17);
  v28 = v101;
  (*(v101 + 32))(v26, v17, v18);
  v29 = sub_1E41FE7E4();
  v30 = [a2 cellForItemAtIndexPath_];

  if (!v30)
  {
    v46 = sub_1E324FBDC();
    v47 = v6;
    v48 = *(v6 + 16);
    v49 = v100;
    v48(v10, v46, v100);
    (*(v28 + 16))(v22, v26, v18);
    v50 = v102;
    v51 = sub_1E41FFC94();
    v52 = sub_1E42067F4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = v18;
      v54 = OUTLINED_FUNCTION_49_0();
      v102 = OUTLINED_FUNCTION_72_0();
      v106[0] = v102;
      *v54 = 136446466;
      OUTLINED_FUNCTION_23();
      *(v54 + 4) = OUTLINED_FUNCTION_26_68(v55, v56, v106);
      *(v54 + 12) = 2080;
      sub_1E3CA324C(&qword_1ECF309B0, MEMORY[0x1E6969C28]);
      LODWORD(v98) = v52;
      v57 = sub_1E4207944();
      v97 = v51;
      v58 = *(v28 + 8);
      v58(v22, v53);
      v59 = OUTLINED_FUNCTION_63_0();
      sub_1E3270FC8(v59, v60, v61);
      OUTLINED_FUNCTION_31_4();

      *(v54 + 14) = v57;
      v62 = v97;
      _os_log_impl(&dword_1E323F000, v97, v98, "%{public}s collectionView.cellForItem at %s is nil", v54, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v47 + 8))(v10, v100);
      v58(v26, v53);
    }

    else
    {

      v74 = *(v28 + 8);
      v74(v22, v18);
      (*(v47 + 8))(v10, v49);
      v74(v26, v18);
    }

    return 0;
  }

  v98 = v18;
  v31 = v30;
  v32 = [v31 window];
  if (!v32)
  {

    v63 = sub_1E324FBDC();
    v64 = v100;
    (*(v6 + 16))(v13, v63, v100);
    v65 = v102;
    v66 = sub_1E41FFC94();
    v67 = sub_1E42067F4();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_6_21();
      v106[0] = OUTLINED_FUNCTION_100();
      *v68 = 136446210;
      OUTLINED_FUNCTION_23();
      *(v68 + 4) = OUTLINED_FUNCTION_26_68(v69, v70, v106);
      OUTLINED_FUNCTION_50_32(&dword_1E323F000, v71, v67, "%{public}s cell is not in current window hierarchy");
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v13, v64);
    v72 = OUTLINED_FUNCTION_8_112();
    v73(v72);
    return 0;
  }

  v105 = v31;
  sub_1E3280A90(0, &qword_1EE23B120);
  v33 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF365A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v104 = 0;
    memset(v103, 0, sizeof(v103));
    sub_1E325F6F0(v103, &qword_1ECF365B0);
    goto LABEL_19;
  }

  sub_1E3251BE8(v103, v106);
  v34 = v106[4];
  __swift_project_boxed_opaque_existential_1(v106, v106[3]);
  v35 = OUTLINED_FUNCTION_31_4();
  if (!v36(v35, v34))
  {
    __swift_destroy_boxed_opaque_existential_1(v106);
LABEL_19:
    v75 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
    type metadata accessor for CardCollectionViewCell();
    v76 = swift_dynamicCastClass();
    if (v76)
    {
      v77 = v76;
      v78 = v33;
      v79 = [v78 bounds];
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v87 = v86;
      v88 = (*((*MEMORY[0x1E69E7D40] & *v77) + 0xA0))(v79);
      v89 = [objc_opt_self() bezierPathWithRoundedRect:v81 cornerRadius:{v83, v85, v87, v88}];
      [v75 setVisiblePath_];
    }

    v90 = [objc_opt_self() clearColor];
    [v75 setBackgroundColor_];

    objc_opt_self();
    v91 = swift_dynamicCastObjCClass();
    if (v91)
    {
      v92 = [v91 preview];
      sub_1E3280A90(0, &qword_1ECF3BFF0);
      if (v92)
      {
        v93 = v92;

        v94 = v93;
LABEL_26:
        v39 = sub_1E3CA0504(v93, v75);

        v95 = OUTLINED_FUNCTION_8_112();
        v96(v95);
        return v39;
      }
    }

    else
    {
      sub_1E3280A90(0, &qword_1ECF3BFF0);
    }

    v94 = 0;
    v93 = v33;
    goto LABEL_26;
  }

  sub_1E3280A90(0, &qword_1ECF3BFF0);
  [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v37 = OUTLINED_FUNCTION_20_2();
  v39 = sub_1E3CA0504(v37, v38);

  v40 = OUTLINED_FUNCTION_8_112();
  v41(v40);
  __swift_destroy_boxed_opaque_existential_1(v106);
  return v39;
}

id sub_1E3CA0504(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithView:a1 parameters:a2];

  return v4;
}

void sub_1E3CA0560()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_139();
  v5 = v2 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_delegate;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    swift_getObjectType();
    v7 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_indexPath;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E3C9C4AC(v2 + v7, v0);
    v8 = *(v6 + 32);

    OUTLINED_FUNCTION_46_38();
    v8();
    swift_unknownObjectRelease();

    sub_1E325F6F0(v0, &qword_1ECF309A0);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CA0690(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1E329504C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1E329504C(v29, v30);
    result = sub_1E42073F4();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_1E329504C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1E3CA0944()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E4204D54();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v5 = sub_1E4205004();
  sub_1E4204FF4();
  OUTLINED_FUNCTION_16_5();
  v6 = sub_1E4204F94();

  v7 = sub_1E4204FF4();
  (*(v3 + 104))(v0, *MEMORY[0x1E69D3988], v1);
  OUTLINED_FUNCTION_5_10();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_60_24(v8);

  OUTLINED_FUNCTION_44_38();
  if (v6)
  {
    sub_1E4204F24();
  }

  else
  {
    sub_1E4204F14();
  }

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CA0AD0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  if (v10)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_164_0();
    v15(v0);

    v16 = sub_1E41FFC94();
    v17 = sub_1E42067F4();

    if (os_log_type_enabled(v16, v17))
    {
      v22 = v6;
      v18 = OUTLINED_FUNCTION_49_0();
      v23 = OUTLINED_FUNCTION_72_0();
      *v18 = 136315394;
      v19 = (*(*v8 + 376))();
      v21 = sub_1E3270FC8(v19, v20, &v23);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1E3270FC8(v22, v4, &v23);
      _os_log_impl(&dword_1E323F000, v16, v17, v2, v18, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v13 + 8))(v0, v11);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CA0CDC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_itemViewModels] = v2;

  v10 = *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_deferredMenuHandler];
  if (v10)
  {

    sub_1E34AF604(v10);
    sub_1E324FBDC();
    OUTLINED_FUNCTION_164_0();
    v11(v9);
    v12 = v0;
    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_100();
      v20 = v16;
      *v15 = 136446210;
      OUTLINED_FUNCTION_23();
      *(v15 + 4) = OUTLINED_FUNCTION_26_68(v17, v18, &v20);
      _os_log_impl(&dword_1E323F000, v13, v14, "%{public}s update: calling deferredMenuHandler", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v9, v3);
    sub_1E3C9E1F0();
    v10();

    sub_1E34AF594(v10);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {

    OUTLINED_FUNCTION_25_2();

    sub_1E3CA18E4();
  }
}

id sub_1E3CA0F00()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_selectedViewModel] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_originatorViewModel] = 0;
  sub_1E41FE874();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_documentController] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_downloads] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_downloadStateObservation] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_libContextMenuObserver] = 0;
  v6 = &v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_presentingView];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_deferredMenuHandler];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_previewController] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_itemViewModels] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_currentContextMenuConfiguration] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1E3CA1140(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(a2 + 56))
  {

    sub_1E3CA1360(v11);
    OUTLINED_FUNCTION_47_0();
    v13 = *(v12 + 576);

    v15 = v13(v14);

    if (v15)
    {
      OUTLINED_FUNCTION_8();
      (*(v16 + 296))();
    }
  }

  else
  {
    v18 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v18, v4);
    v19 = v2;
    v20 = sub_1E41FFC94();
    v21 = sub_1E42067F4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_6_21();
      v23 = OUTLINED_FUNCTION_100();
      v28 = v23;
      *v22 = 136446210;
      OUTLINED_FUNCTION_23();
      *(v22 + 4) = OUTLINED_FUNCTION_26_68(v24, v25, &v28);
      _os_log_impl(&dword_1E323F000, v20, v21, "%{public}s handle: newDocument.templateViewModel is nil", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    v26 = OUTLINED_FUNCTION_11_6();
    return v27(v26);
  }
}

uint64_t sub_1E3CA1360(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  if ((*(*a1 + 464))())
  {
    v22 = 0;
    OUTLINED_FUNCTION_8();
    (*(v9 + 776))(v23, &v22, &unk_1F5D5E848, &off_1F5D5CC98);
    if (v23[3])
    {
      if ((swift_dynamicCast() & 1) != 0 && v22 == 1)
      {
        OUTLINED_FUNCTION_8();
        v11 = *(v10 + 1200);

        v11(v12);
      }
    }

    else
    {
      sub_1E325F6F0(v23, &unk_1ECF296E0);
    }

    sub_1E3CA0CDC();
  }

  else
  {
    v13 = sub_1E324FBDC();
    (*(v7 + 16))(v2, v13, v5);
    v14 = v3;
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067F4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_6_21();
      v18 = OUTLINED_FUNCTION_100();
      v23[0] = v18;
      *v17 = 136446210;
      OUTLINED_FUNCTION_23();
      *(v17 + 4) = OUTLINED_FUNCTION_26_68(v19, v20, v23);
      _os_log_impl(&dword_1E323F000, v15, v16, "%{public}s update: no children in templateViewModel", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    return (*(v7 + 8))(v2, v5);
  }
}

void sub_1E3CA160C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v14(v13);
  v15 = v0;
  v16 = OUTLINED_FUNCTION_36_41();
  sub_1E3781F8C(v16, v17, v18);
  v19 = sub_1E41FFC94();
  v20 = sub_1E42067F4();

  v21 = OUTLINED_FUNCTION_36_41();
  sub_1E37B5ACC(v21, v22, v23);
  if (os_log_type_enabled(v19, v20))
  {
    v40 = v15;
    v24 = OUTLINED_FUNCTION_49_0();
    v39 = v7;
    v25 = swift_slowAlloc();
    v38 = OUTLINED_FUNCTION_100();
    v41 = v38;
    *v24 = 136446466;
    OUTLINED_FUNCTION_23();
    *(v24 + 4) = OUTLINED_FUNCTION_26_68(v26, v27, &v41);
    *(v24 + 12) = 2112;
    sub_1E3781F38();
    swift_allocError();
    *v28 = v6;
    *(v28 + 8) = v4;
    *(v28 + 16) = v2;
    v29 = OUTLINED_FUNCTION_36_41();
    sub_1E3781F8C(v29, v30, v31);
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v32;
    *v25 = v32;
    _os_log_impl(&dword_1E323F000, v19, v20, "%{public}s handle: VideosEngineError:%@. Dismissing", v24, 0x16u);
    sub_1E325F6F0(v25, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_6_0();
    v15 = v40;
    OUTLINED_FUNCTION_6_0();

    (*(v9 + 8))(v13, v39);
  }

  else
  {

    (*(v9 + 8))(v13, v7);
  }

  v33 = *&v15[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_presentingView];
  if (v33)
  {
    v34 = *&v15[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_presentingView + 8];
    ObjectType = swift_getObjectType();
    v41 = v33;
    v36 = (*(v34 + 8))(ObjectType, v34);
    if (v36)
    {
      v37 = v36;
      [v36 dismissMenu];
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CA18E4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_17_95();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = sub_1E324FBDC();
  v31 = *(v3 + 16);
  v31(v7, v8, v1);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_6_21();
    v13 = OUTLINED_FUNCTION_100();
    v30 = v3;
    v14 = v13;
    v33[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = OUTLINED_FUNCTION_4_161("ContextMenuInteractor::");
    _os_log_impl(&dword_1E323F000, v10, v11, "%{public}s calling updateVisibleMenu", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v3 = v30;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v15 = *(v3 + 8);
  v15(v7, v1);
  v16 = *&v9[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_itemViewModels];
  if (v16)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_10;
    }

    v18 = Strong;
    OUTLINED_FUNCTION_2_4();
    v1 = swift_allocObject();
    *(v1 + 16) = v9;
    *(v1 + 24) = v16;
    OUTLINED_FUNCTION_2_4();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1E3CA32E4;
    *(v19 + 24) = v1;
    v33[4] = sub_1E3CA3354;
    v33[5] = v19;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 1107296256;
    v33[2] = sub_1E3CA2908;
    v33[3] = &block_descriptor_86;
    v20 = _Block_copy(v33);
    v21 = v9;

    [v18 updateVisibleMenuWithBlock_];

    _Block_release(v20);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if ((v18 & 1) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v22 = OUTLINED_FUNCTION_63_0();
  v23(v22);
  v24 = v9;
  v25 = sub_1E41FFC94();
  v26 = sub_1E4206814();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_6_21();
    v28 = OUTLINED_FUNCTION_100();
    v33[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = OUTLINED_FUNCTION_4_161("ContextMenuInteractor::");
    _os_log_impl(&dword_1E323F000, v25, v26, "%{public}s updateVisibleMenu: itemViewModels is nil", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();
  }

  v15(v32, v1);
LABEL_10:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CA1C94()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v14 = *(v3 + 98);
  if (v14 == 231)
  {
    v72 = &v70 - v13;
    OUTLINED_FUNCTION_47_0();
    v18 = (*(v17 + 464))();
    if (v18)
    {
      v19 = v18;
      v70 = v6;
      v71 = v4;
      v73 = MEMORY[0x1E69E7CC0];
      *&v78[0] = MEMORY[0x1E69E7CC0];
      v20 = sub_1E32AE9B0(v18);
      v21 = v0;
      v22 = 0;
      while (v20 != v22)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1E6911E60](v22, v19);
        }

        else
        {
          if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v23 = *(v19 + 8 * v22 + 32);
        }

        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = sub_1E3CA1C94(v23);

        ++v22;
        if (v25)
        {
          MEMORY[0x1E6910BF0](v26);
          if (*((*&v78[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v78[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          sub_1E4206324();
          v73 = *&v78[0];
          v22 = v24;
        }
      }

      *&v78[0] = v73;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF365D8);
      v43 = sub_1E328FCF4(&qword_1ECF365E0, &qword_1ECF365D8);
      sub_1E38D2480(v75, v42, v43);

      v44 = v75[0];
      if (v75[0])
      {
        sub_1E324FBDC();
        v46 = v70;
        v45 = v71;
        OUTLINED_FUNCTION_164_0();
        v47 = v72;
        v48(v72);
        v49 = v21;

        v50 = sub_1E41FFC94();
        v51 = sub_1E4206814();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = OUTLINED_FUNCTION_49_0();
          v53 = OUTLINED_FUNCTION_100();
          *&v78[0] = v53;
          *v52 = 136446466;
          OUTLINED_FUNCTION_23();
          *(v52 + 4) = OUTLINED_FUNCTION_26_68(v54, v55, v78);
          *(v52 + 12) = 2048;
          *(v52 + 14) = sub_1E32AE9B0(v44);

          _os_log_impl(&dword_1E323F000, v50, v51, "%{public}s making contextMenuGroup with %ld actions", v52, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v53);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_65_0();
        }

        else
        {
        }

        (*(v46 + 8))(v47, v45);
        sub_1E3280A90(0, &qword_1ECF2BA48);
        OUTLINED_FUNCTION_1_188();
        sub_1E4206E94();
      }
    }
  }

  else
  {
    if (v14 != 230)
    {
      v79 = v3;
      type metadata accessor for ViewModel();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5C8);
      if (swift_dynamicCast())
      {
        sub_1E3251BE8(v78, v75);
        sub_1E327F454(v75, v74);
        type metadata accessor for DownloadMenuItemViewModel();
        if (swift_dynamicCast())
        {
          sub_1E3CA324C(&qword_1ECF2F560, type metadata accessor for DownloadMenuItemViewModel);
          v74[0] = sub_1E4200514();
          OUTLINED_FUNCTION_4_0();
          v27 = swift_allocObject();
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_2_4();
          v28 = swift_allocObject();
          *(v28 + 16) = sub_1E3CA3290;
          *(v28 + 24) = v27;
          sub_1E42005A4();
          sub_1E4200844();
          OUTLINED_FUNCTION_60_1();

          *&v1[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_downloadStateObservation] = v74;
        }

        v29 = v76;
        v30 = v77;
        __swift_project_boxed_opaque_existential_1(v75, v76);
        sub_1E3BD9AF8(v29, v30);
        if (v31)
        {
          sub_1E3280A90(0, &unk_1ECF3BDE0);
          __swift_project_boxed_opaque_existential_1(v75, v76);
          v32 = OUTLINED_FUNCTION_63_0();
          sub_1E3BD9BA4(v32, v33);
          OUTLINED_FUNCTION_4_0();
          v34 = swift_allocObject();
          swift_weakInit();
          OUTLINED_FUNCTION_4_0();
          v35 = swift_allocObject();
          swift_unknownObjectWeakInit();
          OUTLINED_FUNCTION_2_4();
          v36 = swift_allocObject();
          *(v36 + 16) = v35;
          *(v36 + 24) = v34;
          OUTLINED_FUNCTION_25();
          v37 = sub_1E4206FA4();
          type metadata accessor for Accessibility();
          v38 = *(*v3 + 320);
          v39 = v37;
          v38();
          sub_1E40A7DC8();

          v40 = OUTLINED_FUNCTION_63_0();
          sub_1E3839D34(v40, v41, v39);

          __swift_destroy_boxed_opaque_existential_1(v75);

          goto LABEL_34;
        }

        sub_1E324FBDC();
        OUTLINED_FUNCTION_51_4();
        v56(v10);
        v57 = v1;

        v58 = sub_1E41FFC94();
        v59 = sub_1E42067F4();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = OUTLINED_FUNCTION_49_0();
          v74[0] = OUTLINED_FUNCTION_72_0();
          *v60 = 136446466;
          OUTLINED_FUNCTION_23();
          *(v60 + 4) = OUTLINED_FUNCTION_26_68(v61, v62, v74);
          *(v60 + 12) = 2080;
          if (*(v3 + 24))
          {
            v63 = *(v3 + 16);
            v64 = *(v3 + 24);
          }

          else
          {
            v63 = 0;
            v64 = 0xE000000000000000;
          }

          v67 = sub_1E3270FC8(v63, v64, v74);

          *(v60 + 14) = v67;
          _os_log_impl(&dword_1E323F000, v58, v59, "%{public}s no title for menu item viewModel:%s", v60, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_65_0();

          v68 = OUTLINED_FUNCTION_11_6();
          v69(v68);
        }

        else
        {

          v65 = OUTLINED_FUNCTION_11_6();
          v66(v65);
        }

        __swift_destroy_boxed_opaque_existential_1(v75);
      }

      goto LABEL_34;
    }

    *&v78[0] = *&v0[OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_previewController];
    MEMORY[0x1EEE9AC00](v12);
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF365E8);
    sub_1E4148DE0(sub_1E3CA32DC);
  }

LABEL_34:
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3CA2598(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33[-v8];
  v10 = *a1;
  v11 = a2 + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_delegate;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    LODWORD(v12) = (*(v12 + 8))(ObjectType, v12);
    swift_unknownObjectRelease();
    if (v12 != 7)
    {
      OUTLINED_FUNCTION_47_0();
      v15 = (*(v14 + 488))();
      if (v15)
      {
        v16 = sub_1E373E010(39, v15);

        if (v16)
        {
          v18 = (*(*v16 + 392))(v17);
          if (v18)
          {
            v19 = v18;
            sub_1E3C2AE10();
            v21 = v20;
            (*(*v19 + 1640))();
          }

          else
          {
          }
        }
      }
    }
  }

  if (TVAppFeature.isEnabled.getter(10))
  {
    OUTLINED_FUNCTION_47_0();
    v23 = (*(v22 + 392))();
    if (v23)
    {
      if (*v23 == _TtC8VideosUI32ContextMenuPreviewItemViewLayout)
      {

        sub_1E3E09A08(v24);
      }
    }
  }

  sub_1E3C9DC58();
  v26 = v25;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v11 + 8);
    v28 = swift_getObjectType();
    v29 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_indexPath;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E3C9C4AC(a2 + v29, v9);
    OUTLINED_FUNCTION_164_0();
    v30(v9, v28, v27);
    swift_unknownObjectRelease();
    sub_1E325F6F0(v9, &qword_1ECF309A0);
  }

  sub_1E40D7368(a3, v26);
  [v10 preferredContentSize];
  return [v10 setPreferredContentSize_];
}

id sub_1E3CA2908(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

id sub_1E3CA295C(uint64_t a1, void *a2)
{
  v4 = sub_1E4205C44();

  v5 = [v2 initWithContextData:v4 sourceView:a2];

  return v5;
}

uint64_t sub_1E3CA29E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

void *sub_1E3CA2A24()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_previewController);
  v3 = v2;

  return v2;
}

void sub_1E3CA2A88()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3CA0CDC();
  }
}

void sub_1E3CA2ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF365B8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = a1;
  }

  else
  {
    sub_1E377E1B0(v11, a2, a3, a1, v15);
  }
}

void sub_1E3CA2C18()
{
  v2 = OUTLINED_FUNCTION_61_21();
  v3 = [v1 vui:v2 cellForItemAtIndexPath:?];

  if (v3)
  {
    v4 = [v3 vuiCellView];
  }

  else
  {
    v4 = 0;
  }

  *v0 = v4;
}

uint64_t objectdestroy_7Tm_0()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

uint64_t type metadata accessor for ContextMenuInteractor()
{
  result = qword_1EE29C120;
  if (!qword_1EE29C120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3CA2D84()
{
  sub_1E3CA2E5C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3CA2E5C()
{
  if (!qword_1EE28A400)
  {
    sub_1E41FE874();
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A400);
    }
  }
}

uint64_t sub_1E3CA2EB4(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E3CA3024(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1E3CA2F60()
{
  v2 = OUTLINED_FUNCTION_61_21();
  v3 = [v1 cellForItemAtIndexPath_];

  *v0 = v3;
}

uint64_t sub_1E3CA2FB8(void *a1)
{
  v1 = [a1 prefetchedDataDict];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E3CA3024(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1ECF2BA40);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E328FCF4(&qword_1ECF365E0, &qword_1ECF365D8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF365D8);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3CA31BC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v3 = OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_selectedViewModel;
    OUTLINED_FUNCTION_14_0();
    *&v1[v3] = Strong;
  }

  return result;
}

uint64_t sub_1E3CA324C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E3CA3290()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3CA18E4();
  }
}

uint64_t sub_1E3CA32E4()
{
  v1 = *(v0 + 24);
  sub_1E3280A90(0, &qword_1ECF2BA48);
  sub_1E3C9E1F0(v1);
  OUTLINED_FUNCTION_1_188();
  return sub_1E4206E94();
}

void sub_1E3CA337C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (Strong + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_deferredMenuHandler);
    v7 = *(Strong + OBJC_IVAR____TtC8VideosUI21ContextMenuInteractor_deferredMenuHandler);
    *v6 = a1;
    v6[1] = a2;
    sub_1E34AF594(v7);
  }
}

uint64_t OUTLINED_FUNCTION_62_22()
{

  return sub_1E3F9F164((v0 - 184));
}

unint64_t sub_1E3CA3434()
{
  result = qword_1EE23B1F0;
  if (!qword_1EE23B1F0)
  {
    sub_1E4206974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B1F0);
  }

  return result;
}

unint64_t sub_1E3CA348C()
{
  result = qword_1EE23B490;
  if (!qword_1EE23B490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF326B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B490);
  }

  return result;
}

void sub_1E3CA34F0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  sub_1E4206974();
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v6 = sub_1E4203FF4();
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_3();
  sub_1E32ADE38();
  sub_1E4203FE4();
  sub_1E3CA3434();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326B0);
  sub_1E3CA348C();
  sub_1E42072E4();
  (*(v3 + 104))(v0, *MEMORY[0x1E69E8090], v1);
  sub_1E4206A44();
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_26_27();
  sub_1E4205C24();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CA36E8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v1 + 16);
  OUTLINED_FUNCTION_1_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = *(v13 + 24);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  v25 = *(v0 + 8);
  (*(v9 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v7);
  v18 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v7;
  *(v19 + 3) = v14;
  *(v19 + 4) = *(v2 + 32);
  *(v19 + 5) = v6;
  *(v19 + 6) = v0;
  (*(v9 + 32))(&v19[v18], &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v20 = OUTLINED_FUNCTION_26_69();
  *(v20 + 16) = sub_1E3CA3C2C;
  *(v20 + 24) = v19;
  v26[4] = sub_1E379E500;
  v26[5] = v20;
  OUTLINED_FUNCTION_12_0();
  v26[1] = 1107296256;
  OUTLINED_FUNCTION_67();
  v26[2] = v21;
  v26[3] = &block_descriptor_87;
  v22 = _Block_copy(v26);
  v23 = v25;
  OUTLINED_FUNCTION_37_45();

  OUTLINED_FUNCTION_39_40();

  _Block_release(v22);
  OUTLINED_FUNCTION_31_47();
  OUTLINED_FUNCTION_25_68();
  OUTLINED_FUNCTION_36_42();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3CA38D0()
{
  OUTLINED_FUNCTION_31_1();
  v44 = v2;
  v45 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v40 = v10;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v38 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v37 = v14 - v13;
  OUTLINED_FUNCTION_1_2();
  v41 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_3();
  v39 = v17;
  v18 = OUTLINED_FUNCTION_26_27();
  v19 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  v43 = v5;
  v25 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_19_2();
  v42 = v9 + 16;
  sub_1E4205D64();
  v29 = 1;
  if (!__swift_getEnumTagSinglePayload(v24, 1, v18))
  {
    OUTLINED_FUNCTION_37_1();
    (*(v30 + 16))(v0, v24);
    v29 = 0;
  }

  (*(v21 + 8))(v24, v19);
  __swift_storeEnumTagSinglePayload(v0, v29, 1, v43);
  (*(v27 + 40))(v40, v0, v25);
  v31 = v41;
  (*(v41 + 16))(v1, v44, v7);
  sub_1E4205D34();
  v32 = sub_1E4205D54();
  v34 = v33;
  if (!__swift_getEnumTagSinglePayload(v33, 1, v18))
  {
    v35 = v37;
    sub_1E41FE5C4();
    (*(v38 + 40))(v34 + *(v18 + 48), v35, v39);
  }

  v32(&v46, 0);
  (*(v31 + 8))(v1, v7);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CA3C70()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = *(v4 + 24);
  v25 = v4;
  OUTLINED_FUNCTION_1_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_24_68();
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_1_2();
  v12 = v11;
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v0 + 8);
  (*(v12 + 16))(v17, v16);
  (*(v7 + 16))(v1, v3, v5);
  v18 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v19 = (v14 + *(v7 + 80) + v18) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v10;
  *(v20 + 3) = v5;
  *(v20 + 4) = *(v25 + 32);
  *(v20 + 5) = v0;
  (*(v12 + 32))(&v20[v18], v17, v10);
  (*(v7 + 32))(&v20[v19], v1, v5);
  v21 = OUTLINED_FUNCTION_26_69();
  *(v21 + 16) = sub_1E3CA40B0;
  *(v21 + 24) = v20;
  v27[4] = sub_1E37D1918;
  v27[5] = v21;
  OUTLINED_FUNCTION_12_0();
  v27[1] = 1107296256;
  OUTLINED_FUNCTION_67();
  v27[2] = v22;
  v27[3] = &block_descriptor_13_1;
  v23 = _Block_copy(v27);
  v24 = v26;
  OUTLINED_FUNCTION_37_45();

  OUTLINED_FUNCTION_39_40();

  _Block_release(v23);
  OUTLINED_FUNCTION_31_47();
  OUTLINED_FUNCTION_25_68();
  OUTLINED_FUNCTION_36_42();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3CA3EE4()
{
  OUTLINED_FUNCTION_31_1();
  v20 = v3;
  v21 = v2;
  v5 = v4;
  v22 = v6;
  v8 = v7;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_13_10();
  v9 = OUTLINED_FUNCTION_26_27();
  OUTLINED_FUNCTION_17_96();
  v10 = sub_1E4207104();
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_1_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_3();

  v15 = sub_1E4205CD4();

  if (v15 == *v8)
  {
    OUTLINED_FUNCTION_58();
    type metadata accessor for LRUCache();
    sub_1E3CA414C();
  }

  (*(v13 + 16))(v1, v21, v5);
  OUTLINED_FUNCTION_37_1();
  (*(v16 + 16))(v0, v22, v20);
  sub_1E41FE5C4();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v9);
  OUTLINED_FUNCTION_58();
  sub_1E4205D34();
  sub_1E4205D74();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3CA414C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_26_27();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v122 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v103 - v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v131 = v12;
  v103 = v2;
  v13 = *(v2 + 16);
  OUTLINED_FUNCTION_1_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v136 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v114 = v19;
  v141 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v125 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v127 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v137 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v28 = OUTLINED_FUNCTION_17_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_5();
  v108 = v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  v120 = &v103 - v31;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  v124 = &v103 - v33;
  OUTLINED_FUNCTION_17_96();
  v111 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v35 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  v110 = &v103 - v37;
  OUTLINED_FUNCTION_32_2();
  v140 = v13;
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v13);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v4);
  v104 = v0;
  v126 = *(v0 + 16) + 64;
  OUTLINED_FUNCTION_10_105();
  v46 = v45 & v44;
  v107 = (v47 + 63) >> 6;
  v113 = v15 + 16;
  v112 = v6 + 16;
  v138 = (v15 + 32);
  v130 = (v6 + 32);
  v123 = (v22 + 32);
  v134 = v3;
  v119 = v3 - 8;
  v139 = v4;
  v118 = v4 - 8;
  v116 = v6;
  v106 = v6 + 8;
  v115 = v15;
  v105 = v15 + 8;
  v109 = v35 + 8;
  v117 = v48;

  v49 = 0;
  while (v46)
  {
    v50 = v49;
LABEL_9:
    v54 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
    v55 = v54 | (v50 << 6);
    v56 = v117;
    v57 = v115;
    v58 = v114;
    v59 = v140;
    (*(v115 + 16))(v114, *(v117 + 48) + *(v115 + 72) * v55, v140);
    v60 = v116;
    v61 = *(v56 + 56) + *(v116 + 72) * v55;
    v62 = v131;
    v63 = v141;
    (*(v116 + 16))(v131, v61, v141);
    v51 = TupleTypeMetadata2;
    v64 = *(TupleTypeMetadata2 + 48);
    v65 = *(v57 + 32);
    v52 = v127;
    v65(v127, v58, v59);
    (*(v60 + 32))(v52 + v64, v62, v63);
    v66 = 0;
    v53 = v137;
LABEL_10:
    __swift_storeEnumTagSinglePayload(v52, v66, 1, v51);
    (*v123)(v53, v52, v125);
    if (__swift_getEnumTagSinglePayload(v53, 1, v51) == 1)
    {

      MEMORY[0x1EEE9AC00](v97);
      v98 = v134;
      *(&v103 - 4) = v140;
      *(&v103 - 3) = v98;
      v99 = v104;
      *(&v103 - 2) = *(v103 + 32);
      *(&v103 - 1) = v99;
      v100 = v111;
      v101 = v110;
      sub_1E4148DE0(sub_1E3CA5E80);
      sub_1E3B8DEF4(v124);
      OUTLINED_FUNCTION_36_5();
      v102(v101, v100);
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v67 = v53 + *(v51 + 48);
    v68 = v139;
    v69 = *(v141 + 48);
    v70 = v134;
    v133 = *(v134 - 8);
    v135 = *(v133 + 32);
    v71 = v122;
    v135(v122, v67, v134);
    v129 = *(v68 - 8);
    v72 = *(v129 + 32);
    v72(v71 + v69, v67 + v69, v68);
    v132 = *v138;
    v132(v136, v137, v140);
    v73 = v121;
    v74 = v70;
    v75 = *(v141 + 48);
    v135(v121, v71, v74);
    v72(&v73[v75], v71 + v69, v68);
    v76 = v124;
    v77 = v120;
    sub_1E329E324(v124, v120);
    v78 = v68;
    v79 = v73;
    LODWORD(v73) = __swift_getEnumTagSinglePayload(v77, 1, v78);
    sub_1E3B8DEF4(v77);
    if (v73 == 1)
    {
      goto LABEL_14;
    }

    v80 = v108;
    sub_1E329E324(v76, v108);
    if (__swift_getEnumTagSinglePayload(v80, 1, v139) == 1)
    {
      goto LABEL_19;
    }

    v81 = sub_1E41FE534();
    (*(v129 + 8))(v80, v139);
    if (v81)
    {
LABEL_14:
      sub_1E3B8DEF4(v76);
      OUTLINED_FUNCTION_36_5();
      v82 = v110;
      v83(v110, v111);
      v84 = v131;
      v85 = v141;
      (*v130)(v131, v79, v141);
      v86 = v84 + *(v85 + 48);
      v87 = v139;
      v72(v76, v86, v139);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v87);
      (*(v133 + 8))(v84, v134);
      v91 = v140;
      v132(v82, v136, v140);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v91);
    }

    else
    {
      OUTLINED_FUNCTION_36_5();
      v95(v79, v141);
      OUTLINED_FUNCTION_36_5();
      v96(v136, v140);
    }
  }

  v52 = v127;
  v51 = TupleTypeMetadata2;
  v53 = v137;
  while (1)
  {
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v50 >= v107)
    {
      v46 = 0;
      v66 = 1;
      goto LABEL_10;
    }

    v46 = *(v126 + 8 * v50);
    ++v49;
    if (v46)
    {
      v49 = v50;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1E3CA4A60(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 40) = v1;
  v5 = OUTLINED_FUNCTION_26_69();
  *(v5 + 16) = sub_1E3CA4B8C;
  *(v5 + 24) = v4;
  v10[4] = sub_1E37D1918;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  OUTLINED_FUNCTION_67();
  v10[2] = v6;
  v10[3] = &block_descriptor_53;
  v7 = _Block_copy(v10);
  v8 = v3;
  OUTLINED_FUNCTION_37_45();

  OUTLINED_FUNCTION_39_40();

  _Block_release(v7);
  OUTLINED_FUNCTION_31_47();
  OUTLINED_FUNCTION_25_68();
  OUTLINED_FUNCTION_36_42();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3CA4B8C()
{
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_26_27();
  OUTLINED_FUNCTION_18_12();
  sub_1E4205D34();
  return sub_1E4205D24();
}

uint64_t sub_1E3CA4BEC()
{
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_26_27();
  v1 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_58();
  sub_1E4205D34();
  sub_1E4205C84();
  return (*(v3 + 8))(v0, v1);
}

void sub_1E3CA4D10()
{
  OUTLINED_FUNCTION_31_1();
  v30 = v0;
  v31 = v3;
  v5 = v4;
  v27 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v26 - v9;
  v10 = sub_1E4207104();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_2();
  v14 = *(v5 + 16);
  OUTLINED_FUNCTION_1_2();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_63_3();
  v18 = *(v16 + 16);
  v18(v2, v31, v14);
  v28 = v12;
  v29 = v10;
  v19 = *(v12 + 16);
  v20 = v27;
  v19(v1, v27, v10);
  OUTLINED_FUNCTION_35_42();
  sub_1E4205D74();
  OUTLINED_FUNCTION_14_16(v20);
  if (v21)
  {
    v18(v2, v31, v14);
    v22 = sub_1E41FE5D4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
    OUTLINED_FUNCTION_35_42();
    sub_1E4205D74();
  }

  (*(v16 + 8))(v31, v14);
  (*(v28 + 8))(v20, v29);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CA4F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_2();
  v6 = *(a2 + 16);
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  (*(v10 + 16))(v9 - v8, a1, v6);
  sub_1E41FE5C4();
  v11 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_17_96();
  sub_1E4205D34();
  return sub_1E4205D74();
}

uint64_t sub_1E3CA5084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v18 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v6 = sub_1E4205D34();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1E3CA543C(sub_1E3CA5410, v14, v6, TupleTypeMetadata2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  v18 = v10;
  sub_1E4206374();
  swift_getWitnessTable();
  v11 = sub_1E4206214();

  *a5 = v11;

  v12 = sub_1E42062C4();

  a5[1] = v12;
  return result;
}

void sub_1E3CA5224()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  v22 = *(v18 + 48);
  v19 = *(v10 + 16);
  v19(&v22 - v16, v5, TupleTypeMetadata2, v15);
  v23 = *(TupleTypeMetadata2 + 48);
  v20 = *(v3 - 8);
  (*(v20 + 32))(v7, v17, v3);
  (v19)(v13, v5, TupleTypeMetadata2);
  v21 = *(v1 - 8);
  (*(v21 + 32))(v7 + v22, &v13[*(TupleTypeMetadata2 + 48)], v1);
  (*(v20 + 8))(v13, v3);
  (*(v21 + 8))(&v17[v23], v1);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CA543C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1E42066D4();
  if (!v19)
  {
    return sub_1E4206304();
  }

  v41 = v19;
  v45 = sub_1E42075B4();
  v32 = sub_1E42075C4();
  sub_1E4207564();
  result = sub_1E42066B4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1E4206764();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1E42075A4();
      result = sub_1E4206734();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E3CA5858()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v55 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v59 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v62 = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v56 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  v23 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v61 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_5();
  v54 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_25_3();
  v60 = v28;
  v29 = *(v17 + 16);
  v29(v22, v8, TupleTypeMetadata2);
  v30 = *(TupleTypeMetadata2 + 48);
  v57 = v5;
  v58 = v1;
  sub_1E4205D64();
  OUTLINED_FUNCTION_14_16(v14);
  if (v45)
  {
    sub_1E3B8DEF4(v14);
    OUTLINED_FUNCTION_37_1();
    (*(v31 + 8))(&v22[v30]);
    OUTLINED_FUNCTION_37_1();
    v32 = OUTLINED_FUNCTION_11_6();
    v33(v32);
  }

  else
  {
    v34 = v62;
    v51 = *(v61 + 32);
    v51(v60, v14, v23);
    OUTLINED_FUNCTION_37_1();
    v36 = *(v35 + 8);
    v37 = &v22[v30];
    v38 = v34;
    v39 = v36;
    v40 = v59;
    v53 = v35 + 8;
    v36(v37, v38);
    OUTLINED_FUNCTION_37_1();
    v41 = OUTLINED_FUNCTION_11_6();
    v52 = v42;
    v42(v41);
    v43 = v56;
    v29(v56, v55, TupleTypeMetadata2);
    v44 = *(TupleTypeMetadata2 + 48);
    sub_1E4205D64();
    OUTLINED_FUNCTION_14_16(v40);
    if (v45)
    {
      (*(v61 + 8))(v60, v23);
      sub_1E3B8DEF4(v40);
      v39(&v43[v44], v62);
      v46 = OUTLINED_FUNCTION_11_6();
      v52(v46);
    }

    else
    {
      v47 = v54;
      v51(v54, v40, v23);
      v39(&v43[v44], v62);
      v48 = OUTLINED_FUNCTION_11_6();
      v52(v48);
      v49 = v60;
      sub_1E41FE534();
      v50 = *(v61 + 8);
      v50(v47, v23);
      v50(v49, v23);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3CA5CB4()
{
  v0 = sub_1E4205C24();
  sub_1E41FE5D4();
  sub_1E4205C24();
  return v0;
}

uint64_t sub_1E3CA5D08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1E3CA5084(*v2, a1[2], a1[3], a1[4], a2);
}

uint64_t sub_1E3CA5DD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E3CA5E2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1E3CA5E9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  v51 = *(a2 + 104);
  v52 = *(a2 + 96);
  v53 = *(a2 + 128);
  v54 = *(a2 + 120);
  v29 = *(a2 + 112);
  v30 = *(a2 + 136);
  v55 = *(a2 + 144);
  v57 = *(a2 + 168);
  v58 = *(a2 + 160);
  v56 = *(a2 + 176);
  v31 = *(a2 + 152);
  v32 = *(a2 + 177);
  v59 = *(a2 + 178);
  v33 = *(a2 + 192);
  v34 = *(a2 + 193);
  v35 = *(a2 + 194);
  v5 = *(a2 + 200);
  v49 = *(a2 + 208);
  v50 = *(a2 + 184);
  v48 = *(a2 + 217);
  v6 = *(a2 + 218);
  v60 = *(a2 + 224);
  v61 = *(a2 + 240);
  v7 = *(a2 + 256);
  v45 = *(a2 + 216);
  v46 = *(a2 + 264);
  v8 = *(a2 + 272);
  v9 = *(a2 + 280);
  v10 = *(a2 + 281);
  v11 = *(a2 + 288);
  v12 = *(a2 + 296);
  v62 = *(a2 + 304);
  v63 = *(a2 + 320);
  memcpy(v67, a2, sizeof(v67));
  if (sub_1E3748B78(v67) == 1)
  {
    v13 = sub_1E3EBA288();
    swift_beginAccess();
    memcpy(__src, v13, sizeof(__src));
    v62 = __src[19];
    v63 = __src[20];
    v37 = BYTE9(__src[17]);
    v39 = BYTE8(__src[18]);
    v36 = BYTE8(__src[17]);
    v42 = *&__src[17];
    v43 = *&__src[18];
    v41 = *&__src[16];
    v60 = __src[14];
    v61 = __src[15];
    v40 = BYTE10(__src[13]);
    v46 = BYTE8(__src[16]);
    v48 = BYTE9(__src[13]);
    v5 = *(&__src[12] + 1);
    v45 = BYTE8(__src[13]);
    v14 = BYTE2(__src[12]);
    v15 = BYTE1(__src[12]);
    v16 = __src[12];
    v49 = *&__src[13];
    v50 = *(&__src[11] + 1);
    v59 = BYTE2(__src[11]);
    v57 = *(&__src[10] + 1);
    v58 = *&__src[10];
    v56 = __src[11];
    v17 = BYTE1(__src[11]);
    v18 = BYTE8(__src[9]);
    v54 = *(&__src[7] + 1);
    v55 = *&__src[9];
    v19 = BYTE8(__src[8]);
    v52 = *&__src[6];
    v53 = *&__src[8];
    v51 = *(&__src[6] + 1);
    v20 = __src[7];
    sub_1E37E6E1C(__src, v64);
    memcpy(v64, __src, 0x5BuLL);
  }

  else
  {
    memcpy(v64, __dst, 0x5BuLL);
    v42 = v8;
    v43 = v11;
    v41 = v7;
    v39 = v12;
    v40 = v6;
    v36 = v9;
    v37 = v10;
    v15 = v34;
    v14 = v35;
    v17 = v32;
    v16 = v33;
    v19 = v30;
    v18 = v31;
    v20 = v29;
  }

  memcpy(v66, v64, 0x5BuLL);
  v21 = v20 & 1;
  v22 = v19 & 1;
  v23 = v18 & 1;
  v24 = v17 & 1;
  v38 = v37 & 1;
  v47 = v46 & 1;
  if (v45)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v5;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3CA62B8(a2, __src);
  sub_1E3A2579C(v25);
  sub_1E3A25914();
  type metadata accessor for UIEdgeInsets();
  sub_1E42038E4();
  sub_1E3CA6328(a2);
  v26 = *&__src[2];
  v27 = __src[1];
  *a3 = __src[0];
  *(a3 + 16) = v27;
  *(a3 + 32) = v26;
  *(a3 + 40) = a1;
  memcpy((a3 + 48), v66, 0x60uLL);
  *(a3 + 144) = v52;
  *(a3 + 152) = v51;
  *(a3 + 160) = v21;
  *(a3 + 168) = v54;
  *(a3 + 176) = v53;
  *(a3 + 184) = v22;
  *(a3 + 192) = v55;
  *(a3 + 200) = v23;
  *(a3 + 208) = v58;
  *(a3 + 216) = v57;
  *(a3 + 224) = v56;
  *(a3 + 225) = v24;
  *(a3 + 226) = v59;
  *(a3 + 232) = v50;
  *(a3 + 240) = v16 & 1;
  *(a3 + 241) = v15 & 1;
  *(a3 + 242) = v14 & 1;
  *(a3 + 248) = v5;
  *(a3 + 256) = v49;
  *(a3 + 264) = v45 & 1;
  *(a3 + 265) = v48;
  *(a3 + 266) = v40;
  *(a3 + 272) = v60;
  *(a3 + 288) = v61;
  *(a3 + 304) = v41;
  *(a3 + 312) = v47;
  *(a3 + 320) = v42;
  *(a3 + 328) = v36 & 1;
  *(a3 + 329) = v38;
  *(a3 + 336) = v43;
  *(a3 + 344) = v39 & 1;
  result = v62;
  *(a3 + 352) = v62;
  *(a3 + 368) = v63;
  return result;
}

uint64_t sub_1E3CA62B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3CA6328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3CA6390@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF365F8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v57 - v6;
  v8 = *(v1 + 5);
  v9 = (*(*v8 + 1040))(v5);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  result = sub_1E3798694(v9);
  if (!result)
  {

LABEL_9:

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1E6911E60](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);
  }

  v14 = (*(*v12 + 872))(v13);

  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v2[33])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v2[31];
  }

  v17 = (*(*v8 + 392))(v15);
  v57[0] = v4;
  v57[1] = a1;
  if (!v17 || (v18 = (*(*v17 + 984))(v17), v20 = v19, , (v20 & 1) != 0) || v18 == 21)
  {
    v25 = *(v2 + 1);
    v58[0] = *v2;
    v58[1] = v25;
    *&v58[2] = v2[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36600);
    sub_1E42038F4();
    v21 = *v66;
    v22 = *&v66[1];
    v23 = *&v66[2];
    v24 = *&v66[3];
  }

  else
  {
    v21 = *MEMORY[0x1E69DDCE0];
    v22 = *(MEMORY[0x1E69DDCE0] + 8);
    v23 = *(MEMORY[0x1E69DDCE0] + 16);
    v24 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v26 = v16 - sub_1E3952BE0(v21, v22, v23, v24);
  v27 = j__OUTLINED_FUNCTION_51_1();
  v28 = j__OUTLINED_FUNCTION_18();
  v29 = j__OUTLINED_FUNCTION_18();
  sub_1E3EB9C0C(*&v26, 0, 0, 0, 0, 1, v27 & 1, 2, &__src, 0, 1, 0, 1, 0, 2, v28 & 1, v29 & 1);
  sub_1E375C2C0(&__src, v58);
  v30 = j__OUTLINED_FUNCTION_18();
  v31 = j__OUTLINED_FUNCTION_18();
  v32 = j__OUTLINED_FUNCTION_51_1();
  v56 = v30 & 1;
  v33 = 3;
  sub_1E3EB9DAC(&__src, 0, 0, 1, 0, 0, 1, 0, v58, 1, 0, 0, 256, 3, 0, v56, v31 & 1, v32 & 1);
  LOBYTE(v62) = v59;
  type metadata accessor for LibCollectionViewModel();
  v34 = swift_dynamicCastClass();
  if (v34)
  {
    v33 = (*(*v34 + 1608))();
  }

  sub_1E375C31C(&__src);
  LOBYTE(v62) = 0;
  memcpy(v66, v58, 0x78uLL);
  *&v66[15] = v26;
  v66[16] = 0;
  LOBYTE(v66[17]) = 0;
  *(&v66[17] + 1) = v60;
  *(&v66[19] + 1) = v61[0];
  *(&v66[20] + 2) = *(v61 + 9);
  BYTE2(v66[22]) = v33;
  *(&v66[22] + 3) = *(&v61[1] + 10);
  *&__src = v14;
  v35 = swift_allocObject();
  memcpy((v35 + 16), v66, 0xC3uLL);
  sub_1E375C1CC(v66, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  sub_1E3CA69E0();
  swift_getOpaqueTypeConformance2();
  sub_1E3CA6A44();
  sub_1E4203B44();
  v36 = *(v2 + 1);
  __src = *v2;
  v68 = v36;
  v69 = *(v2 + 4);
  v37 = *(v2 + 1);
  v58[0] = *v2;
  v58[1] = v37;
  *&v58[2] = v2[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36600);
  sub_1E42038F4();
  v38.n128_u64[0] = v62;
  v39.n128_u64[0] = v63;
  v40.n128_u64[0] = v64;
  v41.n128_u64[0] = v65;
  j_nullsub_1(v38, v39, v40, v41);
  v43 = v42;
  v58[0] = __src;
  v58[1] = v68;
  *&v58[2] = v69;
  sub_1E42038F4();
  v44.n128_u64[0] = v62;
  v45.n128_u64[0] = v63;
  v46.n128_u64[0] = v64;
  v47.n128_u64[0] = v65;
  j_nullsub_1(v44, v45, v46, v47);
  v49 = v48;
  v50 = sub_1E4202734();
  v51 = v57[0];
  v52 = &v7[*(v57[0] + 36)];
  *v52 = v50;
  *(v52 + 1) = 0;
  *(v52 + 2) = v43;
  *(v52 + 3) = 0;
  *(v52 + 4) = v49;
  v52[40] = 0;
  v53 = swift_allocObject();
  memcpy((v53 + 16), v2, 0x180uLL);
  sub_1E3A57C3C(v2, v58);
  v54 = sub_1E3CA6B1C();
  v55 = OUTLINED_FUNCTION_51_1();
  sub_1E403796C(v55 & 1, sub_1E3CA6A9C, v53, v51, v54);

  sub_1E37E6F2C(v66);
  return sub_1E32CE698(v7);
}

unint64_t sub_1E3CA69E0()
{
  result = qword_1EE23B548;
  if (!qword_1EE23B548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B548);
  }

  return result;
}

unint64_t sub_1E3CA6A44()
{
  result = qword_1EE23BA50;
  if (!qword_1EE23BA50)
  {
    type metadata accessor for ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23BA50);
  }

  return result;
}

uint64_t sub_1E3CA6A9C()
{
  type metadata accessor for LayoutGrid();
  sub_1E3A25914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36600);
  return sub_1E4203904();
}

unint64_t sub_1E3CA6B1C()
{
  result = qword_1EE289748;
  if (!qword_1EE289748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF365F8);
    sub_1E3CA6BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289748);
  }

  return result;
}

unint64_t sub_1E3CA6BA8()
{
  result = qword_1EE288400;
  if (!qword_1EE288400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36608);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288400);
  }

  return result;
}

uint64_t sub_1E3CA6CB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1E3CA6CF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1E3CA6DA8()
{
  v0 = *WritingDirectionsCounts.zero.unsafeMutableAddressor();
  qword_1ECF71588 = MEMORY[0x1E69E7CC0];
  unk_1ECF71590 = MEMORY[0x1E69E7CC0];
  qword_1ECF71598 = MEMORY[0x1E69E7CC0];
  unk_1ECF715A0 = v0;
  byte_1ECF715A8 = 0;
  qword_1ECF715B0 = 0;

  return v0;
}

char *sub_1E3CA6DF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v324 = a5;
  v285 = a4;
  v10 = sub_1E4207C34();
  v11 = OUTLINED_FUNCTION_3_6(v10, &v307);
  v329 = v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v13);
  v14 = sub_1E4207C24();
  v15 = OUTLINED_FUNCTION_3_6(v14, v297);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v18);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36610);
  MEMORY[0x1EEE9AC00](v269);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_17_3(&v249 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36618);
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v249 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_17_3(&v249 - v29);
  v30 = sub_1E4207C84();
  v31 = OUTLINED_FUNCTION_3_6(v30, &v330);
  v33 = v32;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17_3(&v249 - v37);
  if (a1)
  {
    v38 = [a1 string];
    a2 = sub_1E4205F14();
    a3 = v39;
  }

  else
  {
    if (!a3)
    {
LABEL_399:
      if (qword_1EE29EFE0 != -1)
      {
        OUTLINED_FUNCTION_5_145();
      }

      v239 = qword_1ECF71588;
      v240 = unk_1ECF71590;
      v242 = qword_1ECF71598;
      v241 = unk_1ECF715A0;
      v243 = byte_1ECF715A8;
      v244 = qword_1ECF715B0;

      result = v241;
      v246 = result;
      goto LABEL_402;
    }
  }

  v40 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v40 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {

    goto LABEL_399;
  }

  v328 = v33;

  v266 = sub_1E4205FD4();
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = MEMORY[0x1E6910A60](a2, a3);

  v48 = sub_1E41FDD54();
  v307 = sub_1E41FDD54();
  v334 = MEMORY[0x1E69E7CC0];
  v335 = MEMORY[0x1E69E7CC0];
  v276 = v46;
  if (v44 >= v46)
  {
    goto LABEL_436;
  }

  v286 = v44;
  v261 = v25;
  v249 = a3;
  v250 = a6;
  v289 = 0;
  v281 = 0;
  v302 = 0;
  *&v287[4] = 0;
  v300 = 0;
  v313 = 0;
  v306 = 0;
  v308 = 0;
  v49 = 0;
  v331 = 0;
  v298 = 0;
  v299 = 0;
  v301 = 0;
  v303 = 0;
  v316 = 0;
  v314 = 0;
  v319 = 0;
  v325 = 0;
  v50 = v47;
  v51 = 0;
  v309 = 0;
  v52 = 0;
  v312 = 0;
  v326 = 0;
  v310 = 0;
  v330 = 0;
  v293 = 0;
  v291 = 0;
  v290 = 0;
  v292 = 0;
  v288 = 0;
  v327 = 0;
  v321 = 0;
  v322 = 0;
  v271 = xmmword_1E4298880;
  v252 = (v42 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v295 = v328 + 8;
  v273 = *MEMORY[0x1E69E7880];
  v272 = v329 + 88;
  v260 = v329 + 8;
  v268 = *MEMORY[0x1E69E77D8];
  v267 = v17 + 104;
  v254 = v17 + 32;
  v257 = (v17 + 8);
  v270 = *MEMORY[0x1E69DB778];
  *v287 = (a1 == 0) | v324;
  v282 = *MEMORY[0x1E69DB688];
  v251 = v42 & 0xFFFFFFFFFFFFFFLL;
  v317 = v50;
  v278 = v50 - 1;
  v53 = __OFSUB__(v50, 1);
  v279 = v53;
  v318 = -1;
  v328 = -1;
  a6 = v48;
  v311 = v48;
  v320 = MEMORY[0x1E69E7CC0];
  v294 = MEMORY[0x1E69E7CC0];
  v277 = MEMORY[0x1E69E7CC0];
  v280 = MEMORY[0x1E69E7CC0];
  v305 = a1;
  v262 = v42;
  v304 = v48;
  while (1)
  {
    v323 = v52;
    if ((v42 & 0x1000000000000000) == 0)
    {
      if ((v42 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_14_116();
        if (v59 < 0)
        {
          OUTLINED_FUNCTION_2_157();
          switch(v238)
          {
            case 1:
LABEL_395:
              OUTLINED_FUNCTION_28_50();
              break;
            case 2:
LABEL_396:
              OUTLINED_FUNCTION_23_65();
              break;
            case 3:
LABEL_397:
              OUTLINED_FUNCTION_18_80();
              break;
            default:
              goto LABEL_21;
          }

          goto LABEL_22;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38_37();
        if ((v54 & 0x1000000000000000) == 0)
        {
          sub_1E4207524();
        }

        OUTLINED_FUNCTION_30_52();
        if (v55 < 0)
        {
          OUTLINED_FUNCTION_2_157();
          switch(v56)
          {
            case 1:
              goto LABEL_395;
            case 2:
              goto LABEL_396;
            case 3:
              goto LABEL_397;
            default:
              break;
          }
        }
      }

LABEL_21:
      v58 = 1;
LABEL_22:
      v57 = v286;
      goto LABEL_23;
    }

    v57 = v286;
    LODWORD(v44) = sub_1E42074A4();
LABEL_23:
    v286 = v58 + v57;
LABEL_24:
    v60 = v44;
    v44 = v49;
    v61 = v60 < 0x10000 ? 1 : 2;
    v112 = __OFADD__(v331, v61);
    v331 += v61;
    if (v112)
    {
      break;
    }

    v62 = AMPGetBidiClass(v60);
    v63 = v62;
    v64 = v62;
    if ((v324 & 1) == 0)
    {
      v65 = 0;
      v66 = 1;
      v67 = 1;
      v68 = 1;
      v69 = 1;
      switch(v62)
      {
        case 8:
LABEL_36:
          v326 = v61;
          OUTLINED_FUNCTION_24_69();
          v81 = v44;
          v82 = v320;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v83 = v325;
          }

          else
          {
            v83 = v325;
            v220 = OUTLINED_FUNCTION_27();
            v82 = sub_1E3CA91F8(v220, v221, v222, v82);
          }

          v85 = *(v82 + 2);
          v84 = *(v82 + 3);
          if (v85 >= v84 >> 1)
          {
            OUTLINED_FUNCTION_35(v84);
            OUTLINED_FUNCTION_37_6();
            v82 = sub_1E3CA91F8(v223, v224, v225, v226);
          }

          *(v82 + 2) = v85 + 1;
          *&v82[4 * v85 + 32] = v60;
          sub_1E3D23DA0();
          OUTLINED_FUNCTION_22_68();
          v325 = v83;
          if (v135 || (sub_1E3D23DB8(), OUTLINED_FUNCTION_22_68(), v135))
          {
            OUTLINED_FUNCTION_1_189();
            v64 = 8;
            goto LABEL_59;
          }

          sub_1E3D23DAC();
          OUTLINED_FUNCTION_22_68();
          if (v130 || (sub_1E3D23DC4(), OUTLINED_FUNCTION_22_68(), v135))
          {
            OUTLINED_FUNCTION_0_205();
          }

          else
          {
            LODWORD(v86) = 0;
          }

          LODWORD(v85) = 1;
          v64 = 8;
          goto LABEL_60;
        case 9:
LABEL_62:
          OUTLINED_FUNCTION_24_69();
          v82 = v320;
          v86 = *(v320 + 2);
          if (!v86)
          {
            goto LABEL_222;
          }

          if ((sub_1E3D23DFC(*&v320[4 * v86 + 28]) & 1) == 0)
          {
            goto LABEL_221;
          }

          if (!*(v82 + 2))
          {
            goto LABEL_420;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_1E3CA92F8(v82);
          }

          v91 = *(v82 + 2);
          if (!v91)
          {
            goto LABEL_422;
          }

          v92 = v91 - 1;
          *(v82 + 2) = v91 - 1;
          if (v91 == 1)
          {
            LODWORD(v85) = 0;
          }

          else
          {
            LODWORD(v85) = *&v82[4 * v91 + 24];
          }

          sub_1E3D23D7C();
          if (v92 && (OUTLINED_FUNCTION_12_101(), v135) || (sub_1E3D23DA0(), v92) && (OUTLINED_FUNCTION_12_101(), v135) || (sub_1E3D23DB8(), v92) && (OUTLINED_FUNCTION_12_101(), v135))
          {
            OUTLINED_FUNCTION_1_189();
            v64 = 9;
            goto LABEL_150;
          }

          sub_1E3D23D88();
          if (v92 && (OUTLINED_FUNCTION_12_101(), v135) || (sub_1E3D23DAC(), v92) && (OUTLINED_FUNCTION_12_101(), v135) || (sub_1E3D23DC4(), v92) && (OUTLINED_FUNCTION_12_101(), v135))
          {
            OUTLINED_FUNCTION_0_205();
          }

          else
          {
            sub_1E3D23D94();
            if (v92)
            {
              OUTLINED_FUNCTION_12_101();
              if (v135)
              {
                OUTLINED_FUNCTION_3_155();
              }

              else
              {
LABEL_221:
                LODWORD(v86) = 0;
              }
            }

            else
            {
              LODWORD(v86) = 1;
            }
          }

LABEL_222:
          LODWORD(v85) = 1;
          v64 = 9;
          goto LABEL_223;
        case 10:
LABEL_52:
          v326 = v61;
          OUTLINED_FUNCTION_24_69();
          v81 = v44;
          v82 = v320;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v89 = v325;
          }

          else
          {
            v89 = v325;
            v213 = OUTLINED_FUNCTION_27();
            v82 = sub_1E3CA91F8(v213, v214, v215, v82);
          }

          v85 = *(v82 + 2);
          v90 = *(v82 + 3);
          if (v85 >= v90 >> 1)
          {
            OUTLINED_FUNCTION_35(v90);
            OUTLINED_FUNCTION_37_6();
            v82 = sub_1E3CA91F8(v216, v217, v218, v219);
          }

          *(v82 + 2) = v85 + 1;
          *&v82[4 * v85 + 32] = v60;
          sub_1E3D23D7C();
          OUTLINED_FUNCTION_22_68();
          v325 = v89;
          if (v135)
          {
            OUTLINED_FUNCTION_1_189();
            v64 = 10;
LABEL_59:
            v318 = 0;
            goto LABEL_60;
          }

          sub_1E3D23D88();
          OUTLINED_FUNCTION_22_68();
          if (v116)
          {
            OUTLINED_FUNCTION_0_205();
            LODWORD(v85) = 1;
            v64 = 10;
LABEL_60:
            v44 = v81;
            goto LABEL_61;
          }

          sub_1E3D23D94();
          OUTLINED_FUNCTION_22_68();
          v44 = v81;
          if (v129)
          {
            OUTLINED_FUNCTION_3_155();
          }

          else
          {
            LODWORD(v86) = 0;
          }

          LODWORD(v85) = 1;
          v64 = 10;
LABEL_61:
          v61 = v326;
          goto LABEL_223;
        case 11:
LABEL_44:
          OUTLINED_FUNCTION_24_69();
          v82 = v320;
          v86 = *(v320 + 2);
          if (!v86)
          {
            goto LABEL_216;
          }

          if (!sub_1E3D23DE8(*&v320[4 * v86 + 28]))
          {
            goto LABEL_215;
          }

          if (!*(v82 + 2))
          {
            goto LABEL_421;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_1E3CA92F8(v82);
          }

          v87 = *(v82 + 2);
          if (!v87)
          {
            goto LABEL_423;
          }

          v88 = v87 - 1;
          *(v82 + 2) = v87 - 1;
          if (v87 == 1)
          {
            LODWORD(v85) = 0;
          }

          else
          {
            LODWORD(v85) = *&v82[4 * v87 + 24];
          }

          sub_1E3D23D7C();
          if (v88 && (OUTLINED_FUNCTION_12_101(), v135) || (sub_1E3D23DA0(), v88) && (OUTLINED_FUNCTION_12_101(), v135) || (sub_1E3D23DB8(), v88) && (OUTLINED_FUNCTION_12_101(), v135))
          {
            OUTLINED_FUNCTION_1_189();
            v64 = 11;
LABEL_150:
            v318 = 0;
          }

          else
          {
            sub_1E3D23D88();
            if (v88 && (OUTLINED_FUNCTION_12_101(), v135) || (sub_1E3D23DAC(), v88) && (OUTLINED_FUNCTION_12_101(), v135) || (sub_1E3D23DC4(), v88) && (OUTLINED_FUNCTION_12_101(), v135))
            {
              OUTLINED_FUNCTION_0_205();
            }

            else
            {
              sub_1E3D23D94();
              if (v88)
              {
                OUTLINED_FUNCTION_12_101();
                if (v135)
                {
                  OUTLINED_FUNCTION_3_155();
                }

                else
                {
LABEL_215:
                  LODWORD(v86) = 0;
                }
              }

              else
              {
                LODWORD(v86) = 1;
              }
            }

LABEL_216:
            LODWORD(v85) = 1;
            v64 = 11;
          }

          goto LABEL_223;
        case 12:
          goto LABEL_76;
        case 13:
          goto LABEL_298;
        case 14:
LABEL_73:
          if (v60 > 0x7F)
          {
            v227 = (v60 & 0x3F) << 8;
            if (v60 >= 0x800)
            {
              v234 = (v227 | (v60 >> 6) & 0x3F) << 8;
              v235 = (((v234 | (v60 >> 12) & 0x3F) << 8) | (v60 >> 18)) - 2122219023;
              v99 = (v60 >> 12) + v234 + 8487393;
              if (HIWORD(v60))
              {
                v99 = v235;
              }
            }

            else
            {
              v99 = (v60 >> 6) + v227 + 33217;
            }
          }

          else
          {
            v99 = v60 + 1;
          }

          v332 = (v99 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v99) >> 3))));
          sub_1E4206004();
          v100 = sub_1E4205DD4();

          if ((v100 & 1) == 0)
          {
            OUTLINED_FUNCTION_6_134();
            goto LABEL_106;
          }

LABEL_76:
          if (v60 == *sub_1E3D23DDC())
          {
            v101 = v331 - v61;
            v102 = v289;
            if (__OFSUB__(v331, v61))
            {
              goto LABEL_416;
            }

            v103 = a6;
            v104 = v61;
            v105 = v51;
            v106 = v103;
            v107 = v44;
            if (!v289)
            {
              v102 = MEMORY[0x1E69E7CC0];
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v228 = OUTLINED_FUNCTION_27();
              v102 = sub_1E3997AA8(v228, v229, v230, v102);
            }

            v109 = *(v102 + 2);
            v108 = *(v102 + 3);
            if (v109 >= v108 >> 1)
            {
              v231 = OUTLINED_FUNCTION_35(v108);
              v102 = sub_1E3997AA8(v231, v109 + 1, 1, v102);
            }

            *(v102 + 2) = v109 + 1;
            *&v102[8 * v109 + 32] = v101;
            v44 = v107;
            v110 = v106;
            v51 = v105;
            v61 = v104;
            a6 = v110;
          }

          else
          {
            v102 = v289;
          }

          if (v279)
          {
            goto LABEL_412;
          }

          v289 = v102;
          if (v278 < v331 || v60 != *sub_1E3D23D70())
          {
            OUTLINED_FUNCTION_6_134();
            v65 = 1;
LABEL_106:
            v69 = 1;
            goto LABEL_298;
          }

          OUTLINED_FUNCTION_31_48();
          v68 = v111 == v112;
          if (v111 == v112)
          {
            v44 = 0;
            v232 = v286;
            v233 = v286;
            goto LABEL_194;
          }

          if ((v262 & 0x1000000000000000) != 0)
          {
            v232 = v286;
            v44 = sub_1E42074A4();
            goto LABEL_193;
          }

          if ((v262 & 0x2000000000000000) == 0)
          {
            OUTLINED_FUNCTION_38_37();
            if ((v113 & 0x1000000000000000) == 0)
            {
              sub_1E4207524();
            }

            OUTLINED_FUNCTION_30_52();
            if (v114 < 0)
            {
              OUTLINED_FUNCTION_2_157();
              switch(v115)
              {
                case 1:
                  goto LABEL_210;
                case 2:
                  goto LABEL_381;
                case 3:
                  goto LABEL_382;
                default:
                  break;
              }
            }

LABEL_191:
            v137 = 1;
            goto LABEL_192;
          }

          OUTLINED_FUNCTION_14_116();
          if ((v149 & 0x80000000) == 0)
          {
            goto LABEL_191;
          }

          OUTLINED_FUNCTION_2_157();
          switch(v156)
          {
            case 1:
LABEL_210:
              OUTLINED_FUNCTION_28_50();
              break;
            case 2:
LABEL_381:
              OUTLINED_FUNCTION_23_65();
              break;
            case 3:
LABEL_382:
              OUTLINED_FUNCTION_18_80();
              break;
            default:
              goto LABEL_191;
          }

LABEL_192:
          v232 = v286;
LABEL_193:
          v233 = v137 + v232;
LABEL_194:
          v150 = *sub_1E3D23DD0();
          if (v232 < v276 && v44 == v150)
          {
            v44 = 0;
            ++v61;
            ++v331;
            OUTLINED_FUNCTION_6_134();
          }

          else
          {
            v66 = 1;
            v67 = 1;
          }

          v65 = 1;
          v69 = 1;
          v286 = v233;
          goto LABEL_298;
        case 15:
LABEL_70:
          OUTLINED_FUNCTION_34_49();
          v93 = v274;
          sub_1E4207C64();
          v94 = OUTLINED_FUNCTION_7_151();
          v95(v94);
          OUTLINED_FUNCTION_36_5();
          v85 = v275;
          v97 = v96(v93, v275);
          if (v97 == v273)
          {
            if (v321)
            {
              OUTLINED_FUNCTION_6_134();
              v69 = 1;
              v326 = v98;
              v327 = v98;
              v322 = v98;
              goto LABEL_298;
            }

            OUTLINED_FUNCTION_24_69();
            v327 = 0;
            LODWORD(v85) = v86;
          }

          else
          {
            OUTLINED_FUNCTION_24_69();
            OUTLINED_FUNCTION_36_5();
            v117(v93, v85);
            LODWORD(v86) = 0;
            LODWORD(v85) = 0;
          }

          v64 = 15;
          break;
        default:
          goto LABEL_156;
      }

      goto LABEL_161;
    }

    v65 = 0;
    v66 = 1;
    v67 = 1;
    v68 = 1;
    v69 = 1;
    switch(v62)
    {
      case 1:
        v326 = v61;
        v283 = v51;
        LODWORD(v315) = v44;
        OUTLINED_FUNCTION_34_49();
        v70 = v263;
        sub_1E4207C44();
        v71 = OUTLINED_FUNCTION_7_151();
        v72(v71);
        OUTLINED_FUNCTION_36_5();
        v73 = OUTLINED_FUNCTION_21_71();
        v74(v73);
        OUTLINED_FUNCTION_37_6();
        __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
        v79 = *(v269 + 48);
        v80 = v258;
        sub_1E3CA930C(v70, v258);
        sub_1E3CA930C(v44, v80 + v79);
        OUTLINED_FUNCTION_63(v80);
        if (v135)
        {
          sub_1E325F748(v44, &qword_1ECF36618);
          sub_1E325F748(v70, &qword_1ECF36618);
          OUTLINED_FUNCTION_63(v80 + v79);
          v61 = v326;
          if (v135)
          {
            sub_1E325F748(v80, &qword_1ECF36618);
            v64 = 3;
          }

          else
          {
LABEL_126:
            sub_1E325F748(v80, &qword_1ECF36610);
            v64 = 1;
          }

          v44 = v315;
          v51 = v283;
          goto LABEL_156;
        }

        v134 = v255;
        sub_1E3CA930C(v80, v255);
        OUTLINED_FUNCTION_63(v80 + v79);
        if (v135)
        {
          sub_1E325F748(v264, &qword_1ECF36618);
          sub_1E325F748(v263, &qword_1ECF36618);
          OUTLINED_FUNCTION_36_5();
          v136(v134, a6);
          v61 = v326;
          goto LABEL_126;
        }

        OUTLINED_FUNCTION_36_5();
        v145 = OUTLINED_FUNCTION_39_41();
        v146(v145);
        v253 = sub_1E4205E84();
        v147 = v80;
        v148 = *v257;
        (*v257)(v134, a6);
        v68 = &unk_1E42C8888;
        sub_1E325F748(v264, &qword_1ECF36618);
        sub_1E325F748(v263, &qword_1ECF36618);
        v148(v134, a6);
        sub_1E325F748(v147, &qword_1ECF36618);
        if (v253)
        {
          v64 = 3;
        }

        else
        {
          v64 = 1;
        }

        v44 = v315;
LABEL_155:
        v51 = v283;
        v61 = v326;
LABEL_156:
        OUTLINED_FUNCTION_24_69();
        v141 = v284;
        sub_1E4207C94();
        v142 = sub_1E4207C54();
        OUTLINED_FUNCTION_36_5();
        v143(v141, v296);
        if ((v142 & 1) == 0)
        {
          LODWORD(v86) = 0;
          LODWORD(v85) = 0;
LABEL_161:
          v82 = v320;
LABEL_223:
          v51 = &v327[v61];
          if (__OFADD__(v327, v61))
          {
            goto LABEL_405;
          }

          v157 = *(v82 + 2) != 0;
          v320 = v82;
          if ((v157 | v86))
          {
            if (v318 == -1)
            {
              if (v298)
              {
                OUTLINED_FUNCTION_9_109();
                v325 = v68 != -1;
                v68 = 1;
                v328 = -1;
                v298 = 1;
                v158 = -1;
LABEL_232:
                v318 = v158;
                OUTLINED_FUNCTION_15_103();
              }

              else
              {
                v298 = 0;
                OUTLINED_FUNCTION_9_109();
                v318 = -1;
                OUTLINED_FUNCTION_15_103();
                v328 = v68;
                v68 = 1;
              }
            }

            else
            {
              if (v318 == 1)
              {
                OUTLINED_FUNCTION_9_109();
                v325 = v68 != 1;
                v328 = 1;
                v68 = 1;
                v158 = 1;
                goto LABEL_232;
              }

              v318 = 0;
              OUTLINED_FUNCTION_9_109();
              v325 = v68 != 0;
              OUTLINED_FUNCTION_16_100();
              OUTLINED_FUNCTION_15_103();
              v328 = 0;
            }

LABEL_235:
            a6 = v329;
            goto LABEL_298;
          }

          OUTLINED_FUNCTION_9_109();
          OUTLINED_FUNCTION_15_103();
          v328 = v68;
          v68 = 1;
          a6 = v329;
          switch(v64)
          {
            case 0:
            case 15:
            case 16:
              goto LABEL_298;
            case 1:
              if (v328 != -1)
              {
                OUTLINED_FUNCTION_9_109();
                v160 = v159 == 0;
                goto LABEL_264;
              }

              v328 = 0;
              OUTLINED_FUNCTION_9_109();
              goto LABEL_291;
            case 2:
              if (v328 == -1)
              {
                OUTLINED_FUNCTION_9_109();
                v328 = 1;
LABEL_291:
                v66 = 1;
              }

              else
              {
                OUTLINED_FUNCTION_9_109();
                v160 = v161 == 1;
LABEL_264:
                v162 = !v160;
                v325 |= v162;
                v66 = 1;
                v67 = 1;
              }

              goto LABEL_292;
            case 3:
            case 4:
              if (sub_1E41FDD54() != a6)
              {
                goto LABEL_279;
              }

              sub_1E41FDD54();
              OUTLINED_FUNCTION_11_106();
              if (v135)
              {
                a6 = v331 - v61;
                if (__OFSUB__(v331, v61))
                {
                  goto LABEL_428;
                }
              }

              else
              {
                v292 = v288 + v61;
                if (__OFADD__(v288, v61))
                {
                  goto LABEL_426;
                }

                a6 = v311;
              }

LABEL_279:
              OUTLINED_FUNCTION_37_46();
              if (v112)
              {
                goto LABEL_418;
              }

              if (__OFSUB__(v167 + a6, 1))
              {
                goto LABEL_419;
              }

              v293 = v166;
              v310 = v167;
              v307 = v167 + a6 - 1;
              if (v63 == 1)
              {
                v328 = 0;
LABEL_286:
                OUTLINED_FUNCTION_9_109();
                v68 = 1;
                goto LABEL_287;
              }

              if (v63 == 2)
              {
                OUTLINED_FUNCTION_9_109();
                v328 = 1;
                v68 = 1;
                goto LABEL_287;
              }

              if (v328 != -1)
              {
                goto LABEL_286;
              }

              OUTLINED_FUNCTION_9_109();
              v68 = 1;
              if (v64 == 4)
              {
                v207 = 1;
              }

              else
              {
                v207 = -1;
              }

              v328 = v207;
LABEL_287:
              OUTLINED_FUNCTION_29_59();
              goto LABEL_288;
            case 5:
              if (sub_1E41FDD54() != a6)
              {
                OUTLINED_FUNCTION_37_46();
                if (v112)
                {
                  goto LABEL_429;
                }

                goto LABEL_276;
              }

              sub_1E41FDD54();
              OUTLINED_FUNCTION_11_106();
              if (!v135)
              {
                OUTLINED_FUNCTION_9_109();
                v67 = 1;
                v66 = v85;
LABEL_292:
                v68 = 1;
                goto LABEL_293;
              }

              v311 = v331 - v61;
              if (__OFSUB__(v331, v61))
              {
                goto LABEL_430;
              }

              if (__OFADD__(v293, v61))
              {
                goto LABEL_434;
              }

              goto LABEL_295;
            case 6:
              if (sub_1E41FDD54() != a6)
              {
                OUTLINED_FUNCTION_37_46();
                if (v112)
                {
                  goto LABEL_427;
                }

                goto LABEL_276;
              }

              sub_1E41FDD54();
              OUTLINED_FUNCTION_11_106();
              if (v135)
              {
                v311 = v331 - v61;
                if (__OFSUB__(v331, v61))
                {
                  goto LABEL_432;
                }

                if (__OFADD__(v293, v61))
                {
                  goto LABEL_435;
                }
              }

              else if (__OFADD__(v293, v61))
              {
                goto LABEL_433;
              }

              goto LABEL_295;
            case 7:
              if (sub_1E41FDD54() == a6)
              {
                sub_1E41FDD54();
                OUTLINED_FUNCTION_11_106();
                if (v135)
                {
LABEL_229:
                  OUTLINED_FUNCTION_9_109();
                  OUTLINED_FUNCTION_16_100();
LABEL_293:
                  v323 = v51;
                  v326 = v51;
                  goto LABEL_297;
                }

                if (__OFADD__(v293, v61))
                {
                  goto LABEL_431;
                }

LABEL_295:
                OUTLINED_FUNCTION_9_109();
                OUTLINED_FUNCTION_16_100();
                v323 = v51;
                v326 = v51;
                v293 = v163;
                v168 = &v321;
LABEL_296:
                *(v168 - 32) = v163;
LABEL_297:
                v327 = v51;
                v321 = v51;
                v322 = v51;
                goto LABEL_298;
              }

              OUTLINED_FUNCTION_37_46();
              if (!v112)
              {
LABEL_276:
                OUTLINED_FUNCTION_9_109();
                OUTLINED_FUNCTION_16_100();
                OUTLINED_FUNCTION_29_59();
                *(v164 - 256) = v163;
                v165 = &v336;
LABEL_288:
                *(v165 - 32) = v163;
                v168 = &v326;
                goto LABEL_296;
              }

              __break(1u);
LABEL_426:
              __break(1u);
LABEL_427:
              __break(1u);
LABEL_428:
              __break(1u);
LABEL_429:
              __break(1u);
LABEL_430:
              __break(1u);
LABEL_431:
              __break(1u);
LABEL_432:
              __break(1u);
LABEL_433:
              __break(1u);
LABEL_434:
              __break(1u);
LABEL_435:
              __break(1u);
              break;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
              goto LABEL_229;
            default:
              v332 = sub_1E4207984();
              v333 = v248;
              MEMORY[0x1E69109E0](0xD000000000000024, 0x80000001E427C0F0);
              sub_1E3CA9098();
              result = sub_1E42076B4();
              __break(1u);
              return result;
          }

LABEL_436:

          v244 = 0;
          v243 = 0;
          v302 = 0;
          v247 = 0;
          v300 = 0;
          v240 = MEMORY[0x1E69E7CC0];
          v239 = MEMORY[0x1E69E7CC0];
          v242 = MEMORY[0x1E69E7CC0];
          v320 = MEMORY[0x1E69E7CC0];
          goto LABEL_425;
        }

        if (v322)
        {
          v112 = __OFSUB__(v331, v61);
          v331 -= v61;
          if (v112)
          {
            goto LABEL_417;
          }

          v61 = 0;
          OUTLINED_FUNCTION_6_134();
          v69 = 1;
          v326 = v322;
          v327 = v322;
          goto LABEL_235;
        }

        if (v64 == 1)
        {
          v152 = v328;
          v153 = v325;
          v154 = (v328 != 0) | v325;
          v66 = 1;
          v155 = v328 == -1;
          if (v328 == -1)
          {
            v152 = 0;
          }

          v327 = v61;
          v328 = v152;
          if (!v155)
          {
            v153 = v154;
          }

          v325 = v153;
          v67 = 1;
          v68 = 1;
          v51 = v61;
          v322 = v61;
          v323 = v61;
          v326 = v61;
          v321 = v61;
          v65 = 0;
          v69 = 1;
          goto LABEL_235;
        }

        v144 = v64 == 4 || v64 == 2;
        a6 = v329;
        if (v144)
        {
          if (v328 == -1)
          {
            v328 = 1;
          }

          else
          {
            v325 |= v328 != 1;
          }
        }

        OUTLINED_FUNCTION_6_134();
        v69 = 1;
        v51 = v61;
        v322 = v61;
        v323 = v61;
        v326 = v61;
        v327 = v61;
        v321 = v61;
LABEL_298:
        v112 = __OFADD__(v330, v61);
        v330 += v61;
        if (v112)
        {
          goto LABEL_404;
        }

        if (v331 == v317)
        {
          v67 = 1;
          v169 = 1;
        }

        else
        {
          v169 = v65;
        }

        if (v331 == v317)
        {
          v170 = 1;
        }

        else
        {
          v170 = v69;
        }

        if (v331 == v317)
        {
          v171 = 1;
        }

        else
        {
          v171 = v66;
        }

        if (v67 == 1)
        {
          sub_1E41FDD54();
          OUTLINED_FUNCTION_11_106();
          if (!v135)
          {
            if (v171)
            {
              v293 = 0;
              v288 = 0;
              v311 = v304;
LABEL_316:
              v172 = sub_1E41FDD54();
              v173 = v310;
              if (v172 == a6)
              {
                goto LABEL_317;
              }

              if (__OFSUB__(a6 + v310, 1))
              {
                goto LABEL_406;
              }

              if (v307 < a6 + v310 - 1)
              {
                v174 = v307 - a6;
                if (__OFSUB__(v307, a6))
                {
                  goto LABEL_413;
                }

                v173 = v174 + 1;
                if (__OFADD__(v174, 1))
                {
                  goto LABEL_414;
                }
              }

              if (v324)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v208 = OUTLINED_FUNCTION_27();
                  v294 = sub_1E3CA90F8(v208, v209, v210, v211);
                }

                v176 = *(v294 + 2);
                v175 = *(v294 + 3);
                if (v176 >= v175 >> 1)
                {
                  v212 = OUTLINED_FUNCTION_35(v175);
                  v294 = sub_1E3CA90F8(v212, v176 + 1, 1, v294);
                }

                v177 = v294;
                *(v294 + 2) = v176 + 1;
                v178 = &v177[16 * v176];
                *(v178 + 4) = a6;
                *(v178 + 5) = v173;
              }

              v307 = sub_1E41FDD54();
              v310 = 0;
              if ((v170 & 1) == 0)
              {
                OUTLINED_FUNCTION_20_71();
                goto LABEL_374;
              }

              OUTLINED_FUNCTION_20_71();
            }

            else
            {
              v293 = 0;
              if ((v170 & 1) == 0)
              {
                OUTLINED_FUNCTION_27_56(0);
                goto LABEL_374;
              }

              OUTLINED_FUNCTION_27_56(0);
            }

LABEL_333:
            v179 = v305;
            v180 = v328;
            v315 = v68;
            v329 = a6;
            if (v328 == 1)
            {
              v181 = __CFADD__(v314++, 1);
              if (v181)
              {
                goto LABEL_411;
              }
            }

            else
            {
              if (v328)
              {
                if (v326 < 1)
                {
                  v182 = v316;
                  if (v169)
                  {
LABEL_352:
                    v196 = v179;
                    v197 = v303 + v319;
                    v198 = v314;
                    if (__CFADD__(v303, v319))
                    {
                      goto LABEL_407;
                    }

                    v302 = v301 + v314;
                    if (__CFADD__(v301, v314))
                    {
                      goto LABEL_408;
                    }

                    v300 = &v182[v299];
                    if (__CFADD__(v299, v182))
                    {
                      goto LABEL_409;
                    }

                    type metadata accessor for WritingDirectionsCounts();
                    v199 = WritingDirectionsCounts.__allocating_init(natural:leftToRight:rightToLeft:)(v182, v319, v198);
                    v51 = v199;
                    if (v199[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough])
                    {
                      v200 = 1;
                    }

                    else
                    {
                      v200 = v199[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] - 1;
                    }

                    if (v287[0])
                    {
                      v201 = [objc_opt_self() valueWithRange:v308 direction:v330 hasMixedDirectionality:{v200, v306 & 1}];
                      MEMORY[0x1E6910BF0]();
                      v202 = *((v334 & 0xFFFFFFFFFFFFFF8) + 0x18);
                      if (*((v334 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v202 >> 1)
                      {
                        OUTLINED_FUNCTION_35(v202);
                        sub_1E42062F4();
                      }

                      sub_1E4206324();
                      v277 = v334;
                      if (!v196)
                      {
                        goto LABEL_369;
                      }

                      v313 = v308;
                    }

                    v203 = v196;
                    if (v285)
                    {
                      v204 = [v285 paragraphStyleWithBaseWritingDirection_];
                    }

                    else
                    {
                      v205 = sub_1E3D3648C(v200);
                      v204 = NSAttributedString.paragraphStyle(for:wanting:defaultStyle:)(v313, v330, v200, v205);

                      if (!v204)
                      {
LABEL_368:

                        v51 = v203;
LABEL_369:
                        a6 = v329;

                        v306 = 0;
                        v316 = 0;
                        v314 = 0;
                        v319 = 0;
                        OUTLINED_FUNCTION_36_43();
                        v330 = 0;
                        v321 = 0;
                        v328 = -1;
                        v313 = v331;
                        v308 = v331;
                        v299 = v300;
                        v301 = v302;
                        *&v287[4] = v197;
                        v303 = v197;
                        OUTLINED_FUNCTION_35_43();
LABEL_373:
                        LODWORD(v68) = v315;
                        goto LABEL_374;
                      }
                    }

                    v206 = v204;
                    [v203 addAttribute:v282 value:v206 range:{v313, v330}];

                    v51 = v206;
                    v203 = v206;
                    goto LABEL_368;
                  }

LABEL_372:
                  v316 = v182;
                  OUTLINED_FUNCTION_36_43();
                  v321 = 0;
                  v328 = -1;
                  v308 = v313;
                  OUTLINED_FUNCTION_35_43();
                  a6 = v329;
                  goto LABEL_373;
                }

                v182 = v316 + 1;
                if (v316 == -1)
                {
                  goto LABEL_415;
                }

LABEL_343:
                if (v324)
                {
                  v183 = v305;
                  v184 = v44;
                  v185 = objc_opt_self();
                  v186 = v323;
                  v187 = [v185 valueWithRange:v312 direction:v323 hasMixedDirectionality:{v180, v325 & 1, v249}];
                  MEMORY[0x1E6910BF0]();
                  v188 = *((v335 & 0xFFFFFFFFFFFFFF8) + 0x18);
                  if (*((v335 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v188 >> 1)
                  {
                    OUTLINED_FUNCTION_35(v188);
                    sub_1E42062F4();
                  }

                  sub_1E4206324();

                  v280 = v335;
                  v51 = v186;
                  v309 = v312;
                  v44 = v184;
                  v179 = v183;
                }

                if (v325)
                {
                  if (v179)
                  {
                    v189 = objc_allocWithZone(MEMORY[0x1E696AD98]);
                    v190 = v179;
                    v191 = [v189 initWithInteger_];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
                    v192 = swift_allocObject();
                    *(v192 + 16) = v271;
                    *(v192 + 32) = v191;
                    sub_1E376948C();
                    v193 = v179;
                    v194 = v191;
                    v195 = sub_1E42062A4();

                    [v190 addAttribute:v270 value:v195 range:{v309, v51}];

                    v179 = v193;
                  }

                  v281 = 1;
                  v306 = 1;
                }

LABEL_351:
                if (v169)
                {
                  goto LABEL_352;
                }

                goto LABEL_372;
              }

              v181 = __CFADD__(v319++, 1);
              if (v181)
              {
                goto LABEL_410;
              }
            }

            v182 = v316;
            if (v326 < 1)
            {
              goto LABEL_351;
            }

            goto LABEL_343;
          }

          v65 = v169;
          v69 = v170;
          v66 = v171;
        }

        v169 = v65;
        v170 = v69;
        if (v66)
        {
          goto LABEL_316;
        }

LABEL_317:
        if (v170)
        {
          goto LABEL_333;
        }

LABEL_374:
        v49 = 0;
        if (!v68)
        {
          goto LABEL_24;
        }

        v49 = v44;
        OUTLINED_FUNCTION_31_48();
        v42 = v262;
        v52 = v323;
        if (v236 == v237)
        {
          goto LABEL_424;
        }

        break;
      case 2:
        v326 = v61;
        v283 = v51;
        LODWORD(v315) = v44;
        v329 = a6;
        OUTLINED_FUNCTION_34_49();
        v118 = v261;
        sub_1E4207C44();
        v119 = OUTLINED_FUNCTION_7_151();
        v120(v119);
        OUTLINED_FUNCTION_36_5();
        v121 = OUTLINED_FUNCTION_21_71();
        v122(v121);
        OUTLINED_FUNCTION_37_6();
        __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
        v127 = *(v269 + 48);
        v128 = v259;
        sub_1E3CA930C(v118, v259);
        sub_1E3CA930C(v44, v128 + v127);
        OUTLINED_FUNCTION_63(v128);
        if (v135)
        {
          sub_1E325F748(v44, &qword_1ECF36618);
          sub_1E325F748(v118, &qword_1ECF36618);
          OUTLINED_FUNCTION_63(v128 + v127);
          if (v135)
          {
            sub_1E325F748(v128, &qword_1ECF36618);
            v64 = 4;
            goto LABEL_154;
          }

          goto LABEL_122;
        }

        v131 = v256;
        sub_1E3CA930C(v128, v256);
        OUTLINED_FUNCTION_63(v128 + v127);
        if (v132)
        {
          sub_1E325F748(v265, &qword_1ECF36618);
          sub_1E325F748(v261, &qword_1ECF36618);
          OUTLINED_FUNCTION_36_5();
          v133(v131, a6);
LABEL_122:
          sub_1E325F748(v128, &qword_1ECF36610);
          v64 = 2;
          goto LABEL_154;
        }

        OUTLINED_FUNCTION_36_5();
        v138 = OUTLINED_FUNCTION_39_41();
        v139(v138);
        v68 = sub_1E4205E84();
        v140 = *v257;
        (*v257)(v44, a6);
        sub_1E325F748(v265, &qword_1ECF36618);
        sub_1E325F748(v261, &qword_1ECF36618);
        v140(v131, a6);
        sub_1E325F748(v128, &qword_1ECF36618);
        if (v68)
        {
          v64 = 4;
        }

        else
        {
          v64 = 2;
        }

LABEL_154:
        v44 = v315;
        goto LABEL_155;
      case 8:
        goto LABEL_36;
      case 9:
        goto LABEL_62;
      case 10:
        goto LABEL_52;
      case 11:
        goto LABEL_44;
      case 12:
        goto LABEL_76;
      case 13:
        goto LABEL_298;
      case 14:
        goto LABEL_73;
      case 15:
        goto LABEL_70;
      default:
        goto LABEL_156;
    }
  }

  __break(1u);
LABEL_404:
  __break(1u);
LABEL_405:
  __break(1u);
LABEL_406:
  __break(1u);
LABEL_407:
  __break(1u);
LABEL_408:
  __break(1u);
LABEL_409:
  __break(1u);
LABEL_410:
  __break(1u);
LABEL_411:
  __break(1u);
LABEL_412:
  __break(1u);
LABEL_413:
  __break(1u);
LABEL_414:
  __break(1u);
LABEL_415:
  __break(1u);
LABEL_416:
  __break(1u);
LABEL_417:
  __break(1u);
LABEL_418:
  __break(1u);
LABEL_419:
  __break(1u);
LABEL_420:
  __break(1u);
LABEL_421:
  __break(1u);
LABEL_422:
  __break(1u);
LABEL_423:
  __break(1u);
LABEL_424:

  a6 = v250;
  v244 = v289;
  v247 = *&v287[4];
  v243 = v281;
  v239 = v294;
  v242 = v277;
  v240 = v280;
LABEL_425:

  type metadata accessor for WritingDirectionsCounts();
  v246 = WritingDirectionsCounts.__allocating_init(natural:leftToRight:rightToLeft:)(v300, v247, v302);

LABEL_402:
  *a6 = v239;
  *(a6 + 8) = v240;
  *(a6 + 16) = v242;
  *(a6 + 24) = v246;
  *(a6 + 32) = v243 & 1;
  *(a6 + 40) = v244;
  return result;
}

uint64_t sub_1E3CA9098()
{
  v0 = sub_1E4207944();
  MEMORY[0x1E69109E0](v0);
}

char *sub_1E3CA90F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_1E3CA91F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36628);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

uint64_t sub_1E3CA930C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3CA9380()
{
  result = qword_1ECF36620;
  if (!qword_1ECF36620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36620);
  }

  return result;
}

_BYTE *_s16KindOfWhitespaceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3CA94B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3CA94F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3CA954C()
{
  type metadata accessor for ListLockup();
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_21_1();
  sub_1E328FCF4(v1, v2);
  return sub_1E42006B4();
}

uint64_t type metadata accessor for ListLockup()
{
  result = qword_1EE2A9360;
  if (!qword_1EE2A9360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3CA9628()
{
  type metadata accessor for ListLockup();
  OUTLINED_FUNCTION_65_17();
  if (!v0 || (OUTLINED_FUNCTION_78_14(), OUTLINED_FUNCTION_50(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36760), (OUTLINED_FUNCTION_20_72() & 1) == 0))
  {
    OUTLINED_FUNCTION_19_9();
    goto LABEL_6;
  }

  v1 = v8;
  if (!v8)
  {
LABEL_6:
    sub_1E325F6F0(v7, &qword_1ECF36758);
    v1 = 0;
    return v1 & 1;
  }

  OUTLINED_FUNCTION_70(v7);
  v2 = OUTLINED_FUNCTION_26_1();
  v4 = v3(v2);
  OUTLINED_FUNCTION_77_15(v4, v5);
  return v1 & 1;
}

uint64_t sub_1E3CA96E0()
{
  type metadata accessor for ListLockup();
  OUTLINED_FUNCTION_65_17();
  if (!v0 || (OUTLINED_FUNCTION_78_14(), OUTLINED_FUNCTION_50(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36760), (OUTLINED_FUNCTION_20_72() & 1) == 0))
  {
    OUTLINED_FUNCTION_19_9();
    goto LABEL_6;
  }

  v1 = v8;
  if (!v8)
  {
LABEL_6:
    sub_1E325F6F0(v7, &qword_1ECF36758);
    v1 = 1;
    return v1 & 1;
  }

  OUTLINED_FUNCTION_70(v7);
  v2 = OUTLINED_FUNCTION_26_1();
  v4 = v3(v2);
  OUTLINED_FUNCTION_77_15(v4, v5);
  return v1 & 1;
}

uint64_t sub_1E3CA9798()
{
  type metadata accessor for ListLockup();
  OUTLINED_FUNCTION_65_17();
  if (!v0 || (OUTLINED_FUNCTION_78_14(), OUTLINED_FUNCTION_50(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36760), (OUTLINED_FUNCTION_20_72() & 1) == 0))
  {
    OUTLINED_FUNCTION_19_9();
    goto LABEL_6;
  }

  v1 = v8;
  if (!v8)
  {
LABEL_6:
    sub_1E325F6F0(v7, &qword_1ECF36758);
    v1 = 0;
    return v1 & 1;
  }

  OUTLINED_FUNCTION_70(v7);
  v2 = OUTLINED_FUNCTION_26_1();
  v4 = v3(v2);
  OUTLINED_FUNCTION_77_15(v4, v5);
  return v1 & 1;
}

uint64_t sub_1E3CA9850()
{
  type metadata accessor for ListLockup();
  OUTLINED_FUNCTION_65_17();
  if (!v0 || (OUTLINED_FUNCTION_78_14(), OUTLINED_FUNCTION_50(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36760), (OUTLINED_FUNCTION_20_72() & 1) == 0))
  {
    OUTLINED_FUNCTION_19_9();
    goto LABEL_6;
  }

  v1 = v8;
  if (!v8)
  {
LABEL_6:
    sub_1E325F6F0(v7, &qword_1ECF36758);
    v1 = 0;
    return v1 & 1;
  }

  OUTLINED_FUNCTION_70(v7);
  v2 = OUTLINED_FUNCTION_26_1();
  v4 = v3(v2);
  OUTLINED_FUNCTION_77_15(v4, v5);
  return v1 & 1;
}

uint64_t sub_1E3CA9908()
{
  v1 = v0;
  sub_1E4201D14();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = type metadata accessor for ListLockup();
  if ((sub_1E373F6E0() & 1) == 0)
  {
    return 0;
  }

  sub_1E391CDD4(v5);
  v7 = sub_1E4201D04();
  v8 = OUTLINED_FUNCTION_74();
  v9(v8);
  if (v7)
  {
    return 1;
  }

  else
  {
    return *(v1 + *(v6 + 68));
  }
}

void sub_1E3CA9A10(uint64_t (**a1)(uint64_t)@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a3;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for ListLockup();
  v8 = v7[5];
  *(v6 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEF0);
  swift_storeEnumTagMultiPayload();
  v9 = (v6 + v7[6]);
  type metadata accessor for ViewInteractionStates();
  OUTLINED_FUNCTION_3_156();
  sub_1E3CB0790(v10, v11);
  OUTLINED_FUNCTION_20_2();
  *v9 = sub_1E4201754();
  v9[1] = v12;
  v13 = v7[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0);
  swift_allocObject();
  *(v6 + v13) = sub_1E4200544();
  v123 = v7[17];
  *(v6 + v123) = 0;
  v14 = v7[18];
  *(v6 + v14) = 0;
  *(v6 + v7[8]) = a1;
  memcpy((v6 + v7[9]), a2, 0xC3uLL);
  v15 = *(*a1 + 49);

  v16 = sub_1E375C1CC(a2, &v130);
  v17 = v15(v16);
  *(v6 + v7[10]) = v17;
  v18 = (*a1 + 536);
  v19 = *v18;

  v124 = v17;
  if (!v19(v20))
  {
    v128 = 0u;
    v129 = 0u;
    goto LABEL_6;
  }

  *(&v131 + 1) = &unk_1F5D5DAC8;
  v132 = &off_1F5D5C9A8;
  LOBYTE(v130) = 33;
  v18 = MEMORY[0x1E69E7CA0];
  sub_1E3F9F164(&v130);

  __swift_destroy_boxed_opaque_existential_1(&v130);
  if (!*(&v129 + 1))
  {
LABEL_6:
    v21 = sub_1E325F6F0(&v128, &unk_1ECF296E0);
    goto LABEL_7;
  }

  v21 = swift_dynamicCast();
  if (v21)
  {
    *(v6 + v14) = v130;
  }

LABEL_7:
  v22 = a1;
  v23 = (*(*a1 + 58))(v21);
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = v23;
  v126 = v7;
  v25 = sub_1E32AE9B0(v23);
  if (!v25)
  {

LABEL_23:
    v40 = (*a1 + 488);
    v41 = *v40;
    v42 = (*v40)();
    if (v42)
    {
      sub_1E373E010(39, v42);
      OUTLINED_FUNCTION_79_15();
      v43 = v124;
      if (a1)
      {
        type metadata accessor for ImageViewModel();
        OUTLINED_FUNCTION_20_2();
        v42 = swift_dynamicCastClass();
        if (v42)
        {
          goto LABEL_29;
        }
      }

      v42 = 0;
    }

    else
    {
      v43 = v124;
    }

LABEL_29:
    *(v6 + v7[11]) = v42;
    v44 = a1;
    v45 = v41();
    if (v45)
    {
      sub_1E373E010(23, v45);
      v45 = OUTLINED_FUNCTION_79_15();
      if (!a1 || *a1 == _TtC8VideosUI13TextViewModel)
      {
LABEL_34:
        *(v6 + v7[13]) = v44;
        v46 = a1;
        v47 = (v41)(v45);
        if (v47)
        {
          sub_1E373E010(9, v47);
          v47 = OUTLINED_FUNCTION_79_15();
          if (!a1 || *a1 == _TtC8VideosUI13TextViewModel)
          {
LABEL_39:
            *(v6 + v7[14]) = v46;
            v48 = (v41)(v47);
            if (v48)
            {
              sub_1E373E010(31, v48);
              OUTLINED_FUNCTION_79_15();
              if (!a1)
              {
LABEL_43:
                v48 = 0;
                goto LABEL_44;
              }

              type metadata accessor for ImageViewModel();
              OUTLINED_FUNCTION_20_2();
              v48 = swift_dynamicCastClass();
              if (!v48)
              {

                goto LABEL_43;
              }
            }

LABEL_44:
            *(v6 + v7[12]) = v48;
            v49 = v41();
            if (v49)
            {
              v50 = sub_1E373E010(59, v49);
            }

            else
            {
              v50 = 0;
            }

            *(v6 + v7[15]) = v50;
            v51 = (v41)(v49);

            if (v51)
            {
              v3 = sub_1E373E010(60, v51);
            }

            else
            {
              v3 = 0;
            }

            goto LABEL_137;
          }
        }

        v46 = 0;
        goto LABEL_39;
      }
    }

    v44 = 0;
    goto LABEL_34;
  }

  v26 = v25;
  v122 = a2;
  v125 = v6;

  v27 = 0;
  v28 = v24 & 0xC000000000000001;
  while (v26 != v27)
  {
    if (v28)
    {
      OUTLINED_FUNCTION_62_23();
      v3 = v39;
    }

    else
    {
      OUTLINED_FUNCTION_50_33();
      if (v29)
      {
        goto LABEL_149;
      }

      OUTLINED_FUNCTION_39_42();
    }

    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_49_38();
    WORD2(v127) = 39;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_9_110();
    v30 = OUTLINED_FUNCTION_16_101();
    OUTLINED_FUNCTION_14_117(v30, v31, v32, v33, v34, v35, v36, v37, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), v130);
    v38 = v38 && v18 == v22;
    if (v38)
    {

LABEL_51:
      type metadata accessor for ImageViewModel();
      v52 = swift_dynamicCastClass();
      if (v52)
      {
        goto LABEL_54;
      }

      break;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_64_1();

    if (v6)
    {
      goto LABEL_51;
    }

    ++v27;
  }

  v52 = 0;
LABEL_54:
  v53 = 0;
  *(v125 + v126[11]) = v52;
  while (v26 != v53)
  {
    if (v28)
    {
      OUTLINED_FUNCTION_62_23();
      v3 = v63;
    }

    else
    {
      OUTLINED_FUNCTION_50_33();
      if (v29)
      {
        goto LABEL_151;
      }

      OUTLINED_FUNCTION_39_42();
    }

    if (__OFADD__(v53, 1))
    {
      goto LABEL_150;
    }

    OUTLINED_FUNCTION_49_38();
    WORD2(v127) = 23;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_9_110();
    v54 = OUTLINED_FUNCTION_16_101();
    OUTLINED_FUNCTION_14_117(v54, v55, v56, v57, v58, v59, v60, v61, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), v130);
    if (v38 && v18 == v22)
    {

LABEL_68:
      if (*v3 == _TtC8VideosUI13TextViewModel)
      {
        goto LABEL_71;
      }

      break;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_64_1();

    if (v6)
    {
      goto LABEL_68;
    }

    ++v53;
  }

  v3 = 0;
LABEL_71:
  v64 = 0;
  *(v125 + v126[13]) = v3;
  while (v26 != v64)
  {
    if (v28)
    {
      OUTLINED_FUNCTION_62_23();
      v3 = v74;
    }

    else
    {
      OUTLINED_FUNCTION_50_33();
      if (v29)
      {
        goto LABEL_153;
      }

      OUTLINED_FUNCTION_39_42();
    }

    if (__OFADD__(v64, 1))
    {
      goto LABEL_152;
    }

    OUTLINED_FUNCTION_49_38();
    WORD2(v127) = 9;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_9_110();
    v65 = OUTLINED_FUNCTION_16_101();
    OUTLINED_FUNCTION_14_117(v65, v66, v67, v68, v69, v70, v71, v72, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), v130);
    if (v38 && v18 == v22)
    {

LABEL_85:
      if (*v3 == _TtC8VideosUI13TextViewModel)
      {
        goto LABEL_88;
      }

      break;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_64_1();

    if (v6)
    {
      goto LABEL_85;
    }

    ++v64;
  }

  v3 = 0;
LABEL_88:
  v75 = 0;
  *(v125 + v126[14]) = v3;
  while (v26 != v75)
  {
    if (v28)
    {
      OUTLINED_FUNCTION_62_23();
      v3 = v85;
    }

    else
    {
      OUTLINED_FUNCTION_50_33();
      if (v29)
      {
        goto LABEL_155;
      }

      OUTLINED_FUNCTION_39_42();
    }

    if (__OFADD__(v75, 1))
    {
      goto LABEL_154;
    }

    OUTLINED_FUNCTION_49_38();
    WORD2(v127) = 31;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_9_110();
    v76 = OUTLINED_FUNCTION_16_101();
    OUTLINED_FUNCTION_14_117(v76, v77, v78, v79, v80, v81, v82, v83, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), v130);
    if (v38 && v18 == v22)
    {

LABEL_102:
      type metadata accessor for ImageViewModel();
      v86 = swift_dynamicCastClass();
      if (v86)
      {
        goto LABEL_105;
      }

      break;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_64_1();

    if (v6)
    {
      goto LABEL_102;
    }

    ++v75;
  }

  v86 = 0;
LABEL_105:
  v87 = 0;
  *(v125 + v126[12]) = v86;
  while (1)
  {
    if (v26 == v87)
    {
      v3 = 0;
      goto LABEL_120;
    }

    if (v28)
    {
      OUTLINED_FUNCTION_62_23();
      v3 = v97;
    }

    else
    {
      OUTLINED_FUNCTION_50_33();
      if (v29)
      {
        goto LABEL_157;
      }

      OUTLINED_FUNCTION_39_42();
    }

    if (__OFADD__(v87, 1))
    {
      goto LABEL_156;
    }

    OUTLINED_FUNCTION_49_38();
    WORD2(v127) = 59;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_9_110();
    v88 = OUTLINED_FUNCTION_16_101();
    OUTLINED_FUNCTION_14_117(v88, v89, v90, v91, v92, v93, v94, v95, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), v130);
    if (v38 && v18 == v22)
    {
      break;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_64_1();

    if (v6)
    {
      goto LABEL_120;
    }

    ++v87;
  }

LABEL_120:
  v98 = 0;
  *(v125 + v126[15]) = v3;
  while (1)
  {
    if (v26 == v98)
    {

      v3 = 0;
      goto LABEL_136;
    }

    if (v28)
    {
      OUTLINED_FUNCTION_62_23();
      v3 = v108;
    }

    else
    {
      OUTLINED_FUNCTION_50_33();
      if (v29)
      {
        goto LABEL_159;
      }

      OUTLINED_FUNCTION_39_42();
    }

    if (__OFADD__(v98, 1))
    {
      goto LABEL_158;
    }

    OUTLINED_FUNCTION_49_38();
    WORD2(v127) = 60;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_9_110();
    v99 = OUTLINED_FUNCTION_16_101();
    OUTLINED_FUNCTION_14_117(v99, v100, v101, v102, v103, v104, v105, v106, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), v130);
    if (v38 && v18 == v22)
    {
      break;
    }

    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_64_1();

    if (v6)
    {
      goto LABEL_135;
    }

    ++v98;
  }

LABEL_135:

LABEL_136:
  v6 = v125;
  v7 = v126;
  a2 = v122;
  v43 = v124;
LABEL_137:
  *(v6 + v7[16]) = v3;
  if (v43)
  {
    if (*v43 == _TtC8VideosUI25OfferListLockupCellLayout)
    {
      v109 = sub_1E37BD0DC();
      v110 = (*(*v109 + 504))();

      if (v110 != 18)
      {
        v121 = sub_1E3A92050();

        sub_1E37E6F2C(a2);
        if (v121)
        {
          *(v6 + v123) = 1;
        }

        goto LABEL_142;
      }
    }
  }

  sub_1E37E6F2C(a2);
LABEL_142:
  OUTLINED_FUNCTION_32_1();
  if (v38)
  {
    v113 = v111;
  }

  else
  {
    v113 = v112;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(v113);
  v114 = sub_1E3A25914();
  v115 = v6 + v7[19];
  *&v128 = v114;
  *(&v128 + 1) = v116;
  *&v129 = v117;
  *(&v129 + 1) = v118;
  type metadata accessor for UIEdgeInsets();
  sub_1E42038E4();
  v119 = v132;
  v120 = v131;
  *v115 = v130;
  *(v115 + 16) = v120;
  *(v115 + 32) = v119;
}

uint64_t sub_1E3CAA568()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36670);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36698);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36658);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_2();
  if (sub_1E3CA9908())
  {
    sub_1E3CABB98(v1);
    v7 = OUTLINED_FUNCTION_47_4();
    sub_1E3743538(v7, v8, &qword_1ECF36658);
    swift_storeEnumTagMultiPayload();
    sub_1E3CAF818();
    sub_1E3CAF954();
    OUTLINED_FUNCTION_55_34();
    OUTLINED_FUNCTION_68_3();
  }

  else
  {
    sub_1E3CAAC0C();
    sub_1E3743538(v4, v0, &qword_1ECF36670);
    swift_storeEnumTagMultiPayload();
    sub_1E3CAF818();
    sub_1E3CAF954();
    OUTLINED_FUNCTION_55_34();
    v9 = v4;
    v10 = &qword_1ECF36670;
  }

  return sub_1E325F6F0(v9, v10);
}

void sub_1E3CAA724()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v0;
  v56 = v3;
  v4 = type metadata accessor for ListLockup();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36640);
  OUTLINED_FUNCTION_0_10();
  v50 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v49 = v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36648);
  OUTLINED_FUNCTION_0_10();
  v53 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v51 = v17;
  v18 = *(v0 + *(v4 + 40));
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = (*(*v18 + 1368))();
  if (!v19)
  {
    goto LABEL_6;
  }

  if (!*(v19 + 16))
  {

LABEL_6:
    v21 = sub_1E4202774();
    goto LABEL_7;
  }

  v20 = *(v19 + 32);

  v21 = sub_1E41244C4(v20);
LABEL_7:
  v54 = v21;
  sub_1E3CAA568();
  *(v1 + *(v10 + 36)) = 0;
  v22 = *(v2 + *(v4 + 72));
  sub_1E3CB0734(v2, v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListLockup);
  v48 = v4;
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v47 = v2;
  v25 = v24;
  sub_1E3CB06D8(v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for ListLockup);
  v26 = sub_1E3CAF6D4();
  v46[1] = v8;
  v46[0] = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v26;
  v28 = v49;
  sub_1E3A9D80C(v22, sub_1E3CAF620, v25, v10, v26);

  sub_1E325F6F0(v1, &qword_1ECF36638);
  *&v57 = v10;
  *(&v57 + 1) = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v51;
  v30 = v52;
  sub_1E3A9D920(v18, v52, OpaqueTypeConformance2);
  v32 = OUTLINED_FUNCTION_47_4();
  v33(v32);
  v34 = v47;
  OUTLINED_FUNCTION_65_16();
  sub_1E3CB0734(v35, v36, type metadata accessor for ListLockup);
  v37 = swift_allocObject();
  sub_1E3CB06D8(v28, v37 + v23, type metadata accessor for ListLockup);
  *&v57 = v30;
  *(&v57 + 1) = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v55;
  v40 = OUTLINED_FUNCTION_51_1();
  v41 = v56;
  sub_1E403796C(v40 & 1, sub_1E3CAFB24, v37, v39, v38);

  (*(v53 + 8))(v31, v39);
  v42 = (v34 + *(v48 + 76));
  v43 = *(v42 + 4);
  v44 = v42[1];
  v57 = *v42;
  v58 = v44;
  v59 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36600);
  sub_1E42038F4();
  LOBYTE(v38) = v54;
  sub_1E39535DC();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v45 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36690) + 36));
  *v45 = v38;
  OUTLINED_FUNCTION_11_4(v45);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3CAAC0C()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v0;
  v35 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36688);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36680);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36678);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for ListLockup();
  if (sub_1E373F6E0())
  {
    goto LABEL_9;
  }

  v15 = *(v0 + *(v14 + 40));
  if (!v15 || (v37[0] = v15, type metadata accessor for ViewLayout(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36760), (swift_dynamicCast() & 1) == 0))
  {
    memset(v38, 0, 40);
    goto LABEL_8;
  }

  v16 = v38[3];
  if (!v38[3])
  {
LABEL_8:
    sub_1E325F6F0(v38, &qword_1ECF36758);
    goto LABEL_9;
  }

  v17 = v38[4];
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  LOBYTE(v17) = (*(v17 + 24))(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v38);
  if ((v17 & 1) == 0)
  {
LABEL_9:
    OUTLINED_FUNCTION_46_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36600);
    sub_1E42038F4();
  }

  *v7 = sub_1E4201D54();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v18 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36798) + 44)];
  *v18 = sub_1E4201B84();
  *(v18 + 1) = 0;
  v18[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367A0);
  sub_1E3CAB138();
  sub_1E4202764();
  v19 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v20)
  {
    v19 = sub_1E4202774();
  }

  v21 = *(v2 + *(v14 + 40));
  if (v21)
  {
    OUTLINED_FUNCTION_8();
    (*(v22 + 176))(v36);
    OUTLINED_FUNCTION_32_1();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v7, v1, &qword_1ECF36688);
  v23 = (v1 + *(v8 + 36));
  *v23 = v19;
  OUTLINED_FUNCTION_11_4(v23);
  v24 = sub_1E4202784();
  v25 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v24)
  {
    v25 = sub_1E4202774();
  }

  if (v21)
  {
    OUTLINED_FUNCTION_8();
    (*(v26 + 176))(v37);
    OUTLINED_FUNCTION_32_1();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v27 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v27, v28, v29);
  v30 = &v13[*(v10 + 36)];
  *v30 = v25;
  OUTLINED_FUNCTION_11_4(v30);
  if (v21)
  {
    OUTLINED_FUNCTION_8();
    (*(v31 + 328))();
  }

  sub_1E4203DA4();
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_33_8();
  sub_1E42015C4();
  v32 = v35;
  sub_1E3741EA0(v13, v35, &qword_1ECF36678);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36670);
  memcpy((v32 + *(v33 + 36)), v38, 0x70uLL);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3CAB138()
{
  OUTLINED_FUNCTION_21_5();
  v4 = v3;
  v68 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367A8);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_78();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v18);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367B8);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_8();
  v25 = *(v4 + *(type metadata accessor for ListLockup() + 44));
  if (v25)
  {
    v64 = v12;
    v66 = v10;

    sub_1E3CAB744(v26, v2);
    sub_1E4202784();
    v27 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v28)
    {
      v27 = sub_1E4202774();
    }

    OUTLINED_FUNCTION_26();
    v30 = *(v29 + 392);

    v65 = v30;
    if ((v30)(v31))
    {
      OUTLINED_FUNCTION_30();
      (*(v32 + 152))(&v70);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();
    (*(v14 + 32))(v69, v2, v64);
    v35 = (v69 + *(v16 + 36));
    *v35 = v27;
    OUTLINED_FUNCTION_15_3(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4299720;
    v37 = sub_1E4202744();
    *(inited + 32) = v37;
    *(inited + 33) = sub_1E4202754();
    v38 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v37)
    {
      v38 = sub_1E4202774();
    }

    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    v10 = v66;
    if (!v28)
    {
      v38 = sub_1E4202774();
    }

    v34 = v67;
    v39 = v65();

    if (v39)
    {
      OUTLINED_FUNCTION_8();
      (*(v40 + 152))(&v71);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    OUTLINED_FUNCTION_46_12();
    OUTLINED_FUNCTION_73_14();
    sub_1E3741EA0(v41, v42, v43);
    v44 = (v25 + *(v67 + 36));
    *v44 = v38;
    OUTLINED_FUNCTION_15_3(v44);
    OUTLINED_FUNCTION_73_14();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v45, v46, v47);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v48, v49, v50);
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v34 = v67;
  }

  __swift_storeEnumTagSinglePayload(v1, v33, 1, v34);
  *v0 = sub_1E4201D44();
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367C0);
  sub_1E3CAB820();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v51, v52, v53);
  sub_1E3743538(v0, v10, &qword_1ECF367A8);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v54, v55, v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367C8);
  sub_1E3743538(v10, v68 + *(v57 + 48), &qword_1ECF367A8);
  v58 = OUTLINED_FUNCTION_74();
  sub_1E325F6F0(v58, v59);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v60, v61);
  sub_1E325F6F0(v10, &qword_1ECF367A8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v62, v63);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3CAB744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3EB9BB4(v9);
  if (*(v2 + *(type metadata accessor for ListLockup() + 24)))
  {

    v5 = sub_1E3B1DDD8();

    sub_1E37E8BE8(a1, v9, 0, v5 & 1, 0, 0, a2);
    return sub_1E375C31C(v9);
  }

  else
  {
    type metadata accessor for ViewInteractionStates();
    OUTLINED_FUNCTION_3_156();
    sub_1E3CB0790(v7, v8);
    OUTLINED_FUNCTION_21_1();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

void sub_1E3CAB820()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367D0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367D8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v14 = 0.0;
  if ((sub_1E3CA9798() & 1) != 0 || (sub_1E3CA9850() & 1) == 0)
  {
    v21 = 1;
    goto LABEL_12;
  }

  v15 = *(v3 + *(type metadata accessor for ListLockup() + 40));
  if (v15 && (v40[1] = v15, type metadata accessor for ViewLayout(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36760), (swift_dynamicCast() & 1) != 0))
  {
    v16 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
      v17 = v43;
      __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
      v18 = (*(v17 + 32))(v16, v17);
      __swift_destroy_boxed_opaque_existential_1(&v41);
      if (v18)
      {
        v19 = OUTLINED_FUNCTION_36_0();
        v14 = sub_1E3FFE5B8(v19, v20);
        v21 = 0;
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
  }

  sub_1E325F6F0(&v41, &qword_1ECF36758);
LABEL_11:
  v21 = 1;
LABEL_12:
  *v9 = sub_1E4201B84();
  *(v9 + 1) = 0;
  v9[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367E0);
  sub_1E3CACD00();
  v22 = sub_1E4202784();
  v23 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v22)
  {
    v23 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v9, v1, &qword_1ECF367D0);
  v24 = (v1 + *(v10 + 36));
  *v24 = v23;
  OUTLINED_FUNCTION_15_3(v24);
  v25 = OUTLINED_FUNCTION_47_4();
  sub_1E3741EA0(v25, v26, v27);
  v28 = 0.0;
  if (sub_1E3CA9798() & 1) == 0 && (sub_1E3CA9850() & 1) != 0 && (sub_1E3CA96E0())
  {
    v29 = OUTLINED_FUNCTION_36_0();
    v28 = sub_1E3FFE5B8(v29, v30);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = OUTLINED_FUNCTION_74();
  sub_1E3743538(v32, v33, &qword_1ECF367D8);
  *v5 = v14;
  *(v5 + 8) = v21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367E8);
  sub_1E3743538(v0, v5 + *(v34 + 48), &qword_1ECF367D8);
  v35 = v5 + *(v34 + 64);
  *v35 = v28;
  *(v35 + 8) = v31;
  OUTLINED_FUNCTION_68_3();
  sub_1E325F6F0(v36, v37);
  OUTLINED_FUNCTION_68_3();
  sub_1E325F6F0(v38, v39);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3CABB98(uint64_t a1@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366A0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36668);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_26_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36660);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v21);
  v22 = type metadata accessor for ListLockup();
  v23 = *(v1 + *(v22 + 40));
  if (v23 && *v23 == _TtC8VideosUI25OfferListLockupCellLayout)
  {
    v24 = v22;
    v54 = v3;
    v55 = a1;

    *v2 = sub_1E4201D54();
    *(v2 + 8) = 0;
    *(v2 + 16) = 1;
    sub_1E3CAC0BC();
    v25 = sub_1E4202764();
    v26 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v25)
    {
      v26 = sub_1E4202774();
    }

    v27 = (v1 + *(v24 + 76));
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    v31 = v27[3];
    v32 = v27[4];
    __src[0] = v28;
    __src[1] = v29;
    __src[2] = v30;
    __src[3] = v31;
    v53 = v32;
    __src[4] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36600);
    sub_1E42038F4();
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3741EA0(v13, v4, &qword_1ECF366A0);
    v33 = (v4 + *(v14 + 36));
    *v33 = v26;
    OUTLINED_FUNCTION_11_4(v33);
    sub_1E4202784();
    v34 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v35)
    {
      v34 = sub_1E4202774();
    }

    v36 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366B0) + 44);
    __src[0] = v28;
    __src[1] = v29;
    __src[2] = v30;
    __src[3] = v31;
    __src[4] = v53;
    sub_1E42038F4();
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3741EA0(v4, v36, &qword_1ECF366A8);
    v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366B8) + 36);
    *v37 = v34;
    *(v37 + 8) = v5;
    *(v37 + 16) = v6;
    *(v37 + 24) = v7;
    *(v37 + 32) = v8;
    *(v37 + 40) = 0;
    (*(*v23 + 328))();
    sub_1E4203DA4();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_33_8();
    sub_1E42015C4();

    v38 = v2;
    v39 = v54;
    sub_1E3741EA0(v38, v54, &qword_1ECF36668);
    memcpy((v39 + *(v18 + 36)), __src, 0x70uLL);
    OUTLINED_FUNCTION_12_12();
    sub_1E3741EA0(v40, v41, v42);
    v43 = v55;
    OUTLINED_FUNCTION_12_12();
    sub_1E3741EA0(v44, v45, v46);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v18);
    OUTLINED_FUNCTION_42();
  }

  else
  {
    OUTLINED_FUNCTION_42();

    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  }
}

void sub_1E3CAC0BC()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366C0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366C8);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33[-v15];
  sub_1E37BD0DC();
  OUTLINED_FUNCTION_30();
  (*(v17 + 152))(&v52);

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  OUTLINED_FUNCTION_59_24();
  v44 = v18;
  v43 = v54;
  v42 = v55;
  v51 = 1;
  v50 = v19;
  v49 = v53;
  *v16 = sub_1E4201B64();
  *(v16 + 1) = 0;
  v16[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366D0);
  sub_1E3CAC54C();
  *v11 = sub_1E4201D54();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366D8) + 44)];
  v37 = v11;
  v21 = sub_1E3CAD790(v2, v20);
  (*(*v4 + 176))(v56, v21);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  v41 = v56[5];
  v40 = v58;
  v39 = v60;
  v38 = v61;
  v48 = 1;
  v47 = v57;
  v46 = v59;
  v22 = OUTLINED_FUNCTION_36_0();
  v24 = sub_1E3FFE5B8(v22, v23);
  LOBYTE(v4) = v51;
  v25 = v50;
  v26 = v49;
  sub_1E3743538(v16, v0, &qword_1ECF366C8);
  OUTLINED_FUNCTION_73_14();
  sub_1E3743538(v27, v28, &qword_1ECF366C0);
  v34 = v48;
  v35 = v47;
  v36 = v46;
  *v6 = 0;
  *(v6 + 8) = v4;
  *(v6 + 16) = v45;
  *(v6 + 24) = v25;
  *(v6 + 32) = v44;
  *(v6 + 40) = v26;
  v29 = v42;
  *(v6 + 48) = v43;
  *(v6 + 56) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366E0);
  sub_1E3743538(v0, v6 + v30[12], &qword_1ECF366C8);
  sub_1E3743538(v11, v6 + v30[16], &qword_1ECF366C0);
  v31 = v6 + v30[20];
  *v31 = 0;
  *(v31 + 8) = v34;
  *(v31 + 16) = v41;
  *(v31 + 24) = v35;
  *(v31 + 32) = v40;
  *(v31 + 40) = v36;
  v32 = v38;
  *(v31 + 48) = v39;
  *(v31 + 56) = v32;
  *(v6 + v30[24]) = v24;
  sub_1E325F6F0(v37, &qword_1ECF366C0);
  sub_1E325F6F0(v16, &qword_1ECF366C8);
  sub_1E325F6F0(v11, &qword_1ECF366C0);
  sub_1E325F6F0(v0, &qword_1ECF366C8);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3CAC54C()
{
  OUTLINED_FUNCTION_9_4();
  v88 = v1;
  v3 = v2;
  v102 = v4;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878);
  OUTLINED_FUNCTION_0_10();
  v90 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36770);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v101 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v100 = v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36778);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v95 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v92 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v22);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v25);
  v26 = sub_1E4201D14();
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v32 = v31 - v30;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36780);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v91 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36788);
  v36 = OUTLINED_FUNCTION_17_2(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_5();
  v97 = v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v84 - v39;
  v41 = type metadata accessor for ListLockup();
  v42 = *(v3 + *(v41 + 44));
  v98 = v3;
  if (v42)
  {
    v84 = v15;

    sub_1E391CDD4(v32);
    v43 = sub_1E4201D04();
    v85 = v28;
    v44 = *(v28 + 8);
    v86 = v26;
    v44(v32, v26);
    if (v43)
    {
      v45 = v87;
      sub_1E3CAB744(v42, v87);
      sub_1E4202754();
      v46 = OUTLINED_FUNCTION_41_4();
      sub_1E4202774();
      sub_1E4202774();
      OUTLINED_FUNCTION_29();
      if (!v47)
      {
        v46 = sub_1E4202774();
      }

      v48 = v88;
      sub_1E37BD0DC();
      OUTLINED_FUNCTION_30();
      (*(v49 + 152))(&v103);

      OUTLINED_FUNCTION_32_1();
      sub_1E4200A54();
      OUTLINED_FUNCTION_3();
      (*(v92 + 32))(v0, v45, v84);
      v50 = (v0 + *(v93 + 36));
      *v50 = v46;
      OUTLINED_FUNCTION_11_4(v50);
      OUTLINED_FUNCTION_65_16();
      v52 = v51;
      sub_1E3741EA0(v53, v54, v51);
      sub_1E3743538(v48, v95, v52);
      swift_storeEnumTagMultiPayload();
      sub_1E3761A18();
      OUTLINED_FUNCTION_19_0();
      v55 = v91;
      sub_1E4201F44();

      sub_1E325F6F0(v48, &qword_1ECF29240);
    }

    else
    {
      sub_1E3CAB744(v42, v20);
      v58 = v92;
      v59 = v84;
      (*(v92 + 16))(v95, v20, v84);
      swift_storeEnumTagMultiPayload();
      sub_1E3761A18();
      OUTLINED_FUNCTION_19_0();
      v55 = v91;
      OUTLINED_FUNCTION_19_1();
      sub_1E4201F44();

      (*(v58 + 8))(v20, v59);
    }

    sub_1E3741EA0(v55, v40, &qword_1ECF36780);
    v56 = 0;
    v57 = v86;
    v28 = v85;
  }

  else
  {
    v56 = 1;
    v57 = v26;
  }

  __swift_storeEnumTagSinglePayload(v40, v56, 1, v96);
  v60 = *(v98 + *(v41 + 60));
  if (v60)
  {

    sub_1E391CDD4(v32);
    v61 = sub_1E4201D04();
    (*(v28 + 8))(v32, v57);
    if ((v61 & 1) == 0)
    {
      v65 = v89;
      OUTLINED_FUNCTION_63_21(v60);

      v63 = v99;
      v64 = v100;
      (*(v90 + 32))(v100, v65, v99);
      v62 = 0;
      goto LABEL_14;
    }
  }

  v62 = 1;
  v63 = v99;
  v64 = v100;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v64, v62, 1, v63);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v66, v67, v68);
  v69 = v101;
  sub_1E3743538(v64, v101, &qword_1ECF36770);
  v70 = v102;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v71, v72, v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36790);
  v75 = v70 + *(v74 + 48);
  *v75 = 0;
  *(v75 + 8) = 1;
  sub_1E3743538(v69, v70 + *(v74 + 64), &qword_1ECF36770);
  OUTLINED_FUNCTION_55_0();
  sub_1E325F6F0(v76, v77);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v78, v79);
  OUTLINED_FUNCTION_55_0();
  sub_1E325F6F0(v80, v81);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v82, v83);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3CACD00()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v5 = v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v64 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367B8);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367F0);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_8();
  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  v24 = 1;
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF367F8);
  sub_1E3CAD294();
  v25 = *(v3 + *(type metadata accessor for ListLockup() + 48));
  if (v25)
  {
    v61 = v12;
    v62 = v5;
    swift_retain_n();
    sub_1E3EB9BB4(v68);
    v26 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v25, v68, 0, v26 & 1, 0, 0, v9);
    sub_1E375C31C(v68);
    sub_1E4202764();
    v27 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v28)
    {
      v27 = sub_1E4202774();
    }

    v29 = (*v25 + 392);
    v30 = *v29;
    v31 = (*v29)();

    if (v31)
    {
      OUTLINED_FUNCTION_8();
      (*(v32 + 152))(&v69);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v33 = v67;
    (*(v64 + 32))(v67, v9, v65);
    v34 = (v33 + *(v63 + 36));
    *v34 = v27;
    OUTLINED_FUNCTION_11_4(v34);
    sub_1E4202784();
    v35 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v28)
    {
      v35 = sub_1E4202774();
    }

    v36 = v30();

    if (v36)
    {
      OUTLINED_FUNCTION_8();
      (*(v37 + 152))(&v70);

      OUTLINED_FUNCTION_32_1();
    }

    v5 = v62;
    v12 = v61;
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    v38 = v66;
    sub_1E3741EA0(v67, v66, &qword_1ECF29240);
    v39 = (v38 + *(v12 + 36));
    *v39 = v35;
    OUTLINED_FUNCTION_11_4(v39);
    OUTLINED_FUNCTION_12_12();
    sub_1E3741EA0(v40, v41, v42);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v43, v44, v45);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v20, v24, 1, v12);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v46, v47, v48);
  OUTLINED_FUNCTION_55_0();
  sub_1E3743538(v49, v50, v51);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v52, v53, v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36800);
  sub_1E3743538(v0, v5 + *(v55 + 48), &qword_1ECF367B8);
  sub_1E325F6F0(v20, &qword_1ECF367B8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v56, v57);
  sub_1E325F6F0(v0, &qword_1ECF367B8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v58, v59);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3CAD294()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36808);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  if (*(v2 + *(type metadata accessor for ListLockup() + 40)))
  {
    OUTLINED_FUNCTION_8();
    v9 = (*(v8 + 1624))(23, 0);
  }

  else
  {
    v9 = 0;
  }

  if (sub_1E3CA9628())
  {
    v40 = 0;
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v10 = 0;
    v39 = 1;
  }

  else
  {
    if (v9)
    {
      OUTLINED_FUNCTION_26();
      v12 = *(v11 + 152);

      v12(&v42, v13);
    }

    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_36_0();
    sub_1E4200D94();
    v39 = 0;
    OUTLINED_FUNCTION_59_24();
    v38 = v14;
    v37 = v44;
    v36 = v45;
    LOBYTE(v46) = 1;
    v10 = 1;
    v34 = v15;
    v35 = v43;
    LOBYTE(v47) = 0;
  }

  *v0 = sub_1E4201B84();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36810);
  sub_1E3CAF048();
  if (sub_1E3CA9628())
  {
    v33 = 0;
    v31 = 0;
    v30 = 0;
    v29 = 0;
    v28 = 0;
    v16 = 0;
    v17 = 0;
    v32 = 1;
  }

  else
  {
    if (v9)
    {
      OUTLINED_FUNCTION_26();
      v19 = *(v18 + 152);

      v19(&v46, v20);
    }

    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_36_0();
    sub_1E4200D94();
    v32 = 0;
    v33 = v47;
    v31 = v49;
    v30 = v51;
    v29 = v52;
    v17 = 1;
    v16 = v48;
    v28 = v50;
  }

  v21 = 0.0;
  if ((sub_1E3CA9798() & 1) != 0 || (sub_1E3CA9850() & 1) != 0 || (sub_1E3CA96E0() & 1) == 0)
  {
    v24 = 1;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_36_0();
    v21 = sub_1E3FFE5B8(v22, v23);
    v24 = 0;
  }

  sub_1E3743538(v0, v41, &qword_1ECF36808);
  *v4 = 0;
  *(v4 + 8) = v10;
  *(v4 + 16) = v40;
  *(v4 + 24) = v34;
  *(v4 + 32) = v38;
  *(v4 + 40) = v35;
  *(v4 + 48) = v37;
  *(v4 + 56) = v36;
  *(v4 + 64) = v39;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36818);
  sub_1E3743538(v41, v4 + v25[12], &qword_1ECF36808);
  v26 = v4 + v25[16];
  *v26 = 0;
  *(v26 + 8) = v17;
  *(v26 + 16) = v33;
  *(v26 + 24) = v16;
  *(v26 + 32) = v31;
  *(v26 + 40) = v28;
  *(v26 + 48) = v30;
  *(v26 + 56) = v29;
  *(v26 + 64) = v32;
  v27 = v4 + v25[20];

  *v27 = v21;
  *(v27 + 8) = v24;
  sub_1E325F6F0(v0, &qword_1ECF36808);
  sub_1E325F6F0(v41, &qword_1ECF36808);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3CAD790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v111 - v6;
  v115 = sub_1E4201D14();
  OUTLINED_FUNCTION_0_10();
  v114 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366F0);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_8();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878);
  OUTLINED_FUNCTION_0_10();
  v122 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v20);
  v116 = type metadata accessor for ScaledBaselineRelativeSpacer();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v23 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FB0);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36700);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25_3();
  v134 = v31;
  v32 = type metadata accessor for ListLockup();
  OUTLINED_FUNCTION_0_10();
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36708);
  OUTLINED_FUNCTION_0_10();
  v128 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25_3();
  v135 = v42;
  v43 = sub_1E3CAE4E4();
  v44 = sub_1E32AE9B0(v43);

  if ((v44 & 0x8000000000000000) == 0)
  {
    v112 = v7;
    v125 = v4;
    v133 = v2;
    v46 = sub_1E3CAE4E4();
    v47 = sub_1E3CB00E0(0, v44, v46);

    v141 = v47;
    swift_getKeyPath();
    sub_1E3CB0734(a1, &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListLockup);
    v48 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v49 = swift_allocObject();
    sub_1E3CB06D8(v38, v49 + v48, type metadata accessor for ListLockup);
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1E3CB0654;
    *(v50 + 24) = v49;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36718);
    sub_1E328FCF4(&unk_1EE23B4D8, &qword_1ECF36710);
    sub_1E375BEF4();
    sub_1E328FCF4(&qword_1EE288328, &qword_1ECF36718);
    sub_1E4203B34();
    v52 = *(v32 + 64);
    v124 = a1;
    v53 = *(a1 + v52);
    v54 = v32;
    if (!v53)
    {
      OUTLINED_FUNCTION_35_36();
      v66 = v134;
      goto LABEL_14;
    }

    v55 = *(*v53 + 488);

    v57 = v53;
    v58 = v55(v56);
    v113 = v32;
    if (v58)
    {
      v57 = v58;
      v59 = sub_1E373E010(23, v58);

      if (v59)
      {
        if (*v59 == _TtC8VideosUI13TextViewModel)
        {
          v57 = v53;
          if ((*(*v53 + 392))(v60))
          {
            OUTLINED_FUNCTION_30();
            (*(v61 + 152))(v139);

            OUTLINED_FUNCTION_32_1();
            if (!v64)
            {
              v62 = v63;
            }
          }

          else
          {
            v62 = 0.0;
          }

          v109 = v111;
          sub_1E40E4CD4(v111, v62);
          OUTLINED_FUNCTION_2_158();
          sub_1E3CB06D8(v109, v119, v110);
          v67 = 0;
          goto LABEL_13;
        }
      }
    }

    v67 = 1;
LABEL_13:
    v68 = v119;
    __swift_storeEnumTagSinglePayload(v119, v67, 1, v116);
    v69 = v120;
    OUTLINED_FUNCTION_63_21(v53);
    OUTLINED_FUNCTION_65_16();
    sub_1E3743538(v70, v71, v72);
    v73 = v122;
    v74 = *(v122 + 16);
    v75 = v121;
    v51 = v123;
    v74(v121, v69, v123);
    v76 = v118;
    sub_1E3743538(v57, v118, &qword_1ECF29FB0);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36730);
    v74(v76 + *(v77 + 48), v75, v51);

    v53 = *(v73 + 8);
    v53(v69, v51);
    sub_1E325F6F0(v68, &qword_1ECF29FB0);
    v53(v75, v51);
    OUTLINED_FUNCTION_55_0();
    sub_1E325F6F0(v78, v79);
    v66 = v134;
    sub_1E3741EA0(v76, v134, &qword_1ECF366F8);
    v54 = v113;
    OUTLINED_FUNCTION_35_36();
LABEL_14:
    __swift_storeEnumTagSinglePayload(v66, v65, 1, v126);
    v80 = *(v124 + *(v54 + 60));
    if (v80)
    {

      if (sub_1E373F6E0())
      {
        OUTLINED_FUNCTION_57_22();
        sub_1E391CDD4(v81);
        v82 = sub_1E4201D04();
        (*(v114 + 8))(v53, v115);
        if (v82)
        {
          OUTLINED_FUNCTION_26();
          if ((*(v83 + 392))())
          {
            OUTLINED_FUNCTION_30();
            (*(v84 + 152))(&v140);
          }

          sub_1E4203DA4();
          OUTLINED_FUNCTION_59();
          OUTLINED_FUNCTION_36_0();
          sub_1E4200D94();
          v126 = v141;
          v124 = v143;
          v119 = v145;
          v118 = v146;
          v138 = 1;
          v137 = v142;
          v136 = v144;
          v96 = v120;
          OUTLINED_FUNCTION_63_21(v80);
          v97 = v138;
          v98 = v137;
          v117 = v136;
          v99 = v122;
          v100 = *(v122 + 16);
          v51 = v121;
          v101 = v123;
          v100(v121, v96, v123);
          v102 = v112;
          *v112 = 0;
          *(v102 + 8) = v97;
          v102[2] = v126;
          *(v102 + 24) = v98;
          v102[4] = v124;
          *(v102 + 40) = v117;
          v103 = v118;
          v102[6] = v119;
          v102[7] = v103;
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36728);
          v100(v102 + *(v104 + 48), v51, v101);

          v105 = *(v99 + 8);
          v105(v96, v101);
          v106 = OUTLINED_FUNCTION_47_4();
          (v105)(v106);
          OUTLINED_FUNCTION_35_36();
          sub_1E3741EA0(v107, v51, v108);
          __swift_storeEnumTagSinglePayload(v51, 0, 1, v125);
          v66 = v134;
          goto LABEL_21;
        }
      }
    }

    __swift_storeEnumTagSinglePayload(v51, 1, 1, v125);
LABEL_21:
    v85 = v128;
    v86 = *(v128 + 16);
    v87 = v127;
    v88 = v129;
    v86(v127, v135, v129);
    v89 = v130;
    sub_1E3743538(v66, v130, &qword_1ECF36700);
    v90 = v51;
    v91 = v51;
    v92 = v131;
    sub_1E3743538(v90, v131, &qword_1ECF366F0);
    v93 = v132;
    v86(v132, v87, v88);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36720);
    sub_1E3743538(v89, v93 + *(v94 + 48), &qword_1ECF36700);
    sub_1E3743538(v92, v93 + *(v94 + 64), &qword_1ECF366F0);
    sub_1E325F6F0(v91, &qword_1ECF366F0);
    sub_1E325F6F0(v134, &qword_1ECF36700);
    v95 = *(v85 + 8);
    v95(v135, v88);
    sub_1E325F6F0(v92, &qword_1ECF366F0);
    sub_1E325F6F0(v89, &qword_1ECF36700);
    return (v95)(v87, v88);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3CAE4E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v2 = type metadata accessor for ListLockup();
  *(inited + 32) = *(v0 + *(v2 + 52));
  *(inited + 40) = *(v0 + *(v2 + 56));
  v3 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];

  for (i = 0; i != 2; ++i)
  {
    if (*(inited + 8 * i + 32))
    {

      MEMORY[0x1E6910BF0](v6);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v3 = v8;
    }
  }

  swift_setDeallocating();
  sub_1E3CAF5C0();
  return v3;
}

void sub_1E3CAE604()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v85 = v3;
  v86 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FB0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v8);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v90 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v12);
  v13 = sub_1E4201D14();
  OUTLINED_FUNCTION_0_10();
  v84 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v17 - v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36738);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29DD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v22);
  v23 = type metadata accessor for ScaledBaselineRelativeSpacer();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v26 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36740);
  v28 = OUTLINED_FUNCTION_17_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v33);
  v34 = 0.0;
  v92 = v23;
  if (!sub_1E3C27528())
  {
    v36 = 0;
LABEL_11:
    v39 = 0.0;
    goto LABEL_12;
  }

  type metadata accessor for TextLayout();
  v35 = swift_dynamicCastClass();
  v36 = v35;
  if (!v35)
  {

    goto LABEL_11;
  }

  v37 = *(*v35 + 152);

  v37(&v96, v38);

  if (v97)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v96;
  }

  v37(v98, v40);

  if ((v99 & 1) == 0)
  {
    v34 = *&v98[2];
  }

LABEL_12:
  if (sub_1E3CA9628())
  {

    OUTLINED_FUNCTION_57_22();
    sub_1E40E4CD4(v41, v39);
    OUTLINED_FUNCTION_2_158();
    OUTLINED_FUNCTION_65_16();
    sub_1E3CB0734(v42, v43, v44);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_26_70();
    sub_1E3CB0790(v45, v46);
    OUTLINED_FUNCTION_44_39();
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v47, v48, v49);
    OUTLINED_FUNCTION_74();
LABEL_16:
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D60);
    sub_1E37AD41C();
    sub_1E374AD84();
    OUTLINED_FUNCTION_43_43();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v59, v60);
    sub_1E3CB07D4(v36);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36748);
    __swift_storeEnumTagSinglePayload(v0, 0, 1, v61);
    goto LABEL_17;
  }

  if (v85 || (v72 = type metadata accessor for ListLockup(), (sub_1E373F6E0() & 1) != 0) && *(v2 + *(v72 + 68)) == 1 && (OUTLINED_FUNCTION_57_22(), sub_1E391CDD4(v73), v74 = sub_1E4201D04(), (*(v84 + 8))(v36, v13), (v74 & 1) == 0))
  {

    OUTLINED_FUNCTION_57_22();
    sub_1E40E4CD4(v50, v39);
    OUTLINED_FUNCTION_2_158();
    OUTLINED_FUNCTION_65_16();
    sub_1E3CB0734(v51, v52, v53);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_26_70();
    sub_1E3CB0790(v54, v55);
    OUTLINED_FUNCTION_44_39();
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v56, v57, v58);
    goto LABEL_16;
  }

  if (sub_1E373F6E0() & 1) != 0 && (OUTLINED_FUNCTION_57_22(), sub_1E391CDD4(v75), v76 = sub_1E4201D04(), (*(v84 + 8))(v36, v13), (v76))
  {
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_36_0();
    sub_1E4200D94();
    v77 = v100;
    v78 = v102;
    v95 = v101;
    v94 = v103;
    *v0 = 0;
    *(v0 + 8) = 1;
    *(v0 + 16) = v77;
    *(v0 + 24) = v95;
    *(v0 + 32) = v78;
    *(v0 + 40) = v94;
    *(v0 + 48) = v104;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D60);
    sub_1E37AD41C();
    sub_1E374AD84();
    OUTLINED_FUNCTION_43_43();
    OUTLINED_FUNCTION_19_1();
    sub_1E4201F44();
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36748);
    v80 = v0;
    v81 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36748);
    v80 = OUTLINED_FUNCTION_46_12();
    v81 = 1;
  }

  __swift_storeEnumTagSinglePayload(v80, v81, 1, v79);
LABEL_17:
  if (*(v2 + *(type metadata accessor for ListLockup() + 24)))
  {

    sub_1E3B1DDD8();

    sub_1E3F23370();
    if (sub_1E3CA9628())
    {

      sub_1E40E4CD4(v91, v34);
      OUTLINED_FUNCTION_2_158();
      sub_1E3CB06D8(v91, v93, v62);
      v63 = 0;
    }

    else
    {
      v63 = 1;
    }

    __swift_storeEnumTagSinglePayload(v93, v63, 1, v92);
    v64 = OUTLINED_FUNCTION_46_12();
    sub_1E3743538(v64, v31, v65);
    v66 = *(v90 + 16);
    OUTLINED_FUNCTION_73_14();
    v66();
    sub_1E3743538(v93, v89, &qword_1ECF29FB0);
    sub_1E3743538(v31, v86, &qword_1ECF36740);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36750);
    (v66)(v86 + *(v67 + 48), v88, v87);
    sub_1E3743538(v89, v86 + *(v67 + 64), &qword_1ECF29FB0);

    sub_1E325F6F0(v93, &qword_1ECF29FB0);
    v68 = *(v90 + 8);
    v68(v31, v87);
    v69 = OUTLINED_FUNCTION_46_12();
    sub_1E325F6F0(v69, &qword_1ECF36740);
    sub_1E325F6F0(v89, &qword_1ECF29FB0);
    v68(v88, v87);
    OUTLINED_FUNCTION_68_3();
    sub_1E325F6F0(v70, v71);
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    type metadata accessor for ViewInteractionStates();
    OUTLINED_FUNCTION_3_156();
    sub_1E3CB0790(v82, v83);
    OUTLINED_FUNCTION_21_1();
    sub_1E4201744();
    __break(1u);
  }
}

void sub_1E3CAF048()
{
  OUTLINED_FUNCTION_9_4();
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878);
  OUTLINED_FUNCTION_0_10();
  v64 = v9;
  v65 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v60 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v67 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE58);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v66 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36820);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_78();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366C0);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_8();
  *v2 = sub_1E4201D54();
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF366D8);
  sub_1E3CAD790(v5, v2 + *(v25 + 44));
  v26 = *(v5 + *(type metadata accessor for ListLockup() + 60));
  if (v26)
  {
    v60[1] = v3;
    v61 = v15;
    v62 = v7;
    v27 = *(*v26 + 392);

    if ((v27)(v28))
    {
      type metadata accessor for ButtonLayout();
      v29 = swift_dynamicCastClass();
      if (!v29)
      {
      }
    }

    else
    {
      v29 = 0;
    }

    sub_1E3EC24F4(v26, v29, 0, 0);

    sub_1E4202764();
    v31 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v32)
    {
      v31 = sub_1E4202774();
    }

    if (v27())
    {
      OUTLINED_FUNCTION_30();
      (*(v33 + 152))(&v68);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v34 = v67;
    (*(v64 + 32))(v67, v12, v65);
    v35 = (v34 + *(v63 + 36));
    *v35 = v31;
    OUTLINED_FUNCTION_11_4(v35);
    sub_1E4202784();
    v36 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v32)
    {
      v36 = sub_1E4202774();
    }

    v37 = v27();
    v15 = v61;
    if (v37)
    {
      OUTLINED_FUNCTION_30();
      (*(v38 + 152))(&v69);

      OUTLINED_FUNCTION_32_1();
    }

    v7 = v62;
    OUTLINED_FUNCTION_35_36();
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    sub_1E3741EA0(v67, v27, &qword_1ECF289E8);
    v39 = v27 + *(v15 + 36);
    *v39 = v36;
    OUTLINED_FUNCTION_11_4(v39);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v40, v41, v42);
    OUTLINED_FUNCTION_12_12();
    sub_1E3741EA0(v43, v44, v45);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  __swift_storeEnumTagSinglePayload(v1, v30, 1, v15);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v46, v47, v48);
  v49 = OUTLINED_FUNCTION_74();
  sub_1E3743538(v49, v50, &qword_1ECF36820);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v51, v52, v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36828);
  v55 = v7 + *(v54 + 48);
  *v55 = 0;
  *(v55 + 8) = 1;
  sub_1E3743538(v0, v7 + *(v54 + 64), &qword_1ECF36820);
  sub_1E325F6F0(v1, &qword_1ECF36820);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v56, v57);
  sub_1E325F6F0(v0, &qword_1ECF36820);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v58, v59);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3CAF5C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29088);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E3CAF620()
{
  v0 = type metadata accessor for ListLockup();
  OUTLINED_FUNCTION_17_2(v0);
  memset(v3, 0, sizeof(v3));
  v4 = 1;
  sub_1E40421AC(2, 0, v3, &v2);
  sub_1E4200524();
  return sub_1E38E5014(&v2);
}

unint64_t sub_1E3CAF6D4()
{
  result = qword_1EE289B20;
  if (!qword_1EE289B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36638);
    sub_1E3CAF78C();
    sub_1E328FCF4(&qword_1EE2889E0, &qword_1ECF2C5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B20);
  }

  return result;
}

unint64_t sub_1E3CAF78C()
{
  result = qword_1EE288EF8;
  if (!qword_1EE288EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36650);
    sub_1E3CAF818();
    sub_1E3CAF954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EF8);
  }

  return result;
}

unint64_t sub_1E3CAF818()
{
  result = qword_1EE289768;
  if (!qword_1EE289768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36658);
    sub_1E3CAF89C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289768);
  }

  return result;
}

unint64_t sub_1E3CAF89C()
{
  result = qword_1EE289770;
  if (!qword_1EE289770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36660);
    sub_1E328FCF4(&qword_1EE288550, &qword_1ECF36668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289770);
  }

  return result;
}

unint64_t sub_1E3CAF954()
{
  result = qword_1EE289468;
  if (!qword_1EE289468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36670);
    sub_1E3CAF9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289468);
  }

  return result;
}

unint64_t sub_1E3CAF9E0()
{
  result = qword_1EE289550;
  if (!qword_1EE289550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36678);
    sub_1E3CAFA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289550);
  }

  return result;
}

unint64_t sub_1E3CAFA6C()
{
  result = qword_1EE2897A8;
  if (!qword_1EE2897A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36680);
    sub_1E328FCF4(&qword_1EE288508, &qword_1ECF36688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897A8);
  }

  return result;
}

uint64_t sub_1E3CAFB24()
{
  type metadata accessor for ListLockup();
  type metadata accessor for LayoutGrid();
  sub_1E3A25914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36600);
  return sub_1E4203904();
}

void sub_1E3CAFC38()
{
  sub_1E3CAFEE0(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1E3CAFEE0(319, &qword_1EE289E98, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1E3AB4054();
      if (v2 <= 0x3F)
      {
        sub_1E3BF5F74();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ViewModel();
          if (v4 <= 0x3F)
          {
            sub_1E3CAFEE0(319, qword_1EE286B30, type metadata accessor for ViewLayout, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1E3CAFEE0(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1E3CAFEE0(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1E3CAFEE0(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
                  {
                    sub_1E3CAFEE0(319, &qword_1EE288660, type metadata accessor for UIEdgeInsets, MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
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

void sub_1E3CAFEE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3CAFF44()
{
  result = qword_1EE2899C8;
  if (!qword_1EE2899C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36690);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36638);
    sub_1E3CAF6D4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899C8);
  }

  return result;
}

uint64_t sub_1E3CB008C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if (!(a3 >> 62))
  {
    result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  result = sub_1E4207384();
LABEL_4:
  if (result >= v3)
  {
    return v3;
  }

  return result;
}
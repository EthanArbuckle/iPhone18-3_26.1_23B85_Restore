id sub_1E3AD1E10@<X0>(void *a1@<X8>)
{
  type metadata accessor for UnifiedOverlayView();
  result = sub_1E3890DAC();
  *a1 = result;
  return result;
}

uint64_t sub_1E3AD1E54@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, __src, sizeof(v7));
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326A0));
  sub_1E3AD1EE4(__dst, v6);
  result = sub_1E4201214();
  *a2 = result;
  return result;
}

uint64_t sub_1E3AD1F4C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32640);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32648);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = *(v1 + 48);
  if (v11)
  {
    sub_1E3280A90(0, &qword_1EE23AF68);
    sub_1E3744600(v11);
    v12 = sub_1E37766C4();
    type metadata accessor for ScoreboardObservable(0);
    sub_1E4067BA0();
    v14 = v13;
    if ([v12 showScoreboard])
    {

      sub_1E4068D54();
      v15 = sub_1E4202734();
      v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32650) + 36)] = v15;
      sub_1E4067E98(v14, &v6[*(v3 + 36)]);

      sub_1E379E528(v6, v10, &qword_1ECF32640);
      v16 = 0;
    }

    else
    {

      v16 = 1;
    }

    __swift_storeEnumTagSinglePayload(v10, v16, 1, v3);
    sub_1E379E528(v10, a1, &qword_1ECF32648);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v7);
  }
}

uint64_t getEnumTagSinglePayload for OverlayFactoryContext(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OverlayFactoryContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E3AD227C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1E3AD22BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3AD234C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3AD23C8()
{
  result = qword_1ECF32670;
  if (!qword_1ECF32670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32640);
    sub_1E3AD2484();
    sub_1E3AD2540(&qword_1ECF32688, type metadata accessor for SportsKitScoreboardUpdating);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32670);
  }

  return result;
}

unint64_t sub_1E3AD2484()
{
  result = qword_1ECF32678;
  if (!qword_1ECF32678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32650);
    sub_1E3AD2540(&qword_1ECF32680, type metadata accessor for Scoreboard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32678);
  }

  return result;
}

uint64_t sub_1E3AD2540(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E3AD2588()
{
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_50();
  sub_1E3AD25B8();
}

void sub_1E3AD25B8()
{
  OUTLINED_FUNCTION_31_1();
  v15 = v2;
  v14 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E4206974();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v7 = sub_1E4203FF4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_5();
  v8 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC8VideosUI11LibMPSource_mpLibraryCancellables] = MEMORY[0x1E69E7CC0];
  v13 = OBJC_IVAR____TtC8VideosUI11LibMPSource_dataFetchingQueue;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  sub_1E4203FE4();
  v17 = v8;
  OUTLINED_FUNCTION_10_77();
  sub_1E328FC1C(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326B0);
  OUTLINED_FUNCTION_0_138();
  sub_1E32752B0(v11, &unk_1ECF326B0);
  sub_1E42072E4();
  (*(v4 + 104))(v1, *MEMORY[0x1E69E8090], v14);
  *&v0[v13] = sub_1E4206A44();
  v12 = OBJC_IVAR____TtC8VideosUI11LibMPSource_mpDownloadObserverSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  swift_allocObject();
  *&v0[v12] = sub_1E4200544();
  *&v0[OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary] = v15;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LibMPSource();
  objc_msgSendSuper2(&v16, sel_init);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3AD286C()
{
  [*&v0[OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary] endGeneratingLibraryChangeNotifications];
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = [objc_opt_self() sharedManager];
  [v2 unregisterObserver_];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for LibMPSource();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1E3AD29BC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  OUTLINED_FUNCTION_123_2();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_0_10();
  v21 = v8;
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v9 = *(v3 + OBJC_IVAR____TtC8VideosUI11LibMPSource_dataFetchingQueue);
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v2;
  v11[4] = v5;
  OUTLINED_FUNCTION_2_12(v11);
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v23[2] = v12;
  v23[3] = &block_descriptor_57;
  v13 = _Block_copy(v23);
  v14 = v9;

  sub_1E4203FE4();
  OUTLINED_FUNCTION_3_115();
  sub_1E328FC1C(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_0_138();
  sub_1E32752B0(v17, &qword_1ECF2A730);
  sub_1E42072E4();
  v18 = OUTLINED_FUNCTION_51_23();
  MEMORY[0x1E6911380](v18);
  _Block_release(v13);

  v19 = OUTLINED_FUNCTION_11_6();
  v20(v19);
  (*(v21 + 8))(v1, v22);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AD2C34()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v99 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v98 = v6 - v5;
  OUTLINED_FUNCTION_138();
  v7 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v1(MEMORY[0x1E69E7CC0]);
LABEL_99:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v95 = v1;
  sub_1E4206BA4();
  v14 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v92 = v16;
  v16(v13, v7);
  v17 = sub_1E3A8CC04();
  v19 = v17;
  v20 = MEMORY[0x1E69E7CC0];
  v110 = MEMORY[0x1E69E7CC0];
  v94 = v7;
  v93 = v13;
  v102 = v17[2];
  if (!v102)
  {
LABEL_89:

    v87 = sub_1E32AE9B0(v20);

    for (i = 0; v87 != i; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v89 = MEMORY[0x1E6911E60](i, v20);
      }

      else
      {
        if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_103;
        }

        v89 = *(v20 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_102;
      }

      (*(*v89 + 264))(1);
    }

    sub_1E4206B94();
    v90 = VUISignpostLogObject();
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    v92(v93, v94);
    v95(v20);

    goto LABEL_99;
  }

  v21 = 0;
  v103 = OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary;
  v101 = (v17 + 4);
  v96 = (v3 + 8);
  v97 = (v3 + 16);
  v107 = *MEMORY[0x1E696FB58];
  *&v18 = 136315138;
  v91 = v18;
  v100 = v17;
  while (1)
  {
    if (v21 >= v19[2])
    {
      goto LABEL_104;
    }

    v106 = v21;
    v22 = v101[v21];
    LOBYTE(v112[0]) = v22;
    LOBYTE(v113) = 13;
    sub_1E37D4BA4();
    OUTLINED_FUNCTION_35_5();
    sub_1E4206254();
    OUTLINED_FUNCTION_35_5();
    sub_1E4206254();
    OUTLINED_FUNCTION_30_41();
    v23 = v23 && v15 == &v113;
    if (v23)
    {
      goto LABEL_15;
    }

    v24 = OUTLINED_FUNCTION_97_0();

    if ((v24 & 1) == 0)
    {
      LOBYTE(v112[0]) = v22;
      OUTLINED_FUNCTION_31_35(9);
      OUTLINED_FUNCTION_35_5();
      sub_1E4206254();
      OUTLINED_FUNCTION_35_5();
      sub_1E4206254();
      OUTLINED_FUNCTION_30_41();
      if (!v23 || v15 != &v113)
      {
        v26 = OUTLINED_FUNCTION_97_0();

        v27 = ~v26 & 1;
        goto LABEL_17;
      }

LABEL_15:
    }

    v27 = 0;
LABEL_17:
    v28 = *&Strong[v103];
    v29 = sub_1E3AD3914(v22, 0, 0, v27, v28);

    if (v29)
    {
      break;
    }

LABEL_87:
    v19 = v100;
    v85 = v106;
LABEL_88:
    v21 = v85 + 1;
    if (v21 == v102)
    {
      goto LABEL_89;
    }
  }

  LOBYTE(v112[0]) = v22;
  OUTLINED_FUNCTION_31_35(13);
  OUTLINED_FUNCTION_35_5();
  sub_1E4206254();
  OUTLINED_FUNCTION_35_5();
  sub_1E4206254();
  OUTLINED_FUNCTION_30_41();
  if (v23 && v15 == &v113)
  {
  }

  else
  {
    v31 = OUTLINED_FUNCTION_97_0();

    if ((v31 & 1) == 0)
    {
      sub_1E399D4C4();
      if ((v32 & 1) == 0)
      {
        v76 = sub_1E41A3110();
        (*v97)(v98, v76, v99);
        v77 = sub_1E41FFC94();
        v78 = sub_1E4206814();
        if (os_log_type_enabled(v77, v78))
        {
          v15 = swift_slowAlloc();
          v79 = OUTLINED_FUNCTION_100();
          *&v116[0] = v79;
          *v15 = v91;
          LOBYTE(v115[0]) = v22;
          sub_1E38F53C4();
          v80 = sub_1E4207944();
          v82 = sub_1E3270FC8(v80, v81, v116);

          *(v15 + 4) = v82;
          _os_log_impl(&dword_1E323F000, v77, v78, "LibMPSource:: menu %s has no item", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v79);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_21_0();
        }

        (*v96)(v98, v99);
        goto LABEL_87;
      }

      if (![*&Strong[v103] uniqueIdentifier])
      {
        goto LABEL_108;
      }

      OUTLINED_FUNCTION_106();
      type metadata accessor for LibMenuItem();
      sub_1E4205F14();

      OUTLINED_FUNCTION_18();
      v15 = sub_1E3A8A680();
      LOBYTE(v112[0]) = v22;
      OUTLINED_FUNCTION_31_35(9);
      OUTLINED_FUNCTION_35_5();
      sub_1E4206254();
      OUTLINED_FUNCTION_35_5();
      sub_1E4206254();
      if (*&v116[0] == *&v115[0] && *(&v116[0] + 1) == *(&v115[0] + 1))
      {
      }

      else
      {
        v34 = OUTLINED_FUNCTION_97_0();

        if ((v34 & 1) == 0)
        {
          goto LABEL_84;
        }
      }

      sub_1E399D58C();
      v35 = (*(*v15 + 232))();
LABEL_84:
      MEMORY[0x1E6910BF0](v35);
      v86 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v86 >> 1)
      {
        OUTLINED_FUNCTION_35(v86);
        sub_1E42062F4();
      }

      sub_1E4206324();

      v20 = v110;
      goto LABEL_87;
    }
  }

  sub_1E399E1FC();
  if (!v36)
  {
    goto LABEL_74;
  }

  v15 = v36;
  v37 = sub_1E32AE9B0(v36);
  if (v37)
  {
    v38 = v37;
    v39 = MEMORY[0x1E69E7CC0];
    if (v37 < 1)
    {
      goto LABEL_105;
    }

    v40 = 0;
    v108 = v15 & 0xC000000000000001;
    v104 = v15;
    while (1)
    {
      if (v108)
      {
        v41 = MEMORY[0x1E6911E60](v40, v15);
      }

      else
      {
        v41 = *(v15 + 8 * v40 + 32);
      }

      v42 = v41;
      v43 = [v41 items];
      sub_1E3280A90(0, &qword_1EE23B3F8);
      v44 = sub_1E42062B4();

      if (v44 >> 62)
      {
        if (!sub_1E4207384())
        {
LABEL_60:

          goto LABEL_61;
        }
      }

      else if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      if ((v44 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1E6911E60](0, v44);
      }

      else
      {
        if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_101;
        }

        v45 = *(v44 + 32);
      }

      v46 = v45;

      if ([v46 valueForProperty_])
      {
        sub_1E4207264();
        swift_unknownObjectRelease();
      }

      else
      {
        v113 = 0u;
        v114 = 0u;
      }

      v112[0] = v113;
      v112[1] = v114;
      if (*(&v114 + 1))
      {
        if (swift_dynamicCast())
        {
          v47 = v38;
          v48 = v20;
          v49 = sub_1E3AD8F54(v46);
          if (v50)
          {
            v51 = v49;
            v52 = v50;
            *&v112[0] = v111;
            v53 = sub_1E4207944();
            sub_1E3BEBF48(v53, v54, v51, v52, v115);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_1E3923C10(0, *(v39 + 2) + 1, 1, v39);
            }

            v56 = *(v39 + 2);
            v55 = *(v39 + 3);
            v20 = v48;
            if (v56 >= v55 >> 1)
            {
              v61 = OUTLINED_FUNCTION_35(v55);
              v39 = sub_1E3923C10(v61, v56 + 1, 1, v39);
            }

            v38 = v47;

            *(v39 + 2) = v56 + 1;
            v57 = &v39[64 * v56];
            v58 = v115[0];
            v59 = v115[1];
            v60 = v115[3];
            *(v57 + 4) = v115[2];
            *(v57 + 5) = v60;
            *(v57 + 2) = v58;
            *(v57 + 3) = v59;
          }

          else
          {

            v38 = v47;
          }

          v15 = v104;
        }

        else
        {
        }
      }

      else
      {

        sub_1E325F6F0(v112, &unk_1ECF296E0);
      }

LABEL_61:
      if (v38 == ++v40)
      {
        goto LABEL_65;
      }
    }
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_65:
  if (!*(v39 + 2))
  {

LABEL_74:

    goto LABEL_87;
  }

  v62 = *&Strong[OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary];
  v63 = [v62 uniqueIdentifier];
  if (!v63)
  {
    goto LABEL_107;
  }

  v64 = v63;

  v15 = type metadata accessor for LibMenuItem();
  sub_1E4205F14();

  OUTLINED_FUNCTION_18();
  v65 = sub_1E3A8A680();
  v66 = v65;
  v67 = *(v39 + 2);
  if (!v67)
  {

    v75 = MEMORY[0x1E69E7CC0];
LABEL_78:
    (*(*v66 + 296))(v75);

    MEMORY[0x1E6910BF0](v83);
    v84 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v19 = v100;
    v85 = v106;
    if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v84 >> 1)
    {
      OUTLINED_FUNCTION_35(v84);
      sub_1E42062F4();
    }

    sub_1E4206324();

    v20 = v110;
    goto LABEL_88;
  }

  v109 = v65;
  *&v113 = MEMORY[0x1E69E7CC0];
  sub_1E4207574();
  v68 = 0;
  v69 = 32;
  while (v68 < *(v39 + 2))
  {
    v70 = *&v39[v69];
    v71 = *&v39[v69 + 16];
    v72 = *&v39[v69 + 48];
    v116[2] = *&v39[v69 + 32];
    v116[3] = v72;
    v116[0] = v70;
    v116[1] = v71;
    sub_1E39241C4(v116, v112);
    v73 = [v62 uniqueIdentifier];
    if (!v73)
    {
      goto LABEL_106;
    }

    v74 = v73;
    ++v68;
    sub_1E4205F14();

    sub_1E3A8B094();
    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
    v69 += 64;
    if (v67 == v68)
    {

      v75 = v113;
      v66 = v109;
      goto LABEL_78;
    }
  }

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
}

uint64_t sub_1E3AD3914(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  switch(a1)
  {
    case 0:
      sub_1E3280A90(0, &qword_1EE23B3A0);
      OUTLINED_FUNCTION_6_94();
      v8 = sub_1E39A0B38();
      goto LABEL_15;
    case 1:
      sub_1E3280A90(0, &qword_1EE23B3A0);
      v13 = OUTLINED_FUNCTION_6_94();
      v8 = sub_1E39A0B78(v13);
      goto LABEL_15;
    case 2:
      sub_1E3280A90(0, &qword_1EE23B3A0);
      OUTLINED_FUNCTION_6_94();
      v8 = sub_1E39A0E0C();
      goto LABEL_15;
    case 3:
      sub_1E3280A90(0, &qword_1EE23B3A0);
      OUTLINED_FUNCTION_6_94();
      v8 = sub_1E39A0E18();
      goto LABEL_15;
    case 4:
      sub_1E3280A90(0, &qword_1EE23B3A0);
      v15 = a5;
      v16 = 0;
      goto LABEL_14;
    case 5:
      sub_1E3280A90(0, &qword_1EE23B3A0);
      v9 = OUTLINED_FUNCTION_6_94();
      v8 = sub_1E39A10B4(v9);
      goto LABEL_15;
    case 6:
      sub_1E3280A90(0, &qword_1EE23B3A0);
      v14 = OUTLINED_FUNCTION_6_94();
      v8 = sub_1E39A04E4(v14);
      goto LABEL_15;
    case 8:
      sub_1E3280A90(0, &qword_1EE23B3A0);
      OUTLINED_FUNCTION_6_94();
      v8 = sub_1E39A10A8();
      goto LABEL_15;
    case 9:
      sub_1E3280A90(0, &qword_1EE23B3A0);
      v15 = a5;
      v16 = 1;
LABEL_14:
      v8 = sub_1E39A100C(v15, v16);
      goto LABEL_15;
    case 10:
      sub_1E3280A90(0, &qword_1EE23B3A0);
      v17 = OUTLINED_FUNCTION_6_94();
      return sub_1E39A1ED8(v17);
    case 13:
      sub_1E3280A90(0, &qword_1EE23B3A0);
      OUTLINED_FUNCTION_6_94();
      v8 = sub_1E39A19F8();
LABEL_15:
      v5 = v8;
      goto LABEL_16;
    case 14:
      sub_1E3280A90(0, &qword_1EE23B3A0);

      v10 = OUTLINED_FUNCTION_35_5();
      sub_1E39A1A84(v10, v11, a5);
      v5 = v12;

LABEL_16:
      swift_beginAccess();
      *(v5 + 24) = a4;
      break;
    default:
      return v5;
  }

  return v5;
}

void sub_1E3AD3B98()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  ObjectType = swift_getObjectType();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v48 = v8;
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v47 = v10 - v9;
  OUTLINED_FUNCTION_138();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v45 = v12;
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v44 = v14 - v13;
  OUTLINED_FUNCTION_138();
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_1E41A3110();
  (*(v17 + 16))(v21, v22, v15);

  v23 = sub_1E41FFC94();
  v24 = sub_1E4206814();

  if (os_log_type_enabled(v23, v24))
  {
    v41 = v15;
    v25 = swift_slowAlloc();
    v42 = v2;
    v26 = OUTLINED_FUNCTION_100();
    v50[0] = v26;
    *v25 = 136315138;
    v27 = (*(*v6 + 432))();
    v29 = v6;
    v30 = v4;
    v31 = sub_1E3270FC8(v27, v28, v50);

    *(v25 + 4) = v31;
    v4 = v30;
    v6 = v29;
    _os_log_impl(&dword_1E323F000, v23, v24, "LibMPSource:: fetchMPCollectionForMenu for menu %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v2 = v42;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v17 + 8))(v21, v41);
  }

  else
  {

    (*(v17 + 8))(v21, v15);
  }

  v32 = *(v0 + OBJC_IVAR____TtC8VideosUI11LibMPSource_dataFetchingQueue);
  OUTLINED_FUNCTION_4_0();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v4;
  v34[4] = v2;
  v34[5] = v6;
  v34[6] = ObjectType;
  OUTLINED_FUNCTION_2_12(v34);
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v50[2] = v35;
  v50[3] = &block_descriptor_10_2;
  v36 = _Block_copy(v50);

  v37 = v32;

  sub_1E4203FE4();
  OUTLINED_FUNCTION_3_115();
  sub_1E328FC1C(v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_0_138();
  sub_1E32752B0(v40, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v44, v47, v36);
  _Block_release(v36);

  (*(v48 + 8))(v47, v49);
  (*(v45 + 8))(v44, v46);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AD4024()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_106();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v80 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v3(MEMORY[0x1E69E7CC0]);
    goto LABEL_41;
  }

  v18 = Strong;
  v81 = v16;
  v82 = v10;
  v19 = *(v1 + 32);
  if (sub_1E38BBD0C() & 1) != 0 || (sub_1E38BBD0C())
  {
    v20 = 25;
  }

  else if (sub_1E38BBD0C())
  {
    v20 = 25;
  }

  else
  {
    v20 = 0;
  }

  v77 = v1;
  v21 = *(v1 + 40);
  v22 = *(v1 + 48);
  v83 = OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary;
  v23 = v18;
  v24 = *&v18[OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary];
  v25 = sub_1E3AD3914(v19, v21, v22, v20, v24);

  if (!v25)
  {
    v3(MEMORY[0x1E69E7CC0]);

    goto LABEL_41;
  }

  v76 = v3;
  v84 = v23;
  sub_1E4206BA4();
  v26 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v27 = *(v12 + 8);
  v27(v81, v82);
  sub_1E4206BA4();
  v28 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v79 = v27;
  v27(v81, v82);
  v29 = sub_1E38BBD0C();
  v78 = MEMORY[0x1E69E7CC0];
  v75 = v4;
  if (v29 & 1) != 0 || (sub_1E38BBD0C())
  {
    v30 = sub_1E399EC28();
    if (v30)
    {
      v31 = v30;
      if (sub_1E32AE9B0(v30))
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    v74 = 0;
    v38 = MEMORY[0x1E69E7CC0];
    v35 = v79;
    goto LABEL_27;
  }

  if (v19 > 0xE || ((1 << v19) & 0x4426) == 0 || (sub_1E399E1FC(), !v32))
  {
LABEL_23:
    sub_1E399D664();
    if (v41)
    {
      v86[0] = v41;
      sub_1E4206B94();
      v42 = VUISignpostLogObject();
      sub_1E41FFBE4();
      sub_1E41FFBA4();

      (v79)(v81, v82);
      if (sub_1E38BBD0C())
      {
        v42 = 0;
        sub_1E3AD4D60(v86);
      }

      v74 = 0;
      sub_1E4206BA4();
      v69 = VUISignpostLogObject();
      OUTLINED_FUNCTION_40_34();
      OUTLINED_FUNCTION_32_41();
      OUTLINED_FUNCTION_35_34();

      OUTLINED_FUNCTION_7_110();
      v35 = *(v70 - 256);
      (v35)(v71);
      type metadata accessor for LibResponseParser();
      v38 = sub_1E3920DD0(v86[0]);

      sub_1E4206B94();
      v72 = VUISignpostLogObject();
      sub_1E41FFBE4();
      OUTLINED_FUNCTION_35_34();

      v73 = OUTLINED_FUNCTION_242();
      (v35)(v73);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v31 = v32;
  if (!sub_1E32AE9B0(v32))
  {

    goto LABEL_23;
  }

LABEL_20:
  sub_1E4206B94();
  v33 = VUISignpostLogObject();
  OUTLINED_FUNCTION_40_34();
  OUTLINED_FUNCTION_15_81();
  OUTLINED_FUNCTION_35_34();

  OUTLINED_FUNCTION_7_110();
  v35 = *(v34 - 256);
  v35();
  sub_1E4206BA4();
  v36 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_15_81();
  OUTLINED_FUNCTION_22_47();

  v37 = OUTLINED_FUNCTION_242();
  (v35)(v37);
  type metadata accessor for LibResponseParser();
  v38 = sub_1E3920F60(v31);

  sub_1E4206B94();
  v39 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_22_47();

  v40 = OUTLINED_FUNCTION_242();
  (v35)(v40);
  v74 = 0;
LABEL_27:
  v43 = sub_1E4206BA4();
  v44 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_35_34();

  v45 = OUTLINED_FUNCTION_242();
  (v35)(v45);
  v46 = 0;
  v87 = MEMORY[0x1E69E7CC0];
  v47 = *(v38 + 16);
  v48 = v38 + 32;
LABEL_28:
  v49 = v48 + 40 * v46;
  while (v47 != v46)
  {
    if (v46 >= *(v38 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    sub_1E327F454(v49, v86);
    sub_1E327F454(v86, &v85);
    if (![*&v84[v83] uniqueIdentifier])
    {
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_106();
    v50 = type metadata accessor for LibLockupViewModel();
    sub_1E4205F14();

    j__OUTLINED_FUNCTION_18();
    v43 = v50;
    sub_1E38BC104();
    if (v51)
    {
      v52 = *(*v51 + 1640);

      v52();

      v53 = __swift_destroy_boxed_opaque_existential_1(v86);
      v43 = &v87;
      MEMORY[0x1E6910BF0](v53);
      v54 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v54 >> 1)
      {
        OUTLINED_FUNCTION_35(v54);
        sub_1E42062F4();
      }

      ++v46;
      sub_1E4206324();
      v78 = v87;
      v48 = v38 + 32;
      goto LABEL_28;
    }

    __swift_destroy_boxed_opaque_existential_1(v86);
    v49 += 40;
    ++v46;
  }

  sub_1E4206B94();
  v55 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_32_41();
  sub_1E41FFBA4();

  OUTLINED_FUNCTION_7_110();
  v57 = *(v56 - 256);
  v57(v58);
  sub_1E4206B94();
  v59 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_32_41();
  sub_1E41FFBA4();

  (v57)(v81, v46);
  v60 = sub_1E41A3110();
  (*(v80 + 16))(v9, v60, v75);
  swift_bridgeObjectRetain_n();

  v61 = sub_1E41FFC94();
  v62 = sub_1E4206814();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = OUTLINED_FUNCTION_100();
    v86[0] = v64;
    *v63 = 136315394;
    v65 = (*(*v77 + 432))(v64);
    v67 = sub_1E3270FC8(v65, v66, v86);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2048;
    v68 = sub_1E32AE9B0(v78);

    *(v63 + 14) = v68;

    _os_log_impl(&dword_1E323F000, v61, v62, "LibMPSource:: fetchMPCollectionForMenu for menu %s result %ld", v63, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v80 + 8))(v9, v75);
  v76(v78);

LABEL_41:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AD4B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_123_2();
  v25 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  MEMORY[0x1EEE9AC00](v34);
  *&v36 = MEMORY[0x1EEE9AC00](v35).n128_u64[0];
  v37 = *v24;
  v38 = [*v20 vui_rentalExpirationDate];
  if (v38)
  {
    v39 = v38;
    sub_1E41FE584();

    v40 = *(v27 + 32);
    v41 = OUTLINED_FUNCTION_35_5();
    v40(v41);
    v42 = [v37 vui_rentalExpirationDate];
    if (v42)
    {
      v43 = v42;
      sub_1E41FE584();

      (v40)(v33, v30, v25);
      sub_1E41FE534();
      v44 = *(v27 + 8);
      v44(v33, v25);
      v45 = OUTLINED_FUNCTION_13_8();
      (v44)(v45);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_13_8();
      v47(v46);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AD4D60(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1E37EFA58(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_1E3AD76BC(v4);
  *a1 = v2;
}

void sub_1E3AD4DD8()
{
  OUTLINED_FUNCTION_31_1();
  v40 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v43 = v9;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v41 = v15;
  v42 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v16 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v20 = OUTLINED_FUNCTION_43_29();
  (*(v18 + 16))(v0, v20, v16);

  v21 = sub_1E41FFC94();
  v22 = sub_1E4206814();

  if (os_log_type_enabled(v21, v22))
  {
    v39 = v4;
    v23 = swift_slowAlloc();
    v38 = v1;
    v24 = v13;
    v25 = v6;
    v26 = OUTLINED_FUNCTION_100();
    v44[0] = v26;
    *v23 = 136315394;
    *(v23 + 4) = sub_1E3270FC8(v43, v8, v44);
    *(v23 + 12) = 1024;
    *(v23 + 14) = v25 & 1;
    _os_log_impl(&dword_1E323F000, v21, v22, "LibMPSource:: fetchMPSeasons for show %s download only %{BOOL}d", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v6 = v25;
    v13 = v24;
    v1 = v38;
    OUTLINED_FUNCTION_6_0();
    v4 = v39;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v18 + 8))(v0, v16);
  v27 = *(v0 + OBJC_IVAR____TtC8VideosUI11LibMPSource_dataFetchingQueue);
  OUTLINED_FUNCTION_4_0();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v40;
  *(v29 + 32) = v4;
  *(v29 + 40) = v43;
  *(v29 + 48) = v8;
  *(v29 + 56) = v6 & 1;
  OUTLINED_FUNCTION_2_12(v29);
  OUTLINED_FUNCTION_48_2(COERCE_DOUBLE(1107296256));
  v44[2] = v30;
  v44[3] = &block_descriptor_17_2;
  v31 = _Block_copy(v44);

  v32 = v27;

  sub_1E4203FE4();
  OUTLINED_FUNCTION_3_115();
  sub_1E328FC1C(v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_0_138();
  sub_1E32752B0(v35, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v1, v13, v31);
  _Block_release(v31);

  v36 = OUTLINED_FUNCTION_13_8();
  v37(v36);
  (*(v41 + 8))(v1, v42);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AD5208()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_106();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v34 = v10;
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = v0;
    v33 = v8;
    v15 = v4;
    v16 = Strong;
    sub_1E4206BA4();
    v17 = VUISignpostLogObject();
    sub_1E41FFBE4();
    OUTLINED_FUNCTION_41_31();

    v18 = *(v12 + 8);
    v19 = OUTLINED_FUNCTION_13_8();
    v18(v19);
    sub_1E3280A90(0, &qword_1EE23B3A0);
    v20 = *&v16[OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary];
    sub_1E39A1134(v6, v15, v2 & 1, v20);

    v37 = MEMORY[0x1E69E7CC0];
    sub_1E399E1FC();
    if (v21)
    {
      OUTLINED_FUNCTION_123_2();
      type metadata accessor for LibResponseParser();
      v22 = sub_1E3920F60(v20);

      v23 = sub_1E3AD5600(v22);

      if (v23)
      {
        sub_1E3AD5784(v23);
      }
    }

    sub_1E4206B94();
    v24 = VUISignpostLogObject();
    sub_1E41FFBE4();
    OUTLINED_FUNCTION_41_31();

    v25 = OUTLINED_FUNCTION_13_8();
    v18(v25);
    v26 = sub_1E41A3110();
    (*(v34 + 16))(v32, v26, v35);
    v27 = v37;

    v28 = sub_1E41FFC94();
    v29 = sub_1E4206814();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = OUTLINED_FUNCTION_100();
      v36 = v31;
      *v30 = 136315650;
      *(v30 + 4) = sub_1E3270FC8(v6, v15, &v36);
      *(v30 + 12) = 1024;
      *(v30 + 14) = v2 & 1;
      *(v30 + 18) = 2048;
      *(v30 + 20) = *(v27 + 16);

      _os_log_impl(&dword_1E323F000, v28, v29, "LibMPSource:: did fetchMPSeasons for show %s download only\n%{BOOL}d result count %ld", v30, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v34 + 8))(v32, v35);
    v33(v27);
  }

  else
  {
    v8(MEMORY[0x1E69E7CC0]);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AD5600(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1E3AD8B90(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1E327F454(v4, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32760);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1E3251BE8(v8, v11);
      sub_1E3251BE8(v11, v10);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E3AD8B90((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_1E3251BE8(v10, v3 + 40 * v6 + 32);
      v4 += 40;
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1E325F6F0(v8, &qword_1ECF2D640);
    return 0;
  }

  return v3;
}

int64_t sub_1E3AD5784(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1E3AD8B28(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32760);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1E3AD5860()
{
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_29();
  v2 = OUTLINED_FUNCTION_4_36();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  if (OUTLINED_FUNCTION_41_13(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v6);
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v7, v8, "LibMPSource:: MPMediaLibrary cancelMPMediaLibraryObservation");
    OUTLINED_FUNCTION_21_0();
  }

  v9 = OUTLINED_FUNCTION_22_4();
  v10(v9);
  [*(v0 + OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary) endGeneratingLibraryChangeNotifications];
  v11 = OBJC_IVAR____TtC8VideosUI11LibMPSource_mpLibraryCancellables;
  swift_beginAccess();
  *(v0 + v11) = MEMORY[0x1E69E7CC0];
}

void sub_1E3AD5998()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326D0);
  OUTLINED_FUNCTION_0_10();
  v78 = v2;
  v79 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v77 = v63 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = v63 - v5;
  OUTLINED_FUNCTION_138();
  v80 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v84 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v69 = v9 - v8;
  OUTLINED_FUNCTION_138();
  v82 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v85 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v81 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326E0);
  OUTLINED_FUNCTION_0_10();
  v74 = v15;
  v75 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v73 = v63 - v16;
  OUTLINED_FUNCTION_138();
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v63 - v24;
  v26 = sub_1E41A3110();
  v27 = *(v19 + 16);
  v71 = v26;
  v72 = v27;
  (v27)(v25);
  v28 = v0;
  v29 = sub_1E41FFC94();
  v30 = sub_1E4206814();
  v31 = os_log_type_enabled(v29, v30);
  v83 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = [*(&v83->isa + OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary) status];

    _os_log_impl(&dword_1E323F000, v29, v30, "LibMPSource:: MPMediaLibrary status is %ld", v32, 0xCu);
    v28 = v83;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v29 = v28;
  }

  v33 = OUTLINED_FUNCTION_35_5();
  v35 = v34;
  (v34)(v33);
  v36 = *(&v28->isa + OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary);
  sub_1E3280A90(0, &qword_1EE23B020);
  v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v88 = sub_1E3280A90(0, &qword_1EE23ADD0);
  v87 = v37;
  sub_1E4205F14();
  v38 = OUTLINED_FUNCTION_14_91();
  [v36 addLibraryFilterPredicate_];

  v39 = MEMORY[0x1E69E6370];
  v88 = MEMORY[0x1E69E6370];
  LOBYTE(v87) = 0;
  sub_1E4205F14();
  v40 = OUTLINED_FUNCTION_14_91();
  [v36 addLibraryFilterPredicate_];

  v88 = v39;
  LOBYTE(v87) = 0;
  sub_1E4205F14();
  v41 = OUTLINED_FUNCTION_14_91();
  [v36 addLibraryFilterPredicate_];

  [v36 beginGeneratingLibraryChangeNotifications];
  v72(v22, v71, v17);
  v42 = sub_1E41FFC94();
  v43 = sub_1E4206814();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_125_0();
    *v44 = 0;
    _os_log_impl(&dword_1E323F000, v42, v43, "LibMPSource:: MPMediaLibrary beginGeneratingLibraryChangeNotifications", v44, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v35(v22, v17);
  v72 = objc_opt_self();
  v45 = [v72 defaultCenter];
  v46 = v81;
  sub_1E4206C14();

  v68 = sub_1E3B7B208();
  v47 = v69;
  sub_1E4207074();
  v67 = objc_opt_self();
  v48 = [v67 mainRunLoop];
  v87 = v48;
  sub_1E4207054();
  v49 = v76;
  OUTLINED_FUNCTION_52_22();
  v65 = sub_1E3280A90(0, &qword_1EE23AD08);
  v71 = sub_1E328FC1C(&qword_1EE23B130, MEMORY[0x1E6969F20]);
  v66 = sub_1E3782CC4();
  v50 = v73;
  v51 = v82;
  sub_1E42007F4();
  sub_1E325F6F0(v49, &unk_1ECF3DB30);

  v52 = *(v84 + 8);
  v84 += 8;
  v64 = v52;
  v52(v47, v80);
  v53 = *(v85 + 8);
  v85 += 8;
  v70 = v53;
  (v53)(v46, v51);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v54 = v83;
  swift_unknownObjectWeakInit();
  v63[1] = MEMORY[0x1E695BE50];
  sub_1E32752B0(&unk_1EE28A2C0, &unk_1ECF326E0);
  v55 = v75;
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  (*(v74 + 8))(v50, v55);
  OUTLINED_FUNCTION_23_45();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580);
  sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580);
  sub_1E42004D4();
  swift_endAccess();

  v56 = [objc_opt_self() sharedManager];
  [v56 registerObserver_];

  v87 = *&v54[OBJC_IVAR____TtC8VideosUI11LibMPSource_mpDownloadObserverSubject];

  sub_1E4207074();
  v57 = [v67 mainRunLoop];
  v86 = v57;
  OUTLINED_FUNCTION_52_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  sub_1E32752B0(&unk_1EE28A130, &unk_1ECF326C0);
  v58 = v77;
  sub_1E42007F4();
  sub_1E325F6F0(v49, &unk_1ECF3DB30);

  v64(v47, v80);

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&unk_1EE28A2D0, &unk_1ECF326D0);
  v59 = v79;
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  (*(v78 + 8))(v58, v59);
  OUTLINED_FUNCTION_23_45();
  sub_1E42004D4();
  swift_endAccess();

  v60 = [v72 defaultCenter];
  v61 = sub_1E4205ED4();
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  v62 = OUTLINED_FUNCTION_35_5();
  v70(v62);
  OUTLINED_FUNCTION_23_45();
  sub_1E42004D4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3AD64B4(unint64_t a1, char a2)
{
  v6 = a1;
  v86 = a1;
  v7 = sub_1E32AE9B0(a1);
  v81 = v6 & 0xC000000000000001;

  if (a2)
  {
    v79 = v2;
    for (i = 0; v7 != i; ++i)
    {
      if (v81)
      {
        v21 = OUTLINED_FUNCTION_11_6();
        v10 = MEMORY[0x1E6911E60](v21);
      }

      else
      {
        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (i >= v9)
        {
          goto LABEL_103;
        }

        v10 = *(v6 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      OUTLINED_FUNCTION_47_29();
      v85 = 10;
      v11 = sub_1E37D4BA4();
      OUTLINED_FUNCTION_29_42();
      sub_1E4206254();
      OUTLINED_FUNCTION_28_37();
      v12 = sub_1E4206254();
      OUTLINED_FUNCTION_13_85(v12, v13, v14, v15, v16, v17, v18, v19, v79, v81, v82, v83, v84);
      v20 = v20 && v11 == v2;
      if (v20)
      {

LABEL_56:
        (*(*v10 + 264))(1);

        return v6;
      }

      OUTLINED_FUNCTION_24_41();
      OUTLINED_FUNCTION_54_18();

      if (v4)
      {
        goto LABEL_56;
      }
    }

    result = [*(v79 + OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary) uniqueIdentifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_106();
    v35 = type metadata accessor for LibMenuItem();
    sub_1E4205F14();

    OUTLINED_FUNCTION_18();
    v80 = sub_1E3A8A680();
    v36 = sub_1E32AE9B0(v6);
    v37 = v36;
    v38 = 0;
    while (v37 != v38)
    {
      if (v81)
      {
        v49 = OUTLINED_FUNCTION_11_6();
        MEMORY[0x1E6911E60](v49);
      }

      else
      {
        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v38 >= v9)
        {
          goto LABEL_109;
        }
      }

      OUTLINED_FUNCTION_47_29();
      v85 = 13;
      v39 = sub_1E37D4BA4();
      OUTLINED_FUNCTION_29_42();
      sub_1E4206254();
      OUTLINED_FUNCTION_28_37();
      v40 = sub_1E4206254();
      OUTLINED_FUNCTION_13_85(v40, v41, v42, v43, v44, v45, v46, v47, v80, v81, v82, v83, v84);
      if (v20 && v39 == v35)
      {

LABEL_99:
        v74 = OUTLINED_FUNCTION_11_6();
        sub_1E37EFABC(v74, v75);
        if (sub_1E32AE9B0(v6) < v38)
        {
          goto LABEL_122;
        }

        v76 = sub_1E32AE9B0(v6);
        v32 = __OFADD__(v76, 1);
        v77 = v76 + 1;
        if (!v32)
        {
          sub_1E3797CDC(v77);
          sub_1E3AD8DE4(v38, v38, 1, v80);
          return v86;
        }

        goto LABEL_123;
      }

      OUTLINED_FUNCTION_24_41();
      OUTLINED_FUNCTION_54_18();

      if (v4)
      {
        goto LABEL_99;
      }

      v32 = __OFADD__(v38++, 1);
      if (v32)
      {
        goto LABEL_110;
      }
    }

LABEL_96:
    MEMORY[0x1E6910BF0](v36);
    v9 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9 >> 1)
    {
      goto LABEL_124;
    }

    goto LABEL_97;
  }

  v22 = 0;
  while (1)
  {
    if (v7 == v22)
    {
      v22 = sub_1E32AE9B0(v6);
      goto LABEL_48;
    }

    if (v81)
    {
      v33 = OUTLINED_FUNCTION_13_8();
      MEMORY[0x1E6911E60](v33);
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22 >= v9)
      {
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
        goto LABEL_114;
      }
    }

    OUTLINED_FUNCTION_47_29();
    v85 = 10;
    sub_1E37D4BA4();
    OUTLINED_FUNCTION_29_42();
    sub_1E4206254();
    OUTLINED_FUNCTION_28_37();
    v23 = sub_1E4206254();
    OUTLINED_FUNCTION_13_85(v23, v24, v25, v26, v27, v28, v29, v30, v78, v81, v82, v83, v84);
    if (v20 && v3 == v2)
    {
      break;
    }

    OUTLINED_FUNCTION_24_41();
    OUTLINED_FUNCTION_54_18();

    if (v4)
    {
      goto LABEL_46;
    }

    v32 = __OFADD__(v22++, 1);
    if (v32)
    {
      goto LABEL_105;
    }
  }

LABEL_46:
  if (__OFADD__(v22, 1))
  {
    goto LABEL_118;
  }

  if (v22 + 1 != sub_1E32AE9B0(v6))
  {
    v56 = v22 + 5;
    do
    {
      v57 = v56 - 4;
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v56 - 4, v6);
      }

      else
      {
        if ((v57 & 0x8000000000000000) != 0)
        {
          goto LABEL_106;
        }

        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v57 >= v9)
        {
          goto LABEL_107;
        }
      }

      OUTLINED_FUNCTION_47_29();
      v85 = 10;
      sub_1E4206254();
      v58 = sub_1E4206254();
      OUTLINED_FUNCTION_13_85(v58, v59, v60, v61, v62, v63, v64, v65, v78, v81, v82, v83, v84);
      if (v20 && &type metadata for LibMenuType == &v85)
      {
      }

      else
      {
        OUTLINED_FUNCTION_24_41();
        OUTLINED_FUNCTION_54_18();

        if (v57 != v22)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v67 = OUTLINED_FUNCTION_13_8();
            v68 = MEMORY[0x1E6911E60](v67);
            v69 = MEMORY[0x1E6911E60](v56 - 4, v6);
          }

          else
          {
            if ((v22 & 0x8000000000000000) != 0)
            {
              goto LABEL_119;
            }

            v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v22 >= v9)
            {
              goto LABEL_120;
            }

            if (v57 >= v9)
            {
              goto LABEL_121;
            }

            v68 = *(v6 + 8 * v22 + 32);
            v69 = *(v6 + 8 * v56);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = sub_1E37EFA58(v6);
            v70 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v70) = 0;
          }

          v71 = v6 & 0xFFFFFFFFFFFFFF8;
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v22 + 0x20) = v69;

          if ((v6 & 0x8000000000000000) != 0 || v70)
          {
            v36 = sub_1E37EFA58(v6);
            v6 = v36;
            v71 = v36 & 0xFFFFFFFFFFFFFF8;
            if ((v57 & 0x8000000000000000) != 0)
            {
LABEL_95:
              __break(1u);
              goto LABEL_96;
            }
          }

          else if ((v57 & 0x8000000000000000) != 0)
          {
            goto LABEL_95;
          }

          v9 = *(v71 + 16);
          if (v57 >= v9)
          {
            goto LABEL_112;
          }

          *(v71 + 8 * v56) = v68;

          v86 = v6;
        }

        v32 = __OFADD__(v22++, 1);
        if (v32)
        {
          goto LABEL_111;
        }
      }

      v72 = v56 - 3;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_108;
      }

      if (v6 >> 62)
      {
        v73 = sub_1E4207384();
      }

      else
      {
        v9 = v6 & 0xFFFFFFFFFFFFFF8;
        v73 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v56;
    }

    while (v72 != v73);
  }

LABEL_48:
  v50 = sub_1E32AE9B0(v6);
  v51 = v50 - v22;
  if (v50 < v22)
  {
    goto LABEL_113;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v52 = v50;
  if (sub_1E32AE9B0(v6) < v50)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v32 = __OFSUB__(0, v51);
  v53 = -v51;
  if (v32)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v54 = sub_1E32AE9B0(v6);
  v32 = __OFADD__(v54, v53);
  v55 = v54 + v53;
  if (!v32)
  {
    sub_1E3797CDC(v55);
    sub_1E3AD8CE8(v22, v52, 0);
    return v86;
  }

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
  OUTLINED_FUNCTION_35(v9);
  sub_1E42062F4();
LABEL_97:
  sub_1E4206324();
  return v86;
}

uint64_t sub_1E3AD6BE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  sub_1E32752B0(&qword_1EE28A140, &unk_1ECF326C0);
  return sub_1E4200624();
}

uint64_t sub_1E3AD6D34()
{
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_29();
  v2 = OUTLINED_FUNCTION_4_36();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  if (OUTLINED_FUNCTION_41_13(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v6);
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v7, v8, "LibMPSource::mpMediaLibraryContentChanged");
    OUTLINED_FUNCTION_21_0();
  }

  v9 = OUTLINED_FUNCTION_22_4();
  v10(v9);
  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  v12 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0);
  v13 = v0;
  v12(sub_1E3AD8FB8, v11);
}

void sub_1E3AD6E94()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_123_2();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v16 = OUTLINED_FUNCTION_42_8();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v6 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  OUTLINED_FUNCTION_2_12(v8);
  v17[1] = 1107296256;
  v17[2] = sub_1E378AEA4;
  v17[3] = &block_descriptor_36;
  v9 = _Block_copy(v17);

  sub_1E4203FE4();
  v17[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_115();
  sub_1E328FC1C(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_0_138();
  sub_1E32752B0(v12, &qword_1ECF2A730);
  sub_1E42072E4();
  v13 = OUTLINED_FUNCTION_51_23();
  MEMORY[0x1E6911380](v13);
  _Block_release(v9);

  v14 = OUTLINED_FUNCTION_11_6();
  v15(v14);
  (*(v4 + 8))(v0, v16);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AD7160()
{
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_29();
  v2 = OUTLINED_FUNCTION_4_36();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  if (OUTLINED_FUNCTION_41_13(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v6);
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v7, v8, "LibMPSource::mpMediaLibraryDownloadingDidChange");
    OUTLINED_FUNCTION_21_0();
  }

  v9 = OUTLINED_FUNCTION_22_4();
  v10(v9);
  result = sub_1E3AD3914(10, 0, 0, 1, *(v0 + OBJC_IVAR____TtC8VideosUI11LibMPSource_mediaLibrary));
  if (result)
  {
    sub_1E399D4C4();
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))(v12 & 1);
  }

  return result;
}

uint64_t sub_1E3AD7308()
{
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_29();
  v2 = OUTLINED_FUNCTION_4_36();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  if (OUTLINED_FUNCTION_41_13(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v6);
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v7, v8, "LibMPSource::refreshRentalMenu");
    OUTLINED_FUNCTION_21_0();
  }

  v9 = OUTLINED_FUNCTION_22_4();
  v10(v9);
  sub_1E3280A90(0, &qword_1EE23B3A0);
  v11 = sub_1E39A2208();
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v11);
}

uint64_t sub_1E3AD7494(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1E3280A90(0, &qword_1EE23B3F8);
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void *sub_1E3AD7500(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32768);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1E3AD7670(uint64_t a1, SEL *a2)
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong *a2];
}

void sub_1E3AD76BC(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1E4207914();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1E3AD7494(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1E3AD7A90(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1E3AD779C(0, v3, 1, a1);
  }
}

void sub_1E3AD779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = sub_1E41FE5D4();
  MEMORY[0x1EEE9AC00](v53);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v40 - v15;
  v41 = a2;
  if (a3 == a2)
  {
    return;
  }

  v16 = *a4;
  v17 = (v14 + 32);
  v47 = (v14 + 8);
  v51 = v16;
  v18 = v16 + 8 * a3 - 8;
  v19 = a1 - a3;
  v20 = &selRef_vui_disableLocalAsset;
  while (2)
  {
    v43 = v18;
    v44 = a3;
    v21 = *(v51 + 8 * a3);
    v42 = v19;
    do
    {
      v22 = *v18;
      v23 = v21;
      v24 = v22;
      v25 = [v23 v20[101]];
      if (!v25)
      {
        goto LABEL_9;
      }

      v26 = v25;
      v27 = v24;
      v28 = v48;
      sub_1E41FE584();

      v29 = *v17;
      v30 = v28;
      v24 = v27;
      (*v17)(v52, v30, v53);
      v31 = [v27 v20[101]];
      if (!v31)
      {
        (*v47)(v52, v53);
LABEL_9:

        goto LABEL_10;
      }

      v32 = v31;
      v33 = v46;
      sub_1E41FE584();

      v34 = v52;
      v35 = v45;
      v50 = v24;
      v36 = v53;
      v29(v45, v33, v53);
      v49 = sub_1E41FE534();
      v37 = *v47;
      (*v47)(v35, v36);
      v37(v34, v36);
      v20 = &selRef_vui_disableLocalAsset;

      if ((v49 & 1) == 0)
      {
        break;
      }

LABEL_10:
      if (!v51)
      {
        __break(1u);
        return;
      }

      v38 = *v18;
      v21 = *(v18 + 8);
      *v18 = v21;
      *(v18 + 8) = v38;
      v18 -= 8;
    }

    while (!__CFADD__(v19++, 1));
    a3 = v44 + 1;
    v18 = v43 + 8;
    v19 = v42 - 1;
    if (v44 + 1 != v41)
    {
      continue;
    }

    break;
  }
}

void sub_1E3AD7A90(void ***a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v144 = a4;
  v145 = a1;
  v7 = sub_1E41FE5D4();
  MEMORY[0x1EEE9AC00](v7);
  v156 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v155 = &v140 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v159 = &v140 - v12;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v147 = &v140 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v146 = &v140 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v150 = &v140 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v153 = a3;
  v24 = *(a3 + 8);
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v163 = *v145;
    if (!v163)
    {
      goto LABEL_144;
    }

    a3 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v132 = a3;
LABEL_104:
      a3 = (v132 + 16);
      v133 = *(v132 + 2);
      while (v133 >= 2)
      {
        if (!*v153)
        {
          goto LABEL_141;
        }

        v134 = v132;
        v135 = &v132[16 * v133];
        v136 = *v135;
        v137 = (a3 + 16 * v133);
        v138 = v137[1];
        sub_1E3AD8528((*v153 + 8 * *v135), (*v153 + 8 * *v137), (*v153 + 8 * v138), v163);
        if (v5)
        {
          break;
        }

        if (v138 < v136)
        {
          goto LABEL_129;
        }

        if (v133 - 2 >= *a3)
        {
          goto LABEL_130;
        }

        *v135 = v136;
        *(v135 + 1) = v138;
        v139 = *a3 - v133;
        if (*a3 < v133)
        {
          goto LABEL_131;
        }

        v133 = *a3 - 1;
        memmove(v137, v137 + 2, 16 * v139);
        *a3 = v133;
        v132 = v134;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v132 = sub_1E37FFF5C(a3);
    goto LABEL_104;
  }

  v149 = &v140 - v22;
  v158 = v23;
  v25 = 0;
  v160 = (v21 + 32);
  v161 = (v21 + 8);
  v26 = MEMORY[0x1E69E7CC0];
  v157 = v7;
  while (2)
  {
    v27 = v25;
    v28 = v25 + 1;
    v152 = v24;
    if (v28 >= v24)
    {
      goto LABEL_25;
    }

    v143 = v26;
    a3 = *v153;
    v29 = v27;
    v30 = v28;
    v165 = *(*v153 + 8 * v28);
    v31 = *(a3 + 8 * v27);
    v164 = v31;
    v32 = v165;
    v33 = v31;
    sub_1E3AD4B7C(&v165, &v164, v34, v35, v36, v37, v38, v39, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
    LODWORD(v162) = v40;
    if (v5)
    {

      return;
    }

    v142 = 0;

    v148 = 8 * v29;
    v41 = (a3 + 8 * v29 + 16);
    v141 = v29;
    v42 = (v29 + 2);
    v28 = v152;
    while (1)
    {
      if (v30 + 1 >= v28)
      {
        goto LABEL_15;
      }

      v154 = v30;
      v43 = *(v41 - 1);
      v44 = *v41;
      a3 = v43;
      v45 = [v44 vui_rentalExpirationDate];
      if (v45)
      {
        break;
      }

LABEL_12:

      if ((v162 & 1) == 0)
      {
        v28 = v154 + 1;
        v5 = v142;
        v26 = v143;
        v57 = v144;
        v27 = v141;
        goto LABEL_26;
      }

LABEL_13:
      ++v41;
      v30 = v154 + 1;
      v42 = (v42 + 1);
    }

    v46 = v45;
    v163 = v42;
    v47 = a3;
    v48 = v150;
    sub_1E41FE584();

    v49 = *v160;
    v50 = v149;
    v51 = v48;
    a3 = v47;
    (*v160)(v149, v51, v7);
    v52 = [v47 vui_rentalExpirationDate];
    if (!v52)
    {
      (*v161)(v50, v7);
      v42 = v163;
      v28 = v152;
      goto LABEL_12;
    }

    v53 = v52;
    v151 = v47;
    v54 = v147;
    sub_1E41FE584();

    v55 = v146;
    v49(v146, v54, v7);
    LODWORD(v53) = sub_1E41FE534();
    a3 = *v161;
    v56 = v55;
    v28 = v152;
    (*v161)(v56, v7);
    (a3)(v50, v7);

    v42 = v163;
    if (((v162 ^ v53) & 1) == 0)
    {
      goto LABEL_13;
    }

    v28 = v154 + 1;
LABEL_15:
    v26 = v143;
    v57 = v144;
    v5 = v142;
    v27 = v141;
    v58 = v148;
    if ((v162 & 1) == 0)
    {
LABEL_26:
      v65 = v153[1];
      if (v28 < v65)
      {
        if (__OFSUB__(v28, v27))
        {
          goto LABEL_134;
        }

        if (v28 - v27 < v57)
        {
          v66 = v27 + v57;
          if (__OFADD__(v27, v57))
          {
            goto LABEL_135;
          }

          if (v66 >= v65)
          {
            v66 = v153[1];
          }

          if (v66 >= v27)
          {
            if (v28 == v66)
            {
              goto LABEL_47;
            }

            v143 = v26;
            v142 = v5;
            v162 = *v153;
            v67 = (v162 + 8 * v28 - 8);
            v141 = v27;
            v68 = (v27 - v28);
            v148 = v66;
LABEL_35:
            v154 = v28;
            v69 = *(v162 + 8 * v28);
            v151 = v68;
            v152 = v67;
            while (1)
            {
              a3 = *v67;
              v70 = v69;
              v71 = a3;
              v72 = [v70 vui_rentalExpirationDate];
              if (!v72)
              {
                goto LABEL_41;
              }

              v73 = v72;
              v163 = v70;
              v74 = v7;
              v75 = v71;
              v76 = v159;
              sub_1E41FE584();

              a3 = *v160;
              v77 = v158;
              v78 = v76;
              v71 = v75;
              v7 = v74;
              (*v160)(v158, v78, v74);
              v79 = [v71 vui_rentalExpirationDate];
              if (!v79)
              {
                break;
              }

              v80 = v79;
              v81 = v156;
              sub_1E41FE584();

              v82 = v71;
              v83 = v155;
              v84 = v81;
              v7 = v157;
              (a3)(v155, v84, v157);
              LOBYTE(v80) = sub_1E41FE534();
              a3 = *v161;
              (*v161)(v83, v7);
              (a3)(v77, v7);

              if ((v80 & 1) == 0)
              {
                goto LABEL_45;
              }

LABEL_42:
              if (!v162)
              {
                __break(1u);
                goto LABEL_139;
              }

              v85 = *v67;
              v69 = v67[1];
              *v67 = v69;
              v67[1] = v85;
              --v67;
              if (__CFADD__(v68++, 1))
              {
LABEL_45:
                v28 = v154 + 1;
                v67 = (v152 + 8);
                v68 = v151 - 1;
                if (v154 + 1 == v148)
                {
                  v28 = v148;
                  v5 = v142;
                  v26 = v143;
                  v27 = v141;
                  goto LABEL_47;
                }

                goto LABEL_35;
              }
            }

            (*v161)(v77, v74);
            v70 = v163;
LABEL_41:

            goto LABEL_42;
          }

LABEL_136:
          __break(1u);
          goto LABEL_137;
        }
      }

LABEL_47:
      if (v28 < v27)
      {
        goto LABEL_133;
      }

      v87 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154 = v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = v87;
      }

      else
      {
        v26 = sub_1E37FFF70(0, *(v87 + 2) + 1, 1, v87);
      }

      a3 = *(v26 + 2);
      v89 = *(v26 + 3);
      v90 = a3 + 1;
      if (a3 >= v89 >> 1)
      {
        v26 = sub_1E37FFF70((v89 > 1), a3 + 1, 1, v26);
      }

      *(v26 + 2) = v90;
      v91 = v26 + 32;
      v92 = &v26[16 * a3 + 32];
      v93 = v154;
      *v92 = v27;
      v92[1] = v93;
      v163 = *v145;
      if (!v163)
      {
        goto LABEL_143;
      }

      if (!a3)
      {
LABEL_96:
        v25 = v154;
        v24 = v153[1];
        if (v154 >= v24)
        {
          goto LABEL_101;
        }

        continue;
      }

      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v26[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v26 + 4);
          v98 = *(v26 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_67:
          if (v100)
          {
            goto LABEL_120;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_123;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_128;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (v90 < 2)
        {
          goto LABEL_122;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_82:
        if (v115)
        {
          goto LABEL_125;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_127;
        }

        if (v122 < v114)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v94 - 1 >= v90)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_136;
        }

        if (!*v153)
        {
          goto LABEL_140;
        }

        v126 = v26;
        a3 = &v91[16 * v94 - 16];
        v127 = *a3;
        v128 = v91;
        v129 = &v91[16 * v94];
        v130 = *(v129 + 1);
        sub_1E3AD8528((*v153 + 8 * *a3), (*v153 + 8 * *v129), (*v153 + 8 * v130), v163);
        if (v5)
        {
          goto LABEL_112;
        }

        if (v130 < v127)
        {
          goto LABEL_115;
        }

        v5 = *(v126 + 2);
        if (v94 > v5)
        {
          goto LABEL_116;
        }

        *a3 = v127;
        *(a3 + 8) = v130;
        if (v94 >= v5)
        {
          goto LABEL_117;
        }

        v90 = v5 - 1;
        memmove(v129, v129 + 16, 16 * (v5 - 1 - v94));
        v26 = v126;
        *(v126 + 2) = v5 - 1;
        v131 = v5 > 2;
        v5 = 0;
        v7 = v157;
        v91 = v128;
        if (!v131)
        {
          goto LABEL_96;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_118;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_119;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_121;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_124;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_132;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

    break;
  }

  if (v28 >= v141)
  {
    if (v141 >= v28)
    {
      goto LABEL_26;
    }

    v59 = v152;
    if (v152 >= v42)
    {
      v59 = v42;
    }

    v60 = 8 * v59 - 8;
    v61 = v28;
    v62 = v141;
    do
    {
      if (v62 != --v61)
      {
        v63 = *v153;
        if (!*v153)
        {
          goto LABEL_142;
        }

        v64 = *(v63 + v58);
        *(v63 + v58) = *(v63 + v60);
        *(v63 + v60) = v64;
      }

      ++v62;
      v60 -= 8;
      v58 += 8;
    }

    while (v62 < v61);
LABEL_25:
    v57 = v144;
    goto LABEL_26;
  }

LABEL_139:
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
}

uint64_t sub_1E3AD8528(void **a1, id *a2, void **a3, void **a4)
{
  v84 = sub_1E41FE5D4();
  v8 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v80 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v77 = (&v76 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v76 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v83 = (&v76 - v23);
  v24 = a2 - a1;
  v25 = a3 - a2;
  if (v24 < v25)
  {
    v90 = a3;
    if (a4 != a1 || &a1[v24] <= a4)
    {
      memmove(a4, a1, 8 * v24);
    }

    v27 = (v8 + 32);
    v82 = (v8 + 8);
    v28 = &selRef_vui_disableLocalAsset;
    v29 = &a4[v24];
    v89 = v29;
    while (1)
    {
      if (a4 >= v29 || a2 >= v90)
      {
        a2 = a1;
        goto LABEL_45;
      }

      v31 = *a4;
      v32 = *a2;
      v33 = v31;
      v34 = [v32 v28[101]];
      if (!v34)
      {
        goto LABEL_18;
      }

      v35 = v34;
      v87 = a1;
      v88 = a2;
      v86 = a4;
      v36 = v33;
      v37 = v27;
      v38 = v81;
      sub_1E41FE584();

      v39 = *v37;
      v40 = v83;
      v41 = v38;
      v42 = v84;
      (*v37)(v83, v41, v84);
      v43 = v28[101];
      v85 = v36;
      v44 = [v36 v43];
      if (!v44)
      {
        break;
      }

      v45 = v44;
      v46 = v28;
      v47 = v78;
      sub_1E41FE584();

      v48 = v77;
      v49 = v83;
      v39(v77, v47, v42);
      LOBYTE(v45) = sub_1E41FE534();
      v50 = *v82;
      (*v82)(v48, v42);
      v50(v49, v42);
      v28 = v46;

      a4 = v86;
      a1 = v87;
      a2 = v88;
      v29 = v89;
      v27 = v37;
      if (v45)
      {
        goto LABEL_19;
      }

      v51 = v86;
      a4 = v86 + 1;
      if (v87 != v86)
      {
        goto LABEL_20;
      }

LABEL_21:
      ++a1;
    }

    (*v82)(v40, v42);
    a4 = v86;
    a1 = v87;
    a2 = v88;
    v29 = v89;
    v27 = v37;
    v33 = v85;
LABEL_18:

LABEL_19:
    v51 = a2;
    v52 = a1 == a2++;
    if (v52)
    {
      goto LABEL_21;
    }

LABEL_20:
    *a1 = *v51;
    goto LABEL_21;
  }

  v78 = v22;
  if (a4 != a2 || &a2[v25] <= a4)
  {
    memmove(a4, a2, 8 * v25);
  }

  v54 = (v8 + 32);
  v77 = (v8 + 8);
  v29 = &a4[v25];
  v81 = v54;
  v86 = a4;
  v87 = a1;
LABEL_28:
  v88 = a2 - 1;
  v55 = a3 - 1;
  v83 = a2;
  while (v29 > a4 && a2 > a1)
  {
    v90 = v55;
    v89 = v29;
    v57 = v29 - 1;
    v58 = *v88;
    v59 = *(v29 - 1);
    v60 = v58;
    v61 = [v59 vui_rentalExpirationDate];
    if (!v61)
    {
      goto LABEL_41;
    }

    v62 = v61;
    v85 = v59;
    v63 = v82;
    sub_1E41FE584();

    v64 = *v54;
    v65 = v78;
    v66 = v84;
    (*v54)(v78, v63, v84);
    v67 = [v60 vui_rentalExpirationDate];
    if (!v67)
    {
      (*v77)(v65, v66);
      a2 = v83;
      v59 = v85;
LABEL_41:

LABEL_42:
      a3 = v90;
      v52 = v90 + 1 == a2;
      a4 = v86;
      a1 = v87;
      a2 = v88;
      v29 = v89;
      v54 = v81;
      if (!v52)
      {
        *v90 = *v88;
      }

      goto LABEL_28;
    }

    v68 = v67;
    v69 = v80;
    sub_1E41FE584();

    v70 = v79;
    v64(v79, v69, v66);
    LOBYTE(v68) = sub_1E41FE534();
    v71 = *v77;
    (*v77)(v70, v66);
    v71(v65, v66);

    a2 = v83;
    if (v68)
    {
      goto LABEL_42;
    }

    v72 = v90;
    if (v89 != v90 + 1)
    {
      *v90 = *v57;
    }

    v55 = v72 - 1;
    v29 = v57;
    a4 = v86;
    a1 = v87;
    v54 = v81;
  }

LABEL_45:
  v73 = v29 - a4;
  if (a2 != a4 || a2 >= &a4[v73])
  {
    memmove(a2, a4, 8 * v73);
  }

  return 1;
}

void *sub_1E3AD8B28(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > v5[3] >> 1)
  {
    if (v5[2] <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5[2];
    }

    result = sub_1E3AD7500(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_1E3AD8B90(void *a1, int64_t a2, char a3)
{
  result = sub_1E3AD8BB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3AD8BB0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32768);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3AD8CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for LibMenuItem();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3AD8DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_25;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  type metadata accessor for LibMenuItem();
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_17;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    result = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_26:
  result = sub_1E4207384();
LABEL_6:
  v16 = result - v8;
  if (__OFSUB__(result, v8))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v17 = (v11 + 8 * v8);
  if (v5 != v17 || &v17[8 * v16] <= v5)
  {
    memmove(v5, v17, 8 * v16);
  }

  if (v9)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = *(v10 + 16);
  }

  if (__OFADD__(result, v12))
  {
    goto LABEL_28;
  }

  *(v10 + 16) = result + v12;
LABEL_17:
  if (v7 < 1)
  {
  }

  else
  {
    v19 = v10 + 8 * v6;
    *(v19 + 32) = v4;
    if (v19 + 40 < v5)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E3AD8F54(void *a1)
{
  v1 = [a1 genre];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

void sub_1E3AD8FC0()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA8))(v1);
  }
}

double sub_1E3AD9070(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_26_0();
  v5 = (*(v4 + 392))();
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    OUTLINED_FUNCTION_26_0();
    (*(v8 + 984))();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0);
    v16 = OUTLINED_FUNCTION_58_18(v9, v10, v9, v11, v12, v13, v14, v15, v32);
    v17 = v33;
    (*(*v7 + 1128))(v16);
    LOBYTE(v35) = v18 & 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
    OUTLINED_FUNCTION_58_18(v19, v20, v19, v21, v22, v23, v24, v25, v33);
    type metadata accessor for LayoutGrid();

    v26 = OUTLINED_FUNCTION_51_1();
    v27 = sub_1E3A25B9C(v7, v17, v26 & 1);

    sub_1E3A25D00(v27, 0, a2, v34);
    sub_1E3A258E4(a2);
    OUTLINED_FUNCTION_67_1();
    (*((*MEMORY[0x1E69E7D40] & v28) + 0x460))(a1, 0);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_7_111();
    v29();
    if (v39)
    {
    }

    else
    {
      v30 = sub_1E3952BD8(v36, v37, v38);

      return v35 + v30;
    }
  }

  return v6;
}

uint64_t sub_1E3AD9318(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1E3AD9330()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v2)
  {
    swift_getObjectType();
    v8 = sub_1E40175B0();
  }

  else
  {
    v8 = 0.0;
  }

  type metadata accessor for LayoutGrid();
  v9 = OUTLINED_FUNCTION_18_54();
  v10 = sub_1E3A2579C(v9);
  v11 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))(v10);
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v13 = (*(v12 + 232))(v3);

  v14 = *(*v5 + 392);
  v15 = v14();
  if (v15)
  {
    v16 = v15;
    v17 = v13;
    sub_1E3C2AE10();
    v19 = v18;
    (*(*v16 + 1640))();
  }

  v20 = *(MEMORY[0x1E69DC5C0] + 16);
  v69 = *MEMORY[0x1E69DC5C0];
  v70 = v20;
  if (v14())
  {
    OUTLINED_FUNCTION_30();
    (*(v21 + 176))(v71);

    if ((v72 & 1) == 0)
    {
      *&v69 = v71[0];
      *&v70 = v71[2];
    }
  }

  v22 = sub_1E3AE0394(v7);
  if (v22)
  {
    (*((*v11 & *v1) + 0x4C8))(v5, &v69, v22);
  }

  v54 = v13;
  if ((v14)(v22) && (OUTLINED_FUNCTION_30(), v24 = (*(v23 + 304))(), v26 = v25, , (v26 & 1) == 0) || (v27 = 0.0, v14()) && (OUTLINED_FUNCTION_30(), v24 = (*(v28 + 328))(), v30 = v29, , (v30 & 1) == 0))
  {
    v27 = *&v24;
  }

  v52 = v7;
  v31 = objc_opt_self();
  v32 = [v31 estimatedDimension_];
  v33 = v5[49];
  if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
  {
    sub_1E38BAE74(v73);
    v34 = sub_1E3ADD488(v5);
    type metadata accessor for UIFactory();
    v67 = v34;
    *&v57 = &type metadata for CollectionViewCellContext;
    *(&v57 + 1) = &off_1F5D621F8;
    v35 = swift_allocObject();
    v55 = v35;
    *(v35 + 16) = 1;
    *(v35 + 17) = *&v73[1];
    *(v35 + 33) = v74[0];
    *(v35 + 43) = *(v74 + 10);
    v36 = sub_1E3280A90(0, &qword_1EE23B120);
    sub_1E38E5240(v5, &v67, &v55, 0, 0, v36, v68);
    sub_1E325F748(&v55, &qword_1ECF296C0);
    v37 = *&v68[0];
    if (*&v68[0])
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        [v38 vui:v8 sizeThatFits:{0.0, v52, v54, v55}];
        v27 = v39;
        v40 = [v31 absoluteDimension_];

        v32 = v40;
        goto LABEL_24;
      }
    }
  }

LABEL_24:
  v41 = [v31 fractionalWidthDimension_];
  v42 = objc_opt_self();
  v43 = [v42 sizeWithWidthDimension:v41 heightDimension:v32];

  v44 = [objc_opt_self() itemWithLayoutSize_];
  v45 = [v31 fractionalWidthDimension_];
  v46 = [v31 estimatedDimension_];
  v47 = [v42 sizeWithWidthDimension:v45 heightDimension:v46];

  v48 = [objc_opt_self() horizontalGroupWithLayoutSize:v47 repeatingSubitem:v44 count:1];
  v49 = [v44 layoutSize];
  v50 = [v48 layoutSize];
  sub_1E3AE0584(0xD000000000000014, 0x80000001E4270A00, v33, v53, v49, v50);

  sub_1E3790540(v68);
  v51 = [objc_opt_self() sectionWithGroup_];
  [v51 setContentInsets_];

  v55 = v51;
  v56 = v68[0];
  v57 = v68[1];
  v58 = v68[2];
  v59 = v68[3];
  v60 = v68[4];
  v61 = v68[5];
  v62 = v68[6];
  v63 = v68[7];
  v64 = v68[8];
  v65 = v68[9];
  v66 = v68[10];
  sub_1E325F748(&v56, &unk_1ECF296A0);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3AD9A44()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v115 = v6;
  v116 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v107.n128_u64[0] = v10 - v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v102 - v14;
  v134[0] = (*(*v3 + 1040))(v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B580);
  sub_1E3AE0FBC();
  sub_1E4149048(v16);

  OUTLINED_FUNCTION_39();
  v17 = MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & v18) + 0x470);
  *&v117 = v5;
  v19(v3, v5, v1);
  sub_1E3ADBEBC(v1);
  OUTLINED_FUNCTION_39();
  v21 = *((*v17 & v20) + 0x458);
  v118.n128_u64[0] = v1;
  v22 = v21(v134, v3, v1);
  v23 = *v134;
  v114.n128_u64[0] = v134[1];
  v24 = *(*v3 + 960);
  v113.n128_u64[0] = *v3 + 960;
  v112.n128_u64[0] = v24;
  v25 = v24(v22);
  if (v25)
  {
    LODWORD(v106) = *(v25 + 98);
  }

  else
  {
    LODWORD(v106) = 263;
  }

  v26 = sub_1E324FBDC();
  v27 = v8[2];
  v103 = v26;
  *&v104 = v8 + 2;
  v28 = v116;
  v102 = v27;
  (v27)(v15);

  v29 = sub_1E41FFC94();
  v30 = sub_1E4206814();

  v31 = os_log_type_enabled(v29, v30);
  v111 = v8;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v134[0] = swift_slowAlloc();
    *v32 = 136315906;
    v133[0] = *(v3 + 98);
    sub_1E37D144C();
    v33 = sub_1E4207944();
    sub_1E3270FC8(v33, v34, v134);
    OUTLINED_FUNCTION_11_5();

    *(v32 + 4) = v17;
    *(v32 + 12) = 2048;
    *(v32 + 14) = v117;
    *(v32 + 22) = 2080;
    if (*(v3 + 24))
    {
      v35 = *(v3 + 16);
      v36 = *(v3 + 24);
    }

    else
    {
      v36 = 0xE300000000000000;
      v35 = 7104878;
    }

    sub_1E3270FC8(v35, v36, v134);
    OUTLINED_FUNCTION_11_5();

    *(v32 + 24) = v35;
    *(v32 + 32) = 2080;
    if (v106 == 263)
    {
      v37 = 0xE300000000000000;
      v38 = 7104878;
    }

    else
    {
      sub_1E384EE08(v106);
      v37 = v39;
    }

    sub_1E3270FC8(v38, v37, v134);
    OUTLINED_FUNCTION_11_5();

    *(v32 + 34) = v35;
    _os_log_impl(&dword_1E323F000, v29, v30, "StackViewController+Layout::computed metrics for type:type:%s, index: %ld,\nid:%s, prototype:%s", v32, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v28 = v116;
    *&v105 = v111[1];
    (v105)(v15, v116);
  }

  else
  {

    *&v105 = v8[1];
    (v105)(v15, v28);
  }

  type metadata accessor for LayoutGrid();
  v40 = OUTLINED_FUNCTION_18_54();
  sub_1E3A258E4(v40);
  OUTLINED_FUNCTION_39();
  (*((*MEMORY[0x1E69E7D40] & v41) + 0x460))(v3, v118.n128_u64[0]);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_111();
  v42();
  if (v129)
  {
    sub_1E41A300C(v130);
    v43 = *&v130[1];
    v110.n128_u64[0] = v130[2];
    v109.n128_u64[0] = v130[3];
    v44 = *&v130[4];
    v45 = *&v130[5];
    v46 = *&v130[6];
    v47 = *&v130[7];
    v48 = *&v130[8];
    v49 = v130[9];
  }

  else
  {
    v43 = v120;
    v110.n128_u64[0] = v121;
    v44 = v123;
    v109.n128_u64[0] = v122;
    v45 = v124;
    v46 = v125;
    v47 = v126;
    v48 = v127;
    v49 = v128;
  }

  v50 = objc_opt_self();
  v51 = [v50 fractionalWidthDimension_];
  v52 = [v50 fractionalHeightDimension_];
  v53 = objc_opt_self();
  v54 = [v53 sizeWithWidthDimension:v51 heightDimension:v52];

  v55 = objc_opt_self();
  v108 = v54;
  v56 = [v55 itemWithLayoutSize_];
  if (v43 <= 10000.0)
  {
    v65 = &selRef_absoluteDimension_;
    v66 = v43;
  }

  else
  {
    v57 = v107.n128_u64[0];
    v102(v107.n128_u64[0], v103, v28);

    v58 = sub_1E41FFC94();
    v59 = sub_1E42067F4();

    if (os_log_type_enabled(v58, v59))
    {
      LODWORD(v104) = v59;
      v60 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v134[0] = v103;
      *v60 = 134219010;
      *(v60 + 4) = v43;
      *(v60 + 12) = 2080;
      v133[0] = *(v3 + 98);
      sub_1E37D144C();
      v61 = sub_1E4207944();
      sub_1E3270FC8(v61, v62, v134);
      OUTLINED_FUNCTION_11_5();

      *(v60 + 14) = v59;
      *(v60 + 22) = 2048;
      *(v60 + 24) = v117;
      *(v60 + 32) = 2080;
      if (*(v3 + 24))
      {
        v63 = *(v3 + 16);
        v64 = *(v3 + 24);
      }

      else
      {
        v64 = 0xE300000000000000;
        v63 = 7104878;
      }

      sub_1E3270FC8(v63, v64, v134);
      OUTLINED_FUNCTION_11_5();

      *(v60 + 34) = v63;
      *(v60 + 42) = 2080;
      if (v106 == 263)
      {
        v69 = 0xE300000000000000;
        v70 = 7104878;
      }

      else
      {
        sub_1E384EE08(v106);
        v69 = v71;
      }

      sub_1E3270FC8(v70, v69, v134);
      OUTLINED_FUNCTION_11_5();

      *(v60 + 44) = v63;
      _os_log_impl(&dword_1E323F000, v58, v104, "StackViewController+Layout:: internalHorizontalCollectionLayout: height:%f, type:%s,\nindex: %ld, id:%s, prototype:%s", v60, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v67 = v107.n128_u64[0];
      v68 = v116;
    }

    else
    {

      v67 = v57;
      v68 = v28;
    }

    (v105)(v67, v68);
    v65 = &selRef_estimatedDimension_;
    v66 = v23;
  }

  v72 = [v50 *v65];
  v73 = [v50 absoluteDimension_];
  v74 = [v53 sizeWithWidthDimension:v73 heightDimension:v72];

  v111 = v72;
  v75 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v76 = OUTLINED_FUNCTION_24_3();
  *(v76 + 16) = xmmword_1E4298880;
  *(v76 + 32) = v56;
  sub_1E3280A90(0, &unk_1EE23B0A0);
  v77 = v56;
  v78 = sub_1E42062A4();

  v116 = v74;
  v79 = [v75 horizontalGroupWithLayoutSize:v74 subitems:v78];

  v80 = [objc_opt_self() sectionWithGroup_];
  type metadata accessor for CollectionLayoutFactory();
  OUTLINED_FUNCTION_35_0();
  v81 = [v80 setOrthogonalScrollingBehavior_];
  if ((v112.n128_u64[0])(v81))
  {
  }

  v82 = [v77 layoutSize];
  v83 = [v79 layoutSize];
  v84 = OUTLINED_FUNCTION_28_38(26);
  v85 = v117;
  sub_1E3AE0584(v84, v86, v87, v117, v82, v83);

  [v80 setInterGroupSpacing_];
  v88.n128_f64[0] = v46;
  v89.n128_f64[0] = v47;
  nullsub_1(v88, v89);
  [v80 setContentInsets_];
  v90 = OUTLINED_FUNCTION_51_1();
  sub_1E3814DBC(v85, v90 & 1, v131, v43, v110.n128_f64[0], v109.n128_f64[0], v44, v45, v46, v47, v48, v49);
  memcpy(v119, v131, sizeof(v119));
  nullsub_1(v91, v92);
  memcpy(v134, v119, 0xB0uLL);
  sub_1E3F3778C(v134, v80, v132);
  v118 = v132[0];
  v117 = v132[1];
  v114 = v132[2];
  v113 = v132[3];
  v112 = v132[4];
  v110 = v132[5];
  v109 = v132[6];
  v107 = v132[7];
  v106 = v132[8];
  v105 = v132[9];
  v104 = v132[10];

  memcpy(v133, v132, sizeof(v133));
  if (sub_1E3AD9318(v133) == 1)
  {
    v93 = v119[0];
    v94 = v119[1];
    v95 = v119[2];
    v96 = v119[3];
    v97 = v119[4];
    v98 = v119[5];
    v99 = v119[6];
    v100 = v119[7];
  }

  else
  {
    sub_1E3AE0F68(v131);
    v94 = v117;
    v93 = v118;
    v96 = v113;
    v95 = v114;
    v97 = v112;
    v99 = v109;
    v98 = v110;
    v100 = v107;
  }

  v101 = v115;
  *v115 = v80;
  OUTLINED_FUNCTION_12_76(v101, v93, v94, v95, v96, v97, v98, v99, v100);
  OUTLINED_FUNCTION_42();
}

void sub_1E3ADA640(void (*a1)(uint64_t *__return_ptr)@<X3>, void *a2@<X8>)
{
  a1(&v11);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  *a2 = v11;
  OUTLINED_FUNCTION_13_86(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1E3ADA6A8()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v108 = v10;
  (*(v9 + 1136))(v5);
  OUTLINED_FUNCTION_2_33();
  v12 = (*(v11 + 392))();
  if (v3)
  {
    swift_getObjectType();
    v13 = sub_1E40175B0();
  }

  else
  {
    v13 = 0.0;
  }

  v14 = 1.0;
  if (v12)
  {
    v15 = *(*v12 + 984);

    v17 = v15(v16);
    LOBYTE(v15) = v18;

    if (v15)
    {
      v19 = 21;
    }

    else
    {
      v19 = v17;
    }

    v20 = *(*v12 + 1128);

    *&v22 = COERCE_DOUBLE(v20(v21));
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      v14 = *&v22;
    }
  }

  else
  {
    v19 = 21;
  }

  type metadata accessor for LayoutGrid();
  v25 = OUTLINED_FUNCTION_51_1();
  v102 = sub_1E3A25B9C(v12, v19, v25 & 1);
  v103 = v14;
  v26 = sub_1E3A25D00(v102, 1, v13, v14);
  sub_1E3A258E4(v13);
  OUTLINED_FUNCTION_67_1();
  (*((*v8 & v27) + 0x460))(v5, v3);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_111();
  v28();
  if (v121)
  {
    sub_1E41A300C(v122);
    v29 = v123;
    v30 = v124;
    v31 = v125;
    v32 = v126;
  }

  else
  {
    v29 = v117;
    v30 = v118;
    v31 = v119;
    v32 = v120;
  }

  if (v3)
  {
    swift_getObjectType();
    v33 = sub_1E40175B0();
  }

  else
  {
    v33 = 0.0;
  }

  OUTLINED_FUNCTION_85();
  (*(v34 + 440))();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v107 = (*(v35 + 232))(v3);

  v36 = objc_opt_self();
  v37 = [v36 absoluteDimension_];
  v38 = [v36 absoluteDimension_];
  v39 = objc_opt_self();
  v40 = [v39 sizeWithWidthDimension:v38 heightDimension:v37];

  v105 = v40;
  v41 = [objc_opt_self() itemWithLayoutSize_];
  v42 = [v36 fractionalWidthDimension_];
  v106 = v37;
  v43 = [v39 sizeWithWidthDimension:v42 heightDimension:v37];

  v44 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v45 = OUTLINED_FUNCTION_24_3();
  *(v45 + 16) = xmmword_1E4298880;
  *(v45 + 32) = v41;
  sub_1E3280A90(0, &unk_1EE23B0A0);
  v46 = v41;
  v47 = sub_1E42062A4();

  v104 = v43;
  v48 = [v44 horizontalGroupWithLayoutSize:v43 subitems:v47];

  sub_1E3A25950(v33);
  v50 = [objc_opt_self() fixedSpacing_];
  [v48 setInterItemSpacing_];

  v109 = [objc_opt_self() sectionWithGroup_];
  LOBYTE(v127[0]) = 34;
  (*(*v5 + 776))(__dst, v127, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (__dst[3])
  {
    if (swift_dynamicCast() && (v127[0] & 1) != 0)
    {
      sub_1E3A25950(v33);
      goto LABEL_25;
    }
  }

  else
  {
    sub_1E325F748(__dst, &unk_1ECF296E0);
  }

  OUTLINED_FUNCTION_26();
  v53 = (*(v52 + 392))();
  v51 = v32;
  if (v53)
  {
    OUTLINED_FUNCTION_30();
    *&v55 = COERCE_DOUBLE((*(v54 + 1176))());
    v57 = v56;

    v51 = v32;
    if ((v57 & 1) == 0)
    {
      v51 = *&v55;
    }
  }

LABEL_25:
  [v109 setInterGroupSpacing_];
  OUTLINED_FUNCTION_2_33();
  if ((*(v58 + 960))())
  {
  }

  v59 = [v46 layoutSize];
  v60 = [v48 layoutSize];
  v61 = OUTLINED_FUNCTION_28_38(24);
  sub_1E3AE0584(v61, v62, v63, v108, v59, v60);

  v64.n128_u64[0] = v30;
  v65.n128_u64[0] = v31;
  nullsub_1(v64, v65);
  [v109 setContentInsets_];

  sub_1E3790540(__src);
  memcpy(__dst, __src, 0xB0uLL);
  memcpy(v115, __src, sizeof(v115));
  v66 = __dst[21];
  v113[0] = 40;
  (*(*v5 + 776))(v127, v113, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v127[3])
  {
    sub_1E325F748(v127, &unk_1ECF296E0);
LABEL_45:
    sub_1E3F3778C(__dst, v109, v127);

    OUTLINED_FUNCTION_82();
    sub_1E325F748(v89, v90);
    memcpy(v112, v115, 0xA8uLL);
    *(&v112[10] + 1) = v66;
    memcpy(v113, v115, sizeof(v113));
    v114 = v66;
    sub_1E37C5830(v112, v111, &unk_1ECF296A0);
    OUTLINED_FUNCTION_82();
    sub_1E325F748(v91, v92);
    v93 = v112[0];
    v94 = v112[1];
    v95 = v112[2];
    v96 = v112[3];
    v97 = v112[4];
    v98 = v112[5];
    v99 = v112[6];
    v100 = v112[7];
    *v7 = v109;
    OUTLINED_FUNCTION_13_86(v93, v94, v95, v96, v97, v98, v99, v100);
    OUTLINED_FUNCTION_42();
    return;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_45;
  }

  if ((v113[0] & 1) == 0)
  {
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_26();
  v68 = (*(v67 + 1040))();
  if (!v68)
  {
    goto LABEL_45;
  }

  v69 = v68;
  if (!sub_1E32AE9B0(v68))
  {
LABEL_46:

    goto LABEL_45;
  }

  if ((v69 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
    v72 = v101;
    v70 = v103;
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    v70 = v103;
    if (!v71)
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v72 = *(v69 + 32);
  }

  v74 = (*(*v72 + 872))(v73);
  if (!v74)
  {

    goto LABEL_45;
  }

  v75 = sub_1E32AE9B0(v74);

  sub_1E3A262D8(v75, v102, 1, v13, v70);
  v77 = v76;
  v110 = MEMORY[0x1E69E7CD0];
  v78 = __OFSUB__(v75, v76);
  v79 = v75 - v76;
  if (v78)
  {
    goto LABEL_50;
  }

  if (v75 < v79)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v79 == v75)
  {
LABEL_41:
    v81 = *MEMORY[0x1E69DDCE0];
    v82 = *(MEMORY[0x1E69DDCE0] + 8);
    v83 = *(MEMORY[0x1E69DDCE0] + 16);
    v84 = *(MEMORY[0x1E69DDCE0] + 24);
    v85 = OUTLINED_FUNCTION_51_1();
    sub_1E3814DBC(v108, v85 & 1, v111, 0.0, v81, v82, v83, *&v84, v81, v82, v83, v84);

    memcpy(v112, v111, sizeof(v112));
    nullsub_1(v86, v87);
    memcpy(v113, v115, sizeof(v113));
    v114 = v66;
    sub_1E325F748(v113, &unk_1ECF296A0);
    memcpy(v115, v112, sizeof(v115));
    v88 = *(&v112[10] + 1);
    memcpy(v127, v112, 0xA8uLL);
    v127[21] = *(&v112[10] + 1);
    if (sub_1E3AD9318(v127) == 1)
    {
      v66 = v88;
    }

    else
    {
      v66 = v110;
    }

    goto LABEL_46;
  }

  if (v79 < v75)
  {
    do
    {
      v80 = v79 + 1;
      sub_1E3897544(v127, v79);
      v79 = v80;
      --v77;
    }

    while (v77);
    goto LABEL_41;
  }

LABEL_52:
  __break(1u);
}

uint64_t sub_1E3ADB20C()
{
  sub_1E3ADB254();
  sub_1E3AE0F68(&v2);
  return v1;
}

double sub_1E3ADB254()
{
  OUTLINED_FUNCTION_41_5();
  v4 = v3;
  v6 = v5;
  v132 = v7;
  OUTLINED_FUNCTION_21();
  v135 = v9;
  (*(v8 + 1136))(v6);
  if (v4)
  {
    swift_getObjectType();
    v10 = sub_1E40175B0();
  }

  else
  {
    v10 = 0.0;
  }

  v130 = *(*v6 + 392);
  v11 = v130();
  v12 = MEMORY[0x1E69DDCE0];
  if (!v11 || (OUTLINED_FUNCTION_30(), v0 = (*(v13 + 984))(), v15 = v14, , (v15 & 1) != 0) || v0 == 21)
  {
    type metadata accessor for LayoutGrid();
    v20 = OUTLINED_FUNCTION_18_54();
    sub_1E3A258E4(v20);
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
  }

  else
  {
    v16 = *v12;
    v17 = v12[1];
    v18 = v12[2];
    v19 = v12[3];
  }

  v25 = OUTLINED_FUNCTION_51_0();
  v26(v25);
  OUTLINED_FUNCTION_16_73();
  v125 = *(*v6 + 960);
  if (v125())
  {
    OUTLINED_FUNCTION_30();
    (*(v27 + 392))();
    OUTLINED_FUNCTION_11_5();

    if (v0)
    {
      OUTLINED_FUNCTION_47_0();
      v163[0] = (*(v28 + 200))();
      LOBYTE(v163[1]) = v29 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
      sub_1E3A1F10C();
      OUTLINED_FUNCTION_54_19();
      if ((v162 & 1) == 0)
      {
        v133 = v161;
        OUTLINED_FUNCTION_47_0();
        v163[0] = (*(v30 + 304))();
        LOBYTE(v163[1]) = v31 & 1;
        OUTLINED_FUNCTION_54_19();
        v106 = v161;
        v107 = objc_opt_self();
        v108 = [v107 fractionalWidthDimension_];
        v109 = [v107 absoluteDimension_];
        v124 = objc_opt_self();
        v110 = [v124 sizeWithWidthDimension:v108 heightDimension:v109];

        v111 = objc_opt_self();
        v112 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v113 = swift_allocObject();
        *(v113 + 2) = v6;
        *(v113 + 3) = v16;
        *(v113 + 4) = v17;
        *(v113 + 5) = v18;
        *(v113 + 6) = v19;
        *(v113 + 7) = v0;
        v113[8] = v133;
        *(v113 + 9) = v112;
        v113[10] = v106;
        v163[4] = sub_1E3AE10F0;
        v163[5] = v113;
        v163[0] = MEMORY[0x1E69E9820];
        v163[1] = 1107296256;
        v163[2] = sub_1E3AE0974;
        v163[3] = &block_descriptor_58;
        v114 = _Block_copy(v163);

        v115 = [v111 customGroupWithLayoutSize:v110 itemProvider:v114];
        _Block_release(v114);
        v116 = v115;
        v117 = [v107 absoluteDimension_];
        v118 = [v107 absoluteDimension_];
        v119 = [v124 sizeWithWidthDimension:v117 heightDimension:v118];

        v134 = v119;
        goto LABEL_18;
      }
    }
  }

  if (sub_1E40B9D0C(sub_1E3AE0A10))
  {
    v32 = OUTLINED_FUNCTION_51_0();
    v36 = sub_1E3952BE0(v32, v33, v34, v35);
    v122 = sub_1E3AE0A7C(v6, v4, v10 - v36);
    v37 = objc_opt_self();
    [v122 dimension];
    v118 = [v37 estimatedDimension_];
    v38 = [v37 fractionalWidthDimension_];
    v39 = objc_opt_self();
    v40 = [v39 sizeWithWidthDimension:v38 heightDimension:v118];

    v41 = objc_opt_self();
    v134 = v40;
    v42 = [v41 itemWithLayoutSize_];
    v43 = [v37 fractionalWidthDimension_];
    v44 = [v39 sizeWithWidthDimension:v43 heightDimension:v118];

    v45 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v46 = OUTLINED_FUNCTION_24_3();
    *(v46 + 16) = xmmword_1E4298880;
    *(v46 + 32) = v42;
    sub_1E3280A90(0, &unk_1EE23B0A0);
    v117 = v42;
    v47 = sub_1E42062A4();

    v119 = [v45 horizontalGroupWithLayoutSize:v44 subitems:v47];
  }

  else
  {
    v118 = sub_1E3AE0A7C(v6, v4, v10 - v1 - v2);
    v48 = objc_opt_self();
    v49 = [v48 fractionalWidthDimension_];
    v50 = objc_opt_self();
    v51 = [v50 sizeWithWidthDimension:v49 heightDimension:v118];

    v52 = objc_opt_self();
    v134 = v51;
    v53 = [v52 itemWithLayoutSize_];
    v54 = [v48 fractionalWidthDimension_];
    v44 = [v50 sizeWithWidthDimension:v54 heightDimension:v118];

    v55 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v56 = OUTLINED_FUNCTION_24_3();
    *(v56 + 16) = xmmword_1E4298880;
    *(v56 + 32) = v53;
    sub_1E3280A90(0, &unk_1EE23B0A0);
    v117 = v53;
    v57 = sub_1E42062A4();

    v119 = [v55 horizontalGroupWithLayoutSize:v44 subitems:v57];
  }

  v116 = v119;
LABEL_18:

  if ((v125)(v119))
  {
  }

  v58 = v116;
  v59 = [v58 layoutSize];
  v60 = OUTLINED_FUNCTION_28_38(20);
  sub_1E3AE0584(v60, v61, v62, v135, v134, v59);

  v63 = [objc_opt_self() sectionWithGroup_];
  OUTLINED_FUNCTION_5_111();
  if ((v130)([v64 v65]))
  {
    OUTLINED_FUNCTION_30();
    v67 = (*(v66 + 1176))();
    v69 = v68;

    v163[0] = v67;
    LOBYTE(v163[1]) = v69 & 1;
    MEMORY[0x1EEE9AC00](v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
    sub_1E4148DE0(sub_1E3AE10D8);
  }

  v71 = [v58 layoutSize];

  v72 = [v71 heightDimension];
  [v72 dimension];

  v73 = *(MEMORY[0x1E69DDCE0] + 24);
  OUTLINED_FUNCTION_62_13();
  v75 = v74;
  OUTLINED_FUNCTION_62_13();
  v77 = v76;
  OUTLINED_FUNCTION_62_13();
  v79 = v78;
  OUTLINED_FUNCTION_62_13();
  v81 = v80;
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_5_111();
  v89 = sub_1E3814DBC(v82, v83, v84, v85, v86, v87, v88, v73, v75, v77, v79, v81);
  v131 = v137;
  v89.n128_u64[0] = v138;
  v90.n128_u64[0] = v139;
  v128 = v139;
  v129 = v138;
  v126 = v141;
  v127 = v140;
  v121 = v143;
  v123 = v142;
  v91 = v144;
  v92 = v145;
  v120 = v146;
  v93 = v147;
  *(&v136[10] + 1) = *v148;
  HIDWORD(v136[10]) = *&v148[3];
  v94 = v149;
  v95 = v150;
  v96 = v151;
  v97 = v152;
  v98 = v153;
  v99 = v154;
  *(&v136[16] + 1) = *v155;
  HIDWORD(v136[16]) = *&v155[3];
  v100 = v156;
  v101 = v157;
  v102 = v158;
  v104 = v159;
  v103 = v160;
  v136[0] = v137;
  v136[1] = v138;
  v136[2] = v139;
  v136[3] = v140;
  v136[4] = v141;
  v136[5] = v142;
  v136[6] = v143;
  v136[7] = v144;
  v136[8] = v145;
  v136[9] = v146;
  LOBYTE(v136[10]) = v147;
  v136[11] = v149;
  v136[12] = v150;
  v136[13] = v151;
  v136[14] = v152;
  v136[15] = v153;
  LOBYTE(v136[16]) = v154;
  v136[17] = v156;
  v136[18] = v157;
  v136[19] = v158;
  v136[20] = v159;
  v136[21] = v160;
  nullsub_1(v89, v90);
  memcpy(v163, v136, 0xB0uLL);
  sub_1E3AE1020(&v137, &v161);
  sub_1E3F3778C(v163, v63, &v161);

  sub_1E3AE0F68(&v137);
  sub_1E325F748(&v161, &unk_1ECF296A0);
  *v132 = v63;
  *(v132 + 8) = v131;
  *(v132 + 16) = v129;
  *(v132 + 24) = v128;
  *(v132 + 32) = v127;
  *(v132 + 40) = v126;
  *(v132 + 48) = v123;
  *(v132 + 56) = v121;
  *(v132 + 64) = v91;
  *(v132 + 72) = v92;
  *(v132 + 80) = v120;
  *(v132 + 88) = v93 & 1;
  *(v132 + 96) = v94;
  *(v132 + 104) = v95;
  *(v132 + 112) = v96;
  *(v132 + 120) = v97;
  *(v132 + 128) = v98;
  *(v132 + 136) = v99;
  *(v132 + 144) = v100;
  *(v132 + 152) = v101;
  *(v132 + 160) = v102;
  *(v132 + 168) = v104;
  *(v132 + 176) = v103;
  OUTLINED_FUNCTION_42();
  return result;
}

double sub_1E3ADBEBC(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    swift_getObjectType();
    v3 = sub_1E40175B0();
  }

  else
  {
    v3 = 0.0;
  }

  if ((sub_1E39DFFC8() & 1) != 0 || (TVAppFeature.isEnabled.getter(10) & 1) == 0 || ![objc_opt_self() isMac])
  {
    return v3;
  }

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v4;
  [v4 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v22.origin.x = v8;
  v22.origin.y = v10;
  v22.size.width = v12;
  v22.size.height = v14;
  if (CGRectGetWidth(v22) <= 0.0)
  {
    return v3;
  }

  v15 = [v2 view];
  if (!v15)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v16 = v15;
  [v15 frame];
  OUTLINED_FUNCTION_16_73();

  OUTLINED_FUNCTION_5_111();

  return CGRectGetWidth(*&v17);
}

void sub_1E3ADC014()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = sub_1E3ADBEBC(v1);
  v17 = sub_1E324FBDC();
  v55 = *(v8 + 16);
  v55(v15, v17, v6);
  v18 = sub_1E41FFC94();
  v19 = sub_1E4206814();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_6_21();
    v54 = v17;
    *v20 = 134217984;
    *(v20 + 4) = v16;
    _os_log_impl(&dword_1E323F000, v18, v19, "StackViewController+Layout::container width for metrics calculation: %f", v20, 0xCu);
    v17 = v54;
    OUTLINED_FUNCTION_6_0();
  }

  v21 = *(v8 + 8);
  v22 = v21(v15, v6);
  v23 = (*(*v3 + 392))(v22);
  if (v23)
  {
    v24 = v23;
    OUTLINED_FUNCTION_26_0();
    v56 = (*(v25 + 984))();
    v57 = v26 & 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0);
    v29 = OUTLINED_FUNCTION_57_14(v27, v28, v27);
    v30 = *&v60;
    v56 = (*(*v24 + 1128))(v29);
    v57 = v31 & 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
    OUTLINED_FUNCTION_57_14(v32, v33, v32);
    v34 = v60;
    v35 = type metadata accessor for LayoutGrid();
    v36 = OUTLINED_FUNCTION_18_54();
    sub_1E3A25950(v36);
    v38 = v37;
    v58 = &unk_1F5D5D888;
    v59 = &off_1F5D5C918;
    LOBYTE(v56) = 12;
    v39 = sub_1E39C29F0(&v56, 1);
    __swift_destroy_boxed_opaque_existential_1(&v56);

    sub_1E3A25B9C(v40, v30, v39 & 1);
    OUTLINED_FUNCTION_35_0();

    sub_1E3A25D00(v35, 0, v16, v34);
  }

  else
  {
    v55(v12, v17, v6);
    v41 = sub_1E41FFC94();
    v42 = sub_1E42067F4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_125_0();
      *v43 = 0;
      _os_log_impl(&dword_1E323F000, v41, v42, "StackViewController+Layout::No view layout found.", v43, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v21(v12, v6);
    v38 = 10.0;
  }

  type metadata accessor for LayoutGrid();
  v44 = OUTLINED_FUNCTION_18_54();
  sub_1E3A258E4(v44);
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  VUICeilValue();
  *v5 = v53;
  v5[1] = v38;
  *(v5 + 2) = v46;
  *(v5 + 3) = v48;
  *(v5 + 4) = v50;
  *(v5 + 5) = v52;
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3ADC444()
{
  OUTLINED_FUNCTION_26_0();
  if (!(*(v0 + 392))() || (OUTLINED_FUNCTION_30(), (*(v1 + 176))(&v4), result = , (v5 & 1) != 0))
  {
    type metadata accessor for CollectionLayoutFactory();
    return sub_1E3C11D38(&v3);
  }

  return result;
}

void sub_1E3ADC524()
{
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_32_42();
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
    v12 = OUTLINED_FUNCTION_125_0();
    *v12 = 0;
    _os_log_impl(&dword_1E323F000, v10, v11, "StackViewController+Layout::computing cell metrics for multiple prototypes.", v12, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v8, v2);
  sub_1E3ADC6D8();
  memcpy(v1, v13, 0x51uLL);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3ADC6D8()
{
  OUTLINED_FUNCTION_21_5();
  v1 = v0;
  v97 = v2;
  LODWORD(v96) = v3;
  *&v95 = v4;
  OUTLINED_FUNCTION_32_42();
  v6 = v5;
  v8 = v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v82 - v21;
  v23 = *(*v6 + 1016);
  v94 = v6;
  v24 = v23(v20);
  if (!v24)
  {
    goto LABEL_27;
  }

  v25 = v24;
  v26 = sub_1E32AE9B0(v24);
  if (!v26)
  {

LABEL_27:
    v62 = sub_1E324FBDC();
    (*(v11 + 16))(v15, v62, v9);
    v63 = sub_1E41FFC94();
    v64 = sub_1E4206814();
    if (os_log_type_enabled(v63, v64))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_15_14(&dword_1E323F000, v65, v66, "StackViewController+Layout::prototypes are empty, returning.");
      OUTLINED_FUNCTION_6_0();
    }

    (*(v11 + 8))(v15, v9);
    v53 = 0;
    v54 = 0;
    v67 = 0;
    v68 = 0.0;
    v69 = 0uLL;
    v52 = 0;
    v70 = 1;
    v51 = 0.0;
    v71 = 0uLL;
    goto LABEL_35;
  }

  if (v26 >= 1)
  {
    v83 = v18;
    v84 = v8;
    v28 = 0.0;
    v89 = v25 & 0xC000000000000001;
    v29 = (v11 + 16);
    v30 = (v11 + 8);
    v31 = MEMORY[0x1E69E7CC0];
    *&v27 = 136315138;
    v86 = v27;
    v87 = v9;
    v32 = v22;
    v93 = v25;
    v90 = v26;
    v85 = v22;
    do
    {
      v98 = v28;
      if (v89)
      {
        v33 = MEMORY[0x1E6911E60](*&v28, v25);
      }

      else
      {
        v33 = *(v25 + 8 * *&v28 + 32);
      }

      v34 = sub_1E324FBDC();
      v35 = *v29;
      v91 = v34;
      v92 = v35;
      (v35)(v32);

      v36 = v32;
      v37 = sub_1E41FFC94();
      v38 = sub_1E4206814();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_6_21();
        v88 = swift_slowAlloc();
        *v39 = OUTLINED_FUNCTION_49_26(v88).n128_u32[0];
        v99 = *(v33 + 98);
        sub_1E37D144C();
        v40 = sub_1E4207944();
        v42 = v1;
        v43 = v31;
        v44 = v29;
        v45 = v30;
        v46 = sub_1E3270FC8(v40, v41, &v100);

        *(v39 + 4) = v46;
        v30 = v45;
        v29 = v44;
        v31 = v43;
        v1 = v42;
        _os_log_impl(&dword_1E323F000, v37, v38, "StackViewController+Layout::processing multiple prototype view model type: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v88);
        OUTLINED_FUNCTION_6_0();
        v9 = v87;
        OUTLINED_FUNCTION_6_0();

        v47 = *v30;
        v32 = v85;
        (*v30)(v85, v9);
      }

      else
      {

        v47 = *v30;
        (*v30)(v36, v9);
        v32 = v36;
      }

      sub_1E3ADCEC8();

      if (v102[80])
      {
      }

      else
      {
        memcpy(v103, v102, sizeof(v103));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_1E3AE0E54(0, *(v31 + 2) + 1, 1, v31);
        }

        v49 = *(v31 + 2);
        v48 = *(v31 + 3);
        if (v49 >= v48 >> 1)
        {
          v31 = sub_1E3AE0E54((v48 > 1), v49 + 1, 1, v31);
        }

        *(v31 + 2) = v49 + 1;
        memcpy(&v31[80 * v49 + 32], v103, 0x50uLL);
      }

      v25 = v93;
      *&v28 = *&v98 + 1;
    }

    while (v90 != *&v98 + 1);

    v50 = *(v31 + 2);
    if (v50)
    {
      v52 = *(v31 + 4);
      v51 = *(v31 + 5);
      v53 = *(v31 + 6);
      v54 = *(v31 + 7);
      v55 = *(v31 + 4);
      v56 = *(v31 + 5);
      v58 = *(v31 + 12);
      v57 = *(v31 + 13);
      v59 = v50 - 1;
      if (v59)
      {
        v60 = (v31 + 184);
        do
        {
          if (v51 < *(v60 - 8))
          {
            v58 = *(v60 - 1);
            v57 = *v60;
            v56 = *(v60 - 3);
            v55 = *(v60 - 5);
            v53 = *(v60 - 7);
            v54 = *(v60 - 6);
            v51 = *(v60 - 8);
            v52 = *(v60 - 9);
          }

          v60 += 10;
          --v59;
        }

        while (v59);
      }

      v95 = v56;
      v96 = v55;
      v97 = v58;
      v98 = v57;

      v61 = 0;
    }

    else
    {

      v98 = 0.0;
      v97 = 0;
      v54 = 0;
      v53 = 0;
      v96 = 0u;
      v51 = 0.0;
      v61 = 1;
      v52 = 0;
      v95 = 0u;
    }

    v100 = 0;
    v101 = 0xE000000000000000;
    LODWORD(v94) = v61;
    v72 = sub_1E4206E54();
    MEMORY[0x1E69109E0](v72);

    v73 = v100;
    v74 = v101;
    v75 = v83;
    v92(v83, v91, v87);

    v76 = sub_1E41FFC94();
    v77 = sub_1E4206814();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = OUTLINED_FUNCTION_6_21();
      v93 = v30;
      v79 = v78;
      v80 = swift_slowAlloc();
      *v79 = OUTLINED_FUNCTION_49_26(v80).n128_u32[0];
      v81 = sub_1E3270FC8(v73, v74, &v100);

      *(v79 + 4) = v81;
      _os_log_impl(&dword_1E323F000, v76, v77, "StackViewController+Layout::tallest multiple prototype size: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    v47(v75, v87);
    v8 = v84;
    v68 = v98;
    v67 = v97;
    v69 = v96;
    v71 = v95;
    v70 = v94;
LABEL_35:
    *v8 = v52;
    *(v8 + 8) = v51;
    *(v8 + 16) = v53;
    *(v8 + 24) = v54;
    *(v8 + 32) = v69;
    *(v8 + 48) = v71;
    *(v8 + 64) = v67;
    *(v8 + 72) = v68;
    *(v8 + 80) = v70;
    OUTLINED_FUNCTION_20_0();
    return;
  }

  __break(1u);
}

void sub_1E3ADCEC8()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v77 = 1;
  OUTLINED_FUNCTION_21();
  v24 = (*(v23 + 1104))();
  if (!v24 && v8)
  {

    sub_1E38BAE74(&v63);
    *v59 = v64[0];
    *&v59[3] = *(v64 + 3);
    *v58 = *v65;
    *&v58[15] = *&v65[15];
    if (v4)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v6;
    }

    v24 = sub_1E3ADD488(v8);
    v66[0] = v8;
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_35_0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D558);
    if (OUTLINED_FUNCTION_37_31())
    {
      v26 = *(&v72 + 1);
      v27 = v73;
      __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
      (*(v27 + 16))(v26, v27);
      __swift_destroy_boxed_opaque_existential_1(&v71);
      if (v24)
      {
LABEL_8:
        type metadata accessor for UIFactory();
        *&v60 = v24;
        *(&v72 + 1) = &type metadata for CollectionViewCellContext;
        *&v73 = &off_1F5D621F8;
        v28 = swift_allocObject();
        *&v71 = v28;
        *(v28 + 16) = 1;
        *(v28 + 17) = *v59;
        *(v28 + 20) = *&v59[3];
        *(v28 + 24) = v25;
        *(v28 + 32) = 0;
        *(v28 + 40) = *v58;
        *(v28 + 55) = *&v58[15];
        v29 = sub_1E3280A90(0, &qword_1EE23B120);

        v30 = v24;
        sub_1E38E5240(v8, &v60, &v71, 0, v0, v29, v66);

        sub_1E325F748(&v71, &qword_1ECF296C0);
        v24 = v66[0];
        goto LABEL_9;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25_49();
      sub_1E325F748(&v71, &qword_1ECF2D560);
      if (v24)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    goto LABEL_16;
  }

LABEL_9:
  if (!v24)
  {
    goto LABEL_15;
  }

  *&v71 = v24;
  sub_1E3280A90(0, &qword_1EE23B120);
  v8 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(&v61 + 1))
  {
    sub_1E3251BE8(&v60, v66);
    v31 = v67;
    v32 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    (*(v32 + 8))(&v71, v31, v32, v18, v16, v14, *&v12, *&v10);
    v54 = v72;
    v56 = v71;
    v50 = v73;
    v52 = v74;
    v33 = v75;
    v34 = v76;

    __swift_destroy_boxed_opaque_existential_1(v66);
    v36 = v50;
    v35 = v52;
    v38 = v54;
    v37 = v56;
    v39 = 0;
    goto LABEL_26;
  }

LABEL_16:
  v40 = sub_1E325F748(&v60, &qword_1ECF3F4E0);
  if (!(*(*v20 + 960))(v40) || (OUTLINED_FUNCTION_30(), (*(v41 + 392))(), OUTLINED_FUNCTION_6_19(), , !v8))
  {

    OUTLINED_FUNCTION_25_49();
LABEL_25:
    sub_1E325F748(&v71, &qword_1ECF32788);
    v33 = 0;
    v34 = 0;
    v37 = 0uLL;
    v39 = v77;
    v38 = 0uLL;
    v36 = 0uLL;
    v35 = 0uLL;
    goto LABEL_26;
  }

  v66[0] = v8;
  type metadata accessor for ViewLayout();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32790);
  if ((OUTLINED_FUNCTION_37_31() & 1) == 0)
  {
    OUTLINED_FUNCTION_25_49();
    goto LABEL_24;
  }

  if (!*(&v72 + 1))
  {
LABEL_24:

    goto LABEL_25;
  }

  sub_1E3251BE8(&v71, &v60);
  if (v2)
  {
    swift_getObjectType();
    v42 = sub_1E40175B0();
  }

  else
  {
    v42 = 0.0;
  }

  v43 = *(&v61 + 1);
  v44 = v62;
  __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
  (*(v44 + 8))(v66, v20, v43, v44, v42, v18, v16, v14, *&v12, *&v10);
  if (v70)
  {

    v33 = 0;
    v34 = 0;
    v55 = 0u;
    v57 = 0u;
    v39 = v77;
    v51 = 0u;
    v53 = 0u;
  }

  else
  {
    v45 = *v66;
    if ((v69 & 1) == 0)
    {
      v16 = *&v66[1];
      v14 = *&v66[2];
      v12 = v67;
      v10 = v68;
    }

    sub_1E397F03C();
    OUTLINED_FUNCTION_2_6();
    sub_1E41A3034(&v71, v18, v45, v46, v47, v48, v49, v16, v14, v12, v10);
    v55 = v72;
    v57 = v71;
    v53 = v74;
    v51 = v73;
    v33 = v75;
    v34 = v76;

    v39 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(&v60);
  v38 = v55;
  v37 = v57;
  v36 = v51;
  v35 = v53;
LABEL_26:
  *v22 = v37;
  *(v22 + 16) = v38;
  *(v22 + 32) = v36;
  *(v22 + 48) = v35;
  *(v22 + 64) = v33;
  *(v22 + 72) = v34;
  *(v22 + 80) = v39;
  OUTLINED_FUNCTION_20_0();
}

id sub_1E3ADD488(uint64_t a1)
{
  v3 = *(a1 + 98);
  v4 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 608))();
  sub_1E378D684(v3, v6);
  OUTLINED_FUNCTION_11_5();

  if (v2)
  {
    [v2 prepareForReuse];
    v8 = [v2 vuiCellView];
    v9 = OUTLINED_FUNCTION_23_13();
    [v10 v11];
  }

  else
  {
    v12 = (*((*v4 & *v1) + 0x1B8))(v7);
    sub_1E384EE08(v3);
    OUTLINED_FUNCTION_85();
    v14 = (*(v13 + 224))();

    if (v14)
    {
      swift_getObjCClassFromMetadata();
      v15 = OUTLINED_FUNCTION_23_13();
      v2 = [v16 v17];
      OUTLINED_FUNCTION_39();
      v19 = *((*v4 & v18) + 0x270);
      v20 = v2;
      v21 = v19(v26);
      v23 = v22;
      if (v20)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v25 = *v23;
        sub_1E37902C4(v20, v3);
        *v23 = v25;
      }

      else
      {
      }

      v21(v26, 0);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_1E3ADD6D8()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v89 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v85 - v12;
  sub_1E3ADBEBC(v2);
  type metadata accessor for LayoutGrid();
  v14 = OUTLINED_FUNCTION_18_54();
  v15 = sub_1E3A2579C(v14);
  OUTLINED_FUNCTION_67_1();
  (*((*MEMORY[0x1E69E7D40] & v16) + 0x1B8))();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v18 = (*(v17 + 232))(v2);

  if (TVAppFeature.isEnabled.getter(10))
  {
    v85 = v4;
    OUTLINED_FUNCTION_85();
    v20 = (*(v19 + 992))();
    if (v21 == 1)
    {
      v23 = sub_1E324FBDC();
      v24 = v89;
      (*(v89 + 16))(v10, v23, v5);
      v25 = sub_1E41FFC94();
      v26 = sub_1E42067F4();
      if (os_log_type_enabled(v25, v26))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v27, v28, "StackViewController+Layout:: missing view layout environment");
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v24 + 8))(v10, v5);
    }

    else
    {
      v54 = v20;
      v55 = v21;
      v56 = v22;
      v91 = v20;
      v90 = v15;
      sub_1E37F99D4();
      v57 = sub_1E4205E84();
      v58 = v85;
      if ((v57 & 1) == 0)
      {
        v59 = sub_1E324FBDC();
        v60 = v89;
        (*(v89 + 16))(v13, v59, v5);
        v61 = sub_1E41FFC94();
        v62 = sub_1E42067F4();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = OUTLINED_FUNCTION_125_0();
          *v63 = 0;
          _os_log_impl(&dword_1E323F000, v61, v62, "StackViewController+Layout:: size class mismatch", v63, 2u);
          v60 = v89;
          OUTLINED_FUNCTION_6_0();
        }

        (*(v60 + 8))(v13, v5);
      }

      v64 = v18;
      sub_1E39DFB80(v54, v55);
      if ((*(*v58 + 392))())
      {
        OUTLINED_FUNCTION_30();
        (*(v65 + 1640))(v54, v64, v56);
      }

      OUTLINED_FUNCTION_111();
      v67 = (*(v66 + 1016))();
      if (v67)
      {
        v68 = v67;
        v86 = v64;
        v87 = v56;
        v88 = v54;
        v69 = sub_1E32AE9B0(v67);
        v70 = 0;
        v89 = v68 & 0xC000000000000001;
        while (v69 != v70)
        {
          if (v89)
          {
            MEMORY[0x1E6911E60](v70, v68);
          }

          else
          {
            if (v70 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }
          }

          if (__OFADD__(v70, 1))
          {
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_11_13();
          if ((*(v71 + 392))())
          {
            OUTLINED_FUNCTION_30();
            v73 = *(v72 + 1640);
            v74 = v86;
            v75 = v86;
            v73(v88, v74, v87);
          }

          else
          {
          }

          ++v70;
        }

        v64 = v86;
        v54 = v88;
        v56 = v87;
      }

      OUTLINED_FUNCTION_111();
      if ((*(v76 + 968))())
      {
        OUTLINED_FUNCTION_26_0();
        v79 = v78;
        (*(v77 + 392))();
        OUTLINED_FUNCTION_35_0();

        if (v79)
        {
          OUTLINED_FUNCTION_8();
          (*(v80 + 1640))(v54, v64, v56);
        }
      }

      OUTLINED_FUNCTION_111();
      if ((*(v81 + 992))())
      {
        OUTLINED_FUNCTION_26_0();
        v83 = (*(v82 + 392))();

        if (v83)
        {
          OUTLINED_FUNCTION_8();
          (*(v84 + 1640))(v54, v64, v56);
        }
      }
    }

    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    v29 = v18;
    sub_1E3C2AE10();
    v89 = v30;
    if ((*(*v4 + 392))())
    {
      OUTLINED_FUNCTION_30();
      v31 = OUTLINED_FUNCTION_15_82();
      v32(v31);
    }

    OUTLINED_FUNCTION_111();
    v34 = (*(v33 + 1016))();
    if (v34)
    {
      v35 = v34;
      v88 = v29;
      v36 = sub_1E32AE9B0(v34);
      for (i = 0; ; ++i)
      {
        if (v36 == i)
        {

          v29 = v88;
          goto LABEL_19;
        }

        if ((v35 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](i, v35);
        }

        else
        {
          if (i >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        OUTLINED_FUNCTION_11_13();
        if ((*(v38 + 392))())
        {
          OUTLINED_FUNCTION_30();
          v39 = OUTLINED_FUNCTION_15_82();
          v40(v39);
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    else
    {
LABEL_19:
      OUTLINED_FUNCTION_111();
      if ((*(v41 + 968))())
      {
        OUTLINED_FUNCTION_26_0();
        v44 = v43;
        (*(v42 + 392))();
        OUTLINED_FUNCTION_35_0();

        if (v44)
        {
          OUTLINED_FUNCTION_8();
          v45 = OUTLINED_FUNCTION_15_82();
          v46(v45);
        }
      }

      OUTLINED_FUNCTION_111();
      if ((*(v47 + 992))())
      {
        OUTLINED_FUNCTION_26_0();
        v49 = (*(v48 + 392))();

        if (v49)
        {
          OUTLINED_FUNCTION_8();
          v50 = OUTLINED_FUNCTION_15_82();
          v51(v50);
        }
      }

      OUTLINED_FUNCTION_54_0();
    }
  }
}

void sub_1E3ADE074()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v146 = v6;
  v8 = v7;
  v132 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v126 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v129 = v12 - v11;
  sub_1E3790540(v165);
  v156 = v165[6];
  v157 = v165[7];
  v154 = v165[4];
  v155 = v165[5];
  v152 = v165[2];
  v153 = v165[3];
  v150 = v165[0];
  v151 = v165[1];
  v13 = v166;
  v159 = v168;
  v160 = v167;
  v144 = v169;
  v14 = v170;
  v158 = v171;
  type metadata accessor for StackViewController();
  v15 = sub_1E407DA28();
  v122 = v5[49];
  v16 = sub_1E38E5664(v122, v15);

  v138 = v3;
  v143 = v14;
  if (v16)
  {
    if (v3)
    {
      swift_getObjectType();
      sub_1E40175B0();
    }

    type metadata accessor for CollectionViewModel();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      v24 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x470);

      v24(v23, v146, v3);
    }

    else
    {
      type metadata accessor for LayoutGrid();
      v36 = OUTLINED_FUNCTION_18_54();
      v37 = sub_1E3A2579C(v36);
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8))(v37);
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_64();
      v39 = (*(v38 + 232))(v3);

      v40 = (*(*v5 + 392))();
      if (v40)
      {
        v41 = v40;
        v42 = v39;
        sub_1E3C2AE10();
        v44 = v43;
        (*(*v41 + 1640))();
      }

      else
      {
      }
    }

    v61 = (*(*v5 + 392))(v25);
    v62 = 0.0;
    v134 = v1;
    if (v61)
    {
      v63 = v61;
      OUTLINED_FUNCTION_26_0();
      v65 = *(v64 + 304);

      v66 = v65();
      LOBYTE(v65) = v67;

      if ((v65 & 1) == 0 || (v68 = *(*v63 + 328), v69 = , v66 = v68(v69), LOBYTE(v68) = v70, , (v68 & 1) == 0))
      {
        v62 = *&v66;
      }
    }

    v71 = objc_opt_self();
    v72 = [v71 estimatedDimension_];
    v73 = [v71 fractionalWidthDimension_];
    v74 = objc_opt_self();
    v75 = [v74 sizeWithWidthDimension:v73 heightDimension:v72];

    v120 = v75;
    v26 = [objc_opt_self() itemWithLayoutSize_];
    v76 = [v71 fractionalWidthDimension_];
    v124 = v72;
    v77 = [v74 sizeWithWidthDimension:v76 heightDimension:v72];

    v117 = v77;
    v78 = [objc_opt_self() horizontalGroupWithLayoutSize:v77 repeatingSubitem:v26 count:1];
    v79 = [v26 layoutSize];
    v14 = [v78 layoutSize];
    v80 = OUTLINED_FUNCTION_28_38(37);
    sub_1E3AE0584(v80, v81, v82, v146, v79, v14);

    v27 = [objc_opt_self() sectionWithGroup_];
    v83.n128_u64[0] = *MEMORY[0x1E69DDCE0];
    v84.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 8);
    v85.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 16);
    v86.n128_u64[0] = *(MEMORY[0x1E69DDCE0] + 24);
    (*((*MEMORY[0x1E69E7D40] & *v134) + 0x460))(v5, v138, v83, v84, v85, v86);
    v149 = v27;
    [v27 setContentInsets_];
    v87 = swift_dynamicCastClass();
    if (v87)
    {
      v27 = v87;
      OUTLINED_FUNCTION_26_0();
      v89 = *(v88 + 1344);

      v161[0] = 127;
      v172 = v89(v90);
      sub_1E3742F1C();
      v14 = &qword_1F5D5CE68;
      sub_1E4206254();
      sub_1E4206254();
      if (*v164 == *&v162[0] && *&v164[8] == *(&v162[0] + 1))
      {
      }

      else
      {
        v14 = sub_1E42079A4();

        if ((v14 & 1) == 0)
        {

LABEL_37:

          sub_1E3790540(v164);
          v137 = *&v164[96];
          v142 = *&v164[112];
          v131 = *&v164[64];
          v135 = *&v164[80];
          v125 = *&v164[32];
          v128 = *&v164[48];
          v118 = *v164;
          v121 = *&v164[16];
          v92 = *&v164[128];
          v93 = *&v164[136];
          OUTLINED_FUNCTION_50_23();
          *v164 = v150;
          *&v164[16] = v151;
          *&v164[32] = v152;
          *&v164[48] = v153;
          *&v164[64] = v154;
          *&v164[80] = v155;
          *&v164[96] = v156;
          *&v164[112] = v157;
          *&v164[128] = v13;
          OUTLINED_FUNCTION_2_111();
          sub_1E325F748(v164, &unk_1ECF296A0);
          v13 = v92;
          v47 = v93;
          v29 = v78;
          v50 = v118;
          v49 = v121;
          v52 = v125;
          v51 = v128;
          v54 = v131;
          v53 = v135;
          v55 = v137;
          v56 = v142;
          v48 = v149;
          goto LABEL_38;
        }
      }

      sub_1E3F37A14(v149, v27);

      goto LABEL_37;
    }

    goto LABEL_37;
  }

  type metadata accessor for CollectionViewModel();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    v119 = v8;
    v136 = v13;
    v19 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x470);

    v20 = v19(v18, v146, v3);
    v21 = (*(*v18 + 1344))(v20);
    if (sub_1E40597A0(v18))
    {
      sub_1E3AD9A44();
LABEL_16:
      v147 = *&v164[120];
      v140 = *&v164[104];
      v130 = *&v164[72];
      v133 = *&v164[88];
      v123 = *&v164[40];
      v127 = *&v164[56];
      v113 = *&v164[8];
      v115 = *&v164[24];
      v45 = *v164;
      v111 = *&v164[136];
      OUTLINED_FUNCTION_50_23();
      v46 = *&v164[176];

      *v164 = v150;
      *&v164[16] = v151;
      *&v164[32] = v152;
      *&v164[48] = v153;
      *&v164[64] = v154;
      *&v164[80] = v155;
      *&v164[96] = v156;
      *&v164[112] = v157;
      *&v164[128] = v136;
      OUTLINED_FUNCTION_2_111();
      sub_1E325F748(v164, &unk_1ECF296A0);
      v47 = v1;
      v26 = v21;
      v27 = v18;
      v14 = v3;
      v48 = v45;
      v29 = v46;
      v13 = v111;
      v50 = v113;
      v49 = v115;
      v52 = v123;
      v51 = v127;
      v54 = v130;
      v53 = v133;
      v55 = v140;
      v56 = v147;
LABEL_17:
      v8 = v119;
      goto LABEL_38;
    }

    if (sub_1E373F6E0())
    {
      OUTLINED_FUNCTION_24_42();
      sub_1E3ADA6A8();
      goto LABEL_16;
    }

    if (sub_1E373F6E0())
    {
      OUTLINED_FUNCTION_24_42();
      sub_1E3ADEF30();
      v148 = *&v164[120];
      v141 = *&v164[104];
      v114 = *&v164[72];
      v116 = *&v164[88];
      v110 = *&v164[40];
      v112 = *&v164[56];
      v108 = *&v164[8];
      v109 = *&v164[24];
      v48 = *v164;
      v57 = *&v164[136];
      v107 = *&v164[144];
      v58 = *&v164[152];
      v59 = *&v164[160];
      v60 = *&v164[168];
      v29 = *&v164[176];

      *&v164[8] = v150;
      *&v164[24] = v151;
      *&v164[40] = v152;
      *&v164[56] = v153;
      *&v164[72] = v154;
      *&v164[88] = v155;
      *&v164[104] = v156;
      *&v164[120] = v157;
      *v164 = 0;
      *&v164[136] = v136;
      *&v164[144] = v160;
      *&v164[152] = v159;
      *&v164[160] = v144;
      *&v164[168] = v143;
      *&v164[176] = v158;
      sub_1E325F748(v164, &unk_1ECF42A70);
      v47 = v107;
      v26 = v58;
      v27 = v59;
      v14 = v60;
      v13 = v57;
      v50 = v108;
      v49 = v109;
      v52 = v110;
      v51 = v112;
      v54 = v114;
      v53 = v116;
      v55 = v141;
      v56 = v148;
      v8 = v119;
      if (v48)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (sub_1E373F6E0())
      {
        OUTLINED_FUNCTION_24_42();
        sub_1E3ADB254();
        v48 = *v164;
        memcpy(v161, &v164[8], 0xB0uLL);

        memcpy(v162, v161, sizeof(v162));
        nullsub_1(v105, v106);
        *v164 = v150;
        *&v164[16] = v151;
        *&v164[32] = v152;
        *&v164[48] = v153;
        *&v164[64] = v154;
        *&v164[80] = v155;
        *&v164[96] = v156;
        *&v164[112] = v157;
        *&v164[128] = v13;
        OUTLINED_FUNCTION_2_111();
        sub_1E325F748(v164, &unk_1ECF296A0);
        v55 = v162[6];
        v56 = v162[7];
        v54 = v162[4];
        v53 = v162[5];
        v52 = v162[2];
        v51 = v162[3];
        v50 = v162[0];
        v49 = v162[1];
        v47 = *(&v162[8] + 1);
        v13 = *&v162[8];
        v27 = *(&v162[9] + 1);
        v26 = *&v162[9];
        v29 = *(&v162[10] + 1);
        v14 = *&v162[10];
        goto LABEL_17;
      }

      v26 = v159;
      v14 = v143;
      v27 = v144;
      OUTLINED_FUNCTION_8_79();
    }
  }

  else
  {
    v26 = v159;
    v27 = v144;
    OUTLINED_FUNCTION_8_79();
  }

  v28 = sub_1E324FBDC();
  (*(v126 + 16))(v129, v28, v132);

  v29 = sub_1E41FFC94();
  v30 = sub_1E42067F4();

  v139 = v30;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_6_21();
    v145 = v27;
    v32 = swift_slowAlloc();
    *v164 = v32;
    *v31 = 136315138;
    sub_1E384EE08(v122);
    v35 = sub_1E3270FC8(v33, v34, v164);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_1E323F000, v29, v139, "StackViewController::internalCollectionLayoutSection missing layout for %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v27 = v145;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v126 + 8))(v129, v132);
  v48 = 0;
  v56 = OUTLINED_FUNCTION_8_79();
LABEL_38:
  *(v162 + 8) = v50;
  *(&v162[1] + 8) = v49;
  *(&v162[2] + 8) = v52;
  *(&v162[3] + 8) = v51;
  *(&v162[4] + 8) = v54;
  *(&v162[5] + 8) = v53;
  *(&v162[6] + 8) = v55;
  *(&v162[7] + 8) = v56;
  *&v162[0] = v48;
  *(&v162[8] + 1) = v13;
  *&v162[9] = v47;
  *(&v162[9] + 1) = v26;
  *&v162[10] = v27;
  *(&v162[10] + 1) = v14;
  v163 = v29;
  *&v164[8] = v50;
  *&v164[24] = v49;
  *&v164[40] = v52;
  *&v164[56] = v51;
  *&v164[72] = v54;
  *&v164[88] = v53;
  *&v164[104] = v55;
  *&v164[120] = v56;
  *v164 = v48;
  *&v164[136] = v13;
  *&v164[144] = v47;
  *&v164[152] = v26;
  *&v164[160] = v27;
  *&v164[168] = v14;
  *&v164[176] = v29;
  sub_1E37C5830(v162, v161, &unk_1ECF42A70);
  sub_1E325F748(v164, &unk_1ECF42A70);
  v94 = v163;
  v95 = v162[1];
  v96 = v162[2];
  v97 = v162[3];
  v98 = v162[4];
  v99 = v162[5];
  v100 = v162[6];
  v101 = v162[7];
  v102 = v162[8];
  v103 = v162[9];
  v104 = v162[10];
  *v8 = v162[0];
  *(v8 + 16) = v95;
  *(v8 + 32) = v96;
  *(v8 + 48) = v97;
  *(v8 + 64) = v98;
  *(v8 + 80) = v99;
  *(v8 + 96) = v100;
  *(v8 + 112) = v101;
  *(v8 + 128) = v102;
  *(v8 + 144) = v103;
  *(v8 + 160) = v104;
  *(v8 + 176) = v94;
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3ADEF30()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v140 = *(*v3 + 1040);
  v169[0] = v140();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B580);
  sub_1E3AE0FBC();
  sub_1E4149048(v9);

  OUTLINED_FUNCTION_67_1();
  v10 = MEMORY[0x1E69E7D40];
  v143 = v6;
  (*((*MEMORY[0x1E69E7D40] & v11) + 0x470))(v4, v6, v2);
  OUTLINED_FUNCTION_2_33();
  v13 = *(v12 + 392);
  v144 = v13();
  if (v2)
  {
    swift_getObjectType();
    v14 = sub_1E40175B0();
  }

  else
  {
    v14 = 0.0;
  }

  OUTLINED_FUNCTION_85();
  (*(v15 + 1112))(v169, v4, v2);
  v16 = *v169;
  v17 = *&v169[1];
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v14);
  OUTLINED_FUNCTION_67_1();
  (*((*v10 & v18) + 0x460))(v4, v2);
  OUTLINED_FUNCTION_2_6();
  v19 = *v10 & *v0;
  v20 = v152;
  (*(v19 + 1128))(v152, v4, COERCE_DOUBLE(*&v14), 0, v2, v16, v21, v22, v23, v24);
  v134 = v8;
  if (v153)
  {
    v20 = v154;
    sub_1E41A300C(v154);
    v25 = v155;
    v26 = v157;
    v27 = v158;
    v28 = v159;
    v138 = v160;
    v139 = v156;
    v136 = v162;
    v137 = v161;
    v29 = v163;
  }

  else
  {
    v25 = *&v152[1];
    v26 = v152[3];
    v27 = *&v152[4];
    v28 = *&v152[5];
    v138 = v152[6];
    v139 = *&v152[2];
    v136 = v152[8];
    v137 = v152[7];
    v29 = v152[9];
  }

  v135 = v29;
  v30 = *v20;
  v31 = objc_opt_self();
  v32 = [v31 absoluteDimension_];
  v33 = [v31 absoluteDimension_];
  v141 = objc_opt_self();
  v34 = [v141 sizeWithWidthDimension:v32 heightDimension:v33];

  v133 = v34;
  v35 = [objc_opt_self() itemWithLayoutSize_];
  v36 = v13();
  if (!v36 || (OUTLINED_FUNCTION_11_13(), v38 = *(v37 + 984), v39 = , v40 = v38(v39), v42 = v41, , (v42 & 1) != 0))
  {
    v40 = 9;
  }

  v43 = OUTLINED_FUNCTION_51_1();
  v44 = sub_1E3A25B9C(v36, v40, v43 & 1);
  v45 = v44;
  v46 = 1.0;
  if (v36)
  {
    OUTLINED_FUNCTION_11_13();
    v48 = *(v47 + 1128);

    *&v50 = COERCE_DOUBLE(v48(v49));
    v52 = v51;

    v53 = v144;
    if ((v52 & 1) == 0)
    {
      v46 = *&v50;
    }
  }

  else
  {
    v53 = v144;
  }

  v54 = (v140)(v44);
  if (!v54)
  {
    goto LABEL_21;
  }

  v55 = v54;
  if (!sub_1E32AE9B0(v54))
  {
    v60 = 0;
    goto LABEL_23;
  }

  if ((v55 & 0xC000000000000001) != 0)
  {
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_34_0();
  if (!v56)
  {
    __break(1u);
    goto LABEL_85;
  }

  v57 = *(v55 + 32);

  while (1)
  {

    v59 = (*(*v57 + 872))(v58);

    if (v59)
    {
      v60 = sub_1E32AE9B0(v59);
LABEL_23:
    }

    else
    {
LABEL_21:
      v60 = 0;
    }

    v132 = *&v28;
    sub_1E3A262D8(v60, v45, 0, v14, v46);
    v62 = v61;
    if (v53 && (v63 = *(*v53 + 1104), v64 = , v65 = v63(v64), v53 = v144, v66 = v65, v45 = v67, , (v45 & 1) == 0))
    {
      v28 = v27;
    }

    else
    {
      v28 = v27;
      v66 = 1;
    }

    v27 = v62;
    v68 = ceil(v60 / v62);
    if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v68 <= -1.0)
    {
      goto LABEL_79;
    }

    if (v68 >= 1.84467441e19)
    {
      goto LABEL_80;
    }

    if (v66 >= v68)
    {
      v69 = v68;
    }

    else
    {
      v69 = v66;
    }

    if (v68)
    {
      v70 = v69;
    }

    else
    {
      v70 = v66;
    }

    v142 = v70;
    v14 = v17;
    if (v53)
    {
      v53 = *(*v53 + 1176);

      *&v72 = COERCE_DOUBLE(v53(v71));
      v74 = v73;

      v14 = v17;
      if ((v74 & 1) == 0)
      {
        v14 = *&v72;
      }
    }

    v75 = v142 - 1;
    if (!v142)
    {
      goto LABEL_81;
    }

    if (!__OFSUB__(v62, 1))
    {
      break;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    OUTLINED_FUNCTION_41_1();
    v57 = v127;
  }

  v131 = v26;
  v76 = v75;
  v77 = v14 * v75;
  v78 = v30 * v27 + v17 * (v62 - 1);
  v79 = [v31 absoluteDimension_];
  v80 = [v31 absoluteDimension_];
  v81 = [v141 sizeWithWidthDimension:v79 heightDimension:v80];

  v151 = MEMORY[0x1E69E7CC0];
  if (v62 >= 1)
  {
    do
    {
      v82 = v35;
      MEMORY[0x1E6910BF0]();
      if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      --v62;
    }

    while (v62);
  }

  v83 = objc_opt_self();
  sub_1E3280A90(0, &unk_1EE23B0A0);
  v84 = sub_1E42062A4();

  v130 = v81;
  v85 = [v83 horizontalGroupWithLayoutSize:v81 subitems:v84];

  v86 = objc_opt_self();
  v87 = [v86 fixedSpacing_];
  [v85 setInterItemSpacing_];

  v88 = v25 * v142 + v77 * v76;
  v89 = [v31 absoluteDimension_];
  v90 = [v31 absoluteDimension_];
  v91 = [v141 sizeWithWidthDimension:v89 heightDimension:v90];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v92 = OUTLINED_FUNCTION_24_3();
  *(v92 + 16) = xmmword_1E4298880;
  *(v92 + 32) = v85;
  v129 = v85;
  v93 = sub_1E42062A4();

  v141 = v91;
  v31 = [v83 verticalGroupWithLayoutSize:v91 subitems:v93];

  v94 = [v86 fixedSpacing_];
  [v31 setInterItemSpacing_];

  v45 = [objc_opt_self() sectionWithGroup_];
  OUTLINED_FUNCTION_2_33();
  if ((*(v95 + 960))())
  {
  }

  v96 = [v35 layoutSize];
  v97 = [v31 layoutSize];
  v98 = OUTLINED_FUNCTION_28_38(35);
  sub_1E3AE0584(v98, v99, v100, v143, v96, v97);

  LOBYTE(v167[0]) = 39;
  v101 = *(*v4 + 776);
  v101(v169, v167, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v169[3])
  {
    if (OUTLINED_FUNCTION_55_23() && (v167[0] & 1) != 0)
    {
      v102 = 4;
      goto LABEL_54;
    }
  }

  else
  {
    sub_1E325F748(v169, &unk_1ECF296E0);
  }

  v102 = 2;
LABEL_54:
  [v45 setOrthogonalScrollingBehavior_];
  [v45 setInterGroupSpacing_];
  v103.n128_u64[0] = v138;
  v104.n128_u64[0] = v137;
  nullsub_1(v103, v104);
  [v45 setContentInsets_];
  v105 = OUTLINED_FUNCTION_51_1();
  sub_1E3814DBC(v143, v105 & 1, __src, v88, v139, *&v131, v28, *&v132, *&v138, *&v137, *&v136, v135);
  memcpy(__dst, __src, sizeof(__dst));
  LOBYTE(v167[0]) = 40;
  v101(v169, v167, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v169[3])
  {
    sub_1E325F748(v169, &unk_1ECF296E0);
    goto LABEL_73;
  }

  if (!OUTLINED_FUNCTION_55_23())
  {
    goto LABEL_73;
  }

  if ((v167[0] & 1) == 0)
  {
    goto LABEL_73;
  }

  v106 = v140();
  if (!v106)
  {
    goto LABEL_73;
  }

  v107 = v106;
  if (!sub_1E32AE9B0(v106))
  {

    goto LABEL_73;
  }

  if ((v107 & 0xC000000000000001) == 0)
  {
    OUTLINED_FUNCTION_34_0();
    if (v108)
    {
      v109 = *(v107 + 32);

      goto LABEL_62;
    }

    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_85:
  OUTLINED_FUNCTION_41_1();
  v109 = v128;
LABEL_62:

  v111 = (*(*v109 + 872))(v110);
  if (!v111)
  {

    goto LABEL_73;
  }

  v112 = sub_1E32AE9B0(v111);

  if ((v142 & 0x8000000000000000) != 0)
  {
    goto LABEL_87;
  }

  v169[0] = MEMORY[0x1E69E7CD0];
  if (v112 < 0)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    return;
  }

  if (!v112)
  {
    goto LABEL_71;
  }

  if (!v142)
  {
    goto LABEL_89;
  }

  v113 = 0;
  do
  {
    v114 = v113 + 1;
    if (!((v113 + 1) % v142))
    {
      sub_1E3897544(v167, v113);
    }

    v113 = v114;
  }

  while (v112 != v114);
LABEL_71:
  v168 = __src[21];
  sub_1E3897544(v167, v112 - 1);

  sub_1E325F748(&v168, &qword_1ECF32798);
  __dst[21] = v169[0];
LABEL_73:
  OUTLINED_FUNCTION_59_12(v149);
  nullsub_1(v115, v116);
  memcpy(v169, v149, 0xB0uLL);
  sub_1E3F3778C(v169, v45, v165);

  memcpy(v166, v165, sizeof(v166));
  if (sub_1E3AD9318(v166) != 1)
  {
    memcpy(v167, v166, sizeof(v167));
    sub_1E3AE107C(v167, __dst);
  }

  OUTLINED_FUNCTION_59_12(v146);
  OUTLINED_FUNCTION_59_12(v147);
  nullsub_1(v117, v118);
  OUTLINED_FUNCTION_59_12(v148);
  sub_1E3AE1020(v146, v145);
  sub_1E3AE0F68(v148);
  v119 = v147[0];
  v120 = v147[1];
  v121 = v147[2];
  v122 = v147[3];
  v123 = v147[4];
  v124 = v147[5];
  v125 = v147[6];
  v126 = v147[7];
  *v134 = v45;
  OUTLINED_FUNCTION_12_76(v134, v119, v120, v121, v122, v123, v124, v125, v126);
  OUTLINED_FUNCTION_42();
}

id sub_1E3ADFDC4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (*(*a2 + 968))();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v3 + 98);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1D0))();
  sub_1E3AE003C(v5, v6);
  v8 = v7;

  if (!v8)
  {
LABEL_10:

    return v8;
  }

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension_];
  v11 = [v9 estimatedDimension_];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  sub_1E3280A90(0, &qword_1EE23AEC0);
  v13 = v12;
  OUTLINED_FUNCTION_82();
  v8 = sub_1E3AE0094(v14, v15, v16, 2);
  v18 = 19;
  (*(*v4 + 776))(v19, &v18, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v19[3])
  {

    sub_1E325F748(v19, &unk_1ECF296E0);
    return v8;
  }

  if ((OUTLINED_FUNCTION_13_14() & 1) == 0)
  {

    goto LABEL_10;
  }

  [v8 setPinToVisibleBounds_];

  return v8;
}

uint64_t sub_1E3AE003C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3740AE8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 16 * v3);

  return v5;
}

id sub_1E3AE0094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1E4205ED4();

  v7 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v6 alignment:a4];

  return v7;
}

id sub_1E3AE011C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (*(*a2 + 992))();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v3 + 98);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1E8))();
  sub_1E3AE003C(v5, v6);
  v8 = v7;

  if (!v8)
  {
LABEL_10:

    return v8;
  }

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension_];
  v11 = [v9 estimatedDimension_];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  sub_1E3280A90(0, &qword_1EE23AEC0);
  v13 = v12;
  OUTLINED_FUNCTION_82();
  v8 = sub_1E3AE0094(v14, v15, v16, 5);
  v18 = 19;
  (*(*v4 + 776))(v19, &v18, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v19[3])
  {

    sub_1E325F748(v19, &unk_1ECF296E0);
    return v8;
  }

  if ((OUTLINED_FUNCTION_13_14() & 1) == 0)
  {

    goto LABEL_10;
  }

  [v8 setPinToVisibleBounds_];

  return v8;
}

uint64_t sub_1E3AE0394(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x218))(v4);
  sub_1E4200104();

  result = sub_1E4200044();
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      v10 = 0;
      v11 = (result + 48);
      while (v10 < *(v7 + 16))
      {
        v12 = *v11;

        v13 = sub_1E41FFFD4();
        if ((v14 & 1) == 0 && v13 == v9)
        {
          v17 = OUTLINED_FUNCTION_44_31();
          v18(v17);

          return v12;
        }

        ++v10;

        v11 += 3;
        if (v8 == v10)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v15 = OUTLINED_FUNCTION_44_31();
    v16(v15);
    return 0;
  }

  return result;
}

uint64_t sub_1E3AE0584(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E324FBDC();
  (*(v12 + 16))(v16, v17, v10);
  v18 = v6;

  v19 = a5;
  v20 = a6;
  v21 = sub_1E41FFC94();
  v22 = sub_1E4206814();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v23 = 136448002;
    *(v23 + 4) = sub_1E3270FC8(a1, a2, &v49);
    *(v23 + 12) = 2080;
    v24 = sub_1E41E1364(v18);
    v45 = v21;
    OUTLINED_FUNCTION_63_16(v24, v25);
    OUTLINED_FUNCTION_6_19();

    *(v23 + 14) = a2;
    *(v23 + 22) = 2080;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327A0);
    v27 = sub_1E41494B4(v26);
    OUTLINED_FUNCTION_63_16(v27, v28);
    OUTLINED_FUNCTION_6_19();

    *(v23 + 24) = a2;
    *(v23 + 32) = 2048;
    *(v23 + 34) = a4;
    *(v23 + 42) = 2112;
    *(v23 + 44) = v19;
    *(v23 + 52) = 2112;
    *(v23 + 54) = v20;
    *v46 = v19;
    v46[1] = v20;
    *(v23 + 62) = 2080;
    v29 = sub_1E3280A90(0, &unk_1ECF31E80);
    v47 = v22;
    v30 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x1B8);
    v31 = v19;
    v32 = v30(v20);
    [v32 frame];
    OUTLINED_FUNCTION_16_73();

    OUTLINED_FUNCTION_5_111();
    v37 = sub_1E389BF5C(v33, v34, v35, v36);
    OUTLINED_FUNCTION_63_16(v37, v38);
    OUTLINED_FUNCTION_6_19();

    *(v23 + 64) = v29;
    *(v23 + 72) = 2080;
    v40 = v30(v39);
    [v40 contentSize];

    v41 = sub_1E4206E54();
    OUTLINED_FUNCTION_63_16(v41, v42);
    OUTLINED_FUNCTION_6_19();

    *(v23 + 74) = v29;
    _os_log_impl(&dword_1E323F000, v45, v47, "StackViewControllerLayout::%{public}s<%s> model:%s, index:%ld, item:%@, group:%@, collectionFrame: %s, contentSize: %s", v23, 0x52u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    return (*(v12 + 8))(v16, v10);
  }

  else
  {

    return (*(v12 + 8))(v16, v10);
  }
}

id sub_1E3AE0974(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  swift_unknownObjectRelease();
  sub_1E3280A90(0, &qword_1ECF327B0);
  v3 = sub_1E42062A4();

  return v3;
}

uint64_t sub_1E3AE0A10()
{
  v3[3] = &unk_1F5D5D918;
  v3[4] = &off_1F5D5C938;
  LOBYTE(v3[0]) = 0;
  v0 = j__OUTLINED_FUNCTION_18();
  v1 = sub_1E39C29F0(v3, v0 & 1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1 & 1;
}

id sub_1E3AE0A7C(uint64_t a1, uint64_t a2, double a3)
{
  v7 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v8 + 440))();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v10 = (*(v9 + 232))(a2);

  v38 = [v10 isAXLargeEnabled];
  v11 = &selRef_accountConfig;
  if ((*(*a1 + 960))())
  {
    v35 = v10;
    OUTLINED_FUNCTION_26_0();
    v12 += 49;
    v13 = *v12;
    if ((*v12)())
    {
      OUTLINED_FUNCTION_30();
      v15 = COERCE_DOUBLE((*(v14 + 304))());
      v17 = v16;

      if ((v17 & 1) == 0 && !((v15 <= 0.0) | v38 & 1))
      {
        v26 = [objc_opt_self() absoluteDimension_];
        goto LABEL_18;
      }
    }

    v18 = *MEMORY[0x1E69DC5C0];
    v19 = *(MEMORY[0x1E69DC5C0] + 8);
    v20 = *(MEMORY[0x1E69DC5C0] + 16);
    v21 = *(MEMORY[0x1E69DC5C0] + 24);
    if (a2)
    {
      swift_getObjectType();
      v22 = sub_1E40175B0();
    }

    else
    {
      v22 = 0.0;
    }

    (*((*v7 & *v3) + 0x468))(v39, a1, COERCE_DOUBLE(*&v22), a2 == 0, a2, a3, v18, v19, v20, v21);
    if (v40)
    {
      v23.n128_f64[0] = sub_1E41A300C(v41);
      v24 = v42;
    }

    else
    {
      v24 = *&v39[1];
    }

    if (v24 > 0.0)
    {
      v25 = objc_opt_self();
      if (!v38)
      {
        v26 = [v25 absoluteDimension_];
LABEL_18:
        v10 = v36;
        v11 = &selRef_accountConfig;
        goto LABEL_21;
      }

LABEL_20:
      v11 = &selRef_accountConfig;
      v26 = [v25 estimatedDimension_];
      v10 = v37;
LABEL_21:
      v31 = v26;

      if (v31)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    if (v13(v23))
    {
      OUTLINED_FUNCTION_30();
      *&v28 = COERCE_DOUBLE((*(v27 + 328))());
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        v24 = *&v28;
        v25 = objc_opt_self();
        goto LABEL_20;
      }
    }

    v10 = v35;
    v11 = &selRef_accountConfig;
  }

LABEL_22:
  v32 = objc_opt_self();
  if ([v32 isTV])
  {
    v33 = 120.0;
  }

  else if ([v32 isMac])
  {
    v33 = 120.0;
  }

  else
  {
    v33 = 78.0;
  }

  v31 = [objc_opt_self() v11[271]];
LABEL_28:

  return v31;
}

char *sub_1E3AE0E54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 80 * v8);
  }

  return v10;
}

unint64_t sub_1E3AE0FBC()
{
  result = qword_1EE23B578;
  if (!qword_1EE23B578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF3F4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B578);
  }

  return result;
}

uint64_t sub_1E3AE10F0()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  v24 = *(v0 + 8);
  v25 = v0[4];
  OUTLINED_FUNCTION_47_0();
  v5 = *(v4 + 392);
  if (!v5() || (OUTLINED_FUNCTION_30(), (*(v6 + 176))(v31), v8 = *v31, v7 = *&v31[1], v9 = *&v31[2], v10 = *&v31[3], , (v32 & 1) != 0))
  {
    v8 = *MEMORY[0x1E69DDCE0];
    v7 = *(MEMORY[0x1E69DDCE0] + 8);
    v9 = *(MEMORY[0x1E69DDCE0] + 16);
    v10 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  swift_getObjectType();
  v11 = sub_1E40175B0();
  v12 = v11 - sub_1E3952BE0(v1, v25, v2, v3);
  v13 = v12 - sub_1E3952BE0(v8, v7, v9, v10);
  OUTLINED_FUNCTION_26();
  v26 = (*(v14 + 224))();
  v27 = v15 & 1;
  v30 = v24;
  v28 = v13;
  v29 = 0;
  sub_1E3793CAC();
  clamp<A>(_:_:_:)(&v26, &v30, &v28, MEMORY[0x1E69E7DE0]);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong vuiIsRTL];
  }

  if (v5())
  {
    OUTLINED_FUNCTION_30();
    v19 = (*(v18 + 456))();

    switch(v19)
    {
      case 2:
      case 4:
        break;
      default:
        goto LABEL_8;
    }
  }

  else
  {
LABEL_8:
    sub_1E40175B0();
  }

  sub_1E40175B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v20 = OUTLINED_FUNCTION_24_3();
  *(v20 + 16) = xmmword_1E4298880;
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  OUTLINED_FUNCTION_16_73();
  objc_opt_self();
  OUTLINED_FUNCTION_5_111();
  *(v20 + 32) = [v21 v22];
  return v20;
}

uint64_t OUTLINED_FUNCTION_57_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4148C68(v3, a3, v4 - 136);
}

uint64_t OUTLINED_FUNCTION_58_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1E4148C68(v9, a3, &a9);
}

id OUTLINED_FUNCTION_62_13()
{

  return [v1 (v0 + 1656)];
}

uint64_t sub_1E3AE1568(char a1)
{
  type metadata accessor for ImageLayout();
  v1[13] = sub_1E3BD61D8();
  v1[14] = 0;
  v1[15] = sub_1E3BD61D8();
  type metadata accessor for ViewGradientLayout();
  v1[16] = sub_1E40C3088();
  v3 = sub_1E3C2F9A0();
  if (a1)
  {
    type metadata accessor for ChannelOfferOverlayLayout();
    v4 = sub_1E3B91818(161);
    swift_beginAccess();
    *(v3 + 112) = v4;

    sub_1E3C37CBC(v4, 161);
  }

  v5 = *(**(v3 + 104) + 1808);

  v5(3);

  if (TVAppFeature.isEnabled.getter(10))
  {
    v6 = *(v3 + 104);

    sub_1E39537A8();
    v83 = v7;
    v84 = v8;
    v85 = v9;
    v86 = v10;
    LOBYTE(v87) = 0;
    (*(*v6 + 560))(&v83);

    sub_1E39537A8();
    v78 = v11;
    v79 = v12;
    v80 = v13;
    v81 = v14;
    LOBYTE(v82) = 0;
    (*(*v3 + 560))(&v78);
    v15 = *(v3 + 104);

    v16 = *sub_1E3E60F2C();
    v17 = *(*v15 + 1832);
    v18 = v16;
    v17(v16);

    v19 = *(v3 + 104);

    v20.n128_u64[0] = *sub_1E3E60B34();
    v73 = j__OUTLINED_FUNCTION_7_78(v20);
    v74 = v21;
    v75 = v22;
    v76 = v23;
    LOBYTE(v77) = 0;
    (*(*v19 + 1856))(&v73);
  }

  *__dst = 0x4054000000000000;
  __dst[8] = 0;
  v108 = 0x4059000000000000;
  LOBYTE(v109) = 0;
  v104 = 0x4060C00000000000;
  LOBYTE(v105) = 0;
  v100 = 0x4051000000000000;
  LOBYTE(v101) = 0;
  v96 = 0x4059000000000000;
  LOBYTE(v97) = 0;
  v24 = MEMORY[0x1E69E7DE0];
  v25 = sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  BYTE8(v89) = v93;
  OUTLINED_FUNCTION_0_139(v25, v26, v27, v28, v29, v30, v31, v32, v64, v67, v70, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v92);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v34 = *(v33 + 1600);
  v34(__dst, 4, v35 & 1, v24);
  *__dst = 0x4038000000000000;
  __dst[8] = 0;
  v108 = 0x403E000000000000;
  LOBYTE(v109) = 0;
  v104 = 0x4046800000000000;
  LOBYTE(v105) = 0;
  v100 = 0x4038000000000000;
  LOBYTE(v101) = 0;
  v96 = 0x4041000000000000;
  LOBYTE(v97) = 0;
  v36 = sub_1E3C3DE00(v24);
  BYTE8(v89) = v93;
  OUTLINED_FUNCTION_0_139(v36, v37, v38, v39, v40, v41, v42, v43, v65, v68, v71, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v92);
  memcpy(__dst, __src, 0x59uLL);
  v44 = OUTLINED_FUNCTION_18();
  v34(__dst, 8, v44 & 1, v24);
  *__dst = 0x4032000000000000;
  memset(&__dst[8], 0, 25);
  v109 = 0;
  v108 = 0;
  __asm { FMOV            V0.2D, #20.0 }

  v110 = _Q0;
  v111 = 0;
  v105 = 0;
  v104 = 0;
  v106 = xmmword_1E42B8F80;
  v107 = 0;
  v101 = 0;
  v100 = 0;
  v102 = xmmword_1E42B8860;
  v103 = 0;
  v96 = 0;
  v97 = 0;
  v98 = vdupq_n_s64(0x4040000000000000uLL);
  v99 = 0;
  type metadata accessor for UIEdgeInsets();
  v51 = v50;
  v52 = sub_1E3C3DE00(v50);
  *(&v89 + 1) = v93;
  v90 = v94;
  v91 = v95;
  OUTLINED_FUNCTION_0_139(v52, v53, v54, v55, v56, v57, v58, v59, v66, v69, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v92);
  memcpy(__dst, __src, 0xE9uLL);
  v60 = OUTLINED_FUNCTION_18();
  v34(__dst, 0, v60 & 1, v51);
  (*(*v3 + 1752))(0);

  sub_1E3C37CBC(v61, 39);

  sub_1E3C37CBC(v62, 40);

  return v3;
}

uint64_t sub_1E3AE1AEC()
{
  type metadata accessor for ImageLayout();
  v0[13] = sub_1E3BD61D8();
  v0[14] = 0;
  v0[15] = sub_1E3BD61D8();
  type metadata accessor for ViewGradientLayout();
  v0[16] = sub_1E40C3088();

  return sub_1E3C2F9A0();
}

void sub_1E3AE1B4C(char a1)
{
  v11 = [objc_opt_self() blackColor];
  v3 = *(v1 + 128);
  OUTLINED_FUNCTION_36();
  (*(v4 + 1776))(1);
  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 1728);
  if (a1)
  {
    v6(0, 0x3FF0000000000000, 0);
    OUTLINED_FUNCTION_36();
    (*(v7 + 1752))(0, 0, 0);
    v8 = &unk_1F5D6FB80;
  }

  else
  {
    v6(0x3FE8000000000000, 0x3FE8000000000000, 0);
    OUTLINED_FUNCTION_36();
    (*(v9 + 1752))(0x3FF0000000000000, 0x3FF0000000000000, 0);
    v8 = &unk_1F5D6FBB8;
  }

  (*(*v3 + 1824))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E42A73A0;
  *(v10 + 32) = [v11 colorWithAlphaComponent_];
  *(v10 + 40) = [v11 colorWithAlphaComponent_];
  *(v10 + 48) = [v11 colorWithAlphaComponent_];
  (*(*v3 + 1800))(v10);
}

void sub_1E3AE1DF8(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const void *a6@<X5>, void *a7@<X8>)
{
  v116 = a7;
  v117 = a4;
  v112 = *(a3 + 4);
  v114 = *(a3 + 3);
  type metadata accessor for EmptyResultsViewLayout();
  v12 = sub_1E3FFF238();
  sub_1E3A57880(__src);
  memcpy(__dst, __src, 0xC3uLL);

  sub_1E3294EE4(a6, &v167, &qword_1ECF28C28);
  sub_1E325F6F0(__dst, &qword_1ECF28C28);
  memcpy(v174, a6, sizeof(v174));
  v130 = [objc_opt_self() sharedInstance];
  v13 = sub_1E38F8C98();
  v129 = a1;
  v14 = *v13 == a1 && *(v13 + 1) == a2;
  if (v14 || (sub_1E42079A4()) && (v15 = [objc_opt_self() standardUserDefaults], v16 = sub_1E4205ED4(), v17 = objc_msgSend(v15, sel_stringForKey_, v16), v15, v16, v17) && (v18 = sub_1E4205F14(), v20 = v19, v17, v20))
  {
    v166[3] = MEMORY[0x1E69E6158];
    v166[1] = v20;
    v29 = OUTLINED_FUNCTION_8_80(v21, v22, v23, v24, v25, v26, v27, v28, v112, v114, v116, v117, v120, v122, v125, v129, v130, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v18);
    sub_1E329504C(v29, v30);
    v31 = v130;
  }

  else
  {
    memset(v166, 0, 32);
    *(&v168 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    v31 = v130;
    if (v130)
    {
      *&v167 = sub_1E3741090(0xD000000000000015, 0x80000001E4270AC0, v130);
      *(&v167 + 1) = v32;
      if (v166[3])
      {
        sub_1E325F6F0(v166, &unk_1ECF296E0);
      }
    }

    else
    {
      v167 = 0uLL;
    }
  }

  v126 = a5;
  type metadata accessor for TextViewModel();

  v121 = v12;
  v123 = OUTLINED_FUNCTION_13_87(23, &v167);
  if (v123)
  {
    v33 = *(*v12 + 1704);

    v35 = v33(v34);
    v36 = sub_1E3AE3818(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v38 = v36[2];
    v37 = v36[3];
    if (v38 >= v37 >> 1)
    {
      v36 = sub_1E3AE3818((v37 > 1), v38 + 1, 1, v36);
    }

    v36[2] = v38 + 1;
    v39 = &v36[2 * v38];
    v39[4] = v123;
    v39[5] = v35;
    v31 = v130;
    if (v130)
    {
      goto LABEL_18;
    }

LABEL_21:
    v42 = 0;
    goto LABEL_23;
  }

  v36 = MEMORY[0x1E69E7CC0];
  if (!v31)
  {
    goto LABEL_21;
  }

LABEL_18:
  sub_1E3741090(0xD000000000000017, 0x80000001E4270AA0, v31);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1E4297BE0;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1E3283528();
    *(v41 + 32) = v129;
    *(v41 + 40) = a2;

    v42 = sub_1E4205F44();
    v31 = v43;
  }

  else
  {
    v42 = 0;
    v31 = 0;
  }

LABEL_23:
  v44 = v126;
  if (!v126 || (memcpy(v176, a6, 0xC3uLL), sub_1E3748B78(v176) == 1))
  {

    v45 = [objc_opt_self() isSearchEnabled];
    v46 = MEMORY[0x1E69E6158];
    if (!v45)
    {
LABEL_37:
      if (!v31)
      {
        goto LABEL_46;
      }

      v61 = v31;
LABEL_39:
      *(&v168 + 1) = v46;
      *&v167 = v42;
      *(&v167 + 1) = v61;
      v68 = OUTLINED_FUNCTION_13_87(15, &v167);
      if (v68)
      {
        v69 = *(*v121 + 1728);

        v71 = v69(v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1E3AE3818(0, v36[2] + 1, 1, v36);
        }

        v73 = v36[2];
        v72 = v36[3];
        if (v73 >= v72 >> 1)
        {
          v36 = sub_1E3AE3818((v72 > 1), v73 + 1, 1, v36);
        }

        v36[2] = v73 + 1;
        v74 = &v36[2 * v73];
        v74[4] = v68;
        v74[5] = v71;
      }

      v44 = v126;
LABEL_46:
      if ([objc_opt_self() isSearchEnabled])
      {
        v75 = *(a3 + 3);
        if (!v75)
        {
          sub_1E325F6F0(a6, &qword_1ECF28C28);

LABEL_66:

          goto LABEL_67;
        }

        v76 = *(a3 + 2);
        v77 = *(a3 + 4);
        if (v44)
        {
          sub_1E325F6F0(a6, &qword_1ECF28C28);

          v175[0] = v76;
          v175[1] = v75;
          sub_1E3782C70(v175);
          v179 = v77;
          v78 = &v179;
LABEL_64:
          sub_1E325F6F0(v78, &unk_1ECF2EB10);

LABEL_65:

          goto LABEL_66;
        }

        memcpy(v175, a6, 0xC3uLL);
        if (sub_1E3748B78(v175) != 1)
        {
          sub_1E325F6F0(a6, &qword_1ECF28C28);
          OUTLINED_FUNCTION_6_95();
          v180 = v77;
          v78 = &v180;
          goto LABEL_64;
        }

        v180 = v77;
        if (v77)
        {
          v81 = sub_1E3EA3A8C();
          v82 = *v81;
          v83 = v81[1];

          sub_1E3277E60(v82, v83, v77, &v167);
          OUTLINED_FUNCTION_6_95();
          sub_1E325F6F0(&v180, &unk_1ECF2EB10);

          if (*(&v168 + 1))
          {
            v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
            OUTLINED_FUNCTION_8_80(v84, v85, v86, v87, v88, v89, v90, v91, v112, v114, v116, v117, v121, v123, v126, v129, v130, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166[0]);
            if (swift_dynamicCast())
            {
              v92 = v166[0];
              v93 = sub_1E3EA3A98();
              v94 = *v93;
              v95 = v93[1];

              sub_1E3277E60(v94, v95, v92, &v167);

              if (*(&v168 + 1))
              {
                OUTLINED_FUNCTION_8_80(v96, v97, v98, v99, v100, v101, v102, v103, v113, v115, v116, v118, v121, v124, v127, v129, v131, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166[0]);
                v44 = v128;
                if (swift_dynamicCast())
                {
                  v104 = v166[0];
                  type metadata accessor for ViewModel();

                  v105 = sub_1E39BED80(90, v104, v119);
                  if (v105)
                  {

                    if (sub_1E3D76A14(v106, 0))
                    {
                      type metadata accessor for AttributionTextViewLayout();
                      v107 = swift_dynamicCastClass();
                      if (v107)
                      {
                        v108 = v107;
                        v109 = (*(*v121 + 1728))();
                        v110 = (*(*v109 + 1688))(v109);

                        v111 = v110;
                        v44 = v128;
                        (*(*v108 + 1720))(v111);

LABEL_69:
                        v166[0] = v129;
                        v166[1] = a2;
                        v166[2] = 0;
                        v166[3] = v105;
                        v166[4] = v108;
                        v166[5] = v121;
                        v166[6] = v36;
                        v166[7] = v44;
                        memcpy(&v166[8], v174, 0xC3uLL);
                        *&v167 = v129;
                        *(&v167 + 1) = a2;
                        *&v168 = 0;
                        *(&v168 + 1) = v105;
                        v169 = v108;
                        v170 = v121;
                        v171 = v36;
                        v172 = v44;
                        memcpy(v173, v174, sizeof(v173));
                        sub_1E3900318(v166, &v133);
                        sub_1E3900374(&v167);
                        memcpy(v116, v166, 0x103uLL);
                        return;
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {
                  }

LABEL_68:
                  v108 = 0;
                  goto LABEL_69;
                }

                goto LABEL_65;
              }

              sub_1E325F6F0(&v167, &unk_1ECF296E0);
            }

            else
            {
            }

            v105 = 0;
            v108 = 0;
            v44 = v127;
            goto LABEL_69;
          }

          v44 = v126;
        }

        else
        {

          OUTLINED_FUNCTION_6_95();
          v167 = 0u;
          v168 = 0u;
        }

        v79 = &unk_1ECF296E0;
        v80 = &v167;
      }

      else
      {
        sub_1E325F6F0(a6, &qword_1ECF28C28);

        v79 = &unk_1ECF327B8;
        v80 = a3;
      }

      sub_1E325F6F0(v80, v79);
LABEL_67:

      v105 = 0;
      goto LABEL_68;
    }

    v47 = *(a3 + 3);
    if (v47 && (v48 = *(a3 + 2), v177 = *(a3 + 4), v178[0] = v48, v178[1] = v47, , , sub_1E3782C70(v178), (v49 = v177) != 0))
    {
      v50 = sub_1E3EA3A74();
      v51 = *v50;
      v52 = v50[1];

      v53 = v51;
      v46 = MEMORY[0x1E69E6158];
      sub_1E3277E60(v53, v52, v49, &v167);
      sub_1E325F6F0(&v177, &unk_1ECF2EB10);

      if (*(&v168 + 1))
      {
        OUTLINED_FUNCTION_8_80(v54, v55, v56, MEMORY[0x1E69E6158], v57, v58, v59, v60, v112, v114, v116, v117, v121, v123, v126, v129, v130, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166[0]);
        if (swift_dynamicCast())
        {
          v61 = v166[1];
          v42 = v166[0];
LABEL_33:

          goto LABEL_39;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v167 = 0u;
      v168 = 0u;
    }

    sub_1E325F6F0(&v167, &unk_1ECF296E0);
LABEL_36:
    v44 = v126;
    goto LABEL_37;
  }

  v62 = [objc_allocWithZone(VUILocalizationManager) init];
  sub_1E3741090(0xD00000000000001ELL, 0x80000001E4270A80, v62);
  v64 = v63;

  if (v64)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1E4297BE0;
    v66 = MEMORY[0x1E69E6158];
    *(v65 + 56) = MEMORY[0x1E69E6158];
    *(v65 + 64) = sub_1E3283528();
    *(v65 + 32) = v129;
    *(v65 + 40) = a2;
    v46 = v66;
    v42 = sub_1E4205F44();
    v61 = v67;

    goto LABEL_33;
  }

  __break(1u);
}

void *sub_1E3AE2ABC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201D44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327C0);
  return sub_1E3AE2B10(v1, a1 + *(v3 + 44));
}

void *sub_1E3AE2B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327F0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &__src[-v6];
  *v7 = sub_1E4201D44();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327F8);
  v9 = sub_1E3AE2CF8(a1, &v7[*(v8 + 44)]);
  (*(**(a1 + 40) + 304))(v9);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_14_8();
  sub_1E42015C4();
  sub_1E329E454(v7, a2, &qword_1ECF327F0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32800);
  return memcpy((a2 + *(v10 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E3AE2CF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32808);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v79 = (&v70 - v5);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32810);
  OUTLINED_FUNCTION_0_10();
  v77 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v78 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32818);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v85 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  v17 = type metadata accessor for StackedTextViews(0);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v84 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v70 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060);
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v70 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32820);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v81 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  v88 = &v70 - v32;
  v33 = a1[7];
  v106 = v33;
  v82 = v16;
  if (v33 && (memcpy(v105, a1 + 8, 0xC3uLL), memcpy(v108, a1 + 8, 0xC3uLL), sub_1E3748B78(v108) != 1))
  {
    memcpy(v107, v108, 0xC3uLL);
    sub_1E3294EE4(&v106, v89, &qword_1ECF2BB28);
    sub_1E3294EE4(v105, v89, &qword_1ECF28C28);
    sub_1E40EA03C(v33, v107, 0, 0, v27);
    sub_1E325F6F0(&v106, &qword_1ECF2BB28);
    sub_1E325F6F0(v105, &qword_1ECF28C28);
    (*(v24 + 32))(v88, v27, v22);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  __swift_storeEnumTagSinglePayload(v88, v34, 1, v22);
  v35 = a1[6];

  v36 = sub_1E4201D44();
  sub_1E403E8B0(v35, v36, v87);
  v37 = a1[3];
  if (v37)
  {

    sub_1E4203DA4();
    sub_1E4200D94();
    v74 = v98;
    v75 = v96;
    v72 = v101;
    v73 = v100;
    v95 = 1;
    v94 = v97;
    v93 = v99;
    v38 = a1[4];
    v76 = a2;
    if (v38)
    {
      _Q0 = *(v38 + 128);
      v71 = *(v38 + 144);
    }

    else
    {
      v71 = xmmword_1E429C0F0;
      __asm { FMOV            V0.2D, #2.0 }
    }

    v70 = _Q0;

    v45 = sub_1E4202734();
    v91 = 0;
    sub_1E4203DA4();
    OUTLINED_FUNCTION_14_8();
    sub_1E4200D94();
    *&v92[39] = v104;
    *&v92[23] = v103;
    *&v92[7] = v102;
    v90[0] = v37;
    v90[1] = v38;
    LOBYTE(v90[2]) = v45;
    *&v90[5] = v71;
    *&v90[3] = v70;
    LOBYTE(v90[7]) = 0;
    *(&v90[7] + 1) = *v92;
    *(&v90[9] + 1) = *&v92[16];
    *(&v90[11] + 1) = *&v92[32];
    v90[13] = *(&v104 + 1);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32830);
    v47 = sub_1E3AE3BE0();
    v48 = j__OUTLINED_FUNCTION_18();
    v49 = j__OUTLINED_FUNCTION_18();
    v50 = OUTLINED_FUNCTION_51_1();
    v51 = v86;
    sub_1E383F6D4(0, v48 & 1, 1, v49 & 1, v50 & 1, v46, v47);
    memcpy(v89, v90, 0x70uLL);
    sub_1E325F6F0(v89, &qword_1ECF32830);
    v52 = v95;
    LOBYTE(v46) = v94;
    v53 = v93;
    v54 = v77;
    v55 = *(v77 + 16);
    *&v71 = v37;
    v56 = v78;
    v57 = v80;
    v55(v78, v51, v80);
    v58 = v79;
    *v79 = 0;
    *(v58 + 8) = v52;
    v59 = v74;
    *(v58 + 16) = v75;
    *(v58 + 24) = v46;
    *(v58 + 32) = v59;
    *(v58 + 40) = v53;
    v60 = v72;
    *(v58 + 48) = v73;
    *(v58 + 56) = v60;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32850);
    v55(v58 + *(v61 + 48), v56, v57);

    v62 = *(v54 + 8);
    v62(v86, v57);
    v62(v56, v57);
    v40 = v82;
    sub_1E329E454(v58, v82, &qword_1ECF32808);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v83);
    a2 = v76;
  }

  else
  {
    v40 = v82;
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v83);
  }

  v63 = v81;
  sub_1E3294EE4(v88, v81, &qword_1ECF32820);
  v64 = v87;
  v65 = v84;
  sub_1E38F84AC(v87, v84);
  v66 = v85;
  sub_1E3294EE4(v40, v85, &qword_1ECF32818);
  sub_1E3294EE4(v63, a2, &qword_1ECF32820);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32828);
  OUTLINED_FUNCTION_11_82(v67[12]);
  sub_1E38F84AC(v65, a2 + *(v68 + 64));
  sub_1E3294EE4(v66, a2 + v67[20], &qword_1ECF32818);
  OUTLINED_FUNCTION_11_82(v67[24]);
  sub_1E325F6F0(v40, &qword_1ECF32818);
  sub_1E38F8510(v64);
  sub_1E325F6F0(v88, &qword_1ECF32820);
  sub_1E325F6F0(v66, &qword_1ECF32818);
  sub_1E38F8510(v65);
  return sub_1E325F6F0(v63, &qword_1ECF32820);
}

void *sub_1E3AE3500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AttributionTextViewUIKit();
  v5 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xD0))(a2, a3);
  LODWORD(v6) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v5 setContentHuggingPriority:1 forAxis:v7];
  return v5;
}

uint64_t sub_1E3AE3628(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3AE3B8C();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E3AE3674()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3AE3B8C();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E3AE3748()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3AE398C();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E3AE379C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3AE398C();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3AE37F0()
{
  sub_1E3AE398C();
  sub_1E4201F04();
  __break(1u);
}

void *sub_1E3AE3818(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32858);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32860);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E3AE3964(uint64_t a1)
{
  result = sub_1E3AE398C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3AE398C()
{
  result = qword_1ECF327C8;
  if (!qword_1ECF327C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF327C8);
  }

  return result;
}

unint64_t sub_1E3AE39E4()
{
  result = qword_1ECF327D0;
  if (!qword_1ECF327D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF327D0);
  }

  return result;
}

uint64_t sub_1E3AE3A40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 259))
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

uint64_t sub_1E3AE3A80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *(result + 258) = 0;
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 259) = 1;
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

    *(result + 259) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3AE3B28()
{
  result = qword_1ECF327D8;
  if (!qword_1ECF327D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF327E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF327D8);
  }

  return result;
}

unint64_t sub_1E3AE3B8C()
{
  result = qword_1ECF327E8;
  if (!qword_1ECF327E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF327E8);
  }

  return result;
}

unint64_t sub_1E3AE3BE0()
{
  result = qword_1ECF32838;
  if (!qword_1ECF32838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32830);
    sub_1E3AE3C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32838);
  }

  return result;
}

unint64_t sub_1E3AE3C6C()
{
  result = qword_1ECF32840;
  if (!qword_1ECF32840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32848);
    sub_1E3AE39E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32840);
  }

  return result;
}

uint64_t sub_1E3AE3D18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4201A54();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3AE3D48@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for PlaybackPersonView(0);
  v7 = *(v6 + 28);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + *(v6 + 32);
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  *a3 = a1;
  memcpy(a3 + 1, a2, 0xC3uLL);
  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 392);

  v12 = v10(v11);

  if (!v12)
  {
    goto LABEL_4;
  }

  if (*v12 != _TtC8VideosUI24PlaybackPersonViewLayout)
  {

LABEL_4:
    type metadata accessor for PlaybackPersonViewLayout();
    sub_1E3915434(1, 204);
  }

  type metadata accessor for PlaybackPersonViewLayout();
  OUTLINED_FUNCTION_12_77();
  sub_1E3AEBB84(v13, v14);
  result = sub_1E42010C4();
  a3[26] = result;
  a3[27] = v16;
  return result;
}

void sub_1E3AE3EDC()
{
  OUTLINED_FUNCTION_31_1();
  v31 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v30 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v29 = v7 - v6;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v27 = v9;
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v26 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32868);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32870);
  OUTLINED_FUNCTION_0_10();
  v24 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_74_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32878);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  sub_1E3AE43C4();
  v19 = *sub_1E37BD068();
  v20 = (*(v19 + 1712))();

  if (v20 == 13)
  {
    v21 = sub_1E42012F4();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v21);
  }

  else
  {
    sub_1E3B033CC(v20, v1);
  }

  sub_1E3B03114(v1, v2);
  sub_1E325F6F0(v1, &qword_1ECF2A250);
  sub_1E3AE4D2C();
  sub_1E32752B0(&qword_1EE23ACD8, &qword_1ECF2A1F8);
  sub_1E4202FA4();
  sub_1E325F6F0(v2, &qword_1ECF2A1F8);
  sub_1E325F6F0(v3, &qword_1ECF32868);
  sub_1E4202474();
  swift_getOpaqueTypeConformance2();
  sub_1E4203224();
  (*(v27 + 8))(v26, v28);
  (*(v24 + 8))(v0, v25);
  sub_1E4201C94();
  swift_getOpaqueTypeConformance2();
  sub_1E4203294();
  (*(v30 + 8))(v29, v31);
  v22 = OUTLINED_FUNCTION_8_6();
  v23(v22);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AE43C4()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v0;
  v102 = v5;
  sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v87 = v7;
  v88 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v85 = v9 - v8;
  v101 = type metadata accessor for PlaybackPersonListView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF329B8);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_4();
  v84 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF329A0));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_2();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32998);
  OUTLINED_FUNCTION_0_10();
  v86 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AF0);
  OUTLINED_FUNCTION_0_10();
  v91 = v22;
  v92 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v90 = v24;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32988);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v89 = v26;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32980);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v93 = v28;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v100 = v30;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_26_2();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32890);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v94 = v33;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v81 - v35;
  v37 = v4[27];
  v38 = OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType;
  OUTLINED_FUNCTION_5_0();
  if (!*(v37 + v38))
  {
    sub_1E3AE5A68();
    sub_1E3743538(v36, v1, &qword_1ECF328A0);
    swift_storeEnumTagMultiPayload();
    sub_1E3AE4E44();
    sub_1E3AE56B0();
    OUTLINED_FUNCTION_68_14();
    sub_1E4201F44();
    sub_1E3743538(v37, v100, &qword_1ECF32890);
    swift_storeEnumTagMultiPayload();
    sub_1E3AE4DB8();
    sub_1E3AE59D8();
    sub_1E4201F44();
    v50 = OUTLINED_FUNCTION_134_0();
    sub_1E325F6F0(v50, v51);
    v52 = v36;
    v53 = &qword_1ECF328A0;
LABEL_11:
    sub_1E325F6F0(v52, v53);
    goto LABEL_12;
  }

  if (*(v37 + v38) == 1)
  {
    *v2 = sub_1E4201B84();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B08);
    sub_1E3AE6C1C(v4, v39, v40, v41, v42, v43, v44, v45, v81, v82, v83, *&v84, v85, v86, v87, v88, v89, v90, v91, v92);
    (*(*v37 + 176))(&v103);
    if (v107)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v48.n128_u64[0] = v105;
      v49.n128_u64[0] = v106;
      v46.n128_u64[0] = v103;
      v47.n128_u64[0] = v104;
      j_nullsub_1(v46, v47, v48, v49);
    }

    OUTLINED_FUNCTION_3();
    v60 = v82;
    sub_1E4202734();
    sub_1E3741EA0(v2, v3, &qword_1ECF329B8);
    v61 = v84;
    OUTLINED_FUNCTION_7_3(v3 + *(*&v84 + 36));
    v62 = sub_1E3AE5920();
    v63 = OUTLINED_FUNCTION_99_0();
    sub_1E3883AF4(v63);
    sub_1E325F6F0(v3, &qword_1ECF329A0);
    v64 = sub_1E3AE7790();
    v108[0] = v61;
    *&v108[1] = v62;
    OUTLINED_FUNCTION_11_83();
    swift_getOpaqueTypeConformance2();
    v65 = v90;
    sub_1E39B87A4(v64);

    v66 = (*(v86 + 8))(v20, v60);
    (*(*v37 + 552))(v108, v66);
    v67 = 0.0;
    if ((LOBYTE(v108[4]) & 1) == 0)
    {
      v67 = sub_1E3952BE8(v108[0], v108[1], v108[2], v108[3]);
    }

    v68 = v89;
    v69 = (v89 + *(v83 + 36));
    v70 = *(sub_1E4201534() + 20);
    v71 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v72 + 104))(v69 + v70, v71);
    *v69 = v67;
    v69[1] = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0);
    OUTLINED_FUNCTION_81_8();
    *(v69 + v73) = v74;
    (*(v91 + 32))(v68, v65, v92);
    v75 = v93;
    sub_1E3AE7860(v37);
    sub_1E325F6F0(v68, &qword_1ECF32988);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v76, v77, v78);
    swift_storeEnumTagMultiPayload();
    sub_1E3AE4E44();
    sub_1E3AE56B0();
    OUTLINED_FUNCTION_68_14();
    sub_1E4201F44();
    sub_1E3743538(v37, v100, &qword_1ECF32890);
    swift_storeEnumTagMultiPayload();
    sub_1E3AE4DB8();
    sub_1E3AE59D8();
    sub_1E4201F44();
    v79 = OUTLINED_FUNCTION_134_0();
    sub_1E325F6F0(v79, v80);
    v52 = v75;
    v53 = &qword_1ECF32980;
    goto LABEL_11;
  }

  v54 = *v4;
  memcpy(v108, v4 + 1, 0xC3uLL);
  v55 = *(v101 + 28);
  *(v13 + v55) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *v13 = v54;
  memcpy(v13 + 1, v108, 0xC3uLL);
  type metadata accessor for ContextMenuModel();
  swift_retain_n();
  sub_1E375C1CC(v108, &v103);
  v56 = sub_1E3E6CDBC();
  v58 = *v56;
  v57 = v56[1];
  v103 = v58;
  v104 = v57;

  v59 = v85;
  sub_1E4207414();
  (*(v87 + 104))(v59, *MEMORY[0x1E697E660], v88);
  v13[26] = sub_1E4188148(v54, v59);
  sub_1E3AEBEE4(v13, v100, type metadata accessor for PlaybackPersonListView);
  swift_storeEnumTagMultiPayload();
  sub_1E3AE4DB8();
  sub_1E3AE59D8();
  sub_1E4201F44();
  sub_1E3AEBBCC(v13, type metadata accessor for PlaybackPersonListView);
LABEL_12:
  OUTLINED_FUNCTION_10_3();
}

unint64_t sub_1E3AE4D2C()
{
  result = qword_1ECF32880;
  if (!qword_1ECF32880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32868);
    sub_1E3AE4DB8();
    sub_1E3AE59D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32880);
  }

  return result;
}

unint64_t sub_1E3AE4DB8()
{
  result = qword_1ECF32888;
  if (!qword_1ECF32888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32890);
    sub_1E3AE4E44();
    sub_1E3AE56B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32888);
  }

  return result;
}

unint64_t sub_1E3AE4E44()
{
  result = qword_1ECF32898;
  if (!qword_1ECF32898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328A0);
    sub_1E3AE4EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32898);
  }

  return result;
}

unint64_t sub_1E3AE4EC8()
{
  result = qword_1ECF328A8;
  if (!qword_1ECF328A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328B0);
    sub_1E3AE4F54();
    sub_1E3AE54C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF328A8);
  }

  return result;
}

unint64_t sub_1E3AE4F54()
{
  result = qword_1ECF328B8;
  if (!qword_1ECF328B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328C0);
    sub_1E3AE500C();
    sub_1E32752B0(&qword_1ECF32930, &qword_1ECF32938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF328B8);
  }

  return result;
}

unint64_t sub_1E3AE500C()
{
  result = qword_1ECF328C8;
  if (!qword_1ECF328C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328D8);
    sub_1E3AE510C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328F0);
    sub_1E3AE5198();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF328C8);
  }

  return result;
}

unint64_t sub_1E3AE510C()
{
  result = qword_1ECF328E0;
  if (!qword_1ECF328E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328D8);
    sub_1E3AE5198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF328E0);
  }

  return result;
}

unint64_t sub_1E3AE5198()
{
  result = qword_1ECF328E8;
  if (!qword_1ECF328E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328F8);
    sub_1E4201534();
    sub_1E3AE52D0();
    sub_1E3AEBB84(&qword_1EE2893F8, MEMORY[0x1E697EAF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF328E8);
  }

  return result;
}

unint64_t sub_1E3AE52D0()
{
  result = qword_1ECF32900;
  if (!qword_1ECF32900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32908);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32910);
    sub_1E3AE5408();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32900);
  }

  return result;
}

unint64_t sub_1E3AE5408()
{
  result = qword_1ECF32918;
  if (!qword_1ECF32918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32910);
    sub_1E32752B0(&qword_1ECF32920, &qword_1ECF32928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32918);
  }

  return result;
}

unint64_t sub_1E3AE54C0()
{
  result = qword_1ECF32940;
  if (!qword_1ECF32940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32958);
    sub_1E3AE55F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32940);
  }

  return result;
}

unint64_t sub_1E3AE55F8()
{
  result = qword_1ECF32960;
  if (!qword_1ECF32960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32958);
    sub_1E32752B0(&qword_1ECF32968, &qword_1ECF32970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32960);
  }

  return result;
}

unint64_t sub_1E3AE56B0()
{
  result = qword_1ECF32978;
  if (!qword_1ECF32978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32988);
    sub_1E4201534();
    sub_1E3AE57E8();
    sub_1E3AEBB84(&qword_1EE2893F8, MEMORY[0x1E697EAF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32978);
  }

  return result;
}

unint64_t sub_1E3AE57E8()
{
  result = qword_1ECF32990;
  if (!qword_1ECF32990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32998);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF329A0);
    sub_1E3AE5920();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32990);
  }

  return result;
}

unint64_t sub_1E3AE5920()
{
  result = qword_1ECF329A8;
  if (!qword_1ECF329A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF329A0);
    sub_1E32752B0(&qword_1ECF329B0, &qword_1ECF329B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF329A8);
  }

  return result;
}

unint64_t sub_1E3AE59D8()
{
  result = qword_1ECF559E0[0];
  if (!qword_1ECF559E0[0])
  {
    type metadata accessor for PlaybackPersonListView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF559E0);
  }

  return result;
}

void sub_1E3AE5A68()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32948);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32938);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v69 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v74 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v73 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_74_1();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B20);
  OUTLINED_FUNCTION_0_10();
  v68 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v67 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v71 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_31_2();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B30);
  OUTLINED_FUNCTION_0_10();
  v66 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v25 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = v30 - v29;
  type metadata accessor for PlaybackPersonView(0);
  sub_1E3746E10(v31);
  v32 = sub_1E42012B4();
  v33 = (*(v27 + 8))(v31, v25);
  v34 = *(v4 + 216);
  if (v32)
  {
    OUTLINED_FUNCTION_5_0();
    if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
    {
      *v69 = sub_1E4201D44();
      *(v69 + 8) = 0;
      *(v69 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B38);
      sub_1E3AE84F0();
      OUTLINED_FUNCTION_12_12();
      sub_1E3743538(v35, v36, v37);
      swift_storeEnumTagMultiPayload();
      sub_1E3AE500C();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_21_1();
      sub_1E32752B0(v38, v39);
      sub_1E4201F44();
      sub_1E3743538(v73, v74, &qword_1ECF328C0);
      swift_storeEnumTagMultiPayload();
      sub_1E3AE4F54();
      sub_1E3AE54C0();
      sub_1E4201F44();
      sub_1E325F6F0(v73, &qword_1ECF328C0);
    }

    else
    {
      sub_1E3AE67E0();
      OUTLINED_FUNCTION_12_12();
      sub_1E3743538(v61, v62, v63);
      swift_storeEnumTagMultiPayload();
      sub_1E3AE4F54();
      sub_1E3AE54C0();
      sub_1E4201F44();
    }
  }

  else
  {
    v40 = (*(*v34 + 432))(v33);
    if (v41)
    {
      sub_1E3AE63D4();
      v42 = sub_1E3AE5198();
      OUTLINED_FUNCTION_142();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_142();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_142();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_142();
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_85_7();
      sub_1E383F6D4(v34, v43, v44, v45, v46, v20, v42);
      sub_1E325F6F0(v2, &qword_1ECF328F0);
      v47 = OUTLINED_FUNCTION_53();
      v48(v47);
      swift_storeEnumTagMultiPayload();
      sub_1E3AE510C();
      swift_getOpaqueTypeConformance2();
      swift_getOpaqueTypeConformance2();
      sub_1E4201F44();
      (*(v66 + 8))(v1, v70);
    }

    else
    {
      v49 = v40;
      sub_1E3AE63D4();
      v50 = v0 + *(v13 + 36);
      *v50 = v49;
      *(v50 + 8) = 256;
      v51 = sub_1E3AE510C();
      OUTLINED_FUNCTION_34();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_34();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_34();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_85_7();
      sub_1E383F6D4(v34, v52, v53, v54, v55, v13, v51);
      sub_1E325F6F0(v0, &qword_1ECF328D8);
      (*(v68 + 16))(v71, v67, v72);
      swift_storeEnumTagMultiPayload();
      swift_getOpaqueTypeConformance2();
      sub_1E3AE5198();
      swift_getOpaqueTypeConformance2();
      sub_1E4201F44();
      (*(v68 + 8))(v67, v72);
    }

    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v56, v57, v58);
    swift_storeEnumTagMultiPayload();
    sub_1E3AE500C();
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v59, v60);
    sub_1E4201F44();
    sub_1E3743538(v73, v74, &qword_1ECF328C0);
    swift_storeEnumTagMultiPayload();
    sub_1E3AE4F54();
    sub_1E3AE54C0();
    sub_1E4201F44();
    sub_1E325F6F0(v73, &qword_1ECF328C0);
  }

  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v64, v65);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AE63D4()
{
  OUTLINED_FUNCTION_9_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32928);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32910);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32908);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_74_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BA8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_4();
  v36 = sub_1E3AE7790();
  *v4 = sub_1E4201D44();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BB0);
  sub_1E3AE8020();
  v15 = *(v1 + 216);
  (*(*v15 + 176))(v37);
  if (v38)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v18.n128_u64[0] = v37[2];
    v19.n128_u64[0] = v37[3];
    v16.n128_u64[0] = v37[0];
    v17.n128_u64[0] = v37[1];
    j_nullsub_1(v16, v17, v18, v19);
  }

  OUTLINED_FUNCTION_3();
  sub_1E4202734();
  v20 = OUTLINED_FUNCTION_8_6();
  sub_1E3741EA0(v20, v21, v22);
  OUTLINED_FUNCTION_7_3(v2 + *(v7 + 36));
  v23 = sub_1E3AE5408();
  v24 = OUTLINED_FUNCTION_99_0();
  sub_1E3883AF4(v24);
  sub_1E325F6F0(v2, &qword_1ECF32910);
  v39 = *&v7;
  *&v40 = v23;
  OUTLINED_FUNCTION_11_83();
  swift_getOpaqueTypeConformance2();
  sub_1E39B87A4(v36);
  v25 = (*(v11 + 8))(v0, v9);
  (*(*v15 + 552))(&v39, v25);
  v26 = 0.0;
  if ((v43 & 1) == 0)
  {
    v26 = sub_1E3952BE8(v39, v40, v41, v42);
  }

  v27 = (v3 + *(v35 + 36));
  v28 = *(sub_1E4201534() + 20);
  v29 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v30 + 104))(v27 + v28, v29);
  *v27 = v26;
  v27[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0);
  OUTLINED_FUNCTION_81_8();
  *(v27 + v31) = v32;
  v33 = OUTLINED_FUNCTION_53();
  v34(v33);
  sub_1E3AE7C40(v15);

  sub_1E325F6F0(v3, &qword_1ECF328F8);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3AE67E0()
{
  OUTLINED_FUNCTION_9_4();
  v35 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32970);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32958);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32950);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B88);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_2();
  *v4 = sub_1E4201B84();
  *(v4 + 8) = 0x4028000000000000;
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B90);
  sub_1E3AE822C();
  v17 = *(v0 + 216);
  (*(*v17 + 176))(v36);
  if (v37)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v20.n128_u64[0] = v36[2];
    v21.n128_u64[0] = v36[3];
    v18.n128_u64[0] = v36[0];
    v19.n128_u64[0] = v36[1];
    j_nullsub_1(v18, v19, v20, v21);
  }

  OUTLINED_FUNCTION_3();
  sub_1E4202734();
  sub_1E3741EA0(v4, v3, &qword_1ECF32970);
  OUTLINED_FUNCTION_7_3(v3 + *(v8 + 36));
  v22 = sub_1E3AE55F8();
  sub_1E3883AF4(v17);
  v23 = sub_1E325F6F0(v3, &qword_1ECF32958);
  if ((*(*v17 + 792))(v23) == 11)
  {
    v24 = (*(*v17 + 744))();
  }

  else
  {
    v24 = 0;
  }

  v38 = *&v8;
  *&v39 = v22;
  OUTLINED_FUNCTION_11_83();
  swift_getOpaqueTypeConformance2();
  v25 = OUTLINED_FUNCTION_157_0();
  sub_1E39B87A4(v25);

  v26 = (*(v12 + 8))(v2, v10);
  (*(*v17 + 552))(&v38, v26);
  v27 = 0.0;
  if ((v42 & 1) == 0)
  {
    v27 = sub_1E3952BE8(v38, v39, v40, v41);
  }

  v28 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32948) + 36));
  v29 = *(sub_1E4201534() + 20);
  v30 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v31 + 104))(v28 + v29, v30);
  *v28 = v27;
  v28[1] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0);
  OUTLINED_FUNCTION_81_8();
  *(v28 + v32) = v33;
  (*(v15 + 32))(v35, v1, v34);
  OUTLINED_FUNCTION_10_3();
}
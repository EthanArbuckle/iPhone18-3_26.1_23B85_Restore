void sub_1DADE3FD4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
  v2 = *&v0[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v2)
  {
    v3 = v0;
    v4 = qword_1EE005E48;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v20 = v5;
    v7 = v3;
    v8 = sub_1DAECEDCC();
    v9 = sub_1DAED203C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136446210;
      v12 = *&v3[v1];
      if (v12)
      {
        v13 = (v12 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v15 = *v13;
        v14 = v13[1];
      }

      else
      {
        v16 = *&v20[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];
        v15 = sub_1DAD8CE78(v16);
        v14 = v17;
      }

      v18 = sub_1DAD6482C(v15, v14, &v21);

      *(v10 + 4) = v18;
      _os_log_impl(&dword_1DAD61000, v8, v9, "[%{public}s] User interacted - attempted to reload content.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E127F100](v11, -1, -1);
      MEMORY[0x1E127F100](v10, -1, -1);
    }

    if (*&v7[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession])
    {
      v19 = *&v7[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_widgetRendererSession];

      sub_1DADD4E5C(1);
    }
  }
}

uint64_t sub_1DADE41FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_confirmationActionSubscribers;
  swift_beginAccess();
  v21 = v2;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + v2);
    }

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAD8E1BC(&qword_1EE005C50, MEMORY[0x1E695BF10]);
    result = sub_1DAED1F9C();
    v7 = v23;
    v6 = v24;
    v8 = v25;
    v9 = v26;
    v10 = v27;
  }

  else
  {
    v11 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v3 + 56);
    result = swift_bridgeObjectRetain_n();
    v9 = 0;
    v7 = v3;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_20:
      sub_1DAD70B20();

      v20 = *(v1 + v21);
      *(v1 + v21) = MEMORY[0x1E69E7CD0];
    }

    while (1)
    {
      sub_1DAECEE2C();

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_1DAED24BC())
      {
        sub_1DAECEE3C();
        swift_dynamicCast();
        v17 = v9;
        v18 = v10;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_20;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1DADE4448(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v126 = sub_1DAECED2C();
  v128 = *(v126 - 8);
  v9 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v108[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08330, &unk_1DAED6540);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v129 = &v108[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v108[-v15];
  v16 = sub_1DAED18CC();
  v131 = *(v16 - 8);
  v132 = v16;
  v17 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v124 = &v108[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1DAECDA5C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v108[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  v24 = *(*(v130 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v130);
  v27 = &v108[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x1EEE9AC00](v25);
  v123 = &v108[-v29];
  MEMORY[0x1EEE9AC00](v28);
  v133 = &v108[-v30];
  v31 = BSDispatchQueueAssertMain();
  v32 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
  if (v32 && (v33 = *&v32[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController]) != 0)
  {
    v118 = a1;
    v119 = a2;
    v121 = a4;
    v34 = v33[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_shouldVisibleEntrySnapshot];
    v35 = qword_1EE005E48;
    v36 = v32;
    v122 = v33;
    if (v34 == 1)
    {
      v111 = v4;
      if (v35 != -1)
      {
        swift_once();
      }

      v37 = sub_1DAECEDEC();
      __swift_project_value_buffer(v37, qword_1EE011748);
      v38 = v36;
      v39 = sub_1DAECEDCC();
      v40 = sub_1DAED203C();

      v41 = os_log_type_enabled(v39, v40);
      v116 = v38;
      v110 = a3;
      if (v41)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v134 = v43;
        *v42 = 136446210;
        v44 = *&v38[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
        v45 = *&v38[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

        v46 = sub_1DAD6482C(v44, v45, &v134);
        v38 = v116;

        *(v42 + 4) = v46;
        _os_log_impl(&dword_1DAD61000, v39, v40, "[%{public}s] Snapshot", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x1E127F100](v43, -1, -1);
        MEMORY[0x1E127F100](v42, -1, -1);
      }

      v47 = v133;
      sub_1DADC8A98(v133);
      v48 = [objc_allocWithZone(MEMORY[0x1E6994300]) init];
      v49 = *(v47 + 1);
      [v48 setColorScheme_];
      [v48 setAllowsPrivacySensitiveContent_];
      [v48 setUserWantsWidgetDataWhenPasscodeLocked_];
      v50 = [*&v38[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene] additionalSnapshotPresentationContext];
      [v48 setAdditionalSettingsContext_];

      v51 = [v49 tintParameters];
      v52 = v48;
      [v48 setTintParameters_];

      v53 = [v49 idealizedDateComponents];
      v54 = v131;
      v115 = v27;
      if (v53)
      {
        v55 = v53;
        sub_1DAECDA4C();

        v56 = sub_1DAECDA3C();
        (*(v20 + 8))(v23, v19);
      }

      else
      {
        v56 = 0;
      }

      v68 = v52;
      [v52 setIdealizedDateComponents_];

      v69 = v133;
      v120 = *v133;
      v70 = *(v133 + 3);
      v113 = *(v133 + 2);
      v71 = v130;
      v72 = *(v130 + 36);
      v112 = *(v54 + 16);
      v73 = v124;
      v74 = v132;
      v112(v124, &v133[v72], v132);
      v76 = v127;
      v75 = v128;
      v77 = v126;
      (*(v128 + 16))(v127, &v69[v71[10]], v126);
      (*(v75 + 56))(v76, 0, 1, v77);
      v78 = &v69[v71[11]];
      v117 = *v78;
      v109 = v78[8];
      v79 = v115;
      *v115 = v120;
      *(v79 + 1) = v68;
      v114 = v68;
      *(v79 + 2) = v113;
      *(v79 + 3) = v70;
      v113 = v70;
      v80 = v71[9];
      v81 = v73;
      v112(&v79[v80], v73, v74);
      v82 = v129;
      sub_1DAD6495C(v76, v129, &qword_1ECC08330, &unk_1DAED6540);
      v83 = *(v75 + 48);
      if (v83(v82, 1, v77) != 1)
      {
        v95 = v117;
        v96 = v117;
        v97 = v120;
        v86 = v114;
        v98 = v114;

        sub_1DAD64398(v76, &qword_1ECC08330, &unk_1DAED6540);
        (*(v131 + 8))(v81, v132);
        v90 = v125;
        (*(v75 + 32))(v125, v82, v77);
        goto LABEL_29;
      }

      sub_1DAED298C();
      v84 = v117;
      v85 = v120;
      v86 = v114;
      v87 = v114;

      sub_1DAED229C();

      v88 = v129;
      v89 = sub_1DAED296C();
      v90 = v125;
      v91 = v132;
      if (v89 < 0)
      {
        v92 = __OFSUB__(0, v89);
        v93 = -v89;
        if (!v92)
        {
          if ((v93 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_26:
      sub_1DAECED3C();
      sub_1DAD64398(v127, &qword_1ECC08330, &unk_1DAED6540);
      (*(v131 + 8))(v81, v91);
      v94 = v83(v88, 1, v77);
      v75 = v128;
      v95 = v117;
      if (v94 != 1)
      {
        sub_1DAD64398(v88, &qword_1ECC08330, &unk_1DAED6540);
      }

LABEL_29:
      v99 = v130;
      (*(v75 + 32))(&v79[*(v130 + 40)], v90, v77);
      v100 = &v79[*(v99 + 44)];
      *v100 = v95;
      v100[8] = v109;
      v101 = v123;
      sub_1DADCA3D0(v79, v123);
      v102 = v110;
      if (*(v111 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_layerSnapshotter))
      {
        v103 = swift_allocObject();
        v104 = v116;
        v103[2] = v116;
        v103[3] = v102;
        v105 = v118;
        v103[4] = v121;
        v103[5] = v105;
        v106 = v104;

        sub_1DADCA8EC(v102);
        v107 = v105;
        sub_1DADCA440(v101, v119, sub_1DADE6290, v103);

        sub_1DAD64398(v101, &qword_1ECC08338, &unk_1DAEDB980);
        sub_1DAD64398(v133, &qword_1ECC08338, &unk_1DAEDB980);
        return;
      }

LABEL_34:
      __break(1u);
      return;
    }

    if (v35 != -1)
    {
      swift_once();
    }

    v57 = sub_1DAECEDEC();
    __swift_project_value_buffer(v57, qword_1EE011748);
    v58 = v36;
    v59 = sub_1DAECEDCC();
    v60 = sub_1DAED203C();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v134 = v62;
      *v61 = 136446210;
      v63 = a3;
      v64 = *&v58[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v65 = *&v58[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v66 = sub_1DAD6482C(v64, v65, &v134);
      a3 = v63;

      *(v61 + 4) = v66;
      _os_log_impl(&dword_1DAD61000, v59, v60, "[%{public}s] Current entry isn't snapshottable.", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x1E127F100](v62, -1, -1);
      MEMORY[0x1E127F100](v61, -1, -1);
    }

    if (a3)
    {
      a3();
    }

    v67 = v122;
  }

  else if (a3)
  {
    (a3)(v31);
  }
}

void sub_1DADE5034(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a4;
  v9 = sub_1DAED09DC();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1DAED0A3C();
  v44 = *(v46 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v17 = sub_1DAECEDEC();
  __swift_project_value_buffer(v17, qword_1EE011748);
  v18 = a2;
  sub_1DADE629C(v14, v15, v16);
  v19 = sub_1DAECEDCC();
  v20 = sub_1DAED203C();

  sub_1DADE62C4(v14, v15, v16);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = a5;
    v22 = v21;
    v23 = swift_slowAlloc();
    v50 = v23;
    *v22 = 136446466;
    v24 = *&v18[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
    v25 = *&v18[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

    v26 = sub_1DAD6482C(v24, v25, &v50);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    aBlock = v14;
    v52 = v15;
    LOBYTE(v53) = v16;
    sub_1DADE629C(v14, v15, v16);
    v27 = LayerSnapshotter.Result.description.getter();
    v29 = v28;
    sub_1DADE62C4(aBlock, v52, v53);
    v30 = sub_1DAD6482C(v27, v29, &v50);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_1DAD61000, v19, v20, "[%{public}s] Snapshot finished %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v23, -1, -1);
    v31 = v22;
    a5 = v42;
    MEMORY[0x1E127F100](v31, -1, -1);
  }

  if (a3)
  {
    sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v32 = a3;
    v33 = v49;

    v42 = sub_1DAED20EC();
    v34 = swift_allocObject();
    *(v34 + 16) = v14;
    *(v34 + 24) = v15;
    *(v34 + 32) = v16;
    *(v34 + 40) = a5;
    *(v34 + 48) = v32;
    *(v34 + 56) = v33;
    v55 = sub_1DADE62EC;
    v56 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1DAD751C0;
    v54 = &block_descriptor_1;
    v35 = _Block_copy(&aBlock);
    sub_1DADE629C(v14, v15, v16);
    sub_1DADCA8EC(v32);
    v36 = a5;

    v37 = v43;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1DAD8E1BC(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
    v38 = v45;
    v39 = v48;
    sub_1DAED23CC();
    v40 = v42;
    MEMORY[0x1E127DD70](0, v37, v38, v35);
    _Block_release(v35);

    sub_1DAD660D8(v32);
    (*(v47 + 8))(v38, v39);
    (*(v44 + 8))(v37, v46);
  }
}

uint64_t sub_1DADE5560(int a1, int a2, char a3, id a4, uint64_t (*a5)(void))
{
  if (a3 == 1)
  {
    v6 = [a4 _FBSScene];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAED64D0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69944F0]) init];
    sub_1DAE89EF8(inited);
    swift_setDeallocating();
    v8 = *(inited + 16);
    swift_arrayDestroy();
    sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
    sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
    v9 = sub_1DAED1F5C();

    [v6 sendActions_];
  }

  return a5();
}

void sub_1DADE56D0(char *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v79 = a3;
  v9 = sub_1DAECED2C();
  v80 = *(v9 - 8);
  v10 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1DAECEDEC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v71[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1DAECED6C();
  v77 = *(v18 - 8);
  v78 = v18;
  v19 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v71[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!*&a1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction])
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v13, qword_1EE011748);
  v23 = *(v14 + 16);
  v76 = v22;
  v23(v17);
  sub_1DAECED4C();
  v24 = a1;

  v25 = v12;
  sub_1DAECED1C();
  v26 = sub_1DAECED5C();
  v27 = sub_1DAED21BC();

  v28 = sub_1DAED230C();
  v75 = v5;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v73 = v25;
    v30 = v29;
    v31 = swift_slowAlloc();
    v81 = v31;
    *v30 = 136446466;
    v74 = v9;
    v72 = v27;
    v32 = *&v24[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
    v33 = *&v24[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

    v34 = sub_1DAD6482C(v32, v33, &v81);
    v35 = v79;

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_1DAD6482C(v35, a4, &v81);
    v36 = v73;
    v37 = sub_1DAECED0C();
    _os_signpost_emit_with_name_impl(&dword_1DAD61000, v26, v72, v37, "RebuildWidgetViewController", "identifier=%{public}s, reason=%{public}s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v31, -1, -1);
    MEMORY[0x1E127F100](v30, -1, -1);

    (*(v80 + 8))(v36, v74);
  }

  else
  {

    (*(v80 + 8))(v25, v9);
  }

  (*(v77 + 8))(v21, v78);
  v38 = v24;

  v39 = a2;
  v40 = sub_1DAECEDCC();
  v41 = sub_1DAED203C();

  v42 = &off_1E85EB000;
  if (!os_log_type_enabled(v40, v41))
  {

LABEL_11:
    v56 = [v39 widget];
    v57 = [v39 metrics];
    v58 = sub_1DAD810E0(v56, v57, v39);

    v59 = [v58 view];
    if (v59)
    {
      v60 = v59;
      v61 = [v39 _FBSScene];
      v62 = [v61 v42[430]];

      [v62 frame];
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;

      [v60 setFrame_];
      return;
    }

    goto LABEL_14;
  }

  v43 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  v81 = v44;
  *v43 = 136446722;
  v45 = &v38[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
  v46 = *&v38[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
  v47 = *(v45 + 1);

  v48 = sub_1DAD6482C(v46, v47, &v81);

  *(v43 + 4) = v48;
  *(v43 + 12) = 2082;
  *(v43 + 14) = sub_1DAD6482C(v79, a4, &v81);
  *(v43 + 22) = 2082;
  v49 = [v39 _FBSScene];
  v50 = [v49 settings];

  [v50 &_OBJC_LABEL_PROTOCOL___SBUISystemApertureElement];
  v51 = BSNSStringFromCGSize();

  if (v51)
  {
    v52 = sub_1DAED1CEC();
    v54 = v53;

    v55 = sub_1DAD6482C(v52, v54, &v81);

    *(v43 + 24) = v55;
    _os_log_impl(&dword_1DAD61000, v40, v41, "[%{public}s] Rebuild view controller for reason: %{public}s - size: %{public}s", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v44, -1, -1);
    MEMORY[0x1E127F100](v43, -1, -1);

    v42 = &off_1E85EB000;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_1DADE5DC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection) = 0;
}

uint64_t sub_1DADE5DD8(uint64_t a1)
{
  v3 = sub_1DAED1D3C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1DAECDBFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v1 + 32);
  v11 = *a1;
  v12 = v10;
  v13 = [v11 widget];
  v14 = [v11 metrics];
  v15 = [v12 URLForWidget:v13 metrics:v14 attributes:*(a1 + 8) createIntermediateDirectories:0];

  sub_1DAECDBBC();
  v16 = *(a1 + 24);
  if (!v16)
  {
    goto LABEL_3;
  }

  v17 = *(a1 + 16);
  sub_1DADBCF28();
  sub_1DAECDB4C();
  v20 = v26[1];
  v21 = v26[2];
  sub_1DAED1D2C();
  v22 = sub_1DAED1D0C();
  v24 = v23;
  sub_1DAD70BB4(v20, v21);
  if (v24)
  {
    if (v22 == v17 && v24 == v16)
    {

      v18 = 0;
    }

    else
    {
      v25 = sub_1DAED289C();

      v18 = v25 ^ 1;
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
LABEL_3:
    (*(v6 + 8))(v9, v5);
    v18 = 1;
  }

  return v18 & 1;
}

uint64_t sub_1DADE608C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DADE615C()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  sub_1DADE2B7C(0xD000000000000031, 0x80000001DAEE0E10);
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v2 = sub_1DAECE19C();

  if ((v2 & 1) == 0)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window;
  v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window);
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = [v4 backgroundColor];
  v6 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_originalBackgroundColor);
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_originalBackgroundColor) = v5;

  v7 = *(v1 + v3);
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 systemDarkOrangeColor];
  [v9 setBackgroundColor_];
}

id sub_1DADE629C(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
    return result;
  }

  return result;
}

void sub_1DADE62C4(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 <= 1u)
  {
  }
}

void sub_1DADE6314()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DADE3CD8();
}

unint64_t sub_1DADE6330()
{
  result = qword_1EE0056A8;
  if (!qword_1EE0056A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0056A8);
  }

  return result;
}

uint64_t objectdestroy_148Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t objectdestroy_160Tm()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t objectdestroy_174Tm()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

char *sub_1DADE66B8()
{
  v1 = sub_1DAECEDEC();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CarPlayActivitySceneDelegate();
  v20.receiver = v0;
  v20.super_class = v6;
  v7 = objc_msgSendSuper2(&v20, sel_init);
  v8 = qword_1ECC079C8;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v1, qword_1ECC0DDC0);
  v11 = v2[2];
  v11(v5, v10, v1);
  v12 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v13 = v2[5];
  v13(&v9[v12], v5, v1);
  swift_endAccess();
  if (qword_1ECC079D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v1, qword_1ECC0DDD8);
  v11(v5, v14, v1);
  v15 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v13(&v9[v15], v5, v1);
  swift_endAccess();
  if (qword_1ECC07A00 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v1, qword_1ECC0DE38);
  v11(v5, v16, v1);
  v17 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v13(&v9[v17], v5, v1);
  swift_endAccess();

  return v9;
}

uint64_t sub_1DADE6A20(unint64_t a1)
{
  v3 = sub_1DAECEDEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v53 - v12;
  v13 = sub_1DAED182C();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_16:
    v48 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
    swift_beginAccess();
    (*(v4 + 16))(v8, v1 + v48, v3);
    v49 = sub_1DAECEDCC();
    v50 = sub_1DAED202C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v4;
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1DAD61000, v49, v50, "Cannot create root view without at least one view model", v52, 2u);
      MEMORY[0x1E127F100](v52, -1, -1);

      (*(v51 + 8))(v8, v3);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    return 0;
  }

  if (v18 < 0)
  {
    v47 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  }

  if (sub_1DAED247C() < 1)
  {
    goto LABEL_16;
  }

LABEL_3:
  v54 = v11;
  v56 = v1;
  v57 = v4;
  v19 = v14[13];
  v20 = v19(v17, *MEMORY[0x1E6985918], v13);
  MEMORY[0x1EEE9AC00](v20);
  *(&v53 - 2) = v17;
  v21 = a1;
  v22 = sub_1DADF6174(sub_1DADE8F04, (&v53 - 4), a1);
  v23 = v14[1];
  v23(v17, v13);
  v55 = v22;
  if (!v22)
  {
    swift_beginAccess();
    v42 = v57;
    v43 = v54;
    (*(v57 + 16))();
    v44 = sub_1DAECEDCC();
    v45 = sub_1DAED202C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DAD61000, v44, v45, "Cannot find a list item view model", v46, 2u);
      MEMORY[0x1E127F100](v46, -1, -1);
    }

    (*(v42 + 8))(v43, v3);
    return 0;
  }

  v54 = v3;
  *v17 = 1;
  v24 = *MEMORY[0x1E6985910];
  v25 = v19(v17, v24, v13);
  MEMORY[0x1EEE9AC00](v25);
  *(&v53 - 2) = v17;
  v26 = sub_1DADF6174(sub_1DADEA35C, (&v53 - 4), v21);
  v23(v17, v13);
  *v17 = 2;
  v27 = v19(v17, v24, v13);
  MEMORY[0x1EEE9AC00](v27);
  *(&v53 - 2) = v17;
  v28 = sub_1DADF6174(sub_1DADEA35C, (&v53 - 4), v21);
  v23(v17, v13);
  if (!v26 || !v28)
  {
    v29 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
    v30 = v56;
    swift_beginAccess();
    v31 = v57;
    v32 = v58;
    v33 = v30 + v29;
    v34 = v54;
    (*(v57 + 16))(v58, v33, v54);
    v35 = sub_1DAECEDCC();
    v36 = sub_1DAED202C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1DAD61000, v35, v36, "Unable to find leading or trailing view models", v37, 2u);
      MEMORY[0x1E127F100](v37, -1, -1);
    }

    (*(v31 + 8))(v32, v34);
  }

  v62 = 0;

  v38 = v55;

  sub_1DAED076C();
  v39 = v59;
  *&v59 = v38;
  *(&v59 + 1) = v26;
  v60 = v28;
  v61 = v39;
  sub_1DADE8F48();
  v40 = sub_1DAED087C();

  return v40;
}

id sub_1DADE70A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CarPlayActivitySceneDelegate()
{
  result = qword_1ECC084B0;
  if (!qword_1ECC084B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DADE7164@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = sub_1DAECDE4C();
  v94 = *(v3 - 8);
  v95 = v3;
  v4 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v92 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084E8, &qword_1DAED68C8);
  v6 = *(*(v102 - 1) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v97 = (v87 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E80, &qword_1DAED68D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v87 - v10;
  v12 = sub_1DAED1ABC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084F0, &qword_1DAED68D8);
  v17 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v100 = v87 - v18;
  v19 = sub_1DAED1B8C();
  v101 = *(v19 - 8);
  v20 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v98 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v96 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v93 = v87 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v87 - v28;
  v30 = type metadata accessor for ActivityView();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  if (sub_1DAE64458())
  {
    *&v104 = 0;
    sub_1DAED076C();
    *(v33 + 2) = v106;
    v35 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
    v36 = *(v30 + 28);
    v37 = sub_1DAECEDEC();
    (*(*(v37 - 8) + 16))(&v33[v36], v34 + v35, v37);
    type metadata accessor for ActivityViewModel();
    sub_1DADE9A50(&qword_1EE007808, type metadata accessor for ActivityViewModel);

    v38 = sub_1DAECF21C();
    v40 = v39;
    *v33 = v38;
    *(v33 + 1) = v39;
    *&v106 = sub_1DAED064C();
    *(v33 + 2) = sub_1DAED087C();
    *(v33 + 3) = 0;
    v41 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v40 + v41, v29, &unk_1ECC09E40, &qword_1DAED68E0);
    v42 = v101;
    if ((*(v101 + 48))(v29, 1, v19))
    {
      sub_1DAD64398(v29, &unk_1ECC09E40, &qword_1DAED68E0);
      v43 = *(v40 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
    }

    else
    {
      v49 = v98;
      (*(v42 + 16))(v98, v29, v19);
      sub_1DAD64398(v29, &unk_1ECC09E40, &qword_1DAED68E0);
      v43 = sub_1DAED1B5C();
      (*(v42 + 8))(v49, v19);
    }

    v48 = v103;

    *(v33 + 2) = v43;
    *(v33 + 3) = 0;
    sub_1DADE9A98(v33, v100);
    swift_storeEnumTagMultiPayload();
    sub_1DADE9A50(qword_1EE007DA0, type metadata accessor for ActivityView);
    sub_1DAD64B94(qword_1ECC08500, &qword_1ECC084E8, &qword_1DAED68C8);
    sub_1DAECFB1C();
    sub_1DADE9AFC(v33);
LABEL_11:
    v47 = 0;
    goto LABEL_12;
  }

  v91 = v30;
  v44 = a1[1];
  if (v44)
  {
    v45 = a1[2];
    if (v45)
    {
      (*(v13 + 16))(v16, v45 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_metricsDefinition, v12);

      sub_1DAED1A9C();
      (*(v13 + 8))(v16, v12);
      v46 = sub_1DAED19EC();
      if (!(*(*(v46 - 8) + 48))(v11, 1, v46))
      {
        v90 = v45;
        sub_1DAED19DC();
        v53 = v52;
        sub_1DAD64398(v11, &unk_1ECC09E80, &qword_1DAED68D0);
        v55 = v94;
        v54 = v95;
        v56 = v92;
        (*(v94 + 16))(v92, v44 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor, v95);
        v89 = sub_1DAECDE2C();
        v88 = v57;
        (*(v55 + 8))(v56, v54);
        v58 = v97 + v102[13];
        *&v104 = 0;

        sub_1DAED076C();
        *(v58 + 2) = v106;
        v59 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
        v60 = *(v91 + 28);
        v61 = sub_1DAECEDEC();
        v62 = *(v61 - 8);
        v94 = *(v62 + 16);
        v92 = (v62 + 16);
        (v94)(&v58[v60], v44 + v59, v61);
        v63 = type metadata accessor for ActivityViewModel();
        v64 = sub_1DADE9A50(&qword_1EE007808, type metadata accessor for ActivityViewModel);

        v95 = v44;
        v87[1] = v63;
        v87[0] = v64;
        v65 = sub_1DAECF21C();
        v67 = v66;
        *v58 = v65;
        *(v58 + 1) = v66;
        *&v106 = sub_1DAED064C();
        *(v58 + 2) = sub_1DAED087C();
        *(v58 + 3) = 0;
        v68 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
        swift_beginAccess();
        v69 = v93;
        sub_1DAD6495C(v67 + v68, v93, &unk_1ECC09E40, &qword_1DAED68E0);
        v70 = v101;
        v71 = *(v101 + 48);
        v72 = v19;
        if (v71(v69, 1, v19))
        {
          sub_1DAD64398(v69, &unk_1ECC09E40, &qword_1DAED68E0);
          v73 = *(v67 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
        }

        else
        {
          v74 = v98;
          (*(v70 + 16))(v98, v69, v72);
          sub_1DAD64398(v69, &unk_1ECC09E40, &qword_1DAED68E0);
          v73 = sub_1DAED1B5C();
          (*(v70 + 8))(v74, v72);
        }

        *(v58 + 2) = v73;
        *(v58 + 3) = 0;
        v75 = v97 + v102[14];
        v105 = 0;
        v76 = v90;

        sub_1DAED076C();
        *(v75 + 2) = v104;
        (v94)(&v75[*(v91 + 28)], v76 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v61);

        v77 = sub_1DAECF21C();
        v79 = v78;
        *v75 = v77;
        *(v75 + 1) = v78;
        *&v104 = sub_1DAED064C();
        *(v75 + 2) = sub_1DAED087C();
        *(v75 + 3) = 0;
        v80 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
        swift_beginAccess();
        v81 = v96;
        sub_1DAD6495C(v79 + v80, v96, &unk_1ECC09E40, &qword_1DAED68E0);
        if (v71(v81, 1, v72))
        {
          sub_1DAD64398(v81, &unk_1ECC09E40, &qword_1DAED68E0);
          v82 = *(v79 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
        }

        else
        {
          v83 = v101;
          v84 = v98;
          (*(v101 + 16))(v98, v81, v72);
          sub_1DAD64398(v81, &unk_1ECC09E40, &qword_1DAED68E0);
          v82 = sub_1DAED1B5C();
          (*(v83 + 8))(v84, v72);
        }

        v48 = v103;

        *(v75 + 2) = v82;
        *(v75 + 3) = 0;
        v85 = v97;
        v86 = v88;
        *v97 = v89;
        *(v85 + 8) = v86;
        *(v85 + v102[15]) = v53;
        sub_1DAD6495C(v85, v100, &qword_1ECC084E8, &qword_1DAED68C8);
        swift_storeEnumTagMultiPayload();
        sub_1DADE9A50(qword_1EE007DA0, type metadata accessor for ActivityView);
        sub_1DAD64B94(qword_1ECC08500, &qword_1ECC084E8, &qword_1DAED68C8);
        sub_1DAECFB1C();

        sub_1DAD64398(v85, &qword_1ECC084E8, &qword_1DAED68C8);
        goto LABEL_11;
      }

      sub_1DAD64398(v11, &unk_1ECC09E80, &qword_1DAED68D0);
    }
  }

  v47 = 1;
  v48 = v103;
LABEL_12:
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084F8, &qword_1DAED68E8);
  return (*(*(v50 - 8) + 56))(v48, v47, 1, v50);
}

uint64_t sub_1DADE7E98(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v3[1] = *(a2 + 24);
  v6 = *(&v5 + 1);
  sub_1DAD6495C(&v6, v3, &qword_1ECC084E0, &qword_1DAED68C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084C8, &qword_1DAED68A8);
  result = sub_1DAED077C();
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v3[0] = v5;
    sub_1DAED078C();
    return sub_1DAD64398(&v5, &qword_1ECC084C8, &qword_1DAED68A8);
  }

  return result;
}

uint64_t sub_1DADE7F58@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v11 = *v1;
  v12 = v3;
  v13 = *(v1 + 4);
  v14 = *(v1 + 24);
  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084C8, &qword_1DAED68A8);
  sub_1DAED077C();
  sub_1DADE7164(&v11, a1);
  v4 = *(v11 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);
  v15 = *(&v11 + 1);
  v16 = v12;
  v5 = swift_allocObject();
  v6 = v12;
  *(v5 + 16) = v11;
  *(v5 + 32) = v6;
  *(v5 + 48) = v13;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084D0, &qword_1DAED68B0);
  *(a1 + *(v7 + 52)) = v4;
  v8 = (a1 + *(v7 + 56));
  *v8 = sub_1DADE9A48;
  v8[1] = v5;

  sub_1DAD6495C(&v15, &v10, &qword_1ECC084D8, &qword_1DAED68B8);
  sub_1DAD6495C(&v16, &v10, &qword_1ECC084D8, &qword_1DAED68B8);
  sub_1DAD6495C(&v14, &v10, &qword_1ECC084C8, &qword_1DAED68A8);
}

uint64_t sub_1DADE80BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08590, &qword_1DAED6968);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getTupleTypeMetadata3();
  sub_1DAED097C();
  swift_getWitnessTable();
  sub_1DAED07DC();
  sub_1DAECF2AC();
  swift_getTupleTypeMetadata2();
  sub_1DAED097C();
  swift_getWitnessTable();
  v6 = sub_1DAED084C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  v17[4] = v4;
  v17[5] = v5;
  v18 = *(a1 + 32);
  v19 = v2;
  sub_1DAECFA1C();
  sub_1DAED083C();
  WitnessTable = swift_getWitnessTable();
  sub_1DADB6258(v11, v6, WitnessTable);
  v15 = *(v7 + 8);
  v15(v11, v6);
  sub_1DADB6258(v13, v6, WitnessTable);
  return (v15)(v13, v6);
}

uint64_t sub_1DADE8328@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v84 = a5;
  v82 = a4;
  v88 = a6;
  v79 = a2;
  v80 = a3;
  swift_getTupleTypeMetadata3();
  v7 = sub_1DAED097C();
  WitnessTable = swift_getWitnessTable();
  v77 = v7;
  v75 = WitnessTable;
  v9 = sub_1DAED07DC();
  v78 = *(v9 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v76 = v73 - v11;
  v81 = v12;
  v87 = sub_1DAECF2AC();
  v85 = *(v87 - 8);
  v13 = *(v85 + 64);
  v14 = MEMORY[0x1EEE9AC00](v87);
  v86 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v83 = v73 - v16;
  v74 = sub_1DAED018C();
  v17 = *(v74 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v20 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08598, &qword_1DAED6970);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v73 - v23;
  v25 = sub_1DAED01DC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[1])
  {
    v73[1] = *a1;
    (*(v26 + 104))(v29, *MEMORY[0x1E6980F30], v25);
    v30 = sub_1DAED00EC();
    (*(*(v30 - 8) + 56))(v24, 1, 1, v30);

    sub_1DAED016C();
    sub_1DAD64398(v24, &qword_1ECC08598, &qword_1DAED6970);
    (*(v26 + 8))(v29, v25);
    v31 = v74;
    (*(v17 + 104))(v20, *MEMORY[0x1E6980EA8], v74);
    sub_1DAED01AC();

    (*(v17 + 8))(v20, v31);
    v32 = sub_1DAED026C();
    v34 = v33;
    v36 = v35;

    sub_1DAED00FC();
    v37 = sub_1DAED020C();
    v39 = v38;
    v41 = v40;
    sub_1DADEA34C(v32, v34, v36 & 1);

    LODWORD(v121) = sub_1DAECFB9C();
    v42 = sub_1DAED023C();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_1DADEA34C(v37, v39, v41 & 1);

    sub_1DAED092C();
    sub_1DAECF35C();
    v46 &= 1u;
    LOBYTE(v89) = v46;
    v49 = sub_1DAED005C();
    sub_1DAECF06C();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    LOBYTE(v91[0]) = 0;
    v58 = sub_1DAED006C();
    sub_1DAECF06C();
    LOBYTE(v106[0]) = 0;
    *&v107 = v42;
    *(&v107 + 1) = v44;
    LOBYTE(v108) = v46;
    *(&v108 + 1) = v48;
    v113 = v96;
    v114 = v97;
    v115 = v98;
    v109 = v92;
    v110 = v93;
    v111 = v94;
    v112 = v95;
    LOBYTE(v116) = v49;
    *(&v116 + 1) = v51;
    *&v117 = v53;
    *(&v117 + 1) = v55;
    *&v118 = v57;
    BYTE8(v118) = 0;
    LOBYTE(v119) = v58;
    *(&v119 + 1) = v59;
    *&v120[0] = v60;
    *(&v120[0] + 1) = v61;
    *&v120[1] = v62;
    BYTE8(v120[1]) = 0;
    v63 = nullsub_1(&v107);
    v132 = v118;
    v133 = v119;
    v134[0] = v120[0];
    *(v134 + 9) = *(v120 + 9);
    v129 = v115;
    v130 = v116;
    v131 = v117;
    v125 = v111;
    v126 = v112;
    v127 = v113;
    v128 = v114;
    v121 = v107;
    v122 = v108;
    v123 = v109;
    v124 = v110;
  }

  else
  {
    sub_1DADEA10C(&v121);
  }

  MEMORY[0x1EEE9AC00](v63);
  sub_1DAECF8FC();
  v64 = v76;
  sub_1DAED07CC();
  sub_1DAED003C();
  v65 = v81;
  v66 = swift_getWitnessTable();
  v67 = v86;
  sub_1DAED058C();
  (*(v78 + 8))(v64, v65);
  v106[2] = v66;
  v106[3] = MEMORY[0x1E697E5D8];
  v68 = v87;
  v84 = swift_getWitnessTable();
  v69 = v83;
  sub_1DADB6258(v67, v68, v84);
  v70 = v85;
  v71 = *(v85 + 8);
  v71(v67, v68);
  v103 = v132;
  v104 = v133;
  v105[0] = v134[0];
  *(v105 + 9) = *(v134 + 9);
  v99 = v128;
  v100 = v129;
  v101 = v130;
  v102 = v131;
  v97 = v126;
  v98 = v127;
  v92 = v121;
  v93 = v122;
  v95 = v124;
  v96 = v125;
  v94 = v123;
  v106[0] = &v92;
  (*(v70 + 16))(v67, v69, v68);
  v106[1] = v67;
  sub_1DAD6495C(&v121, &v107, &qword_1ECC08590, &qword_1DAED6968);
  v91[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08590, &qword_1DAED6968);
  v91[1] = v68;
  v89 = sub_1DADEA164();
  v90 = v84;
  sub_1DADB7ABC(v106, 2uLL, v91);
  sub_1DAD64398(&v121, &qword_1ECC08590, &qword_1DAED6968);
  v71(v69, v68);
  v71(v67, v68);
  v119 = v104;
  v120[0] = v105[0];
  *(v120 + 9) = *(v105 + 9);
  v115 = v100;
  v116 = v101;
  v117 = v102;
  v118 = v103;
  v111 = v96;
  v112 = v97;
  v113 = v98;
  v114 = v99;
  v107 = v92;
  v108 = v93;
  v109 = v94;
  v110 = v95;
  return sub_1DAD64398(&v107, &qword_1ECC08590, &qword_1DAED6968);
}

uint64_t sub_1DADE8C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a6;
  v41 = *(a3 - 8);
  v11 = *(v41 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v14);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v39 - v23;
  v49 = v25;
  v50 = v26;
  v39 = v27;
  v51 = v27;
  v52 = v28;
  v29 = type metadata accessor for CarPlayExpandedView();
  sub_1DADB6258(a1 + v29[13], a2, a4);
  v30 = v29[14];
  v31 = *(a1 + v29[15]);
  v32 = a1 + v30;
  v33 = a5;
  sub_1DADB6258(v32, a3, a5);
  (*(v18 + 16))(v22, v24, a2);
  v47 = v31;
  v48 = 0;
  v49 = v22;
  v50 = &v47;
  v35 = v40;
  v34 = v41;
  (*(v41 + 16))(v40, v16, a3);
  v51 = v35;
  v46[0] = a2;
  v46[1] = MEMORY[0x1E6981840];
  v46[2] = a3;
  v43 = v39;
  v44 = MEMORY[0x1E6981838];
  v45 = v33;
  sub_1DADB7ABC(&v49, 3uLL, v46);
  v36 = *(v34 + 8);
  v36(v16, a3);
  v37 = *(v18 + 8);
  v37(v24, a2);
  v36(v35, a3);
  return (v37)(v22, a2);
}

uint64_t sub_1DADE8F04(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_1DAED180C() & 1;
}

unint64_t sub_1DADE8F48()
{
  result = qword_1ECC084C0;
  if (!qword_1ECC084C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC084C0);
  }

  return result;
}

uint64_t sub_1DADE8F9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v61 - v7;
  v84 = sub_1DAED17AC();
  v8 = *(v84 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v84);
  v67 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAED182C();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  sub_1DAE9150C(a1);
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_1DAED256C();
  v65 = (v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  v85 = v1;
  v17 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  v16 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);

  v90 = v17;
  v91 = v16;
  MEMORY[0x1E127DA50](0xD000000000000015, 0x80000001DAEE1020);
  v18 = v90;
  v19 = v91;
  v20 = *MEMORY[0x1E6985918];
  v21 = v12[13];
  v82 = v12 + 13;
  v83 = v21;
  v22 = v11;
  (v21)(v15, v20, v11);
  v78 = *MEMORY[0x1E69858D0];
  v23 = v8[13];
  v79 = v8 + 13;
  v81 = v23;
  v24 = v67;
  v25 = v84;
  v23(v67);
  v26 = v18;
  v27 = v24;
  v28 = sub_1DAE770FC(v26, v19, v15, a1, v24);

  v29 = v8[1];
  v76 = v8 + 1;
  v77 = v29;
  v29(v27, v25);
  v69 = v12[1];
  v75 = v12 + 1;
  v30 = v22;
  v69(v15, v22);
  v73 = *MEMORY[0x1E697DBA8];
  v31 = v73;
  v32 = sub_1DAECF0AC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  v72 = v33 + 104;
  v74 = v34;
  v35 = v61;
  v34(v61, v31, v32);
  v36 = *(v33 + 56);
  v70 = v33 + 56;
  v71 = v36;
  v36(v35, 0, 1, v32);
  v37 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  v38 = v68;
  sub_1DAD6495C(v28 + v37, v68, &qword_1ECC08370, &unk_1DAED6580);
  swift_beginAccess();
  v66 = v28;
  sub_1DADE9908(v35, v28 + v37);
  swift_endAccess();
  sub_1DAE62CC4(v38);
  sub_1DAD64398(v38, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v35, &qword_1ECC08370, &unk_1DAED6580);
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_1DAED256C();
  v40 = *v65;
  v39 = v65[1];
  v41 = v65;

  v88 = v40;
  v89 = v39;
  MEMORY[0x1E127DA50](0xD000000000000016, 0x80000001DAEE1040);
  v42 = v88;
  v43 = v89;
  *v15 = 1;
  v64 = *MEMORY[0x1E6985910];
  v62 = v22;
  v83(v15);
  v44 = v67;
  v45 = v84;
  v81(v67, v78, v84);
  v46 = sub_1DAE770FC(v42, v43, v15, v80, v44);

  v77(v44, v45);
  v69(v15, v30);
  v63 = v32;
  v74(v35, v73, v32);
  v71(v35, 0, 1, v32);
  v47 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  v48 = v68;
  sub_1DAD6495C(v46 + v47, v68, &qword_1ECC08370, &unk_1DAED6580);
  swift_beginAccess();
  sub_1DADE9908(v35, v46 + v47);
  swift_endAccess();
  sub_1DAE62CC4(v48);
  sub_1DAD64398(v48, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v35, &qword_1ECC08370, &unk_1DAED6580);
  v86 = 0;
  v87 = 0xE000000000000000;
  sub_1DAED256C();
  v49 = *v41;
  v50 = v41[1];

  v86 = v49;
  v87 = v50;
  MEMORY[0x1E127DA50](0xD000000000000017, 0x80000001DAEE1060);
  v51 = v86;
  v52 = v87;
  *v15 = 2;
  v53 = v62;
  (v83)(v15, v64, v62);
  v54 = v84;
  v81(v44, v78, v84);
  v55 = sub_1DAE770FC(v51, v52, v15, v80, v44);

  v77(v44, v54);
  v69(v15, v53);
  v56 = v63;
  v74(v35, v73, v63);
  v71(v35, 0, 1, v56);
  v57 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD6495C(v55 + v57, v48, &qword_1ECC08370, &unk_1DAED6580);
  swift_beginAccess();
  sub_1DADE9908(v35, v55 + v57);
  swift_endAccess();
  sub_1DAE62CC4(v48);
  sub_1DAD64398(v48, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v35, &qword_1ECC08370, &unk_1DAED6580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1DAED67C0;
  *(v58 + 32) = v66;
  *(v58 + 40) = v46;
  *(v58 + 48) = v55;
  v59 = *(v85 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels) = v58;

  sub_1DAE8B590(0x7463656E6E6F63, 0xE700000000000000);
}

uint64_t sub_1DADE9908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DADE998C(uint64_t *a1, int a2)
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

uint64_t sub_1DADE99D4(uint64_t result, int a2, int a3)
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

uint64_t sub_1DADE9A50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DADE9A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADE9AFC(uint64_t a1)
{
  v2 = type metadata accessor for ActivityView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DADE9B58(uint64_t a1)
{
  sub_1DAD8D644();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DADE9C04(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(*(v6 - 8) + 64) + ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a2 - v13;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v14);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v12 > 0x7FFFFFFE)
  {
    v25 = (a1 + v9 + 16) & ~v9;
    if (v5 == v13)
    {
      return (*(v4 + 48))(v25);
    }

    else
    {
      return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
    }
  }

  else
  {
    v24 = *(a1 + 1);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    if ((v24 + 1) >= 2)
    {
      return v24;
    }

    else
    {
      return 0;
    }
  }
}

unsigned int *sub_1DADE9DFC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v5 + 80);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v6 <= *(v7 + 84))
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = ((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a3 - v13;
    if (((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(result + v14) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v14) = 0;
      }

      else if (v18)
      {
        *(result + v14) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_36:
        if (v12 > 0x7FFFFFFE)
        {
          v23 = (result + v8 + 16) & ~v8;
          if (v6 == v13)
          {
            v24 = *(v5 + 56);

            return v24(v23);
          }

          else
          {
            v25 = *(v7 + 56);
            v26 = (v23 + v9 + v10) & ~v10;

            return v25(v26);
          }
        }

        else if (a2 > 0x7FFFFFFE)
        {
          *result = 0;
          *(result + 1) = 0;
          *result = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(result + 1) = a2;
        }

        return result;
      }

      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }
  }

  if (((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v21 = ~v13 + a2;
    v22 = result;
    bzero(result, ((v11 + ((v9 + v10 + ((v8 + 16) & ~v8)) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v22;
    *v22 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(result + v14) = v20;
    }

    else
    {
      *(result + v14) = v20;
    }
  }

  else if (v18)
  {
    *(result + v14) = v20;
  }

  return result;
}

uint64_t sub_1DADEA0B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

double sub_1DADEA10C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 217) = 0u;
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

unint64_t sub_1DADEA164()
{
  result = qword_1ECC085A0;
  if (!qword_1ECC085A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08590, &qword_1DAED6968);
    sub_1DADEA244(&qword_1ECC085A8, &qword_1ECC085B0, &qword_1DAED6978, sub_1DADEA214);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC085A0);
  }

  return result;
}

uint64_t sub_1DADEA244(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DADEA2C8()
{
  result = qword_1ECC085C8;
  if (!qword_1ECC085C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC085D0, &qword_1DAED6988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC085C8);
  }

  return result;
}

uint64_t sub_1DADEA34C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1DADEA380(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E127E1F0](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1DAED247C();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t InProcessActivityInstanceBase.identity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity;
  v4 = sub_1DAECE83C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DADEA51C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v40 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v30 - v5;
  v39 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
  v6 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___observationRegistrar;
  v43 = v0;
  v37 = sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  v38 = v8;
  sub_1DAECDEFC();

  v9 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  result = swift_beginAccess();
  v41 = v0;
  v11 = *(v0 + v9);
  if (v11)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      goto LABEL_17;
    }

    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v14 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration;

    v34 = v14;
    swift_beginAccess();
    if (v13)
    {
      v15 = 0;
      v33 = v11 & 0xC000000000000001;
      v32 = v11;
      v31 = v12;
      v30 = v13;
      v16 = v36;
      do
      {
        if (v33)
        {
          v17 = MEMORY[0x1E127E1F0](v15, v11);
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_13:
            __break(1u);
          }
        }

        else
        {
          if (v15 >= *(v12 + 16))
          {
            __break(1u);
LABEL_17:
            v13 = sub_1DAED247C();
            goto LABEL_4;
          }

          v17 = *(v11 + 8 * v15 + 32);

          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_13;
          }
        }

        swift_getKeyPath();
        v19 = v41;
        v42 = v41;
        sub_1DAECDEFC();

        v20 = v35;
        sub_1DADEAD64(v19 + v34, v35);
        v21 = v39;
        sub_1DAD6495C(&v20[*(v39 + 24)], v16, &qword_1ECC08370, &unk_1DAED6580);
        v22 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
        swift_beginAccess();
        v23 = v40;
        sub_1DAD6495C(v17 + v22, v40, &qword_1ECC08370, &unk_1DAED6580);
        swift_beginAccess();

        sub_1DADE9908(v16, v17 + v22);
        swift_endAccess();
        sub_1DAE62CC4(v23);
        sub_1DAD64398(v23, &qword_1ECC08370, &unk_1DAED6580);
        sub_1DAD64398(v16, &qword_1ECC08370, &unk_1DAED6580);
        v24 = *(v21 + 28);
        v25 = v30;
        sub_1DAD6495C(&v20[v24], v16, &qword_1ECC08370, &unk_1DAED6580);
        v26 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme;
        swift_beginAccess();
        sub_1DAD6495C(v17 + v26, v23, &qword_1ECC08370, &unk_1DAED6580);
        swift_beginAccess();
        sub_1DADE9908(v16, v17 + v26);
        swift_endAccess();
        sub_1DAE62CD8(v23);
        v27 = v23;
        v12 = v31;
        sub_1DAD64398(v27, &qword_1ECC08370, &unk_1DAED6580);
        sub_1DAD64398(v16, &qword_1ECC08370, &unk_1DAED6580);
        v28 = *(v17 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment);
        *(v17 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment) = *v20;
        sub_1DAE631A8(v28);
        v29 = *(v17 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance);
        *(v17 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance) = v20[1];
        sub_1DAE64238(v29);
        v11 = v32;

        sub_1DADEAF80(v20);
        ++v15;
      }

      while (v18 != v25);
    }
  }

  return result;
}

uint64_t (*sub_1DADEA9C8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DADEAA2C;
}

uint64_t sub_1DADEAA2C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1DADEA51C();
  }

  return result;
}

uint64_t sub_1DADEAA60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration;
  swift_beginAccess();
  return sub_1DADEAD64(v3 + v4, a2);
}

uint64_t sub_1DADEAB28(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DADEAD64(a1, v7);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEEC();

  return sub_1DADEAF80(v7);
}

uint64_t sub_1DADEAC50@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v3 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration;
  swift_beginAccess();
  return sub_1DADEAD64(v5 + v3, a1);
}

uint64_t type metadata accessor for InProcessActivityInstanceBase()
{
  result = qword_1ECC08668;
  if (!qword_1ECC08668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DADEAD64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADEADC8(uint64_t a1)
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEEC();

  return sub_1DADEAF80(a1);
}

uint64_t sub_1DADEAE98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DADEAD64(a2, v7);
  v8 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration;
  swift_beginAccess();
  sub_1DADF41F8(v7, a1 + v8);
  swift_endAccess();
  sub_1DADEA51C();
  return sub_1DADEAF80(v7);
}

uint64_t sub_1DADEAF80(uint64_t a1)
{
  v2 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_1DADEAFDC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1DAECDF1C();

  v4[7] = sub_1DADEA9C8(v4);
  return sub_1DADEB114;
}

void sub_1DADEB120(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v8 = (v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize);
  if (*(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16))
  {
    if (a3)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((a3 & 1) != 0 || (*v8 == *&a1 ? (v9 = *(v8 + 1) == *&a2) : (v9 = 0), !v9))
  {
LABEL_9:

    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446466;
      swift_getKeyPath();
      sub_1DAECDEFC();

      v14 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
      v15 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

      v16 = sub_1DAD6482C(v14, v15, &v22);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      swift_getKeyPath();
      sub_1DAECDEFC();

      v20 = *v8;
      v21 = *(v8 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08680, &qword_1DAED6CC0);
      v17 = sub_1DAED1D4C();
      v19 = sub_1DAD6482C(v17, v18, &v22);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] Content size changed to: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }
  }
}

__n128 sub_1DADEB3D4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16);
  result = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1DADEB4C4()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  result = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize);
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 8);
  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16);
  return result;
}

void sub_1DADEB574(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
  v8 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize);
  v9 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 8);
  v10 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16);
  if (v10 & 1) != 0 || (a3)
  {
    if (!*(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16) || (a3 & 1) == 0)
    {
LABEL_13:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
      sub_1DAECDEEC();

      return;
    }
  }

  else
  {
    v11 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize);
    v12 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 8);
    if (*&v8 != *&a1 || *&v9 != *&a2)
    {
      goto LABEL_13;
    }
  }

  *v7 = *&a1;
  *(v7 + 8) = *&a2;
  *(v7 + 16) = a3 & 1;

  sub_1DADEB120(v8, v9, v10);
}

uint64_t sub_1DADEB718(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1DADEB758(v4);
}

void sub_1DADEB788(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v7 = v4;
  swift_getKeyPath();
  v24 = v4;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v9 = *a3;
  if (*(v4 + *a3))
  {
    if (a1)
    {
      v10 = *(v4 + *a3);

      v11 = sub_1DAED05FC();

      if (v11)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v12 = sub_1DAECEDCC();
  v13 = sub_1DAED203C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v14 = 136446466;
    swift_getKeyPath();
    format = a4;
    sub_1DAECDEFC();

    v15 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
    v16 = *(v7 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

    v17 = sub_1DAD6482C(v15, v16, &v24);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    swift_getKeyPath();
    sub_1DAECDEFC();

    v23 = *(v7 + v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08678, &qword_1DAED6CB8);
    v18 = sub_1DAED1D4C();
    v20 = sub_1DAD6482C(v18, v19, &v24);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_1DAD61000, v12, v13, format, v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v22, -1, -1);
    MEMORY[0x1E127F100](v14, -1, -1);
  }
}

uint64_t sub_1DADEBA4C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1DADEBB04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1DADEBC1C(v4);
}

uint64_t sub_1DADEBB44(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = *(v2 + *a2);
}

uint64_t keypath_set_7Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1DADEBC4C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = *a2;
  if (!*(v5 + *a2))
  {
    if (!a1)
    {
      v13 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v11 = *(v5 + *a2);

  v12 = sub_1DAED05FC();

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  v13 = *(v5 + v10);
LABEL_8:
  *(v5 + v10) = a1;

  sub_1DADEB788(v13, a3, a2, a5);
}

uint64_t sub_1DADEBE58()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v1 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_1DADEBF18(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void (*sub_1DADEBF88(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1DAECDF1C();

  v4[7] = sub_1DADEBDF4();
  return sub_1DADEC0C0;
}

void sub_1DADEC0CC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1DAECDF0C();

  free(v1);
}

void *sub_1DADEC160()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion);
  v2 = v1;
  return v1;
}

id sub_1DADEC210@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion);
  *a2 = v4;

  return v4;
}

void sub_1DADEC2D0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion;
  v5 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1DAECE70C();
  v6 = v5;
  v7 = a1;
  v8 = sub_1DAED228C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1DADEC46C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }

  return result;
}

uint64_t sub_1DADEC584()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

  return v1;
}

uint64_t sub_1DADEC640@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  a2[1] = v4;
}

uint64_t sub_1DADEC6F8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  v6 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier) == a1 && *(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8), (sub_1DAED289C() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }
}

uint64_t sub_1DADEC864()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags);
}

uint64_t sub_1DADEC910@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags);
}

uint64_t sub_1DADEC9C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags;
  v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags);

  v6 = sub_1DADF3510(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }
}

uint64_t sub_1DADECB84(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
}

uint64_t sub_1DADECC3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_1DADECD44(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);

  LOBYTE(a3) = a3(v8, a1);

  if (a3)
  {
    v9 = *(v3 + v6);
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }
}

uint64_t sub_1DADECE94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
}

uint64_t sub_1DADECF00()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher);
}

uint64_t sub_1DADECFAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *a2 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher);
}

uint64_t sub_1DADED060(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }
}

uint64_t sub_1DADED19C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1DADED250(char a1)
{
  v2 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded) = a1 & 1;
    swift_getKeyPath();
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
    sub_1DAECDEFC();

    v5 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher);
    swift_getKeyPath();

    sub_1DAECDEFC();

    v6 = *(v1 + v2);
    sub_1DAECEE6C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
    sub_1DAECDEEC();
  }
}

uint64_t sub_1DADED444(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded;
  *(a1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded) = a2;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher);
  swift_getKeyPath();

  sub_1DAECDEFC();

  v6 = *(a1 + v3);
  sub_1DAECEE6C();
}

uint64_t sub_1DADED568()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  swift_getKeyPath();
  v10 = v0;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) & 1) == 0)
  {

    v3 = sub_1DAECEDCC();
    v4 = sub_1DAED203C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136446210;
      swift_getKeyPath();
      sub_1DAECDEFC();

      v7 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
      v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

      v9 = sub_1DAD6482C(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1DAD61000, v3, v4, "[%{public}s] Activate", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1E127F100](v6, -1, -1);
      MEMORY[0x1E127F100](v5, -1, -1);
    }

    return sub_1DADEF0CC();
  }

  return result;
}

void sub_1DADED760()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  swift_getKeyPath();
  v42[0] = v0;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v2 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated;
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) & 1) == 0)
  {
    sub_1DADED250(0);
    if (*(v0 + v2) == 1)
    {
      *(v0 + v2) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v42[0] = v0;
      sub_1DAECDEEC();
    }

    v4 = sub_1DAECEDCC();
    v5 = sub_1DAED203C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v42[0] = v7;
      *v6 = 136446210;
      swift_getKeyPath();
      sub_1DAECDEFC();

      v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
      v9 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

      v10 = sub_1DAD6482C(v8, v9, v42);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DAD61000, v4, v5, "[%{public}s] Invalidate", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E127F100](v7, -1, -1);
      MEMORY[0x1E127F100](v6, -1, -1);
    }

    v11 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
    swift_beginAccess();
    v12 = *(v1 + v11);
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 >> 62)
    {
      goto LABEL_49;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DAED247C())
    {

      if (i)
      {
        v15 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E127E1F0](v15, v12);
            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v15 >= *(v13 + 16))
            {
              goto LABEL_48;
            }

            v16 = *(v12 + 8 * v15 + 32);

            v17 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_19:
              __break(1u);
              break;
            }
          }

          sub_1DAE67BAC();

          ++v15;
        }

        while (v17 != i);
      }

LABEL_21:
      v19 = sub_1DADEBDF4();
      if (*v18)
      {
        *v18 = MEMORY[0x1E69E7CC0];
      }

      (v19)(v42, 0);
      v20 = *(v1 + v11);
      *(v1 + v11) = 0;

      swift_getKeyPath();
      v42[0] = v1;
      sub_1DAECDEFC();

      v21 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___cancellables;
      swift_beginAccess();
      v40 = v21;
      v12 = *(v1 + v21);
      if ((v12 & 0xC000000000000001) != 0)
      {
        if (v12 < 0)
        {
          v22 = *(v1 + v21);
        }

        swift_unknownObjectRetain();
        sub_1DAED242C();
        sub_1DAECEE3C();
        sub_1DADF3094(&qword_1EE005C50, MEMORY[0x1E695BF10]);
        sub_1DAED1F9C();
        v24 = v42[0];
        v23 = v42[1];
        v25 = v42[2];
        v13 = v42[3];
        v11 = v42[4];
      }

      else
      {
        v26 = -1 << *(v12 + 32);
        v23 = v12 + 56;
        v25 = ~v26;
        v27 = -v26;
        v28 = v27 < 64 ? ~(-1 << v27) : -1;
        v11 = v28 & *(v12 + 56);
        swift_bridgeObjectRetain_n();
        v13 = 0;
        v24 = v12;
      }

      v29 = (v25 + 64) >> 6;
      if (v24 < 0)
      {
        break;
      }

LABEL_32:
      v30 = v13;
      v31 = v11;
      v32 = v13;
      if (v11)
      {
LABEL_36:
        v33 = (v31 - 1) & v31;
        v34 = *(*(v24 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));

        if (v34)
        {
          goto LABEL_40;
        }

        goto LABEL_42;
      }

      while (1)
      {
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v32 >= v29)
        {
          goto LABEL_42;
        }

        v31 = *(v23 + 8 * v32);
        ++v30;
        if (v31)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      ;
    }

    while (sub_1DAED24BC())
    {
      sub_1DAECEE3C();
      swift_dynamicCast();
      v32 = v13;
      v33 = v11;
      if (!v41)
      {
        break;
      }

LABEL_40:
      sub_1DAECEE2C();

      v13 = v32;
      v11 = v33;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }
    }

LABEL_42:
    sub_1DAD70B20();

    swift_getKeyPath();
    sub_1DAECDEFC();

    swift_getKeyPath();
    sub_1DAECDF1C();

    v35 = *(v1 + v40);
    *(v1 + v40) = MEMORY[0x1E69E7CD0];

    swift_getKeyPath();
    sub_1DAECDF0C();

    swift_getKeyPath();
    sub_1DAECDEFC();

    v36 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion;
    v37 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion);
    if (v37 && (v38 = v37, sub_1DAECE6EC(), v38, *(v1 + v36)))
    {
      v39 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v39);
      sub_1DAECDEEC();
    }

    else
    {
      *(v1 + v36) = 0;
    }
  }
}

void sub_1DADEDEC8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  BSDispatchQueueAssertMain();
  swift_getKeyPath();
  v48 = v2;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  if ((*(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) & 1) == 0)
  {
    swift_getKeyPath();
    v48 = v2;
    sub_1DAECDEFC();

    v6 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___activeRequesters;
    swift_beginAccess();
    v44 = *(*(v2 + v6) + 16);
    swift_getKeyPath();

    sub_1DAECDEFC();

    swift_getKeyPath();
    sub_1DAECDF1C();

    swift_beginAccess();
    sub_1DAE87D3C(v47, a1, a2);
    swift_endAccess();

    v46[0] = v2;
    swift_getKeyPath();
    sub_1DAECDF0C();

    swift_retain_n();

    v7 = sub_1DAECEDCC();
    v8 = sub_1DAED203C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46[0] = v41;
      *v9 = 136446722;
      swift_getKeyPath();
      v40 = a1;
      v47[0] = v2;
      sub_1DAECDEFC();

      v10 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
      v11 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

      v12 = sub_1DAD6482C(v10, v11, v46);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2050;
      swift_getKeyPath();
      v47[0] = v3;
      sub_1DAECDEFC();

      v13 = *(*(v3 + v6) + 16);

      *(v9 + 14) = v13;

      *(v9 + 22) = 2082;
      *(v9 + 24) = sub_1DAD6482C(v40, a2, v46);
      _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] Increment foreground count to: %{public}ld for viewID: %{public}s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v41, -1, -1);
      MEMORY[0x1E127F100](v9, -1, -1);

      if (v44)
      {
        return;
      }
    }

    else
    {

      if (v44)
      {
        return;
      }
    }

    v14 = sub_1DAECEDCC();
    v15 = sub_1DAED203C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v46[0] = v17;
      *v16 = 136446210;
      swift_getKeyPath();
      v47[0] = v3;
      sub_1DAECDEFC();

      v18 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
      v19 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

      v20 = sub_1DAD6482C(v18, v19, v46);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1DAD61000, v14, v15, "[%{public}s] Forground", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E127F100](v17, -1, -1);
      MEMORY[0x1E127F100](v16, -1, -1);
    }

    swift_getKeyPath();
    v46[0] = v3;
    sub_1DAECDEFC();

    v21 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
    swift_beginAccess();
    v22 = *(v3 + v21);
    if (v22)
    {
      v23 = v22 & 0xFFFFFFFFFFFFFF8;
      if (v22 >> 62)
      {
        goto LABEL_30;
      }

      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

      if (v24)
      {
        v25 = 0;
        v45 = v22 & 0xC000000000000001;
        v42 = v22;
        v43 = v24;
        do
        {
          if (v45)
          {
            v26 = MEMORY[0x1E127E1F0](v25, v22);
            v27 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
LABEL_25:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v25 >= *(v23 + 16))
            {
              __break(1u);
LABEL_30:
              v24 = sub_1DAED247C();
              goto LABEL_11;
            }

            v26 = *(v22 + 8 * v25 + 32);

            v27 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              goto LABEL_25;
            }
          }

          v28 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
          v29 = *(v26 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
          *(v26 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = 1;
          BSDispatchQueueAssertMain();
          if (v29 != *(v26 + v28))
          {

            v30 = sub_1DAECEDCC();
            v31 = sub_1DAED203C();
            if (os_log_type_enabled(v30, v31))
            {
              v32 = v23;
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v47[0] = v34;
              *v33 = 136446466;
              *(v33 + 4) = sub_1DAD6482C(*(v26 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v26 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), v47);
              *(v33 + 12) = 1026;
              *(v33 + 14) = *(v26 + v28);

              _os_log_impl(&dword_1DAD61000, v30, v31, "[%{public}s] isForeground changed (%{BOOL,public}d)", v33, 0x12u);
              __swift_destroy_boxed_opaque_existential_1Tm(v34);
              MEMORY[0x1E127F100](v34, -1, -1);
              v35 = v33;
              v23 = v32;
              v22 = v42;
              MEMORY[0x1E127F100](v35, -1, -1);
            }

            else
            {
            }

            v24 = v43;
            if (*(v26 + v28) == 1)
            {
              sub_1DAE69B6C(1);
            }
          }

          ++v25;
        }

        while (v27 != v24);
      }
    }

    v47[0] = 91;
    v47[1] = 0xE100000000000000;
    swift_getKeyPath();
    sub_1DAECDEFC();

    v36 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
    v37 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

    MEMORY[0x1E127DA50](v36, v37);

    MEMORY[0x1E127DA50](0x726765726F46205DLL, 0xEC000000646E756FLL);
    sub_1DAECDE3C();
    swift_allocObject();
    swift_weakInit();
    v38 = objc_allocWithZone(sub_1DAECE70C());
    v39 = sub_1DAECE6FC();
    sub_1DADEC2D0(v39);
  }
}

uint64_t sub_1DADEE768()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
      sub_1DAECDEEC();
    }
  }

  return result;
}

void sub_1DADEE8A8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  BSDispatchQueueAssertMain();
  swift_getKeyPath();
  v46[0] = v2;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  if ((*(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) & 1) == 0)
  {
    swift_getKeyPath();
    sub_1DAECDEFC();

    swift_getKeyPath();
    sub_1DAECDF1C();

    v6 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___activeRequesters;
    swift_beginAccess();
    sub_1DAEC4F74(a1, a2);
    swift_endAccess();

    v46[0] = v2;
    swift_getKeyPath();
    sub_1DAECDF0C();

    swift_retain_n();

    v7 = sub_1DAECEDCC();
    v8 = sub_1DAED203C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v43 = a1;
      v10 = swift_slowAlloc();
      v46[0] = v10;
      *v9 = 136446722;
      swift_getKeyPath();
      v45 = v2;
      sub_1DAECDEFC();

      v11 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
      v12 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

      v13 = sub_1DAD6482C(v11, v12, v46);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2050;
      swift_getKeyPath();
      v45 = v3;
      sub_1DAECDEFC();

      v14 = *(*(v3 + v6) + 16);

      *(v9 + 14) = v14;

      *(v9 + 22) = 2082;
      *(v9 + 24) = sub_1DAD6482C(v43, a2, v46);
      _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] Decrement foreground count to: %{public}ld for viewID: %{public}s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v10, -1, -1);
      MEMORY[0x1E127F100](v9, -1, -1);
    }

    else
    {
    }

    swift_getKeyPath();
    v46[0] = v3;
    sub_1DAECDEFC();

    if (!*(*(v3 + v6) + 16))
    {

      v15 = sub_1DAECEDCC();
      v16 = sub_1DAED203C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v46[0] = v18;
        *v17 = 136446210;
        swift_getKeyPath();
        v45 = v3;
        sub_1DAECDEFC();

        v19 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
        v20 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

        v21 = sub_1DAD6482C(v19, v20, v46);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_1DAD61000, v15, v16, "[%{public}s] Background", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1E127F100](v18, -1, -1);
        MEMORY[0x1E127F100](v17, -1, -1);
      }

      swift_getKeyPath();
      v46[0] = v3;
      sub_1DAECDEFC();

      v22 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
      swift_beginAccess();
      v23 = *(v3 + v22);
      if (v23)
      {
        v24 = v23 & 0xFFFFFFFFFFFFFF8;
        v41 = v3;
        if (v23 >> 62)
        {
          goto LABEL_33;
        }

        v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

        if (v25)
        {
          v26 = 0;
          v44 = v23 & 0xC000000000000001;
          v42 = v23;
          do
          {
            if (v44)
            {
              v27 = MEMORY[0x1E127E1F0](v26, v23);
              v28 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
LABEL_25:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v26 >= *(v24 + 16))
              {
                __break(1u);
LABEL_33:
                v25 = sub_1DAED247C();
                goto LABEL_11;
              }

              v27 = *(v23 + 8 * v26 + 32);

              v28 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                goto LABEL_25;
              }
            }

            v29 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
            v30 = *(v27 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
            *(v27 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = 0;
            BSDispatchQueueAssertMain();
            if (v30 != *(v27 + v29))
            {

              v31 = sub_1DAECEDCC();
              v32 = sub_1DAED203C();
              if (os_log_type_enabled(v31, v32))
              {
                v33 = v24;
                v34 = swift_slowAlloc();
                v35 = swift_slowAlloc();
                v45 = v35;
                *v34 = 136446466;
                *(v34 + 4) = sub_1DAD6482C(*(v27 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v27 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v45);
                *(v34 + 12) = 1026;
                *(v34 + 14) = *(v27 + v29);

                _os_log_impl(&dword_1DAD61000, v31, v32, "[%{public}s] isForeground changed (%{BOOL,public}d)", v34, 0x12u);
                __swift_destroy_boxed_opaque_existential_1Tm(v35);
                MEMORY[0x1E127F100](v35, -1, -1);
                v36 = v34;
                v24 = v33;
                v23 = v42;
                MEMORY[0x1E127F100](v36, -1, -1);
              }

              else
              {
              }

              if (*(v27 + v29) == 1)
              {
                sub_1DAE69B6C(1);
              }
            }

            ++v26;
          }

          while (v28 != v25);
        }

        v3 = v41;
      }

      swift_getKeyPath();
      v45 = v3;
      sub_1DAECDEFC();

      v37 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion;
      v38 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion);
      if (v38 && (v39 = v38, sub_1DAECE6EC(), v39, *(v3 + v37)))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v45 = v3;
        sub_1DAECDEEC();
      }

      else
      {
        *(v3 + v37) = 0;
      }
    }
  }
}

uint64_t sub_1DADEF0CC()
{
  v1 = v0;
  v2 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v238 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v196 = &v192 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v195 = &v192 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D08, &qword_1DAEDCB80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v237 = &v192 - v12;
  v236 = sub_1DAED22EC();
  v258 = *(v236 - 8);
  v13 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v235 = &v192 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D10, &qword_1DAED57C0);
  v257 = *(v234 - 8);
  v15 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v234);
  v233 = &v192 - v16;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D18, &qword_1DAED57C8);
  v265 = *(v232 - 8);
  v17 = *(v265 + 64);
  MEMORY[0x1EEE9AC00](v232);
  v231 = &v192 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v270 = &v192 - v21;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08690, &qword_1DAED6CD8);
  v264 = *(v230 - 8);
  v22 = *(v264 + 8);
  MEMORY[0x1EEE9AC00](v230);
  v229 = &v192 - v23;
  v228 = sub_1DAED17AC();
  v263 = *(v228 - 8);
  v24 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v228);
  v227 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A150, &unk_1DAED6CE0);
  v26 = *(*(v226 - 8) + 64);
  MEMORY[0x1EEE9AC00](v226);
  v225 = &v192 - v27;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v262 = *(v224 - 8);
  v28 = *(v262 + 8);
  MEMORY[0x1EEE9AC00](v224);
  v223 = &v192 - v29;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A160, &qword_1DAED6CF0);
  v261 = *(v222 - 8);
  v30 = v261[8];
  MEMORY[0x1EEE9AC00](v222);
  v221 = &v192 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08698, &qword_1DAED84E0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v220 = &v192 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v280 = &v192 - v36;
  v269 = sub_1DAECDE4C();
  v260 = *(v269 - 8);
  v37 = v260[8];
  MEMORY[0x1EEE9AC00](v269);
  v279 = &v192 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_1DAECEDEC();
  v259 = *(v278 - 8);
  v39 = *(v259 + 64);
  MEMORY[0x1EEE9AC00](v278);
  v277 = &v192 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1DAED182C();
  v282 = *(v41 - 8);
  v42 = *(v282 + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v219 = &v192 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v276 = &v192 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v247 = &v192 - v47;
  v272 = sub_1DAED1ABC();
  v241 = *(v272 - 8);
  v48 = *(v241 + 64);
  v49 = MEMORY[0x1EEE9AC00](v272);
  v275 = &v192 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v240 = &v192 - v51;
  v52 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  swift_beginAccess();
  v53 = *(v1 + v52);
  *(v1 + v52) = MEMORY[0x1E69E7CC0];

  sub_1DADED250(0);
  v54 = v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__logger;

  v218 = v54;
  v55 = sub_1DAECEDCC();
  v56 = sub_1DAED203C();

  v57 = os_log_type_enabled(v55, v56);
  v283 = v1;
  v281 = v41;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v288 = v59;
    *v58 = 136446210;
    swift_getKeyPath();
    v301[0] = v283;
    sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
    sub_1DAECDEFC();

    v60 = *(v283 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
    v61 = *(v283 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

    v62 = sub_1DAD6482C(v60, v61, &v288);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_1DAD61000, v55, v56, "[%{public}s] Create view models", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x1E127F100](v59, -1, -1);
    MEMORY[0x1E127F100](v58, -1, -1);
  }

  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v63 = qword_1EE011BD8;
  swift_beginAccess();
  result = sub_1DAD6495C(v63 + 56, &v288, &unk_1ECC0A170, &qword_1DAED6440);
  if (!v290)
  {
    __break(1u);
    goto LABEL_29;
  }

  v65 = *(*__swift_project_boxed_opaque_existential_1(&v288, v290) + 24);

  sub_1DAECE6BC();

  __swift_destroy_boxed_opaque_existential_1Tm(&v288);
  v66 = qword_1EE011BD8;
  sub_1DAD648F8(qword_1EE011BD8 + 144, v300);
  sub_1DAD648F8(v66 + 104, v299);
  swift_beginAccess();
  result = sub_1DAD6495C(v66 + 56, &v288, &unk_1ECC0A170, &qword_1DAED6440);
  if (!v290)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v239 = *(*__swift_project_boxed_opaque_existential_1(&v288, v290) + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v288);
  v67 = qword_1EE011BD8;
  swift_beginAccess();
  result = sub_1DAD6495C(v67 + 56, &v288, &unk_1ECC0A170, &qword_1DAED6440);
  if (!v290)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v68 = __swift_project_boxed_opaque_existential_1(&v288, v290);
  sub_1DAD648F8(*v68 + 32, v298);
  __swift_destroy_boxed_opaque_existential_1Tm(&v288);
  v69 = v283;
  v70 = *(v283 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_metricsRequest);
  sub_1DAEBB27C(v70, v240);
  swift_getKeyPath();
  v71 = v69 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___observationRegistrar;
  v288 = v69;
  v72 = sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v73 = *(v69 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags);
  v74 = *(v73 + 16);
  if (v74)
  {
    v267 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v75 = objc_opt_self();
    v216 = (v283 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
    v217 = v75;
    v215 = v283 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity;
    v76 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration;
    v194 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___cancellables;
    v77 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___activeRequesters;
    v78 = v282;
    v271 = v73 + ((*(v282 + 80) + 32) & ~*(v282 + 80));
    v192 = v73;

    v214 = v76;
    swift_beginAccess();
    v213 = v77;
    swift_beginAccess();
    v79 = v271;
    v80 = 0;
    v81 = *(v78 + 16);
    v78 += 16;
    v274 = v81;
    v266 = (v259 + 16);
    v211 = (v263 + 56);
    v212 = (v241 + 16);
    v209 = (v262 + 32);
    v210 = (v261 + 4);
    v208 = *MEMORY[0x1E6994040];
    v207 = (v260 + 2);
    v206 = (v263 + 48);
    v246 = (v263 + 32);
    v204 = (v258 + 8);
    v205 = (v264 + 8);
    v202 = (v265 + 8);
    v203 = (v257 + 8);
    v241 += 8;
    v200 = (v259 + 8);
    v201 = (v260 + 1);
    v199 = (v78 + 72);
    v198 = *MEMORY[0x1E6985910];
    v193 = *MEMORY[0x1E697DBA8];
    v282 = v78;
    v197 = *(v78 + 56);
    v82 = v247;
    v273 = v71;
    v268 = v72;
    v265 = v78 - 8;
    do
    {
      LODWORD(v262) = v80;
      v263 = v74;
      v271 = v79;
      v84 = v274;
      (v274)(v82);
      v257 = *v266;
      (v257)(v277, v218, v278);
      swift_getKeyPath();
      v288 = v283;
      sub_1DAECDEFC();

      v85 = v216[1];
      v288 = *v216;
      v289 = v85;

      MEMORY[0x1E127DA50](14906, 0xE200000000000000);
      sub_1DADF3094(&qword_1EE0056D8, MEMORY[0x1E6985920]);
      v86 = sub_1DAED287C();
      MEMORY[0x1E127DA50](v86);

      v255 = v289;
      v256 = v288;
      sub_1DAD648F8(v301, v297);
      sub_1DAD648F8(v300, v296);
      sub_1DAD648F8(v299, v295);
      sub_1DAD648F8(v298, v293);
      v87 = v239;
      sub_1DAECE81C();
      v84(v276, v82, v281);
      v88 = *v212;
      v89 = v272;
      (*v212)(v275, v240, v272);
      v90 = v228;
      (*v211)(v280, 1, 1, v228);
      v91 = v294;
      v92 = __swift_mutable_project_boxed_opaque_existential_1(v293, v294);
      v261 = &v192;
      v93 = *(*(v91 - 8) + 64);
      MEMORY[0x1EEE9AC00](v92);
      v95 = (&v192 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v96 + 16))(v95);
      v97 = *v95;
      v259 = type metadata accessor for ActivityRendererClient();
      v290 = v259;
      v98 = sub_1DADF3094(&qword_1EE008C88, type metadata accessor for ActivityRendererClient);
      v292 = &off_1F56B4928;
      v258 = v98;
      v291 = v98;
      v288 = v87;
      v99 = type metadata accessor for _DefaultActivityRendererSessionFactory();
      v287[4] = &off_1F56B36D8;
      v287[3] = v99;
      v287[0] = v97;
      v100 = type metadata accessor for ActivityViewModel();
      v101 = *(v100 + 48);
      v102 = *(v100 + 52);
      v103 = swift_allocObject();
      v104 = __swift_mutable_project_boxed_opaque_existential_1(v287, v99);
      v260 = &v192;
      v105 = *(*(v99 - 8) + 64);
      MEMORY[0x1EEE9AC00](v104);
      v107 = (&v192 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v108 + 16))(v107);
      v109 = *v107;
      v286[4] = &off_1F56B36D8;
      v286[3] = v99;
      v286[0] = v109;
      v110 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel___pendingInteractionSequenceNumber;
      v284 = 0;
      v264 = v87;
      v111 = v221;
      sub_1DAECEEFC();
      (*v210)(v103 + v110, v111, v222);
      v112 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__baseContentTouchedDown;
      LOBYTE(v284) = 0;
      v113 = v223;
      sub_1DAECEEFC();
      (*v209)(v103 + v112, v113, v224);
      v114 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView;
      sub_1DAECF10C();
      sub_1DAD64B94(&qword_1EE005B80, &unk_1ECC0A150, &unk_1DAED6CE0);
      *(v103 + v114) = sub_1DAED087C();
      v115 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
      v116 = sub_1DAED1B8C();
      (*(*(v116 - 8) + 56))(v103 + v115, 1, 1, v116);
      v117 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
      v118 = sub_1DAECF0AC();
      v242 = *(v118 - 8);
      v119 = v242 + 56;
      v120 = *(v242 + 56);
      v120(v103 + v117, 1, 1, v118);
      v120(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme, 1, 1, v118);
      v244 = v119;
      v245 = v118;
      v243 = v120;
      v120(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme, 1, 1, v118);
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment) = 0;
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay) = 0;
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) = 0;
      v121 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
      v122 = sub_1DAECE21C();
      (*(*(v122 - 8) + 104))(v103 + v121, v208, v122);
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = 0;
      sub_1DAECF8DC();
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment) = 0;
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance) = 0;
      v123 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
      v124 = sub_1DAECDCEC();
      (*(*(v124 - 8) + 56))(v103 + v123, 1, 1, v124);
      v125 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
      v126 = sub_1DAECDBFC();
      (*(*(v126 - 8) + 56))(v103 + v125, 1, 1, v126);
      v127 = (v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
      *v127 = 0;
      v127[1] = 0;
      v128 = (v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
      *v128 = 0;
      v128[1] = 0;
      v129 = v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
      *v129 = 0u;
      *(v129 + 16) = 0u;
      *(v129 + 32) = 0;
      v130 = v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__environmentProvider;
      *(v130 + 32) = 0;
      *v130 = 0u;
      *(v130 + 16) = 0u;
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__cancellable) = MEMORY[0x1E69E7CD0];
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__hasLoadedViewOnce) = 0;
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource) = 0;
      v131 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__isSubscribed;
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__isSubscribed) = 0;
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver) = 0;
      (v257)(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v277, v278);
      v132 = (v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
      v133 = v255;
      *v132 = v256;
      v132[1] = v133;
      sub_1DAD648F8(v297, v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__baseEnvironmentProvider);
      sub_1DAD648F8(v286, v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activitySessionFactory);
      sub_1DADF410C(&v288, v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityDescriptorProvider);
      sub_1DAD648F8(v296, v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider);
      sub_1DAD648F8(v295, v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__dataProtectionMonitor);
      (*v207)(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor, v279, v269);
      v88((v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_metricsDefinition), v275, v89);
      v274((v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag), v276, v281);
      *(v103 + v131) = 0;
      v134 = v220;
      sub_1DAD6495C(v280, v220, &qword_1ECC08698, &qword_1DAED84E0);
      v135 = *v206;
      if ((*v206)(v134, 1, v90) == 1)
      {
        v136 = v227;
        sub_1DAED178C();
        if (v135(v134, 1, v90) != 1)
        {
          sub_1DAD64398(v134, &qword_1ECC08698, &qword_1DAED84E0);
        }
      }

      else
      {
        v136 = v227;
        (*v246)(v227, v134, v90);
      }

      (*v246)((v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityFamily), v136, v90);
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086A0, &qword_1DAED6CF8);
      v138 = *(v137 + 48);
      v139 = *(v137 + 52);
      swift_allocObject();
      v140 = sub_1DAECEE7C();
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewEntryDidChangePublisher) = v140;
      v284 = v140;
      v257 = v140;
      sub_1DAD64B94(&qword_1EE005C40, &qword_1ECC086A0, &qword_1DAED6CF8);

      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher) = sub_1DAECEF6C();
      v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086A8, &unk_1DAED6D00);
      v142 = *(v141 + 48);
      v143 = *(v141 + 52);
      swift_allocObject();
      v144 = sub_1DAECEE7C();
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__colorSchemeDidChangePublisher) = v144;
      v284 = v144;
      v256 = v144;
      sub_1DAD64B94(&qword_1EE005C30, &qword_1ECC086A8, &unk_1DAED6D00);

      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorSchemeDidChangePublisher) = sub_1DAECEF6C();
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
      v146 = *(v145 + 48);
      v147 = *(v145 + 52);
      swift_allocObject();
      v148 = sub_1DAECEE7C();
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__overrideDateDidChangePublisher) = v148;
      v284 = v148;
      v255 = v148;
      sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0);

      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDateDidChangePublisher) = sub_1DAECEF6C();
      v149 = type metadata accessor for DefaultWidgetViewSecurityPolicy();
      v150 = swift_allocObject();
      v151 = (v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicy);
      v151[3] = v149;
      v151[4] = &protocol witness table for DefaultWidgetViewSecurityPolicy;
      *v151 = v150;
      type metadata accessor for ActivityViewModelSecurityDataSource();
      v152 = swift_allocObject();
      *(v152 + 16) = v103;
      v153 = *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource);
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource) = v152;

      v284 = sub_1DAED12DC();
      v154 = sub_1DAED20EC();
      v285 = v154;
      v258 = sub_1DAED20AC();
      v155 = *(v258 - 8);
      v254 = *(v155 + 56);
      v259 = v155 + 56;
      v156 = v270;
      v254(v270, 1, 1, v258);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A180, &unk_1DAED6D10);
      v251 = MEMORY[0x1E695BED8];
      sub_1DAD64B94(&unk_1EE005CC0, &unk_1ECC0A180, &unk_1DAED6D10);
      v253 = sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610);
      v157 = v229;
      sub_1DAECEFBC();
      sub_1DAD64398(v156, &unk_1ECC07D20, &unk_1DAED57D0);

      swift_allocObject();
      swift_weakInit();
      v252 = MEMORY[0x1E695BE98];
      sub_1DAD64B94(&qword_1EE005D30, &qword_1ECC08690, &qword_1DAED6CD8);

      v158 = v230;
      v159 = sub_1DAECF00C();

      (*v205)(v157, v158);
      v160 = *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver);
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver) = v159;

      v161 = *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider + 32);
      __swift_project_boxed_opaque_existential_1((v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider), *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider + 24));
      v250 = sub_1DAECE2AC();
      v284 = v250;
      v162 = v235;
      sub_1DAED22DC();
      v249 = [v217 mainRunLoop];
      v285 = v249;
      v163 = sub_1DAED22CC();
      v164 = v237;
      (*(*(v163 - 8) + 56))(v237, 1, 1, v163);
      v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DD0, &unk_1DAED5860);
      sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
      sub_1DAD64B94(&qword_1EE00AC10, &unk_1ECC07DD0, &unk_1DAED5860);
      sub_1DAD8D6A4(&qword_1EE00A858, &qword_1EE00A850, 0x1E695DFD0);
      v165 = v233;
      sub_1DAECEFCC();
      sub_1DAD64398(v164, &qword_1ECC07D08, &qword_1DAEDCB80);

      (*v204)(v162, v236);

      v166 = sub_1DAED20EC();
      v284 = v166;
      v167 = v270;
      v254(v270, 1, 1, v258);
      sub_1DAD64B94(&qword_1EE00AC40, &qword_1ECC07D10, &qword_1DAED57C0);
      v168 = v231;
      v169 = v234;
      sub_1DAECEFBC();
      sub_1DAD64398(v167, &unk_1ECC07D20, &unk_1DAED57D0);

      (*v203)(v165, v169);
      swift_allocObject();
      swift_weakInit();
      sub_1DAD64B94(&qword_1EE00AC18, &qword_1ECC07D18, &qword_1DAED57C8);
      v170 = v232;
      sub_1DAECF00C();

      (*v202)(v168, v170);
      swift_beginAccess();
      sub_1DAECEE0C();
      swift_endAccess();

      sub_1DAE6608C();

      sub_1DAD64398(v280, &qword_1ECC08698, &qword_1DAED84E0);
      v259 = *v241;
      (v259)(v275, v272);
      v171 = *v265;
      v172 = v281;
      (*v265)(v276, v281);
      (*v201)(v279, v269);
      __swift_destroy_boxed_opaque_existential_1Tm(v295);
      __swift_destroy_boxed_opaque_existential_1Tm(v296);
      __swift_destroy_boxed_opaque_existential_1Tm(v297);
      (*v200)(v277, v278);
      __swift_destroy_boxed_opaque_existential_1Tm(v286);
      __swift_destroy_boxed_opaque_existential_1Tm(&v288);
      __swift_destroy_boxed_opaque_existential_1Tm(v287);
      __swift_destroy_boxed_opaque_existential_1Tm(v293);
      v173 = v219;
      v82 = v247;
      v274(v219, v247, v172);
      v174 = (*v199)(v173, v172);
      if (v174 == v198)
      {
        v175 = v195;
        v176 = v245;
        (*(v242 + 104))(v195, v193, v245);
        v243(v175, 0, 1, v176);
        v177 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
        swift_beginAccess();
        v178 = v196;
        sub_1DAD6495C(v103 + v177, v196, &qword_1ECC08370, &unk_1DAED6580);
        swift_beginAccess();
        sub_1DADE9908(v175, v103 + v177);
        swift_endAccess();
        sub_1DAE62CC4(v178);
        sub_1DAD64398(v178, &qword_1ECC08370, &unk_1DAED6580);
        sub_1DAD64398(v175, &qword_1ECC08370, &unk_1DAED6580);
      }

      else
      {
        v171(v173, v172);
      }

      v179 = *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment);
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment) = 1;
      sub_1DAE64024(v179);
      swift_getKeyPath();
      v180 = v283;
      v288 = v283;
      sub_1DAECDEFC();

      v181 = v238;
      sub_1DADEAD64(v180 + v214, v238);
      sub_1DADF3EB8(v181, v103);

      sub_1DADEAF80(v181);
      if ((v262 & 1) == 0)
      {
        v288 = *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);
        v182 = swift_allocObject();
        v183 = v283;
        swift_weakInit();
        v184 = swift_allocObject();
        *(v184 + 16) = v182;
        *(v184 + 24) = v103;

        v262 = v171;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09E60, &unk_1DAED6D20);
        sub_1DAD64B94(&qword_1EE005CE0, &qword_1ECC09E60, &unk_1DAED6D20);
        sub_1DAECF00C();
        v82 = v247;

        swift_getKeyPath();
        v288 = v183;
        sub_1DAECDEFC();

        v288 = v183;
        swift_getKeyPath();
        sub_1DAECDF1C();

        swift_beginAccess();
        sub_1DAECEE0C();
        swift_endAccess();

        v288 = v183;
        v171 = v262;
        swift_getKeyPath();
        sub_1DAECDF0C();
      }

      swift_getKeyPath();
      v185 = v283;
      v288 = v283;
      sub_1DAECDEFC();

      v186 = *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
      *(v103 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = *(*(v185 + v213) + 16) != 0;
      sub_1DAE638F4(v186);
      v188 = sub_1DADEBF88(&v288);
      if (*v187)
      {
        v189 = v187;

        MEMORY[0x1E127DAD0](v190);
        v83 = v263;
        if (*((*v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v191 = *((*v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DAED1E9C();
        }

        sub_1DAED1EBC();
        (v188)(&v288, 0);
      }

      else
      {
        (v188)(&v288, 0);
        v83 = v263;
      }

      v171(v82, v172);
      v79 = v271 + v197;
      v80 = 1;
      v74 = v83 - 1;
    }

    while (v74);

    (v259)(v240, v272);
  }

  else
  {

    (*(v241 + 8))(v240, v272);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v298);
  __swift_destroy_boxed_opaque_existential_1Tm(v299);
  __swift_destroy_boxed_opaque_existential_1Tm(v300);
  return __swift_destroy_boxed_opaque_existential_1Tm(v301);
}

uint64_t sub_1DADF15FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DAED187C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED1B8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v32 - v20;
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v32[0] = v5;
    v24 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(a3 + v24, v17, &unk_1ECC09E40, &qword_1DAED68E0);
    if ((*(v10 + 48))(v17, 1, v9))
    {
      v25 = &unk_1ECC09E40;
      v26 = &qword_1DAED68E0;
      v27 = v17;
    }

    else
    {
      (*(v10 + 16))(v13, v17, v9);
      sub_1DAD64398(v17, &unk_1ECC09E40, &qword_1DAED68E0);
      sub_1DAED1B7C();
      (*(v10 + 8))(v13, v9);
      v28 = sub_1DAED1B1C();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v21, 1, v28) != 1)
      {
        sub_1DAED1AFC();
        (*(v29 + 8))(v21, v28);
        sub_1DAED186C();
        (*(v32[0] + 8))(v8, v4);
        v30 = 1;
        goto LABEL_7;
      }

      v25 = &unk_1ECC0A520;
      v26 = &unk_1DAED6D30;
      v27 = v21;
    }

    sub_1DAD64398(v27, v25, v26);
    v30 = 0;
LABEL_7:
    sub_1DADED250(v30);
    v31 = sub_1DAED094C();
    MEMORY[0x1EEE9AC00](v31);
    v32[-2] = v23;
    v32[-1] = a3;
    sub_1DAECF1DC();
  }

  return result;
}

uint64_t sub_1DADF1A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086B0, &unk_1DAED84D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v123 - v9;
  v131 = sub_1DAED187C();
  v130 = *(v131 - 8);
  v11 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v129 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DAED1B8C();
  v147 = *(v13 - 8);
  v14 = *(v147 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v139 = v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v137 = v123 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v135 = v123 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v128 = v123 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v143 = v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v142 = v123 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v141 = v123 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v127 = v123 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = v123 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v138 = v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v136 = v123 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v134 = v123 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v126 = v123 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v146 = v123 - v44;

  v45 = sub_1DAECEDCC();
  v46 = sub_1DAED203C();

  v140 = v46;
  v47 = os_log_type_enabled(v45, v46);
  p_cb = &OBJC_PROTOCOL____UISceneBSActionResponding.cb;
  v145 = a1;
  v133 = v8;
  v144 = a2;
  v132 = v10;
  if (!v47)
  {

    goto LABEL_9;
  }

  v124 = v45;
  v49 = swift_slowAlloc();
  v125 = swift_slowAlloc();
  v149[0] = v125;
  *v49 = 136446466;
  swift_getKeyPath();
  v148 = a1;
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v51 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  v50 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

  v52 = sub_1DAD6482C(v51, v50, v149);

  *(v49 + 4) = v52;
  *(v49 + 12) = 2082;
  v53 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(a2 + v53, v33, &unk_1ECC09E40, &qword_1DAED68E0);
  v54 = *(v147 + 48);
  if (v54(v33, 1, v13))
  {
    v55 = v13;

    sub_1DAD64398(v33, &unk_1ECC09E40, &qword_1DAED68E0);
    v56 = sub_1DAED1B1C();
    v57 = v146;
    (*(*(v56 - 8) + 56))(v146, 1, 1, v56);
LABEL_7:
    sub_1DAD64398(v57, &unk_1ECC0A520, &unk_1DAED6D30);
    v66 = 0xE300000000000000;
    v67 = 7104878;
    a2 = v144;
LABEL_8:
    v68 = v124;
    v69 = sub_1DAD6482C(v67, v66, v149);

    *(v49 + 14) = v69;
    _os_log_impl(&dword_1DAD61000, v68, v140, "[%{public}s] Entry metadata changed to: %{public}s", v49, 0x16u);
    v70 = v125;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v70, -1, -1);
    MEMORY[0x1E127F100](v49, -1, -1);

    v13 = v55;
    p_cb = (&OBJC_PROTOCOL____UISceneBSActionResponding + 64);
LABEL_9:
    v71 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    v72 = v141;
    sub_1DAD6495C(a2 + v71, v141, &unk_1ECC09E40, &qword_1DAED68E0);
    v73 = v147;
    v146 = *(v147 + 48);
    v74 = (v146)(v72, 1, v13);
    v75 = v145;
    if (v74)
    {
      sub_1DAD64398(v72, &unk_1ECC09E40, &qword_1DAED68E0);
    }

    else
    {
      v76 = v135;
      (*(v73 + 16))(v135, v72, v13);
      sub_1DAD64398(v72, &unk_1ECC09E40, &qword_1DAED68E0);
      v77 = v134;
      sub_1DAED1B7C();
      (*(v73 + 8))(v76, v13);
      v78 = sub_1DAED1B1C();
      v79 = *(v78 - 8);
      if ((*(v79 + 48))(v77, 1, v78) != 1)
      {
        v97 = v77;
        v98 = v129;
        sub_1DAED1AFC();
        (*(v79 + 8))(v97, v78);
        sub_1DAED186C();
        v82 = v99;
        v85 = v100;
        (*(v130 + 8))(v98, v131);
        v80 = v75 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
        if (*(v75 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16))
        {
          v141 = v71;
          v81 = 0;
          p_cb = (&OBJC_PROTOCOL____UISceneBSActionResponding + 64);
        }

        else
        {
          v81 = 0;
          v83 = *v80;
          p_cb = (&OBJC_PROTOCOL____UISceneBSActionResponding + 64);
          if (v82 == *v80)
          {
            v84 = *(v80 + 8);
            if (v85 == *&v84)
            {
              v73 = v147;
              goto LABEL_15;
            }
          }

          v141 = v71;
        }

LABEL_17:
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v87 = v145;
        v123[-4] = v145;
        *&v123[-3] = v82;
        *&v123[-2] = v85;
        LOBYTE(v123[-1]) = v81;
        v88 = *(p_cb + 187);
        v149[7] = v87;
        sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
        sub_1DAECDEEC();

        a2 = v144;
        v73 = v147;
        v71 = v141;
LABEL_18:
        v89 = v142;
        sub_1DAD6495C(a2 + v71, v142, &unk_1ECC09E40, &qword_1DAED68E0);
        if ((v146)(v89, 1, v13))
        {
          sub_1DAD64398(v89, &unk_1ECC09E40, &qword_1DAED68E0);
          v90 = 0;
        }

        else
        {
          v91 = v137;
          (*(v73 + 16))(v137, v89, v13);
          sub_1DAD64398(v89, &unk_1ECC09E40, &qword_1DAED68E0);
          v92 = v136;
          sub_1DAED1B7C();
          v93 = v91;
          v94 = v92;
          (*(v73 + 8))(v93, v13);
          v95 = sub_1DAED1B1C();
          v96 = *(v95 - 8);
          if ((*(v96 + 48))(v94, 1, v95) == 1)
          {
            sub_1DAD64398(v94, &unk_1ECC0A520, &unk_1DAED6D30);
            v90 = 0;
            v73 = v147;
          }

          else
          {
            v141 = v71;
            v101 = v132;
            sub_1DAED1B0C();
            (*(v96 + 8))(v94, v95);
            v102 = sub_1DAED175C();
            v103 = *(v102 - 8);
            if ((*(v103 + 48))(v101, 1, v102) == 1)
            {
              sub_1DAD64398(v101, &qword_1ECC086B0, &unk_1DAED84D0);
              v90 = 0;
            }

            else
            {
              v109 = sub_1DAED174C();
              (*(v103 + 8))(v101, v102);
              v90 = v109;
            }

            v73 = v147;
            v71 = v141;
          }
        }

        sub_1DADEBC1C(v90);
        v110 = v143;
        sub_1DAD6495C(a2 + v71, v143, &unk_1ECC09E40, &qword_1DAED68E0);
        if ((v146)(v110, 1, v13))
        {
          v111 = &unk_1ECC09E40;
          v112 = &qword_1DAED68E0;
          v113 = v110;
        }

        else
        {
          v114 = v139;
          (*(v73 + 16))(v139, v110, v13);
          sub_1DAD64398(v110, &unk_1ECC09E40, &qword_1DAED68E0);
          v115 = v138;
          sub_1DAED1B7C();
          (*(v73 + 8))(v114, v13);
          v116 = sub_1DAED1B1C();
          v117 = *(v116 - 8);
          if ((*(v117 + 48))(v115, 1, v116) == 1)
          {
            v111 = &unk_1ECC0A520;
            v112 = &unk_1DAED6D30;
            v113 = v115;
          }

          else
          {
            v118 = v133;
            sub_1DAED1ADC();
            (*(v117 + 8))(v115, v116);
            v119 = sub_1DAED175C();
            v120 = *(v119 - 8);
            if ((*(v120 + 48))(v118, 1, v119) != 1)
            {
              v122 = sub_1DAED174C();
              (*(v120 + 8))(v118, v119);
              v121 = v122;
              return sub_1DADEB758(v121);
            }

            v111 = &qword_1ECC086B0;
            v112 = &unk_1DAED84D0;
            v113 = v118;
          }
        }

        sub_1DAD64398(v113, v111, v112);
        v121 = 0;
        return sub_1DADEB758(v121);
      }

      sub_1DAD64398(v77, &unk_1ECC0A520, &unk_1DAED6D30);
      v73 = v147;
      p_cb = &OBJC_PROTOCOL____UISceneBSActionResponding.cb;
    }

    v80 = v75 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
    v81 = 1;
    v82 = 0.0;
    if (*(v75 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize + 16))
    {
      v83 = *v80;
      v84 = *(v80 + 8);
      v85 = 0.0;
LABEL_15:
      *v80 = v82;
      *(v80 + 8) = v85;
      *(v80 + 16) = v81;
      sub_1DADEB120(*&v83, v84, v81);
      goto LABEL_18;
    }

    v141 = v71;
    v85 = 0.0;
    goto LABEL_17;
  }

  v58 = v147;
  v59 = v128;
  (*(v147 + 16))(v128, v33, v13);
  sub_1DAD64398(v33, &unk_1ECC09E40, &qword_1DAED68E0);
  v60 = v146;
  sub_1DAED1B7C();
  v61 = *(v58 + 8);
  v62 = v59;
  v57 = v60;
  v63 = v13;
  v61(v62, v13);
  v64 = sub_1DAED1B1C();
  v65 = *(v64 - 8);
  v128 = *(v65 + 48);
  v123[1] = v65 + 48;
  if ((v128)(v57, 1, v64) == 1)
  {
    v55 = v63;

    goto LABEL_7;
  }

  v123[0] = v61;
  sub_1DAD64398(v57, &unk_1ECC0A520, &unk_1DAED6D30);
  a2 = v144;
  v104 = v127;
  sub_1DAD6495C(v144 + v53, v127, &unk_1ECC09E40, &qword_1DAED68E0);
  if (v54(v104, 1, v63) == 1)
  {

    __break(1u);
  }

  else
  {
    v105 = v126;
    sub_1DAED1B7C();
    v55 = v63;
    (v123[0])(v104, v63);
    v106 = (v128)(v105, 1, v64);

    if (v106 != 1)
    {
      v67 = sub_1DAED1D4C();
      v66 = v108;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t InProcessActivityInstanceBase.deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity;
  v2 = sub_1DAECE83C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1DADEAF80(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration);
  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__backgroundTintColor);

  v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__textColor);

  v5 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels);

  v6 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__logger;
  v7 = sub_1DAECEDEC();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier + 8);

  v9 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags);

  v10 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___cancellables);

  v11 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___activeRequesters);

  v12 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher);

  v13 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___observationRegistrar;
  v14 = sub_1DAECDF3C();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

uint64_t InProcessActivityInstanceBase.__deallocating_deinit()
{
  InProcessActivityInstanceBase.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DADF2C78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity;
  v5 = sub_1DAECE83C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DADF2D30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *v4;
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v7 = *(v6 + *a4);
}

uint64_t sub_1DADF2E34(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  return *(v2 + *a2);
}

uint64_t InProcessActivityInstanceBase.isLoadedPublisher.getter()
{
  swift_getKeyPath();
  sub_1DADF3094(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08658, &qword_1DAED6B20);
  sub_1DAD64B94(&qword_1ECC08660, &qword_1ECC08658, &qword_1DAED6B20);
  return sub_1DAECEF6C();
}

uint64_t sub_1DADF2FD8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1DADF3010(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1DADF3020(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1DAD6482C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1DADF3094(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DADF30DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion);
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion) = v2;
  v4 = v2;
}

uint64_t sub_1DADF316C()
{
  result = sub_1DAECE83C();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for WidgetActivityInstanceContentConfiguration();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = sub_1DAECEDEC();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = sub_1DAECDF3C();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t keypath_set_23Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1DADF34CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher);
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher) = *(v0 + 24);
}

uint64_t sub_1DADF3510(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAED182C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1DADF3094(&unk_1EE0056E0, MEMORY[0x1E6985920]);
    v22 = sub_1DAED1CAC();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DADF3724(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x1EEE6A200](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_1DAECEE3C();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_1EE005C50;
        v17 = a1;
        if (!v13)
        {
LABEL_27:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v26 = (v20 - 1) & v20;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x1EEE6A200](v5, v4);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v26 = (v13 - 1) & v13;
LABEL_32:
          v29 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v21 = *(a2 + 40);
          sub_1DADF3094(&qword_1EE005C50, MEMORY[0x1E695BF10]);

          v22 = sub_1DAED1C5C();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          sub_1DADF3094(&qword_1EE005C48, MEMORY[0x1E695BF10]);
          while (1)
          {
            v28 = *(*(a2 + 48) + 8 * v24);
            if (sub_1DAED1CAC())
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v26;
          v5 = &qword_1EE005C50;
          v17 = a1;
          if (!v26)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_1DADF3C18(v8, v7);
}

uint64_t sub_1DADF3A18(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1DAED294C();

    sub_1DAED1D9C();
    v17 = sub_1DAED297C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1DAED289C() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DADF3C18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1DAED247C();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_1DAED24CC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DADF3D1C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags);
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags) = *(v0 + 24);
}

uint64_t sub_1DADF3D60()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1DADF3E0C(uint64_t *a1, uint64_t a2, char *a3)
{
  v7 = *(v3 + 16);
  v8 = *(v7 + *a1);
  *(v7 + *a1) = *(v3 + 24);

  sub_1DADEB788(v8, a2, a1, a3);
}

uint64_t sub_1DADF3EB8(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v17 - v10;
  if (a2)
  {
    v12 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
    sub_1DAD6495C(&a1[*(v12 + 24)], v11, &qword_1ECC08370, &unk_1DAED6580);
    v13 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
    swift_beginAccess();
    sub_1DAD6495C(a2 + v13, v8, &qword_1ECC08370, &unk_1DAED6580);
    swift_beginAccess();

    sub_1DADE9908(v11, a2 + v13);
    swift_endAccess();
    sub_1DAE62CC4(v8);
    sub_1DAD64398(v8, &qword_1ECC08370, &unk_1DAED6580);
    sub_1DAD64398(v11, &qword_1ECC08370, &unk_1DAED6580);
    sub_1DAD6495C(&a1[*(v12 + 28)], v11, &qword_1ECC08370, &unk_1DAED6580);
    v14 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme;
    swift_beginAccess();
    sub_1DAD6495C(a2 + v14, v8, &qword_1ECC08370, &unk_1DAED6580);
    swift_beginAccess();
    sub_1DADE9908(v11, a2 + v14);
    swift_endAccess();
    sub_1DAE62CD8(v8);
    sub_1DAD64398(v8, &qword_1ECC08370, &unk_1DAED6580);
    sub_1DAD64398(v11, &qword_1ECC08370, &unk_1DAED6580);
    v15 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment);
    *(a2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment) = *a1;
    sub_1DAE631A8(v15);
    v16 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance);
    *(a2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance) = a1[1];
    sub_1DAE64238(v16);
  }

  return result;
}

uint64_t sub_1DADF410C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1DADF41A4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *v2 = *(v0 + 24);
  *(v2 + 16) = v1;
  sub_1DADEB120(v3, v4, v5);
}

uint64_t sub_1DADF41F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *sub_1DADF42C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v4 = objc_allocWithZone(MEMORY[0x1E6994340]);

  v3[5] = [v4 init];
  v5 = objc_allocWithZone(MEMORY[0x1E698E660]);
  v6 = sub_1DAED1CBC();
  v7 = [v5 initWithIdentifier_];

  v8 = v3[6];
  v3[6] = v7;

  return v3;
}

uint64_t sub_1DADF43A0()
{
  BSDispatchQueueAssertMain();
  v1 = *(v0 + 48);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 48);
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 48) = 0;

  v3 = *(v0 + 16);

  v4 = *(v0 + 32);

  return v0;
}

uint64_t sub_1DADF4404()
{
  sub_1DADF43A0();

  return swift_deallocClassInstance();
}

void sub_1DADF445C()
{
  v1 = v0;
  v35 = sub_1DAED09DC();
  v40 = *(v35 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1DAED0A3C();
  v37 = *(v39 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_1DAECDCEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v32 - v16;
  v18 = [*(*(v0 + 16) + 32) extensionIdentity];
  v19 = &v18[*MEMORY[0x1E69941A8]];
  swift_beginAccess();
  v21 = *v19;
  v20 = *(v19 + 1);

  LOBYTE(v21) = sub_1DAECE27C();

  if (v21)
  {
    v22 = *(v1 + 16);

    sub_1DADC5180(v9);

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      sub_1DAD64398(v9, &qword_1ECC07CE8, &qword_1DAED6F60);
    }

    else
    {
      v32 = *(v11 + 32);
      v34 = v17;
      v32(v17, v9, v10);
      sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
      v33 = sub_1DAED20EC();
      (*(v11 + 16))(v13, v17, v10);
      v23 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      v32((v25 + v23), v13, v10);
      *(v25 + v24) = v1;
      *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
      aBlock[4] = sub_1DADF537C;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAD751C0;
      aBlock[3] = &block_descriptor_2;
      v26 = _Block_copy(aBlock);

      v27 = v18;

      v28 = v36;
      _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1DAD8E204(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
      sub_1DADCA908();
      v29 = v38;
      v30 = v35;
      sub_1DAED23CC();
      v31 = v33;
      MEMORY[0x1E127DD70](0, v28, v29, v26);
      _Block_release(v26);

      (*(v40 + 8))(v29, v30);
      (*(v37 + 8))(v28, v39);
      (*(v11 + 8))(v34, v10);
    }
  }

  else
  {
  }
}

void sub_1DADF49B0(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v32 - v6;
  v8 = sub_1DAECDCEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  sub_1DAECDCDC();
  sub_1DAD8E204(&qword_1EE00A6F0, MEMORY[0x1E6969530]);
  v16 = sub_1DAED1C9C();
  v17 = *(v9 + 8);
  v17(v15, v8);
  if ((v16 & 1) == 0)
  {
    sub_1DADF4F24(v33, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1DAD64398(v7, &qword_1ECC07CE8, &qword_1DAED6F60);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1DAECDC7C();
      v18 = sub_1DAECDC6C();
      v17(v15, v8);
      if (v18)
      {
        v20 = a2[3];
        v19 = a2[4];

        v20(v21);

        v17(v12, v8);
        return;
      }

      v17(v12, v8);
    }
  }

  sub_1DAECDC8C();
  v23 = a2[6];
  if (v23)
  {
    v24 = v22 + 900.0;
    sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v25 = v23;
    v26 = sub_1DAED20EC();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v29 = v33;
    *(v28 + 16) = v27;
    *(v28 + 24) = v29;
    aBlock[4] = sub_1DADF5414;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD69AE8;
    aBlock[3] = &block_descriptor_22;
    v30 = _Block_copy(aBlock);
    v31 = v29;

    [v25 scheduleWithFireInterval:v26 leewayInterval:v30 queue:v24 handler:60.0];
    _Block_release(v30);
  }
}

id sub_1DADF4D8C(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return [a1 invalidate];
  }

  if (qword_1EE005E38 != -1)
  {
    swift_once();
  }

  v5 = sub_1DAECEDEC();
  __swift_project_value_buffer(v5, qword_1EE011730);
  v6 = a3;
  v7 = sub_1DAECEDCC();
  v8 = sub_1DAED203C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}@] Staleness timer fired. Evaluating staleness.", v9, 0xCu);
    sub_1DAD64398(v10, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v10, -1, -1);
    MEMORY[0x1E127F100](v9, -1, -1);
  }

  sub_1DADF445C();
}

uint64_t sub_1DADF4F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v36 - v7;
  v41 = sub_1DAECDD3C();
  v9 = *(v41 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *MEMORY[0x1E69941A8]);
  swift_beginAccess();
  v14 = v13[1];
  if (!v14)
  {
    [*(v2 + 48) invalidate];
LABEL_26:
    v35 = sub_1DAECDCEC();
    return (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
  }

  v37 = v8;
  v42 = *v13;
  v15 = *(v2 + 40);

  v16 = [v15 allPairedDevices];
  sub_1DAD674D4(0, &qword_1ECC086B8, 0x1E6994338);
  v17 = sub_1DAED1E7C();

  v38 = a2;
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

LABEL_24:
  v18 = sub_1DAED247C();
  if (!v18)
  {
LABEL_25:

    a2 = v38;
    goto LABEL_26;
  }

LABEL_4:
  v19 = 0;
  v39 = v17 & 0xFFFFFFFFFFFFFF8;
  v40 = v17 & 0xC000000000000001;
  v20 = v9 + 1;
  while (1)
  {
    if (v40)
    {
      v21 = MEMORY[0x1E127E1F0](v19, v17);
    }

    else
    {
      if (v19 >= *(v39 + 16))
      {
        goto LABEL_23;
      }

      v21 = *(v17 + 8 * v19 + 32);
    }

    v9 = v21;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v23 = [v21 relationshipID];
    sub_1DAECDD0C();

    v24 = sub_1DAECDCFC();
    v26 = v25;
    (*v20)(v12, v41);
    if (v24 == v42 && v14 == v26)
    {

      goto LABEL_18;
    }

    v27 = sub_1DAED289C();

    if (v27)
    {
      break;
    }

    ++v19;
    if (v22 == v18)
    {
      goto LABEL_25;
    }
  }

LABEL_18:

  v28 = [v9 lastConnectionDate];
  v30 = v37;
  v29 = v38;
  if (v28)
  {
    v31 = v28;
    sub_1DAECDCBC();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = sub_1DAECDCEC();
  (*(*(v33 - 8) + 56))(v30, v32, 1, v33);
  return sub_1DADF530C(v30, v29);
}

uint64_t sub_1DADF530C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DADF537C()
{
  v1 = *(sub_1DAECDCEC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1DADF49B0(v0 + v2, v4, v5);
}

uint64_t sub_1DADF5424()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011B30 = result;
  return result;
}

uint64_t sub_1DADF548C()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011638 = result;
  return result;
}

uint64_t sub_1DADF54F4()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011628 = result;
  return result;
}

uint64_t sub_1DADF555C()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1ECC0DCF0 = result;
  return result;
}

uint64_t sub_1DADF55C4()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1ECC0DCF8 = result;
  return result;
}

uint64_t sub_1DADF5630()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1ECC0DD00 = result;
  return result;
}

uint64_t sub_1DADF5698()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1ECC0DD08 = result;
  return result;
}

uint64_t sub_1DADF5704()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1ECC0DD10 = result;
  return result;
}

uint64_t sub_1DADF5770()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1ECC0DD18 = result;
  return result;
}

uint64_t sub_1DADF57F0(uint64_t a1, uint64_t *a2)
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  *a2 = result;
  return result;
}

uint64_t sub_1DADF5858()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011630 = result;
  return result;
}

uint64_t sub_1DADF58C0()
{
  sub_1DAD65C68();
  result = sub_1DAED231C();
  qword_1EE011620 = result;
  return result;
}

uint64_t sub_1DADF5954()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE011790);
  __swift_project_value_buffer(v0, qword_1EE011790);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF59D4()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE0117A8);
  __swift_project_value_buffer(v0, qword_1EE0117A8);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5A54()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE0117C0);
  __swift_project_value_buffer(v0, qword_1EE0117C0);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5CE4()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE0116E8);
  __swift_project_value_buffer(v0, qword_1EE0116E8);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5D64()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1ECC0DDF0);
  __swift_project_value_buffer(v0, qword_1ECC0DDF0);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5DE4()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1ECC0DE08);
  __swift_project_value_buffer(v0, qword_1ECC0DE08);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5E64()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1ECC0DE20);
  __swift_project_value_buffer(v0, qword_1ECC0DE20);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5EE4()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE0116D0);
  __swift_project_value_buffer(v0, qword_1EE0116D0);
  return sub_1DAECEDDC();
}

uint64_t sub_1DADF5F68()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1ECC0DE38);
  __swift_project_value_buffer(v0, qword_1ECC0DE38);
  return sub_1DAECEDDC();
}

uint64_t type metadata accessor for _InProcessActivityInstanceView()
{
  result = qword_1ECC086C0;
  if (!qword_1ECC086C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DADF605C()
{
  sub_1DADF6108();
  if (v0 <= 0x3F)
  {
    sub_1DAED182C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for InProcessActivityInstanceBase();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DADF6108()
{
  if (!qword_1ECC086D0)
  {
    v0 = sub_1DAED079C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC086D0);
    }
  }
}

uint64_t sub_1DADF6174(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_1DAED247C();
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
          v7 = MEMORY[0x1E127E1F0](v6, a3);
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

uint64_t sub_1DADF6298@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DADF70F8(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v4 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1DADF6360(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1DADF70F8(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEEC();
}

uint64_t sub_1DADF642C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A150, &unk_1DAED6CE0);
  v3 = *(v78 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v6 = &v66 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086D8, &unk_1DAED6E18);
  v7 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v66 - v8;
  v9 = type metadata accessor for _InProcessActivityInstanceView();
  v10 = v9 - 8;
  v70 = *(v9 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v71 = v12;
  v72 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1DAED1B8C();
  v68 = *(v69 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v66 - v17;
  v19 = type metadata accessor for ActivityView();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086E0, &qword_1DAED6E28);
  v23 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v66 - v24;
  v25 = *(v2 + *(v10 + 36));
  swift_getKeyPath();
  *&v80[0] = v25;
  sub_1DADF70F8(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v26 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  v27 = swift_beginAccess();
  v28 = *(v25 + v26);
  if (v28 && (MEMORY[0x1EEE9AC00](v27), *(&v66 - 2) = v2, , v29 = sub_1DADF6174(sub_1DADF709C, (&v66 - 4), v28), , v29))
  {
    v79 = 0;

    sub_1DAED076C();
    *(v22 + 2) = v80[0];
    v30 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
    v31 = *(v19 + 28);
    v32 = sub_1DAECEDEC();
    (*(*(v32 - 8) + 16))(&v22[v31], v29 + v30, v32);
    type metadata accessor for ActivityViewModel();
    sub_1DADF70F8(&qword_1EE007808, type metadata accessor for ActivityViewModel);

    v33 = sub_1DAECF21C();
    v35 = v34;
    *v22 = v33;
    *(v22 + 1) = v34;
    *&v80[0] = sub_1DAED064C();
    *(v22 + 2) = sub_1DAED087C();
    *(v22 + 3) = 0;
    v36 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v35 + v36, v18, &unk_1ECC09E40, &qword_1DAED68E0);
    v37 = v68;
    v38 = v69;
    if ((*(v68 + 48))(v18, 1, v69))
    {
      sub_1DAD64398(v18, &unk_1ECC09E40, &qword_1DAED68E0);
      v39 = *(v35 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
    }

    else
    {
      v42 = v67;
      (*(v37 + 16))(v67, v18, v38);
      sub_1DAD64398(v18, &unk_1ECC09E40, &qword_1DAED68E0);
      v39 = sub_1DAED1B5C();
      (*(v37 + 8))(v42, v38);
    }

    *(v22 + 2) = v39;
    *(v22 + 3) = 0;
    v43 = v72;
    sub_1DADF71C8(v2, v72, type metadata accessor for _InProcessActivityInstanceView);
    v44 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v70 = v29;
    v45 = swift_allocObject();
    sub_1DADF714C(v43, v45 + v44);
    v46 = v73;
    sub_1DADF71C8(v22, v73, type metadata accessor for ActivityView);
    v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08708, &qword_1DAED6E60) + 36));
    *v47 = sub_1DADF71B0;
    v47[1] = v45;
    v47[2] = 0;
    v47[3] = 0;
    sub_1DADE9AFC(v22);
    sub_1DADF71C8(v2, v43, type metadata accessor for _InProcessActivityInstanceView);
    v48 = swift_allocObject();
    sub_1DADF714C(v43, v48 + v44);
    v49 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086F8, &qword_1DAED6E58) + 36));
    *v49 = 0;
    v49[1] = 0;
    v49[2] = sub_1DADF7230;
    v49[3] = v48;
    v50 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_metricsRequest;
    v51 = *(v25 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_metricsRequest);
    v52 = v70;

    v53 = v51;
    v54 = sub_1DAECE7FC();

    v55 = sub_1DAECE86C();
    sub_1DAECEA7C();
    v57 = v56;

    v58 = *(v25 + v50);
    v59 = sub_1DAECE7FC();

    v60 = sub_1DAECE87C();
    sub_1DAECEA7C();
    v62 = v61;

    sub_1DADF7A74(v52, v80, v57, v62);

    v63 = v46 + *(v74 + 36);
    v64 = v80[3];
    *(v63 + 32) = v80[2];
    *(v63 + 48) = v64;
    *(v63 + 64) = v81;
    v65 = v80[1];
    *v63 = v80[0];
    *(v63 + 16) = v65;
    sub_1DAD6495C(v46, v76, &qword_1ECC086E0, &qword_1DAED6E28);
    swift_storeEnumTagMultiPayload();
    sub_1DADF6E74();
    sub_1DAD64B94(&qword_1EE005B80, &unk_1ECC0A150, &unk_1DAED6CE0);
    sub_1DAECFB1C();

    return sub_1DAD64398(v46, &qword_1ECC086E0, &qword_1DAED6E28);
  }

  else
  {
    sub_1DAECF10C();
    v40 = v78;
    (*(v3 + 16))(v76, v6, v78);
    swift_storeEnumTagMultiPayload();
    sub_1DADF6E74();
    sub_1DAD64B94(&qword_1EE005B80, &unk_1ECC0A150, &unk_1DAED6CE0);
    sub_1DAECFB1C();
    return (*(v3 + 8))(v6, v40);
  }
}

uint64_t sub_1DADF6DE0(uint64_t a1, void (*a2)())
{
  v4 = *(a1 + *(type metadata accessor for _InProcessActivityInstanceView() + 28));
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08720, &qword_1DAED6E70);
  sub_1DAED077C();
  a2();
}

unint64_t sub_1DADF6E74()
{
  result = qword_1ECC086E8;
  if (!qword_1ECC086E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC086E0, &qword_1DAED6E28);
    sub_1DADF6F00();
    sub_1DADF7048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC086E8);
  }

  return result;
}

unint64_t sub_1DADF6F00()
{
  result = qword_1ECC086F0;
  if (!qword_1ECC086F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC086F8, &qword_1DAED6E58);
    sub_1DADF6F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC086F0);
  }

  return result;
}

unint64_t sub_1DADF6F8C()
{
  result = qword_1ECC08700;
  if (!qword_1ECC08700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08708, &qword_1DAED6E60);
    sub_1DADF70F8(qword_1EE007DA0, type metadata accessor for ActivityView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08700);
  }

  return result;
}

unint64_t sub_1DADF7048()
{
  result = qword_1ECC08710;
  if (!qword_1ECC08710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08710);
  }

  return result;
}

uint64_t sub_1DADF709C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(type metadata accessor for _InProcessActivityInstanceView() + 24);
  return sub_1DAED180C() & 1;
}

uint64_t sub_1DADF70F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DADF7140(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1DAD660D8(result);
  }

  else
  {
  }
}

uint64_t sub_1DADF714C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _InProcessActivityInstanceView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADF71C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DADF72AC()
{
  v1 = sub_1DAED187C();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAED1B8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A520, &unk_1DAED6D30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v33 - v16;
  v37 = v0;
  v18 = *(v0 + 8);
  v19 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v18 + v19, v13, &unk_1ECC09E40, &qword_1DAED68E0);
  if ((*(v6 + 48))(v13, 1, v5))
  {
    v20 = &unk_1ECC09E40;
    v21 = &qword_1DAED68E0;
    v22 = v13;
  }

  else
  {
    v24 = v35;
    v23 = v36;
    (*(v6 + 16))(v9, v13, v5);
    sub_1DAD64398(v13, &unk_1ECC09E40, &qword_1DAED68E0);
    sub_1DAED1B7C();
    (*(v6 + 8))(v9, v5);
    v25 = sub_1DAED1B1C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v17, 1, v25) != 1)
    {
      sub_1DAED1AFC();
      (*(v26 + 8))(v17, v25);
      sub_1DAED186C();
      v33 = v31;
      v34 = v32;
      (*(v24 + 8))(v4, v23);
      *&v27 = v33;
      v28 = 0;
      *(&v27 + 1) = v34;
      goto LABEL_6;
    }

    v20 = &unk_1ECC0A520;
    v21 = &unk_1DAED6D30;
    v22 = v17;
  }

  sub_1DAD64398(v22, v20, v21);
  v27 = 0uLL;
  v28 = 1;
LABEL_6:
  v29 = *(v37 + 48);
  v40 = *(v37 + 32);
  v41 = v29;
  v38 = v27;
  v39 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08718, &qword_1DAED6E68);
  return sub_1DAED078C();
}

uint64_t sub_1DADF7660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a1;
  v34 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08738, &qword_1DAED6F28);
  v4 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v31 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08740, &qword_1DAED6F30);
  v7 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08748, &qword_1DAED6F38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08750, &qword_1DAED6F40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v18 = *(v2 + 48);
  v41 = *(v2 + 32);
  v42 = v18;
  v19 = *(v2 + 48);
  v35 = *(v2 + 32);
  v36 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08718, &qword_1DAED6E68);
  sub_1DAED077C();
  if (v38 == 1)
  {
    v20 = *(v2 + 16);
  }

  v35 = v41;
  v36 = v42;
  sub_1DAED077C();
  if (v38 == 1)
  {
    v21 = *(v2 + 24);
  }

  sub_1DAED091C();
  sub_1DAECF15C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08758, &qword_1DAED6F48);
  (*(*(v22 - 8) + 16))(v6, v33, v22);
  v23 = &v6[*(v32 + 36)];
  v24 = v38;
  *v23 = v37;
  *(v23 + 1) = v24;
  *(v23 + 2) = v39;
  sub_1DAD7C48C(v6, v9, &qword_1ECC08738, &qword_1DAED6F28);
  *&v9[*(v31 + 36)] = 257;
  sub_1DAD7C48C(v9, v13, &qword_1ECC08740, &qword_1DAED6F30);
  *&v13[*(v10 + 36)] = 0;
  v40 = *(v3 + 64);
  v25 = v40;
  v26 = swift_allocObject();
  v27 = *(v3 + 48);
  *(v26 + 48) = *(v3 + 32);
  *(v26 + 64) = v27;
  *(v26 + 80) = *(v3 + 64);
  v28 = *(v3 + 16);
  *(v26 + 16) = *v3;
  *(v26 + 32) = v28;
  sub_1DAD7C48C(v13, v17, &qword_1ECC08748, &qword_1DAED6F38);
  *&v17[*(v14 + 52)] = v25;
  v29 = &v17[*(v14 + 56)];
  *v29 = sub_1DADF7D98;
  v29[1] = v26;
  sub_1DAD7C48C(v17, v34, &qword_1ECC08750, &qword_1DAED6F40);
  sub_1DADF7DBC(v3, &v35);
  return sub_1DAD6495C(&v40, &v35, &qword_1ECC09E60, &unk_1DAED6D20);
}

uint64_t sub_1DADF7A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v2 + 8);
  v4 = *v2;
  v5 = v2[1];
  return sub_1DADF7660(a1, a2);
}

uint64_t sub_1DADF7A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08680, &qword_1DAED6CC0);
  sub_1DAED076C();
  type metadata accessor for ActivityViewModel();
  sub_1DADF70F8(&qword_1EE007808, type metadata accessor for ActivityViewModel);

  v8 = sub_1DAECF21C();
  v10 = v9;
  v11 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);

  result = sub_1DADF72AC();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 49) = *v13;
  *(a2 + 52) = *&v13[3];
  *(a2 + 56) = v17;
  *(a2 + 64) = v11;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DADF7C1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DADF7C64(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1DADF7CC4()
{
  result = qword_1ECC08728;
  if (!qword_1ECC08728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08730, &qword_1DAED6ED0);
    sub_1DADF6E74();
    sub_1DAD64B94(&qword_1EE005B80, &unk_1ECC0A150, &unk_1DAED6CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08728);
  }

  return result;
}

uint64_t sub_1DADF7DF4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_assertion;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_assertion))
  {

    sub_1DAED0D4C();
  }

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger;
  v5 = sub_1DAECEDEC();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = *(v1 + v2);

  v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_reason + 8);

  v8 = *(*v1 + 48);
  v9 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DADF7EE4()
{
  if (*(*v0 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_assertion))
  {

    sub_1DAED0D4C();
  }

  return result;
}

void sub_1DADF7F40(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_1DADF7F98()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_1DADF7FDC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1DADF80A8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1DADF8138()
{
  v1 = v0;
  v2 = sub_1DAECDCEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  swift_beginAccess();
  v10 = *(v0 + 16);
  sub_1DAED0C5C();

  v11 = v28;
  sub_1DAD64398(&v26, &unk_1ECC08880, &unk_1DAED6F50);
  v12 = 0x746E6F6320736168;
  if (!v11)
  {
    v12 = 0x65746E6F63206F6ELL;
  }

  v13 = 0xEB00000000746E65;
  if (!v11)
  {
    v13 = 0xEA0000000000746ELL;
  }

  v29 = v12;
  v30 = v13;
  v14 = *(v1 + 16);
  v15 = sub_1DAED0BBC();
  v17 = v16;

  if (v17)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1DAED256C();

    v26 = 0xD000000000000014;
    v27 = 0x80000001DAEE15D0;
    MEMORY[0x1E127DA50](v15, v17);

    MEMORY[0x1E127DA50](v26, v27);
  }

  v18 = *(v1 + 16);
  sub_1DAED0B4C();

  if (v25)
  {
    sub_1DAD657D8(&v24, &v26);
    __swift_project_boxed_opaque_existential_1(&v26, v28);
    sub_1DAED177C();
    sub_1DAECDC3C();
    sub_1DAD722E0(&qword_1EE00BCF8, MEMORY[0x1E6969530]);
    v19 = sub_1DAED1CAC();
    v20 = *(v3 + 8);
    v20(v7, v2);
    v20(v9, v2);
    if ((v19 & 1) == 0)
    {
      *&v24 = 0;
      *(&v24 + 1) = 0xE000000000000000;
      sub_1DAED256C();

      *&v24 = 0xD000000000000015;
      *(&v24 + 1) = 0x80000001DAEE15B0;
      __swift_project_boxed_opaque_existential_1(&v26, v28);
      sub_1DAED177C();
      sub_1DAD722E0(&qword_1EE00BCF0, MEMORY[0x1E6969530]);
      v21 = sub_1DAED287C();
      MEMORY[0x1E127DA50](v21);

      v20(v9, v2);
      MEMORY[0x1E127DA50](v24, *(&v24 + 1));
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v26);
  }

  else
  {
    sub_1DAD64398(&v24, &unk_1ECC07DE0, &qword_1DAEDBED0);
  }

  swift_beginAccess();
  if (*(v1 + 24) == 1)
  {
    MEMORY[0x1E127DA50](0x746361646572202CLL, 0xEA00000000006465);
  }

  return v29;
}

uint64_t WidgetArchiveEntry.deinit()
{
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_archiveLastModifiedDate, &qword_1ECC07CE8, &qword_1DAED6F60);
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_assertions);

  return v0;
}

uint64_t WidgetArchiveEntry.__deallocating_deinit()
{
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_archiveLastModifiedDate, &qword_1ECC07CE8, &qword_1DAED6F60);
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_assertions);

  v2 = *(*v0 + 12);
  v3 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1DADF8790(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DAD85694(a1);
  }

  return result;
}

uint64_t sub_1DADF87F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v9 = *(v8 + 16);

  os_unfair_lock_lock(v9);
  sub_1DADF88A0(a2, a3, a1, a4);
  os_unfair_lock_unlock(*(v8 + 16));
}

uint64_t sub_1DADF88A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v7 = sub_1DAED0DDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v14 = OBJC_IVAR____TtC14WidgetRenderer18WidgetArchiveEntry_assertions;
  swift_beginAccess();

  v15 = sub_1DADFAB7C((a1 + v14));
  v39 = v4;

  v16 = *(a1 + v14);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v15)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    result = sub_1DAED247C();
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v16 < 0)
  {
    v32 = *(a1 + v14);
  }

  v17 = sub_1DAED247C();
  if (v17 < v15)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_1DADFAF14(v15, v17, type metadata accessor for WidgetArchiveEntryAssertion);
  swift_endAccess();
  v18 = *(a1 + v14);
  if (v18 >> 62)
  {
    goto LABEL_14;
  }

  result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    return result;
  }

LABEL_5:
  v20 = *(v8 + 16);
  v20(v13, v37, v7);
  v21 = sub_1DAECEDCC();
  v22 = sub_1DAED203C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v34 = v20;
    v24 = v23;
    v33 = swift_slowAlloc();
    v38 = v33;
    *v24 = 136446210;
    v25 = sub_1DAED0D8C();
    v35 = a3;
    v27 = v26;
    (*(v8 + 8))(v13, v7);
    v28 = sub_1DAD6482C(v25, v27, &v38);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1DAD61000, v21, v22, "Removing entry: %{public}s", v24, 0xCu);
    v29 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1E127F100](v29, -1, -1);
    v30 = v24;
    v20 = v34;
    MEMORY[0x1E127F100](v30, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v31 = v36;
  v20(v36, v37, v7);
  swift_beginAccess();
  sub_1DADD7FC8(0, v31);
  return swift_endAccess();
}

uint64_t sub_1DADF8C04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__logger;
  v4 = sub_1DAECEDEC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__environmentFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__descriptorProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__dataProtectionMonitor));
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__updateTimer, &qword_1ECC087A8, &unk_1DAED71F0);
  v5 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);

  v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage);

  v7 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_currentDataProtectionLevel;
  v8 = sub_1DAED18CC();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__subscriptions);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore_descriptorObserver));
  return v0;
}

uint64_t sub_1DADF8D5C()
{
  sub_1DADF8C04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_1DADF8DBC()
{
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_1DADF8F80(&v9, v0, &v10);
  os_unfair_lock_unlock(*(v1 + 16));

  v8[0] = v10;

  sub_1DADF9D80(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
  sub_1DAD64B94(&qword_1EE00BE10, &qword_1ECC08768, &qword_1DAEDCB70);
  v3 = sub_1DAED1C8C();
  v5 = v4;

  v8[0] = 0x203A746E756F43;
  v8[1] = 0xE700000000000000;
  v6 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v6);

  MEMORY[0x1E127DA50](10, 0xE100000000000000);
  MEMORY[0x1E127DA50](v3, v5);

  return v8[0];
}

uint64_t sub_1DADF8F80(void *a1, uint64_t a2, char **a3)
{
  v65 = a3;
  v68 = sub_1DAED0DDC();
  v5 = *(v68 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v68);
  v64 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08780, &qword_1DAED71C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v53 - v14;
  v15 = OBJC_IVAR____TtC14WidgetRenderer25WidgetArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v16 = *(a2 + v15);
  *a1 = *(v16 + 16);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v54 = (v18 + 63) >> 6;
  v55 = v5 + 16;
  v63 = (v5 + 32);
  v57 = v5;
  v58 = v16;
  v59 = (v5 + 8);

  v22 = 0;
  v60 = v17;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_13:
      v27 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v28 = v27 | (v23 << 6);
      v30 = v57;
      v29 = v58;
      v31 = v56;
      v32 = v68;
      (*(v57 + 16))(v56, *(v58 + 48) + *(v57 + 72) * v28, v68);
      v33 = *(*(v29 + 56) + 8 * v28);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08788, &qword_1DAED71C8);
      v35 = *(v34 + 48);
      v36 = *(v30 + 32);
      v26 = v62;
      v36(v62, v31, v32);
      *(v26 + v35) = v33;
      (*(*(v34 - 8) + 56))(v26, 0, 1, v34);

LABEL_14:
      v37 = v61;
      sub_1DAD8C374(v26, v61);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08788, &qword_1DAED71C8);
      if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
      {
      }

      v39 = *(v37 + *(v38 + 48));
      (*v63)(v64, v37, v68);
      v66 = sub_1DAED0D8C();
      v67 = v40;
      MEMORY[0x1E127DA50](8250, 0xE200000000000000);
      v41 = sub_1DADF8138();
      MEMORY[0x1E127DA50](v41);

      v42 = v66;
      v43 = v67;
      v44 = v65;
      v45 = *v65;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v44 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = sub_1DAD9BF68(0, *(v45 + 2) + 1, 1, v45);
        *v65 = v45;
      }

      v48 = *(v45 + 2);
      v47 = *(v45 + 3);
      if (v48 >= v47 >> 1)
      {
        v52 = sub_1DAD9BF68((v47 > 1), v48 + 1, 1, v45);
        *v65 = v52;
      }

      result = (*v59)(v64, v68);
      v49 = *v65;
      *(v49 + 2) = v48 + 1;
      v50 = &v49[16 * v48];
      *(v50 + 4) = v42;
      *(v50 + 5) = v43;
      v17 = v60;
      if (!v20)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v54 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v54;
    }

    v25 = v24 - 1;
    v26 = v62;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v54)
      {
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08788, &qword_1DAED71C8);
        (*(*(v51 - 8) + 56))(v26, 1, 1, v51);
        v20 = 0;
        v22 = v25;
        goto LABEL_14;
      }

      v20 = *(v17 + 8 * v23);
      ++v22;
      if (v20)
      {
        v22 = v23;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DADF947C()
{
  v1 = *v0;
  v2 = **v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08790, &qword_1DAED71D0);
  v4 = sub_1DAED1D4C();
  MEMORY[0x1E127DA50](45, 0xE100000000000000);
  MEMORY[0x1E127DA50](v1[5], v1[6]);
  return v4;
}

void *sub_1DADF955C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087D0, &qword_1DAED7228);
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
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087D8, &qword_1DAED7230);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DADF96A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087C8, &qword_1DAED7220);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DADF97B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08778, &qword_1DAED71B8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1DADF98C0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087C0, &unk_1DAED7210);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030) - 8);
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

size_t sub_1DADF9B00(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1DADF9CE0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1DAED247C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1DAED258C();
  *v1 = result;
  return result;
}

uint64_t sub_1DADF9D80(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DADFA9C4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DADF9DEC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1DADF9DEC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DAED286C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1DAED1EAC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DADF9FB4(v7, v8, a1, v4);
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
    return sub_1DADF9EE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DADF9EE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_1DAED289C(), (result & 1) == 0))
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

uint64_t sub_1DADF9FB4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1DADFA844(v8);
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
        sub_1DADFA590((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = MEMORY[0x1E69E7CC0];
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
        result = sub_1DAED289C();
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
            result = sub_1DAED289C();
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
      result = sub_1DADFA858(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1DADFA858((v39 > 1), v40 + 1, 1, v8);
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
        sub_1DADFA590((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DADFA844(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1DADFA7B8(v44);
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
    if (v37 || (result = sub_1DAED289C(), (result & 1) == 0))
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

uint64_t sub_1DADFA590(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1DAED289C() & 1) != 0)
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
      if (!v21 && (sub_1DAED289C() & 1) != 0)
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

uint64_t sub_1DADFA7B8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DADFA844(v3);
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

char *sub_1DADFA858(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08770, &qword_1DAED71B0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1DADFA960(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1DAED247C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1DAED258C();
}

uint64_t sub_1DADFA9EC()
{
  v1 = *(sub_1DAED0DDC() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1DADF87F0(v2, v3, v4, v5);
}

unint64_t sub_1DADFAA54(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v3 = sub_1DAED247C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E127E1F0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (Strong)
    {

      if (v6 == Strong)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

uint64_t sub_1DADFAB7C(unint64_t *a1)
{
  v5 = *a1;
  v6 = sub_1DADFAA54(*a1);
  v8 = v6;
  if (v1)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_1DAED247C();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_1DAED247C())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E127E1F0](v9, v5);
      goto LABEL_17;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    v13 = *(v5 + 8 * v9 + 32);

LABEL_17:
    swift_beginAccess();
    Strong = swift_weakLoadStrong();

    if (!Strong || (, v13 != Strong))
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v2 = MEMORY[0x1E127E1F0](v8, v5);
          v15 = MEMORY[0x1E127E1F0](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v16)
          {
            goto LABEL_48;
          }

          if (v9 >= v16)
          {
            goto LABEL_49;
          }

          v2 = *(v5 + 32 + 8 * v8);
          v15 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_1DADFA960(v5);
          v17 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v3 = v5 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v15;

        if ((v5 & 0x8000000000000000) != 0 || v17)
        {
          v5 = sub_1DADFA960(v5);
          v3 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_40:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v9 >= *(v3 + 16))
        {
          goto LABEL_46;
        }

LABEL_8:
        v10 = v3 + 8 * v9;
        v11 = *(v10 + 32);
        *(v10 + 32) = v2;

        *a1 = v5;
      }

      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_45;
      }
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return sub_1DAED247C();
}

uint64_t sub_1DADFADF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1DAED247C();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1DAED247C();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DADFAF14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1DAED247C();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = sub_1DAED247C();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_1DADF9CE0(result);
    return sub_1DADFADF8(v6, v5, 0, v3);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1DADFAFF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() sharedApplication];
    [AppDelegate applicationDidReceiveMemoryWarning:]_0();
  }
}

void sub_1DADFB070(uint64_t a1, void *a2)
{
  v4 = sub_1DAED18CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = objc_opt_self();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1DADFCB04;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_4;
  v10 = _Block_copy(aBlock);
  v11 = a2;

  [v7 bs:v10 performAfterSynchronizedCommit:?];
  _Block_release(v10);
}

uint64_t sub_1DADFB23C(int64_t a1, NSObject *a2)
{
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v4 = *(*(v113 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v113);
  v112 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v111 = &v101 - v7;
  v110 = sub_1DAED0DDC();
  v118 = *(v110 - 8);
  v8 = *(v118 + 8);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAED18CC();
  i = *(v10 - 8);
  v12 = i[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v101 - v16;
  if (qword_1EE00AC60 == -1)
  {
    goto LABEL_2;
  }

LABEL_62:
  swift_once();
LABEL_2:
  v18 = sub_1DAECEDEC();
  v19 = __swift_project_value_buffer(v18, qword_1EE011B88);
  (i[2])(v17, a1, v10);
  v20 = a2;
  v114 = v19;
  v21 = sub_1DAECEDCC();
  v22 = sub_1DAED203C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v126[0] = v117;
    *v23 = 136446466;
    sub_1DAD66C2C(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
    LODWORD(v116) = v22;
    v115 = v21;
    v24 = sub_1DAED287C();
    v26 = v25;
    v27 = i[1];
    v27(v17, v10);
    v28 = sub_1DAD6482C(v24, v26, v126);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2082;
    v29 = *(&v20->isa + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor__maxUnlockedProtectionLevelPublisher);
    sub_1DAECEE9C();
    v30 = sub_1DAED287C();
    v32 = v31;
    v27(v15, v10);
    v33 = sub_1DAD6482C(v30, v32, v126);

    *(v23 + 14) = v33;
    v34 = v115;
    _os_log_impl(&dword_1DAD61000, v115, v116, "Dumping window/widget state after layout/commit when changing data protection level to: %{public}s, current=%{public}s", v23, 0x16u);
    v35 = v117;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v35, -1, -1);
    MEMORY[0x1E127F100](v23, -1, -1);
  }

  else
  {

    (i[1])(v17, v10);
  }

  v36 = [objc_opt_self() sharedApplication];
  a2 = [v36 connectedScenes];

  v37 = sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
  sub_1DAD8D6A4(&qword_1EE00A890, qword_1EE00A898, 0x1E69DCE70);
  v38 = sub_1DAED1F6C();

  v117 = v37;
  if ((v38 & 0xC000000000000001) != 0)
  {
    sub_1DAED242C();
    sub_1DAED1F9C();
    v38 = v126[0];
    v40 = v126[1];
    v41 = v126[2];
    v10 = v126[3];
    v15 = v126[4];
  }

  else
  {
    v10 = 0;
    v42 = -1 << *(v38 + 32);
    v40 = v38 + 56;
    v41 = ~v42;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v15 = (v44 & *(v38 + 56));
  }

  v116 = v41;
  v45 = (v41 + 64) >> 6;
  v108 = (v118 + 8);
  *&v39 = 136447234;
  v107 = v39;
LABEL_12:
  for (i = &unk_1ECC07D30; (v38 & 0x8000000000000000) == 0; v15 = v118)
  {
    while (1)
    {
      v48 = v10;
      v49 = v15;
      a1 = v10;
      if (!v15)
      {
        while (1)
        {
          a1 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (a1 >= v45)
          {
            return sub_1DAD70B20();
          }

          v49 = *(v40 + 8 * a1);
          ++v48;
          if (v49)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_62;
      }

LABEL_22:
      v47 = (v49 - 1) & v49;
      a2 = *(*(v38 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v49)))));
      if (!a2)
      {
        return sub_1DAD70B20();
      }

LABEL_23:
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (v50)
      {
        break;
      }

      v10 = a1;
      v15 = v47;
      if (v38 < 0)
      {
        goto LABEL_15;
      }
    }

    v17 = v50;
    v118 = v47;
    if ([v50 delegate])
    {
      type metadata accessor for WidgetSceneDelegate();
      v51 = swift_dynamicCastClass();
      if (!v51 || (v52 = *(v51 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection)) == 0 || (v53 = *(v52 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController)) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_32;
      }

      v115 = *(v53 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v54 = a2;
      a2 = sub_1DAECEDCC();
      v55 = sub_1DAED203C();

      v106 = v55;
      if (os_log_type_enabled(a2, v55))
      {
        v105 = a2;
        v104 = v54;
        v56 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v125 = v102;
        *v56 = v107;
        v57 = [v17 _FBSScene];
        v58 = [v57 identifier];

        v59 = sub_1DAED1CEC();
        v61 = v60;

        v62 = sub_1DAD6482C(v59, v61, &v125);

        *(v56 + 4) = v62;
        *(v56 + 12) = 2082;
        v101 = v115 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
        sub_1DAD648F8(v115 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v122);
        v63 = v123;
        v64 = v124;
        __swift_project_boxed_opaque_existential_1(v122, v123);
        v65 = (*(v64 + 16))(v63, v64);
        v66 = v109;
        sub_1DAED0C3C();

        v67 = sub_1DAED0DBC();
        (*v108)(v66, v110);
        __swift_destroy_boxed_opaque_existential_1Tm(v122);
        v68 = sub_1DAED22BC();
        v70 = v69;

        v71 = sub_1DAD6482C(v68, v70, &v125);

        *(v56 + 14) = v71;
        v103 = v56;
        *(v56 + 22) = 2082;
        v72 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
        v73 = v115;
        swift_beginAccess();
        v74 = v73 + v72;
        v75 = v111;
        sub_1DAD6495C(v74, v111, &unk_1ECC07D30, &unk_1DAED57E0);
        v76 = v112;
        sub_1DAD6495C(v75, v112, &unk_1ECC07D30, &unk_1DAED57E0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          v78 = v75;
        }

        else
        {
          v78 = v76;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v79 = v76;
        }

        else
        {
          v79 = v75;
        }

        v80 = 0x6C6F686563616C50;
        if (EnumCaseMultiPayload != 1)
        {
          v80 = 0x7974706D45;
        }

        v81 = 0xEB00000000726564;
        if (EnumCaseMultiPayload != 1)
        {
          v81 = 0xE500000000000000;
        }

        v82 = EnumCaseMultiPayload == 0;
        if (EnumCaseMultiPayload)
        {
          v83 = v78;
        }

        else
        {
          v83 = v75;
        }

        if (v82)
        {
          v84 = 1702259020;
        }

        else
        {
          v76 = v79;
          v84 = v80;
        }

        if (v82)
        {
          v85 = 0xE400000000000000;
        }

        else
        {
          v85 = v81;
        }

        sub_1DAD64398(v83, &unk_1ECC07D30, &unk_1DAED57E0);
        sub_1DAD64398(v76, &unk_1ECC07D30, &unk_1DAED57E0);
        v86 = sub_1DAD6482C(v84, v85, &v125);

        v87 = v103;
        *(v103 + 24) = v86;
        *(v87 + 32) = 2082;
        v88 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewSequenceNumber;
        v89 = v115;
        swift_beginAccess();
        v122[0] = *(v89 + v88);
        sub_1DADFCBBC();
        v90 = sub_1DAED237C();
        v92 = sub_1DAD6482C(v90, v91, &v125);

        *(v87 + 34) = v92;
        *(v87 + 42) = 2082;
        sub_1DAD648F8(v101, v119);
        v93 = v120;
        v17 = v121;
        __swift_project_boxed_opaque_existential_1(v119, v120);
        v94 = (*(v17 + 2))(v93, v17);
        sub_1DAED0C5C();

        __swift_destroy_boxed_opaque_existential_1Tm(v119);
        v95 = v123;
        sub_1DAD64398(v122, &unk_1ECC08880, &unk_1DAED6F50);
        if (v95)
        {
          v96 = 5457241;
        }

        else
        {
          v96 = 20302;
        }

        if (v95)
        {
          v97 = 0xE300000000000000;
        }

        else
        {
          v97 = 0xE200000000000000;
        }

        v98 = sub_1DAD6482C(v96, v97, &v125);

        *(v87 + 44) = v98;
        v99 = v105;
        _os_log_impl(&dword_1DAD61000, v105, v106, "Scene[%{public}s-%{public}s] currentViewEntry=%{public}s, sequenceNumber=%{public}s, hasTimelineContentWired=%{public}s", v87, 0x34u);
        a2 = v102;
        swift_arrayDestroy();
        MEMORY[0x1E127F100](a2, -1, -1);
        MEMORY[0x1E127F100](v87, -1, -1);
        swift_unknownObjectRelease();

        v10 = a1;
        v15 = v118;
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

LABEL_32:
    v10 = a1;
  }

LABEL_15:
  v46 = sub_1DAED24BC();
  if (v46)
  {
    v119[0] = v46;
    swift_dynamicCast();
    a2 = v122[0];
    a1 = v10;
    v47 = v15;
    if (v122[0])
    {
      goto LABEL_23;
    }
  }

  return sub_1DAD70B20();
}
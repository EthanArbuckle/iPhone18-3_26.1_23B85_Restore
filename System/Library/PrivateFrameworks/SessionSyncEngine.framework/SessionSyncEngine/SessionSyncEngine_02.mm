uint64_t sub_2657DA98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  sub_2657F2314();
  v10 = *(v9 + 120);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  swift_unknownObjectRetain();

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657DAA7C(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2657F06A8;
  *(v6 + 24) = v5;
  v9[4] = sub_2657F06A0;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2657CF61C;
  v9[3] = &block_descriptor_373;
  v7 = _Block_copy(v9);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2657DABD8()
{
  v1 = *v0;
  sub_2657F2314();
  v2 = *(v1 + 120);

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657DAC68()
{
  v1 = *v0;
  sub_2657F2314();
  v2 = *(v1 + 120);

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657DACF4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(ObjectType, v2);
  sub_2657F2314();
  v5 = *(v1 + 120);

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t SyncEngine.syncService(_:didReceiveMessage:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(a3 + 16);
  v21[0] = *a3;
  v21[1] = v12;
  v22 = *(a3 + 32);
  v13 = *(v6 + 120);
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  v15 = *(a3 + 16);
  *(v14 + 40) = *a3;
  *(v14 + 56) = v15;
  *(v14 + 72) = *(a3 + 32);
  *(v14 + 80) = a4;
  *(v14 + 88) = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2657EF1D8;
  *(v16 + 24) = v14;
  aBlock[4] = sub_2657F06A0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2657CF61C;
  aBlock[3] = &block_descriptor_234;
  v17 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_2657CF2DC(v21, v19);

  dispatch_sync(v13, v17);
  _Block_release(v17);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  return result;
}

uint64_t SyncEngine.syncService(_:shouldAcceptIncomingMessage:from:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 4);
  v4 = *(v3 + 120);
  sub_2657F25C4();
  return v6;
}

uint64_t SyncEngine._queue_syncService(_:shouldAcceptIncomingMessage:from:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, unint64_t a5)
{
  v81 = a4;
  v9 = sub_2657F2414();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a3;
  v15 = a3[1];
  v82 = a3[2];
  v16 = a3[4];
  v80 = a3[3];
  v17 = *(v5 + 120);
  *v13 = v17;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v18 = v17;
  LOBYTE(v17) = sub_2657F2434();
  (*(v10 + 8))(v13, v9);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  if (*(v5 + 24) != a1 || (v15 != 0x69676E45636E7953 || v82 != 0xEA0000000000656ELL) && (sub_2657F2864() & 1) == 0)
  {
    return 0;
  }

  v20 = *(*(v5 + 216) + 16);

  os_unfair_lock_lock(v20);
  v22 = *(v5 + 224);
  v21 = *(v5 + 232);
  v23 = *(v5 + 240);

  os_unfair_lock_unlock(v20);

  if (!v21)
  {
    return 0;
  }

  v24 = *(v5 + 104);
  v25 = *(v5 + 112);
  v13 = v5;
  __swift_project_boxed_opaque_existential_1((v5 + 80), v24);
  if (((*(v25 + 16))(v24, v25) & 1) == 0)
  {

    if (qword_281446408 == -1)
    {
LABEL_16:
      v27 = sub_2657F2344();
      __swift_project_value_buffer(v27, qword_281446410);

      v28 = sub_2657F2334();
      v29 = sub_2657F2574();

      if (!os_log_type_enabled(v28, v29))
      {
LABEL_49:

        return 0;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v83 = v31;
      *v30 = 136380675;
      if (v13[26])
      {
        v32 = v13[25];
        v33 = v13[26];
      }

      else
      {
        v39 = IDSCopyLocalDeviceUniqueID();
        if (v39)
        {
          v40 = v39;
          v32 = sub_2657F2484();
          v33 = v41;
        }

        else
        {
          v32 = 0xD000000000000017;
          v33 = 0x80000002657F8510;
        }
      }

      v62 = sub_2657B7F9C(v32, v33, &v83);

      *(v30 + 4) = v62;
      _os_log_impl(&dword_2657B5000, v28, v29, "(%{private}s) Rejecting incoming message because keybag is locked", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v63 = v31;
LABEL_48:
      MEMORY[0x266760A30](v63, -1, -1);
      MEMORY[0x266760A30](v30, -1, -1);
      goto LABEL_49;
    }

LABEL_62:
    swift_once();
    goto LABEL_16;
  }

  if ((~*(v5 + 248) & 3) != 0)
  {

    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v34 = sub_2657F2344();
    __swift_project_value_buffer(v34, qword_281446410);

    v28 = sub_2657F2334();
    v35 = sub_2657F2574();

    if (!os_log_type_enabled(v28, v35))
    {
      goto LABEL_49;
    }

    v30 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v85 = v36;
    *v30 = 136380931;
    if (*(v5 + 208))
    {
      v37 = *(v5 + 200);
      v38 = *(v5 + 208);
    }

    else
    {
      v59 = IDSCopyLocalDeviceUniqueID();
      if (v59)
      {
        v60 = v59;
        v37 = sub_2657F2484();
        v38 = v61;
      }

      else
      {
        v38 = 0x80000002657F8510;
        v37 = 0xD000000000000017;
      }
    }

    v64 = sub_2657B7F9C(v37, v38, &v85);

    *(v30 + 4) = v64;
    *(v30 + 12) = 2082;
    v65 = *(v5 + 248);
    v83 = 0;
    v84 = 0xE000000000000000;
    if (v65)
    {
      MEMORY[0x26675FFF0](0xD000000000000010, 0x80000002657F8030);
    }

    if ((v65 & 2) != 0)
    {
      MEMORY[0x26675FFF0](0xD000000000000012, 0x80000002657F8010);
    }

    v66 = sub_2657B7F9C(v83, v84, &v85);

    *(v30 + 14) = v66;
    _os_log_impl(&dword_2657B5000, v28, v35, "(%{private}s) Rejecting incoming message because the sync engine is disabled: %{public}s", v30, 0x16u);
    swift_arrayDestroy();
    v63 = v36;
    goto LABEL_48;
  }

  v79 = v23;
  v26 = a5;
  if ((v22 != v81 || v21 != a5) && (sub_2657F2864() & 1) == 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v53 = sub_2657F2344();
    __swift_project_value_buffer(v53, qword_281446410);

    v46 = sub_2657F2334();
    v54 = sub_2657F2574();

    if (os_log_type_enabled(v46, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v83 = v56;
      *v55 = 136381187;
      if (v13[26])
      {
        v57 = v13[25];
        v58 = v13[26];
      }

      else
      {
        v82 = 0;
        v70 = IDSCopyLocalDeviceUniqueID();
        if (v70)
        {
          v71 = v70;
          v57 = sub_2657F2484();
          v58 = v72;
        }

        else
        {
          v57 = 0xD000000000000017;
          v58 = 0x80000002657F8510;
        }
      }

      v76 = sub_2657B7F9C(v57, v58, &v83);

      *(v55 + 4) = v76;
      *(v55 + 12) = 2082;
      *(v55 + 14) = sub_2657B7F9C(v81, v26, &v83);
      *(v55 + 22) = 2082;
      v77 = sub_2657B7F9C(v22, v21, &v83);

      *(v55 + 24) = v77;
      _os_log_impl(&dword_2657B5000, v46, v54, "(%{private}s) Rejecting message; not from active device: deviceIdentifier=%{public}s; pairedDevice=%{public}s", v55, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266760A30](v56, -1, -1);
      v75 = v55;
LABEL_59:
      MEMORY[0x266760A30](v75, -1, -1);
      goto LABEL_60;
    }

LABEL_60:

    return 0;
  }

  if (!v14)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v42 = sub_2657F2344();
    __swift_project_value_buffer(v42, qword_281446410);

    v43 = v80;
    v44 = v16;
    sub_2657BB26C(v80, v16);

    sub_2657BB26C(v43, v16);

    v45 = v5;
    v46 = sub_2657F2334();
    v47 = sub_2657F2574();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v83 = v49;
      *v48 = 136381187;
      v50 = *(v45 + 208);
      v81 = v49;
      if (v50)
      {
        v51 = *(v45 + 200);
        v52 = v50;
      }

      else
      {
        v67 = IDSCopyLocalDeviceUniqueID();
        if (v67)
        {
          v68 = v67;
          v51 = sub_2657F2484();
          v52 = v69;
        }

        else
        {
          v51 = 0xD000000000000017;
          v52 = 0x80000002657F8510;
        }

        v43 = v80;
      }

      v73 = sub_2657B7F9C(v51, v52, &v83);

      *(v48 + 4) = v73;
      *(v48 + 12) = 2050;

      sub_2657BB314(v43, v44);
      *(v48 + 14) = 0;

      sub_2657BB314(v43, v44);
      *(v48 + 22) = 2050;

      *(v48 + 24) = (v79 >> 8) & 1;

      _os_log_impl(&dword_2657B5000, v46, v47, "(%{private}s) Rejecting message; version number not supported: versionNumber=%{public}ld; currentVersionNumber=%{public}ld", v48, 0x20u);
      v74 = v81;
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x266760A30](v74, -1, -1);
      v75 = v48;
      goto LABEL_59;
    }

    sub_2657BB314(v43, v16);

    sub_2657BB314(v43, v16);
    goto LABEL_60;
  }

  return 1;
}

uint64_t SyncEngine.syncService(_:didSendWithRequestIdentifier:error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = *(v5 + 120);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;
  v13[7] = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2657EF23C;
  *(v14 + 24) = v13;
  v18[4] = sub_2657F06A0;
  v18[5] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_2657CF61C;
  v18[3] = &block_descriptor_244;
  v15 = _Block_copy(v18);

  swift_unknownObjectRetain();

  v16 = a5;

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

void sub_2657DBB84(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, void *a5)
{
  v118 = a4;
  v119 = a5;
  v117 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v116 = &v114 - v9;
  v10 = sub_2657F2414();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v14 = (&v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v5 + 120);
  *v14 = v15;
  v16 = *MEMORY[0x277D85200];
  v17 = v11[13];
  (v17)(v14, v16, v10);
  v115 = v15;
  v18 = sub_2657F2434();
  v19 = v11[1];
  v19(v14, v10);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  v18 = v5;
  if (*(v5 + 24) != a1)
  {
    if (qword_281446408 == -1)
    {
LABEL_4:
      v20 = sub_2657F2344();
      __swift_project_value_buffer(v20, qword_281446410);

      v21 = sub_2657F2334();
      v22 = sub_2657F2574();

      if (!os_log_type_enabled(v21, v22))
      {
LABEL_41:

        return;
      }

      v23 = v18;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v121[0] = v25;
      *v24 = 136380675;
      v26 = *(v23 + 208);
      if (v26)
      {
        v27 = *(v23 + 200);
        v28 = v26;
      }

      else
      {
        v44 = IDSCopyLocalDeviceUniqueID();
        if (v44)
        {
          v45 = v44;
          v27 = sub_2657F2484();
          v28 = v46;
        }

        else
        {
          v27 = 0xD000000000000017;
          v28 = 0x80000002657F8510;
        }
      }

      v57 = sub_2657B7F9C(v27, v28, v121);

      *(v24 + 4) = v57;
      v58 = "(%{private}s) Ignoring message send callback as it is from an unknown sync service";
      goto LABEL_39;
    }

LABEL_70:
    swift_once();
    goto LABEL_4;
  }

  if ((~*(v5 + 248) & 3) != 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v39 = sub_2657F2344();
    __swift_project_value_buffer(v39, qword_281446410);

    v21 = sub_2657F2334();
    v22 = sub_2657F2574();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_41;
    }

    v40 = v18;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v121[0] = v25;
    *v24 = 136380675;
    v41 = *(v40 + 208);
    if (v41)
    {
      v42 = *(v40 + 200);
      v43 = v41;
    }

    else
    {
      v59 = IDSCopyLocalDeviceUniqueID();
      if (v59)
      {
        v60 = v59;
        v42 = sub_2657F2484();
        v43 = v61;
      }

      else
      {
        v42 = 0xD000000000000017;
        v43 = 0x80000002657F8510;
      }
    }

    v71 = sub_2657B7F9C(v42, v43, v121);

    *(v24 + 4) = v71;
    v58 = "(%{private}s) Ignoring message send callback as the sync engine is disabled";
LABEL_39:
    _os_log_impl(&dword_2657B5000, v21, v22, v58, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x266760A30](v25, -1, -1);
    v72 = v24;
LABEL_40:
    MEMORY[0x266760A30](v72, -1, -1);
    goto LABEL_41;
  }

  v29 = v119;
  if (v119)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v30 = sub_2657F2344();
    __swift_project_value_buffer(v30, qword_281446410);

    v31 = v29;
    v21 = sub_2657F2334();
    v32 = v18;
    v33 = sub_2657F2574();

    if (!os_log_type_enabled(v21, v33))
    {
      goto LABEL_41;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v121[0] = v35;
    *v34 = 136380931;
    v36 = *(v32 + 208);
    if (v36)
    {
      v37 = *(v32 + 200);
      v38 = v36;
    }

    else
    {
      v62 = IDSCopyLocalDeviceUniqueID();
      if (v62)
      {
        v63 = v62;
        v37 = sub_2657F2484();
        v38 = v64;
      }

      else
      {
        v37 = 0xD000000000000017;
        v38 = 0x80000002657F8510;
      }
    }

    v89 = sub_2657B7F9C(v37, v38, v121);

    *(v34 + 4) = v89;
    *(v34 + 12) = 2082;
    v120[0] = v119;
    v90 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C98, qword_2657F5398);
    v91 = sub_2657F24A4();
    v93 = sub_2657B7F9C(v91, v92, v121);

    *(v34 + 14) = v93;
    _os_log_impl(&dword_2657B5000, v21, v33, "(%{private}s) Error in didSendWithRequestIdentifier sending record modifications: %{public}s", v34, 0x16u);
    swift_arrayDestroy();
    v94 = v35;
    goto LABEL_53;
  }

  swift_beginAccess();
  v47 = *(v5 + 168);
  v48 = v118;
  if (!*(v47 + 16))
  {
LABEL_32:
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v65 = sub_2657F2344();
    __swift_project_value_buffer(v65, qword_281446410);

    v21 = sub_2657F2334();
    v66 = sub_2657F2574();

    if (!os_log_type_enabled(v21, v66))
    {
      goto LABEL_41;
    }

    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v120[0] = v68;
    *v67 = 136380931;
    if (*(v18 + 208))
    {
      v69 = *(v18 + 200);
      v70 = *(v18 + 208);
    }

    else
    {
      v86 = IDSCopyLocalDeviceUniqueID();
      if (v86)
      {
        v87 = v86;
        v69 = sub_2657F2484();
        v70 = v88;
      }

      else
      {
        v69 = 0xD000000000000017;
        v70 = 0x80000002657F8510;
      }
    }

    v98 = sub_2657B7F9C(v69, v70, v120);

    *(v67 + 4) = v98;
    *(v67 + 12) = 2082;
    *(v67 + 14) = sub_2657B7F9C(v117, v118, v120);
    _os_log_impl(&dword_2657B5000, v21, v66, "(%{private}s) Ignoring message send callback as we have no metadata for the request identifier: %{public}s", v67, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266760A30](v68, -1, -1);
    v72 = v67;
    goto LABEL_40;
  }

  v49 = *(v18 + 168);

  v50 = sub_2657C8374(v117, v48);
  if ((v51 & 1) == 0)
  {

    goto LABEL_32;
  }

  v52 = *(*(v47 + 56) + 8 * v50);

  v53 = *(v18 + 184);
  v54 = v52[2];
  v55 = *(v53 + 16);
  v119 = v52;
  if (v54 <= v55 >> 3)
  {
    v120[0] = v53;

    sub_2657ECF6C(v52);
    v56 = v120[0];
  }

  else
  {

    v56 = sub_2657ED164(v52, v53);
  }

  v73 = *(v18 + 184);
  *(v18 + 184) = v56;

  swift_beginAccess();
  v74 = v118;

  sub_2657C14F4(0, v117, v74);
  swift_endAccess();
  v75 = sub_2657F22A4();
  (*(*(v75 - 8) + 56))(v116, 1, 1, v75);
  swift_beginAccess();

  sub_2657C163C(v116, v117, v74);
  swift_endAccess();
  v76 = v115;
  *v14 = v115;
  (v17)(v14, v16, v10);
  v77 = v76;
  LOBYTE(v76) = sub_2657F2434();
  v19(v14, v10);
  if (v76)
  {
    sub_2657E4F94();
    sub_2657EA2F0();
    v17 = v119;
    if (qword_281446408 == -1)
    {
      goto LABEL_45;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_45:
  v78 = sub_2657F2344();
  v79 = __swift_project_value_buffer(v78, qword_281446410);
  swift_retain_n();

  v118 = v79;
  v80 = sub_2657F2334();
  v81 = sub_2657F2584();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = v18;
    v83 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v120[0] = v117;
    *v83 = 136381187;
    if (v82[26])
    {
      v84 = v82[25];
      v85 = v82[26];
    }

    else
    {
      v95 = IDSCopyLocalDeviceUniqueID();
      if (v95)
      {
        v96 = v95;
        v84 = sub_2657F2484();
        v85 = v97;
      }

      else
      {
        v84 = 0xD000000000000017;
        v85 = 0x80000002657F8510;
      }
    }

    v99 = sub_2657B7F9C(v84, v85, v120);

    *(v83 + 4) = v99;
    *(v83 + 12) = 2050;
    v100 = v17[2];

    *(v83 + 14) = v100;

    *(v83 + 22) = 2050;
    v101 = *(v82[23] + 16);

    *(v83 + 24) = v101;

    _os_log_impl(&dword_2657B5000, v80, v81, "(%{private}s) Removed %{public}ld records; %{public}ld remaining", v83, 0x20u);
    v102 = v117;
    __swift_destroy_boxed_opaque_existential_1(v117);
    MEMORY[0x266760A30](v102, -1, -1);
    MEMORY[0x266760A30](v83, -1, -1);

    v18 = v82;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  swift_retain_n();
  v21 = sub_2657F2334();
  v103 = v18;
  v104 = sub_2657F2584();
  if (os_log_type_enabled(v21, v104))
  {
    v34 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v120[0] = v105;
    *v34 = 136380931;
    if (v103[26])
    {
      v106 = v103[25];
      v107 = v103[26];
    }

    else
    {
      v108 = v103;
      v109 = IDSCopyLocalDeviceUniqueID();
      if (v109)
      {
        v110 = v109;
        v106 = sub_2657F2484();
        v107 = v111;
      }

      else
      {
        v106 = 0xD000000000000017;
        v107 = 0x80000002657F8510;
      }

      v103 = v108;
    }

    v112 = sub_2657B7F9C(v106, v107, v120);

    *(v34 + 4) = v112;
    *(v34 + 12) = 2050;
    v113 = *(v103[21] + 16);

    *(v34 + 14) = v113;

    _os_log_impl(&dword_2657B5000, v21, v104, "(%{private}s) %{public}ld outstanding request identifiers", v34, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v105);
    v94 = v105;
LABEL_53:
    MEMORY[0x266760A30](v94, -1, -1);
    v72 = v34;
    goto LABEL_40;
  }
}

uint64_t SyncEngine.syncService(_:didUpdatePairedDevice:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = *a3;
  v7 = a3[1];
  v9 = *(a3 + 8);
  v10 = *(v3 + 120);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = v8;
  *(v11 + 48) = v7;
  *(v11 + 56) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2657EF26C;
  *(v12 + 24) = v11;
  v15[4] = sub_2657F06A0;
  v15[5] = v12;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2657CF61C;
  v15[3] = &block_descriptor_254;
  v13 = _Block_copy(v15);

  swift_unknownObjectRetain();

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_2657DC9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_2657F2414();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v39[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 16);
  v15 = *(v4 + 120);
  *v11 = v15;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v16 = v15;
  LOBYTE(v15) = sub_2657F2434();
  (*(v8 + 8))(v11, v7);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_4:
    v17 = sub_2657F2344();
    __swift_project_value_buffer(v17, qword_281446410);

    v18 = sub_2657F2334();
    v19 = sub_2657F2574();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39[0] = v21;
      *v20 = 136380675;
      v22 = *(v4 + 208);
      if (v22)
      {
        v23 = *(v4 + 200);
        v24 = v22;
      }

      else
      {
        v29 = IDSCopyLocalDeviceUniqueID();
        if (v29)
        {
          v30 = v29;
          v23 = sub_2657F2484();
          v24 = v31;
        }

        else
        {
          v23 = 0xD000000000000017;
          v24 = 0x80000002657F8510;
        }
      }

      v32 = sub_2657B7F9C(v23, v24, v39);

      *(v20 + 4) = v32;
      v33 = "(%{private}s) Ignoring message send callback as it is from an unknown sync service";
LABEL_22:
      _os_log_impl(&dword_2657B5000, v18, v19, v33, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x266760A30](v21, -1, -1);
      MEMORY[0x266760A30](v20, -1, -1);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (*(v4 + 24) != a1)
  {
    if (qword_281446408 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  if ((~*(v4 + 248) & 3) == 0)
  {
    v39[0] = v12;
    v39[1] = v13;
    v40 = v14;
    sub_2657DCE48(v39);
    return;
  }

  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v25 = sub_2657F2344();
  __swift_project_value_buffer(v25, qword_281446410);

  v18 = sub_2657F2334();
  v19 = sub_2657F2574();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v39[0] = v21;
    *v20 = 136380675;
    v26 = *(v4 + 208);
    if (v26)
    {
      v27 = *(v4 + 200);
      v28 = v26;
    }

    else
    {
      v34 = IDSCopyLocalDeviceUniqueID();
      if (v34)
      {
        v35 = v34;
        v27 = sub_2657F2484();
        v28 = v36;
      }

      else
      {
        v27 = 0xD000000000000017;
        v28 = 0x80000002657F8510;
      }
    }

    v37 = sub_2657B7F9C(v27, v28, v39);

    *(v20 + 4) = v37;
    v33 = "(%{private}s) Ignoring message send callback as the sync engine is disabled";
    goto LABEL_22;
  }

LABEL_23:
}

uint64_t sub_2657DCDBC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 4);
  v4 = *(v3 + 120);
  sub_2657F25C4();
  return v6;
}

void sub_2657DCE48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2657F2414();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(v2 + 120);
  *v8 = v12;
  v14 = v5 + 104;
  v13 = v5[13];
  v75 = *MEMORY[0x277D85200];
  v74 = v13;
  v13(v8);
  v72 = v12;
  LOBYTE(v12) = sub_2657F2434();
  v73 = v5[1];
  v73(v8, v4);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v70 = v5 + 13;
  v71 = v4;
  v76 = v11;
  v15 = *(*(v2 + 216) + 16);

  os_unfair_lock_lock(v15);
  v17 = *(v2 + 224);
  v16 = *(v2 + 232);
  v18 = *(v2 + 240);

  os_unfair_lock_unlock(v15);

  v4 = 0x281446000uLL;
  if (!v9)
  {
    if (!v16)
    {

      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (!v16)
  {

LABEL_12:
    v14 = v76;

    goto LABEL_13;
  }

  v14 = v76;
  if ((v10 != v17 || v9 != v16) && (sub_2657F2864() & 1) == 0 || v18 != v14)
  {
    swift_bridgeObjectRetain_n();

    swift_bridgeObjectRelease_n();
    goto LABEL_13;
  }

  if ((((v18 & 0x100) == 0) ^ ((v14 & 0x100) >> 8)))
  {
LABEL_22:
    if ((~*(v2 + 248) & 3) == 0)
    {
      return;
    }

    goto LABEL_31;
  }

LABEL_13:
  if (qword_281446408 != -1)
  {
LABEL_43:
    swift_once();
  }

  v19 = sub_2657F2344();
  __swift_project_value_buffer(v19, qword_281446410);

  v20 = sub_2657F2334();
  v21 = sub_2657F2584();

  if (os_log_type_enabled(v20, v21))
  {
    v67 = v21;
    v69 = v10;
    v22 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v80 = v66;
    *v22 = 136381187;
    v23 = *(v2 + 208);
    v68 = v20;
    if (v23)
    {
      v24 = *(v2 + 200);
      v25 = v23;
    }

    else
    {
      v26 = IDSCopyLocalDeviceUniqueID();
      if (v26)
      {
        v27 = v26;
        v24 = sub_2657F2484();
        v25 = v28;
      }

      else
      {
        v24 = 0xD000000000000017;
        v25 = 0x80000002657F8510;
      }
    }

    v29 = sub_2657B7F9C(v24, v25, &v80);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2082;
    v30 = *(*(v2 + 216) + 16);

    os_unfair_lock_lock(v30);
    v32 = *(v2 + 224);
    v31 = *(v2 + 232);
    v33 = *(v2 + 240);

    os_unfair_lock_unlock(v30);

    v77 = v32;
    v78 = v31;
    v79 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023900, &qword_2657F42F0);
    v34 = sub_2657F24A4();
    v36 = sub_2657B7F9C(v34, v35, &v80);

    *(v22 + 14) = v36;
    *(v22 + 22) = 2082;
    v10 = v69;
    v77 = v69;
    v78 = v9;
    v14 = v76;
    v79 = v76;

    v37 = sub_2657F24A4();
    v39 = sub_2657B7F9C(v37, v38, &v80);

    *(v22 + 24) = v39;
    v40 = v68;
    _os_log_impl(&dword_2657B5000, v68, v67, "(%{private}s) Paired device changed from %{public}s to %{public}s ", v22, 0x20u);
    v41 = v66;
    swift_arrayDestroy();
    MEMORY[0x266760A30](v41, -1, -1);
    MEMORY[0x266760A30](v22, -1, -1);

    v4 = 0x281446000;
  }

  else
  {
  }

  v42 = v75;
  v43 = v74;
  v45 = v71;
  v44 = v72;
  *v8 = v72;
  v43(v8, v42, v45);
  v46 = v44;
  LOBYTE(v44) = sub_2657F2434();
  v73(v8, v45);
  if ((v44 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v47 = *(v2 + 128);
  v48 = *(v2 + 136);
  ObjectType = swift_getObjectType();
  (*(v48 + 24))(ObjectType, v48);
  v50 = *(*(v2 + 216) + 16);

  os_unfair_lock_lock(v50);
  v51 = *(v2 + 232);
  *(v2 + 224) = v10;
  *(v2 + 232) = v9;
  *(v2 + 240) = v14;

  os_unfair_lock_unlock(v50);

  if ((~*(v2 + 248) & 3) == 0)
  {
    sub_2657DA250();
    if (v9)
    {
      v52 = *(v2 + 64);
      v53 = *(v2 + 72);
      __swift_project_boxed_opaque_existential_1((v2 + 40), v52);
      if ((*(v53 + 136))(v10, v9, v52, v53))
      {
        LOBYTE(v77) = HIBYTE(v14) & 1;
        sub_2657B8A48(v10, v9, &v77);
      }

      else
      {
        LOBYTE(v77) = HIBYTE(v14) & 1;
        sub_2657E4628(v10, v9, &v77);
      }
    }

    return;
  }

LABEL_31:
  if (*(v4 + 1032) != -1)
  {
LABEL_45:
    swift_once();
  }

  v54 = sub_2657F2344();
  __swift_project_value_buffer(v54, qword_281446410);

  v55 = sub_2657F2334();
  v56 = sub_2657F2584();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v77 = v58;
    *v57 = 136380675;
    v59 = *(v2 + 208);
    if (v59)
    {
      v60 = *(v2 + 200);
      v61 = v59;
    }

    else
    {
      v62 = IDSCopyLocalDeviceUniqueID();
      if (v62)
      {
        v63 = v62;
        v60 = sub_2657F2484();
        v61 = v64;
      }

      else
      {
        v60 = 0xD000000000000017;
        v61 = 0x80000002657F8510;
      }
    }

    v65 = sub_2657B7F9C(v60, v61, &v77);

    *(v57 + 4) = v65;
    _os_log_impl(&dword_2657B5000, v55, v56, "(%{private}s) Ignoring paired device/enabled channge as the sync engine is not available", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x266760A30](v58, -1, -1);
    MEMORY[0x266760A30](v57, -1, -1);
  }
}

void sub_2657DD5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2657F2414();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(v4 + 120);
  *v12 = v16;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v17 = v16;
  LOBYTE(v16) = sub_2657F2434();
  (*(v9 + 8))(v12, v8);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_5;
  }

  if ((~*(v4 + 248) & 3) == 0)
  {
    v18 = sub_2657F21B4();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_2657F21A4();
    sub_2657F0480();
    sub_2657F2194();
    v29 = v37;
    if (v38 > 1u)
    {
      if (v38 == 2)
      {
        v38 = 2;
        v36[0] = v37 & 1;
        v35 = v13;
        sub_2657D3AC0(v37, *(&v37 + 1), 2u);
        sub_2657DDC2C(&v37, v36, *(&v29 + 1), a2, a3, &v35);

        sub_2657D3E70(v29, *(&v29 + 1), 2u);
        sub_2657D3E70(v29, *(&v29 + 1), 2u);
      }

      else
      {
        v38 = 3;
        v36[0] = v13;
        if (v37 == 0)
        {
          sub_2657DE2E4(&v37, a2, a3, v36);
        }

        else
        {
          sub_2657DE5E0(&v37, a2, a3, v36);
        }

        sub_2657D3E70(v29, *(&v29 + 1), 3u);
      }
    }

    else if (v38)
    {
      v38 = 1;
      v36[0] = v13;
      sub_2657D3AC0(v37, *(&v37 + 1), 1u);
      sub_2657DE8EC(&v37, v29, *(&v29 + 1), a2, a3, v36);

      sub_2657D3E70(v29, *(&v29 + 1), 1u);
    }

    else
    {
      v38 = 0;
      v36[0] = v13;
      sub_2657D3AC0(v37, *(&v37 + 1), 0);
      sub_2657DEFA0(&v37, v29, *(&v29 + 1), a2, a3, v36);

      sub_2657D3E70(v29, *(&v29 + 1), 0);
    }

    return;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_24;
  }

LABEL_5:
  v21 = sub_2657F2344();
  __swift_project_value_buffer(v21, qword_281446410);

  v22 = sub_2657F2334();
  v23 = sub_2657F2574();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v37 = v25;
    *v24 = 136380675;
    v26 = *(v4 + 208);
    if (v26)
    {
      v27 = *(v4 + 200);
      v28 = v26;
    }

    else
    {
      v30 = IDSCopyLocalDeviceUniqueID();
      if (v30)
      {
        v31 = v30;
        v27 = sub_2657F2484();
        v28 = v32;
      }

      else
      {
        v27 = 0xD000000000000017;
        v28 = 0x80000002657F8510;
      }
    }

    v33 = sub_2657B7F9C(v27, v28, &v37);

    *(v24 + 4) = v33;
    _os_log_impl(&dword_2657B5000, v22, v23, "(%{private}s) Will not handle message because sync is inactive", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x266760A30](v25, -1, -1);
    MEMORY[0x266760A30](v24, -1, -1);
  }
}

uint64_t sub_2657DDC2C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v7 = v6;
  v75 = a4;
  v76 = a3;
  v11 = sub_2657F22A4();
  v73 = *(v11 - 8);
  v12 = *(v73 + 64);
  MEMORY[0x28223BE20](v11);
  v72 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2657F2414();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a1;
  v70 = *(a1 + 8);
  v71 = v19;
  LODWORD(a1) = *(a1 + 16);
  v21 = *a2;
  v22 = *a6;
  v23 = *(v7 + 120);
  *v18 = v23;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v24 = v23;
  LOBYTE(v23) = sub_2657F2434();
  (*(v15 + 8))(v18, v14);
  if (v23)
  {
    v69 = v22;
    v74 = a5;
    if (qword_281446408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v25 = sub_2657F2344();
  v26 = __swift_project_value_buffer(v25, qword_281446410);

  v27 = sub_2657F2334();
  v28 = sub_2657F2584();

  if (os_log_type_enabled(v27, v28))
  {
    v68 = v11;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v78[0] = v30;
    *v29 = 136380931;
    v31 = *(v7 + 208);
    v67 = a1;
    if (v31)
    {
      v32 = *(v7 + 200);
      v33 = v31;
    }

    else
    {
      v66[1] = v26;
      v34 = IDSCopyLocalDeviceUniqueID();
      if (v34)
      {
        v35 = v34;
        v32 = sub_2657F2484();
        v33 = v36;
      }

      else
      {
        v32 = 0xD000000000000017;
        v33 = 0x80000002657F8510;
      }
    }

    v37 = sub_2657B7F9C(v32, v33, v78);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2082;
    if (v21)
    {
      v38 = 0x6563616C706572;
    }

    else
    {
      v38 = 0x657461647075;
    }

    if (v21)
    {
      v39 = 0xE700000000000000;
    }

    else
    {
      v39 = 0xE600000000000000;
    }

    a1 = sub_2657B7F9C(v38, v39, v78);

    *(v29 + 14) = a1;
    _os_log_impl(&dword_2657B5000, v27, v28, "(%{private}s) Received ack message for action %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266760A30](v30, -1, -1);
    MEMORY[0x266760A30](v29, -1, -1);

    v11 = v68;
    LOBYTE(a1) = v67;
  }

  else
  {
  }

  v40 = *(v7 + 256);
  v41 = v74;
  v42 = v75;
  if (v40)
  {
    v43 = *(v7 + 264);
    v78[0] = v71;
    v78[1] = v70;
    v79 = a1;
    v77 = v21;

    v40(v78, &v77, v76, v42, v41);
    sub_2657BA1AC(v40);
  }

  if (v21)
  {

    v44 = sub_2657F2334();
    v45 = sub_2657F2584();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v11;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v78[0] = v48;
      *v47 = 136380675;
      if (*(v7 + 208))
      {
        v49 = *(v7 + 200);
        v50 = *(v7 + 208);
      }

      else
      {
        v51 = IDSCopyLocalDeviceUniqueID();
        if (v51)
        {
          v52 = v51;
          v49 = sub_2657F2484();
          v50 = v53;
        }

        else
        {
          v49 = 0xD000000000000017;
          v50 = 0x80000002657F8510;
        }
      }

      v54 = sub_2657B7F9C(v49, v50, v78);

      *(v47 + 4) = v54;
      _os_log_impl(&dword_2657B5000, v44, v45, "(%{private}s) Paired device has performed an initial sync", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x266760A30](v48, -1, -1);
      MEMORY[0x266760A30](v47, -1, -1);

      v11 = v46;
      v41 = v74;
      v42 = v75;
    }

    else
    {
    }

    v55 = *(v7 + 64);
    v56 = *(v7 + 72);
    __swift_project_boxed_opaque_existential_1((v7 + 40), v55);
    (*(v56 + 144))(v42, v41, v55, v56);
  }

  v57 = v72;
  sub_2657F2284();
  v58 = *(v7 + 16);
  v59 = *(v7 + 64);
  v60 = *(v7 + 72);
  __swift_project_boxed_opaque_existential_1((v7 + 40), v59);
  if (v58)
  {
    (*(v60 + 64))(v57, v76, v42, v41, v59, v60);
    v61 = *(v7 + 64);
    v62 = *(v7 + 72);
    __swift_project_boxed_opaque_existential_1((v7 + 40), v61);
    if (((*(v62 + 136))(v42, v41, v61, v62) & 1) == 0)
    {
      LOBYTE(v78[0]) = v69;
      sub_2657E4628(v42, v41, v78);
    }
  }

  else if ((*(v60 + 136))(v42, v41, v59, v60))
  {
    v63 = *(v7 + 64);
    v64 = *(v7 + 72);
    __swift_project_boxed_opaque_existential_1((v7 + 40), v63);
    (*(v64 + 64))(v57, v76, v42, v41, v63, v64);
  }

  return (*(v73 + 8))(v57, v11);
}

void sub_2657DE2E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v9 = sub_2657F2414();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a4;
  v15 = v5[15];
  *v13 = v15;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v16 = v15;
  LOBYTE(v15) = sub_2657F2434();
  (*(v10 + 8))(v13, v9);
  if (v15)
  {
    if (qword_281446408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_2657F2344();
  __swift_project_value_buffer(v17, qword_281446410);

  v18 = sub_2657F2334();
  v19 = sub_2657F2584();

  if (!os_log_type_enabled(v18, v19))
  {

    v24 = v5[34];
    if (!v24)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v31 = a2;
  v32 = a3;
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v33 = v21;
  *v20 = 136380675;
  if (v5[26])
  {
    v22 = v5[25];
    v23 = v5[26];
  }

  else
  {
    v25 = IDSCopyLocalDeviceUniqueID();
    if (v25)
    {
      v26 = v25;
      v22 = sub_2657F2484();
      v23 = v27;
    }

    else
    {
      v23 = 0x80000002657F8510;
      v22 = 0xD000000000000017;
    }
  }

  v28 = sub_2657B7F9C(v22, v23, &v33);

  *(v20 + 4) = v28;
  _os_log_impl(&dword_2657B5000, v18, v19, "(%{private}s) Received unlock message", v20, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v21);
  MEMORY[0x266760A30](v21, -1, -1);
  MEMORY[0x266760A30](v20, -1, -1);

  a2 = v31;
  a3 = v32;
  v24 = v5[34];
  if (v24)
  {
LABEL_12:
    v29 = v5[35];

    v24(v30);
    sub_2657BA1AC(v24);
  }

LABEL_13:
  sub_2657E4CAC();
  sub_2657E4F94();
  v34 = v14;
  sub_2657B8A48(a2, a3, &v34);
}

void sub_2657DE5E0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v9 = sub_2657F2414();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a4;
  v15 = v5[15];
  *v13 = v15;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v16 = v15;
  LOBYTE(v15) = sub_2657F2434();
  (*(v10 + 8))(v13, v9);
  if (v15)
  {
    if (qword_281446408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_2657F2344();
  __swift_project_value_buffer(v17, qword_281446410);

  v18 = sub_2657F2334();
  v19 = sub_2657F2584();

  if (os_log_type_enabled(v18, v19))
  {
    HIDWORD(v30) = v14;
    v31 = a3;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136380675;
    if (v5[26])
    {
      v22 = v5[25];
      v23 = v5[26];
    }

    else
    {
      v24 = IDSCopyLocalDeviceUniqueID();
      if (v24)
      {
        v25 = v24;
        v22 = sub_2657F2484();
        v23 = v26;
      }

      else
      {
        v23 = 0x80000002657F8510;
        v22 = 0xD000000000000017;
      }
    }

    v27 = sub_2657B7F9C(v22, v23, &v32);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_2657B5000, v18, v19, "(%{private}s) Received resync message", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x266760A30](v21, -1, -1);
    MEMORY[0x266760A30](v20, -1, -1);

    a3 = v31;
    LOBYTE(v14) = BYTE4(v30);
  }

  else
  {
  }

  v28 = v5[8];
  v29 = v5[9];
  __swift_project_boxed_opaque_existential_1(v5 + 5, v28);
  (*(v29 + 120))(a2, a3, v28, v29);
  sub_2657E4CAC();
  sub_2657E4F94();
  v33 = v14;
  sub_2657B8A48(a2, a3, &v33);
}

void sub_2657DE8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v7 = v6;
  v72 = a4;
  v73 = a5;
  v11 = sub_2657F2414();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a6;
  v17 = *(v7 + 120);
  *v15 = v17;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v18 = v17;
  LOBYTE(v17) = sub_2657F2434();
  (*(v12 + 8))(v15, v11);
  if ((v17 & 1) == 0)
  {
    goto LABEL_42;
  }

  v68 = v16;
  v69 = a2;
  v70 = a3;
  if (qword_281446408 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v19 = sub_2657F2344();
    __swift_project_value_buffer(v19, qword_281446410);

    v20 = sub_2657F2334();
    v21 = sub_2657F2584();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v75[0] = v23;
      *v22 = 136380675;
      if (*(v7 + 208))
      {
        v24 = *(v7 + 200);
        v25 = *(v7 + 208);
      }

      else
      {
        v26 = IDSCopyLocalDeviceUniqueID();
        if (v26)
        {
          v27 = v26;
          v24 = sub_2657F2484();
          v25 = v28;
        }

        else
        {
          v24 = 0xD000000000000017;
          v25 = 0x80000002657F8510;
        }
      }

      v29 = sub_2657B7F9C(v24, v25, v75);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_2657B5000, v20, v21, "(%{private}s) Received replace message", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x266760A30](v23, -1, -1);
      MEMORY[0x266760A30](v22, -1, -1);
    }

    if ((~*(v7 + 248) & 3) != 0)
    {

      v38 = sub_2657F2334();
      v39 = sub_2657F2574();

      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_40;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75[0] = v41;
      *v40 = 136380675;
      v42 = *(v7 + 208);
      if (v42)
      {
        v43 = *(v7 + 200);
        v44 = v42;
      }

      else
      {
        v58 = IDSCopyLocalDeviceUniqueID();
        if (v58)
        {
          v59 = v58;
          v43 = sub_2657F2484();
          v44 = v60;
        }

        else
        {
          v43 = 0xD000000000000017;
          v44 = 0x80000002657F8510;
        }
      }

      v64 = sub_2657B7F9C(v43, v44, v75);

      *(v40 + 4) = v64;
      v65 = "(%{private}s) Will not handle message because sync is inactive";
      goto LABEL_39;
    }

    if (*(v7 + 16) != 1)
    {
      break;
    }

    swift_beginAccess();
    v30 = *(v7 + 144);
    v31 = v30 + 64;
    v32 = 1 << *(v30 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v30 + 64);
    v35 = (v32 + 63) >> 6;
    v36 = *(v7 + 144);

    v37 = 0;
    v67 = v30;
    while (v34)
    {
LABEL_25:
      v46 = *(*(v30 + 56) + ((v37 << 9) | (8 * __clz(__rbit64(v34)))));
      v75[3] = type metadata accessor for SyncEngine();
      v75[4] = &protocol witness table for SyncEngine;
      v75[0] = v7;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v47 = *(v46 + 24);
        ObjectType = swift_getObjectType();
        v71 = *(v47 + 48);

        v71(v75, v72, v73, ObjectType, v47);
        v30 = v67;
        swift_unknownObjectRelease();
      }

      else
      {
      }

      v34 &= v34 - 1;
      __swift_destroy_boxed_opaque_existential_1(v75);
    }

    while (1)
    {
      v45 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v45 >= v35)
      {

        v52 = *(v7 + 64);
        v53 = *(v7 + 72);
        __swift_project_boxed_opaque_existential_1((v7 + 40), v52);
        (*(v53 + 80))(v52, v53);
        v54 = *(v7 + 64);
        v55 = *(v7 + 72);
        __swift_project_boxed_opaque_existential_1((v7 + 40), v54);
        v57 = v72;
        v56 = v73;
        (*(v55 + 144))(v72, v73, v54, v55);
        LOBYTE(v75[0]) = v68;
        v74 = 1;
        sub_2657DF400(v69, v70, v57, v56, v75, &v74);
        return;
      }

      v34 = *(v31 + 8 * v45);
      ++v37;
      if (v34)
      {
        v37 = v45;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v38 = sub_2657F2334();
  v39 = sub_2657F2574();

  if (!os_log_type_enabled(v38, v39))
  {
    goto LABEL_40;
  }

  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v75[0] = v41;
  *v40 = 136380675;
  v49 = *(v7 + 208);
  if (v49)
  {
    v50 = *(v7 + 200);
    v51 = v49;
  }

  else
  {
    v61 = IDSCopyLocalDeviceUniqueID();
    if (v61)
    {
      v62 = v61;
      v50 = sub_2657F2484();
      v51 = v63;
    }

    else
    {
      v50 = 0xD000000000000017;
      v51 = 0x80000002657F8510;
    }
  }

  v66 = sub_2657B7F9C(v50, v51, v75);

  *(v40 + 4) = v66;
  v65 = "(%{private}s) Paired device should never send a replace message";
LABEL_39:
  _os_log_impl(&dword_2657B5000, v38, v39, v65, v40, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v41);
  MEMORY[0x266760A30](v41, -1, -1);
  MEMORY[0x266760A30](v40, -1, -1);
LABEL_40:
}

void sub_2657DEFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v7 = v6;
  v13 = sub_2657F2414();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a6;
  v19 = *(v7 + 120);
  *v17 = v19;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v20 = v19;
  LOBYTE(v19) = sub_2657F2434();
  (*(v14 + 8))(v17, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((~*(v7 + 248) & 3) == 0)
  {
    v48 = a2;
    if (qword_281446408 == -1)
    {
LABEL_4:
      v21 = sub_2657F2344();
      __swift_project_value_buffer(v21, qword_281446410);

      v22 = sub_2657F2334();
      v23 = sub_2657F2584();

      if (os_log_type_enabled(v22, v23))
      {
        v46 = a4;
        v47 = a5;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v50 = v25;
        *v24 = 136380675;
        v26 = *(v7 + 208);
        v45 = a3;
        if (v26)
        {
          v27 = *(v7 + 200);
          v28 = v26;
        }

        else
        {
          v37 = IDSCopyLocalDeviceUniqueID();
          if (v37)
          {
            v38 = v37;
            v27 = sub_2657F2484();
            v28 = v39;
          }

          else
          {
            v27 = 0xD000000000000017;
            v28 = 0x80000002657F8510;
          }
        }

        v43 = sub_2657B7F9C(v27, v28, &v50);

        *(v24 + 4) = v43;
        _os_log_impl(&dword_2657B5000, v22, v23, "(%{private}s) Received update message", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x266760A30](v25, -1, -1);
        MEMORY[0x266760A30](v24, -1, -1);

        a4 = v46;
        a5 = v47;
        a3 = v45;
      }

      else
      {
      }

      LOBYTE(v50) = v18;
      v49 = 0;
      sub_2657DF400(v48, a3, a4, a5, &v50, &v49);
      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_4;
  }

  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v29 = sub_2657F2344();
  __swift_project_value_buffer(v29, qword_281446410);

  v30 = sub_2657F2334();
  v31 = sub_2657F2574();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v50 = v33;
    *v32 = 136380675;
    v34 = *(v7 + 208);
    if (v34)
    {
      v35 = *(v7 + 200);
      v36 = v34;
    }

    else
    {
      v40 = IDSCopyLocalDeviceUniqueID();
      if (v40)
      {
        v41 = v40;
        v35 = sub_2657F2484();
        v36 = v42;
      }

      else
      {
        v35 = 0xD000000000000017;
        v36 = 0x80000002657F8510;
      }
    }

    v44 = sub_2657B7F9C(v35, v36, &v50);

    *(v32 + 4) = v44;
    _os_log_impl(&dword_2657B5000, v30, v31, "(%{private}s) Will not handle message because sync is inactive", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x266760A30](v33, -1, -1);
    MEMORY[0x266760A30](v32, -1, -1);
  }
}

void sub_2657DF400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v7 = v6;
  v628 = a4;
  v627 = a3;
  v590 = a2;
  v625 = type metadata accessor for RecordMetadata(0);
  v617 = *(v625 - 8);
  v11 = *(v617 + 64);
  v12 = MEMORY[0x28223BE20](v625);
  v634 = &v571 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v624 = &v571 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v623 = &v571 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v614 = &v571 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v618 = &v571 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v635 = (&v571 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v622 = &v571 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v586 = &v571 - v27;
  MEMORY[0x28223BE20](v26);
  v585 = &v571 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v588 = &v571 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v600 = &v571 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v575 = &v571 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v581 = (&v571 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v580 = (&v571 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v583 = &v571 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v587 = &v571 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v599 = &v571 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v601 = &v571 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v607 = &v571 - v50;
  MEMORY[0x28223BE20](v49);
  v632 = &v571 - v51;
  v578 = type metadata accessor for Record(0);
  v52 = *(v578 - 8);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v578);
  v616 = (&v571 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = MEMORY[0x28223BE20](v54);
  v598 = &v571 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v596 = &v571 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v595 = &v571 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v577 = &v571 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v579 = &v571 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v576 = &v571 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v582 = &v571 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v584 = &v571 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v597 = &v571 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v610 = &v571 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v609 = &v571 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v603 = &v571 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v602 = &v571 - v81;
  MEMORY[0x28223BE20](v80);
  v83 = (&v571 - v82);
  v615 = sub_2657F22A4();
  v84 = *(v615 - 8);
  v85 = *(v84 + 64);
  v86 = MEMORY[0x28223BE20](v615);
  v613 = &v571 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x28223BE20](v86);
  v626 = &v571 - v89;
  MEMORY[0x28223BE20](v88);
  v629 = &v571 - v90;
  v91 = sub_2657F2414();
  v92 = *(v91 - 8);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  v95 = (&v571 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  v592 = *a5;
  v591 = *a6;
  v96 = v7[15];
  *v95 = v96;
  (*(v92 + 104))(v95, *MEMORY[0x277D85200], v91);
  v97 = v96;
  LOBYTE(v96) = sub_2657F2434();
  (*(v92 + 8))(v95, v91);
  if ((v96 & 1) == 0)
  {
    __break(1u);
    goto LABEL_202;
  }

  if ((v7[2] & 1) == 0)
  {
    v98 = v7[8];
    v99 = v7[9];
    __swift_project_boxed_opaque_existential_1(v7 + 5, v98);
    if (((*(v99 + 136))(v627, v628, v98, v99) & 1) == 0)
    {
      if (qword_281446408 == -1)
      {
LABEL_193:
        v560 = sub_2657F2344();
        __swift_project_value_buffer(v560, qword_281446410);

        v561 = sub_2657F2334();
        v562 = sub_2657F2574();

        if (os_log_type_enabled(v561, v562))
        {
          v563 = swift_slowAlloc();
          v564 = swift_slowAlloc();
          v638[0] = v564;
          *v563 = 136380675;
          if (v7[26])
          {
            v565 = v7[25];
            v566 = v7[26];
          }

          else
          {
            v567 = IDSCopyLocalDeviceUniqueID();
            if (v567)
            {
              v568 = v567;
              v565 = sub_2657F2484();
              v566 = v569;
            }

            else
            {
              v565 = 0xD000000000000017;
              v566 = 0x80000002657F8510;
            }
          }

          v570 = sub_2657B7F9C(v565, v566, v638);

          *(v563 + 4) = v570;
          _os_log_impl(&dword_2657B5000, v561, v562, "(%{private}s) Ignoring update from paired device that we have never synced with", v563, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v564);
          MEMORY[0x266760A30](v564, -1, -1);
          MEMORY[0x266760A30](v563, -1, -1);
        }

        return;
      }

LABEL_202:
      swift_once();
      goto LABEL_193;
    }
  }

  sub_2657F2284();
  v100 = v613;
  sub_2657F2284();
  sub_2657F2224();
  v101 = *(v84 + 8);
  v612 = v84 + 8;
  v611 = v101;
  v101(v100, v615);
  v102 = *(a1 + 16);
  v103 = &unk_2657F5000;
  v631 = v7;
  if (!v102)
  {
    v106 = MEMORY[0x277D84F90];
    v109 = v635;
LABEL_157:
    v472 = *(v590 + 16);
    if (!v472)
    {
LABEL_191:
      LOBYTE(v638[0]) = v591;
      LOBYTE(v637[0]) = v592;
      sub_2657E3DBC(v638, v106, v627, v628, v637);

      v558 = v615;
      v559 = v611;
      v611(v626, v615);
      v559(v629, v558);
      return;
    }

    v473 = v617;
    v474 = *(v617 + 80);
    v630 = v474;
    v475 = (v474 + 32) & ~v474;
    v476 = v103;
    v477 = v590 + v475;
    swift_beginAccess();
    v478 = *(v473 + 72);
    v616 = 0x80000002657F8510;
    v633 = v476[23];
    *(&v479 + 1) = *(&v633 + 1);
    *&v479 = 136381187;
    v620 = v479;
    v625 = v475;
    v622 = v478;
    while (1)
    {
      v632 = v472;
      v636 = v106;
      sub_2657EF7EC(v477, v109, type metadata accessor for RecordMetadata);
      v480 = v7[8];
      v481 = v7[9];
      __swift_project_boxed_opaque_existential_1(v7 + 5, v480);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023950, &qword_2657F4320);
      v482 = v7;
      v483 = swift_allocObject();
      *(v483 + 16) = v633;
      sub_2657EF7EC(v109, v483 + v475, type metadata accessor for RecordMetadata);
      (*(v481 + 88))(v483, v480, v481);

      v484 = v482[8];
      v485 = v482[9];
      __swift_project_boxed_opaque_existential_1(v482 + 5, v484);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023960, &qword_2657F4330);
      v486 = swift_allocObject();
      v487 = v109;
      v488 = v486;
      *(v486 + 16) = v633;
      v489 = v487[1];
      v491 = v487[2];
      v490 = v487[3];
      v488[4] = *v487;
      v488[5] = v489;
      v488[6] = v491;
      v488[7] = v490;
      v492 = *(v485 + 56);

      swift_bridgeObjectRetain_n();
      v492(v629, v488, v627, v628, v484, v485);

      v493 = v482[18];
      if (*(v493 + 16) && (v494 = v482[18], , v495 = sub_2657C8374(v491, v490), v497 = v496, , v498 = v618, (v497 & 1) != 0))
      {
        v499 = *(*(v493 + 56) + 8 * v495);

        v500 = v635;
        if (qword_281446408 != -1)
        {
          swift_once();
        }

        v501 = sub_2657F2344();
        __swift_project_value_buffer(v501, qword_281446410);
        sub_2657EF7EC(v500, v498, type metadata accessor for RecordMetadata);
        v502 = v614;
        sub_2657EF7EC(v500, v614, type metadata accessor for RecordMetadata);

        v503 = sub_2657F2334();
        v504 = sub_2657F2584();

        if (os_log_type_enabled(v503, v504))
        {
          LODWORD(v619) = v504;
          v505 = swift_slowAlloc();
          v617 = swift_slowAlloc();
          v637[0] = v617;
          *v505 = v620;
          if (v482[26])
          {
            v506 = v482[25];
            v507 = v482[26];
          }

          else
          {
            v522 = IDSCopyLocalDeviceUniqueID();
            if (v522)
            {
              v523 = v522;
              v506 = sub_2657F2484();
              v507 = v524;
            }

            else
            {
              v506 = 0xD000000000000017;
              v507 = v616;
            }
          }

          v536 = sub_2657B7F9C(v506, v507, v637);

          *(v505 + 4) = v536;
          *(v505 + 12) = 2082;
          v538 = *v498;
          v537 = v498[1];
          v539 = v498[2];
          v540 = v498[3];
          v638[0] = 0;
          v638[1] = 0xE000000000000000;

          sub_2657F2704();

          strcpy(v638, "identifier: ");
          BYTE5(v638[1]) = 0;
          HIWORD(v638[1]) = -5120;
          MEMORY[0x26675FFF0](v538, v537);
          MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x26675FFF0](v539, v540);
          v542 = v638[0];
          v541 = v638[1];
          sub_2657EF854(v498, type metadata accessor for RecordMetadata);

          v543 = sub_2657B7F9C(v542, v541, v637);

          *(v505 + 14) = v543;
          *(v505 + 22) = 2082;
          v544 = v614;
          v545 = *(v614 + 16);
          v546 = *(v614 + 24);

          sub_2657EF854(v544, type metadata accessor for RecordMetadata);
          v547 = sub_2657B7F9C(v545, v546, v637);

          *(v505 + 24) = v547;
          _os_log_impl(&dword_2657B5000, v503, v619, "(%{private}s) Sending deleted recordID %{public}s to data source for zone %{public}s", v505, 0x20u);
          v548 = v617;
          swift_arrayDestroy();
          MEMORY[0x266760A30](v548, -1, -1);
          MEMORY[0x266760A30](v505, -1, -1);

          v482 = v631;
          v500 = v635;
        }

        else
        {

          sub_2657EF854(v502, type metadata accessor for RecordMetadata);
          sub_2657EF854(v498, type metadata accessor for RecordMetadata);
        }

        v549 = *v500;
        v550 = v500[1];
        v551 = v500[2];
        v552 = v500[3];
        v640 = type metadata accessor for SyncEngine();
        v641 = &protocol witness table for SyncEngine;
        v638[0] = v482;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v553 = *(v499 + 24);
          ObjectType = swift_getObjectType();
          v637[0] = v549;
          v637[1] = v550;
          v637[2] = v551;
          v637[3] = v552;
          v555 = *(v553 + 24);

          v555(v638, v637, ObjectType, v553);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        v106 = v636;
        v7 = v482;
        v475 = v625;
        __swift_destroy_boxed_opaque_existential_1(v638);
        v109 = v635;
        v518 = v632;
      }

      else
      {

        v508 = v624;
        v109 = v635;
        v509 = v623;
        if (qword_281446408 != -1)
        {
          swift_once();
        }

        v510 = sub_2657F2344();
        __swift_project_value_buffer(v510, qword_281446410);
        sub_2657EF7EC(v109, v509, type metadata accessor for RecordMetadata);
        sub_2657EF7EC(v109, v508, type metadata accessor for RecordMetadata);

        v511 = sub_2657F2334();
        v512 = sub_2657F2574();

        if (os_log_type_enabled(v511, v512))
        {
          v513 = swift_slowAlloc();
          v514 = swift_slowAlloc();
          v638[0] = v514;
          *v513 = v620;
          v515 = v482[26];
          v621 = v477;
          if (v515)
          {
            v516 = v482[25];
            v517 = v515;
          }

          else
          {
            v519 = IDSCopyLocalDeviceUniqueID();
            if (v519)
            {
              v520 = v519;
              v516 = sub_2657F2484();
              v517 = v521;
            }

            else
            {
              v516 = 0xD000000000000017;
              v517 = v616;
            }
          }

          v525 = sub_2657B7F9C(v516, v517, v638);

          *(v513 + 4) = v525;
          *(v513 + 12) = 2082;
          v526 = v623;
          v527 = RecordMetadata.description.getter();
          v529 = v528;
          sub_2657EF854(v526, type metadata accessor for RecordMetadata);
          v530 = sub_2657B7F9C(v527, v529, v638);

          *(v513 + 14) = v530;
          *(v513 + 22) = 2082;
          v531 = v624;
          v532 = *(v624 + 2);
          v533 = *(v624 + 3);

          sub_2657EF854(v531, type metadata accessor for RecordMetadata);
          v534 = sub_2657B7F9C(v532, v533, v638);

          *(v513 + 24) = v534;
          _os_log_impl(&dword_2657B5000, v511, v512, "(%{private}s) Could not find data source for incoming deleted metadata %{public}s for zone %{public}s", v513, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266760A30](v514, -1, -1);
          MEMORY[0x266760A30](v513, -1, -1);

          v109 = v635;
          v106 = v636;
          v7 = v482;
          v518 = v632;
          v475 = v625;
          v535 = v622;
          v477 = v621;
          goto LABEL_186;
        }

        sub_2657EF854(v508, type metadata accessor for RecordMetadata);
        sub_2657EF854(v509, type metadata accessor for RecordMetadata);
        v106 = v636;
        v7 = v482;
        v518 = v632;
        v475 = v625;
      }

      v535 = v622;
LABEL_186:
      sub_2657EF7EC(v109, v634, type metadata accessor for RecordMetadata);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_2657CFDD8(0, v106[2] + 1, 1, v106);
      }

      v557 = v106[2];
      v556 = v106[3];
      if (v557 >= v556 >> 1)
      {
        v106 = sub_2657CFDD8(v556 > 1, v557 + 1, 1, v106);
      }

      sub_2657EF854(v109, type metadata accessor for RecordMetadata);
      v106[2] = v557 + 1;
      sub_2657F03E8(v634, v106 + v475 + v557 * v535, type metadata accessor for RecordMetadata);
      v477 += v535;
      v472 = v518 - 1;
      if (!v472)
      {
        goto LABEL_191;
      }
    }
  }

  v104 = v102;
  v573 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v105 = a1 + v573;
  swift_beginAccess();
  v589 = 0x80000002657F8510;
  *&v620 = v617 + 48;
  v608 = (v84 + 16);
  v621 = *(v52 + 72);
  v106 = MEMORY[0x277D84F90];
  *&v107 = 136381187;
  v606 = v107;
  v108 = v104;
  *(&v107 + 1) = 2;
  v594 = xmmword_2657F5170;
  *&v107 = 136380931;
  v605 = v107;
  v109 = v635;
  v619 = v83;
  while (1)
  {
    *&v633 = v105;
    sub_2657EF7EC(v105, v83, type metadata accessor for Record);
    v111 = v625;
    v112 = *(v625 + 20);
    if ((sub_2657F2244() & 1) == 0)
    {
      v142 = v109;
      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v143 = sub_2657F2344();
      __swift_project_value_buffer(v143, qword_281446410);
      v144 = v616;
      sub_2657EF7EC(v83, v616, type metadata accessor for Record);

      v145 = sub_2657F2334();
      v146 = sub_2657F2574();

      if (os_log_type_enabled(v145, v146))
      {
        v636 = v106;
        v147 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v637[0] = v148;
        *v147 = v605;
        v149 = v7[26];
        v630 = v108;
        if (v149)
        {
          v150 = v7[25];
          v151 = v149;
        }

        else
        {
          v177 = IDSCopyLocalDeviceUniqueID();
          if (v177)
          {
            v178 = v177;
            v150 = sub_2657F2484();
            v151 = v179;

            v144 = v616;
          }

          else
          {
            v150 = 0xD000000000000017;
            v151 = v589;
          }
        }

        v194 = sub_2657B7F9C(v150, v151, v637);

        *(v147 + 4) = v194;
        *(v147 + 12) = 2082;
        v196 = *v144;
        v195 = v144[1];
        v197 = v144;
        v199 = v144[2];
        v198 = v144[3];
        v638[0] = 0;
        v638[1] = 0xE000000000000000;

        sub_2657F2704();

        strcpy(v638, "identifier: ");
        BYTE5(v638[1]) = 0;
        HIWORD(v638[1]) = -5120;
        MEMORY[0x26675FFF0](v196, v195);
        MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x26675FFF0](v199, v198);
        v200 = v638[0];
        v201 = v638[1];
        sub_2657EF854(v197, type metadata accessor for Record);

        v202 = sub_2657B7F9C(v200, v201, v637);

        *(v147 + 14) = v202;
        _os_log_impl(&dword_2657B5000, v145, v146, "(%{private}s) Detected record from the future; dropping record %{public}s", v147, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266760A30](v148, -1, -1);
        MEMORY[0x266760A30](v147, -1, -1);

        v83 = v619;
        sub_2657EF854(v619, type metadata accessor for Record);
        v7 = v631;
        v109 = v635;
        v106 = v636;
        v103 = &unk_2657F5000;
        v108 = v630;
        v110 = v633;
      }

      else
      {

        sub_2657EF854(v144, type metadata accessor for Record);
        sub_2657EF854(v83, type metadata accessor for Record);
        v110 = v633;
        v109 = v142;
      }

      goto LABEL_7;
    }

    v630 = v108;
    v636 = v106;
    v113 = v7[8];
    v114 = v7[9];
    __swift_project_boxed_opaque_existential_1(v7 + 5, v113);
    v115 = v83[1];
    v116 = v83[2];
    v117 = v83[3];
    v638[0] = *v83;
    v638[1] = v115;
    v639 = v116;
    v640 = v117;
    v118 = *(v114 + 72);

    v119 = v632;
    v118(v638, v113, v114);
    v83 = v619;

    v120 = *v620;
    if ((*v620)(v119, 1, v111) == 1)
    {
LABEL_12:
      v126 = v631;
      v127 = v631[18];
      v128 = v635;
      if (*(v127 + 16))
      {
        v129 = v631[18];

        v130 = sub_2657C8374(v116, v117);
        if (v131)
        {
          v604 = *(*(v127 + 56) + 8 * v130);

          if (qword_281446408 != -1)
          {
            swift_once();
          }

          v132 = sub_2657F2344();
          __swift_project_value_buffer(v132, qword_281446410);
          v133 = v602;
          sub_2657EF7EC(v83, v602, type metadata accessor for Record);
          v134 = v603;
          sub_2657EF7EC(v83, v603, type metadata accessor for Record);

          v135 = sub_2657F2334();
          v136 = sub_2657F2584();

          if (os_log_type_enabled(v135, v136))
          {
            v137 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v638[0] = v138;
            *v137 = v606;
            v139 = v126[26];
            v593 = v138;
            if (v139)
            {
              v140 = v126[25];
              v141 = v139;
            }

            else
            {
              v203 = IDSCopyLocalDeviceUniqueID();
              if (v203)
              {
                v204 = v203;
                v140 = sub_2657F2484();
                v141 = v205;
              }

              else
              {
                v140 = 0xD000000000000017;
                v141 = v589;
              }

              v126 = v631;
            }

            v228 = sub_2657B7F9C(v140, v141, v638);

            *(v137 + 4) = v228;
            *(v137 + 12) = 2082;
            v229 = v602;
            v230 = RecordMetadata.description.getter();
            v232 = v231;
            sub_2657EF854(v229, type metadata accessor for Record);
            v233 = sub_2657B7F9C(v230, v232, v638);

            *(v137 + 14) = v233;
            *(v137 + 22) = 2082;
            v234 = v603;
            v235 = *(v603 + 16);
            v236 = *(v603 + 24);

            sub_2657EF854(v234, type metadata accessor for Record);
            v237 = sub_2657B7F9C(v235, v236, v638);

            *(v137 + 24) = v237;
            _os_log_impl(&dword_2657B5000, v135, v136, "(%{private}s) Sending modified record %{public}s to data source for zone %{public}s", v137, 0x20u);
            v238 = v593;
            swift_arrayDestroy();
            MEMORY[0x266760A30](v238, -1, -1);
            MEMORY[0x266760A30](v137, -1, -1);
          }

          else
          {

            sub_2657EF854(v134, type metadata accessor for Record);
            sub_2657EF854(v133, type metadata accessor for Record);
          }

          v640 = type metadata accessor for SyncEngine();
          v641 = &protocol witness table for SyncEngine;
          v638[0] = v126;
          v239 = v604;
          Strong = swift_unknownObjectWeakLoadStrong();
          v109 = v635;
          v108 = v630;
          if (Strong)
          {
            v241 = *(v239 + 24);
            v242 = swift_getObjectType();
            v243 = *(v241 + 16);

            LOBYTE(v241) = v243(v638, v83, v242, v241);
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v638);
            if (v241)
            {
              v244 = v126[8];
              v245 = v126[9];
              __swift_project_boxed_opaque_existential_1(v126 + 5, v244);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023950, &qword_2657F4320);
              v246 = *(v617 + 72);
              v247 = (*(v617 + 80) + 32) & ~*(v617 + 80);
              v248 = swift_allocObject();
              *(v248 + 16) = v594;
              sub_2657EF7EC(v83, v248 + v247, type metadata accessor for RecordMetadata);
              (*(v245 + 88))(v248, v244, v245);

              v249 = v126[8];
              v250 = v126[9];
              __swift_project_boxed_opaque_existential_1(v126 + 5, v249);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023960, &qword_2657F4330);
              v251 = swift_allocObject();
              *(v251 + 16) = v594;
              v252 = v83[1];
              v253 = v83[2];
              v254 = v83[3];
              *(v251 + 32) = *v83;
              *(v251 + 40) = v252;
              *(v251 + 48) = v253;
              *(v251 + 56) = v254;
              v255 = v109;
              v256 = *(v250 + 56);

              v256(v629, v251, v627, v628, v249, v250);
              v109 = v255;

              v257 = &v632;
LABEL_70:
              v258 = *(v257 - 32);
              goto LABEL_119;
            }

LABEL_133:
            v422 = v126[8];
            v423 = v126[9];
            __swift_project_boxed_opaque_existential_1(v126 + 5, v422);
            v424 = v83[1];
            v425 = v83[2];
            v426 = v83[3];
            v638[0] = *v83;
            v638[1] = v424;
            v639 = v425;
            v640 = v426;
            v427 = *(v423 + 128);

            v427(v638, v422, v423);

            goto LABEL_134;
          }

LABEL_132:

          __swift_destroy_boxed_opaque_existential_1(v638);
          goto LABEL_133;
        }
      }

      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v168 = sub_2657F2344();
      __swift_project_value_buffer(v168, qword_281446410);
      v169 = v609;
      sub_2657EF7EC(v83, v609, type metadata accessor for Record);
      v170 = v610;
      sub_2657EF7EC(v83, v610, type metadata accessor for Record);

      v171 = sub_2657F2334();
      v172 = sub_2657F2574();

      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v638[0] = v174;
        *v173 = v606;
        if (v126[26])
        {
          v175 = v126[25];
          v176 = v126[26];
        }

        else
        {
          v191 = IDSCopyLocalDeviceUniqueID();
          if (v191)
          {
            v192 = v191;
            v175 = sub_2657F2484();
            v176 = v193;
          }

          else
          {
            v175 = 0xD000000000000017;
            v176 = v589;
          }

          v126 = v631;
        }

        v206 = sub_2657B7F9C(v175, v176, v638);

        *(v173 + 4) = v206;
        *(v173 + 12) = 2082;
        v207 = v609;
        v208 = RecordMetadata.description.getter();
        v210 = v209;
        sub_2657EF854(v207, type metadata accessor for Record);
        v211 = sub_2657B7F9C(v208, v210, v638);

        *(v173 + 14) = v211;
        *(v173 + 22) = 2082;
        v212 = v610;
        v213 = *(v610 + 16);
        v214 = *(v610 + 24);

        sub_2657EF854(v212, type metadata accessor for Record);
        v215 = sub_2657B7F9C(v213, v214, v638);

        *(v173 + 24) = v215;
        _os_log_impl(&dword_2657B5000, v171, v172, "(%{private}s) Could not find data source for incoming modified record %{public}s for zone %{public}s", v173, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266760A30](v174, -1, -1);
        MEMORY[0x266760A30](v173, -1, -1);

        goto LABEL_57;
      }

      sub_2657EF854(v170, type metadata accessor for Record);
      sub_2657EF854(v169, type metadata accessor for Record);
      v109 = v128;
LABEL_58:
      v216 = v126[8];
      v217 = v126[9];
      __swift_project_boxed_opaque_existential_1(v126 + 5, v216);
      v218 = v83[1];
      v219 = v83[2];
      v220 = v83[3];
      v638[0] = *v83;
      v638[1] = v218;
      v639 = v219;
      v640 = v220;
      v221 = *(v217 + 128);

      v221(v638, v216, v217);

      v106 = v636;
LABEL_59:
      v108 = v630;
      goto LABEL_135;
    }

    v121 = v607;
    sub_2657F04D4(v632, v607);
    if (v120(v121, 1, v111) == 1)
    {
      break;
    }

    v122 = *v608;
    v123 = v613;
    v124 = v615;
    (*v608)(v613, v121 + *(v111 + 20), v615);
    sub_2657EF854(v121, type metadata accessor for RecordMetadata);
    v125 = sub_2657F2244();
    v611(v123, v124);
    if (v125)
    {
      goto LABEL_12;
    }

    v152 = v601;
    sub_2657F04D4(v632, v601);
    if (v120(v152, 1, v111) == 1)
    {
      goto LABEL_204;
    }

    v153 = v613;
    v154 = v615;
    v122(v613, v152 + *(v111 + 20), v615);
    sub_2657EF854(v152, type metadata accessor for RecordMetadata);
    v155 = sub_2657F2234();
    v611(v153, v154);
    if (v155)
    {
      v156 = v599;
      v157 = v597;
      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v158 = sub_2657F2344();
      v159 = __swift_project_value_buffer(v158, qword_281446410);
      sub_2657EF7EC(v83, v157, type metadata accessor for Record);
      sub_2657F04D4(v632, v156);
      v160 = v631;

      v161 = sub_2657F2334();
      v162 = sub_2657F2574();

      if (os_log_type_enabled(v161, v162))
      {
        LODWORD(v593) = v162;
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v638[0] = v164;
        *v163 = v606;
        v165 = v160[26];
        v604 = v159;
        v574 = v164;
        if (v165)
        {
          v166 = v160[25];
          v167 = v165;
        }

        else
        {
          v222 = IDSCopyLocalDeviceUniqueID();
          if (v222)
          {
            v223 = v222;
            v166 = sub_2657F2484();
            v167 = v224;
          }

          else
          {
            v166 = 0xD000000000000017;
            v167 = v589;
          }
        }

        v259 = sub_2657B7F9C(v166, v167, v638);

        *(v163 + 4) = v259;
        *(v163 + 12) = 2082;
        v260 = v597;
        v261 = RecordMetadata.description.getter();
        v263 = v262;
        sub_2657EF854(v260, type metadata accessor for Record);
        v264 = sub_2657B7F9C(v261, v263, v638);

        *(v163 + 14) = v264;
        *(v163 + 22) = 2082;
        v265 = v599;
        v266 = v587;
        sub_2657F04D4(v599, v587);
        if (v120(v266, 1, v625) == 1)
        {
          goto LABEL_206;
        }

        v267 = v585;
        sub_2657F03E8(v266, v585, type metadata accessor for RecordMetadata);
        v268 = RecordMetadata.description.getter();
        v270 = v269;
        sub_2657EF854(v267, type metadata accessor for RecordMetadata);
        sub_2657CC304(v265, &unk_280023C10, &qword_2657F4100);
        v271 = sub_2657B7F9C(v268, v270, v638);

        *(v163 + 24) = v271;
        _os_log_impl(&dword_2657B5000, v161, v593, "(%{private}s) Incoming modified record %{public}s has an older lastModified date than the existing record %{public}s", v163, 0x20u);
        v272 = v574;
        swift_arrayDestroy();
        MEMORY[0x266760A30](v272, -1, -1);
        MEMORY[0x266760A30](v163, -1, -1);

        v83 = v619;
        v159 = v604;
      }

      else
      {

        sub_2657CC304(v156, &unk_280023C10, &qword_2657F4100);
        sub_2657EF854(v157, type metadata accessor for Record);
      }

      v273 = v631[18];
      v274 = v596;
      v275 = v595;
      if (*(v273 + 16))
      {
        v276 = v631[18];

        v277 = sub_2657C8374(v116, v117);
        if (v278)
        {
          v279 = *(*(v273 + 56) + 8 * v277);

          v280 = v583;
          sub_2657F04D4(v632, v583);
          v281 = v625;
          if (v120(v280, 1, v625) == 1)
          {
            goto LABEL_207;
          }

          v282 = *(v280 + *(v281 + 24));
          sub_2657EF854(v280, type metadata accessor for RecordMetadata);
          v283 = v584;
          if (v282 == 1)
          {
            sub_2657EF7EC(v83, v584, type metadata accessor for Record);
            v284 = v631;

            v285 = sub_2657F2334();
            v286 = sub_2657F2584();

            if (os_log_type_enabled(v285, v286))
            {
              v593 = v279;
              v287 = swift_slowAlloc();
              v288 = swift_slowAlloc();
              v638[0] = v288;
              *v287 = v605;
              v289 = v284[26];
              if (v289)
              {
                v290 = v284[25];
                v291 = v289;
              }

              else
              {
                v372 = IDSCopyLocalDeviceUniqueID();
                if (v372)
                {
                  v373 = v372;
                  v290 = sub_2657F2484();
                  v291 = v374;

                  v83 = v619;
                }

                else
                {
                  v290 = 0xD000000000000017;
                  v291 = v589;
                }
              }

              v376 = sub_2657B7F9C(v290, v291, v638);

              *(v287 + 4) = v376;
              *(v287 + 12) = 2082;
              v377 = v584;
              v378 = RecordMetadata.description.getter();
              v380 = v379;
              sub_2657EF854(v377, type metadata accessor for Record);
              v381 = sub_2657B7F9C(v378, v380, v638);

              *(v287 + 14) = v381;
              _os_log_impl(&dword_2657B5000, v285, v286, "(%{private}s) Resyncing local deletion for modified record %{public}s", v287, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266760A30](v288, -1, -1);
              MEMORY[0x266760A30](v287, -1, -1);

              v109 = v635;
            }

            else
            {

              sub_2657EF854(v283, type metadata accessor for Record);
              v109 = v635;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023960, &qword_2657F4330);
            v382 = swift_allocObject();
            *(v382 + 16) = v594;
            v383 = v580;
            sub_2657F04D4(v632, v580);
            v384 = v120(v383, 1, v625);
            v108 = v630;
            if (v384 == 1)
            {
              goto LABEL_209;
            }

            v385 = v383;
            v387 = *v383;
            v386 = v383[1];
            v389 = *(v385 + 16);
            v388 = *(v385 + 24);

            sub_2657EF854(v385, type metadata accessor for RecordMetadata);
            *(v382 + 32) = v387;
            *(v382 + 40) = v386;
            *(v382 + 48) = v389;
            *(v382 + 56) = v388;
            sub_2657B6C0C(MEMORY[0x277D84F90], v382);

LABEL_119:

LABEL_134:
            v106 = v636;
LABEL_135:
            v110 = v633;
            goto LABEL_136;
          }

          v604 = v159;
          v593 = v279;
          v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023960, &qword_2657F4330);
          inited = swift_initStackObject();
          *(inited + 16) = v594;
          v300 = v581;
          sub_2657F04D4(v632, v581);
          if (v120(v300, 1, v281) == 1)
          {
            goto LABEL_208;
          }

          v574 = v298;
          v302 = *v300;
          v301 = v300[1];
          v304 = v300[2];
          v303 = v300[3];

          sub_2657EF854(v300, type metadata accessor for RecordMetadata);
          *(inited + 32) = v302;
          *(inited + 40) = v301;
          *(inited + 48) = v304;
          *(inited + 56) = v303;
          v305 = v631;
          v306 = sub_2657E3448(inited);
          swift_setDeallocating();
          sub_2657F0544(inited + 32);
          if (v306[2])
          {
            v307 = v582;
            sub_2657EF7EC(v306 + v573, v582, type metadata accessor for Record);

            v308 = type metadata accessor for SyncEngine();
            v640 = v308;
            v641 = &protocol witness table for SyncEngine;
            v638[0] = v305;
            v309 = v593;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v310 = *(v309 + 24);
              v311 = swift_getObjectType();
              v312 = *(v310 + 40);

              v313 = v312(v638, v83, v307, v311, v310);
              v315 = v314;
              swift_unknownObjectRelease();
              v316 = v578;
            }

            else
            {
              v316 = v578;
              v350 = (v83 + *(v578 + 20));
              v313 = *v350;
              v315 = v350[1];

              sub_2657BB26C(v313, v315);
            }

            v351 = v579;
            __swift_destroy_boxed_opaque_existential_1(v638);
            v352 = (v83 + *(v316 + 20));
            v353 = *v352;
            v354 = v352[1];
            v571 = v315;
            v355 = sub_2657BE32C(v313, v315, v353, v354);
            v572 = v313;
            if (v355)
            {
              sub_2657EF7EC(v83, v351, type metadata accessor for Record);
              v356 = v631;

              v357 = sub_2657F2334();
              v358 = sub_2657F2584();

              if (os_log_type_enabled(v357, v358))
              {
                v359 = swift_slowAlloc();
                v360 = swift_slowAlloc();
                v638[0] = v360;
                *v359 = v605;
                v361 = v356[26];
                v108 = v630;
                v604 = v360;
                if (v361)
                {
                  v362 = v356[25];
                  v363 = v361;
                }

                else
                {
                  v393 = IDSCopyLocalDeviceUniqueID();
                  if (v393)
                  {
                    v394 = v393;
                    v362 = sub_2657F2484();
                    v363 = v395;

                    v351 = v579;
                  }

                  else
                  {
                    v362 = 0xD000000000000017;
                    v363 = v589;
                  }

                  v356 = v631;
                }

                v430 = sub_2657B7F9C(v362, v363, v638);

                *(v359 + 4) = v430;
                *(v359 + 12) = 2082;
                v431 = RecordMetadata.description.getter();
                v433 = v432;
                sub_2657EF854(v351, type metadata accessor for Record);
                v434 = sub_2657B7F9C(v431, v433, v638);

                *(v359 + 14) = v434;
                _os_log_impl(&dword_2657B5000, v357, v358, "(%{private}s) Resolved conflict to remote record; updating local record %{public}s", v359, 0x16u);
                v435 = v604;
                swift_arrayDestroy();
                MEMORY[0x266760A30](v435, -1, -1);
                MEMORY[0x266760A30](v359, -1, -1);
              }

              else
              {

                sub_2657EF854(v351, type metadata accessor for Record);
                v108 = v630;
              }

              v640 = v308;
              v641 = &protocol witness table for SyncEngine;
              v638[0] = v356;
              v436 = v593;
              v437 = swift_unknownObjectWeakLoadStrong();
              v109 = v635;
              if (v437)
              {
                v438 = *(v436 + 24);
                v439 = swift_getObjectType();
                v440 = *(v438 + 16);

                LOBYTE(v438) = v440(v638, v83, v439, v438);
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_1(v638);
                if (v438)
                {
                  v441 = v356[8];
                  v442 = v356[9];
                  __swift_project_boxed_opaque_existential_1(v356 + 5, v441);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023950, &qword_2657F4320);
                  v443 = *(v617 + 72);
                  v444 = (*(v617 + 80) + 32) & ~*(v617 + 80);
                  v445 = swift_allocObject();
                  *(v445 + 16) = v594;
                  sub_2657EF7EC(v83, v445 + v444, type metadata accessor for RecordMetadata);
                  (*(v442 + 88))(v445, v441, v442);

                  v446 = v356[8];
                  v447 = v356[9];
                  __swift_project_boxed_opaque_existential_1(v356 + 5, v446);
                  v448 = swift_allocObject();
                  *(v448 + 16) = v594;
                  v449 = v83[1];
                  v450 = v83[2];
                  v451 = v83[3];
                  *(v448 + 32) = *v83;
                  *(v448 + 40) = v449;
                  *(v448 + 48) = v450;
                  *(v448 + 56) = v451;
                  v452 = v109;
                  v453 = *(v447 + 56);

                  v453(v629, v448, v627, v628, v446, v447);
                  v109 = v452;
                  sub_2657BB314(v572, v571);

                  goto LABEL_149;
                }
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_1(v638);
              }

              v454 = v356[8];
              v455 = v356[9];
              __swift_project_boxed_opaque_existential_1(v356 + 5, v454);
              v456 = v83[1];
              v457 = v83[2];
              v458 = v83[3];
              v638[0] = *v83;
              v638[1] = v456;
              v639 = v457;
              v640 = v458;
              v459 = *(v455 + 128);

              v459(v638, v454, v455);
              sub_2657BB314(v572, v571);

LABEL_149:
            }

            else
            {
              v364 = v576;
              sub_2657EF7EC(v83, v576, type metadata accessor for Record);
              v365 = v631;

              v366 = sub_2657F2334();
              v367 = sub_2657F2584();

              if (os_log_type_enabled(v366, v367))
              {
                v368 = swift_slowAlloc();
                v369 = swift_slowAlloc();
                v638[0] = v369;
                *v368 = v605;
                if (v365[26])
                {
                  v370 = v365[25];
                  v371 = v365[26];
                }

                else
                {
                  v396 = IDSCopyLocalDeviceUniqueID();
                  if (v396)
                  {
                    v397 = v396;
                    v370 = sub_2657F2484();
                    v371 = v398;

                    v364 = v576;
                  }

                  else
                  {
                    v370 = 0xD000000000000017;
                    v371 = v589;
                  }

                  v83 = v619;
                }

                v460 = sub_2657B7F9C(v370, v371, v638);

                *(v368 + 4) = v460;
                *(v368 + 12) = 2082;
                v461 = RecordMetadata.description.getter();
                v463 = v462;
                sub_2657EF854(v364, type metadata accessor for Record);
                v464 = sub_2657B7F9C(v461, v463, v638);

                *(v368 + 14) = v464;
                _os_log_impl(&dword_2657B5000, v366, v367, "(%{private}s) Resolved conflict to local record; resyncing modified record %{public}s", v368, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x266760A30](v369, -1, -1);
                MEMORY[0x266760A30](v368, -1, -1);

                v109 = v635;
                v375 = v575;
              }

              else
              {

                sub_2657EF854(v364, type metadata accessor for Record);
                v375 = v575;
                v109 = v635;
              }

              v465 = swift_allocObject();
              *(v465 + 16) = v594;
              sub_2657F04D4(v632, v375);
              v466 = v120(v375, 1, v625);
              v108 = v630;
              if (v466 == 1)
              {
                goto LABEL_210;
              }

              v467 = v375;
              v469 = *v375;
              v468 = v375[1];
              v471 = *(v467 + 16);
              v470 = *(v467 + 24);

              sub_2657EF854(v467, type metadata accessor for RecordMetadata);
              *(v465 + 32) = v469;
              *(v465 + 40) = v468;
              *(v465 + 48) = v471;
              *(v465 + 56) = v470;
              sub_2657B6C0C(v465, MEMORY[0x277D84F90]);

              sub_2657BB314(v572, v571);
            }

            sub_2657EF854(v582, type metadata accessor for Record);
            goto LABEL_134;
          }

          v333 = v577;
          sub_2657EF7EC(v83, v577, type metadata accessor for Record);

          v334 = sub_2657F2334();
          v335 = sub_2657F2584();

          v126 = v305;
          if (os_log_type_enabled(v334, v335))
          {
            v336 = swift_slowAlloc();
            v337 = swift_slowAlloc();
            v638[0] = v337;
            *v336 = v605;
            if (v126[26])
            {
              v338 = v126[25];
              v339 = v126[26];
            }

            else
            {
              v390 = IDSCopyLocalDeviceUniqueID();
              if (v390)
              {
                v391 = v390;
                v338 = sub_2657F2484();
                v339 = v392;

                v333 = v577;
              }

              else
              {
                v338 = 0xD000000000000017;
                v339 = v589;
              }

              v126 = v631;
            }

            v399 = sub_2657B7F9C(v338, v339, v638);

            *(v336 + 4) = v399;
            *(v336 + 12) = 2082;
            v400 = RecordMetadata.description.getter();
            v402 = v401;
            sub_2657EF854(v333, type metadata accessor for Record);
            v403 = sub_2657B7F9C(v400, v402, v638);

            *(v336 + 14) = v403;
            _os_log_impl(&dword_2657B5000, v334, v335, "(%{private}s) Resolved conflict to remote record because local record is missing; updating local record %{public}s", v336, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266760A30](v337, -1, -1);
            MEMORY[0x266760A30](v336, -1, -1);
          }

          else
          {

            sub_2657EF854(v333, type metadata accessor for Record);
          }

          v109 = v635;
          v640 = type metadata accessor for SyncEngine();
          v641 = &protocol witness table for SyncEngine;
          v638[0] = v126;
          v404 = v593;
          v405 = swift_unknownObjectWeakLoadStrong();
          v108 = v630;
          if (v405)
          {
            v406 = *(v404 + 24);
            v407 = swift_getObjectType();
            v408 = *(v406 + 16);

            LOBYTE(v406) = v408(v638, v83, v407, v406);
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v638);
            if (v406)
            {
              v409 = v126[8];
              v410 = v126[9];
              __swift_project_boxed_opaque_existential_1(v126 + 5, v409);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023950, &qword_2657F4320);
              v411 = *(v617 + 72);
              v412 = (*(v617 + 80) + 32) & ~*(v617 + 80);
              v413 = swift_allocObject();
              *(v413 + 16) = v594;
              sub_2657EF7EC(v83, v413 + v412, type metadata accessor for RecordMetadata);
              (*(v410 + 88))(v413, v409, v410);

              v414 = v126[8];
              v415 = v126[9];
              __swift_project_boxed_opaque_existential_1(v126 + 5, v414);
              v416 = swift_allocObject();
              *(v416 + 16) = v594;
              v417 = v83[1];
              v418 = v83[2];
              v419 = v83[3];
              *(v416 + 32) = *v83;
              *(v416 + 40) = v417;
              *(v416 + 48) = v418;
              *(v416 + 56) = v419;
              v420 = v109;
              v421 = *(v415 + 56);

              v421(v629, v416, v627, v628, v414, v415);
              v109 = v420;

              v257 = &v620 + 1;
              goto LABEL_70;
            }

            goto LABEL_133;
          }

          goto LABEL_132;
        }
      }

      sub_2657EF7EC(v83, v275, type metadata accessor for Record);
      sub_2657EF7EC(v83, v274, type metadata accessor for Record);
      v126 = v631;

      v292 = sub_2657F2334();
      v293 = sub_2657F2574();

      if (os_log_type_enabled(v292, v293))
      {
        v294 = swift_slowAlloc();
        v295 = swift_slowAlloc();
        v638[0] = v295;
        *v294 = v606;
        if (v126[26])
        {
          v296 = v126[25];
          v297 = v126[26];
        }

        else
        {
          v317 = IDSCopyLocalDeviceUniqueID();
          if (v317)
          {
            v318 = v317;
            v296 = sub_2657F2484();
            v297 = v319;
          }

          else
          {
            v296 = 0xD000000000000017;
            v297 = v589;
          }

          v126 = v631;
        }

        v340 = sub_2657B7F9C(v296, v297, v638);

        *(v294 + 4) = v340;
        *(v294 + 12) = 2082;
        v341 = v595;
        v342 = RecordMetadata.description.getter();
        v344 = v343;
        sub_2657EF854(v341, type metadata accessor for Record);
        v345 = sub_2657B7F9C(v342, v344, v638);

        *(v294 + 14) = v345;
        *(v294 + 22) = 2082;
        v346 = v596;
        v347 = *(v596 + 2);
        v348 = *(v596 + 3);

        sub_2657EF854(v346, type metadata accessor for Record);
        v349 = sub_2657B7F9C(v347, v348, v638);

        *(v294 + 24) = v349;
        _os_log_impl(&dword_2657B5000, v292, v293, "(%{private}s) Could not find data source for incoming modified record %{public}s for zone %{public}s", v294, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266760A30](v295, -1, -1);
        MEMORY[0x266760A30](v294, -1, -1);

LABEL_57:
        v109 = v635;
        v83 = v619;
      }

      else
      {

        sub_2657EF854(v274, type metadata accessor for Record);
        sub_2657EF854(v275, type metadata accessor for Record);
        v109 = v635;
      }

      goto LABEL_58;
    }

    v180 = v600;
    v181 = v598;
    v110 = v633;
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v182 = sub_2657F2344();
    __swift_project_value_buffer(v182, qword_281446410);
    sub_2657EF7EC(v83, v181, type metadata accessor for Record);
    sub_2657F04D4(v632, v180);
    v183 = v631;

    v184 = sub_2657F2334();
    v185 = sub_2657F2574();

    if (os_log_type_enabled(v184, v185))
    {
      v186 = swift_slowAlloc();
      v187 = swift_slowAlloc();
      v638[0] = v187;
      *v186 = v606;
      v188 = v183[26];
      if (v188)
      {
        v189 = v183[25];
        v190 = v188;
      }

      else
      {
        v225 = IDSCopyLocalDeviceUniqueID();
        if (v225)
        {
          v226 = v225;
          v189 = sub_2657F2484();
          v190 = v227;
        }

        else
        {
          v189 = 0xD000000000000017;
          v190 = v589;
        }
      }

      v320 = sub_2657B7F9C(v189, v190, v638);

      *(v186 + 4) = v320;
      *(v186 + 12) = 2082;
      v321 = v598;
      v322 = RecordMetadata.description.getter();
      v324 = v323;
      sub_2657EF854(v321, type metadata accessor for Record);
      v325 = sub_2657B7F9C(v322, v324, v638);

      *(v186 + 14) = v325;
      *(v186 + 22) = 2082;
      v326 = v600;
      v327 = v588;
      sub_2657F04D4(v600, v588);
      if (v120(v327, 1, v625) == 1)
      {
        goto LABEL_205;
      }

      v328 = v586;
      sub_2657F03E8(v327, v586, type metadata accessor for RecordMetadata);
      v329 = RecordMetadata.description.getter();
      v331 = v330;
      sub_2657EF854(v328, type metadata accessor for RecordMetadata);
      sub_2657CC304(v326, &unk_280023C10, &qword_2657F4100);
      v332 = sub_2657B7F9C(v329, v331, v638);

      *(v186 + 24) = v332;
      _os_log_impl(&dword_2657B5000, v184, v185, "(%{private}s) Incoming modified record %{public}s has an identical lastModified date to the existing record %{public}s", v186, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266760A30](v187, -1, -1);
      MEMORY[0x266760A30](v186, -1, -1);

      v109 = v635;
      v106 = v636;
      v83 = v619;
      goto LABEL_59;
    }

    sub_2657CC304(v180, &unk_280023C10, &qword_2657F4100);
    sub_2657EF854(v181, type metadata accessor for Record);
    v109 = v635;
    v106 = v636;
    v108 = v630;
LABEL_136:
    sub_2657EF7EC(v83, v622, type metadata accessor for RecordMetadata);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = sub_2657CFDD8(0, v106[2] + 1, 1, v106);
    }

    v7 = v631;
    v429 = v106[2];
    v428 = v106[3];
    if (v429 >= v428 >> 1)
    {
      v106 = sub_2657CFDD8(v428 > 1, v429 + 1, 1, v106);
    }

    v106[2] = v429 + 1;
    sub_2657F03E8(v622, v106 + ((*(v617 + 80) + 32) & ~*(v617 + 80)) + *(v617 + 72) * v429, type metadata accessor for RecordMetadata);
    sub_2657EF854(v83, type metadata accessor for Record);
    sub_2657CC304(v632, &unk_280023C10, &qword_2657F4100);
    v103 = &unk_2657F5000;
LABEL_7:
    v105 = v110 + v621;
    if (!--v108)
    {
      goto LABEL_157;
    }
  }

  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
}

void *sub_2657E3448(uint64_t a1)
{
  v2 = v1;
  v72 = type metadata accessor for Record(0);
  v71 = *(v72 - 8);
  v4 = *(v71 + 64);
  v5 = MEMORY[0x28223BE20](v72);
  v74 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v69 - v10;
  v81 = type metadata accessor for RecordMetadata(0);
  v11 = *(v81 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v81);
  v83 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2657F2414();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v2[15];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  LOBYTE(v19) = sub_2657F2434();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v22 = *(a1 + 16);
    if (v22)
    {
      swift_beginAccess();
      v80 = (v11 + 48);
      v70 = 0x80000002657F8510;
      v23 = (a1 + 56);
      v76 = MEMORY[0x277D84F90];
      *&v24 = 136380931;
      v77 = v24;
      v75 = v2;
      while (1)
      {
        v26 = v22;
        v27 = *(v23 - 3);
        v28 = *(v23 - 2);
        v29 = *(v23 - 1);
        v30 = *v23;
        v86 = v23;
        v31 = v2[8];
        v32 = v2[9];
        __swift_project_boxed_opaque_existential_1(v2 + 5, v31);
        v84 = v27;
        v85 = v29;
        v88[0] = v27;
        v88[1] = v28;
        v88[2] = v29;
        v89 = v30;
        v33 = v2;
        v34 = *(v32 + 72);

        v35 = v82;
        v34(v88, v31, v32);
        if ((*v80)(v35, 1, v81) != 1)
        {
          break;
        }

        sub_2657CC304(v35, &unk_280023C10, &qword_2657F4100);
        v2 = v33;
        v25 = v26;
LABEL_5:
        v23 = v86 + 4;
        v22 = v25 - 1;
        if (!v22)
        {
          return v76;
        }
      }

      v36 = v30;
      sub_2657F03E8(v35, v83, type metadata accessor for RecordMetadata);
      v37 = v33[18];
      v2 = v33;
      v25 = v26;
      if (*(v37 + 16))
      {
        v38 = v33[18];

        v39 = v85;
        v40 = sub_2657C8374(v85, v36);
        v41 = v28;
        if (v42)
        {
          v43 = *(*(v37 + 56) + 8 * v40);

          v89 = type metadata accessor for SyncEngine();
          v90 = &protocol witness table for SyncEngine;
          v88[0] = v2;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v44 = *(v43 + 24);
            ObjectType = swift_getObjectType();
            v87[0] = v84;
            v87[1] = v28;
            v87[2] = v39;
            v87[3] = v36;
            v45 = v36;
            v46 = *(v44 + 8);

            v47 = v46(v88, v87, ObjectType, v44);
            v49 = v48;
            swift_unknownObjectRelease();

            __swift_destroy_boxed_opaque_existential_1(v88);
            if (v49 >> 60 != 15)
            {

              v60 = v73;
              sub_2657EF7EC(v83, v73, type metadata accessor for RecordMetadata);
              v61 = (v60 + *(v72 + 20));
              *v61 = v47;
              v61[1] = v49;
              sub_2657EF7EC(v60, v74, type metadata accessor for Record);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v76 = sub_2657CFDB0(0, v76[2] + 1, 1, v76);
              }

              v2 = v75;
              v63 = v76[2];
              v62 = v76[3];
              if (v63 >= v62 >> 1)
              {
                v76 = sub_2657CFDB0(v62 > 1, v63 + 1, 1, v76);
              }

              sub_2657EF854(v73, type metadata accessor for Record);
              sub_2657EF854(v83, type metadata accessor for RecordMetadata);
              v64 = v76;
              v76[2] = v63 + 1;
              sub_2657F03E8(v74, v64 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v63, type metadata accessor for Record);
              goto LABEL_5;
            }

            v2 = v75;
            goto LABEL_16;
          }

          __swift_destroy_boxed_opaque_existential_1(v88);
        }

        else
        {
        }

        v45 = v36;
      }

      else
      {
        v41 = v28;
        v45 = v30;
        v39 = v85;
      }

LABEL_16:
      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v50 = sub_2657F2344();
      __swift_project_value_buffer(v50, qword_281446410);

      v51 = sub_2657F2334();
      v52 = sub_2657F2584();

      if (os_log_type_enabled(v51, v52))
      {
        LODWORD(ObjectType) = v52;
        v53 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v87[0] = v78;
        *v53 = v77;
        v54 = v2[26];
        v85 = v51;
        if (v54)
        {
          v55 = v2[25];
          v56 = v54;
        }

        else
        {
          v57 = IDSCopyLocalDeviceUniqueID();
          if (v57)
          {
            v58 = v57;
            v55 = sub_2657F2484();
            v56 = v59;
          }

          else
          {
            v55 = 0xD000000000000017;
            v56 = v70;
          }

          v2 = v75;
        }

        v65 = sub_2657B7F9C(v55, v56, v87);

        *(v53 + 4) = v65;
        *(v53 + 12) = 2082;
        v88[0] = 0;
        v88[1] = 0xE000000000000000;
        sub_2657F2704();

        strcpy(v88, "identifier: ");
        BYTE5(v88[1]) = 0;
        HIWORD(v88[1]) = -5120;
        MEMORY[0x26675FFF0](v84, v41);
        MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x26675FFF0](v39, v45);

        v66 = sub_2657B7F9C(v88[0], v88[1], v87);

        *(v53 + 14) = v66;
        v67 = v85;
        _os_log_impl(&dword_2657B5000, v85, ObjectType, "(%{private}s) Data source failed to provide data for %{public}s", v53, 0x16u);
        v68 = v78;
        swift_arrayDestroy();
        MEMORY[0x266760A30](v68, -1, -1);
        MEMORY[0x266760A30](v53, -1, -1);
      }

      else
      {
      }

      sub_2657EF854(v83, type metadata accessor for RecordMetadata);
      goto LABEL_5;
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2657E3DBC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v76 = a3;
  v11 = sub_2657F2414();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v17 = *a5;
  v18 = *(v6 + 120);
  *v15 = v18;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v19 = v18;
  LOBYTE(v18) = sub_2657F2434();
  (*(v12 + 8))(v15, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v20 = *(v6 + 104);
  v21 = *(v6 + 112);
  __swift_project_boxed_opaque_existential_1((v6 + 80), v20);
  if (((*(v21 + 16))(v20, v21) & 1) == 0)
  {
    if (qword_281446408 == -1)
    {
LABEL_10:
      v30 = sub_2657F2344();
      __swift_project_value_buffer(v30, qword_281446410);

      v31 = sub_2657F2334();
      v32 = sub_2657F2584();

      if (!os_log_type_enabled(v31, v32))
      {
LABEL_39:

        return;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v81 = v34;
      *v33 = 136380675;
      v35 = *(v6 + 208);
      if (v35)
      {
        v36 = *(v6 + 200);
        v37 = v35;
      }

      else
      {
        v42 = IDSCopyLocalDeviceUniqueID();
        if (v42)
        {
          v43 = v42;
          v36 = sub_2657F2484();
          v37 = v44;
        }

        else
        {
          v36 = 0xD000000000000017;
          v37 = 0x80000002657F8510;
        }
      }

      v51 = sub_2657B7F9C(v36, v37, &v81);

      *(v33 + 4) = v51;
      v52 = "(%{private}s) Will not send ack message because keybag is locked";
LABEL_38:
      _os_log_impl(&dword_2657B5000, v31, v32, v52, v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x266760A30](v34, -1, -1);
      MEMORY[0x266760A30](v33, -1, -1);
      goto LABEL_39;
    }

LABEL_41:
    swift_once();
    goto LABEL_10;
  }

  if ((~*(v6 + 248) & 3) != 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v38 = sub_2657F2344();
    __swift_project_value_buffer(v38, qword_281446410);

    v31 = sub_2657F2334();
    v32 = sub_2657F2584();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_39;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v81 = v34;
    *v33 = 136380675;
    v39 = *(v6 + 208);
    if (v39)
    {
      v40 = *(v6 + 200);
      v41 = v39;
    }

    else
    {
      v48 = IDSCopyLocalDeviceUniqueID();
      if (v48)
      {
        v49 = v48;
        v40 = sub_2657F2484();
        v41 = v50;
      }

      else
      {
        v40 = 0xD000000000000017;
        v41 = 0x80000002657F8510;
      }
    }

    v70 = sub_2657B7F9C(v40, v41, &v81);

    *(v33 + 4) = v70;
    v52 = "(%{private}s) Will not send ack message because sync is inactive";
    goto LABEL_38;
  }

  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v22 = sub_2657F2344();
  v23 = __swift_project_value_buffer(v22, qword_281446410);
  swift_bridgeObjectRetain_n();

  v24 = sub_2657F2334();
  v25 = sub_2657F2584();

  if (os_log_type_enabled(v24, v25))
  {
    v73 = v25;
    v26 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v81 = v72;
    *v26 = 136381187;
    v27 = *(v6 + 208);
    v74 = v23;
    v75 = a4;
    if (v27)
    {
      v28 = *(v6 + 200);
      v29 = v27;
    }

    else
    {
      v45 = IDSCopyLocalDeviceUniqueID();
      if (v45)
      {
        v46 = v45;
        v28 = sub_2657F2484();
        v29 = v47;
      }

      else
      {
        v28 = 0xD000000000000017;
        v29 = 0x80000002657F8510;
      }
    }

    v53 = sub_2657B7F9C(v28, v29, &v81);

    *(v26 + 4) = v53;
    *(v26 + 12) = 2082;
    if (v16)
    {
      v54 = 0x6563616C706572;
    }

    else
    {
      v54 = 0x657461647075;
    }

    if (v16)
    {
      v55 = 0xE700000000000000;
    }

    else
    {
      v55 = 0xE600000000000000;
    }

    v56 = sub_2657B7F9C(v54, v55, &v81);

    *(v26 + 14) = v56;
    *(v26 + 22) = 2048;
    v57 = *(a2 + 16);

    *(v26 + 24) = v57;

    _os_log_impl(&dword_2657B5000, v24, v73, "(%{private}s) Sending ack message for action %{public}s with %ld metadata items", v26, 0x20u);
    v58 = v72;
    swift_arrayDestroy();
    MEMORY[0x266760A30](v58, -1, -1);
    MEMORY[0x266760A30](v26, -1, -1);

    a4 = v75;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v80 = v17;
  v77 = v16;
  v78 = a2;
  v79 = 2;

  sub_2657E8044(&v80, &v77, &v81);
  sub_2657D3E70(v77, v78, v79);
  v59 = v81;
  v60 = v82;
  v61 = v83;
  v62 = v84;
  v63 = v85;
  v64 = *(v6 + 24);
  v65 = *(v6 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v81) = v59;
  v82 = v60;
  v83 = v61;
  v84 = v62;
  v85 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F0, &qword_2657F41A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2657F5170;
  *(inited + 32) = v76;
  *(inited + 40) = a4;

  v68 = sub_2657D00E8(inited);
  swift_setDeallocating();
  sub_2657EF8B4(inited + 32);
  v69 = *(v65 + 24);

  v69(&v81, v68, sub_2657F0598, v6, ObjectType, v65);

  sub_2657BB314(v62, v63);
}

void sub_2657E4628(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_2657F2414();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a3;
  v14 = *(v4 + 120);
  *v12 = v14;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v15 = v14;
  LOBYTE(v14) = sub_2657F2434();
  (*(v9 + 8))(v12, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  v16 = *(v4 + 104);
  v17 = *(v4 + 112);
  __swift_project_boxed_opaque_existential_1((v4 + 80), v16);
  if ((*(v17 + 16))(v16, v17))
  {
    if ((~*(v4 + 248) & 3) == 0)
    {
      v52 = v13;
      v50 = xmmword_2657F5180;
      v51 = 3;
      sub_2657E8044(&v52, &v50, &v53);
      sub_2657D3E70(v50, *(&v50 + 1), v51);
      v30 = v53;
      v32 = v54;
      v31 = v55;
      v33 = v56;
      v34 = v57;
      v35 = *(v4 + 24);
      v36 = *(v4 + 32);
      ObjectType = swift_getObjectType();
      LOBYTE(v53) = v30;
      v54 = v32;
      v55 = v31;
      v56 = v33;
      v57 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F0, &qword_2657F41A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2657F5170;
      *(inited + 32) = a1;
      *(inited + 40) = a2;

      v38 = sub_2657D00E8(inited);
      swift_setDeallocating();
      sub_2657EF8B4(inited + 32);
      v39 = *(v36 + 24);

      v39(&v53, v38, sub_2657F0450, v4, ObjectType, v36);

      sub_2657BB314(v33, v34);
      return;
    }

    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v26 = sub_2657F2344();
    __swift_project_value_buffer(v26, qword_281446410);

    v19 = sub_2657F2334();
    v20 = sub_2657F2584();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v53 = v22;
      *v21 = 136380675;
      v27 = *(v4 + 208);
      if (v27)
      {
        v28 = *(v4 + 200);
        v29 = v27;
      }

      else
      {
        v43 = IDSCopyLocalDeviceUniqueID();
        if (v43)
        {
          v44 = v43;
          v28 = sub_2657F2484();
          v29 = v45;
        }

        else
        {
          v28 = 0xD000000000000017;
          v29 = 0x80000002657F8510;
        }
      }

      v48 = sub_2657B7F9C(v28, v29, &v53);

      *(v21 + 4) = v48;
      v47 = "(%{private}s) Will not send resync message because sync is inactive";
LABEL_22:
      _os_log_impl(&dword_2657B5000, v19, v20, v47, v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x266760A30](v22, -1, -1);
      MEMORY[0x266760A30](v21, -1, -1);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  v18 = sub_2657F2344();
  __swift_project_value_buffer(v18, qword_281446410);

  v19 = sub_2657F2334();
  v20 = sub_2657F2584();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v53 = v22;
    *v21 = 136380675;
    v23 = *(v4 + 208);
    if (v23)
    {
      v24 = *(v4 + 200);
      v25 = v23;
    }

    else
    {
      v40 = IDSCopyLocalDeviceUniqueID();
      if (v40)
      {
        v41 = v40;
        v24 = sub_2657F2484();
        v25 = v42;
      }

      else
      {
        v24 = 0xD000000000000017;
        v25 = 0x80000002657F8510;
      }
    }

    v46 = sub_2657B7F9C(v24, v25, &v53);

    *(v21 + 4) = v46;
    v47 = "(%{private}s) Will not send resync message because keybag is locked";
    goto LABEL_22;
  }

LABEL_23:
}

uint64_t sub_2657E4CAC()
{
  v1 = v0;
  v2 = sub_2657F2414();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[15];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_2657F2434();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_281446408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = sub_2657F2344();
  __swift_project_value_buffer(v9, qword_281446410);

  v10 = sub_2657F2334();
  v11 = sub_2657F2584();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136380675;
    if (v1[26])
    {
      v14 = v1[25];
      v15 = v1[26];
    }

    else
    {
      v16 = IDSCopyLocalDeviceUniqueID();
      if (v16)
      {
        v17 = v16;
        v14 = sub_2657F2484();
        v15 = v18;
      }

      else
      {
        v15 = 0x80000002657F8510;
        v14 = 0xD000000000000017;
      }
    }

    v19 = sub_2657B7F9C(v14, v15, &v26);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_2657B5000, v10, v11, "(%{private}s) Removing all inflight metadata", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x266760A30](v13, -1, -1);
    MEMORY[0x266760A30](v12, -1, -1);
  }

  v20 = v1[23];
  v1[23] = MEMORY[0x277D84FA0];

  swift_beginAccess();
  v21 = v1[21];
  v22 = MEMORY[0x277D84F98];
  v1[21] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v23 = v1[22];
  v1[22] = v22;
}

void sub_2657E4F94()
{
  v1 = v0;
  v2 = sub_2657F2414();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[15];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_2657F2434();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  if (!v1[19])
  {
    return;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v9 = sub_2657F2344();
  __swift_project_value_buffer(v9, qword_281446410);

  v10 = sub_2657F2334();
  v11 = sub_2657F2584();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136380675;
    if (v1[26])
    {
      v14 = v1[25];
      v15 = v1[26];
    }

    else
    {
      v16 = IDSCopyLocalDeviceUniqueID();
      if (v16)
      {
        v17 = v16;
        v14 = sub_2657F2484();
        v15 = v18;
      }

      else
      {
        v15 = 0x80000002657F8510;
        v14 = 0xD000000000000017;
      }
    }

    v19 = sub_2657B7F9C(v14, v15, &v23);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_2657B5000, v10, v11, "(%{private}s) Cancelling expiration timer", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x266760A30](v13, -1, -1);
    MEMORY[0x266760A30](v12, -1, -1);
  }

  if (v1[19])
  {
    v20 = v1[19];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2657F2624();
    swift_unknownObjectRelease();
    v21 = v1[19];
    v1[19] = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2657E526C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2657CFFDC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_2657E5360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v285 = a4;
  v284 = a3;
  v308 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v268 - v11;
  v282 = sub_2657F22D4();
  v281 = *(v282 - 8);
  v13 = *(v281 + 64);
  MEMORY[0x28223BE20](v282);
  v277 = &v268 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v291 = &v268 - v17;
  v307 = type metadata accessor for RecordMetadata(0);
  v292 = *(v307 - 8);
  v18 = *(v292 + 64);
  v19 = MEMORY[0x28223BE20](v307);
  v298 = &v268 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v309 = &v268 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v306 = (&v268 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v290 = (&v268 - v26);
  MEMORY[0x28223BE20](v25);
  v289 = &v268 - v27;
  v28 = type metadata accessor for Record(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v32 = &v268 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2657F2414();
  v34 = *(v33 - 8);
  v35 = v34[8];
  MEMORY[0x28223BE20](v33);
  v37 = (&v268 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *a5;
  v39 = *(v6 + 15);
  *v37 = v39;
  v40 = v34[13];
  v279 = *MEMORY[0x277D85200];
  v280 = v34 + 13;
  v278 = v40;
  v40(v37);
  v275 = v39;
  LOBYTE(v39) = sub_2657F2434();
  v42 = v34[1];
  v41 = v34 + 1;
  v283 = v37;
  v276 = v42;
  v42(v37, v33);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_144;
  }

  v273 = v41;
  v274 = v33;
  v43 = *(v6 + 13);
  v44 = *(v6 + 14);
  __swift_project_boxed_opaque_existential_1(v6 + 10, v43);
  if (((*(v44 + 16))(v43, v44) & 1) == 0)
  {
    v32 = v6;
    if (qword_281446408 == -1)
    {
LABEL_10:
      v55 = sub_2657F2344();
      __swift_project_value_buffer(v55, qword_281446410);

      v56 = sub_2657F2334();
      v57 = sub_2657F2584();

      if (!os_log_type_enabled(v56, v57))
      {
LABEL_129:

        return;
      }

      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v310[0] = v59;
      *v58 = 136380675;
      v60 = *(v32 + 26);
      if (v60)
      {
        v61 = *(v32 + 25);
        v62 = v60;
      }

      else
      {
        v66 = IDSCopyLocalDeviceUniqueID();
        if (v66)
        {
          v67 = v66;
          v61 = sub_2657F2484();
          v62 = v68;
        }

        else
        {
          v61 = 0xD000000000000017;
          v62 = 0x80000002657F8510;
        }
      }

      v75 = sub_2657B7F9C(v61, v62, v310);

      *(v58 + 4) = v75;
      v76 = "(%{private}s) Will not send records because keybag is locked";
LABEL_100:
      _os_log_impl(&dword_2657B5000, v56, v57, v76, v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x266760A30](v59, -1, -1);
      MEMORY[0x266760A30](v58, -1, -1);
      goto LABEL_129;
    }

LABEL_144:
    swift_once();
    goto LABEL_10;
  }

  ObjectType = v29;
  v45 = v6;
  if ((~*(v6 + 62) & 3) != 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v63 = sub_2657F2344();
    __swift_project_value_buffer(v63, qword_281446410);

    v56 = sub_2657F2334();
    v57 = sub_2657F2584();

    if (!os_log_type_enabled(v56, v57))
    {
      goto LABEL_129;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v310[0] = v59;
    *v58 = 136380675;
    if (v45[26])
    {
      v64 = v45[25];
      v65 = v45[26];
    }

    else
    {
      v72 = IDSCopyLocalDeviceUniqueID();
      if (v72)
      {
        v73 = v72;
        v64 = sub_2657F2484();
        v65 = v74;
      }

      else
      {
        v64 = 0xD000000000000017;
        v65 = 0x80000002657F8510;
      }
    }

    v200 = sub_2657B7F9C(v64, v65, v310);

    *(v58 + 4) = v200;
    v76 = "(%{private}s) Will not send records because sync is inactive";
    goto LABEL_100;
  }

  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v268 = v12;
  v46 = sub_2657F2344();
  v47 = __swift_project_value_buffer(v46, qword_281446410);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v288 = v47;
  v48 = sub_2657F2334();
  v49 = sub_2657F2584();

  v50 = os_log_type_enabled(v48, v49);
  v287 = v6;
  v51 = v290;
  v270 = v38;
  if (v50)
  {
    v52 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    v310[0] = v304;
    *v52 = 136381187;
    if (*(v6 + 26))
    {
      v53 = *(v6 + 25);
      v54 = *(v6 + 26);
    }

    else
    {
      v69 = IDSCopyLocalDeviceUniqueID();
      if (v69)
      {
        v70 = v69;
        v53 = sub_2657F2484();
        v54 = v71;
      }

      else
      {
        v53 = 0xD000000000000017;
        v54 = 0x80000002657F8510;
      }

      v45 = v287;
    }

    v77 = sub_2657B7F9C(v53, v54, v310);

    *(v52 + 4) = v77;
    *(v52 + 12) = 2050;
    v78 = *(a1 + 16);

    *(v52 + 14) = v78;

    *(v52 + 22) = 2050;
    v79 = *(v308 + 16);

    *(v52 + 24) = v79;

    _os_log_impl(&dword_2657B5000, v48, v49, "(%{private}s) Sending %{public}ld modified records and %{public}ld deleted records", v52, 0x20u);
    v80 = v304;
    __swift_destroy_boxed_opaque_existential_1(v304);
    MEMORY[0x266760A30](v80, -1, -1);
    MEMORY[0x266760A30](v52, -1, -1);

    v51 = v290;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v81 = swift_allocObject();
  v271 = v81;
  *(v81 + 16) = MEMORY[0x277D84FA0];
  v82 = v81 + 16;
  v83 = sub_2657E3448(a1);
  v84 = sub_2657E7728(v83);

  v272 = v84;
  v86 = *(v84 + 16);
  v87 = v289;
  if (v86)
  {
    v88 = v272 + ((*(ObjectType + 80) + 32) & ~*(ObjectType + 80));
    v89 = *(ObjectType + 72);
    do
    {
      sub_2657EF7EC(v88, v32, type metadata accessor for Record);
      sub_2657EF7EC(v32, v51, type metadata accessor for RecordMetadata);
      sub_2657EF854(v32, type metadata accessor for Record);
      sub_2657C62B8(v87, v51);
      sub_2657EF854(v87, type metadata accessor for RecordMetadata);
      v88 += v89;
      --v86;
    }

    while (v86);
  }

  v90 = *(v308 + 16);
  v302 = v82;
  v297 = v90;
  if (v90)
  {
    v91 = 0;
    v296 = v308 + 32;
    v295 = (v292 + 48);
    v301 = MEMORY[0x277D84F90];
    v269 = 0x80000002657F8510;
    *&v85 = 136380931;
    v286 = v85;
    v92 = v291;
    v93 = v306;
    v94 = v45;
    while (1)
    {
      v304 = v91;
      v97 = (v296 + 32 * v91);
      v98 = *v97;
      v99 = v97[1];
      v100 = v97[2];
      v101 = v97[3];
      v102 = v94[8];
      v103 = v94[9];
      __swift_project_boxed_opaque_existential_1(v94 + 5, v102);
      v299 = v98;
      v310[0] = v98;
      v310[1] = v99;
      v300 = v100;
      v311 = v100;
      v312 = v101;
      v104 = v94;
      v105 = *(v103 + 72);

      v105(v310, v102, v103);
      if ((*v295)(v92, 1, v307) == 1)
      {
        sub_2657CC304(v92, &unk_280023C10, &qword_2657F4100);

        v106 = sub_2657F2334();
        v107 = sub_2657F2584();

        v108 = v99;
        v94 = v104;
        if (os_log_type_enabled(v106, v107))
        {
          v109 = v104;
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v314 = v111;
          *v110 = v286;
          if (v104[26])
          {
            v112 = v104[25];
            v113 = v109[26];
          }

          else
          {
            v154 = IDSCopyLocalDeviceUniqueID();
            if (v154)
            {
              v155 = v154;
              v112 = sub_2657F2484();
              v113 = v156;
            }

            else
            {
              v112 = 0xD000000000000017;
              v113 = v269;
            }
          }

          v157 = sub_2657B7F9C(v112, v113, &v314);

          *(v110 + 4) = v157;
          *(v110 + 12) = 2082;
          v310[0] = 0;
          v310[1] = 0xE000000000000000;
          sub_2657F2704();

          strcpy(v310, "identifier: ");
          BYTE5(v310[1]) = 0;
          HIWORD(v310[1]) = -5120;
          MEMORY[0x26675FFF0](v299, v108);
          MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x26675FFF0](v300, v101);

          v158 = sub_2657B7F9C(v310[0], v310[1], &v314);

          *(v110 + 14) = v158;
          _os_log_impl(&dword_2657B5000, v106, v107, "(%{private}s) Metadata store does not contain an entry for deleted record %{public}s", v110, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266760A30](v111, -1, -1);
          MEMORY[0x266760A30](v110, -1, -1);

          v96 = v302;
          v92 = v291;
          v93 = v306;
          v95 = v304;
          v94 = v287;
        }

        else
        {

          v93 = v306;
          v95 = v304;
          v96 = v302;
        }

        goto LABEL_36;
      }

      v294 = v101;
      v293 = v99;
      v114 = v302;
      sub_2657F03E8(v92, v93, type metadata accessor for RecordMetadata);
      v115 = v93;
      v116 = v104[23];
      v94 = v104;
      v117 = v301;
      if (!*(v116 + 16))
      {
        goto LABEL_62;
      }

      v118 = *(v116 + 40);
      sub_2657F28D4();
      v119 = *v115;
      v120 = v115[1];
      v121 = v115[2];
      v122 = v115[3];

      sub_2657F24C4();
      v308 = v121;
      v123 = v122;
      sub_2657F24C4();
      v124 = v307;
      v125 = *(v307 + 20);
      sub_2657F22A4();
      sub_2657EF918(&unk_280023C20, MEMORY[0x277CC9578]);
      ObjectType = v125;
      sub_2657F2464();
      v303 = *(v115 + *(v124 + 24));
      sub_2657F28F4();
      v126 = sub_2657F2904();
      v127 = -1 << *(v116 + 32);
      v128 = v126 & ~v127;
      if (((*(v116 + 56 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128) & 1) == 0)
      {
LABEL_61:

        v94 = v287;
        v114 = v302;
        v117 = v301;
        v92 = v291;
        v115 = v306;
LABEL_62:

        sub_2657EF7EC(v115, v298, type metadata accessor for RecordMetadata);
        v93 = v115;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_2657CFDD8(0, v117[2] + 1, 1, v117);
        }

        v149 = v289;
        v96 = v114;
        v151 = v117[2];
        v150 = v117[3];
        if (v151 >= v150 >> 1)
        {
          v117 = sub_2657CFDD8(v150 > 1, v151 + 1, 1, v117);
        }

        v117[2] = v151 + 1;
        v152 = (*(v292 + 80) + 32) & ~*(v292 + 80);
        v301 = v117;
        sub_2657F03E8(v298, v117 + v152 + *(v292 + 72) * v151, type metadata accessor for RecordMetadata);
        v153 = v290;
        sub_2657EF7EC(v93, v290, type metadata accessor for RecordMetadata);
        sub_2657C62B8(v149, v153);
        sub_2657EF854(v149, type metadata accessor for RecordMetadata);
        sub_2657EF854(v93, type metadata accessor for RecordMetadata);
LABEL_67:
        v95 = v304;
        goto LABEL_36;
      }

      v129 = ~v127;
      v130 = *(v292 + 72);
      while (1)
      {
        v131 = v309;
        sub_2657EF7EC(*(v116 + 48) + v130 * v128, v309, type metadata accessor for RecordMetadata);
        v132 = *v131;
        v133 = v131[1];
        v134 = v131[2];
        v135 = v131[3];
        v136 = v132 == v119 && v133 == v120;
        if (v136 || (sub_2657F2864() & 1) != 0)
        {
          v137 = v134 == v308 && v135 == v123;
          if (v137 || (sub_2657F2864() & 1) != 0)
          {
            v138 = v309 + *(v307 + 20);
            if (sub_2657F2274())
            {
              break;
            }
          }
        }

        sub_2657EF854(v309, type metadata accessor for RecordMetadata);
LABEL_45:
        v128 = (v128 + 1) & v129;
        if (((*(v116 + 56 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128) & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      v139 = *(v309 + *(v307 + 24));
      sub_2657EF854(v309, type metadata accessor for RecordMetadata);
      if (v303 != v139)
      {
        goto LABEL_45;
      }

      v94 = v287;

      v140 = v293;

      v141 = sub_2657F2334();
      v142 = sub_2657F2584();

      if (!os_log_type_enabled(v141, v142))
      {

        v93 = v306;
        sub_2657EF854(v306, type metadata accessor for RecordMetadata);
        v96 = v302;
        v92 = v291;
        goto LABEL_67;
      }

      v143 = v94;
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v314 = v145;
      *v144 = v286;
      if (v143[26])
      {
        v146 = v143;
        v147 = v143[25];
        v148 = v143[26];
      }

      else
      {
        v146 = v143;
        v159 = IDSCopyLocalDeviceUniqueID();
        if (v159)
        {
          v160 = v159;
          v147 = sub_2657F2484();
          v148 = v161;
        }

        else
        {
          v147 = 0xD000000000000017;
          v148 = v269;
        }
      }

      v162 = sub_2657B7F9C(v147, v148, &v314);

      *(v144 + 4) = v162;
      *(v144 + 12) = 2082;
      v310[0] = 0;
      v310[1] = 0xE000000000000000;
      sub_2657F2704();

      strcpy(v310, "identifier: ");
      BYTE5(v310[1]) = 0;
      HIWORD(v310[1]) = -5120;
      MEMORY[0x26675FFF0](v299, v140);
      MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
      MEMORY[0x26675FFF0](v300, v294);

      v163 = sub_2657B7F9C(v310[0], v310[1], &v314);

      *(v144 + 14) = v163;
      _os_log_impl(&dword_2657B5000, v141, v142, "(%{private}s) Metadata for deleted record %{public}s is already syncing", v144, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266760A30](v145, -1, -1);
      MEMORY[0x266760A30](v144, -1, -1);

      v93 = v306;
      sub_2657EF854(v306, type metadata accessor for RecordMetadata);
      v96 = v302;
      v92 = v291;
      v95 = v304;
      v94 = v146;
LABEL_36:
      v91 = (v95 + 1);
      if (v91 == v297)
      {
        goto LABEL_78;
      }
    }
  }

  v96 = v82;
  v301 = MEMORY[0x277D84F90];
  v94 = v45;
LABEL_78:
  if (!*(*v96 + 16))
  {

    v56 = sub_2657F2334();
    v174 = sub_2657F2584();

    if (os_log_type_enabled(v56, v174))
    {
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v310[0] = v176;
      *v175 = 136380675;
      v177 = v94[26];
      if (v177)
      {
        v178 = v94[25];
        v179 = v177;
      }

      else
      {
        v201 = IDSCopyLocalDeviceUniqueID();
        if (v201)
        {
          v202 = v201;
          v178 = sub_2657F2484();
          v179 = v203;
        }

        else
        {
          v178 = 0xD000000000000017;
          v179 = 0x80000002657F8510;
        }
      }

      v213 = sub_2657B7F9C(v178, v179, v310);

      *(v175 + 4) = v213;
      _os_log_impl(&dword_2657B5000, v56, v174, "(%{private}s) Update message is empty; will not send", v175, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v176);
      MEMORY[0x266760A30](v176, -1, -1);
      MEMORY[0x266760A30](v175, -1, -1);
    }

    goto LABEL_129;
  }

  v164 = v272;
  swift_bridgeObjectRetain_n();
  v165 = v301;
  swift_bridgeObjectRetain_n();

  v166 = sub_2657F2334();
  v167 = sub_2657F2584();

  if (os_log_type_enabled(v166, v167))
  {
    v168 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v310[0] = v169;
    *v168 = 136381187;
    v170 = v94[26];
    if (v170)
    {
      v171 = v94;
      v172 = v94[25];
      v173 = v170;
    }

    else
    {
      v171 = v94;
      v196 = IDSCopyLocalDeviceUniqueID();
      if (v196)
      {
        v197 = v196;
        v172 = sub_2657F2484();
        v173 = v198;
      }

      else
      {
        v172 = 0xD000000000000017;
        v173 = 0x80000002657F8510;
      }
    }

    v165 = v301;

    v204 = sub_2657B7F9C(v172, v173, v310);

    *(v168 + 4) = v204;
    *(v168 + 12) = 2050;
    v164 = v272;
    v205 = *(v272 + 16);

    *(v168 + 14) = v205;

    *(v168 + 22) = 2050;
    v206 = *(v165 + 16);

    *(v168 + 24) = v206;

    _os_log_impl(&dword_2657B5000, v166, v167, "(%{private}s) Syncing %{public}ld modifications and %{public}ld deletions", v168, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v169);
    MEMORY[0x266760A30](v169, -1, -1);
    MEMORY[0x266760A30](v168, -1, -1);

    v94 = v171;
    if (v171[2])
    {
      goto LABEL_105;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    if (v94[2])
    {
LABEL_105:
      v199 = 0;
      goto LABEL_119;
    }
  }

  v180 = v94[8];
  v181 = v94[9];
  __swift_project_boxed_opaque_existential_1(v94 + 5, v180);
  LOBYTE(v180) = (*(v181 + 136))(v284, v285, v180, v181);

  v182 = sub_2657F2334();
  v183 = sub_2657F2584();

  v184 = os_log_type_enabled(v182, v183);
  if (v180)
  {
    if (v184)
    {
      v185 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v310[0] = v186;
      *v185 = 136380675;
      v187 = v94[26];
      if (v187)
      {
        v188 = v94;
        v189 = v94[25];
        v190 = v187;
      }

      else
      {
        v188 = v94;
        v301 = v165;
        v207 = IDSCopyLocalDeviceUniqueID();
        if (v207)
        {
          v208 = v207;
          v189 = sub_2657F2484();
          v190 = v209;
        }

        else
        {
          v189 = 0xD000000000000017;
          v190 = 0x80000002657F8510;
        }

        v165 = v301;
      }

      v214 = sub_2657B7F9C(v189, v190, v310);

      *(v185 + 4) = v214;
      _os_log_impl(&dword_2657B5000, v182, v183, "(%{private}s) Paired device has synced before; sending as update", v185, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v186);
      MEMORY[0x266760A30](v186, -1, -1);
      MEMORY[0x266760A30](v185, -1, -1);

      v199 = 0;
LABEL_118:
      v164 = v272;
      v94 = v188;
      goto LABEL_119;
    }

    v199 = 0;
  }

  else
  {
    if (v184)
    {
      v191 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v310[0] = v192;
      *v191 = 136380675;
      v193 = v94[26];
      if (v193)
      {
        v188 = v94;
        v194 = v94[25];
        v195 = v193;
      }

      else
      {
        v188 = v94;
        v301 = v165;
        v210 = IDSCopyLocalDeviceUniqueID();
        if (v210)
        {
          v211 = v210;
          v194 = sub_2657F2484();
          v195 = v212;
        }

        else
        {
          v194 = 0xD000000000000017;
          v195 = 0x80000002657F8510;
        }

        v165 = v301;
      }

      v215 = sub_2657B7F9C(v194, v195, v310);

      *(v191 + 4) = v215;
      _os_log_impl(&dword_2657B5000, v182, v183, "(%{private}s) Paired device has never synced; sending as replace", v191, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v192);
      MEMORY[0x266760A30](v192, -1, -1);
      MEMORY[0x266760A30](v191, -1, -1);

      v199 = 1;
      goto LABEL_118;
    }

    v199 = 1;
  }

  v164 = v272;
LABEL_119:
  v317 = v270;
  v314 = v164;
  v315 = v165;
  v316 = v199;
  sub_2657E8044(&v317, &v314, v310);
  sub_2657D3E70(v314, v315, v316);
  LODWORD(v216) = LOBYTE(v310[0]);
  v217 = v310[1];
  v307 = v311;
  v308 = v312;
  v309 = v313;
  v218 = v277;
  sub_2657F22C4();
  v219 = sub_2657F22B4();
  v221 = v220;
  (*(v281 + 8))(v218, v282);
  v222 = *v96;
  swift_beginAccess();

  v223 = v94[21];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v314 = v94[21];
  v94[21] = 0x8000000000000000;
  sub_2657C97D0(v222, v219, v221, isUniquelyReferenced_nonNull_native);

  v94[21] = v314;
  swift_endAccess();

  v225 = v268;
  sub_2657F2284();
  v226 = sub_2657F22A4();
  (*(*(v226 - 8) + 56))(v225, 0, 1, v226);
  swift_beginAccess();
  sub_2657C163C(v225, v219, v221);
  swift_endAccess();
  v227 = v94[23];
  v228 = *v96;

  v230 = sub_2657D5518(v229, v227);
  v231 = v94[23];
  v94[23] = v230;

  v232 = v283;
  v233 = v275;
  *v283 = v275;
  v234 = v274;
  v278(v232, v279, v274);
  v235 = v233;
  v236 = sub_2657F2434();
  v276(v232, v234);
  if (v236)
  {
    sub_2657E4F94();
    sub_2657EA2F0();
    swift_retain_n();
    swift_retain_n();
    v237 = sub_2657F2334();
    v238 = sub_2657F2584();
    v239 = os_log_type_enabled(v237, v238);
    v306 = v217;
    if (v239)
    {
      LODWORD(ObjectType) = v216;
      v240 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v310[0] = v241;
      *v240 = 136381187;
      if (v94[26])
      {
        v242 = v94[25];
        v243 = v94[26];
      }

      else
      {
        v244 = IDSCopyLocalDeviceUniqueID();
        if (v244)
        {
          v245 = v244;
          v242 = sub_2657F2484();
          v243 = v246;
        }

        else
        {
          v242 = 0xD000000000000017;
          v243 = 0x80000002657F8510;
        }

        v94 = v287;
      }

      v247 = sub_2657B7F9C(v242, v243, v310);

      *(v240 + 4) = v247;
      *(v240 + 12) = 2050;
      swift_beginAccess();
      v216 = *(*(v271 + 16) + 16);

      *(v240 + 14) = v216;

      *(v240 + 22) = 2050;
      v248 = *(v94[23] + 16);

      *(v240 + 24) = v248;

      _os_log_impl(&dword_2657B5000, v237, v238, "(%{private}s) Added %{public}ld inflight records; %{public}ld remaining", v240, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v241);
      MEMORY[0x266760A30](v241, -1, -1);
      MEMORY[0x266760A30](v240, -1, -1);

      LOBYTE(v216) = ObjectType;
      v217 = v306;
    }

    else
    {
    }

    swift_retain_n();
    v249 = sub_2657F2334();
    v250 = sub_2657F2584();
    if (os_log_type_enabled(v249, v250))
    {
      ObjectType = v219;
      v251 = swift_slowAlloc();
      v252 = swift_slowAlloc();
      v310[0] = v252;
      *v251 = 136380931;
      if (v94[26])
      {
        v253 = v216;
        v254 = v94[25];
        v216 = v94[26];
      }

      else
      {
        v253 = v216;
        v255 = IDSCopyLocalDeviceUniqueID();
        if (v255)
        {
          v256 = v255;
          v254 = sub_2657F2484();
          v216 = v257;
        }

        else
        {
          v254 = 0xD000000000000017;
          v216 = 0x80000002657F8510;
        }

        v94 = v287;
      }

      v258 = sub_2657B7F9C(v254, v216, v310);

      *(v251 + 4) = v258;
      *(v251 + 12) = 2050;
      v259 = *(v94[21] + 16);

      *(v251 + 14) = v259;

      _os_log_impl(&dword_2657B5000, v249, v250, "(%{private}s) %{public}ld outstanding request identifiers", v251, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v252);
      MEMORY[0x266760A30](v252, -1, -1);
      MEMORY[0x266760A30](v251, -1, -1);

      LOBYTE(v216) = v253;
      v219 = ObjectType;
      v217 = v306;
    }

    else
    {
    }

    v261 = v94[3];
    v260 = v94[4];
    ObjectType = swift_getObjectType();
    LOBYTE(v310[0]) = v216;
    v310[1] = v217;
    v311 = v307;
    v262 = v308;
    v312 = v308;
    v313 = v309;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F0, &qword_2657F41A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2657F5170;
    *(inited + 32) = v284;
    *(inited + 40) = v285;

    v264 = v94;
    v265 = sub_2657D00E8(inited);
    swift_setDeallocating();
    sub_2657EF8B4(inited + 32);
    v266 = swift_allocObject();
    v266[2] = v264;
    v266[3] = v219;
    v266[4] = v221;
    v266[5] = v271;
    v267 = *(v260 + 24);

    v267(v310, v265, sub_2657EF908, v266, ObjectType, v260);

    sub_2657BB314(v262, v309);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2657E7728(uint64_t a1)
{
  v2 = v1;
  v87 = type metadata accessor for RecordMetadata(0);
  v75 = *(v87 - 8);
  v4 = *(v75 + 64);
  MEMORY[0x28223BE20](v87);
  v6 = (&v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Record(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v74 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v78 = &v71 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = (&v71 - v14);
  v16 = sub_2657F2414();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v2[15];
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_2657F2434();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v81 = *(a1 + 16);
    if (!v81)
    {
      return MEMORY[0x277D84F90];
    }

    v25 = 0;
    v79 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v80 = a1 + v79;
    v26 = *(v8 + 72);
    v72 = 0x80000002657F8510;
    v27 = MEMORY[0x277D84F90];
    *&v24 = 136380931;
    v73 = v24;
    v28 = v78;
    v76 = v2;
    v86 = v15;
    v77 = v26;
    do
    {
      sub_2657EF7EC(v80 + v26 * v25, v15, type metadata accessor for Record);
      v29 = v2[23];
      if (*(v29 + 16))
      {
        v82 = v25;
        v83 = v27;
        v30 = *(v29 + 40);
        sub_2657F28D4();
        v31 = *v15;
        v32 = v15[1];
        v33 = v15[2];
        v34 = v15[3];

        sub_2657F24C4();
        v88 = v34;
        v89 = v33;
        sub_2657F24C4();
        v35 = v87;
        v36 = *(v87 + 20);
        sub_2657F22A4();
        sub_2657EF918(&unk_280023C20, MEMORY[0x277CC9578]);
        v85 = v36;
        sub_2657F2464();
        v84 = *(v15 + *(v35 + 24));
        sub_2657F28F4();
        v37 = sub_2657F2904();
        v38 = -1 << *(v29 + 32);
        v39 = v37 & ~v38;
        if ((*(v29 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
        {
          v40 = ~v38;
          v41 = *(v75 + 72);
          do
          {
            sub_2657EF7EC(*(v29 + 48) + v41 * v39, v6, type metadata accessor for RecordMetadata);
            v42 = v6[2];
            v43 = v6[3];
            v44 = *v6 == v31 && v6[1] == v32;
            if (v44 || (sub_2657F2864()) && (v42 == v89 ? (v45 = v43 == v88) : (v45 = 0), (v45 || (sub_2657F2864()) && (v46 = v6 + *(v87 + 20), (sub_2657F2274())))
            {
              v47 = *(v6 + *(v87 + 24));
              sub_2657EF854(v6, type metadata accessor for RecordMetadata);
              if (v84 == v47)
              {

                v48 = v74;
                if (qword_281446408 != -1)
                {
                  swift_once();
                }

                v49 = sub_2657F2344();
                __swift_project_value_buffer(v49, qword_281446410);
                v15 = v86;
                sub_2657EF7EC(v86, v48, type metadata accessor for Record);
                v2 = v76;

                v50 = sub_2657F2334();
                v51 = sub_2657F2584();

                v52 = os_log_type_enabled(v50, v51);
                v26 = v77;
                v27 = v83;
                if (v52)
                {
                  v53 = swift_slowAlloc();
                  v88 = swift_slowAlloc();
                  v90 = v88;
                  *v53 = v73;
                  v54 = v2[26];
                  LODWORD(v89) = v51;
                  if (v54)
                  {
                    v55 = v2[25];
                    v56 = v54;
                  }

                  else
                  {
                    v59 = IDSCopyLocalDeviceUniqueID();
                    if (v59)
                    {
                      v60 = v59;
                      v55 = sub_2657F2484();
                      v56 = v61;
                    }

                    else
                    {
                      v55 = 0xD000000000000017;
                      v56 = v72;
                    }
                  }

                  v62 = sub_2657B7F9C(v55, v56, &v90);

                  *(v53 + 4) = v62;
                  *(v53 + 12) = 2082;
                  v63 = *v48;
                  v64 = v48[1];
                  v65 = v48[2];
                  v66 = v48[3];
                  v91[0] = 0;
                  v91[1] = 0xE000000000000000;

                  sub_2657F2704();

                  strcpy(v91, "identifier: ");
                  BYTE5(v91[1]) = 0;
                  HIWORD(v91[1]) = -5120;
                  MEMORY[0x26675FFF0](v63, v64);
                  MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
                  MEMORY[0x26675FFF0](v65, v66);
                  v67 = v91[0];
                  v68 = v91[1];
                  sub_2657EF854(v48, type metadata accessor for Record);

                  v69 = sub_2657B7F9C(v67, v68, &v90);

                  *(v53 + 14) = v69;
                  _os_log_impl(&dword_2657B5000, v50, v89, "(%{private}s) Metadata for record %{public}s is already syncing", v53, 0x16u);
                  v70 = v88;
                  swift_arrayDestroy();
                  MEMORY[0x266760A30](v70, -1, -1);
                  MEMORY[0x266760A30](v53, -1, -1);

                  v15 = v86;
                  sub_2657EF854(v86, type metadata accessor for Record);
                  v28 = v78;
                  v25 = v82;
                  v27 = v83;
                  v26 = v77;
                }

                else
                {

                  sub_2657EF854(v48, type metadata accessor for Record);
                  sub_2657EF854(v15, type metadata accessor for Record);
                  v28 = v78;
                  v25 = v82;
                }

                goto LABEL_32;
              }
            }

            else
            {
              sub_2657EF854(v6, type metadata accessor for RecordMetadata);
            }

            v39 = (v39 + 1) & v40;
          }

          while (((*(v29 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0);
        }

        v2 = v76;
        v28 = v78;
        v15 = v86;
        v25 = v82;
        v27 = v83;
        v26 = v77;
      }

      sub_2657EF7EC(v15, v28, type metadata accessor for Record);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_2657CFDB0(0, v27[2] + 1, 1, v27);
      }

      v58 = v27[2];
      v57 = v27[3];
      if (v58 >= v57 >> 1)
      {
        v27 = sub_2657CFDB0(v57 > 1, v58 + 1, 1, v27);
      }

      v27[2] = v58 + 1;
      sub_2657F03E8(v28, v27 + v79 + v58 * v26, type metadata accessor for Record);
      sub_2657EF854(v15, type metadata accessor for Record);
LABEL_32:
      ++v25;
    }

    while (v25 != v81);
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2657E8044@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v7 = *a1;
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = sub_2657F21E4();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_2657F21D4();
  v35[0] = v8;
  v35[1] = v9;
  v36 = v10;
  sub_2657F0394();
  v14 = sub_2657F21C4();
  if (v4)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v16 = sub_2657F2344();
    __swift_project_value_buffer(v16, qword_281446410);

    v17 = v4;
    v18 = sub_2657F2334();
    v19 = sub_2657F2574();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v20 = 136380931;
      if (*(v5 + 208))
      {
        v21 = *(v5 + 200);
        v22 = *(v5 + 208);
      }

      else
      {
        v26 = IDSCopyLocalDeviceUniqueID();
        if (v26)
        {
          v27 = v26;
          v21 = sub_2657F2484();
          v22 = v28;
        }

        else
        {
          v22 = 0x80000002657F8510;
          v21 = 0xD000000000000017;
        }
      }

      v29 = sub_2657B7F9C(v21, v22, v35);

      *(v20 + 4) = v29;
      *(v20 + 12) = 2082;
      v37 = v4;
      v30 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023928, &qword_2657F4300);
      v31 = sub_2657F24A4();
      v33 = sub_2657B7F9C(v31, v32, v35);

      *(v20 + 14) = v33;
      _os_log_impl(&dword_2657B5000, v18, v19, "(%{private}s) Failed to encode message: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266760A30](v34, -1, -1);
      MEMORY[0x266760A30](v20, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v23 = v14;
    v24 = v15;

    *a3 = v7;
    *(a3 + 8) = 0x69676E45636E7953;
    *(a3 + 16) = 0xEA0000000000656ELL;
    *(a3 + 24) = v23;
    *(a3 + 32) = v24;
  }

  return result;
}

uint64_t sub_2657E831C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a7 + 16;
  v14 = *(a4 + 120);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  *(v15 + 32) = a6;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  a3 &= 1u;
  *(v15 + 56) = a3;
  *(v15 + 64) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2657EF960;
  *(v16 + 24) = v15;
  v19[4] = sub_2657F06A0;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2657CF61C;
  v19[3] = &block_descriptor_397;
  v17 = _Block_copy(v19);

  sub_2657EF978(a1, a2, a3);

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

void sub_2657E84C4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v39 - v16;
  swift_beginAccess();

  sub_2657C14F4(0, a2, a3);
  swift_endAccess();
  v18 = sub_2657F22A4();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  swift_beginAccess();

  sub_2657C163C(v17, a2, a3);
  swift_endAccess();
  if (a6)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v19 = sub_2657F2344();
    __swift_project_value_buffer(v19, qword_281446410);

    sub_2657EF978(a4, a5, 1);
    v20 = sub_2657F2334();
    v21 = sub_2657F2574();

    sub_2657D1110(a4, a5, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v40 = a7;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v42[0] = v23;
      *v22 = 136380931;
      if (a1[26])
      {
        v24 = a1[25];
        v25 = a1[26];
      }

      else
      {
        v26 = IDSCopyLocalDeviceUniqueID();
        if (v26)
        {
          v27 = v26;
          v24 = sub_2657F2484();
          v25 = v28;
        }

        else
        {
          v25 = 0x80000002657F8510;
          v24 = 0xD000000000000017;
        }
      }

      v29 = sub_2657B7F9C(v24, v25, v42);

      *(v22 + 4) = v29;
      *(v22 + 12) = 2080;
      v41 = a4;
      v30 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023928, &qword_2657F4300);
      v31 = sub_2657F24A4();
      v33 = sub_2657B7F9C(v31, v32, v42);

      *(v22 + 14) = v33;
      _os_log_impl(&dword_2657B5000, v20, v21, "(%{private}s) Error sending record modifications: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266760A30](v23, -1, -1);
      MEMORY[0x266760A30](v22, -1, -1);

      a7 = v40;
    }

    else
    {
    }

    v34 = a1[23];
    swift_beginAccess();
    if (*(*a7 + 16) <= *(v34 + 16) >> 3)
    {
      v41 = v34;

      sub_2657ECF6C(v37);

      v36 = v41;
    }

    else
    {

      v36 = sub_2657ED164(v35, v34);
    }

    v38 = a1[23];
    a1[23] = v36;

    sub_2657E88B0();
  }
}

void sub_2657E88B0()
{
  v1 = v0;
  v2 = sub_2657F2414();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 120);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = sub_2657F2434();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  v10 = *(v1 + 104);
  v11 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1((v1 + 80), v10);
  if ((*(v11 + 16))(v10, v11))
  {
    if ((~*(v1 + 248) & 3) == 0)
    {
      v12 = *(v1 + 128);
      v13 = *(v1 + 136);
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 8);

      v15(v8, sub_2657EF990, v1, ObjectType, v13);

      return;
    }

    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v24 = sub_2657F2344();
    __swift_project_value_buffer(v24, qword_281446410);

    v17 = sub_2657F2334();
    v18 = sub_2657F2574();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38 = v20;
      *v19 = 136380675;
      v25 = *(v1 + 208);
      if (v25)
      {
        v26 = *(v1 + 200);
        v27 = v25;
      }

      else
      {
        v31 = IDSCopyLocalDeviceUniqueID();
        if (v31)
        {
          v32 = v31;
          v26 = sub_2657F2484();
          v27 = v33;
        }

        else
        {
          v26 = 0xD000000000000017;
          v27 = 0x80000002657F8510;
        }
      }

      v36 = sub_2657B7F9C(v26, v27, &v38);

      *(v19 + 4) = v36;
      v35 = "(%{private}s) Will not set retry timer because sync is inactive";
LABEL_22:
      _os_log_impl(&dword_2657B5000, v17, v18, v35, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x266760A30](v20, -1, -1);
      MEMORY[0x266760A30](v19, -1, -1);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  v16 = sub_2657F2344();
  __swift_project_value_buffer(v16, qword_281446410);

  v17 = sub_2657F2334();
  v18 = sub_2657F2574();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v20;
    *v19 = 136380675;
    v21 = *(v1 + 208);
    if (v21)
    {
      v22 = *(v1 + 200);
      v23 = v21;
    }

    else
    {
      v28 = IDSCopyLocalDeviceUniqueID();
      if (v28)
      {
        v29 = v28;
        v22 = sub_2657F2484();
        v23 = v30;
      }

      else
      {
        v22 = 0xD000000000000017;
        v23 = 0x80000002657F8510;
      }
    }

    v34 = sub_2657B7F9C(v22, v23, &v38);

    *(v19 + 4) = v34;
    v35 = "(%{private}s) Will not set retry timer because keybag is locked";
    goto LABEL_22;
  }

LABEL_23:
}

void sub_2657E8D08(void *a1, uint64_t a2, char a3, uint64_t a4, const char *a5, const char *a6)
{
  if (a3)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v10 = sub_2657F2344();
    __swift_project_value_buffer(v10, qword_281446410);

    sub_2657EF978(a1, a2, 1);
    oslog = sub_2657F2334();
    v11 = sub_2657F2574();

    sub_2657D1110(a1, a2, 1);
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v39 = v13;
      *v12 = 136380931;
      v14 = *(a4 + 208);
      if (v14)
      {
        v15 = *(a4 + 200);
        v16 = v14;
      }

      else
      {
        v25 = IDSCopyLocalDeviceUniqueID();
        if (v25)
        {
          v26 = v25;
          v15 = sub_2657F2484();
          v16 = v27;
        }

        else
        {
          v15 = 0xD000000000000017;
          v16 = 0x80000002657F8510;
        }
      }

      v31 = sub_2657B7F9C(v15, v16, &v39);

      *(v12 + 4) = v31;
      *(v12 + 12) = 2082;
      v32 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023928, &qword_2657F4300);
      v33 = sub_2657F24A4();
      v35 = sub_2657B7F9C(v33, v34, &v39);

      *(v12 + 14) = v35;
      _os_log_impl(&dword_2657B5000, oslog, v11, a5, v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266760A30](v13, -1, -1);
      v36 = v12;
LABEL_23:
      MEMORY[0x266760A30](v36, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v18 = sub_2657F2344();
    __swift_project_value_buffer(v18, qword_281446410);

    oslog = sub_2657F2334();
    v19 = sub_2657F2584();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136380675;
      v22 = *(a4 + 208);
      if (v22)
      {
        v23 = *(a4 + 200);
        v24 = v22;
      }

      else
      {
        v28 = IDSCopyLocalDeviceUniqueID();
        if (v28)
        {
          v29 = v28;
          v23 = sub_2657F2484();
          v24 = v30;
        }

        else
        {
          v23 = 0xD000000000000017;
          v24 = 0x80000002657F8510;
        }
      }

      v37 = sub_2657B7F9C(v23, v24, &v39);

      *(v20 + 4) = v37;
      _os_log_impl(&dword_2657B5000, oslog, v19, a6, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x266760A30](v21, -1, -1);
      v36 = v20;
      goto LABEL_23;
    }
  }
}

uint64_t sub_2657E90E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v114 = &v112 - v5;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C70, &unk_2657F5380);
  v6 = *(*(v127 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v127);
  v126 = (&v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v125 = &v112 - v10;
  MEMORY[0x28223BE20](v9);
  v124 = &v112 - v11;
  v129 = sub_2657F22A4();
  v12 = *(v129 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v129);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2657F2414();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = v1;
  v21 = v1[15];
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_2657F2434();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    goto LABEL_57;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v23 = sub_2657F2344();
    __swift_project_value_buffer(v23, qword_281446410);
    v24 = v12[2];
    v25 = v129;
    v123 = v12 + 2;
    v122 = v24;
    v24(v15, a1, v129);
    v26 = v113;

    v27 = sub_2657F2334();
    v28 = sub_2657F2584();

    v29 = os_log_type_enabled(v27, v28);
    v128 = v12;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v137[0] = v133;
      *v30 = 136380931;
      if (v26[26])
      {
        v31 = v26[25];
        v32 = v26[26];
      }

      else
      {
        v33 = IDSCopyLocalDeviceUniqueID();
        if (v33)
        {
          v34 = v33;
          v31 = sub_2657F2484();
          v32 = v35;
        }

        else
        {
          v32 = 0x80000002657F8510;
          v31 = 0xD000000000000017;
        }
      }

      v36 = sub_2657B7F9C(v31, v32, v137);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2082;
      sub_2657EF918(&unk_281446F40, MEMORY[0x277CC9578]);
      v37 = v129;
      v38 = sub_2657F2854();
      v40 = v39;
      v121 = v128[1];
      v121(v15, v37);
      v41 = sub_2657B7F9C(v38, v40, v137);

      *(v30 + 14) = v41;
      _os_log_impl(&dword_2657B5000, v27, v28, "(%{private}s) Removing all inflight metadata before %{public}s", v30, 0x16u);
      v42 = v133;
      swift_arrayDestroy();
      MEMORY[0x266760A30](v42, -1, -1);
      MEMORY[0x266760A30](v30, -1, -1);
    }

    else
    {

      v121 = v12[1];
      v121(v15, v25);
    }

    v43 = swift_beginAccess();
    v44 = v26[22];
    MEMORY[0x28223BE20](v43);
    *(&v112 - 2) = v45;
    *(&v112 - 1) = a1;

    v47 = sub_2657F01AC(v46, sub_2657EF9A0);

    v48 = *(v47 + 16);
    if (!v48)
    {
      break;
    }

    v136 = MEMORY[0x277D84F90];
    sub_2657CB09C(0, v48, 0);
    v49 = v136;
    v12 = (v47 + 64);
    v50 = -1 << *(v47 + 32);
    v51 = sub_2657F2674();
    v52 = 0;
    v120 = v128 + 4;
    v119 = v128 + 1;
    v115 = v47 + 72;
    v116 = v48;
    v117 = (v47 + 64);
    v118 = v47;
    v53 = v127;
    while ((v51 & 0x8000000000000000) == 0 && v51 < 1 << *(v47 + 32))
    {
      a1 = 1 << v51;
      if ((v12[v51 >> 6] & (1 << v51)) == 0)
      {
        goto LABEL_53;
      }

      v130 = v52;
      v131 = *(v47 + 36);
      v132 = v51 >> 6;
      v55 = *(v53 + 48);
      v56 = *(v47 + 56);
      v57 = (*(v47 + 48) + 16 * v51);
      v59 = *v57;
      v58 = v57[1];
      v60 = v128;
      v61 = v129;
      v62 = v124;
      v122(&v124[v55], v56 + v128[9] * v51, v129);
      v133 = v49;
      v63 = v125;
      *v125 = v59;
      *(v63 + 1) = v58;
      (v60[4])(&v63[*(v53 + 48)], &v62[v55], v61);
      v64 = v63;
      v65 = v126;
      sub_2657F032C(v64, v126, &unk_280023C70, &unk_2657F5380);
      v67 = *v65;
      v66 = v65[1];
      v68 = *(v53 + 48);

      v69 = v65 + v68;
      v49 = v133;
      v121(v69, v61);
      v136 = v49;
      v15 = *(v49 + 16);
      v70 = *(v49 + 24);
      v12 = (v15 + 1);
      if (v15 >= v70 >> 1)
      {
        sub_2657CB09C((v70 > 1), v15 + 1, 1);
        v49 = v136;
      }

      *(v49 + 16) = v12;
      v71 = v49 + 16 * v15;
      *(v71 + 32) = v67;
      *(v71 + 40) = v66;
      v47 = v118;
      v54 = 1 << *(v118 + 32);
      if (v51 >= v54)
      {
        goto LABEL_54;
      }

      v12 = v117;
      v72 = v117[v132];
      if ((v72 & a1) == 0)
      {
        goto LABEL_55;
      }

      if (v131 != *(v118 + 36))
      {
        goto LABEL_56;
      }

      v73 = v72 & (-2 << (v51 & 0x3F));
      if (v73)
      {
        v54 = __clz(__rbit64(v73)) | v51 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v74 = v132 << 6;
        v75 = v132 + 1;
        v76 = (v115 + 8 * v132);
        while (v75 < (v54 + 63) >> 6)
        {
          v77 = *v76++;
          v15 = v77;
          v74 += 64;
          ++v75;
          if (v77)
          {
            sub_2657CC3CC(v51, v131, 0);
            v54 = __clz(__rbit64(v15)) + v74;
            goto LABEL_14;
          }
        }

        sub_2657CC3CC(v51, v131, 0);
      }

LABEL_14:
      v52 = v130 + 1;
      v51 = v54;
      if (v130 + 1 == v116)
      {

        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  v49 = MEMORY[0x277D84F90];
LABEL_31:
  v133 = v49;
  v78 = *(v49 + 16);
  v79 = v113;
  if (v78)
  {
    swift_beginAccess();
    v80 = (v128 + 7);
    v132 = (v128 + 4);
    v81 = (v133 + 40);
    do
    {
      v82 = v79[21];
      if (*(v82 + 16))
      {
        v84 = *(v81 - 1);
        v83 = *v81;

        v85 = sub_2657C8374(v84, v83);
        if (v86)
        {
          v87 = *(*(v82 + 56) + 8 * v85);

          swift_beginAccess();
          v88 = v79[21];

          v89 = sub_2657C8374(v84, v83);
          LOBYTE(v88) = v90;

          if (v88)
          {
            v91 = v79[21];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v93 = v79[21];
            v134 = v93;
            v79[21] = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_2657CA74C();
              v93 = v134;
            }

            v94 = *(*(v93 + 48) + 16 * v89 + 8);

            v95 = *(*(v93 + 56) + 8 * v89);

            sub_2657EC628(v89, v93);
            v79[21] = v93;
          }

          swift_endAccess();
          swift_beginAccess();
          v96 = v79[22];
          v97 = sub_2657C8374(v84, v83);
          LOBYTE(v96) = v98;

          if (v96)
          {
            v99 = v79[22];
            v100 = swift_isUniquelyReferenced_nonNull_native();
            v101 = v79[22];
            v134 = v101;
            v79[22] = 0x8000000000000000;
            v102 = v114;
            v103 = v129;
            if (!v100)
            {
              sub_2657CA4CC();
              v101 = v134;
            }

            v104 = *(*(v101 + 48) + 16 * v97 + 8);

            (v128[4])(v102, *(v101 + 56) + v128[9] * v97, v103);
            sub_2657EC43C(v97, v101);
            v105 = v79[22];
            v79[22] = v101;

            v106 = 0;
          }

          else
          {
            v106 = 1;
            v102 = v114;
            v103 = v129;
          }

          (*v80)(v102, v106, 1, v103);
          sub_2657CC304(v102, &qword_2800237F8, &qword_2657F41A8);
          swift_endAccess();
          v107 = v79[23];
          if (*(v87 + 16) <= *(v107 + 16) >> 3)
          {
            v135 = v79[23];

            sub_2657ECF6C(v87);

            v109 = v135;
          }

          else
          {
            v108 = v79[23];

            v109 = sub_2657ED164(v87, v107);
          }

          v110 = v79[23];
          v79[23] = v109;
        }

        else
        {
        }
      }

      v81 += 2;
      --v78;
    }

    while (v78);
  }
}

uint64_t sub_2657E9C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2657F22A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 160);
  sub_2657F2224();
  v11 = sub_2657F2244();
  (*(v6 + 8))(v9, v5);
  return v11 & 1;
}

uint64_t sub_2657E9D30@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C88, &qword_2657F5390);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v68 - v7;
  v8 = sub_2657F22A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v79 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v68 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v68 - v15;
  v17 = sub_2657F2414();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v1 + 120);
  *v21 = v22;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v23 = v22;
  v24 = sub_2657F2434();
  result = (*(v18 + 8))(v21, v17);
  if (v24)
  {
    v26 = v16;
    sub_2657F2214();
    swift_beginAccess();
    v69 = v1;
    v27 = *(v1 + 176);
    v28 = *(v27 + 64);
    v71 = v27 + 64;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & v28;
    v32 = v29 + 63;
    v33 = v9;
    v34 = v32 >> 6;
    v73 = v33 + 16;
    v35 = (v33 + 32);
    v75 = v33;
    v80 = (v33 + 8);
    v77 = v27;

    v36 = 0;
    v37 = v78;
    v81 = v26;
    v82 = v8;
    v74 = v6;
    v38 = v6;
    v39 = v35;
    v72 = v35;
    while (v31)
    {
      v40 = v36;
LABEL_16:
      v43 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v44 = v43 | (v40 << 6);
      v45 = v76;
      v46 = (*(v77 + 48) + 16 * v44);
      v48 = *v46;
      v47 = v46[1];
      v49 = v75;
      v50 = v82;
      (*(v75 + 16))(v76, *(v77 + 56) + *(v75 + 72) * v44, v82);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C70, &unk_2657F5380);
      v52 = *(v51 + 48);
      v53 = v74;
      *v74 = v48;
      *(v53 + 1) = v47;
      v54 = v45;
      v38 = v53;
      v55 = v50;
      v39 = v72;
      (*(v49 + 32))(&v53[v52], v54, v55);
      (*(*(v51 - 8) + 56))(v38, 0, 1, v51);

      v42 = v40;
      v37 = v78;
LABEL_17:
      sub_2657F032C(v38, v37, &qword_280023C88, &qword_2657F5390);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C70, &unk_2657F5380);
      if ((*(*(v56 - 8) + 48))(v37, 1, v56) == 1)
      {

        v66 = *(v69 + 160);
        v67 = v81;
        sub_2657F2224();
        return (*v80)(v67, v82);
      }

      v57 = *(v37 + 8);

      v58 = *v39;
      v59 = v39;
      v60 = v79;
      v61 = v82;
      v58(v79, v37 + *(v56 + 48), v82);
      v62 = v81;
      v63 = sub_2657F2244();
      v64 = *v80;
      if (v63)
      {
        v64(v62, v61);
        result = (v58)(v62, v60, v61);
      }

      else
      {
        result = v64(v60, v61);
      }

      v36 = v42;
      v39 = v59;
    }

    if (v34 <= v36 + 1)
    {
      v41 = v36 + 1;
    }

    else
    {
      v41 = v34;
    }

    v42 = v41 - 1;
    while (1)
    {
      v40 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v40 >= v34)
      {
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C70, &unk_2657F5380);
        (*(*(v65 - 8) + 56))(v38, 1, 1, v65);
        v31 = 0;
        goto LABEL_17;
      }

      v31 = *(v71 + 8 * v40);
      ++v36;
      if (v31)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2657EA2F0()
{
  v1 = v0;
  v2 = sub_2657F23B4();
  v101 = *(v2 - 8);
  v102 = v2;
  v3 = *(v101 + 64);
  MEMORY[0x28223BE20](v2);
  v99 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2657F23E4();
  v98 = *(v100 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v97 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2657F23A4();
  v93 = *(v7 - 8);
  v8 = *(v93 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v94 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v88 - v11;
  v106 = sub_2657F2404();
  v108 = *(v106 - 8);
  v13 = *(v108 + 64);
  v14 = MEMORY[0x28223BE20](v106);
  v104 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v105 = &v88 - v16;
  v17 = sub_2657F25F4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_2657F22A4();
  v95 = *(v96 - 8);
  v22 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v107 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2657F2414();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = (&v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v1 + 120);
  *v28 = v29;
  (*(v25 + 104))(v28, *MEMORY[0x277D85200], v24);
  v103 = v29;
  LOBYTE(v29) = sub_2657F2434();
  (*(v25 + 8))(v28, v24);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (!*(*(v1 + 184) + 16))
  {
    if (qword_281446408 == -1)
    {
LABEL_11:
      v40 = sub_2657F2344();
      __swift_project_value_buffer(v40, qword_281446410);

      v41 = sub_2657F2334();
      v42 = sub_2657F2584();

      if (!os_log_type_enabled(v41, v42))
      {
LABEL_45:

        return;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock[0] = v44;
      *v43 = 136380675;
      v45 = *(v1 + 208);
      if (v45)
      {
        v46 = *(v1 + 200);
        v47 = v45;
      }

      else
      {
        v56 = IDSCopyLocalDeviceUniqueID();
        if (v56)
        {
          v57 = v56;
          v46 = sub_2657F2484();
          v47 = v58;
        }

        else
        {
          v46 = 0xD000000000000017;
          v47 = 0x80000002657F8510;
        }
      }

      v67 = sub_2657B7F9C(v46, v47, aBlock);

      *(v43 + 4) = v67;
      v68 = "(%{private}s) No inflight metadata; will not start expiration timer";
LABEL_44:
      _os_log_impl(&dword_2657B5000, v41, v42, v68, v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x266760A30](v44, -1, -1);
      MEMORY[0x266760A30](v43, -1, -1);
      goto LABEL_45;
    }

LABEL_47:
    swift_once();
    goto LABEL_11;
  }

  v30 = *(v1 + 104);
  v31 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1((v1 + 80), v30);
  if (((*(v31 + 16))(v30, v31) & 1) == 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v48 = sub_2657F2344();
    __swift_project_value_buffer(v48, qword_281446410);

    v41 = sub_2657F2334();
    v42 = sub_2657F2584();

    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_45;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136380675;
    v49 = *(v1 + 208);
    if (v49)
    {
      v50 = *(v1 + 200);
      v51 = v49;
    }

    else
    {
      v59 = IDSCopyLocalDeviceUniqueID();
      if (v59)
      {
        v60 = v59;
        v50 = sub_2657F2484();
        v51 = v61;
      }

      else
      {
        v50 = 0xD000000000000017;
        v51 = 0x80000002657F8510;
      }
    }

    v69 = sub_2657B7F9C(v50, v51, aBlock);

    *(v43 + 4) = v69;
    v68 = "(%{private}s) Will not set expiration timer because keybag is locked";
    goto LABEL_44;
  }

  if ((~*(v1 + 248) & 3) != 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v52 = sub_2657F2344();
    __swift_project_value_buffer(v52, qword_281446410);

    v41 = sub_2657F2334();
    v42 = sub_2657F2584();

    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_45;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136380675;
    v53 = *(v1 + 208);
    if (v53)
    {
      v54 = *(v1 + 200);
      v55 = v53;
    }

    else
    {
      v64 = IDSCopyLocalDeviceUniqueID();
      if (v64)
      {
        v65 = v64;
        v54 = sub_2657F2484();
        v55 = v66;
      }

      else
      {
        v54 = 0xD000000000000017;
        v55 = 0x80000002657F8510;
      }
    }

    v87 = sub_2657B7F9C(v54, v55, aBlock);

    *(v43 + 4) = v87;
    v68 = "(%{private}s) Will not set expiration timer because sync is inactive";
    goto LABEL_44;
  }

  sub_2657E9D30(v107);
  sub_2657F2254();
  v33 = v32;
  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v34 = sub_2657F2344();
  __swift_project_value_buffer(v34, qword_281446410);

  v35 = sub_2657F2334();
  v36 = sub_2657F2584();

  if (os_log_type_enabled(v35, v36))
  {
    LODWORD(v92) = v36;
    v37 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    aBlock[0] = v91;
    *v37 = 136380931;
    v38 = *(v1 + 208);
    if (v38)
    {
      v90 = *(v1 + 200);
      v39 = v38;
    }

    else
    {
      v62 = IDSCopyLocalDeviceUniqueID();
      if (v62)
      {
        v89 = v62;
        v90 = sub_2657F2484();
        v39 = v63;
      }

      else
      {
        v90 = 0xD000000000000017;
        v39 = 0x80000002657F8510;
      }
    }

    v70 = sub_2657B7F9C(v90, v39, aBlock);

    *(v37 + 4) = v70;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v33;
    _os_log_impl(&dword_2657B5000, v35, v92, "(%{private}s) Expiration timer will fire in %fs", v37, 0x16u);
    v71 = v91;
    __swift_destroy_boxed_opaque_existential_1(v91);
    MEMORY[0x266760A30](v71, -1, -1);
    MEMORY[0x266760A30](v37, -1, -1);
  }

  v92 = sub_2657D0F44(0, &qword_280023C38, 0x277D85CA0);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2657EF918(&qword_280023C40, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C48, &unk_2657F5370);
  sub_2657D53B4(&qword_280023C50, &qword_280023C48, &unk_2657F5370);
  sub_2657F2664();
  v72 = sub_2657F2604();
  (*(v18 + 8))(v21, v17);
  v73 = v104;
  sub_2657F23F4();
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v33 > -9.22337204e18)
  {
    v103 = v72;
    if (v33 < 9.22337204e18)
    {
      *v12 = v33;
      v74 = *MEMORY[0x277D85188];
      v75 = v93;
      v76 = *(v93 + 104);
      v76(v12, v74, v7);
      MEMORY[0x26675FF40](v73, v12);
      v77 = *(v75 + 8);
      v77(v12, v7);
      v78 = v7;
      v93 = *(v108 + 8);
      v108 += 8;
      (v93)(v73, v106);
      v79 = v103;
      ObjectType = swift_getObjectType();
      *v12 = 10;
      v76(v12, v74, v78);
      v81 = v94;
      v76(v94, *MEMORY[0x277D85180], v78);
      v82 = v105;
      MEMORY[0x266760160](v105, v81, v12, ObjectType);
      v77(v81, v78);
      v77(v12, v78);
      aBlock[4] = sub_2657EF998;
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2657CE9D4;
      aBlock[3] = &block_descriptor_400;
      v83 = _Block_copy(aBlock);

      v84 = v97;
      sub_2657F23C4();
      v85 = v99;
      sub_2657EB4F0();
      sub_2657F2614();
      _Block_release(v83);
      (*(v101 + 8))(v85, v102);
      (*(v98 + 8))(v84, v100);

      v86 = *(v1 + 152);
      *(v1 + 152) = v79;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      sub_2657F2634();
      swift_unknownObjectRelease_n();
      (v93)(v82, v106);
      (*(v95 + 8))(v107, v96);
      return;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_2657EB10C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_2657F23A4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2657EB180(void *a1)
{
  v2 = sub_2657F22A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2657F2414();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[15];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_2657F2434();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_281446408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_2657F2344();
  __swift_project_value_buffer(v14, qword_281446410);

  v15 = sub_2657F2334();
  v16 = sub_2657F2584();

  if (os_log_type_enabled(v15, v16))
  {
    v30 = v3;
    v31 = v2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = 136380675;
    if (a1[26])
    {
      v19 = a1[25];
      v20 = a1[26];
    }

    else
    {
      v21 = IDSCopyLocalDeviceUniqueID();
      if (v21)
      {
        v22 = v21;
        v19 = sub_2657F2484();
        v20 = v23;
      }

      else
      {
        v20 = 0x80000002657F8510;
        v19 = 0xD000000000000017;
      }
    }

    v24 = sub_2657B7F9C(v19, v20, &v32);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_2657B5000, v15, v16, "(%{private}s) Expiration timer fired", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x266760A30](v18, -1, -1);
    MEMORY[0x266760A30](v17, -1, -1);

    v3 = v30;
    v2 = v31;
  }

  else
  {
  }

  sub_2657E4F94();
  sub_2657F2284();
  sub_2657E90E0(v6);
  result = (*(v3 + 8))(v6, v2);
  v26 = a1[36];
  if (v26)
  {
    v27 = a1[37];

    v26(v28);
    return sub_2657BA1AC(v26);
  }

  return result;
}

uint64_t sub_2657EB4F0()
{
  sub_2657F23B4();
  sub_2657EF918(&qword_2814463D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C60, &qword_2657F4228);
  sub_2657D53B4(&unk_2814463C0, &unk_280023C60, &qword_2657F4228);
  return sub_2657F2664();
}

uint64_t sub_2657EB5DC(char a1, uint64_t a2)
{
  v4 = sub_2657F2414();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 120);
  *v8 = v9;
  v10 = *MEMORY[0x277D85200];
  v11 = v5[13];
  v11(v8, v10, v4);
  v32 = v9;
  LOBYTE(v9) = sub_2657F2434();
  v12 = v5[1];
  result = v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v31 = v11;
  v14 = a1;
  v15 = *(a2 + 304);
  if (v15)
  {
    v16 = *(a2 + 312);

    v15(v17);
    sub_2657BA1AC(v15);
  }

  v18 = *(a2 + 320);
  if (v18 && (v14 & 1) != 0)
  {
    v19 = *(a2 + 328);

    v18(v20);
    sub_2657BA1AC(v18);
  }

  v21 = v31;
  *v8 = v32;
  v21(v8, v10, v4);
  v22 = sub_2657F2434();
  result = v12(v8, v4);
  if ((v22 & 1) == 0)
  {
    goto LABEL_12;
  }

  v23 = *(a2 + 128);
  v24 = *(a2 + 136);
  ObjectType = swift_getObjectType();
  (*(v24 + 16))(ObjectType, v24);
  v26 = *(*(a2 + 216) + 16);

  os_unfair_lock_lock(v26);
  v27 = *(a2 + 224);
  v28 = *(a2 + 232);
  v29 = *(a2 + 240);

  os_unfair_lock_unlock(v26);

  if (v28)
  {
    v33 = HIBYTE(v29) & 1;

    sub_2657B8A48(v27, v28, &v33);
    return swift_bridgeObjectRelease_n();
  }

  return result;
}

void sub_2657EB840(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_2657F2414();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v9 = a1[1];
  v11 = *(a1 + 17);
  v12 = *(v2 + 120);
  *v8 = v12;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v13 = v12;
  LOBYTE(v12) = sub_2657F2434();
  (*(v5 + 8))(v8, v4);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  v14 = *(v2 + 104);
  v15 = *(v2 + 112);
  __swift_project_boxed_opaque_existential_1((v2 + 80), v14);
  if ((*(v15 + 16))(v14, v15))
  {
    if ((~*(v2 + 248) & 3) == 0)
    {
      v51 = v11;
      v48 = 0;
      v49 = 0;
      v50 = 3;
      sub_2657E8044(&v51, &v48, &v52);
      sub_2657D3E70(v48, v49, v50);
      v28 = v52;
      v30 = v53;
      v29 = v54;
      v31 = v55;
      v32 = v56;
      v33 = *(v2 + 24);
      v34 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      LOBYTE(v52) = v28;
      v53 = v30;
      v54 = v29;
      v55 = v31;
      v56 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F0, &qword_2657F41A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2657F5170;
      *(inited + 32) = v10;
      *(inited + 40) = v9;

      v36 = sub_2657D00E8(inited);
      swift_setDeallocating();
      sub_2657EF8B4(inited + 32);
      v37 = *(v34 + 24);

      v37(&v52, v36, sub_2657F05C8, v2, ObjectType, v34);

      sub_2657BB314(v31, v32);
      return;
    }

    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v24 = sub_2657F2344();
    __swift_project_value_buffer(v24, qword_281446410);

    v17 = sub_2657F2334();
    v18 = sub_2657F2584();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v52 = v20;
      *v19 = 136380675;
      v25 = *(v2 + 208);
      if (v25)
      {
        v26 = *(v2 + 200);
        v27 = v25;
      }

      else
      {
        v41 = IDSCopyLocalDeviceUniqueID();
        if (v41)
        {
          v42 = v41;
          v26 = sub_2657F2484();
          v27 = v43;
        }

        else
        {
          v26 = 0xD000000000000017;
          v27 = 0x80000002657F8510;
        }
      }

      v46 = sub_2657B7F9C(v26, v27, &v52);

      *(v19 + 4) = v46;
      v45 = "(%{private}s) Will not send unlock message because sync is inactive";
LABEL_22:
      _os_log_impl(&dword_2657B5000, v17, v18, v45, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x266760A30](v20, -1, -1);
      MEMORY[0x266760A30](v19, -1, -1);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  v16 = sub_2657F2344();
  __swift_project_value_buffer(v16, qword_281446410);

  v17 = sub_2657F2334();
  v18 = sub_2657F2584();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v52 = v20;
    *v19 = 136380675;
    v21 = *(v2 + 208);
    if (v21)
    {
      v22 = *(v2 + 200);
      v23 = v21;
    }

    else
    {
      v38 = IDSCopyLocalDeviceUniqueID();
      if (v38)
      {
        v39 = v38;
        v22 = sub_2657F2484();
        v23 = v40;
      }

      else
      {
        v22 = 0xD000000000000017;
        v23 = 0x80000002657F8510;
      }
    }

    v44 = sub_2657B7F9C(v22, v23, &v52);

    *(v19 + 4) = v44;
    v45 = "(%{private}s) Will not send unlock message because keybag is locked";
    goto LABEL_22;
  }

LABEL_23:
}

void *sub_2657EBEB8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2657EBED8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2657EBF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = *v5;
  v9 = sub_2657B830C(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v9;
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v6;
    v27 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2657CA0DC();
      v14 = v27;
    }

    v15 = *(v14 + 48) + 32 * v11;
    v16 = *(v15 + 8);
    v17 = *(v15 + 24);

    v18 = *(v14 + 56);
    v19 = type metadata accessor for RecordMetadata(0);
    v26 = *(v19 - 8);
    sub_2657F03E8(v18 + *(v26 + 72) * v11, a5, type metadata accessor for RecordMetadata);
    sub_2657EC21C(v11, v14, type metadata accessor for RecordMetadata);
    *v6 = v14;
    v20 = *(v26 + 56);
    v21 = a5;
    v22 = 0;
    v23 = v19;
  }

  else
  {
    v24 = type metadata accessor for RecordMetadata(0);
    v20 = *(*(v24 - 8) + 56);
    v23 = v24;
    v21 = a5;
    v22 = 1;
  }

  return v20(v21, v22, 1, v23);
}

uint64_t sub_2657EC094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2657C8374(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2657CA4CC();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_2657F22A4();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_2657EC43C(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_2657F22A4();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_2657EC21C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_2657F2684() + 1) & ~v6;
    while (1)
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 32 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      sub_2657F28D4();

      sub_2657F24C4();
      sub_2657F24C4();
      v16 = sub_2657F2904();

      v17 = v16 & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v17 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v18 = *(a2 + 48);
      v19 = (v18 + 32 * v4);
      v20 = (v18 + 32 * v7);
      if (v4 != v7 || v19 >= v20 + 2)
      {
        v21 = v20[1];
        *v19 = *v20;
        v19[1] = v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(a3(0) - 8) + 72);
      v24 = v23 * v4;
      result = v22 + v23 * v4;
      v25 = v23 * v7;
      v26 = v22 + v23 * v7 + v23;
      if (v24 < v25 || result >= v26)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v24 == v25)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v17 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v17)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2657EC43C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2657F2684() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2657F28D4();

      sub_2657F24C4();
      v13 = sub_2657F2904();

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
      v19 = *(*(sub_2657F22A4() - 8) + 72);
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

uint64_t sub_2657EC628(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2657F2684() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2657F28D4();

      sub_2657F24C4();
      v13 = sub_2657F2904();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_2657EC7D8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2657EFF60(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2657EC868(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = a1;
  v7 = type metadata accessor for RecordMetadata(0);
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v9);
  v46 = &v42 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v45 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023840, &unk_2657F41F0);
  result = sub_2657F27A4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v44;
  }

  v15 = 0;
  v16 = result + 64;
  v17 = v45;
  v42 = a4;
  v43 = result;
  while (v14)
  {
    v18 = v17;
    v19 = __clz(__rbit64(v14));
    v48 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 32 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v24[2];
    v28 = v24[3];
    v29 = v46;
    v50 = *(v47 + 72);
    sub_2657EF7EC(v23 + v50 * v22, v46, type metadata accessor for RecordMetadata);
    sub_2657F03E8(v29, v18, type metadata accessor for RecordMetadata);
    v13 = v43;
    v30 = *(v43 + 40);
    sub_2657F28D4();

    sub_2657F24C4();
    v49 = v27;
    sub_2657F24C4();
    result = sub_2657F2904();
    v31 = -1 << *(v13 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v16 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      v17 = v45;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v16 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v16 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    v17 = v45;
LABEL_26:
    *(v16 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = (*(v13 + 48) + 32 * v34);
    *v39 = v26;
    v39[1] = v25;
    v40 = v50;
    v39[2] = v49;
    v39[3] = v28;
    result = sub_2657F03E8(v17, *(v13 + 56) + v34 * v40, type metadata accessor for RecordMetadata);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v42;
    v14 = v48;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = v44[v15];
    ++v20;
    if (v21)
    {
      v18 = v17;
      v19 = __clz(__rbit64(v21));
      v48 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2657ECBEC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = sub_2657F22A4();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v46 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C80, &qword_2657F4198);
  result = sub_2657F27A4();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    sub_2657F28D4();

    v54 = v28;
    sub_2657F24C4();
    result = sub_2657F2904();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_26:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2657ECF6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for RecordMetadata(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7 - 8);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;

    for (i = 0; v15; result = sub_2657CC304(v6, &unk_280023C10, &qword_2657F4100))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_2657EF7EC(*(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for RecordMetadata);
      sub_2657C66F8(v12, v6);
      sub_2657EF854(v12, type metadata accessor for RecordMetadata);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2657ED164(uint64_t a1, uint64_t a2)
{
  v132 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v102 = &v100 - v10;
  v11 = type metadata accessor for RecordMetadata(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13);
  v121 = (&v100 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v100 - v19);
  MEMORY[0x28223BE20](v18);
  v119 = (&v100 - v22);
  if (!*(a2 + 16))
  {

    v94 = MEMORY[0x277D84FA0];
    goto LABEL_77;
  }

  v104 = v9;
  v101 = 0;
  v24 = a1 + 56;
  v23 = *(a1 + 56);
  v25 = -1 << *(a1 + 32);
  v114 = ~v25;
  if (-v25 < 64)
  {
    v26 = ~(-1 << -v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v23;
  v105 = (63 - v25) >> 6;
  v113 = (v21 + 56);
  v103 = v21;
  v112 = (v21 + 48);
  v125 = (a2 + 56);
  v126 = a2;

  v29 = 0;
  v111 = a1;
  v122 = v11;
  for (i = a1 + 56; ; v24 = i)
  {
    v30 = v27;
    v31 = v29;
    if (v27)
    {
LABEL_15:
      v35 = (v30 - 1) & v30;
      v36 = *(a1 + 48) + v103[9] * (__clz(__rbit64(v30)) | (v31 << 6));
      v37 = a1;
      v38 = v102;
      sub_2657EF7EC(v36, v102, type metadata accessor for RecordMetadata);
      v39 = 0;
    }

    else
    {
      v32 = v105 <= v29 + 1 ? v29 + 1 : v105;
      v33 = v32 - 1;
      v34 = v29;
      while (1)
      {
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_79;
        }

        if (v31 >= v105)
        {
          break;
        }

        v30 = *(v24 + 8 * v31);
        ++v34;
        if (v30)
        {
          goto LABEL_15;
        }
      }

      v35 = 0;
      v39 = 1;
      v31 = v33;
      v37 = a1;
      v38 = v102;
    }

    v109 = *v113;
    v109(v38, v39, 1, v11);
    v127 = v37;
    v128 = v24;
    v129 = v114;
    v130 = v31;
    v117 = v31;
    v116 = v35;
    v131 = v35;
    v108 = *v112;
    v55 = v108(v38, 1, v11) == 1;
    v40 = v38;
    if (v55)
    {
      sub_2657CC304(v38, &unk_280023C10, &qword_2657F4100);
      sub_2657EF988();
      v94 = v126;
      goto LABEL_77;
    }

    v41 = v119;
    sub_2657F03E8(v40, v119, type metadata accessor for RecordMetadata);
    v42 = v126;
    v43 = *(v126 + 40);
    sub_2657F28D4();
    v2 = v41[1];
    v44 = v41[2];
    v45 = v41[3];
    v46 = *v41;
    sub_2657F24C4();
    v123 = v44;
    v120 = v45;
    sub_2657F24C4();
    v47 = *(v11 + 20);
    v48 = sub_2657F22A4();
    v49 = sub_2657EF918(&unk_280023C20, MEMORY[0x277CC9578]);
    v118 = v47;
    v107 = v48;
    v106 = v49;
    sub_2657F2464();
    LODWORD(v115) = *(v41 + *(v11 + 24));
    sub_2657F28F4();
    v50 = sub_2657F2904();
    v51 = -1 << *(v42 + 32);
    v9 = v50 & ~v51;
    v24 = v9 >> 6;
    v11 = 1 << v9;
    if (((1 << v9) & v125[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_2657EF854(v119, type metadata accessor for RecordMetadata);
    v29 = v117;
    v27 = v116;
    a1 = v111;
    v11 = v122;
  }

  v52 = ~v51;
  v124 = v103[9];
  while (1)
  {
    sub_2657EF7EC(*(v126 + 48) + v124 * v9, v20, type metadata accessor for RecordMetadata);
    v53 = v20[2];
    v54 = v20[3];
    v55 = *v20 == v46 && v20[1] == v2;
    if (v55 || (sub_2657F2864() & 1) != 0)
    {
      v56 = v53 == v123 && v54 == v120;
      if (v56 || (sub_2657F2864() & 1) != 0)
      {
        v57 = v20 + *(v122 + 20);
        if (sub_2657F2274())
        {
          break;
        }
      }
    }

    sub_2657EF854(v20, type metadata accessor for RecordMetadata);
LABEL_20:
    v9 = (v9 + 1) & v52;
    v24 = v9 >> 6;
    v11 = 1 << v9;
    if ((v125[v9 >> 6] & (1 << v9)) == 0)
    {
      goto LABEL_6;
    }
  }

  v58 = *(v20 + *(v122 + 24));
  sub_2657EF854(v20, type metadata accessor for RecordMetadata);
  if (v115 != v58)
  {
    goto LABEL_20;
  }

  v59 = sub_2657EF854(v119, type metadata accessor for RecordMetadata);
  v27 = v126;
  v60 = *(v126 + 32);
  v102 = ((1 << v60) + 63) >> 6;
  v28 = 8 * v102;
  v29 = v104;
  v2 = v122;
  if ((v60 & 0x3Fu) > 0xD)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v103 = &v100;
    MEMORY[0x28223BE20](v59);
    v62 = &v100 - ((v61 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v62, v125, v61);
    v63 = *&v62[8 * v24] & ~v11;
    v64 = *(v27 + 16);
    v118 = v62;
    *&v62[8 * v24] = v63;
    v65 = v64 - 1;
    v66 = v111;
    v9 = i;
    v67 = v105;
    v68 = v117;
    v11 = v116;
LABEL_37:
    v115 = v65;
LABEL_39:
    while (2)
    {
      if (v11)
      {
        v69 = v68;
LABEL_49:
        v72 = __clz(__rbit64(v11));
        v73 = (v11 - 1) & v11;
        sub_2657EF7EC(*(v66 + 48) + (v72 | (v69 << 6)) * v124, v29, type metadata accessor for RecordMetadata);
        v74 = 0;
LABEL_50:
        v109(v29, v74, 1, v2);
        v127 = v66;
        v128 = v9;
        v129 = v114;
        v130 = v68;
        v131 = v73;
        if (v108(v29, 1, v2) == 1)
        {
          sub_2657CC304(v29, &unk_280023C10, &qword_2657F4100);
          v94 = sub_2657EE3D8(v118, v102, v115, v27);
          goto LABEL_74;
        }

        v116 = v73;
        v117 = v68;
        v75 = v121;
        sub_2657F03E8(v29, v121, type metadata accessor for RecordMetadata);
        v76 = *(v27 + 40);
        sub_2657F28D4();
        v77 = *v75;
        v24 = v75[1];
        v78 = v75[2];
        v79 = v75[3];
        sub_2657F24C4();
        v123 = v78;
        v80 = v79;
        sub_2657F24C4();
        v120 = *(v2 + 20);
        sub_2657F2464();
        LODWORD(v119) = *(v75 + *(v2 + 24));
        sub_2657F28F4();
        v81 = sub_2657F2904();
        v82 = -1 << *(v27 + 32);
        v83 = v81 & ~v82;
        v84 = v83 >> 6;
        v85 = 1 << v83;
        if (((1 << v83) & v125[v83 >> 6]) == 0)
        {
LABEL_38:
          sub_2657EF854(v121, type metadata accessor for RecordMetadata);
          v27 = v126;
          v66 = v111;
          v29 = v104;
          v2 = v122;
          v9 = i;
          v67 = v105;
          v68 = v117;
          v11 = v116;
          continue;
        }

        v86 = ~v82;
        while (1)
        {
          sub_2657EF7EC(*(v126 + 48) + v83 * v124, v15, type metadata accessor for RecordMetadata);
          v87 = v15[2];
          v88 = v15[3];
          v89 = *v15 == v77 && v15[1] == v24;
          if (v89 || (sub_2657F2864()) && (v87 == v123 ? (v90 = v88 == v80) : (v90 = 0), (v90 || (sub_2657F2864()) && (v91 = v15 + *(v122 + 20), (sub_2657F2274())))
          {
            v92 = *(v15 + *(v122 + 24));
            sub_2657EF854(v15, type metadata accessor for RecordMetadata);
            if (v119 == v92)
            {
              sub_2657EF854(v121, type metadata accessor for RecordMetadata);
              v93 = v118[v84];
              v118[v84] = v93 & ~v85;
              v55 = (v93 & v85) == 0;
              v27 = v126;
              v66 = v111;
              v29 = v104;
              v2 = v122;
              v9 = i;
              v67 = v105;
              v68 = v117;
              v11 = v116;
              if (!v55)
              {
                v65 = v115 - 1;
                if (__OFSUB__(v115, 1))
                {
                  __break(1u);
                }

                if (v115 == 1)
                {

                  v94 = MEMORY[0x277D84FA0];
                  goto LABEL_74;
                }

                goto LABEL_37;
              }

              goto LABEL_39;
            }
          }

          else
          {
            sub_2657EF854(v15, type metadata accessor for RecordMetadata);
          }

          v83 = (v83 + 1) & v86;
          v84 = v83 >> 6;
          v85 = 1 << v83;
          if ((v125[v83 >> 6] & (1 << v83)) == 0)
          {
            goto LABEL_38;
          }
        }
      }

      break;
    }

    v70 = v67 <= v68 + 1 ? v68 + 1 : v67;
    v71 = v70 - 1;
    while (1)
    {
      v69 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (v69 >= v67)
      {
        v73 = 0;
        v74 = 1;
        v68 = v71;
        goto LABEL_50;
      }

      v11 = *(v9 + 8 * v69);
      ++v68;
      if (v11)
      {
        v68 = v69;
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v97 = v28;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v98 = swift_slowAlloc();
  memcpy(v98, v125, v97);
  v99 = v101;
  v94 = sub_2657EDE28(v98, v102, v27, v9, &v127);

  if (v99)
  {

    result = MEMORY[0x266760A30](v98, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x266760A30](v98, -1, -1);
LABEL_74:
    sub_2657EF988();
LABEL_77:
    v95 = *MEMORY[0x277D85DE8];
    return v94;
  }

  return result;
}

uint64_t sub_2657EDE28(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v59 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v58 - v11;
  v70 = type metadata accessor for RecordMetadata(0);
  v13 = *(*(v70 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v70);
  v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v14);
  v69 = (&v58 - v18);
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20) & ((-1 << a4) - 1);
  v61 = a1;
  *(a1 + v20) = v21;
  v22 = v19 - 1;
  v65 = (v23 + 56);
  v66 = v23;
  v63 = a5;
  v64 = (v23 + 48);
  v72 = a3 + 56;
  v73 = a3;
  v62 = v12;
LABEL_2:
  v60 = v22;
LABEL_4:
  while (2)
  {
    v24 = *a5;
    v25 = a5[1];
    v27 = a5[2];
    v26 = a5[3];
    v28 = a5[4];
    if (v28)
    {
      v29 = a5[3];
LABEL_13:
      v33 = (v28 - 1) & v28;
      sub_2657EF7EC(*(v24 + 48) + *(v66 + 72) * (__clz(__rbit64(v28)) | (v29 << 6)), v12, type metadata accessor for RecordMetadata);
      v34 = 0;
      v32 = v29;
LABEL_14:
      v35 = v70;
      (*v65)(v12, v34, 1, v70);
      *a5 = v24;
      a5[1] = v25;
      a5[2] = v27;
      a5[3] = v32;
      a5[4] = v33;
      if ((*v64)(v12, 1, v35) == 1)
      {
        sub_2657CC304(v12, &unk_280023C10, &qword_2657F4100);
        v57 = v73;

        return sub_2657EE3D8(v61, v59, v60, v57);
      }

      v36 = v69;
      sub_2657F03E8(v12, v69, type metadata accessor for RecordMetadata);
      v37 = v73;
      v38 = *(v73 + 40);
      sub_2657F28D4();
      v39 = *v36;
      v40 = v36[1];
      v41 = v36[2];
      v42 = v36[3];
      sub_2657F24C4();
      v75 = v41;
      v74 = v42;
      sub_2657F24C4();
      v43 = *(v35 + 20);
      sub_2657F22A4();
      sub_2657EF918(&unk_280023C20, MEMORY[0x277CC9578]);
      v68 = v43;
      sub_2657F2464();
      v67 = *(v36 + *(v35 + 24));
      sub_2657F28F4();
      v44 = sub_2657F2904();
      v45 = -1 << *(v37 + 32);
      v46 = v44 & ~v45;
      v47 = v46 >> 6;
      v48 = 1 << v46;
      if (((1 << v46) & *(v72 + 8 * (v46 >> 6))) == 0)
      {
LABEL_3:
        result = sub_2657EF854(v69, type metadata accessor for RecordMetadata);
        a5 = v63;
        v12 = v62;
        continue;
      }

      v71 = ~v45;
      v49 = *(v66 + 72);
      while (1)
      {
        sub_2657EF7EC(*(v73 + 48) + v49 * v46, v16, type metadata accessor for RecordMetadata);
        v50 = v16[2];
        v51 = v16[3];
        v52 = *v16 == v39 && v16[1] == v40;
        if (v52 || (sub_2657F2864()) && (v50 == v75 ? (v53 = v51 == v74) : (v53 = 0), (v53 || (sub_2657F2864()) && (v54 = v16 + *(v70 + 20), (sub_2657F2274())))
        {
          v55 = *(v16 + *(v70 + 24));
          sub_2657EF854(v16, type metadata accessor for RecordMetadata);
          if (v67 == v55)
          {
            result = sub_2657EF854(v69, type metadata accessor for RecordMetadata);
            v56 = v61[v47];
            v61[v47] = v56 & ~v48;
            a5 = v63;
            v12 = v62;
            if ((v56 & v48) != 0)
            {
              v22 = v60 - 1;
              if (__OFSUB__(v60, 1))
              {
                goto LABEL_40;
              }

              if (v60 == 1)
              {
                return MEMORY[0x277D84FA0];
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }
        }

        else
        {
          sub_2657EF854(v16, type metadata accessor for RecordMetadata);
        }

        v46 = (v46 + 1) & v71;
        v47 = v46 >> 6;
        v48 = 1 << v46;
        if ((*(v72 + 8 * (v46 >> 6)) & (1 << v46)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v30 = (v27 + 64) >> 6;
  if (v30 <= v26 + 1)
  {
    v31 = v26 + 1;
  }

  else
  {
    v31 = (v27 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      v33 = 0;
      v34 = 1;
      goto LABEL_14;
    }

    v28 = *(v25 + 8 * v29);
    ++v26;
    if (v28)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2657EE3D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RecordMetadata(0);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C30, &qword_2657F4188);
  result = sub_2657F26E4();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v38 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v41 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v42 = *(v39 + 72);
    sub_2657EF7EC(v20 + v42 * (v17 | (v15 << 6)), v11, type metadata accessor for RecordMetadata);
    v21 = *(v12 + 40);
    sub_2657F28D4();
    v22 = *v11;
    v23 = v11[1];
    v24 = v11[2];
    v25 = v11[3];
    sub_2657F24C4();
    sub_2657F24C4();
    v26 = v40;
    v27 = *(v40 + 20);
    sub_2657F22A4();
    sub_2657EF918(&unk_280023C20, MEMORY[0x277CC9578]);
    sub_2657F2464();
    v28 = *(v11 + *(v26 + 24));
    sub_2657F28F4();
    result = sub_2657F2904();
    v29 = -1 << *(v12 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a4 = v38;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v16 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a4 = v38;
LABEL_26:
    *(v16 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = sub_2657F03E8(v11, *(v12 + 48) + v32 * v42, type metadata accessor for RecordMetadata);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v14 = v41;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}
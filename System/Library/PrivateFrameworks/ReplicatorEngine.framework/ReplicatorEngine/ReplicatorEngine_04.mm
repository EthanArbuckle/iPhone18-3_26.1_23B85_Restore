uint64_t sub_1DEE75C68(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 232);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DEEA8A64;
  *(v8 + 24) = v7;
  v11[4] = sub_1DEE46D40;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DEE134F4;
  v11[3] = &block_descriptor_471;
  v9 = _Block_copy(v11);

  sub_1DEEA8A74(v3, v4, v5);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE75DEC(uint64_t a1, char *a2, char *a3, char a4)
{
  swift_beginAccess();
  if (*(a1 + 640) == 1)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v8 = sub_1DEF8D508();
    __swift_project_value_buffer(v8, qword_1ECDF6028);
    v9 = sub_1DEF8D4D8();
    v10 = sub_1DEF8DC98();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DEE0F000, v9, v10, "No reconciliation options are set", v11, 2u);
      MEMORY[0x1E12CCD70](v11, -1, -1);
    }
  }

  else
  {
    v12 = *(a1 + 632);
    *(a1 + 632) = 0;
    *(a1 + 640) = 1;
    v13[0] = a2;
    v13[1] = a3;
    v14 = a4 & 1;
    sub_1DEE74A40(v13, v12);
  }
}

uint64_t sub_1DEE75F2C()
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v1 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v43 - v5;
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + 232);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v6, v9);
  v13 = v12;
  v14 = sub_1DEF8D7B8();
  result = (*(v7 + 8))(v11, v6);
  if ((v14 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  sub_1DEE29594(v0 + 192, v47);
  v17 = v48;
  v16 = v49;
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v18 = (*(*(*(v16 + 8) + 8) + 32))(v17);
  v19 = v18;
  v20 = v18 + 64;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  v46 = v3;
  v43 = result;
  if (!v23)
  {
LABEL_6:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        v42 = 0;
        goto LABEL_16;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  while (1)
  {
    v26 = v25;
LABEL_9:
    v27 = __clz(__rbit64(v23)) | (v26 << 6);
    v28 = *(v19 + 48);
    v29 = sub_1DEF8D3F8();
    v30 = *(v29 - 8);
    v31 = v44;
    (*(v30 + 16))(v44, v28 + *(v30 + 72) * v27, v29);
    v32 = *(v19 + 56);
    v33 = (type metadata accessor for PairingRelationship() - 8);
    v34 = v32 + *(*v33 + 72) * v27;
    v35 = v45;
    sub_1DEEACA70(v34, &v31[*(v45 + 48)], type metadata accessor for PairingRelationship);
    v36 = v31;
    v37 = v46;
    sub_1DEE1BA88(v36, v46, &unk_1ECDE4350, &qword_1DEF93400);
    v38 = v37 + *(v35 + 48);
    v39 = (v38 + v33[10]);
    v40 = *v39;
    v41 = v39[1];
    sub_1DEE4F8C0(*v39, v41);
    sub_1DEE273A0(v38, type metadata accessor for PairingRelationship);
    if (v41)
    {
      break;
    }

    v23 &= v23 - 1;
    result = (*(v30 + 8))(v37, v29);
    v25 = v26;
    v19 = v43;
    if (!v23)
    {
      goto LABEL_6;
    }
  }

  if (v41 - 1 >= 3)
  {
    sub_1DEE4F8D4(v40, v41);
  }

  (*(v30 + 8))(v46, v29);
  v42 = 1;
LABEL_16:

  __swift_destroy_boxed_opaque_existential_1(v47);
  return v42;
}

uint64_t sub_1DEE7635C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 176);
  v11 = *(a3 + 184);
  ObjectType = swift_getObjectType();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a4;
  v12[6] = a5;
  v13 = *(v11 + 80);

  sub_1DEEA8818(a1, a2);

  v13(sub_1DEEA8C14, v12, ObjectType, v11);
}

uint64_t sub_1DEE76450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a3 + 232);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1DEEA8C7C;
  *(v14 + 24) = v13;
  v17[4] = sub_1DEE46D40;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DEE134F4;
  v17[3] = &block_descriptor_503;
  v15 = _Block_copy(v17);

  sub_1DEEA8818(a4, a5);

  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE765E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v8 = *(a1 + 648);
  v9 = *(a1 + 656);
  *(a1 + 648) = a2;
  *(a1 + 656) = a3;
  sub_1DEE2416C(v8, v9);
  sub_1DEEA8818(a2, a3);
  sub_1DEE59098();
  return a4(0);
}

void sub_1DEE767CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32[-v4];
  v6 = type metadata accessor for PairingRelationship();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 24);
  v38 = *(a1 + 16);
  v37 = *(a1 + 32);
  v14 = *(a1 + 40);
  v35 = *(a1 + 48);
  v36 = v14;
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v33 = v16;
    v34 = v15;
    swift_beginAccess();
    sub_1DEE29594(v18 + 192, &v43);
    v19 = v45;
    v20 = v46;
    __swift_project_boxed_opaque_existential_1(&v43, v45);
    MetadataStoring.pairingRelationship(remoteDeviceID:)(v12, v11, v19, *(v20 + 8), v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1DEE171B4(v5, &qword_1ECDE3C18, &unk_1DEF94D20);
      __swift_destroy_boxed_opaque_existential_1(&v43);
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v21 = sub_1DEF8D508();
      __swift_project_value_buffer(v21, qword_1ECDF6028);

      v22 = sub_1DEF8D4D8();
      v23 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v43 = v25;
        *v24 = 136446210;
        v26 = *(v18 + 528);
        v27 = *(v18 + 536);

        v28 = sub_1DEE12A5C(v26, v27, &v43);

        *(v24 + 4) = v28;
        _os_log_impl(&dword_1DEE0F000, v22, v23, "(%{public}s) Could not handshake with unpaired destination", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1E12CCD70](v25, -1, -1);
        MEMORY[0x1E12CCD70](v24, -1, -1);
      }
    }

    else
    {
      sub_1DEEAB218(v5, v10, type metadata accessor for PairingRelationship);
      __swift_destroy_boxed_opaque_existential_1(&v43);
      *&v43 = v12;
      *(&v43 + 1) = v11;
      v44 = v38;
      v45 = v13;
      LOBYTE(v46) = v37;
      v47 = v36;
      v48 = v35;
      v29 = &v10[*(v6 + 32)];
      v31 = v29[1];
      v41 = *v29;
      v30 = v41;
      v42 = v31;
      v39 = v34;
      v40 = v33;

      sub_1DEE4F8C0(v30, v31);
      sub_1DEE76BD8(&v43, &v41, &v39);

      sub_1DEE4F8D4(v41, v42);

      sub_1DEE273A0(v10, type metadata accessor for PairingRelationship);
    }
  }
}

uint64_t sub_1DEE76BD8(__int128 *a1, uint64_t *a2, uint64_t a3)
{
  v35 = *v3;
  v7 = sub_1DEF8D788();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[1];
  v37 = *a1;
  v38 = v12;
  v39 = a1[2];
  v40 = *(a1 + 6);
  v13 = *a2;
  v14 = a2[1];
  v33 = *a3;
  v34 = v13;
  v32 = *(a3 + 8);
  v15 = v3[29];
  *v11 = v15;
  v16 = *MEMORY[0x1E69E8020];
  v17 = v8[13];
  v17(v11, v16, v7);
  v31 = v15;
  LOBYTE(a3) = sub_1DEF8D7B8();
  v18 = v8[1];
  result = v18(v11, v7);
  if (a3)
  {
    v20 = swift_allocObject();
    v21 = v38;
    *(v20 + 24) = v37;
    *(v20 + 16) = v3;
    *(v20 + 40) = v21;
    *(v20 + 56) = v39;
    v22 = v33;
    *(v20 + 72) = v40;
    *(v20 + 80) = v22;
    *(v20 + 88) = v32;
    v23 = v17;
    v24 = v18;
    v26 = v34;
    v25 = v35;
    *(v20 + 96) = v34;
    *(v20 + 104) = v14;
    *(v20 + 112) = v25;
    *v11 = v31;
    v23(v11, v16, v7);

    sub_1DEEA8BAC(&v37, v36);
    sub_1DEE4F8C0(v26, v14);
    LOBYTE(v26) = sub_1DEF8D7B8();
    result = v24(v11, v7);
    if (v26)
    {
      v27 = v3[63];
      v28 = v3[64];
      __swift_project_boxed_opaque_existential_1(v3 + 60, v27);
      v29 = swift_allocObject();
      v29[2] = v3;
      v29[3] = sub_1DEEA8B90;
      v29[4] = v20;
      v30 = *(v28 + 8);

      v30(sub_1DEEA8C08, v29, v27, v28);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DEE76EBC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v126 = a3;
  v9 = type metadata accessor for DeviceDescriptor();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1DEF8D3F8();
  v120 = *(v127 - 8);
  v13 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v106 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v106 - v25;
  v27 = type metadata accessor for PairingRelationship();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v29);
  if (a1)
  {
    v33 = a1;
    v34 = a1;
    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_38;
  }

  v124 = v26;
  *&v122 = v22;
  v119 = v19;
  v128 = a2;
  v121 = a4;
  if (v126)
  {
    v123 = &v106 - v30;
    v44 = *(v126 + 16);
    v45 = v124;
    v46 = v120;
    if (v44)
    {
      v47 = v126 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
      v48 = v31;
      swift_beginAccess();
      v49 = *(v46 + 72);
      v126 = v48 + 48;
      v127 = v49;
      *&v50 = 136446210;
      v122 = v50;
      do
      {
        sub_1DEE29594((a2 + 24), &v131);
        v64 = v134;
        v65 = v135;
        __swift_project_boxed_opaque_existential_1(&v131, v134);
        MetadataStoring.pairingRelationship(relationshipID:)(v47, v64, *(v65 + 8), v45);
        if ((*v126)(v45, 1, v27) == 1)
        {
          sub_1DEE171B4(v45, &qword_1ECDE3C18, &unk_1DEF94D20);
          __swift_destroy_boxed_opaque_existential_1(&v131);
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v66 = sub_1DEF8D508();
          __swift_project_value_buffer(v66, qword_1ECDF6028);

          v67 = sub_1DEF8D4D8();
          v68 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v131 = v70;
            *v69 = v122;
            *(v69 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v131);
            _os_log_impl(&dword_1DEE0F000, v67, v68, "(%{public}s) Could not handshake with unpaired destination", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v70);
            MEMORY[0x1E12CCD70](v70, -1, -1);
            MEMORY[0x1E12CCD70](v69, -1, -1);
          }
        }

        else
        {
          v125 = v44;
          v51 = v123;
          sub_1DEEAB218(v45, v123, type metadata accessor for PairingRelationship);
          __swift_destroy_boxed_opaque_existential_1(&v131);
          v52 = a2[51];
          v53 = v128[52];
          __swift_project_boxed_opaque_existential_1(v128 + 48, v52);
          v54 = v51 + *(v27 + 20);
          v55 = *(v54 + 8);
          v57 = *(v54 + 160);
          v56 = *(v54 + 168);
          v58 = *(v54 + 48);
          v131 = *v54;
          v132 = v55;
          v133 = v57;
          v134 = v56;
          LOBYTE(v135) = v58;
          v136 = *(v54 + 32);
          v129 = v121;
          v130 = a5;
          v59 = v27;
          v60 = a5;
          v61 = *(v53 + 16);

          v62 = v53;
          a2 = v128;
          v61(&v131, &v129, v52, v62);
          a5 = v60;
          v27 = v59;
          v45 = v124;

          v63 = v51;
          v44 = v125;
          sub_1DEE273A0(v63, type metadata accessor for PairingRelationship);
        }

        v47 += v127;
        --v44;
      }

      while (v44);
    }
  }

  else
  {
    v110 = v32;
    v111 = v31;
    v112 = v15;
    v116 = v12;
    v117 = v27;
    v118 = a5;
    swift_beginAccess();
    sub_1DEE29594((a2 + 24), &v131);
    v72 = v134;
    v71 = v135;
    __swift_project_boxed_opaque_existential_1(&v131, v134);
    v73 = (*(*(*(v71 + 8) + 8) + 32))(v72);
    v74 = *(v73 + 64);
    v107 = v73 + 64;
    v113 = v73;
    v75 = 1 << *(v73 + 32);
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & v74;
    __swift_destroy_boxed_opaque_existential_1(&v131);
    v78 = 0;
    v79 = (v75 + 63) >> 6;
    v109 = v120 + 16;
    v108 = v120 + 32;
    v114 = (v120 + 8);
    v80 = v122;
    v115 = v79;
    if (!v77)
    {
LABEL_23:
      if (v79 <= v78 + 1)
      {
        v83 = v78 + 1;
      }

      else
      {
        v83 = v79;
      }

      v84 = v83 - 1;
      v34 = v128;
      v82 = v119;
      while (1)
      {
        v81 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          break;
        }

        if (v81 >= v79)
        {
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
          (*(*(v105 - 8) + 56))(v82, 1, 1, v105);
          v77 = 0;
          goto LABEL_31;
        }

        v77 = *(v107 + 8 * v81);
        ++v78;
        if (v77)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_38:
      swift_once();
LABEL_3:
      v35 = sub_1DEF8D508();
      __swift_project_value_buffer(v35, qword_1ECDF6028);
      v36 = v34;

      v37 = sub_1DEF8D4D8();
      v38 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v131 = v41;
        *v39 = 136446466;
        *(v39 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v131);
        *(v39 + 12) = 2114;
        v42 = v34;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 14) = v43;
        *v40 = v43;
        _os_log_impl(&dword_1DEE0F000, v37, v38, "(%{public}s) Abandoning handshake request because prerequisites are not met: %{public}@", v39, 0x16u);
        sub_1DEE171B4(v40, &unk_1ECDE4880, &qword_1DEF93420);
        MEMORY[0x1E12CCD70](v40, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x1E12CCD70](v41, -1, -1);
        MEMORY[0x1E12CCD70](v39, -1, -1);
      }

      else
      {
      }

      return;
    }

    while (1)
    {
      v81 = v78;
      v34 = v128;
      v82 = v119;
LABEL_30:
      v85 = __clz(__rbit64(v77));
      v77 &= v77 - 1;
      v86 = v85 | (v81 << 6);
      v87 = v113;
      v88 = v120;
      v89 = v112;
      v90 = v127;
      (*(v120 + 16))(v112, *(v113 + 48) + *(v120 + 72) * v86, v127);
      v91 = v110;
      sub_1DEEACA70(*(v87 + 56) + *(v111 + 72) * v86, v110, type metadata accessor for PairingRelationship);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
      v93 = *(v92 + 48);
      (*(v88 + 32))(v82, v89, v90);
      sub_1DEEAB218(v91, v82 + v93, type metadata accessor for PairingRelationship);
      (*(*(v92 - 8) + 56))(v82, 0, 1, v92);
      v84 = v81;
      v80 = v122;
      a4 = v121;
LABEL_31:
      sub_1DEE1BA88(v82, v80, &qword_1ECDE3C98, &unk_1DEF95610);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
      if ((*(*(v94 - 8) + 48))(v80, 1, v94) == 1)
      {
        break;
      }

      v95 = v80 + *(v94 + 48);
      v96 = v34[51];
      v125 = v34[52];
      v126 = v96;
      v124 = __swift_project_boxed_opaque_existential_1(v34 + 48, v96);
      v97 = v116;
      sub_1DEEACA70(v95 + *(v117 + 20), v116, type metadata accessor for DeviceDescriptor);
      sub_1DEE273A0(v95, type metadata accessor for PairingRelationship);
      v99 = *v97;
      v98 = *(v97 + 8);
      v123 = v84;
      v100 = a4;
      v102 = *(v97 + 160);
      v101 = *(v97 + 168);
      a2 = *(v97 + 48);
      v103 = *(v97 + 32);
      v104 = *(v97 + 40);

      sub_1DEE273A0(v97, type metadata accessor for DeviceDescriptor);
      v131 = v99;
      v132 = v98;
      v80 = v122;
      v133 = v102;
      v134 = v101;
      a4 = v100;
      LOBYTE(v135) = a2;
      *&v136 = v103;
      *(&v136 + 1) = v104;
      v129 = v100;
      v130 = v118;
      (*(v125 + 16))(&v131, &v129, v126);

      (*v114)(v80, v127);
      v78 = v123;
      v79 = v115;
      if (!v77)
      {
        goto LABEL_23;
      }
    }
  }
}

void sub_1DEE77AD4(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v112 - v8;
  v10 = type metadata accessor for PairingRelationship();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = a1;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v17 = sub_1DEF8D508();
    __swift_project_value_buffer(v17, qword_1ECDF6028);
    v18 = a1;

    v19 = sub_1DEF8D4D8();
    v20 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v133 = v23;
      *v21 = 136446466;
      *(v21 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v133);
      *(v21 + 12) = 2114;
      v24 = a1;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      *v22 = v25;
      _os_log_impl(&dword_1DEE0F000, v19, v20, "(%{public}s) Abandoning handshake request because prerequisites are not met: %{public}@", v21, 0x16u);
      sub_1DEE171B4(v22, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E12CCD70](v23, -1, -1);
      MEMORY[0x1E12CCD70](v21, -1, -1);

      return;
    }

    v107 = a1;

    goto LABEL_61;
  }

  if (*(a2 + 624))
  {
    v26 = v13;
    v116 = v9;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v27 = sub_1DEF8D508();
    v28 = __swift_project_value_buffer(v27, qword_1ECDF6028);

    v127 = v28;
    v29 = sub_1DEF8D4D8();
    v30 = sub_1DEF8DCB8();

    v31 = os_log_type_enabled(v29, v30);
    v121 = a2;
    v115 = v15;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v133 = v33;
      *v32 = 136446466;
      *(v32 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v133);
      *(v32 + 12) = 2082;
      v34 = MEMORY[0x1E12CB290](a3, &type metadata for HandshakeDescriptor);
      v36 = sub_1DEE12A5C(v34, v35, &v133);

      *(v32 + 14) = v36;
      a2 = v121;
      _os_log_impl(&dword_1DEE0F000, v29, v30, "(%{public}s) Discovered devices: %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v33, -1, -1);
      MEMORY[0x1E12CCD70](v32, -1, -1);
    }

    v38 = *(a2 + 176);
    v37 = *(a2 + 184);
    ObjectType = swift_getObjectType();
    *&v133 = v38;
    v40 = (*(*(v37 + 8) + 8))(ObjectType);
    v41 = sub_1DEEA3AD8(v40);

    v125 = *(a3 + 16);
    if (v125)
    {
      v117 = v26;
      v124 = a3 + 32;
      v113 = (a2 + 672);
      swift_beginAccess();
      swift_beginAccess();
      v42 = 0;
      v43 = v41 + 56;
      v114 = (v11 + 48);
      *&v44 = 136446210;
      v119 = v44;
      *&v44 = 136446466;
      v112 = v44;
      v122 = v41 + 56;
      v128 = 0x80000001DEF9C1B0;
      while (1)
      {
        v49 = v124 + 56 * v42;
        v50 = *v49;
        v51 = *(v49 + 8);
        v52 = *(v49 + 24);
        if (!*(v41 + 16))
        {
          v61 = *(v49 + 24);

          goto LABEL_27;
        }

        v123 = *(v49 + 16);
        v53 = *(v49 + 32);
        v126 = *(v49 + 40);
        v54 = *(v41 + 40);
        sub_1DEF8E7A8();

        swift_bridgeObjectRetain_n();
        sub_1DEF8D9B8();
        v55 = sub_1DEF8E7F8();
        v56 = -1 << *(v41 + 32);
        v57 = v55 & ~v56;
        if (((*(v43 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
        {
LABEL_25:

LABEL_27:

          v62 = sub_1DEF8D4D8();
          v63 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v62, v63))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *&v133 = v46;
            *v45 = v119;

            v47 = sub_1DEE12A5C(v50, v51, &v133);

            *(v45 + 4) = v47;
            _os_log_impl(&dword_1DEE0F000, v62, v63, "Cannot handshake with discovered device: %{public}s, sync service does not know about it yet", v45, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v46);
            v48 = v46;
            v43 = v122;
            MEMORY[0x1E12CCD70](v48, -1, -1);
            MEMORY[0x1E12CCD70](v45, -1, -1);
          }

          else
          {
          }

          goto LABEL_15;
        }

        v58 = ~v56;
        while (1)
        {
          v59 = (*(v41 + 48) + 16 * v57);
          v60 = *v59 == v50 && v59[1] == v51;
          if (v60 || (sub_1DEF8E4E8() & 1) != 0)
          {
            break;
          }

          v57 = (v57 + 1) & v58;
          if (((*(v43 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        v120 = v53;
        if (v126 == 7)
        {
          v64 = *v113;
          if (*(*v113 + 16))
          {
            v65 = *(v64 + 40);
            sub_1DEF8E7A8();

            v66 = v128;
            sub_1DEF8D9B8();
            v67 = sub_1DEF8E7F8();
            v68 = v66;
            v69 = -1 << *(v64 + 32);
            v70 = v67 & ~v69;
            if ((*(v64 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
            {
              v71 = ~v69;
              while (1)
              {
                v72 = (*(v64 + 48) + 16 * v70);
                if (*v72 == 0xD000000000000011 && v68 == v72[1])
                {
                  break;
                }

                v74 = sub_1DEF8E4E8();
                v68 = v128;
                if (v74)
                {
                  break;
                }

                v70 = (v70 + 1) & v71;
                if (((*(v64 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
                {
                  goto LABEL_39;
                }
              }

              v102 = sub_1DEF8D4D8();
              v103 = sub_1DEF8DCB8();

              if (os_log_type_enabled(v102, v103))
              {
                v104 = swift_slowAlloc();
                v105 = swift_slowAlloc();
                *&v133 = v105;
                *v104 = v112;
                *(v104 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v133);
                *(v104 + 12) = 2082;

                v106 = sub_1DEE12A5C(v50, v51, &v133);

                *(v104 + 14) = v106;
                _os_log_impl(&dword_1DEE0F000, v102, v103, "(%{public}s) Skipping handshake with old-chronod as chronod client is disabled: %{public}s", v104, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1E12CCD70](v105, -1, -1);
                MEMORY[0x1E12CCD70](v104, -1, -1);
              }

              else
              {
              }

              v43 = v122;
              goto LABEL_15;
            }

LABEL_39:

            v43 = v122;
          }
        }

        v118 = sub_1DEE75F2C();
        sub_1DEE29594(a2 + 192, &v133);
        v75 = v135;
        v76 = v136;
        __swift_project_boxed_opaque_existential_1(&v133, v135);
        v77 = *(v76 + 8);
        v78 = v116;
        MetadataStoring.pairingRelationship(remoteDeviceID:)(v50, v51, v75, v77, v116);
        if ((*v114)(v78, 1, v117) == 1)
        {
          break;
        }

        sub_1DEEAB218(v78, v115, type metadata accessor for PairingRelationship);
        __swift_destroy_boxed_opaque_existential_1(&v133);

        v87 = sub_1DEF8D4D8();
        v88 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v133 = v90;
          *v89 = v112;
          *(v89 + 4) = sub_1DEE12A5C(*(v121 + 528), *(v121 + 536), &v133);
          *(v89 + 12) = 2082;

          v91 = sub_1DEE12A5C(v50, v51, &v133);

          *(v89 + 14) = v91;
          _os_log_impl(&dword_1DEE0F000, v87, v88, "(%{public}s) Handshaking with known device: %{public}s", v89, 0x16u);
          swift_arrayDestroy();
          v92 = v90;
          a2 = v121;
          MEMORY[0x1E12CCD70](v92, -1, -1);
          v93 = v89;
          v43 = v122;
          MEMORY[0x1E12CCD70](v93, -1, -1);
        }

        if ((v118 & 1) == 0)
        {
          sub_1DEE273A0(v115, type metadata accessor for PairingRelationship);
          v85 = 0;
LABEL_51:

          v96 = sub_1DEF8D4D8();
          v97 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            *&v133 = v99;
            *v98 = v119;
            *(v98 + 4) = sub_1DEE12A5C(*(v121 + 528), *(v121 + 536), &v133);
            _os_log_impl(&dword_1DEE0F000, v96, v97, "(%{public}s) No existing paired relationship exists; attempting to pair", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v99);
            v100 = v99;
            a2 = v121;
            MEMORY[0x1E12CCD70](v100, -1, -1);
            v101 = v98;
            v43 = v122;
            MEMORY[0x1E12CCD70](v101, -1, -1);
          }

          v86 = 1;
          goto LABEL_54;
        }

        v94 = v115;
        v95 = &v115[*(v117 + 32)];
        v85 = *v95;
        v86 = v95[1];
        sub_1DEE4F8C0(*v95, v86);
        sub_1DEE273A0(v94, type metadata accessor for PairingRelationship);
        if (v86 == 1)
        {
          goto LABEL_51;
        }

LABEL_54:
        *&v133 = v50;
        *(&v133 + 1) = v51;
        v134 = v123;
        v135 = v52;
        LOBYTE(v136) = v120;
        v137 = v126;
        v131 = v85;
        v132 = v86;
        v129 = 0;
        v130 = 0;
        sub_1DEE76BD8(&v133, &v131, &v129);
        sub_1DEE4F8D4(v131, v132);

LABEL_15:
        if (++v42 == v125)
        {
          goto LABEL_66;
        }
      }

      sub_1DEE171B4(v78, &qword_1ECDE3C18, &unk_1DEF94D20);
      __swift_destroy_boxed_opaque_existential_1(&v133);

      v79 = sub_1DEF8D4D8();
      v80 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *&v133 = v82;
        *v81 = v112;
        *(v81 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v133);
        *(v81 + 12) = 2082;

        v83 = sub_1DEE12A5C(v50, v51, &v133);

        *(v81 + 14) = v83;
        a2 = v121;
        _os_log_impl(&dword_1DEE0F000, v79, v80, "(%{public}s) Handshaking with unknown device: %{public}s", v81, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v82, -1, -1);
        v84 = v81;
        v43 = v122;
        MEMORY[0x1E12CCD70](v84, -1, -1);
      }

      v85 = 0;
      v86 = 0;
      if (v118)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

LABEL_66:
  }

  else
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v108 = sub_1DEF8D508();
    __swift_project_value_buffer(v108, qword_1ECDF6028);

    v128 = sub_1DEF8D4D8();
    v109 = sub_1DEF8DCB8();

    if (!os_log_type_enabled(v128, v109))
    {
      v107 = v128;

LABEL_61:

      return;
    }

    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *&v133 = v111;
    *v110 = 136446210;
    *(v110 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v133);
    _os_log_impl(&dword_1DEE0F000, v128, v109, "%{public}s skipping handshake request, replicator is disabled", v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v111);
    MEMORY[0x1E12CCD70](v111, -1, -1);
    MEMORY[0x1E12CCD70](v110, -1, -1);
  }
}

uint64_t sub_1DEE78B0C(uint64_t a1)
{
  v2 = *v1;
  v27 = a1;
  v28 = v2;
  v3 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v1[29];
  *v11 = v12;
  v13 = v7[13];
  v26 = *MEMORY[0x1E69E8020];
  v25 = v13;
  v13(v11, v9);
  v24 = v12;
  LOBYTE(v12) = sub_1DEF8D7B8();
  v14 = v7[1];
  result = v14(v11, v6);
  if (v12)
  {
    sub_1DEEACA70(v27, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplicatorMessage.Handshake.Response);
    v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    sub_1DEEAB218(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ReplicatorMessage.Handshake.Response);
    *(v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
    v18 = v25;
    *v11 = v24;
    v18(v11, v26, v6);

    LOBYTE(v16) = sub_1DEF8D7B8();
    result = v14(v11, v6);
    if (v16)
    {
      v19 = v1[63];
      v20 = v1[64];
      __swift_project_boxed_opaque_existential_1(v1 + 60, v19);
      v21 = swift_allocObject();
      v21[2] = v1;
      v21[3] = sub_1DEEAACA4;
      v21[4] = v17;
      v22 = *(v20 + 8);

      v22(sub_1DEEACE1C, v21, v19, v20);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1DEE78E38(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DEF8DE68())
  {
    v6 = 0;
    v18 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC0];
    v17 = v4;
    while (v19)
    {
      v9 = MEMORY[0x1E12CB6E0](v6, v4);
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v23 = v9;
      a1(&v21, &v23);
      if (v3)
      {

        return v7;
      }

      v11 = v22;
      if (v22)
      {
        v12 = i;
        v13 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DEF3805C(0, *(v7 + 2) + 1, 1, v7);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_1DEF3805C((v14 > 1), v15 + 1, 1, v7);
        }

        *(v7 + 2) = v15 + 1;
        v8 = &v7[16 * v15];
        *(v8 + 4) = v13;
        *(v8 + 5) = v11;
        v4 = v17;
        i = v12;
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    if (v6 >= *(v18 + 16))
    {
      goto LABEL_20;
    }

    v9 = *(v4 + 8 * v6 + 32);

    v10 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DEE79004(unint64_t a1, uint64_t a2)
{
  v191 = a2;
  v185 = a1;
  v3 = type metadata accessor for DeviceDescriptor();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v167 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for SyncQueue.SyncItem();
  v184 = *(v188 - 8);
  v6 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v188);
  v190 = (&v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v164 = &v162 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D80, &qword_1DEF91698);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v173 = &v162 - v13;
  v172 = type metadata accessor for PrioritizedRecordValue();
  v163 = *(v172 - 8);
  v14 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v16 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1DEF8D3F8();
  v170 = *(v186 - 8);
  v17 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v168 = v18;
  v169 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v175 = (&v162 - v21);
  v176 = type metadata accessor for PairingRelationship();
  v174 = *(v176 - 1);
  v22 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v171 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v166 = &v162 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v182 = &v162 - v27;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  v28 = *(v187[-1].isa + 8);
  MEMORY[0x1EEE9AC00](v187);
  v30 = &v162 - v29;
  v183 = type metadata accessor for SessionManager.Session();
  v31 = *(v183 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v181 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1DEF8D788();
  v35 = *(v34 - 1);
  v36 = v35[8];
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = (&v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(v2 + 232);
  *v39 = v40;
  v42 = (v35 + 13);
  v41 = v35[13];
  LODWORD(v180) = *MEMORY[0x1E69E8020];
  v179 = v41;
  v41(v39, v37);
  v177 = v40;
  LOBYTE(v40) = sub_1DEF8D7B8();
  v178 = v35[1];
  v43 = (v178)(v39, v34);
  if ((v40 & 1) == 0)
  {
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    swift_once();
    goto LABEL_9;
  }

  v165 = v3;
  v162 = v16;
  v189 = v2;
  v44 = *(v2 + 544);
  v45 = *(v44 + 32);
  MEMORY[0x1EEE9AC00](v43);
  v46 = v191;
  *(&v162 - 2) = v44;
  *(&v162 - 1) = v46;

  sub_1DEF8DD18();

  v47 = v183;
  if ((*(v31 + 48))(v30, 1, v183) == 1)
  {
    v48 = &qword_1ECDE3D08;
    v49 = &unk_1DEF95E50;
    v50 = v30;
    return sub_1DEE171B4(v50, v48, v49);
  }

  v16 = v181;
  sub_1DEEAB218(v30, v181, type metadata accessor for SessionManager.Session);
  v51 = v177;
  *v39 = v177;
  v179(v39, v180, v34);
  v52 = v51;
  v2 = sub_1DEF8D7B8();
  (v178)(v39, v34);
  if ((v2 & 1) == 0)
  {
    goto LABEL_91;
  }

  v34 = v189;
  swift_beginAccess();
  sub_1DEE29594((v34 + 24), &aBlock);
  v54 = v200;
  v53 = v201;
  __swift_project_boxed_opaque_existential_1(&aBlock, v200);
  v55 = *(v53 + 1);
  v56 = v175;
  MetadataStoring.pairingRelationship(remoteDeviceID:)(*&v16[*(v47 + 20)], *&v16[*(v47 + 20) + 8], v54, v55, v175);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v30 = v176;
  if ((*(v174 + 48))(v56, 1, v176) == 1)
  {
    sub_1DEE273A0(v16, type metadata accessor for SessionManager.Session);
    v48 = &qword_1ECDE3C18;
    v49 = &unk_1DEF94D20;
    v50 = v56;
    return sub_1DEE171B4(v50, v48, v49);
  }

  v58 = v56;
  v59 = v182;
  sub_1DEEAB218(v58, v182, type metadata accessor for PairingRelationship);
  v60 = (v59 + *(v30 + 5));
  v2 = v60[4];
  v42 = v60[5];
  v177 = v60;
  if (qword_1ED786060 != -1)
  {
    goto LABEL_92;
  }

LABEL_9:
  v61 = v191;
  if (v2 < *(&xmmword_1ED786068 + 1) || xmmword_1ED786068 < v42)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v136 = sub_1DEF8D508();
    __swift_project_value_buffer(v136, qword_1ECDF6028);
    v137 = v171;
    sub_1DEEACA70(v182, v171, type metadata accessor for PairingRelationship);

    v138 = sub_1DEF8D4D8();
    v139 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = v16;
      v142 = swift_slowAlloc();
      aBlock = v142;
      *v140 = 136446466;
      *(v140 + 4) = sub_1DEE12A5C(v34[66], v34[67], &aBlock);
      *(v140 + 12) = 2082;
      sub_1DEEACA70(v137 + *(v30 + 5), v167, type metadata accessor for DeviceDescriptor);
      v143 = sub_1DEF8D988();
      v145 = v144;
      sub_1DEE273A0(v137, type metadata accessor for PairingRelationship);
      v146 = sub_1DEE12A5C(v143, v145, &aBlock);

      *(v140 + 14) = v146;
      _os_log_impl(&dword_1DEE0F000, v138, v139, "(%{public}s) Not enqueuing records for incompatible remote device %{public}s", v140, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v142, -1, -1);
      MEMORY[0x1E12CCD70](v140, -1, -1);

      v147 = v141;
    }

    else
    {

      sub_1DEE273A0(v137, type metadata accessor for PairingRelationship);
      v147 = v16;
    }

    goto LABEL_89;
  }

  v62 = v34[68];
  v187 = *(v62 + 32);
  v63 = v170;
  v64 = *(v170 + 16);
  v65 = v169;
  v66 = v186;
  v183 = v170 + 16;
  v180 = v64;
  v64(v169, v16, v186);
  v67 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v68 = v67 + v168;
  v69 = swift_allocObject();
  *(v69 + 16) = v62;
  (*(v63 + 32))(v69 + v67, v65, v66);
  *(v69 + v68) = 1;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1DEEACDAC;
  *(v70 + 24) = v69;
  v201 = sub_1DEE46D40;
  v202 = v70;
  aBlock = MEMORY[0x1E69E9820];
  v198 = 1107296256;
  v199 = sub_1DEE134F4;
  v200 = &block_descriptor_680;
  v71 = _Block_copy(&aBlock);
  v72 = v202;
  swift_retain_n();

  dispatch_sync(v187, v71);
  _Block_release(v71);
  LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

  if (v65)
  {
    __break(1u);
LABEL_94:
    v161 = v73;
    result = sub_1DEF8DE68();
    v73 = v161;
    v74 = result;
    if (result)
    {
      goto LABEL_15;
    }

    goto LABEL_88;
  }

  if (*(v182 + *(v30 + 8) + 8) != 2)
  {
    v148 = v189;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v149 = sub_1DEF8D508();
    __swift_project_value_buffer(v149, qword_1ECDF6028);
    v150 = v166;
    sub_1DEEACA70(v182, v166, type metadata accessor for PairingRelationship);

    v151 = sub_1DEF8D4D8();
    v152 = sub_1DEF8DCB8();

    if (!os_log_type_enabled(v151, v152))
    {

      sub_1DEE273A0(v150, type metadata accessor for PairingRelationship);
      goto LABEL_88;
    }

    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v196 = v154;
    *v153 = 136446466;
    *(v153 + 4) = sub_1DEE12A5C(v148[66], v148[67], &v196);
    *(v153 + 12) = 2082;
    v155 = (v150 + *(v30 + 8));
    v156 = v155[1];
    if (v156 > 1)
    {
      if (v156 == 2)
      {
        v157 = 0xE600000000000000;
        v158 = 0x646572696170;
        goto LABEL_87;
      }

      if (v156 == 3)
      {
        v157 = 0xE800000000000000;
        v158 = 0x6576697463616E69;
        goto LABEL_87;
      }
    }

    else
    {
      if (!v156)
      {
        v157 = 0xEA00000000006465;
        v158 = 0x6375646F72746E69;
        goto LABEL_87;
      }

      if (v156 == 1)
      {
        v157 = 0xE700000000000000;
        v158 = 0x676E6972696170;
LABEL_87:
        sub_1DEE273A0(v150, type metadata accessor for PairingRelationship);
        v160 = sub_1DEE12A5C(v158, v157, &v196);

        *(v153 + 14) = v160;
        _os_log_impl(&dword_1DEE0F000, v151, v152, "(%{public}s) Not enqueuing records for relationship state %{public}s", v153, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v154, -1, -1);
        MEMORY[0x1E12CCD70](v153, -1, -1);

        goto LABEL_88;
      }
    }

    v159 = *v155;
    aBlock = 0x6E6974617267696DLL;
    v198 = 0xEA00000000002867;
    sub_1DEE4F8C0(v159, v156);
    MEMORY[0x1E12CB180](v159, v156);
    MEMORY[0x1E12CB180](41, 0xE100000000000000);
    sub_1DEE4F8D4(v159, v156);
    v158 = aBlock;
    v157 = v198;
    goto LABEL_87;
  }

  v73 = v185;
  v72 = v189;
  if (v185 >> 62)
  {
    goto LABEL_94;
  }

  v74 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v74)
  {
LABEL_88:
    v147 = v181;
LABEL_89:
    sub_1DEE273A0(v147, type metadata accessor for SessionManager.Session);
    return sub_1DEE273A0(v182, type metadata accessor for PairingRelationship);
  }

LABEL_15:
  if (v74 >= 1)
  {
    v179 = (v73 & 0xC000000000000001);
    v75 = v73;
    swift_beginAccess();
    v76 = v75;
    v77 = 0;
    v176 = (v163 + 48);
    v175 = (v163 + 56);
    v178 = v74;
    while (1)
    {
      if (v179)
      {
        v81 = MEMORY[0x1E12CB6E0](v77, v76);
      }

      else
      {
        v81 = *(v76 + 8 * v77 + 32);
      }

      v82 = MEMORY[0x1E12CC160]();
      v83 = *(v81 + 32);
      v84 = v72[30];
      v187 = v82;
      if ((v84 & 0xC000000000000001) != 0)
      {

        v85 = sub_1DEF8E0B8();

        if (!v85)
        {
          goto LABEL_33;
        }

        v192[0] = v85;
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        v86 = v194;
      }

      else
      {
        if (!*(v84 + 16))
        {
          goto LABEL_45;
        }

        v87 = sub_1DEEAF20C(v83);
        if ((v88 & 1) == 0)
        {
LABEL_33:

          goto LABEL_45;
        }

        v86 = *(*(v84 + 56) + 8 * v87);
      }

      if (v86)
      {
        v89 = v177[12];
        v90 = *(v81 + 32);
        if ((v89 & 0xC000000000000001) != 0)
        {
          v91 = *(v81 + 32);

          v92 = sub_1DEF8E0B8();

          if (!v92)
          {
            goto LABEL_42;
          }

          v192[0] = v92;
          type metadata accessor for Zone();
          swift_dynamicCast();
          v93 = v194;
          if (!v194)
          {
            goto LABEL_42;
          }
        }

        else if (!*(v89 + 16) || (v94 = sub_1DEEAF20C(*(v81 + 32)), (v95 & 1) == 0) || (v93 = *(*(v89 + 56) + 8 * v94), , !v93))
        {
LABEL_42:

          goto LABEL_45;
        }

        v96 = *(v93 + 24);
        v97 = *(v93 + 32);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v98 = *(v86 + 24);
          ObjectType = swift_getObjectType();
          v194 = v96;
          v195 = v97;
          v100 = *(v98 + 32);
          v101 = v173;
          v102 = v98;
          v72 = v189;
          v100(v81, v182, &v194, ObjectType, v102);
          swift_unknownObjectRelease();

          v103 = (*v176)(v101, 1, v172);
          v61 = v191;
          if (v103 != 1)
          {
            v104 = v162;
            result = sub_1DEEAB218(v101, v162, type metadata accessor for PrioritizedRecordValue);
            v105 = *v104;
            v106 = v104[1];
            v107 = v106 >> 62;
            if ((v106 >> 62) > 1)
            {
              if (v107 == 2)
              {
                v130 = v105 + 16;
                v128 = *(v105 + 16);
                v129 = *(v130 + 8);
                v108 = v129 - v128;
                if (__OFSUB__(v129, v128))
                {
                  goto LABEL_97;
                }
              }

              else
              {
                v108 = 0;
              }
            }

            else if (v107)
            {
              v131 = __OFSUB__(HIDWORD(v105), v105);
              v132 = HIDWORD(v105) - v105;
              if (v131)
              {
                goto LABEL_98;
              }

              v108 = v132;
            }

            else
            {
              v108 = BYTE6(v106);
            }

            v133 = type metadata accessor for Record.Value(0);
            v134 = v164;
            sub_1DEE17214(v104 + *(v133 + 20), v164, &qword_1ECDE4890, &qword_1DEF90990);
            v135 = sub_1DEF8D1E8();
            v109 = (*(*(v135 - 8) + 48))(v134, 1, v135) != 1;
            sub_1DEE171B4(v134, &qword_1ECDE4890, &qword_1DEF90990);
            sub_1DEE273A0(v104, type metadata accessor for PrioritizedRecordValue);
            goto LABEL_46;
          }
        }

        else
        {

          v101 = v173;
          (*v175)(v173, 1, 1, v172);
          v61 = v191;
        }

        sub_1DEE171B4(v101, &qword_1ECDE3D80, &qword_1DEF91698);
      }

LABEL_45:
      v109 = 0;
      v108 = 0;
LABEL_46:
      v110 = v72[74];
      swift_beginAccess();
      v111 = *(v110 + 16);
      v112 = *(v111 + 16);

      if (v112)
      {

        v113 = sub_1DEEAF350(v61);
        v114 = MEMORY[0x1E69E7CC0];
        if (v115)
        {
          v114 = *(*(v111 + 56) + 8 * v113);
        }
      }

      else
      {
        v114 = MEMORY[0x1E69E7CC0];
      }

      v116 = v188;
      v117 = v190;
      v180(v190 + *(v188 + 20), v61, v186);
      *v117 = v81;
      *(v117 + *(v116 + 24)) = v108;
      *(v117 + *(v116 + 28)) = v109;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = sub_1DEF381B4(0, v114[2] + 1, 1, v114);
      }

      v118 = v178;
      v120 = v114[2];
      v119 = v114[3];
      v121 = v120 + 1;
      if (v120 >= v119 >> 1)
      {
        v114 = sub_1DEF381B4(v119 > 1, v120 + 1, 1, v114);
      }

      v114[2] = v121;
      v122 = (*(v184 + 80) + 32) & ~*(v184 + 80);
      sub_1DEEAB218(v190, v114 + v122 + *(v184 + 72) * v120, type metadata accessor for SyncQueue.SyncItem);
      v194 = v114 + v122;
      v195 = v120 + 1;
      v123 = sub_1DEF8E2D8();
      if (v123 > v120)
      {
        sub_1DEF059D4(0, v120 + 1, 1, &v194);
        v78 = v187;
      }

      else
      {
        v124 = v123;
        v125 = v121 >> 1;
        if (v120)
        {
          v126 = sub_1DEF8DB08();
          *(v126 + 16) = v125;
        }

        else
        {
          v126 = MEMORY[0x1E69E7CC0];
        }

        v78 = v187;
        v192[0] = v126 + v122;
        v192[1] = v125;
        v127 = v126;
        sub_1DEF05C18(v192, v193, &v194, v124);
        *(v127 + 16) = 0;
      }

      ++v77;
      swift_beginAccess();
      v79 = *(v110 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192[0] = *(v110 + 16);
      *(v110 + 16) = 0x8000000000000000;
      v61 = v191;
      sub_1DEF3E8B0(v114, v191, isUniquelyReferenced_nonNull_native);
      *(v110 + 16) = v192[0];
      swift_endAccess();

      objc_autoreleasePoolPop(v78);

      v72 = v189;
      v76 = v185;
      if (v118 == v77)
      {
        goto LABEL_88;
      }
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

uint64_t sub_1DEE7A698(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[29];
  *v13 = v14;
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v8, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1DEF8D7B8();
  result = (*(v9 + 8))(v13, v8);
  if (v14)
  {
    v17 = MEMORY[0x1E12CC160](result);
    sub_1DEE89DB8(a1);
    objc_autoreleasePoolPop(v17);
    v18 = (a3 + *(type metadata accessor for ReplicatorMessage.Handshake.Complete(0) + 20));
    v20 = v18[1];
    v23 = *v18;
    v19 = v23;
    v24 = v20;
    v21 = *(type metadata accessor for PairingRelationship() + 20);
    sub_1DEE4F8C0(v19, v20);
    sub_1DEE7A820(a2, &v23, a4 + v21);
    return sub_1DEE4F8D4(v23, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE7A820(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DEF8D788();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a2;
  v15 = a2[1];
  v16 = *(v4 + 232);
  *v13 = v16;
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v8, v11);
  v17 = v16;
  LOBYTE(v16) = sub_1DEF8D7B8();
  result = (*(v9 + 8))(v13, v8);
  if (v16)
  {
    if (*(v4 + 96) == 4 || *(a3 + 48) == 4)
    {
      if (v15)
      {
        sub_1DEE4F8C0(v14, v15);
        sub_1DEE4F8D4(v14, v15);
        sub_1DEE4F8D4(0, 0);
      }

      else
      {
        sub_1DEE4F8D4(v14, 0);
        sub_1DEE4F8D4(0, 0);
        sub_1DEE5DFB0(*a3, *(a3 + 8), v4);
      }
    }

    v19 = *(v4 + 592);
    swift_beginAccess();
    if (!*(*(v19 + 16) + 16) || (, , sub_1DEEAF350(a1), v21 = v20, , result = , (v21 & 1) == 0))
    {
      v22 = *(v4 + 408);
      v23 = *(v4 + 416);
      __swift_project_boxed_opaque_existential_1((v4 + 384), v22);
      v24 = a1 + *(type metadata accessor for SessionManager.Session() + 20);
      v25 = *(v24 + 8);
      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v28 = *(v24 + 32);
      v30[0] = *v24;
      v30[1] = v25;
      v30[2] = v27;
      v30[3] = v26;
      v31 = v28;
      v32 = *(v24 + 40);
      v29 = *(v23 + 24);

      v29(v30, v22, v23);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE7AA90(void *a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4, int a5, uint64_t a6, unint64_t a7)
{
  v338 = a7;
  v332 = a6;
  v340 = a5;
  v339 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v292 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v321 = &v292 - v16;
  v317 = type metadata accessor for Message();
  v316 = *(v317 - 8);
  v17 = *(v316 + 64);
  MEMORY[0x1EEE9AC00](v317);
  v307 = &v292 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = type metadata accessor for ReplicatorMessage(0);
  v19 = *(*(v320 - 8) + 64);
  MEMORY[0x1EEE9AC00](v320);
  v329 = &v292 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for ReplicatorMessage.Handshake(0);
  v21 = *(*(v319 - 8) + 64);
  MEMORY[0x1EEE9AC00](v319);
  v23 = (&v292 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v318 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v302 = *(v318 - 8);
  v24 = *(v302 + 64);
  MEMORY[0x1EEE9AC00](v318);
  v304 = &v292 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v333 = &v292 - v27;
  v348 = sub_1DEF8D3F8();
  v336 = *(v348 - 8);
  v28 = v336[8];
  MEMORY[0x1EEE9AC00](v348);
  v322 = v29;
  v341 = &v292 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  v30 = *(*(v323 - 8) + 64);
  MEMORY[0x1EEE9AC00](v323);
  v324 = &v292 - v31;
  v325 = type metadata accessor for SessionManager.Session();
  v328 = *(v325 - 8);
  v32 = *(v328 + 64);
  MEMORY[0x1EEE9AC00](v325);
  v301 = &v292 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v310 = &v292 - v35;
  v300 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v335 = &v292 - v38;
  v39 = type metadata accessor for ZoneVersion();
  v350 = *(v39 - 8);
  v40 = *(v350 + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v345 = &v292 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v351 = &v292 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v347 = &v292 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v354 = &v292 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v349 = &v292 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D10, &qword_1DEF91620);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  ObjectType = (&v292 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v53);
  v352 = (&v292 - v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v330 = &v292 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v313 = (&v292 - v59);
  v311 = type metadata accessor for DeviceDescriptor();
  v60 = *(*(v311 - 8) + 64);
  MEMORY[0x1EEE9AC00](v311);
  v326 = &v292 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v334 = &v292 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v312 = &v292 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v315 = (&v292 - v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v331 = &v292 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v344 = &v292 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v306 = &v292 - v74;
  MEMORY[0x1EEE9AC00](v75);
  *&v314 = &v292 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v343 = &v292 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v81 = (&v292 - v80);
  v337 = type metadata accessor for PairingRelationship();
  i = *(v337 - 8);
  v82 = *(i + 64);
  MEMORY[0x1EEE9AC00](v337);
  v309 = &v292 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v305 = &v292 - v85;
  MEMORY[0x1EEE9AC00](v86);
  *&v342 = &v292 - v87;
  if (qword_1ECDE2E58 != -1)
  {
LABEL_75:
    swift_once();
  }

  v88 = sub_1DEF8D508();
  v89 = __swift_project_value_buffer(v88, qword_1ECDF6028);

  sub_1DEEA8BAC(isEscapingClosureAtFileLocation, &aBlock);
  v355 = v89;
  v90 = sub_1DEF8D4D8();
  v91 = sub_1DEF8DCB8();

  sub_1DEEA8CAC(isEscapingClosureAtFileLocation);
  v92 = os_log_type_enabled(v90, v91);
  v356 = a2;
  v327 = v23;
  v308 = v13;
  if (v92)
  {
    v93 = a2;
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v361 = v95;
    *v94 = 136446722;
    *(v94 + 4) = sub_1DEE12A5C(*(v93 + 528), *(v93 + 536), &v361);
    *(v94 + 12) = 2082;
    *(v94 + 14) = sub_1DEE12A5C(*isEscapingClosureAtFileLocation, *(isEscapingClosureAtFileLocation + 8), &v361);
    *(v94 + 22) = 2082;
    aBlock = v339;
    LOBYTE(v363) = v340;
    v96 = ReplicationSchedule.description.getter();
    v98 = sub_1DEE12A5C(v96, v97, &v361);

    *(v94 + 24) = v98;
    _os_log_impl(&dword_1DEE0F000, v90, v91, "(%{public}s) Sending handshake request to %{public}s; schedule: %{public}s", v94, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v95, -1, -1);
    MEMORY[0x1E12CCD70](v94, -1, -1);
  }

  if (!a1)
  {
    v23 = v356;
    if ((*(v356 + 624) & 1) == 0)
    {

      v111 = sub_1DEF8D4D8();
      v116 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v111, v116))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        aBlock = v114;
        *v113 = 136446210;
        *(v113 + 4) = sub_1DEE12A5C(v23[66], v23[67], &aBlock);
        _os_log_impl(&dword_1DEE0F000, v111, v116, "(%{public}s) Abandoning handshake request because replicator is disabled", v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v114);
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    if (v338 == 3)
    {

      sub_1DEEA8BAC(isEscapingClosureAtFileLocation, &aBlock);
      v111 = sub_1DEF8D4D8();
      v112 = sub_1DEF8DCB8();

      sub_1DEEA8CAC(isEscapingClosureAtFileLocation);
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        aBlock = v114;
        *v113 = 136446466;
        *(v113 + 4) = sub_1DEE12A5C(v23[66], v23[67], &aBlock);
        *(v113 + 12) = 2082;
        *(v113 + 14) = sub_1DEE12A5C(*isEscapingClosureAtFileLocation, *(isEscapingClosureAtFileLocation + 8), &aBlock);
        v115 = "(%{public}s) Abandoning handshake request because relationship is inactive: %{public}s";
LABEL_12:
        _os_log_impl(&dword_1DEE0F000, v111, v112, v115, v113, 0x16u);
        swift_arrayDestroy();
LABEL_15:
        MEMORY[0x1E12CCD70](v114, -1, -1);
        MEMORY[0x1E12CCD70](v113, -1, -1);
      }

LABEL_16:

      sub_1DEE7D6B8(*isEscapingClosureAtFileLocation, *(isEscapingClosureAtFileLocation + 8));
      return;
    }

    if (*(isEscapingClosureAtFileLocation + 40) == 7)
    {
      swift_beginAccess();
      v117 = v23[84];

      v118 = sub_1DEF01E3C(0xD000000000000011, 0x80000001DEF9C1B0, v117);

      if (v118)
      {

        sub_1DEEA8BAC(isEscapingClosureAtFileLocation, &aBlock);
        v111 = sub_1DEF8D4D8();
        v112 = sub_1DEF8DCB8();

        sub_1DEEA8CAC(isEscapingClosureAtFileLocation);
        if (!os_log_type_enabled(v111, v112))
        {
          goto LABEL_16;
        }

        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        aBlock = v114;
        *v113 = 136446466;
        *(v113 + 4) = sub_1DEE12A5C(v23[66], v23[67], &aBlock);
        *(v113 + 12) = 2082;
        *(v113 + 14) = sub_1DEE12A5C(*isEscapingClosureAtFileLocation, *(isEscapingClosureAtFileLocation + 8), &aBlock);
        v115 = "(%{public}s) Abandoning handshake with old-chronod as chronod client is disabled: %{public}s";
        goto LABEL_12;
      }
    }

    v294 = swift_allocBox();
    v120 = v119;
    swift_beginAccess();
    sub_1DEE29594((v23 + 24), &aBlock);
    v121 = v365;
    v122 = v366;
    __swift_project_boxed_opaque_existential_1(&aBlock, v365);
    v123 = *isEscapingClosureAtFileLocation;
    v124 = *(isEscapingClosureAtFileLocation + 8);
    v125 = *(v122 + 1);

    v296 = v123;
    MetadataStoring.pairingRelationship(remoteDeviceID:)(v123, v124, v121, v125, v120);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    sub_1DEE17214(v120, v81, &qword_1ECDE3C18, &unk_1DEF94D20);
    v126 = i;
    v127 = *(i + 48);
    v299 = i + 48;
    v128 = v337;
    v297 = v127;
    v129 = v127(v81, 1, v337);
    v298 = v120;
    v293 = isEscapingClosureAtFileLocation;
    v295 = v124;
    if (v129 == 1)
    {
      sub_1DEE171B4(v81, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (qword_1ED786060 != -1)
      {
LABEL_77:
        swift_once();
      }

      v130 = xmmword_1ED786068;
      v131 = *(isEscapingClosureAtFileLocation + 32);
      v357 = *(isEscapingClosureAtFileLocation + 16);
      v132 = v336[7];
      v133 = v313;
      v134 = v348;
      v132(v313, 1, 1, v348);
      v135 = v312;
      *(v312 + 72) = 0u;
      *(v135 + 56) = 0u;
      *(v135 + 88) = 256;
      v342 = xmmword_1DEF90FE0;
      *(v135 + 112) = xmmword_1DEF90FE0;
      v136 = *(v311 + 60);
      v132((v135 + v136), 1, 1, v134);
      v137 = v295;
      *v135 = v296;
      *(v135 + 8) = v137;
      *(v135 + 16) = 0;
      *(v135 + 24) = 0xE000000000000000;
      *(v135 + 32) = v130;
      *(v135 + 48) = v131;
      *(v135 + 56) = 0u;
      *(v135 + 72) = 0u;
      *(v135 + 88) = 256;
      v138 = *(v135 + 112);
      v139 = *(v135 + 120);
      sub_1DEE17214(&v357, &aBlock, &unk_1ECDE3ED0, &qword_1DEF92030);
      sub_1DEE2416C(v138, v139);
      *(v135 + 112) = v342;
      *(v135 + 128) = 0u;
      v140 = v357;
      *(v135 + 144) = 0u;
      *(v135 + 160) = v140;
      sub_1DEEA882C(v133, v135 + v136);
      v141 = MEMORY[0x1E69E7CC8];
      *(v135 + 96) = MEMORY[0x1E69E7CC8];
      sub_1DEE171B4(v133, &unk_1ECDE3E80, &unk_1DEF90970);
      *(v135 + 104) = v141;
      v13 = v315;
      sub_1DEEAB218(v135, v315, type metadata accessor for DeviceDescriptor);
      v142 = v343;
      sub_1DEF8D3E8();
      v143 = v337;
      sub_1DEEACA70(v13, v142 + *(v337 + 20), type metadata accessor for DeviceDescriptor);
      v144 = v142 + v143[6];
      sub_1DEF8D348();
      v145 = v142 + v143[7];
      sub_1DEF8D348();
      v146 = v143[9];
      v147 = v332;
      v148 = v338;
      sub_1DEE4F8C0(v332, v338);
      sub_1DEF8D348();
      v149 = (v142 + v143[8]);
      *v149 = v147;
      v149[1] = v148;
      (*(i + 56))(v142, 0, 1, v143);
      v150 = v298;
      sub_1DEE29D60(v142, v298, &qword_1ECDE3C18, &unk_1DEF94D20);
      v23 = v356;
      sub_1DEE29594(v356 + 192, &aBlock);
      v151 = v365;
      v152 = v366;
      __swift_project_boxed_opaque_existential_1(&aBlock, v365);
      v153 = v150;
      v154 = v314;
      sub_1DEE17214(v153, v314, &qword_1ECDE3C18, &unk_1DEF94D20);
      v155 = v297;
      v156 = v297(v154, 1, v143);
      v157 = ObjectType;
      if (v156 == 1)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      (*(*(v152 + 2) + 112))(v154, v151);
      sub_1DEE273A0(v13, type metadata accessor for DeviceDescriptor);
      sub_1DEE273A0(v154, type metadata accessor for PairingRelationship);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v128 = v337;
    }

    else
    {

      v158 = v342;
      sub_1DEEAB218(v81, v342, type metadata accessor for PairingRelationship);
      sub_1DEE7DB50(v158);
      v159 = *(v128 + 20);
      aBlock = v332;
      v363 = v338;
      v160 = v343;
      sub_1DEE5F828((v158 + v159), &aBlock, 1, 1, v343);
      (*(v126 + 56))(v160, 0, 1, v128);
      sub_1DEE29D60(v160, v120, &qword_1ECDE3C18, &unk_1DEF94D20);

      v161 = sub_1DEF8D4D8();
      v13 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v161, v13))
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        aBlock = v163;
        *v162 = 136446466;
        *(v162 + 4) = sub_1DEE12A5C(v23[66], v23[67], &aBlock);
        *(v162 + 12) = 2082;
        swift_beginAccess();
        v164 = v306;
        sub_1DEE17214(v120, v306, &qword_1ECDE3C18, &unk_1DEF94D20);
        v165 = v297(v164, 1, v128);

        if (v165 == 1)
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          return;
        }

        v166 = v305;
        sub_1DEEAB218(v164, v305, type metadata accessor for PairingRelationship);
        v167 = PairingRelationship.description.getter();
        v169 = v168;
        sub_1DEE273A0(v166, type metadata accessor for PairingRelationship);
        v170 = sub_1DEE12A5C(v167, v169, &aBlock);

        *(v162 + 14) = v170;
        _os_log_impl(&dword_1DEE0F000, v161, v13, "(%{public}s) Using existing relationship: %{public}s", v162, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v163, -1, -1);
        MEMORY[0x1E12CCD70](v162, -1, -1);

        sub_1DEE273A0(v342, type metadata accessor for PairingRelationship);
        v23 = v356;
        v128 = v337;
      }

      else
      {

        sub_1DEE273A0(v158, type metadata accessor for PairingRelationship);
      }

      v155 = v297;
      v157 = ObjectType;
    }

    v81 = v344;
    sub_1DEE69B50(v334);
    v171 = v298;
    swift_beginAccess();
    sub_1DEE17214(v171, v81, &qword_1ECDE3C18, &unk_1DEF94D20);
    v172 = v155(v81, 1, v128);
    a1 = v347;
    if (v172 == 1)
    {
      __break(1u);
LABEL_81:
      __break(1u);
    }

    else
    {
      v173 = sub_1DEE7DE50(v81);
      sub_1DEE273A0(v81, type metadata accessor for PairingRelationship);
      v174 = v173 + 64;
      v175 = 1 << *(v173 + 32);
      v176 = -1;
      if (v175 < 64)
      {
        v176 = ~(-1 << v175);
      }

      v177 = v176 & *(v173 + 64);
      isEscapingClosureAtFileLocation = (v175 + 63) >> 6;
      v315 = v336 + 6;
      v313 = (v336 + 4);
      v312 = (v336 + 1);
      *&v342 = v173;

      v178 = 0;
      *&v179 = 136446722;
      v314 = v179;
      for (i = v173 + 64; ; v174 = i)
      {
        if (!v177)
        {
          if (isEscapingClosureAtFileLocation <= v178 + 1)
          {
            v182 = v178 + 1;
          }

          else
          {
            v182 = isEscapingClosureAtFileLocation;
          }

          a2 = v182 - 1;
          while (1)
          {
            v181 = v178 + 1;
            if (__OFADD__(v178, 1))
            {
              break;
            }

            if (v181 >= isEscapingClosureAtFileLocation)
            {
              v13 = &qword_1DEF91628;
              v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
              (*(*(v206 - 8) + 56))(v157, 1, 1, v206);
              v177 = 0;
              v178 = a2;
              goto LABEL_47;
            }

            v177 = *(v174 + 8 * v181);
            ++v178;
            if (v177)
            {
              v178 = v181;
              goto LABEL_46;
            }
          }

          __break(1u);
          goto LABEL_75;
        }

        v181 = v178;
LABEL_46:
        v183 = __clz(__rbit64(v177));
        v177 &= v177 - 1;
        v184 = v183 | (v181 << 6);
        v185 = *(*(v342 + 48) + 8 * v184);
        v186 = v349;
        sub_1DEEACA70(*(v342 + 56) + *(v350 + 72) * v184, v349, type metadata accessor for ZoneVersion);
        v13 = &qword_1DEF91628;
        v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
        v188 = *(v187 + 48);
        *v157 = v185;
        sub_1DEEAB218(v186, v157 + v188, type metadata accessor for ZoneVersion);
        (*(*(v187 - 8) + 56))(v157, 0, 1, v187);

LABEL_47:
        v189 = v352;
        sub_1DEE1BA88(v157, v352, &qword_1ECDE3D10, &qword_1DEF91620);
        v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
        if ((*(*(v190 - 8) + 48))(v189, 1, v190) == 1)
        {
          break;
        }

        v81 = *v189;
        v191 = v189 + *(v190 + 48);
        v192 = v354;
        sub_1DEEAB218(v191, v354, type metadata accessor for ZoneVersion);
        sub_1DEEACA70(v192, a1, type metadata accessor for ZoneVersion);
        v23 = v356;

        v193 = sub_1DEF8D4D8();
        v194 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v193, v194))
        {
          LODWORD(v344) = v194;
          v13 = swift_slowAlloc();
          v343 = swift_slowAlloc();
          v358[0] = v343;
          *v13 = v314;
          *(v13 + 4) = sub_1DEE12A5C(v23[66], v23[67], v358);
          *(v13 + 6) = 2082;
          v195 = v81[5];
          aBlock = v81[4];
          v363 = v195;

          MEMORY[0x1E12CB180](14906, 0xE200000000000000);
          MEMORY[0x1E12CB180](v81[2], v81[3]);

          v196 = sub_1DEE12A5C(aBlock, v363, v358);

          *(v13 + 14) = v196;
          *(v13 + 11) = 2082;
          v197 = v351;
          sub_1DEEACA70(a1, v351, type metadata accessor for ZoneVersion);
          v198 = v197;
          v199 = v345;
          sub_1DEEACA70(v198, v345, type metadata accessor for ZoneVersion);
          v200 = v348;
          if ((*v315)(v199, 1, v348) == 1)
          {
            v201 = 0xE500000000000000;
            v202 = 0x7974706D65;
          }

          else
          {
            v203 = v341;
            (*v313)(v341, v199, v200);
            sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
            v202 = sub_1DEF8E2E8();
            v201 = v204;
            (*v312)(v203, v200);
          }

          sub_1DEE273A0(v351, type metadata accessor for ZoneVersion);
          a1 = v347;
          sub_1DEE273A0(v347, type metadata accessor for ZoneVersion);
          v23 = sub_1DEE12A5C(v202, v201, v358);

          v13[3] = v23;
          _os_log_impl(&dword_1DEE0F000, v193, v344, "(%{public}s) Local zone version: %{public}s: %{public}s", v13, 0x20u);
          v205 = v343;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v205, -1, -1);
          MEMORY[0x1E12CCD70](v13, -1, -1);

          v180 = v354;
        }

        else
        {

          sub_1DEE273A0(a1, type metadata accessor for ZoneVersion);
          v180 = v192;
        }

        sub_1DEE273A0(v180, type metadata accessor for ZoneVersion);
        v157 = ObjectType;
      }

      v208 = v356;
      v209 = *(v356 + 544);
      v210 = *(v209 + 32);
      MEMORY[0x1EEE9AC00](v207);
      v211 = v296;
      *(&v292 - 4) = v209;
      *(&v292 - 3) = v211;
      v290 = v295;

      v212 = v324;
      sub_1DEF8DD18();

      if ((*(v328 + 48))(v212, 1, v325) == 1)
      {
        sub_1DEE171B4(v212, &qword_1ECDE3D08, &unk_1DEF95E50);
        if ((v340 & 0xFE) != 0)
        {
          v213 = 0;
        }

        else
        {
          v213 = v339;
        }

        v214 = v208[68];

        v215 = v341;
        v216 = sub_1DEF8D3E8();
        v217 = v335;
        if ((v213 & 0x8000000000000000) == 0)
        {
          v218 = *(v214 + 32);
          MEMORY[0x1EEE9AC00](v216);
          v219 = v293;
          *(&v292 - 4) = v215;
          *(&v292 - 3) = v219;
          v290 = v214;
          v291 = v213;
          sub_1DEF8DD18();
          v354 = 0;

          v220 = v348;
          (*v312)(v215, v348);
          goto LABEL_61;
        }

        __break(1u);
LABEL_79:
        swift_once();
LABEL_72:
        v268 = qword_1ECDF60B0;
        v269 = qword_1ECDF60B8;
        v270 = v208[22];
        v355 = v208[23];
        v271 = sub_1DEF8D1E8();
        (*(*(v271 - 8) + 56))(v308, 1, 1, v271);
        v360 = 0;
        v272 = v298;
        v273 = v337;
        if (v297(v298, 1, v337) != 1)
        {
          v274 = v208;
          v354 = v270;
          ObjectType = swift_getObjectType();
          v275 = v272 + *(v273 + 20);
          v276 = v326;
          sub_1DEEACA70(v275, v326, type metadata accessor for DeviceDescriptor);

          v359 = 0;
          v358[0] = v268;
          v358[1] = v269;
          v277 = v304;
          sub_1DEEACA70(v215, v304, type metadata accessor for ReplicatorMessage.Handshake.Request);
          v278 = v301;
          sub_1DEEACA70(v335, v301, type metadata accessor for SessionManager.Session);
          v279 = (*(v302 + 80) + 24) & ~*(v302 + 80);
          v280 = (v303 + v279 + 7) & 0xFFFFFFFFFFFFFFF8;
          v281 = (*(v328 + 80) + v280 + 8) & ~*(v328 + 80);
          v282 = (v300 + v281 + 7) & 0xFFFFFFFFFFFFFFF8;
          v283 = swift_allocObject();
          *(v283 + 16) = v274;
          sub_1DEEAB218(v277, v283 + v279, type metadata accessor for ReplicatorMessage.Handshake.Request);
          *(v283 + v280) = v294;
          sub_1DEEAB218(v278, v283 + v281, type metadata accessor for SessionManager.Session);
          v284 = v283 + v282;
          v285 = v293;
          v286 = v293[1];
          *v284 = *v293;
          *(v284 + 16) = v286;
          *(v284 + 32) = *(v285 + 32);
          *(v284 + 48) = *(v285 + 48);
          v287 = v283 + ((v282 + 63) & 0xFFFFFFFFFFFFFFF8);
          *v287 = v339;
          *(v287 + 8) = v340;

          sub_1DEEA8BAC(v285, &aBlock);

          v288 = v307;
          v289 = v308;
          sub_1DEE7FC18(v307, v308, &v360, v276, &v359, v358, sub_1DEEA9A9C, v283, ObjectType, v355);

          sub_1DEE273A0(v276, type metadata accessor for DeviceDescriptor);
          sub_1DEE171B4(v289, &qword_1ECDE4890, &qword_1DEF90990);
          sub_1DEE273A0(v288, type metadata accessor for Message);
          sub_1DEE273A0(v329, type metadata accessor for ReplicatorMessage);
          sub_1DEE273A0(v327, type metadata accessor for ReplicatorMessage.Handshake);
          sub_1DEE273A0(v333, type metadata accessor for ReplicatorMessage.Handshake.Request);
          sub_1DEE273A0(v335, type metadata accessor for SessionManager.Session);
          sub_1DEE273A0(v334, type metadata accessor for DeviceDescriptor);

          return;
        }

        goto LABEL_85;
      }

      v354 = 0;
      v221 = v310;
      sub_1DEEAB218(v212, v310, type metadata accessor for SessionManager.Session);
      v217 = v335;
      sub_1DEEAB218(v221, v335, type metadata accessor for SessionManager.Session);
      v220 = v348;
      v215 = v341;
LABEL_61:
      v222 = v208[68];
      v223 = *(v222 + 32);
      v225 = v336 + 2;
      v224 = v336[2];
      v224(v215, v217, v220);
      v226 = v220;
      v227 = (*(v225 + 64) + 24) & ~*(v225 + 64);
      v228 = v227 + v322;
      v229 = swift_allocObject();
      *(v229 + 16) = v222;
      (v225[2])(v229 + v227, v215, v226);
      *(v229 + v228) = 0;
      v230 = swift_allocObject();
      *(v230 + 16) = sub_1DEEA8D40;
      *(v230 + 24) = v229;
      v366 = sub_1DEE46D40;
      v367 = v230;
      aBlock = MEMORY[0x1E69E9820];
      v363 = 1107296256;
      v364 = sub_1DEE134F4;
      v365 = &block_descriptor_513;
      v231 = _Block_copy(&aBlock);
      swift_retain_n();

      dispatch_sync(v223, v231);
      _Block_release(v231);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_77;
      }

      v232 = v298;
      v233 = v337;
      v234 = v297;
      v235 = v297(v298, 1, v337);
      v236 = v329;
      v237 = v333;
      if (v235 == 1)
      {
        goto LABEL_81;
      }

      v238 = v326;
      sub_1DEEACA70(v232 + *(v233 + 20), v326, type metadata accessor for DeviceDescriptor);
      v239 = sub_1DEEA9148(v342, v238);
      sub_1DEE273A0(v238, type metadata accessor for DeviceDescriptor);
      v240 = v348;
      v224(v237, v335, v348);
      v241 = v232;
      v242 = v318;
      sub_1DEEACA70(v334, v237 + *(v318 + 24), type metadata accessor for DeviceDescriptor);
      v243 = (v237 + *(v242 + 20));
      v244 = v332;
      v245 = v338;
      *v243 = v332;
      v243[1] = v245;
      *(v237 + *(v242 + 28)) = v239;
      v246 = v327;
      sub_1DEEACA70(v237, v327, type metadata accessor for ReplicatorMessage.Handshake.Request);
      swift_storeEnumTagMultiPayload();
      sub_1DEEACA70(v246, v236, type metadata accessor for ReplicatorMessage.Handshake);
      v247 = v236;
      swift_storeEnumTagMultiPayload();
      sub_1DEE4F8C0(v244, v245);
      v208 = v356;
      sub_1DEE53BFC();
      v248 = v331;
      sub_1DEE17214(v241, v331, &qword_1ECDE3C18, &unk_1DEF94D20);
      if (v234(v248, 1, v337) != 1)
      {
        v249 = v330;
        (v336[7])(v330, 1, 1, v240);
        v250 = sub_1DEE5D178(v248);
        v251 = v321;
        if (v252)
        {
          v253 = v248;
          v254 = v309;
          sub_1DEEACA70(v253, v309, type metadata accessor for PairingRelationship);

          v255 = sub_1DEF8D4D8();
          v256 = sub_1DEF8DC98();

          if (os_log_type_enabled(v255, v256))
          {
            v257 = swift_slowAlloc();
            v258 = swift_slowAlloc();
            aBlock = v258;
            *v257 = 136446466;
            *(v257 + 4) = sub_1DEE12A5C(v208[66], v208[67], &aBlock);
            *(v257 + 12) = 2082;
            sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
            v259 = sub_1DEF8E2E8();
            v260 = v254;
            v261 = v259;
            v263 = v262;
            sub_1DEE273A0(v260, type metadata accessor for PairingRelationship);
            v264 = sub_1DEE12A5C(v261, v263, &aBlock);

            *(v257 + 14) = v264;
            _os_log_impl(&dword_1DEE0F000, v255, v256, "(%{public}s) Can't resolve protocol version when trying to construct message for: %{public}s", v257, 0x16u);
            swift_arrayDestroy();
            v215 = v333;
            MEMORY[0x1E12CCD70](v258, -1, -1);
            v247 = v329;
            MEMORY[0x1E12CCD70](v257, -1, -1);

            v265 = v317;
            v266 = v316;
            v249 = v330;
          }

          else
          {

            sub_1DEE273A0(v254, type metadata accessor for PairingRelationship);

            v265 = v317;
            v266 = v316;
            v249 = v330;
            v215 = v333;
          }
        }

        else
        {
          v267 = v354;
          sub_1DEE29904(v236, v250, v249, v321);
          v215 = v333;
          if (!v267)
          {
            sub_1DEE171B4(v249, &unk_1ECDE3E80, &unk_1DEF90970);
            sub_1DEE273A0(v248, type metadata accessor for PairingRelationship);
            (*(v316 + 56))(v251, 0, 1, v317);
            sub_1DEEAB218(v251, v307, type metadata accessor for Message);
            if (qword_1ECDE37E8 != -1)
            {
              goto LABEL_79;
            }

            goto LABEL_72;
          }

          v265 = v317;
          v266 = v316;
        }

        sub_1DEE171B4(v249, &unk_1ECDE3E80, &unk_1DEF90970);
        sub_1DEE273A0(v247, type metadata accessor for ReplicatorMessage);
        sub_1DEE273A0(v246, type metadata accessor for ReplicatorMessage.Handshake);
        sub_1DEE273A0(v215, type metadata accessor for ReplicatorMessage.Handshake.Request);
        sub_1DEE273A0(v335, type metadata accessor for SessionManager.Session);
        sub_1DEE273A0(v334, type metadata accessor for DeviceDescriptor);
        sub_1DEE273A0(v331, type metadata accessor for PairingRelationship);
        (*(v266 + 56))(v251, 1, 1, v265);
        sub_1DEE171B4(v251, &unk_1ECDE4E20, &unk_1DEF95B10);

        return;
      }
    }

    __break(1u);
    goto LABEL_83;
  }

  v99 = a1;
  v100 = v356;

  v101 = a1;
  v102 = sub_1DEF8D4D8();
  v103 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = isEscapingClosureAtFileLocation;
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    aBlock = v107;
    *v104 = 136446466;
    *(v104 + 4) = sub_1DEE12A5C(*(v100 + 528), *(v100 + 536), &aBlock);
    *(v104 + 12) = 2114;
    v108 = v99;
    v109 = _swift_stdlib_bridgeErrorToNSError();
    *(v104 + 14) = v109;
    *v106 = v109;
    _os_log_impl(&dword_1DEE0F000, v102, v103, "(%{public}s) Abandoning handshake request because prerequisites are not met: %{public}@", v104, 0x16u);
    sub_1DEE171B4(v106, &unk_1ECDE4880, &qword_1DEF93420);
    v110 = v106;
    isEscapingClosureAtFileLocation = v105;
    MEMORY[0x1E12CCD70](v110, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v107);
    MEMORY[0x1E12CCD70](v107, -1, -1);
    MEMORY[0x1E12CCD70](v104, -1, -1);
  }

  sub_1DEE7D6B8(*isEscapingClosureAtFileLocation, *(isEscapingClosureAtFileLocation + 8));
}

uint64_t sub_1DEE7D6B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a1;
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for PairingRelationship();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D788();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + 232);
  *v17 = v18;
  (*(v13 + 104))(v17, *MEMORY[0x1E69E8020], v12, v15);
  v19 = v18;
  v20 = sub_1DEF8D7B8();
  result = (*(v13 + 8))(v17, v12);
  if (v20)
  {
    result = swift_beginAccess();
    v22 = *(v3 + 600);
    if (*(v22 + 16))
    {
      v23 = *(v3 + 600);

      v24 = sub_1DEE13224(v45, v46);
      if (v25)
      {
        v43 = v3;
        v26 = *(*(v22 + 56) + 8 * v24);

        v41 = v26;
        v27 = *(v26 + 16);
        if (v27)
        {
          swift_beginAccess();
          v42 = v44 + 8;
          v28 = (v9 + 48);
          v29 = (v41 + 40);
          do
          {
            v32 = *(v29 - 1);
            v33 = *v29;
            sub_1DEE29594(v43 + 192, &v47);
            v34 = v49;
            v35 = v50;
            __swift_project_boxed_opaque_existential_1(&v47, v49);
            v36 = *(v35 + 8);

            MetadataStoring.pairingRelationship(remoteDeviceID:)(v45, v46, v34, v36, v7);
            if ((*v28)(v7, 1, v8) == 1)
            {
              sub_1DEE171B4(v7, &qword_1ECDE3C18, &unk_1DEF94D20);
              __swift_destroy_boxed_opaque_existential_1(&v47);
              sub_1DEEAA8E8();
              v30 = swift_allocError();
              *v31 = 2;
              v47 = v30;
              v48 = 1;
              v32(&v47);
            }

            else
            {
              sub_1DEEAB218(v7, v44, type metadata accessor for PairingRelationship);
              __swift_destroy_boxed_opaque_existential_1(&v47);
              if (*(v42 + *(v8 + 32)) == 2)
              {
                v47 = 1;
                v48 = 0;
                v32(&v47);
              }

              else
              {
                sub_1DEEAA8E8();
                v37 = swift_allocError();
                *v38 = 2;
                v47 = v37;
                v48 = 1;
                v32(&v47);
              }

              sub_1DEE273A0(v44, type metadata accessor for PairingRelationship);
            }

            v29 += 2;
            --v27;
          }

          while (v27);
        }

        swift_beginAccess();
        v39 = v46;

        sub_1DEF32AA0(0, v45, v39);
        return swift_endAccess();
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE7DB50(uint64_t a1)
{
  v28[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - v4;
  v6 = type metadata accessor for SessionManager.Session();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + 232);
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1DEF8D7B8();
  result = (*(v12 + 8))(v16, v11);
  if (v17)
  {
    v20 = *(v1 + 544);
    v21 = type metadata accessor for PairingRelationship();
    v22 = (v28[0] + *(v21 + 20));
    v24 = *v22;
    v23 = v22[1];
    v25 = *(v20 + 32);
    MEMORY[0x1EEE9AC00](v21);
    v28[-4] = v20;
    v28[-3] = v26;
    v28[-2] = v27;

    sub_1DEF8DD18();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_1DEE171B4(v5, &qword_1ECDE3D08, &unk_1DEF95E50);
    }

    else
    {
      sub_1DEEAB218(v5, v10, type metadata accessor for SessionManager.Session);
      sub_1DEE7F920(v10);
      return sub_1DEE273A0(v10, type metadata accessor for SessionManager.Session);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE7DE50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D10, &qword_1DEF91620);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v133 = (v122 - v8);
  v9 = type metadata accessor for ZoneVersion();
  v135 = *(v9 - 8);
  v10 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v136 = v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v131 = v122 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v122 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v126 = v122 - v18;
  v19 = sub_1DEF8D788();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = v1[29];
  *v24 = v25;
  (*(v20 + 104))(v24, *MEMORY[0x1E69E8020], v19, v22);
  v26 = v25;
  v27 = sub_1DEF8D7B8();
  (*(v20 + 8))(v24, v19);
  if ((v27 & 1) == 0)
  {
    goto LABEL_72;
  }

  swift_beginAccess();
  v28 = v1[30];
  v123 = a1;
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = sub_1DEF8E038();
    v129 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v29 | 0x8000000000000000;
  }

  else
  {
    v33 = -1 << *(v28 + 32);
    v30 = ~v33;
    v34 = *(v28 + 64);
    v129 = v28 + 64;
    v35 = -v33;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v31 = v36 & v34;
    v32 = v28;
  }

  v125 = v16;
  v134 = v6;
  v122[2] = v28;
  swift_bridgeObjectRetain_n();
  v37 = 0;
  v122[1] = v30;
  v38 = (v30 + 64) >> 6;
  v124 = v1;
  v128 = v1 + 84;
  v137 = MEMORY[0x1E69E7CC8];
  v39 = v129;
  v127 = v38;
LABEL_9:
  v40 = v37;
  while ((v32 & 0x8000000000000000) != 0)
  {
    v47 = sub_1DEF8E0D8();
    if (!v47)
    {
      goto LABEL_41;
    }

    v49 = v48;
    v141 = v47;
    type metadata accessor for Zone.ID();
    swift_dynamicCast();
    v45 = v138[0];
    v141 = v49;
    type metadata accessor for Replicator.WeakSource();
    swift_dynamicCast();
    v46 = v138[0];
    v37 = v40;
    v43 = v31;
    if (!v45)
    {
LABEL_41:
      sub_1DEE2774C();

      v81 = v124;
      swift_beginAccess();
      sub_1DEE29594((v81 + 24), v138);
      v83 = v139;
      v82 = v140;
      __swift_project_boxed_opaque_existential_1(v138, v139);
      v84 = (*(*(v82 + 8) + 24))(v123, v83);
      sub_1DEEAA768(v84, sub_1DEEA9D80);
      v86 = v85;

      __swift_destroy_boxed_opaque_existential_1(v138);
      v87 = 0;
      v88 = *(v86 + 64);
      v132 = v86;
      v89 = 1 << *(v86 + 32);
      v90 = -1;
      if (v89 < 64)
      {
        v90 = ~(-1 << v89);
      }

      v91 = v90 & v88;
      v92 = (v89 + 63) >> 6;
      while (1)
      {
        v93 = v134;
        if (!v91)
        {
          break;
        }

        v94 = v87;
LABEL_54:
        v97 = __clz(__rbit64(v91));
        v91 &= v91 - 1;
        v98 = v97 | (v94 << 6);
        v99 = *(*(v132 + 48) + 8 * v98);
        v100 = v131;
        sub_1DEEACA70(*(v132 + 56) + *(v135 + 72) * v98, v131, type metadata accessor for ZoneVersion);
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
        v102 = *(v101 + 48);
        *v93 = v99;
        sub_1DEEAB218(v100, v93 + v102, type metadata accessor for ZoneVersion);
        (*(*(v101 - 8) + 56))(v93, 0, 1, v101);

        v96 = v94;
LABEL_55:
        v103 = v133;
        sub_1DEE1BA88(v93, v133, &qword_1ECDE3D10, &qword_1DEF91620);
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
        if ((*(*(v104 - 8) + 48))(v103, 1, v104) == 1)
        {

          return v137;
        }

        v87 = v96;
        v105 = *v103;
        sub_1DEEAB218(v103 + *(v104 + 48), v136, type metadata accessor for ZoneVersion);
        v106 = v137;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v138[0] = v106;
        v109 = sub_1DEEAF20C(v105);
        v110 = *(v106 + 16);
        v111 = (v108 & 1) == 0;
        v112 = v110 + v111;
        if (__OFADD__(v110, v111))
        {
          goto LABEL_68;
        }

        v113 = v108;
        if (v137[3] >= v112)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DEEB8A3C();
          }
        }

        else
        {
          sub_1DEEB3A30(v112, isUniquelyReferenced_nonNull_native);
          v114 = sub_1DEEAF20C(v105);
          if ((v113 & 1) != (v115 & 1))
          {
            goto LABEL_74;
          }

          v109 = v114;
        }

        v137 = v138[0];
        if (v113)
        {
          sub_1DEE1B474(v136, v137[7] + *(v135 + 72) * v109, type metadata accessor for ZoneVersion);
        }

        else
        {
          v116 = v136;
          v117 = v137;
          v137[(v109 >> 6) + 8] |= 1 << v109;
          *(v117[6] + 8 * v109) = v105;
          sub_1DEEAB218(v116, v117[7] + *(v135 + 72) * v109, type metadata accessor for ZoneVersion);
          v118 = v117[2];
          v73 = __OFADD__(v118, 1);
          v119 = v118 + 1;
          if (v73)
          {
            goto LABEL_70;
          }

          v137[2] = v119;
        }
      }

      if (v92 <= v87 + 1)
      {
        v95 = v87 + 1;
      }

      else
      {
        v95 = v92;
      }

      v96 = v95 - 1;
      while (1)
      {
        v94 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          break;
        }

        if (v94 >= v92)
        {
          v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
          (*(*(v120 - 8) + 56))(v93, 1, 1, v120);
          v91 = 0;
          goto LABEL_55;
        }

        v91 = *(v86 + 64 + 8 * v94);
        ++v87;
        if (v91)
        {
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

LABEL_20:
    v132 = v46;
    v130 = v43;
    v50 = v128;
    swift_beginAccess();
    v51 = *v50;
    if (!*(*v50 + 16))
    {
      goto LABEL_30;
    }

    v52 = v32;
    v54 = v45[4];
    v53 = v45[5];
    v55 = v45;
    v56 = *(v51 + 40);
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    v57 = sub_1DEF8E7F8();
    v58 = -1 << *(v51 + 32);
    v59 = v57 & ~v58;
    if (((*(v51 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
    {
LABEL_29:

      v32 = v52;
      v38 = v127;
      v45 = v55;
LABEL_30:
      v63 = sub_1DEF8D3F8();
      v64 = v126;
      (*(*(v63 - 8) + 56))(v126, 1, 1, v63);
      v65 = v125;
      sub_1DEEAB218(v64, v125, type metadata accessor for ZoneVersion);

      v66 = v137;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v138[0] = v66;
      v68 = v45;
      v69 = sub_1DEEAF20C(v45);
      v71 = *(v66 + 16);
      v72 = (v70 & 1) == 0;
      v73 = __OFADD__(v71, v72);
      v74 = v71 + v72;
      if (v73)
      {
        goto LABEL_71;
      }

      v75 = v70;
      if (v137[3] >= v74)
      {
        if ((v67 & 1) == 0)
        {
          v80 = v69;
          sub_1DEEB8A3C();
          v69 = v80;
          v38 = v127;
        }
      }

      else
      {
        sub_1DEEB3A30(v74, v67);
        v69 = sub_1DEEAF20C(v68);
        if ((v75 & 1) != (v76 & 1))
        {
          goto LABEL_74;
        }
      }

      v39 = v129;
      v137 = v138[0];
      if (v75)
      {
        sub_1DEE1B474(v65, v137[7] + *(v135 + 72) * v69, type metadata accessor for ZoneVersion);
      }

      else
      {
        v77 = v137;
        v137[(v69 >> 6) + 8] |= 1 << v69;
        *(v77[6] + 8 * v69) = v68;
        sub_1DEEAB218(v65, v77[7] + *(v135 + 72) * v69, type metadata accessor for ZoneVersion);

        v78 = v77[2];
        v73 = __OFADD__(v78, 1);
        v79 = v78 + 1;
        if (v73)
        {
          goto LABEL_73;
        }

        v137[2] = v79;
      }

      v31 = v130;
      goto LABEL_9;
    }

    v60 = ~v58;
    while (1)
    {
      v61 = (*(v51 + 48) + 16 * v59);
      v62 = *v61 == v54 && v61[1] == v53;
      if (v62 || (sub_1DEF8E4E8() & 1) != 0)
      {
        break;
      }

      v59 = (v59 + 1) & v60;
      if (((*(v51 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v40 = v37;
    v31 = v130;
    v32 = v52;
    v38 = v127;
    v39 = v129;
  }

  v41 = v40;
  v42 = v31;
  v37 = v40;
  if (v31)
  {
LABEL_16:
    v43 = (v42 - 1) & v42;
    v44 = (v37 << 9) | (8 * __clz(__rbit64(v42)));
    v45 = *(*(v32 + 48) + v44);
    v46 = *(*(v32 + 56) + v44);

    if (!v45)
    {
      goto LABEL_41;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v37 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v37 >= v38)
    {
      goto LABEL_41;
    }

    v42 = *(v39 + 8 * v37);
    ++v41;
    if (v42)
    {
      goto LABEL_16;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  type metadata accessor for Zone.ID();
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEE7EA84(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8, unsigned __int8 a9)
{
  v46 = a8;
  v42 = a7;
  v41 = a5;
  v40 = a2;
  v52 = a1;
  v44 = a9;
  v49 = sub_1DEF8D698();
  v51 = *(v49 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = sub_1DEF8D6D8();
  v48 = *(v50 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v43 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for SessionManager.Session();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v39[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v39[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = *(a3 + 232);
  sub_1DEEACA70(a4, v23, type metadata accessor for ReplicatorMessage.Handshake.Request);
  sub_1DEEACA70(a6, v19, type metadata accessor for SessionManager.Session);
  v24 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v25 = (v22 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v17 + 80) + v25 + 8) & ~*(v17 + 80);
  v27 = (v18 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v52;
  v29 = v40 & 1;
  *(v28 + 24) = v40 & 1;
  *(v28 + 32) = a3;
  sub_1DEEAB218(v23, v28 + v24, type metadata accessor for ReplicatorMessage.Handshake.Request);
  *(v28 + v25) = v41;
  sub_1DEEAB218(v19, v28 + v26, type metadata accessor for SessionManager.Session);
  v30 = v28 + v27;
  v31 = v42;
  v32 = v42[1];
  *v30 = *v42;
  *(v30 + 16) = v32;
  *(v30 + 32) = *(v31 + 32);
  *(v30 + 48) = *(v31 + 48);
  v33 = v28 + ((v27 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v33 = v46;
  *(v33 + 8) = v44;
  aBlock[4] = sub_1DEEA9C34;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_529;
  v34 = _Block_copy(aBlock);
  sub_1DEE39150(v52, v29);

  sub_1DEEA8BAC(v31, v53);
  v35 = v43;
  sub_1DEF8D6B8();
  v53[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  v36 = v47;
  v37 = v49;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v35, v36, v34);
  _Block_release(v34);
  (*(v51 + 8))(v36, v37);
  (*(v48 + 8))(v35, v50);
}

void sub_1DEE7EFD0(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8, char a9)
{
  v78 = a8;
  v79 = a6;
  v80 = a7;
  v13 = sub_1DEF8D3F8();
  v77 = *(v13 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  v20 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v73 - v25;
  if (a2)
  {
    v82 = a1;
    v27 = a1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    if (swift_dynamicCast() && v87 == 2)
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v29 = sub_1DEF8D508();
      __swift_project_value_buffer(v29, qword_1ECDF6028);
      sub_1DEEACA70(a4, v26, type metadata accessor for ReplicatorMessage.Handshake.Request);
      sub_1DEE39150(a1, 1);

      v30 = sub_1DEF8D4D8();
      v31 = sub_1DEF8DCB8();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v30, v31))
      {
        LODWORD(v75) = v31;
        v78 = v30;
        v76 = v28;
        v32 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v83 = v74;
        *v32 = 136446978;
        *(v32 + 4) = sub_1DEE12A5C(a3[66], a3[67], &v83);
        *(v32 + 12) = 2082;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v33 = sub_1DEF8E2E8();
        v35 = v34;
        sub_1DEE273A0(v26, type metadata accessor for ReplicatorMessage.Handshake.Request);
        v36 = sub_1DEE12A5C(v33, v35, &v83);

        *(v32 + 14) = v36;
        *(v32 + 22) = 2082;
        v37 = swift_projectBox();
        swift_beginAccess();
        v38 = type metadata accessor for PairingRelationship();
        if ((*(*(v38 - 8) + 48))(v37, 1, v38) != 1)
        {
          v39 = v77;
          (*(v77 + 16))(v19, v37, v13);

          v40 = sub_1DEF8E2E8();
          v42 = v41;
          (*(v39 + 8))(v19, v13);
          v43 = sub_1DEE12A5C(v40, v42, &v83);

          *(v32 + 24) = v43;
          *(v32 + 32) = 2082;
          v81 = a1;
          v44 = a1;
          v45 = sub_1DEF8D988();
          v47 = sub_1DEE12A5C(v45, v46, &v83);

          *(v32 + 34) = v47;
          v48 = v78;
          _os_log_impl(&dword_1DEE0F000, v78, v75, "(%{public}s) Handshake request for session %{public}s with relationship %{public}s blocked by allow list: %{public}s.", v32, 0x2Au);
          v49 = v74;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v49, -1, -1);
          MEMORY[0x1E12CCD70](v32, -1, -1);

LABEL_21:
          sub_1DEE7F920(v79);
          sub_1DEE7D6B8(*v80, *(v80 + 8));

          return;
        }

        goto LABEL_27;
      }

LABEL_20:

      sub_1DEE273A0(v26, type metadata accessor for ReplicatorMessage.Handshake.Request);
      goto LABEL_21;
    }

    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v50 = sub_1DEF8D508();
    __swift_project_value_buffer(v50, qword_1ECDF6028);
    sub_1DEEACA70(a4, v23, type metadata accessor for ReplicatorMessage.Handshake.Request);
    sub_1DEE39150(a1, 1);

    v51 = sub_1DEF8D4D8();
    v52 = sub_1DEF8DC98();

    sub_1DEE39214(a1, 1);
    if (os_log_type_enabled(v51, v52))
    {
      LODWORD(v74) = v52;
      v75 = v51;
      v76 = v28;
      v26 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v85[0] = v73;
      *v26 = 136446978;
      *(v26 + 4) = sub_1DEE12A5C(a3[66], a3[67], v85);
      *(v26 + 6) = 2082;
      sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
      v53 = sub_1DEF8E2E8();
      v55 = v54;
      sub_1DEE273A0(v23, type metadata accessor for ReplicatorMessage.Handshake.Request);
      v56 = sub_1DEE12A5C(v53, v55, v85);

      *(v26 + 14) = v56;
      *(v26 + 11) = 2082;
      v57 = swift_projectBox();
      swift_beginAccess();
      v58 = type metadata accessor for PairingRelationship();
      if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
      {
        goto LABEL_26;
      }

      v59 = v77;
      (*(v77 + 16))(v16, v57, v13);

      v60 = sub_1DEF8E2E8();
      v62 = v61;
      (*(v59 + 8))(v16, v13);
      v63 = sub_1DEE12A5C(v60, v62, v85);

      *(v26 + 3) = v63;
      *(v26 + 16) = 2082;
      v83 = a1;
      v64 = a1;
      v65 = sub_1DEF8D988();
      v67 = sub_1DEE12A5C(v65, v66, v85);

      *(v26 + 34) = v67;
      v68 = v75;
      _os_log_impl(&dword_1DEE0F000, v75, v74, "(%{public}s) Error sending handshake request for session %{public}s with relationship %{public}s: %{public}s", v26, 0x2Au);
      v69 = v73;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v69, -1, -1);
      MEMORY[0x1E12CCD70](v26, -1, -1);
    }

    else
    {

      sub_1DEE273A0(v23, type metadata accessor for ReplicatorMessage.Handshake.Request);
    }

    sub_1DEE7F920(v79);
    v30 = a3[51];
    v70 = a3[52];
    __swift_project_boxed_opaque_existential_1(a3 + 48, v30);
    v71 = *(v80 + 16);
    v85[0] = *v80;
    v85[1] = v71;
    v85[2] = *(v80 + 32);
    v86 = *(v80 + 48);
    if (a9)
    {
      v72 = v78;
      if (a9 == 1)
      {
        v72 = (&v78->isa + 1);
        if (__OFADD__(v78, 1))
        {
          __break(1u);
          goto LABEL_20;
        }
      }

      goto LABEL_23;
    }

    v72 = (&v78->isa + 1);
    if (!__OFADD__(v78, 1))
    {
LABEL_23:
      v83 = v72;
      v84 = a9;
      (*(v70 + 16))(v85, &v83, v30, v70);
      return;
    }

    __break(1u);
LABEL_26:

    __break(1u);
LABEL_27:

    __break(1u);
  }
}

uint64_t sub_1DEE7F920(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D788();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v2[29];
  *v14 = v15;
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8020], v9, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  result = (*(v10 + 8))(v14, v9);
  if (v15)
  {
    v18 = v2[74];
    (*(v5 + 16))(v8, a1, v4);
    swift_beginAccess();

    sub_1DEF32DDC(0, v8);
    swift_endAccess();

    v20 = v2[68];
    v21 = *(v20 + 32);
    MEMORY[0x1EEE9AC00](v19);
    v30[-2] = v20;
    v30[-1] = a1;

    sub_1DEF8DD18();

    if (LOBYTE(v30[0]) == 1)
    {
      v22 = v2[51];
      v23 = v2[52];
      __swift_project_boxed_opaque_existential_1(v2 + 48, v22);
      v24 = a1 + *(type metadata accessor for SessionManager.Session() + 20);
      v25 = *(v24 + 8);
      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v28 = *(v24 + 32);
      v30[0] = *v24;
      v30[1] = v25;
      v30[2] = v27;
      v30[3] = v26;
      v31 = v28;
      v32 = *(v24 + 40);
      v29 = *(v23 + 24);

      v29(v30, v22, v23);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE7FC18(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = a1;
  v31 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v31 - v19;
  v21 = *a3;
  v22 = *a5;
  if (*(a4 + 32) >= 7uLL)
  {
    v27 = a6[1];
    v28 = *a6;
    v35 = v21;
    v34 = v22;
    v33[0] = v28;
    v33[1] = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = a7;
    *(v29 + 24) = a8;
    v30 = *(a10 + 48);

    v30(v32, a2, &v35, a4, &v34, v33, sub_1DEEA9BF0, v29, v31, a10);
  }

  else
  {
    v23 = sub_1DEF8D1E8();
    (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
    LOBYTE(v33[0]) = v21;
    v35 = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = a7;
    *(v24 + 24) = a8;
    v25 = *(a10 + 40);

    v25(v32, v20, v33, a4, &v35, sub_1DEEA9BF8, v24, v31, a10);

    return sub_1DEE171B4(v20, &qword_1ECDE4890, &qword_1DEF90990);
  }
}

void sub_1DEE7FE5C(uint64_t a1, uint64_t *a2, os_log_t a3)
{
  v6 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v316 = *(v6 - 8);
  v7 = *(v316 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v317 = v8;
  v318 = &v303 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v319 = &v303 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v328 = &v303 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v326 = &v303 - v17;
  v325 = type metadata accessor for Message();
  v324 = *(v325 - 8);
  v18 = *(v324 + 64);
  MEMORY[0x1EEE9AC00](v325);
  v20 = &v303 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = type metadata accessor for ReplicatorMessage(0);
  v21 = *(*(v323 - 8) + 64);
  MEMORY[0x1EEE9AC00](v323);
  v23 = (&v303 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v322 = type metadata accessor for ReplicatorMessage.Handshake(0);
  v24 = *(*(v322 - 8) + 64);
  MEMORY[0x1EEE9AC00](v322);
  v327 = &v303 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v26 = *(*(v321 - 8) + 64);
  MEMORY[0x1EEE9AC00](v321);
  v329 = &v303 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D50, &qword_1DEF91668);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v346 = &v303 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v352 = &v303 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D10, &qword_1DEF91620);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v336 = (&v303 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  ObjectType = (&v303 - v37);
  v363 = sub_1DEF8D3F8();
  v341 = *(v363 - 8);
  v38 = *(v341 + 64);
  MEMORY[0x1EEE9AC00](v363);
  v344 = &v303 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v360 = &v303 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v354 = &v303 - v43;
  v44 = type metadata accessor for ZoneVersion();
  v362 = *(v44 - 8);
  v45 = *(v362 + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v335 = &v303 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v348 = &v303 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v303 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v356 = &v303 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v337 = &v303 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v349 = &v303 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v359 = &v303 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v358 = (&v303 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v361 = &v303 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D58, &qword_1DEF91670);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v351 = &v303 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v350 = &v303 - v68;
  v69 = type metadata accessor for DeviceDescriptor();
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v332 = &v303 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for SessionManager.Session();
  v313 = *(v72 - 8);
  v73 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v315 = &v303 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = v74;
  MEMORY[0x1EEE9AC00](v75);
  v331 = &v303 - v76;
  v330 = type metadata accessor for PairingRelationship();
  v310 = *(v330 - 8);
  v77 = *(v310 + 64);
  MEMORY[0x1EEE9AC00](v330);
  v312 = &v303 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v320 = &v303 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v364 = (&v303 - v82);
  v311 = v83;
  MEMORY[0x1EEE9AC00](v84);
  v333 = &v303 - v85;
  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    v86 = sub_1DEF8D508();
    v87 = __swift_project_value_buffer(v86, qword_1ECDF6028);

    v367 = v87;
    v88 = sub_1DEF8D4D8();
    v89 = sub_1DEF8DCB8();

    v90 = os_log_type_enabled(v88, v89);
    v347 = v20;
    v357 = v51;
    if (v90)
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v374 = v92;
      *v91 = 136446210;
      *(v91 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v374);
      _os_log_impl(&dword_1DEE0F000, v88, v89, "(%{public}s) [Send Response] Sending handshake response", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      MEMORY[0x1E12CCD70](v92, -1, -1);
      MEMORY[0x1E12CCD70](v91, -1, -1);
    }

    if (a1)
    {

      v93 = a1;
      v94 = sub_1DEF8D4D8();
      v95 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v374 = v98;
        *v96 = 136446466;
        *(v96 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v374);
        *(v96 + 12) = 2114;
        v99 = a1;
        v100 = _swift_stdlib_bridgeErrorToNSError();
        *(v96 + 14) = v100;
        *v97 = v100;
        _os_log_impl(&dword_1DEE0F000, v94, v95, "(%{public}s) [Send Response] Abandoning handshake response because prerequisites are not met: %{public}@", v96, 0x16u);
        sub_1DEE171B4(v97, &unk_1ECDE4880, &qword_1DEF93420);
        MEMORY[0x1E12CCD70](v97, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v98);
        MEMORY[0x1E12CCD70](v98, -1, -1);
        MEMORY[0x1E12CCD70](v96, -1, -1);
      }

      sub_1DEE7D6B8(*(&a3->isa + *(v6 + 24)), *(&a3[1].isa + *(v6 + 24)));

      return;
    }

    if ((a2[78] & 1) == 0)
    {
      break;
    }

    v308 = v23;
    v101 = *(v6 + 20);
    v102 = a3 + *(v6 + 24);
    v103 = *(&a3[1].isa + v101);
    v374 = *(&a3->isa + v101);
    v375 = v103;
    sub_1DEE4F8C0(v374, v103);
    v309 = a3;
    v104 = v333;
    sub_1DEE5F828(v102, &v374, 0, 1, v333);
    sub_1DEE4F8D4(v374, v375);
    v105 = (v104 + *(v330 + 20));
    sub_1DEE7D6B8(*v105, v105[1]);
    sub_1DEE7DB50(v104);
    v106 = *(v102 + 1);
    v108 = v105[20];
    v107 = v105[21];
    v109 = v102[48];
    v307 = *v102;
    v374 = v307;
    v375 = v106;
    v376 = v108;
    v377 = v107;
    v378 = v109;
    v379 = *(v102 + 2);
    v110 = a2[68];
    v111 = *(v110 + 32);
    MEMORY[0x1EEE9AC00](v107);
    *(&v303 - 4) = v309;
    *(&v303 - 3) = &v374;
    v301 = v110;
    v302 = 0;

    v306 = v106;

    sub_1DEF8DD18();
    v305 = 0;
    sub_1DEEA8CAC(&v374);

    sub_1DEE53BFC();
    sub_1DEE69B50(v332);
    v112 = sub_1DEE7DE50(v104);
    v113 = sub_1DEEA9148(v112, v105);

    v114 = *(&v309->isa + *(v6 + 28));
    v304 = v105;
    v115 = sub_1DEEA9D88(v114, v105);
    swift_beginAccess();
    sub_1DEE29594((a2 + 24), &v370);
    v117 = v372;
    v116 = v373;
    __swift_project_boxed_opaque_existential_1(&v370, v372);
    v118 = MetadataStoring.mismatchedZoneVersions(for:remoteZoneVersions:)(v104, v115, v117, *(v116 + 8));

    __swift_destroy_boxed_opaque_existential_1(&v370);
    sub_1DEE29594((a2 + 24), &v370);
    v120 = v372;
    v119 = v373;
    __swift_project_boxed_opaque_existential_1(&v370, v372);

    v339 = v118;
    v122 = sub_1DEE4FCFC(v121);
    v338 = MetadataStoring.recordVersionsWithProtocolAppropriateIDs(for:zoneIDs:)(v104, v122, v120, *(v119 + 8));

    __swift_destroy_boxed_opaque_existential_1(&v370);
    v23 = v364;
    sub_1DEEACA70(v104, v364, type metadata accessor for PairingRelationship);

    v123 = sub_1DEF8D4D8();
    v124 = sub_1DEF8DCB8();

    v125 = os_log_type_enabled(v123, v124);
    v340 = v113;
    if (v125)
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v370 = v127;
      *v126 = 136446466;
      *(v126 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v370);
      *(v126 + 12) = 2082;
      v128 = PairingRelationship.description.getter();
      v130 = v129;
      sub_1DEE273A0(v23, type metadata accessor for PairingRelationship);
      v131 = sub_1DEE12A5C(v128, v130, &v370);
      v113 = v340;

      *(v126 + 14) = v131;
      _os_log_impl(&dword_1DEE0F000, v123, v124, "(%{public}s) [Send Response] Found pairing relationship: %{public}s", v126, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v127, -1, -1);
      MEMORY[0x1E12CCD70](v126, -1, -1);
    }

    else
    {

      sub_1DEE273A0(v23, type metadata accessor for PairingRelationship);
    }

    a3 = v358;
    v51 = v351;

    v136 = sub_1DEF8D4D8();
    v137 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v370 = v139;
      *v138 = 136446466;
      *(v138 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v370);
      *(v138 + 12) = 2050;
      *(v138 + 14) = *(v113 + 16);

      _os_log_impl(&dword_1DEE0F000, v136, v137, "(%{public}s) [Send Response] Local zone versions (%{public}ld)", v138, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v139);
      MEMORY[0x1E12CCD70](v139, -1, -1);
      MEMORY[0x1E12CCD70](v138, -1, -1);
    }

    else
    {
    }

    a1 = v359;
    v20 = v113 + 64;
    v140 = 1 << *(v113 + 32);
    v141 = -1;
    if (v140 < 64)
    {
      v141 = ~(-1 << v140);
    }

    v142 = v141 & *(v113 + 64);
    v334 = (v140 + 63) >> 6;
    v342 = (v341 + 48);
    v364 = (v341 + 32);
    v353 = (v341 + 8);

    v6 = 0;
    *&v143 = 136446722;
    v355 = v143;
    v366 = a2;
    for (i = v20; ; v20 = i)
    {
      if (!v142)
      {
        if (v334 <= v6 + 1)
        {
          v145 = v6 + 1;
        }

        else
        {
          v145 = v334;
        }

        v146 = v145 - 1;
        while (1)
        {
          v144 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v144 >= v334)
          {
            a2 = &qword_1ECDE3D60;
            v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
            (*(*(v173 - 8) + 56))(v51, 1, 1, v173);
            v142 = 0;
            v6 = v146;
            goto LABEL_36;
          }

          v142 = *(v20 + 8 * v144);
          ++v6;
          if (v142)
          {
            v6 = v144;
            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_104;
      }

      v144 = v6;
LABEL_35:
      v147 = __clz(__rbit64(v142));
      v142 &= v142 - 1;
      v148 = v147 | (v144 << 6);
      v149 = (*(v340 + 48) + 16 * v148);
      v151 = *v149;
      v150 = v149[1];
      v152 = v361;
      sub_1DEEACA70(*(v340 + 56) + *(v362 + 72) * v148, v361, type metadata accessor for ZoneVersion);
      a2 = &qword_1ECDE3D60;
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
      v154 = *(v153 + 48);
      *v51 = v151;
      *(v51 + 1) = v150;
      sub_1DEEAB218(v152, &v51[v154], type metadata accessor for ZoneVersion);
      (*(*(v153 - 8) + 56))(v51, 0, 1, v153);

      a1 = v359;
      a3 = v358;
LABEL_36:
      v155 = v350;
      sub_1DEE1BA88(v51, v350, &qword_1ECDE3D58, &qword_1DEF91670);
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
      if ((*(*(v156 - 8) + 48))(v155, 1, v156) == 1)
      {
        break;
      }

      a2 = v366;
      v23 = *v155;
      v157 = *(v155 + 8);
      sub_1DEEAB218(v155 + *(v156 + 48), a3, type metadata accessor for ZoneVersion);
      sub_1DEEACA70(a3, a1, type metadata accessor for ZoneVersion);

      v158 = sub_1DEF8D4D8();
      v159 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v158, v159))
      {
        v160 = a1;
        v161 = swift_slowAlloc();
        v343 = swift_slowAlloc();
        v370 = v343;
        *v161 = v355;
        *(v161 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v370);
        *(v161 + 12) = 2082;
        v162 = sub_1DEE12A5C(v23, v157, &v370);

        *(v161 + 14) = v162;
        *(v161 + 22) = 2082;
        v163 = v160;
        v164 = v349;
        sub_1DEEACA70(v163, v349, type metadata accessor for ZoneVersion);
        v165 = v337;
        sub_1DEEACA70(v164, v337, type metadata accessor for ZoneVersion);
        v166 = v363;
        if ((*v342)(v165, 1, v363) == 1)
        {
          v167 = 0xE500000000000000;
          v168 = 0x7974706D65;
        }

        else
        {
          v169 = v354;
          (*v364)(v354, v165, v166);
          sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
          v168 = sub_1DEF8E2E8();
          v167 = v170;
          (*v353)(v169, v166);
        }

        sub_1DEE273A0(v349, type metadata accessor for ZoneVersion);
        v171 = v359;
        sub_1DEE273A0(v359, type metadata accessor for ZoneVersion);
        a2 = sub_1DEE12A5C(v168, v167, &v370);

        *(v161 + 24) = a2;
        _os_log_impl(&dword_1DEE0F000, v158, v159, "(%{public}s) [Send Response] %{public}s: %{public}s", v161, 0x20u);
        v23 = v343;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v23, -1, -1);
        v172 = v161;
        a1 = v171;
        MEMORY[0x1E12CCD70](v172, -1, -1);

        a3 = v358;
      }

      else
      {

        sub_1DEE273A0(a1, type metadata accessor for ZoneVersion);
      }

      sub_1DEE273A0(a3, type metadata accessor for ZoneVersion);
      v51 = v351;
    }

    v20 = v366;

    v174 = v339;

    v175 = sub_1DEF8D4D8();
    v176 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v370 = v178;
      *v177 = 136446466;
      *(v177 + 4) = sub_1DEE12A5C(*(v20 + 528), *(v20 + 536), &v370);
      *(v177 + 12) = 2050;
      *(v177 + 14) = *(v174 + 16);

      _os_log_impl(&dword_1DEE0F000, v175, v176, "(%{public}s) [Send Response] Found mismatched zones (%{public}ld)", v177, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v178);
      MEMORY[0x1E12CCD70](v178, -1, -1);
      MEMORY[0x1E12CCD70](v177, -1, -1);
    }

    else
    {
    }

    v23 = v336;
    v6 = 0;
    v179 = v174 + 64;
    v180 = 1 << *(v174 + 32);
    v181 = -1;
    if (v180 < 64)
    {
      v181 = ~(-1 << v180);
    }

    v182 = v181 & *(v174 + 64);
    a1 = &qword_1ECDE3D18;
    a3 = ((v180 + 63) >> 6);
    v359 = v179;
    if (!v182)
    {
LABEL_50:
      if (a3 <= v6 + 1)
      {
        v184 = (v6 + 1);
      }

      else
      {
        v184 = a3;
      }

      v185 = &v184[-1].isa + 7;
      while (1)
      {
        v183 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v183 >= a3)
        {
          v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
          (*(*(v210 - 8) + 56))(v23, 1, 1, v210);
          v182 = 0;
          v6 = v185;
          goto LABEL_59;
        }

        v182 = *(v179 + 8 * v183);
        ++v6;
        if (v182)
        {
          v6 = v183;
          goto LABEL_58;
        }
      }

LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    while (1)
    {
      v183 = v6;
LABEL_58:
      v186 = __clz(__rbit64(v182));
      v182 &= v182 - 1;
      v187 = v186 | (v183 << 6);
      v188 = *(*(v339 + 48) + 8 * v187);
      v189 = v361;
      sub_1DEEACA70(*(v339 + 56) + *(v362 + 72) * v187, v361, type metadata accessor for ZoneVersion);
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
      v191 = *(v190 + 48);
      *v23 = v188;
      sub_1DEEAB218(v189, v23 + v191, type metadata accessor for ZoneVersion);
      (*(*(v190 - 8) + 56))(v23, 0, 1, v190);

LABEL_59:
      v192 = ObjectType;
      sub_1DEE1BA88(v23, ObjectType, &qword_1ECDE3D10, &qword_1DEF91620);
      v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
      if ((*(*(v193 - 8) + 48))(v192, 1, v193) == 1)
      {
        break;
      }

      v194 = *ObjectType;
      a2 = v20;
      v51 = v356;
      sub_1DEEAB218(ObjectType + *(v193 + 48), v356, type metadata accessor for ZoneVersion);
      v195 = v357;
      sub_1DEEACA70(v51, v357, type metadata accessor for ZoneVersion);

      v196 = sub_1DEF8D4D8();
      v197 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v196, v197))
      {
        LODWORD(v351) = v197;
        v358 = v196;
        v51 = swift_slowAlloc();
        v350 = swift_slowAlloc();
        v368 = v350;
        *v51 = v355;
        *(v51 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v368);
        *(v51 + 6) = 2082;
        v198 = v194[5];
        v370 = v194[4];
        v371 = v198;

        MEMORY[0x1E12CB180](14906, 0xE200000000000000);
        MEMORY[0x1E12CB180](v194[2], v194[3]);

        v199 = sub_1DEE12A5C(v370, v371, &v368);

        *(v51 + 14) = v199;
        *(v51 + 11) = 2082;
        v200 = v348;
        sub_1DEEACA70(v195, v348, type metadata accessor for ZoneVersion);
        v201 = v200;
        v202 = v335;
        sub_1DEEACA70(v201, v335, type metadata accessor for ZoneVersion);
        v203 = v363;
        if ((*v342)(v202, 1, v363) == 1)
        {
          a2 = 0xE500000000000000;
          v204 = 0x7974706D65;
        }

        else
        {
          v205 = v354;
          (*v364)(v354, v202, v203);
          sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
          v204 = sub_1DEF8E2E8();
          a2 = v206;
          (*v353)(v205, v203);
        }

        v179 = v359;
        sub_1DEE273A0(v348, type metadata accessor for ZoneVersion);
        sub_1DEE273A0(v357, type metadata accessor for ZoneVersion);
        v207 = sub_1DEE12A5C(v204, a2, &v368);

        *(v51 + 3) = v207;
        v208 = v358;
        _os_log_impl(&dword_1DEE0F000, v358, v351, "(%{public}s) [Send Response] %{public}s: %{public}s", v51, 0x20u);
        v209 = v350;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v209, -1, -1);
        MEMORY[0x1E12CCD70](v51, -1, -1);

        sub_1DEE273A0(v356, type metadata accessor for ZoneVersion);
        v20 = v366;
        v23 = v336;
      }

      else
      {

        sub_1DEE273A0(v195, type metadata accessor for ZoneVersion);
        sub_1DEE273A0(v51, type metadata accessor for ZoneVersion);
        v20 = a2;
        v179 = v359;
      }

      a1 = &qword_1ECDE3D18;
      if (!v182)
      {
        goto LABEL_50;
      }
    }

    a2 = v20;

    v211 = v338;

    v212 = sub_1DEF8D4D8();
    v213 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v212, v213))
    {
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v370 = v215;
      *v214 = 136446466;
      *(v214 + 4) = sub_1DEE12A5C(*(v20 + 528), *(v20 + 536), &v370);
      *(v214 + 12) = 2050;
      *(v214 + 14) = *(v211 + 16);

      _os_log_impl(&dword_1DEE0F000, v212, v213, "(%{public}s) [Send Response] Sending record versions (%{public}ld)", v214, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v215);
      MEMORY[0x1E12CCD70](v215, -1, -1);
      MEMORY[0x1E12CCD70](v214, -1, -1);
    }

    else
    {
    }

    v216 = v352;
    v217 = v360;
    v218 = *(v211 + 64);
    v359 = v211 + 64;
    v219 = 1 << *(v211 + 32);
    v220 = -1;
    if (v219 < 64)
    {
      v220 = ~(-1 << v219);
    }

    a1 = v220 & v218;
    v358 = ((v219 + 63) >> 6);
    v362 = v341 + 16;

    for (j = 0; ; j = ObjectType)
    {
      v23 = &qword_1DEF91680;
      if (!a1)
      {
        break;
      }

      v20 = j;
      a3 = v363;
LABEL_86:
      v225 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v226 = v225 | (v20 << 6);
      v227 = *(*(v338 + 48) + 8 * v226);
      v228 = v341;
      v229 = v354;
      (*(v341 + 16))(v354, *(v338 + 56) + *(v341 + 72) * v226, a3);
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v231 = *(v230 + 48);
      v232 = v346;
      *v346 = v227;
      (*(v228 + 32))(&v232[v231], v229, a3);
      (*(*(v230 - 8) + 56))(v232, 0, 1, v230);

      v51 = v20;
      v233 = v232;
      v216 = v352;
      v217 = v360;
      a2 = v366;
LABEL_87:
      sub_1DEE1BA88(v233, v216, &qword_1ECDE3D50, &qword_1DEF91668);
      v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v235 = (*(*(v234 - 8) + 48))(v216, 1, v234);
      v236 = v347;
      if (v235 == 1)
      {
        v255 = v338;

        v256 = v341;
        v257 = a3;
        v258 = v329;
        (*(v341 + 16))(v329, v309, v257);
        v259 = v333;
        v260 = (v333 + *(v330 + 32));
        v261 = *v260;
        v262 = v260[1];
        v263 = v321;
        sub_1DEEACA70(v332, v258 + *(v321 + 24), type metadata accessor for DeviceDescriptor);
        v264 = (v258 + v263[5]);
        *v264 = v261;
        v264[1] = v262;
        *(v258 + v263[7]) = v340;
        *(v258 + v263[8]) = v255;
        v265 = v327;
        sub_1DEEACA70(v258, v327, type metadata accessor for ReplicatorMessage.Handshake.Response);
        swift_storeEnumTagMultiPayload();
        v266 = v308;
        sub_1DEEACA70(v265, v308, type metadata accessor for ReplicatorMessage.Handshake);
        swift_storeEnumTagMultiPayload();
        v267 = v328;
        (*(v256 + 56))(v328, 1, 1, v257);
        sub_1DEE4F8C0(v261, v262);
        v268 = sub_1DEE5D178(v259);
        if (v269)
        {
          v270 = v320;
          sub_1DEEACA70(v259, v320, type metadata accessor for PairingRelationship);

          v271 = sub_1DEF8D4D8();
          v272 = sub_1DEF8DC98();

          if (os_log_type_enabled(v271, v272))
          {
            v273 = swift_slowAlloc();
            v274 = swift_slowAlloc();
            v370 = v274;
            *v273 = 136446466;
            *(v273 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v370);
            *(v273 + 12) = 2082;
            sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
            v275 = sub_1DEF8E2E8();
            v277 = v276;
            sub_1DEE273A0(v270, type metadata accessor for PairingRelationship);
            v278 = sub_1DEE12A5C(v275, v277, &v370);

            *(v273 + 14) = v278;
            _os_log_impl(&dword_1DEE0F000, v271, v272, "(%{public}s) Can't resolve protocol version when trying to construct message for: %{public}s", v273, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v274, -1, -1);
            v279 = v273;
            v265 = v327;
            v266 = v308;
            MEMORY[0x1E12CCD70](v279, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v270, type metadata accessor for PairingRelationship);
          }

          v282 = v328;
LABEL_98:
          v283 = v325;
          v284 = v307;
          v285 = v306;
          sub_1DEE171B4(v282, &unk_1ECDE3E80, &unk_1DEF90970);
          v286 = v326;
          (*(v324 + 56))(v326, 1, 1, v283);
          sub_1DEE171B4(v286, &unk_1ECDE4E20, &unk_1DEF95B10);
          sub_1DEE7D6B8(v284, v285);
          sub_1DEE273A0(v266, type metadata accessor for ReplicatorMessage);
          v287 = v265;
        }

        else
        {
          v280 = v326;
          v281 = v305;
          sub_1DEE29904(v266, v268, v267, v326);
          if (v281)
          {

            v282 = v267;
            goto LABEL_98;
          }

          sub_1DEE171B4(v267, &unk_1ECDE3E80, &unk_1DEF90970);
          (*(v324 + 56))(v280, 0, 1, v325);
          sub_1DEEAB218(v280, v236, type metadata accessor for Message);
          if (qword_1ECDE37E8 != -1)
          {
            swift_once();
          }

          v288 = qword_1ECDF60B0;
          v289 = qword_1ECDF60B8;
          v290 = a2[22];
          v367 = a2[23];
          ObjectType = swift_getObjectType();
          v291 = sub_1DEF8D1E8();
          v292 = v319;
          (*(*(v291 - 8) + 56))(v319, 1, 1, v291);
          LOBYTE(v368) = 0;
          v369 = 0;
          v370 = v288;
          v371 = v289;
          v293 = v318;
          sub_1DEEACA70(v309, v318, type metadata accessor for ReplicatorMessage.Handshake.Request);
          v294 = v312;
          sub_1DEEACA70(v333, v312, type metadata accessor for PairingRelationship);
          v295 = v315;
          sub_1DEEACA70(v331, v315, type metadata accessor for SessionManager.Session);
          v296 = (*(v316 + 80) + 24) & ~*(v316 + 80);
          v297 = (v317 + *(v310 + 80) + v296) & ~*(v310 + 80);
          v298 = (v311 + *(v313 + 80) + v297) & ~*(v313 + 80);
          v299 = swift_allocObject();
          *(v299 + 16) = a2;
          sub_1DEEAB218(v293, v299 + v296, type metadata accessor for ReplicatorMessage.Handshake.Request);
          sub_1DEEAB218(v294, v299 + v297, type metadata accessor for PairingRelationship);
          sub_1DEEAB218(v295, v299 + v298, type metadata accessor for SessionManager.Session);

          v300 = v347;
          sub_1DEE7FC18(v347, v292, &v368, v304, &v369, &v370, sub_1DEEAA98C, v299, ObjectType, v367);

          sub_1DEE171B4(v292, &qword_1ECDE4890, &qword_1DEF90990);
          sub_1DEE273A0(v300, type metadata accessor for Message);
          sub_1DEE273A0(v308, type metadata accessor for ReplicatorMessage);
          v287 = v327;
        }

        sub_1DEE273A0(v287, type metadata accessor for ReplicatorMessage.Handshake);
        sub_1DEE273A0(v329, type metadata accessor for ReplicatorMessage.Handshake.Response);
        sub_1DEE273A0(v332, type metadata accessor for DeviceDescriptor);
        sub_1DEE273A0(v331, type metadata accessor for SessionManager.Session);
        sub_1DEE273A0(v333, type metadata accessor for PairingRelationship);
        return;
      }

      ObjectType = v51;
      v237 = *v216;
      (*v364)(v217, v216 + *(v234 + 48), a3);
      v238 = v344;
      (*v362)(v344, v217, a3);

      v6 = sub_1DEF8D4D8();
      v239 = sub_1DEF8DC88();

      if (os_log_type_enabled(v6, v239))
      {
        v240 = swift_slowAlloc();
        v361 = swift_slowAlloc();
        v370 = v361;
        *v240 = v355;
        *(v240 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v370);
        *(v240 + 12) = 2082;

        v241 = Record.ID.description.getter();
        v243 = v242;

        v244 = sub_1DEE12A5C(v241, v243, &v370);

        *(v240 + 14) = v244;
        *(v240 + 22) = 2082;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v245 = sub_1DEF8E2E8();
        v247 = v246;
        v248 = v238;
        v249 = *v353;
        (*v353)(v248, a3);
        v250 = sub_1DEE12A5C(v245, v247, &v370);
        a2 = v366;

        *(v240 + 24) = v250;
        _os_log_impl(&dword_1DEE0F000, v6, v239, "(%{public}s) [Send Response] %{public}s: %{public}s", v240, 0x20u);
        v251 = v361;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v251, -1, -1);
        v252 = v240;
        v216 = v352;
        MEMORY[0x1E12CCD70](v252, -1, -1);

        v217 = v360;
        v249(v360, a3);
      }

      else
      {

        v222 = a3;
        v223 = *v353;
        (*v353)(v238, v222);
        v217 = v360;
        v223(v360, v222);
      }
    }

    if (v358 <= (j + 1))
    {
      v224 = (j + 1);
    }

    else
    {
      v224 = v358;
    }

    v51 = &v224[-1].isa + 7;
    a3 = v363;
    while (1)
    {
      v20 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v20 >= v358)
      {
        v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
        v254 = v346;
        (*(*(v253 - 8) + 56))(v346, 1, 1, v253);
        v233 = v254;
        a1 = 0;
        goto LABEL_87;
      }

      a1 = *(v359 + 8 * v20);
      j = (j + 1);
      if (a1)
      {
        goto LABEL_86;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
  }

  v132 = sub_1DEF8D4D8();
  v133 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v374 = v135;
    *v134 = 136446210;
    *(v134 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v374);
    _os_log_impl(&dword_1DEE0F000, v132, v133, "(%{public}s) [Send Response] Abandoning handshake response because replicator is disabled", v134, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v135);
    MEMORY[0x1E12CCD70](v135, -1, -1);
    MEMORY[0x1E12CCD70](v134, -1, -1);
  }

  sub_1DEE7D6B8(*(&a3->isa + *(v6 + 24)), *(&a3[1].isa + *(v6 + 24)));
}

uint64_t sub_1DEE82BEC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v30 = a1;
  v27 = a5;
  v31 = a2;
  v8 = type metadata accessor for SessionManager.Session();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PairingRelationship();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 + 232);
  sub_1DEEACA70(a4, v18, type metadata accessor for ReplicatorMessage.Handshake.Request);
  sub_1DEEACA70(v27, v14, type metadata accessor for PairingRelationship);
  sub_1DEEACA70(v29, v10, type metadata accessor for SessionManager.Session);
  v19 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v20 = (v17 + *(v12 + 80) + v19) & ~*(v12 + 80);
  v21 = (v13 + *(v28 + 80) + v20) & ~*(v28 + 80);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v30;
  LOBYTE(a4) = v31 & 1;
  *(v22 + 24) = v31 & 1;
  *(v22 + 32) = a3;
  sub_1DEEAB218(v18, v22 + v19, type metadata accessor for ReplicatorMessage.Handshake.Request);
  sub_1DEEAB218(v14, v22 + v20, type metadata accessor for PairingRelationship);
  sub_1DEEAB218(v10, v22 + v21, type metadata accessor for SessionManager.Session);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1DEEAA9B8;
  *(v24 + 24) = v22;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_557;
  v25 = _Block_copy(aBlock);
  sub_1DEE39150(v23, a4);

  dispatch_sync(v32, v25);
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE82FCC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for PairingRelationship();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v19 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v75 - v25;
  if (a2)
  {
    v80 = v24;
    v83[0] = a1;
    v27 = a1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    if (swift_dynamicCast() && v86 == 2)
    {
      v79 = v28;
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v29 = sub_1DEF8D508();
      __swift_project_value_buffer(v29, qword_1ECDF6028);
      sub_1DEEACA70(a4, v26, type metadata accessor for ReplicatorMessage.Handshake.Request);
      sub_1DEEACA70(a5, v18, type metadata accessor for PairingRelationship);
      sub_1DEE39150(a1, 1);

      v30 = sub_1DEF8D4D8();
      v31 = sub_1DEF8DCB8();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v78 = a4;
        v33 = v32;
        v77 = swift_slowAlloc();
        v82 = v77;
        *v33 = 136446978;
        *(v33 + 4) = sub_1DEE12A5C(*(a3 + 528), *(a3 + 536), &v82);
        *(v33 + 12) = 2082;
        sub_1DEF8D3F8();
        LODWORD(v76) = v31;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v75 = v30;
        v34 = sub_1DEF8E2E8();
        v35 = a6;
        v37 = v36;
        sub_1DEE273A0(v26, type metadata accessor for ReplicatorMessage.Handshake.Request);
        v38 = sub_1DEE12A5C(v34, v37, &v82);
        a6 = v35;

        *(v33 + 14) = v38;
        *(v33 + 22) = 2082;
        v39 = sub_1DEF8E2E8();
        v41 = v40;
        sub_1DEE273A0(v18, type metadata accessor for PairingRelationship);
        v42 = sub_1DEE12A5C(v39, v41, &v82);

        *(v33 + 24) = v42;
        *(v33 + 32) = 2082;
        v81 = a1;
        v43 = a1;
        v44 = sub_1DEF8D988();
        v46 = sub_1DEE12A5C(v44, v45, &v82);

        *(v33 + 34) = v46;
        v47 = v75;
        _os_log_impl(&dword_1DEE0F000, v75, v76, "(%{public}s) Handshake response for session %{public}s with relationship %{public}s blocked by allow list: %{public}s.", v33, 0x2Au);
        v48 = v77;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v48, -1, -1);
        v49 = v33;
        a4 = v78;
        MEMORY[0x1E12CCD70](v49, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v18, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v26, type metadata accessor for ReplicatorMessage.Handshake.Request);
      }

      sub_1DEE7F920(a6);
      sub_1DEE7D6B8(*(a4 + *(v80 + 24)), *(a4 + *(v80 + 24) + 8));
    }

    else
    {

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v50 = sub_1DEF8D508();
      __swift_project_value_buffer(v50, qword_1ECDF6028);
      sub_1DEEACA70(a4, v22, type metadata accessor for ReplicatorMessage.Handshake.Request);
      sub_1DEEACA70(a5, v15, type metadata accessor for PairingRelationship);
      sub_1DEE39150(a1, 1);

      v51 = sub_1DEF8D4D8();
      v52 = sub_1DEF8DC98();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v78 = a4;
        v54 = v53;
        v76 = swift_slowAlloc();
        v83[0] = v76;
        *v54 = 136446978;
        *(v54 + 4) = sub_1DEE12A5C(*(a3 + 528), *(a3 + 536), v83);
        *(v54 + 12) = 2082;
        sub_1DEF8D3F8();
        v77 = a6;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v79 = v28;
        LODWORD(v75) = v52;
        v55 = sub_1DEF8E2E8();
        v57 = v56;
        sub_1DEE273A0(v22, type metadata accessor for ReplicatorMessage.Handshake.Request);
        v58 = sub_1DEE12A5C(v55, v57, v83);

        *(v54 + 14) = v58;
        *(v54 + 22) = 2082;
        a6 = v77;
        v59 = sub_1DEF8E2E8();
        v61 = v60;
        sub_1DEE273A0(v15, type metadata accessor for PairingRelationship);
        v62 = sub_1DEE12A5C(v59, v61, v83);

        *(v54 + 24) = v62;
        *(v54 + 32) = 2082;
        v82 = a1;
        v63 = a1;
        v64 = sub_1DEF8D988();
        v66 = sub_1DEE12A5C(v64, v65, v83);

        *(v54 + 34) = v66;
        _os_log_impl(&dword_1DEE0F000, v51, v75, "(%{public}s) Error sending handshake response for session %{public}s with relationship %{public}s: %{public}s", v54, 0x2Au);
        v67 = v76;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v67, -1, -1);
        v68 = v54;
        a4 = v78;
        MEMORY[0x1E12CCD70](v68, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v15, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v22, type metadata accessor for ReplicatorMessage.Handshake.Request);
      }

      sub_1DEE7F920(a6);
      v69 = a4 + *(v80 + 24);
      v70 = *(v69 + 8);
      v71 = *(v69 + 160);
      v72 = *(v69 + 168);
      v73 = *(v69 + 48);
      v83[0] = *v69;
      v83[1] = v70;
      v83[2] = v71;
      v83[3] = v72;
      v84 = v73;
      v85 = *(v69 + 32);
      v74 = *(a6 + *(type metadata accessor for SessionManager.Session() + 36));

      sub_1DEE8381C(v83, v74);
    }
  }
}

uint64_t sub_1DEE8381C(uint64_t *a1, unint64_t a2)
{
  v24 = a2;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v14 = *(a1 + 32);
  v15 = a1[6];
  v22 = a1[5];
  v23 = v15;
  v16 = v2[29];
  *v9 = v16;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v17 = v16;
  LOBYTE(v16) = sub_1DEF8D7B8();
  result = (*(v5 + 8))(v9, v4);
  if (v16)
  {
    v19 = v2[51];
    v20 = v2[52];
    __swift_project_boxed_opaque_existential_1(v2 + 48, v19);
    v27[0] = v11;
    v27[1] = v10;
    v27[2] = v13;
    v27[3] = v12;
    v28 = v14;
    v29 = v22;
    v30 = v23;
    if (v24 <= 8)
    {
      v25 = v24 + 1;
      v21 = 1;
    }

    else
    {
      v25 = 0;
      v21 = 2;
    }

    v26 = v21;
    return (*(v20 + 16))(v27, &v25, v19, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE839DC(uint64_t a1, void *a2, uint64_t a3)
{
  v364 = a3;
  *&v385 = a1;
  v369 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v332 = *(v369 - 1);
  v4 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v369);
  v333 = v5;
  v334 = &v321 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v337 = &v321 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v352 = &v321 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v345 = &v321 - v14;
  v344 = type metadata accessor for Message();
  v343 = *(v344 - 8);
  v15 = *(v343 + 64);
  MEMORY[0x1EEE9AC00](v344);
  v17 = (&v321 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v342 = type metadata accessor for ReplicatorMessage(0);
  v18 = *(*(v342 - 8) + 64);
  MEMORY[0x1EEE9AC00](v342);
  v20 = &v321 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v341 = type metadata accessor for ReplicatorMessage.Handshake(0);
  v21 = *(*(v341 - 8) + 64);
  MEMORY[0x1EEE9AC00](v341);
  v351 = &v321 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  v329 = *(v340 - 8);
  v23 = *(v329 + 64);
  MEMORY[0x1EEE9AC00](v340);
  v331 = &v321 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v354 = &v321 - v26;
  v349 = sub_1DEF8D698();
  v350 = *(v349 - 8);
  v27 = *(v350 + 64);
  MEMORY[0x1EEE9AC00](v349);
  v348 = &v321 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = sub_1DEF8D6D8();
  v353 = *(v347 - 8);
  v29 = *(v353 + 64);
  MEMORY[0x1EEE9AC00](v347);
  v346 = &v321 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D50, &qword_1DEF91668);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v376 = &v321 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v374 = (&v321 - v35);
  v36 = type metadata accessor for ZoneVersion();
  v371 = *(v36 - 8);
  v37 = *(v371 + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v360 = &v321 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  ObjectType = &v321 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v383 = (&v321 - v42);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v321 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v370 = &v321 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D10, &qword_1DEF91620);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v379 = &v321 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v378 = (&v321 - v52);
  v355 = type metadata accessor for PairingRelationship();
  v326 = *(v355 - 8);
  v53 = *(v326 + 64);
  MEMORY[0x1EEE9AC00](v355);
  v328 = &v321 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v338 = &v321 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v368 = &v321 - v58;
  v336 = v59;
  MEMORY[0x1EEE9AC00](v60);
  v357 = &v321 - v61;
  v386 = sub_1DEF8D3F8();
  v372 = *(v386 - 1);
  v62 = *(v372 + 64);
  MEMORY[0x1EEE9AC00](v386);
  v373 = &v321 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v375 = (&v321 - v64);
  MEMORY[0x1EEE9AC00](v65);
  v380 = &v321 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  isEscapingClosureAtFileLocation = &v321 - v69;
  v71 = type metadata accessor for SessionManager.Session();
  v358 = *(v71 - 8);
  v72 = *(v358 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v327 = &v321 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = v73;
  MEMORY[0x1EEE9AC00](v74);
  v356 = &v321 - v75;
  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_95;
  }

LABEL_2:
  v76 = sub_1DEF8D508();
  v77 = __swift_project_value_buffer(v76, qword_1ECDF6028);

  v388 = v77;
  v78 = sub_1DEF8D4D8();
  v79 = sub_1DEF8DCB8();

  v80 = os_log_type_enabled(v78, v79);
  v387 = a2;
  v362 = v45;
  v339 = v17;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    aBlock = v82;
    *v81 = 136446210;
    *(v81 + 4) = sub_1DEE12A5C(a2[66], a2[67], &aBlock);
    _os_log_impl(&dword_1DEE0F000, v78, v79, "(%{public}s) Sending handshake complete", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x1E12CCD70](v82, -1, -1);
    MEMORY[0x1E12CCD70](v81, -1, -1);
  }

  v84 = v385;
  if (v385)
  {
    v85 = v387;

    v86 = v84;
    v87 = sub_1DEF8D4D8();
    v88 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      aBlock = v91;
      *v89 = 136446466;
      *(v89 + 4) = sub_1DEE12A5C(v85[66], v85[67], &aBlock);
      *(v89 + 12) = 2114;
      v92 = v84;
      v93 = _swift_stdlib_bridgeErrorToNSError();
      *(v89 + 14) = v93;
      *v90 = v93;
      _os_log_impl(&dword_1DEE0F000, v87, v88, "(%{public}s) Abandoning handshake complete because prerequisites are not met: %{public}@", v89, 0x16u);
      sub_1DEE171B4(v90, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v90, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x1E12CCD70](v91, -1, -1);
      MEMORY[0x1E12CCD70](v89, -1, -1);
    }

    sub_1DEE7D6B8(*(v364 + *(v369 + 6)), *(v364 + *(v369 + 6) + 8));

    return;
  }

  v324 = v20;
  v94 = v387;
  v95 = v387[68];
  v96 = *(v95 + 32);
  MEMORY[0x1EEE9AC00](v83);
  v319 = v95;
  v320 = v364;

  sub_1DEF8DD18();

  if ((*(v358 + 48))(isEscapingClosureAtFileLocation, 1, v71) == 1)
  {
    sub_1DEE171B4(isEscapingClosureAtFileLocation, &qword_1ECDE3D08, &unk_1DEF95E50);

    v97 = sub_1DEF8D4D8();
    v98 = sub_1DEF8DC98();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      aBlock = v100;
      *v99 = 136446210;
      *(v99 + 4) = sub_1DEE12A5C(v94[66], v94[67], &aBlock);
      _os_log_impl(&dword_1DEE0F000, v97, v98, "(%{public}s) No session established", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v100);
      MEMORY[0x1E12CCD70](v100, -1, -1);
      MEMORY[0x1E12CCD70](v99, -1, -1);
    }

    sub_1DEE7D6B8(*(v364 + *(v369 + 6)), *(v364 + *(v369 + 6) + 8));
    return;
  }

  v101 = v356;
  sub_1DEEAB218(isEscapingClosureAtFileLocation, v356, type metadata accessor for SessionManager.Session);
  v17 = v94;
  if (*(v94 + 624) != 1)
  {

    v124 = sub_1DEF8D4D8();
    v125 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      aBlock = v127;
      *v126 = 136446210;
      *(v126 + 4) = sub_1DEE12A5C(v94[66], v94[67], &aBlock);
      _os_log_impl(&dword_1DEE0F000, v124, v125, "(%{public}s) Abandoning handshake request because replicator is disabled", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v127);
      MEMORY[0x1E12CCD70](v127, -1, -1);
      MEMORY[0x1E12CCD70](v126, -1, -1);
    }

    sub_1DEE7D6B8(*(v364 + *(v369 + 6)), *(v364 + *(v369 + 6) + 8));
    v128 = type metadata accessor for SessionManager.Session;
    v129 = v101;
    goto LABEL_106;
  }

  v321 = 0;
  v102 = v94[68];
  isa = v102[4].isa;
  v104 = v372;
  v105 = *(v372 + 16);
  v106 = v380;
  v107 = v386;
  v382 = v372 + 16;
  v381 = v105;
  (v105)(v380, v101, v386);
  v108 = (*(v104 + 80) + 24) & ~*(v104 + 80);
  v109 = swift_allocObject();
  *(v109 + 16) = v102;
  v110 = *(v104 + 32);
  *&v385 = v104 + 32;
  v384 = v110;
  v110((v109 + v108), v106, v107);
  *(v62 + v108 + v109) = 1;
  v111 = swift_allocObject();
  v111[2] = sub_1DEEACDAC;
  v111[3] = v109;
  v394 = sub_1DEE46D40;
  v395 = v111;
  aBlock = MEMORY[0x1E69E9820];
  v391 = 1107296256;
  v392 = sub_1DEE134F4;
  v393 = &block_descriptor_595;
  v112 = _Block_copy(&aBlock);
  swift_retain_n();

  dispatch_sync(isa, v112);
  _Block_release(v112);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_97;
  }

  v113 = v369;
  v114 = *(v369 + 6);
  v115 = v364;
  v116 = (v364 + *(v369 + 5));
  v117 = v116[1];
  aBlock = *v116;
  v391 = v117;
  sub_1DEE4F8C0(aBlock, v117);
  v118 = v357;
  sub_1DEE5F828((v115 + v114), &aBlock, 0, 1, v357);
  sub_1DEE4F8D4(aBlock, v391);
  v119 = *(v115 + *(v113 + 7));
  v322 = (v118 + *(v355 + 20));
  v120 = sub_1DEEA9D88(v119, v322);
  swift_beginAccess();
  sub_1DEE29594((v17 + 24), &aBlock);
  v121 = v393;
  v108 = v394;
  __swift_project_boxed_opaque_existential_1(&aBlock, v393);
  v122 = MetadataStoring.mismatchedZoneVersions(for:remoteZoneVersions:)(v118, v120, v121, *(v108 + 8));

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v102 = *(v122 + 16);
  v45 = v362;
  v363 = v122;
  if (v102)
  {
    v323 = sub_1DEF30800(v102, 0);
    v123 = sub_1DEF2DF64(&aBlock, (v323 + 32), v102, v122);
    isEscapingClosureAtFileLocation = aBlock;
    v111 = v391;
    v112 = v392;
    v17 = v394;

    sub_1DEE2774C();
    if (v123 != v102)
    {
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v17 = v387;
  }

  else
  {
    v323 = MEMORY[0x1E69E7CC0];
  }

  sub_1DEE29594((v17 + 24), &aBlock);
  v131 = v393;
  v130 = v394;
  __swift_project_boxed_opaque_existential_1(&aBlock, v393);

  v133 = sub_1DEE4FCFC(v132);
  v361 = MetadataStoring.recordVersionsWithProtocolAppropriateIDs(for:zoneIDs:)(v118, v133, v131, *(v130 + 1));

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v134 = *(v364 + *(v369 + 8));
  swift_beginAccess();
  v111 = v17[84];
  isEscapingClosureAtFileLocation = v111[2];
  v135 = MEMORY[0x1E69E7CC0];
  if (isEscapingClosureAtFileLocation)
  {
    v108 = v134;
    v136 = sub_1DEF2B2A4(v111[2], 0);
    v112 = sub_1DEF2DE0C(&aBlock, v136 + 4, isEscapingClosureAtFileLocation, v111);
    v17 = v391;
    v102 = v393;
    LOBYTE(v123) = v394;

    sub_1DEE2774C();
    if (v112 != isEscapingClosureAtFileLocation)
    {
      goto LABEL_111;
    }

    v17 = v387;
    v45 = v362;
    v135 = v136;
  }

  isEscapingClosureAtFileLocation = v17[27];
  v137 = v17[28];
  v138 = __swift_project_boxed_opaque_existential_1(v17 + 24, isEscapingClosureAtFileLocation);
  v369 = &v321;
  v139 = *(isEscapingClosureAtFileLocation - 8);
  v140 = *(v139 + 64);
  v141 = MEMORY[0x1EEE9AC00](v138);
  v143 = &v321 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v139 + 16))(v143, v141);
  swift_beginAccess();
  v144 = v17[30];

  v146 = sub_1DEF653EC(v145);

  v147 = v357;
  v325 = sub_1DEED02EC(v357, v134, v323, v135, v143, v146, v148, isEscapingClosureAtFileLocation, *(v137 + 8));

  (*(v139 + 8))(v143, isEscapingClosureAtFileLocation);
  v149 = v368;
  sub_1DEEACA70(v147, v368, type metadata accessor for PairingRelationship);

  v150 = sub_1DEF8D4D8();
  v151 = sub_1DEF8DCB8();

  v152 = os_log_type_enabled(v150, v151);
  a2 = MEMORY[0x1E69E7CA0];
  if (v152)
  {
    isEscapingClosureAtFileLocation = swift_slowAlloc();
    v153 = swift_slowAlloc();
    aBlock = v153;
    *isEscapingClosureAtFileLocation = 136446466;
    *(isEscapingClosureAtFileLocation + 4) = sub_1DEE12A5C(v17[66], v17[67], &aBlock);
    *(isEscapingClosureAtFileLocation + 12) = 2082;
    v154 = PairingRelationship.description.getter();
    v156 = v155;
    sub_1DEE273A0(v149, type metadata accessor for PairingRelationship);
    v157 = sub_1DEE12A5C(v154, v156, &aBlock);

    *(isEscapingClosureAtFileLocation + 14) = v157;
    _os_log_impl(&dword_1DEE0F000, v150, v151, "(%{public}s) [Send Complete] Found pairing relationship: %{public}s", isEscapingClosureAtFileLocation, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v153, -1, -1);
    MEMORY[0x1E12CCD70](isEscapingClosureAtFileLocation, -1, -1);
  }

  else
  {

    sub_1DEE273A0(v149, type metadata accessor for PairingRelationship);
  }

  v158 = v363;

  v159 = sub_1DEF8D4D8();
  v160 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v159, v160))
  {
    isEscapingClosureAtFileLocation = swift_slowAlloc();
    v161 = swift_slowAlloc();
    aBlock = v161;
    *isEscapingClosureAtFileLocation = 136446466;
    *(isEscapingClosureAtFileLocation + 4) = sub_1DEE12A5C(v17[66], v17[67], &aBlock);
    *(isEscapingClosureAtFileLocation + 12) = 2050;
    *(isEscapingClosureAtFileLocation + 14) = *(v158 + 16);

    _os_log_impl(&dword_1DEE0F000, v159, v160, "(%{public}s) [Send Complete] Found mismatched zones (%{public}ld:", isEscapingClosureAtFileLocation, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v161);
    MEMORY[0x1E12CCD70](v161, -1, -1);
    MEMORY[0x1E12CCD70](isEscapingClosureAtFileLocation, -1, -1);
  }

  else
  {
  }

  v163 = v379;
  v20 = 0;
  v164 = v158 + 64;
  v165 = 1 << *(v158 + 32);
  v166 = -1;
  if (v165 < 64)
  {
    v166 = ~(-1 << v165);
  }

  v71 = v166 & *(v158 + 64);
  v62 = ((v165 + 63) >> 6);
  v359 = (v372 + 48);
  v369 = (v372 + 8);
  *&v162 = 136446722;
  v365 = v162;
  v368 = v164;
  while (2)
  {
    if (v71)
    {
      v167 = v45;
      v168 = v20;
      goto LABEL_47;
    }

    if (v62 <= (v20 + 1))
    {
      v169 = (v20 + 1);
    }

    else
    {
      v169 = v62;
    }

    v170 = v169 - 1;
    do
    {
      v168 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        swift_once();
        goto LABEL_2;
      }

      if (v168 >= v62)
      {
        v167 = v45;
        v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
        (*(*(v193 - 8) + 56))(v163, 1, 1, v193);
        v71 = 0;
        v20 = v170;
        goto LABEL_48;
      }

      v71 = *(v164 + 8 * v168);
      ++v20;
    }

    while (!v71);
    v167 = v45;
    v20 = v168;
LABEL_47:
    v171 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v172 = v171 | (v168 << 6);
    v173 = *(*(v363 + 48) + 8 * v172);
    v174 = v370;
    sub_1DEEACA70(*(v363 + 56) + *(v371 + 72) * v172, v370, type metadata accessor for ZoneVersion);
    v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
    v176 = *(v175 + 48);
    *v163 = v173;
    sub_1DEEAB218(v174, v163 + v176, type metadata accessor for ZoneVersion);
    (*(*(v175 - 8) + 56))(v163, 0, 1, v175);

LABEL_48:
    v177 = v378;
    sub_1DEE1BA88(v163, v378, &qword_1ECDE3D10, &qword_1DEF91620);
    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
    if ((*(*(v178 - 8) + 48))(v177, 1, v178) != 1)
    {
      isEscapingClosureAtFileLocation = *v177;
      v45 = v167;
      sub_1DEEAB218(v177 + *(v178 + 48), v167, type metadata accessor for ZoneVersion);
      v179 = v167;
      a2 = v383;
      sub_1DEEACA70(v179, v383, type metadata accessor for ZoneVersion);
      v17 = v387;

      v180 = sub_1DEF8D4D8();
      v181 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v180, v181))
      {
        v367 = v181;
        v182 = swift_slowAlloc();
        v366 = swift_slowAlloc();
        *&v389[1] = v366;
        *v182 = v365;
        *(v182 + 4) = sub_1DEE12A5C(v17[66], v17[67], &v389[1]);
        *(v182 + 12) = 2082;
        v183 = *(isEscapingClosureAtFileLocation + 40);
        aBlock = *(isEscapingClosureAtFileLocation + 32);
        v391 = v183;

        MEMORY[0x1E12CB180](14906, 0xE200000000000000);
        MEMORY[0x1E12CB180](*(isEscapingClosureAtFileLocation + 16), *(isEscapingClosureAtFileLocation + 24));

        v184 = sub_1DEE12A5C(aBlock, v391, &v389[1]);

        *(v182 + 14) = v184;
        *(v182 + 22) = 2082;
        v185 = a2;
        v186 = ObjectType;
        sub_1DEEACA70(v185, ObjectType, type metadata accessor for ZoneVersion);
        v187 = v360;
        sub_1DEEACA70(v186, v360, type metadata accessor for ZoneVersion);
        a2 = v386;
        if ((*v359)(v187, 1, v386) == 1)
        {
          v188 = 0xE500000000000000;
          v189 = 0x7974706D65;
        }

        else
        {
          v190 = v380;
          v384(v380, v187, a2);
          sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
          v189 = sub_1DEF8E2E8();
          v188 = v191;
          (*v369)(v190, a2);
        }

        sub_1DEE273A0(ObjectType, type metadata accessor for ZoneVersion);
        sub_1DEE273A0(v383, type metadata accessor for ZoneVersion);
        v192 = sub_1DEE12A5C(v189, v188, &v389[1]);

        *(v182 + 24) = v192;
        _os_log_impl(&dword_1DEE0F000, v180, v367, "(%{public}s) [Send Complete] %{public}s: %{public}s", v182, 0x20u);
        v17 = v366;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v17, -1, -1);
        MEMORY[0x1E12CCD70](v182, -1, -1);

        v45 = v362;
      }

      else
      {

        sub_1DEE273A0(a2, type metadata accessor for ZoneVersion);
      }

      sub_1DEE273A0(v45, type metadata accessor for ZoneVersion);
      v163 = v379;
      v164 = v368;
      continue;
    }

    break;
  }

  v17 = v387;

  v194 = v361;

  v195 = sub_1DEF8D4D8();
  v196 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v195, v196))
  {
    v197 = swift_slowAlloc();
    v198 = swift_slowAlloc();
    aBlock = v198;
    *v197 = 136446466;
    *(v197 + 4) = sub_1DEE12A5C(v17[66], v17[67], &aBlock);
    *(v197 + 12) = 2050;
    *(v197 + 14) = *(v194 + 16);

    _os_log_impl(&dword_1DEE0F000, v195, v196, "(%{public}s) [Send Complete] Sending record versions (%{public}ld:", v197, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v198);
    MEMORY[0x1E12CCD70](v198, -1, -1);
    MEMORY[0x1E12CCD70](v197, -1, -1);
  }

  else
  {
  }

  v20 = v386;
  a2 = v376;
  v62 = v375;
  v199 = *(v194 + 64);
  v378 = (v194 + 64);
  v200 = 1 << *(v194 + 32);
  v201 = -1;
  if (v200 < 64)
  {
    v201 = ~(-1 << v200);
  }

  isEscapingClosureAtFileLocation = v201 & v199;
  ObjectType = (v200 + 63) >> 6;

  v202 = 0;
  while (1)
  {
    v111 = &qword_1DEF91680;
    if (isEscapingClosureAtFileLocation)
    {
      v71 = v202;
LABEL_72:
      v205 = __clz(__rbit64(isEscapingClosureAtFileLocation));
      isEscapingClosureAtFileLocation &= isEscapingClosureAtFileLocation - 1;
      v206 = v205 | (v71 << 6);
      v207 = *(*(v361 + 48) + 8 * v206);
      v208 = v380;
      (v381)(v380, *(v361 + 56) + *(v372 + 72) * v206, v20);
      v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v210 = *(v209 + 48);
      *a2 = v207;
      v384(a2 + v210, v208, v20);
      v211 = *(*(v209 - 8) + 56);
      v212 = v209;
      v111 = &qword_1DEF91680;
      v211(a2, 0, 1, v212);

      v45 = v71;
    }

    else
    {
      v204 = ObjectType <= v202 + 1 ? v202 + 1 : ObjectType;
      v45 = (v204 - 1);
      while (1)
      {
        v71 = v202 + 1;
        if (__OFADD__(v202, 1))
        {
          goto LABEL_94;
        }

        if (v71 >= ObjectType)
        {
          break;
        }

        isEscapingClosureAtFileLocation = v378[v71];
        ++v202;
        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_72;
        }
      }

      v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      (*(*(v232 - 8) + 56))(a2, 1, 1, v232);
      isEscapingClosureAtFileLocation = 0;
    }

    v213 = a2;
    v214 = v374;
    sub_1DEE1BA88(v213, v374, &qword_1ECDE3D50, &qword_1DEF91668);
    v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
    v216 = (*(*(v215 - 8) + 48))(v214, 1, v215);
    v217 = v373;
    if (v216 == 1)
    {
      break;
    }

    v383 = v45;
    v218 = *v214;
    v384(v62, v214 + *(v215 + 48), v20);
    (v381)(v217, v62, v20);

    v219 = sub_1DEF8D4D8();
    v220 = sub_1DEF8DC88();

    if (os_log_type_enabled(v219, v220))
    {
      v221 = v217;
      v222 = swift_slowAlloc();
      v379 = swift_slowAlloc();
      aBlock = v379;
      *v222 = v365;
      *(v222 + 4) = sub_1DEE12A5C(v17[66], v17[67], &aBlock);
      *(v222 + 12) = 2082;

      v223 = Record.ID.description.getter();
      v225 = v224;

      v226 = sub_1DEE12A5C(v223, v225, &aBlock);

      *(v222 + 14) = v226;
      *(v222 + 22) = 2082;
      sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
      v227 = sub_1DEF8E2E8();
      v229 = v228;
      v203 = *v369;
      (*v369)(v221, v386);
      v230 = sub_1DEE12A5C(v227, v229, &aBlock);
      v17 = v387;

      *(v222 + 24) = v230;
      _os_log_impl(&dword_1DEE0F000, v219, v220, "(%{public}s) [Send Complete] %{public}s: %{public}s", v222, 0x20u);
      v231 = v379;
      swift_arrayDestroy();
      v20 = v386;
      MEMORY[0x1E12CCD70](v231, -1, -1);
      MEMORY[0x1E12CCD70](v222, -1, -1);
    }

    else
    {

      v203 = *v369;
      (*v369)(v217, v20);
    }

    v62 = v375;
    v203(v375, v20);
    v202 = v383;
    a2 = v376;
  }

  v112 = v325;

  v102 = sub_1DEF8D4D8();
  LOBYTE(v123) = sub_1DEF8DCB8();

  v108 = v112 >> 62;
  if (!os_log_type_enabled(v102, v123))
  {

    goto LABEL_82;
  }

  isEscapingClosureAtFileLocation = swift_slowAlloc();
  v111 = swift_slowAlloc();
  aBlock = v111;
  *isEscapingClosureAtFileLocation = 136446466;
  *(isEscapingClosureAtFileLocation + 4) = sub_1DEE12A5C(v17[66], v17[67], &aBlock);
  *(isEscapingClosureAtFileLocation + 12) = 2050;
  if (v108)
  {
    goto LABEL_113;
  }

  for (i = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DEF8DE68())
  {
    *(isEscapingClosureAtFileLocation + 14) = i;

    _os_log_impl(&dword_1DEE0F000, v102, v123, "(%{public}s) [Send Complete] Found mismatched records (%{public}ld)", isEscapingClosureAtFileLocation, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v111);
    MEMORY[0x1E12CCD70](v111, -1, -1);
    MEMORY[0x1E12CCD70](isEscapingClosureAtFileLocation, -1, -1);

LABEL_82:
    if (v108)
    {
LABEL_97:
      v123 = sub_1DEF8DE68();
      if (!v123)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v123 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v123)
      {
        goto LABEL_98;
      }
    }

    if (v123 >= 1)
    {
      break;
    }

LABEL_112:
    __break(1u);
LABEL_113:
    ;
  }

  v235 = 0;
  v236 = v112 & 0xC000000000000001;
  *&v234 = 136446466;
  v385 = v234;
  do
  {
    if (v236)
    {
      MEMORY[0x1E12CB6E0](v235, v112);
    }

    else
    {
      v244 = *(v112 + 8 * v235 + 32);
    }

    v245 = sub_1DEF8D4D8();
    v246 = sub_1DEF8DC88();

    if (os_log_type_enabled(v245, v246))
    {
      v237 = swift_slowAlloc();
      v238 = swift_slowAlloc();
      aBlock = v238;
      *v237 = v385;
      *(v237 + 4) = sub_1DEE12A5C(v17[66], v17[67], &aBlock);
      *(v237 + 12) = 2082;

      v239 = Record.ID.description.getter();
      v241 = v240;

      v242 = sub_1DEE12A5C(v239, v241, &aBlock);
      v17 = v387;

      *(v237 + 14) = v242;
      _os_log_impl(&dword_1DEE0F000, v245, v246, "(%{public}s) [Send Complete] %{public}s", v237, 0x16u);
      swift_arrayDestroy();
      v243 = v238;
      v112 = v325;
      MEMORY[0x1E12CCD70](v243, -1, -1);
      MEMORY[0x1E12CCD70](v237, -1, -1);
    }

    else
    {
    }

    ++v235;
  }

  while (v123 != v235);
LABEL_98:
  v247 = v112;
  v248 = v364;
  sub_1DEE79004(v247, v364);

  sub_1DEE7D6B8(*v322, v322[1]);
  sub_1DEE53BFC();
  v249 = v17[29];
  v394 = sub_1DEEACDB0;
  v395 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v391 = 1107296256;
  v392 = sub_1DEE3F0C0;
  v393 = &block_descriptor_598;
  v250 = _Block_copy(&aBlock);

  v251 = v346;
  sub_1DEF8D6B8();
  *&v389[1] = MEMORY[0x1E69E7CC0];
  v252 = sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  v254 = sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  v255 = v348;
  v383 = v253;
  v380 = v254;
  v256 = v349;
  v384 = v252;
  sub_1DEF8DE08();
  *&v385 = v249;
  MEMORY[0x1E12CB4D0](0, v251, v255, v250);
  _Block_release(v250);
  v257 = v350 + 8;
  v379 = *(v350 + 8);
  (v379)(v255, v256);
  v258 = *(v353 + 8);
  v353 += 8;
  v378 = v258;
  (v258)(v251, v347);

  MEMORY[0x1EEE9AC00](v259);
  v260 = v357;
  v319 = v357;
  v261 = v321;
  v262 = sub_1DEE78E38(sub_1DEEAACEC, (&v321 - 4), v323);

  v263 = v354;
  v264 = v386;
  (v381)(v354, v248, v386);
  v265 = (v260 + *(v355 + 32));
  v266 = *v265;
  v267 = v265[1];
  v268 = v340;
  v269 = (v263 + *(v340 + 20));
  *v269 = v266;
  v269[1] = v267;
  *(v263 + *(v268 + 24)) = v262;
  *(v263 + *(v268 + 28)) = v361;
  v270 = v351;
  sub_1DEEACA70(v263, v351, type metadata accessor for ReplicatorMessage.Handshake.Complete);
  swift_storeEnumTagMultiPayload();
  v271 = v324;
  sub_1DEEACA70(v270, v324, type metadata accessor for ReplicatorMessage.Handshake);
  swift_storeEnumTagMultiPayload();
  v272 = v352;
  (*(v372 + 56))(v352, 1, 1, v264);
  v273 = v266;
  v274 = v387;
  sub_1DEE4F8C0(v273, v267);
  v275 = sub_1DEE5D178(v260);
  if (v276)
  {
    v277 = v338;
    sub_1DEEACA70(v260, v338, type metadata accessor for PairingRelationship);

    v278 = sub_1DEF8D4D8();
    v279 = sub_1DEF8DC98();

    v280 = os_log_type_enabled(v278, v279);
    v281 = v345;
    if (v280)
    {
      v282 = swift_slowAlloc();
      v283 = swift_slowAlloc();
      aBlock = v283;
      *v282 = 136446466;
      *(v282 + 4) = sub_1DEE12A5C(v274[66], v274[67], &aBlock);
      *(v282 + 12) = 2082;
      sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
      v284 = sub_1DEF8E2E8();
      v285 = v277;
      v286 = v284;
      v288 = v287;
      sub_1DEE273A0(v285, type metadata accessor for PairingRelationship);
      v289 = sub_1DEE12A5C(v286, v288, &aBlock);

      *(v282 + 14) = v289;
      _os_log_impl(&dword_1DEE0F000, v278, v279, "(%{public}s) Can't resolve protocol version when trying to construct message for: %{public}s", v282, 0x16u);
      swift_arrayDestroy();
      v290 = v283;
      v270 = v351;
      MEMORY[0x1E12CCD70](v290, -1, -1);
      MEMORY[0x1E12CCD70](v282, -1, -1);
    }

    else
    {

      sub_1DEE273A0(v277, type metadata accessor for PairingRelationship);
    }

    v292 = v324;
    v293 = v344;
    v294 = v343;
    v291 = v352;
LABEL_105:
    sub_1DEE171B4(v291, &unk_1ECDE3E80, &unk_1DEF90970);
    sub_1DEE273A0(v292, type metadata accessor for ReplicatorMessage);
    sub_1DEE273A0(v270, type metadata accessor for ReplicatorMessage.Handshake);
    sub_1DEE273A0(v354, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    sub_1DEE273A0(v356, type metadata accessor for SessionManager.Session);
    (*(v294 + 56))(v281, 1, 1, v293);
    sub_1DEE171B4(v281, &unk_1ECDE4E20, &unk_1DEF95B10);
    v128 = type metadata accessor for PairingRelationship;
    v129 = v260;
  }

  else
  {
    v281 = v345;
    sub_1DEE29904(v271, v275, v272, v345);
    if (v261)
    {

      v291 = v272;
      v292 = v324;
      v260 = v357;
      v293 = v344;
      v294 = v343;
      goto LABEL_105;
    }

    v350 = v257;
    sub_1DEE171B4(v272, &unk_1ECDE3E80, &unk_1DEF90970);
    (*(v343 + 56))(v281, 0, 1, v344);
    sub_1DEEAB218(v281, v339, type metadata accessor for Message);
    if (qword_1ECDE37E8 != -1)
    {
      swift_once();
    }

    v295 = qword_1ECDF60B0;
    v296 = qword_1ECDF60B8;
    v297 = v274[23];
    v388 = v274[22];
    v382 = v297;
    ObjectType = swift_getObjectType();
    v298 = sub_1DEF8D1E8();
    (*(*(v298 - 8) + 56))(v337, 1, 1, v298);
    *v389 = 0;
    aBlock = v295;
    v391 = v296;
    v299 = v334;
    sub_1DEEACA70(v364, v334, type metadata accessor for ReplicatorMessage.Handshake.Response);
    v386 = type metadata accessor for PairingRelationship;
    v300 = v328;
    sub_1DEEACA70(v357, v328, type metadata accessor for PairingRelationship);
    v375 = type metadata accessor for SessionManager.Session;
    v301 = v327;
    sub_1DEEACA70(v356, v327, type metadata accessor for SessionManager.Session);
    v302 = (*(v332 + 80) + 24) & ~*(v332 + 80);
    v303 = *(v326 + 80);
    v304 = (v333 + v303 + v302) & ~v303;
    v305 = *(v358 + 80);
    v306 = (v336 + v305 + v304) & ~v305;
    v376 = (v303 | v305);
    v307 = swift_allocObject();
    *(v307 + 16) = v274;
    sub_1DEEAB218(v299, v307 + v302, type metadata accessor for ReplicatorMessage.Handshake.Response);
    v381 = type metadata accessor for PairingRelationship;
    sub_1DEEAB218(v300, v307 + v304, type metadata accessor for PairingRelationship);
    sub_1DEEAB218(v301, v307 + v306, type metadata accessor for SessionManager.Session);
    v308 = v274;

    v309 = v337;
    sub_1DEE7FC18(v339, v337, &v389[1], v322, v389, &aBlock, sub_1DEEAAD08, v307, ObjectType, v382);

    sub_1DEE171B4(v309, &qword_1ECDE4890, &qword_1DEF90990);
    sub_1DEEACA70(v356, v301, v375);
    v310 = v331;
    sub_1DEEACA70(v354, v331, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    sub_1DEEACA70(v357, v300, v386);
    v311 = (v305 + 24) & ~v305;
    v312 = (v311 + v335 + *(v329 + 80)) & ~*(v329 + 80);
    v313 = (v330 + v303 + v312) & ~v303;
    v314 = swift_allocObject();
    *(v314 + 16) = v308;
    sub_1DEEAB218(v301, v314 + v311, type metadata accessor for SessionManager.Session);
    sub_1DEEAB218(v310, v314 + v312, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    sub_1DEEAB218(v300, v314 + v313, v381);
    v394 = sub_1DEEAAE90;
    v395 = v314;
    aBlock = MEMORY[0x1E69E9820];
    v391 = 1107296256;
    v392 = sub_1DEE3F0C0;
    v393 = &block_descriptor_607;
    v315 = _Block_copy(&aBlock);

    v316 = v346;
    sub_1DEF8D6B8();
    *&v389[1] = MEMORY[0x1E69E7CC0];
    v317 = v348;
    v318 = v349;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v316, v317, v315);
    _Block_release(v315);
    (v379)(v317, v318);
    (v378)(v316, v347);
    sub_1DEE273A0(v339, type metadata accessor for Message);
    sub_1DEE273A0(v324, type metadata accessor for ReplicatorMessage);
    sub_1DEE273A0(v351, type metadata accessor for ReplicatorMessage.Handshake);
    sub_1DEE273A0(v354, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    sub_1DEE273A0(v356, type metadata accessor for SessionManager.Session);

    v128 = type metadata accessor for PairingRelationship;
    v129 = v357;
  }

LABEL_106:
  sub_1DEE273A0(v129, v128);
}

uint64_t sub_1DEE86E14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*(a2 + *(type metadata accessor for PairingRelationship() + 20) + 32) > 7uLL)
  {
    v8 = v4[2];
    v9 = v4[3];

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    result = MEMORY[0x1E12CB180](v4[4], v4[5]);
    *a3 = v8;
    a3[1] = v9;
  }

  else
  {
    v5 = v4[4] == 0xD000000000000011 && 0x80000001DEF9C1B0 == v4[5];
    if (v5 || (result = sub_1DEF8E4E8(), (result & 1) != 0))
    {
      v7 = v4[3];
      *a3 = v4[2];
      a3[1] = v7;
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  return result;
}

uint64_t sub_1DEE86EF4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v30 = a1;
  v27 = a5;
  v31 = a2;
  v8 = type metadata accessor for SessionManager.Session();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PairingRelationship();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 + 232);
  sub_1DEEACA70(a4, v18, type metadata accessor for ReplicatorMessage.Handshake.Response);
  sub_1DEEACA70(v27, v14, type metadata accessor for PairingRelationship);
  sub_1DEEACA70(v29, v10, type metadata accessor for SessionManager.Session);
  v19 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v20 = (v17 + *(v12 + 80) + v19) & ~*(v12 + 80);
  v21 = (v13 + *(v28 + 80) + v20) & ~*(v28 + 80);
  v22 = swift_allocObject();
  v23 = v30;
  *(v22 + 16) = v30;
  LOBYTE(a4) = v31 & 1;
  *(v22 + 24) = v31 & 1;
  *(v22 + 32) = a3;
  sub_1DEEAB218(v18, v22 + v19, type metadata accessor for ReplicatorMessage.Handshake.Response);
  sub_1DEEAB218(v14, v22 + v20, type metadata accessor for PairingRelationship);
  sub_1DEEAB218(v10, v22 + v21, type metadata accessor for SessionManager.Session);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1DEEAAEEC;
  *(v24 + 24) = v22;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_640;
  v25 = _Block_copy(aBlock);
  sub_1DEE39150(v23, a4);

  dispatch_sync(v32, v25);
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE872D4(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v76 = a4;
  v11 = type metadata accessor for PairingRelationship();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70[-v16];
  v18 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v70[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v70[-v24];
  if (a2)
  {
    v74 = v23;
    v75 = a5;
    v79[0] = a1;
    v26 = a1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    if (swift_dynamicCast() && v82 == 2)
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v28 = sub_1DEF8D508();
      __swift_project_value_buffer(v28, qword_1ECDF6028);
      sub_1DEEACA70(v76, v25, type metadata accessor for ReplicatorMessage.Handshake.Response);
      sub_1DEEACA70(v75, v17, type metadata accessor for PairingRelationship);
      sub_1DEE39150(a1, 1);

      v29 = sub_1DEF8D4D8();
      v30 = sub_1DEF8DCB8();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v78 = v75;
        *v31 = 136446978;
        *(v31 + 4) = sub_1DEE12A5C(*(a3 + 528), *(a3 + 536), &v78);
        *(v31 + 12) = 2082;
        sub_1DEF8D3F8();
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v72 = v29;
        v73 = v27;
        v32 = sub_1DEF8E2E8();
        v71 = v30;
        v34 = v33;
        sub_1DEE273A0(v25, type metadata accessor for ReplicatorMessage.Handshake.Response);
        v35 = sub_1DEE12A5C(v32, v34, &v78);

        *(v31 + 14) = v35;
        *(v31 + 22) = 2082;
        v36 = sub_1DEF8E2E8();
        v38 = v37;
        sub_1DEE273A0(v17, type metadata accessor for PairingRelationship);
        v39 = sub_1DEE12A5C(v36, v38, &v78);

        *(v31 + 24) = v39;
        *(v31 + 32) = 2082;
        v77 = a1;
        v40 = a1;
        v41 = sub_1DEF8D988();
        v43 = sub_1DEE12A5C(v41, v42, &v78);

        *(v31 + 34) = v43;
        v44 = v72;
        _os_log_impl(&dword_1DEE0F000, v72, v71, "(%{public}s) Handshake complete for session %{public}s with relationship %{public}s blocked by allow list: %{public}s.", v31, 0x2Au);
        v45 = v75;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v45, -1, -1);
        MEMORY[0x1E12CCD70](v31, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v17, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v25, type metadata accessor for ReplicatorMessage.Handshake.Response);
      }

      sub_1DEE7F920(a6);
      sub_1DEE7D6B8(*(v76 + v74[6]), *(v76 + v74[6] + 8));
    }

    else
    {

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v46 = sub_1DEF8D508();
      __swift_project_value_buffer(v46, qword_1ECDF6028);
      sub_1DEEACA70(v76, v21, type metadata accessor for ReplicatorMessage.Handshake.Response);
      sub_1DEEACA70(v75, v14, type metadata accessor for PairingRelationship);
      sub_1DEE39150(a1, 1);

      v47 = sub_1DEF8D4D8();
      v48 = sub_1DEF8DC98();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v79[0] = v74;
        *v49 = 136446978;
        *(v49 + 4) = sub_1DEE12A5C(*(a3 + 528), *(a3 + 536), v79);
        *(v49 + 12) = 2082;
        sub_1DEF8D3F8();
        v73 = v27;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v76 = a6;
        v72 = v47;
        v50 = sub_1DEF8E2E8();
        v71 = v48;
        v52 = v51;
        sub_1DEE273A0(v21, type metadata accessor for ReplicatorMessage.Handshake.Response);
        v53 = sub_1DEE12A5C(v50, v52, v79);

        *(v49 + 14) = v53;
        *(v49 + 22) = 2082;
        a6 = v76;
        v54 = sub_1DEF8E2E8();
        v56 = v55;
        sub_1DEE273A0(v14, type metadata accessor for PairingRelationship);
        v57 = sub_1DEE12A5C(v54, v56, v79);

        *(v49 + 24) = v57;
        *(v49 + 32) = 2082;
        v78 = a1;
        v58 = a1;
        v59 = sub_1DEF8D988();
        v61 = sub_1DEE12A5C(v59, v60, v79);

        *(v49 + 34) = v61;
        v62 = v72;
        _os_log_impl(&dword_1DEE0F000, v72, v71, "(%{public}s) Error sending handshake complete for session %{public}s with relationship %{public}s: %{public}s", v49, 0x2Au);
        v63 = v74;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v63, -1, -1);
        MEMORY[0x1E12CCD70](v49, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v14, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v21, type metadata accessor for ReplicatorMessage.Handshake.Response);
      }

      sub_1DEE7F920(a6);
      v64 = v75 + *(v11 + 20);
      v65 = *(v64 + 8);
      v66 = *(v64 + 160);
      v67 = *(v64 + 168);
      v68 = *(v64 + 48);
      v79[0] = *v64;
      v79[1] = v65;
      v79[2] = v66;
      v79[3] = v67;
      v80 = v68;
      v81 = *(v64 + 32);
      v69 = *(a6 + *(type metadata accessor for SessionManager.Session() + 36));

      sub_1DEE8381C(v79, v69);
    }
  }
}

uint64_t sub_1DEE87B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a3 + *(type metadata accessor for ReplicatorMessage.Handshake.Complete(0) + 20));
  v7 = v6[1];
  v12 = *v6;
  v13 = v7;
  v8 = *(type metadata accessor for PairingRelationship() + 20);
  sub_1DEE4F8C0(v12, v7);
  sub_1DEE7A820(a2, &v12, a4 + v8);
  v9 = v12;
  v10 = v13;

  return sub_1DEE4F8D4(v9, v10);
}

void sub_1DEE87BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = a4;
  v95 = a3;
  v6 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v7 = *(v6 - 8);
  v82 = v6;
  v83 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v84 = v9;
  v85 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v86 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v90 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v94 = &v80 - v18;
  v19 = type metadata accessor for Message();
  v91 = *(v19 - 8);
  v92 = v19;
  v20 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ReplicatorMessage(0);
  v22 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v97 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for ReplicatorMessage.Handshake(0);
  v24 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v28 = *(*(v27 - 1) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DeviceDescriptor();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v35 = sub_1DEF8D508();
  __swift_project_value_buffer(v35, qword_1ECDF6028);

  v36 = sub_1DEF8D4D8();
  v37 = sub_1DEF8DCB8();

  v38 = os_log_type_enabled(v36, v37);
  v96 = v26;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v81 = v30;
    v40 = a1;
    v41 = v34;
    v42 = v39;
    v43 = swift_slowAlloc();
    v98 = v43;
    *v42 = 136446210;
    v44 = a2;
    *(v42 + 4) = sub_1DEE12A5C(*(a2 + 528), *(a2 + 536), &v98);
    _os_log_impl(&dword_1DEE0F000, v36, v37, "(%{public}s) Sending disabled handshake response", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1E12CCD70](v43, -1, -1);
    v45 = v42;
    v34 = v41;
    a1 = v40;
    v30 = v81;
    MEMORY[0x1E12CCD70](v45, -1, -1);

    if (v40)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1DEE69B50(v34);
    v56 = MEMORY[0x1E69E7CC0];
    v57 = v34;
    v58 = sub_1DEEA34BC(MEMORY[0x1E69E7CC0]);
    v59 = sub_1DEF8D3F8();
    v60 = *(v59 - 8);
    (*(v60 + 16))(v30, v95, v59);
    sub_1DEEACA70(v57, &v30[v27[6]], type metadata accessor for DeviceDescriptor);
    v61 = sub_1DEEA29E4(v56);
    v62 = &v30[v27[5]];
    *v62 = 0;
    *(v62 + 1) = 0;
    *&v30[v27[7]] = v61;
    *&v30[v27[8]] = v58;
    v63 = v96;
    sub_1DEEACA70(v30, v96, type metadata accessor for ReplicatorMessage.Handshake.Response);
    swift_storeEnumTagMultiPayload();
    v64 = v97;
    sub_1DEEACA70(v63, v97, type metadata accessor for ReplicatorMessage.Handshake);
    swift_storeEnumTagMultiPayload();
    v65 = v90;
    (*(v60 + 56))(v90, 1, 1, v59);
    v66 = v94;
    sub_1DEE29904(v64, ObjectType, v65, v94);
    sub_1DEE171B4(v65, &unk_1ECDE3E80, &unk_1DEF90970);
    (*(v91 + 56))(v66, 0, 1, v92);
    sub_1DEEAB218(v66, v87, type metadata accessor for Message);
    v94 = v57;
    v67 = *(v44 + 176);
    v68 = *(v44 + 184);
    ObjectType = swift_getObjectType();
    v69 = sub_1DEF8D1E8();
    v70 = v86;
    (*(*(v69 - 8) + 56))(v86, 1, 1, v69);
    LOBYTE(v98) = 0;
    v71 = *(v82 + 24);
    v99[0] = 0;
    v72 = v95;
    v73 = v85;
    sub_1DEEACA70(v95, v85, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v74 = (*(v83 + 80) + 24) & ~*(v83 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = v44;
    sub_1DEEAB218(v73, v75 + v74, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v76 = v72;
    v77 = *(v68 + 40);

    v79 = v68;
    v78 = v87;
    v77(v87, v70, &v98, v76 + v71, v99, sub_1DEEAAC54, v75, ObjectType, v79);

    sub_1DEE171B4(v70, &qword_1ECDE4890, &qword_1DEF90990);
    sub_1DEE273A0(v78, type metadata accessor for Message);
    sub_1DEE273A0(v97, type metadata accessor for ReplicatorMessage);
    sub_1DEE273A0(v96, type metadata accessor for ReplicatorMessage.Handshake);
    sub_1DEE273A0(v30, type metadata accessor for ReplicatorMessage.Handshake.Response);
    sub_1DEE273A0(v94, type metadata accessor for DeviceDescriptor);
    return;
  }

  v44 = a2;

  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v46 = v44;

  v47 = a1;
  v48 = sub_1DEF8D4D8();
  v49 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = a1;
    v53 = swift_slowAlloc();
    v98 = v53;
    *v50 = 136446466;
    *(v50 + 4) = sub_1DEE12A5C(*(v46 + 528), *(v46 + 536), &v98);
    *(v50 + 12) = 2114;
    v54 = v52;
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 14) = v55;
    *v51 = v55;
    _os_log_impl(&dword_1DEE0F000, v48, v49, "(%{public}s) Abandoning disabled handshake response because prerequisites are not met: %{public}@", v50, 0x16u);
    sub_1DEE171B4(v51, &unk_1ECDE4880, &qword_1DEF93420);
    MEMORY[0x1E12CCD70](v51, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x1E12CCD70](v53, -1, -1);
    MEMORY[0x1E12CCD70](v50, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DEE88640(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = *(a3 + 232);
  sub_1DEEACA70(a4, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplicatorMessage.Handshake.Request);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  *(v13 + 32) = a3;
  sub_1DEEAB218(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ReplicatorMessage.Handshake.Request);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1DEEAAC80;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_577;
  v15 = _Block_copy(aBlock);
  sub_1DEE39150(a1, a2 & 1);

  dispatch_sync(v11, v15);
  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE88884(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  ObjectType = a1;
  v6 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v7 = *(v6 - 8);
  v70 = v6;
  v71 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = v9;
  v73 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v74 = &v69 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v76 = &v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v79 = &v69 - v18;
  v19 = type metadata accessor for Message();
  v77 = *(v19 - 8);
  v78 = v19;
  v20 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ReplicatorMessage(0);
  v22 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ReplicatorMessage.Handshake(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v81 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  v29 = *(*(v28 - 1) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v32 = sub_1DEF8D508();
  __swift_project_value_buffer(v32, qword_1ECDF6028);

  v33 = sub_1DEF8D4D8();
  v34 = sub_1DEF8DCB8();

  v35 = os_log_type_enabled(v33, v34);
  v82 = v24;
  if (v35)
  {
    v36 = a3;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v84 = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v84);
    _os_log_impl(&dword_1DEE0F000, v33, v34, "(%{public}s) Sending disabled handshake complete", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E12CCD70](v38, -1, -1);
    v39 = v37;
    a3 = v36;
    MEMORY[0x1E12CCD70](v39, -1, -1);
  }

  v40 = ObjectType;
  if (ObjectType)
  {

    v41 = v40;
    v42 = sub_1DEF8D4D8();
    v43 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v84 = v46;
      *v44 = 136446466;
      *(v44 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v84);
      *(v44 + 12) = 2114;
      v47 = v40;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v48;
      *v45 = v48;
      _os_log_impl(&dword_1DEE0F000, v42, v43, "(%{public}s) Abandoning disabled handshake complete because prerequisites are not met: %{public}@", v44, 0x16u);
      sub_1DEE171B4(v45, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1E12CCD70](v46, -1, -1);
      MEMORY[0x1E12CCD70](v44, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
    v50 = sub_1DEEA34BC(MEMORY[0x1E69E7CC0]);
    v51 = sub_1DEF8D3F8();
    v52 = *(v51 - 8);
    (*(v52 + 16))(v31, a3, v51);
    v53 = &v31[v28[5]];
    *v53 = 0;
    *(v53 + 1) = 0;
    *&v31[v28[6]] = v49;
    *&v31[v28[7]] = v50;
    v54 = v81;
    sub_1DEEACA70(v31, v81, type metadata accessor for ReplicatorMessage.Handshake.Complete);
    swift_storeEnumTagMultiPayload();
    v55 = v82;
    sub_1DEEACA70(v54, v82, type metadata accessor for ReplicatorMessage.Handshake);
    swift_storeEnumTagMultiPayload();
    v56 = v76;
    (*(v52 + 56))(v76, 1, 1, v51);
    v57 = v79;
    sub_1DEE29904(v55, v80, v56, v79);
    sub_1DEE171B4(v56, &unk_1ECDE3E80, &unk_1DEF90970);
    (*(v77 + 56))(v57, 0, 1, v78);
    v58 = v57;
    v59 = v69;
    sub_1DEEAB218(v58, v69, type metadata accessor for Message);
    v60 = a2[22];
    v61 = a2[23];
    ObjectType = swift_getObjectType();
    v62 = sub_1DEF8D1E8();
    v63 = v74;
    (*(*(v62 - 8) + 56))(v74, 1, 1, v62);
    LOBYTE(v84) = 0;
    v80 = *(v70 + 24);
    v85[0] = 0;
    v64 = v73;
    sub_1DEEACA70(a3, v73, type metadata accessor for ReplicatorMessage.Handshake.Response);
    v65 = (*(v71 + 80) + 24) & ~*(v71 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = a2;
    sub_1DEEAB218(v64, v66 + v65, type metadata accessor for ReplicatorMessage.Handshake.Response);
    v67 = a3;
    v68 = *(v61 + 40);

    v68(v59, v63, &v84, v67 + v80, v85, sub_1DEEAB684, v66, ObjectType, v61);

    sub_1DEE171B4(v63, &qword_1ECDE4890, &qword_1DEF90990);
    sub_1DEE273A0(v59, type metadata accessor for Message);
    sub_1DEE273A0(v82, type metadata accessor for ReplicatorMessage);
    sub_1DEE273A0(v81, type metadata accessor for ReplicatorMessage.Handshake);
    sub_1DEE273A0(v31, type metadata accessor for ReplicatorMessage.Handshake.Complete);
  }
}

uint64_t sub_1DEE89248(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = *(a3 + 232);
  sub_1DEEACA70(a4, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplicatorMessage.Handshake.Response);
  v12 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2 & 1;
  *(v13 + 32) = a3;
  sub_1DEEAB218(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ReplicatorMessage.Handshake.Response);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1DEEAB74C;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_700;
  v15 = _Block_copy(aBlock);
  sub_1DEE39150(a1, a2 & 1);

  dispatch_sync(v11, v15);
  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE8948C(void *a1, char a2, void *a3, uint64_t a4, const char *a5, uint64_t (*a6)(void))
{
  if (a2)
  {
    v46 = a1;
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    if (swift_dynamicCast())
    {
      v12 = v53 == 2;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v32 = sub_1DEF8D508();
      __swift_project_value_buffer(v32, qword_1ECDF6028);
      sub_1DEE39150(a1, 1);

      v33 = sub_1DEF8D4D8();
      v34 = sub_1DEF8DCB8();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v44 = v36;
        *v35 = 136446466;
        *(v35 + 4) = sub_1DEE12A5C(a3[66], a3[67], &v44);
        *(v35 + 12) = 2082;
        v37 = a1;
        v38 = sub_1DEF8D988();
        v40 = sub_1DEE12A5C(v38, v39, &v44);

        *(v35 + 14) = v40;
        _os_log_impl(&dword_1DEE0F000, v33, v34, "(%{public}s) Handshake request blocked by allow list: %{public}s.", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v36, -1, -1);
        MEMORY[0x1E12CCD70](v35, -1, -1);
      }
    }

    else
    {

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v13 = sub_1DEF8D508();
      __swift_project_value_buffer(v13, qword_1ECDF6028);
      sub_1DEE39150(a1, 1);

      v14 = sub_1DEF8D4D8();
      v15 = sub_1DEF8DC98();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v46 = v17;
        *v16 = 136446466;
        *(v16 + 4) = sub_1DEE12A5C(a3[66], a3[67], &v46);
        *(v16 + 12) = 2082;
        v44 = a1;
        v18 = a1;
        v19 = sub_1DEF8D988();
        v21 = sub_1DEE12A5C(v19, v20, &v46);

        *(v16 + 14) = v21;
        _os_log_impl(&dword_1DEE0F000, v14, v15, a5, v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v17, -1, -1);
        MEMORY[0x1E12CCD70](v16, -1, -1);
      }

      v22 = a3[51];
      v23 = a3[52];
      __swift_project_boxed_opaque_existential_1(a3 + 48, v22);
      v24 = a4 + *(a6(0) + 24);
      v25 = *(v24 + 8);
      v26 = *(v24 + 168);
      v42 = *(v24 + 160);
      v27 = *(v24 + 48);
      v28 = *(v24 + 32);
      v41 = *(v24 + 40);
      v46 = *v24;
      v43 = v46;
      v47 = v25;
      v48 = v42;
      v49 = v26;
      v50 = v27;
      v51 = v28;
      v52 = v41;
      v29 = *(v23 + 24);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v29(&v46, v22, v23);

      v30 = a3[51];
      v31 = a3[52];
      __swift_project_boxed_opaque_existential_1(a3 + 48, v30);
      v46 = v43;
      v47 = v25;
      v48 = v42;
      v49 = v26;
      v50 = v27;
      v51 = v28;
      v52 = v41;
      v44 = 0;
      v45 = 2;
      (*(v31 + 16))(&v46, &v44, v30, v31);
    }
  }
}

uint64_t sub_1DEE89934(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for SessionManager.Session();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47[-v9];
  if (*(a1 + *(v11 + 24)))
  {
    v12 = a2[51];
    v13 = a2[52];
    __swift_project_boxed_opaque_existential_1(a2 + 48, v12);
    v14 = a1 + *(v4 + 20);
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    v18 = *(v14 + 32);
    v50 = *v14;
    v51 = v15;
    v52 = v17;
    v53 = v16;
    v54 = v18;
    v55 = *(v14 + 40);
    v19 = *(v13 + 24);

    v19(&v50, v12, v13);
  }

  else
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v20 = sub_1DEF8D508();
    __swift_project_value_buffer(v20, qword_1ECDF6028);
    sub_1DEEACA70(a1, v10, type metadata accessor for SessionManager.Session);
    sub_1DEEACA70(a1, v7, type metadata accessor for SessionManager.Session);

    v21 = sub_1DEF8D4D8();
    v22 = sub_1DEF8DC98();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v23 = 136446722;
      *(v23 + 4) = sub_1DEE12A5C(a2[66], a2[67], &v50);
      *(v23 + 12) = 2082;
      sub_1DEF8D3F8();
      sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
      v48 = v22;
      v24 = sub_1DEF8E2E8();
      v26 = v25;
      sub_1DEE273A0(v10, type metadata accessor for SessionManager.Session);
      v27 = sub_1DEE12A5C(v24, v26, &v50);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2082;
      v28 = &v7[*(v4 + 20)];
      v29 = *v28;
      v30 = v28[1];

      sub_1DEE273A0(v7, type metadata accessor for SessionManager.Session);
      v31 = sub_1DEE12A5C(v29, v30, &v50);

      *(v23 + 24) = v31;
      _os_log_impl(&dword_1DEE0F000, v21, v48, "(%{public}s) Session %{public}s expired while handshaking with %{public}s; will schedule retry", v23, 0x20u);
      v32 = v49;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v32, -1, -1);
      MEMORY[0x1E12CCD70](v23, -1, -1);
    }

    else
    {

      sub_1DEE273A0(v7, type metadata accessor for SessionManager.Session);
      sub_1DEE273A0(v10, type metadata accessor for SessionManager.Session);
    }

    v33 = a1 + *(v4 + 20);
    sub_1DEE7D6B8(*v33, *(v33 + 8));
    v34 = a2[51];
    v35 = a2[52];
    __swift_project_boxed_opaque_existential_1(a2 + 48, v34);
    v36 = *(v33 + 8);
    v38 = *(v33 + 16);
    v37 = *(v33 + 24);
    v39 = *(v33 + 32);
    v50 = *v33;
    v51 = v36;
    v52 = v38;
    v53 = v37;
    v54 = v39;
    v55 = *(v33 + 40);
    v40 = *(v35 + 24);

    v40(&v50, v34, v35);

    v41 = *(v33 + 8);
    v43 = *(v33 + 16);
    v42 = *(v33 + 24);
    v44 = *(v33 + 32);
    v50 = *v33;
    v51 = v41;
    v52 = v43;
    v53 = v42;
    v54 = v44;
    v55 = *(v33 + 40);
    v45 = *(a1 + *(v4 + 36));

    sub_1DEE8381C(&v50, v45);
  }
}

uint64_t sub_1DEE89DB8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v368 = &v350 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v375 = &v350 - v7;
  v371 = type metadata accessor for Message();
  v370 = *(v371 - 8);
  v8 = *(v370 + 64);
  MEMORY[0x1EEE9AC00](v371);
  v361 = &v350 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = type metadata accessor for ReplicatorMessage(0);
  v10 = *(*(v369 - 8) + 64);
  MEMORY[0x1EEE9AC00](v369);
  v377 = &v350 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Record.ID.Ownership(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v354 = &v350 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D80, &qword_1DEF91698);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v364 = &v350 - v17;
  v365 = type metadata accessor for PrioritizedRecordValue();
  v363 = *(v365 - 8);
  v18 = *(v363 + 64);
  MEMORY[0x1EEE9AC00](v365);
  v360 = (&v350 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v376 = &v350 - v22;
  v367 = type metadata accessor for ReplicatorMessage.Sync(0);
  v23 = *(*(v367 - 8) + 64);
  MEMORY[0x1EEE9AC00](v367);
  v380 = &v350 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = sub_1DEF8D3F8();
  v378 = *(v381 - 8);
  v25 = *(v378 + 64);
  MEMORY[0x1EEE9AC00](v381);
  v373 = v26;
  v374 = &v350 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v391 = sub_1DEF8D788();
  v390 = *(v391 - 1);
  v27 = *(v390 + 64);
  MEMORY[0x1EEE9AC00](v391);
  v389 = &v350 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v387 = &v350 - v31;
  v394 = type metadata accessor for PairingRelationship();
  v392 = *(v394 - 8);
  v32 = *(v392 + 64);
  MEMORY[0x1EEE9AC00](v394);
  v359 = &v350 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v362 = &v350 - v35;
  v358 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v386 = &v350 - v38;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  v39 = *(*(v396 - 8) + 64);
  MEMORY[0x1EEE9AC00](v396);
  v397 = &v350 - v40;
  v41 = type metadata accessor for SessionManager.Session();
  v398 = *(v41 - 8);
  v399 = v41;
  v42 = *(v398 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v357 = &v350 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v356 = v43;
  MEMORY[0x1EEE9AC00](v44);
  v393 = &v350 - v45;
  v46 = type metadata accessor for SyncQueue.SyncItem();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v388 = &v350 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v384 = (&v350 - v51);
  MEMORY[0x1EEE9AC00](v52);
  v383 = (&v350 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v382 = (&v350 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v379 = (&v350 - v57);
  MEMORY[0x1EEE9AC00](v58);
  v372 = (&v350 - v59);
  MEMORY[0x1EEE9AC00](v60);
  v366 = (&v350 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v350 - v63;
  MEMORY[0x1EEE9AC00](v65);
  v67 = (&v350 - v66);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v350 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D88, &qword_1DEF916A0);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v74 = &v350 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v350 - v76;
  if (qword_1ECDE37E8 != -1)
  {
    swift_once();
  }

  v78 = qword_1ECDF60B0;
  v355 = qword_1ECDF60B8;
  v79 = a1;
  v80 = a1[74];

  sub_1DEF04E40(v77);

  sub_1DEE17214(v77, v74, &qword_1ECDE3D88, &qword_1DEF916A0);
  v81 = *(v47 + 48);
  v395 = v46;
  if (v81(v74, 1, v46) != 1)
  {
    v353 = v77;
    sub_1DEEAB218(v74, v70, type metadata accessor for SyncQueue.SyncItem);
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v88 = sub_1DEF8D508();
    v89 = __swift_project_value_buffer(v88, qword_1ECDF6028);
    v385 = v70;
    sub_1DEEACA70(v70, v67, type metadata accessor for SyncQueue.SyncItem);
    v90 = v79;

    v91 = sub_1DEF8D4D8();
    v92 = sub_1DEF8DCB8();

    v93 = os_log_type_enabled(v91, v92);
    v351 = v64;
    if (v93)
    {
      v94 = swift_slowAlloc();
      v352 = v89;
      v95 = v94;
      v96 = swift_slowAlloc();
      aBlock = v96;
      *v95 = 136446466;
      *(v95 + 4) = sub_1DEE12A5C(v79[66], v79[67], &aBlock);
      *(v95 + 12) = 2082;
      v97 = *v67;
      v98 = Record.ID.description.getter();
      v100 = v99;
      sub_1DEE273A0(v67, type metadata accessor for SyncQueue.SyncItem);
      v101 = sub_1DEE12A5C(v98, v100, &aBlock);

      *(v95 + 14) = v101;
      _os_log_impl(&dword_1DEE0F000, v91, v92, "(%{public}s) Syncing record %{public}s", v95, 0x16u);
      swift_arrayDestroy();
      v102 = v96;
      v90 = v79;
      MEMORY[0x1E12CCD70](v102, -1, -1);
      v103 = v95;
      v89 = v352;
      MEMORY[0x1E12CCD70](v103, -1, -1);
    }

    else
    {

      v104 = sub_1DEE273A0(v67, type metadata accessor for SyncQueue.SyncItem);
    }

    v105 = v397;
    v106 = v385;
    v107 = &v385[*(v395 + 20)];
    v108 = *(v90[68] + 32);
    MEMORY[0x1EEE9AC00](v104);

    v109 = v400;
    sub_1DEF8DD18();
    v400 = v109;

    if ((*(v398 + 48))(v105, 1, v399) == 1)
    {
      sub_1DEE171B4(v105, &qword_1ECDE3D08, &unk_1DEF95E50);
      v110 = v388;
      sub_1DEEACA70(v106, v388, type metadata accessor for SyncQueue.SyncItem);

      v111 = sub_1DEF8D4D8();
      v112 = sub_1DEF8DC98();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        aBlock = v114;
        *v113 = 136446466;
        *(v113 + 4) = sub_1DEE12A5C(v90[66], v90[67], &aBlock);
        *(v113 + 12) = 2082;
        v115 = *v110;
        v116 = Record.ID.description.getter();
        v118 = v117;
        sub_1DEE273A0(v110, type metadata accessor for SyncQueue.SyncItem);
        v119 = sub_1DEE12A5C(v116, v118, &aBlock);

        *(v113 + 14) = v119;
        _os_log_impl(&dword_1DEE0F000, v111, v112, "(%{public}s) Cannot sync enqueued record with no session: %{public}s", v113, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v114, -1, -1);
        MEMORY[0x1E12CCD70](v113, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v110, type metadata accessor for SyncQueue.SyncItem);
      }

      sub_1DEE8CF78(v90);

      sub_1DEE171B4(v353, &qword_1ECDE3D88, &qword_1DEF916A0);
      goto LABEL_54;
    }

    v120 = v393;
    sub_1DEEAB218(v105, v393, type metadata accessor for SessionManager.Session);
    v121 = v90[29];
    v122 = v389;
    *v389 = v121;
    v123 = v390;
    v124 = v391;
    (*(v390 + 104))(v122, *MEMORY[0x1E69E8020], v391);
    v125 = v121;
    LOBYTE(v121) = sub_1DEF8D7B8();
    isa = v123[1].isa;
    v126 = v123 + 1;
    isa(v122, v124);
    if ((v121 & 1) == 0)
    {
      __break(1u);
      goto LABEL_93;
    }

    swift_beginAccess();
    sub_1DEE29594((v90 + 24), &aBlock);
    v128 = v408;
    v129 = v409;
    __swift_project_boxed_opaque_existential_1(&aBlock, v408);
    v130 = *(v129 + 1);
    v131 = v387;
    MetadataStoring.pairingRelationship(remoteDeviceID:)(*(v120 + *(v399 + 20)), *(v120 + *(v399 + 20) + 8), v128, v130, v387);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    if ((*(v392 + 48))(v131, 1, v394) == 1)
    {
      sub_1DEE171B4(v131, &qword_1ECDE3C18, &unk_1DEF94D20);

      v132 = sub_1DEF8D4D8();
      v133 = sub_1DEF8DC98();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        aBlock = v135;
        *v134 = 136446210;
        *(v134 + 4) = sub_1DEE12A5C(v90[66], v90[67], &aBlock);
        _os_log_impl(&dword_1DEE0F000, v132, v133, "(%{public}s) No pairing relationship established", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v135);
        MEMORY[0x1E12CCD70](v135, -1, -1);
        MEMORY[0x1E12CCD70](v134, -1, -1);
      }

      sub_1DEE8CF78(v90);

      sub_1DEE171B4(v353, &qword_1ECDE3D88, &qword_1DEF916A0);
      v136 = type metadata accessor for SessionManager.Session;
      v137 = v120;
      goto LABEL_53;
    }

    v352 = v89;
    v138 = v131;
    v139 = v386;
    sub_1DEEAB218(v138, v386, type metadata accessor for PairingRelationship);
    v140 = *v106;
    v141 = *(*v106 + 32);
    swift_beginAccess();
    v142 = v90[30];

    v143 = sub_1DEF718FC(v141, v142);

    if (!v143)
    {
      v184 = v384;
      sub_1DEEACA70(v106, v384, type metadata accessor for SyncQueue.SyncItem);

      v185 = sub_1DEF8D4D8();
      v186 = sub_1DEF8DC98();

      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        aBlock = v188;
        *v187 = 136446466;
        *(v187 + 4) = sub_1DEE12A5C(v90[66], v90[67], &aBlock);
        *(v187 + 12) = 2082;
        v189 = *v184;
        v190 = Record.ID.description.getter();
        v192 = v191;
        sub_1DEE273A0(v184, type metadata accessor for SyncQueue.SyncItem);
        v193 = sub_1DEE12A5C(v190, v192, &aBlock);

        *(v187 + 14) = v193;
        _os_log_impl(&dword_1DEE0F000, v185, v186, "(%{public}s) Cannot sync enqueued record with no data source: %{public}s", v187, 0x16u);
        swift_arrayDestroy();
        v194 = v188;
        v120 = v393;
        MEMORY[0x1E12CCD70](v194, -1, -1);
        v195 = v187;
        v139 = v386;
        MEMORY[0x1E12CCD70](v195, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v184, type metadata accessor for SyncQueue.SyncItem);
      }

      sub_1DEE8CF78(v90);
      goto LABEL_52;
    }

    v397 = v107;
    v144 = (v139 + *(v394 + 20));
    v145 = v144[12];
    v146 = *(v140 + 32);

    v148 = sub_1DEF71928(v147, v145);

    if (!v148)
    {
      v196 = v383;
      sub_1DEEACA70(v106, v383, type metadata accessor for SyncQueue.SyncItem);

      v197 = sub_1DEF8D4D8();
      v198 = sub_1DEF8DC98();

      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v404 = v200;
        *v199 = 136446466;
        *(v199 + 4) = sub_1DEE12A5C(v90[66], v90[67], &v404);
        *(v199 + 12) = 2082;
        v201 = *v196;
        v396 = v143;
        v202 = *(v201 + 32);
        v203 = v202[5];
        aBlock = v202[4];
        v406 = v203;

        MEMORY[0x1E12CB180](14906, 0xE200000000000000);
        MEMORY[0x1E12CB180](v202[2], v202[3]);

        v204 = aBlock;
        v205 = v406;
        sub_1DEE273A0(v196, type metadata accessor for SyncQueue.SyncItem);
        v206 = sub_1DEE12A5C(v204, v205, &v404);

        *(v199 + 14) = v206;
        _os_log_impl(&dword_1DEE0F000, v197, v198, "(%{public}s) Cannot find remote zone descriptor for zone: %{public}s", v199, 0x16u);
        swift_arrayDestroy();
        v207 = v200;
        v120 = v393;
        MEMORY[0x1E12CCD70](v207, -1, -1);
        v208 = v199;
        v139 = v386;
        MEMORY[0x1E12CCD70](v208, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v196, type metadata accessor for SyncQueue.SyncItem);
      }

      sub_1DEE8CF78(v90);
      goto LABEL_51;
    }

    v150 = v144[4];
    v149 = v144[5];
    if (qword_1ED786060 != -1)
    {
      swift_once();
    }

    v399 = v148;
    if (v150 < *(&xmmword_1ED786068 + 1) || xmmword_1ED786068 < v149)
    {
      v106 = v385;
      v209 = v382;
      sub_1DEEACA70(v385, v382, type metadata accessor for SyncQueue.SyncItem);

      v210 = sub_1DEF8D4D8();
      v211 = sub_1DEF8DC98();

      if (os_log_type_enabled(v210, v211))
      {
        v212 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        aBlock = v213;
        *v212 = 136446466;
        *(v212 + 4) = sub_1DEE12A5C(v90[66], v90[67], &aBlock);
        *(v212 + 12) = 2082;
        v214 = *v209;
        v215 = Record.ID.description.getter();
        v217 = v216;
        sub_1DEE273A0(v209, type metadata accessor for SyncQueue.SyncItem);
        v218 = sub_1DEE12A5C(v215, v217, &aBlock);

        *(v212 + 14) = v218;
        v219 = "(%{public}s) Cannot sync enqueued record with incompatible device: %{public}s";
LABEL_48:
        _os_log_impl(&dword_1DEE0F000, v210, v211, v219, v212, 0x16u);
        swift_arrayDestroy();
        v225 = v213;
        v120 = v393;
        MEMORY[0x1E12CCD70](v225, -1, -1);
        v226 = v212;
        v139 = v386;
        MEMORY[0x1E12CCD70](v226, -1, -1);

LABEL_50:
        sub_1DEE8CF78(v90);

LABEL_51:

LABEL_52:

        sub_1DEE171B4(v353, &qword_1ECDE3D88, &qword_1DEF916A0);
        sub_1DEE273A0(v120, type metadata accessor for SessionManager.Session);
        v136 = type metadata accessor for PairingRelationship;
        v137 = v139;
LABEL_53:
        sub_1DEE273A0(v137, v136);
LABEL_54:
        v227 = v106;
        return sub_1DEE273A0(v227, type metadata accessor for SyncQueue.SyncItem);
      }
    }

    else
    {
      v151 = v139 + *(v394 + 32);
      v153 = *v151;
      v152 = *(v151 + 8);
      if (v152 == 2)
      {
        v391 = v144;
        v396 = v143;
        sub_1DEE4F8D4(v153, 2uLL);
        sub_1DEE4F8D4(0, 2uLL);
        sub_1DEE29594((v90 + 33), &aBlock);
        v154 = v139;
        v155 = v408;
        v156 = v409;
        __swift_project_boxed_opaque_existential_1(&aBlock, v408);
        v404 = v90;
        v157 = *(v156 + 1);
        v158 = type metadata accessor for Replicator();
        v395 = v140;
        LOBYTE(v155) = v157(&v404, v140, v154, v158, &protocol witness table for Replicator, v155, v156);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        if ((v155 & 1) == 0)
        {
          v107 = v385;
          v228 = v372;
          sub_1DEEACA70(v385, v372, type metadata accessor for SyncQueue.SyncItem);

          v229 = sub_1DEF8D4D8();
          v230 = sub_1DEF8DC98();

          if (os_log_type_enabled(v229, v230))
          {
            v231 = swift_slowAlloc();
            v232 = swift_slowAlloc();
            aBlock = v232;
            *v231 = 136446466;
            *(v231 + 4) = sub_1DEE12A5C(v90[66], v90[67], &aBlock);
            *(v231 + 12) = 2082;
            v233 = *v228;
            v234 = Record.ID.description.getter();
            v235 = v228;
            v237 = v236;
            sub_1DEE273A0(v235, type metadata accessor for SyncQueue.SyncItem);
            v238 = sub_1DEE12A5C(v234, v237, &aBlock);

            *(v231 + 14) = v238;
            _os_log_impl(&dword_1DEE0F000, v229, v230, "(%{public}s) Replication policy prevents record from syncing: %{public}s", v231, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v232, -1, -1);
            MEMORY[0x1E12CCD70](v231, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v228, type metadata accessor for SyncQueue.SyncItem);
          }

          v239 = v393;
          v240 = v386;
          sub_1DEE8CF78(v90);

          sub_1DEE171B4(v353, &qword_1ECDE3D88, &qword_1DEF916A0);
          sub_1DEE273A0(v239, type metadata accessor for SessionManager.Session);
          v241 = v240;
          goto LABEL_60;
        }

        v388 = v150;
        v159 = v90[68];
        v160 = *(v159 + 32);
        v161 = v378;
        v162 = *(v378 + 16);
        v163 = v374;
        v164 = v381;
        v390 = v378 + 16;
        v389 = v162;
        (v162)(v374, v393, v381);
        v165 = (*(v161 + 80) + 24) & ~*(v161 + 80);
        v166 = v165 + v373;
        v167 = swift_allocObject();
        *(v167 + 16) = v159;
        (*(v161 + 32))(v167 + v165, v163, v164);
        *(v167 + v166) = 1;
        v168 = swift_allocObject();
        *(v168 + 16) = sub_1DEEACDAC;
        *(v168 + 24) = v167;
        v409 = sub_1DEE46D40;
        v410 = v168;
        aBlock = MEMORY[0x1E69E9820];
        v406 = 1107296256;
        v407 = sub_1DEE134F4;
        v408 = &block_descriptor_652;
        v169 = _Block_copy(&aBlock);
        swift_retain_n();

        dispatch_sync(v160, v169);
        _Block_release(v169);
        LOBYTE(v160) = swift_isEscapingClosureAtFileLocation();

        if (v160)
        {
          __break(1u);
          return result;
        }

        swift_beginAccess();
        v394 = v90;
        v170 = v90[84];
        v171 = v395;
        v172 = *(v395 + 32);
        v174 = *(v172 + 32);
        v173 = *(v172 + 40);

        v175 = sub_1DEF01E3C(v174, v173, v170);

        v176 = *(v399 + 24);
        v177 = v380;
        v106 = v351;
        v178 = v397;
        if (v175)
        {
          v179 = v381;
          (v389)(v380, v397, v381);
          v180 = v177 + *(v367 + 20);
          *v180 = v171;
          *(v180 + 8) = 0;
          *(v180 + 16) = 0;
          *(v180 + 24) = 0;
          *(v180 + 32) = v176;
          *(v180 + 40) = 0;
          v181 = sub_1DEF8D1E8();
          (*(*(v181 - 8) + 56))(v376, 1, 1, v181);

          v182 = 0;
          v90 = v394;
LABEL_35:
          v183 = v368;
          goto LABEL_73;
        }

        v242 = *(v399 + 32);
        v243 = v396;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v244 = *(v243 + 24);
          ObjectType = swift_getObjectType();
          aBlock = v176;
          v406 = v242;
          v246 = v364;
          v247 = v395;
          (*(v244 + 32))(v395, v386, &aBlock, ObjectType, v244);
          swift_unknownObjectRelease();
          v248 = (*(v363 + 48))(v246, 1, v365);
          v90 = v394;
          if (v248 != 1)
          {
            sub_1DEEAB218(v246, v360, type metadata accessor for PrioritizedRecordValue);
            sub_1DEE29594((v90 + 24), &aBlock);
            v249 = v408;
            v250 = v409;
            __swift_project_boxed_opaque_existential_1(&aBlock, v408);
            v251 = (*(*(*(v250 + 1) + 8) + 24))(v249);
            v252 = sub_1DEF718D0(v247, v251);

            if (v252)
            {
              __swift_destroy_boxed_opaque_existential_1(&aBlock);
              sub_1DEE29594((v90 + 24), &aBlock);
              v253 = v408;
              v254 = v409;
              __swift_project_boxed_opaque_existential_1(&aBlock, v408);
              v255 = *(v254 + 1);
              v256 = v395;
              v257 = (*(*(v255 + 8) + 56))(v395, v253);
              if (v258)
              {
                v259 = v257;
                v260 = v258;
                __swift_destroy_boxed_opaque_existential_1(&aBlock);
                if (v388 <= 0xD)
                {
                  v261 = v256;
                  v262 = *(v256 + 32);
                  v263 = v354;
                  sub_1DEEACA70(v261 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v354, type metadata accessor for Record.ID.Ownership);

                  v178 = v397;

                  v264 = type metadata accessor for Record.ID(0);
                  v265 = *(v264 + 48);
                  v266 = *(v264 + 52);
                  v267 = swift_allocObject();
                  v267[2] = v259;
                  v267[3] = v260;
                  v267[4] = v262;
                  v256 = v267;
                  sub_1DEEAB218(v263, v267 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
                }

                v397 = RecordMetadata.copy(replacingID:clientDefinedID:)(v256, v259, v260);

                v268 = v360;
                v269 = *v360;
                v388 = v360[1];
                v270 = type metadata accessor for Record.Value(0);
                v271 = *(v268 + *(v270 + 24));
                v177 = v380;
                v179 = v381;
                (v389)(v380, v178, v381);
                v272 = v177 + *(v367 + 20);
                v395 = v256;
                v273 = v397;
                *v272 = v256;
                *(v272 + 8) = v273;
                v274 = v388;
                *(v272 + 16) = v269;
                *(v272 + 24) = v274;
                *(v272 + 32) = v271;
                *(v272 + 40) = 0;
                sub_1DEE17214(v268 + *(v270 + 20), v376, &qword_1ECDE4890, &qword_1DEF90990);
                v182 = *(v268 + *(v365 + 20));
                sub_1DEE1BFF4(v269, v274);
                sub_1DEE273A0(v268, type metadata accessor for PrioritizedRecordValue);
                goto LABEL_35;
              }

              __swift_destroy_boxed_opaque_existential_1(&aBlock);
              v107 = v385;
              sub_1DEEACA70(v385, v106, type metadata accessor for SyncQueue.SyncItem);

              v126 = sub_1DEF8D4D8();
              v342 = sub_1DEF8DC98();

              if (os_log_type_enabled(v126, v342))
              {
                v343 = swift_slowAlloc();
                v344 = swift_slowAlloc();
                aBlock = v344;
                *v343 = 136446466;
                *(v343 + 4) = sub_1DEE12A5C(v90[66], v90[67], &aBlock);
                *(v343 + 12) = 2082;
                v345 = *v106;
                v346 = Record.ID.description.getter();
                v348 = v347;
                sub_1DEE273A0(v106, type metadata accessor for SyncQueue.SyncItem);
                v349 = sub_1DEE12A5C(v346, v348, &aBlock);
                v90 = v394;

                *(v343 + 14) = v349;
                _os_log_impl(&dword_1DEE0F000, v126, v342, "(%{public}s) No client defined ID is available for record: %{public}s", v343, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1E12CCD70](v344, -1, -1);
                MEMORY[0x1E12CCD70](v343, -1, -1);

LABEL_94:
                sub_1DEE8CF78(v90);

                sub_1DEE273A0(v360, type metadata accessor for PrioritizedRecordValue);
                sub_1DEE171B4(v353, &qword_1ECDE3D88, &qword_1DEF916A0);
                sub_1DEE273A0(v393, type metadata accessor for SessionManager.Session);
                v241 = v386;
LABEL_60:
                sub_1DEE273A0(v241, type metadata accessor for PairingRelationship);
                v227 = v107;
                return sub_1DEE273A0(v227, type metadata accessor for SyncQueue.SyncItem);
              }

LABEL_93:

              sub_1DEE273A0(v106, type metadata accessor for SyncQueue.SyncItem);
              goto LABEL_94;
            }

            sub_1DEE273A0(v360, type metadata accessor for PrioritizedRecordValue);
            __swift_destroy_boxed_opaque_existential_1(&aBlock);
LABEL_70:
            v275 = *(v399 + 24);
            (v389)(v177, v178, v381);
            v276 = v177 + *(v367 + 20);
            *v276 = v247;
            *(v276 + 8) = 0;
            *(v276 + 16) = 0;
            *(v276 + 24) = 0;
            *(v276 + 32) = v275;
            *(v276 + 40) = 0;
            v277 = sub_1DEF8D1E8();
            (*(*(v277 - 8) + 56))(v376, 1, 1, v277);

            swift_retain_n();
            sub_1DEEAB070(0, 0, 0);
            v278 = sub_1DEF8D4D8();
            v279 = sub_1DEF8DC98();

            if (os_log_type_enabled(v278, v279))
            {
              v280 = swift_slowAlloc();
              v281 = swift_slowAlloc();
              aBlock = v281;
              *v280 = 136446466;
              *(v280 + 4) = sub_1DEE12A5C(v90[66], v90[67], &aBlock);
              *(v280 + 12) = 2082;

              v282 = Record.ID.description.getter();
              v284 = v283;

              v285 = sub_1DEE12A5C(v282, v284, &aBlock);

              *(v280 + 14) = v285;
              _os_log_impl(&dword_1DEE0F000, v278, v279, "(%{public}s) Removing metadata for missing record ID: %{public}s", v280, 0x16u);
              swift_arrayDestroy();
              v286 = v281;
              v177 = v380;
              MEMORY[0x1E12CCD70](v286, -1, -1);
              MEMORY[0x1E12CCD70](v280, -1, -1);
            }

            sub_1DEE29594((v90 + 24), &aBlock);
            v287 = v408;
            v288 = v409;
            __swift_project_boxed_opaque_existential_1(&aBlock, v408);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
            v289 = swift_allocObject();
            *(v289 + 16) = xmmword_1DEF91010;
            *(v289 + 32) = v247;
            sub_1DEEAB0B8(0, 0, 0);
            (*(*(v288 + 2) + 136))(v289, v287);

            __swift_destroy_boxed_opaque_existential_1(&aBlock);
            v182 = 0;
            v179 = v381;
            v183 = v368;
LABEL_73:
            v290 = v377;
            sub_1DEEACA70(v177, v377, type metadata accessor for ReplicatorMessage.Sync);
            swift_storeEnumTagMultiPayload();
            (*(v378 + 56))(v183, 1, 1, v179);
            v291 = v386;
            v292 = sub_1DEE5D178(v386);
            if (v293)
            {
              v294 = v362;
              sub_1DEEACA70(v291, v362, type metadata accessor for PairingRelationship);

              v295 = sub_1DEF8D4D8();
              v296 = sub_1DEF8DC98();

              if (os_log_type_enabled(v295, v296))
              {
                v297 = swift_slowAlloc();
                v298 = swift_slowAlloc();
                aBlock = v298;
                *v297 = 136446466;
                *(v297 + 4) = sub_1DEE12A5C(v90[66], v90[67], &aBlock);
                *(v297 + 12) = 2082;
                sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
                v299 = sub_1DEF8E2E8();
                v300 = v294;
                v302 = v301;
                sub_1DEE273A0(v300, type metadata accessor for PairingRelationship);
                v303 = sub_1DEE12A5C(v299, v302, &aBlock);

                *(v297 + 14) = v303;
                _os_log_impl(&dword_1DEE0F000, v295, v296, "(%{public}s) Can't resolve protocol version when trying to construct message for: %{public}s", v297, 0x16u);
                swift_arrayDestroy();
                v304 = v298;
                v177 = v380;
                MEMORY[0x1E12CCD70](v304, -1, -1);
                v305 = v297;
                v291 = v386;
                MEMORY[0x1E12CCD70](v305, -1, -1);
              }

              else
              {

                sub_1DEE273A0(v294, type metadata accessor for PairingRelationship);
              }

              v309 = v371;
              v310 = v370;
              v308 = v183;
            }

            else
            {
              v306 = v375;
              v307 = v400;
              sub_1DEE29904(v290, v292, v183, v375);
              v400 = v307;
              if (!v307)
              {
                sub_1DEE171B4(v183, &unk_1ECDE3E80, &unk_1DEF90970);
                v326 = 1;
                (*(v370 + 56))(v306, 0, 1, v371);
                sub_1DEEAB218(v306, v361, type metadata accessor for Message);
                v327 = v90[22];
                v397 = v90[23];
                v328 = v396;
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v329 = *(v328 + 24);
                  v330 = swift_getObjectType();
                  (*(v329 + 24))(&v403, v330, v329);
                  swift_unknownObjectRelease();
                  v326 = v403;
                }

                else
                {
                  v403 = 1;
                }

                v331 = swift_getObjectType();
                v402 = v326;
                v401 = v182;
                aBlock = v78;
                v406 = v355;
                v332 = v357;
                sub_1DEEACA70(v393, v357, type metadata accessor for SessionManager.Session);
                v333 = v359;
                sub_1DEEACA70(v386, v359, type metadata accessor for PairingRelationship);
                v334 = (*(v398 + 80) + 24) & ~*(v398 + 80);
                v335 = (v356 + *(v392 + 80) + v334) & ~*(v392 + 80);
                v336 = (v358 + v335 + 7) & 0xFFFFFFFFFFFFFFF8;
                v337 = swift_allocObject();
                v338 = v394;
                *(v337 + 16) = v394;
                sub_1DEEAB218(v332, v337 + v334, type metadata accessor for SessionManager.Session);
                sub_1DEEAB218(v333, v337 + v335, type metadata accessor for PairingRelationship);
                v339 = (v337 + v336);
                *v339 = sub_1DEEAB068;
                v339[1] = v338;
                swift_retain_n();
                v340 = v361;
                v341 = v376;
                sub_1DEE7FC18(v361, v376, &v402, v391, &v401, &aBlock, sub_1DEEAB100, v337, v331, v397);

                sub_1DEE273A0(v340, type metadata accessor for Message);
                sub_1DEE273A0(v377, type metadata accessor for ReplicatorMessage);
                sub_1DEE171B4(v341, &qword_1ECDE4890, &qword_1DEF90990);
                sub_1DEE273A0(v380, type metadata accessor for ReplicatorMessage.Sync);
                sub_1DEE171B4(v353, &qword_1ECDE3D88, &qword_1DEF916A0);
                sub_1DEE273A0(v393, type metadata accessor for SessionManager.Session);
                v325 = v386;
                goto LABEL_84;
              }

              v400 = 0;
              v308 = v183;
              v309 = v371;
              v310 = v370;
            }

            sub_1DEE171B4(v308, &unk_1ECDE3E80, &unk_1DEF90970);
            v311 = v375;
            (*(v310 + 56))(v375, 1, 1, v309);
            sub_1DEE171B4(v311, &unk_1ECDE4E20, &unk_1DEF95B10);
            v312 = v366;
            sub_1DEEACA70(v385, v366, type metadata accessor for SyncQueue.SyncItem);

            v313 = sub_1DEF8D4D8();
            v314 = sub_1DEF8DC98();

            if (os_log_type_enabled(v313, v314))
            {
              v315 = swift_slowAlloc();
              v316 = swift_slowAlloc();
              aBlock = v316;
              *v315 = 136446466;
              *(v315 + 4) = sub_1DEE12A5C(v90[66], v90[67], &aBlock);
              *(v315 + 12) = 2082;
              v317 = *v312;
              v318 = Record.ID.description.getter();
              v320 = v319;
              sub_1DEE273A0(v312, type metadata accessor for SyncQueue.SyncItem);
              v321 = sub_1DEE12A5C(v318, v320, &aBlock);

              *(v315 + 14) = v321;
              _os_log_impl(&dword_1DEE0F000, v313, v314, "(%{public}s) Could not create message for record ID: %{public}s", v315, 0x16u);
              swift_arrayDestroy();
              v322 = v316;
              v177 = v380;
              MEMORY[0x1E12CCD70](v322, -1, -1);
              v323 = v315;
              v291 = v386;
              MEMORY[0x1E12CCD70](v323, -1, -1);
            }

            else
            {

              sub_1DEE273A0(v312, type metadata accessor for SyncQueue.SyncItem);
            }

            v324 = v393;
            sub_1DEE8CF78(v90);

            sub_1DEE273A0(v377, type metadata accessor for ReplicatorMessage);
            sub_1DEE171B4(v376, &qword_1ECDE4890, &qword_1DEF90990);
            sub_1DEE273A0(v177, type metadata accessor for ReplicatorMessage.Sync);
            sub_1DEE171B4(v353, &qword_1ECDE3D88, &qword_1DEF916A0);
            sub_1DEE273A0(v324, type metadata accessor for SessionManager.Session);
            v325 = v291;
LABEL_84:
            sub_1DEE273A0(v325, type metadata accessor for PairingRelationship);
            v227 = v385;
            return sub_1DEE273A0(v227, type metadata accessor for SyncQueue.SyncItem);
          }
        }

        else
        {
          v246 = v364;
          (*(v363 + 56))(v364, 1, 1, v365);
          v90 = v394;
          v247 = v395;
        }

        sub_1DEE171B4(v246, &qword_1ECDE3D80, &qword_1DEF91698);
        goto LABEL_70;
      }

      sub_1DEE4F8C0(*v151, *(v151 + 8));
      sub_1DEE4F8D4(v153, v152);
      sub_1DEE4F8D4(0, 2uLL);
      v106 = v385;
      v209 = v379;
      sub_1DEEACA70(v385, v379, type metadata accessor for SyncQueue.SyncItem);

      v210 = sub_1DEF8D4D8();
      v211 = sub_1DEF8DC98();

      if (os_log_type_enabled(v210, v211))
      {
        v212 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        aBlock = v213;
        *v212 = 136446466;
        *(v212 + 4) = sub_1DEE12A5C(v90[66], v90[67], &aBlock);
        *(v212 + 12) = 2082;
        v220 = *v209;
        v221 = Record.ID.description.getter();
        v223 = v222;
        sub_1DEE273A0(v209, type metadata accessor for SyncQueue.SyncItem);
        v224 = sub_1DEE12A5C(v221, v223, &aBlock);

        *(v212 + 14) = v224;
        v219 = "(%{public}s) Cannot sync enqueued record with non-paired relationship: %{public}s";
        goto LABEL_48;
      }
    }

    sub_1DEE273A0(v209, type metadata accessor for SyncQueue.SyncItem);
    goto LABEL_50;
  }

  sub_1DEE171B4(v74, &qword_1ECDE3D88, &qword_1DEF916A0);
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v82 = sub_1DEF8D508();
  __swift_project_value_buffer(v82, qword_1ECDF6028);

  v83 = sub_1DEF8D4D8();
  v84 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    aBlock = v86;
    *v85 = 136446210;
    *(v85 + 4) = sub_1DEE12A5C(v79[66], v79[67], &aBlock);
    _os_log_impl(&dword_1DEE0F000, v83, v84, "(%{public}s) Sync queue is empty", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x1E12CCD70](v86, -1, -1);
    MEMORY[0x1E12CCD70](v85, -1, -1);
  }

  return sub_1DEE171B4(v77, &qword_1ECDE3D88, &qword_1DEF916A0);
}

uint64_t sub_1DEE8CF78(uint64_t a1)
{
  v2 = sub_1DEF8D698();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D6D8();
  v7 = *(v14 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(a1 + 232);
  aBlock[4] = sub_1DEEAB388;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_668;
  v11 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v10, v6, v11);
  _Block_release(v11);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v14);
}

void sub_1DEE8D230(uint64_t a1)
{
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 232);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1DEF8D7B8();
  v10 = (*(v3 + 8))(v7, v2);
  if (v8)
  {
    v11 = MEMORY[0x1E12CC160](v10);
    sub_1DEE89DB8(a1);
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DEE8D35C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v30 = a2;
  v11 = type metadata accessor for PairingRelationship();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for SessionManager.Session();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = *(a3 + 232);
  sub_1DEEACA70(a4, v18, type metadata accessor for SessionManager.Session);
  sub_1DEEACA70(a5, v14, type metadata accessor for PairingRelationship);
  v19 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v20 = (v17 + *(v12 + 80) + v19) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = a1;
  *(v22 + 16) = a1;
  LOBYTE(a1) = v30 & 1;
  *(v22 + 24) = v30 & 1;
  *(v22 + 32) = a3;
  sub_1DEEAB218(v18, v22 + v19, type metadata accessor for SessionManager.Session);
  sub_1DEEAB218(v14, v22 + v20, type metadata accessor for PairingRelationship);
  v24 = (v22 + v21);
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1DEEAB280;
  *(v26 + 24) = v22;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_665;
  v27 = _Block_copy(aBlock);
  sub_1DEE39150(v23, a1);

  dispatch_sync(v33, v27);
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE8D698(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2)
  {
    v84 = a1;
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    if (swift_dynamicCast())
    {
      v12 = v83 == 2;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v54 = sub_1DEF8D508();
      __swift_project_value_buffer(v54, qword_1ECDF6028);
      sub_1DEE39150(a1, 1);

      v55 = sub_1DEF8D4D8();
      v56 = sub_1DEF8DCB8();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v90[0] = v58;
        *v57 = 136446466;
        *(v57 + 4) = sub_1DEE12A5C(a3[66], a3[67], v90);
        *(v57 + 12) = 2082;
        v59 = a1;
        v60 = sub_1DEF8D988();
        v62 = sub_1DEE12A5C(v60, v61, v90);

        *(v57 + 14) = v62;
        _os_log_impl(&dword_1DEE0F000, v55, v56, "(%{public}s) Allow list prevents sending sync item: %{public}s.", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v58, -1, -1);
        MEMORY[0x1E12CCD70](v57, -1, -1);
      }

      sub_1DEE7F920(a4);
      v63 = v84;
    }

    else
    {

      v90[0] = a1;
      v13 = a1;
      if (!swift_dynamicCast() || (v83 & 1) != 0)
      {

        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v14 = sub_1DEF8D508();
        __swift_project_value_buffer(v14, qword_1ECDF6028);
        sub_1DEE39150(a1, 1);

        v15 = sub_1DEF8D4D8();
        v16 = sub_1DEF8DC98();

        sub_1DEE39214(a1, 1);
        if (os_log_type_enabled(v15, v16))
        {
          v81 = a6;
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v84 = v18;
          *v17 = 136446466;
          *(v17 + 4) = sub_1DEE12A5C(a3[66], a3[67], &v84);
          *(v17 + 12) = 2082;
          v90[0] = a1;
          v19 = a1;
          v20 = sub_1DEF8D988();
          v22 = sub_1DEE12A5C(v20, v21, &v84);

          *(v17 + 14) = v22;
          _os_log_impl(&dword_1DEE0F000, v15, v16, "(%{public}s) Error sending sync item: %{public}s", v17, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v18, -1, -1);
          v23 = v17;
          a6 = v81;
          MEMORY[0x1E12CCD70](v23, -1, -1);
        }

        v24 = a3[74];
        swift_beginAccess();
        if (!*(*(v24 + 16) + 16) || (, , sub_1DEEAF350(a4), v26 = v25, , , (v26 & 1) == 0))
        {
          v27 = a3[51];
          v28 = a3[52];
          __swift_project_boxed_opaque_existential_1(a3 + 48, v27);
          v29 = a4 + *(type metadata accessor for SessionManager.Session() + 20);
          v30 = *(v29 + 8);
          v32 = *(v29 + 16);
          v31 = *(v29 + 24);
          v33 = *(v29 + 32);
          v84 = *v29;
          v85 = v30;
          v86 = v32;
          v87 = v31;
          v88 = v33;
          v89 = *(v29 + 40);
          v34 = a6;
          v35 = *(v28 + 24);

          v35(&v84, v27, v28);
          a6 = v34;
        }

        v36 = a5 + *(type metadata accessor for PairingRelationship() + 20);
        v37 = *(v36 + 8);
        v38 = *(v36 + 160);
        v39 = *(v36 + 168);
        v40 = *(v36 + 48);
        v84 = *v36;
        v85 = v37;
        v86 = v38;
        v87 = v39;
        v88 = v40;
        v89 = *(v36 + 32);
        v41 = *(a4 + *(type metadata accessor for SessionManager.Session() + 36));

        sub_1DEE8381C(&v84, v41);

        return a6(v42);
      }

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v65 = sub_1DEF8D508();
      __swift_project_value_buffer(v65, qword_1ECDF6028);
      sub_1DEE39150(a1, 1);

      v66 = sub_1DEF8D4D8();
      v67 = sub_1DEF8DC98();

      sub_1DEE39214(a1, 1);
      if (os_log_type_enabled(v66, v67))
      {
        v82 = a6;
        v68 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v84 = v80;
        *v68 = 136446466;
        *(v68 + 4) = sub_1DEE12A5C(a3[66], a3[67], &v84);
        *(v68 + 12) = 2082;
        v69 = a1;
        v70 = sub_1DEF8D988();
        v72 = sub_1DEE12A5C(v70, v71, &v84);

        *(v68 + 14) = v72;
        _os_log_impl(&dword_1DEE0F000, v66, v67, "(%{public}s) Network failure encountered when sending sync item: %{public}s", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v80, -1, -1);
        v73 = v68;
        a6 = v82;
        MEMORY[0x1E12CCD70](v73, -1, -1);
      }

      sub_1DEE7F920(a4);
      v74 = a5 + *(type metadata accessor for PairingRelationship() + 20);
      v75 = *(v74 + 8);
      v76 = *(v74 + 160);
      v77 = *(v74 + 168);
      v78 = *(v74 + 48);
      v84 = *v74;
      v85 = v75;
      v86 = v76;
      v87 = v77;
      v88 = v78;
      v89 = *(v74 + 32);
      v79 = *(a4 + *(type metadata accessor for SessionManager.Session() + 36));

      sub_1DEE8381C(&v84, v79);

      v63 = v90[0];
    }

    return a6(v42);
  }

  v43 = a3[74];
  swift_beginAccess();
  if (!*(*(v43 + 16) + 16) || (, , sub_1DEEAF350(a4), v45 = v44, , v42 = , (v45 & 1) == 0))
  {
    v46 = a3[51];
    v47 = a3[52];
    __swift_project_boxed_opaque_existential_1(a3 + 48, v46);
    v48 = a4 + *(type metadata accessor for SessionManager.Session() + 20);
    v49 = *(v48 + 8);
    v51 = *(v48 + 16);
    v50 = *(v48 + 24);
    v52 = *(v48 + 32);
    v84 = *v48;
    v85 = v49;
    v86 = v51;
    v87 = v50;
    v88 = v52;
    v89 = *(v48 + 40);
    v53 = *(v47 + 24);

    v53(&v84, v46, v47);
  }

  return a6(v42);
}

uint64_t sub_1DEE8DED0(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19[-v4];
  v6 = sub_1DEF8D1E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DEE17214(a1, v5, &qword_1ECDE4890, &qword_1DEF90990);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_1DEE171B4(v5, &qword_1ECDE4890, &qword_1DEF90990);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = [objc_opt_self() defaultManager];
    v13 = sub_1DEF8D178();
    v20[0] = 0;
    v14 = [v12 removeItemAtURL:v13 error:v20];

    if (v14)
    {
      v15 = v20[0];
    }

    else
    {
      v16 = v20[0];
      v17 = sub_1DEF8D148();

      swift_willThrow();
    }

    result = (*(v7 + 8))(v10, v6);
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DEE8E124(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v78 = a5;
  v79 = a6;
  v82 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v76 - v13;
  v15 = type metadata accessor for PairingRelationship();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v76 - v20;
  swift_beginAccess();
  sub_1DEE29594((a1 + 24), v84);
  v22 = v85;
  v23 = v86;
  __swift_project_boxed_opaque_existential_1(v84, v85);
  v24 = *(v23 + 8);
  v80 = a2;
  v81 = a3;
  MetadataStoring.pairingRelationship(remoteDeviceID:)(a2, a3, v22, v24, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1DEE171B4(v14, &qword_1ECDE3C18, &unk_1DEF94D20);
    __swift_destroy_boxed_opaque_existential_1(v84);
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v25 = sub_1DEF8D508();
    __swift_project_value_buffer(v25, qword_1ECDF6028);
    v26 = v81;

    v27 = sub_1DEF8D4D8();
    v28 = sub_1DEF8DC98();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v82;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v84[0] = v32;
      *v31 = 136446466;
      *(v31 + 4) = sub_1DEE12A5C(a1[66], a1[67], v84);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_1DEE12A5C(v80, v26, v84);
      _os_log_impl(&dword_1DEE0F000, v27, v28, "%{public}s Cannot pair with a device we have not already discovered: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v32, -1, -1);
      MEMORY[0x1E12CCD70](v31, -1, -1);
    }

    v33 = 1;
  }

  else
  {
    sub_1DEEAB218(v14, v21, type metadata accessor for PairingRelationship);
    __swift_destroy_boxed_opaque_existential_1(v84);
    v34 = &v21[*(v15 + 20)];
    v35 = *(v34 + 4);
    v36 = *(v34 + 5);
    if (qword_1ED786060 != -1)
    {
      swift_once();
    }

    v37 = v35 >= *(&xmmword_1ED786068 + 1) && xmmword_1ED786068 >= v36;
    v30 = v82;
    if (v37)
    {
      v51 = *v34;
      v52 = *(v34 + 1);
      v54 = *(v34 + 20);
      v53 = *(v34 + 21);
      v55 = v34[48];
      v56 = a4[1];
      v76 = *a4;
      v77 = v21;
      v58 = a4[2];
      v57 = a4[3];
      v60 = a4[4];
      v59 = a4[5];
      v61 = a4[6];
      *a4 = v51;
      a4[1] = v52;
      a4[2] = v54;
      a4[3] = v53;
      a4[4] = v55;
      *(a4 + 5) = *(v34 + 2);

      sub_1DEE46550(v76, v56);
      v62 = a1 + 75;
      swift_beginAccess();
      v63 = a1[75];
      if (*(v63 + 16))
      {
        v64 = a1[75];

        v65 = v81;
        v66 = sub_1DEE13224(v80, v81);
        if (v67)
        {
          v68 = *(*(v63 + 56) + 8 * v66);
        }

        else
        {
          v68 = MEMORY[0x1E69E7CC0];
        }

        v30 = v82;
        v69 = v77;
      }

      else
      {
        v68 = MEMORY[0x1E69E7CC0];
        v65 = v81;
        v30 = v82;
        v69 = v77;
      }

      v70 = swift_allocObject();
      *(v70 + 16) = v78;
      *(v70 + 24) = v79;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_1DEF38190(0, v68[2] + 1, 1, v68);
      }

      v72 = v68[2];
      v71 = v68[3];
      if (v72 >= v71 >> 1)
      {
        v68 = sub_1DEF38190((v71 > 1), v72 + 1, 1, v68);
      }

      v68[2] = v72 + 1;
      v73 = &v68[2 * v72];
      v73[4] = sub_1DEEAAEB8;
      v73[5] = v70;
      swift_beginAccess();

      v74 = *v62;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = *v62;
      *v62 = 0x8000000000000000;
      sub_1DEF3E394(v68, v80, v65, isUniquelyReferenced_nonNull_native);

      *v62 = v83;
      swift_endAccess();
      sub_1DEE273A0(v69, type metadata accessor for PairingRelationship);
      v33 = 8;
    }

    else
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v38 = sub_1DEF8D508();
      __swift_project_value_buffer(v38, qword_1ECDF6028);
      v39 = v77;
      sub_1DEEACA70(v21, v77, type metadata accessor for PairingRelationship);

      v40 = sub_1DEF8D4D8();
      v41 = v21;
      v42 = sub_1DEF8DC98();

      if (os_log_type_enabled(v40, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v84[0] = v44;
        *v43 = 136446466;
        *(v43 + 4) = sub_1DEE12A5C(a1[66], a1[67], v84);
        *(v43 + 12) = 2082;
        v45 = PairingRelationship.description.getter();
        v46 = v39;
        v47 = v45;
        v49 = v48;
        sub_1DEE273A0(v46, type metadata accessor for PairingRelationship);
        v50 = sub_1DEE12A5C(v47, v49, v84);

        *(v43 + 14) = v50;
        _os_log_impl(&dword_1DEE0F000, v40, v42, "%{public}s Cannot pair with a device that has an incompatible protocol version: %{public}s", v43, 0x16u);
        v33 = 2;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v44, -1, -1);
        MEMORY[0x1E12CCD70](v43, -1, -1);

        sub_1DEE273A0(v41, type metadata accessor for PairingRelationship);
      }

      else
      {

        sub_1DEE273A0(v39, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v41, type metadata accessor for PairingRelationship);
        v33 = 2;
      }
    }
  }

  *v30 = v33;
}

void sub_1DEE8E8CC(void (*a1)(void *, uint64_t), uint64_t a2, char a3)
{
  sub_1DEEAA8E8();
  v5 = swift_allocError();
  *v6 = a3;
  a1(v5, 1);
}

uint64_t sub_1DEE8E940(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 + *(type metadata accessor for PairingRelationship() + 20);
  v6 = *(v5 + 8);
  v8 = *(v5 + 160);
  v7 = *(v5 + 168);
  v9 = *(v5 + 48);
  *&v15 = *v5;
  *(&v15 + 1) = v6;
  v16 = v8;
  v17 = v7;
  v18 = v9;
  v19 = *(v5 + 32);
  v14[0] = 0;
  v14[1] = 0;
  v12 = 0;
  v13 = 0;

  sub_1DEE76BD8(&v15, v14, &v12);

  return a1(v10);
}

uint64_t sub_1DEE8E9F8()
{
  v0 = sub_1DEF8D788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 232);
    *v4 = v6;
    (*(v1 + 104))(v4, *MEMORY[0x1E69E8020], v0);
    v7 = v6;
    LOBYTE(v6) = sub_1DEF8D7B8();
    result = (*(v1 + 8))(v4, v0);
    if (v6)
    {
      v8 = sub_1DEE54CAC();
      sub_1DEE56F88(v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DEE8EB3C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v34 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_1DEF8D378();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v32 - v14;
  sub_1DEE29594(a3 + 304, v40);
  v15 = v41;
  v16 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400) + 48);
  swift_beginAccess();
  sub_1DEE29594(a3 + 192, v37);
  v18 = v38;
  v19 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v20 = MetadataStoring.hasRecords(from:)(a2 + v17, v18, *(v19 + 8));
  v21 = a2 + v17;
  v22 = v35;
  sub_1DEF8353C(v21, v36, v20 & 1, v15, v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v37);
  if ((*(v22 + 48))(v9, 1, v10) == 1)
  {
    sub_1DEE171B4(v9, &qword_1ECDE4DC0, &qword_1DEF91640);
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    v24 = *(v22 + 32);
    v25 = v32;
    v24(v32, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v27 = v33;
    v26 = v34;
    v24(v33, v34, v10);
    sub_1DEE2BAF8(&qword_1ECDE4DE0, MEMORY[0x1E6969530]);
    v28 = sub_1DEF8D8E8();
    v29 = *(v22 + 8);
    if (v28)
    {
      v29(v25, v10);
      v30 = v26;
      v31 = v27;
    }

    else
    {
      v29(v27, v10);
      v30 = v26;
      v31 = v25;
    }

    return (v24)(v30, v31, v10);
  }
}

uint64_t sub_1DEE8EE64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v128 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v150 = &v128 - v5;
  v129 = type metadata accessor for PairingRelationship();
  v143 = *(v129 - 8);
  v6 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v8 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v128 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v128 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v146 = &v128 - v15;
  v157 = sub_1DEF8D3F8();
  v145 = *(v157 - 8);
  v16 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v142 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v158 = &v128 - v23;
  v152 = sub_1DEF8D378();
  v24 = *(v152 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v134 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v149 = &v128 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v138 = &v128 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v141 = &v128 - v32;
  v33 = sub_1DEF8D788();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = (&v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v159 = result;
    v39 = *(result + 232);
    *v37 = v39;
    (*(v34 + 104))(v37, *MEMORY[0x1E69E8020], v33);
    v40 = v39;
    LOBYTE(v39) = sub_1DEF8D7B8();
    (*(v34 + 8))(v37, v33);
    if (v39)
    {
      if (qword_1ECDE2E58 == -1)
      {
LABEL_4:
        v41 = sub_1DEF8D508();
        v42 = __swift_project_value_buffer(v41, qword_1ECDF6028);
        v43 = v159;

        v133 = v42;
        v44 = sub_1DEF8D4D8();
        v45 = sub_1DEF8DCB8();

        v46 = os_log_type_enabled(v44, v45);
        v135 = v3;
        v128 = v8;
        v132 = v11;
        v47 = v152;
        v156 = v21;
        if (v46)
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v160[0] = v49;
          *v48 = 136446210;
          v50 = *(v43 + 66);
          v51 = *(v43 + 67);

          v11 = sub_1DEE12A5C(v50, v51, v160);
          v21 = v156;

          *(v48 + 4) = v11;
          _os_log_impl(&dword_1DEE0F000, v44, v45, "(%{public}s) Suspension timer fired", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v49);
          MEMORY[0x1E12CCD70](v49, -1, -1);
          MEMORY[0x1E12CCD70](v48, -1, -1);
        }

        v52 = v138;
        sub_1DEF8D348();
        sub_1DEF8D2E8();
        v53 = v24 + 8;
        v3 = *(v24 + 8);
        (v3)(v52, v47);
        swift_beginAccess();
        sub_1DEE29594((v43 + 192), v160);
        v55 = v161;
        v54 = v162;
        __swift_project_boxed_opaque_existential_1(v160, v161);
        v56 = (*(*(*(v54 + 1) + 8) + 32))(v55);
        v57 = *(v56 + 64);
        v151 = v56 + 64;
        v144 = v56;
        v58 = 1 << *(v56 + 32);
        v59 = -1;
        if (v58 < 64)
        {
          v59 = ~(-1 << v58);
        }

        v24 = v59 & v57;
        __swift_destroy_boxed_opaque_existential_1(v160);
        v60 = 0;
        v61 = (v58 + 63) >> 6;
        v140 = v145 + 16;
        v139 = v145 + 32;
        v155 = (v53 + 40);
        v153 = v53;
        v136 = (v53 + 24);
        v147 = (v145 + 8);
        *&v62 = 136446466;
        v130 = v62;
        v63 = v158;
        v148 = v61;
        v137 = v3;
        while (1)
        {
          if (!v24)
          {
            if (v61 <= v60 + 1)
            {
              v65 = v60 + 1;
            }

            else
            {
              v65 = v61;
            }

            v66 = v65 - 1;
            v67 = v152;
            v8 = v159;
            while (1)
            {
              v64 = v60 + 1;
              if (__OFADD__(v60, 1))
              {
                break;
              }

              if (v64 >= v61)
              {
                v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
                (*(*(v110 - 8) + 56))(v21, 1, 1, v110);
                v24 = 0;
                v60 = v66;
                goto LABEL_23;
              }

              v24 = *(v151 + 8 * v64);
              ++v60;
              if (v24)
              {
                v60 = v64;
                goto LABEL_22;
              }
            }

            __break(1u);
            goto LABEL_43;
          }

          v64 = v60;
LABEL_22:
          v68 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          v69 = v68 | (v64 << 6);
          v70 = v144;
          v71 = v145;
          v72 = v142;
          v73 = v157;
          (*(v145 + 16))(v142, *(v144 + 48) + *(v145 + 72) * v69, v157);
          v74 = v146;
          sub_1DEEACA70(*(v70 + 56) + *(v143 + 72) * v69, v146, type metadata accessor for PairingRelationship);
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
          v76 = *(v75 + 48);
          v77 = *(v71 + 32);
          v21 = v156;
          v77(v156, v72, v73);
          sub_1DEEAB218(v74, &v21[v76], type metadata accessor for PairingRelationship);
          (*(*(v75 - 8) + 56))(v21, 0, 1, v75);
          v67 = v152;
          v63 = v158;
          v8 = v159;
LABEL_23:
          sub_1DEE1BA88(v21, v63, &qword_1ECDE3C98, &unk_1DEF95610);
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
          if ((*(*(v78 - 8) + 48))(v63, 1, v78) == 1)
          {

            sub_1DEE53BFC(v127);

            return v137(v141, v67);
          }

          v79 = v154;
          sub_1DEEAB218(v63 + *(v78 + 48), v154, type metadata accessor for PairingRelationship);
          sub_1DEE29594((v8 + 192), v160);
          v80 = v161;
          v81 = v162;
          __swift_project_boxed_opaque_existential_1(v160, v161);
          v82 = MetadataStoring.hasRecords(from:)(v79, v80, *(v81 + 1));
          __swift_destroy_boxed_opaque_existential_1(v160);
          sub_1DEE29594((v8 + 304), v160);
          v83 = v161;
          v11 = v162;
          __swift_project_boxed_opaque_existential_1(v160, v161);
          v3 = v8;
          v84 = v150;
          (*(v11 + 1))(v79, v82 & 1, v83, v11);
          v85 = v84;
          v86 = *v155;
          if ((*v155)(v85, 1, v67) != 1)
          {
            break;
          }

          sub_1DEE171B4(v85, &qword_1ECDE4DC0, &qword_1DEF91640);
          __swift_destroy_boxed_opaque_existential_1(v160);
          sub_1DEE29594((v3 + 304), v160);
          v87 = v161;
          v11 = v162;
          __swift_project_boxed_opaque_existential_1(v160, v161);
          v88 = v82 & 1;
          v89 = v135;
          (*(v11 + 2))(v79, v88, v87, v11);
          if (v86(v89, 1, v67) == 1)
          {
            sub_1DEE273A0(v79, type metadata accessor for PairingRelationship);
            sub_1DEE171B4(v89, &qword_1ECDE4DC0, &qword_1DEF91640);
            __swift_destroy_boxed_opaque_existential_1(v160);
            goto LABEL_10;
          }

          v90 = v134;
          (*v136)(v134, v89, v67);
          __swift_destroy_boxed_opaque_existential_1(v160);
          v91 = v138;
          sub_1DEF8D2E8();
          sub_1DEE2BAF8(&qword_1ECDE4DE0, MEMORY[0x1E6969530]);
          v92 = sub_1DEF8D8E8();
          v3 = v137;
          v137(v91, v67);
          if (v92)
          {
            (v3)(v90, v67);
            v93 = v154;
            goto LABEL_37;
          }

          v111 = v154;
          v112 = v128;
          sub_1DEEACA70(v154, v128, type metadata accessor for PairingRelationship);
          v113 = v159;

          v11 = sub_1DEF8D4D8();
          v114 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v11, v114))
          {
            v115 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            v160[0] = v131;
            *v115 = v130;
            v116 = *(v113 + 66);
            v117 = *(v159 + 67);

            v118 = sub_1DEE12A5C(v116, v117, v160);

            *(v115 + 4) = v118;
            *(v115 + 12) = 2080;
            v119 = PairingRelationship.description.getter();
            v121 = v120;
            sub_1DEE273A0(v112, type metadata accessor for PairingRelationship);
            v122 = sub_1DEE12A5C(v119, v121, v160);

            *(v115 + 14) = v122;
            _os_log_impl(&dword_1DEE0F000, v11, v114, "(%{public}s) Unpairing inactive relationship: %s", v115, 0x16u);
            v123 = v131;
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v123, -1, -1);
            v124 = v115;
            v111 = v154;
            MEMORY[0x1E12CCD70](v124, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v112, type metadata accessor for PairingRelationship);
          }

          v21 = v156;
          v125 = *(v129 + 20);
          v160[0] = 0;
          v160[1] = 0;
          v126 = v146;
          sub_1DEE5F828((v111 + v125), v160, 2, 1, v146);
          sub_1DEE273A0(v126, type metadata accessor for PairingRelationship);
          (v3)(v134, v67);
          sub_1DEE273A0(v111, type metadata accessor for PairingRelationship);
LABEL_11:
          v63 = v158;
          (*v147)(v158, v157);
          v61 = v148;
        }

        (*v136)(v149, v85, v67);
        __swift_destroy_boxed_opaque_existential_1(v160);
        v94 = v138;
        sub_1DEF8D2E8();
        sub_1DEE2BAF8(&qword_1ECDE4DE0, MEMORY[0x1E6969530]);
        v95 = sub_1DEF8D8E8();
        v3 = v137;
        v137(v94, v67);
        v96 = v79;
        if ((v95 & 1) == 0)
        {
          v97 = v132;
          sub_1DEEACA70(v79, v132, type metadata accessor for PairingRelationship);
          v98 = v159;

          v11 = sub_1DEF8D4D8();
          v99 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v11, v99))
          {
            v100 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            v160[0] = v131;
            *v100 = v130;
            v101 = *(v98 + 66);
            v102 = *(v159 + 67);

            v103 = sub_1DEE12A5C(v101, v102, v160);

            *(v100 + 4) = v103;
            *(v100 + 12) = 2080;
            v104 = PairingRelationship.description.getter();
            v106 = v105;
            sub_1DEE273A0(v97, type metadata accessor for PairingRelationship);
            v107 = sub_1DEE12A5C(v104, v106, v160);

            *(v100 + 14) = v107;
            _os_log_impl(&dword_1DEE0F000, v11, v99, "(%{public}s) Discarding data for inactive relationship: %s", v100, 0x16u);
            v108 = v131;
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v108, -1, -1);
            v109 = v100;
            v96 = v154;
            MEMORY[0x1E12CCD70](v109, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v97, type metadata accessor for PairingRelationship);
          }

          sub_1DEE67760(v96);
        }

        (v3)(v149, v67);
        v93 = v96;
LABEL_37:
        sub_1DEE273A0(v93, type metadata accessor for PairingRelationship);
LABEL_10:
        v21 = v156;
        goto LABEL_11;
      }
    }

    else
    {
LABEL_43:
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  return result;
}

BOOL sub_1DEE8FFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  sub_1DEE29594(v3 + 192, v22);
  v9 = v23;
  v8 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v10 = (*(*(*(v8 + 8) + 8) + 32))(v9);
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v11 = sub_1DEF2BBC8(sub_1DEEAA93C, v21, v10);

  __swift_destroy_boxed_opaque_existential_1(v22);
  if (qword_1ECDE37E0 != -1)
  {
    swift_once();
  }

  v12 = qword_1ECDF60A8;
  if (*(qword_1ECDF60A8 + 16) && (v13 = sub_1DEEAF2E8(*(v4 + 96)), (v14 & 1) != 0) && (v15 = *(*(v12 + 56) + 8 * v13), *(v15 + 16)) && (v16 = sub_1DEEAF2E8(*(a1 + 48)), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v11 + 16);

  return v19 < v18;
}

BOOL sub_1DEE90164(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v69 = a4;
  v70 = a5;
  v8 = type metadata accessor for DeviceDescriptor();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = (&v63 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v63 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v63 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v63 - v27;
  v29 = sub_1DEF8D3F8();
  v30 = *(v29 - 8);
  v31 = v29;
  (*(v30 + 16))(v28, a1);
  sub_1DEEACA70(a2, &v28[*(v16 + 48)], type metadata accessor for PairingRelationship);
  sub_1DEE17214(v28, v25, &unk_1ECDE4350, &qword_1DEF93400);
  v71 = v16;
  v32 = &v25[*(v16 + 48)];
  v33 = type metadata accessor for PairingRelationship();
  sub_1DEEACA70(v32 + *(v33 + 20), v15, type metadata accessor for DeviceDescriptor);
  sub_1DEE273A0(v32, type metadata accessor for PairingRelationship);
  v35 = *v15;
  v34 = v15[1];

  sub_1DEE273A0(v15, type metadata accessor for DeviceDescriptor);
  v36 = *a3;
  v37 = a3[1];
  v66 = a3;
  if (v35 == v36 && v34 == v37)
  {
    v39 = 1;
  }

  else
  {
    v39 = sub_1DEF8E4E8();
  }

  v40 = *(v30 + 8);
  v41 = v25;
  v42 = v31;
  v40(v41, v31);
  if (v39)
  {
    goto LABEL_13;
  }

  v43 = v33;
  v44 = v72;
  sub_1DEE17214(v28, v72, &unk_1ECDE4350, &qword_1DEF93400);
  v45 = v71;
  v46 = v44 + *(v71 + 48);
  v47 = v46 + *(v33 + 20);
  v48 = v68;
  sub_1DEEACA70(v47, v68, type metadata accessor for DeviceDescriptor);
  sub_1DEE273A0(v46, type metadata accessor for PairingRelationship);
  v50 = *v48;
  v49 = v48[1];

  sub_1DEE273A0(v48, type metadata accessor for DeviceDescriptor);
  if (v50 == v69 && v49 == v70)
  {

    v51 = v72;
  }

  else
  {
    v52 = sub_1DEF8E4E8();

    v40(v72, v42);
    if (v52)
    {
      goto LABEL_13;
    }

    v54 = v67;
    sub_1DEE17214(v28, v67, &unk_1ECDE4350, &qword_1DEF93400);
    v55 = v54 + *(v45 + 48);
    v56 = (v55 + *(v43 + 32));
    v72 = v43;
    v57 = *v56;
    v58 = v56[1];
    sub_1DEE4F8C0(*v56, v58);
    sub_1DEE273A0(v55, type metadata accessor for PairingRelationship);
    if (v58 == 2)
    {
      sub_1DEE4F8D4(v57, 2uLL);
      sub_1DEE4F8D4(0, 2uLL);
      sub_1DEE4F8D4(v57, 2uLL);
      v40(v54, v42);
      v59 = v64;
      sub_1DEE1BA88(v28, v64, &unk_1ECDE4350, &qword_1DEF93400);
      v60 = v59 + *(v45 + 48);
      v61 = v65;
      sub_1DEEACA70(v60 + *(v72 + 20), v65, type metadata accessor for DeviceDescriptor);
      sub_1DEE273A0(v60, type metadata accessor for PairingRelationship);
      LODWORD(v60) = *(v61 + 48);
      sub_1DEE273A0(v61, type metadata accessor for DeviceDescriptor);
      v62 = v60 == *(v66 + 48);
      v40(v59, v42);
      return v62;
    }

    sub_1DEE4F8C0(v57, v58);
    sub_1DEE4F8D4(v57, v58);
    sub_1DEE4F8D4(0, 2uLL);
    sub_1DEE4F8D4(v57, v58);
    v51 = v54;
  }

  v40(v51, v42);
LABEL_13:
  sub_1DEE171B4(v28, &unk_1ECDE4350, &qword_1DEF93400);
  return 0;
}

void sub_1DEE9074C()
{
  v1 = type metadata accessor for PairingRelationship();
  v82 = *(v1 - 8);
  v2 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v76 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v76 - v8;
  v9 = sub_1DEF8D788();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + 232);
  *v14 = v15;
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8020], v9, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  v18 = *(v10 + 8);
  v17 = v10 + 8;
  v18(v14, v9);
  if ((v15 & 1) == 0)
  {
    goto LABEL_52;
  }

  sub_1DEE927F8(0, 0);
  v17 = v0;
  if (qword_1ECDE37E0 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v19 = qword_1ECDF60A8;
    v20 = v90;
    v21 = v87;
    if (!*(qword_1ECDF60A8 + 16))
    {
      break;
    }

    v22 = sub_1DEEAF2E8(*(v17 + 96));
    if ((v23 & 1) == 0)
    {
      break;
    }

    v24 = *(*(v19 + 56) + 8 * v22);
    v25 = v24 + 64;
    v26 = 1 << *(v24 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v24 + 64);
    v29 = (v26 + 63) >> 6;

    v30 = 0;
    *&v31 = 136446722;
    v76 = v31;
    *&v31 = 136446466;
    v85 = v31;
    v79 = v24;
    v80 = v29;
    v86 = v1;
    v78 = v24 + 64;
    while (v28)
    {
      v32 = v30;
LABEL_15:
      v84 = (v28 - 1) & v28;
      v33 = __clz(__rbit64(v28)) | (v32 << 6);
      v34 = v32;
      v35 = *(*(v24 + 56) + 8 * v33);
      LODWORD(v88) = *(*(v24 + 48) + v33);
      LOBYTE(v91[0]) = v88;
      v36 = sub_1DEE91A74(v91, v35);
      v37 = *(v36 + 16);
      if (v37)
      {
        v81 = v34;
        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v38 = sub_1DEF8D508();
        v39 = __swift_project_value_buffer(v38, qword_1ECDF6028);
        swift_bridgeObjectRetain_n();

        v40 = v36;
        v89 = v39;
        v41 = sub_1DEF8D4D8();
        v42 = sub_1DEF8DCB8();

        v43 = os_log_type_enabled(v41, v42);
        v83 = v40;
        if (v43)
        {
          v44 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v91[0] = v77;
          *v44 = v76;
          *(v44 + 4) = sub_1DEE12A5C(*(v17 + 528), *(v17 + 536), v91);
          *(v44 + 12) = 2082;
          v45 = 0x6863746177;
          if (v88 != 4)
          {
            v45 = 30324;
          }

          v46 = 0xE200000000000000;
          if (v88 == 4)
          {
            v46 = 0xE500000000000000;
          }

          if (v88 == 3)
          {
            v45 = 6578544;
          }

          v47 = 0xE300000000000000;
          if (v88 == 3)
          {
            v46 = 0xE300000000000000;
          }

          v48 = 6513005;
          if (v88 != 1)
          {
            v48 = 0x656E6F6870;
            v47 = 0xE500000000000000;
          }

          if (!v88)
          {
            v48 = 0x6E776F6E6B6E75;
            v47 = 0xE700000000000000;
          }

          if (v88 <= 2)
          {
            v49 = v48;
          }

          else
          {
            v49 = v45;
          }

          if (v88 <= 2)
          {
            v50 = v47;
          }

          else
          {
            v50 = v46;
          }

          v51 = sub_1DEE12A5C(v49, v50, v91);

          *(v44 + 14) = v51;
          *(v44 + 22) = 2050;
          v52 = v83;
          v53 = *(v83 + 16);

          *(v44 + 24) = v53;

          _os_log_impl(&dword_1DEE0F000, v41, v42, "(%{public}s) Too many paired %{public}s devices; unpairing %{public}ld", v44, 0x20u);
          v54 = v77;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v54, -1, -1);
          MEMORY[0x1E12CCD70](v44, -1, -1);

          v40 = v52;
          v21 = v87;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v55 = v40 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
        v88 = *(v82 + 72);
        do
        {
          sub_1DEEACA70(v55, v21, type metadata accessor for PairingRelationship);
          sub_1DEEACA70(v21, v20, type metadata accessor for PairingRelationship);

          v67 = sub_1DEF8D4D8();
          v68 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v67, v68))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v91[0] = v57;
            *v56 = v85;
            *(v56 + 4) = sub_1DEE12A5C(*(v17 + 528), *(v17 + 536), v91);
            *(v56 + 12) = 2082;
            v58 = PairingRelationship.description.getter();
            v59 = v4;
            v60 = v17;
            v62 = v61;
            sub_1DEE273A0(v90, type metadata accessor for PairingRelationship);
            v63 = sub_1DEE12A5C(v58, v62, v91);
            v17 = v60;
            v4 = v59;
            v20 = v90;

            *(v56 + 14) = v63;
            _os_log_impl(&dword_1DEE0F000, v67, v68, "(%{public}s) Unpairing relationship (%{public}s", v56, 0x16u);
            swift_arrayDestroy();
            v64 = v57;
            v1 = v86;
            MEMORY[0x1E12CCD70](v64, -1, -1);
            v65 = v56;
            v21 = v87;
            MEMORY[0x1E12CCD70](v65, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v20, type metadata accessor for PairingRelationship);
          }

          v66 = *(v1 + 20);
          v91[0] = 0;
          v91[1] = 0;
          sub_1DEE5F828(v21 + v66, v91, 2, 0);
          sub_1DEE273A0(v4, type metadata accessor for PairingRelationship);
          sub_1DEE273A0(v21, type metadata accessor for PairingRelationship);
          v55 += v88;
          --v37;
        }

        while (v37);

        v30 = v81;
        v25 = v78;
        v24 = v79;
      }

      else
      {

        v30 = v34;
      }

      v29 = v80;
      v28 = v84;
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

        return;
      }

      v28 = *(v25 + 8 * v32);
      ++v30;
      if (v28)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v69 = sub_1DEF8D508();
  __swift_project_value_buffer(v69, qword_1ECDF6028);

  v70 = sub_1DEF8D4D8();
  v71 = sub_1DEF8DC98();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = v17;
    v75 = v73;
    v91[0] = v73;
    *v72 = 136446210;
    *(v72 + 4) = sub_1DEE12A5C(*(v74 + 528), *(v74 + 536), v91);
    _os_log_impl(&dword_1DEE0F000, v70, v71, "(%{public}s) Local device has no paired device limits", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x1E12CCD70](v75, -1, -1);
    MEMORY[0x1E12CCD70](v72, -1, -1);
  }
}
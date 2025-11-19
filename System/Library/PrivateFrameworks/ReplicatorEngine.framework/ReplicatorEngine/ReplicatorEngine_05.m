uint64_t sub_1DEE90FF8()
{
  v1 = v0;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v2 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v89 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v96 = &v89 - v7;
  v91 = type metadata accessor for PairingRelationship();
  v8 = *(v91 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v100 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v89 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v89 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v89 - v18;
  v20 = sub_1DEF8D788();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = (&v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v1 + 232);
  *v25 = v26;
  (*(v21 + 104))(v25, *MEMORY[0x1E69E8020], v20, v23);
  v27 = v26;
  v28 = sub_1DEF8D7B8();
  result = (*(v21 + 8))(v25, v20);
  if ((v28 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  sub_1DEE29594(v1 + 192, v109);
  v31 = v110;
  v30 = v111;
  __swift_project_boxed_opaque_existential_1(v109, v110);
  v32 = (*(*(*(v30 + 8) + 8) + 32))(v31);

  v33 = v1;
  v34 = sub_1DEEA4880(v32, v1, sub_1DEEA6428, sub_1DEEA6428);

  v92 = v33;

  __swift_destroy_boxed_opaque_existential_1(v109);
  v35 = v34[2];
  v107 = v13;
  v101 = v16;
  if (v35)
  {
    v109[0] = MEMORY[0x1E69E7CC0];
    sub_1DEEC7DA4(0, v35, 0);
    v108 = v109[0];
    v36 = (v34 + 8);
    v37 = -1 << *(v34 + 32);
    result = sub_1DEF8DE18();
    v38 = result;
    v39 = 0;
    v90 = (v34 + 9);
    v93 = v35;
    v94 = (v34 + 8);
    v95 = v8;
    while ((v38 & 0x8000000000000000) == 0 && v38 < 1 << *(v34 + 32))
    {
      if ((*&v36[8 * (v38 >> 6)] & (1 << v38)) == 0)
      {
        goto LABEL_32;
      }

      v104 = 1 << v38;
      *&v105 = v38 >> 6;
      v41 = *(v34 + 9);
      v102 = v39;
      v103 = v41;
      v42 = v34;
      v43 = v99;
      v44 = *(v99 + 48);
      v45 = v42[6];
      v46 = sub_1DEF8D3F8();
      v47 = *(v46 - 8);
      v48 = v19;
      v49 = v96;
      (*(v47 + 16))(v96, v45 + *(v47 + 72) * v38, v46);
      v50 = v42[7];
      v106 = *(v8 + 72);
      sub_1DEEACA70(v50 + v106 * v38, &v49[v44], type metadata accessor for PairingRelationship);
      v51 = v97;
      (*(v47 + 32))(v97, v49, v46);
      v52 = &v49[v44];
      v19 = v48;
      sub_1DEEAB218(v52, v51 + *(v43 + 48), type metadata accessor for PairingRelationship);
      v53 = v98;
      sub_1DEE1BA88(v51, v98, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEEAB218(v53 + *(v43 + 48), v48, type metadata accessor for PairingRelationship);
      (*(v47 + 8))(v53, v46);
      v54 = v108;
      v109[0] = v108;
      v56 = *(v108 + 16);
      v55 = *(v108 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1DEEC7DA4(v55 > 1, v56 + 1, 1);
        v54 = v109[0];
      }

      *(v54 + 16) = v56 + 1;
      v8 = v95;
      v57 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v108 = v54;
      result = sub_1DEEAB218(v48, v54 + v57 + v56 * v106, type metadata accessor for PairingRelationship);
      v40 = 1 << *(v42 + 32);
      if (v38 >= v40)
      {
        goto LABEL_33;
      }

      v34 = v42;
      v36 = v94;
      v58 = *&v94[8 * v105];
      if ((v58 & v104) == 0)
      {
        goto LABEL_34;
      }

      if (v103 != *(v34 + 9))
      {
        goto LABEL_35;
      }

      v59 = v58 & (-2 << (v38 & 0x3F));
      if (v59)
      {
        v40 = __clz(__rbit64(v59)) | v38 & 0x7FFFFFFFFFFFFFC0;
        v13 = v107;
        v16 = v101;
      }

      else
      {
        v60 = v105 << 6;
        v61 = v105 + 1;
        v62 = &v90[8 * v105];
        v13 = v107;
        v16 = v101;
        while (v61 < (v40 + 63) >> 6)
        {
          v64 = *v62++;
          v63 = v64;
          v60 += 64;
          ++v61;
          if (v64)
          {
            result = sub_1DEE2F804(v38, v103, 0);
            v40 = __clz(__rbit64(v63)) + v60;
            goto LABEL_5;
          }
        }

        result = sub_1DEE2F804(v38, v103, 0);
      }

LABEL_5:
      v39 = v102 + 1;
      v38 = v40;
      if (v102 + 1 == v93)
      {

        v66 = v108;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v67 = *(v66 + 16);
  v68 = v92;
  if (v67)
  {
    v69 = *(v8 + 80);
    v108 = v66;
    v70 = v66 + ((v69 + 32) & ~v69);
    v106 = *(v8 + 72);
    *&v65 = 136446466;
    v105 = v65;
    do
    {
      sub_1DEEACA70(v70, v16, type metadata accessor for PairingRelationship);
      v73 = v100;
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v74 = sub_1DEF8D508();
      __swift_project_value_buffer(v74, qword_1ECDF6028);
      sub_1DEEACA70(v16, v13, type metadata accessor for PairingRelationship);
      sub_1DEEACA70(v16, v73, type metadata accessor for PairingRelationship);
      v75 = sub_1DEF8D4D8();
      v76 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v109[0] = v78;
        *v77 = v105;
        v79 = &v13[*(v91 + 20)];
        v80 = *v79;
        v81 = v79[1];

        sub_1DEE273A0(v107, type metadata accessor for PairingRelationship);
        v82 = sub_1DEE12A5C(v80, v81, v109);

        *(v77 + 4) = v82;
        *(v77 + 12) = 2082;
        sub_1DEF8D3F8();
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v83 = sub_1DEF8E2E8();
        v85 = v84;
        sub_1DEE273A0(v73, type metadata accessor for PairingRelationship);
        v86 = sub_1DEE12A5C(v83, v85, v109);
        v13 = v107;

        *(v77 + 14) = v86;
        _os_log_impl(&dword_1DEE0F000, v75, v76, "Forgetting device: %{public}s (introduced relationship: %{public}s)", v77, 0x16u);
        swift_arrayDestroy();
        v87 = v78;
        v68 = v92;
        MEMORY[0x1E12CCD70](v87, -1, -1);
        v88 = v77;
        v16 = v101;
        MEMORY[0x1E12CCD70](v88, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v73, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v13, type metadata accessor for PairingRelationship);
      }

      sub_1DEE67760(v16);
      sub_1DEE29594(v68 + 192, v109);
      v72 = v110;
      v71 = v111;
      __swift_project_boxed_opaque_existential_1(v109, v110);
      (*(*(v71 + 16) + 120))(v16, v72);
      sub_1DEE273A0(v16, type metadata accessor for PairingRelationship);
      __swift_destroy_boxed_opaque_existential_1(v109);
      v70 += v106;
      --v67;
    }

    while (v67);
  }
}

uint64_t sub_1DEE91A74(unsigned __int8 *a1, uint64_t a2)
{
  v52 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v4 = *(v55 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = v50 - v9;
  v10 = type metadata accessor for PairingRelationship();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a1;
  v21 = *(v2 + 232);
  *v19 = v21;
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8020], v14, v17);
  v22 = v21;
  v23 = sub_1DEF8D7B8();
  (*(v15 + 8))(v19, v14);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  swift_beginAccess();
  sub_1DEE29594(v2 + 192, v56);
  v25 = v57;
  v24 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  v26 = (*(*(*(v24 + 8) + 8) + 32))(v25);
  v14 = 0;
  sub_1DEE9ED38(v26, v20);
  v20 = v27;

  __swift_destroy_boxed_opaque_existential_1(v56);
  v28 = *(v20 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v29 = sub_1DEF2B474(*(v20 + 16), 0);
    sub_1DEF2D874(v56, v29 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v28, v20);
    v19 = v56[1];
    v14 = v56[2];
    v50[1] = v57;
    v51 = v30;
    v50[0] = v58;

    sub_1DEE2774C();
    if (v51 != v28)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v14 = 0;
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v56[0] = v29;
  sub_1DEEA12F0(v56);

  v20 = v56[0];
  v31 = v56[0][2];
  if (v31)
  {
    v56[0] = v19;
    sub_1DEEC7DA4(0, v31, 0);
    v32 = v56[0];
    v33 = *(v4 + 80);
    v51 = v20;
    v20 += (v33 + 32) & ~v33;
    v34 = *(v4 + 72);
    v14 = &qword_1DEF93400;
    do
    {
      v35 = v54;
      sub_1DEE17214(v20, v54, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE1BA88(v35, v7, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEEAB218(v7 + *(v55 + 48), v13, type metadata accessor for PairingRelationship);
      v36 = sub_1DEF8D3F8();
      (*(*(v36 - 8) + 8))(v7, v36);
      v56[0] = v32;
      v38 = v32[2];
      v37 = v32[3];
      v19 = (v38 + 1);
      if (v38 >= v37 >> 1)
      {
        sub_1DEEC7DA4(v37 > 1, v38 + 1, 1);
        v32 = v56[0];
      }

      v32[2] = v19;
      sub_1DEEAB218(v13, v32 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v38, type metadata accessor for PairingRelationship);
      v20 += v34;
      --v31;
    }

    while (v31);
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  v39 = v32[2];
  v40 = v39 - v52;
  if (__OFSUB__(v39, v52))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v40 <= 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1DEE4FC68(v40, v32);
  if ((v43 & 1) == 0)
  {
LABEL_16:
    sub_1DEF41170(v20, v41, v42, v43);
    v45 = v44;
    swift_unknownObjectRelease();
    return v45;
  }

  v7 = v43;
  v19 = v42;
  v14 = v41;
  sub_1DEF8E538();
  swift_unknownObjectRetain_n();
  v47 = swift_dynamicCastClass();
  if (!v47)
  {
    swift_unknownObjectRelease();
    v47 = MEMORY[0x1E69E7CC0];
  }

  v48 = *(v47 + 16);

  if (__OFSUB__(v7 >> 1, v19))
  {
    goto LABEL_29;
  }

  if (v48 != (v7 >> 1) - v19)
  {
LABEL_30:
    swift_unknownObjectRelease();
    v43 = v7;
    v42 = v19;
    v41 = v14;
    goto LABEL_16;
  }

  v49 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  result = v49;
  if (v49)
  {
    return result;
  }

  swift_unknownObjectRelease();
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DEE92068(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v4 = sub_1DEF8D378();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v71 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v71 - v18);
  v74 = a1;
  sub_1DEE17214(a1, &v71 - v18, &unk_1ECDE4350, &qword_1DEF93400);
  v20 = *(v9 + 48);
  v82 = v19;
  v21 = v19 + v20;
  v22 = type metadata accessor for PairingRelationship();
  v23 = (v21 + v22[8]);
  v24 = *v23;
  v25 = v23[1];
  sub_1DEE4F8C0(*v23, v25);
  sub_1DEE273A0(v21, type metadata accessor for PairingRelationship);
  v75 = a2;
  v26 = a2;
  v27 = v9;
  sub_1DEE17214(v26, v16, &unk_1ECDE4350, &qword_1DEF93400);
  v28 = &v16[*(v9 + 48)];
  v29 = (v28 + v22[8]);
  v30 = *v29;
  v31 = v29[1];
  sub_1DEE4F8C0(*v29, v31);
  sub_1DEE273A0(v28, type metadata accessor for PairingRelationship);
  if (v25 <= 1)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (v31)
    {
      goto LABEL_20;
    }

LABEL_24:
    v36 = v81;
    sub_1DEE17214(v74, v81, &unk_1ECDE4350, &qword_1DEF93400);
    v37 = v36 + *(v27 + 48);
    v38 = v22[9];
    v40 = v77;
    v39 = v78;
    v74 = *(v78 + 16);
    v41 = v79;
    v74(v77, v37 + v38, v79);
    sub_1DEE273A0(v37, type metadata accessor for PairingRelationship);
    v42 = v80;
    sub_1DEE17214(v75, v80, &unk_1ECDE4350, &qword_1DEF93400);
    v43 = v42 + *(v27 + 48);
    v44 = v22[9];
LABEL_29:
    v51 = v76;
    v74(v76, v43 + v44, v41);
    sub_1DEE273A0(v43, type metadata accessor for PairingRelationship);
    v35 = sub_1DEF8D308();
    v52 = *(v39 + 8);
    v52(v51, v41);
    v52(v40, v41);
    v53 = sub_1DEF8D3F8();
    v54 = *(*(v53 - 8) + 8);
    v54(v80, v53);
    v54(v81, v53);
    v54(v16, v53);
    v54(v82, v53);
    return v35 & 1;
  }

  if (v25 == 3)
  {
    if ((v31 - 1) < 2 || !v31)
    {
      goto LABEL_25;
    }

    if (v31 != 3)
    {
LABEL_20:
      sub_1DEE4F8D4(v30, v31);
LABEL_25:
      v45 = sub_1DEF8D3F8();
      v46 = *(*(v45 - 8) + 8);
      v46(v16, v45);
      v46(v82, v45);
      v35 = 1;
      return v35 & 1;
    }

    goto LABEL_24;
  }

  if (v25 != 2)
  {
LABEL_11:
    sub_1DEE4F8D4(v24, v25);
LABEL_12:
    if ((v31 - 1) >= 2)
    {
      if (v31)
      {
        v32 = v31 == 3;
      }

      else
      {
        v32 = 1;
      }

      if (!v32)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

LABEL_31:
    v55 = sub_1DEF8D3F8();
    v71 = v55;
    v56 = *(v55 - 8);
    v57 = *(v56 + 8);
    v72 = v57;
    v73 = v56 + 8;
    v57(v16, v55);
    v57(v82, v55);
    v58 = v81;
    sub_1DEE17214(v74, v81, &unk_1ECDE4350, &qword_1DEF93400);
    v59 = v58 + *(v27 + 48);
    v60 = v22[9];
    v62 = v77;
    v61 = v78;
    v82 = *(v78 + 16);
    v63 = v79;
    v82(v77, v59 + v60, v79);
    sub_1DEE273A0(v59, type metadata accessor for PairingRelationship);
    v64 = v80;
    sub_1DEE17214(v75, v80, &unk_1ECDE4350, &qword_1DEF93400);
    v65 = v64 + *(v27 + 48);
    v66 = v76;
    v82(v76, v65 + v22[9], v63);
    sub_1DEE273A0(v65, type metadata accessor for PairingRelationship);
    v35 = sub_1DEF8D308();
    v67 = *(v61 + 8);
    v67(v66, v63);
    v67(v62, v63);
    v68 = v71;
    v69 = v72;
    v72(v64, v71);
    v69(v81, v68);
    return v35 & 1;
  }

  if (v31 > 1)
  {
    if (v31 != 3)
    {
      if (v31 == 2)
      {
        v47 = v81;
        sub_1DEE17214(v74, v81, &unk_1ECDE4350, &qword_1DEF93400);
        v48 = v47 + *(v27 + 48);
        v49 = v22[6];
        v40 = v77;
        v39 = v78;
        v74 = *(v78 + 16);
        v41 = v79;
        v74(v77, v48 + v49, v79);
        sub_1DEE273A0(v48, type metadata accessor for PairingRelationship);
        v50 = v80;
        sub_1DEE17214(v75, v80, &unk_1ECDE4350, &qword_1DEF93400);
        v43 = v50 + *(v27 + 48);
        v44 = v22[6];
        goto LABEL_29;
      }

LABEL_30:
      sub_1DEE4F8D4(v30, v31);
      goto LABEL_31;
    }
  }

  else if (v31)
  {
    if (v31 == 1)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_18:
  v33 = sub_1DEF8D3F8();
  v34 = *(*(v33 - 8) + 8);
  v34(v16, v33);
  v34(v82, v33);
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1DEE927F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v6 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v62 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v62 - v11;
  v12 = type metadata accessor for PairingRelationship();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DEF8D788();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v3 + 232);
  *v22 = v23;
  (*(v18 + 104))(v22, *MEMORY[0x1E69E8020], v17, v20);
  v24 = v23;
  LOBYTE(v23) = sub_1DEF8D7B8();
  result = (*(v18 + 8))(v22, v17);
  if ((v23 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  sub_1DEE29594(v3 + 192, v83);
  v26 = v84;
  v27 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v28 = (*(*(*(v27 + 8) + 8) + 32))(v26);
  v29 = sub_1DEE9EBC8(v28, sub_1DEE9F55C, sub_1DEE9F55C);

  __swift_destroy_boxed_opaque_existential_1(v83);
  v30 = *(v29 + 16);
  if (v30)
  {
    v63 = v3;
    v64 = a1;
    v65 = a2;
    v83[0] = MEMORY[0x1E69E7CC0];
    sub_1DEEC7DA4(0, v30, 0);
    v31 = v83[0];
    v32 = v29 + 64;
    v33 = -1 << *(v29 + 32);
    result = sub_1DEF8DE18();
    v34 = result;
    v35 = 0;
    v66 = v29 + 72;
    v36 = v13;
    v67 = v30;
    v68 = v29 + 64;
    v69 = v13;
    while ((v34 & 0x8000000000000000) == 0 && v34 < 1 << *(v29 + 32))
    {
      if ((*(v32 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
      {
        goto LABEL_26;
      }

      v76 = 1 << v34;
      v77 = v34 >> 6;
      v74 = v35;
      v75 = *(v29 + 36);
      v38 = v29;
      v39 = v73;
      v79 = v31;
      v40 = *(v73 + 48);
      v41 = *(v38 + 48);
      v42 = sub_1DEF8D3F8();
      v43 = *(v42 - 8);
      v44 = v16;
      v45 = v70;
      (*(v43 + 16))(v70, v41 + *(v43 + 72) * v34, v42);
      v46 = *(v38 + 56);
      v78 = *(v36 + 72);
      sub_1DEEACA70(v46 + v78 * v34, &v45[v40], type metadata accessor for PairingRelationship);
      v47 = v71;
      (*(v43 + 32))(v71, v45, v42);
      v48 = &v45[v40];
      v16 = v44;
      sub_1DEEAB218(v48, v47 + *(v39 + 48), type metadata accessor for PairingRelationship);
      v49 = v72;
      sub_1DEE1BA88(v47, v72, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEEAB218(v49 + *(v39 + 48), v44, type metadata accessor for PairingRelationship);
      v50 = v49;
      v31 = v79;
      (*(v43 + 8))(v50, v42);
      v83[0] = v31;
      v52 = *(v31 + 16);
      v51 = *(v31 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1DEEC7DA4(v51 > 1, v52 + 1, 1);
        v31 = v83[0];
      }

      *(v31 + 16) = v52 + 1;
      v36 = v69;
      result = sub_1DEEAB218(v44, v31 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + v52 * v78, type metadata accessor for PairingRelationship);
      v37 = 1 << *(v38 + 32);
      if (v34 >= v37)
      {
        goto LABEL_27;
      }

      v32 = v68;
      v53 = *(v68 + 8 * v77);
      if ((v53 & v76) == 0)
      {
        goto LABEL_28;
      }

      v29 = v38;
      if (v75 != *(v38 + 36))
      {
        goto LABEL_29;
      }

      v54 = v53 & (-2 << (v34 & 0x3F));
      if (v54)
      {
        v37 = __clz(__rbit64(v54)) | v34 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v55 = v77 << 6;
        v56 = v77 + 1;
        v57 = (v66 + 8 * v77);
        while (v56 < (v37 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            result = sub_1DEE2F804(v34, v75, 0);
            v37 = __clz(__rbit64(v58)) + v55;
            goto LABEL_5;
          }
        }

        result = sub_1DEE2F804(v34, v75, 0);
      }

LABEL_5:
      v35 = v74 + 1;
      v34 = v37;
      if (v74 + 1 == v67)
      {

        a2 = v65;
        a1 = v64;
        v3 = v63;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_22:
  swift_beginAccess();
  sub_1DEE17214(v3 + 56, v83, &qword_1ECDE3C00, &qword_1DEF910C0);
  if (v84)
  {
    sub_1DEE29594(v83, v80);
    sub_1DEE171B4(v83, &qword_1ECDE3C00, &qword_1DEF910C0);
    v60 = v81;
    v61 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    (*(v61 + 32))(v31, a1, a2, v60, v61);

    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  else
  {

    return sub_1DEE171B4(v83, &qword_1ECDE3C00, &qword_1DEF910C0);
  }
}

uint64_t sub_1DEE92FA8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v151 = a1;
  v5 = sub_1DEF8D378();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v150 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v148 - v11;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DE8, &unk_1DEF9A500);
  v13 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v148 - v14;
  v159 = type metadata accessor for RecordStub();
  v149 = *(v159 - 8);
  v15 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v153 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v183 = (&v148 - v18);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v19 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v169 = &v148 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v168 = &v148 - v24;
  v174 = sub_1DEF8D3F8();
  v173 = *(v174 - 8);
  v25 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v154 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v155 = &v148 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v148 - v30;
  v32 = sub_1DEF8D788();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = (&v148 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = *a2;
  v38 = *(v3 + 232);
  *v37 = v38;
  (*(v33 + 104))(v37, *MEMORY[0x1E69E8020], v32, v35);
  v39 = v38;
  LOBYTE(v38) = sub_1DEF8D7B8();
  result = (*(v33 + 8))(v37, v32);
  if (v38)
  {
    swift_beginAccess();
    sub_1DEE29594(v3 + 192, v187);
    v41 = v188;
    v42 = v189;
    __swift_project_boxed_opaque_existential_1(v187, v188);
    v43 = (*(*(*(v42 + 8) + 8) + 32))(v41);
    v44 = sub_1DEE9EBC8(v43, sub_1DEE9FFA8, sub_1DEE9FFA8);

    __swift_destroy_boxed_opaque_existential_1(v187);
    v45 = *(v44 + 16);
    v158 = v3;
    v172 = v5;
    v152 = v12;
    if (v45)
    {
      v148 = v6;
      v187[0] = MEMORY[0x1E69E7CC0];
      sub_1DEEC7D60(0, v45, 0);
      v46 = v187[0];
      v47 = -1 << *(v44 + 32);
      v182 = v44 + 64;
      result = sub_1DEF8DE18();
      v48 = result;
      v49 = 0;
      v166 = (v173 + 16);
      v165 = (v173 + 8);
      v160 = v44 + 72;
      v50 = v44;
      v167 = v31;
      v162 = v45;
      *&v164 = v173 + 32;
      v163 = v44;
      while ((v48 & 0x8000000000000000) == 0 && v48 < 1 << *(v50 + 32))
      {
        if ((*(v182 + 8 * (v48 >> 6)) & (1 << v48)) == 0)
        {
          goto LABEL_97;
        }

        v177 = 1 << v48;
        v178 = v48 >> 6;
        v175 = v49;
        v176 = *(v50 + 36);
        v181 = v46;
        v52 = v171;
        v53 = *(v171 + 48);
        v54 = v173;
        v55 = *(v173 + 72);
        v56 = *(v50 + 48) + v55 * v48;
        v179 = *(v173 + 16);
        v180 = v55;
        v57 = v168;
        v58 = v174;
        v179(v168, v56, v174);
        v59 = *(v50 + 56);
        v60 = type metadata accessor for PairingRelationship();
        sub_1DEEACA70(v59 + *(*(v60 - 8) + 72) * v48, &v57[v53], type metadata accessor for PairingRelationship);
        v61 = *(v54 + 32);
        v62 = v169;
        v61(v169, v57, v58);
        v63 = &v57[v53];
        v64 = v167;
        sub_1DEEAB218(v63, &v62[*(v52 + 48)], type metadata accessor for PairingRelationship);
        v65 = v62;
        v66 = v170;
        sub_1DEE1BA88(v65, v170, &unk_1ECDE4350, &qword_1DEF93400);
        v67 = *(v52 + 48);
        v46 = v181;
        v179(v64, v66 + v67, v58);
        sub_1DEE273A0(v66 + v67, type metadata accessor for PairingRelationship);
        (*(v54 + 8))(v66, v58);
        v187[0] = v46;
        v69 = *(v46 + 16);
        v68 = *(v46 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1DEEC7D60(v68 > 1, v69 + 1, 1);
          v46 = v187[0];
        }

        *(v46 + 16) = v69 + 1;
        result = (v61)(v46 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v69 * v180, v64, v58);
        v50 = v163;
        v51 = 1 << *(v163 + 32);
        if (v48 >= v51)
        {
          goto LABEL_98;
        }

        v70 = *(v182 + 8 * v178);
        if ((v70 & v177) == 0)
        {
          goto LABEL_99;
        }

        if (v176 != *(v163 + 36))
        {
          goto LABEL_100;
        }

        v71 = v70 & (-2 << (v48 & 0x3F));
        if (v71)
        {
          v51 = __clz(__rbit64(v71)) | v48 & 0x7FFFFFFFFFFFFFC0;
          v5 = v172;
        }

        else
        {
          v72 = v178 << 6;
          v73 = (v178 + 1);
          v74 = (v160 + 8 * v178);
          v5 = v172;
          while (v73 < (v51 + 63) >> 6)
          {
            v76 = *v74++;
            v75 = v76;
            v72 += 64;
            ++v73;
            if (v76)
            {
              result = sub_1DEE2F804(v48, v176, 0);
              v51 = __clz(__rbit64(v75)) + v72;
              goto LABEL_5;
            }
          }

          result = sub_1DEE2F804(v48, v176, 0);
        }

LABEL_5:
        v49 = v175 + 1;
        v48 = v51;
        if (v175 + 1 == v162)
        {

          v3 = v158;
          v6 = v148;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      __break(1u);
      goto LABEL_101;
    }

    v46 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v77 = sub_1DEEA3B70(v46);

    v186 = MEMORY[0x1E69E7CD0];
    v78 = *(v151 + 16);
    if (!v78)
    {

      return MEMORY[0x1E69E7CD0];
    }

    v168 = v77;
    v79 = v149;
    v80 = (v151 + ((*(v149 + 80) + 32) & ~*(v149 + 80)));
    swift_beginAccess();
    v81 = 0;
    v170 = v173 + 16;
    v182 = *(v79 + 72);
    v169 = (v173 + 8);
    v171 = v6 + 48;
    v165 = (v6 + 32);
    v166 = (v6 + 8);
    *&v82 = 136446210;
    v164 = v82;
    v179 = v80;
    v180 = v78;
    while (1)
    {
      v83 = v183;
      sub_1DEEACA70(v80 + v182 * v81, v183, type metadata accessor for RecordStub);
      v84 = *v83;
      v85 = *(v84 + 32);
      v86 = *(v3 + 240);
      if ((v86 & 0xC000000000000001) != 0)
      {
        if (v86 < 0)
        {
          v87 = *(v3 + 240);
        }

        v88 = *(v84 + 32);

        v89 = sub_1DEF8E0B8();

        if (!v89)
        {
LABEL_38:

          goto LABEL_25;
        }

        v185 = v89;
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        v90 = v187[0];

        if (!v90)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!*(v86 + 16))
        {
          goto LABEL_25;
        }

        v91 = *(v84 + 32);

        v92 = sub_1DEEAF20C(v85);
        if ((v93 & 1) == 0)
        {

          goto LABEL_25;
        }

        v90 = *(*(v86 + 56) + 8 * v92);

        if (!v90)
        {
          goto LABEL_25;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v94 = *(v90 + 24);
        ObjectType = swift_getObjectType();
        (*(v94 + 8))(v187, ObjectType, v94);
        swift_unknownObjectRelease();
        if (v187[0])
        {
          goto LABEL_38;
        }
      }

      v181 = v90;
      v184 = MEMORY[0x1E69E7CD0];
      v185 = MEMORY[0x1E69E7CD0];
      sub_1DEE29594(v3 + 192, v187);
      v96 = v188;
      v97 = v189;
      __swift_project_boxed_opaque_existential_1(v187, v188);
      v98 = (*(*(*(v97 + 8) + 8) + 64))(v84, v96);
      if (!v98)
      {
        __swift_destroy_boxed_opaque_existential_1(v187);
        v104 = 1;
        goto LABEL_74;
      }

      v99 = v98;
      __swift_destroy_boxed_opaque_existential_1(v187);
      v100 = *(v159 + 24);
      v177 = sub_1DEE2BAF8(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
      v101 = sub_1DEF8D908();
      v102 = *(v99 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
      LODWORD(v178) = v101;
      v175 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination;
      if (v102)
      {
        break;
      }

      if (v161)
      {
        goto LABEL_50;
      }

      LODWORD(v177) = 1;
LABEL_52:
      v105 = *(v159 + 28);
      v106 = *(v157 + 48);
      v107 = v99;
      v108 = v156;
      sub_1DEE17214(v99 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v156, &qword_1ECDE4DC0, &qword_1DEF91640);
      sub_1DEE17214(v183 + v105, v108 + v106, &qword_1ECDE4DC0, &qword_1DEF91640);
      v109 = *v171;
      if ((*v171)(v108, 1, v5) == 1)
      {
        v110 = v109(v108 + v106, 1, v5);
        v111 = v153;
        if (v110 != 1)
        {
          goto LABEL_59;
        }

        sub_1DEE171B4(v108, &qword_1ECDE4DC0, &qword_1DEF91640);
        v80 = v179;
        v3 = v158;
        if (!v177)
        {
          goto LABEL_69;
        }

        if ((v178 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v112 = v152;
        sub_1DEE17214(v108, v152, &qword_1ECDE4DC0, &qword_1DEF91640);
        if (v109(v108 + v106, 1, v5) == 1)
        {
          (*v166)(v112, v5);
LABEL_59:
          sub_1DEE171B4(v108, &qword_1ECDE3DE8, &unk_1DEF9A500);
          v3 = v158;
          if (v177)
          {

            if (v178)
            {
LABEL_61:
              v104 = 0;
            }

            else
            {
LABEL_71:
              v104 = 1;
            }
          }

          else
          {
LABEL_69:
            if (*(v107 + v175))
            {
              v130 = *(v107 + v175);

              v132 = sub_1DEEA3B70(v131);

              sub_1DEE944FC(v132);
            }

            else
            {

              v185 = v168;
            }

            v104 = v178 ^ 1;
          }

LABEL_74:
          if (v161)
          {

            v134 = sub_1DEEA3B70(v133);

            sub_1DEE944FC(v134);
            v135 = v184;
          }

          else
          {
            v135 = v168;
            v184 = v168;
          }

          v136 = v185;
          if (*(v135 + 16) <= *(v185 + 16) >> 3)
          {
            v187[0] = v185;

            sub_1DEEC8B48(v135);
            v137 = v187[0];
          }

          else
          {

            v137 = sub_1DEEC8FB4(v135, v136);
          }

          v138 = v5;
          if (*(v136 + 16) <= *(v135 + 16) >> 3)
          {
            v187[0] = v135;
            sub_1DEEC8B48(v136);

            v139 = v187[0];
          }

          else
          {
            v139 = sub_1DEEC8FB4(v136, v135);
          }

          sub_1DEE944FC(v137);

          if (v104)
          {
            v140 = v135;
          }

          else
          {
            v140 = v139;
          }

          sub_1DEE944FC(v140);

          sub_1DEE273A0(v183, type metadata accessor for RecordStub);
          v5 = v138;
          v80 = v179;
          v78 = v180;
          goto LABEL_26;
        }

        v113 = v5;
        v114 = v150;
        (*v165)(v150, v108 + v106, v113);
        sub_1DEE2BAF8(&qword_1ECDE3DF0, MEMORY[0x1E6969530]);
        LODWORD(v176) = sub_1DEF8D908();
        v115 = *v166;
        v116 = v114;
        v5 = v113;
        (*v166)(v116, v113);
        v115(v112, v113);
        sub_1DEE171B4(v108, &qword_1ECDE4DC0, &qword_1DEF91640);
        v111 = v153;
        v80 = v179;
        v78 = v180;
        v3 = v158;
        if ((v177 & 1) == 0)
        {
          goto LABEL_69;
        }

        if ((v178 & 1) == 0)
        {
          goto LABEL_71;
        }

        if ((v176 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v117 = sub_1DEF8D508();
      __swift_project_value_buffer(v117, qword_1ECDF6028);
      sub_1DEEACA70(v183, v111, type metadata accessor for RecordStub);
      v118 = sub_1DEF8D4D8();
      v119 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = v111;
        v121 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v187[0] = v178;
        *v121 = v164;
        v122 = *v120;
        v123 = Record.ID.description.getter();
        v124 = v5;
        v126 = v125;
        v127 = v120;
        v80 = v179;
        sub_1DEE273A0(v127, type metadata accessor for RecordStub);
        v128 = sub_1DEE12A5C(v123, v126, v187);
        v5 = v124;
        v78 = v180;

        *(v121 + 4) = v128;
        _os_log_impl(&dword_1DEE0F000, v118, v119, "Ignoring request to replicate %{public}s; version, destination and expiration are unchanged.", v121, 0xCu);
        v129 = v178;
        __swift_destroy_boxed_opaque_existential_1(v178);
        MEMORY[0x1E12CCD70](v129, -1, -1);
        MEMORY[0x1E12CCD70](v121, -1, -1);
      }

      else
      {

        sub_1DEE273A0(v111, type metadata accessor for RecordStub);
      }

LABEL_25:
      sub_1DEE273A0(v183, type metadata accessor for RecordStub);
LABEL_26:
      if (++v81 == v78)
      {

        return v186;
      }
    }

    if (v161)
    {
      v103 = *(v102 + 16);
      if (v103 == *(v161 + 16))
      {
        if (v103 && v102 != v161)
        {
          v162 = v81;
          v163 = v99;
          v141 = (*(v173 + 80) + 32) & ~*(v173 + 80);
          v167 = *(v173 + 72);
          v142 = *(v173 + 16);
          swift_bridgeObjectRetain_n();

          while (1)
          {
            v143 = v155;
            v144 = v174;
            v142(v155, v102 + v141, v174);
            v145 = v154;
            v142(v154, v161 + v141, v144);
            LODWORD(v176) = sub_1DEF8D908();
            v146 = v143;
            v147 = *v169;
            (*v169)(v145, v144);
            v147(v146, v144);
            if ((v176 & 1) == 0)
            {
              break;
            }

            v141 += v167;
            if (!--v103)
            {

              swift_bridgeObjectRelease_n();
              LODWORD(v177) = 1;
              goto LABEL_93;
            }
          }

          swift_bridgeObjectRelease_n();
          LODWORD(v177) = 0;
LABEL_93:
          v5 = v172;
          v78 = v180;
          v99 = v163;
          v81 = v162;
        }

        else
        {
          LODWORD(v177) = 1;
          v78 = v180;
        }
      }

      else
      {
        LODWORD(v177) = 0;
        v78 = v180;
      }

      goto LABEL_52;
    }

LABEL_50:
    LODWORD(v177) = 0;
    goto LABEL_52;
  }

LABEL_101:
  __break(1u);
  return result;
}

void sub_1DEE944FC(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2, v11);
      (*(v3 + 32))(v6, v13, v2);
      sub_1DEF386D8(v9, v6);
      (*(v3 + 8))(v9, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      return;
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1DEE9470C(void *a1)
{
  v2 = v1;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 232);
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1DEF8D7B8();
  (*(v5 + 8))(v9, v4);
  if ((v10 & 1) == 0)
  {
    goto LABEL_96;
  }

  if (qword_1ECDE2E58 != -1)
  {
LABEL_97:
    swift_once();
  }

  v12 = sub_1DEF8D508();
  v13 = __swift_project_value_buffer(v12, qword_1ECDF6028);

  v14 = sub_1DEF8D4D8();
  v15 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v136 = v17;
    *v16 = 136446210;
    v18 = a1[5];
    v137 = a1[4];
    v138 = v18;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](a1[2], a1[3]);
    v19 = sub_1DEE12A5C(v137, v138, &v136);

    *(v16 + 4) = v19;
    _os_log_impl(&dword_1DEE0F000, v14, v15, "%{public}s: Validating records in zone", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1E12CCD70](v17, -1, -1);
    MEMORY[0x1E12CCD70](v16, -1, -1);
  }

  swift_beginAccess();
  v20 = *(v2 + 240);

  v21 = sub_1DEF718FC(a1, v20);

  v130 = v21;
  if (!v21)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  sub_1DEE29594(v2 + 192, &v137);
  v22 = v140;
  v23 = v141;
  __swift_project_boxed_opaque_existential_1(&v137, v140);
  v24 = (*(*(*(v23 + 8) + 8) + 32))(v22);
  v25 = v24;
  v26 = *(v24 + 16);
  if (!v26)
  {

    v129 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v126 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v137);
    v135 = MEMORY[0x1E69E7CC0];
    v136 = MEMORY[0x1E69E7CC0];
    v133 = MEMORY[0x1E69E7CD0];
    v134 = MEMORY[0x1E69E7CD0];
    v127 = v2;
    sub_1DEE29594(v2 + 192, &v137);
    v38 = v140;
    v39 = v141;
    __swift_project_boxed_opaque_existential_1(&v137, v140);
    v40 = (*(*(*(v39 + 8) + 8) + 24))(v38);

    v41 = sub_1DEEA4A50(v40, a1);

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v128 = a1;
    if ((v41 & 0xC000000000000001) != 0)
    {
      v42 = sub_1DEF8E038();
      v2 = 0;
      v43 = 0;
      v44 = 0;
      v41 = v42 | 0x8000000000000000;
    }

    else
    {
      v45 = -1 << *(v41 + 32);
      v2 = v41 + 64;
      v43 = ~v45;
      v46 = -v45;
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      else
      {
        v47 = -1;
      }

      v44 = v47 & *(v41 + 64);
    }

    v48 = 0;
    v125 = v43;
    a1 = ((v43 + 64) >> 6);
    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v49 = v48;
      v50 = v44;
      v51 = v48;
      if (!v44)
      {
        break;
      }

LABEL_24:
      v52 = (v50 - 1) & v50;
      v53 = (v51 << 9) | (8 * __clz(__rbit64(v50)));
      v54 = *(*(v41 + 48) + v53);
      v55 = *(*(v41 + 56) + v53);

      if (!v54)
      {
        goto LABEL_30;
      }

      while (1)
      {
        v60 = MEMORY[0x1E12CC160](v56);
        sub_1DEE95A50(v130, v55, v129, v128, v54, &v134, &v136, &v135);
        objc_autoreleasePoolPop(v60);

        v48 = v51;
        v44 = v52;
        if ((v41 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_26:
        v57 = sub_1DEF8E0D8();
        if (v57)
        {
          v59 = v58;
          v132 = v57;
          type metadata accessor for Record.ID(0);
          swift_dynamicCast();
          v54 = v137;
          v132 = v59;
          type metadata accessor for RecordMetadata();
          v56 = swift_dynamicCast();
          v55 = v137;
          v51 = v48;
          v52 = v44;
          if (v54)
          {
            continue;
          }
        }

        goto LABEL_30;
      }
    }

    while (1)
    {
      v51 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_95;
      }

      if (v51 >= a1)
      {
        break;
      }

      v50 = *(v2 + 8 * v51);
      ++v49;
      if (v50)
      {
        goto LABEL_24;
      }
    }

LABEL_30:

    sub_1DEE2774C();
    v61 = v136;
    v129 = v136 >> 62;
    if (v136 >> 62)
    {
      v62 = sub_1DEF8DE68();
    }

    else
    {
      v62 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = v127;
    if (v62)
    {
      v64 = sub_1DEF8D4D8();
      v65 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 134217984;
        if (v129)
        {
          v67 = sub_1DEF8DE68();
        }

        else
        {
          v67 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v66 + 4) = v67;
        _os_log_impl(&dword_1DEE0F000, v64, v65, "Corrupted %ld invalid remote records", v66, 0xCu);
        MEMORY[0x1E12CCD70](v66, -1, -1);
      }

      sub_1DEE29594(v63 + 192, &v137);
      v68 = v140;
      v69 = v141;
      __swift_project_boxed_opaque_existential_1(&v137, v140);
      v70 = *(v69 + 16);
      v71 = *(v70 + 128);

      v71(v72, v68, v70);

      __swift_destroy_boxed_opaque_existential_1(&v137);
    }

    v73 = v135;
    v128 = (v135 >> 62);
    if (v135 >> 62)
    {
      if (sub_1DEF8DE68())
      {
        goto LABEL_41;
      }
    }

    else if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_41:
      v74 = sub_1DEF8D4D8();
      v75 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 134217984;
        if (v128)
        {
          v77 = sub_1DEF8DE68();
        }

        else
        {
          v77 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v76 + 4) = v77;
        _os_log_impl(&dword_1DEE0F000, v74, v75, "Repaired %ld invalid remote records", v76, 0xCu);
        MEMORY[0x1E12CCD70](v76, -1, -1);
      }

      sub_1DEE29594(v63 + 192, &v137);
      v78 = v140;
      v79 = v141;
      __swift_project_boxed_opaque_existential_1(&v137, v140);
      v80 = *(v79 + 16);
      v81 = *(v80 + 128);

      v81(v82, v78, v80);

      __swift_destroy_boxed_opaque_existential_1(&v137);
    }

    v83 = v134;
    v84 = v134 & 0xC000000000000001;
    if ((v134 & 0xC000000000000001) != 0)
    {

      v85 = sub_1DEF8DE68();

      if (!v85)
      {
LABEL_88:
        if (v129)
        {
          if (sub_1DEF8DE68())
          {
            goto LABEL_92;
          }
        }

        else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_92:

LABEL_93:

          return;
        }

        if (v128)
        {
          if (sub_1DEF8DE68())
          {
            goto LABEL_92;
          }
        }

        else if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        if (v84)
        {

          v117 = sub_1DEF8DE68();

          if (v117)
          {
            goto LABEL_92;
          }
        }

        else if (*(v83 + 16))
        {
          goto LABEL_92;
        }

        v118 = sub_1DEF8D4D8();
        v119 = sub_1DEF8DCB8();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_1DEE0F000, v118, v119, "All records are valid", v120, 2u);
          MEMORY[0x1E12CCD70](v120, -1, -1);
        }

        goto LABEL_93;
      }
    }

    else if (!*(v134 + 16))
    {
      goto LABEL_88;
    }

    v123 = v73;
    v86 = sub_1DEF8D4D8();
    v87 = sub_1DEF8DCB8();
    v88 = os_log_type_enabled(v86, v87);
    v125 = v83;
    if (v88)
    {
      v89 = swift_slowAlloc();
      *v89 = 134217984;
      if (v84)
      {

        v90 = sub_1DEF8DE68();
      }

      else
      {
        v90 = *(v83 + 16);
      }

      *(v89 + 4) = v90;
      _os_log_impl(&dword_1DEE0F000, v86, v87, "Removed %ld invalid local records", v89, 0xCu);
      MEMORY[0x1E12CCD70](v89, -1, -1);
      v83 = v125;
    }

    v124 = v61;

    sub_1DEE29594(v63 + 192, &v137);
    v92 = v140;
    v91 = v141;
    __swift_project_boxed_opaque_existential_1(&v137, v140);

    v94 = sub_1DEF4133C(v93);

    (*(*(v91 + 16) + 136))(v94, v92);

    __swift_destroy_boxed_opaque_existential_1(&v137);
    v122 = v84;
    if (v84)
    {

      sub_1DEF8DE58();
      type metadata accessor for Record.ID(0);
      sub_1DEE2BAF8(&unk_1ECDE4EB0, type metadata accessor for Record.ID);
      sub_1DEF8DC18();
      v2 = v137;
      a1 = v138;
      v95 = v139;
      v96 = v140;
      v97 = v141;
    }

    else
    {
      v98 = -1 << *(v83 + 32);
      a1 = (v83 + 56);
      v95 = ~v98;
      v99 = -v98;
      if (v99 < 64)
      {
        v100 = ~(-1 << v99);
      }

      else
      {
        v100 = -1;
      }

      v97 = v100 & *(v83 + 56);

      v96 = 0;
      v2 = v83;
    }

    v121[1] = v95;
    v101 = (v95 + 64) >> 6;
    while (1)
    {
      if (v2 < 0)
      {
        v105 = sub_1DEF8DE88();
        if (!v105 || (v131 = v105, type metadata accessor for Record.ID(0), swift_dynamicCast(), (v104 = v132) == 0))
        {
LABEL_87:
          sub_1DEE2774C();
          v61 = v124;
          v73 = v123;
          v83 = v125;
          v84 = v122;
          goto LABEL_88;
        }
      }

      else
      {
        v102 = v96;
        v103 = v97;
        if (!v97)
        {
          while (1)
          {
            v96 = v102 + 1;
            if (__OFADD__(v102, 1))
            {
              break;
            }

            if (v96 >= v101)
            {
              goto LABEL_87;
            }

            v103 = a1[v96];
            ++v102;
            if (v103)
            {
              goto LABEL_70;
            }
          }

LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

LABEL_70:
        v97 = (v103 - 1) & v103;
        v104 = *(*(v2 + 48) + ((v96 << 9) | (8 * __clz(__rbit64(v103)))));

        if (!v104)
        {
          goto LABEL_87;
        }
      }

      v106 = *(v104 + 32);
      v107 = *(v127 + 240);
      if ((v107 & 0xC000000000000001) != 0)
      {
        if (v107 < 0)
        {
          v108 = *(v127 + 240);
        }

        v109 = *(v104 + 32);

        v110 = sub_1DEF8E0B8();

        if (!v110)
        {
          goto LABEL_63;
        }

        v131 = v110;
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        v111 = v132;

        if (v111)
        {
          goto LABEL_83;
        }
      }

      else if (*(v107 + 16))
      {
        v112 = *(v104 + 32);

        v113 = sub_1DEEAF20C(v106);
        if (v114)
        {
          v111 = *(*(v107 + 56) + 8 * v113);

          if (v111)
          {
LABEL_83:
            if (swift_unknownObjectWeakLoadStrong())
            {
              v115 = *(v111 + 24);
              ObjectType = swift_getObjectType();
              (*(v115 + 48))(v104, ObjectType, v115);
              swift_unknownObjectRelease();
            }

LABEL_63:
          }
        }

        else
        {
        }
      }
    }
  }

  v27 = sub_1DEF2B350(*(v24 + 16), 0);
  v28 = *(type metadata accessor for PairingRelationship() - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v129 = v27;
  sub_1DEF2D3FC(&v136, v27 + v29, v26, v25);
  v31 = v30;
  sub_1DEE2774C();
  if (v31 == v26)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_9:

  v32 = sub_1DEF8D4D8();
  v33 = sub_1DEF8DC98();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v136 = v35;
    *v34 = 136446210;
    v36 = a1[5];
    v137 = a1[4];
    v138 = v36;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](a1[2], a1[3]);
    v37 = sub_1DEE12A5C(v137, v138, &v136);

    *(v34 + 4) = v37;
    _os_log_impl(&dword_1DEE0F000, v32, v33, "%{public}s: Data source does not exist", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E12CCD70](v35, -1, -1);
    MEMORY[0x1E12CCD70](v34, -1, -1);
  }
}

uint64_t sub_1DEE956D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v40 = a1;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v39 = v38 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v41 = v38 - v14;
  v15 = type metadata accessor for Record.ID.Ownership(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  swift_beginAccess();
  sub_1DEE29594(a3 + 192, v42);
  v21 = v43;
  v20 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v22 = (*(*(*(v20 + 8) + 8) + 24))(v21);
  v23 = sub_1DEF718D0(v19, v22);

  if (!v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1DEEACA70(v19 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v18, type metadata accessor for Record.ID.Ownership);
  if ((*(v7 + 48))(v18, 1, v6) == 1)
  {
    v24 = *(v23 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    if (v24)
    {
      v25 = *(v24 + 16);
      if (v25)
      {
        v38[1] = v23;
        v38[2] = v3;
        v27 = *(v7 + 16);
        v26 = v7 + 16;
        v45 = v27;
        v28 = v24 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
        v29 = *(v26 + 56);
        v30 = v39;
        v31 = (v26 - 8);
        v32 = v41;
        do
        {
          v45(v30, v28, v6);
          sub_1DEF386D8(v32, v30);
          (*v31)(v32, v6);
          v28 += v29;
          --v25;
        }

        while (v25);
      }
    }
  }

  else
  {
    v34 = v41;
    (*(v7 + 32))(v41, v18, v6);
    v35 = v10;
    (*(v7 + 16))(v10, v34, v6);
    v36 = v39;
    sub_1DEF386D8(v39, v35);

    v37 = *(v7 + 8);
    v37(v36, v6);
    return (v37)(v34, v6);
  }
}

void sub_1DEE95A50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, unint64_t a7, void *a8)
{
  v158 = a8;
  v159 = a7;
  v162 = a6;
  v13 = sub_1DEF8D3F8();
  v164 = *(v13 - 8);
  v165 = v13;
  v14 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v152[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v161 = &v152[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v166 = &v152[-v20];
  v21 = type metadata accessor for PairingRelationship();
  v160 = *(v21 - 8);
  v22 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v152[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = type metadata accessor for Record.ID.Ownership(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v152[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_5;
  }

  v155 = v24;
  v156 = v16;
  v29 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v31 = *(v29 + 56);
  v157 = a3;
  v31(&v167, a2, a3, ObjectType, v29);
  swift_unknownObjectRelease();
  v32 = v167;
  v163 = a2;
  if (v167 > 1)
  {
    if (v167 == 2)
    {
      v33 = a5;
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v78 = sub_1DEF8D508();
      __swift_project_value_buffer(v78, qword_1ECDF6028);

      v46 = sub_1DEF8D4D8();
      v47 = sub_1DEF8DCB8();

      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_32;
      }

      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v171 = v49;
      *v48 = 136446466;
      v79 = a4[5];
      v167 = a4[4];
      v168 = v79;

      MEMORY[0x1E12CB180](14906, 0xE200000000000000);
      MEMORY[0x1E12CB180](a4[2], a4[3]);
      v80 = sub_1DEE12A5C(v167, v168, &v171);

      *(v48 + 4) = v80;
      *(v48 + 12) = 2082;
      v81 = Record.ID.description.getter();
      v83 = sub_1DEE12A5C(v81, v82, &v171);

      *(v48 + 14) = v83;
      v33 = a5;
      v55 = "%{public}s: Found invalid record ID: %{public}s";
    }

    else
    {
      v33 = a5;
      if (v167 != 3)
      {
        goto LABEL_19;
      }

      sub_1DEEACA70(a5 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v28, type metadata accessor for Record.ID.Ownership);
      if ((*(v164 + 48))(v28, 1, v165) != 1)
      {
        if (qword_1ECDE2E58 != -1)
        {
          swift_once();
        }

        v110 = sub_1DEF8D508();
        __swift_project_value_buffer(v110, qword_1ECDF6028);

        v111 = sub_1DEF8D4D8();
        v112 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v171 = v114;
          *v113 = 136446466;
          v115 = a4[5];
          v167 = a4[4];
          v168 = v115;

          MEMORY[0x1E12CB180](14906, 0xE200000000000000);
          MEMORY[0x1E12CB180](a4[2], a4[3]);
          v116 = sub_1DEE12A5C(v167, v168, &v171);

          *(v113 + 4) = v116;
          *(v113 + 12) = 2082;
          v117 = Record.ID.description.getter();
          v119 = sub_1DEE12A5C(v117, v118, &v171);

          *(v113 + 14) = v119;
          _os_log_impl(&dword_1DEE0F000, v111, v112, "%{public}s: Found invalid remote record data: %{public}s", v113, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v114, -1, -1);
          MEMORY[0x1E12CCD70](v113, -1, -1);
        }

        v85 = v166;
        v120 = v159;
        v121 = v165;
        if (qword_1ECDE37D8 != -1)
        {
          swift_once();
          v121 = v165;
        }

        v122 = __swift_project_value_buffer(v121, qword_1ECDF6090);
        RecordMetadata.copy(replacingVersion:)(v122);

        MEMORY[0x1E12CB260](v123);
        if (*((*v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v151 = *((*v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DEF8DAF8();
        }

        sub_1DEF8DB18();

        sub_1DEE273A0(v28, type metadata accessor for Record.ID.Ownership);
        v84 = v157;
        goto LABEL_59;
      }

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v45 = sub_1DEF8D508();
      __swift_project_value_buffer(v45, qword_1ECDF6028);

      v46 = sub_1DEF8D4D8();
      v47 = sub_1DEF8DCB8();

      if (!os_log_type_enabled(v46, v47))
      {
LABEL_32:

        v84 = v157;
        v85 = v166;

        sub_1DEF38D20(&v167, v33);
LABEL_33:

        goto LABEL_59;
      }

      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v171 = v49;
      *v48 = 136446466;
      v50 = a4[5];
      v167 = a4[4];
      v168 = v50;

      MEMORY[0x1E12CB180](14906, 0xE200000000000000);
      MEMORY[0x1E12CB180](a4[2], a4[3]);
      v51 = sub_1DEE12A5C(v167, v168, &v171);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2082;
      v52 = Record.ID.description.getter();
      v54 = sub_1DEE12A5C(v52, v53, &v171);

      *(v48 + 14) = v54;
      v33 = a5;
      v55 = "%{public}s: Found invalid local record data: %{public}s";
    }

    _os_log_impl(&dword_1DEE0F000, v46, v47, v55, v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v49, -1, -1);
    MEMORY[0x1E12CCD70](v48, -1, -1);
    goto LABEL_32;
  }

  if (!v167)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v72 = sub_1DEF8D508();
    __swift_project_value_buffer(v72, qword_1ECDF6028);

    v35 = sub_1DEF8D4D8();
    v36 = sub_1DEF8DC88();

    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_10;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v171 = v38;
    *v37 = 136446466;
    v73 = a4[5];
    v167 = a4[4];
    v168 = v73;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](a4[2], a4[3]);
    v74 = sub_1DEE12A5C(v167, v168, &v171);

    *(v37 + 4) = v74;
    *(v37 + 12) = 2082;
    v75 = Record.ID.description.getter();
    v77 = sub_1DEE12A5C(v75, v76, &v171);

    *(v37 + 14) = v77;
    v44 = "%{public}s: Record is valid: %{public}s";
    goto LABEL_9;
  }

  v33 = a5;
  if (v167 == 1)
  {
LABEL_5:
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v34 = sub_1DEF8D508();
    __swift_project_value_buffer(v34, qword_1ECDF6028);

    v35 = sub_1DEF8D4D8();
    v36 = sub_1DEF8DCB8();

    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_10;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v171 = v38;
    *v37 = 136446466;
    v39 = a4[5];
    v167 = a4[4];
    v168 = v39;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](a4[2], a4[3]);
    v40 = sub_1DEE12A5C(v167, v168, &v171);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2082;
    v41 = Record.ID.description.getter();
    v43 = sub_1DEE12A5C(v41, v42, &v171);

    *(v37 + 14) = v43;
    v44 = "%{public}s: Data source failed to provide result: %{public}s";
LABEL_9:
    _os_log_impl(&dword_1DEE0F000, v35, v36, v44, v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v38, -1, -1);
    MEMORY[0x1E12CCD70](v37, -1, -1);
LABEL_10:

    return;
  }

LABEL_19:
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v56 = sub_1DEF8D508();
  v57 = __swift_project_value_buffer(v56, qword_1ECDF6028);

  sub_1DEEAC894(v32);
  v159 = v57;
  v58 = sub_1DEF8D4D8();
  v59 = sub_1DEF8DCB8();

  sub_1DEEAC8A4(v32);
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v154 = v58;
    v61 = v60;
    v62 = swift_slowAlloc();
    v171 = v62;
    *v61 = 136446722;
    v63 = a4[5];
    v167 = a4[4];
    v168 = v63;

    v153 = v59;
    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](a4[2], a4[3]);
    v64 = sub_1DEE12A5C(v167, v168, &v171);

    *(v61 + 4) = v64;
    *(v61 + 12) = 2082;
    v65 = Record.ID.description.getter();
    v67 = sub_1DEE12A5C(v65, v66, &v171);

    *(v61 + 14) = v67;
    *(v61 + 22) = 2082;
    v68 = MEMORY[0x1E12CB290](v32, v165);
    v70 = sub_1DEE12A5C(v68, v69, &v171);

    *(v61 + 24) = v70;
    v71 = v154;
    _os_log_impl(&dword_1DEE0F000, v154, v153, "%{public}s: Found illegal destinations for %{public}s: %{public}s", v61, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v62, -1, -1);
    MEMORY[0x1E12CCD70](v61, -1, -1);
  }

  else
  {
  }

  if (!*(v163 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination))
  {
    sub_1DEEAC8A4(v32);
LABEL_57:
    v84 = v157;
    goto LABEL_58;
  }

  sub_1DEEAC894(v32);
  v86 = sub_1DEEA3B70(v32);
  sub_1DEEAC8A4(v32);

  v88 = sub_1DEEA3B70(v87);

  if (*(v86 + 16) > *(v88 + 16) >> 3)
  {

    v89 = sub_1DEEC8FB4(v86, v88);

    v90 = *(v89 + 16);
    if (v90)
    {
      goto LABEL_38;
    }

    goto LABEL_53;
  }

  v167 = v88;

  sub_1DEEC8B48(v86);

  v89 = v167;
  v90 = *(v167 + 16);
  if (!v90)
  {
LABEL_53:
    v124 = v32;

    v125 = sub_1DEF8D4D8();
    v126 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v171 = v128;
      *v127 = 136446466;
      v129 = a4[5];
      v167 = a4[4];
      v168 = v129;

      MEMORY[0x1E12CB180](14906, 0xE200000000000000);
      MEMORY[0x1E12CB180](a4[2], a4[3]);
      v130 = sub_1DEE12A5C(v167, v168, &v171);

      *(v127 + 4) = v130;
      *(v127 + 12) = 2082;
      v131 = Record.ID.description.getter();
      v133 = sub_1DEE12A5C(v131, v132, &v171);

      *(v127 + 14) = v133;
      v33 = a5;
      _os_log_impl(&dword_1DEE0F000, v125, v126, "%{public}s: All destinations removed for record ID: %{public}s", v127, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v128, -1, -1);
      MEMORY[0x1E12CCD70](v127, -1, -1);
    }

    v84 = v157;
    v85 = v166;

    sub_1DEF38D20(&v167, v33);
    sub_1DEEAC8A4(v124);
    goto LABEL_33;
  }

LABEL_38:
  v91 = sub_1DEF2B328(v90, 0);
  sub_1DEF2D158(&v167, (v91 + ((*(v164 + 80) + 32) & ~*(v164 + 80))), v90, v89);
  v93 = v92;
  v162 = v169;
  v154 = v170;

  sub_1DEE2774C();
  if (v93 == v90)
  {
    v167 = v91;
    RecordMetadata.copy(replacingDestination:)(&v167);

    v95 = v158;
    MEMORY[0x1E12CB260](v94);
    if (*((*v95 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_40;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1DEF8DAF8();
LABEL_40:
  sub_1DEF8DB18();

  v96 = sub_1DEF8D4D8();
  v97 = sub_1DEF8DCB8();

  if (!os_log_type_enabled(v96, v97))
  {

    sub_1DEEAC8A4(v32);

    goto LABEL_57;
  }

  v98 = swift_slowAlloc();
  v162 = swift_slowAlloc();
  v171 = v162;
  *v98 = 136446722;
  v99 = a4[5];
  v167 = a4[4];
  v168 = v99;

  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  MEMORY[0x1E12CB180](a4[2], a4[3]);
  LODWORD(v158) = v97;
  v100 = sub_1DEE12A5C(v167, v168, &v171);

  *(v98 + 4) = v100;
  v159 = v32;
  *(v98 + 12) = 2082;
  sub_1DEE2BAF8(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  v101 = sub_1DEF8DBF8();
  v103 = v102;

  v104 = sub_1DEE12A5C(v101, v103, &v171);

  *(v98 + 14) = v104;
  *(v98 + 22) = 2082;
  v84 = v157;
  v105 = sub_1DEF8DBF8();
  v107 = v106;

  v108 = sub_1DEE12A5C(v105, v107, &v171);

  *(v98 + 24) = v108;
  _os_log_impl(&dword_1DEE0F000, v96, v158, "%{public}s: Changed destinations from %{public}s to %{public}s", v98, 0x20u);
  v109 = v162;
  swift_arrayDestroy();
  MEMORY[0x1E12CCD70](v109, -1, -1);
  MEMORY[0x1E12CCD70](v98, -1, -1);

  sub_1DEEAC8A4(v159);
LABEL_58:
  v85 = v166;
LABEL_59:
  v134 = *(v163 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  if (v134)
  {
    v135 = *(v134 + 16);
    v136 = v156;
    v137 = v165;
    if (v135)
    {
      v138 = v164 + 16;
      v166 = *(v164 + 16);
      v139 = v134 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
      v140 = *(v164 + 72);
      v141 = (v164 + 8);
      do
      {
        v142 = v138;
        (v166)(v136, v139, v137);
        sub_1DEF386D8(v85, v136);
        (*v141)(v85, v137);
        v138 = v142;
        v139 += v140;
        --v135;
      }

      while (v135);
    }
  }

  else
  {
    v143 = v161;
    v144 = *(v84 + 16);
    v145 = v85;
    v146 = v165;
    v147 = v155;
    if (v144)
    {
      v148 = v84 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
      v166 = *(v160 + 72);
      v149 = (v164 + 16);
      v150 = (v164 + 8);
      do
      {
        sub_1DEEACA70(v148, v147, type metadata accessor for PairingRelationship);
        (*v149)(v143, v147, v146);
        sub_1DEE273A0(v147, type metadata accessor for PairingRelationship);
        sub_1DEF386D8(v145, v143);
        (*v150)(v145, v146);
        v148 += v166;
        --v144;
      }

      while (v144);
    }
  }
}

uint64_t sub_1DEE96E04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 176);
  v7 = *(a3 + 184);
  ObjectType = swift_getObjectType();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a1;
  v9[4] = a2;
  v10 = *(v7 + 80);

  sub_1DEEA8818(a1, a2);
  v10(sub_1DEEABE84, v9, ObjectType, v7);
}

void sub_1DEE96EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    v7 = *(a3 + 232);
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a5;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1DEEABEE0;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1DEE46D40;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE134F4;
    aBlock[3] = &block_descriptor_748;
    v11 = _Block_copy(aBlock);

    sub_1DEEA8818(a4, a5);

    dispatch_sync(v7, v11);
    _Block_release(v11);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_1ECDE2E58 != -1)
  {
LABEL_11:
    swift_once();
  }

  v12 = sub_1DEF8D508();
  __swift_project_value_buffer(v12, qword_1ECDF6028);
  oslog = sub_1DEF8D4D8();
  v13 = sub_1DEF8DC98();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DEE0F000, oslog, v13, "Could not fetch IDS ID; not sending advertisement", v14, 2u);
    MEMORY[0x1E12CCD70](v14, -1, -1);
  }
}

uint64_t sub_1DEE97134(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for ZoneVersionAdvertisement(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 648);
  v11 = *(a1 + 656);
  *(a1 + 648) = a2;
  *(a1 + 656) = a3;
  sub_1DEEA8818(a2, a3);
  sub_1DEE2416C(v10, v11);
  swift_beginAccess();
  sub_1DEE29594(a1 + 344, v16);
  v12 = v17;
  v13 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_1DEE97264(v9);
  (*(v13 + 40))(v9, v12, v13);
  sub_1DEE273A0(v9, type metadata accessor for ZoneVersionAdvertisement);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_1DEE97264@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
  v3 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v5 = &v62 - v4;
  v6 = type metadata accessor for DeviceDescriptor();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v62 - v11;
  v12 = sub_1DEF8D788();
  v13 = *(v12 - 1);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + 232);
  *v17 = v18;
  v19 = *MEMORY[0x1E69E8020];
  v20 = v13[13];
  v20(v17, v19, v12, v15);
  v72 = v18;
  v21 = sub_1DEF8D7B8();
  v22 = v13[1];
  v22(v17, v12);
  if ((v21 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = type metadata accessor for PairingRelationship();
  (*(*(v23 - 8) + 56))(v74, 1, 1, v23);
  *v17 = v72;
  (v20)(v17, v19, v12);
  v24 = sub_1DEF8D7B8();
  v22(v17, v12);
  if (v24)
  {
    swift_beginAccess();
    MEMORY[0x1EEE9AC00](*(v2 + 240));
    *(&v62 - 16) = 1;
    *(&v62 - 1) = v2;

    v12 = 0;
    v26 = sub_1DEEA572C(v25, sub_1DEEABEEC, (&v62 - 2));
    v27 = sub_1DEE5844C(v26, sub_1DEF415FC, sub_1DEF41EBC, &qword_1ECDE3DA0, &qword_1DEF916B8);

    v28 = v74;
    v29 = sub_1DEE98D98(v27);

    sub_1DEE171B4(v28, &qword_1ECDE3C18, &unk_1DEF94D20);
    sub_1DEE69B50(v73);
    v76 = MEMORY[0x1E69E7CC8];
    v30 = 1 << *(v29 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v29 + 64);
    v33 = (v30 + 63) >> 6;

    for (i = 0; v32; i = v36)
    {
      v35 = v5;
      v36 = i;
LABEL_11:
      v37 = __clz(__rbit64(v32)) | (v36 << 6);
      v38 = *(v29 + 56);
      v39 = *(*(v29 + 48) + 8 * v37);
      v40 = v38 + *(*(type metadata accessor for ZoneVersion() - 8) + 72) * v37;
      v5 = v35;
      sub_1DEEACA70(v40, &v35[*(v75 + 48)], type metadata accessor for ZoneVersion);
      *v35 = v39;

      sub_1DEE978CC(&v76, v35);
      v32 &= v32 - 1;
      sub_1DEE171B4(v35, &qword_1ECDE3D18, &qword_1DEF91628);
    }

    while (1)
    {
      v36 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v36 >= v33)
      {

        v75 = v76;
        v41 = v73;
        v42 = *v73;
        v43 = v73[1];
        v44 = v73[3];
        v67 = v73[2];
        v68 = v42;
        v45 = v73[4];
        v65 = v73[5];
        v66 = v45;
        v64 = *(v73 + 48);
        LODWORD(v74) = *(v73 + 88);
        LODWORD(v72) = *(v73 + 89);
        v46 = v73[12];
        v47 = v73[13];
        v48 = v73[14];
        v49 = v73[15];
        v50 = v73[16];
        v51 = v73[17];
        v52 = v73[19];
        v69 = v73[18];
        v70 = v50;

        v53 = *(v41 + 56);
        v62 = *(v41 + 72);
        v63 = v53;
        sub_1DEEA8818(v48, v49);

        sub_1DEE273A0(v41, type metadata accessor for DeviceDescriptor);
        v54 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
        v55 = sub_1DEF8D3F8();
        v56 = v71;
        (*(*(v55 - 8) + 56))(v71 + v54, 1, 1, v55);
        v57 = v67;
        *v56 = v68;
        *(v56 + 8) = v43;
        *(v56 + 16) = v57;
        *(v56 + 24) = v44;
        v58 = v65;
        *(v56 + 32) = v66;
        *(v56 + 40) = v58;
        *(v56 + 48) = v64;
        v59 = v63;
        *(v56 + 72) = v62;
        *(v56 + 56) = v59;
        *(v56 + 88) = v74;
        *(v56 + 89) = v72;
        *(v56 + 96) = v46;
        *(v56 + 104) = v47;
        *(v56 + 112) = v48;
        *(v56 + 120) = v49;
        v60 = v69;
        *(v56 + 128) = v70;
        *(v56 + 136) = v51;
        *(v56 + 144) = v60;
        *(v56 + 152) = v52;
        result = type metadata accessor for ZoneVersionAdvertisement(0);
        *(v56 + 160) = 0;
        *(v56 + 168) = 0;
        *(v56 + *(result + 20)) = v75;
        return result;
      }

      v32 = *(v29 + 64 + 8 * v36);
      ++i;
      if (v32)
      {
        v35 = v5;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);

  sub_1DEE171B4(v5, &qword_1ECDE3D18, &qword_1DEF91628);

  __break(1u);
  return result;
}

uint64_t sub_1DEE978CC(uint64_t a1, uint64_t a2)
{
  v31[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D98, &qword_1DEF916B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  sub_1DEE17214(a2, v31 - v12, &qword_1ECDE3D18, &qword_1DEF91628);
  v14 = *(v7 + 48);
  v16 = *(*v13 + 32);
  v15 = *(*v13 + 40);

  if (v16 == 0xD000000000000011 && 0x80000001DEF9C1B0 == v15)
  {

    sub_1DEE273A0(&v13[v14], type metadata accessor for ZoneVersion);
    goto LABEL_8;
  }

  v18 = sub_1DEF8E4E8();

  sub_1DEE273A0(&v13[v14], type metadata accessor for ZoneVersion);
  if (v18)
  {
LABEL_8:
    sub_1DEE17214(a2, v10, &qword_1ECDE3D18, &qword_1DEF91628);
    v27 = *(v7 + 48);
    v25 = *(*v10 + 16);
    v26 = *(*v10 + 24);

    sub_1DEE273A0(&v10[v27], type metadata accessor for ZoneVersion);
    goto LABEL_9;
  }

  sub_1DEE17214(a2, v10, &qword_1ECDE3D18, &qword_1DEF91628);
  v19 = *(v7 + 48);
  v21 = *(*v10 + 16);
  v20 = *(*v10 + 24);

  v32 = v21;
  v33 = v20;
  sub_1DEE273A0(&v10[v19], type metadata accessor for ZoneVersion);
  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  sub_1DEE17214(a2, v10, &qword_1ECDE3D18, &qword_1DEF91628);
  v22 = *(v7 + 48);
  v24 = *(*v10 + 32);
  v23 = *(*v10 + 40);

  MEMORY[0x1E12CB180](v24, v23);

  sub_1DEE273A0(&v10[v22], type metadata accessor for ZoneVersion);
  v25 = v32;
  v26 = v33;
LABEL_9:
  sub_1DEE17214(a2, v10, &qword_1ECDE3D18, &qword_1DEF91628);
  v28 = *v10;

  sub_1DEEAB218(&v10[*(v7 + 48)], v6, type metadata accessor for ZoneVersion);
  v29 = type metadata accessor for ZoneVersion();
  (*(*(v29 - 8) + 56))(v6, 0, 1, v29);
  return sub_1DEF3300C(v6, v25, v26);
}

void sub_1DEE97C64(unint64_t a1)
{
  v2 = type metadata accessor for ZoneVersionAdvertisement(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v136 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v157 = &v136 - v11;
  v12 = type metadata accessor for PairingRelationship();
  v155 = *(v12 - 8);
  v156 = v12;
  v13 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v154 = &v136 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v158 = &v136 - v20;
  v21 = type metadata accessor for DeviceDescriptor();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v159 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v136 - v25);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v28 = Strong;
  v152 = v15;
  v153 = v26;
  isUniquelyReferenced_nonNull_native = *(a1 + 32);
  v30 = *(a1 + 40);
  if (qword_1ED786060 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    if (isUniquelyReferenced_nonNull_native < *(&xmmword_1ED786068 + 1) || xmmword_1ED786068 < v30)
    {
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v64 = sub_1DEF8D508();
      __swift_project_value_buffer(v64, qword_1ECDF6028);
      sub_1DEEACA70(a1, v5, type metadata accessor for ZoneVersionAdvertisement);

      v65 = sub_1DEF8D4D8();
      v66 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v163[0] = v68;
        *v67 = 136446466;
        v69 = *(v28 + 66);
        v70 = *(v28 + 67);

        v71 = sub_1DEE12A5C(v69, v70, v163);

        *(v67 + 4) = v71;
        *(v67 + 12) = 2082;
        v164[0] = 0;
        v164[1] = 0xE000000000000000;
        sub_1DEF8DF28();

        strcpy(v164, "remoteDevice: ");
        HIBYTE(v164[1]) = -18;
        v72 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
        MEMORY[0x1E12CB180](v72);

        MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9BB10);
        v73 = *(v5 + *(v2 + 20));
        type metadata accessor for ZoneVersion();
        v74 = sub_1DEF8D858();
        MEMORY[0x1E12CB180](v74);

        v75 = v164[0];
        v76 = v164[1];
        sub_1DEE273A0(v5, type metadata accessor for ZoneVersionAdvertisement);
        v77 = sub_1DEE12A5C(v75, v76, v163);

        *(v67 + 14) = v77;
        _os_log_impl(&dword_1DEE0F000, v65, v66, "(%{public}s) Received zone version advertisement from incompatible device: %{public}s", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v68, -1, -1);
        MEMORY[0x1E12CCD70](v67, -1, -1);

        return;
      }

      v78 = type metadata accessor for ZoneVersionAdvertisement;
      v79 = v5;
      goto LABEL_72;
    }

    if (!sub_1DEF024D4(*(a1 + 48), *(v28 + 65)))
    {
      if (qword_1ECDE2E58 != -1)
      {
        goto LABEL_77;
      }

      goto LABEL_41;
    }

    v139 = v28;
    v31 = *a1;
    v32 = *(a1 + 8);
    v33 = *(a1 + 24);
    v146 = *(a1 + 16);
    v147 = *(a1 + 48);
    LODWORD(v149) = *(a1 + 88);
    LODWORD(v148) = *(a1 + 89);
    v34 = *(a1 + 96);

    v144 = *(a1 + 56);
    v142 = *(a1 + 72);
    v150 = sub_1DEE589C4(v34);
    v161 = sub_1DEE581C8(*(a1 + 104));
    v35 = *(a1 + 120);
    v141 = *(a1 + 112);
    v140 = v35;
    v36 = *(a1 + 136);
    v162 = *(a1 + 128);
    v143 = v36;
    v37 = *(a1 + 152);
    v160 = *(a1 + 144);
    v145 = v37;
    v38 = *(a1 + 168);
    v151 = *(a1 + 160);
    v39 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
    v138 = a1;
    v40 = a1 + v39;
    a1 = v158;
    sub_1DEE17214(v40, v158, &unk_1ECDE3E80, &unk_1DEF90970);
    v28 = v159;
    *(v159 + 56) = 0u;
    *(v28 + 72) = 0u;
    *(v28 + 44) = 256;
    *(v28 + 7) = xmmword_1DEF90FE0;
    v5 = *(v21 + 60);
    v41 = sub_1DEF8D3F8();
    (*(*(v41 - 8) + 56))(&v28[v5], 1, 1, v41);
    v137 = v31;
    *v28 = v31;
    *(v28 + 1) = v32;
    *(v28 + 2) = v146;
    *(v28 + 3) = v33;
    *(v28 + 4) = isUniquelyReferenced_nonNull_native;
    *(v28 + 5) = v30;
    v28[48] = v147;
    *(v28 + 72) = v142;
    *(v28 + 56) = v144;
    v28[88] = v149;
    v28[89] = v148;
    v42 = *(v28 + 14);
    v43 = *(v28 + 15);
    v149 = v32;

    isUniquelyReferenced_nonNull_native = v141;
    v30 = v140;
    sub_1DEEA8818(v141, v140);

    v44 = v143;

    v45 = v145;

    sub_1DEE2416C(v42, v43);
    *(v28 + 14) = isUniquelyReferenced_nonNull_native;
    *(v28 + 15) = v30;
    *(v28 + 16) = v162;
    *(v28 + 17) = v44;
    *(v28 + 18) = v160;
    *(v28 + 19) = v45;
    *(v28 + 20) = v151;
    *(v28 + 21) = v38;
    v148 = v38;

    v46 = v150;
    sub_1DEEA882C(a1, &v28[v5]);
    if (!(v46 >> 62))
    {
      v8 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        break;
      }

      goto LABEL_8;
    }

    v8 = sub_1DEF8DE68();
    if (!v8)
    {
      break;
    }

LABEL_8:
    a1 = 0;
    v162 = v46 & 0xC000000000000001;
    v160 = v46 & 0xFFFFFFFFFFFFFF8;
    v21 = MEMORY[0x1E69E7CC8];
    v2 = v46;
    while (v162)
    {
      v49 = MEMORY[0x1E12CB6E0](a1, v46);
      v30 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_44;
      }

LABEL_14:
      v28 = *(v49 + 16);
      if ((v21 & 0xC000000000000001) != 0)
      {
        if (v21 < 0)
        {
          v50 = v21;
        }

        else
        {
          v50 = v21 & 0xFFFFFFFFFFFFFF8;
        }

        v51 = *(v49 + 16);

        v52 = sub_1DEF8DE68();
        if (__OFADD__(v52, 1))
        {
          goto LABEL_47;
        }

        v21 = sub_1DEEB0790(v50, v52 + 1);
      }

      else
      {
        v53 = *(v49 + 16);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v164[0] = v21;
      v5 = sub_1DEEAF20C(v28);
      v55 = *(v21 + 16);
      v56 = (v54 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        goto LABEL_46;
      }

      v58 = v54;
      if (*(v21 + 24) >= v57)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v21 = v164[0];
          if (v54)
          {
            goto LABEL_9;
          }
        }

        else
        {
          sub_1DEEB753C();
          v21 = v164[0];
          if (v58)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
        sub_1DEEB0D00(v57, isUniquelyReferenced_nonNull_native);
        v59 = sub_1DEEAF20C(v28);
        if ((v58 & 1) != (v60 & 1))
        {
          type metadata accessor for Zone.ID();
          sub_1DEF8E6E8();
          __break(1u);
LABEL_79:
          sub_1DEF8E6E8();
          __break(1u);
          return;
        }

        v5 = v59;
        v21 = v164[0];
        if (v58)
        {
LABEL_9:
          v47 = *(v21 + 56);
          v48 = *(v47 + 8 * v5);
          *(v47 + 8 * v5) = v49;

          goto LABEL_10;
        }
      }

      *(v21 + 8 * (v5 >> 6) + 64) |= 1 << v5;
      *(*(v21 + 48) + 8 * v5) = v28;
      *(*(v21 + 56) + 8 * v5) = v49;

      v61 = *(v21 + 16);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        goto LABEL_48;
      }

      *(v21 + 16) = v63;
LABEL_10:
      ++a1;
      v46 = v2;
      if (v30 == v8)
      {
        goto LABEL_52;
      }
    }

    if (a1 >= *(v160 + 16))
    {
      goto LABEL_45;
    }

    v49 = *(v46 + 8 * a1 + 32);

    v30 = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      goto LABEL_14;
    }

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
    swift_once();
  }

  v21 = MEMORY[0x1E69E7CC8];
LABEL_52:

  *(v159 + 12) = v21;
  v92 = v161;
  v160 = *(v161 + 16);
  if (!v160)
  {
    v94 = MEMORY[0x1E69E7CC8];
LABEL_68:
    sub_1DEE171B4(v158, &unk_1ECDE3E80, &unk_1DEF90970);

    v116 = v159;
    *(v159 + 13) = v94;
    v117 = v153;
    sub_1DEEAB218(v116, v153, type metadata accessor for DeviceDescriptor);
    v118 = v139;
    swift_beginAccess();
    sub_1DEE29594((v118 + 192), v164);
    v119 = v165;
    v120 = v166;
    __swift_project_boxed_opaque_existential_1(v164, v165);
    v121 = *(v120 + 8);
    v122 = v157;
    v123 = v137;
    v124 = v149;
    MetadataStoring.pairingRelationship(remoteDeviceID:)(v137, v149, v119, v121, v157);
    v125 = v156;
    if ((*(v155 + 48))(v122, 1, v156) == 1)
    {
      sub_1DEE171B4(v122, &qword_1ECDE3C18, &unk_1DEF94D20);
      __swift_destroy_boxed_opaque_existential_1(v164);
      v164[0] = 0;
      v164[1] = 0;
      v126 = v152;
      sub_1DEE5F828(v117, v164, 0, 1, v152);
      v127 = v126;
    }

    else
    {
      v128 = v154;
      sub_1DEEAB218(v122, v154, type metadata accessor for PairingRelationship);
      __swift_destroy_boxed_opaque_existential_1(v164);
      v129 = (v128 + *(v125 + 32));
      v130 = v129[1];
      v164[0] = *v129;
      v164[1] = v130;
      sub_1DEE4F8C0(v164[0], v130);
      v131 = v152;
      sub_1DEE5F828(v117, v164, 2, 1, v152);
      sub_1DEE4F8D4(v164[0], v164[1]);
      sub_1DEE273A0(v131, type metadata accessor for PairingRelationship);
      v127 = v128;
    }

    sub_1DEE273A0(v127, type metadata accessor for PairingRelationship);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4360, &qword_1DEF91760);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_1DEF907F0;
    v133 = v138;
    v134 = *(v138 + 48);
    *(v132 + 32) = v123;
    *(v132 + 40) = v124;
    v135 = v148;
    *(v132 + 48) = v151;
    *(v132 + 56) = v135;
    *(v132 + 64) = v134;
    *(v132 + 72) = *(v133 + 32);
    sub_1DEE701E0(v132);

    v78 = type metadata accessor for DeviceDescriptor;
    v79 = v117;
    goto LABEL_72;
  }

  v93 = 0;
  v28 = (v161 + 72);
  v94 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    if (v93 < *(v92 + 16))
    {
      v8 = *(v28 - 5);
      a1 = *(v28 - 4);
      v100 = *(v28 - 3);
      v99 = *(v28 - 2);
      v101 = *(v28 - 1);
      v162 = *v28;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v164[0] = v94;
      v103 = sub_1DEEAF16C(v8, a1, v100, v99);
      v105 = v94[2];
      v106 = (v104 & 1) == 0;
      v62 = __OFADD__(v105, v106);
      v107 = v105 + v106;
      if (v62)
      {
        goto LABEL_75;
      }

      v108 = v104;
      if (v94[3] >= v107)
      {
        if (v102)
        {
          goto LABEL_62;
        }

        v115 = v103;
        sub_1DEEB7550();
        v103 = v115;
        v94 = v164[0];
        if (v108)
        {
          goto LABEL_54;
        }

LABEL_63:
        v94[(v103 >> 6) + 8] |= 1 << v103;
        v110 = (v94[6] + 32 * v103);
        *v110 = v8;
        v110[1] = a1;
        v110[2] = v100;
        v110[3] = v99;
        v111 = (v94[7] + 48 * v103);
        *v111 = v8;
        v111[1] = a1;
        v111[2] = v100;
        v111[3] = v99;
        v112 = v162;
        v111[4] = v101;
        v111[5] = v112;
        v113 = v94[2];
        v62 = __OFADD__(v113, 1);
        v114 = v113 + 1;
        if (v62)
        {
          goto LABEL_76;
        }

        v94[2] = v114;
      }

      else
      {
        sub_1DEEB0D14(v107, v102);
        v103 = sub_1DEEAF16C(v8, a1, v100, v99);
        if ((v108 & 1) != (v109 & 1))
        {
          goto LABEL_79;
        }

LABEL_62:
        v94 = v164[0];
        if ((v108 & 1) == 0)
        {
          goto LABEL_63;
        }

LABEL_54:
        v95 = (v94[7] + 48 * v103);
        v96 = v95[1];
        v97 = v95[3];
        *v95 = v8;
        v95[1] = a1;
        v95[2] = v100;
        v95[3] = v99;
        v98 = v162;
        v95[4] = v101;
        v95[5] = v98;
      }

      ++v93;
      v28 += 48;
      v92 = v161;
      if (v160 == v93)
      {
        goto LABEL_68;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  swift_once();
LABEL_41:
  v80 = sub_1DEF8D508();
  __swift_project_value_buffer(v80, qword_1ECDF6028);
  sub_1DEEACA70(a1, v8, type metadata accessor for ZoneVersionAdvertisement);

  v81 = sub_1DEF8D4D8();
  v82 = sub_1DEF8DC98();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v164[0] = v84;
    *v83 = 136446466;
    v85 = *(v28 + 66);
    v86 = *(v28 + 67);

    v87 = sub_1DEE12A5C(v85, v86, v164);

    *(v83 + 4) = v87;
    *(v83 + 12) = 2082;
    v88 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
    v90 = v89;
    sub_1DEE273A0(v8, type metadata accessor for ZoneVersionAdvertisement);
    v91 = sub_1DEE12A5C(v88, v90, v164);

    *(v83 + 14) = v91;
    _os_log_impl(&dword_1DEE0F000, v81, v82, "%{public}s Cannot pair with a device that has an incompatible device type: %{public}s", v83, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v84, -1, -1);
    MEMORY[0x1E12CCD70](v83, -1, -1);

    return;
  }

  v78 = type metadata accessor for ZoneVersionAdvertisement;
  v79 = v8;
LABEL_72:
  sub_1DEE273A0(v79, v78);
}

uint64_t sub_1DEE98CB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    swift_beginAccess();
    v11 = *(a4 + 672);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);

    LOBYTE(v12) = sub_1DEF01E3C(v12, v13, v11);

    v10 = v12 ^ 1;
    return v10 & 1;
  }

  v8 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  (*(v8 + 8))(v15, ObjectType, v8);
  swift_unknownObjectRelease();
  if (LOBYTE(v15[0]) == (a3 & 1))
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1DEE98D98(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v58 = &v53 - v4;
  v5 = type metadata accessor for ZoneVersion();
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - v12;
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v64 = (v59 + 672);
  swift_beginAccess();
  swift_beginAccess();
  if (v13)
  {
    v14 = 0;
    v62 = a1 & 0xFFFFFFFFFFFFFF8;
    v63 = a1 & 0xC000000000000001;
    v54 = a1;
    v61 = (a1 + 32);
    v15 = MEMORY[0x1E69E7CC8];
    v60 = v13;
    while (1)
    {
      while (1)
      {
        if (v63)
        {
          v16 = MEMORY[0x1E12CB6E0](v14, v54);
          v17 = __OFADD__(v14++, 1);
          if (v17)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v14 >= *(v62 + 16))
          {
            goto LABEL_37;
          }

          v16 = v61[v14];

          v17 = __OFADD__(v14++, 1);
          if (v17)
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            v13 = sub_1DEF8DE68();
            goto LABEL_3;
          }
        }

        v18 = *v64;
        if (*(*v64 + 16))
        {
          break;
        }

LABEL_20:
        v65 = v14;
        sub_1DEE29594(v59 + 192, v67);
        v29 = v68;
        v30 = v69;
        __swift_project_boxed_opaque_existential_1(v67, v68);
        v31 = type metadata accessor for PairingRelationship();
        v32 = v58;
        (*(*(v31 - 8) + 56))(v58, 1, 1, v31);
        v33 = *(v30 + 8);
        v34 = *(v33 + 16);

        v36 = v57;
        v34(v35, v32, v29, v33);
        sub_1DEE171B4(v32, &qword_1ECDE3C18, &unk_1DEF94D20);
        sub_1DEEAB218(v36, v8, type metadata accessor for ZoneVersion);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v15;
        a1 = v15;
        v38 = sub_1DEEAF20C(v16);
        v40 = v15[2];
        v41 = (v39 & 1) == 0;
        v17 = __OFADD__(v40, v41);
        v42 = v40 + v41;
        if (v17)
        {
          goto LABEL_38;
        }

        v43 = v39;
        if (v15[3] >= v42)
        {
          v14 = v65;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            a1 = &v66;
            v51 = v38;
            sub_1DEEB8A3C();
            v38 = v51;
          }
        }

        else
        {
          sub_1DEEB3A30(v42, isUniquelyReferenced_nonNull_native);
          a1 = v66;
          v38 = sub_1DEEAF20C(v16);
          v14 = v65;
          if ((v43 & 1) != (v44 & 1))
          {
            type metadata accessor for Zone.ID();
            result = sub_1DEF8E6E8();
            __break(1u);
            return result;
          }
        }

        v45 = v60;
        v15 = v66;
        if (v43)
        {
          sub_1DEE1B474(v8, v66[7] + *(v56 + 72) * v38, type metadata accessor for ZoneVersion);
        }

        else
        {
          v66[(v38 >> 6) + 8] |= 1 << v38;
          *(v15[6] + 8 * v38) = v16;
          sub_1DEEAB218(v8, v15[7] + *(v56 + 72) * v38, type metadata accessor for ZoneVersion);

          v46 = v15[2];
          v17 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v17)
          {
            goto LABEL_39;
          }

          v15[2] = v47;
        }

        __swift_destroy_boxed_opaque_existential_1(v67);
        if (v14 == v45)
        {
          return v15;
        }
      }

      v19 = v8;
      v20 = v16[4];
      v21 = v16[5];
      v22 = *(v18 + 40);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v23 = sub_1DEF8E7F8();
      v24 = -1 << *(v18 + 32);
      v25 = v23 & ~v24;
      if (((*(v18 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
LABEL_19:

        v8 = v19;
        goto LABEL_20;
      }

      v26 = ~v24;
      while (1)
      {
        v27 = (*(v18 + 48) + 16 * v25);
        v28 = *v27 == v20 && v27[1] == v21;
        if (v28 || (sub_1DEF8E4E8() & 1) != 0)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v18 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v48 = sub_1DEF8D3F8();
      v49 = v55;
      (*(*(v48 - 8) + 56))(v55, 1, 1, v48);

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v67[0] = v15;
      a1 = v67;
      sub_1DEF3EC54(v49, v16, v50);

      v15 = v67[0];
      v8 = v19;
      if (v14 == v60)
      {
        return v15;
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

BOOL sub_1DEE993C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 672);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  LOBYTE(v6) = sub_1DEF01E3C(v7, v6, v5);

  return (v6 & 1) == 0;
}

uint64_t sub_1DEE9943C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-v6];
  v8 = type metadata accessor for PairingRelationship();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v18);
  v13 = v19;
  v14 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  MetadataStoring.pairingRelationship(relationshipID:)(a2, v13, *(v14 + 8), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1DEE171B4(v7, &qword_1ECDE3C18, &unk_1DEF94D20);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_1DEEAB218(v7, v12, type metadata accessor for PairingRelationship);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v16 = &v12[*(v8 + 20)];
    if (v16[21])
    {
      sub_1DEEAC064(*v16, v16[1]);
    }

    return sub_1DEE273A0(v12, type metadata accessor for PairingRelationship);
  }
}

uint64_t sub_1DEE99638(uint64_t a1)
{
  v2 = v1;
  v38[0] = a1;
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 232);
  *v8 = v9;
  v10 = *MEMORY[0x1E69E8020];
  v11 = v4[13];
  v11(v8, v10, v3, v6);
  v12 = v9;
  v13 = sub_1DEF8D7B8();
  v14 = v4[1];
  (v14)(v8, v3);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  *v8 = v12;
  (v11)(v8, v10, v3);
  v15 = sub_1DEF8D7B8();
  (v14)(v8, v3);
  if ((v15 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    result = sub_1DEF8DE68();
    v24 = result;
    if (result)
    {
      goto LABEL_5;
    }
  }

  swift_beginAccess();
  sub_1DEE29594(v2 + 192, v39);
  v17 = v40;
  v16 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v18 = (*(*(*(v16 + 8) + 8) + 24))(v17);
  MEMORY[0x1EEE9AC00](v18);
  v38[-2] = v38[0];
  v20 = sub_1DEEA4C70(v19, sub_1DEEACA50, &v38[-4]);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v14 = sub_1DEE5844C(v20, sub_1DEF415BC, sub_1DEF41428, &qword_1ECDE3DE0, &unk_1DEF91700);

  sub_1DEE29594(v2 + 192, v39);
  v21 = v40;
  v22 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  (*(*(v22 + 16) + 136))(v14, v21);
  result = __swift_destroy_boxed_opaque_existential_1(v39);
  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
  }

LABEL_5:
  if (v24 >= 1)
  {
    swift_beginAccess();
    v25 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1E12CB6E0](v25, v14);
      }

      else
      {
        v26 = *(v14 + 8 * v25 + 32);
      }

      v27 = *(v26 + 32);
      v28 = *(v2 + 240);
      if ((v28 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v28 + 16))
      {
        v33 = *(v26 + 32);

        v34 = sub_1DEEAF20C(v27);
        if ((v35 & 1) == 0)
        {

          goto LABEL_8;
        }

        v32 = *(*(v28 + 56) + 8 * v34);

        if (v32)
        {
          goto LABEL_21;
        }
      }

LABEL_8:
      ++v25;

      if (v24 == v25)
      {
      }
    }

    if (v28 < 0)
    {
      v29 = *(v2 + 240);
    }

    v30 = *(v26 + 32);

    v31 = sub_1DEF8E0B8();

    if (v31)
    {
      v38[1] = v31;
      type metadata accessor for Replicator.WeakSource();
      swift_dynamicCast();
      v32 = v38[2];

      if (!v32)
      {
        goto LABEL_8;
      }

LABEL_21:
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v32 + 24);
        ObjectType = swift_getObjectType();
        (*(v36 + 48))(v26, ObjectType, v36);
        swift_unknownObjectRelease();
      }
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE99AC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v138 - v5;
  v7 = type metadata accessor for PairingRelationship();
  v164 = *(v7 - 8);
  v165 = v7;
  v8 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v152 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v138 - v11;
  v13 = type metadata accessor for DeviceDescriptor();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v142 = (&v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v161 = &v138 - v17;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v18 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162);
  v143 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v154 = &v138 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v138 - v23;
  v25 = sub_1DEF8D788();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (&v138 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = *(v1 + 232);
  *v30 = v31;
  v32 = v26[13];
  v148 = *MEMORY[0x1E69E8020];
  v147 = v26 + 13;
  v146 = v32;
  v32(v30, v28);
  v145 = v31;
  LOBYTE(v31) = sub_1DEF8D7B8();
  v33 = v26[1];
  v149 = v30;
  v151 = v25;
  v150 = v26 + 1;
  v144 = v33;
  v33(v30, v25);
  if ((v31 & 1) == 0)
  {
    goto LABEL_54;
  }

  v153 = a1;
  v155 = v12;
  v156 = v6;
  swift_beginAccess();
  v157 = v1;
  sub_1DEE29594(v1 + 192, &v167);
  v35 = v168;
  v34 = v169;
  __swift_project_boxed_opaque_existential_1(&v167, v168);
  v36 = (*(*(*(v34 + 8) + 8) + 32))(v35);
  v37 = v36 + 64;
  v38 = 1 << *(v36 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v36 + 64);
  v41 = (v38 + 63) >> 6;
  v163 = v36;

  v42 = 0;
  v158 = MEMORY[0x1E69E7CC8];
  v43 = &qword_1DEF93400;
  v44 = v154;
  v159 = v37;
  *&v160 = v41;
LABEL_5:
  v45 = v42;
  if (!v40)
  {
    goto LABEL_7;
  }

  do
  {
    v46 = v43;
    v42 = v45;
LABEL_11:
    v47 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v48 = v47 | (v42 << 6);
    v49 = v163;
    v50 = *(v163 + 48);
    v51 = sub_1DEF8D3F8();
    v52 = *(v51 - 8);
    (*(v52 + 16))(v24, v50 + *(v52 + 72) * v48, v51);
    v53 = *(v49 + 56) + *(v164 + 72) * v48;
    v54 = v24;
    v55 = v162;
    sub_1DEEACA70(v53, v54 + *(v162 + 48), type metadata accessor for PairingRelationship);
    sub_1DEE17214(v54, v44, &unk_1ECDE4350, v46);
    v56 = v44 + *(v55 + 48);
    v57 = v161;
    sub_1DEEACA70(v56 + *(v165 + 20), v161, type metadata accessor for DeviceDescriptor);
    sub_1DEE273A0(v56, type metadata accessor for PairingRelationship);
    v58 = v44;
    v60 = *(v57 + 160);
    v59 = *(v57 + 168);

    sub_1DEE273A0(v57, type metadata accessor for DeviceDescriptor);
    if (v59)
    {
      v61 = *(v52 + 8);
      v138 = v51;
      v62 = v51;
      v63 = v61;
      v61(v58, v62);
      v141 = v54;
      v64 = v143;
      sub_1DEE17214(v54, v143, &unk_1ECDE4350, v46);
      v65 = v64 + *(v162 + 48);
      v66 = v142;
      sub_1DEEACA70(v65 + *(v165 + 20), v142, type metadata accessor for DeviceDescriptor);
      sub_1DEE273A0(v65, type metadata accessor for PairingRelationship);
      v67 = v66[1];
      v140 = *v66;

      sub_1DEE273A0(v66, type metadata accessor for DeviceDescriptor);
      v68 = v158;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v166 = v68;
      v70 = sub_1DEE13224(v60, v59);
      v71 = *(v68 + 16);
      v72 = (v69 & 1) == 0;
      v73 = v71 + v72;
      if (__OFADD__(v71, v72))
      {
        goto LABEL_56;
      }

      v43 = v46;
      v74 = v67;
      if (*(v68 + 24) < v73)
      {
        v75 = v69;
        sub_1DEEB3DA4(v73, isUniquelyReferenced_nonNull_native);
        v76 = sub_1DEE13224(v60, v59);
        v78 = v77 & 1;
        v79 = v75;
        v80 = (v75 & 1) == v78;
        v24 = v141;
        if (!v80)
        {
          goto LABEL_58;
        }

        v70 = v76;
        if ((v79 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_22:
        v81 = v70;

        v158 = v166;
        v82 = (*(v166 + 56) + 16 * v81);
        v83 = v82[1];
        *v82 = v140;
        v82[1] = v74;

        sub_1DEE171B4(v24, &unk_1ECDE4350, v43);
LABEL_26:
        v44 = v154;
        v37 = v159;
        v41 = v160;
        v63(v143, v138);
        goto LABEL_5;
      }

      v24 = v141;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v69)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v158 = v70;
        isUniquelyReferenced_nonNull_native = v69;
        sub_1DEEB8C78();
        v70 = v158;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_22;
        }
      }

LABEL_24:
      v84 = v166;
      *(v166 + 8 * (v70 >> 6) + 64) |= 1 << v70;
      v85 = (v84[6] + 16 * v70);
      *v85 = v60;
      v85[1] = v59;
      v86 = (v84[7] + 16 * v70);
      *v86 = v140;
      v86[1] = v74;
      sub_1DEE171B4(v24, &unk_1ECDE4350, v43);
      v87 = v84[2];
      v88 = __OFADD__(v87, 1);
      v89 = v87 + 1;
      if (v88)
      {
        goto LABEL_57;
      }

      v158 = v84;
      v84[2] = v89;
      goto LABEL_26;
    }

    sub_1DEE171B4(v54, &unk_1ECDE4350, v46);
    (*(v52 + 8))(v58, v51);
    v45 = v42;
    v44 = v58;
    v24 = v54;
    v37 = v159;
    v41 = v160;
    v43 = v46;
  }

  while (v40);
  while (1)
  {
LABEL_7:
    v42 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v42 >= v41)
    {
      break;
    }

    v40 = *(v37 + 8 * v42);
    ++v45;
    if (v40)
    {
      v46 = v43;
      goto LABEL_11;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v167);
  v90 = v158;
  v91 = sub_1DEE58C2C(v158);
  v92 = sub_1DEEA3AD8(v91);

  v94 = sub_1DEEA3AD8(v93);

  if (*(v94 + 16) <= *(v92 + 16) >> 3)
  {
    v167 = v92;
    sub_1DEEC8D64(v94);

    v95 = v167;
  }

  else
  {
    v95 = sub_1DEEC9A18(v94, v92);
  }

  v97 = v157;
  v98 = 0;
  v99 = v95 + 56;
  v100 = 1 << *(v95 + 32);
  v101 = -1;
  if (v100 < 64)
  {
    v101 = ~(-1 << v100);
  }

  v102 = v101 & *(v95 + 56);
  v103 = (v100 + 63) >> 6;
  v162 = v164 + 48;
  *&v96 = 136446466;
  v160 = v96;
  v163 = v95;
  while (v102)
  {
    v104 = v102;
LABEL_40:
    v102 = (v104 - 1) & v104;
    if (*(v90 + 16))
    {
      v106 = (*(v95 + 48) + ((v98 << 10) | (16 * __clz(__rbit64(v104)))));
      v108 = *v106;
      v107 = v106[1];

      v109 = sub_1DEE13224(v108, v107);
      if (v110)
      {
        v161 = v108;
        v164 = v102;
        v111 = (*(v90 + 56) + 16 * v109);
        v112 = *v111;
        v113 = v111[1];
        sub_1DEE29594(v97 + 192, &v167);
        v114 = v168;
        v115 = v169;
        __swift_project_boxed_opaque_existential_1(&v167, v168);
        v116 = *(v115 + 8);

        v117 = v156;
        MetadataStoring.pairingRelationship(remoteDeviceID:)(v112, v113, v114, v116, v156);

        if ((*v162)(v117, 1, v165) == 1)
        {

          sub_1DEE171B4(v117, &qword_1ECDE3C18, &unk_1DEF94D20);
          __swift_destroy_boxed_opaque_existential_1(&v167);
          v97 = v157;
          v90 = v158;
          v95 = v163;
          v102 = v164;
        }

        else
        {
          v118 = v155;
          sub_1DEEAB218(v117, v155, type metadata accessor for PairingRelationship);
          __swift_destroy_boxed_opaque_existential_1(&v167);
          v119 = v152;
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v120 = sub_1DEF8D508();
          __swift_project_value_buffer(v120, qword_1ECDF6028);
          sub_1DEEACA70(v118, v119, type metadata accessor for PairingRelationship);

          v121 = sub_1DEF8D4D8();
          v122 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v167 = v159;
            *v123 = v160;
            sub_1DEF8D3F8();
            sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
            v124 = sub_1DEF8E2E8();
            v126 = v125;
            sub_1DEE273A0(v119, type metadata accessor for PairingRelationship);
            v127 = sub_1DEE12A5C(v124, v126, &v167);

            *(v123 + 4) = v127;
            *(v123 + 12) = 2082;
            v128 = sub_1DEE12A5C(v161, v107, &v167);

            *(v123 + 14) = v128;
            _os_log_impl(&dword_1DEE0F000, v121, v122, "Deleting relationship %{public}s due to removed persona %{public}s", v123, 0x16u);
            v129 = v159;
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v129, -1, -1);
            MEMORY[0x1E12CCD70](v123, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v119, type metadata accessor for PairingRelationship);
          }

          v95 = v163;
          v130 = v149;
          v131 = v145;
          *v149 = v145;
          v132 = v151;
          v146(v130, v148, v151);
          v133 = v131;
          LOBYTE(v131) = sub_1DEF8D7B8();
          v144(v130, v132);
          v97 = v157;
          if ((v131 & 1) == 0)
          {
            goto LABEL_55;
          }

          v134 = v155;
          sub_1DEE67760(v155);
          sub_1DEE29594(v97 + 192, &v167);
          v135 = v168;
          v136 = v169;
          __swift_project_boxed_opaque_existential_1(&v167, v168);
          (*(*(v136 + 16) + 120))(v134, v135);
          sub_1DEE273A0(v134, type metadata accessor for PairingRelationship);
          __swift_destroy_boxed_opaque_existential_1(&v167);
          v90 = v158;
          v102 = v164;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v105 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      break;
    }

    if (v105 >= v103)
    {
    }

    v104 = *(v99 + 8 * v105);
    ++v98;
    if (v104)
    {
      v98 = v105;
      goto LABEL_40;
    }
  }

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
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEE9A924(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v3 < 0)
    {
      sub_1DEE99AC0(v1);
    }

    else if (v3)
    {
      sub_1DEEAC064(v1, v2);
    }
  }

  return result;
}

uint64_t sub_1DEE9A9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Record.ID.Ownership(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEEACA70(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v12, type metadata accessor for Record.ID.Ownership);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return 0;
  }

  (*(v5 + 32))(v8, v12, v4);
  v13 = sub_1DEF8D3A8();
  (*(v5 + 8))(v8, v4);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  else
  {
    return *(a2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) & 1;
  }
}

uint64_t Replicator.description.getter()
{
  v1 = *(v0 + 232);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE9ABCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1DEF8DF28();
  v7 = 0;
  v8 = 0xE000000000000000;
  MEMORY[0x1E12CB180](0x617461646174656DLL, 0xEF203A65726F7453);
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CE8, &qword_1DEF915F0);
  sub_1DEF8E008();
  __swift_destroy_boxed_opaque_existential_1(v6);
  result = MEMORY[0x1E12CB180](59, 0xE100000000000000);
  v5 = v8;
  *a2 = v7;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DEE9ACBC()
{
  v1 = *(*v0 + 232);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE9AD1C()
{
  v3 = v0;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  isEscapingClosureAtFileLocation = v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 232);
  *isEscapingClosureAtFileLocation = v10;
  (*(v5 + 104))(isEscapingClosureAtFileLocation, *MEMORY[0x1E69E8018], v4, v7);
  v125 = v10;
  isUniquelyReferenced_nonNull_native = sub_1DEF8D7B8();
  (*(v5 + 8))(isEscapingClosureAtFileLocation, v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    v88 = sub_1DEF8DE68();
    goto LABEL_50;
  }

  swift_beginAccess();
  sub_1DEE29594(v3 + 192, &v133);
  v13 = v135;
  v12 = v136;
  __swift_project_boxed_opaque_existential_1(&v133, v135);
  v14 = (*(*(*(v12 + 1) + 8) + 24))(v13);
  v2 = v14;
  v124 = v3;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DEF8E038() | 0x8000000000000000;
    __swift_destroy_boxed_opaque_existential_1(&v133);
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = -1 << *(v14 + 32);
    v15 = v14 + 64;
    v16 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v14 + 64);
    __swift_destroy_boxed_opaque_existential_1(&v133);
  }

  isEscapingClosureAtFileLocation = 0;
  v121[1] = v16;
  isUniquelyReferenced_nonNull_native = (v16 + 64) >> 6;
  v127 = &v134;
  v21 = MEMORY[0x1E69E7CC8];
  v126 = isUniquelyReferenced_nonNull_native;
  v122 = v15;
  v123 = v2;
  while ((v2 & 0x8000000000000000) == 0)
  {
    v22 = isEscapingClosureAtFileLocation;
    v23 = v17;
    v24 = isEscapingClosureAtFileLocation;
    if (!v17)
    {
      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v24 >= isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_37;
        }

        v23 = *(v15 + 8 * v24);
        ++v22;
        if (v23)
        {
          goto LABEL_16;
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_16:
    v25 = (v23 - 1) & v23;
    v26 = (v24 << 9) | (8 * __clz(__rbit64(v23)));
    v27 = *(*(v2 + 48) + v26);
    v28 = *(*(v2 + 56) + v26);

    if (!v27)
    {
      goto LABEL_37;
    }

LABEL_20:

    v34 = MEMORY[0x1E12CC160](v33);
    v35 = *(v27 + 32);
    v36 = v21[2];
    v37 = 0uLL;
    v130 = v34;
    v131 = v25;
    if (v36)
    {
      v38 = sub_1DEEAF20C(v35);
      v37 = 0uLL;
      v39 = 0uLL;
      if (v40)
      {
        v41 = (v21[7] + 32 * v38);
        v37 = *v41;
        v39 = v41[1];
      }
    }

    else
    {
      v39 = 0uLL;
    }

    v140 = v37;
    v141 = v39;
    v42 = swift_allocObject();
    v2 = v124;
    v42[2] = v124;
    v42[3] = v35;
    v42[4] = &v140;
    v42[5] = v27;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1DEEAC020;
    *(v43 + 24) = v42;
    v136 = sub_1DEE46D40;
    v137 = v43;
    *&v133 = MEMORY[0x1E69E9820];
    *(&v133 + 1) = 1107296256;
    v134 = sub_1DEE134F4;
    v135 = &block_descriptor_776;
    v44 = _Block_copy(&v133);
    inited = v27;
    isUniquelyReferenced_nonNull_native = v137;

    v132 = v35;

    dispatch_sync(v125, v44);
    _Block_release(v44);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_74;
    }

    sub_1DEE29594(v2 + 192, &v133);
    v45 = v135;
    isUniquelyReferenced_nonNull_native = v136;
    __swift_project_boxed_opaque_existential_1(&v133, v135);
    (*(*(*(isUniquelyReferenced_nonNull_native + 8) + 8) + 56))(inited, v45);
    i = inited;
    if (v46)
    {
      __swift_destroy_boxed_opaque_existential_1(&v133);
      isEscapingClosureAtFileLocation = sub_1DEF8D9C8();

      v47 = v141 + isEscapingClosureAtFileLocation;
      if (__OFADD__(v141, isEscapingClosureAtFileLocation))
      {
        goto LABEL_75;
      }

      *&v141 = v141 + isEscapingClosureAtFileLocation;
      inited = *(&v140 + 1);
      v2 = v140;
      v128 = *(&v141 + 1);
      v48 = v132;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v133 = v21;
      isEscapingClosureAtFileLocation = sub_1DEEAF20C(v48);
      v50 = v21;
      v51 = v21[2];
      v52 = (v49 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        goto LABEL_76;
      }

      v54 = v49;
      if (v50[3] >= v53)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DEEB7FFC();
        }
      }

      else
      {
        sub_1DEEB2628(v53, isUniquelyReferenced_nonNull_native);
        v55 = sub_1DEEAF20C(v132);
        if ((v54 & 1) != (v56 & 1))
        {
          goto LABEL_85;
        }

        isEscapingClosureAtFileLocation = v55;
      }

      isUniquelyReferenced_nonNull_native = v126;
      v57 = v133;
      if (v54)
      {
        v58 = (*(v133 + 56) + 32 * isEscapingClosureAtFileLocation);
        *v58 = v2;
        v58[1] = inited;
        v59 = v128;
        v58[2] = v47;
        v58[3] = v59;

        v21 = v57;
      }

      else
      {
        *(v133 + 8 * (isEscapingClosureAtFileLocation >> 6) + 64) |= 1 << isEscapingClosureAtFileLocation;
        *(v57[6] + 8 * isEscapingClosureAtFileLocation) = v132;
        v60 = (v57[7] + 32 * isEscapingClosureAtFileLocation);
        *v60 = v2;
        v60[1] = inited;
        v61 = v128;
        v60[2] = v47;
        v60[3] = v61;
        v62 = v57[2];
        v63 = __OFADD__(v62, 1);
        v64 = v62 + 1;
        if (v63)
        {
          goto LABEL_77;
        }

        v21 = v57;
        v57[2] = v64;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v133);

      isUniquelyReferenced_nonNull_native = v126;
    }

    v15 = v122;
    v2 = v123;
    objc_autoreleasePoolPop(v130);

    isEscapingClosureAtFileLocation = v24;
    v17 = v131;
  }

  v29 = sub_1DEF8E0D8();
  if (v29)
  {
    v31 = v30;
    *&v140 = v29;
    type metadata accessor for Record.ID(0);
    swift_dynamicCast();
    v32 = v133;
    *&v140 = v31;
    type metadata accessor for RecordMetadata();
    v27 = v32;
    swift_dynamicCast();
    v24 = isEscapingClosureAtFileLocation;
    v25 = v17;
    if (v27)
    {
      goto LABEL_20;
    }
  }

LABEL_37:
  sub_1DEE2774C();
  v65 = sub_1DEEA31A8(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = (v21 + 8);
  v66 = 1 << *(v21 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & v21[8];
  v2 = (v66 + 63) >> 6;
  v126 = v21;

  inited = 0;
  for (i = v65; v68; i = v139)
  {
    v69 = inited;
    v70 = v126;
LABEL_46:
    v71 = __clz(__rbit64(v68));
    v68 &= v68 - 1;
    v72 = v71 | (v69 << 6);
    v73 = *(*(v70 + 48) + 8 * v72);
    v74 = (*(v70 + 56) + 32 * v72);
    v76 = *v74;
    v75 = v74[1];
    v78 = v74[2];
    v77 = v74[3];
    v127 = v75;
    v128 = v78;
    v130 = v77;
    v79 = v73[5];
    *&v133 = v73[4];
    *(&v133 + 1) = v79;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](v73[2], v73[3]);
    v131 = *(&v133 + 1);
    v132 = v133;
    *&v133 = 0;
    *(&v133 + 1) = 0xE000000000000000;
    sub_1DEF8DF28();

    *&v133 = 0x203A746E756F63;
    *(&v133 + 1) = 0xE700000000000000;
    *&v140 = v76;
    v80 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v80);

    MEMORY[0x1E12CB180](0x203A6469203BLL, 0xE600000000000000);
    *&v140 = v127;
    v81 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v81);

    MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xED0000203A646920);
    *&v140 = v128;
    v82 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v82);

    MEMORY[0x1E12CB180](0x203A61746164203BLL, 0xE800000000000000);
    *&v140 = v130;
    v83 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v83);

    v135 = MEMORY[0x1E69E6158];
    sub_1DEE117C0(&v133, &v140);
    v84 = i;
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v139 = v84;
    isEscapingClosureAtFileLocation = v131;
    sub_1DEF3E5B0(&v140, v132, v131, v85);

    v65 = v139;
  }

  v70 = v126;
  while (1)
  {
    v69 = inited + 1;
    if (__OFADD__(inited, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v69 >= v2)
    {
      break;
    }

    v68 = *(isUniquelyReferenced_nonNull_native + 8 * v69);
    ++inited;
    if (v68)
    {
      inited = v69;
      goto LABEL_46;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DB0, &unk_1DEF916C0);
  sub_1DEF8DD18();
  isUniquelyReferenced_nonNull_native = *(&v133 + 1);
  v86 = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DB8, &qword_1DEF978E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DEF90FD0;
  *(inited + 32) = 0x617461646174654DLL;
  isEscapingClosureAtFileLocation = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC0, &unk_1DEF916D0);
  *(inited + 48) = v65;
  *(inited + 72) = v87;
  strcpy((inited + 80), "EnabledZones");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v2 = v86;
  if (v86 >> 62)
  {
    goto LABEL_79;
  }

  v88 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_50:
  v132 = isUniquelyReferenced_nonNull_native;
  v127 = isEscapingClosureAtFileLocation;
  v128 = inited;
  if (!v88)
  {

    v90 = MEMORY[0x1E69E7CC0];
    goto LABEL_61;
  }

  v139 = MEMORY[0x1E69E7CC0];

  sub_1DEEC7E08(0, v88 & ~(v88 >> 63), 0);
  if (v88 < 0)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    type metadata accessor for Zone.ID();
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v89 = 0;
  v90 = v139;
  v91 = v2;
  v130 = v2;
  v131 = v2 & 0xC000000000000001;
  do
  {
    v92 = v88;
    if (v131)
    {
      v93 = MEMORY[0x1E12CB6E0](v89, v91);
    }

    else
    {
      v93 = v91[v89 + 4];
    }

    *&v133 = 0;
    *(&v133 + 1) = 0xE000000000000000;
    v94 = v93[2];
    v95 = v94[5];
    *&v140 = v94[4];
    *(&v140 + 1) = v95;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](v94[2], v94[3]);
    MEMORY[0x1E12CB180](v140, *(&v140 + 1));

    MEMORY[0x1E12CB180](8250, 0xE200000000000000);
    v96 = v93[3];
    v97 = v93[4];
    *&v140 = 0;
    *(&v140 + 1) = 0xE000000000000000;
    sub_1DEF8DF28();

    *&v140 = 0x3A746E6572727563;
    *(&v140 + 1) = 0xE900000000000020;
    v138 = v96;
    v98 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v98);

    MEMORY[0x1E12CB180](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
    v138 = v97;
    v99 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v99);

    MEMORY[0x1E12CB180](v140, *(&v140 + 1));

    v100 = v133;
    v139 = v90;
    v102 = *(v90 + 16);
    v101 = *(v90 + 24);
    if (v102 >= v101 >> 1)
    {
      sub_1DEEC7E08((v101 > 1), v102 + 1, 1);
      v90 = v139;
    }

    ++v89;
    *(v90 + 16) = v102 + 1;
    *(v90 + 16 * v102 + 32) = v100;
    v88 = v92;
    v91 = v130;
  }

  while (v92 != v89);

  inited = v128;
  isUniquelyReferenced_nonNull_native = v132;
LABEL_61:
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
  *(inited + 96) = v90;
  *(inited + 120) = v103;
  strcpy((inited + 128), "DisabledZones");
  *(inited + 142) = -4864;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    v104 = sub_1DEF8DE68();
    if (!v104)
    {
      goto LABEL_81;
    }

LABEL_63:
    v139 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E08(0, v104 & ~(v104 >> 63), 0);
    if ((v104 & 0x8000000000000000) == 0)
    {
      v105 = 0;
      v106 = v139;
      v107 = isUniquelyReferenced_nonNull_native;
      v130 = v103;
      v131 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      do
      {
        v108 = v104;
        if (v131)
        {
          v109 = MEMORY[0x1E12CB6E0](v105, v107);
        }

        else
        {
          v109 = v107[v105 + 4];
        }

        *&v133 = 0;
        *(&v133 + 1) = 0xE000000000000000;
        v110 = v109[2];
        v111 = v110[5];
        *&v140 = v110[4];
        *(&v140 + 1) = v111;

        MEMORY[0x1E12CB180](14906, 0xE200000000000000);
        MEMORY[0x1E12CB180](v110[2], v110[3]);
        MEMORY[0x1E12CB180](v140, *(&v140 + 1));

        MEMORY[0x1E12CB180](8250, 0xE200000000000000);
        v112 = v109[3];
        v113 = v109[4];
        *&v140 = 0;
        *(&v140 + 1) = 0xE000000000000000;
        sub_1DEF8DF28();

        *&v140 = 0x3A746E6572727563;
        *(&v140 + 1) = 0xE900000000000020;
        v138 = v112;
        v114 = sub_1DEF8E2E8();
        MEMORY[0x1E12CB180](v114);

        MEMORY[0x1E12CB180](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
        v138 = v113;
        v115 = sub_1DEF8E2E8();
        MEMORY[0x1E12CB180](v115);

        MEMORY[0x1E12CB180](v140, *(&v140 + 1));

        v116 = v133;
        v139 = v106;
        v118 = *(v106 + 16);
        v117 = *(v106 + 24);
        if (v118 >= v117 >> 1)
        {
          sub_1DEEC7E08((v117 > 1), v118 + 1, 1);
          v106 = v139;
        }

        ++v105;
        *(v106 + 16) = v118 + 1;
        *(v106 + 16 * v118 + 32) = v116;
        v104 = v108;
        v107 = v132;
      }

      while (v108 != v105);

      inited = v128;
      v103 = v130;
      goto LABEL_82;
    }

    goto LABEL_84;
  }

  v104 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v104)
  {
    goto LABEL_63;
  }

LABEL_81:

  v106 = MEMORY[0x1E69E7CC0];
LABEL_82:
  *(inited + 168) = v103;
  *(inited + 144) = v106;
  v119 = sub_1DEEA31A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC8, &unk_1DEF9AFF0);
  swift_arrayDestroy();

  return v119;
}

uint64_t sub_1DEE9BCB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 240);

  v9 = sub_1DEF718FC(a2, v8);

  if (v9)
  {
    if (__OFADD__(*a3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*a3;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v9 + 24);
        ObjectType = swift_getObjectType();
        v13 = (*(v11 + 64))(a4, ObjectType, v11);
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = *(a4 + 16);
        v17 = *(a4 + 24);
        v13 = sub_1DEF8D9C8();

        v15 = 0;
      }

      v18 = a3[1];
      v19 = __OFADD__(v18, v13);
      v20 = v18 + v13;
      if (!v19)
      {
        a3[1] = v20;
        v21 = a3[3];
        v19 = __OFADD__(v21, v15);
        v22 = v21 + v15;
        if (!v19)
        {
          a3[3] = v22;
          return result;
        }

LABEL_12:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1DEE9BDDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 232);
  *v8 = v9;
  v10 = *MEMORY[0x1E69E8020];
  v25 = v4[13];
  v25(v8, v10, v3, v6);
  v24 = v9;
  v11 = sub_1DEF8D7B8();
  v12 = v4[1];
  result = v12(v8, v3);
  if (v11)
  {
    swift_beginAccess();
    v14 = *(a1 + 240);

    v16 = sub_1DEEA59EC(v15, a1);

    v17 = v26;
    *v26 = v16;
    v18 = v25;
    *v8 = v24;
    v18(v8, v10, v3);
    v19 = sub_1DEF8D7B8();
    result = v12(v8, v3);
    if (v19)
    {
      v20 = *(a1 + 240);

      v22 = sub_1DEEA8D44(v21, a1);

      v17[1] = v22;
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

uint64_t sub_1DEE9BFF0()
{
  v1 = v0;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v2 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v121 = &v113 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v120 = &v113 - v7;
  v116 = type metadata accessor for PairingRelationship();
  v132 = *(v116 - 8);
  v8 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v125 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v130 = &v113 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v115 = &v113 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v113 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v113 - v17;
  v18 = sub_1DEF8D788();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v1 + 232);
  *v23 = v24;
  (*(v19 + 104))(v23, *MEMORY[0x1E69E8018], v18, v21);
  v25 = v24;
  v26 = sub_1DEF8D7B8();
  result = (*(v19 + 8))(v23, v18);
  if ((v26 & 1) == 0)
  {
    goto LABEL_73;
  }

  swift_beginAccess();
  sub_1DEE29594(v1 + 192, &v134);
  v29 = v135;
  v28 = v136;
  __swift_project_boxed_opaque_existential_1(&v134, v135);
  v30 = (*(*(*(v28 + 8) + 8) + 32))(v29);
  v31 = *(v30 + 16);
  v124 = v1;
  if (v31)
  {
    v133 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7DA4(0, v31, 0);
    v131 = v133;
    v32 = v30 + 64;
    v33 = -1 << *(v30 + 32);
    result = sub_1DEF8DE18();
    v34 = result;
    v35 = 0;
    v114 = v30 + 72;
    v117 = v31;
    v118 = v30 + 64;
    do
    {
      if (v34 < 0 || v34 >= 1 << *(v30 + 32))
      {
        goto LABEL_67;
      }

      v37 = v34 >> 6;
      if ((*(v32 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
      {
        goto LABEL_68;
      }

      v128 = 1 << v34;
      v126 = v35;
      v127 = *(v30 + 36);
      v38 = v123;
      v39 = *(v123 + 48);
      v40 = *(v30 + 48);
      v41 = sub_1DEF8D3F8();
      v42 = *(v41 - 8);
      v43 = v120;
      (*(v42 + 16))(v120, v40 + *(v42 + 72) * v34, v41);
      v44 = *(v30 + 56);
      v129 = *(v132 + 72);
      sub_1DEEACA70(v44 + v129 * v34, &v43[v39], type metadata accessor for PairingRelationship);
      v45 = v121;
      (*(v42 + 32))(v121, v43, v41);
      sub_1DEEAB218(&v43[v39], v45 + *(v38 + 48), type metadata accessor for PairingRelationship);
      v46 = v122;
      sub_1DEE1BA88(v45, v122, &unk_1ECDE4350, &qword_1DEF93400);
      v47 = *(v38 + 48);
      v48 = v119;
      sub_1DEEAB218(v46 + v47, v119, type metadata accessor for PairingRelationship);
      (*(v42 + 8))(v46, v41);
      v49 = v131;
      v133 = v131;
      v51 = *(v131 + 16);
      v50 = *(v131 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1DEEC7DA4(v50 > 1, v51 + 1, 1);
        v49 = v133;
      }

      *(v49 + 16) = v51 + 1;
      v52 = *(v132 + 80);
      v131 = v49;
      result = sub_1DEEAB218(v48, v49 + ((v52 + 32) & ~v52) + v51 * v129, type metadata accessor for PairingRelationship);
      v36 = 1 << *(v30 + 32);
      if (v34 >= v36)
      {
        goto LABEL_69;
      }

      v32 = v118;
      v53 = *(v118 + 8 * v37);
      if ((v53 & v128) == 0)
      {
        goto LABEL_70;
      }

      if (v127 != *(v30 + 36))
      {
        goto LABEL_71;
      }

      v54 = v53 & (-2 << (v34 & 0x3F));
      if (v54)
      {
        v36 = __clz(__rbit64(v54)) | v34 & 0x7FFFFFFFFFFFFFC0;
        v1 = v124;
      }

      else
      {
        v55 = v37 << 6;
        v56 = v37 + 1;
        v57 = (v114 + 8 * v37);
        v1 = v124;
        while (v56 < (v36 + 63) >> 6)
        {
          v59 = *v57++;
          v58 = v59;
          v55 += 64;
          ++v56;
          if (v59)
          {
            result = sub_1DEE2F804(v34, v127, 0);
            v36 = __clz(__rbit64(v58)) + v55;
            goto LABEL_5;
          }
        }

        result = sub_1DEE2F804(v34, v127, 0);
      }

LABEL_5:
      v35 = v126 + 1;
      v34 = v36;
    }

    while (v126 + 1 != v117);

    v60 = v116;
    v61 = v131;
  }

  else
  {

    v61 = MEMORY[0x1E69E7CC0];
    v60 = v116;
  }

  result = __swift_destroy_boxed_opaque_existential_1(&v134);
  v62 = *(v61 + 16);
  v63 = v132;
  v64 = v113;
  if (!v62)
  {
    v91 = MEMORY[0x1E69E7CC0];
    v81 = MEMORY[0x1E69E7CC0];
LABEL_51:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DB8, &qword_1DEF978E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF91020;
    *(inited + 32) = 0x646572696150;
    v132 = inited + 32;
    *(inited + 40) = 0xE600000000000000;
    v93 = sub_1DEE9CD88(v91, v1);

    v94 = *(v93 + 2);
    if (v94)
    {
      v134 = MEMORY[0x1E69E7CC0];
      sub_1DEEC7E08(0, v94, 0);
      v95 = v134;
      v131 = v93;
      v96 = (v93 + 40);
      do
      {
        v98 = *(v96 - 1);
        v97 = *v96;
        v134 = v95;
        v99 = *(v95 + 16);
        v100 = *(v95 + 24);

        if (v99 >= v100 >> 1)
        {
          sub_1DEEC7E08((v100 > 1), v99 + 1, 1);
          v95 = v134;
        }

        *(v95 + 16) = v99 + 1;
        v101 = v95 + 16 * v99;
        *(v101 + 32) = v98;
        *(v101 + 40) = v97;
        v96 += 2;
        --v94;
      }

      while (v94);

      v1 = v124;
    }

    else
    {

      v95 = MEMORY[0x1E69E7CC0];
    }

    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
    *(inited + 48) = v95;
    *(inited + 72) = v102;
    *(inited + 80) = 0x6465726961706E55;
    *(inited + 88) = 0xE800000000000000;
    v103 = sub_1DEE9CD88(v81, v1);

    v104 = *(v103 + 2);
    if (v104)
    {
      v131 = v102;
      v134 = MEMORY[0x1E69E7CC0];
      sub_1DEEC7E08(0, v104, 0);
      v105 = v134;
      v106 = (v103 + 40);
      do
      {
        v108 = *(v106 - 1);
        v107 = *v106;
        v134 = v105;
        v110 = *(v105 + 16);
        v109 = *(v105 + 24);

        if (v110 >= v109 >> 1)
        {
          sub_1DEEC7E08((v109 > 1), v110 + 1, 1);
          v105 = v134;
        }

        *(v105 + 16) = v110 + 1;
        v111 = v105 + 16 * v110;
        *(v111 + 32) = v108;
        *(v111 + 40) = v107;
        v106 += 2;
        --v104;
      }

      while (v104);

      v102 = v131;
    }

    else
    {

      v105 = MEMORY[0x1E69E7CC0];
    }

    *(inited + 120) = v102;
    *(inited + 96) = v105;
    v112 = sub_1DEEA31A8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC8, &unk_1DEF9AFF0);
    swift_arrayDestroy();
    return v112;
  }

  v65 = 0;
  v131 = MEMORY[0x1E69E7CC0];
  v66 = v61;
  while (v65 < *(v61 + 16))
  {
    v67 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v68 = *(v63 + 72);
    sub_1DEEACA70(v61 + v67 + v68 * v65, v64, type metadata accessor for PairingRelationship);
    v69 = (v64 + *(v60 + 32));
    v70 = *v69;
    v71 = v69[1];
    if (v71 >= 2)
    {
      if (v71 == 2)
      {
        sub_1DEE4F8D4(v70, 2uLL);
        sub_1DEE4F8D4(0, 2uLL);
        sub_1DEEAB218(v64, v115, type metadata accessor for PairingRelationship);
        v74 = v131;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v134 = v74;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DEEC7DA4(0, *(v74 + 16) + 1, 1);
          v60 = v116;
          v74 = v134;
        }

        v77 = *(v74 + 16);
        v76 = *(v74 + 24);
        v78 = v74;
        if (v77 >= v76 >> 1)
        {
          sub_1DEEC7DA4(v76 > 1, v77 + 1, 1);
          v60 = v116;
          v78 = v134;
        }

        *(v78 + 16) = v77 + 1;
        v131 = v78;
        result = sub_1DEEAB218(v115, v78 + v67 + v77 * v68, type metadata accessor for PairingRelationship);
        v61 = v66;
        v64 = v113;
        goto LABEL_25;
      }

      if (v71 != 3)
      {
        v72 = *v69;
        v73 = v69[1];

        v71 = v73;
        v60 = v116;
        v70 = v72;
        v63 = v132;
      }
    }

    sub_1DEE4F8D4(v70, v71);
    sub_1DEE4F8D4(0, 2uLL);
    result = sub_1DEE273A0(v64, type metadata accessor for PairingRelationship);
LABEL_25:
    if (v62 == ++v65)
    {
      v79 = 0;
      v80 = v61 + v67;
      v81 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v79 >= *(v61 + 16))
        {
          goto LABEL_72;
        }

        v82 = v130;
        sub_1DEEACA70(v80, v130, type metadata accessor for PairingRelationship);
        v83 = (v82 + *(v60 + 32));
        v84 = *v83;
        v85 = v83[1];
        if (v85 < 2)
        {
          goto LABEL_44;
        }

        if (v85 != 2)
        {
          break;
        }

        sub_1DEE4F8D4(v84, 2uLL);
        sub_1DEE4F8D4(0, 2uLL);
        result = sub_1DEE273A0(v130, type metadata accessor for PairingRelationship);
LABEL_38:
        ++v79;
        v80 += v68;
        if (v62 == v79)
        {
          v1 = v124;
          v91 = v131;
          goto LABEL_51;
        }
      }

      if (v85 != 3)
      {
        v86 = *v83;
        v87 = v83[1];

        v85 = v87;
        v60 = v116;
        v84 = v86;
      }

LABEL_44:
      sub_1DEE4F8D4(v84, v85);
      sub_1DEE4F8D4(0, 2uLL);
      sub_1DEEAB218(v130, v125, type metadata accessor for PairingRelationship);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v134 = v81;
      if ((v88 & 1) == 0)
      {
        sub_1DEEC7DA4(0, *(v81 + 16) + 1, 1);
        v60 = v116;
        v81 = v134;
      }

      v90 = *(v81 + 16);
      v89 = *(v81 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_1DEEC7DA4(v89 > 1, v90 + 1, 1);
        v60 = v116;
        v81 = v134;
      }

      *(v81 + 16) = v90 + 1;
      result = sub_1DEEAB218(v125, v81 + v67 + v90 * v68, type metadata accessor for PairingRelationship);
      v61 = v66;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
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
  return result;
}

char *sub_1DEE9CD88(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  while (v5 != v4)
  {
    v6 = *(type metadata accessor for PairingRelationship() - 8);
    sub_1DEE9CE6C(&v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4++, a2);
  }

  return v8;
}

uint64_t sub_1DEE9CE6C(char **a1, uint64_t a2, uint64_t a3)
{
  v78 = a1;
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ZoneVersion();
  v84 = *(v9 - 8);
  v10 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D10, &qword_1DEF91620);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = (&v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v77 - v18;
  swift_beginAccess();
  sub_1DEE29594(a3 + 192, &v93);
  v20 = v95;
  v21 = v96;
  __swift_project_boxed_opaque_existential_1(&v93, v95);
  v22 = *(*(v21 + 8) + 24);
  v79 = a2;
  v23 = v22(a2, v20);
  __swift_destroy_boxed_opaque_existential_1(&v93);
  v24 = 0;
  v26 = v23 + 64;
  v25 = *(v23 + 64);
  v27 = 1 << *(v23 + 32);
  v93 = 0;
  v94 = 0xE000000000000000;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & v25;
  v30 = (v27 + 63) >> 6;
  v85 = v23;
  v86 = (v6 + 48);
  v80 = (v6 + 8);
  v81 = (v6 + 32);
  v88 = v5;
  while (1)
  {
    if (!v29)
    {
      if (v30 <= v24 + 1)
      {
        v33 = v24 + 1;
      }

      else
      {
        v33 = v30;
      }

      v34 = v33 - 1;
      v35 = v97;
      while (1)
      {
        v32 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v32 >= v30)
        {
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
          (*(*(v57 - 8) + 56))(v35, 1, 1, v57);
          v29 = 0;
          v24 = v34;
          goto LABEL_17;
        }

        v29 = *(v26 + 8 * v32);
        v24 = (v24 + 1);
        if (v29)
        {
          v24 = v32;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v32 = v24;
LABEL_16:
    v36 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v37 = v36 | (v32 << 6);
    v38 = *(*(v85 + 48) + 8 * v37);
    v39 = v83;
    sub_1DEEACA70(*(v85 + 56) + *(v84 + 72) * v37, v83, type metadata accessor for ZoneVersion);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
    v41 = *(v40 + 48);
    v42 = v97;
    *v97 = v38;
    v43 = v39;
    v35 = v42;
    sub_1DEEAB218(v43, v42 + v41, type metadata accessor for ZoneVersion);
    (*(*(v40 - 8) + 56))(v35, 0, 1, v40);

LABEL_17:
    sub_1DEE1BA88(v35, v19, &qword_1ECDE3D10, &qword_1DEF91620);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
    if ((*(*(v44 - 8) + 48))(v19, 1, v44) == 1)
    {
      break;
    }

    v45 = *v19;
    v46 = &v19[*(v44 + 48)];
    v47 = v87;
    sub_1DEEAB218(v46, v87, type metadata accessor for ZoneVersion);
    v48 = v88;
    if ((*v86)(v47, 1, v88) == 1)
    {
      v49 = 0xE500000000000000;
      v50 = 0x7974706D65;
    }

    else
    {
      v51 = v47;
      v52 = v82;
      (*v81)(v82, v51, v48);
      v53 = sub_1DEF8D398();
      v54 = v48;
      v50 = v53;
      v49 = v55;
      (*v80)(v52, v54);
    }

    v56 = v93 & 0xFFFFFFFFFFFFLL;
    if ((v94 & 0x2000000000000000) != 0)
    {
      v56 = HIBYTE(v94) & 0xF;
    }

    if (v56)
    {
      MEMORY[0x1E12CB180](32, 0xE100000000000000);
    }

    v31 = v45[5];
    v91 = v45[4];
    v92 = v31;

    MEMORY[0x1E12CB180](14906, 0xE200000000000000);
    MEMORY[0x1E12CB180](v45[2], v45[3]);
    MEMORY[0x1E12CB180](8250, 0xE200000000000000);
    MEMORY[0x1E12CB180](v50, v49);

    MEMORY[0x1E12CB180](59, 0xE100000000000000);
    MEMORY[0x1E12CB180](v91, v92);
  }

  v91 = 0;
  v92 = 0xE000000000000000;
  sub_1DEF8DF28();
  sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
  v58 = v79;
  v59 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v59);

  MEMORY[0x1E12CB180](8251, 0xE200000000000000);
  v60 = type metadata accessor for PairingRelationship();
  v61 = (v58 + v60[8]);
  v62 = v61[1];
  if (v62 > 1)
  {
    v24 = v78;
    if (v62 != 2)
    {
      if (v62 == 3)
      {
        v63 = 0xE800000000000000;
        v64 = 0x6576697463616E69;
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v63 = 0xE600000000000000;
    v64 = 0x646572696170;
  }

  else
  {
    v24 = v78;
    if (v62)
    {
      if (v62 == 1)
      {
        v63 = 0xE700000000000000;
        v64 = 0x676E6972696170;
        goto LABEL_36;
      }

LABEL_33:
      v65 = *v61;
      v89 = 0x6E6974617267696DLL;
      v90 = 0xEA00000000002867;
      MEMORY[0x1E12CB180](v65);
      MEMORY[0x1E12CB180](41, 0xE100000000000000);
      v64 = v89;
      v63 = v90;
      goto LABEL_36;
    }

    v63 = 0xEA00000000006465;
    v64 = 0x6375646F72746E69;
  }

LABEL_36:
  MEMORY[0x1E12CB180](v64, v63);

  MEMORY[0x1E12CB180](0x65746F6D6572203BLL, 0xEA0000000000203ALL);
  v66 = v79;
  v67 = v79 + v60[5];
  v68 = DeviceDescriptor.shortDescription.getter();
  MEMORY[0x1E12CB180](v68);

  MEMORY[0x1E12CB180](0x696D6F636E69203BLL, 0xEC000000203A676ELL);
  v69 = v60[6];
  sub_1DEF8D378();
  sub_1DEE2BAF8(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
  v70 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v70);

  MEMORY[0x1E12CB180](0x696F6774756F203BLL, 0xEC000000203A676ELL);
  v71 = v66 + v60[7];
  v72 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v72);

  MEMORY[0x1E12CB180](0x6F6973726576203BLL, 0xEC000000203A736ELL);
  MEMORY[0x1E12CB180](v93, v94);

  v26 = v91;
  v29 = v92;
  v19 = *v24;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_37;
  }

LABEL_41:
  result = sub_1DEF3805C(0, *(v19 + 2) + 1, 1, v19);
  v19 = result;
LABEL_37:
  v75 = *(v19 + 2);
  v74 = *(v19 + 3);
  if (v75 >= v74 >> 1)
  {
    result = sub_1DEF3805C((v74 > 1), v75 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 2) = v75 + 1;
  v76 = &v19[16 * v75];
  *(v76 + 4) = v26;
  *(v76 + 5) = v29;
  *v24 = v19;
  return result;
}

unint64_t sub_1DEE9D7B0()
{
  v2 = v0;
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 232);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8018], v3, v6);
  inited = v9;
  LOBYTE(v9) = sub_1DEF8D7B8();
  (*(v4 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_33;
  }

  if (*(v2 + 137))
  {
    v68 = 1701736270;
    v69 = 0xE400000000000000;
  }

  else
  {
    v11 = *(v2 + 136);
    v12 = *(v2 + 128);
    v13 = *(v2 + 112);
    v14 = *(v2 + 104) / *(v2 + 120);
    v64 = sub_1DEF8DBA8();
    v65 = v15;
    MEMORY[0x1E12CB180](120, 0xE100000000000000);
    v16 = sub_1DEF8DBA8();
    MEMORY[0x1E12CB180](v16);

    MEMORY[0x1E12CB180](64, 0xE100000000000000);
    v17 = sub_1DEF8DBA8();
    MEMORY[0x1E12CB180](v17);

    v68 = v64;
    v69 = v65;
    if ((v11 & 1) == 0)
    {
      v64 = 114;
      v65 = 0xE100000000000000;
      v18 = sub_1DEF8DBA8();
      MEMORY[0x1E12CB180](v18);

      MEMORY[0x1E12CB180](v64, v65);
    }
  }

  swift_beginAccess();
  sub_1DEE29594(v2 + 192, &v64);
  v20 = v66;
  v19 = v67;
  __swift_project_boxed_opaque_existential_1(&v64, v66);
  LOBYTE(v19) = (*(*(*(v19 + 8) + 8) + 40))(v20);
  __swift_destroy_boxed_opaque_existential_1(&v64);
  if (v19)
  {
    sub_1DEE29594(v2 + 192, &v64);
    v22 = v66;
    v21 = v67;
    __swift_project_boxed_opaque_existential_1(&v64, v66);
    v23 = (*(*(*(v21 + 8) + 8) + 48))(v22);
    __swift_destroy_boxed_opaque_existential_1(&v64);
    v24 = sub_1DEE586BC(v23);

    v64 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
    sub_1DEE1B548(&unk_1ECDE2C40, &qword_1ECDE3C90, &unk_1DEF91590);
    v61 = sub_1DEF8D8D8();
    v62 = v25;
  }

  else
  {
    v61 = 0x64656C6261736944;
    v62 = 0xE800000000000000;
  }

  v26 = sub_1DEEAEE94();
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0x6E776F6E6B6E75;
  }

  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0xE700000000000000;
  }

  v30 = sub_1DEEAEE94();
  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0x6E776F6E6B6E75;
  }

  v57 = v32;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0xE700000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DD0, &qword_1DEF916E0);
  sub_1DEF8DD18();
  v58 = v64;
  v59 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DB8, &qword_1DEF978E0);
  inited = swift_initStackObject();
  *(inited + 4) = 0x656369766544;
  v60 = inited + 32;
  *(inited + 1) = xmmword_1DEF91030;
  *(inited + 5) = 0xE600000000000000;
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1DEF8DF28();
  v34 = sub_1DEEAEE94();
  if (v35)
  {
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v38 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v39 = [v38 hostName];
    v36 = sub_1DEF8D948();
    v37 = v40;
  }

  MEMORY[0x1E12CB180](v36, v37);

  MEMORY[0x1E12CB180](10272, 0xE200000000000000);
  MEMORY[0x1E12CB180](v28, v29);

  MEMORY[0x1E12CB180](8251, 0xE200000000000000);
  MEMORY[0x1E12CB180](v57, v33);

  MEMORY[0x1E12CB180](8251, 0xE200000000000000);
  if (*(v2 + 256))
  {
    v41 = *(v2 + 248);
    v42 = *(v2 + 256);
  }

  else
  {
    v43 = *(v2 + 176);
    v44 = *(v2 + 184);
    ObjectType = swift_getObjectType();
    v46 = (*(v44 + 16))(ObjectType, v44);
    if (v47)
    {
      v41 = v46;
    }

    else
    {
      v41 = 0xD000000000000016;
    }

    if (v47)
    {
      v42 = v47;
    }

    else
    {
      v42 = 0x80000001DEF9BCA0;
    }
  }

  v1 = 0xD000000000000011;
  v2 = 0xEB00000000203A6DLL;

  MEMORY[0x1E12CB180](v41, v42);

  MEMORY[0x1E12CB180](0x6E65727275632820, 0xEB00000000203A74);
  if (qword_1ED786060 != -1)
  {
    goto LABEL_35;
  }

LABEL_33:
  v63 = xmmword_1ED786068;
  v48 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v48);

  MEMORY[0x1E12CB180](0x756D696E696D203BLL, v2);
  v63 = *(&xmmword_1ED786068 + 1);
  v49 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v49);

  MEMORY[0x1E12CB180](2112297, 0xE300000000000000);
  MEMORY[0x1E12CB180](v68, v69);

  v50 = v65;
  v51 = MEMORY[0x1E69E6158];
  *(inited + 6) = v64;
  *(inited + 7) = v50;
  *(inited + 9) = v51;
  *(inited + 10) = 0x73694C776F6C6C41;
  *(inited + 11) = 0xE900000000000074;
  v52 = v62;
  *(inited + 12) = v61;
  *(inited + 13) = v52;
  *(inited + 15) = v51;
  *(inited + 16) = 0x64656C62616E45;
  *(inited + 17) = 0xE700000000000000;
  v53 = MEMORY[0x1E69E6370];
  inited[144] = v58;
  *(inited + 21) = v53;
  *(inited + 22) = v1;
  *(inited + 23) = 0x80000001DEF9C1F0;
  *(inited + 27) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
  *(inited + 24) = v59;
  v54 = sub_1DEEA31A8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC8, &unk_1DEF9AFF0);
  swift_arrayDestroy();
  return v54;
}

uint64_t sub_1DEE9DF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 624);
  swift_beginAccess();
  v4 = *(a1 + 672);

  v6 = sub_1DEE58E70(v5);

  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1DEE9DFA0()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 232);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8018], v1, v4);
  v7;
  v8 = sub_1DEF8D7B8();
  result = (*(v2 + 8))(v6, v1);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DD8, &qword_1DEF916E8);
    sub_1DEF8DD18();
    v11 = v57;
    v10 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DB8, &qword_1DEF978E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF91020;
    *(inited + 32) = 0xD000000000000013;
    v48[1] = inited + 32;
    *(inited + 40) = 0x80000001DEF9C210;
    v13 = *(v11 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    v50 = inited;
    v49 = v10;
    if (v13)
    {
      v56 = MEMORY[0x1E69E7CC0];
      sub_1DEEC7E08(0, v13, 0);
      v15 = v56;
      v51 = "EnabledMessageTypes";
      v48[0] = v11;
      v16 = (v11 + 72);
      do
      {
        v17 = *(v16 - 5);
        v18 = *(v16 - 4);
        v19 = *(v16 - 3);
        v20 = *(v16 - 2);
        v21 = *(v16 - 1);
        v52 = *v16;
        v57 = 0;
        v58 = 0xE000000000000000;

        sub_1DEF8DF28();
        MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
        v54 = 0;
        v55 = 0xE000000000000000;
        sub_1DEF8DF28();

        v54 = 540697705;
        v55 = 0xE400000000000000;
        MEMORY[0x1E12CB180](v17, v18);
        MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1E12CB180](v19, v20);
        MEMORY[0x1E12CB180](v54, v55);

        MEMORY[0x1E12CB180](0xD000000000000013, v51 | 0x8000000000000000);
        v54 = 0;
        v55 = 0xE000000000000000;
        sub_1DEF8DF28();

        v54 = 0x3A746E6572727563;
        v55 = 0xE900000000000020;
        v53 = v21;
        v22 = sub_1DEF8E2E8();
        MEMORY[0x1E12CB180](v22);

        MEMORY[0x1E12CB180](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
        v53 = v52;
        v23 = sub_1DEF8E2E8();
        MEMORY[0x1E12CB180](v23);

        MEMORY[0x1E12CB180](v54, v55);

        v24 = v57;
        v25 = v58;
        v56 = v15;
        v27 = *(v15 + 16);
        v26 = *(v15 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1DEEC7E08((v26 > 1), v27 + 1, 1);
          v15 = v56;
        }

        v16 += 6;
        *(v15 + 16) = v27 + 1;
        v28 = v15 + 16 * v27;
        *(v28 + 32) = v24;
        *(v28 + 40) = v25;
        --v13;
      }

      while (v13);

      v29 = v50;
      v10 = v49;
      v14 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v29 = inited;

      v15 = MEMORY[0x1E69E7CC0];
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
    v31 = v30;
    v29[6] = v15;
    v29[9] = v30;
    v29[10] = 0xD000000000000014;
    v29[11] = 0x80000001DEF9C250;
    v32 = *(v10 + 16);
    if (v32)
    {
      v48[0] = v30;
      v56 = v14;
      sub_1DEEC7E08(0, v32, 0);
      v33 = v56;
      v51 = "EnabledMessageTypes";
      v34 = (v10 + 72);
      do
      {
        v35 = *(v34 - 5);
        v36 = *(v34 - 4);
        v37 = *(v34 - 3);
        v38 = *(v34 - 2);
        v39 = *(v34 - 1);
        v52 = *v34;
        v57 = 0;
        v58 = 0xE000000000000000;

        sub_1DEF8DF28();
        MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
        v54 = 0;
        v55 = 0xE000000000000000;
        sub_1DEF8DF28();

        v54 = 540697705;
        v55 = 0xE400000000000000;
        MEMORY[0x1E12CB180](v35, v36);
        MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1E12CB180](v37, v38);
        MEMORY[0x1E12CB180](v54, v55);

        MEMORY[0x1E12CB180](0xD000000000000013, v51 | 0x8000000000000000);
        v54 = 0;
        v55 = 0xE000000000000000;
        sub_1DEF8DF28();

        v54 = 0x3A746E6572727563;
        v55 = 0xE900000000000020;
        v53 = v39;
        v40 = sub_1DEF8E2E8();
        MEMORY[0x1E12CB180](v40);

        MEMORY[0x1E12CB180](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
        v53 = v52;
        v41 = sub_1DEF8E2E8();
        MEMORY[0x1E12CB180](v41);

        MEMORY[0x1E12CB180](v54, v55);

        v42 = v57;
        v43 = v58;
        v56 = v33;
        v45 = *(v33 + 16);
        v44 = *(v33 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_1DEEC7E08((v44 > 1), v45 + 1, 1);
          v33 = v56;
        }

        v34 += 6;
        *(v33 + 16) = v45 + 1;
        v46 = v33 + 16 * v45;
        *(v46 + 32) = v42;
        *(v46 + 40) = v43;
        --v32;
      }

      while (v32);

      v29 = v50;
      v31 = v48[0];
    }

    else
    {

      v33 = MEMORY[0x1E69E7CC0];
    }

    v29[15] = v31;
    v29[12] = v33;
    v47 = sub_1DEEA31A8(v29);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC8, &unk_1DEF9AFF0);
    swift_arrayDestroy();
    return v47;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE9E78C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a1 + 232);
  *v9 = v10;
  v11 = *MEMORY[0x1E69E8020];
  v12 = *MEMORY[0x1E69E8020];
  v28 = v5[13];
  v28(v9, v12, v4, v7);
  v26 = v10;
  LOBYTE(v10) = sub_1DEF8D7B8();
  v27 = v5[1];
  result = v27(v9, v4);
  if (v10)
  {
    swift_beginAccess();
    v14 = *(a1 + 664);

    v16 = sub_1DEEA4880(v15, a1, sub_1DEEA5DF0, sub_1DEEA5DF0);
    HIDWORD(v25) = v11;
    v17 = a2;
    v18 = v16;

    v19 = sub_1DEE581C8(v18);
    v20 = v17;

    *v17 = v19;
    *v9 = v26;
    (v28)(v9, HIDWORD(v25), v4);
    LOBYTE(v17) = sub_1DEF8D7B8();
    result = v27(v9, v4);
    if (v17)
    {
      v21 = *(a1 + 664);

      v23 = sub_1DEEA4880(v22, a1, sub_1DEEAC52C, sub_1DEEAC52C);

      v24 = sub_1DEE581C8(v23);

      v20[1] = v24;
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

Swift::String __swiftcall Replicator.captureState()()
{
  Replicator.captureState(identifier:)(0, 0xE000000000000000);
  v0 = sub_1DEF8D858();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void sub_1DEE9EAA8(uint64_t a1, void (*a2)(void *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D20, &unk_1DEF91630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v10 - v6);
  sub_1DEE17214(a1, &v10 - v6, &qword_1ECDE3D20, &unk_1DEF91630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    v9 = v8;
    a2(v8, 1);
  }

  else
  {
    a2(0, 0);
    sub_1DEE171B4(v7, &qword_1ECDE3D20, &unk_1DEF91630);
  }
}

uint64_t sub_1DEE9EBC8(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1DEEA0F68(v13, v7, v5, a3);
  result = MEMORY[0x1E12CCD70](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DEE9ED38(uint64_t a1, unsigned __int8 a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_1DEEA0EE0(v10, v6, v4, a2);
      MEMORY[0x1E12CCD70](v10, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v11 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1DEE9F9D4(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_4:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DEE9EEA4(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1DEEA0FF0(v13, v7, v5, a3);
  result = MEMORY[0x1E12CCD70](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DEE9F014(unint64_t *a1, uint64_t a2, void *a3)
{
  v53 = a2;
  v54 = a1;
  v4 = type metadata accessor for DeviceDescriptor();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v7 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v52 - v11;
  v12 = type metadata accessor for PairingRelationship();
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1DEF8D3F8();
  v15 = *(*(v68 - 8) + 64);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v68);
  v67 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0;
  v19 = 0;
  v65 = a3;
  v22 = a3[8];
  v21 = a3 + 8;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v59 = v16 + 16;
  v60 = v16;
  v57 = (v16 + 8);
  v58 = v26;
  v71 = v9;
  while (v25)
  {
    v29 = __clz(__rbit64(v25));
    v66 = (v25 - 1) & v25;
LABEL_12:
    v32 = v29 | (v19 << 6);
    v33 = v65;
    v34 = *(v60 + 16);
    v36 = v67;
    v35 = v68;
    v34(v67, v65[6] + *(v60 + 72) * v32, v68, v17);
    v37 = v33[7];
    v38 = *(v61 + 72);
    v56 = v32;
    v39 = v37 + v38 * v32;
    v40 = v69;
    sub_1DEEACA70(v39, v69, type metadata accessor for PairingRelationship);
    v41 = v70;
    (v34)(v70, v36, v35);
    v42 = v63;
    sub_1DEEACA70(v40, v41 + *(v63 + 48), type metadata accessor for PairingRelationship);
    v43 = v71;
    sub_1DEE17214(v41, v71, &unk_1ECDE4350, &qword_1DEF93400);
    v44 = v43 + *(v42 + 48);
    v45 = v64;
    sub_1DEEACA70(v44 + *(v62 + 20), v64, type metadata accessor for DeviceDescriptor);
    sub_1DEE273A0(v44, type metadata accessor for PairingRelationship);
    v46 = *(v45 + 32);
    v47 = *(v45 + 40);
    sub_1DEE273A0(v45, type metadata accessor for DeviceDescriptor);
    if (qword_1ED786060 != -1)
    {
      swift_once();
    }

    v48 = xmmword_1ED786068;
    sub_1DEE171B4(v70, &unk_1ECDE4350, &qword_1DEF93400);
    if (v46 < *(&v48 + 1))
    {
      v27 = *v57;
      v28 = v68;
      (*v57)(v71, v68);
      sub_1DEE273A0(v69, type metadata accessor for PairingRelationship);
      v27(v67, v28);
      v26 = v58;
      v25 = v66;
    }

    else
    {
      v49 = *v57;
      v50 = v68;
      (*v57)(v71, v68);
      sub_1DEE273A0(v69, type metadata accessor for PairingRelationship);
      v49(v67, v50);
      v26 = v58;
      v25 = v66;
      if (v48 >= v47)
      {
        *(v54 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        if (__OFADD__(v55++, 1))
        {
          goto LABEL_21;
        }
      }
    }
  }

  v30 = v19;
  while (1)
  {
    v19 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v19 >= v26)
    {
      sub_1DEEC6068(v54, v53, v55, v65);
      return;
    }

    v31 = v21[v19];
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v66 = (v31 - 1) & v31;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1DEE9F55C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v46 = a1;
  v4 = type metadata accessor for DeviceDescriptor();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v7 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v44 - v10;
  v11 = type metadata accessor for PairingRelationship();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1DEF8D3F8();
  v14 = *(*(v55 - 8) + 64);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v55);
  v53 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v15;
  v18 = 0;
  v63 = a3;
  v19 = *(a3 + 64);
  v49 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v47 = 0;
  v48 = (v20 + 63) >> 6;
  v51 = v15 + 8;
  v52 = v15 + 16;
  while (v22)
  {
    v23 = __clz(__rbit64(v22));
    v64 = (v22 - 1) & v22;
LABEL_11:
    v26 = v23 | (v18 << 6);
    v27 = v63;
    v28 = v53;
    v29 = v54;
    v30 = *(v54 + 16);
    v31 = v55;
    v30(v53, v63[6] + *(v54 + 72) * v26, v55, v16);
    v32 = v27[7];
    v33 = *(v57 + 72);
    v50 = v26;
    v34 = v32 + v33 * v26;
    v35 = v56;
    sub_1DEEACA70(v34, v56, type metadata accessor for PairingRelationship);
    v36 = v59;
    (v30)(v59, v28, v31);
    v37 = v61;
    sub_1DEEACA70(v35, &v36[*(v61 + 48)], type metadata accessor for PairingRelationship);
    v38 = v36;
    v39 = v60;
    sub_1DEE1BA88(v38, v60, &unk_1ECDE4350, &qword_1DEF93400);
    v40 = v39 + *(v37 + 48);
    v41 = v62;
    sub_1DEEACA70(v40 + *(v58 + 20), v62, type metadata accessor for DeviceDescriptor);
    sub_1DEE273A0(v40, type metadata accessor for PairingRelationship);
    LODWORD(v40) = *(v41 + 48);
    sub_1DEE273A0(v41, type metadata accessor for DeviceDescriptor);
    v42 = *(v29 + 8);
    v42(v39, v31);
    sub_1DEE273A0(v35, type metadata accessor for PairingRelationship);
    v42(v28, v31);
    v22 = v64;
    if (v40 == 4)
    {
      *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DEEC6068(v46, v45, v47, v63);
        return;
      }
    }
  }

  v24 = v18;
  while (1)
  {
    v18 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v18 >= v48)
    {
      goto LABEL_15;
    }

    v25 = *(v49 + 8 * v18);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v64 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DEE9F9D4(unint64_t *a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  v60 = a2;
  v61 = a1;
  v67 = a4;
  v5 = type metadata accessor for DeviceDescriptor();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v8 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v65 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  v77 = type metadata accessor for PairingRelationship();
  v74 = *(v77 - 8);
  v16 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1DEF8D3F8();
  v18 = *(*(v80 - 8) + 64);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v80);
  v79 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = 0;
  v22 = 0;
  v75 = a3;
  v23 = a3;
  v24 = v15;
  v27 = v23[8];
  v26 = v23 + 8;
  v25 = v27;
  v28 = 1 << *(v26 - 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v25;
  v31 = (v28 + 63) >> 6;
  v70 = v19 + 16;
  v71 = v31;
  v72 = v26;
  v73 = v19;
  v63 = v15;
  v64 = v12;
  v69 = (v19 + 8);
  while (v30)
  {
    v32 = __clz(__rbit64(v30));
    v78 = (v30 - 1) & v30;
LABEL_12:
    v35 = v32 | (v22 << 6);
    v36 = v75;
    v37 = *(v73 + 16);
    v39 = v79;
    v38 = v80;
    v37(v79, v75[6] + *(v73 + 72) * v35, v80, v20);
    v40 = v36[7];
    v41 = *(v74 + 72);
    v68 = v35;
    v42 = v40 + v41 * v35;
    v43 = v81;
    sub_1DEEACA70(v42, v81, type metadata accessor for PairingRelationship);
    (v37)(v24, v39, v38);
    v44 = v76;
    sub_1DEEACA70(v43, v24 + *(v76 + 48), type metadata accessor for PairingRelationship);
    sub_1DEE17214(v24, v12, &unk_1ECDE4350, &qword_1DEF93400);
    v45 = &v12[*(v44 + 48)];
    v46 = (v45 + *(v77 + 32));
    v47 = *v46;
    v48 = v46[1];
    sub_1DEE4F8C0(*v46, v48);
    sub_1DEE273A0(v45, type metadata accessor for PairingRelationship);
    if (v48)
    {
      sub_1DEE4F8C0(v47, v48);
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = v69;
    sub_1DEE4F8D4(v47, v49);
    sub_1DEE4F8D4(0, 0);
    sub_1DEE4F8D4(v47, v49);
    v51 = *v50;
    v52 = v80;
    (*v50)(v12, v80);
    if (v48)
    {
      v53 = v24;
      v54 = v65;
      sub_1DEE1BA88(v53, v65, &unk_1ECDE4350, &qword_1DEF93400);
      v55 = v54 + *(v76 + 48);
      v56 = v66;
      sub_1DEEACA70(v55 + *(v77 + 20), v66, type metadata accessor for DeviceDescriptor);
      sub_1DEE273A0(v55, type metadata accessor for PairingRelationship);
      LODWORD(v55) = *(v56 + 48);
      v12 = v64;
      sub_1DEE273A0(v56, type metadata accessor for DeviceDescriptor);
      v57 = v54;
      v24 = v63;
      v51(v57, v52);
      sub_1DEE273A0(v81, type metadata accessor for PairingRelationship);
      v51(v79, v52);
      v31 = v71;
      v26 = v72;
      v30 = v78;
      if (v55 == v67)
      {
        *(v61 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
        if (__OFADD__(v62++, 1))
        {
          __break(1u);
LABEL_20:
          sub_1DEEC6068(v61, v60, v62, v75);
          return;
        }
      }
    }

    else
    {
      sub_1DEE171B4(v24, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE273A0(v81, type metadata accessor for PairingRelationship);
      v51(v79, v52);
      v31 = v71;
      v26 = v72;
      v30 = v78;
    }
  }

  v33 = v22;
  while (1)
  {
    v22 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v22 >= v31)
    {
      goto LABEL_20;
    }

    v34 = v26[v22];
    ++v33;
    if (v34)
    {
      v32 = __clz(__rbit64(v34));
      v78 = (v34 - 1) & v34;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1DEE9FFA8(unint64_t *a1, uint64_t a2, void *a3)
{
  v46 = a2;
  v47 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v4 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for PairingRelationship();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1DEF8D3F8();
  v14 = *(*(v59 - 8) + 64);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v59);
  v62 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v18 = 0;
  v58 = a3;
  v21 = a3[8];
  v20 = a3 + 8;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v53 = v20;
  v54 = v15;
  v50 = (v15 + 8);
  v51 = v15 + 16;
  v52 = v25;
  v49 = v6;
  while (1)
  {
    v26 = v59;
    v27 = v62;
    if (!v24)
    {
      break;
    }

    v28 = __clz(__rbit64(v24));
    v60 = (v24 - 1) & v24;
LABEL_11:
    v61 = v28 | (v18 << 6);
    v31 = v58;
    v32 = v61;
    v33 = *(v54 + 16);
    v33(v62, v58[6] + *(v54 + 72) * v61, v59, v16);
    v34 = v31[7] + *(v55 + 72) * v32;
    v35 = v13;
    sub_1DEEACA70(v34, v13, type metadata accessor for PairingRelationship);
    (v33)(v9, v27, v26);
    v36 = v57;
    sub_1DEEACA70(v13, &v9[*(v57 + 48)], type metadata accessor for PairingRelationship);
    v37 = v49;
    sub_1DEE17214(v9, v49, &unk_1ECDE4350, &qword_1DEF93400);
    v38 = v37 + *(v36 + 48);
    v39 = (v38 + *(v56 + 32));
    v40 = *v39;
    v41 = v39[1];
    sub_1DEE4F8C0(*v39, v41);
    sub_1DEE273A0(v38, type metadata accessor for PairingRelationship);
    if (v41 == 2)
    {
      sub_1DEE4F8D4(v40, 2uLL);
      sub_1DEE4F8D4(0, 2uLL);
      sub_1DEE4F8D4(v40, 2uLL);
      sub_1DEE171B4(v9, &unk_1ECDE4350, &qword_1DEF93400);
      v43 = *v50;
      (*v50)(v37, v26);
      sub_1DEE273A0(v35, type metadata accessor for PairingRelationship);
      v43(v62, v26);
      v24 = v60;
      *(v47 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
      v44 = __OFADD__(v48++, 1);
      v13 = v35;
      v25 = v52;
      v20 = v53;
      if (v44)
      {
        __break(1u);
LABEL_16:
        sub_1DEEC6068(v47, v46, v48, v58);
        return;
      }
    }

    else
    {
      sub_1DEE4F8C0(v40, v41);
      sub_1DEE4F8D4(v40, v41);
      sub_1DEE4F8D4(0, 2uLL);
      sub_1DEE4F8D4(v40, v41);
      sub_1DEE171B4(v9, &unk_1ECDE4350, &qword_1DEF93400);
      v42 = *v50;
      (*v50)(v37, v26);
      sub_1DEE273A0(v35, type metadata accessor for PairingRelationship);
      v42(v62, v26);
      v13 = v35;
      v25 = v52;
      v20 = v53;
      v24 = v60;
    }
  }

  v29 = v18;
  while (1)
  {
    v18 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v18 >= v25)
    {
      goto LABEL_16;
    }

    v30 = v20[v18];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v60 = (v30 - 1) & v30;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DEEA048C(unint64_t *a1, uint64_t a2, void *a3)
{
  v46 = a2;
  v47 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v45 - v7;
  v8 = type metadata accessor for PairingRelationship();
  v55 = *(v8 - 8);
  v56 = v8;
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D3F8();
  v13 = *(*(v12 - 8) + 64);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v18 = 0;
  v59 = a3;
  v21 = a3[8];
  v20 = a3 + 8;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v52 = v14 + 16;
  v53 = v25;
  v54 = v14;
  v50 = (v14 + 8);
  while (v24)
  {
    v26 = __clz(__rbit64(v24));
    v60 = (v24 - 1) & v24;
LABEL_11:
    v29 = v26 | (v18 << 6);
    v30 = v59;
    v31 = *(v54 + 16);
    v31(v17, v59[6] + *(v54 + 72) * v29, v12, v15);
    v32 = v30[7];
    v33 = *(v55 + 72);
    v49 = v29;
    sub_1DEEACA70(v32 + v33 * v29, v11, type metadata accessor for PairingRelationship);
    v34 = v57;
    (v31)(v57, v17, v12);
    v35 = v58;
    sub_1DEEACA70(v11, &v34[*(v58 + 48)], type metadata accessor for PairingRelationship);
    v36 = v34;
    v37 = v51;
    sub_1DEE1BA88(v36, v51, &unk_1ECDE4350, &qword_1DEF93400);
    v38 = v37 + *(v35 + 48);
    v39 = (v38 + *(v56 + 32));
    v40 = *v39;
    v41 = v39[1];
    sub_1DEE4F8C0(*v39, v41);
    sub_1DEE273A0(v38, type metadata accessor for PairingRelationship);
    if ((v41 | 2) == 2)
    {
      v42 = *v50;
      (*v50)(v37, v12);
      sub_1DEE273A0(v11, type metadata accessor for PairingRelationship);
      v42(v17, v12);
      v25 = v53;
      v24 = v60;
    }

    else
    {
      sub_1DEE4F8D4(v40, v41);
      v43 = *v50;
      (*v50)(v37, v12);
      sub_1DEE273A0(v11, type metadata accessor for PairingRelationship);
      v43(v17, v12);
      *(v47 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v44 = __OFADD__(v48++, 1);
      v25 = v53;
      v24 = v60;
      if (v44)
      {
        __break(1u);
LABEL_16:
        sub_1DEEC6068(v47, v46, v48, v59);
        return;
      }
    }
  }

  v27 = v18;
  while (1)
  {
    v18 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v18 >= v25)
    {
      goto LABEL_16;
    }

    v28 = v20[v18];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v60 = (v28 - 1) & v28;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DEEA08F4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v46 = a1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  v8 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v65 = &v44 - v9;
  v10 = type metadata accessor for Record.ID.Ownership(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v44 - v17;
  v18 = 0;
  v60 = a3;
  v19 = *(a3 + 64);
  v47 = 0;
  v48 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v56 = (v5 + 56);
  v49 = (v5 + 32);
  v52 = (v5 + 8);
  v53 = (v5 + 48);
  v24 = (v5 + 48);
  v58 = v23;
  v59 = v15;
  v61 = v4;
  while (v22)
  {
    v28 = __clz(__rbit64(v22));
    v63 = (v22 - 1) & v22;
LABEL_13:
    v31 = v28 | (v18 << 6);
    v32 = *(v60 + 56);
    v33 = *(*(v60 + 48) + 8 * v31);
    v55 = v31;
    v64 = *(v32 + 8 * v31);
    v66 = v33;
    v34 = v62;
    sub_1DEEACA70(v33 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v62, type metadata accessor for Record.ID.Ownership);
    (*v56)(v15, 1, 1, v4);
    v35 = *(v57 + 48);
    v36 = v65;
    sub_1DEEACA70(v34, v65, type metadata accessor for Record.ID.Ownership);
    sub_1DEEACA70(v15, v36 + v35, type metadata accessor for Record.ID.Ownership);
    v37 = *v24;
    if ((*v24)(v36, 1, v4) == 1)
    {

      sub_1DEE273A0(v15, type metadata accessor for Record.ID.Ownership);
      sub_1DEE273A0(v34, type metadata accessor for Record.ID.Ownership);
      v25 = v65;
      v4 = v61;
      v26 = v37(v65 + v35, 1, v61);
      v27 = v25;
      if (v26 != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_5;
    }

    v38 = v65;
    v39 = v51;
    sub_1DEEACA70(v65, v51, type metadata accessor for Record.ID.Ownership);
    if (v37(v38 + v35, 1, v61) == 1)
    {

      sub_1DEE273A0(v15, type metadata accessor for Record.ID.Ownership);
      sub_1DEE273A0(v62, type metadata accessor for Record.ID.Ownership);
      v4 = v61;
      (*v52)(v39, v61);
      v27 = v65;
      v24 = v53;
LABEL_18:
      sub_1DEE171B4(v27, &unk_1ECDE40F0, &unk_1DEF91C20);
      goto LABEL_19;
    }

    v40 = v50;
    v27 = v65;
    v41 = v61;
    (*v49)(v50, v65 + v35, v61);

    v54 = sub_1DEF8D3A8();
    v42 = *v52;
    (*v52)(v40, v41);
    sub_1DEE273A0(v15, type metadata accessor for Record.ID.Ownership);
    sub_1DEE273A0(v62, type metadata accessor for Record.ID.Ownership);
    v42(v39, v41);
    v4 = v41;
    v24 = v53;
    if (v54)
    {
LABEL_5:
      sub_1DEE273A0(v27, type metadata accessor for Record.ID.Ownership);

      v23 = v58;
      v15 = v59;
      v22 = v63;
    }

    else
    {
      sub_1DEE273A0(v27, type metadata accessor for Record.ID.Ownership);
LABEL_19:

      *(v46 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      v43 = __OFADD__(v47++, 1);
      v23 = v58;
      v15 = v59;
      v22 = v63;
      if (v43)
      {
        __break(1u);
LABEL_22:
        sub_1DEEC64F8(v46, v45, v47, v60);
        return;
      }
    }
  }

  v29 = v18;
  while (1)
  {
    v18 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      goto LABEL_22;
    }

    v30 = *(v48 + 8 * v18);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v63 = (v30 - 1) & v30;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_1DEEA0EE0(void *result, uint64_t a2, void *a3, unsigned __int8 a4)
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

    sub_1DEE9F9D4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_1DEEA0F68(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_1DEEA0FF0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_1DEEA1078(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_1DEEA111C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1DEEA4E50(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1DEEA11C0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = a6;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
      a4 = v11;
      a5 = v10;
      a6 = v9;
    }

    v12 = sub_1DEEA542C(result, a2, a3, a4, a5, a6);

    return v12;
  }

  return result;
}

void *sub_1DEEA1260(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, char *))
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

    sub_1DEEAA558(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1DEEA12F0(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DEF06EC0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1DEEA13A4(v5);
  *a1 = v3;
}

void sub_1DEEA13A4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DEF8E2D8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
        v6 = sub_1DEF8DB08();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DEEA1748(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1DEEA14E8(0, v2, 1, a1);
  }
}

void sub_1DEEA14E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v9 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v27 - v16);
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v34 = -v19;
    v35 = v18;
    v21 = a1 - a3;
    v28 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v32 = v20;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v20;
    while (1)
    {
      sub_1DEE17214(v22, v17, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE17214(v23, v13, &unk_1ECDE4350, &qword_1DEF93400);
      v24 = sub_1DEE92068(v17, v13);
      sub_1DEE171B4(v13, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE171B4(v17, &unk_1ECDE4350, &qword_1DEF93400);
      if (v4)
      {
        break;
      }

      if (v24)
      {
        if (!v35)
        {
          __break(1u);
          return;
        }

        v25 = v36;
        sub_1DEE1BA88(v22, v36, &unk_1ECDE4350, &qword_1DEF93400);
        swift_arrayInitWithTakeFrontToBack();
        sub_1DEE1BA88(v25, v23, &unk_1ECDE4350, &qword_1DEF93400);
        v23 += v34;
        v22 += v34;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v20 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_1DEEA1748(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v126 = a1;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v9 = *(v133 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v128 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v117 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v117 - v15;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v137 = (&v117 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v125 = &v117 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v124 = (&v117 - v26);
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v5 = *v126;
    if (*v126)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_105;
    }

    goto LABEL_145;
  }

  v122 = a4;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v131 = v16;
  v129 = v24;
  v135 = v25;
  v127 = a3;
  v121 = v9;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v31 >= v27)
    {
      v45 = v31;
    }

    else
    {
      v138 = v27;
      v132 = v6;
      v32 = *a3;
      v33 = v30;
      v34 = *(v9 + 72);
      v5 = *a3 + v34 * v31;
      v35 = v124;
      sub_1DEE17214(v5, v124, &unk_1ECDE4350, &qword_1DEF93400);
      v36 = v125;
      sub_1DEE17214(v32 + v34 * v33, v125, &unk_1ECDE4350, &qword_1DEF93400);
      v37 = v132;
      LODWORD(v136) = sub_1DEE92068(v35, v36);
      v132 = v37;
      if (v37)
      {
        sub_1DEE171B4(v36, &unk_1ECDE4350, &qword_1DEF93400);
        sub_1DEE171B4(v35, &unk_1ECDE4350, &qword_1DEF93400);

        return;
      }

      sub_1DEE171B4(v36, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE171B4(v35, &unk_1ECDE4350, &qword_1DEF93400);
      v123 = v33;
      v38 = v33 + 2;
      v39 = v32 + v34 * v38;
      v6 = v132;
      v40 = v34;
      v139 = v34;
      v134 = v29;
      while (1)
      {
        v41 = v137;
        if (v138 == v38)
        {
          break;
        }

        sub_1DEE17214(v39, v137, &unk_1ECDE4350, &qword_1DEF93400);
        v42 = v135;
        sub_1DEE17214(v5, v135, &unk_1ECDE4350, &qword_1DEF93400);
        v43 = sub_1DEE92068(v41, v42);
        if (v6)
        {
          sub_1DEE171B4(v42, &unk_1ECDE4350, &qword_1DEF93400);
          sub_1DEE171B4(v41, &unk_1ECDE4350, &qword_1DEF93400);

          return;
        }

        v44 = v43;
        sub_1DEE171B4(v42, &unk_1ECDE4350, &qword_1DEF93400);
        sub_1DEE171B4(v41, &unk_1ECDE4350, &qword_1DEF93400);
        ++v38;
        v40 = v139;
        v39 += v139;
        v5 += v139;
        v6 = 0;
        v29 = v134;
        if ((v136 ^ v44))
        {
          v45 = v38 - 1;
          goto LABEL_12;
        }
      }

      v45 = v138;
LABEL_12:
      v16 = v131;
      v30 = v123;
      if ((v136 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v45 < v123)
      {
        goto LABEL_139;
      }

      if (v123 < v45)
      {
        v46 = v40 * (v45 - 1);
        v47 = v45 * v40;
        v138 = v45;
        v48 = v45;
        v49 = v123;
        v50 = v123 * v40;
        do
        {
          if (v49 != --v48)
          {
            v132 = v6;
            v51 = *v127;
            if (!*v127)
            {
              goto LABEL_143;
            }

            v5 = v51 + v50;
            sub_1DEE1BA88(v51 + v50, v128, &unk_1ECDE4350, &qword_1DEF93400);
            if (v50 < v46 || v5 >= v51 + v47)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DEE1BA88(v128, v51 + v46, &unk_1ECDE4350, &qword_1DEF93400);
            v6 = v132;
            v40 = v139;
          }

          ++v49;
          v46 -= v40;
          v47 -= v40;
          v50 += v40;
        }

        while (v49 < v48);
        a3 = v127;
        v9 = v121;
        v16 = v131;
        v30 = v123;
        v45 = v138;
      }

      else
      {
LABEL_25:
        a3 = v127;
        v9 = v121;
      }
    }

    v52 = a3[1];
    if (v45 >= v52)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v45, v30))
    {
      goto LABEL_135;
    }

    if (v45 - v30 >= v122)
    {
LABEL_36:
      v5 = v45;
      if (v45 < v30)
      {
        goto LABEL_134;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v30, v122))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v30 + v122 >= v52)
    {
      v53 = a3[1];
    }

    else
    {
      v53 = v30 + v122;
    }

    if (v53 < v30)
    {
      goto LABEL_138;
    }

    if (v45 == v53)
    {
      goto LABEL_36;
    }

    v101 = *a3;
    v102 = *(v9 + 72);
    v103 = *a3 + v102 * (v45 - 1);
    v136 = -v102;
    v123 = v30;
    v104 = v30 - v45;
    v139 = v101;
    v117 = v102;
    v105 = v101 + v45 * v102;
    v132 = v53;
    do
    {
      v138 = v45;
      v118 = v105;
      v106 = v105;
      v119 = v104;
      v120 = v103;
      while (1)
      {
        v107 = v129;
        sub_1DEE17214(v106, v129, &unk_1ECDE4350, &qword_1DEF93400);
        sub_1DEE17214(v103, v16, &unk_1ECDE4350, &qword_1DEF93400);
        v108 = sub_1DEE92068(v107, v16);
        v109 = v16;
        if (v6)
        {
          sub_1DEE171B4(v16, &unk_1ECDE4350, &qword_1DEF93400);
          sub_1DEE171B4(v107, &unk_1ECDE4350, &qword_1DEF93400);
LABEL_116:

          return;
        }

        v110 = v108;
        sub_1DEE171B4(v109, &unk_1ECDE4350, &qword_1DEF93400);
        sub_1DEE171B4(v107, &unk_1ECDE4350, &qword_1DEF93400);
        if ((v110 & 1) == 0)
        {
          break;
        }

        if (!v139)
        {
          goto LABEL_141;
        }

        v111 = v130;
        sub_1DEE1BA88(v106, v130, &unk_1ECDE4350, &qword_1DEF93400);
        swift_arrayInitWithTakeFrontToBack();
        sub_1DEE1BA88(v111, v103, &unk_1ECDE4350, &qword_1DEF93400);
        v103 += v136;
        v106 += v136;
        v112 = __CFADD__(v104++, 1);
        v16 = v131;
        if (v112)
        {
          goto LABEL_99;
        }
      }

      v16 = v131;
LABEL_99:
      v45 = v138 + 1;
      v103 = v120 + v117;
      v104 = v119 - 1;
      v105 = v118 + v117;
      v5 = v132;
    }

    while (v138 + 1 != v132);
    a3 = v127;
    v9 = v121;
    v30 = v123;
    if (v132 < v123)
    {
      goto LABEL_134;
    }

LABEL_37:
    v54 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1DEF06DBC(0, *(v29 + 2) + 1, 1, v29);
    }

    v56 = *(v29 + 2);
    v55 = *(v29 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v29 = sub_1DEF06DBC((v55 > 1), v56 + 1, 1, v29);
    }

    *(v29 + 2) = v57;
    v58 = &v29[16 * v56];
    *(v58 + 4) = v30;
    *(v58 + 5) = v5;
    v132 = v5;
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_144;
    }

    if (v56)
    {
      break;
    }

    v6 = v54;
LABEL_88:
    v27 = a3[1];
    v16 = v131;
    v28 = v132;
    if (v132 >= v27)
    {
      goto LABEL_103;
    }
  }

  v6 = v54;
  while (1)
  {
    v59 = v57 - 1;
    if (v57 >= 4)
    {
      v64 = &v29[16 * v57 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_121;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_122;
      }

      v71 = &v29[16 * v57];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_124;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_127;
      }

      if (v75 >= v67)
      {
        v93 = &v29[16 * v59 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_133;
        }

        if (v62 < v96)
        {
          v59 = v57 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

    if (v57 == 3)
    {
      v60 = *(v29 + 4);
      v61 = *(v29 + 5);
      v70 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      v63 = v70;
LABEL_57:
      if (v63)
      {
        goto LABEL_123;
      }

      v76 = &v29[16 * v57];
      v78 = *v76;
      v77 = *(v76 + 1);
      v79 = __OFSUB__(v77, v78);
      v80 = v77 - v78;
      v81 = v79;
      if (v79)
      {
        goto LABEL_126;
      }

      v82 = &v29[16 * v59 + 32];
      v84 = *v82;
      v83 = *(v82 + 1);
      v70 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v70)
      {
        goto LABEL_129;
      }

      if (__OFADD__(v80, v85))
      {
        goto LABEL_130;
      }

      if (v80 + v85 >= v62)
      {
        if (v62 < v85)
        {
          v59 = v57 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_71;
    }

    v86 = &v29[16 * v57];
    v88 = *v86;
    v87 = *(v86 + 1);
    v70 = __OFSUB__(v87, v88);
    v80 = v87 - v88;
    v81 = v70;
LABEL_71:
    if (v81)
    {
      goto LABEL_125;
    }

    v89 = &v29[16 * v59];
    v91 = *(v89 + 4);
    v90 = *(v89 + 5);
    v70 = __OFSUB__(v90, v91);
    v92 = v90 - v91;
    if (v70)
    {
      goto LABEL_128;
    }

    if (v92 < v80)
    {
      goto LABEL_88;
    }

LABEL_78:
    v97 = v59 - 1;
    if (v59 - 1 >= v57)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_140;
    }

    v98 = *&v29[16 * v97 + 32];
    v99 = *&v29[16 * v59 + 40];
    sub_1DEEA2200(*a3 + *(v9 + 72) * v98, *a3 + *(v9 + 72) * *&v29[16 * v59 + 32], *a3 + *(v9 + 72) * v99, v5);
    if (v6)
    {
      goto LABEL_116;
    }

    if (v99 < v98)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1DEF06BB8(v29);
    }

    if (v97 >= *(v29 + 2))
    {
      goto LABEL_120;
    }

    v100 = &v29[16 * v97];
    *(v100 + 4) = v98;
    *(v100 + 5) = v99;
    v140 = v29;
    sub_1DEF06B2C(v59);
    v29 = v140;
    v57 = *(v140 + 2);
    if (v57 <= 1)
    {
      goto LABEL_88;
    }
  }

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
  v29 = sub_1DEF06BB8(v29);
LABEL_105:
  v140 = v29;
  v113 = *(v29 + 2);
  if (v113 < 2)
  {
    goto LABEL_116;
  }

  while (*a3)
  {
    v114 = *&v29[16 * v113];
    v115 = *&v29[16 * v113 + 24];
    sub_1DEEA2200(*a3 + *(v9 + 72) * v114, *a3 + *(v9 + 72) * *&v29[16 * v113 + 16], *a3 + *(v9 + 72) * v115, v5);
    if (v6)
    {
      goto LABEL_116;
    }

    if (v115 < v114)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1DEF06BB8(v29);
    }

    if (v113 - 2 >= *(v29 + 2))
    {
      goto LABEL_132;
    }

    v116 = &v29[16 * v113];
    *v116 = v114;
    *(v116 + 1) = v115;
    v140 = v29;
    sub_1DEF06B2C(v113 - 1);
    v29 = v140;
    v113 = *(v140 + 2);
    if (v113 <= 1)
    {
      goto LABEL_116;
    }
  }

LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

void sub_1DEEA2200(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v10 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v63 - v19);
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v23 = a2;
  v24 = a1;
  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v22 != -1)
  {
    v26 = (a2 - a1) / v22;
    v77 = a1;
    v27 = a4;
    v76 = a4;
    if (v26 < v25 / v22)
    {
      v28 = v26 * v22;
      if (a4 < v24 || v24 + v28 <= a4)
      {
        v29 = v24;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v24)
        {
          goto LABEL_17;
        }

        v29 = v24;
        swift_arrayInitWithTakeBackToFront();
      }

      v24 = v29;
      v27 = a4;
      v23 = a2;
LABEL_17:
      v73 = v4;
      v71 = v27 + v28;
      v75 = v27 + v28;
      if (v28 >= 1 && v23 < a3)
      {
        v69 = v16;
        v70 = v20;
        v68 = a3;
        while (1)
        {
          v74 = v24;
          v34 = v22;
          v35 = v23;
          v36 = v70;
          sub_1DEE17214(v23, v70, &unk_1ECDE4350, &qword_1DEF93400);
          sub_1DEE17214(v27, v16, &unk_1ECDE4350, &qword_1DEF93400);
          v37 = v73;
          v38 = sub_1DEE92068(v36, v16);
          v73 = v37;
          if (v37)
          {
            sub_1DEE171B4(v16, &unk_1ECDE4350, &qword_1DEF93400);
            sub_1DEE171B4(v36, &unk_1ECDE4350, &qword_1DEF93400);
            goto LABEL_65;
          }

          v39 = v38;
          sub_1DEE171B4(v16, &unk_1ECDE4350, &qword_1DEF93400);
          sub_1DEE171B4(v36, &unk_1ECDE4350, &qword_1DEF93400);
          if ((v39 & 1) == 0)
          {
            v22 = v34;
            v41 = v27;
            v27 += v34;
            v40 = v74;
            if (v74 < v41 || v74 >= v27)
            {
              swift_arrayInitWithTakeFrontToBack();
              v40 = v74;
            }

            else if (v74 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
              v40 = v74;
            }

            v76 = v27;
            v23 = v35;
            goto LABEL_37;
          }

          v22 = v34;
          v40 = v74;
          if (v74 < v35 || v74 >= v35 + v34)
          {
            break;
          }

          if (v74 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_33:
            v40 = v74;
          }

          v23 = v35 + v34;
LABEL_37:
          v24 = v40 + v22;
          v77 = v24;
          if (v27 < v71)
          {
            v16 = v69;
            if (v23 < v68)
            {
              continue;
            }
          }

          goto LABEL_65;
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_33;
      }

      goto LABEL_65;
    }

    v30 = v25 / v22 * v22;
    v70 = v18;
    if (a4 < v23 || v23 + v30 <= a4)
    {
      v31 = v23;
      v32 = v24;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v23)
      {
LABEL_42:
        v42 = v27 + v30;
        if (v30 < 1)
        {
LABEL_60:
          v73 = v5;
          v77 = v23;
          v75 = v42;
          goto LABEL_65;
        }

        v43 = -v22;
        v44 = &unk_1ECDE4350;
        v45 = v27 + v30;
        v46 = &qword_1DEF93400;
        v66 = v27;
        v74 = v24;
        v69 = -v22;
LABEL_44:
        v64 = v42;
        v47 = v23 + v43;
        v67 = v23 + v43;
        v68 = v23;
        while (1)
        {
          if (v23 <= v24)
          {
            v73 = v5;
            v77 = v23;
            v75 = v64;
            goto LABEL_65;
          }

          v48 = a3;
          v65 = v42;
          v50 = v69;
          v49 = v70;
          v71 = v45;
          v51 = v45 + v69;
          v52 = v5;
          v53 = v44;
          v54 = v46;
          sub_1DEE17214(v45 + v69, v70, v44, v46);
          sub_1DEE17214(v47, v12, v53, v54);
          v55 = sub_1DEE92068(v49, v12);
          v56 = v12;
          if (v52)
          {
            break;
          }

          v57 = v55;
          a3 = v48 + v50;
          v58 = v56;
          sub_1DEE171B4(v56, v53, v54);
          sub_1DEE171B4(v49, v53, v54);
          if (v57)
          {
            v73 = 0;
            if (v48 < v68 || a3 >= v68)
            {
              v62 = v67;
              swift_arrayInitWithTakeFrontToBack();
              v12 = v58;
              v23 = v62;
              v24 = v74;
            }

            else
            {
              v12 = v58;
              v23 = v67;
              v24 = v74;
              if (v48 != v68)
              {
                v60 = v67;
                v61 = v74;
                swift_arrayInitWithTakeBackToFront();
                v24 = v61;
                v23 = v60;
              }
            }

            v42 = v65;
            v45 = v71;
            v43 = v69;
            v44 = v53;
            v46 = v54;
            v5 = v73;
            if (v71 <= v66)
            {
              goto LABEL_60;
            }

            goto LABEL_44;
          }

          v42 = v51;
          if (v48 < v71 || a3 >= v71)
          {
            swift_arrayInitWithTakeFrontToBack();
            v42 = v51;
            v12 = v58;
            v24 = v74;
          }

          else
          {
            v12 = v58;
            v24 = v74;
            if (v48 != v71)
            {
              v59 = v74;
              swift_arrayInitWithTakeBackToFront();
              v24 = v59;
              v42 = v51;
            }
          }

          v45 = v42;
          v47 = v67;
          v44 = v53;
          v46 = v54;
          v5 = 0;
          v23 = v68;
          if (v51 <= v66)
          {
            goto LABEL_60;
          }
        }

        sub_1DEE171B4(v12, &unk_1ECDE4350, &qword_1DEF93400);
        sub_1DEE171B4(v49, &unk_1ECDE4350, &qword_1DEF93400);
        v77 = v68;
        v75 = v65;
LABEL_65:
        sub_1DEF06BCC(&v77, &v76, &v75);
        return;
      }

      v31 = v23;
      v32 = v24;
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v32;
    v27 = a4;
    v23 = v31;
    goto LABEL_42;
  }

LABEL_68:
  __break(1u);
}

void *sub_1DEEA28CC(uint64_t a1, __int128 *a2, void *a3)
{
  a3[5] = type metadata accessor for Replicator();
  a3[6] = &protocol witness table for Replicator;
  a3[2] = a1;
  a3[12] = 0;
  a3[13] = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E00, &unk_1DEF91720);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DEF91030;
  v7 = *MEMORY[0x1E69B3678];
  v8 = *MEMORY[0x1E69B3688];
  *(v6 + 32) = *MEMORY[0x1E69B3678];
  *(v6 + 40) = v8;
  v9 = *MEMORY[0x1E69B3660];
  v10 = *MEMORY[0x1E69B3668];
  *(v6 + 48) = *MEMORY[0x1E69B3660];
  *(v6 + 56) = v10;
  a3[14] = v6;
  sub_1DEE2F1AC(a2, (a3 + 7));
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  return a3;
}

uint64_t sub_1DEEA29AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1DEEA29E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D78, &qword_1DEF91688);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4110, &qword_1DEF91690);
    v8 = sub_1DEF8E148();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DEE17214(v10, v6, &qword_1ECDE3D78, &qword_1DEF91688);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1DEE13224(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for ZoneVersion();
      result = sub_1DEEAB218(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for ZoneVersion);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DEEA2BCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D48, &qword_1DEF91660);
    v3 = sub_1DEF8E148();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1DEEAF2E8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1DEEA2CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D40, &qword_1DEF91658);
  v3 = sub_1DEF8E148();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1DEEAF2E8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1DEEAF2E8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DEEA2DE0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_1DEF8E148();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_1DEE17214(v17, v13, a2, v28);
      result = sub_1DEEAF350(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_1DEF8D3F8();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DEEA2FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CC8, &unk_1DEF915D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CD0, &unk_1DEF91C00);
    v8 = sub_1DEF8E148();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DEE17214(v10, v6, &qword_1ECDE3CC8, &unk_1DEF915D0);
      v12 = *v6;
      result = sub_1DEEAF20C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_1DEF8D3F8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DEEA31A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4130, &unk_1DEF916F0);
    v3 = sub_1DEF8E148();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DEE17214(v4, &v13, &qword_1ECDE3DC8, &unk_1DEF9AFF0);
      v5 = v13;
      v6 = v14;
      result = sub_1DEE13224(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DEE117C0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DEEA32D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CB8, &qword_1DEF915B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4340, &qword_1DEF915B8);
    v8 = sub_1DEF8E148();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DEE17214(v10, v6, &qword_1ECDE3CB8, &qword_1DEF915B0);
      v12 = *v6;
      result = sub_1DEEAF20C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for ZoneVersion();
      result = sub_1DEEAB218(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for ZoneVersion);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DEEA34BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CF0, &qword_1DEF915F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CF8, &unk_1DEF91600);
    v8 = sub_1DEF8E148();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DEE17214(v10, v6, &qword_1ECDE3CF0, &qword_1DEF915F8);
      v12 = *v6;
      result = sub_1DEEAF3E8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_1DEF8D3F8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DEEA36A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CD8, &qword_1DEF915E0);
    v3 = sub_1DEF8E148();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DEE17214(v4, &v11, &qword_1ECDE3CE0, &qword_1DEF915E8);
      v5 = v11;
      result = sub_1DEEAF718(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1DEE117C0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DEEA37CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C78, &qword_1DEF91570);
    v3 = sub_1DEF8E148();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DEE17214(v4, &v13, &qword_1ECDE3C80, &qword_1DEF91578);
      v5 = v13;
      v6 = v14;
      result = sub_1DEE13224(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DEEA8734(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DEEA3900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C88, &qword_1DEF91580);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4070, &qword_1DEF91588);
    v8 = sub_1DEF8E148();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1DEE17214(v10, v6, &qword_1ECDE3C88, &qword_1DEF91580);
      result = sub_1DEEAF7AC(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
      result = sub_1DEEAB218(&v6[v9], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}
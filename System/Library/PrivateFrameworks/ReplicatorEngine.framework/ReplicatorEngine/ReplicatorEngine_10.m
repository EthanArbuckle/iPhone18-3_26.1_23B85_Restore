uint64_t sub_1DEEF18EC()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  return sub_1DEF8DD18();
}

uint64_t sub_1DEEF1968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v63 = a2;
  v64 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v52 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4990, &qword_1DEF93D78);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  swift_beginAccess();
  v20 = *(a1 + 56);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v27 = 0;
  v66 = v5;
  v59 = v20;
  v60 = v19;
  v57 = v25;
  v58 = v20 + 64;
  if (v24)
  {
    while (1)
    {
      v28 = v27;
LABEL_8:
      v29 = __clz(__rbit64(v24)) | (v28 << 6);
      v30 = *(v20 + 48);
      v31 = sub_1DEF8D3F8();
      v32 = *(v31 - 8);
      v33 = v61;
      (*(v32 + 16))(v61, v30 + *(v32 + 72) * v29, v31);
      v34 = *(v20 + 56);
      v35 = (type metadata accessor for SessionManager.Session() - 8);
      v36 = v66;
      sub_1DEEF50DC(v34 + *(*v35 + 72) * v29, v33 + *(v66 + 48));
      v37 = v65;
      sub_1DEE1BA88(v33, v65, &qword_1ECDE4998, &qword_1DEF93D80);
      v38 = v62;
      sub_1DEEF5208(v37, v62);
      v39 = v38 + *(v36 + 48);
      v40 = (v39 + v35[7]);
      v42 = *v40;
      v41 = v40[1];

      sub_1DEEF51AC(v39);
      if (v42 == v63 && v41 == v64)
      {
        break;
      }

      v44 = sub_1DEF8E4E8();

      (*(v32 + 8))(v38, v31);
      if (v44)
      {
        goto LABEL_17;
      }

      v24 &= v24 - 1;
      result = sub_1DEE171B4(v65, &qword_1ECDE4998, &qword_1DEF93D80);
      v27 = v28;
      v20 = v59;
      v19 = v60;
      v5 = v66;
      v25 = v57;
      v21 = v58;
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    (*(v32 + 8))(v38, v31);
LABEL_17:

    v19 = v60;
    v5 = v66;
    sub_1DEE1BA88(v65, v60, &qword_1ECDE4998, &qword_1DEF93D80);
    v45 = v55;
    (*(v55 + 56))(v19, 0, 1, v5);
LABEL_18:
    v46 = v56;
    v47 = v54;

    sub_1DEE1BA88(v19, v47, &qword_1ECDE4990, &qword_1DEF93D78);
    v48 = 1;
    if ((*(v45 + 48))(v47, 1, v5) != 1)
    {
      v49 = v53;
      sub_1DEE1BA88(v47, v53, &qword_1ECDE4998, &qword_1DEF93D80);
      sub_1DEEF5140(v49 + *(v5 + 48), v46);
      v50 = sub_1DEF8D3F8();
      (*(*(v50 - 8) + 8))(v49, v50);
      v48 = 0;
    }

    v51 = type metadata accessor for SessionManager.Session();
    return (*(*(v51 - 8) + 56))(v46, v48, 1, v51);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v25)
      {

        v45 = v55;
        (*(v55 + 56))(v19, 1, 1, v5);
        goto LABEL_18;
      }

      v24 = *(v21 + 8 * v28);
      ++v27;
      if (v24)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEF1EEC()
{
  v1 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  return sub_1DEF8DD18();
}

uint64_t sub_1DEEF1F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 56);
  if (*(v6 + 16))
  {

    v7 = sub_1DEEAF350(a2);
    if (v8)
    {
      v9 = v7;
      v10 = *(v6 + 56);
      v11 = type metadata accessor for SessionManager.Session();
      v12 = *(v11 - 8);
      sub_1DEEF50DC(v10 + *(v12 + 72) * v9, a3);

      return (*(v12 + 56))(a3, 0, 1, v11);
    }
  }

  v14 = type metadata accessor for SessionManager.Session();
  return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
}

uint64_t sub_1DEEF20C0(uint64_t a1, char *a2)
{
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = *a2;
  v10 = *(v2 + 32);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v8);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  (*(v6 + 32))(v12 + v11, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v12 + v11 + v7) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1DEEABDF0;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1DEE13B20;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEF22F4(uint64_t a1, uint64_t a2, int a3)
{
  v33 = a3;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v30 - v6;
  v7 = sub_1DEF8D3F8();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D378();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SessionManager.Session();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - v22;
  result = swift_beginAccess();
  v25 = *(a1 + 56);
  if (*(v25 + 16))
  {
    v26 = *(a1 + 56);

    v27 = sub_1DEEAF350(v35);
    if (v28)
    {
      sub_1DEEF50DC(*(v25 + 56) + *(v17 + 72) * v27, v20);

      sub_1DEEF5140(v20, v23);
      sub_1DEF8D348();
      (*(v12 + 40))(&v23[*(v16 + 28)], v15, v11);
      v23[*(v16 + 24)] = v33 & 1;
      (*(v31 + 16))(v10, v35, v32);
      v29 = v34;
      sub_1DEEF50DC(v23, v34);
      (*(v17 + 56))(v29, 0, 1, v16);
      swift_beginAccess();
      sub_1DEF339BC(v29, v10);
      swift_endAccess();
      sub_1DEEF2640();
      return sub_1DEEF51AC(v23);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1DEEF2640()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v50 - v4;
  v6 = sub_1DEF8D378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v1[4];
  *v19 = v20;
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8020], v14, v17);
  v52 = v20;
  LOBYTE(v20) = sub_1DEF8D7B8();
  v21 = (*(v15 + 8))(v19, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v51 = v10;
  v22 = v1[8];
  v23 = *(v22 + 24);
  MEMORY[0x1EEE9AC00](v21);
  *(&v50 - 2) = sub_1DEE15450;
  *(&v50 - 1) = v22;

  os_unfair_lock_lock(v23 + 4);
  sub_1DEE15434(v24);
  os_unfair_lock_unlock(v23 + 4);

  sub_1DEEF2C58(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DEE171B4(v5, &qword_1ECDE4DC0, &qword_1DEF91640);
    if (qword_1ECDE3810 == -1)
    {
LABEL_4:
      v25 = sub_1DEF8D508();
      __swift_project_value_buffer(v25, qword_1ECDF6100);
      v26 = sub_1DEF8D4D8();
      v27 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1DEE0F000, v26, v27, "No more sessions; cancelling keep-alive", v28, 2u);
        MEMORY[0x1E12CCD70](v28, -1, -1);
      }

      v29 = v1[9];
      if (v29 && *(v29 + 16))
      {
        *(v29 + 16) = 0;

        swift_unknownObjectRelease();
        v30 = *(v29 + 24);
        swift_getObjectType();
        sub_1DEF8DD88();

        v31 = v1[9];
      }

      v1[9] = 0;
    }

LABEL_19:
    swift_once();
    goto LABEL_4;
  }

  v32 = v13;
  (*(v7 + 32))(v13, v5, v6);
  if (!v1[9])
  {
    if (qword_1ECDE3810 != -1)
    {
      swift_once();
    }

    v33 = sub_1DEF8D508();
    __swift_project_value_buffer(v33, qword_1ECDF6100);
    v34 = sub_1DEF8D4D8();
    v35 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DEE0F000, v34, v35, "Creating keep-alive transaction while sessions exist", v36, 2u);
      MEMORY[0x1E12CCD70](v36, -1, -1);
    }

    type metadata accessor for KeepAliveTransaction();
    swift_allocObject();
    v37 = sub_1DEE2CB34(0x5320657669746341, 0xEF736E6F69737365);
    v38 = v1[9];
    v1[9] = v37;
  }

  v39 = v1[8];

  v40 = v51;
  sub_1DEF8D348();
  sub_1DEF8D2D8();
  v42 = v41;
  v43 = *(v7 + 8);
  v44 = v43(v40, v6);
  v45 = *(v39 + 24);
  MEMORY[0x1EEE9AC00](v44);
  *(&v50 - 6) = v39;
  *(&v50 - 5) = v42;
  *(&v50 - 4) = v52;
  *(&v50 - 3) = sub_1DEEF5278;
  *(&v50 - 2) = v1;
  MEMORY[0x1EEE9AC00](v46);
  *(&v50 - 2) = sub_1DEE1B740;
  *(&v50 - 1) = v47;

  os_unfair_lock_lock(v45 + 4);
  sub_1DEE3DEF0(v48);
  os_unfair_lock_unlock(v45 + 4);

  v43(v32, v6);
}

uint64_t sub_1DEEF2C58@<X0>(char *a1@<X8>)
{
  v74 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
  v2 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v78 = &v70 - v5;
  v6 = sub_1DEF8D378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v70 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v70 - v19;
  v21 = sub_1DEF8D788();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v1 + 32);
  *v26 = v27;
  (*(v22 + 104))(v26, *MEMORY[0x1E69E8020], v21, v24);
  v28 = v27;
  LOBYTE(v27) = sub_1DEF8D7B8();
  result = (*(v22 + 8))(v26, v21);
  if (v27)
  {
    v71 = v20;
    v72 = v14;
    v84 = v6;
    swift_beginAccess();
    v30 = *(v1 + 56);

    v85 = v17;
    sub_1DEF8D2C8();
    v31 = *(v30 + 64);
    v75 = v30 + 64;
    v32 = 1 << *(v30 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & v31;
    v35 = (v32 + 63) >> 6;
    v73 = v7;
    v81 = (v7 + 32);
    v82 = (v7 + 8);
    v83 = v30;

    for (i = 0; v34; result = (v60)(v55, v61, v56))
    {
      v37 = i;
LABEL_11:
      v39 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v40 = v39 | (v37 << 6);
      v41 = v83;
      v42 = *(v83 + 48);
      v43 = sub_1DEF8D3F8();
      v44 = *(v43 - 8);
      v86 = v43;
      v87 = v44;
      v45 = v78;
      (*(v44 + 16))(v78, v42 + *(v44 + 72) * v40, v43);
      v46 = *(v41 + 56);
      v47 = (type metadata accessor for SessionManager.Session() - 8);
      v48 = v46 + *(*v47 + 72) * v40;
      v49 = v80;
      sub_1DEEF50DC(v48, v45 + *(v80 + 48));
      v50 = v79;
      sub_1DEEF5208(v45, v79);
      v51 = v50 + *(v49 + 48);
      v52 = *(v51 + v47[10]);
      v53 = v51 + v47[9];
      v54 = v77;
      sub_1DEF8D2E8();
      sub_1DEEF51AC(v51);
      sub_1DEE2BB88(&qword_1ECDE4DE0, MEMORY[0x1E6969530]);
      v56 = v84;
      v55 = v85;
      v57 = sub_1DEF8D8E8();
      sub_1DEE171B4(v45, &qword_1ECDE4998, &qword_1DEF93D80);
      if (v57)
      {
        v58 = v55;
      }

      else
      {
        v58 = v54;
      }

      if (v57)
      {
        v59 = v54;
      }

      else
      {
        v59 = v55;
      }

      (*v82)(v58, v56);
      v60 = *v81;
      v61 = v76;
      (*v81)(v76, v59, v56);
      (*(v87 + 8))(v50, v86);
    }

    v38 = v85;
    while (1)
    {
      v37 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v37 >= v35)
      {
        break;
      }

      v34 = *(v75 + 8 * v37);
      ++i;
      if (v34)
      {
        i = v37;
        goto LABEL_11;
      }
    }

    v62 = *v81;
    v63 = v71;
    v64 = v84;
    (*v81)(v71, v38, v84);

    v65 = v72;
    sub_1DEF8D2C8();
    v66 = sub_1DEF8D308();
    v67 = *v82;
    (*v82)(v65, v64);
    if (v66)
    {
      v68 = v74;
      v62(v74, v63, v64);
      v69 = 0;
    }

    else
    {
      v67(v63, v64);
      v69 = 1;
      v68 = v74;
    }

    return (*(v73 + 56))(v68, v69, 1, v64);
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEF3288()
{
  v1 = sub_1DEF8D698();
  v124 = *(v1 - 8);
  v2 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DEF8D6D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v123 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D08, &unk_1DEF95E50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v136 = &v118 - v11;
  v12 = type metadata accessor for SessionManager.Session();
  v141 = *(v12 - 8);
  v142 = v12;
  v13 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v135 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v118 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v147 = &v118 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v118 - v20;
  v140 = sub_1DEF8D3F8();
  v21 = *(v140 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v150 = &v118 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v127 = &v118 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4990, &qword_1DEF93D78);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v138 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v137 = &v118 - v32;
  v33 = sub_1DEF8D788();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = (&v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v149 = v0;
  v39 = *(v0 + 32);
  *v38 = v39;
  (*(v34 + 104))(v38, *MEMORY[0x1E69E8020], v33, v36);
  v40 = v39;
  LOBYTE(v39) = sub_1DEF8D7B8();
  result = (*(v34 + 8))(v38, v33);
  if (v39)
  {
    v119 = v6;
    v120 = v4;
    v121 = v5;
    v122 = v1;
    v42 = v149;
    swift_beginAccess();
    v43 = *(v42 + 56);

    sub_1DEEF458C(v44);
    v46 = v45;

    v47 = v46 + 64;
    v48 = 1 << *(v46 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v46 + 64);
    v125 = (v48 + 63) >> 6;
    v143 = (v21 + 32);
    v144 = (v21 + 16);
    v132 = (v141 + 56);
    v129 = v46;

    v51 = 0;
    *&v52 = 136446722;
    v126 = v52;
    v53 = v140;
    v134 = v21;
    v133 = v46 + 64;
    v146 = (v21 + 8);
    while (v50)
    {
      v57 = v51;
LABEL_17:
      v60 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      v61 = v60 | (v57 << 6);
      v62 = v129;
      v63 = v127;
      (*(v21 + 16))(v127, *(v129 + 48) + *(v21 + 72) * v61, v53);
      v64 = v53;
      v65 = v128;
      sub_1DEEF50DC(*(v62 + 56) + *(v141 + 72) * v61, v128);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
      v67 = *(v66 + 48);
      v68 = *(v21 + 32);
      v69 = v138;
      v68(v138, v63, v64);
      sub_1DEEF5140(v65, v69 + v67);
      (*(*(v66 - 8) + 56))(v69, 0, 1, v66);
LABEL_18:
      v70 = v137;
      sub_1DEE1BA88(v69, v137, &qword_1ECDE4990, &qword_1DEF93D78);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
      v72 = (*(*(v71 - 8) + 48))(v70, 1, v71);
      v73 = v139;
      v74 = v150;
      if (v72 == 1)
      {
        v110 = v129;

        v111 = v149;
        v112 = *(v149 + 40);
        v113 = swift_allocObject();
        *(v113 + 16) = v110;
        *(v113 + 24) = v111;
        aBlock[4] = sub_1DEEF51A4;
        aBlock[5] = v113;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DEE3F0C0;
        aBlock[3] = &block_descriptor_24_0;
        v114 = _Block_copy(aBlock);

        v115 = v123;
        sub_1DEF8D6B8();
        v151 = MEMORY[0x1E69E7CC0];
        sub_1DEE2BB88(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
        sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
        v116 = v120;
        v117 = v122;
        sub_1DEF8DE08();
        MEMORY[0x1E12CB4D0](0, v115, v116, v114);
        _Block_release(v114);
        (*(v124 + 8))(v116, v117);
        (*(v119 + 8))(v115, v121);

        return sub_1DEEF2640();
      }

      v75 = *(v71 + 48);
      v53 = v140;
      (*v143)(v150, v70, v140);
      v76 = v70 + v75;
      v77 = v147;
      sub_1DEEF5140(v76, v147);
      if (qword_1ECDE3810 != -1)
      {
        swift_once();
      }

      v78 = sub_1DEF8D508();
      __swift_project_value_buffer(v78, qword_1ECDF6100);
      (*v144)(v73, v74, v53);
      v79 = v148;
      sub_1DEEF50DC(v77, v148);
      v80 = v77;
      v81 = v135;
      sub_1DEEF50DC(v80, v135);
      v82 = sub_1DEF8D4D8();
      v83 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        aBlock[0] = v131;
        *v84 = v126;
        sub_1DEE2BB88(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v130 = v83;
        v85 = sub_1DEF8E2E8();
        v87 = v86;
        v145 = *v146;
        v145(v73, v53);
        v88 = sub_1DEE12A5C(v85, v87, aBlock);

        *(v84 + 4) = v88;
        *(v84 + 12) = 2082;
        v89 = v142;
        v90 = (v148 + *(v142 + 20));
        v91 = *v90;
        v92 = v90[1];

        sub_1DEEF51AC(v148);
        v93 = sub_1DEE12A5C(v91, v92, aBlock);

        *(v84 + 14) = v93;
        *(v84 + 22) = 2082;
        v94 = *(v89 + 28);
        sub_1DEF8D378();
        sub_1DEE2BB88(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
        v95 = sub_1DEF8E2E8();
        v97 = v96;
        sub_1DEEF51AC(v81);
        v98 = sub_1DEE12A5C(v95, v97, aBlock);

        *(v84 + 24) = v98;
        _os_log_impl(&dword_1DEE0F000, v82, v130, "Purging expired session %{public}s for device %{public}s (last interaction %{public}s", v84, 0x20u);
        v99 = v131;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v99, -1, -1);
        MEMORY[0x1E12CCD70](v84, -1, -1);
      }

      else
      {

        sub_1DEEF51AC(v81);
        sub_1DEEF51AC(v79);
        v145 = *v146;
        v145(v73, v53);
      }

      v21 = v134;
      v100 = v149;
      swift_beginAccess();
      v101 = *(v100 + 56);
      v102 = sub_1DEEAF350(v150);
      if (v103)
      {
        v104 = v102;
        v105 = v149;
        v106 = *(v149 + 56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = *(v105 + 56);
        v151 = v108;
        *(v105 + 56) = 0x8000000000000000;
        v56 = v136;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DEEB9BF4();
          v108 = v151;
        }

        v55 = v145;
        v145((*(v108 + 48) + *(v21 + 72) * v104), v53);
        sub_1DEEF5140(*(v108 + 56) + *(v141 + 72) * v104, v56);
        sub_1DEF776E4(v104, v108);
        v54 = 0;
        *(v149 + 56) = v108;
        v47 = v133;
      }

      else
      {
        v54 = 1;
        v47 = v133;
        v55 = v145;
        v56 = v136;
      }

      (*v132)(v56, v54, 1, v142);
      sub_1DEE171B4(v56, &qword_1ECDE3D08, &unk_1DEF95E50);
      swift_endAccess();
      sub_1DEEF51AC(v147);
      result = v55(v150, v53);
    }

    if (v125 <= v51 + 1)
    {
      v58 = v51 + 1;
    }

    else
    {
      v58 = v125;
    }

    v59 = v58 - 1;
    while (1)
    {
      v57 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v57 >= v125)
      {
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
        v69 = v138;
        (*(*(v109 - 8) + 56))(v138, 1, 1, v109);
        v50 = 0;
        v51 = v59;
        goto LABEL_18;
      }

      v50 = *(v47 + 8 * v57);
      ++v51;
      if (v50)
      {
        v51 = v57;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEF40A4(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = type metadata accessor for SessionManager.Session();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1DEF8D3F8();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4990, &qword_1DEF93D78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = *(a1 + 64);
  v40 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v39 = (v17 + 63) >> 6;
  v41 = v6 + 32;
  v42 = v6 + 16;
  v46 = v6;
  v48 = a1;
  v49 = (v6 + 8);

  v21 = 0;
  v43 = v15;
  v44 = v12;
  v23 = v51;
  v22 = v52;
  if (v19)
  {
    while (1)
    {
      v24 = v21;
LABEL_12:
      v27 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v28 = v27 | (v24 << 6);
      v29 = v48;
      v30 = v45;
      v31 = v46;
      (*(v46 + 16))(v45, *(v48 + 48) + *(v46 + 72) * v28, v22);
      sub_1DEEF50DC(*(v29 + 56) + *(v47 + 72) * v28, v23);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
      v33 = *(v32 + 48);
      v34 = *(v31 + 32);
      v12 = v44;
      v34(v44, v30, v22);
      sub_1DEEF5140(v23, &v12[v33]);
      (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
      v26 = v24;
      v15 = v43;
LABEL_13:
      sub_1DEE1BA88(v12, v15, &qword_1ECDE4990, &qword_1DEF93D78);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
      if ((*(*(v35 - 8) + 48))(v15, 1, v35) == 1)
      {
      }

      v36 = v51;
      sub_1DEEF5140(&v15[*(v35 + 48)], v51);
      v37 = *(v50 + 24);
      sub_1DEF8D588();
      sub_1DEEF51AC(v36);
      result = (*v49)(v15, v52);
      v21 = v26;
      if (!v19)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v39 <= v21 + 1)
    {
      v25 = v21 + 1;
    }

    else
    {
      v25 = v39;
    }

    v26 = v25 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v39)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
        (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
        v19 = 0;
        goto LABEL_13;
      }

      v19 = *(v40 + 8 * v24);
      ++v21;
      if (v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SessionManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return v0;
}

uint64_t SessionManager.__deallocating_deinit()
{
  SessionManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1DEEF458C(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      sub_1DEEF4BDC(v8, v4, v2);
      MEMORY[0x1E12CCD70](v8, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v9 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1DEEF46EC(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

LABEL_4:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DEEF46EC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = a1;
  v68 = sub_1DEF8D378();
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v49 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
  v9 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v49 - v12;
  v13 = type metadata accessor for SessionManager.Session();
  v61 = *(v13 - 8);
  v62 = v13;
  v14 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1DEF8D3F8();
  v16 = *(*(v59 - 8) + 64);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v59);
  v72 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v69 = a3;
  v21 = *(a3 + 64);
  v54 = a3 + 64;
  v22 = 1 << *(a3 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v52 = 0;
  v53 = (v22 + 63) >> 6;
  v57 = (v4 + 8);
  v58 = v17 + 2;
  v73 = v17;
  v56 = v17 + 1;
  while (v24)
  {
    v25 = __clz(__rbit64(v24));
    v71 = (v24 - 1) & v24;
LABEL_11:
    v28 = v25 | (v20 << 6);
    v29 = v69;
    v30 = v73[2];
    v31 = v72;
    v32 = v59;
    v30(v72, v69[6] + v73[9] * v28, v59, v18);
    v33 = v29[7];
    v34 = v60;
    v35 = *(v61 + 72);
    v55 = v28;
    sub_1DEEF50DC(v33 + v35 * v28, v60);
    v36 = v63;
    (v30)(v63, v31, v32);
    v37 = v65;
    sub_1DEEF50DC(v34, v36 + *(v65 + 48));
    v38 = v64;
    sub_1DEEF5208(v36, v64);
    v39 = v38 + *(v37 + 48);
    v40 = *(v39 + *(v62 + 32));
    v41 = v39 + *(v62 + 28);
    v42 = v66;
    sub_1DEF8D2E8();
    sub_1DEEF51AC(v39);
    v43 = v67;
    sub_1DEF8D348();
    v70 = sub_1DEF8D308();
    v44 = *v57;
    v45 = v43;
    v46 = v68;
    (*v57)(v45, v68);
    v44(v42, v46);
    sub_1DEE171B4(v36, &qword_1ECDE4998, &qword_1DEF93D80);
    v47 = v73[1];
    v47(v38, v32);
    sub_1DEEF51AC(v34);
    v47(v72, v32);
    v24 = v71;
    if (v70)
    {
      *(v51 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      if (__OFADD__(v52++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DEEC7584(v51, v50, v52, v69);
        return;
      }
    }
  }

  v26 = v20;
  while (1)
  {
    v20 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v20 >= v53)
    {
      goto LABEL_15;
    }

    v27 = *(v54 + 8 * v20);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v71 = (v27 - 1) & v27;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1DEEF4BDC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1DEEF46EC(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

BOOL _s16ReplicatorEngine14SessionManagerC0C0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1DEF8D3A8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SessionManager.Session();
  v5 = a1 + v4[5];
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *(v5 + 32);
  v21[0] = *v5;
  v21[1] = v6;
  v21[2] = v7;
  v21[3] = v8;
  v22 = v9;
  v23 = *(v5 + 40);
  v10 = a2 + v4[5];
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v14 = *(v10 + 32);
  v18[0] = *v10;
  v18[1] = v11;
  v18[2] = v12;
  v18[3] = v13;
  v19 = v14;
  v20 = *(v10 + 40);
  v15 = _s16ReplicatorEngine19HandshakeDescriptorV2eeoiySbAC_ACtFZ_0(v21, v18);

  if (!v15)
  {
    return 0;
  }

  if (*(a1 + v4[6]) == *(a2 + v4[6]) && (v16 = v4[7], (sub_1DEF8D338() & 1) != 0) && *(a1 + v4[8]) == *(a2 + v4[8]))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DEEF4DC0()
{
  result = qword_1ECDE4988;
  if (!qword_1ECDE4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4988);
  }

  return result;
}

uint64_t sub_1DEEF5018()
{
  result = sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    result = sub_1DEF8D378();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DEEF50DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionManager.Session();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEEF5140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionManager.Session();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEEF51AC(uint64_t a1)
{
  v2 = type metadata accessor for SessionManager.Session();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEEF5208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4998, &qword_1DEF93D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DEEF5284(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  if (!a2)
  {
    a3();
    return;
  }

  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v6 = sub_1DEF8D508();
  __swift_project_value_buffer(v6, qword_1ECDF5FB0);

  v7 = sub_1DEF8D4D8();
  v8 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1DEE12A5C(a1, a2, &v29);
    _os_log_impl(&dword_1DEE0F000, v7, v8, "Changing persona to %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12CCD70](v10, -1, -1);
    MEMORY[0x1E12CCD70](v9, -1, -1);
  }

  v11 = objc_opt_self();
  v12 = [v11 currentPersona];
  if (!v12)
  {
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v7 = [v12 userPersonaUniqueString];

  if (v7)
  {
    v28 = sub_1DEF8D948();
    v15 = v14;
  }

  else
  {
    v28 = 0;
    v15 = 0;
  }

  v16 = [v11 currentPersona];
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16;
  v18 = sub_1DEF8D918();

  a3();
  v19 = [v11 currentPersona];
  if (!v19)
  {
LABEL_25:

    __break(1u);
    return;
  }

  v20 = v19;

  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136446210;
    if (v15)
    {
      v25 = v28;
    }

    else
    {
      v25 = 7104878;
    }

    if (v15)
    {
      v26 = v15;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    v27 = sub_1DEE12A5C(v25, v26, &v29);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1DEE0F000, v21, v22, "Reverting persona back to %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12CCD70](v24, -1, -1);
    MEMORY[0x1E12CCD70](v23, -1, -1);
  }

  else
  {
  }
}

void sub_1DEEF561C(uint64_t a1, unint64_t a2, void (*a3)(uint64_t **__return_ptr))
{
  if (!a2)
  {
    a3(&v32);
    return;
  }

  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v6 = sub_1DEF8D508();
  __swift_project_value_buffer(v6, qword_1ECDF5FB0);

  v7 = sub_1DEF8D4D8();
  v8 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1DEE12A5C(a1, a2, &v32);
    _os_log_impl(&dword_1DEE0F000, v7, v8, "Changing persona to %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12CCD70](v10, -1, -1);
    MEMORY[0x1E12CCD70](v9, -1, -1);
  }

  v11 = objc_opt_self();
  v12 = [v11 currentPersona];
  if (!v12)
  {
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v7 = [v12 userPersonaUniqueString];

  if (v7)
  {
    v29 = sub_1DEF8D948();
    v15 = v14;
    v16 = [v11 currentPersona];
  }

  else
  {
    v15 = 0;
    v16 = [v11 currentPersona];
  }

  v17 = v16;
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = v17;
  v19 = sub_1DEF8D918();

  a3(&v32);
  v20 = [v11 currentPersona];
  if (!v20)
  {
LABEL_25:

    __break(1u);
    return;
  }

  v21 = v20;

  v22 = sub_1DEF8D4D8();
  v23 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136446210;
    if (v15)
    {
      v26 = v30;
    }

    else
    {
      v26 = 7104878;
    }

    if (v15)
    {
      v27 = v15;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v28 = sub_1DEE12A5C(v26, v27, &v31);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1DEE0F000, v22, v23, "Reverting persona back to %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1E12CCD70](v25, -1, -1);
    MEMORY[0x1E12CCD70](v24, -1, -1);
  }

  else
  {
  }
}

void sub_1DEEF59BC(uint64_t a1, unint64_t a2, void (*a3)(uint64_t **__return_ptr))
{
  if (!a2)
  {
    a3(&v29);
    return;
  }

  if (qword_1ECDE2E30 != -1)
  {
    swift_once();
  }

  v6 = sub_1DEF8D508();
  __swift_project_value_buffer(v6, qword_1ECDF5FB0);

  v7 = sub_1DEF8D4D8();
  v8 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_1DEE12A5C(a1, a2, &v29);
    _os_log_impl(&dword_1DEE0F000, v7, v8, "Changing persona to %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12CCD70](v10, -1, -1);
    MEMORY[0x1E12CCD70](v9, -1, -1);
  }

  v11 = objc_opt_self();
  v12 = [v11 currentPersona];
  if (!v12)
  {
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v7 = [v12 userPersonaUniqueString];

  if (v7)
  {
    v28 = sub_1DEF8D948();
    v15 = v14;
  }

  else
  {
    v28 = 0;
    v15 = 0;
  }

  v16 = [v11 currentPersona];
  if (!v16)
  {
    goto LABEL_24;
  }

  v17 = v16;
  v18 = sub_1DEF8D918();

  a3(&v29);
  v19 = [v11 currentPersona];
  if (!v19)
  {
LABEL_25:

    __break(1u);
    return;
  }

  v20 = v19;

  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30 = v24;
    *v23 = 136446210;
    if (v15)
    {
      v25 = v28;
    }

    else
    {
      v25 = 7104878;
    }

    if (v15)
    {
      v26 = v15;
    }

    else
    {
      v26 = 0xE300000000000000;
    }

    v27 = sub_1DEE12A5C(v25, v26, &v30);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1DEE0F000, v21, v22, "Reverting persona back to %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12CCD70](v24, -1, -1);
    MEMORY[0x1E12CCD70](v23, -1, -1);
  }

  else
  {
  }
}

id sub_1DEEF5D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W4>, nw_browser_t *a4@<X8>)
{
  v6 = sub_1DEEF61B4(a1, a2);
  v7 = sub_1DEF8D918();
  v8 = [v7 UTF8String];
  result = v7;
  if (v8)
  {
    application_service = nw_browse_descriptor_create_application_service(v8);
    nw_browse_descriptor_set_browse_scope();
    if (a3 == 2 || a3 == 1)
    {
      nw_browse_descriptor_set_device_types();
    }

    v11 = nw_browser_create(application_service, v6);
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v12 = sub_1DEF8D508();
    __swift_project_value_buffer(v12, qword_1ECDF6010);
    swift_unknownObjectRetain();
    v13 = sub_1DEF8D4D8();
    v14 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
      v17 = sub_1DEF8D988();
      v19 = sub_1DEE12A5C(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1DEE0F000, v13, v14, "Browser created %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E12CCD70](v16, -1, -1);
      MEMORY[0x1E12CCD70](v15, -1, -1);
    }

    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    *a4 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEF5F88(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v4 = sub_1DEF8D508();
  __swift_project_value_buffer(v4, qword_1ECDF6010);
  v5 = sub_1DEF8D4D8();
  v6 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DEE0F000, v5, v6, "Starting browser", v7, 2u);
    MEMORY[0x1E12CCD70](v7, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v8);
  if (qword_1ECDE33F0 != -1)
  {
    v9 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
  sub_1DEF8DD18();
  return v11;
}

id sub_1DEEF6170@<X0>(nw_browser_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_1DEEF5D60(*(v1 + 16), *(v1 + 24), *(v1 + 48), a1);
}

void sub_1DEEF6180(void *a1@<X8>)
{
  v4 = *(v1 + 40);
  sub_1DEEF561C(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = v5;
  }
}

uint64_t sub_1DEEF61B4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A8, &qword_1DEF93D88);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v20 - v6;
  v8 = MEMORY[0x1E12CC4F0](v5);
  v9 = xpc_array_create(0, 0);
  v10 = sub_1DEF8D518();
  v11 = sub_1DEF8D998();
  xpc_array_set_string(v9, v10, (v11 + 32));

  v12 = xpc_array_create(0, 0);
  v13 = sub_1DEF8D518();
  v14 = sub_1DEF8D998();
  xpc_array_set_string(v12, v13, (v14 + 32));

  swift_unknownObjectRetain();
  nw_parameters_set_required_netagent_classes();
  if (a2)
  {
    sub_1DEF8D658();
    v15 = sub_1DEF8D668();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v7, 1, v15) == 1)
    {
      sub_1DEEF642C(v7);
    }

    else
    {
      sub_1DEF8D648();
      (*(v16 + 8))(v7, v15);
    }

    nw_parameters_set_application_id();
    swift_unknownObjectRelease();
  }

  nw_parameters_set_include_screen_off_devices();
  nw_parameters_set_include_ble();
  v17 = xpc_array_create(0, 0);
  v18 = sub_1DEF8D518();
  xpc_array_set_uint64(v17, v18, 0x3E9uLL);
  nw_parameters_set_preferred_interface_subtypes();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1DEEF642C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A8, &qword_1DEF93D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PersonaMonitorEvent.DeviceEvent.EventType.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

uint64_t PersonaMonitorEvent.DeviceEvent.deviceID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PersonaMonitorEvent.DeviceEvent.deviceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PersonaMonitorEvent.DeviceEvent.personaID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PersonaMonitorEvent.DeviceEvent.personaID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t sub_1DEEF666C()
{
  result = qword_1ECDE49B0;
  if (!qword_1ECDE49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE49B0);
  }

  return result;
}

uint64_t sub_1DEEF66CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DEEF671C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1DEEF67AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1DEEF67F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DEEF6894(uint64_t a1)
{
  v3 = type metadata accessor for PairingRelationship();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v33 = v1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1DEEC7D60(0, v11, 0);
  v12 = v45;
  v13 = a1 + 56;
  v14 = -1 << *(a1 + 32);
  result = sub_1DEF8DE18();
  v16 = v7;
  v17 = result;
  v18 = 0;
  v39 = (v16 + 16);
  v40 = v16;
  v37 = a1;
  v38 = v16 + 32;
  v34 = a1 + 64;
  v35 = v11;
  v36 = a1 + 56;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 36);
    v43 = v18;
    v44 = v21;
    v22 = v41;
    sub_1DEEE42FC(*(a1 + 48) + *(v42 + 72) * v17, v41);
    (*v39)(v10, v22, v6);
    sub_1DEEE4360(v22);
    v45 = v12;
    v23 = v6;
    v25 = *(v12 + 16);
    v24 = *(v12 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1DEEC7D60(v24 > 1, v25 + 1, 1);
      v12 = v45;
    }

    *(v12 + 16) = v25 + 1;
    result = (*(v40 + 32))(v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25, v10, v23);
    v19 = 1 << *(v37 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v13 = v36;
    v26 = *(v36 + 8 * v20);
    if ((v26 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v23;
    a1 = v37;
    if (v44 != *(v37 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v17 & 0x3F));
    if (v27)
    {
      v19 = __clz(__rbit64(v27)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v20 << 6;
      v29 = v20 + 1;
      v30 = (v34 + 8 * v20);
      while (v29 < (v19 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1DEE2F804(v17, v44, 0);
          v19 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_1DEE2F804(v17, v44, 0);
    }

LABEL_4:
    v18 = v43 + 1;
    v17 = v19;
    if (v43 + 1 == v35)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t UnifyingPairingRelationshipFilter.__allocating_init(filters:)(uint64_t a1)
{
  v2 = swift_allocObject();
  UnifyingPairingRelationshipFilter.init(filters:)(a1);
  return v2;
}

uint64_t UnifyingPairingRelationshipFilter.init(filters:)(uint64_t a1)
{
  v20 = a1;
  v18 = sub_1DEF8DD08();
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DEF8DCD8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DEF8D6D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v17[1] = sub_1DEE3C630();
  v19 = "RapportBrowseAgent";
  sub_1DEF8D6C8();
  v22 = MEMORY[0x1E69E7CC0];
  v17[4] = sub_1DEE2BBD0(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  v9 = *MEMORY[0x1E69E8090];
  v10 = v1 + 104;
  v11 = *(v1 + 104);
  v17[2] = v10;
  v12 = v18;
  v11(v4, v9, v18);
  *(v21 + 24) = sub_1DEF8DD38();
  sub_1DEF8D6C8();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DE08();
  v11(v4, v9, v12);
  v13 = sub_1DEF8DD38();
  v15 = v20;
  v14 = v21;
  *(v21 + 32) = v13;
  *(v14 + 16) = v15;
  return v14;
}

uint64_t UnifyingPairingRelationshipFilter.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t UnifyingPairingRelationshipFilter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t UnifyingPairingRelationshipFilter.filterKnownPairingRelationships(from:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = a2;
  v29 = a3;
  v36 = a1;
  v5 = sub_1DEF8D698();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D6D8();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = dispatch_group_create();
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CD0];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = *(v3 + 16);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + 32;
    do
    {
      sub_1DEE29594(v16, aBlock);
      dispatch_group_enter(v11);
      v17 = v42;
      v38 = v41;
      __swift_project_boxed_opaque_existential_1(aBlock, v41);
      v18 = swift_allocObject();
      v18[2] = v3;
      v18[3] = v12;
      v18[4] = v13;
      v18[5] = v11;
      v37 = *(v17 + 1);

      v19 = v11;
      v37(v36, sub_1DEEF76E8, v18, v38, v17);

      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v16 += 40;
      --v15;
    }

    while (v15);
  }

  v38 = *(v3 + 24);
  v20 = swift_allocObject();
  v21 = v28;
  v22 = v29;
  v20[2] = v13;
  v20[3] = v21;
  v20[4] = v22;
  v20[5] = v12;
  v20[6] = v4;
  v42 = sub_1DEEF7EB0;
  v43 = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  v41 = &block_descriptor_11;
  v23 = _Block_copy(aBlock);

  v24 = v30;
  sub_1DEF8D6B8();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BBD0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  v25 = v33;
  v26 = v35;
  sub_1DEF8DE08();
  sub_1DEF8DCC8();
  _Block_release(v23);

  (*(v34 + 8))(v25, v26);
  (*(v31 + 8))(v24, v32);
}

uint64_t sub_1DEEF7430(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v8 = *(a3 + 24);
  if (a2)
  {
    v9 = a5 + 16;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a1;
    v11 = swift_allocObject();
    v12 = sub_1DEEF8074;
    *(v11 + 16) = sub_1DEEF8074;
    *(v11 + 24) = v10;
    v26 = sub_1DEE13B20;
    v27 = v11;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DEE134F4;
    v25 = &block_descriptor_26_2;
    v13 = _Block_copy(&v22);
    sub_1DEEE43BC(a1, 1);

    dispatch_sync(v8, v13);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v16 = 0;
LABEL_6:
      dispatch_group_leave(a6);
      sub_1DEE3DBD0(v16);
      return sub_1DEE3DBD0(v12);
    }

    __break(1u);
  }

  else
  {
    v17 = a4 + 16;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = a1;
    v19 = swift_allocObject();
    v16 = sub_1DEEF807C;
    *(v19 + 16) = sub_1DEEF807C;
    *(v19 + 24) = v18;
    v26 = sub_1DEE46D40;
    v27 = v19;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1DEE134F4;
    v25 = &block_descriptor_36;
    v20 = _Block_copy(&v22);
    sub_1DEEE43BC(a1, 0);

    dispatch_sync(v8, v20);
    _Block_release(v20);
    v21 = swift_isEscapingClosureAtFileLocation();

    if ((v21 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEF76F8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PairingRelationship();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  swift_beginAccess();
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);

    do
    {
      sub_1DEEE42FC(v12, v7);
      sub_1DEF395BC(v10, v7);
      sub_1DEEE4360(v10);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  return swift_endAccess();
}

id sub_1DEEF7840(void **a1, void *a2)
{
  swift_beginAccess();
  v4 = *a1;
  *a1 = a2;

  return a2;
}

void sub_1DEEF7890(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a2;
  v56 = a3;
  v8 = sub_1DEF8D698();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D6D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = v18;
    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v20 = sub_1DEF8D508();
    __swift_project_value_buffer(v20, qword_1ECDF5FF8);
    v21 = v18;
    v22 = sub_1DEF8D4D8();
    v23 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = v18;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1DEE0F000, v22, v23, "Failed to filter relationships: %{public}@", v24, 0xCu);
      sub_1DEEE2A84(v25);
      MEMORY[0x1E12CCD70](v25, -1, -1);
      MEMORY[0x1E12CCD70](v24, -1, -1);
    }

    v28 = v18;
    v55(v18, 1);
  }

  else
  {
    v51 = a5;
    v53 = v14;
    v54 = v13;
    swift_beginAccess();
    v52 = a4;
    v29 = *(a4 + 16);

    v31 = sub_1DEEF6894(v30);

    sub_1DEEA3B70(v31);

    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v32 = sub_1DEF8D508();
    __swift_project_value_buffer(v32, qword_1ECDF5FF8);

    v33 = sub_1DEF8D4D8();
    v34 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v50 = v9;
      v36 = v35;
      v49 = swift_slowAlloc();
      aBlock[0] = v49;
      *v36 = 136446210;
      sub_1DEF8D3F8();
      sub_1DEE2BBD0(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
      v37 = sub_1DEF8DBF8();
      v39 = v38;

      v40 = sub_1DEE12A5C(v37, v39, aBlock);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1DEE0F000, v33, v34, "Fetched known relationships from filters: %{public}s", v36, 0xCu);
      v41 = v49;
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1E12CCD70](v41, -1, -1);
      v42 = v36;
      v9 = v50;
      MEMORY[0x1E12CCD70](v42, -1, -1);
    }

    else
    {
    }

    v43 = v52;
    v44 = *(v51 + 32);
    v45 = swift_allocObject();
    v46 = v56;
    v45[2] = v55;
    v45[3] = v46;
    v45[4] = v43;
    aBlock[4] = sub_1DEEF8068;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_17_0;
    v47 = _Block_copy(aBlock);

    sub_1DEF8D6B8();
    v57 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BBD0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v17, v12, v47);
    _Block_release(v47);
    (*(v9 + 8))(v12, v8);
    (*(v53 + 8))(v17, v54);
  }
}

uint64_t sub_1DEEF7EC0(void (*a1)(size_t, void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
    a1(MEMORY[0x1E69E7CC0], 0);
  }

  v7 = sub_1DEF2B350(v6, 0);
  v8 = *(type metadata accessor for PairingRelationship() - 8);
  sub_1DEF2E0B8(&v12, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v5);
  v10 = v9;

  result = sub_1DEE2774C();
  if (v10 == v6)
  {
    a1(v7, 0);
  }

  __break(1u);
  return result;
}

uint64_t PairingRelationship.init(id:remoteDevice:lastIncomingConnectionDate:lastOutgoingConnectionDate:state:initialPairingDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = a5[1];
  v15 = sub_1DEF8D3F8();
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  v16 = type metadata accessor for PairingRelationship();
  sub_1DEEFA048(a2, a7 + v16[5]);
  v17 = v16[6];
  v18 = sub_1DEF8D378();
  v22 = *(*(v18 - 8) + 32);
  (v22)((v18 - 8), a7 + v17, a3, v18);
  v22(a7 + v16[7], a4, v18);
  v19 = (a7 + v16[8]);
  *v19 = v13;
  v19[1] = v14;
  v20 = a7 + v16[9];

  return (v22)(v20, a6, v18);
}

BOOL PairingRelationship.isPaired.getter()
{
  v1 = *(v0 + *(type metadata accessor for PairingRelationship() + 32) + 8);
  if (v1)
  {
    v2 = v1 == 3;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t sub_1DEEF8230()
{
  v1 = *v0;
  v2 = 0x6375646F72746E69;
  v3 = 0x646572696170;
  v4 = 0x6E6974617267696DLL;
  if (v1 != 3)
  {
    v4 = 0x6576697463616E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E6972696170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DEEF82D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEEFAD14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEEF8304(uint64_t a1)
{
  v2 = sub_1DEEFA0AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEF8340(uint64_t a1)
{
  v2 = sub_1DEEFA0AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEF837C(uint64_t a1)
{
  v2 = sub_1DEEFA100();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEF83B8(uint64_t a1)
{
  v2 = sub_1DEEFA100();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEF83F4(uint64_t a1)
{
  v2 = sub_1DEEFA250();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEF8430(uint64_t a1)
{
  v2 = sub_1DEEFA250();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEF847C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1836020326 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DEF8E4E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DEEF8504(uint64_t a1)
{
  v2 = sub_1DEEFA154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEF8540(uint64_t a1)
{
  v2 = sub_1DEEFA154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEF857C(uint64_t a1)
{
  v2 = sub_1DEEFA1A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEF85B8(uint64_t a1)
{
  v2 = sub_1DEEFA1A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEF85F4(uint64_t a1)
{
  v2 = sub_1DEEFA1FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEF8630(uint64_t a1)
{
  v2 = sub_1DEEFA1FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PairingRelationship.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49B8, &qword_1DEF93F80);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49C0, &qword_1DEF93F88);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49C8, &qword_1DEF93F90);
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49D0, &qword_1DEF93F98);
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49D8, &qword_1DEF93FA0);
  v36 = *(v16 - 8);
  v17 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49E0, &qword_1DEF93FA8);
  v48 = *(v20 - 8);
  v49 = v20;
  v21 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v35 - v22;
  v24 = v1[1];
  v35 = *v1;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEFA0AC();
  sub_1DEF8E858();
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v52 = 2;
      sub_1DEEFA1A8();
      v27 = v39;
      v26 = v49;
      sub_1DEF8E248();
      v29 = v40;
      v28 = v41;
    }

    else
    {
      if (v24 != 3)
      {
        goto LABEL_8;
      }

      v54 = 4;
      sub_1DEEFA100();
      v27 = v43;
      v26 = v49;
      sub_1DEF8E248();
      v29 = v46;
      v28 = v47;
    }

    (*(v29 + 8))(v27, v28);
    return (*(v48 + 8))(v23, v26);
  }

  if (!v24)
  {
    v50 = 0;
    sub_1DEEFA250();
    v34 = v49;
    sub_1DEF8E248();
    (*(v36 + 8))(v19, v16);
    return (*(v48 + 8))(v23, v34);
  }

  if (v24 != 1)
  {
LABEL_8:
    v53 = 3;
    sub_1DEEFA154();
    v30 = v42;
    v31 = v49;
    sub_1DEF8E248();
    v32 = v45;
    sub_1DEF8E278();
    (*(v44 + 8))(v30, v32);
    return (*(v48 + 8))(v23, v31);
  }

  v51 = 1;
  sub_1DEEFA1FC();
  v26 = v49;
  sub_1DEF8E248();
  (*(v37 + 8))(v15, v38);
  return (*(v48 + 8))(v23, v26);
}

uint64_t PairingRelationship.State.hash(into:)()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      return MEMORY[0x1E12CBF60](v2);
    }

    if (v1 == 3)
    {
      v2 = 4;
      return MEMORY[0x1E12CBF60](v2);
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      return MEMORY[0x1E12CBF60](v2);
    }

    if (v1 == 1)
    {
      v2 = 1;
      return MEMORY[0x1E12CBF60](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1E12CBF60](3);

  return sub_1DEF8D9B8();
}

uint64_t PairingRelationship.State.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DEF8E7A8();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v3);
      return sub_1DEF8E7F8();
    }
  }

  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEF8D9C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DEF8E7A8();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v3);
      return sub_1DEF8E7F8();
    }
  }

  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEF8E54()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      return MEMORY[0x1E12CBF60](v2);
    }

    if (v1 == 3)
    {
      v2 = 4;
      return MEMORY[0x1E12CBF60](v2);
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      return MEMORY[0x1E12CBF60](v2);
    }

    if (v1 == 1)
    {
      v2 = 1;
      return MEMORY[0x1E12CBF60](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x1E12CBF60](3);

  return sub_1DEF8D9B8();
}

uint64_t sub_1DEEF8F04()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DEF8E7A8();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 2;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_11;
    }

    if (v2 == 1)
    {
      v3 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v3);
      return sub_1DEF8E7F8();
    }
  }

  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t PairingRelationship.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PairingRelationship.id.setter(uint64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PairingRelationship.remoteDevice.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PairingRelationship() + 20);

  return sub_1DEEFA2A4(a1, v3);
}

uint64_t PairingRelationship.lastIncomingConnectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PairingRelationship() + 24);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PairingRelationship.lastIncomingConnectionDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PairingRelationship() + 24);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PairingRelationship.lastOutgoingConnectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PairingRelationship() + 28);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PairingRelationship.lastOutgoingConnectionDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PairingRelationship() + 28);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PairingRelationship.state.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PairingRelationship() + 32));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1DEE4F8C0(v4, v5);
}

uint64_t PairingRelationship.state.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1 + *(type metadata accessor for PairingRelationship() + 32);
  result = sub_1DEE4F8D4(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t PairingRelationship.initialPairingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PairingRelationship() + 36);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PairingRelationship.initialPairingDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PairingRelationship() + 36);
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PairingRelationship.description.getter()
{
  v1 = v0;
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
  sub_1DEF8D3F8();
  sub_1DEEFA504(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
  v2 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v2);

  MEMORY[0x1E12CB180](0x3A6574617473203BLL, 0xE900000000000020);
  v3 = type metadata accessor for PairingRelationship();
  v4 = (v0 + v3[8]);
  v5 = v4[1];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = 0xE600000000000000;
      v7 = 0x646572696170;
      goto LABEL_11;
    }

    if (v5 == 3)
    {
      v6 = 0xE800000000000000;
      v7 = 0x6576697463616E69;
      goto LABEL_11;
    }

LABEL_8:
    MEMORY[0x1E12CB180](*v4);
    MEMORY[0x1E12CB180](41, 0xE100000000000000);
    v7 = 0x6E6974617267696DLL;
    v6 = 0xEA00000000002867;
    goto LABEL_11;
  }

  if (!v5)
  {
    v6 = 0xEA00000000006465;
    v7 = 0x6375646F72746E69;
    goto LABEL_11;
  }

  if (v5 != 1)
  {
    goto LABEL_8;
  }

  v6 = 0xE700000000000000;
  v7 = 0x676E6972696170;
LABEL_11:
  MEMORY[0x1E12CB180](v7, v6);

  MEMORY[0x1E12CB180](0x726961507369203BLL, 0xEC000000203A6465);
  v8 = v4[1];
  if (v8 != 3 && v8)
  {
    v9 = 0xE400000000000000;
    v10 = 1702195828;
  }

  else
  {
    v9 = 0xE500000000000000;
    v10 = 0x65736C6166;
  }

  MEMORY[0x1E12CB180](v10, v9);

  MEMORY[0x1E12CB180](0x4465746F6D657220, 0xEF203A6563697665);
  v11 = v0 + v3[5];
  v12 = DeviceDescriptor.shortDescription.getter();
  MEMORY[0x1E12CB180](v12);

  MEMORY[0x1E12CB180](0xD00000000000001ELL, 0x80000001DEF9CF00);
  v13 = v3[6];
  sub_1DEF8D378();
  sub_1DEEFA504(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
  v14 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v14);

  MEMORY[0x1E12CB180](0xD000000000000016, 0x80000001DEF9CF20);
  v15 = v1 + v3[9];
  v16 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v16);

  MEMORY[0x1E12CB180](59, 0xE100000000000000);
  return 0;
}

uint64_t PairingRelationship.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_1DEF8D3F8();
  sub_1DEEFA504(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  sub_1DEF8D8C8();
  v4 = type metadata accessor for PairingRelationship();
  v5 = v1 + v4[5];
  DeviceDescriptor.hash(into:)(a1);
  v6 = v4[6];
  sub_1DEF8D378();
  sub_1DEEFA504(&qword_1ECDE42F8, MEMORY[0x1E6969530]);
  sub_1DEF8D8C8();
  v7 = v2 + v4[7];
  sub_1DEF8D8C8();
  v8 = (v2 + v4[8]);
  v9 = v8[1];
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = 2;
      goto LABEL_11;
    }

    if (v9 == 3)
    {
      v10 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v9)
    {
      v10 = 0;
      goto LABEL_11;
    }

    if (v9 == 1)
    {
      v10 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v10);
      goto LABEL_12;
    }
  }

  v11 = *v8;
  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
LABEL_12:
  v12 = v2 + v4[9];
  return sub_1DEF8D8C8();
}

uint64_t PairingRelationship.hashValue.getter()
{
  v1 = v0;
  sub_1DEF8E7A8();
  sub_1DEF8D3F8();
  sub_1DEEFA504(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  sub_1DEF8D8C8();
  v2 = type metadata accessor for PairingRelationship();
  v3 = v0 + v2[5];
  DeviceDescriptor.hash(into:)(v12);
  v4 = v2[6];
  sub_1DEF8D378();
  sub_1DEEFA504(&qword_1ECDE42F8, MEMORY[0x1E6969530]);
  sub_1DEF8D8C8();
  v5 = v1 + v2[7];
  sub_1DEF8D8C8();
  v6 = (v1 + v2[8]);
  v7 = v6[1];
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = 2;
      goto LABEL_11;
    }

    if (v7 == 3)
    {
      v8 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v7)
    {
      v8 = 0;
      goto LABEL_11;
    }

    if (v7 == 1)
    {
      v8 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v8);
      goto LABEL_12;
    }
  }

  v9 = *v6;
  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
LABEL_12:
  v10 = v1 + v2[9];
  sub_1DEF8D8C8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEF9CCC(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1DEF8E7A8();
  sub_1DEF8D3F8();
  sub_1DEEFA504(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  sub_1DEF8D8C8();
  v5 = v2 + a2[5];
  DeviceDescriptor.hash(into:)(v14);
  v6 = a2[6];
  sub_1DEF8D378();
  sub_1DEEFA504(&qword_1ECDE42F8, MEMORY[0x1E6969530]);
  sub_1DEF8D8C8();
  v7 = v4 + a2[7];
  sub_1DEF8D8C8();
  v8 = (v4 + a2[8]);
  v9 = v8[1];
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = 2;
      goto LABEL_11;
    }

    if (v9 == 3)
    {
      v10 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v9)
    {
      v10 = 0;
      goto LABEL_11;
    }

    if (v9 == 1)
    {
      v10 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v10);
      goto LABEL_12;
    }
  }

  v11 = *v8;
  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
LABEL_12:
  v12 = v4 + a2[9];
  sub_1DEF8D8C8();
  return sub_1DEF8E7F8();
}

uint64_t _s16ReplicatorEngine19PairingRelationshipV5StateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      sub_1DEE4F8D4(*a1, 2uLL);
      v7 = v4;
      v8 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_10;
      }

      if (v5 != 3)
      {
        goto LABEL_19;
      }

      sub_1DEE4F8D4(*a1, 3uLL);
      v7 = v4;
      v8 = 3;
    }

LABEL_18:
    sub_1DEE4F8D4(v7, v8);
    return 1;
  }

  if (!v3)
  {
    if (v5)
    {
      goto LABEL_19;
    }

    sub_1DEE4F8D4(*a1, 0);
    v7 = v4;
    v8 = 0;
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      v6 = 1;
      sub_1DEE4F8D4(*a1, 1uLL);
      sub_1DEE4F8D4(v4, 1uLL);
      return v6;
    }

LABEL_19:
    sub_1DEE4F8C0(*a2, *(a2 + 8));
    sub_1DEE4F8C0(v2, v3);
    sub_1DEE4F8D4(v2, v3);
    sub_1DEE4F8D4(v4, v5);
    return 0;
  }

LABEL_10:
  if (v5 < 4)
  {
    goto LABEL_19;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_1DEE4F8C0(*a1, v3);
    sub_1DEE4F8C0(v2, v3);
    sub_1DEE4F8D4(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_18;
  }

  v10 = *a1;
  v11 = sub_1DEF8E4E8();
  sub_1DEE4F8C0(v4, v5);
  sub_1DEE4F8C0(v2, v3);
  sub_1DEE4F8D4(v2, v3);
  sub_1DEE4F8D4(v4, v5);
  return v11 & 1;
}

uint64_t sub_1DEEFA048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DEEFA0AC()
{
  result = qword_1ECDE49E8;
  if (!qword_1ECDE49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE49E8);
  }

  return result;
}

unint64_t sub_1DEEFA100()
{
  result = qword_1ECDE49F0;
  if (!qword_1ECDE49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE49F0);
  }

  return result;
}

unint64_t sub_1DEEFA154()
{
  result = qword_1ECDE49F8;
  if (!qword_1ECDE49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE49F8);
  }

  return result;
}

unint64_t sub_1DEEFA1A8()
{
  result = qword_1ECDE4A00;
  if (!qword_1ECDE4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A00);
  }

  return result;
}

unint64_t sub_1DEEFA1FC()
{
  result = qword_1ECDE4A08;
  if (!qword_1ECDE4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A08);
  }

  return result;
}

unint64_t sub_1DEEFA250()
{
  result = qword_1ECDE4A10;
  if (!qword_1ECDE4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A10);
  }

  return result;
}

uint64_t sub_1DEEFA2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDescriptor();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s16ReplicatorEngine19PairingRelationshipV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1DEF8D3A8() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PairingRelationship();
  if (!static DeviceDescriptor.== infix(_:_:)(a1 + v4[5], a2 + v4[5]))
  {
    return 0;
  }

  v5 = v4[6];
  if ((sub_1DEF8D338() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  if ((sub_1DEF8D338() & 1) == 0)
  {
    return 0;
  }

  v7 = v4[8];
  v8 = *(a1 + v7 + 8);
  v16 = *(a1 + v7);
  v17 = v8;
  v9 = (a2 + v7);
  v10 = v9[1];
  v14 = *v9;
  v15 = v10;
  sub_1DEE4F8C0(v16, v8);
  sub_1DEE4F8C0(v14, v10);
  v11 = _s16ReplicatorEngine19PairingRelationshipV5StateO2eeoiySbAE_AEtFZ_0(&v16, &v14);
  sub_1DEE4F8D4(v14, v15);
  sub_1DEE4F8D4(v16, v17);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v4[9];

  return sub_1DEF8D338();
}

unint64_t sub_1DEEFA420()
{
  result = qword_1ECDE4A48;
  if (!qword_1ECDE4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A48);
  }

  return result;
}

uint64_t sub_1DEEFA504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEEFA54C()
{
  result = sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DeviceDescriptor();
    if (v2 <= 0x3F)
    {
      result = sub_1DEF8D378();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DEEFA5F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEEFA648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PairedDevice.PairedDeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairedDevice.PairedDeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DEEFA848()
{
  result = qword_1ECDE4A50;
  if (!qword_1ECDE4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A50);
  }

  return result;
}

unint64_t sub_1DEEFA8A0()
{
  result = qword_1ECDE4A58;
  if (!qword_1ECDE4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A58);
  }

  return result;
}

unint64_t sub_1DEEFA8F8()
{
  result = qword_1ECDE4A60;
  if (!qword_1ECDE4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A60);
  }

  return result;
}

unint64_t sub_1DEEFA950()
{
  result = qword_1ECDE4A68;
  if (!qword_1ECDE4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A68);
  }

  return result;
}

unint64_t sub_1DEEFA9A8()
{
  result = qword_1ECDE4A70;
  if (!qword_1ECDE4A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A70);
  }

  return result;
}

unint64_t sub_1DEEFAA00()
{
  result = qword_1ECDE4A78;
  if (!qword_1ECDE4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A78);
  }

  return result;
}

unint64_t sub_1DEEFAA58()
{
  result = qword_1ECDE4A80;
  if (!qword_1ECDE4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A80);
  }

  return result;
}

unint64_t sub_1DEEFAAB0()
{
  result = qword_1ECDE4A88;
  if (!qword_1ECDE4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A88);
  }

  return result;
}

unint64_t sub_1DEEFAB08()
{
  result = qword_1ECDE4A90;
  if (!qword_1ECDE4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A90);
  }

  return result;
}

unint64_t sub_1DEEFAB60()
{
  result = qword_1ECDE4A98;
  if (!qword_1ECDE4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4A98);
  }

  return result;
}

unint64_t sub_1DEEFABB8()
{
  result = qword_1ECDE4AA0;
  if (!qword_1ECDE4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AA0);
  }

  return result;
}

unint64_t sub_1DEEFAC10()
{
  result = qword_1ECDE4AA8;
  if (!qword_1ECDE4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AA8);
  }

  return result;
}

unint64_t sub_1DEEFAC68()
{
  result = qword_1ECDE4AB0;
  if (!qword_1ECDE4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AB0);
  }

  return result;
}

unint64_t sub_1DEEFACC0()
{
  result = qword_1ECDE4AB8;
  if (!qword_1ECDE4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AB8);
  }

  return result;
}

uint64_t sub_1DEEFAD14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6375646F72746E69 && a2 == 0xEA00000000006465;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6972696170 && a2 == 0xE700000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646572696170 && a2 == 0xE600000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6974617267696DLL && a2 == 0xE900000000000067 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6576697463616E69 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DEEFAED4()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  sub_1DEF8E7D8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEFAF48()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  sub_1DEF8E7D8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEFAF8C@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DEEFC764(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DEEFB074()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1DEF8D3F8();
  __swift_allocate_value_buffer(v4, qword_1ECDF60C0);
  v5 = __swift_project_value_buffer(v4, qword_1ECDF60C0);
  sub_1DEF8D388();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEFB1A4()
{
  v1 = v0;
  v93 = *MEMORY[0x1E69E9840];
  v82 = sub_1DEF8D3D8();
  v83 = v2;
  v84 = v3;
  v85 = v4;
  v86 = v5;
  v87 = v6;
  v88 = v7;
  v89 = v8;
  v90 = v9;
  v10 = type metadata accessor for NetworkSyncHeader(0);
  v11 = v10[6];
  __src = *(v0 + v10[5]);
  v72 = sub_1DEF8D3D8();
  v73 = v12;
  v74 = v13;
  v75 = v14;
  v76 = v15;
  v77 = v16;
  v78 = v17;
  v79 = v18;
  v80 = v19;
  v20 = v0 + v10[7];
  v63 = sub_1DEF8D3D8();
  v64 = v21;
  v65 = v22;
  v66 = v23;
  v67 = v24;
  v68 = v25;
  v69 = v26;
  v70 = v27;
  v71 = v28;
  v29 = v10[9];
  v62 = *(v1 + v10[8]);
  v61 = *(v1 + v29);
  v30 = *(v1 + v10[10]);
  v59 = *(v1 + v10[11]);
  v60 = v30;
  v58 = *(v1 + v10[12]);
  v91 = sub_1DEEFC774(&v82, 16);
  v92 = v31;
  v32 = sub_1DEEFC6AC(&__src, &v82);
  v34 = v33;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v32, v34 & 0xFFFFFFFFFFFFFFLL);
  v35 = sub_1DEEFC774(&v72, 16);
  v37 = v36;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v35, v37);
  v38 = sub_1DEEFC774(&v63, 16);
  v40 = v39;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v38, v40);
  v41 = sub_1DEEFC6AC(&v62, &v63);
  v43 = v42;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v41, v43 & 0xFFFFFFFFFFFFFFLL);
  v44 = sub_1DEEFC6AC(&v61, &v62);
  v46 = v45;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v44, v46 & 0xFFFFFFFFFFFFFFLL);
  v47 = sub_1DEEFC6AC(&v60, &v61);
  v49 = v48;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v47, v49 & 0xFFFFFFFFFFFFFFLL);
  v50 = sub_1DEEFC6AC(&v59, &v60);
  v52 = v51;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v50, v52 & 0xFFFFFFFFFFFFFFLL);
  v53 = sub_1DEEFC6AC(&v58, &v59);
  v55 = v54;
  sub_1DEF8D2A8();
  sub_1DEE1BFA0(v53, v55 & 0xFFFFFFFFFFFFFFLL);
  result = v91;
  v57 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEEFB530(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x786966657270;
    v6 = 0x496567617373656DLL;
    if (a1 != 2)
    {
      v6 = 0x44497265646E6573;
    }

    if (a1)
    {
      v5 = 0x654C726564616568;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65636E6575716573;
    v2 = 0x65636E6575716573;
    if (a1 != 7)
    {
      v2 = 0x797469726F697270;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6874676E656CLL;
    if (a1 != 4)
    {
      v3 = 0x546567617373656DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1DEEFB670(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B18, &qword_1DEF94A20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEFCA98();
  sub_1DEF8E858();
  v19[31] = 0;
  sub_1DEF8D3F8();
  sub_1DEE1E37C(&qword_1ECDE3640);
  sub_1DEF8E298();
  if (!v2)
  {
    v11 = type metadata accessor for NetworkSyncHeader(0);
    v12 = *(v3 + v11[5]);
    v19[30] = 1;
    sub_1DEF8E2A8();
    v13 = v11[6];
    v19[29] = 2;
    sub_1DEF8E298();
    v14 = v11[7];
    v19[28] = 3;
    sub_1DEF8E298();
    v15 = *(v3 + v11[8]);
    v19[27] = 4;
    sub_1DEF8E2A8();
    v19[26] = *(v3 + v11[9]);
    v19[25] = 5;
    sub_1DEEFCC54();
    sub_1DEF8E298();
    v16 = *(v3 + v11[10]);
    v19[24] = 6;
    sub_1DEF8E2A8();
    v17 = *(v3 + v11[11]);
    v19[15] = 7;
    sub_1DEF8E2A8();
    v19[14] = *(v3 + v11[12]);
    v19[13] = 8;
    sub_1DEEFCCA8();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DEEFB998@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1DEF8D3F8();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4AF8, &qword_1DEF94A18);
  v13 = *(v12 - 8);
  v46 = v12;
  v47 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  v17 = type metadata accessor for NetworkSyncHeader(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEFCA98();
  v49 = v16;
  v22 = v50;
  sub_1DEF8E848();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = v6;
  v42 = v9;
  v50 = v17;
  v23 = v20;
  v61 = 0;
  sub_1DEE1E37C(&qword_1ECDE3630);
  v24 = v45;
  v25 = v46;
  sub_1DEF8E1F8();
  v26 = *(v44 + 32);
  v27 = (v44 + 32);
  v26(v23, v48, v24);
  v60 = 1;
  v28 = sub_1DEF8E208();
  v40 = v26;
  v48 = v27;
  *&v23[v50[5]] = v28;
  v59 = 2;
  v29 = v42;
  sub_1DEF8E1F8();
  v30 = v50[6];
  v39 = v23;
  v31 = v29;
  v32 = v40;
  v40(&v23[v30], v31, v24);
  v58 = 3;
  v33 = v41;
  sub_1DEF8E1F8();
  v34 = v50;
  v32(v39 + v50[7], v33, v24);
  v57 = 4;
  v35 = sub_1DEF8E208();
  v36 = v39;
  *(v39 + v34[8]) = v35;
  v55 = 5;
  sub_1DEEFCAEC();
  sub_1DEF8E1F8();
  *(v36 + v34[9]) = v56;
  v54 = 6;
  *(v36 + v34[10]) = sub_1DEF8E208();
  v53 = 7;
  *(v36 + v34[11]) = sub_1DEF8E208();
  v51 = 8;
  sub_1DEEFCB40();
  sub_1DEF8E1F8();
  (*(v47 + 8))(v49, v25);
  *(v36 + v34[12]) = v52;
  sub_1DEEFCB94(v36, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DEEFCBF8(v36);
}

uint64_t sub_1DEEFBFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEEFCFA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEEFC02C(uint64_t a1)
{
  v2 = sub_1DEEFCA98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEFC068(uint64_t a1)
{
  v2 = sub_1DEEFCA98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEEFC0D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
LABEL_17:
      sub_1DEEFC824();
      swift_allocError();
      swift_willThrow();
      result = sub_1DEE1BFA0(a1, a2);
LABEL_38:
      v35 = *MEMORY[0x1E69E9840];
      return result;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v14 = __OFSUB__(v12, v13);
    v15 = v12 - v13;
    if (!v14)
    {
      if (v15 == 20)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v11)
  {
    goto LABEL_15;
  }

  if (BYTE6(a2) != 20)
  {
    goto LABEL_17;
  }

  while (1)
  {
LABEL_8:
    v38 = a3;
    if (v11 == 2)
    {
      v37 = v7;
      v21 = *(a1 + 16);
      v22 = sub_1DEF8D018();
      if (!v22)
      {
        sub_1DEF8D038();
LABEL_49:
        __break(1u);
LABEL_50:
        sub_1DEF8D038();
        __break(1u);
        goto LABEL_51;
      }

      v23 = v22;
      v24 = sub_1DEF8D048();
      if (!__OFSUB__(v21, v24))
      {
        v19 = v21 - v24 + v23;
        sub_1DEF8D038();
        v7 = v37;
        if (v19)
        {
LABEL_21:
          (*(v7 + 16))(v10, v19, v6);
          goto LABEL_23;
        }

        goto LABEL_49;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v11 != 1)
    {
      break;
    }

    v37 = v7;
    if (a1 > a1 >> 32)
    {
      goto LABEL_42;
    }

    v16 = sub_1DEF8D018();
    if (!v16)
    {
      goto LABEL_50;
    }

    v17 = v16;
    v18 = sub_1DEF8D048();
    if (__OFSUB__(a1, v18))
    {
      goto LABEL_44;
    }

    v19 = a1 - v18 + v17;
    a3 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1DEF8D038();
    v7 = v37;
    if (v19)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_41;
    }

    if (HIDWORD(a1) - a1 != 20)
    {
      goto LABEL_17;
    }
  }

  v39 = a1;
  v40 = a2;
  v41 = BYTE2(a2);
  v42 = BYTE3(a2);
  v43 = BYTE4(a2);
  v44 = BYTE5(a2);
  (*(v7 + 16))(v10, &v39, v6);
LABEL_23:
  if (qword_1ECDE37F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1ECDF60C0);
  if ((sub_1DEF8D3A8() & 1) == 0 || !v11)
  {
LABEL_37:
    sub_1DEEFC824();
    swift_allocError();
    swift_willThrow();
    sub_1DEE1BFA0(a1, a2);
    result = (*(v7 + 8))(v10, v6);
    goto LABEL_38;
  }

  if (v11 != 2)
  {
    if (a1 <= a1 >> 32)
    {
      v30 = sub_1DEF8D018();
      if (!v30)
      {
        goto LABEL_53;
      }

      v31 = v30;
      v32 = sub_1DEF8D048();
      if (!__OFSUB__(a1, v32))
      {
        v29 = a1 - v32 + v31;
        result = sub_1DEF8D038();
        if (!v29)
        {
          goto LABEL_54;
        }

LABEL_36:
        v33 = *(v29 + 16);
        v34 = v38;
        if (v33 >= 0x48)
        {
          sub_1DEE1BFA0(a1, a2);
          (*(v7 + 32))(v34, v10, v6);
          result = type metadata accessor for NetworkSyncHeaderPreamble(0);
          *(v34 + *(result + 20)) = v33;
          goto LABEL_38;
        }

        goto LABEL_37;
      }

LABEL_47:
      __break(1u);
    }

    goto LABEL_45;
  }

  v25 = *(a1 + 16);
  v26 = sub_1DEF8D018();
  if (!v26)
  {
LABEL_51:
    sub_1DEF8D038();
    goto LABEL_52;
  }

  v27 = v26;
  v28 = sub_1DEF8D048();
  if (__OFSUB__(v25, v28))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v29 = v25 - v28 + v27;
  sub_1DEF8D038();
  if (v29)
  {
    goto LABEL_36;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_1DEF8D038();
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

BOOL sub_1DEEFC5A4(uint64_t a1, uint64_t a2)
{
  if (sub_1DEF8D3A8() & 1) != 0 && (v4 = type metadata accessor for NetworkSyncHeader(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))) && (v5 = v4, v6 = *(v4 + 24), (sub_1DEF8D3A8()) && (v7 = v5[7], (sub_1DEF8D3A8()) && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]) && *(a1 + v5[11]) == *(a2 + v5[11]))
  {
    return *(a1 + v5[12]) == *(a2 + v5[12]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DEEFC68C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEFC6AC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEEFC764(uint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1DEEFC774(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1DEEFC6AC(a1, &a1[a2]);
  }

  v3 = sub_1DEF8D068();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1DEF8D008();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1DEF8D238();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_1DEEFC824()
{
  result = qword_1ECDE4AC0;
  if (!qword_1ECDE4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AC0);
  }

  return result;
}

uint64_t sub_1DEEFC8B0()
{
  result = sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DEEFC94C()
{
  result = sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DEEFC9EC()
{
  result = qword_1ECDE4AE8;
  if (!qword_1ECDE4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AE8);
  }

  return result;
}

unint64_t sub_1DEEFCA44()
{
  result = qword_1ECDE4AF0;
  if (!qword_1ECDE4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4AF0);
  }

  return result;
}

unint64_t sub_1DEEFCA98()
{
  result = qword_1ECDE4B00;
  if (!qword_1ECDE4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B00);
  }

  return result;
}

unint64_t sub_1DEEFCAEC()
{
  result = qword_1ECDE4B08;
  if (!qword_1ECDE4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B08);
  }

  return result;
}

unint64_t sub_1DEEFCB40()
{
  result = qword_1ECDE4B10;
  if (!qword_1ECDE4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B10);
  }

  return result;
}

uint64_t sub_1DEEFCB94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkSyncHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEEFCBF8(uint64_t a1)
{
  v2 = type metadata accessor for NetworkSyncHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DEEFCC54()
{
  result = qword_1ECDE4B20;
  if (!qword_1ECDE4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B20);
  }

  return result;
}

unint64_t sub_1DEEFCCA8()
{
  result = qword_1ECDE4B28;
  if (!qword_1ECDE4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B28);
  }

  return result;
}

unint64_t sub_1DEEFCCFC()
{
  result = qword_1ECDE4B30;
  if (!qword_1ECDE4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkSyncHeader.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkSyncHeader.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DEEFCEA4()
{
  result = qword_1ECDE4B38;
  if (!qword_1ECDE4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B38);
  }

  return result;
}

unint64_t sub_1DEEFCEFC()
{
  result = qword_1ECDE4B40;
  if (!qword_1ECDE4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B40);
  }

  return result;
}

unint64_t sub_1DEEFCF54()
{
  result = qword_1ECDE4B48;
  if (!qword_1ECDE4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B48);
  }

  return result;
}

uint64_t sub_1DEEFCFA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654C726564616568 && a2 == 0xEC0000006874676ELL || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xED0000746E756F43 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xED00007865646E49 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

__n128 HandshakeDescriptor.init(remoteDeviceID:personaID:deviceType:protocolVersion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  result = *a6;
  *(a7 + 40) = *a6;
  return result;
}

uint64_t HandshakeDescriptor.remoteDeviceID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HandshakeDescriptor.remoteDeviceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HandshakeDescriptor.personaID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t HandshakeDescriptor.personaID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

__n128 HandshakeDescriptor.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = result;
  return result;
}

__n128 HandshakeDescriptor.protocolVersion.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 40) = *a1;
  return result;
}

uint64_t HandshakeDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v7 = v0[5];
  v6 = v0[6];
  sub_1DEF8D9B8();
  sub_1DEF8E7C8();
  if (v4)
  {
    sub_1DEF8D9B8();
  }

  MEMORY[0x1E12CBF90](v5);
  MEMORY[0x1E12CBF90](v7);
  return MEMORY[0x1E12CBF90](v6);
}

uint64_t HandshakeDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v7 = v0[5];
  v6 = v0[6];
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8E7C8();
  if (v4)
  {
    sub_1DEF8D9B8();
  }

  MEMORY[0x1E12CBF90](v5);
  MEMORY[0x1E12CBF90](v7);
  MEMORY[0x1E12CBF90](v6);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEFD5A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v7 = v0[5];
  v6 = v0[6];
  sub_1DEF8D9B8();
  sub_1DEF8E7C8();
  if (v4)
  {
    sub_1DEF8D9B8();
  }

  MEMORY[0x1E12CBF90](v5);
  MEMORY[0x1E12CBF90](v7);
  return MEMORY[0x1E12CBF90](v6);
}

uint64_t sub_1DEEFD628()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v7 = v0[5];
  v6 = v0[6];
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8E7C8();
  if (v4)
  {
    sub_1DEF8D9B8();
  }

  MEMORY[0x1E12CBF90](v5);
  MEMORY[0x1E12CBF90](v7);
  MEMORY[0x1E12CBF90](v6);
  return sub_1DEF8E7F8();
}

uint64_t HandshakeSchedulerEvent.handshakeDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(v1 + 40);
}

__n128 HandshakeSchedulerEvent.handshakeDescriptor.setter(__n128 *a1)
{
  v10 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u8[0];
  v5 = a1[2].n128_u64[1];
  v6 = a1[3].n128_u64[0];
  v7 = v1->n128_u64[1];
  v8 = v1[1].n128_u64[1];

  result = v10;
  *v1 = v10;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  v1[2].n128_u8[0] = v4;
  v1[2].n128_u64[1] = v5;
  v1[3].n128_u64[0] = v6;
  return result;
}

void HandshakeSchedulerEvent.schedule.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t HandshakeSchedulerEvent.schedule.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

BOOL _s16ReplicatorEngine19HandshakeDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (!v7)
  {
    return 0;
  }

  if (v2 != v8 || v3 != v7)
  {
    v13 = sub_1DEF8E4E8();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_13:
    if (v4 != v9)
    {
      return result;
    }

    return v5 == v10 && v6 == v11;
  }

  if (v4 != v9)
  {
    return 0;
  }

  return v5 == v10 && v6 == v11;
}

unint64_t sub_1DEEFD910()
{
  result = qword_1ECDE4B50;
  if (!qword_1ECDE4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4B50);
  }

  return result;
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

uint64_t sub_1DEEFD980(uint64_t a1, int a2)
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

uint64_t sub_1DEEFD9C8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DEEFDA48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1DEEFDA90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DEEFDB30(uint64_t a1)
{
  v3 = type metadata accessor for PairingRelationship();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v33 = v1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1DEEC7D60(0, v11, 0);
  v12 = v45;
  v13 = a1 + 64;
  v14 = -1 << *(a1 + 32);
  result = sub_1DEF8DE18();
  v16 = v7;
  v17 = result;
  v18 = 0;
  v39 = (v16 + 16);
  v40 = v16;
  v37 = a1;
  v38 = v16 + 32;
  v34 = a1 + 72;
  v35 = v11;
  v36 = a1 + 64;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 36);
    v43 = v18;
    v44 = v21;
    v22 = v41;
    sub_1DEE28028(*(a1 + 56) + *(v42 + 72) * v17, v41, type metadata accessor for PairingRelationship);
    (*v39)(v10, v22, v6);
    sub_1DEF00468(v22, type metadata accessor for PairingRelationship);
    v45 = v12;
    v23 = v6;
    v25 = *(v12 + 16);
    v24 = *(v12 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1DEEC7D60(v24 > 1, v25 + 1, 1);
      v12 = v45;
    }

    *(v12 + 16) = v25 + 1;
    result = (*(v40 + 32))(v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25, v10, v23);
    v19 = 1 << *(v37 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v13 = v36;
    v26 = *(v36 + 8 * v20);
    if ((v26 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v23;
    a1 = v37;
    if (v44 != *(v37 + 36))
    {
      goto LABEL_24;
    }

    v27 = v26 & (-2 << (v17 & 0x3F));
    if (v27)
    {
      v19 = __clz(__rbit64(v27)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v20 << 6;
      v29 = v20 + 1;
      v30 = (v34 + 8 * v20);
      while (v29 < (v19 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          result = sub_1DEE2F804(v17, v44, 0);
          v19 = __clz(__rbit64(v31)) + v28;
          goto LABEL_4;
        }
      }

      result = sub_1DEE2F804(v17, v44, 0);
    }

LABEL_4:
    v18 = v43 + 1;
    v17 = v19;
    if (v43 + 1 == v35)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1DEEFDEF8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a3;
  v25 = a1;
  v23 = type metadata accessor for PairingRelationship();
  v26 = *(v23 - 8);
  v5 = *(v26 + 64);
  v6 = MEMORY[0x1EEE9AC00](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      sub_1DEE28028(*(a2 + 56) + *(v26 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v10, type metadata accessor for PairingRelationship);
      sub_1DEF00400(v10, v8, type metadata accessor for PairingRelationship);
      v18 = v25(v8);
      if (v3)
      {
        sub_1DEF00468(v8, type metadata accessor for PairingRelationship);
      }

      if (v18)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_1DEF00468(v8, type metadata accessor for PairingRelationship);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v21 = v24;
    sub_1DEF00400(v8, v24, type metadata accessor for PairingRelationship);
    v20 = v21;
    v19 = 0;
    return (*(v26 + 56))(v20, v19, 1, v23);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v19 = 1;
        v20 = v24;
        return (*(v26 + 56))(v20, v19, 1, v23);
      }

      v13 = *(a2 + 64 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEFE184()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
    sub_1DEEFE21C();
    v2 = v0;
    v1 = sub_1DEF8D5B8();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

unint64_t sub_1DEEFE21C()
{
  result = qword_1ECDE2D28;
  if (!qword_1ECDE2D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3A58, &qword_1DEF937F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2D28);
  }

  return result;
}

uint64_t (*sub_1DEEFE280(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1DEEFE184();
  return sub_1DEEF0A20;
}

void sub_1DEEFE2C8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 32);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF004C8(&v4);
  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

uint64_t sub_1DEEFE33C()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEEFF890(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEEFE3B0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for ZoneVersionAdvertisement(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  v16 = *(v2 + 32);
  v23 = v2;
  v24 = a1;
  v20 = sub_1DEEFF8A8;
  v21 = &v22;
  os_unfair_lock_lock(v16 + 4);
  sub_1DEEFF8C8(v17);
  os_unfair_lock_unlock(v16 + 4);
  sub_1DEE17214(v15, v13, &qword_1ECDE3A78, &qword_1DEF90820);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    sub_1DEE171B4(v15, &qword_1ECDE3A78, &qword_1DEF90820);
  }

  else
  {
    sub_1DEF00400(v13, v8, type metadata accessor for ZoneVersionAdvertisement);
    sub_1DEEFE910(v8, 1);
    sub_1DEF00468(v8, type metadata accessor for ZoneVersionAdvertisement);
    v13 = v15;
  }

  return sub_1DEE171B4(v13, &qword_1ECDE3A78, &qword_1DEF90820);
}

uint64_t sub_1DEEFE5EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a1 + 40) = a2;
  if (a2)
  {
    v4 = OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_latestAdvertisement;
    swift_beginAccess();
    return sub_1DEE17214(a1 + v4, a3, &qword_1ECDE3A78, &qword_1DEF90820);
  }

  else
  {
    v7 = type metadata accessor for ZoneVersionAdvertisement(0);
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

uint64_t (*sub_1DEEFE6AC(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + 32);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF004C8(v5);
  os_unfair_lock_unlock(v3 + 4);
  *(a1 + 8) = v5[0];
  return sub_1DEEFE73C;
}

uint64_t HandshakeZoneAdvertiser.__allocating_init(handshakeScheduler:pairingRelationshipReader:remoteDeviceTypes:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  HandshakeZoneAdvertiser.init(handshakeScheduler:pairingRelationshipReader:remoteDeviceTypes:)(a1, a2, a3);
  return v9;
}

uint64_t HandshakeZoneAdvertiser.init(handshakeScheduler:pairingRelationshipReader:remoteDeviceTypes:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(v3 + 24) = sub_1DEF8D598();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v3 + 32) = v11;
  *(v3 + 40) = 0;
  v12 = OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_latestAdvertisement;
  v13 = type metadata accessor for ZoneVersionAdvertisement(0);
  (*(*(v13 - 8) + 56))(v4 + v12, 1, 1, v13);
  *(v4 + OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_knownRelationshipIDs) = MEMORY[0x1E69E7CD0];
  sub_1DEE29594(a1, v4 + 48);
  sub_1DEE29594(a2, v4 + 88);
  v14 = sub_1DEEA3E78(a3);

  v15 = sub_1DEF41C90(&unk_1F5A194E0, v14);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v4 + 128) = v15;
  return v4;
}

uint64_t sub_1DEEFE910(uint64_t a1, char a2)
{
  v3 = v2;
  v70 = type metadata accessor for PairingRelationship();
  v66 = *(v70 - 8);
  v6 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v52 - v12;
  v13 = sub_1DEF8D3F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v73 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v52 - v18;
  v19 = v2[14];
  v20 = v2[15];
  __swift_project_boxed_opaque_existential_1(v2 + 11, v19);
  v21 = (*(v20 + 8))(v19, v20);

  v22 = sub_1DEEFFEE8(v21, v3);

  v68 = v22;
  v23 = sub_1DEEFDB30(v22);
  v24 = sub_1DEEA3B70(v23);

  v25 = *(v3 + 32);
  v76[16] = a2;
  v77 = a1;
  v78 = v3;
  v26 = v13;
  v54 = v3;
  v79 = v24;
  v74 = sub_1DEF00390;
  v75 = v76;
  os_unfair_lock_lock(v25 + 4);
  sub_1DEF003B4(v82);
  v72 = 0;
  os_unfair_lock_unlock(v25 + 4);

  v28 = 0;
  v30 = v82[0] + 56;
  v29 = *(v82[0] + 56);
  v67 = v82[0];
  v31 = 1 << *(v82[0] + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v29;
  v34 = (v31 + 63) >> 6;
  v64 = v14 + 16;
  v63 = v14 + 32;
  v62 = (v66 + 48);
  v66 = v14;
  v61 = (v14 + 8);
  v52 = v26;
  while (v33)
  {
    v35 = v69;
    v36 = v71;
LABEL_13:
    v38 = v66;
    v39 = v65;
    (*(v66 + 16))(v65, *(v67 + 48) + *(v66 + 72) * (__clz(__rbit64(v33)) | (v28 << 6)), v26);
    v40 = v73;
    v41 = (*(v38 + 32))(v73, v39, v26);
    MEMORY[0x1EEE9AC00](v41);
    *(&v52 - 2) = v40;
    v42 = v72;
    sub_1DEEFDEF8(sub_1DEF003D0, v68, v36);
    v72 = v42;
    sub_1DEE17214(v36, v35, &qword_1ECDE3C18, &unk_1DEF94D20);
    if ((*v62)(v35, 1, v70) == 1)
    {
      sub_1DEE171B4(v36, &qword_1ECDE3C18, &unk_1DEF94D20);
      sub_1DEE171B4(v35, &qword_1ECDE3C18, &unk_1DEF94D20);
    }

    else
    {
      v43 = v53;
      sub_1DEF00400(v35, v53, type metadata accessor for PairingRelationship);
      v44 = v43 + *(v70 + 20);
      v45 = *(v44 + 8);
      v58 = *v44;
      v46 = *(v44 + 160);
      v47 = *(v44 + 168);
      v57 = *(v44 + 48);
      v49 = *(v44 + 32);
      v48 = *(v44 + 40);
      v56 = v49;
      v55 = v48;
      v50 = v54[9];
      v51 = v54[10];
      v59 = __swift_project_boxed_opaque_existential_1(v54 + 6, v50);
      v82[0] = v58;
      v82[1] = v45;
      v60 = v45;
      v82[2] = v46;
      v82[3] = v47;
      v83 = v57;
      v84 = v56;
      v85 = v55;
      v80 = 0;
      v81 = 0;
      v58 = *(v51 + 16);

      v58(v82, &v80, v50, v51);
      sub_1DEF00468(v43, type metadata accessor for PairingRelationship);
      sub_1DEE171B4(v71, &qword_1ECDE3C18, &unk_1DEF94D20);
      v26 = v52;
    }

    v33 &= v33 - 1;
    result = (*v61)(v73, v26);
  }

  v35 = v69;
  v36 = v71;
  while (1)
  {
    v37 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
    }

    v33 = *(v30 + 8 * v37);
    ++v28;
    if (v33)
    {
      v28 = v37;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEFEFC8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v50 = a4;
  v51 = a5;
  v8 = type metadata accessor for ZoneVersionAdvertisement(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AD8, &qword_1DEF90998);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v49 = &v44 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v44 - v21;
  v24 = &unk_1ECDE3000;
  if (a1)
  {
    goto LABEL_11;
  }

  v45 = v22;
  v46 = a2;
  sub_1DEE28028(a2, &v44 - v21, type metadata accessor for ZoneVersionAdvertisement);
  (*(v9 + 56))(v23, 0, 1, v8);
  v25 = OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_latestAdvertisement;
  swift_beginAccess();
  v26 = *(v12 + 48);
  sub_1DEE17214(v23, v15, &qword_1ECDE3A78, &qword_1DEF90820);
  v47 = a3;
  sub_1DEE17214(a3 + v25, &v15[v26], &qword_1ECDE3A78, &qword_1DEF90820);
  v27 = *(v9 + 48);
  if (v27(v15, 1, v8) != 1)
  {
    v32 = v49;
    sub_1DEE17214(v15, v49, &qword_1ECDE3A78, &qword_1DEF90820);
    if (v27(&v15[v26], 1, v8) != 1)
    {
      v40 = v48;
      sub_1DEF00400(&v15[v26], v48, type metadata accessor for ZoneVersionAdvertisement);
      if (_s16ReplicatorEngine24ZoneVersionAdvertisementV16DeviceDescriptorV2eeoiySbAE_AEtFZ_0(v32, v40))
      {
        v41 = sub_1DEEDB5A8(*(v32 + *(v8 + 20)), *(v40 + *(v8 + 20)));
        sub_1DEE171B4(v23, &qword_1ECDE3A78, &qword_1DEF90820);
        sub_1DEF00468(v40, type metadata accessor for ZoneVersionAdvertisement);
        sub_1DEF00468(v32, type metadata accessor for ZoneVersionAdvertisement);
        sub_1DEE171B4(v15, &qword_1ECDE3A78, &qword_1DEF90820);
        a2 = v46;
        a3 = v47;
        v22 = v45;
        v24 = &unk_1ECDE3000;
        if (v41)
        {
          goto LABEL_5;
        }

LABEL_11:
        v36 = a2;
        v37 = v22;
        sub_1DEE28028(v36, v22, type metadata accessor for ZoneVersionAdvertisement);
        (*(v9 + 56))(v37, 0, 1, v8);
        v38 = v24[10];
        swift_beginAccess();
        sub_1DEE4DCBC(v37, a3 + v38);
        swift_endAccess();
        *v51 = v50;
      }

      sub_1DEE171B4(v23, &qword_1ECDE3A78, &qword_1DEF90820);
      sub_1DEF00468(v40, type metadata accessor for ZoneVersionAdvertisement);
      sub_1DEF00468(v32, type metadata accessor for ZoneVersionAdvertisement);
      v35 = v15;
      v33 = &qword_1ECDE3A78;
      v34 = &qword_1DEF90820;
LABEL_10:
      sub_1DEE171B4(v35, v33, v34);
      a2 = v46;
      a3 = v47;
      v22 = v45;
      v24 = &unk_1ECDE3000;
      goto LABEL_11;
    }

    sub_1DEE171B4(v23, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEF00468(v32, type metadata accessor for ZoneVersionAdvertisement);
LABEL_9:
    v33 = &qword_1ECDE3AD8;
    v34 = &qword_1DEF90998;
    v35 = v15;
    goto LABEL_10;
  }

  sub_1DEE171B4(v23, &qword_1ECDE3A78, &qword_1DEF90820);
  if (v27(&v15[v26], 1, v8) != 1)
  {
    goto LABEL_9;
  }

  sub_1DEE171B4(v15, &qword_1ECDE3A78, &qword_1DEF90820);
  a3 = v47;
LABEL_5:
  v28 = OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_knownRelationshipIDs;
  v29 = v50;
  if (*(*(a3 + OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_knownRelationshipIDs) + 16) <= *(v50 + 16) >> 3)
  {
    v52 = v50;

    sub_1DEEC8B48(v42);

    v31 = v52;
  }

  else
  {

    v31 = sub_1DEEC8FB4(v30, v29);
  }

  v43 = *(a3 + v28);
  *(a3 + v28) = v29;

  *v51 = v31;
  return result;
}

void *HandshakeZoneAdvertiser.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  v4 = v0[16];

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_latestAdvertisement, &qword_1ECDE3A78, &qword_1DEF90820);
  v5 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine23HandshakeZoneAdvertiser_lock_knownRelationshipIDs);

  return v0;
}

uint64_t HandshakeZoneAdvertiser.__deallocating_deinit()
{
  HandshakeZoneAdvertiser.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEEFF664()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF004C8(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t (*sub_1DEEFF6F4(uint64_t a1))(uint64_t *a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = *(v3 + 32);
  os_unfair_lock_lock(v4 + 4);
  sub_1DEF004C8(v6);
  os_unfair_lock_unlock(v4 + 4);
  *(a1 + 8) = v6[0];
  return sub_1DEEFE73C;
}

unint64_t *sub_1DEEFF7B0(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1DEEFF8E4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1DEEFF84C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DEEFF8E4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v68 = a4;
  v55[0] = a2;
  v56 = a1;
  v5 = type metadata accessor for DeviceDescriptor();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v8 = *(*(v66 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v66);
  v74 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = v55 - v11;
  v12 = type metadata accessor for PairingRelationship();
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1DEF8D3F8();
  v16 = *(*(v72 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v72);
  v71 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = 0;
  v20 = 0;
  v69 = a3;
  v23 = a3[8];
  v22 = a3 + 8;
  v21 = v23;
  v24 = 1 << *(v22 - 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v61 = v18 + 16;
  v62 = v18;
  v59 = (v18 + 8);
  v60 = v27;
  v63 = v15;
  v28 = v71;
  while (v26)
  {
    v31 = __clz(__rbit64(v26));
    v70 = (v26 - 1) & v26;
LABEL_13:
    v34 = v31 | (v20 << 6);
    v35 = v69;
    v36 = *(v62 + 16);
    v37 = v72;
    v36(v28, v69[6] + *(v62 + 72) * v34, v72);
    v38 = v35[7];
    v39 = *(v64 + 72);
    v58 = v34;
    sub_1DEE28028(v38 + v39 * v34, v15, type metadata accessor for PairingRelationship);
    v40 = v73;
    v36(v73, v28, v37);
    v41 = v66;
    sub_1DEE28028(v15, v40 + *(v66 + 48), type metadata accessor for PairingRelationship);
    v42 = *(v68 + 128);
    v43 = v74;
    sub_1DEE17214(v40, v74, &unk_1ECDE4350, &qword_1DEF93400);
    v44 = v43 + *(v41 + 48);
    v45 = v67;
    sub_1DEE28028(v44 + *(v65 + 20), v67, type metadata accessor for DeviceDescriptor);
    sub_1DEF00468(v44, type metadata accessor for PairingRelationship);
    v46 = *(v45 + 48);
    sub_1DEF00468(v45, type metadata accessor for DeviceDescriptor);
    if (*(v42 + 16) && (v47 = *(v42 + 40), sub_1DEF8E7A8(), MEMORY[0x1E12CBF90](v46), v48 = sub_1DEF8E7F8(), v49 = -1 << *(v42 + 32), v50 = v48 & ~v49, ((*(v42 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0))
    {
      v51 = ~v49;
      while (*(*(v42 + 48) + v50) != v46)
      {
        v50 = (v50 + 1) & v51;
        if (((*(v42 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      sub_1DEE171B4(v73, &unk_1ECDE4350, &qword_1DEF93400);
      v52 = *v59;
      v53 = v72;
      (*v59)(v74, v72);
      v15 = v63;
      sub_1DEF00468(v63, type metadata accessor for PairingRelationship);
      result = (v52)(v71, v53);
      *(v56 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
      v54 = __OFADD__(v57++, 1);
      v27 = v60;
      v26 = v70;
      if (v54)
      {
        __break(1u);
        return sub_1DEEC6068(v56, v55[0], v57, v69);
      }
    }

    else
    {
LABEL_5:
      sub_1DEE171B4(v73, &unk_1ECDE4350, &qword_1DEF93400);
      v29 = *v59;
      v30 = v72;
      (*v59)(v74, v72);
      v15 = v63;
      sub_1DEF00468(v63, type metadata accessor for PairingRelationship);
      result = (v29)(v71, v30);
      v27 = v60;
      v26 = v70;
    }
  }

  v32 = v20;
  while (1)
  {
    v20 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v20 >= v27)
    {
      return sub_1DEEC6068(v56, v55[0], v57, v69);
    }

    v33 = v22[v20];
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v70 = (v33 - 1) & v33;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEFFEE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_1DEEFF7B0(v14, v8, a1, a2);
      MEMORY[0x1E12CCD70](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_1DEEFF8E4((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t type metadata accessor for HandshakeZoneAdvertiser()
{
  result = qword_1ECDE3038;
  if (!qword_1ECDE3038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEF000FC()
{
  sub_1DEE44624();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void *sub_1DEF0034C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1DEF00400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEF00468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DEF00538(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v30 = a5;
  v41 = a4(0);
  v9 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v40 = &v30 - v14;
  v37 = *(a3 + 16);
  if (v37)
  {
    v15 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = MEMORY[0x1E69E7CC0];
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v17 = *(v12 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v12;
      v21 = a1;
      v22 = v40;
      (*(v12 + 16))(v40, v19, v41, v13);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v5)
      {
        (*v34)(v40, v41);

        return;
      }

      if (v24)
      {
        v25 = *v35;
        (*v35)(v38, v40, v41);
        v26 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30(0, *(v26 + 16) + 1, 1);
          v26 = v42;
        }

        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          v30(v28 > 1, v29 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v29 + 1;
        v39 = v26;
        v25((v26 + v16 + v29 * v17), v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        (*v34)(v40, v41);
        a3 = v18;
      }

      ++v15;
      v12 = v20;
      if (v37 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
LABEL_14:
  }
}

uint64_t sub_1DEF00820()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[2];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DEF01994;
  *(v5 + 24) = v4;
  v8[4] = sub_1DEE46D40;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DEE134F4;
  v8[3] = &block_descriptor_27;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF0099C(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v69 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v69 - v10;
  v12 = sub_1DEF8D378();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v82 = &v69 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v69 - v24;
  v71 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v69 - v28;
  sub_1DEF8D348();
  v30 = OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_currentAssertionCreationDate;
  swift_beginAccess();
  v80 = v11;
  sub_1DEECF850(a1 + v30, v11);
  v31 = *(v13 + 16);
  v31(v8, v29, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_1DEECF904(v8, a1 + v30);
  swift_endAccess();
  v79 = v25;
  v81 = v29;
  v72 = v31;
  v73 = v13 + 16;
  v31(v25, v29, v12);
  v32 = *(a1 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 96) = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_1DEF381DC(0, v32[2] + 1, 1, v32);
    *(a1 + 96) = v32;
  }

  v35 = v32[2];
  v34 = v32[3];
  v36 = v12;
  if (v35 >= v34 >> 1)
  {
    v32 = sub_1DEF381DC(v34 > 1, v35 + 1, 1, v32);
  }

  v32[2] = v35 + 1;
  v37 = *(v13 + 80);
  v38 = v32 + ((v37 + 32) & ~v37) + *(v13 + 72) * v35;
  v77 = *(v13 + 32);
  v77(v38, v79, v12);
  *(a1 + 96) = v32;
  sub_1DEF8D348();
  v39 = -*(a1 + 80);
  v40 = v82;
  sub_1DEF8D2E8();
  v78 = *(v13 + 8);
  v79 = (v13 + 8);
  v41 = v78(v20, v12);
  v42 = *(a1 + 96);
  MEMORY[0x1EEE9AC00](v41);
  *(&v69 - 2) = v40;

  sub_1DEF00538(sub_1DEF0199C, (&v69 - 4), v42, MEMORY[0x1E6969530], sub_1DEEC7EA8);
  v44 = *(v43 + 16);
  if (*(a1 + 72) < v44)
  {

    v83 = v44;
    v45 = sub_1DEF8E2E8();
    sub_1DEF66074(0x7373416863746157, 0xEE006E6F69747265, 0x7669737365637845, 0xEE00746E756F4365, 0x7669737365637845, 0xEE00746E756F4365, v45, v46);

    v43 = MEMORY[0x1E69E7CC0];
  }

  v47 = *(a1 + 96);
  *(a1 + 96) = v43;

  v48 = OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_assertionTimer;
  if (*(a1 + OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_assertionTimer))
  {
    v49 = v80;
    v50 = v76;
    sub_1DEECF850(v80, v76);
    if ((*(v13 + 48))(v50, 1, v12) == 1)
    {
      sub_1DEF0192C(v50);
      sub_1DEF66074(0x7373416863746157, 0xEE006E6F69747265, 0x6465706D6F7453, 0xE700000000000000, 0x6465706D6F7453, 0xE700000000000000, 1701736270, 0xE400000000000000);
      sub_1DEF0192C(v49);
      v51 = v78;
      v78(v81, v12);
    }

    else
    {
      v65 = v70;
      v77(v70, v50, v12);
      sub_1DEF01A5C();
      v66 = sub_1DEF8E2E8();
      sub_1DEF66074(0x7373416863746157, 0xEE006E6F69747265, 0x6465706D6F7453, 0xE700000000000000, 0x6465706D6F7453, 0xE700000000000000, v66, v67);

      v51 = v78;
      v78(v65, v12);
      sub_1DEF0192C(v49);
      v51(v81, v12);
    }
  }

  else
  {
    type metadata accessor for BasicTimer();
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    *(v52 + 24) = v53;
    *(a1 + v48) = v52;
    v54 = *(a1 + 88);
    v76 = 0;
    v55 = *(a1 + 16);
    v56 = v74;
    v72(v74, v81, v12);
    v57 = (v37 + 24) & ~v37;
    v58 = (v71 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    *(v59 + 16) = a1;
    v60 = (v77)(v59 + v57, v56, v36);
    *(v59 + v58) = v75;
    v61 = *(v52 + 24);
    MEMORY[0x1EEE9AC00](v60);
    *(&v69 - 6) = v52;
    *(&v69 - 5) = v54;
    *(&v69 - 4) = v55;
    *(&v69 - 3) = sub_1DEF019CC;
    *(&v69 - 2) = v59;
    MEMORY[0x1EEE9AC00](v62);
    *(&v69 - 2) = sub_1DEE1B740;
    *(&v69 - 1) = v63;

    os_unfair_lock_lock(v61 + 4);
    sub_1DEE3DEF0(v64);
    os_unfair_lock_unlock(v61 + 4);

    sub_1DEF0192C(v80);
    v51 = v78;
    v78(v81, v36);
  }

  return (v51)(v82, v36);
}

uint64_t sub_1DEF011B4()
{
  sub_1DEF8D378();
  sub_1DEF01A5C();
  v0 = sub_1DEF8E2E8();
  sub_1DEF66074(0x7373416863746157, 0xEE006E6F69747265, 0x74756F656D6954, 0xE700000000000000, 0x74756F656D6954, 0xE700000000000000, v0, v1);
}

uint64_t sub_1DEF01250()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[2];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DEF01924;
  *(v5 + 24) = v4;
  v8[4] = sub_1DEE13B20;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DEE134F4;
  v8[3] = &block_descriptor_12;
  v6 = _Block_copy(v8);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF013CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  v9 = sub_1DEF8D378();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v28 - v15;
  v17 = OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_currentAssertionCreationDate;
  swift_beginAccess();
  sub_1DEECF850(a1 + v17, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1DEF0192C(v8);
  }

  (*(v10 + 32))(v16, v8, v9);
  sub_1DEF8D348();
  sub_1DEF8D2D8();
  if (*(a1 + 64) < v19)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1DEF8DBB8();
    sub_1DEF66074(0x7373416863746157, 0xEE006E6F69747265, 0x646C65687265764FLL, 0xE800000000000000, 0x646C65687265764FLL, 0xE800000000000000, v29, v30);
  }

  (*(v10 + 56))(v5, 1, 1, v9);
  swift_beginAccess();
  sub_1DEECF904(v5, a1 + v17);
  v20 = swift_endAccess();
  v21 = OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_assertionTimer;
  v22 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_assertionTimer);
  if (v22)
  {
    v28[0] = v28;
    v23 = *(v22 + 24);
    MEMORY[0x1EEE9AC00](v20);
    v28[-2] = sub_1DEE15450;
    v28[-1] = v22;

    os_unfair_lock_lock(v23 + 4);
    sub_1DEE15434(v24);
    os_unfair_lock_unlock(v23 + 4);

    v25 = *(v10 + 8);
    v25(v13, v9);
    v25(v16, v9);
  }

  else
  {
    v26 = *(v10 + 8);
    v26(v13, v9);
    v26(v16, v9);
  }

  v27 = *(a1 + v21);
  *(a1 + v21) = 0;
}

uint64_t sub_1DEF0176C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 96);

  sub_1DEF0192C(v0 + OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_currentAssertionCreationDate);
  v2 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine21WatchAssertionMonitor_queue_assertionTimer);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WatchAssertionMonitor()
{
  result = qword_1ECDE4B58;
  if (!qword_1ECDE4B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEF0184C()
{
  sub_1DEECFC40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DEF0192C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF019CC()
{
  v1 = *(sub_1DEF8D378() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DEF011B4();
}

unint64_t sub_1DEF01A5C()
{
  result = qword_1ECDE3A30;
  if (!qword_1ECDE3A30)
  {
    sub_1DEF8D378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3A30);
  }

  return result;
}

uint64_t sub_1DEF01AD4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_1DEF8DE98();

    return v2 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    v4 = *(a2 + 40);
    sub_1DEF8E7A8();
    v7 = a1[2];
    v8 = a1[3];
    sub_1DEF8D9B8();
    v9 = a1[4];
    v10 = a1[5];
    sub_1DEF8D9B8();
    v11 = sub_1DEF8E7F8();
    v12 = a2;
    v13 = a2 + 56;
    v14 = -1 << *(a2 + 32);
    v15 = v11 & ~v14;
    if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      v17 = *(v12 + 48);
      while (1)
      {
        v18 = *(v17 + 8 * v15);
        v19 = v7 == v18[2] && v8 == v18[3];
        if (v19 || (sub_1DEF8E4E8() & 1) != 0)
        {
          v20 = v9 == v18[4] && v10 == v18[5];
          if (v20 || (sub_1DEF8E4E8() & 1) != 0)
          {
            break;
          }
        }

        v15 = (v15 + 1) & v16;
        if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DEF01C4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1DEE1E37C(&qword_1ECDE3638), v9 = sub_1DEF8D8B8(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1DEE1E37C(&qword_1ECDE40E0);
      v17 = sub_1DEF8D908();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1DEF01E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v7 = sub_1DEF8E7F8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DEF8E4E8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DEF01F34(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - v6;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for Record.ID.Ownership(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  if ((a2 & 0xC000000000000001) != 0)
  {

    v22 = sub_1DEF8DE98();

    return v22 & 1;
  }

  v71 = v7;
  if (*(a2 + 16))
  {
    v59 = v12;
    v69 = v4;
    v24 = *(a2 + 40);
    sub_1DEF8E7A8();
    v25 = a1[2];
    v61 = a1[3];
    sub_1DEF8D9B8();
    v26 = a1;
    v27 = a1[4];
    v28 = v27[2];
    v29 = v27[3];
    sub_1DEF8D9B8();
    v30 = v27[4];
    v31 = v27[5];

    sub_1DEF8D9B8();

    v70 = v26;
    v68 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    sub_1DEF03DDC(v26 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v21);
    v66 = *(v9 + 48);
    v67 = v9 + 48;
    v32 = v66(v21, 1, v8);
    v65 = v8;
    if (v32 == 1)
    {
      v33 = v9;
      MEMORY[0x1E12CBF60](0);
    }

    else
    {
      (*(v9 + 32))(v15, v21, v8);
      MEMORY[0x1E12CBF60](1);
      sub_1DEE1E37C(&qword_1ECDE3638);
      sub_1DEF8D8C8();
      v33 = v9;
      (*(v9 + 8))(v15, v8);
    }

    v34 = sub_1DEF8E7F8();
    v35 = a2 + 56;
    v36 = -1 << *(a2 + 32);
    v37 = v34 & ~v36;
    v38 = v61;
    if ((*(a2 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
    {
      v39 = ~v36;
      v58 = (v33 + 32);
      v62 = (v33 + 8);
      v63 = ~v36;
      v64 = a2;
      do
      {
        v41 = *(*(a2 + 48) + 8 * v37);
        v42 = v41[2] == v25 && v41[3] == v38;
        if (!v42 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_12;
        }

        v43 = v41[4];
        v44 = v27[2] == v43[2] && v27[3] == v43[3];
        if (!v44 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_12;
        }

        v45 = v27[4] == v43[4] && v27[5] == v43[5];
        if (!v45 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_12;
        }

        v46 = v35;
        v47 = *(v69 + 48);
        v48 = v71;
        sub_1DEF03DDC(v41 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v71);
        sub_1DEF03DDC(v70 + v68, v48 + v47);
        v49 = v65;
        v50 = v66;
        if (v66(v48, 1, v65) == 1)
        {
          v40 = v50(v48 + v47, 1, v49);
          v35 = v46;
          if (v40 == 1)
          {
            goto LABEL_35;
          }
        }

        else
        {
          sub_1DEF03DDC(v48, v72);
          if (v50(v48 + v47, 1, v49) != 1)
          {
            v51 = v25;
            v52 = v72;
            v53 = v59;
            (*v58)(v59, v48 + v47, v49);
            v60 = sub_1DEF8D3A8();
            v54 = *v62;
            v55 = v53;
            v56 = v52;
            v25 = v51;
            v38 = v61;
            (*v62)(v55, v49);
            v54(v56, v49);
            if (v60)
            {
LABEL_35:
              sub_1DEF03EA8(v48);
              return 1;
            }

            v35 = v46;
            sub_1DEF03EA8(v48);
            goto LABEL_11;
          }

          (*v62)(v72, v49);
          v35 = v46;
        }

        sub_1DEF03E40(v48);
LABEL_11:
        v39 = v63;
        a2 = v64;
LABEL_12:
        v37 = (v37 + 1) & v39;
      }

      while (((*(v35 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0);
    }
  }

  return 0;
}

BOOL sub_1DEF024D4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v3);
  v5 = sub_1DEF8E7F8();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1DEF025A0(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_1DEF8E7A8();
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v36 = *a1;
  sub_1DEF8D9B8();
  v31 = v6;
  v35 = v7;
  sub_1DEF8E7C8();
  if (v7)
  {
    sub_1DEF8D9B8();
  }

  v9 = a1[5];
  v10 = a1[6];
  v34 = *(a1 + 32);
  MEMORY[0x1E12CBF90]();
  v33 = v9;
  MEMORY[0x1E12CBF90](v9);
  v32 = v10;
  MEMORY[0x1E12CBF90](v10);
  v11 = sub_1DEF8E7F8();
  v12 = a2 + 56;
  v13 = -1 << *(a2 + 32);
  v14 = v11 & ~v13;
  if (((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  v16 = *(a2 + 48);
  v18 = v35;
  v17 = v36;
  while (1)
  {
    v21 = v16 + 56 * v14;
    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    v24 = *(v21 + 32);
    v25 = *(v21 + 40);
    v26 = *(v21 + 48);
    if (*v21 != v17 || *(v21 + 8) != v5)
    {
      v28 = sub_1DEF8E4E8();
      v18 = v35;
      v17 = v36;
      if ((v28 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (v22)
    {
      break;
    }

    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_15:
    v14 = (v14 + 1) & v15;
    if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  if (!v18)
  {
    goto LABEL_15;
  }

  if (v23 != v31 || v22 != v18)
  {
    v30 = sub_1DEF8E4E8();
    v18 = v35;
    v17 = v36;
    if ((v30 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_8:
  if (v24 != v34 || v25 != v33 || v26 != v32)
  {
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_1DEF02784(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_1DEF027E4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1DEF0281C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1DEF028B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {
    v8 = *(v3 + 16);

    v9 = sub_1DEEAF350(a1);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);

      if (*(v11 + 16))
      {
        v12 = sub_1DEEAF20C(a2);
        if (v13)
        {
          v14 = v12;
          v15 = *(v11 + 56);
          v16 = sub_1DEF8D3F8();
          v17 = *(v16 - 8);
          (*(v17 + 16))(a3, v15 + *(v17 + 72) * v14, v16);

          return (*(v17 + 56))(a3, 0, 1, v16);
        }
      }
    }
  }

  v19 = sub_1DEF8D3F8();
  return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
}

uint64_t sub_1DEF02A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(v3 + 16);
  v14 = *(v13 + 16);

  if (v14 && (v15 = sub_1DEEAF350(a1), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
  }

  else
  {
    v17 = sub_1DEEA2FC0(MEMORY[0x1E69E7CC0]);
  }

  (*(v9 + 16))(v12, a3, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v17;
  sub_1DEF3E144(v12, a2, isUniquelyReferenced_nonNull_native);
  v19 = v25;
  swift_beginAccess();
  v20 = *(v4 + 16);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_1DEF3E118(v19, a1, v21);
  *(v4 + 16) = v24;
  return swift_endAccess();
}

uint64_t sub_1DEF02C18(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  swift_beginAccess();
  sub_1DEF3283C(0, v6);
  return swift_endAccess();
}

uint64_t sub_1DEF02D04(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B68, &qword_1DEF94E00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v105 - v7);
  v9 = sub_1DEF8D3F8();
  v128 = *(v9 - 8);
  v10 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v132 = &v105 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v105 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v105 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B70, &qword_1DEF94E08);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v109 = &v105 - v23;
  if (a1 >> 62)
  {
    goto LABEL_83;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DEF8DE68())
  {
    v25 = MEMORY[0x1E69E7CC0];
    v110 = v21;
    if (i)
    {
      v134 = MEMORY[0x1E69E7CC0];
      sub_1DEF8DFD8();
      if (i < 0)
      {
        __break(1u);
        goto LABEL_85;
      }

      v26 = v9;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v27 = 0;
        do
        {
          v28 = v27 + 1;
          v29 = *(MEMORY[0x1E12CB6E0]() + 32);

          swift_unknownObjectRelease();
          sub_1DEF8DFB8();
          v30 = *(v134 + 16);
          sub_1DEF8DFE8();
          sub_1DEF8DFF8();
          sub_1DEF8DFC8();
          v27 = v28;
        }

        while (i != v28);
      }

      else
      {
        v31 = (a1 + 32);
        do
        {
          v32 = *v31++;
          v33 = *(v32 + 32);

          sub_1DEF8DFB8();
          v34 = *(v134 + 16);
          sub_1DEF8DFE8();
          sub_1DEF8DFF8();
          sub_1DEF8DFC8();
          --i;
        }

        while (i);
      }

      v25 = v134;
      v9 = v26;
    }

    v35 = sub_1DEEA3D0C(v25);

    v113 = sub_1DEEA2DBC(MEMORY[0x1E69E7CC0]);
    v36 = v105;
    swift_beginAccess();
    v37 = *(v36 + 16);
    v38 = *(v37 + 64);
    v107 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    a1 = v40 & v38;
    v106 = (v39 + 63) >> 6;
    v127 = (v128 + 16);
    v131 = (v128 + 32);
    v123 = v35 & 0xC000000000000001;
    v41 = v35 & 0xFFFFFFFFFFFFFF8;
    if (v35 < 0)
    {
      v41 = v35;
    }

    v118 = v41;
    v129 = v35;
    v133 = v35 + 56;
    v126 = (v128 + 8);
    v115 = v128 + 40;
    v108 = v37;

    v42 = 0;
    v121 = v5;
    v122 = v8;
    v124 = v9;
LABEL_19:
    if (a1)
    {
      break;
    }

    if (v106 <= v42 + 1)
    {
      v46 = v42 + 1;
    }

    else
    {
      v46 = v106;
    }

    while (1)
    {
      v21 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v21 >= v106)
      {
        v111 = v46 - 1;
        v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B78, &qword_1DEF94E10);
        v55 = v110;
        (*(*(v102 - 8) + 56))(v110, 1, 1, v102);
        v112 = 0;
        goto LABEL_28;
      }

      a1 = *(v107 + 8 * v21);
      ++v42;
      if (a1)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v21 = v42;
LABEL_27:
  v112 = (a1 - 1) & a1;
  v47 = __clz(__rbit64(a1)) | (v21 << 6);
  v48 = v108;
  v49 = v128;
  v50 = v119;
  (*(v128 + 16))(v119, *(v108 + 48) + *(v128 + 72) * v47, v9);
  v51 = *(*(v48 + 56) + 8 * v47);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B78, &qword_1DEF94E10);
  v53 = *(v52 + 48);
  v54 = *(v49 + 32);
  v55 = v110;
  v54(v110, v50, v9);
  *(v55 + v53) = v51;
  (*(*(v52 - 8) + 56))(v55, 0, 1, v52);

  v111 = v21;
LABEL_28:
  v56 = v109;
  sub_1DEE1BA88(v55, v109, &qword_1ECDE4B70, &qword_1DEF94E08);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B78, &qword_1DEF94E10);
  if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
  {
LABEL_79:

    v103 = *(v105 + 16);
    *(v105 + 16) = v113;
  }

  v58 = *(v56 + *(v57 + 48));
  v130 = *v131;
  v130(v114, v56, v9);
  v117 = sub_1DEEA2FC0(MEMORY[0x1E69E7CC0]);
  v59 = 0;
  v61 = v58 + 64;
  v60 = *(v58 + 64);
  v120 = v58;
  v62 = 1 << *(v58 + 32);
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  else
  {
    v63 = -1;
  }

  v64 = v63 & v60;
  v21 = (v62 + 63) >> 6;
  for (j = v58 + 64; ; v61 = j)
  {
    if (!v64)
    {
LABEL_37:
      if (v21 <= v59 + 1)
      {
        v67 = v59 + 1;
      }

      else
      {
        v67 = v21;
      }

      v68 = v67 - 1;
      while (1)
      {
        v66 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v66 >= v21)
        {
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B80, &qword_1DEF94E18);
          (*(*(v88 - 8) + 56))(v5, 1, 1, v88);
          v64 = 0;
          v59 = v68;
          goto LABEL_46;
        }

        v64 = *(v61 + 8 * v66);
        ++v59;
        if (v64)
        {
          v59 = v66;
          goto LABEL_45;
        }
      }

      __break(1u);
      goto LABEL_79;
    }

    while (1)
    {
      v66 = v59;
LABEL_45:
      v69 = __clz(__rbit64(v64));
      v64 &= v64 - 1;
      v70 = v69 | (v66 << 6);
      v71 = *(*(v120 + 48) + 8 * v70);
      v72 = v119;
      (*(v128 + 16))(v119, *(v120 + 56) + *(v128 + 72) * v70, v9);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B80, &qword_1DEF94E18);
      v74 = *(v73 + 48);
      *v5 = v71;
      v130(v5 + v74, v72, v9);
      (*(*(v73 - 8) + 56))(v5, 0, 1, v73);

LABEL_46:
      sub_1DEE1BA88(v5, v8, &qword_1ECDE4B68, &qword_1DEF94E00);
      a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B80, &qword_1DEF94E18);
      if ((*(*(a1 - 8) + 48))(v8, 1, a1) == 1)
      {

        v43 = v113;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v134 = v43;
        v45 = v114;
        sub_1DEF3E118(v117, v114, isUniquelyReferenced_nonNull_native);
        v113 = v134;
        (*v126)(v45, v9);
        v42 = v111;
        a1 = v112;
        goto LABEL_19;
      }

      v75 = *v8;
      v130(v132, v8 + *(a1 + 48), v9);
      if (!v123)
      {
        break;
      }

      a1 = sub_1DEF8DE98();

      if ((a1 & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_49:

      v9 = v124;
      (*v126)(v132, v124);
      v5 = v121;
      v8 = v122;
      v61 = j;
      if (!v64)
      {
        goto LABEL_37;
      }
    }

    if (v129[2])
    {
      a1 = v129;
      v76 = v129[5];
      sub_1DEF8E7A8();
      v77 = v75[2];
      v78 = v75[3];
      sub_1DEF8D9B8();
      v79 = v75[4];
      v80 = v75[5];
      sub_1DEF8D9B8();
      v81 = sub_1DEF8E7F8();
      v82 = -1 << *(a1 + 32);
      v83 = v81 & ~v82;
      if ((*(v133 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
      {
        v5 = ~v82;
        v8 = v129[6];
        v84 = v75[2];
        a1 = v75[3];
        do
        {
          v85 = v8[v83];
          v86 = v84 == v85[2] && a1 == v85[3];
          if (v86 || (sub_1DEF8E4E8() & 1) != 0)
          {
            v87 = v75[4] == v85[4] && v75[5] == v85[5];
            if (v87 || (sub_1DEF8E4E8() & 1) != 0)
            {
              goto LABEL_49;
            }
          }

          v83 = (v83 + 1) & v5;
        }

        while (((*(v133 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) != 0);
      }
    }

LABEL_67:
    v9 = v124;
    (*v127)(v116, v132, v124);
    v89 = v117;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v134 = v89;
    v91 = sub_1DEEAF20C(v75);
    v93 = *(v89 + 16);
    v94 = (v92 & 1) == 0;
    v95 = __OFADD__(v93, v94);
    v96 = v93 + v94;
    if (v95)
    {
      goto LABEL_81;
    }

    v97 = v92;
    if (*(v89 + 24) < v96)
    {
      break;
    }

    if ((v90 & 1) == 0)
    {
      v101 = v91;
      sub_1DEEB7AF0();
      v91 = v101;
    }

    v8 = v122;
LABEL_74:
    v5 = v134;
    v117 = v134;
    if (v97)
    {
      v65 = v128;
      (*(v128 + 40))(*(v134 + 56) + *(v128 + 72) * v91, v116, v9);

      (*(v65 + 8))(v132, v9);
    }

    else
    {
      *(v134 + 8 * (v91 >> 6) + 64) |= 1 << v91;
      *(*(v5 + 48) + 8 * v91) = v75;
      a1 = v128;
      v130(*(v5 + 56) + *(v128 + 72) * v91, v116, v9);
      (*(a1 + 8))(v132, v9);
      v99 = *(v5 + 16);
      v95 = __OFADD__(v99, 1);
      v100 = v99 + 1;
      if (v95)
      {
        goto LABEL_82;
      }

      *(v5 + 16) = v100;
    }

    v5 = v121;
  }

  sub_1DEEB188C(v96, v90);
  v91 = sub_1DEEAF20C(v75);
  if ((v97 & 1) == (v98 & 1))
  {
    v8 = v122;
    goto LABEL_74;
  }

LABEL_85:
  type metadata accessor for Zone.ID();
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEF039F4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t ZoneVersionInMemoryStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ZoneVersionInMemoryStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF03A90()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_1DEF03B1C(uint64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  (*(v9 + 16))(v7, a1, v5);
  swift_beginAccess();
  sub_1DEF3283C(0, v7);
  return swift_endAccess();
}

uint64_t sub_1DEF03C30()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t sub_1DEF03DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Record.ID.Ownership(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF03E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF03EA8(uint64_t a1)
{
  v2 = type metadata accessor for Record.ID.Ownership(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ZoneVersion.description.getter()
{
  v1 = v0;
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ZoneVersion();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEE26C0C(v1, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return 0x7974706D65;
  }

  (*(v3 + 32))(v6, v10, v2);
  sub_1DEE1E37C(&unk_1ECDE3620);
  v12 = sub_1DEF8E2E8();
  (*(v3 + 8))(v6, v2);
  return v12;
}

uint64_t sub_1DEF040B4(uint64_t a1)
{
  v2 = sub_1DEE25C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF040F0(uint64_t a1)
{
  v2 = sub_1DEE25C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF0412C(uint64_t a1)
{
  v2 = sub_1DEE25E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF04168(uint64_t a1)
{
  v2 = sub_1DEE25E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF041A4(uint64_t a1)
{
  v2 = sub_1DEF048FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF041E0(uint64_t a1)
{
  v2 = sub_1DEF048FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ZoneVersion.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B88, &qword_1DEF94E70);
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v26 - v4;
  v5 = sub_1DEF8D3F8();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B90, &qword_1DEF94E78);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for ZoneVersion();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4B98, &qword_1DEF94E80);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE25C44();
  v22 = v32;
  sub_1DEF8E858();
  sub_1DEE26C0C(v33, v15);
  if ((*(v22 + 48))(v15, 1, v5) == 1)
  {
    v35 = 0;
    sub_1DEE25E48();
    sub_1DEF8E248();
    (*(v27 + 8))(v11, v28);
  }

  else
  {
    (*(v22 + 32))(v34, v15, v5);
    v36 = 1;
    sub_1DEF048FC();
    v24 = v29;
    sub_1DEF8E248();
    sub_1DEE1E37C(&qword_1ECDE3640);
    v25 = v31;
    sub_1DEF8E298();
    (*(v30 + 8))(v24, v25);
    (*(v22 + 8))(v34, v5);
  }

  return (*(v17 + 8))(v20, v16);
}

uint64_t _s16ReplicatorEngine11ZoneVersionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ZoneVersion();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4708, &qword_1DEF95DC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_1DEE26C0C(a1, &v23 - v15);
  sub_1DEE26C0C(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1DEE26C0C(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      v20 = sub_1DEF8D3A8();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1DEF04CD0(v16);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1DEF04C68(v16);
    v20 = 0;
    return v20 & 1;
  }

  sub_1DEF04CD0(v16);
  v20 = 1;
  return v20 & 1;
}

unint64_t sub_1DEF048FC()
{
  result = qword_1ECDE3510;
  if (!qword_1ECDE3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3510);
  }

  return result;
}

unint64_t sub_1DEF049AC()
{
  result = qword_1ECDE4BB8;
  if (!qword_1ECDE4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4BB8);
  }

  return result;
}

unint64_t sub_1DEF04A04()
{
  result = qword_1ECDE4BC0;
  if (!qword_1ECDE4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4BC0);
  }

  return result;
}

unint64_t sub_1DEF04A5C()
{
  result = qword_1ECDE34E8;
  if (!qword_1ECDE34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE34E8);
  }

  return result;
}

unint64_t sub_1DEF04AB4()
{
  result = qword_1ECDE34F0;
  if (!qword_1ECDE34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE34F0);
  }

  return result;
}

unint64_t sub_1DEF04B0C()
{
  result = qword_1ECDE3500;
  if (!qword_1ECDE3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3500);
  }

  return result;
}

unint64_t sub_1DEF04B64()
{
  result = qword_1ECDE3508;
  if (!qword_1ECDE3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3508);
  }

  return result;
}

unint64_t sub_1DEF04BBC()
{
  result = qword_1ECDE3518;
  if (!qword_1ECDE3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3518);
  }

  return result;
}

unint64_t sub_1DEF04C14()
{
  result = qword_1ECDE3520;
  if (!qword_1ECDE3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3520);
  }

  return result;
}

uint64_t sub_1DEF04C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4708, &qword_1DEF95DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF04CD0(uint64_t a1)
{
  v2 = type metadata accessor for ZoneVersion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1DEF04D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return *(a2 + *(a3 + 24)) < *(a1 + *(a3 + 24));
}

BOOL sub_1DEF04D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 1;
  }

  return *(a1 + *(a3 + 24)) >= *(a2 + *(a3 + 24));
}

BOOL sub_1DEF04DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 1;
  }

  return *(a2 + *(a3 + 24)) >= *(a1 + *(a3 + 24));
}

BOOL sub_1DEF04DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return *(a1 + *(a3 + 24)) < *(a2 + *(a3 + 24));
}

size_t sub_1DEF04E40@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D88, &qword_1DEF916A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v78 = &v76 - v4;
  v80 = type metadata accessor for SyncQueue.SyncItem();
  v83 = *(v80 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v76 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v76 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v76 - v12;
  v96 = sub_1DEF8D3F8();
  v13 = *(v96 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v96 - 8);
  v88 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BD0, &qword_1DEF952F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  swift_beginAccess();
  v76 = v1;
  v23 = *(v1 + 16);
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v81 = (v25 + 63) >> 6;
  v86 = v13;
  v87 = (v13 + 16);
  v84 = v13 + 32;
  v91 = (v13 + 8);
  v89 = v23;

  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v85 = v19;
  v94 = v22;
  for (i = v24; ; v24 = i)
  {
    if (!v27)
    {
      if (v81 <= v28 + 1)
      {
        v32 = v28 + 1;
      }

      else
      {
        v32 = v81;
      }

      v33 = v32 - 1;
      while (1)
      {
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v31 >= v81)
        {
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BD8, &qword_1DEF952F8);
          (*(*(v50 - 8) + 56))(v19, 1, 1, v50);
          v27 = 0;
          v28 = v33;
          goto LABEL_17;
        }

        v27 = *(v24 + 8 * v31);
        ++v28;
        if (v27)
        {
          v95 = v29;
          v28 = v31;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_41:

      v61 = v77;
      v74 = v77 + v28;
      v75 = v88;
      (*v87)(v88, v74, v19);
      swift_beginAccess();
      sub_1DEF32DDC(0, v75);
      swift_endAccess();
      goto LABEL_42;
    }

    v95 = v29;
    v31 = v28;
LABEL_16:
    v34 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v35 = v34 | (v31 << 6);
    v36 = v89;
    v37 = v86;
    (*(v86 + 16))(v88, *(v89 + 48) + *(v86 + 72) * v35, v96);
    v38 = *(*(v36 + 56) + 8 * v35);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BD8, &qword_1DEF952F8);
    v40 = *(v39 + 48);
    v19 = v85;
    (*(v37 + 32))();
    *&v19[v40] = v38;
    (*(*(v39 - 8) + 56))(v19, 0, 1, v39);

    v22 = v94;
    v29 = v95;
LABEL_17:
    sub_1DEF06F78(v19, v22);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BD8, &qword_1DEF952F8);
    if ((*(*(v41 - 8) + 48))(v22, 1, v41) == 1)
    {
      break;
    }

    v42 = *&v22[*(v41 + 48)];
    v43 = *(v42 + 16);
    if (v43)
    {
      v44 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v45 = *(v83 + 72);
      v46 = v82;
      sub_1DEF06FE8(v42 + v44 + v45 * (v43 - 1), v82);

      v47 = v92;
      sub_1DEF07124(v46, v92);
      sub_1DEF06FE8(v47, v93);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1DEF381B4(0, v29[2] + 1, 1, v29);
      }

      v49 = v29[2];
      v48 = v29[3];
      if (v49 >= v48 >> 1)
      {
        v29 = sub_1DEF381B4(v48 > 1, v49 + 1, 1, v29);
      }

      sub_1DEF07188(v92);
      v29[2] = v49 + 1;
      sub_1DEF07124(v93, v29 + v44 + v49 * v45);
      v22 = v94;
    }

    else
    {
      v30 = *&v22[*(v41 + 48)];
    }

    (*v91)(v22, v96);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1DEF88EA0(v29);
  }

  v51 = v83;
  v52 = v79;
  v53 = v29[2];
  v54 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v98[0] = v29 + v54;
  v98[1] = v53;
  sub_1DEF058A8(v98);
  v55 = v29[2];
  if (v55)
  {
    sub_1DEF06FE8(v29 + v54 + *(v51 + 72) * (v55 - 1), v52);
    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = v78;

  v58 = v56;
  v59 = v80;
  (*(v51 + 56))(v52, v58, 1, v80);
  sub_1DEF0704C(v52, v57);
  if ((*(v51 + 48))(v57, 1, v59) == 1)
  {
    return sub_1DEF070BC(v57);
  }

  v19 = v96;
  v61 = v77;
  sub_1DEF07124(v57, v77);
  v62 = v76;
  v63 = *(v76 + 16);
  if (!*(v63 + 16))
  {
    goto LABEL_42;
  }

  v28 = *(v80 + 20);
  v64 = *(v76 + 16);

  v65 = sub_1DEEAF350(v61 + v28);
  if ((v66 & 1) == 0)
  {

LABEL_42:
    v73 = v61;
    return sub_1DEF07188(v73);
  }

  v67 = *(*(v63 + 56) + 8 * v65);

  if (!v67[2])
  {
    __break(1u);
LABEL_45:
    result = sub_1DEF88EA0(v67);
    v67 = result;
    v68 = *(result + 16);
    if (!v68)
    {
      goto LABEL_46;
    }

LABEL_37:
    v69 = v68 - 1;
    sub_1DEF07188(v67 + v54 + *(v51 + 72) * (v68 - 1));
    v67[2] = v69;
    if (v69)
    {
      swift_beginAccess();
      v70 = *(v63 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = *(v63 + 16);
      *(v63 + 16) = 0x8000000000000000;
      v72 = v77;
      sub_1DEF3E8B0(v67, v77 + v28, isUniquelyReferenced_nonNull_native);
      *(v63 + 16) = v97;
      swift_endAccess();
      v73 = v72;
      return sub_1DEF07188(v73);
    }

    goto LABEL_41;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v63 = v62;
  if ((result & 1) == 0)
  {
    goto LABEL_45;
  }

  v68 = v67[2];
  if (v68)
  {
    goto LABEL_37;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1DEF056E0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SyncQueue.SyncItem()
{
  result = qword_1ECDE2E60;
  if (!qword_1ECDE2E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEF057B0()
{
  result = type metadata accessor for Record.ID(319);
  if (v1 <= 0x3F)
  {
    result = sub_1DEF8D3F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DEF05850()
{
  result = qword_1ECDE4BC8;
  if (!qword_1ECDE4BC8)
  {
    type metadata accessor for SyncQueue.SyncItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4BC8);
  }

  return result;
}

void sub_1DEF058A8(uint64_t *a1)
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
        type metadata accessor for SyncQueue.SyncItem();
        v6 = sub_1DEF8DB08();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SyncQueue.SyncItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DEF05C18(v8, v9, a1, v4);
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
    sub_1DEF059D4(0, v2, 1, a1);
  }
}

void sub_1DEF059D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SyncQueue.SyncItem();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v39 = v18;
    v33 = v19;
    v23 = v18 + v19 * a3;
LABEL_6:
    v37 = v20;
    v38 = a3;
    v35 = v23;
    v36 = v22;
    while (1)
    {
      sub_1DEF06FE8(v23, v17);
      sub_1DEF06FE8(v20, v13);
      v24 = *(v8 + 28);
      v25 = v17[v24];
      v26 = v13[v24];
      if (v25 == 1)
      {
        if ((v26 & 1) == 0)
        {
          sub_1DEF07188(v13);
          sub_1DEF07188(v17);
          goto LABEL_12;
        }
      }

      else if (v26)
      {
        sub_1DEF07188(v13);
        sub_1DEF07188(v17);
LABEL_5:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v22 = v36 - 1;
        v23 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return;
        }

        goto LABEL_6;
      }

      v27 = *(v8 + 24);
      v28 = *&v17[v27];
      v29 = *&v13[v27];
      sub_1DEF07188(v13);
      sub_1DEF07188(v17);
      if (v29 >= v28)
      {
        goto LABEL_5;
      }

LABEL_12:
      if (!v39)
      {
        __break(1u);
        return;
      }

      v30 = v40;
      sub_1DEF07124(v23, v40);
      swift_arrayInitWithTakeFrontToBack();
      sub_1DEF07124(v30, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_1DEF05C18(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v136 = a1;
  v7 = type metadata accessor for SyncQueue.SyncItem();
  v143 = *(v7 - 8);
  v8 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v139 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v149 = &v130 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v130 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v130 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v140 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v132 = &v130 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v135 = &v130 - v25;
  v145 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v4 = *v136;
    if (!*v136)
    {
      goto LABEL_149;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v147;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_113:
      v151 = v28;
      v125 = *(v28 + 16);
      if (v125 >= 2)
      {
        while (*v145)
        {
          v126 = v28;
          v28 = *(v28 + 16 * v125);
          v127 = v126;
          v128 = *&v126[16 * v125 + 24];
          sub_1DEF065D8(*v145 + *(v143 + 72) * v28, *v145 + *(v143 + 72) * *&v126[16 * v125 + 16], *v145 + *(v143 + 72) * v128, v4);
          if (v14)
          {
            goto LABEL_121;
          }

          if (v128 < v28)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v127 = sub_1DEF06BB8(v127);
          }

          if (v125 - 2 >= *(v127 + 2))
          {
            goto LABEL_137;
          }

          v129 = &v127[16 * v125];
          *v129 = v28;
          v129[1] = v128;
          v151 = v127;
          sub_1DEF06B2C(v125 - 1);
          v28 = v151;
          v125 = *(v151 + 16);
          if (v125 <= 1)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_147;
      }

LABEL_121:

      return;
    }

LABEL_143:
    v28 = sub_1DEF06BB8(v28);
    goto LABEL_113;
  }

  v131 = a4;
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  v150 = v7;
  v146 = v24;
LABEL_4:
  v29 = v27;
  v30 = v27 + 1;
  if (v27 + 1 >= v26)
  {
    goto LABEL_36;
  }

  v141 = v26;
  v31 = *v145;
  v32 = *(v143 + 72);
  v33 = v27 + 1;
  v34 = v135;
  sub_1DEF06FE8(*v145 + v32 * v30, v135);
  v144 = v32;
  v35 = v31 + v32 * v29;
  v36 = v132;
  sub_1DEF06FE8(v35, v132);
  v37 = *(v7 + 28);
  v38 = *(v34 + v37);
  v39 = *(v36 + v37);
  v133 = v28;
  if (v38 != 1)
  {
    if (v39)
    {
      LODWORD(v142) = 0;
      v40 = v135;
      goto LABEL_11;
    }

LABEL_10:
    v40 = v135;
    LODWORD(v142) = *(v36 + *(v7 + 24)) < *(v135 + *(v7 + 24));
    goto LABEL_11;
  }

  if (v39)
  {
    goto LABEL_10;
  }

  LODWORD(v142) = 1;
  v40 = v135;
LABEL_11:
  sub_1DEF07188(v36);
  sub_1DEF07188(v40);
  v134 = v29;
  v41 = v29 + 2;
  v42 = v144 * (v29 + 2);
  v4 = v31 + v42;
  v43 = v33;
  v44 = v144 * v33;
  v45 = v31 + v144 * v33;
  do
  {
    v48 = v41;
    v49 = v43;
    v28 = v44;
    v50 = v42;
    if (v41 >= v141)
    {
      break;
    }

    v148 = v41;
    v51 = v146;
    sub_1DEF06FE8(v4, v146);
    v52 = v140;
    sub_1DEF06FE8(v45, v140);
    v53 = v52;
    v54 = *(v150 + 28);
    v55 = *(v51 + v54);
    v56 = *(v52 + v54);
    if (v55 == 1)
    {
      if ((v56 & 1) == 0)
      {
        v47 = 1;
        v46 = v146;
        goto LABEL_13;
      }
    }

    else if (v56)
    {
      v47 = 0;
      v46 = v146;
      goto LABEL_13;
    }

    v46 = v146;
    v47 = *(v52 + *(v150 + 24)) < *(v146 + *(v150 + 24));
LABEL_13:
    sub_1DEF07188(v53);
    sub_1DEF07188(v46);
    v48 = v148;
    v41 = v148 + 1;
    v4 += v144;
    v45 += v144;
    v43 = v49 + 1;
    v44 = v28 + v144;
    v42 = v50 + v144;
  }

  while (v142 == v47);
  if (!v142)
  {
    goto LABEL_34;
  }

  v4 = v134;
  if (v48 < v134)
  {
    goto LABEL_140;
  }

  if (v134 >= v48)
  {
    v30 = v48;
    v28 = v133;
    v7 = v150;
    v29 = v134;
  }

  else
  {
    v57 = v134 * v144;
    do
    {
      if (v4 != v49)
      {
        v59 = *v145;
        if (!*v145)
        {
          goto LABEL_146;
        }

        v148 = v59 + v57;
        sub_1DEF07124(v59 + v57, v139);
        if (v57 < v28 || v148 >= v59 + v50)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v57 != v28)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1DEF07124(v139, v59 + v28);
      }

      ++v4;
      v28 -= v144;
      v50 -= v144;
      v57 += v144;
    }

    while (v4 < v49--);
LABEL_34:
    v30 = v48;
    v28 = v133;
    v29 = v134;
    v7 = v150;
  }

LABEL_36:
  v60 = v145[1];
  if (v30 >= v60)
  {
    goto LABEL_59;
  }

  if (__OFSUB__(v30, v29))
  {
    goto LABEL_139;
  }

  if (v30 - v29 >= v131)
  {
    goto LABEL_59;
  }

  v61 = v29 + v131;
  if (__OFADD__(v29, v131))
  {
    goto LABEL_141;
  }

  if (v61 >= v60)
  {
    v61 = v145[1];
  }

  if (v61 < v29)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v30 == v61)
  {
    goto LABEL_59;
  }

  v133 = v28;
  v134 = v29;
  v62 = *v145;
  v63 = *(v143 + 72);
  v64 = *v145 + v63 * (v30 - 1);
  v65 = -v63;
  v66 = v29 - v30;
  v137 = v63;
  v138 = v61;
  v4 = v62 + v30 * v63;
LABEL_47:
  v148 = v30;
  v141 = v4;
  v142 = v66;
  v144 = v64;
  while (1)
  {
    sub_1DEF06FE8(v4, v17);
    sub_1DEF06FE8(v64, v14);
    v67 = *(v7 + 28);
    v68 = v17[v67];
    v69 = v14[v67];
    if (v68 == 1)
    {
      if ((v69 & 1) == 0)
      {
        sub_1DEF07188(v14);
        sub_1DEF07188(v17);
        goto LABEL_53;
      }
    }

    else if (v69)
    {
      sub_1DEF07188(v14);
      sub_1DEF07188(v17);
LABEL_46:
      v30 = v148 + 1;
      v64 = v144 + v137;
      v66 = v142 - 1;
      v4 = v141 + v137;
      if (v148 + 1 == v138)
      {
        v30 = v138;
        v28 = v133;
        v29 = v134;
LABEL_59:
        if (v30 < v29)
        {
          goto LABEL_138;
        }

        v148 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1DEF06DBC(0, *(v28 + 16) + 1, 1, v28);
        }

        v76 = *(v28 + 16);
        v75 = *(v28 + 24);
        v77 = v76 + 1;
        v27 = v148;
        if (v76 >= v75 >> 1)
        {
          v123 = sub_1DEF06DBC((v75 > 1), v76 + 1, 1, v28);
          v27 = v148;
          v28 = v123;
        }

        *(v28 + 16) = v77;
        v78 = v28 + 16 * v76;
        *(v78 + 32) = v29;
        *(v78 + 40) = v27;
        v4 = *v136;
        if (!*v136)
        {
          goto LABEL_148;
        }

        if (!v76)
        {
LABEL_3:
          v26 = v145[1];
          if (v27 >= v26)
          {
            goto LABEL_111;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v79 = v77 - 1;
          if (v77 >= 4)
          {
            break;
          }

          if (v77 == 3)
          {
            v80 = *(v28 + 32);
            v81 = *(v28 + 40);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_79:
            if (v83)
            {
              goto LABEL_127;
            }

            v96 = (v28 + 16 * v77);
            v98 = *v96;
            v97 = v96[1];
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_130;
            }

            v102 = (v28 + 32 + 16 * v79);
            v104 = *v102;
            v103 = v102[1];
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_133;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_134;
            }

            if (v100 + v105 >= v82)
            {
              if (v82 < v105)
              {
                v79 = v77 - 2;
              }

              goto LABEL_100;
            }

            goto LABEL_93;
          }

          v106 = (v28 + 16 * v77);
          v108 = *v106;
          v107 = v106[1];
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_93:
          if (v101)
          {
            goto LABEL_129;
          }

          v109 = v28 + 16 * v79;
          v111 = *(v109 + 32);
          v110 = *(v109 + 40);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_132;
          }

          if (v112 < v100)
          {
            goto LABEL_3;
          }

LABEL_100:
          v117 = v79 - 1;
          if (v79 - 1 >= v77)
          {
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
LABEL_137:
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

          if (!*v145)
          {
            goto LABEL_145;
          }

          v118 = v28;
          v119 = v28 + 32;
          v28 = *(v28 + 32 + 16 * v117);
          v120 = *(v119 + 16 * v79 + 8);
          v121 = v147;
          sub_1DEF065D8(*v145 + *(v143 + 72) * v28, *v145 + *(v143 + 72) * *(v119 + 16 * v79), *v145 + *(v143 + 72) * v120, v4);
          v147 = v121;
          if (v121)
          {
            goto LABEL_121;
          }

          if (v120 < v28)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = sub_1DEF06BB8(v118);
          }

          if (v117 >= *(v118 + 2))
          {
            goto LABEL_124;
          }

          v122 = &v118[16 * v117];
          *(v122 + 4) = v28;
          *(v122 + 5) = v120;
          v151 = v118;
          sub_1DEF06B2C(v79);
          v28 = v151;
          v77 = *(v151 + 16);
          v27 = v148;
          if (v77 <= 1)
          {
            goto LABEL_3;
          }
        }

        v84 = v28 + 32 + 16 * v77;
        v85 = *(v84 - 64);
        v86 = *(v84 - 56);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_125;
        }

        v89 = *(v84 - 48);
        v88 = *(v84 - 40);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_126;
        }

        v91 = (v28 + 16 * v77);
        v93 = *v91;
        v92 = v91[1];
        v90 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v90)
        {
          goto LABEL_128;
        }

        v90 = __OFADD__(v82, v94);
        v95 = v82 + v94;
        if (v90)
        {
          goto LABEL_131;
        }

        if (v95 >= v87)
        {
          v113 = (v28 + 32 + 16 * v79);
          v115 = *v113;
          v114 = v113[1];
          v90 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v90)
          {
            goto LABEL_135;
          }

          if (v82 < v116)
          {
            v79 = v77 - 2;
          }

          goto LABEL_100;
        }

        goto LABEL_79;
      }

      goto LABEL_47;
    }

    v70 = *(v7 + 24);
    v71 = *&v17[v70];
    v72 = *&v14[v70];
    sub_1DEF07188(v14);
    sub_1DEF07188(v17);
    if (v72 >= v71)
    {
      v7 = v150;
      goto LABEL_46;
    }

LABEL_53:
    if (!v62)
    {
      break;
    }

    v73 = v149;
    sub_1DEF07124(v4, v149);
    v7 = v150;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DEF07124(v73, v64);
    v64 += v65;
    v4 += v65;
    if (__CFADD__(v66++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

void sub_1DEF065D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = type metadata accessor for SyncQueue.SyncItem();
  v8 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_72;
  }

  v20 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v19 != -1)
  {
    v21 = (a2 - a1) / v19;
    v60 = a1;
    v59 = a4;
    if (v21 < v20 / v19)
    {
      v22 = v21 * v19;
      if (a4 < a1 || a1 + v22 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v24 = a4 + v22;
      v58 = a4 + v22;
      if (v22 >= 1 && a2 < a3)
      {
        while (1)
        {
          sub_1DEF06FE8(a2, v17);
          sub_1DEF06FE8(a4, v13);
          v26 = *(v57 + 28);
          v27 = v17[v26];
          v28 = v13[v26];
          if (v27 == 1)
          {
            if ((v28 & 1) == 0)
            {
              sub_1DEF07188(v13);
              sub_1DEF07188(v17);
              goto LABEL_27;
            }
          }

          else if (v28)
          {
            sub_1DEF07188(v13);
            sub_1DEF07188(v17);
LABEL_31:
            if (a1 < a4 || a1 >= a4 + v19)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59 = a4 + v19;
            a4 += v19;
            goto LABEL_39;
          }

          v29 = *(v57 + 24);
          v30 = *&v17[v29];
          v56 = a4;
          v31 = a2;
          v32 = v19;
          v33 = a3;
          v34 = v24;
          v35 = *&v13[v29];
          sub_1DEF07188(v13);
          sub_1DEF07188(v17);
          v36 = v35 < v30;
          v24 = v34;
          a3 = v33;
          v19 = v32;
          a2 = v31;
          a4 = v56;
          if (!v36)
          {
            goto LABEL_31;
          }

LABEL_27:
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
LABEL_39:
          a1 += v19;
          v60 = a1;
          if (a4 >= v24 || a2 >= a3)
          {
            goto LABEL_70;
          }
        }
      }

      goto LABEL_70;
    }

    v23 = v20 / v19 * v19;
    v54 = v15;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v23;
    if (v23 < 1)
    {
LABEL_69:
      v60 = a2;
      v58 = v37;
LABEL_70:
      sub_1DEF06CD4(&v60, &v59, &v58, type metadata accessor for SyncQueue.SyncItem);
      return;
    }

    v38 = -v19;
    v39 = a4 + v23;
    v56 = -v19;
LABEL_45:
    v51 = v37;
    v40 = a2;
    a2 += v38;
    v53 = v40;
    while (1)
    {
      if (v40 <= a1)
      {
        v60 = v40;
        v58 = v51;
        goto LABEL_70;
      }

      v41 = a3;
      v42 = v39 + v38;
      v43 = v55;
      sub_1DEF06FE8(v39 + v38, v55);
      v44 = v54;
      sub_1DEF06FE8(a2, v54);
      v45 = v44;
      v46 = *(v57 + 28);
      v47 = *(v43 + v46);
      v48 = *(v44 + v46);
      v52 = v37;
      if (v47 == 1)
      {
        if ((v48 & 1) == 0)
        {
          v49 = 1;
          goto LABEL_55;
        }
      }

      else if (v48)
      {
        v49 = 0;
        goto LABEL_55;
      }

      v49 = *(v44 + *(v57 + 24)) < *(v43 + *(v57 + 24));
LABEL_55:
      v50 = v43;
      a3 = v41 + v56;
      sub_1DEF07188(v45);
      sub_1DEF07188(v50);
      if (v49)
      {
        if (v41 < v53 || a3 >= v53)
        {
          swift_arrayInitWithTakeFrontToBack();
          v37 = v52;
        }

        else
        {
          v37 = v52;
          if (v41 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v56;
        if (v39 <= a4)
        {
          goto LABEL_69;
        }

        goto LABEL_45;
      }

      v37 = v42;
      if (v41 < v39 || a3 >= v39)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v41 != v39)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v39 = v42;
      v38 = v56;
      v40 = v53;
      if (v42 <= a4)
      {
        a2 = v53;
        goto LABEL_69;
      }
    }
  }

LABEL_73:
  __break(1u);
}
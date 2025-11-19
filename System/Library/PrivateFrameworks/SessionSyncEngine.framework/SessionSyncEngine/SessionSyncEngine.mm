void sub_2657B6768(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2657B67E8(int a1)
{
  v2 = sub_2657F2414();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + 16);
    *v6 = v9;
    v10 = *MEMORY[0x277D85200];
    v11 = v3[13];
    v11(v6, v10, v2);
    v12 = v9;
    LOBYTE(v9) = sub_2657F2434();
    v13 = v3[1];
    result = v13(v6, v2);
    if (v9)
    {
      if (a1)
      {
      }

      v14 = *(v8 + 16);
      *v6 = v14;
      v11(v6, v10, v2);
      v15 = v14;
      LOBYTE(v14) = sub_2657F2434();
      result = v13(v6, v2);
      if (v14)
      {
        *(v8 + 32) = 1;
        v16 = *(v8 + 24);
        v17[7] = 1;
        sub_2657F2354();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2657B69B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*(*v1 + 216) + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v3 + 232);
  v6 = *(v3 + 240);
  *a1 = *(v3 + 224);
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;

  os_unfair_lock_unlock(v4);
}

uint64_t sub_2657B6A2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_2657B6A88()
{
  if (*(*v0 + 208))
  {
    v1 = *(*v0 + 200);
  }

  else
  {
    v2 = IDSCopyLocalDeviceUniqueID();
    if (v2)
    {
      v3 = v2;
      v1 = sub_2657F2484();
    }

    else
    {
      v1 = 0xD000000000000017;
    }
  }

  return v1;
}

uint64_t sub_2657B6B20(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2657F2314();
  v6 = *(v5 + 120);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657B6C0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a1;
  v5 = sub_2657F22A4();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2657F2414();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v3 + 120);
  *v13 = v14;
  v15 = v10[13];
  v54 = *MEMORY[0x277D85200];
  v53 = v15;
  v15(v13);
  v16 = v14;
  v17 = sub_2657F2434();
  v18 = v10[1];
  v18(v13, v9);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v52 = v16;
  sub_2657F2284();
  v20 = *(v3 + 64);
  v19 = *(v3 + 72);
  __swift_project_boxed_opaque_existential_1((v3 + 40), v20);
  (*(v19 + 48))(v8, a2, v20, v19);
  v21 = *(v3 + 64);
  v22 = *(v3 + 72);
  __swift_project_boxed_opaque_existential_1((v3 + 40), v21);
  v23 = *(v22 + 40);
  v55 = v8;
  v23(v8, v58, v21, v22);
  if ((~*(v3 + 248) & 3) == 0)
  {
    v25 = v52;
    v24 = v53;
    *v13 = v52;
    v24(v13, v54, v9);
    v26 = v25;
    LOBYTE(v25) = sub_2657F2434();
    v18(v13, v9);
    if (v25)
    {
      v28 = *(v3 + 128);
      v27 = *(v3 + 136);
      ObjectType = swift_getObjectType();
      (*(v27 + 24))(ObjectType, v27);
      v30 = *(*(v3 + 216) + 16);

      os_unfair_lock_lock(v30);
      v31 = *(v3 + 224);
      v32 = *(v3 + 232);

      os_unfair_lock_unlock(v30);

      if (v32)
      {
      }

      else
      {
        v31 = 0;
      }

      v42 = *(*(v3 + 216) + 16);

      os_unfair_lock_lock(v42);
      v43 = *(v3 + 232);
      v44 = *(v3 + 241);

      os_unfair_lock_unlock(v42);

      v45 = v44 & 1;
      if (!v43)
      {
        v45 = 2;
      }

      v59 = v45;
      sub_2657B8A48(v31, v32, &v59);

      return (*(v56 + 8))(v55, v57);
    }

    goto LABEL_20;
  }

  if (qword_281446408 != -1)
  {
LABEL_21:
    swift_once();
  }

  v33 = sub_2657F2344();
  __swift_project_value_buffer(v33, qword_281446410);

  v34 = sub_2657F2334();
  v35 = sub_2657F2584();

  v36 = os_log_type_enabled(v34, v35);
  v37 = v55;
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v60 = v39;
    *v38 = 136380675;
    if (*(v3 + 208))
    {
      v40 = *(v3 + 200);
      v41 = *(v3 + 208);
    }

    else
    {
      v47 = IDSCopyLocalDeviceUniqueID();
      if (v47)
      {
        v48 = v47;
        v40 = sub_2657F2484();
        v41 = v49;
      }

      else
      {
        v41 = 0x80000002657F8510;
        v40 = 0xD000000000000017;
      }
    }

    v50 = sub_2657B7F9C(v40, v41, &v60);

    *(v38 + 4) = v50;
    _os_log_impl(&dword_2657B5000, v34, v35, "(%{private}s) Not syncing altered records as the sync engine is disabled", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x266760A30](v39, -1, -1);
    MEMORY[0x266760A30](v38, -1, -1);
  }

  return (*(v56 + 8))(v37, v57);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t MetadataStore.set(deletedDate:for:)(uint64_t a1, uint64_t a2)
{
  v82 = a1;
  v77 = type metadata accessor for RecordMetadata(0);
  v75 = *(v77 - 8);
  v3 = *(v75 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v65 - v7);
  v9 = sub_2657F22A4();
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9);
  v76 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (!v15)
  {
    return result;
  }

  v80 = (v12 + 16);
  v73 = (v12 + 8);
  v16 = (a2 + 56);
  *&v13 = 136446466;
  v67 = v13;
  v74 = v6;
  v72 = v8;
  v66 = v9;
  while (1)
  {
    v78 = v16;
    v79 = v15;
    v20 = *(v16 - 3);
    v21 = *(v16 - 2);
    v22 = *(v16 - 1);
    v23 = *v16;
    v24 = qword_281446408;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_2657F2344();
    __swift_project_value_buffer(v25, qword_281446410);
    v26 = *v80;
    v27 = v76;
    (*v80)(v76, v82, v9);

    v28 = v9;
    v29 = sub_2657F2334();
    v30 = sub_2657F2584();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v71 = v26;
      v32 = v31;
      v70 = swift_slowAlloc();
      v83 = v70;
      v84[0] = 0;
      *v32 = v67;
      v84[1] = 0xE000000000000000;

      sub_2657F2704();

      strcpy(v84, "identifier: ");
      BYTE5(v84[1]) = 0;
      HIWORD(v84[1]) = -5120;
      MEMORY[0x26675FFF0](v20, v21);
      MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
      MEMORY[0x26675FFF0](v22, v23);

      v33 = sub_2657B7F9C(v84[0], v84[1], &v83);
      v69 = v30;
      v34 = v22;
      v35 = v20;
      v36 = v33;

      *(v32 + 4) = v36;
      *(v32 + 12) = 2082;
      sub_2657B8264(&unk_281446F40);
      v68 = v29;
      v37 = v66;
      v38 = sub_2657F2854();
      v40 = v39;
      (*v73)(v27, v37);
      v41 = sub_2657B7F9C(v38, v40, &v83);

      *(v32 + 14) = v41;
      v42 = v68;
      _os_log_impl(&dword_2657B5000, v68, v69, "Updating deletedDate for record %{public}s to %{public}s", v32, 0x16u);
      v43 = v70;
      swift_arrayDestroy();
      MEMORY[0x266760A30](v43, -1, -1);
      v44 = v32;
      v26 = v71;
      MEMORY[0x266760A30](v44, -1, -1);

      v45 = v37;
    }

    else
    {

      (*v73)(v27, v28);
      v45 = v28;
      v34 = v22;
      v35 = v20;
    }

    v46 = v77;
    v47 = v45;
    (v26)(v8 + *(v77 + 20), v82);
    *v8 = v35;
    v8[1] = v21;
    v8[2] = v34;
    v8[3] = v23;
    *(v8 + *(v46 + 24)) = 1;
    v48 = v81;
    swift_beginAccess();
    v49 = v74;
    sub_2657B82A8(v8, v74);

    v50 = *(v48 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v48 + 40);
    v52 = v83;
    *(v48 + 40) = 0x8000000000000000;
    v53 = sub_2657B830C(v35, v21, v34, v23);
    v55 = *(v52 + 16);
    v56 = (v54 & 1) == 0;
    v57 = __OFADD__(v55, v56);
    v58 = v55 + v56;
    if (v57)
    {
      break;
    }

    v59 = v54;
    if (*(v52 + 24) < v58)
    {
      sub_2657B83AC(v58, isUniquelyReferenced_nonNull_native);
      v53 = sub_2657B830C(v35, v21, v34, v23);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_23;
      }

LABEL_15:
      v9 = v47;
      if (v59)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v64 = v53;
    sub_2657CA0DC();
    v53 = v64;
    v9 = v47;
    if (v59)
    {
LABEL_3:
      v17 = v53;

      v18 = v83;
      sub_2657B9770(v49, v83[7] + *(v75 + 72) * v17);
      goto LABEL_4;
    }

LABEL_16:
    v18 = v83;
    v83[(v53 >> 6) + 8] |= 1 << v53;
    v61 = (v18[6] + 32 * v53);
    *v61 = v35;
    v61[1] = v21;
    v61[2] = v34;
    v61[3] = v23;
    sub_2657B881C(v49, v18[7] + *(v75 + 72) * v53);
    v62 = v18[2];
    v57 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v57)
    {
      goto LABEL_22;
    }

    v18[2] = v63;
LABEL_4:
    v19 = *(v81 + 40);
    *(v81 + 40) = v18;

    swift_endAccess();
    v8 = v72;
    result = sub_2657B8880(v72);
    v16 = v78 + 4;
    v15 = v79 - 1;
    if (v79 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2657F2884();
  __break(1u);
  return result;
}

uint64_t MetadataStore.set(lastModifiedDate:for:)(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = type metadata accessor for RecordMetadata(0);
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = (&v67 - v8);
  v9 = sub_2657F22A4();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v17 = *(a2 + 16);
  if (!v17)
  {
    return result;
  }

  v79 = (v14 + 16);
  v71 = (v14 + 8);
  v18 = (a2 + 56);
  *&v16 = 136446722;
  v67 = v16;
  v84 = v9;
  v72 = v7;
  v80 = &v67 - v15;
  while (1)
  {
    v76 = v18;
    v77 = v17;
    v23 = *(v18 - 3);
    v22 = *(v18 - 2);
    v25 = *(v18 - 1);
    v24 = *v18;
    v26 = qword_281446408;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_2657F2344();
    __swift_project_value_buffer(v27, qword_281446410);
    v28 = *v79;
    v29 = v83;
    (*v79)(v80, v83, v9);
    v30 = v75;
    v78 = v28;
    v28(v75, v29, v9);

    v31 = sub_2657F2334();
    v32 = sub_2657F2584();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v85 = v70;
      v86[0] = 0;
      *v33 = v67;
      v86[1] = 0xE000000000000000;

      v69 = v31;
      sub_2657F2704();

      strcpy(v86, "identifier: ");
      BYTE5(v86[1]) = 0;
      HIWORD(v86[1]) = -5120;
      MEMORY[0x26675FFF0](v23, v22);
      MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
      MEMORY[0x26675FFF0](v25, v24);

      v34 = sub_2657B7F9C(v86[0], v86[1], &v85);
      v68 = v32;
      v35 = v34;

      *(v33 + 4) = v35;
      *(v33 + 12) = 2082;
      sub_2657B8264(&unk_281446F40);
      v36 = v80;
      v37 = sub_2657F2854();
      v39 = v38;
      v40 = *v71;
      (*v71)(v36, v84);
      v41 = sub_2657B7F9C(v37, v39, &v85);

      *(v33 + 14) = v41;
      *(v33 + 22) = 2050;
      v42 = v75;
      sub_2657F2264();
      v44 = v43;
      v40(v42, v84);
      v9 = v84;
      *(v33 + 24) = v44;
      v45 = v69;
      _os_log_impl(&dword_2657B5000, v69, v68, "Updating lastModifiedDate for record %{public}s to %{public}s (%{public}f)", v33, 0x20u);
      v46 = v70;
      swift_arrayDestroy();
      MEMORY[0x266760A30](v46, -1, -1);
      MEMORY[0x266760A30](v33, -1, -1);
    }

    else
    {

      v47 = *v71;
      (*v71)(v30, v9);
      v47(v80, v9);
    }

    v48 = v74;
    v49 = v82;
    v78(v82 + *(v74 + 20), v83, v9);
    *v49 = v23;
    v49[1] = v22;
    v49[2] = v25;
    v49[3] = v24;
    *(v49 + *(v48 + 24)) = 0;
    v50 = v81;
    swift_beginAccess();
    v51 = v72;
    sub_2657B82A8(v49, v72);

    v52 = *(v50 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = *(v50 + 40);
    v54 = v85;
    *(v50 + 40) = 0x8000000000000000;
    v55 = sub_2657B830C(v23, v22, v25, v24);
    v57 = *(v54 + 16);
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      break;
    }

    v61 = v56;
    if (*(v54 + 24) < v60)
    {
      sub_2657B83AC(v60, isUniquelyReferenced_nonNull_native);
      v55 = sub_2657B830C(v23, v22, v25, v24);
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_23;
      }

LABEL_15:
      v9 = v84;
      if (v61)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v66 = v55;
    sub_2657CA0DC();
    v55 = v66;
    v9 = v84;
    if (v61)
    {
LABEL_3:
      v19 = v55;

      v20 = v85;
      sub_2657B9770(v51, v85[7] + *(v73 + 72) * v19);
      goto LABEL_4;
    }

LABEL_16:
    v20 = v85;
    v85[(v55 >> 6) + 8] |= 1 << v55;
    v63 = (v20[6] + 32 * v55);
    *v63 = v23;
    v63[1] = v22;
    v63[2] = v25;
    v63[3] = v24;
    sub_2657B881C(v51, v20[7] + *(v73 + 72) * v55);
    v64 = v20[2];
    v59 = __OFADD__(v64, 1);
    v65 = v64 + 1;
    if (v59)
    {
      goto LABEL_22;
    }

    v20[2] = v65;
LABEL_4:
    v21 = *(v81 + 40);
    *(v81 + 40) = v20;

    swift_endAccess();
    result = sub_2657B8880(v82);
    v18 = v76 + 4;
    v17 = v77 - 1;
    if (v77 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2657F2884();
  __break(1u);
  return result;
}

uint64_t sub_2657B7F2C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2657B7F9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2657B8068(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2657B8174(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2657B8068(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2657C5B60(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2657F2744();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2657B8174(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2657B821C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2657B8264(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2657F22A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2657B82A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2657B830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  v10 = sub_2657F2904();

  return sub_2657B871C(a1, a2, a3, a4, v10);
}

uint64_t sub_2657B83AC(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = *(type metadata accessor for RecordMetadata(0) - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20]();
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023840, &unk_2657F41F0);
  v44 = a2;
  result = sub_2657F2794();
  v11 = result;
  if (*(v8 + 16))
  {
    v41 = v2;
    v42 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v45 = (v16 - 1) & v16;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = *(v8 + 56);
      v26 = (*(v8 + 48) + 32 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[3];
      v46 = *(v43 + 72);
      v31 = v25 + v46 * v24;
      if (v44)
      {
        sub_2657B881C(v31, v47);
      }

      else
      {
        sub_2657B82A8(v31, v47);
      }

      v32 = *(v11 + 40);
      sub_2657F28D4();
      sub_2657F24C4();
      sub_2657F24C4();
      result = sub_2657F2904();
      v33 = -1 << *(v11 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 32 * v19);
      *v20 = v27;
      v20[1] = v28;
      v20[2] = v29;
      v20[3] = v30;
      result = sub_2657B881C(v47, *(v11 + 56) + v46 * v19);
      ++*(v11 + 16);
      v8 = v42;
      v16 = v45;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v45 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v8 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v3 = v11;
  return result;
}

unint64_t sub_2657B871C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_2657F2864() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_2657F2864() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_2657B881C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2657B8880(uint64_t a1)
{
  v2 = type metadata accessor for RecordMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2657B88F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(*(v3 + 48) + 16);

  os_unfair_lock_lock(v5);
  a3();
  os_unfair_lock_unlock(v5);
}

void sub_2657B8958()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 48) + 16));
  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v2 = sub_2657F2344();
  __swift_project_value_buffer(v2, qword_281446410);
  v3 = sub_2657F2334();
  v4 = sub_2657F2584();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2657B5000, v3, v4, "Resetting retry timer", v5, 2u);
    MEMORY[0x266760A30](v5, -1, -1);
  }

  *(v1 + 32) = *(v1 + 16);
}

void sub_2657B8A48(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_2657F22A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2657F2414();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = *a3;
  v18 = *(v4 + 120);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  LOBYTE(v18) = sub_2657F2434();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v20 = *(v4 + 104);
    v21 = *(v4 + 112);
    __swift_project_boxed_opaque_existential_1((v4 + 80), v20);
    if (((*(v21 + 16))(v20, v21) & 1) == 0)
    {
      if (qword_281446408 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_73;
    }

    if ((~*(v4 + 248) & 3) != 0)
    {
      if (qword_281446408 != -1)
      {
LABEL_76:
        swift_once();
      }

      v34 = sub_2657F2344();
      __swift_project_value_buffer(v34, qword_281446410);

      v23 = sub_2657F2334();
      v24 = sub_2657F2584();

      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_70;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v121[0] = v26;
      *v25 = 136380675;
      v35 = *(v4 + 208);
      if (v35)
      {
        v36 = *(v4 + 200);
        v37 = v35;
      }

      else
      {
        v97 = IDSCopyLocalDeviceUniqueID();
        if (v97)
        {
          v98 = v97;
          v36 = sub_2657F2484();
          v37 = v99;
        }

        else
        {
          v36 = 0xD000000000000017;
          v37 = 0x80000002657F8510;
        }
      }

      v105 = sub_2657B7F9C(v36, v37, v121);

      *(v25 + 4) = v105;
      v101 = "(%{private}s) Will not sync because sync is inactive";
    }

    else
    {
      if (a2)
      {
        if (v120 == 2)
        {
          if (qword_281446408 != -1)
          {
            swift_once();
          }

          v22 = sub_2657F2344();
          __swift_project_value_buffer(v22, qword_281446410);

          v23 = sub_2657F2334();
          v24 = sub_2657F2584();

          if (!os_log_type_enabled(v23, v24))
          {
            goto LABEL_70;
          }

          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v121[0] = v26;
          *v25 = 136380675;
          v27 = *(v4 + 208);
          if (v27)
          {
            v28 = *(v4 + 200);
            v29 = v27;
          }

          else
          {
            v106 = IDSCopyLocalDeviceUniqueID();
            if (v106)
            {
              v107 = v106;
              v28 = sub_2657F2484();
              v29 = v108;
            }

            else
            {
              v28 = 0xD000000000000017;
              v29 = 0x80000002657F8510;
            }
          }

          v110 = sub_2657B7F9C(v28, v29, v121);

          *(v25 + 4) = v110;
          v101 = "(%{private}s) Will not sync because version is nil";
          goto LABEL_69;
        }

        if (qword_281446408 != -1)
        {
          swift_once();
        }

        v111 = v8;
        v112 = a1;
        v113 = a2;
        v45 = sub_2657F2344();
        __swift_project_value_buffer(v45, qword_281446410);
        v46 = sub_2657F2334();
        v47 = sub_2657F2584();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_2657B5000, v46, v47, "Performing sync for all data sources", v48, 2u);
          MEMORY[0x266760A30](v48, -1, -1);
        }

        swift_beginAccess();
        v49 = *(v4 + 144);
        v52 = *(v49 + 64);
        v51 = v49 + 64;
        v50 = v52;
        v53 = 1 << *(*(v4 + 144) + 32);
        v54 = -1;
        if (v53 < 64)
        {
          v54 = ~(-1 << v53);
        }

        v55 = v54 & v50;
        v56 = (v53 + 63) >> 6;
        v118 = *(v4 + 144);

        v57 = 0;
        v58 = MEMORY[0x277D84F90];
        v114 = v9;
        v115 = v51;
        v116 = v12;
        while (v55)
        {
LABEL_39:
          v60 = *(*(v118 + 56) + ((v57 << 9) | (8 * __clz(__rbit64(v55)))));
          v121[3] = type metadata accessor for SyncEngine();
          v121[4] = &protocol witness table for SyncEngine;
          v121[0] = v4;
          Strong = swift_unknownObjectWeakLoadStrong();
          v119 = v60;
          if (Strong)
          {
            v62 = *(v60 + 24);
            ObjectType = swift_getObjectType();
            v117 = v58;
            v64 = *(v62 + 32);

            v65 = v64(v121, ObjectType, v62);
            v58 = v117;
            v66 = v65;
            swift_unknownObjectRelease();
          }

          else
          {

            v66 = MEMORY[0x277D84F90];
          }

          __swift_destroy_boxed_opaque_existential_1(v121);
          v67 = *(v66 + 16);
          v68 = *(v58 + 2);
          v69 = v68 + v67;
          if (__OFADD__(v68, v67))
          {
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v71 = *(v58 + 3) >> 1, v71 < v69))
          {
            if (v68 <= v69)
            {
              v72 = v68 + v67;
            }

            else
            {
              v72 = v68;
            }

            v58 = sub_2657CFFDC(isUniquelyReferenced_nonNull_native, v72, 1, v58);
            v71 = *(v58 + 3) >> 1;
          }

          v12 = v116;
          if (*(v66 + 16))
          {
            if (v71 - *(v58 + 2) < v67)
            {
              __break(1u);
LABEL_78:
              __break(1u);
              goto LABEL_79;
            }

            swift_arrayInitWithCopy();

            v51 = v115;
            if (v67)
            {
              v73 = *(v58 + 2);
              v74 = __OFADD__(v73, v67);
              v75 = v73 + v67;
              if (v74)
              {
                goto LABEL_78;
              }

              *(v58 + 2) = v75;
            }
          }

          else
          {

            v51 = v115;
            if (v67)
            {
              goto LABEL_75;
            }
          }

          v55 &= v55 - 1;

          v9 = v114;
        }

        while (1)
        {
          v59 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (v59 >= v56)
          {

            v76 = *(v4 + 64);
            v77 = *(v4 + 72);
            __swift_project_boxed_opaque_existential_1((v4 + 40), v76);
            v78 = (*(v77 + 24))(v112, v113, v76, v77);
            v79 = v9;
            v80 = *(v4 + 64);
            v81 = *(v4 + 72);
            __swift_project_boxed_opaque_existential_1((v4 + 40), v80);
            v82 = (*(v81 + 8))(v58, v80, v81);
            v83 = v12;
            v84 = *(v4 + 64);
            v85 = *(v4 + 72);
            __swift_project_boxed_opaque_existential_1((v4 + 40), v84);
            sub_2657F2284();
            (*(v85 + 40))(v83, v82, v84, v85);
            v118 = *(v79 + 8);
            v86 = v111;
            (v118)(v83, v111);
            v121[0] = v82;
            sub_2657E526C(v78);
            v119 = v121[0];
            v87 = *(v4 + 64);
            v88 = *(v4 + 72);
            __swift_project_boxed_opaque_existential_1((v4 + 40), v87);
            v89 = v112;
            v90 = (*(v88 + 32))(v112, v113, v87, v88);
            v91 = *(v4 + 64);
            v92 = *(v4 + 72);
            __swift_project_boxed_opaque_existential_1((v4 + 40), v91);
            v93 = (*(v92 + 16))(v58, v91, v92);

            v94 = *(v4 + 64);
            v95 = *(v4 + 72);
            __swift_project_boxed_opaque_existential_1((v4 + 40), v94);
            sub_2657F2284();
            (*(v95 + 48))(v83, v93, v94, v95);
            (v118)(v83, v86);
            v121[0] = v90;
            sub_2657E526C(v93);
            v96 = v121[0];
            LOBYTE(v121[0]) = v120 & 1;
            sub_2657E5360(v119, v96, v89, v113, v121);

            return;
          }

          v55 = *(v51 + 8 * v59);
          ++v57;
          if (v55)
          {
            v57 = v59;
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_72;
      }

      if (qword_281446408 != -1)
      {
LABEL_79:
        swift_once();
      }

      v38 = sub_2657F2344();
      __swift_project_value_buffer(v38, qword_281446410);

      v23 = sub_2657F2334();
      v24 = sub_2657F2584();

      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_70;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v121[0] = v26;
      *v25 = 136380675;
      v39 = *(v4 + 208);
      if (v39)
      {
        v40 = *(v4 + 200);
        v41 = v39;
      }

      else
      {
        v102 = IDSCopyLocalDeviceUniqueID();
        if (v102)
        {
          v103 = v102;
          v40 = sub_2657F2484();
          v41 = v104;
        }

        else
        {
          v40 = 0xD000000000000017;
          v41 = 0x80000002657F8510;
        }
      }

      v109 = sub_2657B7F9C(v40, v41, v121);

      *(v25 + 4) = v109;
      v101 = "(%{private}s) Will not sync because pairedDeviceIdentifier is nil";
    }

LABEL_69:
    _os_log_impl(&dword_2657B5000, v23, v24, v101, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x266760A30](v26, -1, -1);
    MEMORY[0x266760A30](v25, -1, -1);
    goto LABEL_70;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  swift_once();
LABEL_12:
  v30 = sub_2657F2344();
  __swift_project_value_buffer(v30, qword_281446410);

  v23 = sub_2657F2334();
  v24 = sub_2657F2584();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v121[0] = v26;
    *v25 = 136380675;
    v31 = *(v4 + 208);
    if (v31)
    {
      v32 = *(v4 + 200);
      v33 = v31;
    }

    else
    {
      v42 = IDSCopyLocalDeviceUniqueID();
      if (v42)
      {
        v43 = v42;
        v32 = sub_2657F2484();
        v33 = v44;
      }

      else
      {
        v32 = 0xD000000000000017;
        v33 = 0x80000002657F8510;
      }
    }

    v100 = sub_2657B7F9C(v32, v33, v121);

    *(v25 + 4) = v100;
    v101 = "(%{private}s) Will not sync because keybag is locked";
    goto LABEL_69;
  }

LABEL_70:
}

uint64_t sub_2657B964C()
{
  v1 = *(*v0 + 16);
  sub_2657F25C4();
  return v3;
}

uint64_t sub_2657B96B8(uint64_t (*a1)(uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  v6 = sub_2657B6C0C(v3, v4);
  return a1(v6);
}

uint64_t objectdestroy_210Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2657B9770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2657B9800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2657F22A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2657B98AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2657F22A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2657B9950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecordMetadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2657B9A20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RecordMetadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_2657B9B10()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2657B9B4C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2657B9B9C()
{
  MEMORY[0x266760AB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2657B9BDC()
{
  if (*v0)
  {
    result = 0x6563616C706572;
  }

  else
  {
    result = 0x657461647075;
  }

  *v0;
  return result;
}

uint64_t sub_2657B9C14@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2657B9C50()
{
  if (*v0)
  {
    result = 0x4D646574656C6564;
  }

  else
  {
    result = 0x6465696669646F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_2657B9CB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2657B9CE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2657B9D40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2657B9D78()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[7];

  sub_2657BB314(v0[8], v0[9]);
  v4 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2657B9DD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2657B9F70()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2657B9FA8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2657B9FF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_2657D1110(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2657BA128()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2657BA19C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2657BA1AC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t default argument 3 of SyncEngine.init(syncService:metadataStore:keybag:retryTimer:)()
{
  type metadata accessor for ExponentialBackoffRetryTimer();
  v0 = swift_allocObject();
  *(v0 + 40) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = 3;
  return v0;
}

uint64_t sub_2657BA36C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2657BA38C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2814463A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2814463A0);
    }
  }
}

unint64_t sub_2657BA404()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = __OFSUB__(v1, v2);
  v4 = v1 - v2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[3];
    v6 = v4 > 0x40;
    if (v4 >= 0x40)
    {
      v7 = 0;
    }

    else
    {
      v7 = 1 << v4;
    }

    if (v6)
    {
      v7 = 0;
    }

    if (is_mul_ok(v5, v7))
    {
      return v5 * v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t ExponentialBackoffRetryTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = xmmword_2657F3400;
  return v0;
}

uint64_t ExponentialBackoffRetryTimer.init()()
{
  *(v0 + 40) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = 3;
  return v0;
}

void *ExponentialBackoffRetryTimer.__allocating_init(maxRetries:retryTimeInSeconds:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v4[6] = v5;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a1;
  return v4;
}

void *ExponentialBackoffRetryTimer.init(maxRetries:retryTimeInSeconds:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v2[6] = v5;
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = a1;
  return v2;
}

uint64_t ExponentialBackoffRetryTimer.deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return v0;
}

uint64_t ExponentialBackoffRetryTimer.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t PairedDevice.PairedDeviceClass.description.getter()
{
  v1 = 0x64696C61766E69;
  v2 = 6513005;
  if (*v0 != 2)
  {
    v2 = 0x6863746177;
  }

  if (*v0)
  {
    v1 = 0x656E6F6870;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t PairedDevice.PairedDeviceClass.hashValue.getter()
{
  v1 = *v0;
  sub_2657F28D4();
  MEMORY[0x266760400](v1);
  return sub_2657F2904();
}

uint64_t sub_2657BA90C()
{
  v1 = *v0;
  sub_2657F28D4();
  MEMORY[0x266760400](v1);
  return sub_2657F2904();
}

uint64_t sub_2657BA954()
{
  v1 = *v0;
  sub_2657F28D4();
  MEMORY[0x266760400](v1);
  return sub_2657F2904();
}

uint64_t sub_2657BA998()
{
  v1 = 0x64696C61766E69;
  v2 = 6513005;
  if (*v0 != 2)
  {
    v2 = 0x6863746177;
  }

  if (*v0)
  {
    v1 = 0x656E6F6870;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t PairedDevice.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PairedDevice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 17);
  sub_2657F2704();
  MEMORY[0x26675FFF0](0x696669746E656469, 0xEC000000203A7265);
  MEMORY[0x26675FFF0](v1, v2);
  MEMORY[0x26675FFF0](0x656369766564203BLL, 0xEF203A7373616C43);
  MEMORY[0x26675FFF0](v1, v2);
  MEMORY[0x26675FFF0](0xD000000000000013, 0x80000002657F7FD0);
  sub_2657F2754();
  return 0;
}

uint64_t _s17SessionSyncEngine12PairedDeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_2657F2864();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

unint64_t sub_2657BAC04()
{
  result = qword_280023680;
  if (!qword_280023680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023680);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2657BAC6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
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

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairedDevice.PairedDeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Message.init(messageType:version:encodedBody:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *a3;
  *(a6 + 8) = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_2657BAE38()
{
  v1 = 0x546567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x426465646F636E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_2657BAEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2657BB9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2657BAEE4(uint64_t a1)
{
  v2 = sub_2657BB1C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657BAF20(uint64_t a1)
{
  v2 = sub_2657BB1C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Message.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023688, &qword_2657F3600);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v18 = *(v1 + 2);
  v19 = v10;
  v11 = *(v1 + 3);
  v16 = *(v1 + 4);
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BB1C4();
  sub_2657F2924();
  LOBYTE(v20) = v9;
  v22 = 0;
  sub_2657BB218();
  sub_2657F2844();
  if (!v2)
  {
    v15 = v16;
    v14 = v17;
    LOBYTE(v20) = 1;
    sub_2657F2824();
    v20 = v14;
    v21 = v15;
    v22 = 2;
    sub_2657BB26C(v14, v15);
    sub_2657BB2C0();
    sub_2657F2844();
    sub_2657BB314(v20, v21);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2657BB1C4()
{
  result = qword_280023690;
  if (!qword_280023690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023690);
  }

  return result;
}

unint64_t sub_2657BB218()
{
  result = qword_280023698;
  if (!qword_280023698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023698);
  }

  return result;
}

uint64_t sub_2657BB26C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2657BB2C0()
{
  result = qword_2800236A0;
  if (!qword_2800236A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236A0);
  }

  return result;
}

uint64_t sub_2657BB314(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t Message.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800236A8, &qword_2657F3608);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BB1C4();
  sub_2657F2914();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_2657BB5D0();
  sub_2657F27F4();
  v11 = v20;
  LOBYTE(v20) = 1;
  v12 = sub_2657F27D4();
  v14 = v13;
  v19 = v12;
  v22 = 2;
  sub_2657BB624();
  sub_2657F27F4();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v16 = v21;
  *a2 = v11;
  *(a2 + 8) = v19;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;

  sub_2657BB26C(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_2657BB314(v15, v16);
}

unint64_t sub_2657BB5D0()
{
  result = qword_2800236B0;
  if (!qword_2800236B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236B0);
  }

  return result;
}

unint64_t sub_2657BB624()
{
  result = qword_2800236B8;
  if (!qword_2800236B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
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

uint64_t sub_2657BB6D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2657BB720(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Message.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Message.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2657BB8CC()
{
  result = qword_2800236C0;
  if (!qword_2800236C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236C0);
  }

  return result;
}

unint64_t sub_2657BB924()
{
  result = qword_2800236C8;
  if (!qword_2800236C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236C8);
  }

  return result;
}

unint64_t sub_2657BB97C()
{
  result = qword_2800236D0;
  if (!qword_2800236D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236D0);
  }

  return result;
}

uint64_t sub_2657BB9D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_2657F2864() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079 || (sub_2657F2864() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x426465646F636E65 && a2 == 0xEB0000000079646FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_2657F2864();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static Keybag.shared.getter@<X0>(uint64_t *a1@<X8>)
{
  if (qword_281446540 != -1)
  {
    swift_once();
  }

  v2 = qword_281446548;
  a1[3] = _s9IOSKeybagCMa();
  a1[4] = &off_28771A510;
  *a1 = v2;
}

void sub_2657BBB74()
{
  _s9IOSKeybagCMa();
  swift_allocObject();
  sub_2657D4EB0();
  qword_281446548 = v0;
}

uint64_t getEnumTagSinglePayload for Keybag(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Keybag(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t RecordID.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RecordID.zone.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t RecordID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2657F2704();

  strcpy(v6, "identifier: ");
  MEMORY[0x26675FFF0](v1, v2);
  MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
  MEMORY[0x26675FFF0](v3, v4);
  return v6[0];
}

SessionSyncEngine::RecordID __swiftcall RecordID.init(identifier:zone:)(Swift::String identifier, Swift::String zone)
{
  *v2 = identifier;
  v2[1] = zone;
  result.zone = zone;
  result.identifier = identifier;
  return result;
}

uint64_t static RecordID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2657F2864(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2657F2864();
    }
  }

  return result;
}

uint64_t sub_2657BBE5C()
{
  if (*v0)
  {
    result = 1701736314;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_2657BBE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_2657F2864() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736314 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2657F2864();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2657BBF78(uint64_t a1)
{
  v2 = sub_2657BC184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657BBFB4(uint64_t a1)
{
  v2 = sub_2657BC184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecordID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800236D8, &qword_2657F3850);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BC184();
  sub_2657F2924();
  v16 = 0;
  v12 = v14[3];
  sub_2657F2824();
  if (!v12)
  {
    v15 = 1;
    sub_2657F2824();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2657BC184()
{
  result = qword_2800236E0;
  if (!qword_2800236E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236E0);
  }

  return result;
}

uint64_t RecordID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2657F24C4();

  return sub_2657F24C4();
}

uint64_t RecordID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  return sub_2657F2904();
}

uint64_t RecordID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800236E8, &qword_2657F3858);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BC184();
  sub_2657F2914();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_2657F27D4();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_2657F27D4();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2657BC4C0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  return sub_2657F2904();
}

uint64_t sub_2657BC528()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2657F24C4();

  return sub_2657F24C4();
}

uint64_t sub_2657BC578()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  return sub_2657F2904();
}

uint64_t sub_2657BC5DC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2657F2864(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2657F2864();
    }
  }

  return result;
}

uint64_t sub_2657BC680()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2657F2704();

  strcpy(v6, "identifier: ");
  MEMORY[0x26675FFF0](v1, v2);
  MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
  MEMORY[0x26675FFF0](v3, v4);
  return v6[0];
}

uint64_t RecordMetadata.recordID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t RecordMetadata.lastModified.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecordMetadata(0) + 20);
  v4 = sub_2657F22A4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecordMetadata.description.getter()
{
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_2657F2704();
  MEMORY[0x26675FFF0](0x444964726F636572, 0xEA0000000000203ALL);
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2657F2704();

  strcpy(v11, "identifier: ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  MEMORY[0x26675FFF0](v1, v2);
  MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
  MEMORY[0x26675FFF0](v3, v4);
  MEMORY[0x26675FFF0](v11[0], v11[1]);

  MEMORY[0x26675FFF0](0xD000000000000010, 0x80000002657F7FF0);
  v5 = type metadata accessor for RecordMetadata(0);
  v6 = *(v5 + 20);
  sub_2657F22A4();
  sub_2657B821C(&unk_281446F40, MEMORY[0x277CC9578]);
  v7 = sub_2657F2854();
  MEMORY[0x26675FFF0](v7);

  MEMORY[0x26675FFF0](10272, 0xE200000000000000);
  sub_2657F2204();
  sub_2657F2534();
  MEMORY[0x26675FFF0](0x6C65447369203B29, 0xEE00203A64657465);
  if (*(v0 + *(v5 + 24)))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + *(v5 + 24)))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x26675FFF0](v8, v9);

  return v12;
}

uint64_t RecordMetadata.init(recordID:lastModified:isDeleted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  v9 = type metadata accessor for RecordMetadata(0);
  v10 = *(v9 + 20);
  v11 = sub_2657F22A4();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t sub_2657BCB00()
{
  v1 = 0x69646F4D7473616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6574656C65447369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444964726F636572;
  }
}

uint64_t sub_2657BCB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2657BEEA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2657BCB90(uint64_t a1)
{
  v2 = sub_2657BE55C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657BCBCC(uint64_t a1)
{
  v2 = sub_2657BE55C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecordMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800236F0, &qword_2657F3860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BE55C();
  sub_2657F2924();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  v19 = *v3;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v18[15] = 0;
  sub_2657BE5B0();

  sub_2657F2844();

  if (!v2)
  {
    v14 = type metadata accessor for RecordMetadata(0);
    v15 = *(v14 + 20);
    LOBYTE(v19) = 1;
    sub_2657F22A4();
    sub_2657B821C(&qword_280023708, MEMORY[0x277CC9578]);
    sub_2657F2844();
    v16 = *(v3 + *(v14 + 24));
    LOBYTE(v19) = 2;
    sub_2657F2834();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RecordMetadata.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v1[3];
  sub_2657F24C4();
  sub_2657F24C4();
  v6 = type metadata accessor for RecordMetadata(0);
  v7 = *(v6 + 20);
  sub_2657F22A4();
  sub_2657B821C(&unk_280023C20, MEMORY[0x277CC9578]);
  sub_2657F2464();
  v8 = *(v1 + *(v6 + 24));
  return sub_2657F28F4();
}

uint64_t RecordMetadata.hashValue.getter()
{
  v1 = v0;
  sub_2657F28D4();
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v1[3];
  sub_2657F24C4();
  sub_2657F24C4();
  v6 = type metadata accessor for RecordMetadata(0);
  v7 = *(v6 + 20);
  sub_2657F22A4();
  sub_2657B821C(&unk_280023C20, MEMORY[0x277CC9578]);
  sub_2657F2464();
  v8 = *(v1 + *(v6 + 24));
  sub_2657F28F4();
  return sub_2657F2904();
}

uint64_t RecordMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_2657F22A4();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023710, &qword_2657F3868);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for RecordMetadata(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2657BE55C();
  sub_2657F2914();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v18 = v15;
  v33 = 0;
  sub_2657BE604();
  v19 = v28;
  sub_2657F27F4();
  v20 = v31;
  v21 = v32;
  *v18 = v30;
  *(v18 + 16) = v20;
  *(v18 + 24) = v21;
  LOBYTE(v30) = 1;
  sub_2657B821C(&qword_280023720, MEMORY[0x277CC9578]);
  sub_2657F27F4();
  (*(v26 + 32))(v18 + *(v12 + 20), v7, v4);
  LOBYTE(v30) = 2;
  v22 = sub_2657F27E4();
  (*(v27 + 8))(v11, v19);
  *(v18 + *(v12 + 24)) = v22 & 1;
  sub_2657BE6CC(v18, v25, type metadata accessor for RecordMetadata);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_2657BE734(v18, type metadata accessor for RecordMetadata);
}

uint64_t sub_2657BD410(uint64_t a1)
{
  v3 = v1;
  sub_2657F28D4();
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v3[3];
  sub_2657F24C4();
  sub_2657F24C4();
  v8 = *(a1 + 20);
  sub_2657F22A4();
  sub_2657B821C(&unk_280023C20, MEMORY[0x277CC9578]);
  sub_2657F2464();
  v9 = *(v3 + *(a1 + 24));
  sub_2657F28F4();
  return sub_2657F2904();
}

uint64_t sub_2657BD4E4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v4[3];
  sub_2657F24C4();
  sub_2657F24C4();
  v9 = *(a2 + 20);
  sub_2657F22A4();
  sub_2657B821C(&unk_280023C20, MEMORY[0x277CC9578]);
  sub_2657F2464();
  v10 = *(v4 + *(a2 + 24));
  return sub_2657F28F4();
}

uint64_t sub_2657BD5A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_2657F28D4();
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v4[3];
  sub_2657F24C4();
  sub_2657F24C4();
  v9 = *(a2 + 20);
  sub_2657F22A4();
  sub_2657B821C(&unk_280023C20, MEMORY[0x277CC9578]);
  sub_2657F2464();
  v10 = *(v4 + *(a2 + 24));
  sub_2657F28F4();
  return sub_2657F2904();
}

uint64_t Record.data.getter()
{
  v1 = v0 + *(type metadata accessor for Record(0) + 20);
  v2 = *v1;
  sub_2657BB26C(*v1, *(v1 + 8));
  return v2;
}

uint64_t Record.init(metadata:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2657B881C(a1, a4);
  result = type metadata accessor for Record(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t static Record.== infix(_:_:)(void *a1, void *a2)
{
  if ((_s17SessionSyncEngine14RecordMetadataV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Record(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *v7;
  v9 = v7[1];

  return sub_2657BE32C(v5, v6, v8, v9);
}

uint64_t sub_2657BD7A4()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x617461646174656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_2657BD7D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2657F2864() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2657F2864();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2657BD8B4(uint64_t a1)
{
  v2 = sub_2657BE678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657BD8F0(uint64_t a1)
{
  v2 = sub_2657BE678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Record.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023728, &qword_2657F3870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BE678();
  sub_2657F2924();
  LOBYTE(v15) = 0;
  type metadata accessor for RecordMetadata(0);
  sub_2657B821C(&qword_280023738, type metadata accessor for RecordMetadata);
  sub_2657F2844();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for Record(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    sub_2657BB26C(v15, v12);
    sub_2657BB2C0();
    sub_2657F2844();
    sub_2657BB314(v15, v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Record.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for RecordMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023740, &qword_2657F3878);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Record(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657BE678();
  sub_2657F2914();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v21;
  LOBYTE(v24) = 0;
  sub_2657B821C(&qword_280023748, type metadata accessor for RecordMetadata);
  v18 = v22;
  sub_2657F27F4();
  sub_2657B881C(v23, v16);
  v25 = 1;
  sub_2657BB624();
  sub_2657F27F4();
  (*(v17 + 8))(v10, v18);
  *(v16 + *(v11 + 20)) = v24;
  sub_2657BE6CC(v16, v20, type metadata accessor for Record);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2657BE734(v16, type metadata accessor for Record);
}

uint64_t sub_2657BDE44(void *a1, void *a2, uint64_t a3)
{
  if ((_s17SessionSyncEngine14RecordMetadataV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_2657BE32C(v7, v8, v10, v11);
}

uint64_t sub_2657BDEB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2657F2164();
    if (v10)
    {
      v11 = sub_2657F2184();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2657F2174();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2657F2164();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2657F2184();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2657F2174();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2657BE0E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2657BE274(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2657BB314(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2657BDEB4(v14, a3, a4, &v13);
  v10 = v4;
  sub_2657BB314(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2657BE274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2657F2164();
  v11 = result;
  if (result)
  {
    result = sub_2657F2184();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2657F2174();
  sub_2657BDEB4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2657BE32C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2657BB26C(a3, a4);
          return sub_2657BE0E4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s17SessionSyncEngine14RecordMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_2657F2864()) && (v4 == v6 ? (v9 = v5 == v7) : (v9 = 0), (v9 || (sub_2657F2864()) && (v10 = type metadata accessor for RecordMetadata(0), v11 = *(v10 + 20), (sub_2657F2274())))
  {
    v12 = *(a1 + *(v10 + 24)) ^ *(a2 + *(v10 + 24)) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_2657BE55C()
{
  result = qword_2800236F8;
  if (!qword_2800236F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800236F8);
  }

  return result;
}

unint64_t sub_2657BE5B0()
{
  result = qword_280023700;
  if (!qword_280023700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023700);
  }

  return result;
}

unint64_t sub_2657BE604()
{
  result = qword_280023718;
  if (!qword_280023718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023718);
  }

  return result;
}

unint64_t sub_2657BE678()
{
  result = qword_280023730;
  if (!qword_280023730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023730);
  }

  return result;
}

uint64_t sub_2657BE6CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2657BE734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2657BE798()
{
  result = qword_281446428[0];
  if (!qword_281446428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281446428);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2657BE840(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2657BE888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2657BE900()
{
  result = sub_2657F22A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2657BE9AC()
{
  result = type metadata accessor for RecordMetadata(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncProtocolVersion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncProtocolVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2657BEB94()
{
  result = qword_280023768;
  if (!qword_280023768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023768);
  }

  return result;
}

unint64_t sub_2657BEBEC()
{
  result = qword_280023770;
  if (!qword_280023770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023770);
  }

  return result;
}

unint64_t sub_2657BEC44()
{
  result = qword_280023778;
  if (!qword_280023778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023778);
  }

  return result;
}

unint64_t sub_2657BEC9C()
{
  result = qword_280023780;
  if (!qword_280023780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023780);
  }

  return result;
}

unint64_t sub_2657BECF4()
{
  result = qword_280023788;
  if (!qword_280023788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023788);
  }

  return result;
}

unint64_t sub_2657BED4C()
{
  result = qword_280023790;
  if (!qword_280023790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023790);
  }

  return result;
}

unint64_t sub_2657BEDA4()
{
  result = qword_280023798;
  if (!qword_280023798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023798);
  }

  return result;
}

unint64_t sub_2657BEDFC()
{
  result = qword_2800237A0;
  if (!qword_2800237A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800237A0);
  }

  return result;
}

unint64_t sub_2657BEE54()
{
  result = qword_2800237A8;
  if (!qword_2800237A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800237A8);
  }

  return result;
}

uint64_t sub_2657BEEA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964726F636572 && a2 == 0xE800000000000000;
  if (v4 || (sub_2657F2864() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69646F4D7473616CLL && a2 == 0xEC00000064656966 || (sub_2657F2864() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C65447369 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_2657F2864();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2657BF018@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t SyncState.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    MEMORY[0x26675FFF0](0xD000000000000010, 0x80000002657F8030);
  }

  if ((v1 & 2) != 0)
  {
    MEMORY[0x26675FFF0](0xD000000000000012, 0x80000002657F8010);
  }

  return 0;
}

BOOL sub_2657BF158(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2657BF188@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2657BF1B4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2657BF28C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_2657BF2C0()
{
  result = qword_2800237B0;
  if (!qword_2800237B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800237B0);
  }

  return result;
}

unint64_t sub_2657BF318()
{
  result = qword_2800237B8;
  if (!qword_2800237B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800237B8);
  }

  return result;
}

unint64_t sub_2657BF370()
{
  result = qword_2800237C0;
  if (!qword_2800237C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800237C0);
  }

  return result;
}

unint64_t sub_2657BF3C8()
{
  result = qword_2800237C8;
  if (!qword_2800237C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800237C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SyncState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t MetadataStore.__allocating_init(persistentStore:)(uint64_t *a1)
{
  sub_2657BF854(a1, v11);
  type metadata accessor for MetadataStore();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F98];
  v4 = MEMORY[0x277D84FA0];
  *(v2 + 48) = MEMORY[0x277D84F98];
  *(v2 + 56) = v4;
  *(v2 + 16) = xmmword_2657F40C0;
  *(v2 + 32) = 10;
  *(v2 + 40) = v3;
  sub_2657CC364(v11, v8, &qword_2800237D0, &qword_2657F40F0);
  v5 = v9;
  if (v9)
  {
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v6 + 32))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_2657CC304(v8, &qword_2800237D0, &qword_2657F40F0);
  }

  sub_2657BF97C();
  sub_2657BFE88();
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_2657CC304(v11, &qword_2800237D0, &qword_2657F40F0);
  return v2;
}

uint64_t MetadataStore.__allocating_init(deviceObsoletionDuration:tombstoneObsoletionDuration:maximumUnsyncedRecordCount:persistentStore:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F98];
  v10 = MEMORY[0x277D84FA0];
  *(v8 + 48) = MEMORY[0x277D84F98];
  *(v8 + 56) = v10;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = a1;
  *(v8 + 40) = v9;
  sub_2657CC364(a2, v14, &qword_2800237D0, &qword_2657F40F0);
  v11 = v15;
  if (v15)
  {
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v12 + 32))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_2657CC304(v14, &qword_2800237D0, &qword_2657F40F0);
  }

  sub_2657BF97C();
  sub_2657BFE88();
  sub_2657CC304(a2, &qword_2800237D0, &qword_2657F40F0);
  return v8;
}

uint64_t MetadataStore.init(deviceObsoletionDuration:tombstoneObsoletionDuration:maximumUnsyncedRecordCount:persistentStore:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 16) = a3;
  v6 = MEMORY[0x277D84F98];
  v7 = MEMORY[0x277D84FA0];
  *(v4 + 48) = MEMORY[0x277D84F98];
  *(v4 + 56) = v7;
  *(v4 + 24) = a4;
  *(v4 + 32) = a1;
  *(v4 + 40) = v6;
  sub_2657CC364(a2, v11, &qword_2800237D0, &qword_2657F40F0);
  v8 = v12;
  if (v12)
  {
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v9 + 32))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_2657CC304(v11, &qword_2800237D0, &qword_2657F40F0);
  }

  sub_2657BF97C();
  sub_2657BFE88();
  sub_2657CC304(a2, &qword_2800237D0, &qword_2657F40F0);
  return v4;
}

uint64_t sub_2657BF854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall MetadataStore.garbageCollect()()
{
  sub_2657BF97C();

  sub_2657BFE88();
}

void *MetadataStore.deinit()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[7];

  return v0;
}

uint64_t MetadataStore.__deallocating_deinit()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2657BF97C()
{
  v1 = v0;
  v2 = sub_2657C43F4(sub_2657C4C44);
  v3 = sub_2657C43F4(sub_2657C4770);
  v4 = sub_2657C4548();
  if (qword_281446408 != -1)
  {
LABEL_23:
    swift_once();
  }

  v5 = sub_2657F2344();
  __swift_project_value_buffer(v5, qword_281446410);

  v6 = sub_2657F2334();
  v7 = sub_2657F2584();

  v47 = v2;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v48[0] = v9;
    *v8 = 136446210;
    v10 = sub_2657F2554();
    v12 = sub_2657B7F9C(v10, v11, v48);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2657B5000, v6, v7, "Removing obsolete device identifiers: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x266760A30](v9, -1, -1);
    MEMORY[0x266760A30](v8, -1, -1);
  }

  v13 = sub_2657F2334();
  v14 = sub_2657F2584();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48[0] = v16;
    *v15 = 136446210;
    v17 = sub_2657F2554();
    v19 = sub_2657B7F9C(v17, v18, v48);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2657B5000, v13, v14, "Removing bloated device identifiers: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x266760A30](v16, -1, -1);
    MEMORY[0x266760A30](v15, -1, -1);
  }

  v20 = sub_2657F2334();
  v21 = sub_2657F2584();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v48[0] = v23;
    *v22 = 136446210;
    v24 = sub_2657F2554();
    v26 = sub_2657B7F9C(v24, v25, v48);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2657B5000, v20, v21, "Removing unsynced device identifiers: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x266760A30](v23, -1, -1);
    MEMORY[0x266760A30](v22, -1, -1);
  }

  v27 = sub_2657D5414(v3, v47);
  v28 = sub_2657D5414(v4, v27);
  v2 = v28;
  v29 = 0;
  v30 = v28 + 56;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v3 = v32 & *(v28 + 56);
  v4 = (v31 + 63) >> 6;
  while (v3)
  {
LABEL_18:
    v36 = (*(v2 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v3)))));
    v38 = *v36;
    v37 = v36[1];
    swift_beginAccess();
    v39 = *(v1 + 48);

    v40 = sub_2657C8374(v38, v37);
    if (v41)
    {
      v42 = v40;
      v43 = *(v1 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v1 + 48);
      *(v1 + 48) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2657CA760(&qword_280023820, &qword_2657F41D0);
      }

      v33 = *(*(v45 + 48) + 16 * v42 + 8);

      v34 = *(*(v45 + 56) + 8 * v42);

      sub_2657F0700(v42, v45);
      *(v1 + 48) = v45;
    }

    v3 &= v3 - 1;
    swift_endAccess();
    swift_beginAccess();
    sub_2657C65BC(v38, v37);
    swift_endAccess();
  }

  while (1)
  {
    v35 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v35 >= v4)
    {
    }

    v3 = *(v30 + 8 * v35);
    ++v29;
    if (v3)
    {
      v29 = v35;
      goto LABEL_18;
    }
  }
}

uint64_t sub_2657BFE88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v61 = &v60 - v3;
  v4 = type metadata accessor for RecordMetadata(0);
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  MEMORY[0x28223BE20](v4);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023848, &qword_2657F4200);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v60 - v12);
  v74 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v14 = *(v0 + 40);
  v15 = *(v14 + 64);
  v62 = v14 + 64;
  v63 = v0;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v66 = v14;

  v21 = 0;
  v22 = &qword_280023818;
  v69 = v11;
  v64 = v13;
  while (v18)
  {
    v23 = v21;
LABEL_14:
    v26 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v27 = v26 | (v23 << 6);
    v28 = v65;
    v29 = (*(v66 + 48) + 32 * v27);
    v31 = *v29;
    v30 = v29[1];
    v33 = v29[2];
    v32 = v29[3];
    sub_2657B82A8(*(v66 + 56) + *(v67 + 72) * v27, v65);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
    v35 = *(v34 + 48);
    v36 = v69;
    *v69 = v31;
    *(v36 + 1) = v30;
    *(v36 + 2) = v33;
    *(v36 + 3) = v32;
    v11 = v36;
    v22 = &qword_280023818;
    sub_2657B881C(v28, &v36[v35]);
    (*(*(v34 - 8) + 56))(v11, 0, 1, v34);

    v25 = v23;
    v13 = v64;
LABEL_15:
    sub_2657CC3D8(v11, v13);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &qword_2657F41C8);
    if ((*(*(v37 - 8) + 48))(v13, 1, v37) == 1)
    {

      v46 = 0;
      v69 = v74;
      v47 = 1 << *(v74 + 32);
      v48 = -1;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      v49 = v74 + 56;
      v50 = v48 & *(v74 + 56);
      v51 = (v47 + 63) >> 6;
      v67 += 56;
      for (i = v61; v50; result = )
      {
        v53 = v46;
LABEL_28:
        v54 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v55 = (*(v69 + 6) + ((v53 << 11) | (32 * v54)));
        v57 = v55[1];
        v58 = v55[2];
        v59 = v55[3];
        v70 = *v55;
        v56 = v70;
        v71 = v57;
        v72 = v58;
        v73 = v59;

        sub_2657C309C(&v70);
        (*v67)(i, 1, 1, v68);
        swift_beginAccess();

        sub_2657C1304(i, v56, v57, v58, v59);
        swift_endAccess();
      }

      while (1)
      {
        v53 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_32;
        }

        if (v53 >= v51)
        {
        }

        v50 = *(v49 + 8 * v53);
        ++v46;
        if (v50)
        {
          v46 = v53;
          goto LABEL_28;
        }
      }
    }

    v38 = v22;
    v40 = *v13;
    v39 = v13[1];
    v42 = v13[2];
    v41 = v13[3];
    v43 = v13 + *(v37 + 48);
    v44 = *(v43 + *(v68 + 24));
    sub_2657B8880(v43);
    if (v44)
    {
      v70 = v40;
      v71 = v39;
      v72 = v42;
      v73 = v41;
      if (sub_2657C5340(&v70))
      {
        sub_2657C60E0(&v70, v40, v39, v42, v41);
      }
    }

    v21 = v25;
    v22 = v38;
    v11 = v69;
  }

  if (v19 <= v21 + 1)
  {
    v24 = v21 + 1;
  }

  else
  {
    v24 = v19;
  }

  v25 = v24 - 1;
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, &qword_2657F41C8);
      (*(*(v45 - 8) + 56))(v11, 1, 1, v45);
      v18 = 0;
      goto LABEL_15;
    }

    v18 = *(v62 + 8 * v23);
    ++v21;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t MetadataStore.unknownRecordIDs(in:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_beginAccess();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v27 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  v26 = v2;
  while (2)
  {
    v29 = v5;
LABEL_4:
    if (v4 >= v2)
    {
LABEL_36:
      __break(1u);
    }

    else if (!__OFADD__(v4, 1))
    {
      v6 = 0;
      v7 = (v27 + 32 * v4);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[3];
      v31 = v4 + 1;
      v32 = v7[2];
      v11 = *(v28 + 40);
      v12 = 1 << *(v11 + 32);
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(v11 + 64);
      v30 = v4 + 1;
      v15 = (v12 + 63) >> 6;
      while (v14)
      {
LABEL_15:
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v18 = (*(v11 + 48) + ((v6 << 11) | (32 * v17)));
        result = *v18;
        v19 = v18[2];
        v20 = v18[3];
        if (*v18 != v8 || v18[1] != v9)
        {
          result = sub_2657F2864();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        if (v19 != v32 || v20 != v10)
        {
          result = sub_2657F2864();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v2 = v26;
        v5 = v29;
        v4 = v31;
        if (v30 != v26)
        {
          goto LABEL_4;
        }

        return v5;
      }

      while (1)
      {
        v16 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          goto LABEL_36;
        }

        if (v16 >= v15)
        {
          break;
        }

        v14 = *(v11 + 64 + 8 * v16);
        ++v6;
        if (v14)
        {
          v6 = v16;
          goto LABEL_15;
        }
      }

      v5 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2657CB07C(0, *(v29 + 16) + 1, 1);
        v5 = v29;
      }

      v2 = v26;
      v4 = v31;
      v24 = *(v5 + 16);
      v23 = *(v5 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_2657CB07C((v23 > 1), v24 + 1, 1);
        v5 = v29;
      }

      *(v5 + 16) = v24 + 1;
      v25 = (v5 + 32 * v24);
      v25[4] = v8;
      v25[5] = v9;
      v25[6] = v32;
      v25[7] = v10;
      if (v30 != v26)
      {
        continue;
      }

      return v5;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_2657C066C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v30 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
  v6 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v27 = &v27 - v7;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v31 = a3;

  v14 = 0;
  while (v11)
  {
    v33 = v4;
LABEL_10:
    v16 = __clz(__rbit64(v11)) | (v14 << 6);
    v17 = *(v31 + 56);
    v18 = (*(v31 + 48) + 32 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[3];
    v32 = v18[2];
    v22 = v17 + *(*(type metadata accessor for RecordMetadata(0) - 8) + 72) * v16;
    v23 = v27;
    sub_2657B82A8(v22, &v27[*(v28 + 48)]);
    *v23 = v19;
    v23[1] = v20;
    v23[2] = v32;
    v23[3] = v21;

    v24 = v30;
    v25 = v33;
    v26 = v29(v23);
    v4 = v25;
    result = sub_2657CC304(v23, &qword_280023818, &qword_2657F41C8);
    if (v25)
    {
      goto LABEL_14;
    }

    v11 &= v11 - 1;
    if (v26)
    {
      v24 = 1;
LABEL_14:

      return v24 & 1;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      v24 = 0;
      goto LABEL_14;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v33 = v4;
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657C0864(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a1;
  v32 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023810, &qword_2657F41C0);
  v6 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v29 - v7;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v33 = a3;

  v14 = 0;
  while (v11)
  {
    v35 = v4;
LABEL_10:
    v16 = __clz(__rbit64(v11)) | (v14 << 6);
    v17 = *(v33 + 56);
    v18 = (*(v33 + 48) + 32 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[3];
    v34 = v18[2];
    v22 = sub_2657F22A4();
    v23 = *(v22 - 8);
    v24 = v17 + *(v23 + 72) * v16;
    v25 = v29;
    (*(v23 + 16))(&v29[*(v30 + 48)], v24, v22);
    *v25 = v19;
    v25[1] = v20;
    v25[2] = v34;
    v25[3] = v21;

    v26 = v32;
    v27 = v35;
    v28 = v31(v25);
    v4 = v27;
    result = sub_2657CC304(v25, &qword_280023810, &qword_2657F41C0);
    if (v27)
    {
      goto LABEL_14;
    }

    v11 &= v11 - 1;
    if (v28)
    {
      v26 = 1;
LABEL_14:

      return v26 & 1;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      v26 = 0;
      goto LABEL_14;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v35 = v4;
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t MetadataStore.recordIDs(minus:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);

  v5 = sub_2657CB6D4(v4, a1);

  v6 = sub_2657C0B04(v5);

  return v6;
}

uint64_t sub_2657C0B04(uint64_t a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
  v3 = *(*(v57 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v57);
  v56 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v55 = (&v48 - v7);
  MEMORY[0x28223BE20](v6);
  v54 = (&v48 - v8);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v48 = v1;
  v64 = MEMORY[0x277D84F90];
  sub_2657CB07C(0, v9, 0);
  v10 = v64;
  v11 = a1 + 64;
  v12 = -1 << *(a1 + 32);
  result = sub_2657F2674();
  v14 = result;
  v15 = 0;
  v16 = *(a1 + 36);
  v49 = a1 + 72;
  v50 = v9;
  v51 = v16;
  v52 = a1 + 64;
  v53 = a1;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v18 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_22;
    }

    if (v16 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v58 = v15;
    v63 = v10;
    v19 = v57;
    v20 = *(v57 + 48);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v23 = (v21 + 32 * v14);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    v27 = v54;
    *v54 = *v23;
    v27[1] = v24;
    v27[2] = v25;
    v27[3] = v26;
    v28 = type metadata accessor for RecordMetadata(0);
    sub_2657B82A8(v22 + *(*(v28 - 8) + 72) * v14, v27 + v20);
    v29 = v27[2];
    v30 = v27[3];
    v31 = v55;
    *v55 = *v27;
    *(v31 + 16) = v29;
    *(v31 + 24) = v30;
    sub_2657B881C(v27 + v20, v31 + *(v19 + 48));
    v32 = v56;
    sub_2657CC364(v31, v56, &qword_280023818, &qword_2657F41C8);
    v33 = *v32;
    v61 = v32[1];
    v62 = v33;
    v34 = v32[2];
    v59 = v32[3];
    v60 = v34;
    v35 = *(v19 + 48);
    v10 = v63;

    sub_2657B8880(v32 + v35);
    result = sub_2657CC304(v31, &qword_280023818, &qword_2657F41C8);
    v64 = v10;
    v37 = *(v10 + 16);
    v36 = *(v10 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_2657CB07C((v36 > 1), v37 + 1, 1);
      v10 = v64;
    }

    *(v10 + 16) = v37 + 1;
    v38 = (v10 + 32 * v37);
    v39 = v61;
    v38[4] = v62;
    v38[5] = v39;
    v40 = v59;
    v38[6] = v60;
    v38[7] = v40;
    a1 = v53;
    v17 = 1 << *(v53 + 32);
    if (v14 >= v17)
    {
      goto LABEL_24;
    }

    v11 = v52;
    v41 = *(v52 + 8 * v18);
    if ((v41 & (1 << v14)) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v16) = v51;
    if (v51 != *(v53 + 36))
    {
      goto LABEL_26;
    }

    v42 = v41 & (-2 << (v14 & 0x3F));
    if (v42)
    {
      v17 = __clz(__rbit64(v42)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v43 = v18 << 6;
      v44 = v18 + 1;
      v45 = (v49 + 8 * v18);
      while (v44 < (v17 + 63) >> 6)
      {
        v47 = *v45++;
        v46 = v47;
        v43 += 64;
        ++v44;
        if (v47)
        {
          result = sub_2657CC3CC(v14, v51, 0);
          v17 = __clz(__rbit64(v46)) + v43;
          goto LABEL_4;
        }
      }

      result = sub_2657CC3CC(v14, v51, 0);
    }

LABEL_4:
    v15 = v58 + 1;
    v14 = v17;
    if (v58 + 1 == v50)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2657C0EE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2657F22A4();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v43 = &v41 - v12;
  v41 = type metadata accessor for RecordMetadata(0);
  v46 = *(v41 - 8);
  v13 = *(v46 + 64);
  v14 = MEMORY[0x28223BE20](v41);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v22 = a1[3];
  swift_beginAccess();
  v23 = *(v4 + 48);
  if (!*(v23 + 16))
  {
    goto LABEL_12;
  }

  v24 = *(v4 + 48);

  v25 = sub_2657C8374(a2, a3);
  if ((v26 & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = *(*(v23 + 56) + 8 * v25);

  swift_beginAccess();
  v28 = *(v4 + 40);
  if (!*(v28 + 16))
  {
    goto LABEL_10;
  }

  v29 = *(v4 + 40);

  v30 = sub_2657B830C(v19, v20, v21, v22);
  if ((v31 & 1) == 0)
  {

LABEL_10:

LABEL_12:
    v39 = 0;
    return v39 & 1;
  }

  sub_2657B82A8(*(v28 + 56) + *(v46 + 72) * v30, v16);

  sub_2657B881C(v16, v18);
  if (!*(v27 + 16) || (v32 = sub_2657B830C(v19, v20, v21, v22), (v33 & 1) == 0))
  {

    sub_2657B8880(v18);
    goto LABEL_12;
  }

  v35 = v44;
  v34 = v45;
  v36 = v42;
  (*(v44 + 16))(v42, *(v27 + 56) + *(v44 + 72) * v32, v45);

  v37 = v43;
  (*(v35 + 32))(v43, v36, v34);
  v38 = *(v41 + 20);
  v39 = sub_2657F2234();
  (*(v35 + 8))(v37, v34);
  sub_2657B8880(v18);
  return v39 & 1;
}

uint64_t sub_2657C1244(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v7 = *(v3 + 40);

  v9 = sub_2657CBD54(v8, v3, a1, a2, a3, a3);

  v10 = sub_2657C0B04(v9);

  return v10;
}

uint64_t sub_2657C1304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = type metadata accessor for RecordMetadata(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v19 + 48))(a1, 1) == 1)
  {
    sub_2657CC304(a1, &unk_280023C10, &qword_2657F4100);
    sub_2657EBF08(a2, a3, a4, a5, v14);

    return sub_2657CC304(v14, &unk_280023C10, &qword_2657F4100);
  }

  else
  {
    sub_2657B881C(a1, v18);
    v21 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;
    sub_2657C936C(v18, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v24;
  }

  return result;
}

uint64_t sub_2657C151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(unint64_t, uint64_t))
{
  v9 = v6;
  if (a1)
  {
    v13 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v6;
    sub_2657C97E4(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v6 = v25;
  }

  else
  {
    v17 = *v6;
    v18 = sub_2657C8374(a2, a3);
    LOBYTE(v17) = v19;

    if (v17)
    {
      v20 = *v9;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v9;
      v26 = *v9;
      if (!v21)
      {
        sub_2657CA760(a4, a5);
        v22 = v26;
      }

      v23 = *(*(v22 + 48) + 16 * v18 + 8);

      v24 = *(*(v22 + 56) + 8 * v18);

      result = a6(v18, v22);
      *v9 = v22;
    }
  }

  return result;
}

uint64_t sub_2657C163C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_2657F22A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_2657CC304(a1, &qword_2800237F8, &qword_2657F41A8);
    sub_2657EC094(a2, a3, v10);

    return sub_2657CC304(v10, &qword_2800237F8, &qword_2657F41A8);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2657C9650(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_2657C1814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2657C9984(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2657C8374(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_2657CA8C0();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_2657EC628(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t MetadataStore.set(syncDate:for:pairedDeviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a1;
  v9 = sub_2657F22A4();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (!v14)
  {
    return result;
  }

  swift_beginAccess();
  v15 = *(v4 + 48);
  v16 = *(v15 + 16);
  v43 = a4;
  v44 = v5;
  v42 = a3;
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = sub_2657C8374(a3, a4);
  if ((v18 & 1) == 0)
  {

LABEL_6:
    v19 = sub_2657CBFA0(MEMORY[0x277D84F90]);
    goto LABEL_7;
  }

  v19 = *(*(v15 + 56) + 8 * v17);

LABEL_7:
  v49 = *(v52 + 16);
  v50 = v52 + 16;
  v45 = v52 + 40;
  v46 = v52 + 32;
  v20 = (a2 + 56);
  v47 = v13;
  v48 = v9;
  while (v14)
  {
    v53 = v14;
    v21 = *(v20 - 3);
    v22 = *(v20 - 2);
    v23 = *(v20 - 1);
    v24 = *v20;
    v49(v13, v51, v9);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v19;
    v27 = sub_2657B830C(v21, v22, v23, v24);
    v28 = v19[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v19[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v48;
        if (v26)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_2657C9E48();
        v9 = v48;
        if (v31)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_2657C8430(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_2657B830C(v21, v22, v23, v24);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
      v9 = v48;
      if (v31)
      {
LABEL_8:

        v19 = v55;
        v13 = v47;
        (*(v52 + 40))(v55[7] + *(v52 + 72) * v27, v47, v9);
        goto LABEL_9;
      }
    }

    v19 = v55;
    v55[(v27 >> 6) + 8] |= 1 << v27;
    v34 = (v19[6] + 32 * v27);
    *v34 = v21;
    v34[1] = v22;
    v34[2] = v23;
    v34[3] = v24;
    v13 = v47;
    (*(v52 + 32))(v19[7] + *(v52 + 72) * v27, v47, v9);
    v35 = v19[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_26;
    }

    v19[2] = v37;
LABEL_9:
    v20 += 4;
    v14 = v53 - 1;
    if (v53 == 1)
    {
      v38 = v44;
      swift_beginAccess();
      v39 = v43;

      v40 = *(v38 + 48);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v54 = *(v38 + 48);
      *(v38 + 48) = 0x8000000000000000;
      sub_2657C97E4(v19, v42, v39, v41, &qword_280023820, &qword_2657F41D0);

      *(v38 + 48) = v54;
      swift_endAccess();
      sub_2657BF97C();
      return sub_2657BFE88();
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2657F2884();
  __break(1u);
  return result;
}

uint64_t MetadataStore.set(syncDate:forRecordsMatching:pairedDeviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a3;
  v88 = a1;
  v7 = sub_2657F22A4();
  v89 = *(v7 - 8);
  v8 = *(v89 + 64);
  MEMORY[0x28223BE20](v7);
  v92 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237D8, &qword_2657F40F8);
  v10 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v95 = v86 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v94 = (v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v86 - v17;
  MEMORY[0x28223BE20](v16);
  v105 = v86 - v19;
  v20 = type metadata accessor for RecordMetadata(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  result = MEMORY[0x28223BE20](v23);
  v27 = (v86 - v26);
  v28 = *(a2 + 16);
  if (!v28)
  {
    return result;
  }

  v90 = v25;
  v102 = v18;
  swift_beginAccess();
  v29 = *(v4 + 48);
  v30 = *(v29 + 16);
  v91 = v7;
  if (!v30)
  {
    goto LABEL_6;
  }

  v31 = sub_2657C8374(v104, a4);
  if ((v32 & 1) == 0)
  {

LABEL_6:
    v93 = sub_2657CBFA0(MEMORY[0x277D84F90]);
    goto LABEL_7;
  }

  v93 = *(*(v29 + 56) + 8 * v31);

LABEL_7:
  v33 = a2 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  swift_beginAccess();
  v97 = (v21 + 48);
  v98 = (v21 + 56);
  v103 = *(v21 + 72);
  v87 = (v89 + 16);
  v86[2] = v89 + 32;
  v86[1] = v89 + 40;
  v34 = v95;
  v35 = v102;
  v99 = v20;
  v104 = v27;
  v101 = v4;
  while (1)
  {
    sub_2657B82A8(v33, v27);
    v39 = *(v4 + 40);
    if (*(v39 + 16))
    {
      v41 = v27[2];
      v40 = v27[3];
      v43 = *v27;
      v42 = v27[1];

      v44 = sub_2657B830C(v43, v42, v41, v40);
      if (v45)
      {
        sub_2657B82A8(*(v39 + 56) + v44 * v103, v105);
        v46 = 0;
      }

      else
      {
        v46 = 1;
      }

      v34 = v95;
      v35 = v102;
    }

    else
    {
      v46 = 1;
    }

    v47 = v99;
    v48 = *v98;
    v49 = v105;
    (*v98)(v105, v46, 1, v99);
    sub_2657B82A8(v104, v35);
    v48(v35, 0, 1, v47);
    v50 = *(v100 + 48);
    sub_2657CC364(v35, v34, &unk_280023C10, &qword_2657F4100);
    sub_2657CC364(v49, v34 + v50, &unk_280023C10, &qword_2657F4100);
    v51 = *v97;
    if ((*v97)(v34, 1, v47) == 1)
    {
      sub_2657CC304(v35, &unk_280023C10, &qword_2657F4100);
      if (v51(v34 + v50, 1, v47) != 1)
      {
        sub_2657CC304(v105, &unk_280023C10, &qword_2657F4100);
        v27 = v104;
        v4 = v101;
        goto LABEL_9;
      }

      sub_2657CC304(v34, &unk_280023C10, &qword_2657F4100);
      v27 = v104;
    }

    else
    {
      v96 = v28;
      v66 = v94;
      sub_2657CC364(v34, v94, &unk_280023C10, &qword_2657F4100);
      if (v51(v34 + v50, 1, v47) == 1)
      {
        sub_2657CC304(v35, &unk_280023C10, &qword_2657F4100);
        sub_2657CC304(v105, &unk_280023C10, &qword_2657F4100);
        sub_2657B8880(v66);
        v27 = v104;
        v4 = v101;
        v28 = v96;
LABEL_9:
        v36 = v34;
        v37 = &qword_2800237D8;
        v38 = &qword_2657F40F8;
        goto LABEL_10;
      }

      v67 = v90;
      sub_2657B881C(v34 + v50, v90);
      v68 = v66[2];
      v69 = v66[3];
      v70 = v67[2];
      v71 = v67[3];
      if ((*v66 != *v67 || v66[1] != v67[1]) && (sub_2657F2864() & 1) == 0 || (v68 != v70 || v69 != v71) && (sub_2657F2864() & 1) == 0)
      {
        sub_2657B8880(v90);
        v35 = v102;
        sub_2657CC304(v102, &unk_280023C10, &qword_2657F4100);
        v73 = v94;
LABEL_45:
        v28 = v96;
        sub_2657B8880(v73);
        sub_2657CC304(v34, &unk_280023C10, &qword_2657F4100);
        v27 = v104;
        v4 = v101;
LABEL_46:
        v36 = v105;
        v37 = &unk_280023C10;
        v38 = &qword_2657F4100;
LABEL_10:
        sub_2657CC304(v36, v37, v38);
        sub_2657B8880(v27);
        goto LABEL_11;
      }

      v72 = *(v47 + 20);
      v73 = v94;
      v74 = v90;
      v75 = sub_2657F2274();
      v35 = v102;
      sub_2657CC304(v102, &unk_280023C10, &qword_2657F4100);
      if ((v75 & 1) == 0)
      {
        sub_2657B8880(v74);
        goto LABEL_45;
      }

      v76 = *(v47 + 24);
      v77 = *(v73 + v76);
      v78 = v73;
      v79 = *(v74 + v76);
      sub_2657B8880(v74);
      sub_2657B8880(v78);
      sub_2657CC304(v34, &unk_280023C10, &qword_2657F4100);
      v80 = v77 == v79;
      v27 = v104;
      v4 = v101;
      v28 = v96;
      if (!v80)
      {
        goto LABEL_46;
      }
    }

    v52 = *v27;
    v53 = v27[1];
    v54 = v27[2];
    v55 = v27[3];
    (*v87)(v92, v88, v91);
    v56 = v93;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v56;
    v59 = sub_2657B830C(v52, v53, v54, v55);
    v60 = *(v56 + 16);
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      break;
    }

    v63 = v58;
    if (*(v56 + 24) >= v62)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2657C9E48();
      }
    }

    else
    {
      sub_2657C8430(v62, isUniquelyReferenced_nonNull_native);
      v64 = sub_2657B830C(v52, v53, v54, v55);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_51;
      }

      v59 = v64;
    }

    v27 = v104;
    v81 = v106;
    v93 = v106;
    if (v63)
    {
      (*(v89 + 40))(v106[7] + *(v89 + 72) * v59, v92, v91);
      sub_2657CC304(v105, &unk_280023C10, &qword_2657F4100);
    }

    else
    {
      v106[(v59 >> 6) + 8] |= 1 << v59;
      v82 = (v81[6] + 32 * v59);
      *v82 = v52;
      v82[1] = v53;
      v82[2] = v54;
      v82[3] = v55;
      (*(v89 + 32))(v81[7] + *(v89 + 72) * v59, v92, v91);

      sub_2657CC304(v105, &unk_280023C10, &qword_2657F4100);
      v83 = v81[2];
      v84 = __OFADD__(v83, 1);
      v85 = v83 + 1;
      if (v84)
      {
        goto LABEL_50;
      }

      v81[2] = v85;
    }

    sub_2657B8880(v27);
    v4 = v101;
    v35 = v102;
    v34 = v95;
LABEL_11:
    v33 += v103;
    if (!--v28)
    {

      sub_2657BF97C();
      return sub_2657BFE88();
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_2657F2884();
  __break(1u);
  return result;
}

uint64_t MetadataStore.recordMetadata(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  swift_beginAccess();
  v8 = *(v2 + 40);
  if (*(v8 + 16))
  {

    v9 = sub_2657B830C(v4, v5, v6, v7);
    if (v10)
    {
      v11 = v9;
      v12 = *(v8 + 56);
      v13 = type metadata accessor for RecordMetadata(0);
      v14 = *(v13 - 8);
      sub_2657B82A8(v12 + *(v14 + 72) * v11, a2);

      return (*(v14 + 56))(a2, 0, 1, v13);
    }
  }

  v16 = type metadata accessor for RecordMetadata(0);
  return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

Swift::Void __swiftcall MetadataStore.purge()()
{
  v1 = v0;
  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v2 = sub_2657F2344();
  __swift_project_value_buffer(v2, qword_281446410);
  v3 = sub_2657F2334();
  v4 = sub_2657F2584();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2657B5000, v3, v4, "Purging metadata store records", v5, 2u);
    MEMORY[0x266760A30](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = v1[5];
  v7 = MEMORY[0x277D84F98];
  v1[5] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v8 = v1[6];
  v1[6] = v7;

  swift_beginAccess();
  v9 = v1[7];
  v1[7] = MEMORY[0x277D84FA0];
}

Swift::Void __swiftcall MetadataStore.update(metadata:)(Swift::OpaquePointer metadata)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237D8, &qword_2657F40F8);
  v2 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v4 = &v84 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v86 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v91 = (&v84 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v98 = &v84 - v12;
  MEMORY[0x28223BE20](v11);
  v99 = &v84 - v13;
  v14 = type metadata accessor for RecordMetadata(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v85 = (&v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v84 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = (&v84 - v22);
  v97 = *(metadata._rawValue + 2);
  if (v97)
  {
    v24 = metadata._rawValue + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    swift_beginAccess();
    v25 = v24;
    v90 = *(v15 + 72);
    v93 = (v15 + 56);
    v26 = (v15 + 48);
    *&v27 = 136446210;
    v84 = v27;
    v95 = v14;
    v87 = v21;
    v89 = (v15 + 48);
    do
    {
      v96 = v25;
      sub_2657B82A8(v25, v23);
      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v29 = sub_2657F2344();
      __swift_project_value_buffer(v29, qword_281446410);
      sub_2657B82A8(v23, v21);
      v30 = sub_2657F2334();
      v31 = sub_2657F2584();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = v21;
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v100[0] = v34;
        *v33 = v84;
        v35 = RecordMetadata.description.getter();
        v37 = v36;
        sub_2657B8880(v32);
        v38 = v35;
        v26 = v89;
        v39 = sub_2657B7F9C(v38, v37, v100);

        *(v33 + 4) = v39;
        _os_log_impl(&dword_2657B5000, v30, v31, "Updating record metadata: %{public}s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        v40 = v34;
        v14 = v95;
        MEMORY[0x266760A30](v40, -1, -1);
        MEMORY[0x266760A30](v33, -1, -1);
      }

      else
      {

        sub_2657B8880(v21);
      }

      v41 = *(v94 + 40);
      if (*(v41 + 16))
      {
        v43 = v23[2];
        v42 = v23[3];
        v45 = *v23;
        v44 = v23[1];
        v46 = *(v94 + 40);

        v47 = sub_2657B830C(v45, v44, v43, v42);
        if (v48)
        {
          sub_2657B82A8(*(v41 + 56) + v47 * v90, v99);
          v49 = 0;
        }

        else
        {
          v49 = 1;
        }
      }

      else
      {
        v49 = 1;
      }

      v50 = *v93;
      v51 = v99;
      (*v93)(v99, v49, 1, v14);
      v52 = v98;
      sub_2657B82A8(v23, v98);
      v92 = v50;
      v50(v52, 0, 1, v14);
      v53 = *(v88 + 48);
      sub_2657CC364(v51, v4, &unk_280023C10, &qword_2657F4100);
      sub_2657CC364(v52, &v4[v53], &unk_280023C10, &qword_2657F4100);
      v54 = *v26;
      if ((*v26)(v4, 1, v14) == 1)
      {
        sub_2657CC304(v98, &unk_280023C10, &qword_2657F4100);
        if (v54(&v4[v53], 1, v14) != 1)
        {
          goto LABEL_21;
        }

        sub_2657CC304(v99, &unk_280023C10, &qword_2657F4100);
        v28 = v4;
      }

      else
      {
        sub_2657CC364(v4, v91, &unk_280023C10, &qword_2657F4100);
        if (v54(&v4[v53], 1, v14) == 1)
        {
          sub_2657CC304(v98, &unk_280023C10, &qword_2657F4100);
          sub_2657B8880(v91);
LABEL_21:
          v55 = v4;
          v56 = &qword_2800237D8;
          v57 = &qword_2657F40F8;
          goto LABEL_34;
        }

        v58 = &v4[v53];
        v59 = v85;
        sub_2657B881C(v58, v85);
        v60 = v91[2];
        v61 = v91[3];
        v62 = *v59;
        v63 = v59[1];
        v65 = v59[2];
        v64 = v59[3];
        if ((*v91 != v62 || v91[1] != v63) && (sub_2657F2864() & 1) == 0 || (v60 != v65 || v61 != v64) && (sub_2657F2864() & 1) == 0)
        {
          sub_2657B8880(v85);
          sub_2657CC304(v98, &unk_280023C10, &qword_2657F4100);
          goto LABEL_33;
        }

        v66 = *(v14 + 20);
        v67 = v85;
        v68 = sub_2657F2274();
        sub_2657CC304(v98, &unk_280023C10, &qword_2657F4100);
        if ((v68 & 1) == 0)
        {
          sub_2657B8880(v67);
LABEL_33:
          sub_2657B8880(v91);
          v55 = v4;
          v56 = &unk_280023C10;
          v57 = &qword_2657F4100;
LABEL_34:
          sub_2657CC304(v55, v56, v57);
LABEL_35:
          v74 = v23[1];
          v75 = v23[2];
          v76 = v23[3];
          v100[0] = *v23;
          v100[1] = v74;
          v100[2] = v75;
          v100[3] = v76;

          sub_2657C309C(v100);

          v77 = *v23;
          v78 = v23[1];
          v79 = v23[2];
          v80 = v23[3];
          v81 = v4;
          v82 = v86;
          sub_2657B82A8(v23, v86);
          v92(v82, 0, 1, v95);
          swift_beginAccess();

          v83 = v82;
          v4 = v81;
          v26 = v89;
          v14 = v95;
          sub_2657C1304(v83, v77, v78, v79, v80);
          swift_endAccess();
          v28 = v99;
          goto LABEL_4;
        }

        v69 = *(v14 + 24);
        v70 = v91;
        v71 = *(v91 + v69);
        v72 = v67;
        v73 = *(v67 + v69);
        sub_2657B8880(v72);
        sub_2657B8880(v70);
        sub_2657CC304(v4, &unk_280023C10, &qword_2657F4100);
        v28 = v99;
        if (v71 != v73)
        {
          goto LABEL_35;
        }
      }

LABEL_4:
      sub_2657CC304(v28, &unk_280023C10, &qword_2657F4100);
      sub_2657B8880(v23);
      v25 = v96 + v90;
      --v97;
      v21 = v87;
    }

    while (v97);
  }
}

uint64_t sub_2657C309C(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v70 = &v65 - v6;
  v7 = *a1;
  v68 = a1[1];
  v69 = v7;
  v8 = a1[2];
  v66 = a1[3];
  v67 = v8;
  swift_beginAccess();
  v9 = *(v2 + 48);
  v12 = *(v9 + 64);
  v11 = v9 + 64;
  v10 = v12;
  v13 = 1 << *(*(v2 + 48) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v72 = *(v2 + 48);

  v17 = 0;
  v71 = v2;
  if (v15)
  {
    while (1)
    {
LABEL_8:
      v19 = __clz(__rbit64(v15)) | (v17 << 6);
      v20 = *(v72 + 56);
      v21 = (*(v72 + 48) + 16 * v19);
      v22 = v21[1];
      v73 = *v21;
      v23 = *(v20 + 8 * v19);

      v24 = sub_2657B830C(v69, v68, v67, v66);
      if (v25)
      {
        v26 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v23;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_2657C9E48();
          v23 = v75;
        }

        v28 = v23[6] + 32 * v26;
        v29 = *(v28 + 8);
        v30 = *(v28 + 24);

        v31 = v23[7];
        v32 = sub_2657F22A4();
        v33 = *(v32 - 8);
        v34 = v31 + *(v33 + 72) * v26;
        v35 = v70;
        (*(v33 + 32))(v70, v34, v32);
        sub_2657EC204(v26, v23);
        v36 = v32;
        v37 = v35;
        (*(v33 + 56))(v35, 0, 1, v36);
        v2 = v71;
      }

      else
      {
        v38 = sub_2657F22A4();
        v37 = v70;
        (*(*(v38 - 8) + 56))(v70, 1, 1, v38);
      }

      v15 &= v15 - 1;
      sub_2657CC304(v37, &qword_2800237F8, &qword_2657F41A8);
      if (v23[2])
      {
        break;
      }

      swift_beginAccess();
      v55 = *(v2 + 48);
      v56 = sub_2657C8374(v73, v22);
      LOBYTE(v55) = v57;

      if (v55)
      {
        v58 = *(v2 + 48);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v50 = *(v2 + 48);
        v74 = v50;
        *(v2 + 48) = 0x8000000000000000;
        if (!v59)
        {
          sub_2657CA760(&qword_280023820, &qword_2657F41D0);
          v50 = v74;
        }

        v60 = *(v50[6] + 16 * v56 + 8);

        v61 = *(v50[7] + 8 * v56);

        sub_2657F0700(v56, v50);
        goto LABEL_28;
      }

LABEL_29:
      swift_endAccess();
      if (!v15)
      {
        goto LABEL_4;
      }
    }

    swift_beginAccess();
    v39 = *(v2 + 48);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v74 = *(v2 + 48);
    v41 = v74;
    *(v2 + 48) = 0x8000000000000000;
    v43 = sub_2657C8374(v73, v22);
    v44 = v41[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_35;
    }

    v47 = v42;
    if (v41[3] < v46)
    {
      sub_2657C8E24(v46, v40, &qword_280023820, &qword_2657F41D0);
      v48 = sub_2657C8374(v73, v22);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_37;
      }

      v43 = v48;
      if ((v47 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:

      v50 = v74;
      v62 = v74[7];
      v63 = *(v62 + 8 * v43);
      *(v62 + 8 * v43) = v23;

LABEL_27:
      v2 = v71;
LABEL_28:
      *(v2 + 48) = v50;
      goto LABEL_29;
    }

    if (v40)
    {
      if (v42)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_2657CA760(&qword_280023820, &qword_2657F41D0);
      if (v47)
      {
        goto LABEL_26;
      }
    }

LABEL_18:
    v50 = v74;
    v74[(v43 >> 6) + 8] |= 1 << v43;
    v51 = (v50[6] + 16 * v43);
    *v51 = v73;
    v51[1] = v22;
    *(v50[7] + 8 * v43) = v23;
    v52 = v50[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      goto LABEL_36;
    }

    v50[2] = v54;
    goto LABEL_27;
  }

LABEL_4:
  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
    }

    v15 = *(v11 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_2657F2884();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall MetadataStore.hasMetadata(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  if (*(*(v1 + 48) + 16))
  {
    v4 = *(v1 + 48);

    sub_2657C8374(countAndFlagsBits, object);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t MetadataStore.isValid(at:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  v7[2] = a1;

  v4 = sub_2657C066C(sub_2657CC198, v7, v3);

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_2657C36A0(a1);
  }

  return v5 & 1;
}

uint64_t sub_2657C36A0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(v1 + 48);

  v10 = 0;
  while (v6)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = *(*(v3 + 56) + ((v11 << 9) | (8 * v12)));
    MEMORY[0x28223BE20](result);
    v16[2] = a1;

    v14 = sub_2657C0864(sub_2657CC2A8, v16, v13);

    if (v14)
    {
      v15 = 0;
LABEL_13:

      return v15;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {
      v15 = 1;
      goto LABEL_13;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MetadataStore.remove(pairedDeviceIdentifier:)(Swift::String pairedDeviceIdentifier)
{
  object = pairedDeviceIdentifier._object;
  countAndFlagsBits = pairedDeviceIdentifier._countAndFlagsBits;
  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v3 = sub_2657F2344();
  __swift_project_value_buffer(v3, qword_281446410);

  v4 = sub_2657F2334();
  v5 = sub_2657F2584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2657B7F9C(countAndFlagsBits, object, &v8);
    _os_log_impl(&dword_2657B5000, v4, v5, "Removing paired device identifier: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x266760A30](v7, -1, -1);
    MEMORY[0x266760A30](v6, -1, -1);
  }

  swift_beginAccess();
  sub_2657C65BC(countAndFlagsBits, object);
  swift_endAccess();

  swift_beginAccess();

  sub_2657C151C(0, countAndFlagsBits, object, &qword_280023820, &qword_2657F41D0, sub_2657F0700);
  swift_endAccess();
}

Swift::Bool __swiftcall MetadataStore.hasPerformedInitialSync(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 56);

  LOBYTE(object) = sub_2657C3A68(countAndFlagsBits, object, v4);

  return object & 1;
}

uint64_t sub_2657C3A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2657F28D4();
  sub_2657F24C4();
  v7 = sub_2657F2904();
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
    if (v12 || (sub_2657F2864() & 1) != 0)
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

Swift::Void __swiftcall MetadataStore.setPerformedInitialSync(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();
  v4 = *(v1 + 56);

  v5 = sub_2657C3A68(countAndFlagsBits, object, v4);

  if ((v5 & 1) == 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v6 = sub_2657F2344();
    __swift_project_value_buffer(v6, qword_281446410);

    v7 = sub_2657F2334();
    v8 = sub_2657F2584();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_2657B7F9C(countAndFlagsBits, object, &v11);
      _os_log_impl(&dword_2657B5000, v7, v8, "Adding paired device identifier: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x266760A30](v10, -1, -1);
      MEMORY[0x266760A30](v9, -1, -1);
    }

    swift_beginAccess();

    sub_2657C5F90(&v12, countAndFlagsBits, object);
    swift_endAccess();
  }
}

Swift::Void __swiftcall MetadataStore.forget(recordID:)(SessionSyncEngine::RecordID recordID)
{
  countAndFlagsBits = recordID.identifier._countAndFlagsBits;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v11 - v4;
  v6 = *countAndFlagsBits;
  v7 = countAndFlagsBits[1];
  v8 = countAndFlagsBits[2];
  v9 = countAndFlagsBits[3];
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  sub_2657C309C(v11);
  v10 = type metadata accessor for RecordMetadata(0);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  swift_beginAccess();

  sub_2657C1304(v5, v6, v7, v8, v9);
  swift_endAccess();
}

uint64_t sub_2657C3E80(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);

  v6 = sub_2657CB6D4(v5, a1);

  v7 = sub_2657C0B04(v6);

  return v7;
}

uint64_t sub_2657C3F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *v5;
  swift_beginAccess();
  v10 = *(v9 + 40);

  v12 = sub_2657CBD54(v11, v9, a1, a2, a5, a5);

  v13 = sub_2657C0B04(v12);

  return v13;
}

uint64_t sub_2657C40BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  if (*(*(v5 + 48) + 16))
  {
    v6 = *(v5 + 48);

    sub_2657C8374(a1, a2);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2657C4144()
{
  v1 = *v0;
  sub_2657BF97C();
  return sub_2657BFE88();
}

uint64_t sub_2657C416C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v8[2] = a1;

  v5 = sub_2657C066C(sub_2657CC448, v8, v4);

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_2657C36A0(a1);
  }

  return v6 & 1;
}

uint64_t sub_2657C4230(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v14 - v5;
  v7 = *v1;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v14[0] = v8;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  sub_2657C309C(v14);
  v12 = type metadata accessor for RecordMetadata(0);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  swift_beginAccess();

  sub_2657C1304(v6, v8, v9, v10, v11);
  return swift_endAccess();
}

uint64_t sub_2657C4358(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 56);

  LOBYTE(a2) = sub_2657C3A68(a1, a2, v6);

  return a2 & 1;
}

uint64_t sub_2657C43F4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v17 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v3 = *(v1 + 56);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = *(v1 + 56);

  v10 = 0;
  while (v6)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (*(v3 + 48) + ((v11 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];

    if (a1(v15, v14))
    {
      sub_2657C5F90(&v16, v15, v14);
    }

    v10 = v11;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v17;
    }

    v6 = *(v3 + 56 + 8 * v11);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657C4548()
{
  v25 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);
  v6 = *(v0 + 48);

  result = swift_beginAccess();
  v8 = 0;
  v9 = (v3 + 63) >> 6;
  v23 = v1;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v12 = (*(v1 + 48) + ((v8 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(v0 + 56);
      if (*(v15 + 16))
      {
        break;
      }

LABEL_7:
      sub_2657C5F90(&v24, v14, v13);

      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v15 + 40);
    sub_2657F28D4();

    sub_2657F24C4();
    v17 = sub_2657F2904();
    v18 = -1 << *(v15 + 32);
    v19 = v17 & ~v18;
    if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_21:

      v1 = v23;
      goto LABEL_7;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(v15 + 48) + 16 * v19);
      v22 = *v21 == v14 && v21[1] == v13;
      if (v22 || (sub_2657F2864() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v1 = v23;
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v25;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657C4770(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v58 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
  v9 = *(*(v63 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v65 = (&v58 - v12);
  swift_beginAccess();
  v13 = *(v3 + 48);
  if (!*(v13 + 16))
  {
    return 0;
  }

  v14 = *(v3 + 48);

  v15 = sub_2657C8374(a1, a2);
  if (v16)
  {
    v17 = *(*(v13 + 56) + 8 * v15);

    swift_beginAccess();
    v58 = v3;
    v18 = *(v3 + 40);
    v19 = v18 + 64;
    v20 = 1 << *(v18 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v18 + 64);
    v23 = (v20 + 63) >> 6;
    v61 = v18;
    result = swift_bridgeObjectRetain_n();
    v25 = 0;
    v59 = 0;
    v60 = v19;
    while (2)
    {
      v26 = v25;
      if (!v22)
      {
        goto LABEL_8;
      }

      while (1)
      {
        v25 = v26;
LABEL_11:
        v27 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v28 = v27 | (v25 << 6);
        v29 = *(v61 + 56);
        v30 = (*(v61 + 48) + 32 * v28);
        v32 = *v30;
        v31 = v30[1];
        v33 = v30[2];
        v34 = v30[3];
        v35 = v29 + *(*(type metadata accessor for RecordMetadata(0) - 8) + 72) * v28;
        v36 = v63;
        v37 = v65;
        sub_2657B82A8(v35, v65 + *(v63 + 48));
        *v37 = v32;
        v37[1] = v31;
        v37[2] = v33;
        v37[3] = v34;
        v38 = v62;
        sub_2657CC364(v37, v62, &qword_280023818, &qword_2657F41C8);
        v39 = *(v38 + 8);
        v40 = *(v38 + 24);

        v41 = (v38 + *(v36 + 48));
        v42 = *v41;
        v43 = v41[1];
        v44 = v41[2];
        v45 = v41[3];

        sub_2657B8880(v41);
        if (!*(v17 + 16))
        {
          break;
        }

        v46 = sub_2657B830C(v42, v43, v44, v45);
        v48 = v47;

        if ((v48 & 1) == 0)
        {
          goto LABEL_16;
        }

        v49 = *(v17 + 56);
        v50 = sub_2657F22A4();
        v51 = *(v50 - 8);
        v52 = v51;
        v53 = v49 + *(v51 + 72) * v46;
        v54 = v64;
        (*(v51 + 16))(v64, v53, v50);
        sub_2657CC304(v65, &qword_280023818, &qword_2657F41C8);
        (*(v52 + 56))(v54, 0, 1, v50);
        result = sub_2657CC304(v54, &qword_2800237F8, &qword_2657F41A8);
        v26 = v25;
        v19 = v60;
        if (!v22)
        {
LABEL_8:
          while (1)
          {
            v25 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v25 >= v23)
            {

              return *(v58 + 32) < v59;
            }

            v22 = *(v19 + 8 * v25);
            ++v26;
            if (v22)
            {
              goto LABEL_11;
            }
          }

          __break(1u);
          return result;
        }
      }

LABEL_16:
      sub_2657CC304(v65, &qword_280023818, &qword_2657F41C8);
      v55 = sub_2657F22A4();
      v56 = v64;
      (*(*(v55 - 8) + 56))(v64, 1, 1, v55);
      result = sub_2657CC304(v56, &qword_2800237F8, &qword_2657F41A8);
      v19 = v60;
      if (!__OFADD__(v59++, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
    return 0;
  }

  return 0;
}

uint64_t sub_2657C4C44(uint64_t a1, uint64_t a2)
{
  v86 = sub_2657F22A4();
  v74 = *(v86 - 8);
  v5 = *(v74 + 64);
  v6 = MEMORY[0x28223BE20](v86);
  v78 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v77 = &v71 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v85 = &v71 - v11;
  v76 = type metadata accessor for RecordMetadata(0);
  v82 = *(v76 - 8);
  v12 = *(v82 + 64);
  v13 = MEMORY[0x28223BE20](v76);
  v89 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023848, &qword_2657F4200);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v87 = (&v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = (&v71 - v20);
  swift_beginAccess();
  v79 = v2;
  v22 = *(v2 + 48);
  if (!*(v22 + 16))
  {
    return 0;
  }

  v23 = *(v2 + 48);

  v24 = sub_2657C8374(a1, a2);
  if ((v25 & 1) == 0)
  {

    return 0;
  }

  v84 = v21;
  v88 = *(*(v22 + 56) + 8 * v24);

  v26 = v79;
  swift_beginAccess();
  v27 = *(v26 + 40);
  v28 = *(v27 + 64);
  v73 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v72 = (v29 + 63) >> 6;
  v71 = v74 + 16;
  v83 = (v74 + 56);
  v75 = (v74 + 8);
  v80 = v27;

  v33 = 0;
  while (v31)
  {
    v38 = v33;
    v39 = v84;
LABEL_17:
    v43 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v44 = v43 | (v38 << 6);
    v45 = v81;
    v46 = (*(v80 + 48) + 32 * v44);
    v48 = *v46;
    v47 = v46[1];
    v50 = v46[2];
    v49 = v46[3];
    sub_2657B82A8(*(v80 + 56) + *(v82 + 72) * v44, v81);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
    v52 = *(v51 + 48);
    v53 = v87;
    *v87 = v48;
    v53[1] = v47;
    v53[2] = v50;
    v53[3] = v49;
    v42 = v53;
    sub_2657B881C(v45, v53 + v52);
    (*(*(v51 - 8) + 56))(v42, 0, 1, v51);

LABEL_18:
    sub_2657CC3D8(v42, v39);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
    if ((*(*(v54 - 8) + 48))(v39, 1, v54) == 1)
    {

      return 0;
    }

    v56 = *v39;
    v55 = v39[1];
    v57 = v39[2];
    v58 = v39[3];
    sub_2657B881C(v39 + *(v54 + 48), v89);
    if (*(v88 + 16))
    {
      v59 = sub_2657B830C(v56, v55, v57, v58);
      v61 = v60;

      if ((v61 & 1) == 0)
      {
        goto LABEL_23;
      }

      v34 = v74;
      v35 = *(v88 + 56) + *(v74 + 72) * v59;
      v37 = v85;
      v36 = v86;
      (*(v74 + 16))(v85, v35, v86);
      (*(v34 + 56))(v37, 0, 1, v36);
      sub_2657B8880(v89);
      result = sub_2657CC304(v37, &qword_2800237F8, &qword_2657F41A8);
    }

    else
    {

LABEL_23:
      v62 = v85;
      v63 = v86;
      (*v83)(v85, 1, 1, v86);
      sub_2657CC304(v62, &qword_2800237F8, &qword_2657F41A8);
      v64 = v77;
      v65 = *(v79 + 16);
      v66 = v89;
      v67 = v89 + *(v76 + 20);
      sub_2657F2224();
      v68 = v78;
      sub_2657F2284();
      LOBYTE(v62) = sub_2657F2244();
      v69 = *v75;
      (*v75)(v68, v63);
      v69(v64, v63);
      result = sub_2657B8880(v66);
      if (v62)
      {

        return 1;
      }
    }
  }

  if (v72 <= v33 + 1)
  {
    v40 = v33 + 1;
  }

  else
  {
    v40 = v72;
  }

  v41 = v40 - 1;
  v42 = v87;
  v39 = v84;
  while (1)
  {
    v38 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v38 >= v72)
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
      (*(*(v70 - 8) + 56))(v42, 1, 1, v70);
      v31 = 0;
      v33 = v41;
      goto LABEL_18;
    }

    v31 = *(v73 + 8 * v38);
    ++v33;
    if (v31)
    {
      v33 = v38;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657C5340(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = v69 - v6;
  v7 = sub_2657F22A4();
  v8 = *(v7 - 8);
  v79 = v7;
  v80 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v81 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v69 - v12;
  v14 = type metadata accessor for RecordMetadata(0);
  v77 = *(v14 - 8);
  v15 = v77[8];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = v69 - v19;
  v21 = *a1;
  v20 = a1[1];
  v23 = a1[2];
  v22 = a1[3];
  swift_beginAccess();
  v24 = *(v2 + 40);
  if (!*(v24 + 16))
  {
    return 0;
  }

  v25 = v2;
  v26 = *(v2 + 40);

  v75 = v21;
  v27 = sub_2657B830C(v21, v20, v23, v22);
  if ((v28 & 1) == 0)
  {

    return 0;
  }

  v29 = v23;
  v73 = v22;
  v74 = v20;
  sub_2657B82A8(*(v24 + 56) + v77[9] * v27, v18);

  v30 = v78;
  sub_2657B881C(v18, v78);
  sub_2657F2284();
  v31 = v25;
  v32 = *(v25 + 24);
  v33 = v30 + *(v14 + 20);
  v34 = v81;
  sub_2657F2224();
  if ((sub_2657F2234() & 1) == 0)
  {
    v61 = v79;
    v62 = *(v80 + 8);
    v62(v34, v79);
    v62(v13, v61);
    sub_2657B8880(v30);
    return 0;
  }

  v70 = v29;
  v72 = v13;
  swift_beginAccess();
  v35 = *(v25 + 56);
  v38 = *(v35 + 56);
  v37 = v35 + 56;
  v36 = v38;
  v39 = 1 << *(*(v25 + 56) + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v36;
  v77 = *(v25 + 56);

  result = swift_beginAccess();
  v43 = 0;
  v44 = (v39 + 63) >> 6;
  v69[1] = v80 + 16;
  v71 = v80 + 56;
  while (v41)
  {
    v45 = v41;
LABEL_16:
    v41 = (v45 - 1) & v45;
    v48 = *(v31 + 48);
    if (*(v48 + 16))
    {
      v49 = (v77[6] + ((v43 << 10) | (16 * __clz(__rbit64(v45)))));
      v50 = *v49;
      v51 = v49[1];

      v52 = sub_2657C8374(v50, v51);
      v54 = v53;

      if (v54)
      {
        v55 = *(*(v48 + 56) + 8 * v52);

        if (!*(v55 + 16) || (v56 = sub_2657B830C(v75, v74, v70, v73), (v57 & 1) == 0))
        {

          v65 = v79;
          v66 = v80;
          v67 = v76;
          (*(v80 + 56))(v76, 1, 1, v79);
          v68 = *(v66 + 8);
          v68(v81, v65);
          v68(v72, v65);
          sub_2657B8880(v30);
          sub_2657CC304(v67, &qword_2800237F8, &qword_2657F41A8);
          return 0;
        }

        v58 = v79;
        v59 = v80;
        v60 = v76;
        (*(v80 + 16))(v76, *(v55 + 56) + *(v80 + 72) * v56, v79);

        (*(v59 + 56))(v60, 0, 1, v58);
        result = sub_2657CC304(v60, &qword_2800237F8, &qword_2657F41A8);
        v34 = v81;
      }

      else
      {

        v34 = v81;
      }
    }
  }

  v46 = v72;
  while (1)
  {
    v47 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v47 >= v44)
    {

      v63 = v79;
      v64 = *(v80 + 8);
      v64(v34, v79);
      v64(v46, v63);
      sub_2657B8880(v30);
      return 1;
    }

    v45 = *(v37 + 8 * v47);
    ++v43;
    if (v45)
    {
      v43 = v47;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657C58D0(uint64_t a1)
{
  v2 = sub_2657F22A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023818, &qword_2657F41C8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  sub_2657CC364(a1, &v18 - v10, &qword_280023818, &qword_2657F41C8);
  v12 = *(v11 + 1);
  v13 = *(v11 + 3);

  v14 = &v11[*(v8 + 56)];
  v15 = type metadata accessor for RecordMetadata(0);
  (*(v3 + 16))(v6, v14 + *(v15 + 20), v2);
  sub_2657B8880(v14);
  v16 = sub_2657F2234();
  (*(v3 + 8))(v6, v2);
  return v16 & 1;
}

uint64_t sub_2657C5A80(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_2657C5ACC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2657C5B04(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2657B7F9C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2657C5B60(uint64_t a1, unint64_t a2)
{
  v4 = sub_2657C5BAC(a1, a2);
  sub_2657C5CDC(&unk_287719650);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2657C5BAC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2657C5DC8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2657F2744();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2657F24E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2657C5DC8(v10, 0);
        result = sub_2657F26F4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2657C5CDC(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2657C5E3C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2657C5DC8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023838, &qword_2657F41E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2657C5E3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023838, &qword_2657F41E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_2657C5F58(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_2657C5F90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2657F28D4();
  sub_2657F24C4();
  v9 = sub_2657F2904();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2657F2864() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2657CAA30(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2657C60E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  v12 = sub_2657F2904();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v30 = v10;
    v17 = *(v10 + 48);
    while (1)
    {
      v18 = (v17 + 32 * v15);
      v19 = v18[2];
      v20 = v18[3];
      v21 = *v18 == a2 && v18[1] == a3;
      if (v21 || (sub_2657F2864() & 1) != 0)
      {
        v22 = v19 == a4 && v20 == a5;
        if (v22 || (sub_2657F2864() & 1) != 0)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = (*(v30 + 48) + 32 * v15);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;
    a1[3] = v26;

    return 0;
  }

  else
  {
LABEL_15:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_2657CABB0(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_2657C62B8(uint64_t a1, void *a2)
{
  v38 = a1;
  v4 = type metadata accessor for RecordMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v36 = (&v36 - v10);
  v37 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2657F28D4();
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  sub_2657F24C4();
  v44 = v16;
  v45 = v15;
  sub_2657F24C4();
  v17 = *(v4 + 20);
  sub_2657F22A4();
  sub_2657B8264(&unk_280023C20);
  v40 = v17;
  sub_2657F2464();
  v41 = a2;
  v42 = v4;
  v39 = *(a2 + *(v4 + 24));
  sub_2657F28F4();
  v18 = sub_2657F2904();
  v19 = v11 + 56;
  v43 = v11;
  v20 = -1 << *(v11 + 32);
  v21 = v18 & ~v20;
  if ((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = ~v20;
    v23 = *(v5 + 72);
    do
    {
      sub_2657B82A8(*(v43 + 48) + v23 * v21, v9);
      v24 = v9[2];
      v25 = v9[3];
      v26 = *v9 == v13 && v9[1] == v14;
      if (v26 || (sub_2657F2864()) && (v24 == v45 ? (v27 = v25 == v44) : (v27 = 0), (v27 || (sub_2657F2864()) && (v28 = v9 + *(v42 + 20), (sub_2657F2274())))
      {
        v29 = *(v9 + *(v42 + 24));
        sub_2657B8880(v9);
        if (v39 == v29)
        {
          sub_2657B8880(v41);
          sub_2657B82A8(*(v43 + 48) + v23 * v21, v38);
          return 0;
        }
      }

      else
      {
        sub_2657B8880(v9);
      }

      v21 = (v21 + 1) & v22;
    }

    while (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
  }

  v31 = v37;
  v32 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v41;
  v35 = v36;
  sub_2657B82A8(v41, v36);
  v46 = *v31;
  sub_2657CAD7C(v35, v21, isUniquelyReferenced_nonNull_native);
  *v31 = v46;
  sub_2657B881C(v34, v38);
  return 1;
}

uint64_t sub_2657C65BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2657F28D4();
  sub_2657F24C4();
  v7 = sub_2657F2904();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2657F2864() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2657C69E8();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_2657C7E98(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_2657C66F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = type metadata accessor for RecordMetadata(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = v2;
  v8 = *v2;
  v9 = *(*v2 + 40);
  sub_2657F28D4();
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  sub_2657F24C4();
  v41 = v13;
  v42 = v12;
  sub_2657F24C4();
  v14 = *(v4 + 20);
  sub_2657F22A4();
  sub_2657B8264(&unk_280023C20);
  v37 = v14;
  sub_2657F2464();
  v38 = a1;
  v39 = v4;
  v36 = *(a1 + *(v4 + 24));
  sub_2657F28F4();
  v15 = sub_2657F2904();
  v16 = v8 + 56;
  v40 = v8;
  v17 = -1 << *(v8 + 32);
  v18 = v15 & ~v17;
  if (((*(v8 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return (*(v35 + 56))(v34, 1, 1, v39);
  }

  v19 = ~v17;
  v20 = *(v35 + 72);
  while (1)
  {
    sub_2657B82A8(*(v40 + 48) + v20 * v18, v7);
    v21 = v7[2];
    v22 = v7[3];
    v23 = *v7 == v10 && v7[1] == v11;
    if (v23 || (sub_2657F2864() & 1) != 0)
    {
      v24 = v21 == v42 && v22 == v41;
      if (v24 || (sub_2657F2864() & 1) != 0)
      {
        v25 = v7 + *(v39 + 20);
        if (sub_2657F2274())
        {
          break;
        }
      }
    }

    sub_2657B8880(v7);
LABEL_4:
    v18 = (v18 + 1) & v19;
    if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return (*(v35 + 56))(v34, 1, 1, v39);
    }
  }

  v26 = *(v7 + *(v39 + 24));
  sub_2657B8880(v7);
  if (v36 != v26)
  {
    goto LABEL_4;
  }

  v27 = v33;
  v28 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v27;
  v43 = *v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2657C6CB0();
    v30 = v43;
  }

  v31 = v34;
  sub_2657B881C(*(v30 + 48) + v20 * v18, v34);
  sub_2657C805C(v18);
  *v27 = v43;
  return (*(v35 + 56))(v31, 0, 1, v39);
}

void *sub_2657C69E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023808, &qword_2657F41B8);
  v2 = *v0;
  v3 = sub_2657F26C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2657C6B44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023850, &qword_2657F4208);
  v2 = *v0;
  v3 = sub_2657F26C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2657C6CB0()
{
  v1 = v0;
  v2 = type metadata accessor for RecordMetadata(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C30, &qword_2657F4188);
  v7 = *v0;
  v8 = sub_2657F26C4();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_2657B82A8(*(v7 + 48) + v22, v6);
        result = sub_2657B881C(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_2657C6E94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023808, &qword_2657F41B8);
  result = sub_2657F26D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2657F28D4();

      sub_2657F24C4();
      result = sub_2657F2904();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2657C70CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023850, &qword_2657F4208);
  result = sub_2657F26D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_2657F28D4();

      sub_2657F24C4();
      sub_2657F24C4();
      result = sub_2657F2904();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2657C7330(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecordMetadata(0);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C30, &qword_2657F4188);
  result = sub_2657F26D4();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v43 = *(v41 + 72);
      sub_2657B82A8(v23 + v43 * (v20 | (v12 << 6)), v7);
      v24 = *(v11 + 40);
      sub_2657F28D4();
      v25 = *v7;
      v26 = v7[1];
      v27 = v7[2];
      v28 = v7[3];
      sub_2657F24C4();
      sub_2657F24C4();
      v29 = v42;
      v30 = *(v42 + 20);
      sub_2657F22A4();
      sub_2657B8264(&unk_280023C20);
      sub_2657F2464();
      v31 = *(v7 + *(v29 + 24));
      sub_2657F28F4();
      result = sub_2657F2904();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v8 = v40;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v8 = v40;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_2657B881C(v7, *(v11 + 48) + v19 * v43);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v39;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_2657C765C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023808, &qword_2657F41B8);
  result = sub_2657F26D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2657F28D4();
      sub_2657F24C4();
      result = sub_2657F2904();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2657C78BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023850, &qword_2657F4208);
  result = sub_2657F26D4();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_2657F28D4();
      sub_2657F24C4();
      sub_2657F24C4();
      result = sub_2657F2904();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}
Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ReplicatorClient.delete(recordIDs:schedule:)(Swift::OpaquePointer recordIDs, ReplicatorServices::ReplicatorSchedule schedule)
{
  v4 = v2;
  v5 = schedule;
  v71 = type metadata accessor for ReplicatorRecord.ID(0);
  v7 = *(v71 - 8);
  v8 = MEMORY[0x1EEE9AC00](v71);
  v67 = (v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v68 = (v66 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v66 - v12;
  v14 = *v5;
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v15 = sub_1BABE72BC();
  v16 = __swift_project_value_buffer(v15, qword_1ED78BBA0);

  v17 = sub_1BABE729C();
  v18 = sub_1BABE790C();

  v19 = os_log_type_enabled(v17, v18);
  v70 = v3;
  rawValue = recordIDs._rawValue;
  v69 = v14;
  v73 = v7;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = v16;
    v22 = swift_slowAlloc();
    *&v82[0] = v22;
    *v20 = 136446210;
    v23 = MEMORY[0x1BFAFD330](recordIDs._rawValue, v71);
    v25 = v13;
    v26 = sub_1BAAFA460(v23, v24, v82);

    *(v20 + 4) = v26;
    v13 = v25;
    _os_log_impl(&dword_1BAACF000, v17, v18, "Deleting record IDs: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v27 = v22;
    v16 = v21;
    MEMORY[0x1BFAFE460](v27, -1, -1);
    MEMORY[0x1BFAFE460](v20, -1, -1);
  }

  v28 = v4[7];
  v29 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v28);
  if (((*(v29 + 8))(v28, v29) & 1) == 0)
  {
    v44 = sub_1BABE729C();
    v45 = sub_1BABE78EC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1BAACF000, v44, v45, "Client is not registered", v46, 2u);
      MEMORY[0x1BFAFE460](v46, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v47 = 2;
    *(v47 + 8) = 0;

    swift_willThrow();
    return;
  }

  v66[1] = v16;
  v30 = rawValue[2];
  if (!v30)
  {
LABEL_14:
    v42 = v4[7];
    v43 = v4[16];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v42);
    LOBYTE(v82[0]) = v69;
    (*(v43 + 40))(rawValue, v82, v42, v43);
    return;
  }

  v31 = rawValue + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  v73 = *(v73 + 72);
  v83 = v13;
  while (1)
  {
    sub_1BAB4CC18(v31, v13, type metadata accessor for ReplicatorRecord.ID);
    v32 = *(v13 + 4);
    v33 = *(v13 + 5);
    v34 = v4[7];
    v35 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v34);
    (*(v35 + 8))(&v77, v34, v35);
    v82[0] = v77;
    v82[1] = v78;
    v82[2] = v79;
    v82[3] = v80;
    v82[4] = v81;
    v36 = v77;

    sub_1BAB21D34(v82);
    if (__PAIR128__(v33, v32) != v36)
    {
      break;
    }

LABEL_11:
    v38 = v4[7];
    v39 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v38);
    (*(v39 + 8))(v75, v38, v39);
    v80 = v75[3];
    v81 = v76;
    v78 = v75[1];
    v79 = v75[2];
    v77 = v75[0];
    v40 = v76;

    sub_1BAB21D34(&v77);
    v13 = v83;
    if (!*(v40 + 16) || (sub_1BABD5AB4(*(v83 + 2), *(v83 + 3)), (v41 & 1) == 0))
    {

      v48 = v68;
      sub_1BAB4CC18(v13, v68, type metadata accessor for ReplicatorRecord.ID);
      v49 = sub_1BABE729C();
      v50 = sub_1BABE78EC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v74 = v52;
        *v51 = 136446210;
        *&v75[0] = 0;
        *(&v75[0] + 1) = 0xE000000000000000;
        sub_1BABE7AEC();
        MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
        MEMORY[0x1BFAFD240](*(v48 + *(v71 + 32)), *(v48 + *(v71 + 32) + 8));
        MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x1BFAFD240](v48[2], v48[3]);
        MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1BFAFD240](v48[4], v48[5]);
        MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
        type metadata accessor for ReplicatorRecord.ID.Ownership(0);
        sub_1BABE7BFC();
        v53 = v75[0];
        sub_1BAB4A600(v48, type metadata accessor for ReplicatorRecord.ID);
        v54 = sub_1BAAFA460(v53, *(&v53 + 1), &v74);

        *(v51 + 4) = v54;
        _os_log_impl(&dword_1BAACF000, v49, v50, "Zone does not exist: %{public}s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        MEMORY[0x1BFAFE460](v52, -1, -1);
        MEMORY[0x1BFAFE460](v51, -1, -1);
      }

      else
      {

        sub_1BAB4A600(v48, type metadata accessor for ReplicatorRecord.ID);
      }

      sub_1BAB15A08();
      swift_allocError();
      *v55 = 0;
      *(v55 + 8) = 0;

      swift_willThrow();
      v56 = v13;
      goto LABEL_26;
    }

    sub_1BAB4A600(v13, type metadata accessor for ReplicatorRecord.ID);
    v31 += v73;
    if (!--v30)
    {
      goto LABEL_14;
    }
  }

  v37 = sub_1BABE7EDC();

  if (v37)
  {
    goto LABEL_11;
  }

  v57 = v83;
  v58 = v67;
  sub_1BAB4CC18(v83, v67, type metadata accessor for ReplicatorRecord.ID);
  v59 = sub_1BABE729C();
  v60 = sub_1BABE78EC();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v75[0] = v62;
    *v61 = 136446210;
    *&v77 = 0;
    *(&v77 + 1) = 0xE000000000000000;
    sub_1BABE7AEC();
    MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
    MEMORY[0x1BFAFD240](*(v58 + *(v71 + 32)), *(v58 + *(v71 + 32) + 8));
    MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
    MEMORY[0x1BFAFD240](v58[2], v58[3]);
    MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
    MEMORY[0x1BFAFD240](v58[4], v58[5]);
    MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
    type metadata accessor for ReplicatorRecord.ID.Ownership(0);
    sub_1BABE7BFC();
    v63 = v77;
    sub_1BAB4A600(v58, type metadata accessor for ReplicatorRecord.ID);
    v64 = sub_1BAAFA460(v63, *(&v63 + 1), v75);

    *(v61 + 4) = v64;
    _os_log_impl(&dword_1BAACF000, v59, v60, "Client ID mismatch: %{public}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x1BFAFE460](v62, -1, -1);
    MEMORY[0x1BFAFE460](v61, -1, -1);
  }

  else
  {

    sub_1BAB4A600(v58, type metadata accessor for ReplicatorRecord.ID);
  }

  sub_1BAB15A08();
  swift_allocError();
  *v65 = 0;
  *(v65 + 8) = 0;

  swift_willThrow();
  v56 = v57;
LABEL_26:
  sub_1BAB4A600(v56, type metadata accessor for ReplicatorRecord.ID);
}

uint64_t ReplicatorClient.records(recordIDs:url:protocolVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v64 = a4;
  v66 = a3;
  v65 = a2;
  v7 = type metadata accessor for ReplicatorRecord.ID(0);
  v67 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  v16 = v4[7];
  v17 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v16);
  if (((*(v17 + 8))(v16, v17) & 1) == 0)
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v33 = sub_1BABE72BC();
    __swift_project_value_buffer(v33, qword_1ED78BBA0);
    v34 = sub_1BABE729C();
    v35 = sub_1BABE78EC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1BAACF000, v34, v35, "Client is not registered", v36, 2u);
      MEMORY[0x1BFAFE460](v36, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v37 = 2;
    *(v37 + 8) = 0;

    return swift_willThrow();
  }

  v62 = v13;
  v60 = v10;
  v61 = v7;
  v63 = a1;
  v18 = *(a1 + 16);
  if (!v18)
  {
LABEL_10:
    v30 = v5[7];
    v31 = v5[16];
    __swift_project_boxed_opaque_existential_1(v5 + 4, v30);
    return (*(v31 + 48))(v63, v65, v66, v64 & 1, v30, v31);
  }

  v19 = v63 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
  v67 = *(v67 + 72);
  v77 = v15;
  while (1)
  {
    sub_1BAB4CC18(v19, v15, type metadata accessor for ReplicatorRecord.ID);
    v20 = *(v15 + 4);
    v21 = *(v15 + 5);
    v22 = v5[7];
    v23 = v5[8];
    __swift_project_boxed_opaque_existential_1(v5 + 4, v22);
    (*(v23 + 8))(&v71, v22, v23);
    v76[0] = v71;
    v76[1] = v72;
    v76[2] = v73;
    v76[3] = v74;
    v76[4] = v75;
    v24 = v71;

    sub_1BAB21D34(v76);
    if (__PAIR128__(v21, v20) != v24)
    {
      break;
    }

LABEL_7:
    v26 = v5[7];
    v27 = v5[8];
    __swift_project_boxed_opaque_existential_1(v5 + 4, v26);
    (*(v27 + 8))(v69, v26, v27);
    v74 = v69[3];
    v75 = v70;
    v72 = v69[1];
    v73 = v69[2];
    v71 = v69[0];
    v28 = v70;

    sub_1BAB21D34(&v71);
    v15 = v77;
    if (!*(v28 + 16) || (sub_1BABD5AB4(*(v77 + 2), *(v77 + 3)), (v29 & 1) == 0))
    {

      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v38 = sub_1BABE72BC();
      __swift_project_value_buffer(v38, qword_1ED78BBA0);
      v39 = v62;
      sub_1BAB4CC18(v15, v62, type metadata accessor for ReplicatorRecord.ID);
      v40 = sub_1BABE729C();
      v41 = sub_1BABE78EC();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v68 = v43;
        *v42 = 136446210;
        *&v69[0] = 0;
        *(&v69[0] + 1) = 0xE000000000000000;
        sub_1BABE7AEC();
        MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
        MEMORY[0x1BFAFD240](*(v39 + *(v61 + 32)), *(v39 + *(v61 + 32) + 8));
        MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x1BFAFD240](v39[2], v39[3]);
        MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
        MEMORY[0x1BFAFD240](v39[4], v39[5]);
        MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
        type metadata accessor for ReplicatorRecord.ID.Ownership(0);
        sub_1BABE7BFC();
        v44 = *&v69[0];
        v45 = v39;
        v46 = *(&v69[0] + 1);
        sub_1BAB4A600(v45, type metadata accessor for ReplicatorRecord.ID);
        v47 = sub_1BAAFA460(v44, v46, &v68);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_1BAACF000, v40, v41, "Zone does not exist: %{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x1BFAFE460](v43, -1, -1);
        MEMORY[0x1BFAFE460](v42, -1, -1);
      }

      else
      {

        sub_1BAB4A600(v39, type metadata accessor for ReplicatorRecord.ID);
      }

      sub_1BAB15A08();
      swift_allocError();
      *v48 = 0;
      *(v48 + 8) = 0;

      swift_willThrow();
      v49 = v15;
      return sub_1BAB4A600(v49, type metadata accessor for ReplicatorRecord.ID);
    }

    sub_1BAB4A600(v15, type metadata accessor for ReplicatorRecord.ID);
    v19 += v67;
    if (!--v18)
    {
      goto LABEL_10;
    }
  }

  v25 = sub_1BABE7EDC();

  if (v25)
  {
    goto LABEL_7;
  }

  v50 = v77;
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v51 = sub_1BABE72BC();
  __swift_project_value_buffer(v51, qword_1ED78BBA0);
  v52 = v60;
  sub_1BAB4CC18(v50, v60, type metadata accessor for ReplicatorRecord.ID);
  v53 = sub_1BABE729C();
  v54 = sub_1BABE78EC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v69[0] = v56;
    *v55 = 136446210;
    *&v71 = 0;
    *(&v71 + 1) = 0xE000000000000000;
    sub_1BABE7AEC();
    MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
    MEMORY[0x1BFAFD240](*(v52 + *(v61 + 32)), *(v52 + *(v61 + 32) + 8));
    MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
    MEMORY[0x1BFAFD240](v52[2], v52[3]);
    MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
    MEMORY[0x1BFAFD240](v52[4], v52[5]);
    MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
    type metadata accessor for ReplicatorRecord.ID.Ownership(0);
    sub_1BABE7BFC();
    v57 = v71;
    sub_1BAB4A600(v52, type metadata accessor for ReplicatorRecord.ID);
    v58 = sub_1BAAFA460(v57, *(&v57 + 1), v69);

    *(v55 + 4) = v58;
    _os_log_impl(&dword_1BAACF000, v53, v54, "Client ID mismatch: %{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x1BFAFE460](v56, -1, -1);
    MEMORY[0x1BFAFE460](v55, -1, -1);
  }

  else
  {

    sub_1BAB4A600(v52, type metadata accessor for ReplicatorRecord.ID);
  }

  sub_1BAB15A08();
  swift_allocError();
  *v59 = 0;
  *(v59 + 8) = 0;

  swift_willThrow();
  v49 = v50;
  return sub_1BAB4A600(v49, type metadata accessor for ReplicatorRecord.ID);
}

uint64_t ReplicatorClient.recordVersions()()
{
  v1 = v0[7];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  if ((*(v2 + 8))(v1, v2))
  {
    v3 = v0[7];
    v4 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v3);
    return (*(v4 + 64))(v3, v4);
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v6 = sub_1BABE72BC();
    __swift_project_value_buffer(v6, qword_1ED78BBA0);
    v7 = sub_1BABE729C();
    v8 = sub_1BABE78EC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BAACF000, v7, v8, "Client is not registered", v9, 2u);
      MEMORY[0x1BFAFE460](v9, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v10 = 2;
    *(v10 + 8) = 0;

    return swift_willThrow();
  }
}

uint64_t ReplicatorClient.urls(recordIDs:url:protocolVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4[7];
  v10 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v9);
  if ((*(v10 + 8))(v9, v10))
  {
    v11 = v4[7];
    v12 = v4[16];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v11);
    return (*(v12 + 56))(a1, a2, a3, a4 & 1, v11, v12);
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1BABE72BC();
    __swift_project_value_buffer(v14, qword_1ED78BBA0);
    v15 = sub_1BABE729C();
    v16 = sub_1BABE78EC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BAACF000, v15, v16, "Client is not registered", v17, 2u);
      MEMORY[0x1BFAFE460](v17, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v18 = 2;
    *(v18 + 8) = 0;

    return swift_willThrow();
  }
}

uint64_t sub_1BAB4972C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 128);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1BAB49790(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 128);
  __swift_project_boxed_opaque_existential_1((*v2 + 32), v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t sub_1BAB4980C(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a3;
  v7 = *a2;
  v6 = v3;
  v5 = 1;
  return ReplicatorClient.add(records:destination:schedule:invalidRecordResolution:)(a1, &v7, &v6, &v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ReplicatorClient.sync()()
{
  v1 = v0[7];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  if ((*(v2 + 8))(v1, v2))
  {
    v3 = v0[7];
    v4 = v0[17];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v3);
    (*(v4 + 8))(v3, v4);
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1BABE72BC();
    __swift_project_value_buffer(v5, qword_1ED78BBA0);
    v6 = sub_1BABE729C();
    v7 = sub_1BABE78EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BAACF000, v6, v7, "Client is not registered", v8, 2u);
      MEMORY[0x1BFAFE460](v8, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v9 = 2;
    *(v9 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t ReplicatorClient.registrationUpdates.getter()
{
  v1 = v0[7];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  return (*(v2 + 16))(v1, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ReplicatorClient.register()()
{
  v1 = v0[7];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  if ((*(v2 + 8))(v1, v2))
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1BABE72BC();
    __swift_project_value_buffer(v3, qword_1ED78BBA0);
    v4 = sub_1BABE729C();
    v5 = sub_1BABE78EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BAACF000, v4, v5, "Client is already registered", v6, 2u);
      MEMORY[0x1BFAFE460](v6, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v7 = 2;
    *(v7 + 8) = 0;

    swift_willThrow();
  }

  else
  {
    v8 = v0[7];
    v9 = v0[10];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v8);
    (*(v9 + 24))(v8, v9);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ReplicatorClient.unregister()()
{
  v1 = v0[7];
  v2 = v0[10];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  if ((*(v2 + 8))(v1, v2))
  {
    v3 = v0[7];
    v4 = v0[10];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v3);
    (*(v4 + 32))(v3, v4);
  }

  else
  {
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1BABE72BC();
    __swift_project_value_buffer(v5, qword_1ED78BBA0);
    v6 = sub_1BABE729C();
    v7 = sub_1BABE78EC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BAACF000, v6, v7, "Client is not registered", v8, 2u);
      MEMORY[0x1BFAFE460](v8, -1, -1);
    }

    sub_1BAB15A08();
    swift_allocError();
    *v9 = 2;
    *(v9 + 8) = 0;

    swift_willThrow();
  }
}

uint64_t sub_1BAB49E70()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 80);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t sub_1BAB49ED0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 80);
  __swift_project_boxed_opaque_existential_1((*v0 + 32), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t ReplicatorClient.encode<A>(_:messageType:relationshipID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = v7[7];
  v15 = v7[13];
  __swift_project_boxed_opaque_existential_1(v7 + 4, v14);
  result = (*(*(v15 + 16) + 8))(a1, a2, a3, a4, a5, a6, a7, v14, *(v15 + 16));
  if (v19)
  {
    return v17;
  }

  return result;
}

uint64_t ReplicatorClient.decode<A>(_:from:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = v7[7];
  v14 = v7[11];
  __swift_project_boxed_opaque_existential_1(v7 + 4, v13);
  return (*(*(v14 + 8) + 8))(a1, a2, a3, a4, a5, a6, a7, v13, *(v14 + 8));
}

uint64_t ReplicatorClient.encode<A>(_:zone:relationshipID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = v7[7];
  v15 = v7[15];
  __swift_project_boxed_opaque_existential_1(v7 + 4, v14);
  result = (*(*(v15 + 16) + 8))(a1, a2, a3, a4, a5, a6, a7, v14, *(v15 + 16));
  if (v19)
  {
    return v17;
  }

  return result;
}

uint64_t sub_1BAB4A258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void))
{
  result = a10();
  if (v10)
  {
    return v12;
  }

  return result;
}

uint64_t ReplicatorClient.encode<A>(_:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[7];
  v12 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v11);
  return (*(*(v12 + 16) + 8))(a1, a2, a3, a4, a5, v11);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ReplicatorClient.clientDescriptor(id:)(ReplicatorServices::ClientDescriptor_optional *__return_ptr retstr, Swift::String id)
{
  if (qword_1ED787560 != -1)
  {
    countAndFlagsBits = id._countAndFlagsBits;
    swift_once();
    id._countAndFlagsBits = countAndFlagsBits;
  }

  MEMORY[0x1EEE9AC00](id._countAndFlagsBits);
  sub_1BABE794C();
  if (!v2)
  {
    retstr->value.messageNotificationName = v7;
    retstr->value.recordNotificationName = v8;
    *&retstr->value.zoneDescriptors._rawValue = v9;
    retstr->value.id = v5;
    retstr->value.entitlement = v6;
  }
}

uint64_t sub_1BAB4A45C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_1BAAF9A7C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ReplicatorRecordChange();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

_OWORD *sub_1BAB4A588(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[6];
  a2[5] = a1[5];
  a2[6] = v6;
  a2[3] = v4;
  a2[4] = v5;
  return a2;
}

uint64_t sub_1BAB4A600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BAB4A684()
{
  result = qword_1EBC12E18;
  if (!qword_1EBC12E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12E18);
  }

  return result;
}

void *sub_1BAB4A788(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
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
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1BAB4A82C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BABE6CFC();
  v66 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v68 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v51 - v17;
  v69 = type metadata accessor for ReplicatorRecord.ID(0);
  v61 = *(v69 - 8);
  v18 = MEMORY[0x1EEE9AC00](v69);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v51 - v21;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v59 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12780);
  result = sub_1BABE7CEC();
  v70 = result;
  v53 = v14;
  if (a2 < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = *a1;
  }

  v24 = 0;
  v57 = v66 + 16;
  v67 = v66 + 32;
  v56 = v66 + 48;
  v52 = (v66 + 8);
  v25 = v70 + 64;
  v58 = a1;
  v55 = a2;
  v54 = a4;
  while (v23)
  {
    v26 = __clz(__rbit64(v23));
    v63 = (v23 - 1) & v23;
LABEL_16:
    v29 = v26 | (v24 << 6);
    v30 = a4[6];
    v31 = v60;
    v65 = *(v61 + 72);
    sub_1BAB4CC18(v30 + v65 * v29, v60, type metadata accessor for ReplicatorRecord.ID);
    v32 = a4[7];
    v33 = v66;
    v64 = *(v66 + 72);
    v34 = v32 + v64 * v29;
    v35 = v62;
    (*(v66 + 16))(v62, v34, v11);
    sub_1BAB4CBB0(v31, v20, type metadata accessor for ReplicatorRecord.ID);
    v36 = *(v33 + 32);
    v36(v68, v35, v11);
    sub_1BABE7F9C();
    sub_1BABE759C();
    sub_1BABE759C();
    sub_1BABE759C();
    v37 = v59;
    sub_1BAB4CC18(&v20[*(v69 + 28)], v59, type metadata accessor for ReplicatorRecord.ID.Ownership);
    if ((*(v33 + 48))(v37, 1, v11) == 1)
    {
      v38 = v36;
      MEMORY[0x1BFAFDC20](0);
    }

    else
    {
      v39 = v53;
      v38 = v36;
      v36(v53, v37, v11);
      MEMORY[0x1BFAFDC20](1);
      sub_1BAB4CC80(&unk_1ED787C50, MEMORY[0x1E69695A8]);
      sub_1BABE74BC();
      (*v52)(v39, v11);
    }

    sub_1BABE759C();
    result = sub_1BABE7FDC();
    v40 = -1 << *(v70 + 32);
    v41 = result & ~v40;
    v42 = v41 >> 6;
    a1 = v58;
    v43 = v38;
    a2 = v55;
    if (((-1 << v41) & ~*(v25 + 8 * (v41 >> 6))) == 0)
    {
      v45 = 0;
      v46 = (63 - v40) >> 6;
      while (++v42 != v46 || (v45 & 1) == 0)
      {
        v47 = v42 == v46;
        if (v42 == v46)
        {
          v42 = 0;
        }

        v45 |= v47;
        v48 = *(v25 + 8 * v42);
        if (v48 != -1)
        {
          v44 = __clz(__rbit64(~v48)) + (v42 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v44 = __clz(__rbit64((-1 << v41) & ~*(v25 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v25 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    v49 = v70;
    sub_1BAB4CBB0(v20, *(v70 + 48) + v44 * v65, type metadata accessor for ReplicatorRecord.ID);
    result = v43(*(v49 + 56) + v44 * v64, v68, v11);
    ++*(v49 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    a4 = v54;
    v23 = v63;
    if (!a3)
    {
      return v70;
    }
  }

  v27 = v24;
  while (1)
  {
    v24 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v24 >= a2)
    {
      return v70;
    }

    v28 = a1[v24];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v63 = (v28 - 1) & v28;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1BAB4AE74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for ReplicatorRecord.ID(0);
  v61 = *(v65 - 8);
  v15 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v60 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v50 - v22;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (*(a4 + 16) == a3)
  {

    return a4;
  }

  v56 = v14;
  v53 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E20);
  result = sub_1BABE7CEC();
  v24 = result;
  v58 = a4;
  if (a2 < 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = *a1;
  }

  v26 = 0;
  v55 = (v9 + 48);
  v52 = (v9 + 32);
  v51 = (v9 + 8);
  v27 = result + 64;
  v54 = a1;
  v57 = v8;
  while (v25)
  {
    v28 = __clz(__rbit64(v25));
    v62 = (v25 - 1) & v25;
LABEL_16:
    v32 = v58;
    v31 = v59;
    v33 = *(v58 + 48);
    v63 = *(v61 + 72);
    v34 = v63 * (v28 | (v26 << 6));
    sub_1BAB4CC18(v33 + v34, v59, type metadata accessor for ReplicatorRecord.ID);
    v35 = *(v32 + 56) + v34;
    v36 = v60;
    sub_1BAB4CC18(v35, v60, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB4CBB0(v31, v19, type metadata accessor for ReplicatorRecord.ID);
    sub_1BAB4CBB0(v36, v64, type metadata accessor for ReplicatorRecord.ID);
    sub_1BABE7F9C();
    sub_1BABE759C();
    sub_1BABE759C();
    sub_1BABE759C();
    v37 = v56;
    sub_1BAB4CC18(&v19[*(v65 + 28)], v56, type metadata accessor for ReplicatorRecord.ID.Ownership);
    v38 = v57;
    if ((*v55)(v37, 1, v57) == 1)
    {
      MEMORY[0x1BFAFDC20](0);
    }

    else
    {
      v39 = v53;
      (*v52)(v53, v37, v38);
      MEMORY[0x1BFAFDC20](1);
      sub_1BAB4CC80(&unk_1ED787C50, MEMORY[0x1E69695A8]);
      sub_1BABE74BC();
      (*v51)(v39, v38);
    }

    sub_1BABE759C();
    result = sub_1BABE7FDC();
    v40 = -1 << *(v24 + 32);
    v41 = result & ~v40;
    v42 = v41 >> 6;
    if (((-1 << v41) & ~*(v27 + 8 * (v41 >> 6))) == 0)
    {
      v44 = 0;
      v45 = (63 - v40) >> 6;
      while (++v42 != v45 || (v44 & 1) == 0)
      {
        v46 = v42 == v45;
        if (v42 == v45)
        {
          v42 = 0;
        }

        v44 |= v46;
        v47 = *(v27 + 8 * v42);
        if (v47 != -1)
        {
          v43 = __clz(__rbit64(~v47)) + (v42 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v43 = __clz(__rbit64((-1 << v41) & ~*(v27 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v27 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
    v48 = v43 * v63;
    sub_1BAB4CBB0(v19, *(v24 + 48) + v43 * v63, type metadata accessor for ReplicatorRecord.ID);
    result = sub_1BAB4CBB0(v64, *(v24 + 56) + v48, type metadata accessor for ReplicatorRecord.ID);
    ++*(v24 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    a1 = v54;
    v25 = v62;
    if (!a3)
    {
      return v24;
    }
  }

  v29 = v26;
  while (1)
  {
    v26 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v26 >= a2)
    {
      return v24;
    }

    v30 = a1[v26];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v62 = (v30 - 1) & v30;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1BAB4B45C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a4;
  v51[0] = a2;
  v52 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10);
  v5 = MEMORY[0x1EEE9AC00](v64);
  v69 = (v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v72 = v51 - v7;
  v71 = sub_1BABE6CFC();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x1EEE9AC00](v71);
  v59 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v58 = v51 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v70 = v51 - v13;
  v14 = type metadata accessor for ReplicatorRecord.ID(0);
  v62 = *(v14 - 8);
  result = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v65 = a3;
  v19 = *(a3 + 64);
  v55 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v53 = 0;
  v54 = (v20 + 63) >> 6;
  v68 = v8 + 16;
  v57 = (v8 + 32);
  v63 = v8;
  v60 = (v8 + 8);
  v61 = v17;
  while (v22)
  {
    v23 = __clz(__rbit64(v22));
    v67 = (v22 - 1) & v22;
LABEL_11:
    v26 = v23 | (v18 << 6);
    v27 = v65;
    sub_1BAB4CC18(v65[6] + *(v62 + 72) * v26, v17, type metadata accessor for ReplicatorRecord.ID);
    v28 = v27[7];
    v29 = *(v63 + 72);
    v56 = v26;
    v30 = v28 + v29 * v26;
    v31 = *(v63 + 16);
    v33 = v70;
    v32 = v71;
    v31(v70, v30, v71);
    v34 = v17;
    v35 = v72;
    sub_1BAB4CC18(v34, v72, type metadata accessor for ReplicatorRecord.ID);
    v36 = v64;
    v66 = *(v64 + 48);
    v31((v35 + v66), v33, v32);
    v37 = v69;
    sub_1BAAD2DAC(v35, v69, &qword_1EBC12A10);
    v38 = *(v36 + 48);
    if (*(v73 + 16) && (v39 = sub_1BABD5D18(v37), v37 = v69, (v40 & 1) != 0))
    {
      v41 = v59;
      v42 = v71;
      v31(v59, *(v73 + 56) + v39 * v29, v71);
      v43 = v58;
      (*v57)(v58, v41, v42);
      v44 = *v60;
      (*v60)(v37 + v38, v42);
      sub_1BAB4A600(v37, type metadata accessor for ReplicatorRecord.ID);
      sub_1BAB4CC80(&unk_1ED7872A0, MEMORY[0x1E69695A8]);
      v45 = v72;
      v46 = sub_1BABE74DC();
      v44(v43, v42);
      sub_1BAAD2E14(v45, &qword_1EBC12A10);
      v44(v70, v42);
      v17 = v61;
      result = sub_1BAB4A600(v61, type metadata accessor for ReplicatorRecord.ID);
      v22 = v67;
      if ((v46 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1BAAD2E14(v72, &qword_1EBC12A10);
      v47 = *v60;
      v48 = v37 + v38;
      v49 = v71;
      (*v60)(v48, v71);
      sub_1BAB4A600(v37, type metadata accessor for ReplicatorRecord.ID);
      v47(v70, v49);
      v17 = v61;
      result = sub_1BAB4A600(v61, type metadata accessor for ReplicatorRecord.ID);
      v22 = v67;
LABEL_16:
      *(v52 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      if (__OFADD__(v53++, 1))
      {
        __break(1u);
        return sub_1BAB4A82C(v52, v51[0], v53, v65);
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

    if (v18 >= v54)
    {
      return sub_1BAB4A82C(v52, v51[0], v53, v65);
    }

    v25 = *(v55 + 8 * v18);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v67 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAB4BA18(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v53 = a2;
  v54 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v52 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10);
  v8 = MEMORY[0x1EEE9AC00](v72);
  v59 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v52 - v10;
  v70 = sub_1BABE6CFC();
  v11 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ReplicatorRecord.ID(0);
  v57 = *(v13 - 8);
  result = MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0;
  v16 = 0;
  v65 = a3;
  v19 = a3[8];
  v18 = a3 + 8;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v67 = v11 + 16;
  v58 = v11;
  v60 = (v11 + 8);
  v61 = (v11 + 56);
  v62 = v18;
  v63 = v23;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v66 = (v22 - 1) & v22;
LABEL_11:
    v27 = v24 | (v16 << 6);
    v28 = v65;
    v29 = v68;
    sub_1BAB4CC18(v65[6] + *(v57 + 72) * v27, v68, type metadata accessor for ReplicatorRecord.ID);
    v30 = v28[7];
    v31 = *(v58 + 72);
    v56 = v27;
    v32 = v30 + v31 * v27;
    v33 = *(v58 + 16);
    v34 = v69;
    v35 = v70;
    v33(v69, v32, v70);
    v36 = v29;
    v37 = v71;
    sub_1BAB4CC18(v36, v71, type metadata accessor for ReplicatorRecord.ID);
    v33((v37 + *(v72 + 48)), v34, v35);
    v38 = v59;
    sub_1BAAD2DAC(v37, v59, &qword_1EBC12A10);
    if (*(a4 + 16) && (v39 = sub_1BABD5D18(v38), (v40 & 1) != 0))
    {
      v41 = v64;
      v42 = v70;
      v33(v64, *(a4 + 56) + v39 * v31, v70);
      sub_1BAAD2E14(v71, &qword_1EBC12A10);
      (*v61)(v41, 0, 1, v42);
      v43 = v38;
      v44 = *(v72 + 48);
      sub_1BAAD2E14(v41, &qword_1EBC12B60);
      v45 = *v60;
      (*v60)(v43 + v44, v42);
      sub_1BAB4A600(v43, type metadata accessor for ReplicatorRecord.ID);
      v45(v69, v42);
      result = sub_1BAB4A600(v68, type metadata accessor for ReplicatorRecord.ID);
      v18 = v62;
      v23 = v63;
      v22 = v66;
    }

    else
    {
      sub_1BAAD2E14(v71, &qword_1EBC12A10);
      v46 = v64;
      v47 = v70;
      (*v61)(v64, 1, 1, v70);
      v48 = v38;
      v49 = *(v72 + 48);
      sub_1BAAD2E14(v46, &qword_1EBC12B60);
      v50 = *v60;
      (*v60)(v48 + v49, v47);
      sub_1BAB4A600(v48, type metadata accessor for ReplicatorRecord.ID);
      v50(v69, v47);
      result = sub_1BAB4A600(v68, type metadata accessor for ReplicatorRecord.ID);
      *(v54 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      v51 = __OFADD__(v55++, 1);
      v18 = v62;
      v23 = v63;
      v22 = v66;
      if (v51)
      {
        __break(1u);
        return sub_1BAB4A82C(v54, v53, v55, v65);
      }
    }
  }

  v25 = v16;
  while (1)
  {
    v16 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v16 >= v23)
    {
      return sub_1BAB4A82C(v54, v53, v55, v65);
    }

    v26 = v18[v16];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v66 = (v26 - 1) & v26;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1BAB4BFB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_1BAB4A788(v16, v11, a1, a2, a4);
      MEMORY[0x1BFAFE460](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      return v14;
    }
  }

  MEMORY[0x1EEE9AC00](v13);
  bzero(v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = a3(v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v14;
}

uint64_t sub_1BAB4C184(uint64_t a1, uint64_t a2)
{
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10);
  v4 = MEMORY[0x1EEE9AC00](v106);
  v95 = (&v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v4);
  v105 = &v86 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v104 = &v86 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v103 = &v86 - v10;
  v11 = type metadata accessor for ReplicatorRecordChange();
  v101 = *(v11 - 8);
  v102 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v90 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v86 - v14;

  v16 = sub_1BAB4BFB4(a1, a2, sub_1BAB4B45C, sub_1BAB4B45C);

  v17 = *(v16 + 2);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v86 = 0;
    v87 = a2;
    v88 = a1;
    v109 = MEMORY[0x1E69E7CC0];
    sub_1BAAFAB24(0, v17, 0);
    v107 = v109;
    v19 = v16 + 64;
    result = sub_1BABE7A0C();
    v21 = result;
    v22 = 0;
    v23 = *(v16 + 9);
    v89 = v16 + 72;
    v108 = v15;
    v91 = v17;
    v92 = v23;
    v93 = v16;
    v94 = v16 + 64;
    while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << v16[32])
    {
      if ((*&v19[8 * (v21 >> 6)] & (1 << v21)) == 0)
      {
        goto LABEL_44;
      }

      if (v23 != *(v16 + 9))
      {
        goto LABEL_45;
      }

      v97 = 1 << v21;
      v98 = v21 >> 6;
      v96 = v22;
      v25 = v106;
      v26 = *(v106 + 48);
      v27 = *(v16 + 6);
      v28 = type metadata accessor for ReplicatorRecord.ID(0);
      v29 = v103;
      sub_1BAB4CC18(v27 + *(*(v28 - 8) + 72) * v21, v103, type metadata accessor for ReplicatorRecord.ID);
      v30 = *(v16 + 7);
      v31 = sub_1BABE6CFC();
      v32 = *(v31 - 8);
      (*(v32 + 16))(v29 + v26, v30 + *(v32 + 72) * v21, v31);
      v33 = v104;
      sub_1BAB4CBB0(v29, v104, type metadata accessor for ReplicatorRecord.ID);
      v34 = *(v32 + 32);
      v34(v33 + *(v25 + 48), v29 + v26, v31);
      v35 = v105;
      v100 = v21;
      sub_1BAAD2DAC(v33, v105, &qword_1EBC12A10);
      v99 = *(v25 + 48);
      v36 = v33;
      v37 = v95;
      sub_1BAB23414(v36, v95, &qword_1EBC12A10);
      v38 = *(v25 + 48);
      sub_1BAB4CBB0(v35, v108, type metadata accessor for ReplicatorRecord.ID);
      v39 = type metadata accessor for ReplicatorRecordVersion();
      v34(&v108[*(v39 + 20)], v37 + v38, v31);
      sub_1BAB4A600(v37, type metadata accessor for ReplicatorRecord.ID);
      v40 = v108;
      (*(v32 + 8))(v35 + v99, v31);
      swift_storeEnumTagMultiPayload();
      v41 = v107;
      v109 = v107;
      v43 = *(v107 + 16);
      v42 = *(v107 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1BAAFAB24(v42 > 1, v43 + 1, 1);
        v41 = v109;
      }

      *(v41 + 16) = v43 + 1;
      v44 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v107 = v41;
      sub_1BAB4CBB0(v40, v41 + v44 + *(v101 + 72) * v43, type metadata accessor for ReplicatorRecordChange);
      v16 = v93;
      v19 = v94;
      v21 = 1 << v93[32];
      result = v100;
      if (v100 >= v21)
      {
        goto LABEL_46;
      }

      v45 = *&v94[8 * v98];
      if ((v45 & v97) == 0)
      {
        goto LABEL_47;
      }

      LODWORD(v23) = v92;
      if (v92 != *(v93 + 9))
      {
        goto LABEL_48;
      }

      v46 = v45 & (-2 << (v100 & 0x3F));
      if (v46)
      {
        v21 = __clz(__rbit64(v46)) | v100 & 0x7FFFFFFFFFFFFFC0;
        v24 = v91;
      }

      else
      {
        v47 = v98 << 6;
        v48 = v98 + 1;
        v49 = &v89[8 * v98];
        v24 = v91;
        while (v48 < (v21 + 63) >> 6)
        {
          v51 = *v49++;
          v50 = v51;
          v47 += 64;
          ++v48;
          if (v51)
          {
            result = sub_1BAB23564(v100, v92, 0);
            v21 = __clz(__rbit64(v50)) + v47;
            goto LABEL_4;
          }
        }

        result = sub_1BAB23564(v100, v92, 0);
      }

LABEL_4:
      v22 = v96 + 1;
      if (v96 + 1 == v24)
      {

        v18 = MEMORY[0x1E69E7CC0];
        a1 = v88;
        a2 = v87;
        goto LABEL_22;
      }
    }

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
    goto LABEL_49;
  }

  v107 = MEMORY[0x1E69E7CC0];
LABEL_22:

  v52 = sub_1BAB4BFB4(a2, a1, sub_1BAB4BA18, sub_1BAB4BA18);

  v53 = v52[2];
  if (v53)
  {
    v109 = v18;
    sub_1BAAFAB24(0, v53, 0);
    v54 = v109;
    v55 = (v52 + 8);
    result = sub_1BABE7A0C();
    v56 = result;
    v57 = 0;
    v95 = v52 + 9;
    v96 = v53;
    v97 = (v52 + 8);
    v98 = v52;
    while ((v56 & 0x8000000000000000) == 0 && v56 < 1 << *(v52 + 32))
    {
      v61 = v56 >> 6;
      if ((*&v55[8 * (v56 >> 6)] & (1 << v56)) == 0)
      {
        goto LABEL_50;
      }

      v62 = *(v52 + 9);
      v99 = v57;
      v100 = v62;
      v108 = v54;
      v63 = v106;
      v64 = *(v106 + 48);
      v65 = v52[6];
      v66 = type metadata accessor for ReplicatorRecord.ID(0);
      v67 = v103;
      sub_1BAB4CC18(v65 + *(*(v66 - 8) + 72) * v56, v103, type metadata accessor for ReplicatorRecord.ID);
      v68 = v52[7];
      v69 = sub_1BABE6CFC();
      v70 = *(v69 - 8);
      (*(v70 + 16))(v67 + v64, v68 + *(v70 + 72) * v56, v69);
      v71 = v104;
      sub_1BAB4CBB0(v67, v104, type metadata accessor for ReplicatorRecord.ID);
      v72 = v67 + v64;
      v73 = v90;
      (*(v70 + 32))(v71 + *(v63 + 48), v72, v69);
      v74 = v71;
      v75 = v105;
      sub_1BAB23414(v74, v105, &qword_1EBC12A10);
      v76 = *(v63 + 48);
      v54 = v108;
      sub_1BAB4CBB0(v75, v73, type metadata accessor for ReplicatorRecord.ID);
      swift_storeEnumTagMultiPayload();
      (*(v70 + 8))(v75 + v76, v69);
      v109 = v54;
      v78 = *(v54 + 16);
      v77 = *(v54 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_1BAAFAB24(v77 > 1, v78 + 1, 1);
        v54 = v109;
      }

      *(v54 + 16) = v78 + 1;
      result = sub_1BAB4CBB0(v73, v54 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v78, type metadata accessor for ReplicatorRecordChange);
      v52 = v98;
      v58 = 1 << *(v98 + 32);
      if (v56 >= v58)
      {
        goto LABEL_51;
      }

      v55 = v97;
      v79 = *(v97 + 8 * v61);
      if ((v79 & (1 << v56)) == 0)
      {
        goto LABEL_52;
      }

      if (v100 != *(v98 + 36))
      {
        goto LABEL_53;
      }

      v80 = v79 & (-2 << (v56 & 0x3F));
      if (v80)
      {
        v58 = __clz(__rbit64(v80)) | v56 & 0x7FFFFFFFFFFFFFC0;
        v59 = v96;
        v60 = v99;
      }

      else
      {
        v81 = v61 << 6;
        v82 = v61 + 1;
        v59 = v96;
        v83 = &v95[v61];
        v60 = v99;
        while (v82 < (v58 + 63) >> 6)
        {
          v85 = *v83++;
          v84 = v85;
          v81 += 64;
          ++v82;
          if (v85)
          {
            result = sub_1BAB23564(v56, v100, 0);
            v58 = __clz(__rbit64(v84)) + v81;
            goto LABEL_25;
          }
        }

        result = sub_1BAB23564(v56, v100, 0);
      }

LABEL_25:
      v57 = v60 + 1;
      v56 = v58;
      if (v57 == v59)
      {

        v18 = MEMORY[0x1E69E7CC0];
        goto LABEL_42;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_42:
  v109 = v18;
  sub_1BAB4A45C(v107);
  sub_1BAB4A45C(v54);
  return v109;
}

uint64_t sub_1BAB4CBB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB4CC18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB4CC80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ReplicatorMessage.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BABE6CFC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReplicatorMessage.id.setter(uint64_t a1)
{
  v3 = sub_1BABE6CFC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReplicatorMessage.clientID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReplicatorMessage() + 20));

  return v1;
}

uint64_t type metadata accessor for ReplicatorMessage()
{
  result = qword_1ED787938;
  if (!qword_1ED787938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReplicatorMessage.clientID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ReplicatorMessage() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ReplicatorMessage.pairingRelationshipID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicatorMessage() + 24);
  v4 = sub_1BABE6CFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicatorMessage.pairingRelationshipID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicatorMessage() + 24);
  v4 = sub_1BABE6CFC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicatorMessage.messageType.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReplicatorMessage() + 28));

  return v1;
}

uint64_t ReplicatorMessage.messageType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ReplicatorMessage() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ReplicatorMessage.protocolVersion.setter(uint64_t a1)
{
  result = type metadata accessor for ReplicatorMessage();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t ReplicatorMessage.data.getter()
{
  v1 = v0 + *(type metadata accessor for ReplicatorMessage() + 36);
  v2 = *v1;
  sub_1BAAE7824(*v1, *(v1 + 8));
  return v2;
}

uint64_t ReplicatorMessage.data.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for ReplicatorMessage() + 36);
  result = sub_1BAAD73E4(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t ReplicatorMessage.responseToID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReplicatorMessage() + 40);

  return sub_1BAB4D2A0(v3, a1);
}

uint64_t sub_1BAB4D2A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ReplicatorMessage.responseToID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReplicatorMessage() + 40);

  return sub_1BAB4D354(a1, v3);
}

uint64_t sub_1BAB4D354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ReplicatorMessage.init(id:clientID:pairingRelationshipID:messageType:protocolVersion:data:responseToID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for ReplicatorMessage();
  v17 = v16[10];
  v18 = sub_1BABE6CFC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  v20 = *(v19 + 32);
  v20(a9, a1, v18);
  v21 = (a9 + v16[5]);
  *v21 = a2;
  v21[1] = a3;
  v20(a9 + v16[6], a4, v18);
  result = sub_1BAB4D354(a11, a9 + v17);
  v23 = (a9 + v16[7]);
  *v23 = a5;
  v23[1] = a6;
  *(a9 + v16[8]) = a7;
  v24 = (a9 + v16[9]);
  *v24 = a8;
  v24[1] = a10;
  return result;
}

uint64_t sub_1BAB4D568()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1635017060;
  if (v1 != 5)
  {
    v3 = 0x65736E6F70736572;
  }

  v4 = 0x546567617373656DLL;
  if (v1 != 3)
  {
    v4 = 0x6C6F636F746F7270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x4449746E65696C63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BAB4D650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAB4E594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAB4D684(uint64_t a1)
{
  v2 = sub_1BAB4D9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB4D6C0(uint64_t a1)
{
  v2 = sub_1BAB4D9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB4D9CC();
  sub_1BABE800C();
  LOBYTE(v13) = 0;
  sub_1BABE6CFC();
  sub_1BAAD771C(&qword_1EBC12220);
  sub_1BABE7E7C();
  if (!v2)
  {
    v9 = type metadata accessor for ReplicatorMessage();
    LOBYTE(v13) = 1;
    sub_1BABE7E5C();
    LOBYTE(v13) = 2;
    sub_1BABE7E7C();
    LOBYTE(v13) = 3;
    sub_1BABE7E5C();
    LOBYTE(v13) = 4;
    sub_1BABE7E8C();
    v10 = (v3 + *(v9 + 36));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 5;
    sub_1BAAE7824(v13, v11);
    sub_1BAB22940();
    sub_1BABE7E7C();
    sub_1BAAD73E4(v13, v14);
    LOBYTE(v13) = 6;
    sub_1BABE7E3C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1BAB4D9CC()
{
  result = qword_1EBC12E30;
  if (!qword_1EBC12E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12E30);
  }

  return result;
}

uint64_t ReplicatorMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = v38 - v4;
  v5 = sub_1BABE6CFC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E38);
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v38 - v13;
  v15 = type metadata accessor for ReplicatorMessage();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = *(v6 + 56);
  v48 = *(v16 + 40);
  v49 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(&v49[v48], 1, 1, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB4D9CC();
  v46 = v14;
  v19 = v47;
  sub_1BABE7FFC();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BAAFF124(&v49[v48]);
  }

  else
  {
    v20 = v9;
    v47 = v6;
    LOBYTE(v50) = 0;
    v21 = sub_1BAAD771C(&qword_1EBC125B0);
    v22 = v43;
    sub_1BABE7DCC();
    v40 = v21;
    v23 = *(v47 + 32);
    v23(v49, v45, v5);
    LOBYTE(v50) = 1;
    v24 = sub_1BABE7DAC();
    v38[2] = 0;
    v39 = v15;
    v25 = &v49[*(v15 + 20)];
    *v25 = v24;
    v25[1] = v26;
    LOBYTE(v50) = 2;
    v27 = v20;
    sub_1BABE7DCC();
    v28 = v39;
    v29 = &v49[v39[6]];
    v38[1] = v5;
    v23(v29, v27, v5);
    LOBYTE(v50) = 3;
    v30 = sub_1BABE7DAC();
    v31 = v49;
    v32 = &v49[v28[7]];
    *v32 = v30;
    v32[1] = v33;
    LOBYTE(v50) = 4;
    v34 = sub_1BABE7DDC();
    v35 = v44;
    *(v31 + v28[8]) = v34;
    v51 = 5;
    sub_1BAB228EC();
    sub_1BABE7DCC();
    *(v31 + v28[9]) = v50;
    LOBYTE(v50) = 6;
    v36 = v42;
    sub_1BABE7D8C();
    (*(v35 + 8))(v46, v22);
    sub_1BAB4D354(v36, v31 + v48);
    sub_1BAB4E0E0(v31, v41);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BAB4E144(v31);
  }
}

uint64_t sub_1BAB4E0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAB4E144(uint64_t a1)
{
  v2 = type metadata accessor for ReplicatorMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s18ReplicatorServices0A26ControlXPCServerParametersO11AllowListIDV05allowgH010Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BABE6CFC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1BAB4E294()
{
  sub_1BABE6CFC();
  if (v0 <= 0x3F)
  {
    sub_1BAB01CF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ReplicatorMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplicatorMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BAB4E490()
{
  result = qword_1EBC12E40;
  if (!qword_1EBC12E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12E40);
  }

  return result;
}

unint64_t sub_1BAB4E4E8()
{
  result = qword_1EBC12E48;
  if (!qword_1EBC12E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12E48);
  }

  return result;
}

unint64_t sub_1BAB4E540()
{
  result = qword_1EBC12E50;
  if (!qword_1EBC12E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12E50);
  }

  return result;
}

uint64_t sub_1BAB4E594(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001BABF6A10 == a2 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000044496F54)
  {

    return 6;
  }

  else
  {
    v6 = sub_1BABE7EDC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t static ReplicatorControlServiceDefinition.domain.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED787220 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1ED787230;
  v2 = qword_1ED787238;
  v3 = unk_1ED787240;
  *a1 = qword_1ED787228;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_1BAB4E88C@<X0>(void *a1@<X8>)
{
  if (qword_1ED787220 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1ED787230;
  v2 = qword_1ED787238;
  v3 = unk_1ED787240;
  *a1 = qword_1ED787228;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

ReplicatorServices::ReplicatorControlServiceError::Code_optional __swiftcall ReplicatorControlServiceError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *ReplicatorControlServiceError.init(code:underlyingError:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t ReplicatorControlServiceError.errorUserInfo.getter()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC14040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BABE9F00;
    *(inited + 32) = sub_1BABE751C();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_2);
    v4 = sub_1BAAE83B0(inited);
    swift_setDeallocating();
    sub_1BAAD2E14(inited + 32, &unk_1EBC132C0);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1BAAE83B0(v6);
  }
}

unint64_t sub_1BAB4EAD0()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC14040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BABE9F00;
    *(inited + 32) = sub_1BABE751C();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_2);
    v4 = sub_1BAAE83B0(inited);
    swift_setDeallocating();
    sub_1BAAD2E14(inited + 32, &unk_1EBC132C0);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1BAAE83B0(v6);
  }
}

uint64_t sub_1BAB4EBF8(uint64_t a1)
{
  v2 = sub_1BAB56E28();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BAB4EC34(uint64_t a1)
{
  v2 = sub_1BAB56E28();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BAB4ECB4(uint64_t a1)
{
  v2 = sub_1BAB542A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB4ECF0(uint64_t a1)
{
  v2 = sub_1BAB542A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorControlXPCServerParameters.Pair.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1BABE6CFC();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E68);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ReplicatorControlXPCServerParameters.Pair(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB542A8();
  sub_1BABE7FFC();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1BAAD7760(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
    sub_1BABE7DCC();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1BAB54390(v11, v13, type metadata accessor for ReplicatorControlXPCServerParameters.Pair);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB4F09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CB8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  sub_1BAAD7760(&qword_1EBC12CC0, type metadata accessor for ReplicatorControlXPCServerParameters.Pair);
  sub_1BABE6A5C();
  sub_1BAAD2E14(a2, &qword_1EBC12CB8);
  sub_1BAAD73E4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BAB23414(v7, a2, &qword_1EBC12CB8);
}

uint64_t sub_1BAB4F290(uint64_t a1)
{
  v2 = sub_1BAB5431C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB4F2CC(uint64_t a1)
{
  v2 = sub_1BAB5431C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorControlXPCServerParameters.Unpair.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1BABE6CFC();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E80);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ReplicatorControlXPCServerParameters.Unpair(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB5431C();
  sub_1BABE7FFC();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1BAAD7760(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
    sub_1BABE7DCC();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1BAB54390(v11, v13, type metadata accessor for ReplicatorControlXPCServerParameters.Unpair);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB4F678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CA8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  sub_1BAAD7760(&qword_1EBC12CB0, type metadata accessor for ReplicatorControlXPCServerParameters.Unpair);
  sub_1BABE6A5C();
  sub_1BAAD2E14(a2, &qword_1EBC12CA8);
  sub_1BAAD73E4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BAB23414(v7, a2, &qword_1EBC12CA8);
}

uint64_t sub_1BAB4F86C(uint64_t a1)
{
  v2 = sub_1BAB543F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB4F8A8(uint64_t a1)
{
  v2 = sub_1BAB543F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorControlXPCServerParameters.Unavailable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1BABE6CFC();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E98);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB543F8();
  sub_1BABE7FFC();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1BAAD7760(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
    sub_1BABE7DCC();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1BAB54390(v11, v13, type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB4FC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  sub_1BAAD7760(&qword_1EBC12CA0, type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable);
  sub_1BABE6A5C();
  sub_1BAAD2E14(a2, &qword_1EBC12C98);
  sub_1BAAD73E4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BAB23414(v7, a2, &qword_1EBC12C98);
}

uint64_t sub_1BAB4FE68(uint64_t a1)
{
  v2 = sub_1BAB5446C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB4FEA4(uint64_t a1)
{
  v2 = sub_1BAB5446C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB5001C(uint64_t a1)
{
  v2 = sub_1BAB544C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB50058(uint64_t a1)
{
  v2 = sub_1BAB544C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB501F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73694C776F6C6C61 && a2 == 0xEB00000000444974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB50284(uint64_t a1)
{
  v2 = sub_1BAB54514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB502C0(uint64_t a1)
{
  v2 = sub_1BAB54514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorControlXPCServerParameters.AllowListID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1BABE6CFC();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12ED8);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB54514();
  sub_1BABE7FFC();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1BAAD7760(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
    sub_1BABE7DCC();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1BAB54390(v11, v13, type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB5066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C78);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  sub_1BAAD7760(&qword_1EBC12C80, type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID);
  sub_1BABE6A5C();
  sub_1BAAD2E14(a2, &qword_1EBC12C78);
  sub_1BAAD73E4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BAB23414(v7, a2, &qword_1EBC12C78);
}

uint64_t ReplicatorControlXPCServerParameters.AllowList.allowList.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1BAB508A8(uint64_t a1)
{
  v2 = sub_1BAB54588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB508E4(uint64_t a1)
{
  v2 = sub_1BAB54588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB50A1C(uint64_t a1)
{
  v2 = sub_1BAB54678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB50A58(uint64_t a1)
{
  v2 = sub_1BAB54678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorControlXPCServerParameters.GetPushToken.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1BABE6CFC();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12F18);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  PushToken = type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken(0);
  MEMORY[0x1EEE9AC00](PushToken - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB54678();
  sub_1BABE7FFC();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1BAAD7760(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
    sub_1BABE7DCC();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1BAB54390(v11, v13, type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB50E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  sub_1BAAD7760(&qword_1EBC12C68, type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken);
  sub_1BABE6A5C();
  sub_1BAAD2E14(a2, &qword_1EBC12C60);
  sub_1BAAD73E4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BAB23414(v7, a2, &qword_1EBC12C60);
}

uint64_t _s18ReplicatorServices0A26ControlXPCServerParametersO11AllowListIDV05allowgH010Foundation4UUIDVvs_0(uint64_t a1)
{
  v3 = sub_1BABE6CFC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1BAB51060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6974616C6572 && a2 == 0xEE00444970696873)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB510F0(uint64_t a1)
{
  v2 = sub_1BAB546EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5112C(uint64_t a1)
{
  v2 = sub_1BAB546EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB511AC(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1BABE800C();
  sub_1BABE6CFC();
  sub_1BAAD7760(&qword_1EBC12220, MEMORY[0x1E69695A8]);
  sub_1BABE7E7C();
  return (*(v7 + 8))(v9, v6);
}

uint64_t ReplicatorControlXPCServerParameters.GetPDRPairingID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1BABE6CFC();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12F30);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  PDRPairingID = type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID(0);
  MEMORY[0x1EEE9AC00](PDRPairingID - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB546EC();
  sub_1BABE7FFC();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1BAAD7760(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
    sub_1BABE7DCC();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1BAB54390(v11, v13, type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB51624(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1BABE800C();
  sub_1BABE6CFC();
  sub_1BAAD7760(&qword_1EBC12220, MEMORY[0x1E69695A8]);
  sub_1BABE7E7C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BAB517D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  sub_1BAAD7760(&qword_1EBC12C58, type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID);
  sub_1BABE6A5C();
  sub_1BAAD2E14(a2, &qword_1EBC12C50);
  sub_1BAAD73E4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BAB23414(v7, a2, &qword_1EBC12C50);
}

uint64_t sub_1BAB519BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB51A44(uint64_t a1)
{
  v2 = sub_1BAB54760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB51A80(uint64_t a1)
{
  v2 = sub_1BAB54760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB51BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB51C70(uint64_t a1)
{
  v2 = sub_1BAAD7214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB51CAC(uint64_t a1)
{
  v2 = sub_1BAAD7214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB51D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7665446C61636F6CLL && a2 == 0xEB00000000656369)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB51DF4(uint64_t a1)
{
  v2 = sub_1BAB547B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB51E30(uint64_t a1)
{
  v2 = sub_1BAB547B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorControlXPCServerResponse.GetLocalDevice.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12F58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB547B4();
  sub_1BABE800C();
  type metadata accessor for ReplicatorDevice(0);
  sub_1BAAD7760(qword_1EBC11FA0, type metadata accessor for ReplicatorDevice);
  sub_1BABE7E7C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ReplicatorControlXPCServerResponse.GetLocalDevice.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for ReplicatorDevice(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12F68);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  LocalDevice = type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice(0);
  MEMORY[0x1EEE9AC00](LocalDevice - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB547B4();
  sub_1BABE7FFC();
  if (!v2)
  {
    v12 = v15;
    sub_1BAAD7760(&qword_1ED787C30, type metadata accessor for ReplicatorDevice);
    v13 = v17;
    sub_1BABE7DCC();
    (*(v16 + 8))(v8, v6);
    sub_1BAB54390(v13, v11, type metadata accessor for ReplicatorDevice);
    sub_1BAB54390(v11, v12, type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB52270(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12F58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB547B4();
  sub_1BABE800C();
  type metadata accessor for ReplicatorDevice(0);
  sub_1BAAD7760(qword_1EBC11FA0, type metadata accessor for ReplicatorDevice);
  sub_1BABE7E7C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BAB5241C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  sub_1BAAD7760(&qword_1EBC12C48, type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice);
  sub_1BABE6A5C();
  sub_1BAAD2E14(a2, &qword_1EBC12C40);
  sub_1BAAD73E4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BAB23414(v7, a2, &qword_1EBC12C40);
}

uint64_t sub_1BAB525F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001BABF6A80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BABE7EDC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BAB52684(uint64_t a1)
{
  v2 = sub_1BAB54828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB526C0(uint64_t a1)
{
  v2 = sub_1BAB54828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB52740(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v11 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11();
  sub_1BABE800C();
  sub_1BABE7E6C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BAB528C4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, _BYTE *a4@<X8>)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v15 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  sub_1BABE7FFC();
  if (!v4)
  {
    v10 = v14;
    v11 = sub_1BABE7DBC();
    (*(v15 + 8))(v9, v7);
    *v10 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB52A84(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v13 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13();
  sub_1BABE800C();
  sub_1BABE7E6C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1BAB52BDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  a3();
  v4 = sub_1BABE6A8C();
  v6 = v5;
  v7 = sub_1BABE6BDC();
  sub_1BAAD73E4(v4, v6);

  return v7;
}

uint64_t sub_1BAB52CB8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v7 = sub_1BABE6BEC();
  v9 = v8;
  a5();
  sub_1BABE6A5C();
  sub_1BAAD73E4(v7, v9);

  *a2 = v11;
  return result;
}

uint64_t sub_1BAB52DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73694C776F6C6C61 && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB52E38(uint64_t a1)
{
  v2 = sub_1BAB5487C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB52E74(uint64_t a1)
{
  v2 = sub_1BAB5487C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB52EF4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v10 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v12[0])();

  sub_1BABE800C();
  v12[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AB0);
  sub_1BAB545DC(&qword_1EBC12EF0, &qword_1EBC12220);
  sub_1BABE7E7C();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1BAB530E8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, void *a4@<X8>)
{
  v12 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  sub_1BABE7FFC();
  if (!v4)
  {
    v10 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AB0);
    sub_1BAB545DC(&qword_1EBC12F00, &qword_1EBC125B0);
    sub_1BABE7DCC();
    (*(v13 + 8))(v9, v7);
    *v10 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB532F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  a3();
  v4 = sub_1BABE6A8C();
  v6 = v5;
  v7 = sub_1BABE6BDC();
  sub_1BAAD73E4(v4, v6);

  return v7;
}

uint64_t ReplicatorControlXPCServerResponse.GetPushToken.pushToken.getter()
{
  v1 = *v0;
  sub_1BAAE7824(*v0, *(v0 + 8));
  return v1;
}

uint64_t ReplicatorControlXPCServerResponse.GetPushToken.init(pushToken:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1BAB5341C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656B6F5468737570 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB534AC(uint64_t a1)
{
  v2 = sub_1BAB548D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB534E8(uint64_t a1)
{
  v2 = sub_1BAB548D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorControlXPCServerResponse.GetPushToken.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12FA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAAE7824(v7, v8);
  sub_1BAB548D0();
  sub_1BABE800C();
  v10 = v7;
  v11 = v8;
  sub_1BAB22940();
  sub_1BABE7E7C();
  sub_1BAAD73E4(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t ReplicatorControlXPCServerResponse.GetPushToken.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12FB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB548D0();
  sub_1BABE7FFC();
  if (!v2)
  {
    sub_1BAB228EC();
    sub_1BABE7DCC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB53828()
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB555E8();
  v0 = sub_1BABE6A8C();
  v2 = v1;
  v3 = sub_1BABE6BDC();
  sub_1BAAD73E4(v0, v2);

  return v3;
}

uint64_t sub_1BAB53948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6972696150726470 && a2 == 0xEC0000004449676ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB539D4(uint64_t a1)
{
  v2 = sub_1BAB54924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB53A10(uint64_t a1)
{
  v2 = sub_1BAB54924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorControlXPCServerResponse.GetPDRPairingID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12FB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB54924();
  sub_1BABE800C();
  sub_1BABE6CFC();
  sub_1BAAD7760(&qword_1EBC12220, MEMORY[0x1E69695A8]);
  sub_1BABE7E3C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ReplicatorControlXPCServerResponse.GetPDRPairingID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12FC8);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  PDRPairingID = type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID(0);
  MEMORY[0x1EEE9AC00](PDRPairingID - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB54924();
  sub_1BABE7FFC();
  if (!v2)
  {
    v13 = v16;
    sub_1BABE6CFC();
    sub_1BAAD7760(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
    sub_1BABE7D8C();
    (*(v17 + 8))(v9, v7);
    sub_1BAB23414(v6, v12, &qword_1EBC12B60);
    sub_1BAB54390(v12, v13, type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB53E50(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12FB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB54924();
  sub_1BABE800C();
  sub_1BABE6CFC();
  sub_1BAAD7760(&qword_1EBC12220, MEMORY[0x1E69695A8]);
  sub_1BABE7E3C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BAB53FFC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAAD7760(a3, a4);
  v6 = sub_1BABE6A8C();
  v8 = v7;
  v9 = sub_1BABE6BDC();
  sub_1BAAD73E4(v6, v8);

  return v9;
}

uint64_t sub_1BAB540D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  sub_1BAAD7760(&unk_1EBC12C20, type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID);
  sub_1BABE6A5C();
  sub_1BAAD2E14(a2, &qword_1EBC12C18);
  sub_1BAAD73E4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BAB23414(v7, a2, &qword_1EBC12C18);
}

unint64_t sub_1BAB542A8()
{
  result = qword_1EBC12E60;
  if (!qword_1EBC12E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12E60);
  }

  return result;
}

unint64_t sub_1BAB5431C()
{
  result = qword_1EBC12E78;
  if (!qword_1EBC12E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12E78);
  }

  return result;
}

uint64_t sub_1BAB54390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BAB543F8()
{
  result = qword_1EBC12E90;
  if (!qword_1EBC12E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12E90);
  }

  return result;
}

unint64_t sub_1BAB5446C()
{
  result = qword_1EBC123C8;
  if (!qword_1EBC123C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC123C8);
  }

  return result;
}

unint64_t sub_1BAB544C0()
{
  result = qword_1EBC12EB8;
  if (!qword_1EBC12EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12EB8);
  }

  return result;
}

unint64_t sub_1BAB54514()
{
  result = qword_1EBC12ED0;
  if (!qword_1EBC12ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12ED0);
  }

  return result;
}

unint64_t sub_1BAB54588()
{
  result = qword_1EBC12EE8;
  if (!qword_1EBC12EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12EE8);
  }

  return result;
}

uint64_t sub_1BAB545DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC13AB0);
    sub_1BAAD7760(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BAB54678()
{
  result = qword_1EBC12F10;
  if (!qword_1EBC12F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12F10);
  }

  return result;
}

unint64_t sub_1BAB546EC()
{
  result = qword_1EBC12F28;
  if (!qword_1EBC12F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12F28);
  }

  return result;
}

unint64_t sub_1BAB54760()
{
  result = qword_1ED7871F0;
  if (!qword_1ED7871F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7871F0);
  }

  return result;
}

unint64_t sub_1BAB547B4()
{
  result = qword_1EBC12F60;
  if (!qword_1EBC12F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12F60);
  }

  return result;
}

unint64_t sub_1BAB54828()
{
  result = qword_1EBC12F78;
  if (!qword_1EBC12F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12F78);
  }

  return result;
}

unint64_t sub_1BAB5487C()
{
  result = qword_1EBC12F90;
  if (!qword_1EBC12F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12F90);
  }

  return result;
}

unint64_t sub_1BAB548D0()
{
  result = qword_1EBC12FA8;
  if (!qword_1EBC12FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12FA8);
  }

  return result;
}

unint64_t sub_1BAB54924()
{
  result = qword_1EBC12FC0;
  if (!qword_1EBC12FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12FC0);
  }

  return result;
}

unint64_t sub_1BAB5499C()
{
  result = qword_1EBC12FD0;
  if (!qword_1EBC12FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12FD0);
  }

  return result;
}

unint64_t sub_1BAB549F4()
{
  result = qword_1EBC12FD8;
  if (!qword_1EBC12FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12FD8);
  }

  return result;
}

uint64_t sub_1BAB54A48(void *a1)
{
  a1[1] = sub_1BAAD7760(&qword_1EBC12CC0, type metadata accessor for ReplicatorControlXPCServerParameters.Pair);
  a1[2] = sub_1BAAD7760(&unk_1EBC13BE0, type metadata accessor for ReplicatorControlXPCServerParameters.Pair);
  result = sub_1BAAD7760(&qword_1EBC12FE0, type metadata accessor for ReplicatorControlXPCServerParameters.Pair);
  a1[3] = result;
  return result;
}

uint64_t sub_1BAB54AF4(void *a1)
{
  a1[1] = sub_1BAAD7760(&qword_1EBC12CB0, type metadata accessor for ReplicatorControlXPCServerParameters.Unpair);
  a1[2] = sub_1BAAD7760(&qword_1EBC12FE8, type metadata accessor for ReplicatorControlXPCServerParameters.Unpair);
  result = sub_1BAAD7760(&qword_1EBC12FF0, type metadata accessor for ReplicatorControlXPCServerParameters.Unpair);
  a1[3] = result;
  return result;
}

uint64_t sub_1BAB54BA0(void *a1)
{
  a1[1] = sub_1BAAD7760(&qword_1EBC12CA0, type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable);
  a1[2] = sub_1BAAD7760(&unk_1EBC13BD0, type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable);
  result = sub_1BAAD7760(&qword_1EBC12FF8, type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable);
  a1[3] = result;
  return result;
}

unint64_t sub_1BAB54C8C()
{
  result = qword_1EBC123B0;
  if (!qword_1EBC123B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC123B0);
  }

  return result;
}

unint64_t sub_1BAB54CE0()
{
  result = qword_1EBC12128;
  if (!qword_1EBC12128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12128);
  }

  return result;
}

unint64_t sub_1BAB54D74()
{
  result = qword_1EBC13C40;
  if (!qword_1EBC13C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13C40);
  }

  return result;
}

unint64_t sub_1BAB54DC8()
{
  result = qword_1EBC13000;
  if (!qword_1EBC13000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13000);
  }

  return result;
}

uint64_t sub_1BAB54E1C(void *a1)
{
  a1[1] = sub_1BAAD7760(&qword_1EBC12C80, type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID);
  a1[2] = sub_1BAAD7760(&qword_1EBC13008, type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID);
  result = sub_1BAAD7760(&qword_1EBC13010, type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID);
  a1[3] = result;
  return result;
}

unint64_t sub_1BAB54F08()
{
  result = qword_1EBC13018;
  if (!qword_1EBC13018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13018);
  }

  return result;
}

unint64_t sub_1BAB54F5C()
{
  result = qword_1EBC13020;
  if (!qword_1EBC13020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13020);
  }

  return result;
}

uint64_t sub_1BAB54FB0(void *a1)
{
  a1[1] = sub_1BAAD7760(&qword_1EBC12C68, type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken);
  a1[2] = sub_1BAAD7760(&qword_1EBC13028, type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken);
  result = sub_1BAAD7760(&qword_1EBC13030, type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken);
  a1[3] = result;
  return result;
}

uint64_t sub_1BAB5505C(void *a1)
{
  a1[1] = sub_1BAAD7760(&qword_1EBC12C58, type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID);
  a1[2] = sub_1BAAD7760(&unk_1EBC13BF0, type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID);
  result = sub_1BAAD7760(&qword_1EBC13038, type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID);
  a1[3] = result;
  return result;
}

unint64_t sub_1BAB55148()
{
  result = qword_1EBC12140;
  if (!qword_1EBC12140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12140);
  }

  return result;
}

unint64_t sub_1BAB5519C()
{
  result = qword_1EBC12138;
  if (!qword_1EBC12138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12138);
  }

  return result;
}

unint64_t sub_1BAB55230()
{
  result = qword_1EBC12150;
  if (!qword_1EBC12150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12150);
  }

  return result;
}

unint64_t sub_1BAB55284()
{
  result = qword_1EBC12148;
  if (!qword_1EBC12148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12148);
  }

  return result;
}

uint64_t sub_1BAB552D8(void *a1)
{
  a1[1] = sub_1BAAD7760(&qword_1EBC12C48, type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice);
  a1[2] = sub_1BAAD7760(&qword_1EBC13040, type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice);
  result = sub_1BAAD7760(&qword_1EBC13048, type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice);
  a1[3] = result;
  return result;
}

unint64_t sub_1BAB553C4()
{
  result = qword_1EBC13050;
  if (!qword_1EBC13050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13050);
  }

  return result;
}

unint64_t sub_1BAB55418()
{
  result = qword_1EBC13058;
  if (!qword_1EBC13058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13058);
  }

  return result;
}

unint64_t sub_1BAB554AC()
{
  result = qword_1EBC13060;
  if (!qword_1EBC13060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13060);
  }

  return result;
}

unint64_t sub_1BAB55500()
{
  result = qword_1EBC13068;
  if (!qword_1EBC13068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13068);
  }

  return result;
}

uint64_t sub_1BAB55594(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1BAB555E8()
{
  result = qword_1EBC13070;
  if (!qword_1EBC13070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13070);
  }

  return result;
}

unint64_t sub_1BAB5563C()
{
  result = qword_1EBC13078;
  if (!qword_1EBC13078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13078);
  }

  return result;
}

uint64_t sub_1BAB55690(void *a1)
{
  a1[1] = sub_1BAAD7760(&unk_1EBC12C20, type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID);
  a1[2] = sub_1BAAD7760(&qword_1EBC13080, type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID);
  result = sub_1BAAD7760(&qword_1EBC13088, type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID);
  a1[3] = result;
  return result;
}

uint64_t sub_1BAB5574C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BAB557A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t getEnumTagSinglePayload for ReplicationXPCServerResponse.GetClientEnabled(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BAB55B58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1BAB55BA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_1BAB55C08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BAB55C5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1BAB55CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BAB55E5C()
{
  result = qword_1EBC13110;
  if (!qword_1EBC13110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13110);
  }

  return result;
}

unint64_t sub_1BAB55EB4()
{
  result = qword_1EBC13118;
  if (!qword_1EBC13118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13118);
  }

  return result;
}

unint64_t sub_1BAB55F0C()
{
  result = qword_1EBC13120;
  if (!qword_1EBC13120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13120);
  }

  return result;
}

unint64_t sub_1BAB55F64()
{
  result = qword_1EBC13128;
  if (!qword_1EBC13128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13128);
  }

  return result;
}

unint64_t sub_1BAB55FBC()
{
  result = qword_1EBC13130;
  if (!qword_1EBC13130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13130);
  }

  return result;
}

unint64_t sub_1BAB56014()
{
  result = qword_1EBC13138;
  if (!qword_1EBC13138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13138);
  }

  return result;
}

unint64_t sub_1BAB5606C()
{
  result = qword_1EBC13140;
  if (!qword_1EBC13140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13140);
  }

  return result;
}

unint64_t sub_1BAB560C4()
{
  result = qword_1EBC13148;
  if (!qword_1EBC13148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13148);
  }

  return result;
}

unint64_t sub_1BAB5611C()
{
  result = qword_1EBC13150;
  if (!qword_1EBC13150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13150);
  }

  return result;
}

unint64_t sub_1BAB56174()
{
  result = qword_1EBC13158;
  if (!qword_1EBC13158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13158);
  }

  return result;
}

unint64_t sub_1BAB561CC()
{
  result = qword_1EBC13160;
  if (!qword_1EBC13160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13160);
  }

  return result;
}

unint64_t sub_1BAB56224()
{
  result = qword_1EBC13168;
  if (!qword_1EBC13168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13168);
  }

  return result;
}

unint64_t sub_1BAB5627C()
{
  result = qword_1EBC13170;
  if (!qword_1EBC13170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13170);
  }

  return result;
}

unint64_t sub_1BAB562D4()
{
  result = qword_1EBC13178;
  if (!qword_1EBC13178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13178);
  }

  return result;
}

unint64_t sub_1BAB5632C()
{
  result = qword_1EBC13180;
  if (!qword_1EBC13180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13180);
  }

  return result;
}

unint64_t sub_1BAB56384()
{
  result = qword_1EBC13188;
  if (!qword_1EBC13188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13188);
  }

  return result;
}

unint64_t sub_1BAB563DC()
{
  result = qword_1EBC13190;
  if (!qword_1EBC13190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13190);
  }

  return result;
}

unint64_t sub_1BAB56434()
{
  result = qword_1EBC13198;
  if (!qword_1EBC13198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13198);
  }

  return result;
}

unint64_t sub_1BAB5648C()
{
  result = qword_1EBC131A0;
  if (!qword_1EBC131A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC131A0);
  }

  return result;
}

unint64_t sub_1BAB564E4()
{
  result = qword_1EBC131A8;
  if (!qword_1EBC131A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC131A8);
  }

  return result;
}

unint64_t sub_1BAB5653C()
{
  result = qword_1EBC131B0;
  if (!qword_1EBC131B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC131B0);
  }

  return result;
}

unint64_t sub_1BAB56594()
{
  result = qword_1EBC131B8;
  if (!qword_1EBC131B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC131B8);
  }

  return result;
}

unint64_t sub_1BAB565EC()
{
  result = qword_1EBC131C0;
  if (!qword_1EBC131C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC131C0);
  }

  return result;
}

unint64_t sub_1BAB56644()
{
  result = qword_1EBC131C8;
  if (!qword_1EBC131C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC131C8);
  }

  return result;
}

unint64_t sub_1BAB5669C()
{
  result = qword_1EBC131D0;
  if (!qword_1EBC131D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC131D0);
  }

  return result;
}

unint64_t sub_1BAB566F4()
{
  result = qword_1EBC131D8;
  if (!qword_1EBC131D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC131D8);
  }

  return result;
}

unint64_t sub_1BAB5674C()
{
  result = qword_1ED7871E0;
  if (!qword_1ED7871E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7871E0);
  }

  return result;
}

unint64_t sub_1BAB567A4()
{
  result = qword_1ED7871E8;
  if (!qword_1ED7871E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7871E8);
  }

  return result;
}

unint64_t sub_1BAB567FC()
{
  result = qword_1EBC131E0;
  if (!qword_1EBC131E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC131E0);
  }

  return result;
}

unint64_t sub_1BAB56854()
{
  result = qword_1EBC131E8;
  if (!qword_1EBC131E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC131E8);
  }

  return result;
}

unint64_t sub_1BAB568AC()
{
  result = qword_1EBC131F0;
  if (!qword_1EBC131F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC131F0);
  }

  return result;
}

unint64_t sub_1BAB56904()
{
  result = qword_1EBC131F8;
  if (!qword_1EBC131F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC131F8);
  }

  return result;
}

unint64_t sub_1BAB5695C()
{
  result = qword_1EBC13200;
  if (!qword_1EBC13200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13200);
  }

  return result;
}

unint64_t sub_1BAB569B4()
{
  result = qword_1EBC13208;
  if (!qword_1EBC13208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13208);
  }

  return result;
}

unint64_t sub_1BAB56A0C()
{
  result = qword_1EBC13210;
  if (!qword_1EBC13210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13210);
  }

  return result;
}

unint64_t sub_1BAB56A64()
{
  result = qword_1EBC13218;
  if (!qword_1EBC13218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13218);
  }

  return result;
}

unint64_t sub_1BAB56ABC()
{
  result = qword_1EBC13220;
  if (!qword_1EBC13220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13220);
  }

  return result;
}

unint64_t sub_1BAB56B14()
{
  result = qword_1EBC13228;
  if (!qword_1EBC13228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13228);
  }

  return result;
}

unint64_t sub_1BAB56B6C()
{
  result = qword_1EBC123B8;
  if (!qword_1EBC123B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC123B8);
  }

  return result;
}

unint64_t sub_1BAB56BC4()
{
  result = qword_1EBC123C0;
  if (!qword_1EBC123C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC123C0);
  }

  return result;
}

unint64_t sub_1BAB56C1C()
{
  result = qword_1EBC13230;
  if (!qword_1EBC13230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13230);
  }

  return result;
}

unint64_t sub_1BAB56C74()
{
  result = qword_1EBC13238;
  if (!qword_1EBC13238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13238);
  }

  return result;
}

unint64_t sub_1BAB56CCC()
{
  result = qword_1EBC13240;
  if (!qword_1EBC13240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13240);
  }

  return result;
}

unint64_t sub_1BAB56D24()
{
  result = qword_1EBC13248;
  if (!qword_1EBC13248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13248);
  }

  return result;
}

unint64_t sub_1BAB56D7C()
{
  result = qword_1EBC13250;
  if (!qword_1EBC13250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13250);
  }

  return result;
}

unint64_t sub_1BAB56DD4()
{
  result = qword_1EBC13258;
  if (!qword_1EBC13258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13258);
  }

  return result;
}

unint64_t sub_1BAB56E28()
{
  result = qword_1EBC13260;
  if (!qword_1EBC13260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13260);
  }

  return result;
}

_BYTE *ReplicationServiceError.init(code:underlyingError:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

id ReplicationXPCServerParametersExtendedAttribute.__allocating_init(name:data:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = &v10[OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_name];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v10[OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_data];
  *&v10[OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_data] = xmmword_1BABE9A70;
  swift_beginAccess();
  *v11 = a1;
  *(v11 + 1) = a2;
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = a3;
  v12[1] = a4;
  sub_1BAAE7824(a3, a4);
  sub_1BAADAEE8(v13, v14);
  v17.receiver = v10;
  v17.super_class = v5;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  sub_1BAAD73E4(a3, a4);
  return v15;
}

id ReplicationXPCServerParametersRecordValue.__allocating_init(version:data:fileHandle:extendedAttributes:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v11 = objc_allocWithZone(v6);
  v12 = &v11[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data];
  *&v11[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data] = xmmword_1BABE9A70;
  v13 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle;
  *&v11[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle] = 0;
  v14 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes;
  *&v11[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes] = 0;
  *&v11[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_version] = a1;
  swift_beginAccess();
  v15 = *v12;
  v16 = v12[1];
  *v12 = a2;
  v12[1] = a3;
  sub_1BAAF10BC(a2, a3);
  sub_1BAADAEE8(v15, v16);
  swift_beginAccess();
  v17 = *&v11[v13];
  *&v11[v13] = a4;
  v18 = a4;

  swift_beginAccess();
  *&v11[v14] = a5;

  v22.receiver = v11;
  v22.super_class = v6;
  v19 = objc_msgSendSuper2(&v22, sel_init);

  sub_1BAADAEE8(a2, a3);
  return v19;
}

id ReplicationXPCServerParametersRecord.__allocating_init(id:version:values:expiration:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = objc_allocWithZone(v6);
  v12 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_expiration;
  v13 = sub_1BABE6C8C();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  sub_1BAB6396C(a1, &v11[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id], type metadata accessor for ReplicatorRecord.ID);
  v14 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_version;
  v15 = sub_1BABE6CFC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v11[v14], a2, v15);
  *&v11[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_values] = a3;
  swift_beginAccess();
  sub_1BAB22AD8(a4, &v11[v12]);
  swift_endAccess();
  *&v11[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_options] = a5;
  v21.receiver = v11;
  v21.super_class = v6;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  sub_1BAAD2E14(a4, &qword_1EBC132A0);
  (*(v16 + 8))(a2, v15);
  sub_1BAB639F8(a1, type metadata accessor for ReplicatorRecord.ID);
  return v17;
}

id ReplicationXPCServerParametersAddRecords.__allocating_init(parameters:records:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 8);
  v7 = &v5[OBJC_IVAR____TtC18ReplicatorServices40ReplicationXPCServerParametersAddRecords_parameters];
  *v7 = *a1;
  v7[8] = v6;
  *&v5[OBJC_IVAR____TtC18ReplicatorServices40ReplicationXPCServerParametersAddRecords_records] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_1BAB57440()
{
  if (qword_1ED787CB8 != -1)
  {
    swift_once();
  }

  qword_1ED787800 = qword_1ED787CC0;
  *algn_1ED787808 = *algn_1ED787CC8;
  qword_1ED787810 = qword_1ED787CD0;
  unk_1ED787818 = unk_1ED787CD8;
}

uint64_t static ReplicationServiceDefinition.domain.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED7877F8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_1ED787808;
  v2 = qword_1ED787810;
  v3 = unk_1ED787818;
  *a1 = qword_1ED787800;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_1BAB57564@<X0>(void *a1@<X8>)
{
  if (qword_1ED7877F8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_1ED787808;
  v2 = qword_1ED787810;
  v3 = unk_1ED787818;
  *a1 = qword_1ED787800;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

ReplicatorServices::ReplicationServiceError::Code_optional __swiftcall ReplicationServiceError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t ReplicationServiceError.errorUserInfo.getter()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC14040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BABE9F00;
    *(inited + 32) = sub_1BABE751C();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_2);
    v4 = sub_1BAAE83B0(inited);
    swift_setDeallocating();
    sub_1BAAD2E14(inited + 32, &unk_1EBC132C0);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1BAAE83B0(v6);
  }
}

uint64_t sub_1BAB57790(uint64_t a1)
{
  v2 = sub_1BAB68F0C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BAB577CC(uint64_t a1)
{
  v2 = sub_1BAB68F0C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t ReplicationXPCServerParametersRecord.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id;
  swift_beginAccess();
  return sub_1BAB6396C(v1 + v3, a1, type metadata accessor for ReplicatorRecord.ID);
}

uint64_t ReplicationXPCServerParametersRecord.id.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id;
  swift_beginAccess();
  sub_1BAB6490C(a1, v1 + v3, type metadata accessor for ReplicatorRecord.ID);
  return swift_endAccess();
}

uint64_t ReplicationXPCServerParametersRecord.version.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_version;
  swift_beginAccess();
  v4 = sub_1BABE6CFC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ReplicationXPCServerParametersRecord.version.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_version;
  swift_beginAccess();
  v4 = sub_1BABE6CFC();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t ReplicationXPCServerParametersRecord.values.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_values;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ReplicationXPCServerParametersRecord.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_expiration;
  swift_beginAccess();
  return sub_1BAAD2DAC(v1 + v3, a1, &qword_1EBC132A0);
}

uint64_t ReplicationXPCServerParametersRecord.expiration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_expiration;
  swift_beginAccess();
  sub_1BAAD7BA0(a1, v1 + v3, &qword_1EBC132A0);
  return swift_endAccess();
}

uint64_t ReplicationXPCServerParametersRecord.options.getter()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_options;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ReplicationXPCServerParametersRecord.options.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_options;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ReplicationXPCServerParametersRecord.init(id:version:values:expiration:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_expiration;
  v12 = sub_1BABE6C8C();
  (*(*(v12 - 8) + 56))(&v6[v11], 1, 1, v12);
  sub_1BAB6396C(a1, &v6[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id], type metadata accessor for ReplicatorRecord.ID);
  v13 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_version;
  v14 = sub_1BABE6CFC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v6[v13], a2, v14);
  *&v6[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_values] = a3;
  swift_beginAccess();
  sub_1BAB22AD8(a4, &v6[v11]);
  swift_endAccess();
  *&v6[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_options] = a5;
  v20.receiver = v6;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, sel_init);
  sub_1BAAD2E14(a4, &qword_1EBC132A0);
  (*(v15 + 8))(a2, v14);
  sub_1BAB639F8(a1, type metadata accessor for ReplicatorRecord.ID);
  return v16;
}

uint64_t ReplicationXPCServerParametersRecord.description.getter()
{
  v1 = v0;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v20[0]);
  v3 = v20 - v2;
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReplicatorRecord.ID(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1BABE7AEC();

  v25 = 540697705;
  v26 = 0xE400000000000000;
  v12 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id;
  swift_beginAccess();
  sub_1BAB6396C(v1 + v12, v11, type metadata accessor for ReplicatorRecord.ID);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1BABE7AEC();
  MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
  MEMORY[0x1BFAFD240](*(v11 + *(v9 + 40)), *(v11 + *(v9 + 40) + 8));
  MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
  MEMORY[0x1BFAFD240](v11[2], v11[3]);
  MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
  MEMORY[0x1BFAFD240](v11[4], v11[5]);
  MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
  type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  sub_1BABE7BFC();
  MEMORY[0x1BFAFD240](v21, v22);

  sub_1BAB639F8(v11, type metadata accessor for ReplicatorRecord.ID);
  MEMORY[0x1BFAFD240](0x6F6973726576203BLL, 0xEB00000000203A6ELL);
  v13 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_version;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v13, v4);
  sub_1BAB646F0(&qword_1EBC128F8, MEMORY[0x1E69695A8]);
  v14 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v14);

  (*(v5 + 8))(v7, v4);
  MEMORY[0x1BFAFD240](0x617269707865203BLL, 0xEE00203A6E6F6974);
  v15 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_expiration;
  swift_beginAccess();
  sub_1BAAD2DAC(v1 + v15, v3, &qword_1EBC132A0);
  v16 = sub_1BABE755C();
  MEMORY[0x1BFAFD240](v16);

  MEMORY[0x1BFAFD240](0x6E6F6974706F203BLL, 0xEB00000000203A73);
  v17 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_options;
  swift_beginAccess();
  v20[1] = *(v1 + v17);
  v18 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v18);

  return v25;
}

uint64_t ReplicationXPCServerParametersRecord.size.getter()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_values;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
LABEL_29:
    v3 = sub_1BABE7A5C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = 0;
  while (2)
  {
    v17 = v5;
    v6 = v4;
    do
    {
      if (v3 == v6)
      {
        goto LABEL_26;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFAFD7A0](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v9 = &v7[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data];
      swift_beginAccess();
      v11 = *v9;
      v10 = v9[1];
      sub_1BAAF10BC(v11, v10);

      ++v6;
    }

    while (v10 >> 60 == 15);
    v12 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v12 != 2)
      {
        sub_1BAADAEE8(v11, v10);
        v13 = 0;
        goto LABEL_23;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      result = sub_1BAADAEE8(v11, v10);
      v13 = v14 - v15;
      if (!__OFSUB__(v14, v15))
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    else
    {
      if (!v12)
      {
        sub_1BAADAEE8(v11, v10);
        v13 = BYTE6(v10);
LABEL_23:
        v5 = v17 + v13;
        if (!__OFADD__(v17, v13))
        {
          continue;
        }

        __break(1u);
LABEL_26:

        return v17;
      }

      result = sub_1BAADAEE8(v11, v10);
      LODWORD(v13) = HIDWORD(v11) - v11;
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        v13 = v13;
        goto LABEL_23;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

void ReplicationXPCServerParametersRecord.encode(withBSXPCCoder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_1BABE6C8C();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id;
  swift_beginAccess();
  v16 = type metadata accessor for ReplicatorRecord.ID(0);
  sub_1BAB6396C(v15 + *(v16 + 28), v14, type metadata accessor for ReplicatorRecord.ID.Ownership);
  v17 = 0;
  v18 = 0;
  if ((*(v9 + 48))(v14, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v14, v8);
    v17 = sub_1BABE6CAC();
    v18 = v19;
    (*(v9 + 8))(v11, v8);
  }

  v45 = v17;

  v20 = sub_1BABE74EC();

  v21 = sub_1BABE74EC();
  [a1 encodeObject:v20 forKey:v21];

  v22 = sub_1BABE74EC();

  v23 = sub_1BABE74EC();
  [a1 encodeObject:v22 forKey:v23];

  v24 = sub_1BABE74EC();

  v25 = sub_1BABE74EC();
  [a1 encodeObject:v24 forKey:v25];

  if (v18)
  {
    v26 = sub_1BABE74EC();

    v27 = sub_1BABE74EC();
    [a1 encodeObject:v26 forKey:v27];
  }

  v28 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_version;
  swift_beginAccess();
  (*(v9 + 16))(v11, v2 + v28, v8);
  sub_1BABE6CAC();
  (*(v9 + 8))(v11, v8);
  v29 = sub_1BABE74EC();

  v30 = sub_1BABE74EC();
  [a1 encodeObject:v29 forKey:v30];

  swift_beginAccess();
  type metadata accessor for ReplicationXPCServerParametersRecordValue();

  v31 = sub_1BABE769C();

  v32 = sub_1BABE74EC();
  [a1 encodeCollection:v31 forKey:v32];

  v33 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_expiration;
  swift_beginAccess();
  v34 = v2 + v33;
  v35 = v46;
  sub_1BAAD2DAC(v34, v46, &qword_1EBC132A0);
  v37 = v47;
  v36 = v48;
  if ((*(v47 + 48))(v35, 1, v48) == 1)
  {
    sub_1BAAD2E14(v35, &qword_1EBC132A0);
  }

  else
  {
    v38 = v44;
    (*(v37 + 32))(v44, v35, v36);
    v39 = sub_1BABE6C2C();
    v40 = sub_1BABE74EC();
    [a1 encodeObject:v39 forKey:v40];

    (*(v37 + 8))(v38, v36);
  }

  swift_beginAccess();
  v41 = sub_1BABE7FEC();
  v42 = sub_1BABE74EC();
  [a1 encodeObject:v41 forKey:v42];
}

id ReplicationXPCServerParametersRecord.init(bsxpcCoder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v102 = &v84 - v5;
  v104 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v104);
  v101 = (&v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v103 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v84 - v15;
  v17 = sub_1BABE6CFC();
  v18 = *(v17 - 8);
  v107 = v17;
  v108 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v106 = &v84 - v22;
  v23 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_expiration;
  v24 = sub_1BABE6C8C();
  v25 = *(v24 - 8);
  v100 = *(v25 + 56);
  v99 = v25 + 56;
  v100(&v2[v23], 1, 1, v24);
  sub_1BAB22BDC(0, &unk_1EBC123F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for ReplicationXPCServerParametersRecordValue();
  v27 = swift_getObjCClassFromMetadata();
  v28 = sub_1BABE74EC();
  v29 = [a1 decodeCollectionOfClass:ObjCClassFromMetadata containingClass:v27 forKey:v28];

  if (!v29)
  {
    goto LABEL_10;
  }

  *&v114 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13338);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v97 = v21;
  v30 = v112;
  v31 = sub_1BABE74EC();
  v32 = [a1 decodeStringForKey_];

  if (!v32)
  {
LABEL_9:

LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    sub_1BAAD2E14(&v2[v23], &qword_1EBC132A0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v98 = v23;
  v95 = sub_1BABE751C();
  v34 = v33;

  v35 = sub_1BABE74EC();
  v36 = [a1 decodeStringForKey_];

  if (!v36)
  {
LABEL_14:

    swift_unknownObjectRelease();
    v23 = v98;
    goto LABEL_11;
  }

  v96 = v34;
  v92 = sub_1BABE751C();
  v38 = v37;

  v39 = sub_1BABE74EC();
  v40 = [a1 decodeStringForKey_];

  if (!v40)
  {

    goto LABEL_14;
  }

  v93 = v38;
  v90 = sub_1BABE751C();
  v94 = v41;

  v42 = sub_1BABE74EC();
  v43 = [a1 decodeStringForKey_];

  v23 = v98;
  if (!v43)
  {

    goto LABEL_9;
  }

  v91 = v30;
  sub_1BABE751C();

  sub_1BABE6C9C();

  v44 = v107;
  v45 = v108;
  v46 = v108 + 48;
  v47 = *(v108 + 48);
  if (v47(v16, 1, v107) == 1)
  {
    swift_unknownObjectRelease();

    v48 = &qword_1EBC12B60;
    v49 = v16;
LABEL_26:
    sub_1BAAD2E14(v49, v48);
    goto LABEL_11;
  }

  v88 = v47;
  v89 = v46;
  v51 = *(v45 + 32);
  v87 = v45 + 32;
  v86 = v51;
  v51(v106, v16, v44);
  sub_1BAB22BDC(0, &qword_1ED787060);
  v52 = swift_getObjCClassFromMetadata();
  v53 = sub_1BABE74EC();
  v54 = [a1 decodeObjectOfClass:v52 forKey:v53];

  if (v54)
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v114 = v112;
  v115 = v113;
  v55 = v107;
  if (!*(&v113 + 1))
  {
    (*(v108 + 8))(v106, v107);
    swift_unknownObjectRelease();

    v48 = &qword_1EBC12990;
    v49 = &v114;
    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v108 + 8))(v106, v55);
    swift_unknownObjectRelease();

    goto LABEL_11;
  }

  v85 = v111;
  v84 = [v111 unsignedLongLongValue];
  v56 = sub_1BABE74EC();
  v57 = [a1 decodeStringForKey_];

  if (v57)
  {
    sub_1BABE751C();
    v59 = v58;

    v60 = v97;
    if (v59)
    {
      sub_1BABE6C9C();

      if (v88(v14, 1, v55) == 1)
      {
        (*(v108 + 8))(v106, v55);
        swift_unknownObjectRelease();

        v48 = &qword_1EBC12B60;
        v49 = v14;
        goto LABEL_26;
      }

      v86(v105, v14, v55);
      v61 = 0;
    }

    else
    {
      v61 = 1;
    }
  }

  else
  {
    v61 = 1;
    v60 = v97;
  }

  (*(v108 + 56))(v105, v61, 1, v55);
  sub_1BAB22BDC(0, &qword_1EBC12400);
  v62 = swift_getObjCClassFromMetadata();
  v63 = sub_1BABE74EC();
  v64 = [a1 decodeObjectOfClass:v62 forKey:v63];

  if (v64)
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v112 = 0u;
    v113 = 0u;
  }

  v65 = v101;
  v114 = v112;
  v115 = v113;
  v66 = v108;
  if (!*(&v113 + 1))
  {
    sub_1BAAD2E14(&v114, &qword_1EBC12990);
    goto LABEL_38;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    v101 = 0;
    goto LABEL_39;
  }

  v101 = v111;
LABEL_39:
  v67 = v103;
  sub_1BAB6396C(v105, v103, type metadata accessor for ReplicatorRecord.ID.Ownership);
  v68 = v95;
  v69 = v96;
  *v65 = v95;
  v65[1] = v69;
  v70 = v93;
  v65[2] = v92;
  v65[3] = v70;
  v71 = v94;
  v65[4] = v90;
  v65[5] = v71;
  v72 = v67;
  v73 = v68;
  sub_1BAB6396C(v72, v65 + *(v104 + 28), type metadata accessor for ReplicatorRecord.ID.Ownership);

  if (sub_1BABE75AC() < 51)
  {
    v77 = v107;
  }

  else
  {
    *&v114 = v73;
    *(&v114 + 1) = v69;
    sub_1BABE6E2C();
    v73 = sub_1BABE6CAC();
    v75 = v74;
    v76 = v60;
    v77 = v107;
    (*(v66 + 8))(v76, v107);

    v69 = v75;
  }

  sub_1BAB639F8(v103, type metadata accessor for ReplicatorRecord.ID.Ownership);
  v78 = (v65 + *(v104 + 32));
  *v78 = v73;
  v78[1] = v69;
  sub_1BAB649E8(v65, &v2[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id], type metadata accessor for ReplicatorRecord.ID);
  *&v2[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_values] = v91;
  (*(v66 + 16))(&v2[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_version], v106, v77);
  v79 = v102;
  v80 = v77;
  v81 = v101;
  if (v101)
  {
    sub_1BABE6C5C();

    v82 = 0;
  }

  else
  {
    v82 = 1;
    v81 = v85;
  }

  sub_1BAB639F8(v105, type metadata accessor for ReplicatorRecord.ID.Ownership);
  (*(v66 + 8))(v106, v80);
  v100(v79, v82, 1, v24);
  swift_beginAccess();
  sub_1BAAD7BA0(v79, &v2[v23], &qword_1EBC132A0);
  swift_endAccess();
  *&v2[OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_options] = v84;
  v110.receiver = v2;
  v110.super_class = ObjectType;
  v83 = objc_msgSendSuper2(&v110, sel_init);
  swift_unknownObjectRelease();
  return v83;
}

id ReplicationXPCServerParametersRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BAB59CF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18ReplicatorServices36ReplicationXPCServerParametersRecord_id;
  swift_beginAccess();
  return sub_1BAB6396C(v3 + v4, a1, type metadata accessor for ReplicatorRecord.ID);
}

uint64_t ReplicationXPCServerParametersExtendedAttribute.name.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ReplicationXPCServerParametersExtendedAttribute.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_name);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id ReplicationXPCServerParametersExtendedAttribute.init(name:data:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_name];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v5[OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_data];
  *&v5[OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_data] = xmmword_1BABE9A70;
  swift_beginAccess();
  *v11 = a1;
  *(v11 + 1) = a2;
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = a3;
  v12[1] = a4;
  sub_1BAAE7824(a3, a4);
  sub_1BAADAEE8(v13, v14);
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  sub_1BAAD73E4(a3, a4);
  return v15;
}

uint64_t ReplicationXPCServerParametersExtendedAttribute.encode(withBSXPCCoder:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_name;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1BABE74EC();

    v5 = sub_1BABE74EC();
    [a1 encodeObject:v4 forKey:v5];
  }

  v6 = (v1 + OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_data);
  result = swift_beginAccess();
  v8 = v6[1];
  if (v8 >> 60 != 15)
  {
    v9 = *v6;
    sub_1BAAE7824(v9, v8);
    v10 = sub_1BABE6BDC();
    v11 = sub_1BABE74EC();
    [a1 encodeObject:v10 forKey:v11];

    return sub_1BAADAEE8(v9, v8);
  }

  return result;
}

id ReplicationXPCServerParametersExtendedAttribute.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_1BAB63A58(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t ReplicationXPCServerParametersRecordValue.version.getter()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_version;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ReplicationXPCServerParametersRecordValue.version.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_version;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1BAB5A3A0(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  sub_1BAAF10BC(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1BAB5A404(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  return sub_1BAADAEE8(v7, v8);
}

void *ReplicationXPCServerParametersRecordValue.fileHandle.getter()
{
  v1 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ReplicationXPCServerParametersRecordValue.fileHandle.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ReplicationXPCServerParametersRecordValue.extendedAttributes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id ReplicationXPCServerParametersRecordValue.init(version:data:fileHandle:extendedAttributes:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = &v6[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data];
  *&v6[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data] = xmmword_1BABE9A70;
  v13 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle;
  *&v6[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle] = 0;
  v14 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes;
  *&v6[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes] = 0;
  *&v6[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_version] = a1;
  swift_beginAccess();
  v15 = *v12;
  v16 = v12[1];
  *v12 = a2;
  v12[1] = a3;
  sub_1BAAF10BC(a2, a3);
  sub_1BAADAEE8(v15, v16);
  swift_beginAccess();
  v17 = *&v6[v13];
  *&v6[v13] = a4;
  v18 = a4;

  swift_beginAccess();
  *&v6[v14] = a5;

  v22.receiver = v6;
  v22.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v22, sel_init);

  sub_1BAADAEE8(a2, a3);
  return v19;
}

void ReplicationXPCServerParametersRecordValue.encode(withBSXPCCoder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_version;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_1BABE74EC();
  [a1 encodeUInt64:v4 forKey:v5];

  v6 = (v1 + OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data);
  swift_beginAccess();
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_1BAAE7824(v8, v7);
    v9 = sub_1BABE6BDC();
    v10 = sub_1BABE74EC();
    [a1 encodeObject:v9 forKey:v10];

    sub_1BAADAEE8(v8, v7);
  }

  v11 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BABE74EC();
    [a1 encodeObject:v13 forKey:v14];
  }

  v15 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes;
  swift_beginAccess();
  if (*(v1 + v15))
  {
    type metadata accessor for ReplicationXPCServerParametersExtendedAttribute();

    v16 = sub_1BABE769C();

    v17 = sub_1BABE74EC();
    [a1 encodeCollection:v16 forKey:v17];
  }
}

uint64_t sub_1BAB5AA64(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = objc_allocWithZone(v2);
  v6 = a2(a1);
  swift_unknownObjectRelease();
  return v6;
}

id ReplicationXPCServerParametersRecordValue.init(bsxpcCoder:)(void *a1)
{
  v1 = sub_1BAB63D18(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1BAB5AB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a4(a3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t ReplicationXPCServerParametersAddRecords.parameters.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ReplicatorServices40ReplicationXPCServerParametersAddRecords_parameters + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC18ReplicatorServices40ReplicationXPCServerParametersAddRecords_parameters);
  *(a1 + 8) = v2;
}

id ReplicationXPCServerParametersAddRecords.init(parameters:records:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = *(a1 + 8);
  v7 = &v2[OBJC_IVAR____TtC18ReplicatorServices40ReplicationXPCServerParametersAddRecords_parameters];
  *v7 = *a1;
  v7[8] = v6;
  *&v2[OBJC_IVAR____TtC18ReplicatorServices40ReplicationXPCServerParametersAddRecords_records] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

void ReplicationXPCServerParametersAddRecords.encode(withBSXPCCoder:)(void *a1)
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB64100();
  v2 = sub_1BABE6A8C();
  v4 = v3;
  v5 = sub_1BABE6BDC();
  sub_1BAAD73E4(v2, v4);

  v6 = sub_1BABE74EC();
  [a1 encodeObject:v5 forKey:v6];

  type metadata accessor for ReplicationXPCServerParametersRecord(0);
  v7 = sub_1BABE769C();
  v8 = sub_1BABE74EC();
  [a1 encodeCollection:v7 forKey:v8];
}

id ReplicationXPCServerParametersAddRecords.init(bsxpcCoder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1BAB22BDC(0, &unk_1EBC123F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for ReplicationXPCServerParametersRecord(0);
  v5 = swift_getObjCClassFromMetadata();
  v6 = sub_1BABE74EC();
  v7 = [a1 decodeCollectionOfClass:ObjCClassFromMetadata containingClass:v5 forKey:v6];

  if (v7 && (*&v21[0] = v7, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13330), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13340), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v19;
    sub_1BAB22BDC(0, &qword_1ED787068);
    v9 = swift_getObjCClassFromMetadata();
    v10 = sub_1BABE74EC();
    v11 = [a1 decodeObjectOfClass:v9 forKey:v10];

    if (v11)
    {
      sub_1BABE79CC();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21[0] = v19;
    v21[1] = v20;
    if (*(&v20 + 1))
    {
      if (swift_dynamicCast())
      {
        v13 = v18;
        v14 = &v1[OBJC_IVAR____TtC18ReplicatorServices40ReplicationXPCServerParametersAddRecords_parameters];
        *v14 = v17;
        v14[8] = v13;
        *&v1[OBJC_IVAR____TtC18ReplicatorServices40ReplicationXPCServerParametersAddRecords_records] = v8;
        v16.receiver = v1;
        v16.super_class = ObjectType;
        v15 = objc_msgSendSuper2(&v16, sel_init);
        swift_unknownObjectRelease();
        return v15;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      sub_1BAAD2E14(v21, &qword_1EBC12990);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

__n128 ReplicationXPCServerParameters.RegisterClient.clientDescriptor.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_1BAB64174(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t sub_1BAB5B28C(uint64_t a1)
{
  v2 = sub_1BAB641A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5B2C8(uint64_t a1)
{
  v2 = sub_1BAB641A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB5B418(uint64_t a1)
{
  v2 = sub_1BAB642A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5B454(uint64_t a1)
{
  v2 = sub_1BAB642A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB5B5B8(uint64_t a1)
{
  v2 = sub_1BAB642F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5B5F4(uint64_t a1)
{
  v2 = sub_1BAB642F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerParameters.EnableClient.clientID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReplicationXPCServerParameters.EnableClient.clientID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1BAB5B7C0(uint64_t a1)
{
  v2 = sub_1BAB64348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5B7FC(uint64_t a1)
{
  v2 = sub_1BAB64348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB5B960(uint64_t a1)
{
  v2 = sub_1BAB6439C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5B99C(uint64_t a1)
{
  v2 = sub_1BAB6439C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB5BB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB5BB88(uint64_t a1)
{
  v2 = sub_1BAB643F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5BBC4(uint64_t a1)
{
  v2 = sub_1BAB643F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB5BC44(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  v11 = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12();
  sub_1BABE800C();
  sub_1BABE7E5C();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1BAB5BDD0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, uint64_t *a4@<X8>)
{
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  sub_1BABE7FFC();
  if (!v4)
  {
    v10 = v17;
    v11 = v18;
    v12 = sub_1BABE7DAC();
    v14 = v13;
    (*(v10 + 8))(v9, v7);
    *v11 = v12;
    v11[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB5BFAC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v14 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  v13 = *v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_1BABE800C();
  sub_1BABE7E5C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BAB5C10C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  a3();
  v4 = sub_1BABE6A8C();
  v6 = v5;
  v7 = sub_1BABE6BDC();
  sub_1BAAD73E4(v4, v6);

  return v7;
}

uint64_t ReplicationXPCServerParameters.AddRecords.destination.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t sub_1BAB5C26C()
{
  if (*v0)
  {
    return 0x656C756465686373;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_1BAB5C2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1BABE7EDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BABE7EDC();

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

uint64_t sub_1BAB5C390(uint64_t a1)
{
  v2 = sub_1BAB64444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5C3CC(uint64_t a1)
{
  v2 = sub_1BAB64444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerParameters.AddRecords.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC133E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64444();

  sub_1BABE800C();
  v15 = v8;
  v14 = 0;
  sub_1BAB64498();
  sub_1BABE7E7C();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1BAB644EC();
    sub_1BABE7E7C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ReplicationXPCServerParameters.AddRecords.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC133F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64444();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12[15] = 0;
  sub_1BAB64540();
  sub_1BABE7DCC();
  v9 = v13;
  v12[13] = 1;
  sub_1BAB64594();
  sub_1BABE7DCC();
  (*(v6 + 8))(v8, v5);
  v10 = v12[14];
  *a2 = v9;
  *(a2 + 8) = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB5C7DC()
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB64100();
  v0 = sub_1BABE6A8C();
  v2 = v1;
  v3 = sub_1BABE6BDC();
  sub_1BAAD73E4(v0, v2);

  return v3;
}

uint64_t ReplicationXPCServerParameters.RemoveRecords.recordIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1BAB5C920()
{
  if (*v0)
  {
    return 0x656C756465686373;
  }

  else
  {
    return 0x444964726F636572;
  }
}

uint64_t sub_1BAB5C960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444964726F636572 && a2 == 0xE900000000000073;
  if (v6 || (sub_1BABE7EDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BABE7EDC();

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

uint64_t sub_1BAB5CA44(uint64_t a1)
{
  v2 = sub_1BAB645E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5CA80(uint64_t a1)
{
  v2 = sub_1BAB645E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerParameters.RemoveRecords.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC133F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB645E8();

  sub_1BABE800C();
  v15 = v8;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13408);
  sub_1BAB6463C();
  sub_1BABE7E7C();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1BAB644EC();
    sub_1BABE7E7C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ReplicationXPCServerParameters.RemoveRecords.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13410);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB645E8();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13408);
  v12[15] = 0;
  sub_1BAB64738();
  sub_1BABE7DCC();
  v9 = v13;
  v12[13] = 1;
  sub_1BAB64594();
  sub_1BABE7DCC();
  (*(v6 + 8))(v8, v5);
  v10 = v12[14];
  *a2 = v9;
  *(a2 + 8) = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB5CEB8()
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB22A84();
  v0 = sub_1BABE6A8C();
  v2 = v1;
  v3 = sub_1BABE6BDC();
  sub_1BAAD73E4(v0, v2);

  return v3;
}

uint64_t ReplicationXPCServerParameters.GetRecords.recordIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ReplicationXPCServerParameters.GetRecords.protocolVersion.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_1BAB5D078()
{
  v1 = 0x444964726F636572;
  v2 = 0x6C69466863746566;
  if (*v0 != 2)
  {
    v2 = 0x6C6F636F746F7270;
  }

  if (*v0)
  {
    v1 = 0x7461446863746566;
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

uint64_t sub_1BAB5D10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAB68B3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAB5D140(uint64_t a1)
{
  v2 = sub_1BAB647EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5D17C(uint64_t a1)
{
  v2 = sub_1BAB647EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerParameters.GetRecords.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13418);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v13 = *(v1 + 9);
  v14 = v9;
  v12 = v1[2];
  v11[1] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB647EC();

  sub_1BABE800C();
  v19 = v8;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13408);
  sub_1BAB6463C();
  sub_1BABE7E7C();

  if (!v2)
  {
    v17 = 1;
    sub_1BABE7E6C();
    v16 = 2;
    sub_1BABE7E6C();
    v15 = 3;
    sub_1BABE7E4C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ReplicationXPCServerParameters.GetRecords.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13428);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB647EC();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13408);
  v22 = 0;
  sub_1BAB64738();
  sub_1BABE7DCC();
  v9 = v23;
  v21 = 1;
  v10 = sub_1BABE7DBC();
  v20 = 2;
  v18 = sub_1BABE7DBC();
  v19 = 3;
  v12 = sub_1BABE7D9C();
  HIDWORD(v17) = v10 & 1;
  v13 = v18 & 1;
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  *a2 = v9;
  *(a2 + 8) = BYTE4(v17);
  *(a2 + 9) = v13;
  *(a2 + 16) = v12;
  *(a2 + 24) = v16 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB5D688()
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB2268C();
  v0 = sub_1BABE6A8C();
  v2 = v1;
  v3 = sub_1BABE6BDC();
  sub_1BAAD73E4(v0, v2);

  return v3;
}

uint64_t sub_1BAB5D7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001BABF6E90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BABE7EDC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BAB5D840(uint64_t a1)
{
  v2 = sub_1BAB64840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5D87C(uint64_t a1)
{
  v2 = sub_1BAB64840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerParameters.GetRecordVersions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13430);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64840();

  sub_1BABE800C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13440);
  sub_1BAB64894(&unk_1ED7872F0, sub_1BAB641F8);
  sub_1BABE7E7C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReplicationXPCServerParameters.GetRecordVersions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13450);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64840();
  sub_1BABE7FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13440);
    sub_1BAB64894(&qword_1EBC11D58, sub_1BAB6424C);
    sub_1BABE7DCC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ReplicationXPCServerParameters.SendMessage.timeout.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ReplicationXPCServerParameters.SendMessage(0);
  v6 = v2 + *(result + 20);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t ReplicationXPCServerParameters.SendMessage.retries.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for ReplicationXPCServerParameters.SendMessage(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BAB5DE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAB68CC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAB5DE38(uint64_t a1)
{
  v2 = sub_1BAB64994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5DE74(uint64_t a1)
{
  v2 = sub_1BAB64994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerParameters.SendMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13460);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64994();
  sub_1BABE800C();
  v8[15] = 0;
  type metadata accessor for ReplicatorMessage();
  sub_1BAB646F0(&qword_1EBC11F80, type metadata accessor for ReplicatorMessage);
  sub_1BABE7E7C();
  if (!v1)
  {
    type metadata accessor for ReplicationXPCServerParameters.SendMessage(0);
    v8[14] = 1;
    sub_1BABE7E1C();
    v8[13] = 2;
    sub_1BABE7E2C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReplicationXPCServerParameters.SendMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for ReplicatorMessage();
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13478);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ReplicationXPCServerParameters.SendMessage(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64994();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v24;
  v13 = v11;
  v29 = 0;
  sub_1BAB646F0(&qword_1ED787410, type metadata accessor for ReplicatorMessage);
  v14 = v25;
  sub_1BABE7DCC();
  sub_1BAB649E8(v26, v13, type metadata accessor for ReplicatorMessage);
  v28 = 1;
  v15 = sub_1BABE7D6C();
  v16 = v13 + *(v9 + 20);
  *v16 = v15;
  *(v16 + 8) = v17 & 1;
  v27 = 2;
  v19 = sub_1BABE7D7C();
  v21 = v20;
  v22 = v13 + *(v9 + 24);
  (*(v12 + 8))(v8, v14);
  *v22 = v19;
  *(v22 + 8) = v21 & 1;
  sub_1BAB6396C(v13, v23, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BAB639F8(v13, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
}

uint64_t sub_1BAB5E470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12BF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  sub_1BAB646F0(&qword_1EBC12BF8, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
  sub_1BABE6A5C();
  sub_1BAAD2E14(a2, &qword_1EBC12BF0);
  sub_1BAAD73E4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BAB23414(v7, a2, &qword_1EBC12BF0);
}

uint64_t sub_1BAB5E680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449746E65696C63 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB5E710(uint64_t a1)
{
  v2 = sub_1BAB64A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5E74C(uint64_t a1)
{
  v2 = sub_1BAB64A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerParameters.GetMessages.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13488);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64A50();

  sub_1BABE800C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12830);
  sub_1BAB64AA4(&unk_1ED7872E0);
  sub_1BABE7E7C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReplicationXPCServerParameters.GetMessages.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13498);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64A50();
  sub_1BABE7FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12830);
    sub_1BAB64AA4(&qword_1EBC11D50);
    sub_1BABE7DCC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB5EB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444964726F636572 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB5EBE4(uint64_t a1)
{
  v2 = sub_1BAB64B10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5EC20(uint64_t a1)
{
  v2 = sub_1BAB64B10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerParameters.GetClientDefinedRecordIDs.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC134A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64B10();

  sub_1BABE800C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13408);
  sub_1BAB6463C();
  sub_1BABE7E7C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReplicationXPCServerParameters.GetClientDefinedRecordIDs.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64B10();
  sub_1BABE7FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13408);
    sub_1BAB64738();
    sub_1BABE7DCC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB5EFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x655664726F636572 && a2 == 0xEE00736E6F697372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB5F078(uint64_t a1)
{
  v2 = sub_1BAB64B64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5F0B4(uint64_t a1)
{
  v2 = sub_1BAB64B64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerResponse.GetRecordsVersions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC134C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64B64();

  sub_1BABE800C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134D0);
  sub_1BAB64BB8();
  sub_1BABE7E7C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReplicationXPCServerResponse.GetRecordsVersions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64B64();
  sub_1BABE7FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134D0);
    sub_1BAB64C6C();
    sub_1BABE7DCC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ReplicationXPCServerResponse.GetDevices.devices.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1BAB5F494(uint64_t a1)
{
  v2 = sub_1BAB64D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5F4D0(uint64_t a1)
{
  v2 = sub_1BAB64D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerResponse.GetDevices.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC134E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64D20();

  sub_1BABE800C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  sub_1BAB64D74();
  sub_1BABE7E7C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReplicationXPCServerResponse.GetDevices.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64D20();
  sub_1BABE7FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
    sub_1BAB64E28();
    sub_1BABE7DCC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ReplicationXPCServerResponse.GetClientDescriptor.clientDescriptor.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1BAB21C84(v8, &v7);
}

__n128 ReplicationXPCServerResponse.GetClientDescriptor.clientDescriptor.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_1BAB64EDC(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

void __swiftcall ReplicationXPCServerResponse.GetClientDescriptor.init(clientDescriptor:)(ReplicatorServices::ReplicationXPCServerResponse::GetClientDescriptor *__return_ptr retstr, ReplicatorServices::ClientDescriptor *clientDescriptor)
{
  recordNotificationName = clientDescriptor->recordNotificationName;
  retstr->clientDescriptor.messageNotificationName = clientDescriptor->messageNotificationName;
  retstr->clientDescriptor.recordNotificationName = recordNotificationName;
  *&retstr->clientDescriptor.zoneDescriptors._rawValue = *&clientDescriptor->zoneDescriptors._rawValue;
  entitlement = clientDescriptor->entitlement;
  retstr->clientDescriptor.id = clientDescriptor->id;
  retstr->clientDescriptor.entitlement = entitlement;
}

uint64_t sub_1BAB5F93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001BABF6E70 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1BABE7EDC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1BAB5F9D0(uint64_t a1)
{
  v2 = sub_1BAB64F0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB5FA0C(uint64_t a1)
{
  v2 = sub_1BAB64F0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BAB5FA8C(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  v11 = v4[3];
  v23 = v4[2];
  v24 = v11;
  v25 = v4[4];
  v12 = v4[1];
  v21 = *v4;
  v22 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1BAB21C84(&v21, &v16);
  a4(v13);
  sub_1BABE800C();
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v16 = v21;
  v17 = v22;
  sub_1BAB641F8();
  sub_1BABE7E7C();
  v15[2] = v18;
  v15[3] = v19;
  v15[4] = v20;
  v15[1] = v17;
  v15[0] = v16;
  sub_1BAB21D34(v15);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1BAB5FC94@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, _OWORD *a4@<X8>)
{
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  sub_1BABE7FFC();
  if (!v4)
  {
    v10 = v15;
    sub_1BAB6424C();
    sub_1BABE7DCC();
    (*(v21 + 8))(v9, v7);
    v11 = v19;
    v10[2] = v18;
    v10[3] = v11;
    v10[4] = v20;
    v12 = v17;
    *v10 = v16;
    v10[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB5FE64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  a3();
  v4 = sub_1BABE6A8C();
  v6 = v5;
  v7 = sub_1BABE6BDC();
  sub_1BAAD73E4(v4, v6);

  return v7;
}

uint64_t ReplicationXPCServerResponse.GetClientDefinedRecordIDs.internalIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ReplicationXPCServerResponse.GetClientDefinedRecordIDs.clientDefinedIDs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ReplicationXPCServerResponse.GetClientDefinedRecordIDs.failedRecordIDs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

ReplicatorServices::ReplicationXPCServerResponse::GetClientDefinedRecordIDs __swiftcall ReplicationXPCServerResponse.GetClientDefinedRecordIDs.init(internalIDs:clientDefinedIDs:failedRecordIDs:)(Swift::OpaquePointer internalIDs, Swift::OpaquePointer clientDefinedIDs, Swift::OpaquePointer failedRecordIDs)
{
  v3->_rawValue = internalIDs._rawValue;
  v3[1]._rawValue = clientDefinedIDs._rawValue;
  v3[2]._rawValue = failedRecordIDs._rawValue;
  result.failedRecordIDs = failedRecordIDs;
  result.clientDefinedIDs = clientDefinedIDs;
  result.internalIDs = internalIDs;
  return result;
}

uint64_t sub_1BAB6004C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x655264656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616E7265746E69;
  }
}

uint64_t sub_1BAB600C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAB68DE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAB600E8(uint64_t a1)
{
  v2 = sub_1BAB64F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB60124(uint64_t a1)
{
  v2 = sub_1BAB64F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerResponse.GetClientDefinedRecordIDs.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13518);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64F60();

  sub_1BABE800C();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13408);
  sub_1BAB6463C();
  sub_1BABE7E7C();

  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    sub_1BABE7E7C();
    v16 = v10;
    v15 = 2;
    sub_1BABE7E7C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ReplicationXPCServerResponse.GetClientDefinedRecordIDs.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13528);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64F60();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13408);
  v16 = 0;
  sub_1BAB64738();
  sub_1BABE7DCC();
  v14 = v17;
  v16 = 1;
  sub_1BABE7DCC();
  v13 = v17;
  v16 = 2;
  sub_1BABE7DCC();
  (*(v6 + 8))(v8, v5);
  v9 = v17;
  v10 = v15;
  v11 = v13;
  *v15 = v14;
  v10[1] = v11;
  v10[2] = v9;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB60634()
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB65EE0();
  v0 = sub_1BABE6A8C();
  v2 = v1;
  v3 = sub_1BABE6BDC();
  sub_1BAAD73E4(v0, v2);

  return v3;
}

uint64_t sub_1BAB607D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB60858(uint64_t a1)
{
  v2 = sub_1BAB64FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB60894(uint64_t a1)
{
  v2 = sub_1BAB64FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerResponse.ReceiveMessage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13530);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64FB4();
  sub_1BABE800C();
  type metadata accessor for ReplicatorMessage();
  sub_1BAB646F0(&qword_1EBC11F80, type metadata accessor for ReplicatorMessage);
  sub_1BABE7E7C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ReplicationXPCServerResponse.ReceiveMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for ReplicatorMessage();
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13540);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64FB4();
  sub_1BABE7FFC();
  if (!v2)
  {
    v12 = v15;
    sub_1BAB646F0(&qword_1ED787410, type metadata accessor for ReplicatorMessage);
    v13 = v17;
    sub_1BABE7DCC();
    (*(v16 + 8))(v8, v6);
    sub_1BAB649E8(v13, v11, type metadata accessor for ReplicatorMessage);
    sub_1BAB649E8(v11, v12, type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB60CD4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13530);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB64FB4();
  sub_1BABE800C();
  type metadata accessor for ReplicatorMessage();
  sub_1BAB646F0(&qword_1EBC11F80, type metadata accessor for ReplicatorMessage);
  sub_1BABE7E7C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BAB60E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AD8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  sub_1BAB646F0(&qword_1EBC12AE0, type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage);
  sub_1BABE6A5C();
  sub_1BAAD2E14(a2, &qword_1EBC12AD8);
  sub_1BAAD73E4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BAB23414(v7, a2, &qword_1EBC12AD8);
}

uint64_t sub_1BAB6108C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB61114(uint64_t a1)
{
  v2 = sub_1BAB65028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB61150(uint64_t a1)
{
  v2 = sub_1BAB65028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerResponse.GetMessages.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13548);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB65028();

  sub_1BABE800C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13558);
  sub_1BAB6507C();
  sub_1BABE7E7C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReplicationXPCServerResponse.GetMessages.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13568);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB65028();
  sub_1BABE7FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13558);
    sub_1BAB65130();
    sub_1BABE7DCC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ReplicationXPCServerResponse.GetLocalDeviceID.init(localDeviceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BABE6CFC();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  return sub_1BAAD7BA0(a1, a2, &qword_1EBC12B60);
}

uint64_t sub_1BAB615F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7665446C61636F6CLL && a2 == 0xED00004449656369)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB61684(uint64_t a1)
{
  v2 = sub_1BAB651E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB616C0(uint64_t a1)
{
  v2 = sub_1BAB651E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerResponse.GetLocalDeviceID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB651E4();
  sub_1BABE800C();
  sub_1BABE6CFC();
  sub_1BAB646F0(&qword_1EBC12220, MEMORY[0x1E69695A8]);
  sub_1BABE7E3C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ReplicationXPCServerResponse.GetLocalDeviceID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13580);
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  LocalDeviceID = type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID(0);
  MEMORY[0x1EEE9AC00](LocalDeviceID - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BABE6CFC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB651E4();
  v13 = v19;
  sub_1BABE7FFC();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = v11;
  }

  else
  {
    v14 = v17;
    sub_1BAB646F0(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
    sub_1BABE7D8C();
    (*(v18 + 8))(v8, v6);
    sub_1BAAD7BA0(v5, v11, &qword_1EBC12B60);
    sub_1BAB6396C(v11, v14, type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = v11;
  }

  return sub_1BAB639F8(v15, type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID);
}

uint64_t sub_1BAB61B6C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13578);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB651E4();
  sub_1BABE800C();
  sub_1BABE6CFC();
  sub_1BAB646F0(&qword_1EBC12220, MEMORY[0x1E69695A8]);
  sub_1BABE7E3C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BAB61D18(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB646F0(a3, a4);
  v6 = sub_1BABE6A8C();
  v8 = v7;
  v9 = sub_1BABE6BDC();
  sub_1BAAD73E4(v6, v8);

  return v9;
}

uint64_t sub_1BAB61DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  sub_1BAB646F0(&unk_1EBC122E0, type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID);
  sub_1BABE6A5C();
  sub_1BAAD2E14(a2, &qword_1EBC13840);
  sub_1BAAD73E4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BAB23414(v7, a2, &qword_1EBC13840);
}

uint64_t sub_1BAB62008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x655264656C696166 && a2 == 0xEF73444964726F63)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BAB62098(uint64_t a1)
{
  v2 = sub_1BAB65258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB620D4(uint64_t a1)
{
  v2 = sub_1BAB65258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerResponse.GetRecordsFailedRecordIDs.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13590);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB65258();

  sub_1BABE800C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13408);
  sub_1BAB6463C();
  sub_1BABE7E7C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReplicationXPCServerResponse.GetRecordsFailedRecordIDs.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC135A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB65258();
  sub_1BABE7FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13408);
    sub_1BAB64738();
    sub_1BABE7DCC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB6244C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  a3();
  v4 = sub_1BABE6A8C();
  v6 = v5;
  v7 = sub_1BABE6BDC();
  sub_1BAAD73E4(v4, v6);

  return v7;
}

uint64_t sub_1BAB62554(uint64_t a1)
{
  v2 = sub_1BAB652AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB62590(uint64_t a1)
{
  v2 = sub_1BAB652AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCServerResponse.GetClientEnabled.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC135A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB652AC();
  sub_1BABE800C();
  sub_1BABE7E6C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ReplicationXPCServerResponse.GetClientEnabled.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC135B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB652AC();
  sub_1BABE7FFC();
  if (!v2)
  {
    v9 = sub_1BABE7DBC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB62874(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC135A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB652AC();
  sub_1BABE800C();
  sub_1BABE7E6C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BAB629AC()
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB6629C();
  v0 = sub_1BABE6A8C();
  v2 = v1;
  v3 = sub_1BABE6BDC();
  sub_1BAAD73E4(v0, v2);

  return v3;
}

uint64_t sub_1BAB62A68(uint64_t a1, _BYTE *a2)
{
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v3 = sub_1BABE6BEC();
  v5 = v4;
  sub_1BAB1D8A8();
  sub_1BABE6A5C();
  sub_1BAAD73E4(v3, v5);

  *a2 = v7;
  return result;
}

id ReplicationXPCServerResponseGetRecords.__allocating_init(records:failedRecordIDs:)(uint64_t a1, uint64_t *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a2;
  *&v5[OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_records] = a1;
  *&v5[OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_failedRecordIDs] = v6;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ReplicationXPCServerResponseGetRecords.init(records:failedRecordIDs:)(uint64_t a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a2;
  *&v2[OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_records] = a1;
  *&v2[OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_failedRecordIDs] = v6;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void ReplicationXPCServerResponseGetRecords.encode(withBSXPCCoder:)(void *a1)
{
  type metadata accessor for ReplicationXPCServerParametersRecord(0);
  v2 = sub_1BABE769C();
  v3 = sub_1BABE74EC();
  [a1 encodeCollection:v2 forKey:v3];

  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB65300();
  v4 = sub_1BABE6A8C();
  v6 = v5;
  v7 = sub_1BABE6BDC();
  sub_1BAAD73E4(v4, v6);

  v8 = sub_1BABE74EC();
  [a1 encodeObject:v7 forKey:v8];
}

void sub_1BAB62DF0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

id ReplicationXPCServerResponseGetRecords.init(bsxpcCoder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1BAB22BDC(0, &unk_1EBC123F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for ReplicationXPCServerParametersRecord(0);
  v5 = swift_getObjCClassFromMetadata();
  v6 = sub_1BABE74EC();
  v7 = [a1 decodeCollectionOfClass:ObjCClassFromMetadata containingClass:v5 forKey:v6];

  if (v7 && (*&v19[0] = v7, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13330), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13340), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v17;
    sub_1BAB22BDC(0, &qword_1ED787068);
    v9 = swift_getObjCClassFromMetadata();
    v10 = sub_1BABE74EC();
    v11 = [a1 decodeObjectOfClass:v9 forKey:v10];

    if (v11)
    {
      sub_1BABE79CC();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19[0] = v17;
    v19[1] = v18;
    if (*(&v18 + 1))
    {
      if (swift_dynamicCast())
      {
        v13 = v16;
        *&v1[OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_records] = v8;
        *&v1[OBJC_IVAR____TtC18ReplicatorServices38ReplicationXPCServerResponseGetRecords_failedRecordIDs] = v13;
        v15.receiver = v1;
        v15.super_class = ObjectType;
        v14 = objc_msgSendSuper2(&v15, sel_init);
        swift_unknownObjectRelease();
        return v14;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      sub_1BAAD2E14(v19, &qword_1EBC12990);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id _s18ReplicatorServices36ReplicationXPCServerParametersRecordCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ReplicationXPCClientParameters.RecordChanges.updated.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ReplicationXPCClientParameters.RecordChanges.deleted.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

ReplicatorServices::ReplicationXPCClientParameters::RecordChanges __swiftcall ReplicationXPCClientParameters.RecordChanges.init(updated:deleted:)(Swift::OpaquePointer updated, Swift::OpaquePointer deleted)
{
  v2->_rawValue = updated._rawValue;
  v2[1]._rawValue = deleted._rawValue;
  result.deleted = deleted;
  result.updated = updated;
  return result;
}

uint64_t sub_1BAB632E4()
{
  if (*v0)
  {
    return 0x646574656C6564;
  }

  else
  {
    return 0x64657461647075;
  }
}

uint64_t sub_1BAB63318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
  if (v6 || (sub_1BABE7EDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646574656C6564 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BABE7EDC();

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

uint64_t sub_1BAB633F4(uint64_t a1)
{
  v2 = sub_1BAB65354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAB63430(uint64_t a1)
{
  v2 = sub_1BAB65354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicationXPCClientParameters.RecordChanges.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC135D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB65354();

  sub_1BABE800C();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134D0);
  sub_1BAB64BB8();
  sub_1BABE7E7C();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13408);
    sub_1BAB6463C();
    sub_1BABE7E7C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ReplicationXPCClientParameters.RecordChanges.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC135E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BAB65354();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134D0);
  v13 = 0;
  sub_1BAB64C6C();
  sub_1BABE7DCC();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13408);
  v13 = 1;
  sub_1BAB64738();
  sub_1BABE7DCC();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BAB638A4()
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAB663D8();
  v0 = sub_1BABE6A8C();
  v2 = v1;
  v3 = sub_1BABE6BDC();
  sub_1BAAD73E4(v0, v2);

  return v3;
}

uint64_t sub_1BAB6396C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAB639F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1BAB63A58(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_name];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_data];
  *&v1[OBJC_IVAR____TtC18ReplicatorServices47ReplicationXPCServerParametersExtendedAttribute_data] = xmmword_1BABE9A70;
  sub_1BAB22BDC(0, &unk_1EBC12230);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_1BABE74EC();
  v7 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v6];

  if (v7)
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (*(&v25 + 1))
  {
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v21;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v22;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_1BAAD2E14(&v26, &qword_1EBC12990);
    v9 = 0;
    v10 = 0;
  }

  sub_1BAB22BDC(0, &qword_1ED787068);
  v11 = swift_getObjCClassFromMetadata();
  v12 = sub_1BABE74EC();
  v13 = [a1 decodeObjectOfClass:v11 forKey:v12];

  if (v13)
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (*(&v25 + 1))
  {
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = v21;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v22;
    }

    else
    {
      v16 = 0xF000000000000000;
    }
  }

  else
  {
    sub_1BAAD2E14(&v26, &qword_1EBC12990);
    v15 = 0;
    v16 = 0xF000000000000000;
  }

  swift_beginAccess();
  *v3 = v9;
  *(v3 + 1) = v10;

  swift_beginAccess();
  v17 = *v4;
  v18 = v4[1];
  *v4 = v15;
  v4[1] = v16;
  sub_1BAADAEE8(v17, v18);
  v23.receiver = v1;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_1BAB63D18(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data];
  *&v1[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_data] = xmmword_1BABE9A70;
  v4 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle;
  *&v1[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_fileHandle] = 0;
  v5 = OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes;
  *&v1[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_extendedAttributes] = 0;
  sub_1BAB22BDC(0, &qword_1ED787068);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_1BABE74EC();
  v8 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v7];

  if (v8)
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (*(&v33 + 1))
  {
    v9 = swift_dynamicCast();
    v10 = v30;
    if (!v9)
    {
      v10 = 0;
    }

    v27 = v10;
    v11 = 0xF000000000000000;
    if (v9)
    {
      v11 = v31;
    }
  }

  else
  {
    sub_1BAAD2E14(&v34, &qword_1EBC12990);
    v27 = 0;
    v11 = 0xF000000000000000;
  }

  v26 = v11;
  sub_1BAB22BDC(0, &qword_1ED787070);
  v12 = swift_getObjCClassFromMetadata();
  v13 = sub_1BABE74EC();
  v14 = [a1 decodeObjectOfClass:v12 forKey:v13];

  if (v14)
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      v15 = v30;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_1BAAD2E14(&v34, &qword_1EBC12990);
    v15 = 0;
  }

  v16 = sub_1BABE74EC();
  v17 = [a1 decodeUInt64ForKey_];

  sub_1BAB22BDC(0, &unk_1EBC123F0);
  v18 = swift_getObjCClassFromMetadata();
  type metadata accessor for ReplicationXPCServerParametersExtendedAttribute();
  v19 = swift_getObjCClassFromMetadata();
  v20 = sub_1BABE74EC();
  v21 = [a1 decodeCollectionOfClass:v18 containingClass:v19 forKey:v20];

  if (v21)
  {
    *&v34 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13330);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13848);
    if (swift_dynamicCast())
    {
      v21 = v32;
    }

    else
    {
      v21 = 0;
    }
  }

  *&v1[OBJC_IVAR____TtC18ReplicatorServices41ReplicationXPCServerParametersRecordValue_version] = v17;
  swift_beginAccess();
  v22 = *v3;
  v23 = v3[1];
  *v3 = v27;
  v3[1] = v26;
  sub_1BAADAEE8(v22, v23);
  swift_beginAccess();
  v24 = *&v1[v4];
  *&v1[v4] = v15;

  swift_beginAccess();
  *&v1[v5] = v21;

  v29.receiver = v1;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, sel_init);
}

unint64_t sub_1BAB64100()
{
  result = qword_1EBC124A8;
  if (!qword_1EBC124A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC124A8);
  }

  return result;
}

unint64_t sub_1BAB641A4()
{
  result = qword_1ED787728;
  if (!qword_1ED787728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787728);
  }

  return result;
}

unint64_t sub_1BAB641F8()
{
  result = qword_1ED787860;
  if (!qword_1ED787860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787860);
  }

  return result;
}

unint64_t sub_1BAB6424C()
{
  result = qword_1ED7873F0;
  if (!qword_1ED7873F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7873F0);
  }

  return result;
}

unint64_t sub_1BAB642A0()
{
  result = qword_1EBC13370;
  if (!qword_1EBC13370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13370);
  }

  return result;
}

unint64_t sub_1BAB642F4()
{
  result = qword_1EBC13388;
  if (!qword_1EBC13388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13388);
  }

  return result;
}

unint64_t sub_1BAB64348()
{
  result = qword_1EBC122C0;
  if (!qword_1EBC122C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC122C0);
  }

  return result;
}

unint64_t sub_1BAB6439C()
{
  result = qword_1EBC133B8;
  if (!qword_1EBC133B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC133B8);
  }

  return result;
}

unint64_t sub_1BAB643F0()
{
  result = qword_1ED787390;
  if (!qword_1ED787390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787390);
  }

  return result;
}

unint64_t sub_1BAB64444()
{
  result = qword_1ED7870F8;
  if (!qword_1ED7870F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7870F8);
  }

  return result;
}

unint64_t sub_1BAB64498()
{
  result = qword_1EBC12520;
  if (!qword_1EBC12520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12520);
  }

  return result;
}

unint64_t sub_1BAB644EC()
{
  result = qword_1ED787148;
  if (!qword_1ED787148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787148);
  }

  return result;
}

unint64_t sub_1BAB64540()
{
  result = qword_1EBC121E0;
  if (!qword_1EBC121E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC121E0);
  }

  return result;
}

unint64_t sub_1BAB64594()
{
  result = qword_1EBC11F70;
  if (!qword_1EBC11F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11F70);
  }

  return result;
}

unint64_t sub_1BAB645E8()
{
  result = qword_1ED7870D0;
  if (!qword_1ED7870D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7870D0);
  }

  return result;
}

unint64_t sub_1BAB6463C()
{
  result = qword_1ED787310;
  if (!qword_1ED787310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC13408);
    sub_1BAB646F0(qword_1ED787420, type metadata accessor for ReplicatorRecord.ID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787310);
  }

  return result;
}

uint64_t sub_1BAB646F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BAB64738()
{
  result = qword_1ED787078;
  if (!qword_1ED787078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC13408);
    sub_1BAB646F0(&qword_1ED787160, type metadata accessor for ReplicatorRecord.ID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787078);
  }

  return result;
}

unint64_t sub_1BAB647EC()
{
  result = qword_1EBC124A0;
  if (!qword_1EBC124A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC124A0);
  }

  return result;
}

unint64_t sub_1BAB64840()
{
  result = qword_1ED7876F8;
  if (!qword_1ED7876F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7876F8);
  }

  return result;
}

uint64_t sub_1BAB64894(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBC13440);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAB6490C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BAB64994()
{
  result = qword_1EBC13468;
  if (!qword_1EBC13468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13468);
  }

  return result;
}

uint64_t sub_1BAB649E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BAB64A50()
{
  result = qword_1ED787750;
  if (!qword_1ED787750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787750);
  }

  return result;
}

uint64_t sub_1BAB64AA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC12830);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BAB64B10()
{
  result = qword_1ED7870B0;
  if (!qword_1ED7870B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7870B0);
  }

  return result;
}

unint64_t sub_1BAB64B64()
{
  result = qword_1ED787788;
  if (!qword_1ED787788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787788);
  }

  return result;
}

unint64_t sub_1BAB64BB8()
{
  result = qword_1EBC11D78;
  if (!qword_1EBC11D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC134D0);
    sub_1BAB646F0(&qword_1EBC121F0, type metadata accessor for ReplicatorRecordVersion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11D78);
  }

  return result;
}

unint64_t sub_1BAB64C6C()
{
  result = qword_1ED787320;
  if (!qword_1ED787320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC134D0);
    sub_1BAB646F0(qword_1ED7875B8, type metadata accessor for ReplicatorRecordVersion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787320);
  }

  return result;
}

unint64_t sub_1BAB64D20()
{
  result = qword_1ED7877E8;
  if (!qword_1ED7877E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7877E8);
  }

  return result;
}

unint64_t sub_1BAB64D74()
{
  result = qword_1EBC11D70;
  if (!qword_1EBC11D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC134F0);
    sub_1BAB646F0(qword_1EBC11FA0, type metadata accessor for ReplicatorDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11D70);
  }

  return result;
}

unint64_t sub_1BAB64E28()
{
  result = qword_1ED787C10;
  if (!qword_1ED787C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC134F0);
    sub_1BAB646F0(&qword_1ED787C30, type metadata accessor for ReplicatorDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787C10);
  }

  return result;
}

unint64_t sub_1BAB64F0C()
{
  result = qword_1ED7873C8;
  if (!qword_1ED7873C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7873C8);
  }

  return result;
}

unint64_t sub_1BAB64F60()
{
  result = qword_1ED787120;
  if (!qword_1ED787120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787120);
  }

  return result;
}

unint64_t sub_1BAB64FB4()
{
  result = qword_1EBC13538;
  if (!qword_1EBC13538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13538);
  }

  return result;
}

unint64_t sub_1BAB65028()
{
  result = qword_1ED7877B0;
  if (!qword_1ED7877B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7877B0);
  }

  return result;
}

unint64_t sub_1BAB6507C()
{
  result = qword_1EBC11D60;
  if (!qword_1EBC11D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBC13558);
    sub_1BAB646F0(&qword_1EBC11F80, type metadata accessor for ReplicatorMessage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11D60);
  }

  return result;
}

unint64_t sub_1BAB65130()
{
  result = qword_1ED787300;
  if (!qword_1ED787300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBC13558);
    sub_1BAB646F0(&qword_1ED787410, type metadata accessor for ReplicatorMessage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787300);
  }

  return result;
}

unint64_t sub_1BAB651E4()
{
  result = qword_1EBC12300;
  if (!qword_1EBC12300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12300);
  }

  return result;
}

unint64_t sub_1BAB65258()
{
  result = qword_1EBC124F8;
  if (!qword_1EBC124F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC124F8);
  }

  return result;
}

unint64_t sub_1BAB652AC()
{
  result = qword_1EBC12330;
  if (!qword_1EBC12330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC12330);
  }

  return result;
}

unint64_t sub_1BAB65300()
{
  result = qword_1EBC11ED0;
  if (!qword_1EBC11ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11ED0);
  }

  return result;
}

unint64_t sub_1BAB65354()
{
  result = qword_1EBC124D0;
  if (!qword_1EBC124D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC124D0);
  }

  return result;
}

unint64_t sub_1BAB653AC()
{
  result = qword_1EBC135F8;
  if (!qword_1EBC135F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC135F8);
  }

  return result;
}

unint64_t sub_1BAB6548C()
{
  result = qword_1EBC11E00;
  if (!qword_1EBC11E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E00);
  }

  return result;
}

unint64_t sub_1BAB65520()
{
  result = qword_1EBC13608;
  if (!qword_1EBC13608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13608);
  }

  return result;
}

unint64_t sub_1BAB655B4()
{
  result = qword_1EBC13620;
  if (!qword_1EBC13620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13620);
  }

  return result;
}

unint64_t sub_1BAB65648()
{
  result = qword_1EBC11E38;
  if (!qword_1EBC11E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E38);
  }

  return result;
}

unint64_t sub_1BAB656DC()
{
  result = qword_1EBC13640;
  if (!qword_1EBC13640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13640);
  }

  return result;
}

unint64_t sub_1BAB65770()
{
  result = qword_1EBC11DC8;
  if (!qword_1EBC11DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11DC8);
  }

  return result;
}

unint64_t sub_1BAB65804()
{
  result = qword_1EBC13648;
  if (!qword_1EBC13648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13648);
  }

  return result;
}

unint64_t sub_1BAB65898()
{
  result = qword_1EBC11E20;
  if (!qword_1EBC11E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E20);
  }

  return result;
}

unint64_t sub_1BAB6592C()
{
  result = qword_1EBC11E68;
  if (!qword_1EBC11E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E68);
  }

  return result;
}

unint64_t sub_1BAB659C0()
{
  result = qword_1EBC11DE0;
  if (!qword_1EBC11DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11DE0);
  }

  return result;
}

uint64_t sub_1BAB65A14(void *a1)
{
  a1[1] = sub_1BAB646F0(&qword_1EBC12BF8, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
  a1[2] = sub_1BAB646F0(&qword_1EBC12AD0, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
  result = sub_1BAB646F0(&unk_1EBC13658, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
  a1[3] = result;
  return result;
}

unint64_t sub_1BAB65B00()
{
  result = qword_1EBC11E50;
  if (!qword_1EBC11E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E50);
  }

  return result;
}

unint64_t sub_1BAB65B94()
{
  result = qword_1EBC11DB8;
  if (!qword_1EBC11DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11DB8);
  }

  return result;
}

unint64_t sub_1BAB65C28()
{
  result = qword_1EBC11F08;
  if (!qword_1EBC11F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11F08);
  }

  return result;
}

unint64_t sub_1BAB65C7C()
{
  result = qword_1EBC11F00;
  if (!qword_1EBC11F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11F00);
  }

  return result;
}

unint64_t sub_1BAB65D10()
{
  result = qword_1EBC11F50;
  if (!qword_1EBC11F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11F50);
  }

  return result;
}

unint64_t sub_1BAB65D64()
{
  result = qword_1EBC11F48;
  if (!qword_1EBC11F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11F48);
  }

  return result;
}

unint64_t sub_1BAB65DF8()
{
  result = qword_1EBC11EF8;
  if (!qword_1EBC11EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11EF8);
  }

  return result;
}

unint64_t sub_1BAB65E4C()
{
  result = qword_1EBC11EF0;
  if (!qword_1EBC11EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11EF0);
  }

  return result;
}

unint64_t sub_1BAB65EE0()
{
  result = qword_1EBC11EE0;
  if (!qword_1EBC11EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11EE0);
  }

  return result;
}

unint64_t sub_1BAB65F34()
{
  result = qword_1EBC11ED8;
  if (!qword_1EBC11ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11ED8);
  }

  return result;
}

uint64_t sub_1BAB65F88(void *a1)
{
  a1[1] = sub_1BAB646F0(&qword_1EBC12AE0, type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage);
  a1[2] = sub_1BAB646F0(&qword_1EBC13668, type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage);
  result = sub_1BAB646F0(&unk_1EBC13670, type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage);
  a1[3] = result;
  return result;
}

unint64_t sub_1BAB66074()
{
  result = qword_1EBC11F40;
  if (!qword_1EBC11F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11F40);
  }

  return result;
}

unint64_t sub_1BAB660C8()
{
  result = qword_1EBC11F38;
  if (!qword_1EBC11F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11F38);
  }

  return result;
}

uint64_t sub_1BAB6611C(void *a1)
{
  a1[1] = sub_1BAB646F0(&unk_1EBC122E0, type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID);
  a1[2] = sub_1BAB646F0(&unk_1EBC11F18, type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID);
  result = sub_1BAB646F0(&qword_1EBC11F10, type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID);
  a1[3] = result;
  return result;
}

unint64_t sub_1BAB66208()
{
  result = qword_1EBC13680;
  if (!qword_1EBC13680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13680);
  }

  return result;
}

unint64_t sub_1BAB6629C()
{
  result = qword_1EBC11F30;
  if (!qword_1EBC11F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11F30);
  }

  return result;
}

unint64_t sub_1BAB662F0()
{
  result = qword_1EBC11F28;
  if (!qword_1EBC11F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11F28);
  }

  return result;
}

uint64_t sub_1BAB66384(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1BAB663D8()
{
  result = qword_1EBC11E98;
  if (!qword_1EBC11E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E98);
  }

  return result;
}

unint64_t sub_1BAB6642C()
{
  result = qword_1EBC11E90;
  if (!qword_1EBC11E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11E90);
  }

  return result;
}

void sub_1BAB664B8()
{
  type metadata accessor for ReplicatorRecord.ID(319);
  if (v0 <= 0x3F)
  {
    sub_1BABE6CFC();
    if (v1 <= 0x3F)
    {
      sub_1BAB66F58(319, &qword_1ED7872B0, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}
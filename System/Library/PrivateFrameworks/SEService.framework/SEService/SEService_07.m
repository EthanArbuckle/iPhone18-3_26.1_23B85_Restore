Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SESnapshot.addToSnapshot(credentials:)(Swift::OpaquePointer credentials)
{
  v3 = v1;
  v4 = *(credentials._rawValue + 2);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v52[0] = MEMORY[0x1E69E7CC0];
    sub_1C7C25C0C(0, v4, 0);
    v5 = v52[0];
    v7 = credentials._rawValue + 48;
    do
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      v10 = v8;
      v11 = *(v7 - 1);
      v12 = *v7;
      if (v9 == 3)
      {
        v10 = *(v7 - 2);
        v11 = *(v7 - 1);
        v12 = 3;
        if (v8 <= 0x19)
        {
          v11 = 0;
          v12 = 0;
          v10 = qword_1C7C93DA8[v8];
        }
      }

      sub_1C7BDF708(v8, *(v7 - 1), v9);
      v52[0] = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C7C25C0C((v13 > 1), v14 + 1, 1);
        v5 = v52[0];
      }

      v7 += 24;
      *(v5 + 16) = v14 + 1;
      v15 = v5 + 24 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      *(v15 + 48) = v12;
      --v4;
    }

    while (v4);
    v2 = v49;
    v3 = v50;
  }

  SESnapshot.canFitWithReason(credentials:)(v5, v52);
  if (v2)
  {

    return v16 & 1;
  }

  if ((v52[0] & 0x100) == 0)
  {

    v16 = 0;
    return v16 & 1;
  }

  v17 = *(v5 + 16);
  if (v17)
  {
    v51 = v3;
    v52[0] = MEMORY[0x1E69E7CC0];
    sub_1C7C25BEC(0, v17, 0);
    v18 = v52[0];
    v19 = (v5 + 48);
    do
    {
      v20 = *(v19 - 2);
      v21 = *(v19 - 1);
      v22 = *v19;
      sub_1C7BDF708(v20, v21, *v19);
      v52[0] = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C7C25BEC((v23 > 1), v24 + 1, 1);
        v18 = v52[0];
      }

      v19 += 24;
      *(v18 + 16) = v24 + 1;
      v25 = v18 + 32 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v21;
      *(v25 + 48) = v22;
      *(v25 + 56) = 1;
      --v17;
    }

    while (v17);
    v3 = v51;
  }

  else if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    v26 = MEMORY[0x1E69E7CC8];
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
  v26 = sub_1C7C7D914();
LABEL_22:
  v52[0] = v26;

  sub_1C7C322BC(v27, 1, v52);

  v28 = v52[0];
  v29 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
  swift_beginAccess();

  v30 = *&v3[v29];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *&v3[v29];
  *&v3[v29] = 0x8000000000000000;
  sub_1C7BFC468(v28, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, &v53);

  *&v3[v29] = v53;
  swift_endAccess();
  v32 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();

  v33 = *&v3[v32];
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *&v3[v32];
  *&v3[v32] = 0x8000000000000000;
  sub_1C7BFC468(v28, sub_1C7C4F7A8, 0, v34, &v53);

  *&v3[v32] = v53;
  swift_endAccess();

  if (qword_1EC2621E8 != -1)
  {
    swift_once();
  }

  v35 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v35, qword_1EC288338);

  v36 = v3;
  v37 = sub_1C7C7D194();
  v38 = sub_1C7C7D564();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v52[0] = v40;
    *v39 = 136315394;
    v41 = MEMORY[0x1CCA6B440](v5, &type metadata for CredentialType);
    v43 = v42;

    v44 = sub_1C7BE42F8(v41, v43, v52);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2080;
    v45 = sub_1C7C7D0A4();
    v47 = sub_1C7BE42F8(v45, v46, v52);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_1C7B9A000, v37, v38, "Added %s to snapshot, UUID: %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v40, -1, -1);
    MEMORY[0x1CCA6C990](v39, -1, -1);
  }

  else
  {
  }

  v16 = 1;
  return v16 & 1;
}

void SESnapshot.removeFromSnapshot(credential:)(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v70[0] = *a1;
  v2 = v70[0];
  v70[1] = v3;
  v71 = v4;
  CredentialType.init(fromLegacy:)(v70, &v67);
  v6 = v67;
  v5 = v68;
  v7 = v69;
  v8 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
  swift_beginAccess();
  v72 = v1;
  v9 = *(v1 + v8);
  v10 = *(v9 + 16);
  sub_1C7BDF708(v2, v3, v4);
  if (!v10 || (v11 = sub_1C7C70278(v6, v5, v7), (v12 & 1) == 0))
  {
    v13 = v6;
    v14 = v5;
    v15 = v7;
    swift_endAccess();
    goto LABEL_9;
  }

  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = *(*(v9 + 56) + 8 * v11);
  swift_endAccess();
  if (v16 <= 0)
  {
LABEL_9:
    sub_1C7BEA9D8(v13, v14, v15);
    sub_1C7BEADA0();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 5;
    swift_willThrow();
    return;
  }

  v17 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  v18 = v72;
  swift_beginAccess();
  v19 = *(v18 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70[0] = *(v18 + v17);
  v21 = v70[0];
  *(v18 + v17) = 0x8000000000000000;
  v22 = v13;
  v23 = v14;
  v24 = sub_1C7C70278(v13, v14, v15);
  v26 = v21[2];
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (v28)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = v25;
  if (v21[3] >= v29)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v65 = v24;
      sub_1C7C71E84();
      v24 = v65;
      v21 = v70[0];
    }
  }

  else
  {
    sub_1C7C704D4(v29, isUniquelyReferenced_nonNull_native);
    v21 = v70[0];
    v24 = sub_1C7C70278(v13, v23, v15);
    if ((v30 & 1) != (v31 & 1))
    {
      goto LABEL_19;
    }
  }

  isUniquelyReferenced_nonNull_native = v72;
  *(v72 + v17) = v21;
  if ((v30 & 1) == 0)
  {
    v21[(v24 >> 6) + 8] |= 1 << v24;
    v33 = v21[6] + 24 * v24;
    *v33 = v22;
    *(v33 + 8) = v23;
    *(v33 + 16) = v15;
    *(v21[7] + 8 * v24) = 0;
    v34 = v21[2];
    v28 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v28)
    {
      __break(1u);
LABEL_35:
      v66 = v24;
      sub_1C7C71E84();
      v24 = v66;
      v21 = v70[0];
      *(isUniquelyReferenced_nonNull_native + v8) = v70[0];
      if (v30)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    v36 = v24;
    v21[2] = v35;
    sub_1C7BDF708(v22, v23, v15);
    v24 = v36;
  }

  v37 = v21[7];
  v38 = *(v37 + 8 * v24);
  v28 = __OFSUB__(v38, 1);
  v39 = v38 - 1;
  if (v28)
  {
    goto LABEL_30;
  }

  *(v37 + 8 * v24) = v39;
  swift_endAccess();
  swift_beginAccess();
  v40 = *(isUniquelyReferenced_nonNull_native + v8);
  LOBYTE(v13) = swift_isUniquelyReferenced_nonNull_native();
  v70[0] = *(isUniquelyReferenced_nonNull_native + v8);
  v21 = v70[0];
  *(isUniquelyReferenced_nonNull_native + v8) = 0x8000000000000000;
  v24 = sub_1C7C70278(v22, v23, v15);
  v42 = v21[2];
  v43 = (v41 & 1) == 0;
  v28 = __OFADD__(v42, v43);
  v44 = v42 + v43;
  if (v28)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v30 = v41;
  if (v21[3] >= v44)
  {
    goto LABEL_20;
  }

  sub_1C7C704D4(v44, v13);
  v21 = v70[0];
  v24 = sub_1C7C70278(v22, v23, v15);
  if ((v30 & 1) == (v45 & 1))
  {
    goto LABEL_21;
  }

LABEL_19:
  v24 = sub_1C7C7DAF4();
  __break(1u);
LABEL_20:
  if ((v13 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_21:
  *(isUniquelyReferenced_nonNull_native + v8) = v21;
  if (v30)
  {
    goto LABEL_24;
  }

LABEL_22:
  v21[(v24 >> 6) + 8] |= 1 << v24;
  v46 = v21[6] + 24 * v24;
  *v46 = v22;
  *(v46 + 8) = v23;
  *(v46 + 16) = v15;
  *(v21[7] + 8 * v24) = 0;
  v47 = v21[2];
  v28 = __OFADD__(v47, 1);
  v48 = v47 + 1;
  if (v28)
  {
    __break(1u);
    return;
  }

  v49 = v24;
  v21[2] = v48;
  sub_1C7BDF708(v22, v23, v15);
  v24 = v49;
LABEL_24:
  v50 = v21[7];
  v51 = *(v50 + 8 * v24);
  v28 = __OFSUB__(v51, 1);
  v52 = v51 - 1;
  if (!v28)
  {
    *(v50 + 8 * v24) = v52;
    swift_endAccess();
    if (qword_1EC2621E8 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_26:
  v53 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v53, qword_1EC288338);
  sub_1C7BDF708(v22, v23, v15);
  v54 = isUniquelyReferenced_nonNull_native;
  v55 = sub_1C7C7D194();
  v56 = sub_1C7C7D564();
  sub_1C7BEA9D8(v22, v23, v15);

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v70[0] = v58;
    *v57 = 136315394;
    v67 = v22;
    v68 = v23;
    v69 = v15;
    v59 = sub_1C7C7D324();
    v61 = sub_1C7BE42F8(v59, v60, v70);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    v62 = sub_1C7C7D0A4();
    v64 = sub_1C7BE42F8(v62, v63, v70);

    *(v57 + 14) = v64;
    _os_log_impl(&dword_1C7B9A000, v55, v56, "Removed %s from snapshot, UUID: %s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v58, -1, -1);
    MEMORY[0x1CCA6C990](v57, -1, -1);
  }

  else
  {

    sub_1C7BEA9D8(v22, v23, v15);
  }
}

Swift::Void __swiftcall SESnapshot.resetSnapshot()()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();
  v51 = v3;
  v4 = *&v0[v3];
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v55 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
  v9 = (v6 + 63) >> 6;
  v53 = v4;

  v10 = 0;
  v11 = 0;
  v52 = v5;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = *(v53 + 48) + 24 * v13;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      v54 = *(*(v53 + 56) + 8 * v13);
      v1 = v55;
      swift_beginAccess();
      sub_1C7BDF708(v15, v16, v17);
      sub_1C7C2D47C(v10);
      v18 = *&v2[v55];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v2;
      v2 = isUniquelyReferenced_nonNull_native;
      v56 = *&v20[v55];
      v21 = v56;
      v22 = v20;
      *&v20[v55] = 0x8000000000000000;
      v23 = sub_1C7C70278(v15, v16, v17);
      v25 = v21[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        break;
      }

      v1 = v24;
      if (v21[3] >= v28)
      {
        if ((v2 & 1) == 0)
        {
          v36 = v23;
          sub_1C7C71E84();
          v23 = v36;
          v21 = v56;
        }
      }

      else
      {
        sub_1C7C704D4(v28, v2);
        v21 = v56;
        v23 = sub_1C7C70278(v15, v16, v17);
        if ((v1 & 1) != (v29 & 1))
        {
          sub_1C7C7DAF4();
          __break(1u);
          return;
        }
      }

      v2 = v22;
      *&v22[v55] = v21;
      if ((v1 & 1) == 0)
      {
        v21[(v23 >> 6) + 8] |= 1 << v23;
        v30 = v21[6] + 24 * v23;
        *v30 = v15;
        *(v30 + 8) = v16;
        *(v30 + 16) = v17;
        *(v21[7] + 8 * v23) = 0;
        v31 = v21[2];
        v27 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v27)
        {
          goto LABEL_27;
        }

        v21[2] = v32;
        v1 = v23;
        sub_1C7BDF708(v15, v16, v17);
        v23 = v1;
      }

      v33 = v21[7];
      v34 = *(v33 + 8 * v23);
      v27 = __OFSUB__(v34, v54);
      v35 = v34 - v54;
      if (v27)
      {
        goto LABEL_26;
      }

      v8 &= v8 - 1;
      *(v33 + 8 * v23) = v35;
      swift_endAccess();
      sub_1C7BEA9D8(v15, v16, v17);
      v10 = sub_1C7C1A4CC;
      v11 = v12;
      v5 = v52;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  else
  {
    while (1)
    {
LABEL_5:
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v12 >= v9)
      {
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v1 = v10;

    swift_beginAccess();
    v37 = *&v2[v55];

    v39 = sub_1C7C4F138(v38);

    v40 = *&v2[v55];
    *&v2[v55] = v39;

    v41 = *&v2[v51];
    *&v2[v51] = MEMORY[0x1E69E7CC8];

    if (qword_1EC2621E8 != -1)
    {
      goto LABEL_28;
    }
  }

  v42 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v42, qword_1EC288338);
  v43 = v2;
  v44 = sub_1C7C7D194();
  v45 = sub_1C7C7D564();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v56 = v47;
    *v46 = 136315138;
    v48 = sub_1C7C7D0A4();
    v50 = sub_1C7BE42F8(v48, v49, &v56);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_1C7B9A000, v44, v45, "Removed all staged credentials from snapshot, UUID: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x1CCA6C990](v47, -1, -1);
    MEMORY[0x1CCA6C990](v46, -1, -1);
  }

  sub_1C7C2D47C(v1);
}

Swift::tuple_used_Int_total_Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SESnapshot.totalUsage(includeIndices:)(Swift::Bool includeIndices)
{
  v4 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(*(v5 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo) + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex);
  if (v6 <= 0)
  {
    v7 = *(v5 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    v8 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
    swift_beginAccess();
    v6 = *(v7 + v8);
  }

  v9 = v6 - 25600;
  if (__OFADD__(v6, -25600))
  {
    goto LABEL_22;
  }

  v10 = *(v1 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v11 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v12 = *(v10 + v11);
  v13 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();
  v14 = *(v1 + v13);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v12;
  sub_1C7BFC468(v14, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, &v31);
  if (!v2)
  {

    v16 = v31;
    LOBYTE(v31) = 0;
    v17 = sub_1C7BFE8C4(v16, v1, &v31, 0, 1, 0, 1);
    if (includeIndices)
    {
      LOBYTE(v31) = 3;
      v18 = sub_1C7BFE8C4(v16, v1, &v31, 0, 1, 0, 1);
    }

    else
    {

      v18 = 0;
    }

    v19 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
    LOBYTE(v31) = 0;
    v20 = sub_1C7BFE8C4(v19, v1, &v31, 0, 1, 0, 1);

    if (includeIndices)
    {
      v21 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
      LOBYTE(v31) = 3;
      v22 = sub_1C7BFE8C4(v21, v1, &v31, 0, 1, 0, 1);
    }

    else
    {
      v22 = 0;
    }

    if ((v18 / 32 - 0x40000000000000) >> 55 != 511)
    {
      goto LABEL_23;
    }

    v23 = (v18 / 32) << 9;
    if ((v18 & 0x800000000000001FLL) >= 1)
    {
      v24 = __OFADD__(v23, 512);
      v23 += 512;
      if (v24)
      {
        goto LABEL_27;
      }
    }

    v25 = v17 + v23;
    if (__OFADD__(v17, v23))
    {
      goto LABEL_24;
    }

    v26 = v9 & ~(v9 >> 63);
    v24 = __OFADD__(v20, v26);
    v27 = v20 + v26;
    if (v24)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if ((v22 / 32 - 0x40000000000000) >> 55 != 511)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v28 = (v22 / 32) << 9;
    if ((v22 & 0x800000000000001FLL) >= 1)
    {
      v24 = __OFADD__(v28, 512);
      v28 += 512;
      if (v24)
      {
        goto LABEL_28;
      }
    }

    v29 = v27 + v28;
    if (!__OFADD__(v27, v28))
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_29:

  __break(1u);
LABEL_30:
  result.total = v29;
  result.used = v25;
  return result;
}

Swift::tuple_used_Int_total_Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SESnapshot.totalUsage()()
{
  v2 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(*(v3 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo) + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex);
  if (v4 <= 0)
  {
    v5 = *(v3 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    v6 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
    swift_beginAccess();
    v4 = *(v5 + v6);
  }

  v7 = *(v0 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v8 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v10 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();
  v11 = *(v0 + v10);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v9;
  sub_1C7BFC468(v11, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, &v28);
  if (v1)
  {
    goto LABEL_23;
  }

  v13 = v28;
  LOBYTE(v28) = 0;
  v14 = sub_1C7BFE8C4(v13, v0, &v28, 0, 1, 0, 1);
  LOBYTE(v28) = 3;
  v15 = sub_1C7BFE8C4(v13, v0, &v28, 0, 1, 0, 1);

  v16 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  LOBYTE(v28) = 0;
  v17 = sub_1C7BFE8C4(v16, v0, &v28, 0, 1, 0, 1);

  v18 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  LOBYTE(v28) = 3;
  v19 = sub_1C7BFE8C4(v18, v0, &v28, 0, 1, 0, 1);

  v20 = v14 + 25600;
  if (__OFADD__(v14, 25600))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v15 / 32 - 0x40000000000000) >> 55 != 511)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = (v15 / 32) << 9;
  if ((v15 & 0x800000000000001FLL) >= 1)
  {
    v22 = __OFADD__(v21, 512);
    v21 += 512;
    if (v22)
    {
      goto LABEL_21;
    }
  }

  v23 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    goto LABEL_18;
  }

  v24 = v17 + v4;
  if (__OFADD__(v17, v4))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v19 / 32 - 0x40000000000000) >> 55 == 511)
  {
    v25 = (v19 / 32) << 9;
    if ((v19 & 0x800000000000001FLL) >= 1)
    {
      v22 = __OFADD__(v25, 512);
      v25 += 512;
      if (v22)
      {
        goto LABEL_22;
      }
    }

    v26 = v24 + v25;
    if (!__OFADD__(v24, v25))
    {
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:

  __break(1u);
LABEL_24:
  result.total = v26;
  result.used = v23;
  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SESnapshot.usage(ofCredentials:)(Swift::OpaquePointer ofCredentials)
{
  v2 = v1;
  v3 = *(ofCredentials._rawValue + 2);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v37[0] = MEMORY[0x1E69E7CC0];
    sub_1C7C25C0C(0, v3, 0);
    v6 = v37[0];
    v7 = ofCredentials._rawValue + 48;
    do
    {
      v8 = *(v7 - 2);
      v9 = *v7;
      v10 = v8;
      v11 = *(v7 - 1);
      v12 = *v7;
      if (v9 == 3)
      {
        v10 = *(v7 - 2);
        v11 = *(v7 - 1);
        v12 = 3;
        if (v8 <= 0x19)
        {
          v11 = 0;
          v12 = 0;
          v10 = qword_1C7C93DA8[v8];
        }
      }

      sub_1C7BDF708(v8, *(v7 - 1), v9);
      v37[0] = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C7C25C0C((v13 > 1), v14 + 1, 1);
        v6 = v37[0];
      }

      v7 += 24;
      *(v6 + 16) = v14 + 1;
      v15 = v6 + 24 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      *(v15 + 48) = v12;
      --v3;
    }

    while (v3);
    v2 = v1;
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1C7C2D680(v16);

  v18 = *(v17 + 16);

  if (v18 != *(v6 + 16))
  {

    sub_1C7BEADA0();
    swift_allocError();
    *v30 = 0xD00000000000001FLL;
    *(v30 + 8) = 0x80000001C7C9F410;
    *(v30 + 16) = 1;
    swift_willThrow();
    return v17;
  }

  if (v18)
  {
    v39 = v4;
    result = sub_1C7C25C2C(0, v18, 0);
    v20 = 0;
    v21 = v4;
    v22 = (v6 + 48);
    v35 = v18;
    while (v20 < *(v6 + 16))
    {
      v23 = *(v22 - 2);
      v24 = *(v22 - 1);
      v25 = *v22;
      v37[0] = v23;
      v37[1] = v24;
      v38 = v25;
      sub_1C7BDF708(v23, v24, v25);
      v17 = v36;
      v26 = SESnapshot.usage(ofCredential:)(v37);
      if (v2)
      {

        sub_1C7BEA9D8(v23, v24, v25);

        return v17;
      }

      v27 = v26;
      result = sub_1C7BEA9D8(v23, v24, v25);
      v39 = v21;
      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_1C7C25C2C((v28 > 1), v29 + 1, 1);
        v21 = v39;
      }

      ++v20;
      *(v21 + 16) = v29 + 1;
      *(v21 + 8 * v29 + 32) = v27;
      v22 += 24;
      v2 = 0;
      if (v35 == v20)
      {

        v31 = *(v21 + 16);
        if (v31)
        {
          goto LABEL_22;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_31;
  }

  v21 = MEMORY[0x1E69E7CC0];
  v31 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v31)
  {
LABEL_28:

    return 0;
  }

LABEL_22:
  v17 = 0;
  for (i = 32; ; i += 8)
  {
    v33 = *(v21 + i);
    v34 = __OFADD__(v17, v33);
    v17 += v33;
    if (v34)
    {
      break;
    }

    if (!--v31)
    {

      return v17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t SESnapshot.usage(ofCredential:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *&v23 = *a1;
  v3 = v23;
  *(&v23 + 1) = v4;
  v24 = v5;
  CredentialType.init(fromLegacy:)(&v23, &v21);
  v6 = v21;
  v7 = v22;
  v8 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
  swift_beginAccess();
  v9 = *(v2 + v8);
  v10 = *(v9 + 16);
  sub_1C7BDF708(v3, v4, v5);
  if (v10 && (v11 = sub_1C7C70278(v6, *(&v6 + 1), v7), (v12 & 1) != 0))
  {
    v13 = *(*(v9 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  swift_endAccess();
  v21 = v6;
  v22 = v7;
  LOBYTE(v23) = 0;
  v14 = v25;
  v15 = sub_1C7BFD018(&v21, v2, v13, &v23);
  if (v14)
  {
    return sub_1C7BEA9D8(v6, *(&v6 + 1), v7);
  }

  v17 = v15;
  v21 = v6;
  v22 = v7;
  v23 = xmmword_1C7C84C70;
  v24 = 0;
  if (_s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(&v21, &v23))
  {
    sub_1C7BEA9D8(v6, *(&v6 + 1), v7);
  }

  else
  {
    v21 = v6;
    v22 = v7;
    v23 = xmmword_1C7C84C50;
    v24 = 0;
    v18 = _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(&v21, &v23);
    sub_1C7BEA9D8(v6, *(&v6 + 1), v7);
    if (!v18)
    {
      return v17;
    }
  }

  v21 = xmmword_1C7C84B80;
  v22 = 0;
  LOBYTE(v23) = 0;
  v19 = sub_1C7BFD018(&v21, v2, v13, &v23);
  v20 = __OFADD__(v17, v19);
  result = v17 + v19;
  if (v20)
  {
    __break(1u);
    return v17;
  }

  return result;
}

uint64_t SESnapshot.usage(ofInstance:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v28.i64[0] = *a1;
  v28.i64[1] = v4;
  v29 = v5;
  CredentialType.init(fromLegacy:)(&v28, v25);
  v7 = v25[0];
  v6 = v25[1];
  v8 = v26;
  if (v26 == 2)
  {
    v9 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
    swift_beginAccess();
    v10 = *(v2 + v9);
    v28.i64[0] = v7;
    v28.i64[1] = v6;
    v29 = 2;
    sub_1C7BDF708(v3, v4, v5);
    v11 = v10;
    sub_1C7C6CB5C(&v28, &v27);

    v12 = v27;
    if ((~(v27.i64[0] & v27.i64[1]) & 0xF000000000000007) != 0)
    {
      v28 = v27;
      v27.i8[0] = 0;
      v22 = sub_1C7BFC72C(v28.i64, v2, &v27);
      sub_1C7BEA9D8(v7, v6, 2u);
      sub_1C7BFCF20(v12.i64[0], v12.u64[1]);
    }

    else
    {
      if (qword_1EC2621E8 != -1)
      {
        swift_once();
      }

      v13 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v13, qword_1EC288338);

      v14 = sub_1C7C7D194();
      v15 = sub_1C7C7D584();
      sub_1C7BEA9D8(v7, v6, 2u);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v27.i64[0] = v30;
        *v16 = 136315394;
        *(v16 + 4) = sub_1C7BE42F8(0xD000000000000012, 0x80000001C7C9F430, v27.i64);
        *(v16 + 12) = 2080;
        v28.i64[0] = v7;
        v28.i64[1] = v6;
        v29 = 2;

        sub_1C7C7D324();
        v17 = sub_1C7C7D334();
        v19 = v18;

        v20 = sub_1C7BE42F8(v17, v19, v27.i64);

        *(v16 + 14) = v20;
        _os_log_impl(&dword_1C7B9A000, v14, v15, "%s: %s not found", v16, 0x16u);
        v21 = v30;
        swift_arrayDestroy();
        MEMORY[0x1CCA6C990](v21, -1, -1);
        MEMORY[0x1CCA6C990](v16, -1, -1);
      }

      sub_1C7BEA9D8(v7, v6, 2u);
      return 0;
    }
  }

  else
  {
    v28.i8[0] = 0;
    sub_1C7BDF708(v3, v4, v5);
    sub_1C7BFC930(v25, v2, &v28);
    v22 = v23;
    sub_1C7BEA9D8(v7, v6, v8);
  }

  return v22;
}

uint64_t SESnapshot.requiredUsage(for:count:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v56[0] = *a1;
  v6 = v56[0];
  v56[1] = v7;
  v57 = v8;
  CredentialType.init(fromLegacy:)(v56, v59);
  v10 = v59[0];
  v9 = v59[1];
  v11 = v60;
  v12 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v13 = *(v5 + v12);
  sub_1C7BDF708(v6, v7, v8);
  v14 = v13;
  v15 = SEState.friendlyDetails.getter();

  if (*(v15 + 16) && (v16 = sub_1C7C70278(v10, v9, v11), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v19 = type metadata accessor for SEPackageDetails();
    v20 = objc_allocWithZone(v19);
    v20[OBJC_IVAR____TtC9SEService16SEPackageDetails_packageLoaded] = 0;
    *&v20[OBJC_IVAR____TtC9SEService16SEPackageDetails_containers] = 0;
    *&v20[OBJC_IVAR____TtC9SEService16SEPackageDetails_instances] = MEMORY[0x1E69E7CC0];
    v21 = &v20[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
    *v21 = v10;
    *(v21 + 1) = v9;
    v21[16] = v11;
    sub_1C7BDF708(v10, v9, v11);
    v58.receiver = v20;
    v58.super_class = v19;
    v18 = objc_msgSendSuper2(&v58, sel_init);
  }

  v22 = v18;

  v23 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
  swift_beginAccess();
  v24 = *&v22[v23];
  if (v24 >> 62)
  {
    if (v24 < 0)
    {
      v49 = *&v22[v23];
    }

    v25 = sub_1C7C7D6D4();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = *(v5 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v27 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v28 = *(v26 + v27);
  if (*(v28 + 16))
  {
    v29 = sub_1C7C70278(v10, v9, v11);
    if (v30)
    {
      v31 = *(*(v28 + 56) + 8 * v29);
      swift_endAccess();
      v32 = __OFADD__(v25, v31);
      v25 += v31;
      if (!v32)
      {
        goto LABEL_13;
      }

      __break(1u);
    }
  }

  swift_endAccess();
LABEL_13:
  v33 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();
  v34 = *(v5 + v33);
  if (!*(v34 + 16))
  {
    goto LABEL_18;
  }

  v35 = sub_1C7C70278(v10, v9, v11);
  if ((v36 & 1) == 0)
  {
    goto LABEL_18;
  }

  v37 = *(*(v34 + 56) + 8 * v35);
  swift_endAccess();
  v32 = __OFADD__(v25, v37);
  v25 += v37;
  if (v32)
  {
    __break(1u);
LABEL_18:
    swift_endAccess();
  }

  v53 = v10;
  v54 = v9;
  v55 = v11;
  if (__OFADD__(v25, a2))
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v61) = 0;
    v38 = sub_1C7BFD018(&v53, v5, v25 + a2, &v61);
    if (v3)
    {

      sub_1C7BEA9D8(v10, v9, v11);
      return v4;
    }

    v39 = v38;
    v53 = v10;
    v54 = v9;
    v55 = v11;
    LOBYTE(v61) = 0;
    v40 = sub_1C7BFD018(&v53, v5, v25, &v61);
    v4 = v39 - v40;
    if (!__OFSUB__(v39, v40))
    {
      if (qword_1EC2621E8 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_34:
  swift_once();
LABEL_26:
  v42 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v42, qword_1EC288338);
  sub_1C7BDF708(v10, v9, v11);
  v43 = sub_1C7C7D194();
  v44 = sub_1C7C7D564();
  sub_1C7BEA9D8(v10, v9, v11);
  v51 = v43;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v61 = v50;
    *v45 = 136315906;
    *(v45 + 4) = sub_1C7BE42F8(0xD000000000000019, 0x80000001C7C9F450, &v61);
    *(v45 + 12) = 2080;
    v53 = v10;
    v54 = v9;
    v55 = v11;
    v46 = sub_1C7C7D324();
    v48 = sub_1C7BE42F8(v46, v47, &v61);

    *(v45 + 14) = v48;
    *(v45 + 22) = 2048;
    *(v45 + 24) = a2;
    *(v45 + 32) = 2048;
    *(v45 + 34) = v4;
    _os_log_impl(&dword_1C7B9A000, v51, v44, "%s %s %ld => %ld", v45, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v50, -1, -1);
    MEMORY[0x1CCA6C990](v45, -1, -1);
  }

  else
  {

    sub_1C7BEA9D8(v10, v9, v11);
  }

  return v4;
}

uint64_t *SESnapshot.requiredUsage(for:)(uint64_t *result)
{
  v1 = result[3];
  v2 = v1 + 31;
  if (v1 >= 0)
  {
    v2 = result[3];
  }

  v3 = v2 >> 5;
  if (((v2 >> 5) - 0x40000000000000) >> 55 != 511)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *result;
  v5 = v3 << 9;
  if ((v1 & 0x800000000000001FLL) >= 1)
  {
    v6 = __OFADD__(v5, 512);
    v5 += 512;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  result = (v4 + v5);
  if (__OFADD__(v4, v5))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t SESnapshot.getCredential(forAID:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_1C7C7D3B4())
  {
    v7 = 23;
  }

  else
  {

    v8._countAndFlagsBits = a1;
    v8._object = a2;
    AppletType.init(instanceAID:)(v8);
    v7 = v57;
  }

  v60 = v7;
  v61 = 0;
  v62 = 0;
  v57 = v7;
  v58 = 0;
  v59 = 0;
  v55 = xmmword_1C7C84BB0;
  v56 = 0;
  sub_1C7BDF708(v7, 0, 0);
  v9 = _s9SEService14CredentialTypeO2eeoiySbAC_ACtFZ_0(&v57, &v55);
  sub_1C7BEA9D8(v57, v58, v59);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
    swift_beginAccess();
    v11 = *(v3 + v10);
    v12 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
    swift_beginAccess();
    v13 = *(*(v11 + v12) + 16);

    if (!v13)
    {
LABEL_29:

      *a3 = v7;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return result;
    }

    v15 = 0;
    v16 = v14 + 32;
    v51 = a3;
    v53 = a1;
    v48 = v7;
    v46 = v13;
    v47 = v14;
    v45 = v14 + 32;
    while (v15 < *(v14 + 16))
    {
      v17 = (v16 + 16 * v15);
      v18 = v17[1];
      if (!(v18 >> 62))
      {
        a1 = *v17;
        v19 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
        swift_beginAccess();
        v20 = *(a1 + v19);
        a3 = v20 & 0xFFFFFFFFFFFFFF8;
        if (v20 >> 62)
        {
          if (v20 < 0)
          {
            v26 = *(a1 + v19);
          }

          v21 = sub_1C7C7D6D4();
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1C7BFCFA8(a1, v18);
        v49 = a1;
        v50 = v18;
        sub_1C7BFCFA8(a1, v18);

        v22 = 0;
        while (1)
        {
          if (v21 == v22)
          {

            sub_1C7BFCF38(v49, v50);
            sub_1C7BFCF38(v49, v50);
            v7 = v48;
            a3 = v51;
            v13 = v46;
            v14 = v47;
            v16 = v45;
            goto LABEL_8;
          }

          a1 = v53;
          if ((v20 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x1CCA6B7B0](v22, v20);
          }

          else
          {
            if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v23 = *(v20 + 8 * v22 + 32);
          }

          v24 = v23;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (*&v23[OBJC_IVAR____TtC9SEService8SEApplet_identifier] == v53 && *&v23[OBJC_IVAR____TtC9SEService8SEApplet_identifier + 8] == a2)
          {

            goto LABEL_31;
          }

          a1 = sub_1C7C7DAA4();

          ++v22;
          if (a1)
          {

LABEL_31:
            sub_1C7BFCF38(v49, v50);

            sub_1C7BEA9D8(v48, 0, 0);
            v28 = &v49[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
            swift_beginAccess();
            v29 = *v28;
            v30 = *(v28 + 1);
            LOBYTE(v28) = v28[16];
            sub_1C7BDF708(v29, v30, v28);
            sub_1C7BFCF38(v49, v50);
            v60 = v29;
            v61 = v30;
            v62 = v28;
            a3 = v51;
            a1 = v53;
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
        break;
      }

LABEL_8:
      if (++v15 == v13)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

LABEL_32:
  if (qword_1EC2621E8 != -1)
  {
LABEL_39:
    swift_once();
  }

  v31 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v31, qword_1EC288338);
  v32 = v60;
  v33 = v61;
  v34 = v62;

  sub_1C7BDF708(v32, v33, v34);
  v35 = sub_1C7C7D194();
  v36 = sub_1C7C7D564();

  sub_1C7BEA9D8(v32, v33, v34);
  if (os_log_type_enabled(v35, v36))
  {
    v52 = a3;
    v37 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v63 = v54;
    *v37 = 136315650;
    *(v37 + 4) = sub_1C7BE42F8(0xD000000000000016, 0x80000001C7C9F470, &v63);
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_1C7BE42F8(a1, a2, &v63);
    *(v37 + 22) = 2080;
    v57 = v32;
    v58 = v33;
    v59 = v34;
    sub_1C7BDF708(v32, v33, v34);
    v38 = sub_1C7C7D324();
    v40 = sub_1C7BE42F8(v38, v39, &v63);

    *(v37 + 24) = v40;
    _os_log_impl(&dword_1C7B9A000, v35, v36, "%s %s => %s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v54, -1, -1);
    v41 = v37;
    a3 = v52;
    MEMORY[0x1CCA6C990](v41, -1, -1);
  }

  swift_beginAccess();
  v42 = v60;
  v43 = v61;
  *a3 = v60;
  *(a3 + 8) = v43;
  v44 = v62;
  *(a3 + 16) = v62;
  sub_1C7BDF708(v42, v43, v44);
  return sub_1C7BEA9D8(v42, v43, v44);
}

unint64_t SESnapshot.getLifecycle(forAID:)(unint64_t *a1, unint64_t a2)
{
  v4 = v2;
  if (qword_1EC2621E8 != -1)
  {
    goto LABEL_73;
  }

LABEL_2:
  v7 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v7, qword_1EC288338);

  v8 = sub_1C7C7D194();
  v9 = sub_1C7C7D574();

  if (os_log_type_enabled(v8, v9))
  {
    v3 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v63[0] = v10;
    *v3 = 136315394;
    *(v3 + 4) = sub_1C7BE42F8(0xD000000000000015, 0x80000001C7C9F490, v63);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_1C7BE42F8(a1, a2, v63);
    _os_log_impl(&dword_1C7B9A000, v8, v9, "%s %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA6C990](v10, -1, -1);
    MEMORY[0x1CCA6C990](v3, -1, -1);
  }

  v11 = sub_1C7C7D3B4();
  v12 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  v64 = a1;
  if (v11)
  {
    swift_beginAccess();
    v13 = *&v4[v12];
    v14 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
    swift_beginAccess();
    v3 = *&v13[v14];
    v15 = *(v3 + 16);
    v60 = v13;

    if (!v15)
    {
LABEL_46:

LABEL_47:

      v4 = 0xF000000000000007;
      v26 = 0xF000000000000007;
      goto LABEL_48;
    }

    a2 = 0;
    a1 = (v3 + 40);
    v61 = v15;
    while (1)
    {
      if (a2 >= *(v3 + 16))
      {
        goto LABEL_70;
      }

      v4 = *(a1 - 1);
      v17 = *a1;
      v18 = *a1 >> 62;
      if (v18 > 1)
      {
        if (v18 == 2)
        {
LABEL_7:
          v16 = v4;
          sub_1C7BEA9D8(23, 0, 0);
          goto LABEL_8;
        }

        v24 = &v4[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
        swift_beginAccess();
        v20 = *v24;
        v21 = *(v24 + 1);
        LOBYTE(v22) = v24[16];
        if (v22)
        {
          sub_1C7BFCFA8(v4, v17);
LABEL_17:
          sub_1C7BDF708(v20, v21, v22);
          sub_1C7BFCFA8(v4, v17);
          sub_1C7BDF708(v20, v21, v22);
          sub_1C7BEA9D8(23, 0, 0);
          sub_1C7BEA9D8(v20, v21, v22);
          sub_1C7BEA9D8(23, 0, 0);
          sub_1C7BFCF38(v4, v17);
          sub_1C7BEA9D8(v20, v21, v22);
          v15 = v61;
          goto LABEL_8;
        }

        sub_1C7BFCFA8(v4, v17);
        v25 = v4;
      }

      else
      {
        if (v18)
        {
          goto LABEL_7;
        }

        v19 = &v4[OBJC_IVAR____TtC9SEService16SEPackageDetails_type];
        swift_beginAccess();
        v20 = *v19;
        v21 = *(v19 + 1);
        v22 = v19[16];
        sub_1C7BFCFA8(v4, v17);
        if (v22)
        {
          goto LABEL_17;
        }

        v23 = v4;
      }

      sub_1C7BEA9D8(23, 0, 0);
      sub_1C7BEA9D8(v20, v21, 0);
      sub_1C7BEA9D8(23, 0, 0);
      sub_1C7BFCF38(v4, v17);
      v15 = v61;
      if (v20 == 23)
      {

        a1 = v64;
        v26 = v17;
        goto LABEL_54;
      }

LABEL_8:
      ++a2;
      sub_1C7BFCF38(v4, v17);
      a1 += 2;
      if (v15 == a2)
      {
        goto LABEL_46;
      }
    }
  }

  swift_beginAccess();
  v27 = *&v4[v12];
  v28 = OBJC_IVAR____TtC9SEService7SEState_seStorageCredentials;
  swift_beginAccess();
  v29 = *(*(v27 + v28) + 16);

  if (!v29)
  {
    goto LABEL_47;
  }

  v31 = 0;
  v32 = v30 + 32;
  v62 = v30;
  v55 = v30 + 32;
  v56 = v29;
  while (1)
  {
    if (v31 >= *(v30 + 16))
    {
      __break(1u);
      goto LABEL_75;
    }

    v33 = (v32 + 16 * v31);
    v34 = v33[1];
    if (v34 >> 62 == 3 || v34 >> 62 == 0)
    {
      break;
    }

LABEL_41:
    if (++v31 == v29)
    {
      goto LABEL_47;
    }
  }

  v57 = v34 >> 62;
  v58 = v31;
  v4 = *v33;
  v36 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
  swift_beginAccess();
  v37 = *&v4[v36];
  a2 = v37 & 0xFFFFFFFFFFFFFF8;
  if (v37 >> 62)
  {
    if (v37 < 0)
    {
      v43 = *&v4[v36];
    }

    v38 = sub_1C7C7D6D4();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v34;
  sub_1C7BFCFA8(v4, v34);

  v39 = 0;
  do
  {
    if (v38 == v39)
    {
      sub_1C7BFCF38(v4, v34);

      v30 = v62;
      v32 = v55;
      v29 = v56;
      v31 = v58;
      goto LABEL_41;
    }

    if ((v37 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x1CCA6B7B0](v39, v37);
    }

    else
    {
      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v40 = *(v37 + 8 * v39 + 32);
    }

    v41 = v40;
    if (__OFADD__(v39, 1))
    {
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
      swift_once();
      goto LABEL_2;
    }

    v42 = *&v40[OBJC_IVAR____TtC9SEService8SEApplet_identifier];
    a1 = *&v40[OBJC_IVAR____TtC9SEService8SEApplet_identifier + 8];

    v3 = sub_1C7C4C21C();

    ++v39;
  }

  while ((v3 & 1) == 0);

  if (v57)
  {
    a1 = v64;
    v26 = v34;
    if (v57 != 3)
    {
      goto LABEL_48;
    }
  }

  else
  {
    a1 = v64;
    v26 = v34;
  }

LABEL_54:
  v60 = v26;
  v46 = OBJC_IVAR____TtC9SEService16SEPackageDetails_instances;
  swift_beginAccess();
  v3 = *&v4[v46];
  if (!(v3 >> 62))
  {
    v47 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_56;
  }

LABEL_75:
  v47 = sub_1C7C7D6D4();
LABEL_56:
  v59 = v4;

  if (v47)
  {
    v48 = 0;
    a2 = v3 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x1CCA6B7B0](v48, v3);
      }

      else
      {
        if (v48 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v49 = *(v3 + 8 * v48 + 32);
      }

      v50 = v49;
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_71;
      }

      v53 = *&v49[OBJC_IVAR____TtC9SEService8SEApplet_identifier];
      v52 = *&v49[OBJC_IVAR____TtC9SEService8SEApplet_identifier + 8];

      v54 = sub_1C7C4C21C();

      if (v54)
      {

        sub_1C7BFCF20(v4, v60);
        v26 = *&v50[OBJC_IVAR____TtC9SEService8SEApplet_lifecycleState];

        return v26;
      }

      ++v48;
      a1 = v64;
    }

    while (v51 != v47);
  }

  v26 = v60;
LABEL_48:
  sub_1C7BEADA0();
  swift_allocError();
  *v44 = 0;
  *(v44 + 8) = 0;
  *(v44 + 16) = 5;
  swift_willThrow();
  sub_1C7BFCF20(v4, v26);
  return v26;
}

uint64_t sub_1C7C4C21C()
{

  v0 = sub_1C7C7D394();
  v2 = v1;
  v3 = sub_1C7C7D394();
  v5 = v4;
  if (v2)
  {
    v6 = v3;
    while (v5)
    {
      if (v0 == v6 && v2 == v5)
      {
      }

      else
      {
        v7 = sub_1C7C7DAA4();

        if ((v7 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v0 = sub_1C7C7D394();
      v2 = v8;
      v6 = sub_1C7C7D394();
      v5 = v9;
      if (!v2)
      {
        goto LABEL_9;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_9:

  if (v5)
  {
LABEL_13:

    return 0;
  }

  return 1;
}

uint64_t SESnapshot.marginUsed.getter()
{
  v1 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  v4 = *(*(v3 + OBJC_IVAR____TtC9SEService7SEState_memoryInfo) + OBJC_IVAR____TtC9SEService13SERMemoryInfo_availablePersistentExcludingIndex);
  if (v4 <= 0)
  {
    v5 = *(v3 + OBJC_IVAR____TtC9SEService7SEState_freeMemory);
    v6 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
    result = swift_beginAccess();
    v4 = *(v5 + v6);
  }

  if (!__OFSUB__(25600, v4))
  {
    return (25600 - v4) & ~((25600 - v4) >> 63);
  }

  __break(1u);
  return result;
}

uint64_t SESnapshot.description.getter()
{
  v1 = v0;
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0x3A65746174534553, 0xE900000000000020);
  v2 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = SEState.description.getter();
  v6 = v5;

  MEMORY[0x1CCA6B380](v4, v6);

  MEMORY[0x1CCA6B380](0xD000000000000013, 0x80000001C7C9F4B0);
  v7 = *(v1 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v8 = ReservationState.description.getter();
  MEMORY[0x1CCA6B380](v8);

  MEMORY[0x1CCA6B380](0xD000000000000014, 0x80000001C7C9F4D0);
  v9 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();
  v10 = *(v1 + v9);
  sub_1C7C003B8();

  v11 = sub_1C7C7D264();
  v13 = v12;

  MEMORY[0x1CCA6B380](v11, v13);

  MEMORY[0x1CCA6B380](0xD000000000000010, 0x80000001C7C9F4F0);
  v14 = *(*(v1 + OBJC_IVAR____TtC9SEService10SESnapshot_dataSource) + OBJC_IVAR____TtC9SEService13SERDataSource_credentialSizes);
  type metadata accessor for AppletMemoryInfo();
  v15 = sub_1C7C7D264();
  MEMORY[0x1CCA6B380](v15);

  return 0;
}

id sub_1C7C4C658(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C7C7D2E4();

  return v5;
}

uint64_t sub_1C7C4C6C8(unint64_t *a1, void (*a2)(uint64_t))
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

id SESnapshot.seState.getter()
{
  v1 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SESnapshot.seState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t _s9SEService10SESnapshotC11credentialsSDyAA14CredentialTypeOSiGyF_0()
{
  v1 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t SESnapshot.globalCredentials.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C7C4C934()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC288338);
  __swift_project_value_buffer(v0, qword_1EC288338);
  return sub_1C7C7D1A4();
}

id SESnapshot.__allocating_init(seState:reservationState:stagedCredentials:dataSource:deviceCapability:)(void *a1, char *a2, unint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v30 = a5;
  v11 = sub_1C7C7D104();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v6;
  v16 = objc_allocWithZone(v6);
  *&v16[OBJC_IVAR____TtC9SEService10SESnapshot_seState] = a1;
  *&v16[OBJC_IVAR____TtC9SEService10SESnapshot_reservationState] = a2;
  *&v16[OBJC_IVAR____TtC9SEService10SESnapshot_dataSource] = a4;
  v17 = a1;
  v18 = a2;
  v19 = a4;
  if (!a3)
  {
    a3 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  }

  v20 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  *&v16[OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials] = a3;
  v21 = SEState.instances.getter();
  v22 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v23 = *&a2[v22];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34[0] = v21;
  sub_1C7BFC468(v23, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, v34);

  v25 = v34[0];
  swift_beginAccess();
  v26 = *&v16[v20];

  v27 = swift_isUniquelyReferenced_nonNull_native();
  v33 = v25;
  sub_1C7BFC468(v26, sub_1C7C4F7A8, 0, v27, &v33);

  *&v16[OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials] = v33;
  sub_1C7C7D0F4();
  (*(v12 + 32))(&v16[OBJC_IVAR____TtC9SEService10SESnapshot_uuid], v15, v11);
  *&v16[OBJC_IVAR____TtC9SEService10SESnapshot_deviceCapability] = v30;
  v32.receiver = v16;
  v32.super_class = v31;
  v28 = objc_msgSendSuper2(&v32, sel_init);

  return v28;
}

id SESnapshot.init(seState:reservationState:stagedCredentials:dataSource:deviceCapability:)(void *a1, char *a2, unint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v30 = a5;
  ObjectType = swift_getObjectType();
  v11 = sub_1C7C7D104();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC9SEService10SESnapshot_seState] = a1;
  *&v6[OBJC_IVAR____TtC9SEService10SESnapshot_reservationState] = a2;
  *&v6[OBJC_IVAR____TtC9SEService10SESnapshot_dataSource] = a4;
  v16 = a1;
  v17 = a2;
  v18 = a4;
  if (!a3)
  {
    a3 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
  }

  v19 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  *&v6[OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials] = a3;
  v20 = SEState.instances.getter();
  v21 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v22 = *&a2[v21];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33[0] = v20;
  sub_1C7BFC468(v22, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, v33);

  v24 = v33[0];
  swift_beginAccess();
  v25 = *&v6[v19];

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v32 = v24;
  sub_1C7BFC468(v25, sub_1C7C4F7A8, 0, v26, &v32);

  *&v6[OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials] = v32;
  sub_1C7C7D0F4();
  (*(v12 + 32))(&v6[OBJC_IVAR____TtC9SEService10SESnapshot_uuid], v15, v11);
  *&v6[OBJC_IVAR____TtC9SEService10SESnapshot_deviceCapability] = v30;
  v31.receiver = v6;
  v31.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v31, sel_init);

  return v27;
}

uint64_t static SESnapshot.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC264F00 = a1;
  return result;
}

Swift::Void __swiftcall SESnapshot.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v2 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
  v8 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  swift_beginAccess();
  v10 = *(v2 + v9);

  v12 = sub_1C7C2E0A8(v11);

  if (*(v12 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2657D0, &qword_1C7C907F8);
    v13 = sub_1C7C7D914();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  v23 = v13;

  sub_1C7C315A8(v14, 1, &v23);

  sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
  sub_1C7BED6A8(0, &qword_1EC2645D8, 0x1E696AD98);
  sub_1C7C4F7C8();
  v15 = sub_1C7C7D244();

  v16 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16, v23];

  v17 = sub_1C7C7D0C4();
  v18 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = *(v2 + OBJC_IVAR____TtC9SEService10SESnapshot_deviceCapability);
  v20 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];

  v21 = *(v2 + OBJC_IVAR____TtC9SEService10SESnapshot_dataSource);
  v22 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
}

id SESnapshot.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1C7C7D104();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SEState();
  v10 = sub_1C7C7D5E4();
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  type metadata accessor for ReservationState();
  v12 = sub_1C7C7D5E4();
  if (!v12)
  {
LABEL_10:

LABEL_11:
    v20 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v21 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v13 = v12;
  sub_1C7BED6A8(0, &qword_1EC263460, 0x1E696AFB0);
  v14 = sub_1C7C7D5E4();
  if (!v14)
  {
    v19 = v11;
    v11 = v13;
LABEL_9:

    goto LABEL_10;
  }

  v15 = v14;
  type metadata accessor for DeviceCapability();
  v16 = sub_1C7C7D5E4();
  if (!v16)
  {

    v19 = v13;
    v11 = v15;
    goto LABEL_9;
  }

  v65 = v16;
  v66 = ObjectType;
  v17 = type metadata accessor for SERDataSource();
  v18 = sub_1C7C7D5E4();
  v67 = v15;
  if (!v18)
  {
    if (qword_1EC2621E8 != -1)
    {
      swift_once();
    }

    v23 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v23, qword_1EC288338);
    v24 = sub_1C7C7D194();
    v25 = sub_1C7C7D584();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v64 = v24;
      v27 = v26;
      *v26 = 0;
      _os_log_impl(&dword_1C7B9A000, v64, v25, "No SERDataSource found in decoder", v26, 2u);
      v28 = v27;
      v24 = v64;
      MEMORY[0x1CCA6C990](v28, -1, -1);
    }

    v29 = sub_1C7C731F4(MEMORY[0x1E69E7CC0]);
    v30 = objc_allocWithZone(v17);
    SERDataSource.init(credentialSizes:)(v29);
  }

  *&v2[OBJC_IVAR____TtC9SEService10SESnapshot_dataSource] = v18;
  sub_1C7C7D0E4();
  (*(v6 + 32))(&v2[OBJC_IVAR____TtC9SEService10SESnapshot_uuid], v9, v5);
  v31 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  *&v2[OBJC_IVAR____TtC9SEService10SESnapshot_seState] = v11;
  *&v2[OBJC_IVAR____TtC9SEService10SESnapshot_reservationState] = v13;
  sub_1C7BED6A8(0, &qword_1EC263470, 0x1E696AEC0);
  sub_1C7BED6A8(0, &qword_1EC2645D8, 0x1E696AD98);
  v32 = v11;
  v33 = v13;
  v34 = sub_1C7C7D5F4();
  if (v34)
  {
    sub_1C7C2E3D0(v34);
LABEL_21:
    v37 = v35;

    if (*(v37 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
      v38 = sub_1C7C7D914();
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC8];
    }

    v71[0] = v38;
    sub_1C7C31E74(v37, 1, v71);
    v39 = v71[0];
    goto LABEL_25;
  }

  sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
  v36 = sub_1C7C7D5F4();
  if (v36)
  {
    sub_1C7C2E6D8(v36);
    goto LABEL_21;
  }

  v39 = sub_1C7C72E94(MEMORY[0x1E69E7CC0]);
LABEL_25:
  v40 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
  *&v2[OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials] = v39;
  swift_beginAccess();
  v41 = *&v2[v31];
  v42 = SEState.instances.getter();

  v43 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
  swift_beginAccess();
  v44 = *&v33[v43];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70[0] = v42;
  sub_1C7BFC468(v44, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, v70);

  v46 = v70[0];
  swift_beginAccess();
  v47 = *&v2[v40];

  v48 = swift_isUniquelyReferenced_nonNull_native();
  v69 = v46;
  sub_1C7BFC468(v47, sub_1C7C4F7A8, 0, v48, &v69);

  *&v2[OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials] = v69;
  v49 = v65;
  *&v2[OBJC_IVAR____TtC9SEService10SESnapshot_deviceCapability] = v65;
  v68.receiver = v2;
  v68.super_class = v66;
  v50 = v49;
  v51 = objc_msgSendSuper2(&v68, sel_init);
  v52 = qword_1EC2621E8;
  v53 = v51;
  if (v52 != -1)
  {
    swift_once();
  }

  v54 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v54, qword_1EC288338);
  v55 = sub_1C7C7D194();
  v56 = sub_1C7C7D574();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v69 = v58;
    *v57 = 136315138;
    v59 = SESnapshot.description.getter();
    v61 = sub_1C7BE42F8(v59, v60, &v69);
    v66 = v32;
    v62 = v61;

    *(v57 + 4) = v62;
    _os_log_impl(&dword_1C7B9A000, v55, v56, "Decoded SESnapshot: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    MEMORY[0x1CCA6C990](v58, -1, -1);
    MEMORY[0x1CCA6C990](v57, -1, -1);
  }

  else
  {
  }

  return v53;
}

uint64_t sub_1C7C4DC34()
{
  *v0;
  *v0;
  *v0;
  sub_1C7C7D364();
}

uint64_t sub_1C7C4DD30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C7C4F908();
  *a2 = result;
  return result;
}

void sub_1C7C4DD60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65746174536573;
  v5 = 0xE400000000000000;
  v6 = 1684632949;
  v7 = 0xD000000000000010;
  v8 = 0x80000001C7C9CC70;
  if (v2 != 4)
  {
    v7 = 0x72756F5361746164;
    v8 = 0xEA00000000006563;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xD000000000000010;
  v10 = 0x80000001C7C9CC30;
  if (v2 != 1)
  {
    v9 = 0xD000000000000011;
    v10 = 0x80000001C7C9CC50;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1C7C4DE24()
{
  v1 = *v0;
  v2 = 0x65746174536573;
  v3 = 1684632949;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x72756F5361746164;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_1C7C4DEE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C7C4F908();
  *a1 = result;
  return result;
}

uint64_t sub_1C7C4DF0C(uint64_t a1)
{
  v2 = sub_1C7C4F830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C4DF48(uint64_t a1)
{
  v2 = sub_1C7C4F830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SESnapshot.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264F78, &qword_1C7C939A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C4F830();
  sub_1C7C7DBA4();
  v11 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
  swift_beginAccess();
  v16 = *(v3 + v11);
  LOBYTE(v15) = 0;
  type metadata accessor for SEState();
  sub_1C7C4C6C8(&qword_1EC264F20, type metadata accessor for SEState);
  sub_1C7C7DA44();
  if (!v2)
  {
    v16 = *(v3 + OBJC_IVAR____TtC9SEService10SESnapshot_reservationState);
    LOBYTE(v15) = 1;
    type metadata accessor for ReservationState();
    sub_1C7C4C6C8(&unk_1EC264F30, type metadata accessor for ReservationState);
    sub_1C7C7DA44();
    v12 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
    swift_beginAccess();
    v15 = *(v3 + v12);
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264630, &qword_1C7C90820);
    sub_1C7C4F884(&qword_1EC264668, sub_1C7BDF724);
    sub_1C7C7DA44();
    LOBYTE(v15) = 3;
    sub_1C7C7D104();
    sub_1C7C4C6C8(&qword_1EC264680, MEMORY[0x1E69695A8]);
    sub_1C7C7DA44();
    v15 = *(v3 + OBJC_IVAR____TtC9SEService10SESnapshot_deviceCapability);
    HIBYTE(v14) = 4;
    type metadata accessor for DeviceCapability();
    sub_1C7C4C6C8(&unk_1EC264F90, type metadata accessor for DeviceCapability);
    sub_1C7C7DA44();
    v15 = *(v3 + OBJC_IVAR____TtC9SEService10SESnapshot_dataSource);
    HIBYTE(v14) = 5;
    type metadata accessor for SERDataSource();
    sub_1C7C4C6C8(&qword_1EC264888, type metadata accessor for SERDataSource);
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v9, v5);
}

void *SESnapshot.init(from:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_1C7C7D104();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264FA0, &qword_1C7C939B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1C7C4F830();
  v13 = v39;
  sub_1C7C7DB94();
  if (v13)
  {
    v33 = v40;
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    v14 = *((*MEMORY[0x1E69E7D40] & *v33) + 0x30);
    v15 = *((*MEMORY[0x1E69E7D40] & *v33) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v39 = v7;
    type metadata accessor for SEState();
    v45 = 0;
    sub_1C7C4C6C8(&qword_1EC264A78, type metadata accessor for SEState);
    sub_1C7C7D9B4();
    v17 = OBJC_IVAR____TtC9SEService10SESnapshot_seState;
    v18 = v10;
    v19 = v40;
    *(v40 + OBJC_IVAR____TtC9SEService10SESnapshot_seState) = v46;
    type metadata accessor for ReservationState();
    v45 = 1;
    sub_1C7C4C6C8(&unk_1EC264FB0, type metadata accessor for ReservationState);
    sub_1C7C7D9B4();
    v36 = v17;
    v20 = OBJC_IVAR____TtC9SEService10SESnapshot_reservationState;
    *&v19[OBJC_IVAR____TtC9SEService10SESnapshot_reservationState] = v46;
    LOBYTE(v46) = 3;
    sub_1C7C4C6C8(&qword_1EC262F00, MEMORY[0x1E69695A8]);
    sub_1C7C7D9B4();
    v37 = v2;
    v35 = v20;
    (*(v38 + 32))(&v19[OBJC_IVAR____TtC9SEService10SESnapshot_uuid], v5, v2);
    type metadata accessor for SERDataSource();
    v45 = 5;
    sub_1C7C4C6C8(&unk_1EC264FC0, type metadata accessor for SERDataSource);
    sub_1C7C7D9B4();
    *&v19[OBJC_IVAR____TtC9SEService10SESnapshot_dataSource] = v46;
    type metadata accessor for DeviceCapability();
    v45 = 4;
    sub_1C7C4C6C8(&qword_1EC264B78, type metadata accessor for DeviceCapability);
    sub_1C7C7D9B4();
    *&v19[OBJC_IVAR____TtC9SEService10SESnapshot_deviceCapability] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264630, &qword_1C7C90820);
    v45 = 2;
    sub_1C7C4F884(&unk_1EC264FD0, sub_1C7BE4974);
    sub_1C7C7D9B4();
    v21 = v18;
    v22 = OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials;
    *&v19[OBJC_IVAR____TtC9SEService10SESnapshot_stagedCredentials] = v46;
    v23 = v36;
    swift_beginAccess();
    v24 = *&v19[v23];
    v25 = SEState.instances.getter();

    v26 = *&v19[v35];
    v27 = OBJC_IVAR____TtC9SEService16ReservationState_counts;
    swift_beginAccess();
    v28 = *(v26 + v27);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44[0] = v25;
    sub_1C7BFC468(v28, sub_1C7C4F7A8, 0, isUniquelyReferenced_nonNull_native, v44);

    v30 = v44[0];
    swift_beginAccess();
    v31 = *&v19[v22];

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v30;
    sub_1C7BFC468(v31, sub_1C7C4F7A8, 0, v32, &v47);

    *&v19[OBJC_IVAR____TtC9SEService10SESnapshot_globalCredentials] = v47;
    v43.receiver = v19;
    v43.super_class = ObjectType;
    v33 = objc_msgSendSuper2(&v43, sel_init);
    (*(v39 + 8))(v21, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
  }

  return v33;
}

uint64_t sub_1C7C4EC64()
{
  if (*(v0 + 64))
  {
    sub_1C7BEADA0();
    swift_allocError();
    *v1 = 0xD0000000000000A0;
    *(v1 + 8) = 0x80000001C7C9DD80;
    *(v1 + 16) = 0;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_1EC2621D8 != -1)
    {
      swift_once();
    }

    *(v0 + 34) = 0;
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_1C7C4EDCC;

    return SERInternalClient.reclaimUnusedSEMemory(targetDevice:)(v0 + 16, (v0 + 34));
  }
}

uint64_t sub_1C7C4EDCC()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C156D4, 0, 0);
}

id SESnapshot.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SESnapshot.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C7C4F060@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = SESnapshot.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C7C4F0D4()
{
  result = qword_1EC264F50;
  if (!qword_1EC264F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC265230, &qword_1C7C94520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264F50);
  }

  return result;
}

uint64_t sub_1C7C4F138(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1C7C4F298(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_1C7C4F380(v9, v4, v2);
  result = MEMORY[0x1CCA6C990](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t *sub_1C7C4F298(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1C7C4F3F8(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1C7C4F3F8(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1C7C4F380(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_1C7C4F298(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1C7C4F3F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC264610, &qword_1C7C90810);
  result = sub_1C7C7D914();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v34 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 24 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v35 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_1C7C7DB64();
    sub_1C7BDF708(v19, v20, v21);
    CredentialType.hash(into:)();
    result = sub_1C7C7DB84();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v9 + 48) + 24 * v26;
    *v31 = v19;
    *(v31 + 8) = v20;
    *(v31 + 16) = v21;
    *(*(v9 + 56) + 8 * v26) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    v10 = v34;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v34 = (v15 - 1) & v15;
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

unint64_t sub_1C7C4F658(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t sub_1C7C4F6A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1C7C4F6F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C7C7D104();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1C7C4F7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v5 = *(a1 + 16);
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  return sub_1C7BDF708(v3, v2, v5);
}

unint64_t sub_1C7C4F7C8()
{
  result = qword_1EC2645E0;
  if (!qword_1EC2645E0)
  {
    sub_1C7BED6A8(255, &qword_1EC262ED0, 0x1E695DEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2645E0);
  }

  return result;
}

unint64_t sub_1C7C4F830()
{
  result = qword_1EC264F80;
  if (!qword_1EC264F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264F80);
  }

  return result;
}

uint64_t sub_1C7C4F884(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC264630, &qword_1C7C90820);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7C4F908()
{
  v0 = sub_1C7C7D934();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1C7C4F958()
{
  result = qword_1EC264FE0;
  if (!qword_1EC264FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264FE0);
  }

  return result;
}

unint64_t sub_1C7C4F9B0()
{
  result = qword_1EC264FE8;
  if (!qword_1EC264FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264FE8);
  }

  return result;
}

unint64_t sub_1C7C4FA08()
{
  result = qword_1EC264FF0;
  if (!qword_1EC264FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264FF0);
  }

  return result;
}

unint64_t sub_1C7C4FA60()
{
  result = qword_1EC264FF8;
  if (!qword_1EC264FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC264FF8);
  }

  return result;
}

uint64_t type metadata accessor for SESnapshot()
{
  result = qword_1EDCF5AF8;
  if (!qword_1EDCF5AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7C4FB08()
{
  result = sub_1C7C7D104();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SESnapshot.CanFitResult(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for SESnapshot.CanFitResult(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_1C7C4FD48(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C7C4FD68(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SESnapshot.CanFitResult.FailureReason(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for SESnapshot.CanFitResult.FailureReason(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

unint64_t sub_1C7C4FEC4()
{
  result = qword_1EC265008;
  if (!qword_1EC265008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265008);
  }

  return result;
}

unint64_t sub_1C7C4FF1C()
{
  result = qword_1EC265010;
  if (!qword_1EC265010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265010);
  }

  return result;
}

unint64_t sub_1C7C4FF74()
{
  result = qword_1EC265018;
  if (!qword_1EC265018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265018);
  }

  return result;
}

void *JPKIInternalClient.__allocating_init(passIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for JPKIXPCClient();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  v4[4] = v5;
  return v4;
}

void *JPKIInternalClient.init(passIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for JPKIXPCClient();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v2[4] = v3;
  return v2;
}

uint64_t JPKIInternalClient.installedCertificateTypes()(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1C7C50114;

  return JPKIInternalClient.installedCertificates()(v1 + 16);
}

uint64_t sub_1C7C50114()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C50210, 0, 0);
}

uint64_t sub_1C7C50210()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 57);
  if (v7)
  {
    v8 = *(v0 + 64);
    *v8 = v2;
    *(v8 + 8) = v1;
    *(v8 + 16) = v3;
    *(v8 + 24) = v4;
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
  }

  else
  {
    v9 = *(v2 + 16);
    if (v9)
    {
      v17 = *(v0 + 32);
      v18 = *(v0 + 40);
      v19 = *(v0 + 48);
      v20 = *(v0 + 56);
      v21 = MEMORY[0x1E69E7CC0];
      sub_1C7C25C4C(0, v9, 0);
      v10 = v21;
      v11 = (v2 + 32);
      v12 = *(v21 + 16);
      do
      {
        v13 = *v11;
        v14 = *(v21 + 24);
        if (v12 >= v14 >> 1)
        {
          sub_1C7C25C4C((v14 > 1), v12 + 1, 1);
        }

        *(v21 + 16) = v12 + 1;
        *(v21 + v12 + 32) = v13;
        v11 += 2;
        ++v12;
        --v9;
      }

      while (v9);
      sub_1C7C547FC(v2, v1, v17, v18, v19, v20, 0);
    }

    else
    {
      sub_1C7C547FC(*(v0 + 16), *(v0 + 24), v3, v4, v5, v6, 0);
      v10 = MEMORY[0x1E69E7CC0];
    }

    **(v0 + 64) = v10;
  }

  *(*(v0 + 64) + 41) = v7;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t JPKIInternalClient.installedCertificates()(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C7C503BC, 0, 0);
}

uint64_t sub_1C7C503BC()
{
  v1 = *(v0 + 264);
  v2 = v1[3];
  *(v0 + 16) = v1[2];
  *(v0 + 24) = v2;
  *(v0 + 64) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 72) = 3;
  v3 = v1[4];
  *(v0 + 272) = v3;
  v4 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v4;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);

  return MEMORY[0x1EEE6DFA0](sub_1C7C50464, v3, 0);
}

uint64_t sub_1C7C50464()
{
  v1 = *(v0 + 272);
  sub_1C7C17D7C((v0 + 80), (v0 + 144));
  *(v0 + 280) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C504F8, 0, 0);
}

uint64_t sub_1C7C504F8()
{
  v36 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (qword_1EC2621F0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v7, qword_1EC265028);
  sub_1C7C18550(v1, v2, v3, v4, v5, v6);
  v8 = sub_1C7C7D194();
  v9 = sub_1C7C7D5A4();
  sub_1C7C18678(v1, v2, v3, v4, v5, v6);
  if (os_log_type_enabled(v8, v9))
  {
    v26 = v5;
    v10 = swift_slowAlloc();
    v27 = v4;
    v28 = swift_slowAlloc();
    v11 = v3;
    v12 = v28;
    *v10 = 136315138;
    v30 = v1;
    v31 = v2;
    v32 = v11;
    v33 = v27;
    v34 = v26;
    v35 = v6;
    sub_1C7C18550(v1, v2, v11, v27, v26, v6);
    v13 = JPKIXPCResponse.description.getter();
    v25 = v1;
    v15 = v14;
    sub_1C7C18678(v30, v2, v11, v27, v26, v6);
    v16 = sub_1C7BE42F8(v13, v15, &v28);
    v1 = v25;

    *(v10 + 4) = v16;
    _os_log_impl(&dword_1C7B9A000, v8, v9, "Response %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    v17 = v12;
    v3 = v11;
    v4 = v27;
    MEMORY[0x1CCA6C990](v17, -1, -1);
    v18 = v10;
    v5 = v26;
    MEMORY[0x1CCA6C990](v18, -1, -1);
  }

  if (v6 >> 5)
  {
    if (v6 >> 5 == 1)
    {
      sub_1C7C0A9C4(v0 + 16);
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      LOBYTE(v6) = 0;
      v19 = 0;
      goto LABEL_11;
    }

    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1C7C7D794();

    v28 = 0xD00000000000002ELL;
    v29 = 0x80000001C7C9F5E0;
    v30 = v1;
    v31 = v2;
    v32 = v3;
    v33 = v4;
    v34 = v5;
    v35 = v6;
    v20 = JPKIXPCResponse.description.getter();
    MEMORY[0x1CCA6B380](v20);

    sub_1C7C0A9C4(v0 + 16);
    sub_1C7C18678(v1, v2, v3, v4, v5, v6);
    v3 = 0;
    v4 = 0;
    v5 = 0;
    LOBYTE(v6) = 0;
    v1 = v28;
    v2 = v29;
  }

  else
  {
    sub_1C7C0A9C4(v0 + 16);
  }

  v19 = 1;
LABEL_11:
  v21 = *(v0 + 256);
  *v21 = v1;
  v21[1] = v2;
  v21[2] = v3;
  v21[3] = v4;
  v21[4] = v5;
  v22 = *(v0 + 256);
  *(v22 + 40) = v6;
  *(v22 + 41) = v19;
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1C7C5082C()
{
  v26 = v0;
  if (qword_1EC2621F0 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC265028);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[35];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[27];
    v9 = v0[28];
    v11 = v0[29];
    v12 = sub_1C7C7DB04();
    v14 = sub_1C7BE42F8(v12, v13, &v25);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "Unhandled XPC error : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = v0[35];
  v16 = v0[32];
  swift_getErrorValue();
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[26];
  v20 = sub_1C7C7DB04();
  v22 = v21;
  sub_1C7C0A9C4((v0 + 2));

  *v16 = v20;
  v16[1] = v22;
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = 0;
  *(v0[32] + 40) = 257;
  v23 = v0[1];

  return v23();
}

uint64_t JPKIInternalClient.read(certificateType:userAuthentication:)(uint64_t a1, _BYTE *a2, _OWORD *a3)
{
  *(v4 + 344) = a1;
  *(v4 + 352) = v3;
  *(v4 + 73) = *a2;
  *(v4 + 312) = *a3;
  v5 = swift_task_alloc();
  *(v4 + 360) = v5;
  *v5 = v4;
  v5[1] = sub_1C7C50ADC;

  return sub_1C7C51518(v4 + 288, (v4 + 312), v4 + 144);
}

uint64_t sub_1C7C50ADC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v7 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v5 = sub_1C7C510C0;
  }

  else
  {
    v5 = sub_1C7C50BF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C7C50BF0()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 352);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  *(v0 + 384) = v4;
  *(v0 + 392) = v3;
  v5 = *(v0 + 304);
  *(v0 + 74) = v5;
  v6 = v2[3];
  *(v0 + 16) = v2[2];
  *(v0 + 24) = v6;
  *(v0 + 32) = v1;
  *(v0 + 40) = v4;
  *(v0 + 48) = v3;
  *(v0 + 56) = v5;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  v7 = v2[4];
  *(v0 + 400) = v7;
  *(v0 + 121) = *(v0 + 57);
  v8 = *(v0 + 48);
  *(v0 + 96) = *(v0 + 32);
  *(v0 + 112) = v8;
  *(v0 + 80) = *(v0 + 16);

  sub_1C7C08334(v4, v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_1C7C50CBC, v7, 0);
}

uint64_t sub_1C7C50CBC()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  sub_1C7C17D7C((v0 + 80), (v0 + 192));
  *(v0 + 408) = v2;
  if (v2)
  {
    v3 = sub_1C7C512F8;
  }

  else
  {
    v3 = sub_1C7C50D50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C7C50D50()
{
  v44 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  if (qword_1EC2621F0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v7, qword_1EC265028);
  sub_1C7C18550(v2, v1, v3, v4, v5, v6);
  v8 = sub_1C7C7D194();
  v9 = sub_1C7C7D5A4();
  sub_1C7C18678(v2, v1, v3, v4, v5, v6);
  if (os_log_type_enabled(v8, v9))
  {
    v34 = v5;
    v10 = swift_slowAlloc();
    v32 = v1;
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136315138;
    v38 = v2;
    v39 = v32;
    v40 = v3;
    v41 = v4;
    v42 = v34;
    v43 = v6;
    sub_1C7C18550(v2, v32, v3, v4, v34, v6);
    v12 = JPKIXPCResponse.description.getter();
    v31 = v4;
    v13 = v3;
    v14 = v2;
    v16 = v15;
    sub_1C7C18678(v38, v32, v40, v41, v34, v6);
    v17 = sub_1C7BE42F8(v12, v16, &v36);
    v2 = v14;
    v3 = v13;
    v4 = v31;

    *(v10 + 4) = v17;
    _os_log_impl(&dword_1C7B9A000, v8, v9, "Response %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    v18 = v11;
    v1 = v32;
    MEMORY[0x1CCA6C990](v18, -1, -1);
    v19 = v10;
    v5 = v34;
    MEMORY[0x1CCA6C990](v19, -1, -1);
  }

  v20 = *(v0 + 74);
  v21 = *(v0 + 384);
  v22 = *(v0 + 392);
  if (v6 >> 5)
  {
    if (v6 >> 5 == 2)
    {
      sub_1C7C0A6B4(v21, v22, v20);
      sub_1C7C0A9C4(v0 + 16);
      v1 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      LOBYTE(v6) = 0;
      v23 = 0;
      goto LABEL_11;
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    v33 = v21;
    v35 = v20;
    v24 = v2;
    v25 = v22;
    sub_1C7C7D794();

    v36 = 0xD000000000000021;
    v37 = 0x80000001C7C9F610;
    v38 = v24;
    v39 = v1;
    v40 = v3;
    v41 = v4;
    v42 = v5;
    v43 = v6;
    v26 = JPKIXPCResponse.description.getter();
    MEMORY[0x1CCA6B380](v26);

    sub_1C7C0A6B4(v33, v25, v35);
    sub_1C7C0A9C4(v0 + 16);
    sub_1C7C18678(v24, v1, v3, v4, v5, v6);
    v3 = 0;
    v4 = 0;
    v5 = 0;
    LOBYTE(v6) = 0;
    v2 = v36;
    v1 = v37;
  }

  else
  {
    sub_1C7C0A6B4(v21, v22, v20);
    sub_1C7C0A9C4(v0 + 16);
  }

  v23 = 1;
LABEL_11:
  v27 = *(v0 + 368);
  v28 = *(v0 + 344);
  *v28 = v2;
  *(v28 + 8) = v1;
  *(v28 + 16) = v3;
  *(v28 + 24) = v4;
  *(v28 + 32) = v5;
  *(v28 + 40) = v6;
  *(v28 + 41) = v23;

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1C7C510C0()
{
  v27 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (qword_1EC2621F0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v7, qword_1EC265028);
  sub_1C7C18594(v1, v2, v3, v4, v5, v6);
  v8 = sub_1C7C7D194();
  v9 = sub_1C7C7D584();
  sub_1C7C186BC(v1, v2, v3, v4, v5, v6);
  if (os_log_type_enabled(v8, v9))
  {
    v24 = v9;
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25[0] = v23;
    v25[1] = v1;
    *v10 = 136315138;
    v25[2] = v2;
    v25[3] = v3;
    v25[4] = v4;
    v25[5] = v5;
    v26 = v6;
    v11 = JPKIInternalTypes.InternalError.localizedDescription.getter();
    v13 = v6;
    v14 = v5;
    v15 = v4;
    v16 = v3;
    v17 = v2;
    v18 = v1;
    v19 = sub_1C7BE42F8(v11, v12, v25);

    *(v10 + 4) = v19;
    v1 = v18;
    v2 = v17;
    v3 = v16;
    v4 = v15;
    v5 = v14;
    v6 = v13;
    _os_log_impl(&dword_1C7B9A000, v8, v24, "Authentication failure : %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x1CCA6C990](v23, -1, -1);
    MEMORY[0x1CCA6C990](v10, -1, -1);
  }

  v20 = *(v0 + 344);
  *v20 = v1;
  *(v20 + 8) = v2;
  *(v20 + 16) = v3;
  *(v20 + 24) = v4;
  *(v20 + 32) = v5;
  *(v20 + 40) = v6;
  *(v20 + 41) = 1;
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1C7C512F8()
{
  v30 = v0;
  sub_1C7C0A9C4(v0 + 16);
  if (qword_1EC2621F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC265028);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v29 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 264);
    v9 = *(v0 + 272);
    v11 = *(v0 + 280);
    v12 = sub_1C7C7DB04();
    v14 = sub_1C7BE42F8(v12, v13, &v29);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "Unhandled XPC error : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = *(v0 + 408);
  v16 = *(v0 + 74);
  v18 = *(v0 + 384);
  v17 = *(v0 + 392);
  v19 = *(v0 + 368);
  v20 = *(v0 + 344);
  swift_getErrorValue();
  v22 = *(v0 + 240);
  v21 = *(v0 + 248);
  v23 = *(v0 + 256);
  v24 = sub_1C7C7DB04();
  v26 = v25;
  sub_1C7C0A6B4(v18, v17, v16);

  *v20 = v24;
  *(v20 + 8) = v26;
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  *(v20 + 16) = 0;
  *(v20 + 40) = 257;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1C7C51518(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 168) = v3;
  *(v4 + 176) = a3;
  *(v4 + 160) = a1;
  *(v4 + 184) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1C7C51544, 0, 0);
}

uint64_t sub_1C7C51544()
{
  v21 = v0;
  v1 = v0[24];
  if (v1)
  {
    v2 = v0[24];

    if (!os_variant_has_internal_diagnostics())
    {
      goto LABEL_5;
    }

    v0[12] = v0[23];
    v0[13] = v1;
    v0[14] = 2426707952;
    v0[15] = 0xA400000000000000;
    sub_1C7C54858();
    if ((sub_1C7C7D644() & 1) == 0)
    {
      goto LABEL_5;
    }

    v0[16] = v0[23];
    v0[17] = v1;
    v0[18] = 2426707952;
    v0[19] = 0xA400000000000000;
    sub_1C7C548AC();
    sub_1C7C7D554();
    MEMORY[0x1CCA6B360](v0[8], v0[9], v0[10], v0[11]);

    v3 = sub_1C7C7CFF4();
    v5 = v4;

    if (v5 >> 60 != 15)
    {

      if (qword_1EC2621F0 != -1)
      {
        swift_once();
      }

      v12 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v12, qword_1EC265028);
      sub_1C7BED654(v3, v5);
      v13 = sub_1C7C7D194();
      v14 = sub_1C7C7D584();
      sub_1C7BE49C8(v3, v5);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20 = v16;
        *v15 = 136315138;
        v17 = sub_1C7C7CFE4();
        v19 = sub_1C7BE42F8(v17, v18, &v20);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_1C7B9A000, v13, v14, "QA OVERRIDE extAuth %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x1CCA6C990](v16, -1, -1);
        MEMORY[0x1CCA6C990](v15, -1, -1);
      }

      v6 = 1;
    }

    else
    {
LABEL_5:
      v6 = 0;
      v3 = v0[23];
      v5 = v0[24];
    }

    v7 = v0[20];
    *v7 = v3;
    *(v7 + 8) = v5;
    *(v7 + 16) = v6;
    v8 = v0[1];

    return v8(0);
  }

  else
  {
    v10 = swift_task_alloc();
    v0[25] = v10;
    *v10 = v0;
    v10[1] = sub_1C7C5187C;
    v11 = v0[21];

    return sub_1C7C52DC4((v0 + 2));
  }
}

uint64_t sub_1C7C5187C(uint64_t a1)
{
  v3 = *(*v2 + 200);
  v6 = *v2;
  *(*v2 + 208) = a1;

  if (v1)
  {
    v4 = sub_1C7C51A48;
  }

  else
  {
    v4 = sub_1C7C51990;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

id sub_1C7C51990()
{
  result = [*(v0 + 208) externalizedContext];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 208);
    v4 = *(v0 + 160);
    v5 = sub_1C7C7D054();
    v7 = v6;

    *v4 = v5;
    *(v4 + 8) = v7;
    *(v4 + 16) = 1;
    v8 = *(v0 + 8);

    return v8(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7C51A48()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return (*(v0 + 8))();
}

uint64_t JPKIInternalClient.changeAuthorization(certificateType:prevAuthentication:newAuthentication:)(uint64_t a1, _BYTE *a2, _OWORD *a3, __int128 *a4)
{
  *(v5 + 256) = a1;
  *(v5 + 264) = v4;
  *(v5 + 73) = *a2;
  v6 = *a4;
  *(v5 + 272) = *a3;
  *(v5 + 288) = v6;
  return MEMORY[0x1EEE6DFA0](sub_1C7C51AB0, 0, 0);
}

uint64_t sub_1C7C51AB0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 73);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = v4[3];
  *(v0 + 16) = v4[2];
  *(v0 + 24) = v5;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 48) = *(v0 + 280);
  *(v0 + 64) = v1;
  *(v0 + 72) = 1;
  v6 = v4[4];
  *(v0 + 304) = v6;
  *(v0 + 121) = *(v0 + 57);
  v7 = *(v0 + 48);
  *(v0 + 96) = *(v0 + 32);
  *(v0 + 112) = v7;
  *(v0 + 80) = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1C7C51B84, v6, 0);
}

uint64_t sub_1C7C51B84()
{
  v1 = *(v0 + 304);
  sub_1C7C17D7C((v0 + 80), (v0 + 144));
  *(v0 + 312) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C51C18, 0, 0);
}

uint64_t sub_1C7C51C18()
{
  v32 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (qword_1EC2621F0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v7, qword_1EC265028);
  sub_1C7C18550(v1, v2, v3, v4, v5, v6);
  v8 = sub_1C7C7D194();
  v9 = sub_1C7C7D5A4();
  sub_1C7C18678(v1, v2, v3, v4, v5, v6);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v10 = 136315138;
    v26 = v1;
    v27 = v2;
    v28 = v3;
    v29 = v4;
    v30 = v5;
    v31 = v6;
    sub_1C7C18550(v1, v2, v3, v4, v5, v6);
    v21 = v9;
    v11 = JPKIXPCResponse.description.getter();
    v23 = v3;
    v13 = v12;
    sub_1C7C18678(v1, v2, v28, v4, v5, v6);
    v14 = sub_1C7BE42F8(v11, v13, &v24);
    v3 = v23;

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v8, v21, "Response %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x1CCA6C990](v22, -1, -1);
    MEMORY[0x1CCA6C990](v10, -1, -1);
  }

  if (v6 >> 5)
  {
    if (v6 >> 5 == 5 && !(v2 | v1 | v3 | v4 | v5) && v6 == 160)
    {
      sub_1C7C0A9C4(v0 + 16);
      v1 = 0;
      v2 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      LOBYTE(v6) = 0;
      v15 = 0;
      goto LABEL_13;
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1C7C7D794();

    v24 = 0xD000000000000025;
    v25 = 0x80000001C7C9F640;
    v26 = v1;
    v27 = v2;
    v28 = v3;
    v29 = v4;
    v30 = v5;
    v31 = v6;
    v16 = JPKIXPCResponse.description.getter();
    MEMORY[0x1CCA6B380](v16);

    sub_1C7C0A9C4(v0 + 16);
    sub_1C7C18678(v1, v2, v3, v4, v5, v6);
    v3 = 0;
    v4 = 0;
    v5 = 0;
    LOBYTE(v6) = 0;
    v1 = v24;
    v2 = v25;
  }

  else
  {
    sub_1C7C0A9C4(v0 + 16);
  }

  v15 = 1;
LABEL_13:
  v17 = *(v0 + 256);
  *v17 = v1;
  v17[1] = v2;
  v17[2] = v3;
  v17[3] = v4;
  v17[4] = v5;
  v18 = *(v0 + 256);
  *(v18 + 40) = v6;
  *(v18 + 41) = v15;
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1C7C51F64()
{
  v26 = v0;
  if (qword_1EC2621F0 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC265028);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[39];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[27];
    v9 = v0[28];
    v11 = v0[29];
    v12 = sub_1C7C7DB04();
    v14 = sub_1C7BE42F8(v12, v13, &v25);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "Unhandled XPC error : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = v0[39];
  v16 = v0[32];
  swift_getErrorValue();
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[26];
  v20 = sub_1C7C7DB04();
  v22 = v21;
  sub_1C7C0A9C4((v0 + 2));

  *v16 = v20;
  v16[1] = v22;
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = 0;
  *(v0[32] + 40) = 257;
  v23 = v0[1];

  return v23();
}

uint64_t JPKIInternalClient.sign(data:certificateType:userAuthentication:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _OWORD *a5)
{
  *(v6 + 96) = a3;
  *(v6 + 104) = v5;
  *(v6 + 80) = a1;
  *(v6 + 88) = a2;
  *(v6 + 59) = *a4;
  *(v6 + 112) = *a5;
  return MEMORY[0x1EEE6DFA0](sub_1C7C52194, 0, 0);
}

uint64_t sub_1C7C52194()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 59);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265040, &qword_1C7C93EB0);
  v6 = swift_allocObject();
  *(v0 + 128) = v6;
  *(v6 + 16) = xmmword_1C7C8F930;
  *(v6 + 32) = v4;
  *(v6 + 40) = v5;
  *(v0 + 58) = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  sub_1C7BED654(v4, v5);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_1C7C522B4;
  v8 = *(v0 + 104);

  return JPKIInternalClient.sign(payloads:certificateType:userAuthentication:)(v0 + 16, v6, (v0 + 58), (v0 + 64));
}

uint64_t sub_1C7C522B4()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C523CC, 0, 0);
}

void sub_1C7C523CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 57);
  if (v7)
  {
    v8 = *(v0 + 80);
    *v8 = v1;
    *(v8 + 8) = v2;
    *(v8 + 16) = v4;
    *(v8 + 24) = v3;
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
  }

  else
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1CCA6B7B0](0, *(v0 + 16));
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v9 = *(v1 + 32);
    }

    v10 = *(v0 + 80);
    sub_1C7C547FC(v1, v2, v4, v3, v5, v6, 0);
    *v10 = v9;
  }

  *(*(v0 + 80) + 41) = v7;
  v11 = *(v0 + 8);

  v11();
}

uint64_t JPKIInternalClient.sign(payloads:certificateType:userAuthentication:)(uint64_t a1, uint64_t a2, _BYTE *a3, _OWORD *a4)
{
  *(v5 + 352) = a2;
  *(v5 + 360) = v4;
  *(v5 + 344) = a1;
  *(v5 + 73) = *a3;
  *(v5 + 312) = *a4;
  v6 = swift_task_alloc();
  *(v5 + 368) = v6;
  *v6 = v5;
  v6[1] = sub_1C7C52598;

  return sub_1C7C51518(v5 + 288, (v5 + 312), v5 + 144);
}

uint64_t sub_1C7C52598(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 368);
  v7 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v5 = sub_1C7C54980;
  }

  else
  {
    v5 = sub_1C7C526AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C7C526AC()
{
  v1 = *(v0 + 73);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  *(v0 + 392) = v4;
  *(v0 + 400) = v5;
  v6 = *(v0 + 304);
  *(v0 + 74) = v6;
  v7 = v2[3];
  *(v0 + 16) = v2[2];
  *(v0 + 24) = v7;
  *(v0 + 32) = v3;
  *(v0 + 40) = v1;
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  *(v0 + 72) = 2;
  v8 = v2[4];
  *(v0 + 408) = v8;
  *(v0 + 121) = *(v0 + 57);
  v9 = *(v0 + 48);
  *(v0 + 96) = *(v0 + 32);
  *(v0 + 112) = v9;
  *(v0 + 80) = *(v0 + 16);

  sub_1C7C08334(v4, v5, v6);

  return MEMORY[0x1EEE6DFA0](sub_1C7C5278C, v8, 0);
}

uint64_t sub_1C7C5278C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  sub_1C7C17D7C((v0 + 80), (v0 + 192));
  *(v0 + 416) = v2;
  if (v2)
  {
    v3 = sub_1C7C52BA4;
  }

  else
  {
    v3 = sub_1C7C52820;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C7C52820()
{
  v41 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  if (qword_1EC2621F0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v7, qword_1EC265028);
  sub_1C7C18550(v2, v1, v3, v4, v5, v6);
  v8 = sub_1C7C7D194();
  v9 = sub_1C7C7D5A4();
  sub_1C7C18678(v2, v1, v3, v4, v5, v6);
  v31 = v1;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1;
    v11 = swift_slowAlloc();
    v32 = v5;
    v33 = swift_slowAlloc();
    v12 = v33;
    *v11 = 136315138;
    v35 = v2;
    v36 = v10;
    v37 = v3;
    v38 = v4;
    v39 = v32;
    v40 = v6;
    sub_1C7C18550(v2, v10, v3, v4, v32, v6);
    v13 = JPKIXPCResponse.description.getter();
    v30 = v4;
    v14 = v3;
    v15 = v2;
    v17 = v16;
    sub_1C7C18678(v35, v36, v37, v38, v32, v6);
    v18 = sub_1C7BE42F8(v13, v17, &v33);
    v2 = v15;
    v3 = v14;
    v4 = v30;

    *(v11 + 4) = v18;
    _os_log_impl(&dword_1C7B9A000, v8, v9, "Response %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    v19 = v12;
    v5 = v32;
    MEMORY[0x1CCA6C990](v19, -1, -1);
    MEMORY[0x1CCA6C990](v11, -1, -1);
  }

  v20 = *(v0 + 74);
  v22 = *(v0 + 392);
  v21 = *(v0 + 400);
  if (v6 >> 5)
  {
    if (v6 >> 5 == 3)
    {
      sub_1C7C0A9C4(v0 + 16);
      sub_1C7C0A6B4(v22, v21, v20);
      v23 = 0;
      v3 = 0;
      v4 = 0;
      v5 = 0;
      LOBYTE(v6) = 0;
      v24 = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_1C7C7D794();

      v33 = 0xD00000000000001BLL;
      v34 = 0x80000001C7C9F670;
      v35 = v2;
      v36 = v31;
      v37 = v3;
      v38 = v4;
      v39 = v5;
      v40 = v6;
      v25 = JPKIXPCResponse.description.getter();
      MEMORY[0x1CCA6B380](v25);

      sub_1C7C0A9C4(v0 + 16);
      sub_1C7C0A6B4(v22, v21, v20);
      sub_1C7C18678(v2, v31, v3, v4, v5, v6);
      v3 = 0;
      v4 = 0;
      v5 = 0;
      LOBYTE(v6) = 0;
      v2 = v33;
      v23 = v34;
      v24 = 1;
    }
  }

  else
  {
    sub_1C7C0A9C4(v0 + 16);
    sub_1C7C0A6B4(v22, v21, v20);
    v24 = 1;
    v23 = v31;
  }

  v26 = *(v0 + 376);
  v27 = *(v0 + 344);
  *v27 = v2;
  *(v27 + 8) = v23;
  *(v27 + 16) = v3;
  *(v27 + 24) = v4;
  *(v27 + 32) = v5;
  *(v27 + 40) = v6;
  *(v27 + 41) = v24;

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1C7C52BA4()
{
  v30 = v0;
  v1 = *(v0 + 376);
  sub_1C7C0A9C4(v0 + 16);
  if (qword_1EC2621F0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 416);
  v3 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v3, qword_1EC265028);
  v4 = v2;
  v5 = sub_1C7C7D194();
  v6 = sub_1C7C7D584();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 416);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    v12 = *(v0 + 280);
    v13 = sub_1C7C7DB04();
    v15 = sub_1C7BE42F8(v13, v14, &v29);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1C7B9A000, v5, v6, "Unhandled XPC error : %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x1CCA6C990](v9, -1, -1);
    MEMORY[0x1CCA6C990](v8, -1, -1);
  }

  v16 = *(v0 + 416);
  v17 = *(v0 + 74);
  v19 = *(v0 + 392);
  v18 = *(v0 + 400);
  v20 = *(v0 + 344);
  swift_getErrorValue();
  v22 = *(v0 + 240);
  v21 = *(v0 + 248);
  v23 = *(v0 + 256);
  v24 = sub_1C7C7DB04();
  v26 = v25;
  sub_1C7C0A6B4(v19, v18, v17);

  *v20 = v24;
  *(v20 + 8) = v26;
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  *(v20 + 16) = 0;
  *(v20 + 40) = 257;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1C7C52DC4(uint64_t a1)
{
  v2[55] = v1;
  v2[56] = a1;
  v3 = swift_task_alloc();
  v2[57] = v3;
  *v3 = v2;
  v3[1] = sub_1C7C52E5C;

  return sub_1C7C5375C((v2 + 31));
}

uint64_t sub_1C7C52E5C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 456);
  v8 = *v3;
  v4[58] = a1;
  v4[59] = a2;
  v4[60] = v2;

  if (v2)
  {
    v6 = sub_1C7C533E0;
  }

  else
  {
    v6 = sub_1C7C52F74;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C7C52F74()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 440);
  v3 = sub_1C7C54488(*(v0 + 464), *(v0 + 472), (v0 + 296));
  *(v0 + 488) = v3;
  if (v1)
  {
    v4 = *(v0 + 448);
    sub_1C7BDF778(*(v0 + 464), *(v0 + 472));
    v5 = *(v0 + 328);
    v6 = *(v0 + 336);
    v7 = *(v0 + 312);
    *v4 = *(v0 + 296);
    *(v4 + 16) = v7;
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;
    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = v3;
    v11 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
    *(v0 + 496) = v11;
    v12 = v10;
    v13 = sub_1C7C7D2E4();
    *(v0 + 504) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265058, &qword_1C7C93F08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C7C8F930;
    *(v0 + 424) = 1096;
    sub_1C7C7D734();
    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = 1;
    sub_1C7C73208(inited);
    swift_setDeallocating();
    sub_1C7C54900(inited + 32);
    v15 = sub_1C7C7D244();
    *(v0 + 512) = v15;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 416;
    *(v0 + 24) = sub_1C7C5322C;
    v16 = swift_continuation_init();
    *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265060, qword_1C7C93F18);
    *(v0 + 184) = MEMORY[0x1E69E9820];
    *(v0 + 192) = 1107296256;
    *(v0 + 200) = sub_1C7C54618;
    *(v0 + 208) = &block_descriptor_2;
    *(v0 + 216) = v16;
    [v11 evaluateAccessControl:v12 aksOperation:v13 options:v15 reply:v0 + 184];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1C7C5322C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 520) = v2;
  if (v2)
  {
    v3 = sub_1C7C5341C;
  }

  else
  {
    v3 = sub_1C7C5333C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C7C5333C()
{
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[61];
  v4 = v0[58];
  v5 = v0[59];

  sub_1C7BDF778(v4, v5);
  v6 = v0[52];

  v7 = v0[1];
  v8 = v0[62];

  return v7(v8);
}

uint64_t sub_1C7C533E0()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 264);
  *v1 = *(v0 + 248);
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1C7C5341C()
{
  v41 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v4 = *(v0 + 488);
  swift_willThrow();

  if (qword_1EC2621F0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  v7 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v7, qword_1EC265028);
  sub_1C7BED654(v6, v5);
  v8 = sub_1C7C7D194();
  v9 = sub_1C7C7D584();
  sub_1C7BDF778(v6, v5);
  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v0 + 464);
    v10 = *(v0 + 472);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40[0] = v13;
    *v12 = 136315138;
    v14 = sub_1C7C7D034();
    v16 = sub_1C7BE42F8(v14, v15, v40);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1C7B9A000, v8, v9, "ACL is %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x1CCA6C990](v13, -1, -1);
    MEMORY[0x1CCA6C990](v12, -1, -1);
  }

  v17 = *(v0 + 520);
  v18 = v17;
  v19 = sub_1C7C7D194();
  v20 = sub_1C7C7D584();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 520);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40[0] = v23;
    *v22 = 136315138;
    swift_getErrorValue();
    v25 = *(v0 + 392);
    v24 = *(v0 + 400);
    v26 = *(v0 + 408);
    v27 = sub_1C7C7DB04();
    v29 = sub_1C7BE42F8(v27, v28, v40);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_1C7B9A000, v19, v20, "LAContext error %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x1CCA6C990](v23, -1, -1);
    MEMORY[0x1CCA6C990](v22, -1, -1);
  }

  v30 = *(v0 + 520);
  v31 = *(v0 + 488);
  v32 = *(v0 + 496);
  v34 = *(v0 + 464);
  v33 = *(v0 + 472);
  v35 = *(v0 + 448);
  v36 = sub_1C7C7CFC4();
  v37 = [v36 code];

  *v35 = v37;
  *(v35 + 8) = 0u;
  *(v35 + 24) = 0u;
  *(v35 + 40) = 2;
  *(v0 + 344) = v37;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 2;
  sub_1C7C0D560();
  swift_willThrowTypedImpl();

  sub_1C7BDF778(v34, v33);
  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1C7C5375C(uint64_t a1)
{
  *(v2 + 264) = v1;
  *(v2 + 272) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C7C5377C, 0, 0);
}

uint64_t sub_1C7C5377C()
{
  v1 = *(v0 + 264);
  v2 = *(v1 + 24);
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 24) = v2;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 3;
  v3 = qword_1EC2621F0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_1C7C7D1B4();
  *(v0 + 280) = __swift_project_value_buffer(v4, qword_1EC265028);
  v5 = sub_1C7C7D194();
  v6 = sub_1C7C7D564();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C7B9A000, v5, v6, "Sending getACL request", v7, 2u);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v8 = *(v0 + 264);

  v9 = *(v8 + 32);
  *(v0 + 288) = v9;
  v10 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v10;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);

  return MEMORY[0x1EEE6DFA0](sub_1C7C538EC, v9, 0);
}

uint64_t sub_1C7C538EC()
{
  v1 = *(v0 + 288);
  sub_1C7C17D7C((v0 + 80), (v0 + 144));
  *(v0 + 296) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1C7C53980, 0, 0);
}

uint64_t sub_1C7C53980()
{
  v80 = v0;
  v1 = v0 + 144;
  v2 = *(v0 + 144);
  v70 = v0 + 16;
  v3 = *(v0 + 280);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 184);
  sub_1C7C18550(v2, v5, v4, v7, v6, *(v0 + 184));
  v9 = v4;
  v10 = sub_1C7C7D194();
  v11 = sub_1C7C7D5A4();
  sub_1C7C18678(v2, v5, v9, v7, v6, v8);
  v68 = v2;
  v65 = v9;
  v71 = v0;
  v64 = v6;
  if (os_log_type_enabled(v10, v11))
  {
    v63 = v0 + 144;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v72 = v13;
    *v12 = 136315138;
    v74 = v2;
    v75 = v5;
    v76 = v9;
    v77 = v7;
    v78 = v6;
    v79 = v8;
    sub_1C7C18550(v2, v5, v9, v7, v6, v8);
    v14 = JPKIXPCResponse.description.getter();
    v16 = v15;
    sub_1C7C18678(v74, v5, v76, v7, v6, v8);
    v17 = sub_1C7BE42F8(v14, v16, &v72);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1C7B9A000, v10, v11, "Response %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v18 = v13;
    v0 = v71;
    MEMORY[0x1CCA6C990](v18, -1, -1);
    v19 = v12;
    v1 = v63;
    MEMORY[0x1CCA6C990](v19, -1, -1);
  }

  if (v8 >> 5 == 4)
  {
    sub_1C7C0A9C4(v70);
    v22 = *(v0 + 8);

    return v22(v68, v5);
  }

  else
  {
    if (v8 >> 5)
    {
      v74 = 0;
      v75 = 0xE000000000000000;
      sub_1C7C7D794();

      v72 = 0xD000000000000018;
      v73 = 0x80000001C7C9F720;
      v74 = v68;
      v75 = v5;
      v76 = v65;
      v77 = v7;
      v78 = v6;
      v79 = v8;
      v24 = JPKIXPCResponse.description.getter();
      MEMORY[0x1CCA6B380](v24);

      v26 = v72;
      v25 = v73;
      sub_1C7C0D560();
      v20 = swift_allocError();
      *v27 = v26;
      *(v27 + 8) = v25;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0;
      *(v27 + 16) = 0;
      *(v27 + 40) = 0;
      swift_willThrow();
      sub_1C7C18678(v68, v5, v65, v7, v64, v8);
    }

    else
    {
      sub_1C7C0D560();
      v20 = swift_allocError();
      *v21 = v68;
      *(v21 + 8) = v5;
      *(v21 + 16) = v65;
      *(v21 + 24) = v7;
      *(v21 + 32) = v64;
      *(v21 + 40) = v8;
      swift_willThrow();
    }

    *(v71 + 240) = v20;
    v28 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    v29 = swift_dynamicCast();
    v30 = *(v71 + 280);
    if (v29)
    {

      v31 = *(v71 + 80);
      v32 = *(v71 + 88);
      v33 = *(v71 + 96);
      v34 = *(v71 + 104);
      v35 = *(v71 + 112);
      v36 = *(v71 + 120);
      sub_1C7C18594(v31, v32, v33, v34, v35, v36);
      v37 = sub_1C7C7D194();
      v38 = sub_1C7C7D584();
      sub_1C7C186BC(v31, v32, v33, v34, v35, v36);
      v69 = v38;
      if (os_log_type_enabled(v37, v38))
      {
        buf = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v72 = v66;
        *buf = 136315138;
        v74 = v31;
        v75 = v32;
        v76 = v33;
        v77 = v34;
        v78 = v35;
        v79 = v36;
        v39 = JPKIInternalTypes.InternalError.localizedDescription.getter();
        v41 = sub_1C7BE42F8(v39, v40, &v72);

        *(buf + 4) = v41;
        _os_log_impl(&dword_1C7B9A000, v37, v69, "Internal error: %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v66);
        MEMORY[0x1CCA6C990](v66, -1, -1);
        MEMORY[0x1CCA6C990](buf, -1, -1);
      }

      v61 = *(v71 + 272);
      *v61 = v31;
      *(v61 + 8) = v32;
      *(v61 + 16) = v33;
      *(v61 + 24) = v34;
      *(v61 + 32) = v35;
      *(v61 + 40) = v36;
      *(v71 + 144) = v31;
      *(v71 + 152) = v32;
      *(v71 + 160) = v33;
      *(v71 + 168) = v34;
      *(v71 + 176) = v35;
      *(v71 + 184) = v36;
      sub_1C7C18594(v31, v32, v33, v34, v35, v36);
      sub_1C7C0D560();
      swift_willThrowTypedImpl();
      sub_1C7C0A9C4(v70);
      sub_1C7C186BC(v31, v32, v33, v34, v35, v36);
      v60 = *(v71 + 240);
    }

    else
    {

      v42 = v20;
      v43 = sub_1C7C7D194();
      v44 = sub_1C7C7D584();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v74 = v46;
        *v45 = 136315138;
        swift_getErrorValue();
        v48 = *(v71 + 216);
        v47 = *(v71 + 224);
        v49 = *(v71 + 232);
        v50 = sub_1C7C7DB04();
        v52 = v20;
        v53 = sub_1C7BE42F8(v50, v51, &v74);

        *(v45 + 4) = v53;
        v20 = v52;
        _os_log_impl(&dword_1C7B9A000, v43, v44, "Unhandled XPC error : %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        MEMORY[0x1CCA6C990](v46, -1, -1);
        MEMORY[0x1CCA6C990](v45, -1, -1);
      }

      v54 = *(v71 + 272);
      swift_getErrorValue();
      v56 = *(v71 + 192);
      v55 = *(v71 + 200);
      v57 = *(v71 + 208);
      v58 = sub_1C7C7DB04();
      *v54 = v58;
      *(v54 + 8) = v59;
      *(v54 + 24) = 0;
      *(v54 + 32) = 0;
      *(v54 + 16) = 0;
      *(v54 + 40) = 1;
      *(v71 + 80) = v58;
      *(v71 + 88) = v59;
      *(v71 + 104) = 0;
      *(v71 + 112) = 0;
      *(v71 + 96) = 0;
      *(v71 + 120) = 1;
      sub_1C7C0D560();
      swift_willThrowTypedImpl();
      sub_1C7C0A9C4(v70);
      v60 = v20;
    }

    v62 = *(v71 + 8);

    return v62();
  }
}

uint64_t sub_1C7C54070()
{
  v43 = v0;
  v1 = *(v0 + 296);
  *(v0 + 240) = v1;
  v2 = v0 + 16;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 280);
  if (v4)
  {

    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    sub_1C7C18594(v6, v7, v8, v9, v10, v11);
    v12 = sub_1C7C7D194();
    v13 = sub_1C7C7D584();
    sub_1C7C186BC(v6, v7, v8, v9, v10, v11);
    if (os_log_type_enabled(v12, v13))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v40 = v38;
      v41[0] = v6;
      *v37 = 136315138;
      v41[1] = v7;
      v41[2] = v8;
      v41[3] = v9;
      v41[4] = v10;
      v42 = v11;
      v14 = JPKIInternalTypes.InternalError.localizedDescription.getter();
      v16 = sub_1C7BE42F8(v14, v15, &v40);

      *(v37 + 4) = v16;
      _os_log_impl(&dword_1C7B9A000, v12, v13, "Internal error: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      v2 = v0 + 16;
      MEMORY[0x1CCA6C990](v38, -1, -1);
      MEMORY[0x1CCA6C990](v37, -1, -1);
    }

    else
    {
    }

    v34 = *(v0 + 272);
    *v34 = v6;
    *(v34 + 8) = v7;
    *(v34 + 16) = v8;
    *(v34 + 24) = v9;
    *(v34 + 32) = v10;
    *(v34 + 40) = v11;
    *(v0 + 144) = v6;
    *(v0 + 152) = v7;
    *(v0 + 160) = v8;
    *(v0 + 168) = v9;
    *(v0 + 176) = v10;
    *(v0 + 184) = v11;
    sub_1C7C18594(v6, v7, v8, v9, v10, v11);
    sub_1C7C0D560();
    swift_willThrowTypedImpl();
    sub_1C7C0A9C4(v2);
    sub_1C7C186BC(v6, v7, v8, v9, v10, v11);
    v33 = *(v0 + 240);
  }

  else
  {

    v17 = v1;
    v18 = sub_1C7C7D194();
    v19 = sub_1C7C7D584();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41[0] = v39;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = *(v0 + 216);
      v21 = *(v0 + 224);
      v23 = *(v0 + 232);
      v24 = sub_1C7C7DB04();
      v26 = sub_1C7BE42F8(v24, v25, v41);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1C7B9A000, v18, v19, "Unhandled XPC error : %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x1CCA6C990](v39, -1, -1);
      MEMORY[0x1CCA6C990](v20, -1, -1);
    }

    v27 = *(v0 + 272);
    swift_getErrorValue();
    v29 = *(v0 + 192);
    v28 = *(v0 + 200);
    v30 = *(v0 + 208);
    v31 = sub_1C7C7DB04();
    *v27 = v31;
    *(v27 + 8) = v32;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0;
    *(v27 + 16) = 0;
    *(v27 + 40) = 1;
    *(v0 + 80) = v31;
    *(v0 + 88) = v32;
    *(v0 + 104) = 0;
    *(v0 + 112) = 0;
    *(v0 + 96) = 0;
    *(v0 + 120) = 1;
    sub_1C7C0D560();
    swift_willThrowTypedImpl();
    sub_1C7C0A9C4(v0 + 16);
    v33 = v1;
  }

  v35 = *(v0 + 8);

  return v35();
}

char *sub_1C7C54488(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_1C7C7D024();
  v5 = [objc_opt_self() recordFromData_];

  if (!v5 || (v6 = [v5 propertyList], v5, !v6) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265068, &qword_1C7C93F30), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265070, &qword_1C7C93F38), (swift_dynamicCast() & 1) == 0))
  {
    *a3 = 1;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    a3[40] = 14;
    sub_1C7C0D560();
    swift_willThrowTypedImpl();
    return a3;
  }

  result = SecAccessControlCreate();
  if (result)
  {
    a3 = result;
    v8 = sub_1C7C7D244();

    SecAccessControlSetConstraints();

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7C54618(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      v9 = sub_1C7C7D254();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t JPKIInternalClient.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t JPKIInternalClient.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1C7C5477C()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC265028);
  __swift_project_value_buffer(v0, qword_1EC265028);
  return sub_1C7C7D1A4();
}

uint64_t sub_1C7C547FC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, char a7)
{
  if (a7)
  {
    return sub_1C7C186BC(result, a2, a3, a4, a5, a6);
  }

  else
  {
  }
}

unint64_t sub_1C7C54858()
{
  result = qword_1EC265048;
  if (!qword_1EC265048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265048);
  }

  return result;
}

unint64_t sub_1C7C548AC()
{
  result = qword_1EC265050;
  if (!qword_1EC265050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265050);
  }

  return result;
}

uint64_t sub_1C7C54900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2657B0, &qword_1C7C93F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C7C54984(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v3 = [v1 createSessionHandoffToken_];
  v4 = v18[0];
  if (v3)
  {
    a1 = sub_1C7C7D054();
  }

  else
  {
    v5 = v4;
    v6 = sub_1C7C7CFD4();

    swift_willThrow();
    if (qword_1EC2621F8 != -1)
    {
      swift_once();
    }

    v7 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v7, qword_1EC265078);
    v8 = v6;
    v9 = sub_1C7C7D194();
    v10 = sub_1C7C7D584();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_1C7BE42F8(0xD000000000000014, 0x80000001C7C9F760, v18);
      *(v11 + 12) = 2112;
      v14 = v6;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      *v12 = v15;
      _os_log_impl(&dword_1C7B9A000, v9, v10, "%s: %@", v11, 0x16u);
      sub_1C7C2136C(v12);
      MEMORY[0x1CCA6C990](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x1CCA6C990](v13, -1, -1);
      MEMORY[0x1CCA6C990](v11, -1, -1);
    }

    *a1 = 0xD00000000000001BLL;
    *(a1 + 8) = 0x80000001C7C9F740;
    *(a1 + 16) = 0;
    v18[0] = 0xD00000000000001BLL;
    v18[1] = 0x80000001C7C9F740;
    v19 = 0;
    sub_1C7BEADA0();
    swift_willThrowTypedImpl();
  }

  v16 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1C7C54C0C()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC265078);
  __swift_project_value_buffer(v0, qword_1EC265078);
  return sub_1C7C7D1A4();
}

void sub_1C7C54C88(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1C7C54CF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v5 = sub_1C7C32B54();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v10[4] = sub_1C7C562D0;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C7C54C88;
  v10[3] = &block_descriptor_27;
  v7 = _Block_copy(v10);

  v8 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v7);

  sub_1C7C7D664();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2646E0, &qword_1C7C90AB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
  }

  a3(&v11, a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C7C54EC4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
  swift_allocError();
  *v2 = a1;
  v3 = a1;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1C7C54F40()
{
  v0 = type metadata accessor for CredentialInternalClient();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  if (qword_1EC2621D0 != -1)
  {
    swift_once();
  }

  *(v3 + 16) = qword_1EC288330;

  result = sub_1C7C7D1A4();
  qword_1EC265090 = v3;
  return result;
}

uint64_t static CredentialInternalClient.shared.getter()
{
  if (qword_1EC262200 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C7C550AC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v1[19];
  v1[2] = v2;
  v1[7] = v1 + 16;
  v1[3] = sub_1C7C553C4;
  v5 = swift_continuation_init();
  v6 = sub_1C7C32B54();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v1[14] = sub_1C7C55504;
  v1[15] = v7;
  v8 = MEMORY[0x1E69E9820];
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1C7C54C88;
  v1[13] = &block_descriptor_3;
  v9 = _Block_copy(v1 + 10);
  v10 = v1[15];

  v11 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);

  sub_1C7C7D664();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2646E0, &qword_1C7C90AB0);
  if (swift_dynamicCast())
  {
    v12 = v1[17];
    if (v12)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v5;
      v1[14] = sub_1C7C55604;
      v1[15] = v13;
      v1[10] = v8;
      v1[11] = 1107296256;
      v1[12] = sub_1C7C5560C;
      v1[13] = &block_descriptor_7;
      v14 = _Block_copy(v1 + 10);
      v15 = v1[15];
      swift_unknownObjectRetain();

      [v12 listCredentialsInternalWithReply_];
      _Block_release(v14);
      swift_unknownObjectRelease();
      v16 = v1[17];
      goto LABEL_6;
    }
  }

  else
  {
    v1[17] = 0;
  }

  sub_1C7C33390();
  v17 = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
  swift_allocError();
  *v18 = v17;
  swift_continuation_throwingResumeWithError();
  v19 = v1[17];
LABEL_6:
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1C7C553C4()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 128);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C7C55538(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    **(*(a3 + 64) + 40) = a1;

    a1 = a3;

    return MEMORY[0x1EEE6DEE0](a1);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEE0](a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
  swift_allocError();
  *v5 = a2;
  v6 = a2;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1C7C5560C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for CredentialInternal();
    v4 = sub_1C7C7D424();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t CredentialInternalClient.deleteCredental(_:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C7C556C0, 0, 0);
}

uint64_t sub_1C7C556C0()
{
  v1 = v0[10];
  v0[12] = *(v0[11] + 16);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C7C5573C, 0, 0);
}

uint64_t sub_1C7C5573C()
{
  v2 = v0[12];
  v1 = v0[13];
  v0[2] = v0;
  v0[3] = sub_1C7C557F4;
  v3 = swift_continuation_init();
  sub_1C7C54CF0(v3, v2, sub_1C7C55B20);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C7C557F4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 112) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1C7C55944, 0, 0);
  }

  else
  {
    v4 = *(v1 + 104);

    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_1C7C55944()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

void sub_1C7C559A8(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
    swift_unknownObjectRetain();
    v5 = sub_1C7C7D0C4();
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v10[4] = sub_1C7C56294;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1C7C55B28;
    v10[3] = &block_descriptor_33;
    v7 = _Block_copy(v10);

    [v3 deleteCredentialWithUuid:v5 reply:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C7C33390();
    v8 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    swift_allocError();
    *v9 = v8;

    swift_continuation_throwingResumeWithError();
  }
}

void sub_1C7C55B28(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t CredentialInternalClient.deleteApplication(_:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C7C55BB8, 0, 0);
}

uint64_t sub_1C7C55BB8()
{
  v1 = v0[11];
  v0[13] = *(v0[12] + 16);

  return MEMORY[0x1EEE6DFA0](sub_1C7C55C2C, 0, 0);
}

uint64_t sub_1C7C55C2C()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v0[2] = v0;
  v0[3] = sub_1C7C55CE0;
  v4 = swift_continuation_init();
  sub_1C7C331A0(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C7C55CE0()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

void sub_1C7C55DE8(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
    swift_unknownObjectRetain();
    v5 = sub_1C7C7D2E4();
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v10[4] = sub_1C7C562D4;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1C7C55B28;
    v10[3] = &block_descriptor_21;
    v7 = _Block_copy(v10);

    [v3 deleteApplicationWithIdentifier:v5 reply:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C7C33390();
    v8 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    swift_allocError();
    *v9 = v8;

    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_1C7C55F6C(void *a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2646B0, &unk_1C7C90AA0);
    swift_allocError();
    *v3 = a1;
    v4 = a1;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return MEMORY[0x1EEE6DEE0](a2);
  }
}

uint64_t CredentialInternalClient.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC9SEService24CredentialInternalClient_logger;
  v3 = sub_1C7C7D1B4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t CredentialInternalClient.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC9SEService24CredentialInternalClient_logger;
  v3 = sub_1C7C7D1B4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t type metadata accessor for CredentialInternalClient()
{
  result = qword_1EDCF5488;
  if (!qword_1EDCF5488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7C56170()
{
  result = sub_1C7C7D1B4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C7C56240()
{
  result = qword_1EC265098;
  if (!qword_1EC265098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265098);
  }

  return result;
}

uint64_t sub_1C7C562DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
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
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1C7C56334@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t SESNotifyEventPublisher.Notification.hashValue.getter()
{
  sub_1C7C7DB64();
  MEMORY[0x1CCA6BB80](0);
  return sub_1C7C7DB84();
}

uint64_t sub_1C7C56444(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  sub_1C7C5649C(&unk_1EC262250, v1);
  return swift_endAccess();
}

void sub_1C7C5649C(int *a1, uint64_t a2)
{
  if (notify_is_valid_token(*a1))
  {
    goto LABEL_8;
  }

  v6 = notify_register_check("com.apple.seserviced.secure-element-credential-presence", a1);
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_28;
  }

  if (!v6)
  {
LABEL_8:
    v13 = notify_set_state(*a1, a2);
    if ((v13 & 0x80000000) == 0)
    {
      v2 = v13;
      if (v13)
      {
        if (qword_1EC262208 == -1)
        {
LABEL_11:
          v14 = sub_1C7C7D1B4();
          __swift_project_value_buffer(v14, qword_1EC2650A0);
          oslog = sub_1C7C7D194();
          v15 = sub_1C7C7D584();
          if (!os_log_type_enabled(oslog, v15))
          {
            goto LABEL_24;
          }

          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 136315394;
          v34 = v17;
          MEMORY[0x1CCA6B380](0xD000000000000037, 0x80000001C7C9F820);
          MEMORY[0x1CCA6B380](0x6574617453203A20, 0xE900000000000020);
          sub_1C7C7D834();
          v18 = sub_1C7BE42F8(0, 0xE000000000000000, &v34);

          *(v16 + 4) = v18;
          *(v16 + 12) = 1024;
          *(v16 + 14) = v2;
          v19 = "Unable to set state for %s with status %d";
          v20 = v15;
          v21 = oslog;
          v22 = v16;
          v23 = 18;
LABEL_13:
          _os_log_impl(&dword_1C7B9A000, v21, v20, v19, v22, v23);
          __swift_destroy_boxed_opaque_existential_0Tm(v17);
          MEMORY[0x1CCA6C990](v17, -1, -1);
          v12 = v16;
          goto LABEL_19;
        }

LABEL_29:
        swift_once();
        goto LABEL_11;
      }

      v24 = notify_post("com.apple.seserviced.secure-element-credential-presence");
      if ((v24 & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v3 = v24;
        if (!v24)
        {
          if (qword_1EC262208 != -1)
          {
            swift_once();
          }

          v30 = sub_1C7C7D1B4();
          __swift_project_value_buffer(v30, qword_1EC2650A0);
          oslog = sub_1C7C7D194();
          v31 = sub_1C7C7D564();
          if (!os_log_type_enabled(oslog, v31))
          {
            goto LABEL_24;
          }

          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 136315138;
          v34 = v17;
          MEMORY[0x1CCA6B380](0xD000000000000037, 0x80000001C7C9F820);
          MEMORY[0x1CCA6B380](0x6574617453203A20, 0xE900000000000020);
          sub_1C7C7D834();
          v32 = sub_1C7BE42F8(0, 0xE000000000000000, &v34);

          *(v16 + 4) = v32;
          v19 = "Posted %s";
          v20 = v31;
          v21 = oslog;
          v22 = v16;
          v23 = 12;
          goto LABEL_13;
        }

        if (qword_1EC262208 == -1)
        {
LABEL_17:
          v25 = sub_1C7C7D1B4();
          __swift_project_value_buffer(v25, qword_1EC2650A0);
          oslog = sub_1C7C7D194();
          v26 = sub_1C7C7D584();
          if (os_log_type_enabled(oslog, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *v27 = 136315394;
            v34 = v28;
            MEMORY[0x1CCA6B380](0xD000000000000037, 0x80000001C7C9F820);
            MEMORY[0x1CCA6B380](0x6574617453203A20, 0xE900000000000020);
            sub_1C7C7D834();
            v29 = sub_1C7BE42F8(0, 0xE000000000000000, &v34);

            *(v27 + 4) = v29;
            *(v27 + 12) = 1024;
            *(v27 + 14) = v3;
            _os_log_impl(&dword_1C7B9A000, oslog, v26, "Unable to post %s with status %d", v27, 0x12u);
            __swift_destroy_boxed_opaque_existential_0Tm(v28);
            MEMORY[0x1CCA6C990](v28, -1, -1);
            v12 = v27;
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      swift_once();
      goto LABEL_17;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (qword_1EC262208 != -1)
  {
    swift_once();
  }

  v7 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v7, qword_1EC2650A0);
  oslog = sub_1C7C7D194();
  v8 = sub_1C7C7D584();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136315138;
    v34 = v10;
    MEMORY[0x1CCA6B380](0xD000000000000037, 0x80000001C7C9F820);
    MEMORY[0x1CCA6B380](0x6574617453203A20, 0xE900000000000020);
    sub_1C7C7D834();
    v11 = sub_1C7BE42F8(0, 0xE000000000000000, &v34);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1C7B9A000, oslog, v8, "Unable to register %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1CCA6C990](v10, -1, -1);
    v12 = v9;
LABEL_19:
    MEMORY[0x1CCA6C990](v12, -1, -1);

    return;
  }

LABEL_24:
}

uint64_t sub_1C7C56B0C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1C7C56B64(&unk_1EC262250, a1);
  return swift_endAccess();
}

void sub_1C7C56B64(int *a1@<X0>, uint64_t a2@<X8>)
{
  v33[3] = *MEMORY[0x1E69E9840];
  if (!notify_is_valid_token(*a1))
  {
    v5 = notify_register_check("com.apple.seserviced.secure-element-credential-presence", a1);
    if ((v5 & 0x80000000) != 0)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v2 = v5;
    if (v5)
    {
      if (qword_1EC262208 != -1)
      {
        swift_once();
      }

      v6 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v6, qword_1EC2650A0);
      v7 = sub_1C7C7D194();
      v8 = sub_1C7C7D584();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_14;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1C7BE42F8(0xD000000000000037, 0x80000001C7C9F820, v33);
      *(v9 + 12) = 1024;
      *(v9 + 14) = v2;
      _os_log_impl(&dword_1C7B9A000, v7, v8, "Unable to register for %s with status %d", v9, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x1CCA6C990](v10, -1, -1);
      v11 = v9;
      goto LABEL_13;
    }
  }

  v32 = 0;
  state = notify_get_state(*a1, &v32);
  if ((state & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v2 = state;
  if (state)
  {
    if (qword_1EC262208 == -1)
    {
LABEL_11:
      v13 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v13, qword_1EC2650A0);
      v7 = sub_1C7C7D194();
      v14 = sub_1C7C7D584();
      if (!os_log_type_enabled(v7, v14))
      {
LABEL_14:

        v17 = 0;
        v18 = 1;
        goto LABEL_26;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33[0] = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1C7BE42F8(0xD000000000000037, 0x80000001C7C9F820, v33);
      *(v15 + 12) = 1024;
      *(v15 + 14) = v2;
      _os_log_impl(&dword_1C7B9A000, v7, v14, "Unable to get state for %s with status %d", v15, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x1CCA6C990](v16, -1, -1);
      v11 = v15;
LABEL_13:
      MEMORY[0x1CCA6C990](v11, -1, -1);
      goto LABEL_14;
    }

LABEL_29:
    swift_once();
    goto LABEL_11;
  }

  v19 = notify_cancel(*a1);
  if ((v19 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v20 = v19;
    if (v19)
    {
      if (qword_1EC262208 != -1)
      {
        swift_once();
      }

      v21 = sub_1C7C7D1B4();
      __swift_project_value_buffer(v21, qword_1EC2650A0);
      v22 = sub_1C7C7D194();
      v23 = sub_1C7C7D584();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v33[0] = v25;
        *v24 = 67109378;
        *(v24 + 4) = v20;
        *(v24 + 8) = 2080;
        *(v24 + 10) = sub_1C7BE42F8(0xD000000000000037, 0x80000001C7C9F820, v33);
        _os_log_impl(&dword_1C7B9A000, v22, v23, "Unexpected status %d while canceling token for %s", v24, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        MEMORY[0x1CCA6C990](v25, -1, -1);
        MEMORY[0x1CCA6C990](v24, -1, -1);
      }
    }

    if (qword_1EC262208 == -1)
    {
      goto LABEL_23;
    }
  }

  swift_once();
LABEL_23:
  v26 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v26, qword_1EC2650A0);
  v27 = sub_1C7C7D194();
  v28 = sub_1C7C7D564();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33[0] = v30;
    *v29 = 134218242;
    swift_beginAccess();
    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_1C7BE42F8(0xD000000000000037, 0x80000001C7C9F820, v33);
    _os_log_impl(&dword_1C7B9A000, v27, v28, "Got state %llu for %s", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x1CCA6C990](v30, -1, -1);
    MEMORY[0x1CCA6C990](v29, -1, -1);
  }

  swift_beginAccess();
  v18 = 0;
  v17 = v32;
LABEL_26:
  *a2 = v17;
  *(a2 + 8) = v18;
  v31 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1C7C570EC()
{
  result = qword_1EC2650B8;
  if (!qword_1EC2650B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2650B8);
  }

  return result;
}

unint64_t sub_1C7C57144()
{
  result = qword_1EC2650C0;
  if (!qword_1EC2650C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2650C0);
  }

  return result;
}

unint64_t sub_1C7C5719C()
{
  result = qword_1EC2650C8;
  if (!qword_1EC2650C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2650C8);
  }

  return result;
}

unint64_t sub_1C7C571F4()
{
  result = qword_1EC2650D0;
  if (!qword_1EC2650D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2650D0);
  }

  return result;
}

unint64_t sub_1C7C5724C()
{
  result = qword_1EC2650D8;
  if (!qword_1EC2650D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2650D8);
  }

  return result;
}

uint64_t sub_1C7C57334()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC2650A0);
  __swift_project_value_buffer(v0, qword_1EC2650A0);
  return sub_1C7C7D1A4();
}

uint64_t ESIMProfileInfo.iccid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid);
  v2 = *(v0 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid + 8);

  return v1;
}

id ESIMProfileInfo.__allocating_init(iccid:exactSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id ESIMProfileInfo.init(iccid:exactSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t ESIMProfileInfo.description.getter()
{
  sub_1C7C7D794();

  v2 = *(v0 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid);
  v1 = *(v0 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid + 8);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid + 8);
  }

  else
  {
    v1 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1CCA6B380](v2, v1);

  MEMORY[0x1CCA6B380](32, 0xE100000000000000);
  v7 = *(v0 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize);
  v5 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v5);

  return 0xD000000000000011;
}

uint64_t static ESIMProfileInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC2650E0 = a1;
  return result;
}

Swift::Void __swiftcall ESIMProfileInfo.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid);
  v4 = *(v1 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid + 8);
  v5 = sub_1C7C7D2E4();
  v6 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize);
  v8 = sub_1C7C7D2E4();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
}

id ESIMProfileInfo.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  sub_1C7C142A8();
  v5 = sub_1C7C7D5E4();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1C7C7D304();
    v9 = v8;

    v10 = &v4[OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid];
    *v10 = v7;
    v10[1] = v9;
    v11 = sub_1C7C7D2E4();
    v12 = [a1 decodeIntegerForKey_];

    *&v4[OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize] = v12;
    v15.receiver = v4;
    v15.super_class = v2;
    v13 = objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v13;
}

id ESIMProfileInfo.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_1C7C142A8();
  v5 = sub_1C7C7D5E4();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1C7C7D304();
    v9 = v8;

    v10 = &v2[OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid];
    *v10 = v7;
    v10[1] = v9;
    v11 = sub_1C7C7D2E4();
    v12 = [a1 decodeIntegerForKey_];

    *&v2[OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize] = v12;
    v15.receiver = v2;
    v15.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v13;
}

id ESIMProfileInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C7C57C48()
{
  if (*v0)
  {
    result = 0x7A69537463617865;
  }

  else
  {
    result = 0x6469636369;
  }

  *v0;
  return result;
}

uint64_t sub_1C7C57C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6469636369 && a2 == 0xE500000000000000;
  if (v6 || (sub_1C7C7DAA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7A69537463617865 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C7C7DAA4();

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

uint64_t sub_1C7C57D64(uint64_t a1)
{
  v2 = sub_1C7C57FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C57DA0(uint64_t a1)
{
  v2 = sub_1C7C57FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ESIMProfileInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ESIMProfileInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265100, &qword_1C7C94348);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C57FBC();
  sub_1C7C7DBA4();
  v11 = *(v3 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid);
  v12 = *(v3 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid + 8);
  v15[15] = 0;
  sub_1C7C7DA14();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize);
    v15[14] = 1;
    sub_1C7C7DA34();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C7C57FBC()
{
  result = qword_1EC265108;
  if (!qword_1EC265108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265108);
  }

  return result;
}

id ESIMProfileInfo.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265110, &qword_1C7C94350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C57FBC();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = 0;
    v11 = sub_1C7C7D984();
    v13 = &v1[OBJC_IVAR____TtC9SEService15ESIMProfileInfo_iccid];
    *v13 = v11;
    v13[1] = v14;
    v18 = 1;
    *&v1[OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize] = sub_1C7C7D9A4();
    v17.receiver = v1;
    v17.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

id sub_1C7C5827C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ESIMProfileInfo.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1C7C58390()
{
  result = qword_1EC265120;
  if (!qword_1EC265120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265120);
  }

  return result;
}

unint64_t sub_1C7C583E8()
{
  result = qword_1EC265128;
  if (!qword_1EC265128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265128);
  }

  return result;
}

unint64_t sub_1C7C58440()
{
  result = qword_1EC265130;
  if (!qword_1EC265130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265130);
  }

  return result;
}

id MemoryUsage.__allocating_init(pHeap:cor:cod:usedIndices:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap] = a1;
  *&v9[OBJC_IVAR____TtC9SEService11MemoryUsage_cor] = a2;
  *&v9[OBJC_IVAR____TtC9SEService11MemoryUsage_cod] = a3;
  *&v9[OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

void SERDataSource.init(credentialSizes:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265180, &unk_1C7C944F0);
  v2 = sub_1C7C7D8F4();
  v3 = v2;
  v4 = 0;
  v44 = a1;
  v40 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v42 = v2 + 64;
  v43 = v2;
  v41 = v8;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v45 = (v7 - 1) & v7;
LABEL_10:
      v46 = v9 | (v4 << 6);
      v12 = *(v44 + 56);
      v13 = (*(v44 + 48) + 16 * v46);
      v14 = v13[1];
      v51 = *v13;
      v15 = *(v12 + 8 * v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC264498, &qword_1C7C90600);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1C7C8F930;
      v17 = *&v15[OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID + 8];
      *(v16 + 32) = *&v15[OBJC_IVAR____TtC9SEService17SERCredentialInfo_packageAID];
      *(v16 + 40) = v17;
      v18 = *&v15[OBJC_IVAR____TtC9SEService17SERCredentialInfo_containerSize];
      v19 = type metadata accessor for MemoryUsage();
      v20 = objc_allocWithZone(v19);
      *&v20[OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap] = 0;
      *&v20[OBJC_IVAR____TtC9SEService11MemoryUsage_cor] = 0;
      *&v20[OBJC_IVAR____TtC9SEService11MemoryUsage_cod] = 0;
      *&v20[OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices] = 0;
      v50.receiver = v20;
      v50.super_class = v19;

      v21 = v15;

      v22 = v18;
      v23 = objc_msgSendSuper2(&v50, sel_init);
      v24 = *&v21[OBJC_IVAR____TtC9SEService17SERCredentialInfo_requiredMemoryForCredential];
      v25 = objc_allocWithZone(v19);
      *&v25[OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap] = 0;
      *&v25[OBJC_IVAR____TtC9SEService11MemoryUsage_cor] = 0;
      *&v25[OBJC_IVAR____TtC9SEService11MemoryUsage_cod] = 0;
      *&v25[OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices] = 0;
      v49.receiver = v25;
      v49.super_class = v19;
      v26 = v24;
      v27 = objc_msgSendSuper2(&v49, sel_init);
      v28 = type metadata accessor for AppletMemoryInfo();
      v29 = objc_allocWithZone(v28);
      *&v29[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_pids] = v16;
      *&v29[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_packageMemory] = v22;
      *&v29[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_containerMemory] = v23;
      *&v29[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_selectableMemory] = v26;
      *&v29[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_personalizedMemory] = v27;
      *&v29[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_policy] = 0;
      v48.receiver = v29;
      v48.super_class = v28;
      v30 = v22;
      v31 = v26;
      v32 = v23;
      v33 = v27;
      v34 = objc_msgSendSuper2(&v48, sel_init);

      v3 = v43;
      *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v35 = (v43[6] + 16 * v46);
      *v35 = v51;
      v35[1] = v14;
      *(v43[7] + 8 * v46) = v34;
      v36 = v43[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        break;
      }

      v43[2] = v38;
      v8 = v41;
      v7 = v45;
      if (!v45)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {

        *&v39[OBJC_IVAR____TtC9SEService13SERDataSource_credentialSizes] = v3;
        v47.receiver = v39;
        v47.super_class = type metadata accessor for SERDataSource();
        objc_msgSendSuper2(&v47, sel_init);
        return;
      }

      v11 = *(v40 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v45 = (v11 - 1) & v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_1C7C58938(uint64_t a1, uint64_t a2)
{
  result = sub_1C7C5C654(a1, a2);
  if (!v2)
  {
    v4 = result;
    v5 = result;
    return v4;
  }

  return result;
}

uint64_t sub_1C7C58ABC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SEService13SERDataSource_credentialSizes);
  type metadata accessor for AppletMemoryInfo();

  return sub_1C7C7D264();
}

uint64_t sub_1C7C58B20(void *a1)
{
  v3 = sub_1C7C7CEA4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1C7C7CE94();
  v12 = *(v1 + OBJC_IVAR____TtC9SEService13SERDataSource_credentialSizes);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2651D0, &qword_1C7C94500);
  sub_1C7C5C79C();
  v6 = sub_1C7C7CE84();
  v8 = v7;

  v9 = sub_1C7C7D024();
  v10 = sub_1C7C7D2E4();
  [a1 encodeObject:v9 forKey:v10];

  sub_1C7BDF778(v6, v8);
}

id SERDataSource.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1C7BED6A8(0, &qword_1EC262ED0, 0x1E695DEF0);
  v4 = sub_1C7C7D5E4();
  if (v4)
  {
    v5 = v4;
    sub_1C7C7D044();
  }

  if (qword_1EC262210 != -1)
  {
    swift_once();
  }

  v6 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v6, qword_1EC265148);
  v7 = sub_1C7C7D194();
  v8 = sub_1C7C7D584();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C7B9A000, v7, v8, "No Credential Sizes available for snapshot", v9, 2u);
    MEMORY[0x1CCA6C990](v9, -1, -1);
  }

  *&v2[OBJC_IVAR____TtC9SEService13SERDataSource_credentialSizes] = sub_1C7C73324(MEMORY[0x1E69E7CC0]);
  v12.receiver = v2;
  v12.super_class = type metadata accessor for SERDataSource();
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

uint64_t sub_1C7C592BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69746E6564657263 && a2 == 0xEF73657A69536C61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C5934C(uint64_t a1)
{
  v2 = sub_1C7C5C914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C59388(uint64_t a1)
{
  v2 = sub_1C7C5C914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C593EC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265200, &qword_1C7C94508);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C5C914();
  sub_1C7C7DBA4();
  v11[1] = *(v2 + OBJC_IVAR____TtC9SEService13SERDataSource_credentialSizes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2651D0, &qword_1C7C94500);
  sub_1C7C5C79C();
  sub_1C7C7DA44();
  return (*(v5 + 8))(v8, v4);
}

void *SERDataSource.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265210, &qword_1C7C94510);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C5C914();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for SERDataSource();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2651D0, &qword_1C7C94500);
    sub_1C7C5C858();
    sub_1C7C7D9B4();
    *&v3[OBJC_IVAR____TtC9SEService13SERDataSource_credentialSizes] = v15;
    v13 = type metadata accessor for SERDataSource();
    v14.receiver = v3;
    v14.super_class = v13;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v11;
}

unint64_t TransientMemoryPolicy.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C7C59920()
{
  v1 = v0;
  sub_1C7C7D794();
  MEMORY[0x1CCA6B380](0xD000000000000011, 0x80000001C7C9F940);
  v2 = [*(v0 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_packageMemory) description];
  v3 = sub_1C7C7D304();
  v5 = v4;

  MEMORY[0x1CCA6B380](v3, v5);

  MEMORY[0x1CCA6B380](0xD000000000000013, 0x80000001C7C9F960);
  v6 = [*(v1 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_containerMemory) description];
  v7 = sub_1C7C7D304();
  v9 = v8;

  MEMORY[0x1CCA6B380](v7, v9);

  MEMORY[0x1CCA6B380](0xD000000000000014, 0x80000001C7C9F980);
  v10 = [*(v1 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_selectableMemory) description];
  v11 = sub_1C7C7D304();
  v13 = v12;

  MEMORY[0x1CCA6B380](v11, v13);

  MEMORY[0x1CCA6B380](0xD000000000000016, 0x80000001C7C9F9A0);
  v14 = [*(v1 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_personalizedMemory) description];
  v15 = sub_1C7C7D304();
  v17 = v16;

  MEMORY[0x1CCA6B380](v15, v17);

  MEMORY[0x1CCA6B380](0x3A7963696C6F500ALL, 0xE800000000000000);
  v19 = *(v1 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_policy);
  sub_1C7C7D834();
  MEMORY[0x1CCA6B380](10, 0xE100000000000000);
  return 0;
}

uint64_t static AppletMemoryInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC265140 = a1;
  return result;
}

void sub_1C7C59CE8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_pids);
  v5 = *(v4 + 16);
  if (v5)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C7C7D804();
    v6 = (v4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_1C7C7D2E4();

      sub_1C7C7D7E4();
      v9 = *(v22 + 16);
      sub_1C7C7D814();
      sub_1C7C7D824();
      sub_1C7C7D7F4();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  sub_1C7BED6A8(0, &qword_1EC263470, 0x1E696AEC0);
  v10 = sub_1C7C7D414();

  v11 = sub_1C7C7D2E4();
  [a1 encodeObject:v10 forKey:v11];

  v12 = *(v2 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_packageMemory);
  v13 = sub_1C7C7D2E4();
  [a1 encodeObject:v12 forKey:v13];

  v14 = *(v2 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_containerMemory);
  v15 = sub_1C7C7D2E4();
  [a1 encodeObject:v14 forKey:v15];

  v16 = *(v2 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_selectableMemory);
  v17 = sub_1C7C7D2E4();
  [a1 encodeObject:v16 forKey:v17];

  v18 = *(v2 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_personalizedMemory);
  v19 = sub_1C7C7D2E4();
  [a1 encodeObject:v18 forKey:v19];

  v23 = *(v2 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_policy);
  v20 = sub_1C7C7DAD4();
  v21 = sub_1C7C7D2E4();
  [a1 encodeObject:v20 forKey:v21];
  swift_unknownObjectRelease();
}

char *AppletMemoryInfo.init(coder:)(void *a1)
{
  sub_1C7BED6A8(0, &qword_1EC263470, 0x1E696AEC0);
  v2 = sub_1C7C7D604();
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = v2;
  type metadata accessor for MemoryUsage();
  v4 = sub_1C7C7D5E4();
  if (!v4)
  {

LABEL_21:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v5 = v4;
  v6 = sub_1C7C7D5E4();
  if (!v6)
  {

    goto LABEL_21;
  }

  v7 = v6;
  v8 = sub_1C7C7D5E4();
  if (!v8)
  {

    goto LABEL_21;
  }

  v9 = v8;
  v10 = sub_1C7C7D5E4();
  if (!v10)
  {

    goto LABEL_21;
  }

  v11 = v10;
  v12 = sub_1C7C7D2E4();
  v13 = [a1 decodeIntegerForKey_];

  if (v13 >= 3)
  {

    goto LABEL_21;
  }

  if (!(v3 >> 62))
  {
    v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = v13;
    v43 = v9;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_28:

    v16 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v33 = type metadata accessor for AppletMemoryInfo();
    v34 = objc_allocWithZone(v33);
    *&v34[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_pids] = v16;
    *&v34[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_packageMemory] = v5;
    *&v34[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_containerMemory] = v7;
    *&v34[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_selectableMemory] = v43;
    *&v34[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_personalizedMemory] = v11;
    *&v34[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_policy] = v42;
    v44.receiver = v34;
    v44.super_class = v33;
    v35 = v5;
    v36 = v7;
    v37 = v43;
    v38 = v11;
    v39 = objc_msgSendSuper2(&v44, sel_init);

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v39;
  }

  v14 = sub_1C7C7D6D4();
  v42 = v13;
  v43 = v9;
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_9:
  v45 = MEMORY[0x1E69E7CC0];
  result = sub_1C7C2599C(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v40 = v11;
    v41 = v7;
    v16 = v45;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v17 = 0;
      do
      {
        MEMORY[0x1CCA6B7B0](v17, v3);
        v18 = sub_1C7C7D304();
        v20 = v19;
        swift_unknownObjectRelease();
        v45 = v16;
        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1C7C2599C((v21 > 1), v22 + 1, 1);
          v16 = v45;
        }

        ++v17;
        *(v16 + 16) = v22 + 1;
        v23 = v16 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (v14 != v17);
    }

    else
    {
      v24 = (v3 + 32);
      do
      {
        v25 = *v24;
        v26 = sub_1C7C7D304();
        v45 = v16;
        v29 = *(v16 + 16);
        v28 = *(v16 + 24);
        if (v29 >= v28 >> 1)
        {
          v31 = v26;
          v32 = v27;
          sub_1C7C2599C((v28 > 1), v29 + 1, 1);
          v27 = v32;
          v26 = v31;
          v16 = v45;
        }

        *(v16 + 16) = v29 + 1;
        v30 = v16 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v27;
        ++v24;
        --v14;
      }

      while (v14);
    }

    v11 = v40;
    v7 = v41;
    goto LABEL_29;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C7C5A52C()
{
  v1 = *v0;
  v2 = 1935960432;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x7963696C6F70;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4D6567616B636170;
  if (v1 != 1)
  {
    v5 = 0x656E6961746E6F63;
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

uint64_t sub_1C7C5A5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C5CAA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C5A620(uint64_t a1)
{
  v2 = sub_1C7C5C968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C5A65C(uint64_t a1)
{
  v2 = sub_1C7C5C968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C5A72C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265220, &qword_1C7C94518);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C5C968();
  sub_1C7C7DBA4();
  v13 = *(v3 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_pids);
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
  sub_1C7C2500C(&unk_1EC2643F0);
  sub_1C7C7DA44();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_packageMemory);
    HIBYTE(v12) = 1;
    type metadata accessor for MemoryUsage();
    sub_1C7C5CA10(&qword_1EC265240, type metadata accessor for MemoryUsage);
    sub_1C7C7DA44();
    v13 = *(v3 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_containerMemory);
    HIBYTE(v12) = 2;
    sub_1C7C7DA44();
    v13 = *(v3 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_selectableMemory);
    HIBYTE(v12) = 3;
    sub_1C7C7DA44();
    v13 = *(v3 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_personalizedMemory);
    HIBYTE(v12) = 4;
    sub_1C7C7DA44();
    v13 = *(v3 + OBJC_IVAR____TtC9SEService16AppletMemoryInfo_policy);
    HIBYTE(v12) = 5;
    sub_1C7C5C9BC();
    sub_1C7C7DA44();
  }

  return (*(v6 + 8))(v9, v5);
}

id AppletMemoryInfo.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265250, &qword_1C7C94528);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C5C968();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for AppletMemoryInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC265230, &qword_1C7C94520);
    v15 = 0;
    sub_1C7C2500C(&qword_1EC264408);
    sub_1C7C7D9B4();
    *&v1[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_pids] = v16;
    type metadata accessor for MemoryUsage();
    v15 = 1;
    sub_1C7C5CA10(&qword_1EC264410, type metadata accessor for MemoryUsage);
    sub_1C7C7D9B4();
    *&v1[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_packageMemory] = v16;
    v15 = 2;
    sub_1C7C7D9B4();
    *&v1[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_containerMemory] = v16;
    v15 = 3;
    v13 = 0;
    sub_1C7C7D9B4();
    *&v1[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_selectableMemory] = v16;
    v15 = 4;
    sub_1C7C7D9B4();
    *&v1[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_personalizedMemory] = v16;
    v15 = 5;
    sub_1C7C5CA54();
    sub_1C7C7D9B4();
    *&v1[OBJC_IVAR____TtC9SEService16AppletMemoryInfo_policy] = v16;
    v12 = type metadata accessor for AppletMemoryInfo();
    v14.receiver = v1;
    v14.super_class = v12;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

id MemoryUsage.init(pHeap:cor:cod:usedIndices:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap] = a1;
  *&v4[OBJC_IVAR____TtC9SEService11MemoryUsage_cor] = a2;
  *&v4[OBJC_IVAR____TtC9SEService11MemoryUsage_cod] = a3;
  *&v4[OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for MemoryUsage();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1C7C5B1F4()
{
  v1 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C7C5B28C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C7C5B384()
{
  v1 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C7C5B41C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C7C5B514()
{
  v1 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C7C5B5AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C7C5B6A4()
{
  v1 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C7C5B73C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C7C5B804(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1C7C7D2E4();

  return v5;
}

uint64_t sub_1C7C5B874()
{
  v1 = v0;
  sub_1C7C7D794();

  v2 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  swift_beginAccess();
  v14 = *(v1 + v2);
  v3 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v3);

  MEMORY[0x1CCA6B380](0x203A726F63202CLL, 0xE700000000000000);
  v4 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  swift_beginAccess();
  v13 = *(v1 + v4);
  v5 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v5);

  MEMORY[0x1CCA6B380](0x203A646F63202CLL, 0xE700000000000000);
  v6 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  swift_beginAccess();
  v12 = *(v1 + v6);
  v7 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v7);

  MEMORY[0x1CCA6B380](0x6E4964657375202CLL, 0xEF203A7365636964);
  v8 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
  swift_beginAccess();
  v11 = *(v1 + v8);
  v9 = sub_1C7C7DA74();
  MEMORY[0x1CCA6B380](v9);

  MEMORY[0x1CCA6B380](93, 0xE100000000000000);
  return 0x203A70616548705BLL;
}

uint64_t static MemoryUsage.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EC265141 = a1;
  return result;
}

void sub_1C7C5BBE4(void *a1)
{
  v3 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_1C7C7D2E4();
  [a1 encodeInteger:v4 forKey:v5];

  v6 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = sub_1C7C7D2E4();
  [a1 encodeInteger:v7 forKey:v8];

  v9 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = sub_1C7C7D2E4();
  [a1 encodeInteger:v10 forKey:v11];

  v12 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = sub_1C7C7D2E4();
  [a1 encodeInteger:v13 forKey:v14];
}

id MemoryUsage.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1C7C5CCBC(a1);

  return v4;
}

id MemoryUsage.init(coder:)(void *a1)
{
  v2 = sub_1C7C5CCBC(a1);

  return v2;
}

id MemoryUsage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C7C5BF04()
{
  v1 = 0x7061654870;
  v2 = 6582115;
  if (*v0 != 2)
  {
    v2 = 0x69646E4964657375;
  }

  if (*v0)
  {
    v1 = 7499619;
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

uint64_t sub_1C7C5BF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C5D840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C5BFA0(uint64_t a1)
{
  v2 = sub_1C7C5CE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C5BFDC(uint64_t a1)
{
  v2 = sub_1C7C5CE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C7C5C030(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C7C5C068(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265260, &qword_1C7C94530);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C5CE00();
  sub_1C7C7DBA4();
  v11 = OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap;
  swift_beginAccess();
  v12 = *(v3 + v11);
  v20[64] = 0;
  sub_1C7C7DA34();
  if (!v2)
  {
    v13 = OBJC_IVAR____TtC9SEService11MemoryUsage_cor;
    swift_beginAccess();
    v14 = *(v3 + v13);
    v20[40] = 1;
    sub_1C7C7DA34();
    v15 = OBJC_IVAR____TtC9SEService11MemoryUsage_cod;
    swift_beginAccess();
    v16 = *(v3 + v15);
    v20[16] = 2;
    sub_1C7C7DA34();
    v17 = OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices;
    swift_beginAccess();
    v18 = *(v3 + v17);
    v20[15] = 3;
    sub_1C7C7DA34();
  }

  return (*(v6 + 8))(v9, v5);
}

id MemoryUsage.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265270, &qword_1C7C94538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C5CE00();
  sub_1C7C7DB94();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for MemoryUsage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    *&v1[OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap] = sub_1C7C7D9A4();
    v14 = 1;
    *&v1[OBJC_IVAR____TtC9SEService11MemoryUsage_cor] = sub_1C7C7D9A4();
    v14 = 2;
    *&v1[OBJC_IVAR____TtC9SEService11MemoryUsage_cod] = sub_1C7C7D9A4();
    v14 = 3;
    *&v1[OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices] = sub_1C7C7D9A4();
    v12 = type metadata accessor for MemoryUsage();
    v13.receiver = v1;
    v13.super_class = v12;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_1C7C5C54C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(a2());
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C7C5C5D0()
{
  v0 = sub_1C7C7D1B4();
  __swift_allocate_value_buffer(v0, qword_1EC265148);
  __swift_project_value_buffer(v0, qword_1EC265148);
  return sub_1C7C7D1A4();
}

uint64_t sub_1C7C5C654(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9SEService13SERDataSource_credentialSizes);
  if (*(v5 + 16) && (, sub_1C7C70200(a1, a2), v7 = v6, result = , (v7 & 1) != 0))
  {
    if (*(v5 + 16))
    {
      result = sub_1C7C70200(a1, a2);
      if (v9)
      {
        return *(*(v5 + 56) + 8 * result);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1C7C7D794();

    MEMORY[0x1CCA6B380](a1, a2);
    MEMORY[0x1CCA6B380](0x786520746F6E2029, 0xED00002E73747369);
    sub_1C7BEADA0();
    swift_allocError();
    *v10 = 0x28616E6E656956;
    *(v10 + 8) = 0xE700000000000000;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1C7C5C79C()
{
  result = qword_1EC2651D8;
  if (!qword_1EC2651D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2651D0, &qword_1C7C94500);
    sub_1C7C5CA10(&unk_1EC2651E0, type metadata accessor for AppletMemoryInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2651D8);
  }

  return result;
}

unint64_t sub_1C7C5C858()
{
  result = qword_1EC2651F0;
  if (!qword_1EC2651F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2651D0, &qword_1C7C94500);
    sub_1C7C5CA10(&qword_1EC2651F8, type metadata accessor for AppletMemoryInfo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2651F0);
  }

  return result;
}

unint64_t sub_1C7C5C914()
{
  result = qword_1EC265208;
  if (!qword_1EC265208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265208);
  }

  return result;
}

unint64_t sub_1C7C5C968()
{
  result = qword_1EC265228;
  if (!qword_1EC265228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265228);
  }

  return result;
}

unint64_t sub_1C7C5C9BC()
{
  result = qword_1EC265248;
  if (!qword_1EC265248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265248);
  }

  return result;
}

uint64_t sub_1C7C5CA10(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C7C5CA54()
{
  result = qword_1EC265258;
  if (!qword_1EC265258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265258);
  }

  return result;
}

uint64_t sub_1C7C5CAA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1935960432 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D6567616B636170 && a2 == 0xED000079726F6D65 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xEF79726F6D654D72 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C7C9F9C0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C7C9F9E0 == a2 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7963696C6F70 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id sub_1C7C5CCBC(void *a1)
{
  v3 = sub_1C7C7D2E4();
  v4 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService11MemoryUsage_pHeap] = v4;
  v5 = sub_1C7C7D2E4();
  v6 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService11MemoryUsage_cor] = v6;
  v7 = sub_1C7C7D2E4();
  v8 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService11MemoryUsage_cod] = v8;
  v9 = sub_1C7C7D2E4();
  v10 = [a1 decodeIntegerForKey_];

  *&v1[OBJC_IVAR____TtC9SEService11MemoryUsage_usedIndices] = v10;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for MemoryUsage();
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_1C7C5CE00()
{
  result = qword_1EC265268;
  if (!qword_1EC265268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265268);
  }

  return result;
}

unint64_t sub_1C7C5CE58()
{
  result = qword_1EC265278;
  if (!qword_1EC265278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265278);
  }

  return result;
}

uint64_t keypath_get_4Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_5Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

unint64_t sub_1C7C5D52C()
{
  result = qword_1EC265288;
  if (!qword_1EC265288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265288);
  }

  return result;
}

unint64_t sub_1C7C5D584()
{
  result = qword_1EC265290;
  if (!qword_1EC265290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265290);
  }

  return result;
}

unint64_t sub_1C7C5D5DC()
{
  result = qword_1EC265298;
  if (!qword_1EC265298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC265298);
  }

  return result;
}

unint64_t sub_1C7C5D634()
{
  result = qword_1EC2652A0;
  if (!qword_1EC2652A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2652A0);
  }

  return result;
}

unint64_t sub_1C7C5D68C()
{
  result = qword_1EC2652A8;
  if (!qword_1EC2652A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2652A8);
  }

  return result;
}

unint64_t sub_1C7C5D6E4()
{
  result = qword_1EC2652B0;
  if (!qword_1EC2652B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2652B0);
  }

  return result;
}

unint64_t sub_1C7C5D73C()
{
  result = qword_1EC2652B8;
  if (!qword_1EC2652B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2652B8);
  }

  return result;
}

unint64_t sub_1C7C5D794()
{
  result = qword_1EC2652C0;
  if (!qword_1EC2652C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2652C0);
  }

  return result;
}

unint64_t sub_1C7C5D7EC()
{
  result = qword_1EC2652C8;
  if (!qword_1EC2652C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2652C8);
  }

  return result;
}

uint64_t sub_1C7C5D840(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7061654870 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7499619 && a2 == 0xE300000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6582115 && a2 == 0xE300000000000000 || (sub_1C7C7DAA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69646E4964657375 && a2 == 0xEB00000000736563)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C7C7DAA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1C7C5D9A0()
{
  result = qword_1EC2652D0;
  if (!qword_1EC2652D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2652D0);
  }

  return result;
}

uint64_t SEStorageManagementSheet.init(deviceConfiguration:provisioning:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *a1;
  a3[1] = a2;
  v3 = a3 + *(type metadata accessor for SEStorageManagementSheet() + 24);
  return sub_1C7C7D0F4();
}

uint64_t _s9SEService24SEStorageManagementSheetV7presentSbyYaAC9ErrorCodeOYKF(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 32) = 1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C7C5DAF0;

  return sub_1C7C5DC28(0, 0, 0, 0, (v1 + 32), v1 + 33);
}

uint64_t sub_1C7C5DAF0(char a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C7C64434, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_1C7C5DC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  *(v7 + 104) = v6;
  *(v7 + 112) = a6;
  *(v7 + 88) = a3;
  *(v7 + 96) = a4;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;
  v9 = type metadata accessor for SEStorageManagementInternal.XPCRequest();
  *(v7 + 120) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 152) = *a5;

  return MEMORY[0x1EEE6DFA0](sub_1C7C5DCD0, 0, 0);
}

uint64_t sub_1C7C5DCD0()
{
  v36 = v0;
  v35 = **(v0 + 104);
  sub_1C7BF0670(v35);
  v1 = _s9SEService24SEStorageManagementSheetV8supports13configurationSbAC31ProvisioningDeviceConfigurationO_tFZ_0(&v35);
  sub_1C7BF1A00(v35);
  if ((v1 & 1) == 0)
  {
    v9 = (v0 + 57);
    if (qword_1EC262228 != -1)
    {
      swift_once();
    }

    v10 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v10, qword_1EC288368);
    v11 = sub_1C7C7D194();
    v12 = sub_1C7C7D584();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_32;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Storage Management is not enabled";
LABEL_31:
    _os_log_impl(&dword_1C7B9A000, v11, v12, v14, v13, 2u);
    MEMORY[0x1CCA6C990](v13, -1, -1);
    goto LABEL_32;
  }

  v2 = *(v0 + 104);
  v3 = v2[1];
  v4 = *(v3 + 16);
  if (!v4)
  {
    v9 = (v0 + 63);
    if (qword_1EC262228 != -1)
    {
      swift_once();
    }

    v15 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v15, qword_1EC288368);
    v11 = sub_1C7C7D194();
    v12 = sub_1C7C7D584();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_32;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Cannot invoke SEStorageManagementSheet without proposed credentials";
    goto LABEL_31;
  }

  v5 = (v3 + 80);
  v6 = *(v3 + 80);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      return sub_1C7C7D8D4();
    }

    v6 = 0;
    v8 = 0;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (*(v3 + 80))
    {
      v8 = 0;
      v6 = 1;
    }

    else
    {
      v8 = 1;
    }
  }

  v9 = (v0 + 58);
  while (*v5 <= 1u)
  {
    if (*v5)
    {
      if (!v6)
      {
        goto LABEL_27;
      }
    }

    else if ((v8 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_20:
    v5 += 56;
    if (!--v4)
    {
      v34 = *(v0 + 152);
      v22 = *(v0 + 120);
      v21 = *(v0 + 128);
      v24 = *(v0 + 88);
      v23 = *(v0 + 96);
      v26 = *(v0 + 72);
      v25 = *(v0 + 80);
      v27 = *(type metadata accessor for SEStorageManagementSheet() + 24);
      v28 = sub_1C7C7D104();
      (*(*(v28 - 8) + 16))(v21, v2 + v27, v28);
      v29 = *v2;
      v30 = v21 + *(v22 + 20);
      *v30 = *v2;
      *(v30 + 8) = v3;
      *(v30 + 16) = v26;
      *(v30 + 24) = v25;
      *(v30 + 32) = v24;
      *(v30 + 40) = v23;
      *(v30 + 48) = v34;
      sub_1C7BF0670(v29);
      v31 = qword_1EC262218;

      if (v31 != -1)
      {
        swift_once();
      }

      v32 = swift_task_alloc();
      *(v0 + 136) = v32;
      *v32 = v0;
      v32[1] = sub_1C7C5E1CC;
      v33 = *(v0 + 128);

      return sub_1C7C187A0(v0 + 40, v33);
    }
  }

  if (*v5 != 3)
  {
    return sub_1C7C7D8D4();
  }

  if (v7)
  {
    goto LABEL_20;
  }

LABEL_27:
  if (qword_1EC262228 != -1)
  {
    swift_once();
  }

  v17 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v17, qword_1EC288368);
  v11 = sub_1C7C7D194();
  v12 = sub_1C7C7D584();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Cannot provision credentials of different credential verticals";
    goto LABEL_31;
  }

LABEL_32:
  v18 = *(v0 + 112);

  *v18 = 0;
  *v9 = 0;
  sub_1C7C62D5C();
  swift_willThrowTypedImpl();
  v19 = *(v0 + 128);

  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t sub_1C7C5E1CC()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1C7C5E464;
  }

  else
  {
    v3 = sub_1C7C5E2E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C7C5E2E0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (!(v3 >> 6))
  {
    if (*(v0 + 56) > 1u)
    {
      if (v3 != 2)
      {
        v10 = 0x70605040203uLL >> (8 * v2);
        goto LABEL_16;
      }

      v6 = *(v0 + 40);
      v7 = 2;
    }

    else
    {
      if (*(v0 + 56))
      {
        LOBYTE(v10) = 1;
        sub_1C7C193D4(*(v0 + 40), v1, 1u);
        goto LABEL_16;
      }

      v6 = *(v0 + 40);
      v7 = 0;
    }

    sub_1C7C193D4(v6, v1, v7);
    LOBYTE(v10) = 1;
LABEL_16:
    v8 = *(v0 + 128);
    **(v0 + 112) = v10;
    *(v0 + 62) = v10;
    goto LABEL_17;
  }

  if (v3 >> 6 == 1)
  {
    sub_1C7BF2504(*(v0 + 128));

    v4 = *(v0 + 8);
    v5 = v2 & 1;
    goto LABEL_18;
  }

  v8 = *(v0 + 128);
  v9 = *(v0 + 112);
  if (v1 | v2 || v3 != 128)
  {
    *v9 = 1;
    *(v0 + 60) = 1;
  }

  else
  {
    *v9 = 1;
    *(v0 + 61) = 1;
  }

LABEL_17:
  sub_1C7C62D5C();
  swift_willThrowTypedImpl();
  sub_1C7BF2504(v8);
  v11 = *(v0 + 128);

  v4 = *(v0 + 8);
  v5 = 0;
LABEL_18:

  return v4(v5);
}

uint64_t sub_1C7C5E464()
{
  v21 = v0;
  if (qword_1EC262228 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_1C7C7D1B4();
  __swift_project_value_buffer(v2, qword_1EC288368);
  v3 = v1;
  v4 = sub_1C7C7D194();
  v5 = sub_1C7C7D584();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = sub_1C7C7DB04();
    v14 = sub_1C7BE42F8(v12, v13, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1C7B9A000, v4, v5, "Unhandled XPC error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1CCA6C990](v8, -1, -1);
    MEMORY[0x1CCA6C990](v7, -1, -1);
  }

  v15 = *(v0 + 144);
  v16 = *(v0 + 128);
  **(v0 + 112) = 1;
  *(v0 + 59) = 1;
  sub_1C7C62D5C();
  swift_willThrowTypedImpl();

  sub_1C7BF2504(v16);
  v17 = *(v0 + 128);

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t _s9SEService24SEStorageManagementSheetV7present25inApplicationWithBundleIDSbSS_tYaAC9ErrorCodeOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 32) = 1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1C7C5DAF0;

  return sub_1C7C5DC28(0, 0, a1, a2, (v3 + 32), v3 + 33);
}

uint64_t _s9SEService24SEStorageManagementSheetV7present23overSceneWithIdentifier013inApplicationH8BundleIDSbSS_SStYaAC9ErrorCodeOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = 1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1C7C5DAF0;

  return sub_1C7C5DC28(a1, a2, a3, a4, (v5 + 32), v5 + 33);
}

uint64_t _s9SEService24SEStorageManagementSheetV7present23overSceneWithIdentifier013inApplicationH8BundleID4withSbSS_SSAC20DisplayConfigurationOtYaAC9ErrorCodeOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  *(v6 + 32) = *a5;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_1C7C5E8CC;

  return sub_1C7C5DC28(a1, a2, a3, a4, (v6 + 32), v6 + 33);
}

uint64_t sub_1C7C5E8CC(char a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C7C5EA04, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t _s9SEService24SEStorageManagementSheetV7dismissyyYaAC9ErrorCodeOYKF(uint64_t a1)
{
  v2[5] = v1;
  v2[6] = a1;
  v3 = type metadata accessor for SEStorageManagementInternal.XPCRequest();
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7C5EAC0, 0, 0);
}

uint64_t sub_1C7C5EAC0()
{
  v19 = v0;
  v18 = **(v0 + 40);
  sub_1C7BF0670(v18);
  v1 = _s9SEService24SEStorageManagementSheetV8supports13configurationSbAC31ProvisioningDeviceConfigurationO_tFZ_0(&v18);
  sub_1C7BF1A00(v18);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 40);
    v5 = *(type metadata accessor for SEStorageManagementSheet() + 24);
    v6 = sub_1C7C7D104();
    (*(*(v6 - 8) + 16))(v3, v4 + v5, v6);
    v7 = v3 + *(v2 + 20);
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;
    *(v7 + 48) = 0x80;
    if (qword_1EC262218 != -1)
    {
      swift_once();
    }

    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_1C7C5ED54;
    v9 = *(v0 + 64);

    return sub_1C7C187A0(v0 + 16, v9);
  }

  else
  {
    if (qword_1EC262228 != -1)
    {
      swift_once();
    }

    v11 = sub_1C7C7D1B4();
    __swift_project_value_buffer(v11, qword_1EC288368);
    v12 = sub_1C7C7D194();
    v13 = sub_1C7C7D584();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C7B9A000, v12, v13, "Storage Management is not enabled", v14, 2u);
      MEMORY[0x1CCA6C990](v14, -1, -1);
    }

    v15 = *(v0 + 48);

    *v15 = 0;
    *(v0 + 33) = 0;
    sub_1C7C62D5C();
    swift_willThrowTypedImpl();
    v16 = *(v0 + 64);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1C7C5ED54()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1C7C5EFD4;
  }

  else
  {
    v3 = sub_1C7C5EE68;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C7C5EE68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (!(v3 >> 6))
  {
    if (*(v0 + 32) > 1u)
    {
      if (v3 != 2)
      {
        v7 = 0x70605040203uLL >> (8 * v1);
        goto LABEL_16;
      }

      v5 = 2;
    }

    else
    {
      if (*(v0 + 32))
      {
        LOBYTE(v7) = 1;
        sub_1C7C193D4(v1, v2, 1u);
        goto LABEL_16;
      }

      v5 = 0;
    }

    sub_1C7C193D4(v1, v2, v5);
    LOBYTE(v7) = 1;
LABEL_16:
    v4 = *(v0 + 64);
    **(v0 + 48) = v7;
    *(v0 + 37) = v7;
    goto LABEL_17;
  }

  if (v3 >> 6 == 1)
  {
    v4 = *(v0 + 64);
    **(v0 + 48) = 1;
    *(v0 + 36) = 1;
  }

  else
  {
    v4 = *(v0 + 64);
    if (!(v2 | v1) && v3 == 128)
    {
      sub_1C7BF2504(*(v0 + 64));

      v6 = *(v0 + 8);
      goto LABEL_18;
    }

    **(v0 + 48) = 1;
    *(v0 + 35) = 1;
  }

LABEL_17:
  sub_1C7C62D5C();
  swift_willThrowTypedImpl();
  sub_1C7BF2504(v4);
  v8 = *(v0 + 64);

  v6 = *(v0 + 8);
LABEL_18:

  return v6();
}

uint64_t sub_1C7C5EFD4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  **(v0 + 48) = 1;
  *(v0 + 34) = 1;
  sub_1C7C62D5C();
  swift_willThrowTypedImpl();

  sub_1C7BF2504(v2);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

double SEStorageManagementSheet.ProposedCredentialType.init(rawValue:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v71 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624A0, &unk_1C7C94B10);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v69 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624A8, &unk_1C7C84D00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624B0, &unk_1C7C94B20);
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624B8, &unk_1C7C84D10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v58 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624C0, &unk_1C7C94B30);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v58 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624C8, &unk_1C7C84D20);
  v66 = *(v28 - 8);
  v67 = v28;
  v29 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v59 = &v58 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624D0, &unk_1C7C94B40);
  sub_1C7C7D164();
  v31 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v31 = a1;
  }

  v32 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v32 = 11;
  }

  v60 = v32 | (v31 << 16);
  v61 = a1;
  v68 = a2;
  sub_1C7C7D3C4();
  sub_1C7C62DB0(&qword_1EC2624D8, &qword_1EC2624B8, &unk_1C7C84D10);
  sub_1C7C7D154();
  sub_1C7C7D174();

  v33 = *(v17 + 8);
  v33(v21, v16);
  v33(v23, v16);
  v35 = v66;
  v34 = v67;
  v36 = (*(v66 + 48))(v27, 1, v67);
  v37 = v72;
  v39 = v69;
  v38 = v70;
  if (v36 == 1)
  {
    sub_1C7BE48DC(v27, &qword_1EC2624C0, &unk_1C7C94B30);
  }

  else
  {
    v40 = v59;
    (*(v35 + 32))(v59, v27, v34);
    sub_1C7C7D184();

    v41 = MEMORY[0x1CCA6B360](v74, v75, v76, v77);
    v43 = v42;

    v44._countAndFlagsBits = v41;
    v44._object = v43;
    AppletType.init(rawValue:)(v44);
    (*(v35 + 8))(v40, v34);
    v45 = v73;
    if (v73 != 26)
    {

      v57 = v71;
      *v71 = v45;
      result = 0.0;
      *(v57 + 1) = 0u;
      *(v57 + 3) = 0u;
      *(v57 + 33) = 0u;
      return result;
    }

    v37 = v72;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2624E0, &qword_1C7C84D30);
  sub_1C7C7D164();
  sub_1C7C7D3C4();

  sub_1C7C62DB0(&qword_1EC2624E8, &qword_1EC2624A0, &unk_1C7C94B10);
  v46 = v63;
  sub_1C7C7D154();
  sub_1C7C7D174();

  v47 = *(v62 + 8);
  v47(v39, v46);
  v47(v38, v46);
  v49 = v64;
  v48 = v65;
  if ((*(v64 + 48))(v37, 1, v65) == 1)
  {
    sub_1C7BE48DC(v37, &qword_1EC2624A8, &unk_1C7C84D00);
    result = 0.0;
    v51 = v71;
    *v71 = 0u;
    *(v51 + 1) = 0u;
    *(v51 + 2) = 0u;
    *(v51 + 48) = -1;
  }

  else
  {
    v52 = v58;
    (*(v49 + 32))(v58, v37, v48);
    sub_1C7C7D184();

    v53 = MEMORY[0x1CCA6B360](v74, v75, v76, v77);
    v55 = v54;

    (*(v49 + 8))(v52, v48);
    v56 = v71;
    *v71 = v53;
    v56[1] = v55;
    result = 0.0;
    *(v56 + 1) = 0u;
    *(v56 + 2) = 0u;
    *(v56 + 48) = 1;
  }

  return result;
}

double SEStorageManagementSheet.ProposedCredentialType.init(snapshotType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v8 = a2;
      sub_1C7BEA9D8(v3, v4, 2u);
      a2 = v8;
      v7 = 0;
      LOBYTE(v5) = 0;
      v6 = 22;
    }

    else
    {
      v7 = 0;
      LOBYTE(v5) = 0;
      v6 = qword_1C7C95C20[v3];
    }
  }

  else
  {
    if (v5)
    {
      v6 = v3;
    }

    else
    {
      v6 = v3;
    }

    if (v5)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    if (!v5)
    {
      LOBYTE(v5) = 0;
    }
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_1C7C5F964()
{
  v1 = 0x74656C6C6177;
  v2 = 0x666F72506D695365;
  if (*v0 != 2)
  {
    v2 = 0x6C6569667269756DLL;
  }

  if (*v0)
  {
    v1 = 0x616E6E656976;
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

uint64_t sub_1C7C5F9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7C64270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7C5FA0C(uint64_t a1)
{
  v2 = sub_1C7C62E04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C5FA48(uint64_t a1)
{
  v2 = sub_1C7C62E04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C5FA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C69666F7270 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C5FB24(uint64_t a1)
{
  v2 = sub_1C7C62F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C5FB60(uint64_t a1)
{
  v2 = sub_1C7C62F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C5FBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E496C656E72656BLL && a2 == 0xEA00000000006F66)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C7C7DAA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C7C5FC48(uint64_t a1)
{
  v2 = sub_1C7C62E58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C5FC84(uint64_t a1)
{
  v2 = sub_1C7C62E58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C5FCC0(uint64_t a1)
{
  v2 = sub_1C7C62FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C5FCFC(uint64_t a1)
{
  v2 = sub_1C7C62FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7C5FD38(uint64_t a1)
{
  v2 = sub_1C7C62FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7C5FD74(uint64_t a1)
{
  v2 = sub_1C7C62FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SEStorageManagementSheet.ProposedCredentialType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2652E8, &qword_1C7C94B50);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2652F0, &qword_1C7C94B58);
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2652F8, &qword_1C7C94B60);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265300, &qword_1C7C94B68);
  v35 = *(v13 - 8);
  v14 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC265308, &qword_1C7C94B70);
  v48 = *(v17 - 8);
  v49 = v17;
  v18 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  v21 = *v1;
  v46 = v1[1];
  v47 = v21;
  v22 = v1[3];
  v44 = v1[2];
  v45 = v22;
  v23 = v1[5];
  v34 = v1[4];
  v33 = v23;
  v24 = *(v1 + 48);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7C62E04();
  sub_1C7C7DBA4();
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      LOBYTE(v50) = 2;
      sub_1C7C62F00();
      v28 = v38;
      v29 = v49;
      sub_1C7C7D9E4();
      v50 = v47;
      v51 = v46;
      v52 = v44;
      v53 = v45;
      v54 = v34;
      v55 = v33;
      sub_1C7C62F54();
      v30 = v40;
      sub_1C7C7DA44();
      v31 = v39;
    }

    else
    {
      LOBYTE(v50) = 3;
      sub_1C7C62E58();
      v28 = v41;
      v29 = v49;
      sub_1C7C7D9E4();
      v50 = v47;
      v51 = v46;
      v52 = v44;
      v53 = v45;
      sub_1C7C62EAC();
      v30 = v43;
      sub_1C7C7DA44();
      v31 = v42;
    }

    (*(v31 + 8))(v28, v30);
  }

  else
  {
    if (!v24)
    {
      LOBYTE(v50) = 0;
      sub_1C7C62FFC();
      v26 = v49;
      sub_1C7C7D9E4();
      LOBYTE(v50) = v47;
      sub_1C7BE53F0();
      sub_1C7C7DA44();
      (*(v35 + 8))(v16, v13);
      return (*(v48 + 8))(v20, v26);
    }

    LOBYTE(v50) = 1;
    sub_1C7C62FA8();
    v29 = v49;
    sub_1C7C7D9E4();
    v32 = v37;
    sub_1C7C7DA14();
    (*(v36 + 8))(v12, v32);
  }

  return (*(v48 + 8))(v20, v29);
}
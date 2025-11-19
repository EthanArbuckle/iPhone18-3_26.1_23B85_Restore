uint64_t sub_26C40962C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_26C46BB54();
  v57 = *(v3 - 8);
  v4 = v57[8];
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 280);
  v8 = sub_26C46C474();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v47 - v11;
  if (*(v1 + qword_280497740) != 1)
  {
    return result;
  }

  v13 = qword_280497748;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if ((v14 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *(v1 + v13);
    }

    sub_26C46C4C4();
    v16 = *(v2 + 304);
    result = sub_26C46C354();
    v14 = v64[7];
    v17 = v64[8];
    v18 = v64[9];
    v19 = v64[10];
    v20 = v64[11];
  }

  else
  {
    v21 = -1 << *(v14 + 32);
    v17 = v14 + 56;
    v22 = ~v21;
    v23 = -v21;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v20 = v24 & *(v14 + 56);

    v18 = v22;
    v19 = 0;
  }

  v60 = v7 - 8;
  v47 = v18;
  v25 = (v18 + 64) >> 6;
  v51 = (v57 + 2);
  v50 = (v57 + 1);
  v59 = v25;
  v48 = v6;
  v54 = v12;
  v53 = v14;
  v52 = v17;
  while (v14 < 0)
  {
    if (!sub_26C46C4D4())
    {
LABEL_34:
      (*(*(v7 - 8) + 56))(v12, 1, 1, v7);
      return sub_26C40B328();
    }

    sub_26C46C754();
    swift_unknownObjectRelease();
    v27 = *(v7 - 8);
LABEL_25:
    (*(v27 + 56))(v12, 0, 1, v7);
    v64[3] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v64);
    (*(v27 + 32))(boxed_opaque_existential_0, v12, v7);
    sub_26C3DE214(v64, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497440, &unk_26C46D3E0);
    if (swift_dynamicCast())
    {
      v58 = v19;
      v31 = v62;
      ObjectType = swift_getObjectType();
      v56 = v31;
      v32 = sub_26C3F8720(ObjectType, v31);
      v33 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      (*v51)(v6, v32 + v33, v3);
      v34 = OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers;
      swift_beginAccess();
      v35 = *(v1 + v34);
      v36 = sub_26C42C210(v6);
      if (v37)
      {
        v38 = v36;
        v49 = v32;
        v39 = *(v1 + v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = *(v1 + v34);
        v61 = v41;
        *(v1 + v34) = 0x8000000000000000;
        v42 = v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26C42EBCC();
          v41 = v61;
        }

        v43 = v57[1];
        v43(*(v41 + 48) + v57[9] * v38, v3);
        v44 = *(*(v41 + 56) + 8 * v38);

        sub_26C42D490(v38, v41);
        v45 = v48;
        v43(v48, v3);
        *(v42 + v34) = v41;
        v1 = v42;
        v6 = v45;
      }

      else
      {
        (*v50)(v6, v3);
      }

      swift_endAccess();
      if (*(v1 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller) && swift_weakLoadStrong())
      {
        v46 = sub_26C3F8720(ObjectType, v56);
        sub_26C3EA514(v46);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v12 = v54;
      v14 = v53;
      v17 = v52;
      v19 = v58;
    }

    result = __swift_destroy_boxed_opaque_existential_1(v64);
    v25 = v59;
  }

  if (v20)
  {
    v26 = v19;
LABEL_24:
    v29 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v27 = *(v7 - 8);
    (*(v27 + 16))(v12, *(v14 + 48) + *(v27 + 72) * (v29 | (v26 << 6)), v7);
    goto LABEL_25;
  }

  v28 = v19;
  while (1)
  {
    v26 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v26 >= v25)
    {
      goto LABEL_34;
    }

    v20 = *(v17 + 8 * v26);
    ++v28;
    if (v20)
    {
      v19 = v26;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26C409CC8(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v107 = a1;
  v3 = *(*v2 + 280);
  v4 = *(*v2 + 296);
  v5 = *(*v2 + 304);
  v97 = *(*v2 + 288);
  v98 = v3;
  v108 = v3;
  v109 = v97;
  v95 = v5;
  v96 = v4;
  v110 = v4;
  v111 = v5;
  v6 = type metadata accessor for SyncedSet.MergeValues();
  v100 = *(v6 - 8);
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](v6);
  v99 = (&v85 - v8);
  v102 = type metadata accessor for PBUUID(0);
  v105 = *(v102 - 8);
  v9 = *(v105 + 64);
  MEMORY[0x28223BE20](v102);
  v89 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v88 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v85 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v94 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v85 - v21;
  v23 = type metadata accessor for LamportTimestamp(0);
  v106 = *(v23 - 8);
  v24 = *(v106 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v93 = &v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v103 = &v85 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v85 - v30;
  v32 = sub_26C46BB54();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v90 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v35);
  v104 = &v85 - v38;
  v39 = *(v2 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);
  if (!v39)
  {
    __break(1u);
    return result;
  }

  v40 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  sub_26C3DDD48(v39 + v40, v31, &qword_280497430, &unk_26C46D3D0);
  v41 = (*(v33 + 48))(v31, 1, v32);
  v92 = v6;
  v91 = v23;
  if (v41 == 1)
  {
    v42 = sub_26C3DE270(v31, &qword_280497430, &unk_26C46D3D0);
LABEL_19:
    v63 = v107;
    v64 = *(v107 + 8);
    v65 = *(v64 + 16);
    MEMORY[0x28223BE20](v42);
    *(&v85 - 2) = v63;
    v67 = sub_26C458410(sub_26C40C830, (&v85 - 4), 0, v66);
    v68 = *(v63 + 16);
    v69 = *(v68 + 16);
    MEMORY[0x28223BE20](v67);
    *(&v85 - 2) = v63;
    v71 = sub_26C458410(sub_26C40C368, (&v85 - 4), 0, v70);
    v72 = v63 + *(type metadata accessor for SetChangedMessage(0) + 32);
    v73 = v94;
    sub_26C3DDD48(v72, v94, &qword_280497468, &unk_26C46D400);
    v74 = *(v106 + 48);
    v75 = v91;
    if (v74(v73, 1, v91) == 1)
    {
      v76 = v93;
      *v93 = 0;
      v77 = &v76[*(v75 + 20)];
      sub_26C46BD14();
      (*(v105 + 56))(&v76[*(v75 + 24)], 1, 1, v102);
      if (v74(v73, 1, v75) != 1)
      {
        sub_26C3DE270(v73, &qword_280497468, &unk_26C46D400);
      }
    }

    else
    {
      v76 = v93;
      sub_26C40C2E8(v73, v93, type metadata accessor for LamportTimestamp);
    }

    v78 = v76;
    v79 = v99;
    sub_26C40C2E8(v78, v99, type metadata accessor for LamportTimestamp);
    v108 = v98;
    v109 = v97;
    v110 = v96;
    v111 = v95;
    v80 = type metadata accessor for SyncedSet.MergeValues();
    *(v79 + v80[13]) = v64;
    *(v79 + v80[14]) = v67;
    *(v79 + v80[15]) = v68;
    *(v79 + v80[16]) = v71;

    sub_26C403540(v79, v101);
    return (*(v100 + 8))(v79, v92);
  }

  v87 = v33;
  (*(v33 + 32))(v104, v31, v32);
  v43 = type metadata accessor for SetChangedMessage(0);
  sub_26C3DDD48(v107 + *(v43 + 32), v22, &qword_280497468, &unk_26C46D400);
  v44 = *(v106 + 48);
  v45 = v44(v22, 1, v23);
  v86 = v32;
  if (v45 == 1)
  {
    v46 = v103;
    *v103 = 0;
    v47 = &v46[*(v23 + 20)];
    sub_26C46BD14();
    v48 = v102;
    (*(v105 + 56))(&v46[*(v23 + 24)], 1, 1, v102);
    if (v44(v22, 1, v23) != 1)
    {
      sub_26C3DE270(v22, &qword_280497468, &unk_26C46D400);
    }
  }

  else
  {
    v46 = v103;
    sub_26C40C2E8(v22, v103, type metadata accessor for LamportTimestamp);
    v48 = v102;
  }

  v49 = *(v23 + 24);
  sub_26C3DDD48(&v46[v49], v16, &qword_280497458, &unk_26C46D3F0);
  v50 = *(v105 + 48);
  v51 = v50(v16, 1, v48);
  sub_26C3DE270(v16, &qword_280497458, &unk_26C46D3F0);
  if (v51 == 1)
  {
    if (qword_280497190 != -1)
    {
      swift_once();
    }

    v52 = v86;
    v53 = __swift_project_value_buffer(v86, qword_2804985C0);
    v54 = v87;
    v55 = v90;
    (*(v87 + 16))(v90, v53, v52);
    v56 = v104;
  }

  else
  {
    v57 = v88;
    sub_26C3DDD48(&v46[v49], v88, &qword_280497458, &unk_26C46D3F0);
    if (v50(v57, 1, v48) == 1)
    {
      v58 = v89;
      *v89 = 0;
      v58[1] = 0;
      v59 = v58 + *(v48 + 24);
      sub_26C46BD14();
      v60 = v50(v57, 1, v48);
      v56 = v104;
      v52 = v86;
      if (v60 != 1)
      {
        sub_26C3DE270(v57, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v58 = v89;
      sub_26C40C2E8(v57, v89, type metadata accessor for PBUUID);
      v56 = v104;
      v52 = v86;
    }

    v55 = v90;
    sub_26C40F3CC();
    sub_26C40C454(v58, type metadata accessor for PBUUID);
    v54 = v87;
  }

  sub_26C40C454(v103, type metadata accessor for LamportTimestamp);
  sub_26C40C388(&qword_2804975A8, MEMORY[0x277CC95F0]);
  v61 = sub_26C46C1C4();
  v62 = *(v54 + 8);
  v62(v55, v52);
  if (v61)
  {
    v42 = (v62)(v56, v52);
    goto LABEL_19;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v81 = sub_26C46BFA4();
  __swift_project_value_buffer(v81, qword_280498530);
  v82 = sub_26C46BF84();
  v83 = sub_26C46C3D4();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_26C3D6000, v82, v83, "SyncedSet: Cannot apply set change message. Not the current owner or unowned", v84, 2u);
    MEMORY[0x26D6A18D0](v84, -1, -1);
  }

  return (v62)(v56, v52);
}

uint64_t sub_26C40A87C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for SetChangedMessage(0);
  sub_26C3DDD48(a1 + *(v8 + 32), v7, &qword_280497468, &unk_26C46D400);
  v9 = type metadata accessor for LamportTimestamp(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_26C40C2E8(v7, a2, type metadata accessor for LamportTimestamp);
  }

  *a2 = 0;
  v11 = &a2[*(v9 + 20)];
  sub_26C46BD14();
  v12 = *(v9 + 24);
  v13 = type metadata accessor for PBUUID(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_26C3DE270(v7, &qword_280497468, &unk_26C46D400);
  }

  return result;
}

uint64_t SyncedSet.SyncedSetChangeInfo.removedElements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SyncedSet.SyncedSetChangeInfo.addedElements.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SyncedSet.receive<A>(subscriber:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v5 = *(v2 + qword_2804985A0);
  (*(v6 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_26C46BFF4();
}

uint64_t sub_26C40ABAC()
{
  v1 = *(v0 + qword_280497748);

  v2 = *(v0 + qword_280497720);

  v3 = *(v0 + qword_280497728);

  v4 = *(v0 + qword_280497730);

  v5 = *(v0 + qword_280497738);

  v6 = *(v0 + qword_2804985A0);
}

uint64_t SyncedSet.deinit()
{
  sub_26C40C454(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__timestamp, type metadata accessor for LamportTimestamp);
  v1 = *(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__controller);

  v2 = *(v0 + OBJC_IVAR____TtC12SyncedModels18SyncedPropertyBase__pendingModelControllers);

  v3 = *(v0 + qword_280497748);

  v4 = *(v0 + qword_280497720);

  v5 = *(v0 + qword_280497728);

  v6 = *(v0 + qword_280497730);

  v7 = *(v0 + qword_280497738);

  v8 = *(v0 + qword_2804985A0);

  return v0;
}

uint64_t SyncedSet.__deallocating_deinit()
{
  SyncedSet.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26C40AD74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SyncedSet.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_26C40ADF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_26C46C1A4();

  return sub_26C40AE4C(a1, v9, a2, a3);
}

unint64_t sub_26C40AE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_26C46C1C4();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_26C40AFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_26C46C2B4())
  {
    sub_26C46C634();
    v13 = sub_26C46C624();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_26C46C2B4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_26C46C2A4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_26C46C534();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_26C40ADF0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_26C40B330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v53 = &v41 - v12;
  v42 = v13;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  if (sub_26C46C2B4())
  {
    sub_26C46C504();
    v16 = sub_26C46C4F4();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v46 = sub_26C46C2B4();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_26C46C2A4();
    sub_26C46C274();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_26C46C534();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_26C46C1A4();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v10, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_26C46C1C4();
        v35 = *v50;
        (*v50)(v10, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_26C40B6F4()
{
  v1 = qword_280497748;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26C40B73C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_26C40B6F4();
}

uint64_t sub_26C40B778(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_26C40B738(v4);
}

__n128 sub_26C40B7C8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_26C40B8C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26C40B918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26C40B960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26C40B9AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for LamportTimestamp(319);
    if (v3 <= 0x3F)
    {
      sub_26C40C760(319, qword_280497510, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C40BA7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v37 = sub_26C46BD24();
  v8 = *(v37 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_26C46BB54() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v14 = v10;
  }

  v15 = *(v8 + 80);
  if (v9)
  {
    v16 = -2;
  }

  else
  {
    v16 = -1;
  }

  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v13)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 | 7;
  v21 = v16 + *(v8 + 64) - ((-17 - v15) | v15) - ((((-5 - v15) | v15) - ((v15 | 7) + *(v8 + 64))) | v15 | 7);
  v22 = (v15 | 7) + *(v6 + 64);
  if (a2 > v14)
  {
    v23 = ((v19 + v17 + (((v22 & ~v20) + v17 + v21) & ~v17)) & ~v17) + v19;
    v24 = 8 * v23;
    if (v23 <= 3)
    {
      v26 = ((a2 - v14 + ~(-1 << v24)) >> v24) + 1;
      if (HIWORD(v26))
      {
        v25 = *(a1 + v23);
        if (!v25)
        {
          goto LABEL_37;
        }

        goto LABEL_24;
      }

      if (v26 > 0xFF)
      {
        v25 = *(a1 + v23);
        if (!*(a1 + v23))
        {
          goto LABEL_37;
        }

        goto LABEL_24;
      }

      if (v26 < 2)
      {
LABEL_37:
        if (v14)
        {
          goto LABEL_38;
        }

        return 0;
      }
    }

    v25 = *(a1 + v23);
    if (!*(a1 + v23))
    {
      goto LABEL_37;
    }

LABEL_24:
    v27 = (v25 - 1) << v24;
    if (v23 > 3)
    {
      v27 = 0;
    }

    if (v23)
    {
      if (v23 <= 3)
      {
        v28 = v23;
      }

      else
      {
        v28 = 4;
      }

      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v29 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v29 = *a1;
        }
      }

      else if (v28 == 1)
      {
        v29 = *a1;
      }

      else
      {
        v29 = *a1;
      }
    }

    else
    {
      v29 = 0;
    }

    return v14 + (v29 | v27) + 1;
  }

LABEL_38:
  if (v7 == v14)
  {
    v30 = *(v6 + 48);
    v31 = a1;
    v32 = v7;
    v33 = v5;
  }

  else
  {
    v35 = (a1 + v22) & ~v20;
    if (v9 != v14)
    {
      v36 = (*(v12 + 48))((v35 + v17 + v21) & ~v17);
      if (v36 >= 2)
      {
        return v36 - 1;
      }

      else
      {
        return 0;
      }
    }

    v30 = *(v8 + 48);
    v31 = (v15 + v35 + 4) & ~v15;
    v32 = v9;
    v33 = v37;
  }

  return v30(v31, v32, v33);
}

void sub_26C40BDE8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v47 = *(a4 + 16);
  v6 = *(v47 - 8);
  v46 = v6;
  v7 = *(v6 + 84);
  v45 = sub_26C46BD24();
  v8 = *(v45 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(sub_26C46BB54() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = *(v6 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = v17 | 7;
  v22 = -2;
  if (!v9)
  {
    v22 = -1;
  }

  v23 = v22 + *(v8 + 64) - ((-17 - v17) | v17) - ((((-5 - v17) | v17) - ((v17 | 7) + *(v8 + 64))) | v17 | 7);
  v24 = v21 + v18;
  v25 = (((v21 + v18) & ~v21) + v19 + v23) & ~v19;
  if (v14)
  {
    v26 = v20;
  }

  else
  {
    v26 = v20 + 1;
  }

  v27 = ((v26 + v19 + v25) & ~v19) + v26;
  if (a3 <= v16)
  {
    goto LABEL_25;
  }

  if (v27 <= 3)
  {
    v28 = ((a3 - v16 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v28))
    {
      v11 = 4;
      if (v16 >= a2)
      {
        goto LABEL_35;
      }

LABEL_26:
      v30 = ~v16 + a2;
      if (v27 >= 4)
      {
        bzero(a1, v27);
        *a1 = v30;
        v31 = 1;
        if (v11 > 1)
        {
          goto LABEL_67;
        }

        goto LABEL_64;
      }

      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v32 = v30 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v32;
            if (v11 > 1)
            {
LABEL_67:
              if (v11 == 2)
              {
                *&a1[v27] = v31;
              }

              else
              {
                *&a1[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v11 > 1)
            {
              goto LABEL_67;
            }
          }

LABEL_64:
          if (v11)
          {
            a1[v27] = v31;
          }

          return;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v11 > 1)
      {
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    if (v28 >= 2)
    {
      v11 = v29;
    }

    else
    {
      v11 = 0;
    }

LABEL_25:
    if (v16 >= a2)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  v11 = 1;
  if (v16 < a2)
  {
    goto LABEL_26;
  }

LABEL_35:
  v33 = a1;
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *&a1[v27] = 0;
LABEL_41:
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!v11)
  {
    goto LABEL_41;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v7 == v16)
  {
    v34 = v47;
    v35 = *(v46 + 56);
    v36 = a2;
    v37 = v7;
LABEL_46:

    v35(v33, v36, v37, v34);
    return;
  }

  v38 = &a1[v24] & ~v21;
  if (v9 == v16)
  {
    v35 = *(v8 + 56);
    v33 = (v17 + v38 + 4) & ~v17;
    v36 = a2;
    v37 = v9;
    v34 = v45;
    goto LABEL_46;
  }

  v39 = v38 + v19 + v23;
  v40 = (v39 & ~v19);
  if (v15 >= a2)
  {
    v44 = *(v13 + 56);

    v44(v39 & ~v19, (a2 + 1));
  }

  else
  {
    if (v26 <= 3)
    {
      v41 = ~(-1 << (8 * v26));
    }

    else
    {
      v41 = -1;
    }

    if (v26)
    {
      v42 = v41 & (~v15 + a2);
      if (v26 <= 3)
      {
        v43 = v26;
      }

      else
      {
        v43 = 4;
      }

      bzero(v40, v26);
      if (v43 > 2)
      {
        if (v43 == 3)
        {
          *v40 = v42;
          v40[2] = BYTE2(v42);
        }

        else
        {
          *v40 = v42;
        }
      }

      else if (v43 == 1)
      {
        *v40 = v42;
      }

      else
      {
        *v40 = v42;
      }
    }
  }
}

uint64_t sub_26C40C2E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C40C388(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C40C408@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26C4026B8(a1, a3);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_26C40C454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26C40C4BC()
{
  type metadata accessor for LamportTimestamp(319);
  if (v0 <= 0x3F)
  {
    sub_26C40C760(319, &qword_2804979E8, type metadata accessor for ValueData, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26C40C760(319, qword_2804979F0, type metadata accessor for LamportTimestamp, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C40C5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LamportTimestamp(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 52));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26C40C6A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LamportTimestamp(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

void sub_26C40C760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26C40C88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v35 = a5;
  v37 = a3;
  v38 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  *a6 = xmmword_26C46D3C0;
  v13 = type metadata accessor for ValueData(0);
  v14 = a6 + v13[5];
  sub_26C46BD14();
  v15 = v13[6];
  v16 = type metadata accessor for PBUUID(0);
  v17 = *(*(v16 - 8) + 56);
  v17(a6 + v15, 1, 1, v16);
  v17(a6 + v13[7], 1, 1, v16);
  v18 = a1;
  sub_26C3DDD48(a1, v12, &qword_280497430, &unk_26C46D3D0);
  sub_26C40EC10(v12);
  if (qword_280497168 != -1)
  {
    swift_once();
  }

  v19 = sub_26C410654(a4, a4);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = *(a4 - 8);
  v23 = *(v22 + 72);
  v24 = *(v22 + 80);
  swift_allocObject();
  v25 = sub_26C46C264();
  (*(v22 + 16))(v26, v38, a4);
  sub_26C46C2E4();
  v40 = v25;
  v39 = v35;
  swift_getWitnessTable();
  v27 = v36;
  v28 = sub_26C46BA74();
  if (v27)
  {
    sub_26C3DE270(v37, &qword_280497430, &unk_26C46D3D0);
    (*(v22 + 8))(v38, a4);
    sub_26C3DE270(v18, &qword_280497430, &unk_26C46D3D0);

    return sub_26C4118B4(a6, type metadata accessor for ValueData);
  }

  else
  {
    v31 = v28;
    v32 = v29;

    sub_26C3DDEA8(*a6, *(a6 + 8));
    *a6 = v31;
    *(a6 + 8) = v32;
    v33 = v37;
    sub_26C3DDD48(v37, v12, &qword_280497430, &unk_26C46D3D0);
    sub_26C40EF48(v12);
    sub_26C3DE270(v33, &qword_280497430, &unk_26C46D3D0);
    (*(v22 + 8))(v38, a4);
    return sub_26C3DE270(v18, &qword_280497430, &unk_26C46D3D0);
  }
}

uint64_t sub_26C40CC14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a3;
  v7 = sub_26C46C474();
  v15 = *(v7 - 8);
  v8 = *(v15 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  if (qword_280497170 != -1)
  {
    swift_once();
  }

  sub_26C46C2E4();
  v12 = *v3;
  v11 = v3[1];
  v18 = a2;
  swift_getWitnessTable();
  result = sub_26C46BA34();
  if (!v4)
  {
    v17 = v19;
    swift_getWitnessTable();
    sub_26C46C3B4();
    v14 = *(a1 - 8);
    if ((*(v14 + 48))(v10, 1, a1) == 1)
    {
      (*(v15 + 8))(v10, v7);

      sub_26C411914();
      swift_allocError();
      return swift_willThrow();
    }

    else
    {
      (*(v14 + 32))(v16, v10, a1);
    }
  }

  return result;
}

uint64_t sub_26C40CE7C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for PBUUID(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(type metadata accessor for ValueData(0) + 24);
  v24 = v1;
  sub_26C3DDD48(v1 + v13, v12, &qword_280497458, &unk_26C46D3F0);
  v14 = *(v3 + 48);
  v15 = 1;
  v16 = v14(v12, 1, v2);
  v17 = v12;
  v18 = v26;
  sub_26C3DE270(v17, &qword_280497458, &unk_26C46D3F0);
  if (v16 != 1)
  {
    sub_26C3DDD48(v24 + v13, v10, &qword_280497458, &unk_26C46D3F0);
    if (v14(v10, 1, v2) == 1)
    {
      v19 = v25;
      *v25 = 0;
      v19[1] = 0;
      v20 = v19 + *(v2 + 24);
      sub_26C46BD14();
      if (v14(v10, 1, v2) != 1)
      {
        sub_26C3DE270(v10, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v19 = v25;
      sub_26C4117F8(v10, v25, type metadata accessor for PBUUID);
    }

    sub_26C40F3CC();
    sub_26C4118B4(v19, type metadata accessor for PBUUID);
    v15 = 0;
  }

  v21 = sub_26C46BB54();
  return (*(*(v21 - 8) + 56))(v18, v15, 1, v21);
}

uint64_t sub_26C40D13C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for PBUUID(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(type metadata accessor for ValueData(0) + 28);
  v24 = v1;
  sub_26C3DDD48(v1 + v13, v12, &qword_280497458, &unk_26C46D3F0);
  v14 = *(v3 + 48);
  v15 = 1;
  v16 = v14(v12, 1, v2);
  v17 = v12;
  v18 = v26;
  sub_26C3DE270(v17, &qword_280497458, &unk_26C46D3F0);
  if (v16 != 1)
  {
    sub_26C3DDD48(v24 + v13, v10, &qword_280497458, &unk_26C46D3F0);
    if (v14(v10, 1, v2) == 1)
    {
      v19 = v25;
      *v25 = 0;
      v19[1] = 0;
      v20 = v19 + *(v2 + 24);
      sub_26C46BD14();
      if (v14(v10, 1, v2) != 1)
      {
        sub_26C3DE270(v10, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v19 = v25;
      sub_26C4117F8(v10, v25, type metadata accessor for PBUUID);
    }

    sub_26C40F3CC();
    sub_26C4118B4(v19, type metadata accessor for PBUUID);
    v15 = 0;
  }

  v21 = sub_26C46BB54();
  return (*(*(v21 - 8) + 56))(v18, v15, 1, v21);
}

uint64_t sub_26C40D428(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_26C46C394();
  if (!v26)
  {
    return sub_26C46C284();
  }

  v48 = v26;
  v52 = sub_26C46C584();
  v39 = sub_26C46C594();
  sub_26C46C564();
  result = sub_26C46C384();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_26C46C3C4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_26C46C574();
      result = sub_26C46C3A4();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C40D848()
{
  v0 = sub_26C46BA94();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_26C46BA84();
  result = sub_26C46BA64();
  qword_280497A78 = v3;
  return result;
}

uint64_t sub_26C40D894()
{
  v0 = sub_26C46BA54();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26C46BA44();
  qword_280497A80 = result;
  return result;
}

uint64_t sub_26C40D8D4(uint64_t a1)
{
  v23 = type metadata accessor for PBUUID(0);
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_26C46BB54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_26C3DDD48(a1, v9, &qword_280497430, &unk_26C46D3D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v9, &qword_280497430, &unk_26C46D3D0);
    v18 = *(type metadata accessor for ModelData(0) + 36);
    v19 = v24;
    sub_26C3DE270(v24 + v18, &qword_280497458, &unk_26C46D3F0);
    return (*(v2 + 56))(v19 + v18, 1, 1, v23);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    sub_26C40F280(v15, v5);
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    (*(v11 + 8))(v17, v10);
    v21 = *(type metadata accessor for ModelData(0) + 36);
    v22 = v24;
    sub_26C3DE270(v24 + v21, &qword_280497458, &unk_26C46D3F0);
    sub_26C4117F8(v5, v22 + v21, type metadata accessor for PBUUID);
    return (*(v2 + 56))(v22 + v21, 0, 1, v23);
  }
}

uint64_t sub_26C40DC0C(uint64_t a1)
{
  v66 = type metadata accessor for PBUUID(0);
  v3 = *(v66 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = (&v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AA0, &qword_26C46E020);
  v6 = *(*(v64 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v64);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v63 = &v56 - v11;
  MEMORY[0x28223BE20](v10);
  v62 = &v56 - v12;
  v13 = type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v56 = v1;
    v73 = MEMORY[0x277D84F90];
    sub_26C42FB78(0, v17, 0);
    v18 = v73;
    v19 = -1 << *(a1 + 32);
    v20 = sub_26C46C494();
    v21 = 0;
    v22 = *(a1 + 36);
    v58 = (v3 + 56);
    v59 = v9 + 8;
    v57 = a1;
    do
    {
      v68 = v21;
      v71 = v18;
      v72 = v17;
      v23 = v62;
      v69 = v22;
      v70 = v20;
      v24 = sub_26C411048(v62, v20, v22, v21 & 1, a1);
      v26 = v25;
      v67 = sub_26C46BB54();
      v27 = *(v67 - 8);
      v28 = v63;
      (*(v27 + 32))(v63, v23, v67);
      v29 = v64;
      v30 = (v28 + *(v64 + 48));
      *v30 = v24;
      v30[1] = v26;
      *v16 = 0;
      *(v16 + 1) = 0xE000000000000000;
      v31 = v61;
      v32 = &v16[*(v61 + 20)];
      sub_26C46BD14();
      v33 = *(v31 + 24);
      v34 = *v58;
      v35 = v66;
      (*v58)(&v16[v33], 1, 1, v66);
      sub_26C3DDD48(v28, v9, &qword_280497AA0, &qword_26C46E020);
      v36 = *&v59[*(v29 + 48)];

      v37 = v9;
      v38 = v65;
      sub_26C40F280(v37, v65);
      sub_26C3DE270(&v16[v33], &qword_280497458, &unk_26C46D3F0);
      v39 = v38;
      v9 = v37;
      sub_26C4117F8(v39, &v16[v33], type metadata accessor for PBUUID);
      v34(&v16[v33], 0, 1, v35);
      sub_26C3E9F28(v28, v37, &qword_280497AA0, &qword_26C46E020);
      v40 = *(v29 + 48);
      v18 = v71;
      v41 = (v37 + v40);
      v43 = *v41;
      v42 = v41[1];
      *v16 = v43;
      *(v16 + 1) = v42;
      (*(v27 + 8))(v37, v67);
      v73 = v18;
      v45 = *(v18 + 16);
      v44 = *(v18 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_26C42FB78(v44 > 1, v45 + 1, 1);
        v18 = v73;
      }

      *(v18 + 16) = v45 + 1;
      sub_26C4117F8(v16, v18 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v45, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
      v46 = v68;
      v48 = v69;
      v47 = v70;
      a1 = v57;
      v49 = sub_26C410FC8(v70, v69, v68 & 1, v57);
      v51 = v50;
      v53 = v52;
      sub_26C411860(v47, v48, v46 & 1);
      v20 = v49;
      v22 = v51;
      v21 = v53;
      v17 = v72 - 1;
    }

    while (v72 != 1);
    sub_26C411860(v49, v51, v53 & 1);

    v1 = v56;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v54 = *(v1 + 16);

  *(v1 + 16) = v18;
  return result;
}

uint64_t sub_26C40E104(uint64_t a1)
{
  v23 = type metadata accessor for PBUUID(0);
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_26C46BB54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_26C3DDD48(a1, v9, &qword_280497430, &unk_26C46D3D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v9, &qword_280497430, &unk_26C46D3D0);
    v18 = *(type metadata accessor for OwnershipChangeBroadcastMessage(0) + 40);
    v19 = v24;
    sub_26C3DE270(v24 + v18, &qword_280497458, &unk_26C46D3F0);
    return (*(v2 + 56))(v19 + v18, 1, 1, v23);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    sub_26C40F280(v15, v5);
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    (*(v11 + 8))(v17, v10);
    v21 = *(type metadata accessor for OwnershipChangeBroadcastMessage(0) + 40);
    v22 = v24;
    sub_26C3DE270(v24 + v21, &qword_280497458, &unk_26C46D3F0);
    sub_26C4117F8(v5, v22 + v21, type metadata accessor for PBUUID);
    return (*(v2 + 56))(v22 + v21, 0, 1, v23);
  }
}

uint64_t sub_26C40E43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v16 = MEMORY[0x277D84F90];
  *a9 = MEMORY[0x277D84F90];
  a9[1] = v16;
  a9[2] = v16;
  a9[3] = v16;
  v17 = a9 + *(type metadata accessor for DictionaryCatchupData(0) + 32);
  sub_26C46BD14();
  v42 = a1;
  v37 = a5;
  v38 = a6;
  v31 = a7;
  v39 = a7;
  v40 = a8;
  v18 = sub_26C46C2E4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
  WitnessTable = swift_getWitnessTable();
  v32 = v19;
  v21 = sub_26C40D428(sub_26C41186C, v36, v18, MEMORY[0x277CC9318], v19, WitnessTable, MEMORY[0x277D84950], &v41);

  if (v9)
  {

    return sub_26C4118B4(a9, type metadata accessor for DictionaryCatchupData);
  }

  else
  {
    v24 = v33;
    v23 = v34;
    *a9 = v21;
    a9[1] = v24;
    a9[2] = v23;
    v42 = v35;
    MEMORY[0x28223BE20](v22);
    v30[2] = a5;
    v30[3] = a6;
    v30[4] = v31;
    v30[5] = a8;
    type metadata accessor for LamportTimestamp(255);
    v25 = sub_26C46C174();
    v26 = type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
    v27 = swift_getWitnessTable();
    v28 = sub_26C40D428(sub_26C411890, v30, v25, v26, v32, v27, MEMORY[0x277D84950], &v41);

    a9[3] = v28;
  }

  return result;
}

uint64_t sub_26C40E6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X5>, uint64_t *a4@<X8>)
{
  if (qword_280497168 != -1)
  {
    swift_once();
  }

  v9 = sub_26C410654(a2, a2);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = *(a2 - 8);
  v13 = *(v12 + 72);
  v14 = *(v12 + 80);
  swift_allocObject();
  sub_26C46C264();
  (*(v12 + 16))(v15, a1, a2);
  sub_26C46C2E4();
  swift_getWitnessTable();
  v16 = sub_26C46BA74();
  if (v4)
  {

    *a3 = v4;
  }

  else
  {
    v19 = v16;
    v20 = v17;

    *a4 = v19;
    a4[1] = v20;
  }

  return result;
}

uint64_t sub_26C40E858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X5>, uint64_t a5@<X8>)
{
  v43 = a4;
  v44 = a3;
  v8 = type metadata accessor for LamportTimestamp(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v36 - v11;
  *a5 = xmmword_26C46D3C0;
  v13 = type metadata accessor for DictionaryCatchupData.TombstoneTimestamp(0);
  v14 = a5 + *(v13 + 20);
  sub_26C46BD14();
  v15 = *(v8 - 8);
  v16 = *(v15 + 56);
  v41 = *(v13 + 24);
  v42 = v8;
  v39 = v15 + 56;
  v40 = v16;
  v16(a5 + v41, 1, 1, v8);
  if (qword_280497168 != -1)
  {
    swift_once();
  }

  v17 = sub_26C410654(a2, a2);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = *(a2 - 8);
  v21 = *(v20 + 72);
  v22 = *(v20 + 80);
  swift_allocObject();
  v23 = sub_26C46C264();
  v25 = v24;
  v26 = *(v46 + 16);
  v46 += 16;
  v38 = v26;
  v26(v12, a1, TupleTypeMetadata2);
  v37 = a1;
  v27 = *(TupleTypeMetadata2 + 48);
  (*(v20 + 32))(v25, v12, a2);
  sub_26C46C2E4();
  sub_26C4118B4(&v12[v27], type metadata accessor for LamportTimestamp);
  v48 = v23;
  v47 = v44;
  swift_getWitnessTable();
  v28 = v45;
  v29 = sub_26C46BA74();
  if (v28)
  {

    result = sub_26C4118B4(a5, type metadata accessor for DictionaryCatchupData.TombstoneTimestamp);
    *v43 = v28;
  }

  else
  {
    v32 = v29;
    v33 = v30;

    sub_26C3DDEA8(*a5, *(a5 + 8));
    *a5 = v32;
    *(a5 + 8) = v33;
    v38(v12, v37, TupleTypeMetadata2);
    v34 = *(TupleTypeMetadata2 + 48);
    v35 = v41;
    sub_26C3DE270(a5 + v41, &qword_280497468, &unk_26C46D400);
    sub_26C4117F8(&v12[v34], a5 + v35, type metadata accessor for LamportTimestamp);
    v40(a5 + v35, 0, 1, v42);
    return (*(v20 + 8))(v12, a2);
  }

  return result;
}

uint64_t sub_26C40EC10(uint64_t a1)
{
  v23 = type metadata accessor for PBUUID(0);
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_26C46BB54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_26C3DDD48(a1, v9, &qword_280497430, &unk_26C46D3D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v9, &qword_280497430, &unk_26C46D3D0);
    v18 = *(type metadata accessor for ValueData(0) + 24);
    v19 = v24;
    sub_26C3DE270(v24 + v18, &qword_280497458, &unk_26C46D3F0);
    return (*(v2 + 56))(v19 + v18, 1, 1, v23);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    sub_26C40F280(v15, v5);
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    (*(v11 + 8))(v17, v10);
    v21 = *(type metadata accessor for ValueData(0) + 24);
    v22 = v24;
    sub_26C3DE270(v24 + v21, &qword_280497458, &unk_26C46D3F0);
    sub_26C4117F8(v5, v22 + v21, type metadata accessor for PBUUID);
    return (*(v2 + 56))(v22 + v21, 0, 1, v23);
  }
}

uint64_t sub_26C40EF48(uint64_t a1)
{
  v23 = type metadata accessor for PBUUID(0);
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_26C46BB54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_26C3DDD48(a1, v9, &qword_280497430, &unk_26C46D3D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v9, &qword_280497430, &unk_26C46D3D0);
    v18 = *(type metadata accessor for ValueData(0) + 28);
    v19 = v24;
    sub_26C3DE270(v24 + v18, &qword_280497458, &unk_26C46D3F0);
    return (*(v2 + 56))(v19 + v18, 1, 1, v23);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    sub_26C40F280(v15, v5);
    sub_26C3DE270(a1, &qword_280497430, &unk_26C46D3D0);
    (*(v11 + 8))(v17, v10);
    v21 = *(type metadata accessor for ValueData(0) + 28);
    v22 = v24;
    sub_26C3DE270(v24 + v21, &qword_280497458, &unk_26C46D3F0);
    sub_26C4117F8(v5, v22 + v21, type metadata accessor for PBUUID);
    return (*(v2 + 56))(v22 + v21, 0, 1, v23);
  }
}

uint64_t sub_26C40F280@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for PBUUID(0) + 24);
  sub_26C46BD14();
  v5 = sub_26C46BB34() >> 56;
  v6 = (sub_26C46BB34() >> 40) & 0xFF00 | v5;
  v7 = (sub_26C46BB34() >> 24) & 0xFF0000;
  v8 = v6 | v7 | (sub_26C46BB34() >> 8) & 0xFF000000;
  v9 = v8 & 0xFFFFFF00FFFFFFFFLL | ((sub_26C46BB34() >> 24) << 32);
  v10 = v9 & 0xFFFF00FFFFFFFFFFLL | ((sub_26C46BB34() >> 16) << 40);
  v11 = v10 & 0xFF00FFFFFFFFFFFFLL | ((sub_26C46BB34() >> 8) << 48);
  *a2 = v11 | (sub_26C46BB34() << 56);
  sub_26C46BB34();
  HIBYTE(v11) = v12;
  sub_26C46BB34();
  v14 = (v13 >> 40) & 0xFF00 | HIBYTE(v11);
  sub_26C46BB34();
  v16 = (v15 >> 24) & 0xFF0000;
  sub_26C46BB34();
  v18 = v14 | v16 | (v17 >> 8) & 0xFF000000;
  sub_26C46BB34();
  v20 = v18 & 0xFFFFFF00FFFFFFFFLL | (v19 << 32);
  sub_26C46BB34();
  v22 = v20 & 0xFFFF00FFFFFFFFFFLL | (v21 << 40);
  sub_26C46BB34();
  v24 = v22 & 0xFF00FFFFFFFFFFFFLL | (v23 << 48);
  sub_26C46BB34();
  v26 = v25;
  v27 = sub_26C46BB54();
  result = (*(*(v27 - 8) + 8))(a1, v27);
  a2[1] = v24 | (v26 << 56);
  return result;
}

uint64_t sub_26C40F3CC()
{
  v1 = *v0;
  v3 = v0[1];
  return sub_26C46BB24();
}

uint64_t sub_26C40F448@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for PBUUID(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(type metadata accessor for ModelData(0) + 36);
  v24 = v1;
  sub_26C3DDD48(v1 + v13, v12, &qword_280497458, &unk_26C46D3F0);
  v14 = *(v3 + 48);
  v15 = 1;
  v16 = v14(v12, 1, v2);
  v17 = v12;
  v18 = v26;
  sub_26C3DE270(v17, &qword_280497458, &unk_26C46D3F0);
  if (v16 != 1)
  {
    sub_26C3DDD48(v24 + v13, v10, &qword_280497458, &unk_26C46D3F0);
    if (v14(v10, 1, v2) == 1)
    {
      v19 = v25;
      *v25 = 0;
      v19[1] = 0;
      v20 = v19 + *(v2 + 24);
      sub_26C46BD14();
      if (v14(v10, 1, v2) != 1)
      {
        sub_26C3DE270(v10, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v19 = v25;
      sub_26C4117F8(v10, v25, type metadata accessor for PBUUID);
    }

    sub_26C40F3CC();
    sub_26C4118B4(v19, type metadata accessor for PBUUID);
    v15 = 0;
  }

  v21 = sub_26C46BB54();
  return (*(*(v21 - 8) + 56))(v18, v15, 1, v21);
}

uint64_t sub_26C40F708@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for PBUUID(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *(type metadata accessor for OwnershipChangeBroadcastMessage(0) + 40);
  v24 = v1;
  sub_26C3DDD48(v1 + v13, v12, &qword_280497458, &unk_26C46D3F0);
  v14 = *(v3 + 48);
  v15 = 1;
  v16 = v14(v12, 1, v2);
  v17 = v12;
  v18 = v26;
  sub_26C3DE270(v17, &qword_280497458, &unk_26C46D3F0);
  if (v16 != 1)
  {
    sub_26C3DDD48(v24 + v13, v10, &qword_280497458, &unk_26C46D3F0);
    if (v14(v10, 1, v2) == 1)
    {
      v19 = v25;
      *v25 = 0;
      v19[1] = 0;
      v20 = v19 + *(v2 + 24);
      sub_26C46BD14();
      if (v14(v10, 1, v2) != 1)
      {
        sub_26C3DE270(v10, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v19 = v25;
      sub_26C4117F8(v10, v25, type metadata accessor for PBUUID);
    }

    sub_26C40F3CC();
    sub_26C4118B4(v19, type metadata accessor for PBUUID);
    v15 = 0;
  }

  v21 = sub_26C46BB54();
  return (*(*(v21 - 8) + 56))(v18, v15, 1, v21);
}

uint64_t sub_26C40F9C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_26C46BD44();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LamportTimestamp(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 0;
  v13 = &v12[*(v10 + 20)];
  sub_26C46BD14();
  v14 = *(v8 + 24);
  v15 = type metadata accessor for PBUUID(0);
  (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C46C884();
  if (v2)
  {
    sub_26C4118B4(v12, type metadata accessor for LamportTimestamp);
  }

  else
  {
    v19 = v4;
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_26C3E0208();
    sub_26C46C774();
    v17 = v21[0];
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_26C46BD34();
    sub_26C40FE90(&qword_280497A90);
    sub_26C46BE94();
    sub_26C3DDEA8(v17, *(&v17 + 1));
    (*(v24 + 8))(v7, v19);
    sub_26C3DE270(v21, &qword_280497A98, &qword_26C46E008);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_26C4117F8(v12, v20, type metadata accessor for LamportTimestamp);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26C40FD04(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C46C8A4();
  type metadata accessor for LamportTimestamp(0);
  sub_26C40FE90(&qword_280497A90);
  v3 = sub_26C46BE64();
  if (!v1)
  {
    v6 = v3;
    v7 = v4;
    __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_26C3E031C();
    sub_26C46C784();
    sub_26C3DDEA8(v6, v7);
  }

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_26C40FE90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LamportTimestamp(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26C40FED4()
{
  v1 = type metadata accessor for ModelData.PropertyDataMap(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v7 = *(v6 + 16);
  if (v7)
  {
    v21 = MEMORY[0x277D84F90];
    sub_26C42FBBC(0, v7, 0);
    v8 = v21;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_26C411790(v9, v5, type metadata accessor for ModelData.PropertyDataMap);
      v11 = *v5;
      v12 = *(v5 + 1);
      v13 = *(v5 + 2);
      sub_26C3DDDB0(v12, v13);
      sub_26C4118B4(v5, type metadata accessor for ModelData.PropertyDataMap);
      v21 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26C42FBBC((v14 > 1), v15 + 1, 1);
        v8 = v21;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 24 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      *(v16 + 48) = v13;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else if (!*(MEMORY[0x277D84F90] + 16))
  {
    v17 = MEMORY[0x277D84F98];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497348, &qword_26C46D138);
  v17 = sub_26C46C624();
LABEL_9:
  v21 = v17;

  sub_26C4106C8(v18, 1, &v21);

  return v21;
}

uint64_t sub_26C410104()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v39 = &v34 - v3;
  v38 = type metadata accessor for PBUUID(0);
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier(0);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497598, &unk_26C46E010);
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  v16 = *(v0 + 16);
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v40 = MEMORY[0x277D84F90];
    sub_26C42FBDC(0, v17, 0);
    v18 = v40;
    v19 = v8;
    v20 = v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v21 = (v4 + 48);
    v34 = *(v19 + 72);
    do
    {
      sub_26C411790(v20, v11, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
      v22 = v39;
      sub_26C3DDD48(v11 + *(v37 + 24), v39, &qword_280497458, &unk_26C46D3F0);
      v23 = *v21;
      v24 = v38;
      if ((*v21)(v22, 1, v38) == 1)
      {
        *v7 = 0;
        v7[1] = 0;
        v25 = v7 + *(v24 + 24);
        sub_26C46BD14();
        if (v23(v22, 1, v24) != 1)
        {
          sub_26C3DE270(v22, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        sub_26C4117F8(v22, v7, type metadata accessor for PBUUID);
      }

      v26 = &v15[*(v36 + 48)];
      sub_26C40F3CC();
      sub_26C4118B4(v7, type metadata accessor for PBUUID);
      v28 = *v11;
      v27 = v11[1];

      sub_26C4118B4(v11, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
      *v26 = v28;
      *(v26 + 1) = v27;
      v40 = v18;
      v30 = *(v18 + 16);
      v29 = *(v18 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_26C42FBDC(v29 > 1, v30 + 1, 1);
        v18 = v40;
      }

      *(v18 + 16) = v30 + 1;
      sub_26C3E9F28(v15, v18 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, &qword_280497598, &unk_26C46E010);
      v20 += v34;
      --v17;
    }

    while (v17);
  }

  if (*(v18 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497340, &qword_26C46D130);
    v31 = sub_26C46C624();
  }

  else
  {
    v31 = MEMORY[0x277D84F98];
  }

  v40 = v31;

  sub_26C410A5C(v32, 1, &v40);

  return v40;
}

uint64_t sub_26C410598()
{
  sub_26C46C814();
  MEMORY[0x26D6A1230](0);
  return sub_26C46C844();
}

uint64_t sub_26C410604()
{
  sub_26C46C814();
  MEMORY[0x26D6A1230](0);
  return sub_26C46C844();
}

uint64_t sub_26C410654(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AA8, qword_26C46E028);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

void sub_26C4106C8(uint64_t a1, char a2, void *a3)
{
  v39 = *(a1 + 16);
  if (!v39)
  {
    goto LABEL_3;
  }

  LOBYTE(v5) = a2;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  sub_26C3DDDB0(v8, v7);
  if (v7 >> 60 == 15)
  {
    goto LABEL_3;
  }

  v9 = *a3;
  v10 = sub_26C42C1C8(v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_26C3DAA08(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_26C42C1C8(v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = sub_26C46C7A4();
    __break(1u);
  }

  if (v5)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v22[6] + 4 * v10) = v6;
    v23 = (v22[7] + 16 * v10);
    *v23 = v8;
    v23[1] = v7;
    v24 = v22[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v14)
    {
      v22[2] = v25;
      if (v39 == 1)
      {
LABEL_3:

        return;
      }

      v5 = (a1 + 72);
      v26 = 1;
      while (v26 < *(a1 + 16))
      {
        v6 = *(v5 - 4);
        v8 = *(v5 - 1);
        v7 = *v5;
        sub_26C3DDDB0(v8, *v5);
        if (v7 >> 60 == 15)
        {
          goto LABEL_3;
        }

        v27 = *a3;
        v28 = sub_26C42C1C8(v6);
        v30 = v27[2];
        v31 = (v29 & 1) == 0;
        v14 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v14)
        {
          goto LABEL_25;
        }

        v16 = v29;
        if (v27[3] < v32)
        {
          sub_26C3DAA08(v32, 1);
          v33 = *a3;
          v28 = sub_26C42C1C8(v6);
          if ((v16 & 1) != (v34 & 1))
          {
            goto LABEL_7;
          }
        }

        if (v16)
        {
          goto LABEL_10;
        }

        v35 = *a3;
        *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        *(v35[6] + 4 * v28) = v6;
        v36 = (v35[7] + 16 * v28);
        *v36 = v8;
        v36[1] = v7;
        v37 = v35[2];
        v14 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v14)
        {
          goto LABEL_26;
        }

        ++v26;
        v35[2] = v38;
        v5 += 3;
        if (v39 == v26)
        {
          goto LABEL_3;
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = v10;
  sub_26C42EE4C();
  v10 = v21;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = swift_allocError();
  swift_willThrow();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_26C3DDEA8(v8, v7);

    return;
  }

LABEL_28:
  sub_26C46C524();
  MEMORY[0x26D6A0C00](0xD00000000000001BLL, 0x800000026C475C50);
  sub_26C46C5B4();
  MEMORY[0x26D6A0C00](39, 0xE100000000000000);
  sub_26C46C5E4();
  __break(1u);
}

void sub_26C410A5C(uint64_t a1, char a2, uint64_t *a3)
{
  v7 = sub_26C46BB54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497598, &unk_26C46E010);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = &v64 - v16;
  v71 = *(a1 + 16);
  if (!v71)
  {
    goto LABEL_22;
  }

  v18 = &v17[*(v14 + 48)];
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v70 = *(v15 + 72);
  v72 = a1;
  v65 = v19;
  v66 = v3;
  sub_26C3DDD48(a1 + v19, &v64 - v16, &qword_280497598, &unk_26C46E010);
  v67 = v8;
  v73 = *(v8 + 32);
  v74 = v7;
  v73(v11, v17, v7);
  v69 = v18;
  v20 = *v18;
  v21 = *(v18 + 1);
  v75 = a3;
  v22 = *a3;
  v23 = sub_26C42C210(v11);
  v25 = *(v22 + 16);
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v24;
  if (*(v22 + 24) < v28)
  {
    v30 = v75;
    sub_26C3DAC84(v28, a2 & 1);
    v31 = *v30;
    v23 = sub_26C42C210(v11);
    if ((v29 & 1) != (v32 & 1))
    {
LABEL_5:
      sub_26C46C7A4();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v29)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v35 = v23;
  sub_26C42EFB4();
  v23 = v35;
  if (v29)
  {
LABEL_9:
    v33 = swift_allocError();
    swift_willThrow();
    v78 = v33;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497460, qword_26C46DAA0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v67 + 8))(v11, v74);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v36 = v74;
  v37 = *v75;
  *(*v75 + 8 * (v23 >> 6) + 64) |= 1 << v23;
  v38 = v37[6];
  v68 = *(v67 + 72);
  v39 = v23;
  v73((v38 + v68 * v23), v11, v36);
  v40 = (v37[7] + 16 * v39);
  *v40 = v20;
  v40[1] = v21;
  v41 = v37[2];
  v27 = __OFADD__(v41, 1);
  v42 = v41 + 1;
  if (!v27)
  {
    v37[2] = v42;
    v43 = v72;
    if (v71 == 1)
    {
LABEL_22:

      return;
    }

    v44 = v72 + v70 + v65;
    v45 = 1;
    while (v45 < *(v43 + 16))
    {
      sub_26C3DDD48(v44, v17, &qword_280497598, &unk_26C46E010);
      v73(v11, v17, v74);
      v46 = *v69;
      v47 = *(v69 + 1);
      v48 = *v75;
      v49 = sub_26C42C210(v11);
      v51 = *(v48 + 16);
      v52 = (v50 & 1) == 0;
      v27 = __OFADD__(v51, v52);
      v53 = v51 + v52;
      if (v27)
      {
        goto LABEL_23;
      }

      v54 = v50;
      if (*(v48 + 24) < v53)
      {
        v55 = v75;
        sub_26C3DAC84(v53, 1);
        v56 = *v55;
        v49 = sub_26C42C210(v11);
        if ((v54 & 1) != (v57 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v54)
      {
        goto LABEL_9;
      }

      v58 = v74;
      v59 = *v75;
      *(*v75 + 8 * (v49 >> 6) + 64) |= 1 << v49;
      v60 = v49;
      v73((v59[6] + v68 * v49), v11, v58);
      v61 = (v59[7] + 16 * v60);
      *v61 = v46;
      v61[1] = v47;
      v62 = v59[2];
      v27 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v27)
      {
        goto LABEL_24;
      }

      ++v45;
      v59[2] = v63;
      v44 += v70;
      v43 = v72;
      if (v71 == v45)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_26C46C524();
  MEMORY[0x26D6A0C00](0xD00000000000001BLL, 0x800000026C475C50);
  sub_26C46C5B4();
  MEMORY[0x26D6A0C00](39, 0xE100000000000000);
  sub_26C46C5E4();
  __break(1u);
}

uint64_t sub_26C410FC8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_26C46C4B4();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26C411048(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v7 = result;
    v8 = *(a5 + 48);
    v9 = sub_26C46BB54();
    (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
    v10 = (*(a5 + 56) + 16 * a2);
    v11 = *v10;
    v12 = v10[1];

    return v11;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26C41111C(_DWORD *a1, _DWORD *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for PBUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v55 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v63 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v55 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v55 - v22;
  v24 = sub_26C46BB54();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v27 = MEMORY[0x28223BE20](v26);
  if (*a1 >= *a2)
  {
    if (*a1 == *a2)
    {
      v58 = a2;
      v59 = v30;
      v61 = v27;
      v62 = &v55 - v28;
      v60 = v29;
      v56 = v9;
      v57 = type metadata accessor for LamportTimestamp(0);
      v55 = *(v57 + 24);
      sub_26C3DDD48(a1 + v55, v23, &qword_280497458, &unk_26C46D3F0);
      v32 = *(v5 + 48);
      v33 = v32(v23, 1, v4);
      sub_26C3DE270(v23, &qword_280497458, &unk_26C46D3F0);
      if (v33 == 1)
      {
        v34 = v32;
        v35 = v58;
        if (qword_280497190 != -1)
        {
          swift_once();
        }

        v36 = v61;
        v37 = __swift_project_value_buffer(v61, qword_2804985C0);
        (*(v60 + 16))(v62, v37, v36);
      }

      else
      {
        sub_26C3DDD48(a1 + v55, v21, &qword_280497458, &unk_26C46D3F0);
        if (v32(v21, 1, v4) == 1)
        {
          *v11 = 0;
          v11[1] = 0;
          v38 = v11 + *(v4 + 24);
          sub_26C46BD14();
          v39 = v4;
          v34 = v32;
          v40 = v32(v21, 1, v4);
          v35 = v58;
          if (v40 != 1)
          {
            sub_26C3DE270(v21, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v39 = v4;
          v34 = v32;
          sub_26C4117F8(v21, v11, type metadata accessor for PBUUID);
          v35 = v58;
        }

        sub_26C40F3CC();
        sub_26C4118B4(v11, type metadata accessor for PBUUID);
        v4 = v39;
      }

      v41 = *(v57 + 24);
      sub_26C3DDD48(v35 + v41, v18, &qword_280497458, &unk_26C46D3F0);
      v42 = v34(v18, 1, v4);
      sub_26C3DE270(v18, &qword_280497458, &unk_26C46D3F0);
      if (v42 == 1)
      {
        if (qword_280497190 != -1)
        {
          swift_once();
        }

        v43 = v61;
        v44 = __swift_project_value_buffer(v61, qword_2804985C0);
        v46 = v59;
        v45 = v60;
        (*(v60 + 16))(v59, v44, v43);
      }

      else
      {
        v47 = v63;
        sub_26C3DDD48(v35 + v41, v63, &qword_280497458, &unk_26C46D3F0);
        if (v34(v47, 1, v4) == 1)
        {
          v48 = v56;
          *v56 = 0;
          v48[1] = 0;
          v49 = v48 + *(v4 + 24);
          sub_26C46BD14();
          v50 = v34(v47, 1, v4);
          v45 = v60;
          v43 = v61;
          v46 = v59;
          if (v50 != 1)
          {
            sub_26C3DE270(v47, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v48 = v56;
          sub_26C4117F8(v47, v56, type metadata accessor for PBUUID);
          v45 = v60;
          v43 = v61;
          v46 = v59;
        }

        sub_26C40F3CC();
        sub_26C4118B4(v48, type metadata accessor for PBUUID);
      }

      v51 = v62;
      v52 = memcmp(v62, v46, v25);
      v53 = *(v45 + 8);
      v53(v46, v43);
      v53(v51, v43);
      result = v52 >> 31;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C411790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C4117F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C411860(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26C41186C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  return sub_26C40E6AC(a1, v3[2], a2, a3);
}

uint64_t sub_26C411890@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[3];
  v5 = v3[5];
  return sub_26C40E858(a1, v3[2], v3[4], a2, a3);
}

uint64_t sub_26C4118B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26C411914()
{
  result = qword_280497AB0;
  if (!qword_280497AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497AB0);
  }

  return result;
}

unint64_t sub_26C41197C()
{
  result = qword_280497AB8;
  if (!qword_280497AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497AB8);
  }

  return result;
}

uint64_t sub_26C4119D0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_26C411A3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v5 = HIDWORD(a2) - a2;
  }

LABEL_11:
  v8 = ceilf(v5 / result);
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v8 <= -9.2234e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v8 >= 9.2234e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = v8;
  if (v8 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v9)
  {
    v19 = v5;
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v10 * v3;
      if ((v10 * v3) >> 64 != (v10 * v3) >> 63)
      {
        break;
      }

      v12 = v3;
      if (v9 == 1)
      {
        v12 = v19 - result;
        if (__OFSUB__(v19, result))
        {
          goto LABEL_33;
        }
      }

      if (__OFADD__(result, v12))
      {
        goto LABEL_31;
      }

      if (result + v12 < result)
      {
        goto LABEL_32;
      }

      v13 = sub_26C46BAC4();
      v15 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_26C42BA84(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_26C42BA84((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      ++v10;
      if (!--v9)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26C411C28(void (*a1)(_BYTE *))
{
  v3 = type metadata accessor for SyncedModelOwnerState();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C412BBC(v1 + v10, v9);
  v11 = sub_26C46BCD4();
  v12 = *(*(v11 - 8) + 56);
  v12(v7, 2, 2, v11);
  v13 = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v9, v7);
  sub_26C3DD6A8(v7);
  sub_26C3DD6A8(v9);
  if (v13)
  {
    v22[0] = 0;
    return (a1)(v22);
  }

  v14 = *(v1 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
  if (!v14)
  {
    v22[0] = 1;
    return (a1)(v22);
  }

  v20 = v1;
  v21 = a1;
  v15 = *(v1 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership + 8);

  if (v14(v16))
  {
    v12(v9, 2, 2, v11);
    v17 = v20;
    sub_26C412BBC(v20 + v10, v7);
    swift_beginAccess();
    sub_26C3DD644(v9, v17 + v10);
    swift_endAccess();
    sub_26C412324(v7);
    sub_26C3DD6A8(v7);
    sub_26C3DD6A8(v9);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v22[0] = v18;
  v21(v22);
  return sub_26C3DD730(v14);
}

uint64_t sub_26C411E5C()
{
  v1 = type metadata accessor for SyncedModelOwnerState();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v8 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C412BBC(v0 + v8, v7);
  v9 = sub_26C46BCD4();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 2, 2, v9);
  v11 = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v7, v5);
  sub_26C3DD6A8(v5);
  result = sub_26C3DD6A8(v7);
  if (v11)
  {
    v10(v7, 1, 2, v9);
    sub_26C412BBC(v0 + v8, v5);
    swift_beginAccess();
    sub_26C3DD644(v7, v0 + v8);
    swift_endAccess();
    sub_26C412324(v5);
    sub_26C3DD6A8(v5);
    return sub_26C3DD6A8(v7);
  }

  return result;
}

uint64_t sub_26C411FF4()
{
  v1 = type metadata accessor for SyncedModelOwnerState();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C412BBC(v0 + v8, v7);
  v9 = sub_26C46BCD4();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 2, 2, v9);
  v11 = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v7, v5);
  sub_26C3DD6A8(v5);
  sub_26C3DD6A8(v7);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    sub_26C412BBC(v0 + v8, v7);
    v10(v5, 1, 2, v9);
    v12 = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v7, v5);
    sub_26C3DD6A8(v5);
    sub_26C3DD6A8(v7);
  }

  return v12 & 1;
}

uint64_t sub_26C412178@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SyncedModelOwnerState();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C412BBC(v1 + v10, v9);
  sub_26C412C20(v9, v7);
  v11 = sub_26C46BCD4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 2, v11);
  if (v13)
  {
    if (v13 == 1)
    {
      return (*(v12 + 56))(a1, 1, 1, v11);
    }

    else
    {
      v15 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant;
      swift_beginAccess();
      return sub_26C412C84(v1 + v15, a1);
    }
  }

  else
  {
    (*(v12 + 32))(a1, v7, v11);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_26C412324(uint64_t a1)
{
  v3 = type metadata accessor for SyncedModelOwnerState();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v31 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15);
  v20 = v31 - v19;
  v21 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler);
  if (v21)
  {
    v31[1] = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler + 8);
    v32 = v21;
    sub_26C412BBC(a1, v12);
    v22 = sub_26C46BCD4();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    v25 = v24(v12, 2, v22);
    if (v25)
    {
      if (v25 == 1)
      {
        (*(v23 + 56))(v20, 1, 1, v22);
      }

      else
      {
        v26 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant;
        swift_beginAccess();
        sub_26C412C84(v1 + v26, v20);
      }
    }

    else
    {
      (*(v23 + 32))(v20, v12, v22);
      (*(v23 + 56))(v20, 0, 1, v22);
    }

    v27 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
    swift_beginAccess();
    sub_26C412BBC(v1 + v27, v10);
    sub_26C412C20(v10, v7);
    v28 = v24(v7, 2, v22);
    if (v28)
    {
      if (v28 == 1)
      {
        (*(v23 + 56))(v17, 1, 1, v22);
      }

      else
      {
        v29 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant;
        swift_beginAccess();
        sub_26C412C84(v1 + v29, v17);
      }
    }

    else
    {
      (*(v23 + 32))(v17, v7, v22);
      (*(v23 + 56))(v17, 0, 1, v22);
    }

    v30 = v32;

    v30(v20, v17);
    sub_26C3DD730(v30);
    sub_26C412B54(v17);
    return sub_26C412B54(v20);
  }

  return result;
}

uint64_t sub_26C41267C(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3)
{
  v22 = a3;
  v23 = a1;
  v5 = type metadata accessor for SyncedModelOwnerState();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  swift_beginAccess();
  sub_26C412BBC(v3 + v12, v11);
  v13 = sub_26C46BCD4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v9, 2, 2, v13);
  v16 = _s12SyncedModels0A15ModelOwnerStateO2eeoiySbAC_ACtFZ_0(v11, v9);
  sub_26C3DD6A8(v9);
  sub_26C3DD6A8(v11);
  if (v16)
  {
    v17 = *(v3 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler);
    if (v17)
    {
      v20 = v3;
      v21 = a2;
      v18 = *(v3 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler + 8);

      if ((v17(v23) & 1) == 0)
      {
        v24[0] = 1;
        v21(v24);
        return sub_26C3DD730(v17);
      }

      sub_26C3DD730(v17);
      v3 = v20;
      a2 = v21;
    }
  }

  (*(v14 + 16))(v11, v23, v13);
  v15(v11, 0, 2, v13);
  sub_26C412BBC(v3 + v12, v9);
  swift_beginAccess();
  sub_26C3DD644(v11, v3 + v12);
  swift_endAccess();
  sub_26C412324(v9);
  sub_26C3DD6A8(v9);
  sub_26C3DD6A8(v11);
  v24[0] = 0;
  return (a2)(v24);
}

uint64_t sub_26C4128DC()
{
  sub_26C3DD6A8(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState);
  sub_26C412B54(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant);
  v1 = *(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
  v2 = *(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership + 8);

  return sub_26C3DD730(v1);
}

uint64_t sub_26C412930()
{
  v0 = sub_26C413B98();
  v1 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;

  sub_26C3DD6A8(v2 + v1);
  sub_26C412B54(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant);
  v3 = *(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership + 8);
  sub_26C3DD730(*(v0 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership));

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TestSyncedModelController()
{
  result = qword_280497AC0;
  if (!qword_280497AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C412A28()
{
  v0 = type metadata accessor for SyncedModelOwnerState();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26C412AFC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26C412AFC()
{
  if (!qword_280497AD0)
  {
    sub_26C46BCD4();
    v0 = sub_26C46C474();
    if (!v1)
    {
      atomic_store(v0, &qword_280497AD0);
    }
  }
}

uint64_t sub_26C412B54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C412BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedModelOwnerState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C412C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncedModelOwnerState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C412C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C412CF4(uint64_t a1)
{
  v2 = type metadata accessor for TestSyncedModelController();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_ownerState;
  v7 = sub_26C46BCD4();
  v8 = *(*(v7 - 8) + 56);
  v8(v5 + v6, 1, 2, v7);
  v8(v5 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_localParticipant, 1, 1, v7);
  v9 = (v5 + OBJC_IVAR____TtC12SyncedModels25TestSyncedModelController_shouldReceiveOwnership);
  *v9 = 0;
  v9[1] = 0;

  return sub_26C43076C(a1, v5);
}

uint64_t sub_26C412DEC()
{
  v0 = sub_26C46BBB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26C46BBA4();
  qword_280497AD8 = result;
  return result;
}

uint64_t sub_26C412E60(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v15 = a3;
  v14 = a2;
  v16 = sub_26C46C874();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v16);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497178 != -1)
  {
    swift_once();
  }

  sub_26C46BB84();

  *(&v24 + 1) = swift_getObjectType();
  *&v23 = a1;
  swift_unknownObjectRetain();
  sub_26C46C854();
  sub_26C46C864();
  sub_26C46C5A4();

  sub_26C46C644();
  if (!v25)
  {
LABEL_6:

    v8 = sub_26C4134D0(a1, v14);
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  while (1)
  {
    v21 = v23;
    sub_26C413118(&v24, v22);
    v18 = v21;
    v19 = v22[0];
    v20 = v22[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AE0, "|8");
    if (swift_dynamicCast())
    {
      break;
    }

    sub_26C46C644();
    if (!v25)
    {
      goto LABEL_6;
    }
  }

  v9 = (*(*v17 + 144))(v11);

  if (!v9)
  {
    v8 = v14(v12);
    goto LABEL_7;
  }

LABEL_8:
  (*(v4 + 8))(v7, v16);

  sub_26C46BB94();

  return v9;
}

_OWORD *sub_26C413118(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26C413128()
{
  v0 = sub_26C46BBB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26C46BBA4();
  qword_280497AE8 = result;
  return result;
}

void *sub_26C413168()
{
  result = sub_26C3E9790(MEMORY[0x277D84F90]);
  off_280497AF0 = result;
  return result;
}

uint64_t sub_26C4131B4()
{
  if (qword_280497188 != -1)
  {
LABEL_26:
    swift_once();
  }

  swift_beginAccess();
  v0 = off_280497AF0;
  v1 = off_280497AF0 + 64;
  v2 = 1 << *(off_280497AF0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(off_280497AF0 + 8);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v6;
    if (!v4)
    {
      break;
    }

LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = (v6 << 9) | (8 * v8);
    v10 = *(v0[6] + v9);
    sub_26C3DDFB4(v0[7] + v9, &v28);
    v27 = v10;
    sub_26C4136A4(&v27, &v29);
    Strong = swift_weakLoadStrong();
    sub_26C413714(v30);
    if (Strong)
    {

      sub_26C3DE270(&v27, &qword_280497AF8, &qword_26C46E228);
    }

    else
    {
      sub_26C413744(&v27, &v29);
      v24 = v29;
      sub_26C413714(v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_26C42BB90(0, *(v25 + 2) + 1, 1, v25);
      }

      v13 = *(v25 + 2);
      v12 = *(v25 + 3);
      if (v13 >= v12 >> 1)
      {
        v25 = sub_26C42BB90((v12 > 1), v13 + 1, 1, v25);
      }

      *(v25 + 2) = v13 + 1;
      *&v25[8 * v13 + 32] = v24;
    }
  }

  while (1)
  {
    v6 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v6 >= v5)
    {
      break;
    }

    v4 = *&v1[8 * v6];
    ++v7;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  v14 = *(v25 + 2);
  if (v14)
  {
    v15 = (v25 + 32);
    do
    {
      v16 = *v15;
      swift_beginAccess();
      v17 = sub_26C42C320(v16);
      v19 = v18;
      if (v18)
      {
        v20 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = off_280497AF0;
        v26 = off_280497AF0;
        off_280497AF0 = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_26C42E6FC();
          v22 = v26;
        }

        sub_26C3DDEFC(v22[7] + 8 * v20, &v29);
        sub_26C42D300(v20, v22);
        off_280497AF0 = v22;
      }

      else
      {
        v29 = 0;
      }

      v30[0] = (v19 & 1) == 0;
      swift_endAccess();
      sub_26C3DE270(&v29, &qword_280497368, &qword_26C46E220);
      ++v15;
      --v14;
    }

    while (v14);
  }
}

uint64_t sub_26C4134D0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280497180 != -1)
  {
    swift_once();
  }

  sub_26C46BB84();

  sub_26C4131B4();
  if (qword_280497188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_280497AF0;
  if (!*(off_280497AF0 + 2) || (v5 = sub_26C42C320(a1), (v6 & 1) == 0))
  {
    v10 = 0;
    v11 = 1;
    sub_26C3DE270(&v10, &qword_280497368, &qword_26C46E220);
    v8 = swift_endAccess();
LABEL_10:
    Strong = a2(v8);
    swift_weakInit();
    v11 = 0;
    swift_beginAccess();
    sub_26C3D8AA4(&v10, a1);
    swift_endAccess();
    goto LABEL_11;
  }

  sub_26C3DDFB4(v4[7] + 8 * v5, &v10);
  v11 = 0;
  Strong = swift_weakLoadStrong();
  sub_26C3DE270(&v10, &qword_280497368, &qword_26C46E220);
  v8 = swift_endAccess();
  if (!Strong)
  {
    goto LABEL_10;
  }

LABEL_11:

  sub_26C46BB94();

  return Strong;
}

uint64_t sub_26C4136A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AF8, &qword_26C46E228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C413744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AF8, &qword_26C46E228);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C4137B4(uint64_t a1, int a2)
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

uint64_t sub_26C4137D4(uint64_t result, int a2, int a3)
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

uint64_t sub_26C41385C(uint64_t a1)
{
  v3 = type metadata accessor for ModelData.PropertyDataMap(0);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v31 = v1;
  v41 = MEMORY[0x277D84F90];
  sub_26C42FB34(0, v7, 0);
  v8 = v41;
  v9 = a1 + 64;
  v10 = -1 << *(a1 + 32);
  result = sub_26C46C494();
  v12 = result;
  v13 = 0;
  v40 = *(a1 + 36);
  v32 = a1 + 72;
  v35 = xmmword_26C46D3C0;
  v33 = v7;
  v34 = a1;
  v36 = a1 + 64;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    if (v40 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v39 = v13;
    v16 = v8;
    v17 = *(*(a1 + 48) + 4 * v12);
    v18 = (*(a1 + 56) + 16 * v12);
    v19 = *v18;
    v20 = v18[1];
    *(v6 + 8) = v35;
    v21 = *(v38 + 24);
    sub_26C3DDDB0(v19, v20);
    sub_26C46BD14();
    *v6 = v17;
    v8 = v16;
    sub_26C3DDEA8(*(v6 + 1), *(v6 + 2));
    *(v6 + 1) = v19;
    *(v6 + 2) = v20;
    v41 = v16;
    v23 = *(v16 + 16);
    v22 = *(v16 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_26C42FB34(v22 > 1, v23 + 1, 1);
      v8 = v41;
    }

    *(v8 + 16) = v23 + 1;
    result = sub_26C42B9BC(v6, v8 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v23, type metadata accessor for ModelData.PropertyDataMap);
    a1 = v34;
    v14 = 1 << *(v34 + 32);
    v9 = v36;
    if (v12 >= v14)
    {
      goto LABEL_24;
    }

    v24 = *(v36 + 8 * v15);
    if ((v24 & (1 << v12)) == 0)
    {
      goto LABEL_25;
    }

    if (v40 != *(v34 + 36))
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v12 & 0x3F));
    if (v25)
    {
      v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v15 << 6;
      v27 = v15 + 1;
      v28 = (v32 + 8 * v15);
      while (v27 < (v14 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_26C411860(v12, v40, 0);
          v14 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_26C411860(v12, v40, 0);
    }

LABEL_4:
    v13 = v39 + 1;
    v12 = v14;
    if (v39 + 1 == v33)
    {
      return v8;
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

uint64_t sub_26C413B98()
{
  v1 = v0;
  v2 = sub_26C46C0A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C46C0D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + 40);
    v35 = v3;
    v33 = v13;

    v14 = swift_allocObject();
    v34 = v8;
    v15 = v14;
    swift_weakInit();
    aBlock[4] = sub_26C430F6C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26C3DF384;
    aBlock[3] = &block_descriptor_106;
    v16 = _Block_copy(aBlock);

    sub_26C46C0C4();
    v36 = MEMORY[0x277D84F90];
    sub_26C431280(&qword_2804973F8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497400, &qword_26C46D290);
    v32 = v7;
    sub_26C3FBC1C(&qword_280497408, &qword_280497400, &qword_26C46D290);
    sub_26C46C484();
    v17 = v33;
    MEMORY[0x26D6A0E60](0, v11, v6, v16);
    _Block_release(v16);

    (*(v35 + 8))(v6, v2);
    (*(v34 + 8))(v11, v32);
  }

  swift_weakDestroy();
  v18 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  v19 = sub_26C46BB54();
  v20 = *(*(v19 - 8) + 8);
  v20(v1 + v18, v19);
  v21 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties);

  sub_26C3DE270(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__transaction, &qword_280497B90, &qword_26C46E548);
  v22 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_transactionLock);

  v20(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v19);
  v23 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants);

  sub_26C3DE270(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant, &qword_280497268, &qword_26C46CFE0);
  sub_26C3DE270(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID, &qword_280497430, &unk_26C46D3D0);
  v24 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler + 8);
  sub_26C3DD730(*(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler));
  v25 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_cancellables);

  sub_26C3DE270(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__pendingOwnershipRequest, &qword_280497B80, &unk_26C46E518);
  v26 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingReply);

  v27 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingHandoffReply);

  v28 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler + 8);
  sub_26C3DD730(*(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler));
  v29 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_status);

  return v1;
}

uint64_t sub_26C41409C()
{
  v1 = v0;
  v2 = sub_26C46BB54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v8 = *(v7 - 8);
  v89 = v7;
  v90 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v84 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = v80 - v13;
  v14 = sub_26C46BCF4();
  v87 = *(v14 - 8);
  v88 = v14;
  v15 = *(v87 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for SyncMessage(0);
  v18 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v20 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B90, &qword_26C46E548);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v80 - v23;
  v25 = type metadata accessor for SyncTransactionMessage(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v92 = (v80 - v31);
  result = swift_weakLoadStrong();
  if (result)
  {
    v91 = result;
    v81 = v6;
    v82 = v3;
    v83 = v2;
    v33 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_transactionLock);
    sub_26C46BB84();
    v34 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__transaction;
    swift_beginAccess();
    sub_26C3DDD48(v1 + v34, v24, &qword_280497B90, &qword_26C46E548);
    v35 = *(v26 + 48);
    if (v35(v24, 1, v25) == 1)
    {
      sub_26C3DE270(v24, &qword_280497B90, &qword_26C46E548);
      sub_26C46BB94();
    }

    v80[1] = v33;
    sub_26C42B9BC(v24, v92, type metadata accessor for SyncTransactionMessage);
    v36 = sub_26C414038();
    v38 = v37;
    if (!v35(v37, 1, v25))
    {
      v40 = *(v38 + 2);
      v39 = (v38 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *v39;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_26C430A54(0, *(v42 + 16), &qword_280497BC8, &qword_26C46E5B0, type metadata accessor for PropertyChangedMessage, type metadata accessor for PropertyChangedMessage);
      }

      else
      {
        *v39 = sub_26C42C014(0, *(v42 + 24) >> 1, &qword_280497BC8, &qword_26C46E5B0, type metadata accessor for PropertyChangedMessage);
      }
    }

    (v36)(v94, 0);
    v43 = sub_26C414038();
    v45 = v44;
    if (!v35(v44, 1, v25))
    {
      v47 = *(v45 + 4);
      v46 = (v45 + 32);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v49 = *v46;
      if (v48)
      {
        sub_26C430A54(0, *(v49 + 16), &qword_280497BD0, &qword_26C46E5B8, type metadata accessor for DictionaryChangedMessage, type metadata accessor for DictionaryChangedMessage);
      }

      else
      {
        *v46 = sub_26C42C014(0, *(v49 + 24) >> 1, &qword_280497BD0, &qword_26C46E5B8, type metadata accessor for DictionaryChangedMessage);
      }
    }

    (v43)(v94, 0);
    v50 = sub_26C414038();
    v52 = v51;
    if (v35(v51, 1, v25))
    {
      (v50)(v94, 0);
      v53 = v89;
    }

    else
    {
      v55 = *(v52 + 3);
      v54 = (v52 + 24);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v57 = *v54;
      v53 = v89;
      if (v56)
      {
        sub_26C430A54(0, *(v57 + 16), &qword_280497BD8, &qword_26C46E5C0, type metadata accessor for SetChangedMessage, type metadata accessor for SetChangedMessage);
      }

      else
      {
        *v54 = sub_26C42C014(0, *(v57 + 24) >> 1, &qword_280497BD8, &qword_26C46E5C0, type metadata accessor for SetChangedMessage);
      }

      (v50)(v94, 0);
    }

    sub_26C46BB94();
    v58 = v92;
    if (*(v92[2] + 16) || *(v92[4] + 16) || *(v92[3] + 16))
    {
      v59 = *(v90 + 56);
      v59(v20, 1, 1, v53);
      v60 = &v20[*(v86 + 20)];
      sub_26C46BD14();
      sub_26C42C130(v58, v30, type metadata accessor for SyncTransactionMessage);
      sub_26C3DE270(v20, &qword_280497650, &unk_26C46D930);
      sub_26C42B9BC(v30, v20, type metadata accessor for SyncTransactionMessage);
      swift_storeEnumTagMultiPayload();
      v59(v20, 0, 1, v53);
      v62 = v87;
      v61 = v88;
      (*(v87 + 104))(v17, *MEMORY[0x277CCB260], v88);
      sub_26C3F5D78(v20, v17);
      (*(v62 + 8))(v17, v61);
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v63 = sub_26C46BFA4();
      __swift_project_value_buffer(v63, qword_280498530);

      v64 = sub_26C46BF84();
      v65 = sub_26C46C3D4();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v93 = v67;
        *v66 = 16777730;
        swift_beginAccess();
        v68 = v85;
        sub_26C3DDD48(v20, v85, &qword_280497650, &unk_26C46D930);
        result = (*(v90 + 48))(v68, 1, v53);
        if (result == 1)
        {
          __break(1u);
          return result;
        }

        v69 = v84;
        sub_26C42C130(v68, v84, type metadata accessor for SyncMessage.OneOf_Contents);
        v70 = v68;
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_26C42BA24(v69, type metadata accessor for SyncMessage.OneOf_Contents);
        sub_26C42BA24(v70, type metadata accessor for SyncMessage.OneOf_Contents);
        *(v66 + 4) = EnumCaseMultiPayload;
        *(v66 + 5) = 2080;
        v72 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
        swift_beginAccess();
        v73 = v82;
        v74 = v81;
        v75 = v83;
        (*(v82 + 16))(v81, v1 + v72, v83);
        v76 = sub_26C46BB04();
        v78 = v77;
        (*(v73 + 8))(v74, v75);
        v79 = sub_26C3E80A8(v76, v78, &v93);

        *(v66 + 7) = v79;
        _os_log_impl(&dword_26C3D6000, v64, v65, "SyncedModel: sent transaction of type:%hhu for model:%s", v66, 0xFu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x26D6A18D0](v67, -1, -1);
        MEMORY[0x26D6A18D0](v66, -1, -1);

        sub_26C42BA24(v20, type metadata accessor for SyncMessage);
        v58 = v92;
      }

      else
      {

        sub_26C42BA24(v20, type metadata accessor for SyncMessage);
      }
    }

    else
    {
    }

    return sub_26C42BA24(v58, type metadata accessor for SyncTransactionMessage);
  }

  return result;
}

uint64_t sub_26C414BC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v59 = a3;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - v12;
  v14 = sub_26C46BCD4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26C46BB54();
  v60 = *(v19 - 8);
  v20 = *(v60 + 64);
  MEMORY[0x28223BE20](v19);
  v61 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497148 != -1)
  {
LABEL_20:
    swift_once();
  }

  v22 = sub_26C46BFA4();
  __swift_project_value_buffer(v22, qword_280498530);

  v23 = sub_26C46BF84();
  v24 = sub_26C46C404();

  v57 = v24;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v56 = a4;
    v26 = v25;
    v53 = swift_slowAlloc();
    v66 = v53;
    *v26 = 136315138;
    v52 = v23;
    v27 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v54 = a2;
    v28 = v60;
    v29 = v5 + v27;
    v30 = v61;
    (*(v60 + 16))(v61, v29, v19);
    sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0]);
    v31 = v15;
    v32 = v14;
    v33 = sub_26C46C704();
    v55 = v13;
    v35 = v34;
    v36 = v28;
    a2 = v54;
    (*(v36 + 8))(v30, v19);
    v37 = v33;
    v14 = v32;
    v15 = v31;
    v38 = sub_26C3E80A8(v37, v35, &v66);
    v13 = v55;

    *(v26 + 4) = v38;
    v23 = v52;
    _os_log_impl(&dword_26C3D6000, v52, v57, "SyncedModel: Registering model:%s", v26, 0xCu);
    v39 = v53;
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x26D6A18D0](v39, -1, -1);
    a4 = v56;
    MEMORY[0x26D6A18D0](v26, -1, -1);
  }

  swift_weakAssign();
  v40 = v5 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type;
  *v40 = a2;
  *(v40 + 8) = v59 & 1;
  v41 = *(v5 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_transactionLock);
  sub_26C46BB64();
  sub_26C3DDD48(a4, v13, &qword_280497268, &qword_26C46CFE0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26C3DE270(v13, &qword_280497268, &qword_26C46CFE0);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    sub_26C415270(v18);
    (*(v15 + 8))(v18, v14);
  }

  v42 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  swift_beginAccess();
  v43 = *(v5 + v42);
  a4 = v43 + 64;
  v44 = 1 << *(v43 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v18 = v45 & *(v43 + 64);
  v13 = ((v44 + 63) >> 6);
  v46 = *(v5 + v42);

  a2 = 0;
  while (v18)
  {
LABEL_16:
    sub_26C3DE190(*(v43 + 56) + ((a2 << 10) | (16 * __clz(__rbit64(v18)))), v63);
    sub_26C3DE0D8(v63, v64);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v65 + 40))(*Strong);
    }

    v18 &= v18 - 1;
    sub_26C431210(v64);
  }

  while (1)
  {
    v47 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v47 >= v13)
    {
      break;
    }

    v18 = *(a4 + 8 * v47);
    ++a2;
    if (v18)
    {
      a2 = v47;
      goto LABEL_16;
    }
  }

  v49 = v61;
  (*(v60 + 16))(v61, v5 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v19);
  v50 = v58;
  (*(v15 + 16))(v58, v62 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v14);
  (*(v15 + 56))(v50, 0, 1, v14);
  swift_beginAccess();
  sub_26C3D8BB4(v50, v49);
  return swift_endAccess();
}

uint64_t sub_26C415270(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26C46BB54();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C46BCD4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49 - v14;
  v16 = *(v8 + 2);
  v16(&v49 - v14, a1, v7);
  (*(v8 + 7))(v15, 0, 1, v7);
  v17 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
  swift_beginAccess();
  sub_26C3DDCE0(v15, v1 + v17, &qword_280497268, &qword_26C46CFE0);
  swift_endAccess();
  if (qword_280497148 != -1)
  {
LABEL_18:
    swift_once();
  }

  v18 = sub_26C46BFA4();
  __swift_project_value_buffer(v18, qword_280498530);
  v59 = a1;
  v16(v11, a1, v7);

  v19 = sub_26C46BF84();
  v20 = sub_26C46C404();

  v16 = v2;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = v21;
    v55 = swift_slowAlloc();
    v63[0] = v55;
    *v21 = 136315394;
    v54 = v20;
    v22 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v24 = v56;
    v23 = v57;
    v25 = v58;
    (*(v57 + 16))(v56, v16 + v22, v58);
    sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0]);
    v51 = v11;
    v26 = sub_26C46C704();
    v53 = v19;
    v50 = v16;
    v28 = v27;
    v29 = *(v23 + 8);
    v29(v24, v25);
    v30 = sub_26C3E80A8(v26, v28, v63);

    v32 = v51;
    v31 = v52;
    *(v52 + 1) = v30;
    *(v31 + 6) = 2080;
    sub_26C46BCC4();
    v33 = sub_26C46C704();
    v35 = v34;
    v29(v24, v25);
    v36 = v32;
    v16 = v50;
    (*(v8 + 1))(v36, v7);
    v37 = sub_26C3E80A8(v33, v35, v63);

    *(v31 + 14) = v37;
    v38 = v53;
    _os_log_impl(&dword_26C3D6000, v53, v54, "SyncedModel: Authority of model:%s set to %s", v31, 0x16u);
    v39 = v55;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v39, -1, -1);
    MEMORY[0x26D6A18D0](v31, -1, -1);
  }

  else
  {

    (*(v8 + 1))(v11, v7);
  }

  v40 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  swift_beginAccess();
  v11 = *(v16 + v40);
  v8 = v11 + 64;
  v41 = 1 << v11[32];
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v2 = v42 & *(v11 + 8);
  v7 = (v41 + 63) >> 6;
  v43 = *(v16 + v40);

  v44 = 0;
  a1 = v59;
  while (v2)
  {
LABEL_14:
    sub_26C3DE190(*(v11 + 7) + ((v44 << 10) | (16 * __clz(__rbit64(v2)))), v62);
    sub_26C3DE0D8(v62, v60);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v61 + 56))(a1, *Strong);
    }

    v2 &= v2 - 1;
    sub_26C431210(v60);
  }

  while (1)
  {
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v45 >= v7)
    {
      break;
    }

    v2 = *&v8[8 * v45];
    ++v44;
    if (v2)
    {
      v44 = v45;
      goto LABEL_14;
    }
  }

  v47 = *(v16 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_status);
  v62[0] = 2;

  sub_26C46C034();
}

uint64_t sub_26C41588C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(v1 + v2);

  v10 = 0;
  while (v6)
  {
LABEL_10:
    sub_26C3DE190(*(v3 + 56) + ((v10 << 10) | (16 * __clz(__rbit64(v6)))), v16);
    sub_26C3DE0D8(v16, v14);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v15 + 48))(*Strong);
    }

    v6 &= v6 - 1;
    result = sub_26C431210(v14);
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

      swift_weakAssign();
      v13 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_transactionLock);
      return sub_26C46BB64();
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

uint64_t sub_26C415A38(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v3 = type metadata accessor for SetChangedMessage(0);
  v95 = *(v3 - 8);
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v102 = (&v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DictionaryChangedMessage(0);
  v96 = *(v6 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  *&v103 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PropertyChangedMessage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9 - 8);
  v14 = (&v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = a1;
  v15 = *(a1 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
    v18 = v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    swift_beginAccess();
    v19 = *(v10 + 72);
    v20 = &qword_280497378;
    *(&v21 + 1) = 1;
    v99 = xmmword_26C46CFD0;
    v22 = &unk_26C46E560;
    *&v21 = 67109120;
    v98 = v21;
    do
    {
      sub_26C42C130(v18, v14, type metadata accessor for PropertyChangedMessage);
      v23 = *v14;
      v24 = *(v104 + v17);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = sub_26C42C1C8(*v14);
        if (v27)
        {
          sub_26C3DE190(*(v24 + 56) + 16 * v26, v107);
          LOBYTE(v25) = *(&v107[0] + 1) != 1;
          LODWORD(v101) = v23;
          if (*&v107[0])
          {
            goto LABEL_13;
          }

          goto LABEL_11;
        }

        LOBYTE(v25) = 0;
      }

      v107[0] = v99;
      LODWORD(v101) = v23;
LABEL_11:
      if ((v25 & 1) == 0)
      {
        sub_26C3DE270(v107, v20, v22);
LABEL_15:
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v30 = sub_26C46BFA4();
        __swift_project_value_buffer(v30, qword_280498530);
        v31 = sub_26C46BF84();
        v32 = sub_26C46C3E4();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = v14;
          v34 = v22;
          v35 = v19;
          v36 = v20;
          v37 = v17;
          v38 = swift_slowAlloc();
          *v38 = v98;
          *(v38 + 4) = v101;
          _os_log_impl(&dword_26C3D6000, v31, v32, "Error: received property update for unknown property #:%u", v38, 8u);
          v39 = v38;
          v17 = v37;
          v20 = v36;
          v19 = v35;
          v22 = v34;
          v14 = v33;
          MEMORY[0x26D6A18D0](v39, -1, -1);
        }

        goto LABEL_4;
      }

LABEL_13:
      Strong = swift_weakLoadStrong();
      v29 = *(&v107[0] + 1);
      sub_26C3DE270(v107, v20, v22);
      if (!Strong)
      {
        goto LABEL_15;
      }

      (*(v29 + 8))(v14, v100, *Strong, v29);

LABEL_4:
      result = sub_26C42BA24(v14, type metadata accessor for PropertyChangedMessage);
      v18 += v19;
      --v16;
    }

    while (v16);
  }

  v40 = *(v97 + 32);
  v41 = *(v40 + 16);
  if (!v41)
  {
LABEL_38:
    v64 = *(v97 + 24);
    v65 = *(v64 + 16);
    if (!v65)
    {
      return result;
    }

    v66 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
    v67 = v95;
    v68 = v64 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    swift_beginAccess();
    v69 = *(v67 + 72);
    v70 = &qword_280497378;
    *(&v71 + 1) = 1;
    v103 = xmmword_26C46CFD0;
    v72 = &unk_26C46E560;
    v73 = qword_280498530;
    *&v71 = 67109120;
    v101 = v71;
    while (1)
    {
      v74 = v102;
      sub_26C42C130(v68, v102, type metadata accessor for SetChangedMessage);
      v75 = *v74;
      v76 = *(v104 + v66);
      v77 = *(v76 + 16);
      if (v77)
      {
        v78 = sub_26C42C1C8(v75);
        if (v79)
        {
          sub_26C3DE190(*(v76 + 56) + 16 * v78, &v105);
          LOBYTE(v77) = *(&v105 + 1) != 1;
          if (v105)
          {
            goto LABEL_50;
          }

          goto LABEL_48;
        }

        LOBYTE(v77) = 0;
      }

      v105 = v103;
LABEL_48:
      if ((v77 & 1) == 0)
      {
        sub_26C3DE270(&v105, v70, v72);
LABEL_53:
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v82 = sub_26C46BFA4();
        __swift_project_value_buffer(v82, v73);
        v83 = sub_26C46BF84();
        v84 = sub_26C46C3E4();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = v75;
          v87 = v69;
          v88 = v66;
          v89 = v72;
          v90 = v70;
          v91 = v73;
          v92 = v85;
          *v85 = v101;
          *(v85 + 4) = v86;
          _os_log_impl(&dword_26C3D6000, v83, v84, "Error: received set update for unknown set #:%u", v85, 8u);
          v93 = v92;
          v73 = v91;
          v70 = v90;
          v72 = v89;
          v66 = v88;
          v69 = v87;
          MEMORY[0x26D6A18D0](v93, -1, -1);
        }

        goto LABEL_41;
      }

LABEL_50:
      v80 = swift_weakLoadStrong();
      sub_26C3DE270(&v105, v70, v72);
      if (!v80)
      {
        goto LABEL_53;
      }

      v81 = *v80;
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_59;
      }

      (*(result + 16))(v102, v100, v81, result);

LABEL_41:
      result = sub_26C42BA24(v102, type metadata accessor for SetChangedMessage);
      v68 += v69;
      if (!--v65)
      {
        return result;
      }
    }
  }

  v42 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  v43 = v96;
  v44 = v40 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
  swift_beginAccess();
  v45 = *(v43 + 72);
  v46 = &qword_280497378;
  *(&v47 + 1) = 1;
  v101 = xmmword_26C46CFD0;
  *&v47 = 67109120;
  v99 = v47;
  while (1)
  {
    v48 = v103;
    sub_26C42C130(v44, v103, type metadata accessor for DictionaryChangedMessage);
    v49 = *v48;
    v50 = *(v104 + v42);
    v51 = *(v50 + 16);
    if (v51)
    {
      v52 = sub_26C42C1C8(v49);
      if (v53)
      {
        sub_26C3DE190(*(v50 + 56) + 16 * v52, v106);
        LOBYTE(v51) = *(&v106[0] + 1) != 1;
        if (*&v106[0])
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      LOBYTE(v51) = 0;
    }

    v106[0] = v101;
LABEL_29:
    if ((v51 & 1) == 0)
    {
      sub_26C3DE270(v106, v46, &unk_26C46E560);
LABEL_34:
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v56 = sub_26C46BFA4();
      __swift_project_value_buffer(v56, qword_280498530);
      v57 = sub_26C46BF84();
      v58 = sub_26C46C3E4();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = v45;
        v60 = v42;
        v61 = v46;
        v62 = swift_slowAlloc();
        *v62 = v99;
        *(v62 + 4) = v49;
        _os_log_impl(&dword_26C3D6000, v57, v58, "Error: received dictionary update for unknown dictionary #:%u", v62, 8u);
        v63 = v62;
        v46 = v61;
        v42 = v60;
        v45 = v59;
        MEMORY[0x26D6A18D0](v63, -1, -1);
      }

      goto LABEL_22;
    }

LABEL_31:
    v54 = swift_weakLoadStrong();
    sub_26C3DE270(v106, v46, &unk_26C46E560);
    if (!v54)
    {
      goto LABEL_34;
    }

    v55 = *v54;
    result = swift_conformsToProtocol2();
    if (!result)
    {
      break;
    }

    (*(result + 16))(v103, v100, v55, result);

LABEL_22:
    result = sub_26C42BA24(v103, type metadata accessor for DictionaryChangedMessage);
    v44 += v45;
    if (!--v41)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_26C41643C(_DWORD *a1, uint64_t a2)
{
  v3 = v2;
  v74 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AA0, &qword_26C46E020);
  v5 = *(*(v81 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v81);
  v80 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v79 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v74 - v15;
  MEMORY[0x28223BE20](v14);
  v86 = &v74 - v17;
  *&v82 = sub_26C46BB54();
  v18 = *(v82 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v82);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497148 != -1)
  {
LABEL_40:
    swift_once();
  }

  v22 = sub_26C46BFA4();
  v23 = __swift_project_value_buffer(v22, qword_280498530);

  v76 = v23;
  v24 = sub_26C46BF84();
  v25 = sub_26C46C404();

  v26 = os_log_type_enabled(v24, v25);
  v85 = v18;
  v75 = a1;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v28 = v88;
    *v27 = 136315138;
    LODWORD(v84) = v25;
    v29 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v30 = v3 + v29;
    v31 = v82;
    (*(v85 + 16))(v21, v30, v82);
    sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0]);
    v32 = sub_26C46C704();
    v34 = v33;
    (*(v85 + 8))(v21, v31);
    v35 = sub_26C3E80A8(v32, v34, &v88);

    *(v27 + 4) = v35;
    _os_log_impl(&dword_26C3D6000, v24, v84, "SyncedModel: Applying catchup for model: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v36 = v28;
    a1 = v75;
    MEMORY[0x26D6A18D0](v36, -1, -1);
    v37 = v27;
    v18 = v85;
    MEMORY[0x26D6A18D0](v37, -1, -1);
  }

  v38 = v86;
  sub_26C40F448(v86);
  v39 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  v21 = &qword_280497430;
  sub_26C3DDD48(v3 + v39, v16, &qword_280497430, &unk_26C46D3D0);
  swift_beginAccess();
  sub_26C3E9EB8(v38, v3 + v39);
  swift_endAccess();
  sub_26C3DDD48(v3 + v39, v13, &qword_280497430, &unk_26C46D3D0);
  sub_26C418F90(v16, v13);
  sub_26C3DE270(v13, &qword_280497430, &unk_26C46D3D0);
  sub_26C3DE270(v16, &qword_280497430, &unk_26C46D3D0);
  sub_26C3DE270(v38, &qword_280497430, &unk_26C46D3D0);
  *(v3 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = *a1;
  v40 = sub_26C410104();
  v41 = 0;
  v43 = v40 + 64;
  v42 = *(v40 + 64);
  *&v83 = v40;
  v44 = 1 << *(v40 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v13 = v45 & v42;
  a1 = ((v44 + 63) >> 6);
  v78 = v18 + 16;
  v77 = v18 + 32;
  v84 = v3;
  if ((v45 & v42) != 0)
  {
    while (1)
    {
      v46 = v41;
LABEL_12:
      v47 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v48 = v47 | (v46 << 6);
      v49 = v83;
      v50 = v85;
      v51 = v79;
      v52 = v82;
      (*(v85 + 16))(v79, *(v83 + 48) + *(v85 + 72) * v48, v82);
      v53 = (*(v49 + 56) + 16 * v48);
      v18 = v53[1];
      v86 = *v53;
      v21 = v80;
      v16 = &v80[*(v81 + 48)];
      (*(v50 + 32))(v80, v51, v52);
      *v16 = v86;
      *(v16 + 8) = v18;

      sub_26C3DE270(v21, &qword_280497AA0, &qword_26C46E020);
      v3 = v84;
      if (!v13)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v46 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v46 >= a1)
    {
      break;
    }

    v13 = *(v43 + 8 * v46);
    ++v41;
    if (v13)
    {
      v41 = v46;
      goto LABEL_12;
    }
  }

  v54 = sub_26C40FED4();
  v18 = v54 + 64;
  v55 = 1 << *(v54 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v54 + 64);
  v85 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  v86 = v54;
  swift_beginAccess();
  v21 = 0;
  v58 = (v55 + 63) >> 6;
  *(&v59 + 1) = 1;
  v83 = xmmword_26C46CFD0;
  *&v59 = 67109120;
  v82 = v59;
  while (v57)
  {
LABEL_25:
    v61 = __clz(__rbit64(v57)) | (v21 << 6);
    v16 = *(*(v86 + 48) + 4 * v61);
    v62 = *(v86 + 56) + 16 * v61;
    a1 = *v62;
    v13 = *(v62 + 8);
    v63 = *(v3 + v85);
    v64 = *(v63 + 16);
    if (v64)
    {
      v65 = sub_26C42C1C8(v16);
      if (v66)
      {
        sub_26C3DE190(*(v63 + 56) + 16 * v65, &v87);
        LOBYTE(v64) = *(&v87 + 1) != 1;
        if (v87)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      LOBYTE(v64) = 0;
    }

    v87 = v83;
LABEL_31:
    if ((v64 & 1) == 0)
    {
      sub_26C3DDDB0(a1, v13);
      sub_26C3DE270(&v87, &qword_280497378, &unk_26C46E560);
      goto LABEL_35;
    }

LABEL_33:
    Strong = swift_weakLoadStrong();
    v68 = *(&v87 + 1);
    sub_26C3DDDB0(a1, v13);
    sub_26C3DE270(&v87, &qword_280497378, &unk_26C46E560);
    if (Strong)
    {
      (*(v68 + 16))(a1, v13, v74, *Strong, v68);

      goto LABEL_19;
    }

LABEL_35:
    sub_26C3DDDB0(a1, v13);
    v69 = sub_26C46BF84();
    v70 = sub_26C46C3E4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = v82;
      *(v71 + 4) = v16;
      sub_26C3DDEA8(a1, v13);
      _os_log_impl(&dword_26C3D6000, v69, v70, "SyncedModel: Handling catchup data: found unknown property ID %u", v71, 8u);
      v72 = v71;
      v3 = v84;
      MEMORY[0x26D6A18D0](v72, -1, -1);
    }

    else
    {
      sub_26C3DDEA8(a1, v13);
    }

LABEL_19:
    v57 &= v57 - 1;
    sub_26C3DDEA8(a1, v13);
  }

  while (1)
  {
    v60 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_39;
    }

    if (v60 >= v58)
    {
    }

    v57 = *(v18 + 8 * v60);
    ++v21;
    if (v57)
    {
      v21 = v60;
      goto LABEL_25;
    }
  }
}

uint64_t sub_26C416CE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B98, &qword_26C46E558);
  v4 = *(*(v223 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v223);
  v222 = &v192 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v225 = &v192 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v221 = &v192 - v10;
  MEMORY[0x28223BE20](v9);
  v212 = &v192 - v11;
  v204 = type metadata accessor for ModelData.PropertyDataMap(0);
  v203 = *(v204 - 8);
  v12 = *(v203 + 64);
  MEMORY[0x28223BE20](v204);
  v209 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for PBUUID(0);
  v217 = *(v224 - 8);
  v14 = v217[8];
  MEMORY[0x28223BE20](v224);
  v218 = (&v192 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v219 = (&v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v21 = &v192 - v20;
  v205 = &v192 - v20;
  v22 = sub_26C46BB54();
  v215 = *(v22 - 8);
  v23 = v215;
  v24 = v215[8];
  v25 = MEMORY[0x28223BE20](v22);
  v211 = &v192 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  *&v210 = &v192 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v192 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v192 - v32;
  v220 = &v192 - v32;
  v34 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  v208 = v2;
  swift_beginAccess();
  v35 = v23[2];
  v35(v33, v2 + v34, v22);
  v36 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  sub_26C3DDD48(v2 + v36, v21, &qword_280497430, &unk_26C46D3D0);
  LODWORD(v213) = *(v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
  v37 = MEMORY[0x277D84F90];
  *&v206 = sub_26C3E98B0(MEMORY[0x277D84F90]);
  *&v214 = sub_26C3E99BC(v37);
  *a1 = 0;
  *(a1 + 8) = v37;
  *(a1 + 16) = v37;
  v38 = type metadata accessor for ModelData(0);
  v39 = a1 + v38[7];
  sub_26C46BD14();
  v40 = v38[8];
  v41 = v217[7];
  v42 = v224;
  v41(a1 + v40, 1, 1, v224);
  v41(a1 + v38[9], 1, 1, v42);
  v35(v31, v220, v22);
  v43 = v210;
  v217 = v23 + 2;
  v216 = v35;
  v35(v210, v31, v22);
  v44 = v218;
  sub_26C40F280(v43, v218);
  v46 = (v215 + 1);
  v45 = v215[1];
  (v45)(v31, v22);
  sub_26C3DE270(a1 + v40, &qword_280497458, &unk_26C46D3F0);
  sub_26C42B9BC(v44, a1 + v40, type metadata accessor for PBUUID);
  v41(a1 + v40, 0, 1, v224);
  v47 = v205;
  v48 = v219;
  sub_26C3DDD48(v205, v219, &qword_280497430, &unk_26C46D3D0);
  sub_26C40D8D4(v48);
  *a1 = v213;
  v49 = sub_26C41385C(v206);
  v207 = 0;

  v50 = *(a1 + 8);

  v198 = v49;
  *(a1 + 8) = v49;
  v224 = a1;
  sub_26C40DC0C(v214);
  sub_26C3DE270(v47, &qword_280497430, &unk_26C46D3D0);
  v51 = v220;
  v226 = v22;
  v220 = v46;
  v219 = v45;
  (v45)(v51, v22);
  v52 = v208;
  v53 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  swift_beginAccess();
  v54 = *(v52 + v53);
  v55 = v54 + 64;
  v56 = 1 << *(v54 + 32);
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  else
  {
    v57 = -1;
  }

  v58 = v57 & *(v54 + 64);
  v59 = (v56 + 63) >> 6;
  v60 = *(v52 + v53);

  v61 = 0;
  v214 = xmmword_26C46CFD0;
  *(&v62 + 1) = 0xC000000000000000;
  v206 = xmmword_26C46D3C0;
  *&v62 = 67109120;
  v210 = v62;
  v213 = v54;
  while (v58)
  {
LABEL_11:
    v64 = *(*(v54 + 48) + ((v61 << 8) | (4 * __clz(__rbit64(v58)))));
    v65 = *(v52 + v53);
    v66 = *(v65 + 16);
    LODWORD(v218) = v64;
    if (!v66)
    {
      goto LABEL_15;
    }

    v67 = sub_26C42C1C8(v64);
    if ((v68 & 1) == 0)
    {
      LOBYTE(v66) = 0;
LABEL_15:
      v69 = 0;
      v228 = v214;
      goto LABEL_16;
    }

    sub_26C3DE190(*(v65 + 56) + 16 * v67, &v228);
    v69 = v228 != 0;
    LOBYTE(v66) = *(&v228 + 1) != 1;
LABEL_16:
    v58 &= v58 - 1;
    if (!v69 && (v66 & 1) == 0)
    {
      sub_26C3DE270(&v228, &qword_280497378, &unk_26C46E560);
      goto LABEL_25;
    }

    Strong = swift_weakLoadStrong();
    v71 = *(&v228 + 1);
    sub_26C3DE270(&v228, &qword_280497378, &unk_26C46E560);
    if (Strong)
    {
      v72 = v207;
      v73 = (*(v71 + 24))(*Strong, v71);
      if (v72)
      {
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v207 = 0;
        v75 = sub_26C46BFA4();
        __swift_project_value_buffer(v75, qword_280498530);
        v76 = sub_26C46BF84();
        v77 = sub_26C46C3E4();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v200 = Strong;
          v79 = v52;
          v80 = v72;
          v81 = v53;
          v82 = v78;
          *v78 = v210;
          *(v78 + 4) = v218;
          _os_log_impl(&dword_26C3D6000, v76, v77, "Failed to encode property data for property ID %u while creating catchup data", v78, 8u);
          v83 = v82;
          v53 = v81;
          MEMORY[0x26D6A18D0](v83, -1, -1);
          v84 = v80;
          v52 = v79;
        }

        else
        {
        }

        v54 = v213;
      }

      else
      {
        v192 = 0;
        v197 = v53;
        v193 = v73;
        v194 = v74;
        sub_26C3DDDB0(v73, v74);
        v90 = sub_26C40FED4();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v228 = v90;
        v92 = sub_26C42C1C8(v218);
        v94 = *(v90 + 16);
        v95 = (v93 & 1) == 0;
        v96 = __OFADD__(v94, v95);
        v97 = v94 + v95;
        v98 = v209;
        if (v96)
        {
          goto LABEL_93;
        }

        v99 = v93;
        if (*(v90 + 24) >= v97)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v134 = v92;
            sub_26C42EE4C();
            v92 = v134;
            v98 = v209;
          }
        }

        else
        {
          sub_26C3DAA08(v97, isUniquelyReferenced_nonNull_native);
          v92 = sub_26C42C1C8(v218);
          if ((v99 & 1) != (v100 & 1))
          {
            goto LABEL_96;
          }
        }

        v53 = v197;
        v101 = v228;
        if (v99)
        {
          v102 = (*(v228 + 56) + 16 * v92);
          v103 = *v102;
          v104 = v102[1];
          v105 = v194;
          *v102 = v193;
          v102[1] = v105;
          sub_26C3DDEA8(v103, v104);
          v106 = v101[2];
        }

        else
        {
          *(v228 + 8 * (v92 >> 6) + 64) |= 1 << v92;
          *(v101[6] + 4 * v92) = v218;
          v107 = (v101[7] + 16 * v92);
          v108 = v194;
          *v107 = v193;
          v107[1] = v108;
          v109 = v101[2];
          v106 = v109 + 1;
          if (__OFADD__(v109, 1))
          {
            goto LABEL_94;
          }

          v101[2] = v106;
        }

        if (v106)
        {
          v200 = Strong;
          *&v228 = MEMORY[0x277D84F90];
          v199 = v101;
          sub_26C42FB34(0, v106, 0);
          v110 = v199;
          v218 = v228;
          v111 = ~(-1 << *(v199 + 32));
          v207 = v199 + 8;
          v112 = sub_26C46C494();
          v113 = 0;
          v195 = v110 + 9;
          v196 = v106;
          while ((v112 & 0x8000000000000000) == 0 && v112 < 1 << *(v110 + 32))
          {
            if ((*(v207 + (v112 >> 6)) & (1 << v112)) == 0)
            {
              goto LABEL_89;
            }

            v205 = v112 >> 6;
            v201 = v113;
            v115 = v110[7];
            v116 = *(v110[6] + 4 * v112);
            v202 = *(v110 + 9);
            v117 = (v115 + 16 * v112);
            v118 = *v117;
            v119 = v117[1];
            *(v98 + 8) = v206;
            v120 = *(v204 + 24);
            sub_26C3DDDB0(v118, v119);
            v98 = v209;
            sub_26C46BD14();
            *v98 = v116;
            sub_26C3DDEA8(*(v98 + 8), *(v98 + 16));
            *(v98 + 8) = v118;
            *(v98 + 16) = v119;
            v121 = v218;
            *&v228 = v218;
            v123 = v218[2];
            v122 = v218[3];
            if (v123 >= v122 >> 1)
            {
              sub_26C42FB34(v122 > 1, v123 + 1, 1);
              v121 = v228;
            }

            v121[2] = v123 + 1;
            v124 = (*(v203 + 80) + 32) & ~*(v203 + 80);
            v218 = v121;
            sub_26C42B9BC(v98, v121 + v124 + *(v203 + 72) * v123, type metadata accessor for ModelData.PropertyDataMap);
            v110 = v199;
            v114 = 1 << *(v199 + 32);
            if (v112 >= v114)
            {
              goto LABEL_90;
            }

            v125 = *(v207 + v205);
            if ((v125 & (1 << v112)) == 0)
            {
              goto LABEL_91;
            }

            if (v202 != *(v199 + 9))
            {
              goto LABEL_92;
            }

            v126 = v125 & (-2 << (v112 & 0x3F));
            if (v126)
            {
              v114 = __clz(__rbit64(v126)) | v112 & 0x7FFFFFFFFFFFFFC0;
              v52 = v208;
              v53 = v197;
            }

            else
            {
              v127 = v205 << 6;
              v128 = v205 + 1;
              v129 = &v195[v205];
              v52 = v208;
              v53 = v197;
              while (v128 < (v114 + 63) >> 6)
              {
                v131 = *v129++;
                v130 = v131;
                v127 += 64;
                ++v128;
                if (v131)
                {
                  sub_26C411860(v112, v202, 0);
                  v114 = __clz(__rbit64(v130)) + v127;
                  goto LABEL_59;
                }
              }

              sub_26C411860(v112, v202, 0);
LABEL_59:
              v98 = v209;
              v110 = v199;
            }

            v113 = v201 + 1;
            v112 = v114;
            if (v201 + 1 == v196)
            {

              sub_26C3DDEA8(v193, v194);

              v132 = v224;
              v133 = v218;
              goto LABEL_62;
            }
          }

          goto LABEL_88;
        }

        sub_26C3DDEA8(v193, v194);

        v132 = v224;
        v133 = MEMORY[0x277D84F90];
LABEL_62:
        *(v132 + 8) = v133;
        v198 = v133;
        v207 = v192;
        v54 = v213;
      }
    }

    else
    {
LABEL_25:
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v85 = sub_26C46BFA4();
      __swift_project_value_buffer(v85, qword_280498530);
      v86 = sub_26C46BF84();
      v87 = sub_26C46C3E4();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = v210;
        *(v88 + 4) = v218;
        _os_log_impl(&dword_26C3D6000, v86, v87, "Found invalid property ID %u when creating catchup data", v88, 8u);
        v89 = v88;
        v54 = v213;
        MEMORY[0x26D6A18D0](v89, -1, -1);
      }
    }
  }

  while (1)
  {
    v63 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
      goto LABEL_85;
    }

    if (v63 >= v59)
    {
      break;
    }

    v58 = *(v55 + 8 * v63);
    ++v61;
    if (v58)
    {
      v61 = v63;
      goto LABEL_11;
    }
  }

  v135 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants;
  swift_beginAccess();
  v136 = *(v52 + v135);
  v137 = (v136 + 64);
  v138 = 1 << *(v136 + 32);
  v139 = -1;
  if (v138 < 64)
  {
    v139 = ~(-1 << v138);
  }

  v140 = v139 & *(v136 + 64);
  v141 = (v138 + 63) >> 6;
  *&v210 = v215 + 4;
  v213 = v136;

  v142 = 0;
  v209 = v137;
  v208 = v141;
  while (2)
  {
    if (v140)
    {
LABEL_73:
      v150 = __clz(__rbit64(v140)) | (v142 << 6);
      v151 = v213;
      v152 = *(v213 + 48);
      v153 = v215;
      *&v214 = v215[9];
      v154 = v212;
      v155 = v226;
      v216(v212, v152 + v214 * v150, v226);
      v156 = *(v151 + 56);
      v157 = sub_26C46BCD4();
      v158 = *(v157 - 1);
      v159 = v156 + *(v158 + 72) * v150;
      v160 = v223;
      v161 = *(v223 + 48);
      (*(v158 + 16))(&v154[v161], v159, v157);
      v162 = *(v160 + 48);
      v163 = v153[4];
      v164 = v221;
      v163(v221, v154, v155);
      (*(v158 + 32))(v164 + v162, &v154[v161], v157);
      v165 = v225;
      sub_26C3DDD48(v164, v225, &qword_280497B98, &qword_26C46E558);
      v166 = v164;
      v167 = v222;
      sub_26C3DDD48(v166, v222, &qword_280497B98, &qword_26C46E558);
      v168 = *(v160 + 48);
      v169 = v211;
      sub_26C46BCC4();
      v170 = *(v158 + 8);
      v218 = v157;
      v171 = v157;
      v172 = v170;
      v170(v167 + v168, v171);
      v173 = sub_26C46BB04();
      v175 = v174;
      (v219)(v169, v226);
      v176 = sub_26C410104();
      v177 = swift_isUniquelyReferenced_nonNull_native();
      v227 = v176;
      v178 = sub_26C42C210(v165);
      v180 = *(v176 + 16);
      v181 = (v179 & 1) == 0;
      v96 = __OFADD__(v180, v181);
      v182 = v180 + v181;
      if (v96)
      {
        goto LABEL_86;
      }

      v183 = v179;
      if (*(v176 + 24) >= v182)
      {
        if ((v177 & 1) == 0)
        {
          v190 = v178;
          sub_26C42EFB4();
          v178 = v190;
          v185 = v227;
          if ((v183 & 1) == 0)
          {
            goto LABEL_79;
          }

          goto LABEL_66;
        }
      }

      else
      {
        sub_26C3DAC84(v182, v177);
        v178 = sub_26C42C210(v225);
        if ((v183 & 1) != (v184 & 1))
        {
          goto LABEL_95;
        }
      }

      v185 = v227;
      if ((v183 & 1) == 0)
      {
LABEL_79:
        v185[(v178 >> 6) + 8] |= 1 << v178;
        v186 = v178;
        v216((v185[6] + v178 * v214), v225, v226);
        v187 = (v185[7] + 16 * v186);
        *v187 = v173;
        v187[1] = v175;
        v188 = v185[2];
        v96 = __OFADD__(v188, 1);
        v189 = v188 + 1;
        if (v96)
        {
          goto LABEL_87;
        }

        v185[2] = v189;
        goto LABEL_67;
      }

LABEL_66:
      v143 = (v185[7] + 16 * v178);
      v144 = v143[1];
      *v143 = v173;
      v143[1] = v175;

LABEL_67:
      v140 &= v140 - 1;
      v145 = *(v223 + 48);
      v146 = v225;
      v147 = v226;
      v148 = v219;
      (v219)(v225, v226);
      sub_26C40DC0C(v185);
      sub_26C3DE270(v221, &qword_280497B98, &qword_26C46E558);
      v148(v222, v147);
      v172(v146 + v145, v218);
      v137 = v209;
      v141 = v208;
      continue;
    }

    break;
  }

  while (1)
  {
    v149 = v142 + 1;
    if (__OFADD__(v142, 1))
    {
      break;
    }

    if (v149 >= v141)
    {
    }

    v140 = *&v137[8 * v149];
    ++v142;
    if (v140)
    {
      v142 = v149;
      goto LABEL_73;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  sub_26C46C7A4();
  __break(1u);
LABEL_96:
  result = sub_26C46C7A4();
  __break(1u);
  return result;
}

uint64_t sub_26C418080()
{
  v1 = v0;
  v103 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v2 = *(v103 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v103);
  v5 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C46BCF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v111 = &v96 - v12;
  v121 = type metadata accessor for SyncMessage(0);
  v13 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for PBUUID(0);
  v118 = *(v123 - 8);
  v16 = *(v118 + 64);
  MEMORY[0x28223BE20](v123);
  v18 = (&v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v119 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v122 = &v96 - v23;
  v114 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  v24 = *(*(v114 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v114);
  v120 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v96 - v27;
  v117 = sub_26C46BB54();
  v125 = *(v117 - 8);
  v29 = *(v125 + 64);
  v30 = MEMORY[0x28223BE20](v117);
  v116 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v115 = &v96 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v124 = &v96 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v96 - v36;
  result = swift_weakLoadStrong();
  if (result)
  {
    v113 = result;
    v98 = v11;
    v102 = v7;
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v112 = v15;
    v39 = sub_26C46BFA4();
    v40 = __swift_project_value_buffer(v39, qword_280498530);

    v100 = v40;
    v41 = sub_26C46BF84();
    v42 = sub_26C46C404();

    v43 = os_log_type_enabled(v41, v42);
    v44 = &unk_280498000;
    v101 = v5;
    v99 = v6;
    v97 = v2;
    v110 = v18;
    if (v43)
    {
      v45 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v126 = v109;
      *v45 = 136315138;
      v46 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      v47 = v125;
      v48 = v117;
      (*(v125 + 16))(v37, v1 + v46, v117);
      sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0]);
      v49 = sub_26C46C704();
      v51 = v50;
      (*(v47 + 8))(v37, v48);
      v52 = sub_26C3E80A8(v49, v51, &v126);

      *(v45 + 4) = v52;
      v44 = &unk_280498000;
      _os_log_impl(&dword_26C3D6000, v41, v42, "SyncedModel: Received ownership of model:%s", v45, 0xCu);
      v53 = v109;
      __swift_destroy_boxed_opaque_existential_1(v109);
      MEMORY[0x26D6A18D0](v53, -1, -1);
      MEMORY[0x26D6A18D0](v45, -1, -1);
    }

    else
    {

      v48 = v117;
      v47 = v125;
    }

    v107 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
    v106 = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
    v54 = v44[190];
    swift_beginAccess();
    v55 = *(v47 + 16);
    v55(v37, v1 + v54, v48);
    v56 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID;
    v55(v124, v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v48);
    v57 = v1 + v56;
    v58 = v122;
    v55(v122, v57, v48);
    (*(v47 + 56))(v58, 0, 1, v48);
    LODWORD(v117) = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
    LODWORD(v109) = *(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler) == 0;
    *(v28 + 3) = 0;
    v28[16] = 0;
    v59 = v114;
    v60 = &v28[*(v114 + 28)];
    sub_26C46BD14();
    v61 = v59[8];
    v108 = v37;
    v62 = *(v118 + 56);
    v105 = v62;
    v63 = v123;
    v62(&v28[v61], 1, 1, v123);
    v118 = v59[9];
    v62(&v28[v118], 1, 1, v63);
    v62(&v28[v59[10]], 1, 1, v63);
    *v28 = v107;
    v28[8] = v106;
    v64 = v115;
    v104 = v55;
    v55(v115, v37, v48);
    v65 = v116;
    v55(v116, v64, v48);
    v66 = v110;
    sub_26C40F280(v65, v110);
    v67 = *(v125 + 8);
    v125 += 8;
    v114 = v67;
    v67(v64, v48);
    sub_26C3DE270(&v28[v61], &qword_280497458, &unk_26C46D3F0);
    v107 = type metadata accessor for PBUUID;
    sub_26C42B9BC(v66, &v28[v61], type metadata accessor for PBUUID);
    v68 = v123;
    v69 = v105;
    v105(&v28[v61], 0, 1, v123);
    v70 = v104;
    v104(v64, v124, v48);
    v70(v65, v64, v48);
    sub_26C40F280(v65, v66);
    v71 = v114;
    (v114)(v64, v48);
    v72 = v118;
    sub_26C3DE270(&v28[v118], &qword_280497458, &unk_26C46D3F0);
    sub_26C42B9BC(v66, &v28[v72], v107);
    v69(&v28[v72], 0, 1, v68);
    v73 = v122;
    v74 = v119;
    sub_26C3DDD48(v122, v119, &qword_280497430, &unk_26C46D3D0);
    sub_26C40E104(v74);
    sub_26C3DE270(v73, &qword_280497430, &unk_26C46D3D0);
    v71(v124, v48);
    v71(v108, v48);
    *(v28 + 3) = v117;
    v28[16] = v109;
    v75 = type metadata accessor for SyncMessage.OneOf_Contents(0);
    v76 = *(*(v75 - 8) + 56);
    v77 = v112;
    v76(v112, 1, 1, v75);
    v78 = v77 + *(v121 + 20);
    sub_26C46BD14();
    v79 = v120;
    sub_26C42C130(v28, v120, type metadata accessor for OwnershipChangeBroadcastMessage);
    sub_26C3DE270(v77, &qword_280497650, &unk_26C46D930);
    sub_26C42B9BC(v79, v77, type metadata accessor for OwnershipChangeBroadcastMessage);
    swift_storeEnumTagMultiPayload();
    v76(v77, 0, 1, v75);
    sub_26C431280(&qword_280497660, type metadata accessor for SyncMessage);
    v80 = sub_26C46BE64();
    v82 = v81;
    v83 = *MEMORY[0x277CCB260];
    v84 = v102;
    v85 = v111;
    v86 = v99;
    v125 = *(v102 + 104);
    (v125)(v111, v83, v99);
    v87 = *(v84 + 16);
    v88 = v101;
    v87(v101 + *(v103 + 20), v85, v86);
    *v88 = v80;
    v88[1] = v82;
    v89 = v113;
    swift_beginAccess();
    v90 = *(v89 + 16);
    sub_26C3DDDB0(v80, v82);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v89 + 16) = v90;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v90 = sub_26C42BE38(0, v90[2] + 1, 1, v90, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
      *(v113 + 16) = v90;
    }

    v93 = v90[2];
    v92 = v90[3];
    if (v93 >= v92 >> 1)
    {
      v90 = sub_26C42BE38(v92 > 1, v93 + 1, 1, v90, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
    }

    v90[2] = v93 + 1;
    sub_26C42B9BC(v101, v90 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v93, type metadata accessor for SyncedModelManager.MessageWrapper);
    *(v113 + 16) = v90;
    swift_endAccess();
    v94 = *(v102 + 8);
    v94(v111, v86);
    v95 = v98;
    (v125)(v98, v83, v86);
    sub_26C3ECC34(v95);

    sub_26C3DDEA8(v80, v82);
    v94(v95, v86);
    sub_26C42BA24(v112, type metadata accessor for SyncMessage);
    return sub_26C42BA24(v28, type metadata accessor for OwnershipChangeBroadcastMessage);
  }

  return result;
}

void sub_26C418F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v118 = &v113[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v117 = &v113[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v124 = &v113[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v123 = &v113[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v129 = &v113[-v15];
  MEMORY[0x28223BE20](v14);
  v128 = &v113[-v16];
  v17 = sub_26C46BB54();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v116 = &v113[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v115 = &v113[-v23];
  MEMORY[0x28223BE20](v22);
  v119 = &v113[-v24];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v121 = &v113[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v113[-v30];
  MEMORY[0x28223BE20](v29);
  v33 = &v113[-v32];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v113[-v37];
  v39 = *(v36 + 56);
  v120 = a1;
  sub_26C3DDD48(a1, &v113[-v37], &qword_280497430, &unk_26C46D3D0);
  v122 = a2;
  v40 = v17;
  sub_26C3DDD48(a2, &v38[v39], &qword_280497430, &unk_26C46D3D0);
  v126 = v18;
  v41 = *(v18 + 48);
  v42 = v41(v38, 1, v40);
  v127 = v40;
  if (v42 == 1)
  {
    if (v41(&v38[v39], 1, v40) == 1)
    {
      sub_26C3DE270(v38, &qword_280497430, &unk_26C46D3D0);
LABEL_14:
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v68 = sub_26C46BFA4();
      __swift_project_value_buffer(v68, qword_280498530);
      v69 = sub_26C46BF84();
      v70 = sub_26C46C3E4();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_26C3D6000, v69, v70, "SyncedModel: onChangedOwnership called but ownership didn't change", v71, 2u);
        MEMORY[0x26D6A18D0](v71, -1, -1);
      }

      return;
    }

    goto LABEL_6;
  }

  sub_26C3DDD48(v38, v33, &qword_280497430, &unk_26C46D3D0);
  if (v41(&v38[v39], 1, v40) == 1)
  {
    (*(v126 + 8))(v33, v40);
LABEL_6:
    sub_26C3DE270(v38, &qword_280497B78, "n6");
    v43 = v125;
    goto LABEL_7;
  }

  v63 = v126;
  v64 = v41;
  v65 = v119;
  (*(v126 + 32))(v119, &v38[v39], v40);
  sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0]);
  v114 = sub_26C46C1C4();
  v66 = *(v63 + 8);
  v67 = v65;
  v41 = v64;
  v66(v67, v127);
  v66(v33, v127);
  v43 = v125;
  v40 = v127;
  sub_26C3DE270(v38, &qword_280497430, &unk_26C46D3D0);
  if (v114)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_26C3DDD48(v120, v31, &qword_280497430, &unk_26C46D3D0);
  if (v41(v31, 1, v40) == 1)
  {
    v44 = v41;
    v45 = sub_26C46BCD4();
    (*(*(v45 - 8) + 56))(v128, 1, 1, v45);
    v46 = v124;
LABEL_12:
    v47 = v126;
    goto LABEL_21;
  }

  v47 = v126;
  v48 = v115;
  (*(v126 + 32))(v115, v31, v40);
  v49 = v40;
  v50 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants;
  swift_beginAccess();
  v51 = *(v43 + v50);
  v46 = v124;
  if (*(v51 + 16))
  {

    v52 = sub_26C42C210(v48);
    if (v53)
    {
      v54 = v52;
      v44 = v41;
      v55 = *(v51 + 56);
      v56 = v48;
      v57 = sub_26C46BCD4();
      v58 = *(v57 - 8);
      v59 = v58;
      v60 = v55 + *(v58 + 72) * v54;
      v46 = v124;
      v61 = v128;
      (*(v58 + 16))(v128, v60, v57);
      v62 = v127;
      (*(v126 + 8))(v56, v127);
      v40 = v62;

      (*(v59 + 56))(v61, 0, 1, v57);
      v43 = v125;
      goto LABEL_12;
    }

    v44 = v41;

    v40 = v127;
    (*(v47 + 8))(v48, v127);
    v73 = sub_26C46BCD4();
    (*(*(v73 - 8) + 56))(v128, 1, 1, v73);
  }

  else
  {
    v44 = v41;
    (*(v47 + 8))(v48, v49);
    v72 = sub_26C46BCD4();
    (*(*(v72 - 8) + 56))(v128, 1, 1, v72);
    v40 = v49;
  }

LABEL_21:
  v74 = v121;
  sub_26C3DDD48(v122, v121, &qword_280497430, &unk_26C46D3D0);
  if (v44(v74, 1, v40) == 1)
  {
LABEL_27:
    v87 = sub_26C46BCD4();
    (*(*(v87 - 8) + 56))(v129, 1, 1, v87);
    goto LABEL_28;
  }

  v75 = v116;
  (*(v47 + 32))(v116, v74, v40);
  v76 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants;
  swift_beginAccess();
  v77 = v40;
  v78 = *(v43 + v76);
  if (!*(v78 + 16))
  {
    (*(v47 + 8))(v75, v77);
    goto LABEL_27;
  }

  v79 = *(v43 + v76);

  v80 = sub_26C42C210(v75);
  if ((v81 & 1) == 0)
  {

    (*(v47 + 8))(v75, v127);
    goto LABEL_27;
  }

  v82 = v80;
  v83 = *(v78 + 56);
  v84 = sub_26C46BCD4();
  v85 = v129;
  v86 = *(v84 - 8);
  (*(v86 + 16))(v129, v83 + *(v86 + 72) * v82, v84);
  (*(v47 + 8))(v75, v127);

  (*(v86 + 56))(v85, 0, 1, v84);
LABEL_28:
  v88 = v123;
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v89 = sub_26C46BFA4();
  __swift_project_value_buffer(v89, qword_280498530);
  sub_26C3DDD48(v128, v88, &qword_280497268, &qword_26C46CFE0);
  sub_26C3DDD48(v129, v46, &qword_280497268, &qword_26C46CFE0);
  v90 = sub_26C46BF84();
  v91 = sub_26C46C404();
  if (os_log_type_enabled(v90, v91))
  {
    LODWORD(v121) = v91;
    v122 = v90;
    v92 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v130[0] = v120;
    *v92 = 136315394;
    v93 = v117;
    sub_26C3DDD48(v88, v117, &qword_280497268, &qword_26C46CFE0);
    v94 = sub_26C46BCD4();
    v95 = *(v94 - 8);
    v96 = *(v95 + 48);
    if (v96(v93, 1, v94) == 1)
    {
      sub_26C3DE270(v93, &qword_280497268, &qword_26C46CFE0);
      v97 = 0xE300000000000000;
      v98 = 7104878;
    }

    else
    {
      v99 = v119;
      sub_26C46BCC4();
      (*(v95 + 8))(v93, v94);
      v98 = sub_26C46BB04();
      v97 = v100;
      (*(v126 + 8))(v99, v127);
    }

    sub_26C3DE270(v88, &qword_280497268, &qword_26C46CFE0);
    v101 = sub_26C3E80A8(v98, v97, v130);

    *(v92 + 4) = v101;
    *(v92 + 12) = 2080;
    v102 = v124;
    v103 = v118;
    sub_26C3DDD48(v124, v118, &qword_280497268, &qword_26C46CFE0);
    if (v96(v103, 1, v94) == 1)
    {
      sub_26C3DE270(v103, &qword_280497268, &qword_26C46CFE0);
      v104 = 0xE300000000000000;
      v43 = v125;
      v105 = v122;
      v106 = 7104878;
    }

    else
    {
      v107 = v119;
      sub_26C46BCC4();
      (*(v95 + 8))(v103, v94);
      v106 = sub_26C46BB04();
      v104 = v108;
      (*(v126 + 8))(v107, v127);
      v43 = v125;
      v105 = v122;
    }

    sub_26C3DE270(v102, &qword_280497268, &qword_26C46CFE0);
    v109 = sub_26C3E80A8(v106, v104, v130);

    *(v92 + 14) = v109;
    _os_log_impl(&dword_26C3D6000, v105, v121, "SyncedModel: changed ownership from:%s to:%s", v92, 0x16u);
    v110 = v120;
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v110, -1, -1);
    MEMORY[0x26D6A18D0](v92, -1, -1);
  }

  else
  {

    sub_26C3DE270(v46, &qword_280497268, &qword_26C46CFE0);
    sub_26C3DE270(v88, &qword_280497268, &qword_26C46CFE0);
  }

  v111 = *(v43 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler);
  if (v111)
  {
    v112 = *(v43 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler + 8);

    v111(v128, v129);
    sub_26C3DD730(v111);
  }

  sub_26C3DE270(v129, &qword_280497268, &qword_26C46CFE0);
  sub_26C3DE270(v128, &qword_280497268, &qword_26C46CFE0);
}

void sub_26C419DF8(_DWORD *a1, uint64_t a2)
{
  v5 = sub_26C46BB54();
  v115 = *(v5 - 8);
  v116 = v5;
  v6 = *(v115 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  v9 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v110 = &v106 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v112 = &v106 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v113 = &v106 - v19;
  MEMORY[0x28223BE20](v18);
  v114 = &v106 - v20;
  v122 = sub_26C46BCD4();
  isa = v122[-1].isa;
  v22 = *(isa + 8);
  MEMORY[0x28223BE20](v122);
  v111 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497638, &unk_26C46D920);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v106 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v119 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v106 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v106 - v35;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v108 = v15;
    v107 = v8;
    v118 = a1;
    v121 = a2;
    v38 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
    v39 = Strong;
    swift_beginAccess();
    v120 = v2;
    sub_26C3DDD48(v2 + v38, v36, &qword_280497268, &qword_26C46CFE0);
    v40 = *(isa + 2);
    v117 = v39;
    v41 = v39 + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant;
    v42 = v122;
    v40(v34, v41, v122);
    (*(isa + 7))(v34, 0, 1, v42);
    v43 = *(v24 + 48);
    sub_26C3DDD48(v36, v27, &qword_280497268, &qword_26C46CFE0);
    sub_26C3DDD48(v34, &v27[v43], &qword_280497268, &qword_26C46CFE0);
    v44 = *(isa + 6);
    if (v44(v27, 1, v42) == 1)
    {
      sub_26C3DE270(v34, &qword_280497268, &qword_26C46CFE0);
      sub_26C3DE270(v36, &qword_280497268, &qword_26C46CFE0);
      v45 = v44(&v27[v43], 1, v42);
      v47 = v120;
      v46 = v121;
      if (v45 == 1)
      {
        sub_26C3DE270(v27, &qword_280497268, &qword_26C46CFE0);
        goto LABEL_21;
      }
    }

    else
    {
      v52 = v119;
      sub_26C3DDD48(v27, v119, &qword_280497268, &qword_26C46CFE0);
      if (v44(&v27[v43], 1, v42) != 1)
      {
        v60 = v111;
        (*(isa + 4))(v111, &v27[v43], v42);
        sub_26C431280(&qword_280497658, MEMORY[0x277CCB248]);
        v61 = v52;
        v62 = sub_26C46C1C4();
        v63 = *(isa + 1);
        v63(v60, v42);
        sub_26C3DE270(v34, &qword_280497268, &qword_26C46CFE0);
        sub_26C3DE270(v36, &qword_280497268, &qword_26C46CFE0);
        v63(v61, v42);
        sub_26C3DE270(v27, &qword_280497268, &qword_26C46CFE0);
        v47 = v120;
        v46 = v121;
        if (v62)
        {
LABEL_21:
          v64 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
          swift_beginAccess();
          v65 = v114;
          sub_26C3DDD48(v47 + v64, v114, &qword_280497430, &unk_26C46D3D0);
          v67 = v115;
          v66 = v116;
          v68 = *(v115 + 48);
          v69 = v68(v65, 1, v116);
          sub_26C3DE270(v65, &qword_280497430, &unk_26C46D3D0);
          if (v69 == 1)
          {
            if (qword_280497148 != -1)
            {
              swift_once();
            }

            v70 = sub_26C46BFA4();
            __swift_project_value_buffer(v70, qword_280498530);
            v71 = sub_26C46BF84();
            v72 = sub_26C46C404();
            v73 = os_log_type_enabled(v71, v72);
            v74 = v121;
            if (v73)
            {
              v75 = swift_slowAlloc();
              *v75 = 0;
              _os_log_impl(&dword_26C3D6000, v71, v72, "SyncedModel: Handling ownership change request. Model is unowned. Returning success.", v75, 2u);
              MEMORY[0x26D6A18D0](v75, -1, -1);
            }

            v57 = v118;
            v58 = v74;
            v59 = 1;
LABEL_27:
            sub_26C41AC88(v57, v58, v59, 1);
LABEL_28:

            return;
          }

          v76 = v113;
          sub_26C3DDD48(v47 + v64, v113, &qword_280497430, &unk_26C46D3D0);
          v77 = v47 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID;
          v78 = v112;
          (*(v67 + 16))(v112, v77, v66);
          (*(v67 + 56))(v78, 0, 1, v66);
          v79 = v110;
          v80 = *(v109 + 48);
          sub_26C3DDD48(v76, v110, &qword_280497430, &unk_26C46D3D0);
          sub_26C3DDD48(v78, v79 + v80, &qword_280497430, &unk_26C46D3D0);
          if (v68(v79, 1, v66) == 1)
          {
            sub_26C3DE270(v78, &qword_280497430, &unk_26C46D3D0);
            sub_26C3DE270(v76, &qword_280497430, &unk_26C46D3D0);
            v81 = v68(v79 + v80, 1, v66);
            v82 = v120;
            v83 = v121;
            if (v81 == 1)
            {
              sub_26C3DE270(v79, &qword_280497430, &unk_26C46D3D0);
LABEL_37:
              v89 = *(v82 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler);
              if (v89)
              {
                v90 = *(v82 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler + 8);

                if (v89(v83))
                {
                  if (qword_280497148 != -1)
                  {
                    swift_once();
                  }

                  v91 = sub_26C46BFA4();
                  __swift_project_value_buffer(v91, qword_280498530);
                  v92 = sub_26C46BF84();
                  v93 = sub_26C46C404();
                  if (os_log_type_enabled(v92, v93))
                  {
                    v94 = swift_slowAlloc();
                    *v94 = 0;
                    _os_log_impl(&dword_26C3D6000, v92, v93, "SyncedModel: Handling ownership change request. Participant is owner and authority. Ownership request handler accepted change. Returning success.", v94, 2u);
                    MEMORY[0x26D6A18D0](v94, -1, -1);
                  }

                  v95 = v118;
                  v96 = v83;
                  v97 = 2;
                }

                else
                {
                  if (qword_280497148 != -1)
                  {
                    swift_once();
                  }

                  v102 = sub_26C46BFA4();
                  __swift_project_value_buffer(v102, qword_280498530);
                  v103 = sub_26C46BF84();
                  v104 = sub_26C46C404();
                  if (os_log_type_enabled(v103, v104))
                  {
                    v105 = swift_slowAlloc();
                    *v105 = 0;
                    _os_log_impl(&dword_26C3D6000, v103, v104, "SyncedModel: Handling ownership change request. Participant is owner and authority but ownership request handler refused change. Returning refusal.", v105, 2u);
                    MEMORY[0x26D6A18D0](v105, -1, -1);
                  }

                  v95 = v118;
                  v96 = v83;
                  v97 = 3;
                }

                sub_26C41AC88(v95, v96, v97, 1);
                sub_26C3DD730(v89);
                goto LABEL_28;
              }

              if (qword_280497148 != -1)
              {
                swift_once();
              }

              v98 = sub_26C46BFA4();
              __swift_project_value_buffer(v98, qword_280498530);
              v99 = sub_26C46BF84();
              v100 = sub_26C46C404();
              if (os_log_type_enabled(v99, v100))
              {
                v101 = swift_slowAlloc();
                *v101 = 0;
                _os_log_impl(&dword_26C3D6000, v99, v100, "SyncedModel: Handling ownership change request. Participant is owner and authority but no ownership request handler has been registered. Returning refusal.", v101, 2u);
                MEMORY[0x26D6A18D0](v101, -1, -1);
              }

              v57 = v118;
              v58 = v83;
              v59 = 3;
              goto LABEL_27;
            }
          }

          else
          {
            v84 = v108;
            sub_26C3DDD48(v79, v108, &qword_280497430, &unk_26C46D3D0);
            if (v68(v79 + v80, 1, v66) != 1)
            {
              v85 = v79 + v80;
              v86 = v107;
              (*(v67 + 32))(v107, v85, v66);
              sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0]);
              v87 = sub_26C46C1C4();
              v88 = *(v67 + 8);
              v88(v86, v66);
              sub_26C3DE270(v112, &qword_280497430, &unk_26C46D3D0);
              sub_26C3DE270(v113, &qword_280497430, &unk_26C46D3D0);
              v88(v84, v66);
              sub_26C3DE270(v79, &qword_280497430, &unk_26C46D3D0);
              v82 = v120;
              v83 = v121;
              if (v87)
              {
                goto LABEL_37;
              }

LABEL_35:
              sub_26C41C740(v118, v83);
              goto LABEL_28;
            }

            sub_26C3DE270(v112, &qword_280497430, &unk_26C46D3D0);
            sub_26C3DE270(v113, &qword_280497430, &unk_26C46D3D0);
            (*(v67 + 8))(v84, v66);
            v83 = v121;
          }

          sub_26C3DE270(v79, &qword_280497B78, "n6");
          goto LABEL_35;
        }

LABEL_15:
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v53 = sub_26C46BFA4();
        __swift_project_value_buffer(v53, qword_280498530);
        v54 = sub_26C46BF84();
        v55 = sub_26C46C3D4();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_26C3D6000, v54, v55, "SyncedModel: Received ownership change request but user is not authority", v56, 2u);
          MEMORY[0x26D6A18D0](v56, -1, -1);
        }

        v57 = v118;
        v58 = v46;
        v59 = 8;
        goto LABEL_27;
      }

      sub_26C3DE270(v34, &qword_280497268, &qword_26C46CFE0);
      sub_26C3DE270(v36, &qword_280497268, &qword_26C46CFE0);
      (*(isa + 1))(v52, v42);
      v46 = v121;
    }

    sub_26C3DE270(v27, &qword_280497638, &unk_26C46D920);
    goto LABEL_15;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v48 = sub_26C46BFA4();
  __swift_project_value_buffer(v48, qword_280498530);
  v122 = sub_26C46BF84();
  v49 = sub_26C46C3E4();
  if (os_log_type_enabled(v122, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_26C3D6000, v122, v49, "SyncedModel: Received ownership change request but model is not associated with a manager", v50, 2u);
    MEMORY[0x26D6A18D0](v50, -1, -1);
  }

  v51 = v122;
}

void sub_26C41AC88(uint64_t a1, void (*a2)(void, void, void, void), uint64_t a3, int a4)
{
  v208 = a4;
  v206 = a2;
  v207 = a3;
  v205 = a1;
  v171 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v175 = *(v171 - 8);
  v5 = *(v175 + 64);
  MEMORY[0x28223BE20](v171);
  v173 = (&v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = sub_26C46BCF4();
  v174 = *(v181 - 8);
  v7 = *(v174 + 64);
  MEMORY[0x28223BE20](v181);
  v172 = (&v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v190 = type metadata accessor for SyncMessage(0);
  v9 = *(*(v190 - 8) + 64);
  MEMORY[0x28223BE20](v190);
  v191 = &v166 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v180 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v179 = &v166 - v16;
  MEMORY[0x28223BE20](v15);
  v178 = &v166 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v196 = &v166 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v188 = &v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v177 = &v166 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v194 = &v166 - v28;
  MEMORY[0x28223BE20](v27);
  v195 = &v166 - v29;
  v30 = type metadata accessor for PBUUID(0);
  v31 = *(v30 - 8);
  v210 = v30;
  v211 = v31;
  isa = v31[8].isa;
  v33 = MEMORY[0x28223BE20](v30);
  v187 = (&v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x28223BE20](v33);
  v176 = (&v166 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v193 = (&v166 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v201 = (&v166 - v40);
  MEMORY[0x28223BE20](v39);
  v186 = (&v166 - v41);
  v42 = type metadata accessor for OwnershipChangeReplyMessage(0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v189 = &v166 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v198 = &v166 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v166 - v48;
  v50 = sub_26C46BB54();
  v51 = *(v50 - 1);
  v52 = *(v51 + 64);
  v53 = MEMORY[0x28223BE20](v50);
  v200 = (&v166 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = MEMORY[0x28223BE20](v53);
  v203 = &v166 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v192 = &v166 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v199 = &v166 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v202 = &v166 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v65 = &v166 - v64;
  MEMORY[0x28223BE20](v63);
  v67 = &v166 - v66;
  v68 = sub_26C46BCD4();
  v69 = *(v68 - 1);
  v70 = v69[8];
  MEMORY[0x28223BE20](v68);
  v72 = &v166 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = v4;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v185 = v42;
    v74 = v69[2];
    v197 = Strong;
    v168 = v69 + 2;
    v167 = v74;
    v74(v72, Strong + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant, v68);
    sub_26C46BCC4();
    sub_26C46BCC4();
    v75 = sub_26C46BB14();
    v204 = v51;
    v77 = *(v51 + 8);
    v76 = (v51 + 8);
    v77(v65, v50);
    v183 = v77;
    v77(v67, v50);
    v169 = v69;
    v80 = v69[1];
    v78 = (v69 + 1);
    v79 = v80;
    v170 = v68;
    (v80)(v72, v68);
    v184 = v76;
    v182 = v67;
    if (v75)
    {
      v81 = v50;
      sub_26C41F4FC(v207, v208 & 1, v212);
      v82 = v209;
      v50 = v185;
      v83 = v195;
      if (v212[0])
      {
LABEL_6:
        v200 = *(&v82->isa + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
        LODWORD(v198) = *(&v82[1].isa + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
        v87 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
        swift_beginAccess();
        v203 = *(v204 + 16);
        v204 += 16;
        (v203)(v202, v82 + v87, v81);
        v88 = type metadata accessor for OwnershipChangeRequestMessage(0);
        sub_26C3DDD48(v205 + *(v88 + 40), v83, &qword_280497458, &unk_26C46D3F0);
        v89 = v210;
        v90 = v211[6].isa;
        if ((v90)(v83, 1, v210) == 1)
        {
          v91 = v186;
          *v186 = 0;
          v91[1] = 0;
          v92 = v91 + *(v89 + 24);
          sub_26C46BD14();
          if ((v90)(v83, 1, v89) != 1)
          {
            sub_26C3DE270(v83, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v91 = v186;
          sub_26C42B9BC(v83, v186, type metadata accessor for PBUUID);
        }

        sub_26C40F3CC();
        sub_26C42BA24(v91, type metadata accessor for PBUUID);
        LODWORD(v205) = *(&v82->isa + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
        *(v49 + 16) = 0;
        *(v49 + 24) = 1;
        *(v49 + 28) = 0;
        v115 = (v49 + v50[7]);
        sub_26C46BD14();
        v116 = v50[8];
        v117 = v210;
        v118 = v211[7].isa;
        v211 += 7;
        v206 = v118;
        (v118)(v49 + v116, 1, 1, v210);
        v196 = v50[9];
        (v118)(v49 + v196, 1, 1, v117);
        *v49 = v200;
        *(v49 + 8) = v198;
        v119 = v182;
        v120 = v203;
        (v203)(v182, v202, v81);
        v120(v65, v119, v81);
        v121 = v201;
        sub_26C40F280(v65, v201);
        v122 = v183;
        v183(v119, v81);
        sub_26C3DE270(v49 + v116, &qword_280497458, &unk_26C46D3F0);
        v200 = type metadata accessor for PBUUID;
        sub_26C42B9BC(v121, v49 + v116, type metadata accessor for PBUUID);
        v206(v49 + v116, 0, 1, v210);
        v123 = v199;
        v120(v119, v199, v81);
        v120(v65, v119, v81);
        sub_26C40F280(v65, v121);
        v122(v119, v81);
        v122(v123, v81);
        v122(v202, v81);
        v124 = v196;
        sub_26C3DE270(v49 + v196, &qword_280497458, &unk_26C46D3F0);
        sub_26C42B9BC(v121, v49 + v124, v200);
        v206(v49 + v124, 0, 1, v210);
        *(v49 + 16) = v207;
        *(v49 + 24) = v208 & 1;
        *(v49 + 28) = v205;
        sub_26C41E638(v49);

        sub_26C42BA24(v49, type metadata accessor for OwnershipChangeReplyMessage);
        return;
      }

      v84 = *(&v209->isa + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
      v85 = __CFADD__(v84, 1);
      v86 = v84 + 1;
      if (!v85)
      {
        *(&v209->isa + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = v86;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_38;
    }

    v186 = v79;
    v195 = v78;
    v202 = type metadata accessor for OwnershipChangeRequestMessage(0);
    v199 = *(v202 + 9);
    v97 = v194;
    sub_26C3DDD48(&v199[v205], v194, &qword_280497458, &unk_26C46D3F0);
    v98 = v210;
    v82 = v211 + 6;
    v99 = v211[6].isa;
    if ((v99)(v97, 1, v210) == 1)
    {
      v100 = v193;
      *v193 = 0;
      v100[1] = 0;
      v101 = v100 + *(v98 + 24);
      sub_26C46BD14();
      v102 = v99;
      v103 = (v99)(v97, 1, v98);
      v104 = v170;
      v105 = v169;
      if (v103 != 1)
      {
        sub_26C3DE270(v97, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v102 = v99;
      v100 = v193;
      sub_26C42B9BC(v97, v193, type metadata accessor for PBUUID);
      v104 = v170;
      v105 = v169;
    }

    v106 = v192;
    sub_26C40F3CC();
    sub_26C42BA24(v100, type metadata accessor for PBUUID);
    v107 = v196;
    v167(v196, v206, v104);
    (v105[7])(v107, 0, 1, v104);
    v76 = v209;
    swift_beginAccess();
    sub_26C3D8BB4(v107, v106);
    swift_endAccess();
    sub_26C41F4FC(v207, v208 & 1, v212);
    v81 = 0x280497000;
    v108 = v102;
    v166 = v65;
    if (!v212[0])
    {
      v109 = v177;
      sub_26C3DDD48(&v199[v205], v177, &qword_280497458, &unk_26C46D3F0);
      v110 = v210;
      if (v102(v109, 1, v210) == 1)
      {
        v111 = v176;
        *v176 = 0;
        v111[1] = 0;
        v112 = v111 + *(v110 + 24);
        sub_26C46BD14();
        v113 = v102(v109, 1, v110);
        v114 = v204;
        if (v113 != 1)
        {
          sub_26C3DE270(v109, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        v111 = v176;
        sub_26C42B9BC(v109, v176, type metadata accessor for PBUUID);
        v114 = v204;
      }

      v125 = v178;
      sub_26C40F3CC();
      sub_26C42BA24(v111, type metadata accessor for PBUUID);
      (*(v114 + 56))(v125, 0, 1, v50);
      v126 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
      v76 = v209;
      swift_beginAccess();
      v68 = &qword_280497430;
      v127 = v179;
      sub_26C3DDD48(v76 + v126, v179, &qword_280497430, &unk_26C46D3D0);
      swift_beginAccess();
      sub_26C3E9EB8(v125, v76 + v126);
      swift_endAccess();
      v128 = v180;
      sub_26C3DDD48(v76 + v126, v180, &qword_280497430, &unk_26C46D3D0);
      v75 = v76;
      sub_26C418F90(v127, v128);
      sub_26C3DE270(v128, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v127, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v125, &qword_280497430, &unk_26C46D3D0);
      v81 = 0x280497000uLL;
      v129 = *(v76 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
      v85 = __CFADD__(v129, 1);
      v130 = v129 + 1;
      if (v85)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        v68 = sub_26C42BE38(0, v68[2] + 1, 1, v68, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
        *(v75 + 16) = v68;
LABEL_34:
        v163 = v175;
        v165 = v68[2];
        v164 = v68[3];
        if (v165 >= v164 >> 1)
        {
          v68 = sub_26C42BE38(v164 > 1, v165 + 1, 1, v68, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
        }

        v68[2] = v165 + 1;
        sub_26C42B9BC(v82, v68 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v165, type metadata accessor for SyncedModelManager.MessageWrapper);
        *(v197 + 16) = v68;
        swift_endAccess();
        v76[1](v50, v181);

        sub_26C42BA24(v81, type metadata accessor for SyncMessage);
        sub_26C42BA24(v198, type metadata accessor for OwnershipChangeReplyMessage);
        return;
      }

      *(v76 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = v130;
    }

    v199 = *(v76 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
    LODWORD(v196) = *(v76 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
    v131 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v132 = *(v204 + 16);
    v132(v203, v76 + v131, v50);
    v133 = v188;
    sub_26C3DDD48(v205 + *(v202 + 10), v188, &qword_280497458, &unk_26C46D3F0);
    v134 = v210;
    if (v108(v133, 1, v210) == 1)
    {
      v135 = v187;
      *v187 = 0;
      v135[1] = 0;
      v136 = v135 + *(v134 + 24);
      sub_26C46BD14();
      if (v108(v133, 1, v134) != 1)
      {
        sub_26C3DE270(v133, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v135 = v187;
      sub_26C42B9BC(v133, v187, type metadata accessor for PBUUID);
    }

    sub_26C40F3CC();
    sub_26C42BA24(v135, type metadata accessor for PBUUID);
    LODWORD(v205) = *(&v209->isa + *(v81 + 2848));
    v137 = v198;
    *(v198 + 16) = 0;
    *(v137 + 24) = 1;
    *(v137 + 28) = 0;
    v138 = v185;
    v139 = v137 + v185[7];
    sub_26C46BD14();
    v140 = v138[8];
    v141 = v210;
    v142 = v211[7].isa;
    v211 += 7;
    v209 = v142;
    (v142)(v137 + v140, 1, 1, v210);
    v204 = v138[9];
    (v142)(v137 + v204, 1, 1, v141);
    *v137 = v199;
    *(v137 + 8) = v196;
    v143 = v182;
    v132(v182, v203, v50);
    v144 = v166;
    v132(v166, v143, v50);
    v145 = v201;
    sub_26C40F280(v144, v201);
    v146 = v183;
    v183(v143, v50);
    sub_26C3DE270(v137 + v140, &qword_280497458, &unk_26C46D3F0);
    v202 = type metadata accessor for PBUUID;
    sub_26C42B9BC(v145, v137 + v140, type metadata accessor for PBUUID);
    (v209)(v137 + v140, 0, 1, v210);
    v147 = v200;
    v132(v143, v200, v50);
    v132(v144, v143, v50);
    sub_26C40F280(v144, v145);
    v146(v143, v50);
    v146(v147, v50);
    v146(v203, v50);
    v148 = v204;
    sub_26C3DE270(v137 + v204, &qword_280497458, &unk_26C46D3F0);
    sub_26C42B9BC(v145, v137 + v148, v202);
    (v209)(v137 + v148, 0, 1, v210);
    *(v137 + 16) = v207;
    *(v137 + 24) = v208 & 1;
    *(v137 + 28) = v205;
    v149 = type metadata accessor for SyncMessage.OneOf_Contents(0);
    v150 = *(*(v149 - 8) + 56);
    v81 = v191;
    v150(v191, 1, 1, v149);
    v151 = v81 + *(v190 + 20);
    sub_26C46BD14();
    v152 = v189;
    sub_26C42C130(v137, v189, type metadata accessor for OwnershipChangeReplyMessage);
    sub_26C3DE270(v81, &qword_280497650, &unk_26C46D930);
    sub_26C42B9BC(v152, v81, type metadata accessor for OwnershipChangeReplyMessage);
    swift_storeEnumTagMultiPayload();
    v150(v81, 0, 1, v149);
    sub_26C431280(&qword_280497660, type metadata accessor for SyncMessage);
    v153 = sub_26C46BE64();
    v155 = v154;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497668, &unk_26C46E530);
    v156 = v169[9];
    v157 = (*(v169 + 80) + 32) & ~*(v169 + 80);
    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_26C46D760;
    v159 = v170;
    v167(v158 + v157, v206, v170);
    v160 = sub_26C3FD100(v158);
    swift_setDeallocating();
    (v186)(v158 + v157, v159);
    swift_deallocClassInstance();
    v50 = v172;
    *v172 = v160;
    v76 = v174;
    v161 = v181;
    (*(v174 + 104))(v50, *MEMORY[0x277CCB268], v181);
    v82 = v173;
    (v76[2])(v173 + *(v171 + 20), v50, v161);
    v82->isa = v153;
    v82[1].isa = v155;
    v75 = v197;
    swift_beginAccess();
    v68 = *(v75 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v75 + 16) = v68;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v93 = sub_26C46BFA4();
  __swift_project_value_buffer(v93, qword_280498530);
  v211 = sub_26C46BF84();
  v94 = sub_26C46C3E4();
  if (os_log_type_enabled(v211, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&dword_26C3D6000, v211, v94, "SyncedModel: Replying to ownership change request but model is not associated with a manager", v95, 2u);
    MEMORY[0x26D6A18D0](v95, -1, -1);
  }

  v96 = v211;
}

void sub_26C41C740(_DWORD *a1, uint64_t a2)
{
  v223 = a2;
  v252 = a1;
  v219 = sub_26C46C0A4();
  v218 = *(v219 - 8);
  v3 = *(v218 + 64);
  MEMORY[0x28223BE20](v219);
  v216 = v197 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_26C46C0D4();
  v215 = *(v217 - 8);
  v5 = *(v215 + 64);
  MEMORY[0x28223BE20](v217);
  v214 = v197 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_26C46C0F4();
  v213 = *(v220 - 8);
  v7 = *(v213 + 64);
  v8 = MEMORY[0x28223BE20](v220);
  v211 = v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v212 = v197 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497328, &qword_26C46E550);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v210 = v197 - v13;
  v200 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v208 = *(v200 - 8);
  v14 = *(v208 + 64);
  MEMORY[0x28223BE20](v200);
  v206 = (v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v209 = sub_26C46BCF4();
  v207 = *(v209 - 8);
  v16 = *(v207 + 64);
  MEMORY[0x28223BE20](v209);
  v205 = (v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v222 = type metadata accessor for SyncMessage(0);
  v18 = *(*(v222 - 8) + 64);
  MEMORY[0x28223BE20](v222);
  v225 = v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_26C46BCD4();
  v236 = *(v237 - 8);
  v20 = *(v236 + 64);
  v21 = MEMORY[0x28223BE20](v237);
  v221 = v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v197 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v243 = v197 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v204 = v197 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v249 = (v197 - v33);
  MEMORY[0x28223BE20](v32);
  v35 = v197 - v34;
  v36 = type metadata accessor for PBUUID(0);
  v254 = *(v36 - 8);
  isa = v254[8].isa;
  v38 = MEMORY[0x28223BE20](v36);
  v201 = (v197 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x28223BE20](v38);
  v242 = (v197 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v246 = (v197 - v43);
  MEMORY[0x28223BE20](v42);
  v45 = (v197 - v44);
  v46 = sub_26C46BB54();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = v197 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49);
  v239 = v197 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v241 = v197 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v244 = v197 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v251 = v197 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v253 = v197 - v61;
  MEMORY[0x28223BE20](v60);
  v63 = v197 - v62;
  v64 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  v202 = *(v64 - 1);
  v65 = *(v202 + 64);
  v66 = MEMORY[0x28223BE20](v64);
  v224 = v197 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = v67;
  MEMORY[0x28223BE20](v66);
  v250 = v197 - v68;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v198 = v51;
    v240 = Strong;
    v199 = v24;
    v228 = *(v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
    v230 = *(v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
    v70 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v248 = v47;
    v71 = *(v47 + 16);
    v238 = v2;
    v235 = v46;
    v232 = v47 + 16;
    v231 = v71;
    v71(v63, (v2 + v70), v46);
    v72 = type metadata accessor for OwnershipChangeRequestMessage(0);
    sub_26C3DDD48(v252 + *(v72 + 36), v35, &qword_280497458, &unk_26C46D3F0);
    v73 = v254;
    v75 = v254 + 6;
    v74 = v254[6].isa;
    v76 = (v74)(v35, 1, v36);
    v233 = v74;
    v247 = v63;
    if (v76 == 1)
    {
      *v45 = 0;
      v45[1] = 0;
      v77 = v45 + *(v36 + 24);
      sub_26C46BD14();
      v78 = v36;
      v79 = (v74)(v35, 1, v36);
      v80 = v246;
      if (v79 != 1)
      {
        sub_26C3DE270(v35, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v78 = v36;
      sub_26C42B9BC(v35, v45, type metadata accessor for PBUUID);
      v80 = v246;
    }

    sub_26C40F3CC();
    sub_26C42BA24(v45, type metadata accessor for PBUUID);
    v229 = v252[7];
    v197[0] = *(v72 + 40);
    v85 = v249;
    sub_26C3DDD48(v252 + v197[0], v249, &qword_280497458, &unk_26C46D3F0);
    v86 = v78;
    v87 = v233;
    v88 = v233(v85, 1, v78);
    v197[1] = v75;
    if (v88 == 1)
    {
      v89 = v247;
      *v80 = 0;
      v80[1] = 0;
      v90 = v80 + *(v86 + 24);
      sub_26C46BD14();
      v91 = v87(v85, 1, v86);
      v92 = v250;
      if (v91 != 1)
      {
        sub_26C3DE270(v85, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v89 = v247;
      sub_26C42B9BC(v85, v80, type metadata accessor for PBUUID);
      v92 = v250;
    }

    sub_26C40F3CC();
    sub_26C42BA24(v80, type metadata accessor for PBUUID);
    *(v92 + 3) = 0;
    v93 = &v92[v64[6]];
    sub_26C46BD14();
    v94 = v64[7];
    v95 = v73[7].isa;
    v254 = v73 + 7;
    v245 = v95;
    v95(&v92[v94], 1, 1, v86);
    v226 = v64[8];
    v95(&v92[v226], 1, 1, v86);
    v227 = v64[9];
    v95(&v92[v227], 1, 1, v86);
    *v92 = v228;
    v92[8] = v230;
    v96 = v244;
    v97 = v89;
    v98 = v235;
    v99 = v231;
    v231(v244, v97, v235);
    v100 = v241;
    v99(v241, v96, v98);
    v101 = v242;
    sub_26C40F280(v100, v242);
    v234 = v86;
    v102 = *(v248 + 8);
    v250 = (v248 + 8);
    v249 = v102;
    v102(v96, v98);
    sub_26C3DE270(&v92[v94], &qword_280497458, &unk_26C46D3F0);
    v246 = type metadata accessor for PBUUID;
    sub_26C42B9BC(v101, &v92[v94], type metadata accessor for PBUUID);
    v103 = &v92[v94];
    v104 = v245;
    v245(v103, 0, 1, v86);
    v99(v96, v253, v98);
    v99(v100, v96, v98);
    v105 = v101;
    sub_26C40F280(v100, v101);
    v249(v96, v98);
    v106 = v226;
    sub_26C3DE270(&v92[v226], &qword_280497458, &unk_26C46D3F0);
    sub_26C42B9BC(v105, &v92[v106], v246);
    v107 = &v92[v106];
    v108 = v234;
    v104(v107, 0, 1, v234);
    *(v92 + 3) = v229;
    v109 = v251;
    v99(v96, v251, v98);
    v99(v100, v96, v98);
    v110 = v100;
    v111 = v249;
    sub_26C40F280(v110, v105);
    v111(v96, v98);
    v111(v109, v98);
    v111(v253, v98);
    v111(v247, v98);
    v112 = v227;
    sub_26C3DE270(&v92[v227], &qword_280497458, &unk_26C46D3F0);
    sub_26C42B9BC(v105, &v92[v112], v246);
    v113 = v92;
    v245(&v92[v112], 0, 1, v108);
    v114 = v248;
    v115 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    v116 = v238;
    swift_beginAccess();
    v117 = v116 + v115;
    v118 = v243;
    sub_26C3DDD48(v117, v243, &qword_280497430, &unk_26C46D3D0);
    if ((*(v114 + 48))(v118, 1, v98) == 1)
    {
      sub_26C3DE270(v118, &qword_280497430, &unk_26C46D3D0);
LABEL_27:
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v145 = sub_26C46BFA4();
      __swift_project_value_buffer(v145, qword_280498530);
      v146 = sub_26C46BF84();
      v147 = sub_26C46C3E4();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        *v148 = 0;
        _os_log_impl(&dword_26C3D6000, v146, v147, "SyncedModel: couldn't find participant for owner UUID when handling ownership change request", v148, 2u);
        MEMORY[0x26D6A18D0](v148, -1, -1);
      }

      sub_26C42BA24(v113, type metadata accessor for OwnershipHandoffRequestMessage);
      return;
    }

    v119 = v239;
    (*(v114 + 32))(v239, v118, v98);
    v120 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants;
    swift_beginAccess();
    v121 = *(v116 + v120);
    if (*(v121 + 16))
    {

      v122 = sub_26C42C210(v119);
      if (v123)
      {
        v124 = *(v121 + 56);
        v125 = (v236 + 16);
        v126 = *(v236 + 16);
        v247 = *(v236 + 72);
        v127 = v199;
        v128 = v237;
        v126(v199, v124 + v247 * v122, v237);

        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v129 = sub_26C46BFA4();
        v130 = __swift_project_value_buffer(v129, qword_280498530);
        v131 = v221;
        v251 = v126;
        v126(v221, v127, v128);
        v248 = v130;
        v132 = sub_26C46BF84();
        v133 = sub_26C46C404();
        v134 = os_log_type_enabled(v132, v133);
        v253 = v125;
        if (v134)
        {
          v135 = swift_slowAlloc();
          v246 = swift_slowAlloc();
          aBlock[0] = v246;
          *v135 = 136315138;
          v136 = v244;
          sub_26C46BCC4();
          sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0]);
          v137 = sub_26C46C704();
          v138 = v113;
          v139 = v131;
          v141 = v140;
          v249(v136, v98);
          v142 = v139;
          v113 = v138;
          v254 = *(v236 + 8);
          (v254)(v142, v237);
          v143 = sub_26C3E80A8(v137, v141, aBlock);

          *(v135 + 4) = v143;
          _os_log_impl(&dword_26C3D6000, v132, v133, "SyncedModel: Authority requesting ownership of model owned by %s", v135, 0xCu);
          v144 = v246;
          __swift_destroy_boxed_opaque_existential_1(v246);
          MEMORY[0x26D6A18D0](v144, -1, -1);
          MEMORY[0x26D6A18D0](v135, -1, -1);
        }

        else
        {

          v254 = *(v236 + 8);
          (v254)(v131, v128);
        }

        v149 = v225;
        v150 = v224;
        v151 = type metadata accessor for SyncMessage.OneOf_Contents(0);
        v152 = *(*(v151 - 8) + 56);
        v152(v149, 1, 1, v151);
        v153 = v149 + *(v222 + 20);
        sub_26C46BD14();
        sub_26C42C130(v113, v150, type metadata accessor for OwnershipHandoffRequestMessage);
        sub_26C3DE270(v149, &qword_280497650, &unk_26C46D930);
        sub_26C42B9BC(v150, v149, type metadata accessor for OwnershipHandoffRequestMessage);
        swift_storeEnumTagMultiPayload();
        v152(v149, 0, 1, v151);
        sub_26C431280(&qword_280497660, type metadata accessor for SyncMessage);
        v154 = sub_26C46BE64();
        v155 = v199;
        v156 = v154;
        v158 = v157;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497668, &unk_26C46E530);
        v159 = v236;
        v160 = (*(v236 + 80) + 32) & ~*(v236 + 80);
        v161 = swift_allocObject();
        *(v161 + 16) = xmmword_26C46D760;
        v162 = v155;
        v163 = v237;
        (v251)(v161 + v160, v162, v237);
        v164 = sub_26C3FD100(v161);
        swift_setDeallocating();
        v246 = (v159 + 8);
        (v254)(v161 + v160, v163);
        swift_deallocClassInstance();
        v165 = v205;
        *v205 = v164;
        v166 = v207;
        v167 = v209;
        (*(v207 + 104))(v165, *MEMORY[0x277CCB268], v209);
        v168 = v206;
        (*(v166 + 16))(v206 + *(v200 + 20), v165, v167);
        *v168 = v156;
        v168[1] = v158;
        v169 = v240;
        swift_beginAccess();
        v170 = *(v169 + 16);
        v248 = v156;
        v247 = v158;
        sub_26C3DDDB0(v156, v158);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v169 + 16) = v170;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v170 = sub_26C42BE38(0, v170[2] + 1, 1, v170, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
          *(v240 + 16) = v170;
        }

        v173 = v170[2];
        v172 = v170[3];
        if (v173 >= v172 >> 1)
        {
          v170 = sub_26C42BE38(v172 > 1, v173 + 1, 1, v170, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
        }

        v170[2] = v173 + 1;
        sub_26C42B9BC(v168, v170 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v173, type metadata accessor for SyncedModelManager.MessageWrapper);
        *(v240 + 16) = v170;
        swift_endAccess();
        (*(v166 + 8))(v165, v167);
        v174 = v252;
        v175 = v204;
        sub_26C3DDD48(v252 + v197[0], v204, &qword_280497458, &unk_26C46D3F0);
        v176 = v234;
        v177 = v233;
        if (v233(v175, 1, v234) == 1)
        {
          v178 = v177;
          v179 = v201;
          *v201 = 0;
          v179[1] = 0;
          v180 = v179 + *(v176 + 24);
          sub_26C46BD14();
          v181 = v178(v175, 1, v176);
          v182 = v198;
          if (v181 != 1)
          {
            sub_26C3DE270(v175, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v179 = v201;
          sub_26C42B9BC(v175, v201, type metadata accessor for PBUUID);
          v182 = v198;
        }

        sub_26C40F3CC();
        sub_26C42BA24(v179, type metadata accessor for PBUUID);
        v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
        v184 = *(v183 + 48);
        v185 = v210;
        (v251)(v210, v223, v237);
        sub_26C42C130(v174, v185 + v184, type metadata accessor for OwnershipChangeRequestMessage);
        (*(*(v183 - 8) + 56))(v185, 0, 1, v183);
        v186 = v238;
        swift_beginAccess();
        sub_26C3D8FA0(v185, v182);
        swift_endAccess();
        v252 = *(v240 + 40);
        v187 = v211;
        sub_26C46C0E4();
        v188 = v212;
        sub_26C46C104();
        v253 = *(v213 + 8);
        (v253)(v187, v220);
        v189 = v224;
        sub_26C42C130(v113, v224, type metadata accessor for OwnershipHandoffRequestMessage);
        v190 = (*(v202 + 80) + 24) & ~*(v202 + 80);
        v191 = swift_allocObject();
        *(v191 + 16) = v186;
        sub_26C42B9BC(v189, v191 + v190, type metadata accessor for OwnershipHandoffRequestMessage);
        aBlock[4] = sub_26C431164;
        aBlock[5] = v191;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_26C3DF384;
        aBlock[3] = &block_descriptor_112;
        v192 = _Block_copy(aBlock);

        v193 = v214;
        sub_26C46C0C4();
        aBlock[6] = MEMORY[0x277D84F90];
        sub_26C431280(&qword_2804973F8, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497400, &qword_26C46D290);
        sub_26C3FBC1C(&qword_280497408, &qword_280497400, &qword_26C46D290);
        v194 = v216;
        v195 = v219;
        sub_26C46C484();
        v196 = v252;
        MEMORY[0x26D6A0E30](v188, v193, v194, v192);
        _Block_release(v192);

        sub_26C3DDEA8(v248, v247);
        (*(v218 + 8))(v194, v195);
        (*(v215 + 8))(v193, v217);
        (v253)(v188, v220);
        (v254)(v199, v237);
        v249(v239, v235);
        sub_26C42BA24(v225, type metadata accessor for SyncMessage);
        sub_26C42BA24(v113, type metadata accessor for OwnershipHandoffRequestMessage);

        return;
      }
    }

    v111(v119, v98);
    goto LABEL_27;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v81 = sub_26C46BFA4();
  __swift_project_value_buffer(v81, qword_280498530);
  v254 = sub_26C46BF84();
  v82 = sub_26C46C3E4();
  if (os_log_type_enabled(v254, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_26C3D6000, v254, v82, "SyncedModel: Asking owner for handoff but model is not associated with a manager", v83, 2u);
    MEMORY[0x26D6A18D0](v83, -1, -1);
  }

  v84 = v254;
}

void sub_26C41E638(uint64_t a1)
{
  v2 = v1;
  v126 = type metadata accessor for OwnershipChangeReplyMessage(0);
  v4 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v127 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497308, &unk_26C46D100);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v122 = &v117 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v125 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v119 = &v117 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = (&v117 - v15);
  v128 = type metadata accessor for PBUUID(0);
  v130 = *(v128 - 8);
  v17 = *(v130 + 64);
  v18 = MEMORY[0x28223BE20](v128);
  v123 = (&v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v121 = (&v117 - v21);
  MEMORY[0x28223BE20](v20);
  v23 = &v117 - v22;
  v131 = sub_26C46BB54();
  v129 = *(v131 - 8);
  v24 = *(v129 + 64);
  v25 = MEMORY[0x28223BE20](v131);
  v124 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v120 = &v117 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v117 - v29;
  v31 = type metadata accessor for CachedOwnershipRequest(0);
  v133 = *(v31 - 1);
  v134 = v31;
  v32 = *(v133 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v118 = &v117 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v117 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v44 = &v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v117 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v117 - v48;
  v50 = *(a1 + 16);
  v132 = a1;
  sub_26C41F4FC(v50, *(a1 + 24), v137);
  if (!v137[0])
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v61 = sub_26C46BFA4();
    __swift_project_value_buffer(v61, qword_280498530);
    v62 = sub_26C46BF84();
    v63 = sub_26C46C404();
    v64 = os_log_type_enabled(v62, v63);
    v16 = v131;
    if (v64)
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_26C3D6000, v62, v63, "SyncedModel: Handling ownership request reply. Request was success!", v65, 2u);
      MEMORY[0x26D6A18D0](v65, -1, -1);
    }

    v66 = v129;
    (*(v129 + 16))(v49, v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v16);
    (*(v66 + 56))(v49, 0, 1, v16);
    v67 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    swift_beginAccess();
    sub_26C3DDD48(v2 + v67, v47, &qword_280497430, &unk_26C46D3D0);
    swift_beginAccess();
    sub_26C3E9EB8(v49, v2 + v67);
    swift_endAccess();
    sub_26C3DDD48(v2 + v67, v44, &qword_280497430, &unk_26C46D3D0);
    sub_26C418F90(v47, v44);
    sub_26C3DE270(v44, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v47, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v49, &qword_280497430, &unk_26C46D3D0);
    *(v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = *(v132 + 28);
    v68 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingReply;
    swift_beginAccess();
    v30 = *(v2 + v68);
    v69 = 1 << v30[32];
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(v30 + 8);
    v23 = ((v69 + 63) >> 6);
    v72 = *(v2 + v68);

    v35 = 0;
    while (v71)
    {
      v73 = v35;
LABEL_21:
      v74 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      sub_26C42C130(*(v30 + 7) + *(v133 + 72) * (v74 | (v73 << 6)), v39, type metadata accessor for CachedOwnershipRequest);
      v75 = &v39[SHIDWORD(v134[2].isa)];
      v16 = *v75;
      v76 = *(v75 + 1);

      sub_26C42BA24(v39, type metadata accessor for CachedOwnershipRequest);
      v135 = 0;
      v16(&v135);
    }

    while (1)
    {
      v73 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v73 >= v23)
      {

        v81 = *(v2 + v68);
        *(v2 + v68) = MEMORY[0x277D84F98];

        sub_26C418080();
        return;
      }

      v71 = *&v30[8 * v73 + 64];
      ++v35;
      if (v71)
      {
        v35 = v73;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_49:
    swift_once();
    goto LABEL_4;
  }

  if (v137[0] != 1)
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v77 = sub_26C46BFA4();
    __swift_project_value_buffer(v77, qword_280498530);
    v134 = sub_26C46BF84();
    v78 = sub_26C46C3E4();
    if (os_log_type_enabled(v134, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_26C3D6000, v134, v78, "SyncedModel: got timedOut result when paring OwnershipRequestReplyMessage", v79, 2u);
      MEMORY[0x26D6A18D0](v79, -1, -1);
    }

    v80 = v134;

    return;
  }

  if (qword_280497148 != -1)
  {
    goto LABEL_49;
  }

LABEL_4:
  v51 = sub_26C46BFA4();
  __swift_project_value_buffer(v51, qword_280498530);
  v52 = sub_26C46BF84();
  v53 = sub_26C46C404();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_26C3D6000, v52, v53, "SyncedModel: Handling ownership request reply. Request was refused.", v54, 2u);
    MEMORY[0x26D6A18D0](v54, -1, -1);
  }

  v55 = *(v126 + 36);
  sub_26C3DDD48(v132 + v55, v16, &qword_280497458, &unk_26C46D3F0);
  v56 = v130 + 48;
  v57 = *(v130 + 48);
  v58 = v128;
  v59 = v57(v16, 1, v128);
  v130 = v56;
  if (v59 == 1)
  {
    *v23 = 0;
    *(v23 + 1) = 0;
    v60 = &v23[*(v58 + 24)];
    sub_26C46BD14();
    if (v57(v16, 1, v58) != 1)
    {
      sub_26C3DE270(v16, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C42B9BC(v16, v23, type metadata accessor for PBUUID);
  }

  sub_26C40F3CC();
  sub_26C42BA24(v23, type metadata accessor for PBUUID);
  v82 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingReply;
  swift_beginAccess();
  v83 = *(v2 + v82);
  v84 = v131;
  v85 = v127;
  if (*(v83 + 16))
  {
    v86 = *(v2 + v82);

    v87 = sub_26C42C210(v30);
    if (v88)
    {
      sub_26C42C130(*(v83 + 56) + *(v133 + 72) * v87, v35, type metadata accessor for CachedOwnershipRequest);
      v89 = *(v129 + 8);
      v89(v30, v84);

      v90 = v118;
      sub_26C42B9BC(v35, v118, type metadata accessor for CachedOwnershipRequest);
      v91 = v90 + SHIDWORD(v134[2].isa);
      v92 = *v91;
      v93 = *(v91 + 8);
      LOBYTE(v136[0]) = 1;
      v92(v136);
      v94 = v119;
      sub_26C3DDD48(v132 + v55, v119, &qword_280497458, &unk_26C46D3F0);
      v95 = v128;
      if (v57(v94, 1, v128) == 1)
      {
        v96 = v121;
        *v121 = 0;
        v96[1] = 0;
        v97 = v96 + *(v95 + 24);
        sub_26C46BD14();
        v98 = v57(v94, 1, v95);
        v99 = v122;
        v100 = v120;
        if (v98 != 1)
        {
          sub_26C3DE270(v94, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        v96 = v121;
        sub_26C42B9BC(v94, v121, type metadata accessor for PBUUID);
        v99 = v122;
        v100 = v120;
      }

      sub_26C40F3CC();
      sub_26C42BA24(v96, type metadata accessor for PBUUID);
      swift_beginAccess();
      sub_26C42C948(v100, v99);
      v89(v100, v131);
      sub_26C3DE270(v99, &qword_280497308, &unk_26C46D100);
      swift_endAccess();
      v109 = type metadata accessor for CachedOwnershipRequest;
      v110 = v90;
      goto LABEL_47;
    }
  }

  v101 = *(v129 + 8);
  v101(v30, v84);
  sub_26C42C130(v132, v85, type metadata accessor for OwnershipChangeReplyMessage);
  v102 = sub_26C46BF84();
  v103 = sub_26C46C3E4();
  if (!os_log_type_enabled(v102, v103))
  {

    v109 = type metadata accessor for OwnershipChangeReplyMessage;
    v110 = v85;
LABEL_47:
    sub_26C42BA24(v110, v109);
    return;
  }

  v104 = swift_slowAlloc();
  v134 = swift_slowAlloc();
  v136[0] = v134;
  *v104 = 136315138;
  v105 = v125;
  sub_26C3DDD48(v85 + *(v126 + 36), v125, &qword_280497458, &unk_26C46D3F0);
  v106 = v128;
  if (v57(v105, 1, v128) == 1)
  {
    v107 = v123;
    *v123 = 0;
    v107[1] = 0;
    v108 = v107 + *(v106 + 24);
    sub_26C46BD14();
    if (v57(v105, 1, v106) != 1)
    {
      sub_26C3DE270(v105, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    v107 = v123;
    sub_26C42B9BC(v105, v123, type metadata accessor for PBUUID);
  }

  v111 = v124;
  sub_26C40F3CC();
  sub_26C42BA24(v107, type metadata accessor for PBUUID);
  v112 = sub_26C46BB04();
  v114 = v113;
  v101(v111, v131);
  sub_26C42BA24(v127, type metadata accessor for OwnershipChangeReplyMessage);
  v115 = sub_26C3E80A8(v112, v114, v136);

  *(v104 + 4) = v115;
  _os_log_impl(&dword_26C3D6000, v102, v103, "SyncedModel: got OwnershipRequestReply for unknown request %s", v104, 0xCu);
  v116 = v134;
  __swift_destroy_boxed_opaque_existential_1(v134);
  MEMORY[0x26D6A18D0](v116, -1, -1);
  MEMORY[0x26D6A18D0](v104, -1, -1);
}

void sub_26C41F4FC(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v5 = sub_26C46BFA4();
    __swift_project_value_buffer(v5, qword_280498530);
    v6 = sub_26C46BF84();
    v7 = sub_26C46C3E4();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "SyncedModel: unrecognized OwnershipChangeResultType";
    goto LABEL_10;
  }

  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v11 = sub_26C46BFA4();
        __swift_project_value_buffer(v11, qword_280498530);
        v6 = sub_26C46BF84();
        v7 = sub_26C46C3E4();
        if (!os_log_type_enabled(v6, v7))
        {
          goto LABEL_11;
        }

        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "SyncedModel: found relesaeFailedNotOwner reply type when determining OwnershipChangeResultType";
      }

      else
      {
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v13 = sub_26C46BFA4();
        __swift_project_value_buffer(v13, qword_280498530);
        v6 = sub_26C46BF84();
        v7 = sub_26C46C3E4();
        if (!os_log_type_enabled(v6, v7))
        {
          goto LABEL_11;
        }

        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "SyncedModel: found notAuthority reply type when determining OwnershipChangeResultType";
      }
    }

    else
    {
      if (a1 == 5)
      {
        goto LABEL_12;
      }

      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v10 = sub_26C46BFA4();
      __swift_project_value_buffer(v10, qword_280498530);
      v6 = sub_26C46BF84();
      v7 = sub_26C46C3E4();
      if (!os_log_type_enabled(v6, v7))
      {
LABEL_11:

LABEL_12:
        v4 = 1;
        goto LABEL_13;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "SyncedModel: found releaseSuccessful reply type when determining OwnershipChangeResultType";
    }

LABEL_10:
    _os_log_impl(&dword_26C3D6000, v6, v7, v9, v8, 2u);
    MEMORY[0x26D6A18D0](v8, -1, -1);
    goto LABEL_11;
  }

  if (a1 > 2)
  {
    v4 = 1;
    goto LABEL_13;
  }

  if ((a1 - 1) >= 2)
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v12 = sub_26C46BFA4();
    __swift_project_value_buffer(v12, qword_280498530);
    v6 = sub_26C46BF84();
    v7 = sub_26C46C3E4();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "SyncedModel: found invalid reply type when determining OwnershipChangeResultType";
    goto LABEL_10;
  }

  v4 = 0;
LABEL_13:
  *a3 = v4;
}

void sub_26C41F870(uint64_t a1, uint64_t a2)
{
  v168 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v144[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v159 = &v144[-v10];
  v157 = type metadata accessor for PBUUID(0);
  v156 = *(v157 - 8);
  v11 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v158 = &v144[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  v13 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v154 = &v144[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v152 = &v144[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v162 = &v144[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v163 = &v144[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v144[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v144[-v26];
  v28 = sub_26C46BB54();
  v166 = *(v28 - 8);
  v167 = v28;
  v29 = v166[8];
  v30 = MEMORY[0x28223BE20](v28);
  v155 = &v144[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v161 = &v144[-v32];
  v33 = sub_26C46BCD4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v144[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v144[-v40];
  MEMORY[0x28223BE20](v39);
  v43 = &v144[-v42];
  v165 = a1;
  v44 = *(a1 + 12);
  v169 = v2;
  v45 = *(v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
  if (v44 < v45)
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v46 = sub_26C46BFA4();
    __swift_project_value_buffer(v46, qword_280498530);
    (*(v34 + 16))(v43, v168, v33);

    v47 = sub_26C46BF84();
    v48 = sub_26C46C404();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v160 = v33;
      v50 = v49;
      v168 = swift_slowAlloc();
      v170 = v168;
      *v50 = 136315394;
      v165 = v47;
      v51 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      v52 = v169;
      swift_beginAccess();
      v53 = v166;
      v54 = v167;
      v55 = v166[2];
      LODWORD(v169) = v48;
      v56 = v161;
      v55(v161, v52 + v51, v167);
      sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0]);
      v57 = sub_26C46C704();
      v59 = v58;
      v60 = v53[1];
      v60(v56, v54);
      v61 = sub_26C3E80A8(v57, v59, &v170);

      *(v50 + 4) = v61;
      *(v50 + 12) = 2080;
      sub_26C46BCC4();
      v62 = sub_26C46C704();
      v64 = v63;
      v60(v56, v54);
      (*(v34 + 8))(v43, v160);
      v65 = sub_26C3E80A8(v62, v64, &v170);

      *(v50 + 14) = v65;
      v66 = "SyncedModel: Received ownership change broadcast for model:%s from participant:%s but was for previous ownership count";
LABEL_6:
      v67 = v165;
      _os_log_impl(&dword_26C3D6000, v165, v169, v66, v50, 0x16u);
      v68 = v168;
      swift_arrayDestroy();
      MEMORY[0x26D6A18D0](v68, -1, -1);
      MEMORY[0x26D6A18D0](v50, -1, -1);

      return;
    }

    (*(v34 + 8))(v43, v33);
    return;
  }

  v151 = v7;
  v164 = v34;
  v160 = v33;
  if (v44 != v45)
  {
    goto LABEL_10;
  }

  sub_26C40F708(v27);
  v69 = v166[6];
  v70 = v69(v27, 1, v167);
  sub_26C3DE270(v27, &qword_280497430, &unk_26C46D3D0);
  if (v70 != 1 || (v71 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID, v72 = v169, swift_beginAccess(), sub_26C3DDD48(v72 + v71, v25, &qword_280497430, &unk_26C46D3D0), v73 = v69(v25, 1, v167), sub_26C3DE270(v25, &qword_280497430, &unk_26C46D3D0), v73 == 1))
  {
LABEL_10:
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v74 = sub_26C46BFA4();
    __swift_project_value_buffer(v74, qword_280498530);
    v75 = v164;
    v76 = *(v164 + 16);
    v150 = v164 + 16;
    v149 = v76;
    v76(v38, v168, v33);

    v77 = sub_26C46BF84();
    v78 = sub_26C46C404();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v148 = v79;
      v147 = swift_slowAlloc();
      v171 = v147;
      *v79 = 136315394;
      v146 = v77;
      v80 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      v81 = v169;
      swift_beginAccess();
      v145 = v78;
      v82 = v166;
      v83 = v167;
      v84 = v161;
      (v166[2])(v161, v81 + v80, v167);
      sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0]);
      v85 = sub_26C46C704();
      v87 = v86;
      v88 = v33;
      v89 = v82[1];
      v89(v84, v83);
      v90 = sub_26C3E80A8(v85, v87, &v171);

      v91 = v148;
      *(v148 + 1) = v90;
      *(v91 + 6) = 2080;
      sub_26C46BCC4();
      v92 = sub_26C46C704();
      v94 = v93;
      v89(v84, v83);
      (*(v164 + 8))(v38, v88);
      v95 = sub_26C3E80A8(v92, v94, &v171);

      v96 = v148;
      *(v148 + 14) = v95;
      v97 = v146;
      _os_log_impl(&dword_26C3D6000, v146, v145, "SyncedModel: Received ownership change broadcast for model:%s from participant:%s", v96, 0x16u);
      v98 = v147;
      swift_arrayDestroy();
      MEMORY[0x26D6A18D0](v98, -1, -1);
      MEMORY[0x26D6A18D0](v96, -1, -1);
    }

    else
    {

      (*(v75 + 8))(v38, v33);
      v82 = v166;
      v83 = v167;
    }

    v99 = v162;
    v100 = v163;
    v101 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    v102 = v169;
    swift_beginAccess();
    sub_26C3DDD48(v102 + v101, v100, &qword_280497430, &unk_26C46D3D0);
    (v82[2])(v99, v102 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v83);
    (v82[7])(v99, 0, 1, v83);
    v103 = *(v153 + 48);
    v104 = v154;
    sub_26C3DDD48(v100, v154, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DDD48(v99, &v104[v103], &qword_280497430, &unk_26C46D3D0);
    v105 = v99;
    v106 = v82[6];
    if (v106(v104, 1, v83) == 1)
    {
      sub_26C3DE270(v105, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v100, &qword_280497430, &unk_26C46D3D0);
      v107 = v106(&v104[v103], 1, v83);
      v108 = v160;
      v109 = v157;
      v110 = v156;
      if (v107 == 1)
      {
        v111 = &qword_280497430;
        v112 = &unk_26C46D3D0;
LABEL_22:
        sub_26C3DE270(v104, v111, v112);
        v114 = v164;
        v115 = v159;
        v116 = v158;
LABEL_24:
        v120 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
        sub_26C3DDD48(v165 + *(v120 + 36), v115, &qword_280497458, &unk_26C46D3F0);
        v121 = *(v110 + 48);
        if (v121(v115, 1, v109) == 1)
        {
          *v116 = 0;
          v116[1] = 0;
          v122 = v116 + *(v109 + 24);
          sub_26C46BD14();
          if (v121(v115, 1, v109) != 1)
          {
            sub_26C3DE270(v115, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          sub_26C42B9BC(v115, v116, type metadata accessor for PBUUID);
        }

        v123 = v155;
        sub_26C40F3CC();
        sub_26C42BA24(v116, type metadata accessor for PBUUID);
        v124 = v151;
        v149(v151, v168, v108);
        (*(v114 + 56))(v124, 0, 1, v108);
        swift_beginAccess();
        sub_26C3D8BB4(v124, v123);
        swift_endAccess();
        return;
      }
    }

    else
    {
      v113 = v152;
      sub_26C3DDD48(v104, v152, &qword_280497430, &unk_26C46D3D0);
      if (v106(&v104[v103], 1, v83) != 1)
      {
        v117 = v161;
        (v82[4])(v161, &v104[v103], v83);
        sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0]);
        sub_26C46C1C4();
        v118 = v104;
        v119 = v82[1];
        v119(v117, v83);
        sub_26C3DE270(v162, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v163, &qword_280497430, &unk_26C46D3D0);
        v119(v113, v83);
        sub_26C3DE270(v118, &qword_280497430, &unk_26C46D3D0);
        v108 = v160;
        v114 = v164;
        v115 = v159;
        v116 = v158;
        v109 = v157;
        v110 = v156;
        goto LABEL_24;
      }

      sub_26C3DE270(v162, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v163, &qword_280497430, &unk_26C46D3D0);
      (v82[1])(v113, v83);
      v108 = v160;
      v109 = v157;
      v110 = v156;
    }

    v111 = &qword_280497B78;
    v112 = "n6";
    goto LABEL_22;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v125 = sub_26C46BFA4();
  __swift_project_value_buffer(v125, qword_280498530);
  v126 = v164;
  (*(v164 + 16))(v41, v168, v33);

  v127 = sub_26C46BF84();
  v128 = sub_26C46C404();

  if (os_log_type_enabled(v127, v128))
  {
    v50 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v170 = v168;
    *v50 = 136315394;
    v165 = v127;
    v129 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    v130 = v169;
    swift_beginAccess();
    v132 = v166;
    v131 = v167;
    v133 = v166[2];
    LODWORD(v169) = v128;
    v134 = v161;
    v133(v161, v130 + v129, v167);
    sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0]);
    v135 = sub_26C46C704();
    v137 = v136;
    v138 = v132[1];
    v138(v134, v131);
    v139 = sub_26C3E80A8(v135, v137, &v170);

    *(v50 + 4) = v139;
    *(v50 + 12) = 2080;
    sub_26C46BCC4();
    v140 = sub_26C46C704();
    v142 = v141;
    v138(v134, v131);
    (*(v126 + 8))(v41, v160);
    v143 = sub_26C3E80A8(v140, v142, &v170);

    *(v50 + 14) = v143;
    v66 = "SyncedModel: Received ownership change broadcast for model:%s from participant:%s but was for local releaseOwnership that conflicts with a valid handoff";
    goto LABEL_6;
  }

  (*(v126 + 8))(v41, v33);
}

void sub_26C420A44(void (*a1)(void, void, void, void), uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v3 = sub_26C46BB54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v47 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v21 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  sub_26C3DDD48(v2 + v21, v20, &qword_280497430, &unk_26C46D3D0);
  v22 = *(v4 + 16);
  v50 = v2;
  v22(v18, v2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v23 = *(v8 + 56);
  sub_26C3DDD48(v20, v11, &qword_280497430, &unk_26C46D3D0);
  sub_26C3DDD48(v18, &v11[v23], &qword_280497430, &unk_26C46D3D0);
  v24 = *(v4 + 48);
  if (v24(v11, 1, v3) == 1)
  {
    sub_26C3DE270(v18, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v20, &qword_280497430, &unk_26C46D3D0);
    v25 = v24(&v11[v23], 1, v3);
    v26 = v50;
    if (v25 == 1)
    {
      sub_26C3DE270(v11, &qword_280497430, &unk_26C46D3D0);
      v27 = v49;
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v28 = v47;
  sub_26C3DDD48(v11, v47, &qword_280497430, &unk_26C46D3D0);
  if (v24(&v11[v23], 1, v3) == 1)
  {
    sub_26C3DE270(v18, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DE270(v20, &qword_280497430, &unk_26C46D3D0);
    (*(v4 + 8))(v28, v3);
LABEL_6:
    sub_26C3DE270(v11, &qword_280497B78, "n6");
    v27 = v49;
LABEL_7:
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v29 = sub_26C46BFA4();
    __swift_project_value_buffer(v29, qword_280498530);
    v30 = sub_26C46BF84();
    v31 = sub_26C46C404();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_12;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "SyncedModel: Handling ownership handoff request. Participant is not owner. Refusing.";
    goto LABEL_11;
  }

  v34 = v46;
  (*(v4 + 32))(v46, &v11[v23], v3);
  sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0]);
  v35 = v28;
  v36 = sub_26C46C1C4();
  v37 = *(v4 + 8);
  v37(v34, v3);
  sub_26C3DE270(v18, &qword_280497430, &unk_26C46D3D0);
  sub_26C3DE270(v20, &qword_280497430, &unk_26C46D3D0);
  v37(v35, v3);
  sub_26C3DE270(v11, &qword_280497430, &unk_26C46D3D0);
  v27 = v49;
  v26 = v50;
  if ((v36 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_14:
  v38 = *(v26 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler);
  if (!v38)
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v45 = sub_26C46BFA4();
    __swift_project_value_buffer(v45, qword_280498530);
    v30 = sub_26C46BF84();
    v31 = sub_26C46C404();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_12;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "SyncedModel: Handling ownership handoff request. No ownership request handler. Refusing.";
LABEL_11:
    _os_log_impl(&dword_26C3D6000, v30, v31, v33, v32, 2u);
    MEMORY[0x26D6A18D0](v32, -1, -1);
LABEL_12:

    sub_26C42113C(v48, v27, 0);
    return;
  }

  v39 = *(v26 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler + 8);

  v40 = v38(v27);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v41 = sub_26C46BFA4();
  __swift_project_value_buffer(v41, qword_280498530);
  v42 = sub_26C46BF84();
  v43 = sub_26C46C404();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 67109120;
    *(v44 + 4) = v40 & 1;
    _os_log_impl(&dword_26C3D6000, v42, v43, "SyncedModel: Handling ownership handoff request. Ownership request handler result is allowed:%{BOOL}d", v44, 8u);
    MEMORY[0x26D6A18D0](v44, -1, -1);
  }

  sub_26C42113C(v48, v27, v40 & 1);
  sub_26C3DD730(v38);
}

void sub_26C42113C(void (*a1)(void, void, void, void), uint64_t a2, int a3)
{
  v4 = v3;
  v122 = a3;
  v107 = a2;
  v126 = a1;
  v108 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v111 = *(v108 - 8);
  v5 = *(v111 + 64);
  MEMORY[0x28223BE20](v108);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C46BCF4();
  v110 = *(v8 - 8);
  v9 = *(v110 + 64);
  MEMORY[0x28223BE20](v8);
  v109 = (&v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = type metadata accessor for SyncMessage(0);
  v11 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v125 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v128 = (&v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v18 = &v104 - v17;
  v19 = type metadata accessor for PBUUID(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v129 = (&v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v127 = (&v104 - v25);
  MEMORY[0x28223BE20](v24);
  v27 = (&v104 - v26);
  v28 = sub_26C46BB54();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v134 = (&v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = MEMORY[0x28223BE20](v31);
  v120 = &v104 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v130 = &v104 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v133 = &v104 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = (&v104 - v39);
  v118 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  v41 = *(*(v118 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v118);
  v121 = &v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v119 = &v104 - v44;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v105 = v7;
    v106 = v8;
    v114 = *(v4 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
    v113 = *(v4 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
    v45 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    v117 = v29;
    v46 = *(v29 + 16);
    v116 = v29 + 16;
    v115 = v46;
    v46(v40, (v4 + v45), v28);
    v47 = type metadata accessor for OwnershipHandoffRequestMessage(0);
    v48 = v126;
    sub_26C3DDD48(v126 + *(v47 + 32), v18, &qword_280497458, &unk_26C46D3F0);
    v131 = v20;
    v49 = *(v20 + 48);
    v50 = v49(v18, 1, v19);
    v132 = v19;
    if (v50 == 1)
    {
      *v27 = 0;
      v27[1] = 0;
      v51 = v27 + *(v19 + 24);
      sub_26C46BD14();
      if (v49(v18, 1, v19) != 1)
      {
        sub_26C3DE270(v18, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      sub_26C42B9BC(v18, v27, type metadata accessor for PBUUID);
    }

    sub_26C40F3CC();
    sub_26C42BA24(v27, type metadata accessor for PBUUID);
    v56 = v128;
    sub_26C3DDD48(v48 + *(v47 + 36), v128, &qword_280497458, &unk_26C46D3F0);
    v57 = v132;
    if (v49(v56, 1, v132) == 1)
    {
      v58 = v127;
      *v127 = 0;
      v58[1] = 0;
      v59 = v58 + *(v57 + 24);
      sub_26C46BD14();
      v60 = v49(v56, 1, v57);
      v61 = v131;
      if (v60 != 1)
      {
        sub_26C3DE270(v56, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v58 = v127;
      sub_26C42B9BC(v56, v127, type metadata accessor for PBUUID);
      v61 = v131;
    }

    sub_26C40F3CC();
    sub_26C42BA24(v58, type metadata accessor for PBUUID);
    v62 = v119;
    v119[9] = 0;
    v63 = v118;
    v64 = v62 + *(v118 + 24);
    sub_26C46BD14();
    v65 = v63[7];
    v66 = *(v61 + 56);
    v131 = v61 + 56;
    v126 = v66;
    v66(v62 + v65, 1, 1, v57);
    v112 = v63[8];
    v66(v62 + v112, 1, 1, v57);
    v118 = v63[9];
    v66(v62 + v118, 1, 1, v57);
    *v62 = v114;
    *(v62 + 8) = v113;
    v67 = v120;
    v68 = v57;
    v69 = v115;
    v115(v120, v40, v28);
    v70 = v134;
    v69(v134, v67, v28);
    sub_26C40F280(v70, v129);
    v114 = v40;
    v127 = *(v117 + 8);
    (v127)(v67, v28);
    sub_26C3DE270(v62 + v65, &qword_280497458, &unk_26C46D3F0);
    v71 = v68;
    v128 = type metadata accessor for PBUUID;
    v72 = v129;
    sub_26C42B9BC(v129, v62 + v65, type metadata accessor for PBUUID);
    v73 = v126;
    v126(v62 + v65, 0, 1, v71);
    v69(v67, v133, v28);
    v74 = v134;
    v69(v134, v67, v28);
    sub_26C40F280(v74, v72);
    (v127)(v67, v28);
    v75 = v112;
    sub_26C3DE270(v62 + v112, &qword_280497458, &unk_26C46D3F0);
    sub_26C42B9BC(v72, v62 + v75, v128);
    v73(v62 + v75, 0, 1, v132);
    *(v62 + 9) = v122 & 1;
    v76 = v130;
    v69(v67, v130, v28);
    v77 = v134;
    v69(v134, v67, v28);
    sub_26C40F280(v77, v72);
    v78 = v127;
    (v127)(v67, v28);
    v78(v76, v28);
    v78(v133, v28);
    v78(v114, v28);
    v79 = v118;
    sub_26C3DE270(v62 + v118, &qword_280497458, &unk_26C46D3F0);
    sub_26C42B9BC(v72, v62 + v79, v128);
    v126(v62 + v79, 0, 1, v132);
    v80 = type metadata accessor for SyncMessage.OneOf_Contents(0);
    v81 = *(*(v80 - 8) + 56);
    v82 = v125;
    v81(v125, 1, 1, v80);
    v83 = v82 + *(v123 + 20);
    sub_26C46BD14();
    v84 = v121;
    sub_26C42C130(v62, v121, type metadata accessor for OwnershipHandoffReplyMessage);
    sub_26C3DE270(v82, &qword_280497650, &unk_26C46D930);
    sub_26C42B9BC(v84, v82, type metadata accessor for OwnershipHandoffReplyMessage);
    swift_storeEnumTagMultiPayload();
    v81(v82, 0, 1, v80);
    sub_26C431280(&qword_280497660, type metadata accessor for SyncMessage);
    v85 = sub_26C46BE64();
    v87 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497668, &unk_26C46E530);
    v88 = sub_26C46BCD4();
    v89 = *(v88 - 8);
    v90 = *(v89 + 72);
    v91 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_26C46D760;
    (*(v89 + 16))(v92 + v91, v107, v88);
    v93 = sub_26C3FD100(v92);
    swift_setDeallocating();
    (*(v89 + 8))(v92 + v91, v88);
    swift_deallocClassInstance();
    v94 = v109;
    *v109 = v93;
    v95 = v110;
    v96 = v106;
    (*(v110 + 104))(v94, *MEMORY[0x277CCB268], v106);
    v97 = v105;
    (*(v95 + 16))(v105 + *(v108 + 20), v94, v96);
    *v97 = v85;
    v97[1] = v87;
    v98 = Strong;
    swift_beginAccess();
    v99 = *(v98 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v98 + 16) = v99;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v99 = sub_26C42BE38(0, v99[2] + 1, 1, v99, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
      *(v98 + 16) = v99;
    }

    v101 = v111;
    v103 = v99[2];
    v102 = v99[3];
    if (v103 >= v102 >> 1)
    {
      v99 = sub_26C42BE38(v102 > 1, v103 + 1, 1, v99, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
    }

    v99[2] = v103 + 1;
    sub_26C42B9BC(v97, v99 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v103, type metadata accessor for SyncedModelManager.MessageWrapper);
    *(v98 + 16) = v99;
    swift_endAccess();
    (*(v95 + 8))(v94, v96);

    sub_26C42BA24(v125, type metadata accessor for SyncMessage);
    sub_26C42BA24(v62, type metadata accessor for OwnershipHandoffReplyMessage);
  }

  else
  {
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v52 = sub_26C46BFA4();
    __swift_project_value_buffer(v52, qword_280498530);
    v134 = sub_26C46BF84();
    v53 = sub_26C46C3E4();
    if (os_log_type_enabled(v134, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_26C3D6000, v134, v53, "SyncedModel: Replying to ownership handoff request but model is not associated with a manager", v54, 2u);
      MEMORY[0x26D6A18D0](v54, -1, -1);
    }

    v55 = v134;
  }
}

void sub_26C4221FC(uint64_t a1)
{
  v2 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v98 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497328, &qword_26C46E550);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v88 = &v85 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  v85 = *(v86 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v10 = &v85 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v91 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v85 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v85 - v17;
  v19 = type metadata accessor for PBUUID(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v90 = (&v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v26 = (&v85 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = (&v85 - v27);
  v29 = sub_26C46BB54();
  v30 = *(v29 - 8);
  v100 = v29;
  v101 = v30;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v89 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v85 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v85 - v37;
  v39 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v95 = &v85 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_26C46BCD4();
  v94 = *(v96 - 8);
  v42 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = v2;
  v93 = (&v85 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = *(v2 + 36);
  v97 = a1;
  sub_26C3DDD48(a1 + v44, v18, &qword_280497458, &unk_26C46D3F0);
  v45 = *(v20 + 48);
  if (v45(v18, 1, v19) == 1)
  {
    *v28 = 0;
    v28[1] = 0;
    v46 = v28 + *(v19 + 24);
    sub_26C46BD14();
    if (v45(v18, 1, v19) != 1)
    {
      sub_26C3DE270(v18, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C42B9BC(v18, v28, type metadata accessor for PBUUID);
  }

  sub_26C40F3CC();
  sub_26C42BA24(v28, type metadata accessor for PBUUID);
  v47 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingHandoffReply;
  v48 = v99;
  swift_beginAccess();
  v49 = *(v48 + v47);
  if (*(v49 + 16))
  {

    v50 = sub_26C42C210(v38);
    if (v51)
    {
      sub_26C3DDD48(*(v49 + 56) + *(v85 + 72) * v50, v10, &qword_280497330, &unk_26C46D120);
      v52 = *(v101 + 8);
      v53 = v38;
      v101 += 8;
      v54 = v52;
      v52(v53, v100);

      v55 = *(v86 + 48);
      (*(v94 + 32))(v93, v10, v96);
      sub_26C42B9BC(&v10[v55], v95, type metadata accessor for OwnershipChangeRequestMessage);
      v56 = v97 + v44;
      v57 = v97;
      v58 = v87;
      sub_26C3DDD48(v56, v87, &qword_280497458, &unk_26C46D3F0);
      if (v45(v58, 1, v19) == 1)
      {
        *v26 = 0;
        v26[1] = 0;
        v59 = v26 + *(v19 + 24);
        sub_26C46BD14();
        if (v45(v58, 1, v19) != 1)
        {
          sub_26C3DE270(v58, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        sub_26C42B9BC(v58, v26, type metadata accessor for PBUUID);
      }

      sub_26C40F3CC();
      sub_26C42BA24(v26, type metadata accessor for PBUUID);
      swift_beginAccess();
      v76 = v88;
      sub_26C42CAFC(v36, v88);
      v54(v36, v100);
      sub_26C3DE270(v76, &qword_280497328, &qword_26C46E550);
      swift_endAccess();
      v77 = *(v57 + 9);
      if (*(v57 + 9))
      {
        v78 = 2;
      }

      else
      {
        v78 = 3;
      }

      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v79 = sub_26C46BFA4();
      __swift_project_value_buffer(v79, qword_280498530);
      v80 = sub_26C46BF84();
      v81 = sub_26C46C404();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 67109120;
        *(v82 + 4) = v77;
        _os_log_impl(&dword_26C3D6000, v80, v81, "SyncedModel: Handling ownership handoff reply with result: %{BOOL}d", v82, 8u);
        MEMORY[0x26D6A18D0](v82, -1, -1);
      }

      v83 = v95;
      v84 = v93;
      sub_26C41AC88(v95, v93, v78, 1);
      sub_26C42BA24(v83, type metadata accessor for OwnershipChangeRequestMessage);
      (*(v94 + 8))(v84, v96);
      return;
    }
  }

  v60 = v101 + 8;
  v61 = *(v101 + 8);
  v61(v38, v100);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v62 = sub_26C46BFA4();
  __swift_project_value_buffer(v62, qword_280498530);
  v63 = v98;
  sub_26C42C130(v97, v98, type metadata accessor for OwnershipHandoffReplyMessage);
  v64 = sub_26C46BF84();
  v65 = sub_26C46C3E4();
  if (os_log_type_enabled(v64, v65))
  {
    v101 = v60;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v102 = v67;
    *v66 = 136315138;
    v68 = v91;
    sub_26C3DDD48(v63 + *(v92 + 36), v91, &qword_280497458, &unk_26C46D3F0);
    if (v45(v68, 1, v19) == 1)
    {
      v69 = v90;
      *v90 = 0;
      v69[1] = 0;
      v70 = v69 + *(v19 + 24);
      sub_26C46BD14();
      if (v45(v68, 1, v19) != 1)
      {
        sub_26C3DE270(v68, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v69 = v90;
      sub_26C42B9BC(v68, v90, type metadata accessor for PBUUID);
    }

    v71 = v89;
    sub_26C40F3CC();
    sub_26C42BA24(v69, type metadata accessor for PBUUID);
    v72 = sub_26C46BB04();
    v74 = v73;
    v61(v71, v100);
    sub_26C42BA24(v98, type metadata accessor for OwnershipHandoffReplyMessage);
    v75 = sub_26C3E80A8(v72, v74, &v102);

    *(v66 + 4) = v75;
    _os_log_impl(&dword_26C3D6000, v64, v65, "SyncedModel: got handoff reply for unknown ownership request: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x26D6A18D0](v67, -1, -1);
    MEMORY[0x26D6A18D0](v66, -1, -1);
  }

  else
  {

    sub_26C42BA24(v63, type metadata accessor for OwnershipHandoffReplyMessage);
  }
}

uint64_t sub_26C422CF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_26C46BB54();
  __swift_allocate_value_buffer(v4, qword_2804985C0);
  v5 = __swift_project_value_buffer(v4, qword_2804985C0);
  sub_26C46BAF4();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}
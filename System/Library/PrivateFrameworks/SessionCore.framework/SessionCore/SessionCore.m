void sub_22CEE32EC(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  v56[0] = a1;
  sub_22CEE3A84(v1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer, v57);
  sub_22CEE3A84(v1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager, v70);
  sub_22CEE3A84(v1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_activityStore, v69);
  sub_22CEE3A84(v1 + OBJC_IVAR____TtC11SessionCore15PushTokenServer_authorizationManager, v67);
  v3 = v71;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v4, v4);
  v7 = (v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = v68;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10, v10);
  v13 = (v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v7;
  v16 = *v13;
  v17 = type metadata accessor for ProcessManager();
  v65 = v17;
  v66 = &off_284029E18;
  v64[0] = v15;
  v18 = type metadata accessor for AuthorizationManager();
  v62 = v18;
  v63 = &off_284029420;
  v61[0] = v16;
  v19 = _s11SessionCore6ClientCMa_1();
  v20 = objc_allocWithZone(v19);
  v21 = v65;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22, v22);
  v25 = (v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = v62;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v28, v28);
  v31 = (v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v25;
  v34 = *v31;
  v60[3] = v17;
  v60[4] = &off_284029E18;
  v59[4] = &off_284029420;
  v60[0] = v33;
  v59[3] = v18;
  v59[0] = v34;
  v35 = v56[0];
  *&v20[OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_connection] = v56[0];
  sub_22CEE3A84(v57, &v20[OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_pushServer]);
  sub_22CEE3A84(v60, &v20[OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_processManager]);
  sub_22CEE3A84(v69, &v20[OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_activityStore]);
  sub_22CEE3A84(v59, &v20[OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_authorizationManager]);
  v58.receiver = v20;
  v58.super_class = v19;
  v36 = v35;
  v37 = objc_msgSendSuper2(&v58, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  v38 = *(*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock) + 16);
  os_unfair_lock_lock(v38);
  swift_beginAccess();
  v39 = v37;
  sub_22CEE4A7C(v70, v39);
  swift_endAccess();

  os_unfair_lock_unlock(v38);
  v40 = [v36 remoteProcess];
  sub_22CEE4E5C();
  v46 = v45;
  v48 = v47;

  v49 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11SessionCore15PushTokenServer_knownClientStore);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = v46;
  *(inited + 40) = v48;
  v51 = *(*(v49 + 40) + 16);
  os_unfair_lock_lock(v51);
  sub_22CEE50F8(inited, v49);
  os_unfair_lock_unlock(v51);
  swift_setDeallocating();
  sub_22CEE5804(inited + 32);
  while (1)
  {
    v52 = swift_allocObject();
    *(v52 + 16) = v39;
    *(v52 + 24) = isEscapingClosureAtFileLocation;
    v53 = swift_allocObject();
    v53[2] = sub_22CEE5A98;
    v53[3] = v52;
    v57[4] = sub_22CEE5B1C;
    v57[5] = v53;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 1107296256;
    v57[2] = sub_22CEE5AA0;
    v57[3] = &block_descriptor_24;
    v54 = _Block_copy(v57);
    v39 = v39;
    v55 = isEscapingClosureAtFileLocation;

    [v36 configureConnection_];
    _Block_release(v54);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
    swift_once();
    v41 = sub_22D01637C();
    __swift_project_value_buffer(v41, qword_281444390);
    v42 = sub_22D01636C();
    v43 = sub_22D0168EC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22CEE1000, v42, v43, "Could not get process identifier for client; not adding to known client store", v44, 2u);
      MEMORY[0x2318C6860](v44, -1, -1);
    }
  }

  [v36 activate];
}

uint64_t sub_22CEE3A34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22CEE3A84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22CEE3DAC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3838, &qword_22D01BD28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v52 - v8;
  v62 = sub_22D014A9C();
  v10 = *(v62 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v62, v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v52 - v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v19 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60, v20);
  v61 = &v52 - v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_22D01454C();
  }

  v52 = v18;
  v55 = v15;
  v56 = a1;
  v23 = v10;
  v24 = *(*(Strong + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
  v59 = v9;
  v25 = Strong;
  os_unfair_lock_lock(v24);
  v26 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_activities;
  swift_beginAccess();
  v27 = *(v25 + v26);

  os_unfair_lock_unlock(v24);
  swift_unknownObjectRelease();
  v28 = v1;
  v29 = sub_22CEE4290(v27, v28);

  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  v58 = (v23 + 48);
  v53 = v23;
  v54 = (v23 + 32);
  v63 = v29;

  v35 = 0;
  v57 = MEMORY[0x277D84F90];
  while (1)
  {
    v36 = v35;
    if (!v33)
    {
      break;
    }

    v37 = v3;
LABEL_11:
    v38 = __clz(__rbit64(v33)) | (v35 << 6);
    v39 = *(v63 + 56);
    v40 = (*(v63 + 48) + 16 * v38);
    v41 = *v40;
    v42 = v40[1];
    v43 = v39 + *(*(type metadata accessor for Activity() - 8) + 72) * v38;
    v25 = v61;
    sub_22CF1C294(v43, &v61[*(v60 + 48)], type metadata accessor for Activity);
    *v25 = v41;
    v25[1] = v42;

    v44 = v59;
    sub_22CF21918(v25, v59);
    v3 = v37;
    if (v37)
    {
      goto LABEL_22;
    }

    v33 &= v33 - 1;
    sub_22CEEC3D8(v25, &unk_27D9F3840, &unk_22D01A2B0);
    if ((*v58)(v44, 1, v62) == 1)
    {
      sub_22CEEC3D8(v44, &qword_27D9F3838, &qword_22D01BD28);
    }

    else
    {
      v45 = *v54;
      v25 = v52;
      v46 = v44;
      v47 = v62;
      (*v54)(v52, v46, v62);
      v45(v55, v25, v47);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_22CF22320(0, *(v57 + 2) + 1, 1, v57);
      }

      v49 = *(v57 + 2);
      v48 = *(v57 + 3);
      if (v49 >= v48 >> 1)
      {
        v57 = sub_22CF22320(v48 > 1, v49 + 1, 1, v57);
      }

      v50 = v57;
      *(v57 + 2) = v49 + 1;
      v45(&v50[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v49], v55, v62);
    }
  }

  while (1)
  {
    v35 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v35 >= v34)
    {

      return sub_22D01454C();
    }

    v33 = *(v30 + 8 * v35);
    ++v36;
    if (v33)
    {
      v37 = v3;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:

  sub_22CEEC3D8(v25, &unk_27D9F3840, &unk_22D01A2B0);

  __break(1u);
  return result;
}

uint64_t sub_22CEE4290(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v10 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      v16 = v10;
      v12 = sub_22CFD9114(v15, v6, a1, v16);
      MEMORY[0x2318C6860](v15, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8, v9);
  bzero(v17 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v11 = v10;
  v12 = sub_22CEE443C((v17 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1);

  if (v2)
  {
    swift_willThrow();
  }

LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_22CEE443C(unint64_t *a1, uint64_t a2, void *a3)
{
  v35 = a2;
  v36 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v4 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42, v5);
  v41 = (&v35 - v6);
  v7 = type metadata accessor for Activity();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  result = MEMORY[0x28223BE20](v7 - 8, v9);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = 0;
  v12 = 0;
  v43 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v44 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v12 << 6);
    v24 = v43[7];
    v25 = (v43[6] + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = v39;
    v29 = *(v40 + 72);
    v38 = v23;
    sub_22CF1C294(v24 + v29 * v23, v39, type metadata accessor for Activity);
    v31 = v41;
    v30 = v42;
    *v41 = v27;
    *(v31 + 8) = v26;
    v32 = *(v30 + 48);
    sub_22CF1C294(v28, v31 + v32, type metadata accessor for Activity);
    swift_bridgeObjectRetain_n();
    v33 = sub_22CF16990(v31 + v32);
    sub_22CEEC3D8(v31, &unk_27D9F3840, &unk_22D01A2B0);
    sub_22CF0C71C(v28);

    v18 = v44;
    if (v33)
    {
      *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
        return sub_22CEE4A40(v36, v35, v37, v43);
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_22CEE4A40(v36, v35, v37, v43);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v44 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for Activity()
{
  result = qword_28143FDE8;
  if (!qword_28143FDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CEE4728(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void))
{
  v53 = a8;
  v14 = a5(0);
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v52 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v48 = &v47 - v20;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = sub_22D016D3C();
  v22 = result;
  if (a2 < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = *a1;
  }

  v24 = 0;
  v25 = result + 64;
  v47 = a4;
  while (v23)
  {
    v26 = __clz(__rbit64(v23));
    v50 = (v23 - 1) & v23;
LABEL_16:
    v29 = v26 | (v24 << 6);
    v30 = a4[7];
    v31 = (a4[6] + 16 * v29);
    v33 = *v31;
    v32 = v31[1];
    v34 = v48;
    v51 = *(v49 + 72);
    v35 = v53;
    sub_22CF07D60(v30 + v51 * v29, v48, v53);
    sub_22CF7BE5C(v34, v52, v35);
    v36 = *(v22 + 40);
    sub_22D016EAC();

    sub_22D0166DC();
    result = sub_22D016ECC();
    v37 = -1 << *(v22 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v37) >> 6;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v25 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v25 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v45 = (*(v22 + 48) + 16 * v40);
    *v45 = v33;
    v45[1] = v32;
    result = sub_22CF7BE5C(v52, *(v22 + 56) + v40 * v51, v53);
    ++*(v22 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v23 = v50;
    if (!a3)
    {
      return v22;
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
      return v22;
    }

    v28 = a1[v24];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v50 = (v28 - 1) & v28;
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

uint64_t sub_22CEE4A7C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22D016B8C();

    if (v9)
    {

      _s11SessionCore6ClientCMa_1();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22D016B7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_22CF5FDD0(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_22CF77FD0(v22 + 1, &qword_27D9F27D0, &qword_22D0190C0);
    }

    v20 = v8;
    sub_22CF6569C();

    *v3 = v21;
    goto LABEL_16;
  }

  _s11SessionCore6ClientCMa_1();
  v11 = *(v6 + 40);
  v12 = sub_22D016A5C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_22CEE4CDC(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27D9F27D0, &qword_22D0190C0, _s11SessionCore6ClientCMa_1, sub_22CF606E0);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22D016A6C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

void sub_22CEE4CDC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), void (*a7)(void))
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    sub_22CF77FD0(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      a7();
      goto LABEL_12;
    }

    v12 = a6;
    sub_22CF79A04(v10 + 1, a4, a5);
  }

  v13 = *v7;
  v14 = *(*v7 + 40);
  v15 = sub_22D016A5C();
  v16 = -1 << *(v13 + 32);
  a2 = v15 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v12(0);
    do
    {
      v18 = *(*(v13 + 48) + 8 * a2);
      v19 = sub_22D016A6C();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22D016E0C();
  __break(1u);
}

void sub_22CEE4E5C()
{
  v2 = [v0 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_22D01667C();

    return;
  }

  v4 = [objc_opt_self() identifierWithPid_];
  if (v4)
  {
    v5 = v4;
    sub_22CEE82F8(0, &qword_28143D928, 0x277D46F48);
    v6 = v5;
    v7 = sub_22CF23FE0(v6);

    if (v1)
    {
LABEL_5:

      return;
    }

    v13 = [v7 name];

    if (!v13)
    {
      sub_22CF688AC();
      swift_allocError();
      *v16 = 0;
      *(v16 + 4) = 1;
      swift_willThrow();
      goto LABEL_5;
    }

    sub_22D01667C();
  }

  else
  {
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v8 = sub_22D01637C();
    __swift_project_value_buffer(v8, qword_2814443C0);
    v9 = v0;
    v10 = sub_22D01636C();
    v11 = sub_22D0168EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67240192;
      *(v12 + 4) = [v9 pid];

      _os_log_impl(&dword_22CEE1000, v10, v11, "Couldn't fetch an identifier for pid: %{public}d", v12, 8u);
      MEMORY[0x2318C6860](v12, -1, -1);
    }

    else
    {

      v10 = v9;
    }

    v14 = [v9 pid];
    sub_22CF688AC();
    swift_allocError();
    *v15 = v14;
    *(v15 + 4) = 0;
    swift_willThrow();
  }
}

void sub_22CEE50F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = a1 + 40;
LABEL_3:
    v7 = (v6 + 16 * v5);
    v8 = v5;
    while (v8 < v3)
    {
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_27;
      }

      v10 = *(v7 - 1);
      v9 = *v7;
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      v11 = sub_22CEE54CC(&v27, v10, v9);
      swift_endAccess();

      if (v11)
      {
        if (qword_28143DAD0 != -1)
        {
          swift_once();
        }

        v12 = sub_22D01637C();
        __swift_project_value_buffer(v12, qword_281444368);

        v13 = sub_22D01636C();
        v14 = sub_22D01690C();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v26 = v16;
          *v15 = 136380675;
          v17 = sub_22CEEE31C(v10, v9, &v26);

          *(v15 + 4) = v17;
          _os_log_impl(&dword_22CEE1000, v13, v14, "%{private}s is now a known client", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v16);
          MEMORY[0x2318C6860](v16, -1, -1);
          MEMORY[0x2318C6860](v15, -1, -1);

          v4 = 1;
          if (v5 != v3)
          {
            goto LABEL_3;
          }

          if (*(a2 + 32))
          {
            goto LABEL_21;
          }

LABEL_24:
          v25 = *(a2 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
          sub_22CFCBFE8(&qword_28143D9A0);
          sub_22D01645C();
          return;
        }

        v4 = 1;
        if (v5 != v3)
        {
          goto LABEL_3;
        }

LABEL_28:
        if (*(a2 + 32) == 1)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }

      ++v8;
      v7 += 2;
      if (v5 == v3)
      {
        if (*(a2 + 32))
        {
          goto LABEL_21;
        }

        if (v4)
        {
          goto LABEL_24;
        }

        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (*(a2 + 32))
  {
    v4 = 0;
LABEL_21:
    swift_beginAccess();
    v18 = *(a2 + 48);
    v19 = *(v18 + 16);
    if (v19 && (v20 = sub_22CEE561C(v19, 0), v21 = sub_22CEE56A4(&v26, v20 + 4, v19, v18), , sub_22CEE57FC(), v21 != v19))
    {
      __break(1u);
    }

    else
    {
      v22 = [objc_opt_self() standardUserDefaults];
      v23 = sub_22D0167CC();

      v24 = sub_22D01666C();
      [v22 setObject:v23 forKey:v24];

      if (v4)
      {
        goto LABEL_24;
      }
    }
  }
}

uint64_t sub_22CEE54CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22D016EAC();
  sub_22D0166DC();
  v9 = sub_22D016ECC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22D016DFC() & 1) != 0)
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

    sub_22CF1C978(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void *sub_22CEE561C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22CEE56A4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22CEE5AA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_22CEE5B24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_22CEE5B4C(void *a1, void *a2, uint64_t a3)
{
  sub_22D014B2C();
  v6 = sub_22D01666C();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22CEE5F94;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_31_0;
  v8 = _Block_copy(&v22);
  v9 = &unk_284040870;

  v10 = objc_opt_self();
  v11 = [v10 protocolForProtocol:v9 interpreter:v8];
  _Block_release(v8);

  [v7 setClient_];
  v12 = [v10 protocolForProtocol_];
  [v7 setServer_];

  v13 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  v26 = sub_22CFD5F14;
  v27 = v15;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_40_0;
  v16 = _Block_copy(&v22);
  v17 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v26 = sub_22CFD5F38;
  v27 = v19;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_47_4;
  v20 = _Block_copy(&v22);
  v21 = v17;

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

uint64_t sub_22CEE5EF8()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_22CEE5F40(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_22CEE5F94(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

unint64_t sub_22CEE6210(uint64_t a1, unsigned int a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = sub_22CEE637C(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_8:
    v24 = *v8;
    if (v19)
    {
      v25 = v24[7];
      v26 = *(v25 + 8 * result);
      *(v25 + 8 * result) = a1;

      return MEMORY[0x2821F96F8]();
    }

    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 4 * result) = a2;
    *(v24[7] + 8 * result) = a1;
    v27 = v24[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v17)
    {
      v24[2] = v28;
      return result;
    }

    goto LABEL_15;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    v21 = result;
    sub_22CFB86CC(a4, a5);
    result = v21;
    goto LABEL_8;
  }

  sub_22CFBC080(v18, a3 & 1, a4, a5);
  v22 = *v8;
  result = sub_22CEE637C(a2);
  if ((v19 & 1) == (v23 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  sub_22D016E1C();
  __break(1u);
  return MEMORY[0x2821F96F8]();
}

unint64_t sub_22CEE637C(unsigned int a1)
{
  v3 = MEMORY[0x2318C5FF0](*(v1 + 40), a1, 4);

  return sub_22CEE63C4(a1, v3);
}

unint64_t sub_22CEE63C4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_22CEE6430(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_22D014ACC();
  v8 = sub_22D01666C();

  v9 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22CEE684C;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_56_1;
  v10 = _Block_copy(&v22);
  v11 = &unk_2840404F8;

  v12 = objc_opt_self();
  v13 = [v12 protocolForProtocol:v11 interpreter:v10];
  _Block_release(v10);

  [v9 setClient_];
  v14 = [v12 protocolForProtocol_];
  [v9 setServer_];

  v15 = [objc_opt_self() main];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a4;
  v26 = sub_22CFD927C;
  v27 = v17;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_65_0;
  v18 = _Block_copy(&v22);

  [a1 setInterruptionHandler_];
  _Block_release(v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a4;
  v26 = sub_22CFD92A4;
  v27 = v20;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_72;
  v21 = _Block_copy(&v22);

  [a1 setInvalidationHandler_];
  _Block_release(v21);
}

uint64_t sub_22CEE67D8()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CEE6810()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

id sub_22CEE684C(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

void sub_22CEE68C4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3818, &qword_22D01BD00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v79 - v8);
  v10 = [a1 remoteProcess];
  v11 = [v10 pid];

  v12 = [a1 remoteProcess];
  sub_22CEE4E5C();
  v87 = v13;
  v88 = v14;

  *v9 = a1;
  (*(v5 + 104))(v9, *MEMORY[0x277D4D530], v4);
  v15 = a1;
  v16 = [v15 remoteProcess];
  v17 = sub_22D01666C();
  v85 = v5;
  v18 = v17;
  v86 = [v16 hasEntitlement_];

  v83 = v15;
  v19 = [v15 remoteProcess];
  v20 = sub_22D01666C();
  v82 = [v19 hasEntitlement_];

  v21 = [v15 remoteProcess];
  v22 = sub_22D01666C();
  v80 = [v21 hasEntitlement_];

  sub_22CEE3A84(&v2[OBJC_IVAR____TtC11SessionCore12OutputServer_processManager], aBlock);
  v23 = v90;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, v90);
  v81 = &v79;
  v25 = *(*(v23 - 1) + 64);
  MEMORY[0x28223BE20](v24, v24);
  v27 = (&v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  v30 = type metadata accessor for ProcessManager();
  v31 = v2;
  v96 = v30;
  v97 = &off_284029E18;
  v95[0] = v29;
  v32 = _s11SessionCore6ClientCMa_2();
  v84 = 0;
  v33 = v11;
  v34 = v32;
  v35 = objc_allocWithZone(v32);
  v36 = v96;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v95, v96);
  v79 = &v79;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v37, v37);
  v40 = (&v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = *v40;
  v94[3] = v30;
  v94[4] = &off_284029E18;
  v94[0] = v42;
  v43 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock;
  type metadata accessor for UnfairLock();
  v44 = swift_allocObject();
  v45 = swift_slowAlloc();
  *(v44 + 16) = v45;
  *v45 = 0;
  *&v35[v43] = v44;
  v46 = &v35[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_delegate];
  *&v35[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v47 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_subscriptionOptions;
  v48 = sub_22D014A1C();
  (*(*(v48 - 8) + 56))(&v35[v47], 1, 1, v48);
  v35[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_pendingChangeAck] = 0;
  *&v35[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_bufferedChanges] = 0;
  v49 = v85;
  (*(v85 + 16))(&v35[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__target], v9, v4);
  *&v35[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_pid] = v33;
  v50 = &v35[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processIdentifier];
  v51 = v88;
  *v50 = v87;
  v50[1] = v51;
  v35[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_hasActivityListenerEntitlement] = v86;
  v35[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_hasRemoteActivityAccessorEntitlement] = v82;
  v35[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_hasOutsizedPayloadsEntitlement] = v80;
  sub_22CEE3A84(v94, &v35[OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_processManager]);
  *(v46 + 1) = &off_28402C818;
  v52 = v83;
  swift_unknownObjectWeakAssign();
  v93.receiver = v35;
  v93.super_class = v34;
  v53 = v33;
  v54 = objc_msgSendSuper2(&v93, sel_init, v79);
  (*(v49 + 8))(v9, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v55 = *(*&v31[OBJC_IVAR____TtC11SessionCore12OutputServer_lock] + 16);
  os_unfair_lock_lock(v55);
  v56 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_clients;
  swift_beginAccess();
  v57 = v54;
  v58 = *&v31[v56];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95[0] = *&v31[v56];
  *&v31[v56] = 0x8000000000000000;
  sub_22CEE73BC(v57, v33, isUniquelyReferenced_nonNull_native);
  *&v31[v56] = v95[0];
  swift_endAccess();
  os_unfair_lock_unlock(v55);
  v60 = [v52 remoteProcess];
  v61 = v84;
  sub_22CEE4E5C();
  if (!v61)
  {
    v68 = v62;
    v69 = v63;

    v70 = __swift_project_boxed_opaque_existential_1(&v31[OBJC_IVAR____TtC11SessionCore12OutputServer_knownClientStore], *&v31[OBJC_IVAR____TtC11SessionCore12OutputServer_knownClientStore + 24]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22D0187A0;
    *(inited + 32) = v68;
    *(inited + 40) = v69;
    v72 = *v70;
    v73 = *(*(*v70 + 40) + 16);
    os_unfair_lock_lock(v73);
    sub_22CEE50F8(inited, v72);
    os_unfair_lock_unlock(v73);
    swift_setDeallocating();
    sub_22CEE5804(inited + 32);
    goto LABEL_7;
  }

  if (qword_28143FAE8 != -1)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v64 = sub_22D01637C();
    __swift_project_value_buffer(v64, qword_281444390);
    v65 = sub_22D01636C();
    v66 = sub_22D0168EC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_22CEE1000, v65, v66, "Could not get process identifier for client; not adding to known client store", v67, 2u);
      MEMORY[0x2318C6860](v67, -1, -1);
    }

LABEL_7:
    v74 = swift_allocObject();
    *(v74 + 16) = v57;
    *(v74 + 24) = v31;
    *(v74 + 32) = v53;
    v61 = swift_allocObject();
    v61[2] = sub_22CEE741C;
    v61[3] = v74;
    v91 = sub_22CEE5B1C;
    v92 = v61;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEE5AA0;
    v90 = &block_descriptor_53_1;
    v75 = _Block_copy(aBlock);
    v76 = v57;
    v77 = v31;

    [v52 configureConnection_];
    _Block_release(v75);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_10:
    swift_once();
  }

  [v52 activate];
}

uint64_t sub_22CEE7320()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t _s11SessionCore6ClientCMa_2()
{
  result = qword_28143FFD8;
  if (!qword_28143FFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22CEE7430(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22CEE74DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CEE7524(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_22CEE760C(void *a1)
{
  v2 = v1;
  v64 = a1;
  v60 = sub_22D01502C();
  v59 = *(v60 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v60, v5);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22D01697C();
  v63 = *(v66 - 1);
  v7 = *(v63 + 8);
  MEMORY[0x28223BE20](v66, v8);
  *&v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01691C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v13 = sub_22D01653C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v16 = [a1 remoteProcess];
  v17 = [v16 pid];

  v61 = sub_22CEE82F8(0, &qword_28143FA08, 0x277D85C78);
  aBlock = 0;
  v68 = 0xE000000000000000;
  sub_22D016C6C();

  aBlock = 0xD000000000000030;
  v68 = 0x800000022D01DB20;
  LODWORD(v74[0]) = v17;
  v18 = sub_22D016DEC();
  MEMORY[0x2318C5860](v18);

  sub_22D01651C();
  aBlock = MEMORY[0x277D84F90];
  sub_22CEE83DC(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v63 + 13))(v62, *MEMORY[0x277D85268], v66);
  v58 = *(v2 + OBJC_IVAR____TtC11SessionCore11InputServer_queue);
  v19 = sub_22D0169BC();
  sub_22CEE3A84(v2 + OBJC_IVAR____TtC11SessionCore11InputServer_activityAuthorizer, &aBlock);
  sub_22CEE3A84(v2 + OBJC_IVAR____TtC11SessionCore11InputServer_backoffPolicy, v74);
  v61 = v2;
  v20 = *(v2 + OBJC_IVAR____TtC11SessionCore11InputServer_pushServer + 16);
  v62 = *(v2 + OBJC_IVAR____TtC11SessionCore11InputServer_pushServer);
  v57 = v20;
  v63 = type metadata accessor for Client();
  v21 = objc_allocWithZone(v63);
  *&v21[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = &v21[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_backoffBudget];
  v66 = v19;
  sub_22D01422C();
  v23 = type metadata accessor for DefaultInputBackoffBudget();
  *&v22[v23[6]] = 0x4008000000000000;
  *&v22[v23[7]] = 10;
  *&v22[v23[5]] = 10;
  *&v21[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_ephemeralActivityIdentifiers] = MEMORY[0x277D84FA0];
  sub_22D01435C();
  sub_22CEE3A84(&aBlock, &v21[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_activityAuthorizer]);
  v24 = v64;
  *&v21[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection] = v64;
  v25 = v24;
  v26 = [v25 remoteProcess];
  v27 = v65;
  sub_22CEE84BC(v26);
  (*(v59 + 32))(&v21[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_requester], v27, v60);
  sub_22CEE3A84(v74, &v21[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_backoffPolicy]);
  v28 = v58;
  *&v21[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_targetQueue] = v58;
  v29 = v66;
  *&v21[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_queue] = v66;
  v30 = &v21[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_pushServer];
  v31 = v57;
  *v30 = v62;
  *(v30 + 1) = v31;
  v73.receiver = v21;
  v73.super_class = v63;
  v32 = v28;
  swift_unknownObjectRetain();
  v33 = objc_msgSendSuper2(&v73, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v74);
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  v34 = v61;
  v35 = v61 + OBJC_IVAR____TtC11SessionCore11InputServer_delegate;
  swift_unknownObjectWeakLoadStrong();
  *&v33[OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_delegate + 8] = *(v35 + 8);
  swift_unknownObjectWeakAssign();
  v36 = v33;
  swift_unknownObjectRelease();
  v37 = *(*&v34[OBJC_IVAR____TtC11SessionCore11InputServer_lock] + 16);
  os_unfair_lock_lock(v37);
  swift_beginAccess();
  v38 = v36;
  sub_22CEE8E14(v74, v38);
  swift_endAccess();

  os_unfair_lock_unlock(v37);
  v39 = [v25 remoteProcess];
  sub_22CEE4E5C();
  v45 = v44;
  v47 = v46;

  v48 = __swift_project_boxed_opaque_existential_1(&v34[OBJC_IVAR____TtC11SessionCore11InputServer_knownClientStore], *&v34[OBJC_IVAR____TtC11SessionCore11InputServer_knownClientStore + 24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0187A0;
  *(inited + 32) = v45;
  *(inited + 40) = v47;
  v50 = *v48;
  v51 = *(*(*v48 + 40) + 16);
  os_unfair_lock_lock(v51);
  sub_22CEE50F8(inited, v50);
  os_unfair_lock_unlock(v51);
  swift_setDeallocating();
  sub_22CEE5804(inited + 32);
  while (1)
  {
    v52 = swift_allocObject();
    v52[2] = v38;
    v52[3] = v29;
    v52[4] = v34;
    v53 = swift_allocObject();
    v53[2] = sub_22CEEAA0C;
    v53[3] = v52;
    v71 = sub_22CEE5B1C;
    v72 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v68 = 1107296256;
    v69 = sub_22CEE5AA0;
    v70 = &block_descriptor_59;
    v54 = _Block_copy(&aBlock);
    v55 = v29;
    v56 = v34;

    [v25 configureConnection_];
    _Block_release(v54);
    LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

    if ((v54 & 1) == 0)
    {
      break;
    }

    __break(1u);
    swift_once();
    v40 = sub_22D01637C();
    __swift_project_value_buffer(v40, qword_281444390);
    v41 = sub_22D01636C();
    v42 = sub_22D0168EC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22CEE1000, v41, v42, "Could not get process identifier for client; not adding to known client store", v43, 2u);
      MEMORY[0x2318C6860](v43, -1, -1);
    }
  }

  [v25 activate];
}

uint64_t sub_22CEE82A0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CEE82F8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22CEE8340(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22CEE8394(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22CEE83DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for Client()
{
  result = qword_28143FF88;
  if (!qword_28143FF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DefaultInputBackoffBudget()
{
  result = qword_281440510;
  if (!qword_281440510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22CEE84BC(void *a1)
{
  sub_22CEE4E5C();
  if (!v1)
  {
    sub_22D014F8C();
    v3 = sub_22D01666C();
    [a1 hasEntitlement_];

    sub_22D014FAC();
    v4 = sub_22D01666C();
    [a1 hasEntitlement_];

    sub_22D014FDC();
    v5 = sub_22D01666C();
    [a1 hasEntitlement_];

    sub_22D014F7C();
    sub_22CEE4E5C();
    v6 = objc_allocWithZone(MEMORY[0x277CC1E50]);
    v7 = sub_22CEE8744();
    v8 = [v7 extensionPointRecord];
    v9 = [v8 identifier];

    v10 = sub_22D01667C();
    v12 = v11;

    if (v10 == 0xD00000000000001ELL && 0x800000022D01F4A0 == v12)
    {
    }

    else
    {
      sub_22D016DFC();
    }

    sub_22D014FCC();
    sub_22CEE8810();
    sub_22D01500C();
  }
}

id sub_22CEE8744()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22D01666C();

  v7[0] = 0;
  v2 = [v0 initWithBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22D01416C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_22CEE8810()
{
  v1 = &off_278748000;
  v2 = [v0 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_22D01667C();
    v6 = v5;

    sub_22CEE4E5C();
    v7 = objc_allocWithZone(MEMORY[0x277CC1E50]);
    v8 = sub_22CEE8744();
    v9 = [v8 extensionPointRecord];
    v10 = [v9 identifier];

    v11 = sub_22D01667C();
    v13 = v12;

    if (v11 == 0xD00000000000001ELL && 0x800000022D01F4A0 == v13)
    {
    }

    else
    {
      v15 = sub_22D016DFC();

      if ((v15 & 1) == 0)
      {
        sub_22CEE4E5C();

        v16 = objc_allocWithZone(MEMORY[0x277CC1E70]);
        v45 = sub_22CEE8CD0(v4, v6, 0);
        v17 = [v45 applicationExtensionRecords];
        sub_22CEE82F8(0, &qword_28143D910, 0x277CC1E50);
        sub_22CEE8DAC();
        v18 = sub_22D01685C();

        if ((v18 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_22D016B3C();
          sub_22D01689C();
          v18 = v47;
          v19 = v48;
          v20 = v49;
          v21 = v50;
          v22 = v51;
        }

        else
        {
          v23 = -1 << *(v18 + 32);
          v19 = v18 + 56;
          v20 = ~v23;
          v24 = -v23;
          if (v24 < 64)
          {
            v25 = ~(-1 << v24);
          }

          else
          {
            v25 = -1;
          }

          v22 = v25 & *(v18 + 56);

          v21 = 0;
        }

        v26 = (v20 + 64) >> 6;
        if (v18 < 0)
        {
          goto LABEL_24;
        }

LABEL_19:
        v27 = v21;
        v28 = v22;
        v29 = v21;
        if (v22)
        {
LABEL_23:
          v30 = (v28 - 1) & v28;
          v31 = *(*(v18 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
          while (v31)
          {
            v32 = v1;
            v33 = v19;
            v34 = v18;
            v35 = v31;
            v36 = [v31 extensionPointRecord];
            v37 = [v36 identifier];

            v38 = sub_22D01667C();
            v40 = v39;

            if (v38 == 0xD00000000000001ELL && 0x800000022D01F4A0 == v40)
            {

LABEL_36:
              sub_22CEE57FC();

              v43 = [v35 v32 + 2424];
              if (v43)
              {
                v44 = v43;
                sub_22D01667C();
              }

              return;
            }

            v42 = sub_22D016DFC();

            if (v42)
            {
              goto LABEL_36;
            }

            v21 = v29;
            v22 = v30;
            v18 = v34;
            v19 = v33;
            v1 = v32;
            if ((v18 & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

LABEL_24:
            if (!sub_22D016BAC())
            {
              break;
            }

            swift_dynamicCast();
            v31 = v46;
            v29 = v21;
            v30 = v22;
          }

LABEL_34:
          sub_22CEE57FC();
        }

        else
        {
          while (1)
          {
            v29 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v29 >= v26)
            {
              goto LABEL_34;
            }

            v28 = *(v19 + 8 * v29);
            ++v27;
            if (v28)
            {
              goto LABEL_23;
            }
          }

          __break(1u);
        }
      }
    }
  }
}

id sub_22CEE8CD0(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22D01666C();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_22D01416C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_22CEE8DAC()
{
  result = qword_28143D908;
  if (!qword_28143D908)
  {
    sub_22CEE82F8(255, &qword_28143D910, 0x277CC1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D908);
  }

  return result;
}

uint64_t sub_22CEE8E14(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22D016B8C();

    if (v9)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22D016B7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_22CF5FD58(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_22CF77FD0(v22 + 1, &qword_27D9F27E0, &unk_22D0190D0);
    }

    v20 = v8;
    sub_22CF6569C();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for Client();
  v11 = *(v6 + 40);
  v12 = sub_22D016A5C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_22CEE4CDC(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27D9F27E0, &unk_22D0190D0, type metadata accessor for Client, sub_22CF60290);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22D016A6C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

void sub_22CEE90A4()
{
  v1 = v0;
  v2 = sub_22D0161DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D014AFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_connection);
  if ([v14 remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  v82[0] = v84;
  v82[1] = v85;
  if (!*(&v85 + 1))
  {
    sub_22CEEC3D8(v82, &qword_27D9F2B10, &unk_22D01B930);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3628, &qword_22D01BBB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (qword_28143FAE8 != -1)
    {
      swift_once();
    }

    v17 = sub_22D01637C();
    __swift_project_value_buffer(v17, qword_281444390);
    v18 = sub_22D01636C();
    v19 = sub_22D0168EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22CEE1000, v18, v19, "Cannot send push tokens to bad remote target", v20, 2u);
      MEMORY[0x2318C6860](v20, -1, -1);
    }

    return;
  }

  v15 = v83;
  v16 = [v14 remoteProcess];
  sub_22CEE4E5C();
  v71 = v15;
  v72 = v9;
  v73 = v8;
  v74 = v3;
  v75 = v2;
  v22 = v21;
  v81 = v13;
  v24 = v23;

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_authorizationManager), *(v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_authorizationManager + 24));
  v25 = off_284029448[0];
  type metadata accessor for AuthorizationManager();
  v25();
  v26 = *(v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_activityStore + 24);
  v27 = *(v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_activityStore + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_activityStore), v26);
  v28 = (*(v27 + 8))(v26, v27);
  MEMORY[0x28223BE20](v28, v29);
  v79 = v24;
  v80 = v22;
  *(&v68 - 4) = v24;
  *(&v68 - 3) = v22;
  v67 = v81;
  v30 = sub_22CEE9F88(sub_22CFD5E74, (&v68 - 6), v28);

  v31 = v30;
  v32 = (v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_pushServer);
  v33 = *(v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_pushServer + 32);
  v76 = *(v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_pushServer + 24);
  v77 = v33;
  v34 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_pushServer), v76);
  v35 = *(v31 + 16);
  v78 = v7;
  v70 = v31;
  if (v35)
  {
    v68 = v34;
    v36 = sub_22CF75FA0(v35, 0);
    v37 = *(type metadata accessor for Activity() - 8);
    v69 = sub_22CF7B31C(v82, v36 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v35, v31);

    sub_22CEE57FC();
    if (v69 != v35)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v38 = sub_22CEEA274(v36, v76, v77);

  *&v84 = v38;

  sub_22D0161EC();
  v39 = sub_22D015B3C();
  v41 = v40;
  v42 = v32[3];
  v43 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v42);
  v44 = sub_22CEEB118(v39, v41, v42, v43);
  v76 = v45;
  v77 = v44;
  if (v45 >> 60 == 15)
  {
    sub_22CFBCC08(v39, v41, v82);

    sub_22CEEEF0C(*&v82[0], *(&v82[0] + 1));
  }

  else
  {
    v46 = v44;
    v47 = v45;
    sub_22CEEC970(v44, v45);
    v48 = v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v82[0] = v48;
    sub_22CEEC510(v46, v47, v39, v41, isUniquelyReferenced_nonNull_native);

    *&v84 = *&v82[0];
  }

  sub_22D01566C();
  v50 = sub_22D01563C();
  v51 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_processManager), *(v1 + OBJC_IVAR____TtC11SessionCoreP33_4CCBD309304C86708E1086DB2B0619886Client_processManager + 24));
  v52 = v84;
  v53 = *v51;
  v54 = *(*v51 + 40);
  v55 = *(*v51 + 48);
  __swift_project_boxed_opaque_existential_1((*v51 + 16), v54);
  v56 = *(v55 + 32);
  v57 = v80;
  swift_bridgeObjectRetain_n();
  v58 = v71;
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v69 = v50;
  swift_retain_n();
  v59 = v79;
  v60 = v56(v79, v57, v54, v55);
  if (v60)
  {
    v61 = v60;

    swift_unknownObjectRetain();
    v62 = v69;

    sub_22CEED3DC(v61, 0xD000000000000013, 0x800000022D0218F0, 1, v53, v59, v57, v58, 10.0, v52, v62);

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    sub_22CEEEBB4();
    v63 = swift_allocError();
    *v64 = 2;
    sub_22CEEE858(v63, v59, v57, v58);

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v65 = v74;
  v66 = v78;
  sub_22CEEEF0C(v77, v76);

  (*(v65 + 8))(v66, v75);
  (*(v72 + 8))(v81, v73);
}

uint64_t sub_22CEE9998()
{
  v1 = *(*v0 + 72);
  sub_22D014AFC();
  return sub_22D01699C();
}

uint64_t sub_22CEE9A08()
{
  v1 = sub_22D01659C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 72);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x277D85200], v1);
  v8 = v7;
  LOBYTE(v7) = sub_22D0165BC();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = sub_22D01666C();

    v12 = [v10 stringArrayForKey_];

    if (!v12)
    {
      return MEMORY[0x277D84F90];
    }

    v13 = sub_22D0167DC();

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CEE9BCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_22CEE9A08();
  v19 = a1;
  v20 = a2;
  v18 = &v19;
  v7 = sub_22CEE7430(sub_22CF4D1FC, v17, v6);

  if (v7)
  {
    v8 = sub_22CEE9A08();
    v19 = a1;
    v20 = a2;
    MEMORY[0x28223BE20](v8, v9);
    v16[2] = &v19;
    v10 = sub_22CEE7430(sub_22CF4D9B8, v16, v8);

    v11 = sub_22D014AFC();
    if (v10)
    {
      v12 = MEMORY[0x277CB9588];
    }

    else
    {
      v12 = MEMORY[0x277CB9580];
    }

    return (*(*(v11 - 8) + 104))(a3, *v12, v11);
  }

  else
  {
    v13 = *MEMORY[0x277CB9578];
    v14 = sub_22D014AFC();
    return (*(*(v14 - 8) + 104))(a3, v13, v14);
  }
}

uint64_t sub_22CEE9D90()
{
  v1 = *v0;
  v2 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t sub_22CEE9DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v7 = v5;
  v10 = a1;
  v25[1] = *MEMORY[0x277D85DE8];
  v11 = *(a3 + 32);
  v12 = v11 & 0x3F;
  v13 = (1 << v11) + 63;
  v14 = v13 >> 6;
  v15 = 8 * (v13 >> 6);
  if (v12 <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1, v15);
    v17 = v25 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v17, v16);
    result = a4(v17, v14, a3, v10, a2);
    if (v7)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v21 = 8 * (v13 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v15 = v21;
    goto LABEL_2;
  }

  v22 = swift_slowAlloc();
  v23 = v7;
  v24 = sub_22CF7A7CC(v22, v14, a3, v10, a2, a5);
  result = MEMORY[0x2318C6860](v22, -1, -1);
  if (!v23)
  {
    result = v24;
  }

LABEL_4:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CEE9F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_22CEE9DF8(a1, a2, a3, sub_22CEE9FFC, sub_22CEE9FFC);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22CEE9FFC(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v35 = a4;
  v30 = a2;
  v31 = a1;
  v5 = type metadata accessor for Activity();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  result = MEMORY[0x28223BE20](v5 - 8, v7);
  v32 = 0;
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v36 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v37 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v36[7];
    v23 = (v36[6] + 16 * v21);
    v24 = v23[1];
    v38[0] = *v23;
    v38[1] = v24;
    v25 = v33;
    v26 = v21;
    sub_22CF07D60(v22 + *(v34 + 72) * v21, v33, type metadata accessor for Activity);

    v27 = v39;
    v28 = v35(v38, v25);
    sub_22CF1CB18(v25, type metadata accessor for Activity);

    v39 = v27;
    if (v27)
    {
      return result;
    }

    v16 = v37;
    if (v28)
    {
      *(v31 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
        return sub_22CEE4728(v31, v30, v32, v36, type metadata accessor for Activity, &qword_27D9F2A28, &qword_22D0196C8, type metadata accessor for Activity);
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_22CEE4728(v31, v30, v32, v36, type metadata accessor for Activity, &qword_27D9F2A28, &qword_22D0196C8, type metadata accessor for Activity);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v37 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CEEA274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v84 = a2;
  v98 = sub_22D015E7C();
  v94 = *(v98 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x28223BE20](v98, v5);
  v97 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D015C8C();
  v96 = *(v7 - 8);
  v8 = *(v96 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v92 = (&v83 - v13);
  v14 = type metadata accessor for Activity();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v19 = (&v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x277D84FA0];
  v100 = MEMORY[0x277D84FA0];
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v23 = *(v17 + 72);
    do
    {
      sub_22CF0F9C8(v22, v19);
      v24 = *v19;
      v25 = v19[1];

      sub_22CEE54CC(&v99, v24, v25);

      sub_22CF0C71C(v19);
      v22 += v23;
      --v21;
    }

    while (v21);
    v20 = v100;
  }

  v26 = sub_22D015F2C();
  v27 = v26;
  v95 = *(v26 + 16);
  if (!v95)
  {
    v89 = MEMORY[0x277D84F90];
LABEL_27:

    MEMORY[0x28223BE20](v52, v53);
    v54 = v85;
    *(&v83 - 4) = v84;
    *(&v83 - 3) = v54;
    *(&v83 - 2) = v86;
    v55 = sub_22CEEADE8(sub_22CFD5E98, (&v83 - 6), v89);

    v96 = *(v55 + 2);
    if (!v96)
    {
      v57 = MEMORY[0x277D84F98];
LABEL_43:

      return v57;
    }

    v56 = 0;
    v95 = &v55[(*(v94 + 80) + 32) & ~*(v94 + 80)];
    v92 = (v94 + 8);
    v93 = v94 + 16;
    v57 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v56 >= *(v55 + 2))
      {
        goto LABEL_45;
      }

      (*(v94 + 16))(v97, &v95[*(v94 + 72) * v56], v98);
      v62 = sub_22D015E4C();
      v64 = v63;
      v65 = sub_22D015E5C();
      v67 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v57;
      v69 = sub_22CEEC698(v62, v64);
      v71 = v57[2];
      v72 = (v70 & 1) == 0;
      v73 = __OFADD__(v71, v72);
      v74 = v71 + v72;
      if (v73)
      {
        goto LABEL_46;
      }

      v75 = v70;
      if (v57[3] < v74)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_37;
      }

      v81 = v69;
      sub_22CFB83E8();
      v69 = v81;
      if (v75)
      {
LABEL_29:
        v58 = v69;

        v57 = v99;
        v59 = (v99[7] + 16 * v58);
        v60 = *v59;
        v61 = v59[1];
        *v59 = v65;
        v59[1] = v67;
        sub_22CEE7524(v60, v61);
        (*v92)(v97, v98);
        goto LABEL_30;
      }

LABEL_38:
      v57 = v99;
      v99[(v69 >> 6) + 8] |= 1 << v69;
      v77 = (v57[6] + 16 * v69);
      *v77 = v62;
      v77[1] = v64;
      v78 = (v57[7] + 16 * v69);
      *v78 = v65;
      v78[1] = v67;
      (*v92)(v97, v98);
      v79 = v57[2];
      v73 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v73)
      {
        goto LABEL_47;
      }

      v57[2] = v80;
LABEL_30:
      if (v96 == ++v56)
      {
        goto LABEL_43;
      }
    }

    sub_22CEEE59C(v74, isUniquelyReferenced_nonNull_native);
    v69 = sub_22CEEC698(v62, v64);
    if ((v75 & 1) != (v76 & 1))
    {
      goto LABEL_48;
    }

LABEL_37:
    if (v75)
    {
      goto LABEL_29;
    }

    goto LABEL_38;
  }

  v28 = 0;
  v93 = v96 + 16;
  v29 = v20 + 56;
  v87 = (v96 + 32);
  v91 = (v96 + 8);
  v89 = MEMORY[0x277D84F90];
  v90 = v26;
  v30 = v92;
  while (v28 < *(v27 + 16))
  {
    v31 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v32 = *(v96 + 72);
    (*(v96 + 16))(v30, v27 + v31 + v32 * v28, v7);
    v33 = sub_22D015C3C();
    v35 = v34;
    if (*(v20 + 16))
    {
      v36 = v33;
      v37 = v7;
      v38 = *(v20 + 40);
      sub_22D016EAC();
      sub_22D0166DC();
      v39 = sub_22D016ECC();
      v40 = -1 << *(v20 + 32);
      v41 = v39 & ~v40;
      if ((*(v29 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v42 = ~v40;
        while (1)
        {
          v43 = (*(v20 + 48) + 16 * v41);
          v44 = *v43 == v36 && v43[1] == v35;
          if (v44 || (sub_22D016DFC() & 1) != 0)
          {
            break;
          }

          v41 = (v41 + 1) & v42;
          if (((*(v29 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        v45 = *v87;
        v30 = v92;
        (*v87)(v88, v92, v37);
        v46 = v89;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v46;
        if ((v47 & 1) == 0)
        {
          sub_22CF44368(0, *(v46 + 16) + 1, 1);
          v30 = v92;
          v46 = v100;
        }

        v49 = *(v46 + 16);
        v48 = *(v46 + 24);
        v50 = v46;
        if (v49 >= v48 >> 1)
        {
          sub_22CF44368(v48 > 1, v49 + 1, 1);
          v30 = v92;
          v50 = v100;
        }

        *(v50 + 16) = v49 + 1;
        v89 = v50;
        v51 = v50 + v31 + v49 * v32;
        v7 = v37;
        v45(v51, v88, v37);
      }

      else
      {
LABEL_19:

        v30 = v92;
        v7 = v37;
        (*v91)(v92, v37);
      }

      v27 = v90;
    }

    else
    {

      (*v91)(v30, v7);
    }

    if (++v28 == v95)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

uint64_t sub_22CEEAA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *v3;
  v6 = *(*(v5 + 24) + 16);
  os_unfair_lock_lock(v6);
  v7 = *(v5 + 16);
  v8 = a3();
  os_unfair_lock_unlock(v6);
  return v8;
}

void sub_22CEEAA88(void *a1, void *a2, uint64_t a3)
{
  sub_22D014AAC();
  v6 = sub_22D01666C();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol_];
  [v7 setClient_];

  v10 = [v8 protocolForProtocol_];
  [v7 setServer_];

  v11 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  v12 = a2;
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v24 = sub_22CF460F4;
  v25 = v14;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D008590;
  v23 = &block_descriptor_68;
  v15 = _Block_copy(&v20);

  [a1 setInterruptionHandler_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v12;
  v24 = sub_22CF46158;
  v25 = v17;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D008590;
  v23 = &block_descriptor_75;
  v18 = _Block_copy(&v20);
  v19 = v12;

  [a1 setInvalidationHandler_];
  _Block_release(v18);
}

uint64_t sub_22CEEADA8()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_22CEEADE8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3630, &unk_22D018FB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v29 - v9;
  v11 = sub_22D015E7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v36 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v33 = &v29 - v18;
  v19 = *(a3 + 16);
  if (!v19)
  {
    return MEMORY[0x277D84F90];
  }

  v20 = *(sub_22D015C8C() - 8);
  v30 = v12;
  v34 = (v12 + 32);
  v35 = (v12 + 48);
  v21 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v22 = *(v20 + 72);
  v37 = MEMORY[0x277D84F90];
  v31 = v11;
  v32 = a1;
  v29 = v22;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v35)(v10, 1, v11) == 1)
    {
      sub_22CEEC3D8(v10, &unk_27D9F3630, &unk_22D018FB0);
    }

    else
    {
      v23 = v33;
      v24 = *v34;
      (*v34)(v33, v10, v11);
      v24(v36, v23, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_22CFCE240(0, *(v37 + 2) + 1, 1, v37);
      }

      v26 = *(v37 + 2);
      v25 = *(v37 + 3);
      if (v26 >= v25 >> 1)
      {
        v37 = sub_22CFCE240(v25 > 1, v26 + 1, 1, v37);
      }

      v27 = v37;
      *(v37 + 2) = v26 + 1;
      v11 = v31;
      v24(&v27[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26], v36, v31);
      a1 = v32;
      v22 = v29;
    }

    v21 += v22;
    if (!--v19)
    {
      return v37;
    }
  }

  return v37;
}

uint64_t sub_22CEEB118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a2;
  v62 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3630, &unk_22D018FB0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v58 = &v52 - v14;
  v15 = sub_22D015C8C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v52 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8, v27);
  v57 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v59 = &v52 - v31;
  v55 = a3;
  v56 = v4;
  result = sub_22D015F2C();
  v33 = result;
  v34 = *(result + 16);
  if (v34)
  {
    v52 = a4;
    v53 = v21;
    v54 = v12;
    v35 = 0;
    v61 = result + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v36 = (v16 + 8);
    while (v35 < *(v33 + 16))
    {
      v38 = v61 + *(v16 + 72) * v35;
      v39 = v16;
      v40 = *(v16 + 16);
      v41 = v15;
      v40(v24, v38, v15);
      if (sub_22D015B4C())
      {
        if (sub_22D015C3C() == v62 && v42 == v60)
        {

LABEL_12:

          v15 = v41;
          v16 = v39;
          (*(v39 + 32))(v59, v24, v15);
          v43 = 0;
LABEL_13:
          v21 = v53;
          v12 = v54;
          v44 = v58;
          goto LABEL_14;
        }

        v37 = sub_22D016DFC();

        if (v37)
        {
          goto LABEL_12;
        }
      }

      ++v35;
      v15 = v41;
      result = (*v36)(v24, v41);
      v16 = v39;
      if (v34 == v35)
      {

        v43 = 1;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

    v43 = 1;
    v44 = v58;
LABEL_14:
    v45 = v57;
    v46 = v59;
    (*(v16 + 56))(v59, v43, 1, v15);
    sub_22CEEB6DC(v46, v45, &qword_27D9F2700, &unk_22D01AEA0);
    if ((*(v16 + 48))(v45, 1, v15) == 1)
    {
      sub_22CEEC3D8(v46, &qword_27D9F2700, &unk_22D01AEA0);
      sub_22CEEC3D8(v45, &qword_27D9F2700, &unk_22D01AEA0);
      return 0;
    }

    else
    {
      (*(v16 + 32))(v21, v45, v15);
      v48 = sub_22D015EEC();
      MEMORY[0x28223BE20](v48, v49);
      *(&v52 - 2) = v21;
      sub_22CEEB820(sub_22CEEC2D0, v48, v44);

      sub_22CEEB6DC(v44, v12, &unk_27D9F3630, &unk_22D018FB0);
      v50 = sub_22D015E7C();
      v51 = *(v50 - 8);
      if ((*(v51 + 48))(v12, 1, v50) == 1)
      {
        sub_22CEEC3D8(v44, &unk_27D9F3630, &unk_22D018FB0);
        sub_22CEEC3D8(v46, &qword_27D9F2700, &unk_22D01AEA0);
        sub_22CEEC3D8(v12, &unk_27D9F3630, &unk_22D018FB0);
        v47 = 0;
      }

      else
      {
        v47 = sub_22D015E5C();
        sub_22CEEC3D8(v44, &unk_27D9F3630, &unk_22D018FB0);
        sub_22CEEC3D8(v46, &qword_27D9F2700, &unk_22D01AEA0);
        (*(v51 + 8))(v12, v50);
      }

      (*(v16 + 8))(v21, v15);
    }

    return v47;
  }

  return result;
}

uint64_t sub_22CEEB6DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22CEEB744()
{
  v1 = *v0;
  v2 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v2);
  v3 = *(v1 + 16);
  v4 = sub_22D015ACC();
  os_unfair_lock_unlock(v2);
  return v4;
}

void sub_22CEEB84C(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_pushServer];
  v5 = *&v1[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_authorizationManager];
  v6 = objc_allocWithZone(type metadata accessor for PushFrequentUpdatesObservationClient());
  v7 = v4;

  v8 = a1;
  v9 = sub_22CEEBC88(v8, v7, v5);
  v10 = *(*&v2[OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_lock] + 16);
  os_unfair_lock_lock(v10);
  swift_beginAccess();
  v11 = v9;
  sub_22CEEC710(&v18, v11);
  swift_endAccess();

  os_unfair_lock_unlock(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22CEEC9C4;
  *(v13 + 24) = v12;
  aBlock[4] = sub_22CEE5B1C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_26;
  v14 = _Block_copy(aBlock);
  v15 = v11;
  v16 = v2;

  [v8 configureConnection_];
  _Block_release(v14);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    [v8 activate];
  }
}

uint64_t sub_22CEEBAB4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

char *sub_22CEEBC88(void *a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3950, &qword_22D01BEF8);
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v45 = v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3960, &qword_22D01BF08);
  v18 = *(v17 - 8);
  v43 = v17;
  v44 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v38 - v21;
  *&v3[OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_cancellables] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_connection] = a1;
  *&v3[OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_pushServer] = a2;
  v47 = a3;
  *&v3[OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_authorizationManager] = a3;
  v23 = type metadata accessor for PushFrequentUpdatesObservationClient();
  v53.receiver = v3;
  v53.super_class = v23;
  v48 = a1;
  v46 = a2;

  v41 = objc_msgSendSuper2(&v53, sel_init);
  v42 = OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_pushServer;
  v24 = *&v41[OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_pushServer];
  v25 = v41;
  v26 = v24;
  v27 = sub_22D015EBC();

  v51 = v27;
  sub_22CEEC38C();
  v28 = sub_22D01698C();
  v52 = v28;
  v29 = sub_22D01693C();
  v30 = *(v29 - 8);
  v39 = *(v30 + 56);
  v40 = v30 + 56;
  v39(v16, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3970, &qword_22D01BF10);
  v38[2] = MEMORY[0x277CBCD90];
  sub_22CEE8394(&qword_28143D9F8, &unk_27D9F3970, &qword_22D01BF10);
  v38[1] = sub_22CEEC480(&qword_28143FA10, sub_22CEEC38C);
  sub_22D01647C();
  sub_22CEEC3D8(v16, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v38[0] = MEMORY[0x277CBCD60];
  sub_22CEE8394(&unk_28143DA38, &unk_27D9F3960, &qword_22D01BF08);
  v31 = v43;
  sub_22D0164AC();

  (*(v44 + 8))(v22, v31);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v32 = *&v41[v42];
  v33 = sub_22D015E9C();

  v51 = v33;
  v34 = sub_22D01698C();
  v52 = v34;
  v39(v16, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3980, &qword_22D01BF18);
  sub_22CEE8394(&qword_28143D9D8, &unk_27D9F3980, &qword_22D01BF18);
  v35 = v45;
  sub_22D01647C();
  sub_22CEEC3D8(v16, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22CEE8394(&qword_28143DA20, &unk_27D9F3950, &qword_22D01BEF8);
  v36 = v49;
  sub_22D0164AC();

  (*(v50 + 8))(v35, v36);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  return v25;
}

uint64_t sub_22CEEC298()
{
  MEMORY[0x2318C6950](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CEEC2F0()
{
  v0 = sub_22D015E4C();
  v2 = v1;
  if (v0 == sub_22D015C3C() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22D016DFC();
  }

  return v4 & 1;
}

unint64_t sub_22CEEC38C()
{
  result = qword_28143FA08;
  if (!qword_28143FA08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143FA08);
  }

  return result;
}

uint64_t sub_22CEEC3D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22CEEC438(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CEEC480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CEEC4C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CEEC510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22CEEC698(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22CEEE59C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_22CEEC698(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_22D016E1C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22CFB83E8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    v27 = v25[1];
    *v25 = a1;
    v25[1] = a2;

    return sub_22CEE7524(v26, v27);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v29 = (v24[6] + 16 * v13);
  *v29 = a3;
  v29[1] = a4;
  v30 = (v24[7] + 16 * v13);
  *v30 = a1;
  v30[1] = a2;
  v31 = v24[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v32;
}

unint64_t sub_22CEEC698(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22D016EAC();
  sub_22D0166DC();
  v6 = sub_22D016ECC();

  return sub_22CEECD00(a1, a2, v6);
}

uint64_t sub_22CEEC710(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22D016B8C();

    if (v9)
    {

      type metadata accessor for PushFrequentUpdatesObservationClient();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22D016B7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_22CF5FE0C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_22CF77FD0(v22 + 1, &qword_27D9F27C8, &qword_22D0190B8);
    }

    v20 = v8;
    sub_22CF6569C();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for PushFrequentUpdatesObservationClient();
  v11 = *(v6 + 40);
  v12 = sub_22D016A5C();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_22CEE4CDC(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27D9F27C8, &qword_22D0190B8, type metadata accessor for PushFrequentUpdatesObservationClient, sub_22CF606F4);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22D016A6C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_22CEEC970(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_22CEEC9CC(void *a1, char *a2, void *a3)
{
  sub_22D014BFC();
  v6 = sub_22D01666C();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol_];
  [v7 setClient_];

  v10 = [v8 protocolForProtocol_];
  [v7 setServer_];

  v11 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v24 = sub_22CFDAFA0;
  v25 = v12;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D008590;
  v23 = &block_descriptor_30_0;
  v13 = _Block_copy(&v20);
  v14 = a2;
  v15 = a3;

  [a1 setInterruptionHandler_];
  _Block_release(v13);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v24 = sub_22CFDAFC4;
  v25 = v16;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_22D008590;
  v23 = &block_descriptor_36_0;
  v17 = _Block_copy(&v20);
  v18 = v14;
  v19 = v15;

  [a1 setInvalidationHandler_];
  _Block_release(v17);
}

uint64_t sub_22CEECCB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_22CEECD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22D016DFC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22CEECE5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3938, qword_22D01BED0);
    v2 = sub_22D016C3C();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v22 = *v13;
    v23 = v13[1];

    swift_dynamicCast();
    v14 = *(v2 + 40);
    result = sub_22D016BDC();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v26;
    *v11 = v24;
    *(v11 + 16) = v25;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_22CEED090(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v9 = a1[4];
  if (*(v9 + 16))
  {
    v10 = a1[4];

    v11 = sub_22CEEC698(a2, a3);
    if (v12)
    {
      v13 = *(*(v9 + 56) + 4 * v11);

      swift_beginAccess();
      v14 = a1[5];
      if (*(v14 + 16))
      {
        v15 = sub_22CEE637C(v13);
        if (v16)
        {
          v17 = *(*(v14 + 56) + 8 * v15);
          *a4 = v17;
          v18 = v17;
          return;
        }
      }
    }

    else
    {
    }
  }

  v19 = sub_22D01666C();
  v20 = [objc_opt_self() predicateMatchingBundleIdentifier_];

  sub_22CEE82F8(0, &qword_28143D928, 0x277D46F48);
  v21 = v20;
  v22 = sub_22CF17328(v21, &selRef_handleForPredicate_error_);
  if (v4)
  {

    v23 = 0;
  }

  else
  {
    v24 = v22;

    if (v24)
    {
      v23 = [v24 currentState];
      if (v23)
      {
        v33 = a4;
        v25 = a1[3];

        v26 = sub_22CF24034(a2, a3, v25);

        if (v26)
        {
          v32 = [v24 pid];
          swift_beginAccess();
          v27 = v23;
          v28 = a1[5];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = a1[5];
          a1[5] = 0x8000000000000000;
          sub_22CFBED5C(v27, v32, isUniquelyReferenced_nonNull_native);
          a1[5] = v34;
          swift_endAccess();
          LODWORD(v27) = [v24 pid];
          swift_beginAccess();
          v30 = a1[4];
          v31 = swift_isUniquelyReferenced_nonNull_native();
          v35 = a1[4];
          a1[4] = 0x8000000000000000;
          sub_22CFBEBF8(v27, a2, a3, v31);
          a1[4] = v35;
          swift_endAccess();
        }

        a4 = v33;
      }

      else
      {
      }
    }

    else
    {
      v23 = 0;
    }
  }

  *a4 = v23;
}

uint64_t sub_22CEED358(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5[6] + 16);
  os_unfair_lock_lock(v6);
  sub_22CEED090(v5, a1, a2, &v8);
  os_unfair_lock_unlock(v6);
  return v8;
}

void sub_22CEED3DC(void *a1, void (*a2)(char *, uint64_t), unint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, void *a8, double a9, void *a10, uint64_t a11)
{
  v127 = a6;
  v114 = a5;
  v128 = a2;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v17 = sub_22D0164CC();
  v121 = *(v17 - 8);
  v18 = *(v121 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v119 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_22D01653C();
  v118 = *(v120 - 8);
  v21 = *(v118 + 64);
  MEMORY[0x28223BE20](v120, v22);
  v117 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22D0164BC();
  v112 = *(v113 - 8);
  v24 = *(v112 + 64);
  MEMORY[0x28223BE20](v113, v25);
  v27 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_22D01656C();
  v116 = *(v126 - 8);
  v28 = *(v116 + 64);
  v30 = MEMORY[0x28223BE20](v126, v29);
  v122 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v115 = &v106 - v33;
  v34 = [a1 process];
  if (!v34)
  {
    if (qword_28143FB08 != -1)
    {
      swift_once();
    }

    v77 = sub_22D01637C();
    __swift_project_value_buffer(v77, qword_2814443D8);
    v78 = sub_22D01636C();
    v79 = sub_22D01690C();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = a7;
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_22CEE1000, v78, v79, "Cannot execute task; process does not exist", v81, 2u);
      v82 = v81;
      a7 = v80;
      MEMORY[0x2318C6860](v82, -1, -1);
    }

    sub_22CEEEBB4();
    v83 = swift_allocError();
    *v84 = 2;
    sub_22CEEE858(v83, v127, a7, a8);
    v85 = *MEMORY[0x277D85DE8];
    v86 = v83;
    goto LABEL_34;
  }

  v35 = v34;
  v110 = v27;
  v109 = v17;
  v124 = a10;
  v36 = a8;
  if (qword_28143FB08 != -1)
  {
    swift_once();
  }

  v123 = a7;
  v111 = sub_22D01637C();
  __swift_project_value_buffer(v111, qword_2814443D8);
  v129 = v35;

  v37 = sub_22D01636C();
  v38 = sub_22D01690C();

  v39 = os_log_type_enabled(v37, v38);
  v125 = a11;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v40 = 67240450;
    *(v40 + 4) = [v129 pid];

    *(v40 + 8) = 2082;
    *(v40 + 10) = sub_22CEEE31C(v128, a3, aBlock);
    _os_log_impl(&dword_22CEE1000, v37, v38, "Executing task for %{public}d with explanation %{public}s", v40, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x2318C6860](v41, -1, -1);
    MEMORY[0x2318C6860](v40, -1, -1);

    if (a4)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (!a4)
  {
LABEL_21:
    if ([a1 taskState] == 4)
    {
      if (qword_28143FAE8 == -1)
      {
LABEL_23:
        __swift_project_value_buffer(v111, qword_281444390);
        v87 = v123;

        v88 = sub_22D01636C();
        v89 = sub_22D01690C();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          aBlock[0] = v91;
          *v90 = 136380675;
          *(v90 + 4) = sub_22CEEE31C(v127, v87, aBlock);
          _os_log_impl(&dword_22CEE1000, v88, v89, "Delivering push tokens for: %{private}s", v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v91);
          MEMORY[0x2318C6860](v91, -1, -1);
          MEMORY[0x2318C6860](v90, -1, -1);
        }

        v92 = sub_22D0165CC();
        [v36 pushTokensChanged_];

        sub_22D01562C();
        v93 = *MEMORY[0x277D85DE8];
        v86 = v129;

LABEL_27:

        return;
      }

LABEL_40:
      swift_once();
      goto LABEL_23;
    }

    v99 = v129;
    v100 = sub_22D01636C();
    v101 = sub_22D0168EC();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 67240192;
      *(v102 + 4) = [v99 pid];

      _os_log_impl(&dword_22CEE1000, v100, v101, "Rejecting low-priority task for %{public}d because process is unavailable", v102, 8u);
      MEMORY[0x2318C6860](v102, -1, -1);
    }

    else
    {

      v100 = v99;
    }

    sub_22CEEEBB4();
    v103 = swift_allocError();
    *v104 = 2;
    sub_22CEEE858(v103, v127, v123, v36);

    v105 = *MEMORY[0x277D85DE8];
    v86 = v103;
LABEL_34:

    goto LABEL_27;
  }

LABEL_6:
  v108 = v36;
  v42 = sub_22D01666C();
  v43 = sub_22D01666C();
  v44 = [objc_opt_self() attributeWithDomain:v42 name:v43];

  v45 = [objc_opt_self() targetWithPid_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2730, &unk_22D0196E0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_22D018FE0;
  *(v46 + 32) = v44;
  v47 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v48 = v45;
  v49 = v44;
  v50 = sub_22D01666C();
  sub_22CEEE550();
  v51 = sub_22D0167CC();

  v52 = [v47 initWithExplanation:v50 target:v48 attributes:v51];

  aBlock[0] = 0;
  v53 = [v52 acquireWithError_];
  v36 = v124;
  if ((v53 & 1) == 0)
  {
    v94 = aBlock[0];
    v95 = sub_22D01416C();

    swift_willThrow();
    sub_22CEEEBB4();
    v96 = swift_allocError();
    *v97 = 0;
    sub_22CEEE858(v96, v127, v123, v108);

    goto LABEL_29;
  }

  v106 = v49;
  v107 = v48;
  v54 = v108;
  v55 = qword_28143FAE8;
  v56 = aBlock[0];
  if (v55 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v111, qword_281444390);
  v57 = v123;

  v58 = sub_22D01636C();
  v59 = sub_22D01690C();

  v60 = os_log_type_enabled(v58, v59);
  v61 = v110;
  if (v60)
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v62 = 136380675;
    *(v62 + 4) = sub_22CEEE31C(v127, v57, aBlock);
    _os_log_impl(&dword_22CEE1000, v58, v59, "Delivering push tokens for: %{private}s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x2318C6860](v63, -1, -1);
    MEMORY[0x2318C6860](v62, -1, -1);
  }

  v64 = sub_22D0165CC();
  [v54 pushTokensChanged_];

  sub_22D01562C();
  sub_22D01566C();

  v65 = sub_22D01563C();
  v66 = v122;
  sub_22D01654C();
  v67 = a9 * 1000.0;
  if (COERCE__INT64(fabs(a9 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v67 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v67 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v61 = v67;
  v68 = v112;
  v69 = v113;
  (*(v112 + 104))(v61, *MEMORY[0x277D85178], v113);
  v70 = v115;
  sub_22D01655C();
  (*(v68 + 8))(v61, v69);
  v128 = *(v116 + 8);
  v128(v66, v126);
  v127 = *(v114 + 104);
  v71 = swift_allocObject();
  v71[2] = v52;
  v71[3] = v65;
  aBlock[4] = sub_22CF7F1DC;
  aBlock[5] = v71;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_40;
  v72 = _Block_copy(aBlock);
  v73 = v52;

  v74 = v117;
  sub_22D0164EC();
  v130 = MEMORY[0x277D84F90];
  sub_22CF1A0D4(&qword_28143FA60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CF0EDA8();
  v75 = v119;
  v76 = v109;
  sub_22D016ADC();
  MEMORY[0x2318C5A90](v70, v74, v75, v72);
  _Block_release(v72);

  (*(v121 + 8))(v75, v76);
  (*(v118 + 8))(v74, v120);
  v128(v70, v126);

LABEL_29:
  v98 = *MEMORY[0x277D85DE8];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22CEEE31C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22CEEE444(v11, 0, 0, 1, a1, a2);
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
    sub_22CEEE3E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t sub_22CEEE3E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22CEEE444(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22CEEEDD4(a5, a6);
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
    result = sub_22D016C8C();
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

unint64_t sub_22CEEE550()
{
  result = qword_28143FA30;
  if (!qword_28143FA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143FA30);
  }

  return result;
}

uint64_t sub_22CEEE59C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31F8, &qword_22D01B198);
  v36 = a2;
  result = sub_22D016D2C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_22CEEC970(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_22D016EAC();
      sub_22D0166DC();
      result = sub_22D016ECC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22CEEE858(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a1)
  {
    v8 = a1;
    if (qword_28143FAE8 != -1)
    {
      swift_once();
    }

    v9 = sub_22D01637C();
    __swift_project_value_buffer(v9, qword_281444390);
    v10 = a1;

    v11 = sub_22D01636C();
    v12 = sub_22D01690C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = a4;
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136380931;
      *(v13 + 4) = sub_22CEEE31C(a2, a3, &v28);
      *(v13 + 12) = 2082;
      v15 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
      v16 = sub_22D01669C();
      v18 = sub_22CEEE31C(v16, v17, &v28);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_22CEE1000, v11, v12, "Did not provide extra runtime to process %{private}s for push token delivery: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      v19 = v14;
      a4 = v27;
      MEMORY[0x2318C6860](v19, -1, -1);
      MEMORY[0x2318C6860](v13, -1, -1);
    }

    else
    {
    }
  }

  if (qword_28143FAE8 != -1)
  {
    swift_once();
  }

  v20 = sub_22D01637C();
  __swift_project_value_buffer(v20, qword_281444390);

  v21 = sub_22D01636C();
  v22 = sub_22D01690C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136380675;
    *(v23 + 4) = sub_22CEEE31C(a2, a3, &v28);
    _os_log_impl(&dword_22CEE1000, v21, v22, "Delivering push tokens for: %{private}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x2318C6860](v24, -1, -1);
    MEMORY[0x2318C6860](v23, -1, -1);
  }

  v25 = sub_22D0165CC();
  [a4 pushTokensChanged_];

  return sub_22D01562C();
}

unint64_t sub_22CEEEBB4()
{
  result = qword_2814416C0;
  if (!qword_2814416C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814416C0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SessionCore19ProcessManagerErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *sub_22CEEEC30(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3160, &unk_22D01AF50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22CEEECA4(uint64_t a1, unint64_t a2)
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

  v6 = sub_22CEEEC30(v5, 0);
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

  result = sub_22D016C8C();
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
        v10 = sub_22D01671C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22CEEEC30(v10, 0);
        result = sub_22D016C4C();
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

uint64_t sub_22CEEEDD4(uint64_t a1, unint64_t a2)
{
  v4 = sub_22CEEECA4(a1, a2);
  sub_22CEEEE20(&unk_284029088);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22CEEEE20(uint64_t result)
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

  result = sub_22CFB2948(result, v12, 1, v3);
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

uint64_t sub_22CEEEF0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22CEE7524(a1, a2);
  }

  return a1;
}

uint64_t sub_22CEEF02C()
{
  v2 = sub_22D01457C();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D014A1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D0141DC();
  sub_22CEE74DC(&qword_2814439C8, MEMORY[0x277CB9548]);
  sub_22D01516C();

  sub_22CEEF29C(v12, v6);
  if (!v1)
  {
    sub_22CEE74DC(&unk_281443A00, MEMORY[0x277CB9208]);
    v14 = sub_22D01517C();
    v0 = sub_22D0141EC();

    (*(v17 + 8))(v6, v2);
  }

  (*(v8 + 8))(v12, v7);
  return v0;
}

void sub_22CEEF29C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167[0] = a2;
  v163 = sub_22D014CBC();
  v176 = *(v163 - 8);
  v5 = *(v176 + 64);
  MEMORY[0x28223BE20](v163, v6);
  v175 = v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_22D014C4C();
  v182 = *(v162 - 8);
  v8 = *(v182 + 8);
  MEMORY[0x28223BE20](v162, v9);
  v161 = v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_22D01430C();
  v181 = *(v160 - 8);
  v11 = *(v181 + 64);
  MEMORY[0x28223BE20](v160, v12);
  v174 = v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D0149CC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v173 = v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_22D01502C();
  v177 = *(v159 - 8);
  v18 = v177[8];
  MEMORY[0x28223BE20](v159, v19);
  v172 = v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D01488C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8, v23);
  v171 = v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_22D014C8C();
  v25 = *(v178 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v178, v27);
  v158 = v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v170 = v132 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v169 = v132 - v34;
  v179 = type metadata accessor for Activity();
  v184 = *(v179 - 1);
  v35 = *(v184 + 64);
  v37 = MEMORY[0x28223BE20](v179, v36);
  v186 = v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v39);
  v183 = v132 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v42 = *(*(v41 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v41 - 8, v43);
  v46 = v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v47);
  v188 = (v132 - v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3820, &qword_22D01BD08);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8, v51);
  v53 = v132 - v52;
  v54 = *(*(v2 + OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client_lock) + 16);
  os_unfair_lock_lock(v54);
  v55 = sub_22D014A1C();
  v56 = *(v55 - 8);
  v57 = *(v56 + 16);
  v164 = a1;
  v57(v53, a1, v55);
  (*(v56 + 56))(v53, 0, 1, v55);
  v58 = OBJC_IVAR____TtC11SessionCoreP33_0305B71F931612257040B50ABDE1CB866Client__lock_subscriptionOptions;
  swift_beginAccess();
  sub_22CEF02F8(v53, v2 + v58);
  swift_endAccess();
  os_unfair_lock_unlock(v54);
  v187 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_22D01456C();
    return;
  }

  v154 = v3;
  v60 = *(*(Strong + OBJC_IVAR____TtC11SessionCore12OutputServer_lock) + 16);
  v61 = Strong;
  os_unfair_lock_lock(v60);
  v62 = OBJC_IVAR____TtC11SessionCore12OutputServer__lock_activities;
  swift_beginAccess();
  v153 = v61;
  v63 = *(v61 + v62);

  os_unfair_lock_unlock(v60);
  v64 = 0;
  v65 = *(v63 + 64);
  v180 = v63 + 64;
  v185 = v63;
  v66 = 1 << *(v63 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & v65;
  v69 = (v66 + 63) >> 6;
  v151 = (v177 + 2);
  v150 = (v181 + 16);
  v149 = *MEMORY[0x277CB9628];
  v168 = (v25 + 104);
  v152 = v25;
  v167[1] = v25 + 32;
  v132[4] = *MEMORY[0x277CB95F8];
  v166 = (v182 + 104);
  v132[3] = *MEMORY[0x277CB95F0];
  v135 = *MEMORY[0x277CB9600];
  v134 = *MEMORY[0x277CB9608];
  v148 = (v182 + 32);
  v147 = *MEMORY[0x277CB9630];
  v133 = *MEMORY[0x277CB9638];
  v146 = v176 + 32;
  v177 = MEMORY[0x277D84F90];
  v181 = v69;
  v182 = v46;
  while (1)
  {
    v70 = v64;
    v71 = v186;
    if (!v68)
    {
      break;
    }

    while (1)
    {
      v72 = v70;
LABEL_14:
      v75 = __clz(__rbit64(v68));
      v68 &= v68 - 1;
      v76 = v75 | (v72 << 6);
      v77 = (*(v185 + 48) + 16 * v76);
      v79 = *v77;
      v78 = v77[1];
      v80 = v183;
      sub_22CF1C294(*(v185 + 56) + *(v184 + 72) * v76, v183, type metadata accessor for Activity);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      v82 = *(v81 + 48);
      v83 = v182;
      *v182 = v79;
      *(v83 + 1) = v78;
      v84 = v80;
      v46 = v83;
      sub_22CF0A794(v84, &v83[v82], type metadata accessor for Activity);
      (*(*(v81 - 8) + 56))(v46, 0, 1, v81);

      v74 = v72;
      v71 = v186;
      v69 = v181;
LABEL_15:
      v85 = v188;
      sub_22CEF0368(v46, v188, &qword_27D9F3850, &unk_22D019D30);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      if ((*(*(v86 - 8) + 48))(v85, 1, v86) == 1)
      {

        sub_22D01456C();
        swift_unknownObjectRelease();
        return;
      }

      v87 = v85;
      v89 = *v85;
      v88 = v85[1];
      sub_22CF0A794(v87 + *(v86 + 48), v71, type metadata accessor for Activity);
      if (sub_22CF16990(v71))
      {
        break;
      }

      sub_22CF0C71C(v71);

      v70 = v74;
      if (!v68)
      {
        goto LABEL_7;
      }
    }

    v143 = v74;
    v91 = *(v71 + 1);
    v157 = *v71;
    v156 = v91;
    v92 = v179[5];

    sub_22D014D7C();
    v155 = sub_22D014D4C();
    v145 = v93;
    v94 = v179[6];
    v144 = *&v71[v179[7]];
    v165 = *&v71[v179[8]];
    (*v151)(v172, &v71[v94], v159);

    sub_22D014DBC();
    v142 = *&v71[v179[9]];

    v137 = v92;
    v141 = sub_22D014CFC();
    v140 = sub_22D014D1C();
    v139 = sub_22D014D0C();
    v95 = v179;
    (*v150)(v174, &v71[v179[11]], v160);
    v96 = &v71[v95[13]];
    v97 = v96[1];
    v138 = *v96;
    v136 = v97;

    sub_22D014D8C();
    v98 = &v71[v95[16]];
    v99 = v98[1];
    v131 = *v98;

    v100 = v169;
    sub_22D0146FC();
    v101 = v178;
    v165 = *v168;
    v165(v100, v149, v178);
    v102 = sub_22CF0D6DC(0, 1, 1, MEMORY[0x277D84F90]);
    v104 = v102[2];
    v103 = v102[3];
    if (v104 >= v103 >> 1)
    {
      v102 = sub_22CF0D6DC(v103 > 1, v104 + 1, 1, v102);
    }

    v102[2] = v104 + 1;
    v105 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v145 = v102;
    v156 = v105;
    v155 = *(v152 + 72);
    v157 = *(v152 + 32);
    v157(v102 + v105 + v155 * v104, v169, v101);
    v106 = sub_22CF0B5E0();
    if (v106 > 1)
    {
      v107 = v134;
      if (v106 != 2)
      {
        goto LABEL_28;
      }

      v108 = v167;
    }

    else
    {
      v107 = v135;
      if (!v106)
      {
        goto LABEL_28;
      }

      v108 = &v166 + 4;
    }

    v107 = *(v108 - 64);
LABEL_28:
    v109 = v161;
    v110 = v162;
    (*v166)(v161, v107, v162);
    v111 = v170;
    (*v148)(v170, v109, v110);
    v112 = v111;
    v113 = v178;
    v165(v112, v147, v178);
    v114 = v145;
    v116 = v145[2];
    v115 = v145[3];
    if (v116 >= v115 >> 1)
    {
      v114 = sub_22CF0D6DC(v115 > 1, v116 + 1, 1, v145);
    }

    *(v114 + 2) = v116 + 1;
    v117 = v113;
    v118 = v113;
    v119 = v114;
    v157(&v114[v156 + v116 * v155], v170, v117);
    if (sub_22D014A0C())
    {
      v120 = v179[14];
      v121 = sub_22D0146BC();
      v122 = &v186[v120];
      v123 = v158;
      (*(*(v121 - 8) + 16))(v158, v122, v121);
      v165(v123, v133, v118);
      v125 = *(v119 + 2);
      v124 = *(v119 + 3);
      if (v125 >= v124 >> 1)
      {
        v119 = sub_22CF0D6DC(v124 > 1, v125 + 1, 1, v119);
      }

      *(v119 + 2) = v125 + 1;
      v157(&v119[v156 + v125 * v155], v158, v178);
    }

    sub_22D014C9C();
    v126 = v177;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v126 = sub_22CFCE610(0, v126[2] + 1, 1, v126);
    }

    v127 = v176;
    v129 = v126[2];
    v128 = v126[3];
    if (v129 >= v128 >> 1)
    {
      v126 = sub_22CFCE610(v128 > 1, v129 + 1, 1, v126);
    }

    sub_22CF0C71C(v186);
    v126[2] = v129 + 1;
    v130 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v177 = v126;
    (*(v127 + 32))(v126 + v130 + *(v127 + 72) * v129, v175, v163);
    v64 = v143;
  }

LABEL_7:
  if (v69 <= v70 + 1)
  {
    v73 = v70 + 1;
  }

  else
  {
    v73 = v69;
  }

  v74 = v73 - 1;
  while (1)
  {
    v72 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v72 >= v69)
    {
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      (*(*(v90 - 8) + 56))(v46, 1, 1, v90);
      v68 = 0;
      goto LABEL_15;
    }

    v68 = *(v180 + 8 * v72);
    ++v70;
    if (v68)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_22CEF02F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3820, &qword_22D01BD08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CEF0368(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22CEF03D0(uint64_t a1)
{
  v2 = v1 + *(a1 + 28);
  v3 = *(v2 + 8);
  return (*v2)();
}

void sub_22CEF0400(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3170, &qword_22D01B0D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v15[-v6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(*(Strong + 16) + 16);

    os_unfair_lock_lock(v9);
    v10 = type metadata accessor for TaskScheduler.Task();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    swift_beginAccess();
    sub_22CEF0738(v7, a2);
    swift_endAccess();
    os_unfair_lock_unlock(v9);

    sub_22CEF0D1C();
  }

  else
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v11 = sub_22D01637C();
    __swift_project_value_buffer(v11, qword_2814443F0);
    v12 = sub_22D01636C();
    v13 = sub_22D0168FC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22CEE1000, v12, v13, "Task scheduler unexpectedly deallocated", v14, 2u);
      MEMORY[0x2318C6860](v14, -1, -1);
    }
  }
}

uint64_t type metadata accessor for TaskScheduler.Task()
{
  result = qword_28143F5B8;
  if (!qword_28143F5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CEF0670(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D0155CC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22CEF0738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3170, &qword_22D01B0D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for TaskScheduler.Task();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F3170, &qword_22D01B0D8);
    v17 = *v3;
    v18 = sub_22CEF098C(a2);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v28 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22CFB81B0();
        v23 = v28;
      }

      sub_22CEF0B08(*(v23 + 56) + *(v12 + 72) * v20, v10, type metadata accessor for TaskScheduler.Task);
      sub_22CEF0B70(v20, v23);
      *v3 = v23;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_22CEEC3D8(v10, &qword_27D9F3170, &qword_22D01B0D8);
  }

  else
  {
    sub_22CEF0B08(a1, v16, type metadata accessor for TaskScheduler.Task);
    v24 = *v3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    result = sub_22CFBFF8C(v16, a2, v25);
    *v3 = v28;
  }

  return result;
}

unint64_t sub_22CEF098C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22D016E9C();
  return sub_22CEF0A9C(a1, v4);
}

uint64_t sub_22CEF09DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D0155CC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

unint64_t sub_22CEF0A9C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_22CEF0B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22CEF0B70(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22D016AFC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_22D016E9C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for TaskScheduler.Task() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22CEF0D1C()
{
  v62 = sub_22D0155CC();
  v1 = *(v62 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v62, v3);
  v61 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3168, &unk_22D01B0C8);
  v5 = *(*(v60 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v60, v6);
  v59 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v58 = v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = v50 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = v50 - v22;
  os_unfair_lock_assert_not_owner(*(*(v0 + 16) + 16));
  v24 = *(*(v0 + 16) + 16);
  v50[1] = *(v0 + 16);

  v50[0] = v24;
  os_unfair_lock_lock(v24);
  v51 = v23;
  sub_22CEF11BC(MEMORY[0x277D4D508], "Earliest precise waking date from task %{public}s: %{public}s, finalWakeTarget: %{public}s %{public}f", "No precise wake tasks scheduled", v23);
  v52 = v20;
  sub_22CEF2A60(v20);
  v53 = v16;
  sub_22CEF11BC(MEMORY[0x277D4D510], "Earliest waking date from task %{public}s: %{public}s, finalWakeTarget: %{public}s %{public}f", "No wake tasks scheduled", v16);
  os_unfair_lock_assert_owner(*(*(v0 + 16) + 16));
  swift_beginAccess();
  v25 = *(v0 + 24);
  v26 = *(v25 + 64);
  v54 = v0;
  v55 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v56 = (v1 + 8);
  v57 = (v1 + 16);
  v63 = v25;
  result = swift_bridgeObjectRetain_n();
  v32 = 0;
  while (v29)
  {
    v33 = v32;
LABEL_10:
    v34 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v35 = v34 | (v33 << 6);
    v36 = *(v63 + 56);
    v37 = *(*(v63 + 48) + 8 * v35);
    v38 = (type metadata accessor for TaskScheduler.Task() - 8);
    v39 = v36 + *(*v38 + 72) * v35;
    v40 = v60;
    v41 = v58;
    sub_22CF28C98(v39, &v58[*(v60 + 48)], type metadata accessor for TaskScheduler.Task);
    *v41 = v37;
    v42 = v59;
    sub_22CEEB6DC(v41, v59, &qword_27D9F3168, &unk_22D01B0C8);
    v43 = v42 + *(v40 + 48);
    v45 = v61;
    v44 = v62;
    (*v57)(v61, v43 + v38[7], v62);
    sub_22CFB6010(v43);
    LOBYTE(v38) = sub_22D0155BC();
    (*v56)(v45, v44);
    result = sub_22CEEC3D8(v41, &qword_27D9F3168, &unk_22D01B0C8);
    if (v38)
    {
      v46 = 1;
LABEL_13:

      v47 = v51;
      sub_22CEF33F8(v51);
      v48 = v52;
      sub_22CEF6A04(v52);
      v49 = v53;
      sub_22CEF757C(v53);
      sub_22CEF891C(v46);
      sub_22CEEC3D8(v49, &qword_27D9F2648, &unk_22D018BC0);
      sub_22CEEC3D8(v48, &qword_27D9F2648, &unk_22D018BC0);
      sub_22CEEC3D8(v47, &qword_27D9F2648, &unk_22D018BC0);
      os_unfair_lock_unlock(v50[0]);
    }
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v30)
    {
      v46 = 0;
      goto LABEL_13;
    }

    v29 = *(v55 + 8 * v33);
    ++v32;
    if (v29)
    {
      v32 = v33;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CEF11BC@<X0>(unsigned int *a1@<X0>, const char *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v112 = a3;
  v114 = a2;
  v121 = a1;
  v123 = a4;
  v122 = sub_22D01430C();
  v124 = *(v122 - 8);
  v5 = *(v124 + 64);
  v7 = MEMORY[0x28223BE20](v122, v6);
  v113 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v119 = &v105 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v118 = &v105 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v115 = &v105 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v105 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v120 = &v105 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3170, &qword_22D01B0D8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8, v26);
  v28 = &v105 - v27;
  v29 = type metadata accessor for TaskScheduler.Task();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v117 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v116 = &v105 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v105 - v39;
  os_unfair_lock_assert_owner(*(*(v4 + 16) + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3178, &qword_22D01B0E0);
  v41 = sub_22D01559C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_22D0187A0;
  (*(v42 + 104))(v45 + v44, *v121, v41);
  sub_22CEF1B50(v45, v28);
  swift_setDeallocating();
  (*(v42 + 8))(v45 + v44, v41);
  swift_deallocClassInstance();
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    v46 = v122;
    sub_22CEEC3D8(v28, &qword_27D9F3170, &qword_22D01B0D8);
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v47 = sub_22D01637C();
    __swift_project_value_buffer(v47, qword_2814443F0);
    v48 = sub_22D01636C();
    v49 = sub_22D01690C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_22CEE1000, v48, v49, v112, v50, 2u);
      MEMORY[0x2318C6860](v50, -1, -1);
    }

    v51 = 1;
    v52 = v123;
  }

  else
  {
    sub_22CEF0B08(v28, v40, type metadata accessor for TaskScheduler.Task);
    v110 = v29;
    v53 = &v40[*(v29 + 20)];
    sub_22D01557C();
    v54 = v115;
    sub_22D0142DC();
    sub_22CEF57B4(&qword_281443A30, MEMORY[0x277CC9578]);
    v55 = v122;
    v56 = sub_22D01664C();
    v57 = v124;
    v58 = *(v124 + 8);
    v59 = (v56 & 1) == 0;
    if (v56)
    {
      v60 = v21;
    }

    else
    {
      v60 = v54;
    }

    if (v59)
    {
      v61 = v21;
    }

    else
    {
      v61 = v54;
    }

    v111 = v124 + 8;
    v112 = v58;
    (v58)(v60, v55);
    v62 = *(v57 + 32);
    v63 = v120;
    v121 = (v57 + 32);
    v115 = v62;
    (v62)(v120, v61, v55);
    v46 = v55;
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v64 = sub_22D01637C();
    __swift_project_value_buffer(v64, qword_2814443F0);
    v65 = v116;
    sub_22CF28C98(v40, v116, type metadata accessor for TaskScheduler.Task);
    v66 = v117;
    sub_22CF28C98(v40, v117, type metadata accessor for TaskScheduler.Task);
    v67 = *(v57 + 16);
    v68 = v118;
    v67(v118, v63, v55);
    v69 = v119;
    v67(v119, v63, v55);
    v70 = sub_22D01636C();
    v71 = sub_22D01690C();
    if (os_log_type_enabled(v70, v71))
    {
      v107 = v71;
      v108 = v70;
      v109 = v40;
      v72 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v125[0] = v106;
      *v72 = 136446978;
      v73 = v110;
      v74 = v65 + *(v110 + 20);
      v75 = sub_22D01556C();
      v77 = v76;
      sub_22CFB6010(v65);
      v78 = sub_22CEEE31C(v75, v77, v125);

      *(v72 + 4) = v78;
      *(v72 + 12) = 2082;
      if (qword_28143F550 != -1)
      {
        swift_once();
      }

      v79 = *(v73 + 20);
      v80 = qword_28143F558;
      v81 = v117;
      v82 = v113;
      sub_22D01557C();
      v83 = sub_22D01426C();
      v84 = v112;
      (v112)(v82, v46);
      v85 = [v80 stringFromDate_];

      v86 = sub_22D01667C();
      v88 = v87;

      sub_22CFB6010(v81);
      v89 = sub_22CEEE31C(v86, v88, v125);

      *(v72 + 14) = v89;
      *(v72 + 22) = 2082;
      v90 = qword_28143F558;
      v91 = v118;
      v92 = sub_22D01426C();
      v93 = [v90 stringFromDate_];

      v94 = sub_22D01667C();
      v96 = v95;

      (v84)(v91, v46);
      v97 = sub_22CEEE31C(v94, v96, v125);

      *(v72 + 24) = v97;
      *(v72 + 32) = 2050;
      v98 = v119;
      sub_22D0142AC();
      v100 = v99;
      (v84)(v98, v46);
      *(v72 + 34) = v100;
      v101 = v108;
      _os_log_impl(&dword_22CEE1000, v108, v107, v114, v72, 0x2Au);
      v102 = v106;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v102, -1, -1);
      MEMORY[0x2318C6860](v72, -1, -1);

      sub_22CFB6010(v109);
      v63 = v120;
    }

    else
    {

      v103 = v112;
      (v112)(v69, v46);
      (v103)(v68, v46);
      sub_22CFB6010(v66);
      sub_22CFB6010(v65);
      sub_22CFB6010(v40);
    }

    v52 = v123;
    (v115)(v123, v63, v46);
    v51 = 0;
  }

  return (*(v124 + 56))(v52, v51, 1, v46);
}

uint64_t sub_22CEF1B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v100 = a2;
  v5 = type metadata accessor for TaskScheduler.Task();
  v113 = *(v5 - 8);
  v114 = v5;
  v6 = *(v113 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v104 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v115 = &v94 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v112 = &v94 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v98 = &v94 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = (&v94 - v20);
  v22 = sub_22D01559C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v94 - v30;
  v107 = sub_22D01430C();
  v109 = *(v107 - 8);
  v32 = *(v109 + 64);
  v34 = MEMORY[0x28223BE20](v107, v33);
  v106 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v94 - v37;
  v39 = sub_22D0155CC();
  v103 = *(v39 - 8);
  v40 = *(v103 + 64);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v94 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v3 + 16) + 16));
  swift_beginAccess();
  v111 = v3;
  if (!*(*(v3 + 24) + 16))
  {
    return (*(v113 + 56))(v100, 1, 1, v114);
  }

  sub_22D01423C();
  (*(v23 + 104))(v31, *MEMORY[0x277D4D510], v22);
  v102 = v38;
  v95 = v31;
  sub_22D01558C();
  v44 = v114;
  v45 = *(v103 + 16);
  v46 = v21 + *(v114 + 20);
  v94 = v43;
  v96 = v39;
  v45(v46, v43, v39);
  *v21 = 0;
  v47 = (v21 + *(v44 + 24));
  *v47 = nullsub_1;
  v47[1] = 0;
  v48 = (v21 + *(v44 + 28));
  *v48 = nullsub_1;
  v48[1] = 0;
  v49 = *(v111 + 24);
  v97 = v21;
  v50 = v21;
  v51 = v112;
  sub_22CF28C98(v50, v112, type metadata accessor for TaskScheduler.Task);
  v52 = *(v49 + 64);
  v111 = v49 + 64;
  v53 = 1 << *(v49 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & v52;
  v108 = (v23 + 8);
  v101 = (v109 + 8);
  v109 = v49;
  v110 = (v53 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v57 = 0;
  v58 = v113;
  v99 = a1;
  v60 = v110;
  v59 = v111;
  if (v55)
  {
    goto LABEL_7;
  }

LABEL_8:
  v62 = v114;
  while (1)
  {
    v61 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      return result;
    }

    if (v61 >= v60)
    {
      break;
    }

    v55 = *(v59 + 8 * v61);
    ++v57;
    if (v55)
    {
      while (1)
      {
        v63 = __clz(__rbit64(v55));
        v55 &= v55 - 1;
        sub_22CF28C98(*(v109 + 56) + *(v58 + 72) * (v63 | (v61 << 6)), v115, type metadata accessor for TaskScheduler.Task);
        v64 = *(v62 + 20);
        sub_22D0155AC();
        v65 = 0;
        v66 = *(a1 + 16);
        do
        {
          if (v66 == v65)
          {
            (*v108)(v28, v22);
            result = sub_22CFB6010(v115);
            v57 = v61;
            v51 = v112;
            v58 = v113;
            v60 = v110;
            v59 = v111;
            if (!v55)
            {
              goto LABEL_8;
            }

            goto LABEL_7;
          }

          v67 = v65 + 1;
          v68 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v65;
          sub_22CEF57B4(&qword_28143DAF0, MEMORY[0x277D4D520]);
          v69 = sub_22D01665C();
          v65 = v67;
        }

        while ((v69 & 1) == 0);
        (*v108)(v28, v22);
        v70 = v102;
        sub_22D01557C();
        v71 = v112;
        v72 = v112 + *(v114 + 20);
        v73 = v106;
        sub_22D01557C();
        v105 = sub_22D01428C();
        v74 = *v101;
        v75 = v73;
        v76 = v107;
        (*v101)(v75, v107);
        v74(v70, v76);
        v77 = (v105 & 1) != 0 ? v71 : v115;
        v78 = (v105 & 1) != 0 ? v115 : v71;
        sub_22CFB6010(v77);
        v79 = v78;
        v80 = v104;
        sub_22CEF0B08(v79, v104, type metadata accessor for TaskScheduler.Task);
        v81 = v80;
        v51 = v71;
        a1 = v99;
        result = sub_22CEF0B08(v81, v51, type metadata accessor for TaskScheduler.Task);
        v57 = v61;
        v58 = v113;
        v60 = v110;
        v59 = v111;
        if (!v55)
        {
          goto LABEL_8;
        }

LABEL_7:
        v61 = v57;
        v62 = v114;
      }
    }
  }

  v82 = v98;
  sub_22CEF0B08(v51, v98, type metadata accessor for TaskScheduler.Task);

  v83 = *(v62 + 20);
  v84 = v95;
  sub_22D0155AC();
  v85 = sub_22CFB378C(v84, a1);
  (*v108)(v84, v22);
  if (v85)
  {
    v86 = v102;
    sub_22D01557C();
    v87 = v106;
    sub_22D01423C();
    v88 = sub_22D01428C();
    v89 = *v101;
    v90 = v87;
    v91 = v107;
    (*v101)(v90, v107);
    v89(v86, v91);
    sub_22CFB6010(v97);
    (*(v103 + 8))(v94, v96);
    v92 = (v58 + 56);
    if (v88)
    {
      v93 = v100;
      sub_22CEF0B08(v82, v100, type metadata accessor for TaskScheduler.Task);
      return (*v92)(v93, 0, 1, v62);
    }

    else
    {
      sub_22CFB6010(v82);
      return (*v92)(v100, 1, 1, v62);
    }
  }

  else
  {
    sub_22CFB6010(v82);
    sub_22CFB6010(v97);
    (*(v103 + 8))(v94, v96);
    return (*(v58 + 56))(v100, 1, 1, v62);
  }
}

uint64_t sub_22CEF2428(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_22CEF2494(void *a1, const char *a2)
{
  if (xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]))
  {
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v3 = sub_22D01637C();
    __swift_project_value_buffer(v3, qword_2814443F0);
    oslog = sub_22D01636C();
    v4 = sub_22D01690C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = sub_22D01670C();
      v9 = sub_22CEEE31C(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_22CEE1000, oslog, v4, a2, v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x2318C6860](v6, -1, -1);
      MEMORY[0x2318C6860](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22CEF261C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_22CEF2678()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CEF26D0();
  }

  return result;
}

void sub_22CEF26D0()
{
  v1 = v0;
  v17[4] = *MEMORY[0x277D85DE8];
  v16 = 0;
  swift_beginAccess();
  if (notify_get_state(*(v0 + 24), &v16))
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v2 = sub_22D01637C();
    __swift_project_value_buffer(v2, qword_281444420);
    v3 = sub_22D01636C();
    v4 = sub_22D0168EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22CEE1000, v3, v4, "Could not fetch lock state", v5, 2u);
      MEMORY[0x2318C6860](v5, -1, -1);
    }
  }

  else
  {
    *(v0 + 40) = v16 != 0;
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v6 = sub_22D01637C();
    __swift_project_value_buffer(v6, qword_281444420);

    v7 = sub_22D01636C();
    v8 = sub_22D01690C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17[0] = v10;
      *v9 = 136446210;
      if (*(v1 + 40))
      {
        v11 = 0x64656B636F6CLL;
      }

      else
      {
        v11 = 0x64656B636F6C6E75;
      }

      if (*(v1 + 40))
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE800000000000000;
      }

      v13 = sub_22CEEE31C(v11, v12, v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_22CEE1000, v7, v8, "UI lock state is %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318C6860](v10, -1, -1);
      MEMORY[0x2318C6860](v9, -1, -1);
    }

    v14 = *(v1 + 32);
    LOBYTE(v17[0]) = *(v1 + 40);
    sub_22D01643C();
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22CEF2990(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      sub_22CFD0C44();
    }
  }

  return result;
}

uint64_t sub_22CEF2A00(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CEF43AC(v1);
  }

  return result;
}

uint64_t sub_22CEF2A60@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v117 = sub_22D01430C();
  v120 = *(v117 - 8);
  v2 = *(v120 + 64);
  v4 = MEMORY[0x28223BE20](v117, v3);
  v109 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v116 = &v103 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v114 = &v103 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v111 = &v103 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v110 = &v103 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v118 = &v103 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3170, &qword_22D01B0D8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v103 - v23;
  v25 = type metadata accessor for TaskScheduler.Task();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v113 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v112 = &v103 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v115 = &v103 - v35;
  os_unfair_lock_assert_owner(*(*(v1 + 16) + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3178, &qword_22D01B0E0);
  v36 = sub_22D01559C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_22D0189F0;
  v41 = v40 + v39;
  v42 = *(v37 + 104);
  v42(v41, *MEMORY[0x277D4D510], v36);
  v42(v41 + v38, *MEMORY[0x277D4D518], v36);
  sub_22CEF1B50(v40, v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v43 = v117;
    sub_22CEEC3D8(v24, &qword_27D9F3170, &qword_22D01B0D8);
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v44 = sub_22D01637C();
    __swift_project_value_buffer(v44, qword_2814443F0);
    v45 = sub_22D01636C();
    v46 = sub_22D01690C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_22CEE1000, v45, v46, "No wake tasks scheduled", v47, 2u);
      MEMORY[0x2318C6860](v47, -1, -1);
    }

    v48 = 1;
    v49 = v119;
  }

  else
  {
    v50 = v115;
    sub_22CEF0B08(v24, v115, type metadata accessor for TaskScheduler.Task);
    v106 = v25;
    v51 = v50 + *(v25 + 20);
    v52 = v110;
    sub_22D01557C();
    v53 = v111;
    sub_22D0142DC();
    sub_22CEF57B4(&qword_281443A30, MEMORY[0x277CC9578]);
    v43 = v117;
    v54 = sub_22D01664C();
    v55 = v120;
    v56 = *(v120 + 8);
    v57 = (v54 & 1) == 0;
    if (v54)
    {
      v58 = v52;
    }

    else
    {
      v58 = v53;
    }

    if (v57)
    {
      v59 = v52;
    }

    else
    {
      v59 = v53;
    }

    v107 = v120 + 8;
    v108 = v56;
    v56(v58, v43);
    v60 = v118;
    v110 = *(v55 + 32);
    v111 = (v55 + 32);
    (v110)(v118, v59, v43);
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v61 = sub_22D01637C();
    __swift_project_value_buffer(v61, qword_2814443F0);
    v62 = v112;
    sub_22CF28C98(v50, v112, type metadata accessor for TaskScheduler.Task);
    v63 = v113;
    sub_22CF28C98(v50, v113, type metadata accessor for TaskScheduler.Task);
    v64 = v50;
    v65 = *(v55 + 16);
    v66 = v114;
    v65(v114, v60, v43);
    v67 = v116;
    v65(v116, v60, v43);
    v68 = sub_22D01636C();
    v69 = sub_22D01690C();
    if (os_log_type_enabled(v68, v69))
    {
      v105 = v69;
      v70 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v121[0] = v104;
      *v70 = 136446978;
      v71 = v106;
      v72 = v62 + *(v106 + 20);
      v73 = sub_22D01556C();
      v75 = v74;
      sub_22CFB6010(v62);
      v76 = sub_22CEEE31C(v73, v75, v121);

      *(v70 + 4) = v76;
      *(v70 + 12) = 2082;
      if (qword_28143F550 != -1)
      {
        swift_once();
      }

      v77 = *(v71 + 20);
      v78 = qword_28143F558;
      v79 = v113;
      v80 = v109;
      sub_22D01557C();
      v81 = sub_22D01426C();
      v82 = v108;
      v108(v80, v43);
      v83 = [v78 stringFromDate_];

      v84 = sub_22D01667C();
      v86 = v85;

      sub_22CFB6010(v79);
      v87 = sub_22CEEE31C(v84, v86, v121);

      *(v70 + 14) = v87;
      *(v70 + 22) = 2082;
      v88 = qword_28143F558;
      v89 = v114;
      v90 = sub_22D01426C();
      v91 = [v88 stringFromDate_];

      v92 = sub_22D01667C();
      v94 = v93;

      v82(v89, v43);
      v95 = sub_22CEEE31C(v92, v94, v121);

      *(v70 + 24) = v95;
      *(v70 + 32) = 2050;
      v96 = v116;
      sub_22D0142AC();
      v98 = v97;
      v82(v96, v43);
      *(v70 + 34) = v98;
      _os_log_impl(&dword_22CEE1000, v68, v105, "Earliest nonwaking date from task %{public}s: %{public}s, finalWakeTarget: %{public}s %{public}f", v70, 0x2Au);
      v99 = v104;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v99, -1, -1);
      MEMORY[0x2318C6860](v70, -1, -1);

      v100 = v115;
    }

    else
    {

      v101 = v108;
      v108(v67, v43);
      v101(v66, v43);
      sub_22CFB6010(v63);
      sub_22CFB6010(v62);
      v100 = v64;
    }

    sub_22CFB6010(v100);
    v49 = v119;
    (v110)(v119, v118, v43);
    v48 = 0;
  }

  return (*(v120 + 56))(v49, v48, 1, v43);
}

void sub_22CEF33F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v49 - v6;
  v8 = sub_22D01430C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v49 - v20;
  os_unfair_lock_assert_owner(*(v1[2] + 16));
  if (v1[5])
  {
    v22 = v1[6];
    sub_22CEEB6DC(a1, v7, &qword_27D9F2648, &unk_22D018BC0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      swift_unknownObjectRetain();
      sub_22CEEC3D8(v7, &qword_27D9F2648, &unk_22D018BC0);
      if (qword_28143FB18 != -1)
      {
        swift_once();
      }

      v23 = sub_22D01637C();
      __swift_project_value_buffer(v23, qword_2814443F0);
      v24 = sub_22D01636C();
      v25 = sub_22D01690C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = v22;
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22CEE1000, v24, v25, "Cancelling precise waking task", v27, 2u);
        v28 = v27;
        v22 = v26;
        MEMORY[0x2318C6860](v28, -1, -1);
      }
    }

    else
    {
      v53 = v22;
      (*(v9 + 32))(v21, v7, v8);
      v29 = qword_28143FB18;
      swift_unknownObjectRetain();
      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_22D01637C();
      __swift_project_value_buffer(v30, qword_2814443F0);
      v31 = *(v9 + 16);
      v31(v18, v21, v8);
      v31(v14, v21, v8);
      v32 = sub_22D01636C();
      v33 = sub_22D01690C();
      if (os_log_type_enabled(v32, v33))
      {
        v50 = v33;
        v51 = v32;
        v52 = a1;
        v34 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v54 = v49;
        *v34 = 136446466;
        if (qword_28143F550 != -1)
        {
          swift_once();
        }

        v35 = qword_28143F558;
        v36 = sub_22D01426C();
        v37 = [v35 stringFromDate_];

        v38 = sub_22D01667C();
        v40 = v39;

        v41 = *(v9 + 8);
        v41(v18, v8);
        v42 = sub_22CEEE31C(v38, v40, &v54);

        *(v34 + 4) = v42;
        *(v34 + 12) = 2048;
        sub_22D0142AC();
        v44 = v43;
        v41(v14, v8);
        *(v34 + 14) = v44;
        v45 = v51;
        _os_log_impl(&dword_22CEE1000, v51, v50, "Scheduling precise waking task for: %{public}s in %fs", v34, 0x16u);
        v46 = v49;
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x2318C6860](v46, -1, -1);
        MEMORY[0x2318C6860](v34, -1, -1);

        v41(v21, v8);
        a1 = v52;
        v22 = v53;
      }

      else
      {

        v47 = *(v9 + 8);
        v47(v14, v8);
        v47(v18, v8);
        v47(v21, v8);
        v22 = v53;
      }
    }

    ObjectType = swift_getObjectType();
    (*(v22 + 32))(a1, ObjectType, v22);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_22CEF3990(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CEF39C8(uint64_t a1)
{
  v3 = sub_22D01436C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = *(v1 + 16);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22CEF40B8;
  *(v10 + 24) = v9;
  aBlock[4] = sub_22CEF4034;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF3C20;
  aBlock[3] = &block_descriptor_37;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CEF3C50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22CEF3C78(uint64_t a1)
{
  v36 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  v2 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v34 - v9;
  v11 = sub_22D01430C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v16 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v34 - v18;
  sub_22CEEB6DC(a1, v10, &qword_27D9F2648, &unk_22D018BC0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v20 = v37;
    sub_22CEEC3D8(v10, &qword_27D9F2648, &unk_22D018BC0);
    if (qword_28143DF40 != -1)
    {
      swift_once();
    }

    return sub_22CEF39C8(v20 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_id);
  }

  else
  {
    v34 = *(v12 + 32);
    v34(v19, v10, v11);
    v22 = OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_id;
    v23 = sub_22D01436C();
    v24 = v37;
    (*(*(v23 - 8) + 16))(v5, v37 + v22, v23);
    v35 = v5;
    v25 = v5;
    v26 = v36;
    v27 = *(v12 + 16);
    v27(&v25[*(v36 + 20)], v19, v11);
    v27(v16, v19, v11);
    v28 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    v34((v29 + v28), v16, v11);
    v30 = *(v26 + 24);
    v31 = v35;
    v32 = &v35[v30];
    *v32 = sub_22CF8A714;
    v32[1] = v29;
    v33 = qword_28143DF40;

    if (v33 != -1)
    {
      swift_once();
    }

    sub_22CF88FD0(v31);
    sub_22CF8A5B0(v31);
    return (*(v12 + 8))(v19, v11);
  }
}

uint64_t sub_22CEF4038(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_22CEF410C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E18, &qword_22D01A5F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v16 - v6;
  v8 = sub_22D01436C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  v14 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  swift_beginAccess();
  sub_22CEF57FC(v7, v12);
  swift_endAccess();
  return sub_22CEF5F4C();
}

uint64_t sub_22CEF42A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22D01436C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22D01430C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22CEF43AC(char a1)
{
  v3 = *(v1[10] + 16);
  os_unfair_lock_lock(v3);
  if (a1)
  {
    goto LABEL_6;
  }

  if (qword_28143DBD8 != -1)
  {
    swift_once();
  }

  if ((byte_281444380 & 1) == 0)
  {
LABEL_6:
    v7 = sub_22D01616C();
    v8 = MEMORY[0x277D4D650];
    __swift_allocate_boxed_opaque_existential_1(&v6);
    sub_22D01615C();
  }

  else
  {
    v7 = sub_22D01616C();
    v8 = MEMORY[0x277D4D650];
    __swift_allocate_boxed_opaque_existential_1(&v6);
    sub_22D01614C();
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 11);
  sub_22CEF44D4(&v6, (v1 + 11));
  swift_endAccess();
  os_unfair_lock_unlock(v3);
  v4 = v1[3];
  sub_22CEE3A84((v1 + 11), &v6);
  sub_22D01643C();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v6);
}

uint64_t sub_22CEF44D4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22CEF4520()
{
  v1 = sub_22D01659C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 120);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x277D85200], v1);
  v8 = v7;
  LOBYTE(v7) = sub_22D0165BC();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    if ((sub_22CEF4850() & 1) == 0)
    {
      v9 = *(v0 + 24);

LABEL_26:
      v39 = *(v0 + 16);
      v44 = v9;
      sub_22D01643C();
    }

    v9 = sub_22CEF49F4(MEMORY[0x277D84F90]);
    v10 = *(v0 + 24);
    v13 = *(v10 + 64);
    v12 = v10 + 64;
    v11 = v13;
    v14 = 1 << *(*(v0 + 24) + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v11;
    v17 = (v14 + 63) >> 6;
    v42 = *(v0 + 24);

    v18 = 0;
    v41 = v0;
    while (v16)
    {
      v20 = v18;
LABEL_13:
      v21 = __clz(__rbit64(v16)) | (v20 << 6);
      v22 = (*(v42 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(*(v42 + 56) + 8 * v21);
      if (!*(v0 + 32))
      {
        v25 = 0;
      }

      v43 = v25;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v9;
      v27 = sub_22CEEC698(v24, v23);
      v29 = v9[2];
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_28;
      }

      v33 = v28;
      if (v9[3] >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = v27;
          sub_22CFB6680();
          v27 = v38;
        }
      }

      else
      {
        sub_22CFB938C(v32, isUniquelyReferenced_nonNull_native);
        v27 = sub_22CEEC698(v24, v23);
        if ((v33 & 1) != (v34 & 1))
        {
          goto LABEL_31;
        }
      }

      v16 &= v16 - 1;
      if (v33)
      {
        v19 = v27;

        v9 = v44;
        *(v44[7] + 8 * v19) = v43;
      }

      else
      {
        v9 = v44;
        v44[(v27 >> 6) + 8] |= 1 << v27;
        v35 = (v9[6] + 16 * v27);
        *v35 = v24;
        v35[1] = v23;
        *(v9[7] + 8 * v27) = v43;
        v36 = v9[2];
        v31 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v31)
        {
          goto LABEL_29;
        }

        v9[2] = v37;
      }

      v18 = v20;
      v0 = v41;
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        goto LABEL_26;
      }

      v16 = *(v12 + 8 * v20);
      ++v18;
      if (v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

uint64_t sub_22CEF4850()
{
  if (qword_28143DBD8 != -1)
  {
    swift_once();
  }

  v0 = byte_281444380;
  if (byte_281444380 == 1)
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v1 = sub_22D01637C();
    __swift_project_value_buffer(v1, qword_281444420);
    v2 = sub_22D01636C();
    v3 = sub_22D0168CC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Device supports boosted QoS";
LABEL_12:
      _os_log_impl(&dword_22CEE1000, v2, v3, v5, v4, 2u);
      MEMORY[0x2318C6860](v4, -1, -1);
    }
  }

  else
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v6 = sub_22D01637C();
    __swift_project_value_buffer(v6, qword_281444420);
    v2 = sub_22D01636C();
    v3 = sub_22D0168CC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Device does not support boosted QoS";
      goto LABEL_12;
    }
  }

  return v0;
}

unint64_t sub_22CEF4A08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22D016D3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_22CEEC698(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22CEF4B04(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(*(Strong + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_lock) + 16);

    os_unfair_lock_lock(v4);
    v5 = *&v3[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_qos];
    *&v3[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_qos] = v1;

    v6 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_clients;
    swift_beginAccess();
    v7 = *&v3[v6];
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 64);
    v11 = (v8 + 63) >> 6;
    v12 = *&v3[v6];

    v13 = 0;
    while (v10)
    {
      v14 = v13;
LABEL_10:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(*(v7 + 56) + ((v14 << 9) | (8 * v15)));
      sub_22D00932C(v1);
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        os_unfair_lock_unlock(v4);

        return;
      }

      v10 = *(v7 + 64 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22CEF4D04(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CEF4D64(v1);
  }

  return result;
}

uint64_t sub_22CEF4D64(uint64_t a1)
{
  v110 = sub_22D0162DC();
  v3 = *(v110 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v110, v5);
  v97 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6, v8);
  v112 = &v83[-v10];
  MEMORY[0x28223BE20](v9, v11);
  v111 = &v83[-v12];
  v13 = sub_22D015B9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v99 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_22D015C8C();
  v113 = *(v18 - 8);
  v114 = v18;
  v19 = *(v113 + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v96 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v95 = &v83[-v25];
  MEMORY[0x28223BE20](v24, v26);
  v98 = &v83[-v27];
  v28 = sub_22D01659C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v83[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = v1;
  v34 = v1[4];
  *v33 = v34;
  (*(v29 + 104))(v33, *MEMORY[0x277D85200], v28);
  v35 = v34;
  LOBYTE(v34) = sub_22D0165BC();
  (*(v29 + 8))(v33, v28);
  if ((v34 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (qword_28143FB58 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v36 = sub_22D01637C();
    v94 = __swift_project_value_buffer(v36, qword_281444498);
    v37 = sub_22D01636C();
    v38 = sub_22D01690C();
    v39 = os_log_type_enabled(v37, v38);
    v41 = v98;
    v40 = v99;
    if (v39)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_22CEE1000, v37, v38, "PushParticipant received QoS update", v42, 2u);
      MEMORY[0x2318C6860](v42, -1, -1);
    }

    v43 = v100[10];
    __swift_project_boxed_opaque_existential_1(v100 + 6, v100[9]);
    v44 = sub_22D015F2C();
    v46 = v44;
    v47 = *(v44 + 16);
    v48 = v114;
    if (!v47)
    {
    }

    v49 = v14;
    v14 = 0;
    v116 = v113 + 16;
    v109 = (v49 + 88);
    v108 = *MEMORY[0x277D4D548];
    v89 = *MEMORY[0x277D4D568];
    v84 = *MEMORY[0x277D4D6A8];
    v88 = (v3 + 104);
    v101 = *MEMORY[0x277D4D6A0];
    v107 = (v3 + 16);
    v87 = (v3 + 8);
    v105 = (v49 + 8);
    v106 = (v113 + 8);
    *&v45 = 136446466;
    v85 = v45;
    v91 = v44;
    v90 = v47;
    v93 = a1;
    v92 = v13;
    while (v14 < *(v46 + 16))
    {
      v50 = v46 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v14;
      v115 = *(v113 + 16);
      v115(v41, v50, v48);
      sub_22D015BDC();
      v51 = (*v109)(v40, v13);
      if (v51 == v108)
      {
        (*v106)(v41, v48);
      }

      else
      {
        if (v51 != v89)
        {
          goto LABEL_26;
        }

        v52 = sub_22D015C3C();
        v54 = v95;
        if (*(a1 + 16))
        {
          v55 = sub_22CEEC698(v52, v53);
          v57 = v56;
          v48 = v114;

          v58 = v101;
          if (v57)
          {
            v59 = *(*(a1 + 56) + 8 * v55);
            v58 = v101;
            if (v59 != 1)
            {
              v58 = v84;
              if (v59)
              {
                while (1)
                {
LABEL_26:
                  sub_22D016CFC();
                  __break(1u);
                }
              }
            }
          }
        }

        else
        {

          v58 = v101;
        }

        v61 = v110;
        v60 = v111;
        (*v88)(v111, v58, v110);
        v115(v54, v41, v48);
        v104 = *v107;
        v104(v112, v60, v61);
        v62 = sub_22D01636C();
        v63 = sub_22D01690C();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v117 = v86;
          *v64 = v85;
          v65 = sub_22D015C3C();
          v67 = v66;
          v68 = v112;
          v103 = *v106;
          v103(v54, v114);
          v69 = sub_22CEEE31C(v65, v67, &v117);

          *(v64 + 4) = v69;
          *(v64 + 12) = 2082;
          sub_22CFB2168(&qword_27D9F3128, MEMORY[0x277D4D6B0]);
          v70 = sub_22D016DEC();
          v72 = v71;
          v73 = v68;
          v48 = v114;
          v102 = *v87;
          v102(v73, v61);
          v74 = sub_22CEEE31C(v70, v72, &v117);

          *(v64 + 14) = v74;
          _os_log_impl(&dword_22CEE1000, v62, v63, "Changing QoS for %{public}s to %{public}s", v64, 0x16u);
          v75 = v86;
          swift_arrayDestroy();
          MEMORY[0x2318C6860](v75, -1, -1);
          MEMORY[0x2318C6860](v64, -1, -1);
        }

        else
        {

          v102 = *v87;
          v102(v112, v61);
          v103 = *v106;
          v103(v54, v48);
        }

        v76 = v96;
        v77 = v98;
        v115(v96, v98, v48);
        v3 = v110;
        v78 = v111;
        v104(v97, v111, v110);
        sub_22D015C7C();
        v79 = v100[10];
        __swift_project_boxed_opaque_existential_1(v100 + 6, v100[9]);
        v48 = v114;
        sub_22D015F6C();
        v80 = v76;
        v41 = v77;
        v81 = v103;
        v103(v80, v48);
        v102(v78, v3);
        v81(v77, v48);
        a1 = v93;
        v13 = v92;
        v40 = v99;
        v46 = v91;
        v47 = v90;
      }

      ++v14;
      (*v105)(v40, v13);
      if (v47 == v14)
      {
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }
}

uint64_t sub_22CEF57B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CEF57FC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E18, &qword_22D01A5F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_22CEEC3D8(a1, &qword_27D9F2E18, &qword_22D01A5F0);
    sub_22CEF5B3C(a2, v9);
    v16 = sub_22D01436C();
    (*(*(v16 - 8) + 8))(a2, v16);
    return sub_22CEEC3D8(v9, &qword_27D9F2E18, &qword_22D01A5F0);
  }

  else
  {
    sub_22CEF0B08(a1, v14, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
    v18 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;
    sub_22CFBFB68(v14, a2, isUniquelyReferenced_nonNull_native);
    v20 = sub_22D01436C();
    result = (*(*(v20 - 8) + 8))(a2, v20);
    *v2 = v22;
  }

  return result;
}

uint64_t sub_22CEF5A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D01436C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22D01430C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22CEF5B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_22CEF5CD8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22CFB7BDC();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_22D01436C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
    v22 = *(v15 - 8);
    sub_22CEF0B08(v14 + *(v22 + 72) * v8, a2, type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task);
    sub_22CFBD9B0(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_22CEF5CD8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22D01436C();
  v5 = MEMORY[0x277CC95F0];
  sub_22CEF57B4(&qword_28143F710, MEMORY[0x277CC95F0]);
  v6 = sub_22D01661C();
  return sub_22CEF5DAC(a1, v6, MEMORY[0x277CC95F0], &qword_27D9F3208, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_22CEF5DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8);
      sub_22CEF57B4(v25, v26);
      v21 = sub_22D01665C();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

uint64_t sub_22CEF5F4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v20 - v3;
  v5 = sub_22D01430C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22CEF62CC(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22CEEC3D8(v4, &qword_27D9F2648, &unk_22D018BC0);
    sub_22D0166AC();
    xpc_set_event();
  }

  (*(v6 + 32))(v10, v4, v5);
  result = sub_22D0142BC();
  v13 = ceil(v12);
  if (v13 >= 9.22337204e18)
  {
    if (qword_28143FB18 == -1)
    {
LABEL_9:
      v16 = sub_22D01637C();
      __swift_project_value_buffer(v16, qword_2814443F0);
      v17 = sub_22D01636C();
      v18 = sub_22D0168EC();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_22CEE1000, v17, v18, "Cannot schedule tasks this far into the future", v19, 2u);
        MEMORY[0x2318C6860](v19, -1, -1);
      }

      sub_22D0166AC();
      xpc_set_event();
      goto LABEL_12;
    }

LABEL_15:
    swift_once();
    goto LABEL_9;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v13 <= -9.22337204e18)
  {
    __break(1u);
  }

  else
  {
    v14 = 1000000000 * v13;
    if ((v13 * 1000000000) >> 64 == v14 >> 63)
    {
      v15 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_date(v15, "Date", v14);
      xpc_dictionary_set_BOOL(v15, "UserVisible", 1);
      sub_22D0166AC();
      xpc_set_event();
      swift_unknownObjectRelease();
LABEL_12:
      (*(v6 + 8))(v10, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CEF62CC@<X0>(char *a1@<X8>)
{
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E10, &qword_22D01A5E8);
  v3 = *(*(v85 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v85, v4);
  v84 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v83 = &v74 - v8;
  v9 = sub_22D01430C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v82 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v81 = &v74 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v74 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v74 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v77 = &v74 - v27;
  v28 = sub_22D01659C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = (&v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v1 + 16);
  *v33 = v34;
  (*(v29 + 104))(v33, *MEMORY[0x277D85200], v28);
  v35 = v34;
  LOBYTE(v34) = sub_22D0165BC();
  result = (*(v29 + 8))(v33, v28);
  if (v34)
  {
    v74 = v21;
    v89 = v9;
    v76 = a1;
    swift_beginAccess();
    v37 = *(v1 + 32);

    sub_22D01423C();
    v38 = *(v37 + 64);
    v78 = v37 + 64;
    v39 = 1 << *(v37 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & v38;
    v42 = (v39 + 63) >> 6;
    v79 = (v10 + 16);
    v75 = v10;
    v86 = (v10 + 32);
    v87 = (v10 + 8);
    v88 = v37;

    v43 = 0;
    v80 = v25;
    if (v41)
    {
      while (1)
      {
        v44 = v43;
LABEL_10:
        v45 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v46 = v45 | (v44 << 6);
        v47 = v88;
        v48 = *(v88 + 48);
        v49 = sub_22D01436C();
        v50 = *(v49 - 8);
        v90 = v49;
        v91 = v50;
        v51 = v83;
        (*(v50 + 16))(v83, v48 + *(v50 + 72) * v46, v49);
        v52 = *(v47 + 56);
        v53 = (type metadata accessor for PreciseWakingTaskScheduler.Singleton.Task(0) - 8);
        v54 = v52 + *(*v53 + 72) * v46;
        v55 = v85;
        sub_22CF8A54C(v54, v51 + *(v85 + 48));
        v56 = v84;
        sub_22CEEB6DC(v51, v84, &qword_27D9F2E10, &qword_22D01A5E8);
        v57 = v56 + *(v55 + 48);
        v58 = v57 + v53[7];
        v59 = v82;
        v60 = v89;
        (*v79)(v82, v58, v89);
        sub_22CF8A5B0(v57);
        sub_22CF8A740(&qword_281443A30, MEMORY[0x277CC9578]);
        v25 = v80;
        v61 = sub_22D01663C();
        sub_22CEEC3D8(v51, &qword_27D9F2E10, &qword_22D01A5E8);
        if (v61)
        {
          v62 = v59;
        }

        else
        {
          v62 = v25;
        }

        if (v61)
        {
          v63 = v25;
        }

        else
        {
          v63 = v59;
        }

        (*v87)(v62, v60);
        v64 = *v86;
        v65 = v81;
        (*v86)(v81, v63, v60);
        (*(v91 + 8))(v56, v90);
        result = (v64)(v25, v65, v60);
        if (!v41)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v44 >= v42)
      {
        break;
      }

      v41 = *(v78 + 8 * v44);
      ++v43;
      if (v41)
      {
        v43 = v44;
        goto LABEL_10;
      }
    }

    v66 = *v86;
    v67 = v77;
    v68 = v89;
    (*v86)(v77, v25, v89);

    v69 = v74;
    sub_22D01423C();
    v70 = sub_22D01428C();
    v71 = *v87;
    (*v87)(v69, v68);
    if (v70)
    {
      v72 = v76;
      v66(v76, v67, v68);
      v73 = 0;
    }

    else
    {
      v71(v67, v68);
      v73 = 1;
      v72 = v76;
    }

    return (*(v75 + 56))(v72, v73, 1, v68);
  }

  else
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_29Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void sub_22CEF6A04(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v49 - v6;
  v8 = sub_22D01430C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v49 - v20;
  os_unfair_lock_assert_owner(*(v1[2] + 16));
  if (v1[9])
  {
    v22 = v1[10];
    sub_22CEEB6DC(a1, v7, &qword_27D9F2648, &unk_22D018BC0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      swift_unknownObjectRetain();
      sub_22CEEC3D8(v7, &qword_27D9F2648, &unk_22D018BC0);
      if (qword_28143FB18 != -1)
      {
        swift_once();
      }

      v23 = sub_22D01637C();
      __swift_project_value_buffer(v23, qword_2814443F0);
      v24 = sub_22D01636C();
      v25 = sub_22D01690C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = v22;
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22CEE1000, v24, v25, "Cancelling nonwaking task", v27, 2u);
        v28 = v27;
        v22 = v26;
        MEMORY[0x2318C6860](v28, -1, -1);
      }
    }

    else
    {
      v53 = v22;
      (*(v9 + 32))(v21, v7, v8);
      v29 = qword_28143FB18;
      swift_unknownObjectRetain();
      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_22D01637C();
      __swift_project_value_buffer(v30, qword_2814443F0);
      v31 = *(v9 + 16);
      v31(v18, v21, v8);
      v31(v14, v21, v8);
      v32 = sub_22D01636C();
      v33 = sub_22D01690C();
      if (os_log_type_enabled(v32, v33))
      {
        v50 = v33;
        v51 = v32;
        v52 = a1;
        v34 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v54 = v49;
        *v34 = 136446466;
        if (qword_28143F550 != -1)
        {
          swift_once();
        }

        v35 = qword_28143F558;
        v36 = sub_22D01426C();
        v37 = [v35 stringFromDate_];

        v38 = sub_22D01667C();
        v40 = v39;

        v41 = *(v9 + 8);
        v41(v18, v8);
        v42 = sub_22CEEE31C(v38, v40, &v54);

        *(v34 + 4) = v42;
        *(v34 + 12) = 2048;
        sub_22D0142AC();
        v44 = v43;
        v41(v14, v8);
        *(v34 + 14) = v44;
        v45 = v51;
        _os_log_impl(&dword_22CEE1000, v51, v50, "Scheduling nonwaking task for: %{public}s in %fs", v34, 0x16u);
        v46 = v49;
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x2318C6860](v46, -1, -1);
        MEMORY[0x2318C6860](v34, -1, -1);

        v41(v21, v8);
        a1 = v52;
        v22 = v53;
      }

      else
      {

        v47 = *(v9 + 8);
        v47(v14, v8);
        v47(v18, v8);
        v47(v21, v8);
        v22 = v53;
      }
    }

    ObjectType = swift_getObjectType();
    (*(v22 + 32))(a1, ObjectType, v22);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_22CEF6F78(uint64_t a1)
{
  v3 = *(*(v1 + 24) + 16);

  os_unfair_lock_lock(v3);
  sub_22CEF6FE0(v1, a1);
  os_unfair_lock_unlock(v3);
}

uint64_t sub_22CEF6FE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v33 - v7;
  v9 = sub_22D01430C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v33 - v16;
  [*(a1 + 16) cancel];
  [*(a1 + 16) invalidate];
  v18 = *(a1 + 16);
  *(a1 + 16) = 0;

  sub_22CEF74A4(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22CEF7514(v8);
  }

  v35 = *(v10 + 32);
  v35(v17, v8, v9);
  v20 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v21 = sub_22D01666C();
  v22 = [v20 initWithIdentifier_];

  v23 = *(a1 + 16);
  *(a1 + 16) = v22;

  sub_22D0142DC();
  sub_22D01424C();
  v25 = v24;
  v36 = *(v10 + 8);
  result = v36(v14, v9);
  v26 = *(a1 + 16);
  if (v26)
  {
    if (v25 < 0.0)
    {
      v25 = 1.0;
    }

    v34 = *(a1 + 32);
    v27 = swift_allocObject();
    swift_weakInit();
    (*(v10 + 16))(v14, v17, v9);
    v28 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    v35((v29 + v28), v14, v9);
    aBlock[4] = sub_22D0088FC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D008590;
    aBlock[3] = &block_descriptor_31;
    v30 = _Block_copy(aBlock);
    v31 = v26;
    v32 = v34;

    [v31 scheduleWithFireInterval:v32 leewayInterval:v30 queue:v25 handler:0.0];
    _Block_release(v30);

    return v36(v17, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CEF73A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CEF73E0()
{
  v1 = sub_22D01430C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CEF74A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CEF7514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22CEF757C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v49 - v6;
  v8 = sub_22D01430C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v49 - v20;
  os_unfair_lock_assert_owner(*(v1[2] + 16));
  if (v1[7])
  {
    v22 = v1[8];
    sub_22CEEB6DC(a1, v7, &qword_27D9F2648, &unk_22D018BC0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      swift_unknownObjectRetain();
      sub_22CEEC3D8(v7, &qword_27D9F2648, &unk_22D018BC0);
      if (qword_28143FB18 != -1)
      {
        swift_once();
      }

      v23 = sub_22D01637C();
      __swift_project_value_buffer(v23, qword_2814443F0);
      v24 = sub_22D01636C();
      v25 = sub_22D01690C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = v22;
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22CEE1000, v24, v25, "Cancelling waking task", v27, 2u);
        v28 = v27;
        v22 = v26;
        MEMORY[0x2318C6860](v28, -1, -1);
      }
    }

    else
    {
      v53 = v22;
      (*(v9 + 32))(v21, v7, v8);
      v29 = qword_28143FB18;
      swift_unknownObjectRetain();
      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_22D01637C();
      __swift_project_value_buffer(v30, qword_2814443F0);
      v31 = *(v9 + 16);
      v31(v18, v21, v8);
      v31(v14, v21, v8);
      v32 = sub_22D01636C();
      v33 = sub_22D01690C();
      if (os_log_type_enabled(v32, v33))
      {
        v50 = v33;
        v51 = v32;
        v52 = a1;
        v34 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v54 = v49;
        *v34 = 136446466;
        if (qword_28143F550 != -1)
        {
          swift_once();
        }

        v35 = qword_28143F558;
        v36 = sub_22D01426C();
        v37 = [v35 stringFromDate_];

        v38 = sub_22D01667C();
        v40 = v39;

        v41 = *(v9 + 8);
        v41(v18, v8);
        v42 = sub_22CEEE31C(v38, v40, &v54);

        *(v34 + 4) = v42;
        *(v34 + 12) = 2048;
        sub_22D0142AC();
        v44 = v43;
        v41(v14, v8);
        *(v34 + 14) = v44;
        v45 = v51;
        _os_log_impl(&dword_22CEE1000, v51, v50, "Scheduling waking task for: %{public}s in %fs", v34, 0x16u);
        v46 = v49;
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x2318C6860](v46, -1, -1);
        MEMORY[0x2318C6860](v34, -1, -1);

        v41(v21, v8);
        a1 = v52;
        v22 = v53;
      }

      else
      {

        v47 = *(v9 + 8);
        v47(v14, v8);
        v47(v18, v8);
        v47(v21, v8);
        v22 = v53;
      }
    }

    ObjectType = swift_getObjectType();
    (*(v22 + 32))(a1, ObjectType, v22);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_22CEF7AF0(void (*a1)(char *, uint64_t))
{
  v3 = *(*(v1 + 24) + 16);

  os_unfair_lock_lock(v3);
  sub_22CEF7B58(v1, a1);
  os_unfair_lock_unlock(v3);
}

uint64_t sub_22CEF7B58(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v80 - v6;
  v8 = sub_22D01430C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v91 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v90 = &v80 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v80 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v80 - v22;
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = &v80 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v80 - v29;
  sub_22D01566C();
  v93 = sub_22D01563C();
  [*(a1 + 16) invalidate];
  v31 = *(a1 + 16);
  v94 = a1;
  *(a1 + 16) = 0;

  sub_22CEF74A4(v92, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_22CEF7514(v7);
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v32 = sub_22D01637C();
    __swift_project_value_buffer(v32, qword_2814443F0);
    v33 = sub_22D01636C();
    v34 = sub_22D01690C();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v94;
    if (v35)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22CEE1000, v33, v34, "Skipping next scheduled wake task - next date is nil", v37, 2u);
      MEMORY[0x2318C6860](v37, -1, -1);
    }
  }

  else
  {
    v85 = *(v9 + 32);
    v86 = v9 + 32;
    v85(v30, v7, v8);
    sub_22D0142DC();
    sub_22D01425C();
    v38 = *(v9 + 8);
    v87 = v23;
    v92 = v38;
    v38(v23, v8);
    sub_22CEF8844(&qword_281443A30, MEMORY[0x277CC9578]);
    v39 = sub_22D01664C();
    v88 = v9;
    v89 = v27;
    v41 = v9 + 16;
    v40 = *(v9 + 16);
    if (v39)
    {
      v42 = v27;
    }

    else
    {
      v42 = v30;
    }

    v40(v19, v42, v8);
    v43 = v30;
    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v44 = sub_22D01637C();
    __swift_project_value_buffer(v44, qword_2814443F0);
    v45 = v90;
    v40(v90, v30, v8);
    v46 = v91;
    v40(v91, v43, v8);
    v47 = v43;
    v48 = sub_22D01636C();
    v82 = sub_22D01690C();
    v49 = os_log_type_enabled(v48, v82);
    v83 = v47;
    v84 = v40;
    if (v49)
    {
      v80 = v41;
      v81 = v19;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v50 = 136446466;
      if (qword_28143ECC8 != -1)
      {
        swift_once();
      }

      v52 = qword_28143ECD0;
      v53 = v90;
      v54 = sub_22D01426C();
      v55 = [v52 stringFromDate_];

      v56 = sub_22D01667C();
      v58 = v57;

      v59 = v53;
      v60 = v92;
      v92(v59, v8);
      v61 = sub_22CEEE31C(v56, v58, aBlock);

      *(v50 + 4) = v61;
      *(v50 + 12) = 2048;
      v62 = v91;
      sub_22D0142AC();
      v64 = v63;
      v60(v62, v8);
      *(v50 + 14) = v64;
      _os_log_impl(&dword_22CEE1000, v48, v82, "Scheduling waking task for adjusted date: %{public}s in %fs", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x2318C6860](v51, -1, -1);
      MEMORY[0x2318C6860](v50, -1, -1);

      v36 = v94;
      v19 = v81;
    }

    else
    {

      v65 = v92;
      v92(v46, v8);
      v65(v45, v8);
      v36 = v94;
    }

    v66 = objc_allocWithZone(MEMORY[0x277CCA8B8]);
    v67 = sub_22D01666C();
    v68 = [v66 initWithIdentifier_];

    v69 = *(v36 + 16);
    *(v36 + 16) = v68;
    v70 = v68;

    [v70 setQualityOfService_];
    [v70 setRepeats_];
    sub_22D0142AC();
    [v70 setInterval_];
    [v70 setTolerance_];
    [v70 interval];
    v71 = v87;
    if (v72 < 0.0)
    {
      [v70 setInterval_];
    }

    v73 = swift_allocObject();
    swift_weakInit();
    v84(v71, v19, v8);
    v74 = v71;
    v75 = (*(v88 + 80) + 24) & ~*(v88 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = v73;
    v85((v76 + v75), v74, v8);
    aBlock[4] = sub_22CFB2A9C;
    aBlock[5] = v76;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CFB24C4;
    aBlock[3] = &block_descriptor_18;
    v77 = _Block_copy(aBlock);

    [v70 scheduleWithBlock_];
    _Block_release(v77);

    v78 = v92;
    v92(v19, v8);
    v78(v89, v8);
    v78(v83, v8);
  }

  sub_22CEF8508(v36, v93);
}

uint64_t sub_22CEF840C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22CEF8444()
{
  v1 = sub_22D01430C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22CEF8508(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D0164CC();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01653C();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v18, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 32);
  aBlock[4] = sub_22CEF8B9C;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_22;
  v15 = _Block_copy(aBlock);

  sub_22D0164EC();
  v20 = MEMORY[0x277D84F90];
  sub_22CEF8844(&qword_28143FA60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v13, v8, v15);
  _Block_release(v15);
  (*(v19 + 8))(v8, v4);
  (*(v9 + 8))(v13, v18);
}

uint64_t sub_22CEF87B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CEF87FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CEF8844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CEF888C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CEF88D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22CEF891C(char a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner(*(*(v2 + 16) + 16));
  v4 = *(v2 + 96);
  if (a1)
  {
    if (v4)
    {
      return;
    }

    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v5 = sub_22D01637C();
    __swift_project_value_buffer(v5, qword_2814443F0);
    v6 = sub_22D01636C();
    v7 = sub_22D01690C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22CEE1000, v6, v7, "Acquiring keep-alive", v8, 2u);
      MEMORY[0x2318C6860](v8, -1, -1);
    }

    sub_22D01566C();
    v9 = sub_22D01563C();
    v10 = *(v2 + 96);
    *(v2 + 96) = v9;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    if (qword_28143FB18 != -1)
    {
      swift_once();
    }

    v11 = sub_22D01637C();
    __swift_project_value_buffer(v11, qword_2814443F0);
    v12 = sub_22D01636C();
    v13 = sub_22D01690C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22CEE1000, v12, v13, "Releasing keep-alive", v14, 2u);
      MEMORY[0x2318C6860](v14, -1, -1);
    }

    if (*(v2 + 96))
    {
      v15 = *(v2 + 96);

      sub_22D01562C();

      v16 = *(v2 + 96);
    }

    *(v2 + 96) = 0;
  }
}

uint64_t sub_22CEF8B58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

int *sub_22CEF8BA4()
{
  v2 = sub_22D01502C();
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContentSourceResolver();
  v8 = *(*(v7 - 1) + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v49 = &v47 - v14;
  if (sub_22D014D8C() == 4)
  {
    sub_22D0148BC();
  }

  v15 = [*(v0 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection) remoteProcess];
  *&v12[v7[6]] = MEMORY[0x277D84F90];
  v16 = v7[7];
  v17 = sub_22D0145EC();
  (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
  v18 = v15;
  sub_22CEE84BC(v18);
  if (v1)
  {

    sub_22CEEC3D8(&v12[v16], &unk_27D9F2358, &unk_22D018980);
  }

  else
  {
    (*(v48 + 32))(v12, v6, v2);
    v19 = sub_22CEFC820(v18);
    v20 = &v12[v7[5]];
    *v20 = v19;
    *(v20 + 1) = v21;
    v20[16] = v22 & 1;
    v20[17] = v23 & 1;
    v20[18] = v24;
    v25 = v49;
    sub_22CEFC9D0(v12, v49, type metadata accessor for ContentSourceResolver);
    v26 = sub_22D014DEC();
    v27 = sub_22CEFCA38(v26, v25);
    v29 = v25 + v7[6];
    sub_22CFA1418(v27);
    v7 = sub_22CEF910C();
    v48 = 0;
    if (qword_28143FB48 != -1)
    {
      swift_once();
    }

    v30 = sub_22D01637C();
    __swift_project_value_buffer(v30, qword_281444480);

    v31 = sub_22D01636C();
    v32 = sub_22D01690C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50 = v34;
      *v33 = 136446723;
      v35 = sub_22D01481C();
      v36 = MEMORY[0x2318C5950](v26, v35);
      v38 = v37;

      v39 = sub_22CEEE31C(v36, v38, &v50);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2081;
      v40 = sub_22D01483C();
      v41 = MEMORY[0x2318C5950](v7, v40);
      v43 = sub_22CEEE31C(v41, v42, &v50);

      *(v33 + 14) = v43;
      *(v33 + 22) = 2082;
      swift_beginAccess();
      v44 = sub_22CEFC6C8();
      v46 = sub_22CEEE31C(v44, v45, &v50);

      *(v33 + 24) = v46;
      _os_log_impl(&dword_22CEE1000, v31, v32, "Content source resolution: %{public}s -> %{private}s (resolver: %{public}s)", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v34, -1, -1);
      MEMORY[0x2318C6860](v33, -1, -1);
    }

    else
    {
    }

    sub_22CEFD694(v25, type metadata accessor for ContentSourceResolver);
  }

  return v7;
}

uint64_t type metadata accessor for ContentSourceResolver()
{
  result = qword_281440CC8;
  if (!qword_281440CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_22CEF910C()
{
  v1 = v0;
  v2 = sub_22D01483C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v6 = MEMORY[0x28223BE20](v2, v5);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v61 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v61 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v61 - v17;
  v19 = type metadata accessor for ContentSourceResolver();
  v68 = *(v19 + 24);
  v69 = v19;
  v20 = *(v1 + v68);

  v22 = sub_22CEFD030(v21, v1);
  v67 = v20;

  v23 = sub_22D01502C();
  (*(*(v23 - 8) + 16))(v18, v1, v23);
  v24 = v3[13];
  v66 = *MEMORY[0x277CB9348];
  v72 = v24;
  v73 = v3 + 13;
  v24(v18);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_22CEFCE2C(0, v22[2] + 1, 1, v22);
  }

  v26 = v22[2];
  v25 = v22[3];
  if (v26 >= v25 >> 1)
  {
    v22 = sub_22CEFCE2C(v25 > 1, v26 + 1, 1, v22);
  }

  v22[2] = v26 + 1;
  v29 = v3[4];
  v28 = v3 + 4;
  v27 = v29;
  v71 = (*(v28 + 48) + 32) & ~*(v28 + 48);
  v70 = v28[5];
  v29(v22 + v71 + v70 * v26, v18, v2);
  if (sub_22D014FBC())
  {
    v65 = v27;
    v30 = sub_22D00072C();
    v32 = v31;
    if (qword_28143FB48 != -1)
    {
      swift_once();
    }

    v33 = sub_22D01637C();
    __swift_project_value_buffer(v33, qword_281444480);

    v34 = sub_22D01636C();
    v35 = sub_22D01690C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v62 = v2;
      v37 = v36;
      v38 = swift_slowAlloc();
      v63 = v28;
      v39 = v38;
      v74 = v38;
      *v37 = 136315138;
      v40 = sub_22CEEE31C(v30, v32, &v74);

      *(v37 + 4) = v40;
      _os_log_impl(&dword_22CEE1000, v34, v35, "Adding app bundle identifier as content source: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x2318C6860](v39, -1, -1);
      v41 = v37;
      v2 = v62;
      MEMORY[0x2318C6860](v41, -1, -1);
    }

    else
    {
    }

    sub_22D00072C();
    sub_22D014F8C();
    v72(v15, v66, v2);
    v54 = v22[2];
    v53 = v22[3];
    v55 = v54 + 1;
    v27 = v65;
    v11 = v15;
    if (v54 < v53 >> 1)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v42 = sub_22D014FFC();
  if (!v43)
  {
    goto LABEL_20;
  }

  v44 = v42;
  v45 = v43;
  v65 = v27;
  if (qword_28143FB48 != -1)
  {
    swift_once();
  }

  v46 = sub_22D01637C();
  __swift_project_value_buffer(v46, qword_281444480);

  v47 = sub_22D01636C();
  v48 = sub_22D01690C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v62 = v44;
    v50 = v49;
    v51 = swift_slowAlloc();
    v63 = v28;
    v52 = v51;
    v74 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_22CEEE31C(v62, v45, &v74);
    _os_log_impl(&dword_22CEE1000, v47, v48, "Adding app intents extension bundle identifier as content source: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x2318C6860](v52, -1, -1);
    MEMORY[0x2318C6860](v50, -1, -1);
  }

  v27 = v65;
  sub_22D014F8C();
  v72(v11, v66, v2);
  v54 = v22[2];
  v53 = v22[3];
  v55 = v54 + 1;
  if (v54 >= v53 >> 1)
  {
LABEL_16:
    v22 = sub_22CEFCE2C(v53 > 1, v55, 1, v22);
  }

LABEL_19:
  v22[2] = v55;
  v27(v22 + v71 + v54 * v70, v11, v2);
LABEL_20:

  v56 = v69;
  *(v1 + v68) = v22;
  if (*(v1 + *(v56 + 20) + 18) >= 2u)
  {
    v57 = v64;
    v72(v64, *MEMORY[0x277CB9328], v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_22CEFCE2C(0, v22[2] + 1, 1, v22);
    }

    v59 = v22[2];
    v58 = v22[3];
    if (v59 >= v58 >> 1)
    {
      v22 = sub_22CEFCE2C(v58 > 1, v59 + 1, 1, v22);
    }

    v22[2] = v59 + 1;
    v27(v22 + v71 + v59 * v70, v57, v2);
  }

  return v22;
}

uint64_t sub_22CEF9900(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v40 = a3;
  v6 = sub_22D01471C();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v35 - v17;
  v19 = sub_22D014E2C();
  v41 = *(v19 - 8);
  v20 = *(v41 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22D0141DC();
  sub_22CEE83DC(&qword_2814439A0, MEMORY[0x277CB9678]);
  sub_22D01516C();

  if (a4 >> 60 == 15)
  {
    v25 = sub_22D0150CC();
    (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
  }

  else
  {
    v26 = sub_22D01413C();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    sub_22CEEC970(v40, a4);
    v29 = sub_22D01412C();
    v30 = sub_22D0150CC();
    sub_22CEE83DC(&qword_27D9F2310, MEMORY[0x277CB9850]);
    sub_22D01411C();
    if (v4)
    {
      (*(v41 + 8))(v23, v19);

      sub_22CEEEF0C(v40, a4);
      return v29;
    }

    sub_22CEEEF0C(v40, a4);
    (*(*(v30 - 8) + 56))(v15, 0, 1, v30);
    sub_22CEF0368(v15, v18, &qword_27D9F2308, &unk_22D018950);
  }

  v31 = v38;
  v29 = v39;
  sub_22CEF9DAC(v23, v18, v38);
  if (!v4)
  {
    sub_22CEE83DC(&qword_2814439F0, MEMORY[0x277CB92E0]);
    v32 = v37;
    v33 = sub_22D01517C();
    v29 = sub_22D0141EC();

    (*(v36 + 8))(v31, v32);
  }

  sub_22CEEC3D8(v18, &qword_27D9F2308, &unk_22D018950);
  (*(v41 + 8))(v23, v19);
  return v29;
}

void sub_22CEF9DAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v212 = a2;
  v218 = a1;
  v185 = a3;
  v194 = sub_22D014C3C();
  v193 = *(v194 - 8);
  v4 = *(v193 + 64);
  v6 = MEMORY[0x28223BE20](v194, v5);
  v187 = &v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v186 = &v177 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v192 = &v177 - v12;
  v13 = sub_22D0149CC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v191 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_22D01502C();
  v183 = *(v184 - 8);
  v17 = *(v183 + 64);
  MEMORY[0x28223BE20](v184, v18);
  v190 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22D01488C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v189 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for ActivityState(0);
  v24 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182, v25);
  v195 = &v177 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22D0148CC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v177 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22D0149AC();
  v199 = *(v33 - 8);
  v200 = v33;
  v34 = *(v199 + 64);
  MEMORY[0x28223BE20](v33, v35);
  v201 = &v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22D014EFC();
  v196 = *(v37 - 8);
  v38 = *(v196 + 64);
  MEMORY[0x28223BE20](v37 - 8, v39);
  v198 = &v177 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22D014E2C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41, v44);
  v197 = &v177 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22D01436C();
  v202 = *(v46 - 8);
  v203 = v46;
  v47 = *(v202 + 64);
  MEMORY[0x28223BE20](v46, v48);
  v50 = &v177 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22D01430C();
  v207 = *(v51 - 8);
  v208 = v51;
  v52 = *(v207 + 64);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v188 = &v177 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v54, v56);
  v59 = &v177 - v58;
  MEMORY[0x28223BE20](v57, v60);
  v62 = &v177 - v61;
  sub_22CEFBCA4();
  v210 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v28 + 104))(v32, *MEMORY[0x277CB93F0], v27);
    sub_22D0148EC();
    sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400]);
    swift_allocError();
    sub_22D0148DC();
    swift_willThrow();
    return;
  }

  v205 = v28;
  v206 = v32;
  v211 = Strong;
  v204 = v27;
  v180 = v41;
  v181 = v42;
  v64 = sub_22D0150CC();
  if ((*(*(v64 - 8) + 48))(v212, 1, v64) == 1)
  {
    sub_22D014E1C();
    sub_22D0142DC();
    sub_22CEE83DC(&qword_281443A30, MEMORY[0x277CC9578]);
    v65 = v208;
    v66 = sub_22D01663C();
    v67 = *(v207 + 8);
    v67(v59, v65);
    v67(v62, v65);
    if (v66)
    {
      if (qword_28143FB60 != -1)
      {
        swift_once();
      }

      v68 = sub_22D01637C();
      __swift_project_value_buffer(v68, qword_2814444B0);
      v69 = sub_22D01636C();
      v70 = sub_22D0168EC();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_22CEE1000, v69, v70, "Cannot schedule an activity to begin in the future without an alert configuration", v71, 2u);
        MEMORY[0x2318C6860](v71, -1, -1);
      }

      (*(v205 + 104))(v206, *MEMORY[0x277CB93D8], v204);
      sub_22D0148EC();
      sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400]);
      swift_allocError();
      sub_22D0148DC();
      swift_willThrow();
      goto LABEL_11;
    }
  }

  v72 = v218;
  v73 = v209;
  v74 = v210;
  v75 = sub_22CEF8BA4();
  if (v73)
  {
    (*(v205 + 104))(v206, *MEMORY[0x277CB93D8], v204);
    sub_22D0148EC();
    sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400]);
    swift_allocError();
    v76 = v73;
    sub_22D0148DC();
    swift_willThrow();

LABEL_11:
    swift_unknownObjectRelease();
    return;
  }

  if (!*(v75 + 2))
  {

    (*(v205 + 104))(v206, *MEMORY[0x277CB93D8], v204);
    sub_22D0148EC();
    sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400]);
    swift_allocError();
    sub_22D0148DC();
    swift_willThrow();
    goto LABEL_11;
  }

  v209 = v75;
  if (sub_22D014CFC())
  {
    v77 = sub_22D014CEC();
    if (v78)
    {
      v79 = v77;
      v80 = v78;
    }

    else
    {
      sub_22D01435C();
      v82 = sub_22D01432C();
      v84 = v83;
      (*(v202 + 8))(v50, v203);
      v214 = v82;
      v215 = v84;

      MEMORY[0x2318C5860](46, 0xE100000000000000);

      v85 = v214;
      v86 = v215;
      v87 = [*(v74 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection) remoteProcess];
      LODWORD(v84) = [v87 pid];

      LODWORD(v214) = v84;
      v88 = sub_22D016DEC();
      v90 = v89;
      v214 = v85;
      v215 = v86;
      v72 = v218;

      MEMORY[0x2318C5860](v88, v90);

      v79 = v214;
      v80 = v215;
    }
  }

  else
  {
    sub_22D01435C();
    v79 = sub_22D01432C();
    v80 = v81;
    (*(v202 + 8))(v50, v203);
  }

  v91 = sub_22D014D3C();
  v92 = sub_22CEFD7B4(v91);

  v93 = sub_22D014D9C();
  v203 = sub_22CEFD7B4(v93);

  sub_22CEE3A84(v74 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_activityAuthorizer, &v214);
  v94 = v79;
  v95 = v217;
  __swift_project_boxed_opaque_existential_1(&v214, v216);
  v96 = *(v74 + OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_connection);
  v97 = [v96 remoteProcess];
  v98 = v92;
  v99 = v97;
  v100 = v72;
  v101 = v94;
  v102 = v98;
  v103 = (*(v95 + 8))(v100, v99);

  __swift_destroy_boxed_opaque_existential_1Tm(&v214);
  if (v103)
  {

    (*(v205 + 104))(v206, *MEMORY[0x277CB93E8], v204);
    sub_22D0148EC();
    sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400]);
    swift_allocError();
    v104 = v103;
    sub_22D0148DC();
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v179 = v101;
  v202 = v80;
  v105 = [v96 remoteProcess];
  v106 = sub_22D01666C();
  v107 = [v105 hasEntitlement_];

  v178 = OBJC_IVAR____TtC11SessionCoreP33_F0FA238C64D38D6BA2E43F90C1B188B06Client_requester;
  v109 = v199;
  v108 = v200;
  v110 = v201;
  (*(v199 + 104))(v201, *MEMORY[0x277CB94E0], v200);
  v111 = v206;
  if (!*(v102 + 16) || (v112 = sub_22CEFF728(v110), v110 = v201, (v113 & 1) == 0))
  {
    v125 = v111;
    (*(v109 + 8))(v110, v108);
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v126 = sub_22D01637C();
    __swift_project_value_buffer(v126, qword_281444498);
    v127 = v202;

    v128 = sub_22D01636C();
    v129 = sub_22D01690C();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v214 = v131;
      *v130 = 136446210;
      *(v130 + 4) = sub_22CEEE31C(v179, v127, &v214);
      _os_log_impl(&dword_22CEE1000, v128, v129, "No lockscreen target specified for %{public}s", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v131);
      MEMORY[0x2318C6860](v131, -1, -1);
      MEMORY[0x2318C6860](v130, -1, -1);
    }

    (*(v205 + 104))(v125, *MEMORY[0x277CB93F0], v204);
    sub_22D0148EC();
    sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400]);
    swift_allocError();
    sub_22D0148DC();
    swift_willThrow();

    goto LABEL_35;
  }

  sub_22CEFE9C8(*(v102 + 56) + *(v196 + 72) * v112, v198, MEMORY[0x277CB9790]);
  (*(v109 + 8))(v110, v108);
  v177 = v102;
  if (v107)
  {
    v114 = v211;
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v115 = sub_22D01637C();
    __swift_project_value_buffer(v115, qword_281444498);
    v116 = v202;

    v117 = sub_22D01636C();
    v118 = sub_22D01690C();

    v119 = os_log_type_enabled(v117, v118);
    v120 = v178;
    if (v119)
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v214 = v122;
      *v121 = 136446210;
      *(v121 + 4) = sub_22CEEE31C(v179, v116, &v214);
      _os_log_impl(&dword_22CEE1000, v117, v118, "Bypassing authorization UI options for %{public}s", v121, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v122);
      MEMORY[0x2318C6860](v122, -1, -1);
      MEMORY[0x2318C6860](v121, -1, -1);
    }

    v123 = v203;
    v124 = v197;
    (*(v181 + 16))(v197, v218, v180);
  }

  else
  {
    v114 = v211;
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v132 = sub_22D01637C();
    __swift_project_value_buffer(v132, qword_281444498);
    v133 = v202;

    v134 = sub_22D01636C();
    v135 = sub_22D01690C();

    v136 = os_log_type_enabled(v134, v135);
    v120 = v178;
    if (v136)
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v214 = v138;
      *v137 = 136446210;
      *(v137 + 4) = sub_22CEEE31C(v179, v133, &v214);
      _os_log_impl(&dword_22CEE1000, v134, v135, "Applying authorization UI options for %{public}s", v137, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v138);
      MEMORY[0x2318C6860](v138, -1, -1);
      MEMORY[0x2318C6860](v137, -1, -1);
    }

    v123 = v203;
    v139 = *(v114 + 72);
    v124 = v197;
    sub_22CF079BC(v218, v198, v197);
  }

  v140 = *(v114 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2328, &qword_22D019B80);
  sub_22D01699C();
  if (!v214)
  {
    sub_22CEE83DC(&qword_2814439B0, MEMORY[0x277CB95E0]);
    v147 = v194;
    v148 = swift_allocError();
    v149 = v193;
    (*(v193 + 104))(v150, *MEMORY[0x277CB95D0], v147);
    swift_willThrow();
    v214 = v148;
    v151 = v148;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
    v152 = v192;
    if (!swift_dynamicCast())
    {
      sub_22CEFD694(v198, MEMORY[0x277CB9790]);
      (*(v181 + 8))(v124, v180);

      goto LABEL_36;
    }

    v153 = v186;
    (*(v149 + 32))(v186, v152, v147);
    v154 = *(v149 + 16);
    v155 = v187;
    v154(v187, v153, v147);
    v156 = (*(v149 + 88))(v155, v147);
    if (v156 == *MEMORY[0x277CB95D8])
    {
      (*(v149 + 96))(v155, v147);
      v157 = *(v155 + 1);

      v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2338, &unk_22D018960);
      v218 = *(v158 + 48);
      v159 = *&v155[*(v158 + 64) + 8];

      (*(v205 + 104))(v111, *MEMORY[0x277CB93E8], v204);
      sub_22CEE83DC(&qword_2814439B0, MEMORY[0x277CB95E0]);
      swift_allocError();
      v154(v160, v153, v147);
      sub_22D0148EC();
      sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400]);
      swift_allocError();
      sub_22D0148DC();
      swift_willThrow();
      (*(v149 + 8))(v153, v147);
      sub_22CEFD694(v198, MEMORY[0x277CB9790]);
      (*(v181 + 8))(v197, v180);
      sub_22CEEC3D8(&v155[v218], &qword_27D9F2340, &qword_22D01D0A0);
LABEL_47:

LABEL_59:

LABEL_35:

LABEL_36:

      goto LABEL_11;
    }

    if (v156 == *MEMORY[0x277CB95C8])
    {
      v168 = MEMORY[0x277CB93E8];
    }

    else
    {
      if (v156 != *MEMORY[0x277CB95D0])
      {
        v170 = *(v205 + 104);
        v171 = (v149 + 8);
        if (v156 == *MEMORY[0x277CB95C0])
        {
          v170(v111, *MEMORY[0x277CB93E0], v204);
          sub_22CEE83DC(&qword_2814439B0, MEMORY[0x277CB95E0]);
          swift_allocError();
          v154(v172, v153, v147);
          sub_22D0148EC();
          sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400]);
          swift_allocError();
          sub_22D0148DC();
          swift_willThrow();
          (*v171)(v153, v147);
          sub_22CEFD694(v198, MEMORY[0x277CB9790]);
          (*(v181 + 8))(v197, v180);
        }

        else
        {
          v170(v111, *MEMORY[0x277CB93F8], v204);
          sub_22CEE83DC(&qword_2814439B0, MEMORY[0x277CB95E0]);
          swift_allocError();
          v154(v173, v153, v147);
          sub_22D0148EC();
          sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400]);
          swift_allocError();
          sub_22D0148DC();
          swift_willThrow();
          v174 = *v171;
          (*v171)(v153, v147);
          sub_22CEFD694(v198, MEMORY[0x277CB9790]);
          (*(v181 + 8))(v197, v180);
          v174(v187, v147);
        }

        goto LABEL_47;
      }

      v168 = MEMORY[0x277CB93F0];
    }

    (*(v205 + 104))(v111, *v168, v204);
    sub_22CEE83DC(&qword_2814439B0, MEMORY[0x277CB95E0]);
    v218 = swift_allocError();
    v154(v169, v153, v147);
    sub_22D0148EC();
    sub_22CEE83DC(&unk_27D9F2318, MEMORY[0x277CB9400]);
    swift_allocError();
    sub_22D0148DC();
    swift_willThrow();
    (*(v149 + 8))(v153, v147);
    sub_22CEFD694(v198, MEMORY[0x277CB9790]);
    (*(v181 + 8))(v197, v180);

    goto LABEL_59;
  }

  v141 = v114;
  v142 = v215;
  ObjectType = swift_getObjectType();
  v144 = *(v142 + 16);
  v176 = v142;
  v175 = v141;
  v145 = v210;
  v146 = v195;
  v144(v124, v210 + v120, v179, v202, v209, v177, v123, v212, 0, v175, &off_28402A298, ObjectType, v176);
  swift_unknownObjectRelease();
  v161 = *(v146 + 1);
  v212 = *v146;
  v206 = v161;

  sub_22D014D7C();
  v162 = sub_22D014D4C();
  v204 = v163;
  v205 = v162;
  (*(v183 + 16))(v190, v145 + v120, v184);
  sub_22D014DBC();
  LODWORD(v201) = sub_22D014CFC();
  sub_22D014D1C();
  sub_22D014D0C();
  (*(v207 + 16))(v188, &v146[*(v182 + 28)], v208);
  sub_22D014D8C();
  sub_22D00811C();
  if (!v164)
  {
    sub_22CF1B538();
  }

  sub_22D0146FC();
  sub_22CEFD694(v195, type metadata accessor for ActivityState);
  sub_22CEFD694(v198, MEMORY[0x277CB9790]);
  (*(v181 + 8))(v124, v180);

  if ((sub_22D014CFC() & 1) == 0 && (sub_22D014D1C() & 1) == 0)
  {
    goto LABEL_11;
  }

  v165 = sub_22D01470C();
  v167 = v166;
  swift_beginAccess();
  sub_22CEE54CC(&v213, v165, v167);
  swift_endAccess();
  swift_unknownObjectRelease();
}
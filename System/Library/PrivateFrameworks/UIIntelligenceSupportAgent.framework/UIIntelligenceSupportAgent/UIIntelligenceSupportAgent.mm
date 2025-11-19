void sub_22BABC8A8(void *a1, uint64_t *a2)
{
  v110 = a2;
  v119 = *MEMORY[0x277D85DE8];
  v109 = type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0);
  v3 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v104 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BB1F49C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1F45C();
  v111 = *(v8 - 8);
  v112 = v8;
  v9 = *(v111 + 64);
  MEMORY[0x28223BE20](v8);
  v113 = (&v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v105 = &v93 - v12;
  v103 = type metadata accessor for ConnectionID();
  v106 = *(v103 - 8);
  v13 = *(v106 + 64);
  MEMORY[0x28223BE20](v103);
  v107 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v93 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v93 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v93 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v93 - v24;
  v26 = sub_22BB1EADC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = MEMORY[0x23189E090](a1, v29);
  if (v33 != sub_22BB1F46C())
  {
    sub_22BB1F42C();
    swift_unknownObjectRetain();
    v34 = sub_22BB1F44C();
    v35 = sub_22BB1F8BC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v117 = v37;
      *v36 = 136315138;
      v38 = [v32 description];
      v39 = sub_22BB1F68C();
      v41 = v40;

      v42 = sub_22BABDC4C(v39, v41, &v117);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_22BABB000, v34, v35, "xpc listener unexpected event type: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x23189DF20](v37, -1, -1);
      MEMORY[0x23189DF20](v36, -1, -1);
    }

    (*(v111 + 8))(v113, v112);
    goto LABEL_15;
  }

  v95 = v19;
  v96 = v22;
  v97 = v13;
  v98 = v16;
  v101 = v31;
  v99 = v27;
  v100 = v26;
  v113 = v32;
  v102 = v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    xpc_connection_cancel(v113);
LABEL_15:
    v88 = *MEMORY[0x277D85DE8];
    return;
  }

  v44 = Strong;
  v117 = 0u;
  v118 = 0u;
  xpc_connection_get_audit_token();
  v45 = sub_22BABD8F4(v117, *(&v117 + 1), v118, *(&v118 + 1));
  v46 = *(v44 + 48);
  MEMORY[0x28223BE20](v45);
  v47 = *(*v46 + *MEMORY[0x277D841D0] + 16);
  v48 = (*(*v46 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v46 + v48));
  v49 = v102;
  sub_22BABDA9C(v46 + v47, v102);
  v110 = 0;
  os_unfair_lock_unlock((v46 + v48));

  v50 = v105;
  sub_22BB1F42C();
  v51 = v96;
  sub_22BABDB9C(v49, v96, type metadata accessor for ConnectionID);
  v52 = sub_22BB1F44C();
  v53 = sub_22BB1F8CC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v116 = v94;
    *v54 = 136446210;
    v55 = v95;
    sub_22BABDB9C(v51, v95, type metadata accessor for ConnectionID);
    v115[0] = 0;
    v115[1] = 0xE000000000000000;
    sub_22BB1FB7C();

    strcpy(v115, "ConnectionID(");
    HIWORD(v115[1]) = -4864;
    v114 = *v55;
    v56 = sub_22BB1FD7C();
    MEMORY[0x23189D130](v56);

    MEMORY[0x23189D130](8236, 0xE200000000000000);
    v57 = *(v103 + 20);
    sub_22BABDC04(&unk_2814250C0, MEMORY[0x277D74708]);
    v58 = sub_22BB1FD7C();
    MEMORY[0x23189D130](v58);

    MEMORY[0x23189D130](41, 0xE100000000000000);
    v59 = v115[0];
    v60 = v115[1];
    sub_22BABDB3C(v55, type metadata accessor for ConnectionID);
    sub_22BABDB3C(v51, type metadata accessor for ConnectionID);
    v61 = sub_22BABDC4C(v59, v60, &v116);

    *(v54 + 4) = v61;
    _os_log_impl(&dword_22BABB000, v52, v53, "Accepting new connection %{public}s", v54, 0xCu);
    v62 = v94;
    __swift_destroy_boxed_opaque_existential_0(v94);
    MEMORY[0x23189DF20](v62, -1, -1);
    MEMORY[0x23189DF20](v54, -1, -1);
  }

  else
  {

    sub_22BABDB3C(v51, type metadata accessor for ConnectionID);
  }

  (*(v111 + 8))(v50, v112);
  v63 = v98;
  v64 = v97;
  v65 = v106;
  v111 = sub_22BB1F4CC();
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = v102;
  sub_22BABDB9C(v102, v63, type metadata accessor for ConnectionID);
  v68 = *(v65 + 80);
  v69 = v44;
  v70 = swift_allocObject();
  *(v70 + 16) = v66;
  sub_22BABE0FC(v63, v70 + ((v68 + 24) & ~v68), type metadata accessor for ConnectionID);
  v71 = swift_allocObject();
  v112 = v69;
  swift_weakInit();
  v72 = v107;
  sub_22BABDB9C(v67, v107, type metadata accessor for ConnectionID);
  v73 = (v68 + 16) & ~v68;
  v74 = swift_allocObject();
  sub_22BABE0FC(v72, v74 + v73, type metadata accessor for ConnectionID);
  *(v74 + ((v64 + v73 + 7) & 0xFFFFFFFFFFFFFFF8)) = v71;
  swift_unknownObjectRetain();

  sub_22BB1F48C();
  v75 = v110;
  v76 = sub_22BB1F47C();
  if (!v75)
  {
    v77 = v76;

    v79 = *(v112 + 48);
    MEMORY[0x28223BE20](v78);
    v80 = v102;
    v81 = *(*v79 + *MEMORY[0x277D841D0] + 16);
    v82 = (*(*v79 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v79 + v82));
    sub_22BABDE80((v79 + v81));
    os_unfair_lock_unlock((v79 + v82));

    v83 = swift_unknownObjectWeakLoadStrong();
    v84 = v109;
    if (v83)
    {
      v85 = v104;
      sub_22BABDB9C(v80, v104, type metadata accessor for ConnectionID);
      *(v85 + *(v84 + 20)) = v77;
      sub_22BABE558(v85);

      swift_unknownObjectRelease();
      sub_22BABDB3C(v85, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
    }

    else
    {
    }

    v86 = v100;
    v87 = v99;
    sub_22BABDB3C(v80, type metadata accessor for ConnectionID);
    (*(v87 + 8))(v101, v86);
    goto LABEL_15;
  }

  v115[0] = 0;
  v115[1] = 0xE000000000000000;
  sub_22BB1FB7C();
  MEMORY[0x23189D130](0xD00000000000002BLL, 0x800000022BB26AE0);
  v89 = sub_22BACBC28();
  MEMORY[0x23189D130](v89);

  MEMORY[0x23189D130](8250, 0xE200000000000000);
  swift_getErrorValue();
  v90 = sub_22BB1FDCC();
  MEMORY[0x23189D130](v90);

  MEMORY[0x23189D130](0xD000000000000014, 0x800000022BB26B10);
  v116 = v75;
  v91 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEE88, &qword_22BB20A20);
  v92 = sub_22BB1F6AC();
  MEMORY[0x23189D130](v92);

  sub_22BB1FBEC();
  __break(1u);
}

uint64_t sub_22BABD5A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BABD5D8()
{
  v1 = (type metadata accessor for ConnectionID() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v1[7];
  v7 = sub_22BB1EADC();
  (*(*(v7 - 8) + 8))(v6 + v3, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22BABD6C0()
{
  v1 = type metadata accessor for ConnectionID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + *(v1 + 20);
  v7 = sub_22BB1EADC();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);
  v8 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22BABD7B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_22BABD838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = type metadata accessor for IntelligenceSupportAgentXPCListener.State(0);
  v7 = *(result + 20);
  v8 = *(a1 + v7);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = *(type metadata accessor for ConnectionID() + 20);
    v11 = sub_22BB1EADC();
    (*(*(v11 - 8) + 16))(&a3[v10], a2, v11);
    *a3 = v9;
    return sub_22BABDAD8(a3, a1 + v7);
  }

  return result;
}

uint64_t sub_22BABD8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *atoken.val = a1;
  *&atoken.val[2] = a2;
  *&atoken.val[4] = a3;
  *&atoken.val[6] = a4;
  audit_token_to_pid(&atoken);
  *atoken.val = a1;
  *&atoken.val[2] = a2;
  *&atoken.val[4] = a3;
  *&atoken.val[6] = a4;
  audit_token_to_pidversion(&atoken);
  *atoken.val = a1;
  *&atoken.val[2] = a2;
  *&atoken.val[4] = a3;
  *&atoken.val[6] = a4;
  v8 = SecTaskCreateWithAuditToken(0, &atoken);
  if (v8)
  {
    v9 = v8;
    v10 = SecTaskCopySigningIdentifier(v8, 0);
    if (v10)
    {
      v11 = v10;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *atoken.val = 0;
        *&atoken.val[2] = 0;
        sub_22BB1F67C();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  *atoken.val = a1;
  *&atoken.val[2] = a2;
  *&atoken.val[4] = a3;
  *&atoken.val[6] = a4;
  v14 = 0;
  return sub_22BB1EA6C();
}

uint64_t type metadata accessor for ConnectionID()
{
  result = qword_281424A08;
  if (!qword_281424A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BABDA64(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BABDAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionID();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BABDB3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22BABDB9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BABDC04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BABDC4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22BABDD18(v11, 0, 0, 1, a1, a2);
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
    sub_22BABDE24(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_22BABDD18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22BABFDDC(a5, a6);
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
    result = sub_22BB1FBBC();
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

uint64_t sub_22BABDE24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22BABDE9C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{

  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_22BABDF10(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

uint64_t sub_22BABDF10(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *(*(type metadata accessor for ConnectionID() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_22BABE164(a2);
  v14 = *(v11 + 16);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v11 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_22BAEB3D8();
      goto LABEL_7;
    }

    sub_22BAE856C(v16, a3 & 1);
    v23 = *v4;
    v24 = sub_22BABE164(a2);
    if ((v17 & 1) == (v25 & 1))
    {
      v13 = v24;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22BABE3D4(a2, v10, type metadata accessor for ConnectionID);
      return sub_22BABE4A4(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_22BB1FDBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = *(v20 + 8 * v13);
  *(v20 + 8 * v13) = a1;
}

uint64_t sub_22BABE0B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BABE0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22BABE164(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_22BB1FDDC();
  MEMORY[0x23189D810](*a1);
  v4 = *(type metadata accessor for ConnectionID() + 20);
  sub_22BB1EADC();
  sub_22BABE0B4(&qword_2814250E0, MEMORY[0x277D74708]);
  sub_22BB1F62C();
  v5 = sub_22BB1FE0C();

  return sub_22BABE230(a1, v5);
}

unint64_t sub_22BABE230(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for ConnectionID();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = *(v7 + 72);
    do
    {
      sub_22BABED78(*(v2 + 48) + v14 * v11, v9, type metadata accessor for ConnectionID);
      if (*v9 == v13)
      {
        v15 = *(v5 + 20);
        v16 = sub_22BB1EAAC();
        sub_22BABEDE0(v9, type metadata accessor for ConnectionID);
        if (v16)
        {
          return v11;
        }
      }

      else
      {
        sub_22BABEDE0(v9, type metadata accessor for ConnectionID);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_22BABE3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BABE43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BABE4A4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ConnectionID();
  result = sub_22BABE43C(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ConnectionID);
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

uint64_t sub_22BABE558(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BB1F11C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConnectionID();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BABE90C(a1, v13, type metadata accessor for ConnectionID);
  v14 = *(v10 + 28);
  LODWORD(v10) = sub_22BB1EABC();
  v15 = sub_22BB1EADC();
  (*(*(v15 - 8) + 8))(&v13[v14], v15);
  result = getpid();
  if (v10 != result)
  {
    v17 = *(v2 + 24);
    MEMORY[0x28223BE20](result);
    v30[-2] = a1;
    os_unfair_lock_lock((v17 + 40));
    sub_22BABE8A4((v17 + 16), &v34);
    os_unfair_lock_unlock((v17 + 40));
    v18 = *(v34 + 2);
    if (v18)
    {
      v19 = *(v2 + 16);
      v21 = *(v5 + 16);
      v20 = v5 + 16;
      v22 = *(v20 + 64);
      v30[1] = v34;
      v23 = &v34[(v22 + 32) & ~v22];
      v32 = *(v20 + 56);
      v33 = v21;
      v24 = (v20 - 8);
      v31 = xmmword_22BB20A70;
      do
      {
        v33(v8, v23, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF100, &qword_22BB212C0);
        v25 = v20;
        v26 = *(type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0) - 8);
        v27 = *(v26 + 72);
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = v31;
        sub_22BABE90C(a1, v29 + v28, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
        sub_22BACBF04(v29, v8);
        swift_setDeallocating();
        sub_22BAC1514(v29 + v28, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
        v20 = v25;
        swift_deallocClassInstance();
        (*v24)(v8, v4);
        v23 += v32;
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22BABE90C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BABE974@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v45 = a3;
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF108, &qword_22BB212C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  v51 = sub_22BB1F11C();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = &v38 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
  v13 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v15 = &v38 - v14;
  v48 = a1[8];
  v16 = *a1;
  v17 = *a1 + 64;
  v18 = 1 << *(*a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(*a1 + 64);
  v21 = (v18 + 63) >> 6;
  v47 = (v8 + 48);
  v41 = v8;
  v42 = (v8 + 32);

  v23 = 0;
  v46 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v23;
    if (!v20)
    {
      break;
    }

LABEL_8:
    v25 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v26 = v25 | (v23 << 6);
    v27 = *(v16 + 48);
    v28 = sub_22BB1F2EC();
    (*(*(v28 - 8) + 16))(v15, v27 + *(*(v28 - 8) + 72) * v26, v28);
    v29 = *(*(v16 + 56) + 8 * v26);
    *&v15[*(v49 + 48)] = v29;

    sub_22BAE4198(v15, v29, v50, v48, v7);
    sub_22BAC81E8(v15, &qword_27D8DEFE0, &qword_22BB211E8);
    if ((*v47)(v7, 1, v51) == 1)
    {
      result = sub_22BAC81E8(v7, &qword_27D8DF108, &qword_22BB212C8);
    }

    else
    {
      v40 = *v42;
      v30 = v51;
      v40(v43, v7, v51);
      v31 = v30;
      v32 = v40;
      v40(v44, v43, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_22BAF60EC(0, *(v46 + 2) + 1, 1, v46);
      }

      v34 = *(v46 + 2);
      v33 = *(v46 + 3);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v39 = v34 + 1;
        v37 = sub_22BAF60EC(v33 > 1, v34 + 1, 1, v46);
        v35 = v39;
        v46 = v37;
      }

      v36 = v46;
      *(v46 + 2) = v35;
      result = v32(&v36[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v34], v44, v51);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      *v45 = v46;
      return result;
    }

    v20 = *(v17 + 8 * v23);
    ++v24;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BABED78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22BABEDE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22BABEE40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

void sub_22BABEEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(_s17AsyncProviderTaskVMa() - 8) + 80);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];

  sub_22BABEFBC(a1, a2, a3, v8, v9, v10, v11);
}

uint64_t _s17AsyncProviderTaskVMa()
{
  result = qword_281424780;
  if (!qword_281424780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22BABEFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  os_unfair_lock_lock((a4 + 24));
  sub_22BABF8B4((a4 + 16), v101);
  os_unfair_lock_unlock((a4 + 24));
  if (!v101[0])
  {
    return;
  }

  v89 = v101[0];
  v8 = [v101[0] elements];
  sub_22BAC83C0(0, &qword_2814240A8, 0x277D0AD00);
  sub_22BB1F7DC();

  v101[0] = sub_22BAC8408(v9);
  sub_22BAC8760(v101);

  v10 = v101[0];
  LODWORD(v11) = v101[0] < 0 || (v101[0] & 0x4000000000000000) != 0;
  if (v11 == 1)
  {
LABEL_95:
    v12 = sub_22BB1FADC();
  }

  else
  {
    v12 = *(v101[0] + 2);
  }

  v13 = MEMORY[0x277D84F90];
  v97 = v10;
  if (!v12)
  {
    v58 = MEMORY[0x277D84F90];
    if (!v11)
    {
      goto LABEL_53;
    }

LABEL_51:
    v11 = sub_22BB1FADC();
LABEL_54:
    v60 = 0;
    if (v11)
    {
      v61 = 0;
      v62 = v10 & 0xC000000000000001;
      v100 = *MEMORY[0x277D0ABC0];
      v96 = *MEMORY[0x277D66F18];
      v63 = *MEMORY[0x277D66F50];
      while (2)
      {
        v64 = v61;
        while (1)
        {
          if (v62)
          {
            v65 = MEMORY[0x23189D5B0](v64, v10);
          }

          else
          {
            if (v64 >= *(v10 + 16))
            {
              goto LABEL_94;
            }

            v65 = *(v10 + 8 * v64 + 32);
          }

          v66 = v65;
          v61 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          v67 = [v65 layoutRole];
          if (v67 == 4)
          {
            break;
          }

          if (v67 == 3)
          {
            v68 = v58;
            v69 = [v66 identifier];
            v70 = sub_22BB1F68C();
            v72 = v71;

            if (sub_22BB1F68C() == v70 && v73 == v72)
            {
            }

            else
            {
              v81 = sub_22BB1FD9C();

              if ((v81 & 1) == 0)
              {
                v60 = 3;
                goto LABEL_84;
              }
            }

            goto LABEL_82;
          }

          ++v64;
          if (v61 == v11)
          {
            goto LABEL_89;
          }
        }

        v68 = v58;
        v74 = [v66 identifier];
        v75 = sub_22BB1F68C();
        v77 = v76;

        if (sub_22BB1F68C() == v75 && v78 == v77)
        {

          goto LABEL_82;
        }

        v80 = sub_22BB1FD9C();

        if (v80)
        {
          goto LABEL_81;
        }

        if (sub_22BB1F68C() == v75 && v82 == v77)
        {

LABEL_81:

          v10 = v97;
          goto LABEL_82;
        }

        v83 = sub_22BB1FD9C();

        v10 = v97;
        if (v83)
        {
LABEL_82:
          if ((v60 & 0xFE) == 0)
          {
            v60 = 1;
          }

          goto LABEL_84;
        }

        if (v60 <= 2u)
        {
          v60 = 2;
        }

LABEL_84:
        v58 = v68;
        if (v61 != v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_89:

    v85 = *(a7 + 24);
    MEMORY[0x28223BE20](v84);
    os_unfair_lock_lock(v85 + 20);
    sub_22BAC2634(&v85[4]);
    os_unfair_lock_unlock(v85 + 20);

    if (qword_281424D70 != -1)
    {
      v86 = swift_once();
    }

    v87 = *(qword_281425148 + 24);
    MEMORY[0x28223BE20](v86);
    os_unfair_lock_lock((v87 + 40));
    sub_22BACB55C((v87 + 16));
    os_unfair_lock_unlock((v87 + 40));

    return;
  }

  v101[0] = MEMORY[0x277D84F90];
  v14 = v12 & ~(v12 >> 63);
  sub_22BAC8968(0, v14, 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v88 = v11;
    v15 = 0;
    v16 = v101[0];
    v98 = v10 & 0xC000000000000001;
    v99 = v12;
    do
    {
      if (v98)
      {
        v17 = MEMORY[0x23189D5B0](v15, v10);
      }

      else
      {
        v17 = *(v10 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 identifier];
      v20 = sub_22BB1F68C();
      v22 = v21;

      v101[0] = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        sub_22BAC8968((v23 > 1), v24 + 1, 1);
        v16 = v101[0];
      }

      ++v15;
      v16[2] = v24 + 1;
      v25 = &v16[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
    }

    while (v99 != v15);
    v101[0] = v13;
    sub_22BAC2614(0, v14, 0);
    v26 = 0;
    v27 = v101[0];
    v93 = *MEMORY[0x277D0ABC0];
    v90 = *MEMORY[0x277D66F18];
    v92 = *MEMORY[0x277D66F50];
    v95 = v16;
    while (1)
    {
      if (v98)
      {
        v28 = MEMORY[0x23189D5B0](v26, v10);
      }

      else
      {
        v28 = *(v10 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = [v28 identifier];
      v31 = sub_22BB1F68C();
      v33 = v32;

      v34 = [v29 bundleIdentifier];
      if (v34)
      {
        v35 = v34;
        v36 = sub_22BB1F68C();
        v38 = v37;
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      v39 = [v29 layoutRole];
      if (v39 != 4)
      {
        if (v39 == 3)
        {
          v40 = v27;
          v41 = [v29 identifier];
          v42 = sub_22BB1F68C();
          v44 = v43;

          if (sub_22BB1F68C() == v42 && v45 == v44)
          {

            v46 = 1;
            v27 = v40;
          }

          else
          {
            v52 = sub_22BB1FD9C();

            if (v52)
            {
              v46 = 1;
            }

            else
            {
              v46 = 3;
            }

            v27 = v40;
          }
        }

        else
        {

          v46 = 0;
        }

        goto LABEL_43;
      }

      v94 = v27;
      v47 = [v29 identifier];
      v48 = sub_22BB1F68C();
      v50 = v49;

      if (sub_22BB1F68C() == v48 && v51 == v50)
      {
      }

      else
      {
        v53 = sub_22BB1FD9C();

        if ((v53 & 1) == 0)
        {
          if (sub_22BB1F68C() != v48 || v54 != v50)
          {
            v59 = sub_22BB1FD9C();

            if (v59)
            {
              v46 = 1;
            }

            else
            {
              v46 = 2;
            }

            goto LABEL_42;
          }
        }
      }

      v46 = 1;
LABEL_42:
      v27 = v94;
LABEL_43:
      v101[0] = v27;
      v56 = v27[2];
      v55 = v27[3];
      if (v56 >= v55 >> 1)
      {
        sub_22BAC2614((v55 > 1), v56 + 1, 1);
        v27 = v101[0];
      }

      ++v26;
      v27[2] = v56 + 1;
      v57 = &v27[5 * v56];
      v57[4] = v31;
      v57[5] = v33;
      v57[6] = v36;
      v57[7] = v38;
      *(v57 + 64) = v46;
      v58 = v95;
      v10 = v97;
      if (v99 == v26)
      {
        if (v88)
        {
          goto LABEL_51;
        }

LABEL_53:
        v11 = *(v10 + 16);
        goto LABEL_54;
      }
    }
  }

  __break(1u);

  __break(1u);
}

void sub_22BABF8D4(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v31 = a5;
  v10 = sub_22BB1F45C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (v15 = *a1) != 0)
  {
    v16 = a2;
    [v15 invalidate];

    *a1 = 0;
  }

  else
  {
    v30 = v5;
    sub_22BB1F43C();
    v17 = a2;
    sub_22BABFC10(a3, a4);
    v18 = sub_22BB1F44C();
    v19 = sub_22BB1F8BC();

    sub_22BABFC24(a3, a4);
    if (os_log_type_enabled(v18, v19))
    {
      v29 = v19;
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v20 = 136446466;
      if (a2)
      {
        v21 = 0xD000000000000011;
      }

      else
      {
        v21 = 0x20676E697373696DLL;
      }

      if (a2)
      {
        v22 = 0x800000022BB27250;
      }

      else
      {
        v22 = 0xEE0074756F79616CLL;
      }

      v23 = sub_22BABDC4C(v21, v22, &v34);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      if (a4 == 1)
      {
        v24 = 0xE400000000000000;
        v25 = 1852399981;
      }

      else
      {
        v32 = 0;
        v33 = 0xE000000000000000;

        sub_22BB1FB7C();

        v32 = 0xD000000000000015;
        v33 = 0x800000022BB27230;
        if (!a4)
        {
          sub_22BABFC24(a3, 0);
          a4 = 0xE300000000000000;
          a3 = 7104878;
        }

        MEMORY[0x23189D130](a3, a4);

        MEMORY[0x23189D130](41, 0xE100000000000000);
        v25 = v32;
        v24 = v33;
      }

      v26 = sub_22BABDC4C(v25, v24, &v34);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_22BABB000, v18, v29, "ignoring FBSDisplayLayoutMonitor layout update due to %{public}s for window list fetch for display: %{public}s", v20, 0x16u);
      v27 = v28;
      swift_arrayDestroy();
      MEMORY[0x23189DF20](v27, -1, -1);
      MEMORY[0x23189DF20](v20, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    a2 = 0;
  }

  *v31 = a2;
}

uint64_t sub_22BABFC10(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_22BABFC24(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *sub_22BABFC38(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD0, &qword_22BB211D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22BABFCAC(uint64_t a1, unint64_t a2)
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

  v6 = sub_22BABFC38(v5, 0);
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

  result = sub_22BB1FBBC();
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
        v10 = sub_22BB1F71C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22BABFC38(v10, 0);
        result = sub_22BB1FB6C();
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

uint64_t sub_22BABFDDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_22BABFCAC(a1, a2);
  sub_22BAC1428(&unk_283F6B1A8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

double sub_22BABFE2C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v97 = a1;
  v104 = a2;
  v88 = sub_22BB1F3BC();
  v87 = *(v88 - 8);
  v2 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22BB1F35C();
  v94 = *(v90 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x28223BE20](v90);
  v96 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22BB1F3AC();
  v95 = *(v93 - 8);
  v6 = *(v95 + 64);
  MEMORY[0x28223BE20](v93);
  v100 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22BB1EADC();
  v91 = *(v92 - 8);
  v8 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BB1E64C();
  v98 = *(v10 - 8);
  v99 = v10;
  v11 = *(v98 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BB1F45C();
  v102 = *(v14 - 8);
  v103 = v14;
  v15 = *(v102 + 64);
  MEMORY[0x28223BE20](v14);
  v101 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v84 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - v21;
  v23 = sub_22BB1E65C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v84 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v84 - v32;
  sub_22BABDC04(&unk_281425118, MEMORY[0x277D744C8]);
  sub_22BB1F4EC();
  v101 = v13;
  (*(v24 + 32))(v33, v30, v23);
  v34 = *(v24 + 16);
  v85 = v33;
  v34(v27, v33, v23);
  v35 = (*(v24 + 88))(v27, v23);
  v36 = v24;
  v37 = v23;
  if (v35 == *MEMORY[0x277D744C0])
  {
    v38 = *(v24 + 96);
    v103 = v23;
    v38(v27, v23);
    (*(v98 + 32))(v101, v27, v99);
    v39 = sub_22BB1F4DC();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = sub_22BB1E63C();
    v47 = sub_22BB1E62C();
    v48 = v39;
    v49 = v89;
    v50 = sub_22BABD8F4(v48, v41, v43, v45);
    MEMORY[0x28223BE20](v50);
    *(&v84 - 2) = v49;
    v51 = sub_22BADE400(sub_22BADEB00, (&v84 - 4), v46);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_22BAE4E6C(v97, v51, v47);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v59 = v90;
    v61 = v93;
    v60 = v94;
    v63 = v95;
    v62 = v96;
    v64 = v92;
    v65 = v91;

    (*(v65 + 8))(v49, v64);
    sub_22BB1F37C();
    sub_22BB1E61C();
    v66 = sub_22BB1F39C();
    sub_22BB1F3EC();
    v67 = sub_22BB1F9AC();
    v68 = v24;
    if (sub_22BB1FA0C())
    {

      v69 = v86;
      sub_22BB1F3FC();

      v70 = v87;
      v71 = v88;
      if ((*(v87 + 88))(v69, v88) == *MEMORY[0x277D85B00])
      {
        v72 = "[Error] Interval already ended";
      }

      else
      {
        (*(v70 + 8))(v69, v71);
        v72 = "";
      }

      v79 = swift_slowAlloc();
      *v79 = 0;
      v80 = v96;
      v81 = sub_22BB1F34C();
      v82 = v72;
      v62 = v80;
      _os_signpost_emit_with_name_impl(&dword_22BABB000, v66, v67, v81, "TransferFragments", v82, v79, 2u);
      MEMORY[0x23189DF20](v79, -1, -1);
      v68 = v24;
      v63 = v95;
    }

    (*(v60 + 8))(v62, v59);
    (*(v63 + 8))(v100, v61);
    (*(v98 + 8))(v101, v99);
    (*(v68 + 8))(v85, v103);
    goto LABEL_22;
  }

  if (v35 == *MEMORY[0x277D744B0])
  {
    sub_22BAC0B20(v97);
    (*(v24 + 8))(v85, v23);
LABEL_22:
    v83 = v104;
    *(v104 + 32) = 0;
    result = 0.0;
    *v83 = 0u;
    v83[1] = 0u;
    return result;
  }

  v52 = v85;
  if (v35 == *MEMORY[0x277D744B8])
  {
    sub_22BB1F42C();
    v53 = sub_22BB1F44C();
    v54 = sub_22BB1F8CC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_22BABB000, v53, v54, "Received launch sentinel", v55, 2u);
      v56 = v55;
      v37 = v23;
      MEMORY[0x23189DF20](v56, -1, -1);
    }

    (*(v102 + 8))(v22, v103);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v58 = *(Strong + 24);
      os_unfair_lock_lock((v58 + 40));
      sub_22BAE3B70((v58 + 16));
      os_unfair_lock_unlock((v58 + 40));
      (*(v36 + 8))(v52, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v36 + 8))(v52, v37);
    }

    goto LABEL_22;
  }

  sub_22BB1F42C();
  v73 = sub_22BB1F44C();
  v74 = sub_22BB1F8BC();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_22BABB000, v73, v74, "Unexpected message type", v75, 2u);
    MEMORY[0x23189DF20](v75, -1, -1);
  }

  (*(v102 + 8))(v19, v103);
  v76 = *(v36 + 8);
  v76(v52, v23);
  v77 = v104;
  *(v104 + 32) = 0;
  *v77 = 0u;
  v77[1] = 0u;
  v76(v27, v23);
  return result;
}

double sub_22BAC0A10@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConnectionID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_22BAC0A94(v5, a1);
}

double sub_22BAC0A94@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22BABFE2C(a1, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22BAC0B20(uint64_t a1)
{
  v37 = type metadata accessor for ConnectionID();
  v3 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v39 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v38 = &v36[-v6];
  MEMORY[0x28223BE20](v7);
  v9 = &v36[-v8];
  v10 = sub_22BB1F45C();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v40 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v36[-v14];
  v16 = sub_22BB1E5FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v36[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(v1 + 48);
  v43 = a1;
  v22 = *(*v21 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*v21 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v21 + v23));
  sub_22BAC140C((v21 + v22), v45);
  os_unfair_lock_unlock((v21 + v23));
  if (v45[0])
  {
    *v20 = getpid();
    (*(v17 + 104))(v20, *MEMORY[0x277D74478], v16);
    sub_22BABDC04(&qword_281425128, MEMORY[0x277D74480]);
    sub_22BB1F4AC();
    (*(v17 + 8))(v20, v16);
  }

  else
  {
    sub_22BB1F42C();
    sub_22BABDB9C(a1, v9, type metadata accessor for ConnectionID);
    v24 = sub_22BB1F44C();
    v25 = sub_22BB1F8BC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46 = v27;
      *v26 = 136446210;
      v28 = v38;
      sub_22BABDB9C(v9, v38, type metadata accessor for ConnectionID);
      v45[0] = 0;
      v45[1] = 0xE000000000000000;
      sub_22BB1FB7C();

      strcpy(v45, "ConnectionID(");
      HIWORD(v45[1]) = -4864;
      v44 = *v28;
      v29 = sub_22BB1FD7C();
      MEMORY[0x23189D130](v29);

      MEMORY[0x23189D130](8236, 0xE200000000000000);
      v30 = *(v37 + 20);
      sub_22BB1EADC();
      sub_22BABDC04(&unk_2814250C0, MEMORY[0x277D74708]);
      v31 = sub_22BB1FD7C();
      MEMORY[0x23189D130](v31);

      MEMORY[0x23189D130](41, 0xE100000000000000);
      v32 = v45[0];
      v33 = v45[1];
      sub_22BABDB3C(v28, type metadata accessor for ConnectionID);
      sub_22BABDB3C(v9, type metadata accessor for ConnectionID);
      v34 = sub_22BABDC4C(v32, v33, &v46);

      *(v26 + 4) = v34;
      _os_log_impl(&dword_22BABB000, v24, v25, "missing session to send connection established message to client %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x23189DF20](v27, -1, -1);
      MEMORY[0x23189DF20](v26, -1, -1);
    }

    else
    {

      sub_22BABDB3C(v9, type metadata accessor for ConnectionID);
    }

    return (*(v41 + 8))(v15, v42);
  }
}

uint64_t sub_22BAC13A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v5 = sub_22BABE164(a2);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_22BAC1428(uint64_t result)
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

  result = sub_22BAE8448(result, v12, 1, v3);
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

uint64_t sub_22BAC1514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22BAC1574(uint64_t a1)
{
  v3 = *(type metadata accessor for ConnectionID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22BAC1610(a1, v1 + v4, v5);
}

uint64_t sub_22BAC1610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ConnectionID();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v30[-v10];
  v12 = sub_22BB1F45C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22BB1F42C();
  v35 = a2;
  sub_22BABDB9C(a2, v11, type metadata accessor for ConnectionID);
  v17 = sub_22BB1F44C();
  v18 = sub_22BB1F8CC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v19;
    v33 = swift_slowAlloc();
    v37 = v33;
    *v19 = 136446210;
    v34 = a3;
    sub_22BABDB9C(v11, v8, type metadata accessor for ConnectionID);
    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    v31 = v18;
    sub_22BB1FB7C();

    strcpy(v38, "ConnectionID(");
    HIWORD(v38[1]) = -4864;
    v36 = *v8;
    v20 = sub_22BB1FD7C();
    MEMORY[0x23189D130](v20);

    MEMORY[0x23189D130](8236, 0xE200000000000000);
    v21 = *(v5 + 20);
    sub_22BB1EADC();
    sub_22BABDC04(&unk_2814250C0, MEMORY[0x277D74708]);
    v22 = sub_22BB1FD7C();
    MEMORY[0x23189D130](v22);

    MEMORY[0x23189D130](41, 0xE100000000000000);
    v23 = v38[0];
    v24 = v38[1];
    sub_22BABDB3C(v8, type metadata accessor for ConnectionID);
    sub_22BABDB3C(v11, type metadata accessor for ConnectionID);
    v25 = sub_22BABDC4C(v23, v24, &v37);

    v26 = v32;
    *(v32 + 1) = v25;
    v27 = v26;
    _os_log_impl(&dword_22BABB000, v17, v31, "client %{public}s disconnected", v26, 0xCu);
    v28 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x23189DF20](v28, -1, -1);
    MEMORY[0x23189DF20](v27, -1, -1);
  }

  else
  {

    sub_22BABDB3C(v11, type metadata accessor for ConnectionID);
  }

  (*(v13 + 8))(v16, v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22BAC19F0();
  }

  return result;
}

uint64_t sub_22BAC19F0()
{
  v1 = *(v0 + 48);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_22BAC1BC0((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + 24);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock((v5 + 40));
    sub_22BAC1F1C((v5 + 16));
    os_unfair_lock_unlock((v5 + 40));
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22BAC1AF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = sub_22BABE164(a2);
  if (v5)
  {
    v6 = v4;
    v7 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v13 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22BAEB3D8();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ConnectionID();
    sub_22BABDB3C(v10 + *(*(v11 - 8) + 72) * v6, type metadata accessor for ConnectionID);
    v12 = *(*(v9 + 56) + 8 * v6);

    sub_22BAC1BDC(v6, v9);
    *a1 = v9;
  }
}

void sub_22BAC1BDC(int64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for ConnectionID();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v29);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_22BB1FAAC() + 1) & ~v9;
    v13 = *(v4 + 72);
    v28 = a2 + 64;
    do
    {
      v14 = v13;
      v15 = v13 * v10;
      sub_22BABE90C(*(a2 + 48) + v13 * v10, v7, type metadata accessor for ConnectionID);
      v16 = *(a2 + 40);
      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v7);
      v17 = *(v29 + 20);
      sub_22BB1EADC();
      sub_22BAC36FC(&qword_2814250E0, MEMORY[0x277D74708]);
      sub_22BB1F62C();
      v18 = sub_22BB1FE0C();
      sub_22BAC1514(v7, type metadata accessor for ConnectionID);
      v19 = v18 & v11;
      if (a1 >= v12)
      {
        if (v19 < v12)
        {
          v8 = v28;
          v13 = v14;
          goto LABEL_4;
        }

        v13 = v14;
        if (a1 >= v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v14;
        if (v19 >= v12 || a1 >= v19)
        {
LABEL_11:
          if (v13 * a1 < v15 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v15 + v13))
          {
            swift_arrayInitWithTakeFrontToBack();
            v8 = v28;
          }

          else
          {
            v20 = v13 * a1 == v15;
            v8 = v28;
            if (!v20)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v21 = *(a2 + 56);
          v22 = (v21 + 8 * a1);
          v23 = (v21 + 8 * v10);
          if (a1 != v10 || v22 >= v23 + 1)
          {
            *v22 = *v23;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v28;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

uint64_t sub_22BAC1F34(uint64_t *a1, void *a2)
{
  v62 = a2;
  v66 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD8, &qword_22BB211E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v7 = sub_22BB1F2EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v49 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
  v16 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v49 - v17;
  v18 = *a1;
  v19 = *a1 + 64;
  v20 = 1 << *(*a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(*a1 + 64);
  v23 = (v20 + 63) >> 6;
  v57 = v8 + 48;
  v63 = v8;
  v64 = v18;
  v53 = (v8 + 32);

  v25 = 0;
  v55 = MEMORY[0x277D84F90];
  v56 = v23;
  v58 = v19;
  v65 = v8 + 16;
  v60 = v6;
LABEL_4:
  v26 = v25;
  if (!v22)
  {
    goto LABEL_6;
  }

  do
  {
    v25 = v26;
LABEL_9:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = v27 | (v25 << 6);
    v29 = v63;
    v30 = v64;
    v31 = *(v63 + 72);
    v32 = v59;
    (*(v63 + 16))(v59, *(v64 + 48) + v31 * v28, v7);
    v33 = *(*(v30 + 56) + 8 * v28);
    *(v32 + *(v61 + 48)) = v33;

    v34 = v60;
    sub_22BAE48DC(v32, v33, v62, v60);
    sub_22BAC81E8(v32, &qword_27D8DEFE0, &qword_22BB211E8);
    if ((*(v29 + 48))(v34, 1, v7) != 1)
    {
      v35 = v52;
      v36 = *v53;
      (*v53)(v52, v34, v7);
      v36(v54, v35, v7);
      v37 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = sub_22BAF604C(0, v55[2] + 1, 1, v55);
      }

      v40 = v55[2];
      v39 = v55[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v50 = v55[2];
        v51 = v40 + 1;
        v43 = sub_22BAF604C(v39 > 1, v40 + 1, 1, v55);
        v40 = v50;
        v41 = v51;
        v55 = v43;
      }

      v42 = v55;
      v55[2] = v41;
      result = (v37)(v42 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + v40 * v31, v54, v7);
      v19 = v58;
      goto LABEL_4;
    }

    result = sub_22BAC81E8(v34, &qword_27D8DEFD8, &qword_22BB211E0);
    v26 = v25;
    v19 = v58;
    v23 = v56;
  }

  while (v22);
  while (1)
  {
LABEL_6:
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return result;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v25);
    ++v26;
    if (v22)
    {
      goto LABEL_9;
    }
  }

  v44 = v55[2];
  if (v44)
  {
    v45 = v55 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v46 = *(v63 + 72);
    v47 = *(v63 + 16);
    v48 = (v63 + 8);
    do
    {
      v47(v15, v45, v7);
      sub_22BACFB24(v15, 0);
      (*v48)(v15, v7);
      v45 += v46;
      --v44;
    }

    while (v44);
  }
}

void sub_22BAC23E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_22BB1FD6C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BAC83C0(0, &qword_2814240A8, 0x277D0AD00);
        v6 = sub_22BB1F80C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_22BAF1F44(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_22BAC87DC(0, v2, 1, a1);
  }
}

char *sub_22BAC24F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF568, &qword_22BB22800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22BAC2614(char *a1, int64_t a2, char a3)
{
  result = sub_22BAC24F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_22BAC265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(a1 + 16) = mach_continuous_time();
  *(a1 + 24) = 0;
  v12 = *(a1 + 32);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_22BAD05C0(0, v12[2] + 1, 1, v12);
  }

  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_22BAD05C0((v13 > 1), v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  v12[v14 + 4] = a2;
  *(a1 + 32) = v12;
  v15 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a1 + 40);
  sub_22BACE340(a5, a3, a4, isUniquelyReferenced_nonNull_native);
  *(a1 + 40) = v20;
  sub_22BABFC10(a3, a4);

  v17 = *(a1 + 48);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a1 + 48);
  sub_22BACEA6C(a6, a3, a4, v18);
  result = sub_22BABFC24(a3, a4);
  *(a1 + 48) = v21;
  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FE8000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v2 = MEMORY[0x277D84FA0];
  *(a1 + 40) = MEMORY[0x277D84FA0];
  *(a1 + 48) = v2;
  *(a1 + 56) = sub_22BB1EDAC() & 1;
  *(a1 + 57) = sub_22BB1ED6C() & 1;
  *(a1 + 58) = sub_22BB1EDDC() & 1;
  *(a1 + 64) = xmmword_22BB22080;
  *(a1 + 80) = xmmword_22BB22090;
  *(a1 + 96) = sub_22BB1EE2C() & 1;
  *(a1 + 104) = sub_22BB1EDFC();
  *(a1 + 112) = 0;
  *(a1 + 113) = sub_22BB1ED4C() & 1;
  *(a1 + 114) = sub_22BB1EDBC() & 1;
  *(a1 + 115) = sub_22BB1EE1C() & 1;
  v3 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  v4 = v3[19];
  sub_22BB1ECCC();
  v5 = sub_22BB1EC1C();
  (*(*(v5 - 8) + 56))(a1 + v4, 0, 1, v5);
  v6 = a1 + v3[20];
  sub_22BB1ECDC();
  v7 = a1 + v3[21];
  sub_22BB1ECEC();
  v8 = a1 + v3[22];
  sub_22BB1ECEC();
  v9 = v3[23];
  *(a1 + v9) = sub_22BB1EE0C();
  v10 = a1 + v3[24];
  sub_22BB1ECEC();
  v11 = a1 + v3[25];
  sub_22BB1ECEC();
  v12 = a1 + v3[26];
  sub_22BB1ECEC();
  v13 = v3[27];
  *(a1 + v13) = sub_22BB1EDCC() & 1;
  v14 = a1 + v3[28];
  sub_22BB1ECEC();
  v15 = v3[29];
  *(a1 + v15) = sub_22BB1EDEC() & 1;
  v16 = v3[30];
  *(a1 + v16) = sub_22BB1EE3C() & 1;
  v17 = a1 + v3[31];
  sub_22BB1ECEC();
  v18 = v3[32];
  *(a1 + v18) = sub_22BB1ED7C();
  v19 = sub_22BB1ED3C() & 1;
  v20 = sub_22BB1ED2C();
  v21 = v19 | 2;
  if ((v20 & 1) == 0)
  {
    v21 = v19;
  }

  *(a1 + v3[33]) = v21;
  v22 = a1 + v3[34];
  return sub_22BB1ECFC();
}

uint64_t type metadata accessor for IntelligenceSupportAgent.RequestParameters()
{
  result = qword_281424E70;
  if (!qword_281424E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntelligenceSupportAgent.RequestParameters.appIntentsRequest.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 76);

  return sub_22BAC2A3C(a1, v3);
}

uint64_t sub_22BAC2A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IntelligenceSupportAgent.RequestParameters.userActivities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() + 84);
  v4 = sub_22BB1EC5C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntelligenceSupportAgent.RequestParameters.requestedComponents.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  *(v1 + *(result + 132)) = v2;
  return result;
}

uint64_t sub_22BAC2C0C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_22BAE06D0;
  v7 = *(v0 + 16);

  return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000026, 0x800000022BB26BA0, sub_22BAC2F08, v4, &type metadata for IntelligenceSupportAgent.ElementHierarchy);
}

uint64_t sub_22BAC2D18(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DEFB8, &qword_22BB211C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16[-v11];
  v17 = a3;
  (*(v8 + 16))(&v16[-v11], a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  _s26UIIntelligenceSupportAgent012IntelligencebC0C21fetchElementHierarchy3for10parameters17completionHandleryAC6ClientO_AC17RequestParametersVyAC0fG0VctFZ_0(&v17, a4, sub_22BAEE618, v14);
}

uint64_t sub_22BAC2E74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DEFB8, &qword_22BB211C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t _s26UIIntelligenceSupportAgent012IntelligencebC0C21fetchElementHierarchy3for10parameters17completionHandleryAC6ClientO_AC17RequestParametersVyAC0fG0VctFZ_0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v7 = sub_22BB1F52C();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22BB1F56C();
  v11 = *(v28 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v28);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (qword_281425058 != -1)
  {
    swift_once();
  }

  v26[1] = qword_281425060;
  sub_22BABE90C(a2, v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v20 = (*(v16 + 80) + 17) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  sub_22BAC3614(v18, v22 + v20, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v23 = (v22 + v21);
  *v23 = v27;
  v23[1] = a4;
  aBlock[4] = sub_22BAC382C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BAC37D4;
  aBlock[3] = &block_descriptor_0;
  v24 = _Block_copy(aBlock);

  sub_22BB1F54C();
  v30 = MEMORY[0x277D84F90];
  sub_22BAC36FC(&qword_281424180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BB1FA8C();
  MEMORY[0x23189D350](0, v14, v10, v24);
  _Block_release(v24);
  (*(v29 + 8))(v10, v7);
  (*(v11 + 8))(v14, v28);
}

uint64_t sub_22BAC3308()
{
  v1 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 48);

  v10 = v1[19];
  v11 = sub_22BB1EC1C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v1[20];
  v15 = sub_22BB1EC9C();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = v1[21];
  v17 = sub_22BB1EC5C();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);
  v18 = v1[22];
  v19 = sub_22BB1EC7C();
  v20 = *(*(v19 - 8) + 8);
  v20(v5 + v18, v19);
  v21 = *(v5 + v1[23]);

  v20(v5 + v1[24], v19);
  v20(v5 + v1[25], v19);
  v20(v5 + v1[26], v19);
  v20(v5 + v1[28], v19);
  v22 = v1[31];
  v23 = sub_22BB1F0BC();
  (*(*(v23 - 8) + 8))(v5 + v22, v23);
  v24 = *(v5 + v1[32]);

  v25 = v1[34];
  v26 = sub_22BB1EE9C();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  v27 = *(v0 + v13 + 8);

  return MEMORY[0x2821FE8E8](v0, v13 + 16, v2 | 7);
}

uint64_t sub_22BAC3614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

uint64_t sub_22BAC36FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BAC3744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BAC378C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BAC37E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_22BAC382C()
{
  v1 = *(type metadata accessor for IntelligenceSupportAgent.RequestParameters() - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v0 + 16);

  return sub_22BAC38C0(v6, v0 + v2, v4, v5);
}

uint64_t sub_22BAC38C0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_281424D70 != -1)
  {
    v5 = a1;
    v6 = a2;
    v7 = a4;
    v8 = a3;
    swift_once();
    a1 = v5;
    a2 = v6;
    a3 = v8;
    a4 = v7;
  }

  v9 = a1;
  return sub_22BAC3954(&v9, a2, a3, a4);
}

uint64_t sub_22BAC3954(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v109 = a3;
  v110 = a4;
  v100 = sub_22BB1F2EC();
  v99 = *(v100 - 8);
  v6 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v97 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0);
  v103 = *(v8 - 8);
  v9 = *(v103 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for ConnectionID();
  v105 = *(v98 - 8);
  v12 = *(v105 + 64);
  MEMORY[0x28223BE20](v98);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BB1F11C();
  v111 = *(v15 - 8);
  v112 = v15;
  v16 = *(v111 + 64);
  MEMORY[0x28223BE20](v15);
  v104 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v115 = &v96 - v19;
  v20 = sub_22BB1F45C();
  v113 = *(v20 - 8);
  v114 = v20;
  v21 = *(v113 + 64);
  MEMORY[0x28223BE20](v20);
  v106 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v102 = &v96 - v24;
  MEMORY[0x28223BE20](v25);
  v101 = &v96 - v26;
  v27 = sub_22BB1EC7C();
  v28 = *(v27 - 8);
  v29 = v28[8];
  MEMORY[0x28223BE20](v27);
  v31 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v108 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v96 - v36;
  v107 = *a1;
  sub_22BABE90C(a2, &v96 - v36, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v38 = *(v32 + 104);
  v39 = v28[13];
  LODWORD(v118) = *MEMORY[0x277D74820];
  v117 = v39;
  v39(v31);
  sub_22BAC36FC(&qword_281425098, MEMORY[0x277D74850]);
  v120 = v37;
  v96 = v38;
  LOBYTE(v37) = sub_22BB1F65C();
  v116 = v28[1];
  v116(v31, v27);
  if (v37 & 1) == 0 && (sub_22BAEE72C())
  {
    sub_22BB1F43C();
    v40 = sub_22BB1F44C();
    v41 = sub_22BB1F8CC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = v41;
      v44 = v42;
      _os_log_impl(&dword_22BABB000, v40, v43, "Ignoring window snapshot request due to UI sensitive feature flags being enabled.", v42, 2u);
      MEMORY[0x23189DF20](v44, -1, -1);
    }

    (*(v113 + 8))(v101, v114);
    v45 = v120;
    v46 = v96;
    v116((v120 + v96), v27);
    (v117)(v45 + v46, v118, v27);
  }

  v47 = *(v32 + 112);
  (v117)(v31, v118, v27);
  v48 = sub_22BB1F65C();
  v116(v31, v27);
  if (v48 & 1) == 0 && (sub_22BAEE72C())
  {
    sub_22BB1F43C();
    v49 = sub_22BB1F44C();
    v50 = sub_22BB1F8CC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_22BABB000, v49, v50, "Ignoring screen snapshot request due to UI sensitive feature flags being enabled.", v51, 2u);
      MEMORY[0x23189DF20](v51, -1, -1);
    }

    (*(v113 + 8))(v102, v114);
    v52 = v120;
    v116((v120 + v47), v27);
    (v117)(v52 + v47, v118, v27);
  }

  v117 = *(v119 + 16);
  v53 = *(v117 + 6);
  v54 = *(*v53 + *MEMORY[0x277D841D0] + 16);
  v55 = (*(*v53 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v53 + v55));
  sub_22BAC457C((v53 + v54), v121);
  os_unfair_lock_unlock((v53 + v55));
  MEMORY[0x28223BE20](v56);
  *(&v96 - 2) = v120;
  sub_22BAC4C20(sub_22BAC50C4, (&v96 - 4), v57);
  v59 = *(v58 + 16);
  v60 = MEMORY[0x277D84F90];
  v118 = v58;
  if (v59)
  {
    v61 = v58;
    v121[0] = MEMORY[0x277D84F90];
    sub_22BAC53F4(0, v59, 0);
    v60 = v121[0];
    v62 = v61 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v63 = *(v103 + 72);
    v64 = v105;
    do
    {
      sub_22BABE90C(v62, v11, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      sub_22BABE90C(v11, v14, type metadata accessor for ConnectionID);
      sub_22BAC1514(v11, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      v121[0] = v60;
      v66 = *(v60 + 16);
      v65 = *(v60 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_22BAC53F4(v65 > 1, v66 + 1, 1);
        v64 = v105;
        v60 = v121[0];
      }

      *(v60 + 16) = v66 + 1;
      sub_22BAC3614(v14, v60 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v66, type metadata accessor for ConnectionID);
      v62 += v63;
      --v59;
    }

    while (v59);
  }

  v67 = v115;
  v68 = v119;
  v69 = *(v119 + 24);
  v70 = v108;
  v71 = sub_22BABE90C(v120, v108, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  MEMORY[0x28223BE20](v71);
  *(&v96 - 48) = v107;
  v73 = v109;
  v72 = v110;
  *(&v96 - 5) = v70;
  *(&v96 - 4) = v73;
  *(&v96 - 3) = v72;
  *(&v96 - 2) = v68;
  *(&v96 - 1) = v60;
  os_unfair_lock_lock(v69 + 10);
  sub_22BAC636C(&v69[4], v67);
  os_unfair_lock_unlock(v69 + 10);
  sub_22BAC1514(v70, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v75 = v111;
  v74 = v112;
  if (*(v60 + 16))
  {
    v76 = v106;
    sub_22BB1F43C();
    v77 = v104;
    (*(v75 + 16))(v104, v67, v74);

    v78 = sub_22BB1F44C();
    v79 = sub_22BB1F8CC();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      LODWORD(v119) = v79;
      v81 = v77;
      v82 = v80;
      v83 = swift_slowAlloc();
      v121[0] = v83;
      *v82 = 136446466;
      v84 = v97;
      sub_22BB1F0FC();
      v85 = sub_22BB1F2BC();
      v87 = v86;
      (*(v99 + 8))(v84, v100);
      v88 = *(v75 + 8);
      v88(v81, v74);
      v89 = sub_22BABDC4C(v85, v87, v121);

      *(v82 + 4) = v89;
      *(v82 + 12) = 2080;
      v90 = MEMORY[0x23189D210](v60, v98);
      v92 = v91;

      v93 = sub_22BABDC4C(v90, v92, v121);

      *(v82 + 14) = v93;
      _os_log_impl(&dword_22BABB000, v78, v119, "notifying clients for %{public}s: %s", v82, 0x16u);
      swift_arrayDestroy();
      v94 = v83;
      v67 = v115;
      MEMORY[0x23189DF20](v94, -1, -1);
      MEMORY[0x23189DF20](v82, -1, -1);

      (*(v113 + 8))(v106, v114);
    }

    else
    {

      v88 = *(v75 + 8);
      v88(v77, v74);
      (*(v113 + 8))(v76, v114);
    }

    sub_22BACBF04(v118, v67);

    v88(v67, v74);
  }

  else
  {
    (*(v111 + 8))(v67, v112);
  }

  return sub_22BAC1514(v120, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
}

void sub_22BAC457C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DEE90, &qword_22BB20A28);
  v5 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v46 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = v39 - v8;
  v9 = type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(*a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v39[0] = a2;
    v39[1] = v2;
    v50 = MEMORY[0x277D84F90];
    sub_22BAC4998(0, v14, 0);
    v48 = v50;
    v16 = v13 + 64;
    v17 = -1 << *(v13 + 32);
    v18 = sub_22BB1FA9C();
    v19 = 0;
    v49 = *(v13 + 36);
    v40 = v13 + 72;
    v41 = v14;
    v42 = v13 + 64;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v13 + 32))
    {
      v21 = v18 >> 6;
      if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_23;
      }

      if (v49 != *(v13 + 36))
      {
        goto LABEL_24;
      }

      v22 = *(v13 + 48);
      v23 = type metadata accessor for ConnectionID();
      v24 = v45;
      sub_22BABDB9C(v22 + *(*(v23 - 8) + 72) * v18, v45, type metadata accessor for ConnectionID);
      v25 = *(*(v13 + 56) + 8 * v18);
      v26 = v24;
      v27 = v46;
      sub_22BABE0FC(v26, v46, type metadata accessor for ConnectionID);
      *(v27 + *(v47 + 48)) = v25;
      sub_22BABDB9C(v27, v12, type metadata accessor for ConnectionID);
      *&v12[*(v44 + 20)] = v25;
      swift_retain_n();
      sub_22BAC4BB8(v27);
      v28 = v48;
      v50 = v48;
      v30 = *(v48 + 16);
      v29 = *(v48 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_22BAC4998(v29 > 1, v30 + 1, 1);
        v28 = v50;
      }

      *(v28 + 16) = v30 + 1;
      v31 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v48 = v28;
      sub_22BABE0FC(v12, v28 + v31 + *(v43 + 72) * v30, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      v20 = 1 << *(v13 + 32);
      if (v18 >= v20)
      {
        goto LABEL_25;
      }

      v16 = v42;
      v32 = *(v42 + 8 * v21);
      if ((v32 & (1 << v18)) == 0)
      {
        goto LABEL_26;
      }

      if (v49 != *(v13 + 36))
      {
        goto LABEL_27;
      }

      v33 = v32 & (-2 << (v18 & 0x3F));
      if (v33)
      {
        v20 = __clz(__rbit64(v33)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v21 << 6;
        v35 = v21 + 1;
        v36 = (v40 + 8 * v21);
        while (v35 < (v20 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_22BADEAF4(v18, v49, 0);
            v20 = __clz(__rbit64(v37)) + v34;
            goto LABEL_4;
          }
        }

        sub_22BADEAF4(v18, v49, 0);
      }

LABEL_4:
      ++v19;
      v18 = v20;
      if (v19 == v41)
      {
        a2 = v39[0];
        v15 = v48;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    *a2 = v15;
  }
}

size_t sub_22BAC4998(size_t a1, int64_t a2, char a3)
{
  result = sub_22BAC49DC(a1, a2, a3, *v3, &qword_27D8DF100, &qword_22BB212C0, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
  *v3 = result;
  return result;
}

size_t sub_22BAC49DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t sub_22BAC4BB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DEE90, &qword_22BB20A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22BAC4C20(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_22BABE90C(a3 + v15 + v16 * v13, v12, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      v17 = a1(v12);
      if (v3)
      {
        sub_22BAC1514(v12, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_22BAC3614(v12, v24, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BAC4998(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_22BAC4998(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_22BAC3614(v24, v14 + v15 + v20 * v16, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_22BAC1514(v12, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_22BAC4EAC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ConnectionID();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1EADC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BABE90C(a1, v8, type metadata accessor for ConnectionID);
  (*(v10 + 32))(v13, &v8[*(v5 + 28)], v9);
  if (sub_22BAC50E4(v13, a2[5]) & 1) != 0 || (v14 = sub_22BB1EA9C(), v15) && (v16 = sub_22BAC52FC(v14, v15, a2[6]), , (v16) || (v17 = a2[3]) != 0 && (sub_22BAC50E4(v13, v17) & 1) == 0)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v18 = a2[4];
    if (!v18 || (v19 = sub_22BB1EA9C(), !v20))
    {
      (*(v10 + 8))(v13, v9);
      return 1;
    }

    v21 = sub_22BAC52FC(v19, v20, v18);

    (*(v10 + 8))(v13, v9);
    if (v21)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22BAC50E4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB1EADC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_22BADBCE0(&qword_2814250E0, MEMORY[0x277D74708]), v9 = sub_22BB1F61C(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
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
      sub_22BADBCE0(&unk_2814250D0, MEMORY[0x277D74708]);
      v17 = sub_22BB1F65C();
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

uint64_t sub_22BAC52FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22BB1FDDC();
  sub_22BB1F6EC();
  v7 = sub_22BB1FE0C();
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
    if (v12 || (sub_22BB1FD9C() & 1) != 0)
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

size_t sub_22BAC53F4(size_t a1, int64_t a2, char a3)
{
  result = sub_22BAC49DC(a1, a2, a3, *v3, &qword_27D8DF110, &unk_22BB212D0, type metadata accessor for ConnectionID);
  *v3 = result;
  return result;
}

uint64_t sub_22BAC5438@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v139 = a7;
  v128 = a6;
  v137 = a5;
  v136 = a4;
  v121 = a2;
  v148 = a1;
  v140 = a8;
  v120 = sub_22BB1EC7C();
  v119 = *(v120 - 8);
  v9 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v118 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_22BB1F52C();
  v133 = *(v134 - 8);
  v11 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v131 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_22BB1F56C();
  v130 = *(v132 - 8);
  v13 = *(v130 + 64);
  MEMORY[0x28223BE20](v132);
  v129 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_22BB1F51C();
  v126 = *(v127 - 8);
  v15 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v125 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v124 = &v114 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v123 = &v114 - v21;
  v146 = sub_22BB1F5BC();
  v142 = *(v146 - 8);
  v22 = *(v142 + 64);
  MEMORY[0x28223BE20](v146);
  v149 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  v24 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v135 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v114 - v27;
  v29 = sub_22BB1F45C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22BB1F2EC();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v145 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v114 - v39;
  v122 = v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v114 - v43;
  sub_22BB1F2CC();
  sub_22BB1F41C();
  v150 = v44;
  v151 = v35;
  v143 = *(v35 + 16);
  v144 = v35 + 16;
  v143(v40, v44, v34);
  v147 = a3;
  sub_22BABE90C(a3, v28, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v45 = sub_22BB1F44C();
  v46 = sub_22BB1F8CC();
  v47 = os_log_type_enabled(v45, v46);
  v141 = v34;
  if (v47)
  {
    v115 = v30;
    v116 = v29;
    v48 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    aBlock[0] = v114;
    *v48 = 136446722;
    v49 = sub_22BB1F2BC();
    v51 = v50;
    v138 = *(v151 + 8);
    v138(v40, v34);
    v52 = sub_22BABDC4C(v49, v51, aBlock);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2082;
    v53 = 0x6E776F6E6B6E7528;
    v54 = 0x800000022BB26BF0;
    v55 = 0xD000000000000013;
    v56 = 0xE900000000000074;
    v57 = 0x6867696C746F7053;
    if (v121 != 3)
    {
      v57 = 0xD000000000000010;
      v56 = 0x800000022BB26BD0;
    }

    if (v121 != 2)
    {
      v55 = v57;
      v54 = v56;
    }

    v58 = 0xE400000000000000;
    if (v121)
    {
      v53 = 1769105747;
    }

    else
    {
      v58 = 0xE900000000000029;
    }

    if (v121 <= 1u)
    {
      v59 = v53;
    }

    else
    {
      v59 = v55;
    }

    if (v121 <= 1u)
    {
      v60 = v58;
    }

    else
    {
      v60 = v54;
    }

    v61 = sub_22BABDC4C(v59, v60, aBlock);

    *(v48 + 14) = v61;
    *(v48 + 22) = 2082;
    v62 = IntelligenceSupportAgent.RequestParameters.description.getter();
    v64 = v63;
    sub_22BAC1514(v28, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
    v65 = sub_22BABDC4C(v62, v64, aBlock);

    *(v48 + 24) = v65;
    _os_log_impl(&dword_22BABB000, v45, v46, "starting %{public}s for client %{public}s: %{public}s", v48, 0x20u);
    v66 = v114;
    swift_arrayDestroy();
    MEMORY[0x23189DF20](v66, -1, -1);
    MEMORY[0x23189DF20](v48, -1, -1);

    (*(v115 + 8))(v33, v116);
    v67 = v141;
  }

  else
  {

    sub_22BAC1514(v28, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
    v138 = *(v151 + 8);
    v138(v40, v34);
    (*(v30 + 8))(v33, v29);
    v67 = v34;
  }

  v68 = v145;
  v69 = v150;
  v143(v145, v150, v67);
  v70 = v147;
  v71 = v135;
  sub_22BABE90C(v147, v135, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  active = type metadata accessor for IntelligenceSupportAgent.ActiveRequest();
  v73 = *(active + 48);
  v74 = *(active + 52);
  swift_allocObject();
  v75 = v137;

  v76 = sub_22BAE0D84(v68, v71, v136, v75);
  v77 = v76;
  v78 = v148;
  v79 = v146;
  if (*(v76 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timeoutTimer))
  {
    if (*(v70 + 16))
    {
      v80 = v142;
      v81 = v123;
      (*(v142 + 56))(v123, 1, 1, v146);
      v82 = *v70;
      swift_unknownObjectRetain();
      sub_22BB1F5DC();
      if ((*(v80 + 48))(v81, 1, v79) != 1)
      {
        sub_22BAC81E8(v81, &qword_27D8DF040, &unk_22BB21230);
      }
    }

    else
    {
      v83 = *(v70 + 8);
      v84 = *(v76 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timeoutTimer);
      swift_unknownObjectRetain();
      v85 = v123;
      sub_22BB1F57C();
      v86 = v142;
      (*(v142 + 56))(v85, 0, 1, v79);
      (*(v86 + 32))(v149, v85, v79);
    }

    ObjectType = swift_getObjectType();
    v88 = v126;
    v89 = *(v126 + 104);
    v90 = v124;
    v91 = v127;
    v89(v124, *MEMORY[0x277D85180], v127);
    v92 = v125;
    *v125 = 0;
    v89(v92, *MEMORY[0x277D85168], v91);
    MEMORY[0x23189D3F0](v149, v90, v92, ObjectType);
    v93 = *(v88 + 8);
    v93(v92, v91);
    v93(v90, v91);
    v94 = swift_allocObject();
    swift_weakInit();
    v95 = v145;
    v67 = v141;
    v143(v145, v150, v141);
    v96 = v151;
    v97 = (*(v151 + 80) + 24) & ~*(v151 + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = v94;
    (*(v96 + 32))(v98 + v97, v95, v67);
    aBlock[4] = sub_22BAEED44;
    aBlock[5] = v98;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22BAC37D4;
    aBlock[3] = &block_descriptor_47;
    v99 = _Block_copy(aBlock);

    v100 = v129;
    sub_22BB1F54C();
    v101 = v131;
    sub_22BAE3564();
    sub_22BB1F97C();
    _Block_release(v99);
    (*(v133 + 8))(v101, v134);
    v102 = v100;
    v69 = v150;
    (*(v130 + 8))(v102, v132);

    sub_22BB1F99C();
    swift_unknownObjectRelease();
    (*(v142 + 8))(v149, v146);
    v70 = v147;
    v78 = v148;
  }

  v103 = *v78;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *v78;
  sub_22BB0ED68(v77, v69, isUniquelyReferenced_nonNull_native);
  *v78 = aBlock[0];
  sub_22BACAF88(v139);
  if (*(v78 + 8))
  {
    goto LABEL_24;
  }

  v105 = *(v70 + 24);
  if (!v105)
  {
    goto LABEL_28;
  }

  if (!*(v105 + 16) && (v106 = *(v117 + 112), v107 = v119, v108 = v118, v109 = v120, (*(v119 + 104))(v118, *MEMORY[0x277D74848], v120), LOBYTE(v106) = sub_22BB1EC4C(), (*(v107 + 8))(v108, v109), (v106 & 1) != 0))
  {
LABEL_24:
    *(v77 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_doneAddingPendingClients) = 1;
  }

  else
  {
LABEL_28:
    sub_22BAE1358();
  }

  v110 = *(sub_22BACB200(0) + 2);

  if (!v110)
  {
    sub_22BACFB24(v69, 0);
  }

  v138(v69, v67);
  v111 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request;
  v112 = sub_22BB1F11C();
  (*(*(v112 - 8) + 16))(v140, v77 + v111, v112);
}

uint64_t sub_22BAC6270()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BAC62A8()
{
  v1 = sub_22BB1F2EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t IntelligenceSupportAgent.RequestParameters.description.getter()
{
  v236 = sub_22BB1F31C();
  v230 = *(v236 - 8);
  v1 = *(v230 + 64);
  MEMORY[0x28223BE20](v236);
  v235 = &v228 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v228 - v5;
  v7 = sub_22BB1EC1C();
  v234 = *(v7 - 8);
  v8 = *(v234 + 64);
  MEMORY[0x28223BE20](v7);
  v233 = &v228 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF040, &unk_22BB21230);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v228 - v12;
  LOBYTE(v12) = *(v0 + 16);
  v14 = MEMORY[0x277D839F8];
  v15 = MEMORY[0x277D83A80];
  v231 = v0;
  if (v12)
  {
    v16 = sub_22BB1F5BC();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  else
  {
    v19 = v0[1];
    sub_22BB1F57C();
    v20 = sub_22BB1F5BC();
    (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
  }

  sub_22BAC81E8(v13, &qword_27D8DF040, &unk_22BB21230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF4B0, &qword_22BB22100);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22BB20A70;
  v18 = *v0;
  *(v17 + 56) = v14;
  *(v17 + 64) = v15;
  *(v17 + 32) = v18;
  v21 = sub_22BB1F69C();
  v23 = v22;
  v24 = sub_22BACE678(0, 1, 1, MEMORY[0x277D84F90]);
  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  v27 = v24;
  if (v26 >= v25 >> 1)
  {
    v27 = sub_22BACE678((v25 > 1), v26 + 1, 1, v24);
  }

  *(v27 + 2) = v26 + 1;
  v28 = &v27[16 * v26];
  *(v28 + 4) = v21;
  *(v28 + 5) = v23;
  v29 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  v30 = *(v29 + 132);
  v31 = v231;
  v32 = *(v231 + v30);
  if (qword_281424E88 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v29, qword_281424E90);
  v232 = v29;
  v34 = *(v29 + 132);
  v237 = v33;
  if (v32 != *(v33 + v34))
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD000000000000015;
    *(&v238[0] + 1) = 0x800000022BB27580;
    *&v239 = *(v31 + v30);
    v35 = IntelligenceSupportAgent.RequestParameters.Components.description.getter();
    MEMORY[0x23189D130](v35);

    v36 = v238[0];
    v37 = v27;
    v39 = *(v27 + 2);
    v38 = *(v27 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_22BACE678((v38 > 1), v39 + 1, 1, v27);
    }

    *(v37 + 2) = v39 + 1;
    v27 = v37;
    *&v37[16 * v39 + 32] = v36;
  }

  if (v31[3])
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD000000000000016;
    *(&v238[0] + 1) = 0x800000022BB27910;
    sub_22BB1EADC();
    sub_22BACFADC(&qword_2814250E0, MEMORY[0x277D74708]);
    v40 = sub_22BB1F85C();
    MEMORY[0x23189D130](v40);

    v41 = v238[0];
    v42 = v27;
    v44 = *(v27 + 2);
    v43 = *(v27 + 3);
    if (v44 >= v43 >> 1)
    {
      v42 = sub_22BACE678((v43 > 1), v44 + 1, 1, v27);
    }

    *(v42 + 2) = v44 + 1;
    v27 = v42;
    *&v42[16 * v44 + 32] = v41;
  }

  if (v31[4])
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD00000000000001ELL;
    *(&v238[0] + 1) = 0x800000022BB278F0;
    v45 = sub_22BB1F85C();
    MEMORY[0x23189D130](v45);

    v46 = v238[0];
    v47 = v27;
    v49 = *(v27 + 2);
    v48 = *(v27 + 3);
    if (v49 >= v48 >> 1)
    {
      v47 = sub_22BACE678((v48 > 1), v49 + 1, 1, v27);
    }

    *(v47 + 2) = v49 + 1;
    v27 = v47;
    *&v47[16 * v49 + 32] = v46;
  }

  if (*(v31[5] + 16))
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD000000000000016;
    *(&v238[0] + 1) = 0x800000022BB275A0;
    sub_22BB1EADC();
    sub_22BACFADC(&qword_2814250E0, MEMORY[0x277D74708]);
    v50 = sub_22BB1F85C();
    MEMORY[0x23189D130](v50);

    v51 = v238[0];
    v52 = v27;
    v54 = *(v27 + 2);
    v53 = *(v27 + 3);
    if (v54 >= v53 >> 1)
    {
      v52 = sub_22BACE678((v53 > 1), v54 + 1, 1, v27);
    }

    *(v52 + 2) = v54 + 1;
    v27 = v52;
    *&v52[16 * v54 + 32] = v51;
  }

  if (*(v31[6] + 16))
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD00000000000001ELL;
    *(&v238[0] + 1) = 0x800000022BB275C0;
    v55 = sub_22BB1F85C();
    MEMORY[0x23189D130](v55);

    v56 = v238[0];
    v58 = *(v27 + 2);
    v57 = *(v27 + 3);
    if (v58 >= v57 >> 1)
    {
      v27 = sub_22BACE678((v57 > 1), v58 + 1, 1, v27);
    }

    *(v27 + 2) = v58 + 1;
    *&v27[16 * v58 + 32] = v56;
  }

  v59 = *(v31 + 57);
  if (v59 != *(v237 + 57))
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD000000000000014;
    *(&v238[0] + 1) = 0x800000022BB275E0;
    if (v59)
    {
      v60 = 1702195828;
    }

    else
    {
      v60 = 0x65736C6166;
    }

    if (v59)
    {
      v61 = 0xE400000000000000;
    }

    else
    {
      v61 = 0xE500000000000000;
    }

    MEMORY[0x23189D130](v60, v61);

    v62 = v238[0];
    v64 = *(v27 + 2);
    v63 = *(v27 + 3);
    if (v64 >= v63 >> 1)
    {
      v27 = sub_22BACE678((v63 > 1), v64 + 1, 1, v27);
    }

    *(v27 + 2) = v64 + 1;
    *&v27[16 * v64 + 32] = v62;
  }

  v65 = *(v31 + 58);
  if (v65 != *(v237 + 58))
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD00000000000001CLL;
    *(&v238[0] + 1) = 0x800000022BB27600;
    if (v65)
    {
      v66 = 1702195828;
    }

    else
    {
      v66 = 0x65736C6166;
    }

    if (v65)
    {
      v67 = 0xE400000000000000;
    }

    else
    {
      v67 = 0xE500000000000000;
    }

    MEMORY[0x23189D130](v66, v67);

    v68 = v238[0];
    v70 = *(v27 + 2);
    v69 = *(v27 + 3);
    if (v70 >= v69 >> 1)
    {
      v27 = sub_22BACE678((v69 > 1), v70 + 1, 1, v27);
    }

    *(v27 + 2) = v70 + 1;
    *&v27[16 * v70 + 32] = v68;
  }

  if (v65)
  {
    v71 = v27;
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v31 + 4), *(v237 + 64)), vceqq_f64(*(v31 + 5), *(v237 + 80))))))
    {
      v76 = v237;
    }

    else
    {
      *&v238[0] = 0;
      *(&v238[0] + 1) = 0xE000000000000000;
      sub_22BB1FB7C();
      v239 = v238[0];
      MEMORY[0x23189D130](0xD000000000000016, 0x800000022BB278A0);
      v72 = *(v31 + 5);
      v238[0] = *(v31 + 4);
      v238[1] = v72;
      sub_22BB1FBDC();
      v73 = v239;
      v75 = *(v27 + 2);
      v74 = *(v27 + 3);
      if (v75 >= v74 >> 1)
      {
        v71 = sub_22BACE678((v74 > 1), v75 + 1, 1, v27);
      }

      v76 = v237;
      *(v71 + 2) = v75 + 1;
      *&v71[16 * v75 + 32] = v73;
    }

    v77 = *(v31 + 96);
    if (v77 != *(v76 + 96))
    {
      *&v238[0] = 0;
      *(&v238[0] + 1) = 0xE000000000000000;
      sub_22BB1FB7C();

      *&v238[0] = 0xD000000000000022;
      *(&v238[0] + 1) = 0x800000022BB278C0;
      v78 = v77 == 0;
      if (v77)
      {
        v79 = 1702195828;
      }

      else
      {
        v79 = 0x65736C6166;
      }

      v80 = v71;
      if (v78)
      {
        v81 = 0xE500000000000000;
      }

      else
      {
        v81 = 0xE400000000000000;
      }

      MEMORY[0x23189D130](v79, v81);
      v71 = v80;

      v82 = v238[0];
      v84 = *(v80 + 2);
      v83 = *(v80 + 3);
      if (v84 >= v83 >> 1)
      {
        v71 = sub_22BACE678((v83 > 1), v84 + 1, 1, v80);
      }

      *(v71 + 2) = v84 + 1;
      *&v71[16 * v84 + 32] = v82;
    }
  }

  else
  {
    v71 = v27;
    v76 = v237;
  }

  v85 = v31[13];
  v86 = *(v31 + 112);
  v87 = *(v76 + 112);
  if (v86)
  {
    if (*(v76 + 112))
    {
      goto LABEL_74;
    }

    goto LABEL_71;
  }

  if (v85 != *(v76 + 104))
  {
    v87 = 1;
  }

  if (v87)
  {
LABEL_71:
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD00000000000001DLL;
    *(&v238[0] + 1) = 0x800000022BB27620;
    *&v239 = v85;
    BYTE8(v239) = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF4B8, &qword_22BB22108);
    v88 = sub_22BB1F6AC();
    MEMORY[0x23189D130](v88);

    v89 = v238[0];
    v91 = *(v71 + 2);
    v90 = *(v71 + 3);
    if (v91 >= v90 >> 1)
    {
      v71 = sub_22BACE678((v90 > 1), v91 + 1, 1, v71);
    }

    *(v71 + 2) = v91 + 1;
    *&v71[16 * v91 + 32] = v89;
  }

LABEL_74:
  v92 = *(v31 + 113);
  if (v92 != *(v76 + 113))
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD000000000000011;
    *(&v238[0] + 1) = 0x800000022BB27640;
    v93 = v92 == 0;
    if (v92)
    {
      v94 = 1702195828;
    }

    else
    {
      v94 = 0x65736C6166;
    }

    v95 = v71;
    if (v93)
    {
      v96 = 0xE500000000000000;
    }

    else
    {
      v96 = 0xE400000000000000;
    }

    MEMORY[0x23189D130](v94, v96);
    v71 = v95;

    v97 = v238[0];
    v99 = *(v95 + 2);
    v98 = *(v95 + 3);
    if (v99 >= v98 >> 1)
    {
      v71 = sub_22BACE678((v98 > 1), v99 + 1, 1, v95);
    }

    *(v71 + 2) = v99 + 1;
    *&v71[16 * v99 + 32] = v97;
  }

  v100 = *(v31 + 114);
  if (v100 != *(v76 + 114))
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD000000000000018;
    *(&v238[0] + 1) = 0x800000022BB27660;
    v101 = v100 == 0;
    if (v100)
    {
      v102 = 1702195828;
    }

    else
    {
      v102 = 0x65736C6166;
    }

    v103 = v71;
    if (v101)
    {
      v104 = 0xE500000000000000;
    }

    else
    {
      v104 = 0xE400000000000000;
    }

    MEMORY[0x23189D130](v102, v104);
    v71 = v103;

    v105 = v238[0];
    v107 = *(v103 + 2);
    v106 = *(v103 + 3);
    if (v107 >= v106 >> 1)
    {
      v71 = sub_22BACE678((v106 > 1), v107 + 1, 1, v103);
    }

    *(v71 + 2) = v107 + 1;
    *&v71[16 * v107 + 32] = v105;
  }

  v108 = *(v31 + 115);
  if (v108 != *(v76 + 115))
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD000000000000020;
    *(&v238[0] + 1) = 0x800000022BB27680;
    v109 = v108 == 0;
    if (v108)
    {
      v110 = 1702195828;
    }

    else
    {
      v110 = 0x65736C6166;
    }

    v111 = v71;
    if (v109)
    {
      v112 = 0xE500000000000000;
    }

    else
    {
      v112 = 0xE400000000000000;
    }

    MEMORY[0x23189D130](v110, v112);
    v71 = v111;

    v113 = v238[0];
    v115 = *(v111 + 2);
    v114 = *(v111 + 3);
    if (v115 >= v114 >> 1)
    {
      v71 = sub_22BACE678((v114 > 1), v115 + 1, 1, v111);
    }

    *(v71 + 2) = v115 + 1;
    *&v71[16 * v115 + 32] = v113;
  }

  v116 = v71;
  sub_22BAD6B34(v31 + v232[19], v6, &qword_27D8DF3A0, &qword_22BB220B8);
  v117 = v234;
  if ((*(v234 + 48))(v6, 1, v7) == 1)
  {
    sub_22BAC81E8(v6, &qword_27D8DF3A0, &qword_22BB220B8);
  }

  else
  {
    (*(v117 + 32))(v233, v6, v7);
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD000000000000013;
    *(&v238[0] + 1) = 0x800000022BB27880;
    sub_22BACFADC(&unk_2814250B0, MEMORY[0x277D747A8]);
    v118 = sub_22BB1FD7C();
    MEMORY[0x23189D130](v118);

    v119 = v238[0];
    v121 = *(v71 + 2);
    v120 = *(v116 + 3);
    if (v121 >= v120 >> 1)
    {
      v116 = sub_22BACE678((v120 > 1), v121 + 1, 1, v116);
    }

    (*(v234 + 8))(v233, v7);
    *(v116 + 2) = v121 + 1;
    *&v116[16 * v121 + 32] = v119;
  }

  v122 = v232;
  v123 = v232[20];
  sub_22BB1EC9C();
  sub_22BACFADC(&unk_281425088, MEMORY[0x277D74870]);
  if ((sub_22BB1F65C() & 1) == 0)
  {
    strcpy(v238, "textOptions: ");
    HIWORD(v238[0]) = -4864;
    sub_22BACFADC(&qword_27D8DF4C0, MEMORY[0x277D74870]);
    v124 = sub_22BB1FD7C();
    MEMORY[0x23189D130](v124);

    v125 = v238[0];
    v126 = v116;
    v128 = *(v116 + 2);
    v127 = *(v116 + 3);
    if (v128 >= v127 >> 1)
    {
      v126 = sub_22BACE678((v127 > 1), v128 + 1, 1, v116);
    }

    *(v126 + 2) = v128 + 1;
    v116 = v126;
    *&v126[16 * v128 + 32] = v125;
  }

  v129 = v122[21];
  sub_22BB1EC5C();
  sub_22BACFADC(&qword_2814250A0, MEMORY[0x277D74800]);
  if (sub_22BB1F65C())
  {
    v130 = v116;
    v131 = v237;
  }

  else
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000010, 0x800000022BB276B0);
    sub_22BB1FBDC();
    v132 = v238[0];
    v130 = v116;
    v134 = *(v116 + 2);
    v133 = *(v116 + 3);
    if (v134 >= v133 >> 1)
    {
      v130 = sub_22BACE678((v133 > 1), v134 + 1, 1, v116);
    }

    v131 = v237;
    *(v130 + 2) = v134 + 1;
    *&v130[16 * v134 + 32] = v132;
  }

  v135 = v122[22];
  v136 = sub_22BB1EC7C();
  v233 = sub_22BACFADC(&qword_281425098, MEMORY[0x277D74850]);
  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000011, 0x800000022BB276D0);
    sub_22BB1FBDC();
    v137 = v238[0];
    v139 = *(v130 + 2);
    v138 = *(v130 + 3);
    if (v139 >= v138 >> 1)
    {
      v130 = sub_22BACE678((v138 > 1), v139 + 1, 1, v130);
    }

    *(v130 + 2) = v139 + 1;
    *&v130[16 * v139 + 32] = v137;
  }

  v140 = v122[23];
  v141 = *(v31 + v140);
  if ((sub_22BAF9C1C(v141, *(v131 + v140), MEMORY[0x277D85578], &qword_27D8DF518, MEMORY[0x277D85578], MEMORY[0x277D85590]) & 1) == 0)
  {
    v228 = v136;
    v142 = *(v141 + 16);
    v143 = MEMORY[0x277D84F90];
    v229 = v130;
    if (v142)
    {
      v144 = *(v230 + 16);
      v145 = v141 + ((*(v230 + 80) + 32) & ~*(v230 + 80));
      v146 = *(v230 + 72);
      v147 = (v230 + 8);
      v149 = v235;
      v148 = v236;
      v234 = v146;
      v144(v235, v145, v236);
      while (1)
      {
        if (sub_22BB1F30C())
        {
          (*v147)(v149, v148);
        }

        else
        {
          v150 = sub_22BB1F2FC();
          v152 = v151;
          (*v147)(v149, v148);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = sub_22BACE678(0, *(v143 + 2) + 1, 1, v143);
          }

          v154 = *(v143 + 2);
          v153 = *(v143 + 3);
          if (v154 >= v153 >> 1)
          {
            v143 = sub_22BACE678((v153 > 1), v154 + 1, 1, v143);
          }

          *(v143 + 2) = v154 + 1;
          v155 = &v143[16 * v154];
          *(v155 + 4) = v150;
          *(v155 + 5) = v152;
          v149 = v235;
          v148 = v236;
          v146 = v234;
        }

        v145 += v146;
        if (!--v142)
        {
          break;
        }

        v144(v149, v145, v148);
      }
    }

    sub_22BB02DD0(v143);

    v156 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v157 = sub_22BB1F7CC();

    v158 = [v156 initWithArray_];

    v159 = [v158 array];
    v160 = sub_22BB1F7DC();

    v161 = sub_22BB02ED0(v160);

    if (!v161)
    {
      v161 = MEMORY[0x277D84F90];
    }

    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();

    *&v238[0] = 0xD000000000000020;
    *(&v238[0] + 1) = 0x800000022BB276F0;
    *&v239 = v161;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
    sub_22BAF77D8();
    v162 = sub_22BB1F63C();
    v164 = v163;

    MEMORY[0x23189D130](v162, v164);

    MEMORY[0x23189D130](93, 0xE100000000000000);
    v165 = v238[0];
    v130 = v229;
    v167 = *(v229 + 2);
    v166 = *(v229 + 3);
    if (v167 >= v166 >> 1)
    {
      v130 = sub_22BACE678((v166 > 1), v167 + 1, 1, v229);
    }

    v31 = v231;
    v122 = v232;
    v131 = v237;
    *(v130 + 2) = v167 + 1;
    *&v130[16 * v167 + 32] = v165;
  }

  v168 = v122[24];
  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0x6E6F436567616D69, 0xEE00203A746E6574);
    sub_22BB1FBDC();
    v169 = v238[0];
    v171 = *(v130 + 2);
    v170 = *(v130 + 3);
    if (v171 >= v170 >> 1)
    {
      v130 = sub_22BACE678((v170 > 1), v171 + 1, 1, v130);
    }

    *(v130 + 2) = v171 + 1;
    *&v130[16 * v171 + 32] = v169;
  }

  v172 = v122[25];
  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000013, 0x800000022BB27720);
    sub_22BB1FBDC();
    v173 = v238[0];
    v175 = *(v130 + 2);
    v174 = *(v130 + 3);
    if (v175 >= v174 >> 1)
    {
      v130 = sub_22BACE678((v174 > 1), v175 + 1, 1, v130);
    }

    *(v130 + 2) = v175 + 1;
    *&v130[16 * v175 + 32] = v173;
  }

  v176 = v122[26];
  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000016, 0x800000022BB27740);
    sub_22BB1FBDC();
    v177 = v238[0];
    v179 = *(v130 + 2);
    v178 = *(v130 + 3);
    if (v179 >= v178 >> 1)
    {
      v130 = sub_22BACE678((v178 > 1), v179 + 1, 1, v130);
    }

    *(v130 + 2) = v179 + 1;
    *&v130[16 * v179 + 32] = v177;
  }

  v180 = v122[27];
  v181 = *(v31 + v180);
  if (v181 != *(v131 + v180))
  {
    *&v238[0] = 0xD00000000000001ALL;
    *(&v238[0] + 1) = 0x800000022BB27760;
    if (v181)
    {
      v182 = 1702195828;
    }

    else
    {
      v182 = 0x65736C6166;
    }

    if (v181)
    {
      v183 = 0xE400000000000000;
    }

    else
    {
      v183 = 0xE500000000000000;
    }

    MEMORY[0x23189D130](v182, v183);

    v184 = v238[0];
    v186 = *(v130 + 2);
    v185 = *(v130 + 3);
    if (v186 >= v185 >> 1)
    {
      v130 = sub_22BACE678((v185 > 1), v186 + 1, 1, v130);
    }

    *(v130 + 2) = v186 + 1;
    *&v130[16 * v186 + 32] = v184;
  }

  v187 = v122[29];
  v188 = *(v31 + v187);
  if (v188 != *(v131 + v187))
  {
    *&v238[0] = 0xD00000000000001CLL;
    *(&v238[0] + 1) = 0x800000022BB27780;
    if (v188)
    {
      v189 = 1702195828;
    }

    else
    {
      v189 = 0x65736C6166;
    }

    if (v188)
    {
      v190 = 0xE400000000000000;
    }

    else
    {
      v190 = 0xE500000000000000;
    }

    MEMORY[0x23189D130](v189, v190);

    v191 = v238[0];
    v193 = *(v130 + 2);
    v192 = *(v130 + 3);
    if (v193 >= v192 >> 1)
    {
      v130 = sub_22BACE678((v192 > 1), v193 + 1, 1, v130);
    }

    *(v130 + 2) = v193 + 1;
    *&v130[16 * v193 + 32] = v191;
  }

  v194 = v122[30];
  v195 = *(v31 + v194);
  if (v195 != *(v131 + v194))
  {
    *&v238[0] = 0xD000000000000023;
    *(&v238[0] + 1) = 0x800000022BB277A0;
    if (v195)
    {
      v196 = 1702195828;
    }

    else
    {
      v196 = 0x65736C6166;
    }

    if (v195)
    {
      v197 = 0xE400000000000000;
    }

    else
    {
      v197 = 0xE500000000000000;
    }

    MEMORY[0x23189D130](v196, v197);

    v198 = v238[0];
    v200 = *(v130 + 2);
    v199 = *(v130 + 3);
    if (v200 >= v199 >> 1)
    {
      v130 = sub_22BACE678((v199 > 1), v200 + 1, 1, v130);
    }

    *(v130 + 2) = v200 + 1;
    *&v130[16 * v200 + 32] = v198;
  }

  v201 = v122[31];
  sub_22BB1F0BC();
  sub_22BACFADC(&qword_281425078, MEMORY[0x277D748E8]);
  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000025, 0x800000022BB277D0);
    sub_22BB1FBDC();
    v202 = v238[0];
    v204 = *(v130 + 2);
    v203 = *(v130 + 3);
    if (v204 >= v203 >> 1)
    {
      v130 = sub_22BACE678((v203 > 1), v204 + 1, 1, v130);
    }

    *(v130 + 2) = v204 + 1;
    *&v130[16 * v204 + 32] = v202;
  }

  v205 = v122[32];
  v206 = *(v31 + v205);
  sub_22BAF9824(v206, *(v131 + v205));
  if ((v207 & 1) == 0)
  {
    *&v238[0] = sub_22BAF82B0(v206);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
    v208 = v130;
    sub_22BAF77D8();
    v209 = sub_22BB1F63C();
    v211 = v210;

    *&v238[0] = 0xD000000000000017;
    *(&v238[0] + 1) = 0x800000022BB27800;
    v212 = v209;
    v130 = v208;
    MEMORY[0x23189D130](v212, v211);

    MEMORY[0x23189D130](93, 0xE100000000000000);
    v213 = v238[0];
    v215 = *(v208 + 2);
    v214 = *(v208 + 3);
    if (v215 >= v214 >> 1)
    {
      v130 = sub_22BACE678((v214 > 1), v215 + 1, 1, v208);
    }

    *(v130 + 2) = v215 + 1;
    *&v130[16 * v215 + 32] = v213;
  }

  v216 = v122[34];
  sub_22BB1EE9C();
  sub_22BACFADC(&qword_281425080, MEMORY[0x277D74898]);
  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000010, 0x800000022BB27820);
    sub_22BB1FBDC();
    v217 = v238[0];
    v219 = *(v130 + 2);
    v218 = *(v130 + 3);
    if (v219 >= v218 >> 1)
    {
      v130 = sub_22BACE678((v218 > 1), v219 + 1, 1, v130);
    }

    *(v130 + 2) = v219 + 1;
    *&v130[16 * v219 + 32] = v217;
  }

  v220 = v122[28];
  if ((sub_22BB1F65C() & 1) == 0)
  {
    *&v238[0] = 0;
    *(&v238[0] + 1) = 0xE000000000000000;
    sub_22BB1FB7C();
    MEMORY[0x23189D130](0xD000000000000016, 0x800000022BB27840);
    sub_22BB1FBDC();
    v221 = v238[0];
    v223 = *(v130 + 2);
    v222 = *(v130 + 3);
    if (v223 >= v222 >> 1)
    {
      v130 = sub_22BACE678((v222 > 1), v223 + 1, 1, v130);
    }

    *(v130 + 2) = v223 + 1;
    *&v130[16 * v223 + 32] = v221;
  }

  *&v238[0] = 0xD000000000000012;
  *(&v238[0] + 1) = 0x800000022BB27860;
  *&v239 = v130;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAF77D8();
  v224 = sub_22BB1F63C();
  v226 = v225;

  MEMORY[0x23189D130](v224, v226);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return *&v238[0];
}

uint64_t sub_22BAC81E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22BAC8248()
{
  v1 = *(_s17AsyncProviderTaskVMa() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_22BAC82AC(v2, v3);
}

void sub_22BAC82AC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  sub_22BACD014(v3, 0, 1, a2, 0);
}

uint64_t sub_22BAC8324(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22BAC836C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22BAC83C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_22BAC8408(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_22BB1FADC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_22BAC849C(v3, 0);
  sub_22BAC8524((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_22BAC849C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF190, &qword_22BB21708);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_22BAC8524(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22BB1FADC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22BB1FADC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22BAC8324(&unk_281424128, &qword_27D8DF188, &qword_22BB21700);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF188, &qword_22BB21700);
            v9 = sub_22BAC86D8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22BAC83C0(0, &qword_2814240A8, 0x277D0AD00);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_22BAC86D8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23189D5B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_22BAC8758;
  }

  __break(1u);
  return result;
}

uint64_t sub_22BAC8760(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22BB10E38(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22BAC23E4(v6);
  return sub_22BB1FBCC();
}

void sub_22BAC87DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v23 = a3;
    v7 = *(v4 + 8 * a3);
    v21 = v6;
    v22 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = [v9 level];
      if (v11 == [v10 level])
      {
        v12 = [v9 layoutRole] - 1;
        if (v12 > 9)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = qword_22BB217B0[v12];
        }

        v16 = [v10 layoutRole];
        if ((v16 - 1) > 9)
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = qword_22BB217B0[(v16 - 1)];
        }

        if (v13 >= v17)
        {
LABEL_4:
          a3 = v23 + 1;
          v5 = v22 + 8;
          v6 = v21 - 1;
          if (v23 + 1 == a2)
          {
            return;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = [v9 level];
        v15 = [v10 level];

        if (v15 >= v14)
        {
          goto LABEL_4;
        }
      }

      if (!v4)
      {
        break;
      }

      v18 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v18;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

char *sub_22BAC8968(char *a1, int64_t a2, char a3)
{
  result = sub_22BAC8988(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22BAC8988(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2A8, &qword_22BB21F70);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_22BAC8A94(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a2;
  v128 = a1;
  v133 = a4;
  v6 = sub_22BB1F45C();
  v131 = *(v6 - 8);
  v132 = v6;
  v7 = *(v131 + 64);
  MEMORY[0x28223BE20](v6);
  v117 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v123 = &v113 - v10;
  v11 = sub_22BB1F5BC();
  isa = v11[-1].isa;
  v127 = v11;
  v12 = isa[8].isa;
  MEMORY[0x28223BE20](v11);
  v14 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_22BB1F51C();
  v129 = *(v135 - 8);
  v15 = *(v129 + 64);
  MEMORY[0x28223BE20](v135);
  v116 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v121 = &v113 - v18;
  MEMORY[0x28223BE20](v19);
  v120 = &v113 - v20;
  MEMORY[0x28223BE20](v21);
  v122 = &v113 - v22;
  v137 = _s17AsyncProviderTaskVMa();
  v130 = *(v137 - 8);
  v23 = *(v130 + 64);
  MEMORY[0x28223BE20](v137);
  v115 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v119 = &v113 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v113 - v28;
  v30 = sub_22BB1F2EC();
  v31 = *(v30 - 8);
  v32 = v31[8];
  MEMORY[0x28223BE20](v30);
  v114 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v113 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v113 - v38;
  v118 = v4;
  sub_22BB1F0FC();
  v40 = v31[2];
  v134 = v39;
  v136 = v30;
  v40(v36, v39, v30);
  v41 = qword_2814247A0;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = off_2814247A8;
  os_unfair_lock_lock(off_2814247A8 + 6);
  v43 = *(v42 + 2);
  if (__OFADD__(v43, 1))
  {
    __break(1u);
  }

  else
  {
    *(v42 + 2) = v43 + 1;
    os_unfair_lock_unlock(v42 + 6);
    *v29 = v43;
    v44 = v136;
    v45 = v137;
    v40(&v29[*(v137 + 20)], v36, v136);
    v46 = &v29[*(v45 + 24)];
    *v46 = v125;
    *(v46 + 1) = a3;
    v47 = v29;
    v48 = mach_continuous_time();
    v124 = v31[1];
    v125 = v31 + 1;
    v124(v36, v44);
    *&v29[*(v45 + 28)] = v48;
    v49 = sub_22BAF340C(v29, v128);
    if (v49)
    {
      v50 = v49;
      v51 = v118;
      swift_beginAccess();
      swift_unknownObjectRetain();
      v52 = *(v51 + 72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138 = *(v51 + 72);
      *(v51 + 72) = 0x8000000000000000;
      sub_22BB0E668(v50, v29, isUniquelyReferenced_nonNull_native);
      *(v51 + 72) = v138;
      swift_endAccess();
      sub_22BB1F59C();
      v54 = v122;
      sub_22BB1F5AC();
      (isa[1].isa)(v14, v127);
      v55 = v123;
      sub_22BB1F43C();
      v56 = v119;
      sub_22BAC9EBC(v29, v119);
      v57 = v129;
      v58 = v120;
      v59 = v135;
      (*(v129 + 16))(v120, v54, v135);
      v60 = sub_22BB1F44C();
      v61 = sub_22BB1F8CC();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v139[0] = v128;
        *v62 = 136446466;
        v127 = v60;
        v63 = sub_22BACDFE0();
        v64 = v58;
        v66 = v65;
        sub_22BAC9F20(v56);
        v67 = sub_22BABDC4C(v63, v66, v139);

        *(v62 + 4) = v67;
        *(v62 + 12) = 2082;
        v68 = sub_22BB1F4FC();
        v70 = v69;
        v71 = *(v57 + 8);
        v72 = v135;
        v71(v64, v135);
        v73 = sub_22BABDC4C(v68, v70, v139);

        *(v62 + 14) = v73;
        v74 = v127;
        _os_log_impl(&dword_22BABB000, v127, v61, "starting %{public}s with %{public}s until deadline", v62, 0x16u);
        v75 = v128;
        swift_arrayDestroy();
        MEMORY[0x23189DF20](v75, -1, -1);
        MEMORY[0x23189DF20](v62, -1, -1);
        swift_unknownObjectRelease();

        (*(v131 + 8))(v123, v132);
        v71(v122, v72);
      }

      else
      {
        swift_unknownObjectRelease();

        v107 = *(v57 + 8);
        v107(v58, v59);
        sub_22BAC9F20(v56);
        (*(v131 + 8))(v55, v132);
        v107(v54, v59);
      }

      v124(v134, v136);
      v108 = v133;
      sub_22BACDEBC(v47, v133);
      v109 = 0;
    }

    else
    {
      sub_22BB1F59C();
      v76 = v121;
      sub_22BB1F5AC();
      (isa[1].isa)(v14, v127);
      v77 = v117;
      sub_22BB1F43C();
      v78 = v29;
      v79 = v115;
      sub_22BAC9EBC(v78, v115);
      v80 = v114;
      v40(v114, v134, v44);
      v81 = v129;
      v82 = v116;
      v83 = v135;
      (*(v129 + 16))(v116, v76, v135);
      v84 = sub_22BB1F44C();
      LODWORD(v128) = sub_22BB1F8BC();
      if (os_log_type_enabled(v84, v128))
      {
        v85 = v82;
        v86 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v139[0] = v127;
        *v86 = 136446722;
        v87 = (v79 + *(v137 + 24));
        isa = v84;
        v88 = *v87;
        v89 = v87[1];

        sub_22BAC9F20(v79);
        v90 = sub_22BABDC4C(v88, v89, v139);

        *(v86 + 4) = v90;
        *(v86 + 12) = 2082;
        v91 = sub_22BB1F2BC();
        v93 = v92;
        v94 = v80;
        v95 = v136;
        v96 = v124;
        v124(v94, v136);
        v97 = sub_22BABDC4C(v91, v93, v139);

        *(v86 + 14) = v97;
        *(v86 + 22) = 2082;
        v98 = sub_22BB1F4FC();
        v100 = v99;
        v101 = *(v81 + 8);
        v102 = v85;
        v103 = v135;
        v101(v102, v135);
        v104 = sub_22BABDC4C(v98, v100, v139);

        *(v86 + 24) = v104;
        v105 = isa;
        _os_log_impl(&dword_22BABB000, isa, v128, "attempted to start async provider task '%{public}s' for %{public}s but already %{public}s past deadline", v86, 0x20u);
        v106 = v127;
        swift_arrayDestroy();
        MEMORY[0x23189DF20](v106, -1, -1);
        MEMORY[0x23189DF20](v86, -1, -1);

        (*(v131 + 8))(v117, v132);
        v101(v121, v103);
        sub_22BAC9F20(v47);
        v96(v134, v95);
      }

      else
      {

        v110 = *(v81 + 8);
        v110(v82, v83);
        v111 = v80;
        v112 = v124;
        v124(v111, v44);
        sub_22BAC9F20(v79);
        (*(v131 + 8))(v77, v132);
        v110(v121, v83);
        sub_22BAC9F20(v47);
        v112(v134, v44);
      }

      v109 = 1;
      v108 = v133;
    }

    (*(v130 + 56))(v108, v109, 1, v137);
  }
}

uint64_t sub_22BAC9604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22BB1F2EC();
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_22BAC96C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v6 = sub_22BB1F52C();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22BB1F56C();
  v40 = *(v42 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = _s17AsyncProviderTaskVMa();
  v44 = *(v15 - 8);
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](v15);
  v38 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v46 = &v35 - v18;
  v19 = *(v3 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_state);
  v47 = a1;
  v48 = a2;
  v20 = a2;
  os_unfair_lock_lock((v19 + 64));
  sub_22BB09690(&aBlock);
  os_unfair_lock_unlock((v19 + 64));
  if (aBlock == 1)
  {
    v37 = v6;
    v21 = OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_deadline;
    aBlock = 0;
    v51 = 0xE000000000000000;
    sub_22BB1FB7C();

    aBlock = 0xD000000000000011;
    v51 = 0x800000022BB27E80;
    v36 = a1;
    MEMORY[0x23189D130](a1, a2);
    MEMORY[0x23189D130](41, 0xE100000000000000);
    sub_22BAC8A94(v3 + v21, aBlock, v51, v14);

    v22 = v44;
    if ((*(v44 + 48))(v14, 1, v15) == 1)
    {
      sub_22BB096AC(v14);
    }

    else
    {
      v23 = v3;
      v24 = v46;
      sub_22BACDEBC(v14, v46);
      os_unfair_lock_lock((v19 + 64));
      if (*(v19 + 24) == 1)
      {
        *(v19 + 16) = mach_continuous_time();
        *(v19 + 24) = 0;
      }

      os_unfair_lock_unlock((v19 + 64));
      v25 = v38;
      sub_22BAC9EBC(v24, v38);
      v26 = (*(v22 + 80) + 40) & ~*(v22 + 80);
      v27 = swift_allocObject();
      v28 = v36;
      v27[2] = v23;
      v27[3] = v28;
      v27[4] = v20;
      sub_22BACDEBC(v25, v27 + v26);
      v29 = qword_281424340;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = swift_allocObject();
      v30[2] = v28;
      v30[3] = v20;
      v30[4] = sub_22BB09714;
      v30[5] = v27;
      v54 = sub_22BACCF20;
      v55 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v51 = 1107296256;
      v52 = sub_22BAC37D4;
      v53 = &block_descriptor_4;
      v31 = _Block_copy(&aBlock);

      v32 = v39;
      sub_22BB1F54C();
      v49 = MEMORY[0x277D84F90];
      sub_22BAC3744(&qword_281424180, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
      sub_22BAC836C(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
      v33 = v41;
      v34 = v37;
      sub_22BB1FA8C();
      MEMORY[0x23189D350](0, v32, v33, v31);
      _Block_release(v31);

      (*(v43 + 8))(v33, v34);
      (*(v40 + 8))(v32, v42);
      sub_22BAC9F20(v46);
    }
  }
}

uint64_t sub_22BAC9C9C()
{
  v1 = (_s17AsyncProviderTaskVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = v1[7];
  v8 = sub_22BB1F2EC();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22BAC9DA4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22BAC9DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BB1F2EC();
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_22BAC9EBC(uint64_t a1, uint64_t a2)
{
  v4 = _s17AsyncProviderTaskVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BAC9F20(uint64_t a1)
{
  v2 = _s17AsyncProviderTaskVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BAC9F7C(void *a1, void *a2, int a3)
{
  LODWORD(v175) = a3;
  v5 = sub_22BB1F45C();
  v169 = *(v5 - 8);
  v170 = v5;
  v6 = *(v169 + 64);
  MEMORY[0x28223BE20](v5);
  v164 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v151 = &v150 - v9;
  MEMORY[0x28223BE20](v10);
  v159 = &v150 - v11;
  v12 = _s17AsyncProviderTaskVMa();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v163 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v162 = &v150 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v150 - v18;
  MEMORY[0x28223BE20](v20);
  v158 = &v150 - v21;
  MEMORY[0x28223BE20](v22);
  v155 = &v150 - v23;
  MEMORY[0x28223BE20](v24);
  v154 = &v150 - v25;
  MEMORY[0x28223BE20](v26);
  v157 = &v150 - v27;
  MEMORY[0x28223BE20](v28);
  v153 = &v150 - v29;
  MEMORY[0x28223BE20](v30);
  v152 = &v150 - v31;
  v32 = sub_22BB1F35C();
  v165 = *(v32 - 8);
  v166 = v32;
  v33 = *(v165 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v150 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v156 = &v150 - v37;
  MEMORY[0x28223BE20](v38);
  v160 = &v150 - v39;
  v40 = sub_22BB1F3AC();
  v167 = *(v40 - 8);
  v168 = v40;
  v41 = *(v167 + 64);
  MEMORY[0x28223BE20](v40);
  v43 = &v150 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v150 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v150 - v48;
  v50 = sub_22BB1F2EC();
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v150 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v12;
  v55 = *(v12 + 20);
  v173 = v57;
  v174 = v56;
  v58 = *(v57 + 16);
  v171 = a2;
  v58(v54, a2 + v55, v52);
  v150 = a1;
  v59 = *a1;
  v60 = *(v59 + 16);
  v172 = v54;
  if (!v60 || (v61 = sub_22BACB688(v54), (v62 & 1) == 0))
  {
    if ((v175 & 1) == 0)
    {
      sub_22BB1F38C();
      v85 = v171;
      result = *v171;
      if ((*v171 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v86 = v35;
      sub_22BB1F36C();
      sub_22BABE90C(v85, v19, _s17AsyncProviderTaskVMa);
      sub_22BACDF8C();
      sub_22BACCE68();
      sub_22BAD162C(v87);
      v88 = v162;
      sub_22BABE90C(v85, v162, _s17AsyncProviderTaskVMa);
      v89 = sub_22BB1F39C();
      v90 = sub_22BB1F9BC();
      if (sub_22BB1FA0C())
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v176 = v92;
        *v91 = 134218242;
        LODWORD(v175) = v90;
        v93 = v161;
        *(v91 + 4) = *&v19[*(v161 + 28)];
        sub_22BAC1514(v19, _s17AsyncProviderTaskVMa);
        *(v91 + 12) = 2082;
        v94 = (v88 + *(v93 + 24));
        v96 = *v94;
        v95 = v94[1];

        sub_22BAC1514(v88, _s17AsyncProviderTaskVMa);
        v97 = sub_22BABDC4C(v96, v95, &v176);

        *(v91 + 14) = v97;
        v98 = sub_22BB1F34C();
        _os_signpost_emit_with_name_impl(&dword_22BABB000, v89, v175, v98, "AsyncProviderTask", "%{public, signpost.description:begin_time}llu PastDeadline %{public}s", v91, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v92);
        MEMORY[0x23189DF20](v92, -1, -1);
        v99 = v91;
        v85 = v171;
        MEMORY[0x23189DF20](v99, -1, -1);
      }

      else
      {

        sub_22BAC1514(v88, _s17AsyncProviderTaskVMa);
        sub_22BAC1514(v19, _s17AsyncProviderTaskVMa);
      }

      (*(v165 + 8))(v86, v166);
      (*(v167 + 8))(v43, v168);
      v101 = v163;
      v100 = v164;
      sub_22BB1F43C();
      sub_22BABE90C(v85, v101, _s17AsyncProviderTaskVMa);
      v102 = sub_22BB1F44C();
      v103 = sub_22BB1F8BC();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v176 = v105;
        *v104 = 136446210;
        v106 = sub_22BACDFE0();
        v108 = v107;
        sub_22BAC1514(v101, _s17AsyncProviderTaskVMa);
        v109 = sub_22BABDC4C(v106, v108, &v176);

        *(v104 + 4) = v109;
        _os_log_impl(&dword_22BABB000, v102, v103, "ignoring async provider task that completed late past its deadline: %{public}s", v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v105);
        MEMORY[0x23189DF20](v105, -1, -1);
        MEMORY[0x23189DF20](v104, -1, -1);
      }

      else
      {

        sub_22BAC1514(v101, _s17AsyncProviderTaskVMa);
      }

      (*(v169 + 8))(v100, v170);
    }

    return (*(v173 + 8))(v172, v174);
  }

  v63 = *(*(v59 + 56) + 8 * v61);

  v64 = v175;
  v65 = v171;
  v164 = sub_22BACB9F8(v171, v175 & 1);
  if (v64)
  {
    v66 = v49;
    sub_22BB1F38C();
    result = *v65;
    if ((*v65 & 0x8000000000000000) == 0)
    {
      v68 = v160;
      sub_22BB1F36C();
      v69 = v152;
      sub_22BABE90C(v65, v152, _s17AsyncProviderTaskVMa);
      sub_22BACDF8C();
      sub_22BACCE68();
      sub_22BAD162C(v70);
      v71 = v153;
      sub_22BABE90C(v65, v153, _s17AsyncProviderTaskVMa);
      v72 = sub_22BB1F39C();
      v73 = sub_22BB1F9BC();
      if (sub_22BB1FA0C())
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        LODWORD(v163) = v73;
        v76 = v75;
        v176 = v75;
        *v74 = 134218242;
        v175 = v66;
        v77 = v161;
        *(v74 + 4) = *(v69 + *(v161 + 28));
        sub_22BAC1514(v69, _s17AsyncProviderTaskVMa);
        *(v74 + 12) = 2082;
        v78 = (v71 + *(v77 + 24));
        v79 = v71;
        v80 = *v78;
        v81 = v78[1];

        sub_22BAC1514(v79, _s17AsyncProviderTaskVMa);
        v82 = sub_22BABDC4C(v80, v81, &v176);

        *(v74 + 14) = v82;
        v83 = v160;
        v84 = sub_22BB1F34C();
        _os_signpost_emit_with_name_impl(&dword_22BABB000, v72, v163, v84, "AsyncProviderTaskTimeout", "%{public, signpost.description:begin_time}llu %{public}s", v74, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x23189DF20](v76, -1, -1);
        MEMORY[0x23189DF20](v74, -1, -1);

        (*(v165 + 8))(v83, v166);
        (*(v167 + 8))(v175, v168);
      }

      else
      {

        sub_22BAC1514(v71, _s17AsyncProviderTaskVMa);
        sub_22BAC1514(v69, _s17AsyncProviderTaskVMa);
        (*(v165 + 8))(v68, v166);
        (*(v167 + 8))(v66, v168);
      }

      v129 = v159;
      sub_22BB1F43C();
      v130 = v65;
      v131 = v157;
      sub_22BABE90C(v130, v157, _s17AsyncProviderTaskVMa);
      v132 = sub_22BB1F44C();
      v133 = sub_22BB1F8BC();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v176 = v135;
        *v134 = 136446466;
        v136 = sub_22BACDFE0();
        v137 = v131;
        v139 = v138;
        sub_22BAC1514(v137, _s17AsyncProviderTaskVMa);
        v140 = sub_22BABDC4C(v136, v139, &v176);

        *(v134 + 4) = v140;
        *(v134 + 12) = 2050;
        *(v134 + 14) = v164;
        v141 = "timed out %{public}s; async provider tasks still pending: %{public}ld";
LABEL_27:
        _os_log_impl(&dword_22BABB000, v132, v133, v141, v134, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v135);
        MEMORY[0x23189DF20](v135, -1, -1);
        MEMORY[0x23189DF20](v134, -1, -1);

        goto LABEL_29;
      }

      goto LABEL_28;
    }

    goto LABEL_33;
  }

  sub_22BB1F38C();
  result = *v65;
  if (*v65 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v110 = v156;
  sub_22BB1F36C();
  v111 = v154;
  sub_22BABE90C(v65, v154, _s17AsyncProviderTaskVMa);
  sub_22BACDF8C();
  sub_22BACCE68();
  sub_22BAD162C(v112);
  v113 = v155;
  sub_22BABE90C(v65, v155, _s17AsyncProviderTaskVMa);
  v114 = sub_22BB1F39C();
  v115 = sub_22BB1F9BC();
  if (sub_22BB1FA0C())
  {
    v116 = swift_slowAlloc();
    v175 = v46;
    v117 = v116;
    v118 = swift_slowAlloc();
    v119 = v111;
    v120 = v118;
    v176 = v118;
    *v117 = 134218242;
    v121 = v161;
    *(v117 + 4) = *(v119 + *(v161 + 28));
    sub_22BAC1514(v119, _s17AsyncProviderTaskVMa);
    *(v117 + 12) = 2082;
    v122 = (v113 + *(v121 + 24));
    v123 = v113;
    v124 = *v122;
    v125 = v122[1];

    sub_22BAC1514(v123, _s17AsyncProviderTaskVMa);
    v126 = v124;
    v65 = v171;
    v127 = sub_22BABDC4C(v126, v125, &v176);

    *(v117 + 14) = v127;
    v128 = sub_22BB1F34C();
    _os_signpost_emit_with_name_impl(&dword_22BABB000, v114, v115, v128, "AsyncProviderTask", "%{public, signpost.description:begin_time}llu %{public}s", v117, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v120);
    MEMORY[0x23189DF20](v120, -1, -1);
    MEMORY[0x23189DF20](v117, -1, -1);

    (*(v165 + 8))(v110, v166);
    (*(v167 + 8))(v175, v168);
  }

  else
  {

    sub_22BAC1514(v113, _s17AsyncProviderTaskVMa);
    sub_22BAC1514(v111, _s17AsyncProviderTaskVMa);
    (*(v165 + 8))(v110, v166);
    (*(v167 + 8))(v46, v168);
  }

  v129 = v151;
  sub_22BB1F43C();
  v142 = v65;
  v131 = v158;
  sub_22BABE90C(v142, v158, _s17AsyncProviderTaskVMa);
  v132 = sub_22BB1F44C();
  v133 = sub_22BB1F8CC();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v176 = v135;
    *v134 = 136446466;
    v143 = sub_22BACDFE0();
    v144 = v131;
    v146 = v145;
    sub_22BAC1514(v144, _s17AsyncProviderTaskVMa);
    v147 = sub_22BABDC4C(v143, v146, &v176);

    *(v134 + 4) = v147;
    *(v134 + 12) = 2050;
    *(v134 + 14) = v164;
    v141 = "completed %{public}s; async provider tasks still pending: %{public}ld";
    goto LABEL_27;
  }

LABEL_28:

  sub_22BAC1514(v131, _s17AsyncProviderTaskVMa);
LABEL_29:
  (*(v169 + 8))(v129, v170);
  v148 = v172;
  v149 = *(sub_22BACB200(0) + 2);

  if (v149)
  {
    (*(v173 + 8))(v148, v174);
  }

  else
  {
    sub_22BACFB24(v148, 0);

    return (*(v173 + 8))(v148, v174);
  }
}

void sub_22BACAF88(uint64_t a1)
{
  v2 = v1;
  v27 = type metadata accessor for ConnectionID();
  v4 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  MEMORY[0x28223BE20](v10);
  v13 = v26 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v26[0] = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator;
    v26[1] = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request;
    v15 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v28 = *(v11 + 72);
    v26[2] = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_pendingClients;
    do
    {
      sub_22BABE90C(v15, v13, type metadata accessor for ConnectionID);
      sub_22BABE90C(v13, v6, type metadata accessor for ConnectionID);
      swift_beginAccess();
      sub_22BB19D84(v9, v6);
      swift_endAccess();
      sub_22BAC1514(v9, type metadata accessor for ConnectionID);
      if ((sub_22BB1EFBC() & 1) == 0)
      {
        v16 = &v13[*(v27 + 20)];
        v17 = sub_22BB1EA9C();
        if (v18)
        {
          v19 = v17;
          v20 = v18;
          v21 = v9;
          v22 = v6;
          v23 = *(v2 + v26[0]);
          v24 = *(v23 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_managementPolicyProvider);

          v25 = v23;
          v6 = v22;
          v9 = v21;
          sub_22BAC96C4(v19, v20, v25);
        }
      }

      sub_22BAC1514(v13, type metadata accessor for ConnectionID);
      v15 += v28;
      --v14;
    }

    while (v14);
  }
}

char *sub_22BACB200(char a1)
{
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  if ((*(v1 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_doneAddingPendingClients) & 1) == 0)
  {
    v4 = sub_22BACB57C(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_22BACB57C((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = 0;
    v7[40] = 3;
  }

  v8 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_pendingClients;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (*(v9 + 16))
  {
    if (a1)
    {
    }

    else
    {
      v9 = MEMORY[0x277D84FA0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_22BACB57C(0, *(v4 + 2) + 1, 1, v4);
    }

    v11 = *(v4 + 2);
    v10 = *(v4 + 3);
    if (v11 >= v10 >> 1)
    {
      v4 = sub_22BACB57C((v10 > 1), v11 + 1, 1, v4);
    }

    *(v4 + 2) = v11 + 1;
    v12 = &v4[16 * v11];
    *(v12 + 4) = v9;
    v12[40] = 0;
  }

  v13 = *(v1 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator);
  if ((sub_22BACB75C() & 1) == 0)
  {
    if (a1)
    {
      v14 = sub_22BB0AC78();
      v16 = v15;
      if (v14[2])
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_22BACB57C(0, *(v4 + 2) + 1, 1, v4);
        }

        v18 = *(v4 + 2);
        v17 = *(v4 + 3);
        if (v18 >= v17 >> 1)
        {
          v4 = sub_22BACB57C((v17 > 1), v18 + 1, 1, v4);
        }

        *(v4 + 2) = v18 + 1;
        v19 = &v4[16 * v18];
        *(v19 + 4) = v14;
        v19[40] = 1;
        if (!*(v16 + 16))
        {

          return v4;
        }

        goto LABEL_24;
      }

      if (*(v16 + 16))
      {
LABEL_24:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_22BACB57C(0, *(v4 + 2) + 1, 1, v4);
        }

        v21 = *(v4 + 2);
        v20 = *(v4 + 3);
        if (v21 >= v20 >> 1)
        {
          v4 = sub_22BACB57C((v20 > 1), v21 + 1, 1, v4);
        }

        *(v4 + 2) = v21 + 1;
        v22 = &v4[16 * v21];
        *(v22 + 4) = v16;
LABEL_37:
        v22[40] = 2;
        return v4;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_22BACB57C(0, *(v4 + 2) + 1, 1, v4);
    }

    v24 = *(v4 + 2);
    v23 = *(v4 + 3);
    v25 = v23 >> 1;
    v26 = v24 + 1;
    if (v23 >> 1 <= v24)
    {
      v4 = sub_22BACB57C((v23 > 1), v24 + 1, 1, v4);
      v23 = *(v4 + 3);
      v25 = v23 >> 1;
    }

    *(v4 + 2) = v26;
    v27 = &v4[16 * v24];
    *(v27 + 4) = v3;
    v27[40] = 1;
    v28 = v24 + 2;
    if (v25 < v28)
    {
      v4 = sub_22BACB57C((v23 > 1), v28, 1, v4);
    }

    *(v4 + 2) = v28;
    v22 = &v4[16 * v26];
    *(v22 + 4) = v3;
    goto LABEL_37;
  }

  return v4;
}

char *sub_22BACB57C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2F0, &qword_22BB21FC8);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_22BACB688(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22BB1F2EC();
  v5 = MEMORY[0x277D74940];
  sub_22BABE0B4(&qword_281425070, MEMORY[0x277D74940]);
  v6 = sub_22BB1F61C();
  return sub_22BACB83C(a1, v6, MEMORY[0x277D74940], &qword_281425068, v5, MEMORY[0x277D74950]);
}

uint64_t sub_22BACB75C()
{
  swift_beginAccess();
  if (*(v0[9] + 16) || (swift_beginAccess(), *(v0[6] + 16)))
  {
    v1 = 0;
  }

  else
  {
    swift_beginAccess();
    v3 = v0[5];
    swift_beginAccess();
    v4 = v0[7];

    v6 = sub_22BACEEDC(v5);
    v1 = sub_22BACF6E4(v3, v6);
  }

  return v1 & 1;
}

unint64_t sub_22BACB83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_22BABE0B4(v24, v25);
      v20 = sub_22BB1F65C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t get_enum_tag_for_layout_string_26UIIntelligenceSupportAgent012IntelligencebC0C13ActiveRequest33_F6EEC212C1562732DDB5A4B69A480AD2LLC18CompletionActivityO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_22BACB9F8(void *a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator);
  swift_beginAccess();
  v7 = sub_22BACBB64(a1);
  swift_endAccess();
  if (v7 >= 2)
  {
    swift_getObjectType();
    sub_22BB1F98C();
  }

  if (a2)
  {
    v8 = (a1 + *(_s17AsyncProviderTaskVMa() + 24));
    v10 = *v8;
    v9 = v8[1];
    v11 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncProviderTasks;
    swift_beginAccess();
    v12 = *(v3 + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v11) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_22BACE678(0, *(v12 + 2) + 1, 1, v12);
      *(v3 + v11) = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_22BACE678((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[16 * v15];
    *(v16 + 4) = v10;
    *(v16 + 5) = v9;
    *(v3 + v11) = v12;
    swift_endAccess();
  }

  sub_22BACCB38(v7);
  return *(*(v6 + 72) + 16);
}

uint64_t sub_22BACBB64(void *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_22BACDF20(a1);
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22BAEB618();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = _s17AsyncProviderTaskVMa();
  sub_22BAC1514(v10 + *(*(v11 - 8) + 72) * v6, _s17AsyncProviderTaskVMa);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_22BACC8C4(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_22BACBC28()
{
  sub_22BB1FB7C();

  strcpy(v6, "ConnectionID(");
  HIWORD(v6[1]) = -4864;
  v5 = *v0;
  v1 = sub_22BB1FD7C();
  MEMORY[0x23189D130](v1);

  MEMORY[0x23189D130](8236, 0xE200000000000000);
  v2 = *(type metadata accessor for ConnectionID() + 20);
  sub_22BB1EADC();
  sub_22BACBEBC(&unk_2814250C0, MEMORY[0x277D74708]);
  v3 = sub_22BB1FD7C();
  MEMORY[0x23189D130](v3);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return v6[0];
}

unint64_t sub_22BACBD60(void *a1, uint64_t a2)
{
  v5 = _s17AsyncProviderTaskVMa();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_22BABED78(*(v2 + 48) + v13 * v11, v9, _s17AsyncProviderTaskVMa);
      v14 = *v9;
      sub_22BABEDE0(v9, _s17AsyncProviderTaskVMa);
      if (v14 == *a1)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_22BACBEBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22BACBF04(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v73 = sub_22BB1F2EC();
  v3 = *(v73 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ConnectionID();
  v6 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v70 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = sub_22BB1F45C();
  v8 = *(v79 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22BB1F11C();
  v11 = *(v90 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v66 - v15;
  v16 = sub_22BB1E5FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v86 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0);
  v20 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v78 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v26 = &v66 - v24;
  v27 = *(a1 + 16);
  if (v27)
  {
    v92 = 0;
    v28 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v29 = (v11 + 16);
    v84 = *MEMORY[0x277D74470];
    v82 = (v17 + 8);
    v83 = (v17 + 104);
    v75 = (v11 + 8);
    v74 = (v8 + 8);
    v69 = (v3 + 8);
    v81 = *(v23 + 72);
    v25.n128_u64[0] = 136446722;
    v68 = v25;
    v77 = v16;
    v76 = (v11 + 16);
    v67 = &v66 - v24;
    do
    {
      v91 = v27;
      sub_22BABDB9C(v28, v26, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      v30 = *&v26[*(v85 + 20)];
      v31 = *v29;
      v32 = v88;
      v33 = v90;
      (*v29)(v87, v88, v90);
      v34 = v26;
      v35 = v86;
      sub_22BB1E5EC();
      (*v83)(v35, v84, v16);
      sub_22BABDC04(&qword_281425128, MEMORY[0x277D74480]);
      v36 = v92;
      sub_22BB1F4AC();
      if (v36)
      {
        (*v82)(v35, v16);
        v37 = v80;
        sub_22BB1F42C();
        v38 = v78;
        sub_22BABDB9C(v34, v78, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
        v31(v89, v32, v33);
        v39 = v36;
        v40 = sub_22BB1F44C();
        v41 = sub_22BB1F8BC();

        v42 = v41;
        if (os_log_type_enabled(v40, v41))
        {
          v43 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v95 = v92;
          *v43 = v68.n128_u32[0];
          v44 = v70;
          sub_22BABDB9C(v38, v70, type metadata accessor for ConnectionID);
          v94[0] = 0;
          v94[1] = 0xE000000000000000;
          sub_22BB1FB7C();

          strcpy(v94, "ConnectionID(");
          HIWORD(v94[1]) = -4864;
          v93 = *v44;
          v45 = sub_22BB1FD7C();
          v46 = v40;
          MEMORY[0x23189D130](v45);

          MEMORY[0x23189D130](8236, 0xE200000000000000);
          v47 = *(v71 + 20);
          sub_22BB1EADC();
          sub_22BABDC04(&unk_2814250C0, MEMORY[0x277D74708]);
          v48 = sub_22BB1FD7C();
          MEMORY[0x23189D130](v48);

          MEMORY[0x23189D130](41, 0xE100000000000000);
          v49 = v94[0];
          v50 = v94[1];
          sub_22BABDB3C(v44, type metadata accessor for ConnectionID);
          sub_22BABDB3C(v38, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
          v51 = sub_22BABDC4C(v49, v50, &v95);

          *(v43 + 4) = v51;
          *(v43 + 12) = 2082;
          v52 = v72;
          v53 = v89;
          sub_22BB1F0FC();
          v54 = sub_22BB1F2BC();
          v56 = v55;
          (*v69)(v52, v73);
          (*v75)(v53, v90);
          v57 = sub_22BABDC4C(v54, v56, &v95);

          *(v43 + 14) = v57;
          *(v43 + 22) = 2082;
          v94[0] = v36;
          v58 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEE88, &qword_22BB20A20);
          v59 = sub_22BB1F6AC();
          v61 = sub_22BABDC4C(v59, v60, &v95);

          *(v43 + 24) = v61;
          _os_log_impl(&dword_22BABB000, v46, v42, "agent failed to notify client %{public}s for %{public}s (details: %{public}s)", v43, 0x20u);
          v62 = v92;
          swift_arrayDestroy();
          MEMORY[0x23189DF20](v62, -1, -1);
          v63 = v43;
          v26 = v67;
          MEMORY[0x23189DF20](v63, -1, -1);

          (*v74)(v80, v79);
        }

        else
        {
          v26 = v34;

          (*v75)(v89, v33);
          sub_22BABDB3C(v38, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
          (*v74)(v37, v79);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        v16 = v77;
        v29 = v76;
        if (Strong)
        {
          v65 = *(Strong + 24);
          MEMORY[0x28223BE20](Strong);
          *(&v66 - 2) = v26;
          os_unfair_lock_lock((v65 + 40));
          sub_22BAC1F00((v65 + 16));
          os_unfair_lock_unlock((v65 + 40));

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v92 = 0;
      }

      else
      {
        v92 = 0;
        (*v82)(v35, v16);
        v26 = v34;
      }

      sub_22BABDB3C(v26, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      v28 += v81;
      v27 = v91 - 1;
    }

    while (v91 != 1);
  }
}

unint64_t sub_22BACC8C4(int64_t a1, uint64_t a2)
{
  v26 = _s17AsyncProviderTaskVMa();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v26);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (sub_22BB1FAAC() + 1) & ~v10;
    v14 = *(v4 + 72);
    do
    {
      v15 = v14 * v11;
      sub_22BABE90C(*(a2 + 48) + v14 * v11, v8, _s17AsyncProviderTaskVMa);
      v16 = *(a2 + 40);
      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v8);
      v17 = sub_22BB1FE0C();
      result = sub_22BAC1514(v8, _s17AsyncProviderTaskVMa);
      v18 = v17 & v12;
      if (a1 >= v13)
      {
        if (v18 < v13)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v13)
      {
        goto LABEL_10;
      }

      if (a1 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        result = v19 + v14 * a1;
        if (v14 * a1 < v15 || result >= v19 + v15 + v14)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v14 * a1 != v15)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * a1);
        v22 = (v20 + 8 * v11);
        if (a1 != v11 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          a1 = v11;
        }
      }

LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

uint64_t sub_22BACCB38(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_22BACCB48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1F45C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BAC83C0(0, &qword_2814240F0, 0x277CC1E90);

  v6 = sub_22BACCF2C(a1, a2, 0);
  v7 = sub_22BACCDD8(v6);

  return v7;
}

void *sub_22BACCDD8(void *result)
{
  if (result)
  {
    v1 = result;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
    }

    else
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v5 = [result containingBundleRecord];
      v3 = sub_22BACCDD8();
    }

    return v3;
  }

  return result;
}

id sub_22BACCF2C(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22BB1F66C();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_22BB1E47C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_22BACD014(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v97 = a5;
  v101 = a1;
  v90 = sub_22BB1F45C();
  v89 = *(v90 - 8);
  v9 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v86 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22BB1F52C();
  v87 = *(v88 - 8);
  v11 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v84 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22BB1F56C();
  v83 = *(v85 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v82 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22BB1F5BC();
  v99 = *(v95 - 8);
  v15 = *(v99 + 64);
  MEMORY[0x28223BE20](v95);
  v78 = v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = v76 - v18;
  v94 = sub_22BB1F51C();
  v92 = *(v94 - 8);
  v19 = *(v92 + 64);
  MEMORY[0x28223BE20](v94);
  v79 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v20;
  MEMORY[0x28223BE20](v21);
  v81 = (v76 - v22);
  v23 = _s17AsyncProviderTaskVMa();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v96 = v26;
  v27 = v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v5;
  v28 = *(v5 + 24);
  os_unfair_lock_lock((v28 + 80));
  if (*(v28 + 24) == 1)
  {
    *(v28 + 16) = mach_continuous_time();
    *(v28 + 24) = 0;
  }

  os_unfair_lock_unlock((v28 + 80));
  [v101 setNeedsUserInteractivePriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF180, &qword_22BB216F8);
  v29 = swift_allocObject();
  *(v29 + 24) = 0;
  v30 = (v29 + 24);
  *(v29 + 16) = 0;
  v31 = (v29 + 16);
  v80 = a4;
  sub_22BAC9EBC(a4, v27);
  v32 = *(v24 + 80);
  v33 = swift_allocObject();
  v33[2] = v29;
  v33[3] = a2;
  v34 = v98;
  v33[4] = a3;
  v33[5] = v34;
  v91 = v27;
  sub_22BACDEBC(v27, v33 + ((v32 + 48) & ~v32));
  v107 = sub_22BABEEE0;
  v108 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v104 = 1107296256;
  v105 = sub_22BABEE40;
  v106 = &block_descriptor_15;
  v35 = _Block_copy(&aBlock);
  v36 = a3;
  v100 = v29;

  sub_22BABFC10(a2, a3);

  v37 = v101;
  [v101 setTransitionHandler_];
  _Block_release(v35);
  MEMORY[0x28223BE20](v38);
  v76[-2] = v37;
  os_unfair_lock_lock(v30);
  sub_22BACDE3C(v31);
  os_unfair_lock_unlock(v30);
  if (v97 > 1)
  {
    v67 = v86;
    sub_22BB1F43C();
    sub_22BABFC10(a2, v36);
    v68 = sub_22BB1F44C();
    v69 = sub_22BB1F8BC();
    sub_22BABFC24(a2, v36);
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v102 = v71;
      *v70 = 136446210;
      if (v36 == 1)
      {
        v72 = 0xE400000000000000;
        v73 = 1852399981;
      }

      else
      {
        aBlock = 0;
        v104 = 0xE000000000000000;

        sub_22BB1FB7C();

        aBlock = 0xD000000000000015;
        v104 = 0x800000022BB27230;
        v74 = a2;
        if (!v36)
        {
          sub_22BABFC24(a2, 0);
          v36 = 0xE300000000000000;
          v74 = 7104878;
        }

        MEMORY[0x23189D130](v74, v36);

        MEMORY[0x23189D130](41, 0xE100000000000000);
        v73 = aBlock;
        v72 = v104;
      }

      v75 = sub_22BABDC4C(v73, v72, &v102);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_22BABB000, v68, v69, "reached maximum retry count attempting to fetch window list using FBSDisplayLayoutMonitor for display: %{public}s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x23189DF20](v71, -1, -1);
      MEMORY[0x23189DF20](v70, -1, -1);
    }

    else
    {
    }

    return (*(v89 + 8))(v67, v90);
  }

  else
  {
    v89 = a2;
    v90 = a3;
    v39 = ~v32;
    v40 = v81;
    *v81 = 20;
    v41 = v92;
    v42 = v94;
    (*(v92 + 104))(v40, *MEMORY[0x277D85178], v94);
    v43 = v32;
    if (qword_281424268 != -1)
    {
      swift_once();
    }

    v76[1] = qword_281424270;
    v44 = v78;
    sub_22BB1F59C();
    MEMORY[0x23189CFF0](v44, v40);
    v45 = *(v99 + 8);
    v99 += 8;
    v86 = v45;
    (v45)(v44, v95);
    v46 = v79;
    (*(v41 + 16))(v79, v40, v42);
    sub_22BAC9EBC(v80, v91);
    v47 = (*(v41 + 80) + 24) & ~*(v41 + 80);
    v48 = (v77 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v43 + v50 + 8) & v39;
    v52 = (v96 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    v54 = v42;
    v55 = v53;
    *(v53 + 16) = v100;
    (*(v41 + 32))(v53 + v47, v46, v54);
    v56 = (v55 + v48);
    v57 = v89;
    v58 = v90;
    *v56 = v89;
    v56[1] = v58;
    *(v55 + v49) = v98;
    v59 = v101;
    *(v55 + v50) = v101;
    sub_22BACDEBC(v91, v55 + v51);
    *(v55 + v52) = v97;
    v107 = sub_22BAF2DCC;
    v108 = v55;
    aBlock = MEMORY[0x277D85DD0];
    v104 = 1107296256;
    v105 = sub_22BAC37D4;
    v106 = &block_descriptor_21;
    v60 = _Block_copy(&aBlock);

    sub_22BABFC10(v57, v58);

    v61 = v59;
    v62 = v82;
    sub_22BB1F54C();
    v102 = MEMORY[0x277D84F90];
    sub_22BAC3744(&qword_281424180, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
    sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
    v63 = v84;
    v64 = v88;
    sub_22BB1FA8C();
    v65 = v93;
    MEMORY[0x23189D320](v93, v62, v63, v60);
    _Block_release(v60);

    (*(v87 + 8))(v63, v64);
    (*(v83 + 8))(v62, v85);
    (v86)(v65, v95);
    (*(v92 + 8))(v40, v94);
  }
}

uint64_t sub_22BACDB54()
{
  v1 = _s17AsyncProviderTaskVMa();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 2);

  if (*(v0 + 4) != 1)
  {
  }

  v5 = (v2 + 48) & ~v2;
  v6 = *(v0 + 5);

  v7 = *(v1 + 20);
  v8 = sub_22BB1F2EC();
  (*(*(v8 - 8) + 8))(&v0[v5 + v7], v8);
  v9 = *&v0[v5 + 8 + *(v1 + 24)];

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t sub_22BACDC6C()
{
  v1 = sub_22BB1F51C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = _s17AsyncProviderTaskVMa();
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8) != 1)
  {
  }

  v10 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v7 + v11 + 8) & ~v7;
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v10);

  v15 = v0 + v12;
  v16 = *(v6 + 20);
  v17 = sub_22BB1F2EC();
  (*(*(v17 - 8) + 8))(v15 + v16, v17);
  v18 = *(v15 + *(v6 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v3 | v7 | 7);
}

id sub_22BACDE58(id *a1, uint64_t a2)
{
  result = [objc_opt_self() monitorWithConfiguration_];
  *a1 = result;
  return result;
}

uint64_t sub_22BACDEBC(uint64_t a1, uint64_t a2)
{
  v4 = _s17AsyncProviderTaskVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BACDF20(void *a1)
{
  v3 = *(v1 + 40);
  sub_22BB1FDDC();
  MEMORY[0x23189D810](*a1);
  v4 = sub_22BB1FE0C();

  return sub_22BACBD60(a1, v4);
}

unint64_t sub_22BACDF8C()
{
  result = qword_2814240A0;
  if (!qword_2814240A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814240A0);
  }

  return result;
}

unint64_t sub_22BACDFE0()
{
  v1 = v0;
  sub_22BB1FB7C();

  v7 = *v0;
  v2 = sub_22BB1FD7C();
  MEMORY[0x23189D130](v2);

  MEMORY[0x23189D130](8236, 0xE200000000000000);
  v3 = _s17AsyncProviderTaskVMa();
  v4 = v0 + *(v3 + 20);
  v5 = sub_22BB1F2BC();
  MEMORY[0x23189D130](v5);

  MEMORY[0x23189D130](2564140, 0xE300000000000000);
  MEMORY[0x23189D130](*(v1 + *(v3 + 24)), *(v1 + *(v3 + 24) + 8));
  MEMORY[0x23189D130](10535, 0xE200000000000000);
  return 0xD000000000000012;
}

void sub_22BACE0F4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v6 = sub_22BACCB48(a1, a2);
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v10[4] = sub_22BB0978C;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_22BB08CEC;
    v10[3] = &block_descriptor_15_0;
    v9 = _Block_copy(v10);

    [v7 getDeviceManagementPolicyWithCompletionHandler_];
    _Block_release(v9);
  }

  else
  {
    a3();
  }
}

uint64_t sub_22BACE1F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_22BACE228(uint64_t a1)
{
  if (qword_281424D70 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = *(qword_281425148 + 24);
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock((v1 + 40));
  sub_22BACB55C((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));
}

void sub_22BACE2E0()
{
  v1 = *(_s17AsyncProviderTaskVMa() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_22BACE228(v2);
}

unint64_t sub_22BACE340(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_22BACE4A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22BACE784(v16, a4 & 1);
      v20 = *v5;
      result = sub_22BACE4A8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_22BB1FDBC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_22BAEC790();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;

  return sub_22BABFC10(a2, a3);
}

unint64_t sub_22BACE4A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22BB1FDDC();
  if (a2 == 1)
  {
    MEMORY[0x23189D810](0);
  }

  else
  {
    MEMORY[0x23189D810](1);
    sub_22BB1FDFC();
    if (a2)
    {
      sub_22BB1F6EC();
    }
  }

  v6 = sub_22BB1FE0C();

  return sub_22BADBEF4(a1, a2, v6);
}

void sub_22BACE55C(uint64_t a1)
{
  if (qword_281424D70 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v1 = *(qword_281425148 + 24);
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock((v1 + 40));
  sub_22BACB55C((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));
}

void sub_22BACE618()
{
  v1 = *(_s17AsyncProviderTaskVMa() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_22BACE55C(v2);
}

char *sub_22BACE678(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2A8, &qword_22BB21F70);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_22BACE784(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0A0, &qword_22BB21280);
  v33 = a2;
  result = sub_22BB1FC1C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
        sub_22BABFC10(v34, v22);
      }

      v23 = *(v8 + 40);
      sub_22BB1FDDC();
      if (v22 == 1)
      {
        MEMORY[0x23189D810](0);
      }

      else
      {
        MEMORY[0x23189D810](1);
        sub_22BB1FDFC();
        if (v22)
        {
          sub_22BB1F6EC();
        }
      }

      result = sub_22BB1FE0C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_39;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v8;
  return result;
}

uint64_t sub_22BACEA6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22BACE4A8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22BACEBEC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22BACE4A8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22BB1FDBC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22BAEC620();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;

  return sub_22BABFC10(a2, a3);
}

uint64_t sub_22BACEBEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF098, &qword_22BB21278);
  v33 = a2;
  result = sub_22BB1FC1C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
        sub_22BABFC10(v34, v22);
      }

      v23 = *(v8 + 40);
      sub_22BB1FDDC();
      if (v22 == 1)
      {
        MEMORY[0x23189D810](0);
      }

      else
      {
        MEMORY[0x23189D810](1);
        sub_22BB1FDFC();
        if (v22)
        {
          sub_22BB1F6EC();
        }
      }

      result = sub_22BB1FE0C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_39;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v8;
  return result;
}

uint64_t sub_22BACEEDC(uint64_t a1)
{
  v2 = sub_22BB1E9DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_22BABE0B4(&qword_281425100, MEMORY[0x277D746D8]);
  result = MEMORY[0x23189D290](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 48) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_22BACF13C(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BACF13C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22BB1E9DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22BABE0B4(&qword_281425100, MEMORY[0x277D746D8]);
  v36 = a2;
  v13 = sub_22BB1F61C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22BABE0B4(&unk_2814250F0, MEMORY[0x277D746D8]);
      v23 = sub_22BB1F65C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_22BACF41C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_22BACF41C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_22BB1E9DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22BB1AFCC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22BB1C580(MEMORY[0x277D746D8], &qword_27D8DF638, &qword_22BB22C20);
      goto LABEL_12;
    }

    sub_22BB1D3C4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_22BABE0B4(&qword_281425100, MEMORY[0x277D746D8]);
  v15 = sub_22BB1F61C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_22BABE0B4(&unk_2814250F0, MEMORY[0x277D746D8]);
      v23 = sub_22BB1F65C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22BB1FDAC();
  __break(1u);
  return result;
}

uint64_t sub_22BACF6E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB1E9DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_22BACFADC(&qword_281425100, MEMORY[0x277D746D8]);
      v28 = sub_22BB1F61C();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_22BACFADC(&unk_2814250F0, MEMORY[0x277D746D8]);
        v33 = sub_22BB1F65C();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BACFA94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BACFADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BACFB24(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_22BB1F2EC();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1F45C();
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BB1F52C();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BB1F56C();
  v48 = *(v14 - 8);
  v49 = v14;
  v15 = *(v48 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BB1F53C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22BAD01B0(a1);
  if (v23)
  {
    v24 = v23;
    v25 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timeoutTimer;
    if (*(v23 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timeoutTimer))
    {
      v26 = *(v23 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timeoutTimer);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_22BB1F98C();
      swift_unknownObjectRelease();
      v27 = *(v24 + v25);
    }

    *(v24 + v25) = 0;
    swift_unknownObjectRelease();
    sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
    (*(v19 + 104))(v22, *MEMORY[0x277D851B8], v18);
    v39 = sub_22BB1F94C();
    (*(v19 + 8))(v22, v18);
    v40 = swift_allocObject();
    v41 = v47;
    *(v40 + 16) = v24;
    *(v40 + 24) = v41;
    aBlock[4] = sub_22BAD0598;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22BAC37D4;
    aBlock[3] = &block_descriptor_38;
    v42 = _Block_copy(aBlock);

    sub_22BB1F54C();
    v54 = MEMORY[0x277D84F90];
    sub_22BAC36FC(&qword_281424180, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
    sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
    v43 = v51;
    sub_22BB1FA8C();
    MEMORY[0x23189D350](0, v17, v13, v42);
    _Block_release(v42);

    (*(v50 + 8))(v13, v43);
    (*(v48 + 8))(v17, v49);
  }

  else
  {
    v28 = v7;
    v30 = v45;
    v29 = v46;
    sub_22BB1F43C();
    (*(v52 + 16))(v6, a1, v53);
    v31 = sub_22BB1F44C();
    v32 = sub_22BB1F8BC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136446210;
      v35 = sub_22BB1F2BC();
      v37 = v36;
      (*(v52 + 8))(v6, v53);
      v38 = sub_22BABDC4C(v35, v37, aBlock);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_22BABB000, v31, v32, "invalid request to complete %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x23189DF20](v34, -1, -1);
      MEMORY[0x23189DF20](v33, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v6, v53);
    }

    return (*(v30 + 8))(v29, v28);
  }
}

uint64_t sub_22BAD01B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_22BACB688(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22BAEC3A0();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_22BB1F2EC();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_22BAD0278(v6, v9);
  *v2 = v9;
  return v12;
}

unint64_t sub_22BAD0278(int64_t a1, uint64_t a2)
{
  v43 = sub_22BB1F2EC();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_22BB1FAAC();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_22BAC36FC(&qword_281425070, MEMORY[0x277D74940]);
      v26 = sub_22BB1F61C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_22BAD0598()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_22BAD06F4(v1);
}

void *sub_22BAD05C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF308, &qword_22BB21FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22BAD06F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22BB1F45C();
  v146 = *(v4 - 8);
  v147 = v4;
  v5 = *(v146 + 64);
  MEMORY[0x28223BE20](v4);
  v125 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v149 = &v120 - v8;
  v135 = sub_22BB1F35C();
  v134 = *(v135 - 8);
  v9 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v123 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v127 = &v120 - v12;
  v133 = sub_22BB1F3AC();
  v132 = *(v133 - 8);
  v13 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v122 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v148 = &v120 - v16;
  v17 = sub_22BB1F5BC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_22BB1F51C();
  v137 = *(v153 - 8);
  v22 = *(v137 + 64);
  MEMORY[0x28223BE20](v153);
  v124 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v130 = &v120 - v25;
  MEMORY[0x28223BE20](v26);
  v129 = &v120 - v27;
  MEMORY[0x28223BE20](v28);
  v131 = &v120 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v120 - v31;
  v152 = sub_22BB1F2EC();
  v136 = *(v152 - 8);
  v33 = *(v136 + 64);
  MEMORY[0x28223BE20](v152);
  v121 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v128 = &v120 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v120 - v38;
  v40 = (v1 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler);
  v145 = *(v1 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler);
  if (v145)
  {
    v142 = v40[1];
    *v40 = 0;
    v40[1] = 0;
    v41 = *(v1 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator);
    v42 = *(v2 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_parameters + 96);
    v43 = *(v2 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_parameters + 80);
    v154 = *(v2 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_parameters + 64);
    v155 = v43;
    sub_22BAD163C(v2 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request, &v154, v42);
    v144 = v44;
    swift_beginAccess();
    v143 = *(v41 + 64);

    sub_22BAE1FD4(a1, &v154);
    v140 = *(&v154 + 1);
    v141 = v154;
    v138 = *(&v155 + 1);
    v139 = v155;
    sub_22BAEECF4(0, 0);
    sub_22BB1F0FC();
    sub_22BB1F59C();
    v151 = v32;
    sub_22BB1F5AC();
    v47 = *(v18 + 8);
    v45 = (v18 + 8);
    v46 = v47;
    v47(v21, v17);
    v126 = *(v2 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_signpostStartTime);
    v150 = v39;
    if (a1)
    {
      v124 = v45;
      v125 = v17;
      sub_22BB1F38C();
      sub_22BB1F2DC();
      v48 = v127;
      sub_22BB1F36C();
      sub_22BACDF8C();
      sub_22BACCE68();
      sub_22BAD162C(v49);
      v50 = sub_22BB1F39C();
      v51 = sub_22BB1F9BC();
      if (sub_22BB1FA0C())
      {
        v52 = swift_slowAlloc();
        *v52 = 134217984;
        *(v52 + 4) = v126;
        v53 = sub_22BB1F34C();
        _os_signpost_emit_with_name_impl(&dword_22BABB000, v50, v51, v53, "Request", "%{public, signpost.description:begin_time}llu TimedOut", v52, 0xCu);
        MEMORY[0x23189DF20](v52, -1, -1);
      }

      (*(v134 + 8))(v48, v135);
      (*(v132 + 8))(v148, v133);
      sub_22BB1F0DC();
      v54 = v131;
      sub_22BB1F5AC();
      v46(v21, v125);
      sub_22BB1F43C();
      v55 = v136;
      v56 = v128;
      (*(v136 + 16))(v128, v150, v152);
      v57 = v137;
      v58 = *(v137 + 16);
      v59 = v129;
      v60 = v153;
      v58(v129, v151, v153);
      v61 = v130;
      v58(v130, v54, v60);
      v62 = sub_22BB1F44C();
      v63 = sub_22BB1F8CC();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v154 = v65;
        *v64 = 136446722;
        LODWORD(v135) = v63;
        v66 = sub_22BB1F2BC();
        v68 = v67;
        v69 = *(v55 + 8);
        v136 = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v148 = v69;
        (v69)(v56, v152);
        v70 = sub_22BABDC4C(v66, v68, &v154);

        *(v64 + 4) = v70;
        *(v64 + 12) = 2082;
        v71 = sub_22BB1F4FC();
        v73 = v72;
        v74 = *(v57 + 8);
        v137 = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v74(v59, v153);
        v75 = sub_22BABDC4C(v71, v73, &v154);

        *(v64 + 14) = v75;
        *(v64 + 22) = 2082;
        v76 = sub_22BB1F4FC();
        v78 = v77;
        v74(v61, v153);
        v79 = sub_22BABDC4C(v76, v78, &v154);

        *(v64 + 24) = v79;
        _os_log_impl(&dword_22BABB000, v62, v135, "completed %{public}s in %{public}s (timed out after %{public}s)", v64, 0x20u);
        swift_arrayDestroy();
        v80 = v65;
        v81 = v152;
        MEMORY[0x23189DF20](v80, -1, -1);
        v82 = v64;
        v60 = v153;
        MEMORY[0x23189DF20](v82, -1, -1);

        (*(v146 + 8))(v149, v147);
        v149 = v74;
        v74(v131, v60);
      }

      else
      {

        v112 = *(v57 + 8);
        v137 = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v112(v61, v60);
        v112(v59, v60);
        v113 = *(v55 + 8);
        v136 = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v81 = v152;
        v148 = v113;
        (v113)(v56, v152);
        (*(v146 + 8))(v149, v147);
        v149 = v112;
        v112(v54, v60);
      }
    }

    else
    {
      v83 = v122;
      sub_22BB1F38C();
      sub_22BB1F2DC();
      v84 = v123;
      sub_22BB1F36C();
      sub_22BACDF8C();
      sub_22BACCE68();
      sub_22BAD162C(v85);
      v86 = sub_22BB1F39C();
      v87 = sub_22BB1F9BC();
      if (sub_22BB1FA0C())
      {
        v88 = swift_slowAlloc();
        *v88 = 134217984;
        *(v88 + 4) = v126;
        v89 = sub_22BB1F34C();
        _os_signpost_emit_with_name_impl(&dword_22BABB000, v86, v87, v89, "Request", "%{public, signpost.description:begin_time}llu", v88, 0xCu);
        MEMORY[0x23189DF20](v88, -1, -1);
      }

      (*(v134 + 8))(v84, v135);
      (*(v132 + 8))(v83, v133);
      v90 = v125;
      sub_22BB1F43C();
      v91 = v136;
      v92 = v121;
      v81 = v152;
      (*(v136 + 16))(v121, v39, v152);
      v93 = v137;
      v94 = v124;
      v60 = v153;
      (*(v137 + 16))(v124, v151, v153);
      v95 = sub_22BB1F44C();
      v96 = sub_22BB1F8CC();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v154 = v98;
        *v97 = 136446466;
        v99 = sub_22BB1F2BC();
        v100 = v92;
        v102 = v101;
        v103 = *(v91 + 8);
        v136 = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v148 = v103;
        (v103)(v100, v152);
        v104 = sub_22BABDC4C(v99, v102, &v154);

        *(v97 + 4) = v104;
        *(v97 + 12) = 2082;
        v105 = sub_22BB1F4FC();
        v107 = v106;
        v108 = *(v93 + 8);
        v137 = (v93 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v149 = v108;
        (v108)(v94, v153);
        v109 = sub_22BABDC4C(v105, v107, &v154);

        *(v97 + 14) = v109;
        _os_log_impl(&dword_22BABB000, v95, v96, "completed %{public}s in %{public}s", v97, 0x16u);
        swift_arrayDestroy();
        v110 = v98;
        v81 = v152;
        MEMORY[0x23189DF20](v110, -1, -1);
        v111 = v97;
        v60 = v153;
        MEMORY[0x23189DF20](v111, -1, -1);
      }

      else
      {

        v114 = *(v93 + 8);
        v137 = (v93 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v149 = v114;
        (v114)(v94, v60);
        v115 = *(v91 + 8);
        v136 = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v148 = v115;
        (v115)(v92, v81);
      }

      (*(v146 + 8))(v90, v147);
    }

    v116 = v141;
    v117 = v140;
    *&v154 = v141;
    *(&v154 + 1) = v140;
    *&v155 = v139;
    *(&v155 + 1) = v138;
    v156 = v144;
    v157 = v143;
    sub_22BAEE694(v141, v140);

    v118 = v145;
    v145(&v154);
    sub_22BAD162C(v118);
    sub_22BAEECF4(v154, *(&v154 + 1));

    (v149)(v151, v60);
    (v148)(v150, v81);
    sub_22BAEECF4(v116, v117);
  }

  else
  {
    result = sub_22BB1F15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22BAD162C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_22BAD163C(uint64_t a1, __int128 *a2, int a3)
{
  v4 = v3;
  v117 = a3;
  v118 = *v4;
  v7 = sub_22BB1F35C();
  v113 = *(v7 - 8);
  v8 = *(v113 + 64);
  MEMORY[0x28223BE20](v7);
  v125 = v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_22BB1F3AC();
  v10 = *(v124 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v124);
  v112 = v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v123 = v103 - v14;
  v15 = type metadata accessor for Snapshotter();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v116 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for FragmentCollator.RootElement(0);
  v107 = *(v109 - 8);
  v18 = *(v107 + 64);
  MEMORY[0x28223BE20](v109);
  v129 = (v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = sub_22BB1E96C();
  v130 = *(v106 - 8);
  v20 = *(v130 + 64);
  MEMORY[0x28223BE20](v106);
  v108 = v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_22BB1F45C();
  v126 = *(v128 - 8);
  v22 = *(v126 + 64);
  MEMORY[0x28223BE20](v128);
  v24 = v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a2;
  v114 = a2[1];
  v115 = v25;
  v110 = mach_continuous_time();
  v122 = sub_22BAD2490();
  v26 = *(*(v4 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_managementPolicyProvider) + OBJC_IVAR____TtC26UIIntelligenceSupportAgent24ManagementPolicyProvider_state);
  os_unfair_lock_lock((v26 + 64));
  sub_22BAD34D0((v26 + 16), aBlock);
  os_unfair_lock_unlock((v26 + 64));
  v27 = aBlock[0];

  v29 = sub_22BAD3820(v28);
  v127 = v27;

  v30 = sub_22BAD3CA8(v29);

  if (*(v30 + 16))
  {
    sub_22BB1F43C();

    v31 = sub_22BB1F44C();
    v32 = sub_22BB1F8CC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v104 = v4;
      v34 = v33;
      v121 = swift_slowAlloc();
      aBlock[0] = v121;
      *v34 = 136446210;
      v35 = MEMORY[0x23189D210](v30, MEMORY[0x277D837D0]);
      v105 = v10;
      v37 = v7;
      v38 = a1;
      v39 = sub_22BABDC4C(v35, v36, aBlock);
      v10 = v105;

      *(v34 + 4) = v39;
      a1 = v38;
      v7 = v37;
      _os_log_impl(&dword_22BABB000, v31, v32, "collection prohibited due to management policy: %{public}s", v34, 0xCu);
      v40 = v121;
      __swift_destroy_boxed_opaque_existential_0(v121);
      MEMORY[0x23189DF20](v40, -1, -1);
      v41 = v34;
      v4 = v104;
      MEMORY[0x23189DF20](v41, -1, -1);
    }

    (*(v126 + 8))(v24, v128);
  }

  v42 = *(v4 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider + 24);
  v120 = (v4 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider);
  v43 = *(*__swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_windowVisibilityProvider), v42) + 24);
  os_unfair_lock_lock((v43 + 80));
  sub_22BAD3F30((v43 + 16), aBlock);
  os_unfair_lock_unlock((v43 + 80));
  v44 = aBlock[0];
  swift_beginAccess();
  v45 = *(v4 + 24);

  v121 = v44;
  v126 = sub_22BAD427C(v44, v45);

  v46 = sub_22BB1F00C();
  v47 = 0;
  v119 = v7;
  v111 = v30;
  if (v46)
  {
    v48 = v122;
    v49 = *(v122 + 16);
    v50 = MEMORY[0x277D84F90];
    if (v49)
    {
      v103[1] = a1;
      v104 = v4;
      v105 = v10;
      aBlock[0] = MEMORY[0x277D84F90];
      sub_22BAD4564(0, v49, 0);
      v51 = v48 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
      v128 = *(v107 + 72);
      v50 = aBlock[0];
      v52 = (v130 + 32);
      v53 = v109;
      v54 = v106;
      v55 = v108;
      do
      {
        v56 = v129;
        sub_22BABE3D4(v51, v129, type metadata accessor for FragmentCollator.RootElement);
        v57 = *v52;
        (*v52)(v55, v56 + *(v53 + 20), v54);
        aBlock[0] = v50;
        v59 = *(v50 + 16);
        v58 = *(v50 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_22BAD4564(v58 > 1, v59 + 1, 1);
          v53 = v109;
          v50 = aBlock[0];
        }

        *(v50 + 16) = v59 + 1;
        v57((v50 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v59), v55, v54);
        v51 += v128;
        --v49;
      }

      while (v49);
      v10 = v105;
      v4 = v104;
    }

    v47 = sub_22BAD45C8(v121, v50);
  }

  v60 = v120;
  v61 = *(*__swift_project_boxed_opaque_existential_1(v120, v120[3]) + 24);
  os_unfair_lock_lock((v61 + 80));
  v62 = *(v61 + 56);

  os_unfair_lock_unlock((v61 + 80));
  v63 = 0;
  v64 = 0;
  v65 = 1 << *(v62 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(v62 + 64);
  v68 = (v65 + 63) >> 6;
  if (v67)
  {
    while (1)
    {
      v69 = v63;
LABEL_21:
      v70 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
      v71 = *(*(v62 + 56) + (v70 | (v69 << 6)));
      if (v71 > v64)
      {
        v64 = v71;
      }

      if (!v67)
      {
        goto LABEL_17;
      }
    }
  }

  while (1)
  {
LABEL_17:
    v69 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v69 >= v68)
    {
      break;
    }

    v67 = *(v62 + 64 + 8 * v69);
    ++v63;
    if (v67)
    {
      v63 = v69;
      goto LABEL_21;
    }
  }

  swift_beginAccess();
  v72 = *(v4 + 56);

  v73 = sub_22BB1EF3C();
  v74 = *(v4 + 32);
  v75 = *(*__swift_project_boxed_opaque_existential_1(v60, v60[3]) + 24);
  os_unfair_lock_lock((v75 + 80));
  v76 = *(v75 + 64);

  os_unfair_lock_unlock((v75 + 80));
  v77 = sub_22BAD7298(v76);

  v78 = v116;
  sub_22BABE3D4(v4 + OBJC_IVAR____TtC26UIIntelligenceSupportAgent16FragmentCollator_snapshotter, v116, type metadata accessor for Snapshotter);
  v79 = type metadata accessor for FragmentCollator.FragmentResolutionContext(0);
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  v82 = swift_allocObject();
  *(v82 + 16) = v72;
  *(v82 + 24) = v127;
  *(v82 + 32) = v73 & 1;
  *(v82 + 33) = v74;
  *(v82 + 40) = v126;
  *(v82 + 48) = v47;
  *(v82 + 72) = v114;
  *(v82 + 56) = v115;
  *(v82 + 88) = v117 & 1;
  *(v82 + 89) = 0;
  *(v82 + 90) = v64;
  *(v82 + 96) = v77;
  sub_22BABE43C(v78, v82 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent16FragmentCollatorP33_6BE94AAF2C91BC919D389B27AF47AB7925FragmentResolutionContext_snapshotter, type metadata accessor for Snapshotter);
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  v130 = v83 + 16;
  v84 = swift_allocObject();
  v85 = v122;
  v84[2] = v83;
  v84[3] = v85;
  v86 = v118;
  v84[4] = v82;
  v84[5] = v86;
  v87 = objc_opt_self();

  if ([v87 isMainThread])
  {
    sub_22BAD7618(v83, v85, v82, v86);

    v128 = 0;
    v129 = 0;
    v88 = v119;
    goto LABEL_29;
  }

  sub_22BAD7598();
  v89 = sub_22BB1F91C();
  v90 = swift_allocObject();
  v129 = sub_22BAD75E4;
  *(v90 + 16) = sub_22BAD75E4;
  *(v90 + 24) = v84;
  aBlock[4] = sub_22BAD75F0;
  aBlock[5] = v90;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BAD793C;
  aBlock[3] = &block_descriptor_5;
  v91 = _Block_copy(aBlock);

  dispatch_sync(v89, v91);

  _Block_release(v91);
  LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

  v88 = v119;
  if (v89)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v128 = v84;
LABEL_29:
  sub_22BB1F38C();
  v92 = v112;
  sub_22BB1F38C();
  sub_22BB1F39C();

  v93 = v125;
  sub_22BB1F33C();
  v94 = *(v10 + 8);
  v94(v92, v124);
  sub_22BACDF8C();
  sub_22BACCE68();
  sub_22BAD162C(v95);
  v96 = sub_22BB1F39C();
  v97 = sub_22BB1F9BC();
  if (sub_22BB1FA0C())
  {
    v98 = v88;
    v99 = swift_slowAlloc();
    *v99 = 134217984;
    *(v99 + 4) = v110;
    v100 = sub_22BB1F34C();
    _os_signpost_emit_with_name_impl(&dword_22BABB000, v96, v97, v100, "ResolveHierarchy", "%{public, signpost.description:begin_time}llu", v99, 0xCu);
    v101 = v99;
    v88 = v98;
    v93 = v125;
    MEMORY[0x23189DF20](v101, -1, -1);
  }

  (*(v113 + 8))(v93, v88);
  v94(v123, v124);
  v102 = v130;
  swift_beginAccess();
  if (*v102)
  {

    sub_22BAD162C(v129);
    return;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_22BAD2394()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22BAD23CC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t type metadata accessor for Snapshotter()
{
  result = qword_281424AB8;
  if (!qword_281424AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

size_t sub_22BAD2490()
{
  v77 = sub_22BB1E93C();
  v1 = *(v77 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v77);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for FragmentCollator.RootElement(0);
  v67 = *(v78 - 8);
  v5 = *(v67 + 64);
  v6 = MEMORY[0x28223BE20](v78);
  v71 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v53 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v53 - v11);
  MEMORY[0x28223BE20](v10);
  v14 = (&v53 - v13);
  v15 = sub_22BB1EA5C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v69 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v64 = v0;
  v19 = *(v0 + 16);
  v20 = MEMORY[0x277D84F90];
  v60 = *(v19 + 16);
  if (!v60)
  {
    return v20;
  }

  v59 = v19 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v58 = v16 + 16;
  v76 = (v1 + 88);
  v75 = *MEMORY[0x277D74668];
  v73 = *MEMORY[0x277D74640];
  v74 = (v1 + 8);
  v54 = (v16 + 8);

  v22 = 0;
  v65 = v14;
  v57 = v15;
  v56 = v16;
  v55 = result;
  while (1)
  {
    if (v22 >= *(result + 16))
    {
      goto LABEL_38;
    }

    v23 = *(v16 + 72);
    v62 = v22;
    (*(v16 + 16))(v69, v59 + v23 * v22, v15);
    v24 = sub_22BB1E9FC();
    v25 = *(v24 + 16);
    if (v25)
    {
      v79 = MEMORY[0x277D84F90];
      sub_22BAD2D70(0, v25, 0);
      v26 = v79;
      v72 = sub_22BB1E96C();
      v27 = *(v72 - 8);
      v28 = *(v27 + 16);
      v27 += 16;
      v70 = v28;
      v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
      v61 = v24;
      v30 = v24 + v29;
      v68 = v27;
      v66 = *(v27 + 56);
      do
      {
        v70(v14 + *(v78 + 20), v30, v72);
        sub_22BB1E9BC();
        v31 = v82;
        v14[1] = v81;
        v14[2] = v31;
        *v14 = v80;
        v79 = v26;
        v33 = *(v26 + 2);
        v32 = *(v26 + 3);
        if (v33 >= v32 >> 1)
        {
          sub_22BAD2D70(v32 > 1, v33 + 1, 1);
          v26 = v79;
        }

        *(v26 + 2) = v33 + 1;
        sub_22BABE43C(v14, &v26[((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v33], type metadata accessor for FragmentCollator.RootElement);
        v30 += v66;
        --v25;
      }

      while (v25);
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v68 = *(v26 + 2);
    v61 = v26;
    if (v68)
    {
      break;
    }

LABEL_3:
    v22 = v62 + 1;
    v15 = v57;
    (*v54)(v69, v57);

    v16 = v56;
    result = v55;
    if (v22 == v60)
    {

      return v20;
    }
  }

  v34 = 0;
  v70 = ((*(v67 + 80) + 32) & ~*(v67 + 80));
  v66 = v70 + v26;
  v35 = *(v67 + 72);
  while (1)
  {
    v72 = v34;
    sub_22BABE3D4(&v66[v35 * v34], v12, type metadata accessor for FragmentCollator.RootElement);
    v37 = *(v20 + 16);
    if (v37)
    {
      break;
    }

LABEL_30:
    sub_22BABE3D4(v12, v71, type metadata accessor for FragmentCollator.RootElement);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_22BAD2F90(0, *(v20 + 16) + 1, 1, v20);
    }

    v52 = *(v20 + 16);
    v51 = *(v20 + 24);
    if (v52 >= v51 >> 1)
    {
      v20 = sub_22BAD2F90(v51 > 1, v52 + 1, 1, v20);
    }

    v14 = v65;
    v36 = v72;
    *(v20 + 16) = v52 + 1;
    sub_22BABE43C(v71, v70 + v20 + v52 * v35, type metadata accessor for FragmentCollator.RootElement);
LABEL_15:
    v34 = v36 + 1;
    sub_22BAD2FB8(v12, type metadata accessor for FragmentCollator.RootElement);
    if (v34 == v68)
    {
      goto LABEL_3;
    }
  }

  v38 = 0;
  v39 = v70;
  while (1)
  {
    v40 = *(v39 + v20);
    v41 = *(v39 + v20 + 32);
    v84 = *(v39 + v20 + 16);
    v85 = v41;
    v83 = v40;
    v42 = v12[1];
    v86 = *v12;
    v87 = v42;
    v88 = v12[2];
    if ((sub_22BB1F8DC() & 1) == 0)
    {
      goto LABEL_19;
    }

    v43 = *(v78 + 20);
    sub_22BB1E94C();
    v44 = v77;
    v45 = (*v76)(v4, v77);
    if (v45 == v75)
    {
      break;
    }

    if (v45 == v73)
    {
      goto LABEL_24;
    }

    (*v74)(v4, v44);
LABEL_19:
    ++v38;
    v39 = (v39 + v35);
    if (v37 == v38)
    {
      goto LABEL_30;
    }
  }

  (*v74)(v4, v44);
LABEL_24:
  result = sub_22BB1E79C();
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v38 >= *(v20 + 16))
  {
    __break(1u);
  }

  else
  {
    v46 = v63;
    sub_22BABE3D4(v39 + v20, v63, type metadata accessor for FragmentCollator.RootElement);
    v47 = v46 + *(v78 + 20);
    v48 = sub_22BB1E6EC();
    sub_22BAD2FB8(v46, type metadata accessor for FragmentCollator.RootElement);
    v79 = v48;
    v49 = sub_22BB1E6EC();
    sub_22BAD3018(v49, &v79);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22BB10E24(v20);
      v20 = result;
    }

    if (v38 < *(v20 + 16))
    {
      v50 = v39 + v20 + *(v78 + 20);
      sub_22BB1E6FC();
      v14 = v65;
      v36 = v72;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}
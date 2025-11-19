unint64_t sub_1DA841820()
{
  result = qword_1ECBD53E0;
  if (!qword_1ECBD53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD53E0);
  }

  return result;
}

uint64_t sub_1DA841874(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DA8418C8()
{
  v1 = v0 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1DA841918(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1DA841984(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1DA841A24;
}

void sub_1DA841A24(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t UserNotificationsVendorClient.__allocating_init(serviceName:configureXPC:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  UserNotificationsVendorClient.init(serviceName:configureXPC:)(a1, a2, a3);
  return v9;
}

uint64_t UserNotificationsVendorClient.init(serviceName:configureXPC:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  sub_1DA93FB14();
  v7 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F0, &qword_1DA95AFB0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v3 + v7) = v8;
  *(v3 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_actionStreamContinuation;
  v10 = MEMORY[0x1E69E7CC0];
  *(v3 + v9) = sub_1DA8485B4(MEMORY[0x1E69E7CC0]);
  v11 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_transactionStreamContinuation;
  *(v3 + v11) = sub_1DA8487E0(v10);
  v12 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_historicalNotificationsContinuations;
  *(v3 + v12) = sub_1DA8487E0(v10);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  if (a3)
  {
    sub_1DA841C00();
  }

  else
  {
    v13 = *(v3 + 32);
    *(v3 + 32) = 0;
  }

  return v3;
}

void sub_1DA841C00()
{
  v1 = v0;
  v2 = sub_1DA940804();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA9405E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  if (*(v0 + 4))
  {

    sub_1DA940634();
  }

  sub_1DA940674();
  v9 = *(v0 + 2);
  v10 = *(v0 + 3);
  v11 = sub_1DA7AC344();

  v28[1] = v11;
  sub_1DA940FD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5588, &unk_1DA95D880);
  v12 = *(v7 + 72);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DA9596E0;
  sub_1DA9405D4();
  aBlock[0] = v14;
  sub_1DA84A9BC(&unk_1EE110D10, MEMORY[0x1E69E8498]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5598, &qword_1DA95B230);
  sub_1DA84AA04();
  sub_1DA9411D4();
  v15 = sub_1DA9405C4();
  v16 = *(v1 + 4);
  *(v1 + 4) = v15;

  sub_1DA8423C4();
  swift_beginAccess();
  if (!notify_is_valid_token(v1[10]))
  {
    v18 = v29;
    v17 = v30;
    (*(v29 + 104))(v5, *MEMORY[0x1E69E7F90], v30);
    v19 = sub_1DA941014();
    (*(v18 + 8))(v5, v17);
    v20 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1DA84AA68;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA857960;
    aBlock[3] = &block_descriptor_3;
    v21 = _Block_copy(aBlock);

    v22 = sub_1DA940A94();
    swift_beginAccess();
    v23 = notify_register_dispatch((v22 + 32), v1 + 10, v19, v21);
    swift_endAccess();
    _Block_release(v21);

    if (v23)
    {
      if (qword_1EE110DD0 != -1)
      {
        swift_once();
      }

      v24 = sub_1DA9405A4();
      __swift_project_value_buffer(v24, qword_1EE110DE0);
      v25 = sub_1DA940584();
      v26 = sub_1DA940F14();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 67109120;
        *(v27 + 4) = v23;
        _os_log_impl(&dword_1DA7A9000, v25, v26, "notify_register_dispatch failed: %u", v27, 8u);
        MEMORY[0x1E12739F0](v27, -1, -1);
      }
    }
  }
}

uint64_t sub_1DA842250()
{
  if (qword_1EE110DD0 != -1)
  {
    swift_once();
  }

  v0 = sub_1DA9405A4();
  __swift_project_value_buffer(v0, qword_1EE110DE0);
  v1 = sub_1DA940584();
  v2 = sub_1DA940F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1DA7AE6E8(0xD00000000000002ALL, 0x80000001DA951D30, &v6);
    _os_log_impl(&dword_1DA7A9000, v1, v2, "Received: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x1E12739F0](v4, -1, -1);
    MEMORY[0x1E12739F0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DA841C00();
  }

  return result;
}

void sub_1DA8423C4()
{
  v1 = v0;
  v2 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  if (v10)
  {
    swift_allocObject();
    swift_weakInit();

    sub_1DA940604();

    sub_1DA940644();
    swift_storeEnumTagMultiPayload();
    v11 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_uuid;
    v12 = *(v6 + 24);
    v13 = sub_1DA93FB24();
    (*(*(v13 - 8) + 16))(&v9[v12], v1 + v11, v13);
    sub_1DA849F78(v5, v9, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
    v14 = &v9[*(v6 + 20)];
    sub_1DA93FB14();
    sub_1DA849FE0(v5, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
    sub_1DA84A9BC(&qword_1EE113F68, type metadata accessor for UserNotificationsVendorClientTransaction);
    sub_1DA940624();
    sub_1DA849FE0(v9, type metadata accessor for UserNotificationsVendorClientTransaction);
    if (qword_1EE110DD0 != -1)
    {
      swift_once();
    }

    v19 = sub_1DA9405A4();
    __swift_project_value_buffer(v19, qword_1EE110DE0);

    v20 = sub_1DA940584();
    v21 = sub_1DA940F34();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v10;
      v32[0] = v23;
      *v22 = 136315394;
      sub_1DA940674();

      v24 = sub_1DA940A74();
      v26 = sub_1DA7AE6E8(v24, v25, v32);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      v31 = v1;
      type metadata accessor for UserNotificationsVendorClient();

      v27 = sub_1DA940A74();
      v29 = sub_1DA7AE6E8(v27, v28, v32);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_1DA7A9000, v20, v21, "configureSession() session: %s for %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v23, -1, -1);
      MEMORY[0x1E12739F0](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EE110DD0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DA9405A4();
    __swift_project_value_buffer(v15, qword_1EE110DE0);
    v30 = sub_1DA940584();
    v16 = sub_1DA940F14();
    if (os_log_type_enabled(v30, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DA7A9000, v30, v16, "configureSession(): No XPC listener found", v17, 2u);
      MEMORY[0x1E12739F0](v17, -1, -1);
    }

    v18 = v30;
  }
}

double sub_1DA842A08@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1DA9407A4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DA84A9BC(&unk_1EE1141D0, type metadata accessor for UserNotificationsVendorTransaction);
    sub_1DA940794();
    sub_1DA842E20(v8);

    sub_1DA849FE0(v8, type metadata accessor for UserNotificationsVendorTransaction);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1DA842E20(NSObject *a1)
{
  v283 = a1;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD54D0, &qword_1DA95B158);
  isa = v279[-1].isa;
  v1 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v279);
  v278 = &v262 - v2;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5960, &qword_1DA95B160);
  v275 = *(v288 - 1);
  v3 = v275[8].isa;
  MEMORY[0x1EEE9AC00](v288);
  v286 = &v262 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54E0, &qword_1DA95B168);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v274 = &v262 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v273 = (&v262 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54E8, &qword_1DA95B170);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v272 = (&v262 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v271 = &v262 - v14;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54F0, &qword_1DA95B178);
  v270 = *(v281 - 8);
  v15 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v281);
  v280 = &v262 - v16;
  v266 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v17 = *(*(v266 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v266);
  v268 = &v262 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v264 = &v262 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v265 = &v262 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v289 = &v262 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v263 = &v262 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = (&v262 - v29);
  MEMORY[0x1EEE9AC00](v28);
  v262 = &v262 - v31;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
  v276 = *(v277 - 8);
  v32 = *(v276 + 64);
  v33 = MEMORY[0x1EEE9AC00](v277);
  v287 = &v262 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = (&v262 - v36);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v262 - v38;
  v40 = sub_1DA93FB24();
  v285 = *(v40 - 8);
  v41 = *(v285 + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v284 = &v262 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v262 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v262 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = (&v262 - v51);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v262 - v53;
  v55 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v58 = (&v262 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DA849F78(v283, v58, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v282 = v30;
  if (EnumCaseMultiPayload)
  {
    v289 = v40;
    if (EnumCaseMultiPayload == 1)
    {
      v60 = v58[1];
      v292 = *v58;
      v293 = v60;
      v61 = v58[3];
      v294 = v58[2];
      v295 = v61;
      v62 = *(v267 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      *(&v262 - 2) = sub_1DA849F58;
      *(&v262 - 1) = v63;
      os_unfair_lock_lock(v62 + 4);
      sub_1DA84AA70(v291);
      os_unfair_lock_unlock(v62 + 4);
      v281 = *&v291[0];
      if (qword_1EE110DD0 != -1)
      {
        goto LABEL_75;
      }

      while (1)
      {
        v64 = sub_1DA9405A4();
        __swift_project_value_buffer(v64, qword_1EE110DE0);
        v65 = v268;
        sub_1DA849F78(v283, v268, type metadata accessor for UserNotificationsVendorTransaction);

        v66 = sub_1DA940584();
        v67 = sub_1DA940F34();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *&v291[0] = v69;
          *v68 = 136315394;
          sub_1DA849F78(v65, v282, type metadata accessor for UserNotificationsVendorTransaction);
          v70 = sub_1DA940A74();
          v72 = v71;
          sub_1DA849FE0(v65, type metadata accessor for UserNotificationsVendorTransaction);
          v73 = sub_1DA7AE6E8(v70, v72, v291);

          *(v68 + 4) = v73;
          *(v68 + 12) = 2080;
          sub_1DA84A9BC(&qword_1EE115A40, MEMORY[0x1E69695A8]);
          v74 = sub_1DA940984();
          v76 = sub_1DA7AE6E8(v74, v75, v291);

          *(v68 + 14) = v76;
          _os_log_impl(&dword_1DA7A9000, v66, v67, "Received action %s sending to: %s", v68, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v69, -1, -1);
          MEMORY[0x1E12739F0](v68, -1, -1);
        }

        else
        {

          sub_1DA849FE0(v65, type metadata accessor for UserNotificationsVendorTransaction);
        }

        v148 = v274;
        v149 = v273;
        v150 = 0;
        v151 = *(v281 + 64);
        v271 = (v281 + 64);
        v152 = 1 << *(v281 + 32);
        v153 = -1;
        if (v152 < 64)
        {
          v153 = ~(-1 << v152);
        }

        v154 = v153 & v151;
        v270 = (v152 + 63) >> 6;
        v280 = (v285 + 16);
        v277 = &v275[2];
        v276 = v285 + 32;
        v155 = v275 + 4;
        v287 = isa + 8;
        v283 = v275 + 1;
        v282 = (v285 + 8);
        v272 = v275 + 4;
        if ((v153 & v151) != 0)
        {
          break;
        }

LABEL_28:
        if (v270 <= v150 + 1)
        {
          v157 = v150 + 1;
        }

        else
        {
          v157 = v270;
        }

        v158 = v157 - 1;
        while (1)
        {
          v156 = v150 + 1;
          if (__OFADD__(v150, 1))
          {
            break;
          }

          if (v156 >= v270)
          {
            v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54F8, &unk_1DA95B180);
            (*(*(v177 - 8) + 56))(v148, 1, 1, v177);
            v154 = 0;
            goto LABEL_36;
          }

          v154 = *&v271[8 * v156];
          ++v150;
          if (v154)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        swift_once();
      }

      while (1)
      {
        v156 = v150;
LABEL_35:
        v159 = __clz(__rbit64(v154));
        v154 &= v154 - 1;
        v160 = v159 | (v156 << 6);
        v161 = v281;
        v162 = v285;
        v163 = v284;
        v164 = v289;
        (*(v285 + 16))(v284, *(v281 + 48) + *(v285 + 72) * v160, v289);
        v165 = v275;
        v166 = v286;
        v167 = v288;
        (v275[2].isa)(v286, *(v161 + 56) + v275[9].isa * v160, v288);
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54F8, &unk_1DA95B180);
        v169 = *(v168 + 48);
        v170 = *(v162 + 32);
        v148 = v274;
        v170(v274, v163, v164);
        v171 = v165[4].isa;
        v155 = v272;
        v171(v148 + v169, v166, v167);
        (*(*(v168 - 8) + 56))(v148, 0, 1, v168);
        v158 = v156;
        v149 = v273;
LABEL_36:
        sub_1DA84A0CC(v148, v149, &qword_1ECBD54E0, &qword_1DA95B168);
        v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54F8, &unk_1DA95B180);
        if ((*(*(v172 - 8) + 48))(v149, 1, v172) == 1)
        {
          break;
        }

        v173 = v149 + *(v172 + 48);
        v174 = v286;
        v175 = v288;
        (v155->isa)(v286, v173, v288);
        v291[0] = v292;
        v291[1] = v293;
        v291[2] = v294;
        v291[3] = v295;
        sub_1DA848A24(&v292, v290);
        v176 = v278;
        sub_1DA940D54();
        (*v287)(v176, v279);
        (v283->isa)(v174, v175);
        (*v282)(v149, v289);
        v150 = v158;
        if (!v154)
        {
          goto LABEL_28;
        }
      }

      return sub_1DA84A040(&v292);
    }

    else
    {
      v105 = *(v267 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      *(&v262 - 2) = sub_1DA84A094;
      *(&v262 - 1) = v106;
      os_unfair_lock_lock(v105 + 4);
      sub_1DA84A0B4(&v292);
      os_unfair_lock_unlock(v105 + 4);
      v107 = v292;
      if (qword_1EE110DD0 != -1)
      {
        swift_once();
      }

      v108 = sub_1DA9405A4();
      v109 = __swift_project_value_buffer(v108, qword_1EE110DE0);
      v110 = v265;
      sub_1DA849F78(v283, v265, type metadata accessor for UserNotificationsVendorTransaction);

      v263 = v109;
      v111 = sub_1DA940584();
      v112 = sub_1DA940F34();

      v113 = os_log_type_enabled(v111, v112);
      v114 = v285;
      v278 = v107;
      if (v113)
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *&v292 = v116;
        *v115 = 136315394;
        sub_1DA849F78(v110, v282, type metadata accessor for UserNotificationsVendorTransaction);
        v117 = sub_1DA940A74();
        v119 = v118;
        sub_1DA849FE0(v110, type metadata accessor for UserNotificationsVendorTransaction);
        v120 = sub_1DA7AE6E8(v117, v119, &v292);

        *(v115 + 4) = v120;
        *(v115 + 12) = 2080;
        sub_1DA84A9BC(&qword_1EE115A40, MEMORY[0x1E69695A8]);
        v121 = v277;
        v122 = sub_1DA940984();
        v124 = sub_1DA7AE6E8(v122, v123, &v292);
        v107 = v278;

        *(v115 + 14) = v124;
        _os_log_impl(&dword_1DA7A9000, v111, v112, "Received update %s sending to: %s", v115, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v116, -1, -1);
        MEMORY[0x1E12739F0](v115, -1, -1);
      }

      else
      {

        sub_1DA849FE0(v110, type metadata accessor for UserNotificationsVendorTransaction);
        v121 = v277;
      }

      v178 = v272;
      v179 = v271;
      v180 = 0;
      v181 = *(v107 + 8);
      isa = (v107 + 64);
      v182 = 1 << v107[32];
      v183 = -1;
      if (v182 < 64)
      {
        v183 = ~(-1 << v182);
      }

      v184 = v183 & v181;
      v268 = (v182 + 63) >> 6;
      v275 = v114 + 2;
      v274 = (v276 + 16);
      v273 = v114 + 4;
      v185 = (v276 + 32);
      v288 = (v270 + 8);
      v286 = (v276 + 8);
      v279 = v114 + 1;
      v270 = v276 + 32;
      v186 = &unk_1ECBD5408;
      if ((v183 & v181) == 0)
      {
        goto LABEL_46;
      }

LABEL_45:
      v187 = v180;
LABEL_53:
      v190 = __clz(__rbit64(v184));
      v184 &= v184 - 1;
      v191 = v190 | (v187 << 6);
      v192 = v278;
      v193 = v285;
      v194 = v284;
      v195 = v289;
      (*(v285 + 16))(v284, *(v278 + 6) + *(v285 + 72) * v191, v289);
      v196 = v276;
      v197 = *(v192 + 7) + *(v276 + 72) * v191;
      v198 = v287;
      v121 = v277;
      (*(v276 + 16))(v287, v197, v277);
      v199 = __swift_instantiateConcreteTypeFromMangledNameV2(v186, &qword_1DA95AFC8);
      v200 = *(v199 + 48);
      v201 = *(v193 + 32);
      v202 = v272;
      v201(v272, v194, v195);
      v203 = *(v196 + 32);
      v204 = v198;
      v178 = v202;
      v185 = v270;
      v203(&v202[v200], v204, v121);
      (*(*(v199 - 8) + 56))(v202, 0, 1, v199);
      v189 = v187;
      v205 = &unk_1ECBD5408;
      v206 = v282;
      v179 = v271;
      while (1)
      {
        sub_1DA84A0CC(v178, v179, &qword_1ECBD54E8, &qword_1DA95B170);
        v207 = __swift_instantiateConcreteTypeFromMangledNameV2(v205, &qword_1DA95AFC8);
        if ((*(*(v207 - 8) + 48))(v179, 1, v207) == 1)
        {
          break;
        }

        v208 = v179 + *(v207 + 48);
        v209 = v287;
        (*v185)(v287, v208, v121);
        sub_1DA849F78(v283, v206, type metadata accessor for UserNotificationsVendorTransaction);
        v210 = v280;
        sub_1DA940D54();
        (*v288)(v210, v281);
        (*v286)(v209, v121);
        (v279->isa)(v179, v289);
        v180 = v189;
        v186 = v205;
        if (v184)
        {
          goto LABEL_45;
        }

LABEL_46:
        if (v268 <= v180 + 1)
        {
          v188 = v180 + 1;
        }

        else
        {
          v188 = v268;
        }

        v189 = v188 - 1;
        while (1)
        {
          v187 = v180 + 1;
          if (__OFADD__(v180, 1))
          {
            goto LABEL_74;
          }

          if (v187 >= v268)
          {
            break;
          }

          v184 = *(isa + v187);
          ++v180;
          if (v184)
          {
            goto LABEL_53;
          }
        }

        v205 = v186;
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(v186, &qword_1DA95AFC8);
        (*(*(v211 - 8) + 56))(v178, 1, 1, v211);
        v184 = 0;
        v206 = v282;
      }

      v212 = v264;
      sub_1DA849F78(v283, v264, type metadata accessor for UserNotificationsVendorTransaction);
      v213 = v267;

      v214 = sub_1DA940584();
      v215 = sub_1DA940F34();

      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        v290[0] = v217;
        *v216 = 136315394;
        sub_1DA849F78(v212, v206, type metadata accessor for UserNotificationsVendorTransaction);
        v218 = sub_1DA940A74();
        v220 = v219;
        sub_1DA849FE0(v212, type metadata accessor for UserNotificationsVendorTransaction);
        v221 = sub_1DA7AE6E8(v218, v220, v290);

        *(v216 + 4) = v221;
        *(v216 + 12) = 2080;
        v222 = v213 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v224 = *(v222 + 8);
        *&v292 = Strong;
        *(&v292 + 1) = v224;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5420, &unk_1DA95AFD8);
        v225 = sub_1DA940A74();
        v227 = sub_1DA7AE6E8(v225, v226, v290);

        *(v216 + 14) = v227;
        _os_log_impl(&dword_1DA7A9000, v214, v215, "Received update %s sending to delegate: %s", v216, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v217, -1, -1);
        MEMORY[0x1E12739F0](v216, -1, -1);
      }

      else
      {

        sub_1DA849FE0(v212, type metadata accessor for UserNotificationsVendorTransaction);
      }

      v228 = v213 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v229 = *(v228 + 8);
        ObjectType = swift_getObjectType();
        (*(v229 + 8))(v283, ObjectType, v229);
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v284 = v46;
    v275 = v52;
    v278 = v49;
    v279 = v37;
    v288 = v39;
    v77 = v285;
    v78 = (*(v285 + 32))(v54, v58, v40);
    v79 = *(v267 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
    MEMORY[0x1EEE9AC00](v78);
    *(&v262 - 2) = sub_1DA84A134;
    *(&v262 - 1) = v80;
    os_unfair_lock_lock(v79 + 4);
    sub_1DA84AA70(&v292);
    os_unfair_lock_unlock(v79 + 4);
    v81 = v292;
    v82 = v54;
    if (*(v292 + 16) && (v83 = sub_1DA85A5DC(v54), (v84 & 1) != 0))
    {
      v286 = v54;
      v85 = *(v81 + 56) + *(v276 + 72) * v83;
      v86 = v288;
      v284 = *(v276 + 16);
      (v284)(v288, v85, v277);

      v87 = v283 + *(v266 + 20);
      v88 = v279;
      if (!*v87 && *(v87 + 1) == 0xE000000000000000 || (sub_1DA941684() & 1) != 0)
      {
        if (qword_1EE110DD0 != -1)
        {
          swift_once();
        }

        v89 = sub_1DA9405A4();
        __swift_project_value_buffer(v89, qword_1EE110DE0);
        v90 = v262;
        sub_1DA849F78(v283, v262, type metadata accessor for UserNotificationsVendorTransaction);
        v91 = v275;
        (*(v77 + 16))(v275, v286, v40);
        v92 = sub_1DA940584();
        v93 = sub_1DA940F34();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = v90;
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *&v292 = v96;
          *v95 = 136315394;
          sub_1DA849F78(v94, v282, type metadata accessor for UserNotificationsVendorTransaction);
          v97 = sub_1DA940A74();
          v99 = v98;
          sub_1DA849FE0(v94, type metadata accessor for UserNotificationsVendorTransaction);
          v100 = sub_1DA7AE6E8(v97, v99, &v292);

          *(v95 + 4) = v100;
          *(v95 + 12) = 2080;
          sub_1DA84A9BC(&qword_1EE114C50, MEMORY[0x1E69695A8]);
          v101 = sub_1DA941614();
          v103 = v102;
          (*(v285 + 8))(v91, v40);
          v104 = sub_1DA7AE6E8(v101, v103, &v292);
          v77 = v285;

          *(v95 + 14) = v104;
          _os_log_impl(&dword_1DA7A9000, v92, v93, "COMPLETE: Received initial %s sending to: %s", v95, 0x16u);
          swift_arrayDestroy();
          v88 = v279;
          MEMORY[0x1E12739F0](v96, -1, -1);
          MEMORY[0x1E12739F0](v95, -1, -1);
        }

        else
        {

          (*(v77 + 8))(v91, v40);
          sub_1DA849FE0(v90, type metadata accessor for UserNotificationsVendorTransaction);
        }

        v86 = v288;
        sub_1DA940D64();
      }

      v232 = v263;
      v233 = v278;
      if (qword_1EE110DD0 != -1)
      {
        swift_once();
      }

      v234 = sub_1DA9405A4();
      __swift_project_value_buffer(v234, qword_1EE110DE0);
      sub_1DA849F78(v283, v232, type metadata accessor for UserNotificationsVendorTransaction);
      (*(v77 + 16))(v233, v286, v40);
      v235 = v277;
      (v284)(v88, v86, v277);
      v236 = sub_1DA940584();
      v237 = sub_1DA940F34();
      v238 = os_log_type_enabled(v236, v237);
      v289 = v40;
      if (v238)
      {
        v239 = swift_slowAlloc();
        v285 = swift_slowAlloc();
        *&v292 = v285;
        *v239 = 136315650;
        v279 = v236;
        sub_1DA849F78(v232, v282, type metadata accessor for UserNotificationsVendorTransaction);
        v240 = sub_1DA940A74();
        LODWORD(v275) = v237;
        v241 = v77;
        v243 = v242;
        sub_1DA849FE0(v232, type metadata accessor for UserNotificationsVendorTransaction);
        v244 = sub_1DA7AE6E8(v240, v243, &v292);

        *(v239 + 4) = v244;
        *(v239 + 12) = 2080;
        sub_1DA84A9BC(&qword_1EE114C50, MEMORY[0x1E69695A8]);
        v245 = v289;
        v246 = sub_1DA941614();
        v248 = v247;
        v274 = *(v241 + 8);
        (v274)(v233, v245);
        v249 = v282;
        v250 = sub_1DA7AE6E8(v246, v248, &v292);

        *(v239 + 14) = v250;
        *(v239 + 22) = 2080;
        (v284)(v287, v88, v235);
        v251 = sub_1DA940A74();
        v253 = v252;
        v254 = *(v276 + 8);
        v254(v88, v235);
        v255 = sub_1DA7AE6E8(v251, v253, &v292);

        *(v239 + 24) = v255;
        v256 = v279;
        _os_log_impl(&dword_1DA7A9000, v279, v275, "Received initial %s sending to: %s with: %s", v239, 0x20u);
        v257 = v285;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v257, -1, -1);
        v258 = v239;
        v259 = v274;
        MEMORY[0x1E12739F0](v258, -1, -1);
      }

      else
      {

        v254 = *(v276 + 8);
        v254(v88, v235);
        v259 = *(v77 + 8);
        v259(v233, v289);
        sub_1DA849FE0(v232, type metadata accessor for UserNotificationsVendorTransaction);
        v249 = v282;
      }

      sub_1DA849F78(v283, v249, type metadata accessor for UserNotificationsVendorTransaction);
      v260 = v280;
      v261 = v288;
      sub_1DA940D54();
      (*(v270 + 8))(v260, v281);
      v254(v261, v235);
      return (v259)(v286, v289);
    }

    else
    {
      if (qword_1EE110DD0 != -1)
      {
        swift_once();
      }

      v125 = sub_1DA9405A4();
      __swift_project_value_buffer(v125, qword_1EE110DE0);
      v126 = v289;
      sub_1DA849F78(v283, v289, type metadata accessor for UserNotificationsVendorTransaction);
      v127 = v284;
      (*(v77 + 16))(v284, v82, v40);

      v128 = sub_1DA940584();
      v129 = sub_1DA940F14();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v288 = swift_slowAlloc();
        *&v292 = v288;
        *v130 = 136315650;
        LODWORD(v287) = v129;
        sub_1DA849F78(v126, v282, type metadata accessor for UserNotificationsVendorTransaction);
        v131 = sub_1DA940A74();
        v286 = v82;
        v133 = v132;
        sub_1DA849FE0(v126, type metadata accessor for UserNotificationsVendorTransaction);
        v134 = sub_1DA7AE6E8(v131, v133, &v292);

        *(v130 + 4) = v134;
        *(v130 + 12) = 2080;
        v135 = MEMORY[0x1E69695A8];
        sub_1DA84A9BC(&qword_1EE114C50, MEMORY[0x1E69695A8]);
        v136 = sub_1DA941614();
        v137 = v40;
        v139 = v138;
        v140 = *(v77 + 8);
        v140(v127, v137);
        v141 = sub_1DA7AE6E8(v136, v139, &v292);

        *(v130 + 14) = v141;
        *(v130 + 22) = 2080;
        sub_1DA84A9BC(&qword_1EE115A40, v135);
        v142 = sub_1DA940984();
        v144 = v143;

        v145 = sub_1DA7AE6E8(v142, v144, &v292);

        *(v130 + 24) = v145;
        _os_log_impl(&dword_1DA7A9000, v128, v287, "Received initial %s client: %s not found in: %s", v130, 0x20u);
        v146 = v288;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v146, -1, -1);
        MEMORY[0x1E12739F0](v130, -1, -1);

        return (v140)(v286, v137);
      }

      else
      {

        v231 = *(v77 + 8);
        v231(v127, v40);
        sub_1DA849FE0(v126, type metadata accessor for UserNotificationsVendorTransaction);
        return (v231)(v82, v40);
      }
    }
  }

  return result;
}

uint64_t sub_1DA84517C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F8, &qword_1DA95AFB8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  swift_allocObject();
  swift_weakInit();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8650], v0);
  sub_1DA940DC4();
}

uint64_t sub_1DA8452B0(uint64_t a1)
{
  v2 = sub_1DA93FB24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  sub_1DA93FB14();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
    v11 = MEMORY[0x1EEE9AC00](Strong);
    v18[-4] = v11;
    v18[-3] = v8;
    v18[-2] = a1;
    MEMORY[0x1EEE9AC00](v11);
    v18[-2] = sub_1DA84A81C;
    v18[-1] = v12;

    os_unfair_lock_lock(v10 + 4);
    v18[1] = a1;
    sub_1DA84AA88(v13);
    os_unfair_lock_unlock(v10 + 4);

    v14 = swift_allocObject();
    swift_weakInit();
    (*(v3 + 16))(v6, v8, v2);
    v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v3 + 32))(v16 + v15, v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5960, &qword_1DA95B160);
    sub_1DA940D44();
  }

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1DA845540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FF0, &unk_1DA95B220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_1DA93FB24();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5960, &qword_1DA95B160);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v8, a3, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  swift_beginAccess();
  sub_1DA8F04CC(v8, v12);
  return swift_endAccess();
}

uint64_t sub_1DA845720()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
    v3 = MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v3);

    os_unfair_lock_lock(v1 + 4);
    sub_1DA84AA88(v2);
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

uint64_t sub_1DA84581C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FF0, &unk_1DA95B220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = sub_1DA93FB24();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5960, &qword_1DA95B160);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  swift_beginAccess();
  sub_1DA8F04CC(v6, v10);
  return swift_endAccess();
}

uint64_t sub_1DA8459BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5400, &qword_1DA95AFC0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for UserNotificationsVendorTransaction(0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8650], v0);
  sub_1DA940DC4();
}

uint64_t sub_1DA845AF8(uint64_t a1)
{
  v2 = sub_1DA93FB24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  sub_1DA93FB14();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
    v11 = MEMORY[0x1EEE9AC00](Strong);
    v18[-4] = v11;
    v18[-3] = v8;
    v18[-2] = a1;
    MEMORY[0x1EEE9AC00](v11);
    v18[-2] = sub_1DA84A7B8;
    v18[-1] = v12;

    os_unfair_lock_lock(v10 + 4);
    v18[1] = a1;
    sub_1DA84AA88(v13);
    os_unfair_lock_unlock(v10 + 4);

    v14 = swift_allocObject();
    swift_weakInit();
    (*(v3 + 16))(v6, v8, v2);
    v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v3 + 32))(v16 + v15, v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
    sub_1DA940D44();
  }

  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1DA845D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5580, &qword_1DA95B218);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_1DA93FB24();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a2);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, a3, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  v18 = *a4;
  swift_beginAccess();
  sub_1DA8F0724(v10, v14);
  return swift_endAccess();
}

uint64_t sub_1DA845F68()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
    v3 = MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v3);

    os_unfair_lock_lock(v1 + 4);
    sub_1DA84AA88(v2);
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

uint64_t sub_1DA846064(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5580, &qword_1DA95B218);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_1DA93FB24();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = *a3;
  swift_beginAccess();
  sub_1DA8F0724(v8, v12);
  return swift_endAccess();
}

uint64_t sub_1DA846204()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5400, &qword_1DA95AFC0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  type metadata accessor for UserNotificationsVendorTransaction(0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8650], v0);
  return sub_1DA940DC4();
}

uint64_t sub_1DA846314(char *a1, uint64_t a2)
{
  v89 = a1;
  v84 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v4 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  v6 = *(*(v88 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v88);
  v86 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v80 = &v78 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v82 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v78 - v13;
  v14 = sub_1DA93FB24();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v85 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v83 = &v78 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v78 - v23;
  sub_1DA93FB14();
  v25 = *(a2 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
  v93 = a2;
  v94 = v24;
  v95 = a1;
  v90 = sub_1DA84A738;
  v91 = &v92;
  os_unfair_lock_lock(v25 + 4);
  sub_1DA84A760(v26);
  v79 = 0;
  os_unfair_lock_unlock(v25 + 4);
  v27 = *(v15 + 16);
  v27(v22, v24, v14);
  v28 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v29 = v15;
  v30 = v87;
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  (*(v29 + 32))(v31 + v28, v22, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
  sub_1DA940D44();
  v32 = v81;
  v89 = v24;
  v27(v81, v24, v14);
  swift_storeEnumTagMultiPayload();
  v33 = v88;
  v34 = v30 + *(v88 + 24);
  v84 = a2;
  v27(v34, (a2 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_uuid), v14);
  sub_1DA849F78(v32, v30, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  v35 = v30 + *(v33 + 20);
  sub_1DA93FB14();
  sub_1DA849FE0(v32, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  if (qword_1EE110DD0 != -1)
  {
    swift_once();
  }

  v36 = sub_1DA9405A4();
  v37 = __swift_project_value_buffer(v36, qword_1EE110DE0);
  v38 = v83;
  v27(v83, v89, v14);
  v39 = v82;
  sub_1DA849F78(v30, v82, type metadata accessor for UserNotificationsVendorClientTransaction);
  v81 = v37;
  v40 = sub_1DA940584();
  v41 = sub_1DA940F34();
  v42 = os_log_type_enabled(v40, v41);
  v78 = v27;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = v29;
    v45 = swift_slowAlloc();
    v96[0] = v45;
    *v43 = 136315394;
    sub_1DA84A9BC(&qword_1EE114C50, MEMORY[0x1E69695A8]);
    v46 = sub_1DA941614();
    v47 = v38;
    v48 = v39;
    v50 = v49;
    v83 = *(v44 + 8);
    (v83)(v47, v14);
    v51 = sub_1DA7AE6E8(v46, v50, v96);

    *(v43 + 4) = v51;
    *(v43 + 12) = 2080;
    sub_1DA849F78(v48, v80, type metadata accessor for UserNotificationsVendorClientTransaction);
    v52 = sub_1DA940A74();
    v54 = v53;
    sub_1DA849FE0(v48, type metadata accessor for UserNotificationsVendorClientTransaction);
    v55 = sub_1DA7AE6E8(v52, v54, v96);

    *(v43 + 14) = v55;
    _os_log_impl(&dword_1DA7A9000, v40, v41, "historicalNotificationsStream() continuationUUID: %s %s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v45, -1, -1);
    v56 = v43;
    v30 = v87;
    MEMORY[0x1E12739F0](v56, -1, -1);
  }

  else
  {

    sub_1DA849FE0(v39, type metadata accessor for UserNotificationsVendorClientTransaction);
    v83 = *(v29 + 8);
    (v83)(v38, v14);
  }

  v57 = v85;
  v58 = v86;
  if (!*(v84 + 32))
  {
    sub_1DA849FE0(v30, type metadata accessor for UserNotificationsVendorClientTransaction);
    return (v83)(v89, v14);
  }

  sub_1DA84A9BC(&qword_1EE113F68, type metadata accessor for UserNotificationsVendorClientTransaction);

  v59 = v79;
  sub_1DA940624();
  if (!v59)
  {
    sub_1DA849FE0(v30, type metadata accessor for UserNotificationsVendorClientTransaction);

    return (v83)(v89, v14);
  }

  v78(v57, v89, v14);
  sub_1DA849F78(v30, v58, type metadata accessor for UserNotificationsVendorClientTransaction);
  v60 = sub_1DA940584();
  v61 = sub_1DA940F14();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v96[0] = v86;
    *v62 = 136315394;
    sub_1DA84A9BC(&qword_1EE114C50, MEMORY[0x1E69695A8]);
    LODWORD(v85) = v61;
    v63 = sub_1DA941614();
    v64 = v57;
    v66 = v65;
    v67 = v83;
    (v83)(v64, v14);
    v68 = sub_1DA7AE6E8(v63, v66, v96);

    *(v62 + 4) = v68;
    *(v62 + 12) = 2080;
    sub_1DA849F78(v58, v80, type metadata accessor for UserNotificationsVendorClientTransaction);
    v69 = sub_1DA940A74();
    v71 = v70;
    sub_1DA849FE0(v58, type metadata accessor for UserNotificationsVendorClientTransaction);
    v72 = sub_1DA7AE6E8(v69, v71, v96);

    *(v62 + 14) = v72;
    v73 = v67;
    _os_log_impl(&dword_1DA7A9000, v60, v85, "historicalNotificationsStream() continuationUUID: %s failed %s", v62, 0x16u);
    v74 = v86;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v74, -1, -1);
    MEMORY[0x1E12739F0](v62, -1, -1);

    v75 = v87;
  }

  else
  {

    sub_1DA849FE0(v58, type metadata accessor for UserNotificationsVendorClientTransaction);
    v77 = v57;
    v73 = v83;
    (v83)(v77, v14);
    v75 = v30;
  }

  sub_1DA849FE0(v75, type metadata accessor for UserNotificationsVendorClientTransaction);
  return v73(v89, v14);
}

void sub_1DA846CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);
  os_unfair_lock_lock(v2 + 4);
  sub_1DA84AA88(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t UserNotificationsVendorClient.deinit()
{
  v1 = v0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5408, &qword_1DA95AFC8);
  v2 = *(*(v56 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v56);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v52 - v6;
  v54 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock;
  v8 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_lock);

  os_unfair_lock_lock(v8 + 4);

  if (*(v1 + 32))
  {
    v9 = *(v1 + 32);

    sub_1DA940634();
  }

  swift_beginAccess();
  notify_cancel(*(v1 + 40));
  v10 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_historicalNotificationsContinuations;
  swift_beginAccess();
  v55 = v1;
  v53 = v10;
  v11 = *(v1 + v10);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = *(v1 + v10);
  result = swift_bridgeObjectRetain_n();
  v18 = 0;
  if (v14)
  {
    while (1)
    {
      v19 = v18;
LABEL_11:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v19 << 6);
      v22 = *(v11 + 48);
      v23 = sub_1DA93FB24();
      (*(*(v23 - 8) + 16))(v7, v22 + *(*(v23 - 8) + 72) * v21, v23);
      v24 = *(v11 + 56);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
      (*(*(v25 - 8) + 16))(&v7[*(v56 + 48)], v24 + *(*(v25 - 8) + 72) * v21, v25);
      sub_1DA940D64();
      result = sub_1DA7BA120(v7, &qword_1ECBD5408, &qword_1DA95AFC8);
      if (!v14)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v19 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v19);
    ++v18;
    if (v14)
    {
      v18 = v19;
      goto LABEL_11;
    }
  }

  v26 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_transactionStreamContinuation;
  v27 = v55;
  swift_beginAccess();
  v52 = v26;
  v28 = *(v27 + v26);
  v29 = 1 << *(v28 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v28 + 64);
  v32 = (v29 + 63) >> 6;
  v33 = *(v27 + v26);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v31; result = sub_1DA7BA120(v5, &qword_1ECBD5408, &qword_1DA95AFC8))
  {
    v35 = i;
LABEL_21:
    v36 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v37 = v36 | (v35 << 6);
    v38 = *(v28 + 48);
    v39 = sub_1DA93FB24();
    (*(*(v39 - 8) + 16))(v5, v38 + *(*(v39 - 8) + 72) * v37, v39);
    v40 = *(v28 + 56);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
    (*(*(v41 - 8) + 16))(&v5[*(v56 + 48)], v40 + *(*(v41 - 8) + 72) * v37, v41);
    sub_1DA940D64();
  }

  while (1)
  {
    v35 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v35 >= v32)
    {

      v42 = v54;
      v43 = *(v27 + v54);

      os_unfair_lock_unlock(v43 + 4);

      v44 = *(v27 + 24);

      v45 = *(v27 + 32);

      v46 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_uuid;
      v47 = sub_1DA93FB24();
      (*(*(v47 - 8) + 8))(v27 + v46, v47);
      v48 = *(v27 + v42);

      sub_1DA7C5714(v27 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate);
      v49 = *(v27 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_actionStreamContinuation);

      v50 = *(v27 + v52);

      v51 = *(v27 + v53);

      return v27;
    }

    v31 = *(v28 + 64 + 8 * v35);
    ++i;
    if (v31)
    {
      i = v35;
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t UserNotificationsVendorClient.__deallocating_deinit()
{
  UserNotificationsVendorClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8472A0(_OWORD *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v41 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v41 - v16;
  v18 = a1[1];
  v43[0] = *a1;
  v43[1] = v18;
  v20 = a1[3];
  v44 = a1[2];
  v19 = v44;
  v45 = v20;
  *v7 = v43[0];
  v7[1] = v18;
  v7[2] = v19;
  v7[3] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_uuid;
  v22 = *(v8 + 24);
  v23 = sub_1DA93FB24();
  (*(*(v23 - 8) + 16))(&v17[v22], v2 + v21, v23);
  sub_1DA849F78(v7, v17, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  v41[1] = v8;
  v24 = *(v8 + 20);
  sub_1DA848A24(v43, v42);
  sub_1DA93FB14();
  sub_1DA849FE0(v7, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  if (qword_1EE110DD0 != -1)
  {
    swift_once();
  }

  v25 = sub_1DA9405A4();
  __swift_project_value_buffer(v25, qword_1EE110DE0);
  sub_1DA849F78(v17, v15, type metadata accessor for UserNotificationsVendorClientTransaction);

  v26 = sub_1DA940584();
  v27 = sub_1DA940F34();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46 = v29;
    *v28 = 136315394;
    sub_1DA849F78(v15, v12, type metadata accessor for UserNotificationsVendorClientTransaction);
    v30 = sub_1DA940A74();
    v32 = v31;
    sub_1DA849FE0(v15, type metadata accessor for UserNotificationsVendorClientTransaction);
    v33 = sub_1DA7AE6E8(v30, v32, &v46);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = v2 + OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v36 = *(v34 + 8);
    v41[2] = Strong;
    v41[3] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5420, &unk_1DA95AFD8);
    v37 = sub_1DA940A74();
    v39 = sub_1DA7AE6E8(v37, v38, &v46);

    *(v28 + 14) = v39;
    _os_log_impl(&dword_1DA7A9000, v26, v27, "sendAction() %s delegate: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v29, -1, -1);
    MEMORY[0x1E12739F0](v28, -1, -1);
  }

  else
  {

    sub_1DA849FE0(v15, type metadata accessor for UserNotificationsVendorClientTransaction);
  }

  if (!*(v2 + 32))
  {
    return sub_1DA849FE0(v17, type metadata accessor for UserNotificationsVendorClientTransaction);
  }

  sub_1DA84A9BC(&qword_1EE113F68, type metadata accessor for UserNotificationsVendorClientTransaction);

  sub_1DA940624();
  sub_1DA849FE0(v17, type metadata accessor for UserNotificationsVendorClientTransaction);
}

uint64_t sub_1DA84776C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for UserNotificationsVendorClientTransaction(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a1;
  swift_storeEnumTagMultiPayload();
  v17 = OBJC_IVAR____TtC21UserNotificationsCore29UserNotificationsVendorClient_uuid;
  v18 = *(v11 + 24);
  v19 = sub_1DA93FB24();
  (*(*(v19 - 8) + 16))(&v16[v18], v3 + v17, v19);
  sub_1DA849F78(v10, v16, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  v20 = *(v11 + 20);

  sub_1DA93FB14();
  sub_1DA849FE0(v10, type metadata accessor for UserNotificationsVendorClientTransaction.TransactionType);
  v25 = v11;
  v26 = sub_1DA84A9BC(&unk_1EE113F58, type metadata accessor for UserNotificationsVendorClientTransaction);
  v27 = sub_1DA84A9BC(&qword_1EE113F68, type metadata accessor for UserNotificationsVendorClientTransaction);
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v24);
  sub_1DA849F78(v16, boxed_opaque_existential_2, type metadata accessor for UserNotificationsVendorClientTransaction);
  __swift_project_boxed_opaque_existential_1(v24, v25);
  if (*(v3 + 32))
  {

    sub_1DA940624();
    sub_1DA849FE0(v16, type metadata accessor for UserNotificationsVendorClientTransaction);
  }

  else
  {
    sub_1DA849FE0(v16, type metadata accessor for UserNotificationsVendorClientTransaction);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1DA847CAC()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110DE0);
  __swift_project_value_buffer(v0, qword_1EE110DE0);
  return sub_1DA940594();
}

uint64_t sub_1DA847D20(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_1DA847DA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5560, &qword_1DA95B1F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5950, &qword_1DA95B200);
    v8 = sub_1DA9414E4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v10, v6, &unk_1ECBD5560, &qword_1DA95B1F8);
      result = sub_1DA85A4CC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1DA93FEC4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1DA93FAF4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

unint64_t sub_1DA847FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5500, &qword_1DA95B190);
    v3 = sub_1DA9414E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      sub_1DA8304A0(v7);
      result = sub_1DA85A4B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DA8480CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5980, &qword_1DA95B268);
  v3 = sub_1DA9414E4();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_1DA85A5A0(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_1DA85A5A0(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DA8481DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5970, &qword_1DA95B258);
    v3 = sub_1DA9414E4();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55D0, &qword_1DA95B260);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v22 - v8);
  if (!v2)
  {
    return v3;
  }

  v10 = *(v6 + 48);
  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);

  while (1)
  {
    sub_1DA822F48(v11, v9, &qword_1ECBD55D0, &qword_1DA95B260);
    v13 = *v9;
    result = sub_1DA7BFAD4(*v9);
    if (v15)
    {
      break;
    }

    v16 = result;
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    v17 = v3[7];
    v18 = sub_1DA93FBD4();
    result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v9 + v10, v18);
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_12;
    }

    v3[2] = v21;
    v11 += v12;
    if (!--v2)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1DA8483C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD54C0, &qword_1DA95B148);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5890, &qword_1DA95B150);
    v8 = sub_1DA9414E4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v10, v6, &unk_1ECBD54C0, &qword_1DA95B148);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1DA85A4B4(*v6, v13);
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
      v19 = sub_1DA93F964();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
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

unint64_t sub_1DA8485B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55B8, &qword_1DA95B248);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD55C0, &qword_1DA95B250);
    v8 = sub_1DA9414E4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v10, v6, &qword_1ECBD55B8, &qword_1DA95B248);
      result = sub_1DA85A5DC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1DA93FB24();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5960, &qword_1DA95B160);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

unint64_t sub_1DA8487E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55A8, &qword_1DA95B238);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55B0, &qword_1DA95B240);
    v8 = sub_1DA9414E4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v10, v6, &qword_1ECBD55A8, &qword_1DA95B238);
      result = sub_1DA85A5DC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1DA93FB24();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t type metadata accessor for UserNotificationsVendorClient()
{
  result = qword_1EE1144A0;
  if (!qword_1EE1144A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA848B4C()
{
  result = sub_1DA93FB24();
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

unint64_t sub_1DA848DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5578, &qword_1DA95B210);
    v3 = sub_1DA9414E4();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;

      result = sub_1DA85A6B0(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1DA848EAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5440, &qword_1DA95C130);
    v3 = sub_1DA9414E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DA822F48(v4, v13, &qword_1ECBD5448, &qword_1DA95B0D0);
      result = sub_1DA85A788(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1DA848FE8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

_OWORD *sub_1DA848FE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1DA849034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54B0, &qword_1DA95C1A0);
    v3 = sub_1DA9414E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DA822F48(v4, &v13, &qword_1ECBD54B8, &qword_1DA95B140);
      v5 = v13;
      v6 = v14;
      result = sub_1DA85A4B4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DA848FE8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1DA849178(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1DA9414E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1DA85A4B4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DA849274(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5530, &unk_1DA95B1C0);
    v3 = sub_1DA9414E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DA822F48(v4, &v16, &unk_1ECBD6550, &qword_1DA95F8F0);
      v5 = v16;
      v6 = v17;
      result = sub_1DA85A4B4(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_1DA8493C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1DA9414E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1DA85A4B4(v7, v8);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DA8494BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5498, &unk_1DA95B120);
    v3 = sub_1DA9414E4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1DA85A7CC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

unint64_t sub_1DA8495B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5548, &unk_1DA95B1E0);
    v3 = sub_1DA9414E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1DA85A4B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DA8496B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5910, &unk_1DA95C210);
    v3 = sub_1DA9414E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DA85A4B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DA8497BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5458, &unk_1DA95B0E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5460, &unk_1DA95C150);
    v8 = sub_1DA9414E4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v10, v6, &qword_1ECBD5458, &unk_1DA95B0E0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1DA85A4B4(*v6, v13);
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
      v19 = sub_1DA9408B4();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
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

unint64_t sub_1DA8499A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5488, &qword_1DA95B110);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5490, &qword_1DA95B118);
    v8 = sub_1DA9414E4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v10, v6, &qword_1ECBD5488, &qword_1DA95B110);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1DA85A4B4(*v6, v13);
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
      v19 = type metadata accessor for NotificationSource();
      result = sub_1DA84A6D0(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for NotificationSource);
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

unint64_t sub_1DA849B90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5478, &unk_1DA95B100);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5480, &unk_1DA95C160);
    v8 = sub_1DA9414E4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v10, v6, &qword_1ECBD5478, &unk_1DA95B100);
      result = sub_1DA85A894(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for NotificationSource();
      result = sub_1DA84A6D0(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for NotificationSource);
      *(v8[7] + 8 * v14) = *&v6[v9];
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

unint64_t sub_1DA849D74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5468, &qword_1DA95B0F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5470, &qword_1DA95B0F8);
    v8 = sub_1DA9414E4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v10, v6, &qword_1ECBD5468, &qword_1DA95B0F0);
      result = sub_1DA85A894(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for NotificationSource();
      result = sub_1DA84A6D0(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for NotificationSource);
      *(v8[7] + 8 * v14) = *&v6[v9];
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

uint64_t sub_1DA849F78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA849FE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA84A0CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DA84A154@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  *a2 = *(v2 + v4);
}

void *sub_1DA84A1B0@<X0>(void *a1@<X8>)
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

unint64_t sub_1DA84A1FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5528, &qword_1DA95C1E0);
    v3 = sub_1DA9414E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1DA85A4B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1DA84A300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5518, &qword_1DA95B1A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5520, &unk_1DA95B1B0);
    v8 = sub_1DA9414E4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v10, v6, &qword_1ECBD5518, &qword_1DA95B1A8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1DA85A4B4(*v6, v13);
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
      v19 = type metadata accessor for SyncDismissalIDEntry(0);
      result = sub_1DA84A6D0(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for SyncDismissalIDEntry);
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

unint64_t sub_1DA84A4E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5508, &qword_1DA95B198);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5510, &qword_1DA95B1A0);
    v8 = sub_1DA9414E4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DA822F48(v10, v6, &qword_1ECBD5508, &qword_1DA95B198);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1DA85A4B4(*v6, v13);
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
      v19 = type metadata accessor for SyncDismissalHashEntry(0);
      result = sub_1DA84A6D0(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for SyncDismissalHashEntry);
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

uint64_t sub_1DA84A6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_1DA93FB24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA84A918(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1DA93FB24() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1DA84A9BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DA84AA04()
{
  result = qword_1EE110CD0;
  if (!qword_1EE110CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECBD5598, &qword_1DA95B230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110CD0);
  }

  return result;
}

uint64_t sub_1DA84AAC8()
{
  result = sub_1DA9401F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t UserNotificationsRemoteDeviceChangeManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t UserNotificationsRemoteDeviceChangeManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA84AC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a1;
  v3[8] = a3;
  v4 = sub_1DA93FAF4();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA84AD68, 0, 0);
}

uint64_t sub_1DA84AD68()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = sub_1DA93FF84();
  v7 = [v6 request];

  v8 = [v7 content];
  [v8 mutableCopy];

  sub_1DA941154();
  swift_unknownObjectRelease();
  sub_1DA84B354();
  swift_dynamicCast();
  v9 = v0[6];
  v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v11 = sub_1DA940A04();
  [v10 setDateFormat_];

  sub_1DA941364();

  sub_1DA93FAC4();
  v12 = sub_1DA93FA44();
  v45 = *(v4 + 8);
  v45(v2, v3);
  v46 = v10;
  v13 = [v10 stringFromDate_];

  v14 = sub_1DA940A14();
  v16 = v15;

  MEMORY[0x1E1271BD0](v14, v16);

  MEMORY[0x1E1271BD0](2120999, 0xE300000000000000);
  v17 = [v9 body];
  v18 = sub_1DA940A14();
  v20 = v19;

  MEMORY[0x1E1271BD0](v18, v20);

  v21 = sub_1DA940A04();

  [v9 setBody_];

  sub_1DA9400A4();
  v22 = v9;
  v23 = sub_1DA93FF84();
  v24 = [v23 request];

  v25 = [v24 trigger];
  v26 = sub_1DA940A04();

  v27 = [objc_opt_self() requestWithIdentifier:v26 content:v22 trigger:v25];

  v44 = v22;
  v28 = sub_1DA93FF84();
  v29 = [v28 date];

  sub_1DA93FAB4();
  v30 = sub_1DA93FF84();
  v31 = [v30 sourceIdentifier];

  if (!v31)
  {
    sub_1DA940A14();
    v31 = sub_1DA940A04();
  }

  v32 = v0[8];
  v33 = sub_1DA93FF84();
  v34 = [v33 intentIdentifiers];

  if (!v34)
  {
    sub_1DA940BE4();
    v34 = sub_1DA940BD4();
  }

  v35 = v0[11];
  v43 = v0[12];
  v37 = v0[8];
  v36 = v0[9];
  v38 = v0[7];
  v39 = sub_1DA93FA44();
  v40 = [objc_opt_self() notificationWithRequest:v27 date:v39 sourceIdentifier:v31 intentIdentifiers:v34];

  v45(v35, v36);
  sub_1DA940064();
  sub_1DA93FF04();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();

  v41 = v0[1];

  return v41();
}

uint64_t sub_1DA84B2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA7B7470;

  return sub_1DA84AC9C(a1, v6, a3);
}

unint64_t sub_1DA84B354()
{
  result = qword_1ECBD55E0;
  if (!qword_1ECBD55E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBD55E0);
  }

  return result;
}

id sub_1DA84B420()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotificationsCloudSenderPriorityObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA84B55C(const char *a1, char a2)
{
  if (qword_1ECBD4728 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1ECBD55F0);
  v6 = v2;
  v7 = sub_1DA940584();
  v8 = sub_1DA940F34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    v11 = OBJC_IVAR____TtC21UserNotificationsCore44UserNotificationsCloudSenderPriorityObserver_consumer;
    swift_beginAccess();
    sub_1DA7BABAC(v6 + v11, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5680, &qword_1DA95B568);
    v12 = sub_1DA940A74();
    v14 = sub_1DA7AE6E8(v12, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DA7A9000, v7, v8, a1, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12739F0](v10, -1, -1);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  v15 = v6 + OBJC_IVAR____TtC21UserNotificationsCore44UserNotificationsCloudSenderPriorityObserver_consumer;
  swift_beginAccess();
  v16 = *(v15 + 24);
  v17 = *(v15 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  (*(v17 + 16))(a2 & 1, v16, v17);
  return swift_endAccess();
}

void sub_1DA84B7B0()
{
  v42[1] = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v2 != 1)
  {
    if (Strong)
    {
      v42[0] = 0;
      v19 = Strong;
      v20 = [Strong setWakingPushPriority:0 error:v42];

      v6 = v42[0];
      if (!v20)
      {
        goto LABEL_17;
      }

      v21 = v42[0];
    }

    if (qword_1ECBD4728 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA9405A4();
    __swift_project_value_buffer(v22, qword_1ECBD55F0);

    v9 = sub_1DA940584();
    v10 = sub_1DA940F34();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_21;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42[0] = v13;
    *v11 = 136315394;

    v23 = sub_1DA940A74();
    v25 = sub_1DA7AE6E8(v23, v24, v42);

    *(v11 + 4) = v25;
    *(v11 + 12) = 2112;
    v26 = swift_unknownObjectWeakLoadStrong();
    *(v11 + 14) = v26;
    *v12 = v26;
    v18 = "%s service: %@ is now non-waking";
LABEL_16:
    _os_log_impl(&dword_1DA7A9000, v9, v10, v18, v11, 0x16u);
    sub_1DA7BA120(v12, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E12739F0](v13, -1, -1);
    MEMORY[0x1E12739F0](v11, -1, -1);
    goto LABEL_21;
  }

  if (!Strong)
  {
LABEL_5:
    if (qword_1ECBD4728 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA9405A4();
    __swift_project_value_buffer(v8, qword_1ECBD55F0);

    v9 = sub_1DA940584();
    v10 = sub_1DA940F34();

    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_21;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42[0] = v13;
    *v11 = 136315394;

    v14 = sub_1DA940A74();
    v16 = sub_1DA7AE6E8(v14, v15, v42);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    v17 = swift_unknownObjectWeakLoadStrong();
    *(v11 + 14) = v17;
    *v12 = v17;
    v18 = "%s service: %@ is now waking";
    goto LABEL_16;
  }

  v42[0] = 0;
  v4 = Strong;
  v5 = [Strong setWakingPushPriority:2 error:v42];

  v6 = v42[0];
  if (v5)
  {
    v7 = v42[0];
    goto LABEL_5;
  }

LABEL_17:
  v27 = v6;
  v28 = sub_1DA93F8C4();

  swift_willThrow();
  if (qword_1ECBD4728 != -1)
  {
    swift_once();
  }

  v29 = sub_1DA9405A4();
  __swift_project_value_buffer(v29, qword_1ECBD55F0);

  v30 = v28;
  v9 = sub_1DA940584();
  v31 = sub_1DA940F14();

  if (!os_log_type_enabled(v9, v31))
  {

    goto LABEL_22;
  }

  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v42[0] = v34;
  *v32 = 136315650;

  v35 = sub_1DA940A74();
  v37 = sub_1DA7AE6E8(v35, v36, v42);

  *(v32 + 4) = v37;
  *(v32 + 12) = 2112;
  v38 = swift_unknownObjectWeakLoadStrong();
  *(v32 + 14) = v38;
  *v33 = v38;
  *(v32 + 22) = 2112;
  v39 = v28;
  v40 = _swift_stdlib_bridgeErrorToNSError();
  *(v32 + 24) = v40;
  v33[1] = v40;
  _os_log_impl(&dword_1DA7A9000, v9, v31, "%s service: %@ failed to set waking: %@", v32, 0x20u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5430, &unk_1DA959190);
  swift_arrayDestroy();
  MEMORY[0x1E12739F0](v33, -1, -1);
  __swift_destroy_boxed_opaque_existential_1(v34);
  MEMORY[0x1E12739F0](v34, -1, -1);
  MEMORY[0x1E12739F0](v32, -1, -1);

LABEL_21:
LABEL_22:
  v41 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DA84BD48()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA84BDCC()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD55F0);
  __swift_project_value_buffer(v0, qword_1ECBD55F0);
  return sub_1DA940594();
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

void *sub_1DA84BE9C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1DA885D94(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD56A0, &qword_1DA95D470);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DA84BFA0(uint64_t result)
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
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1DA885FF8(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1DA9401F4();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DA84C0CC(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 80) = a3;
  *(v4 + 88) = v3;
  *(v4 + 184) = a2;
  *(v4 + 72) = a1;
  v5 = sub_1DA9407F4();
  *(v4 + 96) = v5;
  v6 = *(v5 - 8);
  *(v4 + 104) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v8 = sub_1DA940854();
  *(v4 + 120) = v8;
  v9 = *(v8 - 8);
  *(v4 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v11 = sub_1DA93FAF4();
  *(v4 + 144) = v11;
  v12 = *(v11 - 8);
  *(v4 + 152) = v12;
  *(v4 + 160) = *(v12 + 64);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA84C260, 0, 0);
}

uint64_t sub_1DA84C260()
{
  if (*(v0 + 184) != 3)
  {
    v1 = v0[22];
    v3 = v0[10];
    v2 = v0[11];
    v4 = sub_1DA940014();
    v6 = v5;
    v7 = sub_1DA9400A4();
    v9 = v8;
    v10 = sub_1DA93FF84();
    v11 = [v10 date];

    sub_1DA93FAB4();
    v12 = *(v2 + 16);
    v13 = v0[22];
    if (v12)
    {
      v47 = v4;
      v14 = v0[21];
      v15 = v0[19];
      v44 = v0[18];
      v48 = v0[17];
      v54 = v0[16];
      v55 = v0[15];
      v50 = v0[14];
      v53 = v0[13];
      v51 = v0[12];
      v16 = v0[10];
      v17 = v0[11];
      v46 = v12;
      v18 = sub_1DA940144();
      v42 = v19;
      v43 = v18;
      v45 = v7;
      v20 = sub_1DA9401E4();
      v22 = v21;
      v23 = sub_1DA940134();
      v41 = v9;
      v24 = v6;
      v26 = v25;
      v49 = *(v17 + 24);
      (*(v15 + 16))(v14, v13, v44);
      v52 = v13;
      v27 = (*(v15 + 80) + 104) & ~*(v15 + 80);
      v28 = swift_allocObject();
      *(v28 + 2) = v43;
      *(v28 + 3) = v42;
      *(v28 + 4) = v20;
      *(v28 + 5) = v22;
      *(v28 + 6) = v23;
      *(v28 + 7) = v26;
      *(v28 + 8) = v46;
      *(v28 + 9) = v47;
      *(v28 + 10) = v24;
      *(v28 + 11) = v45;
      *(v28 + 12) = v41;
      (*(v15 + 32))(&v28[v27], v14, v44);
      v0[6] = sub_1DA84C938;
      v0[7] = v28;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1DA7AF1D0;
      v0[5] = &block_descriptor_4;
      v29 = _Block_copy(v0 + 2);
      v30 = v46;
      sub_1DA940824();
      v0[8] = MEMORY[0x1E69E7CC0];
      sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
      sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
      sub_1DA9411D4();
      MEMORY[0x1E12720D0](0, v48, v50, v29);
      _Block_release(v29);

      (*(v53 + 8))(v50, v51);
      (*(v54 + 8))(v48, v55);
      (*(v15 + 8))(v52, v44);
      v31 = v0[7];
    }

    else
    {
      (*(v0[19] + 8))(v0[22], v0[18]);
    }
  }

  v32 = v0[9];
  v33 = v0[10];
  v34 = sub_1DA9401F4();
  (*(*(v34 - 8) + 16))(v32, v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  swift_storeEnumTagMultiPayload();
  v36 = v0[21];
  v35 = v0[22];
  v37 = v0[17];
  v38 = v0[14];

  v39 = v0[1];

  return v39();
}

uint64_t sub_1DA84C6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = sub_1DA84CF00(a1, a2, a3, a4, a5, a6);
  v13 = *(v27 + 16);
  if (v13)
  {
    v14 = (v27 + 56);
    do
    {
      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v18 = *(v14 - 1);
      v17 = *v14;

      v19 = sub_1DA940A04();

      v20 = sub_1DA940A04();

      v21 = sub_1DA940A04();
      v22 = sub_1DA940A04();
      v23 = a11;
      v24 = a8;
      v25 = sub_1DA93FA44();
      [a7 foundCode:v19 displayCode:v20 application:v21 notification:v22 timestamp:v25];

      a8 = v24;
      a11 = v23;
      v14 += 4;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1DA84C818()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DA84C884(uint64_t a1, char a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA7B7470;

  return sub_1DA84C0CC(a1, a2, a3);
}

uint64_t sub_1DA84C938()
{
  v1 = *(sub_1DA93FAF4() - 8);
  v3 = v0 + ((*(v1 + 80) + 104) & ~*(v1 + 80));
  return sub_1DA84C6C8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
}

void (*sub_1DA84C9B4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E1272460](a2, a3);
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
    return sub_1DA7B94FC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1DA84CA34(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E1272460](a2, a3);
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
    *v3 = v5;
    return sub_1DA84CAB4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA84CABC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DA941264();
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
      result = sub_1DA941264();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DA7AD11C(&qword_1EE110C98, &qword_1ECBD5698, &qword_1DA95B600);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5698, &qword_1DA95B600);
            v9 = sub_1DA84C9B4(v13, i, a3);
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
        sub_1DA7AF3EC(0, &unk_1EE110C38, 0x1E6999A80);
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

uint64_t sub_1DA84CC70(void *a1)
{
  v2 = v1;
  v19 = a1;
  v18 = sub_1DA940FC4();
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940F74();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DA940854();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  *(v1 + 16) = 0;
  v11 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v17[1] = "TimeCodeActor";
  v17[2] = v11;
  sub_1DA940824();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v18);
  v12 = sub_1DA941004();
  v13 = *(v1 + 16);
  v14 = v19;
  *(v2 + 16) = v19;
  *(v2 + 24) = v12;
  v15 = v14;

  return v2;
}

uint64_t sub_1DA84CF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = MEMORY[0x1E69E7CC0];
  v55 = MEMORY[0x1E69E7CC0];
  v10 = [objc_allocWithZone(MEMORY[0x1E6999A90]) initWithScannerType:0 passiveIntent:1];
  v54 = v9;
  if (a2)
  {
    v11 = objc_opt_self();
    v12 = sub_1DA940A04();
    v13 = [v11 scanString:v12 range:sub_1DA93F754() configuration:{0, v10}];

    sub_1DA7AF3EC(0, &unk_1EE110C38, 0x1E6999A80);
    v14 = sub_1DA940BE4();

    sub_1DA7B912C(v14, sub_1DA84CABC);
  }

  v51 = v10;
  if (a4)
  {
    v15 = objc_opt_self();
    v16 = sub_1DA940A04();
    v17 = [v15 scanString:v16 range:sub_1DA93F754() configuration:{0, v10}];

    sub_1DA7AF3EC(0, &unk_1EE110C38, 0x1E6999A80);
    v18 = sub_1DA940BE4();

    sub_1DA7B912C(v18, sub_1DA84CABC);
  }

  v19 = v10;
  if (a6)
  {
    v20 = objc_opt_self();
    v21 = sub_1DA940A04();
    v22 = [v20 scanString:v21 range:sub_1DA93F754() configuration:{0, v10}];

    sub_1DA7AF3EC(0, &unk_1EE110C38, 0x1E6999A80);
    v23 = sub_1DA940BE4();

    sub_1DA7B912C(v23, sub_1DA84CABC);
  }

  v24 = v54;
  if (v54 >> 62)
  {
LABEL_29:
    v25 = sub_1DA941264();
  }

  else
  {
    v25 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25)
  {
    v26 = 0;
    v27 = v24 & 0xFFFFFFFFFFFFFF8;
    v19 = (v24 + 32);
    v28 = *MEMORY[0x1E6999990];
    v52 = (v24 + 32);
    while (1)
    {
      if (v26 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_29;
      }

      v29 = v19[v26];
      v30 = [v29 type];
      result = sub_1DA940A14();
      if (!v28)
      {
        __break(1u);
        return result;
      }

      v33 = result;
      v34 = v32;

      if (v33 == sub_1DA940A14() && v34 == v35)
      {
      }

      else
      {
        v24 = sub_1DA941684();

        if ((v24 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v24 = [v29 value];
      v37 = sub_1DA940A14();
      v39 = v38;

      v40 = [v29 coreResult];
      v41 = DDResultCopyAuthCode();
      if (v41)
      {
        v24 = v41;
        v42 = v25;
        v43 = v27;
        v44 = sub_1DA940A14();
        v53 = v37;
        v45 = v39;
        v46 = v28;
        v48 = v47;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5690, &qword_1DA95B5F8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DA9596E0;
        *(inited + 32) = v44;
        *(inited + 40) = v48;
        v27 = v43;
        v25 = v42;
        v19 = v52;
        v28 = v46;
        *(inited + 48) = v53;
        *(inited + 56) = v45;
        sub_1DA84BE9C(inited);

LABEL_24:
        goto LABEL_12;
      }

LABEL_12:
      if (v25 == ++v26)
      {
        v50 = v55;
        v19 = v51;
        goto LABEL_27;
      }
    }
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_27:

  swift_bridgeObjectRelease_n();
  return v50;
}

id static UNCOneTimeCodeManager.sharedInstance()()
{
  if (qword_1EE110BF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE110BF8;

  return v1;
}

UNCOneTimeCodeManager __swiftcall UNCOneTimeCodeManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.listener = v2;
  result.super.isa = v1;
  return result;
}

char *UNCOneTimeCodeManager.init()()
{
  v1 = [objc_allocWithZone(UNCOneTimeCodeServiceListener) init];
  *&v0[OBJC_IVAR___UNCOneTimeCodeManager_listener] = v1;
  v4.receiver = v0;
  v4.super_class = UNCOneTimeCodeManager;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  [*&v2[OBJC_IVAR___UNCOneTimeCodeManager_listener] activate];
  return v2;
}

void UNCOneTimeCodeManager.foundCode(_:displayCode:application:notification:timestamp:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69832D0]);
  v1 = sub_1DA940A04();
  v2 = sub_1DA940A04();
  v3 = sub_1DA940A04();
  v4 = sub_1DA940A04();
  v5 = sub_1DA93FA44();
  v6 = [v0 initWithCode:v1 displayCode:v2 applicationIdentifier:v3 notificationIdentifier:v4 timestamp:v5];

  v7 = [v12 listener];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5010, &qword_1DA9652C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA9593A0;
  *(inited + 32) = v6;
  v9 = v6;
  sub_1DA84DA64(inited, &qword_1ECBD56E8, qword_1DA95B618, &qword_1ECBD56B0, 0x1E69832D0);
  swift_setDeallocating();
  v10 = *(inited + 16);
  swift_arrayDestroy();
  sub_1DA7AF3EC(0, &qword_1ECBD56B0, 0x1E69832D0);
  sub_1DA84D9C4();
  v11 = sub_1DA940E84();

  [v7 detectedOneTimeCodes_];
}

id sub_1DA84D980()
{
  result = [objc_allocWithZone(UNCOneTimeCodeManager) init];
  qword_1EE110BF8 = result;
  return result;
}

unint64_t sub_1DA84D9C4()
{
  result = qword_1ECBD56B8;
  if (!qword_1ECBD56B8)
  {
    sub_1DA7AF3EC(255, &qword_1ECBD56B0, 0x1E69832D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD56B8);
  }

  return result;
}

void sub_1DA84DA64(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_1DA941264();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_1DA941334();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_1DA941264();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E7CD0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x1E1272460](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_1DA941104();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_1DA7AF3EC(0, a4, a5);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_1DA941114();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_1DA941104();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_1DA7AF3EC(0, a4, a5);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_1DA941114();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1DA84DD74(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1DA941264())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD56C8, &unk_1DA95F380);
      v3 = sub_1DA941334();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1DA941264();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x1E1272460](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1DA941104();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        type metadata accessor for NotificationServiceConnection();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1DA941114();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_1DA941104();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        type metadata accessor for NotificationServiceConnection();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1DA941114();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1DA84E054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93F964();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 != -1 && close(v7) == -1)
  {
    if (qword_1EE110D20 != -1)
    {
      swift_once();
    }

    v10 = sub_1DA9405A4();
    __swift_project_value_buffer(v10, qword_1EE11AD30);
    (*(v5 + 16))(v9, a2, v4);
    v11 = sub_1DA940584();
    v12 = sub_1DA940F24();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136380931;
      sub_1DA828278();
      v15 = sub_1DA941614();
      v17 = v16;
      (*(v5 + 8))(v9, v4);
      v18 = sub_1DA7AE6E8(v15, v17, &v21);

      *(v13 + 4) = v18;
      *(v13 + 12) = 1026;
      *(v13 + 14) = MEMORY[0x1E12718A0](v19);
      _os_log_impl(&dword_1DA7A9000, v11, v12, "Failed to close file descriptor for %{private}s. errno: %{public}d", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E12739F0](v14, -1, -1);
      MEMORY[0x1E12739F0](v13, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }
}

void sub_1DA84E348(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v7 = sub_1DA940804();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 notificationRecord];
  v13 = [v12 identifier];

  if (v13)
  {
    v14 = sub_1DA940A14();
    v16 = v15;

    aBlock = 0xD00000000000003CLL;
    v27 = 0x80000001DA9522A0;
    MEMORY[0x1E1271BD0](v14, v16);

    v17 = objc_allocWithZone(MEMORY[0x1E69D54C8]);
    v18 = sub_1DA940A04();

    v19 = [v17 initWithIdentifier_];

    sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
    (*(v8 + 104))(v11, *MEMORY[0x1E69E7F88], v7);
    v20 = sub_1DA941014();
    (*(v8 + 8))(v11, v7);
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = v4;
    v21[4] = v25;
    v21[5] = a3;
    v30 = sub_1DA852C70;
    v31 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1DA7B00D0;
    v29 = &block_descriptor_5;
    v22 = _Block_copy(&aBlock);
    v23 = a1;

    [v19 scheduleWithFireInterval:v20 leewayInterval:v22 queue:5.0 handler:1.0];
    _Block_release(v22);
  }

  else
  {
    __break(1u);
  }
}

void sub_1DA84E620(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1EE11AD30);
  v6 = a2;
  v7 = sub_1DA940584();
  v8 = sub_1DA940F34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136315138;
    v11 = [v6 notificationRecord];
    v12 = [v11 identifier];

    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = sub_1DA940A14();
    v15 = v14;

    v16 = sub_1DA7AE6E8(v13, v15, v22);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1DA7A9000, v7, v8, "startTimerFor(record): Fired for: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12739F0](v10, -1, -1);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  else
  {
  }

  sub_1DA822F48(a3 + 16, v22, &unk_1ECBD5708, &qword_1DA95B8E0);
  if (v22[3])
  {
    sub_1DA7BABAC(v22, v21);
    sub_1DA7BA120(v22, &unk_1ECBD5708, &qword_1DA95B8E0);
    v17 = __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v18 = *(*v17 + 112);
    v19 = MEMORY[0x1EEE9AC00](v17);
    MEMORY[0x1EEE9AC00](v19);
    os_unfair_lock_lock(v18 + 4);
    sub_1DA84A760(v20);
    os_unfair_lock_unlock(v18 + 4);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_1DA7BA120(v22, &unk_1ECBD5708, &qword_1DA95B8E0);
  }
}

uint64_t sub_1DA84E8F8()
{
  sub_1DA7BA120(v0 + 16, &unk_1ECBD5708, &qword_1DA95B8E0);

  return swift_deallocClassInstance();
}

void sub_1DA84E964(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v103 = a4;
  v104 = a6;
  v107 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v97 = &v95 - v14;
  v15 = sub_1DA93F964();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v7;
  v102 = *(v7 + 112);
  os_unfair_lock_lock(v102 + 4);
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v20 = sub_1DA9405A4();
  v21 = __swift_project_value_buffer(v20, qword_1EE11AD30);
  v99 = *(v16 + 16);
  v100 = v16 + 16;
  v99(v19, a1, v15);

  v95 = v21;
  v22 = sub_1DA940584();
  v23 = sub_1DA940F34();

  v24 = os_log_type_enabled(v22, v23);
  v106 = a1;
  v101 = v15;
  v96 = v16;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v98 = a5;
    v27 = v26;
    v113 = v26;
    *v25 = 136315906;
    sub_1DA828278();
    v28 = sub_1DA941614();
    v29 = v15;
    v31 = v30;
    (*(v16 + 8))(v19, v29);
    v32 = sub_1DA7AE6E8(v28, v31, &v113);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1DA7AE6E8(v107, a3, &v113);
    *(v25 + 22) = 2080;
    v33 = v103;
    *(v25 + 24) = sub_1DA7AE6E8(v103, v98, &v113);
    *(v25 + 32) = 2080;
    v34 = v104;
    *(v25 + 34) = sub_1DA7AE6E8(v104, a7, &v113);
    _os_log_impl(&dword_1DA7A9000, v22, v23, "receiveAttachment(fileURL): %s attachmentIdentifier: %s, notificationIdentifier: %s, bundleIdentifier: %s", v25, 0x2Au);
    swift_arrayDestroy();
    v35 = v27;
    a5 = v98;
    MEMORY[0x1E12739F0](v35, -1, -1);
    MEMORY[0x1E12739F0](v25, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
    v33 = v103;
    v34 = v104;
  }

  v113 = v34;
  v114 = a7;

  MEMORY[0x1E1271BD0](v33, a5);
  v37 = v113;
  v36 = v114;
  v38 = v105;
  swift_beginAccess();
  v39 = *(v38 + 120);
  if (!*(v39 + 16) || (v40 = *(v38 + 120), , v41 = sub_1DA85A4B4(v37, v36), v43 = v42, , (v43 & 1) == 0))
  {

    v111 = v34;
    v112 = a7;

    MEMORY[0x1E1271BD0](v33, a5);
    v63 = v111;
    v62 = v112;
    swift_beginAccess();
    v64 = *(v38 + 128);
    if (*(v64 + 16) && (v65 = *(v38 + 128), , v66 = sub_1DA85A4B4(v63, v62), v68 = v67, , (v68 & 1) != 0))
    {
      v69 = *(*(v64 + 56) + 8 * v66);

      v70 = v97;
      v71 = v101;
      v99(v97, v106, v101);
      (*(v96 + 56))(v70, 0, 1, v71);
      swift_beginAccess();

      sub_1DA8F02B8(v70, v107, a3);
      swift_endAccess();
    }

    else
    {

      v109 = v34;
      v110 = a7;

      MEMORY[0x1E1271BD0](v33, a5);
      v73 = v109;
      v72 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5700, &unk_1DA95B8D0);
      v74 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD54C0, &qword_1DA95B148) - 8);
      v75 = *(*v74 + 72);
      v76 = (*(*v74 + 80) + 32) & ~*(*v74 + 80);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_1DA9596E0;
      v78 = (v77 + v76);
      v79 = v74[14];
      v80 = v106;
      *v78 = v107;
      *(v78 + 1) = a3;
      v99(&v78[v79], v80, v101);

      v81 = sub_1DA8483C8(v77);
      swift_setDeallocating();
      sub_1DA7BA120(v78, &unk_1ECBD54C0, &qword_1DA95B148);
      swift_deallocClassInstance();
      type metadata accessor for UserNotificationsCloudReceiverHoldingPen.HoldingAttachments();
      v82 = swift_allocObject();
      *(v82 + 16) = v81;
      swift_beginAccess();
      v83 = *(v38 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = *(v38 + 128);
      *(v38 + 128) = 0x8000000000000000;
      sub_1DA90AC94(v82, v73, v72, isUniquelyReferenced_nonNull_native);

      *(v38 + 128) = v108;
      swift_endAccess();
    }

    v85 = v102;
    goto LABEL_37;
  }

  v44 = *(*(v39 + 56) + 8 * v41);

  v45 = *(v44 + 32);

  v46 = v45;
  v47 = [v46 notificationRecord];
  v48 = [v47 attachments];

  if (v48)
  {
    v103 = v46;
    v101 = a7;
    sub_1DA7AF3EC(0, &unk_1EE110C10, off_1E85D5BC8);
    v49 = sub_1DA940BE4();

    if (v49 >> 62)
    {
      v50 = sub_1DA941264();
      if (v50)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v50)
      {
LABEL_11:
        if (v50 >= 1)
        {
          v51 = 0;
          while (1)
          {
            if ((v49 & 0xC000000000000001) != 0)
            {
              v53 = MEMORY[0x1E1272460](v51, v49);
            }

            else
            {
              v53 = *(v49 + 8 * v51 + 32);
            }

            v54 = v53;
            v55 = [v53 identifier];
            if (!v55)
            {
              goto LABEL_15;
            }

            v56 = v55;
            v57 = sub_1DA940A14();
            v59 = v58;

            if (v57 == v107 && v59 == a3)
            {
            }

            else
            {
              v61 = sub_1DA941684();

              if ((v61 & 1) == 0)
              {
                goto LABEL_15;
              }
            }

            v52 = sub_1DA93F904();
            [v54 setURL_];

LABEL_15:
            ++v51;

            if (v50 == v51)
            {
              goto LABEL_32;
            }
          }
        }

        __break(1u);
        goto LABEL_39;
      }
    }

LABEL_32:

    v86 = v103;
    v87 = [v103 notificationRecord];

    v88 = sub_1DA84FF60(v87);
    v85 = v102;
    if (v88)
    {
      v89 = v86;
      v90 = sub_1DA940584();
      v91 = sub_1DA940F34();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = 138412290;
        v94 = [v89 notificationRecord];
        *(v92 + 4) = v94;
        *v93 = v94;
        _os_log_impl(&dword_1DA7A9000, v90, v91, "receiveAttachment(fileURL:): All attachments found for: %@", v92, 0xCu);
        sub_1DA7BA120(v93, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v93, -1, -1);
        MEMORY[0x1E12739F0](v92, -1, -1);
      }

      sub_1DA84F300(v89, v104, v101);
    }

LABEL_37:
    os_unfair_lock_unlock(v85 + 4);
    return;
  }

LABEL_39:
  __break(1u);
}

void sub_1DA84F300(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = [a1 notificationRecord];
  v13 = [v12 identifier];

  if (v13)
  {
    v14 = sub_1DA940A14();
    v16 = v15;

    v23 = a2;
    v24 = a3;

    MEMORY[0x1E1271BD0](v14, v16);

    v17 = v23;
    v18 = v24;
    swift_beginAccess();
    sub_1DA8F0158(0, v17, v18);
    swift_endAccess();
    v19 = sub_1DA940D34();
    (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v4;
    v20[5] = a1;
    v20[6] = a2;
    v20[7] = a3;

    v21 = a1;
    sub_1DA84F868(0, 0, v11, &unk_1DA95B8B8, v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DA84F4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA84F510, 0, 0);
}

uint64_t sub_1DA84F510()
{
  v1 = v0[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = *(v0[3] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v14 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_1DA84F6A0;
    v8 = v0[5];
    v9 = v0[6];
    v10 = v0[4];

    return v14(v10, 1, v8, v9, ObjectType, v3);
  }

  else
  {
    v12 = v0[2];
    *v12 = 0;
    *(v12 + 8) = 1;
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1DA84F6A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_1DA84F804;
  }

  else
  {
    v8 = *(v4 + 56);
    swift_unknownObjectRelease();
    *(v4 + 80) = a1;
    v7 = sub_1DA84F7D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DA84F7D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56) == 0;
  *v1 = *(v0 + 80);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1DA84F804()
{
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1DA84F868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1DA822F48(a3, v24 - v10, &qword_1ECBD4FA0, &unk_1DA958730);
  v12 = sub_1DA940D34();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DA7BA120(v11, &qword_1ECBD4FA0, &unk_1DA958730);
  }

  else
  {
    sub_1DA940D24();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DA940C34();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1DA940A94() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD56F0, &unk_1DA95B8C0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD56F0, &unk_1DA95B8C0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1DA84FB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1DA822F48(a3, v24 - v10, &qword_1ECBD4FA0, &unk_1DA958730);
  v12 = sub_1DA940D34();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DA7BA120(v11, &qword_1ECBD4FA0, &unk_1DA958730);
  }

  else
  {
    sub_1DA940D24();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DA940C34();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_1DA940A94() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1DA84FDEC()
{
  [*(v0 + 40) invalidate];
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DA84FE44()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA84FE7C()
{
  sub_1DA7C5714((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[16];

  sub_1DA7C5714((v0 + 17));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA84FF60(void *a1)
{
  v96[3] = *MEMORY[0x1E69E9840];
  v2 = sub_1DA93F964();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v79 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v90 = &v79 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v91 = &v79 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v79 - v15;
  v17 = [a1 attachments];
  if (!v17)
  {
    __break(1u);
  }

  v18 = v17;
  sub_1DA7AF3EC(0, &unk_1EE110C10, off_1E85D5BC8);
  v19 = sub_1DA940BE4();

  if (v19 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DA941264())
  {
    v79 = v10;
    v80 = v7;
    v10 = 0;
    v92 = v19 & 0xC000000000000001;
    v84 = v19 & 0xFFFFFFFFFFFFFF8;
    v22 = (v3 + 8);
    v89 = (v3 + 16);
    *&v20 = 136380931;
    v83 = v20;
    v81 = xmmword_1DA9596E0;
    v82 = v16;
    v87 = (v3 + 8);
    v88 = v19;
    v86 = i;
    while (1)
    {
      if (v92)
      {
        v23 = MEMORY[0x1E1272460](v10, v19);
      }

      else
      {
        if (v10 >= *(v84 + 16))
        {
          goto LABEL_35;
        }

        v23 = *(v19 + 8 * v10 + 32);
      }

      v24 = v23;
      v7 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v25 = [v23 URL];
      if (v25)
      {
        v26 = v25;
        sub_1DA93F914();

        v27 = v91;
        sub_1DA93F8D4();
        sub_1DA93F924();
        v28 = *v22;
        (*v22)(v27, v2);
        sub_1DA940A94();

        v29 = sub_1DA9407B4();

        if (v29 == -1)
        {

          if (qword_1EE110D20 != -1)
          {
            swift_once();
          }

          v50 = sub_1DA9405A4();
          __swift_project_value_buffer(v50, qword_1EE11AD30);
          v51 = v80;
          (*v89)(v80, v16, v2);
          v52 = sub_1DA940584();
          v53 = sub_1DA940F34();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            LODWORD(v92) = v53;
            v55 = v54;
            v56 = swift_slowAlloc();
            v93 = v28;
            v57 = v56;
            v96[0] = v56;
            *v55 = v83;
            sub_1DA828278();
            v58 = sub_1DA941614();
            v59 = v2;
            v61 = v60;
            v93(v51, v59);
            v62 = sub_1DA7AE6E8(v58, v61, v96);
            v2 = v59;

            *(v55 + 4) = v62;
            *(v55 + 12) = 1024;
            *(v55 + 14) = MEMORY[0x1E12718A0](v63);
            _os_log_impl(&dword_1DA7A9000, v52, v92, "Unable to open %{private}s. errno: %d", v55, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v57);
            v28 = v93;
            MEMORY[0x1E12739F0](v57, -1, -1);
            MEMORY[0x1E12739F0](v55, -1, -1);
          }

          else
          {

            v28(v51, v2);
          }

          sub_1DA84E054(0xFFFFFFFFLL, v16);

          v28(v16, v2);
          goto LABEL_33;
        }

        v95 = 0;
        swift_beginAccess();
        v30 = read(v29, &v95, 1uLL);
        swift_endAccess();
        v94 = v24;
        LODWORD(v93) = v29;
        if (v30 != 1)
        {

          if (qword_1EE110D20 != -1)
          {
            swift_once();
          }

          v64 = sub_1DA9405A4();
          __swift_project_value_buffer(v64, qword_1EE11AD30);
          v65 = v79;
          (*v89)(v79, v16, v2);
          v66 = sub_1DA940584();
          v67 = sub_1DA940F34();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = v2;
            v70 = swift_slowAlloc();
            v96[0] = v70;
            *v68 = 136380675;
            sub_1DA828278();
            v71 = sub_1DA941614();
            v72 = v28;
            v74 = v73;
            v72(v65, v69);
            v75 = sub_1DA7AE6E8(v71, v74, v96);
            v28 = v72;
            v29 = v93;

            *(v68 + 4) = v75;
            _os_log_impl(&dword_1DA7A9000, v66, v67, "Failed to read first byte from %{private}s", v68, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v70);
            v76 = v70;
            v2 = v69;
            MEMORY[0x1E12739F0](v76, -1, -1);
            MEMORY[0x1E12739F0](v68, -1, -1);
          }

          else
          {

            v28(v65, v2);
          }

          sub_1DA84E054(v29, v16);

          v28(v16, v2);
LABEL_33:
          result = 0;
          goto LABEL_38;
        }

        v31 = v28;
        if (qword_1EE110D20 != -1)
        {
          swift_once();
        }

        v32 = sub_1DA9405A4();
        v3 = __swift_project_value_buffer(v32, qword_1EE11AD30);
        v33 = v90;
        (*v89)(v90, v16, v2);
        v34 = sub_1DA940584();
        v35 = sub_1DA940F04();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = v33;
          v85 = swift_slowAlloc();
          v96[0] = v85;
          *v36 = v83;
          sub_1DA828278();
          v38 = sub_1DA941614();
          v39 = v2;
          v41 = v40;
          v31(v37, v39);
          v42 = sub_1DA7AE6E8(v38, v41, v96);

          *(v36 + 4) = v42;
          *(v36 + 12) = 2081;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD55D8, qword_1DA95B2F0);
          v43 = swift_allocObject();
          *(v43 + 16) = v81;
          v44 = v95;
          *(v43 + 56) = MEMORY[0x1E69E7508];
          *(v43 + 64) = MEMORY[0x1E69E7558];
          *(v43 + 32) = v44;
          v45 = sub_1DA940A44();
          v3 = v46;
          v47 = sub_1DA7AE6E8(v45, v46, v96);

          *(v36 + 14) = v47;
          v2 = v39;
          v16 = v82;
          _os_log_impl(&dword_1DA7A9000, v34, v35, "First byte of attachment %{private}s: 0x%{private}s", v36, 0x16u);
          v48 = v85;
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v48, -1, -1);
          v49 = v36;
          v22 = v87;
          MEMORY[0x1E12739F0](v49, -1, -1);
        }

        else
        {

          v31(v33, v2);
        }

        sub_1DA84E054(v93, v16);

        v31(v16, v2);
        v19 = v88;
        i = v86;
      }

      else
      {
      }

      ++v10;
      if (v7 == i)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

LABEL_37:

  result = 1;
LABEL_38:
  v78 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DA8508F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v293 = a2;
  v294 = a3;
  v285 = sub_1DA93FB24();
  v284 = *(v285 - 1);
  isa = v284[8].isa;
  MEMORY[0x1EEE9AC00](v285);
  v283 = &v262 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = sub_1DA93F8E4();
  v12 = *(v286 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v286);
  v15 = &v262 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA93F964();
  v17 = *(v16 - 8);
  v291 = v16;
  v292 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v277 = &v262 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v278 = &v262 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v287 = (&v262 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v289 = &v262 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v272 = &v262 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v273 = &v262 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v280 = &v262 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v270 = &v262 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v271 = (&v262 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v275 = &v262 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v274 = &v262 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v276 = &v262 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v281 = &v262 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v282 = &v262 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v295 = (&v262 - v48);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v262 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v296 = &v262 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x1EEE9AC00](v53 - 8);
  v279 = &v262 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = &v262 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v262 - v60;
  v288 = v6[14];
  os_unfair_lock_lock(v288 + 4);
  v62 = &selRef_bulletinGroupingSetting;
  if (a5 >> 60 == 15)
  {
LABEL_25:
    v112 = [a1 v62[439]];
    v81 = &selRef_imageDataForContentURL_;
    v113 = [v112 attachments];

    if (!v113)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v59 = a1;
    sub_1DA7AF3EC(0, &unk_1EE110C10, off_1E85D5BC8);
    v114 = sub_1DA940BE4();

    if (v114 >> 62)
    {
LABEL_90:
      v115 = sub_1DA941264();
    }

    else
    {
      v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v115)
    {
      a1 = [v59 v62[439]];
      v116 = [a1 identifier];

      if (!v116)
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v117 = sub_1DA940A14();
      v119 = v118;

      v302 = v293;
      v303 = v294;

      MEMORY[0x1E1271BD0](v117, v119);

      a5 = v302;
      a1 = v303;
      swift_beginAccess();
      v120 = v6[16];
      if (*(v120 + 16))
      {
        v290 = v59;

        a5 = sub_1DA85A4B4(a5, a1);
        v15 = v121;

        if (v15)
        {
          v296 = *(*(v120 + 56) + 8 * a5);

          a1 = v290;
          a5 = [v290 v62[439]];
          v122 = [a5 identifier];

          if (!v122)
          {
LABEL_99:
            __break(1u);
            goto LABEL_100;
          }

          v123 = sub_1DA940A14();
          v125 = v124;

          v300 = v293;
          v301 = v294;

          MEMORY[0x1E1271BD0](v123, v125);

          v126 = v300;
          v15 = v301;
          swift_beginAccess();
          sub_1DA8F0184(0, v126, v15);
          swift_endAccess();
          a5 = [a1 v62[439]];
          v127 = [a5 v81[473]];

          if (!v127)
          {
LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

          v128 = sub_1DA940BE4();

          v269 = v6;
          if (v128 >> 62)
          {
            v6 = sub_1DA941264();
          }

          else
          {
            v6 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          swift_beginAccess();
          if (v6)
          {
            v15 = 0;
            v295 = (v128 & 0xC000000000000001);
            a1 = v128 & 0xFFFFFFFFFFFFFF8;
            v287 = (v292 + 16);
            v286 = v292 + 8;
            while (1)
            {
              if (v295)
              {
                v130 = MEMORY[0x1E1272460](v15, v128);
              }

              else
              {
                if (v15 >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_89;
                }

                v130 = *(v128 + 8 * v15 + 32);
              }

              v81 = v130;
              a5 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                __break(1u);
LABEL_89:
                __break(1u);
                goto LABEL_90;
              }

              v131 = [(SEL *)v130 identifier];
              if (!v131)
              {
                break;
              }

              v132 = v131;
              v133 = sub_1DA940A14();
              v59 = v134;

              v135 = *(v296 + 2);
              if (*(v135 + 16))
              {
                v136 = *(v296 + 2);

                v137 = sub_1DA85A4B4(v133, v59);
                v139 = v138;

                if (v139)
                {
                  v59 = v291;
                  v140 = v292;
                  v141 = *(v135 + 56) + *(v292 + 72) * v137;
                  v142 = v289;
                  (*(v292 + 16))(v289, v141, v291);

                  v129 = sub_1DA93F904();
                  (*(v140 + 8))(v142, v59);
                }

                else
                {

                  v129 = 0;
                }

                v62 = &selRef_bulletinGroupingSetting;
              }

              else
              {

                v129 = 0;
              }

              [(SEL *)v81 setURL:v129];

              ++v15;
              if (a5 == v6)
              {
                goto LABEL_58;
              }
            }

            __break(1u);
            goto LABEL_95;
          }

LABEL_58:

          v59 = v290;
          v150 = [v290 v62[439]];
          v151 = sub_1DA84FF60(v150);

          if (v151)
          {
            if (qword_1EE110D20 == -1)
            {
LABEL_60:
              v152 = sub_1DA9405A4();
              __swift_project_value_buffer(v152, qword_1EE11AD30);
              v153 = v59;
              v154 = sub_1DA940584();
              v155 = sub_1DA940F34();

              if (os_log_type_enabled(v154, v155))
              {
                v156 = swift_slowAlloc();
                v157 = swift_slowAlloc();
                *v156 = 138412290;
                *(v156 + 4) = v153;
                *v157 = v153;
                v158 = v153;
                _os_log_impl(&dword_1DA7A9000, v154, v155, "receiveAdd(notification:): All attachments found for: %@", v156, 0xCu);
                sub_1DA7BA120(v157, &unk_1ECBD5430, &unk_1DA959190);
                MEMORY[0x1E12739F0](v157, -1, -1);
                MEMORY[0x1E12739F0](v156, -1, -1);
              }

              sub_1DA84F300(v153, v293, v294);

              goto LABEL_72;
            }

LABEL_93:
            swift_once();
            goto LABEL_60;
          }

          v6 = v269;
        }

        else
        {

          v59 = v290;
        }
      }

      else
      {
      }

      v159 = [v59 v62[439]];
      v160 = [v159 identifier];

      if (!v160)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v161 = sub_1DA940A14();
      a5 = v162;

      v300 = v293;
      v301 = v294;

      MEMORY[0x1E1271BD0](v161, a5);

      a1 = v300;
      v163 = v301;
      swift_beginAccess();
      v164 = v6[15];
      if (*(v164 + 16) && (v165 = v6[15], , a1 = sub_1DA85A4B4(a1, v163), a5 = v166, , (a5 & 1) != 0))
      {
        v167 = *(*(v164 + 56) + 8 * a1);

        v168 = *(v167 + 32);
        *(v167 + 32) = v59;
        v169 = v59;
      }

      else
      {

        v170 = [v59 v62[439]];
        v171 = [v170 identifier];

        if (!v171)
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v172 = sub_1DA940A14();
        v174 = v173;

        v176 = v293;
        v175 = v294;
        v298 = v293;
        v299 = v294;

        MEMORY[0x1E1271BD0](v172, v174);

        v178 = v298;
        v177 = v299;
        v179 = *__swift_project_boxed_opaque_existential_1(v6 + 9, v6[12]);
        sub_1DA84E348(v59, v176, v175);
        v181 = v180;
        type metadata accessor for UserNotificationsCloudReceiverHoldingPen.HoldingNotifications();
        v182 = swift_allocObject();
        v182[2] = v176;
        v182[3] = v175;
        v182[4] = v59;
        v182[5] = v181;
        swift_beginAccess();
        v183 = v59;

        v184 = v6[15];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v297 = v6[15];
        v6[15] = 0x8000000000000000;
        sub_1DA90AC68(v182, v178, v177, isUniquelyReferenced_nonNull_native);

        v6[15] = v297;
        swift_endAccess();
      }
    }

    else
    {
      if (qword_1EE110D20 != -1)
      {
        swift_once();
      }

      v143 = sub_1DA9405A4();
      __swift_project_value_buffer(v143, qword_1EE11AD30);
      v144 = v59;
      v145 = sub_1DA940584();
      a5 = sub_1DA940F34();
      if (os_log_type_enabled(v145, a5))
      {
        a1 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v302 = v15;
        *a1 = 136315138;
        v59 = [v144 v62[439]];
        v81 = [v59 identifier];

        if (!v81)
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v146 = sub_1DA940A14();
        v148 = v147;

        v149 = sub_1DA7AE6E8(v146, v148, &v302);

        *(a1 + 4) = v149;
        _os_log_impl(&dword_1DA7A9000, v145, a5, "receiveAdd(notification:): No attachments - send it on: %s", a1, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x1E12739F0](v15, -1, -1);
        MEMORY[0x1E12739F0](a1, -1, -1);
      }

      else
      {
      }

      sub_1DA84F300(v144, v293, v294);
    }

LABEL_72:
    os_unfair_lock_unlock(v288 + 4);
    return;
  }

  v290 = a1;
  v63 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v63 != 2)
    {
      goto LABEL_20;
    }

    v65 = *(a4 + 16);
    v64 = *(a4 + 24);
    v66 = v64 - v65;
    if (!__OFSUB__(v64, v65))
    {
LABEL_12:
      sub_1DA841874(a4, a5);
      if (v66 > 0)
      {
        goto LABEL_13;
      }

LABEL_20:
      sub_1DA852CB0(a4, a5);
LABEL_21:
      a1 = v290;
      goto LABEL_25;
    }

    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(a4), a4))
    {
      __break(1u);
      goto LABEL_93;
    }

    v66 = HIDWORD(a4) - a4;
    goto LABEL_12;
  }

  if (v63)
  {
    goto LABEL_10;
  }

  if (!BYTE6(a5))
  {
    goto LABEL_20;
  }

LABEL_13:
  v67 = [v290 notificationRecord];
  v68 = [v67 communicationContextContentURL];

  if (!v68)
  {
    sub_1DA852CB0(a4, a5);
    (*(v292 + 56))(v61, 1, 1, v291);
    sub_1DA7BA120(v61, &qword_1ECBD6310, &unk_1DA95F3B0);
    a1 = v290;
    v62 = &selRef_bulletinGroupingSetting;
    goto LABEL_25;
  }

  v267 = a4;
  v268 = a5;
  v269 = v6;
  sub_1DA93F914();

  v69 = v291;
  v70 = v292 + 56;
  v71 = *(v292 + 56);
  v71(v61, 0, 1, v291);
  sub_1DA7BA120(v61, &qword_1ECBD6310, &unk_1DA95F3B0);
  v72 = NSTemporaryDirectory();
  sub_1DA940A14();
  v73 = v12;

  v265 = v70;
  v264 = v71;
  v71(v59, 1, 1, v69);
  v74 = *MEMORY[0x1E6968F70];
  v75 = *(v12 + 104);
  v76 = v286;
  v75(v15, v74, v286);
  sub_1DA93F934();
  v77 = v283;
  sub_1DA93FB14();
  v78 = sub_1DA93FB04();
  v80 = v79;
  (v284[1].isa)(v77, v285);
  v302 = v78;
  v303 = v80;
  v81 = v291;
  v75(v15, v74, v76);
  v82 = v292;
  sub_1DA8282D0();
  v83 = v296;
  sub_1DA93F944();
  (*(v73 + 8))(v15, v76);

  v84 = v82 + 8;
  v85 = *(v82 + 8);
  v85(v51, v81);
  if (qword_1EE110D20 != -1)
  {
    swift_once();
  }

  v86 = sub_1DA9405A4();
  v87 = __swift_project_value_buffer(v86, qword_1EE11AD30);
  v59 = (v82 + 16);
  v88 = *(v82 + 16);
  v89 = v295;
  v266 = v88;
  v88(v295, v83, v81);
  v15 = v290;
  v283 = v87;
  v90 = sub_1DA940584();
  v91 = sub_1DA940F34();
  v92 = os_log_type_enabled(v90, v91);
  v62 = &selRef_bulletinGroupingSetting;
  v286 = v84;
  v285 = v85;
  v284 = v15;
  if (v92)
  {
    v263 = v91;
    a5 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v302 = v81;
    *a5 = 136315650;
    a1 = [v15 notificationRecord];
    v93 = [a1 identifier];

    if (!v93)
    {
LABEL_102:

      v285(v295, v291);
      __break(1u);
      goto LABEL_103;
    }

    v262 = v81;
    v94 = sub_1DA940A14();
    v81 = v95;

    v96 = sub_1DA7AE6E8(v94, v81, &v302);

    *(a5 + 4) = v96;
    *(a5 + 12) = 2080;
    a1 = [v15 notificationRecord];
    v97 = [a1 communicationContextContentURL];

    if (!v97)
    {
LABEL_103:
      __break(1u);

      v285(v287, v291);
      __break(1u);
      __break(1u);
      goto LABEL_104;
    }

    v98 = v281;
    sub_1DA93F914();

    v99 = v291;
    v100 = v282;
    (*(v292 + 32))(v282, v98, v291);
    sub_1DA828278();
    v101 = sub_1DA941614();
    v103 = v102;
    v104 = v285;
    v285(v100, v99);
    v105 = sub_1DA7AE6E8(v101, v103, &v302);
    v81 = v99;

    *(a5 + 14) = v105;
    *(a5 + 22) = 2080;
    v106 = v295;
    v107 = sub_1DA941614();
    v109 = v108;
    v104(v106, v81);
    v110 = sub_1DA7AE6E8(v107, v109, &v302);

    *(a5 + 24) = v110;
    _os_log_impl(&dword_1DA7A9000, v90, v263, "receiveAdd(notification:): notification: %s communicationContextContentURL: %s tempLocation: %s", a5, 0x20u);
    v111 = v262;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v111, -1, -1);
    MEMORY[0x1E12739F0](a5, -1, -1);

    v62 = &selRef_bulletinGroupingSetting;
  }

  else
  {

    v85(v89, v81);
  }

  sub_1DA93F9B4();
  v6 = v269;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v191 = v279;
    v264(v279, 1, 1, v81);
    v192 = v296;
LABEL_81:
    sub_1DA7BA120(v191, &qword_1ECBD6310, &unk_1DA95F3B0);
    a5 = v280;
    v266(v280, v192, v81);
    v227 = v81;
    v81 = v284;

    a1 = sub_1DA940584();
    v15 = sub_1DA940F14();
    if (os_log_type_enabled(a1, v15))
    {
      v228 = swift_slowAlloc();
      v295 = swift_slowAlloc();
      v300 = v295;
      *v228 = 136315906;
      v229 = [v81 v62[439]];
      v230 = [v229 identifier];

      if (!v230)
      {
LABEL_105:

        v285(a5, v291);
        __break(1u);
        goto LABEL_106;
      }

      v284 = a1;
      LODWORD(v287) = v15;

      v231 = sub_1DA940A14();
      v233 = v232;

      v234 = sub_1DA7AE6E8(v231, v233, &v300);

      *(v228 + 4) = v234;
      *(v228 + 12) = 2080;
      v235 = [v81 v62[439]];
      v236 = [v235 communicationContextContentURL];

      if (!v236)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v237 = v272;
      sub_1DA93F914();

      v238 = v291;
      v239 = v273;
      (*(v292 + 32))(v273, v237, v291);
      sub_1DA828278();
      v240 = sub_1DA941614();
      v242 = v241;
      v243 = v239;
      v15 = v286;
      a5 = v285;
      v285(v243, v238);
      v244 = sub_1DA7AE6E8(v240, v242, &v300);

      *(v228 + 14) = v244;
      *(v228 + 22) = 2080;
      Strong = swift_unknownObjectWeakLoadStrong();
      v246 = v6[18];
      v302 = Strong;
      v303 = v246;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5718, &qword_1DA95B8E8);
      v247 = sub_1DA940A74();
      v249 = sub_1DA7AE6E8(v247, v248, &v300);

      *(v228 + 24) = v249;
      *(v228 + 32) = 2080;
      v59 = v280;
      v250 = sub_1DA941614();
      v252 = v251;
      (a5)(v59, v238);
      v253 = sub_1DA7AE6E8(v250, v252, &v300);

      *(v228 + 34) = v253;
      v254 = v284;
      _os_log_impl(&dword_1DA7A9000, v284, v287, "receiveAdd(notification:): notification: %s communicationContextContentURL: %s attachmentDelegate: %s failed to generate storage URL for tempLocation: %s", v228, 0x2Au);
      v255 = v295;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v255, -1, -1);
      MEMORY[0x1E12739F0](v228, -1, -1);

      sub_1DA852CB0(v267, v268);
      (a5)(v296, v238);
    }

    else
    {

      sub_1DA852CB0(v267, v268);

      v256 = v285;
      v285(a5, v227);
      v256(v192, v227);
    }

    goto LABEL_21;
  }

  v186 = v6[18];
  a5 = [v284 v62[439]];
  a1 = [a5 identifier];

  if (!a1)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  ObjectType = swift_getObjectType();
  v188 = sub_1DA940A14();
  v190 = v189;

  v191 = v279;
  v192 = v296;
  (*(v186 + 8))(v296, v188, v190, v293, v294, ObjectType, v186);
  swift_unknownObjectRelease();

  v81 = v291;
  if ((*(v292 + 48))(v191, 1, v291) == 1)
  {
    goto LABEL_81;
  }

  v193 = v81;
  v194 = *(v292 + 32);
  v195 = v276;
  v194(v276, v191, v193);
  a5 = v274;
  v196 = v195;
  v197 = v266;
  v266(v274, v196, v193);
  v15 = v275;
  v197(v275, v192, v193);
  a1 = v284;
  v198 = sub_1DA940584();
  v59 = sub_1DA940F34();
  if (!os_log_type_enabled(v198, v59))
  {

    v217 = v285;
    v285(v15, v193);
    v217(a5, v193);
    v213 = v193;
    goto LABEL_87;
  }

  LODWORD(v287) = v59;
  v295 = v198;
  v199 = swift_slowAlloc();
  v200 = swift_slowAlloc();
  v302 = v200;
  *v199 = 136315906;
  v201 = [a1 v62[439]];
  v202 = [v201 identifier];

  if (!v202)
  {
LABEL_107:

    v260 = v291;
    v261 = v285;
    v285(v275, v291);
    v261(v274, v260);
    __break(1u);
    goto LABEL_108;
  }

  v284 = v200;
  v203 = sub_1DA940A14();
  v205 = v204;

  v206 = sub_1DA7AE6E8(v203, v205, &v302);

  *(v199 + 4) = v206;
  *(v199 + 12) = 2080;
  v207 = [a1 v62[439]];
  v208 = [v207 communicationContextContentURL];

  v209 = v274;
  if (v208)
  {
    v210 = v270;
    sub_1DA93F914();

    v211 = v271;
    v212 = v291;
    v194(v271, v210, v291);
    v213 = v212;
    sub_1DA828278();
    v214 = sub_1DA941614();
    v216 = v215;
    v217 = v285;
    v285(v211, v213);
    v218 = sub_1DA7AE6E8(v214, v216, &v302);

    *(v199 + 14) = v218;
    *(v199 + 22) = 2080;
    v219 = sub_1DA941614();
    v221 = v220;
    v217(v209, v213);
    v222 = sub_1DA7AE6E8(v219, v221, &v302);

    *(v199 + 24) = v222;
    *(v199 + 32) = 2080;
    v15 = v275;
    v223 = sub_1DA941614();
    v59 = v224;
    v217(v15, v213);
    v225 = sub_1DA7AE6E8(v223, v59, &v302);

    *(v199 + 34) = v225;
    v226 = v295;
    _os_log_impl(&dword_1DA7A9000, v295, v287, "receiveAdd(notification:): notification: %s communicationContextContentURL: %s storageURL: %s for tempLocation: %s", v199, 0x2Au);
    a5 = v284;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](a5, -1, -1);
    MEMORY[0x1E12739F0](v199, -1, -1);

    v62 = &selRef_bulletinGroupingSetting;
LABEL_87:
    v257 = [a1 v62[439]];
    v258 = v276;
    v259 = sub_1DA93F904();
    [v257 setCommunicationContextContentURL_];

    sub_1DA852CB0(v267, v268);
    v217(v258, v213);
    v217(v296, v213);
    v6 = v269;
    goto LABEL_21;
  }

LABEL_108:
  __break(1u);
}

uint64_t sub_1DA852B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DA7B7470;

  return sub_1DA84F4E8(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1DA852C70(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_1DA84E620(a1, *(v1 + 16), *(v1 + 24));
}

void sub_1DA852C7C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  sub_1DA84F300(v1, v2, v3);
}

uint64_t sub_1DA852CB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DA828324(a1, a2);
  }

  return a1;
}

UserNotificationsCore::AlertCoordinatorResult::Behavior_optional __swiftcall AlertCoordinatorResult.Behavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DA9414F4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AlertCoordinatorResult.Behavior.rawValue.getter()
{
  v1 = 0x7472656C61;
  if (*v0 != 1)
  {
    v1 = 0x656C41746F4E6F64;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696665646E75;
  }
}

uint64_t sub_1DA852D8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7472656C61;
  if (v2 != 1)
  {
    v4 = 0x656C41746F4E6F64;
    v3 = 0xEA00000000007472;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E696665646E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7472656C61;
  if (*a2 != 1)
  {
    v8 = 0x656C41746F4E6F64;
    v7 = 0xEA00000000007472;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E696665646E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DA941684();
  }

  return v11 & 1;
}

uint64_t sub_1DA852E90()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA852F38()
{
  *v0;
  *v0;
  sub_1DA940AB4();
}

uint64_t sub_1DA852FCC()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

void sub_1DA85307C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xE500000000000000;
  v5 = 0x7472656C61;
  if (v2 != 1)
  {
    v5 = 0x656C41746F4E6F64;
    v4 = 0xEA00000000007472;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696665646E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

UserNotificationsCore::AlertCoordinatorResult::Reason_optional __swiftcall AlertCoordinatorResult.Reason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DA9414F4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AlertCoordinatorResult.Reason.rawValue.getter()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696665646E75;
  }
}

uint64_t sub_1DA853258(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x80000001DA9502F0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001DA9502F0;
  }

  else
  {
    v6 = 0x80000001DA950310;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696665646E75;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x80000001DA950310;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x656E696665646E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DA941684();
  }

  return v11 & 1;
}

uint64_t sub_1DA853338()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8533EC()
{
  *v0;
  *v0;
  sub_1DA940AB4();
}

uint64_t sub_1DA85348C()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

void sub_1DA853548(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x80000001DA9502F0;
  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001DA950310;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696665646E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AlertCoordinatorResult.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0x726F697661686562, 0xEA0000000000203ALL);
  sub_1DA941494();
  MEMORY[0x1E1271BD0](0x6E6F73616572203BLL, 0xEA0000000000203ALL);
  sub_1DA941494();
  return 0;
}

uint64_t sub_1DA853764()
{
  if (*v0)
  {
    result = 0x6E6F73616572;
  }

  else
  {
    result = 0x726F697661686562;
  }

  *v0;
  return result;
}

uint64_t sub_1DA85379C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F697661686562 && a2 == 0xE800000000000000;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DA941684();

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

uint64_t sub_1DA853874(uint64_t a1)
{
  v2 = sub_1DA853A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8538B0(uint64_t a1)
{
  v2 = sub_1DA853A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlertCoordinatorResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5740, &qword_1DA95B900);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA853A88();
  sub_1DA941834();
  v17 = v9;
  v16 = 0;
  sub_1DA853ADC();
  sub_1DA941604();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1DA853B30();
    sub_1DA941604();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DA853A88()
{
  result = qword_1ECBD5748;
  if (!qword_1ECBD5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5748);
  }

  return result;
}

unint64_t sub_1DA853ADC()
{
  result = qword_1ECBD5750;
  if (!qword_1ECBD5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5750);
  }

  return result;
}

unint64_t sub_1DA853B30()
{
  result = qword_1ECBD5758;
  if (!qword_1ECBD5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5758);
  }

  return result;
}

uint64_t AlertCoordinatorResult.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5760, &unk_1DA95B908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA853A88();
  sub_1DA941804();
  if (!v2)
  {
    v17 = 0;
    sub_1DA853D58();
    sub_1DA941584();
    v11 = v18;
    v15 = 1;
    sub_1DA853DAC();
    sub_1DA941584();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DA853D58()
{
  result = qword_1ECBD5768;
  if (!qword_1ECBD5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5768);
  }

  return result;
}

unint64_t sub_1DA853DAC()
{
  result = qword_1ECBD5770;
  if (!qword_1ECBD5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5770);
  }

  return result;
}

uint64_t sub_1DA853E34()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_1DA853E70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1DA853ED0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1DA853F64;
}

void sub_1DA853F64(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t AlertCoordinator.__allocating_init(serviceManager:)(char *a1)
{
  v2 = swift_allocObject();
  AlertCoordinator.init(serviceManager:)(a1);
  return v2;
}

void *AlertCoordinator.init(serviceManager:)(char *a1)
{
  v2 = v1;
  v19 = a1;
  v18 = sub_1DA940FC4();
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA940F74();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1DA940854();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1DA7AC344();
  v17[1] = "ldingPenWakingTimerProvider-";
  v17[2] = v11;
  sub_1DA940824();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFA8(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v18);
  v12 = v19;
  v1[2] = sub_1DA941004();
  v1[3] = 0;
  swift_weakInit();
  v1[6] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsProperties;
  swift_beginAccess();
  result = *&v12[v13];
  if (result)
  {
    v2[7] = result;
    if ((result[2] & 1) != 0 || (v15 = *&v12[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudReceiver]) == 0)
    {
    }

    else
    {

      v16 = v15;

      *&v16[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_coordinationDelegate + 8] = &protocol witness table for AlertCoordinator;
      swift_unknownObjectWeakAssign();
      v12 = v16;
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA854330(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA854350, 0, 0);
}

uint64_t sub_1DA854350()
{
  v29 = v0;
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5778, &qword_1DA95B920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA9596E0;
  *(inited + 32) = 1;
  *(inited + 40) = &unk_1DA95B930;
  *(inited + 48) = v1;

  v3 = sub_1DA848DB0(inited);
  *(v0 + 104) = v3;
  swift_setDeallocating();
  sub_1DA7BA120(inited + 32, &qword_1ECBD5780, &qword_1DA95B938);
  v4 = *(v3 + 32);
  *(v0 + 147) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  if (v7)
  {
    v8 = 0;
    v9 = *(v0 + 104);
LABEL_8:
    *(v0 + 112) = v7;
    *(v0 + 120) = v8;
    v12 = __clz(__rbit64(v7)) | (v8 << 6);
    *(v0 + 148) = *(*(v9 + 48) + v12);
    v13 = *(v9 + 56) + 16 * v12;
    v14 = *v13;
    *(v0 + 128) = *(v13 + 8);

    v25 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 136) = v16;
    *v16 = v0;
    v16[1] = sub_1DA854784;

    return v25(v0 + 144);
  }

  else
  {
    v10 = 0;
    v11 = ((63 - v6) >> 6) - 1;
    v9 = *(v0 + 104);
    while (v11 != v10)
    {
      v8 = v10 + 1;
      v7 = *(v9 + 8 * v10++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    if (qword_1ECBD4738 != -1)
    {
      swift_once();
    }

    v18 = sub_1DA9405A4();
    __swift_project_value_buffer(v18, qword_1ECBD5728);
    v19 = sub_1DA940584();
    v20 = sub_1DA940F34();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      v27 = 0;
      *v21 = 136446210;
      v28 = 0xE000000000000000;
      sub_1DA941364();
      *(v0 + 72) = v27;
      *(v0 + 80) = 0xE000000000000000;
      MEMORY[0x1E1271BD0](0x726F697661686562, 0xEA0000000000203ALL);
      *(v0 + 145) = 1;
      sub_1DA941494();
      MEMORY[0x1E1271BD0](0x6E6F73616572203BLL, 0xEA0000000000203ALL);
      *(v0 + 146) = 0;
      sub_1DA941494();
      v23 = sub_1DA7AE6E8(*(v0 + 72), *(v0 + 80), &v26);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1DA7A9000, v19, v20, "Coordinator result: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12739F0](v22, -1, -1);
      MEMORY[0x1E12739F0](v21, -1, -1);
    }

    **(v0 + 88) = 1;
    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1DA854784()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA854880, 0, 0);
}

uint64_t sub_1DA854880()
{
  v27 = v0;
  v2 = *(v0 + 128);

  v3 = *(v0 + 144);
  if (v3 != 3)
  {
    v1 = *(v0 + 148);
    v7 = *(v0 + 104);

    if (v1 == 3)
    {
LABEL_14:
      v1 = 0;
    }

    if (qword_1ECBD4738 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v4 = *(v0 + 120);
  v5 = (*(v0 + 112) - 1) & *(v0 + 112);
  if (!v5)
  {
    while (1)
    {
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v6 = *(v0 + 104);
      if (v8 >= (((1 << *(v0 + 147)) + 63) >> 6))
      {

        LOBYTE(v3) = 1;
        goto LABEL_14;
      }

      v5 = *(v6 + 8 * v8 + 64);
      ++v4;
      if (v5)
      {
        v4 = v8;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
LABEL_16:
    v15 = sub_1DA9405A4();
    __swift_project_value_buffer(v15, qword_1ECBD5728);
    v16 = sub_1DA940584();
    v17 = sub_1DA940F34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      v25 = 0;
      *v18 = 136446210;
      v26 = 0xE000000000000000;
      sub_1DA941364();
      *(v0 + 72) = v25;
      *(v0 + 80) = 0xE000000000000000;
      MEMORY[0x1E1271BD0](0x726F697661686562, 0xEA0000000000203ALL);
      *(v0 + 145) = v3;
      sub_1DA941494();
      MEMORY[0x1E1271BD0](0x6E6F73616572203BLL, 0xEA0000000000203ALL);
      *(v0 + 146) = v1;
      sub_1DA941494();
      v20 = sub_1DA7AE6E8(*(v0 + 72), *(v0 + 80), &v24);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1DA7A9000, v16, v17, "Coordinator result: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1E12739F0](v19, -1, -1);
      MEMORY[0x1E12739F0](v18, -1, -1);
    }

    v21 = *(v0 + 88);
    *v21 = v3;
    v21[1] = v1;
    v22 = *(v0 + 8);

    return v22();
  }

  v6 = *(v0 + 104);
LABEL_10:
  *(v0 + 112) = v5;
  *(v0 + 120) = v4;
  v9 = __clz(__rbit64(v5)) | (v4 << 6);
  *(v0 + 148) = *(*(v6 + 48) + v9);
  v10 = *(v6 + 56) + 16 * v9;
  v11 = *v10;
  *(v0 + 128) = *(v10 + 8);

  v23 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_1DA854784;

  return v23(v0 + 144);
}

uint64_t sub_1DA854C78()
{
  if (qword_1ECBD4730 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DA854D44;
  v2 = *(v0 + 16);

  return sub_1DA854FAC(v2);
}

uint64_t sub_1DA854D44()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DA854E38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA7B7470;

  return sub_1DA854C58(a1);
}

uint64_t AlertCoordinator.deinit()
{
  v1 = *(v0 + 24);

  swift_weakDestroy();
  sub_1DA7C5714(v0 + 40);
  v2 = *(v0 + 56);

  return v0;
}

uint64_t AlertCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  swift_weakDestroy();
  sub_1DA7C5714(v0 + 40);
  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA854F6C()
{
  type metadata accessor for AlertCoordinator.Sharing();
  swift_allocObject();
  result = sub_1DA8563A8();
  qword_1ECBD5720 = result;
  return result;
}

uint64_t sub_1DA854FAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA855048, v1, 0);
}

uint64_t sub_1DA855048()
{
  v1 = v0[3];
  v2 = *(v1 + 120);
  v0[5] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x1E69E86C0] + 4);

    v4 = swift_task_alloc();
    v0[6] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57B0, &qword_1DA95BE30);
    *v4 = v0;
    v4[1] = sub_1DA855274;
    v6 = v0[2];
  }

  else
  {
    v7 = v0[4];
    v8 = sub_1DA940D34();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = sub_1DA7ACFA8(&qword_1ECBD57B8, type metadata accessor for AlertCoordinator.Sharing);
    v10 = swift_allocObject();
    v10[2] = v1;
    v10[3] = v9;
    v10[4] = v1;
    swift_retain_n();
    v2 = sub_1DA8DB30C(0, 0, v7, &unk_1DA95BE40, v10);
    v0[7] = v2;
    v11 = *(v1 + 120);
    *(v1 + 120) = v2;

    v12 = *(MEMORY[0x1E69E86C0] + 4);
    v13 = swift_task_alloc();
    v0[8] = v13;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57B0, &qword_1DA95BE30);
    *v13 = v0;
    v13[1] = sub_1DA8553EC;
    v6 = v0 + 9;
  }

  return MEMORY[0x1EEE6DA40](v6, v2, v5);
}

uint64_t sub_1DA855274()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA855384, v2, 0);
}

uint64_t sub_1DA855384()
{
  v1 = v0[5];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DA8553EC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA8554FC, v2, 0);
}

uint64_t sub_1DA8554FC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v4 = *(v0 + 72);
  v5 = *(v3 + 120);
  *(v3 + 120) = 0;

  *v2 = v4;
  v6 = *(v0 + 32);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DA855584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a1;
  *(v4 + 120) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DA8555A4, a4, 0);
}

uint64_t sub_1DA8555A4()
{
  v1 = v0[15];
  v2 = swift_allocObject();
  v0[16] = v2;
  *(v2 + 16) = 3;
  v3 = dispatch_group_create();
  v0[17] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E69CDE80]) init];
  v0[18] = v4;
  [v4 setDispatchQueue_];
  [v4 setType_];
  if (qword_1ECBD47A8 != -1)
  {
    swift_once();
  }

  v5 = v0[15];
  [v4 setTimeout_];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  v0[6] = sub_1DA856ED8;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DA855DAC;
  v0[5] = &block_descriptor_6;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];

  v9 = v4;

  [v9 setCompletionHandler_];
  _Block_release(v7);
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v0[12] = sub_1DA856EE0;
  v0[13] = v10;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1DA7AF1D0;
  v0[11] = &block_descriptor_60;
  v11 = _Block_copy(v0 + 8);
  v12 = v0[13];
  v13 = v3;

  [v9 setInvalidationHandler_];
  _Block_release(v11);
  dispatch_group_enter(v13);
  [v9 start];
  v14 = sub_1DA7ACFA8(&qword_1ECBD57B8, type metadata accessor for AlertCoordinator.Sharing);
  v15 = swift_task_alloc();
  v0[19] = v15;
  v15[2] = v13;
  v15[3] = v5;
  v15[4] = v2;
  v16 = *(MEMORY[0x1E69E88D0] + 4);
  v17 = swift_task_alloc();
  v0[20] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57B0, &qword_1DA95BE30);
  *v17 = v0;
  v17[1] = sub_1DA855928;
  v19 = v0[14];

  return MEMORY[0x1EEE6DDE0](v19, v5, v14, 0x2865747563657865, 0xE900000000000029, sub_1DA856EE8, v15, v18);
}

uint64_t sub_1DA855928()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 120);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA855A54, v3, 0);
}

uint64_t sub_1DA855A54()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);

  v3 = *(v0 + 8);

  return v3();
}

id sub_1DA855AC4(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v7 = a1;
    if (qword_1ECBD4738 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA9405A4();
    __swift_project_value_buffer(v8, qword_1ECBD5728);
    v9 = a1;
    v10 = sub_1DA940584();
    v11 = sub_1DA940F14();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138543362;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1DA7A9000, v10, v11, "Sharing: Completion handler called with error: %{public}@", v12, 0xCu);
      sub_1DA7BA120(v13, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v13, -1, -1);
      MEMORY[0x1E12739F0](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1ECBD4738 != -1)
    {
      swift_once();
    }

    v18 = sub_1DA9405A4();
    __swift_project_value_buffer(v18, qword_1ECBD5728);
    v19 = sub_1DA940584();
    v20 = sub_1DA940F34();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      if (a2)
      {
        v23 = 0;
      }

      else
      {
        v23 = 544501614;
      }

      if (a2)
      {
        v24 = 0xE000000000000000;
      }

      else
      {
        v24 = 0xE400000000000000;
      }

      v25 = sub_1DA7AE6E8(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1DA7A9000, v19, v20, "Sharing: I am %sthe best.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12739F0](v22, -1, -1);
      MEMORY[0x1E12739F0](v21, -1, -1);
    }

    if (a2)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    swift_beginAccess();
    *(a4 + 16) = v26;
  }

  return [a5 invalidate];
}

uint64_t sub_1DA855DAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a4)
  {
    v8 = sub_1DA940974();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v7(a2, a3, v8);
}

void sub_1DA855E60(NSObject *a1)
{
  if (qword_1ECBD4738 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1ECBD5728);
  v3 = sub_1DA940584();
  v4 = sub_1DA940F04();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Sharing: Invalidation handler called", v5, 2u);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  dispatch_group_leave(a1);
}

uint64_t sub_1DA855F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v29 = a2;
  v6 = sub_1DA9407F4();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA940854();
  v26 = *(v10 - 8);
  v27 = v10;
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57C0, &qword_1DA95BE48);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v19 = *(a3 + 112);
  (*(v15 + 16))(&v25 - v17, a1, v14);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = swift_allocObject();
  (*(v15 + 32))(v21 + v20, v18, v14);
  *(v21 + ((v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  aBlock[4] = sub_1DA856EF4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_67;
  v22 = _Block_copy(aBlock);
  v23 = v19;

  sub_1DA940824();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFA8(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  sub_1DA940F64();
  _Block_release(v22);

  (*(v28 + 8))(v9, v6);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_1DA856300(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57C0, &qword_1DA95BE48);
  return sub_1DA940C54();
}

uint64_t sub_1DA856368()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DA8563A8()
{
  v12 = sub_1DA940FC4();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940F74();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DA940854();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  swift_defaultActor_initialize();
  v9 = sub_1DA7AC344();
  v11[0] = "8B16@NSDictionary20";
  v11[1] = v9;
  sub_1DA940824();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFA8(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v12);
  *(v0 + 112) = sub_1DA941004();
  *(v0 + 120) = 0;
  return v0;
}

uint64_t AlertCoordinator.response(_:fromID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA8566AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA856748()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD5728);
  __swift_project_value_buffer(v0, qword_1ECBD5728);
  return sub_1DA940594();
}

unint64_t sub_1DA8567CC()
{
  result = qword_1ECBD5788;
  if (!qword_1ECBD5788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5788);
  }

  return result;
}

unint64_t sub_1DA856824()
{
  result = qword_1ECBD5790;
  if (!qword_1ECBD5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertCoordinatorResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for AlertCoordinatorResult(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t dispatch thunk of AlertCoordinator.shouldAlert(notificationID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 208);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DA7B7660;

  return v12(a1, a2, a3);
}

uint64_t sub_1DA856C20(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA856C70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DA856CC4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DA856CDC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1DA856D20()
{
  result = qword_1ECBD5798;
  if (!qword_1ECBD5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5798);
  }

  return result;
}

unint64_t sub_1DA856D78()
{
  result = qword_1ECBD57A0;
  if (!qword_1ECBD57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD57A0);
  }

  return result;
}

unint64_t sub_1DA856DD0()
{
  result = qword_1ECBD57A8;
  if (!qword_1ECBD57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD57A8);
  }

  return result;
}

uint64_t sub_1DA856E24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7660;

  return sub_1DA855584(a1, v4, v5, v6);
}

uint64_t sub_1DA856EF4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57C0, &qword_1DA95BE48) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DA856300(v0 + v2, v3);
}

unint64_t sub_1DA856F8C()
{
  result = qword_1ECBD57C8;
  if (!qword_1ECBD57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD57C8);
  }

  return result;
}

unint64_t sub_1DA856FE0()
{
  result = qword_1ECBD57D0;
  if (!qword_1ECBD57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD57D0);
  }

  return result;
}

uint64_t sub_1DA857034(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v52 = a3;
  v47 = a1;
  v51 = type metadata accessor for UserNotificationsCloudRecord(0);
  v6 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for AlertCoordinationMessage(0);
  v9 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA93FAF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBD4738 != -1)
  {
    swift_once();
  }

  v17 = sub_1DA9405A4();
  v18 = __swift_project_value_buffer(v17, qword_1ECBD5728);
  v19 = *(v13 + 16);
  v50 = a4;
  v48 = v19;
  v19(v16, a4, v12);

  v20 = sub_1DA940584();
  v21 = sub_1DA940EF4();

  v46 = v21;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45 = v8;
    v23 = v22;
    v43 = swift_slowAlloc();
    v53 = v43;
    *v23 = 136315650;
    v24 = v47;
    *(v23 + 4) = sub_1DA7AE6E8(v47, a2, &v53);
    *(v23 + 12) = 1024;
    *(v23 + 14) = v52 & 1;
    *(v23 + 18) = 2080;
    sub_1DA7ACFA8(&qword_1EE114C88, MEMORY[0x1E6969530]);
    v42 = v20;
    v44 = v18;
    v25 = v12;
    v26 = sub_1DA941614();
    v27 = a2;
    v29 = v28;
    (*(v13 + 8))(v16, v25);
    v30 = sub_1DA7AE6E8(v26, v29, &v53);
    a2 = v27;

    *(v23 + 20) = v30;
    v31 = v42;
    _os_log_impl(&dword_1DA7A9000, v42, v46, "[%s] didAlert: %{BOOL}d; date: %s", v23, 0x1Cu);
    v32 = v43;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v32, -1, -1);
    v33 = v23;
    v8 = v45;
    MEMORY[0x1E12739F0](v33, -1, -1);

    v34 = v25;
  }

  else
  {

    (*(v13 + 8))(v16, v12);
    v24 = v47;
    v34 = v12;
  }

  v35 = v49;
  v48(&v11[*(v49 + 24)], v50, v34);
  *v11 = v24;
  *(v11 + 1) = a2;
  v11[16] = v52 & 1;
  *&v11[*(v35 + 28)] = 3;
  sub_1DA857528(v11, v8 + *(v51 + 20));
  type metadata accessor for CloudAction(0);
  swift_storeEnumTagMultiPayload();
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    sub_1DA8A7238(v8);
  }

  else
  {
    v37 = sub_1DA940584();
    v38 = sub_1DA940F14();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1DA7A9000, v37, v38, "No push target for response from alert coordinator.", v39, 2u);
      MEMORY[0x1E12739F0](v39, -1, -1);
    }
  }

  sub_1DA85758C(v8, type metadata accessor for UserNotificationsCloudRecord);
  return sub_1DA85758C(v11, type metadata accessor for AlertCoordinationMessage);
}

uint64_t sub_1DA857528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertCoordinationMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA85758C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA857604()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA85766C()
{
  type metadata accessor for UNGenerativeModelAvailabilityCache();
  swift_allocObject();
  result = sub_1DA8576B0();
  qword_1EE11ADD8 = result;
  return result;
}

uint64_t sub_1DA8576B0()
{
  *(v0 + 16) = sub_1DA8481DC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F0, &qword_1DA95AFB0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = sub_1DA940A04();
  *(v0 + 40) = sub_1DA8576A8;
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v2, v0, *(v0 + 40), *(v0 + 32), 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v0;
}

uint64_t sub_1DA85775C()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = *(v0 + 32);
  CFNotificationCenterRemoveObserver(v1, v0, v2, 0);

  v3 = *(v0 + 16);

  v4 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA857820(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);

    MEMORY[0x1EEE9AC00](v2);

    os_unfair_lock_lock(v1 + 4);
    sub_1DA84A760(v3);
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

uint64_t sub_1DA8578D4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
}

uint64_t sub_1DA857960(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1DA8579B4()
{
  if (qword_1EE110EC0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE110EC8);

  v2 = sub_1DA940584();
  v3 = sub_1DA940F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    swift_getKeyPath();
    sub_1DA86302C(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability);
    sub_1DA93FB74();

    *(v4 + 4) = *(v0 + 16);

    _os_log_impl(&dword_1DA7A9000, v2, v3, "isAvailable = %{BOOL}d", v4, 8u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DA857B5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA86302C(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability);
  sub_1DA93FB74();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1DA857C2C()
{
  swift_getKeyPath();
  sub_1DA86302C(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability);
  sub_1DA93FB74();

  return *(v0 + 16);
}

uint64_t type metadata accessor for RemoteNotificationsProperties.Availability()
{
  result = qword_1EE1149A0;
  if (!qword_1EE1149A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA857D18(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;

    sub_1DA8579B4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA86302C(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability);
    sub_1DA93FB64();
  }
}

id sub_1DA857E4C()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = 0;
  *(v0 + 24) = v2;
  v3 = (v0 + 24);
  sub_1DA93FBA4();
  if (qword_1EE112A90 != -1)
  {
    swift_once();
  }

  sub_1DA8B3544(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD58D0, &qword_1DA95C1D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA958370;
  *(inited + 32) = _s12AvailabilityC14os_eligibilityCMa();
  *(inited + 40) = &off_1F5633DB0;
  *(inited + 48) = _s12AvailabilityC16DeviceManagementCMa();
  *(inited + 56) = &off_1F5633D90;
  if (qword_1EE110C48 != -1)
  {
    swift_once();
  }

  if (dword_1EE110C50 != 1)
  {
    if (qword_1EE110EC0 != -1)
    {
      swift_once();
    }

    v27 = sub_1DA9405A4();
    __swift_project_value_buffer(v27, qword_1EE110EC8);
    v28 = sub_1DA940584();
    v29 = sub_1DA940F34();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35[0] = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1DA7AE6E8(0x6C43656369766544, 0xEB00000000737361, v35);
      _os_log_impl(&dword_1DA7A9000, v28, v29, "Unavailable. Reason: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12739F0](v31, -1, -1);
      MEMORY[0x1E12739F0](v30, -1, -1);
    }

    swift_setDeallocating();
    v32 = sub_1DA940584();
    v33 = sub_1DA940F34();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DA7A9000, v32, v33, "Bailing on availability monitoring; feature is statically unavailable.", v34, 2u);
      MEMORY[0x1E12739F0](v34, -1, -1);
    }

    return v1;
  }

  v7 = *(inited + 32);
  v6 = *(inited + 40);
  v8 = *(v6 + 8);

  v10 = v8(v9, &off_1F5633D68, v7, v6);
  (*(v6 + 16))(v7, v6);
  swift_beginAccess();
  v11 = *(v1 + 24);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 24) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DA885EC8(0, v11[2] + 1, 1, v11);
    *v3 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DA885EC8((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = v10;
  v15[5] = v6;
  *(v1 + 24) = v11;
  swift_endAccess();

  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + 32) = &off_1F5633D68;
  swift_unknownObjectWeakAssign();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v18 = result;
    v19 = sub_1DA858F20();
    [v18 registerObserver_];

    swift_beginAccess();
    v20 = *v3;
    swift_unknownObjectRetain();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v20;
    if ((v21 & 1) == 0)
    {
      v20 = sub_1DA885EC8(0, v20[2] + 1, 1, v20);
      *v3 = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1DA885EC8((v22 > 1), v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    v24 = &v20[2 * v23];
    v24[4] = v16;
    v24[5] = &off_1F5633D90;
    *(v1 + 24) = v20;
    swift_endAccess();

    v25 = sub_1DA858474() & 1;
    if (v25 == *(v1 + 16))
    {
      *(v1 + 16) = v25;
      sub_1DA8579B4();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v35[0] = v1;
      sub_1DA86302C(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability);
      sub_1DA93FB64();
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA858474()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v5 = *(v4 - 1);
      v6 = *v4;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 24);
      swift_unknownObjectRetain();
      if ((v8(ObjectType, v6) & 1) == 0)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v3;
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    swift_getObjectType();
    v14 = sub_1DA941884();
    v16 = v15;
    if (qword_1EE110EC0 != -1)
    {
      swift_once();
    }

    v17 = sub_1DA9405A4();
    __swift_project_value_buffer(v17, qword_1EE110EC8);

    v18 = sub_1DA940584();
    v19 = sub_1DA940F34();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1DA7AE6E8(v14, v16, &v22);
      _os_log_impl(&dword_1DA7A9000, v18, v19, "Unavailable. Reason: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12739F0](v21, -1, -1);
      MEMORY[0x1E12739F0](v20, -1, -1);
    }

    swift_unknownObjectRelease();

    return 0;
  }

  else
  {
LABEL_6:

    if (qword_1EE110EC0 != -1)
    {
LABEL_16:
      swift_once();
    }

    v9 = sub_1DA9405A4();
    __swift_project_value_buffer(v9, qword_1EE110EC8);
    v10 = sub_1DA940584();
    v11 = sub_1DA940F34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DA7A9000, v10, v11, "All availability checks passed.", v12, 2u);
      MEMORY[0x1E12739F0](v12, -1, -1);
    }

    return 1;
  }
}

uint64_t RemoteNotificationsProperties.Availability.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties12Availability___observationRegistrar;
  v3 = sub_1DA93FBB4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t RemoteNotificationsProperties.Availability.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties12Availability___observationRegistrar;
  v3 = sub_1DA93FBB4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DA85885C()
{
  v1 = sub_1DA858474() & 1;
  swift_getKeyPath();
  sub_1DA86302C(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability);
  sub_1DA93FB74();

  if (v1 == *(v0 + 16))
  {
    if (qword_1EE110EC0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DA9405A4();
    __swift_project_value_buffer(v3, qword_1EE110EC8);
    v4 = sub_1DA940584();
    v5 = sub_1DA940EF4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DA7A9000, v4, v5, "No change to availability.", v6, 2u);
      MEMORY[0x1E12739F0](v6, -1, -1);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA93FB64();
  }
}

void sub_1DA858A5C()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = sub_1DA940804();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  out_token = -1;
  sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  (*(v1 + 104))(v4, *MEMORY[0x1E69E7FA0], v0);
  v5 = sub_1DA941014();
  (*(v1 + 8))(v4, v0);
  v6 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1DA862E74;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA857960;
  aBlock[3] = &block_descriptor_7;
  v7 = _Block_copy(aBlock);

  v8 = sub_1DA940A94();
  LODWORD(v0) = notify_register_dispatch((v8 + 32), &out_token, v5, v7);

  _Block_release(v7);

  if (v0)
  {
    if (qword_1EE110EC0 != -1)
    {
      swift_once();
    }

    v9 = sub_1DA9405A4();
    __swift_project_value_buffer(v9, qword_1EE110EC8);
    v10 = sub_1DA940584();
    v11 = sub_1DA940F14();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DA7A9000, v10, v11, "Failed to register for os_eligibility notification.", v12, 2u);
      MEMORY[0x1E12739F0](v12, -1, -1);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DA858D44()
{
  if (qword_1EE110EC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1DA9405A4();
  __swift_project_value_buffer(v0, qword_1EE110EC8);
  v1 = sub_1DA940584();
  v2 = sub_1DA940F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DA7A9000, v1, v2, "Received os_eligibility notification.", v3, 2u);
    MEMORY[0x1E12739F0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_1DA85885C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1DA858E70()
{
  sub_1DA7C5714(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA858EA8(uint64_t a1, uint64_t a2)
{
  _s12AvailabilityC14os_eligibilityCMa();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

id sub_1DA858F20()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    swift_unknownObjectWeakLoadStrong();
    v3 = *(v0 + 32);
    v4 = _s12AvailabilityC28ManagedConfigurationObserverCMa();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtCCC21UserNotificationsCore29RemoteNotificationsProperties12AvailabilityP33_4AD97FADDCB7378298ADDAABCB61570928ManagedConfigurationObserver_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = v3;
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    swift_unknownObjectRelease();
    v7 = *(v0 + 16);
    *(v0 + 16) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t sub_1DA858FEC()
{
  sub_1DA7C5714(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA85902C(uint64_t a1)
{
  v3 = type metadata accessor for RemoteNotificationsProperties.Availability();

  return sub_1DA862D18(a1, v1, v3, &off_1F5633D68);
}

void sub_1DA859078()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = sub_1DA858F20();
    [v1 registerObserver_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1DA8590FC()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isOnenessAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA85915C()
{
  if (qword_1EE110EC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1DA9405A4();
  __swift_project_value_buffer(v0, qword_1EE110EC8);
  v1 = sub_1DA940584();
  v2 = sub_1DA940F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = sub_1DA941374();
    v7 = sub_1DA7AE6E8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1DA7A9000, v1, v2, "Refreshing status - %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x1E12739F0](v4, -1, -1);
    MEMORY[0x1E12739F0](v3, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1DA85885C();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1DA8594A8()
{
  v2.receiver = v0;
  v2.super_class = _s12AvailabilityC28ManagedConfigurationObserverCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RemoteNotificationsProperties.Availability.captureState()()
{
  swift_beginAccess();
  v1 = *(*(v0 + 24) + 16);

  if (!v1)
  {
    v4 = MEMORY[0x1E69E7CC8];
LABEL_18:

    v26 = sub_1DA8597A4(v4);

    return v26;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  v5 = (v2 + 40);
  v28 = v2;
  while (v3 < *(v2 + 16))
  {
    v30 = v3;
    v7 = *(v5 - 1);
    v6 = *v5;
    v29 = v5;
    swift_getObjectType();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD57E0, &qword_1DA95BF88);
    v8 = sub_1DA940A74();
    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = (*(v6 + 24))(ObjectType, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = sub_1DA85A810(v8, v10, sub_1DA85A94C);
    v16 = v4[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_20;
    }

    v19 = v14;
    if (v4[3] >= v18)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v14)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1DA860A08();
        if (v19)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1DA85C6F8(v18, isUniquelyReferenced_nonNull_native);
      v20 = sub_1DA85A810(v8, v10, sub_1DA85A94C);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_22;
      }

      v15 = v20;
      if (v19)
      {
LABEL_3:

        *(v4[7] + v15) = v12 & 1;
        swift_unknownObjectRelease();
        goto LABEL_4;
      }
    }

    v4[(v15 >> 6) + 8] |= 1 << v15;
    v22 = (v4[6] + 16 * v15);
    *v22 = v8;
    v22[1] = v10;
    *(v4[7] + v15) = v12 & 1;
    swift_unknownObjectRelease();
    v23 = v4[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_21;
    }

    v4[2] = v25;
LABEL_4:
    v3 = v30 + 1;
    v5 = v29 + 2;
    v2 = v28;
    if (v1 == v30 + 1)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1DA9416E4();
  __break(1u);
  return result;
}

unint64_t sub_1DA8597A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5530, &unk_1DA95B1C0);
    v2 = sub_1DA9414E4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v26 = *(*(a1 + 56) + v14);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5918, &qword_1DA95EF00);
        swift_dynamicCast();
        v31 = v28;
        v32 = v29;
        v33 = v30;
        v27 = v28;
        v28 = v29;
        *&v29 = v30;
        result = sub_1DA85A810(v17, v16, sub_1DA85A94C);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          result = sub_1DA863074(&v27, v2[7] + 40 * v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          v20 = v2[7] + 40 * result;
          v21 = v27;
          v22 = v28;
          *(v20 + 32) = v29;
          *v20 = v21;
          *(v20 + 16) = v22;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}
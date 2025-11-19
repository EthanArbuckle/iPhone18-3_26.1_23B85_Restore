uint64_t sub_1B5E46144(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1B5EA5B40())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1B5DF33E0(&qword_1EB90EDD0, &qword_1B5EB71B0);
  sub_1B5E2624C();
  v3 = sub_1B5EA5B90();
  if (v2)
  {
LABEL_4:

    sub_1B5EA5B30();
    sub_1B5E479E8(0, &qword_1ED7D2B80, 0x1E69E58C0);
    sub_1B5E47980();
    sub_1B5E436DC();
    result = sub_1B5EA5A20();
    v1 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(v1 + 32);
  v5 = v1 + 56;
  v6 = ~v9;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v8 = v11 & *(v1 + 56);

  v7 = 0;
LABEL_11:
  v12 = v3 + 56;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v8)
  {
    v13 = v7;
LABEL_21:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = *(*(v1 + 48) + ((v13 << 9) | (8 * v16)));
    while (1)
    {
      sub_1B5E479E8(0, &qword_1ED7D2B80, 0x1E69E58C0);
      swift_dynamicCast();
      v18 = *(v3 + 40);
      result = sub_1B5EA5B60();
      v19 = -1 << *(v3 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        break;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v27 = *(v3 + 48) + 40 * v22;
      *(v27 + 32) = v30;
      *v27 = v28;
      *(v27 + 16) = v29;
      ++*(v3 + 16);
      if ((v1 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_14:
      v14 = sub_1B5EA5B50();
      if (!v14)
      {
        goto LABEL_33;
      }

      *&v28 = v14;
      sub_1B5E479E8(0, &qword_1ED7D2B80, 0x1E69E58C0);
      swift_dynamicCast();
    }

    v23 = 0;
    v24 = (63 - v19) >> 6;
    while (++v21 != v24 || (v23 & 1) == 0)
    {
      v25 = v21 == v24;
      if (v21 == v24)
      {
        v21 = 0;
      }

      v23 |= v25;
      v26 = *(v12 + 8 * v21);
      if (v26 != -1)
      {
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = v7;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= ((v6 + 64) >> 6))
      {
LABEL_33:
        sub_1B5E5FD58();
        sub_1B5E5ECC8();

        return v3;
      }

      v8 = *(v5 + 8 * v13);
      ++v15;
      if (v8)
      {
        v7 = v13;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

void GenerativeExperiencesSessionClient.__allocating_init(_:_:)()
{
  sub_1B5E5FC04();
  v1 = objc_allocWithZone(v0);
  sub_1B5E5F688();
  GenerativeExperiencesSessionClient.init(_:_:)();
}

void GenerativeExperiencesSessionClient.init(_:_:)()
{
  sub_1B5E601CC();
  v3 = v2;
  sub_1B5E1A084();
  v4 = type metadata accessor for SessionConfiguration();
  v5 = sub_1B5E01CF8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  sub_1B5E5FB70();
  v8 = &v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests] = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest] = v9;
  *&v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests] = v9;
  v10 = sub_1B5DFA488();
  sub_1B5DFDA5C(v10, v11);
  v12 = type metadata accessor for GenerativeExperiencesSessionClientData(0);
  sub_1B5E5FE38(v12);
  sub_1B5E5F3AC();
  sub_1B5E2D258();
  if (v13)
  {
    *&v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData] = v13;
    v21.receiver = v1;
    v21.super_class = type metadata accessor for GenerativeExperiencesSessionClient();
    v14 = objc_msgSendSuper2(&v21, sel_init);
    sub_1B5E5F1C0();
    sub_1B5E47A4C(v15, v16, v17);
    v18 = v14;
    v3(v20);
    sub_1B5E01688(v0);
    v19 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client;
    sub_1B5E34E78();
    sub_1B5E5EC7C(v20, v18 + v19, &qword_1EB90EBB0, &qword_1B5EB6D78);
    swift_endAccess();

    sub_1B5E601B8();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B5E46698(void *a1)
{
  sub_1B5E5F910();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_1B5E47A90;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1B5E467C4;
  v4[3] = &unk_1F2D66218;
  v3 = _Block_copy(v4);

  [a1 setInterruptionHandler_];
  _Block_release(v3);
}

void sub_1B5E46770()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1B5E46808();
  }
}

uint64_t sub_1B5E467C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1B5E46808()
{
  sub_1B5E601CC();
  v0 = sub_1B5EA53B0();
  v1 = sub_1B5DF5DA8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DFD7E8();
  sub_1B5E5FB70();
  if (qword_1EB90CE80 != -1)
  {
    v6 = sub_1B5E5EF54();
  }

  sub_1B5E5F41C(v6, qword_1EB90CE88);
  sub_1B5E2D094();
  v7 = *(v3 + 16);
  v8 = sub_1B5E5F22C();
  v9(v8);
  v10 = sub_1B5EA5380();
  v11 = sub_1B5EA5A40();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_1B5E5FD88();
    v16 = sub_1B5E5FC3C();
    *v12 = 136315138;
    sub_1B5E5FB20();
    *(v12 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v10, v11, "%s", v12, 0xCu);
    sub_1B5DF3FB8(v16);
    sub_1B5E2D07C();
    sub_1B5E2D07C();
  }

  v13 = *(v3 + 8);
  v14 = sub_1B5E5F324();
  v15(v14);
  sub_1B5E601B8();
}

void sub_1B5E4699C()
{
  sub_1B5DFD8A8();
  v3 = v0;
  v4 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  sub_1B5DF5DA8(v4);
  v93 = v5;
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E08868();
  v96 = sub_1B5DF33E0(&qword_1EB90EBC0, &qword_1B5EB6D88);
  sub_1B5DF5EB8(v96);
  v10 = *(v9 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFA50C();
  v99 = v12;
  v97 = sub_1B5DF33E0(&qword_1EB90EBC8, &qword_1B5EB6D90);
  sub_1B5DF5EB8(v97);
  v14 = *(v13 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5DFA50C();
  v98 = v16;
  v100 = sub_1B5DF33E0(&qword_1EB90EBD0, &qword_1B5EB6D98);
  sub_1B5DF5EB8(v100);
  v18 = *(v17 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5E5F1E8();
  v20 = sub_1B5EA53B0();
  v21 = sub_1B5DF5DA8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5DFD7E8();
  sub_1B5E5FB70();
  if (qword_1EB90CE80 == -1)
  {
    goto LABEL_2;
  }

LABEL_37:
  sub_1B5E5EF54();
LABEL_2:
  sub_1B5DFD794(v20, qword_1EB90CE88);
  sub_1B5E2D094();
  v26 = *(v23 + 16);
  v27 = sub_1B5E436DC();
  v28(v27);
  v29 = sub_1B5EA5380();
  v30 = sub_1B5EA5A40();
  v92 = v4;
  v91 = v1;
  if (os_log_type_enabled(v29, v30))
  {
    v31 = sub_1B5E5FD88();
    v20 = sub_1B5E5FC3C();
    *v31 = 136315138;
    sub_1B5E5FB20();
    *(v31 + 4) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v29, v30, "%s, canceling all outstanding requests", v31, 0xCu);
    sub_1B5DF3FB8(v20);
    sub_1B5E2D07C();
    sub_1B5E2D07C();

    v32 = *(v23 + 8);
    v33 = sub_1B5E5F324();
  }

  else
  {

    v35 = *(v23 + 8);
    v33 = sub_1B5E5F78C();
  }

  v34(v33);
  v4 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests;
  sub_1B5E2D094();
  v1 = v3;
  v36 = *(v3 + v4);
  v37 = *(v36 + 64);
  v23 = v36 + 64;
  v38 = *(v36 + 32);
  sub_1B5DFD808();
  v3 = v40 & v39;
  sub_1B5E6007C();
  v41 = 0;
  if (v3)
  {
    while (1)
    {
      v42 = v41;
LABEL_11:
      v43 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v44 = v43 | (v42 << 6);
      v45 = *(v36 + 48);
      v46 = sub_1B5EA4340();
      sub_1B5DF5EB8(v46);
      (*(v47 + 16))(v2, v45 + *(v47 + 72) * v44);
      v48 = *(v36 + 56);
      v20 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
      sub_1B5DF5EB8(v20);
      v50 = v48 + *(v49 + 72) * v44;
      v4 = *(v100 + 48);
      (*(v49 + 16))(v2 + v4, v50, v20);
      sub_1B5EA5130();
      sub_1B5E5EF3C();
      sub_1B5E47A4C(&qword_1EB90EBE0, 255, v51);
      sub_1B5E5F23C();
      sub_1B5E5F94C();
      sub_1B5EA4EF0();
      sub_1B5EA59A0();
      sub_1B5DF4428(v2, &qword_1EB90EBD0, &qword_1B5EB6D98);
      if (!v3)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v42 >= v30)
    {
      break;
    }

    v3 = *(v23 + 8 * v42);
    ++v41;
    if (v3)
    {
      v41 = v42;
      goto LABEL_11;
    }
  }

  v4 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest;
  sub_1B5E2D094();
  v100 = v1;
  v52 = *(v1 + v4);
  v53 = *(v52 + 64);
  v2 = v52 + 64;
  v54 = *(v52 + 32);
  sub_1B5DFD808();
  v23 = v56 & v55;
  sub_1B5E6007C();
  v57 = 0;
  v1 = v97;
  v3 = v98;
  if (!v23)
  {
    goto LABEL_15;
  }

  do
  {
    v58 = v57;
LABEL_19:
    v59 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v60 = v59 | (v58 << 6);
    v61 = *(v52 + 48);
    v62 = sub_1B5EA4340();
    sub_1B5DF5EB8(v62);
    (*(v63 + 16))(v98, v61 + *(v63 + 72) * v60);
    v64 = *(v52 + 56);
    v20 = sub_1B5DF33E0(&qword_1EB90EBE8, &qword_1B5EB6DA8);
    sub_1B5DF5EB8(v20);
    v66 = v64 + *(v65 + 72) * v60;
    v4 = *(v97 + 48);
    (*(v65 + 16))(v98 + v4, v66, v20);
    sub_1B5EA5130();
    sub_1B5E5EF3C();
    sub_1B5E47A4C(&qword_1EB90EBE0, 255, v67);
    sub_1B5E5F23C();
    sub_1B5E5F94C();
    sub_1B5EA4EF0();
    sub_1B5EA58C0();
    sub_1B5DF4428(v98, &qword_1EB90EBC8, &qword_1B5EB6D90);
  }

  while (v23);
  while (1)
  {
LABEL_15:
    v58 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_35;
    }

    if (v58 >= v30)
    {
      break;
    }

    v23 = *(v2 + 8 * v58);
    ++v57;
    if (v23)
    {
      v57 = v58;
      goto LABEL_19;
    }
  }

  v68 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests;
  sub_1B5E2D094();
  v69 = *(v100 + v68);
  v4 = v69 + 64;
  v70 = *(v69 + 64);
  v71 = *(v69 + 32);
  sub_1B5DFD808();
  v74 = v73 & v72;
  v76 = (v75 + 63) >> 6;
  v2 = v93 + 16;
  v3 = v93 + 8;
  v97 = v77;
  swift_bridgeObjectRetain_n();
  v20 = 0;
  v23 = &qword_1EB90EBE0;
  v94 = v76;
  v95 = v4;
  if (v74)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v78 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_36;
    }

    if (v78 >= v76)
    {
      break;
    }

    v74 = *(v4 + 8 * v78);
    ++v20;
    if (v74)
    {
      v20 = v78;
      do
      {
LABEL_26:
        v98 = v74;
        v79 = __clz(__rbit64(v74)) | (v20 << 6);
        v80 = *(v97 + 48);
        v81 = sub_1B5EA4340();
        sub_1B5DF5EB8(v81);
        (*(v82 + 16))(v99, v80 + *(v82 + 72) * v79);
        v83 = *(*(v97 + 56) + 8 * v79);
        *(v99 + *(v96 + 48)) = v83;
        v84 = *(v83 + 16);
        if (v84)
        {
          sub_1B5E34D40();
          v87 = v85 + v86;
          v100 = *(v88 + 72);
          v89 = *(v88 + 16);

          v1 = v92;
          do
          {
            v89(v91, v87, v92);
            sub_1B5EA5130();
            sub_1B5E5EF3C();
            sub_1B5E47A4C(&qword_1EB90EBE0, 255, v90);
            sub_1B5E5F23C();
            sub_1B5E5F94C();
            sub_1B5EA4EF0();
            sub_1B5EA59A0();
            (*v3)(v91, v92);
            v87 += v100;
            --v84;
          }

          while (v84);
        }

        else
        {
        }

        v74 = (v98 - 1) & v98;
        sub_1B5DF4428(v99, &qword_1EB90EBC0, &qword_1B5EB6D88);
        v76 = v94;
        v4 = v95;
      }

      while (v74);
    }
  }

  sub_1B5DFD8C0();
}

void GenerativeExperiencesSessionClient.init(_:)()
{
  sub_1B5DFD8A8();
  sub_1B5E1A084();
  v2 = type metadata accessor for SessionConfiguration();
  v3 = sub_1B5E01CF8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5DFD7E8();
  sub_1B5E5FB70();
  v6 = &v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client];
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  v7 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests;
  v8 = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests] = MEMORY[0x1E69E7CC8];
  v9 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest;
  *&v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest] = v8;
  v10 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests;
  *&v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests] = v8;
  v11 = sub_1B5DFA488();
  sub_1B5DFDA5C(v11, v12);
  v13 = type metadata accessor for GenerativeExperiencesSessionClientData(0);
  sub_1B5E5FE38(v13);
  sub_1B5E5F3AC();
  sub_1B5E2D258();
  if (v14)
  {
    *&v1[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData] = v14;
    v28.receiver = v1;
    v28.super_class = type metadata accessor for GenerativeExperiencesSessionClient();

    v15 = objc_msgSendSuper2(&v28, sel_init);
    sub_1B5E5F1C0();
    sub_1B5E47A4C(v16, v17, v18);
    v19 = type metadata accessor for XPCServiceClientConnectionSession();
    sub_1B5E5F910();
    v20 = swift_allocObject();
    v21 = sub_1B5DF33E0(&qword_1EB90EBF0, &qword_1B5EB6DB0);
    sub_1B5E5FE38(v21);
    v22 = v15;
    *(v20 + 16) = sub_1B5EA4DA0();
    v27[3] = v19;
    v27[4] = &off_1F2D66B00;

    v27[0] = v20;
    sub_1B5E01688(v0);
    v23 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client;
    sub_1B5E34E78();
    sub_1B5E5EC7C(v27, v22 + v23, &qword_1EB90EBB0, &qword_1B5EB6D78);
    swift_endAccess();
  }

  else
  {
    sub_1B5E01688(v0);
    sub_1B5DF4428(v6, &qword_1EB90EBB0, &qword_1B5EB6D78);
    v24 = *&v1[v7];

    v25 = *&v1[v9];

    v26 = *&v1[v10];

    type metadata accessor for GenerativeExperiencesSessionClient();
    swift_deallocPartialClassInstance();
  }

  sub_1B5DFD8C0();
}

void GenerativeExperiencesSessionClient.init(identifer:)()
{
  sub_1B5DFD8A8();
  v78 = v1;
  v82 = v2;
  v3 = sub_1B5EA5560();
  v4 = sub_1B5E01CF8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFD7E8();
  v81 = v8 - v7;
  sub_1B5E34DC8();
  v79 = sub_1B5EA55A0();
  v9 = sub_1B5DF5DA8(v79);
  v76 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  v74 = v14 - v13;
  sub_1B5E34DC8();
  v80 = sub_1B5EA5450();
  v15 = sub_1B5DF5DA8(v80);
  v77 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5DFD7F8();
  v75 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70 - v22;
  v24 = sub_1B5EA4630();
  v25 = sub_1B5E01CF8(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1B5DFD7E8();
  v73 = sub_1B5EA4930();
  v28 = sub_1B5DF5DA8(v73);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1B5DFD7F8();
  sub_1B5E5FBE4();
  MEMORY[0x1EEE9AC00](v33);
  sub_1B5E5F834();
  v34 = type metadata accessor for SessionConfiguration();
  v35 = sub_1B5E01CF8(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1B5DFD7F8();
  v72 = v38 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v70 - v41;
  v43 = &v0[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client];
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *(v43 + 4) = 0;
  v44 = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest] = v44;
  v71 = v0;
  *&v0[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests] = v44;
  sub_1B5DF33E0(&qword_1EB90EBF8, &qword_1B5EB6DB8);
  sub_1B5E5FFD0();
  v45 = sub_1B5EA4660();
  sub_1B5E01C50(v45);
  v47 = *(v46 + 72);
  sub_1B5E5FC54();
  *(swift_allocObject() + 16) = xmmword_1B5EAFC20;
  v48 = v42;

  sub_1B5EA4650();
  sub_1B5EA4620();
  sub_1B5EA4870();
  (*(v76 + 104))(v74, *MEMORY[0x1E69C63F8], v79);
  sub_1B5EA54F0();
  sub_1B5EA5400();
  v49 = *(v30 + 16);
  v50 = sub_1B5E5FB64();
  v51(v50);
  v52 = v77;
  v53 = v80;
  (*(v77 + 16))(v75, v23, v80);
  SessionConfiguration.init(timeToLive:tokenGeneratorConfig:instructions:)();
  (*(v52 + 8))(v23, v53);
  v54 = *(v30 + 8);
  v55 = sub_1B5E5FF70();
  v56(v55);
  sub_1B5DFDA5C(v48, v72);
  v57 = type metadata accessor for GenerativeExperiencesSessionClientData(0);
  sub_1B5E5FE38(v57);
  sub_1B5E5FD64();
  sub_1B5E2D258();
  if (v58)
  {
    sub_1B5E2624C();

    v59 = v71;
    *&v71[OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData] = v53;
    v60 = type metadata accessor for GenerativeExperiencesSessionClient();
    v84.receiver = v59;
    v84.super_class = v60;
    v61 = objc_msgSendSuper2(&v84, sel_init);
    sub_1B5E5F1C0();
    sub_1B5E47A4C(v62, v63, v64);
    v65 = type metadata accessor for XPCServiceClientConnectionSession();
    sub_1B5E5F910();
    v66 = swift_allocObject();
    v67 = sub_1B5DF33E0(&qword_1EB90EBF0, &qword_1B5EB6DB0);
    sub_1B5E5FE38(v67);
    v68 = v61;
    *(v66 + 16) = sub_1B5EA4DA0();
    v83[3] = v65;
    v83[4] = &off_1F2D66B00;
    v83[0] = v66;
    sub_1B5E01688(v48);
    v69 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client;
    sub_1B5E34E78();
    sub_1B5E5EC7C(v83, v68 + v69, &qword_1EB90EBB0, &qword_1B5EB6D78);
    swift_endAccess();

    sub_1B5DFD8C0();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1B5E47980()
{
  result = qword_1ED7D2B88;
  if (!qword_1ED7D2B88)
  {
    sub_1B5E479E8(255, &qword_1ED7D2B80, 0x1E69E58C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D2B88);
  }

  return result;
}

uint64_t sub_1B5E479E8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B5E47A4C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_1B5E5F3AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B5E47A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B5E47AB0()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  v4 = sub_1B5EA53B0();
  v5 = sub_1B5DF5DA8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v8[2] = v3;
  v8[3] = v1;
  sub_1B5E4B8F4(sub_1B5E5B284, v8);
  sub_1B5DFD8C0();
}

void sub_1B5E47CDC(void *a1)
{
  v2 = sub_1B5EA5670();
  [a1 terminateSessionFor_];
}

uint64_t sub_1B5E47D3C()
{
  v1 = (*(v0 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData) + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_identifier);
  v2 = *v1;
  v3 = v1[1];

  return sub_1B5DFA488();
}

void sub_1B5E47D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DFD8A8();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v211 = sub_1B5DF33E0(&qword_1EB90EC00, &qword_1B5EB6DC8);
  v25 = sub_1B5DF5DA8(v211);
  v209 = v26;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v25);
  v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v203 = &v171 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v207 = &v171 - v30;
  sub_1B5E34DC8();
  v201 = sub_1B5EA42B0();
  v31 = sub_1B5DF5DA8(v201);
  v208 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1B5DFD7E8();
  v200 = v36 - v35;
  v199 = sub_1B5DF33E0(&qword_1EB90EC08, &qword_1B5EB6DD0);
  sub_1B5DF5DA8(v199);
  v206 = v37;
  v39 = *(v38 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v40);
  sub_1B5DFA50C();
  v198 = v41;
  v212 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  sub_1B5DF5DA8(v212);
  v43 = v42;
  v45 = *(v44 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v46);
  sub_1B5DFA50C();
  v197 = v47;
  v210 = sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90);
  v48 = sub_1B5DF5DA8(v210);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1B5DFD7F8();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v53);
  sub_1B5E5FF90();
  v196 = v54;
  sub_1B5E34DC8();
  v195 = sub_1B5EA4E90();
  v55 = sub_1B5DF5DA8(v195);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1B5E5FF9C();
  v194 = v60;
  v205 = v61;
  MEMORY[0x1EEE9AC00](v62);
  sub_1B5E5FF90();
  v193 = v63;
  MEMORY[0x1EEE9AC00](v64);
  sub_1B5E26144(&v171 - v30);
  v66 = MEMORY[0x1EEE9AC00](v65);
  v67 = &v171 - v30;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v171 - v30;
  v69 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v69);
  v71 = *(v70 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v72);
  sub_1B5E5F1E8();
  v80 = *(v24 + 16);
  v81 = MEMORY[0x1E69E7CC0];
  v202 = v50;
  v176 = v43;
  if (v80)
  {
    v172 = v28;
    v173 = v68;
    v175 = v20;
    v213 = MEMORY[0x1E69E7CC0];
    sub_1B5E5B798(0, v80, 0);
    v190 = sub_1B5EA4ED0();
    v83 = *(v57 + 16);
    v82 = v57 + 16;
    v189 = v83;
    v84 = *(v82 + 64);
    v174 = v24;
    v85 = v24 + ((v84 + 32) & ~v84);
    v187 = v206 + 104;
    v81 = v213;
    v186 = *(v82 + 56);
    v185 = v206 + 8;
    v184 = v208 + 8;
    v183 = (v82 + 16);
    v188 = v84;
    HIDWORD(v181) = *MEMORY[0x1E69E8790];
    v182 = (v84 + 17) & ~v84;
    v180 = v182 + v205;
    v179 = (v50 + 32);
    v178 = (v43 + 32);
    v191 = v82;
    do
    {
      v208 = v81;
      v205 = v85;
      v206 = v80;
      v86 = v195;
      v189(v193, v85, v195);
      sub_1B5E5FFC4(&a13);
      v87(v198, HIDWORD(v181), v199);
      v88 = v196;
      v89 = v197;
      sub_1B5EA5970();
      sub_1B5E5FFC4(&a11);
      v90 = sub_1B5E5F324();
      v91(v90);
      v92 = v200;
      sub_1B5EA4E60();
      v93 = sub_1B5EA42A0();
      sub_1B5E5FFC4(&a10);
      v94(v92, v201);
      v95 = *v183;
      v96 = v194;
      v97 = sub_1B5E5F318();
      v95(v97);
      v98 = swift_allocObject();
      v204 = v98;
      *(v98 + 16) = v93 & 1;
      (v95)(v98 + v182, v96, v86);
      v99 = v211;
      v100 = *(v211 + 48);
      v101 = *v179;
      v43 = v207;
      v102 = v88;
      v103 = v210;
      (*v179)(v207, v102, v210);
      v104 = *v178;
      v105 = v89;
      v106 = v212;
      (*v178)((v43 + v100), v105, v212);
      v101(v67, v43, v103);
      v107 = v106;
      v81 = v208;
      v104(&v67[*(v99 + 48)], v43 + v100, v107);
      v108 = &v67[*(v99 + 64)];
      sub_1B5E5F8F8();
      v109 = swift_allocObject();
      v110 = v204;
      *(v109 + 16) = sub_1B5E5B7B8;
      *(v109 + 24) = v110;
      *v108 = sub_1B5E5B818;
      v108[1] = v109;
      v213 = v81;
      v112 = *(v81 + 16);
      v111 = *(v81 + 24);
      if (v112 >= v111 >> 1)
      {
        v115 = sub_1B5E34E0C(v111);
        sub_1B5E5B798(v115, v112 + 1, 1);
        v81 = v213;
      }

      *(v81 + 16) = v112 + 1;
      sub_1B5E34D40();
      sub_1B5E5EE70(v67, v81 + v113 + *(v114 + 72) * v112, &qword_1EB90EC00, &qword_1B5EB6DC8);
      v85 = v205 + v186;
      v80 = (v206 - 1);
    }

    while (v206 != 1);
    v20 = v175;
    v24 = v174;
    v68 = v173;
  }

  sub_1B5E4C324(v24, v73, v74, v75, v76, v77, v78, v79, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182);
  sub_1B5E5FFD0();
  sub_1B5EA5920();
  v116 = sub_1B5E5F2F8();
  sub_1B5DF3658(v116, v117, v118, v119);
  sub_1B5E5FB08();
  v120 = swift_allocObject();
  v120[2] = 0;
  v120[3] = 0;
  v120[4] = v43;
  v120[5] = v81;
  v120[6] = v20;

  v121 = v20;
  v122 = sub_1B5E5F844();
  v204 = sub_1B5E2A07C(v122, v123, v124, v125, v120);
  v126 = 0;
  v127 = *(v81 + 16);
  while (1)
  {
    v128 = *(v81 + 16);
    if (v127 == v126)
    {
      break;
    }

    if (v126 >= v128)
    {
      __break(1u);
      return;
    }

    sub_1B5E34D40();
    sub_1B5E5EEBC(v81 + v129 + *(v130 + 72) * v126++, v68, &qword_1EB90EC00, &qword_1B5EB6DC8);
    v131 = v81;
    v132 = *(v211 + 48);
    v133 = &v68[*(v211 + 64)];
    v135 = *v133;
    v134 = *(v133 + 1);
    sub_1B5E5F8F8();
    v136 = swift_allocObject();
    *(v136 + 16) = v135;
    *(v136 + 24) = v134;
    v137 = swift_allocObject();
    v137[2] = sub_1B5E5B8CC;
    v137[3] = v136;
    v137[4] = v204;

    v81 = v131;
    sub_1B5EA5980();
    v138 = sub_1B5E26048();
    sub_1B5DF4428(v138, v139, &qword_1B5EB6DC8);
  }

  if (v128)
  {
    v140 = sub_1B5E5FC78(MEMORY[0x1E69E7CC0]);
    sub_1B5E5B778(v140, v141, v142);
    v143 = v213;
    sub_1B5E34D40();
    v208 = v81;
    v145 = v81 + v144;
    v146 = (v202 + 32);
    v200 = *(v147 + 72);
    v201 = v203 + 8;
    v198 = (v176 + 8);
    v199 = (v176 + 32);
    v148 = v177;
    do
    {
      v209 = v143;
      v149 = v192;
      sub_1B5E5EEBC(v145, v192, &qword_1EB90EC00, &qword_1B5EB6DC8);
      v150 = v210;
      v151 = v211;
      v152 = *(v211 + 48);
      v153 = *v146;
      v205 = *(v211 + 64);
      v206 = v153;
      v154 = v146;
      v155 = v207;
      (v153)(v207, v149, v210);
      v156 = v212;
      (*v199)(&v155[*(v151 + 48)], v149 + v152, v212);
      v157 = &v155[*(v151 + 64)];
      sub_1B5E5F8F8();
      v158 = swift_allocObject();
      v159 = *(v149 + v205);
      v143 = v209;
      *(v158 + 16) = v159;
      *v157 = sub_1B5E5EF2C;
      v157[1] = v158;
      v160 = v155;
      v146 = v154;
      v161 = v203;
      sub_1B5E5EE70(v160, v203, &qword_1EB90EC00, &qword_1B5EB6DC8);
      v162 = *(v151 + 48);
      v163 = *(v201 + *(v151 + 64));

      v164 = v150;
      v165 = v206;
      (v206)(v148, v161, v164);
      (*v198)(v161 + v162, v156);
      v213 = v143;
      v167 = *(v143 + 16);
      v166 = *(v143 + 24);
      if (v167 >= v166 >> 1)
      {
        v170 = sub_1B5E34E0C(v166);
        sub_1B5E5B778(v170, v167 + 1, 1);
        v143 = v213;
      }

      *(v143 + 16) = v167 + 1;
      sub_1B5E34D40();
      (v165)(v143 + v168 + *(v169 + 72) * v167, v148, v210);
      v145 += v200;
      --v128;
    }

    while (v128);
  }

  else
  {
  }

  sub_1B5DFD8C0();
}

uint64_t sub_1B5E488D4(char a1)
{
  v2 = sub_1B5EA42B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](v2);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1B5EA4E60();
    sub_1B5EA4280();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_1B5E489B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_1B5DF33E0(&qword_1EB90EC28, &qword_1B5EB6EA0);
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v9 = *(v8 + 64) + 15;
  v6[15] = swift_task_alloc();
  v10 = sub_1B5EA4EB0();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();
  v13 = sub_1B5EA4EE0();
  v6[19] = v13;
  v14 = *(v13 - 8);
  v6[20] = v14;
  v15 = *(v14 + 64) + 15;
  v6[21] = swift_task_alloc();
  v16 = sub_1B5EA4ED0();
  v6[22] = v16;
  v17 = *(v16 - 8);
  v6[23] = v17;
  v18 = *(v17 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v19 = *(*(sub_1B5DF33E0(&qword_1EB90ED90, &qword_1B5EB7178) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v20 = sub_1B5DF33E0(&qword_1EB90ED98, &qword_1B5EB7180);
  v6[27] = v20;
  v21 = *(v20 - 8);
  v6[28] = v21;
  v22 = *(v21 + 64) + 15;
  v6[29] = swift_task_alloc();
  v23 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  v6[30] = v23;
  v24 = *(v23 - 8);
  v6[31] = v24;
  v25 = *(v24 + 64) + 15;
  v6[32] = swift_task_alloc();
  v26 = sub_1B5DF33E0(&qword_1EB90EC00, &qword_1B5EB6DC8);
  v6[33] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v28 = sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90);
  v6[36] = v28;
  v29 = *(v28 - 8);
  v6[37] = v29;
  v30 = *(v29 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v31 = sub_1B5DF33E0(&qword_1EB90EDA0, &qword_1B5EB7188);
  v6[40] = v31;
  v32 = *(*(v31 - 8) + 64) + 15;
  v6[41] = swift_task_alloc();
  v33 = *(*(sub_1B5DF33E0(&qword_1EB90EDA8, &qword_1B5EB7190) - 8) + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E48DF0, 0, 0);
}

uint64_t sub_1B5E4922C()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v2 = *(v1 + 400);
  v3 = *v0;
  sub_1B5E2CE38();
  *v4 = v3;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B5E49E64(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_1B5DF33E0(&qword_1EB90ED88, &qword_1B5EB7170);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - v8;
  a2(v7);
  (*(v5 + 16))(v9, a1, v4);
  v10 = (*(v5 + 88))(v9, v4);
  LODWORD(a2) = *MEMORY[0x1E69E8760];
  result = (*(v5 + 8))(v9, v4);
  if (v10 == a2)
  {
    return sub_1B5EA5940();
  }

  return result;
}

uint64_t sub_1B5E4A020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4A044, 0, 0);
}

uint64_t sub_1B5E4A044()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 88) = v1;
  return sub_1B5E5EF74(sub_1B5E4A06C, v1);
}

uint64_t sub_1B5E4A06C()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 88);
  sub_1B5E2D094();
  v2 = *(v1 + 136);

  *(v0 + 96) = sub_1B5E4386C(v3);
  v4 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B5E4A0E0()
{
  sub_1B5E2CED8();
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  sub_1B5E2D240();
  v4 = *(v3 + 16);
  *(v3 + 16) = v1;

  dispatch_group_leave(v2);
  sub_1B5E2CF4C();

  return v5();
}

void sub_1B5E4A164()
{
  sub_1B5DFD8A8();
  v1 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01CF8(v1);
  v3 = *(v2 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E08868();
  sub_1B5E5F318();
  sub_1B5EA5360();
  sub_1B5EA5290();
  sub_1B5E5F704();
  sub_1B5DF3658(v5, v6, v7, v8);
  sub_1B5E4DCD4();
  sub_1B5DF4428(v0, &qword_1EB90E6A0, &qword_1B5EB60D8);
  type metadata accessor for TokenStreamHandler();
  sub_1B5E5EFBC();
  sub_1B5E63EC8();
  sub_1B5DFD8C0();
}

void sub_1B5E4A28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DFD8A8();
  a19 = v20;
  a20 = v21;
  v22 = sub_1B5E5FB58();
  v24 = sub_1B5DF33E0(v22, v23);
  sub_1B5E01CF8(v24);
  v26 = *(v25 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  sub_1B5EA5290();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v30, v31, v32, v33);
  sub_1B5E26048();
  sub_1B5E4DCD4();
  sub_1B5DF4428(v29, &qword_1EB90E6A0, &qword_1B5EB60D8);
  v34 = sub_1B5DF33E0(&qword_1EB90DB88, &qword_1B5EAFC30);
  sub_1B5E5FE38(v34);
  sub_1B5E5EFBC();
  sub_1B5E5AD40();
  sub_1B5DFD8C0();
}

void sub_1B5E4A398()
{
  sub_1B5DFD8A8();
  v22[3] = v2;
  v23 = v0;
  v22[1] = v3;
  v22[2] = v4;
  v24 = v5;
  v6 = sub_1B5DF33E0(&qword_1EB90EC10, &qword_1B5EB6DF8);
  sub_1B5DF5DA8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5E5F57C();
  v12 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01CF8(v12);
  v14 = *(v13 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v22 - v16;
  sub_1B5E5FD58();
  sub_1B5EA5360();
  sub_1B5EA5290();
  sub_1B5E5F704();
  sub_1B5DF3658(v18, v19, v20, v21);
  sub_1B5E5FB64();
  sub_1B5E4DCD4();
  sub_1B5DF4428(v17, &qword_1EB90E6A0, &qword_1B5EB60D8);

  sub_1B5E5EFBC();
  sub_1B5EA45E0();
  sub_1B5EA4600();

  (*(v8 + 8))(v1, v6);
  sub_1B5DFD8C0();
}

void sub_1B5E4A56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DFD8A8();
  a19 = v20;
  a20 = v21;
  v22 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01CF8(v22);
  v24 = *(v23 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  sub_1B5EA5290();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v28, v29, v30, v31);
  sub_1B5E5FB64();
  sub_1B5E4DCD4();
  sub_1B5DF4428(v27, &qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E5EFBC();
  sub_1B5EA45E0();
  sub_1B5DFD8C0();
}

uint64_t sub_1B5E4A69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4A6C0, 0, 0);
}

uint64_t sub_1B5E4A6C0()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 64) = v1;
  return sub_1B5E5EF74(sub_1B5E4A6E8, v1);
}

uint64_t sub_1B5E4A6E8()
{
  sub_1B5E01DFC();
  *(v0 + 72) = *(*(v0 + 64) + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_tools);

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B5E4A77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4A79C, 0, 0);
}

uint64_t sub_1B5E4A79C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 32) = v1;
  return sub_1B5E5EF74(sub_1B5E4A7C4, v1);
}

uint64_t sub_1B5E4A7C4()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 32);
  v2 = *(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_tools);
  *(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_tools) = *(v0 + 24);

  sub_1B5E2CF4C();

  return v3();
}

void sub_1B5E4A834()
{
  sub_1B5E601CC();
  v1 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v1);
  v3 = *(v2 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E5F57C();
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = sub_1B5EA5160();
  v7 = swift_allocBox();
  sub_1B5EA5140();
  sub_1B5EA5920();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v8, v9, v10, v11);
  sub_1B5E5FB08();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v7;
  v12[5] = v0;
  v12[6] = v5;

  v13 = v0;
  v14 = v5;
  v15 = sub_1B5E5FF20();
  sub_1B5E2A07C(v15, v16, v17, v18, v12);

  sub_1B5EA5A70();

  sub_1B5E2D094();
  sub_1B5E2D1D8(v6);
  v20 = *(v19 + 16);
  v21 = sub_1B5E5FBCC();
  v22(v21);

  sub_1B5E601B8();
}

uint64_t sub_1B5E4A988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v7 = sub_1B5EA5160();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1B5E4AA58, 0, 0);
}

uint64_t sub_1B5E4AA58()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 112) = v1;
  return sub_1B5E5EF74(sub_1B5E4AA80, v1);
}

uint64_t sub_1B5E4AA80()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_toolChoice;
  sub_1B5E2D094();
  (*(v3 + 16))(v2, v1 + v5, v4);
  sub_1B5E2CE58();
  sub_1B5E5FEF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B5E4AB18()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  sub_1B5E2D240();
  v6 = *(v4 + 40);
  v7 = sub_1B5E5F324();
  v8(v7);
  dispatch_group_leave(v5);

  sub_1B5E2CF4C();
  sub_1B5E5FEF8();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_1B5E4ABB0()
{
  sub_1B5E601CC();
  sub_1B5E5FFD0();
  v1 = sub_1B5EA5160();
  v2 = sub_1B5DF5DA8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v7);
  v9 = *(v8 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E5F57C();
  sub_1B5EA5920();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v11, v12, v13, v14);
  v15 = *(v4 + 16);
  v16 = sub_1B5E5FD58();
  v17(v16);
  v18 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v0;
  v20 = *(v4 + 32);
  sub_1B5E5F688();
  v21();
  v22 = v0;
  v23 = sub_1B5E5FF20();
  sub_1B5E2A07C(v23, v24, v25, v26, v19);

  sub_1B5E601B8();
}

uint64_t sub_1B5E4AD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4AD44, 0, 0);
}

uint64_t sub_1B5E4AD44()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 56) = v1;
  return sub_1B5E5EF74(sub_1B5E4AD6C, v1);
}

uint64_t sub_1B5E4AD6C()
{
  sub_1B5E2CED8();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_toolChoice;
  sub_1B5E34E78();
  v4 = sub_1B5EA5160();
  sub_1B5DF5EB8(v4);
  (*(v5 + 24))(v1 + v3, v2);
  swift_endAccess();
  sub_1B5E2CF4C();

  return v6();
}

void sub_1B5E4AE40()
{
  sub_1B5E601CC();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E5F1E8();
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  sub_1B5E5F910();
  v10 = swift_allocObject();
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  sub_1B5EA5920();
  v11 = sub_1B5E5F2F8();
  sub_1B5DF3658(v11, v12, v13, v14);
  sub_1B5E5FB08();
  v15 = swift_allocObject();
  sub_1B5E5FDB8(v15);
  v16 = v0;
  v17 = v9;
  v18 = sub_1B5E5F844();
  sub_1B5E2A07C(v18, v19, v20, v2, v4);

  sub_1B5EA5A70();

  sub_1B5E2D094();
  v21 = *(v10 + 16);

  sub_1B5E601B8();
}

uint64_t sub_1B5E4AF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4AF7C, 0, 0);
}

uint64_t sub_1B5E4AF7C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 64) = v1;
  return sub_1B5E5EF74(sub_1B5E4AFA4, v1);
}

uint64_t sub_1B5E4AFA4()
{
  sub_1B5E01DFC();
  *(v0 + 72) = *(*(v0 + 64) + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_instructionsTemplateVariableBindings);

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B5E4B018()
{
  sub_1B5E2CED8();
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];
  sub_1B5E2D240();
  v4 = *(v3 + 16);
  *(v3 + 16) = v1;

  dispatch_group_leave(v2);
  sub_1B5E2CF4C();

  return v5();
}

uint64_t sub_1B5E4B0BC()
{
  sub_1B5E5FC04();
  v3 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5E5F1E8();
  sub_1B5EA5920();
  v7 = sub_1B5E5F2F8();
  sub_1B5DF3658(v7, v8, v9, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = v2;
  v12 = v1;

  v13 = sub_1B5E5F844();
  sub_1B5E2A07C(v13, v14, v15, v0, v11);
}

uint64_t sub_1B5E4B17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4B19C, 0, 0);
}

uint64_t sub_1B5E4B19C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 32) = v1;
  return sub_1B5E5EF74(sub_1B5E4B1C4, v1);
}

uint64_t sub_1B5E4B1C4()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 32);
  v2 = *(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_instructionsTemplateVariableBindings);
  *(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_instructionsTemplateVariableBindings) = *(v0 + 24);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E4B234(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1B5E5EF74(sub_1B5E4B250, 0);
}

uint64_t sub_1B5E4B250()
{
  sub_1B5E01DFC();
  v1 = *(v0[3] + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  swift_task_alloc();
  sub_1B5E34EEC();
  v0[4] = v2;
  *v2 = v3;
  v2[1] = sub_1B5E5EF28;
  v4 = v0[2];

  return sub_1B5E2F324();
}

uint64_t sub_1B5E4B2EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1B5E5EF74(sub_1B5E4B308, 0);
}

uint64_t sub_1B5E4B308()
{
  sub_1B5E01DFC();
  v1 = *(v0[3] + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  swift_task_alloc();
  sub_1B5E34EEC();
  v0[4] = v2;
  *v2 = v3;
  v2[1] = sub_1B5E4B3A4;
  v4 = v0[2];

  return sub_1B5E2F604();
}

uint64_t sub_1B5E4B3A4()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_1B5E2CE38();
  *v4 = v3;

  sub_1B5E2CF4C();

  return v5();
}

uint64_t sub_1B5E4B4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4B4C8, 0, 0);
}

uint64_t sub_1B5E4B4C8()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 64) = v1;
  return sub_1B5E5EF74(sub_1B5E4B4F0, v1);
}

void sub_1B5E4B53C()
{
  sub_1B5E601CC();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E5F1E8();
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  sub_1B5EA5920();
  v11 = sub_1B5E5F2F8();
  sub_1B5DF3658(v11, v12, v13, v14);
  sub_1B5E5FB08();
  v15 = swift_allocObject();
  sub_1B5E5FDB8(v15);
  v16 = v0;
  v17 = v9;
  v18 = sub_1B5E5F844();
  sub_1B5E2A07C(v18, v19, v20, v2, v4);

  sub_1B5EA5A70();

  sub_1B5E2D094();
  v21 = *(v10 + 16);

  sub_1B5E601B8();
}

uint64_t sub_1B5E4B648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E4B66C, 0, 0);
}

uint64_t sub_1B5E4B66C()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
  *(v0 + 64) = v1;
  return sub_1B5E5EF74(sub_1B5E4B694, v1);
}

uint64_t sub_1B5E4B6C0()
{
  sub_1B5E2CED8();
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[9] > 1;
  sub_1B5E2D240();
  *(v2 + 16) = v3;
  dispatch_group_leave(v1);
  sub_1B5E2CF4C();

  return v4();
}

BOOL sub_1B5E4B744()
{
  v0 = sub_1B5EA4230();
  v1 = [v0 domain];
  v2 = sub_1B5EA56A0();
  v4 = v3;

  v5 = *MEMORY[0x1E696A250];
  if (v2 == sub_1B5EA56A0() && v4 == v6)
  {
  }

  else
  {
    v8 = sub_1B5E5FE98();

    if ((v8 & 1) == 0)
    {

      return 0;
    }
  }

  v9 = [v0 code];

  return v9 == 4097;
}

BOOL sub_1B5E4B81C()
{
  v0 = sub_1B5EA4230();
  v1 = [v0 domain];
  v2 = sub_1B5EA56A0();
  v4 = v3;

  v5 = *MEMORY[0x1E696A250];
  if (v2 == sub_1B5EA56A0() && v4 == v6)
  {
  }

  else
  {
    v8 = sub_1B5E5FE98();

    if ((v8 & 1) == 0)
    {

      return 0;
    }
  }

  v9 = [v0 code];

  return v9 == 4099;
}

void sub_1B5E4B8F4(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v80 = a1;
  v81 = a2;
  v5 = sub_1B5EA53B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v74 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v74 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v75 = &v74 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v76 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v74 - v17;
  v18 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_client;
  v82 = v2;
  swift_beginAccess();
  v87 = 0;
  v19 = (v6 + 16);
  v83 = (v6 + 8);
  v20 = 1;
  *&v21 = 138412802;
  v78 = v21;
  v79 = v5;
  while (1)
  {
    if (v20 == 4)
    {
      if (qword_1EB90CE80 != -1)
      {
        swift_once();
      }

      v34 = sub_1B5DFD794(v5, qword_1EB90CE88);
      swift_beginAccess();
      v35 = v77;
      (*v19)(v77, v34, v5);
      v36 = v87;
      v37 = v87;
      v38 = sub_1B5EA5380();
      v39 = v5;
      v40 = sub_1B5EA5A40();
      if (os_log_type_enabled(v38, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 134218242;
        *(v41 + 4) = 3;
        *(v41 + 12) = 2112;
        if (!v36)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v43 = v42;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v44;
        *v43 = v44;
        _os_log_impl(&dword_1B5DED000, v38, v40, "failed after %ld attempts with error: %@", v41, 0x16u);
        sub_1B5DF4428(v43, &unk_1EB90F890, &qword_1B5EB6DC0);
        MEMORY[0x1B8C8B330](v43, -1, -1);
        MEMORY[0x1B8C8B330](v41, -1, -1);

        (*v83)(v35, v79);
      }

      else
      {

        (*v83)(v35, v39);
        if (!v36)
        {
LABEL_38:
          __break(1u);
          return;
        }
      }

      swift_willThrow();
      return;
    }

    sub_1B5E5EEBC(v82 + v18, v84, &qword_1EB90EBB0, &qword_1B5EB6D78);
    v22 = v85;
    if (!v85)
    {
      __break(1u);
      goto LABEL_37;
    }

    v23 = v86;
    sub_1B5DF3BFC(v84, v85);
    v24 = v4;
    (*(v23 + 16))(v80, v81, MEMORY[0x1E69E7CA8] + 8, v22, v23);
    if (!v4)
    {
      break;
    }

    sub_1B5DF3FB8(v84);
    if (sub_1B5E4B81C())
    {
      if (qword_1EB90CE80 != -1)
      {
        swift_once();
      }

      v52 = sub_1B5DFD794(v5, qword_1EB90CE88);
      swift_beginAccess();
      v53 = v75;
      (*v19)(v75, v52, v5);
      v54 = v4;
      v55 = sub_1B5EA5380();
      v56 = sub_1B5EA5A40();

      v57 = os_log_type_enabled(v55, v56);
      v58 = v87;
      if (v57)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        v61 = v4;
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 4) = v62;
        *v60 = v62;
        _os_log_impl(&dword_1B5DED000, v55, v56, "connection was invalidated %@", v59, 0xCu);
        sub_1B5DF4428(v60, &unk_1EB90F890, &qword_1B5EB6DC0);
        MEMORY[0x1B8C8B330](v60, -1, -1);
        MEMORY[0x1B8C8B330](v59, -1, -1);
      }

      (*v83)(v53, v79);
      sub_1B5EA5130();
      sub_1B5E47A4C(&qword_1EB90EBE0, 255, MEMORY[0x1E69A0A68]);
      swift_allocError();
      sub_1B5EA4EF0();
      swift_willThrow();

      return;
    }

    if (!sub_1B5E4B744())
    {
      if (qword_1EB90CE80 != -1)
      {
        swift_once();
      }

      v63 = sub_1B5DFD794(v5, qword_1EB90CE88);
      swift_beginAccess();
      v64 = v74;
      (*v19)(v74, v63, v5);
      v65 = v4;
      v66 = sub_1B5EA5380();
      v67 = sub_1B5EA5A40();

      v68 = os_log_type_enabled(v66, v67);
      v69 = v87;
      if (v68)
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = 138412290;
        v72 = v4;
        v73 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 4) = v73;
        *v71 = v73;
        _os_log_impl(&dword_1B5DED000, v66, v67, "encountered non-retryable error %@", v70, 0xCu);
        sub_1B5DF4428(v71, &unk_1EB90F890, &qword_1B5EB6DC0);
        MEMORY[0x1B8C8B330](v71, -1, -1);
        MEMORY[0x1B8C8B330](v70, -1, -1);
      }

      (*v83)(v64, v79);
      swift_willThrow();

      return;
    }

    if (qword_1EB90CE80 != -1)
    {
      swift_once();
    }

    v25 = sub_1B5DFD794(v5, qword_1EB90CE88);
    swift_beginAccess();
    (*v19)(v12, v25, v5);
    v26 = v4;
    v27 = sub_1B5EA5380();
    v28 = sub_1B5EA5A40();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = v78;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      *(v29 + 12) = 2048;
      *(v29 + 14) = v20;
      *(v29 + 22) = 2048;
      *(v29 + 24) = 3;
      _os_log_impl(&dword_1B5DED000, v27, v28, "encountered retryable error: %@, will retry with attempt %ld/%ld", v29, 0x20u);
      sub_1B5DF4428(v30, &unk_1EB90F890, &qword_1B5EB6DC0);
      v33 = v30;
      v5 = v79;
      MEMORY[0x1B8C8B330](v33, -1, -1);
      MEMORY[0x1B8C8B330](v29, -1, -1);
    }

    else
    {
    }

    (*v83)(v12, v5);
    v4 = 0;
    ++v20;
    v87 = v24;
  }

  sub_1B5DF3FB8(v84);
  if (qword_1EB90CE80 != -1)
  {
    swift_once();
  }

  v45 = sub_1B5DFD794(v5, qword_1EB90CE88);
  swift_beginAccess();
  v46 = v76;
  (*v19)(v76, v45, v5);
  v47 = sub_1B5EA5380();
  v48 = sub_1B5EA5A40();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v87;
  if (v49)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_1B5DED000, v47, v48, "messaged replied", v51, 2u);
    MEMORY[0x1B8C8B330](v51, -1, -1);
  }

  else
  {
  }

  (*v83)(v46, v79);
}

void sub_1B5E4C324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DFD8A8();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  sub_1B5E01CF8(v27);
  v29 = *(v28 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v30);
  sub_1B5DFA50C();
  v142 = v31;
  sub_1B5E34DC8();
  v141 = sub_1B5EA53B0();
  v32 = sub_1B5DF5DA8(v141);
  v140 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1B5DFD7E8();
  sub_1B5E26144(v37 - v36);
  v148 = sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90);
  sub_1B5DF5DA8(v148);
  v152 = v38;
  v40 = *(v39 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v41);
  sub_1B5DFA50C();
  sub_1B5E26144(v42);
  v165 = sub_1B5DF33E0(&qword_1EB90E630, &unk_1B5EB60A0);
  v43 = sub_1B5DF5DA8(v165);
  v159 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1B5DFD7F8();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v47);
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v48);
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v49);
  sub_1B5E5FF90();
  sub_1B5E26144(v50);
  v166 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  sub_1B5DF5DA8(v166);
  v149 = v51;
  v53 = *(v52 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v54);
  sub_1B5E08868();
  v55 = sub_1B5EA4340();
  v160 = sub_1B5DF5DA8(v55);
  v161 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v160);
  sub_1B5E5FF9C();
  sub_1B5E26144(v59);
  v155 = v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v139 - v62;
  v169 = MEMORY[0x1E69E7CC0];
  v170 = MEMORY[0x1E69E7CC0];
  v145 = sub_1B5E4D620(v26, &v170, &v169);
  v144 = 0;
  sub_1B5EA4330();
  v64 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests;
  sub_1B5E2D094();
  v162 = v21;
  v65 = *&v21[v64];

  v164 = v63;
  sub_1B5E4D778(v63, v65);
  sub_1B5E43350();

  if (v20)
  {
    v163 = v64;
    v66 = *(v20 + 16);
    v67 = v166;
    if (v66)
    {
      v68 = v149 + 16;
      v69 = *(v149 + 16);
      v70 = *(v149 + 80);
      sub_1B5E34D90();
      v72 = v20 + v71;
      v73 = *(v68 + 56);
      do
      {
        v69(v22, v72, v67);
        v168 = 0;
        sub_1B5EA59A0();
        (*(v68 - 8))(v22, v67);
        v72 += v73;
        --v66;
      }

      while (v66);
    }

    v64 = v163;
  }

  v74 = v169;
  v75 = v162;
  sub_1B5E34E78();

  v76 = *&v75[v64];
  swift_isUniquelyReferenced_nonNull_native();
  v167 = *&v75[v64];
  v146 = v74;
  sub_1B5EA0214();
  *&v75[v64] = v167;
  v77 = swift_endAccess();
  v78 = 0;
  v156 = v161 + 16;
  v154 = v161 + 32;
  v163 = v170;
  v158 = *(v170 + 16);
  v79 = v157;
  v80 = v160;
  while (v158 != v78)
  {
    if (v78 >= *(v163 + 16))
    {
      __break(1u);
LABEL_27:
      sub_1B5E5EF54();
      goto LABEL_12;
    }

    sub_1B5E34D40();
    v75 = v153;
    sub_1B5E5EEBC(v82 + v81 + *(v83 + 72) * v78++, v153, &qword_1EB90E630, &unk_1B5EB60A0);
    v84 = *(v165 + 48);
    sub_1B5E5F910();
    v85 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v86 = v161;
    (*(v161 + 16))(v79, v164, v80);
    v87 = (*(v86 + 80) + 24) & ~*(v86 + 80);
    v88 = swift_allocObject();
    *(v88 + 16) = v85;
    (*(v86 + 32))(v88 + v87, v79, v80);
    sub_1B5EA5980();
    v89 = sub_1B5E5F758();
    v77 = sub_1B5DF4428(v89, v90, &unk_1B5EB60A0);
  }

  MEMORY[0x1EEE9AC00](v77);
  v91 = v145;
  v139[-4] = v162;
  v139[-3] = v91;
  v139[-2] = v164;
  v75 = v144;
  sub_1B5E4B8F4(sub_1B5E5EE64, &v139[-6]);
  if (!v75)
  {

    goto LABEL_20;
  }

  if (qword_1EB90CE80 != -1)
  {
    goto LABEL_27;
  }

LABEL_12:
  v92 = v141;
  v93 = sub_1B5DFD794(v141, qword_1EB90CE88);
  sub_1B5E2D094();
  v94 = v140;
  v95 = v143;
  (*(v140 + 16))(v143, v93, v92);
  v96 = v75;
  v97 = sub_1B5EA5380();
  v98 = sub_1B5EA5A40();

  v99 = os_log_type_enabled(v97, v98);
  v100 = v139[1];
  if (v99)
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v103 = sub_1B5E5FC3C();
    v167 = v103;
    *v101 = 136315394;
    *(v101 + 4) = sub_1B5E5B1CC();
    *(v101 + 12) = 2112;
    v104 = v75;
    v105 = _swift_stdlib_bridgeErrorToNSError();
    *(v101 + 14) = v105;
    *v102 = v105;
    _os_log_impl(&dword_1B5DED000, v97, v98, "%s error %@", v101, 0x16u);
    sub_1B5DF4428(v102, &unk_1EB90F890, &qword_1B5EB6DC0);
    sub_1B5E5F764();
    sub_1B5DF3FB8(v103);
    sub_1B5E2D07C();
    sub_1B5E2D07C();

    (*(v94 + 8))(v143, v92);
  }

  else
  {

    (*(v94 + 8))(v95, v92);
  }

  v106 = *(v163 + 16);
  if (v106)
  {
    v107 = *(v165 + 48);
    sub_1B5E34D40();
    v109 = v163 + v108;
    v111 = *(v110 + 72);
    do
    {
      sub_1B5E5EEBC(v109, v100, &qword_1EB90E630, &unk_1B5EB60A0);
      v167 = v75;
      v112 = v75;
      sub_1B5EA59A0();
      sub_1B5DF4428(v100, &qword_1EB90E630, &unk_1B5EB60A0);
      v109 += v111;
      --v106;
    }

    while (v106);
  }

  sub_1B5E5FFC4(&a17);
  v113 = v157;
  v114(v157, v164, v160);
  sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
  v115 = v142;
  sub_1B5DF5DF0();
  sub_1B5DF3658(v116, v117, v118, v119);
  sub_1B5E34E78();
  sub_1B5E43BE0(v115, v113);
  swift_endAccess();

LABEL_20:
  v120 = v148;
  v121 = v147;
  v122 = v163;
  v123 = *(v163 + 16);
  if (v123)
  {
    v167 = MEMORY[0x1E69E7CC0];
    sub_1B5E5B778(0, v123, 0);
    v124 = v167;
    sub_1B5E34D40();
    v126 = v122 + v125;
    v162 = *(v127 + 72);
    v128 = (v152 + 32);
    v159 = (v149 + 8);
    do
    {
      v129 = v150;
      sub_1B5E5EEBC(v126, v150, &qword_1EB90E630, &unk_1B5EB60A0);
      v130 = v151;
      sub_1B5E5EE70(v129, v151, &qword_1EB90E630, &unk_1B5EB60A0);
      v131 = *(v165 + 48);
      v132 = *v128;
      v133 = sub_1B5E5FA54();
      v132(v133);
      (*v159)(v130 + v131, v166);
      v167 = v124;
      v135 = v124[2];
      v134 = v124[3];
      if (v135 >= v134 >> 1)
      {
        v138 = sub_1B5E34E0C(v134);
        sub_1B5E5B778(v138, v135 + 1, 1);
        v124 = v167;
      }

      v124[2] = v135 + 1;
      sub_1B5E34D40();
      (v132)(v124 + v136 + *(v137 + 72) * v135, v121, v120);
      v126 += v162;
      --v123;
    }

    while (v123);
  }

  (*(v161 + 8))(v164, v160);

  sub_1B5DFD8C0();
}

uint64_t sub_1B5E4CDFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t **a4@<X8>)
{
  v82 = a4;
  v77 = a3;
  v90 = a2;
  v91 = a1;
  v4 = sub_1B5DF33E0(&unk_1EB90E780, &unk_1B5EB60F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v75 = &v71 - v6;
  v71 = sub_1B5EA50B0();
  v74 = *(v71 - 8);
  v7 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B5DF33E0(&qword_1EB90EDB8, &qword_1B5EB7198);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v71 - v13;
  v72 = sub_1B5EA42B0();
  v14 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v89 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B5EA4E90();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v88 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B5DF33E0(&qword_1EB90E630, &unk_1B5EB60A0);
  v19 = *(v92 - 8);
  v87 = v92 - 8;
  v85 = v19;
  v86 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v84 = &v71 - v21;
  v22 = sub_1B5DF33E0(&qword_1EB90EC08, &qword_1B5EB6DD0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v71 - v25;
  v27 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  v83 = *(v27 - 8);
  v28 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v71 - v29;
  v31 = sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v71 - v34;
  sub_1B5EA4ED0();
  (*(v23 + 104))(v26, *MEMORY[0x1E69E8790], v22);
  sub_1B5EA5970();
  v36 = v26;
  v37 = v27;
  v38 = v83;
  (*(v23 + 8))(v36, v22);
  v39 = *(v92 + 48);
  v81 = v32;
  v40 = *(v32 + 16);
  v41 = v84;
  v79 = v35;
  v40(v84, v35, v31);
  v42 = *(v38 + 16);
  v80 = v30;
  v42(v41 + v39, v30, v37);
  v43 = v90;
  sub_1B5E32A58();
  v44 = *(*v43 + 16);
  sub_1B5E32AFC(v44);
  v45 = *v43;
  *(v45 + 16) = v44 + 1;
  sub_1B5E5EE70(v41, v45 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v85 + 72) * v44, &qword_1EB90E630, &unk_1B5EB60A0);
  sub_1B5EA4E60();
  sub_1B5EA4E70();
  v46 = objc_allocWithZone(type metadata accessor for DocumentXPCEnvelope(0));
  DocumentXPCEnvelope.init(sealing:)();
  v48 = v47;
  v49 = *v43;
  v90 = v48;
  if (v48)
  {
    v50 = v78;
    sub_1B5E2EEAC(v49, v78);
    v51 = v92;
    result = sub_1B5DF46E0(v50, 1, v92);
    if (result != 1)
    {
      v53 = *(v51 + 48);
      v54 = v77;
      sub_1B5E32A40();
      v55 = *(*v54 + 16);
      sub_1B5E32AE4(v55);
      (*(v38 + 8))(v80, v37);
      v56 = *(v81 + 8);
      v56(v79, v31);
      v57 = *v54;
      *(v57 + 16) = v55 + 1;
      (*(v38 + 32))(v57 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v55, v50 + v53, v37);
      result = (v56)(v50, v31);
LABEL_6:
      *v82 = v90;
      return result;
    }

    __break(1u);
  }

  else
  {
    v58 = v72;
    v88 = v31;
    v89 = v37;
    v59 = v74;
    v60 = v75;
    v61 = v73;
    v62 = v76;
    sub_1B5E2EEAC(v49, v76);
    v63 = v92;
    result = sub_1B5DF46E0(v62, 1, v92);
    if (result != 1)
    {
      v64 = *(v63 + 48);
      sub_1B5EA4E60();
      sub_1B5DF3658(v60, 0, 1, v58);
      v65 = v61;
      sub_1B5EA50A0();
      sub_1B5EA5130();
      sub_1B5E47A4C(&qword_1EB90EBE0, 255, MEMORY[0x1E69A0A68]);
      v66 = swift_allocError();
      sub_1B5EA50D0();
      (*(v59 + 8))(v65, v71);
      v93 = v66;
      v67 = v89;
      sub_1B5EA59A0();
      v68 = *(v38 + 8);
      v68(v80, v67);
      v69 = *(v81 + 8);
      v70 = v88;
      v69(v79, v88);
      v68((v62 + v64), v67);
      result = (v69)(v62, v70);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5E4D620(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v6 = result;
  v7 = 0;
  v8 = *(result + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v7)
    {
      return v9;
    }

    if (v7 >= v8)
    {
      break;
    }

    v10 = sub_1B5EA4E90();
    v12 = *(v10 - 8);
    result = v10 - 8;
    v11 = v12;
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_13;
    }

    result = sub_1B5E4CDFC(v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v7, a2, a3, &v14);
    if (v3)
    {

      return v9;
    }

    ++v7;
    if (v14)
    {
      MEMORY[0x1B8C8A450](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B5EA5860();
      }

      result = sub_1B5EA5880();
      v9 = v15;
      v7 = v13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B5E4D778(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1B5E5AF88();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_1B5E4D7C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_1B5E5AF88(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
    (*(*(v8 - 8) + 16))(a2, v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
    v9 = a2;
    v10 = 1;
  }

  return sub_1B5DF3658(v9, v10, 1, v11);
}

double sub_1B5E4D8BC@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1B5E5AE4C(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1B5E5E268(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1B5E4D934@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1B5E5AE4C(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_1B5E43768();
    v10 = sub_1B5DF33E0(v8, v9);
    sub_1B5DF5EB8(v10);
    (*(v11 + 16))(a2, v7 + *(v11 + 72) * v6, v10);
    v12 = sub_1B5E34D9C();
    v15 = v10;
  }

  else
  {
    v16 = sub_1B5E43768();
    sub_1B5DF33E0(v16, v17);
    sub_1B5DF5DF0();
  }

  return sub_1B5DF3658(v12, v13, v14, v15);
}

uint64_t sub_1B5E4D9F4(uint64_t a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90ED88, &qword_1B5EB7170);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  (*(v3 + 16))(&v12 - v5, a1, v2);
  LODWORD(a1) = (*(v3 + 88))(v6, v2);
  v7 = *MEMORY[0x1E69E8760];
  result = (*(v3 + 8))(v6, v2);
  if (a1 == v7)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_1B5E5441C();
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = result;
      swift_beginAccess();
      sub_1B5E5D1E0();
      swift_endAccess();
    }
  }

  return result;
}

void sub_1B5E4DBBC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B5DFDA5C(*(a2 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData) + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_configuration, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(type metadata accessor for SessionConfigurationXPCEnvelope());
  SessionConfigurationXPCEnvelope.init(sealing:)();
  v9 = v8;
  type metadata accessor for DocumentXPCEnvelope(0);
  v10 = sub_1B5EA5840();
  v11 = sub_1B5EA4310();
  [a1 registerWithConfiguration:v9 documents:v10 requestUUID:v11 delegate:a2];
}

void sub_1B5E4DCD4()
{
  sub_1B5DFD8A8();
  v117 = v0;
  v110 = v1;
  v111 = v2;
  v108 = v3;
  v109 = v4;
  v106 = v5;
  v107 = v6;
  v103 = v7;
  v118 = sub_1B5EA4CC0();
  v8 = sub_1B5DF5DA8(v118);
  v10 = v9;
  v97 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E5FF7C();
  v116 = v12;
  sub_1B5E34DC8();
  v113 = sub_1B5EA4D20();
  v13 = sub_1B5DF5DA8(v113);
  v119 = v14;
  v92 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5E5FF7C();
  v112 = v16;
  v17 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  v18 = sub_1B5E01C50(v17);
  v94 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5E5FB70();
  v105 = v0;
  v22 = sub_1B5EA4820();
  v115 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v104 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1B5EA5470();
  v25 = *(v102 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v85 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(v25 + 16);
  v81 = v25 + 16;
  v80();
  v27 = *(v23 + 16);
  v100 = v23 + 16;
  v101 = v27;
  v27(&v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v106, v22);
  sub_1B5E5EEBC(v107, v0, &qword_1EB90E6A0, &qword_1B5EB60D8);
  v28 = v119;
  v29 = *(v119 + 16);
  v98 = v119 + 16;
  v99 = v29;
  v29(v112, v108, v113);
  v114 = v10;
  v30 = *(v10 + 16);
  v95 = v10 + 16;
  v96 = v30;
  v30(v116, v109, v118);
  v31 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v32 = (v26 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v23 + 80) + v32 + 8) & ~*(v23 + 80);
  v34 = *(v23 + 80);
  v86 = v34;
  v35 = *(v94 + 80);
  v94 = v24 + v35;
  v36 = (v24 + v35 + v33) & ~v35;
  v87 = v35;
  v89 = *(v28 + 80);
  v93 = v21 + v89;
  v37 = (v21 + v89 + v36) & ~v89;
  v90 = *(v10 + 80);
  v92 += v90;
  v38 = (v92 + v37) & ~v90;
  v91 = v34 | v89 | v90 | v35 | 7;
  v88 = v97 + 7;
  v39 = (v97 + 7 + v38) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v25 + 32))(v40 + v31, v85, v102);
  *(v40 + v32) = v117;
  v41 = *(v23 + 32);
  v84 = v23 + 32;
  v85 = v41;
  (v41)(v40 + v33, v104, v115);
  sub_1B5E5EE70(v105, v40 + v36, &qword_1EB90E6A0, &qword_1B5EB60D8);
  v42 = *(v119 + 32);
  v119 += 32;
  v83 = v42;
  v43 = v112;
  v44 = v113;
  v42((v40 + v37), v112, v113);
  v45 = *(v114 + 32);
  v114 += 32;
  v82 = v45;
  v97 = v40;
  v46 = v116;
  v47 = v118;
  v45((v40 + v38), v116, v118);
  v48 = (v40 + v39);
  v49 = v111;
  *v48 = v110;
  v48[1] = v49;
  sub_1B5DF33E0(&qword_1EB90ED50, &qword_1B5EB7130);
  v79 = swift_allocBox();
  sub_1B5DF33E0(&qword_1EB90ED58, &qword_1B5EB7138);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v50, v51, v52, v53);
  sub_1B5DF33E0(&qword_1EB90E938, &qword_1B5EB6690);
  v78 = swift_allocBox();
  v54 = v102;
  (v80)(v55, v103, v102);
  sub_1B5E5F704();
  sub_1B5DF3658(v56, v57, v58, v54);
  sub_1B5DF33E0(&qword_1EB90ED60, &qword_1B5EB7140);
  v103 = swift_allocBox();
  sub_1B5EA46F0();
  v59 = sub_1B5E5F2F8();
  sub_1B5DF3658(v59, v60, v61, v62);
  sub_1B5E5F910();
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v104;
  v101(v104, v106, v115);
  v65 = v105;
  sub_1B5E5EEBC(v107, v105, &qword_1EB90E6A0, &qword_1B5EB60D8);
  v99(v43, v108, v44);
  v96(v46, v109, v47);
  v66 = (v86 + 40) & ~v86;
  v67 = (v94 + v66) & ~v87;
  v68 = (v93 + v67) & ~v89;
  v69 = (v92 + v68) & ~v90;
  v70 = (v88 + v69) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v78;
  *(v71 + 2) = v63;
  *(v71 + 3) = v72;
  *(v71 + 4) = v79;
  (v85)(&v71[v66], v64, v115);
  sub_1B5E5EE70(v65, &v71[v67], &qword_1EB90E6A0, &qword_1B5EB60D8);
  v83(&v71[v68], v112, v113);
  v82(&v71[v69], v116, v118);
  v73 = &v71[v70];
  v74 = v111;
  *v73 = v110;
  *(v73 + 1) = v74;
  *&v71[(v70 + 23) & 0xFFFFFFFFFFFFFFF8] = v103;
  sub_1B5E5F8F8();
  v75 = swift_allocObject();
  *(v75 + 16) = sub_1B5E5E560;
  *(v75 + 24) = v71;
  swift_bridgeObjectRetain_n();
  v76 = v117;
  sub_1B5DFD8C0();
}

uint64_t sub_1B5E4E544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v23;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = sub_1B5EA5450();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();
  v12 = *(*(sub_1B5DF33E0(&qword_1EB90E928, &qword_1B5EB6688) - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v13 = sub_1B5EA5160();
  v8[15] = v13;
  v14 = *(v13 - 8);
  v8[16] = v14;
  v15 = *(v14 + 64) + 15;
  v8[17] = swift_task_alloc();
  v16 = sub_1B5EA5470();
  v8[18] = v16;
  v17 = *(v16 - 8);
  v8[19] = v17;
  v18 = *(v17 + 64) + 15;
  v8[20] = swift_task_alloc();
  v19 = *(*(sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0) - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v20 = *(*(sub_1B5DF33E0(&qword_1EB90E938, &qword_1B5EB6690) - 8) + 64) + 15;
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B5E4E7DC, 0, 0);
}

uint64_t sub_1B5E4E7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  v22 = v18[26];
  v23 = v18[18];
  (*(v18[19] + 16))(v18[30], v18[3], v23);
  sub_1B5E5F704();
  sub_1B5DF3658(v24, v25, v26, v23);
  v18[31] = sub_1B5EA47C0();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v27, v28, v29, v30);
  v18[32] = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData;
  v31 = v18[29];
  v32 = v18[18];
  sub_1B5E5EEBC(v18[30], v31, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E5F280(v31);
  if (!v33)
  {
    v51 = v18[32];
    v52 = v18[17];
    v53 = v18[4];
    (*(v18[19] + 32))(v18[20], v18[29], v18[18]);
    sub_1B5E4A674();
    v18[33] = v54;
    sub_1B5E49FF8();
    v18[34] = v55;
    sub_1B5E4A834();
    sub_1B5E5F624();
    sub_1B5E5F400();

    return MEMORY[0x1EEE6DFA0](v56, v57, v58);
  }

  v34 = v18[31];
  v36 = v18[25];
  v35 = v18[26];
  sub_1B5DF4428(v18[29], &qword_1EB90E938, &qword_1B5EB6690);
  v37 = sub_1B5E5F318();
  sub_1B5E5EEBC(v37, v38, v39, v40);
  v56 = sub_1B5E5F20C(v36);
  if (v33)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v56, v57, v58);
  }

  sub_1B5E5F650();
  sub_1B5DF4428(v19, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5DF4428(v35, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E2D1D8(v34);
  (*(v41 + 32))(v20, v21, v34);

  sub_1B5E5F1D8();
  sub_1B5E5F400();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1B5E4EA40()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 280);
  v2 = *(v0 + 224);
  v3 = *(v0 + 160);
  v4 = *(v0 + 112);
  sub_1B5E2E05C();
  *(v0 + 288) = v5;
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v0 + 296) = v6;
  *v6 = v7;
  v6[1] = sub_1B5E4EB14;
  v9 = *(v0 + 264);
  v8 = *(v0 + 272);
  v10 = *(v0 + 224);
  v11 = *(v0 + 192);
  v12 = *(v0 + 136);
  v13 = *(v0 + 112);
  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v20 = *(v0 + 80);
  v18 = *(v0 + 48);
  v19 = *(v0 + 64);

  return sub_1B5E51F34();
}

uint64_t sub_1B5E4EB14()
{
  sub_1B5E2CED8();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 296);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[38] = v0;

  if (v0)
  {
    v9 = v3[36];
    v10 = v3[33];
    v11 = v3[34];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B5E4EC30()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[20];
  v4 = sub_1B5E5F758();
  sub_1B5DF4428(v4, v5, &unk_1B5EB6EB0);
  v6 = sub_1B5E5F318();
  sub_1B5E5EE70(v6, v7, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  result = sub_1B5EA5460();
  v0[39] = result;
  v9 = *(result + 16);
  v0[40] = v9;
  v0[41] = 0;
  if (v9)
  {
    if (*(result + 16))
    {
      v10 = v0[31];
      v11 = v0[23];
      v12 = v0[12];
      v13 = v0[11];
      v14 = sub_1B5E5FAEC(v0[13]);
      v15(v14);
      sub_1B5DF5DF0();
      sub_1B5DF3658(v16, v17, v18, v10);
      v19 = swift_task_alloc();
      v0[42] = v19;
      *v19 = v0;
      sub_1B5E5F378(v19);
      sub_1B5E5FEF8();

      return sub_1B5E2E434();
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v21 = v0[31];
  v22 = v0[26];
  v23 = v0[22];

  v24 = sub_1B5E5F318();
  sub_1B5E5EEBC(v24, v25, v26, v27);
  result = sub_1B5E5F20C(v23);
  if (v28)
  {
    goto LABEL_11;
  }

  v29 = swift_task_alloc();
  v0[44] = v29;
  *v29 = v0;
  sub_1B5E5F468(v29);
  sub_1B5E5FEF8();

  return sub_1B5E5795C();
}

uint64_t sub_1B5E4EDB0()
{
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[43] = v0;

  if (v0)
  {
    v9 = v3[39];
    v10 = v3[36];
    v12 = v3[33];
    v11 = v3[34];
    v13 = v3[23];
    v15 = v3[12];
    v14 = v3[13];
    v16 = v3[11];

    (*(v15 + 8))(v14, v16);
    sub_1B5DF4428(v13, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  }

  else
  {
    v17 = v3[23];
    (*(v3[12] + 8))(v3[13], v3[11]);
    sub_1B5DF4428(v17, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1B5E4EF5C()
{
  sub_1B5E2CED8();
  v1 = v0[40];
  v2 = v0[41] + 1;
  v0[41] = v2;
  result = v0[39];
  if (v2 == v1)
  {
    v4 = v0[31];
    v5 = v0[26];
    v6 = v0[22];

    v7 = sub_1B5E5F318();
    sub_1B5E5EEBC(v7, v8, v9, v10);
    result = sub_1B5E5F20C(v6);
    if (!v11)
    {
      v12 = swift_task_alloc();
      v0[44] = v12;
      *v12 = v0;
      sub_1B5E5F468(v12);

      return sub_1B5E5795C();
    }

LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 >= *(result + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v0[31];
  v14 = v0[23];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[11];
  sub_1B5E5FEE4();
  v23(v22, v18 + v19 + *(v20 + 56) * v21);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v24, v25, v26, v13);
  v27 = swift_task_alloc();
  v0[42] = v27;
  *v27 = v0;
  sub_1B5E5F378();

  return sub_1B5E2E434();
}

uint64_t sub_1B5E4F0BC()
{
  sub_1B5E2CED8();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[45] = v0;

  if (v0)
  {
    v9 = v3[36];
    v10 = v3[33];
    v11 = v3[34];
  }

  else
  {
    v12 = v3[22];
    sub_1B5E2D1D8(v3[31]);
    v14 = *(v13 + 8);
    v3[46] = v14;
    v3[47] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14();
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1B5E4F210()
{
  sub_1B5E01DFC();
  v1 = v0[31];
  v2 = v0[21];
  sub_1B5E5EEBC(v0[26], v2, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  result = sub_1B5E5F20C(v2);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[36];
    v6 = v0[34];

    swift_task_alloc();
    sub_1B5E34EEC();
    v0[48] = v7;
    *v7 = v8;
    v7[1] = sub_1B5E4F2F0;
    v9 = v0[33];
    v10 = v0[27];
    v11 = v0[21];
    v12 = v0[4];

    return sub_1B5E54698();
  }

  return result;
}

uint64_t sub_1B5E4F2F0()
{
  sub_1B5E2CED8();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[49] = v0;

  if (v0)
  {
    v9 = v3[33];
  }

  else
  {
    v11 = v3[46];
    v10 = v3[47];
    v12 = v3[33];
    v13 = v3[31];
    v14 = v3[21];

    v15 = sub_1B5DFA488();
    v11(v15);
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1B5E4F414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  v19 = v18[30];
  v20 = v18[28];
  v21 = v18[19];
  v69 = v18[20];
  v70 = v18[27];
  v23 = v18[17];
  v22 = v18[18];
  v25 = v18[15];
  v24 = v18[16];
  sub_1B5DF4428(v18[14], &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5DF4428(v20, &qword_1EB90E938, &qword_1B5EB6690);
  v26 = *(v24 + 8);
  v27 = sub_1B5E5F508();
  v28(v27);
  (*(v21 + 8))(v69, v22);
  sub_1B5DF4428(v19, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E5FBA4();
  sub_1B5E5EE70(v29, v30, v31, &qword_1B5EB6690);
  v33 = v18[29];
  v32 = v18[30];
  v34 = v18[18];
  sub_1B5E5FBA4();
  sub_1B5E5EEBC(v35, v36, v37, &qword_1B5EB6690);
  v38 = sub_1B5E5F8E0();
  v40 = sub_1B5DF46E0(v38, v39, v34);
  v41 = v18[29];
  if (v40 != 1)
  {
    v63 = v18[32];
    v64 = v18[17];
    v65 = v18[4];
    (*(v18[19] + 32))(v18[20], v18[29], v18[18]);
    sub_1B5E4A674();
    v18[33] = v66;
    sub_1B5E49FF8();
    v18[34] = v67;
    sub_1B5E4A834();
    sub_1B5E5F624();
    sub_1B5E5F400();

    return MEMORY[0x1EEE6DFA0](v49, v50, v51);
  }

  v42 = v18[31];
  v44 = v18[25];
  v43 = v18[26];
  sub_1B5DF4428(v18[29], &qword_1EB90E938, &qword_1B5EB6690);
  v45 = sub_1B5E5F318();
  sub_1B5E5EEBC(v45, v46, v47, v48);
  v49 = sub_1B5E5F20C(v44);
  if (v52)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v49, v50, v51);
  }

  sub_1B5E5F650();
  sub_1B5DF4428(v23, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5DF4428(v43, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E2D1D8(v42);
  (*(v53 + 32))(v25, &qword_1B5EB6690, v42);

  sub_1B5E5F1D8();
  sub_1B5E5F400();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, v69, v70, a16, a17, a18);
}

uint64_t sub_1B5E4F6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  v21 = sub_1B5E5FA28();
  sub_1B5DF4428(v21, &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5DF4428(v16, &qword_1EB90E938, &qword_1B5EB6690);
  v22 = *(v20 + 8);
  v23 = sub_1B5E5F508();
  v24(v23);
  v25 = *(v19 + 8);
  v26 = sub_1B5E5FA54();
  v27(v26);
  sub_1B5DF4428(v17, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  v28 = sub_1B5E5F324();
  sub_1B5DF4428(v28, v29, &qword_1B5EB6690);
  v30 = *(v18 + 304);
  sub_1B5E5F0BC();

  sub_1B5E2CF4C();
  sub_1B5E2D0AC();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B5E4F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  v21 = sub_1B5E5FA28();
  sub_1B5DF4428(v21, &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5DF4428(v16, &qword_1EB90E938, &qword_1B5EB6690);
  v22 = *(v20 + 8);
  v23 = sub_1B5E5F508();
  v24(v23);
  v25 = *(v19 + 8);
  v26 = sub_1B5E5FA54();
  v27(v26);
  sub_1B5DF4428(v17, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  v28 = sub_1B5E5F324();
  sub_1B5DF4428(v28, v29, &qword_1B5EB6690);
  v30 = *(v18 + 344);
  sub_1B5E5F0BC();

  sub_1B5E2CF4C();
  sub_1B5E2D0AC();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1B5E4F954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  v17 = v16[31];
  v18 = v16[28];
  v19 = v16[26];
  v43 = v16[30];
  v44 = v16[22];
  v20 = v16[19];
  v21 = v16[20];
  v23 = v16[17];
  v22 = v16[18];
  v25 = v16[15];
  v24 = v16[16];
  sub_1B5DF4428(v16[14], &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5DF4428(v18, &qword_1EB90E938, &qword_1B5EB6690);
  v26 = *(v24 + 8);
  v27 = sub_1B5E5FB14();
  v28(v27);
  v29 = *(v20 + 8);
  v30 = sub_1B5E5F508();
  v31(v30);
  sub_1B5DF4428(v19, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5DF4428(v43, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E2D1D8(v17);
  (*(v32 + 8))(v44, v17);
  v33 = v16[45];
  sub_1B5E5F0BC();

  sub_1B5E2CF4C();
  sub_1B5E2D0AC();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, v43, v44, a14, a15, a16);
}

uint64_t sub_1B5E4FAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  v47 = v16[46];
  v48 = v16[47];
  v44 = v16[30];
  v17 = v16[28];
  v18 = v16[26];
  v19 = v16[20];
  v45 = v16[21];
  v46 = v16[31];
  v21 = v16[18];
  v20 = v16[19];
  v22 = v16[16];
  v23 = v16[17];
  v24 = v16[15];
  sub_1B5DF4428(v16[14], &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5DF4428(v17, &qword_1EB90E938, &qword_1B5EB6690);
  v25 = *(v22 + 8);
  v26 = sub_1B5E5FB14();
  v27(v26);
  v28 = *(v20 + 8);
  v29 = sub_1B5E5F508();
  v30(v29);
  sub_1B5DF4428(v18, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E5FA60();
  sub_1B5DF4428(v31, v32, v33);
  v47(v45, v46);
  v34 = v16[49];
  sub_1B5E5F0BC();

  sub_1B5E2CF4C();
  sub_1B5E2D0AC();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, v46, v47, v48, a14, a15, a16);
}

uint64_t sub_1B5E4FC78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v48 = a7;
  v49 = a8;
  v44 = a6;
  v45 = a2;
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v55 = a1;
  v46 = a9;
  v47 = a10;
  v54 = sub_1B5EA4CC0();
  v52 = *(v54 - 8);
  v43 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1B5EA4D20();
  v11 = *(v51 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  v39 = *(v13 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - v15;
  v37 = &v34 - v15;
  v17 = sub_1B5EA4820();
  v36 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v18 + 16))(v20, v40, v17);
  sub_1B5E5EEBC(v41, v16, &qword_1EB90E6A0, &qword_1B5EB60D8);
  v35 = v11;
  (*(v11 + 16))(v50, v42, v51);
  v22 = v52;
  (*(v52 + 16))(v53, v44, v54);
  v23 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v24 = (v19 + *(v39 + 80) + v23) & ~*(v39 + 80);
  v25 = (v14 + *(v11 + 80) + v24) & ~*(v11 + 80);
  v26 = (v12 + *(v22 + 80) + v25) & ~*(v22 + 80);
  v27 = (v43 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v55;
  *(v28 + 2) = v38;
  *(v28 + 3) = v29;
  *(v28 + 4) = v45;
  (*(v18 + 32))(&v28[v23], v20, v36);
  sub_1B5E5EE70(v37, &v28[v24], &qword_1EB90E6A0, &qword_1B5EB60D8);
  (*(v35 + 32))(&v28[v25], v50, v51);
  (*(v52 + 32))(&v28[v26], v53, v54);
  v30 = &v28[v27];
  v31 = v47;
  v32 = v46;
  *v30 = v48;
  *(v30 + 1) = v32;
  *&v28[(v27 + 23) & 0xFFFFFFFFFFFFFFF8] = v31;

  sub_1B5DF33E0(&qword_1EB90EC90, &qword_1B5EB7080);
  return sub_1B5EA59D0();
}

uint64_t sub_1B5E5011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = v34;
  v8[58] = v35;
  v8[55] = a7;
  v8[56] = a8;
  v8[53] = a5;
  v8[54] = a6;
  v8[51] = a1;
  v8[52] = a2;
  v9 = sub_1B5EA47C0();
  v8[59] = v9;
  v10 = *(v9 - 8);
  v8[60] = v10;
  v11 = *(v10 + 64) + 15;
  v8[61] = swift_task_alloc();
  v12 = *(*(sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0) - 8) + 64) + 15;
  v8[62] = swift_task_alloc();
  v13 = sub_1B5EA5450();
  v8[63] = v13;
  v14 = *(v13 - 8);
  v8[64] = v14;
  v15 = *(v14 + 64) + 15;
  v8[65] = swift_task_alloc();
  v16 = *(*(sub_1B5DF33E0(&qword_1EB90ED60, &qword_1B5EB7140) - 8) + 64) + 15;
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v17 = sub_1B5DF33E0(&qword_1EB90ED68, &qword_1B5EB7148);
  v8[68] = v17;
  v18 = *(v17 - 8);
  v8[69] = v18;
  v19 = *(v18 + 64) + 15;
  v8[70] = swift_task_alloc();
  v20 = *(*(sub_1B5DF33E0(&qword_1EB90E928, &qword_1B5EB6688) - 8) + 64) + 15;
  v8[71] = swift_task_alloc();
  v21 = sub_1B5EA5160();
  v8[72] = v21;
  v22 = *(v21 - 8);
  v8[73] = v22;
  v23 = *(v22 + 64) + 15;
  v8[74] = swift_task_alloc();
  v24 = *(*(sub_1B5DF33E0(&qword_1EB90ED50, &qword_1B5EB7130) - 8) + 64) + 15;
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  v25 = *(*(sub_1B5DF33E0(&qword_1EB90E938, &qword_1B5EB6690) - 8) + 64) + 15;
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();
  v8[81] = swift_task_alloc();
  v26 = sub_1B5EA5470();
  v8[82] = v26;
  v27 = *(v26 - 8);
  v8[83] = v27;
  v28 = *(v27 + 64) + 15;
  v8[84] = swift_task_alloc();
  v29 = sub_1B5EA53B0();
  v8[85] = v29;
  v30 = *(v29 - 8);
  v8[86] = v30;
  v31 = *(v30 + 64) + 15;
  v8[87] = swift_task_alloc();
  v8[88] = swift_projectBox();
  v8[89] = swift_projectBox();
  v8[90] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1B5E50560, 0, 0);
}

uint64_t sub_1B5E50560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5E5FA98();
  sub_1B5E5FC6C();
  v22 = *(v20 + 416);
  sub_1B5E2D094();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v20 + 728) = Strong;
  if (!Strong)
  {
    if (qword_1EB90CE80 != -1)
    {
      Strong = sub_1B5E5EF54();
    }

    v35 = *(v20 + 696);
    v36 = *(v20 + 688);
    v37 = *(v20 + 680);
    sub_1B5E5F41C(Strong, qword_1EB90CE88);
    sub_1B5E2D094();
    v38 = sub_1B5E5F1F8();
    v39(v38);
    v40 = sub_1B5EA5380();
    sub_1B5EA5A40();
    sub_1B5E5FA8C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = sub_1B5E34E60();
      sub_1B5E34EA8(v42);
      sub_1B5E34F28(&dword_1B5DED000, v43, v44, "Provider has been destroyed, can't complete request");
      sub_1B5E34DF0();
    }

    v45 = *(v20 + 696);
    v46 = *(v20 + 688);
    v47 = *(v20 + 680);

    v48 = *(v46 + 8);
    v49 = sub_1B5E5F318();
    v50(v49);
    sub_1B5EA5130();
    sub_1B5E5EF3C();
    sub_1B5E47A4C(v51, 255, v52);
    v102 = sub_1B5E5F23C();
    sub_1B5EA50C0();
    swift_willThrow();
    v53 = *(v20 + 696);
    v54 = *(v20 + 672);
    v55 = *(v20 + 648);
    v56 = *(v20 + 640);
    v57 = *(v20 + 632);
    v58 = *(v20 + 624);
    v59 = *(v20 + 616);
    v60 = *(v20 + 608);
    v61 = *(v20 + 600);
    v62 = *(v20 + 592);
    v63 = *(v20 + 568);
    v64 = *(v20 + 560);
    sub_1B5E5F2C8();

    sub_1B5E2CF4C();
    goto LABEL_9;
  }

  v24 = *(v20 + 720);
  v25 = *(v20 + 712);
  v26 = *(v20 + 704);
  *(v20 + 736) = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData;
  sub_1B5E2D094();
  sub_1B5E2D094();
  sub_1B5E2D240();
  sub_1B5E2D094();
  sub_1B5E2D240();
  sub_1B5E2D094();
  sub_1B5E2D094();
  sub_1B5E2D240();
  sub_1B5E2D240();
  v27 = *(v20 + 656);
  v28 = *(v20 + 648);
  sub_1B5E5EEBC(*(v20 + 704), v28, &qword_1EB90E938, &qword_1B5EB6690);
  v29 = sub_1B5E5F58C();
  if (sub_1B5DF46E0(v29, v30, v27) == 1)
  {
    v31 = *(v20 + 648);
    v32 = *(v20 + 408);

    sub_1B5DF4428(v31, &qword_1EB90E938, &qword_1B5EB6690);
    *v32 = 0u;
    *(v32 + 16) = 0u;
    *(v32 + 32) = 0;
    sub_1B5E5F174();
    a10 = v34;
    a11 = v33;
    a12 = *(v20 + 536);
    a13 = *(v20 + 528);
    a14 = *(v20 + 520);
    a15 = *(v20 + 496);
    v102 = *(v20 + 488);

    sub_1B5E5F1D8();
LABEL_9:
    sub_1B5E5F8B8();

    return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, v102, a17, a18, a19, a20);
  }

  v74 = sub_1B5E5F9FC();
  v75(v74);
  sub_1B5E4A674();
  *(v20 + 744) = v76;
  v77 = sub_1B5E5F318();
  sub_1B5E5EEBC(v77, v78, &qword_1EB90ED50, &qword_1B5EB7130);
  *(v20 + 752) = sub_1B5DF33E0(&qword_1EB90ED58, &qword_1B5EB7138);
  v79 = sub_1B5E5F644();
  sub_1B5DF46E0(v79, v80, v81);
  sub_1B5E6015C();
  if (v28 != 1)
  {
    sub_1B5E5F2A0();
    v86 = sub_1B5E5F20C(v28);
    if (!v94)
    {
      v99 = *(MEMORY[0x1E69E87B0] + 4);
      swift_task_alloc();
      sub_1B5E34EEC();
      *(v20 + 840) = v100;
      *v100 = v101;
      sub_1B5E5F000(v100);
      sub_1B5E5F8B8();

      return MEMORY[0x1EEE6DB98](v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

LABEL_22:
    __break(1u);
    return MEMORY[0x1EEE6DB98](v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  sub_1B5E5FD08();
  *(v20 + 768) = *(&qword_1EB90ED50 + v21);
  v82 = sub_1B5E5FBCC();
  sub_1B5E5EEBC(v82, v83, v84, v85);
  v86 = sub_1B5E5F5A8(&qword_1B5EB7130, 1, v26);
  if (v94)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_1B5E5F8B8();

  return MEMORY[0x1EEE6DFA0](v95, v96, v97);
}

uint64_t sub_1B5E50A70()
{
  sub_1B5E2CED8();
  v1 = v0[96];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[71];
  sub_1B5E2E05C();
  v0[97] = v7;
  v0[98] = *(v2 + 8);
  v0[99] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = sub_1B5E5F940();
  v9(v8);
  v10 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E50B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  v19 = *(v18 + 776);
  v20 = *(v18 + 760);
  v21 = *(v18 + 752);
  v22 = *(v18 + 744);
  v23 = *(v18 + 728);
  v76 = *(v18 + 712);
  v77 = *(v18 + 720);
  v78 = *(v18 + 672);
  v24 = *(v18 + 640);
  v25 = *(v18 + 600);
  v26 = *(v18 + 592);
  v27 = *(v18 + 568);
  v28 = *(v18 + 560);
  v29 = *(v18 + 552);
  v30 = *(v18 + 544);
  v31 = *(v18 + 536);
  v32 = *(v18 + 424);
  v33 = *(v18 + 432);
  v74 = *(v18 + 456);
  v75 = *(v18 + 464);
  v73 = *(v18 + 440);
  sub_1B5E52DC8();

  sub_1B5EA59B0();
  v34 = sub_1B5E5F308();
  v35(v34);
  sub_1B5E5F704();
  sub_1B5DF3658(v36, v37, v38, v21);
  sub_1B5E5EC7C(v25, v76, &qword_1EB90ED50, &qword_1B5EB7130);
  sub_1B5EA46E0();
  sub_1B5EA46F0();
  sub_1B5E5F704();
  sub_1B5DF3658(v39, v40, v41, v42);
  sub_1B5E5EC7C(v31, v77, &qword_1EB90ED60, &qword_1B5EB7140);
  v43 = sub_1B5EA5460();
  *(v18 + 800) = v43;
  v51 = *(v43 + 16);
  *(v18 + 808) = v51;
  *(v18 + 816) = 0;
  if (!v51)
  {
    sub_1B5E5FE50();
    sub_1B5DF4428(v31, &qword_1EB90E928, &qword_1B5EB6688);
    sub_1B5DF4428(v78, &qword_1EB90E938, &qword_1B5EB6690);
    v67 = sub_1B5E5F308();
    v68(v67);
    sub_1B5E5F2A0();
    v43 = sub_1B5E5F20C(v28);
    if (!v69)
    {
      v70 = *(MEMORY[0x1E69E87B0] + 4);
      swift_task_alloc();
      sub_1B5E34EEC();
      *(v18 + 840) = v71;
      *v71 = v72;
      sub_1B5E5F000(v71);
      sub_1B5E5F400();

      return MEMORY[0x1EEE6DB98](v43, v44, v45, v46, v47, v48, v49, v50, v73, *(&v73 + 1), v74, v75, v76, v77, v78, a16, a17, a18);
    }

LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DB98](v43, v44, v45, v46, v47, v48, v49, v50, v73, *(&v73 + 1), v74, v75, v76, v77, v78, a16, a17, a18);
  }

  if (!*(v43 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v52 = *(v18 + 736);
  v53 = *(v18 + 728);
  v54 = *(v18 + 504);
  v55 = *(v18 + 512);
  v56 = *(v18 + 496);
  v57 = *(v18 + 472);
  v58 = sub_1B5E5FAEC(*(v18 + 520));
  v59(v58);
  v60 = *(v53 + v52);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v61, v62, v63, v57);
  v64 = swift_task_alloc();
  *(v18 + 824) = v64;
  *v64 = v18;
  sub_1B5E5F438(v64);
  sub_1B5E5F400();

  return sub_1B5E2E434();
}

uint64_t sub_1B5E50D9C()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 824);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[104] = v0;

  if (v0)
  {
    v9 = v3[100];
    v10 = v3[93];
    v11 = v3[65];
    v12 = v3[63];
    v13 = v3[64];
    v14 = v3[62];

    v15 = *(v13 + 8);
    v16 = sub_1B5E5F758();
    v17(v16);
    sub_1B5DF4428(v14, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  }

  else
  {
    v18 = v3[62];
    (*(v3[64] + 8))(v3[65], v3[63]);
    sub_1B5DF4428(v18, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  }

  sub_1B5E5F8EC();
  sub_1B5E5FEF8();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1B5E50F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E60190();
  v60 = v23;
  sub_1B5E34EC0();
  v32 = v20[102] + 1;
  v20[102] = v32;
  if (v32 == v20[101])
  {
    v33 = v20[100];
    sub_1B5E5FE50();
    sub_1B5DF4428(v21, &qword_1EB90E928, &qword_1B5EB6688);
    sub_1B5DF4428(v19, &qword_1EB90E938, &qword_1B5EB6690);
    v34 = sub_1B5E5F308();
    v35(v34);
    sub_1B5E5F2A0();
    v24 = sub_1B5E5F20C(v18);
    if (!v36)
    {
      v37 = *(MEMORY[0x1E69E87B0] + 4);
      swift_task_alloc();
      sub_1B5E34EEC();
      v20[105] = v38;
      *v38 = v39;
      sub_1B5E5F000(v38);
      sub_1B5E5FEF8();

      return MEMORY[0x1EEE6DB98](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, v20, v22, v60, a17, a18);
    }

LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DB98](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, v20, v22, v60, a17, a18);
  }

  if (v32 >= *(v20[100] + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v40 = v20[92];
  v41 = v20[91];
  v42 = v20[65];
  v43 = v20[63];
  v44 = v20[64];
  v45 = v20[62];
  v46 = v20[59];
  sub_1B5E5FEE4();
  v51 = v47 + v48 + *(v49 + 56) * v50;
  v52();
  v53 = *(v41 + v40);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v54, v55, v56, v46);
  v57 = swift_task_alloc();
  v20[103] = v57;
  *v57 = v20;
  sub_1B5E5F438();
  sub_1B5E5FEF8();

  return sub_1B5E2E434();
}

uint64_t sub_1B5E510B0()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 840);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  *(v3 + 848) = v0;

  if (!v0)
  {
    swift_endAccess();
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E511B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  if (*(v18 + 80))
  {
    v19 = *(v18 + 720);
    sub_1B5DF17A8((v18 + 56), v18 + 16);
    sub_1B5E34E78();
    sub_1B5EA46F0();
    v20 = sub_1B5E5F8E0();
    result = sub_1B5E5F5A8(v20, v21, v22);
    if (!v24)
    {
      v25 = *(v18 + 744);
      v26 = *(v18 + 728);
      v27 = *(v18 + 720);
      v28 = *(v18 + 672);
      v29 = *(v18 + 664);
      v30 = *(v18 + 656);
      v31 = *(v18 + 408);
      sub_1B5EA46D0();
      swift_endAccess();

      v32 = *(v29 + 8);
      v33 = sub_1B5E5F758();
      v34(v33);
      sub_1B5DF17A8((v18 + 16), v31);
      sub_1B5E5F174();
      sub_1B5E5F2C8();

      sub_1B5E5F1D8();
      sub_1B5E5F400();

      return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v43 = *(v18 + 752);
  v44 = *(v18 + 720);
  v45 = *(v18 + 712);
  v46 = *(v18 + 600);
  v47 = *(v18 + 528);
  sub_1B5DF4428(v18 + 56, &qword_1EB90ED78, &qword_1B5EB7160);
  v48 = sub_1B5E5F2F8();
  sub_1B5DF3658(v48, v49, v50, v43);
  sub_1B5E5EC7C(v46, v45, &qword_1EB90ED50, &qword_1B5EB7130);
  v51 = sub_1B5E5F8D4();
  sub_1B5E5EEBC(v51, v52, v53, v54);
  v55 = sub_1B5EA46F0();
  result = sub_1B5E5F280(v47);
  if (v24)
  {
    goto LABEL_11;
  }

  v56 = *(v18 + 528);
  v57 = *(v18 + 488);
  sub_1B5EA46C0();
  sub_1B5E2D1D8(v55);
  v59 = *(v58 + 8);
  v60 = sub_1B5E5F324();
  v61(v60);
  v62 = swift_task_alloc();
  *(v18 + 856) = v62;
  *v62 = v18;
  v62[1] = sub_1B5E51454;
  v63 = *(v18 + 728);
  sub_1B5E5F780(*(v18 + 488));
  sub_1B5E5F400();

  return sub_1B5E5795C();
}

uint64_t sub_1B5E51454()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 856);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[108] = v0;

  if (v0)
  {
    v9 = v3[93];

    v10 = sub_1B5E2CE58();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    swift_task_alloc();
    sub_1B5E34EEC();
    v3[109] = v13;
    *v13 = v14;
    v13[1] = sub_1B5E515B4;
    v15 = v3[93];
    v16 = v3[91];
    v17 = v3[78];
    v18 = v3[61];

    return sub_1B5E54698();
  }
}

uint64_t sub_1B5E515B4()
{
  sub_1B5E2CED8();
  v2 = *v1;
  sub_1B5E2CE48();
  *v4 = v3;
  v5 = *(v2 + 872);
  *v4 = *v1;
  *(v3 + 880) = v0;

  v6 = *(v2 + 744);

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E516D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  v19 = *(v18 + 704);
  v20 = *(v18 + 672);
  v21 = *(v18 + 664);
  v22 = *(v18 + 656);
  v23 = *(v18 + 624);
  v24 = *(v18 + 616);
  (*(*(v18 + 480) + 8))(*(v18 + 488), *(v18 + 472));
  v25 = *(v21 + 8);
  v26 = sub_1B5E5F318();
  v27(v26);
  sub_1B5E5FB98();
  sub_1B5E5EC7C(v28, v29, v30, &qword_1B5EB6690);
  v31 = sub_1B5E5F78C();
  sub_1B5E5EEBC(v31, v32, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E5F5A8(v24, 1, v22);
  if (v40)
  {
    v33 = (v18 + 616);
  }

  else
  {
    v34 = *(v18 + 616);
    sub_1B5E5FB98();
    sub_1B5DF4428(v35, v36, v37);
    v38 = *(v18 + 656);
    v39 = *(v18 + 648);
    sub_1B5E5EEBC(*(v18 + 704), v39, &qword_1EB90E938, &qword_1B5EB6690);
    sub_1B5E5F5A8(v39, 1, v38);
    if (!v40)
    {
      v52 = *(v18 + 728);
      v53 = sub_1B5E5F9FC();
      v54(v53);
      sub_1B5E4A674();
      *(v18 + 744) = v55;
      v56 = sub_1B5E5F318();
      sub_1B5E5EEBC(v56, v57, &qword_1EB90ED50, &qword_1B5EB7130);
      *(v18 + 752) = sub_1B5DF33E0(&qword_1EB90ED58, &qword_1B5EB7138);
      v58 = sub_1B5E5F644();
      sub_1B5DF46E0(v58, v59, v60);
      sub_1B5E6015C();
      if (&qword_1B5EB6690 == 1)
      {
        sub_1B5E5FD08();
        *(v18 + 768) = *(&qword_1EB90ED50 + &qword_1B5EB6690);
        v61 = sub_1B5E5FBCC();
        sub_1B5E5EEBC(v61, v62, v63, v64);
        v65 = sub_1B5E5F5A8(&qword_1B5EB7130, 1, v38);
        if (!v40)
        {
          sub_1B5E5F400();

          return MEMORY[0x1EEE6DFA0](v73, v74, v75);
        }

        __break(1u);
      }

      else
      {
        sub_1B5E5F2A0();
        v65 = sub_1B5E5F20C(&qword_1B5EB6690);
        if (!v40)
        {
          v77 = *(MEMORY[0x1E69E87B0] + 4);
          swift_task_alloc();
          sub_1B5E34EEC();
          *(v18 + 840) = v78;
          *v78 = v79;
          sub_1B5E5F000();
          sub_1B5E5F400();

          return MEMORY[0x1EEE6DB98](v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DB98](v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    v33 = (v18 + 648);
  }

  v41 = *v33;
  v42 = *(v18 + 408);

  sub_1B5DF4428(v41, &qword_1EB90E938, &qword_1B5EB6690);
  *v42 = 0u;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0;
  sub_1B5E5F174();
  sub_1B5E5F2C8();

  sub_1B5E5F1D8();
  sub_1B5E5F400();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1B5E51A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5E5FA98();
  sub_1B5E5FC6C();
  v21 = *(v20 + 792);
  v22 = *(v20 + 784);
  v23 = *(v20 + 672);
  v24 = *(v20 + 656);
  v25 = *(v20 + 640);
  v26 = *(v20 + 592);
  v27 = *(v20 + 584);
  v28 = *(v20 + 576);
  v29 = *(v20 + 568);

  sub_1B5DF4428(v29, &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5DF4428(v25, &qword_1EB90E938, &qword_1B5EB6690);
  v30 = *(v27 + 8);
  v31 = sub_1B5E5FA54();
  v32(v31);
  v33 = sub_1B5E5F324();
  v22(v33);
  v34 = *(v20 + 832);
  sub_1B5E5F030();

  sub_1B5E2CF4C();
  sub_1B5E5F8B8();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1B5E51B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5E5FA98();
  sub_1B5E5FC6C();
  v21 = v20[93];
  v22 = v20[91];
  v23 = v20[84];
  v24 = v20[83];
  v25 = v20[82];
  swift_endAccess();

  v26 = sub_1B5E5F308();
  v27(v26);
  v28 = v20[106];
  sub_1B5E5F030();

  sub_1B5E2CF4C();
  sub_1B5E5F8B8();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1B5E51C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5E5FA98();
  sub_1B5E5FC6C();
  sub_1B5E5FC14();
  v23 = *(v22 + 8);
  v24 = sub_1B5E5F758();
  v25(v24);
  v26 = *(v21 + 8);
  v27 = sub_1B5E5F324();
  v28(v27);
  v29 = *(v20 + 864);
  sub_1B5E5F030();

  sub_1B5E2CF4C();
  sub_1B5E5F8B8();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1B5E51D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5E5FA98();
  sub_1B5E5FC6C();
  sub_1B5E5FC14();
  v23 = *(v22 + 8);
  v24 = sub_1B5E5F758();
  v25(v24);
  v26 = *(v21 + 8);
  v27 = sub_1B5E5F324();
  v28(v27);
  v29 = *(v20 + 880);
  sub_1B5E5F030();

  sub_1B5E2CF4C();
  sub_1B5E5F8B8();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1B5E51EAC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = sub_1B5DF33E0(&qword_1EB90ED68, &qword_1B5EB7148);
  sub_1B5E5EFE8();
  a2[4] = sub_1B5E5ECD0(v4, &qword_1EB90ED68, &qword_1B5EB7148);
  sub_1B5E5E724(a2);
  return a1();
}

uint64_t sub_1B5E51F34()
{
  sub_1B5E01DFC();
  *(v1 + 112) = v21;
  *(v1 + 120) = v0;
  *(v1 + 80) = v19;
  *(v1 + 96) = v20;
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = sub_1B5EA4340();
  *(v1 + 128) = v10;
  sub_1B5E01C50(v10);
  *(v1 + 136) = v11;
  v13 = *(v12 + 64);
  *(v1 + 144) = sub_1B5E2D0C8();
  v14 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1B5E51FF8()
{
  sub_1B5E5F904();
  v1 = *(v0 + 144);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 40);
  v11 = *(v0 + 24);
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);
  v14 = *(v0 + 96);
  v10 = *(v0 + 80);
  sub_1B5EA4330();
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v11;
  *(v5 + 48) = v4;
  *(v5 + 56) = v13;
  *(v5 + 72) = v12;
  *(v5 + 88) = v10;
  *(v5 + 104) = v14;
  *(v5 + 120) = v3;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  *v7 = v0;
  v7[1] = sub_1B5E5215C;
  v8 = *(v0 + 16);
  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B5E5215C()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  *(v3 + 168) = v0;

  if (!v0)
  {
    v9 = *(v3 + 152);
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E5225C()
{
  sub_1B5E01DFC();
  (*(v0[17] + 8))(v0[18], v0[16]);

  sub_1B5E5F1D8();

  return v1();
}

uint64_t sub_1B5E522D0()
{
  sub_1B5E2CED8();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];

  v5 = *(v4 + 8);
  v6 = sub_1B5E5F324();
  v7(v6);

  sub_1B5E2CF4C();
  v9 = v0[21];

  return v8();
}

void sub_1B5E52354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v85 = a8;
  v83 = a7;
  v81 = a6;
  v79 = a5;
  v77 = a4;
  v93 = a1;
  v84 = a15;
  v82 = a14;
  v80 = a13;
  v78 = a12;
  v76 = a11;
  v75 = a10;
  v74 = a9;
  v17 = sub_1B5DF33E0(&qword_1EB90EC30, &qword_1B5EB6EA8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v67[-v19];
  v21 = sub_1B5EA4340();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v92 = &v67[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v71 = &v67[-v26];
  v87 = sub_1B5EA53B0();
  v91 = *(v87 - 8);
  v27 = *(v91 + 64);
  v28 = MEMORY[0x1EEE9AC00](v87);
  v88 = &v67[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v73 = &v67[-v30];
  v31 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v67[-v33];
  v35 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v67[-v38];
  v40 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests;
  swift_beginAccess();
  v41 = *(a2 + v40);

  v94 = a3;
  sub_1B5E4D7C8(v41, v34);

  v42 = sub_1B5DF46E0(v34, 1, v35);
  v86 = v21;
  if (v42 == 1)
  {
    sub_1B5DF4428(v34, &qword_1EB90EC18, &qword_1B5EB6E90);
    v43 = *(v22 + 16);
    v44 = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    v70 = a2;
    (*(v36 + 32))(v39, v34, v35);
    v45 = v36;
    if (qword_1EB90CE80 != -1)
    {
      swift_once();
    }

    v46 = v87;
    v47 = sub_1B5DFD794(v87, qword_1EB90CE88);
    swift_beginAccess();
    (*(v91 + 16))(v73, v47, v46);
    v48 = *(v22 + 16);
    v89 = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v49 = v71;
    v90 = v48;
    v48(v71, v94, v21);
    v50 = sub_1B5EA5380();
    v51 = sub_1B5EA5A40();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v72 = v20;
      v53 = v52;
      v69 = swift_slowAlloc();
      v95 = v69;
      *v53 = 136315138;
      sub_1B5E47A4C(&qword_1EB90ECB0, 255, MEMORY[0x1E69695A8]);
      v68 = v51;
      sub_1B5EA5ED0();
      (*(v22 + 8))(v49, v86);
      v54 = sub_1B5E5B1CC();
      v21 = v86;

      *(v53 + 4) = v54;
      _os_log_impl(&dword_1B5DED000, v50, v68, "Clash in uuid: %s for a new complete one shot request. Finishing previous one shot request!", v53, 0xCu);
      v55 = v69;
      sub_1B5DF3FB8(v69);
      MEMORY[0x1B8C8B330](v55, -1, -1);
      v56 = v53;
      v20 = v72;
      MEMORY[0x1B8C8B330](v56, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v49, v21);
    }

    (*(v91 + 8))(v73, v46);
    a2 = v70;
    v95 = 0;
    sub_1B5EA59A0();
    (*(v45 + 8))(v39, v35);
    v44 = v89;
    v43 = v90;
  }

  v57 = v92;
  v58 = v94;
  v89 = v44;
  v90 = v43;
  v43(v92, v94, v21);
  v59 = sub_1B5DF33E0(&qword_1EB90EBE8, &qword_1B5EB6DA8);
  (*(*(v59 - 8) + 16))(v20, v93, v59);
  sub_1B5DF3658(v20, 0, 1, v59);
  swift_beginAccess();
  sub_1B5E43E28(v20, v57);
  v60 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v60);
  v61 = v77;
  *&v67[-112] = a2;
  *&v67[-104] = v61;
  v62 = v81;
  *&v67[-96] = v79;
  *&v67[-88] = v62;
  v63 = v85;
  *&v67[-80] = v83;
  *&v67[-72] = v63;
  v64 = v75;
  *&v67[-64] = v74;
  *&v67[-56] = v64;
  v65 = v78;
  *&v67[-48] = v76;
  *&v67[-40] = v65;
  v66 = v82;
  *&v67[-32] = v80;
  *&v67[-24] = v66;
  *&v67[-16] = v84;
  *&v67[-8] = v58;
  sub_1B5E4B8F4(sub_1B5E5E220, &v67[-128]);
}

void sub_1B5E52DC8()
{
  sub_1B5DFD8A8();
  v1 = sub_1B5DF33E0(&qword_1EB90EC88, &qword_1B5EB7078);
  sub_1B5DF5DA8(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5E5F1E8();
  v7 = sub_1B5EA4340();
  v8 = sub_1B5DF5DA8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7E8();
  v15 = v14 - v13;
  sub_1B5EA4330();
  sub_1B5DF33E0(&qword_1EB90EC90, &qword_1B5EB7080);
  (*(v3 + 104))(v0, *MEMORY[0x1E69E8790], v1);
  sub_1B5E5FBCC();
  sub_1B5EA59E0();
  (*(v10 + 8))(v15, v7);
  sub_1B5DFD8C0();
}

void sub_1B5E52FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v66 = a8;
  v64 = a7;
  v62 = a6;
  v60 = a5;
  v58 = a4;
  v73 = a1;
  v65 = a15;
  v63 = a14;
  v61 = a13;
  v59 = a12;
  v57 = a11;
  v56 = a10;
  v55 = a9;
  v53 = sub_1B5EA53B0();
  v52 = *(v53 - 8);
  v17 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v51[2] = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1B5EA4340();
  v19 = *(v70 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v54 = v21;
  v71 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v51 - v25;
  v27 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v68 = v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v51 - v31;
  v33 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests;
  swift_beginAccess();
  v69 = a2;
  v67 = v33;
  v34 = *(a2 + v33);

  v72 = a3;
  sub_1B5E4D7C8(v34, v32);

  if (sub_1B5DF46E0(v32, 1, v22))
  {
    sub_1B5DF4428(v32, &qword_1EB90EC18, &qword_1B5EB6E90);
  }

  else
  {
    (*(v23 + 16))(v26, v32, v22);
    sub_1B5DF4428(v32, &qword_1EB90EC18, &qword_1B5EB6E90);
    v74 = 0;
    sub_1B5EA59A0();
    (*(v23 + 8))(v26, v22);
  }

  v35 = *(v19 + 16);
  v36 = v71;
  v37 = v72;
  v38 = v70;
  v35(v71, v72, v70);
  v39 = v68;
  (*(v23 + 16))(v68, v73, v22);
  sub_1B5DF3658(v39, 0, 1, v22);
  v40 = v69;
  swift_beginAccess();
  sub_1B5E43BE0(v39, v36);
  swift_endAccess();
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51[1] = v19 + 16;
  v51[0] = v35;
  v35(v36, v37, v38);
  v42 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  (*(v19 + 32))(v43 + v42, v36, v38);
  v54 = v22;
  v44 = sub_1B5EA5980();
  MEMORY[0x1EEE9AC00](v44);
  v45 = v58;
  v51[-14] = v40;
  v51[-13] = v45;
  v46 = v62;
  v51[-12] = v60;
  v51[-11] = v46;
  v47 = v66;
  v51[-10] = v64;
  v51[-9] = v47;
  v48 = v56;
  v51[-8] = v55;
  v51[-7] = v48;
  v49 = v59;
  v51[-6] = v57;
  v51[-5] = v49;
  v50 = v63;
  v51[-4] = v61;
  v51[-3] = v50;
  v51[-2] = v65;
  v51[-1] = v37;
  sub_1B5E4B8F4(sub_1B5E5E05C, &v51[-16]);
}

void sub_1B5E537FC(uint64_t a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_1B5DF33E0(&qword_1EB90ECA8, &qword_1B5EB7098);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  (*(v7 + 16))(&v17 - v9, a1, v6);
  LODWORD(a1) = (*(v7 + 88))(v10, v6);
  v11 = *MEMORY[0x1E69E8760];
  (*(v7 + 8))(v10, v6);
  if (a1 == v11)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      sub_1B5E5441C();
    }

    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      swift_beginAccess();
      sub_1B5E5D330(v5);
      sub_1B5DF4428(v5, &qword_1EB90EC18, &qword_1B5EB6E90);
      swift_endAccess();
    }

    else
    {
      v16 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
      sub_1B5DF3658(v5, 1, 1, v16);
      sub_1B5DF4428(v5, &qword_1EB90EC18, &qword_1B5EB6E90);
    }
  }
}

void sub_1B5E53A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, const char **a28)
{
  sub_1B5DFD8A8();
  v187 = v30;
  v180 = v31;
  v174 = v32;
  v200 = v33;
  v179 = v34;
  v182 = v35;
  v37 = v36;
  v199 = v38;
  v196 = a23;
  v197 = a24;
  v191 = a21;
  v192 = a22;
  v39 = sub_1B5EA5350();
  v40 = sub_1B5DF5DA8(v39);
  v172 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1B5DFD7F8();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  sub_1B5E5FF90();
  v171 = v48;
  sub_1B5E34DC8();
  v195 = sub_1B5EA4CC0();
  v49 = sub_1B5DF5DA8(v195);
  v193 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1B5DFD7E8();
  v194 = v54 - v53;
  sub_1B5E34DC8();
  v190 = sub_1B5EA4D20();
  v55 = sub_1B5DF5DA8(v190);
  v188 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1B5DFD7E8();
  v189 = v60 - v59;
  v61 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01CF8(v61);
  v63 = *(v62 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v64);
  sub_1B5DFA50C();
  v186 = v65;
  sub_1B5E34DC8();
  v184 = sub_1B5EA4820();
  v66 = sub_1B5DF5DA8(v184);
  v181 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  sub_1B5DFD7E8();
  v183 = v71 - v70;
  sub_1B5E34DC8();
  v177 = sub_1B5EA5160();
  v72 = sub_1B5DF5DA8(v177);
  v175 = v73;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v72);
  sub_1B5DFD7E8();
  v176 = v77 - v76;
  sub_1B5E34DC8();
  v78 = sub_1B5EA4EE0();
  v79 = sub_1B5DF5DA8(v78);
  v201 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v79);
  sub_1B5DFD7F8();
  sub_1B5E2616C();
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v168 - v84;
  v86 = sub_1B5DF33E0(&qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5E01CF8(v86);
  v88 = *(v87 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v89);
  sub_1B5E5F57C();
  v90 = sub_1B5E5FB64();
  v92 = sub_1B5DF33E0(v90, v91);
  sub_1B5E01CF8(v92);
  v94 = *(v93 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v168 - v96;
  v98 = type metadata accessor for SessionConfiguration();
  v99 = sub_1B5E01CF8(v98);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  sub_1B5DFD7E8();
  sub_1B5E5FB70();
  v198 = v37;
  sub_1B5DFDA5C(*(v37 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData) + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_configuration, v28);
  v102 = objc_allocWithZone(type metadata accessor for SessionConfigurationXPCEnvelope());
  sub_1B5E5F3AC();
  SessionConfigurationXPCEnvelope.init(sealing:)();
  v185 = v103;
  sub_1B5E5EEBC(v182, v97, &qword_1EB90E938, &qword_1B5EB6690);
  v104 = objc_allocWithZone(type metadata accessor for ChatMessagesXPCEnvelope());
  sub_1B5E2624C();
  v105 = v174;
  sub_1B5E387B4();
  v182 = v106;
  sub_1B5E5EEBC(v179, v29, &qword_1EB90E928, &qword_1B5EB6688);
  v107 = objc_allocWithZone(type metadata accessor for TemplateXPCEnvelope());
  sub_1B5E38DFC();
  v179 = v108;
  v109 = objc_allocWithZone(type metadata accessor for BindingVariablesXPCEnvelope());

  sub_1B5E395AC();
  v178 = v110;
  v111 = v105[2];
  v112 = MEMORY[0x1E69E7CC0];
  if (v111)
  {
    v169 = v46;
    v170 = v39;
    v202 = MEMORY[0x1E69E7CC0];
    sub_1B5EA5C30();
    v113 = *(v201 + 16);
    v114 = *(v201 + 80);
    sub_1B5E34D90();
    v116 = v105 + v115;
    v200 = *(v117 + 56);
    v201 = v117;
    v118 = (v117 - 8);
    v119 = v173;
    do
    {
      v113(v85, v116, v78);
      v113(v119, v85, v78);
      v120 = objc_allocWithZone(type metadata accessor for DocumentIdentifierXPCEnvelope());
      DocumentIdentifierXPCEnvelope.init(sealing:)();
      (*v118)(v85, v78);
      sub_1B5EA5C10();
      v121 = *(v202 + 2);
      sub_1B5EA5C40();
      sub_1B5EA5C50();
      sub_1B5EA5C20();
      v116 += v200;
      --v111;
    }

    while (v111);
    v112 = v202;
    v39 = v170;
    v46 = v169;
  }

  v173 = v112;
  v122 = a26;
  v123 = v180;
  v124 = *(v180 + 16);
  v174 = a28;
  if (v124)
  {
    v169 = a26;
    v170 = a27;
    v202 = MEMORY[0x1E69E7CC0];
    sub_1B5EA5C30();
    v126 = *(v172 + 16);
    v125 = v172 + 16;
    v127 = *(v172 + 80);
    sub_1B5E34D90();
    v129 = v123 + v128;
    v200 = *(v125 + 56);
    v201 = v130;
    v131 = v171;
    do
    {
      v132 = v201;
      (v201)(v131, v129, v39);
      v132(v46, v131, v39);
      v133 = objc_allocWithZone(type metadata accessor for ToolTypeXPCEnvelope());
      ToolTypeXPCEnvelope.init(sealing:)();
      (*(v125 - 8))(v131, v39);
      sub_1B5EA5C10();
      v134 = v39;
      v135 = *(v202 + 2);
      sub_1B5EA5C40();
      v39 = v134;
      sub_1B5EA5C50();
      sub_1B5EA5C20();
      v129 += v200;
      --v124;
    }

    while (v124);
    v122 = v169;
  }

  (*(v175 + 16))(v176, v187, v177);
  v136 = objc_allocWithZone(type metadata accessor for ToolChoiceXPCEnvelope());
  sub_1B5E2624C();
  ToolChoiceXPCEnvelope.init(sealing:)();
  v138 = v137;
  (*(v181 + 16))(v183, v191, v184);
  v139 = objc_allocWithZone(type metadata accessor for SamplingParametersXPCEnvelope());
  sub_1B5E2624C();
  sub_1B5E39F78();
  v141 = v140;
  sub_1B5E5EEBC(v192, v186, &qword_1EB90E6A0, &qword_1B5EB60D8);
  v142 = objc_allocWithZone(type metadata accessor for SchemaXPCEnvelope());
  sub_1B5E5FD64();
  SchemaXPCEnvelope.init(sealing:)();
  v144 = v143;
  (*(v188 + 16))(v189, v196, v190);
  v145 = objc_allocWithZone(type metadata accessor for StringRenderedPromptSanitizerXPCEnvelope());
  sub_1B5E5FD64();
  v146 = StringRenderedPromptSanitizerXPCEnvelope.init(sealing:)();
  (*(v193 + 16))(v194, v197, v195);
  v147 = objc_allocWithZone(type metadata accessor for StringResponseSanitizerXPCEnvelope());
  sub_1B5E5FD64();
  v148 = StringResponseSanitizerXPCEnvelope.init(sealing:)();
  type metadata accessor for DocumentIdentifierXPCEnvelope();
  v201 = sub_1B5EA5840();

  type metadata accessor for ToolTypeXPCEnvelope();
  v200 = sub_1B5EA5840();

  if (v122)
  {
    v149 = sub_1B5EA5670();
  }

  else
  {
    v149 = 0;
  }

  v196 = v149;
  v197 = sub_1B5EA4310();
  v150 = *v174;
  v166 = v148;
  v167 = v149;
  v151 = v146;
  v164 = v144;
  v165 = v146;
  v162 = v138;
  v163 = v141;
  v152 = v199;
  v153 = v200;
  v154 = v185;
  v155 = v182;
  v199 = v148;
  v156 = v144;
  v157 = v141;
  v158 = v138;
  v159 = v179;
  v160 = v178;
  v161 = v201;
  [v152 v150];

  sub_1B5DFD8C0();
}

void sub_1B5E5441C()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v2 = sub_1B5EA53B0();
  v3 = sub_1B5DF5DA8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5DFD7E8();
  v6[2] = v1;
  sub_1B5E4B8F4(sub_1B5E5E024, v6);
  sub_1B5DFD8C0();
}

void sub_1B5E5463C(void *a1)
{
  v2 = sub_1B5EA4310();
  [a1 cancelRequestWithUuid_];
}

uint64_t sub_1B5E54698()
{
  sub_1B5E01DFC();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1B5EA53B0();
  v1[9] = v5;
  sub_1B5E01C50(v5);
  v1[10] = v6;
  v8 = *(v7 + 64);
  v1[11] = sub_1B5E2D0C8();
  v9 = sub_1B5EA55A0();
  v1[12] = v9;
  sub_1B5E01C50(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = sub_1B5E2D0C8();
  v13 = sub_1B5DF33E0(&qword_1EB90EC38, &qword_1B5EB7028);
  sub_1B5E01CF8(v13);
  v15 = *(v14 + 64);
  v1[15] = sub_1B5E2D0C8();
  v16 = sub_1B5EA47B0();
  v1[16] = v16;
  sub_1B5E01C50(v16);
  v1[17] = v17;
  v19 = *(v18 + 64);
  v1[18] = sub_1B5E2D0C8();
  v20 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1B5E54804()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[6];
  v4 = sub_1B5EA4700();
  sub_1B5E60228(v4);

  sub_1B5E5F280(v2);
  if (v5)
  {
    v6 = sub_1B5DF4428(v0[15], &qword_1EB90EC38, &qword_1B5EB7028);
    if (qword_1EB90CE80 != -1)
    {
      v6 = sub_1B5E5EF54();
    }

    v8 = v0[10];
    v7 = v0[11];
    v9 = v0[9];
    sub_1B5E5F41C(v6, qword_1EB90CE88);
    sub_1B5E2D094();
    v10 = sub_1B5E5F1F8();
    v11(v10);
    v12 = sub_1B5EA5380();
    v13 = sub_1B5EA5A40();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[9];
    if (v14)
    {
      v18 = sub_1B5E5FD88();
      v39 = sub_1B5E5FC3C();
      *v18 = 136315138;
      sub_1B5E5FB20();
      *(v18 + 4) = sub_1B5E5B1CC();
      _os_log_impl(&dword_1B5DED000, v12, v13, "%s Response was missing candidates", v18, 0xCu);
      sub_1B5DF3FB8(v39);
      sub_1B5E5F764();
      sub_1B5E2D07C();
    }

    v19 = *(v16 + 8);
    v20 = sub_1B5E5F318();
    v21(v20);
    v22 = v0[5];
  }

  else
  {
    v23 = v0[7];
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    if (*(v23 + 16))
    {
      v24 = v0[18];
      v25 = *(sub_1B5EA47A0() + 16);

      if (v25)
      {
        v26 = v0[18];
        v0[19] = sub_1B5EA47A0();
        v27 = swift_task_alloc();
        v0[20] = v27;
        *v27 = v0;
        v27[1] = sub_1B5E54AD4;
        sub_1B5E5F780(v0[7]);

        return sub_1B5E55260();
      }
    }

    v29 = v0[5];
    (*(v0[17] + 8))(v0[18], v0[16]);
  }

  sub_1B5EA5470();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v30, v31, v32, v33);
  v34 = v0[18];
  v35 = v0[14];
  v36 = v0[15];
  v37 = v0[11];

  sub_1B5E5F1D8();

  return v38();
}

uint64_t sub_1B5E54AD4()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  v5 = *v1;
  sub_1B5E2CE38();
  *v6 = v5;
  *(v8 + 168) = v7;
  *(v8 + 176) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E54BF4()
{
  v1 = v0[21];
  if (*(v1 + 16))
  {
    v2 = v0[22];
    v3 = v0[17];
    v21 = v0[16];
    v22 = v0[18];
    v4 = v0[13];
    v5 = v0[14];
    v6 = v0[12];
    v7 = v0[5];
    sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
    v8 = sub_1B5EA5450();
    sub_1B5E01C50(v8);
    v10 = *(v9 + 72);
    sub_1B5E5FC54();
    *(swift_allocObject() + 16) = xmmword_1B5EAFC20;
    (*(v4 + 104))(v5, *MEMORY[0x1E69C63D8], v6);
    *(swift_task_alloc() + 16) = v1;
    sub_1B5EA5410();

    sub_1B5EA5480();
    (*(v3 + 8))(v22, v21);
    v11 = sub_1B5EA5470();
    v12 = v7;
    v13 = 0;
  }

  else
  {
    v14 = v0[5];
    (*(v0[17] + 8))(v0[18], v0[16]);

    sub_1B5EA5470();
    v12 = sub_1B5E5F58C();
  }

  sub_1B5DF3658(v12, v13, 1, v11);
  v15 = v0[18];
  v16 = v0[14];
  v17 = v0[15];
  v18 = v0[11];

  sub_1B5E5F1D8();

  return v19();
}

uint64_t sub_1B5E54E08()
{
  sub_1B5E2CED8();
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[11];
  (*(v0[17] + 8))(v0[18], v0[16]);

  sub_1B5E2CF4C();
  v5 = v0[22];

  return v4();
}

uint64_t sub_1B5E54EA8(uint64_t a1)
{
  v2 = sub_1B5EA5560();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[3] = &type metadata for GenerativeExperiencesSessionClient.ToolCallResults;
  v14[4] = sub_1B5E5DFD0();
  v14[0] = a1;

  v8 = MEMORY[0x1E69C6388];
  sub_1B5EA54A0();
  sub_1B5DF3FB8(v14);
  sub_1B5DF33E0(&qword_1EB90EC48, &unk_1B5EB7030);
  v9 = *(v3 + 72);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B5EAFC20;
  (*(v4 + 16))(v11 + v10, v7, v2);
  MEMORY[0x1B8C8A0B0](v11, v2, v8);

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1B5E55054@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = sub_1B5EA54C0();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v20 = a2;
    v22 = MEMORY[0x1E69E7CC0];
    sub_1B5E5B6C8();
    v9 = v22;
    v10 = (a1 + 56);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      sub_1B5EA54B0();

      v22 = v9;
      v15 = *(v9 + 16);
      if (v15 >= *(v9 + 24) >> 1)
      {
        sub_1B5E5B6C8();
        v9 = v22;
      }

      *(v9 + 16) = v15 + 1;
      (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v7, v21);
      v10 += 4;
      --v8;
    }

    while (v8);
    a2 = v20;
  }

  *a2 = v9;
  v16 = *MEMORY[0x1E69C62C8];
  v17 = sub_1B5EA5520();
  return (*(*(v17 - 8) + 104))(a2, v16, v17);
}

uint64_t sub_1B5E55260()
{
  sub_1B5E01DFC();
  v0[29] = v1;
  v0[30] = v2;
  v3 = sub_1B5EA4F50();
  v0[31] = v3;
  sub_1B5E01C50(v3);
  v0[32] = v4;
  v6 = *(v5 + 64);
  v0[33] = sub_1B5E2D0C8();
  v7 = sub_1B5EA5520();
  v0[34] = v7;
  sub_1B5E01C50(v7);
  v0[35] = v8;
  v10 = *(v9 + 64);
  v0[36] = sub_1B5E2D0C8();
  v11 = sub_1B5DF33E0(&qword_1EB90EC68, &qword_1B5EB7050);
  sub_1B5E01CF8(v11);
  v13 = *(v12 + 64);
  v0[37] = sub_1B5E2D0C8();
  v14 = sub_1B5EA5560();
  v0[38] = v14;
  sub_1B5E01C50(v14);
  v0[39] = v15;
  v17 = *(v16 + 64);
  v0[40] = sub_1B5E2D0C8();
  v18 = sub_1B5EA5540();
  v0[41] = v18;
  sub_1B5E01C50(v18);
  v0[42] = v19;
  v21 = *(v20 + 64);
  v0[43] = sub_1B5E2D0C8();
  v22 = sub_1B5DF33E0(&qword_1EB90EC70, &qword_1B5EB7058);
  sub_1B5E01CF8(v22);
  v24 = *(v23 + 64);
  v0[44] = sub_1B5E2D0C8();
  v25 = sub_1B5EA5180();
  v0[45] = v25;
  sub_1B5E01C50(v25);
  v0[46] = v26;
  v28 = *(v27 + 64);
  v0[47] = sub_1B5E2D0C8();
  v29 = sub_1B5EA53B0();
  v0[48] = v29;
  sub_1B5E01C50(v29);
  v0[49] = v30;
  v32 = *(v31 + 64);
  v0[50] = sub_1B5E5FDA0();
  v0[51] = swift_task_alloc();
  v0[52] = swift_task_alloc();
  v0[53] = swift_task_alloc();
  v0[54] = swift_task_alloc();
  v0[55] = swift_task_alloc();
  v33 = sub_1B5EA52D0();
  v0[56] = v33;
  sub_1B5E01C50(v33);
  v0[57] = v34;
  v36 = *(v35 + 64);
  v0[58] = sub_1B5E2D0C8();
  v37 = sub_1B5DF33E0(&qword_1EB90EC78, &unk_1B5EB7060);
  sub_1B5E01CF8(v37);
  v39 = *(v38 + 64);
  v0[59] = sub_1B5E5FDA0();
  v0[60] = swift_task_alloc();
  v40 = sub_1B5EA4B70();
  v0[61] = v40;
  sub_1B5E01C50(v40);
  v0[62] = v41;
  v43 = *(v42 + 64);
  v0[63] = sub_1B5E2D0C8();
  v44 = sub_1B5EA4B30();
  v0[64] = v44;
  sub_1B5E01C50(v44);
  v0[65] = v45;
  v47 = *(v46 + 64);
  v0[66] = sub_1B5E5FDA0();
  v0[67] = swift_task_alloc();
  v48 = sub_1B5EA4B80();
  v0[68] = v48;
  sub_1B5E01C50(v48);
  v0[69] = v49;
  v51 = *(v50 + 64);
  v0[70] = sub_1B5E2D0C8();
  v52 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v52, v53, v54);
}

uint64_t sub_1B5E55688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1B5E60044();
  v32 = 0;
  v33 = *(*(v27 + 240) + 16);
  *(v27 + 568) = v33;
  v34 = MEMORY[0x1E69A0E70];
  *(v27 + 648) = *MEMORY[0x1E69DA808];
  v35 = *v34;
  v36 = MEMORY[0x1E69C6320];
  v37 = MEMORY[0x1E69E7CC0];
  *(v27 + 652) = v35;
  *(v27 + 656) = *v36;
  *(v27 + 576) = v37;
  v189 = v27 + 512;
  v192 = v27 + 536;
  v184 = v27 + 504;
  v186 = v27 + 488;
  while (v32 != v33)
  {
    if (v32 >= v33)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v66 = sub_1B5E5EF54();
LABEL_12:
      v67 = *(v27 + 408);
      v68 = *(v27 + 384);
      v69 = *(v27 + 392);
      sub_1B5E5F41C(v66, qword_1EB90CE88);
      sub_1B5E2D094();
      v70 = sub_1B5E5F1F8();
      v71(v70);
      v72 = sub_1B5EA5380();
      sub_1B5EA5A40();
      sub_1B5E5FA8C();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = sub_1B5E34E60();
        sub_1B5E34EA8(v74);
        sub_1B5E34F28(&dword_1B5DED000, v75, v76, "Unknown tool call was requested");
        sub_1B5E34DF0();
      }

      sub_1B5E5FCC0();
      v187 = v77;
      sub_1B5E5FCA8();
      a15 = v79;
      v182 = v78;

      v80 = *(v68 + 8);
      v81 = sub_1B5E5FB14();
      v82(v81);
      sub_1B5E5F854();
      sub_1B5EA5BC0();

      sub_1B5E5FB2C();
      sub_1B5E5F508();
      v83 = sub_1B5EA56E0();
      MEMORY[0x1B8C8A360](v83);

      sub_1B5E600DC();
      v84 = sub_1B5EA5130();
      sub_1B5E5EF3C();
      sub_1B5E47A4C(v85, 255, v86);
      sub_1B5E5F23C();
      sub_1B5E5F94C();
      sub_1B5EA4F60();
      (*(v28 + 8))(0, v182);
      v183 = v84;
      swift_willThrow();
      (*(a15 + 8))(v69, v187);
      v87 = (v27 + 512);
      v88 = (v27 + 536);
      goto LABEL_28;
    }

    *(v27 + 584) = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_36;
    }

    v38 = sub_1B5E5F4C4();
    v39(v38);
    sub_1B5EA4B40();
    v40 = *(v31 + 88);
    v31 += 88;
    v41 = sub_1B5E5FA48();
    if (v42(v41) != v30)
    {
      v65 = *(v27 + 576);

      if (qword_1EB90CE80 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_37;
    }

    v43 = sub_1B5E5F91C();
    v44(v43);
    v46 = *(v26 + 32);
    v45 = v26 + 32;
    v47 = sub_1B5E5F8A8();
    v48(v47);
    v49 = swift_task_alloc();
    sub_1B5E5F6CC(v49);

    v28 = sub_1B5EA5350();
    sub_1B5E5F5A8(v30, 1, v28);
    if (v50)
    {
      v89 = *(v27 + 504);
      v90 = *(v27 + 472);
      v91 = *(v27 + 232);
      sub_1B5DF4428(*(v27 + 480), &qword_1EB90EC78, &unk_1B5EB7060);
      v92 = swift_task_alloc();
      sub_1B5E5F694(v92);

      v93 = sub_1B5E5F8E0();
      v95 = sub_1B5DF46E0(v93, v94, v28);
      v96 = *(v27 + 472);
      if (v95 == 1)
      {
        v97 = *(v27 + 576);
        sub_1B5DF4428(*(v27 + 472), &qword_1EB90EC78, &unk_1B5EB7060);

        goto LABEL_23;
      }

      sub_1B5E600BC();
      sub_1B5E2D1D8(v28);
      v100 = *(v99 + 8);
      v101 = sub_1B5E5F78C();
      v102(v101);
      v103 = *(v89 + 88);
      v104 = sub_1B5E5F318();
      if (v105(v104) == &unk_1B5EB7060)
      {
        v106 = sub_1B5E5FFB0();
        v107(v106);
        v108 = sub_1B5DF17A8(v96, v27 + 16);
        if (qword_1EB90CE80 != -1)
        {
          v108 = sub_1B5E5EF54();
        }

        v109 = *(v27 + 440);
        v110 = *(v27 + 384);
        v111 = *(v27 + 392);
        *(v27 + 592) = sub_1B5E5F41C(v108, qword_1EB90CE88);
        sub_1B5E2D094();
        *(v27 + 600) = *(v111 + 16);
        *(v27 + 608) = (v111 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v112 = sub_1B5E5F22C();
        v113(v112);
        sub_1B5DFC6BC(v27 + 16, v27 + 56);
        v114 = sub_1B5EA5380();
        v115 = sub_1B5EA5A60();
        v116 = os_log_type_enabled(v114, v115);
        v117 = *(v27 + 440);
        v118 = *(v27 + 384);
        v119 = *(v27 + 392);
        if (v116)
        {
          v120 = sub_1B5E5FD88();
          a21 = sub_1B5E5FC3C();
          sub_1B5E5FDDC(4.8149e-34);
          sub_1B5DF3FB8((v27 + 56));
          v121 = sub_1B5E5B1CC();

          *(v120 + 4) = v121;
          sub_1B5E6011C(&dword_1B5DED000, v122, v123, "Invoking tool: %s");
          sub_1B5DF3FB8(a21);
          sub_1B5E5F990();
          sub_1B5E5F764();

          v124 = *(v119 + 8);
          v125 = sub_1B5E5F758();
          v124(v125);
        }

        else
        {

          v168 = *(v119 + 8);
          v169 = sub_1B5E5F758();
          v168(v169);
          sub_1B5DF3FB8((v27 + 56));
        }

        sub_1B5E5FF34();
        *(v27 + 624) = v170;
        v171 = *(MEMORY[0x1E69A0E20] + 4);
        swift_task_alloc();
        sub_1B5E34EEC();
        *(v27 + 632) = v172;
        *v172 = v173;
        sub_1B5E5F33C(v172);
        sub_1B5E5F88C();

        return MEMORY[0x1EEE0ACB0](v174, v175, v176, v177, v178, v179, v180, v181, a9, a10, a11, a12, a13, a14, a15, a16, v184, v186, v189, v192, a21, a22, a23, a24, a25, a26);
      }

      v126 = *(v27 + 576);
      v128 = *(v27 + 456);
      v127 = *(v27 + 464);
      v129 = *(v27 + 448);

      v130 = *(v128 + 8);
      v131 = sub_1B5E5F324();
      v98 = v132(v131);
LABEL_23:
      if (qword_1EB90CE80 != -1)
      {
        v98 = sub_1B5E5EF54();
      }

      v133 = *(v27 + 416);
      v134 = *(v27 + 384);
      v135 = *(v27 + 392);
      sub_1B5E5F41C(v98, qword_1EB90CE88);
      sub_1B5E2D094();
      v136 = sub_1B5E5F1F8();
      v137(v136);
      v138 = sub_1B5EA5380();
      sub_1B5EA5A40();
      sub_1B5E5FA8C();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = sub_1B5E34E60();
        sub_1B5E34EA8(v140);
        sub_1B5E6013C(&dword_1B5DED000, v141, v142, "Requested function call from model does not exist");
        sub_1B5E34DF0();
      }

      v143 = *(v27 + 552);
      v190 = *(v27 + 544);
      v193 = *(v27 + 560);
      sub_1B5E5FE74();
      v144 = *(v135 + 8);
      v145 = sub_1B5E5FB58();
      v146(v145);
      sub_1B5EA4B50();
      sub_1B5E5F824();
      sub_1B5EA4F40();
      v147 = sub_1B5EA5130();
      sub_1B5E5EF3C();
      sub_1B5E47A4C(v148, 255, v149);
      sub_1B5E5F23C();
      sub_1B5E5F94C();
      sub_1B5EA4F60();
      v150 = *(v134 + 8);
      v151 = sub_1B5E60018();
      v152(v151);
      v183 = v147;
      swift_willThrow();
      (*(v143 + 8))(v193, v190);
      v153 = *(v27 + 496);
      v88 = (v27 + 504);
      v87 = (v27 + 488);
LABEL_28:
      v154 = *v88;
      v155 = *v87;
      sub_1B5E5F3B8();
      v185 = v156;
      v188 = v157;
      v191 = v158;
      v194 = *(v27 + 264);
      (*(v159 + 8))();

      sub_1B5E2CF4C();
      sub_1B5E5F88C();

      return v161(v160, v161, v162, v163, v164, v165, v166, v167, a9, a10, a11, a12, a13, a14, a15, v183, v185, v188, v191, v194, a21, a22, a23, a24, a25, a26);
    }

    v51 = sub_1B5E5FB7C();
    v52(v51);
    sub_1B5DF4428(v29, &qword_1EB90EC78, &unk_1B5EB7060);
    v53 = *(v45 + 8);
    v26 = v45 + 8;
    v54 = sub_1B5E5F78C();
    v55(v54);
    v33 = *(v27 + 568);
    ++v32;
  }

  sub_1B5E5F520();

  sub_1B5E5FFF0();
  sub_1B5E5F88C();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, v184, v186, v189, v192, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1B5E55F5C()
{
  sub_1B5E2CED8();
  v2 = *v1;
  v3 = *v1;
  sub_1B5E2CE38();
  *v4 = v3;
  v5 = *(v2 + 632);
  *v4 = *v1;
  *(v3 + 640) = v0;

  v6 = *(v2 + 624);
  if (v0)
  {
    v7 = *(v3 + 576);
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E56090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1B5E60044();
  v27 = *(v26 + 352);
  sub_1B5E5F280(v27);
  if (!v85)
  {
    v71 = *(v26 + 376);
    v73 = *(v26 + 320);
    v72 = *(v26 + 328);
    v74 = *(v26 + 304);
    v75 = *(v26 + 312);
    v76 = *(v26 + 296);
    v77 = *(*(v26 + 368) + 32);
    sub_1B5E5FB98();
    v78();
    sub_1B5EA5170();
    v79 = *(v26 + 120);
    v80 = *(v26 + 128);
    sub_1B5DF3BFC((v26 + 96), v79);
    sub_1B5E5F318();
    sub_1B5EA5570();
    v81 = sub_1B5EA54E0();
    v82 = *(v75 + 8);
    v83 = sub_1B5E5FA48();
    v84(v83);
    sub_1B5E10B14(v81, v76);

    sub_1B5E5F5A8(v76, 1, v72);
    if (v85)
    {
      v86 = *(v26 + 576);
      v87 = *(v26 + 296);

      sub_1B5DF4428(v87, &qword_1EB90EC68, &qword_1B5EB7050);
      sub_1B5DF3FB8((v26 + 96));
    }

    else
    {
      v88 = *(v26 + 656);
      v89 = *(v26 + 288);
      v90 = *(v26 + 272);
      v91 = *(v26 + 280);
      (*(*(v26 + 336) + 32))(*(v26 + 344), *(v26 + 296), *(v26 + 328));
      sub_1B5DF3FB8((v26 + 96));
      sub_1B5EA5530();
      v92 = *(v91 + 88);
      v93 = sub_1B5E5F318();
      v95 = v94(v93);
      v96 = *(v26 + 576);
      if (v95 == v88)
      {
        v97 = *(v26 + 560);
        v98 = *(v26 + 288);
        (*(*(v26 + 280) + 96))(v98, *(v26 + 272));
        v100 = *v98;
        v99 = v98[1];
        v101 = sub_1B5EA4B20();
        v103 = v102;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = *(v26 + 576);
        v312 = v100;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B5E6DEB4(0, v105[2] + 1, 1, v105);
          v105 = v288;
        }

        v107 = v105[2];
        v106 = v105[3];
        v304 = v101;
        v307 = v99;
        v298 = v103;
        if (v107 >= v106 >> 1)
        {
          v289 = sub_1B5E34E0C(v106);
          sub_1B5E6DEB4(v289, v290, 1, v105);
          v105 = v291;
        }

        v45 = *(v26 + 560);
        v108 = *(v26 + 552);
        v44 = *(v26 + 544);
        v109 = *(v26 + 496);
        a14 = *(v26 + 488);
        a15 = *(v26 + 504);
        v110 = *(v26 + 368);
        v111 = *(v26 + 376);
        v40 = *(v26 + 360);
        (*(*(v26 + 336) + 8))(*(v26 + 344), *(v26 + 328));
        v112 = *(v110 + 8);
        v39 = v110 + 8;
        v112(v111, v40);
        v113 = *(v108 + 8);
        v114 = sub_1B5E5FA48();
        v115(v114);
        v105[2] = v107 + 1;
        v116 = &v105[4 * v107];
        v116[4] = v304;
        v116[5] = v298;
        v116[6] = v312;
        v116[7] = v307;
        sub_1B5DF3FB8((v26 + 16));
        v117 = *(v109 + 8);
        v46 = v109 + 8;
        v117(a15, a14);
        v51 = *(v26 + 640);
        v52 = *(v26 + 584);
        *(v26 + 576) = v105;
        goto LABEL_6;
      }

      v162 = *(v26 + 280);
      v161 = *(v26 + 288);
      v79 = *(v26 + 272);
      (*(*(v26 + 336) + 8))(*(v26 + 344), *(v26 + 328));

      v163 = *(v162 + 8);
      v80 = (v162 + 8);
      v164 = sub_1B5E5F324();
      v165(v164);
    }

    v166 = *(v26 + 608);
    (*(v26 + 600))(*(v26 + 432), *(v26 + 592), *(v26 + 384));
    v167 = sub_1B5EA5380();
    sub_1B5EA5A40();
    sub_1B5E5FA8C();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = sub_1B5E34E60();
      sub_1B5E34EA8(v169);
      _os_log_impl(&dword_1B5DED000, v167, v79, "Only tools that output strings are currently supported.", v80, 2u);
      sub_1B5E34DF0();
    }

    v170 = *(v26 + 616);
    v171 = *(v26 + 504);
    v172 = *(v26 + 432);
    v173 = *(v26 + 384);
    v174 = *(v26 + 392);
    v175 = *(v26 + 368);
    v294 = *(v26 + 360);
    v299 = *(v26 + 376);
    v177 = *(v26 + 256);
    v176 = *(v26 + 264);
    v292 = *(v26 + 248);

    v178 = sub_1B5E5F8D4();
    v170(v178);
    sub_1B5EA4B50();
    sub_1B5E5F824();
    sub_1B5EA4F40();
    sub_1B5EA5130();
    sub_1B5E5EF3C();
    sub_1B5E47A4C(v179, 255, v180);
    v181 = swift_allocError();
    sub_1B5EA4F60();
    (*(v177 + 8))(v176, v292);
    swift_willThrow();
    (*(v175 + 8))(v299, v294);
    v182 = sub_1B5E5FAD0();
    v183(v182);
    v184 = v181;
    v185 = sub_1B5EA5380();
    v186 = sub_1B5EA5A40();

    if (os_log_type_enabled(v185, v186))
    {
      v187 = sub_1B5E5FD88();
      v188 = swift_slowAlloc();
      *v187 = 138412290;
      v189 = v181;
      v190 = _swift_stdlib_bridgeErrorToNSError();
      *(v187 + 4) = v190;
      *v188 = v190;
      _os_log_impl(&dword_1B5DED000, v185, v186, "Encountered failure while invoking function: %@", v187, 0xCu);
      sub_1B5DF4428(v188, &unk_1EB90F890, &qword_1B5EB6DC0);
      sub_1B5E5F990();
      sub_1B5E5F764();
    }

    v191 = *(v26 + 616);
    v192 = *(v26 + 552);
    v295 = *(v26 + 544);
    v300 = *(v26 + 560);
    v193 = *(v26 + 504);
    a14 = v181;
    v195 = *(v26 + 392);
    v194 = *(v26 + 400);
    v196 = *(v26 + 384);
    v198 = *(v26 + 256);
    v197 = *(v26 + 264);
    a15 = *(v26 + 248);

    v199 = sub_1B5E5F8D4();
    v191(v199);
    sub_1B5EA4B50();
    sub_1B5E5F854();
    sub_1B5EA5BC0();
    *(v26 + 208) = a21;
    *(v26 + 216) = a22;
    sub_1B5E5F824();
    MEMORY[0x1B8C8A360](v200 + 21, v201 | 0x8000000000000000);
    *(v26 + 224) = a14;
    sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
    sub_1B5EA5C60();
    v202 = *(v26 + 208);
    v203 = *(v26 + 216);
    sub_1B5E5F8D4();
    sub_1B5EA4F40();
    swift_allocError();
    sub_1B5E5F94C();
    sub_1B5EA4F60();
    (*(v198 + 8))(v197, a15);
    v309 = v26 + 208;
    swift_willThrow();

    (*(v192 + 8))(v300, v295);
    sub_1B5DF3FB8((v26 + 16));
    v204 = *(v26 + 496);
    v149 = (v26 + 488);
    v150 = (v26 + 504);
LABEL_48:
    v260 = *v150;
    v261 = *v149;
    sub_1B5E5F3B8();
    v296 = v262;
    v302 = v263;
    v306 = v264;
    v314 = *(v26 + 264);
    (*(v265 + 8))();

    sub_1B5E2CF4C();
    sub_1B5E5F88C();

    return v267(v266, v267, v268, v269, v270, v271, v272, v273, a9, a10, a11, a12, a13, a14, a15, v296, v302, v306, v309, v314, a21, a22, a23, a24, a25, a26);
  }

  v28 = *(v26 + 608);
  v29 = *(v26 + 600);
  v30 = *(v26 + 592);
  v31 = *(v26 + 424);
  v32 = *(v26 + 384);
  sub_1B5DF4428(v27, &qword_1EB90EC70, &qword_1B5EB7058);
  v33 = sub_1B5E5F940();
  v29(v33);
  v34 = sub_1B5EA5380();
  sub_1B5EA5A60();
  sub_1B5E5FA8C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = sub_1B5E34E60();
    sub_1B5E34EA8(v36);
    sub_1B5E34F28(&dword_1B5DED000, v37, v38, "Tool returned no response. Exiting tool calling loop.");
    sub_1B5E34DF0();
  }

  v39 = *(v26 + 616);
  v40 = *(v26 + 560);
  v41 = *(v26 + 552);
  v42 = *(v26 + 544);
  v43 = *(v26 + 496);
  v307 = *(v26 + 488);
  v310 = *(v26 + 504);
  v44 = *(v26 + 424);
  v46 = *(v26 + 384);
  v45 = *(v26 + 392);

  v47 = sub_1B5E5F508();
  (v39)(v47);
  v48 = *(v41 + 8);
  v49 = sub_1B5E5F318();
  v50(v49);
  sub_1B5DF3FB8((v26 + 16));
  (*(v43 + 8))(v310, v307);
  v51 = *(v26 + 640);
  v52 = *(v26 + 584);
LABEL_6:
  v297 = v26 + 512;
  v303 = v26 + 536;
  v311 = v26 + 504;
  v293 = v26 + 488;
  while (1)
  {
    v53 = *(v26 + 568);
    if (v52 == v53)
    {
      sub_1B5E5F520();

      sub_1B5E5FFF0();
      sub_1B5E5F88C();

      return v120(v118, v119, v120, v121, v122, v123, v124, v125, a9, a10, a11, a12, a13, a14, a15, v293, v297, v303, v307, v311, a21, a22, a23, a24, a25, a26);
    }

    if (v52 >= v53)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v128 = sub_1B5E5EF54();
LABEL_26:
      v129 = *(v26 + 408);
      v130 = *(v26 + 384);
      v131 = *(v26 + 392);
      sub_1B5E5F41C(v128, qword_1EB90CE88);
      sub_1B5E2D094();
      v132 = sub_1B5E5F1F8();
      v133(v132);
      v134 = sub_1B5EA5380();
      sub_1B5EA5A40();
      sub_1B5E5FA8C();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = sub_1B5E34E60();
        sub_1B5E34EA8(v136);
        sub_1B5E34F28(&dword_1B5DED000, v137, v138, "Unknown tool call was requested");
        sub_1B5E34DF0();
      }

      sub_1B5E5FCC0();
      a15 = v139;
      sub_1B5E5FCA8();
      v308 = v140;
      v313 = v141;

      v142 = *(v130 + 8);
      v143 = sub_1B5E5FB14();
      v144(v143);
      sub_1B5E5F854();
      sub_1B5EA5BC0();

      sub_1B5E5FB2C();
      sub_1B5E5F508();
      v145 = sub_1B5EA56E0();
      MEMORY[0x1B8C8A360](v145);

      sub_1B5E600DC();
      v146 = sub_1B5EA5130();
      sub_1B5E5EF3C();
      sub_1B5E47A4C(v147, 255, v148);
      sub_1B5E5F23C();
      sub_1B5E5F94C();
      sub_1B5EA4F60();
      (*(v45 + 8))(v51, v308);
      v309 = v146;
      swift_willThrow();
      (*(a15 + 8))(v131, v313);
      v149 = (v26 + 512);
      v150 = (v26 + 536);
      goto LABEL_48;
    }

    *(v26 + 584) = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_56;
    }

    v54 = sub_1B5E5F4C4();
    v55(v54);
    sub_1B5EA4B40();
    v56 = *(v39 + 88);
    v39 += 88;
    v57 = sub_1B5E5FA48();
    if (v58(v57) != v46)
    {
      v127 = *(v26 + 576);

      if (qword_1EB90CE80 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_57;
    }

    v59 = sub_1B5E5F91C();
    v60(v59);
    v62 = *(v40 + 32);
    v61 = v40 + 32;
    v63 = sub_1B5E5F8A8();
    v64(v63);
    v65 = swift_task_alloc();
    sub_1B5E5F6CC(v65);

    v45 = sub_1B5EA5350();
    sub_1B5E5F5A8(v46, 1, v45);
    if (v85)
    {
      break;
    }

    v66 = sub_1B5E5FB7C();
    v67(v66);
    sub_1B5DF4428(v44, &qword_1EB90EC78, &unk_1B5EB7060);
    v68 = *(v61 + 8);
    v40 = v61 + 8;
    v69 = sub_1B5E5F78C();
    v70(v69);
    ++v52;
  }

  v151 = *(v26 + 504);
  v152 = *(v26 + 472);
  v153 = *(v26 + 232);
  sub_1B5DF4428(*(v26 + 480), &qword_1EB90EC78, &unk_1B5EB7060);
  v154 = swift_task_alloc();
  sub_1B5E5F694(v154);

  v155 = sub_1B5E5F8E0();
  v157 = sub_1B5DF46E0(v155, v156, v45);
  v158 = *(v26 + 472);
  if (v157 == 1)
  {
    v159 = *(v26 + 576);
    sub_1B5DF4428(*(v26 + 472), &qword_1EB90EC78, &unk_1B5EB7060);

LABEL_43:
    if (qword_1EB90CE80 != -1)
    {
      v160 = sub_1B5E5EF54();
    }

    v239 = *(v26 + 416);
    v240 = *(v26 + 384);
    v241 = *(v26 + 392);
    sub_1B5E5F41C(v160, qword_1EB90CE88);
    sub_1B5E2D094();
    v242 = sub_1B5E5F1F8();
    v243(v242);
    v244 = sub_1B5EA5380();
    sub_1B5EA5A40();
    sub_1B5E5FA8C();
    if (os_log_type_enabled(v244, v245))
    {
      v246 = sub_1B5E34E60();
      sub_1B5E34EA8(v246);
      sub_1B5E6013C(&dword_1B5DED000, v247, v248, "Requested function call from model does not exist");
      sub_1B5E34DF0();
    }

    v249 = *(v26 + 552);
    v301 = *(v26 + 544);
    v305 = *(v26 + 560);
    sub_1B5E5FE74();
    v250 = *(v241 + 8);
    v251 = sub_1B5E5FB58();
    v252(v251);
    sub_1B5EA4B50();
    sub_1B5E5F824();
    sub_1B5EA4F40();
    v253 = sub_1B5EA5130();
    sub_1B5E5EF3C();
    sub_1B5E47A4C(v254, 255, v255);
    sub_1B5E5F23C();
    sub_1B5E5F94C();
    sub_1B5EA4F60();
    v256 = *(v240 + 8);
    v257 = sub_1B5E60018();
    v258(v257);
    v309 = v253;
    swift_willThrow();
    (*(v249 + 8))(v305, v301);
    v259 = *(v26 + 496);
    v150 = (v26 + 504);
    v149 = (v26 + 488);
    goto LABEL_48;
  }

  sub_1B5E600BC();
  sub_1B5E2D1D8(v45);
  v206 = *(v205 + 8);
  v207 = sub_1B5E5F78C();
  v208(v207);
  v209 = *(v151 + 88);
  v210 = sub_1B5E5F318();
  if (v211(v210) != &unk_1B5EB7060)
  {
    v232 = *(v26 + 576);
    v234 = *(v26 + 456);
    v233 = *(v26 + 464);
    v235 = *(v26 + 448);

    v236 = *(v234 + 8);
    v237 = sub_1B5E5F324();
    v160 = v238(v237);
    goto LABEL_43;
  }

  v212 = sub_1B5E5FFB0();
  v213(v212);
  v214 = sub_1B5DF17A8(v158, v26 + 16);
  if (qword_1EB90CE80 != -1)
  {
    v214 = sub_1B5E5EF54();
  }

  v215 = *(v26 + 440);
  v216 = *(v26 + 384);
  v217 = *(v26 + 392);
  *(v26 + 592) = sub_1B5E5F41C(v214, qword_1EB90CE88);
  sub_1B5E2D094();
  *(v26 + 600) = *(v217 + 16);
  *(v26 + 608) = (v217 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v218 = sub_1B5E5F22C();
  v219(v218);
  sub_1B5DFC6BC(v26 + 16, v26 + 56);
  v220 = sub_1B5EA5380();
  v221 = sub_1B5EA5A60();
  v222 = os_log_type_enabled(v220, v221);
  v223 = *(v26 + 440);
  v224 = *(v26 + 384);
  v225 = *(v26 + 392);
  if (v222)
  {
    v226 = sub_1B5E5FD88();
    a21 = sub_1B5E5FC3C();
    sub_1B5E5FDDC(4.8149e-34);
    sub_1B5DF3FB8((v26 + 56));
    v227 = sub_1B5E5B1CC();

    *(v226 + 4) = v227;
    sub_1B5E6011C(&dword_1B5DED000, v228, v229, "Invoking tool: %s");
    sub_1B5DF3FB8(a21);
    sub_1B5E5F990();
    sub_1B5E5F764();

    v230 = *(v225 + 8);
    v231 = sub_1B5E5F758();
    v230(v231);
  }

  else
  {

    v274 = *(v225 + 8);
    v275 = sub_1B5E5F758();
    v274(v275);
    sub_1B5DF3FB8((v26 + 56));
  }

  sub_1B5E5FF34();
  *(v26 + 624) = v276;
  v277 = *(MEMORY[0x1E69A0E20] + 4);
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v26 + 632) = v278;
  *v278 = v279;
  sub_1B5E5F33C();
  sub_1B5E5F88C();

  return MEMORY[0x1EEE0ACB0](v280, v281, v282, v283, v284, v285, v286, v287, a9, a10, a11, a12, a13, a14, a15, v293, v297, v303, v307, v311, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1B5E57014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1B5E60044();
  v28 = v26[80];
  v29 = sub_1B5E5FAD0();
  v30(v29);
  v31 = v28;
  v32 = sub_1B5EA5380();
  v33 = sub_1B5EA5A40();

  if (os_log_type_enabled(v32, v33))
  {
    sub_1B5E5FD88();
    v34 = sub_1B5E5FE1C();
    *v27 = 138412290;
    v35 = v28;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_1B5DED000, v32, v33, "Encountered failure while invoking function: %@", v27, 0xCu);
    sub_1B5DF4428(v34, &unk_1EB90F890, &qword_1B5EB6DC0);
    sub_1B5E2D07C();
    sub_1B5E2D07C();
  }

  v37 = v26[77];
  v80 = v26[68];
  v82 = v26[70];
  v38 = v26[63];
  v39 = v28;
  v40 = v26[49];
  v41 = v26[50];
  v42 = v26[48];
  v44 = v26[32];
  v43 = v26[33];
  v75 = v26[31];
  v77 = v26[69];

  v45 = sub_1B5E5FB14();
  v37(v45);
  sub_1B5EA4B50();
  sub_1B5E5F854();
  sub_1B5EA5BC0();
  v26[26] = a21;
  v26[27] = a22;
  sub_1B5E5FB20();
  MEMORY[0x1B8C8A360](0xD00000000000002DLL);
  v26[28] = v39;
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  sub_1B5EA5C60();
  v46 = v26[26];
  v47 = v26[27];
  sub_1B5E5FB58();
  sub_1B5EA4F40();
  sub_1B5EA5130();
  sub_1B5E5EF3C();
  sub_1B5E47A4C(v48, 255, v49);
  v79 = sub_1B5E5F23C();
  sub_1B5EA4F60();
  (*(v44 + 8))(v43, v75);
  swift_willThrow();

  (*(v77 + 8))(v82, v80);
  sub_1B5DF3FB8(v26 + 2);
  v50 = v26[70];
  v51 = v26[67];
  v52 = v26[66];
  v53 = v26[60];
  v55 = v26[58];
  v54 = v26[59];
  v56 = v26[54];
  v57 = v26[55];
  v68 = v26[53];
  v69 = v26[52];
  v70 = v26[51];
  v71 = v26[50];
  v72 = v26[47];
  v73 = v26[44];
  v74 = v26[43];
  v58 = v26[40];
  v76 = v58;
  v78 = v26[37];
  v81 = v26[36];
  v83 = v26[33];
  (*(v26[62] + 8))(v26[63], v26[61]);

  sub_1B5E2CF4C();
  sub_1B5E5F88C();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, v68, v69, v70, v71, v72, v73, v74, v76, v78, v79, v81, v83, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1B5E573A0()
{
  v0 = sub_1B5EA52D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B5EA5330();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5EA52F0();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69A0E78])
  {
    (*(v1 + 96))(v4, v0);
    (*(v6 + 32))(v9, v4, v5);
    v10 = sub_1B5EA5240();
    v12 = v11;
    if (v10 == sub_1B5EA4B50() && v12 == v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1B5EA5F00();
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v1 + 8))(v4, v0);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B5E575E8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v5 = sub_1B5EA5350();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v19 = a2;
  v11 = *(a2 + 16);
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      return sub_1B5DF3658(v15, v14, 1, v5);
    }

    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5);
    v13 = v18(v9);
    if (v3)
    {
      return (*v12)(v9, v5);
    }

    if (v13)
    {
      break;
    }

    (*v12)(v9, v5);
    ++v10;
  }

  v15 = v17;
  (*(v6 + 32))(v17, v9, v5);
  v14 = 0;
  return sub_1B5DF3658(v15, v14, 1, v5);
}

uint64_t sub_1B5E577A4()
{
  v0 = sub_1B5EA52D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = (&v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B5EA52F0();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69A0E70])
  {
    (*(v1 + 96))(v4, v0);
    sub_1B5DF17A8(v4, v15);
    v5 = v15[4];
    sub_1B5DF3BFC(v15, v15[3]);
    v6 = *(v5 + 8);
    v7 = sub_1B5EA51C0();
    v9 = v8;
    if (v7 == sub_1B5EA4B50() && v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1B5EA5F00();
    }

    sub_1B5DF3FB8(v15);
  }

  else
  {
    (*(v1 + 8))(v4, v0);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1B5E5795C()
{
  sub_1B5E01DFC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1B5EA4B30();
  v1[4] = v3;
  sub_1B5E01C50(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = sub_1B5E2D0C8();
  v7 = sub_1B5EA4B70();
  v1[7] = v7;
  sub_1B5E01C50(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = sub_1B5E2D0C8();
  v11 = sub_1B5EA4B80();
  v1[10] = v11;
  sub_1B5E01C50(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = sub_1B5E2D0C8();
  v15 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E01CF8(v15);
  v17 = *(v16 + 64);
  v1[13] = sub_1B5E5FDA0();
  v1[14] = swift_task_alloc();
  v18 = sub_1B5EA55A0();
  v1[15] = v18;
  sub_1B5E01C50(v18);
  v1[16] = v19;
  v21 = *(v20 + 64);
  v1[17] = sub_1B5E2D0C8();
  v22 = sub_1B5EA5450();
  v1[18] = v22;
  sub_1B5E01C50(v22);
  v1[19] = v23;
  v25 = *(v24 + 64);
  v1[20] = sub_1B5E5FDA0();
  v1[21] = swift_task_alloc();
  v26 = sub_1B5EA4740();
  v1[22] = v26;
  sub_1B5E01C50(v26);
  v1[23] = v27;
  v29 = *(v28 + 64);
  v1[24] = sub_1B5E2D0C8();
  v30 = sub_1B5EA4770();
  v1[25] = v30;
  sub_1B5E01C50(v30);
  v1[26] = v31;
  v33 = *(v32 + 64);
  v1[27] = sub_1B5E2D0C8();
  v34 = sub_1B5EA4750();
  v1[28] = v34;
  sub_1B5E01C50(v34);
  v1[29] = v35;
  v37 = *(v36 + 64);
  v1[30] = sub_1B5E5FDA0();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v38 = sub_1B5DF33E0(&qword_1EB90EC38, &qword_1B5EB7028);
  sub_1B5E01CF8(v38);
  v40 = *(v39 + 64);
  v1[33] = sub_1B5E5FDA0();
  v1[34] = swift_task_alloc();
  v41 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v41, v42, v43);
}

uint64_t sub_1B5E57CA8()
{
  v3 = v0[34];
  v4 = v0[2];
  v5 = sub_1B5EA4700();
  sub_1B5E60228(v5);

  v6 = sub_1B5EA47B0();
  v0[35] = v6;
  v7 = sub_1B5E5F644();
  if (sub_1B5DF46E0(v7, v8, v6) == 1)
  {
    sub_1B5DF4428(v0[34], &qword_1EB90EC38, &qword_1B5EB7028);
LABEL_10:
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v9 = sub_1B5EA4780();
  sub_1B5E2D1D8(v6);
  v11 = *(v10 + 8);
  v12 = sub_1B5E5F324();
  v13(v12);
  v14 = *(v9 + 16);
  if (!v14)
  {

    goto LABEL_10;
  }

  v15 = v0[29];
  v16 = v0[26];
  sub_1B5E5FC78(MEMORY[0x1E69E7CC0]);
  sub_1B5E5C044();
  v17 = v203;
  v18 = *(v16 + 16);
  v16 += 16;
  v19 = *(v16 + 64);
  sub_1B5E34D90();
  v195 = v9;
  v1 = v9 + v20;
  v196 = *(v16 + 56);
  v198 = v21;
  v22 = (v16 - 8);
  do
  {
    v23 = v0[32];
    v24 = v0[27];
    v25 = v0[25];
    v26 = sub_1B5E26048();
    v198(v26);
    sub_1B5EA4760();
    v27 = *v22;
    v28 = sub_1B5E5F508();
    v29(v28);
    v30 = *(v203 + 16);
    v2 = v30 + 1;
    if (v30 >= *(v203 + 24) >> 1)
    {
      sub_1B5E5C044();
    }

    v31 = v0[32];
    v32 = v0[28];
    *(v203 + 16) = v2;
    v33 = *(v15 + 80);
    sub_1B5E34D90();
    (*(v15 + 32))(v203 + v34 + *(v15 + 72) * v30);
    v1 += v196;
    --v14;
  }

  while (v14);

LABEL_11:
  v35 = *(v17 + 16);
  v190 = v0;
  if (v35)
  {
    v36 = v0[29];
    v37 = v0[23];
    v39 = *(v36 + 16);
    v36 += 16;
    v38 = v39;
    v178 = v17;
    v40 = v17 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v196 = *(v36 + 56);
    v195 = (v36 + 72);
    v193 = (v36 - 8);
    LODWORD(v191) = *MEMORY[0x1E69DA540];
    v182 = (v37 + 32);
    v184 = (v36 + 80);
    v180 = (v37 + 8);
    v186 = v39;
    v188 = v36;
    do
    {
      v42 = v0[30];
      v41 = v0[31];
      v43 = v0[28];
      v44 = sub_1B5E436DC();
      v38(v44);
      v45 = sub_1B5E5F8A8();
      v46 = (v38)(v45);
      sub_1B5E5FD4C(v46, v47, v48, v49, v50, v51, v52, v53, v173, v174, v176, v178, v180, v182, v184, v186, v188, v190, v191, v193, v195);
      v54 = sub_1B5E5FA48();
      v56 = v55(v54);
      v57 = v0[30];
      v2 = v0[31];
      v1 = v0[28];
      if (v56 == v191)
      {
        v58 = v0[24];
        v59 = v0[22];
        v60 = *v184;
        v61 = sub_1B5E5F78C();
        v62(v61);
        v63 = *v182;
        sub_1B5E5FBA4();
        v64();
        v65 = sub_1B5EA4730();
        v67 = v66;

        v68 = v65;
        v0 = v190;
        MEMORY[0x1B8C8A360](v68, v67);

        v69 = *v180;
        v70 = sub_1B5E5FB58();
        v38 = v186;
        v71(v70);
        v72 = *v193;
        v73 = sub_1B5E26048();
        v74(v73);
      }

      else
      {
        v75 = *v193;
        v76 = sub_1B5E26048();
        v75(v76);
        v77 = sub_1B5E5F78C();
        v75(v77);
      }

      v40 += v196;
      --v35;
    }

    while (v35);
  }

  v78 = v0[35];
  v79 = v0[33];
  v80 = v0[2];
  v81 = sub_1B5EA4700();
  sub_1B5E60228(v81);

  sub_1B5E5F280(v79);
  if (v82)
  {
    sub_1B5DF4428(v0[33], &qword_1EB90EC38, &qword_1B5EB7028);
    v85 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v83 = v0[35];
    v84 = v0[33];
    v85 = sub_1B5EA47A0();
    sub_1B5E2D1D8(v83);
    v87 = *(v86 + 8);
    v88 = sub_1B5E5F324();
    v89(v88);
  }

  v90 = *(v85 + 16);
  if (v90)
  {
    v91 = v0[11];
    v92 = v0[8];
    v94 = *(v91 + 16);
    v91 += 16;
    v93 = v94;
    sub_1B5E5FCF0();
    v96 = v85 + v95;
    v201 = *(v91 + 56);
    v199 = (v97 + 88);
    v98 = *MEMORY[0x1E69DA808];
    sub_1B5E5FCD8();
    v179 = v99;
    v181 = v100;
    v175 = (v101 + 8);
    v177 = (v101 + 32);
    v102 = MEMORY[0x1E69E7CC0];
    v183 = v94;
    v185 = v91;
    do
    {
      v103 = v0[12];
      v104 = v0[10];
      v105 = v0[6];
      v106 = v0[4];
      v107 = sub_1B5E436DC();
      v93(v107);
      sub_1B5EA4B40();
      v108 = *v199;
      v109 = sub_1B5E5F8D4();
      v111 = v110(v109);
      v119 = v0[12];
      v1 = v0[10];
      if (v111 == v196)
      {
        v2 = v0[9];
        v120 = v0[6];
        v121 = v0[7];
        (*v179)(v120, v0[4]);
        (*v177)(v2, v120, v121);
        v122 = sub_1B5EA4B20();
        v192 = v123;
        v194 = v122;
        v124 = sub_1B5EA4B50();
        v187 = v125;
        v189 = v124;
        v126 = sub_1B5EA4B60();
        v128 = v127;
        v129 = *v175;
        v130 = sub_1B5E5F508();
        v132 = v131(v130);
        sub_1B5E5FD4C(v132, v133, v134, v135, v136, v137, v138, v139, v173, v175, v177, v179, v181, v183, v185, v187, v189, v190, v192, v194, v195);
        v140 = sub_1B5E5F8D4();
        v141(v140);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v148 = *(v102 + 16);
          sub_1B5E5FA1C();
          sub_1B5E6DD94(v149, v150, v151, v152);
          v102 = v153;
        }

        v143 = *(v102 + 16);
        v142 = *(v102 + 24);
        if (v143 >= v142 >> 1)
        {
          sub_1B5E34E0C(v142);
          sub_1B5E5FA1C();
          sub_1B5E6DD94(v154, v155, v156, v157);
          v102 = v158;
        }

        *(v102 + 16) = v143 + 1;
        v144 = (v102 + 48 * v143);
        v144[4] = v193;
        v144[5] = v191;
        v144[6] = v188;
        v144[7] = v186;
        v144[8] = v126;
        v144[9] = v128;
        v0 = v190;
        v93 = v183;
      }

      else
      {
        v145 = v0[6];
        v2 = v0[4];
        sub_1B5E5FD4C(v111, v112, v113, v114, v115, v116, v117, v118, v173, v175, v177, v179, v181, v183, v185, v186, v188, v190, v191, v193, v195);
        v146 = sub_1B5E5F8D4();
        v147(v146);
        (*v181)(v145, v2);
      }

      v96 += v201;
      --v90;
    }

    while (v90);
  }

  else
  {

    v102 = MEMORY[0x1E69E7CC0];
  }

  if (*(v102 + 16))
  {
    sub_1B5E5FFDC();
    v160 = *(v159 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
    v161 = v0[13];
    (*(v162 + 104))(v1, *MEMORY[0x1E69C6400]);
    v163 = swift_task_alloc();
    sub_1B5E5F498(v163);
    sub_1B5EA5410();

    v164 = sub_1B5EA47C0();
    sub_1B5DF5EB8(v164);
    (*(v165 + 16))(v161, v2, v164);
    v166 = sub_1B5E34D9C();
    sub_1B5DF3658(v166, v167, v168, v164);
    v169 = swift_task_alloc();
    v0[38] = v169;
    *v169 = v0;
    sub_1B5E5F5FC(v169);
    sub_1B5E5F780(v170);

    return sub_1B5E2E434();
  }

  else
  {

    sub_1B5E5F864();
    v197 = v0[12];
    v200 = v0[9];
    v202 = v0[6];

    sub_1B5E5F1D8();

    return v172();
  }
}

uint64_t sub_1B5E58630()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  sub_1B5E2CF58();
  v3 = v2[36];
  v4 = v2[21];
  v5 = v2[19];
  v6 = v2[18];
  v7 = v2[14];
  v8 = *v1;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v10 + 296) = v0;

  sub_1B5DF4428(v7, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  v11 = sub_1B5E5F308();
  v12(v11);
  sub_1B5E5F8EC();
  sub_1B5E5FEF8();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1B5E587B0()
{
  v101 = v0[37];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[2];
  v6 = sub_1B5EA4700();
  sub_1B5E60228(v6);

  sub_1B5E5F280(v4);
  if (v7)
  {
    sub_1B5DF4428(v0[33], &qword_1EB90EC38, &qword_1B5EB7028);
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = v0[35];
    v9 = v0[33];
    v10 = sub_1B5EA47A0();
    sub_1B5E2D1D8(v8);
    v12 = *(v11 + 8);
    v13 = sub_1B5E5F324();
    v14(v13);
  }

  v15 = *(v10 + 16);
  if (v15)
  {
    v16 = v0[11];
    v17 = v0[8];
    v19 = *(v16 + 16);
    v16 += 16;
    v18 = v19;
    sub_1B5E5FCF0();
    v1 = v10 + v20;
    v119 = (v21 + 88);
    v121 = *(v16 + 56);
    v22 = *MEMORY[0x1E69DA808];
    sub_1B5E5FCD8();
    v104 = v23;
    v105 = v24;
    v102 = (v25 + 8);
    v103 = (v25 + 32);
    v26 = MEMORY[0x1E69E7CC0];
    v106 = v19;
    v107 = v16;
    do
    {
      v27 = v0[12];
      v28 = v0[10];
      v29 = v0[6];
      v30 = v0[4];
      v31 = sub_1B5E5F78C();
      v18(v31);
      sub_1B5EA4B40();
      v32 = *v119;
      v33 = sub_1B5E5F318();
      v35 = v34(v33);
      v43 = v0[12];
      v2 = v0[10];
      if (v35 == v117)
      {
        v44 = v0[9];
        v45 = v0[7];
        (*v104)(v0[6], v0[4]);
        v46 = *v103;
        sub_1B5E5FBA4();
        v47();
        v48 = sub_1B5EA4B20();
        v113 = v49;
        v115 = v48;
        v50 = sub_1B5EA4B50();
        v109 = v51;
        v111 = v50;
        v52 = sub_1B5EA4B60();
        v54 = v53;
        v55 = *v102;
        v56 = sub_1B5E5FB58();
        v58 = v57(v56);
        sub_1B5E5FD4C(v58, v59, v60, v61, v62, v63, v64, v65, v100, v101, v102, v103, v104, v105, v106, v107, v109, v111, v113, v115, v116);
        v66(v43, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = *(v26 + 16);
          sub_1B5E5FA1C();
          sub_1B5E6DD94(v76, v77, v78, v79);
          v26 = v80;
        }

        v2 = *(v26 + 16);
        v67 = *(v26 + 24);
        v18 = v106;
        if (v2 >= v67 >> 1)
        {
          sub_1B5E34E0C(v67);
          sub_1B5E5FA1C();
          sub_1B5E6DD94(v81, v82, v83, v84);
          v26 = v85;
        }

        *(v26 + 16) = v2 + 1;
        v68 = (v26 + 48 * v2);
        v68[4] = v114;
        v68[5] = v112;
        v68[6] = v110;
        v68[7] = v108;
        v68[8] = v52;
        v68[9] = v54;
      }

      else
      {
        v69 = v0[6];
        v70 = v0[4];
        sub_1B5E5FD4C(v35, v36, v37, v38, v39, v40, v41, v42, v100, v101, v102, v103, v104, v105, v106, v107, v108, v110, v112, v114, v116);
        v71(v43, v2);
        v72 = *v105;
        v73 = sub_1B5E5F324();
        v74(v73);
      }

      v1 += v121;
      --v15;
    }

    while (v15);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  if (*(v26 + 16))
  {
    sub_1B5E5FFDC();
    v87 = *(v86 + OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_clientData);
    v88 = v0[13];
    (*(v89 + 104))(v1, *MEMORY[0x1E69C6400]);
    v90 = swift_task_alloc();
    sub_1B5E5F498(v90);
    sub_1B5EA5410();

    v91 = sub_1B5EA47C0();
    sub_1B5DF5EB8(v91);
    (*(v92 + 16))(v88, v2, v91);
    v93 = sub_1B5E34D9C();
    sub_1B5DF3658(v93, v94, v95, v91);
    v96 = swift_task_alloc();
    v0[38] = v96;
    *v96 = v0;
    sub_1B5E5F5FC(v96);
    sub_1B5E5F780(v97);

    return sub_1B5E2E434();
  }

  else
  {

    sub_1B5E5F864();
    v118 = v0[12];
    v120 = v0[9];
    v122 = v0[6];

    sub_1B5E5F1D8();

    return v99();
  }
}

uint64_t sub_1B5E58C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1B5E2D0E0();
  sub_1B5E2D1E4();
  sub_1B5E2CF58();
  v19 = v18;
  sub_1B5E2CE48();
  *v20 = v19;
  v22 = v21[38];
  v23 = v21[20];
  v24 = v21[19];
  v25 = v21[18];
  v26 = v21[13];
  v27 = *v17;
  sub_1B5E2CE38();
  *v28 = v27;
  v19[39] = v16;

  sub_1B5DF4428(v26, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  v29 = *(v24 + 8);
  v30 = sub_1B5E5F758();
  v31(v30);
  if (v16)
  {
    sub_1B5E5F8EC();
    sub_1B5E2D0AC();

    return MEMORY[0x1EEE6DFA0](v32, v33, v34);
  }

  else
  {
    v37 = v19[33];
    v36 = v19[34];
    v39 = v19[31];
    v38 = v19[32];
    v40 = v19[30];
    v41 = v19[27];
    v42 = v19[24];
    v44 = v19[20];
    v43 = v19[21];
    v55 = v19[17];
    v56 = v19[14];
    v57 = v19[13];
    v58 = v19[12];
    v59 = v19[9];
    v45 = v19[6];

    sub_1B5E5F1D8();
    sub_1B5E2D0AC();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, v55, v56, v57, v58, v59, a14, a15, a16);
  }
}

uint64_t sub_1B5E58EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  v19 = *(v18 + 296);
  sub_1B5E5F710();

  sub_1B5E2CF4C();
  sub_1B5E5F400();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1B5E58F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5E5F808();
  sub_1B5E5F904();
  v19 = *(v18 + 312);
  sub_1B5E5F710();

  sub_1B5E2CF4C();
  sub_1B5E5F400();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1B5E59050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5EA5560();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[3] = MEMORY[0x1E69E6158];
  v16[4] = MEMORY[0x1E69C6560];
  v16[0] = a1;
  v16[1] = a2;

  v10 = MEMORY[0x1E69C6388];
  sub_1B5EA54A0();
  sub_1B5DF3FB8(v16);
  sub_1B5DF33E0(&qword_1EB90EC48, &unk_1B5EB7030);
  v11 = *(v5 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B5EAFC20;
  (*(v6 + 16))(v13 + v12, v9, v4);
  MEMORY[0x1B8C8A0B0](v13, v4, v10);

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1B5E59208(uint64_t a1)
{
  v2 = sub_1B5EA5560();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B5E593B8(a1);
  v15[3] = &type metadata for GenerativeExperiencesSessionClient.ToolCall;
  v15[4] = sub_1B5E5DF1C();
  v15[0] = v8;
  v9 = MEMORY[0x1E69C6388];
  sub_1B5EA54A0();
  sub_1B5DF3FB8(v15);
  sub_1B5DF33E0(&qword_1EB90EC48, &unk_1B5EB7030);
  v10 = *(v3 + 72);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B5EAFC20;
  (*(v4 + 16))(v12 + v11, v7, v2);
  MEMORY[0x1B8C8A0B0](v12, v2, v9);

  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1B5E593B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1B5E5C09C(0, v1, 0);
    v2 = v22;
    v4 = (a1 + 72);
    do
    {
      v10 = *(v4 - 5);
      v11 = *(v4 - 4);
      v12 = *(v4 - 3);
      v13 = *(v4 - 2);
      v14 = *(v4 - 1);
      v15 = *v4;

      sub_1B5DF33E0(&qword_1EB90EC50, &qword_1B5EB75B0);
      sub_1B5DF33E0(&qword_1EB90EC58, &qword_1B5EB7040);
      swift_dynamicCast();
      v5 = v17;
      v7 = *(v22 + 16);
      v6 = *(v22 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1B5E5C09C(v6 > 1, v7 + 1, 1);
        v5 = v17;
      }

      v4 += 6;
      *(v22 + 16) = v7 + 1;
      v8 = (v22 + 48 * v7);
      v8[4] = v16;
      v8[5] = v5;
      v8[6] = v18;
      v8[7] = v19;
      v8[8] = v20;
      v8[9] = v21;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B5E59514@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25 = sub_1B5EA5510();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v22 = a2;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1B5E5B720();
    v9 = v26;
    v23 = v4 + 32;
    v24 = v4;
    v10 = (a1 + 72);
    do
    {
      v11 = *(v10 - 5);
      v12 = *(v10 - 4);
      v13 = *(v10 - 3);
      v14 = *(v10 - 2);
      v16 = *(v10 - 1);
      v15 = *v10;

      sub_1B5EA5500();

      v26 = v9;
      v17 = *(v9 + 16);
      if (v17 >= *(v9 + 24) >> 1)
      {
        sub_1B5E5B720();
        v9 = v26;
      }

      v10 += 6;
      *(v9 + 16) = v17 + 1;
      (*(v24 + 32))(v9 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v17, v7, v25);
      --v8;
    }

    while (v8);
    a2 = v22;
  }

  *a2 = v9;
  v18 = *MEMORY[0x1E69C6340];
  v19 = sub_1B5EA5520();
  return (*(*(v19 - 8) + 104))(a2, v18, v19);
}

void sub_1B5E59744()
{
  sub_1B5DFD8A8();
  v43 = v1;
  v42 = v2;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  sub_1B5E01CF8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFA50C();
  v40 = v9;
  v10 = sub_1B5DF33E0(&qword_1EB90EC20, &qword_1B5EB6E98);
  sub_1B5DF5DA8(v10);
  v41 = v11;
  v13 = *(v12 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v39 - v15;
  v17 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
  v18 = sub_1B5DF5DA8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5DFD7F8();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1B5E5F834();
  v27 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests;
  sub_1B5E34DAC();
  v28 = *(v0 + v27);
  if (*(v28 + 16))
  {

    v39[1] = v4;
    sub_1B5E5AF88();
    if (v30)
    {
      (*(v20 + 16))(v25, *(v28 + 56) + *(v20 + 72) * v29, v17);

      v31 = *(v20 + 32);
      v32 = sub_1B5E26048();
      v33(v32);
      if (v42)
      {
        v34 = v42;
        CompletePromptResponseElementXPCEnvelope.unseal()();
        sub_1B5EA5990();

        (*(v41 + 8))(v16, v10);
      }

      if (v43)
      {
        v44 = 0;
        sub_1B5EA59A0();
        sub_1B5E34E78();
        v35 = v40;
        sub_1B5E5D330(v40);
        sub_1B5DF4428(v35, &qword_1EB90EC18, &qword_1B5EB6E90);
        swift_endAccess();
      }

      v36 = *(v20 + 8);
      v37 = sub_1B5E5FF70();
      v38(v37);
    }

    else
    {
    }
  }

  sub_1B5DFD8C0();
}

void sub_1B5E59B3C()
{
  sub_1B5DFD8A8();
  v36 = v2;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B5EA4ED0();
  v9 = sub_1B5E01CF8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  v12 = sub_1B5DF33E0(&qword_1EB90EC28, &qword_1B5EB6EA0);
  sub_1B5DF5DA8(v12);
  v34 = v13;
  v15 = *(v14 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v16);
  sub_1B5E5F1E8();
  v17 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  sub_1B5DF5DA8(v17);
  v37 = v18;
  v20 = *(v19 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v33 - v22;
  v24 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests;
  sub_1B5E34DAC();
  v25 = *(v0 + v24);
  if (*(v25 + 16))
  {

    sub_1B5E5AF88();
    if ((v27 & 1) == 0 || (v33[1] = v7, v28 = *(*(v25 + 56) + 8 * v26), , , *(v28 + 16) <= v5) || v5 < 0)
    {
    }

    else
    {
      v33[0] = *(v28 + 16);
      (*(v37 + 16))(v23, v28 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v5, v17);

      if (v35)
      {
        v29 = v35;
        DocumentRegistrationXPCResponse.unseal()();
        sub_1B5EA5990();

        (*(v34 + 8))(v1, v12);
      }

      if (v36)
      {
        v38 = 0;
        sub_1B5EA59A0();
        if (v33[0] - 1 == v5)
        {
          sub_1B5E5F974();
          sub_1B5E5D1E0();
          swift_endAccess();
        }
      }

      v30 = *(v37 + 8);
      v31 = sub_1B5E26048();
      v32(v31);
    }
  }

  sub_1B5DFD8C0();
}

void sub_1B5E59F18()
{
  sub_1B5DFD8A8();
  v3 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5E5F1E8();
  v7 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
  v8 = sub_1B5DF5DA8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7F8();
  sub_1B5E5FBE4();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5E5F834();
  v14 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionRequests;
  sub_1B5E34DAC();
  if (*(*(v0 + v14) + 16))
  {

    sub_1B5E5AF88();
    if (v16)
    {
      v17 = sub_1B5E5FA6C(v15);
      v18(v17);

      v19 = *(v10 + 32);
      v20 = sub_1B5E5F508();
      v21(v20);
      sub_1B5EA5130();
      sub_1B5E5EF3C();
      sub_1B5E47A4C(v22, 255, v23);
      sub_1B5E5F23C();
      GenerativeErrorXPCEnvelope.unseal()();
      sub_1B5E5FF0C();
      sub_1B5EA59A0();
      sub_1B5E5F974();
      sub_1B5E5D330(v1);
      sub_1B5DF4428(v1, &qword_1EB90EC18, &qword_1B5EB6E90);
      swift_endAccess();
      (*(v10 + 8))(v2, v7);
    }

    else
    {
    }
  }

  sub_1B5DFD8C0();
}

void sub_1B5E5A15C()
{
  sub_1B5DFD8A8();
  v3 = v2;
  v4 = sub_1B5DF33E0(&qword_1EB90EBB8, &qword_1B5EB6D80);
  sub_1B5DF5DA8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E5F1E8();
  v10 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_registrationRequests;
  sub_1B5E34DAC();
  v11 = *(v0 + v10);
  if (*(v11 + 16))
  {
    v12 = *(v0 + v10);

    sub_1B5E5AF88();
    if ((v14 & 1) == 0 || (v15 = *(*(v11 + 56) + 8 * v13), , , v16 = *(v15 + 16), v16 <= v3) || v3 < 0)
    {
    }

    else
    {
      sub_1B5E5FBD8();
      v18(v1, v15 + ((*(v17 + 64) + 32) & ~*(v17 + 64)) + *(v17 + 56) * v3, v4);

      sub_1B5EA5130();
      sub_1B5E5EF3C();
      sub_1B5E47A4C(v19, 255, v20);
      sub_1B5E5F23C();
      GenerativeErrorXPCEnvelope.unseal()();
      sub_1B5EA59A0();
      if (v16 - 1 == v3)
      {
        sub_1B5E5F974();
        sub_1B5E5D1E0();
        swift_endAccess();
      }

      (*(v6 + 8))(v1, v4);
    }
  }

  sub_1B5DFD8C0();
}

void sub_1B5E5A46C()
{
  sub_1B5DFD8A8();
  v42 = v2;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90EC30, &qword_1B5EB6EA8);
  sub_1B5E01CF8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E08868();
  v9 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E01CF8(v9);
  v11 = *(v10 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1B5DF33E0(&qword_1EB90EBE8, &qword_1B5EB6DA8);
  v14 = sub_1B5DF5DA8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5DFD7F8();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  v25 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest;
  sub_1B5E34DAC();
  v26 = *(v0 + v25);
  if (*(v26 + 16))
  {

    v41 = v4;
    sub_1B5E5AF88();
    if (v28)
    {
      (*(v16 + 16))(v21, *(v26 + 56) + *(v16 + 72) * v27, v13);

      (*(v16 + 32))(v24, v21, v13);
      if (v42)
      {
        v29 = v42;
        CompletePromptResponseXPCEnvelope.unseal()();
        sub_1B5EA47C0();
        sub_1B5E5F704();
        sub_1B5DF3658(v30, v31, v32, v33);
        sub_1B5EA58D0();
      }

      else
      {
        sub_1B5EA47C0();
        sub_1B5DF5DF0();
        sub_1B5DF3658(v34, v35, v36, v37);
        sub_1B5EA58D0();
      }

      sub_1B5E5F974();
      sub_1B5E5D330(v1);
      sub_1B5DF4428(v1, &qword_1EB90EC30, &qword_1B5EB6EA8);
      swift_endAccess();
      v38 = *(v16 + 8);
      v39 = sub_1B5E433C0();
      v40(v39);
    }

    else
    {
    }
  }

  sub_1B5DFD8C0();
}

void sub_1B5E5A834()
{
  sub_1B5DFD8A8();
  v3 = sub_1B5DF33E0(&qword_1EB90EC30, &qword_1B5EB6EA8);
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5E5F1E8();
  v7 = sub_1B5DF33E0(&qword_1EB90EBE8, &qword_1B5EB6DA8);
  v8 = sub_1B5DF5DA8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7F8();
  sub_1B5E5FBE4();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5E5F834();
  v14 = OBJC_IVAR____TtC4Sage34GenerativeExperiencesSessionClient_completionOneShotRequest;
  sub_1B5E34DAC();
  if (*(*(v0 + v14) + 16))
  {

    sub_1B5E5AF88();
    if (v16)
    {
      v17 = sub_1B5E5FA6C(v15);
      v18(v17);

      v19 = *(v10 + 32);
      v20 = sub_1B5E5F508();
      v21(v20);
      sub_1B5EA5130();
      sub_1B5E5EF3C();
      sub_1B5E47A4C(v22, 255, v23);
      sub_1B5E5F23C();
      GenerativeErrorXPCEnvelope.unseal()();
      sub_1B5E5FF0C();
      sub_1B5EA58C0();
      sub_1B5E5F974();
      sub_1B5E5D330(v1);
      sub_1B5DF4428(v1, &qword_1EB90EC30, &qword_1B5EB6EA8);
      swift_endAccess();
      (*(v10 + 8))(v2, v7);
    }

    else
    {
    }
  }

  sub_1B5DFD8C0();
}

void sub_1B5E5AA78()
{
  sub_1B5E601CC();
  v2 = v1;
  v4 = v3;
  sub_1B5E5FFD0();
  v5 = sub_1B5EA4340();
  v6 = sub_1B5DF5DA8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7E8();
  v13 = v12 - v11;
  sub_1B5EA4320();
  v14 = v4;
  v15 = v0;
  v2(v13, v14);

  v16 = *(v8 + 8);
  v17 = sub_1B5E433C0();
  v18(v17);
  sub_1B5E601B8();
}

id GenerativeExperiencesSessionClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeExperiencesSessionClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeExperiencesSessionClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B5E5AC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for GenerativeExperiencesSessionClient();

  return MEMORY[0x1EEE2EE60](a1, v5, a3);
}

uint64_t sub_1B5E5AD40()
{
  v1 = sub_1B5EA4990();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + qword_1EB90EE70) = 0;
  sub_1B5EA4960();
  (*(v2 + 32))(v0 + qword_1EB90EE50, v5, v1);
  return v0;
}

unint64_t sub_1B5E5AE4C()
{
  v1 = *(v0 + 40);
  sub_1B5EA5FD0();
  sub_1B5EA5710();
  sub_1B5EA6020();
  v2 = sub_1B5E43768();

  return sub_1B5DF6C68(v2, v3, v4);
}

void sub_1B5E5AEC0()
{
  sub_1B5E60004();
  sub_1B5EA55A0();
  sub_1B5E47A4C(&qword_1EB90CE38, 255, MEMORY[0x1E69C6408]);
  sub_1B5E5FD58();
  sub_1B5EA55F0();
  sub_1B5E5B050();
}

void sub_1B5E5AF88()
{
  sub_1B5E60004();
  sub_1B5EA4340();
  sub_1B5E47A4C(&qword_1EB90ED28, 255, MEMORY[0x1E69695A8]);
  sub_1B5E5FD58();
  sub_1B5EA55F0();
  sub_1B5E5B050();
}

void sub_1B5E5B050()
{
  sub_1B5DFD8A8();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v5 = v4;
  v19 = v6;
  v8 = v7(0);
  sub_1B5DF5DA8(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v24 = v0 + 64;
  v20 = v0;
  v16 = ~(-1 << *(v0 + 32));
  for (i = v5 & v16; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v10 + 16))(v15, *(v20 + 48) + *(v10 + 72) * i, v8);
    sub_1B5E47A4C(v21, 255, v22);
    v18 = sub_1B5EA5660();
    (*(v10 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  sub_1B5DFD8C0();
}

uint64_t sub_1B5E5B1CC()
{
  sub_1B5E5FC04();

  sub_1B5E5F8EC();
  v6 = sub_1B5E5B28C(v3, v4, v5, 1, v2, v1);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = v2;
    v11[1] = v1;
  }

  v9 = *v0;
  if (*v0)
  {
    sub_1B5E5E268(v11, *v0);
    *v0 = v9 + 32;
  }

  sub_1B5DF3FB8(v11);
  return v7;
}

void sub_1B5E5B284(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B5E47CDC(a1);
}

unint64_t sub_1B5E5B28C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B5E5B38C(a5, a6);
    *a1 = v9;
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
    result = sub_1B5EA5C00();
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

uint64_t sub_1B5E5B38C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B5E5B3D8(a1, a2);
  sub_1B5E5B4F0(&unk_1F2D62160);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B5E5B3D8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B5EA5750())
  {
    result = sub_1B5E6260C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B5EA5BA0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1B5EA5C00();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B5E5B4F0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1B5E5B5D4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B5E5B5D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B5DF33E0(&qword_1EB90EDC8, &qword_1B5EB71A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

void sub_1B5E5B6C8()
{
  v1 = *v0;
  sub_1B5E5C8B8();
  *v0 = v2;
}

void sub_1B5E5B720()
{
  v1 = *v0;
  sub_1B5E5C8B8();
  *v0 = v2;
}

size_t sub_1B5E5B778(size_t a1, int64_t a2, char a3)
{
  result = sub_1B5E5C13C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B5E5B798(size_t a1, int64_t a2, char a3)
{
  result = sub_1B5E5C308(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B5E5B7B8()
{
  v1 = sub_1B5EA4E90();
  sub_1B5E01CF8(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);

  return sub_1B5E488D4(v4);
}

uint64_t sub_1B5E5B818()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B5E5B840()
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v0 = swift_task_alloc();
  v1 = sub_1B5E2CEE4(v0);
  *v1 = v2;
  sub_1B5E5EF7C(v1);
  sub_1B5E601A4();

  return sub_1B5E489B0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B5E5B8CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B5E5B8F4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1B5E49E64(a1, *(v1 + 16));
}

uint64_t sub_1B5E5B900()
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v0 = swift_task_alloc();
  v1 = sub_1B5E2CEE4(v0);
  *v1 = v2;
  sub_1B5E5EF7C(v1);
  sub_1B5E601A4();

  return sub_1B5E4A020(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B5E5B98C()
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v0 = swift_task_alloc();
  v1 = sub_1B5E2CEE4(v0);
  *v1 = v2;
  sub_1B5E5EF7C(v1);
  sub_1B5E601A4();

  return sub_1B5E4A69C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B5E5BA18()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1B5E2CEE4(v5);
  *v6 = v7;
  sub_1B5E5EFA0(v6);
  sub_1B5E5FEF8();

  return sub_1B5E4A77C(v8, v9, v10, v11, v12);
}

uint64_t sub_1B5E5BAB0()
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v0 = swift_task_alloc();
  v1 = sub_1B5E2CEE4(v0);
  *v1 = v2;
  sub_1B5E5EF7C(v1);
  sub_1B5E601A4();

  return sub_1B5E4A988(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B5E5BB3C()
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E1A084();
  v1 = sub_1B5EA5160();
  sub_1B5E01CF8(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = sub_1B5E2CEE4(v7);
  *v8 = v9;
  v8[1] = sub_1B5E2CDCC;
  sub_1B5E5F094();
  sub_1B5E601A4();

  return sub_1B5E4AD24(v10, v11, v12, v13, v14);
}

uint64_t sub_1B5E5BC0C()
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v0 = swift_task_alloc();
  v1 = sub_1B5E2CEE4(v0);
  *v1 = v2;
  sub_1B5E5EF7C(v1);
  sub_1B5E601A4();

  return sub_1B5E4AF58(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B5E5BC98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B5E5BCE0()
{
  sub_1B5E60190();
  sub_1B5E34EC0();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_1B5E2CEE4(v5);
  *v6 = v7;
  sub_1B5E5EFA0(v6);
  sub_1B5E5FEF8();

  return sub_1B5E4B17C(v8, v9, v10, v11, v12);
}

uint64_t sub_1B5E5BD78()
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v0 = swift_task_alloc();
  v1 = sub_1B5E2CEE4(v0);
  *v1 = v2;
  sub_1B5E5EF7C(v1);
  sub_1B5E601A4();

  return sub_1B5E4B4A4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1B5E5BE04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1B5E5FB08();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B5E5BE50()
{
  sub_1B5E6017C();
  sub_1B5E34EC0();
  sub_1B5E5F160();
  v0 = swift_task_alloc();
  v1 = sub_1B5E2CEE4(v0);
  *v1 = v2;
  sub_1B5E5EF7C(v1);
  sub_1B5E601A4();

  return sub_1B5E4B648(v3, v4, v5, v6, v7, v8);
}

size_t sub_1B5E5BEDC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B5E5C4D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B5E5BEFC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B5E5C6A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1B5E5BF1C()
{
  v1 = *v0;
  sub_1B5E5C8B8();
  *v0 = v2;
}

uint64_t sub_1B5E5BF74(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B5E5C7A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1B5E5BF94()
{
  v1 = *v0;
  sub_1B5E5C8B8();
  *v0 = v2;
}

void sub_1B5E5BFEC()
{
  v1 = *v0;
  sub_1B5E5C8B8();
  *v0 = v2;
}

void sub_1B5E5C044()
{
  v1 = *v0;
  sub_1B5E5C8B8();
  *v0 = v2;
}

uint64_t sub_1B5E5C09C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B5E5CA64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B5E5C0BC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B5E5CB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B5E5C0DC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B5E5CD48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B5E5C0FC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B5E5CF14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B5E5C11C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B5E5D014(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B5E5C13C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(&qword_1EB90ED80, &qword_1B5EB7168);
  v10 = *(sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1B5E6E390(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1B5E5C308(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(&qword_1EB90EDC0, &qword_1B5EB71A0);
  v10 = *(sub_1B5DF33E0(&qword_1EB90EC00, &qword_1B5EB6DC8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B5DF33E0(&qword_1EB90EC00, &qword_1B5EB6DC8) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1B5E6E3A4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1B5E5C4D4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(&qword_1EB90ECC8, &qword_1B5EB70A8);
  v10 = *(sub_1B5DF33E0(&unk_1EB90E970, &unk_1B5EB66C0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B5DF33E0(&unk_1EB90E970, &unk_1B5EB66C0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1B5E6E3B8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1B5E5C6A0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1B5DF33E0(&qword_1EB90ECC0, &qword_1B5EB70A0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1B5E6E3CC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5E5C7A8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1B5DF33E0(&qword_1EB90EC98, &qword_1B5EB7088);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1B5E6E40C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B5DF33E0(&qword_1EB90ECA0, &qword_1B5EB7090);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1B5E5C8B8()
{
  sub_1B5DFD8A8();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(v2, v3);
  v16 = v7(0);
  sub_1B5E01C50(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = j__malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v24 = *(*(v7(0) - 8) + 80);
  sub_1B5E34D90();
  if (v10)
  {
    v5(v8 + v25, v14, v21 + v25);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_1B5DFD8C0();
}

uint64_t sub_1B5E5CA64(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1B5DF33E0(&qword_1EB90EC60, &qword_1B5EB7048);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1B5E6E530((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1B5DF33E0(&qword_1EB90EC58, &qword_1B5EB7040);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1B5E5CB7C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(&qword_1EB90ECE8, &unk_1B5EB70C0);
  v10 = *(sub_1B5DF33E0(&qword_1EB90ECF0, &qword_1B5EB73F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B5DF33E0(&qword_1EB90ECF0, &qword_1B5EB73F0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1B5E6E578(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1B5E5CD48(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(&qword_1EB90ED00, &unk_1B5EB70E0);
  v10 = *(sub_1B5DF33E0(&qword_1EB90ED08, &unk_1B5EB7400) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B5DF33E0(&qword_1EB90ED08, &unk_1B5EB7400) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1B5E6E58C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1B5E5CF14(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1B5DF33E0(&qword_1EB90ED10, &unk_1B5EB70F0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1B5E6E558((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_1B5E5D014(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B5DF33E0(&qword_1EB90ECF8, &unk_1B5EB70D0);
  v10 = *(sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1B5E6E5A0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1B5E5D1E0()
{
  v1 = v0;
  v2 = *v0;
  sub_1B5E5AF88();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v7 = *(*v1 + 24);
  sub_1B5DF33E0(&qword_1EB90ED30, &qword_1B5EB7108);
  sub_1B5EA5C70();
  v8 = *(v12 + 48);
  v9 = sub_1B5EA4340();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v12 + 56) + 8 * v5);
  sub_1B5DF33E0(&qword_1EB90ED38, &unk_1B5EB7110);
  sub_1B5E47A4C(&qword_1EB90ED28, 255, MEMORY[0x1E69695A8]);
  sub_1B5EA5C90();
  *v1 = v12;
  return v10;
}

uint64_t sub_1B5E5D330@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_1B5E5AF88();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v27 = *v2;
    v9 = *(*v2 + 24);
    v10 = sub_1B5E5FB64();
    sub_1B5DF33E0(v10, v11);
    sub_1B5EA5C70();
    v12 = *(v27 + 48);
    v13 = sub_1B5EA4340();
    sub_1B5DF5EB8(v13);
    (*(v14 + 8))(v12 + *(v14 + 72) * v7, v13);
    v15 = *(v27 + 56);
    v16 = sub_1B5E433C0();
    v18 = sub_1B5DF33E0(v16, v17);
    sub_1B5DF5EB8(v18);
    (*(v19 + 32))(a1, v15 + *(v19 + 72) * v7, v18);
    sub_1B5E47A4C(&qword_1EB90ED28, 255, MEMORY[0x1E69695A8]);
    sub_1B5EA5C90();
    *v2 = v27;
    v20 = sub_1B5E34D9C();
    v23 = v18;
  }

  else
  {
    v24 = sub_1B5E433C0();
    sub_1B5DF33E0(v24, v25);
    sub_1B5DF5DF0();
  }

  return sub_1B5DF3658(v20, v21, v22, v23);
}

uint64_t sub_1B5E5D4D4(uint64_t a1, uint64_t a2)
{
  result = sub_1B5E47A4C(&qword_1EB90CEF0, a2, type metadata accessor for GenerativeExperiencesSessionClient);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for GenerativeExperiencesSessionXPCService(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x130))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
}

uint64_t dispatch thunk of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x138))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x148))();
}

uint64_t dispatch thunk of GenerativeExperiencesSessionClient.undo()()
{
  sub_1B5E2CED8();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x180);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_1B5E2CEE4(v3);
  *v4 = v5;
  v6 = sub_1B5E60030(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GenerativeExperiencesSessionClient.redo()()
{
  sub_1B5E2CED8();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x188);
  v9 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_1B5E2CEE4(v3);
  *v4 = v5;
  v6 = sub_1B5E60030(v4);

  return v7(v6);
}

unint64_t sub_1B5E5DF1C()
{
  result = qword_1EB90EC40;
  if (!qword_1EB90EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EC40);
  }

  return result;
}

unint64_t sub_1B5E5DFD0()
{
  result = qword_1EB90EC80;
  if (!qword_1EB90EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EC80);
  }

  return result;
}

uint64_t sub_1B5E5E068@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1B5E5AE4C();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    v9 = *(*v2 + 24);
    sub_1B5DF33E0(&qword_1EB90ECE0, &qword_1B5EB70B8);
    sub_1B5EA5C70();
    v10 = *(*(v17 + 48) + 16 * v7 + 8);

    v11 = *(v17 + 56);
    v12 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
    (*(*(v12 - 8) + 32))(a1, v11 + *(*(v12 - 8) + 72) * v7, v12);
    sub_1B5EA5C90();
    *v2 = v17;
    v13 = a1;
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
    v13 = a1;
    v14 = 1;
  }

  return sub_1B5DF3658(v13, v14, 1, v15);
}

uint64_t sub_1B5E5E1E0()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1B5E5FBB0();
  v12 = v0[15];
  return v10(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1B5E5E268(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B5E5E2C4(uint64_t a1)
{
  v3 = v2;
  v4 = sub_1B5EA5470();
  sub_1B5E01C50(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = sub_1B5EA4820();
  sub_1B5E01C50(v9);
  v11 = (v8 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v13 = *(v12 + 64);
  v14 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01C50(v14);
  v16 = (v11 + v13 + *(v15 + 80)) & ~*(v15 + 80);
  v18 = *(v17 + 64);
  v19 = sub_1B5EA4D20();
  sub_1B5E01C50(v19);
  v21 = (v16 + v18 + *(v20 + 80)) & ~*(v20 + 80);
  v23 = *(v22 + 64);
  v24 = sub_1B5EA4CC0();
  sub_1B5E01C50(v24);
  v26 = (v21 + v23 + *(v25 + 80)) & ~*(v25 + 80);
  v28 = *(v1 + v8);
  v29 = (v1 + ((*(v27 + 64) + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = *v29;
  v30 = v29[1];
  v32 = swift_task_alloc();
  *(v3 + 16) = v32;
  *v32 = v3;
  v32[1] = sub_1B5E2C184;

  return sub_1B5E4E544(a1, v1 + v6, v28, v1 + v11, v1 + v16, v1 + v21, v1 + v26, v31);
}
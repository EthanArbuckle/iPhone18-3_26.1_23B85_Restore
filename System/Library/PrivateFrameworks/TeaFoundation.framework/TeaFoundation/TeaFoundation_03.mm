uint64_t sub_1BF01DDD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_1BF01DE20(unint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1BF178D8C();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v11 = a1[3];
  v40 = 58;
  v41 = 0xE100000000000000;
  v39 = &v40;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v13 = sub_1BF01A1B0(1, 1u, sub_1BF01C1EC, v38, v9, v10, v12, v11);
  v42 = v3;
  v14 = *(v13 + 16);
  if (v14)
  {
    v34 = v6;
    v35 = a2;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v15 = 0;
    v16 = v40;
    v17 = (v13 + 56);
    while (v15 < *(v13 + 16))
    {
      v19 = *(v17 - 3);
      v18 = *(v17 - 2);
      v21 = *(v17 - 1);
      v20 = *v17;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v22 = MEMORY[0x1BFB51F50](v19, v18, v21, v20);
      v24 = v23;

      v40 = v16;
      v25 = v16[2];
      if (v25 >= v16[3] >> 1)
      {
        sub_1BF00DD60();
        v16 = v40;
      }

      ++v15;
      v16[2] = v25 + 1;
      v26 = &v16[2 * v25];
      v26[4] = v22;
      v26[5] = v24;
      v17 += 4;
      if (v14 == v15)
      {

        v6 = v34;
        a2 = v35;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
LABEL_9:
    if (v16[2])
    {
      v27 = v16[4];
      v28 = v16[5];
      v29 = sub_1BF01E130(v16);
      v31 = v30;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

      if (v31)
      {
        sub_1BF17A15C();

        v40 = v29;
        v41 = v31;
        v32 = v36;
        sub_1BF178D5C();
        sub_1BF013170();
        sub_1BF17AF4C();
        (*(v37 + 8))(v32, v6);

        v33 = *a2;
        swift_isUniquelyReferenced_nonNull_native();
        v40 = *a2;
        sub_1BF010A20();
        *a2 = v40;
      }
    }
  }
}

uint64_t sub_1BF01E130(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v5;
}

uint64_t sub_1BF01E178(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      if (v5 != 8202875 || v6 != 0xE300000000000000)
      {
        v8 = *(i - 1);
        v9 = *i;
        v10 = *(v3 - 1);
        v11 = *v3;
        if ((sub_1BF17B86C() & 1) == 0)
        {
          v12 = v8 == 8202875 && v9 == 0xE300000000000000;
          if (!v12 && (sub_1BF17B86C() & 1) == 0)
          {
            v13 = v5 == v8 && v6 == v9;
            if (!v13 && (sub_1BF17B86C() & 1) == 0)
            {
              break;
            }
          }
        }
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1BF01E288()
{
  OUTLINED_FUNCTION_34_0();
  v1 = *(v0 + 8);
  sub_1BF00DD94(v7, *v0);
  sub_1BF01A6B4(v7, v1);
  MEMORY[0x1BFB53950](*(v0 + 16));
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1BF179F3C();
  sub_1BF01FC04(v7, *(v0 + 40));
  sub_1BF01A6B4(v7, *(v0 + 48));
  sub_1BF17BB9C();
  v4 = OUTLINED_FUNCTION_75();

  return sub_1BF01FD48(v4, v5);
}

void sub_1BF01E31C(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  sub_1BF0115C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF01A748(0, &qword_1ED8EAEA0, MEMORY[0x1E6977D78], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - v11;
  v13 = sub_1BF179B3C();
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_1BF00F4E4(a1, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_1BF00F578(v12, &qword_1ED8EAEA0, MEMORY[0x1E6977D78]);
      swift_storeEnumTagMultiPayload();
      a3(v8);
      sub_1BF02F424(v8, sub_1BF0115C4);
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v22 = sub_1BF1797FC();
      __swift_project_value_buffer(v22, qword_1ED8F5298);

      v23 = sub_1BF1797DC();
      v24 = sub_1BF17ACDC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v49 = v26;
        *v25 = 136446210;
        v27 = *(v21 + 40);
        v28 = *(v21 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v29 = sub_1BF01A7AC(v27, v28, &v49);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_1BEFE0000, v23, v24, "SocketConnection:[%{public}s] sent data successfully", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x1BFB547B0](v26, -1, -1);
        MEMORY[0x1BFB547B0](v25, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v30 = v48;
      (*(v48 + 32))(v19, v12, v13);
      v31 = *(v30 + 16);
      v31(v8, v19, v13);
      swift_storeEnumTagMultiPayload();
      a3(v8);
      sub_1BF02F424(v8, sub_1BF0115C4);
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v32 = sub_1BF1797FC();
      __swift_project_value_buffer(v32, qword_1ED8F5298);
      v31(v17, v19, v13);

      v33 = sub_1BF1797DC();
      v34 = sub_1BF17ACBC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v49 = v47;
        *v35 = 136446466;
        v45 = v31;
        v37 = *(v21 + 40);
        v36 = *(v21 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v38 = sub_1BF01A7AC(v37, v36, &v49);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2114;
        sub_1BF01C404(&qword_1ED8EAEA8, MEMORY[0x1E6977D78]);
        swift_allocError();
        v45(v39, v17, v13);
        v40 = _swift_stdlib_bridgeErrorToNSError();
        v41 = *(v48 + 8);
        v41(v17, v13);
        *(v35 + 14) = v40;
        v42 = v46;
        *v46 = v40;
        _os_log_impl(&dword_1BEFE0000, v33, v34, "SocketConnection:[%{public}s] failed to send data with error: %{public}@", v35, 0x16u);
        sub_1BF02F424(v42, sub_1BF082F84);
        MEMORY[0x1BFB547B0](v42, -1, -1);
        v43 = v47;
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x1BFB547B0](v43, -1, -1);
        MEMORY[0x1BFB547B0](v35, -1, -1);

        v41(v19, v13);
      }

      else
      {

        v44 = *(v48 + 8);
        v44(v17, v13);
        v44(v19, v13);
      }
    }
  }
}

uint64_t (*sub_1BF01E9A0(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t sub_1BF01EA18()
{
  v1 = v0;
  v2 = v0[4];
  type metadata accessor for SocketConnection();
  swift_allocObject();
  v3 = v2;

  v5 = sub_1BF01D7F4(v4, v3);
  v6 = v0[5];
  v7 = v1[6];
  type metadata accessor for HttpConnectionHandler();
  swift_allocObject();

  sub_1BF01C44C(v5, v6, v7);
  v8 = v1[8];
  UnfairLock.lock()();
  swift_beginAccess();

  MEMORY[0x1BFB52290](v9);
  sub_1BF005F5C(*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF17A59C();
  swift_endAccess();
  os_unfair_lock_unlock(*(v8 + 16));
}

uint64_t sub_1BF01EBA0()
{
  v1 = *(v0 + 16);
  swift_allocObject();
  swift_weakInit();

  sub_1BF009984(sub_1BF01EC80);
  sub_1BF1799CC();

  sub_1BF01DB38();
  v2 = *(v0 + 24);
  return sub_1BF1799FC();
}

uint64_t sub_1BF01EC48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BF01EC88(uint64_t a1)
{
  v2 = sub_1BF179B3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v85 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v90 = (&v85 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v85 - v13;
  v15 = sub_1BF1799EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    (*(v16 + 16))(v19, a1, v15);
    v22 = (*(v16 + 88))(v19, v15);
    if (v22 == *MEMORY[0x1E6977C18])
    {
      (*(v16 + 96))(v19, v15);
      v23 = v3;
      v24 = *(v3 + 32);
      v25 = v2;
      v24(v10, v19, v2);
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v26 = sub_1BF1797FC();
      __swift_project_value_buffer(v26, qword_1ED8F5298);
      v27 = *(v23 + 16);
      v27(v7, v10, v2);

      v28 = sub_1BF1797DC();
      v29 = sub_1BF17ACBC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v91 = v90;
        *v30 = 136446466;
        v88 = v21;
        v89 = v23;
        v32 = *(v21 + 40);
        v31 = *(v21 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v33 = sub_1BF01A7AC(v32, v31, &v91);

        *(v30 + 4) = v33;
        *(v30 + 12) = 2114;
        sub_1BF01C404(&qword_1ED8EAEA8, MEMORY[0x1E6977D78]);
        swift_allocError();
        v27(v34, v7, v25);
        v35 = _swift_stdlib_bridgeErrorToNSError();
        v36 = *(v89 + 8);
        v36(v7, v25);
        *(v30 + 14) = v35;
        v37 = v87;
        *v87 = v35;
        _os_log_impl(&dword_1BEFE0000, v28, v29, "SocketConnection:[%{public}s] waiting with error %{public}@", v30, 0x16u);
        sub_1BF02F424(v37, sub_1BF082F84);
        MEMORY[0x1BFB547B0](v37, -1, -1);
        v38 = v90;
        __swift_destroy_boxed_opaque_existential_1(v90);
        MEMORY[0x1BFB547B0](v38, -1, -1);
        MEMORY[0x1BFB547B0](v30, -1, -1);

        v36(v10, v25);
        return;
      }

      v56 = *(v23 + 8);
      v56(v7, v2);
      v57 = v10;
LABEL_19:
      v56(v57, v25);
      return;
    }

    if (v22 == *MEMORY[0x1E6977C10])
    {
      (*(v16 + 96))(v19, v15);
      v39 = v3;
      v40 = *(v3 + 32);
      v25 = v2;
      v40(v14, v19, v2);
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v41 = sub_1BF1797FC();
      __swift_project_value_buffer(v41, qword_1ED8F5298);
      v42 = *(v39 + 16);
      v43 = v90;
      v42(v90, v14, v25);

      v44 = sub_1BF1797DC();
      v45 = sub_1BF17ACBC();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v87 = v14;
        v47 = v46;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v91 = v86;
        *v47 = 136446466;
        v89 = v39;
        v49 = *(v21 + 40);
        v48 = *(v21 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v50 = sub_1BF01A7AC(v49, v48, &v91);

        *(v47 + 4) = v50;
        *(v47 + 12) = 2114;
        sub_1BF01C404(&qword_1ED8EAEA8, MEMORY[0x1E6977D78]);
        swift_allocError();
        v42(v51, v43, v25);
        v52 = _swift_stdlib_bridgeErrorToNSError();
        v53 = *(v89 + 8);
        v53(v43, v25);
        *(v47 + 14) = v52;
        v54 = v85;
        *v85 = v52;
        _os_log_impl(&dword_1BEFE0000, v44, v45, "SocketConnection:[%{public}s] failed with error %{public}@", v47, 0x16u);
        sub_1BF02F424(v54, sub_1BF082F84);
        MEMORY[0x1BFB547B0](v54, -1, -1);
        v55 = v86;
        __swift_destroy_boxed_opaque_existential_1(v86);
        MEMORY[0x1BFB547B0](v55, -1, -1);
        MEMORY[0x1BFB547B0](v47, -1, -1);

        v53(v87, v25);
        return;
      }

      v56 = *(v39 + 8);
      v56(v43, v25);
      v57 = v14;
      goto LABEL_19;
    }

    if (v22 == *MEMORY[0x1E6977C08])
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v58 = sub_1BF1797FC();
      __swift_project_value_buffer(v58, qword_1ED8F5298);

      v59 = sub_1BF1797DC();
      v60 = sub_1BF17ACDC();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = v21;
        v63 = swift_slowAlloc();
        v91 = v63;
        *v61 = 136446210;
        v64 = *(v62 + 40);
        v65 = *(v62 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v66 = sub_1BF01A7AC(v64, v65, &v91);

        *(v61 + 4) = v66;
        v67 = "SocketConnection:[%{public}s] connection setup";
LABEL_25:
        _os_log_impl(&dword_1BEFE0000, v59, v60, v67, v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1BFB547B0](v63, -1, -1);
        MEMORY[0x1BFB547B0](v61, -1, -1);

LABEL_26:

        return;
      }

      goto LABEL_38;
    }

    if (v22 == *MEMORY[0x1E6977C28])
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v68 = sub_1BF1797FC();
      __swift_project_value_buffer(v68, qword_1ED8F5298);

      v59 = sub_1BF1797DC();
      v60 = sub_1BF17ACDC();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v69 = v21;
        v63 = swift_slowAlloc();
        v91 = v63;
        *v61 = 136446210;
        v70 = *(v69 + 40);
        v71 = *(v69 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v72 = sub_1BF01A7AC(v70, v71, &v91);

        *(v61 + 4) = v72;
        v67 = "SocketConnection:[%{public}s] preparing setup";
        goto LABEL_25;
      }

      goto LABEL_38;
    }

    if (v22 == *MEMORY[0x1E6977C00])
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v73 = sub_1BF1797FC();
      __swift_project_value_buffer(v73, qword_1ED8F5298);

      v59 = sub_1BF1797DC();
      v74 = sub_1BF17ACDC();

      if (!os_log_type_enabled(v59, v74))
      {
LABEL_38:

        return;
      }

      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v91 = v76;
      *v75 = 136446210;
      v77 = *(v21 + 40);
      v78 = *(v21 + 48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v79 = sub_1BF01A7AC(v77, v78, &v91);

      *(v75 + 4) = v79;
      v80 = "SocketConnection:[%{public}s] connection ready";
    }

    else
    {
      if (v22 != *MEMORY[0x1E6977C20])
      {

        (*(v16 + 8))(v19, v15);
        return;
      }

      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v81 = sub_1BF1797FC();
      __swift_project_value_buffer(v81, qword_1ED8F5298);

      v59 = sub_1BF1797DC();
      v74 = sub_1BF17ACDC();

      if (!os_log_type_enabled(v59, v74))
      {
        goto LABEL_38;
      }

      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v91 = v76;
      *v75 = 136446210;
      v82 = *(v21 + 40);
      v83 = *(v21 + 48);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v84 = sub_1BF01A7AC(v82, v83, &v91);

      *(v75 + 4) = v84;
      v80 = "SocketConnection:[%{public}s] connection cancelled";
    }

    _os_log_impl(&dword_1BEFE0000, v59, v74, v80, v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1BFB547B0](v76, -1, -1);
    MEMORY[0x1BFB547B0](v75, -1, -1);

    goto LABEL_26;
  }
}

uint64_t sub_1BF01F8EC(uint64_t a1)
{
  sub_1BF013118();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF01F948(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_1BF01FA0C();
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 32);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1BF01FA0C()
{
  if (!qword_1ED8EDD00)
  {
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EDD00);
    }
  }
}

uint64_t sub_1BF01FA5C(uint64_t result, uint64_t *a2)
{
  v4 = *(result + 16);
  v5 = (result + 56);
  if (v4)
  {
    while (1)
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = *(v5 - 3);
      v9 = v6;
      v10 = v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01DE20(&v8, a2);
      if (v2)
      {
        break;
      }

      v5 += 4;
      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1BF01FAF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = OUTLINED_FUNCTION_3_14(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * v6);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_16(v7, v16);
  }
}

uint64_t OUTLINED_FUNCTION_34()
{

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_34_0()
{
  v2 = *(v0 + 40);

  return sub_1BF17BB6C();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return sub_1BF17941C();
}

unint64_t OUTLINED_FUNCTION_34_2(uint64_t a1)
{

  return sub_1BEFE81F8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_34_4()
{

  return sub_1BF17A2AC();
}

uint64_t sub_1BF01FC04(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(*(a2 + 48) + 8 * v13);
    v15 = (*(a2 + 56) + 16 * v13);
    v16 = *v15;
    v17 = v15[1];
    memcpy(__dst, a1, sizeof(__dst));
    MEMORY[0x1BFB53950](v14);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF179F3C();

    result = sub_1BF17BB9C();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1BFB53950](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF01FD48(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v38 = ~v3;
    v35 = *a1;
    v5 = *(*a1 + 16);
    v37 = a1[1];
    v34 = *a1 + 40;
    do
    {
      memcpy(__dst, (*(v2 + 48) + 72 * v4), 0x48uLL);
      if (*(__dst[0] + 16) == v5)
      {
        v6 = __dst[1];
        if (!v5 || __dst[0] == v35)
        {
LABEL_13:
          v11 = *(v6 + 16);
          if (v11 == *(v37 + 16))
          {
            if (!v11 || v6 == v37)
            {
LABEL_28:
              if (LOBYTE(__dst[2]) == *(a1 + 16))
              {
                v20 = __dst[3] == a1[3] && __dst[4] == a1[4];
                if (v20 || (sub_1BF17B86C() & 1) != 0)
                {
                  v21 = __dst[5];
                  v22 = a1[5];
                  sub_1BF013314(__dst, v39);
                  if (sub_1BF073DD0(v21, v22))
                  {
                    v23 = a1[6];
                    v24 = *(__dst[6] + 16);
                    if (v24 == *(v23 + 16))
                    {
                      if (!v24 || __dst[6] == v23)
                      {
LABEL_54:
                        sub_1BF0187DC(__dst);
                        return v4;
                      }

                      v25 = (__dst[6] + 56);
                      v26 = (v23 + 56);
                      while (1)
                      {
                        v27 = *(v25 - 1);
                        v28 = *v25;
                        v29 = *(v26 - 1);
                        v30 = *v26;
                        v31 = *(v25 - 3) == *(v26 - 3) && *(v25 - 2) == *(v26 - 2);
                        if (!v31 && (sub_1BF17B86C() & 1) == 0)
                        {
                          break;
                        }

                        v32 = v27 == v29 && v28 == v30;
                        if (!v32 && (sub_1BF17B86C() & 1) == 0)
                        {
                          break;
                        }

                        v25 += 4;
                        v26 += 4;
                        if (!--v24)
                        {
                          goto LABEL_54;
                        }
                      }
                    }
                  }

                  sub_1BF0187DC(__dst);
                }
              }
            }

            else
            {
              v12 = (v6 + 56);
              v13 = (v37 + 56);
              while (1)
              {
                v14 = *(v12 - 1);
                v15 = *v12;
                v16 = *(v13 - 1);
                v17 = *v13;
                v18 = *(v12 - 3) == *(v13 - 3) && *(v12 - 2) == *(v13 - 2);
                if (!v18 && (sub_1BF17B86C() & 1) == 0)
                {
                  break;
                }

                v19 = v14 == v16 && v15 == v17;
                if (!v19 && (sub_1BF17B86C() & 1) == 0)
                {
                  break;
                }

                v12 += 4;
                v13 += 4;
                if (!--v11)
                {
                  goto LABEL_28;
                }
              }
            }
          }
        }

        else
        {
          v7 = (__dst[0] + 40);
          v8 = v34;
          v9 = v5;
          while (1)
          {
            v10 = *(v7 - 1) == *(v8 - 1) && *v7 == *v8;
            if (!v10 && (sub_1BF17B86C() & 1) == 0)
            {
              break;
            }

            v7 += 2;
            v8 += 2;
            if (!--v9)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v4 = (v4 + 1) & v38;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1BF02002C(const void *a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  sub_1BF00DD94(a1, *v2);
  sub_1BF01A6B4(a1, v4);
  MEMORY[0x1BFB53950](*(v2 + 16));
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  sub_1BF179F3C();
  sub_1BF01FC04(a1, *(v2 + 40));
  v7 = *(v2 + 48);

  sub_1BF01A6B4(a1, v7);
}

uint64_t sub_1BF0200A4()
{
  sub_1BF17BB6C();
  sub_1BF02002C(v1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0200E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if ((sub_1BF00E380(*a1, *a2) & 1) == 0 || (sub_1BF074078(v4, v5) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v6 && (sub_1BF17B86C() & 1) == 0 || (sub_1BF073DD0(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 48);
  v8 = *(a2 + 48);

  return sub_1BF074078(v7, v8);
}

void sub_1BF0201A4()
{
  OUTLINED_FUNCTION_41_2();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_16_4(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v12);
    OUTLINED_FUNCTION_15_4();
    v12[2] = v2;
    v12[3] = v13;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v12 != v0 || &v15[16 * v2] <= v14)
    {
      memmove(v14, v15, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF02027C()
{
  if (!qword_1ED8EE9D0)
  {
    v0 = sub_1BF17A65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EE9D0);
    }
  }
}

BOOL sub_1BF0202CC(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1BF020330(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t))
{
  sub_1BF0115C4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_1BF02061C(a1, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      a5(256);

      return sub_1BF02F47C(v12, sub_1BF0115C4);
    }

    else
    {
      if (qword_1ED8EE9F0 != -1)
      {
        swift_once();
      }

      v15 = sub_1BF1797FC();
      __swift_project_value_buffer(v15, qword_1ED8F5298);

      sub_1BF014DC0(a3, a4);
      v16 = sub_1BF1797DC();
      v17 = sub_1BF17ACDC();

      sub_1BF014E18(a3, a4);
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30[0] = v28;
        *v18 = 136446466;
        v19 = *(v14 + 16);
        v20 = *(v19 + 40);
        v21 = *(v19 + 48);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v22 = sub_1BF01A7AC(v20, v21, v30);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2082;
        v29 = MEMORY[0x1BFB51150](a3, a4);
        v23 = sub_1BF17B6FC();
        v25 = sub_1BF01A7AC(v23, v24, v30);

        *(v18 + 14) = v25;
        _os_log_impl(&dword_1BEFE0000, v16, v17, "HttpConnectionHandler:[%{public}s] send data with size: %{public}s", v18, 0x16u);
        v26 = v28;
        swift_arrayDestroy();
        MEMORY[0x1BFB547B0](v26, -1, -1);
        MEMORY[0x1BFB547B0](v18, -1, -1);
      }

      a5(0);
    }
  }

  return result;
}

uint64_t sub_1BF02061C(uint64_t a1, uint64_t a2)
{
  sub_1BF0115C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OnlyOnceDeferredPromise.resolve(_:)()
{
  v1 = v0;
  v2 = *(v0 + 32);
  UnfairLock.lock()();
  if (*(v1 + 24))
  {
    v3 = *(v1 + 24);

    sub_1BF014F34();

    OUTLINED_FUNCTION_6_44();
  }

  sub_1BF02075C(v1);
}

Swift::Void __swiftcall OnlyOnceDeferredPromise.cancel()()
{
  v1 = v0;
  v2 = *(v0 + 32);
  UnfairLock.lock()();
  if (*(v1 + 24))
  {
    v3 = *(v1 + 24);

    sub_1BF094280();

    OUTLINED_FUNCTION_6_44();
  }

  sub_1BF02075C(v1);
}

uint64_t SyncObservable.next(value:quiet:)(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16[-v12];
  sub_1BF17A75C();
  OUTLINED_FUNCTION_0_30();
  sub_1BF17B15C();
  v14 = *(v2 + 16);
  v17 = v6;
  v18 = a1;
  sub_1BEFFB4E8(sub_1BF020960, v16, v14, v6, v6);
  if ((a2 & 1) == 0)
  {
    sub_1BF02097C(v13, a1);
  }

  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_1BF0208A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  (*(v7 + 32))(a4, a1);
  return (*(v7 + 16))(a1, a2, a3);
}

uint64_t sub_1BF02097C(uint64_t a1, uint64_t a2)
{
  sub_1BF028388(a2);

  return sub_1BF0285A4(a1, a2);
}

uint64_t SyncObservable.onChange(block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  sub_1BF17A75C();
  OUTLINED_FUNCTION_0_30();
  sub_1BF17B15C();
  v8 = *(v7 + 80);
  swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for Observer();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a1;
  v10[4] = a2;

  v13 = sub_1BEFFB654(v11, sub_1BF0547E0, v10);
  swift_beginAccess();
  sub_1BF17A65C();

  sub_1BF17A5DC();
  result = swift_endAccess();
  a3[3] = v9;
  a3[4] = &off_1F3DBCCA8;
  *a3 = v13;
  return result;
}

uint64_t sub_1BF020B30()
{
  v1 = *(v0 + 32);

  v2 = OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void *URLHandlerManager.init()()
{
  v1 = *(*v0 + 80);
  OUTLINED_FUNCTION_40();
  type metadata accessor for AnyURLHandler();
  OUTLINED_FUNCTION_12_1();
  v0[2] = sub_1BF17A56C();
  OUTLINED_FUNCTION_40();
  type metadata accessor for AnyAsyncURLHandler();
  OUTLINED_FUNCTION_12_1();
  v0[3] = sub_1BF17A56C();
  OUTLINED_FUNCTION_40();
  type metadata accessor for AnyURLHandlerProcessor();
  OUTLINED_FUNCTION_12_1();
  v0[4] = sub_1BF17A56C();
  return v0;
}

uint64_t sub_1BF020BE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF020C3C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF020C90()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t URLHandlerManager.add<A>(processor:)()
{
  OUTLINED_FUNCTION_5_18();
  v1 = *v0;
  OUTLINED_FUNCTION_2_3();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = OUTLINED_FUNCTION_0_49(v5, v17);
  v7(v6);
  v8 = *(v1 + 80);
  v9 = OUTLINED_FUNCTION_4_19();
  v13 = sub_1BF020DA8(v9, v10, v11, v12);
  OUTLINED_FUNCTION_2_29(v13, v14, v15);
  type metadata accessor for AnyURLHandlerProcessor();
  OUTLINED_FUNCTION_12_1();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_7_20();
  return swift_endAccess();
}

uint64_t sub_1BF020DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_0_65(a1, a2, a3, a4);
  v7(v6);
  v8 = OUTLINED_FUNCTION_2_51();
  sub_1BF020E44(v8, v9, v10, v11);
  OUTLINED_FUNCTION_3_37();
  (*(v12 + 8))(v4, v5);
  return OUTLINED_FUNCTION_5_31();
}

uint64_t URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  return sub_1BF020F74(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

{
  return URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t (*sub_1BF020E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BF10EC24;
}

uint64_t sub_1BF020F74@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t sub_1BF020FA8()
{
  result = sub_1BF1794FC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *PromiseDebouncer.init(interval:queue:)(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1BF1794EC();
  v7 = qword_1ED8EA980;
  sub_1BF1794FC();
  v8 = *(v6 + 80);
  type metadata accessor for OnlyOnceDeferredPromise();
  OUTLINED_FUNCTION_0_47();
  sub_1BEFE7288(v9, v10);
  *(v3 + v7) = sub_1BF179CEC();
  *(v3 + qword_1ED8EA998) = 0;
  v11 = qword_1ED8EA9A0;
  v13 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v3 + v11) = UnfairLock.init(options:)(&v13);
  *(v3 + qword_1ED8EA988) = a2;
  *(v3 + qword_1ED8EA990) = a1;
  return v3;
}

uint64_t PromiseDebouncer.debounce(_:)(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t))
{
  v3 = v2;
  v32 = *v2;
  v33 = a2;
  v5 = sub_1BF1794FC();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = *(v2 + qword_1ED8EA9A0);

  UnfairLock.lock()();

  v17 = qword_1ED8EA9A8;
  swift_beginAccess();
  v18 = *(v8 + 16);
  v18(v15, v3 + v17, v5);
  sub_1BF0214AC(v15, a1, v33);
  v30 = *(v8 + 8);
  v30(v15, v5);
  v31 = v17;
  v19 = v13;
  v33 = v18;
  v18(v13, v3 + v17, v5);
  v20 = qword_1ED8EA980;
  swift_beginAccess();
  v21 = *(v3 + v20);
  v22 = *(v32 + 80);
  type metadata accessor for OnlyOnceDeferredPromise();
  OUTLINED_FUNCTION_0_47();
  sub_1BEFE7288(v23, v24);
  sub_1BF179EAC();
  v25 = v34;
  swift_endAccess();
  v30(v19, v5);
  if (!v25)
  {
    v25 = OnlyOnceDeferredPromise.__allocating_init()();
  }

  v33(v15, v3 + v31, v5);
  v34 = v25;
  swift_beginAccess();
  sub_1BF179E9C();

  sub_1BF179EBC();
  swift_endAccess();
  result = swift_beginAccess();
  v27 = *(v25 + 16);
  if (v27)
  {
    v28 = *(v25 + 16);

    sub_1BF021498(v3);
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0214AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v36 = *v3;
  v7 = sub_1BF179BEC();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v35 - v11;
  v37 = sub_1BF179B5C();
  v12 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF1794FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = qword_1ED8EA998;
  if (*(v3 + qword_1ED8EA998))
  {

    sub_1BF179C3C();

    v18 = *(v3 + v17);
  }

  *(v3 + v17) = 0;

  v19 = swift_allocObject();
  swift_weakInit();
  (*(v15 + 16))(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = *(v36 + 80);
  *(v21 + 3) = v19;
  *(v21 + 4) = a2;
  *(v21 + 5) = v39;
  (*(v15 + 32))(&v21[v20], &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  aBlock[4] = sub_1BF0D10A0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_7;
  _Block_copy(aBlock);
  v44 = MEMORY[0x1E69E7CC0];
  sub_1BEFE7288(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60]);
  sub_1BF027D54(0);
  sub_1BEFE7288(&qword_1ED8EFBD0, sub_1BF027D54);

  sub_1BF17B0BC();
  v22 = sub_1BF179C4C();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1BF179C2C();

  v26 = *(v4 + v17);
  *(v4 + v17) = v25;

  v27 = *(v4 + qword_1ED8EA990);
  v28 = v40;
  sub_1BF179BDC();
  v29 = *(v4 + qword_1ED8EA988);
  v30 = v41;
  sub_1BF179C6C();
  v31 = *(v42 + 8);
  v32 = v28;
  v33 = v43;
  v31(v32, v43);
  sub_1BF17AD3C();

  return (v31)(v30, v33);
}

uint64_t sub_1BF02194C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF021984()
{
  v1 = sub_1BF1794FC();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  v9 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t OnlyOnceDeferredPromise.__allocating_init()()
{
  v0 = swift_allocObject();
  OnlyOnceDeferredPromise.init()();
  return v0;
}

uint64_t combine<A, B>(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = swift_allocObject();
  v6 = *(v3 + 80);
  *(v5 + 16) = v6;
  *(v5 + 24) = a2;
  v7 = *(v4 + 80);

  OUTLINED_FUNCTION_102();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_1BF014EDC(v6, TupleTypeMetadata2);
  Promise.then<A>(on:closure:)();
  v11 = v10;

  return v11;
}

uint64_t sub_1BF021B60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF021B98(uint64_t *a1, void *a2, void (*a3)(uint64_t, uint64_t *))
{
  v4 = *a1;
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 72))(v5, v6);
  v9[3] = swift_getObjectType();
  v9[0] = v4;
  swift_unknownObjectRetain();
  a3(v7, v9);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1BF021C50(uint64_t a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = sub_1BF17B84C();
  (*(a3 + 16))(a3, a1, v5);

  return swift_unknownObjectRelease();
}

void sub_1BF021CF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *DeviceStorageManager.init()()
{
  v1 = v0;
  sub_1BF021CF0(0, &qword_1ED8EAB90, &type metadata for DeviceStoragePurgeUrgency, type metadata accessor for AsyncObservable);
  swift_allocObject();
  v2 = sub_1BF021EB4(0);
  v3 = MEMORY[0x1E69E7CC0];
  v0[2] = v2;
  v0[3] = v3;
  v7 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v0[4] = UnfairLock.init(options:)(&v7);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = qword_1ED8EF148;

  if (v5 != -1)
  {
    swift_once();
  }

  TaskScheduler.scheduleLowPriority(_:)(sub_1BF021F24, v4);

  return v1;
}

uint64_t sub_1BF021E7C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF021EB4(char a1)
{
  v6 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v3 = UnfairLock.init(options:)(&v6);
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  *(v1 + 32) = a1;
  return v1;
}

uint64_t sub_1BF021F2C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_opt_self() mainBundle];
    sub_1BF009264(v2);
    v3 = sub_1BF17A07C();

    v14 = sub_1BF0D2D14;
    v15 = v1;
    aBlock = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_1BF0D1E3C;
    v13 = &block_descriptor_8;
    v4 = _Block_copy(&aBlock);

    v14 = sub_1BF0D2D18;
    v15 = v1;
    aBlock = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_1BF0D1E3C;
    v13 = &block_descriptor_19;
    v5 = _Block_copy(&aBlock);

    v14 = nullsub_1;
    v15 = v1;
    aBlock = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_1BF0058CC;
    v13 = &block_descriptor_22;
    v6 = _Block_copy(&aBlock);

    v14 = OUTLINED_FUNCTION_0_4;
    v15 = v1;
    aBlock = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_1BF0D1E3C;
    v13 = &block_descriptor_25;
    v7 = _Block_copy(&aBlock);

    v8 = CacheDeleteRegisterInfoCallbacksForProcess();
    _Block_release(v7);
    _Block_release(v6);
    _Block_release(v5);
    _Block_release(v4);

    if (v8)
    {
      sub_1BF071C2C();
      v9 = sub_1BF17AE3C();
      sub_1BF17ACDC();
      sub_1BF1797CC();
    }
  }

  return result;
}

uint64_t Accessor.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BF022270(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SyncValue.init(_:)()
{
  OUTLINED_FUNCTION_0_81();
  v4 = *(v3 + 96);
  v6 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + v4) = UnfairLock.init(options:)(&v6);
  (*(*(*(v2 + 80) - 8) + 32))(v0 + *(*v0 + 88), v1);
  return v0;
}

void *sub_1BF0223DC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1BF0223FC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  OUTLINED_FUNCTION_1_61();
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return sub_1BEFE52DC(v4);
}

uint64_t Dictionary<>.disableSafeishSafety.setter(char a1)
{
  sub_1BF022610();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BF17B42C();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_1_48();
  result = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v15, v6, v7);
    v18 = MEMORY[0x1E69E6370];
    v17[0] = a1 & 1;
    return sub_1BF022668(v17, v15);
  }

  return result;
}

void sub_1BF022610()
{
  if (!qword_1ED8ECBB0)
  {
    sub_1BF17B42C();
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ECBB0);
    }
  }
}

uint64_t sub_1BF022668(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1BEFF9A40(a1, v30);
    v4 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_13();
    sub_1BF022938(v5, v6, v7, v8, v9, v10, v11, v12, v27, v28, v30[0], v30[1]);
    *v2 = v29;
    v13 = sub_1BF17B42C();
    OUTLINED_FUNCTION_0_0(v13);
    return (*(v14 + 8))(a2);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CA0];
    v17 = MEMORY[0x1E69E6720];
    sub_1BF0ABBDC(a1, &qword_1ED8EFBA0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BF0ABB8C);
    sub_1BF058344(a2, v18, v19, v20, v21, v22, v23, v24, v27, v28);
    v25 = sub_1BF17B42C();
    OUTLINED_FUNCTION_0_0(v25);
    (*(v26 + 8))(a2);
    return sub_1BF0ABBDC(v30, &qword_1ED8EFBA0, v16 + 8, v17, sub_1BF0ABB8C);
  }
}

void sub_1BF0227A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v49 = v13;
  v15 = v14;
  v16 = v12;
  v18 = v17;
  v50 = v19;
  v20 = sub_1BF17B42C();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  v29 = *v12;
  v30 = sub_1BF022978();
  OUTLINED_FUNCTION_1_5(v30, v31);
  if (v34)
  {
    __break(1u);
    goto LABEL_11;
  }

  v35 = v32;
  v36 = v33;
  v15(0);
  if ((OUTLINED_FUNCTION_14_4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v37 = *v16;
  v38 = sub_1BF022978();
  if ((v36 & 1) != (v39 & 1))
  {
LABEL_11:
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  v35 = v38;
LABEL_5:
  v40 = *v16;
  if (v36)
  {
    __swift_destroy_boxed_opaque_existential_1((*(v40 + 56) + 32 * v35));
    OUTLINED_FUNCTION_26_2();

    v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }

  else
  {
    (*(v23 + 16))(v28, v18, v20);
    v49(v35, v28, v50, v40);
    OUTLINED_FUNCTION_26_2();
  }
}

unint64_t sub_1BF022978()
{
  OUTLINED_FUNCTION_25_2();
  sub_1BF17B42C();
  v1 = sub_1BF179F1C();

  return sub_1BF0229D0(v0, v1);
}

unint64_t sub_1BF0229D0(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v4 = sub_1BF17B42C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + 64;
  v9 = ~(-1 << *(v2 + 32));
  for (i = a2 & v9; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v9)
  {
    (*(v5 + 16))(v8, *(v14 + 48) + *(v5 + 72) * i, v4);
    v11 = sub_1BF17A05C();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

void sub_1BF022B54()
{
  if (!qword_1ED8EADA8)
  {
    sub_1BF17B42C();
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EADA8);
    }
  }
}

void sub_1BF022BC0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  v11 = *(v10 + 48);
  v12 = sub_1BF17B42C();
  OUTLINED_FUNCTION_20(v12);
  (*(v13 + 32))(v11 + *(v13 + 72) * a1, a2);
  a5(a3, *(a4 + 56) + 32 * a1);
  OUTLINED_FUNCTION_12_11();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }
}

uint64_t StoreValue.init()()
{
  v1 = v0;
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 80);
  type metadata accessor for StoreComputedValue();
  *(swift_allocObject() + 16) = v3;
  *(v1 + 16) = StoreComputedValue.__allocating_init(computation:)();
  return v1;
}

uint64_t sub_1BF022DC0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for StoreState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BF022E90(uint64_t a1)
{
  result = sub_1BEFF79E8();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t StoreComputedValue.__allocating_init(computation:)()
{
  OUTLINED_FUNCTION_76();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_5_25();
  StoreComputedValue.init(computation:)(v3, v4);
  return v0;
}

{
  OUTLINED_FUNCTION_76();
  v3 = swift_allocObject();
  *(v3 + 16) = *(v1 + 80);
  *(v3 + 32) = v2;
  *(v3 + 40) = v0;

  return StoreComputedValue.__allocating_init(computation:)();
}

void *StoreComputedValue.init(computation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v42 = a2;
  v4 = *v2;
  v5 = sub_1BF17AD4C();
  v6 = OUTLINED_FUNCTION_1(v5);
  v39 = v7;
  v40 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = sub_1BF17AD1C();
  v14 = OUTLINED_FUNCTION_12(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = sub_1BF179BBC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_2_0();
  v19 = *(v4 + 88);
  v20 = type metadata accessor for StoreState();
  OUTLINED_FUNCTION_12(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  type metadata accessor for AsyncObservable();
  swift_storeEnumTagMultiPayload();
  v2[2] = AsyncObservable.__allocating_init(value:)(v25);
  OUTLINED_FUNCTION_4_0();
  v27 = *(v26 + 112);
  v28 = *(v4 + 80);
  type metadata accessor for StoreState();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_4_0();
  *(v3 + *(v29 + 120)) = 1;
  OUTLINED_FUNCTION_4_0();
  *(v3 + *(v30 + 128)) = 0;
  OUTLINED_FUNCTION_4_0();
  v32 = *(v31 + 136);
  v43 = v33;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v3 + v32) = UnfairLock.init(options:)(&v43);
  OUTLINED_FUNCTION_4_0();
  v35 = *(v34 + 144);
  sub_1BEFF6E88();
  sub_1BF179B8C();
  v43 = MEMORY[0x1E69E7CC0];
  sub_1BF00AF84(&qword_1ED8F0BE0, MEMORY[0x1E69E8030]);
  sub_1BF00B014(0);
  sub_1BF00AF84(&qword_1ED8F0BE8, sub_1BF00B014);
  sub_1BF17B0BC();
  (*(v39 + 104))(v12, *MEMORY[0x1E69E8090], v40);
  *(v3 + v35) = sub_1BF17AD9C();
  v36 = v42;
  v3[3] = v41;
  v3[4] = v36;
  return v3;
}

uint64_t AsyncObservable.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AsyncObservable.init(value:)(a1);
  return v5;
}

uint64_t SyncObservable.map<A>(quietProvider:transform:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v32 = a1;
  v33 = a2;
  OUTLINED_FUNCTION_29();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_2_3();
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_3();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SyncObservable();
  SyncObservable.uncheckedValue.getter();
  a3(v5);
  (*(v12 + 8))(v5, v10);
  v21 = SyncObservable.__allocating_init(value:)(v20);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v10;
  v23[3] = a5;
  v23[4] = v22;
  v23[5] = a3;
  v25 = v32;
  v24 = v33;
  v23[6] = a4;
  v23[7] = v25;
  v23[8] = v24;

  sub_1BF009984(v25);
  SyncObservable.onNext(eager:block:)(0, sub_1BF0BD9DC, v23, v34);

  v26 = v35;
  v27 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v28 = *(v27 + 8);

  v28(v29, v26, v27);

  __swift_destroy_boxed_opaque_existential_1(v34);
  return v21;
}

uint64_t sub_1BF023540()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF023578()
{
  v1 = v0[4];

  v2 = v0[6];

  if (v0[7])
  {
    v3 = v0[8];
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t SyncObservable.__allocating_init(value:)(uint64_t a1)
{
  OUTLINED_FUNCTION_78();
  v2 = swift_allocObject();
  SyncObservable.init(value:)(a1);
  return v2;
}

uint64_t sub_1BF02363C()
{
  sub_1BF17A75C();
  sub_1BF17B15C();

  return swift_unknownObjectWeakAssign();
}

uint64_t SyncObservable<A>.map<A>(_:quietIfUnchanged:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = swift_allocObject();
  v13[2] = *(v12 + 80);
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v14 = SyncObservable.map<A>(quietProvider:transform:)(sub_1BF0BD9F0, v13, a1, a2, a4);

  return v14;
}

uint64_t sub_1BF023868()
{
  OUTLINED_FUNCTION_6_26();
  v2 = *(v0 + OBJC_IVAR____TtC13TeaFoundation15BridgedResolver_resolver);
  swift_getMetatypeMetadata();
  v3 = objc_allocWithZone(TFKey);
  v11 = OUTLINED_FUNCTION_1_17(v3, v4, v5, v6, v7, v8, v9, v10, v1);
  v14 = sub_1BEFE82CC(v11, v12, v13);
  v15 = [v14 address];

  v16 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v24 = OUTLINED_FUNCTION_1_17(v16, v17, v18, v19, v20, v21, v22, v23, v15);
  sub_1BEFF7D88(v24, v25);
  OUTLINED_FUNCTION_8_21();
  if (v2)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

_OWORD *sub_1BF023920@<X0>(void *(*a1)(__int128 *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  result = a1(&v4);
  if (v5)
  {
    return sub_1BEFF9A40(&v4, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF023A44()
{
  OUTLINED_FUNCTION_6_26();
  v2 = *(v0 + OBJC_IVAR____TtC13TeaFoundation15BridgedResolver_resolver);
  sub_1BEFE8DAC();
  v3 = objc_allocWithZone(TFKey);
  v4 = v1;
  v12 = OUTLINED_FUNCTION_1_17(v4, v5, v6, v7, v8, v9, v10, v11, v1);
  v15 = sub_1BEFE82CC(v12, v13, v14);
  v16 = [v15 address];

  v17 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v25 = OUTLINED_FUNCTION_1_17(v17, v18, v19, v20, v21, v22, v23, v24, v16);
  sub_1BEFF7D88(v25, v26);
  OUTLINED_FUNCTION_8_21();
  if (v2)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

BOOL SyncObservable<A>.next(value:quietIfUnchanged:)(uint64_t a1, char a2, uint64_t a3)
{
  OUTLINED_FUNCTION_29();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_3();
  sub_1BF17A75C();
  OUTLINED_FUNCTION_0_30();
  sub_1BF17B15C();
  v15 = *(v3 + 16);
  v20 = v9;
  v21 = a3;
  v22 = a1;
  sub_1BEFFB4E8(sub_1BF023C74, v19, v15, v9, v9);
  v16 = sub_1BF17A05C();
  v17 = v16;
  if ((a2 & 1) == 0 || (v16 & 1) == 0)
  {
    sub_1BF02097C(v4, a1);
  }

  (*(v11 + 8))(v4, v9);
  return (v17 & 1) == 0;
}

void Promise.always<A>(on:disposeOn:closure:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = v0[2];
  OUTLINED_FUNCTION_27();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_46();
  v10 = swift_allocObject();
  v10[2] = *(v7 + 80);
  v10[3] = v2;
  v10[4] = v9;
  v10[5] = v6;
  v10[6] = v4;

  sub_1BF00B6B0();
  OUTLINED_FUNCTION_55_1();

  v4(v11);

  OUTLINED_FUNCTION_26_2();
}

void sub_1BF023D98()
{
  OUTLINED_FUNCTION_32();
  v36[1] = v2;
  v37 = v3;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v38 = v11;
  v13 = v12;
  v40 = v14;
  v15 = *(*v6 + 80);
  OUTLINED_FUNCTION_0_62();
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v36[0] = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v22 = _s13TeaFoundation8ObserverCMa_0();
  v23 = v13;

  v25 = sub_1BF024060(v24, v23, v5, v10, v8);
  v26 = *(v6 + 2);
  UnfairLock.lock()();
  v41 = v25;
  swift_beginAccess();
  v39 = v22;
  sub_1BF17A65C();

  sub_1BF17A5DC();
  swift_endAccess();
  v27 = *(*v6 + 104);
  swift_beginAccess();
  v28 = *(v17 + 16);
  v28(v1, &v6[v27], v15);
  os_unfair_lock_unlock(*(v26 + 16));
  if (v38)
  {
    v29 = *(v25 + 40);
    v30 = v36[0];
    v28(v36[0], v1, v15);
    v31 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v15;
    *(v32 + 24) = v25;
    (*(v17 + 32))(v32 + v31, v30, v15);

    v33 = sub_1BF006210(v29, v37, v32);

    (v33)(v34);
  }

  v35 = v40;
  v40[3] = v39;
  v35[4] = &off_1F3DC1190;
  *v35 = v25;
  (*(v17 + 8))(v1, v15);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0240CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v5 + 32) = a5;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 24) = a4;
  return v5;
}

uint64_t sub_1BF02417C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v22 = a2;
  v21[3] = type metadata accessor for ProxyResolver();
  v21[4] = &protocol witness table for ProxyResolver;
  v21[0] = a3;
  v15 = *(v13 + 8);

  v15(&v22, v21, MEMORY[0x1E69E7C98] + 8, v14, v13);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1BEFF9578(a2, a4, a5, a6, a7, a8, a9, v16);
}

void __swiftcall Version.init(_:)(TeaFoundation::Version_optional *__return_ptr retstr, NSBundle a2)
{
  v4 = sub_1BF02AEA8(a2.super.isa);
  if (!v4)
  {

    memset(v9, 0, sizeof(v9));
LABEL_8:
    sub_1BEFFD168(v9);
    goto LABEL_10;
  }

  sub_1BF0243AC(v4, v9);

  if (!*(&v9[1] + 1))
  {

    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    sub_1BF024410(v7, v8, v9);

    if (*&v9[0])
    {
      v5 = *(&v9[1] + 1);
      v6 = *(v9 + 8);
      retstr->value.base.numbers._rawValue = *&v9[0];
      retstr->value.qualifier.value.name = v6;
      retstr->value.qualifier.value.version.value.numbers._rawValue = v5;
      return;
    }
  }

  else
  {
  }

LABEL_10:
  *&retstr->value.base.numbers._rawValue = 0u;
  *&retstr->value.qualifier.value.name._object = 0u;
}

double sub_1BF0243AC@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1BF014CA8(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1BF0075BC(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1BF024410@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = 45;
  v32 = 0xE100000000000000;
  v30[2] = &v31;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF0143EC(1, 1, sub_1BF014764, v30, a1, a2);
  v7 = v6;
  v8 = v6[2];
  if ((v8 - 1) > 1)
  {
    goto LABEL_5;
  }

  v9 = v6[4];
  v10 = v6[5];
  v11 = v6[6];
  v12 = v6[7];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v13 = MEMORY[0x1BFB51F50](v9, v10, v11, v12);
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  result = VersionNumber.init(_:)(v16);
  v18 = v31;
  if (!v31)
  {
LABEL_5:

    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (v8 == 1)
  {

    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    if (v7[2] < 2uLL)
    {
      __break(1u);
      return result;
    }

    v22 = v7[8];
    v23 = v7[9];
    v24 = v7[10];
    v25 = v7[11];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v26 = MEMORY[0x1BFB51F50](v22, v23, v24, v25);
    v28 = v27;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    result = VersionQualifier.init(_:)(v29);
    v19 = v31;
    v20 = v32;
    v21 = v33;
  }

  *a3 = v18;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  *(a3 + 24) = v21;
  return result;
}

TeaFoundation::VersionNumber_optional __swiftcall VersionNumber.init(_:)(Swift::String a1)
{
  v24 = v1;
  v28 = 46;
  v29 = 0xE100000000000000;
  v26 = &v28;
  isUniquelyReferenced_nonNull_native = sub_1BF0143EC(0x7FFFFFFFFFFFFFFFLL, 0, sub_1BF014764, v25, a1._countAndFlagsBits, a1._object);
  v4 = isUniquelyReferenced_nonNull_native;
  v5 = 0;
  v6 = *(isUniquelyReferenced_nonNull_native + 16);
  v7 = (isUniquelyReferenced_nonNull_native + 56);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 == v5)
    {

      if (!*(v8 + 16))
      {
LABEL_22:

        v8 = 0;
      }

      *v24 = v8;
      goto LABEL_25;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v10 = *(v7 - 3);
    v9 = *(v7 - 2);
    if (!((v9 ^ v10) >> 14))
    {
      goto LABEL_21;
    }

    v12 = *(v7 - 1);
    v11 = *v7;
    if ((*v7 & 0x1000000000000000) != 0)
    {
      v18 = *v7;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v15 = sub_1BF0EBDE4(v10, v9, v12, v11, 10);
      v20 = v19;

      if (v20)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if ((v11 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v11) & 0xF;
        v28 = *(v7 - 1);
        v29 = v11 & 0xFFFFFFFFFFFFFFLL;
        v13 = &v28;
      }

      else if ((v12 & 0x1000000000000000) != 0)
      {
        v13 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v14 = v12 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = *(v7 - 1);
        v23 = *v7;
        v13 = sub_1BF17B2FC();
      }

      v15 = sub_1BF0247BC(v13, v14, v10, v9, v12, v11, 10);
      v27 = v16 & 1;
      if (v16)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = *(v8 + 16);
      sub_1BF024BF8();
      v8 = isUniquelyReferenced_nonNull_native;
    }

    v17 = *(v8 + 16);
    if (v17 >= *(v8 + 24) >> 1)
    {
      sub_1BF024BF8();
      v8 = isUniquelyReferenced_nonNull_native;
    }

    *(v8 + 16) = v17 + 1;
    *(v8 + 8 * v17 + 32) = v15;
    v7 += 4;
    ++v5;
  }

  __break(1u);
LABEL_25:
  result.value.numbers._rawValue = isUniquelyReferenced_nonNull_native;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1BF0247BC(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1BF0B603C(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1BF17A27C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1BF0B603C(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1BF0B603C(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1BF17A27C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

void sub_1BF024BF8()
{
  OUTLINED_FUNCTION_41_2();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_98_0(v6);
  if (v2)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v12);
    OUTLINED_FUNCTION_22_3();
    *(v12 + 2) = v3;
    *(v12 + 3) = v13;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = v0 + 32;
  if (v1)
  {
    if (v12 != v0 || &v15[8 * v3] <= v14)
    {
      memmove(v14, v15, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v3);
  }
}

uint64_t sub_1BF024CCC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t Decodable.init(from:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28[11] = *MEMORY[0x1E69E9840];
  v6 = sub_1BF17AE6C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - v8;
  v10 = objc_opt_self();
  v11 = sub_1BF179D3C();

  v28[0] = 0;
  v12 = [v10 dataWithJSONObject:v11 options:1 error:v28];

  v13 = v28[0];
  if (v12)
  {
    v14 = sub_1BF17935C();
    v16 = v15;

    type metadata accessor for _TeaJSONDecoder();
    swift_initStackObject();
    v17 = _TeaJSONDecoder.init()();
    swift_beginAccess();
    v18 = *(v17 + 48);
    v19 = *(v17 + 56);
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    sub_1BEFE52DC(v18);
    v20 = a2;
    v21 = 0;
    sub_1BF015544(a1, v14, v16, a1, v20, v9);
    sub_1BF014E18(v14, v16);

    __swift_storeEnumTagSinglePayload(v9, 0, 1, a1);
    (*(*(a1 - 1) + 32))(a3, v9, a1);
  }

  else
  {
    v22 = v13;
    v23 = sub_1BF17911C();

    swift_willThrow();
    sub_1BF17ACBC();
    sub_1BF071C2C();
    v24 = sub_1BF17AE3C();
    sub_1BF1797CC();

    v21 = 1;
  }

  result = __swift_storeEnumTagSinglePayload(a3, v21, 1, a1);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _TeaJSONDecoder.init()()
{
  sub_1BF17B42C();
  v1 = sub_1BF179DAC();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = v1;
  *(v0 + 40) = 2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  return v0;
}

uint64_t sub_1BF0250CC()
{
  v4 = sub_1BF17A12C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v0[5];
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_143;
  }

  v7 = v0[4];
  if (v6 + 1 >= v7)
  {
LABEL_143:
    v78 = v0[7];
    v2 = v6 - v78;
    if (!__OFSUB__(v6, v78))
    {
      v79 = v0[6];
      sub_1BF053D1C();
      v75 = swift_allocError();
      *v76 = v79;
      *(v76 + 8) = v2;
      *(v76 + 16) = 0u;
      *(v76 + 32) = 0u;
      v77 = 16;
      goto LABEL_141;
    }

    __break(1u);
    goto LABEL_304;
  }

  v8 = v0[2];
  v9 = v0[3];
  v10 = sub_1BF17931C();
  if (!v12 & v11)
  {
    switch(v10)
    {
      case 'f':
        v44 = v0[5];
        v14 = __OFADD__(v44, 2);
        v45 = v44 + 2;
        if (v14)
        {
          goto LABEL_267;
        }

        v0[5] = v45;
        if (qword_1EBDCAFF8 != -1)
        {
          swift_once();
        }

        v16 = &qword_1EBDCC7C0;
        goto LABEL_73;
      case '/':
        v48 = v0[5];
        v14 = __OFADD__(v48, 2);
        v49 = v48 + 2;
        if (v14)
        {
          goto LABEL_270;
        }

        v0[5] = v49;
        if (qword_1ED8EF708 != -1)
        {
          swift_once();
        }

        v16 = &qword_1ED8EF710;
        goto LABEL_73;
      case '\\':
        v46 = v0[5];
        v14 = __OFADD__(v46, 2);
        v47 = v46 + 2;
        if (v14)
        {
          goto LABEL_269;
        }

        v0[5] = v47;
        if (qword_1ED8EB7E0 != -1)
        {
          swift_once();
        }

        v16 = &qword_1ED8EB7E8;
        goto LABEL_73;
      case 'b':
        v42 = v0[5];
        v14 = __OFADD__(v42, 2);
        v43 = v42 + 2;
        if (v14)
        {
          goto LABEL_266;
        }

        v0[5] = v43;
        if (qword_1EBDCAFF0 != -1)
        {
          goto LABEL_271;
        }

        goto LABEL_60;
      case '""':
        v13 = v0[5];
        v14 = __OFADD__(v13, 2);
        v15 = v13 + 2;
        if (v14)
        {
          goto LABEL_268;
        }

        v0[5] = v15;
        if (qword_1ED8ECF28 != -1)
        {
          swift_once();
        }

        v16 = &qword_1ED8ECF30;
        goto LABEL_73;
    }

LABEL_19:
    v19 = v0[5];
    v20 = v0[7];
    v21 = v19 - v20;
    if (__OFSUB__(v19, v20))
    {
      __break(1u);
    }

    else if (!__OFADD__(v19, 2))
    {
      if (v19 + 2 >= v19)
      {
LABEL_140:
        v69 = v0[6];
        v70 = v0[2];
        v71 = v0[3];
        v72 = sub_1BF17930C();
        v74 = v73;
        sub_1BF053D1C();
        v75 = swift_allocError();
        *v76 = v69;
        *(v76 + 8) = v21;
        *(v76 + 16) = v72;
        *(v76 + 24) = v74;
        *(v76 + 32) = 0;
        *(v76 + 40) = 0;
        v77 = 9;
LABEL_141:
        *(v76 + 48) = v77;
        v1 = v75;
        swift_willThrow();
        return v1;
      }

      __break(1u);
LABEL_24:
      v22 = v0[5];
      v14 = __OFADD__(v22, 2);
      v23 = v22 + 2;
      if (!v14)
      {
        v0[5] = v23;
        if (qword_1EBDCAB50 == -1)
        {
LABEL_26:
          v16 = &qword_1EBDCAB58;
          goto LABEL_73;
        }

LABEL_150:
        swift_once();
        goto LABEL_26;
      }

LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    __break(1u);
    goto LABEL_146;
  }

  switch(v10)
  {
    case 'n':
      v17 = v0[5];
      v14 = __OFADD__(v17, 2);
      v18 = v17 + 2;
      if (v14)
      {
        goto LABEL_147;
      }

      v0[5] = v18;
      if (qword_1ED8EBA00 != -1)
      {
        swift_once();
      }

      v16 = &qword_1ED8EBA08;
      goto LABEL_73;
    case 'o':
    case 'p':
    case 'q':
    case 's':
      goto LABEL_19;
    case 'r':
      v24 = v0[5];
      v14 = __OFADD__(v24, 2);
      v25 = v24 + 2;
      if (v14)
      {
        goto LABEL_148;
      }

      v0[5] = v25;
      if (qword_1EBDCB008 != -1)
      {
        swift_once();
      }

      v16 = &qword_1EBDCC7D0;
      goto LABEL_73;
    case 't':
      goto LABEL_24;
    case 'u':
      v6 = v0[5];
      v26 = v6 + 6;
      if (__OFADD__(v6, 6))
      {
        goto LABEL_149;
      }

      if (v26 >= v7)
      {
        v80 = v0[7];
        v2 = v6 - v80;
        if (!__OFSUB__(v6, v80))
        {
          v81 = v0[6];
          sub_1BF053D1C();
          v75 = swift_allocError();
          *v76 = v81;
          *(v76 + 8) = v2;
          *(v76 + 16) = 0u;
          *(v76 + 32) = 0u;
          v77 = 17;
          goto LABEL_141;
        }

LABEL_312:
        __break(1u);
        goto LABEL_313;
      }

      if (v26 < v6 + 2)
      {
        __break(1u);
      }

      else
      {
        v27 = v0[2];
        v28 = v0[3];
        v29 = sub_1BF17930C();
        v31 = v30;
        sub_1BF17A11C();
        v2 = sub_1BF17A0CC();
        v3 = v32;
        sub_1BF014E18(v29, v31);
        if (!v3)
        {
LABEL_311:
          __break(1u);
          goto LABEL_312;
        }

        v33 = HIBYTE(v3) & 0xF;
        v34 = v2 & 0xFFFFFFFFFFFFLL;
        if ((v3 & 0x2000000000000000) != 0)
        {
          v35 = HIBYTE(v3) & 0xF;
        }

        else
        {
          v35 = v2 & 0xFFFFFFFFFFFFLL;
        }

        if (!v35)
        {
          goto LABEL_137;
        }

        if ((v3 & 0x1000000000000000) == 0)
        {
          if ((v3 & 0x2000000000000000) == 0)
          {
            if ((v2 & 0x1000000000000000) == 0)
            {
              goto LABEL_275;
            }

            for (i = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1BF17B2FC())
            {
              v37 = *i;
              if (v37 == 43)
              {
                if (v34 < 1)
                {
                  goto LABEL_281;
                }

                v33 = v34 - 1;
                if (v34 == 1)
                {
                  goto LABEL_135;
                }

                if (i)
                {
                  LODWORD(v2) = 0;
                  v56 = i + 1;
                  while (1)
                  {
                    v57 = *v56;
                    v58 = v57 - 48;
                    if ((v57 - 48) >= 0xA)
                    {
                      if ((v57 - 65) < 6)
                      {
                        v58 = v57 - 55;
                      }

                      else
                      {
                        if ((v57 - 97) > 5)
                        {
                          goto LABEL_135;
                        }

                        v58 = v57 - 87;
                      }
                    }

                    if (v2 >> 28)
                    {
                      goto LABEL_135;
                    }

                    LODWORD(v2) = 16 * v2 + v58;
                    ++v56;
                    if (!--v33)
                    {
                      goto LABEL_136;
                    }
                  }
                }
              }

              else if (v37 == 45)
              {
                if (v34 < 1)
                {
                  __break(1u);
LABEL_280:
                  __break(1u);
LABEL_281:
                  __break(1u);
                  goto LABEL_282;
                }

                v33 = v34 - 1;
                if (v34 == 1)
                {
                  goto LABEL_135;
                }

                if (i)
                {
                  LODWORD(v2) = 0;
                  v38 = i + 1;
                  while (1)
                  {
                    v39 = *v38;
                    v40 = v39 - 48;
                    if ((v39 - 48) >= 0xA)
                    {
                      if ((v39 - 65) < 6)
                      {
                        v40 = v39 - 55;
                      }

                      else
                      {
                        if ((v39 - 97) > 5)
                        {
                          break;
                        }

                        v40 = v39 - 87;
                      }
                    }

                    if (v2 >> 28)
                    {
                      break;
                    }

                    v41 = 16 * v2;
                    LODWORD(v2) = 16 * v2 - v40;
                    if (v41 < v40)
                    {
                      break;
                    }

                    ++v38;
                    if (!--v33)
                    {
                      goto LABEL_136;
                    }
                  }

LABEL_135:
                  LODWORD(v2) = 0;
                  LOBYTE(v33) = 1;
                  goto LABEL_136;
                }
              }

              else
              {
                if (!v34)
                {
                  goto LABEL_135;
                }

                if (i)
                {
                  LODWORD(v2) = 0;
                  while (1)
                  {
                    v62 = *i;
                    v63 = v62 - 48;
                    if ((v62 - 48) >= 0xA)
                    {
                      if ((v62 - 65) < 6)
                      {
                        v63 = v62 - 55;
                      }

                      else
                      {
                        if ((v62 - 97) > 5)
                        {
                          goto LABEL_135;
                        }

                        v63 = v62 - 87;
                      }
                    }

                    if (v2 >> 28)
                    {
                      goto LABEL_135;
                    }

                    LODWORD(v2) = 16 * v2 + v63;
                    ++i;
                    if (!--v34)
                    {
                      goto LABEL_124;
                    }
                  }
                }
              }

              LODWORD(v2) = 0;
LABEL_124:
              LOBYTE(v33) = 0;
LABEL_136:
              v134 = v33;
              if ((v33 & 1) == 0)
              {
                goto LABEL_155;
              }

LABEL_137:

              v67 = v0[5];
              v68 = v0[7];
              v21 = v67 - v68;
              if (__OFSUB__(v67, v68))
              {
                __break(1u);
LABEL_273:
                __break(1u);
                goto LABEL_274;
              }

              if (__OFADD__(v67, 6))
              {
                goto LABEL_273;
              }

              if (v67 + 6 >= v67)
              {
                goto LABEL_140;
              }

LABEL_274:
              __break(1u);
LABEL_275:
              ;
            }
          }

          v132 = v2;
          v133 = v3 & 0xFFFFFFFFFFFFFFLL;
          if (v2 != 43)
          {
            if (v2 != 45)
            {
              if (!v33)
              {
                goto LABEL_135;
              }

              LODWORD(v2) = 0;
              v64 = &v132;
              while (1)
              {
                v65 = *v64;
                v66 = v65 - 48;
                if ((v65 - 48) >= 0xA)
                {
                  if ((v65 - 65) < 6)
                  {
                    v66 = v65 - 55;
                  }

                  else
                  {
                    if ((v65 - 97) > 5)
                    {
                      goto LABEL_135;
                    }

                    v66 = v65 - 87;
                  }
                }

                if (v2 >> 28)
                {
                  goto LABEL_135;
                }

                LODWORD(v2) = 16 * v2 + v66;
                v64 = (v64 + 1);
                if (!--v33)
                {
                  goto LABEL_136;
                }
              }
            }

            if (v33)
            {
              if (!--v33)
              {
                goto LABEL_135;
              }

              LODWORD(v2) = 0;
              v52 = &v132 + 1;
              while (1)
              {
                v53 = *v52;
                v54 = v53 - 48;
                if ((v53 - 48) >= 0xA)
                {
                  if ((v53 - 65) < 6)
                  {
                    v54 = v53 - 55;
                  }

                  else
                  {
                    if ((v53 - 97) > 5)
                    {
                      goto LABEL_135;
                    }

                    v54 = v53 - 87;
                  }
                }

                if (v2 >> 28)
                {
                  goto LABEL_135;
                }

                v55 = 16 * v2;
                LODWORD(v2) = 16 * v2 - v54;
                if (v55 < v54)
                {
                  goto LABEL_135;
                }

                ++v52;
                if (!--v33)
                {
                  goto LABEL_136;
                }
              }
            }

            goto LABEL_280;
          }

          if (v33)
          {
            if (!--v33)
            {
              goto LABEL_135;
            }

            LODWORD(v2) = 0;
            v59 = &v132 + 1;
            while (1)
            {
              v60 = *v59;
              v61 = v60 - 48;
              if ((v60 - 48) >= 0xA)
              {
                if ((v60 - 65) < 6)
                {
                  v61 = v60 - 55;
                }

                else
                {
                  if ((v60 - 97) > 5)
                  {
                    goto LABEL_135;
                  }

                  v61 = v60 - 87;
                }
              }

              if (v2 >> 28)
              {
                goto LABEL_135;
              }

              LODWORD(v2) = 16 * v2 + v61;
              ++v59;
              if (!--v33)
              {
                goto LABEL_136;
              }
            }
          }

LABEL_282:
          __break(1u);
          goto LABEL_283;
        }
      }

      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v2 = sub_1BF0EC378(v2, v3, 16);

      if ((v2 & 0x100000000) != 0)
      {
        goto LABEL_137;
      }

LABEL_155:
      if (v2 >> 11 < 0x1B)
      {

LABEL_157:
        v82 = v0[5];
        v14 = __OFADD__(v82, 6);
        v83 = v82 + 6;
        if (v14)
        {
          __break(1u);
        }

        else
        {
          v0[5] = v83;
          if (v2 <= 0x7F)
          {
            v84 = v2 + 1;
LABEL_160:
            v132 = (v84 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v84) >> 3))));
            return sub_1BF17A19C();
          }
        }

        LODWORD(v6) = (v2 & 0x3F) << 8;
        if (v2 < 0x800)
        {
          v84 = (v2 >> 6) + v6 + 33217;
          goto LABEL_160;
        }

LABEL_313:
        v130 = (v6 | (v2 >> 6) & 0x3F) << 8;
        v131 = (((v130 | (v2 >> 12) & 0x3F) << 8) | (v2 >> 18)) - 2122219023;
        v84 = (v2 >> 12) + v130 + 8487393;
        if (WORD1(v2))
        {
          v84 = v131;
        }

        goto LABEL_160;
      }

      if (v2 >> 10 <= 0x36)
      {
        goto LABEL_168;
      }

      if ((v2 - 1114112) >= 0xFFEFE000)
      {
        goto LABEL_157;
      }

      v85 = v0[5];
      v86 = v0[7];
      v21 = v85 - v86;
      if (__OFSUB__(v85, v86))
      {
        __break(1u);
        goto LABEL_287;
      }

      if (__OFADD__(v85, 6))
      {
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
        goto LABEL_290;
      }

      if (v85 + 6 >= v85)
      {
        goto LABEL_140;
      }

      __break(1u);
LABEL_168:
      v87 = v0[5];
      if (__OFADD__(v87, 12))
      {
LABEL_283:
        __break(1u);
        goto LABEL_284;
      }

      if (v87 + 12 >= v7)
      {
LABEL_284:

        v124 = v0[5];
        v125 = v0[7];
        v126 = v124 - v125;
        if (!__OFSUB__(v124, v125))
        {
          v127 = v0[6];
          sub_1BF053D1C();
          v75 = swift_allocError();
          *v76 = v127;
          *(v76 + 8) = v126;
          *(v76 + 16) = 0u;
          *(v76 + 32) = 0u;
          v77 = 14;
          goto LABEL_141;
        }

        __break(1u);
LABEL_317:
        __break(1u);
        JUMPOUT(0x1BF025FB0);
      }

      sub_1BF163FF8(v87 + 6, 0x5Cu);
      if (v1)
      {

        return v1;
      }

      v88 = v0[5];
      if (__OFADD__(v88, 7))
      {
        goto LABEL_288;
      }

      sub_1BF163FF8(v88 + 7, 0x75u);
      v89 = v0[5];
      if (__OFADD__(v89, 12))
      {
        goto LABEL_289;
      }

      if (v89 + 12 < v89 + 8)
      {
LABEL_290:
        __break(1u);
        goto LABEL_291;
      }

      v90 = v0[2];
      v91 = v0[3];
      v92 = sub_1BF17930C();
      v94 = v93;
      sub_1BF17A11C();
      v95 = sub_1BF17A0CC();
      v97 = v96;
      sub_1BF014E18(v92, v94);
      if (!v97)
      {
        goto LABEL_317;
      }

      v6 = HIBYTE(v97) & 0xF;
      v98 = v95 & 0xFFFFFFFFFFFFLL;
      if ((v97 & 0x2000000000000000) != 0)
      {
        v99 = HIBYTE(v97) & 0xF;
      }

      else
      {
        v99 = v95 & 0xFFFFFFFFFFFFLL;
      }

      if (!v99)
      {
LABEL_291:

        goto LABEL_262;
      }

      if ((v97 & 0x1000000000000000) != 0)
      {
        v101 = sub_1BF0EC378(v95, v97, 16);

        if ((v101 & 0x100000000) != 0)
        {
          goto LABEL_262;
        }

LABEL_293:
        if ((v101 - 57344) >= 0xFFFFFC00)
        {
LABEL_298:
          v129 = v0[5];
          v14 = __OFADD__(v129, 12);
          v6 = v129 + 12;
          if (!v14)
          {
            v0[5] = v6;
            v132 = (((v101 + (v2 << 10) - 56613888) >> 4) & 0x3F00 | ((((v101 & 0x3F) << 8) | ((v101 + (v2 << 10) - 56613888) >> 6) & 0x3F) << 16) | ((v101 + (v2 << 10) - 56613888) >> 18)) - 2139062032;
            return sub_1BF17A19C();
          }

          goto LABEL_305;
        }

        v6 = v0[5];
        v128 = v0[7];
        v21 = v6 - v128;
        if (!__OFSUB__(v6, v128))
        {
          if (__OFADD__(v6, 12))
          {
            goto LABEL_306;
          }

          if (v6 + 12 >= v6 + 6)
          {
            goto LABEL_140;
          }

          __break(1u);
          goto LABEL_298;
        }

LABEL_304:
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
        goto LABEL_308;
      }

      if ((v97 & 0x2000000000000000) != 0)
      {
        v132 = v95;
        v133 = v97 & 0xFFFFFFFFFFFFFFLL;
        if (v95 == 43)
        {
          if (v6)
          {
            if (!--v6)
            {
              goto LABEL_260;
            }

            LODWORD(v101) = 0;
            v113 = &v132 + 1;
            while (1)
            {
              v114 = *v113;
              v115 = v114 - 48;
              if ((v114 - 48) >= 0xA)
              {
                if ((v114 - 65) < 6)
                {
                  v115 = v114 - 55;
                }

                else
                {
                  if ((v114 - 97) > 5)
                  {
                    goto LABEL_260;
                  }

                  v115 = v114 - 87;
                }
              }

              if (v101 >> 28)
              {
                goto LABEL_260;
              }

              LODWORD(v101) = 16 * v101 + v115;
              ++v113;
              if (!--v6)
              {
                goto LABEL_261;
              }
            }
          }

LABEL_310:
          __break(1u);
          goto LABEL_311;
        }

        if (v95 != 45)
        {
          if (!v6)
          {
            goto LABEL_260;
          }

          LODWORD(v101) = 0;
          v118 = &v132;
          while (1)
          {
            v119 = *v118;
            v120 = v119 - 48;
            if ((v119 - 48) >= 0xA)
            {
              if ((v119 - 65) < 6)
              {
                v120 = v119 - 55;
              }

              else
              {
                if ((v119 - 97) > 5)
                {
                  goto LABEL_260;
                }

                v120 = v119 - 87;
              }
            }

            if (v101 >> 28)
            {
              goto LABEL_260;
            }

            LODWORD(v101) = 16 * v101 + v120;
            v118 = (v118 + 1);
            if (!--v6)
            {
              goto LABEL_261;
            }
          }
        }

        if (v6)
        {
          if (!--v6)
          {
            goto LABEL_260;
          }

          LODWORD(v101) = 0;
          v106 = &v132 + 1;
          while (1)
          {
            v107 = *v106;
            v108 = v107 - 48;
            if ((v107 - 48) >= 0xA)
            {
              if ((v107 - 65) < 6)
              {
                v108 = v107 - 55;
              }

              else
              {
                if ((v107 - 97) > 5)
                {
                  goto LABEL_260;
                }

                v108 = v107 - 87;
              }
            }

            if (v101 >> 28)
            {
              goto LABEL_260;
            }

            v109 = 16 * v101;
            LODWORD(v101) = 16 * v101 - v108;
            if (v109 < v108)
            {
              goto LABEL_260;
            }

            ++v106;
            if (!--v6)
            {
              goto LABEL_261;
            }
          }
        }

LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
        goto LABEL_310;
      }

      if ((v95 & 0x1000000000000000) == 0)
      {
        goto LABEL_302;
      }

      for (j = ((v97 & 0xFFFFFFFFFFFFFFFLL) + 32); ; j = sub_1BF17B2FC())
      {
        LODWORD(v6) = *j;
        if (v6 == 43)
        {
          if (v98 < 1)
          {
            goto LABEL_309;
          }

          v6 = v98 - 1;
          if (v98 == 1)
          {
            goto LABEL_260;
          }

          if (j)
          {
            LODWORD(v101) = 0;
            v110 = j + 1;
            while (1)
            {
              v111 = *v110;
              v112 = v111 - 48;
              if ((v111 - 48) >= 0xA)
              {
                if ((v111 - 65) < 6)
                {
                  v112 = v111 - 55;
                }

                else
                {
                  if ((v111 - 97) > 5)
                  {
                    goto LABEL_260;
                  }

                  v112 = v111 - 87;
                }
              }

              if (v101 >> 28)
              {
                goto LABEL_260;
              }

              LODWORD(v101) = 16 * v101 + v112;
              ++v110;
              if (!--v6)
              {
                goto LABEL_261;
              }
            }
          }
        }

        else if (v6 == 45)
        {
          if (v98 < 1)
          {
            goto LABEL_307;
          }

          v6 = v98 - 1;
          if (v98 == 1)
          {
            goto LABEL_260;
          }

          if (j)
          {
            LODWORD(v101) = 0;
            v102 = j + 1;
            while (1)
            {
              v103 = *v102;
              v104 = v103 - 48;
              if ((v103 - 48) >= 0xA)
              {
                if ((v103 - 65) < 6)
                {
                  v104 = v103 - 55;
                }

                else
                {
                  if ((v103 - 97) > 5)
                  {
                    break;
                  }

                  v104 = v103 - 87;
                }
              }

              if (v101 >> 28)
              {
                break;
              }

              v105 = 16 * v101;
              LODWORD(v101) = 16 * v101 - v104;
              if (v105 < v104)
              {
                break;
              }

              ++v102;
              if (!--v6)
              {
                goto LABEL_261;
              }
            }

LABEL_260:
            LODWORD(v101) = 0;
            LOBYTE(v6) = 1;
            goto LABEL_261;
          }
        }

        else
        {
          if (!v98)
          {
            goto LABEL_260;
          }

          if (j)
          {
            LODWORD(v101) = 0;
            while (1)
            {
              v116 = *j;
              v117 = v116 - 48;
              if ((v116 - 48) >= 0xA)
              {
                if ((v116 - 65) < 6)
                {
                  v117 = v116 - 55;
                }

                else
                {
                  if ((v116 - 97) > 5)
                  {
                    goto LABEL_260;
                  }

                  v117 = v116 - 87;
                }
              }

              if (v101 >> 28)
              {
                goto LABEL_260;
              }

              LODWORD(v101) = 16 * v101 + v117;
              ++j;
              if (!--v98)
              {
                goto LABEL_249;
              }
            }
          }
        }

        LODWORD(v101) = 0;
LABEL_249:
        LOBYTE(v6) = 0;
LABEL_261:
        v134 = v6;
        v121 = v6;

        if ((v121 & 1) == 0)
        {
          goto LABEL_293;
        }

LABEL_262:
        v122 = v0[5];
        v123 = v0[7];
        v21 = v122 - v123;
        if (__OFSUB__(v122, v123))
        {
          __break(1u);
          goto LABEL_301;
        }

        if (!__OFADD__(v122, 12))
        {
          break;
        }

LABEL_301:
        __break(1u);
LABEL_302:
        ;
      }

      if (v122 + 12 >= v122 + 6)
      {
        goto LABEL_140;
      }

      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      swift_once();
LABEL_60:
      v16 = &qword_1EBDCC7B0;
LABEL_73:
      v1 = *v16;
      v50 = v16[1];
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      return v1;
    default:
      JUMPOUT(0);
  }
}

uint64_t sub_1BF025FE4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = sub_1BF17A19C();
  *a3 = result;
  *a4 = v7;
  return result;
}

void sub_1BF026028()
{
  v0 = [objc_opt_self() mainBundle];

  Version.init(_:)(&qword_1ED8EB050, v0);
}

uint64_t static Version.mainBundleShortVersion.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED8EB048 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8EB050;
  v3 = *algn_1ED8EB058;
  v4 = qword_1ED8EB060;
  v5 = unk_1ED8EB068;
  *a1 = qword_1ED8EB050;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;

  return sub_1BF0260EC(v2, v3, v4);
}

uint64_t sub_1BF0260EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    return sub_1BF026144(a2, a3);
  }

  return result;
}

uint64_t sub_1BF026144(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t sub_1BF026188()
{
  type metadata accessor for ReferenceService();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ReferenceService.add(typeService:)()
{
  OUTLINED_FUNCTION_7_7();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v8, v2, v3);
  v4 = v8[0];
  v5 = v8[1];
  sub_1BEFE6A78(v0, v7);
  swift_beginAccess();
  sub_1BF02635C(v7, v4, v5);
  return swift_endAccess();
}

uint64_t sub_1BF026264()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_27_2();
  v2 = v1;
  OUTLINED_FUNCTION_6_4(v1, v3);
  sub_1BEFF6B90();
  OUTLINED_FUNCTION_1_5(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  sub_1BF02647C();
  if (OUTLINED_FUNCTION_10_7())
  {
    v11 = *v0;
    OUTLINED_FUNCTION_41_0();
    sub_1BEFF6B90();
    OUTLINED_FUNCTION_11_2();
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v12;
  }

  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1((*(*v0 + 56) + 40 * v9));
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_55();

    return sub_1BEFE87B0(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    sub_1BF0265A4(v18, v19, v20, v2, v21);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t sub_1BF02635C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1BEFE87B0(a1, v17);
    v6 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_1BF026264();

    *v3 = v16;
  }

  else
  {
    v8 = MEMORY[0x1E69E6720];
    sub_1BF0ABBDC(a1, &unk_1EBDCAED0, sub_1BF0AB7F0, MEMORY[0x1E69E6720], sub_1BF0ABA08);
    sub_1BF0826E4(a2, a3, v9, v10, v11, v12, v13, v14, v15, v17[0]);

    return sub_1BF0ABBDC(v17, &unk_1EBDCAED0, sub_1BF0AB7F0, v8, sub_1BF0ABA08);
  }

  return result;
}

void sub_1BF02647C()
{
  if (!qword_1ED8E9C00)
  {
    sub_1BEFE6EA8(255, &qword_1ED8EACC8);
    sub_1BF0264F8();
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9C00);
    }
  }
}

unint64_t sub_1BF0264F8()
{
  result = qword_1ED8EABB0;
  if (!qword_1ED8EABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EABB0);
  }

  return result;
}

unint64_t sub_1BF026550()
{
  result = qword_1ED8EABA0;
  if (!qword_1ED8EABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EABA0);
  }

  return result;
}

void sub_1BF0265A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_0_29(a1, a2, a3, a4, a5);
  sub_1BEFE87B0(v8, v7 + 40 * v6);
  OUTLINED_FUNCTION_12_11();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

uint64_t static ReferenceType.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BF17B86C();
  }
}

uint64_t Atomic.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Atomic.init(wrappedValue:)(a1);
  return v5;
}

uint64_t sub_1BF026674()
{
  OUTLINED_FUNCTION_12_23();
  v2 = OUTLINED_FUNCTION_23_10();
  v0(v2);
  return v1;
}

uint64_t sub_1BF0266EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_34(a1, a2);
  toKey<A>(type:name:)();
  sub_1BF0093DC();
}

void sub_1BF026754()
{
  if (!qword_1ED8EAE10)
  {
    sub_1BF02693C(255, &qword_1ED8EAE78, type metadata accessor for DisposableWorker, MEMORY[0x1E69E62F8]);
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_1BF17B2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EAE10);
    }
  }
}

void BackgroundFetchManager.init(journal:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_disposableWorkers;
  sub_1BF026754();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_configuredTriggers] = MEMORY[0x1E69E7CD0];
  *(v5 + 16) = v6;
  v7 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_networkReachability;
  if (qword_1ED8EB7C8 != -1)
  {
    OUTLINED_FUNCTION_18_9();
  }

  *&v1[v7] = qword_1ED8F5260;
  v8 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_backgroundTaskSchedulingQueue;
  v9 = objc_allocWithZone(MEMORY[0x1E696ADC8]);

  v10 = [v9 init];
  *&v1[v8] = v10;
  *&v1[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___locationManager] = 0;
  *&v1[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager____lazy_storage___regionMonitor] = 0;
  *&v1[OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_journal] = a1;
  swift_unknownObjectRetain();
  [v10 setMaxConcurrentOperationCount_];
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_init);
  OUTLINED_FUNCTION_66();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_55_4();
}

void sub_1BF02693C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1BF0269C4()
{
  type metadata accessor for NetworkReachability();
  v0 = swift_allocObject();
  result = sub_1BF026A24();
  qword_1ED8F5260 = v0;
  return result;
}

void *sub_1BF026A24()
{
  v1 = v0;
  v22 = sub_1BF17AD4C();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_1BF17AD1C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v9 = sub_1BF179BBC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_2_0();
  v0[2] = 0;
  sub_1BEFF6E88();
  sub_1BF179B8C();
  sub_1BF00AFCC(&qword_1ED8F0BE0, MEMORY[0x1E69E8030]);
  sub_1BF026E68(0, qword_1ED8F0BF0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1BF014364();
  sub_1BF17B0BC();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v22);
  v0[3] = sub_1BF17AD9C();
  v11 = sub_1BF179A8C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[4] = sub_1BF179A7C();
  v14 = swift_allocObject();
  swift_weakInit();
  sub_1BF026E68(0, &qword_1ED8EB130, sub_1BF026ECC, type metadata accessor for Lazy);
  swift_allocObject();

  v15 = sub_1BF02AF14(0, sub_1BF03752C, v14);
  v16 = v1[2];
  v1[2] = v15;

  v17 = v1[4];
  swift_allocObject();
  swift_weakInit();

  sub_1BF009984(sub_1BF02EF30);
  sub_1BF179A5C();

  v19 = v1[3];
  v18 = v1[4];

  v20 = v19;
  sub_1BF179A6C();

  return v1;
}

uint64_t sub_1BF026DDC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1BF026E14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17A65C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF026E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BF026ECC()
{
  if (!qword_1ED8EC078[0])
  {
    v0 = type metadata accessor for AsyncObservable();
    if (!v1)
    {
      atomic_store(v0, qword_1ED8EC078);
    }
  }
}

uint64_t sub_1BF026F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a2 + 40) = 0;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return a2;
}

double sub_1BF026FAC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1BF026FD8()
{
  result = qword_1EBDCAB38;
  if (!qword_1EBDCAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAB38);
  }

  return result;
}

unint64_t sub_1BF027030()
{
  result = qword_1EBDCAB30;
  if (!qword_1EBDCAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAB30);
  }

  return result;
}

unint64_t sub_1BF027090()
{
  result = qword_1ED8EB4A0;
  if (!qword_1ED8EB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EB4A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation22BackgroundFetchTriggerO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t BackgroundFetchTrigger.hash(into:)()
{
  v1 = v0[1];
  if (v1)
  {
    if (v1 == 1)
    {
      OUTLINED_FUNCTION_17_12();
    }

    else if (v1 == 2)
    {
      OUTLINED_FUNCTION_17_12();
    }

    else
    {
      v2 = *v0;
      OUTLINED_FUNCTION_50_3();
      sub_1BF179F3C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_51_3();
  }

  return sub_1BF179F3C();
}

uint64_t sub_1BF0271B4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_1BF17BB6C();
  BackgroundFetchTrigger.hash(into:)();
  return sub_1BF17BB9C();
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

uint64_t sub_1BF027218(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

void sub_1BF027278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BF0272DC(uint64_t a1)
{
  sub_1BF028120(319);
  if (v3 <= 0x3F)
  {
    v11 = *(v2 - 8) + 64;
    v4 = *(a1 + 80);
    v5 = sub_1BF17AE6C();
    if (v6 <= 0x3F)
    {
      v12 = *(v5 - 8) + 64;
      v7 = sub_1BF1797FC();
      if (v8 <= 0x3F)
      {
        v13 = *(v7 - 8) + 64;
        sub_1BF027464(319);
        if (v10 <= 0x3F)
        {
          v14 = *(v9 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void SingleValueStore.init(directory:subdirectoryPath:filename:log:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v78 = v2;
  v77 = v3;
  v75 = v4;
  v72 = v5;
  v73 = *v0;
  sub_1BF00AE78(0);
  v7 = OUTLINED_FUNCTION_68(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v71 = v11 - v10;
  OUTLINED_FUNCTION_12_9();
  v74 = sub_1BF1797FC();
  v12 = OUTLINED_FUNCTION_1(v74);
  v79 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v76 = v17 - v16;
  OUTLINED_FUNCTION_12_9();
  v70 = sub_1BF17AD4C();
  v18 = OUTLINED_FUNCTION_1(v70);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  v26 = sub_1BF17AD1C();
  v27 = OUTLINED_FUNCTION_12(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = sub_1BF179BBC();
  v31 = OUTLINED_FUNCTION_68(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_0();
  v69 = qword_1ED8EE1E8;
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  sub_1BF179B7C();
  v80 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_9_13();
  sub_1BF00AEAC(v34, v35);
  sub_1BF00B014(0);
  OUTLINED_FUNCTION_8_10();
  sub_1BF00AEAC(v36, v37);
  sub_1BF17B0BC();
  (*(v20 + 104))(v25, *MEMORY[0x1E69E8090], v70);
  *&v0[v69] = sub_1BF17AD9C();
  v38 = qword_1ED8EE200;
  v80 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v0[v38] = UnfairLock.init(options:)(&v80);
  OUTLINED_FUNCTION_4_0();
  v40 = *(v39 + 152);
  v41 = *(v73 + 80);
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  OUTLINED_FUNCTION_4_0();
  v0[*(v46 + 160)] = 0;
  OUTLINED_FUNCTION_4_0();
  v48 = *(v47 + 168);
  *&v1[v48] = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_4_0();
  v50 = *(v49 + 184);
  sub_1BF028120(0);
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  v55 = &v1[qword_1ED8EE1F0];
  *v55 = v75;
  v55[8] = 0;
  sub_1BF17923C();
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v60 = &v1[qword_1ED8EE208];
  *v60 = v77;
  *(v60 + 1) = v78;
  OUTLINED_FUNCTION_5_10(&v1[qword_1ED8EE1F8]);
  sub_1BF0279C0(v72, v71, v61);
  if (__swift_getEnumTagSinglePayload(v71, 1, v74) == 1)
  {
    v62 = v76;
    v63 = v79;
    if (qword_1ED8EDDA8 != -1)
    {
      OUTLINED_FUNCTION_10_14();
    }

    v64 = __swift_project_value_buffer(v74, qword_1ED8F5280);
    (*(v79 + 16))(v76, v64, v74);
    OUTLINED_FUNCTION_0_24();
    sub_1BF00B048(v72, v65);
    if (__swift_getEnumTagSinglePayload(v71, 1, v74) != 1)
    {
      OUTLINED_FUNCTION_0_24();
      sub_1BF00B048(v71, v66);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_24();
    sub_1BF00B048(v72, v67);
    v63 = v79;
    v62 = v76;
    (*(v79 + 32))(v76, v71, v74);
  }

  OUTLINED_FUNCTION_4_0();
  (*(v63 + 32))(&v1[*(v68 + 176)], v62, v74);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0279C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_12(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_1BF027A28()
{
  if (!qword_1ED8ED410)
  {
    sub_1BF027AD4();
    sub_1BF027B68();
    sub_1BF00AF3C(&qword_1ED8ECBD8, sub_1BF027AD4);
    v0 = type metadata accessor for PromiseDeduper();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ED410);
    }
  }
}

void sub_1BF027AD4()
{
  if (!qword_1ED8ECBE0)
  {
    sub_1BF17923C();
    sub_1BEFE7240(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
    v0 = sub_1BF17A9AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ECBE0);
    }
  }
}

void sub_1BF027B68()
{
  if (!qword_1ED8ECC20)
  {
    sub_1BF17923C();
    type metadata accessor for AuthToken();
    sub_1BEFE7240(&qword_1ED8ED690, MEMORY[0x1E6968FB0]);
    v0 = sub_1BF179E9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ECC20);
    }
  }
}

uint64_t type metadata accessor for AuthToken()
{
  result = qword_1ED8ECD40;
  if (!qword_1ED8ECD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BF027C60(uint64_t a1)
{
  v1[2] = MEMORY[0x1E69E7CC8];
  v6 = 0;
  v3 = type metadata accessor for UnfairLock();
  swift_allocObject();
  v4 = UnfairLock.init(options:)(&v6);
  v1[6] = v3;
  v1[7] = &protocol witness table for UnfairLock;
  v1[3] = v4;
  v1[8] = a1;
  return v1;
}

void sub_1BF027CE0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_1_61();
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  v7 = *(v1 + 40);
  *(v1 + 40) = v4;
  sub_1BF00A8F8(v5, v6, v7);
}

void sub_1BF027DAC()
{
  OUTLINED_FUNCTION_32();
  v26[0] = v1;
  v3 = v2;
  OUTLINED_FUNCTION_5_41();
  v5 = *(v4 + 80);
  v6 = OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  OUTLINED_FUNCTION_2_3();
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v26 - v19;
  v21 = *(v0 + *(v0 + 112));
  UnfairLock.lock()();
  sub_1BF005128(v13);
  OUTLINED_FUNCTION_32_10(v13);
  if (v22)
  {
    (*(v8 + 8))(v13, v6);
    OUTLINED_FUNCTION_14_0();
    v23 = swift_allocObject();
    v23[2] = v5;
    v23[3] = v3;
    v23[4] = v26[0];
    v26[4] = sub_1BF02E89C;
    v26[5] = v23;
    OUTLINED_FUNCTION_4_0();
    v25 = *(v24 + 104);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_3_44();
    swift_getFunctionTypeMetadata1();
    sub_1BF17A65C();

    sub_1BF17A5DC();
    swift_endAccess();
    os_unfair_lock_unlock(*(v21 + 16));
  }

  else
  {
    (*(v15 + 32))(v20, v13, v5);
    os_unfair_lock_unlock(*(v21 + 16));
    v3(v20);
    (*(v15 + 8))(v20, v5);
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF027FFC()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void TaskScheduler.scheduleLowPriority(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v10 = a1;
  v11 = a2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  OUTLINED_FUNCTION_3_39();
  v8 = v4;
  v9 = &block_descriptor_12;
  v5 = _Block_copy(&v6);

  [v3 addOperationWithBlock_];
  _Block_release(v5);
}

uint64_t sub_1BF0280E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF028154()
{
  v0 = sub_1BF1797FC();
  __swift_allocate_value_buffer(v0, qword_1ED8F5280);
  OUTLINED_FUNCTION_3_24();
  if (qword_1ED8EFC00 != -1)
  {
    OUTLINED_FUNCTION_0_51();
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return OUTLINED_FUNCTION_1_39();
}

uint64_t Result.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_1(a1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v9 = (v8 - v7);
  (*(v10 + 16))(v8 - v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v9);
  }

  v11 = *v9;
  return swift_willThrow();
}

uint64_t sub_1BF028388(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v5 = v2[3];
  v6 = *(v4 + 80);
  type metadata accessor for Observer();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v7 = sub_1BF17A4EC();
  for (i = v7; i != sub_1BF17A5AC(); v7 = i)
  {
    v12 = sub_1BF17A58C();
    sub_1BF17A51C();
    if (v12)
    {
      v13 = *(v5 + 32 + 8 * v7);
    }

    else
    {
      v13 = sub_1BF17B23C();
    }

    sub_1BF17A62C();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v15 = *(v13 + 24);
      v14 = *(v13 + 32);

      v15(a1);
    }
  }

  v17 = v2[3];
  MEMORY[0x1EEE9AC00](v8);
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  v9 = sub_1BF17B31C();
  v10 = v2[3];
  v2[3] = v9;
}

uint64_t sub_1BF0285A4(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v33 = a2;
  v34 = *(*v2 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = *(TupleTypeMetadata2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v30 = &v25 - v6;
  swift_beginAccess();
  v26 = v2;
  v7 = v2[4];
  v31 = TupleTypeMetadata2;
  v8 = type metadata accessor for Observer();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v9 = sub_1BF17A4EC();
  v36 = v9;
  if (v9 != sub_1BF17A5AC())
  {
    v35 = v7 + 32;
    v27 = (v4 + 8);
    v28 = v34 - 8;
    v29 = v8;
    v15 = v34;
    do
    {
      v16 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v16)
      {
        v17 = *(v35 + 8 * v9);
      }

      else
      {
        v17 = sub_1BF17B23C();
      }

      sub_1BF17A62C();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v19 = *(v17 + 24);
        v18 = *(v17 + 32);
        v21 = v30;
        v20 = v31;
        v22 = *(v31 + 48);
        v23 = *(*(v15 - 8) + 16);
        v23(v30, v32, v15);
        v23(&v21[v22], v33, v15);
        v19(v21);
        (*v27)(v21, v20);
      }

      v24 = sub_1BF17A5AC();
      v9 = v36;
    }

    while (v36 != v24);
  }

  v11 = v26;
  v36 = v26[4];
  MEMORY[0x1EEE9AC00](v10);
  *(&v25 - 2) = v34;
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  v12 = sub_1BF17B31C();
  v13 = v11[4];
  v11[4] = v12;
}

uint64_t sub_1BF028A88(void *a1)
{

  MEMORY[0x1BFB52290](v2);
  sub_1BF005F5C(*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_1BF17A59C();
}

uint64_t sub_1BF028B1C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v35 = *a1;
  v36 = *(a1 + 8);
  v34 = *(a1 + 24);
  v4 = *(a2 + 40);
  sub_1BF17BB6C();
  if (v36 > 2)
  {
    sub_1BF179F3C();
  }

  sub_1BF179F3C();
  v6 = sub_1BF17BB9C();
  v14 = -1 << *(a2 + 32);
  v15 = v6 & ~v14;
  if (((*(a2 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v16 = ~v14;
  while (1)
  {
    v17 = (*(a2 + 48) + 40 * v15);
    v19 = *v17;
    v18 = v17[1];
    v21 = v17[2];
    v20 = v17[3];
    v22 = v17[4];
    v37[0] = *v17;
    v37[1] = v18;
    v37[2] = v21;
    v37[3] = v20;
    v37[4] = v22;
    v37[5] = v35;
    v38 = v36;
    v39 = v34;
    switch(v18)
    {
      case 0:
        if (!*(a1 + 8))
        {
          goto LABEL_30;
        }

        goto LABEL_16;
      case 1:
        if (*(a1 + 8) == 1)
        {
          goto LABEL_30;
        }

        goto LABEL_16;
      case 2:
        if (*(a1 + 8) == 2)
        {
          goto LABEL_30;
        }

LABEL_16:
        OUTLINED_FUNCTION_2_33(v6, v7, v8, v9, v10, v11, v12, v13);
LABEL_17:
        v6 = sub_1BF0379BC(v37);
        goto LABEL_18;
    }

    v23 = *(a1 + 8);
    if (v23 < 3)
    {
      OUTLINED_FUNCTION_2_33(v6, v7, v8, v23, v10, v11, v12, v13);
      OUTLINED_FUNCTION_0_52();
      goto LABEL_17;
    }

    if (v19 == *a1 && v18 == v23)
    {
      break;
    }

    v25 = sub_1BF17B86C();
    v33 = v25;
    OUTLINED_FUNCTION_2_33(v25, v26, v27, v28, v29, v30, v31, v32);
    OUTLINED_FUNCTION_0_52();
    v6 = sub_1BF0379BC(v37);
    if (v33)
    {
      return 1;
    }

LABEL_18:
    v15 = (v15 + 1) & v16;
    if (((*(a2 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_2_33(v6, v7, *a1, v23, v10, v11, v12, v13);
  OUTLINED_FUNCTION_0_52();
LABEL_30:
  sub_1BF0379BC(v37);
  return 1;
}

void static BackgroundFetchTrigger.== infix(_:_:)()
{
  OUTLINED_FUNCTION_53();
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v7 = v1[1];
  v8 = v1[3];
  v9 = v1[4];
  if (v2)
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        if (v7 == 2)
        {
          goto LABEL_19;
        }

        goto LABEL_9;
      }

      if (v7 < 3)
      {
        v12 = OUTLINED_FUNCTION_11_17();
        sub_1BF027218(v12, v13);
        v10 = OUTLINED_FUNCTION_9_24();
        goto LABEL_12;
      }

      if (v3 != *v1 || v2 != v7)
      {
        sub_1BF17B86C();
        v17 = OUTLINED_FUNCTION_11_17();
        sub_1BF027218(v17, v18);
        v19 = OUTLINED_FUNCTION_9_24();
        v21 = sub_1BF027218(v19, v20);
        OUTLINED_FUNCTION_4_27(v21, v22);
        goto LABEL_20;
      }

      sub_1BF027218(v3, v2);
      v23 = OUTLINED_FUNCTION_9_24();
      v0 = sub_1BF027218(v23, v24);
LABEL_19:
      OUTLINED_FUNCTION_4_27(v0, v1);
      goto LABEL_20;
    }

    if (v7 == 1)
    {
      goto LABEL_19;
    }
  }

  else if (!v7)
  {
    goto LABEL_19;
  }

LABEL_9:
  v10 = OUTLINED_FUNCTION_11_17();
LABEL_12:
  v14 = sub_1BF027218(v10, v11);
  OUTLINED_FUNCTION_4_27(v14, v15);
LABEL_20:
  OUTLINED_FUNCTION_52_4();
}

uint64_t sub_1BF028EE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1BF028F38()
{
  if (!qword_1ED8EB490)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8EB490);
    }
  }
}

uint64_t sub_1BF028F94()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF0370D4();
    v1 = sub_1BF037CBC();
    sub_1BF038278(v1, 1);
  }

  return result;
}

uint64_t sub_1BF02901C()
{
  sub_1BEFFA414();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF029048(uint64_t a1, uint64_t a2)
{
  v51 = *(a2 + 16);
  v52 = *a2;
  v50 = *(a2 + 32);
  v54 = *v2;
  v5 = *(*v2 + 40);
  sub_1BF17BB6C();
  v47 = v2;
  v48 = a1;
  if (*(&v52 + 1) > 2uLL)
  {
    sub_1BF179F3C();
  }

  sub_1BF179F3C();
  sub_1BF17BB9C();
  v6 = v54 + 56;
  v7 = *(v54 + 32);
  OUTLINED_FUNCTION_14_27();
  v17 = v8 & ~v16;
  if (((*(v54 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_25:
    v36 = *v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55[0] = *v47;
    sub_1BF02832C(a2, v56);
    sub_1BF036D70(a2, v17, isUniquelyReferenced_nonNull_native);
    *v47 = v55[0];
    v38 = *(a2 + 16);
    *v48 = *a2;
    *(v48 + 16) = v38;
    *(v48 + 32) = *(a2 + 32);
    return 1;
  }

  v18 = ~v16;
  while (1)
  {
    OUTLINED_FUNCTION_39_5(v8, v9, v10, v11, v12, v13, v14, v15, v46, v47, v48, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54);
    v21 = *v19;
    v20 = v19[1];
    v23 = v19[2];
    v22 = v19[3];
    v24 = v19[4];
    v56[0] = *v19;
    v56[1] = v20;
    v56[2] = v23;
    v56[3] = v22;
    v56[4] = v24;
    v57 = v52;
    v58 = v51;
    v59 = v50;
    switch(v20)
    {
      case 0:
        if (!*(a2 + 8))
        {
          goto LABEL_27;
        }

        goto LABEL_13;
      case 1:
        if (*(a2 + 8) == 1)
        {
          goto LABEL_27;
        }

        goto LABEL_13;
      case 2:
        if (*(a2 + 8) == 2)
        {
          goto LABEL_27;
        }

LABEL_13:
        sub_1BF02832C(a2, v55);
LABEL_14:
        v8 = sub_1BF0379BC(v56);
        goto LABEL_15;
    }

    v25 = *(a2 + 8);
    if (v25 < 3)
    {
      sub_1BF02832C(a2, v55);
      OUTLINED_FUNCTION_26_13();
      goto LABEL_14;
    }

    if (v21 == *a2 && v20 == v25)
    {
      break;
    }

    v27 = sub_1BF17B86C();
    sub_1BF02832C(a2, v55);
    OUTLINED_FUNCTION_26_13();
    v8 = sub_1BF0379BC(v56);
    if (v27)
    {
      v28 = sub_1BF0282E0(a2);
      goto LABEL_28;
    }

LABEL_15:
    v17 = (v17 + 1) & v18;
    if (((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

LABEL_27:
  v28 = sub_1BF0379BC(v56);
LABEL_28:
  OUTLINED_FUNCTION_39_5(v28, v29, v30, v31, v32, v33, v34, v35, v46, v47, v48, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54);
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v44 = v40[3];
  v45 = v40[4];
  *v49 = *v40;
  v49[1] = v42;
  v49[2] = v43;
  v49[3] = v44;
  v49[4] = v45;
  sub_1BF027218(v41, v42);
  return 0;
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1, uint64_t a2)
{

  return sub_1BF01A7AC(a1, a2, (v2 - 160));
}

uint64_t OUTLINED_FUNCTION_71_0()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

void *LRUCache.init(maxSize:)(uint64_t a1)
{
  v3 = *v1;
  v1[3] = 0;
  v4 = v3[10];
  v5 = v3[11];
  type metadata accessor for LRUCacheNode();
  type metadata accessor for DoublyLinkedList();
  v1[5] = DoublyLinkedList.__allocating_init()();
  v1[2] = a1;
  v6 = type metadata accessor for Node();
  v1[4] = MEMORY[0x1BFB51B60](a1, v4, v6, v3[12]);
  return v1;
}

uint64_t sub_1BF02945C(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t DoublyLinkedList.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1BF029578(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BF029620()
{
  result = qword_1ED8EF868;
  if (!qword_1ED8EF868)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED8EF868);
  }

  return result;
}

id sub_1BF0296F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[4];
  v4 = *v1 >> 61;
  if (v4 == 1)
  {
    v6 = v1[5];
    v8 = v1[1];
    v7 = v1[2];
    v9 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    a1[3] = &type metadata for JSONUnkeyedDecodingContainer;
    v10 = *(v1 + 24);
    a1[4] = sub_1BF029920();
    v11 = swift_allocObject();
    *a1 = v11;
    *(v11 + 56) = v3;
    *(v11 + 64) = 0;
    *(v11 + 16) = v9;
    *(v11 + 24) = v6;
    *(v11 + 32) = v8;
    *(v11 + 40) = v7;
    *(v11 + 48) = v10;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    return sub_1BF01730C(v8, v7, v10);
  }

  else
  {
    sub_1BF05350C();
    swift_allocError();
    v14 = 0xE600000000000000;
    v15 = 0x7463656A626FLL;
    switch(v4)
    {
      case 1uLL:
        v14 = 0xE500000000000000;
        v15 = 0x7961727261;
        break;
      case 2uLL:
        v15 = 0x676E69727473;
        break;
      case 3uLL:
        v15 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v14 = 0xE400000000000000;
        v15 = 1702195828;
        v16 = 0xE500000000000000;
        v17 = 0x65736C6166;
        if (v2 != 0x8000000000000008)
        {
          v17 = 1819047278;
          v16 = 0xE400000000000000;
        }

        if (v2 != 0x8000000000000000)
        {
          v15 = v17;
          v14 = v16;
        }

        break;
      default:
        break;
    }

    *v13 = v3;
    *(v13 + 8) = v15;
    *(v13 + 16) = v14;
    *(v13 + 80) = 2;
    swift_willThrow();
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t sub_1BF0298CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1BF00A8F8(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

unint64_t sub_1BF029920()
{
  result = qword_1ED8EF460;
  if (!qword_1ED8EF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF460);
  }

  return result;
}

void sub_1BF0299A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v97 = a3;
  v98 = a4;
  v99 = a1;
  sub_1BF01511C(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v95 = &v80 - v8;
  v101 = sub_1BF17923C();
  v94 = *(v101 - 8);
  v9 = *(v94 + 64);
  v10 = MEMORY[0x1EEE9AC00](v101);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v80 - v13;
  v15 = sub_1BF1794AC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BF17AE6C();
  v96 = *(v19 - 8);
  v20 = *(v96 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v80 - v22;
  v100 = a2;
  v24 = *(a2 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v102;
  sub_1BF02A3D8(&v103);
  if (v28)
  {
    return;
  }

  v85 = v18;
  v91 = v15;
  v81 = v14;
  v82 = v12;
  v92 = 0;
  v29 = v101;
  v83 = v27;
  v84 = v24;
  v87 = v19;
  v30 = v103;
  v31 = *(v4 + 40);
  sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17DEF0;
  v33 = *(v4 + 48);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
    return;
  }

  v36 = v4;
  v37 = inited;
  v86 = v23;
  v103 = v35;
  v38 = v35;
  sub_1BF01716C(v30);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v45 = sub_1BF17B6FC();
  v40 = v39;
  v37[7] = &type metadata for _JSONKey;
  v37[8] = sub_1BF02A58C();
  v41 = swift_allocObject();
  v37[4] = v41;
  *(v41 + 16) = v45;
  *(v41 + 24) = v40;
  v88 = v38;
  *(v41 + 32) = v38;
  *(v41 + 40) = 0;
  v103 = v31;
  sub_1BF02967C(v37);
  v90 = v103;
  v43 = *(v36 + 8);
  v42 = *(v36 + 16);
  v44 = *(v36 + 24);
  LODWORD(v45) = *(v36 + 32);
  v102 = v44;
  v93 = v42;
  if (v91 == v99)
  {
    v103 = v42;
    v104 = v44;
    v105 = v45;
    v108 = v30;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF01730C(v42, v44, v45);
    v54 = v92;
    sub_1BF051984(&v108, MEMORY[0x1E69E7CC0], v43, v85);
    v46 = v100;
    v55 = v90;
    if (v54)
    {
      goto LABEL_31;
    }

    v92 = 0;
    v89 = v43;
    v99 = v36;
    v56 = v86;
    if (swift_dynamicCast())
    {
      v57 = v56;
      v58 = 0;
    }

    else
    {
      v57 = v56;
      v58 = 1;
    }

    __swift_storeEnumTagSinglePayload(v57, v58, 1, v46);
LABEL_27:
    v66 = v102;
    v67 = v87;
    v75 = v84;
    if (__swift_getEnumTagSinglePayload(v56, 1, v46) != 1)
    {
      sub_1BF017214(v30);
      sub_1BF017214(v30);
      sub_1BF00A8F8(v93, v66, v45);

      v78 = *(v75 + 32);
      v79 = v83;
      v78(v83, v56, v46);
      v78(v98, v79, v46);
      return;
    }

    v65 = v93;
    v64 = v89;
    goto LABEL_29;
  }

  v91 = v31;
  v89 = v43;
  v46 = v100;
  if (v29 != v99)
  {
    if (v99 != MEMORY[0x1E6969080] || (v30 & 0xE000000000000000) != 0x4000000000000000)
    {
      goto LABEL_18;
    }

    v48 = v36;
    v49 = v45;
    v45 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v50 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    LODWORD(v85) = v49;
    sub_1BF01730C(v93, v102, v49);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v51 = sub_1BF1792BC();
    if (v52 >> 60 == 15)
    {
      sub_1BF05350C();
      swift_allocError();
      *v53 = v91;
      *(v53 + 8) = v45;
      *(v53 + 16) = v50;
      *(v53 + 80) = 6;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      LOBYTE(v45) = v85;
LABEL_31:
      *(v36 + 48) = v88;
      swift_willThrow();
      sub_1BF017214(v30);
      sub_1BF00A8F8(v93, v102, v45);

      sub_1BF017214(v30);
      return;
    }

    v68 = v51;
    v69 = v52;

    v103 = v68;
    v104 = v69;
    v56 = v86;
    v70 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v56, v70 ^ 1u, 1, v46);
    v99 = v48;
    goto LABEL_26;
  }

  if (v30 >> 61 == 2)
  {
    v59 = v29;
    v99 = v36;
    v60 = v45;
    v45 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v61 = *((v30 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    LODWORD(v85) = v60;
    sub_1BF01730C(v93, v102, v60);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v62 = v95;
    sub_1BF1791FC();
    if (__swift_getEnumTagSinglePayload(v62, 1, v59) == 1)
    {
      sub_1BF0F698C(v62);
      sub_1BF05350C();
      swift_allocError();
      *v63 = v91;
      *(v63 + 8) = v45;
      *(v63 + 16) = v61;
      *(v63 + 80) = 9;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      LOBYTE(v45) = v85;
LABEL_30:
      v36 = v99;
      goto LABEL_31;
    }

    v71 = *(v94 + 32);
    v72 = v81;
    v71(v81, v62, v59);
    v71(v82, v72, v59);
    v56 = v86;
    if (swift_dynamicCast())
    {
      v73 = v56;
      v74 = 0;
    }

    else
    {
      v73 = v56;
      v74 = 1;
    }

    __swift_storeEnumTagSinglePayload(v73, v74, 1, v46);
LABEL_26:
    v55 = v90;
    LOBYTE(v45) = v85;
    goto LABEL_27;
  }

LABEL_18:
  v99 = v36;
  v56 = v86;
  __swift_storeEnumTagSinglePayload(v86, 1, 1, v100);
  v64 = v89;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v65 = v93;
  v66 = v102;
  sub_1BF01730C(v93, v102, v45);
  v55 = v90;
  v67 = v87;
LABEL_29:
  (*(v96 + 8))(v56, v67);
  v106 = &type metadata for _JSONDecoder;
  v107 = sub_1BF0172B8();
  v76 = swift_allocObject();
  v103 = v76;
  *(v76 + 16) = v30;
  *(v76 + 24) = v65;
  *(v76 + 32) = v66;
  *(v76 + 40) = v45;
  *(v76 + 48) = v55;
  *(v76 + 56) = v64;
  sub_1BF01716C(v30);
  sub_1BF01730C(v65, v66, v45);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v77 = v92;
  sub_1BF17A8BC();
  if (v77)
  {
    goto LABEL_30;
  }

  sub_1BF017214(v30);
  sub_1BF00A8F8(v65, v66, v45);

  sub_1BF017214(v30);
}

void sub_1BF02A3D8(unint64_t *a1@<X8>)
{
  v2 = v1[6];
  if (v2 >= *(*v1 + 16))
  {
    sub_1BF05350C();
    swift_allocError();
    v5 = v4;
    v6 = v1[5];
    sub_1BF01511C(0, &qword_1ED8EF870, sub_1BF029620, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF17DEF0;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v8 = sub_1BF17B6FC();
    v10 = v9;
    *(inited + 56) = &type metadata for _JSONKey;
    *(inited + 64) = sub_1BF02A58C();
    v11 = swift_allocObject();
    *(inited + 32) = v11;
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v11 + 32) = v2;
    *(v11 + 40) = 0;
    sub_1BF02967C(inited);
    *v5 = v6;
    *(v5 + 80) = 0;
    swift_willThrow();
  }

  else if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*v1 + 8 * v2 + 32);
    v1[6] = v2 + 1;
    *a1 = v3;
    sub_1BF01716C(v3);
  }
}

uint64_t sub_1BF02A554()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

unint64_t sub_1BF02A58C()
{
  result = qword_1ED8EF3C0;
  if (!qword_1ED8EF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF3C0);
  }

  return result;
}

unint64_t sub_1BF02A5E0()
{
  result = qword_1ED8EF3C8;
  if (!qword_1ED8EF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF3C8);
  }

  return result;
}

unint64_t sub_1BF02A638()
{
  result = qword_1ED8EF3D0;
  if (!qword_1ED8EF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF3D0);
  }

  return result;
}

uint64_t sub_1BF02A6A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  a1[3] = &type metadata for JSONSingleValueDecodingContainer;
  v8 = *(v1 + 24);
  a1[4] = sub_1BF02A7A4();
  v9 = swift_allocObject();
  *a1 = v9;
  *(v9 + 56) = v6;
  *(v9 + 16) = v3;
  *(v9 + 24) = v7;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  *(v9 + 48) = v8;
  sub_1BF01716C(v3);
  sub_1BF01730C(v4, v5, v8);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF02A758()
{
  sub_1BF017214(*(v0 + 16));
  v1 = *(v0 + 24);

  sub_1BF00A8F8(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 56);

  v3 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

unint64_t sub_1BF02A7A4()
{
  result = qword_1ED8EF7C0;
  if (!qword_1ED8EF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EF7C0);
  }

  return result;
}

uint64_t sub_1BF02A7F8()
{
  v1 = *v0;
  v2 = *v0 >> 61;
  if (v2 == 2)
  {
    v4 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v3 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  }

  else
  {
    v5 = v0[5];
    sub_1BF05350C();
    v6 = swift_allocError();
    v8 = 0xE600000000000000;
    v9 = 0x7463656A626FLL;
    switch(v2)
    {
      case 1uLL:
        v8 = 0xE500000000000000;
        v9 = 0x7961727261;
        break;
      case 2uLL:
        v9 = 0x676E69727473;
        break;
      case 3uLL:
        v9 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v8 = 0xE400000000000000;
        v9 = 1702195828;
        v10 = 0xE500000000000000;
        v11 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v11 = 1819047278;
          v10 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v9 = v11;
          v8 = v10;
        }

        break;
      default:
        break;
    }

    *v7 = v5;
    *(v7 + 8) = 0x676E69727473;
    *(v7 + 16) = 0xE600000000000000;
    *(v7 + 24) = v9;
    *(v7 + 32) = v8;
    *(v7 + 80) = 10;
    v4 = v6;
    swift_willThrow();
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v4;
}

uint64_t _TeaJSONDecoder.deinit()
{
  v1 = *(v0 + 16);

  sub_1BF00A8F8(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 56);
  sub_1BEFE52DC(*(v0 + 48));
  return v0;
}

void += infix<A, B>(_:_:)()
{
  OUTLINED_FUNCTION_32();
  v75 = v0;
  v76 = v1;
  v3 = v2;
  v86 = v4;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_25_7();
  v8 = OUTLINED_FUNCTION_68(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v74 = v65 - v11;
  OUTLINED_FUNCTION_2_3();
  v70 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v72 = v17 - v16;
  OUTLINED_FUNCTION_2_3();
  v69 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v85 = v3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v82 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1_16();
  v84 = v31;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_10_21();
  v81 = v33;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v34 = sub_1BF17B47C();
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v83 = v34 | 0x8000000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_19_9();
    v35 = v6 + 64;
    v38 = *(v6 + 64);
    OUTLINED_FUNCTION_18_0();
    v37 = v39 & v40;
    v83 = v6;
  }

  v41 = (v69 + 32);
  v42 = (v70 + 32);
  v65[1] = v36;
  v43 = (v36 + 64) >> 6;
  v67 = v70 + 16;
  v68 = v69 + 16;
  v78 = (v27 + 32);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v44 = 0;
  v73 = v24;
  v71 = TupleTypeMetadata2;
  v80 = v35;
  v45 = v37;
  v66 = v41;
  while (1)
  {
    v79 = v45;
    v77 = v44;
    if ((v83 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1BF17B48C())
    {
      sub_1BF17B82C();
      swift_unknownObjectRelease();
      v54 = v85;
      v55 = v72;
      sub_1BF17B82C();
      swift_unknownObjectRelease();
      v46 = v44;
      v41 = v66;
      v37 = v45;
      goto LABEL_14;
    }

    v57 = 1;
    v37 = v45;
    v47 = v44;
    v48 = v84;
LABEL_15:
    __swift_storeEnumTagSinglePayload(v48, v57, 1, TupleTypeMetadata2);
    v58 = v81;
    (*v78)(v81, v48, v82);
    if (__swift_getEnumTagSinglePayload(v58, 1, TupleTypeMetadata2) == 1)
    {
      sub_1BF003FE8();
      OUTLINED_FUNCTION_26_2();
      return;
    }

    v59 = *(TupleTypeMetadata2 + 48);
    v24 = v73;
    (*v41)(v73, v58, v86);
    v60 = v58 + v59;
    v61 = v85;
    (*v42)(v74, v60, v85);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
    sub_1BF179E9C();
    sub_1BF179EBC();
    v44 = v47;
    v45 = v37;
    v35 = v80;
  }

  v46 = v44;
  if (v45)
  {
LABEL_11:
    OUTLINED_FUNCTION_21_8();
    v50 = v49 | (v46 << 6);
    v52 = v51;
    (*(v69 + 16))(v24, *(v51 + 48) + *(v69 + 72) * v50, v86);
    v53 = *(v52 + 56) + *(v70 + 72) * v50;
    v54 = v85;
    v55 = v72;
    (*(v70 + 16))(v72, v53, v85);
LABEL_14:
    v56 = *(v71 + 48);
    TupleTypeMetadata2 = v71;
    v48 = v84;
    (*v41)();
    (*v42)((v48 + v56), v55, v54);
    v57 = 0;
    v47 = v46;
    goto LABEL_15;
  }

  v47 = v44;
  v48 = v84;
  while (1)
  {
    v46 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v46 >= v43)
    {
      v37 = 0;
      v57 = 1;
      goto LABEL_15;
    }

    ++v47;
    if (*(v35 + 8 * v46))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1BF02AEA8(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BF179D5C();

  return v3;
}

void *sub_1BF02AF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7CC0];
  v3[4] = 0;
  v3[5] = v8;
  v13 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v3[6] = UnfairLock.init(options:)(&v13);
  v3[2] = a2;
  v3[3] = a3;
  v9 = qword_1ED8F01C8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = byte_1ED8F52C8;

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  v4[7] = v11;
  return v4;
}

void sub_1BF02AFEC(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v47 = *a1;
  v48 = v3;
  v49 = *(a1 + 4);
  v4 = OBJC_IVAR____TtC13TeaFoundation22BackgroundFetchManager_configuredTriggers;
  swift_beginAccess();
  v5 = *&v1[v4];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = sub_1BF028B1C(&v47, v5);

  if (v6)
  {
    return;
  }

  if (qword_1ED8EAEC8 != -1)
  {
    swift_once();
  }

  v7 = sub_1BF1797FC();
  __swift_project_value_buffer(v7, qword_1ED8F5248);
  sub_1BF02832C(&v47, &aBlock);
  v8 = sub_1BF1797DC();
  v9 = sub_1BF17ACDC();
  sub_1BF0282E0(&v47);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40[0] = v11;
    *v10 = 136446210;
    if (*(&v47 + 1))
    {
      if (*(&v47 + 1) == 2)
      {
        v12 = 1802661719;
      }

      else
      {
        if (*(&v47 + 1) != 1)
        {
          aBlock = 0x656C756465686353;
          v42 = 0xEB00000000203A64;
          MEMORY[0x1BFB52000](v47);
          v14 = aBlock;
          v13 = v42;
          goto LABEL_13;
        }

        v12 = 1701670728;
      }

      v13 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      v14 = 0x20676E697661654CLL;
    }

    else
    {
      v13 = 0xEB00000000687365;
      v14 = 0x7266655220707041;
    }

LABEL_13:
    v15 = sub_1BF01A7AC(v14, v13, v40);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1BEFE0000, v8, v9, "configuring trigger: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1BFB547B0](v11, -1, -1);
    MEMORY[0x1BFB547B0](v10, -1, -1);
  }

  v16 = *(&v47 + 1);
  switch(*(&v47 + 1))
  {
    case 0:
LABEL_20:
      swift_beginAccess();
      sub_1BF02832C(&v47, &aBlock);
      sub_1BF029048(&aBlock, &v47);
      swift_endAccess();
      sub_1BF03794C(aBlock, v42);
      return;
    case 2:
      v17 = [objc_opt_self() defaultManager];
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      v45 = sub_1BF103164;
      v46 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v43 = sub_1BF0FF4CC;
      v44 = &block_descriptor_40;
      v19 = _Block_copy(&aBlock);
      v22 = v2;

      [v17 fetchLocationsOfInterestOfType:1 withHandler:v19];
      goto LABEL_19;
    case 1:
      v17 = [objc_opt_self() defaultManager];
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      v45 = sub_1BF103198;
      v46 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v42 = 1107296256;
      v43 = sub_1BF0FF4CC;
      v44 = &block_descriptor_46;
      v19 = _Block_copy(&aBlock);
      v20 = v2;

      [v17 fetchLocationsOfInterestOfType:0 withHandler:v19];
LABEL_19:
      _Block_release(v19);

      goto LABEL_20;
  }

  v23 = v47;
  v24 = v48;
  v25 = v49;
  v26 = [objc_opt_self() sharedScheduler];
  v27 = sub_1BF17A07C();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v30 = v48;
  *(v29 + 24) = v47;
  *(v29 + 16) = v28;
  *(v29 + 40) = v30;
  *(v29 + 56) = v49;
  *(v29 + 64) = v23;
  *(v29 + 72) = v16;
  *(v29 + 80) = v24;
  *(v29 + 96) = v25;
  v45 = sub_1BF10314C;
  v46 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1BF10034C;
  v44 = &block_descriptor_34;
  v31 = _Block_copy(&aBlock);
  sub_1BF02832C(&v47, v40);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v32 = [v26 registerForTaskWithIdentifier:v27 usingQueue:0 launchHandler:v31];
  _Block_release(v31);

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v33 = sub_1BF1797DC();
  if (v32)
  {
    v34 = sub_1BF17ACDC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_1BF01A7AC(v23, v16, &aBlock);
      _os_log_impl(&dword_1BEFE0000, v33, v34, "registered task handler for %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1BFB547B0](v36, -1, -1);
      MEMORY[0x1BFB547B0](v35, -1, -1);
    }

    aBlock = v24;
    sub_1BF037B48(v23, v16, &aBlock, *(&v24 + 1), v25);
    goto LABEL_20;
  }

  v37 = sub_1BF17ACBC();

  if (os_log_type_enabled(v33, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_1BF01A7AC(v23, v16, &aBlock);
    _os_log_impl(&dword_1BEFE0000, v33, v37, "failed to register task handler for %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1BFB547B0](v39, -1, -1);
    MEMORY[0x1BFB547B0](v38, -1, -1);
  }
}

uint64_t sub_1BF02B734()
{
  MEMORY[0x1BFB548B0](v0 + 16);
  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF02B764()
{
  v1 = v0[2];

  if (v0[4] >= 3uLL)
  {

    v2 = v0[7];
  }

  v3 = v0[9];

  v4 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1BF02B7C4()
{
  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF02B7F8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF035EB4;

  return v7(a1);
}

void OUTLINED_FUNCTION_78_1()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t _TeaJSONDecoder.__deallocating_deinit()
{
  _TeaJSONDecoder.deinit();
  v0 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF02BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = a4();
  v7();

  return v5;
}

uint64_t sub_1BF02BAA4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *a2;
  v10 = *(*v4 + 80);
  sub_1BF00CCEC(v10, v10);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = *(v10 - 8);
  v15 = *(v14 + 72);
  v16 = *(v14 + 80);
  swift_allocObject();
  v17 = sub_1BF17A50C();
  (*(v14 + 16))(v18, a1, v10);
  sub_1BF00CD7C();
  if (sub_1BF17A5AC())
  {
    v19 = sub_1BF02C7D0(v17, v10, *(v8 + 88));
  }

  else
  {

    v19 = MEMORY[0x1E69E7CD0];
  }

  v21 = v9;
  sub_1BEFFAB94(v19, &v21, a3, a4);
}

uint64_t TaskScheduler.schedule(_:)()
{
  OUTLINED_FUNCTION_10_26();
  v1 = sub_1BF179B5C();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = sub_1BF179BBC();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = [objc_opt_self() isMainThread];
  v20 = *(v0 + 16);
  if (v19)
  {
    sub_1BF179BAC();
    OUTLINED_FUNCTION_7_28();
    v38 = 1107296256;
    OUTLINED_FUNCTION_3_39();
    v39 = v21;
    v40 = &block_descriptor_3_1;
    _Block_copy(aBlock);
    OUTLINED_FUNCTION_2_53();
    sub_1BEFF7458(v22, v23);
    v24 = OUTLINED_FUNCTION_10_26();
    sub_1BF027D54(v24);
    OUTLINED_FUNCTION_1_54();
    sub_1BEFF7458(v25, v26);

    sub_1BF17B0BC();
    v27 = sub_1BF179C4C();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1BF179C1C();

    sub_1BF17AD8C();
  }

  else
  {
    OUTLINED_FUNCTION_7_28();
    v38 = 1107296256;
    OUTLINED_FUNCTION_3_39();
    v39 = v30;
    v40 = &block_descriptor_14;
    v31 = _Block_copy(aBlock);

    sub_1BF179B8C();
    OUTLINED_FUNCTION_2_53();
    sub_1BEFF7458(v32, v33);
    sub_1BF027D54(0);
    OUTLINED_FUNCTION_1_54();
    sub_1BEFF7458(v34, v35);
    sub_1BF17B0BC();
    MEMORY[0x1BFB52B50](0, v18, v9, v31);
    _Block_release(v31);
    (*(v4 + 8))(v9, v1);
    (*(v13 + 8))(v18, v10);
  }
}

void Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v71 = v6;
  v8 = v7;
  v68 = OUTLINED_FUNCTION_25_7();
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_16();
  v67 = v14;
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_21();
  v69 = v16;
  OUTLINED_FUNCTION_2_3();
  v70 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_0();
  v66 = v22 - v21;
  OUTLINED_FUNCTION_2_3();
  v24 = v23;
  v26 = *(v25 + 64);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v65 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v59 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v59 - v32;
  v72 = v1;
  v76 = sub_1BF179CEC();
  OUTLINED_FUNCTION_80_1();
  v34 = sub_1BF17A4EC();
  v75 = v34;
  OUTLINED_FUNCTION_80_1();
  if (v34 == sub_1BF17A5AC())
  {
LABEL_12:
    OUTLINED_FUNCTION_26_2();
    return;
  }

  v73 = (v24 + 16);
  v35 = v10;
  v36 = (v24 + 32);
  v37 = v69;
  v62 = (v70 + 2);
  v63 = (v70 + 4);
  v61 = (v70 + 1);
  v70 = (v24 + 8);
  v59 = v26;
  v60 = (v35 + 8);
  v64 = v24;
  while (1)
  {
    OUTLINED_FUNCTION_80_1();
    v38 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v38 & 1) == 0)
    {
      break;
    }

    v39 = v8 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v40 = *(v24 + 72);
    v41 = *(v24 + 16);
    v42 = OUTLINED_FUNCTION_16_9();
    (v41)(v42);
LABEL_5:
    sub_1BF17A62C();
    (*v36)(v31, v33, v5);
    sub_1BF179EAC();
    if (__swift_getEnumTagSinglePayload(v37, 1, v3) == 1)
    {
      v43 = *v70;
      v44 = OUTLINED_FUNCTION_17_2();
      v45(v44);
      (*v60)(v37, v68);
    }

    else
    {
      v46 = v36;
      v47 = v33;
      v48 = v66;
      (*v63)(v66, v37, v3);
      OUTLINED_FUNCTION_17_7();
      v41();
      (*v62)(v67, v48, v3);
      OUTLINED_FUNCTION_127();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v3);
      sub_1BF179E9C();
      v37 = v69;
      sub_1BF179EBC();
      v52 = v48;
      v33 = v47;
      v36 = v46;
      v24 = v64;
      (*v61)(v52, v3);
      v53 = *v70;
      v54 = OUTLINED_FUNCTION_17_2();
      v56(v54, v55);
    }

    OUTLINED_FUNCTION_80_1();
    if (v75 == sub_1BF17A5AC())
    {
      goto LABEL_12;
    }
  }

  v57 = sub_1BF17B23C();
  if (v59 == 8)
  {
    v74 = v57;
    v41 = *v73;
    v58 = OUTLINED_FUNCTION_16_9();
    (v41)(v58);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1BF02C41C()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v9 = OUTLINED_FUNCTION_5_2(v7, v8);
  v12 = sub_1BF02CF24(v9, v10, v11);
  OUTLINED_FUNCTION_1_5(v12, v13);
  if (v15)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v16 = v14;
  sub_1BEFE9FF8(0, &qword_1ED8EADF0, sub_1BF02D204, sub_1BEFF4080);
  v17 = OUTLINED_FUNCTION_14_4();
  if (v17)
  {
    v22 = *v0;
    v23 = OUTLINED_FUNCTION_31_3();
    sub_1BF02CF24(v23, v24, v4);
    OUTLINED_FUNCTION_11_2();
    if (!v25)
    {
      goto LABEL_13;
    }
  }

  if (v16)
  {
    OUTLINED_FUNCTION_54_1(v17, v18, v19, v20, v21, *v2);
    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    v28 = OUTLINED_FUNCTION_58_0();
    sub_1BF02D238(v28, v29, v6, v4, v1, v30);
    OUTLINED_FUNCTION_26_2();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

void sub_1BF02C548(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_75();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t static StartupTaskGroup.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BF17B86C();
  }
}

uint64_t RemoteNotificationManager.add(handler:for:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v4 = v3;
  v7 = a2[1];
  v21[0] = *a2;
  v21[1] = v7;
  v8 = type metadata accessor for DisposableHandler();
  swift_allocObject();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v9 = swift_unknownObjectRetain();
  v10 = sub_1BF02D2AC(v9, a1, v21);
  swift_beginAccess();

  MEMORY[0x1BFB52290](v11);
  sub_1BF005F5C(*((*(v4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF17A59C();
  swift_endAccess();
  swift_beginAccess();
  v12 = *(v4 + 24);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v4 + 24);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v15 = (v12 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;

      v17(v18);

      v15 += 2;
      --v13;
    }

    while (v13);

    v19 = *(v4 + 24);
  }

  *(v4 + 24) = MEMORY[0x1E69E7CC0];

  a3[3] = v8;
  a3[4] = &off_1F3DBCF10;
  *a3 = v10;
  return result;
}

void *sub_1BF02C768(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF02C7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v35 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  if (sub_1BF17A5AC())
  {
    sub_1BF17B19C();
    v14 = sub_1BF17B18C();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  v38 = sub_1BF17A5AC();
  if (v38)
  {
    v35 = v7;
    v36 = v5;
    v15 = 0;
    v43 = (v6 + 16);
    v44 = v14 + 56;
    v40 = (v6 + 32);
    v42 = v6 + 8;
    v37 = v13;
    while (1)
    {
      v16 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = v17(v13, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15), a2);
      }

      else
      {
        v41 = v15;
        result = sub_1BF17B23C();
        if (v35 != 8)
        {
          goto LABEL_23;
        }

        v46 = result;
        v17 = *v43;
        (*v43)(v13, &v46, a2);
        result = swift_unknownObjectRelease();
        v15 = v41;
      }

      v41 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v39 = *v40;
      v39(v45, v13, a2);
      v19 = *(v14 + 40);
      v20 = sub_1BF179F1C();
      v21 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v22 = v20 & v21;
        v23 = (v20 & v21) >> 6;
        v24 = *(v44 + 8 * v23);
        v25 = 1 << (v20 & v21);
        if ((v25 & v24) == 0)
        {
          break;
        }

        v26 = v14;
        v17(v9, (*(v14 + 48) + *(v6 + 72) * v22), a2);
        v27 = a3;
        v28 = *(a3 + 8);
        v29 = sub_1BF17A05C();
        v30 = *(v6 + 8);
        v30(v9, a2);
        if (v29)
        {
          v30(v45, a2);
          a3 = v27;
          v13 = v37;
          v14 = v26;
          v15 = v41;
          goto LABEL_16;
        }

        v20 = v22 + 1;
        a3 = v27;
        v14 = v26;
      }

      v31 = v45;
      *(v44 + 8 * v23) = v25 | v24;
      result = (v39)(*(v14 + 48) + *(v6 + 72) * v22, v31, a2);
      v32 = *(v14 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      v13 = v37;
      v15 = v41;
      if (v33)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v34;
LABEL_16:
      v5 = v36;
      if (v15 == v38)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

uint64_t sub_1BF02CB84(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (qword_1ED8EF148 != -1)
  {
    OUTLINED_FUNCTION_0_69();
  }

  return a3(a1, a2);
}

void StartupTaskManager.onStartup(run:in:during:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_95_0();
  a27 = v29;
  a28 = v31;
  v32 = v28;
  v34 = v33;
  v36 = v35;
  v38 = *v37;
  if (*(v32 + v38 + 56))
  {
    v39 = sub_1BF17ACBC();
    OUTLINED_FUNCTION_8_5(v39, &qword_1ED8EE998);
    OUTLINED_FUNCTION_69();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1BF17DEF0;
    a15 = 0;
    a16 = 0xE000000000000000;
    v41 = v36(&a10);
    OUTLINED_FUNCTION_126_0(v41, &unk_1ED8EDC40);
    sub_1BF17B40C();
    __swift_destroy_boxed_opaque_existential_1(&a10);
    v42 = a15;
    v43 = a16;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = sub_1BF071CD8();
    *(v40 + 32) = v42;
    *(v40 + 40) = v43;
    sub_1BF071C2C();
    v44 = sub_1BF17AE3C();
    sub_1BF1797CC();
  }

  else
  {
    v46 = *v30;
    v45 = v30[1];
    swift_beginAccess();
    v47 = *(v32 + 24);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v48 = sub_1BF02CED8(v46, v45, v38, v47);
    if (v48)
    {
      v49 = v48;
      swift_endAccess();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = *(v49 + 16);
        OUTLINED_FUNCTION_45_2();
        sub_1BEFF9F4C();
        v49 = v56;
      }

      v50 = *(v49 + 16);
      if (v50 >= *(v49 + 24) >> 1)
      {
        OUTLINED_FUNCTION_45_2();
        sub_1BEFF9F4C();
        v49 = v57;
      }

      *(v49 + 16) = v50 + 1;
      v51 = v49 + 16 * v50;
      *(v51 + 32) = v36;
      *(v51 + 40) = v34;
      OUTLINED_FUNCTION_38();
    }

    else
    {
      swift_endAccess();
      OUTLINED_FUNCTION_46_2();
      sub_1BEFEEEE0(0, v52);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_1BF17DEF0;
      *(v53 + 32) = v36;
      *(v53 + 40) = v34;
      OUTLINED_FUNCTION_38();
    }

    v54 = *(v32 + 24);
    swift_isUniquelyReferenced_nonNull_native();
    a15 = *(v32 + 24);
    sub_1BF02C41C();
    *(v32 + 24) = a15;

    swift_endAccess();
  }

  OUTLINED_FUNCTION_94();
}

uint64_t sub_1BF02CED8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v4 = sub_1BF02CF24(a1, a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_12(v4);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

unint64_t sub_1BF02CF24(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_63();
  sub_1BF179F3C();
  sub_1BF179F3C();

  sub_1BF17BB9C();
  v4 = OUTLINED_FUNCTION_17_2();

  return sub_1BF02D020(v4, v5, a3, v6);
}

unint64_t sub_1BF02D020(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = *(v4 + 48) + 24 * v6;
      v11 = *(v10 + 16);
      v12 = *v10 == a1 && *(v10 + 8) == a2;
      if (v12 || (sub_1BF17B86C() & 1) != 0)
      {
        if (v11)
        {
          v13 = 0x75614C7265746661;
          v14 = 0xEE00676E6968636ELL;
          if (v11 == 1)
          {
            v13 = 0xD000000000000012;
            v14 = 0x80000001BF18C430;
          }
        }

        else
        {
          v13 = 0xD000000000000013;
          v14 = 0x80000001BF18C410;
        }

        if (a3)
        {
          if (a3 == 1)
          {
            v15 = 0xD000000000000012;
          }

          else
          {
            v15 = 0x75614C7265746661;
          }

          if (a3 == 1)
          {
            v16 = 0x80000001BF18C430;
          }

          else
          {
            v16 = 0xEE00676E6968636ELL;
          }
        }

        else
        {
          v15 = 0xD000000000000013;
          v16 = 0x80000001BF18C410;
        }

        if (v13 == v15 && v14 == v16)
        {

          return v6;
        }

        v18 = sub_1BF17B86C();

        if (v18)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void sub_1BF02D238(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = OUTLINED_FUNCTION_3_14(a1, a6 + 8 * (a1 >> 6));
  v8 = v7[6] + 24 * v6;
  *v8 = v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = v11;
  *(v7[7] + 8 * v6) = v12;
  v13 = v7[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_16(v7, v15);
  }
}

void *sub_1BF02D2AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[3] = a2;
  swift_unknownObjectWeakAssign();
  v3[4] = v5;
  v3[5] = v6;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t RemoteNotificationManager.whenActive(block:)(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (sub_1BEFE90AC(*(v3 + 16)))
  {
    return a1();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_beginAccess();

  sub_1BF071BB4();
  v8 = *(*(v3 + 24) + 16);
  sub_1BF071DF0(v8);
  v9 = *(v3 + 24);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = sub_1BF006198;
  *(v10 + 40) = v7;
  *(v3 + 24) = v9;
  return swift_endAccess();
}

uint64_t sub_1BF02D414()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t asyncAfter(_:execute:)(uint64_t a1, uint64_t a2, double a3)
{
  sub_1BF00974C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF17A77C();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a3;
  *(v11 + 40) = a1;
  *(v11 + 48) = a2;

  sub_1BF089AC0();
}

uint64_t sub_1BF02D538()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF02D578(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  OUTLINED_FUNCTION_0();
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  OUTLINED_FUNCTION_0();
  if ((*(v2 + *(v13 + 120)) & 1) != 0 && [objc_opt_self() isMainThread])
  {
    OUTLINED_FUNCTION_14_0();
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = a2;
    v14[4] = v2;
    v15 = qword_1ED8EF148;

    if (v15 != -1)
    {
      swift_once();
    }

    TaskScheduler.schedule(_:)();
  }

  else
  {
    sub_1BF004F64(v12);
    a1(v12);
    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_1BF02D73C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF02D79C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1BF17B3CC();
  v7 = sub_1BF02D92C(&qword_1ED8ECBB8, MEMORY[0x1E69E8820]);
  sub_1BF17BABC();
  sub_1BF02D92C(&qword_1ED8EAE08, MEMORY[0x1E69E87E8]);
  sub_1BF17B3DC();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1BF146700;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1BF02D92C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF02D980(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = *(*a3 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - v7;
  sub_1BF004F64(&v10 - v7);
  a1(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BF02DA9C(void *a1)
{
  OUTLINED_FUNCTION_29();
  v5 = *(v4 + 80);
  v6 = type metadata accessor for Seal.Resolution();
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v16 - v12);
  OUTLINED_FUNCTION_15_15();
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v14 = a1;
    sub_1BF006BE0();
    OUTLINED_FUNCTION_11_16();
    (*(v8 + 8))(v13, v6);
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return OUTLINED_FUNCTION_31_1();
}

uint64_t ObservableProperty.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_24_13();
  v5 = *(v4 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_24_13();
  return (*(*(*(v6 + 80) - 8) + 16))(a1, &v1[v5]);
}

uint64_t ObservableProperty.observeUntil(block:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29();
  v6 = v5;
  v7 = sub_1BF179C5C();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_42();
  sub_1BEFF6E88();
  *v2 = sub_1BF17AD5C();
  (*(v10 + 104))(v2, *MEMORY[0x1E69E8020], v7);
  v13 = sub_1BF179C8C();
  result = (*(v10 + 8))(v2, v7);
  if (v13)
  {
    OUTLINED_FUNCTION_27();
    v15 = swift_allocObject();
    v16 = *(v6 + 80);
    type metadata accessor for ObservableProperty.Token();
    *(v15 + 16) = sub_1BF02DF00();
    OUTLINED_FUNCTION_85();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = a1;
    v17[5] = a2;
    OUTLINED_FUNCTION_9_29(v17);
    OUTLINED_FUNCTION_3_44();
    swift_getFunctionTypeMetadata1();
    OUTLINED_FUNCTION_21_15();

    OUTLINED_FUNCTION_20_17();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF02DE78()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF02DF10()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = sub_1BF17BC9C();
  v5 = v4;
  sub_1BF17BADC();
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1BF146334;
  v7 = v0[7];

  return sub_1BF02E624(v3, v5, 0, 0, 1);
}

void sub_1BF02DFEC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Seal.Resolution();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v18 - v11);
  (*(v9 + 16))(&v18 - v11, a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    v14 = swift_allocObject();
    v14[2] = a3;
    v14[3] = a4;
    v14[4] = v13;

    v15 = v13;
    v16 = sub_1BF006210(a2, sub_1BF02DBE0, v14);

    (v16)(v17);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    __break(1u);
  }
}

uint64_t DeferredPromise.reject(_:)()
{
  if (*(v0 + 24))
  {

    sub_1BF02E758();

    v1 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF02E220()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    OUTLINED_FUNCTION_39_1();

    v2 = OUTLINED_FUNCTION_41_0();
    sub_1BF02E2A8(v2, v3);

    v4 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF02E2A8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 16);

    v6 = a2(a1);

    v6(v7);
  }

  return result;
}

uint64_t sub_1BF02E334()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_49_0();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    *(v3 + 24) = 1;
    v7 = v1;
    v6 = v3;
    v2(v1, 1);
    OUTLINED_FUNCTION_126();
  }

  os_unfair_lock_unlock(*(v0 + 16));
  return v6;
}

void (*OUTLINED_FUNCTION_118_0())()
{

  return sub_1BF006210(v2, v0, v1);
}

uint64_t sub_1BF02E4A8()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v8 = OUTLINED_FUNCTION_6(v7);

  return sub_1BF02E560(v4, v8, v9, v10, v6, v5);
}

uint64_t sub_1BF02E560(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  v7 = sub_1BF17B3CC();
  *(v6 + 40) = v7;
  v8 = *(v7 - 8);
  *(v6 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF02DF10, 0, 0);
}

uint64_t sub_1BF02E624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1BF17B3BC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BF02D79C, 0, 0);
}

uint64_t sub_1BF02E758()
{
  OUTLINED_FUNCTION_124();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 16);

    v3 = sub_1BF02DA9C(v0);
    OUTLINED_FUNCTION_121();

    v3(v4);
  }

  return result;
}

void sub_1BF02E7EC(void *a1, uint64_t a2, uint64_t a3)
{

  v6 = a1;
  UnfairLock.lock()();
  OUTLINED_FUNCTION_3_5();
  if ((*(a3 + 16) & 1) == 0)
  {
    OUTLINED_FUNCTION_125();
    *(a3 + 16) = 1;
    sub_1BF02E220();
  }

  os_unfair_lock_unlock(*(a2 + 16));
}

uint64_t sub_1BF02E89C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1BF02E8C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1BF11361C(a1, *(v1 + 24));
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF02E910()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v2(v3);
}

uint64_t sub_1BF02E964@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v5 = a2;
    v6 = 1;
    return __swift_storeEnumTagSinglePayload(v5, v6, 1, a1);
  }

  v7 = result;
  if (*(*(a1 - 8) + 64) == 8)
  {
    (*(*(a1 - 8) + 16))(a2, &v7, a1);
    swift_unknownObjectRelease();
    v5 = a2;
    v6 = 0;
    return __swift_storeEnumTagSinglePayload(v5, v6, 1, a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF02EA58()
{
  v1 = v0;
  v2 = v0[6];
  UnfairLock.lock()();
  swift_beginAccess();
  v3 = v0[4];
  if (v3)
  {
    v4 = *(v2 + 16);
    v5 = v1[4];

    os_unfair_lock_unlock(v4);
  }

  else
  {
    v6 = v1[7];
    if (v6 & 1) != 0 || (v6 & 2) == 0 || ([objc_opt_self() isMainThread])
    {
      return sub_1BF037424(1, v1);
    }

    else
    {
      sub_1BEFF6E88();
      v8 = sub_1BF17AD5C();
      sub_1BF026ECC();
      sub_1BF17AD6C();

      os_unfair_lock_unlock(*(v2 + 16));
      return v9;
    }
  }

  return v3;
}

uint64_t - infix<A, B>(_:_:)()
{
  sub_1BF17A65C();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  return sub_1BF17A38C();
}

uint64_t sub_1BF02EBE8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_34(a1, a2);
  toKey<A>(type:name:)();
  v2 = OUTLINED_FUNCTION_0_73();
  sub_1BF02EC84(v2, v3, v4);
}

uint64_t sub_1BF02EC84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_3_42();
  sub_1BF00951C();
  swift_endAccess();

  type metadata accessor for WeakPoolObject();
  v8 = swift_unknownObjectRetain();
  sub_1BF02EDBC(v8, a3);
  OUTLINED_FUNCTION_7_2();
  v9 = *(v3 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 24);
  OUTLINED_FUNCTION_10_29();
  *(v3 + 24) = v11;
  return swift_endAccess();
}

uint64_t sub_1BF02EDBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_1();
  v4 = swift_allocObject();
  sub_1BF02EE04(a1, a2);
  return v4;
}

uint64_t *sub_1BF02EE04(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v6 = swift_allocObject();
  v6[2] = *(v4 + 104);
  v6[3] = a2;
  v6[4] = v5;
  v2[2] = sub_1BF02EF24;
  v2[3] = v6;
  return v2;
}

uint64_t sub_1BF02EEB0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF02EEE8()
{
  MEMORY[0x1BFB548B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF02EF24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1BF02E964(v1[2], a1);
}

uint64_t *Promise.asOptional()()
{
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *(swift_allocObject() + 16) = *(v1 + 80);
  sub_1BF17AE6C();
  v2 = sub_1BF007568();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_42();

  return v0;
}

uint64_t sub_1BF02F01C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_20(a1);
  (*(v4 + 16))(a2);
  OUTLINED_FUNCTION_127();
  return __swift_storeEnumTagSinglePayload(v5, v6, v7, a1);
}

uint64_t sub_1BF02F124()
{
  v0 = sub_1BEFFA414();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t objectdestroy_5Tm()
{
  v1 = sub_1BF1794FC();
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = sub_1BF17923C();
  OUTLINED_FUNCTION_12(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_5Tm_1()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t OUTLINED_FUNCTION_70_0()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

uint64_t sub_1BF02F2C8(__int16 a1)
{
  OUTLINED_FUNCTION_1_7();
  sub_1BF01A748(0, v3, v4, MEMORY[0x1E69E6720]);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BF013E28(a1 & 0x1FF, v1 + v7, v9, v10);
}

uint64_t sub_1BF02F3CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF02F424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF02F47C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BF02F4F4()
{
  v2 = *v0;
  v3 = v0[5];
  v4 = *v0 >> 61;
  if (v4 != 3)
  {
    sub_1BF05350C();
    swift_allocError();
    v17 = 0xE600000000000000;
    v18 = 0x7463656A626FLL;
    switch(v4)
    {
      case 1uLL:
        v17 = 0xE500000000000000;
        v18 = 0x7961727261;
        break;
      case 2uLL:
        v18 = 0x676E69727473;
        break;
      case 3uLL:
        v18 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v17 = 0xE400000000000000;
        v18 = 1702195828;
        v22 = 0xE500000000000000;
        v23 = 0x65736C6166;
        if (v2 != 0x8000000000000008)
        {
          v23 = 1819047278;
          v22 = 0xE400000000000000;
        }

        if (v2 != 0x8000000000000000)
        {
          v18 = v23;
          v17 = v22;
        }

        break;
      default:
        break;
    }

    *v16 = v3;
    *(v16 + 8) = 0x7265626D756ELL;
    *(v16 + 16) = 0xE600000000000000;
    *(v16 + 24) = v18;
    v24 = 10;
    *(v16 + 32) = v17;
    goto LABEL_74;
  }

  v5 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *(v5 + 24);
  v8 = HIBYTE(v6) & 0xF;
  v9 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_73;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n();
    sub_1BF0750D8();
    v1 = v37;
    v39 = v38;

    if (v39)
    {
      goto LABEL_73;
    }

LABEL_77:

    return v1;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v41[0] = v7;
    v41[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    if (v7 == 43)
    {
      if (v8)
      {
        if (--v8)
        {
          v1 = 0;
          v28 = v41 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v1;
            if ((v1 * 10) >> 64 != (10 * v1) >> 63)
            {
              break;
            }

            v1 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v8)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

LABEL_83:
      __break(1u);
      JUMPOUT(0x1BF02F968);
    }

    if (v7 != 45)
    {
      if (v8)
      {
        v1 = 0;
        v33 = v41;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v1;
          if ((v1 * 10) >> 64 != (10 * v1) >> 63)
          {
            break;
          }

          v1 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v8)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    if (v8)
    {
      if (--v8)
      {
        v1 = 0;
        v19 = v41 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v1;
          if ((v1 * 10) >> 64 != (10 * v1) >> 63)
          {
            break;
          }

          v1 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          ++v19;
          if (!--v8)
          {
            goto LABEL_72;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_81;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v11 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1BF17B2FC();
  }

  v12 = *v11;
  if (v12 == 43)
  {
    if (v9 >= 1)
    {
      v8 = v9 - 1;
      if (v9 != 1)
      {
        v1 = 0;
        if (v11)
        {
          v25 = v11 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              goto LABEL_71;
            }

            v27 = 10 * v1;
            if ((v1 * 10) >> 64 != (10 * v1) >> 63)
            {
              goto LABEL_71;
            }

            v1 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_71;
            }

            ++v25;
            if (!--v8)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_63;
      }

      goto LABEL_71;
    }

    goto LABEL_82;
  }

  if (v12 == 45)
  {
    if (v9 >= 1)
    {
      v8 = v9 - 1;
      if (v9 != 1)
      {
        v1 = 0;
        if (v11)
        {
          v13 = v11 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              goto LABEL_71;
            }

            v15 = 10 * v1;
            if ((v1 * 10) >> 64 != (10 * v1) >> 63)
            {
              goto LABEL_71;
            }

            v1 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              goto LABEL_71;
            }

            ++v13;
            if (!--v8)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_63:
        LOBYTE(v8) = 0;
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v9)
  {
    v1 = 0;
    if (v11)
    {
      while (1)
      {
        v31 = *v11 - 48;
        if (v31 > 9)
        {
          goto LABEL_71;
        }

        v32 = 10 * v1;
        if ((v1 * 10) >> 64 != (10 * v1) >> 63)
        {
          goto LABEL_71;
        }

        v1 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          goto LABEL_71;
        }

        ++v11;
        if (!--v9)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_71:
  v1 = 0;
  LOBYTE(v8) = 1;
LABEL_72:
  v42 = v8;
  v36 = v8;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  if ((v36 & 1) == 0)
  {
    goto LABEL_77;
  }

LABEL_73:
  sub_1BF05350C();
  swift_allocError();
  *v16 = v3;
  *(v16 + 8) = v7;
  *(v16 + 16) = v6;
  v24 = 13;
LABEL_74:
  *(v16 + 80) = v24;
  swift_willThrow();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t sub_1BF02F97C()
{
  v1 = *v0;
  if (*v0 == 0x8000000000000000)
  {
    sub_1BF017214(0x8000000000000000);
    sub_1BF017214(0x8000000000000000);
    v2 = 1;
  }

  else
  {
    v3 = v0[5];
    sub_1BF01716C(v1);
    sub_1BF017214(v1);
    sub_1BF017214(0x8000000000000000);
    if (v1 == 0x8000000000000008)
    {
      sub_1BF017214(0x8000000000000008);
      sub_1BF017214(0x8000000000000008);
      v2 = 0;
    }

    else
    {
      sub_1BF01716C(v1);
      sub_1BF017214(v1);
      sub_1BF017214(0x8000000000000008);
      sub_1BF05350C();
      swift_allocError();
      v5 = 0xE600000000000000;
      v6 = 0x7463656A626FLL;
      switch(v1 >> 61)
      {
        case 1uLL:
          v5 = 0xE500000000000000;
          v6 = 0x7961727261;
          break;
        case 2uLL:
          v6 = 0x676E69727473;
          break;
        case 3uLL:
          v6 = 0x7265626D756ELL;
          break;
        case 4uLL:
          v6 = 0x65736C6166;
          if (v1 == 0x8000000000000010)
          {
            v6 = 1819047278;
          }

          v5 = 0xE500000000000000;
          if (v1 == 0x8000000000000010)
          {
            v5 = 0xE400000000000000;
          }

          break;
        default:
          break;
      }

      *v4 = v3;
      *(v4 + 8) = 0x6E61656C6F6F62;
      *(v4 + 16) = 0xE700000000000000;
      *(v4 + 24) = v6;
      *(v4 + 32) = v5;
      *(v4 + 80) = 10;
      swift_willThrow();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }
  }

  return v2 & 1;
}

id sub_1BF02FB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a3;
  v82 = a4;
  sub_1BF01511C(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v69 - v9;
  v11 = sub_1BF17923C();
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - v16;
  v18 = sub_1BF1794AC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BF17AE6C();
  v78 = *(v22 - 8);
  v79 = v22;
  v23 = *(v78 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v81 = &v69 - v25;
  v83 = a2;
  v26 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *v4;
  v30 = *(v4 + 8);
  v32 = *(v4 + 16);
  v33 = *(v4 + 24);
  v34 = *(v4 + 32);
  v35 = *(v4 + 40);
  if (v18 == a1)
  {
    v70 = v29;
    v71 = v27;
    v72 = v35;
    v85 = v32;
    v86 = v33;
    v87 = v34;
    v90 = v31;
    v43 = v33;
    v44 = v32;
    v45 = v31;
    v46 = v34;
    v47 = v30;
    v48 = v84;
    result = sub_1BF051984(&v90, MEMORY[0x1E69E7CC0], v30, v21);
    if (v48)
    {
      return result;
    }

    v73 = v45;
    v74 = v47;
    v75 = v46;
    v76 = v43;
    v77 = v44;
    v50 = v81;
    v51 = v83;
    if (swift_dynamicCast())
    {
      v52 = v50;
      v53 = 0;
    }

    else
    {
      v52 = v50;
      v53 = 1;
    }

    __swift_storeEnumTagSinglePayload(v52, v53, 1, v51);
    v35 = v72;
  }

  else
  {
    v76 = *(v4 + 24);
    v77 = v32;
    v75 = v34;
    v73 = v31;
    v74 = v30;
    if (v11 == a1)
    {
      if (v31 >> 61 != 2)
      {
LABEL_17:
        v50 = v81;
        __swift_storeEnumTagSinglePayload(v81, 1, 1, v83);
LABEL_26:
        (*(v78 + 8))(v50, v79);
        v88 = &type metadata for _JSONDecoder;
        v89 = sub_1BF0172B8();
        v61 = swift_allocObject();
        v85 = v61;
        v62 = v73;
        v63 = v74;
        v65 = v76;
        v64 = v77;
        *(v61 + 16) = v73;
        *(v61 + 24) = v64;
        *(v61 + 32) = v65;
        v66 = v75;
        *(v61 + 40) = v75;
        *(v61 + 48) = v35;
        *(v61 + 56) = v63;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01716C(v62);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01730C(v64, v65, v66);
        return sub_1BF17A8BC();
      }

      v70 = v29;
      v71 = v27;
      v55 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v54 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF1791FC();
      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {
        sub_1BF0F698C(v10);
        sub_1BF05350C();
        swift_allocError();
        *v41 = v35;
        *(v41 + 8) = v55;
        *(v41 + 16) = v54;
        v42 = 9;
        goto LABEL_16;
      }

      v60 = *(v72 + 32);
      v60(v17, v10, v11);
      v60(v15, v17, v11);
      v50 = v81;
      v51 = v83;
      if (swift_dynamicCast())
      {
        v59 = v50;
        v58 = 0;
      }

      else
      {
        v59 = v50;
        v58 = 1;
      }
    }

    else
    {
      if (a1 != MEMORY[0x1E6969080] || (v31 & 0xE000000000000000) != 0x4000000000000000)
      {
        goto LABEL_17;
      }

      v70 = v29;
      v71 = v27;
      v38 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v39 = sub_1BF1792BC();
      if (v40 >> 60 == 15)
      {
        sub_1BF05350C();
        swift_allocError();
        *v41 = v35;
        *(v41 + 8) = v38;
        *(v41 + 16) = v37;
        v42 = 6;
LABEL_16:
        *(v41 + 80) = v42;
        swift_willThrow();
        return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      v56 = v39;
      v57 = v40;

      v85 = v56;
      v86 = v57;
      v50 = v81;
      v51 = v83;
      v58 = swift_dynamicCast() ^ 1;
      v59 = v50;
    }

    __swift_storeEnumTagSinglePayload(v59, v58, 1, v51);
  }

  if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
  {
    goto LABEL_26;
  }

  v67 = v70;
  v68 = *(v71 + 32);
  v68(v70, v50, v51);
  return (v68)(v82, v67, v51);
}

uint64_t sub_1BF0301F8(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_5_35(a1, a2);
  toKey<A>(type:name:)(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_0_73();
  sub_1BF0093DC();
}

uint64_t dispatch thunk of ContextType.use<A>(_:for:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 56))();
}

{
  return (*(a7 + 64))();
}

uint64_t ObservableResolver.resolve<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

void Array<A>.total.getter()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v11 = *(v10 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12(AssociatedTypeWitness);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_35();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_16_22();
  OUTLINED_FUNCTION_13_27();
  sub_1BF17B83C();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_7_0();
  swift_getWitnessTable();
  sub_1BF17A3FC();
  (*(v3 + 8))(v9, v1);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0304B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 8);
  return sub_1BF17B4AC();
}

uint64_t sub_1BF0304EC(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v1);
  OUTLINED_FUNCTION_4_35(v2);
  return v3(v1, v2);
}

void sub_1BF03056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *(a4(a1, Strong) + 16);
    v16 = qword_1ED8F0210;

    if (v16 != -1)
    {
      swift_once();
    }

    sub_1BF030CB0(a3, a6, a7);
    sub_1BF030D28(a3, a6, a7);
    sub_1BF030DA0(a3, a6, a7);
    sub_1BF005910();
    v18 = v17;

    v18(v19);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v13 = swift_allocError();
    *v14 = xmmword_1BF17FB20;
    *(v14 + 16) = 2;
    DeferredPromise.reject(_:)();
  }
}

uint64_t sub_1BF030820(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17BCBC();
  if (*(v3 + 16))
  {
    sub_1BF014CA8();
    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

BOOL sub_1BF0308B8(uint64_t a1, uint64_t a2)
{
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 32);
  v11 = *(v2 + 5);
  sub_1BF018248(a1, a2, &v12);
  if (!v3)
  {
    v5 = v12;
    v6 = 0x8000000000000010;
    v4 = v12 == 0x8000000000000010;
    if (v12 != 0x8000000000000010)
    {
      sub_1BF01716C(v12);
      v6 = v5;
    }

    sub_1BF017214(v6);
    sub_1BF017214(0x8000000000000010);
    sub_1BF017214(v6);
  }

  return v4;
}

uint64_t sub_1BF030980()
{
  v1 = *v0;
  v2 = v0[5];
  v3 = *v0 >> 61;
  if (v3 == 3)
  {
    v4 = v1 & 0x1FFFFFFFFFFFFFFFLL;
    v6 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *(v4 + 24);
    swift_bridgeObjectRetain_n();
    if ((sub_1BF030B4C(v6, v5) & 0x100000000) == 0)
    {
    }

    sub_1BF05350C();
    swift_allocError();
    *v8 = v2;
    *(v8 + 8) = v6;
    *(v8 + 16) = v5;
    v11 = 13;
  }

  else
  {
    sub_1BF05350C();
    swift_allocError();
    v9 = 0xE600000000000000;
    v10 = 0x7463656A626FLL;
    switch(v3)
    {
      case 1uLL:
        v9 = 0xE500000000000000;
        v10 = 0x7961727261;
        break;
      case 2uLL:
        v10 = 0x676E69727473;
        break;
      case 3uLL:
        v10 = 0x7265626D756ELL;
        break;
      case 4uLL:
        v9 = 0xE400000000000000;
        v10 = 1702195828;
        v12 = 0xE500000000000000;
        v13 = 0x65736C6166;
        if (v1 != 0x8000000000000008)
        {
          v13 = 1819047278;
          v12 = 0xE400000000000000;
        }

        if (v1 != 0x8000000000000000)
        {
          v10 = v13;
          v9 = v12;
        }

        break;
      default:
        break;
    }

    *v8 = v2;
    *(v8 + 8) = 0x7265626D756ELL;
    *(v8 + 16) = 0xE600000000000000;
    *(v8 + 24) = v10;
    v11 = 10;
    *(v8 + 32) = v9;
  }

  *(v8 + 80) = v11;
  swift_willThrow();
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

unint64_t sub_1BF030B4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BF030BB8(a1, a2);

  return !v2 << 32;
}

BOOL sub_1BF030BB8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1BF17B1BC();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtof_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

void (*sub_1BF030CB0(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0978D4;
}

uint64_t (*sub_1BF030D28(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

uint64_t (*sub_1BF030DA0(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF030E18;
}

uint64_t Promise.recover(on:closure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1BF030E88(a1, a2, a3, sub_1BF032B1C, &unk_1F3DB8458, sub_1BF032B5C, sub_1BF09582C);
}

{
  return sub_1BF030E88(a1, a2, a3, sub_1BF032B1C, &unk_1F3DB83E0, sub_1BF032B5C, sub_1BF095808);
}

uint64_t sub_1BF030E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_29();
  v14 = *(v13 + 80);
  type metadata accessor for DeferredPromise();
  v15 = *(*(v7 + 16) + 16);

  v16 = sub_1BF0057E8();
  v8();
  OUTLINED_FUNCTION_14_0();
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = v9;
  v17[4] = v16;
  a6(v16);

  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  a7(v18);
  OUTLINED_FUNCTION_31();
  result = swift_beginAccess();
  v20 = *(v16 + 16);
  if (v20)
  {
    v21 = *(v16 + 16);

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}
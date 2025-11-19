uint64_t sub_1DA8AC8AC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NotificationSource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AD0, &qword_1DA960F90);
  result = sub_1DA941314();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = *(v9 + 56);
    v42 = v2;
    v43 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v9 + 48);
      v45 = *(v5 + 72);
      sub_1DA8AE290(v24 + v45 * (v21 | (v13 << 6)), v8, type metadata accessor for NotificationSource);
      v25 = *(v12 + 40);
      sub_1DA941764();
      if (*(v8 + 1))
      {
        v44 = v17;
        v26 = v18;
        v27 = v12;
        v28 = v9;
        v29 = v5;
        v30 = *v8;
        sub_1DA941784();
        v5 = v29;
        v9 = v28;
        v12 = v27;
        v18 = v26;
        v17 = v44;
        sub_1DA940AB4();
      }

      else
      {
        sub_1DA941784();
      }

      v31 = *(v8 + 2);
      v32 = *(v8 + 3);
      sub_1DA940AB4();
      v33 = v8[48];
      sub_1DA941784();
      result = sub_1DA941794();
      v34 = -1 << *(v12 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v19 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v19 + 8 * v36);
          if (v40 != -1)
          {
            v20 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v20 = __clz(__rbit64((-1 << v35) & ~*(v19 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_1DA8AE2F8(v8, *(v12 + 48) + v20 * v45, type metadata accessor for NotificationSource);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v42;
        goto LABEL_31;
      }

      v23 = *(v43 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v12;
  }

  return result;
}

unint64_t sub_1DA8ACBF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62F8, &qword_1DA95F390);
  result = sub_1DA941314();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v7 = 0;
    v31 = v3 + 56;
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
    v32 = result + 56;
    v33 = v11;
    v34 = result;
    v35 = v3;
    while (1)
    {
      if (v10)
      {
        v13 = __clz(__rbit64(v10));
        v36 = (v10 - 1) & v10;
      }

      else
      {
        v14 = v7;
        do
        {
          v7 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_31;
          }

          if (v7 >= v11)
          {

            v2 = v30;
            goto LABEL_29;
          }

          v15 = *(v31 + 8 * v7);
          ++v14;
        }

        while (!v15);
        v13 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
      }

      v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
      v17 = *(v6 + 40);
      sub_1DA941764();
      v18 = 1 << *(v16 + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & *(v16 + 64);
      v21 = (v18 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v22 = 0;
      v23 = 0;
      if (v20)
      {
        while (1)
        {
          v24 = v23;
LABEL_24:
          v25 = __clz(__rbit64(v20)) | (v24 << 6);
          v26 = (*(v16 + 48) + 16 * v25);
          v28 = *v26;
          v27 = v26[1];
          sub_1DA862D8C(*(v16 + 56) + 40 * v25, &v39);
          v37 = v39;
          v38 = v40;
          v29 = v41;

          if (!v27)
          {
            break;
          }

          v20 &= v20 - 1;
          v44[0] = v37;
          v44[1] = v38;
          v45 = v29;
          v41 = v48;
          v42 = v49;
          v43 = v50;
          v39 = v46;
          v40 = v47;
          sub_1DA940AB4();

          sub_1DA9412E4();
          sub_1DA862DE8(v44);
          result = sub_1DA941794();
          v22 ^= result;
          v23 = v24;
          if (!v20)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        while (1)
        {
LABEL_21:
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            return result;
          }

          if (v24 >= v21)
          {
            break;
          }

          v20 = *(v16 + 64 + 8 * v24);
          ++v23;
          if (v20)
          {
            goto LABEL_24;
          }
        }
      }

      MEMORY[0x1E1272850](v22);
      sub_1DA941794();
      v6 = v34;
      v12 = -1 << *(v34 + 32);
      result = sub_1DA941204();
      *(v32 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v34 + 48) + 8 * result) = v16;
      ++*(v34 + 16);
      v3 = v35;
      v10 = v36;
      v11 = v33;
    }
  }

LABEL_29:
  *v2 = v6;
  return result;
}

uint64_t sub_1DA8ACEEC(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      sub_1DA862D8C(*(a2 + 56) + 40 * v13, &v22);
      v20 = v22;
      v21 = v23;
      v17 = v24;

      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v27[0] = v20;
      v27[1] = v21;
      v28 = v17;
      v18 = a1[3];
      v24 = a1[2];
      v25 = v18;
      v26 = *(a1 + 8);
      v19 = a1[1];
      v22 = *a1;
      v23 = v19;
      sub_1DA940AB4();

      sub_1DA9412E4();
      sub_1DA862DE8(v27);
      result = sub_1DA941794();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1E1272850](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8AD06C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E1271F90](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DA8A9058(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DA8AD104(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DA941264())
  {
    v4 = sub_1DA7AF3EC(0, &qword_1ECBD62D0, 0x1E69A5240);
    v5 = sub_1DA8AD28C();
    result = MEMORY[0x1E1271F90](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E1272460](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1DA8A91A8(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1DA941264();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DA8AD244(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DA8AD28C()
{
  result = qword_1ECBD62D8;
  if (!qword_1ECBD62D8)
  {
    sub_1DA7AF3EC(255, &qword_1ECBD62D0, 0x1E69A5240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD62D8);
  }

  return result;
}

uint64_t sub_1DA8AD2F4(uint64_t a1)
{
  v2 = sub_1DA93FEC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1DA8AD244(&qword_1ECBD5940, MEMORY[0x1E69DF0D0]);
  result = MEMORY[0x1E1271F90](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1DA8A93F0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

void sub_1DA8AD490(NSObject *a1, uint64_t a2, id a3, unint64_t a4, uint64_t a5)
{
  v115 = a5;
  v116 = a1;
  v117 = a2;
  v121[1] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62E8, &qword_1DA95F360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v108 - v10;
  v114 = type metadata accessor for CloudAction(0);
  v12 = *(v114 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v114);
  v111 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 16);
  swift_getKeyPath();
  v120[0] = v15;
  sub_1DA8AD244(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  v16 = *(v15 + 56);
  if (v16 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DA941264())
  {
    v18 = qword_1EE110E68;
    if (i < 1)
    {
      break;
    }

    v113 = v15;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = sub_1DA9405A4();
    v20 = __swift_project_value_buffer(v19, qword_1EE11ADC0);

    v21 = a4;

    v22 = sub_1DA940584();
    v23 = sub_1DA940F34();

    v24 = os_log_type_enabled(v22, v23);
    v118 = v16;
    v110 = a3;
    v112 = v20;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v120[0] = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_1DA7AE6E8(a3, a4, v120);
      *(v25 + 12) = 2080;
      v27 = type metadata accessor for RemoteDevice();
      v28 = MEMORY[0x1E1271CD0](v118, v27);
      v30 = sub_1DA7AE6E8(v28, v29, v120);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1DA7A9000, v22, v23, "UserNotificationsIDSCloudPushTarget push(updateData): updateIdentifier: %s to availableDevices: %s", v25, 0x16u);
      swift_arrayDestroy();
      v31 = v26;
      v16 = v118;
      MEMORY[0x1E12739F0](v31, -1, -1);
      MEMORY[0x1E12739F0](v25, -1, -1);
    }

    v32 = v113;
    sub_1DA8AE220(v115, v11);
    if ((v12[6])(v11, 1, v114) == 1)
    {
      sub_1DA7BA120(v11, &qword_1ECBD62E8, &qword_1DA95F360);
      LOBYTE(v120[0]) = *(v32 + 16);
      sub_1DA8986BC();
    }

    else
    {
      v48 = v111;
      sub_1DA8AE2F8(v11, v111, type metadata accessor for CloudAction);
      LOBYTE(v120[0]) = *(v32 + 16);
      sub_1DA898850(v48);
      sub_1DA8AE360(v48, type metadata accessor for CloudAction);
    }

    swift_bridgeObjectRetain_n();

    v49 = sub_1DA940584();
    v50 = sub_1DA940EF4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v120[0] = v53;
      *v51 = 136315394;
      *(v51 + 4) = sub_1DA7AE6E8(v110, v21, v120);
      *(v51 + 12) = 2112;
      v54 = sub_1DA940964();

      *(v51 + 14) = v54;
      *v52 = v54;
      _os_log_impl(&dword_1DA7A9000, v49, v50, "UserNotificationsIDSCloudPushTarget push(updateData): updateIdentifier: %s using options %@", v51, 0x16u);
      sub_1DA7BA120(v52, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v53);
      v32 = v113;
      MEMORY[0x1E12739F0](v53, -1, -1);
      MEMORY[0x1E12739F0](v51, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v55 = *(v32 + 5);
    v56 = sub_1DA93F994();
    v57 = sub_1DA8A7E28(v16);
    v58 = sub_1DA8AD104(v57);

    sub_1DA8A7878(v58);

    v15 = MEMORY[0x1E69E69B8];
    v11 = MEMORY[0x1E69E69C0];
    v59 = sub_1DA940E84();

    v60 = sub_1DA940964();

    v121[0] = 0;
    v119 = 0;
    a3 = [v55 sendData:v56 toDestinations:v59 priority:300 options:v60 identifier:v121 error:&v119];

    v61 = v119;
    v62 = v121[0];
    if (!a3)
    {
      v78 = v119;
      v79 = v62;
      v80 = sub_1DA93F8C4();

      swift_willThrow();

      v81 = v80;
      v82 = sub_1DA940584();
      v83 = sub_1DA940F14();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v121[0] = v86;
        *v84 = 136315650;
        *(v84 + 4) = sub_1DA7AE6E8(v110, v21, v121);
        *(v84 + 12) = 2080;
        v87 = type metadata accessor for RemoteDevice();
        v88 = MEMORY[0x1E1271CD0](v16, v87);
        v90 = v89;

        v91 = sub_1DA7AE6E8(v88, v90, v121);

        *(v84 + 14) = v91;
        *(v84 + 22) = 2112;
        v92 = v80;
        v93 = _swift_stdlib_bridgeErrorToNSError();
        *(v84 + 24) = v93;
        *v85 = v93;
        _os_log_impl(&dword_1DA7A9000, v82, v83, "UserNotificationsIDSCloudPushTarget push(updateData): updateIdentifier: %s to availableDevices: %s failed: %@", v84, 0x20u);
        sub_1DA7BA120(v85, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v85, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v86, -1, -1);
        MEMORY[0x1E12739F0](v84, -1, -1);
      }

      else
      {
      }

      goto LABEL_40;
    }

    v63 = v61;
    v64 = v62;
    v65 = sub_1DA940584();
    v66 = sub_1DA940F34();

    if (!os_log_type_enabled(v65, v66))
    {

      goto LABEL_40;
    }

    LODWORD(v112) = v66;
    v113 = v64;
    v115 = v62;
    v116 = v65;
    v67 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v121[0] = v111;
    *v67 = 136315650;
    *(v67 + 4) = sub_1DA7AE6E8(v110, v21, v121);
    v114 = v67;
    *(v67 + 12) = 2080;
    v119 = MEMORY[0x1E69E7CC0];
    sub_1DA82A778(0, i, 0);
    a4 = 0;
    v68 = v119;
    v69 = v16 & 0xC000000000000001;
    v117 = v16 & 0xFFFFFFFFFFFFFF8;
    v12 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
    while (a4 < i)
    {
      v70 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        goto LABEL_42;
      }

      if (v69)
      {
        v71 = MEMORY[0x1E1272460](a4, v16);
      }

      else
      {
        if (a4 >= *(v117 + 16))
        {
          goto LABEL_43;
        }

        v71 = *(v16 + 8 * a4 + 32);
      }

      v72 = [*(v71 + 16) uniqueID];
      if (!v72)
      {
        __break(1u);
      }

      v73 = v72;
      v11 = sub_1DA940A14();
      v75 = v74;

      v119 = v68;
      v15 = v68[2];
      v76 = v68[3];
      a3 = (v15 + 1);
      if (v15 >= v76 >> 1)
      {
        sub_1DA82A778((v76 > 1), v15 + 1, 1);
        v68 = v119;
      }

      v68[2] = a3;
      v77 = &v68[2 * v15];
      v77[4] = v11;
      v77[5] = v75;
      ++a4;
      v16 = v118;
      if (v70 == i)
      {

        v94 = MEMORY[0x1E1271CD0](v68, MEMORY[0x1E69E6158]);
        v96 = v95;

        v97 = sub_1DA7AE6E8(v94, v96, v121);

        v98 = v113;
        v99 = v114;
        *(v114 + 14) = v97;
        *(v99 + 22) = 2112;
        *(v99 + 24) = v98;
        v100 = v109;
        *v109 = v115;
        v101 = v98;
        v102 = v116;
        _os_log_impl(&dword_1DA7A9000, v116, v112, "UserNotificationsIDSCloudPushTarget push(updateData): SENT updateIdentifier: %s to availableDevices: %s IDS message identifier: %@", v99, 0x20u);
        sub_1DA7BA120(v100, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v100, -1, -1);
        v103 = v111;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v103, -1, -1);
        MEMORY[0x1E12739F0](v99, -1, -1);

        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v33 = sub_1DA9405A4();
  __swift_project_value_buffer(v33, qword_1EE11ADC0);

  v34 = sub_1DA940584();
  v35 = sub_1DA940F34();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v121[0] = v37;
    *v36 = 136315394;
    swift_beginAccess();
    v38 = *(v15 + 40);
    v39 = [v38 description];
    v40 = sub_1DA940A14();
    v41 = v15;
    v43 = v42;

    v44 = sub_1DA7AE6E8(v40, v43, v121);

    *(v36 + 4) = v44;
    *(v36 + 12) = 2080;
    v45 = [*(v41 + 40) devices];
    if (v45)
    {
      v46 = v45;
      sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
      v47 = sub_1DA940BE4();
    }

    else
    {
      v47 = 0;
    }

    v119 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62C0, &unk_1DA95F340);
    v104 = sub_1DA940A74();
    v106 = sub_1DA7AE6E8(v104, v105, v121);

    *(v36 + 14) = v106;
    _os_log_impl(&dword_1DA7A9000, v34, v35, "UserNotificationsIDSCloudPushTarget push(updateData): zero available devices for idsService: %s idsService.devices: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v37, -1, -1);
    MEMORY[0x1E12739F0](v36, -1, -1);
  }

LABEL_40:
  v107 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DA8AE220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD62E8, &qword_1DA95F360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8AE290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8AE2F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA8AE360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA8AE3E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DA93F904();
  v4 = sub_1DA940A04();
  v5 = sub_1DA940A04();
  v6 = [v1 moveFileIntoRepositoryFromFileURL:v3 forNotificationIdentifier:v4 bundleIdentifier:v5];

  if (v6)
  {
    sub_1DA93F914();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1DA93F964();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_1DA8AE584(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1DA8AE5D4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id ServiceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *ServiceManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_workingDirectory;
  v3 = sub_1DA93F964();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationService;
  *&v0[v4] = [objc_allocWithZone(type metadata accessor for NotificationServiceListener()) init];
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsPersistenceListener] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_contentProtectionManager] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_coreService] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_coreServiceClient] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_toolService] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_badgeService] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_librarian] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_attachmentsRepository] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository] = 0;
  v5 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepositoryAggregator;
  type metadata accessor for NotificationCategoryRepositoryAggregator();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = sub_1DA8495B4(MEMORY[0x1E69E7CC0]);
  *&v0[v5] = v6;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository] = 0;
  v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_dateDefinedReaperBackgroundSystemTaskHandler] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsDefinedReaper] = 0;
  v8 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_actionRouter;
  type metadata accessor for NotificationActionRouter();
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0;
  *&v0[v8] = v9;
  v10 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsProvider;
  type metadata accessor for AggregatedSettingsProvider();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *&v0[v10] = v11;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsProviderService] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_sourceMonitor] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudManager] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiver] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiverConsumerProxy] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudPushTarget] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudReceiver] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_actionHandlerCloudSender] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsProperties] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_alertCoordinator] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudSenderPriorityObserver] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteDeviceChangeManager] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsPropertiesObserver] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_storageSettingsProvider] = 0;
  *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_pipelineFactory] = 0;
  UNRegisterUserNotificationsLogging();
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  v13 = qword_1EE112A90;
  v14 = v12;
  if (v13 != -1)
  {
    v17 = v14;
    swift_once();
    v14 = v17;
  }

  v15 = v14;
  sub_1DA8B3668(v14);

  return v15;
}

Swift::Void __swiftcall ServiceManager.activate()()
{
  v1 = sub_1DA93F8E4();
  v192 = *(v1 - 8);
  v193 = v1;
  v2 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v191 = v186 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v186 - v6;
  v8 = sub_1DA93F964();
  v200 = *(v8 - 8);
  v9 = *(v200 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v190 = v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v187 = v186 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v186 - v14;
  if (qword_1EE114E40 != -1)
  {
    swift_once();
  }

  v16 = sub_1DA9405A4();
  v17 = __swift_project_value_buffer(v16, qword_1EE114E48);
  v18 = v0;
  v199 = v17;
  v19 = sub_1DA940584();
  v20 = sub_1DA940F34();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_1DA7A9000, v19, v20, "%@ activate()", v21, 0xCu);
    sub_1DA7BA120(v22, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v22, -1, -1);
    MEMORY[0x1E12739F0](v21, -1, -1);
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v25 = UNCRemoteServicesNeeded();
  v198 = v15;
  v194 = v24;
  if (v25)
  {
    v26 = [objc_allocWithZone(type metadata accessor for NotificationSystemServiceClient()) init];
    v27 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient);
    *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient) = v26;
    v28 = v26;

    v29 = v18;
    v30 = v28;
    v31 = sub_1DA940584();
    v32 = sub_1DA940F34();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412546;
      *(v33 + 4) = v29;
      *(v33 + 12) = 2112;
      *(v33 + 14) = v30;
      *v34 = v29;
      v34[1] = v26;
      v35 = v29;
      v36 = v30;
      _os_log_impl(&dword_1DA7A9000, v31, v32, "%@ activate(): UNCRemoteServicesNeeded(): systemServiceClient: %@", v33, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5430, &unk_1DA959190);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v34, -1, -1);
      MEMORY[0x1E12739F0](v33, -1, -1);
      v30 = v31;
      v31 = v36;
    }

    v15 = v198;
  }

  v37 = [objc_allocWithZone(UNSContentProtectionManager) init];
  v38 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_contentProtectionManager);
  *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_contentProtectionManager) = v37;
  v39 = v37;

  sub_1DA90D0B4();
  v40 = v200;
  v41 = v200 + 16;
  v42 = *(v200 + 16);
  v42(v7, v15, v8);
  (*(v40 + 56))(v7, 0, 1, v8);
  v43 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_workingDirectory;
  swift_beginAccess();
  sub_1DA7BAD38(v7, v18 + v43, &qword_1ECBD6310, &unk_1DA95F3B0);
  swift_endAccess();
  v44 = sub_1DA93F924();
  v46 = v45;
  v47 = UNCDaemonEnabled();
  v196 = v39;
  v197 = v8;
  v195 = v46;
  v189 = v41;
  v188 = v42;
  if (v47)
  {
    v48 = v187;
    v42(v187, v15, v8);
    v49 = v18;
    v50 = sub_1DA940584();
    v51 = sub_1DA940F34();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v186[1] = v44;
      v54 = v53;
      v186[0] = swift_slowAlloc();
      aBlock = v186[0];
      *v52 = 138412547;
      *(v52 + 4) = v49;
      *v54 = v49;
      *(v52 + 12) = 2081;
      sub_1DA8B4B8C(&qword_1EE114CB0, MEMORY[0x1E6968FB0]);
      v55 = v49;
      v56 = sub_1DA941614();
      v58 = v57;
      (*(v200 + 8))(v48, v8);
      v59 = sub_1DA7AE6E8(v56, v58, &aBlock);

      *(v52 + 14) = v59;
      _os_log_impl(&dword_1DA7A9000, v50, v51, "%@ activate(): UNCDaemonEnabled() using directory %{private}s", v52, 0x16u);
      sub_1DA7BA120(v54, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v54, -1, -1);
      v60 = v186[0];
      __swift_destroy_boxed_opaque_existential_1(v186[0]);
      MEMORY[0x1E12739F0](v60, -1, -1);
      MEMORY[0x1E12739F0](v52, -1, -1);
    }

    else
    {

      (*(v200 + 8))(v48, v8);
    }

    v73 = objc_allocWithZone(UNCBundleLibrarian);
    v74 = sub_1DA940A04();
    v75 = [v73 initWithDirectory_];

    v76 = *&v49[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_librarian];
    *&v49[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_librarian] = v75;
    v77 = v75;

    v78 = objc_allocWithZone(UNCAttachmentsRepository);
    v79 = v77;
    v80 = sub_1DA940A04();
    v81 = [v78 initWithDirectory:v80 librarian:v79];

    v82 = *&v49[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_attachmentsRepository];
    *&v49[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_attachmentsRepository] = v81;

    v83 = *&v49[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient];
    v84 = v196;
    if (!v83)
    {
      goto LABEL_47;
    }

    v85 = type metadata accessor for RemoteBadgeService();
    v86 = objc_allocWithZone(v85);
    *&v86[OBJC_IVAR____TtC21UserNotificationsCore18RemoteBadgeService_systemServiceClient] = v83;
    v201.receiver = v86;
    v201.super_class = v85;
    v87 = v83;
    v88 = objc_msgSendSuper2(&v201, sel_init);
    v89 = *&v49[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_badgeService];
    *&v49[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_badgeService] = v88;
    v90 = v88;

    v91 = v79;
    v92 = [v84 classCStrategy];
    v93 = objc_allocWithZone(UNSNotificationCategoryRepository);
    v94 = sub_1DA940A04();
    v95 = [v93 initWithDirectory:v94 librarian:v91 repositoryProtectionStrategy:v92];

    swift_unknownObjectRelease();
    v96 = *&v49[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository];
    *&v49[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository] = v95;
    v97 = v95;
    swift_unknownObjectRelease();
    v70 = v91;

    v98 = [v84 classDStrategyExcludedFromBackup];
    v99 = objc_allocWithZone(UNCLocalNotificationRepository);
    v100 = v90;
    v101 = v97;
    v102 = sub_1DA940A04();

    v71 = [v99 initWithDirectory:v102 librarian:v70 repositoryProtectionStrategy:v98 categoryRepository:v101 badgeService:v100];

    swift_unknownObjectRelease();
    [v71 performMigration];
    [v71 performValidation];

    v72 = &OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository;
  }

  else
  {
    v61 = v18;
    v62 = sub_1DA940584();
    v63 = sub_1DA940F34();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      *(v64 + 4) = v61;
      *v65 = v61;
      v66 = v61;
      _os_log_impl(&dword_1DA7A9000, v62, v63, "%@ activate(): !UNCDaemonEnabled()", v64, 0xCu);
      sub_1DA7BA120(v65, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v65, -1, -1);
      MEMORY[0x1E12739F0](v64, -1, -1);
    }

    v67 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient;
    v68 = [objc_allocWithZone(UNCRemoteNotificationRepository) initWithServiceClient_];
    v69 = *&v61[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository];
    *&v61[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository] = v68;
    v70 = v68;
    swift_unknownObjectRelease();
    v71 = [objc_allocWithZone(UNSRemoteNotificationCategoryRepository) initWithServiceClient_];
    v72 = &OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository;
  }

  v103 = *(v18 + *v72);
  *(v18 + *v72) = v71;
  swift_unknownObjectRelease();
  v104 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository;
  if (!*(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository))
  {
    goto LABEL_44;
  }

  v105 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepositoryAggregator;
  v106 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepositoryAggregator);
  v107 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_actionRouter);
  v108 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsProvider);
  v109 = type metadata accessor for UserNotificationsVendorServer();
  v110 = swift_allocObject();

  v111 = swift_unknownObjectRetain();
  v112 = sub_1DA8B3DB4(v111, v106, v107, v108, 0xD00000000000002ALL, 0x80000001DA9525D0, 1, v110);
  v113 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer;
  v114 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer);
  *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer) = v112;

  v115 = *(v107 + 16);
  *(v107 + 16) = *(v18 + v104);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v116 = *(v107 + 24);
  *(v107 + 24) = *(v18 + v105);

  v187 = v113;
  v117 = *(v18 + v113);
  if (v117)
  {
    v118 = &protocol witness table for UserNotificationsVendorServer;
  }

  else
  {
    v109 = 0;
    v118 = 0;
    v203 = 0;
    v204 = 0;
  }

  v119 = v197;
  v120 = v188;
  aBlock = v117;
  v205 = v109;
  v206 = v118;
  swift_beginAccess();

  sub_1DA7BAD38(&aBlock, v107 + 32, &unk_1ECBD5990, &qword_1DA95C2F8);
  swift_endAccess();
  v121 = v190;
  v120(v190, v198, v119);
  v122 = type metadata accessor for StorageSettingsProvider();
  v123 = *(v122 + 48);
  v124 = *(v122 + 52);
  v125 = swift_allocObject();
  aBlock = 0x536E6F6974636553;
  v203 = 0xEF73676E69747465;
  v127 = v191;
  v126 = v192;
  v128 = v193;
  (*(v192 + 104))(v191, *MEMORY[0x1E6968F70], v193);
  sub_1DA8282D0();
  sub_1DA93F954();
  (*(v126 + 8))(v127, v128);
  v129 = v121;
  v130 = *(v200 + 8);
  v200 += 8;
  v130(v129, v119);
  v131 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_storageSettingsProvider);
  *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_storageSettingsProvider) = v125;

  v132 = *(v18 + v104);
  if (!v132)
  {
    goto LABEL_45;
  }

  v133 = type metadata accessor for SettingsDefinedReaperClientProxy();
  v134 = swift_allocObject();
  *(v134 + 16) = v132;
  v205 = v133;
  v206 = &off_1F563ACA8;
  aBlock = v134;
  type metadata accessor for SettingsDefinedReaper();
  v135 = swift_allocObject();
  v136 = __swift_mutable_project_boxed_opaque_existential_1(&aBlock, v133);
  v137 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v139 = (v186 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v140 + 16))(v139);
  v141 = *v139;
  v135[5] = v133;
  v135[6] = &off_1F563ACA8;
  v135[2] = v141;
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v142 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsDefinedReaper);
  *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsDefinedReaper) = v135;

  if (UNCRemoteServicesNeeded())
  {
    v143 = *(v18 + v104);
    if (!v143)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v144 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository);
    if (!v144)
    {
LABEL_49:
      __break(1u);
      return;
    }

    v145 = objc_allocWithZone(type metadata accessor for NotificationCoreServiceListener());
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v146 = sub_1DA883BC0(v143, v144);
    sub_1DA883E78();
    v147 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_coreService);
    *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_coreService) = v146;
    v148 = v146;

    v149 = v18;
    v150 = v148;
    v151 = sub_1DA940584();
    v152 = sub_1DA940F34();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      *v153 = 138412546;
      *(v153 + 4) = v149;
      *(v153 + 12) = 2112;
      *(v153 + 14) = v150;
      *v154 = v149;
      v154[1] = v146;
      v155 = v149;
      v156 = v150;
      _os_log_impl(&dword_1DA7A9000, v151, v152, "%@ activate(): UNCRemoteServicesNeeded(): coreService: %@", v153, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5430, &unk_1DA959190);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v154, -1, -1);
      MEMORY[0x1E12739F0](v153, -1, -1);
    }
  }

  v157 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository);
  if (!v157)
  {
    goto LABEL_46;
  }

  v158 = *(v18 + v105);

  swift_unknownObjectRetain();

  sub_1DA922060(v157);

  swift_unknownObjectRelease();
  v159 = UNIsInternalInstall();
  v160 = v198;
  if (v159)
  {
    type metadata accessor for ToolServiceListener();
    swift_allocObject();
    v161 = sub_1DA937DC8();
    v162 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_toolService;
    v163 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_toolService);
    *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_toolService) = v161;

    v164 = *(v18 + v162);
    if (v164)
    {
      *(v164 + 24) = &off_1F5636808;
      swift_unknownObjectWeakAssign();
    }
  }

  v165 = UNCOneness();
  v166 = v196;
  if (v165)
  {
    sub_1DA8AFE2C();
    sub_1DA8B0328();
  }

  else
  {
    v167 = sub_1DA940584();
    v168 = sub_1DA940F34();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&dword_1DA7A9000, v167, v168, "ServiceManager activate(): UNCOneness() DISABLED", v169, 2u);
      MEMORY[0x1E12739F0](v169, -1, -1);
    }
  }

  sub_1DA8B0F9C();
  v170 = *(v18 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationService);
  v171 = *&v170[OBJC_IVAR____TtC21UserNotificationsCore27NotificationServiceListener_queue];
  v172 = swift_allocObject();
  *(v172 + 16) = v170;
  v173 = swift_allocObject();
  *(v173 + 16) = sub_1DA8B4748;
  *(v173 + 24) = v172;
  v206 = sub_1DA8B4750;
  v207 = v173;
  aBlock = MEMORY[0x1E69E9820];
  v203 = 1107296256;
  v204 = sub_1DA7B8000;
  v205 = &block_descriptor_15;
  v174 = _Block_copy(&aBlock);
  v175 = v170;

  dispatch_sync(v171, v174);
  _Block_release(v174);
  LOBYTE(v171) = swift_isEscapingClosureAtFileLocation();

  if (v171)
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [v166 addContentProtectionObserver_];
  sub_1DA8B102C();
  v176 = v18;
  v177 = sub_1DA940584();
  v178 = sub_1DA940F34();

  if (os_log_type_enabled(v177, v178))
  {
    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    aBlock = v181;
    *v179 = 138412546;
    *(v179 + 4) = v176;
    *v180 = v176;
    *(v179 + 12) = 2080;
    v208 = *&v187[v18];

    v182 = v176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6318, &unk_1DA95F3C0);
    v183 = sub_1DA940A74();
    v185 = sub_1DA7AE6E8(v183, v184, &aBlock);

    *(v179 + 14) = v185;
    _os_log_impl(&dword_1DA7A9000, v177, v178, "%@ activate(): started vendorServer: %s", v179, 0x16u);
    sub_1DA7BA120(v180, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v180, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v181);
    MEMORY[0x1E12739F0](v181, -1, -1);
    MEMORY[0x1E12739F0](v179, -1, -1);
  }

  else
  {
  }

  v130(v160, v197);
}

void sub_1DA8AFE2C()
{
  if (*&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_storageSettingsProvider])
  {
    v1 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsProvider];
    v2 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_storageSettingsProvider];
    v3 = swift_retain_n();
    sub_1DA8B38AC(v3, v1, &off_1F5632470);

    if (*&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsDefinedReaper])
    {
      v4 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsDefinedReaper];

      sub_1DA8B38AC(v5, v1, &off_1F563AC90);
    }

    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v6 = sub_1DA9405A4();
    __swift_project_value_buffer(v6, qword_1EE114E48);

    v7 = v0;
    oslog = sub_1DA940584();
    v8 = sub_1DA940F34();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315394;
      sub_1DA941364();

      swift_beginAccess();
      v11 = *(v1 + 16);

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD64B0, &qword_1DA95D4E0);
      v13 = MEMORY[0x1E1271CD0](v11, v12);
      v15 = v14;

      MEMORY[0x1E1271BD0](v13, v15);

      MEMORY[0x1E1271BD0](62, 0xE100000000000000);
      v16 = sub_1DA7AE6E8(0xD000000000000027, 0x80000001DA954530, &v33);

      *(v9 + 4) = v16;
      *(v9 + 12) = 2080;
      type metadata accessor for StorageSettingsProvider();

      v17 = sub_1DA940A74();
      v19 = sub_1DA7AE6E8(v17, v18, &v33);

      *(v9 + 14) = v19;
      _os_log_impl(&dword_1DA7A9000, oslog, v8, "ServiceManager addSettingsProviders(): %s storageSettingsProvider: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v10, -1, -1);
      MEMORY[0x1E12739F0](v9, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v20 = sub_1DA9405A4();
    __swift_project_value_buffer(v20, qword_1EE114E48);
    v21 = v0;
    oslog = sub_1DA940584();
    v22 = sub_1DA940F14();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;
      v25 = *&v21[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsProvider];
      sub_1DA941364();

      swift_beginAccess();
      v26 = *(v25 + 16);

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD64B0, &qword_1DA95D4E0);
      v28 = MEMORY[0x1E1271CD0](v26, v27);
      v30 = v29;

      MEMORY[0x1E1271BD0](v28, v30);

      MEMORY[0x1E1271BD0](62, 0xE100000000000000);
      v31 = sub_1DA7AE6E8(0xD000000000000027, 0x80000001DA954530, &v33);

      *(v23 + 4) = v31;
      _os_log_impl(&dword_1DA7A9000, oslog, v22, "ServiceManager addSettingsProviders(): %s error adding storageSettingsProvider", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12739F0](v24, -1, -1);
      MEMORY[0x1E12739F0](v23, -1, -1);

      return;
    }
  }
}

void sub_1DA8B0328()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository];
  if (!v2)
  {
    __break(1u);
    goto LABEL_37;
  }

  type metadata accessor for UserNotificationsCloudReceiverConsumerProxy();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiverConsumerProxy;
  v5 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiverConsumerProxy];
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiverConsumerProxy] = v3;
  swift_unknownObjectRetain();

  v6 = [objc_opt_self() sharedInstance];
  if (!v6)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v6 deviceClass];

  if (v8)
  {
    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v9 = sub_1DA9405A4();
    __swift_project_value_buffer(v9, qword_1EE114E48);
    oslog = sub_1DA940584();
    v10 = sub_1DA940F34();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DA7A9000, oslog, v10, "ServiceManager startCloud() - not starting on iPad", v11, 2u);
      MEMORY[0x1E12739F0](v11, -1, -1);
    }

    return;
  }

  v98 = v4;
  LOBYTE(v108[0]) = 0;
  v12 = type metadata accessor for RemoteNotificationsProperties();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  RemoteNotificationsProperties.init(_:idsService:)(v108, 0xD000000000000030, 0x80000001DA9544F0);
  v16 = v15;
  v17 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsProperties;
  swift_beginAccess();
  v18 = *&v1[v17];
  *&v1[v17] = v16;

  if (qword_1EE114E40 != -1)
  {
    swift_once();
  }

  osloga = sub_1DA9405A4();
  __swift_project_value_buffer(osloga, qword_1EE114E48);
  v19 = sub_1DA940584();
  v20 = sub_1DA940F34();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DA7A9000, v19, v20, "ServiceManager startCloud() - sender", v21, 2u);
    MEMORY[0x1E12739F0](v21, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6480, &unk_1DA95D4A0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DA9596E0;
  Actor = type metadata accessor for SectionSettingsFetchActor();
  v24 = swift_allocObject();
  *(v24 + 16) = [objc_opt_self() currentNotificationSettingsCenter];
  *(v24 + 24) = &protocol witness table for UNNotificationSettingsCenter;
  *(v22 + 56) = Actor;
  *(v22 + 64) = &off_1F5634E90;
  *(v22 + 32) = v24;
  type metadata accessor for NotificationPipelineFactory();
  swift_allocObject();
  v25 = sub_1DA92E224(v22, 0, 0, 0);
  v26 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_pipelineFactory];
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_pipelineFactory] = v25;

  type metadata accessor for UserNotificationsIDSCloudPushTarget();
  v27 = swift_allocObject();
  *(v27 + 16) = v16;
  v28 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudPushTarget];
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudPushTarget] = v27;

  v29 = objc_allocWithZone(type metadata accessor for UserNotificationsIDSCloudReceiver());

  v31 = sub_1DA8B3B7C(v30, v29);
  v32 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudReceiver];
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_idsCloudReceiver] = v31;
  v99 = v31;

  LOBYTE(v108[0]) = *(v16 + 16);
  v33 = *(v16 + 72);
  v34 = type metadata accessor for NotificationSourceMonitor(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();

  v37 = sub_1DA8BB3E4(v108, v33);
  v38 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_sourceMonitor];
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_sourceMonitor] = v37;

  v100 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository;
  v39 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository];
  if (!v39)
  {
    goto LABEL_38;
  }

  v40 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsProvider];
  v109 = v34;
  v110 = &off_1F5636AC8;
  v108[0] = v37;
  v41 = type metadata accessor for UserNotificationsCloudPushManager();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_categoryRepository] = v39;
  type metadata accessor for _UNImageProviderCommuncationContextDataProvider();
  v43 = swift_allocObject();
  type metadata accessor for UserNotificationsCloudPushHandler();
  v44 = swift_allocObject();
  swift_retain_n();
  swift_unknownObjectRetain_n();
  v101 = v37;

  *&v42[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushHandler] = sub_1DA8B3988(v27, v43, v44);
  v45 = &v42[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_settingsProvider];
  *v45 = v40;
  *(v45 + 1) = &off_1F56380C8;
  sub_1DA822F48(v108, &v42[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_sourceProvider], &unk_1ECBD6520, &qword_1DA958D48);
  *&v42[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushManagerOptions] = 7;
  v113.receiver = v42;
  v113.super_class = v41;
  v46 = objc_msgSendSuper2(&v113, sel_init);
  v47 = qword_1EE110D80;
  v48 = v46;
  if (v47 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(osloga, qword_1EE11AD48);
  v49 = sub_1DA940584();
  v50 = sub_1DA940F34();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v112 = v52;
    *v51 = 136315138;
    v106[0] = *&v48[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushHandler];

    v53 = sub_1DA940A74();
    v55 = sub_1DA7AE6E8(v53, v54, &v112);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_1DA7A9000, v49, v50, "UserNotificationsCloudPushManager init %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1E12739F0](v52, -1, -1);
    MEMORY[0x1E12739F0](v51, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_1DA7BA120(v108, &unk_1ECBD6520, &qword_1DA958D48);

  v56 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudManager;
  swift_beginAccess();
  v57 = *&v1[v56];
  *&v1[v56] = v48;

  v58 = *&v1[v100];
  if (!v58)
  {
    goto LABEL_39;
  }

  v59 = type metadata accessor for UserNotificationsCloudReceiver();
  v60 = objc_allocWithZone(v59);
  v110 = &off_1F5636AE8;
  v111 = &off_1F5636AC8;
  v109 = v34;
  v108[0] = v101;
  *&v60[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v60[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_settingsProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v60[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_receiver] = v99;
  *&v60[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_categoryRepository] = v58;
  sub_1DA8B49B4(v108, &v60[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_sourceProvider]);
  *&v60[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_holdingPen] = 0;
  v107.receiver = v60;
  v107.super_class = v59;
  v61 = v99;
  swift_unknownObjectRetain_n();
  v62 = v61;

  v63 = objc_msgSendSuper2(&v107, sel_init);
  v64 = qword_1EE110D20;
  v65 = v63;
  if (v64 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(osloga, qword_1EE11AD30);
  v66 = sub_1DA940584();
  v67 = sub_1DA940F34();
  v97 = v56;
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    oslogb = swift_slowAlloc();
    v106[0] = oslogb;
    *v68 = 136315138;
    v69 = *&v65[OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_receiver];
    v70 = [v69 description];
    v71 = sub_1DA940A14();
    v72 = v62;
    v74 = v73;

    v75 = sub_1DA7AE6E8(v71, v74, v106);
    v62 = v72;

    *(v68 + 4) = v75;
    _os_log_impl(&dword_1DA7A9000, v66, v67, "UserNotificationsCloudReceiver init %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(oslogb);
    MEMORY[0x1E12739F0](oslogb, -1, -1);
    MEMORY[0x1E12739F0](v68, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v108);
  v76 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiver;
  v77 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiver];
  *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudReceiver] = v65;
  v78 = v65;

  *&v62[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate + 8] = &off_1F5632B50;
  swift_unknownObjectWeakAssign();

  v79 = *&v1[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_actionRouter];
  *&v62[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_actionsDelegate + 8] = &off_1F5633E20;
  swift_unknownObjectWeakAssign();
  v80 = *&v1[v76];
  if (v80)
  {
    v81 = *&v1[v98] ? &off_1F5639D20 : 0;
    v82 = v80 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_consumer;
    swift_beginAccess();
    *(v82 + 8) = v81;
    swift_unknownObjectWeakAssign();
    v83 = *(v80 + OBJC_IVAR____TtC21UserNotificationsCore30UserNotificationsCloudReceiver_holdingPen);
    if (v83)
    {
      swift_unknownObjectWeakLoadStrong();
      *(v83 + 24) = *(v82 + 8);
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }
  }

  v84 = v1;
  v85 = sub_1DA940584();
  v86 = sub_1DA940F34();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v87 = 136315138;
    v105 = *&v1[v97];
    v106[0] = v88;
    v89 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6490, &qword_1DA95F4D0);
    v90 = sub_1DA940A74();
    v92 = sub_1DA7AE6E8(v90, v91, v106);

    *(v87 + 4) = v92;
    _os_log_impl(&dword_1DA7A9000, v85, v86, "ServiceManager startCloud() cloudManager: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    MEMORY[0x1E12739F0](v88, -1, -1);
    MEMORY[0x1E12739F0](v87, -1, -1);
  }

  type metadata accessor for AlertCoordinator();
  swift_allocObject();
  v93 = v84;
  v94 = AlertCoordinator.init(serviceManager:)(v93);

  v95 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_alertCoordinator;
  swift_beginAccess();
  v96 = *&v93[v95];
  *&v93[v95] = v94;
}

id sub_1DA8B0F9C()
{
  v6[3] = &type metadata for BBSupportFeature;
  v6[4] = sub_1DA8B4B38();
  v1 = sub_1DA93FBC4();
  result = __swift_destroy_boxed_opaque_existential_1(v6);
  if (v1)
  {
    v3 = [objc_allocWithZone(UNCSettingsPersistenceConnectionListener) init];
    v4 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsPersistenceListener;
    v5 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsPersistenceListener);
    *(v0 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_settingsPersistenceListener) = v3;

    result = *(v0 + v4);
    if (result)
    {
      return [result activate];
    }
  }

  return result;
}

void *sub_1DA8B102C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_remoteNotificationsProperties;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v3);

    sub_1DA93FB54();
    swift_getKeyPath();
    sub_1DA8B4B8C(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
    sub_1DA93FB74();

    if (*(v4 + 48) == 1)
    {
      v5 = sub_1DA8E4CB8(1);

      if (v5)
      {
        return sub_1DA8B1A7C();
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v7 = sub_1DA9405A4();
    __swift_project_value_buffer(v7, qword_1EE114E48);
    v8 = sub_1DA940584();
    v9 = sub_1DA940F14();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DA7A9000, v8, v9, "No remote properties. Don't monitor for remote notifications.", v10, 2u);
      MEMORY[0x1E12739F0](v10, -1, -1);
    }
  }

  return sub_1DA8B1C74();
}

id ServiceManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1DA8B14EC()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1DA8867A4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1DA8867A4((v5 > 1), v6 + 1, 1, v4);
    }

    v12 = type metadata accessor for UserNotificationsCloudPushManager();
    v13 = &off_1F5636930;
    *&v11 = v3;
    v4[2] = v6 + 1;
    sub_1DA7B9FAC(&v11, &v4[5 * v6 + 4]);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_sourceMonitor);
  if (v7)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1DA8867A4(0, v4[2] + 1, 1, v4);
    }

    v9 = v4[2];
    v8 = v4[3];
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1DA8867A4((v8 > 1), v9 + 1, 1, v4);
    }

    v12 = type metadata accessor for NotificationSourceMonitor(0);
    v13 = &off_1F5636AB0;
    *&v11 = v7;
    v4[2] = v9 + 1;
    sub_1DA7B9FAC(&v11, &v4[5 * v9 + 4]);
  }

  return v4;
}

uint64_t sub_1DA8B167C()
{
  swift_getKeyPath();
  sub_1DA8B4B8C(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();
}

uint64_t sub_1DA8B1718()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1DA940D34();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  sub_1DA8DB00C(0, 0, v3, &unk_1DA95F530, v7);
}

uint64_t sub_1DA8B1864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = *(MEMORY[0x1E69E86E0] + 4);
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_1DA8B18F8;

  return MEMORY[0x1EEE6DA78]();
}

uint64_t sub_1DA8B18F8()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA8B19F4, 0, 0);
}

uint64_t sub_1DA8B19F4()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1DA8B102C();
  }

  v4 = *(v0 + 8);

  return v4();
}

void *sub_1DA8B1A7C()
{
  if (qword_1EE114E40 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE114E48);
  v2 = v0;
  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories);

    _os_log_impl(&dword_1DA7A9000, v3, v4, "Resuming repository observation. (from %{BOOL}d)", v5, 8u);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  result = *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  [result addObserver:v2 forBundleIdentifier:@"*"];
  result = *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository);
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  [result addObserver:v2 forBundleIdentifier:@"*"];
  v7 = sub_1DA8B14EC();
  v8 = v7[2];
  if (v8)
  {
    v9 = (v7 + 4);
    do
    {
      sub_1DA7BABAC(v9, v12);
      v10 = v13;
      v11 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v11 + 16))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories) = 1;
  return result;
}

void *sub_1DA8B1C74()
{
  if (qword_1EE114E40 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE114E48);
  v2 = v0;
  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories);

    _os_log_impl(&dword_1DA7A9000, v3, v4, "Pausing repository observation. (from %{BOOL}d)", v5, 8u);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  result = *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_categoryRepository);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  [result removeObserver:v2 forBundleIdentifier:@"*"];
  result = *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository);
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  [result removeObserver:v2 forBundleIdentifier:@"*"];
  v7 = sub_1DA8B14EC();
  v8 = v7[2];
  if (v8)
  {
    v9 = (v7 + 4);
    do
    {
      sub_1DA7BABAC(v9, v12);
      v10 = v13;
      v11 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v11 + 8))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  *(&v2->isa + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories) = 0;
  return result;
}

void sub_1DA8B1E6C(unint64_t a1, unint64_t a2, id a3, id a4)
{
  v9 = sub_1DA93FAF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v91 = (&v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1DA9401F4();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v21 = *&v4[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_pipelineFactory];
  if (!v21)
  {
    if (qword_1EE114E40 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_48;
  }

  v81 = v20;
  v83 = v19;
  v85 = (&v78 - v17);
  v86 = v18;
  v88 = v16;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (v33 = *&v4[OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient]) == 0)
  {
  }

  else
  {

    v34 = v33;
    v35 = v4;
    v36 = v34;
    sub_1DA935460(a2, a3, a4);

    v4 = v35;
  }

  v82 = v10;
  v84 = v9;
  v87 = v4;
  v93 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
LABEL_28:
    v37 = sub_1DA941264();
    v89 = v21;
    v90 = a1;
    if (v37)
    {
LABEL_11:
      v79 = a3;
      v80 = a4;
      a1 = 0;
      a4 = (a2 & 0xC000000000000001);
      a3 = (a2 & 0xFFFFFFFFFFFFFF8);
      v21 = &selRef_setWatchQuickLook484hIconFile_;
      do
      {
        if (a4)
        {
          v38 = MEMORY[0x1E1272460](a1, a2);
        }

        else
        {
          if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v38 = *(a2 + 8 * a1 + 32);
        }

        v39 = v38;
        v40 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if ([v38 shouldSync])
        {
          sub_1DA9413E4();
          v41 = *(v93 + 16);
          sub_1DA941414();
          sub_1DA941424();
          sub_1DA9413F4();
        }

        else
        {
        }

        ++a1;
      }

      while (v40 != v37);
      v42 = v93;
      a3 = v79;
      a4 = v80;
      a1 = v90;
      if ((v93 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v37 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v89 = v21;
    v90 = a1;
    if (v37)
    {
      goto LABEL_11;
    }
  }

  v42 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_30:
    if ((v42 & 0x4000000000000000) == 0)
    {
      if (!*(v42 + 16))
      {
LABEL_39:
        if (qword_1EE114E40 != -1)
        {
          swift_once();
        }

        v65 = sub_1DA9405A4();
        __swift_project_value_buffer(v65, qword_1EE114E48);
        swift_unknownObjectRetain();

        v66 = sub_1DA940584();
        v67 = sub_1DA940F34();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v92 = a1;
          v93 = v69;
          *v68 = 136315650;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6468, &qword_1DA95F4C0);
          v70 = sub_1DA940A74();
          v72 = sub_1DA7AE6E8(v70, v71, &v93);

          *(v68 + 4) = v72;
          *(v68 + 12) = 2080;
          v73 = sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
          v74 = MEMORY[0x1E1271CD0](v42, v73);
          v76 = v75;

          v77 = sub_1DA7AE6E8(v74, v76, &v93);

          *(v68 + 14) = v77;
          *(v68 + 22) = 2080;
          *(v68 + 24) = sub_1DA7AE6E8(a3, a4, &v93);
          _os_log_impl(&dword_1DA7A9000, v66, v67, "notificationRepository: %s didPerform updates: %s forBundleIdentifier %s - but updates were empty. Skipping.", v68, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v69, -1, -1);
          MEMORY[0x1E12739F0](v68, -1, -1);
        }

        else
        {
        }

        return;
      }

      goto LABEL_32;
    }
  }

LABEL_38:
  if (!sub_1DA941264())
  {
    goto LABEL_39;
  }

LABEL_32:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x1E1272460](0, v42);
LABEL_35:
    v45 = v44;
    v46 = [v44 notificationRecord];

    if (v46)
    {
      v80 = v46;
      v47 = [v46 identifier];
      if (v47)
      {
        v48 = v47;

        v49 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
        v50 = [objc_opt_self() requestWithIdentifier:v48 content:v49 trigger:0];

        v51 = v50;
        v79 = v51;
        v52 = v91;
        sub_1DA93FAC4();
        v53 = sub_1DA93FA44();
        v54 = sub_1DA940A04();
        v55 = sub_1DA940BD4();
        v56 = [objc_opt_self() notificationWithRequest:v51 date:v53 sourceIdentifier:v54 intentIdentifiers:v55];

        (*(v82 + 8))(v52, v84);
        v57 = v85;
        sub_1DA93FF04();
        v58 = v86;
        v59 = v83;
        v60 = v88;
        (*(v86 + 16))(v83, v57, v88);
        v61 = (*(v58 + 80) + 40) & ~*(v58 + 80);
        v62 = swift_allocObject();
        v63 = v87;
        *(v62 + 2) = v90;
        *(v62 + 3) = v63;
        *(v62 + 4) = a2;
        (*(v58 + 32))(&v62[v61], v59, v60);
        swift_unknownObjectRetain();
        v64 = v63;

        sub_1DA92E828(v57, 0, sub_1DA8B493C, v62);

        (*(v58 + 8))(v57, v60);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    goto LABEL_39;
  }

  if (*(v42 + 16))
  {
    v44 = *(v42 + 32);
    goto LABEL_35;
  }

  __break(1u);
LABEL_48:
  swift_once();
LABEL_5:
  v22 = sub_1DA9405A4();
  __swift_project_value_buffer(v22, qword_1EE114E48);
  swift_unknownObjectRetain();

  v91 = sub_1DA940584();
  v23 = sub_1DA940F14();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v91, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v92 = a1;
    v93 = v25;
    *v24 = 136315650;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6468, &qword_1DA95F4C0);
    v26 = sub_1DA940A74();
    v28 = sub_1DA7AE6E8(v26, v27, &v93);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
    v30 = MEMORY[0x1E1271CD0](a2, v29);
    v32 = sub_1DA7AE6E8(v30, v31, &v93);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_1DA7AE6E8(a3, a4, &v93);
    _os_log_impl(&dword_1DA7A9000, v91, v23, "notificationRepository: %s didPerform updates: %s forBundleIdentifier %s - NO PIPELINE FACTORY - this is very bad", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v25, -1, -1);
    MEMORY[0x1E12739F0](v24, -1, -1);
  }

  else
  {
    v43 = v91;
  }
}

void sub_1DA8B28FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  v73 = a5;
  v74 = a3;
  v75 = a4;
  v7 = sub_1DA9401F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v72 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6470, &qword_1DA95F4C8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v68 - v19);
  sub_1DA822F48(a1, &v68 - v19, &unk_1ECBD6470, &qword_1DA95F4C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA9405A4();
    __swift_project_value_buffer(v22, qword_1EE114E48);
    swift_unknownObjectRetain();
    v23 = v21;
    v24 = sub_1DA940584();
    v25 = sub_1DA940F14();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = a2;
      v77[0] = v28;
      *v26 = 136315394;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6468, &qword_1DA95F4C0);
      v29 = sub_1DA940A74();
      v31 = sub_1DA7AE6E8(v29, v30, v77);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2112;
      v32 = v21;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v33;
      *v27 = v33;
      _os_log_impl(&dword_1DA7A9000, v24, v25, "notificationRepository: %s pipeline failed with: %@)", v26, 0x16u);
      sub_1DA7BA120(v27, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E12739F0](v28, -1, -1);
      MEMORY[0x1E12739F0](v26, -1, -1);
    }

    v35 = v74;
    v34 = v75;
    v36 = v73;
    if (*(v74 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer))
    {
      v37 = *(v74 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer);

      UserNotificationsVendorServer.notificationRepositoryDidPerformUpdates(_:userNotification:)(v34, v36);
    }

    v38 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudManager;
    swift_beginAccess();
    v39 = *(v35 + v38);
    if (v39)
    {
      v40 = v39;
      sub_1DA8B5C78(v34, v36);
    }

    else
    {
    }
  }

  else
  {
    (*(v8 + 32))(v16, v20, v7);
    v41 = v8;
    if (qword_1EE114E40 != -1)
    {
      swift_once();
    }

    v42 = sub_1DA9405A4();
    __swift_project_value_buffer(v42, qword_1EE114E48);
    v43 = *(v8 + 16);
    v43(v14, v16, v7);
    v44 = v72;
    v73 = v16;
    v43(v72, v16, v7);
    swift_unknownObjectRetain();
    v45 = sub_1DA940584();
    v46 = sub_1DA940F34();
    swift_unknownObjectRelease();
    v47 = os_log_type_enabled(v45, v46);
    v71 = v41;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v76 = a2;
      v77[0] = v70;
      *v48 = 136315650;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6468, &qword_1DA95F4C0);
      v49 = sub_1DA940A74();
      v51 = v41;
      v52 = sub_1DA7AE6E8(v49, v50, v77);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      sub_1DA8B4B8C(&qword_1EE114E70, MEMORY[0x1E69DF180]);
      v53 = sub_1DA941614();
      v55 = v54;
      v56 = *(v51 + 8);
      v56(v14, v7);
      v57 = sub_1DA7AE6E8(v53, v55, v77);

      *(v48 + 14) = v57;
      *(v48 + 22) = 2112;
      v58 = sub_1DA9401C4();
      *(v48 + 24) = v58;
      v59 = v69;
      *v69 = v58;
      v56(v44, v7);
      _os_log_impl(&dword_1DA7A9000, v45, v46, "notificationRepository: %s pipeline produced: %s settings: %@", v48, 0x20u);
      sub_1DA7BA120(v59, &unk_1ECBD5430, &unk_1DA959190);
      MEMORY[0x1E12739F0](v59, -1, -1);
      v60 = v70;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v60, -1, -1);
      MEMORY[0x1E12739F0](v48, -1, -1);
    }

    else
    {

      v56 = *(v41 + 8);
      v56(v44, v7);
      v56(v14, v7);
    }

    v62 = v74;
    v61 = v75;
    v63 = v73;
    if (*(v74 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer))
    {
      v64 = *(v74 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_vendorServer);

      UserNotificationsVendorServer.notificationRepositoryDidPerformUpdates(_:userNotification:)(v61, v63);
    }

    v65 = OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_cloudManager;
    swift_beginAccess();
    v66 = *(v62 + v65);
    if (v66)
    {
      swift_endAccess();
      v67 = v66;
      sub_1DA8B5C78(v61, v63);

      v56(v63, v7);
    }

    else
    {
      v56(v63, v7);
      swift_endAccess();
    }
  }
}

Swift::Void __swiftcall ServiceManager.categoryRepository(_:didChangeCategoriesForBundleIdentifier:)(UNSNotificationCategoryRepository _, Swift::String didChangeCategoriesForBundleIdentifier)
{
  observable = _._observable;
  repository = _._repository;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v5 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient);
    if (v5)
    {
      v6 = v5;
      sub_1DA935578(repository, observable);
    }
  }
}

unint64_t ServiceManager.captureState()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6320, &unk_1DA95F3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA9596E0;
  *(inited + 32) = 0x69726F74696E6F6DLL;
  v2 = inited + 32;
  *(inited + 40) = 0xEA0000000000676ELL;
  v3 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories);
  v4 = MEMORY[0x1E69E6398];
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 80) = v4;
  *(inited + 48) = v3;
  v5 = sub_1DA849274(inited);
  swift_setDeallocating();
  sub_1DA7BA120(v2, &unk_1ECBD6550, &qword_1DA95F8F0);
  return v5;
}

unint64_t sub_1DA8B32E0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6320, &unk_1DA95F3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA9596E0;
  *(inited + 32) = 0x69726F74696E6F6DLL;
  v3 = inited + 32;
  *(inited + 40) = 0xEA0000000000676ELL;
  v4 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_isObservingRepositories);
  v5 = MEMORY[0x1E69E6398];
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 80) = v5;
  *(inited + 48) = v4;
  v6 = sub_1DA849274(inited);
  swift_setDeallocating();
  sub_1DA7BA120(v3, &unk_1ECBD6550, &qword_1DA95F8F0);
  return v6;
}

uint64_t ServiceManager.description.getter()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000025, 0x80000001DA954100);
  v1 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_systemServiceClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6330, &unk_1DA95F3E0);
  v2 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v2);

  MEMORY[0x1E1271BD0](0xD000000000000019, 0x80000001DA954130);
  v5 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore14ServiceManager_notificationRepository);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6338, qword_1DA95F3F0);
  v3 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v3);

  return 0;
}

uint64_t sub_1DA8B3544(uint64_t a1)
{
  v8[3] = type metadata accessor for RemoteNotificationsProperties.Availability();
  v8[4] = &protocol witness table for RemoteNotificationsProperties.Availability;
  v8[0] = a1;
  v2 = qword_1EE113010;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_1EE113018;
  v5 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_1DA84AA88(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DA8B3668(void *a1)
{
  v8[3] = type metadata accessor for ServiceManager();
  v8[4] = &protocol witness table for ServiceManager;
  v8[0] = a1;
  v2 = qword_1EE113010;
  v3 = a1;
  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_1EE113018;
  v5 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_1DA84AA88(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DA8B3788(uint64_t a1)
{
  v8[3] = type metadata accessor for RemoteNotificationsProperties();
  v8[4] = &protocol witness table for RemoteNotificationsProperties;
  v8[0] = a1;
  v2 = qword_1EE113010;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_1EE113018;
  v5 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_1DA84A760(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DA8B38AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1DA88664C(0, v6[2] + 1, 1, v6);
    *(a2 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1DA88664C((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = a1;
  v10[5] = a3;
  *(a2 + 16) = v6;
  swift_endAccess();
}

uint64_t sub_1DA8B3988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = type metadata accessor for UserNotificationsIDSCloudPushTarget();
  v24 = &off_1F5636740;
  *&v22 = a1;
  v20 = type metadata accessor for _UNImageProviderCommuncationContextDataProvider();
  v21 = &protocol witness table for _UNImageProviderCommuncationContextDataProvider;
  *&v19 = a2;
  if (qword_1EE110E68 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA9405A4();
  __swift_project_value_buffer(v6, qword_1EE11ADC0);
  sub_1DA7BABAC(&v22, v18);
  v7 = sub_1DA940584();
  v8 = sub_1DA940F34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    sub_1DA7BABAC(v18, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6498, &unk_1DA95F4D8);
    v11 = sub_1DA940A74();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v18);
    v14 = sub_1DA7AE6E8(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DA7A9000, v7, v8, "UserNotificationsCloudPushHandler init with target: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12739F0](v10, -1, -1);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1DA7B9FAC(&v22, a3 + 16);
  sub_1DA7B9FAC(&v19, a3 + 56);
  return a3;
}

char *sub_1DA8B3B7C(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1DA940804();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_notificationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_attachmentDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_categoriesDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_actionsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_coordinationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &a2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_properties];
  *v10 = a1;
  *(v10 + 1) = &off_1F5637B08;
  v16.receiver = a2;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsIDSCloudReceiver_properties];
  sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E7F88], v5);
  v13 = v11;
  swift_unknownObjectRetain();
  v14 = sub_1DA941014();
  (*(v6 + 8))(v9, v5);
  sub_1DA8B4538(v13, v14, v12);
  swift_unknownObjectRelease();

  return v13;
}

void *sub_1DA8B3DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  v57 = a7;
  v53 = a5;
  v54 = a6;
  v55 = a3;
  v56 = a4;
  v52 = a2;
  v58 = a1;
  v50[1] = *a8;
  v9 = sub_1DA940694();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50[2] = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1DA940FC4();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA940F74();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1DA940854();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  sub_1DA940834();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1DA8B4B8C(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA82B658();
  sub_1DA9411D4();
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8098], v51);
  v20 = v58;
  v21 = v52;
  a8[2] = sub_1DA941004();
  a8[6] = 0;
  swift_unknownObjectWeakInit();
  a8[9] = 0;
  type metadata accessor for UnfairLock();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  v24 = MEMORY[0x1E69E7CC8];
  a8[12] = v22;
  a8[13] = v24;
  v25 = v54;
  a8[10] = v53;
  a8[11] = v25;
  a8[3] = v20;
  a8[4] = v21;
  a8[6] = &off_1F5633E20;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();

  a8[7] = v56;
  a8[8] = &off_1F56380C8;
  if (v57)
  {
    v26 = a8[10];
    v27 = a8[11];
    v28 = a8[2];

    v29 = v28;
    sub_1DA940684();
    swift_allocObject();
    swift_weakInit();
    v30 = sub_1DA940734();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    v33 = sub_1DA940714();
    v35 = a8[9];
    a8[9] = v33;

    if (a8[9])
    {
      v36 = a8[9];

      sub_1DA940724();
    }

    v37 = sub_1DA940A94();
    notify_post((v37 + 32));

    if (qword_1EE114E10 != -1)
    {
      swift_once();
    }

    v38 = sub_1DA9405A4();
    __swift_project_value_buffer(v38, qword_1EE114E20);

    v39 = sub_1DA940584();
    v40 = sub_1DA940EF4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v60 = v42;
      *v41 = 136315650;
      v59 = a8;

      v43 = sub_1DA940A74();
      v45 = sub_1DA7AE6E8(v43, v44, &v60);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = a8[10];
      v47 = a8[11];

      v48 = sub_1DA7AE6E8(v46, v47, &v60);

      *(v41 + 14) = v48;
      *(v41 + 22) = 2080;
      *(v41 + 24) = sub_1DA7AE6E8(0xD00000000000002ALL, 0x80000001DA951D30, &v60);
      _os_log_impl(&dword_1DA7A9000, v39, v40, "%s serviceName: %s posted Darwin notification: %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v42, -1, -1);
      MEMORY[0x1E12739F0](v41, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v34 = a8[9];
    a8[9] = 0;
  }

  return a8;
}

void sub_1DA8B4538(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  [*(a3 + 40) addDelegate:a1 queue:a2];
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA9405A4();
  __swift_project_value_buffer(v6, qword_1EE110EA0);
  v7 = a1;

  v8 = sub_1DA940584();
  v9 = sub_1DA940EF4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136315394;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD64A8, &unk_1DA95F4E8);
    v13 = sub_1DA940A74();
    v15 = sub_1DA7AE6E8(v13, v14, &v18);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = *(a3 + 40);
    *(v10 + 14) = v16;
    *v11 = v16;
    v17 = v16;
    _os_log_impl(&dword_1DA7A9000, v8, v9, "RemoteNotificationsProperties add(delegate): %s idsService: %@", v10, 0x16u);
    sub_1DA7BA120(v11, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E12739F0](v12, -1, -1);
    MEMORY[0x1E12739F0](v10, -1, -1);
  }
}

uint64_t sub_1DA8B4750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata accessor for ServiceManager()
{
  result = qword_1EE1134D8;
  if (!qword_1EE1134D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA8B47CC()
{
  sub_1DA8B48C4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DA8B48C4()
{
  if (!qword_1EE114CA8)
  {
    sub_1DA93F964();
    v0 = sub_1DA941134();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE114CA8);
    }
  }
}

void sub_1DA8B493C(uint64_t a1)
{
  v3 = *(sub_1DA9401F4() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1DA8B28FC(a1, v4, v5, v6, v7);
}

uint64_t sub_1DA8B49B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t (*sub_1DA8B4A20())()
{
  v1 = *(v0 + 16);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1DA8B4A7C;
}

uint64_t sub_1DA8B4A84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7470;

  return sub_1DA8B1864(a1, v4, v5, v6);
}

unint64_t sub_1DA8B4B38()
{
  result = qword_1EE115588;
  if (!qword_1EE115588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115588);
  }

  return result;
}

uint64_t sub_1DA8B4B8C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DA8B4BF8()
{
  v1 = v0;
  if (qword_1ECBD4708 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1ECBE3D60);

  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23[0] = v6;
    *v5 = 136315138;
    v7 = DateDefinedReaperBackgroundSystemTaskHandler.description.getter();
    v9 = sub_1DA7AE6E8(v7, v8, v23);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "%s start()", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12739F0](v6, -1, -1);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  v10 = [objc_opt_self() sharedScheduler];
  v11 = sub_1DA940A04();
  v12 = *(v1 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v23[4] = sub_1DA8B5284;
  v23[5] = v13;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1DA7B00D0;
  v23[3] = &block_descriptor_16;
  v14 = _Block_copy(v23);
  v15 = v12;

  [v10 registerForTaskWithIdentifier:v11 usingQueue:v15 launchHandler:v14];
  _Block_release(v14);

  v16 = sub_1DA940584();
  v17 = sub_1DA940F34();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23[0] = v19;
    *v18 = 136315138;
    v20 = DateDefinedReaperBackgroundSystemTaskHandler.description.getter();
    v22 = sub_1DA7AE6E8(v20, v21, v23);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_1DA7A9000, v16, v17, "%s start() completed", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1E12739F0](v19, -1, -1);
    MEMORY[0x1E12739F0](v18, -1, -1);
  }
}

void sub_1DA8B4F48(void *a1)
{
  v22[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_1ECBD4708 != -1)
    {
      swift_once();
    }

    v2 = sub_1DA9405A4();
    __swift_project_value_buffer(v2, qword_1ECBE3D60);

    v3 = sub_1DA940584();
    v4 = sub_1DA940F34();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22[0] = v6;
      *v5 = 136315138;

      v7 = DateDefinedReaperBackgroundSystemTaskHandler.description.getter();
      v9 = v8;

      v10 = sub_1DA7AE6E8(v7, v9, v22);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_1DA7A9000, v3, v4, "%s registerForTask(withIdentifier): Called", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1E12739F0](v6, -1, -1);
      MEMORY[0x1E12739F0](v5, -1, -1);
    }

    sub_1DA8B528C();
    [a1 setTaskCompleted];

    goto LABEL_16;
  }

  if (qword_1ECBD4708 != -1)
  {
    swift_once();
  }

  v11 = sub_1DA9405A4();
  __swift_project_value_buffer(v11, qword_1ECBE3D60);
  v12 = sub_1DA940584();
  v13 = sub_1DA940F14();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DA7A9000, v12, v13, "DateDefinedReaperBackgroundSystemTaskHandler registerForTask(withIdentifier): Called but self has gone away", v14, 2u);
    MEMORY[0x1E12739F0](v14, -1, -1);
  }

  v22[0] = 0;
  v15 = [a1 setTaskExpiredWithRetryAfter:v22 error:7200.0];
  v16 = v22[0];
  if (!v15)
  {
    v19 = v22[0];
    v20 = sub_1DA93F8C4();

    swift_willThrow();
LABEL_16:
    v21 = *MEMORY[0x1E69E9840];
    return;
  }

  v17 = *MEMORY[0x1E69E9840];

  v18 = v16;
}

void sub_1DA8B528C()
{
  v1 = sub_1DA93FAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBD4708 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA9405A4();
  __swift_project_value_buffer(v6, qword_1ECBE3D60);

  v7 = sub_1DA940584();
  v8 = sub_1DA940F34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v25 = v1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136315138;
    v12 = DateDefinedReaperBackgroundSystemTaskHandler.description.getter();
    v14 = sub_1DA7AE6E8(v12, v13, &v26);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DA7A9000, v7, v8, "%s run()", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12739F0](v11, -1, -1);
    v15 = v10;
    v1 = v25;
    MEMORY[0x1E12739F0](v15, -1, -1);
  }

  v16 = *(v0 + 16);

  sub_1DA93FA74();
  v17 = sub_1DA830930(v5);

  (*(v2 + 8))(v5, v1);

  v18 = sub_1DA940584();
  v19 = sub_1DA940F34();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26 = v21;
    *v20 = 136315394;
    v22 = DateDefinedReaperBackgroundSystemTaskHandler.description.getter();
    v24 = sub_1DA7AE6E8(v22, v23, &v26);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v17;
    _os_log_impl(&dword_1DA7A9000, v18, v19, "%s run() removedCount: %ld", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1E12739F0](v21, -1, -1);
    MEMORY[0x1E12739F0](v20, -1, -1);
  }
}

uint64_t DateDefinedReaperBackgroundSystemTaskHandler.deinit()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedScheduler];
  v3 = sub_1DA940A04();
  [v2 deregisterTaskWithIdentifier_];

  if (qword_1ECBD4708 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA9405A4();
  __swift_project_value_buffer(v4, qword_1ECBE3D60);

  v5 = sub_1DA940584();
  v6 = sub_1DA940F34();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = DateDefinedReaperBackgroundSystemTaskHandler.description.getter();
    v11 = sub_1DA7AE6E8(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DA7A9000, v5, v6, "%s deinit()", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12739F0](v8, -1, -1);
    MEMORY[0x1E12739F0](v7, -1, -1);
  }

  v12 = *(v1 + 16);

  return v1;
}

uint64_t DateDefinedReaperBackgroundSystemTaskHandler.__deallocating_deinit()
{
  DateDefinedReaperBackgroundSystemTaskHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t DateDefinedReaperBackgroundSystemTaskHandler.description.getter()
{
  sub_1DA941364();
  MEMORY[0x1E1271BD0](0xD000000000000036, 0x80000001DA9545D0);
  v1 = *(v0 + 16);

  sub_1DA941364();

  v4 = *(v1 + 16);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5000, &unk_1DA959390);
  v2 = sub_1DA940A74();
  MEMORY[0x1E1271BD0](v2);

  MEMORY[0x1E1271BD0](62, 0xE100000000000000);

  MEMORY[0x1E1271BD0](0xD00000000000001BLL, 0x80000001DA951720);

  MEMORY[0x1E1271BD0](15913, 0xE200000000000000);
  return 0;
}

void sub_1DA8B595C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DA941264())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E1272460](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

char *UserNotificationsCloudPushManager.__allocating_init(target:categoryRepository:settingsProvider:sourceProvider:pushManagerOptions:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  ObjectType = swift_getObjectType();
  v17 = sub_1DA8B9590(v15, a2, a3, a5, a6, v6, v13, ObjectType, v14, a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

char *UserNotificationsCloudPushManager.init(target:categoryRepository:settingsProvider:sourceProvider:pushManagerOptions:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = a1[3];
  v14 = a1[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  ObjectType = swift_getObjectType();
  v21 = sub_1DA8B9214(v18, a2, a3, a5, a6, v6, v13, ObjectType, v14, a4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v21;
}

void sub_1DA8B5C78(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA9401F4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v128 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v124 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v129 = &v124 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v127 = &v124 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v125 = &v124 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v124 - v20;
  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v22 = sub_1DA9405A4();
  v23 = __swift_project_value_buffer(v22, qword_1EE11AD48);
  v130 = v7[2];
  v131 = v7 + 2;
  v130(v21, a2, v6);

  v132 = v23;
  v24 = sub_1DA940584();
  v25 = sub_1DA940F34();

  v26 = os_log_type_enabled(v24, v25);
  v134 = v7;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v126 = v3;
    v28 = v27;
    v124 = swift_slowAlloc();
    v137[0] = v124;
    *v28 = 136315394;
    v29 = sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
    v30 = MEMORY[0x1E1271CD0](a1, v29);
    v32 = sub_1DA7AE6E8(v30, v31, v137);
    v135 = v13;
    v33 = a1;
    v34 = a2;
    v35 = v6;
    v36 = v32;

    *(v28 + 4) = v36;
    *(v28 + 12) = 2080;
    v37 = sub_1DA940014();
    v39 = v38;
    v133 = v7[1];
    v133(v21, v35);
    v40 = sub_1DA7AE6E8(v37, v39, v137);
    v6 = v35;
    a2 = v34;
    a1 = v33;
    v13 = v135;

    *(v28 + 14) = v40;
    _os_log_impl(&dword_1DA7A9000, v24, v25, "notificationRepositoryDidPerformUpdates: %s forBundleIdentifier: %s", v28, 0x16u);
    v41 = v124;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v41, -1, -1);
    v42 = v28;
    v3 = v126;
    MEMORY[0x1E12739F0](v42, -1, -1);
  }

  else
  {

    v133 = v7[1];
    v133(v21, v6);
  }

  v43 = sub_1DA9401C4();
  if (v43)
  {
    v44 = v43;
    v45 = swift_allocObject();
    v46 = v44;
    v135 = v44;
  }

  else
  {
    v47 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_settingsProvider);
    v48 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_settingsProvider + 8);
    swift_getObjectType();
    v49 = sub_1DA940014();
    v50 = (*(v48 + 8))(v49);

    v45 = swift_allocObject();
    v135 = v50;
    if (!v50)
    {
      swift_deallocUninitializedObject();
      v97 = v128;
      v130(v128, a2, v6);
      v98 = sub_1DA940584();
      v99 = sub_1DA940F14();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v137[0] = v101;
        *v100 = 136380675;
        v102 = sub_1DA940014();
        v104 = v103;
        v133(v97, v6);
        v105 = sub_1DA7AE6E8(v102, v104, v137);

        *(v100 + 4) = v105;
        _os_log_impl(&dword_1DA7A9000, v98, v99, "Not forwarding updates from %{private}s; unable to find settings.", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v101);
        MEMORY[0x1E12739F0](v101, -1, -1);
        MEMORY[0x1E12739F0](v100, -1, -1);
      }

      else
      {

        v133(v97, v6);
      }

      return;
    }

    v46 = v135;
    v44 = 0;
  }

  *(v45 + 16) = v46;
  v51 = v44;
  v52 = [v46 remoteNotificationsSetting];
  v53 = *(v45 + 16);
  if (v52 != 2)
  {
    [v53 remoteNotificationsSetting];
    v130(v13, a2, v6);
    v69 = sub_1DA940584();
    v70 = sub_1DA940F34();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v137[0] = v72;
      *v71 = 136380931;
      v73 = sub_1DA940014();
      v74 = v13;
      v76 = v75;
      v133(v74, v6);
      v77 = sub_1DA7AE6E8(v73, v76, v137);

      *(v71 + 4) = v77;
      *(v71 + 12) = 2082;
      v78 = UNNotificationSettingString();
      v79 = sub_1DA940A14();
      v81 = v80;

      v82 = sub_1DA7AE6E8(v79, v81, v137);

      *(v71 + 14) = v82;
      _os_log_impl(&dword_1DA7A9000, v69, v70, "Not forwarding updates from %{private}s; mirroring: %{public}s.", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v72, -1, -1);
      MEMORY[0x1E12739F0](v71, -1, -1);

      goto LABEL_16;
    }

    v96 = v13;
    goto LABEL_30;
  }

  if ([v53 scheduledDeliverySetting] == 2)
  {
    [*(v45 + 16) scheduledDeliverySetting];
    v54 = v129;
    v130(v129, a2, v6);
    v55 = sub_1DA940584();
    v56 = sub_1DA940F34();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = v54;
      v59 = swift_slowAlloc();
      v137[0] = v59;
      *v57 = 136380931;
      v60 = sub_1DA940014();
      v62 = v61;
      v133(v58, v6);
      v63 = sub_1DA7AE6E8(v60, v62, v137);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2082;
      v64 = UNNotificationSettingString();
      v65 = sub_1DA940A14();
      v67 = v66;

      v68 = sub_1DA7AE6E8(v65, v67, v137);

      *(v57 + 14) = v68;
      _os_log_impl(&dword_1DA7A9000, v55, v56, "Not forwarding updates from %{private}s; scheduled summary: %{public}s.", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v59, -1, -1);
      MEMORY[0x1E12739F0](v57, -1, -1);

LABEL_16:
      return;
    }

    v96 = v54;
    goto LABEL_30;
  }

  v83 = objc_opt_self();
  sub_1DA940014();
  v84 = sub_1DA940A04();

  v85 = [v83 applicationWithBundleIdentifier_];

  if ([v85 isHidden])
  {
    v129 = v85;
    v86 = v127;
    v130(v127, a2, v6);
    v87 = sub_1DA940584();
    v88 = sub_1DA940F34();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v137[0] = v90;
      *v89 = 136642819;
      v91 = sub_1DA940014();
      v92 = v86;
      v94 = v93;
      v133(v92, v6);
      v95 = sub_1DA7AE6E8(v91, v94, v137);

      *(v89 + 4) = v95;
      _os_log_impl(&dword_1DA7A9000, v87, v88, "Not forwarding updates from %{sensitive}s; it is hidden.", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x1E12739F0](v90, -1, -1);
      MEMORY[0x1E12739F0](v89, -1, -1);

      goto LABEL_16;
    }

    v96 = v86;
LABEL_30:
    v133(v96, v6);

    return;
  }

  if ([v85 isLocked] && objc_msgSend(*(v45 + 16), sel_showPreviewsSetting) != 2)
  {
    v128 = a1;
    v106 = v125;
    v130(v125, a2, v6);
    v107 = sub_1DA940584();
    v108 = sub_1DA940F34();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = v106;
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v137[0] = v111;
      *v110 = 136380675;
      v112 = sub_1DA940014();
      v129 = v85;
      v113 = v112;
      v126 = v3;
      v115 = v114;
      v133(v109, v6);
      v116 = v113;
      v85 = v129;
      v117 = sub_1DA7AE6E8(v116, v115, v137);
      v3 = v126;

      *(v110 + 4) = v117;
      _os_log_impl(&dword_1DA7A9000, v107, v108, "Forcing Show Previews setting to Never for %{private}s; it is protected.", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v111);
      MEMORY[0x1E12739F0](v111, -1, -1);
      MEMORY[0x1E12739F0](v110, -1, -1);
    }

    else
    {

      v133(v106, v6);
    }

    [*(v45 + 16) mutableCopy];
    sub_1DA941154();
    swift_unknownObjectRelease();
    sub_1DA7AF3EC(0, &qword_1ECBD5058, 0x1E6983230);
    swift_dynamicCast();
    v118 = v136;
    [v136 setShowPreviewsSetting_];
    [v118 copy];
    sub_1DA941154();

    swift_unknownObjectRelease();
    sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
    swift_dynamicCast();
    v119 = *(v45 + 16);
    *(v45 + 16) = v136;

    a1 = v128;
  }

  v120 = sub_1DA940014();
  v122 = sub_1DA8B8240(a1, v120, v121);

  MEMORY[0x1EEE9AC00](v123);
  *(&v124 - 4) = a2;
  *(&v124 - 3) = v3;
  *(&v124 - 2) = v45;
  sub_1DA8B595C(sub_1DA8B96AC, (&v124 - 6), v122);
}

uint64_t sub_1DA8B6A48(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v57 = a4;
  v56 = a3;
  v53 = a2;
  v55 = sub_1DA9401F4();
  v50 = *(v55 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = v6;
  v54 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v46 - v9;
  v11 = sub_1DA93FAF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (v46 - v17);
  v58 = *a1;
  v19 = [v58 notificationRecord];
  v20 = [v19 triggerType];

  if (!v20)
  {
    sub_1DA940A14();
LABEL_8:

    v51 = 1;
    goto LABEL_11;
  }

  v21 = v12;
  v22 = sub_1DA940A14();
  v24 = v23;

  v25 = sub_1DA940A14();
  if (!v24)
  {
    v12 = v21;
    goto LABEL_8;
  }

  if (v22 == v25 && v24 == v26)
  {

    v51 = 0;
  }

  else
  {
    v27 = sub_1DA941684();

    v51 = v27 ^ 1;
  }

  v12 = v21;
LABEL_11:
  v28 = [v58 notificationRecord];
  v29 = [v28 date];

  v48 = v12;
  v49 = v11;
  v47 = v18;
  if (v29)
  {
    sub_1DA93FAB4();

    v30 = *(v12 + 32);
    v30(v10, v16, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v30(v18, v10, v11);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_1DA93FAC4();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_1DA7BA120(v10, &unk_1ECBD6530, &unk_1DA958820);
    }
  }

  v46[1] = type metadata accessor for Fuzz();
  v31 = v53;
  v46[0] = sub_1DA940014();
  v33 = v32;
  v34 = v50;
  v35 = v54;
  v36 = v55;
  (*(v50 + 16))(v54, v31, v55);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = (v52 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v56;
  v41 = v58;
  *(v39 + 16) = v56;
  *(v39 + 24) = v41;
  (*(v34 + 32))(v39 + v37, v35, v36);
  *(v39 + v38) = v57;
  v42 = v40;
  v43 = v41;

  v44 = v47;
  sub_1DA903218(v51 & 1, v47, v46[0], v33, sub_1DA8B98C0, v39);

  return (*(v48 + 8))(v44, v49);
}

void sub_1DA8B6F38(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 16);
  v8 = v7;
  sub_1DA8B6FB4(a2, a3, v7);
}

void sub_1DA8B6FB4(void *a1, uint64_t a2, char *a3)
{
  v165 = a2;
  v166 = sub_1DA9401F4();
  v164 = *(v166 - 8);
  v6 = *(v164 + 64);
  v7 = MEMORY[0x1EEE9AC00](v166);
  v9 = &v159[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v159[-v11];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v159[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v159[-v17];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v159[-v20];
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v159[-v22];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = qword_1EE110D80;
    v27 = a1;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = sub_1DA9405A4();
    __swift_project_value_buffer(v28, qword_1EE11AD48);
    v29 = v164;
    v30 = v166;
    (*(v164 + 16))(v23, v165, v166);
    v31 = v27;
    v32 = sub_1DA940584();
    v33 = sub_1DA940F34();
    if (!os_log_type_enabled(v32, v33))
    {

      (*(v29 + 8))(v23, v30);
      return;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v167 = v35;
    *v34 = 136315394;
    v36 = [v25 notificationRecord];
    v37 = [v36 identifier];

    if (v37)
    {
      v38 = sub_1DA940A14();
      v40 = v39;

      v41 = sub_1DA7AE6E8(v38, v40, &v167);

      *(v34 + 4) = v41;
      *(v34 + 12) = 2080;
      v42 = sub_1DA940014();
      v44 = v43;
      (*(v29 + 8))(v23, v166);
      v45 = sub_1DA7AE6E8(v42, v44, &v167);

      *(v34 + 14) = v45;
      _os_log_impl(&dword_1DA7A9000, v32, v33, "push(update): skipping addNotification: %s forBundleIdentifier: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v35, -1, -1);
      MEMORY[0x1E12739F0](v34, -1, -1);

      return;
    }

    __break(1u);
    goto LABEL_48;
  }

  v163 = a3;
  v46 = OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushManagerOptions;
  if (v3[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushManagerOptions])
  {
    objc_opt_self();
    v47 = swift_dynamicCastObjCClass();
    if (v47)
    {
      v48 = v47;
      v49 = a1;
      v161 = v48;
      v162 = v49;
      v50 = [v48 notificationRecord];
      v51 = [v50 pipelineState];

      if (v51 == 2)
      {
        v70 = v3;
        if (qword_1EE110D80 != -1)
        {
          swift_once();
        }

        v89 = sub_1DA9405A4();
        __swift_project_value_buffer(v89, qword_1EE11AD48);
        v90 = v164;
        v91 = v166;
        (*(v164 + 16))(v15, v165, v166);
        v74 = v162;
        v92 = sub_1DA940584();
        v93 = sub_1DA940F34();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v167 = v95;
          *v94 = 136315394;
          v96 = [v161 notificationRecord];
          v97 = [v96 identifier];

          if (!v97)
          {
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            return;
          }

          v98 = sub_1DA940A14();
          v100 = v99;

          v101 = sub_1DA7AE6E8(v98, v100, &v167);

          *(v94 + 4) = v101;
          *(v94 + 12) = 2080;
          v102 = sub_1DA940014();
          v104 = v103;
          (*(v164 + 8))(v15, v166);
          v105 = sub_1DA7AE6E8(v102, v104, &v167);

          *(v94 + 14) = v105;
          _os_log_impl(&dword_1DA7A9000, v92, v93, "push(update): failed replaceNotification: %s forBundleIdentifier: %s - sending anyway!", v94, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v95, -1, -1);
          MEMORY[0x1E12739F0](v94, -1, -1);
        }

        else
        {

          (*(v90 + 8))(v15, v91);
        }
      }

      else
      {
        if (v51 != 1)
        {
          if (!v51)
          {
            v52 = v164;
            if (qword_1EE110D80 != -1)
            {
              swift_once();
            }

            v53 = sub_1DA9405A4();
            __swift_project_value_buffer(v53, qword_1EE11AD48);
            v54 = v166;
            (*(v52 + 16))(v21, v165, v166);
            v55 = v162;
            v56 = sub_1DA940584();
            v57 = sub_1DA940F34();
            if (!os_log_type_enabled(v56, v57))
            {

              (*(v52 + 8))(v21, v54);
              return;
            }

            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v167 = v59;
            *v58 = 136315394;
            v60 = [v161 notificationRecord];
            v61 = [v60 identifier];

            if (v61)
            {
              v62 = sub_1DA940A14();
              v64 = v63;

              v65 = sub_1DA7AE6E8(v62, v64, &v167);

              *(v58 + 4) = v65;
              *(v58 + 12) = 2080;
              v66 = sub_1DA940014();
              v68 = v67;
              (*(v52 + 8))(v21, v166);
              v69 = sub_1DA7AE6E8(v66, v68, &v167);

              *(v58 + 14) = v69;
              _os_log_impl(&dword_1DA7A9000, v56, v57, "push(update): pending replaceNotification: %s forBundleIdentifier: %s - not sending", v58, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1E12739F0](v59, -1, -1);
              MEMORY[0x1E12739F0](v58, -1, -1);

              return;
            }

            goto LABEL_50;
          }

          v163 = v3;
          v106 = v164;
          if (qword_1EE110D80 != -1)
          {
            swift_once();
          }

          v107 = sub_1DA9405A4();
          __swift_project_value_buffer(v107, qword_1EE11AD48);
          v108 = v166;
          (*(v106 + 16))(v12, v165, v166);
          v109 = v162;
          v110 = sub_1DA940584();
          v111 = sub_1DA940F14();

          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            v167 = v162;
            *v112 = 136315394;
            v113 = v109;
            v161 = v110;
            v114 = v113;
            v115 = [v113 description];
            v116 = sub_1DA940A14();
            v160 = v111;
            v117 = v116;
            v119 = v118;

            v120 = sub_1DA7AE6E8(v117, v119, &v167);

            *(v112 + 4) = v120;
            *(v112 + 12) = 2080;
            v121 = sub_1DA940014();
            v123 = v122;
            (*(v164 + 8))(v12, v108);
            v124 = sub_1DA7AE6E8(v121, v123, &v167);

            *(v112 + 14) = v124;
            v125 = v161;
            _os_log_impl(&dword_1DA7A9000, v161, v160, "push(update): NOT HANDLED update: %s forBundleIdentifier: %s", v112, 0x16u);
            v126 = v162;
            swift_arrayDestroy();
            MEMORY[0x1E12739F0](v126, -1, -1);
            MEMORY[0x1E12739F0](v112, -1, -1);
          }

          else
          {

            (*(v106 + 8))(v12, v108);
          }

          v3 = v163;
          goto LABEL_38;
        }

        v70 = v3;
        if (qword_1EE110D80 != -1)
        {
          swift_once();
        }

        v71 = sub_1DA9405A4();
        __swift_project_value_buffer(v71, qword_1EE11AD48);
        v72 = v164;
        v73 = v166;
        (*(v164 + 16))(v18, v165, v166);
        v74 = v162;
        v75 = sub_1DA940584();
        v76 = sub_1DA940F34();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v167 = v78;
          *v77 = 136315394;
          v79 = [v161 notificationRecord];
          v80 = [v79 identifier];

          if (!v80)
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          v81 = sub_1DA940A14();
          v83 = v82;

          v84 = sub_1DA7AE6E8(v81, v83, &v167);

          *(v77 + 4) = v84;
          *(v77 + 12) = 2080;
          v85 = sub_1DA940014();
          v87 = v86;
          (*(v164 + 8))(v18, v166);
          v88 = sub_1DA7AE6E8(v85, v87, &v167);

          *(v77 + 14) = v88;
          _os_log_impl(&dword_1DA7A9000, v75, v76, "push(update): completed replaceNotification: %s forBundleIdentifier: %s - sending!", v77, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v78, -1, -1);
          MEMORY[0x1E12739F0](v77, -1, -1);
        }

        else
        {

          (*(v72 + 8))(v18, v73);
        }
      }

      v127 = sub_1DA940014();
      sub_1DA8B7FA8(v127, v128);

      v129 = *&v70[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushHandler];
      v130 = [v161 notificationRecord];
      v131 = [objc_opt_self() updateWithNotificationRecord:v130 shouldSync:1];

      v132 = sub_1DA940014();
      sub_1DA8F7884(v131, v132, v133, v163);

LABEL_41:

      return;
    }
  }

LABEL_38:
  if ((v3[v46] & 2) != 0)
  {
    objc_opt_self();
    v134 = swift_dynamicCastObjCClass();
    if (v134)
    {
      v135 = v134;
      v136 = *&v3[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushHandler];
      v137 = a1;
      v138 = sub_1DA940014();
      sub_1DA8F8FC0(v135, v138, v139);

      goto LABEL_41;
    }
  }

  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v140 = sub_1DA9405A4();
  __swift_project_value_buffer(v140, qword_1EE11AD48);
  v141 = v164;
  v142 = v166;
  (*(v164 + 16))(v9, v165, v166);
  v143 = a1;
  v144 = sub_1DA940584();
  v145 = sub_1DA940F14();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v167 = v165;
    *v146 = 136315394;
    v147 = v143;
    v148 = [v147 description];
    v149 = v142;
    v150 = sub_1DA940A14();
    v152 = v151;

    v153 = sub_1DA7AE6E8(v150, v152, &v167);

    *(v146 + 4) = v153;
    *(v146 + 12) = 2080;
    v154 = sub_1DA940014();
    v156 = v155;
    (*(v141 + 8))(v9, v149);
    v157 = sub_1DA7AE6E8(v154, v156, &v167);

    *(v146 + 14) = v157;
    _os_log_impl(&dword_1DA7A9000, v144, v145, "push(update): NOT HANDLED update: %s forBundleIdentifier: %s", v146, 0x16u);
    v158 = v165;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v158, -1, -1);
    MEMORY[0x1E12739F0](v146, -1, -1);
  }

  else
  {

    (*(v141 + 8))(v9, v142);
  }
}

uint64_t sub_1DA8B7FA8(uint64_t a1, unint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_categoryRepository];
  v6 = sub_1DA940A04();
  v7 = [v5 categoriesForBundleIdentifier_];

  v8 = sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
  v9 = sub_1DA940BE4();

  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v10 = sub_1DA9405A4();
  __swift_project_value_buffer(v10, qword_1EE11AD48);
  v11 = v2;

  v12 = sub_1DA940584();
  v13 = sub_1DA940EF4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v14 = 136315650;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7750, &qword_1DA95F618);
    v15 = sub_1DA940A74();
    v17 = a1;
    v18 = sub_1DA7AE6E8(v15, v16, &v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1DA7AE6E8(v17, a2, &v25);
    *(v14 + 22) = 2080;
    v19 = MEMORY[0x1E1271CD0](v9, v8);
    v21 = sub_1DA7AE6E8(v19, v20, &v25);
    a1 = v17;

    *(v14 + 24) = v21;
    _os_log_impl(&dword_1DA7A9000, v12, v13, "pushCategories from: %s bundleIdentifier: %s updatedCategories: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v24, -1, -1);
    MEMORY[0x1E12739F0](v14, -1, -1);
  }

  v22 = *&v11[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushHandler];
  sub_1DA8F9A30(v9, a1, a2);
}

unint64_t sub_1DA8B8240(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v73 - v9;
  v11 = type metadata accessor for NotificationSource();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v73 - v17);
  sub_1DA82B0B4(v3 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_sourceProvider, &v77);
  if (v78)
  {
    v19 = a1;
    v74 = v3;
    sub_1DA7B9FAC(&v77, v79);
    v21 = v80;
    v20 = v81;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v75 = a2;
    sub_1DA8E78DC(a2, a3, 0, v21, v20);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1DA7BA120(v10, &qword_1ECBD6640, qword_1DA95F868);
      if (qword_1EE110D80 != -1)
      {
        swift_once();
      }

      v22 = sub_1DA9405A4();
      __swift_project_value_buffer(v22, qword_1EE11AD48);

      v23 = sub_1DA940584();
      v24 = sub_1DA940F14();

      v25 = os_log_type_enabled(v23, v24);
      v26 = v75;
      a1 = v19;
      if (v25)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v77 = v28;
        *v27 = 136380675;
        *(v27 + 4) = sub_1DA7AE6E8(v26, a3, &v77);
        _os_log_impl(&dword_1DA7A9000, v23, v24, "Skipping resolution: unable to find source for %{private}s.", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x1E12739F0](v28, -1, -1);
        MEMORY[0x1E12739F0](v27, -1, -1);
      }

      goto LABEL_8;
    }

    sub_1DA8B9950(v10, v18);
    *&v77 = &unk_1F56316E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1DA9596E0;
    v34 = v18[3];
    *(v33 + 32) = v18[2];
    *(v33 + 40) = v34;
    v76 = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
    sub_1DA8B99B4();
    v35 = sub_1DA940EE4();

    if (v35)
    {
      v36 = 2;
LABEL_29:
      sub_1DA8304A0(4uLL);
      sub_1DA830524(v36);
      sub_1DA830524(4uLL);
      v47 = v75;
      if (qword_1EE110D80 != -1)
      {
        swift_once();
      }

      v48 = sub_1DA9405A4();
      __swift_project_value_buffer(v48, qword_1EE11AD48);

      v49 = sub_1DA940584();
      v50 = sub_1DA940F34();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v77 = v52;
        *v51 = 136380675;
        *(v51 + 4) = sub_1DA7AE6E8(v47, a3, &v77);
        _os_log_impl(&dword_1DA7A9000, v49, v50, "Dropping updates from %{private}s; known duplicate source.", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        MEMORY[0x1E12739F0](v52, -1, -1);
        MEMORY[0x1E12739F0](v51, -1, -1);
      }

      sub_1DA82A7FC(v18);
      __swift_destroy_boxed_opaque_existential_1(v79);
      return MEMORY[0x1E69E7CC0];
    }

    v36 = v18[7];
    if (v36 != 4)
    {
      sub_1DA8304B0(v18[7]);
      goto LABEL_29;
    }

    sub_1DA830524(4uLL);
    sub_1DA830524(4uLL);
    v37 = *(v11 + 36);
    v38 = objc_allocWithZone(MEMORY[0x1E698E640]);
    v39 = sub_1DA93F904();
    v40 = [v38 initWithURL_];

    if (!v40)
    {
      a1 = v19;
      if (qword_1EE110D80 != -1)
      {
        swift_once();
      }

      v54 = sub_1DA9405A4();
      __swift_project_value_buffer(v54, qword_1EE11AD48);
      sub_1DA82A798(v18, v16);

      v55 = sub_1DA940584();
      v56 = sub_1DA940F14();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v77 = v58;
        *v57 = 136380931;
        *(v57 + 4) = sub_1DA7AE6E8(v75, a3, &v77);
        *(v57 + 12) = 2081;
        v59 = *(v11 + 36);
        sub_1DA93F964();
        sub_1DA828278();
        v60 = sub_1DA941614();
        v62 = v61;
        sub_1DA82A7FC(v16);
        v63 = sub_1DA7AE6E8(v60, v62, &v77);

        *(v57 + 14) = v63;
        _os_log_impl(&dword_1DA7A9000, v55, v56, "Unable to create bundle for %{private}s at %{private}s.", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v58, -1, -1);
        MEMORY[0x1E12739F0](v57, -1, -1);
      }

      else
      {

        sub_1DA82A7FC(v16);
      }

      goto LABEL_45;
    }

    v41 = [objc_allocWithZone(UNCNotificationRecordMapper) initWithBundle:v40 categoryRepository:*(&v74->isa + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_categoryRepository)];
    a1 = v19;
    if (!v41)
    {
      if (qword_1EE110D80 == -1)
      {
        goto LABEL_41;
      }

      goto LABEL_49;
    }

    v42 = v41;
    if (v19 >> 62)
    {
      a3 = sub_1DA941264();
      if (a3)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a3 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a3)
      {
LABEL_22:
        *&v77 = MEMORY[0x1E69E7CC0];
        sub_1DA941404();
        if ((a3 & 0x8000000000000000) == 0)
        {
          v43 = 0;
          do
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v44 = MEMORY[0x1E1272460](v43, v19);
            }

            else
            {
              v44 = *(v19 + 8 * v43 + 32);
            }

            v45 = v44;
            ++v43;
            sub_1DA8B9A18(v44, v42);

            sub_1DA9413E4();
            v46 = *(v77 + 16);
            sub_1DA941414();
            sub_1DA941424();
            sub_1DA9413F4();
          }

          while (a3 != v43);
          sub_1DA82A7FC(v18);

          a1 = v77;
          goto LABEL_9;
        }

        __break(1u);
LABEL_49:
        swift_once();
LABEL_41:
        v64 = sub_1DA9405A4();
        __swift_project_value_buffer(v64, qword_1EE11AD48);

        v65 = v40;
        v66 = sub_1DA940584();
        v67 = sub_1DA940F14();

        v74 = v66;
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&v77 = v70;
          *v68 = 136380931;
          *(v68 + 4) = sub_1DA7AE6E8(v75, a3, &v77);
          *(v68 + 12) = 2112;
          *(v68 + 14) = v65;
          *v69 = v40;
          v71 = v65;
          v72 = v74;
          _os_log_impl(&dword_1DA7A9000, v74, v67, "Unable to create mapper for %{private}s with %@.", v68, 0x16u);
          sub_1DA7BA120(v69, &unk_1ECBD5430, &unk_1DA959190);
          MEMORY[0x1E12739F0](v69, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v70);
          MEMORY[0x1E12739F0](v70, -1, -1);
          MEMORY[0x1E12739F0](v68, -1, -1);
        }

        else
        {
        }

LABEL_45:
        sub_1DA82A7FC(v18);
LABEL_8:

LABEL_9:
        __swift_destroy_boxed_opaque_existential_1(v79);
        return a1;
      }
    }

    sub_1DA82A7FC(v18);
    a1 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  sub_1DA7BA120(&v77, &unk_1ECBD6520, &qword_1DA958D48);
  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v29 = sub_1DA9405A4();
  __swift_project_value_buffer(v29, qword_1EE11AD48);
  v30 = sub_1DA940584();
  v31 = sub_1DA940F14();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1DA7A9000, v30, v31, "Skipping resolution: no source provider.", v32, 2u);
    MEMORY[0x1E12739F0](v32, -1, -1);
  }

  return a1;
}

id UserNotificationsCloudPushManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserNotificationsCloudPushManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotificationsCloudPushManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DA8B8E2C(const char *a1, const char **a2)
{
  v5 = v2;
  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v6 = sub_1DA9405A4();
  __swift_project_value_buffer(v6, qword_1EE11AD48);
  v7 = sub_1DA940584();
  v8 = sub_1DA940F34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DA7A9000, v7, v8, a1, v9, 2u);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  v10 = *(v5 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_categoryRepository);
  v11 = *a2;

  return [v10 v11];
}

Swift::Void __swiftcall UserNotificationsCloudPushManager.categoryRepository(_:didChangeCategoriesForBundleIdentifier:)(UNSNotificationCategoryRepository _, Swift::String didChangeCategoriesForBundleIdentifier)
{
  if ((*(v2 + OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushManagerOptions) & 4) != 0)
  {
    observable = _._observable;
    repository = _._repository;
    if (qword_1EE110D80 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE11AD48);
    swift_unknownObjectRetain();

    v6 = sub_1DA940584();
    v7 = sub_1DA940EF4();

    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315394;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7750, &qword_1DA95F618);
      v10 = sub_1DA940A74();
      v12 = sub_1DA7AE6E8(v10, v11, &v13);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_1DA7AE6E8(repository, observable, &v13);
      _os_log_impl(&dword_1DA7A9000, v6, v7, "categoryRepository: %s didChangeCategoriesForBundleIdentifier: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v9, -1, -1);
      MEMORY[0x1E12739F0](v8, -1, -1);
    }

    sub_1DA8B7FA8(repository, observable);
  }
}

char *sub_1DA8B9214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a3;
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  v44 = a9;
  v45 = a10;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v43 - v20;
  (*(v15 + 32))(v43 - v20);
  v22 = *a5;
  *&a6[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_categoryRepository] = a2;
  type metadata accessor for _UNImageProviderCommuncationContextDataProvider();
  v23 = swift_allocObject();
  v43[1] = type metadata accessor for UserNotificationsCloudPushHandler();
  v24 = swift_allocObject();
  v46 = v15;
  v25 = *(v15 + 16);
  v48 = v21;
  v26 = v21;
  v27 = a7;
  v25(v19, v26, a7);
  v47 = a2;
  swift_unknownObjectRetain();
  *&a6[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushHandler] = sub_1DA8FA788(v19, v23, v24, a7, v44);
  v28 = &a6[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_settingsProvider];
  v29 = v45;
  *v28 = v49;
  *(v28 + 1) = v29;
  v49 = a4;
  sub_1DA82B0B4(a4, &a6[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_sourceProvider]);
  *&a6[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushManagerOptions] = v22;
  v30 = type metadata accessor for UserNotificationsCloudPushManager();
  v52.receiver = a6;
  v52.super_class = v30;
  v31 = objc_msgSendSuper2(&v52, sel_init);
  v32 = qword_1EE110D80;
  v33 = v31;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_1DA9405A4();
  __swift_project_value_buffer(v34, qword_1EE11AD48);
  v35 = sub_1DA940584();
  v36 = sub_1DA940F34();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v51 = v38;
    *v37 = 136315138;
    v50 = *&v33[OBJC_IVAR____TtC21UserNotificationsCore33UserNotificationsCloudPushManager_pushHandler];

    v39 = sub_1DA940A74();
    v41 = sub_1DA7AE6E8(v39, v40, &v51);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1DA7A9000, v35, v36, "UserNotificationsCloudPushManager init %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1E12739F0](v38, -1, -1);
    MEMORY[0x1E12739F0](v37, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_1DA7BA120(v49, &unk_1ECBD6520, &qword_1DA958D48);
  (*(v46 + 8))(v48, v27);
  return v33;
}

char *sub_1DA8B9590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a5;
  v22 = a8;
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(type metadata accessor for UserNotificationsCloudPushManager());
  (*(v15 + 16))(v18, a1, a7);
  return sub_1DA8B9214(v18, a2, a3, a4, v21, v19, a7, v22, a9, a10);
}

unint64_t sub_1DA8B96F4()
{
  result = qword_1ECBD64E0;
  if (!qword_1ECBD64E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD64E0);
  }

  return result;
}

unint64_t sub_1DA8B974C()
{
  result = qword_1ECBD64E8;
  if (!qword_1ECBD64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD64E8);
  }

  return result;
}

unint64_t sub_1DA8B97A4()
{
  result = qword_1ECBD64F0;
  if (!qword_1ECBD64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD64F0);
  }

  return result;
}

unint64_t sub_1DA8B97FC()
{
  result = qword_1ECBD64F8;
  if (!qword_1ECBD64F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD64F8);
  }

  return result;
}

void sub_1DA8B98C0()
{
  v1 = *(sub_1DA9401F4() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1DA8B6F38(v3, v4, v0 + v2, v5);
}

uint64_t sub_1DA8B9950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DA8B99B4()
{
  result = qword_1EE110CB0;
  if (!qword_1EE110CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6790, &qword_1DA9594C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110CB0);
  }

  return result;
}

void sub_1DA8B9A18(id a1, void *a2)
{
  sub_1DA7AF3EC(0, &qword_1EE110B88, off_1E85D5D78);
  if (([a1 isKindOfClass_] & 1) == 0)
  {
    v14 = [a1 notificationRecord];
    v15 = [a2 notificationForNotificationRecord_];

    if (v15)
    {
      v5 = v15;
      v16 = [a1 notificationRecord];
      if (!UNNotificationToNotificationRecord)
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v17 = (*(UNNotificationToNotificationRecord + 2))(UNNotificationToNotificationRecord, v5);
      if (v17)
      {
        v18 = v17;
        [v17 setPipelineState_];
        [v18 setIsHighlight_];
        v19 = [v16 summary];
        [v18 setSummary_];

        v20 = [v16 eventBehavior];
        [v18 setEventBehavior_];

        sub_1DA7AF3EC(0, &unk_1EE110B90, off_1E85D5D70);
        if ([a1 isKindOfClass_])
        {
          [objc_opt_self() updateWithNotificationRecord:v18 shouldSync:1];
          if (qword_1EE110D80 != -1)
          {
            swift_once();
          }

          v21 = sub_1DA9405A4();
          __swift_project_value_buffer(v21, qword_1EE11AD48);
          v22 = a2;
          v23 = sub_1DA940584();
          v24 = sub_1DA940F34();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v74 = v26;
            *v25 = 136380675;
            v27 = [v22 bundleIdentifier];

            if (!v27)
            {
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v28 = sub_1DA940A14();
            v30 = v29;

            v31 = sub_1DA7AE6E8(v28, v30, &v74);

            *(v25 + 4) = v31;
            _os_log_impl(&dword_1DA7A9000, v23, v24, "Resolved add update for %{private}s.", v25, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v26);
            MEMORY[0x1E12739F0](v26, -1, -1);
            MEMORY[0x1E12739F0](v25, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          objc_opt_self();
          v44 = swift_dynamicCastObjCClass();
          if (!v44)
          {
            if (qword_1EE110D80 != -1)
            {
              swift_once();
            }

            v59 = sub_1DA9405A4();
            __swift_project_value_buffer(v59, qword_1EE11AD48);
            v60 = a2;
            a1 = a1;
            v61 = sub_1DA940584();
            v62 = sub_1DA940F14();
            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v74 = v65;
              *v63 = 136380931;
              v66 = [v60 bundleIdentifier];

              if (!v66)
              {
LABEL_51:
                __break(1u);
                return;
              }

              v67 = sub_1DA940A14();
              v69 = v68;

              v70 = sub_1DA7AE6E8(v67, v69, &v74);

              *(v63 + 4) = v70;
              *(v63 + 12) = 2113;
              *(v63 + 14) = a1;
              *v64 = a1;
              v71 = a1;
              _os_log_impl(&dword_1DA7A9000, v61, v62, "Unrecognized update type for %{private}s: %{private}@.", v63, 0x16u);
              sub_1DA7BA120(v64, &unk_1ECBD5430, &unk_1DA959190);
              MEMORY[0x1E12739F0](v64, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v65);
              MEMORY[0x1E12739F0](v65, -1, -1);
              MEMORY[0x1E12739F0](v63, -1, -1);
            }

            else
            {
            }

            goto LABEL_17;
          }

          v45 = v44;
          v46 = a1;
          v18 = v18;
          v47 = [v45 replacedNotificationRecord];
          [objc_opt_self() updateWithNotificationRecord:v18 replacedNotificationRecord:v47 shouldRepost:{objc_msgSend(v45, sel_shouldRepost)}];

          if (qword_1EE110D80 != -1)
          {
            swift_once();
          }

          v48 = sub_1DA9405A4();
          __swift_project_value_buffer(v48, qword_1EE11AD48);
          v49 = a2;
          v50 = sub_1DA940584();
          v51 = sub_1DA940F34();
          if (os_log_type_enabled(v50, v51))
          {
            v73 = v46;
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v74 = v53;
            *v52 = 136380675;
            v54 = [v49 bundleIdentifier];

            if (!v54)
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v55 = sub_1DA940A14();
            v57 = v56;

            v58 = sub_1DA7AE6E8(v55, v57, &v74);

            *(v52 + 4) = v58;
            _os_log_impl(&dword_1DA7A9000, v50, v51, "Resolved replace update %{private}s.", v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v53);
            MEMORY[0x1E12739F0](v53, -1, -1);
            MEMORY[0x1E12739F0](v52, -1, -1);
          }

          else
          {
          }
        }

        return;
      }
    }

    if (qword_1EE110D80 != -1)
    {
      swift_once();
    }

    v32 = sub_1DA9405A4();
    __swift_project_value_buffer(v32, qword_1EE11AD48);
    v33 = a2;
    v34 = sub_1DA940584();
    v35 = sub_1DA940F14();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v74 = v37;
      *v36 = 136380675;
      v38 = [v33 bundleIdentifier];

      if (!v38)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v39 = sub_1DA940A14();
      v41 = v40;

      v42 = sub_1DA7AE6E8(v39, v41, &v74);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_1DA7A9000, v34, v35, "Unable to re-resolve notification record for %{private}s.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1E12739F0](v37, -1, -1);
      MEMORY[0x1E12739F0](v36, -1, -1);
    }

    else
    {
    }

    goto LABEL_26;
  }

  if (qword_1EE110D80 != -1)
  {
    swift_once();
  }

  v3 = sub_1DA9405A4();
  __swift_project_value_buffer(v3, qword_1EE11AD48);
  v4 = a2;
  v5 = sub_1DA940584();
  v6 = sub_1DA940EF4();
  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_17;
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v74 = v8;
  *v7 = 136380675;
  v9 = [v4 bundleIdentifier];

  if (!v9)
  {
    goto LABEL_47;
  }

  v10 = sub_1DA940A14();
  v12 = v11;

  v13 = sub_1DA7AE6E8(v10, v12, &v74);

  *(v7 + 4) = v13;
  _os_log_impl(&dword_1DA7A9000, v5, v6, "Skipping resolution of remove update for %{private}s.", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v8);
  MEMORY[0x1E12739F0](v8, -1, -1);
  MEMORY[0x1E12739F0](v7, -1, -1);
LABEL_17:

LABEL_26:

  v43 = a1;
}

id sub_1DA8BA494()
{
  v0 = [objc_opt_self() currentNotificationSettingsCenter];
  v1 = sub_1DA940A04();
  v2 = [v0 notificationSourceWithIdentifier_];

  return v2;
}

id sub_1DA8BA520()
{
  v0 = [objc_opt_self() currentNotificationSettingsCenter];
  v1 = [v0 notificationSystemSettings];

  return v1;
}

uint64_t sub_1DA8BA580(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for NotificationSource();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1DA82A798(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        sub_1DA82A7FC(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1DA8B9950(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DA82A734(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1DA82A734(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_1DA8B9950(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_1DA82A7FC(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v15;
  }

  return result;
}

void *sub_1DA8BA7A8(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v22 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1DA941264();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
      v20 = v5 & 0xC000000000000001;
      v18 = v5;
      while (1)
      {
        if (v20)
        {
          v10 = MEMORY[0x1E1272460](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v21 = v10;
        v3 = a2;
        v12 = a1(&v21);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1DA9413E4();
          v13 = v8;
          v14 = a1;
          v15 = a2;
          v16 = v22[2];
          sub_1DA941414();
          a2 = v15;
          a1 = v14;
          v8 = v13;
          v5 = v18;
          sub_1DA941424();
          v3 = &v22;
          sub_1DA9413F4();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v22;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

uint64_t sub_1DA8BA964()
{
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor);
  sub_1DA93FB74();

  v1 = *(v0 + 32);
}

uint64_t sub_1DA8BAA08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor);
  sub_1DA93FB74();

  *a2 = *(v3 + 32);
}

uint64_t sub_1DA8BAAB4(uint64_t a1)
{
  v3 = *(v1 + 32);

  v5 = sub_1DA82A28C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor);
    sub_1DA93FB64();
  }
}

uint64_t sub_1DA8BAC08()
{
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor);
  sub_1DA93FB74();

  v1 = *(v0 + 40);
}

uint64_t sub_1DA8BACAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor);
  sub_1DA93FB74();

  *a2 = *(v3 + 40);
}

uint64_t sub_1DA8BAD58(uint64_t a1)
{
  v3 = *(v1 + 40);

  v5 = sub_1DA82A28C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor);
    sub_1DA93FB64();
  }
}

uint64_t sub_1DA8BAEAC()
{
  v1 = *v0;
  if ((v0[2] & 1) == 0)
  {
    return sub_1DA8BAFE0();
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = sub_1DA8BB2F0(Strong);

    return v3;
  }

  v5 = sub_1DA8499A8(MEMORY[0x1E69E7CC0]);
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = sub_1DA8BF70C(*(v5 + 16), 0);
  v9 = *(type metadata accessor for NotificationSource() - 8);
  v10 = sub_1DA8BF9E4(&v11, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v6);
  sub_1DA830720();
  if (v10 != v7)
  {
    __break(1u);
LABEL_8:

    return MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1DA8BAFE0()
{
  v19 = MEMORY[0x1E69E7CC0];
  v1 = [objc_opt_self() enumeratorWithOptions_];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v19;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DA8C06BC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1DA7AF9C8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA8BEC1C;
  aBlock[3] = &block_descriptor_17;
  v4 = _Block_copy(aBlock);

  [v1 swift:v4 forEach:?];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else if (qword_1EE110D50 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1EE110D60);
  v6 = sub_1DA940584();
  v7 = sub_1DA940F04();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 134218243;
    swift_beginAccess();
    *(v8 + 4) = *(v19 + 16);
    *(v8 + 12) = 2081;
    v10 = type metadata accessor for NotificationSource();

    v12 = MEMORY[0x1E1271CD0](v11, v10);
    v14 = v13;

    v15 = sub_1DA7AE6E8(v12, v14, aBlock);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1DA7A9000, v6, v7, "%ld Local sources: %{private}s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  swift_beginAccess();
  v16 = v19;

  return v16;
}

uint64_t sub_1DA8BB2F0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*(v2 + 16) == 1)
  {

LABEL_4:
    v7 = *(a1 + 72);

    os_unfair_lock_lock((v7 + 24));
    sub_1DA8BCE28((v7 + 16), v4, &v9);
    os_unfair_lock_unlock((v7 + 24));
    v8 = v9;

    return v8;
  }

  v5 = sub_1DA941684();

  if (v5)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

id sub_1DA8BB3E4(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DA940FC4();
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA940F74();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1DA940854();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = *a1;
  swift_weakInit();
  v14 = MEMORY[0x1E69E7CC0];
  *(v2 + 32) = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = v14;
  *(v2 + 48) = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *(v2 + 72) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  sub_1DA93FBA4();
  *(v2 + 16) = v13;
  v24 = a2;
  swift_weakAssign();
  sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  sub_1DA940844();
  v29 = v14;
  sub_1DA8C07A0(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v26 + 104))(v25, *MEMORY[0x1E69E8090], v27);
  v15 = sub_1DA941004();
  *(v2 + 64) = v15;
  v16 = type metadata accessor for NotificationSourceMonitorLSObserver();
  v17 = objc_allocWithZone(v16);
  swift_unknownObjectWeakInit();
  *&v17[OBJC_IVAR____TtC21UserNotificationsCore35NotificationSourceMonitorLSObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v18 = objc_opt_self();
  v19 = v15;
  result = [v18 defaultWorkspace];
  if (result)
  {
    *&v17[OBJC_IVAR____TtC21UserNotificationsCore35NotificationSourceMonitorLSObserver_workspace] = result;
    v28.receiver = v17;
    v28.super_class = v16;
    v21 = objc_msgSendSuper2(&v28, sel_init);

    *(v3 + 56) = v21;
    *&v21[OBJC_IVAR____TtC21UserNotificationsCore35NotificationSourceMonitorLSObserver_delegate + 8] = &off_1F5636A98;
    swift_unknownObjectWeakAssign();
    [*(v3 + 72) setCountLimit_];
    [*(v3 + 72) setDelegate_];
    if (v24)
    {
      *(v24 + 24) = &off_1F5636A88;
      swift_unknownObjectWeakAssign();
    }

    if (qword_1EE112A90 != -1)
    {
      swift_once();
    }

    sub_1DA8BFD60(v22);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8BB860()
{
  swift_weakDestroy();
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC21UserNotificationsCore25NotificationSourceMonitor___observationRegistrar;
  v4 = sub_1DA93FBB4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1DA8BB8F8()
{
  sub_1DA8BB860();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8BB950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v99 = a4;
  LODWORD(v112) = a3;
  v108 = a5;
  v110 = 0;
  v100 = *v6;
  v9 = type metadata accessor for NotificationSource();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v109 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v106 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v96 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v96 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v107 = v10;
  v26 = *(v10 + 56);
  v105 = &v96 - v27;
  v26();
  type metadata accessor for NotificationSourceMonitor.SourceKey();
  v28 = swift_allocObject();
  v103 = a1;
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  *(v28 + 32) = v112;
  v101 = v6;
  v29 = v6[9];

  v111 = v28;
  v30 = [v29 objectForKey_];
  v113 = v26;
  v102 = a2;
  v104 = v10 + 56;
  if (v30)
  {
    v31 = v30;
    v32 = v9;
    if (qword_1EE110D50 != -1)
    {
      swift_once();
    }

    v33 = sub_1DA9405A4();
    __swift_project_value_buffer(v33, qword_1EE110D60);
    v34 = v111;

    v35 = sub_1DA940584();
    v36 = sub_1DA940EF4();

    v37 = os_log_type_enabled(v35, v36);
    v38 = &unk_1EE11A000;
    v39 = v105;
    if (v37)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v115 = v41;
      *v40 = 136381187;
      v43 = *(v34 + 16);
      v42 = *(v34 + 24);

      v44 = sub_1DA7AE6E8(v43, v42, &v115);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      if (*(v34 + 32))
      {
        v45 = 0x2965746F6D657228;
      }

      else
      {
        v45 = 0x296C61636F6C28;
      }

      if (*(v34 + 32))
      {
        v46 = 0xE800000000000000;
      }

      else
      {
        v46 = 0xE700000000000000;
      }

      v47 = sub_1DA7AE6E8(v45, v46, &v115);

      *(v40 + 14) = v47;
      *(v40 + 22) = 2080;

      v48 = NotificationSource.description.getter();
      v50 = v49;

      v51 = sub_1DA7AE6E8(v48, v50, &v115);

      *(v40 + 24) = v51;
      v38 = &unk_1EE11A000;
      _os_log_impl(&dword_1DA7A9000, v35, v36, "Found cached source for %{private}s %{public}s: %s", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v41, -1, -1);
      MEMORY[0x1E12739F0](v40, -1, -1);
    }

    sub_1DA7BA120(v39, &qword_1ECBD6640, qword_1DA95F868);
    v52 = v32;
    v53 = v109;
    sub_1DA82A798(v31 + v38[468], v39);

    v54 = v113;
    (v113)(v39, 0, 1, v32);
    v55 = v106;
  }

  else
  {
    v96 = v25;
    v97 = v22;
    v98 = v9;
    (v26)(v22, 1, 1, v9);
    v56 = objc_autoreleasePoolPush();
    v57 = objc_allocWithZone(MEMORY[0x1E69635F8]);

    v58 = v112;
    v59 = v110;
    if (v112)
    {
      v60 = sub_1DA8BF5BC();
    }

    else
    {
      v60 = sub_1DA8BF4E0(v103, a2, 0);
    }

    v39 = v105;
    if (v59)
    {
      v105 = v56;
      if (qword_1EE110D50 != -1)
      {
        swift_once();
      }

      v61 = sub_1DA9405A4();
      __swift_project_value_buffer(v61, qword_1EE110D60);
      v62 = v102;

      v63 = v59;
      v64 = sub_1DA940584();
      v65 = sub_1DA940F14();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v67 = v115;
        *v66 = 136446723;
        if (v58)
        {
          v68 = 0x2965746F6D657228;
        }

        else
        {
          v68 = 0x296C61636F6C28;
        }

        if (v58)
        {
          v69 = 0xE800000000000000;
        }

        else
        {
          v69 = 0xE700000000000000;
        }

        v70 = sub_1DA7AE6E8(v68, v69, &v115);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2081;
        *(v66 + 14) = sub_1DA7AE6E8(v103, v62, &v115);
        *(v66 + 22) = 2112;
        v71 = v59;
        v72 = _swift_stdlib_bridgeErrorToNSError();
        *(v66 + 24) = v72;
        v73 = v110;
        *v110 = v72;
        _os_log_impl(&dword_1DA7A9000, v64, v65, "Unable to find %{public}s record for %{private}s: %@", v66, 0x20u);
        sub_1DA7BA120(v73, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v73, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v67, -1, -1);
        MEMORY[0x1E12739F0](v66, -1, -1);
      }

      else
      {
      }

      v110 = 0;
      v56 = v105;
      v55 = v106;
      v76 = v97;
    }

    else
    {
      v74 = v58;
      v110 = 0;
      v75 = v60;
      sub_1DA8BDD28(v75, v74 & 1, v19);

      v76 = v97;
      sub_1DA8C01AC(v19, v97);
      v55 = v106;
    }

    v77 = v96;
    objc_autoreleasePoolPop(v56);
    sub_1DA7BA120(v39, &qword_1ECBD6640, qword_1DA95F868);
    sub_1DA8C00B0(v76, v77);
    sub_1DA8C00B0(v77, v39);
    v52 = v98;
    v53 = v109;
    v54 = v113;
  }

  sub_1DA8C0120(v39, v55);
  if ((*(v107 + 48))(v55, 1, v52) == 1)
  {
    sub_1DA7BA120(v39, &qword_1ECBD6640, qword_1DA95F868);

    sub_1DA7BA120(v55, &qword_1ECBD6640, qword_1DA95F868);
    return (v54)(v108, 1, 1, v52);
  }

  else
  {
    sub_1DA8B9950(v55, v53);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v80 = v53[7];
      v81 = *(Strong + 72);
      MEMORY[0x1EEE9AC00](Strong);
      v82 = v102;
      *(&v96 - 2) = v103;
      *(&v96 - 1) = v82;
      sub_1DA8304A0(v80);

      os_unfair_lock_lock(v81 + 6);
      sub_1DA8C0190(&v81[4], &v115);
      os_unfair_lock_unlock(v81 + 6);

      if (v80 == 4)
      {
        if (v115 == 5)
        {
          v83 = 4;
        }

        else
        {
          v83 = v115;
        }
      }

      else
      {
        sub_1DA8305BC(v115);
        v83 = v80;
      }

      v84 = v53[7];
      sub_1DA8304A0(v80);
      sub_1DA8304A0(v83);
      sub_1DA830524(v84);
      v53[7] = v83;
      v54 = v113;
      if ((v99 & 1) != 0 && v83 != 4)
      {
        v115 = v83;
        v117[0] = 2;
        if (!_s21UserNotificationsCore18NotificationSourceV5StateO2eeoiySbAE_AEtFZ_0(&v115, v117))
        {
          if (qword_1EE110D50 != -1)
          {
            swift_once();
          }

          v85 = sub_1DA9405A4();
          __swift_project_value_buffer(v85, qword_1EE110D60);
          sub_1DA8304B0(v83);
          v86 = sub_1DA940584();
          v87 = sub_1DA940EF4();
          sub_1DA830524(v83);
          if (os_log_type_enabled(v86, v87))
          {
            v98 = v52;
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v112 = v89;
            *v88 = 136446210;
            v115 = 0x64656C6261736964;
            v116 = 0xE900000000000028;
            v117[0] = v89;
            if (v83 == 3)
            {
              v90 = 0;
              v91 = 0xE000000000000000;
            }

            else
            {
              v114 = v83;
              sub_1DA8304A0(v83);
              v90 = NotificationSource.State.OverrideReason.description.getter();
              v91 = v92;
            }

            MEMORY[0x1E1271BD0](v90, v91);

            MEMORY[0x1E1271BD0](41, 0xE100000000000000);
            sub_1DA830524(v83);
            v93 = sub_1DA7AE6E8(v115, v116, v117);

            *(v88 + 4) = v93;
            _os_log_impl(&dword_1DA7A9000, v86, v87, "Overriding state from %{public}s to enabled...", v88, 0xCu);
            v94 = v112;
            __swift_destroy_boxed_opaque_existential_1(v112);
            MEMORY[0x1E12739F0](v94, -1, -1);
            MEMORY[0x1E12739F0](v88, -1, -1);

            v52 = v98;
            v53 = v109;
          }

          else
          {
          }

          sub_1DA830524(v53[7]);
          v53[7] = 4;
          sub_1DA82F3C4(v53);
          v54 = v113;
        }
      }

      v115 = v80;
      v117[0] = v53[7];
      sub_1DA8304A0(v117[0]);
      _s21UserNotificationsCore18NotificationSourceV5StateO2eeoiySbAE_AEtFZ_0(&v115, v117);

      sub_1DA830524(v83);
      sub_1DA830524(v117[0]);
      sub_1DA7BA120(v39, &qword_1ECBD6640, qword_1DA95F868);
      sub_1DA830524(v80);
    }

    else
    {
      sub_1DA7BA120(v39, &qword_1ECBD6640, qword_1DA95F868);
    }

    v95 = v108;
    sub_1DA82A798(v53, v108);
    (v54)(v95, 0, 1, v52);
    return sub_1DA82A7FC(v53);
  }
}

void *sub_1DA8BC56C(uint64_t a1, int a2)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v19 = type metadata accessor for NotificationSource();
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = (a1 + 40);
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    v14 = *(v12 - 1);
    v15 = *v12;

    sub_1DA8BB950(v14, v15, v20 & 1, 0, v6);

    if ((*(v7 + 48))(v6, 1, v19) == 1)
    {
      sub_1DA7BA120(v6, &qword_1ECBD6640, qword_1DA95F868);
    }

    else
    {
      sub_1DA8B9950(v6, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DA885D48(0, v13[2] + 1, 1, v13);
      }

      v17 = v13[2];
      v16 = v13[3];
      if (v17 >= v16 >> 1)
      {
        v13 = sub_1DA885D48(v16 > 1, v17 + 1, 1, v13);
      }

      v13[2] = v17 + 1;
      sub_1DA8B9950(v10, v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17);
    }

    v12 += 2;
    --v11;
  }

  while (v11);
  return v13;
}

uint64_t sub_1DA8BC7AC(uint64_t (*a1)(char *), uint64_t a2)
{
  if (a1)
  {
    v4 = *(v2 + 48);

    [v4 lock];
    v6 = sub_1DA8BAEAC();
    [v4 unlock];
    v7 = sub_1DA8BA580(a1, a2, v6);
    sub_1DA7B5220(a1);
    return v7;
  }

  else
  {
    v9 = *(v2 + 48);
    [v9 lock];
    v10 = sub_1DA8BAEAC();
    [v9 unlock];
    return v10;
  }
}

id sub_1DA8BC8F4()
{
  [*(*(v0 + 56) + OBJC_IVAR____TtC21UserNotificationsCore35NotificationSourceMonitorLSObserver_workspace) removeObserver_];
  [*(v0 + 72) removeAllObjects];
  v1 = *(v0 + 48);
  [v1 lock];
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor);
  sub_1DA93FB74();

  swift_getKeyPath();
  sub_1DA93FB94();

  v2 = *(v0 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];

  swift_getKeyPath();
  sub_1DA93FB84();

  swift_getKeyPath();
  sub_1DA93FB74();

  swift_getKeyPath();
  sub_1DA93FB94();

  v4 = *(v0 + 40);
  *(v0 + 40) = v3;

  swift_getKeyPath();
  sub_1DA93FB84();

  return [v1 unlock];
}

unint64_t sub_1DA8BCB40(unint64_t result, uint64_t a2)
{
  v2 = result;
  if (result >> 62)
  {
    result = sub_1DA941264();
    v3 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = *(v17 + 72);
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E1272460](v4, v2);
    }

    else
    {
      v6 = *(v2 + 8 * v4 + 32);
    }

    ++v4;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    type metadata accessor for NotificationSourceMonitor.SourceKey();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    *(v9 + 32) = 1;

    [v5 removeObjectForKey_];
  }

  while (v3 != v4);
LABEL_10:
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = *(v17 + 72);
    type metadata accessor for NotificationSourceMonitor.SourceKey();
    v12 = (a2 + 40);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v13;
      *(v15 + 32) = 1;

      [v11 removeObjectForKey_];

      v12 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1DA8BCCD0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8BCD08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(v3 + 24);
  if (v4 || (v5 = sub_1DA941684(), v6 = 0, (v5 & 1) != 0))
  {
    v6 = *(v2 + 32) ^ *(v3 + 32) ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1DA8BCD64()
{
  sub_1DA82A7FC(v0 + OBJC_IVAR____TtCC21UserNotificationsCore25NotificationSourceMonitor13SourceWrapper_source);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8BCE28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, size_t *a3@<X8>)
{
  v107 = a2;
  v100 = a3;
  v116[5] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v106 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v93 - v9;
  MEMORY[0x1EEE9AC00](v8);
  isUniquelyReferenced_nonNull_native = &v93 - v11;
  v108 = type metadata accessor for NotificationSource();
  v13 = *(v108 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v108);
  v94 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v93 - v17;
  v113 = *a1;
  v18 = *(v113 + 16);
  if (qword_1EE110D50 != -1)
  {
LABEL_40:
    swift_once();
  }

  v19 = sub_1DA9405A4();
  v104 = __swift_project_value_buffer(v19, qword_1EE110D60);
  v20 = sub_1DA940584();
  v21 = sub_1DA940F34();
  v22 = os_log_type_enabled(v20, v21);
  v111 = isUniquelyReferenced_nonNull_native;
  if (v22)
  {
    isUniquelyReferenced_nonNull_native = swift_slowAlloc();
    *isUniquelyReferenced_nonNull_native = 134349056;
    *(isUniquelyReferenced_nonNull_native + 4) = v18;
    _os_log_impl(&dword_1DA7A9000, v20, v21, "Fetching records for %{public}ld replicated sources.", isUniquelyReferenced_nonNull_native, 0xCu);
    MEMORY[0x1E12739F0](isUniquelyReferenced_nonNull_native, -1, -1);
  }

  v23 = sub_1DA8499A8(MEMORY[0x1E69E7CC0]);
  v101 = v13;
  v102 = v23;
  v24 = v113 + 64;
  v25 = 1 << *(v113 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v113 + 64);
  v28 = (v25 + 63) >> 6;
  v109 = (v13 + 48);
  v110 = (v13 + 56);

  v29 = 0;
  *&v30 = 136446723;
  v99 = v30;
  v13 = v108;
  v105 = v24;
  while (1)
  {
    v31 = v29;
    if (!v27)
    {
      break;
    }

LABEL_11:
    v32 = __clz(__rbit64(v27)) | (v29 << 6);
    v33 = (*(v113 + 48) + 16 * v32);
    v34 = *v33;
    v18 = v33[1];
    v35 = *(*(v113 + 56) + 8 * v32);
    (*v110)(v10, 1, 1, v13);

    v115 = v35;
    sub_1DA8304A0(v35);
    v114 = objc_autoreleasePoolPush();
    v36 = objc_allocWithZone(MEMORY[0x1E69635F8]);
    v112 = v34;
    v37 = sub_1DA940A04();
    v116[0] = 0;
    v38 = [v36 initWithRemotePlaceholderBundleIdentifier:v37 error:v116];

    if (v38)
    {
      v39 = v116[0];
      isUniquelyReferenced_nonNull_native = v38;
      v40 = v28;
      v41 = v18;
      v42 = v13;
      v43 = v10;
      v44 = v106;
      sub_1DA8BDD28(isUniquelyReferenced_nonNull_native, 1, v106);

      sub_1DA7BA120(v43, &qword_1ECBD6640, qword_1DA95F868);
      v45 = v44;
      v10 = v43;
      v13 = v42;
      v18 = v41;
      v28 = v40;
      v24 = v105;
      sub_1DA8C00B0(v45, v10);
    }

    else
    {
      v46 = v116[0];
      v47 = sub_1DA93F8C4();

      swift_willThrow();
      v103 = 0;

      v48 = v47;
      v49 = sub_1DA940584();
      isUniquelyReferenced_nonNull_native = sub_1DA940F14();

      if (os_log_type_enabled(v49, isUniquelyReferenced_nonNull_native))
      {
        v50 = swift_slowAlloc();
        v98 = v10;
        v51 = v50;
        v52 = swift_slowAlloc();
        v96 = v49;
        v53 = v52;
        v97 = swift_slowAlloc();
        v116[0] = v97;
        *v51 = v99;
        *(v51 + 4) = sub_1DA7AE6E8(0x2965746F6D657228, 0xE800000000000000, v116);
        *(v51 + 12) = 2081;
        *(v51 + 14) = sub_1DA7AE6E8(v112, v18, v116);
        *(v51 + 22) = 2112;
        v54 = v47;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 24) = v55;
        *v53 = v55;
        v56 = isUniquelyReferenced_nonNull_native;
        isUniquelyReferenced_nonNull_native = v96;
        _os_log_impl(&dword_1DA7A9000, v96, v56, "Unable to find %{public}s record for %{private}s: %@", v51, 0x20u);
        sub_1DA7BA120(v53, &unk_1ECBD5430, &unk_1DA959190);
        MEMORY[0x1E12739F0](v53, -1, -1);
        v57 = v97;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v57, -1, -1);
        v58 = v51;
        v10 = v98;
        MEMORY[0x1E12739F0](v58, -1, -1);
      }

      else
      {
      }

      v13 = v108;
    }

    v27 &= v27 - 1;
    objc_autoreleasePoolPop(v114);
    v59 = v111;
    sub_1DA8C00B0(v10, v111);
    if ((*v109)(v59, 1, v13) == 1)
    {
      sub_1DA830524(v115);

      sub_1DA7BA120(v59, &qword_1ECBD6640, qword_1DA95F868);
    }

    else
    {
      v60 = v59;
      v61 = v95;
      sub_1DA8B9950(v60, v95);
      if (v115 != 4)
      {
        v62 = *(v61 + 56);
        v63 = v115;
        sub_1DA8304B0(v115);
        sub_1DA830524(v62);
        v61 = v95;
        *(v95 + 56) = v63;
      }

      sub_1DA82A798(v61, v94);
      v64 = v102;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116[0] = v64;
      v65 = sub_1DA85A4B4(v112, v18);
      v67 = v64[2];
      v68 = (v66 & 1) == 0;
      v69 = __OFADD__(v67, v68);
      v70 = v67 + v68;
      if (v69)
      {
        goto LABEL_42;
      }

      v71 = v66;
      if (v64[3] < v70)
      {
        sub_1DA85DF0C(v70, isUniquelyReferenced_nonNull_native);
        v65 = sub_1DA85A4B4(v112, v18);
        if ((v71 & 1) != (v72 & 1))
        {
          result = sub_1DA9416E4();
          __break(1u);
          return result;
        }

LABEL_26:
        if (v71)
        {
          goto LABEL_27;
        }

        goto LABEL_29;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = v65;
      sub_1DA861960();
      v65 = isUniquelyReferenced_nonNull_native;
      if (v71)
      {
LABEL_27:
        v73 = v65;

        v102 = v116[0];
        sub_1DA8C06C4(v94, *(v116[0] + 7) + *(v101 + 72) * v73);
        sub_1DA830524(v115);
        goto LABEL_31;
      }

LABEL_29:
      v74 = v116[0];
      *(v116[0] + (v65 >> 6) + 8) |= 1 << v65;
      v75 = (v74[6] + 16 * v65);
      *v75 = v112;
      v75[1] = v18;
      sub_1DA8B9950(v94, v74[7] + *(v101 + 72) * v65);
      sub_1DA830524(v115);
      v76 = v74[2];
      v69 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v69)
      {
        goto LABEL_43;
      }

      v102 = v74;
      v74[2] = v77;
LABEL_31:
      v13 = v108;
      sub_1DA82A7FC(v95);
    }
  }

  while (1)
  {
    v29 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v29 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v29);
    ++v31;
    if (v27)
    {
      goto LABEL_11;
    }
  }

  v78 = sub_1DA940584();
  v79 = sub_1DA940F04();
  if (!os_log_type_enabled(v78, v79))
  {

    v87 = v101;
    v82 = v102;
    v88 = v102[2];
    if (!v88)
    {
      goto LABEL_37;
    }

LABEL_34:
    v89 = sub_1DA8BF70C(v88, 0);
    v90 = sub_1DA8BF9E4(v116, v89 + ((*(v87 + 80) + 32) & ~*(v87 + 80)), v88, v82);

    sub_1DA830720();
    if (v90 == v88)
    {

      goto LABEL_38;
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  v80 = swift_slowAlloc();
  v81 = swift_slowAlloc();
  v116[0] = v81;
  *v80 = 134349315;
  v82 = v102;
  *(v80 + 4) = v102[2];
  *(v80 + 12) = 2081;

  v83 = sub_1DA940984();
  v85 = v84;

  v86 = sub_1DA7AE6E8(v83, v85, v116);

  *(v80 + 14) = v86;
  _os_log_impl(&dword_1DA7A9000, v78, v79, "%{public}ld Remote sources: %{private}s", v80, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v81);
  MEMORY[0x1E12739F0](v81, -1, -1);
  MEMORY[0x1E12739F0](v80, -1, -1);

  v87 = v101;
  v88 = v82[2];
  if (v88)
  {
    goto LABEL_34;
  }

LABEL_37:

  v89 = MEMORY[0x1E69E7CC0];
LABEL_38:
  *v100 = v89;
  v91 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DA8BD858(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1DA941404();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1DA7AD270(i, v6);
    sub_1DA7AF3EC(0, &unk_1EE110C20, 0x1E69635E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1DA9413E4();
    v4 = *(v7 + 16);
    sub_1DA941414();
    sub_1DA941424();
    sub_1DA9413F4();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

unint64_t sub_1DA8BD994(unint64_t result)
{
  if (result)
  {
    result = sub_1DA8BD858(result);
    if (result)
    {
      if (result >> 62)
      {
        if (sub_1DA941264())
        {
LABEL_5:
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v2 = Strong;
            MEMORY[0x1EEE9AC00](Strong);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AF0, qword_1DA95DAE0);
            sub_1DA940FE4();
          }
        }
      }

      else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1DA8BDAB8@<X0>(unint64_t a1@<X1>, BOOL *a2@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v6 = result;
  if (result)
  {
    sub_1DA8C0250(a1, result, v5);
    result = swift_unknownObjectRelease();
  }

  *a2 = v6 == 0;
  return result;
}

uint64_t sub_1DA8BDB3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_1DA940BE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

id sub_1DA8BDC60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSourceMonitorLSObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA8BDD28@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  LOBYTE(v5) = a2;
  v125[3] = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v119 = &v108 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v118 = &v108 - v15;
  v16 = type metadata accessor for NotificationSource();
  v123 = *(v16 - 8);
  v17 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 bundleIdentifier];
  if (v20)
  {
    v117 = v19;
    v124 = v16;
    v21 = v20;
    v120 = sub_1DA940A14();
    v23 = v22;

    if (qword_1EE110D50 != -1)
    {
      goto LABEL_57;
    }

    while (1)
    {
      v24 = sub_1DA9405A4();
      v25 = __swift_project_value_buffer(v24, qword_1EE110D60);

      v121 = v25;
      v26 = sub_1DA940584();
      v27 = sub_1DA940F04();

      v28 = os_log_type_enabled(v26, v27);
      v122 = v23;
      v114 = v12;
      v115 = v4;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v125[0] = v30;
        *v29 = 136446467;
        if (v5)
        {
          v31 = 0x2965746F6D657228;
        }

        else
        {
          v31 = 0x296C61636F6C28;
        }

        if (v5)
        {
          v32 = 0xE800000000000000;
        }

        else
        {
          v32 = 0xE700000000000000;
        }

        v33 = sub_1DA7AE6E8(v31, v32, v125);

        *(v29 + 4) = v33;
        v23 = v122;
        *(v29 + 12) = 2081;
        *(v29 + 14) = sub_1DA7AE6E8(v120, v23, v125);
        _os_log_impl(&dword_1DA7A9000, v26, v27, "Evaluating %{public}s %{private}s...", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v30, -1, -1);
        MEMORY[0x1E12739F0](v29, -1, -1);
      }

      v34 = v124;
      if ((v5 & 1) == 0 && ([a1 unc_isEligibleToDeliverNotifications] & 1) == 0)
      {
        break;
      }

      v35 = [a1 teamIdentifier];
      v116 = a3;
      if (v35)
      {
        v36 = v35;
        v37 = sub_1DA940A14();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v44 = [a1 localizedName];
      v4 = sub_1DA940A14();
      v46 = v45;

      v47 = [a1 URL];
      v48 = *(v34 + 36);
      v49 = v34;
      v12 = v117;
      sub_1DA93F914();

      a3 = *(v49 + 40);
      *&v12[a3] = MEMORY[0x1E69E7CD0];
      *v12 = v37;
      *(v12 + 1) = v39;
      *(v12 + 2) = v120;
      *(v12 + 3) = v23;
      *(v12 + 4) = v4;
      *(v12 + 5) = v46;
      v12[48] = v5 & 1;
      *(v12 + 7) = 4;
      v50 = [a1 equivalentBundleIdentifiers];
      if (v50)
      {
        v51 = v50;
        v52 = sub_1DA940BE4();

        v53 = sub_1DA8AD06C(v52);

        *&v12[a3] = v53;
      }

      if ((v5 & 1) == 0)
      {

LABEL_49:
        v93 = sub_1DA940584();
        v94 = sub_1DA940EF4();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v125[0] = v96;
          *v95 = 136380675;
          swift_beginAccess();
          v97 = NotificationSource.description.getter();
          v99 = sub_1DA7AE6E8(v97, v98, v125);

          *(v95 + 4) = v99;
          _os_log_impl(&dword_1DA7A9000, v93, v94, "Got source: %{private}s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v96);
          MEMORY[0x1E12739F0](v96, -1, -1);
          MEMORY[0x1E12739F0](v95, -1, -1);
        }

        v100 = v116;
        swift_beginAccess();
        sub_1DA82A798(v12, v100);
        (*(v123 + 56))(v100, 0, 1, v124);
        result = sub_1DA82A7FC(v12);
        v101 = *MEMORY[0x1E69E9840];
        return result;
      }

      if (([a1 isPlaceholder] & 1) == 0)
      {
        v85 = v122;

        v86 = sub_1DA940584();
        v87 = sub_1DA940F14();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v125[0] = v89;
          *v88 = 136380675;
          v90 = sub_1DA7AE6E8(v120, v85, v125);

          *(v88 + 4) = v90;
          _os_log_impl(&dword_1DA7A9000, v86, v87, "Got regular record for remote placeholder request for %{private}s.", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v89);
          MEMORY[0x1E12739F0](v89, -1, -1);
          MEMORY[0x1E12739F0](v88, -1, -1);
        }

        else
        {
        }

LABEL_48:
        sub_1DA830524(*(v12 + 7));
        *(v12 + 7) = 2;
        goto LABEL_49;
      }

      v54 = sub_1DA899C30();
      v56 = 0;
      v108 = 0;
      v23 = v54 + 56;
      v57 = *(v54 + 56);
      v113 = v54;
      v58 = 1 << *(v54 + 32);
      v59 = -1;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      v5 = v59 & v57;
      v109 = (v58 + 63) >> 6;
      v112 = (v123 + 56);
      v111 = (v123 + 48);
      *&v55 = 136380931;
      v110 = v55;
      while (v5)
      {
LABEL_32:
        v65 = (*(v113 + 48) + ((v56 << 10) | (16 * __clz(__rbit64(v5)))));
        v67 = *v65;
        v66 = v65[1];
        v68 = v122;

        v69 = sub_1DA940584();
        v70 = sub_1DA940F04();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = v67;
          v73 = swift_slowAlloc();
          v125[0] = v73;
          *v71 = v110;
          *(v71 + 4) = sub_1DA7AE6E8(v120, v68, v125);
          *(v71 + 12) = 2081;
          *(v71 + 14) = sub_1DA7AE6E8(v72, v66, v125);
          _os_log_impl(&dword_1DA7A9000, v69, v70, "Checking for local equivalent for remote source %{private}s: %{private}s", v71, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v73, -1, -1);
          MEMORY[0x1E12739F0](v71, -1, -1);
        }

        v12 = v119;
        (*v112)(v119, 1, 1, v124);
        a3 = objc_autoreleasePoolPush();
        v74 = objc_allocWithZone(MEMORY[0x1E69635F8]);
        v75 = sub_1DA940A04();

        v125[0] = 0;
        v76 = [v74 initWithBundleIdentifier:v75 allowPlaceholder:0 error:v125];

        if (v76)
        {
          v77 = v125[0];
          v78 = v76;
          a1 = v114;
          sub_1DA8BDD28();

          v4 = &qword_1ECBD6640;
          sub_1DA7BA120(v12, &qword_1ECBD6640, qword_1DA95F868);
          sub_1DA8C00B0(a1, v12);
        }

        else
        {
          v60 = v125[0];
          v61 = sub_1DA93F8C4();

          a1 = v61;
          swift_willThrow();

          v108 = 0;
          v4 = &qword_1ECBD6640;
        }

        v5 &= v5 - 1;
        objc_autoreleasePoolPop(a3);
        v62 = v118;
        sub_1DA8C00B0(v12, v118);
        v63 = (*v111)(v62, 1, v124);
        sub_1DA7BA120(v62, &qword_1ECBD6640, qword_1DA95F868);
        if (v63 != 1)
        {
          v102 = v122;

          v103 = sub_1DA940584();
          v104 = sub_1DA940EF4();

          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v125[0] = v106;
            *v105 = 136380675;
            v107 = sub_1DA7AE6E8(v120, v102, v125);

            *(v105 + 4) = v107;
            _os_log_impl(&dword_1DA7A9000, v103, v104, "Found local equivalent for remote source %{private}s", v105, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v106);
            MEMORY[0x1E12739F0](v106, -1, -1);
            MEMORY[0x1E12739F0](v105, -1, -1);
          }

          else
          {
          }

          v12 = v117;
          goto LABEL_48;
        }
      }

      while (1)
      {
        v64 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if (v64 >= v109)
        {

          v12 = v117;
          goto LABEL_49;
        }

        v5 = *(v23 + 8 * v64);
        ++v56;
        if (v5)
        {
          v56 = v64;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_57:
      swift_once();
    }

    v79 = sub_1DA940584();
    v80 = sub_1DA940F14();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v125[0] = v82;
      *v81 = 136380675;
      v83 = v34;
      v84 = sub_1DA7AE6E8(v120, v23, v125);

      *(v81 + 4) = v84;
      v34 = v83;
      _os_log_impl(&dword_1DA7A9000, v79, v80, "Not eligible: %{private}s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x1E12739F0](v82, -1, -1);
      MEMORY[0x1E12739F0](v81, -1, -1);
    }

    else
    {
    }

    v40 = *(v123 + 56);
    v91 = *MEMORY[0x1E69E9840];
    v42 = a3;
    v43 = v34;
  }

  else
  {
    v40 = *(v123 + 56);
    v41 = *MEMORY[0x1E69E9840];
    v42 = a3;
    v43 = v16;
  }

  return v40(v42, 1, 1, v43);
}

void sub_1DA8BE9D8(void *a1, uint64_t a2, size_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for NotificationSource();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v17 = objc_autoreleasePoolPush();
  sub_1DA8BDD28(a1, 0, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1DA7BA120(v8, &qword_1ECBD6640, qword_1DA95F868);
  }

  else
  {
    sub_1DA8B9950(v8, v16);
    sub_1DA82A798(v16, v14);
    v18 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_1DA885D48(0, v18[2] + 1, 1, v18);
      *a3 = v18;
    }

    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      *a3 = sub_1DA885D48(v20 > 1, v21 + 1, 1, v18);
    }

    sub_1DA82A7FC(v16);
    v22 = *a3;
    v22[2] = v21 + 1;
    sub_1DA8B9950(v14, v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21);
  }

  objc_autoreleasePoolPop(v17);
}

void sub_1DA8BEC1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_1DA8BEC68(uint64_t a1)
{
  v2 = type metadata accessor for NotificationSource();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DA82AB10(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_1DA82A798(v9, v6);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1DA82AB10((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = &protocol witness table for NotificationSource;
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v15);
      sub_1DA82A798(v6, boxed_opaque_existential_2);
      *(v8 + 16) = v12 + 1;
      sub_1DA7B9FAC(&v15, v8 + 40 * v12 + 32);
      sub_1DA82A7FC(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

unint64_t sub_1DA8BEDFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6320, &unk_1DA95F3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA958370;
  strcpy((inited + 32), "localSources");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor);
  sub_1DA93FB74();

  v2 = *(*(v0 + 32) + 16);
  v3 = MEMORY[0x1E69E6530];
  v4 = MEMORY[0x1E69E6590];
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 80) = v4;
  *(inited + 48) = v2;
  strcpy((inited + 88), "remoteSources");
  *(inited + 102) = -4864;
  swift_getKeyPath();
  sub_1DA93FB74();

  v5 = *(*(v0 + 40) + 16);
  *(inited + 128) = v3;
  *(inited + 136) = v4;
  *(inited + 104) = v5;
  v6 = sub_1DA849274(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6550, &qword_1DA95F8F0);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_1DA8BEFD0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1DA8C07A0(&qword_1EE112120, type metadata accessor for NotificationSourceMonitor);
  sub_1DA93FB74();

  v2 = *(v1 + 40);

  v4 = sub_1DA8BEC68(v3);

  return v4;
}

uint64_t NotificationSource.stateCaptureTitle.getter()
{
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  MEMORY[0x1E1271BD0](58, 0xE100000000000000);
  if (*(v0 + 48))
  {
    v1 = 0x65746F6D6572;
  }

  else
  {
    v1 = 0x6C61636F6CLL;
  }

  if (*(v0 + 48))
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](v1, v2);

  return v4;
}

unint64_t NotificationSource.captureState()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6320, &unk_1DA95F3D0);
  inited = swift_initStackObject();
  v2 = inited;
  *(inited + 16) = xmmword_1DA95CAF0;
  *(inited + 32) = 1835099508;
  *(inited + 40) = 0xE400000000000000;
  v3 = v0[1];
  v4 = MEMORY[0x1E69E6158];
  v5 = MEMORY[0x1E69E61C8];
  if (v3)
  {
    v6 = *v0;
    v7 = MEMORY[0x1E69E61C8];
    v8 = MEMORY[0x1E69E6158];
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v7 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v6;
  *(inited + 56) = v3;
  *(inited + 72) = v8;
  *(inited + 80) = v7;
  *(inited + 88) = 1701667182;
  *(inited + 96) = 0xE400000000000000;
  v9 = v0[4];
  v10 = v0[5];
  *(inited + 128) = v4;
  *(inited + 136) = v5;
  *(inited + 104) = v9;
  *(inited + 112) = v10;
  *(inited + 144) = 0x6574617473;
  *(inited + 152) = 0xE500000000000000;
  v11 = v0[7];
  *(inited + 184) = &type metadata for NotificationSource.State;
  v12 = sub_1DA8BF364();
  v2[20] = v11;
  v2[24] = v12;
  v2[25] = 0x656C617669757165;
  v2[26] = 0xEB0000000073746ELL;

  sub_1DA8304A0(v11);
  sub_1DA899C30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60F8, &qword_1DA95DFE8);
  sub_1DA7AD11C(&qword_1EE110C70, &qword_1ECBD60F8, &qword_1DA95DFE8);
  sub_1DA8282D0();
  v13 = sub_1DA940B64();
  v15 = v14;

  v2[30] = v4;
  v2[31] = v5;
  v2[27] = v13;
  v2[28] = v15;
  v16 = sub_1DA849274(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6550, &qword_1DA95F8F0);
  swift_arrayDestroy();
  return v16;
}

unint64_t sub_1DA8BF364()
{
  result = qword_1ECBD6540;
  if (!qword_1ECBD6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6540);
  }

  return result;
}

uint64_t sub_1DA8BF3B8()
{
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  MEMORY[0x1E1271BD0](58, 0xE100000000000000);
  if (*(v0 + 48))
  {
    v1 = 0x65746F6D6572;
  }

  else
  {
    v1 = 0x6C61636F6CLL;
  }

  if (*(v0 + 48))
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E1271BD0](v1, v2);

  return v4;
}

uint64_t sub_1DA8BF45C()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110D60);
  __swift_project_value_buffer(v0, qword_1EE110D60);
  return sub_1DA940594();
}

id sub_1DA8BF4E0(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DA940A04();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1DA93F8C4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

id sub_1DA8BF5BC()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1DA940A04();

  v7[0] = 0;
  v2 = [v0 initWithRemotePlaceholderBundleIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1DA93F8C4();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

void *sub_1DA8BF688(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
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

size_t sub_1DA8BF70C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4ED8, &unk_1DA95FBD0);
  v4 = *(type metadata accessor for NotificationSource() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DA8BF808(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6648, &unk_1DA95FBE0);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1DA8BF88C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1DA8BF9E4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for NotificationSource();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = *(v33 + 72);
      sub_1DA82A798(v26 + v27 * (v25 | (v20 << 6)), v12);
      sub_1DA8B9950(v12, v15);
      sub_1DA8B9950(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1DA8BFC0C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DA8BFD60(uint64_t a1)
{
  v8[3] = type metadata accessor for NotificationSourceMonitor(0);
  v8[4] = &off_1F5636A58;
  v8[0] = a1;
  v2 = qword_1EE113010;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_1EE113018;
  v5 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_1DA84A760(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1DA8BFEAC()
{
  result = sub_1DA93FBB4();
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

uint64_t sub_1DA8BFFFC()
{
  result = type metadata accessor for NotificationSource();
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

uint64_t sub_1DA8C00B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8C0120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8C01AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6640, qword_1DA95F868);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

void sub_1DA8C0250(unint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a1;
  if (a1 >> 62)
  {
    v4 = sub_1DA941264();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = &selRef_bulletinGroupingSetting;
    a3.n128_u64[0] = 136380675;
    v26 = a3;
    v27 = v3 & 0xC000000000000001;
    v28 = v3;
    do
    {
      if (v6)
      {
        v8 = MEMORY[0x1E1272460](v5, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = [v8 v7[71]];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 bundleIdentifier];
        if (v12)
        {
          v13 = v12;
          v14 = sub_1DA940A14();
          v16 = v15;

          if (qword_1EE110D50 != -1)
          {
            swift_once();
          }

          v17 = v4;
          v18 = sub_1DA9405A4();
          __swift_project_value_buffer(v18, qword_1EE110D60);

          v19 = sub_1DA940584();
          v20 = sub_1DA940EF4();

          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v30 = v22;
            *v21 = v26.n128_u32[0];
            *(v21 + 4) = sub_1DA7AE6E8(v14, v16, &v30);
            _os_log_impl(&dword_1DA7A9000, v19, v20, "Dropping any cached sources for %{private}s", v21, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v22);
            MEMORY[0x1E12739F0](v22, -1, -1);
            MEMORY[0x1E12739F0](v21, -1, -1);
          }

          type metadata accessor for NotificationSourceMonitor.SourceKey();
          v23 = swift_allocObject();
          *(v23 + 16) = v14;
          *(v23 + 24) = v16;
          *(v23 + 32) = 1;
          v24 = *(a2 + 72);

          [v24 removeObjectForKey_];

          v25 = swift_allocObject();
          *(v25 + 16) = v14;
          *(v25 + 24) = v16;
          *(v25 + 32) = 0;
          [v24 removeObjectForKey_];

          v4 = v17;
          v6 = v27;
          v3 = v28;
          v7 = &selRef_bulletinGroupingSetting;
        }

        else
        {
        }
      }

      ++v5;
    }

    while (v4 != v5);
  }
}

void sub_1DA8C0530(uint64_t a1)
{
  if (qword_1EE110D50 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1EE110D60);
  sub_1DA7AD270(a1, v13);
  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136380675;
    sub_1DA7AD270(v13, v11);
    v7 = sub_1DA940A74();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v13);
    v10 = sub_1DA7AE6E8(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Cache is evicting %{private}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12739F0](v6, -1, -1);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_1DA8C06C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSource();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA8C0728()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t sub_1DA8C0764()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_1DA8C07A0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1DA8C0800@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 56);
  [v4 lock];
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v5 = *(v3 + 64);

  result = [v4 unlock];
  *a2 = v5;
  return result;
}

id sub_1DA8C08DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 56);
  [v4 lock];
  sub_1DA8C0AE4(v2, v3, v2);

  return [v4 unlock];
}

uint64_t sub_1DA8C0974()
{
  v1 = *(v0 + 56);
  [v1 lock];
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v2 = *(v0 + 64);

  [v1 unlock];
  return v2;
}

id sub_1DA8C0A44(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 56);
  [v4 lock];
  sub_1DA8C0AE4(a1, v2, a1);

  return [v4 unlock];
}

uint64_t sub_1DA8C0AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v67 = a2;
  v4 = type metadata accessor for NotificationSource();
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v62 = &v61 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v61 - v11;
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v64 = OBJC_IVAR____TtC21UserNotificationsCore28NotificationSettingsProvider___observationRegistrar;
  v16 = (v13 + 63) >> 6;

  v18 = 0;
  v19 = 0;
  v66 = a1;
  while (v15)
  {
LABEL_12:
    v23 = v63;
    sub_1DA82A798(*(a1 + 48) + *(v65 + 72) * (__clz(__rbit64(v15)) | (v19 << 6)), v63);
    sub_1DA8B9950(v23, v8);
    swift_getKeyPath();
    v24 = v67;
    v68 = v67;
    sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
    sub_1DA93FB74();

    v25 = *(v24 + 64);
    if (*(v25 + 16))
    {

      v26 = sub_1DA85A894(v8);
      if (v27)
      {
        v28 = *(*(v25 + 56) + 8 * v26);
        v29 = v28;
      }

      else
      {
        v28 = 0;
      }

      v30 = v66;

      if (!*(v30 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v28 = 0;
      v30 = v66;
      if (!*(v66 + 16))
      {
        goto LABEL_23;
      }
    }

    v31 = sub_1DA85A894(v8);
    if (v32)
    {
      v33 = *(*(v30 + 56) + 8 * v31);
      v34 = v33;
      if (!v28)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

LABEL_23:
    v33 = 0;
    if (!v28)
    {
LABEL_21:
      if (!v33)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

LABEL_24:
    if (v33)
    {
      sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
      v35 = sub_1DA941114();

      if (v35)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }

    v33 = v28;
LABEL_28:

LABEL_29:
    sub_1DA8C194C();
    v37 = v36;
    v38 = v66;
    if (*(v66 + 16) && (v39 = sub_1DA85A894(v8), (v40 & 1) != 0))
    {
      v20 = *(*(v38 + 56) + 8 * v39);
      v41 = v20;
    }

    else
    {
      v20 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v37 + 16))(v20, *(v8 + 2), *(v8 + 3), ObjectType, v37);
    swift_unknownObjectRelease();

    v18 = 1;
LABEL_6:
    v15 &= v15 - 1;
    result = sub_1DA82A7FC(v8);
    a1 = v66;
  }

  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v22 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v22);
    ++v19;
    if (v15)
    {
      v19 = v22;
      goto LABEL_12;
    }
  }

  swift_getKeyPath();
  v42 = v67;
  v68 = v67;
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v43 = *(v42 + 64);

  v45 = sub_1DA8A6FF4(v44);

  v47 = sub_1DA8A6FF4(v46);
  if (*(v47 + 16) <= *(v45 + 16) >> 3)
  {
    v68 = v45;
    sub_1DA8C4C10(v47);

    v48 = v68;
  }

  else
  {
    v48 = sub_1DA8C534C(v47, v45);
  }

  v49 = v62;
  v50 = 0;
  v51 = 1 << *(v48 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & *(v48 + 56);
  for (i = (v51 + 63) >> 6; v53; v18 = 1)
  {
    v55 = v50;
LABEL_43:
    v56 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    sub_1DA82A798(*(v48 + 48) + *(v65 + 72) * (v56 | (v55 << 6)), v49);
    sub_1DA8C194C();
    v58 = v57;
    v59 = swift_getObjectType();
    (*(v58 + 16))(0, *(v49 + 16), *(v49 + 24), v59, v58);
    swift_unknownObjectRelease();
    result = sub_1DA82A7FC(v49);
  }

  while (1)
  {
    v55 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v55 >= i)
    {

      if (v18)
      {

        return sub_1DA8C17F8(v60);
      }

      return result;
    }

    v53 = *(v48 + 56 + 8 * v55);
    ++v50;
    if (v53)
    {
      v50 = v55;
      goto LABEL_43;
    }
  }

LABEL_49:
  __break(1u);
  return result;
}

id (*sub_1DA8C104C(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 56);
  a1[2] = v1;
  a1[3] = v3;
  [v3 lock];
  swift_getKeyPath();
  a1[1] = v1;
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v4 = *(v1 + 64);

  [v3 unlock];
  *a1 = v4;
  return sub_1DA8C1144;
}

id sub_1DA8C1144(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (a2)
  {
    v5 = *a1;

    [v3 lock];
    sub_1DA8C0AE4(v2, v4, v2);

    [v3 unlock];
  }

  else
  {
    [*(a1 + 24) lock];
    sub_1DA8C0AE4(v2, v4, v2);

    return [v3 unlock];
  }
}

id sub_1DA8C1254(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 56);
  [v4 lock];
  sub_1DA8C14B8(v2, v3);

  return [v4 unlock];
}

id sub_1DA8C12E8()
{
  v1 = *(v0 + 56);
  [v1 lock];
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v2 = *(v0 + 72);
  if (v2)
  {
    v3 = *(v0 + 72);
  }

  else
  {
    sub_1DA8C194C();
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(ObjectType, v5);
    swift_unknownObjectRelease();
    v3 = v7;
    sub_1DA8C1CC8(v7);
    v2 = 0;
  }

  v8 = v2;
  [v1 unlock];
  return v3;
}

void sub_1DA8C1420(void *a1)
{
  v2 = v1[7];
  [v2 lock];
  sub_1DA8C14B8(a1, v1);
  [v2 unlock];
}

void sub_1DA8C14B8(void *a1, void *a2)
{
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v4 = a2[9];
  if (!v4 || (sub_1DA7AF3EC(0, &qword_1ECBD66F0, 0x1E69DF288), v5 = a1, v6 = v4, v7 = sub_1DA941114(), v5, v6, (v7 & 1) == 0))
  {
    v8 = a1;
    sub_1DA8C1CC8(a1);
    v9 = v8;
    v10 = sub_1DA8C194C();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 16))(v9, ObjectType, v16);
    v18 = a2[3];
    a2[3] = v10;
    a2[4] = v12;
    a2[5] = v14;
    a2[6] = v16;
    swift_unknownObjectRelease();
  }
}

void (*sub_1DA8C1628(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1DA8C12E8();
  return sub_1DA8C1670;
}

void sub_1DA8C1670(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = v3[7];
  v7 = v2;
  if (a2)
  {
    v6 = v2;
    [v5 lock];
    sub_1DA8C14B8(v6, v3);
    [v5 unlock];
  }

  else
  {
    [v5 lock];
    sub_1DA8C14B8(v7, v3);
    [v5 unlock];
  }
}

uint64_t NotificationSettingsProvider.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_1DA8C7200(a1, a2);
  sub_1DA7B5220(a1);
  return v7;
}

uint64_t NotificationSettingsProvider.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DA8C7200(a1, a2);
  sub_1DA7B5220(a1);
  return v3;
}

uint64_t sub_1DA8C17F8(uint64_t a1)
{
  v3 = *(v1 + 64);

  sub_1DA8C4520(v4, a1);
  v6 = v5;

  if (v6)
  {
    v7 = *(v1 + 64);
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
    sub_1DA93FB64();
  }
}

uint64_t sub_1DA8C194C()
{
  v1 = v0;
  v2 = v0[3];
  if (v2)
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v2;
    v6 = v1[4];
  }

  else
  {
    type metadata accessor for XPCSettingsProvider();
    swift_allocObject();
    v5 = XPCSettingsProvider.init()();
    v7 = v0[3];
    v0[3] = v5;
    v0[4] = &protocol witness table for XPCSettingsProvider;
    v0[5] = &protocol witness table for XPCSettingsProvider;
    v0[6] = &off_1F56381E0;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

uint64_t sub_1DA8C19F8()
{
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v1 = *(v0 + 64);
}

uint64_t sub_1DA8C1A9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
  sub_1DA93FB74();

  *a2 = *(v3 + 64);
}

void *sub_1DA8C1B68()
{
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

id sub_1DA8C1C10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
  sub_1DA93FB74();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_1DA8C1CC8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
    sub_1DA93FB64();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1DA7AF3EC(0, &qword_1ECBD66F0, 0x1E69DF288);
  v5 = v4;
  v6 = a1;
  v7 = sub_1DA941114();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 72);
LABEL_8:
  *(v2 + 72) = a1;
}

id sub_1DA8C1E58()
{
  v1 = v0;
  v47 = type metadata accessor for NotificationSource();
  v50 = *(v47 - 8);
  v2 = *(v50 + 64);
  v3 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v46 - v5;
  v7 = *(v0 + 80);
  if (v7)
  {
    v8 = *(v0 + 88);

    v9 = sub_1DA8C194C();
    v11 = v10;
    ObjectType = swift_getObjectType();
    v49 = v9;
    v52 = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v8;
    v13 = *(v11 + 8);

    v14 = 0;
    v20 = v13(sub_1DA8C79A0, v12, ObjectType, v11);
    v46 = 0;
    swift_unknownObjectRelease();
    sub_1DA7B5220(v7);

    v1 = v0;
  }

  else
  {
    v15 = sub_1DA8C194C();
    v17 = v16;
    v18 = swift_getObjectType();
    v52 = v15;
    v19 = v17;
    v14 = 0;
    v20 = sub_1DA8E787C(0, 0, v18, v19);
    v46 = 0;
    swift_unknownObjectRelease();
  }

  v21 = sub_1DA849B90(MEMORY[0x1E69E7CC0]);
  v22 = *(v1 + 16);
  *(v1 + 16) = v20;

  v49 = *(v20 + 16);
  if (v49)
  {
    v23 = 0;
    ObjectType = v20 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    while (1)
    {
      if (v23 >= *(v20 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        sub_1DA9416E4();
        __break(1u);
LABEL_27:

        result = [v22 unlock];
        __break(1u);
        return result;
      }

      v14 = *(v50 + 72);
      sub_1DA82A798(ObjectType + v14 * v23, v6);
      sub_1DA8C194C();
      v26 = v25;
      v27 = swift_getObjectType();
      v22 = (*(v26 + 8))(*(v6 + 2), *(v6 + 3), v27, v26);
      swift_unknownObjectRelease();
      if (v22)
      {
        break;
      }

LABEL_8:
      ++v23;
      sub_1DA82A7FC(v6);
      if (v49 == v23)
      {
        goto LABEL_21;
      }
    }

    v28 = v20;
    v29 = v1;
    v30 = v51;
    sub_1DA82A798(v6, v51);
    v31 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v21;
    v22 = v21;
    v33 = sub_1DA85A894(v30);
    v35 = v21[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_24;
    }

    v39 = v34;
    if (v21[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = v33;
        sub_1DA86199C();
        v33 = v44;
        v21 = v52;
        if ((v39 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_6;
      }
    }

    else
    {
      sub_1DA85DF48(v38, isUniquelyReferenced_nonNull_native);
      v22 = v52;
      v33 = sub_1DA85A894(v51);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_26;
      }
    }

    v21 = v52;
    if ((v39 & 1) == 0)
    {
LABEL_17:
      v21[(v33 >> 6) + 8] |= 1 << v33;
      v41 = v21[6] + v33 * v14;
      v22 = v33;
      v14 = v51;
      sub_1DA82A798(v51, v41);
      *(v21[7] + 8 * v22) = v31;

      sub_1DA82A7FC(v14);
      v42 = v21[2];
      v37 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v37)
      {
        goto LABEL_25;
      }

      v21[2] = v43;
      goto LABEL_7;
    }

LABEL_6:
    v24 = v21[7];
    v22 = *(v24 + 8 * v33);
    *(v24 + 8 * v33) = v31;

    sub_1DA82A7FC(v51);
LABEL_7:
    v1 = v29;
    v20 = v28;
    goto LABEL_8;
  }

LABEL_21:

  v22 = *(v1 + 56);
  [v22 lock];
  v14 = v46;
  sub_1DA8C0AE4(v21, v1, v21);
  if (v14)
  {
    goto LABEL_27;
  }

  return [v22 unlock];
}

uint64_t NotificationSettingsProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = *(v0 + 64);

  v4 = *(v0 + 88);
  sub_1DA7B5220(*(v0 + 80));
  v5 = OBJC_IVAR____TtC21UserNotificationsCore28NotificationSettingsProvider___observationRegistrar;
  v6 = sub_1DA93FBB4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t NotificationSettingsProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = *(v0 + 64);

  v4 = *(v0 + 88);
  sub_1DA7B5220(*(v0 + 80));
  v5 = OBJC_IVAR____TtC21UserNotificationsCore28NotificationSettingsProvider___observationRegistrar;
  v6 = sub_1DA93FBB4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t NotificationSettingsProvider.Monitor.settingsProvider.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t static NotificationSettingsProvider.Monitor.all()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NotificationSettingsProvider(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DA8C7200(0, 0);
  *a1 = result;
  return result;
}

uint64_t static NotificationSettingsProvider.Monitor.allMatching(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  v6 = type metadata accessor for NotificationSettingsProvider(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = sub_1DA8C7200(a1, a2);

  *a3 = v9;
  return result;
}

uint64_t sub_1DA8C2580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
  v5 = *(v4 - 8);
  v18[1] = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v19 = v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66C8, &qword_1DA95FE50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v18 - v11;
  if (a2)
  {
    v13 = *(a2 + 56);
    [v13 lock];
    swift_getKeyPath();
    v20 = a2;
    sub_1DA8C72F0(&qword_1ECBD6670, type metadata accessor for NotificationSettingsProvider);
    sub_1DA93FB74();

    v14 = *(a2 + 64);

    [v13 unlock];
    v20 = sub_1DA859FC4(v14);
    sub_1DA940D54();
    (*(v8 + 8))(v12, v7);
    sub_1DA8C2854(v14, a2, a1);

    v15 = v19;
    (*(v5 + 16))(v19, a1, v4);
    v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v17 = swift_allocObject();
    (*(v5 + 32))(v17 + v16, v15, v4);
    return sub_1DA940D44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8C2854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66C8, &qword_1DA95FE50);
  v99 = *(v101 - 8);
  v6 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v98 = v95 - v7;
  v8 = type metadata accessor for NotificationSource();
  v106 = *(v8 - 1);
  v9 = *(v106 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v107 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v103 = v95 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v95 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v105 = v95 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v104 = v95 - v19;
  type metadata accessor for NotificationSettingsProvider.Monitor.Tracking();
  inited = swift_initStackObject();
  v21 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = sub_1DA849B90(MEMORY[0x1E69E7CC0]);
  v22 = sub_1DA849B90(v21);
  *(inited + 16) = a1;
  *(inited + 24) = v22;

  v110 = a2;
  v108 = a2;
  v109 = a3;
  v100 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D0, &qword_1DA95FE58);
  sub_1DA93FB54();
  v23 = v111;
  *(inited + 24) = v111;

  sub_1DA8C4520(a1, v23);
  LOBYTE(v21) = v24;

  if (v21)
  {
  }

  v96 = v16;
  v97 = inited;
  v95[1] = v8;
  v25 = sub_1DA849D74(MEMORY[0x1E69E7CC0]);
  v26 = 1 << *(v23 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v23 + 64);
  v29 = (v26 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v30 = 0;
  v31 = v105;
  if (v28)
  {
    while (1)
    {
LABEL_12:
      v33 = *(v23 + 48);
      v102 = *(v106 + 72);
      v34 = v104;
      sub_1DA82A798(v33 + v102 * (__clz(__rbit64(v28)) | (v30 << 6)), v104);
      sub_1DA8B9950(v34, v31);
      if (*(a1 + 16))
      {

        v35 = sub_1DA85A894(v31);
        if (v36)
        {
          v37 = *(*(a1 + 56) + 8 * v35);
          v38 = v37;
        }

        else
        {
          v37 = 0;
        }

        if (!*(v23 + 16))
        {
LABEL_16:
          v39 = 0;
          goto LABEL_23;
        }
      }

      else
      {
        v37 = 0;
        if (!*(v23 + 16))
        {
          goto LABEL_16;
        }
      }

      v40 = sub_1DA85A894(v31);
      if (v41)
      {
        v39 = *(*(v23 + 56) + 8 * v40);
        v42 = v39;
      }

      else
      {
        v39 = 0;
      }

LABEL_23:
      v28 &= v28 - 1;
      if (!v37)
      {
        if (v39)
        {
          goto LABEL_28;
        }

        goto LABEL_7;
      }

      if (!v39)
      {
        v39 = v37;
LABEL_28:

        goto LABEL_29;
      }

      sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
      v43 = sub_1DA941114();

      if (v43)
      {
LABEL_7:
        v31 = v105;
        sub_1DA82A7FC(v105);
        if (!v28)
        {
          goto LABEL_8;
        }
      }

      else
      {
LABEL_29:
        v44 = v105;
        sub_1DA82A798(v105, v96);
        if (*(v23 + 16))
        {

          v45 = sub_1DA85A894(v44);
          if (v46)
          {
            v95[0] = *(*(v23 + 56) + 8 * v45);
            v47 = v95[0];
          }

          else
          {
            v95[0] = 0;
          }
        }

        else
        {
          v95[0] = 0;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = v25;
        v49 = sub_1DA85A894(v96);
        v51 = v25[2];
        v52 = (v50 & 1) == 0;
        v53 = __OFADD__(v51, v52);
        v54 = v51 + v52;
        if (v53)
        {
          goto LABEL_76;
        }

        v55 = v50;
        if (v25[3] < v54)
        {
          sub_1DA85E308(v54, isUniquelyReferenced_nonNull_native);
          v49 = sub_1DA85A894(v96);
          if ((v55 & 1) != (v56 & 1))
          {
            goto LABEL_78;
          }

LABEL_40:
          v25 = v111;
          if (v55)
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_40;
        }

        v59 = v49;
        sub_1DA861BE4();
        v49 = v59;
        v25 = v111;
        if (v55)
        {
LABEL_41:
          v57 = v25[7];
          v58 = *(v57 + 8 * v49);
          *(v57 + 8 * v49) = v95[0];

          sub_1DA82A7FC(v96);
          goto LABEL_7;
        }

LABEL_43:
        v25[(v49 >> 6) + 8] |= 1 << v49;
        v60 = v49;
        v61 = v96;
        sub_1DA82A798(v96, v25[6] + v49 * v102);
        *(v25[7] + 8 * v60) = v95[0];
        sub_1DA82A7FC(v61);
        v31 = v105;
        sub_1DA82A7FC(v105);
        v62 = v25[2];
        v53 = __OFADD__(v62, 1);
        v63 = v62 + 1;
        if (v53)
        {
          goto LABEL_77;
        }

        v25[2] = v63;
        if (!v28)
        {
          goto LABEL_8;
        }
      }
    }
  }

  while (1)
  {
LABEL_8:
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v32 >= v29)
    {
      break;
    }

    v28 = *(v23 + 64 + 8 * v32);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_12;
    }
  }

  v65 = sub_1DA8A6FF4(v64);
  v66 = sub_1DA8A6FF4(v23);
  if (*(v66 + 16) <= *(v65 + 16) >> 3)
  {
    v111 = v65;
    sub_1DA8C4C10(v66);

    v67 = v111;
  }

  else
  {
    v67 = sub_1DA8C534C(v66, v65);
  }

  v68 = 0;
  v69 = 1 << *(v67 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v67 + 56);
  v72 = (v69 + 63) >> 6;
  if (v71)
  {
    goto LABEL_54;
  }

LABEL_55:
  while (1)
  {
    v75 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v75 >= v72)
    {

      if (v25[2])
      {
        v111 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD66D8, &unk_1DA95FE60);
        v93 = v98;
        sub_1DA940D54();

        return (*(v99 + 8))(v93, v101);
      }
    }

    v71 = *(v67 + 56 + 8 * v75);
    ++v68;
    if (v71)
    {
      while (1)
      {
        v76 = *(v106 + 72);
        v77 = v103;
        sub_1DA82A798(*(v67 + 48) + v76 * (__clz(__rbit64(v71)) | (v75 << 6)), v103);
        v78 = v77;
        v79 = v107;
        sub_1DA8B9950(v78, v107);
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v111 = v25;
        v81 = sub_1DA85A894(v79);
        v83 = v25[2];
        v84 = (v82 & 1) == 0;
        v53 = __OFADD__(v83, v84);
        v85 = v83 + v84;
        if (v53)
        {
          goto LABEL_74;
        }

        v86 = v82;
        if (v25[3] >= v85)
        {
          if ((v80 & 1) == 0)
          {
            v92 = v81;
            sub_1DA861BE4();
            v81 = v92;
          }
        }

        else
        {
          sub_1DA85E308(v85, v80);
          v81 = sub_1DA85A894(v107);
          if ((v86 & 1) != (v87 & 1))
          {
            goto LABEL_78;
          }
        }

        v71 &= v71 - 1;
        v25 = v111;
        if (v86)
        {
          v73 = v111[7];
          v74 = *(v73 + 8 * v81);
          *(v73 + 8 * v81) = 0;

          sub_1DA82A7FC(v107);
          v68 = v75;
          if (!v71)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v111[(v81 >> 6) + 8] |= 1 << v81;
          v88 = v81;
          v89 = v107;
          sub_1DA82A798(v107, v25[6] + v81 * v76);
          *(v25[7] + 8 * v88) = 0;
          sub_1DA82A7FC(v89);
          v90 = v25[2];
          v53 = __OFADD__(v90, 1);
          v91 = v90 + 1;
          if (v53)
          {
            goto LABEL_75;
          }

          v25[2] = v91;
          v68 = v75;
          if (!v71)
          {
            goto LABEL_55;
          }
        }

LABEL_54:
        v75 = v68;
      }
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_1DA9416E4();
  __break(1u);
  return result;
}
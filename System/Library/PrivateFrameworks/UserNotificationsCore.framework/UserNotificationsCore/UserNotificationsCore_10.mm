__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DA8DAF2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DA8DAF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DA8DAFC4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1DA8DB00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DA822F48(a3, v27 - v11, &qword_1ECBD4FA0, &unk_1DA958730);
  v13 = sub_1DA940D34();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DA7BA120(v12, &qword_1ECBD4FA0, &unk_1DA958730);
  }

  else
  {
    sub_1DA940D24();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DA940C34();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DA940A94() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1DA8DB30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DA822F48(a3, v27 - v11, &qword_1ECBD4FA0, &unk_1DA958730);
  v13 = sub_1DA940D34();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DA7BA120(v12, &qword_1ECBD4FA0, &unk_1DA958730);
  }

  else
  {
    sub_1DA940D24();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DA940C34();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DA940A94() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57B0, &qword_1DA95BE30);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD57B0, &qword_1DA95BE30);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1DA8DB620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DA822F48(a3, v27 - v11, &qword_1ECBD4FA0, &unk_1DA958730);
  v13 = sub_1DA940D34();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DA7BA120(v12, &qword_1ECBD4FA0, &unk_1DA958730);
  }

  else
  {
    sub_1DA940D24();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DA940C34();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DA940A94() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AF0, qword_1DA95DAE0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DA7BA120(a3, &qword_1ECBD4FA0, &unk_1DA958730);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AF0, qword_1DA95DAE0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_1DA8DB934(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DA941224();
    sub_1DA7AF3EC(0, &qword_1EE110BD8, 0x1E69CDE28);
    sub_1DA8E5878();
    sub_1DA940EC4();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1DA941294() || (sub_1DA7AF3EC(0, &qword_1EE110BD8, 0x1E69CDE28), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_1DA830720();
      return;
    }

LABEL_17:
    v12 = [v11 idsDeviceID];
    if (v12)
    {
      v13 = v12;
      v19 = sub_1DA940A14();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DA7B6928(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_1DA7B6928((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t RemoteNotificationsProperties.Role.rawValue.getter()
{
  if (*v0)
  {
    result = 0x7265766965636572;
  }

  else
  {
    result = 0x7265646E6573;
  }

  *v0;
  return result;
}

uint64_t RemoteNotificationsProperties.__allocating_init(_:idsService:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  RemoteNotificationsProperties.init(_:idsService:)(a1, a2, a3);
  return v9;
}

UserNotificationsCore::RemoteNotificationsProperties::Role_optional __swiftcall RemoteNotificationsProperties.Role.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DA9414F4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DA8DBCC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7265766965636572;
  }

  else
  {
    v4 = 0x7265646E6573;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x7265766965636572;
  }

  else
  {
    v6 = 0x7265646E6573;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DA941684();
  }

  return v9 & 1;
}

uint64_t sub_1DA8DBD64()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8DBDE4()
{
  *v0;
  sub_1DA940AB4();
}

uint64_t sub_1DA8DBE50()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8DBECC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DA9414F4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DA8DBF2C(uint64_t *a1@<X8>)
{
  v2 = 0x7265646E6573;
  if (*v1)
  {
    v2 = 0x7265766965636572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DA8DBF68()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DF270]) init];
  v2 = *(v0 + 112);
  os_unfair_lock_lock(v2 + 4);
  sub_1DA84AA88(v3);
  os_unfair_lock_unlock(v2 + 4);
  [v1 copy];
  sub_1DA941154();

  swift_unknownObjectRelease();
  sub_1DA7AF3EC(0, &qword_1ECBD66F0, 0x1E69DF288);
  swift_dynamicCast();
  return v5;
}

id sub_1DA8DC050(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  if (*(a1 + 48) == 1)
  {
    if (sub_1DA8E4CB8(1))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return [a2 setRemoteNotificationsSetting_];
}

void sub_1DA8DC130(uint64_t a1, char a2, void *a3)
{
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  if (*(a1 + 48) == 1)
  {
    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v6 = sub_1DA9405A4();
    __swift_project_value_buffer(v6, qword_1EE110EA0);
    v7 = sub_1DA940584();
    v8 = sub_1DA940EF4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = a2 & 1;
      _os_log_impl(&dword_1DA7A9000, v7, v8, "Setting isEnabled = %{BOOL}d", v9, 8u);
      MEMORY[0x1E12739F0](v9, -1, -1);
    }

    if ([a3 remoteNotificationsSetting])
    {
      if ((sub_1DA8E4CB8(1) & 1) != (a2 & 1))
      {
        sub_1DA8DC354(a2 & 1);
        sub_1DA8E17E4();
      }
    }
  }
}

void sub_1DA8DC310(void *a1)
{
  v2 = *v1;
  sub_1DA8E55A4(a1);
}

void sub_1DA8DC354(char a1)
{
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1EE110EA0);
  v3 = sub_1DA940584();
  v4 = sub_1DA940EF4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446466;
    v7 = sub_1DA940A74();
    v9 = sub_1DA7AE6E8(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AE0, &unk_1DA960FB0);
    v10 = sub_1DA940A74();
    v12 = sub_1DA7AE6E8(v10, v11, &v16);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Setting %{public}s = %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v6, -1, -1);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  v13 = [objc_opt_self() standardUserDefaults];
  if (a1 == 2)
  {
    v14 = 0;
  }

  else
  {
    v17 = a1 & 1;
    v14 = sub_1DA9416C4();
  }

  v15 = sub_1DA940A04();
  [v13 setObject:v14 forKey:v15];

  swift_unknownObjectRelease();
}

uint64_t sub_1DA8DC598()
{
  sub_1DA941764();
  sub_1DA940AB4();
  return sub_1DA941794();
}

uint64_t sub_1DA8DC60C()
{
  sub_1DA941764();
  sub_1DA940AB4();
  return sub_1DA941794();
}

uint64_t sub_1DA8DC660@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DA9414F4();

  *a2 = v5 != 0;
  return result;
}

uint64_t RemoteNotificationsProperties.idsServiceName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void sub_1DA8DC710(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

id sub_1DA8DC768()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1DA8DC7AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1DA8DC87C()
{
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  return *(v0 + 48);
}

void sub_1DA8DC91C(char a1)
{
  if (*(v1 + 48) == (a1 & 1))
  {
    *(v1 + 48) = a1 & 1;

    sub_1DA8E17E4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
    sub_1DA93FB64();
  }
}

uint64_t sub_1DA8DCA58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_1DA8DCB28()
{
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  return *(v0 + 49);
}

uint64_t sub_1DA8DCBC8(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
    sub_1DA93FB64();
  }

  return result;
}

uint64_t sub_1DA8DCCD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  *a2 = *(v3 + 56);
}

void sub_1DA8DCD84(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_1DA8DCE54(v4);
}

uint64_t sub_1DA8DCDB0()
{
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  v1 = *(v0 + 56);
}

void sub_1DA8DCE54(uint64_t a1)
{
  v3 = *(v1 + 56);

  v5 = sub_1DA82A494(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 56);
    *(v1 + 56) = a1;

    sub_1DA8E17E4();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
    sub_1DA93FB64();
  }
}

id sub_1DA8DCFAC()
{
  v1 = sub_1DA940FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1DA940854();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = *(v0 + 80);
  if (v10)
  {
    v11 = *(v0 + 80);
  }

  else
  {
    v19 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
    v17[2] = "tifications.device-debounce";
    sub_1DA940824();
    v20 = MEMORY[0x1E69E7CC0];
    v17[1] = sub_1DA8E56DC(&qword_1EE115A60, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
    v18 = v0;
    sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
    sub_1DA9411D4();
    (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v1);
    v12 = sub_1DA941004();
    v13 = [objc_allocWithZone(MEMORY[0x1E69CDE30]) initWithQueue_];

    v14 = *(v18 + 80);
    *(v18 + 80) = v13;
    v11 = v13;

    v10 = 0;
  }

  v15 = v10;
  return v11;
}

void RemoteNotificationsProperties.init(_:idsService:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = *a1;
  *(v4 + 48) = 0;
  *(v4 + 56) = MEMORY[0x1E69E7CC0];
  v13 = type metadata accessor for RemoteNotificationsProperties.Availability();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v4 + 64) = sub_1DA857E4C();
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD53F0, &qword_1DA95AFB0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v4 + 112) = v16;
  sub_1DA93FBA4();
  *(v4 + 16) = v12;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  v17 = objc_allocWithZone(MEMORY[0x1E69A48A8]);

  v18 = sub_1DA940A04();
  v19 = [v17 initWithService_];

  if (v19)
  {

    *(v4 + 40) = v19;
    v25 = v12;
    type metadata accessor for ReplicatorManager();
    swift_allocObject();
    *(v4 + 72) = sub_1DA82C154(&v25);
    if (qword_1EE112A90 != -1)
    {
      swift_once();
    }

    sub_1DA8B3788(v20);

    v21 = sub_1DA940D34();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v22;
    sub_1DA8DB620(0, 0, v11, &unk_1DA960CB8, v23);
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for RemoteNotificationsProperties()
{
  result = qword_1EE114848;
  if (!qword_1EE114848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA8DD574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DA8DD594, 0, 0);
}

uint64_t sub_1DA8DD594()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1DA93FB54();
    if (*(v0 + 56) == 1)
    {
      sub_1DA8DD884();
    }

    else
    {
      sub_1DA8DDA10();
    }
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t RemoteNotificationsProperties.deinit()
{
  v1 = v0;
  v2 = *(v0 + 104);
  *(v0 + 104) = 0;

  if (*(v0 + 49))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
    sub_1DA93FB64();
  }

  else
  {
    *(v0 + 49) = 0;
  }

  v4 = *(v0 + 32);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 104);

  v9 = *(v0 + 112);

  v10 = OBJC_IVAR____TtC21UserNotificationsCore29RemoteNotificationsProperties___observationRegistrar;
  v11 = sub_1DA93FBB4();
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  return v1;
}

uint64_t RemoteNotificationsProperties.__deallocating_deinit()
{
  RemoteNotificationsProperties.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8DD884()
{
  v1 = v0;
  v2 = *(v0 + 64);
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability);

  sub_1DA93FB74();

  v3 = *(v2 + 16);

  if (v3 == 1)
  {
    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE110EA0);
    v6 = sub_1DA940584();
    v7 = sub_1DA940F34();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DA7A9000, v6, v7, "Resuming...", v8, 2u);
      MEMORY[0x1E12739F0](v8, -1, -1);
    }

    v9 = *(v1 + 72);
    sub_1DA82C228();
    return sub_1DA8DE108();
  }

  return result;
}

void sub_1DA8DDA10()
{
  v1 = v0;
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1EE110EA0);
  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Pausing...", v5, 2u);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }

  v6 = *(v1 + 112);
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock(v6 + 4);
  sub_1DA84AA88(v8);
  os_unfair_lock_unlock(v6 + 4);
}

void sub_1DA8DDB44(void *a1)
{
  v2 = a1[13];
  a1[13] = 0;

  v3 = a1[12];
  a1[12] = 0;

  sub_1DA8DCE54(MEMORY[0x1E69E7CC0]);
  v4 = a1[9];
  v5 = v4[5];
  v4[5] = 0;

  v6 = v4[4];
  v4[4] = 0;

  v7 = v4[10];
  v4[10] = 0;

  v8 = v4[7];
  v4[7] = 0;
}

uint64_t sub_1DA8DDBC4()
{
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v0 = sub_1DA9405A4();
  __swift_project_value_buffer(v0, qword_1EE110EA0);
  v1 = sub_1DA940584();
  v2 = sub_1DA940F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DA7A9000, v1, v2, "Got first unlock. Re-checking paired devices.", v3, 2u);
    MEMORY[0x1E12739F0](v3, -1, -1);
  }

  return sub_1DA8DD884();
}

uint64_t sub_1DA8DDCB0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE1149B8, type metadata accessor for RemoteNotificationsProperties.Availability);

  sub_1DA93FB74();

  v4 = *(v3 + 16);

  *a2 = v4;
  return result;
}

uint64_t sub_1DA8DDD74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1DA940D34();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1DA8DB00C(0, 0, v3, &unk_1DA960FF8, v6);
}

uint64_t sub_1DA8DDE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = *(MEMORY[0x1E69E86E0] + 4);
  v6 = swift_task_alloc();
  *(v4 + 48) = v6;
  *v6 = v4;
  v6[1] = sub_1DA8DDF2C;

  return MEMORY[0x1EEE6DA78]();
}

uint64_t sub_1DA8DDF2C()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA8DE028, 0, 0);
}

uint64_t sub_1DA8DE028()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DA93FB54();
    if (*(v0 + 56) == 1)
    {
      sub_1DA8DD884();
    }

    else
    {
      sub_1DA8DDA10();
    }
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DA8DE108()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v30 - v5;
  v7 = *(*(v0 + 72) + 32);
  if (v7)
  {
    v8 = qword_1EE110E98;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_1DA9405A4();
    __swift_project_value_buffer(v9, qword_1EE110EA0);
    v10 = sub_1DA940584();
    v11 = sub_1DA940F34();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DA7A9000, v10, v11, "Establishing paired device monitors.", v12, 2u);
      MEMORY[0x1E12739F0](v12, -1, -1);
    }

    swift_beginAccess();
    v13 = *(v1 + 40);
    v14 = sub_1DA8DCFAC();
    v31 = type metadata accessor for RemoteNotificationsProperties();
    v32 = &off_1F5637B28;
    v30[0] = v1;
    v15 = objc_allocWithZone(type metadata accessor for RemoteNotificationsProperties.DeviceObserver());
    v16 = v31;
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    v18 = *(*(v16 - 8) + 64);
    MEMORY[0x1EEE9AC00](v17);
    v20 = (v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;

    v23 = sub_1DA8E5150(v13, v14, v22, v15);

    __swift_destroy_boxed_opaque_existential_1(v30);
    v24 = *(v1 + 96);
    *(v1 + 96) = v23;

    if (*(v1 + 104))
    {
      v25 = *(v1 + 104);

      sub_1DA940DE4();
    }

    sub_1DA940D04();
    v26 = sub_1DA940D34();
    (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v7;
    v27[5] = v1;

    v28 = sub_1DA8DB00C(0, 0, v6, &unk_1DA960F48, v27);
    v29 = *(v1 + 104);
    *(v1 + 104) = v28;
  }

  return result;
}

uint64_t sub_1DA8DE474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1DA93FB24();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA8DE534, 0, 0);
}

uint64_t sub_1DA8DE534()
{
  v1 = v0[6];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB8, &qword_1DA960F50);
  v0[11] = v2;
  v3 = *(v2 - 8);
  v0[12] = v3;
  v4 = *(v3 + 64) + 15;
  v0[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AC0, &unk_1DA960F58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  sub_1DA93FCB4();
  sub_1DA940D84();
  (*(v6 + 8))(v8, v5);

  v9 = *(MEMORY[0x1E69E8678] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1DA8DE700;
  v11 = v0[13];
  v12 = v0[11];

  return MEMORY[0x1EEE6D9C8](v0 + 4, 0, 0, v12);
}

uint64_t sub_1DA8DE700()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA8DE7FC, 0, 0);
}

uint64_t sub_1DA8DE7FC()
{
  v1 = v0[4];
  v0[15] = v1;
  if (v1)
  {
    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v2 = sub_1DA9405A4();
    v0[16] = __swift_project_value_buffer(v2, qword_1EE110EA0);

    v3 = sub_1DA940584();
    v4 = sub_1DA940EF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = *(v1 + 16);

      _os_log_impl(&dword_1DA7A9000, v3, v4, "Replicator says it has %ld device(s).", v5, 0xCu);
      MEMORY[0x1E12739F0](v5, -1, -1);
    }

    else
    {
    }

    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_1DA8DE9E4;
    v10 = v0[7];

    return sub_1DA8DF88C();
  }

  else
  {
    v6 = v0[10];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1DA8DE9E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_1DA8DEF70;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_1DA8DEB0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DA8DEB0C()
{
  v1 = v0;
  v2 = v0[18];
  v49 = v0[19];
  v3 = *(v0[15] + 16);
  v43 = sub_1DA93FD54();
  v4 = *(v43 - 8);
  v50 = *(v4 + 64) + 15;
  v5 = swift_task_alloc();
  if (v3)
  {
    v7 = *(v4 + 16);
    v6 = v4 + 16;
    v46 = v7;
    v47 = v0 + 2;
    v8 = (*(v6 + 64) + 32) & ~*(v6 + 64);
    v41 = (v6 - 8);
    v44 = (v6 + 16);
    v48 = MEMORY[0x1E69E7CC0];
    v42 = v8;
    v9 = v43;
    v51 = v1;
    v45 = *(v6 + 56);
    do
    {
      v11 = v1[15];
      v12 = v1[9];
      v13 = v1[10];
      v14 = v51[8];
      v46(v5, v11 + v8, v9);

      sub_1DA93FD44();
      v15 = sub_1DA93FB04();
      v16 = v5;
      v18 = v17;
      v19 = v14;
      v1 = v51;
      (*(v12 + 8))(v13, v19);
      v51[2] = v15;
      v51[3] = v18;
      v20 = swift_task_alloc();
      *(v20 + 16) = v47;
      LOBYTE(v13) = sub_1DA7B36C0(sub_1DA8E5FD4, v20, v49);

      if (v13)
      {
        v21 = swift_task_alloc();
        v22 = *v44;
        (*v44)(v21, v16, v9);
        v23 = v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51[5] = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DA82AB30(0, *(v48 + 16) + 1, 1);
          v23 = v51[5];
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1DA82AB30(v25 > 1, v26 + 1, 1);
          v23 = v51[5];
        }

        *(v23 + 16) = v26 + 1;
        v48 = v23;
        v9 = v43;
        v27 = v23 + v42;
        v10 = v45;
        v22(v27 + v26 * v45, v21, v43);

        v1 = v51;
      }

      else
      {
        (*v41)(v16, v9);
        v10 = v45;
      }

      v5 = swift_task_alloc();
      v8 += v10;
      --v3;
    }

    while (v3);
    v28 = v1[15];
    v29 = v48;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = v1[7];

  v31 = *(v30 + 112);
  v32 = swift_task_alloc();
  *(v32 + 16) = v30;
  *(v32 + 24) = v29;
  v33 = swift_task_alloc();
  *(v33 + 16) = sub_1DA8E5F98;
  *(v33 + 24) = v32;
  os_unfair_lock_lock(v31 + 4);
  sub_1DA84AA88(v34);
  v35 = v31 + 4;
  if (v2)
  {
    os_unfair_lock_unlock(v35);
  }

  else
  {
    os_unfair_lock_unlock(v35);

    v37 = *(MEMORY[0x1E69E8678] + 4);
    v38 = swift_task_alloc();
    v1[14] = v38;
    *v38 = v1;
    v38[1] = sub_1DA8DE700;
    v39 = v1[13];
    v40 = v1[11];

    return MEMORY[0x1EEE6D9C8](v1 + 4, 0, 0, v40);
  }
}

uint64_t sub_1DA8DEF70()
{
  v1 = v0;
  v2 = v0[18];
  v3 = v0[16];
  v4 = v2;
  v5 = sub_1DA940584();
  v6 = sub_1DA940F14();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1DA7A9000, v5, v6, "Failed to get paired devices from Sharing. %{public}@", v9, 0xCu);
    sub_1DA7BA120(v10, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v10, -1, -1);
    MEMORY[0x1E12739F0](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0[15] + 16);
  v55 = sub_1DA93FD54();
  v14 = *(v55 - 8);
  v56 = *(v14 + 64) + 15;
  v15 = swift_task_alloc();
  if (v13)
  {
    v16 = v1;
    v18 = *(v14 + 16);
    v17 = v14 + 16;
    v52 = v18;
    v53 = v1 + 2;
    v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v50 = (v17 + 16);
    v49 = v19;
    v54 = MEMORY[0x1E69E7CC0];
    v20 = v55;
    v58 = v1;
    v51 = *(v17 + 56);
    do
    {
      v57 = v13;
      v22 = v16[9];
      v23 = v16[10];
      v24 = v58[8];
      v52(v15, v16[15] + v19, v20);
      v25 = MEMORY[0x1E69E7CC0];

      sub_1DA93FD44();
      v26 = sub_1DA93FB04();
      v27 = v15;
      v29 = v28;
      (*(v22 + 8))(v23, v24);
      v58[2] = v26;
      v58[3] = v29;
      v30 = swift_task_alloc();
      *(v30 + 16) = v53;
      LOBYTE(v23) = sub_1DA7B36C0(sub_1DA8E5FD4, v30, v25);

      if (v23)
      {
        v31 = swift_task_alloc();
        v32 = *v50;
        (*v50)(v31, v27, v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v54;
        v58[5] = v54;
        if (isUniquelyReferenced_nonNull_native)
        {
          v20 = v55;
        }

        else
        {
          sub_1DA82AB30(0, *(v54 + 16) + 1, 1);
          v20 = v55;
          v34 = v58[5];
        }

        v36 = *(v34 + 16);
        v35 = *(v34 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1DA82AB30(v35 > 1, v36 + 1, 1);
          v20 = v55;
          v34 = v58[5];
        }

        *(v34 + 16) = v36 + 1;
        v54 = v34;
        v21 = v51;
        v32(v34 + v49 + v36 * v51, v31, v20);

        v16 = v58;
      }

      else
      {
        v16 = v58;
        v20 = v55;
        (*(v17 - 8))(v27, v55);
        v21 = v51;
      }

      v15 = swift_task_alloc();
      v19 += v21;
      v13 = v57 - 1;
    }

    while (v57 != 1);
    v1 = v16;
    v37 = v16[15];
    v38 = v54;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v39 = v1[7];

  v40 = *(v39 + 112);
  v41 = swift_task_alloc();
  *(v41 + 16) = v39;
  *(v41 + 24) = v38;
  v42 = swift_task_alloc();
  *(v42 + 16) = sub_1DA8E5F98;
  *(v42 + 24) = v41;
  os_unfair_lock_lock(v40 + 4);
  sub_1DA84AA88(v43);
  os_unfair_lock_unlock(v40 + 4);

  v44 = *(MEMORY[0x1E69E8678] + 4);
  v45 = swift_task_alloc();
  v1[14] = v45;
  *v45 = v1;
  v45[1] = sub_1DA8DE700;
  v46 = v1[13];
  v47 = v1[11];

  return MEMORY[0x1EEE6D9C8](v1 + 4, 0, 0, v47);
}

void sub_1DA8DF4F4(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_assert_owner((*(v2 + 112) + 16));
  v4 = sub_1DA8E033C(a1);
  swift_getKeyPath();
  v26 = v2;
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  v5 = *(v2 + 56);

  v6 = sub_1DA82A494(v4, v5);

  if (v6)
  {

    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v7 = sub_1DA9405A4();
    __swift_project_value_buffer(v7, qword_1EE110EA0);
    v8 = sub_1DA940584();
    v9 = sub_1DA940EF4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DA7A9000, v8, v9, "No change in remote notifications devices.", v10, 2u);
      MEMORY[0x1E12739F0](v10, -1, -1);
    }
  }

  else
  {
    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA9405A4();
    __swift_project_value_buffer(v11, qword_1EE110EA0);

    v12 = sub_1DA940584();
    v13 = sub_1DA940EF4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v14 = 136380931;
      v15 = type metadata accessor for RemoteDevice();
      v16 = MEMORY[0x1E1271CD0](v4, v15);
      v18 = sub_1DA7AE6E8(v16, v17, &v26);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2081;
      swift_getKeyPath();
      sub_1DA93FB74();

      v19 = *(v2 + 56);

      v21 = MEMORY[0x1E1271CD0](v20, v15);
      v23 = v22;

      v24 = sub_1DA7AE6E8(v21, v23, &v26);

      *(v14 + 14) = v24;
      _os_log_impl(&dword_1DA7A9000, v12, v13, "Updated RemoteDevices: %{private}s; Was: %{private}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v25, -1, -1);
      MEMORY[0x1E12739F0](v14, -1, -1);
    }

    sub_1DA8DCE54(v4);
  }
}

uint64_t sub_1DA8DF88C()
{
  v4 = *MEMORY[0x1E69E9840];
  *(v1 + 160) = v0;
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DA8DF91C, 0, 0);
}

uint64_t sub_1DA8DF91C()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = v0[20];
  v2 = sub_1DA8DCFAC();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DA8DFA7C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6A90, &qword_1DA960F38);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DA8E020C;
  v0[13] = &block_descriptor_101_0;
  v0[14] = v3;
  [v2 listCandidateDevicesForType:5 completionHandler:v0 + 10];
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DA8DFA7C()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1DA8E0170;
  }

  else
  {
    v3 = sub_1DA8DFBB8;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA8DFBB8(uint64_t a1)
{
  v54 = v1;
  v53[1] = *MEMORY[0x1E69E9840];
  v3 = v1 + 144;
  v2 = *(v1 + 144);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E69E7CD0];
    v53[0] = MEMORY[0x1E69E7CD0];
    v5 = sub_1DA941224();
    v6 = sub_1DA941294();
    if (v6)
    {
      v7 = (v1 + 80);
      v8 = v6;
      sub_1DA7AF3EC(0, &qword_1EE110BD8, 0x1E69CDE28);
      v9 = v8;
      v1 = MEMORY[0x1E69E7C98];
      do
      {
        *(v3 + 8) = v9;
        swift_dynamicCast();
        v10 = [*v7 enabledAsKey];
        v11 = *v7;
        if (v10)
        {
          v12 = *(v4 + 16);
          if (*(v4 + 24) <= v12)
          {
            sub_1DA8AA8A4(v12 + 1);
            v4 = v53[0];
          }

          v13 = *(v4 + 40);
          v14 = sub_1DA941104();
          v15 = v4 + 56;
          v16 = -1 << *(v4 + 32);
          v17 = v14 & ~v16;
          v18 = v17 >> 6;
          if (((-1 << v17) & ~*(v4 + 56 + 8 * (v17 >> 6))) != 0)
          {
            v19 = __clz(__rbit64((-1 << v17) & ~*(v4 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v20 = 0;
            v21 = (63 - v16) >> 6;
            do
            {
              if (++v18 == v21 && (v20 & 1) != 0)
              {
                __break(1u);
                goto LABEL_43;
              }

              v22 = v18 == v21;
              if (v18 == v21)
              {
                v18 = 0;
              }

              v20 |= v22;
              v23 = *(v15 + 8 * v18);
            }

            while (v23 == -1);
            v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          }

          *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
          *(*(v4 + 48) + 8 * v19) = v11;
          ++*(v4 + 16);
        }

        else
        {
        }

        v9 = sub_1DA941294();
      }

      while (v9);
    }

LABEL_37:
    v1 = v52;

    sub_1DA8DB934(v4);
    v5 = v37;

    if (qword_1EE110E98 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  v24 = *(v2 + 32);
  v25 = ((1 << v24) + 63) >> 6;
  if ((v24 & 0x3Fu) > 0xD)
  {
    v49 = *(v1 + 144);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v50 = swift_slowAlloc();
      v4 = sub_1DA8E48B4(v50, v25, v2, sub_1DA8E0308);

      MEMORY[0x1E12739F0](v50, -1, -1);
      goto LABEL_37;
    }
  }

  v51 = &v51;
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v51 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v5, v26);
  v27 = 0;
  v28 = 0;
  v29 = 1 << *(v2 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v2 + 56);
  v32 = (v29 + 63) >> 6;
  while (v31)
  {
    v33 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
LABEL_32:
    v1 = v33 | (v28 << 6);
    if ([*(*(v2 + 48) + 8 * v1) enabledAsKey])
    {
      *&v5[(v1 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v1;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_36:
        v4 = sub_1DA8E46C0(v5, v25, v27, v2);
        goto LABEL_37;
      }
    }
  }

  v34 = v28;
  while (1)
  {
    v28 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v28 >= v32)
    {
      goto LABEL_36;
    }

    v35 = *(v2 + 56 + 8 * v28);
    ++v34;
    if (v35)
    {
      v33 = __clz(__rbit64(v35));
      v31 = (v35 - 1) & v35;
      goto LABEL_32;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_38:
  v38 = sub_1DA9405A4();
  __swift_project_value_buffer(v38, qword_1EE110EA0);

  v39 = sub_1DA940584();
  v40 = sub_1DA940EF4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v53[0] = v42;
    *v41 = 136380675;
    v43 = MEMORY[0x1E1271CD0](v5, MEMORY[0x1E69E6158]);
    v45 = sub_1DA7AE6E8(v43, v44, v53);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_1DA7A9000, v39, v40, "Enabled devices: %{private}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1E12739F0](v42, -1, -1);
    MEMORY[0x1E12739F0](v41, -1, -1);
  }

  v46 = *(v1 + 8);
  v47 = *MEMORY[0x1E69E9840];

  return v46(v5);
}

uint64_t sub_1DA8E0170()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];
  v5 = *MEMORY[0x1E69E9840];

  return v3();
}

uint64_t sub_1DA8E020C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6AB0, qword_1DA95D940);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1DA7AF3EC(0, &qword_1EE110BD8, 0x1E69CDE28);
    sub_1DA8E5878();
    **(*(v4 + 64) + 40) = sub_1DA940E94();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

id sub_1DA8E033C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DA93FD54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v77 = v7;
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v2;
  if (v2)
  {
    v9 = 0;
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v66 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v72 = a1 + v66;
    v73 = v11;
    v75 = *(v10 + 56);
    v67 = (v10 + 16);
    v69 = (v10 - 8);
    v76 = MEMORY[0x1E69E7CC0];
    v71 = v10;
    while (1)
    {
      v78 = v9;
      v79 = v6;
      v73(v8, v72 + v75 * v9, v3);
      v14 = sub_1DA93FD24();
      v15 = *(v14 - 8);
      v16 = *(v15 + 64);
      MEMORY[0x1EEE9AC00](v14);
      v17 = v3;
      v18 = sub_1DA93FD34();
      MEMORY[0x1EEE9AC00](v18);
      v19 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 104))(v19, *MEMORY[0x1E69C7498], v14);
      v20 = MEMORY[0x1E1270DF0](v19, v19);
      v21 = *(v15 + 8);
      v21(v19, v14);
      v21(v19, v14);
      if (v20)
      {
        break;
      }

LABEL_4:
      v12 = (*v69)(v8, v17);
      v3 = v17;
LABEL_5:
      MEMORY[0x1EEE9AC00](v12);
      v8 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v9 == v74)
      {
        goto LABEL_41;
      }
    }

    v22 = *(v68 + 16);
    v23 = sub_1DA93FCF4();
    v70 = &v66;
    v24 = *(v23 - 8);
    v25 = *(v24 + 64);
    MEMORY[0x1EEE9AC00](v23);
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
    v27 = sub_1DA93FD04();
    MEMORY[0x1EEE9AC00](v27);
    (*(v24 + 16))(&v66 - v26, &v66 - v26, v23);
    v28 = (*(v24 + 88))(&v66 - v26, v23);
    if (!MEMORY[0x1E69C7488] || v28 != *MEMORY[0x1E69C7488])
    {
      if (MEMORY[0x1E69C7458] && v28 == *MEMORY[0x1E69C7458])
      {
        v3 = 1;
        goto LABEL_26;
      }

      if (MEMORY[0x1E69C7470] && v28 == *MEMORY[0x1E69C7470])
      {
        v3 = 2;
        goto LABEL_26;
      }

      if (MEMORY[0x1E69C7468] && v28 == *MEMORY[0x1E69C7468])
      {
        v3 = 4;
        goto LABEL_26;
      }

      if (MEMORY[0x1E69C7480] && v28 == *MEMORY[0x1E69C7480])
      {
        v3 = 6;
        goto LABEL_26;
      }

      if (MEMORY[0x1E69C7450] && v28 == *MEMORY[0x1E69C7450])
      {
        v3 = 5;
        goto LABEL_26;
      }

      (*(v24 + 8))(&v66 - v26, v23);
    }

    v3 = 0;
LABEL_26:
    (*(v24 + 8))(&v66 - v26, v23);
    if (v22)
    {
      v29 = &unk_1F5631B78;
    }

    else
    {
      v29 = &unk_1F5631B50;
    }

    v30 = *v29;
    v31 = &unk_1F5631B60;
    if (v22)
    {
      v31 = &unk_1F5631B88;
    }

    v32 = v30 & ~(v30 >> 63);
    do
    {
      if (!v30)
      {

        goto LABEL_4;
      }

      if (!v32)
      {
        __break(1u);
        goto LABEL_65;
      }

      v33 = *v31++;
      --v32;
      --v30;
    }

    while (v33 != v3);

    MEMORY[0x1EEE9AC00](v34);
    v36 = &v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = *v67;
    v3 = v17;
    (*v67)(v36, v8, v17);
    v38 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DA82AB30(0, v38[2] + 1, 1);
      v38 = v83;
    }

    v41 = v38[2];
    v40 = v38[3];
    if (v41 >= v40 >> 1)
    {
      sub_1DA82AB30(v40 > 1, v41 + 1, 1);
      v38 = v83;
    }

    v38[2] = (v41 + 1);
    v76 = v38;
    v12 = v37(v38 + v66 + v41 * v75, v36, v17);
    goto LABEL_5;
  }

  v76 = MEMORY[0x1E69E7CC0];
LABEL_41:
  if (v76[2])
  {
    if (qword_1EE110E98 != -1)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v42 = sub_1DA9405A4();
      __swift_project_value_buffer(v42, qword_1EE110EA0);
      v43 = v76;

      v44 = sub_1DA940584();
      v45 = sub_1DA940F34();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v68;
      if (v46)
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v83 = v49;
        *v48 = 136380675;
        v50 = MEMORY[0x1E1271CD0](v43, v3);
        v52 = sub_1DA7AE6E8(v50, v51, &v83);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_1DA7A9000, v44, v45, "Replicator paired devices: %{private}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x1E12739F0](v49, -1, -1);
        MEMORY[0x1E12739F0](v48, -1, -1);
      }

      swift_beginAccess();
      result = [*(v47 + 40) devices];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v54 = result;
      sub_1DA7AF3EC(0, &qword_1EE110B60, 0x1E69A4848);
      v55 = sub_1DA940BE4();

      v82 = MEMORY[0x1E69E7CC0];
      if (v55 >> 62)
      {
        v56 = sub_1DA941264();
        if (!v56)
        {
LABEL_69:
          v58 = MEMORY[0x1E69E7CC0];
LABEL_70:

          return v58;
        }
      }

      else
      {
        v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v56)
        {
          goto LABEL_69;
        }
      }

      v57 = 0;
      v58 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v55 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x1E1272460](v57, v55);
        }

        else
        {
          if (v57 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v59 = *(v55 + 8 * v57 + 32);
        }

        v60 = v59;
        v3 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          break;
        }

        v81 = v59;
        sub_1DA8E0D04(&v81, v47, v76, &v80);

        if (v80)
        {
          MEMORY[0x1E1271CA0]();
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v61 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1DA940C04();
            v47 = v68;
          }

          sub_1DA940C14();
          v58 = v82;
        }

        ++v57;
        if (v3 == v56)
        {
          goto LABEL_70;
        }
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      swift_once();
    }
  }

  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v62 = sub_1DA9405A4();
  __swift_project_value_buffer(v62, qword_1EE110EA0);
  v63 = sub_1DA940584();
  v64 = sub_1DA940F34();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_1DA7A9000, v63, v64, "Replicator is not paired with any desired devices.", v65, 2u);
    MEMORY[0x1E12739F0](v65, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1DA8E0D04(id *a1@<X0>, uint64_t *a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v114 = a3;
  v111 = a4;
  v120 = sub_1DA93FB24();
  v8 = *(v120 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [*a1 uniqueID];
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = v12;
  v121 = a2;
  v112 = v8;
  sub_1DA940A14();

  v108 = sub_1DA8E562C(5);
  v109 = v14;
  v16 = v15;
  v18 = v17;

  if (qword_1EE110E98 != -1)
  {
LABEL_39:
    swift_once();
  }

  v19 = sub_1DA9405A4();
  v20 = __swift_project_value_buffer(v19, qword_1EE110EA0);

  v21 = v11;
  v22 = sub_1DA940584();
  v23 = sub_1DA940F04();

  v24 = os_log_type_enabled(v22, v23);
  v110 = v5;
  v106 = v16;
  v107 = v20;
  if (v24)
  {
    v25 = v18;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v122 = v28;
    *v26 = 136380931;

    v29 = MEMORY[0x1E1271B80](v108, v109, v16, v25);
    v30 = v21;
    v32 = v31;

    v33 = sub_1DA7AE6E8(v29, v32, &v122);
    v21 = v30;

    *(v26 + 4) = v33;
    *(v26 + 12) = 2113;
    *(v26 + 14) = v30;
    *v27 = v30;
    v34 = v30;
    _os_log_impl(&dword_1DA7A9000, v22, v23, "[%{private}s] Evaluating IDS device %{private}@", v26, 0x16u);
    sub_1DA7BA120(v27, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v5 = v111;
    MEMORY[0x1E12739F0](v28, -1, -1);
    v35 = v26;
    v18 = v25;
    MEMORY[0x1E12739F0](v35, -1, -1);
  }

  else
  {

    v5 = v111;
  }

  v16 = *(v121 + 16);
  v11 = &unk_1F5631AF0;
  v36 = [v21 deviceType];
  v37 = &unk_1F5631B28;
  if (!v16)
  {
    v37 = &unk_1F5631B00;
  }

  v38 = *v37;
  v39 = &unk_1F5631B10;
  if (v16)
  {
    v39 = &unk_1F5631B38;
  }

  v40 = v38 & ~(v38 >> 63);
  do
  {
    if (!v38)
    {

      v66 = sub_1DA940584();
      v67 = sub_1DA940F04();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v122 = v69;
        *v68 = 136380675;
        v70 = MEMORY[0x1E1271B80](v108, v109, v106, v18);
        v72 = v71;

        v73 = sub_1DA7AE6E8(v70, v72, &v122);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_1DA7A9000, v66, v67, "[%{private}s] Device not of desired type.", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x1E12739F0](v69, -1, -1);
        MEMORY[0x1E12739F0](v68, -1, -1);
      }

      else
      {
      }

      *v5 = 0;
      return;
    }

    if (!v40)
    {
      __break(1u);
      goto LABEL_39;
    }

    v41 = *v39++;
    --v40;
    --v38;
  }

  while (v41 != v36);
  v118 = v21;
  v104 = v18;

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6A88, &qword_1DA960F30);
  v103 = &v99;
  v102 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v105 = &v99 - v43;
  v44 = v114;
  v45 = v114[2];
  if (!v45)
  {
LABEL_27:
    v47 = sub_1DA93FD54();
    v74 = v105;
    (*(*(v47 - 8) + 56))(v105, 1, 1, v47);
    goto LABEL_32;
  }

  v46 = sub_1DA93FD54();
  v47 = v46;
  v48 = *(v46 - 8);
  v49 = *(v48 + 80);
  v50 = *(v48 + 16);
  v116 = v48 + 16;
  v117 = v50;
  v113 = *(v48 + 72);
  v115 = *(v48 + 64);
  v101 = (v46 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
  v51 = v44 + ((v49 + 32) & ~v49);
  v114 = (v112 + 1);
  v100 = v48;
  v112 = (v48 + 8);
  while (1)
  {
    MEMORY[0x1EEE9AC00](v46);
    v53 = &v99 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    v117(v53, v51, v47);
    v54 = v119;
    sub_1DA93FD44();
    v55 = sub_1DA93FB04();
    v57 = v56;
    (*v114)(v54, v120);
    v58 = [v118 uniqueID];
    if (!v58)
    {

      goto LABEL_17;
    }

    v59 = v58;
    v121 = &v99;
    v60 = v47;
    v61 = sub_1DA940A14();
    v63 = v62;

    if (v55 == v61 && v57 == v63)
    {
      break;
    }

    v65 = sub_1DA941684();

    v47 = v60;
    if (v65)
    {
      goto LABEL_31;
    }

LABEL_17:
    v46 = (*v112)(v53, v47);
    v51 += v113;
    v45 = (v45 - 1);
    if (!v45)
    {
      goto LABEL_27;
    }
  }

  v47 = v60;
LABEL_31:
  v75 = v100;
  v74 = v105;
  (*(v100 + 32))(v105, v53, v47);
  (*(v75 + 56))(v74, 0, 1, v47);
LABEL_32:
  v76 = sub_1DA93FD54();
  v121 = &v99;
  v77 = *(v47 - 8);
  v78 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v79 = MEMORY[0x1EEE9AC00](v76);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v99 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA822F48(v74, v81, &qword_1ECBD6A88, &qword_1DA960F30);
  v82 = (*(v77 + 48))(v81, 1, v47);
  v83 = v111;
  if (v82 == 1)
  {
    v84 = v111;
    sub_1DA7BA120(v81, &qword_1ECBD6A88, &qword_1DA960F30);
    v85 = v104;

    v86 = sub_1DA940584();
    v87 = sub_1DA940F04();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v122 = v89;
      *v88 = 136380675;
      v90 = MEMORY[0x1E1271B80](v108, v109, v106, v85);
      v92 = v91;

      v93 = sub_1DA7AE6E8(v90, v92, &v122);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_1DA7A9000, v86, v87, "[%{private}s] Device does not match any replicator paired devices.", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      MEMORY[0x1E12739F0](v89, -1, -1);
      MEMORY[0x1E12739F0](v88, -1, -1);
    }

    else
    {
    }

    sub_1DA7BA120(v105, &qword_1ECBD6A88, &qword_1DA960F30);
    *v84 = 0;
  }

  else
  {

    v94 = (*(v77 + 32))(&v99 - v78, v81, v47);
    MEMORY[0x1EEE9AC00](v94);
    (*(v77 + 16))(&v99 - v78, &v99 - v78, v47);
    v95 = type metadata accessor for RemoteDevice();
    v96 = *(v95 + 48);
    v97 = *(v95 + 52);
    swift_allocObject();
    v98 = sub_1DA8A5D78(v118, &v99 - v78);
    (*(v77 + 8))(&v99 - v78, v47);
    sub_1DA7BA120(v74, &qword_1ECBD6A88, &qword_1DA960F30);
    *v83 = v98;
  }
}

void sub_1DA8E17E4()
{
  v1 = v0;
  os_unfair_lock_assert_owner((*(v0 + 112) + 16));
  swift_getKeyPath();
  v48 = v0;
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  v2 = *(v0 + 48);
  swift_getKeyPath();
  v48 = v0;
  sub_1DA93FB74();

  v47 = *(v0 + 49);
  swift_getKeyPath();
  sub_1DA93FB74();

  v3 = *(v0 + 56);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v9 = *(v0 + 56);
    }

    if (sub_1DA941264())
    {
      goto LABEL_12;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  v48 = v0;
  sub_1DA93FB74();

  if (*(v0 + 48) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v48 = v0;
    sub_1DA93FB64();

    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE110EA0);
    v6 = sub_1DA940584();
    v7 = sub_1DA940F34();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DA7A9000, v6, v7, "No paired devices for remote notifications. Disabling.", v8, 2u);
      MEMORY[0x1E12739F0](v8, -1, -1);
    }

    goto LABEL_21;
  }

LABEL_12:
  swift_getKeyPath();
  v48 = v0;
  sub_1DA93FB74();

  v10 = *(v0 + 56);
  if (!(v10 >> 62))
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v10 < 0)
  {
    v42 = *(v0 + 56);
  }

  if (sub_1DA941264())
  {
LABEL_14:
    swift_getKeyPath();
    v48 = v0;
    sub_1DA93FB74();

    if ((*(v0 + 48) & 1) == 0)
    {
      v11 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v11);
      v48 = v0;
      sub_1DA93FB64();

      if (qword_1EE110E98 != -1)
      {
        swift_once();
      }

      v12 = sub_1DA9405A4();
      __swift_project_value_buffer(v12, qword_1EE110EA0);

      v13 = sub_1DA940584();
      v14 = sub_1DA940F34();

      if (os_log_type_enabled(v13, v14))
      {
        v45 = v2;
        v15 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v48 = v44;
        *v15 = 136380675;
        swift_getKeyPath();
        sub_1DA93FB74();

        v16 = *(v0 + 56);
        v17 = type metadata accessor for RemoteDevice();

        v19 = MEMORY[0x1E1271CD0](v18, v17);
        v21 = v20;

        v22 = sub_1DA7AE6E8(v19, v21, &v48);

        *(v15 + 4) = v22;
        _os_log_impl(&dword_1DA7A9000, v13, v14, "Remote notifications available; %{private}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x1E12739F0](v44, -1, -1);
        v23 = v15;
        v2 = v45;
        MEMORY[0x1E12739F0](v23, -1, -1);
      }
    }
  }

LABEL_21:
  swift_getKeyPath();
  v48 = v1;
  sub_1DA93FB74();

  v24 = *(v1 + 49);
  swift_getKeyPath();
  v48 = v1;
  sub_1DA93FB74();

  if (*(v1 + 48) == 1)
  {
    if (((v24 ^ sub_1DA8E4CB8(1)) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (!v24)
  {
    goto LABEL_41;
  }

  swift_getKeyPath();
  v48 = v1;
  sub_1DA93FB74();

  if ((*(v1 + 48) & 1) == 0)
  {
    v25 = 0;
    if ((*(v1 + 49) & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    v26 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v26);
    v48 = v1;
    sub_1DA93FB64();

    goto LABEL_30;
  }

  v25 = sub_1DA8E4CB8(1);
  if ((v25 & 1) != *(v1 + 49))
  {
    goto LABEL_29;
  }

LABEL_27:
  *(v1 + 49) = v25 & 1;
LABEL_30:
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v27 = sub_1DA9405A4();
  __swift_project_value_buffer(v27, qword_1EE110EA0);

  v28 = sub_1DA940584();
  v29 = sub_1DA940F34();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v46 = v2;
    v31 = swift_slowAlloc();
    v48 = v31;
    *v30 = 136315138;
    swift_getKeyPath();
    sub_1DA93FB74();

    if (*(v1 + 49))
    {
      v32 = 0;
    }

    else
    {
      v32 = 28265;
    }

    if (*(v1 + 49))
    {
      v33 = 0xE000000000000000;
    }

    else
    {
      v33 = 0xE200000000000000;
    }

    v34 = sub_1DA7AE6E8(v32, v33, &v48);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_1DA7A9000, v28, v29, "Remote notifications are now %sactive.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v35 = v31;
    v2 = v46;
    MEMORY[0x1E12739F0](v35, -1, -1);
    MEMORY[0x1E12739F0](v30, -1, -1);
  }

LABEL_41:
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v36 = sub_1DA9405A4();
  __swift_project_value_buffer(v36, qword_1EE110EA0);
  swift_retain_n();
  v37 = sub_1DA940584();
  v38 = sub_1DA940EF4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 67110400;
    *(v39 + 4) = sub_1DA8E4CB8(1) & 1;
    *(v39 + 8) = 1024;
    *(v39 + 10) = v2;
    *(v39 + 14) = 1024;
    swift_getKeyPath();
    v48 = v1;
    sub_1DA93FB74();

    *(v39 + 16) = *(v1 + 48);

    *(v39 + 20) = 1024;
    *(v39 + 22) = v47;
    *(v39 + 26) = 1024;
    swift_getKeyPath();
    v48 = v1;
    sub_1DA93FB74();

    *(v39 + 28) = *(v1 + 49);

    *(v39 + 32) = 2048;
    swift_getKeyPath();
    v48 = v1;
    sub_1DA93FB74();

    v40 = *(v1 + 56);
    if (v40 >> 62)
    {
      if (v40 < 0)
      {
        v43 = *(v1 + 56);
      }

      v41 = sub_1DA941264();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v39 + 34) = v41;

    _os_log_impl(&dword_1DA7A9000, v37, v38, "Update: isEnabled: %{BOOL}d; isCapable: %{BOOL}d -> %{BOOL}d; isActive: %{BOOL}d -> %{BOOL}d; remoteDevices: %ld", v39, 0x2Au);
    MEMORY[0x1E12739F0](v39, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DA8E2238()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6A78, &qword_1DA960F28);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DA9407D4();
  qword_1EE11AF98 = result;
  return result;
}

void sub_1DA8E2284(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_1DA9407F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1DA940854();
  v41 = *(v43 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA9407E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_1DA940884();
  v39 = *(v44 - 8);
  v14 = *(v39 + 64);
  v15 = MEMORY[0x1EEE9AC00](v44);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = sub_1DA7B7D60();
  if (qword_1EE114BA0 != -1)
  {
    swift_once();
  }

  sub_1DA940FA4();

  if (LOBYTE(aBlock[0]) == 2 || (aBlock[0] & 1) == 0)
  {
    v25 = *(a1 + 88);
    v36 = v3;
    v37 = v4;
    LOBYTE(aBlock[0]) = 1;
    v26 = v25;
    sub_1DA940FB4();

    v35 = *(a1 + 88);
    sub_1DA940864();
    *v13 = 1;
    (*(v10 + 104))(v13, *MEMORY[0x1E69E7F48], v9);
    sub_1DA940874();
    (*(v10 + 8))(v13, v9);
    v39 = *(v39 + 8);
    (v39)(v17, v44);
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = a1;
    v28[4] = v38;
    aBlock[4] = sub_1DA8E56D0;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_87_0;
    v29 = _Block_copy(aBlock);

    v30 = v40;
    sub_1DA940824();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1DA8E56DC(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
    sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
    v31 = v42;
    v32 = v36;
    sub_1DA9411D4();
    v33 = v35;
    MEMORY[0x1E1272070](v19, v30, v31, v29);
    _Block_release(v29);

    (*(v37 + 8))(v31, v32);
    (*(v41 + 8))(v30, v43);
    (v39)(v19, v44);
  }

  else
  {
    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v21 = sub_1DA9405A4();
    __swift_project_value_buffer(v21, qword_1EE110EA0);
    v22 = sub_1DA940584();
    v23 = sub_1DA940EF4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DA7A9000, v22, v23, "Debounced device update is already queued.", v24, 2u);
      MEMORY[0x1E12739F0](v24, -1, -1);
    }
  }
}

uint64_t sub_1DA8E28A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_1DA7B7D60();
    if (qword_1EE114BA0 != -1)
    {
      swift_once();
    }

    sub_1DA940FB4();

    if (qword_1EE110E98 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1EE110EA0);
    v6 = sub_1DA940584();
    v7 = sub_1DA940F34();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DA7A9000, v6, v7, "Updating paired devices after debounce.", v8, 2u);
      MEMORY[0x1E12739F0](v8, -1, -1);
    }

    sub_1DA8E2A1C(a2);
  }

  return result;
}

uint64_t sub_1DA8E2A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_1DA9408C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = sub_1DA7B7D60();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v11 = sub_1DA9408F4();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v13 = *(a1 + 72);
    if (*(v13 + 32))
    {
      v14 = *(v13 + 32);

      v15 = sub_1DA93FCA4();
      sub_1DA940D14();
      v16 = sub_1DA940D34();
      (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = a1;
      v17[5] = v15;

      sub_1DA8DB00C(0, 0, v5, &unk_1DA960F18, v17);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8E2C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_1DA93FB24();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[9] = v9;
  *v9 = v5;
  v9[1] = sub_1DA8E2D2C;

  return sub_1DA8DF88C();
}

uint64_t sub_1DA8E2D2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1DA8E327C;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_1DA8E2E54;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DA8E2E54()
{
  v1 = v0[10];
  v2 = v0[11];
  if (sub_1DA940E04())
  {
LABEL_21:

    v34 = v0[8];

    v35 = v0[1];

    return v35();
  }

  v3 = *(v0[5] + 16);
  v39 = sub_1DA93FD54();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64) + 15;

  v6 = swift_task_alloc();
  if (v3)
  {
    v43 = (v0[7] + 8);
    v8 = *(v4 + 16);
    v7 = v4 + 16;
    v42 = v8;
    v9 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v10 = *(v7 + 56);
    v36 = (v7 - 8);
    v40 = (v7 + 16);
    v44 = MEMORY[0x1E69E7CC0];
    v37 = v9;
    v38 = v2;
    v11 = v39;
    v41 = v10;
    do
    {
      v45 = v3;
      v14 = v0[8];
      v15 = v0[6];
      v42(v6, v0[5] + v9, v11);

      sub_1DA93FD44();
      v16 = sub_1DA93FB04();
      v18 = v17;
      (*v43)(v14, v15);
      v0[2] = v16;
      v0[3] = v18;
      v19 = swift_task_alloc();
      *(v19 + 16) = v0 + 2;
      LOBYTE(v14) = sub_1DA7B36C0(sub_1DA7B378C, v19, v2);

      if (v14)
      {
        v20 = swift_task_alloc();
        v21 = *v40;
        (*v40)(v20, v6, v11);
        v22 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DA82AB30(0, *(v44 + 16) + 1, 1);
          v22 = v44;
        }

        v12 = v45;
        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1DA82AB30(v23 > 1, v24 + 1, 1);
          v22 = v44;
        }

        *(v22 + 16) = v24 + 1;
        v44 = v22;
        v25 = v22 + v37;
        v13 = v41;
        v26 = v25 + v24 * v41;
        v11 = v39;
        v21(v26, v20, v39);

        v2 = v38;
      }

      else
      {
        (*v36)(v6, v11);
        v12 = v45;
        v13 = v41;
      }

      v6 = swift_task_alloc();
      v9 += v13;
      v3 = v12 - 1;
    }

    while (v3);
    v27 = v0[5];
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1DA940E04())
  {

    goto LABEL_21;
  }

  v28 = v0[4];
  v29 = *(v28 + 112);
  v30 = swift_task_alloc();
  *(v30 + 16) = v28;
  *(v30 + 24) = v44;
  v31 = swift_task_alloc();
  *(v31 + 16) = sub_1DA8E57E4;
  *(v31 + 24) = v30;
  os_unfair_lock_lock(v29 + 4);
  sub_1DA84A760(v32);
  os_unfair_lock_unlock(v29 + 4);
  if (!v1)
  {

    goto LABEL_21;
  }
}

uint64_t sub_1DA8E327C()
{
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1EE110EA0);
  v3 = v1;
  v4 = sub_1DA940584();
  v5 = sub_1DA940F14();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  v49 = v0;
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DA7A9000, v4, v5, "Failed to get paired devices from Sharing. %{public}@", v8, 0xCu);
    sub_1DA7BA120(v9, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v8, -1, -1);

    if (sub_1DA940E04())
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (sub_1DA940E04())
    {
      goto LABEL_22;
    }
  }

  v12 = *(v0[5] + 16);
  v13 = sub_1DA93FD54();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64) + 15;

  v16 = swift_task_alloc();
  if (v12)
  {
    v53 = (v0[7] + 8);
    v54 = v0 + 2;
    v18 = *(v14 + 16);
    v17 = v14 + 16;
    v52 = v18;
    v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v46 = (v17 - 8);
    v50 = (v17 + 16);
    v47 = v19;
    v48 = v13;
    v55 = MEMORY[0x1E69E7CC0];
    v51 = *(v17 + 56);
    do
    {
      v56 = v12;
      v22 = v0[8];
      v23 = v0[6];
      v52(v16, v0[5] + v19, v13);
      v24 = v13;
      v25 = MEMORY[0x1E69E7CC0];

      sub_1DA93FD44();
      v26 = sub_1DA93FB04();
      v28 = v27;
      (*v53)(v22, v23);
      v0[2] = v26;
      v0[3] = v28;
      v29 = swift_task_alloc();
      *(v29 + 16) = v54;
      LOBYTE(v22) = sub_1DA7B36C0(sub_1DA7B378C, v29, v25);

      if (v22)
      {
        v30 = swift_task_alloc();
        v31 = *v50;
        (*v50)(v30, v16, v24);
        v32 = v55;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DA82AB30(0, *(v55 + 16) + 1, 1);
          v32 = v55;
        }

        v21 = v56;
        v34 = *(v32 + 16);
        v33 = *(v32 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1DA82AB30(v33 > 1, v34 + 1, 1);
          v32 = v55;
        }

        *(v32 + 16) = v34 + 1;
        v55 = v32;
        v35 = v32 + v47;
        v20 = v51;
        v36 = v35 + v34 * v51;
        v13 = v48;
        v31(v36, v30, v48);

        v0 = v49;
      }

      else
      {
        (*v46)(v16, v24);
        v20 = v51;
        v13 = v24;
        v21 = v56;
      }

      v16 = swift_task_alloc();
      v19 += v20;
      v12 = v21 - 1;
    }

    while (v12);
    v37 = v0[5];
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1DA940E04())
  {
  }

  else
  {
    v38 = v0[4];
    v39 = *(v38 + 112);
    v40 = swift_task_alloc();
    *(v40 + 16) = v38;
    *(v40 + 24) = v55;
    v41 = swift_task_alloc();
    *(v41 + 16) = sub_1DA8E57E4;
    *(v41 + 24) = v40;
    os_unfair_lock_lock(v39 + 4);
    sub_1DA84A760(v42);
    os_unfair_lock_unlock(v39 + 4);
  }

LABEL_22:

  v43 = v0[8];

  v44 = v0[1];

  return v44();
}

id sub_1DA8E37F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeDelegate_];
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 stopObservingForAuthenticationStateChanges];
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for RemoteNotificationsProperties.DeviceObserver();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1DA8E3914()
{
  if (qword_1EE110E98 != -1)
  {
    swift_once();
  }

  v0 = sub_1DA9405A4();
  __swift_project_value_buffer(v0, qword_1EE110EA0);
  v1 = sub_1DA940584();
  v2 = sub_1DA940F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DA7A9000, v1, v2, "Authentication state changed. Refreshing state.", v3, 2u);
    MEMORY[0x1E12739F0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1DA7BABAC(result + OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_delegate, v7);

    v6 = *__swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_1DA7B7B98();
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return result;
}

void RemoteNotificationsProperties.captureState()()
{
  v2 = *(v0 + 112);
  os_unfair_lock_lock(v2 + 4);
  sub_1DA84A0B4(&v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1DA8E3C18@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6320, &unk_1DA95F3D0);
  inited = swift_initStackObject();
  v4 = inited;
  *(inited + 32) = 1701605234;
  *(inited + 16) = xmmword_1DA960970;
  *(inited + 40) = 0xE400000000000000;
  v5 = 0x7265646E6573;
  if (*(a1 + 16))
  {
    v5 = 0x7265766965636572;
  }

  v6 = MEMORY[0x1E69E61C8];
  v7 = 0xE600000000000000;
  if (*(a1 + 16))
  {
    v7 = 0xE800000000000000;
  }

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 80) = v6;
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 88) = 0x6C62617061437369;
  *(inited + 96) = 0xE900000000000065;
  swift_getKeyPath();
  sub_1DA8E56DC(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
  sub_1DA93FB74();

  v8 = *(a1 + 48);
  v9 = MEMORY[0x1E69E6370];
  v10 = MEMORY[0x1E69E6398];
  *(v4 + 128) = MEMORY[0x1E69E6370];
  *(v4 + 136) = v10;
  *(v4 + 104) = v8;
  *(v4 + 144) = 0x656C62616E457369;
  *(v4 + 152) = 0xE900000000000064;
  v11 = sub_1DA8E4CB8(1);
  *(v4 + 184) = v9;
  *(v4 + 192) = v10;
  *(v4 + 160) = v11 & 1;
  *(v4 + 200) = 0x6576697463417369;
  *(v4 + 208) = 0xE800000000000000;
  swift_getKeyPath();
  sub_1DA93FB74();

  v12 = *(a1 + 49);
  *(v4 + 240) = v9;
  *(v4 + 248) = v10;
  *(v4 + 216) = v12;
  *(v4 + 256) = 0x73656369766564;
  *(v4 + 264) = 0xE700000000000000;
  v33 = v4;
  swift_getKeyPath();
  sub_1DA93FB74();

  v32 = a1;
  v13 = *(a1 + 56);
  if (v13 >> 62)
  {
    v31 = *(a1 + 56);
    v14 = sub_1DA941264();
    v13 = v31;
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    goto LABEL_17;
  }

  v35 = MEMORY[0x1E69E7CC0];
  v16 = v13;

  result = sub_1DA82A778(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v15 = v35;
    v19 = v16;
    v36 = v16 & 0xC000000000000001;
    v20 = v16;
    do
    {
      if (v36)
      {
        MEMORY[0x1E1272460](v18, v19);
      }

      else
      {
        v21 = *(v19 + 8 * v18 + 32);
      }

      v22 = sub_1DA8A68D8();
      v24 = v23;

      v26 = *(v35 + 16);
      v25 = *(v35 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1DA82A778((v25 > 1), v26 + 1, 1);
      }

      ++v18;
      *(v35 + 16) = v26 + 1;
      v27 = v35 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v19 = v20;
    }

    while (v14 != v18);

LABEL_17:
    *(v33 + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
    v28 = sub_1DA7AD11C(&unk_1EE110CA0, &qword_1ECBD6790, &qword_1DA9594C0);
    *(v33 + 272) = v15;
    *(v33 + 304) = v28;
    *(v33 + 312) = 0x646E65536E6163;
    *(v33 + 320) = 0xE700000000000000;
    swift_beginAccess();
    v29 = [*(v32 + 40) canSend];
    *(v33 + 352) = MEMORY[0x1E69E6370];
    *(v33 + 360) = MEMORY[0x1E69E6398];
    *(v33 + 328) = v29;
    v30 = sub_1DA849274(v33);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6550, &qword_1DA95F8F0);
    result = swift_arrayDestroy();
    *a2 = v30;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1DA8E4088()
{
  v2 = *(*v0 + 112);
  os_unfair_lock_lock(v2 + 4);
  sub_1DA84AA70(&v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1DA8E4110()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110EA0);
  __swift_project_value_buffer(v0, qword_1EE110EA0);
  return sub_1DA940594();
}

uint64_t sub_1DA8E4190(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6B00, &qword_1DA95F368);
  result = sub_1DA941334();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1DA941764();

    sub_1DA940AB4();
    result = sub_1DA941794();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DA8E43B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for NotificationSource();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AD0, &qword_1DA960F90);
  result = sub_1DA941334();
  v13 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 56;
  v40 = a2;
  v41 = result;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v42 = (v15 - 1) & v15;
LABEL_16:
    v21 = *(a4 + 48);
    v43 = *(v9 + 72);
    sub_1DA82A798(v21 + v43 * (v18 | (v16 << 6)), v12);
    v22 = v13[5];
    sub_1DA941764();
    if (*(v12 + 1))
    {
      v23 = a1;
      v24 = v9;
      v25 = a4;
      v26 = *v12;
      sub_1DA941784();
      a4 = v25;
      v9 = v24;
      a1 = v23;
      a2 = v40;
      sub_1DA940AB4();
    }

    else
    {
      sub_1DA941784();
    }

    v27 = *(v12 + 2);
    v28 = *(v12 + 3);
    sub_1DA940AB4();
    v29 = v12[48];
    sub_1DA941784();
    result = sub_1DA941794();
    v13 = v41;
    v30 = -1 << *(v41 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v17 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v17 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = sub_1DA8B9950(v12, v13[6] + v33 * v43);
    ++v13[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_35;
    }

    v15 = v42;
    if (!a3)
    {
LABEL_31:

      return v13;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      goto LABEL_31;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
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

uint64_t sub_1DA8E46C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AA0, &unk_1DA95F370);
  result = sub_1DA941334();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1DA941104();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1DA8E48B4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1DA8E4944(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1DA8E4944(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1DA8E46C0(a1, a2, v20, a3);
        return;
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

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DA8E4AB0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DA8E4BA4;

  return v6(v2 + 32);
}

uint64_t sub_1DA8E4BA4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1DA8E4CB8(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1DA940A04();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1DA941154();
    swift_unknownObjectRelease();
    sub_1DA848FE8(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7730, &qword_1DA95C370);
  v5 = swift_dynamicCast();
  v6 = v8;
  if (!v5)
  {
    v6 = a1;
  }

  return v6 & 1;
}

uint64_t sub_1DA8E4DC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7660;

  return sub_1DA8DD574(a1, v4, v5, v6);
}

unint64_t sub_1DA8E4EA8()
{
  result = qword_1ECBD69E8;
  if (!qword_1ECBD69E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD69E8);
  }

  return result;
}

uint64_t sub_1DA8E4F14()
{
  result = sub_1DA93FBB4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_1DA8E5150(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v32 = a1;
  v33 = a2;
  v31 = sub_1DA940FC4();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA940F74();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1DA940854();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v36[3] = type metadata accessor for RemoteNotificationsProperties();
  v36[4] = &off_1F5637B28;
  v36[0] = a3;
  v30 = OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_idsService;
  swift_unknownObjectWeakInit();
  v29 = OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_sharingManager;
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_queue;
  v14 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v27[0] = "v24@?0@NSSet8@NSError16";
  v27[1] = v14;
  sub_1DA940824();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DA8E56DC(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8090], v31);
  *&a4[v28] = sub_1DA941004();
  sub_1DA7BABAC(v36, &a4[OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_delegate]);
  v15 = v32;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v16 = type metadata accessor for RemoteNotificationsProperties.DeviceObserver();
  v35.receiver = a4;
  v35.super_class = v16;
  v17 = objc_msgSendSuper2(&v35, sel_init);
  v18 = *&v17[OBJC_IVAR____TtCC21UserNotificationsCore29RemoteNotificationsProperties14DeviceObserver_queue];
  v19 = v17;
  [v15 addDelegate:v19 queue:v18];
  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = v19;
  if (Strong)
  {
    v22 = Strong;
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1DA8E5A50;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7AF1D0;
    aBlock[3] = &block_descriptor_116;
    v24 = _Block_copy(aBlock);

    v25 = [v22 queue];
    [v22 startObservingForAuthenticationStateChanges:v24 queue:v25];

    _Block_release(v24);
    v21 = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(v36);
  return v19;
}

void sub_1DA8E55A4(void *a1)
{
  [a1 remoteNotificationsSetting];
  v2 = *(v1 + 112);
  os_unfair_lock_lock(v2 + 4);
  sub_1DA84AA88(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1DA8E562C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DA940AE4();

    return sub_1DA940B34();
  }

  return result;
}

uint64_t sub_1DA8E56DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA8E5724(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7470;

  return sub_1DA8E2C3C(a1, v4, v5, v7, v6);
}

void sub_1DA8E57E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_1DA8DF4F4(v1);
}

unint64_t sub_1DA8E5878()
{
  result = qword_1EE110BC8;
  if (!qword_1EE110BC8)
  {
    sub_1DA7AF3EC(255, &qword_1EE110BD8, 0x1E69CDE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110BC8);
  }

  return result;
}

uint64_t objectdestroy_89Tm(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  a1(v1[5]);

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1DA8E5938(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA7B7660;

  return sub_1DA8DE474(a1, v4, v5, v7, v6);
}

uint64_t sub_1DA8E59F8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DA941684() & 1;
  }
}

void sub_1DA8E5A74()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 56);
  *(v1 + 56) = *(v0 + 24);

  sub_1DA8E17E4();
}

uint64_t sub_1DA8E5AC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DA7B7660;

  return sub_1DA81D4C8(a1, v5);
}

uint64_t sub_1DA8E5B78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DA7B7470;

  return sub_1DA81D4C8(a1, v5);
}

uint64_t sub_1DA8E5C70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DA7B7660;

  return sub_1DA928D40(a1, v5);
}

uint64_t sub_1DA8E5D28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DA7B7660;

  return sub_1DA8E4AB0(a1, v5);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA8E5E70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7660;

  return sub_1DA8DDE98(a1, v4, v5, v6);
}

unint64_t sub_1DA8E5F38()
{
  result = qword_1ECBD6B08;
  if (!qword_1ECBD6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6B08);
  }

  return result;
}

uint64_t sub_1DA8E6020(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v8 = 0x206465766F6D6572;
    MEMORY[0x1E1271BD0]();
  }

  else
  {
    v8 = 0x5B20646E756F66;
    v3 = [a1 description];
    v4 = sub_1DA940A14();
    v6 = v5;

    MEMORY[0x1E1271BD0](v4, v6);
  }

  MEMORY[0x1E1271BD0](93, 0xE100000000000000);
  return v8;
}

uint64_t sub_1DA8E60E4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      sub_1DA822D04();
      return sub_1DA941114() & 1;
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  v4 = *a1;

  return sub_1DA941684();
}

id sub_1DA8E6198(void *a1)
{
  v1 = a1;
  v2 = [a1 domainIdentifier];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_1DA940A14();
  v6 = v5;

  if (v4 == 0xD000000000000022 && 0x80000001DA950740 == v6)
  {
  }

  else
  {
    v8 = sub_1DA941684();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_43;
    }
  }

  v10 = [v1 uniqueIdentifier];
  if (!v10)
  {
    sub_1DA940A14();
    v10 = sub_1DA940A04();
  }

  v11 = &selRef_imageDataForContentURL_;
  v12 = [v1 attributeSet];
  v13 = [v12 creator];

  if (v13)
  {
    sub_1DA940A14();
    v45 = v14;
  }

  else
  {
    v45 = 0;
  }

  v15 = [v1 attributeSet];
  v16 = [v15 threadIdentifier];

  if (v16)
  {
    v42 = sub_1DA940A14();
    v44 = v17;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v18 = [v1 attributeSet];
  v19 = [v18 providerDataTypeIdentifiers];

  v43 = v1;
  v46 = v10;
  if (v19)
  {
    v20 = sub_1DA940BE4();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v9 = *(v20 + 16);
  v21 = v20 + 40;
  v22 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v23 = v21 + 16 * v1;
  while (v9 != v1)
  {
    if (v1 >= *(v20 + 16))
    {
      __break(1u);
LABEL_48:
      v9 = sub_1DA7B6928((v23 > 1), v21, 1, v9);
LABEL_35:
      *(v9 + 2) = v21;
      v36 = &v9[16 * v11];
      *(v36 + 4) = 0xD000000000000028;
      *(v36 + 5) = 0x80000001DA955900;
      if (v45)
      {

        goto LABEL_43;
      }

      goto LABEL_38;
    }

    v1 = v1 + 1;
    v11 = v23 + 16;
    v24 = *(v23 - 8);
    v25 = *v23;

    v26 = sub_1DA93FE94();
    v28 = v27;

    v23 = v11;
    if (v28)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1DA7B6928(0, *(v22 + 2) + 1, 1, v22);
      }

      v11 = *(v22 + 2);
      v29 = *(v22 + 3);
      if (v11 >= v29 >> 1)
      {
        v22 = sub_1DA7B6928((v29 > 1), v11 + 1, 1, v22);
      }

      *(v22 + 2) = v11 + 1;
      v30 = &v22[16 * v11];
      *(v30 + 4) = v26;
      *(v30 + 5) = v28;
      goto LABEL_21;
    }
  }

  if (!*(v22 + 2))
  {

    v9 = sub_1DA7B6928(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = *(v9 + 2);
    v23 = *(v9 + 3);
    v21 = v11 + 1;
    if (v11 >= v23 >> 1)
    {
      goto LABEL_48;
    }

    goto LABEL_35;
  }

  if (v45)
  {
    v31 = [v43 attributeSet];
    v32 = [v31 summarizationContentTopLine];

    v33 = sub_1DA940A04();

    v34 = sub_1DA940BD4();

    if (v44)
    {
      v35 = sub_1DA940A04();
    }

    else
    {
      v35 = 0;
    }

    v1 = [objc_allocWithZone(UNCSummary) initWithBundleIdentifier:v33 requestIdentifiers:v34 spotlightIdentifier:v46 groupSummary:1 content:v32 threadIdentifier:v35];

    return v1;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1DA7B6928(0, *(v9 + 2) + 1, 1, v9);
  }

  v38 = *(v9 + 2);
  v37 = *(v9 + 3);
  if (v38 >= v37 >> 1)
  {
    v9 = sub_1DA7B6928((v37 > 1), v38 + 1, 1, v9);
  }

  *(v9 + 2) = v38 + 1;
  v39 = &v9[16 * v38];
  *(v39 + 4) = 0xD000000000000014;
  *(v39 + 5) = 0x80000001DA9558E0;
LABEL_43:
  sub_1DA8E670C();
  swift_allocError();
  *v40 = v9;
  swift_willThrow();
  return v1;
}

unint64_t sub_1DA8E670C()
{
  result = qword_1EE111440;
  if (!qword_1EE111440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE111440);
  }

  return result;
}

uint64_t sub_1DA8E6760@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DA960970;
  if (qword_1EE115568 != -1)
  {
    swift_once();
  }

  v3 = unk_1EE11B030;
  *(v2 + 32) = qword_1EE11B028;
  *(v2 + 40) = v3;
  v4 = qword_1EE115558;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = unk_1EE11B010;
  *(v2 + 48) = qword_1EE11B008;
  *(v2 + 56) = v5;
  v6 = qword_1EE115570;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = unk_1EE11B040;
  *(v2 + 64) = qword_1EE11B038;
  *(v2 + 72) = v7;
  v8 = qword_1EE115578;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = unk_1EE11B050;
  *(v2 + 80) = qword_1EE11B048;
  *(v2 + 88) = v9;
  v10 = qword_1EE115548;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = unk_1EE11B000;
  *(v2 + 96) = qword_1EE11AFF8;
  *(v2 + 104) = v11;
  v12 = qword_1EE115560;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = unk_1EE11B020;
  *(v2 + 112) = qword_1EE11B018;
  *(v2 + 120) = v13;
  *a1 = 1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DA8E699C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DA8E69E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1DA8E6A58()
{
  result = qword_1ECBD6B10;
  if (!qword_1ECBD6B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6B10);
  }

  return result;
}

uint64_t sub_1DA8E6AAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);

  v6 = (v3 + 40);
  v7 = -v4;
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {
      v14 = 0;
LABEL_7:

      return v14;
    }

    if (++v8 >= *(v3 + 16))
    {
      break;
    }

    v9 = v6 + 2;
    v11 = *(v6 - 1);
    v10 = *v6;
    ObjectType = swift_getObjectType();
    v13 = *(v10 + 8);
    swift_unknownObjectRetain();
    v14 = v13(a1, a2, ObjectType, v10);
    result = swift_unknownObjectRelease();
    v6 = v9;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8E6BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = *(v3 + 16);
  v8 = *(result + 16);
  if (v8)
  {
    v9 = ( + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 16);
      swift_unknownObjectRetain();
      v13(a1, a2, a3, ObjectType, v11);
      swift_unknownObjectRelease();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t sub_1DA8E6CB0()
{
  sub_1DA941364();

  swift_beginAccess();
  v1 = *(v0 + 16);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD64B0, &qword_1DA95D4E0);
  v3 = MEMORY[0x1E1271CD0](v1, v2);
  v5 = v4;

  MEMORY[0x1E1271BD0](v3, v5);

  MEMORY[0x1E1271BD0](62, 0xE100000000000000);
  return 0xD000000000000027;
}

uint64_t sub_1DA8E6DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[4] = a1;
  v5 = sub_1DA93FEC4();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_1DA9401F4();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA8E6EF0, 0, 0);
}

uint64_t sub_1DA8E6EF0()
{
  v88 = v0;
  v1 = *(v0 + 40);
  v2 = sub_1DA9401C4();
  if (v2)
  {
    v3 = v2;
    if (qword_1ECBD4780 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = sub_1DA9405A4();
    __swift_project_value_buffer(v10, qword_1ECBD6B18);
    v11 = *(v7 + 16);
    v11(v4, v9, v6);
    v85 = v11;
    v11(v5, v9, v6);

    v12 = v3;
    v13 = sub_1DA940584();
    v14 = sub_1DA940F34();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    v18 = v3;
    v20 = *(v0 + 80);
    v19 = *(v0 + 88);
    v86 = v18;
    if (v15)
    {
      v78 = *(v0 + 104);
      v21 = *(v0 + 64);
      v22 = *(v0 + 72);
      v23 = *(v0 + 56);
      v80 = *(v0 + 48);
      v83 = v14;
      v24 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v87 = v84;
      *v24 = 136315906;
      log = v13;
      sub_1DA940124();
      sub_1DA889240(&qword_1EE110EE0, MEMORY[0x1E69DF0D0]);
      v25 = sub_1DA941614();
      v79 = v12;
      v27 = v26;
      (*(v21 + 8))(v22, v23);
      v28 = *(v19 + 8);
      v28(v17, v20);
      v29 = sub_1DA7AE6E8(v25, v27, &v87);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      v30 = sub_1DA940014();
      v32 = v31;
      v28(v78, v20);
      v33 = sub_1DA7AE6E8(v30, v32, &v87);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2080;
      *(v0 + 16) = *(v80 + 16);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD64B0, &qword_1DA95D4E0);
      v34 = sub_1DA940A74();
      v36 = sub_1DA7AE6E8(v34, v35, &v87);

      *(v24 + 24) = v36;
      *(v24 + 32) = 2112;
      v12 = v79;
      *(v24 + 34) = v79;
      *v82 = v86;
      v37 = v79;
      _os_log_impl(&dword_1DA7A9000, log, v83, "Saving settings from: %s for bundleIdentifier: %s to: %s values: %@", v24, 0x2Au);
      sub_1DA828378(v82);
      MEMORY[0x1E12739F0](v82, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v84, -1, -1);
      MEMORY[0x1E12739F0](v24, -1, -1);
    }

    else
    {

      v55 = *(v19 + 8);
      v55(v16, v20);
      v55(v17, v20);
    }

    v56 = v12;
    v57 = *(v0 + 80);
    v59 = *(v0 + 40);
    v58 = *(v0 + 48);
    v60 = *(v0 + 32);
    v61 = *(v58 + 16);
    v62 = *(v58 + 24);
    ObjectType = swift_getObjectType();
    v64 = v56;
    v65 = sub_1DA940014();
    (*(v62 + 16))(v86, v65, v66, ObjectType, v62);

    v85(v60, v59, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  }

  else
  {
    if (qword_1ECBD4780 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 88);
    v38 = *(v0 + 96);
    v40 = *(v0 + 80);
    v41 = *(v0 + 40);
    v42 = sub_1DA9405A4();
    __swift_project_value_buffer(v42, qword_1ECBD6B18);
    (*(v39 + 16))(v38, v41, v40);
    v43 = sub_1DA940584();
    v44 = sub_1DA940F34();
    v45 = os_log_type_enabled(v43, v44);
    v47 = *(v0 + 88);
    v46 = *(v0 + 96);
    v48 = *(v0 + 80);
    if (v45)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v87 = v50;
      *v49 = 136315138;
      sub_1DA889240(&qword_1EE114E70, MEMORY[0x1E69DF180]);
      v51 = sub_1DA941614();
      v53 = v52;
      (*(v47 + 8))(v46, v48);
      v54 = sub_1DA7AE6E8(v51, v53, &v87);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_1DA7A9000, v43, v44, "Notification already has source - skipping fetch: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1E12739F0](v50, -1, -1);
      MEMORY[0x1E12739F0](v49, -1, -1);
    }

    else
    {

      (*(v47 + 8))(v46, v48);
    }

    v67 = *(v0 + 32);
    v68 = *(v0 + 40);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
    v70 = *(v69 + 48);
    v71 = *(v69 + 64);
    *(v67 + 24) = &type metadata for SectionSettingsSaveActor.ActorError;
    *(v67 + 32) = sub_1DA8E773C();
    sub_1DA93FF14();
    sub_1DA93FF34();
    type metadata accessor for StepFailure(0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
  }

  swift_storeEnumTagMultiPayload();
  v73 = *(v0 + 104);
  v72 = *(v0 + 112);
  v74 = *(v0 + 96);
  v75 = *(v0 + 72);

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_1DA8E7610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA7B7470;

  return sub_1DA8E6DB8(a1, v8, a3);
}

uint64_t sub_1DA8E76BC()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD6B18);
  __swift_project_value_buffer(v0, qword_1ECBD6B18);
  return sub_1DA940594();
}

unint64_t sub_1DA8E773C()
{
  result = qword_1ECBD6B30;
  if (!qword_1ECBD6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6B30);
  }

  return result;
}

unint64_t sub_1DA8E77A4()
{
  result = qword_1ECBD6B38;
  if (!qword_1ECBD6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6B38);
  }

  return result;
}

unint64_t sub_1DA8E77F8(uint64_t a1)
{
  *(a1 + 8) = sub_1DA8E77A4();
  result = sub_1DA8E7828();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA8E7828()
{
  result = qword_1ECBD6B40;
  if (!qword_1ECBD6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6B40);
  }

  return result;
}

uint64_t XPCSettingsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  XPCSettingsProvider.init()();
  return v0;
}

uint64_t XPCSettingsProvider.init()()
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
  v9 = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v11[0] = "tionSettingsSaveActor";
  v11[1] = v9;
  sub_1DA940824();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1DA7AD038(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v12);
  *(v0 + 16) = sub_1DA941004();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t XPCSettingsProvider.deinit()
{
  if (*(v0 + 24))
  {

    sub_1DA940634();
  }

  v1 = *(v0 + 24);

  return v0;
}

uint64_t XPCSettingsProvider.__deallocating_deinit()
{
  if (*(v0 + 24))
  {

    sub_1DA940634();
  }

  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8E7C44()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1DA9405E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  if (UNCOneness())
  {
    if (!v0[3])
    {
      sub_1DA940674();
      v6 = v0[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5588, &unk_1DA95D880);
      v7 = *(v4 + 72);
      v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1DA9596E0;
      v10 = v6;
      sub_1DA9405D4();
      v31 = v9;
      sub_1DA7AD038(&unk_1EE110D10, MEMORY[0x1E69E8498]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5598, &qword_1DA95B230);
      sub_1DA7AD0C8(&qword_1EE110CD0, &unk_1ECBD5598, &qword_1DA95B230);
      sub_1DA9411D4();
      v16 = sub_1DA9405C4();
      v17 = v0[3];
      v1[3] = v16;

      sub_1DA9405F4();

      sub_1DA940644();
      if (qword_1ECBD4798 != -1)
      {
        swift_once();
      }

      v18 = sub_1DA9405A4();
      __swift_project_value_buffer(v18, qword_1ECBD6B68);

      v19 = sub_1DA940584();
      v20 = sub_1DA940F34();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v30[0] = v22;
        *v21 = 136446466;
        v31 = v16;

        v23 = sub_1DA940A74();
        v25 = sub_1DA7AE6E8(v23, v24, v30);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2082;
        v31 = v2;
        swift_getMetatypeMetadata();
        v26 = sub_1DA940A74();
        v28 = sub_1DA7AE6E8(v26, v27, v30);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_1DA7A9000, v19, v20, "Session: %{public}s for %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v22, -1, -1);
        MEMORY[0x1E12739F0](v21, -1, -1);
      }

      else
      {
      }
    }

    v29 = v1[3];
  }

  else
  {
    if (qword_1ECBD4798 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA9405A4();
    __swift_project_value_buffer(v11, qword_1ECBD6B68);
    v12 = sub_1DA940584();
    v13 = sub_1DA940F34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DA7A9000, v12, v13, "Remote notifications feature is disabled. This interface will not function.", v14, 2u);
      MEMORY[0x1E12739F0](v14, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1DA8E8358(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA940744();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBD4798 != -1)
  {
    swift_once();
  }

  v9 = sub_1DA9405A4();
  __swift_project_value_buffer(v9, qword_1ECBD6B68);
  v10 = *(v5 + 16);
  v10(v8, a1, v4);
  v11 = sub_1DA940584();
  v12 = sub_1DA940F14();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    sub_1DA7AD038(&qword_1ECBD5E80, MEMORY[0x1E69E84C0]);
    swift_allocError();
    v10(v16, v8, v4);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    (*(v5 + 8))(v8, v4);
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_1DA7A9000, v11, v12, "XPC session cancelled: %{public}@", v14, 0xCu);
    sub_1DA828378(v15);
    MEMORY[0x1E12739F0](v15, -1, -1);
    v18 = v14;
    a2 = v22;
    MEMORY[0x1E12739F0](v18, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v19 = *(a2 + 24);
  *(a2 + 24) = 0;
}

id sub_1DA8E85E8()
{

  if (sub_1DA8E7C44() && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6B80, &unk_1DA9614C8), sub_1DA8EC7FC(), sub_1DA8EE9E4(&qword_1ECBD6B90, &unk_1ECBD6B98), sub_1DA940664(), , v6))
  {

    v0 = *(v6 + 16);

    return v0;
  }

  else
  {
    if (qword_1ECBD4798 != -1)
    {
      swift_once();
    }

    v2 = sub_1DA9405A4();
    __swift_project_value_buffer(v2, qword_1ECBD6B68);
    v3 = sub_1DA940584();
    v4 = sub_1DA940F14();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DA7A9000, v3, v4, "Settings fetch didn't fail but returned nil.", v5, 2u);
      MEMORY[0x1E12739F0](v5, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1DA8E88F8(void *a1)
{
  if (a1)
  {
    type metadata accessor for CodableUNNotificationSettings(0);
    *(swift_allocObject() + 16) = a1;
  }

  v2 = a1;
  if (sub_1DA8E7C44())
  {
    sub_1DA8EC7FC();
    sub_1DA940624();
  }

  else
  {
  }
}

uint64_t XPCSettingsProvider.notificationSources(_:)(uint64_t (*a1)(uint64_t))
{
  if (!sub_1DA8E7C44())
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6BA8, &qword_1DA9614D8);
  sub_1DA8EC7FC();
  sub_1DA8EC890();
  sub_1DA940664();
  if (v1)
  {

    if (qword_1ECBD4798 != -1)
    {
      swift_once();
    }

    v3 = sub_1DA9405A4();
    __swift_project_value_buffer(v3, qword_1ECBD6B68);
    v4 = v1;
    v5 = sub_1DA940584();
    v6 = sub_1DA940F14();

    if (!os_log_type_enabled(v5, v6))
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1DA7A9000, v5, v6, "Source fetch failed: %{public}@", v7, 0xCu);
    sub_1DA828378(v8);
    MEMORY[0x1E12739F0](v8, -1, -1);
    MEMORY[0x1E12739F0](v7, -1, -1);

LABEL_14:
    return MEMORY[0x1E69E7CC0];
  }

  result = v21;
  if (!v21)
  {
LABEL_10:
    if (qword_1ECBD4798 != -1)
    {
      swift_once();
    }

    v12 = sub_1DA9405A4();
    __swift_project_value_buffer(v12, qword_1ECBD6B68);
    v5 = sub_1DA940584();
    v13 = sub_1DA940F14();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DA7A9000, v5, v13, "Source fetch didn't fail but returned nil.", v14, 2u);
      MEMORY[0x1E12739F0](v14, -1, -1);
    }

    goto LABEL_14;
  }

  v22 = v21;
  if (!a1)
  {
    return result;
  }

  result = sub_1DA8ECA18(&v22, a1);
  v15 = v22[2];
  if (result > v15)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (result < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v16 = result;
  if (__OFADD__(v15, result - v15))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v17 = result;
  v18 = v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v16 > v18[3] >> 1)
  {
    if (v15 <= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v15;
    }

    v18 = sub_1DA885D48(isUniquelyReferenced_nonNull_native, v20, 1, v18);
    v22 = v18;
  }

  sub_1DA8ECE0C(v17, v15, 0);
  return v18;
}

uint64_t XPCSettingsProvider.notificationSource(with:remote:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DA9596E0;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = XPCSettingsProvider.notificationSources(with:remote:)();

  if (*(v7 + 16))
  {
    v8 = type metadata accessor for NotificationSource();
    v15 = *(v8 - 8);
    sub_1DA82A798(v7 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), a3);

    v9 = *(v15 + 56);
    v10 = a3;
    v11 = 0;
    v12 = v8;
  }

  else
  {

    v13 = type metadata accessor for NotificationSource();
    v9 = *(*(v13 - 8) + 56);
    v12 = v13;
    v10 = a3;
    v11 = 1;
  }

  return v9(v10, v11, 1, v12);
}

uint64_t XPCSettingsProvider.notificationSources(with:remote:)()
{

  if (sub_1DA8E7C44() && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6BA8, &qword_1DA9614D8), sub_1DA8EC7FC(), sub_1DA8EC890(), sub_1DA940664(), , v5))
  {

    return v5;
  }

  else
  {
    if (qword_1ECBD4798 != -1)
    {
      swift_once();
    }

    v1 = sub_1DA9405A4();
    __swift_project_value_buffer(v1, qword_1ECBD6B68);
    v2 = sub_1DA940584();
    v3 = sub_1DA940F14();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DA7A9000, v2, v3, "Source fetch didn't fail but returned nil.", v4, 2u);
      MEMORY[0x1E12739F0](v4, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }
}

id XPCSettingsProvider.systemSettings.getter()
{
  v0 = sub_1DA9407A4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1DA8E7C44())
  {
    memset(&v11[8], 0, 24);
    v11[32] = 4;
    sub_1DA8EC7FC();
    sub_1DA940654();

    type metadata accessor for CodableUNNotificationSystemSettings(0);
    sub_1DA7AD038(qword_1ECBD6BD8, type metadata accessor for CodableUNNotificationSystemSettings);
    sub_1DA940794();
    (*(v1 + 8))(v4, v0);
    v9 = *(v12 + 16);

    return v9;
  }

  else
  {
    if (qword_1ECBD4798 != -1)
    {
      swift_once();
    }

    v5 = sub_1DA9405A4();
    __swift_project_value_buffer(v5, qword_1ECBD6B68);
    v6 = sub_1DA940584();
    v7 = sub_1DA940F14();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DA7A9000, v6, v7, "System settings fetch didn't fail but returned nil.", v8, 2u);
      MEMORY[0x1E12739F0](v8, -1, -1);
    }

    return [objc_allocWithZone(MEMORY[0x1E69DF288]) init];
  }
}

uint64_t XPCSettingsProvider.systemSettings.setter(void *a1)
{
  type metadata accessor for CodableUNNotificationSystemSettings(0);
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  if (sub_1DA8E7C44())
  {
    sub_1DA8EC7FC();
    sub_1DA940624();
  }

  else
  {
  }
}

void (*XPCSettingsProvider.systemSettings.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = XPCSettingsProvider.systemSettings.getter();
  return sub_1DA8E9984;
}

void sub_1DA8E9984(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    v5 = v3;
    XPCSettingsProvider.systemSettings.setter(v5);
  }

  else
  {
    XPCSettingsProvider.systemSettings.setter(v3);
  }
}

uint64_t sub_1DA8E99EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v67 = a5;
  v65 = a4;
  v66 = a3;
  v68 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D50, &qword_1DA961BD0);
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D58, &qword_1DA961BD8);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D60, &qword_1DA961BE0);
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D68, &qword_1DA961BE8);
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D70, &qword_1DA961BF0);
  v58 = *(v18 - 8);
  v19 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v51 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D78, &qword_1DA961BF8);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v51 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D80, &unk_1DA961C00);
  v28 = *(v27 - 8);
  v70 = v27;
  v71 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v51 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8EF3AC();
  v69 = v31;
  sub_1DA941834();
  if (v67 <= 1u)
  {
    if (v67)
    {
      LOBYTE(v74) = 1;
      sub_1DA8EF550();
      v49 = v69;
      v48 = v70;
      sub_1DA9415A4();
      v74 = v68;
      v73 = 0;
      type metadata accessor for CodableUNNotificationSettings(0);
      sub_1DA7AD038(&qword_1ECBD6CF8, type metadata accessor for CodableUNNotificationSettings);
      v50 = v72;
      sub_1DA9415C4();
      if (!v50)
      {
        LOBYTE(v74) = 1;
        sub_1DA9415D4();
      }

      (*(v58 + 8))(v21, v18);
      return (*(v71 + 8))(v49, v48);
    }

    else
    {
      v38 = v23;
      LOBYTE(v74) = 0;
      sub_1DA8EF5A4();
      v40 = v69;
      v39 = v70;
      sub_1DA9415A4();
      sub_1DA9415D4();
      (*(v38 + 8))(v26, v22);
      return (*(v71 + 8))(v40, v39);
    }
  }

  else
  {
    if (v67 == 2)
    {
      LOBYTE(v74) = 3;
      sub_1DA8EF4A8();
      v33 = v59;
      v35 = v69;
      v34 = v70;
      sub_1DA9415A4();
      v74 = v68;
      type metadata accessor for CodableUNNotificationSystemSettings(0);
      sub_1DA7AD038(&qword_1ECBD6CE8, type metadata accessor for CodableUNNotificationSystemSettings);
      v36 = v61;
      sub_1DA941604();
      v42 = v60;
      goto LABEL_14;
    }

    if (v67 == 3)
    {
      LOBYTE(v74) = 5;
      sub_1DA8EF400();
      v33 = v62;
      v35 = v69;
      v34 = v70;
      sub_1DA9415A4();
      v74 = v68;
      v73 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
      sub_1DA8EF6F4(&qword_1ECBD6DA0);
      v36 = v64;
      v37 = v72;
      sub_1DA941604();
      if (v37)
      {
        (*(v63 + 8))(v33, v36);
        return (*(v71 + 8))(v35, v34);
      }

      LOBYTE(v74) = 1;
      sub_1DA9415E4();
      v42 = v63;
LABEL_14:
      (*(v42 + 8))(v33, v36);
      return (*(v71 + 8))(v35, v34);
    }

    if (v65 | v66 | v68)
    {
      LOBYTE(v74) = 4;
      sub_1DA8EF454();
      v43 = v55;
      v45 = v69;
      v44 = v70;
      sub_1DA9415A4();
      v47 = v56;
      v46 = v57;
    }

    else
    {
      LOBYTE(v74) = 2;
      sub_1DA8EF4FC();
      v43 = v52;
      v45 = v69;
      v44 = v70;
      sub_1DA9415A4();
      v47 = v53;
      v46 = v54;
    }

    (*(v47 + 8))(v43, v46);
    return (*(v71 + 8))(v45, v44);
  }
}

uint64_t sub_1DA8EA250(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v17 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6CA0, &unk_1DA9618A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8ED190();
  sub_1DA941834();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = v17;
  sub_1DA8ED1E4();
  sub_1DA941604();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1DA8EA400(uint64_t a1)
{
  v2 = sub_1DA8EF454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EA43C(uint64_t a1)
{
  v2 = sub_1DA8EF454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DA8EA478()
{
  v1 = *v0;
  v2 = 0x73676E6974746573;
  v3 = 0xD000000000000014;
  v4 = 0x6372756F536C6C61;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657461647075;
  if (v1 != 1)
  {
    v5 = 0x65536D6574737973;
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

uint64_t sub_1DA8EA544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA8ED56C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA8EA56C(uint64_t a1)
{
  v2 = sub_1DA8EF3AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EA5A8(uint64_t a1)
{
  v2 = sub_1DA8EF3AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EA600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001DA955C40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DA941684();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DA8EA694(uint64_t a1)
{
  v2 = sub_1DA8EF5A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EA6D0(uint64_t a1)
{
  v2 = sub_1DA8EF5A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EA70C()
{
  if (*v0)
  {
    result = 0x65746F6D6572;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1DA8EA738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
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

uint64_t sub_1DA8EA808(uint64_t a1)
{
  v2 = sub_1DA8EF400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EA844(uint64_t a1)
{
  v2 = sub_1DA8EF400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EA880(uint64_t a1)
{
  v2 = sub_1DA8EF4FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EA8BC(uint64_t a1)
{
  v2 = sub_1DA8EF4FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DA8EA8F8()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x73676E6974746573;
  }

  *v0;
  return result;
}

uint64_t sub_1DA8EA938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73676E6974746573 && a2 == 0xE800000000000000;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DA955C40 == a2)
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

uint64_t sub_1DA8EAA1C(uint64_t a1)
{
  v2 = sub_1DA8EF550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EAA58(uint64_t a1)
{
  v2 = sub_1DA8EF550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EAAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA8EAB20(uint64_t a1)
{
  v2 = sub_1DA8EF4A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EAB5C(uint64_t a1)
{
  v2 = sub_1DA8EF4A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EAB98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DA8ED780(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1DA8EABF0(uint64_t a1)
{
  v2 = sub_1DA8ED190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EAC2C(uint64_t a1)
{
  v2 = sub_1DA8ED190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DA8EAC68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DA8EE358(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1DA8EACC0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      strcpy(v11, "update(..., ");
      BYTE5(v11[1]) = 0;
      HIWORD(v11[1]) = -5120;
    }

    else
    {
      strcpy(v11, "settings(");
      WORD1(v11[1]) = 0;
      HIDWORD(v11[1]) = -385875968;
    }

    MEMORY[0x1E1271BD0]();
    goto LABEL_20;
  }

  if (a4 == 2)
  {
    return 0xD000000000000019;
  }

  if (a4 == 3)
  {
    v5 = a2;
    sub_1DA941364();

    strcpy(v11, "sourcesFor(");
    HIDWORD(v11[1]) = -352321536;
    v10 = *(a1 + 16);
    v6 = sub_1DA941614();
    MEMORY[0x1E1271BD0](v6);

    MEMORY[0x1E1271BD0](0x73656C646E756220, 0xEA0000000000202CLL);
    if (v5)
    {
      v7 = 0x65746F6D6572;
    }

    else
    {
      v7 = 0x6C61636F6CLL;
    }

    if (v5)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    MEMORY[0x1E1271BD0](v7, v8);

LABEL_20:
    MEMORY[0x1E1271BD0](41, 0xE100000000000000);
    return v11[0];
  }

  if (a2 | a1 | a3)
  {
    return 0x6372756F536C6C61;
  }

  else
  {
    return 0x65536D6574737973;
  }
}

uint64_t sub_1DA8EAF18(uint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v18 = a3;
  v10 = v5;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA9417F4();
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v10;
  }

  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1DA83E640();
  sub_1DA941694();
  sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
  sub_1DA7AF3EC(0, a2, v18);
  result = sub_1DA940F44();
  if (result)
  {
    v14 = result;
    sub_1DA828324(v15, v16);
    *(v10 + 16) = v14;
    __swift_destroy_boxed_opaque_existential_1(v17);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8EB0A0(uint64_t *a1)
{
  v3 = v1;
  v5 = a1[4];
  v6 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA9417F4();
  if (v2)
  {
    v9 = *(v6 + 80);
    type metadata accessor for CodableNSSecureCoding();
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1DA83E640();
  sub_1DA941694();
  sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
  v7 = *(v6 + 80);
  result = sub_1DA940F44();
  if (result)
  {
    v10 = result;
    sub_1DA828324(v11, v12);
    v3[2] = v10;
    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8EB22C(void *a1)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA941824();
  v3 = objc_opt_self();
  v4 = *(v1 + 16);
  v13 = 0;
  v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = sub_1DA93F9A4();
    v9 = v8;

    v13 = v7;
    v14 = v9;
    __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_1DA83E88C();
    sub_1DA9416A4();
    sub_1DA828324(v13, v14);
  }

  else
  {
    v10 = v6;
    sub_1DA93F8C4();

    swift_willThrow();
  }

  result = __swift_destroy_boxed_opaque_existential_1(v15);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DA8EB378@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 104))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DA8EB448(uint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  swift_allocObject();
  sub_1DA7BABAC(a1, v12);
  v10 = sub_1DA8EAF18(v12, a2, a3, a4, a5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_1DA8EB4F0()
{
  if (*(v0 + 32))
  {

    sub_1DA940704();
  }

  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  v2 = *(v0 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA8EB578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v5 = *v3;
  v6 = sub_1DA9407A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA8EE750();
  v50 = a1;
  sub_1DA940794();
  v47 = v7;
  v48 = v6;
  v10 = v52[0];
  v11 = v52[1];
  v12 = v52[2];
  v13 = v53;
  if (qword_1ECBD4790 != -1)
  {
    swift_once();
  }

  v49 = v5;
  v14 = sub_1DA9405A4();
  __swift_project_value_buffer(v14, qword_1ECBD6B50);
  sub_1DA8EE7A4(v10, v11, v12, v13);
  v15 = sub_1DA940584();
  v16 = v12;
  v17 = sub_1DA940EF4();
  v18 = os_log_type_enabled(v15, v17);
  v45 = v10;
  v46 = v16;
  v44 = v13;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v42 = v19;
    v43 = swift_slowAlloc();
    v52[0] = v43;
    *v19 = 136315138;
    v20 = sub_1DA8EACC0(v10, v11, v16, v13);
    v21 = v10;
    v22 = v11;
    v24 = v23;
    sub_1DA8EE83C(v21, v22, v16, v13);
    v25 = sub_1DA7AE6E8(v20, v24, v52);

    v26 = v42;
    *(v42 + 1) = v25;
    v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v17;
    v28 = v26;
    _os_log_impl(&dword_1DA7A9000, v15, v27, "Handling message: %s", v26, 0xCu);
    v29 = v43;
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1E12739F0](v29, -1, -1);
    MEMORY[0x1E12739F0](v28, -1, -1);
  }

  else
  {

    sub_1DA8EE83C(v10, v11, v16, v13);
    v22 = v11;
  }

  v43 = v3[3];
  v30 = v47;
  v31 = v48;
  (*(v47 + 16))(v9, v50, v48);
  v32 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v33 = (v8 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v45;
  *(v34 + 16) = v45;
  *(v34 + 24) = v22;
  v36 = v9;
  v37 = v46;
  *(v34 + 32) = v46;
  v38 = v22;
  v39 = v44;
  *(v34 + 40) = v44;
  *(v34 + 48) = v3;
  (*(v30 + 32))(v34 + v32, v36, v31);
  *(v34 + v33) = v49;
  sub_1DA8EE7A4(v35, v38, v37, v39);

  sub_1DA940774();
  sub_1DA8EE83C(v35, v38, v37, v39);
}

void sub_1DA8EBA68(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, void *a5)
{
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      sub_1DA7BABAC((a5 + 5), &v38);
      v21 = v39;
      v22 = v40;
      __swift_project_boxed_opaque_existential_1(&v38, v39);
      v23 = *(v22 + 16);
      sub_1DA8EE7A4(a1, a2, a3, 3u);
      v24 = v23(a1, a2 & 1, v21, v22);
      sub_1DA8EE968(a1, a2, a3, 3u);
      __swift_destroy_boxed_opaque_existential_1(&v38);
      v38 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6BC0, &unk_1DA9614E0);
      sub_1DA8EC94C(&qword_1ECBD6CC8, &unk_1ECBD6CD0);
      sub_1DA940784();
    }

    else
    {
      if (a4 != 4)
      {
        __break(1u);
        return;
      }

      if (!(a3 | a2 | a1))
      {
        swift_beginAccess();
        sub_1DA7BABAC((a5 + 12), &v38);
        v33 = v39;
        v34 = v40;
        __swift_project_boxed_opaque_existential_1(&v38, v39);
        v35 = (*(v34 + 8))(v33, v34);
        __swift_destroy_boxed_opaque_existential_1(&v38);
        type metadata accessor for CodableUNNotificationSystemSettings(0);
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        v38 = v36;
        sub_1DA7AD038(&qword_1ECBD6CE8, type metadata accessor for CodableUNNotificationSystemSettings);
        sub_1DA940784();
LABEL_22:

        return;
      }

      sub_1DA7BABAC((a5 + 5), &v38);
      v11 = v39;
      v12 = v40;
      __swift_project_boxed_opaque_existential_1(&v38, v39);
      v13 = (*(v12 + 8))(0, 0, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v38);
      v38 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6BC0, &unk_1DA9614E0);
      sub_1DA8EC94C(&qword_1ECBD6CC8, &unk_1ECBD6CD0);
      sub_1DA940784();
    }

    return;
  }

  if (!a4)
  {
    v14 = a5[10];
    v15 = a5[11];
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 8);
    swift_unknownObjectRetain();
    sub_1DA8EE9D0(a1, a2, a3, 0);
    v18 = v17(a1, a2, ObjectType, v15);
    swift_unknownObjectRelease();
    sub_1DA8EE968(a1, a2, a3, 0);
    if (!v18)
    {
      if (qword_1ECBD4788 != -1)
      {
        swift_once();
      }

      v18 = qword_1ECBE3D90;
      v19 = qword_1ECBE3D90;
    }

    type metadata accessor for CodableUNNotificationSettings(0);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v38 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6B80, &unk_1DA9614C8);
    sub_1DA8EE9E4(&qword_1ECBD6CF0, &qword_1ECBD6CF8);
    sub_1DA940784();
    goto LABEL_22;
  }

  if (a4 == 1)
  {
    v9 = a5[10];
    v8 = a5[11];
    if (a1)
    {
      v37 = *(a1 + 16);
      v10 = v37;
    }

    else
    {
      v37 = 0;
    }

    v30 = swift_getObjectType();
    v31 = *(v8 + 16);
    sub_1DA8EE9D0(a1, a2, a3, 1u);
    swift_unknownObjectRetain();
    v31(v37, a2, a3, v30, v8);

    swift_unknownObjectRelease();
  }

  else
  {
    v25 = *(a1 + 16);
    swift_beginAccess();
    v27 = a5[15];
    v28 = a5[16];
    __swift_mutable_project_boxed_opaque_existential_1((a5 + 12), v27);
    v29 = *(v28 + 16);
    sub_1DA8EE9D0(a1, a2, a3, 2u);
    v29(v25, v27, v28);
    swift_endAccess();
    sub_1DA8EE968(a1, a2, a3, 2u);
  }
}

id sub_1DA8EC074()
{
  LOBYTE(v1) = 0;
  result = [objc_opt_self() settingsWithAuthorizationStatus:2 soundSetting:0 badgeSetting:0 alertSetting:0 notificationCenterSetting:0 lockScreenSetting:0 carPlaySetting:0 remoteNotificationsSetting:2 announcementSetting:0 criticalAlertSetting:0 timeSensitiveSetting:0 scheduledDeliverySetting:0 directMessagesSetting:0 alertStyle:0 showPreviewsSetting:2 groupingSetting:0 providesAppNotificationSettings:v1];
  qword_1ECBE3D90 = result;
  return result;
}

uint64_t sub_1DA8EC0EC(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6DD0, &qword_1DA961C10);
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6DD8, &qword_1DA961C18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6DE0, &qword_1DA961C20);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8EF5F8();
  v18 = v25;
  sub_1DA941834();
  if (v18)
  {
    v26 = 0;
    sub_1DA8EF6A0();
    sub_1DA9415A4();
    sub_1DA9415D4();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v27 = 1;
    sub_1DA8EF64C();
    v20 = v21;
    sub_1DA9415A4();
    (*(v22 + 8))(v20, v23);
  }

  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_1DA8EC40C()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x69796C7265646E75;
  }

  *v0;
  return result;
}

uint64_t sub_1DA8EC458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69796C7265646E75 && a2 == 0xEF726F727245676ELL;
  if (v6 || (sub_1DA941684() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DA955C60 == a2)
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

uint64_t sub_1DA8EC544(uint64_t a1)
{
  v2 = sub_1DA8EF5F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EC580(uint64_t a1)
{
  v2 = sub_1DA8EF5F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EC5BC(uint64_t a1)
{
  v2 = sub_1DA8EF64C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EC5F8(uint64_t a1)
{
  v2 = sub_1DA8EF64C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EC634(uint64_t a1)
{
  v2 = sub_1DA8EF6A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8EC670(uint64_t a1)
{
  v2 = sub_1DA8EF6A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA8EC6AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DA8EEADC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1DA8EC6F4()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD6B50);
  __swift_project_value_buffer(v0, qword_1ECBD6B50);
  return sub_1DA940594();
}

uint64_t sub_1DA8EC778()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD6B68);
  __swift_project_value_buffer(v0, qword_1ECBD6B68);
  return sub_1DA940594();
}

unint64_t sub_1DA8EC7FC()
{
  result = qword_1ECBD6B88;
  if (!qword_1ECBD6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6B88);
  }

  return result;
}

void *sub_1DA8EC870(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_1DA8EC890()
{
  result = qword_1ECBD6BB0;
  if (!qword_1ECBD6BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6BA8, &qword_1DA9614D8);
    sub_1DA8EC94C(&qword_1ECBD6BB8, &unk_1ECBD6BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6BB0);
  }

  return result;
}

uint64_t sub_1DA8EC94C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6BC0, &unk_1DA9614E0);
    sub_1DA7AD038(a2, type metadata accessor for NotificationSource);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA8EC9E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DA8ECA18(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  v6 = type metadata accessor for NotificationSource();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v17 = *a1;
  result = sub_1DA8ECD20(*a1, a2);
  if (v2)
  {
  }

  v42 = a2;
  if (v19)
  {
    v20 = v17[2];

    return v20;
  }

  v40 = v16;
  v37 = v14;
  v38 = v11;
  v36 = a1;
  v43 = result;
  v21 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v23 = v17 + 2;
    v22 = v17[2];
    if (v21 == v22)
    {
LABEL_7:

      return v43;
    }

    v39 = v7;
    while (v21 < v22)
    {
      v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v44 = v17;
      v41 = v24;
      v25 = v17 + v24;
      v26 = *(v7 + 72);
      v27 = v26 * v21;
      v28 = v40;
      sub_1DA82A798(&v25[v26 * v21], v40);
      v29 = v3;
      v30 = v42(v28);
      result = sub_1DA82A7FC(v28);
      v45 = v29;
      if (v29)
      {
      }

      if (v30)
      {
        v31 = v43;
        if (v21 == v43)
        {
          v3 = v45;
          v7 = v39;
          v17 = v44;
        }

        else
        {
          if ((v43 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v32 = *v23;
          if (v43 >= *v23)
          {
            goto LABEL_27;
          }

          v33 = v26 * v43;
          result = sub_1DA82A798(&v25[v26 * v43], v37);
          if (v21 >= v32)
          {
            goto LABEL_28;
          }

          sub_1DA82A798(&v25[v27], v38);
          v17 = v44;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1DA884B0C(v17);
          }

          v34 = v17 + v41;
          result = sub_1DA8C06C4(v38, v17 + v41 + v33);
          v3 = v45;
          if (v21 >= v17[2])
          {
            goto LABEL_29;
          }

          result = sub_1DA8C06C4(v37, &v34[v27]);
          *v36 = v17;
          v7 = v39;
          v31 = v43;
        }

        v43 = v31 + 1;
      }

      else
      {
        v3 = v45;
        v7 = v39;
        v17 = v44;
      }

      ++v21;
      v23 = v17 + 2;
      v22 = v17[2];
      if (v21 == v22)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA8ECD20(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(type metadata accessor for NotificationSource() - 8);
  v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    v10 = a2(v8);
    if (v2 || (v10 & 1) == 0)
    {
      break;
    }

    ++v6;
    v8 += v9;
    if (v3 == v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_1DA8ECE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for NotificationSource();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21UserNotificationsCore26SettingsProviderXPCMessage33_8C7211D83F29B51BFC461C89FB2FE50ELLV0deF6ActionO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

unint64_t sub_1DA8ED190()
{
  result = qword_1ECBD6CA8;
  if (!qword_1ECBD6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6CA8);
  }

  return result;
}

unint64_t sub_1DA8ED1E4()
{
  result = qword_1ECBD6CB0;
  if (!qword_1ECBD6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6CB0);
  }

  return result;
}

unint64_t sub_1DA8ED238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D30, &qword_1DA9593C0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1DA8ED38C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 16 * a3;
  v12 = v7 + 32 + 16 * a2;
  if (result < v12 || result >= v12 + 16 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_1DA8ED480(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5DE0, &unk_1DA9618D0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8ED56C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73676E6974746573 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65536D6574737973 && a2 == 0xEE0073676E697474 || (sub_1DA941684() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DA955C00 == a2 || (sub_1DA941684() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6372756F536C6C61 && a2 == 0xEA00000000007365 || (sub_1DA941684() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DA955C20 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DA941684();

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

uint64_t sub_1DA8ED780(uint64_t *a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E00, &qword_1DA961C28);
  v60 = *(v57 - 8);
  v2 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v65 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E08, &qword_1DA961C30);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v50 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E10, &qword_1DA961C38);
  v59 = *(v54 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v64 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E18, &qword_1DA961C40);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v50 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E20, &qword_1DA961C48);
  v58 = *(v61 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E28, &qword_1DA961C50);
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E30, &unk_1DA961C58);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1DA8EF3AC();
  v26 = v66;
  sub_1DA941804();
  v27 = v26;
  if (!v26)
  {
    v28 = v18;
    v50 = v15;
    v30 = v64;
    v29 = v65;
    v66 = v20;
    v31 = sub_1DA941594();
    v32 = (2 * *(v31 + 16)) | 1;
    v69 = v31;
    v70 = v31 + 32;
    v71 = 0;
    v72 = v32;
    v33 = sub_1DA865350();
    if (v33 == 6 || v71 != v72 >> 1)
    {
      v36 = sub_1DA9413B4();
      swift_allocError();
      v38 = v37;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20) + 48);
      *v38 = &type metadata for SettingsProviderXPCMessage.SettingsProviderXPCMessageAction;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v66 + 8))(v23, v19);
      swift_unknownObjectRelease();
    }

    else if (v33 > 2u)
    {
      if (v33 == 3)
      {
        LOBYTE(v73) = 3;
        sub_1DA8EF4A8();
        sub_1DA941504();
        type metadata accessor for CodableUNNotificationSystemSettings(0);
        sub_1DA7AD038(qword_1ECBD6BD8, type metadata accessor for CodableUNNotificationSystemSettings);
        v44 = v54;
        sub_1DA941584();
        v45 = v66;
        (*(v59 + 8))(v30, v44);
        (*(v45 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v27 = v73;
      }

      else if (v33 == 4)
      {
        LOBYTE(v73) = 4;
        sub_1DA8EF454();
        v40 = v62;
        sub_1DA941504();
        (*(v55 + 8))(v40, v56);
        (*(v66 + 8))(v23, v19);
        swift_unknownObjectRelease();
        v27 = 1;
      }

      else
      {
        LOBYTE(v73) = 5;
        sub_1DA8EF400();
        v47 = v29;
        sub_1DA941504();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
        v68 = 0;
        sub_1DA8EF6F4(&qword_1EE110CC0);
        v48 = v57;
        sub_1DA941584();
        v49 = v66;
        v27 = v73;
        v68 = 1;
        sub_1DA941564();
        (*(v60 + 8))(v47, v48);
        (*(v49 + 8))(v23, v19);
        swift_unknownObjectRelease();
      }
    }

    else if (v33)
    {
      v34 = v19;
      v35 = v66;
      if (v33 == 1)
      {
        LOBYTE(v73) = 1;
        sub_1DA8EF550();
        sub_1DA941504();
        type metadata accessor for CodableUNNotificationSettings(0);
        v68 = 0;
        sub_1DA7AD038(&unk_1ECBD6B98, type metadata accessor for CodableUNNotificationSettings);
        sub_1DA941544();
        v27 = v73;
        v68 = 1;
        sub_1DA941554();
        (*(v58 + 8))(v14, v61);
        (*(v35 + 8))(v23, v34);
        swift_unknownObjectRelease();
      }

      else
      {
        LOBYTE(v73) = 2;
        sub_1DA8EF4FC();
        v46 = v63;
        sub_1DA941504();
        (*(v52 + 8))(v46, v53);
        (*(v35 + 8))(v23, v34);
        swift_unknownObjectRelease();
        v27 = 0;
      }
    }

    else
    {
      LOBYTE(v73) = 0;
      sub_1DA8EF5A4();
      v41 = v28;
      sub_1DA941504();
      v42 = v66;
      v43 = v50;
      v27 = sub_1DA941554();
      (*(v51 + 8))(v41, v43);
      (*(v42 + 8))(v23, v19);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v67);
  return v27;
}

void *sub_1DA8EE358(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6D00, &qword_1DA9618B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA8ED190();
  sub_1DA941804();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1DA8EEA80();
    sub_1DA941584();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

void sub_1DA8EE4DC(uint64_t a1)
{
  v2 = sub_1DA940744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECBD4790 != -1)
  {
    swift_once();
  }

  v7 = sub_1DA9405A4();
  __swift_project_value_buffer(v7, qword_1ECBD6B50);
  v8 = *(v3 + 16);
  v8(v6, a1, v2);
  v9 = sub_1DA940584();
  v10 = sub_1DA940F14();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    sub_1DA7AD038(&qword_1ECBD5E80, MEMORY[0x1E69E84C0]);
    swift_allocError();
    v8(v13, v6, v2);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v6, v2);
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1DA7A9000, v9, v10, "XPC connection cancelled: %{public}@", v11, 0xCu);
    sub_1DA828378(v12);
    MEMORY[0x1E12739F0](v12, -1, -1);
    MEMORY[0x1E12739F0](v11, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

unint64_t sub_1DA8EE750()
{
  result = qword_1ECBD6CC0;
  if (!qword_1ECBD6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6CC0);
  }

  return result;
}

uint64_t sub_1DA8EE7A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
    }

    else if (a4 == 3)
    {
    }
  }

  else
  {
    if (!a4)
    {
    }

    if (a4 == 1)
    {
    }
  }

  return result;
}

uint64_t sub_1DA8EE83C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  if (a4 != 2)
  {
    if (a4 != 3)
    {
      return result;
    }
  }

LABEL_10:
}

void sub_1DA8EE8CC()
{
  v1 = *(sub_1DA9407A4() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 56) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + 40);

  sub_1DA8EBA68(v2, v3, v4, v7, v5);
}

uint64_t sub_1DA8EE968(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1DA8EE83C(a1, a2, a3, a4);
  }

  return a1;
}

unint64_t sub_1DA8EE97C()
{
  result = qword_1ECBD6CE0;
  if (!qword_1ECBD6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6CE0);
  }

  return result;
}

uint64_t sub_1DA8EE9D0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1DA8EE7A4(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1DA8EE9E4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6B80, &unk_1DA9614C8);
    sub_1DA7AD038(a2, type metadata accessor for CodableUNNotificationSettings);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA8EEA80()
{
  result = qword_1ECBD6D08;
  if (!qword_1ECBD6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6D08);
  }

  return result;
}

uint64_t sub_1DA8EEADC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E38, &qword_1DA961C68);
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E40, &qword_1DA961C70);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6E48, &qword_1DA961C78);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v37 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DA8EF5F8();
  v19 = v36;
  sub_1DA941804();
  if (!v19)
  {
    v36 = v12;
    v20 = sub_1DA941594();
    v21 = (2 * *(v20 + 16)) | 1;
    v38 = v20;
    v39 = v20 + 32;
    v40 = 0;
    v41 = v21;
    v22 = sub_1DA8675E4();
    v23 = v11;
    if (v22 == 2 || v40 != v41 >> 1)
    {
      v25 = v11;
      v26 = sub_1DA9413B4();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20) + 48);
      *v28 = &type metadata for XPCSettingsProviderServer.RequestError;
      v18 = v15;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v36 + 8))(v15, v25);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v42 = 1;
      sub_1DA8EF64C();
      sub_1DA941504();
      v24 = v36;
      (*(v34 + 8))(v6, v33);
      (*(v24 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = 0;
    }

    else
    {
      v42 = 0;
      sub_1DA8EF6A0();
      sub_1DA941504();
      v31 = v36;
      v18 = sub_1DA941554();
      (*(v35 + 8))(v10, v7);
      (*(v31 + 8))(v15, v23);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v18;
}

uint64_t sub_1DA8EEFE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1DA941264();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1DA941264();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8EF0EC(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA8EF13C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_1DA8EF190(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DA8EF1A8(void *result, int a2)
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

uint64_t sub_1DA8EF1E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DA8EF230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DA8EF278(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1DA8EF2A8()
{
  result = qword_1ECBD6D38;
  if (!qword_1ECBD6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6D38);
  }

  return result;
}

unint64_t sub_1DA8EF300()
{
  result = qword_1ECBD6D40;
  if (!qword_1ECBD6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6D40);
  }

  return result;
}

unint64_t sub_1DA8EF358()
{
  result = qword_1ECBD6D48;
  if (!qword_1ECBD6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6D48);
  }

  return result;
}

unint64_t sub_1DA8EF3AC()
{
  result = qword_1ECBD6D88;
  if (!qword_1ECBD6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6D88);
  }

  return result;
}

unint64_t sub_1DA8EF400()
{
  result = qword_1ECBD6D90;
  if (!qword_1ECBD6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6D90);
  }

  return result;
}

unint64_t sub_1DA8EF454()
{
  result = qword_1ECBD6DA8;
  if (!qword_1ECBD6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DA8);
  }

  return result;
}

unint64_t sub_1DA8EF4A8()
{
  result = qword_1ECBD6DB0;
  if (!qword_1ECBD6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DB0);
  }

  return result;
}

unint64_t sub_1DA8EF4FC()
{
  result = qword_1ECBD6DB8;
  if (!qword_1ECBD6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DB8);
  }

  return result;
}

unint64_t sub_1DA8EF550()
{
  result = qword_1ECBD6DC0;
  if (!qword_1ECBD6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DC0);
  }

  return result;
}

unint64_t sub_1DA8EF5A4()
{
  result = qword_1ECBD6DC8;
  if (!qword_1ECBD6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DC8);
  }

  return result;
}

unint64_t sub_1DA8EF5F8()
{
  result = qword_1ECBD6DE8;
  if (!qword_1ECBD6DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DE8);
  }

  return result;
}

unint64_t sub_1DA8EF64C()
{
  result = qword_1ECBD6DF0;
  if (!qword_1ECBD6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DF0);
  }

  return result;
}

unint64_t sub_1DA8EF6A0()
{
  result = qword_1ECBD6DF8;
  if (!qword_1ECBD6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6DF8);
  }

  return result;
}

uint64_t sub_1DA8EF6F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6790, &qword_1DA9594C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA8EF804()
{
  result = qword_1ECBD6E50;
  if (!qword_1ECBD6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E50);
  }

  return result;
}

unint64_t sub_1DA8EF85C()
{
  result = qword_1ECBD6E58;
  if (!qword_1ECBD6E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E58);
  }

  return result;
}

unint64_t sub_1DA8EF8B4()
{
  result = qword_1ECBD6E60;
  if (!qword_1ECBD6E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E60);
  }

  return result;
}

unint64_t sub_1DA8EF90C()
{
  result = qword_1ECBD6E68;
  if (!qword_1ECBD6E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E68);
  }

  return result;
}

unint64_t sub_1DA8EF964()
{
  result = qword_1ECBD6E70;
  if (!qword_1ECBD6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E70);
  }

  return result;
}

unint64_t sub_1DA8EF9BC()
{
  result = qword_1ECBD6E78;
  if (!qword_1ECBD6E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E78);
  }

  return result;
}

unint64_t sub_1DA8EFA14()
{
  result = qword_1ECBD6E80;
  if (!qword_1ECBD6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E80);
  }

  return result;
}

unint64_t sub_1DA8EFA6C()
{
  result = qword_1ECBD6E88;
  if (!qword_1ECBD6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E88);
  }

  return result;
}

unint64_t sub_1DA8EFAC4()
{
  result = qword_1ECBD6E90;
  if (!qword_1ECBD6E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E90);
  }

  return result;
}

unint64_t sub_1DA8EFB1C()
{
  result = qword_1ECBD6E98;
  if (!qword_1ECBD6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6E98);
  }

  return result;
}

unint64_t sub_1DA8EFB74()
{
  result = qword_1ECBD6EA0;
  if (!qword_1ECBD6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EA0);
  }

  return result;
}

unint64_t sub_1DA8EFBCC()
{
  result = qword_1ECBD6EA8;
  if (!qword_1ECBD6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EA8);
  }

  return result;
}

unint64_t sub_1DA8EFC24()
{
  result = qword_1ECBD6EB0;
  if (!qword_1ECBD6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EB0);
  }

  return result;
}

unint64_t sub_1DA8EFC7C()
{
  result = qword_1ECBD6EB8;
  if (!qword_1ECBD6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EB8);
  }

  return result;
}

unint64_t sub_1DA8EFCD4()
{
  result = qword_1ECBD6EC0;
  if (!qword_1ECBD6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EC0);
  }

  return result;
}

unint64_t sub_1DA8EFD2C()
{
  result = qword_1ECBD6EC8;
  if (!qword_1ECBD6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EC8);
  }

  return result;
}

unint64_t sub_1DA8EFD84()
{
  result = qword_1ECBD6ED0;
  if (!qword_1ECBD6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6ED0);
  }

  return result;
}

unint64_t sub_1DA8EFDDC()
{
  result = qword_1ECBD6ED8;
  if (!qword_1ECBD6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6ED8);
  }

  return result;
}

unint64_t sub_1DA8EFE34()
{
  result = qword_1ECBD6EE0;
  if (!qword_1ECBD6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EE0);
  }

  return result;
}

unint64_t sub_1DA8EFE8C()
{
  result = qword_1ECBD6EE8;
  if (!qword_1ECBD6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EE8);
  }

  return result;
}

unint64_t sub_1DA8EFEE4()
{
  result = qword_1ECBD6EF0;
  if (!qword_1ECBD6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EF0);
  }

  return result;
}

unint64_t sub_1DA8EFF3C()
{
  result = qword_1ECBD6EF8;
  if (!qword_1ECBD6EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6EF8);
  }

  return result;
}

unint64_t sub_1DA8EFF94()
{
  result = qword_1ECBD6F00;
  if (!qword_1ECBD6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6F00);
  }

  return result;
}

unint64_t sub_1DA8EFFEC()
{
  result = qword_1ECBD6F08;
  if (!qword_1ECBD6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6F08);
  }

  return result;
}

unint64_t sub_1DA8F0044()
{
  result = qword_1ECBD6F10;
  if (!qword_1ECBD6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6F10);
  }

  return result;
}

unint64_t sub_1DA8F009C()
{
  result = qword_1ECBD6F18;
  if (!qword_1ECBD6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6F18);
  }

  return result;
}

unint64_t sub_1DA8F00F4()
{
  result = qword_1ECBD6F20;
  if (!qword_1ECBD6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD6F20);
  }

  return result;
}

uint64_t sub_1DA8F01B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v23;
  }

  else
  {
    v15 = *v5;
    v16 = sub_1DA85A4B4(a2, a3);
    LOBYTE(v15) = v17;

    if (v15)
    {
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v24 = *v6;
      if (!v19)
      {
        a5();
        v20 = v24;
      }

      v21 = *(*(v20 + 48) + 16 * v16 + 8);

      v22 = *(*(v20 + 56) + 8 * v16);

      result = sub_1DA8F5124(v16, v20);
      *v6 = v20;
    }
  }

  return result;
}

uint64_t sub_1DA8F02B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6310, &unk_1DA95F3B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1DA93F964();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1DA7BA120(a1, &qword_1ECBD6310, &unk_1DA95F3B0);
    sub_1DA8F455C(a2, a3, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0], sub_1DA860200, v10);

    return sub_1DA7BA120(v10, &qword_1ECBD6310, &unk_1DA95F3B0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DA90ACC0(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DA8F04CC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FF0, &unk_1DA95B220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5960, &qword_1DA95B160);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1DA7BA120(a1, &unk_1ECBD6FF0, &unk_1DA95B220);
    sub_1DA8F4390(a2, &unk_1ECBD5960, &qword_1DA95B160, sub_1DA860228, v8);
    v14 = sub_1DA93FB24();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1DA7BA120(v8, &unk_1ECBD6FF0, &unk_1DA95B220);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1DA90AD14(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1DA93FB24();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1DA8F0724(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5580, &qword_1DA95B218);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5410, &qword_1DA95AFD0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1DA7BA120(a1, &qword_1ECBD5580, &qword_1DA95B218);
    sub_1DA8F4390(a2, &unk_1ECBD5410, &qword_1DA95AFD0, sub_1DA86024C, v8);
    v14 = sub_1DA93FB24();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1DA7BA120(v8, &qword_1ECBD5580, &qword_1DA95B218);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1DA90AD50(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1DA93FB24();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1DA8F09A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1DA93FAF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1DA7BA120(a1, &unk_1ECBD6530, &unk_1DA958820);
    sub_1DA8F455C(a2, a3, MEMORY[0x1E6969530], MEMORY[0x1E6969530], sub_1DA860774, v10);

    return sub_1DA7BA120(v10, &unk_1ECBD6530, &unk_1DA958820);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DA90B134(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DA8F0BBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DA93FBD4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(a1, 1, v5);
  if (v7 == 1)
  {
    sub_1DA7BA120(a1, &unk_1ECBD7000, &qword_1DA95BF48);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD7000, &qword_1DA95BF48);
    v9 = *(*(v8 - 8) + 64);
    MEMORY[0x1EEE9AC00](v8 - 8);
    v11 = &v18 - v10;
    sub_1DA8F46F0(a2, &v18 - v10);

    return sub_1DA7BA120(v11, &unk_1ECBD7000, &qword_1DA95BF48);
  }

  else
  {
    v13 = *(v6 + 64);
    MEMORY[0x1EEE9AC00](v7);
    v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 32))(v15, a1, v5);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1DA90B340(v15, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v19;
  }

  return result;
}

uint64_t sub_1DA8F0D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1DA90B514(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1DA85A4B4(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1DA860D54();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1DA8F5124(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

unint64_t sub_1DA8F0E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_1DA90B540(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_1DA85A5A0(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1DA860D68();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13 + 8);

      result = sub_1DA8F5850(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1DA8F0F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) == 1)
  {
    sub_1DA7BA120(a1, &unk_1ECBD6FE0, qword_1DA962790);
    sub_1DA8F4A4C(a2, a3, v11);

    return sub_1DA7BA120(v11, &unk_1ECBD6FE0, qword_1DA962790);
  }

  else
  {
    v7 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v7;
    v12 = *(a1 + 32);
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1DA90BC14(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  return result;
}

uint64_t sub_1DA8F1020(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_1DA90C414(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1DA93FB24();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1DA85A5DC(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_1DA86226C();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_1DA93FB24();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_1DA8F5EA8(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_1DA93FB24();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1DA8F11E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FA8, &unk_1DA962760);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1DA9408B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1DA7BA120(a1, &unk_1ECBD6FA8, &unk_1DA962760);
    sub_1DA8F455C(a2, a3, MEMORY[0x1E69E8008], MEMORY[0x1E69E8008], sub_1DA8626A0, v10);

    return sub_1DA7BA120(v10, &unk_1ECBD6FA8, &unk_1DA962760);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DA90C770(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DA8F13F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6FB8, &unk_1DA962770);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for AlertCoordinationMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1DA7BA120(a1, &unk_1ECBD6FB8, &unk_1DA962770);
    sub_1DA8F4C5C(a2, a3, type metadata accessor for AlertCoordinationMessage, type metadata accessor for AlertCoordinationMessage, type metadata accessor for AlertCoordinationMessage, sub_1DA862950, v10);

    return sub_1DA7BA120(v10, &unk_1ECBD6FB8, &unk_1DA962770);
  }

  else
  {
    sub_1DA8F7088(a1, v14, type metadata accessor for AlertCoordinationMessage);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DA90C7C4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DA8F1618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1DA90C928(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1DA85A4B4(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1DA86298C();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1DA8F5124(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t UserNotificationsVendorServer.notificationRepositoryDidPerformUpdates(_:userNotification:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v96 = a1;
  v5 = sub_1DA9401F4();
  v89 = *(v5 - 8);
  v90 = v5;
  v6 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v93 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v91 = &v85 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v94 = &v85 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v85 - v20;
  v92 = v11;
  swift_storeEnumTagMultiPayload();
  v22 = sub_1DA940014();
  v24 = v23;
  v25 = v3[4];
  v26 = v3[7];
  v27 = v3[8];
  v95 = v3;
  v28 = &v21[v12[9]];
  v87 = v21;
  v97 = a2;
  sub_1DA940074();
  v98[0] = sub_1DA847D80(MEMORY[0x1E69E7CC0]);

  sub_1DA8F6BEC(v96, v25, v22, v24, v98);

  sub_1DA81AACC(v11, v21, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  v29 = v98[0];
  ObjectType = swift_getObjectType();
  v31 = *(v27 + 8);

  v32 = v31(v22, v24, ObjectType, v27);
  v33 = v96;
  v34 = v87;
  v35 = v32;
  sub_1DA866354(v92, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  v36 = (v34 + v12[5]);
  *v36 = v22;
  v36[1] = v24;
  *(v34 + v12[6]) = v29;
  v37 = v12[7];

  *(v34 + v37) = v33;
  v92 = v12;
  *(v34 + v12[8]) = v35;
  if (qword_1EE114E10 != -1)
  {
    swift_once();
  }

  v38 = sub_1DA9405A4();
  v39 = __swift_project_value_buffer(v38, qword_1EE114E20);
  v41 = v88;
  v40 = v89;
  v42 = v90;
  (*(v89 + 16))(v88, v97, v90);
  v43 = v94;
  sub_1DA81AACC(v34, v94, type metadata accessor for UserNotificationsVendorTransaction);

  v97 = v39;
  v44 = sub_1DA940584();
  v45 = sub_1DA940F34();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = v41;
    v47 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v98[0] = v86;
    *v47 = 136315650;
    v48 = sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
    v49 = MEMORY[0x1E1271CD0](v33, v48);
    v50 = v40;
    v52 = sub_1DA7AE6E8(v49, v51, v98);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2080;
    v53 = sub_1DA940014();
    v55 = v54;
    (*(v50 + 8))(v46, v42);
    v56 = sub_1DA7AE6E8(v53, v55, v98);

    *(v47 + 14) = v56;
    *(v47 + 22) = 2080;
    v57 = v94;
    sub_1DA81AACC(v94, v91, type metadata accessor for UserNotificationsVendorTransaction);
    v58 = sub_1DA940A74();
    v60 = v59;
    sub_1DA866354(v57, type metadata accessor for UserNotificationsVendorTransaction);
    v61 = sub_1DA7AE6E8(v58, v60, v98);

    *(v47 + 24) = v61;
    _os_log_impl(&dword_1DA7A9000, v44, v45, "notificationRepositoryDidPerformUpdates: %s forBundleIdentifier: %s transaction: %s", v47, 0x20u);
    v62 = v86;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v62, -1, -1);
    MEMORY[0x1E12739F0](v47, -1, -1);
  }

  else
  {

    sub_1DA866354(v43, type metadata accessor for UserNotificationsVendorTransaction);
    (*(v40 + 8))(v41, v42);
  }

  v63 = v95;

  v64 = sub_1DA940584();
  v65 = sub_1DA940F34();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v99[0] = v67;
    *v66 = 136315138;
    swift_beginAccess();
    v68 = *(v63 + 104);
    sub_1DA93FB24();
    type metadata accessor for VendorSession();
    sub_1DA8F71B4(&qword_1EE115A40, MEMORY[0x1E69695A8]);

    v69 = sub_1DA940984();
    v71 = v70;

    v72 = v69;
    v63 = v95;
    v73 = sub_1DA7AE6E8(v72, v71, v99);

    *(v66 + 4) = v73;
    _os_log_impl(&dword_1DA7A9000, v64, v65, "notificationRepositoryDidPerformUpdates: sessions: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x1E12739F0](v67, -1, -1);
    MEMORY[0x1E12739F0](v66, -1, -1);
  }

  v74 = v93;
  v75 = *(*(v63 + 96) + 16);
  os_unfair_lock_lock(v75);
  sub_1DA8F3490(v63, v34, "notificationRepositoryDidPerformUpdates: sending to: %s transaction: %s", "notificationRepositoryDidPerformUpdates: ERROR sending to: %s transaction: %s error: %@");
  os_unfair_lock_unlock(v75);
  sub_1DA81AACC(v34, v74, type metadata accessor for UserNotificationsVendorTransaction);
  v76 = sub_1DA940584();
  v77 = sub_1DA940F34();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v99[0] = v79;
    *v78 = 136315138;
    sub_1DA81AACC(v74, v91, type metadata accessor for UserNotificationsVendorTransaction);
    v80 = sub_1DA940A74();
    v82 = v81;
    sub_1DA866354(v74, type metadata accessor for UserNotificationsVendorTransaction);
    v83 = sub_1DA7AE6E8(v80, v82, v99);

    *(v78 + 4) = v83;
    _os_log_impl(&dword_1DA7A9000, v76, v77, "notificationRepositoryDidPerformUpdates: completed transaction: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1E12739F0](v79, -1, -1);
    MEMORY[0x1E12739F0](v78, -1, -1);
  }

  else
  {

    sub_1DA866354(v74, type metadata accessor for UserNotificationsVendorTransaction);
  }

  return sub_1DA866354(v34, type metadata accessor for UserNotificationsVendorTransaction);
}

uint64_t sub_1DA8F2010(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *MEMORY[0x1E69E9840];
  sub_1DA940A94();
  v4 = xpc_copy_entitlement_for_token();

  if (v4)
  {
    v5 = MEMORY[0x1E1273B90](v4);
    if (v5 == sub_1DA9405B4())
    {
      value = xpc_BOOL_get_value(v4);
      swift_unknownObjectRelease();
      v6 = value ^ a3 ^ 1;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v6 = 0;
LABEL_6:
  v8 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

uint64_t sub_1DA8F211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v18 = swift_getObjectType();
  return a10(a1, a2, a3, a5, a7, a8, a9, v21, ObjectType, v18, a4, a6);
}

uint64_t sub_1DA8F21C8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = *(v1 + 48);
      MEMORY[0x1EEE9AC00](v2);
      sub_1DA9406E4();
      sub_1DA9406A4();

      return swift_unknownObjectRelease();
    }
  }

  if (qword_1EE114E10 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1EE114E20);
  v6 = sub_1DA940584();
  v7 = sub_1DA940F14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DA7A9000, v6, v7, "Received request while deallocating", v8, 2u);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  return sub_1DA9406D4();
}

uint64_t sub_1DA8F239C()
{
  v0 = sub_1DA8F2010(0xD00000000000002ALL, 0x80000001DA9525D0, 1);
  if (v0)
  {
    MEMORY[0x1EEE9AC00](v0);
    type metadata accessor for VendorSession();
    sub_1DA8F71B4(&unk_1EE113808, type metadata accessor for VendorSession);
    return sub_1DA9406C4();
  }

  else
  {
    if (qword_1EE114E10 != -1)
    {
      swift_once();
    }

    v2 = sub_1DA9405A4();
    __swift_project_value_buffer(v2, qword_1EE114E20);

    v3 = sub_1DA940584();
    v4 = sub_1DA940F14();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v5 = 136315394;
      sub_1DA9406F4();

      v6 = sub_1DA940A74();
      v8 = sub_1DA7AE6E8(v6, v7, &v10);

      *(v5 + 4) = v8;
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_1DA7AE6E8(0xD00000000000002ALL, 0x80000001DA9525D0, &v10);
      _os_log_impl(&dword_1DA7A9000, v3, v4, "UserNotificationsVendorServer request: %s rejected for missing entitlement: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v9, -1, -1);
      MEMORY[0x1E12739F0](v5, -1, -1);
    }

    return sub_1DA9406D4();
  }
}

uint64_t sub_1DA8F2678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a3;
  v42 = a2;
  v40[1] = a1;
  v6 = sub_1DA93FB24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v4 + 96);
  os_unfair_lock_lock(*(v43 + 16));
  sub_1DA93FB14();
  v12 = *(v4 + 24);
  v11 = *(v4 + 32);
  v13 = sub_1DA940674();
  v49[3] = v13;
  v49[4] = &off_1F5639018;
  v49[0] = a1;
  v14 = type metadata accessor for VendorSession();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v45 = *(v4 + 56);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v49, v13);
  v19 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v47 = v13;
  v48 = &off_1F5639018;
  *&v46 = v23;
  (*(v7 + 56))(v17 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_clientUUID, 1, 1, v6);
  *(v17 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_historicalNotificationsRequestProcessor) = 0;
  v24 = v17 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_delegate;
  *(v17 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_actionResponder + 8) = 0;
  swift_unknownObjectWeakInit();
  v25 = *(v7 + 32);
  v44 = v6;
  v25(v17 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_key, v10, v6);
  sub_1DA7B9FAC(&v46, v17 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_session);
  *(v24 + 8) = &off_1F5638970;
  swift_unknownObjectWeakAssign();
  *(v17 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_notificationRepository) = v12;
  *(v17 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_categoryRepositoryAggregator) = v11;
  *(v17 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_settingsProvider) = v45;
  *(v17 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_actionResponder + 8) = v41;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  __swift_destroy_boxed_opaque_existential_1(v49);
  if (qword_1EE114E10 != -1)
  {
    swift_once();
  }

  v26 = sub_1DA9405A4();
  __swift_project_value_buffer(v26, qword_1EE114E20);

  v27 = sub_1DA940584();
  v28 = sub_1DA940F34();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49[0] = v30;
    *v29 = 136315138;

    v32 = sub_1DA8F6E64(v31);
    v34 = v33;

    v35 = sub_1DA7AE6E8(v32, v34, v49);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_1DA7A9000, v27, v28, "Accepted incomingConnection: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1E12739F0](v30, -1, -1);
    MEMORY[0x1E12739F0](v29, -1, -1);
  }

  v36 = v44;
  (*(v7 + 16))(v10, v17 + OBJC_IVAR____TtC21UserNotificationsCore13VendorSession_key, v44);
  swift_beginAccess();

  v37 = *(v4 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v46 = *(v4 + 104);
  *(v4 + 104) = 0x8000000000000000;
  sub_1DA90C414(v17, v10, isUniquelyReferenced_nonNull_native);
  (*(v7 + 8))(v10, v36);
  *(v4 + 104) = v46;
  swift_endAccess();
  os_unfair_lock_unlock(*(v43 + 16));
  return v17;
}
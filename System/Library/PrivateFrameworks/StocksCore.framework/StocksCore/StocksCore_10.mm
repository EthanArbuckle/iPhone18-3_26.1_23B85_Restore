uint64_t sub_1DAB3F85C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA60950(0, &unk_1ECBE7AF0);
  v6[3] = 3;
  v6[2] = 1;
  v6[1] = 5;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  result = sub_1DACB8094();
  qword_1ECBE7AB0 = result;
  return result;
}

uint64_t sub_1DAB3F9CC()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v13[15] = 1;
  sub_1DAA60950(0, qword_1EE1255D8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1ECBE7AB8 = result;
  return result;
}

uint64_t sub_1DAB3FBE4()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB8024();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1DAA60950(0, &qword_1EE124120);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D638 = result;
  return result;
}

uint64_t sub_1DAB3FDD8()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1DAA60950(0, &qword_1EE124120);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D5F0 = result;
  return result;
}

uint64_t sub_1DAB40038()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8024();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v13[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1200E0 = result;
  return result;
}

uint64_t sub_1DAB4024C()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8024();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v13[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D6A0 = result;
  return result;
}

uint64_t sub_1DAB4043C()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8024();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v13[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D6B8 = result;
  return result;
}

uint64_t sub_1DAB4062C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAA4A8CC(0, &qword_1EE124130, sub_1DAB44384);
  v14[15] = 0;
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1DAA4A9E8(0, &qword_1EE123B60, &qword_1EE124140);
  sub_1DAA4AA40(0, &qword_1EE124140);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1DACC2610;
  v14[14] = 0;
  sub_1DACB8044();
  v14[13] = 1;
  sub_1DACB8044();
  v14[12] = 2;
  sub_1DACB8044();
  sub_1DAB443D8();
  result = sub_1DACB8064();
  qword_1EE124190 = result;
  return result;
}

uint64_t sub_1DAB409CC()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v14[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE124218 = result;
  return result;
}

uint64_t sub_1DAB40C04()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v14[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1241F0 = result;
  return result;
}

uint64_t sub_1DAB40E3C()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB8024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7FD4();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v1 + 16))(v4, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v0);
  result = sub_1DACB7FB4();
  qword_1EE1241A8 = result;
  return result;
}

uint64_t sub_1DAB4104C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1DAA60950(0, &qword_1EE124120);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE124200 = result;
  return result;
}

uint64_t sub_1DAB41288()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1DAA60950(0, &qword_1EE124120);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1241D8 = result;
  return result;
}

uint64_t sub_1DAB414C4()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1DAA60950(0, &qword_1EE124120);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1241C0 = result;
  return result;
}

uint64_t sub_1DAB41700()
{
  v15 = sub_1DACB8024();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DACB8034();
  v4 = *(v14 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA60950(0, &qword_1EE11D4D8);
  v13[0] = ".kvs_cleanup_permission";
  v13[1] = v8;
  v17 = 0x404E000000000000;
  sub_1DAA4A9E8(0, &qword_1EE11CEC8, &qword_1EE11D4E8);
  sub_1DAA4AA40(0, &qword_1EE11D4E8);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1DACC1D30;
  v16 = 0x3FF0000000000000;
  sub_1DACB8044();
  v16 = 0x4014000000000000;
  sub_1DACB8044();
  v16 = 0x4024000000000000;
  sub_1DACB8044();
  v16 = 0x404E000000000000;
  sub_1DACB8044();
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6EA0], v14);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E88], v15);
  result = sub_1DACB8064();
  qword_1EE11D660 = result;
  return result;
}

uint64_t sub_1DAB41A80()
{
  v15 = sub_1DACB8024();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DACB8034();
  v4 = *(v14 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4A8CC(0, &qword_1EE11D4E0, sub_1DAB442DC);
  v13[1] = "ce.stocks_data_service_enabled";
  v13[2] = v8;
  v19 = 0;
  sub_1DAA4A9E8(0, &qword_1EE11CED0, &unk_1EE11D4F0);
  sub_1DAA4AA40(0, &unk_1EE11D4F0);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1DACC2610;
  v18 = 0;
  sub_1DACB8044();
  v17 = 1;
  sub_1DACB8044();
  v16 = 2;
  sub_1DACB8044();
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6EA0], v14);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E88], v15);
  sub_1DAB44330();
  result = sub_1DACB8064();
  qword_1EE11D508 = result;
  return result;
}

uint64_t sub_1DAB41E10()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v14[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE124178 = result;
  return result;
}

uint64_t sub_1DAB42048()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v14[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D650 = result;
  return result;
}

uint64_t sub_1DAB422A4()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7FA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D530 = result;
  return result;
}

uint64_t sub_1DAB42498()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7FA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1ECBE7AC0 = result;
  return result;
}

uint64_t sub_1DAB42668()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7FA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1ECBE7AC8 = result;
  return result;
}

uint64_t sub_1DAB42838()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7FA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1ECBE7AD0 = result;
  return result;
}

uint64_t sub_1DAB42A08()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7FA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D5A8 = result;
  return result;
}

uint64_t sub_1DAB42BFC()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7FA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D5B8 = result;
  return result;
}

uint64_t sub_1DAB42DCC()
{
  v18 = sub_1DACB8024();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1DACB7FA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v10 + 104))(v13, *MEMORY[0x1E69D6D00], v9);
  v14 = *MEMORY[0x1E69B5010];
  *v8 = sub_1DACB9324();
  v8[1] = v15;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6E98], v4);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E90], v18);
  result = sub_1DACB8084();
  qword_1EE11D598 = result;
  return result;
}

uint64_t sub_1DAB4305C()
{
  v18 = sub_1DACB8024();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1DACB7FA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v10 + 104))(v13, *MEMORY[0x1E69D6D00], v9);
  v14 = *MEMORY[0x1E69B5010];
  *v8 = sub_1DACB9324();
  v8[1] = v15;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6E98], v4);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E90], v18);
  result = sub_1DACB8084();
  qword_1EE11D560 = result;
  return result;
}

uint64_t sub_1DAB432EC()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7FA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  v10 = *MEMORY[0x1E69B5030];
  sub_1DACB9324();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D588 = result;
  return result;
}

uint64_t sub_1DAB434CC()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7FA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D570 = result;
  return result;
}

uint64_t sub_1DAB4369C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7FA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D548 = result;
  return result;
}

uint64_t sub_1DAB43890()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v8 = 0xD00000000000001CLL;
  v8[1] = 0x80000001DACE7990;
  (*(v9 + 104))(v8, *MEMORY[0x1E69D6E98]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v14[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1ECBE7AD8 = result;
  return result;
}

uint64_t sub_1DAB43AA0()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v8 = 0xD00000000000001CLL;
  v8[1] = 0x80000001DACE7990;
  (*(v9 + 104))(v8, *MEMORY[0x1E69D6E98]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v14[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1ECBE7AE0 = result;
  return result;
}

uint64_t sub_1DAB43CB0()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB8034();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = 0xD00000000000001CLL;
  v8[1] = 0x80000001DACE7990;
  (*(v9 + 104))(v8, *MEMORY[0x1E69D6E98]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v14[1] = 0x4024000000000000;
  sub_1DAA60950(0, &qword_1EE11D4D8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1ECBE7AE8 = result;
  return result;
}

uint64_t sub_1DAB43EBC()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8024();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E88]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v13[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1200D0 = result;
  return result;
}

unint64_t sub_1DAB440AC()
{
  result = qword_1EE1248D8;
  if (!qword_1EE1248D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1248D8);
  }

  return result;
}

unint64_t sub_1DAB44100()
{
  result = qword_1EE11E618;
  if (!qword_1EE11E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E618);
  }

  return result;
}

unint64_t sub_1DAB44234()
{
  result = qword_1EE11E610;
  if (!qword_1EE11E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E610);
  }

  return result;
}

unint64_t sub_1DAB44288()
{
  result = qword_1EE1248D0;
  if (!qword_1EE1248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1248D0);
  }

  return result;
}

unint64_t sub_1DAB442DC()
{
  result = qword_1EE11E620;
  if (!qword_1EE11E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E620);
  }

  return result;
}

unint64_t sub_1DAB44330()
{
  result = qword_1EE11E628;
  if (!qword_1EE11E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E628);
  }

  return result;
}

unint64_t sub_1DAB44384()
{
  result = qword_1EE1248E0;
  if (!qword_1EE1248E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1248E0);
  }

  return result;
}

unint64_t sub_1DAB443D8()
{
  result = qword_1EE1248E8;
  if (!qword_1EE1248E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1248E8);
  }

  return result;
}

uint64_t sub_1DAB44448(void *a1)
{
  v2 = type metadata accessor for AppConfiguration(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DACB82E4();
  v6 = a1[2];
  sub_1DAB44A40(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DACC1D20;
  v8 = a1[6];
  v9 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v8);
  (*(v9 + 8))(v8, v9);
  v10 = *(v5 + 164);
  v11 = *(v5 + 165);
  sub_1DACB71E4();
  sub_1DAA640AC(v5);
  *(v7 + 32) = v10;
  *(v7 + 40) = v11;
  v12 = objc_allocWithZone(MEMORY[0x1E69B55A0]);
  v13 = sub_1DACB9634();

  v14 = [v12 initWithContext:v6 resourceIDs:v13 downloadAssets:1];

  v15 = sub_1DACB8294();
  v23 = v14;
  v24 = v15;
  sub_1DAB44ACC(0, &qword_1EE11D3D8, sub_1DAB44A98, MEMORY[0x1E69D6B18]);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1DACB8B44();
  v19 = sub_1DACB89D4();
  sub_1DAB449A0();
  v20 = sub_1DACB8A54();

  return v20;
}

uint64_t sub_1DAB446A0(id *a1)
{
  v2 = v1;
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  v12 = [*a1 fileURL];
  if (v12)
  {
    v13 = v12;
    sub_1DACB7A44();

    (*(v5 + 32))(v11, v9, v4);
    v14 = sub_1DACB7AD4();
    if (!v1)
    {
      v20[0] = v14;
      v20[1] = v15;
      sub_1DAB44A40(0, &qword_1EE11D448, MEMORY[0x1E6969080], MEMORY[0x1E69D6B18]);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v2 = sub_1DACB8AE4();
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    sub_1DAB449EC();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1DAB4488C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB448F0()
{
  v1 = *v0;
  sub_1DAB449A0();
  sub_1DACB8BB4();
  v2 = sub_1DACB89D4();
  v3 = sub_1DACB8A54();

  return v3;
}

unint64_t sub_1DAB449A0()
{
  result = qword_1EE11D0D8;
  if (!qword_1EE11D0D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE11D0D8);
  }

  return result;
}

unint64_t sub_1DAB449EC()
{
  result = qword_1ECBE7B00;
  if (!qword_1ECBE7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7B00);
  }

  return result;
}

void sub_1DAB44A40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAB44ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DAB44B44()
{
  result = qword_1ECBE7B08;
  if (!qword_1ECBE7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7B08);
  }

  return result;
}

uint64_t sub_1DAB44B98()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB44BC8(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1DAB44D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for RawAttributionSource(0);
  v11 = *(v10 + 20);
  v12 = sub_1DACB7AB4();
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for RawAttributionSourceLogo(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  *a5 = a1;
  *(a5 + 1) = a2;
  sub_1DAA6EA70(a3, &a5[v11], &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  return sub_1DAA6EA70(a4, &a5[v13], &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
}

uint64_t sub_1DAB44E8C()
{
  v1 = 0x4C5255656D6F68;
  if (*v0 != 1)
  {
    v1 = 1869049708;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DAB44ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB4C194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAB44F00(uint64_t a1)
{
  v2 = sub_1DAB4B06C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB44F3C(uint64_t a1)
{
  v2 = sub_1DAB4B06C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB44F78(void *a1)
{
  v3 = v1;
  sub_1DAB4B354(0, &qword_1EE11CF40, sub_1DAB4B06C, &type metadata for RawAttributionSource.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B06C();
  sub_1DACBA304();
  v12 = *v3;
  v13 = v3[1];
  v21 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v14 = type metadata accessor for RawAttributionSource(0);
    v15 = *(v14 + 20);
    v20 = 1;
    sub_1DACB7AB4();
    sub_1DAB4B0C0(&qword_1EE1252B8, MEMORY[0x1E6968FB0]);
    sub_1DACBA074();
    v16 = *(v14 + 24);
    v19 = 2;
    type metadata accessor for RawAttributionSourceLogo(0);
    sub_1DAB4B0C0(&qword_1EE11DF00, type metadata accessor for RawAttributionSourceLogo);
    sub_1DACBA074();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DAB451D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1DAA52FAC(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v31 - v5;
  sub_1DAA52FAC(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  sub_1DAB4B354(0, &qword_1ECBE7B10, sub_1DAB4B06C, &type metadata for RawAttributionSource.CodingKeys, MEMORY[0x1E69E6F48]);
  v34 = *(v10 - 8);
  v35 = v10;
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - v12;
  v14 = type metadata accessor for RawAttributionSource(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v15 + 28);
  v20 = sub_1DACB7AB4();
  v21 = *(*(v20 - 8) + 56);
  v38 = v19;
  v21(v18 + v19, 1, 1, v20);
  v22 = *(v15 + 32);
  v23 = type metadata accessor for RawAttributionSourceLogo(0);
  v24 = *(*(v23 - 8) + 56);
  v37 = v22;
  v24(v18 + v22, 1, 1, v23);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B06C();
  v26 = v36;
  sub_1DACBA2F4();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1DAA92844(v18 + v38, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    return sub_1DAA92844(v18 + v37, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  }

  else
  {
    v27 = v34;
    v36 = a1;
    v41 = 0;
    *v18 = sub_1DACB9FA4();
    v18[1] = v28;
    v31 = v28;
    v40 = 1;
    sub_1DAB4B0C0(&qword_1EE1252A8, MEMORY[0x1E6968FB0]);
    sub_1DACB9F84();
    sub_1DAA6EA70(v9, v18 + v38, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    v39 = 2;
    sub_1DAB4B0C0(&qword_1ECBE7B18, type metadata accessor for RawAttributionSourceLogo);
    v29 = v33;
    sub_1DACB9F84();
    (*(v27 + 8))(v13, v35);
    sub_1DAA6EA70(v29, v18 + v37, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
    sub_1DAA91EDC(v18, v32, type metadata accessor for RawAttributionSource);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_1DAA7133C(v18, type metadata accessor for RawAttributionSource);
  }
}

uint64_t sub_1DAB4573C@<X0>(uint64_t a1@<X8>)
{
  sub_1DAA52FAC(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - v8;
  sub_1DAA52FAC(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v38 - v14;
  v15 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v41 = *(v15 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for RawAttributionSourceLogo(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA91EDC(v1, v26, type metadata accessor for RawAttributionSourceLogo);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_1DAA6E94C(v26, a1, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  }

  v38 = v15;
  sub_1DAA6E94C(v26, v22, type metadata accessor for RawAttributionSourceLogo.Resolved);
  v27 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  sub_1DAA91EDC(&v22[*(v27 + 28)], v18, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA70878(&v22[*(v19 + 20)], v9, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v28 = *(*(v27 - 8) + 48);
  if (v28(v9, 1, v27) == 1)
  {
    sub_1DAA92844(v9, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v29 = 1;
    v30 = v40;
  }

  else
  {
    v30 = v40;
    sub_1DAA91EDC(&v9[*(v27 + 28)], v40, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DAA7133C(v9, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v29 = 0;
  }

  v32 = *(v41 + 56);
  v33 = v30;
  v34 = v38;
  v41 += 56;
  v32(v33, v29, 1, v38);
  sub_1DAA70878(&v22[*(v19 + 24)], v7, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA7133C(v22, type metadata accessor for RawAttributionSourceLogo.Resolved);
  if (v28(v7, 1, v27) == 1)
  {
    sub_1DAA92844(v7, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v35 = 1;
    v36 = v39;
  }

  else
  {
    v36 = v39;
    sub_1DAA91EDC(&v7[*(v27 + 28)], v39, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DAA7133C(v7, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v35 = 0;
  }

  v32(v36, v35, 1, v34);
  sub_1DAA6E94C(v18, a1, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v37 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  sub_1DAA6EA04(v40, a1 + *(v37 + 20), qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  return sub_1DAA6EA04(v36, a1 + *(v37 + 24), qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
}

uint64_t sub_1DAB45D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1DACB7AB4();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_1DAB45E28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DACB7AB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1DAB45E90(uint64_t a1)
{
  v3 = sub_1DACB7AB4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1DAB45F3C(double a1)
{
  result = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

BOOL sub_1DAB45FB4(uint64_t a1, uint64_t a2)
{
  if ((sub_1DACB7A34() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1DAB46004()
{
  if (*v0)
  {
    result = 0x656E696C65736162;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_1DAB46044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xEE0074657366664FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAB46128(uint64_t a1)
{
  v2 = sub_1DAB4B108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB46164(uint64_t a1)
{
  v2 = sub_1DAB4B108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB461A0(void *a1)
{
  v3 = v1;
  sub_1DAB4B354(0, &qword_1ECBE7B20, sub_1DAB4B108, &type metadata for RawAttributionSourceLogo.Unresolved.Variant.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B108();
  sub_1DACBA304();
  v16 = 0;
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1252B8, MEMORY[0x1E6968FB0]);
  sub_1DACBA0E4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
    v15 = 1;
    sub_1DACBA0B4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DAB46388()
{
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
  sub_1DACB91F4();
  v1 = *(v0 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1E1277D90](*&v1);
}

uint64_t sub_1DAB46428()
{
  sub_1DACBA284();
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
  sub_1DACB91F4();
  v1 = *(v0 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB464D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1DACB7AB4();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB4B354(0, &qword_1ECBE7B30, sub_1DAB4B108, &type metadata for RawAttributionSourceLogo.Unresolved.Variant.CodingKeys, MEMORY[0x1E69E6F48]);
  v29 = v7;
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B108();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v14;
  v16 = v25;
  v17 = v26;
  v31 = 0;
  sub_1DAB4B0C0(&qword_1EE1252A8, MEMORY[0x1E6968FB0]);
  v18 = v27;
  sub_1DACB9FE4();
  v19 = v23;
  (*(v17 + 32))(v23, v28, v18);
  v30 = 1;
  sub_1DACB9FC4();
  v21 = v20;
  (*(v16 + 8))(v10, v29);
  *(v19 + *(v11 + 20)) = v21;
  sub_1DAA91EDC(v19, v24, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DAA7133C(v19, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
}

uint64_t sub_1DAB46898(uint64_t a1, uint64_t a2)
{
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
  sub_1DACB91F4();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1E1277D90](*&v4);
}

uint64_t sub_1DAB46934(uint64_t a1, uint64_t a2)
{
  sub_1DACBA284();
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
  sub_1DACB91F4();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v4);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB46A3C(uint64_t a1)
{
  v2 = sub_1DAB4B15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB46A78(uint64_t a1)
{
  v2 = sub_1DAB4B15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB46AB4(void *a1)
{
  sub_1DAB4B354(0, &qword_1EE11CF20, sub_1DAB4B15C, &type metadata for RawAttributionSourceLogo.Unresolved.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B15C();
  sub_1DACBA304();
  v17 = 0;
  type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  sub_1DAB4B0C0(&qword_1ECBE7B38, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DACBA0E4();
  if (!v1)
  {
    v10 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
    v11 = *(v10 + 20);
    v16 = 1;
    sub_1DACBA074();
    v12 = *(v10 + 24);
    v15 = 2;
    sub_1DACBA074();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DAB46CE0()
{
  v1 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v26 = *(v1 - 8);
  v2 = *(v26 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v24 - v5;
  sub_1DAA52FAC(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
  sub_1DACB91F4();
  v13 = *(v0 + *(v1 + 20));
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v13);
  v14 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v15 = *(v14 + 20);
  v27 = v0;
  v16 = v26;
  sub_1DAA70878(v0 + v15, v12, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v17 = *(v16 + 48);
  if (v17(v12, 1, v1) == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    v18 = v12;
    v19 = v24;
    sub_1DAA6E94C(v18, v24, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DACBA2A4();
    sub_1DACB91F4();
    v20 = *(v19 + *(v1 + 20));
    if (v20 == 0.0)
    {
      v20 = 0.0;
    }

    MEMORY[0x1E1277D90](*&v20);
    sub_1DAA7133C(v19, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  }

  sub_1DAA70878(v27 + *(v14 + 24), v10, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  if (v17(v10, 1, v1) == 1)
  {
    return sub_1DACBA2A4();
  }

  v22 = v25;
  sub_1DAA6E94C(v10, v25, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DACBA2A4();
  sub_1DACB91F4();
  v23 = *(v22 + *(v1 + 20));
  if (v23 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v23);
  return sub_1DAA7133C(v22, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
}

uint64_t sub_1DAB470A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1DAA52FAC(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v27 - v8;
  v36 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v9 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB4B354(0, &qword_1ECBE7B40, sub_1DAB4B15C, &type metadata for RawAttributionSourceLogo.Unresolved.CodingKeys, MEMORY[0x1E69E6F48]);
  v35 = v11;
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v15 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B15C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v32;
  v21 = v33;
  v28 = v15;
  v29 = a1;
  v39 = 0;
  sub_1DAB4B0C0(&qword_1ECBE7B48, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v22 = v34;
  sub_1DACB9FE4();
  v34 = v18;
  sub_1DAA6E94C(v22, v18, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v38 = 1;
  sub_1DACB9F84();
  sub_1DAA6EA04(v21, &v34[*(v28 + 20)], qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v37 = 2;
  v23 = v31;
  sub_1DACB9F84();
  v24 = v29;
  (*(v20 + 8))(v14, v35);
  v25 = v34;
  sub_1DAA6EA04(v23, &v34[*(v28 + 24)], qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA91EDC(v25, v30, type metadata accessor for RawAttributionSourceLogo.Unresolved);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1DAA7133C(v25, type metadata accessor for RawAttributionSourceLogo.Unresolved);
}

uint64_t sub_1DAB476EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, unint64_t *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>)
{
  sub_1DAA6E94C(a1, a8, a4);
  v14 = a5(0);
  sub_1DAA6EA04(a2, a8 + *(v14 + 20), a6, a7);
  return sub_1DAA6EA04(a3, a8 + *(v14 + 24), a6, a7);
}

uint64_t sub_1DAB4777C()
{
  v1 = *v0;
  sub_1DAB0B080(*v0, *(v0 + 8));
  return v1;
}

BOOL sub_1DAB4780C(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0) + 28);
  v5 = a1 + v4;
  v6 = a2 + v4;
  if ((sub_1DACB7A34() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  return *(v5 + *(v7 + 20)) == *(v6 + *(v7 + 20));
}

uint64_t sub_1DAB47878()
{
  v1 = v0 + *(type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0) + 28);
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
  sub_1DACB91F4();
  v2 = *(v1 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1E1277D90](*&v2);
}

uint64_t sub_1DAB47928()
{
  v1 = 1635017060;
  v2 = 0x656E696C65736162;
  if (*v0 != 2)
  {
    v2 = 0x766C6F7365726E75;
  }

  if (*v0)
  {
    v1 = 0x656C616373;
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

uint64_t sub_1DAB479A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAB4C2AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAB479D0(uint64_t a1)
{
  v2 = sub_1DAB4B1B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB47A0C(uint64_t a1)
{
  v2 = sub_1DAB4B1B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB47A48(void *a1)
{
  v3 = v1;
  sub_1DAB4B354(0, &qword_1ECBE7B50, sub_1DAB4B1B0, &type metadata for RawAttributionSourceLogo.Resolved.Variant.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B1B0();
  sub_1DACBA304();
  v12 = v3[1];
  v17 = *v3;
  v18 = v12;
  v19 = 0;
  sub_1DAB0B080(v17, v12);
  sub_1DAB0C0CC();
  sub_1DACBA0E4();
  if (v2)
  {
    sub_1DAA563C0(v17, v18);
  }

  else
  {
    sub_1DAA563C0(v17, v18);
    v13 = v3[2];
    LOBYTE(v17) = 1;
    sub_1DACBA0B4();
    v14 = v3[3];
    LOBYTE(v17) = 2;
    sub_1DACBA0B4();
    v15 = *(type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0) + 28);
    LOBYTE(v17) = 3;
    type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
    sub_1DAB4B0C0(&qword_1ECBE7B38, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DAB47CB4()
{
  sub_1DACBA284();
  v1 = v0 + *(type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0) + 28);
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
  sub_1DACB91F4();
  v2 = *(v1 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v2);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB47D74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v3 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB4B354(0, &qword_1ECBE7B60, sub_1DAB4B1B0, &type metadata for RawAttributionSourceLogo.Resolved.Variant.CodingKeys, MEMORY[0x1E69E6F48]);
  v30 = v6;
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B1B0();
  v31 = v9;
  v15 = v32;
  sub_1DACBA2F4();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v10;
  v16 = v27;
  v17 = a1;
  v32 = v5;
  v18 = v13;
  v19 = v29;
  v34 = 0;
  sub_1DAB0C014();
  v20 = v30;
  sub_1DACB9FE4();
  *v18 = v33;
  LOBYTE(v33) = 1;
  sub_1DACB9FC4();
  *(v18 + 16) = v21;
  LOBYTE(v33) = 2;
  sub_1DACB9FC4();
  *(v18 + 24) = v22;
  LOBYTE(v33) = 3;
  sub_1DAB4B0C0(&qword_1ECBE7B48, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v23 = v32;
  sub_1DACB9FE4();
  (*(v16 + 8))(v31, v20);
  sub_1DAA6E94C(v23, v18 + *(v26 + 28), type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  sub_1DAA91EDC(v18, v19, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_1DAA7133C(v18, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
}

uint64_t sub_1DAB4818C(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 28);
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
  sub_1DACB91F4();
  v4 = *(v3 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1E1277D90](*&v4);
}

uint64_t sub_1DAB48234(uint64_t a1, uint64_t a2)
{
  sub_1DACBA284();
  v4 = v2 + *(a2 + 28);
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
  sub_1DACB91F4();
  v5 = *(v4 + *(type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0) + 20));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v5);
  return sub_1DACBA2C4();
}

BOOL sub_1DAB482EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = a1 + v3;
  v5 = a2 + v3;
  if ((sub_1DACB7A34() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  return *(v4 + *(v6 + 20)) == *(v5 + *(v6 + 20));
}

uint64_t sub_1DAB4834C(uint64_t a1)
{
  v2 = sub_1DAB4B204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB48388(uint64_t a1)
{
  v2 = sub_1DAB4B204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB483C4(void *a1)
{
  sub_1DAB4B354(0, &qword_1ECBE7B68, sub_1DAB4B204, &type metadata for RawAttributionSourceLogo.Resolved.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B204();
  sub_1DACBA304();
  v17 = 0;
  type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  sub_1DAB4B0C0(&qword_1ECBE7B78, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DACBA0E4();
  if (!v1)
  {
    v10 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
    v11 = *(v10 + 20);
    v16 = 1;
    sub_1DACBA074();
    v12 = *(v10 + 24);
    v15 = 2;
    sub_1DACBA074();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DAB485F0()
{
  v1 = v0;
  v2 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v31 - v6;
  sub_1DAA52FAC(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = v0 + *(v2 + 28);
  sub_1DACB7AB4();
  sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
  sub_1DACB91F4();
  v14 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v15 = *(v13 + *(v14 + 20));
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v15);
  v16 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  v17 = *(v16 + 20);
  v36 = v1;
  v18 = v1 + v17;
  v19 = v34;
  sub_1DAA70878(v18, v12, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v20 = *(v19 + 48);
  v21 = v20(v12, 1, v2);
  v31 = v14;
  if (v21 == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    v22 = v12;
    v23 = v32;
    sub_1DAA6E94C(v22, v32, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    sub_1DACBA2A4();
    v24 = v23 + *(v2 + 28);
    sub_1DACB91F4();
    v25 = *(v24 + *(v14 + 20));
    if (v25 == 0.0)
    {
      v25 = 0.0;
    }

    MEMORY[0x1E1277D90](*&v25);
    sub_1DAA7133C(v23, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  }

  v26 = v35;
  sub_1DAA70878(v36 + *(v16 + 24), v35, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  if (v20(v26, 1, v2) == 1)
  {
    return sub_1DACBA2A4();
  }

  v28 = v33;
  sub_1DAA6E94C(v26, v33, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DACBA2A4();
  v29 = v28 + *(v2 + 28);
  sub_1DACB91F4();
  v30 = *(v29 + *(v31 + 20));
  if (v30 == 0.0)
  {
    v30 = 0.0;
  }

  MEMORY[0x1E1277D90](*&v30);
  return sub_1DAA7133C(v28, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
}

uint64_t sub_1DAB489DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1DAA52FAC(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v27 - v8;
  v36 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  v9 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB4B354(0, &qword_1ECBE7B80, sub_1DAB4B204, &type metadata for RawAttributionSourceLogo.Resolved.CodingKeys, MEMORY[0x1E69E6F48]);
  v35 = v11;
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v15 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B204();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v32;
  v21 = v33;
  v28 = v15;
  v29 = a1;
  v39 = 0;
  sub_1DAB4B0C0(&qword_1ECBE7B88, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v22 = v34;
  sub_1DACB9FE4();
  v34 = v18;
  sub_1DAA6E94C(v22, v18, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v38 = 1;
  sub_1DACB9F84();
  sub_1DAA6EA04(v21, &v34[*(v28 + 20)], qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v37 = 2;
  v23 = v31;
  sub_1DACB9F84();
  v24 = v29;
  (*(v20 + 8))(v14, v35);
  v25 = v34;
  sub_1DAA6EA04(v23, &v34[*(v28 + 24)], qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA91EDC(v25, v30, type metadata accessor for RawAttributionSourceLogo.Resolved);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1DAA7133C(v25, type metadata accessor for RawAttributionSourceLogo.Resolved);
}

uint64_t sub_1DAB48F44()
{
  if (*v0)
  {
    result = 0x6465766C6F736572;
  }

  else
  {
    result = 0x766C6F7365726E75;
  }

  *v0;
  return result;
}

uint64_t sub_1DAB48F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x766C6F7365726E75 && a2 == 0xEA00000000006465;
  if (v6 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465766C6F736572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAB49068(uint64_t a1)
{
  v2 = sub_1DAB4B300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB490A4(uint64_t a1)
{
  v2 = sub_1DAB4B300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB490EC(uint64_t a1)
{
  v2 = sub_1DAB4B258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB49128(uint64_t a1)
{
  v2 = sub_1DAB4B258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB49164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAB491E4(uint64_t a1)
{
  v2 = sub_1DAB4B2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB49220(uint64_t a1)
{
  v2 = sub_1DAB4B2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB4925C(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1DAB4B354(0, &qword_1EE11CF18, sub_1DAB4B258, &type metadata for RawAttributionSourceLogo.ResolvedCodingKeys, MEMORY[0x1E69E6F58]);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v32 - v5;
  v36 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  v6 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB4B354(0, &qword_1EE11CF10, sub_1DAB4B2AC, &type metadata for RawAttributionSourceLogo.UnresolvedCodingKeys, v2);
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - v10;
  v32 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v11 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RawAttributionSourceLogo(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB4B354(0, &qword_1EE11CF28, sub_1DAB4B300, &type metadata for RawAttributionSourceLogo.CodingKeys, v2);
  v19 = v18;
  v42 = *(v18 - 8);
  v20 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v32 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B300();
  sub_1DACBA304();
  sub_1DAA91EDC(v41, v17, type metadata accessor for RawAttributionSourceLogo);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v37;
    sub_1DAA6E94C(v17, v37, type metadata accessor for RawAttributionSourceLogo.Resolved);
    v44 = 1;
    sub_1DAB4B258();
    v25 = v38;
    sub_1DACBA014();
    sub_1DAB4B0C0(&qword_1ECBE7B90, type metadata accessor for RawAttributionSourceLogo.Resolved);
    v26 = v40;
    sub_1DACBA0E4();
    (*(v39 + 8))(v25, v26);
    v27 = type metadata accessor for RawAttributionSourceLogo.Resolved;
    v28 = v24;
  }

  else
  {
    sub_1DAA6E94C(v17, v13, type metadata accessor for RawAttributionSourceLogo.Unresolved);
    v43 = 0;
    sub_1DAB4B2AC();
    v29 = v33;
    sub_1DACBA014();
    sub_1DAB4B0C0(&qword_1EE11DF38, type metadata accessor for RawAttributionSourceLogo.Unresolved);
    v30 = v35;
    sub_1DACBA0E4();
    (*(v34 + 8))(v29, v30);
    v27 = type metadata accessor for RawAttributionSourceLogo.Unresolved;
    v28 = v13;
  }

  sub_1DAA7133C(v28, v27);
  return (*(v42 + 8))(v22, v19);
}

uint64_t sub_1DAB497D0()
{
  v0 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  v69 = *(v0 - 8);
  v70 = v0;
  v1 = *(v69 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v67 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v62 - v4;
  sub_1DAA52FAC(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v62 - v9;
  v72 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  v10 = *(*(v72 - 1) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v65 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v62 - v18;
  sub_1DAA52FAC(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v62 - v24;
  v26 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for RawAttributionSourceLogo(0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA91EDC(v73, v33, type metadata accessor for RawAttributionSourceLogo);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAA6E94C(v33, v12, type metadata accessor for RawAttributionSourceLogo.Resolved);
    MEMORY[0x1E1277D70](1);
    v34 = v70;
    v35 = &v12[*(v70 + 28)];
    v36 = sub_1DACB7AB4();
    sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
    sub_1DACB91F4();
    v37 = *&v35[*(v13 + 20)];
    if (v37 == 0.0)
    {
      v37 = 0.0;
    }

    MEMORY[0x1E1277D90](*&v37);
    v38 = v72;
    v39 = v68;
    sub_1DAA70878(&v12[*(v72 + 5)], v68, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v40 = v13;
    v41 = *(v69 + 48);
    v42 = v41(v39, 1, v34);
    v73 = v36;
    v63 = v40;
    if (v42 == 1)
    {
      sub_1DACBA2A4();
    }

    else
    {
      v45 = v12;
      v46 = v66;
      sub_1DAA6E94C(v39, v66, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
      sub_1DACBA2A4();
      v47 = v46 + *(v34 + 28);
      sub_1DACB91F4();
      v48 = *(v47 + *(v40 + 20));
      if (v48 == 0.0)
      {
        v48 = 0.0;
      }

      MEMORY[0x1E1277D90](*&v48);
      v49 = v46;
      v12 = v45;
      v38 = v72;
      sub_1DAA7133C(v49, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    }

    v50 = v71;
    sub_1DAA70878(&v12[*(v38 + 24)], v71, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    if (v41(v50, 1, v34) == 1)
    {
      sub_1DACBA2A4();
    }

    else
    {
      v54 = v67;
      sub_1DAA6E94C(v50, v67, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
      sub_1DACBA2A4();
      v55 = v54 + *(v34 + 28);
      sub_1DACB91F4();
      v56 = *(v55 + *(v63 + 20));
      if (v56 == 0.0)
      {
        v56 = 0.0;
      }

      MEMORY[0x1E1277D90](*&v56);
      sub_1DAA7133C(v54, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    }

    v57 = type metadata accessor for RawAttributionSourceLogo.Resolved;
    v58 = v12;
  }

  else
  {
    v72 = v23;
    sub_1DAA6E94C(v33, v29, type metadata accessor for RawAttributionSourceLogo.Unresolved);
    MEMORY[0x1E1277D70](0);
    sub_1DACB7AB4();
    sub_1DAB4B0C0(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
    sub_1DACB91F4();
    v43 = *&v29[*(v13 + 20)];
    if (v43 == 0.0)
    {
      v43 = 0.0;
    }

    MEMORY[0x1E1277D90](*&v43);
    sub_1DAA70878(&v29[*(v26 + 20)], v25, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v44 = *(v14 + 48);
    v73 = v14 + 48;
    if (v44(v25, 1, v13) == 1)
    {
      sub_1DACBA2A4();
    }

    else
    {
      v51 = v64;
      sub_1DAA6E94C(v25, v64, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      sub_1DACBA2A4();
      sub_1DACB91F4();
      v52 = *(v51 + *(v13 + 20));
      if (v52 == 0.0)
      {
        v52 = 0.0;
      }

      MEMORY[0x1E1277D90](*&v52);
      sub_1DAA7133C(v51, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    }

    v53 = v72;
    sub_1DAA70878(&v29[*(v26 + 24)], v72, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    if (v44(v53, 1, v13) == 1)
    {
      sub_1DACBA2A4();
    }

    else
    {
      v59 = v65;
      sub_1DAA6E94C(v53, v65, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      sub_1DACBA2A4();
      sub_1DACB91F4();
      v60 = *(v59 + *(v13 + 20));
      if (v60 == 0.0)
      {
        v60 = 0.0;
      }

      MEMORY[0x1E1277D90](*&v60);
      sub_1DAA7133C(v59, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    }

    v57 = type metadata accessor for RawAttributionSourceLogo.Unresolved;
    v58 = v29;
  }

  return sub_1DAA7133C(v58, v57);
}

uint64_t sub_1DAB4A0E8(void (*a1)(_BYTE *))
{
  sub_1DACBA284();
  a1(v3);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB4A130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1DAB4B354(0, &qword_1ECBE7B98, sub_1DAB4B258, &type metadata for RawAttributionSourceLogo.ResolvedCodingKeys, MEMORY[0x1E69E6F48]);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v51 - v6;
  sub_1DAB4B354(0, &qword_1ECBE7BA0, sub_1DAB4B2AC, &type metadata for RawAttributionSourceLogo.UnresolvedCodingKeys, v3);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v51 - v9;
  sub_1DAB4B354(0, &qword_1ECBE7BA8, sub_1DAB4B300, &type metadata for RawAttributionSourceLogo.CodingKeys, v3);
  v61 = v10;
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - v12;
  v14 = type metadata accessor for RawAttributionSourceLogo(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v51 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v51 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB4B300();
  v25 = v64;
  sub_1DACBA2F4();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = v18;
  v52 = v21;
  v53 = v23;
  v54 = 0;
  v26 = v61;
  v27 = v62;
  v28 = v14;
  v64 = a1;
  v29 = v13;
  v30 = sub_1DACB9FF4();
  v31 = v30;
  if (*(v30 + 16) != 1)
  {
    v37 = sub_1DACB9D14();
    swift_allocError();
    v39 = v38;
    sub_1DAB4B3BC();
    v40 = v26;
    v42 = *(v41 + 48);
    *v39 = v28;
    sub_1DACB9F24();
    sub_1DACB9CF4();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v63 + 8))(v29, v40);
    swift_unknownObjectRelease();
    a1 = v64;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if ((*(v30 + 32) & 1) == 0)
  {
    v65 = 0;
    sub_1DAB4B2AC();
    v43 = v54;
    sub_1DACB9F14();
    if (!v43)
    {
      v45 = v13;
      v54 = v31;
      type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
      sub_1DAB4B0C0(&qword_1ECBE7BC8, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      v46 = v52;
      v47 = v57;
      sub_1DACB9FE4();
      v48 = v27;
      v49 = v63;
      (*(v56 + 8))(v48, v47);
      (*(v49 + 8))(v45, v26);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v34 = v53;
      v50 = v46;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v66 = 1;
  sub_1DAB4B258();
  v32 = v60;
  v33 = v54;
  sub_1DACB9F14();
  v34 = v53;
  if (v33)
  {
LABEL_8:
    (*(v63 + 8))(v29, v26);
    swift_unknownObjectRelease();
    a1 = v64;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v62 = v29;
  v54 = v31;
  type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  sub_1DAB4B0C0(&qword_1ECBE7BC0, type metadata accessor for RawAttributionSourceLogo.Resolved);
  v35 = v51;
  v36 = v59;
  sub_1DACB9FE4();
  (*(v58 + 8))(v32, v36);
  (*(v63 + 8))(v62, v26);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v50 = v35;
LABEL_11:
  sub_1DAA6E94C(v50, v34, type metadata accessor for RawAttributionSourceLogo);
  sub_1DAA6E94C(v34, v55, type metadata accessor for RawAttributionSourceLogo);
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_1DAB4A848()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB4A8C4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1DACBA284();
  a3(v5);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB4A928(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1DACBA284();
  a4(v6);
  return sub_1DACBA2C4();
}

BOOL sub_1DAB4A96C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawAttributionSourceLogo.Resolved.Variant(0);
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v54 - v9;
  sub_1DAA52FAC(0, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  sub_1DAA712D8(0, &qword_1ECBE7C68, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v18 = v17;
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v54 - v23;
  v25 = *(v4 + 28);
  v26 = a1 + v25;
  v60 = a2;
  v27 = a2 + v25;
  if ((sub_1DACB7A34() & 1) == 0)
  {
    return 0;
  }

  v28 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  if (*(v26 + *(v28 + 20)) != *(v27 + *(v28 + 20)))
  {
    return 0;
  }

  v55 = v8;
  v56 = v28;
  v58 = v22;
  v57 = type metadata accessor for RawAttributionSourceLogo.Resolved(0);
  v29 = *(v57 + 20);
  v30 = *(v18 + 48);
  sub_1DAA70878(a1 + v29, v24, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA70878(v60 + v29, &v24[v30], qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v32 = v61 + 48;
  v31 = *(v61 + 48);
  if (v31(v24, 1, v4) == 1)
  {
    if (v31(&v24[v30], 1, v4) == 1)
    {
      v61 = v32;
      sub_1DAA92844(v24, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
      goto LABEL_11;
    }

LABEL_8:
    sub_1DAB4C530(v24, &qword_1ECBE7C68, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    return 0;
  }

  sub_1DAA70878(v24, v16, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  if (v31(&v24[v30], 1, v4) == 1)
  {
    sub_1DAA7133C(v16, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    goto LABEL_8;
  }

  v61 = v32;
  sub_1DAA6E94C(&v24[v30], v10, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v33 = *(v4 + 28);
  v34 = &v16[v33];
  v35 = &v10[v33];
  if ((sub_1DACB7A34() & 1) == 0)
  {
    sub_1DAA7133C(v10, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    sub_1DAA7133C(v16, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v45 = v24;
LABEL_22:
    sub_1DAA92844(v45, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    return 0;
  }

  v36 = *(v56 + 20);
  v37 = *&v34[v36];
  v38 = *&v35[v36];
  sub_1DAA7133C(v10, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA7133C(v16, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA92844(v24, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  if (v37 != v38)
  {
    return 0;
  }

LABEL_11:
  v39 = *(v57 + 24);
  v40 = *(v18 + 48);
  v41 = a1 + v39;
  v42 = v58;
  sub_1DAA70878(v41, v58, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA70878(v60 + v39, v42 + v40, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  if (v31(v42, 1, v4) == 1)
  {
    if (v31((v42 + v40), 1, v4) == 1)
    {
      sub_1DAA92844(v42, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
      return 1;
    }

    goto LABEL_16;
  }

  v44 = v59;
  sub_1DAA70878(v42, v59, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  if (v31((v42 + v40), 1, v4) == 1)
  {
    sub_1DAA7133C(v44, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
LABEL_16:
    sub_1DAB4C530(v42, &qword_1ECBE7C68, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    return 0;
  }

  v46 = v42 + v40;
  v47 = v55;
  sub_1DAA6E94C(v46, v55, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  v48 = *(v4 + 28);
  v49 = v44 + v48;
  v50 = v47 + v48;
  if ((sub_1DACB7A34() & 1) == 0)
  {
    sub_1DAA7133C(v47, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    sub_1DAA7133C(v44, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
    v45 = v42;
    goto LABEL_22;
  }

  v51 = *(v56 + 20);
  v52 = *(v49 + v51);
  v53 = *(v50 + v51);
  sub_1DAA7133C(v47, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA7133C(v44, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  sub_1DAA92844(v42, qword_1EE120BF8, type metadata accessor for RawAttributionSourceLogo.Resolved.Variant);
  return v52 == v53;
}

unint64_t sub_1DAB4B06C()
{
  result = qword_1EE11E608;
  if (!qword_1EE11E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E608);
  }

  return result;
}

uint64_t sub_1DAB4B0C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DAB4B108()
{
  result = qword_1ECBE7B28;
  if (!qword_1ECBE7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7B28);
  }

  return result;
}

unint64_t sub_1DAB4B15C()
{
  result = qword_1EE11DF58;
  if (!qword_1EE11DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF58);
  }

  return result;
}

unint64_t sub_1DAB4B1B0()
{
  result = qword_1ECBE7B58;
  if (!qword_1ECBE7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7B58);
  }

  return result;
}

unint64_t sub_1DAB4B204()
{
  result = qword_1ECBE7B70;
  if (!qword_1ECBE7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7B70);
  }

  return result;
}

unint64_t sub_1DAB4B258()
{
  result = qword_1EE11DF30;
  if (!qword_1EE11DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF30);
  }

  return result;
}

unint64_t sub_1DAB4B2AC()
{
  result = qword_1EE11DF18;
  if (!qword_1EE11DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF18);
  }

  return result;
}

unint64_t sub_1DAB4B300()
{
  result = qword_1EE11DF70;
  if (!qword_1EE11DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF70);
  }

  return result;
}

void sub_1DAB4B354(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1DAB4B3BC()
{
  if (!qword_1ECBE7BB0)
  {
    sub_1DAB4B42C();
    sub_1DACB9D04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE7BB0);
    }
  }
}

unint64_t sub_1DAB4B42C()
{
  result = qword_1ECBE7BB8;
  if (!qword_1ECBE7BB8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ECBE7BB8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v11 = a4(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v13 = *(v12 + 48);

    return v13(a1, a2, v11);
  }

  else
  {
    sub_1DAA52FAC(0, a5, a6);
    v16 = v15;
    v17 = *(*(v15 - 8) + 48);
    v18 = a1 + *(a3 + 20);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v13 = a5(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v15 = *(v14 + 56);

    return v15(a1, a2, a2, v13);
  }

  else
  {
    sub_1DAA52FAC(0, a6, a7);
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v20 = a1 + *(a4 + 20);

    return v19(v20, a2, a2, v18);
  }
}

unint64_t sub_1DAB4B958()
{
  result = qword_1ECBE7BF8;
  if (!qword_1ECBE7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7BF8);
  }

  return result;
}

unint64_t sub_1DAB4B9B0()
{
  result = qword_1ECBE7C00;
  if (!qword_1ECBE7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C00);
  }

  return result;
}

unint64_t sub_1DAB4BA08()
{
  result = qword_1ECBE7C08;
  if (!qword_1ECBE7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C08);
  }

  return result;
}

unint64_t sub_1DAB4BA60()
{
  result = qword_1ECBE7C10;
  if (!qword_1ECBE7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C10);
  }

  return result;
}

unint64_t sub_1DAB4BAB8()
{
  result = qword_1ECBE7C18;
  if (!qword_1ECBE7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C18);
  }

  return result;
}

unint64_t sub_1DAB4BB10()
{
  result = qword_1ECBE7C20;
  if (!qword_1ECBE7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C20);
  }

  return result;
}

unint64_t sub_1DAB4BB68()
{
  result = qword_1ECBE7C28;
  if (!qword_1ECBE7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C28);
  }

  return result;
}

unint64_t sub_1DAB4BBC0()
{
  result = qword_1ECBE7C30;
  if (!qword_1ECBE7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C30);
  }

  return result;
}

unint64_t sub_1DAB4BC18()
{
  result = qword_1EE11DF60;
  if (!qword_1EE11DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF60);
  }

  return result;
}

unint64_t sub_1DAB4BC70()
{
  result = qword_1EE11DF68;
  if (!qword_1EE11DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF68);
  }

  return result;
}

unint64_t sub_1DAB4BCC8()
{
  result = qword_1EE11DF08;
  if (!qword_1EE11DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF08);
  }

  return result;
}

unint64_t sub_1DAB4BD20()
{
  result = qword_1EE11DF10;
  if (!qword_1EE11DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF10);
  }

  return result;
}

unint64_t sub_1DAB4BD78()
{
  result = qword_1EE11DF20;
  if (!qword_1EE11DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF20);
  }

  return result;
}

unint64_t sub_1DAB4BDD0()
{
  result = qword_1EE11DF28;
  if (!qword_1EE11DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF28);
  }

  return result;
}

unint64_t sub_1DAB4BE28()
{
  result = qword_1ECBE7C38;
  if (!qword_1ECBE7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C38);
  }

  return result;
}

unint64_t sub_1DAB4BE80()
{
  result = qword_1ECBE7C40;
  if (!qword_1ECBE7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C40);
  }

  return result;
}

unint64_t sub_1DAB4BED8()
{
  result = qword_1ECBE7C48;
  if (!qword_1ECBE7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C48);
  }

  return result;
}

unint64_t sub_1DAB4BF30()
{
  result = qword_1ECBE7C50;
  if (!qword_1ECBE7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C50);
  }

  return result;
}

unint64_t sub_1DAB4BF88()
{
  result = qword_1EE11DF48;
  if (!qword_1EE11DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF48);
  }

  return result;
}

unint64_t sub_1DAB4BFE0()
{
  result = qword_1EE11DF50;
  if (!qword_1EE11DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DF50);
  }

  return result;
}

unint64_t sub_1DAB4C038()
{
  result = qword_1ECBE7C58;
  if (!qword_1ECBE7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C58);
  }

  return result;
}

unint64_t sub_1DAB4C090()
{
  result = qword_1ECBE7C60;
  if (!qword_1ECBE7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C60);
  }

  return result;
}

unint64_t sub_1DAB4C0E8()
{
  result = qword_1EE11E5F8;
  if (!qword_1EE11E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5F8);
  }

  return result;
}

unint64_t sub_1DAB4C140()
{
  result = qword_1EE11E600;
  if (!qword_1EE11E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E600);
  }

  return result;
}

uint64_t sub_1DAB4C194(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C5255656D6F68 && a2 == 0xE700000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DAB4C2AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xEE0074657366664FLL || (sub_1DACBA174() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x766C6F7365726E75 && a2 == 0xEA00000000006465)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DAB4C41C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DAB4C530(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1DAA712D8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1DAB4C5AC@<X0>(void *a1@<X8>)
{
  result = [v1 respondsToSelector_];
  if ((result & 1) != 0 && (result = [v1 stocksFields]) != 0 && (v4 = objc_msgSend(result, sel_stocksMetadataJSON), result = swift_unknownObjectRelease(), v4))
  {
    v5 = sub_1DACB9324();
    v7 = v6;

    v8 = sub_1DACB7554();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_1DACB7544();
    v11 = sub_1DAB4C6F8(v5, v7);
    v13 = v12;
    sub_1DAB4CC1C();
    sub_1DACB7524();
    sub_1DAA563C0(v11, v13);

    v14 = v15;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v14;
  return result;
}

uint64_t sub_1DAB4C6F8(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;
  sub_1DAB4CD58();
  sub_1DACB71E4();
  if (swift_dynamicCast())
  {
    sub_1DAA4D460(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_1DACB7814();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1DAA928A0(__src, &qword_1EE123A88, sub_1DAB4CD58);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1DACB9D24();
  }

  sub_1DAB4CDBC(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1DAB4D42C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1DAB4CE84(sub_1DAB4D4CC);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1DACB7B14();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1DABBE508(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1DACB9454();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1DACB9484();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1DACB9D24();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1DABBE508(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1DACB9464();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1DACB7B24();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1DACB7B24();
    sub_1DAB4D534(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1DAB4D534(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1DAB0B080(*&__src[0], *(&__src[0] + 1));

  sub_1DAA563C0(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

unint64_t sub_1DAB4CC1C()
{
  result = qword_1EE122B40;
  if (!qword_1EE122B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122B40);
  }

  return result;
}

void sub_1DAB4CC70()
{
  if (!qword_1EE11F480)
  {
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F480);
    }
  }
}

uint64_t sub_1DAB4CCC4(uint64_t a1, uint64_t a2)
{
  sub_1DAA53000(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAB4CD58()
{
  result = qword_1EE123A90;
  if (!qword_1EE123A90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE123A90);
  }

  return result;
}

uint64_t sub_1DAB4CDBC@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1DABDEF9C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1DACB7794();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1DACB7744();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1DACB7B04();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1DAB4CE84(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1DAA563C0(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1DACB71F4();
    sub_1DAA563C0(v6, v5);
    *v3 = xmmword_1DACC9000;
    sub_1DAA563C0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      sub_1DACB71F4();
      if (sub_1DACB7754() && __OFSUB__(v6, sub_1DACB7784()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1DACB7794();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1DACB7734();

      v11 = v16;
    }

    if (v12 >= v6)
    {
      sub_1DACB71F4();
      v17 = sub_1DAB4D328(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {
    sub_1DACB71F4();
    sub_1DACB71F4();
    sub_1DAA563C0(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1DACC9000;
    sub_1DAA563C0(0, 0xC000000000000000);
    sub_1DACB7AC4();
    result = sub_1DAB4D328(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_1DAB4D228@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DABDEF9C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DAB4D548(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DAB4D5C4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1DAB4D2BC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1DAB4D328(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1DACB7754();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1DACB7784();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1DACB7774();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1DAB4D3DC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1DACB9CA4();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB4D42C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1DABDEF7C(result);
    }

    else
    {
      v2 = sub_1DACB7794();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1DACB7764();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1DACB7B04();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_1DAB4D4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1DAB4D2BC(sub_1DAB4D648, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1DAB4D534(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DAA563C0(a1, a2);
  }

  return a1;
}

uint64_t sub_1DAB4D548(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1DACB7794();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1DACB7744();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DACB7B04();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1DAB4D5C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1DACB7794();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1DACB7744();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DAB4D68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DACB8204();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  sub_1DACB82E4();
  sub_1DAA4D678(v12 + 16, v24);
  (*(v8 + 16))(v11, a3, v7);
  v13 = v25;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v24[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  sub_1DACB71E4();
  v20 = sub_1DAB4D860(a1, a2, v19, v11);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v21 = sub_1DACB82B4();

  return v21;
}

id sub_1DAB4D860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for YahooBaseOperationFactory();
  v25[3] = v8;
  v25[4] = &off_1F56825C8;
  v25[0] = a3;
  v9 = type metadata accessor for YahooSearchOperation();
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v25, v8);
  v12 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v24[3] = v8;
  v24[4] = &off_1F56825C8;
  v24[0] = v16;
  v17 = &v10[qword_1ECBE8A98];
  *v17 = a1;
  *(v17 + 1) = a2;
  sub_1DAA4D678(v24, &v10[qword_1ECBE8AA0]);
  v18 = qword_1ECBE8AA8;
  v19 = sub_1DACB8204();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v10[v18], a4, v19);
  v23.receiver = v10;
  v23.super_class = v9;
  v21 = objc_msgSendSuper2(&v23, sel_init);
  (*(v20 + 8))(a4, v19);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

uint64_t sub_1DAB4DA40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1DAA4CFDC(v0 + 72, sub_1DAB4DAE8);

  return swift_deallocClassInstance();
}

void sub_1DAB4DA9C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DACB8C24();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1DAB4DB1C()
{
  result = qword_1EE11CE98;
  if (!qword_1EE11CE98)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE11CE98);
  }

  return result;
}

unint64_t sub_1DAB4DB6C()
{
  result = qword_1ECBE7C90;
  if (!qword_1ECBE7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C90);
  }

  return result;
}

uint64_t sub_1DAB4DBC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DAB4DBE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1DAB4DC24()
{
  result = qword_1ECBE7C98;
  if (!qword_1ECBE7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7C98);
  }

  return result;
}

void sub_1DAB4DDD0(void **a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *a1;
  v8 = sub_1DACB92F4();
  updated = type metadata accessor for UpdateUserIDCommand();
  v10 = objc_allocWithZone(updated);
  v11 = &v10[OBJC_IVAR___SCUpdateUserIDCommand_userID];
  *v11 = a2;
  v11[1] = a3;
  v10[OBJC_IVAR___SCUpdateUserIDCommand_overwrite] = a4;
  v13.receiver = v10;
  v13.super_class = updated;
  sub_1DACB71E4();
  v12 = objc_msgSendSuper2(&v13, sel_init);
  [v7 modifyContentsOfZone:v8 withCommand:{v12, v13.receiver, v13.super_class}];
}

void sub_1DAB4DEA0(void **a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = sub_1DACB92F4();
  sub_1DACB7C84();
  updated = type metadata accessor for UpdateAdsUserIDCommand();
  v16 = objc_allocWithZone(updated);
  v17 = &v16[OBJC_IVAR___SCUpdateAdsUserIDCommand_userID];
  *v17 = a2;
  v17[1] = a3;
  (*(v9 + 16))(&v16[OBJC_IVAR___SCUpdateAdsUserIDCommand_userIDCreatedDate], v12, v8);
  v16[OBJC_IVAR___SCUpdateAdsUserIDCommand_overwrite] = a4;
  v19.receiver = v16;
  v19.super_class = updated;
  sub_1DACB71E4();
  v18 = objc_msgSendSuper2(&v19, sel_init);
  (*(v9 + 8))(v12, v8);
  [v13 modifyContentsOfZone:v14 withCommand:v18];
}

uint64_t sub_1DAB4E048()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB4E088(id *a1, uint64_t a2)
{
  v4 = sub_1DACB7D04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1 || (v9 = [*a1 encryptedValues], v10 = sub_1DACB92F4(), v11 = objc_msgSend(v9, sel_objectForKeyedSubscript_, v10), swift_unknownObjectRelease(), v10, !v11) || (v21[1] = v11, sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue), (swift_dynamicCast() & 1) == 0))
  {
    sub_1DACB6D04();
    v12 = sub_1DACB7CE4();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    v15 = *(a2 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;
    *(v16 + 32) = 0;
    sub_1DACB71E4();
    sub_1DACB88E4();

    v21[2] = v12;
    v21[3] = v14;
  }

  sub_1DAA4E420(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB4E2C0(void **a1, uint64_t a2)
{
  v64 = sub_1DACB7D04();
  v5 = *(v64 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA492B4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB7CC4();
  v60 = *(v13 - 8);
  v61 = v13;
  v14 = *(v60 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v59 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v55 - v20;
  v21 = *a1;
  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = [v21 encryptedValues];
  v63 = v2;
  v23 = v22;
  v24 = sub_1DACB92F4();
  v62 = a2;
  v25 = v24;
  v26 = [v23 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  a2 = v62;
  if (!v26)
  {
    goto LABEL_9;
  }

  v67 = v26;
  sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v56 = v65;
  v57 = v66;
  v27 = [v21 encryptedValues];
  v28 = sub_1DACB92F4();
  v29 = [v27 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v29)
  {

    (*(v60 + 56))(v12, 1, 1, v61);
    goto LABEL_8;
  }

  v30 = v57;
  v65 = v29;
  v31 = v61;
  v32 = swift_dynamicCast();
  v33 = v60;
  (*(v60 + 56))(v12, v32 ^ 1u, 1, v31);
  if ((*(v33 + 48))(v12, 1, v31) == 1)
  {

LABEL_8:
    a2 = v62;
    sub_1DAA776C4(v12);
LABEL_9:
    sub_1DACB6D04();
    v34 = sub_1DACB7CE4();
    v36 = v35;
    (*(v5 + 8))(v8, v64);
    v37 = *(a2 + 16);
    v38 = swift_allocObject();
    *(v38 + 16) = v34;
    *(v38 + 24) = v36;
    *(v38 + 32) = 0;
    sub_1DACB71E4();
    sub_1DACB88E4();

    v65 = v34;
    v66 = v36;
    sub_1DAA4E420(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    return sub_1DACB8AE4();
  }

  v43 = v58;
  (*(v33 + 32))(v58, v12, v31);
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D658 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  sub_1DACB7BF4();
  sub_1DACB7C84();
  v44 = sub_1DACB7C14();
  v60 = *(v33 + 8);
  (v60)(v17, v31);
  if (v44)
  {
    v65 = v56;
    v66 = v30;
  }

  else
  {

    sub_1DACB6D04();
    v50 = sub_1DACB7CE4();
    v52 = v51;
    (*(v5 + 8))(v8, v64);
    v53 = *(v62 + 16);
    v54 = swift_allocObject();
    *(v54 + 16) = v50;
    *(v54 + 24) = v52;
    *(v54 + 32) = 1;
    sub_1DACB71E4();
    sub_1DACB88E4();

    v65 = v50;
    v66 = v52;
  }

  sub_1DAA4E420(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = sub_1DACB8AE4();
  v49 = v60;
  (v60)(v59, v31);
  v49(v43, v31);
  return v48;
}

void sub_1DAB4E9AC(void **a1, uint64_t a2, char a3)
{
  v6 = sub_1DACB7CC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = sub_1DACB92F4();
  v13 = *(v7 + 16);
  v13(v10, a2, v6);
  updated = type metadata accessor for UpdateUserStartDateCommand();
  v15 = objc_allocWithZone(updated);
  v13(&v15[OBJC_IVAR___SCUpdateUserStartDateCommand_startDate], v10, v6);
  v15[OBJC_IVAR___SCUpdateUserStartDateCommand_mergePolicy] = a3;
  v17.receiver = v15;
  v17.super_class = updated;
  v16 = objc_msgSendSuper2(&v17, sel_init);
  (*(v7 + 8))(v10, v6);
  [v11 modifyContentsOfZone:v12 withCommand:v16];
}

uint64_t sub_1DAB4EB44(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    v2 = [v1 valuesByKey];
    v3 = sub_1DACB92F4();
    v4 = [v2 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v4)
    {
      sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
      swift_dynamicCast();
    }
  }

  sub_1DAB501A8(0, &unk_1EE11D3A8, &qword_1EE11CEA0, MEMORY[0x1E69E7360]);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

void sub_1DAB4EC7C(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1DACB92F4();
  updated = type metadata accessor for UpdateUpsellAppLaunchCountCommand();
  v6 = objc_allocWithZone(updated);
  *&v6[OBJC_IVAR___SCUpdateUpsellAppLaunchCountCommand_upsellAppLaunchCount] = a2;
  v8.receiver = v6;
  v8.super_class = updated;
  v7 = objc_msgSendSuper2(&v8, sel_init);
  [v3 modifyContentsOfZone:v4 withCommand:v7];
}

uint64_t sub_1DAB4ED20(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    v2 = [v1 valuesByKey];
    v3 = sub_1DACB92F4();
    v4 = [v2 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v4)
    {
      sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
      swift_dynamicCast();
    }
  }

  sub_1DAB501A8(0, &qword_1EE11D3E8, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

void sub_1DAB4EE54(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = sub_1DACB92F4();
  updated = type metadata accessor for UpdateLastAppLaunchUpsellInstanceIDCommand();
  v8 = objc_allocWithZone(updated);
  v9 = &v8[OBJC_IVAR___SCUpdateLastAppLaunchUpsellInstanceIDCommand_lastAppLaunchUpsellInstanceID];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v8;
  v11.super_class = updated;
  sub_1DACB71E4();
  v10 = objc_msgSendSuper2(&v11, sel_init);
  [v5 modifyContentsOfZone:v6 withCommand:{v10, v11.receiver, v11.super_class}];
}

uint64_t sub_1DAB4EF14(id *a1)
{
  sub_1DAA492B4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  if (*a1 && (v9 = [*a1 encryptedValues], v10 = sub_1DACB92F4(), v11 = objc_msgSend(v9, sel_objectForKeyedSubscript_, v10), swift_unknownObjectRelease(), v10, v11))
  {
    v20[1] = v11;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    v12 = sub_1DACB7CC4();
    v13 = swift_dynamicCast();
    (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  }

  else
  {
    v14 = sub_1DACB7CC4();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1DAA77630(v8, v6);
  sub_1DAA68234(0, &unk_1EE11D438, sub_1DAA492B4, MEMORY[0x1E69D6B18]);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1DACB8AE4();
  sub_1DAA776C4(v8);
  return v18;
}

void sub_1DAB4F14C(void **a1, uint64_t a2, uint64_t (*a3)(void), void *a4)
{
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = sub_1DACB92F4();
  v15 = *(v9 + 16);
  v15(v12, a2, v8);
  v16 = a3(0);
  v17 = objc_allocWithZone(v16);
  v15(&v17[*a4], v12, v8);
  v19.receiver = v17;
  v19.super_class = v16;
  v18 = objc_msgSendSuper2(&v19, sel_init);
  (*(v9 + 8))(v12, v8);
  [v13 modifyContentsOfZone:v14 withCommand:v18];
}

uint64_t sub_1DAB4F2DC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 24);
  v17 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_1DACB9E14();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v6)
  {
    v16 = a2;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v7, v5);
        a2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v10 = v17;
          a2 = v16;
          goto LABEL_17;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v8 = *(v5 + 8 * v7 + 32);
        sub_1DACB71F4();
        a2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1DACB9D34();
        v9 = *(v17 + 16);
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      else
      {
      }

      ++v7;
      if (a2 == v6)
      {
        goto LABEL_15;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v11 = *(v3 + 24);
  *(v3 + 24) = v10;

  type metadata accessor for ObserverProxy();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v13 = swift_beginAccess();
  MEMORY[0x1E12770F0](v13);
  if (*((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  return swift_endAccess();
}

uint64_t sub_1DAB4F508(uint64_t *a1)
{
  swift_beginAccess();
  v3 = v1[3];
  v14 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_20:
    v4 = sub_1DACB9E14();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v4)
  {
    v13 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v13;
          v10 = v14;
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v7 = *(v3 + 8 * v5 + 32);
        sub_1DACB71F4();
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_1DACB9D34();
        v6 = *(v14 + 16);
        sub_1DACB9D74();
        sub_1DACB9D84();
        v1 = &v14;
        sub_1DACB9D44();
      }

      ++v5;
      if (v8 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v11 = v1[3];
  v1[3] = v10;
}

uint64_t sub_1DAB4F708()
{
  v1 = *v0;
  sub_1DAA68090();
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v2 = sub_1DACB89D4();
  v3 = sub_1DACB8A54();

  return v3;
}

uint64_t sub_1DAB4F7B4()
{
  v1 = sub_1DACB7D04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1DACB6D04();
  v7 = sub_1DACB7CE4();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v10 = *(v6 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  *(v11 + 32) = 1;
  sub_1DACB71E4();
  sub_1DACB88E4();

  return v7;
}

uint64_t sub_1DAB4F8F0(uint64_t a1, char a2)
{
  v5 = sub_1DACB7CC4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = *(*v2 + 16);
  (*(v6 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v10 + v9 + v7) = a2;
  sub_1DACB88E4();
}

uint64_t sub_1DAB4FA78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v8 = *v5;
  sub_1DAA68090();
  sub_1DACB8BB4();
  v9 = sub_1DACB89D4();
  sub_1DAA4E420(0, a4, a5, MEMORY[0x1E69E6720]);
  v10 = sub_1DACB8A54();

  return v10;
}

uint64_t sub_1DAB4FB28(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(swift_allocObject() + 16) = a1;
  sub_1DACB88E4();
}

uint64_t sub_1DAB4FBE0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1DACB71E4();
  sub_1DACB88E4();
}

uint64_t sub_1DAB4FCD4(uint64_t a1)
{
  v3 = sub_1DACB7CC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = *(*v1 + 16);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1DACB88E4();
}

uint64_t sub_1DAB4FE74(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_1DAB5000C(v8, a2, a3, v3, v6, v7);
}

uint64_t sub_1DAB4FED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DAB5000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[3] = a5;
  v15[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(a4 + 24);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v15, a2, a3, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

void sub_1DAB501A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1DAA4E420(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1DACB8B74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DAB5021C(void **a1)
{
  v3 = *(sub_1DACB7CC4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  sub_1DAB4E9AC(a1, v4, v5);
}

void sub_1DAB502FC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    sub_1DACB71E4();
    v4 = sub_1DACB92F4();
    v5 = sub_1DACB92F4();
    v6 = [v4 fc:v5 numberFollowingString:?];

    if (v6)
    {

      [v6 integerValue];

      return;
    }

    v7 = HIBYTE(a2) & 0xF;
    v8 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1DABBDB84(a1, a2, 10);
        goto LABEL_66;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v35[0] = a1;
        v35[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (a1 == 43)
        {
          if (v7)
          {
            if (--v7)
            {
              v24 = 0;
              v25 = v35 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  break;
                }

                v27 = 10 * v24;
                if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                {
                  break;
                }

                v24 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  break;
                }

                ++v25;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }

          goto LABEL_74;
        }

        if (a1 != 45)
        {
          if (v7)
          {
            v31 = 0;
            v32 = v35;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                break;
              }

              v31 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

        if (v7)
        {
          if (--v7)
          {
            v16 = 0;
            v17 = v35 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v10 = sub_1DACB9D24();
        }

        v11 = *v10;
        if (v11 == 43)
        {
          if (v8 >= 1)
          {
            v7 = v8 - 1;
            if (v8 != 1)
            {
              v20 = 0;
              if (v10)
              {
                v21 = v10 + 1;
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    goto LABEL_64;
                  }

                  v23 = 10 * v20;
                  if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v20 = v23 + v22;
                  if (__OFADD__(v23, v22))
                  {
                    goto LABEL_64;
                  }

                  ++v21;
                  if (!--v7)
                  {
                    goto LABEL_65;
                  }
                }
              }

              goto LABEL_56;
            }

            goto LABEL_64;
          }

          goto LABEL_73;
        }

        if (v11 != 45)
        {
          if (v8)
          {
            v28 = 0;
            if (v10)
            {
              while (1)
              {
                v29 = *v10 - 48;
                if (v29 > 9)
                {
                  goto LABEL_64;
                }

                v30 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  goto LABEL_64;
                }

                v28 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  goto LABEL_64;
                }

                ++v10;
                if (!--v8)
                {
                  goto LABEL_56;
                }
              }
            }

            goto LABEL_56;
          }

LABEL_64:
          LOBYTE(v7) = 1;
          goto LABEL_65;
        }

        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              v13 = v10 + 1;
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_64;
                }

                v15 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_64;
                }

                v12 = v15 - v14;
                if (__OFSUB__(v15, v14))
                {
                  goto LABEL_64;
                }

                ++v13;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

LABEL_56:
            LOBYTE(v7) = 0;
LABEL_65:
            v36 = v7;
LABEL_66:

            return;
          }

          goto LABEL_64;
        }

        __break(1u);
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      return;
    }
  }
}

uint64_t sub_1DAB5068C(void *a1)
{
  sub_1DAA492B4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v109 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v108 = &v104 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v104 - v8;
  v10 = sub_1DACB7CC4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v106 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v104 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v104 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v104 - v21;
  v121 = MEMORY[0x1E69E7CC0];
  v22 = [a1 recordID];
  v23 = [v22 recordName];

  v24 = sub_1DACB9324();
  v26 = v25;

  if (v24 == 0x6F666E4972657375 && v26 == 0xE800000000000000)
  {
  }

  else
  {
    v27 = sub_1DACBA174();

    if ((v27 & 1) == 0)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v28 = [a1 encryptedValues];
  v29 = sub_1DACB92F4();
  v30 = [v28 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v30 && (v118 = v30, sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue), (swift_dynamicCast() & 1) != 0))
  {
    v31 = v116;
    v32 = v117;
    updated = type metadata accessor for UpdateUserIDCommand();
    v34 = objc_allocWithZone(updated);
    v35 = &v34[OBJC_IVAR___SCUpdateUserIDCommand_userID];
    *v35 = v31;
    v35[1] = v32;
    v34[OBJC_IVAR___SCUpdateUserIDCommand_overwrite] = 0;
    v111.receiver = v34;
    v111.super_class = updated;
    objc_msgSendSuper2(&v111, sel_init);
    MEMORY[0x1E12770F0]();
    if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DACB9694();
    }

    sub_1DACB96F4();
    v36 = v121;
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
  }

  v37 = [a1 encryptedValues];
  v38 = sub_1DACB92F4();
  v39 = [v37 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v39)
  {
    v118 = v39;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    if (swift_dynamicCast())
    {
      v105 = v17;
      v40 = v116;
      v41 = v117;
      v42 = v110;
      sub_1DACB7C84();
      v43 = type metadata accessor for UpdateAdsUserIDCommand();
      v44 = objc_allocWithZone(v43);
      v45 = &v44[OBJC_IVAR___SCUpdateAdsUserIDCommand_userID];
      *v45 = v40;
      v45[1] = v41;
      (*(v11 + 16))(&v44[OBJC_IVAR___SCUpdateAdsUserIDCommand_userIDCreatedDate], v42, v10);
      v44[OBJC_IVAR___SCUpdateAdsUserIDCommand_overwrite] = 0;
      v112.receiver = v44;
      v112.super_class = v43;
      objc_msgSendSuper2(&v112, sel_init);
      v46 = (*(v11 + 8))(v42, v10);
      MEMORY[0x1E12770F0](v46);
      if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v98 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DACB9694();
      }

      sub_1DACB96F4();
      v36 = v121;
      v17 = v105;
    }
  }

  v47 = [a1 encryptedValues];
  v48 = sub_1DACB92F4();
  v49 = [v47 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v49)
  {
    v107 = *(v11 + 56);
    v107(v9, 1, 1, v10);
    goto LABEL_22;
  }

  v116 = v49;
  sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
  v50 = swift_dynamicCast();
  v51 = *(v11 + 56);
  v51(v9, v50 ^ 1u, 1, v10);
  v52 = (*(v11 + 48))(v9, 1, v10);
  v107 = v51;
  if (v52 == 1)
  {
LABEL_22:
    sub_1DAA776C4(v9);
    goto LABEL_23;
  }

  v105 = v17;
  (*(v11 + 32))(v20, v9, v10);
  v53 = *(v11 + 16);
  v54 = v110;
  v53(v110, v20, v10);
  v55 = type metadata accessor for UpdateUserStartDateCommand();
  v56 = objc_allocWithZone(v55);
  v53(&v56[OBJC_IVAR___SCUpdateUserStartDateCommand_startDate], v54, v10);
  v56[OBJC_IVAR___SCUpdateUserStartDateCommand_mergePolicy] = 2;
  v113.receiver = v56;
  v113.super_class = v55;
  objc_msgSendSuper2(&v113, sel_init);
  v57 = *(v11 + 8);
  v58 = v57(v54, v10);
  MEMORY[0x1E12770F0](v58);
  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v99 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  v57(v20, v10);
  v36 = v121;
  v17 = v105;
LABEL_23:
  v59 = [a1 valuesByKey];
  v60 = sub_1DACB92F4();
  v61 = [v59 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v61)
  {
    v116 = v61;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    if (swift_dynamicCast())
    {
      v62 = v118;
      v63 = type metadata accessor for UpdateUpsellAppLaunchCountCommand();
      v64 = objc_allocWithZone(v63);
      *&v64[OBJC_IVAR___SCUpdateUpsellAppLaunchCountCommand_upsellAppLaunchCount] = v62;
      v114.receiver = v64;
      v114.super_class = v63;
      objc_msgSendSuper2(&v114, sel_init);
      MEMORY[0x1E12770F0]();
      if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v100 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DACB9694();
      }

      sub_1DACB96F4();
      v36 = v121;
    }
  }

  v65 = [a1 valuesByKey];
  v66 = sub_1DACB92F4();
  v67 = [v65 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v67)
  {
    v118 = v67;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    if (swift_dynamicCast())
    {
      v68 = v116;
      v69 = v117;
      v70 = type metadata accessor for UpdateLastAppLaunchUpsellInstanceIDCommand();
      v71 = objc_allocWithZone(v70);
      v72 = &v71[OBJC_IVAR___SCUpdateLastAppLaunchUpsellInstanceIDCommand_lastAppLaunchUpsellInstanceID];
      *v72 = v68;
      *(v72 + 1) = v69;
      v115.receiver = v71;
      v115.super_class = v70;
      objc_msgSendSuper2(&v115, sel_init);
      MEMORY[0x1E12770F0]();
      if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v101 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DACB9694();
      }

      sub_1DACB96F4();
      v36 = v121;
    }
  }

  v73 = [a1 encryptedValues];
  v74 = sub_1DACB92F4();
  v75 = [v73 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v75)
  {
    v76 = v108;
    v78 = v107;
    v107(v108, 1, 1, v10);
    goto LABEL_39;
  }

  v116 = v75;
  sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
  v76 = v108;
  v77 = swift_dynamicCast();
  v78 = v107;
  v107(v76, v77 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v76, 1, v10) == 1)
  {
LABEL_39:
    sub_1DAA776C4(v76);
    goto LABEL_40;
  }

  (*(v11 + 32))(v17, v76, v10);
  v79 = *(v11 + 16);
  v80 = v110;
  v79(v110, v17, v10);
  v81 = type metadata accessor for UpdateAppLaunchUpsellLastSeenDateCommand();
  v82 = objc_allocWithZone(v81);
  v79(&v82[OBJC_IVAR___SCUpdateAppLaunchUpsellLastSeenDateCommand_appLaunchUpsellLastSeenDate], v80, v10);
  v119.receiver = v82;
  v119.super_class = v81;
  objc_msgSendSuper2(&v119, sel_init);
  v83 = *(v11 + 8);
  v84 = v83(v80, v10);
  MEMORY[0x1E12770F0](v84);
  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v102 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  v83(v17, v10);
  v36 = v121;
  v78 = v107;
LABEL_40:
  v85 = [a1 encryptedValues];
  v86 = sub_1DACB92F4();
  v87 = [v85 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v87)
  {
    v88 = v109;
    v78(v109, 1, 1, v10);
    goto LABEL_46;
  }

  v116 = v87;
  sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
  v88 = v109;
  v89 = swift_dynamicCast();
  v78(v88, v89 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v88, 1, v10) == 1)
  {
LABEL_46:
    sub_1DAA776C4(v88);
    return v36;
  }

  v90 = v106;
  (*(v11 + 32))(v106, v88, v10);
  v91 = *(v11 + 16);
  v92 = v110;
  v91(v110, v90, v10);
  v93 = type metadata accessor for UpdateAppReviewRequestLastSeenDateCommand();
  v94 = objc_allocWithZone(v93);
  v91(&v94[OBJC_IVAR___SCUpdateAppReviewRequestLastSeenDateCommand_appReviewRequestLastSeenDate], v92, v10);
  v120.receiver = v94;
  v120.super_class = v93;
  objc_msgSendSuper2(&v120, sel_init);
  v95 = *(v11 + 8);
  v96 = v95(v92, v10);
  MEMORY[0x1E12770F0](v96);
  if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v103 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  v95(v90, v10);
  return v121;
}

void sub_1DAB51504(void *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = (a1 + 3);
  v7 = a1[3];
  v38 = a1[4];
  v39 = v3;
  v8 = type metadata accessor for RawAttributionSource(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v37 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  os_unfair_lock_lock((v1 + 80));
  v11 = *(v1 + 88);
  v12 = *(v1 + 96);
  v14 = *(v1 + 104);
  v13 = *(v1 + 112);
  v15 = *(v1 + 120);
  v35 = v4;
  v36 = v5;
  v33 = v11;
  v34 = v7;
  v32 = v13;
  if (v12)
  {
    v16 = *(a1 + 1);
    v47[0] = *a1;
    v47[1] = v16;
    v48 = a1[4];
    *&v52 = v11;
    *(&v52 + 1) = v12;
    v53 = v14;
    v54 = v13;
    v55 = v15;
    v49 = v47[0];
    v50 = v16;
    v51 = *v6;
    v17 = v11;
    sub_1DAAA1344(&v49, &v46);
    sub_1DAB53BA4(&v50, &v46, sub_1DAB5395C);
    sub_1DAB53B30(&v51, &v46, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1DAB53C0C);
    sub_1DAAF2954(v17, v12);
    LOBYTE(v17) = sub_1DAC3C194(v47, &v52);

    sub_1DAB53908(&v49);
    sub_1DAA7139C(&v50, sub_1DAB5395C);
    sub_1DAB539D8(&v51, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
    v19 = v38;
    v18 = v39;
    if (v17)
    {
      os_unfair_lock_unlock((v1 + 80));
      return;
    }
  }

  else
  {
    v52 = *a1;
    v47[0] = *v6;
    *&v49 = v5;
    sub_1DAAA1344(&v52, &v51);
    sub_1DAB53BA4(&v49, &v51, sub_1DAB5395C);
    sub_1DAB53B30(v47, &v51, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1DAB53C0C);
    v20 = v4;
    v18 = v39;
    v19 = v38;
    sub_1DAA75E60(v20, v39);
  }

  sub_1DAA75E60(v33, v12);
  v21 = v36;
  *(v1 + 88) = v35;
  *(v1 + 96) = v18;
  v22 = v34;
  *(v1 + 104) = v21;
  *(v1 + 112) = v22;
  *(v1 + 120) = v19;
  v46 = *a1;
  v44 = *v6;
  v45 = v21;
  sub_1DAAA1344(&v46, &v43);
  sub_1DAB53BA4(&v45, &v43, sub_1DAB5395C);
  v23 = MEMORY[0x1E69E6158];
  v24 = MEMORY[0x1E69E6720];
  sub_1DAB53B30(&v44, &v43, &qword_1EE123FD0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720], sub_1DAB53C0C);
  os_unfair_lock_unlock((v1 + 80));
  v25 = __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  v26 = *(v1 + 24);
  v27 = v1;
  v28 = *v25;
  sub_1DAC1F0A8(a1);
  v29 = *(v27 + 16);
  v43 = *a1;
  v30 = a1[2];
  v41 = *v6;
  v42 = v30;
  sub_1DAAA1344(&v43, v40);
  sub_1DAB53BA4(&v42, v40, sub_1DAB5395C);
  sub_1DAB53B30(&v41, v40, &qword_1EE123FD0, v23, v24, sub_1DAB53C0C);
  v31 = v37;
  sub_1DAB51960(a1, v37);
  sub_1DAA66A08(&qword_1EE124AD8, type metadata accessor for RawAttributionSource);
  sub_1DACB8454();
  sub_1DAA7139C(v31, type metadata accessor for RawAttributionSource);
}

uint64_t sub_1DAB51960@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1DAA6F818(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v39 - v6;
  sub_1DAA6F818(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v3);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40 = &v39 - v9;
  v10 = sub_1DACB7E44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB92E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[3];
  v23 = a1[4];
  if (*a1 == v24 && v21 == 0xED000065636E616ELL || (v25 = *a1, v26 = a1[1], (sub_1DACBA174() & 1) != 0))
  {
    sub_1DACB9284();
    (*(v13 + 16))(v17, v19, v12);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v27 = qword_1EE13E470;
    sub_1DACB7DF4();
    v20 = sub_1DACB9384();
    v21 = v28;
    (*(v13 + 8))(v19, v12);
    v29 = v40;
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_9:
    v30 = sub_1DACB7AB4();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    goto LABEL_10;
  }

  sub_1DACB71E4();
  v29 = v40;
  if (!v23)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_1DACB71E4();
  sub_1DACB7A94();

LABEL_10:
  v31 = v41;
  sub_1DAB51F30(a1, v41);
  v32 = type metadata accessor for RawAttributionSource(0);
  v33 = *(v32 + 20);
  v34 = sub_1DACB7AB4();
  v35 = v39;
  (*(*(v34 - 8) + 56))(v39 + v33, 1, 1, v34);
  v36 = *(v32 + 24);
  v37 = type metadata accessor for RawAttributionSourceLogo(0);
  (*(*(v37 - 8) + 56))(v35 + v36, 1, 1, v37);
  *v35 = v20;
  v35[1] = v21;
  sub_1DAA6EADC(v29, v35 + v33, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  return sub_1DAA6EADC(v31, v35 + v36, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
}

uint64_t sub_1DAB51E24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  sub_1DAB539D8(v0 + 88, &qword_1EE125140, &type metadata for SDSMetadata);

  return swift_deallocClassInstance();
}

void sub_1DAB51E8C()
{
  if (!qword_1ECBE7CB0)
  {
    sub_1DAB53C0C(255, &qword_1EE125140, &type metadata for SDSMetadata, MEMORY[0x1E69E6720]);
    v0 = sub_1DACB8C24();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7CB0);
    }
  }
}

uint64_t sub_1DAB51F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RawAttributionSourceLogo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1DAA6F818(0, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved, MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v146 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v159 = &v146 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v165 = &v146 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v178 = &v146 - v22;
  v171 = sub_1DACB7AB4();
  v170 = *(v171 - 8);
  v23 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v157 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA6F818(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, v9);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v156 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v146 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v146 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v155 = &v146 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v146 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v166 = &v146 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v163 = &v146 - v42;
  v176 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v173 = *(v176 - 8);
  v43 = *(v173 + 64);
  v44 = MEMORY[0x1EEE9AC00](v176);
  v168 = &v146 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v158 = &v146 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v167 = &v146 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v164 = &v146 - v50;
  v174 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
  v177 = *(v174 - 8);
  v51 = *(v177 + 64);
  result = MEMORY[0x1EEE9AC00](v174);
  v172 = &v146 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v55 = *(a1 + 16);
  if (!v55)
  {
    v188 = *v54;
    v63 = v54;
    sub_1DAB53908(&v188);
    v192 = *(v63 + 24);
    sub_1DAB539D8(&v192, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
LABEL_62:
    v94 = 1;
    return (*(v5 + 56))(a2, v94, 1, v4);
  }

  v160 = v54;
  v152 = v8;
  v161 = v5;
  v169 = v4;
  v162 = a2;
  v56 = *(v55 + 16);
  v149 = v17;
  v183 = v55;
  v151 = v34;
  v148 = v14;
  v154 = v39;
  v150 = v31;
  if (!v56)
  {
    v181 = 0;
    v180 = 0;
    v153 = 0;
    v59 = 0;
    v182 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    goto LABEL_26;
  }

  v57 = 0;
  v58 = (v55 + 64);
  while (1)
  {
    if (v57 >= *(v55 + 16))
    {
      __break(1u);
      goto LABEL_85;
    }

    v59 = *(v58 - 3);
    v182 = *(v58 - 4);
    v60 = *(v58 - 16);
    v180 = *(v58 - 1);
    v181 = *v58;
    if (v60 <= 1)
    {
      break;
    }

    v61 = v60;
LABEL_9:
    v62 = sub_1DACBA174();
    sub_1DACB71E4();

    if (v62)
    {
      goto LABEL_15;
    }

    ++v57;

    v58 += 40;
    if (v56 == v57)
    {
      v182 = 0;
      v59 = 0;
      v61 = 0;
      v180 = 0;
      v181 = 0;
      goto LABEL_15;
    }
  }

  if (!v60)
  {
    v61 = v60;
    goto LABEL_9;
  }

  sub_1DACB71E4();

  v61 = 1;
LABEL_15:
  v153 = v61;
  v179 = *(v55 + 16);
  if (v179)
  {
    v175 = v59;
    v68 = 0;
    v69 = (v55 + 64);
    while (1)
    {
      if (v68 >= *(v55 + 16))
      {
        goto LABEL_86;
      }

      v64 = *(v69 - 4);
      v66 = *(v69 - 16);
      v56 = *(v69 - 1);
      v67 = *v69;
      v65 = *(v69 - 3);
      if (*(v69 - 16) > 1u && v66 != 3)
      {
        break;
      }

      v70 = sub_1DACBA174();
      sub_1DACB71E4();

      if (v70)
      {
        goto LABEL_25;
      }

      ++v68;

      v69 += 40;
      v55 = v183;
      if (v179 == v68)
      {
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v56 = 0;
        v67 = 0;
LABEL_25:
        v59 = v175;
        goto LABEL_26;
      }
    }

    sub_1DACB71E4();

    v66 = 2;
    goto LABEL_25;
  }

  v64 = 0;
  v65 = 0;
  v66 = 0;
  v56 = 0;
  v67 = 0;
LABEL_26:
  v175 = v59;
  v147 = v64;
  *&v188 = v64;
  *(&v188 + 1) = v65;
  v179 = v65;
  v189 = v66;
  v190 = v56;
  v191 = v67;
  v71 = v183;
  v72 = *(v183 + 16);
  if (!v72)
  {
LABEL_33:
    v81 = v160;
    v184 = *v160;
    sub_1DAB53908(&v184);

    v185 = *(v81 + 24);
    sub_1DAB539D8(&v185, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
    v76 = 0;
    v75 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
LABEL_37:
    v4 = v169;
    v186[0] = v76;
    v186[1] = v75;
    v186[2] = v77;
    v186[3] = v78;
    v187 = v79;
    v84 = v175;
    if (!v175)
    {

      v94 = 1;
      a2 = v162;
      v5 = v161;
      return (*(v5 + 56))(a2, v94, 1, v4);
    }

    v183 = v75;
    v85 = v174;
    v86 = v172;
    sub_1DAA6E428(v172);
    v87 = v164;
    sub_1DAB53BA4(v86, v164, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v88 = sub_1DACB79C4();
    v90 = v89;
    v91 = *(v170 + 8);
    v91(v87, v171);
    if (v88 == v182 && v84 == v90)
    {

      v92 = v165;
      v93 = v85;
    }

    else
    {
      v95 = sub_1DACBA174();

      v92 = v165;
      v93 = v85;
      if ((v95 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v96 = v163;
    sub_1DAB53B30(v86 + *(v93 + 20), v163, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, MEMORY[0x1E69E6720], sub_1DAA6F818);
    if ((*(v173 + 48))(v96, 1, v176) == 1)
    {
      sub_1DAB53C5C(v96, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      if (!v179)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v97 = v157;
      v98 = v171;
      (*(v170 + 16))(v157, v96, v171);
      sub_1DAA7139C(v96, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      v99 = sub_1DACB79C4();
      v101 = v100;
      v91(v97, v98);
      if (v101)
      {
        if (v179)
        {
          v93 = v85;
          if (v99 == v147 && v179 == v101)
          {

            v4 = v169;
LABEL_53:
            v102 = v178;
            sub_1DAB53BA4(v86, v178, type metadata accessor for RawAttributionSourceLogo.Unresolved);
            v103 = v177;
            (*(v177 + 56))(v102, 0, 1, v93);
            goto LABEL_57;
          }

          v104 = sub_1DACBA174();

          v4 = v169;
          if (v104)
          {
            goto LABEL_53;
          }
        }

        else
        {
          sub_1DACB71E4();

          v4 = v169;
          v93 = v85;
        }
      }

      else
      {
        v4 = v169;
        v93 = v85;
        if (!v179)
        {
LABEL_52:
          sub_1DACB71E4();
          goto LABEL_53;
        }
      }
    }

LABEL_56:
    v103 = v177;
    (*(v177 + 56))(v178, 1, 1, v93);
LABEL_57:
    v105 = v166;
    sub_1DAB53B30(v178, v92, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved, MEMORY[0x1E69E6720], sub_1DAA6F818);
    v106 = *(v103 + 48);
    v177 = v103 + 48;
    v107 = v106(v92, 1, v93);
    a2 = v162;
    v5 = v161;
    if (v107 == 1)
    {
      sub_1DAB53C5C(v92, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      v108 = 0.0;
      v109 = v176;
    }

    else
    {
      v110 = v162;
      v111 = v106;
      v112 = v158;
      sub_1DAB53BA4(v92, v158, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      sub_1DAA7139C(v92, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      v109 = v176;
      v108 = *(v112 + *(v176 + 20));
      v113 = v112;
      v106 = v111;
      a2 = v110;
      sub_1DAA7139C(v113, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    }

    *&v192 = v182;
    *(&v192 + 1) = v175;
    v193 = v153;
    v194 = v180;
    v195 = v181;
    sub_1DAB53624(&v192, v108, v107 == 1, v105);
    v114 = *(v173 + 48);
    if (v114(v105, 1, v109) == 1)
    {

      sub_1DAB53C5C(v178, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      sub_1DAA7139C(v172, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      sub_1DAB53C5C(v105, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
      goto LABEL_62;
    }

    v115 = v167;
    sub_1DAB53AC8(v105, v167, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    sub_1DAB53BA4(v115, v168, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v116 = v159;
    sub_1DAB53B30(v178, v159, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved, MEMORY[0x1E69E6720], sub_1DAA6F818);
    if (v106(v116, 1, v93) == 1)
    {
      v117 = qword_1EE120C40;
      v118 = type metadata accessor for RawAttributionSourceLogo.Unresolved;
      v119 = v116;
    }

    else
    {
      v120 = v155;
      sub_1DAB53B30(v116 + *(v93 + 20), v155, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, MEMORY[0x1E69E6720], sub_1DAA6F818);
      sub_1DAA7139C(v116, type metadata accessor for RawAttributionSourceLogo.Unresolved);
      v121 = v176;
      if (v114(v120, 1, v176) != 1)
      {
        v124 = *(v120 + *(v121 + 20));
        sub_1DAA7139C(v120, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
        v122 = v124;
        v93 = v174;
        v123 = 0;
LABEL_69:
        sub_1DAB53624(&v188, v122, v123, v154);
        v125 = v149;
        sub_1DAB53B30(v178, v149, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved, MEMORY[0x1E69E6720], sub_1DAA6F818);
        v126 = v106(v125, 1, v93);
        v127 = v151;
        if (v126 == 1)
        {
          v128 = qword_1EE120C40;
          v129 = type metadata accessor for RawAttributionSourceLogo.Unresolved;
        }

        else
        {
          v130 = v125 + *(v93 + 24);
          v131 = v156;
          sub_1DAB53B30(v130, v156, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, MEMORY[0x1E69E6720], sub_1DAA6F818);
          v132 = v125;
          v125 = v131;
          sub_1DAA7139C(v132, type metadata accessor for RawAttributionSourceLogo.Unresolved);
          v133 = v131;
          v134 = v176;
          if (v114(v133, 1, v176) != 1)
          {
            v137 = *(v125 + *(v134 + 20));
            sub_1DAA7139C(v125, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
            v135 = v137;
            v136 = 0;
            goto LABEL_75;
          }

          v128 = qword_1EE120CD0;
          v129 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant;
        }

        sub_1DAB53C5C(v125, v128, v129);
        v135 = 0.0;
        v136 = 1;
LABEL_75:
        v138 = v150;
        sub_1DAB53624(v186, v135, v136, v150);
        sub_1DAA7139C(v167, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
        sub_1DAA7139C(v172, type metadata accessor for RawAttributionSourceLogo.Unresolved);
        v139 = v176;
        if (v114(v138, 1, v176) == 1)
        {
          v140 = v138;
          v141 = v148;
          sub_1DAB53A48(v178, v148, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved);
          v142 = v174;
          if (v106(v141, 1, v174) == 1)
          {
            sub_1DAB53C5C(v141, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved);
            v143 = v176;
            (*(v173 + 56))(v127, 1, 1, v176);
          }

          else
          {
            sub_1DAB53B30(v141 + *(v142 + 24), v127, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant, MEMORY[0x1E69E6720], sub_1DAA6F818);
            sub_1DAA7139C(v141, type metadata accessor for RawAttributionSourceLogo.Unresolved);
            v143 = v176;
          }

          if (v114(v140, 1, v143) != 1)
          {
            sub_1DAB53C5C(v140, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
          }
        }

        else
        {
          sub_1DAB53C5C(v178, qword_1EE120C40, type metadata accessor for RawAttributionSourceLogo.Unresolved);
          sub_1DAB53AC8(v138, v127, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
          (*(v173 + 56))(v127, 0, 1, v139);
        }

        v144 = v152;
        sub_1DAB53AC8(v168, v152, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
        v145 = v174;
        sub_1DAB53A48(v154, v144 + *(v174 + 20), qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
        sub_1DAB53A48(v127, v144 + *(v145 + 24), qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
        swift_storeEnumTagMultiPayload();
        sub_1DAB53AC8(v144, a2, type metadata accessor for RawAttributionSourceLogo);
        v94 = 0;
        return (*(v5 + 56))(a2, v94, 1, v4);
      }

      v117 = qword_1EE120CD0;
      v118 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant;
      v119 = v120;
    }

    sub_1DAB53C5C(v119, v117, v118);
    v122 = 0.0;
    v123 = 1;
    goto LABEL_69;
  }

  v73 = 0;
  v74 = (v183 + 64);
  while (v73 < *(v71 + 16))
  {
    v76 = *(v74 - 4);
    v75 = *(v74 - 3);
    v77 = *(v74 - 16);
    v78 = *(v74 - 1);
    v79 = *v74;
    if (*(v74 - 16) > 1u && v77 != 2)
    {
      v82 = *(v74 - 3);
      sub_1DACB71E4();

      v77 = 3;
LABEL_36:
      v83 = v160;
      v184 = *v160;
      sub_1DAB53908(&v184);

      v185 = *(v83 + 24);
      sub_1DAB539D8(&v185, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
      goto LABEL_37;
    }

    v80 = sub_1DACBA174();
    sub_1DACB71E4();

    if (v80)
    {
      goto LABEL_36;
    }

    ++v73;

    v74 += 40;
    v71 = v183;
    if (v72 == v73)
    {
      goto LABEL_33;
    }
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1DAB53624@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  sub_1DAA6F818(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_1DACB7AB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  if (!*(a1 + 8))
  {
    goto LABEL_4;
  }

  v20 = *(a1 + 24);
  v21 = *a1;
  v28 = *(a1 + 32);
  sub_1DACB7A94();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1DAB539D8(a1, &qword_1EE1237A0, &type metadata for SDSMetadata.SourceLogo);
    sub_1DAB53C5C(v11, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
LABEL_4:
    v22 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
    return (*(*(v22 - 8) + 56))(a4, 1, 1, v22);
  }

  v24 = *(v13 + 32);
  v24(v19, v11, v12);
  v24(v17, v19, v12);
  sub_1DAB539D8(a1, &qword_1EE1237A0, &type metadata for SDSMetadata.SourceLogo);
  v25 = a2;
  if (a3)
  {
    v25 = 0.0;
  }

  if (v28)
  {
    v20 = v25;
  }

  v24(a4, v17, v12);
  v26 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  *&a4[*(v26 + 20)] = v20;
  return (*(*(v26 - 8) + 56))(a4, 0, 1, v26);
}

void sub_1DAB5395C()
{
  if (!qword_1EE11FB80)
  {
    sub_1DAB53C0C(255, &qword_1EE123FA0, &type metadata for SDSMetadata.SourceLogo, MEMORY[0x1E69E62F8]);
    v0 = sub_1DACB9AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FB80);
    }
  }
}

uint64_t sub_1DAB539D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1DAB53C0C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAB53A48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA6F818(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAB53AC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAB53B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1DAB53BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1DAB53C0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DAB53C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA6F818(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAB53D24(void *a1, uint64_t a2)
{
  sub_1DAB546D0(0, &qword_1ECBE7CE0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB54620();
  sub_1DACBA304();
  v12[1] = a2;
  sub_1DAB54674();
  sub_1DAB54734(&qword_1ECBE7CE8);
  sub_1DACBA0E4();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DAB53EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E697070616DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAB53F48(uint64_t a1)
{
  v2 = sub_1DAB54620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB53F84(uint64_t a1)
{
  v2 = sub_1DAB54620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAB53FC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DAB5445C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_1DAB54008@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x1E69E7CC8];
    goto LABEL_24;
  }

  v4 = 0;
  v5 = *result;
  v6 = MEMORY[0x1E69E7CC8];
  v7 = a2 + 40;
  v34 = a3;
  v33 = a2 + 40;
  while (2)
  {
    v8 = (v7 + 16 * v4);
    v9 = v4;
    while (1)
    {
      if (v9 >= v3)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_26;
      }

      if (*(v5 + 16))
      {
        break;
      }

LABEL_4:
      ++v9;
      v8 += 2;
      if (v4 == v3)
      {
        a3 = v34;
        goto LABEL_24;
      }
    }

    v11 = *(v8 - 1);
    v10 = *v8;
    sub_1DACB71E4();
    v12 = sub_1DAA4BF3C(v11, v10);
    if ((v13 & 1) == 0)
    {

      goto LABEL_4;
    }

    v14 = (*(v5 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    sub_1DAA614EC(0, &qword_1EE123B50, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1DACC1D20;
    *(v17 + 32) = v16;
    *(v17 + 40) = v15;
    v32 = v17;
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v6;
    v20 = sub_1DAA4BF3C(v11, v10);
    v21 = v6[2];
    v22 = (v19 & 1) == 0;
    result = (v21 + v22);
    if (__OFADD__(v21, v22))
    {
      goto LABEL_27;
    }

    if (v6[3] < result)
    {
      v23 = v19;
      sub_1DAB609F8(result, isUniquelyReferenced_nonNull_native);
      result = sub_1DAA4BF3C(v11, v10);
      if ((v23 & 1) == (v24 & 1))
      {
        v20 = result;
        v19 = v23;
        goto LABEL_16;
      }

LABEL_29:
      result = sub_1DACBA1F4();
      __break(1u);
      return result;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = v19;
      result = sub_1DAB65A84();
      v19 = v31;
    }

LABEL_16:
    v6 = v35;
    if ((v19 & 1) == 0)
    {
      v35[(v20 >> 6) + 8] |= 1 << v20;
      v27 = (v35[6] + 16 * v20);
      *v27 = v11;
      v27[1] = v10;
      *(v35[7] + 8 * v20) = v32;
      v28 = v35[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (!v29)
      {
        v35[2] = v30;
        goto LABEL_20;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v25 = v35[7];
    v26 = *(v25 + 8 * v20);
    *(v25 + 8 * v20) = v32;

LABEL_20:
    a3 = v34;
    v7 = v33;
    if (v4 != v3)
    {
      continue;
    }

    break;
  }

LABEL_24:
  *a3 = v6;
  return result;
}

uint64_t sub_1DAB5427C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB542D8(uint64_t a1)
{
  v3 = *v1;
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = a1;
  sub_1DACB71E4();
  v4 = sub_1DACB89D4();
  sub_1DAA9CB70();
  v5 = sub_1DACB8A64();

  return v5;
}

uint64_t sub_1DAB5439C()
{
  v1 = *(v0 + 16);
  sub_1DAB543F8();
  return sub_1DACB83F4();
}

unint64_t sub_1DAB543F8()
{
  result = qword_1ECBE7CB8;
  if (!qword_1ECBE7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7CB8);
  }

  return result;
}

void *sub_1DAB5445C(uint64_t *a1)
{
  sub_1DAB546D0(0, &qword_1ECBE7CC0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB54620();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAB54674();
    sub_1DAB54734(&qword_1ECBE7CD8);
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1DAB54620()
{
  result = qword_1ECBE7CC8;
  if (!qword_1ECBE7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7CC8);
  }

  return result;
}

void sub_1DAB54674()
{
  if (!qword_1ECBE7CD0)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7CD0);
    }
  }
}

void sub_1DAB546D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB54620();
    v7 = a3(a1, &type metadata for TestFeedLookupService.TestData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAB54734(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAB54674();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB547A8()
{
  result = qword_1ECBE7CF0;
  if (!qword_1ECBE7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7CF0);
  }

  return result;
}

unint64_t sub_1DAB54800()
{
  result = qword_1ECBE7CF8;
  if (!qword_1ECBE7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7CF8);
  }

  return result;
}

unint64_t sub_1DAB54858()
{
  result = qword_1ECBE7D00;
  if (!qword_1ECBE7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D00);
  }

  return result;
}

uint64_t sub_1DAB548B8()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB54984()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB54A3C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB54B04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAB56418();
  *a2 = result;
  return result;
}

void sub_1DAB54B34(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000617465;
  v3 = 0x6D2D7365756C6176;
  v4 = 0xE600000000000000;
  v5 = 0x736569726573;
  if (*v1 != 2)
  {
    v5 = 1635018093;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x636E657265666572;
    v2 = 0xEE006174656D2D65;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1DAB54BBC()
{
  v1 = 0x6D2D7365756C6176;
  v2 = 0x736569726573;
  if (*v0 != 2)
  {
    v2 = 1635018093;
  }

  if (*v0)
  {
    v1 = 0x636E657265666572;
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

uint64_t sub_1DAB54C40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAB56418();
  *a1 = result;
  return result;
}

uint64_t sub_1DAB54C68(uint64_t a1)
{
  v2 = sub_1DAB57B44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB54CA4(uint64_t a1)
{
  v2 = sub_1DAB57B44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB54D68@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DAB54DC0(uint64_t a1)
{
  v2 = sub_1DAB57AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB54DFC(uint64_t a1)
{
  v2 = sub_1DAB57AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *sub_1DAB54E38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DAB56464(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1DAB54E7C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB54F40()
{
  *v0;
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB54FF0()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB550B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAB568F4();
  *a2 = result;
  return result;
}

void sub_1DAB550E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  v5 = 0xE400000000000000;
  v6 = 1751607656;
  v7 = 0xE300000000000000;
  v8 = 7827308;
  if (v2 != 3)
  {
    v8 = 0x656D756C6F76;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65736F6C63;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DAB551C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 118;
  }

  else
  {
    v4 = 6710642;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE100000000000000;
  }

  if (*a2)
  {
    v6 = 118;
  }

  else
  {
    v6 = 6710642;
  }

  if (*a2)
  {
    v7 = 0xE100000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DAB55254()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB552C4()
{
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB55320()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DAB55398(uint64_t *a1@<X8>)
{
  v2 = 6710642;
  if (*v1)
  {
    v2 = 118;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE100000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DAB553C4()
{
  if (*v0)
  {
    result = 118;
  }

  else
  {
    result = 6710642;
  }

  *v0;
  return result;
}

uint64_t sub_1DAB553F8(uint64_t a1)
{
  v2 = sub_1DAB58820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB55434(uint64_t a1)
{
  v2 = sub_1DAB58820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB55470@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DAB56940(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1DAB554EC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DAB55544(uint64_t a1)
{
  v2 = sub_1DAB5808C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB55580(uint64_t a1)
{
  v2 = sub_1DAB5808C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAB555BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DAB56B80(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAB5565C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DAB556B4(uint64_t a1)
{
  v2 = sub_1DAB57FE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB556F0(uint64_t a1)
{
  v2 = sub_1DAB57FE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAB5572C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DAB56E50(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAB55764()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB557CC()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAB55824@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DAB55890@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DAB558E8(uint64_t a1)
{
  v2 = sub_1DAB58718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB55924(uint64_t a1)
{
  v2 = sub_1DAB58718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DAB55960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAB57050(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAB5598C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1702125892;
  }

  else
  {
    v4 = 0x6D617473656D6954;
  }

  if (v3)
  {
    v5 = 0xE900000000000070;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1702125892;
  }

  else
  {
    v6 = 0x6D617473656D6954;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE900000000000070;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DAB55A30()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB55AB0()
{
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB55B1C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

void sub_1DAB55BA4(uint64_t *a1@<X8>)
{
  v2 = 1702125892;
  if (!*v1)
  {
    v2 = 0x6D617473656D6954;
  }

  v3 = 0xE900000000000070;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DAB55C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAB55CD8(uint64_t a1)
{
  v2 = sub_1DAB58134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB55D14(uint64_t a1)
{
  v2 = sub_1DAB58134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DAB55D50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAB571F8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1DAB55D80()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1DAB55DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();

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

uint64_t sub_1DAB55E90(uint64_t a1)
{
  v2 = sub_1DAB581DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB55ECC(uint64_t a1)
{
  v2 = sub_1DAB581DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB55F08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DAB573A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1DAB55F38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1635017060;
  }

  else
  {
    v4 = 0x7265732D61746164;
  }

  if (v3)
  {
    v5 = 0xEB00000000736569;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1635017060;
  }

  else
  {
    v6 = 0x7265732D61746164;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xEB00000000736569;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DAB55FE0()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB56064()
{
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB560D4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB56160@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DACB9F04();

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

void sub_1DAB561BC(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (!*v1)
  {
    v2 = 0x7265732D61746164;
  }

  v3 = 0xEB00000000736569;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DAB561FC()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x7265732D61746164;
  }

  *v0;
  return result;
}

uint64_t sub_1DAB56244@<X0>(char *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DAB562A4(uint64_t a1)
{
  v2 = sub_1DAB57920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB562E0(uint64_t a1)
{
  v2 = sub_1DAB57920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

ValueMetadata *sub_1DAB5631C@<X0>(uint64_t *a1@<X0>, ValueMetadata **a2@<X8>)
{
  result = sub_1DAB575A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DAB56348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 56);
  v6 = *(a3 + 16) + 1;
  while (1)
  {
    if (!--v6)
    {
      return 0;
    }

    v7 = *(v5 - 3);
    v8 = *(v5 - 1);
    v9 = *v5;
    if (v7 == a1 && *(v5 - 2) == a2)
    {
      break;
    }

    v5 += 4;
    if (sub_1DACBA174())
    {
      goto LABEL_11;
    }
  }

  v7 = a1;
LABEL_11:
  sub_1DACB71E4();
  sub_1DACB71E4();
  return v7;
}

uint64_t sub_1DAB56418()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

char *sub_1DAB56464(uint64_t *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5F0, sub_1DAB57AF0);
  v3 = v2;
  v20 = *(v2 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - v5;
  sub_1DAB587C0(0, &qword_1EE11F5F8, sub_1DAB57B44);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = v18 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DAB57B44();
  v15 = v21;
  sub_1DACBA2F4();
  if (!v15)
  {
    v19 = v6;
    v21 = v9;
    v23 = 0;
    sub_1DAB57B98();
    sub_1DACB9FE4();
    v6 = v24;
    v23 = 2;
    sub_1DAB57BEC();
    sub_1DACB9FE4();
    v18[2] = v24;
    v23 = 1;
    sub_1DAB57C40();
    sub_1DACB9FE4();
    v18[1] = 0;
    LOBYTE(v24) = 3;
    sub_1DAB57AF0();
    v17 = v19;
    sub_1DACB9F14();
    sub_1DAB58874(0, &qword_1EE11FB00, &type metadata for YahooChartResponse.Feature, MEMORY[0x1E69E62F8]);
    sub_1DAB57C94(&qword_1EE11FAF8, &qword_1EE11FB00, &type metadata for YahooChartResponse.Feature, sub_1DAB57D20);
    sub_1DACB9FE4();
    (*(v20 + 8))(v17, v3);
    (*(v21 + 8))(v12, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  return v6;
}

uint64_t sub_1DAB568F4()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAB56940(uint64_t *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5E0, sub_1DAB58820);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB58820();
  sub_1DACBA2F4();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_1DACB9FA4();
    sub_1DAB58874(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v11[30] = 1;
    sub_1DAB588C4();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1DAB56B80(uint64_t *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5D8, sub_1DAB5808C);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB5808C();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAB58874(0, &qword_1EE11FB10, &type metadata for YahooChartResponse.Record, MEMORY[0x1E69E62F8]);
    sub_1DAB57C94(&qword_1EE11FB08, &qword_1EE11FB10, &type metadata for YahooChartResponse.Record, sub_1DAB580E0);
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

void *sub_1DAB56E50(uint64_t *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5C8, sub_1DAB57FE4);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB57FE4();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAB58874(0, &qword_1EE11FB20, &type metadata for YahooChartResponse.MappingEntry, MEMORY[0x1E69E62F8]);
    sub_1DAB57C94(&qword_1EE11FB18, &qword_1EE11FB20, &type metadata for YahooChartResponse.MappingEntry, sub_1DAB58038);
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_1DAB57050(uint64_t *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5E8, sub_1DAB58718);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB58718();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAB5876C();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

unint64_t sub_1DAB571F8(uint64_t *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5C0, sub_1DAB58134);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB58134();
  v11 = v10;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAB58188();
    sub_1DACB9FE4();
    (*(v5 + 8))(v8, v4);
    v11 = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_1DAB573A0(uint64_t *a1)
{
  sub_1DAB587C0(0, &qword_1EE11F5D0, sub_1DAB581DC);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB581DC();
  sub_1DACBA2F4();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1DACB9FA4();
    v12 = 1;
    sub_1DACB9F34();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

ValueMetadata *sub_1DAB575A0(uint64_t *a1)
{
  v3 = &type metadata for YahooChartResponse.CodingKeys;
  sub_1DAB587C0(0, &qword_1EE11F600, sub_1DAB57920);
  v5 = v4;
  v17 = *(v4 - 8);
  v6 = *(v17 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v16 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB57920();
  sub_1DACBA2F4();
  if (!v1)
  {
    v20 = 1;
    v12 = v16;
    sub_1DACB9F14();
    sub_1DAB58874(0, &qword_1ECBE7D08, &type metadata for YahooChartResponse.DataSeries, MEMORY[0x1E69E62F8]);
    v19 = 0;
    sub_1DAB57C94(&qword_1ECBE7D10, &qword_1ECBE7D08, &type metadata for YahooChartResponse.DataSeries, sub_1DAB57974);
    sub_1DACB9FE4();
    v14 = *(v17 + 8);
    v14(v12, v5);
    v14(v10, v5);
    v3 = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_1DAB57920()
{
  result = qword_1EE121C40;
  if (!qword_1EE121C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C40);
  }

  return result;
}

unint64_t sub_1DAB57974()
{
  result = qword_1EE121BF8;
  if (!qword_1EE121BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BF8);
  }

  return result;
}

unint64_t sub_1DAB579EC()
{
  result = qword_1ECBE7D18;
  if (!qword_1ECBE7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D18);
  }

  return result;
}

unint64_t sub_1DAB57A44()
{
  result = qword_1EE121C30;
  if (!qword_1EE121C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C30);
  }

  return result;
}

unint64_t sub_1DAB57A9C()
{
  result = qword_1EE121C38;
  if (!qword_1EE121C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C38);
  }

  return result;
}

unint64_t sub_1DAB57AF0()
{
  result = qword_1EE121C10;
  if (!qword_1EE121C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C10);
  }

  return result;
}

unint64_t sub_1DAB57B44()
{
  result = qword_1EE121C28;
  if (!qword_1EE121C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C28);
  }

  return result;
}

unint64_t sub_1DAB57B98()
{
  result = qword_1EE121B48;
  if (!qword_1EE121B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B48);
  }

  return result;
}

unint64_t sub_1DAB57BEC()
{
  result = qword_1EE121B88;
  if (!qword_1EE121B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B88);
  }

  return result;
}

unint64_t sub_1DAB57C40()
{
  result = qword_1EE121B18;
  if (!qword_1EE121B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B18);
  }

  return result;
}

uint64_t sub_1DAB57C94(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAB58874(255, a2, a3, MEMORY[0x1E69E62F8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB57D20()
{
  result = qword_1EE121B68;
  if (!qword_1EE121B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B68);
  }

  return result;
}

unint64_t sub_1DAB57DD8()
{
  result = qword_1ECBE7D20;
  if (!qword_1ECBE7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D20);
  }

  return result;
}

unint64_t sub_1DAB57E30()
{
  result = qword_1ECBE7D28;
  if (!qword_1ECBE7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D28);
  }

  return result;
}

unint64_t sub_1DAB57E88()
{
  result = qword_1EE121C18;
  if (!qword_1EE121C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C18);
  }

  return result;
}

unint64_t sub_1DAB57EE0()
{
  result = qword_1EE121C20;
  if (!qword_1EE121C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C20);
  }

  return result;
}

unint64_t sub_1DAB57F38()
{
  result = qword_1EE121C00;
  if (!qword_1EE121C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C00);
  }

  return result;
}

unint64_t sub_1DAB57F90()
{
  result = qword_1EE121C08;
  if (!qword_1EE121C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121C08);
  }

  return result;
}

unint64_t sub_1DAB57FE4()
{
  result = qword_1EE121B60;
  if (!qword_1EE121B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B60);
  }

  return result;
}

unint64_t sub_1DAB58038()
{
  result = qword_1EE121BD8;
  if (!qword_1EE121BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BD8);
  }

  return result;
}

unint64_t sub_1DAB5808C()
{
  result = qword_1EE121BA0;
  if (!qword_1EE121BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BA0);
  }

  return result;
}

unint64_t sub_1DAB580E0()
{
  result = qword_1EE121BA8;
  if (!qword_1EE121BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BA8);
  }

  return result;
}

unint64_t sub_1DAB58134()
{
  result = qword_1EE121B40;
  if (!qword_1EE121B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B40);
  }

  return result;
}

unint64_t sub_1DAB58188()
{
  result = qword_1EE121B20;
  if (!qword_1EE121B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B20);
  }

  return result;
}

unint64_t sub_1DAB581DC()
{
  result = qword_1EE121B80;
  if (!qword_1EE121B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B80);
  }

  return result;
}

unint64_t sub_1DAB582A4()
{
  result = qword_1ECBE7D38;
  if (!qword_1ECBE7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D38);
  }

  return result;
}

unint64_t sub_1DAB582FC()
{
  result = qword_1ECBE7D40;
  if (!qword_1ECBE7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D40);
  }

  return result;
}

unint64_t sub_1DAB58354()
{
  result = qword_1ECBE7D48;
  if (!qword_1ECBE7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D48);
  }

  return result;
}

unint64_t sub_1DAB583AC()
{
  result = qword_1ECBE7D50;
  if (!qword_1ECBE7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D50);
  }

  return result;
}

unint64_t sub_1DAB58404()
{
  result = qword_1ECBE7D58;
  if (!qword_1ECBE7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D58);
  }

  return result;
}

unint64_t sub_1DAB5845C()
{
  result = qword_1EE121B70;
  if (!qword_1EE121B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B70);
  }

  return result;
}

unint64_t sub_1DAB584B4()
{
  result = qword_1EE121B78;
  if (!qword_1EE121B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B78);
  }

  return result;
}

unint64_t sub_1DAB5850C()
{
  result = qword_1EE121B30;
  if (!qword_1EE121B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B30);
  }

  return result;
}

unint64_t sub_1DAB58564()
{
  result = qword_1EE121B38;
  if (!qword_1EE121B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B38);
  }

  return result;
}

unint64_t sub_1DAB585BC()
{
  result = qword_1EE121B90;
  if (!qword_1EE121B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B90);
  }

  return result;
}

unint64_t sub_1DAB58614()
{
  result = qword_1EE121B98;
  if (!qword_1EE121B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B98);
  }

  return result;
}

unint64_t sub_1DAB5866C()
{
  result = qword_1EE121B50;
  if (!qword_1EE121B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B50);
  }

  return result;
}

unint64_t sub_1DAB586C4()
{
  result = qword_1EE121B58;
  if (!qword_1EE121B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B58);
  }

  return result;
}

unint64_t sub_1DAB58718()
{
  result = qword_1EE121BF0;
  if (!qword_1EE121BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BF0);
  }

  return result;
}

unint64_t sub_1DAB5876C()
{
  result = qword_1EE121BC8;
  if (!qword_1EE121BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BC8);
  }

  return result;
}

void sub_1DAB587C0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1DACBA004();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAB58820()
{
  result = qword_1EE121BC0;
  if (!qword_1EE121BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BC0);
  }

  return result;
}

void sub_1DAB58874(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1DAB588C4()
{
  result = qword_1EE123E88;
  if (!qword_1EE123E88)
  {
    sub_1DAB58874(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E88);
  }

  return result;
}

unint64_t sub_1DAB58958()
{
  result = qword_1EE121B28;
  if (!qword_1EE121B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B28);
  }

  return result;
}

unint64_t sub_1DAB589E0()
{
  result = qword_1ECBE7D60;
  if (!qword_1ECBE7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D60);
  }

  return result;
}

unint64_t sub_1DAB58A38()
{
  result = qword_1ECBE7D68;
  if (!qword_1ECBE7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D68);
  }

  return result;
}

unint64_t sub_1DAB58A90()
{
  result = qword_1ECBE7D70;
  if (!qword_1ECBE7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7D70);
  }

  return result;
}

unint64_t sub_1DAB58AE8()
{
  result = qword_1EE121BB0;
  if (!qword_1EE121BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BB0);
  }

  return result;
}

unint64_t sub_1DAB58B40()
{
  result = qword_1EE121BB8;
  if (!qword_1EE121BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BB8);
  }

  return result;
}

unint64_t sub_1DAB58B98()
{
  result = qword_1EE121BE0;
  if (!qword_1EE121BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BE0);
  }

  return result;
}

unint64_t sub_1DAB58BF0()
{
  result = qword_1EE121BE8;
  if (!qword_1EE121BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BE8);
  }

  return result;
}

unint64_t sub_1DAB58C44()
{
  result = qword_1EE121BD0;
  if (!qword_1EE121BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121BD0);
  }

  return result;
}

uint64_t sub_1DAB58CA0(uint64_t a1)
{
  v2 = v1;
  v31 = type metadata accessor for NewsFeedRequest();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v31);
  v29 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v48 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v11 = *(v4 + 80);
    v12 = a1 + ((v11 + 32) & ~v11);
    v13 = *(v4 + 72);
    v28 = v11;
    v26 = v13;
    v27 = (v11 + 16) & ~v11;
    for (i = v10 - 1; ; --i)
    {
      sub_1DAB59108(v12, v9);
      v15 = v2[5];
      v16 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v15);
      sub_1DAB5916C(&v9[*(v31 + 32)], v42);
      sub_1DAB5916C(v42, v43);
      v39 = v43[6];
      v40 = v43[7];
      v41 = v44;
      v35 = v43[2];
      v36 = v43[3];
      v37 = v43[4];
      v38 = v43[5];
      v33 = v43[0];
      v34 = v43[1];
      sub_1DAB5916C(v42, v45);
      sub_1DAA806E4(v45, &v32);
      sub_1DABBE584(&v33, v15, v16);
      v46[6] = v39;
      v46[7] = v40;
      v47 = v41;
      v46[2] = v35;
      v46[3] = v36;
      v46[4] = v37;
      v46[5] = v38;
      v46[0] = v33;
      v46[1] = v34;
      sub_1DAA9B1C8(v46);
      v17 = v29;
      sub_1DAB59108(v9, v29);
      v18 = v27;
      v19 = swift_allocObject();
      sub_1DAB591C8(v17, v19 + v18);
      v20 = sub_1DACB89D4();
      sub_1DACB8A54();

      sub_1DAB59298(v9);
      sub_1DACB9D34();
      v21 = *(v48 + 16);
      sub_1DACB9D74();
      sub_1DACB9D84();
      sub_1DACB9D44();
      if (!i)
      {
        break;
      }

      v12 += v26;
    }
  }

  v22 = sub_1DACB89D4();
  v23 = sub_1DACB8934();

  return v23;
}

uint64_t sub_1DAB58F98(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = *a2;
  v4 = a2[1];
  v6 = type metadata accessor for NewsFeedRequest();
  sub_1DAB5916C(a2 + *(v6 + 32), v24);
  *&v22 = v3;
  *(&v22 + 1) = v5;
  *&v23[0] = v4;
  sub_1DAB5916C(v24, v23 + 8);
  v18 = v23[5];
  v19 = v23[6];
  v20 = v23[7];
  v21 = v23[8];
  v14 = v23[1];
  v15 = v23[2];
  v16 = v23[3];
  v17 = v23[4];
  v12 = v22;
  v13 = v23[0];
  sub_1DAB592F4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAB59344(v24, v11);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB59108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsFeedRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB591C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsFeedRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB59298(uint64_t a1)
{
  v2 = type metadata accessor for NewsFeedRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAB592F4()
{
  if (!qword_1ECBE7D78)
  {
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7D78);
    }
  }
}

uint64_t sub_1DAB593A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1DACA53DC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1DAA4BF3C(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1DAB65314();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1DAB6478C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_1DAB594A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAB5FC04(0, qword_1EE123840, type metadata accessor for QuoteDetail, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for QuoteDetail();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1DAA63378(a1, qword_1EE123840, type metadata accessor for QuoteDetail);
    sub_1DAB5FECC(a2, a3, type metadata accessor for QuoteDetail, type metadata accessor for QuoteDetail, type metadata accessor for QuoteDetail, sub_1DAB65480, v10);

    return sub_1DAA63378(v10, qword_1EE123840, type metadata accessor for QuoteDetail);
  }

  else
  {
    sub_1DAA7C55C(a1, v14, type metadata accessor for QuoteDetail);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DACA5564(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DAB596FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAB5FC04(0, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for EarningsCalendarEventModel();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1DAA63378(a1, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel);
    sub_1DAB5FECC(a2, a3, type metadata accessor for EarningsCalendarEventModel, type metadata accessor for EarningsCalendarEventModel, type metadata accessor for EarningsCalendarEventModel, sub_1DAB664AC, v10);

    return sub_1DAA63378(v10, qword_1EE11DCD0, type metadata accessor for EarningsCalendarEventModel);
  }

  else
  {
    sub_1DAA7C55C(a1, v14, type metadata accessor for EarningsCalendarEventModel);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DACA5A5C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DAB59950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DAB5FC04(0, qword_1EE120360, type metadata accessor for Chart, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Chart(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1DAA63378(a1, qword_1EE120360, type metadata accessor for Chart);
    sub_1DAB5FECC(a2, a3, type metadata accessor for Chart, type metadata accessor for Chart, type metadata accessor for Chart, sub_1DAB66744, v10);

    return sub_1DAA63378(v10, qword_1EE120360, type metadata accessor for Chart);
  }

  else
  {
    sub_1DAA7C55C(a1, v14, type metadata accessor for Chart);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1DACA5BF0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1DAB59BA4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1DAA5616C(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_1DACA628C(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_1DACB9DF4();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_1DAA63378(a1, &unk_1ECBE7E00, sub_1DAB69B4C);
    sub_1DAB60050(a2, v10);
    v8 = sub_1DACB9DF4();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_1DAA63378(v10, &unk_1ECBE7E00, sub_1DAB69B4C);
  }

  return result;
}

id NewsCoreConfiguration.__allocating_init(experimentalizableFieldPostfix:appConfiguration:topStoriesConfiguration:newsUIConfiguration:newsPersonalizationTreatment:endpointConfigurations:paidBundleConfiguration:paidBundleViaOfferConfiguration:analyticsEndpointMaxPayloadSize:maxRetriesForDroppedFeeds:delayBeforeRetryingDroppedFeeds:enableCacheFallbackForArticleRecirculation:prerollLoadingTimeout:prerollReadyToPlayTimeout:isPrivateDataEncryptionRequired:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8, double a9, double a10, double a11, __int128 *a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16)
{
  v17 = v16;
  v71 = a3;
  v66 = a7;
  v62 = a1;
  v63 = a2;
  v69 = a16;
  v68 = a15;
  v67 = a14;
  v65 = a13;
  v64 = sub_1DACB81D4();
  v26 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v70 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_allocWithZone(v17);
  v29 = *a4;
  v30 = a4[3];
  memcpy(v75, a6, sizeof(v75));
  memcpy(v81, a8, 0x1F9uLL);
  v31 = a12[3];
  v78 = a12[2];
  v79 = v31;
  v80 = *(a12 + 64);
  v32 = a12[1];
  v76 = *a12;
  v77 = v32;
  v33 = &v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix];
  v34 = v63;
  *v33 = v62;
  v33[1] = v34;
  sub_1DAB697A0(a3, &v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration], type metadata accessor for AppConfiguration);
  v35 = &v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration];
  *v35 = v29;
  *(v35 + 8) = *(a4 + 1);
  *(v35 + 3) = v30;
  v36 = &v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration];
  *(v36 + 8) = *(a5 + 64);
  v37 = *(a5 + 48);
  *(v36 + 2) = *(a5 + 32);
  *(v36 + 3) = v37;
  v38 = *(a5 + 16);
  *v36 = *a5;
  *(v36 + 1) = v38;
  memcpy(&v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsPersonalizationTreatment], a6, 0x8DBuLL);
  *&v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_endpointConfigurations] = v66;
  memcpy(&v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleConfiguration], v81, 0x1F9uLL);
  v39 = &v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration];
  *v39 = v76;
  v41 = v78;
  v40 = v79;
  v42 = v77;
  v39[64] = v80;
  *(v39 + 2) = v41;
  *(v39 + 3) = v40;
  *(v39 + 1) = v42;
  *&v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_analyticsEndpointMaxPayloadSize] = v65;
  *&v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_maxRetriesForDroppedFeeds] = v67;
  *&v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_delayBeforeRetryingDroppedFeeds] = a9;
  v43 = v69;
  v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_enableCacheFallbackForArticleRecirculation] = v68;
  *&v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollLoadingTimeout] = a10;
  *&v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollReadyToPlayTimeout] = a11;
  v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_isPrivateDataEncryptionRequired] = v43;
  v44 = swift_allocObject();
  memcpy((v44 + 16), v81, 0x1F9uLL);
  v74[64] = MEMORY[0x1E69E7CC0];
  sub_1DAA4F398(v81, v74);
  sub_1DAA4F3F4(&v76, v74);
  sub_1DAA4F4F4(&qword_1EE1255D0, MEMORY[0x1E69D6420]);
  sub_1DAB5FC04(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1DAA5A834();
  sub_1DACB9BB4();
  v45 = MEMORY[0x1E69D6A80];
  sub_1DAB5ABC0(0, &unk_1EE11FF20, &unk_1EE11F830, 0x1E69B5428, MEMORY[0x1E69D6A80]);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  *&v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleConfig] = sub_1DACB8914();
  v49 = swift_allocObject();
  v50 = v79;
  *(v49 + 48) = v78;
  *(v49 + 64) = v50;
  *(v49 + 80) = v80;
  v51 = v77;
  *(v49 + 16) = v76;
  *(v49 + 32) = v51;
  v74[0] = MEMORY[0x1E69E7CC0];
  sub_1DACB9BB4();
  sub_1DAB5ABC0(0, &qword_1EE11FF18, &unk_1EE11F820, 0x1E69B5430, v45);
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  *&v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleViaOfferConfig] = sub_1DACB8914();
  v55 = swift_allocObject();
  memcpy((v55 + 16), v75, 0x8DBuLL);
  v74[0] = MEMORY[0x1E69E7CC0];
  sub_1DACB9BB4();
  sub_1DAB5ABC0(0, &qword_1EE11FF10, &unk_1EE11F810, 0x1E69B5480, v45);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  *&v28[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPersonalizationTreatment] = sub_1DACB8914();
  v73.receiver = v28;
  v73.super_class = v72;
  v59 = objc_msgSendSuper2(&v73, sel_init);
  sub_1DAA640AC(v71);
  return v59;
}

uint64_t sub_1DAB5A264(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DAA96D8C();
    v2 = sub_1DACB9EA4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;
  sub_1DACB71F4();
  result = sub_1DACB71E4();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;
    sub_1DACB71E4();
    sub_1DACB71E4();
    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1DAA5616C(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_1DAA5616C(v34, v35);
    v19 = *(v2 + 40);
    result = sub_1DACB9BF4();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_1DAA5616C(v35, (*(v2 + 56) + 32 * v10));
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

    v5 = *(a1 + 64 + 8 * v12);
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

uint64_t NewsCoreConfiguration.experimentalizableFieldPostfix.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix);
  v2 = *(v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix + 8);
  sub_1DACB71E4();
  return v1;
}

id NewsCoreConfiguration.init(experimentalizableFieldPostfix:appConfiguration:topStoriesConfiguration:newsUIConfiguration:newsPersonalizationTreatment:endpointConfigurations:paidBundleConfiguration:paidBundleViaOfferConfiguration:analyticsEndpointMaxPayloadSize:maxRetriesForDroppedFeeds:delayBeforeRetryingDroppedFeeds:enableCacheFallbackForArticleRecirculation:prerollLoadingTimeout:prerollReadyToPlayTimeout:isPrivateDataEncryptionRequired:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, const void *a6, uint64_t a7, const void *a8, double a9, double a10, double a11, __int128 *a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16)
{
  v62 = a7;
  v67 = a3;
  v59 = a1;
  v60 = a2;
  v66 = a16;
  v65 = a15;
  v64 = a14;
  v63 = a13;
  ObjectType = swift_getObjectType();
  v25 = sub_1DACB81D4();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v61 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a4;
  v29 = a4[3];
  memcpy(v71, a6, sizeof(v71));
  memcpy(v77, a8, 0x1F9uLL);
  v30 = a12[3];
  v74 = a12[2];
  v75 = v30;
  v76 = *(a12 + 64);
  v31 = a12[1];
  v72 = *a12;
  v73 = v31;
  v32 = &v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix];
  v33 = v60;
  *v32 = v59;
  v32[1] = v33;
  sub_1DAB697A0(a3, &v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration], type metadata accessor for AppConfiguration);
  v34 = &v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration];
  *v34 = v28;
  *(v34 + 8) = *(a4 + 1);
  *(v34 + 3) = v29;
  v35 = &v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration];
  *(v35 + 8) = *(a5 + 64);
  v36 = *(a5 + 48);
  *(v35 + 2) = *(a5 + 32);
  *(v35 + 3) = v36;
  v37 = *(a5 + 16);
  *v35 = *a5;
  *(v35 + 1) = v37;
  memcpy(&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsPersonalizationTreatment], a6, 0x8DBuLL);
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_endpointConfigurations] = v62;
  memcpy(&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleConfiguration], a8, 0x1F9uLL);
  v38 = &v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_paidBundleViaOfferConfiguration];
  v39 = a12[3];
  *(v38 + 2) = a12[2];
  *(v38 + 3) = v39;
  v38[64] = *(a12 + 64);
  v40 = a12[1];
  *v38 = *a12;
  *(v38 + 1) = v40;
  v41 = v64;
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_analyticsEndpointMaxPayloadSize] = v63;
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_maxRetriesForDroppedFeeds] = v41;
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_delayBeforeRetryingDroppedFeeds] = a9;
  LOBYTE(v41) = v66;
  v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_enableCacheFallbackForArticleRecirculation] = v65;
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollLoadingTimeout] = a10;
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_prerollReadyToPlayTimeout] = a11;
  v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_isPrivateDataEncryptionRequired] = v41;
  v42 = swift_allocObject();
  memcpy((v42 + 16), a8, 0x1F9uLL);
  v70[64] = MEMORY[0x1E69E7CC0];
  sub_1DAA4F398(v77, v70);
  sub_1DAA4F3F4(&v72, v70);
  sub_1DAA4F4F4(&qword_1EE1255D0, MEMORY[0x1E69D6420]);
  sub_1DAB5FC04(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1DAA5A834();
  sub_1DACB9BB4();
  v43 = MEMORY[0x1E69D6A80];
  sub_1DAB5ABC0(0, &unk_1EE11FF20, &unk_1EE11F830, 0x1E69B5428, MEMORY[0x1E69D6A80]);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleConfig] = sub_1DACB8914();
  v47 = swift_allocObject();
  v48 = v75;
  *(v47 + 48) = v74;
  *(v47 + 64) = v48;
  *(v47 + 80) = v76;
  v49 = v73;
  *(v47 + 16) = v72;
  *(v47 + 32) = v49;
  v70[0] = MEMORY[0x1E69E7CC0];
  sub_1DACB9BB4();
  sub_1DAB5ABC0(0, &qword_1EE11FF18, &unk_1EE11F820, 0x1E69B5430, v43);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPaidBundleViaOfferConfig] = sub_1DACB8914();
  v53 = swift_allocObject();
  memcpy((v53 + 16), v71, 0x8DBuLL);
  v70[0] = MEMORY[0x1E69E7CC0];
  sub_1DACB9BB4();
  sub_1DAB5ABC0(0, &qword_1EE11FF10, &unk_1EE11F810, 0x1E69B5480, v43);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  *&v16[OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_lazyPersonalizationTreatment] = sub_1DACB8914();
  v69.receiver = v16;
  v69.super_class = ObjectType;
  v57 = objc_msgSendSuper2(&v69, sel_init);
  sub_1DAA640AC(v67);
  return v57;
}

void sub_1DAB5ABC0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1DAA420F4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1DAB5AC28(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1DAB5ACC8(a1);
  sub_1DAA55EB0(v3);

  v4 = objc_allocWithZone(MEMORY[0x1E69B5430]);
  v5 = sub_1DACB9114();

  v6 = [v4 initWithConfigDictionary_];

  *a2 = v6;
}

unint64_t sub_1DAB5ACC8(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = sub_1DACB75A4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1DACB7594();
  v5 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v5;
  v21 = *(a1 + 64);
  v6 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v6;
  sub_1DAB6A5A4();
  v7 = sub_1DACB7584();
  v9 = v8;

  v10 = objc_opt_self();
  v11 = sub_1DACB7B44();
  *&v20[0] = 0;
  v12 = [v10 JSONObjectWithData:v11 options:4 error:v20];

  if (!v12)
  {
    v15 = *&v20[0];
    v16 = sub_1DACB78C4();

    swift_willThrow();
    goto LABEL_5;
  }

  v13 = *&v20[0];
  sub_1DACB9B74();
  swift_unknownObjectRelease();
  sub_1DAA61100();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v17 = sub_1DAB68C38(MEMORY[0x1E69E7CC0]);
    sub_1DAA563C0(v7, v9);
    result = v17;
    goto LABEL_6;
  }

  sub_1DAA563C0(v7, v9);
  result = v19;
LABEL_6:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

id NewsCoreConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsCoreConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NewsCoreConfiguration.topStoriesConfig.getter()
{
  sub_1DAB5B568();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC2610;
  strcpy(v44, "channelId");
  WORD5(v44[0]) = 0;
  HIDWORD(v44[0]) = -385875968;
  v3 = MEMORY[0x1E69E6158];
  sub_1DACB9C14();
  v4 = (v0 + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_topStoriesConfiguration);
  v6 = *v4;
  v5 = *(v4 + 1);
  *(inited + 96) = v3;
  *(inited + 72) = v6;
  *(inited + 80) = v5;
  strcpy(v44, "badgesTimeout");
  HIWORD(v44[0]) = -4864;
  sub_1DACB71E4();
  sub_1DACB9C14();
  v7 = v4[3];
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 168) = MEMORY[0x1E69E7360];
  *(inited + 144) = v7;
  strcpy(v44, "styleConfigs");
  BYTE13(v44[0]) = 0;
  HIWORD(v44[0]) = -5120;
  sub_1DACB9C14();
  v8 = *(v4 + 2);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    goto LABEL_13;
  }

  v30 = inited;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1DAB25D18(0, v9, 0);
  if (!*(v8 + 16))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 0;
  v1 = &v37;
  v10 = v45;
  v12 = (v8 + 32);
  while (1)
  {
    v13 = v12[1];
    v44[0] = *v12;
    v44[1] = v13;
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[5];
    v44[4] = v12[4];
    v44[5] = v16;
    v44[2] = v14;
    v44[3] = v15;
    v17 = v12[3];
    v39 = v12[2];
    v40 = v17;
    v18 = v12[5];
    v41 = v12[4];
    v42 = v18;
    v19 = v12[1];
    v37 = *v12;
    v38 = v19;
    sub_1DAB5FB54(v44, &v31);
    sub_1DAB5B5DC(&v37, &v43);
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v36 = v42;
    v31 = v37;
    v32 = v38;
    sub_1DAB5FBB0(&v31);
    v20 = v43;
    v45 = v10;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1DAB25D18((v21 > 1), v22 + 1, 1);
      v10 = v45;
    }

    *(v10 + 16) = v22 + 1;
    *(v10 + 8 * v22 + 32) = v20;
    if (v9 - 1 == v11)
    {
      break;
    }

    v12 += 6;
    if (++v11 >= *(v8 + 16))
    {
      goto LABEL_15;
    }
  }

  inited = v30;
LABEL_13:
  sub_1DAB5FC04(0, &qword_1EE11FA48, sub_1DAB279F4, MEMORY[0x1E69E62F8]);
  *(inited + 240) = v23;
  *(inited + 216) = v10;
  sub_1DAB68448(inited);
  swift_setDeallocating();
  sub_1DAB6A54C(0, &qword_1EE11F770);
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x1E69B5660]);
  v25 = sub_1DACB9114();
  v26 = [v24 initWithConfigDictionary_];

  if (v26)
  {

    return v26;
  }

LABEL_19:
  __break(1u);
  v28 = v1[3];
  v33 = v1[2];
  v34 = v28;
  v29 = v1[5];
  v35 = v1[4];
  v36 = v29;
  v31 = v37;
  v32 = v38;
  sub_1DAB5FBB0(&v31);

  __break(1u);
  return result;
}

void sub_1DAB5B568()
{
  if (!qword_1EE11F4A0)
  {
    sub_1DAB6A54C(255, &qword_1EE11F770);
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F4A0);
    }
  }
}
uint64_t sub_1BABCEDD0(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    sub_1BAB21C84(a2, v13);
    sub_1BAB21C84(a2, v13);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v10 = swift_slowAlloc();
      sub_1BAB21C84(a2, v13);
      v9 = sub_1BABCDE08(v10, v6, a1, a2);
      MEMORY[0x1BFAFE460](v10, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    sub_1BAB21C84(a2, v13);
    v8 = sub_1BAB21C84(a2, v13);
  }

  MEMORY[0x1EEE9AC00](v8);
  bzero(&v13[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v7);
  sub_1BAB21C84(a2, v13);
  v9 = sub_1BABCE908(&v13[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0) - 8], v6, a1, a2);
  sub_1BAB21D34(a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_8:
  sub_1BAB21D34(a2);
  sub_1BAB21D34(a2);
  return v9;
}

uint64_t sub_1BABCEFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BABE6D9C();
  v11[3] = a3;
  v11[4] = a5;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v11);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_2, a1, a3);
  v9 = sub_1BABE6D8C();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_1BABCF074(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BABCF0F4(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1BABCF298(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CB8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BAAD2E14(a2, &qword_1EBC12CB8);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v9 = type metadata accessor for ReplicatorControlXPCServerParameters.Pair(0);
  v10 = sub_1BABE6BEC();
  v12 = v11;
  sub_1BAAD77F0(&qword_1EBC12CC0, type metadata accessor for ReplicatorControlXPCServerParameters.Pair);
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1BAB23414(v8, a2, &qword_1EBC12CB8);
  sub_1BAAD2DAC(a2, v6, &qword_1EBC12CB8);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_1BAAD2E14(v6, &qword_1EBC12CB8);
  return v14;
}

BOOL sub_1BABCF4D4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CA8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BAAD2E14(a2, &qword_1EBC12CA8);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v9 = type metadata accessor for ReplicatorControlXPCServerParameters.Unpair(0);
  v10 = sub_1BABE6BEC();
  v12 = v11;
  sub_1BAAD77F0(&qword_1EBC12CB0, type metadata accessor for ReplicatorControlXPCServerParameters.Unpair);
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1BAB23414(v8, a2, &qword_1EBC12CA8);
  sub_1BAAD2DAC(a2, v6, &qword_1EBC12CA8);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_1BAAD2E14(v6, &qword_1EBC12CA8);
  return v14;
}

BOOL sub_1BABCF710(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C98);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BAAD2E14(a2, &qword_1EBC12C98);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v9 = type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable(0);
  v10 = sub_1BABE6BEC();
  v12 = v11;
  sub_1BAAD77F0(&qword_1EBC12CA0, type metadata accessor for ReplicatorControlXPCServerParameters.Unavailable);
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1BAB23414(v8, a2, &qword_1EBC12C98);
  sub_1BAAD2DAC(a2, v6, &qword_1EBC12C98);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_1BAAD2E14(v6, &qword_1EBC12C98);
  return v14;
}

BOOL sub_1BABCF98C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C78);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BAAD2E14(a2, &qword_1EBC12C78);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v9 = type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID(0);
  v10 = sub_1BABE6BEC();
  v12 = v11;
  sub_1BAAD77F0(&qword_1EBC12C80, type metadata accessor for ReplicatorControlXPCServerParameters.AllowListID);
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1BAB23414(v8, a2, &qword_1EBC12C78);
  sub_1BAAD2DAC(a2, v6, &qword_1EBC12C78);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_1BAAD2E14(v6, &qword_1EBC12C78);
  return v14;
}

BOOL sub_1BABCFBE8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C60);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BAAD2E14(a2, &qword_1EBC12C60);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  PushToken = type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken(0);
  v10 = sub_1BABE6BEC();
  v12 = v11;
  sub_1BAAD77F0(&qword_1EBC12C68, type metadata accessor for ReplicatorControlXPCServerParameters.GetPushToken);
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  v13 = *(PushToken - 8);
  (*(v13 + 56))(v8, 0, 1, PushToken);
  sub_1BAB23414(v8, a2, &qword_1EBC12C60);
  sub_1BAAD2DAC(a2, v6, &qword_1EBC12C60);
  v14 = (*(v13 + 48))(v6, 1, PushToken) != 1;
  sub_1BAAD2E14(v6, &qword_1EBC12C60);
  return v14;
}

BOOL sub_1BABCFE24(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C50);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BAAD2E14(a2, &qword_1EBC12C50);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  PDRPairingID = type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID(0);
  v10 = sub_1BABE6BEC();
  v12 = v11;
  sub_1BAAD77F0(&qword_1EBC12C58, type metadata accessor for ReplicatorControlXPCServerParameters.GetPDRPairingID);
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  v13 = *(PDRPairingID - 8);
  (*(v13 + 56))(v8, 0, 1, PDRPairingID);
  sub_1BAB23414(v8, a2, &qword_1EBC12C50);
  sub_1BAAD2DAC(a2, v6, &qword_1EBC12C50);
  v14 = (*(v13 + 48))(v6, 1, PDRPairingID) != 1;
  sub_1BAAD2E14(v6, &qword_1EBC12C50);
  return v14;
}

BOOL sub_1BABD00A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C40);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BAAD2E14(a2, &qword_1EBC12C40);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  LocalDevice = type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice(0);
  v10 = sub_1BABE6BEC();
  v12 = v11;
  sub_1BAAD77F0(&qword_1EBC12C48, type metadata accessor for ReplicatorControlXPCServerResponse.GetLocalDevice);
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  v13 = *(LocalDevice - 8);
  (*(v13 + 56))(v8, 0, 1, LocalDevice);
  sub_1BAB23414(v8, a2, &qword_1EBC12C40);
  sub_1BAAD2DAC(a2, v6, &qword_1EBC12C40);
  v14 = (*(v13 + 48))(v6, 1, LocalDevice) != 1;
  sub_1BAAD2E14(v6, &qword_1EBC12C40);
  return v14;
}

BOOL sub_1BABD031C(uint64_t a1, void *a2)
{
  sub_1BAB23598(*a2, a2[1]);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v3 = sub_1BABE6BEC();
  v5 = v4;
  sub_1BAB231C8();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v3, v5);
  *a2 = v7;
  a2[1] = v8;
  return v8 >> 60 != 15;
}

BOOL sub_1BABD040C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12C18);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BAAD2E14(a2, &qword_1EBC12C18);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  PDRPairingID = type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID(0);
  v10 = sub_1BABE6BEC();
  v12 = v11;
  sub_1BAAD77F0(&unk_1EBC12C20, type metadata accessor for ReplicatorControlXPCServerResponse.GetPDRPairingID);
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  v13 = *(PDRPairingID - 8);
  (*(v13 + 56))(v8, 0, 1, PDRPairingID);
  sub_1BAB23414(v8, a2, &qword_1EBC12C18);
  sub_1BAAD2DAC(a2, v6, &qword_1EBC12C18);
  v14 = (*(v13 + 48))(v6, 1, PDRPairingID) != 1;
  sub_1BAAD2E14(v6, &qword_1EBC12C18);
  return v14;
}

BOOL sub_1BABD0718(uint64_t a1, void *a2, void (*a3)(void))
{

  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v5 = sub_1BABE6BEC();
  v7 = v6;
  a3();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v5, v7);
  *a2 = v9;
  a2[1] = v10;
  return v10 != 0;
}

BOOL sub_1BABD080C(uint64_t a1, uint64_t a2)
{
  sub_1BAB22FC0(*a2);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v3 = sub_1BABE6BEC();
  v5 = v4;
  sub_1BAB22F6C();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v3, v5);
  *a2 = v7;
  *(a2 + 8) = v8;
  return v7 != 1;
}

BOOL sub_1BABD0904(uint64_t a1, uint64_t a2)
{

  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v3 = sub_1BABE6BEC();
  v5 = v4;
  sub_1BAB22F18();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v3, v5);
  *a2 = v7;
  *(a2 + 8) = v8;
  return v7 != 0;
}

BOOL sub_1BABD09F8(uint64_t a1, uint64_t a2)
{

  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v3 = sub_1BABE6BEC();
  v5 = v4;
  sub_1BAB22EC4();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v3, v5);
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  return v7 != 0;
}

BOOL sub_1BABD0B1C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12BF0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BAAD2E14(a2, &qword_1EBC12BF0);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v9 = type metadata accessor for ReplicationXPCServerParameters.SendMessage(0);
  v10 = sub_1BABE6BEC();
  v12 = v11;
  sub_1BAAD77F0(&qword_1EBC12BF8, type metadata accessor for ReplicationXPCServerParameters.SendMessage);
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1BAB23414(v8, a2, &qword_1EBC12BF0);
  sub_1BAAD2DAC(a2, v6, &qword_1EBC12BF0);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_1BAAD2E14(v6, &qword_1EBC12BF0);
  return v14;
}

BOOL sub_1BABD0E08(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v7 = a2[2];
  v8 = a2[4];
  v19[3] = a2[3];
  v19[4] = v8;
  v9 = *a2;
  v19[1] = a2[1];
  v19[2] = v7;
  v19[0] = v9;
  sub_1BAAD2E14(v19, a3);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v10 = sub_1BABE6BEC();
  v12 = v11;
  a5();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v18;
  return *(a2 + 1) != 0;
}

BOOL sub_1BABD0F3C(uint64_t a1, uint64_t *a2)
{
  sub_1BAB21C38(*a2);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v3 = sub_1BABE6BEC();
  v5 = v4;
  sub_1BAB21B98();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v3, v5);
  *a2 = v7;
  a2[2] = v8;
  return v7 != 0;
}

BOOL sub_1BABD1038(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AD8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BAAD2E14(a2, &qword_1EBC12AD8);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v9 = type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage(0);
  v10 = sub_1BABE6BEC();
  v12 = v11;
  sub_1BAAD77F0(&qword_1EBC12AE0, type metadata accessor for ReplicationXPCServerResponse.ReceiveMessage);
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  v13 = *(v9 - 8);
  (*(v13 + 56))(v8, 0, 1, v9);
  sub_1BAB23414(v8, a2, &qword_1EBC12AD8);
  sub_1BAAD2DAC(a2, v6, &qword_1EBC12AD8);
  v14 = (*(v13 + 48))(v6, 1, v9) != 1;
  sub_1BAAD2E14(v6, &qword_1EBC12AD8);
  return v14;
}

BOOL sub_1BABD1294(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13840);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BAAD2E14(a2, &qword_1EBC13840);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  LocalDeviceID = type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID(0);
  v10 = sub_1BABE6BEC();
  v12 = v11;
  sub_1BAAD77F0(&unk_1EBC122E0, type metadata accessor for ReplicationXPCServerResponse.GetLocalDeviceID);
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  v13 = *(LocalDeviceID - 8);
  (*(v13 + 56))(v8, 0, 1, LocalDeviceID);
  sub_1BAB23414(v8, a2, &qword_1EBC13840);
  sub_1BAAD2DAC(a2, v6, &qword_1EBC13840);
  v14 = (*(v13 + 48))(v6, 1, LocalDeviceID) != 1;
  sub_1BAAD2E14(v6, &qword_1EBC13840);
  return v14;
}

BOOL sub_1BABD1510(uint64_t a1, _BYTE *a2, void (*a3)(void))
{
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v5 = sub_1BABE6BEC();
  v7 = v6;
  a3();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v5, v7);
  *a2 = v9;
  return v9 != 2;
}

BOOL sub_1BABD15F8(uint64_t a1, uint64_t *a2)
{
  sub_1BAB22B9C(*a2);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v3 = sub_1BABE6BEC();
  v5 = v4;
  sub_1BAB22B48();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v3, v5);
  *a2 = v7;
  return v7 != 0;
}

BOOL sub_1BABD16E4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12BC8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  sub_1BAAD2E14(a2, &qword_1EBC12BC8);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  LocalDeviceID = type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID();
  v10 = sub_1BABE6BEC();
  v12 = v11;
  sub_1BAAD77F0(&qword_1EBC12BD0, type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID);
  sub_1BABE6A5C();

  sub_1BAAD73E4(v10, v12);
  v13 = *(LocalDeviceID - 8);
  (*(v13 + 56))(v8, 0, 1, LocalDeviceID);
  sub_1BAB23414(v8, a2, &qword_1EBC12BC8);
  sub_1BAAD2DAC(a2, v6, &qword_1EBC12BC8);
  v14 = (*(v13 + 48))(v6, 1, LocalDeviceID) != 1;
  sub_1BAAD2E14(v6, &qword_1EBC12BC8);
  return v14;
}

BOOL sub_1BABD1920(uint64_t a1, void *a2, void (*a3)(void))
{

  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v5 = sub_1BABE6BEC();
  v7 = v6;
  a3();
  sub_1BABE6A5C();

  sub_1BAAD73E4(v5, v7);
  *a2 = v9;
  return v9 != 0;
}

_BYTE *MigrationServiceError.init(code:underlyingError:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

id MigrationXPCServerResponseGetRecords.__allocating_init(records:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC18ReplicatorServices36MigrationXPCServerResponseGetRecords_records] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1BABD1AA4()
{
  qword_1EBC12340 = 0xD000000000000026;
  *algn_1EBC12348 = 0x80000001BABF7910;
  qword_1EBC12350 = 0xD00000000000001CLL;
  unk_1EBC12358 = 0x80000001BABF8950;
}

uint64_t static MigrationServiceDefinition.domain.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBC12338 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_1EBC12348;
  v2 = qword_1EBC12350;
  v3 = unk_1EBC12358;
  *a1 = qword_1EBC12340;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_1BABD1B84@<X0>(void *a1@<X8>)
{
  if (qword_1EBC12338 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_1EBC12348;
  v2 = qword_1EBC12350;
  v3 = unk_1EBC12358;
  *a1 = qword_1EBC12340;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

ReplicatorServices::MigrationServiceError::Code_optional __swiftcall MigrationServiceError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t MigrationServiceError.errorUserInfo.getter()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC14040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BABE9F00;
    *(inited + 32) = sub_1BABE751C();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_2);
    v4 = sub_1BAAE83B0(inited);
    swift_setDeallocating();
    sub_1BAAD2E14(inited + 32, &unk_1EBC132C0);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1BAAE83B0(v6);
  }
}

uint64_t sub_1BABD1DB0(uint64_t a1)
{
  v2 = sub_1BABD4A20();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BABD1DEC(uint64_t a1)
{
  v2 = sub_1BABD4A20();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BABD1E58(uint64_t a1)
{
  v2 = sub_1BABD3DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BABD1E94(uint64_t a1)
{
  v2 = sub_1BABD3DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MigrationXPCServerResponse.GetLocalDeviceID.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14050);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABD3DD8();
  sub_1BABE800C();
  sub_1BABE6CFC();
  sub_1BAAD77F0(&qword_1EBC12220, MEMORY[0x1E69695A8]);
  sub_1BABE7E3C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MigrationXPCServerResponse.GetLocalDeviceID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC14068);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  LocalDeviceID = type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID();
  MEMORY[0x1EEE9AC00](LocalDeviceID - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABD3DD8();
  sub_1BABE7FFC();
  if (!v2)
  {
    v13 = v16;
    sub_1BABE6CFC();
    sub_1BAAD77F0(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
    sub_1BABE7D8C();
    (*(v17 + 8))(v9, v7);
    sub_1BAB23414(v6, v12, &qword_1EBC12B60);
    sub_1BABD3E78(v12, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BABD22C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14050);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABD3DD8();
  sub_1BABE800C();
  sub_1BABE6CFC();
  sub_1BAAD77F0(&qword_1EBC12220, MEMORY[0x1E69695A8]);
  sub_1BABE7E3C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BABD2438()
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BAAD77F0(&unk_1EBC13D80, type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID);
  v0 = sub_1BABE6A8C();
  v2 = v1;
  v3 = sub_1BABE6BDC();
  sub_1BAAD73E4(v0, v2);

  return v3;
}

uint64_t sub_1BABD2520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12BC8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v8 = sub_1BABE6BEC();
  v10 = v9;
  sub_1BAAD77F0(&qword_1EBC12BD0, type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID);
  sub_1BABE6A5C();
  sub_1BAAD2E14(a2, &qword_1EBC12BC8);
  sub_1BAAD73E4(v8, v10);

  (*(*(a3 - 8) + 56))(v7, 0, 1, a3);
  return sub_1BAB23414(v7, a2, &qword_1EBC12BC8);
}

uint64_t sub_1BABD26FC(uint64_t a1)
{
  v2 = sub_1BABD3EDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BABD2738(uint64_t a1)
{
  v2 = sub_1BABD3EDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MigrationXPCServerResponse.GetDevices.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14078);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABD3EDC();

  sub_1BABE800C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  sub_1BABD3F30(&qword_1EBC11D70, qword_1EBC11FA0);
  sub_1BABE7E7C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MigrationXPCServerResponse.GetDevices.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14090);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABD3EDC();
  sub_1BABE7FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
    sub_1BABD3F30(&qword_1ED787C10, &qword_1ED787C30);
    sub_1BABE7DCC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BABD2B60(uint64_t a1)
{
  v2 = sub_1BABD3FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BABD2B9C(uint64_t a1)
{
  v2 = sub_1BABD3FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MigrationXPCServerResponse.GetClientDescriptors.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14098);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABD3FCC();

  sub_1BABE800C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13440);
  sub_1BAB64894(&unk_1ED7872F0, sub_1BAB641F8);
  sub_1BABE7E7C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MigrationXPCServerResponse.GetClientDescriptors.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC140B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABD3FCC();
  sub_1BABE7FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13440);
    sub_1BAB64894(&qword_1EBC11D58, sub_1BAB6424C);
    sub_1BABE7DCC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BABD2FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74616E6974736564 && a2 == 0xEC000000736E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BABE7EDC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BABD3060(uint64_t a1)
{
  v2 = sub_1BABD4020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BABD309C(uint64_t a1)
{
  v2 = sub_1BABD4020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MigrationXPCServerResponse.GetRecordDestinations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC140B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABD4020();

  sub_1BABE800C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC140C8);
  sub_1BABD4074(&unk_1EBC140D0, sub_1BAB64498);
  sub_1BABE7E7C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MigrationXPCServerResponse.GetRecordDestinations.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC140E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABD4020();
  sub_1BABE7FFC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC140C8);
    sub_1BABD4074(&unk_1EBC140E8, sub_1BAB64540);
    sub_1BABE7DCC();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BABD3474(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  a3();
  v4 = sub_1BABE6A8C();
  v6 = v5;
  v7 = sub_1BABE6BDC();
  sub_1BAAD73E4(v4, v6);

  return v7;
}

id MigrationXPCServerResponseGetRecords.init(records:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18ReplicatorServices36MigrationXPCServerResponseGetRecords_records] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void MigrationXPCServerResponseGetRecords.encode(withBSXPCCoder:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ReplicatorServices36MigrationXPCServerResponseGetRecords_records);
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_1BABE7B9C();
    v5 = (v3 + 32);
    do
    {
      v6 = *v5;
      v5 += 2;
      v7 = v6;
      sub_1BABE7B6C();
      sub_1BABE7BAC();
      sub_1BABE7BBC();
      sub_1BABE7B7C();
      --v4;
    }

    while (v4);
    v8 = *(v3 + 16);
    if (v8)
    {
      v21 = MEMORY[0x1E69E7CC0];
      sub_1BAAFAD18(0, v8, 0);
      v9 = (v3 + 40);
      do
      {
        v11 = *v9;
        v9 += 2;
        v10 = v11;
        v13 = *(v21 + 16);
        v12 = *(v21 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_1BAAFAD18((v12 > 1), v13 + 1, 1);
        }

        *(v21 + 16) = v13 + 1;
        *(v21 + 8 * v13 + 32) = v10;
        --v8;
      }

      while (v8);
    }
  }

  type metadata accessor for ReplicationXPCServerParametersRecord(0);
  v14 = sub_1BABE769C();

  v15 = sub_1BABE74EC();
  [a1 encodeCollection:v14 forKey:v15];

  sub_1BABE6AAC();
  swift_allocObject();
  sub_1BABE6A9C();
  sub_1BABD40EC();
  v16 = sub_1BABE6A8C();
  v18 = v17;

  v19 = sub_1BABE6BDC();
  sub_1BAAD73E4(v16, v18);

  v20 = sub_1BABE74EC();
  [a1 encodeObject:v19 forKey:v20];
}

id MigrationXPCServerResponseGetRecords.init(bsxpcCoder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1BAB22BDC(0, &unk_1EBC123F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for ReplicationXPCServerParametersRecord(0);
  v5 = swift_getObjCClassFromMetadata();
  v6 = sub_1BABE74EC();
  v7 = [a1 decodeCollectionOfClass:ObjCClassFromMetadata containingClass:v5 forKey:v6];

  if (!v7 || (*&v30[0] = v7, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13330), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13340), (swift_dynamicCast() & 1) == 0))
  {
    swift_unknownObjectRelease();
LABEL_6:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v8 = v28;
  sub_1BAB22BDC(0, &qword_1ED787068);
  v9 = swift_getObjCClassFromMetadata();
  v10 = sub_1BABE74EC();
  v11 = [a1 decodeObjectOfClass:v9 forKey:v10];

  if (v11)
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {
    swift_unknownObjectRelease();

    sub_1BAAD2E14(v30, &qword_1EBC12990);
    goto LABEL_6;
  }

  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  v14 = v27;
  if (v8 >> 62)
  {
    v13 = sub_1BABE7A5C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }

  v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    while (1)
    {
      v25 = v1;
      if (v15 <= *(v27 + 16))
      {
        break;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      v15 = v13;
      if (!v13)
      {
        goto LABEL_29;
      }
    }

    v16 = MEMORY[0x1E69E7CC0];
    v17 = 4;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1BFAFD7A0](v17 - 4, v8);
      }

      else
      {
        v18 = *(v8 + 8 * v17);
      }

      v19 = v18;
      v20 = *(v14 + 8 * v17);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1BAAFA32C(0, v16[2] + 1, 1, v16);
      }

      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        v16 = sub_1BAAFA32C((v21 > 1), v22 + 1, 1, v16);
      }

      v16[2] = v22 + 1;
      v23 = &v16[2 * v22];
      v23[4] = v19;
      v23[5] = v20;
      ++v17;
      --v15;
    }

    while (v15);

    v1 = v25;
  }

  else
  {
LABEL_29:

    v16 = MEMORY[0x1E69E7CC0];
  }

  *&v1[OBJC_IVAR____TtC18ReplicatorServices36MigrationXPCServerResponseGetRecords_records] = v16;
  v26.receiver = v1;
  v26.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v26, sel_init);
  swift_unknownObjectRelease();
  return v24;
}

id MigrationXPCServerResponseGetRecords.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MigrationXPCServerResponseGetRecords.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BABD3DD8()
{
  result = qword_1EBC14058;
  if (!qword_1EBC14058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14058);
  }

  return result;
}

uint64_t type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID()
{
  result = qword_1EBC14150;
  if (!qword_1EBC14150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BABD3E78(uint64_t a1, uint64_t a2)
{
  LocalDeviceID = type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID();
  (*(*(LocalDeviceID - 8) + 32))(a2, a1, LocalDeviceID);
  return a2;
}

unint64_t sub_1BABD3EDC()
{
  result = qword_1EBC14080;
  if (!qword_1EBC14080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14080);
  }

  return result;
}

uint64_t sub_1BABD3F30(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC134F0);
    sub_1BAAD77F0(a2, type metadata accessor for ReplicatorDevice);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BABD3FCC()
{
  result = qword_1EBC140A0;
  if (!qword_1EBC140A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC140A0);
  }

  return result;
}

unint64_t sub_1BABD4020()
{
  result = qword_1EBC140C0;
  if (!qword_1EBC140C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC140C0);
  }

  return result;
}

uint64_t sub_1BABD4074(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC140C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BABD40EC()
{
  result = qword_1EBC140F8;
  if (!qword_1EBC140F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC140F8);
  }

  return result;
}

unint64_t sub_1BABD4144()
{
  result = qword_1EBC14100;
  if (!qword_1EBC14100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14100);
  }

  return result;
}

uint64_t sub_1BABD419C(void *a1)
{
  a1[1] = sub_1BAAD77F0(&qword_1EBC12BD0, type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID);
  a1[2] = sub_1BAAD77F0(&unk_1EBC13D80, type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID);
  result = sub_1BAAD77F0(&qword_1EBC14110, type metadata accessor for MigrationXPCServerResponse.GetLocalDeviceID);
  a1[3] = result;
  return result;
}

uint64_t sub_1BABD4288(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1BABD42DC()
{
  result = qword_1EBC14118;
  if (!qword_1EBC14118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14118);
  }

  return result;
}

unint64_t sub_1BABD4370()
{
  result = qword_1EBC14130;
  if (!qword_1EBC14130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14130);
  }

  return result;
}

unint64_t sub_1BABD4404()
{
  result = qword_1EBC14140;
  if (!qword_1EBC14140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14140);
  }

  return result;
}

void sub_1BABD44C0()
{
  sub_1BAB01CF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1BABD4604()
{
  result = qword_1EBC14168;
  if (!qword_1EBC14168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14168);
  }

  return result;
}

unint64_t sub_1BABD465C()
{
  result = qword_1EBC14170;
  if (!qword_1EBC14170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14170);
  }

  return result;
}

unint64_t sub_1BABD46B4()
{
  result = qword_1EBC14178;
  if (!qword_1EBC14178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14178);
  }

  return result;
}

unint64_t sub_1BABD470C()
{
  result = qword_1EBC14180;
  if (!qword_1EBC14180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14180);
  }

  return result;
}

unint64_t sub_1BABD4764()
{
  result = qword_1EBC14188;
  if (!qword_1EBC14188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14188);
  }

  return result;
}

unint64_t sub_1BABD47BC()
{
  result = qword_1EBC14190;
  if (!qword_1EBC14190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14190);
  }

  return result;
}

unint64_t sub_1BABD4814()
{
  result = qword_1EBC14198;
  if (!qword_1EBC14198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14198);
  }

  return result;
}

unint64_t sub_1BABD486C()
{
  result = qword_1EBC141A0;
  if (!qword_1EBC141A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC141A0);
  }

  return result;
}

unint64_t sub_1BABD48C4()
{
  result = qword_1EBC141A8;
  if (!qword_1EBC141A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC141A8);
  }

  return result;
}

unint64_t sub_1BABD491C()
{
  result = qword_1EBC141B0;
  if (!qword_1EBC141B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC141B0);
  }

  return result;
}

unint64_t sub_1BABD4974()
{
  result = qword_1EBC141B8;
  if (!qword_1EBC141B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC141B8);
  }

  return result;
}

unint64_t sub_1BABD49CC()
{
  result = qword_1EBC141C0;
  if (!qword_1EBC141C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC141C0);
  }

  return result;
}

unint64_t sub_1BABD4A20()
{
  result = qword_1EBC141D0;
  if (!qword_1EBC141D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC141D0);
  }

  return result;
}

uint64_t sub_1BABD4A84()
{
  if (qword_1ED787CB8 != -1)
  {
    swift_once();
  }

  qword_1EBC11EA8 = qword_1ED787CC0;
  unk_1EBC11EB0 = *algn_1ED787CC8;
  qword_1EBC11EB8 = qword_1ED787CD0;
  unk_1EBC11EC0 = unk_1ED787CD8;
}

uint64_t static StateCaptureServiceDefinition.domain.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBC11EA0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EBC11EB0;
  v2 = qword_1EBC11EB8;
  v3 = unk_1EBC11EC0;
  *a1 = qword_1EBC11EA8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_1BABD4BA8@<X0>(void *a1@<X8>)
{
  if (qword_1EBC11EA0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EBC11EB0;
  v2 = qword_1EBC11EB8;
  v3 = unk_1EBC11EC0;
  *a1 = qword_1EBC11EA8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

ReplicatorServices::StateCaptureServiceError::Code_optional __swiftcall StateCaptureServiceError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *StateCaptureServiceError.init(code:underlyingError:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

unint64_t StateCaptureServiceError.errorUserInfo.getter()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC14040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BABE9F00;
    *(inited + 32) = sub_1BABE751C();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_2);
    v4 = sub_1BAAE83B0(inited);
    swift_setDeallocating();
    sub_1BABD4F64(inited + 32);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1BAAE83B0(v6);
  }
}

unint64_t sub_1BABD4DD4()
{
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC14040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BABE9F00;
    *(inited + 32) = sub_1BABE751C();
    *(inited + 40) = v2;
    swift_getErrorValue();
    *(inited + 72) = v7;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2((inited + 48));
    (*(*(v7 - 8) + 16))(boxed_opaque_existential_2);
    v4 = sub_1BAAE83B0(inited);
    swift_setDeallocating();
    sub_1BABD4F64(inited + 32);
    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];

    return sub_1BAAE83B0(v6);
  }
}

uint64_t sub_1BABD4EEC(uint64_t a1)
{
  v2 = sub_1BABD50AC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BABD4F28(uint64_t a1)
{
  v2 = sub_1BABD50AC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BABD4F64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC132C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BABD4FD0()
{
  result = qword_1EBC141E8;
  if (!qword_1EBC141E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC141E8);
  }

  return result;
}

unint64_t sub_1BABD5028()
{
  result = qword_1EBC141F0;
  if (!qword_1EBC141F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC141F0);
  }

  return result;
}

unint64_t sub_1BABD50AC()
{
  result = qword_1EBC141F8;
  if (!qword_1EBC141F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC141F8);
  }

  return result;
}

uint64_t URL.extendedAttributes()()
{
  v2 = sub_1BABD53C8();
  if (v0)
  {
    return v1;
  }

  v3 = v2;
  v28 = *(v2 + 16);
  if (!v28)
  {
    v1 = MEMORY[0x1E69E7CC8];
LABEL_19:

    return v1;
  }

  v4 = 0;
  v5 = (v2 + 40);
  v1 = MEMORY[0x1E69E7CC8];
  v27 = v2;
  while (v4 < *(v3 + 16))
  {
    v10 = *(v5 - 1);
    v9 = *v5;
    MEMORY[0x1EEE9AC00](v2);

    sub_1BABE6B4C();
    v29 = v4;
    v11 = v30;
    sub_1BAAE7824(v30, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v1;
    v14 = sub_1BABD5ACC(v10, v9, sub_1BABD59FC);
    v15 = v1[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_22;
    }

    v18 = v13;
    if (v1[3] >= v17)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v13)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1BABDD208();
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1BABD8A8C(v17, isUniquelyReferenced_nonNull_native);
      v19 = sub_1BABD5ACC(v10, v9, sub_1BABD59FC);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_24;
      }

      v14 = v19;
      if (v18)
      {
LABEL_4:

        v6 = (v1[7] + 16 * v14);
        v7 = *v6;
        v8 = v6[1];
        *v6 = v11;
        v6[1] = v31;
        sub_1BAAD73E4(v7, v8);
        v2 = sub_1BAAD73E4(v11, v31);
        goto LABEL_5;
      }
    }

    v1[(v14 >> 6) + 8] |= 1 << v14;
    v21 = (v1[6] + 16 * v14);
    *v21 = v10;
    v21[1] = v9;
    v22 = (v1[7] + 16 * v14);
    *v22 = v11;
    v22[1] = v31;
    v2 = sub_1BAAD73E4(v11, v31);
    v23 = v1[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_23;
    }

    v1[2] = v25;
LABEL_5:
    v4 = v29 + 1;
    v5 += 2;
    v3 = v27;
    if (v28 == v29 + 1)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1BABE7EFC();
  __break(1u);
  return result;
}

uint64_t sub_1BABD53C8()
{
  v0 = sub_1BABE754C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE6B6C();
  v4 = sub_1BABE756C();

  v5 = listxattr((v4 + 32), 0, 0, 0);

  if (v5 == -1)
  {
    type metadata accessor for ExtendedAttributeError();
    sub_1BAAD3994(&qword_1EBC14288, type metadata accessor for ExtendedAttributeError);
    swift_allocError();
    *v17 = 0;
    v17[1] = 0xE000000000000000;
    v17[2] = -1;
    MEMORY[0x1BFAFCF50]();
    result = sub_1BABE72CC();
    if ((result & 0x100000000) != 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v18 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14290);
    v19 = sub_1BABE69EC();
    v24 = v18;
    sub_1BABDFD34(MEMORY[0x1E69E7CC0]);
    sub_1BAAD3994(&qword_1EBC14298, MEMORY[0x1E6967EB8]);
    v14 = v19;
    sub_1BABE6ABC();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v14;
  }

  v6 = swift_slowAlloc();
  sub_1BABE6B6C();
  v7 = sub_1BABE756C();

  v8 = listxattr((v7 + 32), v6, v5, 0);

  if (v8 != -1)
  {
    sub_1BABE752C();
    v9 = sub_1BABE753C();
    (*(v1 + 8))(v3, v0);
    v10 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithBytes:v6 length:v5 encoding:v9];
    if (!v10)
    {
      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_13;
    }

    v11 = v10;
    v12 = sub_1BABE74EC();
    v13 = [v11 componentsSeparatedByString_];

    v14 = sub_1BABE76AC();
    if (*(v14 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v16 = *(v14 + 16);
        if (v16)
        {
LABEL_7:
          *(v14 + 16) = v16 - 1;

LABEL_13:
          MEMORY[0x1BFAFE460](v6, -1, -1);
          return v14;
        }

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_1BABDFD20(v14);
    v14 = result;
    v16 = *(result + 16);
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for ExtendedAttributeError();
  sub_1BAAD3994(&qword_1EBC14288, type metadata accessor for ExtendedAttributeError);
  swift_allocError();
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v20[2] = -1;
  MEMORY[0x1BFAFCF50]();
  result = sub_1BABE72CC();
  if ((result & 0x100000000) == 0)
  {
    v21 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14290);
    v22 = sub_1BABE69EC();
    v25 = v21;
    sub_1BABDFD34(MEMORY[0x1E69E7CC0]);
    sub_1BAAD3994(&qword_1EBC14298, MEMORY[0x1E6967EB8]);
    v14 = v22;
    sub_1BABE6ABC();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    MEMORY[0x1BFAFE460](v6, -1, -1);
    return v14;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1BABD5884@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = sub_1BABE756C();
  v10 = getxattr(a1, (v9 + 32), 0, 0, 0, 0);

  if (v10 < 1)
  {
    type metadata accessor for ExtendedAttributeError();
    sub_1BAAD3994(&qword_1EBC14288, type metadata accessor for ExtendedAttributeError);
    swift_allocError();
    *v14 = a2;
    v14[1] = a3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v15 = sub_1BABDFE58(v10);
    v16 = v11;

    sub_1BABDF348(&v15, a1, a2, a3, v10);
    result = v15;
    v13 = v16;
    if (v4)
    {
      return sub_1BAAD73E4(v15, v16);
    }

    else
    {
      *a4 = v15;
      a4[1] = v13;
    }
  }

  return result;
}

unint64_t sub_1BABD59FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1BABE7EDC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1BABD5ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1BABE7F9C();
  sub_1BABE759C();
  v5 = sub_1BABE7FDC();

  return a3(a1, a2, v5);
}

unint64_t sub_1BABD5B50(uint64_t a1)
{
  sub_1BABE723C();
  v2 = MEMORY[0x1E69C7338];
  sub_1BAAD3994(&qword_1EBC123D8, MEMORY[0x1E69C7338]);
  v3 = sub_1BABE74AC();
  return sub_1BABD5F30(a1, v3, MEMORY[0x1E69C7338], &qword_1EBC123D0, v2);
}

unint64_t sub_1BABD5C34(uint64_t a1)
{
  sub_1BABE71AC();
  v2 = MEMORY[0x1E69C7318];
  sub_1BAAD3994(&qword_1EBC12200, MEMORY[0x1E69C7318]);
  v3 = sub_1BABE74AC();
  return sub_1BABD5F30(a1, v3, MEMORY[0x1E69C7318], &qword_1EBC121F8, v2);
}

unint64_t sub_1BABD5D18(uint64_t *a1)
{
  sub_1BABE7F9C();
  ReplicatorRecord.ID.hash(into:)();
  v2 = sub_1BABE7FDC();

  return sub_1BABD6020(a1, v2);
}

unint64_t sub_1BABD5D84(uint64_t a1)
{
  v2 = sub_1BABE7F8C();

  return sub_1BABD6550(a1, v2);
}

unint64_t sub_1BABD5DC8(uint64_t a1)
{
  sub_1BABE751C();
  sub_1BABE7F9C();
  sub_1BABE759C();
  v2 = sub_1BABE7FDC();

  return sub_1BABD65BC(a1, v2);
}

unint64_t sub_1BABD5E5C(uint64_t a1)
{
  sub_1BABE6BAC();
  v2 = MEMORY[0x1E6968FB0];
  sub_1BAAD3994(&qword_1EBC12228, MEMORY[0x1E6968FB0]);
  v3 = sub_1BABE74AC();
  return sub_1BAAD39DC(a1, v3, MEMORY[0x1E6968FB0], &qword_1EBC13C78, v2, MEMORY[0x1E6968FC8]);
}

unint64_t sub_1BABD5F30(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v6 = -1 << *(v5 + 32);
  v7 = a2 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    a3(0);
    sub_1BAAD3994(a4, a5);
    do
    {
      if (sub_1BABE74DC())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1BABD6020(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v52 = sub_1BABE6CFC();
  v6 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v51 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v51);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v3 + 64;
  v18 = -1 << *(v3 + 32);
  v19 = a2 & ~v18;
  if ((*(v3 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v43 = v11;
    v44 = v10;
    v20 = ~v18;
    v21 = *a1;
    v53 = a1[1];
    v47 = (v6 + 48);
    v48 = v21;
    v40 = (v6 + 32);
    v42 = (v6 + 8);
    v22 = *(v14 + 72);
    v49 = ~v18;
    v50 = v3 + 64;
    v45 = v22;
    v46 = v3;
    do
    {
      sub_1BABDF22C(*(v3 + 48) + v22 * v19, v16, type metadata accessor for ReplicatorRecord.ID);
      v23 = *v16 == v21 && v16[1] == v53;
      if (!v23 && (sub_1BABE7EDC() & 1) == 0)
      {
        goto LABEL_4;
      }

      v24 = v16[2] == a1[2] && v16[3] == a1[3];
      if (!v24 && (sub_1BABE7EDC() & 1) == 0 || (v16[4] != a1[4] || v16[5] != a1[5]) && (sub_1BABE7EDC() & 1) == 0)
      {
        goto LABEL_4;
      }

      v25 = v52;
      v26 = *(v51 + 28);
      v27 = *(v11 + 48);
      sub_1BABDF22C(v16 + v26, v13, type metadata accessor for ReplicatorRecord.ID.Ownership);
      sub_1BABDF22C(a1 + v26, &v13[v27], type metadata accessor for ReplicatorRecord.ID.Ownership);
      v28 = *v47;
      if ((*v47)(v13, 1, v25) == 1)
      {
        v29 = v28(&v13[v27], 1, v52);
        v22 = v45;
        v3 = v46;
        v20 = v49;
        if (v29 != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v30 = v44;
        sub_1BABDF22C(v13, v44, type metadata accessor for ReplicatorRecord.ID.Ownership);
        if (v28(&v13[v27], 1, v52) == 1)
        {
          (*v42)(v30, v52);
          v22 = v45;
          v3 = v46;
          v11 = v43;
          v20 = v49;
LABEL_23:
          sub_1BABDD38C(v13);
LABEL_24:
          v17 = v50;
          v21 = v48;
          goto LABEL_4;
        }

        v31 = &v13[v27];
        v32 = v41;
        (*v40)(v41, v31, v52);
        v33 = sub_1BABE6CCC();
        v34 = *v42;
        (*v42)(v32, v25);
        v34(v30, v25);
        v22 = v45;
        v3 = v46;
        v11 = v43;
        v20 = v49;
        if ((v33 & 1) == 0)
        {
          sub_1BABDD3F4(v13, type metadata accessor for ReplicatorRecord.ID.Ownership);
          goto LABEL_24;
        }
      }

      sub_1BABDD3F4(v13, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v17 = v50;
      v35 = *(v51 + 32);
      v36 = *(v16 + v35);
      v37 = *(v16 + v35 + 8);
      v38 = (a1 + v35);
      v21 = v48;
      if (v36 == *v38 && v37 == v38[1] || (sub_1BABE7EDC() & 1) != 0)
      {
        sub_1BABDD3F4(v16, type metadata accessor for ReplicatorRecord.ID);
        return v19;
      }

LABEL_4:
      sub_1BABDD3F4(v16, type metadata accessor for ReplicatorRecord.ID);
      v19 = (v19 + 1) & v20;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  return v19;
}

unint64_t sub_1BABD6550(uint64_t a1, uint64_t a2)
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

unint64_t sub_1BABD65BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1BABE751C();
      v8 = v7;
      if (v6 == sub_1BABE751C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1BABE7EDC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1BABD66C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127E8);
  v38 = a2;
  result = sub_1BABE7CCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_1BAAE7800(v25, v26, v27);
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BABD69A0(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_1BABE715C();
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127C0);
  v47 = a2;
  result = sub_1BABE7CCC();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1BAAD3994(&unk_1ED787C50, MEMORY[0x1E69695A8]);
      result = sub_1BABE74AC();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1BABD6E48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127C8);
  v31 = a2;
  result = sub_1BABE7CCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v32 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1BABE723C();
      sub_1BAAD3994(&qword_1EBC123D8, MEMORY[0x1E69C7338]);
      result = sub_1BABE74AC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v30;
      v12 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v32 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BABD712C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14258);
  v36 = a2;
  result = sub_1BABE7CCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *(v25 + 8);
      v39 = *v25;
      v37 = *(v25 + 17);
      v38 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v39;
      *(v17 + 8) = v26;
      *(v17 + 16) = v38;
      *(v17 + 17) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BABD7404(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1BABE6CFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127A0);
  v39 = a2;
  result = sub_1BABE7CCC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1BAAD3994(&unk_1ED787C50, MEMORY[0x1E69695A8]);
      result = sub_1BABE74AC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1BABD77E0(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = sub_1BABE6CFC();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127B0);
  v37 = a2;
  result = sub_1BABE7CCC();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v2;
    v34 = (v5 + 16);
    v35 = v7;
    v36 = v5;
    v38 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v42 = v23;
      v39 = *(v36 + 72);
      v24 = v22 + v39 * v21;
      if (v37)
      {
        (*v38)(v40, v24, v41);
      }

      else
      {
        (*v34)(v40, v24, v41);
      }

      sub_1BABE71AC();
      sub_1BAAD3994(&qword_1EBC12200, MEMORY[0x1E69C7318]);
      result = sub_1BABE74AC();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      result = (*v38)(*(v9 + 56) + v39 * v17, v40, v41);
      ++*(v9 + 16);
      v7 = v35;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v11, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1BABD7B9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14200);
  v34 = a2;
  result = sub_1BABE7CCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BABD7E44(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v49 - v11;
  v64 = type metadata accessor for ReplicatorRecord.ID(0);
  v58 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12780);
  v60 = a2;
  v15 = v14;
  result = sub_1BABE7CCC();
  v17 = result;
  if (*(v14 + 16))
  {
    v50 = v2;
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v53 = v8 + 16;
    v62 = (v8 + 32);
    v56 = (v8 + 48);
    v57 = v8;
    v52 = (v8 + 8);
    v24 = result + 64;
    v55 = v15;
    v51 = result;
    while (v22)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v29 = v26 | (v18 << 6);
      v30 = *(v15 + 48);
      v61 = *(v58 + 72);
      v31 = v30 + v61 * v29;
      if (v60)
      {
        sub_1BABDF294(v31, v13, type metadata accessor for ReplicatorRecord.ID);
        v32 = *(v15 + 56);
        v33 = *(v57 + 72);
        (*(v57 + 32))(v63, v32 + v33 * v29, v7);
      }

      else
      {
        sub_1BABDF22C(v31, v13, type metadata accessor for ReplicatorRecord.ID);
        v34 = *(v15 + 56);
        v33 = *(v57 + 72);
        (*(v57 + 16))(v63, v34 + v33 * v29, v7);
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      v35 = v59;
      sub_1BABDF22C(&v13[*(v64 + 28)], v59, type metadata accessor for ReplicatorRecord.ID.Ownership);
      if ((*v56)(v35, 1, v7) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v36 = v22;
        v37 = v33;
        v38 = v7;
        v39 = v54;
        (*v62)(v54, v35, v38);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3994(&unk_1ED787C50, MEMORY[0x1E69695A8]);
        sub_1BABE74BC();
        v40 = v39;
        v7 = v38;
        v33 = v37;
        v22 = v36;
        v17 = v51;
        (*v52)(v40, v7);
      }

      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v41 = -1 << *(v17 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v24 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v24 + 8 * v43);
          if (v47 != -1)
          {
            v25 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v42) & ~*(v24 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      sub_1BABDF294(v13, *(v17 + 48) + v61 * v25, type metadata accessor for ReplicatorRecord.ID);
      result = (*v62)(*(v17 + 56) + v33 * v25, v63, v7);
      ++*(v17 + 16);
      v15 = v55;
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v18 >= v23)
      {
        break;
      }

      v28 = v19[v18];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v60 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_37;
    }

    v48 = 1 << *(v15 + 32);
    v3 = v50;
    if (v48 >= 64)
    {
      bzero(v19, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v48;
    }

    *(v15 + 16) = 0;
  }

LABEL_37:
  *v3 = v17;
  return result;
}

uint64_t sub_1BABD8490(uint64_t a1, int a2)
{
  v3 = v2;
  v51 = sub_1BABE6CFC();
  v5 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ReplicatorRecord.ID(0);
  v50 = *(v56 - 8);
  v10 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E20);
  v52 = a2;
  result = sub_1BABE7CCC();
  v16 = result;
  if (*(v14 + 16))
  {
    v44 = v2;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v49 = (v5 + 48);
    v45 = (v5 + 8);
    v46 = (v5 + 32);
    v23 = result + 64;
    v47 = result;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v54 = (v21 - 1) & v21;
LABEL_15:
      v29 = *(v14 + 48);
      v53 = *(v50 + 72);
      v30 = v53 * (v26 | (v17 << 6));
      if (v52)
      {
        sub_1BABDF294(v29 + v30, v13, type metadata accessor for ReplicatorRecord.ID);
        sub_1BABDF294(*(v14 + 56) + v30, v55, type metadata accessor for ReplicatorRecord.ID);
      }

      else
      {
        sub_1BABDF22C(v29 + v30, v13, type metadata accessor for ReplicatorRecord.ID);
        sub_1BABDF22C(*(v14 + 56) + v30, v55, type metadata accessor for ReplicatorRecord.ID);
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABDF22C(&v13[*(v56 + 28)], v9, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v31 = v51;
      if ((*v49)(v9, 1, v51) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v32 = v14;
        v33 = v48;
        (*v46)(v48, v9, v31);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3994(&unk_1ED787C50, MEMORY[0x1E69695A8]);
        sub_1BABE74BC();
        v34 = v33;
        v14 = v32;
        v16 = v47;
        (*v45)(v34, v31);
      }

      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v25 = v53 * v24;
      sub_1BABDF294(v13, *(v16 + 48) + v53 * v24, type metadata accessor for ReplicatorRecord.ID);
      result = sub_1BABDF294(v55, *(v16 + 56) + v25, type metadata accessor for ReplicatorRecord.ID);
      ++*(v16 + 16);
      v21 = v54;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v54 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_37;
    }

    v42 = 1 << *(v14 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v14 + 16) = 0;
  }

LABEL_37:
  *v3 = v16;
  return result;
}

uint64_t sub_1BABD8A8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14280);
  v33 = a2;
  result = sub_1BABE7CCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_1BAAE7824(v34, *(&v34 + 1));
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BABD8D48(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1BABE6CFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatorRecord(0);
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for ReplicatorRecord.ID(0);
  v57 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14228);
  v60 = a2;
  v15 = v14;
  result = sub_1BABE7CCC();
  v17 = result;
  if (*(v14 + 16))
  {
    v56 = v5;
    v50 = v2;
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v55 = (v6 + 48);
    v52 = (v6 + 32);
    v51 = (v6 + 8);
    v24 = result + 64;
    v25 = v54;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v28 = (v22 - 1) & v22;
LABEL_15:
      v31 = v27 | (v18 << 6);
      v32 = *(v15 + 48);
      v62 = *(v57 + 72);
      v63 = v28;
      v33 = v32 + v62 * v31;
      if (v60)
      {
        sub_1BABDF294(v33, v13, type metadata accessor for ReplicatorRecord.ID);
        v34 = *(v15 + 56);
        v61 = *(v58 + 72);
        sub_1BABDF294(v34 + v61 * v31, v25, type metadata accessor for ReplicatorRecord);
      }

      else
      {
        sub_1BABDF22C(v33, v13, type metadata accessor for ReplicatorRecord.ID);
        v35 = *(v15 + 56);
        v61 = *(v58 + 72);
        sub_1BABDF22C(v35 + v61 * v31, v25, type metadata accessor for ReplicatorRecord);
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      v36 = v59;
      sub_1BABDF22C(&v13[*(v64 + 28)], v59, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v37 = v56;
      if ((*v55)(v36, 1, v56) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v38 = v15;
        v39 = v53;
        (*v52)(v53, v36, v37);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3994(&unk_1ED787C50, MEMORY[0x1E69695A8]);
        sub_1BABE74BC();
        v40 = v39;
        v15 = v38;
        v25 = v54;
        (*v51)(v40, v37);
      }

      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v41 = -1 << *(v17 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v24 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v24 + 8 * v43);
          if (v47 != -1)
          {
            v26 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v42) & ~*(v24 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_1BABDF294(v13, *(v17 + 48) + v62 * v26, type metadata accessor for ReplicatorRecord.ID);
      result = sub_1BABDF294(v25, *(v17 + 56) + v61 * v26, type metadata accessor for ReplicatorRecord);
      ++*(v17 + 16);
      v22 = v63;
    }

    v29 = v18;
    while (1)
    {
      v18 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v18 >= v23)
      {
        break;
      }

      v30 = v19[v18];
      ++v29;
      if (v30)
      {
        v27 = __clz(__rbit64(v30));
        v28 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    if ((v60 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_37;
    }

    v48 = 1 << *(v15 + 32);
    v3 = v50;
    if (v48 >= 64)
    {
      bzero(v19, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v48;
    }

    *(v15 + 16) = 0;
  }

LABEL_37:
  *v3 = v17;
  return result;
}

uint64_t sub_1BABD93E0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1BABE6CFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ReplicatorRecord.ID(0);
  v50 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14218);
  v51 = a2;
  result = sub_1BABE7CCC();
  v15 = result;
  if (*(v13 + 16))
  {
    v49 = v5;
    v43 = v2;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v48 = (v6 + 48);
    v44 = (v6 + 8);
    v45 = (v6 + 32);
    v22 = result + 64;
    v46 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v25 = (v20 - 1) & v20;
LABEL_15:
      v28 = v24 | (v16 << 6);
      v29 = *(v13 + 48);
      v53 = *(v50 + 72);
      v54 = v25;
      v30 = v29 + v53 * v28;
      if (v51)
      {
        sub_1BABDF294(v30, v12, type metadata accessor for ReplicatorRecord.ID);
        v52 = *(*(v13 + 56) + 8 * v28);
      }

      else
      {
        sub_1BABDF22C(v30, v12, type metadata accessor for ReplicatorRecord.ID);
        v52 = *(*(v13 + 56) + 8 * v28);
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABDF22C(&v12[*(v55 + 28)], v10, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v31 = v49;
      if ((*v48)(v10, 1, v49) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v32 = v47;
        (*v45)(v47, v10, v31);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3994(&unk_1ED787C50, MEMORY[0x1E69695A8]);
        sub_1BABE74BC();
        v33 = v32;
        v13 = v46;
        (*v44)(v33, v31);
      }

      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v34 = -1 << *(v15 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v22 + 8 * v36);
          if (v40 != -1)
          {
            v23 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_1BABDF294(v12, *(v15 + 48) + v53 * v23, type metadata accessor for ReplicatorRecord.ID);
      *(*(v15 + 56) + 8 * v23) = v52;
      ++*(v15 + 16);
      v20 = v54;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_37;
    }

    v41 = 1 << *(v13 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v17, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v13 + 16) = 0;
  }

LABEL_37:
  *v3 = v15;
  return result;
}

uint64_t sub_1BABD997C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ReplicatorRecord.Value(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14268);
  v37 = a2;
  result = sub_1BABE7CCC();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_1BABDF294(v25, v7, type metadata accessor for ReplicatorRecord.Value);
      }

      else
      {
        sub_1BABDF22C(v25, v7, type metadata accessor for ReplicatorRecord.Value);
      }

      result = sub_1BABE7F8C();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1BABDF294(v7, *(v10 + 56) + v24 * v18, type metadata accessor for ReplicatorRecord.Value);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1BABD9CC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13E70);
  v33 = a2;
  result = sub_1BABE7CCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 48 * v20);
      if (v33)
      {
        sub_1BAB22994(v24, v34);
      }

      else
      {
        sub_1BABDF1C8(v24, v34);
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1BAB22994(v34, (*(v7 + 56) + 48 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BABD9F88(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = sub_1BABE6BAC();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14220);
  v37 = a2;
  result = sub_1BABE7CCC();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_1BABE7F8C();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1BABDA2D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14270);
  v36 = a2;
  result = sub_1BABE7CCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 32 * v21;
      v26 = *(v25 + 8);
      v37 = *v25;
      v38 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v37;
      *(v17 + 8) = v26;
      *(v17 + 16) = v38;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BABDA59C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14278);
  v36 = a2;
  result = sub_1BABE7CCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 48 * v21;
      v26 = *(v25 + 8);
      v40 = *v25;
      v38 = *(v25 + 17);
      v39 = *(v25 + 16);
      v41 = *(v25 + 24);
      v37 = *(v25 + 40);
      if ((v36 & 1) == 0)
      {
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v40;
      *(v17 + 8) = v26;
      *(v17 + 16) = v39;
      *(v17 + 17) = v38;
      *(v17 + 24) = v41;
      *(v17 + 40) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BABDA894(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14260);
  v37 = a2;
  result = sub_1BABE7CCC();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 80 * v21;
      if (v37)
      {
        v38 = *(v25 + 8);
        v39 = *(v25 + 24);
        v40 = *v25;
        v43 = *(v25 + 16);
        v44 = *(v25 + 32);
        v41 = *(v25 + 40);
        v42 = *(v25 + 56);
        v45 = *(v25 + 48);
        v46 = *(v25 + 72);
      }

      else
      {
        v26 = *(v25 + 16);
        v27 = *(v25 + 32);
        v28 = *(v25 + 64);
        *v49 = *(v25 + 48);
        *&v49[16] = v28;
        v48[1] = v26;
        v48[2] = v27;
        v48[0] = *v25;
        v45 = *v49;
        v46 = *(&v28 + 1);
        v42 = *&v49[8];
        v43 = v26;
        v44 = v27;
        v40 = *&v48[0];
        v41 = *(&v27 + 1);
        v38 = *(&v48[0] + 1);
        v39 = *(&v26 + 1);

        sub_1BAB21C84(v48, v47);
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 80 * v15;
      *v17 = v40;
      *(v17 + 8) = v38;
      *(v17 + 16) = v43;
      *(v17 + 24) = v39;
      *(v17 + 32) = v44;
      *(v17 + 40) = v41;
      *(v17 + 48) = v45;
      *(v17 + 56) = v42;
      *(v17 + 72) = v46;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1BABDAC20(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1BABE6CFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ReplicatorRecord.ID(0);
  v50 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12790);
  v51 = a2;
  result = sub_1BABE7CCC();
  v15 = result;
  if (*(v13 + 16))
  {
    v49 = v5;
    v43 = v2;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v48 = (v6 + 48);
    v44 = (v6 + 8);
    v45 = (v6 + 32);
    v22 = result + 64;
    v46 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v25 = (v20 - 1) & v20;
LABEL_15:
      v28 = v24 | (v16 << 6);
      v29 = *(v13 + 48);
      v53 = *(v50 + 72);
      v54 = v25;
      v30 = v29 + v53 * v28;
      if (v51)
      {
        sub_1BABDF294(v30, v12, type metadata accessor for ReplicatorRecord.ID);
        v52 = *(*(v13 + 56) + 8 * v28);
      }

      else
      {
        sub_1BABDF22C(v30, v12, type metadata accessor for ReplicatorRecord.ID);
        v52 = *(*(v13 + 56) + 8 * v28);
      }

      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABDF22C(&v12[*(v55 + 28)], v10, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v31 = v49;
      if ((*v48)(v10, 1, v49) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v32 = v47;
        (*v45)(v47, v10, v31);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD3994(&unk_1ED787C50, MEMORY[0x1E69695A8]);
        sub_1BABE74BC();
        v33 = v32;
        v13 = v46;
        (*v44)(v33, v31);
      }

      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v34 = -1 << *(v15 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
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
          v40 = *(v22 + 8 * v36);
          if (v40 != -1)
          {
            v23 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_1BABDF294(v12, *(v15 + 48) + v53 * v23, type metadata accessor for ReplicatorRecord.ID);
      *(*(v15 + 56) + 8 * v23) = v52;
      ++*(v15 + 16);
      v20 = v54;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_37;
    }

    v41 = 1 << *(v13 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v17, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v13 + 16) = 0;
  }

LABEL_37:
  *v3 = v15;
  return result;
}

uint64_t sub_1BABDB1D0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1BABE6BAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14240);
  v39 = a2;
  result = sub_1BABE7CCC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1BAAD3994(&qword_1EBC12228, MEMORY[0x1E6968FB0]);
      result = sub_1BABE74AC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1BABDB5AC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1BABE6BAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14248);
  v40 = a2;
  result = sub_1BABE7CCC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1BAAD3994(&qword_1EBC12228, MEMORY[0x1E6968FB0]);
      result = sub_1BABE74AC();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1BABDB96C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14250);
  v43 = a2;
  result = sub_1BABE7CCC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1BABDF294(v27 + v28 * v24, v47, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1BABDF22C(v29 + v28 * v24, v47, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
      }

      sub_1BAAD3994(&unk_1ED787C50, MEMORY[0x1E69695A8]);
      result = sub_1BABE74AC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1BABDF294(v47, *(v12 + 56) + v28 * v20, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

void *sub_1BABDBE20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127E8);
  v2 = *v0;
  v3 = sub_1BABE7CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_1BAAE7800(v23, v24, v26);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1BABDBFB8()
{
  v1 = v0;
  v41 = sub_1BABE715C();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1BABE6CFC();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127C0);
  v4 = *v0;
  v5 = sub_1BABE7CBC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1BABDC30C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127C8);
  v2 = *v0;
  v3 = sub_1BABE7CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BABDC470()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14258);
  v2 = *v0;
  v3 = sub_1BABE7CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        LOBYTE(v22) = *(v22 + 17);
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v25;
        *(v27 + 17) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1BABDC600()
{
  v1 = v0;
  v33 = sub_1BABE6CFC();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127A0);
  v3 = *v0;
  v4 = sub_1BABE7CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1BABDC880()
{
  v1 = v0;
  v29 = sub_1BABE6CFC();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127B0);
  v3 = *v0;
  v4 = sub_1BABE7CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v25 = v3 + 64;
    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v26 = v31 + 32;
    for (i = v31 + 16; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
      (*(v19 + 32))(*(v23 + 56) + v20, v22, v21);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1BABDCAF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14200);
  v2 = *v0;
  v3 = sub_1BABE7CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BABDCC60()
{
  v1 = v0;
  v2 = sub_1BABE6CFC();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReplicatorRecord.ID(0);
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12780);
  v7 = *v0;
  v8 = sub_1BABE7CBC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v42 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v7;
    v19 = v37;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = *(v38 + 72) * v23;
        sub_1BABDF22C(*(v7 + 48) + v24, v19, type metadata accessor for ReplicatorRecord.ID);
        v26 = v40;
        v25 = v41;
        v27 = *(v41 + 72) * v23;
        v28 = *(v7 + 56) + v27;
        v29 = v39;
        (*(v41 + 16))(v39, v28, v40);
        v30 = v42;
        sub_1BABDF294(v19, *(v42 + 48) + v24, type metadata accessor for ReplicatorRecord.ID);
        v31 = v29;
        v7 = v36;
        result = (*(v25 + 32))(*(v30 + 56) + v27, v31, v26);
        v17 = v43;
      }

      while (v43);
    }

    v21 = v13;
    v9 = v42;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v22 = *(v11 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1BABDCF90()
{
  v1 = v0;
  v2 = type metadata accessor for ReplicatorRecord.ID(0);
  v25 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E20);
  v8 = *v0;
  v9 = sub_1BABE7CBC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = *(v25 + 72) * (v20 | (v14 << 6));
        sub_1BABDF22C(*(v8 + 48) + v23, v7, type metadata accessor for ReplicatorRecord.ID);
        sub_1BABDF22C(*(v8 + 56) + v23, v5, type metadata accessor for ReplicatorRecord.ID);
        sub_1BABDF294(v7, *(v10 + 48) + v23, type metadata accessor for ReplicatorRecord.ID);
        result = sub_1BABDF294(v5, *(v10 + 56) + v23, type metadata accessor for ReplicatorRecord.ID);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_1BABDD208()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14280);
  v2 = *v0;
  v3 = sub_1BABE7CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_1BAAE7824(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BABDD38C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BABDD3F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1BABDD454()
{
  v1 = v0;
  v2 = type metadata accessor for ReplicatorRecord(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReplicatorRecord.ID(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14228);
  v8 = *v0;
  v9 = sub_1BABE7CBC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_1BABDF22C(*(v8 + 48) + v24, v7, type metadata accessor for ReplicatorRecord.ID);
        v25 = *(v29 + 72) * v23;
        sub_1BABDF22C(*(v8 + 56) + v25, v4, type metadata accessor for ReplicatorRecord);
        sub_1BABDF294(v7, *(v10 + 48) + v24, type metadata accessor for ReplicatorRecord.ID);
        result = sub_1BABDF294(v4, *(v10 + 56) + v25, type metadata accessor for ReplicatorRecord);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_1BABDD740()
{
  v1 = v0;
  v2 = type metadata accessor for ReplicatorRecord.ID(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14218);
  v5 = *v0;
  v6 = sub_1BABE7CBC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1BABDF22C(*(v5 + 48) + v21, v4, type metadata accessor for ReplicatorRecord.ID);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1BABDF294(v4, *(v7 + 48) + v21, type metadata accessor for ReplicatorRecord.ID);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1BABDD980()
{
  v1 = v0;
  v2 = type metadata accessor for ReplicatorRecord.Value(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14268);
  v5 = *v0;
  v6 = sub_1BABE7CBC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_1BABDF22C(*(v5 + 56) + v22, v4, type metadata accessor for ReplicatorRecord.Value);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_1BABDF294(v4, *(v7 + 56) + v22, type metadata accessor for ReplicatorRecord.Value);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1BABDDBB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13E70);
  v2 = *v0;
  v3 = sub_1BABE7CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 48 * v17;
        sub_1BABDF1C8(*(v2 + 56) + 48 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1BAB22994(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1BABDDD5C()
{
  v1 = v0;
  v29 = sub_1BABE6BAC();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14220);
  v3 = *v0;
  v4 = sub_1BABE7CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1BABDDFC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14270);
  v2 = *v0;
  v3 = sub_1BABE7CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BABDE148()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14278);
  v2 = *v0;
  v3 = sub_1BABE7CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 17);
        v27 = *(v22 + 40);
        v28 = (*(v4 + 48) + v18);
        v29 = *(v22 + 24);
        *v28 = v21;
        v28[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 17) = v26;
        *(v30 + 24) = v29;
        *(v30 + 40) = v27;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BABDE2E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14260);
  v2 = *v0;
  v3 = sub_1BABE7CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 80;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17 + 64);
        v35 = *(v19 + v17 + 48);
        v36 = v25;
        v32 = *(v19 + v17);
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v36;
        v27[3] = v35;
        v27[4] = v30;
        v27[1] = v28;
        v27[2] = v29;

        result = sub_1BAB21C84(&v32, &v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1BABDE4C4()
{
  v1 = v0;
  v2 = type metadata accessor for ReplicatorRecord.ID(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12790);
  v5 = *v0;
  v6 = sub_1BABE7CBC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1BABDF22C(*(v5 + 48) + v21, v4, type metadata accessor for ReplicatorRecord.ID);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1BABDF294(v4, *(v7 + 48) + v21, type metadata accessor for ReplicatorRecord.ID);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1BABDE718()
{
  v1 = v0;
  v33 = sub_1BABE6BAC();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14240);
  v3 = *v0;
  v4 = sub_1BABE7CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_1BABDE998()
{
  v1 = v0;
  v31 = sub_1BABE6BAC();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14248);
  v3 = *v0;
  v4 = sub_1BABE7CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_1BABDEC08()
{
  v1 = v0;
  v2 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1BABE6CFC();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14250);
  v5 = *v0;
  v6 = sub_1BABE7CBC();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1BABDF22C(*(v5 + 56) + v26, v35, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1BABDF294(v25, *(v27 + 56) + v26, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1BABDEF48(uint64_t *a1)
{
  v3 = v1;
  v33 = sub_1BABE6CFC();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v1;
  v6 = sub_1BABE7CBC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v29 = v3;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v37 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v23 = v32;
        v24 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v20 *= 16;
        v25 = v34;
        v26 = *(v34 + 48);
        v27 = *(v21 + 32);
        v36 = *(*(v5 + 56) + v20);
        v27(v26 + v22, v23, v24);
        *(*(v25 + 56) + v20) = v36;

        v15 = v37;
      }

      while (v37);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v29;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v37 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

uint64_t sub_1BABDF1C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BABDF22C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BABDF294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ExtendedAttributeError()
{
  result = qword_1EBC142A0;
  if (!qword_1EBC142A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BABDF348(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, size_t a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&value + 7) = 0;
      *&value = 0;
      v30 = sub_1BABE756C();

      v31 = getxattr(a2, (v30 + 32), &value, a5, 0, 0);

      if (v31 >= 1)
      {
        return swift_bridgeObjectRelease_n();
      }

      type metadata accessor for ExtendedAttributeError();
      sub_1BAAD3994(&qword_1EBC14288, type metadata accessor for ExtendedAttributeError);
      swift_allocError();
      *v36 = a3;
      v36[1] = a4;
      v36[2] = v31;

      MEMORY[0x1BFAFCF50](v37);
      result = sub_1BABE72CC();
      if ((result & 0x100000000) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14290);
        sub_1BABE69EC();
        sub_1BABDFD34(MEMORY[0x1E69E7CC0]);
        sub_1BAAD3994(&qword_1EBC14298, MEMORY[0x1E6967EB8]);
        sub_1BABE6ABC();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return swift_bridgeObjectRelease_n();
      }

      goto LABEL_41;
    }

    sub_1BAAD73E4(v9, v8);
    *&value = v9;
    *(&value + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1BABF45F0;
    sub_1BAAD73E4(0, 0xC000000000000000);
    sub_1BABE6BBC();
    v17 = *(&value + 1);
    v54 = value;
    v18 = *(value + 16);
    v19 = sub_1BABE6A0C();
    if (!v19)
    {

      __break(1u);
      goto LABEL_39;
    }

    v20 = v19;
    v21 = sub_1BABE6A3C();
    v22 = v18 - v21;
    if (!__OFSUB__(v18, v21))
    {
      sub_1BABE6A2C();
      v23 = sub_1BABE756C();
      v24 = getxattr(a2, (v23 + 32), (v20 + v22), a5, 0, 0);

      if (v24 >= 1)
      {
        result = swift_bridgeObjectRelease_n();
        v25 = *(&value + 1) | 0x8000000000000000;
        *a1 = value;
LABEL_29:
        a1[1] = v25;
        return result;
      }

      type metadata accessor for ExtendedAttributeError();
      sub_1BAAD3994(&qword_1EBC14288, type metadata accessor for ExtendedAttributeError);
      swift_allocError();
      *v38 = a3;
      v38[1] = a4;
      v38[2] = v24;

      MEMORY[0x1BFAFCF50](v39);
      result = sub_1BABE72CC();
      if ((result & 0x100000000) != 0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14290);
      sub_1BABE69EC();
      sub_1BABDFD34(MEMORY[0x1E69E7CC0]);
      sub_1BAAD3994(&qword_1EBC14298, MEMORY[0x1E6967EB8]);
      sub_1BABE6ABC();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      result = swift_bridgeObjectRelease_n();
      v40 = v17 | 0x8000000000000000;
      v41 = a1;
      *a1 = v54;
LABEL_32:
      v41[1] = v40;
      return result;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v10)
  {

    sub_1BAAD73E4(v9, v8);
    *&value = v9;
    WORD4(value) = v8;
    BYTE10(value) = BYTE2(v8);
    BYTE11(value) = BYTE3(v8);
    BYTE12(value) = BYTE4(v8);
    BYTE13(value) = BYTE5(v8);
    BYTE14(value) = BYTE6(v8);
    v11 = sub_1BABE756C();
    v12 = getxattr(a2, (v11 + 32), &value, a5, 0, 0);

    if (v12 > 0)
    {
      v13 = value;
      v14 = DWORD2(value) | ((WORD6(value) | (BYTE14(value) << 16)) << 32);
      result = swift_bridgeObjectRelease_n();
      *a1 = v13;
      a1[1] = v14;
      return result;
    }

    type metadata accessor for ExtendedAttributeError();
    sub_1BAAD3994(&qword_1EBC14288, type metadata accessor for ExtendedAttributeError);
    swift_allocError();
    *v32 = a3;
    v32[1] = a4;
    v32[2] = v12;

    MEMORY[0x1BFAFCF50](v33);
    result = sub_1BABE72CC();
    if ((result & 0x100000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14290);
      sub_1BABE69EC();
      sub_1BABDFD34(MEMORY[0x1E69E7CC0]);
      sub_1BAAD3994(&qword_1EBC14298, MEMORY[0x1E6967EB8]);
      sub_1BABE6ABC();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v34 = value;
      v35 = DWORD2(value) | ((WORD6(value) | (BYTE14(value) << 16)) << 32);
      result = swift_bridgeObjectRelease_n();
      *a1 = v34;
      a1[1] = v35;
      return result;
    }

    goto LABEL_40;
  }

  v26 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1BAAE7824(v9, v8);
  sub_1BAAD73E4(v9, v8);
  *a1 = xmmword_1BABF45F0;
  sub_1BAAD73E4(0, 0xC000000000000000);

  v27 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v27 < v9)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (sub_1BABE6A0C() && __OFSUB__(v9, sub_1BABE6A3C()))
    {
LABEL_37:
      __break(1u);
    }

    sub_1BABE6A4C();
    swift_allocObject();
    v42 = sub_1BABE69FC();

    v26 = v42;
  }

  if (v27 < v9)
  {
    goto LABEL_34;
  }

  result = sub_1BABE6A0C();
  if (!result)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v43 = result;
  v44 = sub_1BABE6A3C();
  v45 = v9 - v44;
  if (__OFSUB__(v9, v44))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1BABE6A2C();
  v46 = sub_1BABE756C();
  v47 = getxattr(a2, (v46 + 32), (v43 + v45), a5, 0, 0);

  if (v47 >= 1)
  {
    swift_bridgeObjectRelease_n();

    v25 = v26 | 0x4000000000000000;
    *a1 = v9;
    goto LABEL_29;
  }

  type metadata accessor for ExtendedAttributeError();
  sub_1BAAD3994(&qword_1EBC14288, type metadata accessor for ExtendedAttributeError);
  swift_allocError();
  *v48 = a3;
  v48[1] = a4;
  v48[2] = v47;

  MEMORY[0x1BFAFCF50](v49);
  result = sub_1BABE72CC();
  if ((result & 0x100000000) == 0)
  {
    v50 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14290);
    sub_1BABE69EC();
    LODWORD(value) = v50;
    sub_1BABDFD34(MEMORY[0x1E69E7CC0]);
    sub_1BAAD3994(&qword_1EBC14298, MEMORY[0x1E6967EB8]);
    sub_1BABE6ABC();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_bridgeObjectRelease_n();

    v40 = v26 | 0x4000000000000000;
    v41 = a1;
    *a1 = v9;
    goto LABEL_32;
  }

LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_1BABDFD34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC127D0);
    v3 = sub_1BABE7CEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BABDFEF8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1BABD5ACC(v13, v14, sub_1BABD59FC);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BAAE8B14(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1BABDFE58(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1BABE6A4C();
      swift_allocObject();
      sub_1BABE6A1C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1BABE6BCC();
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

uint64_t sub_1BABDFEF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC132C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BABDFFB8()
{
  sub_1BABE0024();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1BABE0024()
{
  if (!qword_1EBC142B0)
  {
    sub_1BABE69EC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBC142B0);
    }
  }
}

uint64_t ReplicatorZone.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReplicatorZone.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReplicatorZone.clientIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReplicatorZone.clientIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

__n128 ReplicatorZone.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 ReplicatorZone.protocolVersion.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 ReplicatorZone.init(identifier:clientIdentifier:protocolVersion:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  result = *a5;
  a6[2] = *a5;
  return result;
}

uint64_t sub_1BABE01F8(uint64_t a1)
{
  v2 = sub_1BABE0810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BABE0234(uint64_t a1)
{
  v2 = sub_1BABE0810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorZone.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC142B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABE0810();
  sub_1BABE800C();
  LOBYTE(v19) = 0;
  v9 = v18;
  sub_1BABE7E5C();
  if (!v9)
  {
    v12 = v14;
    v11 = v15;
    LOBYTE(v19) = 1;
    sub_1BABE7E5C();
    v19 = v11;
    v20 = v12;
    v21 = 2;
    sub_1BAB2E164();
    sub_1BABE7E7C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReplicatorZone.hash(into:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1BABE759C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  return MEMORY[0x1BFAFDC40](v2);
}

uint64_t ReplicatorZone.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1BABE7F9C();
  sub_1BABE759C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  return sub_1BABE7FDC();
}

uint64_t ReplicatorZone.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC142C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABE0810();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_1BABE7DAC();
  v11 = v10;
  v19 = v9;
  LOBYTE(v20) = 1;
  v17 = sub_1BABE7DAC();
  v18 = v12;
  v21 = 2;
  sub_1BAB2E068();
  sub_1BABE7DCC();
  (*(v6 + 8))(v8, v5);
  v13 = v20;
  v14 = v18;
  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  *(a2 + 32) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BABE0810()
{
  result = qword_1EBC142C0;
  if (!qword_1EBC142C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC142C0);
  }

  return result;
}

unint64_t sub_1BABE0868()
{
  result = qword_1EBC142D0;
  if (!qword_1EBC142D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC142D0);
  }

  return result;
}

unint64_t sub_1BABE08E0()
{
  result = qword_1EBC142D8;
  if (!qword_1EBC142D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC142D8);
  }

  return result;
}

unint64_t sub_1BABE0938()
{
  result = qword_1EBC142E0;
  if (!qword_1EBC142E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC142E0);
  }

  return result;
}

unint64_t sub_1BABE0990()
{
  result = qword_1EBC142E8;
  if (!qword_1EBC142E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC142E8);
  }

  return result;
}

uint64_t static OpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BABE799C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = *(a2 - 8);
  result = (*(v13 + 56))(&v15 - v11, 1, 1, a2);
  if (a1)
  {
    sub_1BABE7D0C();
    (*(v7 + 16))(v10, v12, v6);
    result = (*(v13 + 48))(v10, 1, a2);
    if (result != 1)
    {
      (*(v7 + 8))(v12, v6);
      return (*(v13 + 32))(a3, v10, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static OpaqueObjectiveCBridgable<>._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BABE799C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v9 = sub_1BABE6BEC();
  v11 = v10;
  sub_1BABE6A5C();
  (*(v6 + 8))(a2, v5);
  sub_1BAAD73E4(v9, v11);

  (*(*(a3 - 8) + 56))(v8, 0, 1, a3);
  return (*(v6 + 32))(a2, v8, v5);
}

BOOL static OpaqueObjectiveCBridgable<>._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BABE799C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v20 = *(v6 + 8);
  v21 = a2;
  v20(a2, v5);
  sub_1BABE6A7C();
  swift_allocObject();
  sub_1BABE6A6C();
  v12 = sub_1BABE6BEC();
  v14 = v13;
  sub_1BABE6A5C();

  sub_1BAAD73E4(v12, v14);
  v15 = *(a3 - 8);
  (*(v15 + 56))(v11, 0, 1, a3);
  v16 = v21;
  (*(v6 + 32))(v21, v11, v5);
  (*(v6 + 16))(v9, v16, v5);
  v17 = (*(v15 + 48))(v9, 1, a3) != 1;
  v20(v9, v5);
  return v17;
}

uint64_t type metadata accessor for ReplicatorRecordChange()
{
  result = qword_1ED787658;
  if (!qword_1ED787658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BABE1020()
{
  result = type metadata accessor for ReplicatorRecordVersion();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ReplicatorRecord.ID(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static ReplicatorHasher.hash<A>(_:)()
{
  return sub_1BABE6E2C();
}

{
  return sub_1BABE6E3C();
}

uint64_t ReplicatorHasher.combine<A>(_:)()
{
  return sub_1BABE6E4C();
}

{
  return sub_1BABE6E5C();
}

uint64_t type metadata accessor for ReplicatorHasher()
{
  result = qword_1EBC11F88;
  if (!qword_1EBC11F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BABE1170()
{
  result = sub_1BABE6E8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BABE11DC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v37 = a3;
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for ReplicatorRecord.ID(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BABE2444(a1, v17);
  v38 = a2;
  sub_1BABE2444(a2, v13);
  (*(v15 + 56))(v13, 0, 1, v14);
  swift_beginAccess();
  sub_1BAB2FD58(v13, v17);
  swift_endAccess();
  v19 = a1[4];
  v18 = a1[5];
  swift_beginAccess();
  v20 = *(v4 + 16);
  if (*(v20 + 16) && (v21 = sub_1BABD5AB4(v19, v18), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v23 = sub_1BAAE804C(MEMORY[0x1E69E7CC0]);
  }

  v24 = *(v8 + 16);
  v25 = v37;
  v24(v10, v37, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = v23;
  sub_1BAAE63A4(v10, a1, isUniquelyReferenced_nonNull_native);
  v27 = v40;
  swift_beginAccess();

  v28 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_1BAAE625C(v27, v19, v18, v28);
  *(v4 + 16) = v39;
  swift_endAccess();
  swift_beginAccess();
  v29 = *(v4 + 24);
  if (*(v29 + 16) && (v30 = sub_1BABD5AB4(v19, v18), (v31 & 1) != 0))
  {
    v32 = *(*(v29 + 56) + 8 * v30);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v32 = sub_1BAAE804C(MEMORY[0x1E69E7CC0]);
  }

  v24(v10, v25, v7);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v32;
  sub_1BAAE63A4(v10, v38, v33);
  v34 = v40;
  swift_beginAccess();
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  sub_1BAAE625C(v34, v19, v18, v35);

  *(v4 + 24) = v39;
  return swift_endAccess();
}

uint64_t sub_1BABE15D8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ReplicatorRecord.ID(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BABE2444(a1, v15);
  (*(v13 + 56))(v11, 1, 1, v12);
  swift_beginAccess();
  sub_1BAB2FD58(v11, v15);
  swift_endAccess();
  v17 = a1[4];
  v16 = a1[5];
  swift_beginAccess();
  v18 = *(v3 + 16);
  if (*(v18 + 16))
  {
    v19 = sub_1BABD5AB4(v17, v16);
    if (v20)
    {
      v31 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();

      sub_1BAB3C1B4(a1, v8);
      sub_1BAAD2E14(v8, &qword_1EBC12B60);
      v21 = v31;
      if (*(*(v3 + 16) + 16))
      {
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v3 + 16);
        *(v3 + 16) = 0x8000000000000000;
        sub_1BAAE625C(v21, v17, v16, isUniquelyReferenced_nonNull_native);

        *(v3 + 16) = v30;
      }

      else
      {

        swift_beginAccess();

        sub_1BAB30134(0, v17, v16);
      }
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v23 = *(v3 + 24);
  if (*(v23 + 16))
  {
    v24 = sub_1BABD5AB4(v17, v16);
    if (v25)
    {
      v31 = *(*(v23 + 56) + 8 * v24);
      swift_endAccess();

      sub_1BAB3C1B4(a2, v8);
      sub_1BAAD2E14(v8, &qword_1EBC12B60);
      v26 = v31;
      if (*(v31 + 16))
      {
        swift_beginAccess();

        v27 = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v3 + 24);
        *(v3 + 24) = 0x8000000000000000;
        sub_1BAAE625C(v26, v17, v16, v27);

        *(v3 + 24) = v30;
      }

      else
      {

        swift_beginAccess();

        sub_1BAB30134(0, v17, v16);
      }
    }
  }

  return swift_endAccess();
}

unint64_t sub_1BABE19D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(*(v2 + 24) + 16) && (sub_1BABD5AB4(a1, a2), (v5 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return sub_1BAAE804C(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1BABE1A64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (*(v5 + 16) && (v6 = sub_1BABD5D18(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for ReplicatorRecord.ID(0);
    v11 = *(v10 - 8);
    sub_1BABE2444(v9 + *(v11 + 72) * v8, a2);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v12 = type metadata accessor for ReplicatorRecord.ID(0);
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  return swift_endAccess();
}

uint64_t sub_1BABE1B9C()
{
  v84 = sub_1BABE6CFC();
  v1 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v74 = v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v80 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v82 = v73 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A18);
  v7 = MEMORY[0x1EEE9AC00](v87);
  v76 = (v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v90 = v73 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v73 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v91 = v73 - v14;
  swift_beginAccess();
  v81 = v0;
  v15 = *(v0 + 32);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v89 = (v1 + 56);
  v73[1] = v1 + 16;
  v75 = (v1 + 48);
  v77 = (v1 + 32);
  v78 = v1;
  v73[0] = v1 + 40;
  v83 = v15;
  swift_bridgeObjectRetain_n();
  v21 = 0;
  v88 = MEMORY[0x1E69E7CC8];
  v86 = v13;
  if (v19)
  {
LABEL_8:
    while (1)
    {
      v23 = v83;
      v24 = *(v83 + 48);
      v79 = type metadata accessor for ReplicatorRecord.ID(0);
      v85 = *(*(v79 - 8) + 72);
      v25 = v85 * (__clz(__rbit64(v19)) | (v21 << 6));
      v26 = v91;
      sub_1BABE2444(v24 + v25, v91);
      v27 = v87;
      sub_1BABE2444(*(v23 + 56) + v25, v26 + *(v87 + 48));
      sub_1BABE24A8(v26, v13);
      v92 = *(v27 + 48);
      v28 = v90;
      sub_1BABE24A8(v26, v90);
      v29 = *(v27 + 48);
      v30 = *(v28 + 32);
      v31 = *(v28 + 40);

      sub_1BABE2518(v28);
      v32 = v81;
      swift_beginAccess();
      v33 = *(v32 + 16);
      if (!*(v33 + 16))
      {
        break;
      }

      v34 = sub_1BABD5AB4(v30, v31);
      v36 = v35;

      if ((v36 & 1) == 0)
      {
        goto LABEL_14;
      }

      v37 = *(*(v33 + 56) + 8 * v34);
      v38 = v76;
      sub_1BABE24A8(v91, v76);
      if (*(v37 + 16))
      {

        v39 = sub_1BABD5D18(v38);
        if (v40)
        {
          (*(v78 + 16))(v82, *(v37 + 56) + *(v78 + 72) * v39, v84);
          v41 = 0;
        }

        else
        {
          v41 = 1;
        }
      }

      else
      {
        v41 = 1;
      }

      v42 = *v89;
      v43 = v82;
      v52 = v84;
      (*v89)(v82, v41, 1, v84);
      v53 = *(v87 + 48);
      swift_endAccess();
      v54 = v76;
      v55 = v76 + v53;
      v44 = v52;
      sub_1BABE2518(v55);
      sub_1BABE2518(v54);
      sub_1BABE2518(v90 + v29);
      if ((*v75)(v43, 1, v52) == 1)
      {
        goto LABEL_15;
      }

      v56 = *v77;
      (*v77)(v74, v43, v52);
      v57 = v88;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v57;
      v60 = sub_1BABD5D18(&v86[v92]);
      v61 = v57[2];
      v62 = (v59 & 1) == 0;
      v63 = v61 + v62;
      if (__OFADD__(v61, v62))
      {
        goto LABEL_39;
      }

      v64 = v59;
      if (v57[3] >= v63)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BABDCC60();
        }
      }

      else
      {
        sub_1BABD7E44(v63, isUniquelyReferenced_nonNull_native);
        v65 = sub_1BABD5D18(&v86[v92]);
        if ((v64 & 1) != (v66 & 1))
        {
          goto LABEL_41;
        }

        v60 = v65;
      }

      v67 = v84;
      v68 = v93;
      v88 = v93;
      if (v64)
      {
        (*(v78 + 40))(v93[7] + *(v78 + 72) * v60, v74, v84);
        sub_1BAAD2E14(v91, &qword_1EBC12A18);
        v13 = v86;
      }

      else
      {
        v93[(v60 >> 6) + 8] |= 1 << v60;
        sub_1BABE2444(&v86[v92], v68[6] + v60 * v85);
        v56((v68[7] + *(v78 + 72) * v60), v74, v67);
        sub_1BAAD2E14(v91, &qword_1EBC12A18);
        v69 = v68[2];
        v70 = __OFADD__(v69, 1);
        v71 = v69 + 1;
        if (v70)
        {
          goto LABEL_40;
        }

        v68[2] = v71;
        v13 = v86;
      }

LABEL_21:
      sub_1BABE2518(&v13[v92]);
      v19 &= v19 - 1;
      sub_1BABE2518(v13);
      if (!v19)
      {
        goto LABEL_4;
      }
    }

LABEL_14:
    swift_endAccess();
    sub_1BABE2518(v90 + v29);
    v42 = *v89;
    v43 = v82;
    v44 = v84;
    (*v89)(v82, 1, 1, v84);
LABEL_15:
    sub_1BAAD2E14(v43, &qword_1EBC12B60);
    v13 = v86;
    v45 = v88;
    v46 = sub_1BABD5D18(&v86[v92]);
    if (v47)
    {
      v48 = v46;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v45;
      v50 = v80;
      if (!v49)
      {
        sub_1BABDCC60();
        v50 = v80;
        v45 = v93;
      }

      sub_1BABE2518(*(v45 + 48) + v48 * v85);
      (*(v78 + 32))(v50, *(v45 + 56) + *(v78 + 72) * v48, v44);
      v88 = v45;
      sub_1BAB3CF80(v48, v45);
      sub_1BAAD2E14(v91, &qword_1EBC12A18);
      v51 = 0;
    }

    else
    {
      sub_1BAAD2E14(v91, &qword_1EBC12A18);
      v51 = 1;
      v50 = v80;
    }

    v42(v50, v51, 1, v44);
    sub_1BAAD2E14(v50, &qword_1EBC12B60);
    goto LABEL_21;
  }

LABEL_4:
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      return v88;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1BABE7EFC();
  __break(1u);
  return result;
}

uint64_t sub_1BABE23D8()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BABE2444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatorRecord.ID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BABE24A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BABE2518(uint64_t a1)
{
  v2 = type metadata accessor for ReplicatorRecord.ID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 MessageDescriptor.init(messageType:protocolVersion:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t MessageDescriptor.messageType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MessageDescriptor.messageType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 MessageDescriptor.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

BOOL static MessageDescriptor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = sub_1BABE7EDC();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

uint64_t sub_1BABE2894()
{
  if (*v0)
  {
    return 0x6C6F636F746F7270;
  }

  else
  {
    return 0x546567617373656DLL;
  }
}

uint64_t sub_1BABE28E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
  if (v6 || (sub_1BABE7EDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BABE7EDC();

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

uint64_t sub_1BABE29CC(uint64_t a1)
{
  v2 = sub_1BABE2BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BABE2A08(uint64_t a1)
{
  v2 = sub_1BABE2BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC142F0);
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  v7 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABE2BD8();
  sub_1BABE800C();
  LOBYTE(v13) = 0;
  sub_1BABE7E5C();
  if (!v2)
  {
    v13 = v11;
    v14 = v10;
    v15 = 1;
    sub_1BAB2E164();
    sub_1BABE7E7C();
  }

  return (*(v12 + 8))(v6, v4);
}

unint64_t sub_1BABE2BD8()
{
  result = qword_1ED787138;
  if (!qword_1ED787138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787138);
  }

  return result;
}

uint64_t MessageDescriptor.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  return MEMORY[0x1BFAFDC40](v2);
}

uint64_t MessageDescriptor.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BABE7F9C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  return sub_1BABE7FDC();
}

uint64_t MessageDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC142F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABE2BD8();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v15) = 0;
  v9 = sub_1BABE7DAC();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_1BAB2E068();
  sub_1BABE7DCC();
  (*(v6 + 8))(v8, v5);
  v13 = v15;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_1BABE2F14(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = sub_1BABE7EDC();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

uint64_t sub_1BABE2F80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BABE7F9C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  return sub_1BABE7FDC();
}

uint64_t sub_1BABE2FF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  return MEMORY[0x1BFAFDC40](v2);
}

uint64_t sub_1BABE3040()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1BABE7F9C();
  sub_1BABE759C();
  MEMORY[0x1BFAFDC40](v1);
  MEMORY[0x1BFAFDC40](v2);
  return sub_1BABE7FDC();
}

unint64_t sub_1BABE30B8()
{
  result = qword_1EBC14300;
  if (!qword_1EBC14300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14300);
  }

  return result;
}

unint64_t sub_1BABE3130()
{
  result = qword_1EBC14308;
  if (!qword_1EBC14308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14308);
  }

  return result;
}

unint64_t sub_1BABE3188()
{
  result = qword_1ED787128;
  if (!qword_1ED787128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787128);
  }

  return result;
}

unint64_t sub_1BABE31E0()
{
  result = qword_1ED787130;
  if (!qword_1ED787130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787130);
  }

  return result;
}

void sub_1BABE3354(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol_];
  [a1 setClient_];

  v4 = [v2 protocolForProtocol_];
  [a1 setServer_];
}

id StateCaptureClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t StateCaptureClient.init()()
{
  v19 = sub_1BABE793C();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC18ReplicatorServices18StateCaptureClient_connection;
  *&v0[OBJC_IVAR____TtC18ReplicatorServices18StateCaptureClient_connection] = 0;
  v18 = OBJC_IVAR____TtC18ReplicatorServices18StateCaptureClient_queue;
  v17[1] = sub_1BAAD14BC();
  sub_1BABE73AC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BABE37D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0);
  sub_1BAB99288();
  sub_1BABE79FC();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v19);
  *&v0[v18] = sub_1BABE796C();
  v7 = *&v0[v6];
  *&v0[v6] = 0;

  v8 = type metadata accessor for StateCaptureClient();
  v21.receiver = v0;
  v21.super_class = v8;
  v9 = objc_msgSendSuper2(&v21, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC18ReplicatorServices18StateCaptureClient_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BABE3850;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1BABE3874;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BABE332C;
  aBlock[3] = &block_descriptor_8;
  v13 = _Block_copy(aBlock);
  v14 = v9;
  v15 = v10;

  dispatch_sync(v15, v13);

  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v14;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BABE37D4()
{
  result = qword_1ED787C70;
  if (!qword_1ED787C70)
  {
    sub_1BABE791C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787C70);
  }

  return result;
}

void *sub_1BABE38C0()
{
  v1 = sub_1BABE73FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC18ReplicatorServices18StateCaptureClient_queue];
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  result = (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = OBJC_IVAR____TtC18ReplicatorServices18StateCaptureClient_connection;
  if (!*&v0[OBJC_IVAR____TtC18ReplicatorServices18StateCaptureClient_connection])
  {
    result = sub_1BABE4864();
    if (result)
    {
      v9 = *&v0[v8];
      *&v0[v8] = result;
      v10 = result;

      v11 = swift_allocObject();
      *(v11 + 16) = v0;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1BABE4968;
      *(v12 + 24) = v11;
      aBlock[4] = sub_1BAAD671C;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BAAD6678;
      aBlock[3] = &block_descriptor_16;
      v13 = _Block_copy(aBlock);
      v14 = v0;

      [v10 configure_];

      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

void sub_1BABE3B20(void *a1, uint64_t a2)
{
  v4 = sub_1BABE74EC();
  v17 = sub_1BABE3354;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1BAAD6A60;
  v16 = &block_descriptor_19;
  v5 = _Block_copy(&v13);
  v6 = [objc_opt_self() interfaceWithIdentifier:v4 configurator:v5];

  _Block_release(v5);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + OBJC_IVAR____TtC18ReplicatorServices18StateCaptureClient_queue);
    v8 = sub_1BABE74EC();
    v9 = [objc_opt_self() queueWithName:v8 targetQueue:v7];

    [a1 setInterface_];
    [a1 setInterfaceTarget_];
    [a1 setQueue_];
    v17 = sub_1BABE3E4C;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1BAAD7E2C;
    v16 = &block_descriptor_22;
    v10 = _Block_copy(&v13);
    [a1 setActivationHandler_];
    _Block_release(v10);
    v17 = sub_1BABE3E58;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1BAAD7E2C;
    v16 = &block_descriptor_25;
    v11 = _Block_copy(&v13);
    [a1 setInterruptionHandler_];
    _Block_release(v11);
    v17 = sub_1BABE3E64;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1BAAD7E2C;
    v16 = &block_descriptor_28_0;
    v12 = _Block_copy(&v13);
    [a1 setInvalidationHandler_];
    _Block_release(v12);
  }
}

void sub_1BABE3E70(uint64_t a1, const char *a2)
{
  if (qword_1EBC11DA0 != -1)
  {
    swift_once();
  }

  v3 = sub_1BABE72BC();
  __swift_project_value_buffer(v3, qword_1EBC24FE8);
  oslog = sub_1BABE729C();
  v4 = sub_1BABE78CC();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BAACF000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1BFAFE460](v5, -1, -1);
  }
}

void sub_1BABE3F60()
{
  v1 = sub_1BABE73FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices18StateCaptureClient_queue);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    sub_1BABE38C0();
    v7 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices18StateCaptureClient_connection);
    if (v7)
    {
      v8 = v7;
      if ([v8 remoteTarget])
      {
        sub_1BABE79CC();
        swift_unknownObjectRelease();

        sub_1BABE47FC(v9);
      }

      else
      {
        memset(v9, 0, sizeof(v9));
        sub_1BABE47FC(v9);
        [v8 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BABE40F0()
{
  v1 = sub_1BABE73FC();
  isa = v1[-1].isa;
  MEMORY[0x1EEE9AC00](v1);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices18StateCaptureClient_queue);
  *v4 = v5;
  (*(isa + 13))(v4, *MEMORY[0x1E69E8020], v1);
  v6 = v5;
  LOBYTE(v5) = sub_1BABE740C();
  (*(isa + 1))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1BABE3F60();
  v7 = *(v0 + OBJC_IVAR____TtC18ReplicatorServices18StateCaptureClient_connection);
  if (!v7)
  {
    if (qword_1EBC11DA0 != -1)
    {
      swift_once();
    }

    v8 = sub_1BABE72BC();
    __swift_project_value_buffer(v8, qword_1EBC24FE8);
    v1 = sub_1BABE729C();
    v9 = sub_1BABE78FC();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BAACF000, v1, v9, "StateCaptureClient: Failed to establish a connection", v10, 2u);
      MEMORY[0x1BFAFE460](v10, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v7;
  if ([v1 remoteTarget])
  {
    sub_1BABE79CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14320);
    if (swift_dynamicCast())
    {

      return v16[1];
    }
  }

  else
  {
    sub_1BABE47FC(v19);
  }

  if (qword_1EBC11DA0 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v12 = sub_1BABE72BC();
  __swift_project_value_buffer(v12, qword_1EBC24FE8);
  v13 = sub_1BABE729C();
  v14 = sub_1BABE78FC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1BAACF000, v13, v14, "StateCaptureClient: Failed to cast connection to server interface protocol", v15, 2u);
    MEMORY[0x1BFAFE460](v15, -1, -1);
  }

LABEL_18:
  return 0;
}

id StateCaptureClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateCaptureClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StateCaptureClient.state(identifier:)(Swift::String_optional identifier)
{
  v2 = sub_1BABE794C();
  if (!v1)
  {
    v2 = v5;
    v3 = v6;
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

void sub_1BABE4514(void *a1@<X2>, uint64_t *a2@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BABE40F0();
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      a1 = sub_1BABE74EC();
    }

    v13[0] = 0;
    v6 = [v5 stateFor:a1 error:v13];
    swift_unknownObjectRelease();

    v7 = v13[0];
    if (v6)
    {
      v8 = sub_1BABE751C();
      v10 = v9;
      v11 = v7;

      *a2 = v8;
      a2[1] = v10;
    }

    else
    {
      v12 = v13[0];
      sub_1BABE6ADC();

      swift_willThrow();
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StateCaptureClient.dataPath()()
{
  v1 = sub_1BABE794C();
  if (!v0)
  {
    v1 = v4;
    v2 = v5;
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

void sub_1BABE46C0(uint64_t *a1@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BABE40F0();
  if (v2)
  {
    v10[0] = 0;
    v3 = [v2 dataPathAndReturnError_];
    swift_unknownObjectRelease();
    v4 = v10[0];
    if (v3)
    {
      v5 = sub_1BABE751C();
      v7 = v6;
      v8 = v4;

      *a1 = v5;
      a1[1] = v7;
    }

    else
    {
      v9 = v10[0];
      sub_1BABE6ADC();

      swift_willThrow();
    }
  }

  else
  {
    *a1 = 0x6E776F6E6B6E55;
    a1[1] = 0xE700000000000000;
  }
}

uint64_t sub_1BABE47FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BABE4864()
{
  v0 = objc_opt_self();
  if (qword_1EBC11EA0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BABE74EC();
  v2 = sub_1BABE74EC();
  v3 = [v0 endpointForMachName:v1 service:v2 instance:0];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E698F4D8]) initWithEndpoint_];
  return v4;
}

void __swiftcall ClientDescriptor.init(id:entitlement:messageNotificationName:recordNotificationName:zoneDescriptors:messageDescriptors:)(ReplicatorServices::ClientDescriptor *__return_ptr retstr, Swift::String id, Swift::String entitlement, Swift::String messageNotificationName, Swift::String recordNotificationName, Swift::OpaquePointer zoneDescriptors, Swift::OpaquePointer messageDescriptors)
{
  object = messageNotificationName._object;
  countAndFlagsBits = messageNotificationName._countAndFlagsBits;
  rawValue = zoneDescriptors._rawValue;
  v57 = *(zoneDescriptors._rawValue + 2);
  if (!v57)
  {
    v10 = MEMORY[0x1E69E7CC8];
LABEL_16:
    v60 = v10;

    v62 = *(messageDescriptors._rawValue + 2);
    if (!v62)
    {
      v32 = MEMORY[0x1E69E7CC8];
LABEL_32:

      retstr->id = id;
      retstr->entitlement = entitlement;
      retstr->messageNotificationName._countAndFlagsBits = countAndFlagsBits;
      retstr->messageNotificationName._object = object;
      retstr->recordNotificationName = recordNotificationName;
      retstr->zoneDescriptors._rawValue = v60;
      retstr->messageDescriptors._rawValue = v32;
      return;
    }

    v30 = 0;
    v31 = (messageDescriptors._rawValue + 56);
    v32 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v30 >= *(messageDescriptors._rawValue + 2))
      {
        goto LABEL_35;
      }

      v35 = *(v31 - 3);
      v34 = *(v31 - 2);
      v37 = *(v31 - 1);
      v36 = *v31;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = sub_1BABD5AB4(v35, v34);
      v41 = v32[2];
      v42 = (v40 & 1) == 0;
      v28 = __OFADD__(v41, v42);
      v43 = v41 + v42;
      if (v28)
      {
        goto LABEL_36;
      }

      v44 = v40;
      if (v32[3] < v43)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      v50 = v39;
      sub_1BABDDFC4();
      v39 = v50;
      if (v44)
      {
LABEL_18:
        v33 = (v32[7] + 32 * v39);
        *v33 = v35;
        v33[1] = v34;
        v33[2] = v37;
        v33[3] = v36;

        goto LABEL_19;
      }

LABEL_27:
      v32[(v39 >> 6) + 8] |= 1 << v39;
      v46 = (v32[6] + 16 * v39);
      *v46 = v35;
      v46[1] = v34;
      v47 = (v32[7] + 32 * v39);
      *v47 = v35;
      v47[1] = v34;
      v47[2] = v37;
      v47[3] = v36;
      v48 = v32[2];
      v28 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v28)
      {
        goto LABEL_38;
      }

      v32[2] = v49;
LABEL_19:
      ++v30;
      v31 += 4;
      if (v62 == v30)
      {
        goto LABEL_32;
      }
    }

    sub_1BABDA2D4(v43, isUniquelyReferenced_nonNull_native);
    v39 = sub_1BABD5AB4(v35, v34);
    if ((v44 & 1) != (v45 & 1))
    {
      goto LABEL_39;
    }

LABEL_26:
    if (v44)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

  v8 = 0;
  v9 = zoneDescriptors._rawValue + 40;
  v10 = MEMORY[0x1E69E7CC8];
  while (v8 < rawValue[2])
  {
    v13 = *(v9 - 1);
    v12 = *v9;
    v58 = v9[8];
    v59 = v9[9];
    v14 = *(v9 + 3);
    v61 = *(v9 + 2);
    v15 = v9[32];
    swift_bridgeObjectRetain_n();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1BABD5AB4(v13, v12);
    v19 = v10[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_34;
    }

    v22 = v17;
    if (v10[3] >= v21)
    {
      if ((v16 & 1) == 0)
      {
        sub_1BABDE148();
      }
    }

    else
    {
      sub_1BABDA59C(v21, v16);
      v23 = sub_1BABD5AB4(v13, v12);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_39;
      }

      v18 = v23;
    }

    if (v22)
    {
      v11 = v10[7] + 48 * v18;
      *v11 = v13;
      *(v11 + 8) = v12;
      *(v11 + 16) = v58;
      *(v11 + 17) = v59;
      *(v11 + 24) = v61;
      *(v11 + 32) = v14;
      *(v11 + 40) = v15;
    }

    else
    {
      v10[(v18 >> 6) + 8] |= 1 << v18;
      v25 = (v10[6] + 16 * v18);
      *v25 = v13;
      v25[1] = v12;
      v26 = v10[7] + 48 * v18;
      *v26 = v13;
      *(v26 + 8) = v12;
      *(v26 + 16) = v58;
      *(v26 + 17) = v59;
      *(v26 + 24) = v61;
      *(v26 + 32) = v14;
      *(v26 + 40) = v15;
      v27 = v10[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_37;
      }

      v10[2] = v29;
    }

    ++v8;
    v9 += 48;
    rawValue = zoneDescriptors._rawValue;
    if (v57 == v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  sub_1BABE7EFC();
  __break(1u);
}

uint64_t ClientDescriptor.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ClientDescriptor.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ClientDescriptor.entitlement.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ClientDescriptor.entitlement.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ClientDescriptor.messageNotificationName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ClientDescriptor.messageNotificationName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ClientDescriptor.recordNotificationName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ClientDescriptor.recordNotificationName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ClientDescriptor.zoneDescriptors.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t ClientDescriptor.messageDescriptors.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

unint64_t sub_1BABE5134()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000016;
  v4 = 0x63736544656E6F7ALL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D656C7469746E65;
  if (v1 != 1)
  {
    v5 = 0xD000000000000017;
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

uint64_t sub_1BABE5208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BABE67DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BABE523C(uint64_t a1)
{
  v2 = sub_1BABE63B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BABE5278(uint64_t a1)
{
  v2 = sub_1BABE63B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14328);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = v1[2];
  v23 = v1[3];
  v24 = v7;
  v8 = v1[4];
  v21 = v1[5];
  v22 = v8;
  v9 = v1[6];
  v19 = v1[7];
  v20 = v9;
  v10 = v1[9];
  v18 = v1[8];
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_1BABE63B0();
  sub_1BABE800C();
  LOBYTE(v27) = 0;
  v15 = v25;
  sub_1BABE7E5C();
  if (!v15)
  {
    LOBYTE(v27) = 1;
    sub_1BABE7E5C();
    LOBYTE(v27) = 2;
    sub_1BABE7E5C();
    LOBYTE(v27) = 3;
    sub_1BABE7E5C();
    v27 = v18;
    v26 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14330);
    sub_1BABE6530(&unk_1ED7876C0, sub_1BABE6404);
    sub_1BABE7E7C();
    v27 = v10;
    v26 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14338);
    sub_1BABE6458(&qword_1ED7876B8, sub_1BABE64DC);
    sub_1BABE7E7C();
  }

  return (*(v4 + 8))(v6, v14);
}

uint64_t ClientDescriptor.hash(into:)(uint64_t a1)
{
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE6060(a1, v4);

  return sub_1BABE5ED0(a1, v3);
}

uint64_t ClientDescriptor.hashValue.getter()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  sub_1BABE7F9C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE6060(v4, v2);
  sub_1BABE5ED0(v4, v1);
  return sub_1BABE7FDC();
}

uint64_t ClientDescriptor.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14340);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABE63B0();
  sub_1BABE7FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = sub_1BABE7DAC();
  v11 = v10;
  LOBYTE(v36[0]) = 1;
  v28 = sub_1BABE7DAC();
  v30 = v12;
  LOBYTE(v36[0]) = 2;
  v13 = sub_1BABE7DAC();
  v29 = v14;
  v25 = v13;
  LOBYTE(v36[0]) = 3;
  v27 = 0;
  v24 = sub_1BABE7DAC();
  v26 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14330);
  LOBYTE(v31) = 4;
  sub_1BABE6530(&qword_1ED787330, sub_1BABE65B4);
  sub_1BABE7DCC();
  v23 = v36[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14338);
  v37 = 5;
  sub_1BABE6458(&qword_1ED787328, sub_1BABE6608);
  sub_1BABE7DCC();
  (*(v6 + 8))(v8, v5);
  v27 = v38;
  *&v31 = v9;
  *(&v31 + 1) = v11;
  v16 = v28;
  v17 = v30;
  *&v32 = v28;
  *(&v32 + 1) = v30;
  v18 = v29;
  *&v33 = v25;
  *(&v33 + 1) = v29;
  v19 = v26;
  *&v34 = v24;
  *(&v34 + 1) = v26;
  *&v35 = v23;
  *(&v35 + 1) = v38;
  v20 = v34;
  a2[2] = v33;
  a2[3] = v20;
  v21 = v32;
  *a2 = v31;
  a2[1] = v21;
  a2[4] = v35;
  sub_1BAB21C84(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v9;
  v36[1] = v11;
  v36[2] = v16;
  v36[3] = v17;
  v36[4] = v25;
  v36[5] = v18;
  v36[6] = v24;
  v36[7] = v19;
  v36[8] = v23;
  v36[9] = v27;
  return sub_1BAB21D34(v36);
}

uint64_t sub_1BABE5C9C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  sub_1BABE7F9C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE6060(v4, v2);
  sub_1BABE5ED0(v4, v1);
  return sub_1BABE7FDC();
}

uint64_t sub_1BABE5D60(uint64_t a1)
{
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE6060(a1, v4);

  return sub_1BABE5ED0(a1, v3);
}

uint64_t sub_1BABE5E0C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  sub_1BABE7F9C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE6060(v4, v2);
  sub_1BABE5ED0(v4, v1);
  return sub_1BABE7FDC();
}

uint64_t sub_1BABE5ED0(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v16 = 0;
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = *(*(a2 + 48) + 16 * v10 + 8);
      v12 = *(a2 + 56) + 32 * v10;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);

      if (!v11)
      {
        break;
      }

      v5 &= v5 - 1;
      sub_1BABE759C();

      sub_1BABE759C();
      MEMORY[0x1BFAFDC40](v14);
      MEMORY[0x1BFAFDC40](v13);

      result = sub_1BABE7FDC();
      v16 ^= result;
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1BFAFDC20](v16);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {
        goto LABEL_11;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BABE6060(uint64_t a1, uint64_t a2)
{
  v15 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a2 + 64);
  v5 = (v2 + 63) >> 6;

  v18 = 0;
  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = __clz(__rbit64(v4)) | (v8 << 6);
      v10 = *(*(a2 + 48) + 16 * v9 + 8);
      v11 = *(a2 + 56) + 48 * v9;
      v12 = *(v11 + 16);
      v13 = *(v11 + 17);
      v14 = *(v11 + 24);
      v17 = *(v11 + 32);

      if (!v10)
      {
        break;
      }

      v4 &= v4 - 1;
      sub_1BABE759C();

      sub_1BABE759C();

      MEMORY[0x1BFAFDC40](v12);
      MEMORY[0x1BFAFDC40](v13);
      MEMORY[0x1BFAFDC40](v14);
      MEMORY[0x1BFAFDC40](v17);
      sub_1BABE7FBC();

      result = sub_1BABE7FDC();
      v18 ^= result;
      v7 = v8;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1BFAFDC20](v18);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= v5)
      {
        goto LABEL_11;
      }

      v4 = *(v15 + 8 * v8);
      ++v7;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s18ReplicatorServices16ClientDescriptorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v14 = a1[9];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v17 = a2[7];
  v18 = a1[7];
  v15 = a2[8];
  v16 = a1[8];
  v13 = a2[9];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1BABE7EDC() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1BABE7EDC() & 1) == 0 || (v4 != v9 || v6 != v10) && (sub_1BABE7EDC() & 1) == 0 || (v5 != v11 || v18 != v17) && (sub_1BABE7EDC() & 1) == 0 || (sub_1BAB1DB8C(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_1BAB1DDB4(v14, v13);
}

unint64_t sub_1BABE63B0()
{
  result = qword_1ED787878;
  if (!qword_1ED787878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787878);
  }

  return result;
}

unint64_t sub_1BABE6404()
{
  result = qword_1ED787880;
  if (!qword_1ED787880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787880);
  }

  return result;
}

uint64_t sub_1BABE6458(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC14338);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BABE64DC()
{
  result = qword_1ED787848;
  if (!qword_1ED787848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787848);
  }

  return result;
}

uint64_t sub_1BABE6530(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC14330);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BABE65B4()
{
  result = qword_1ED7873F8;
  if (!qword_1ED7873F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7873F8);
  }

  return result;
}

unint64_t sub_1BABE6608()
{
  result = qword_1ED7873E0;
  if (!qword_1ED7873E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7873E0);
  }

  return result;
}

unint64_t sub_1BABE6660()
{
  result = qword_1ED787850;
  if (!qword_1ED787850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787850);
  }

  return result;
}

unint64_t sub_1BABE66D8()
{
  result = qword_1EBC14348;
  if (!qword_1EBC14348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC14348);
  }

  return result;
}

unint64_t sub_1BABE6730()
{
  result = qword_1ED787868;
  if (!qword_1ED787868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787868);
  }

  return result;
}

unint64_t sub_1BABE6788()
{
  result = qword_1ED787870;
  if (!qword_1ED787870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787870);
  }

  return result;
}

uint64_t sub_1BABE67DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D656C7469746E65 && a2 == 0xEB00000000746E65 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001BABF8AF0 == a2 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BABF8B10 == a2 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x63736544656E6F7ALL && a2 == 0xEF73726F74706972 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BABF8B30 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1BABE7EDC();

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
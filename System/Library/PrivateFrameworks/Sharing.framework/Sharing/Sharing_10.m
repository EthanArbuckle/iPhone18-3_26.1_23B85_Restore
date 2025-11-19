uint64_t sub_1A983D1FC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0) - 8);
  v3[11] = v4;
  v3[12] = *(v4 + 64);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983D2C4, 0, 0);
}

uint64_t sub_1A983D2C4()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.BoopAtADistanceBegin()) init];
  v0[14] = v1;
  v21 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v22 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v22 = 0xD00000000000001BLL;
  }

  v0[15] = v2;
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[16] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[17] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[18] = v12;
  *(v12 + 16) = v22;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  swift_retain_n();

  v13 = v9;

  v14 = v21;
  v15 = swift_task_alloc();
  v0[19] = v15;
  v15[2] = v22;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984CBA8;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[20] = v17;
  v18 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
  *v17 = v0;
  v17[1] = sub_1A983AABC;
  v19 = v0[8];

  return MEMORY[0x1EEE6DE38](v19, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984CBE8, v15, v18);
}

uint64_t sub_1A983D554(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983D618, 0, 0);
}

uint64_t sub_1A983D618()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate()) init];
  v0[13] = v1;
  v19 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v20 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v20 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v20;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  swift_retain_n();

  v13 = v9;

  v14 = v19;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v20;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984CA24;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A983D89C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = *(type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0) - 8);
  v3[10] = v4;
  v3[11] = *(v4 + 64);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983D960, 0, 0);
}

uint64_t sub_1A983D960()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.BoopAtADistanceEnd()) init];
  v0[13] = v1;
  v19 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v20 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v20 = 0xD00000000000001BLL;
  }

  v0[14] = v2;
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[15] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[16] = v9;
  sub_1A984AD10(v7, v3, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v20;
  *(v12 + 24) = v2;
  sub_1A984C8B8(v3, v12 + v10, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  swift_retain_n();

  v13 = v9;

  v14 = v19;
  v15 = swift_task_alloc();
  v0[18] = v15;
  v15[2] = v20;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984C920;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1A9839438;

  return MEMORY[0x1EEE6DE38](v17, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v15, &type metadata for VoidResponse);
}

uint64_t sub_1A983DBE4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v4 = sub_1A99762C0();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v3[12] = *(v5 + 64);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983DCAC, 0, 0);
}

uint64_t sub_1A983DCAC()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.EndNearbySharingInteraction()) init];
  v0[14] = v1;
  v23 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v22 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v22 = 0xD00000000000001BLL;
  }

  v0[15] = v2;
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v20 = v5;
  v21 = v3;
  v7 = v0[8];
  v8 = v0[9];
  swift_beginAccess();
  v9 = *(v8 + 24);
  v0[16] = v9;
  swift_beginAccess();
  v10 = *(v8 + 16);
  v0[17] = v10;
  (*(v6 + 16))(v3, v7, v5);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[18] = v13;
  *(v13 + 16) = v22;
  *(v13 + 24) = v2;
  (*(v6 + 32))(v13 + v11, v21, v20);
  *(v13 + v12) = v9;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  swift_retain_n();

  v14 = v10;

  v15 = v23;
  v16 = swift_task_alloc();
  v0[19] = v16;
  v16[2] = v22;
  v16[3] = v2;
  v16[4] = v14;
  v16[5] = sub_1A984C700;
  v16[6] = v13;
  v17 = *(MEMORY[0x1E69E8920] + 4);
  v18 = swift_task_alloc();
  v0[20] = v18;
  *v18 = v0;
  v18[1] = sub_1A983AABC;

  return MEMORY[0x1EEE6DE38](v18, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984E1D4, v16, &type metadata for VoidResponse);
}

uint64_t sub_1A983DF30(uint64_t a1, char a2)
{
  *(v3 + 145) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1A983DF54, 0, 0);
}

uint64_t sub_1A983DF54()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.UserSafetyIntervention()) init];
  v2 = v1;
  *(v0 + 80) = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  *(v0 + 88) = v4;
  v5 = *(v0 + 72);
  v6 = *(v0 + 145);
  swift_beginAccess();
  v7 = *(v5 + 24);
  *(v0 + 96) = v7;
  swift_beginAccess();
  v8 = *(v5 + 16);
  *(v0 + 104) = v8;
  v9 = swift_allocObject();
  *(v0 + 112) = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v2;
  swift_retain_n();

  v10 = v8;

  v11 = v2;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  v12[2] = v3;
  v12[3] = v4;
  v12[4] = v10;
  v12[5] = sub_1A984C568;
  v12[6] = v9;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *v14 = v0;
  v14[1] = sub_1A983E164;

  return MEMORY[0x1EEE6DE38](v0 + 144, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984C5C4, v12, &type metadata for SFInterventionResponse);
}

uint64_t sub_1A983E164()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1A984E088;
  }

  else
  {
    v5 = v2[14];
    v6 = v2[15];
    v7 = v2[13];
    v8 = v2[11];

    v4 = sub_1A983E2A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A983E2A4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);

  *v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A983E320(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470) - 8);
  v2[12] = v3;
  v2[13] = *(v3 + 64);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983E3F0, 0, 0);
}

uint64_t sub_1A983E3F0()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.ItemDestinationAlert()) init];
  v0[15] = v1;
  v20 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v21 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v21 = 0xD00000000000001BLL;
  }

  v0[16] = v2;
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  swift_beginAccess();
  v8 = *(v6 + 24);
  v0[17] = v8;
  swift_beginAccess();
  v9 = *(v6 + 16);
  v0[18] = v9;
  sub_1A97C13A4(v7, v3, &qword_1EB3B17A8, &unk_1A9999470);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[19] = v12;
  *(v12 + 16) = v21;
  *(v12 + 24) = v2;
  sub_1A97D8380(v3, v12 + v10, &qword_1EB3B17A8, &unk_1A9999470);
  *(v12 + v11) = v8;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  swift_retain_n();

  v13 = v9;

  v14 = v20;
  v15 = swift_task_alloc();
  v0[20] = v15;
  v15[2] = v21;
  v15[3] = v2;
  v15[4] = v13;
  v15[5] = sub_1A984C320;
  v15[6] = v12;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[21] = v17;
  *v17 = v0;
  v17[1] = sub_1A983E674;
  v18 = MEMORY[0x1E69E6158];

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984C3E4, v15, v18);
}

uint64_t sub_1A983E674()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v10 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_1A983E83C;
  }

  else
  {
    v6 = *(v2 + 152);
    v5 = *(v2 + 160);
    v7 = *(v2 + 128);

    v8 = *(v2 + 72);
    *(v2 + 184) = *(v2 + 64);
    *(v2 + 192) = v8;
    v4 = sub_1A983E7C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A983E7C0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);

  v3 = *(v0 + 8);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);

  return v3(v4, v5);
}

uint64_t sub_1A983E83C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 112);

  v7 = *(v0 + 8);
  v8 = *(v0 + 176);

  return v7();
}

uint64_t sub_1A983E8E8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_1A99762C0();
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v3[15] = *(v5 + 64);
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A983E9B4, 0, 0);
}

uint64_t sub_1A983E9B4()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.FetchEndpointMetadata()) init];
  v0[17] = v1;
  v23 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v22 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v22 = 0xD00000000000001BLL;
  }

  v0[18] = v2;
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  v20 = v5;
  v21 = v3;
  v7 = v0[11];
  v8 = v0[12];
  swift_beginAccess();
  v9 = *(v8 + 24);
  v0[19] = v9;
  swift_beginAccess();
  v10 = *(v8 + 16);
  v0[20] = v10;
  (*(v6 + 16))(v3, v7, v5);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v0[21] = v13;
  *(v13 + 16) = v22;
  *(v13 + 24) = v2;
  (*(v6 + 32))(v13 + v11, v21, v20);
  *(v13 + v12) = v9;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  swift_retain_n();

  v14 = v10;

  v15 = v23;
  v16 = swift_task_alloc();
  v0[22] = v16;
  v16[2] = v22;
  v16[3] = v2;
  v16[4] = v14;
  v16[5] = sub_1A984C1A4;
  v16[6] = v13;
  v17 = *(MEMORY[0x1E69E8920] + 4);
  v18 = swift_task_alloc();
  v0[23] = v18;
  *v18 = v0;
  v18[1] = sub_1A983EC40;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984C1E4, v16, &type metadata for SFAirDrop.EndpointMetadata);
}

uint64_t sub_1A983EC40()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v10 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1A983EE0C;
  }

  else
  {
    v5 = v2[21];
    v6 = v2[22];
    v7 = v2[20];
    v8 = v2[18];

    v4 = sub_1A983ED80;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A983ED80()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 80);

  *v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A983EE0C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];

  v8 = v0[1];
  v9 = v0[24];

  return v8();
}

uint64_t sub_1A983EEB4(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A983EED4, 0, 0);
}

uint64_t sub_1A983EED4()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.Discoverability()) init];
  v2 = v1;
  v0[10] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[11] = v4;
  v5 = v0[9];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[12] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[13] = v7;
  v8 = swift_allocObject();
  v0[14] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[15] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984C010;
  v11[6] = v8;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_1A983F0DC;

  return MEMORY[0x1EEE6DE38](v0 + 18, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984C068, v11, &type metadata for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode);
}

uint64_t sub_1A983F0DC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1A983F21C;
  }

  else
  {
    v5 = v2[14];
    v6 = v2[15];
    v7 = v2[13];
    v8 = v2[11];

    v4 = sub_1A983E2A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A983F21C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];
  v8 = v0[17];

  return v7();
}

uint64_t sub_1A983F2D8()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.AvailableDiscoverability()) init];
  v2 = v1;
  v0[10] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[11] = v4;
  v5 = v0[9];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[12] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[13] = v7;
  v8 = swift_allocObject();
  v0[14] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[15] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984BE28;
  v11[6] = v8;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[16] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F18, &qword_1A999FD00);
  *v13 = v0;
  v13[1] = sub_1A983F4F0;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984BE54, v11, v14);
}

uint64_t sub_1A983F4F0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1A983F6B0;
  }

  else
  {
    v6 = *(v2 + 112);
    v5 = *(v2 + 120);
    v7 = *(v2 + 88);

    *(v2 + 144) = *(v2 + 64);
    v4 = sub_1A983F63C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A983F63C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = *(v0 + 144);

  return v2(v3);
}

uint64_t sub_1A983F6B0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);

  v6 = *(v0 + 8);
  v7 = *(v0 + 136);

  return v6();
}

uint64_t sub_1A983F750(uint64_t a1, char a2)
{
  *(v3 + 64) = v2;
  *(v3 + 136) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A983F774, 0, 0);
}

uint64_t sub_1A983F774()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.ChangeDiscoverability()) init];
  v2 = v1;
  *(v0 + 72) = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  *(v0 + 80) = v4;
  v5 = *(v0 + 64);
  v6 = *(v0 + 136);
  swift_beginAccess();
  v7 = *(v5 + 24);
  *(v0 + 88) = v7;
  swift_beginAccess();
  v8 = *(v5 + 16);
  *(v0 + 96) = v8;
  v9 = swift_allocObject();
  *(v0 + 104) = v9;
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v2;
  swift_retain_n();

  v10 = v8;

  v11 = v2;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  v12[2] = v3;
  v12[3] = v4;
  v12[4] = v10;
  v12[5] = sub_1A984BCC8;
  v12[6] = v9;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_1A983A3F8;

  return MEMORY[0x1EEE6DE38](v14, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984BCF4, v12, &type metadata for VoidResponse);
}

uint64_t sub_1A983F97C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A983F99C, 0, 0);
}

uint64_t sub_1A983F99C()
{
  v1 = [objc_allocWithZone(type metadata accessor for SFAirDropInvocations.TempPairingMonitor()) init];
  v2 = v1;
  v0[12] = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v3 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v4 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v4 = 0x80000001A99E51B0;
    v3 = 0xD00000000000001BLL;
  }

  v0[13] = v4;
  v5 = v0[11];
  swift_beginAccess();
  v6 = *(v5 + 24);
  v0[14] = v6;
  swift_beginAccess();
  v7 = *(v5 + 16);
  v0[15] = v7;
  v8 = swift_allocObject();
  v0[16] = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  swift_retain_n();

  v9 = v7;

  v10 = v2;
  v11 = swift_task_alloc();
  v0[17] = v11;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = sub_1A984D764;
  v11[6] = v8;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[18] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FD0, &unk_1A999FDC0);
  *v13 = v0;
  v13[1] = sub_1A9838FB4;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A984D790, v11, v14);
}

uint64_t sub_1A983FBB4(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0);
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1A983FC54, v2, 0);
}

uint64_t sub_1A983FC54()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = sub_1A99762C0();
  (*(*(v6 - 8) + 16))(v2, v4, v6);
  *(v2 + *(v3 + 20)) = v1;
  v7 = *(v5 + 112);
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_1A983FD5C;
  v9 = *(v0 + 40);

  return sub_1A98390F4(sub_1A98390F4, v9);
}

uint64_t sub_1A983FD5C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1A983FF0C;
  }

  else
  {
    v6 = sub_1A983FE88;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A983FE88()
{
  sub_1A984AB6C(*(v0 + 40), type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A983FF0C()
{
  sub_1A984AB6C(v0[5], type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_1A983FF90(_BYTE *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0);
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 64) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1A9840030, v2, 0);
}

uint64_t sub_1A9840030()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_1A984AD10(*(v0 + 16), v2, type metadata accessor for SFProximityHandoff.Content);
  *(v2 + *(v3 + 20)) = v1;
  v5 = *(v4 + 112);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1A9840114;
  v7 = *(v0 + 40);

  return (sub_1A9839578)();
}

uint64_t sub_1A9840114()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1A98402C4;
  }

  else
  {
    v6 = sub_1A9840240;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A9840240()
{
  sub_1A984AB6C(*(v0 + 40), type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98402C4()
{
  sub_1A984AB6C(v0[5], type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

void SFProximityHandoffClient.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void SFProximityHandoffClient.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters.interactionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A99762C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters.viewState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1A98404B0()
{
  if (*v0)
  {
    result = 0x7461745377656976;
  }

  else
  {
    result = 0x7463617265746E69;
  }

  *v0;
  return result;
}

uint64_t sub_1A98404FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7463617265746E69 && a2 == 0xED000044496E6F69;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461745377656976 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A98405E8(uint64_t a1)
{
  v2 = sub_1A984ABCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9840624(uint64_t a1)
{
  v2 = sub_1A984ABCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2DE8, &qword_1A9998BE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A984ABCC();
  sub_1A9977AA0();
  v12[15] = 0;
  sub_1A99762C0();
  sub_1A984AC20(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  sub_1A99776E0();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0) + 20));
    v12[13] = 1;
    sub_1A984AC68();
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_1A99762C0();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2E00, &qword_1A9998BE8);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A984ABCC();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_1A984AC20(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
  v19 = v31;
  v20 = v29;
  sub_1A99775F0();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_1A984ACBC();
  sub_1A99775F0();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_1A984AD10(v22, v27, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A984AB6C(v22, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);
}

id SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98548EC(a1);

  return v4;
}

id SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.init(coder:)(void *a1)
{
  v2 = sub_1A98548EC(a1);

  return v2;
}

uint64_t SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters.action.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1A9840D14()
{
  if (*v0)
  {
    result = 0x6E6F69746361;
  }

  else
  {
    result = 0x746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1A9840D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A9840E24(uint64_t a1)
{
  v2 = sub_1A984AD78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9840E60(uint64_t a1)
{
  v2 = sub_1A984AD78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2E10, &qword_1A9998BF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A984AD78();
  sub_1A9977AA0();
  v12[15] = 0;
  type metadata accessor for SFProximityHandoff.Content(0);
  sub_1A984AC20(&qword_1EB3B2E20, type metadata accessor for SFProximityHandoff.Content);
  sub_1A99776E0();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0) + 20));
    v12[13] = 1;
    sub_1A984ADCC();
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for SFProximityHandoff.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2E30, &qword_1A9998BF8);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A984AD78();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16 = v21;
  v17 = v14;
  v26 = 0;
  sub_1A984AC20(&qword_1EB3B2E38, type metadata accessor for SFProximityHandoff.Content);
  v18 = v22;
  sub_1A99775F0();
  sub_1A984C8B8(v23, v17, type metadata accessor for SFProximityHandoff.Content);
  v24 = 1;
  sub_1A984AE20();
  sub_1A99775F0();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v25;
  sub_1A984AD10(v17, v20, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A984AB6C(v17, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);
}

id _s7Sharing29SFProximityHandoffInvocationsO06NearbyA21InteractionViewUpdateC4nameAESS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SFXPCInvocation_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v8, sel_init);
}

id _s7Sharing29SFProximityHandoffInvocationsO06NearbyA21InteractionViewUpdateC4nameAESS_tcfc_0(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___SFXPCInvocation_name];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id _s7Sharing29SFProximityHandoffInvocationsO06NearbyA21InteractionViewUpdateCAEycfc_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1A98414C4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _s7Sharing29SFProximityHandoffInvocationsO06NearbyA21InteractionViewUpdateCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A984153C(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FF0, &qword_1A99995F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;

  v16 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v20 = v18;
    v21 = v19;
    v30 = v16;
    v31 = 0;
    v22 = v17;
    v23 = sub_1A9976060();
    (*(v12 + 16))(v15, a2, v11);
    v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v25 = swift_allocObject();
    (*(v12 + 32))(v25 + v24, v15, v11);
    aBlock[4] = sub_1A984DF1C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_770;
    v26 = _Block_copy(aBlock);
    v27 = v20;
    v28 = v21;

    [v32 invoke:v34 parametersData:v23 parametersAsyncSequenceContainer:v27 parametersBlocksContainer:v28 sync:0 completion:v26];
    _Block_release(v26);

    sub_1A97B43C4(v30, v22);
  }
}

void sub_1A9841794(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a1;
  v38 = a7;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v19, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);

  v20 = v40;
  v21 = sub_1A988E588(a3, a4, v19, a6);
  if (!v20)
  {
    v25 = v23;
    v26 = v24;
    v34 = v22;
    v35 = v21;
    v40 = 0;
    v27 = sub_1A9976060();
    (*(v12 + 16))(v15, v36, v11);
    v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v29 = swift_allocObject();
    (*(v12 + 32))(v29 + v28, v15, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_730;
    v30 = _Block_copy(aBlock);
    v31 = v25;
    v32 = v26;

    [v37 invoke:v38 parametersData:v27 parametersAsyncSequenceContainer:v31 parametersBlocksContainer:v32 sync:0 completion:v30];
    _Block_release(v30);

    sub_1A97B43C4(v35, v34);
  }
}

void sub_1A9841A4C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a1;
  v38 = a7;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v19, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);

  v20 = v40;
  v21 = sub_1A988ED64(a3, a4, v19, a6);
  if (!v20)
  {
    v25 = v23;
    v26 = v24;
    v34 = v22;
    v35 = v21;
    v40 = 0;
    v27 = sub_1A9976060();
    (*(v12 + 16))(v15, v36, v11);
    v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v29 = swift_allocObject();
    (*(v12 + 32))(v29 + v28, v15, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_718;
    v30 = _Block_copy(aBlock);
    v31 = v25;
    v32 = v26;

    [v37 invoke:v38 parametersData:v27 parametersAsyncSequenceContainer:v31 parametersBlocksContainer:v32 sync:0 completion:v30];
    _Block_release(v30);

    sub_1A97B43C4(v35, v34);
  }
}

void sub_1A9841D04(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v35 = a2;
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FE8, &qword_1A99995E0);
  v14 = *(v36 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v32 - v16;

  sub_1A97B40FC(a5, a6);

  v18 = sub_1A988F540(a3, a4, a5, a6, a7);
  if (!v8)
  {
    v22 = v20;
    v23 = v21;
    v33 = v18;
    v34 = 0;
    v24 = v19;
    v25 = sub_1A9976060();
    v26 = v36;
    (*(v14 + 16))(v17, v35, v36);
    v27 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v28 = swift_allocObject();
    (*(v14 + 32))(v28 + v27, v17, v26);
    aBlock[4] = sub_1A984DA68;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_706;
    v29 = _Block_copy(aBlock);
    v30 = v22;
    v31 = v23;

    [v37 invoke:v39 parametersData:v25 parametersAsyncSequenceContainer:v30 parametersBlocksContainer:v31 sync:0 completion:v29];
    _Block_release(v29);

    sub_1A97B43C4(v33, v24);
  }
}

void sub_1A9841F78(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;

  v16 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v20 = v18;
    v21 = v19;
    v30 = v16;
    v31 = 0;
    v22 = v17;
    v23 = sub_1A9976060();
    (*(v12 + 16))(v15, a2, v11);
    v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v25 = swift_allocObject();
    (*(v12 + 32))(v25 + v24, v15, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_668;
    v26 = _Block_copy(aBlock);
    v27 = v20;
    v28 = v21;

    [v32 invoke:v34 parametersData:v23 parametersAsyncSequenceContainer:v27 parametersBlocksContainer:v28 sync:0 completion:v26];
    _Block_release(v26);

    sub_1A97B43C4(v30, v22);
  }
}

void sub_1A98421D0(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;

  v16 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v20 = v18;
    v21 = v19;
    v30 = v16;
    v31 = 0;
    v22 = v17;
    v23 = sub_1A9976060();
    (*(v12 + 16))(v15, a2, v11);
    v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v25 = swift_allocObject();
    (*(v12 + 32))(v25 + v24, v15, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_618;
    v26 = _Block_copy(aBlock);
    v27 = v20;
    v28 = v21;

    [v32 invoke:v34 parametersData:v23 parametersAsyncSequenceContainer:v27 parametersBlocksContainer:v28 sync:0 completion:v26];
    _Block_release(v26);

    sub_1A97B43C4(v30, v22);
  }
}

void sub_1A9842428(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;

  v16 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v20 = v18;
    v21 = v19;
    v30 = v16;
    v31 = 0;
    v22 = v17;
    v23 = sub_1A9976060();
    (*(v12 + 16))(v15, a2, v11);
    v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v25 = swift_allocObject();
    (*(v12 + 32))(v25 + v24, v15, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_606;
    v26 = _Block_copy(aBlock);
    v27 = v20;
    v28 = v21;

    [v32 invoke:v34 parametersData:v23 parametersAsyncSequenceContainer:v27 parametersBlocksContainer:v28 sync:0 completion:v26];
    _Block_release(v26);

    sub_1A97B43C4(v30, v22);
  }
}

void sub_1A9842680(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a1;
  v38 = a7;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB8, &qword_1A9999588);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for SFAirDropSend.Request();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v19, type metadata accessor for SFAirDropSend.Request);

  v20 = v40;
  v21 = sub_1A988FCE4(a3, a4, v19, a6);
  if (!v20)
  {
    v25 = v23;
    v26 = v24;
    v34 = v22;
    v35 = v21;
    v40 = 0;
    v27 = sub_1A9976060();
    (*(v12 + 16))(v15, v36, v11);
    v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v29 = swift_allocObject();
    (*(v12 + 32))(v29 + v28, v15, v11);
    aBlock[4] = sub_1A984D6E4;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_594;
    v30 = _Block_copy(aBlock);
    v31 = v25;
    v32 = v26;

    [v37 invoke:v38 parametersData:v27 parametersAsyncSequenceContainer:v31 parametersBlocksContainer:v32 sync:0 completion:v30];
    _Block_release(v30);

    sub_1A97B43C4(v35, v34);
  }
}

void sub_1A9842938(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a1;
  v38 = a7;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v19, type metadata accessor for SFAirDrop.TransferIdentifier);

  v20 = v40;
  v21 = sub_1A98904C0(a3, a4, v19, a6);
  if (!v20)
  {
    v25 = v23;
    v26 = v24;
    v34 = v22;
    v35 = v21;
    v40 = 0;
    v27 = sub_1A9976060();
    (*(v12 + 16))(v15, v36, v11);
    v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v29 = swift_allocObject();
    (*(v12 + 32))(v29 + v28, v15, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_556;
    v30 = _Block_copy(aBlock);
    v31 = v25;
    v32 = v26;

    [v37 invoke:v38 parametersData:v27 parametersAsyncSequenceContainer:v31 parametersBlocksContainer:v32 sync:0 completion:v30];
    _Block_release(v30);

    sub_1A97B43C4(v35, v34);
  }
}

void sub_1A9842BF0(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FA8, &qword_1A9999558);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;

  v16 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v20 = v18;
    v21 = v19;
    v30 = v16;
    v31 = 0;
    v22 = v17;
    v23 = sub_1A9976060();
    (*(v12 + 16))(v15, a2, v11);
    v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v25 = swift_allocObject();
    (*(v12 + 32))(v25 + v24, v15, v11);
    aBlock[4] = sub_1A984D4D0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_532;
    v26 = _Block_copy(aBlock);
    v27 = v20;
    v28 = v21;

    [v32 invoke:v34 parametersData:v23 parametersAsyncSequenceContainer:v27 parametersBlocksContainer:v28 sync:0 completion:v26];
    _Block_release(v26);

    sub_1A97B43C4(v30, v22);
  }
}

void sub_1A9842E48(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a1;
  v38 = a7;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v19, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);

  v20 = v40;
  v21 = sub_1A9890C9C(a3, a4, v19, a6);
  if (!v20)
  {
    v25 = v23;
    v26 = v24;
    v34 = v22;
    v35 = v21;
    v40 = 0;
    v27 = sub_1A9976060();
    (*(v12 + 16))(v15, v36, v11);
    v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v29 = swift_allocObject();
    (*(v12 + 32))(v29 + v28, v15, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_544;
    v30 = _Block_copy(aBlock);
    v31 = v25;
    v32 = v26;

    [v37 invoke:v38 parametersData:v27 parametersAsyncSequenceContainer:v31 parametersBlocksContainer:v32 sync:0 completion:v30];
    _Block_release(v30);

    sub_1A97B43C4(v35, v34);
  }
}

void sub_1A9843100(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;

  v16 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v20 = v18;
    v21 = v19;
    v30 = v16;
    v31 = 0;
    v22 = v17;
    v23 = sub_1A9976060();
    (*(v12 + 16))(v15, a2, v11);
    v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v25 = swift_allocObject();
    (*(v12 + 32))(v25 + v24, v15, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_494;
    v26 = _Block_copy(aBlock);
    v27 = v20;
    v28 = v21;

    [v32 invoke:v34 parametersData:v23 parametersAsyncSequenceContainer:v27 parametersBlocksContainer:v28 sync:0 completion:v26];
    _Block_release(v26);

    sub_1A97B43C4(v30, v22);
  }
}

void sub_1A9843358(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a1;
  v38 = a7;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v19, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);

  v20 = v40;
  v21 = sub_1A9891478(a3, a4, v19, a6);
  if (!v20)
  {
    v25 = v23;
    v26 = v24;
    v34 = v22;
    v35 = v21;
    v40 = 0;
    v27 = sub_1A9976060();
    (*(v12 + 16))(v15, v36, v11);
    v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v29 = swift_allocObject();
    (*(v12 + 32))(v29 + v28, v15, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_482;
    v30 = _Block_copy(aBlock);
    v31 = v25;
    v32 = v26;

    [v37 invoke:v38 parametersData:v27 parametersAsyncSequenceContainer:v31 parametersBlocksContainer:v32 sync:0 completion:v30];
    _Block_release(v30);

    sub_1A97B43C4(v35, v34);
  }
}

void sub_1A9843610(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v35 = a2;
  v37 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v14 = *(v36 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v32 - v16;

  v18 = sub_1A9891C54(a3, a4, a5, a6, a7);
  if (!v8)
  {
    v22 = v20;
    v23 = v21;
    v33 = v18;
    v34 = 0;
    v24 = v19;
    v25 = sub_1A9976060();
    v26 = v36;
    (*(v14 + 16))(v17, v35, v36);
    v27 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v28 = swift_allocObject();
    (*(v14 + 32))(v28 + v27, v17, v26);
    aBlock[4] = sub_1A984D320;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_470;
    v29 = _Block_copy(aBlock);
    v30 = v22;
    v31 = v23;

    [v37 invoke:v39 parametersData:v25 parametersAsyncSequenceContainer:v30 parametersBlocksContainer:v31 sync:0 completion:v29];
    _Block_release(v29);

    sub_1A97B43C4(v33, v24);
  }
}

void sub_1A9843880(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a1;
  v38 = a7;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F88, &qword_1A9999518);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v19, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);

  v20 = v40;
  v21 = sub_1A9892408(a3, a4, v19, a6);
  if (!v20)
  {
    v25 = v23;
    v26 = v24;
    v34 = v22;
    v35 = v21;
    v40 = 0;
    v27 = sub_1A9976060();
    (*(v12 + 16))(v15, v36, v11);
    v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v29 = swift_allocObject();
    (*(v12 + 32))(v29 + v28, v15, v11);
    aBlock[4] = sub_1A984D214;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_458;
    v30 = _Block_copy(aBlock);
    v31 = v25;
    v32 = v26;

    [v37 invoke:v38 parametersData:v27 parametersAsyncSequenceContainer:v31 parametersBlocksContainer:v32 sync:0 completion:v30];
    _Block_release(v30);

    sub_1A97B43C4(v35, v34);
  }
}

void sub_1A9843B38(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F80, &qword_1A99994F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;

  v16 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v20 = v18;
    v21 = v19;
    v30 = v16;
    v31 = 0;
    v22 = v17;
    v23 = sub_1A9976060();
    (*(v12 + 16))(v15, a2, v11);
    v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v25 = swift_allocObject();
    (*(v12 + 32))(v25 + v24, v15, v11);
    aBlock[4] = sub_1A984CEA4;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_408;
    v26 = _Block_copy(aBlock);
    v27 = v20;
    v28 = v21;

    [v32 invoke:v34 parametersData:v23 parametersAsyncSequenceContainer:v27 parametersBlocksContainer:v28 sync:0 completion:v26];
    _Block_release(v26);

    sub_1A97B43C4(v30, v22);
  }
}

void sub_1A9843D90(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a1;
  v38 = a7;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v19, type metadata accessor for SFAirDrop.NearbySharingInteraction);

  v20 = v40;
  v21 = sub_1A9893418(a3, a4, v19, a6);
  if (!v20)
  {
    v25 = v23;
    v26 = v24;
    v34 = v22;
    v35 = v21;
    v40 = 0;
    v27 = sub_1A9976060();
    (*(v12 + 16))(v15, v36, v11);
    v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v29 = swift_allocObject();
    (*(v12 + 32))(v29 + v28, v15, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_370;
    v30 = _Block_copy(aBlock);
    v31 = v25;
    v32 = v26;

    [v37 invoke:v38 parametersData:v27 parametersAsyncSequenceContainer:v31 parametersBlocksContainer:v32 sync:0 completion:v30];
    _Block_release(v30);

    sub_1A97B43C4(v35, v34);
  }
}

void sub_1A9844048(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a1;
  v38 = a7;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F60, &qword_1A99994C8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v19, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);

  v20 = v40;
  v21 = sub_1A9893BF4(a3, a4, v19, a6);
  if (!v20)
  {
    v25 = v23;
    v26 = v24;
    v34 = v22;
    v35 = v21;
    v40 = 0;
    v27 = sub_1A9976060();
    (*(v12 + 16))(v15, v36, v11);
    v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v29 = swift_allocObject();
    (*(v12 + 32))(v29 + v28, v15, v11);
    aBlock[4] = sub_1A984CCFC;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_358;
    v30 = _Block_copy(aBlock);
    v31 = v25;
    v32 = v26;

    [v37 invoke:v38 parametersData:v27 parametersAsyncSequenceContainer:v31 parametersBlocksContainer:v32 sync:0 completion:v30];
    _Block_release(v30);

    sub_1A97B43C4(v35, v34);
  }
}

void sub_1A9844300(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a1;
  v38 = a7;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v19, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);

  v20 = v40;
  v21 = sub_1A98943D0(a3, a4, v19, a6);
  if (!v20)
  {
    v25 = v23;
    v26 = v24;
    v34 = v22;
    v35 = v21;
    v40 = 0;
    v27 = sub_1A9976060();
    (*(v12 + 16))(v15, v36, v11);
    v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v29 = swift_allocObject();
    (*(v12 + 32))(v29 + v28, v15, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_320;
    v30 = _Block_copy(aBlock);
    v31 = v25;
    v32 = v26;

    [v37 invoke:v38 parametersData:v27 parametersAsyncSequenceContainer:v31 parametersBlocksContainer:v32 sync:0 completion:v30];
    _Block_release(v30);

    sub_1A97B43C4(v35, v34);
  }
}

void sub_1A98445B8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a1;
  v38 = a7;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A984AD10(a5, v19, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);

  v20 = v40;
  v21 = sub_1A9893BF4(a3, a4, v19, a6);
  if (!v20)
  {
    v25 = v23;
    v26 = v24;
    v34 = v22;
    v35 = v21;
    v40 = 0;
    v27 = sub_1A9976060();
    (*(v12 + 16))(v15, v36, v11);
    v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v29 = swift_allocObject();
    (*(v12 + 32))(v29 + v28, v15, v11);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_308;
    v30 = _Block_copy(aBlock);
    v31 = v25;
    v32 = v26;

    [v37 invoke:v38 parametersData:v27 parametersAsyncSequenceContainer:v31 parametersBlocksContainer:v32 sync:0 completion:v30];
    _Block_release(v30);

    sub_1A97B43C4(v35, v34);
  }
}

void sub_1A9844870(void *a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = a2;
  v42 = a8;
  v43 = a1;
  v44 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v19 = sub_1A99762C0();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, a5);

  v24 = v46;
  v25 = sub_1A9892BE4(a3, a4, v22, a6);
  if (!v24)
  {
    v29 = v27;
    v30 = v28;
    v37 = a10;
    v39 = v26;
    v40 = v25;
    v46 = 0;
    v38 = sub_1A9976060();
    (*(v15 + 16))(v18, v41, v14);
    v31 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v32 = swift_allocObject();
    (*(v15 + 32))(v32 + v31, v18, v14);
    aBlock[4] = a9;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = v37;
    v33 = _Block_copy(aBlock);
    v34 = v29;
    v35 = v30;

    v36 = v38;
    [v43 invoke:v44 parametersData:v38 parametersAsyncSequenceContainer:v34 parametersBlocksContainer:v35 sync:0 completion:v33];
    _Block_release(v33);

    sub_1A97B43C4(v40, v39);
  }
}

void sub_1A9844B48(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v31 = a2;
  v32 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F58, &qword_1A99994A0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v30 - v15;

  v17 = sub_1A9894BAC(a3, a4, a5, a6);
  if (!v7)
  {
    v21 = v19;
    v22 = v20;
    v30[0] = v17;
    v30[1] = 0;
    v23 = v18;
    v24 = sub_1A9976060();
    (*(v13 + 16))(v16, v31, v12);
    v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v26 = swift_allocObject();
    (*(v13 + 32))(v26 + v25, v16, v12);
    aBlock[4] = sub_1A984C6D8;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_284;
    v27 = _Block_copy(aBlock);
    v28 = v21;
    v29 = v22;

    [v32 invoke:v34 parametersData:v24 parametersAsyncSequenceContainer:v28 parametersBlocksContainer:v29 sync:0 completion:v27];
    _Block_release(v27);

    sub_1A97B43C4(v30[0], v23);
  }
}

void sub_1A9844DA4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v37 = a3;
  v33 = a2;
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F50, &qword_1A9999490);
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v32 - v16;
  sub_1A97C13A4(a5, &v32 - v16, &qword_1EB3B17A8, &unk_1A9999470);

  v18 = v39;
  v19 = sub_1A9895338(v37, a4, v17, a6);
  if (!v18)
  {
    v23 = v21;
    v24 = v22;
    v37 = v19;
    v32 = v20;
    v39 = 0;
    v25 = sub_1A9976060();
    v26 = v34;
    (*(v10 + 16))(v13, v33, v34);
    v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v28 = swift_allocObject();
    (*(v10 + 32))(v28 + v27, v13, v26);
    aBlock[4] = sub_1A984C4F8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_246;
    v29 = _Block_copy(aBlock);
    v30 = v23;
    v31 = v24;

    [v35 invoke:v36 parametersData:v25 parametersAsyncSequenceContainer:v30 parametersBlocksContainer:v31 sync:0 completion:v29];
    _Block_release(v29);

    sub_1A97B43C4(v37, v32);
  }
}

void sub_1A9845068(void *a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a1;
  v39 = a7;
  v37 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F30, &qword_1A9999460);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = sub_1A99762C0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, a5);

  v21 = v41;
  v22 = sub_1A9892BE4(a3, a4, v19, a6);
  if (!v21)
  {
    v26 = v24;
    v27 = v25;
    v35 = v23;
    v36 = v22;
    v41 = 0;
    v28 = sub_1A9976060();
    (*(v12 + 16))(v15, v37, v11);
    v29 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v30 = swift_allocObject();
    (*(v12 + 32))(v30 + v29, v15, v11);
    aBlock[4] = sub_1A984C2F8;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_208;
    v31 = _Block_copy(aBlock);
    v32 = v26;
    v33 = v27;

    [v38 invoke:v39 parametersData:v28 parametersAsyncSequenceContainer:v32 parametersBlocksContainer:v33 sync:0 completion:v31];
    _Block_release(v31);

    sub_1A97B43C4(v36, v35);
  }
}

void sub_1A984534C(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F28, &qword_1A9999450);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;

  v16 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v20 = v18;
    v21 = v19;
    v30 = v16;
    v31 = 0;
    v22 = v17;
    v23 = sub_1A9976060();
    (*(v12 + 16))(v15, a2, v11);
    v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v25 = swift_allocObject();
    (*(v12 + 32))(v25 + v24, v15, v11);
    aBlock[4] = sub_1A984C17C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_170;
    v26 = _Block_copy(aBlock);
    v27 = v20;
    v28 = v21;

    [v32 invoke:v34 parametersData:v23 parametersAsyncSequenceContainer:v27 parametersBlocksContainer:v28 sync:0 completion:v26];
    _Block_release(v26);

    sub_1A97B43C4(v30, v22);
  }
}

void sub_1A98455A4(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F20, &qword_1A9999440);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;

  v16 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v20 = v18;
    v21 = v19;
    v30 = v16;
    v31 = 0;
    v22 = v17;
    v23 = sub_1A9976060();
    (*(v12 + 16))(v15, a2, v11);
    v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v25 = swift_allocObject();
    (*(v12 + 32))(v25 + v24, v15, v11);
    aBlock[4] = sub_1A984BFE8;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_132;
    v26 = _Block_copy(aBlock);
    v27 = v20;
    v28 = v21;

    [v32 invoke:v34 parametersData:v23 parametersAsyncSequenceContainer:v27 parametersBlocksContainer:v28 sync:0 completion:v26];
    _Block_release(v26);

    sub_1A97B43C4(v30, v22);
  }
}

void sub_1A98457FC(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v31 = a2;
  v32 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v30 - v15;

  v17 = sub_1A9895B10(a3, a4, a5, a6);
  if (!v7)
  {
    v21 = v19;
    v22 = v20;
    v30[0] = v17;
    v30[1] = 0;
    v23 = v18;
    v24 = sub_1A9976060();
    (*(v13 + 16))(v16, v31, v12);
    v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v26 = swift_allocObject();
    (*(v13 + 32))(v26 + v25, v16, v12);
    aBlock[4] = sub_1A984E094;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_94;
    v27 = _Block_copy(aBlock);
    v28 = v21;
    v29 = v22;

    [v32 invoke:v34 parametersData:v24 parametersAsyncSequenceContainer:v28 parametersBlocksContainer:v29 sync:0 completion:v27];
    _Block_release(v27);

    sub_1A97B43C4(v30[0], v23);
  }
}

void sub_1A9845A58(void *a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FD8, &qword_1A99995C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;

  v16 = sub_1A988DE10(a3, a4, a5);
  if (!v6)
  {
    v20 = v18;
    v21 = v19;
    v30 = v16;
    v31 = 0;
    v22 = v17;
    v23 = sub_1A9976060();
    (*(v12 + 16))(v15, a2, v11);
    v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v25 = swift_allocObject();
    (*(v12 + 32))(v25 + v24, v15, v11);
    aBlock[4] = sub_1A984D8A4;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_656;
    v26 = _Block_copy(aBlock);
    v27 = v20;
    v28 = v21;

    [v32 invoke:v34 parametersData:v23 parametersAsyncSequenceContainer:v27 parametersBlocksContainer:v28 sync:0 completion:v26];
    _Block_release(v26);

    sub_1A97B43C4(v30, v22);
  }
}

uint64_t sub_1A9845CB0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a4;
  v35 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB0, &qword_1A9999580);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FC0, &qword_1A9999590);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v32 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FC8, &qword_1A9999598);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v32 - v28;
  sub_1A989B514(a5, a1, a2, a3, v34, v23);
  swift_storeEnumTagMultiPayload();
  sub_1A97D8380(v23, v25, &qword_1EB3B2FC0, &qword_1A9999590);
  sub_1A97D8380(v25, v29, &qword_1EB3B2FC0, &qword_1A9999590);
  sub_1A97C13A4(v29, v20, &qword_1EB3B2FC0, &qword_1A9999590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v20;
    v30 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    swift_willThrowTypedImpl();
    sub_1A97B06FC(v29, &qword_1EB3B2FC8, &qword_1A9999598);
    v36 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB8, &qword_1A9999588);
    return sub_1A9976B90();
  }

  else
  {
    sub_1A97D8380(v20, v15, &qword_1EB3B2FB0, &qword_1A9999580);
    sub_1A97C13A4(v15, v33, &qword_1EB3B2FB0, &qword_1A9999580);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB8, &qword_1A9999588);
    sub_1A9976BA0();
    sub_1A97B06FC(v15, &qword_1EB3B2FB0, &qword_1A9999580);
    return sub_1A97B06FC(v29, &qword_1EB3B2FC8, &qword_1A9999598);
  }
}

uint64_t sub_1A9846010(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a4;
  v35 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F90, &qword_1A9999520);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v32 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F98, &qword_1A9999528);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v32 - v28;
  sub_1A989BA08(a5, a1, a2, a3, v34, v23);
  swift_storeEnumTagMultiPayload();
  sub_1A97D8380(v23, v25, &qword_1EB3B2F90, &qword_1A9999520);
  sub_1A97D8380(v25, v29, &qword_1EB3B2F90, &qword_1A9999520);
  sub_1A97C13A4(v29, v20, &qword_1EB3B2F90, &qword_1A9999520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v20;
    v30 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    swift_willThrowTypedImpl();
    sub_1A97B06FC(v29, &qword_1EB3B2F98, &qword_1A9999528);
    v36 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F88, &qword_1A9999518);
    return sub_1A9976B90();
  }

  else
  {
    sub_1A97D8380(v20, v15, &unk_1EB3B29B0, &qword_1A9990640);
    sub_1A97C13A4(v15, v33, &unk_1EB3B29B0, &qword_1A9990640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F88, &qword_1A9999518);
    sub_1A9976BA0();
    sub_1A97B06FC(v15, &unk_1EB3B29B0, &qword_1A9990640);
    return sub_1A97B06FC(v29, &qword_1EB3B2F98, &qword_1A9999528);
  }
}

uint64_t sub_1A9846370(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a4;
  v35 = a6;
  v10 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F68, &qword_1A99994D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v32 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F70, &qword_1A99994D8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v32 - v28;
  sub_1A989BED4(a5, a1, a2, a3, v34, v23);
  swift_storeEnumTagMultiPayload();
  sub_1A97D8380(v23, v25, &qword_1EB3B2F68, &qword_1A99994D0);
  sub_1A97D8380(v25, v29, &qword_1EB3B2F68, &qword_1A99994D0);
  sub_1A97C13A4(v29, v20, &qword_1EB3B2F68, &qword_1A99994D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v20;
    v30 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    swift_willThrowTypedImpl();
    sub_1A97B06FC(v29, &qword_1EB3B2F70, &qword_1A99994D8);
    v36 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F60, &qword_1A99994C8);
    return sub_1A9976B90();
  }

  else
  {
    sub_1A984C8B8(v20, v15, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
    sub_1A984AD10(v15, v33, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F60, &qword_1A99994C8);
    sub_1A9976BA0();
    sub_1A984AB6C(v15, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
    return sub_1A97B06FC(v29, &qword_1EB3B2F70, &qword_1A99994D8);
  }
}

uint64_t sub_1A98466D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A989C390(a5, a1, a2, a3, a4, &v6);
  LOBYTE(v6) = v6 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F58, &qword_1A99994A0);
  return sub_1A9976BA0();
}

uint64_t sub_1A98467B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1A97C1554(a1, a2);
  v10 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A989B0A4(a5, a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1A97D8688(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F50, &qword_1A9999490);
  return sub_1A9976BA0();
}

uint64_t sub_1A98468F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A989C818(a5, a1, a2, a3, a4, &v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F30, &qword_1A9999460);
  return sub_1A9976BA0();
}

uint64_t sub_1A98469C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A989CCA0(a5, a1, a2, a3, a4, &v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F28, &qword_1A9999450);
  return sub_1A9976BA0();
}

uint64_t sub_1A9846A98(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1A97C1554(a1, a2);
  v10 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A989D128(a5, a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1A97D8688(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F20, &qword_1A9999440);
  return sub_1A9976BA0();
}

uint64_t sub_1A9846BCC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A989A714(a5, a1, a2, a3, a4, &v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  return sub_1A9976BA0();
}

uint64_t sub_1A9846C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a8, uint64_t *a9)
{
  a7(&v11, a5, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
  return sub_1A9976BA0();
}

uint64_t sub_1A9846D64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FF0, &qword_1A99995F0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984DD9C;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_747;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_758;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v21);
  _Block_release(v20);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A98470F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984BD0C;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A981321C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_5;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984BE0C;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_82;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v21);
  _Block_release(v20);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A984748C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FE8, &qword_1A99995E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984D96C;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_683;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_694;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9847820(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB8, &qword_1A9999588);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984D5E8;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_571;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_582;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9847BB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FA8, &qword_1A9999558);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984D3D4;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_509;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_520;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9847F48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F88, &qword_1A9999518);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984D118;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_435;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_446;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A98482DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F80, &qword_1A99994F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984CDA8;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_385;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_396;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9848670(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F60, &qword_1A99994C8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984CC00;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_335;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_346;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9848A04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F58, &qword_1A99994A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984C5DC;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_261;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_272;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9848D98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F50, &qword_1A9999490);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984C3FC;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_223;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_234;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A984912C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F30, &qword_1A9999460);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984C1FC;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_185;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_196;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A98494C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F28, &qword_1A9999450);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984C080;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_147;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_158;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9849854(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F20, &qword_1A9999440);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984BE6C;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_109;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_120;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9849BE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FD8, &qword_1A99995C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984D7A8;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_633;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_644;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9849F7C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65 = a6;
  v66 = a5;
  v72 = a1;
  v69 = a9;
  v70 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  v74 = sub_1A9976230();
  v18 = *(v74 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v74);
  v62 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v64 = &v60 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v61 = &v60 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v60 - v26;
  sub_1A9976220();
  if (qword_1EB3AD0E0 != -1)
  {
    swift_once();
  }

  v68 = a11;
  v67 = a10;
  v28 = sub_1A99764A0();
  v29 = __swift_project_value_buffer(v28, qword_1EB3AD0F0);

  v71 = v29;
  v30 = sub_1A9976480();
  v31 = sub_1A9976F90();

  v32 = os_log_type_enabled(v30, v31);
  v73 = a2;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v60 = v18;
    v63 = v27;
    v34 = v13;
    v35 = a4;
    v36 = v33;
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_1A97AF148(v72, a2, aBlock);
    _os_log_impl(&dword_1A9662000, v30, v31, "asyncXPC [%{public}s] START -- Client", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x1AC58D2C0](v37, -1, -1);
    v38 = v36;
    a4 = v35;
    v13 = v34;
    v27 = v63;
    v18 = v60;
    MEMORY[0x1AC58D2C0](v38, -1, -1);
  }

  (*(v14 + 16))(v17, a4, v13);
  v39 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v40 = swift_allocObject();
  (*(v14 + 32))(v40 + v39, v17, v13);
  aBlock[4] = v67;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A984AA04;
  aBlock[3] = v68;
  v41 = _Block_copy(aBlock);

  v42 = [v70 remoteObjectProxyWithErrorHandler_];
  _Block_release(v41);
  sub_1A99771B0();
  swift_unknownObjectRelease();
  v43 = sub_1A97B5EF8(v77, 0, 0, 0xD000000000000051, 0x80000001A99E51F0, 217);
  v44 = v74;
  v45 = v43;
  aBlock[0] = v43;
  v66(aBlock, a4);
  v46 = v61;
  (*(v18 + 16))(v61, v27, v44);
  v47 = v73;

  disableAirDropTLS();
  disableAirDropTLS();
  v48 = sub_1A9976480();
  v49 = sub_1A9976F90();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v70 = v45;
    v51 = v18;
    v52 = v50;
    v53 = swift_slowAlloc();
    v75 = v53;
    *v52 = 136446722;
    *(v52 + 4) = sub_1A97AF148(v72, v47, &v75);
    *(v52 + 12) = 1040;
    *(v52 + 14) = 3;
    *(v52 + 18) = 2048;
    v54 = v62;
    sub_1A9976220();
    sub_1A99760D0();
    v56 = v55;
    v57 = *(v51 + 8);
    v57(v54, v44);
    v57(v46, v44);
    *(v52 + 20) = v56;
    _os_log_impl(&dword_1A9662000, v48, v49, "asyncXPC [%{public}s] END -- {duration: %.*f}", v52, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    MEMORY[0x1AC58D2C0](v53, -1, -1);
    MEMORY[0x1AC58D2C0](v52, -1, -1);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    return (v57)(v27, v44);
  }

  else
  {

    v59 = *(v18 + 8);
    v59(v46, v44);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    return (v59)(v27, v44);
  }
}

uint64_t sub_1A984A9A8(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1A9976B90();
}

void sub_1A984AA04(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1A984AA90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A97B2988;

  return sub_1A9838CB0(a1, v1);
}

uint64_t sub_1A984AB6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A984ABCC()
{
  result = qword_1EB3B2DF0;
  if (!qword_1EB3B2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2DF0);
  }

  return result;
}

uint64_t sub_1A984AC20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A984AC68()
{
  result = qword_1EB3B2DF8;
  if (!qword_1EB3B2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2DF8);
  }

  return result;
}

unint64_t sub_1A984ACBC()
{
  result = qword_1EB3B2E08;
  if (!qword_1EB3B2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2E08);
  }

  return result;
}

uint64_t sub_1A984AD10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A984AD78()
{
  result = qword_1EB3B2E18;
  if (!qword_1EB3B2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2E18);
  }

  return result;
}

unint64_t sub_1A984ADCC()
{
  result = qword_1EB3B2E28;
  if (!qword_1EB3B2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2E28);
  }

  return result;
}

unint64_t sub_1A984AE20()
{
  result = qword_1EB3B2E40;
  if (!qword_1EB3B2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2E40);
  }

  return result;
}

unint64_t sub_1A984AF04()
{
  result = qword_1EB3AC760;
  if (!qword_1EB3AC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC760);
  }

  return result;
}

unint64_t sub_1A984AF58()
{
  result = qword_1EB3AC768;
  if (!qword_1EB3AC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC768);
  }

  return result;
}

unint64_t sub_1A984B03C()
{
  result = qword_1EB3AC660;
  if (!qword_1EB3AC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC660);
  }

  return result;
}

unint64_t sub_1A984B090()
{
  result = qword_1EB3ACB70;
  if (!qword_1EB3ACB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ACB70);
  }

  return result;
}

uint64_t dispatch thunk of SFProximityHandoffClient.proximityHandoffInteractions()(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A97B2988;

  return v8(a1);
}

uint64_t dispatch thunk of SFProximityHandoffClient.nearbySharingInteractionView(update:viewState:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A97B2638;

  return v10(a1, a2);
}

uint64_t dispatch thunk of SFProximityHandoffClient.performHandoffContent(action:on:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A97B2988;

  return v10(a1, a2);
}

uint64_t sub_1A984B53C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A984B58C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A984B5E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1A984B5F8(void *result, int a2)
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

uint64_t sub_1A984B710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A984B7FC()
{
  result = qword_1EB3B2EA0;
  if (!qword_1EB3B2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EA0);
  }

  return result;
}

unint64_t sub_1A984B854()
{
  result = qword_1EB3B2EA8;
  if (!qword_1EB3B2EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EA8);
  }

  return result;
}

unint64_t sub_1A984B8AC()
{
  result = qword_1EB3B2EB0;
  if (!qword_1EB3B2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EB0);
  }

  return result;
}

unint64_t sub_1A984B904()
{
  result = qword_1EB3B2EB8;
  if (!qword_1EB3B2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EB8);
  }

  return result;
}

unint64_t sub_1A984B95C()
{
  result = qword_1EB3B2EC0;
  if (!qword_1EB3B2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EC0);
  }

  return result;
}

unint64_t sub_1A984B9B4()
{
  result = qword_1EB3B2EC8;
  if (!qword_1EB3B2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EC8);
  }

  return result;
}

unint64_t sub_1A984BA0C()
{
  result = qword_1EB3B2ED0;
  if (!qword_1EB3B2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2ED0);
  }

  return result;
}

unint64_t sub_1A984BA64()
{
  result = qword_1EB3B2ED8;
  if (!qword_1EB3B2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2ED8);
  }

  return result;
}

unint64_t sub_1A984BABC()
{
  result = qword_1EB3B2EE0;
  if (!qword_1EB3B2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EE0);
  }

  return result;
}

unint64_t sub_1A984BB14()
{
  result = qword_1EB3B2EE8;
  if (!qword_1EB3B2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EE8);
  }

  return result;
}

unint64_t sub_1A984BB6C()
{
  result = qword_1EB3B2EF0;
  if (!qword_1EB3B2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EF0);
  }

  return result;
}

unint64_t sub_1A984BBC4()
{
  result = qword_1EB3B2EF8;
  if (!qword_1EB3B2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EF8);
  }

  return result;
}

unint64_t sub_1A984BC1C()
{
  result = qword_1EB3B2F00;
  if (!qword_1EB3B2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2F00);
  }

  return result;
}

unint64_t sub_1A984BC74()
{
  result = qword_1EB3B2F08;
  if (!qword_1EB3B2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2F08);
  }

  return result;
}

uint64_t sub_1A984BD0C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F10, &unk_1A9999410, &unk_1F1D2A238, sub_1A984BE14, &block_descriptor_88_0);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A984BE6C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F20, &qword_1A9999440) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F20, &qword_1A9999440, &unk_1F1D2A3F0, sub_1A984BF54, &block_descriptor_126);
}

uint64_t sub_1A984C080()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F28, &qword_1A9999450) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F28, &qword_1A9999450, &unk_1F1D2A5A8, sub_1A984C168, &block_descriptor_164);
}

uint64_t sub_1A984C1FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F30, &qword_1A9999460) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F30, &qword_1A9999460, &unk_1F1D2A760, sub_1A984C2E4, &block_descriptor_202);
}

void sub_1A984C320(void **a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A9844DA4(*a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1A984C3FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F50, &qword_1A9999490) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F50, &qword_1A9999490, &unk_1F1D2A8F0, sub_1A984C4E4, &block_descriptor_240);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1A984C5DC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F58, &qword_1A99994A0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F58, &qword_1A99994A0, &unk_1F1D2AAA8, sub_1A984C6C4, &block_descriptor_278);
}

void sub_1A984C73C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_1A99762C0() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A9844870(*a1, a2, *(v5 + 16), *(v5 + 24), v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), a3, a4, a5);
}

uint64_t sub_1A984C8B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A984C960(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void, uint64_t, void, void, unint64_t, void, void))
{
  v8 = *(a3(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a4(*a1, a2, *(v4 + 16), *(v4 + 24), v4 + v9, *(v4 + v10), *(v4 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_298Tm()
{
  v1 = (type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 24);

  v5 = v0 + v2;
  v6 = sub_1A99762C0();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = sub_1A9976230();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t sub_1A984CC00()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F60, &qword_1A99994C8) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F60, &qword_1A99994C8, &unk_1F1D2ADC8, sub_1A984CCE8, &block_descriptor_352);
}

uint64_t sub_1A984CDA8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F80, &qword_1A99994F8) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F80, &qword_1A99994F8, &unk_1F1D2AFF8, sub_1A984CE90, &block_descriptor_402);
}

uint64_t objectdestroy_172Tm()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_1A984D118()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F88, &qword_1A9999518) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F88, &qword_1A9999518, &unk_1F1D2B228, sub_1A984D200, &block_descriptor_452);
}

uint64_t sub_1A984D23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a6, a7) - 8);
  v15 = v8 + ((*(v14 + 80) + 16) & ~*(v14 + 80));

  return a8(a1, a2, a3, a4, a5, v15);
}

uint64_t sub_1A984D3D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FA8, &qword_1A9999558) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2FA8, &qword_1A9999558, &unk_1F1D2B548, sub_1A984D4BC, &block_descriptor_526);
}

uint64_t sub_1A984D578(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1A984D5E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB8, &qword_1A9999588) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2FB8, &qword_1A9999588, &unk_1F1D2B7F0, sub_1A984D6D0, &block_descriptor_588);
}

uint64_t sub_1A984D7A8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FD8, &qword_1A99995C0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2FD8, &qword_1A99995C0, &unk_1F1D2BA98, sub_1A984D890, &block_descriptor_650);
}

uint64_t sub_1A984D96C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FE8, &qword_1A99995E0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2FE8, &qword_1A99995E0, &unk_1F1D2BCC8, sub_1A984DA54, &block_descriptor_700);
}

uint64_t objectdestroy_546Tm(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 24);

  v6 = sub_1A99762C0();
  (*(*(v6 - 8) + 8))(v1 + v3, v6);
  v7 = *(v1 + v4);

  return swift_deallocObject();
}

uint64_t objectdestroy_96Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_68Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + 24);

  (*(v4 + 8))(v2 + v5, v3);
  v8 = *(v2 + v6 + 8);

  return swift_deallocObject();
}

uint64_t sub_1A984DD9C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FF0, &qword_1A99995F0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2FF0, &qword_1A99995F0, &unk_1F1D2BF70, sub_1A984DE84, &block_descriptor_764);
}

uint64_t objectdestroy_84Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t Deque<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a4;
  v7 = *(a3 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](a1);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A99770A0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v23 - v13;
  sub_1A982DD1C(sub_1A982B85C, 0, a2, &type metadata for _DequeBufferHeader, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v22);
  v23[0] = a1;
  MEMORY[0x1AC58A630](v24);
  v24 = Deque.makeIterator()(a2, a3);
  v25 = v15;
  v26 = v16;
  v17 = type metadata accessor for Deque.Iterator();
  Deque.Iterator.next()(v17, v14);
  v18 = v7[6];
  if (v18(v14, 1, a3) != 1)
  {
    v20 = v7 + 4;
    v19 = v7[4];
    do
    {
      v19(v10, v14, a3);
      sub_1A9976740();
      (*(v20 - 3))(v10, a3);
      Deque.Iterator.next()(v17, v14);
    }

    while (v18(v14, 1, a3) != 1);
  }
}

uint64_t Deque<A>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A9977980();
  Deque<A>.hash(into:)(v7, a1, a2, a3);
  return sub_1A99779B0();
}

uint64_t sub_1A984E4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1A9977980();
  Deque<A>.hash(into:)(v7, *v3, *(a2 + 16), v5);
  return sub_1A99779B0();
}

uint64_t Deque._storage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1A984E5C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static Deque<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1E69E73E0];
  v7 = MEMORY[0x1E69E6530];
  v8 = MEMORY[0x1E69E7410];
  sub_1A982DD1C(sub_1A982B85C, 0, a1, &type metadata for _DequeBufferHeader, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v12);
  sub_1A982DD1C(sub_1A982B85C, 0, a2, &type metadata for _DequeBufferHeader, a3, v6, v7, v8, v13);
  if (!v14 || (v9 = nullsub_1(a1, &type metadata for _DequeBufferHeader, a3), v9 == nullsub_1(a2, &type metadata for _DequeBufferHeader, a3)))
  {
    v10 = 1;
  }

  else
  {
    type metadata accessor for Deque();
    swift_getWitnessTable();
    v10 = sub_1A9976A20();
  }

  return v10 & 1;
}

uint64_t Deque.init(arrayLiteral:)(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v3 = sub_1A9976B60();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1A98348B4(&v7, a2, v3, WitnessTable);

  return v5;
}

uint64_t sub_1A984E83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9 = a1;
  v4 = *(a2 + 16);
  v5 = sub_1A9976B60();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1A98348B4(&v9, v4, v5, WitnessTable);

  *a3 = v7;
  return result;
}

uint64_t Range<>._count.getter(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Sharing::_DequeSlot __swiftcall _DequeSlot.orIfZero(_:)(Sharing::_DequeSlot result)
{
  if (v1.position > 0)
  {
    return v1;
  }

  return result;
}

uint64_t _DequeSlot.description.getter()
{
  v0 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v0);

  return 64;
}

uint64_t sub_1A984E9A0()
{
  v3 = *v0;
  v1 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v1);

  return 64;
}

unint64_t sub_1A984EA20()
{
  result = qword_1EB3B2FF8;
  if (!qword_1EB3B2FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2FF8);
  }

  return result;
}

uint64_t sub_1A984EAD4(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a7;
  v69 = a5;
  v68 = a3;
  v83 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v63 - v13;
  v14 = sub_1A9977460();
  v73 = *(v14 - 8);
  v74 = v14;
  v15 = *(v73 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v65 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v75 = (&v63 - v21);
  v22 = sub_1A99762C0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v64 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v63 - v26;
  v77 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v28 = objc_allocWithZone(v77);

  sub_1A99762B0();
  v29 = *(v23 + 16);
  v29(&v28[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v27, v22);
  v30 = &v28[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v30 = v83;
  *(v30 + 1) = a2;
  v78 = a2;

  *&v28[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v28[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v76 = a4;
  if (a4)
  {
    v31 = sub_1A9976C00();
    (*(*(v31 - 8) + 56))(v75, 1, 1, v31);
    v32 = v64;
    v29(v64, v27, v22);
    v33 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v34 = (v24 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    v36 = v76;
    *(v35 + 4) = v76;
    (*(v23 + 32))(&v35[v33], v32, v22);
    v37 = &v35[v34];
    v38 = v78;
    *v37 = v83;
    *(v37 + 1) = v38;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v75, &unk_1A9999B40, v35);

    (*(v23 + 8))(v27, v22);
  }

  else
  {
    (*(v23 + 8))(v27, v22);

    v36 = v76;
  }

  v82.receiver = v28;
  v82.super_class = v77;
  v39 = objc_msgSendSuper2(&v82, sel_init);

  v75 = type metadata accessor for _SFXPCBlockContainer();
  objc_allocWithZone(v75);

  v83 = sub_1A97BE9E8(v83, v78, v36);

  v40 = sub_1A9975E80();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  sub_1A9975E70();
  v43 = v72;
  sub_1A9977450();
  v44 = v73;
  v45 = v74;
  v46 = *(v73 + 48);
  result = v46(v43, 1, v74);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v48 = *(v44 + 32);
  v49 = v70;
  v48(v70, v43, v45);
  v81 = v77;
  v80[0] = v39;
  v78 = v39;
  v50 = sub_1A9975E60();
  sub_1A97DCC4C(v80, v49);
  v50(v79, 0);
  v51 = v71;
  sub_1A9977450();
  result = v46(v51, 1, v45);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v52 = v65;
  v48(v65, v51, v45);
  v81 = v75;
  v80[0] = v83;
  v53 = v83;
  v54 = sub_1A9975E60();
  sub_1A97DCC4C(v80, v52);
  v54(v79, 0);
  v55 = v68;
  v56 = v69;
  v57 = v67;
  v58 = sub_1A9975E50();
  (*(*(v56 - 8) + 8))(v55, v56);

  if (v57)
  {
  }

  else
  {

    v59 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v60 = v78;
    swift_beginAccess();
    if (!*(*&v60[v59] + 16))
    {
    }

    v61 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v53[v61] + 16))
    {
      v62 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v53[v62] + 16))
      {
      }
    }
  }

  return v58;
}

uint64_t sub_1A984F298@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9850590(sub_1A9855390, v8, a4);

  sub_1A97D8688(a1, a2);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A984F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v11;
  v9[10] = v8;
  v9[7] = a7;
  v9[8] = a8;
  v9[5] = a5;
  v9[6] = a6;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A984F39C, 0, 0);
}

uint64_t sub_1A984F39C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v10 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v2;
  *(v3 + 40) = v10;
  *(v3 + 56) = v1;
  *(v3 + 64) = v4;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_1A984F4BC;
  v7 = *(v0 + 72);
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A9855510, v3, v7);
}

uint64_t sub_1A984F4BC()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A984F5F8, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1A984F5F8()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1A984F65C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

void sub_1A984F72C(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v8 = v7;
  v98 = a4;
  v99 = a3;
  v93 = a7;
  v118 = *MEMORY[0x1E69E9840];
  v92 = *(a6 - 8);
  v12 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v15;
  v97 = sub_1A99770A0();
  v96 = *(v97 - 8);
  v16 = *(v96 + 64);
  v17 = MEMORY[0x1EEE9AC00](v97);
  v19 = (&v90 - v18);
  v105 = a5;
  v100 = *(a5 - 8);
  v20 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A9976230();
  v108 = *(v22 - 8);
  v23 = *(v108 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v106 = (&v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v24);
  v103 = &v90 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v91 = &v90 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v90 - v30;
  v110 = "syncXPC";
  v111 = 7;
  v112 = 2;
  v113 = 2;
  v114.opaque[0] = 0;
  v114.opaque[1] = 0;
  LODWORD(v117[0]) = 2;
  SF_os_activity.init(_:dso:options:)(&dword_1A9662000, "syncXPC", 2, v117, aBlock);
  if (aBlock[0])
  {
    os_activity_scope_enter(aBlock[0], &v114);
    swift_unknownObjectRelease();
  }

  v95 = v14;
  sub_1A9976220();
  if (qword_1EB3AD0E0 != -1)
  {
    swift_once();
  }

  v32 = sub_1A99764A0();
  v33 = __swift_project_value_buffer(v32, qword_1EB3AD0F0);

  v34 = sub_1A9976480();
  v35 = sub_1A9976F90();

  v36 = os_log_type_enabled(v34, v35);
  v109 = v22;
  v107 = v31;
  v104 = a1;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_1A97AF148(a1, a2, aBlock);
    _os_log_impl(&dword_1A9662000, v34, v35, "syncXPC [%{public}s] START -- Client", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x1AC58D2C0](v38, -1, -1);
    MEMORY[0x1AC58D2C0](v37, -1, -1);
  }

  v39 = swift_allocObject();
  v39[2].isa = 0;
  p_isa = &v39[2].isa;
  if ([v8 respondsToSelector_])
  {
    aBlock[4] = sub_1A985537C;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989D634;
    aBlock[3] = &block_descriptor_28;
    v41 = _Block_copy(aBlock);
    swift_retain_n();
    v42 = [v8 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v41);
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v117, 0, sizeof(v117));
  }

  v43 = v19;
  swift_beginAccess();
  v44 = *p_isa;
  if (*p_isa)
  {
    v116 = *p_isa;
    v45 = v44;
    v46 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v47 = sub_1A99777A0();
    if (v47)
    {
      v48 = v47;
      v49 = a2;
    }

    else
    {
      v49 = a2;
      v48 = swift_allocError();
      *v54 = v44;
    }

    v52 = v109;
    v53 = v107;
    swift_willThrow();

LABEL_17:
    sub_1A97B06FC(v117, &qword_1EB3B0BA0, &unk_1A99923D0);

    goto LABEL_18;
  }

  v49 = a2;
  v50 = v102;
  v51 = v101;
  tryCast<A>(_:as:description:file:line:)(v117, v105, 0, 0, 0xD000000000000051, 0x80000001A99E51F0, 194, v105, v102);
  v48 = v51;
  if (!v51)
  {
    v101 = v33;
    v99(v50);
    v99 = v43;
    v69 = *p_isa;
    if (!*p_isa)
    {
      Optional.tryUnwrap(_:file:line:)(0x746C75736572, 0xE600000000000000, 0xD000000000000051, 0x80000001A99E51F0, 197, v97, v95);
      v73 = v107;
      v75 = v109;
      v76 = v91;
      (*(v108 + 16))(v91, v107, v109);

      disableAirDropTLS();
      disableAirDropTLS();
      v77 = v73;
      v78 = sub_1A9976480();
      v79 = sub_1A9976F90();

      if (os_log_type_enabled(v78, v79))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v116 = v82;
        *v81 = 136446722;
        *(v81 + 4) = sub_1A97AF148(v104, a2, &v116);
        *(v81 + 12) = 1040;
        *(v81 + 14) = 3;
        *(v81 + 18) = 2048;
        v83 = v103;
        sub_1A9976220();
        sub_1A99760D0();
        v85 = v84;
        v106 = 0;
        v86 = *(v108 + 8);
        v87 = v83;
        v88 = v109;
        v86(v87, v109);
        v86(v76, v88);
        *(v81 + 20) = v85;
        _os_log_impl(&dword_1A9662000, v78, v79, "syncXPC [%{public}s] END -- Client {duration: %.*f}", v81, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_0Tm(v82);
        MEMORY[0x1AC58D2C0](v82, -1, -1);
        MEMORY[0x1AC58D2C0](v81, -1, -1);

        (*(v96 + 8))(v99, v97);
        (*(v100 + 8))(v102, v105);
        sub_1A97B06FC(v117, &qword_1EB3B0BA0, &unk_1A99923D0);
        v86(v107, v88);
      }

      else
      {

        v89 = *(v108 + 8);
        v89(v76, v75);
        (*(v96 + 8))(v99, v97);
        (*(v100 + 8))(v102, v105);
        sub_1A97B06FC(v117, &qword_1EB3B0BA0, &unk_1A99923D0);
        v89(v77, v75);
      }

      (*(v92 + 32))(v93, v95, v94);

      os_activity_scope_leave(&v114);
      goto LABEL_22;
    }

    v116 = *p_isa;
    v70 = v69;
    v71 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v72 = sub_1A99777A0();
    v53 = v107;
    if (v72)
    {
      v48 = v72;
    }

    else
    {
      v48 = swift_allocError();
      *v74 = v69;
    }

    v52 = v109;
    swift_willThrow();

    (*(v96 + 8))(v99, v97);
    (*(v100 + 8))(v102, v105);
    goto LABEL_17;
  }

  sub_1A97B06FC(v117, &qword_1EB3B0BA0, &unk_1A99923D0);

  v52 = v109;
  v53 = v107;
LABEL_18:
  v55 = v106;
  (*(v108 + 16))(v106, v53, v52);

  v56 = v48;
  disableAirDropTLS();
  disableAirDropTLS();
  v57 = sub_1A9976480();
  v58 = sub_1A9976F70();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v105 = v60;
    v106 = swift_slowAlloc();
    *&v117[0] = v106;
    *v59 = 136446978;
    *(v59 + 4) = sub_1A97AF148(v104, v49, v117);
    *(v59 + 12) = 2114;
    v61 = sub_1A9975F10();
    *(v59 + 14) = v61;
    *v60 = v61;
    *(v59 + 22) = 1040;
    *(v59 + 24) = 3;
    *(v59 + 28) = 2048;
    v62 = v103;
    sub_1A9976220();
    sub_1A99760D0();
    v64 = v63;
    v65 = *(v108 + 8);
    v65(v62, v109);
    v65(v55, v109);
    *(v59 + 30) = v64;
    _os_log_impl(&dword_1A9662000, v57, v58, "syncXPC [%{public}s] FAIL -- Client {error: %{public}@, duration: %.*f}", v59, 0x26u);
    v66 = v105;
    sub_1A97B06FC(v105, &unk_1EB3B2A50, &unk_1A9999420);
    MEMORY[0x1AC58D2C0](v66, -1, -1);
    v67 = v106;
    __swift_destroy_boxed_opaque_existential_0Tm(v106);
    v52 = v109;
    MEMORY[0x1AC58D2C0](v67, -1, -1);
    MEMORY[0x1AC58D2C0](v59, -1, -1);
  }

  else
  {

    v65 = *(v108 + 8);
    v65(v55, v52);
  }

  swift_willThrow();
  v65(v107, v52);
  os_activity_scope_leave(&v114);
LABEL_22:
  v68 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A9850590@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1A9977A20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14[-v11];
  a1(v7);
  swift_storeEnumTagMultiPayload();
  return (*(v9 + 32))(a3, v12, v8);
}

uint64_t SFXPCConnection.__allocating_init(machServiceName:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v5 = sub_1A99767E0();

  v6 = [v4 initWithMachServiceName:v5 options:0];

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  v8 = v6;
  [v8 sf:a3 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v8 setRemoteObjectInterface_];

  return v7;
}

uint64_t SFXPCConnection.asyncInvoke<A>(_:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[8] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[13] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v6[14] = v8;
  v6[15] = *(v8 + 64);
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9850990, 0, 0);
}

uint64_t sub_1A9850990()
{
  v1 = [objc_allocWithZone(*(v0 + 80)) init];
  *(v0 + 136) = v1;
  v25 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v27 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v27 = 0xD00000000000001BLL;
  }

  *(v0 + 144) = v2;
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v21 = v4;
  v22 = v2;
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  swift_beginAccess();
  v11 = *(v8 + 24);
  *(v0 + 152) = v11;
  swift_beginAccess();
  v23 = *(v8 + 16);
  *(v0 + 160) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16B0, &qword_1A9992880);
  (*(v5 + 16))(v4, v10, v6);
  v12 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v13 = (v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v0 + 168) = v14;
  *(v14 + 2) = v9;
  *(v14 + 3) = v7;
  *(v14 + 4) = v27;
  *(v14 + 5) = v22;
  (*(v5 + 32))(&v14[v12], v21, v6);
  *&v14[v13] = v11;
  *&v14[(v13 + 15) & 0xFFFFFFFFFFFFFFF8] = v25;
  swift_retain_n();

  v23;

  v15 = v25;
  v16 = swift_task_alloc();
  *(v0 + 176) = v16;
  v17 = sub_1A985487C();
  swift_getAssociatedTypeWitness();
  *v16 = v0;
  v16[1] = sub_1A9850C34;
  v19 = *(v0 + 64);

  return sub_1A984F364(v19, v27, v22, v18, sub_1A9854794, v14, v17, v24);
}

uint64_t sub_1A9850C34()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = v2[21];
  v6 = v2[20];
  v7 = v2[18];

  if (v0)
  {
    v8 = sub_1A9850E14;
  }

  else
  {
    v8 = sub_1A9850D9C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A9850D9C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A9850E14()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);

  v3 = *(v0 + 8);
  v4 = *(v0 + 184);

  return v3();
}

id SFXPCInvocation.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___SFXPCInvocation_name];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SFXPCInvocation.init(coder:)(void *a1)
{
  v2 = sub_1A98548EC(a1);

  return v2;
}

void sub_1A9850F00(void *a1)
{
  if (*(v1 + OBJC_IVAR___SFXPCInvocation_name + 8))
  {
    v3 = *(v1 + OBJC_IVAR___SFXPCInvocation_name);
    v4 = sub_1A99767E0();
    v5 = sub_1A99767E0();
    [a1 encodeObject:v4 forKey:v5];
  }
}

uint64_t sub_1A9850F9C()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3AD0F0);
  v1 = __swift_project_value_buffer(v0, qword_1EB3AD0F0);
  if (qword_1ED717D40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED717D48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1A9851074(uint64_t a1)
{
  v2 = sub_1A98549F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98510B0(uint64_t a1)
{
  v2 = sub_1A98549F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9851184(uint64_t a1)
{
  v2 = sub_1A9854A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98511C0(uint64_t a1)
{
  v2 = sub_1A9854A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9851240(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1A9977AA0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1A98513CC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1A9977AA0();
  return (*(v9 + 8))(v12, v8);
}

id SFXPCConnection.connection.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SFXPCConnection.containerRegistry.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t SFXPCConnection.containerRegistry.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t SFXPCConnection.__allocating_init(_:queue:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  v5 = a1;
  [v5 sf:a2 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v5 setRemoteObjectInterface_];

  return v4;
}

uint64_t SFXPCConnection.init(_:queue:)(void *a1, void *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  v4 = a1;
  [v4 sf:a2 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v4 setRemoteObjectInterface_];

  return v2;
}

uint64_t *SFXPCConnection.__allocating_init(_:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_1A9854A9C(a1, a2, a3);

  return v6;
}

uint64_t *SFXPCConnection.init(_:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1A9854A9C(a1, a2, a3);

  return v4;
}

uint64_t sub_1A98517D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v6 = sub_1A99767E0();
    v7 = [v5 initWithMachServiceName:v6 options:0];

    swift_beginAccess();
    v8 = *(v4 + 16);
    *(v4 + 16) = v7;
    v9 = v7;

    [v9 sf:a2 setQueue:?];
    if (qword_1ED717DF0 != -1)
    {
      swift_once();
    }

    [v9 setRemoteObjectInterface_];

    [*(v4 + 16) activate];
  }

  return result;
}

uint64_t SFXPCConnection.__allocating_init(serviceName:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v5 = sub_1A99767E0();

  v6 = [v4 initWithServiceName_];

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  v8 = v6;
  [v8 sf:a3 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v8 setRemoteObjectInterface_];

  return v7;
}

uint64_t SFXPCConnection.__allocating_init(listenerEndpoint:queue:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  v6 = v4;
  [v6 sf:a2 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v6 setRemoteObjectInterface_];

  return v5;
}

id SFXPCInvocation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1A9851B2C(void **a1, void *a2, void *a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a7;
  v48 = a5;
  v49 = a3;
  v46 = a2;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v13 = sub_1A9976BB0();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v42 - v19;
  v21 = *a1;
  (*(v22 + 16))(&v42 - v19, v48, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v24 = AssociatedConformanceWitness;
  v25 = v51;
  v27 = sub_1A984EAD4(v49, a4, v20, a6, AssociatedTypeWitness, v26, v24);
  if (!v25)
  {
    v31 = v29;
    v32 = v30;
    v48 = v28;
    v49 = v27;
    v51 = 0;
    v43 = sub_1A9976060();
    v34 = v44;
    v33 = v45;
    (*(v44 + 16))(v16, v46, v45);
    v35 = *(v34 + 80);
    v46 = v21;
    v36 = (v35 + 32) & ~v35;
    v37 = swift_allocObject();
    *(v37 + 16) = a8;
    *(v37 + 24) = a9;
    (*(v34 + 32))(v37 + v36, v16, v33);
    aBlock[4] = sub_1A98556D8;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_80;
    v38 = _Block_copy(aBlock);
    v39 = v31;
    v40 = v32;

    v41 = v43;
    [v46 invoke:v47 parametersData:v43 parametersAsyncSequenceContainer:v39 parametersBlocksContainer:v40 sync:0 completion:v38];
    _Block_release(v38);

    sub_1A97B43C4(v49, v48);
  }
}

uint64_t sub_1A9851EA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v36 = a6;
  v33 = a5;
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v32 = sub_1A9977A20();
  v30 = *(v32 - 8);
  v9 = *(v30 + 64);
  v10 = MEMORY[0x1EEE9AC00](v32);
  v28 = &v25 - v11;
  v27 = *(AssociatedTypeWitness - 8);
  v12 = *(v27 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v26 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v31 = type metadata accessor for SFXPCConnection.PerformedInvocation();
  v29 = *(v31 - 8);
  v17 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v19 = &v25 - v18;
  sub_1A97C1554(a1, a2);
  v20 = v33;
  v21 = v33;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A984F298(a1, a2, v20, v19);
  v22 = v32;
  (*(v30 + 16))(v28, v19, v32);
  sub_1A984F65C(v22, &v37, v16);
  v23 = v27;
  (*(v27 + 16))(v26, v16, AssociatedTypeWitness);
  sub_1A9976BB0();
  sub_1A9976BA0();
  (*(v23 + 8))(v16, AssociatedTypeWitness);
  return (*(v29 + 8))(v19, v31);
}

void SFXPCConnection.syncInvoke<A>(_:parameters:)(objc_class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a2;
  v6 = v5;
  v33 = a5;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v32 = sub_1A9977A20();
  v30 = *(v32 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v28 - v11;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for SFXPCConnection.PerformedInvocation();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v28 - v14;
  v15 = [objc_allocWithZone(a1) init];
  v16 = *&v15[OBJC_IVAR___SFXPCInvocation_name + 8];
  v36 = v12;
  if (v16)
  {
    v17 = *&v15[OBJC_IVAR___SFXPCInvocation_name];
    v18 = v16;
  }

  else
  {
    v18 = 0x80000001A99E5270;
    v17 = 0xD000000000000019;
  }

  swift_beginAccess();
  v19 = *(v6 + 16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16B0, &qword_1A9992880);
  v34 = &v28;
  MEMORY[0x1EEE9AC00](v20);
  *(&v28 - 8) = a3;
  *(&v28 - 7) = a4;
  *(&v28 - 6) = v17;
  *(&v28 - 5) = v18;
  *(&v28 - 4) = v37;
  *(&v28 - 3) = v21;
  v22 = v15;
  *(&v28 - 2) = v15;
  sub_1A985487C();

  v23 = v19;
  v24 = v35;
  v25 = v36;
  v26 = v38;
  sub_1A984F72C(v17, v18, sub_1A9854CD8, (&v28 - 10), v20, v36, v35);

  if (v26)
  {
  }

  else
  {

    v27 = v32;
    (*(v30 + 16))(v31, v24, v32);
    sub_1A984F65C(v27, &v39, v33);
    (*(v29 + 8))(v24, v25);
  }
}

uint64_t sub_1A9852638@<X0>(void **a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a6;
  v49 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v43 - v18;
  v20 = *a1;
  (*(v21 + 16))(&v43 - v18, a4, AssociatedTypeWitness);
  swift_beginAccess();
  v22 = *(a5 + 24);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v24 = AssociatedConformanceWitness;
  v25 = v51;
  result = sub_1A984EAD4(a2, a3, v19, v22, AssociatedTypeWitness, v26, v24);
  if (!v25)
  {
    v31 = v29;
    v44 = result;
    v45 = v28;
    v46 = v30;
    v47 = v20;
    v51 = 0;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v32 = type metadata accessor for SFXPCConnection.PerformedInvocation();
    v33 = sub_1A99770A0();
    v34 = swift_allocBox();
    v36 = v35;
    (*(*(v32 - 8) + 56))(v35, 1, 1, v32);
    v37 = v44;
    v38 = sub_1A9976060();
    v39 = swift_allocObject();
    v39[2] = a7;
    v39[3] = a8;
    v39[4] = v34;
    aBlock[4] = sub_1A9855384;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_34;
    v40 = _Block_copy(aBlock);
    v41 = v31;
    v42 = v46;

    [v47 invoke:v48 parametersData:v38 parametersAsyncSequenceContainer:v41 parametersBlocksContainer:v42 sync:1 completion:v40];
    sub_1A97B43C4(v37, v45);

    _Block_release(v40);
    swift_beginAccess();
    (*(*(v33 - 8) + 16))(v49, v36, v33);
  }

  return result;
}

uint64_t sub_1A98529FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v20[3] = a6;
  v22 = a5;
  v23 = a4;
  swift_getAssociatedTypeWitness();
  v20[2] = swift_getAssociatedConformanceWitness();
  v20[1] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for SFXPCConnection.PerformedInvocation();
  v21 = sub_1A99770A0();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v12 = v20 - v11;
  v13 = swift_projectBox();
  v14 = a1;
  v15 = a1;
  v16 = a2;
  sub_1A97C1554(v15, a2);
  v17 = v22;
  v18 = v22;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A984F298(v14, v16, v17, v12);
  (*(*(v8 - 8) + 56))(v12, 0, 1, v8);
  swift_beginAccess();
  return (*(v9 + 40))(v13, v12, v21);
}

uint64_t sub_1A9852C44()
{
  v1 = *(MEMORY[0x1E69E88D0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1A9852D18;
  v3 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1A9852D18()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9852E14, 0, 0);
}

void sub_1A9852E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B3030, &qword_1A9999B38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - v7;
  swift_beginAccess();
  v9 = *(a2 + 16);
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1A98552F8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981D3F8;
  aBlock[3] = &block_descriptor_6;
  v12 = _Block_copy(aBlock);
  v13 = v9;

  [v13 scheduleSendBarrierBlock_];
  _Block_release(v12);
}

uint64_t sub_1A9853000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t *a9)
{
  v53 = a7;
  v54 = a4;
  v50 = a2;
  v51 = a6;
  v58 = a5;
  v52 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v43 - v17;
  v19 = sub_1A9977460();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v43 - v25;
  result = Optional<A>.throwIfNotNil()(a1);
  if (v9)
  {
    goto LABEL_13;
  }

  v28 = v54;
  v48 = v24;
  v49 = v16;
  v29 = v58;
  if (a3 >> 60 == 15)
  {
    sub_1A97BCDE0();
    v30 = swift_allocError();
    *v31 = xmmword_1A99997D0;
    *(v31 + 16) = 0xD000000000000051;
    *(v31 + 24) = 0x80000001A99E51F0;
    v32 = 164;
LABEL_12:
    *(v31 + 32) = v32;
    *(v31 + 80) = 0x2000000000000000;
    v42 = v30;
    result = swift_willThrow();
    v9 = v42;
    goto LABEL_13;
  }

  if (!v54)
  {
    sub_1A97BCDE0();
    v30 = swift_allocError();
    *v31 = 0xD000000000000018;
    *(v31 + 8) = 0x80000001A99E52F0;
    *(v31 + 16) = 0xD000000000000051;
    *(v31 + 24) = 0x80000001A99E51F0;
    v32 = 165;
    goto LABEL_12;
  }

  if (!v58)
  {
    sub_1A97BCDE0();
    v30 = swift_allocError();
    *v31 = 0xD000000000000011;
    *(v31 + 8) = 0x80000001A99E5310;
    *(v31 + 16) = 0xD000000000000051;
    *(v31 + 24) = 0x80000001A99E51F0;
    v32 = 166;
    goto LABEL_12;
  }

  v45 = 0;
  v33 = sub_1A9975E40();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v47 = sub_1A9975E30();
  sub_1A9977450();
  v46 = v20[6];
  result = v46(v18, 1, v19);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v36 = v20[4];
  v43[1] = v20 + 4;
  v44 = v36;
  v36(v26, v18, v19);
  ObjectType = swift_getObjectType();
  v56[0] = v28;
  swift_unknownObjectRetain();
  v37 = v19;
  v38 = sub_1A9975E20();
  sub_1A97DCC4C(v56, v26);
  v38(v55, 0);
  v39 = v49;
  sub_1A9977450();
  result = v46(v39, 1, v19);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v40 = v48;
  v44(v48, v39, v37);
  ObjectType = swift_getObjectType();
  v56[0] = v29;
  swift_unknownObjectRetain();
  v41 = sub_1A9975E20();
  sub_1A97DCC4C(v56, v40);
  v41(v55, 0);
  v9 = v45;
  sub_1A9975E10();

  if (v9)
  {
LABEL_13:
    *a9 = v9;
  }

  return result;
}

uint64_t SFXPCConnection.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SFXPCConnection.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_1A98534E4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

uint64_t sub_1A9853538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a7;
  v33 = a8;
  v34 = a5;
  v35 = a6;
  v36 = a3;
  v37 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v13 = sub_1A9976BB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  (*(v14 + 16))(&v31 - v16, a1, v13);
  v18 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v33;
  *(v19 + 2) = v32;
  *(v19 + 3) = v20;
  *(v19 + 4) = a9;
  *(v19 + 5) = a2;
  *(v19 + 6) = a3;
  *(v19 + 7) = a4;
  (*(v14 + 32))(&v19[v18], v17, v13);
  v21 = &v19[(v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v22 = v35;
  *v21 = v34;
  *(v21 + 1) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A9855544;
  *(v23 + 24) = v19;
  aBlock[4] = sub_1A981321C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_58;
  v24 = _Block_copy(aBlock);
  v25 = _Block_copy(v24);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1A984BE0C;
  *(v27 + 24) = v26;
  v38[4] = sub_1A984E098;
  v38[5] = v27;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 1107296256;
  v38[2] = sub_1A981E5CC;
  v38[3] = &block_descriptor_68;
  v28 = _Block_copy(v38);

  swift_unknownObjectRetain();

  _Block_copy(v25);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v28);
  _Block_release(v24);
  _Block_release(v25);
  _Block_release(v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A98538F8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v68 = a7;
  v64 = a6;
  v65 = a5;
  v70 = a3;
  v71 = a1;
  v66 = *(a8 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v74 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v67 = a9;
  v76 = sub_1A9976BB0();
  v14 = *(v76 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v17 = &v59 - v16;
  v18 = sub_1A9976230();
  v73 = *(v18 - 8);
  v19 = *(v73 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v63 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v62 = &v59 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v61 = &v59 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v59 - v26;
  sub_1A9976220();
  if (qword_1EB3AD0E0 != -1)
  {
    swift_once();
  }

  v75 = v27;
  v28 = sub_1A99764A0();
  v29 = __swift_project_value_buffer(v28, qword_1EB3AD0F0);

  v69 = v29;
  v30 = sub_1A9976480();
  v31 = sub_1A9976F90();

  v32 = os_log_type_enabled(v30, v31);
  v72 = a2;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v60 = v18;
    v34 = v9;
    v35 = v33;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_1A97AF148(v71, a2, aBlock);
    _os_log_impl(&dword_1A9662000, v30, v31, "asyncXPC [%{public}s] START -- Client", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x1AC58D2C0](v36, -1, -1);
    v37 = v35;
    v9 = v34;
    v18 = v60;
    MEMORY[0x1AC58D2C0](v37, -1, -1);
  }

  v38 = v76;
  (*(v14 + 16))(v17, a4, v76);
  v39 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v40 = swift_allocObject();
  *(v40 + 2) = v68;
  *(v40 + 3) = v9;
  *(v40 + 4) = v67;
  (*(v14 + 32))(&v40[v39], v17, v38);
  aBlock[4] = sub_1A9855620;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A984AA04;
  aBlock[3] = &block_descriptor_74;
  v41 = _Block_copy(aBlock);

  v42 = [v70 remoteObjectProxyWithErrorHandler_];
  _Block_release(v41);
  sub_1A99771B0();
  swift_unknownObjectRelease();
  v43 = v74;
  tryCast<A>(_:as:description:file:line:)(v78, v9, 0, 0, 0xD000000000000051, 0x80000001A99E51F0, 217, v9, v74);
  v65(v43, a4);
  v44 = v75;
  v45 = v73;
  v46 = v61;
  (*(v73 + 16))(v61, v75, v18);
  v47 = v72;

  disableAirDropTLS();
  disableAirDropTLS();
  v48 = sub_1A9976480();
  v49 = v18;
  v50 = sub_1A9976F90();

  if (os_log_type_enabled(v48, v50))
  {
    v51 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    aBlock[0] = v76;
    *v51 = 136446722;
    *(v51 + 4) = sub_1A97AF148(v71, v47, aBlock);
    *(v51 + 12) = 1040;
    *(v51 + 14) = 3;
    *(v51 + 18) = 2048;
    v52 = v62;
    sub_1A9976220();
    sub_1A99760D0();
    v54 = v53;
    v55 = *(v45 + 8);
    v55(v52, v49);
    v55(v46, v49);
    *(v51 + 20) = v54;
    _os_log_impl(&dword_1A9662000, v48, v50, "asyncXPC [%{public}s] END -- {duration: %.*f}", v51, 0x1Cu);
    v56 = v76;
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    MEMORY[0x1AC58D2C0](v56, -1, -1);
    MEMORY[0x1AC58D2C0](v51, -1, -1);

    (*(v66 + 8))(v43, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
    v57 = v75;
  }

  else
  {

    v55 = *(v45 + 8);
    v55(v46, v49);
    (*(v66 + 8))(v43, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
    v57 = v44;
  }

  return (v55)(v57, v49);
}

uint64_t sub_1A9854438(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976BB0();
  return sub_1A9976B90();
}

id SFXPCInvocation.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SFXPCInvocation_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SFXPCInvocation.init()()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = NSStringFromClass(ObjCClassFromMetadata);
  v3 = sub_1A9976820();
  v5 = v4;

  v6 = &v0[OBJC_IVAR___SFXPCInvocation_name];
  *v6 = v3;
  v6[1] = v5;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v8, sel_init);
}

id SFXPCInvocation.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98548EC(a1);

  return v4;
}

id SFXPCInvocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A9854794(void **a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A9851B2C(a1, a2, *(v2 + 32), *(v2 + 40), v2 + v8, *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

unint64_t sub_1A985487C()
{
  result = qword_1EB3ACFD8[0];
  if (!qword_1EB3ACFD8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB3ACFD8);
  }

  return result;
}

id sub_1A98548EC(void *a1)
{
  v3 = sub_1A99767E0();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
    sub_1A967C4DC(v14, v15);
    sub_1A967C4DC(v15, v14);
    v5 = swift_dynamicCast();
    v6 = v11;
    v7 = v12;
    if (!v5)
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = &v1[OBJC_IVAR___SFXPCInvocation_name];
    *v8 = v6;
    *(v8 + 1) = v7;
  }

  else
  {
    v9 = &v1[OBJC_IVAR___SFXPCInvocation_name];
    *v9 = 0;
    *(v9 + 1) = 0;
  }

  v13.receiver = v1;
  v13.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v13, sel_init);
}

unint64_t sub_1A98549F4()
{
  result = qword_1EB3ACB98[0];
  if (!qword_1EB3ACB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3ACB98);
  }

  return result;
}

unint64_t sub_1A9854A48()
{
  result = qword_1EB3AC788;
  if (!qword_1EB3AC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC788);
  }

  return result;
}

uint64_t *sub_1A9854A9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;

  v3[3] = 0;
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = sub_1A99767E0();
  v8 = [v6 initWithMachServiceName:v7 options:0];

  v3[2] = v8;
  v9 = v8;
  [v9 sf:a3 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v9 setRemoteObjectInterface_];

  swift_beginAccess();
  v10 = v3[2];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = v5;
  aBlock[4] = sub_1A9855504;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981D3F8;
  aBlock[3] = &block_descriptor_47;
  v13 = _Block_copy(aBlock);
  v14 = v10;
  v15 = a3;

  [v14 setInterruptionHandler_];
  _Block_release(v13);

  return v3;
}

uint64_t dispatch thunk of SFXPCConnection.__allocating_init(_:queue:)()
{
  return (*(v0 + 96))();
}

{
  return (*(v0 + 104))();
}

uint64_t sub_1A9854E14(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  result = sub_1A9977A20();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A9854EA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1A9854FC0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1A985519C()
{
  result = qword_1EB3AC770;
  if (!qword_1EB3AC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC770);
  }

  return result;
}

unint64_t sub_1A98551F4()
{
  result = qword_1EB3AC778;
  if (!qword_1EB3AC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC778);
  }

  return result;
}

unint64_t sub_1A985524C()
{
  result = qword_1EB3ACB80;
  if (!qword_1EB3ACB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ACB80);
  }

  return result;
}

unint64_t sub_1A98552A4()
{
  result = qword_1EB3ACB88;
  if (!qword_1EB3ACB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ACB88);
  }

  return result;
}

uint64_t sub_1A98552F8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B3030, &qword_1A9999B38) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1A9976BA0();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A9855384(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5[2];
  v7 = v5[3];
  return sub_1A98529FC(a1, a2, a3, a4, a5, v5[4]);
}

uint64_t sub_1A98553C8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1A99762C0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1A97B2638;

  return sub_1A98140D4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1A9855544()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v4 = *(sub_1A9976BB0() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A98538F8(*(v0 + 40), *(v0 + 48), *(v0 + 56), v0 + v5, *v6, *(v6 + 8), v1, v2, v3);
}

uint64_t sub_1A9855620(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v6 = *(*(sub_1A9976BB0() - 8) + 80);

  return sub_1A9854438(a1);
}

uint64_t sub_1A98556D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v13 = *(sub_1A9976BB0() - 8);
  v14 = v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80));

  return sub_1A9851EA8(a1, a2, a3, a4, a5, v14);
}

uint64_t SFPlatformValue.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1A99777B0();
  return 0;
}

uint64_t sub_1A985588C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SFPlatformValue();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, v2);
  return (*(*(v4 - 8) + 32))(a2, v8, v4);
}

uint64_t SFVariantValue.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1A985588C(v4, v6);
  sub_1A99777B0();
  (*(v2 + 8))(v6, v1);
  return v8[0];
}

uint64_t SFVariantValue<A>.userDefaultsRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A985588C(v6, v8);
  (*(a2 + 8))(v3, a2);
  return (*(v4 + 8))(v8, v3);
}

uint64_t SFVariantValue<A>.init(userDefaultsString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a5;
  v8 = type metadata accessor for SFPlatformValue();
  v9 = sub_1A99770A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  v15 = *(v8 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  SFPlatformValue<A>.init(userDefaultsString:)(a1, a2, a3, v28, v14);
  if ((*(v15 + 48))(v14, 1, v8) == 1)
  {
    (*(v10 + 8))(v14, v9);
    v22 = 1;
    v23 = v29;
  }

  else
  {
    v24 = *(v15 + 32);
    v24(v21, v14, v8);
    v24(v19, v21, v8);
    v25 = type metadata accessor for SFPlatformValue();
    v23 = v29;
    (*(*(v25 - 8) + 32))(v29, v19, v25);
    v22 = 0;
  }

  v26 = type metadata accessor for SFVariantValue();
  return (*(*(v26 - 8) + 56))(v23, v22, 1, v26);
}

uint64_t SFPlatformValue<A>.init(userDefaultsString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v28 = a5;
  v9 = sub_1A99770A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  (*(a4 + 16))(a1, a2, a3, a4);
  if ((*(v15 + 48))(v14, 1, a3) == 1)
  {
    (*(v10 + 8))(v14, v9);
    v22 = 1;
    v23 = v28;
  }

  else
  {
    v24 = *(v15 + 32);
    v24(v21, v14, a3);
    v24(v19, v21, a3);
    v23 = v28;
    v24(v28, v19, a3);
    v22 = 0;
  }

  v25 = type metadata accessor for SFPlatformValue();
  return (*(*(v25 - 8) + 56))(v23, v22, 1, v25);
}

uint64_t sub_1A98560AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A985611C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for SFPlatformValue();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A985618C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1A98562CC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t SFAirDropReceive.ItemDestination.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A9975F80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A40, &qword_1A99983B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  sub_1A9858830(v2, &v25 - v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v23 = sub_1A9976020();
      return (*(*(v23 - 8) + 32))(a1, v19, v23);
    }
  }

  else if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v21 = sub_1A9976020();
      (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
      (*(v5 + 104))(v8, *MEMORY[0x1E6968F70], v4);
      return sub_1A9976010();
    }

    goto LABEL_8;
  }

  sub_1A9858894(v19);
LABEL_8:
  v24 = swift_storeEnumTagMultiPayload();
  SFAirDropReceive.ItemDestination.url.getter(v24);
  return sub_1A9858894(v17);
}

uint64_t SFAirDropReceive.ItemDestination.description.getter()
{
  v1 = v0;
  v2 = sub_1A9976020();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A9858830(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      result = *v10;
      v14 = v10[1];
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      sub_1A9858B94(&qword_1EB3B1FA0, MEMORY[0x1E6968FB0]);
      v13 = sub_1A9977730();
      (*(v3 + 8))(v6, v2);
      return v13;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1A9858894(v10);
    return 0x7461646174656D2ELL;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x746C75616665642ELL;
  }

  else
  {
    return 0x6D6574496F6E2ELL;
  }

  return result;
}

uint64_t sub_1A98569A0()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x70416D6F74737563;
  v4 = 0x6D6574496F6ELL;
  if (v1 != 3)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x52556D6F74737563;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A9856A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98592C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9856A6C(uint64_t a1)
{
  v2 = sub_1A98588F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9856AA8(uint64_t a1)
{
  v2 = sub_1A98588F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9856AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A9856B84(uint64_t a1)
{
  v2 = sub_1A98589EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9856BC0(uint64_t a1)
{
  v2 = sub_1A98589EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9856BFC(uint64_t a1)
{
  v2 = sub_1A9858A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9856C38(uint64_t a1)
{
  v2 = sub_1A9858A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9856C74(uint64_t a1)
{
  v2 = sub_1A9858A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9856CB0(uint64_t a1)
{
  v2 = sub_1A9858A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9856CEC(uint64_t a1)
{
  v2 = sub_1A9858944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9856D28(uint64_t a1)
{
  v2 = sub_1A9858944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9856D64(uint64_t a1)
{
  v2 = sub_1A9858998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9856DA0(uint64_t a1)
{
  v2 = sub_1A9858998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.ItemDestination.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B30C8, &qword_1A9999C38);
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v62 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B30D0, &qword_1A9999C40);
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B30D8, &qword_1A9999C48);
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B30E0, &qword_1A9999C50);
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v57 - v13;
  v14 = sub_1A9976020();
  v65 = *(v14 - 8);
  v15 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B30E8, &qword_1A9999C58);
  v57 = *(v18 - 8);
  v58 = v18;
  v19 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v57 - v20;
  v22 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B30F0, &qword_1A9999C60);
  v74 = *(v77 - 8);
  v26 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v28 = &v57 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98588F0();
  v72 = v28;
  sub_1A9977AA0();
  sub_1A9858830(v73, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v33 = v69;
    v34 = v70;
    v35 = v66;
    v36 = v14;
    v37 = v67;
    v38 = v68;
    v39 = v71;
    if (EnumCaseMultiPayload)
    {
      v53 = *v25;
      v52 = v25[1];
      LOBYTE(v75) = 2;
      sub_1A98589EC();
      v54 = v33;
      v55 = v77;
      v56 = v72;
      sub_1A9977640();
      sub_1A9977690();

      (*(v34 + 8))(v54, v39);
      return (*(v74 + 8))(v56, v55);
    }

    else
    {
      v40 = v65;
      v41 = v17;
      v42 = v36;
      (*(v65 + 32))(v17, v25, v36);
      LOBYTE(v75) = 1;
      sub_1A9858A40();
      v43 = v72;
      sub_1A9977640();
      sub_1A9858B94(&qword_1EB3B1918, MEMORY[0x1E6968FB0]);
      sub_1A99776E0();
      (*(v37 + 8))(v35, v38);
      (*(v40 + 8))(v41, v42);
      return (*(v74 + 8))(v43, v77);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v46 = *v25;
    v45 = v25[1];
    LOBYTE(v75) = 4;
    sub_1A9858944();
    v47 = v62;
    v48 = v77;
    v49 = v72;
    sub_1A9977640();
    v75 = v46;
    v76 = v45;
    sub_1A97B4370();
    v50 = v64;
    sub_1A9977680();
    (*(v63 + 8))(v47, v50);
    (*(v74 + 8))(v49, v48);
    return sub_1A97D8688(v46, v45);
  }

  else
  {
    v31 = v72;
    if (EnumCaseMultiPayload == 3)
    {
      LOBYTE(v75) = 0;
      sub_1A9858A94();
      v32 = v77;
      sub_1A9977640();
      (*(v57 + 8))(v21, v58);
    }

    else
    {
      LOBYTE(v75) = 3;
      sub_1A9858998();
      v51 = v59;
      v32 = v77;
      sub_1A9977640();
      (*(v60 + 8))(v51, v61);
    }

    return (*(v74 + 8))(v31, v32);
  }
}

uint64_t SFAirDropReceive.ItemDestination.hash(into:)()
{
  v1 = sub_1A9976020();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A9858830(v0, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v14 = *v9;
      v15 = v9[1];
      MEMORY[0x1AC58A630](2);
      sub_1A99768D0();
    }

    else
    {
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x1AC58A630](1);
      sub_1A9858B94(&qword_1EB3AC8C0, MEMORY[0x1E6968FB0]);
      sub_1A9976740();
      return (*(v2 + 8))(v5, v1);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v12 = *v9;
    v13 = v9[1];
    MEMORY[0x1AC58A630](4);
    if (v13 >> 60 == 15)
    {
      return sub_1A99779A0();
    }

    else
    {
      sub_1A99779A0();
      sub_1A9976080();
      return sub_1A97D8688(v12, v13);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return MEMORY[0x1AC58A630](0);
  }

  else
  {
    return MEMORY[0x1AC58A630](3);
  }
}

uint64_t SFAirDropReceive.ItemDestination.hashValue.getter()
{
  sub_1A9977980();
  SFAirDropReceive.ItemDestination.hash(into:)();
  return sub_1A99779B0();
}

uint64_t SFAirDropReceive.ItemDestination.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3128, &qword_1A9999C68);
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v92 = &v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3130, &qword_1A9999C70);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v71 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3138, &qword_1A9999C78);
  v81 = *(v80 - 8);
  v9 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v91 = &v71 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3140, &qword_1A9999C80);
  v78 = *(v79 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v90 = &v71 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3148, &qword_1A9999C88);
  v76 = *(v77 - 8);
  v13 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v86 = &v71 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3150, &unk_1A9999C90);
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v71 - v17;
  v19 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v71 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v71 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v71 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v94 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1A98588F0();
  v34 = v100;
  sub_1A9977A70();
  if (!v34)
  {
    v72 = v26;
    v74 = v29;
    v73 = v23;
    v36 = v90;
    v35 = v91;
    v37 = v92;
    v75 = v31;
    v100 = v19;
    v38 = v93;
    v39 = v89;
    v40 = v18;
    v41 = sub_1A9977620();
    v42 = (2 * *(v41 + 16)) | 1;
    v96 = v41;
    v97 = v41 + 32;
    v98 = 0;
    v99 = v42;
    v43 = sub_1A97B2978();
    if (v43 != 5 && v98 == v99 >> 1)
    {
      if (v43 <= 1u)
      {
        if (!v43)
        {
          LOBYTE(v95) = 0;
          sub_1A9858A94();
          v52 = v86;
          sub_1A9977530();
          v53 = v88;
          v60 = v38;
          (*(v76 + 8))(v52, v77);
          (*(v53 + 8))(v18, v39);
          swift_unknownObjectRelease();
          v45 = v75;
          swift_storeEnumTagMultiPayload();
LABEL_17:
          v68 = v94;
LABEL_19:
          sub_1A9858AE8(v45, v60);
          v50 = v68;
          return __swift_destroy_boxed_opaque_existential_0Tm(v50);
        }

        LOBYTE(v95) = 1;
        sub_1A9858A40();
        sub_1A9977530();
        v59 = v88;
        v60 = v38;
        sub_1A9976020();
        sub_1A9858B94(&qword_1EB3B1AB0, MEMORY[0x1E6968FB0]);
        v61 = v79;
        sub_1A99775F0();
        (*(v78 + 8))(v36, v61);
        (*(v59 + 8))(v18, v39);
        swift_unknownObjectRelease();
        v62 = v74;
        swift_storeEnumTagMultiPayload();
        v67 = v62;
      }

      else
      {
        if (v43 != 2)
        {
          if (v43 == 3)
          {
            LOBYTE(v95) = 3;
            sub_1A9858998();
            v44 = v87;
            sub_1A9977530();
            (*(v82 + 8))(v44, v83);
            (*(v88 + 8))(v18, v39);
            swift_unknownObjectRelease();
            v45 = v75;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            LOBYTE(v95) = 4;
            sub_1A9858944();
            sub_1A9977530();
            sub_1A97B446C();
            v58 = v85;
            sub_1A9977590();
            (*(v84 + 8))(v37, v58);
            (*(v88 + 8))(v18, v39);
            swift_unknownObjectRelease();
            v69 = v73;
            *v73 = v95;
            swift_storeEnumTagMultiPayload();
            v70 = v69;
            v45 = v75;
            sub_1A9858AE8(v70, v75);
          }

          v68 = v94;
          v60 = v38;
          goto LABEL_19;
        }

        LOBYTE(v95) = 2;
        sub_1A98589EC();
        v54 = v35;
        sub_1A9977530();
        v60 = v38;
        v55 = v80;
        v56 = sub_1A99775A0();
        v57 = v88;
        v63 = v56;
        v65 = v64;
        (*(v81 + 8))(v54, v55);
        (*(v57 + 8))(v40, v39);
        swift_unknownObjectRelease();
        v66 = v72;
        *v72 = v63;
        v66[1] = v65;
        swift_storeEnumTagMultiPayload();
        v67 = v66;
      }

      v45 = v75;
      sub_1A9858AE8(v67, v75);
      goto LABEL_17;
    }

    v46 = sub_1A9977300();
    swift_allocError();
    v48 = v47;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v48 = v100;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrow();
    (*(v88 + 8))(v18, v39);
    swift_unknownObjectRelease();
  }

  v50 = v94;
  return __swift_destroy_boxed_opaque_existential_0Tm(v50);
}

uint64_t sub_1A9858310()
{
  sub_1A9977980();
  SFAirDropReceive.ItemDestination.hash(into:)();
  return sub_1A99779B0();
}

uint64_t sub_1A9858354()
{
  sub_1A9977980();
  SFAirDropReceive.ItemDestination.hash(into:)();
  return sub_1A99779B0();
}

uint64_t _s7Sharing16SFAirDropReceiveO15ItemDestinationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9976020();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDropReceive.ItemDestination();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v40 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B31D8, qword_1A999A3B8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v40 - v21;
  v23 = (&v40 + *(v20 + 56) - v21);
  sub_1A9858830(a1, &v40 - v21);
  sub_1A9858830(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v25 = v41;
    if (!EnumCaseMultiPayload)
    {
      sub_1A9858830(v22, v17);
      if (!swift_getEnumCaseMultiPayload())
      {
        (*(v25 + 32))(v7, v23, v4);
        v35 = sub_1A9975FD0();
        v36 = *(v25 + 8);
        v36(v7, v4);
        v36(v17, v4);
        sub_1A9858894(v22);
        return v35 & 1;
      }

      (*(v25 + 8))(v17, v4);
      goto LABEL_24;
    }

    sub_1A9858830(v22, v15);
    v31 = *v15;
    v30 = v15[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v31 == *v23 && v30 == v23[1])
      {
        v37 = v23[1];

        goto LABEL_31;
      }

      v33 = v23[1];
      v34 = sub_1A99777E0();

      if (v34)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_31;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    sub_1A9858830(v22, v12);
    v27 = *v12;
    v26 = v12[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v28 = *v23;
      v29 = v23[1];
      if (v26 >> 60 == 15)
      {
        if (v29 >> 60 == 15)
        {
          sub_1A97D8688(v27, v26);
LABEL_31:
          sub_1A9858894(v22);
          v35 = 1;
          return v35 & 1;
        }
      }

      else if (v29 >> 60 != 15)
      {
        sub_1A97C1554(v27, v26);
        sub_1A97C1554(v28, v29);
        v39 = sub_1A993184C(v27, v26, v28, v29);
        sub_1A97D8688(v28, v29);
        sub_1A97D8688(v28, v29);
        sub_1A97D8688(v27, v26);
        sub_1A97D8688(v27, v26);
        if (v39)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      sub_1A97D8688(v27, v26);
      sub_1A97D8688(v28, v29);
LABEL_29:
      sub_1A9858894(v22);
      goto LABEL_25;
    }

    sub_1A97D8688(v27, v26);
  }

LABEL_24:
  sub_1A985947C(v22);
LABEL_25:
  v35 = 0;
  return v35 & 1;
}

uint64_t type metadata accessor for SFAirDropReceive.ItemDestination()
{
  result = qword_1EB3AC580;
  if (!qword_1EB3AC580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A9858830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9858894(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A98588F0()
{
  result = qword_1EB3B30F8;
  if (!qword_1EB3B30F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B30F8);
  }

  return result;
}

unint64_t sub_1A9858944()
{
  result = qword_1EB3B3100;
  if (!qword_1EB3B3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3100);
  }

  return result;
}

unint64_t sub_1A9858998()
{
  result = qword_1EB3B3108;
  if (!qword_1EB3B3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3108);
  }

  return result;
}

unint64_t sub_1A98589EC()
{
  result = qword_1EB3B3110;
  if (!qword_1EB3B3110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3110);
  }

  return result;
}

unint64_t sub_1A9858A40()
{
  result = qword_1EB3B3118;
  if (!qword_1EB3B3118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3118);
  }

  return result;
}

unint64_t sub_1A9858A94()
{
  result = qword_1EB3B3120;
  if (!qword_1EB3B3120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3120);
  }

  return result;
}

uint64_t sub_1A9858AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.ItemDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9858B94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A9858BDC()
{
  sub_1A9976020();
  if (v0 <= 0x3F)
  {
    sub_1A9858C64();
    if (v1 <= 0x3F)
    {
      sub_1A9858C94();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A9858C64()
{
  result = qword_1EB3AB720;
  if (!qword_1EB3AB720)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB3AB720);
  }

  return result;
}

void sub_1A9858C94()
{
  if (!qword_1EB3AC8A8)
  {
    v0 = sub_1A99770A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AC8A8);
    }
  }
}

unint64_t sub_1A9858D48()
{
  result = qword_1EB3B3158;
  if (!qword_1EB3B3158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3158);
  }

  return result;
}

unint64_t sub_1A9858DA0()
{
  result = qword_1EB3B3160;
  if (!qword_1EB3B3160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3160);
  }

  return result;
}

unint64_t sub_1A9858DF8()
{
  result = qword_1EB3B3168;
  if (!qword_1EB3B3168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3168);
  }

  return result;
}

unint64_t sub_1A9858E50()
{
  result = qword_1EB3B3170;
  if (!qword_1EB3B3170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3170);
  }

  return result;
}

unint64_t sub_1A9858EA8()
{
  result = qword_1EB3B3178;
  if (!qword_1EB3B3178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3178);
  }

  return result;
}

unint64_t sub_1A9858F00()
{
  result = qword_1EB3B3180;
  if (!qword_1EB3B3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3180);
  }

  return result;
}

unint64_t sub_1A9858F58()
{
  result = qword_1EB3B3188;
  if (!qword_1EB3B3188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3188);
  }

  return result;
}

unint64_t sub_1A9858FB0()
{
  result = qword_1EB3B3190;
  if (!qword_1EB3B3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3190);
  }

  return result;
}

unint64_t sub_1A9859008()
{
  result = qword_1EB3B3198;
  if (!qword_1EB3B3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3198);
  }

  return result;
}

unint64_t sub_1A9859060()
{
  result = qword_1EB3B31A0;
  if (!qword_1EB3B31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31A0);
  }

  return result;
}

unint64_t sub_1A98590B8()
{
  result = qword_1EB3B31A8;
  if (!qword_1EB3B31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31A8);
  }

  return result;
}

unint64_t sub_1A9859110()
{
  result = qword_1EB3B31B0;
  if (!qword_1EB3B31B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31B0);
  }

  return result;
}

unint64_t sub_1A9859168()
{
  result = qword_1EB3B31B8;
  if (!qword_1EB3B31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31B8);
  }

  return result;
}

unint64_t sub_1A98591C0()
{
  result = qword_1EB3B31C0;
  if (!qword_1EB3B31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31C0);
  }

  return result;
}

unint64_t sub_1A9859218()
{
  result = qword_1EB3B31C8;
  if (!qword_1EB3B31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31C8);
  }

  return result;
}

unint64_t sub_1A9859270()
{
  result = qword_1EB3B31D0;
  if (!qword_1EB3B31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31D0);
  }

  return result;
}

uint64_t sub_1A98592C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x52556D6F74737563 && a2 == 0xE90000000000004CLL || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70416D6F74737563 && a2 == 0xE900000000000070 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6574496F6ELL && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A985947C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B31D8, qword_1A999A3B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A985952C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - v9;
  sub_1A98614D8(a1, v20 - v9);
  v11 = sub_1A9976C00();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1A9860FD4(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1A9976B80();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A9976BF0();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

void sub_1A98596FC()
{
  v1 = *v0;
  v2 = v0[2];
  v10 = *(*v0 + 80);
  v11 = v1[11];
  v12 = v1[12];
  v13 = v1[13];
  v14 = v1[14];
  v15 = v1[15];
  type metadata accessor for CombineLatestStateMachine();
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  type metadata accessor for CombineLatestStateMachine.IteratorDeinitializedAction();
  sub_1A99770A0();
  sub_1A9862D90(sub_1A9860A0C, v9, v2);
  v3 = v16;
  if (v16)
  {
    v4 = *(v17 + 16);
    if (v4)
    {
      v5 = (v17 + 32);
      sub_1A9976BC0();
      sub_1A97FC63C();

      do
      {
        v6 = *v5++;
        v7 = swift_allocError();
        sub_1A99766C0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
        swift_allocError();
        *v8 = v7;
        swift_continuation_throwingResumeWithError();
        --v4;
      }

      while (v4);
    }

    else
    {
    }

    sub_1A9976CB0();
    sub_1A9860A70(v3);
  }
}

uint64_t sub_1A9859938(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1A9859980, 0, 0);
}

uint64_t sub_1A9859980()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x1E69E88F0] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = v1[13];
  v5 = v1[10];
  swift_getAssociatedTypeWitness();
  v6 = v1[14];
  v7 = v1[11];
  swift_getAssociatedTypeWitness();
  v8 = v1[15];
  v9 = v1[12];
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  v10 = sub_1A99770A0();
  *v3 = v0;
  v3[1] = sub_1A9859AF8;
  v11 = v0[2];
  v12 = v0[3];

  return MEMORY[0x1EEE6DE18](v11, &unk_1A999A428, v12, sub_1A9860B4C, v12, 0, 0, v10);
}

uint64_t sub_1A9859AF8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9859C2C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1A9859C44(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *a2;
  v4 = *(*a2 + 104);
  v5 = v3[10];
  swift_getAssociatedTypeWitness();
  v6 = v3[14];
  v7 = v3[11];
  swift_getAssociatedTypeWitness();
  v8 = v3[15];
  v9 = v3[12];
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v10 = sub_1A9977A20();
  v2[4] = v10;
  v11 = *(v10 - 8);
  v2[5] = v11;
  v12 = *(v11 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9859E38, 0, 0);
}

uint64_t sub_1A9859E38()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1A9859F00;
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  return sub_1A985B1A0(v2, 0, 0, sub_1A9860C14, v3);
}

uint64_t sub_1A9859F00()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A9859FFC, 0, 0);
}

uint64_t sub_1A9859FFC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  WitnessTable = swift_getWitnessTable();
  sub_1A982C780(v3, WitnessTable);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A985A0D0(uint64_t a1, void *a2)
{
  v52 = a1;
  v3 = *a2;
  v51 = *(*a2 + 104);
  v50 = v3[10];
  swift_getAssociatedTypeWitness();
  v4 = v3[14];
  v5 = v3[11];
  swift_getAssociatedTypeWitness();
  v6 = v3[15];
  v7 = v3[12];
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v8 = sub_1A9977A20();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v46 = &TupleTypeMetadata3 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &TupleTypeMetadata3 - v12;
  v13 = v50;
  v14 = v51;
  v56 = v50;
  v57 = v5;
  v58 = v7;
  v59 = v51;
  v60 = v4;
  v61 = v6;
  Action = type metadata accessor for CombineLatestStateMachine.NextAction();
  v16 = sub_1A99770A0();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &TupleTypeMetadata3 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v22 = a2[2];
  v54 = v52;
  v55 = a2;
  v56 = v13;
  v57 = v5;
  v24 = &TupleTypeMetadata3 - v23;
  v25 = v21;
  v58 = v7;
  v59 = v14;
  v27 = v26;
  v60 = v4;
  v61 = v6;
  type metadata accessor for CombineLatestStateMachine();
  sub_1A9862D90(sub_1A9860C1C, v53, v22);
  (*(v27 + 16))(v20, v24, v25);
  if ((*(*(Action - 8) + 48))(v20, 1, Action) == 1)
  {
    return (*(v27 + 8))(v24, v25);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v33 = *v20;
    v34 = v47;
    (*(*(TupleTypeMetadata3 - 8) + 56))(v47, 1, 1);
    v35 = v49;
    swift_storeEnumTagMultiPayload();
    (*(v48 + 32))(*(*(v33 + 64) + 40), v34, v35);
    swift_continuation_resume();
    return (*(v27 + 8))(v24, v25);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v29 = *v20;
    v30 = *(*v20 + 16);
    if (v30)
    {
      v31 = (v29 + 32);
      do
      {
        v32 = *v31++;
        swift_continuation_throwingResume();
        --v30;
      }

      while (v30);
    }

    return (*(v27 + 8))(v24, v25);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v36 = *v20;
    v37 = v49;
    sub_1A9976CE0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v39 = v48;
    v40 = *(v48 + 32);
    v41 = &v20[*(TupleTypeMetadata2 + 48)];
    v42 = v47;
    v40(v47, v41, v37);
    v43 = v46;
    (*(v39 + 16))(v46, v42, v37);
    v40(*(*(v36 + 64) + 40), v43, v37);
    swift_continuation_resume();
    (*(v39 + 8))(v42, v37);
    return (*(v27 + 8))(v24, v25);
  }

  result = sub_1A9977470();
  __break(1u);
  return result;
}

uint64_t sub_1A985A694@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v6 = *a3;
  v7 = *(*a3 + 96);
  v56 = sub_1A99770A0();
  v52 = *(v56 - 8);
  v8 = *(v52 + 64);
  v9 = MEMORY[0x1EEE9AC00](v56);
  v51 = v47 - v10;
  v50 = *(v6[11] - 8);
  v11 = *(v50 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v48 = v47 - v13;
  v53 = *(v6[10] - 8);
  v14 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v54 = v47 - v15;
  v16 = v6[13];
  v17 = v6[14];
  v55 = v18;
  *&v19 = v18;
  v57 = v20;
  *(&v19 + 1) = v20;
  v59 = v19;
  v49 = v7;
  *&v21 = v7;
  v47[1] = v16;
  *(&v21 + 1) = v16;
  v58 = v21;
  v22 = v6[15];
  v62 = v21;
  v61 = v19;
  v63 = v17;
  v64 = v22;
  Action = type metadata accessor for CombineLatestStateMachine.NextAction();
  v24 = *(Action - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](Action);
  v28 = v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = (v47 - v29);
  v62 = v58;
  v61 = v59;
  v63 = v17;
  v64 = v22;
  v31 = type metadata accessor for CombineLatestStateMachine();
  *&v59 = a2;
  *&v58 = a1;
  sub_1A97FB57C(a2, v31, v30);
  (*(v24 + 16))(v28, v30, Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *&v59 = swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      sub_1A99770A0();
      swift_getTupleTypeMetadata3();
      sub_1A99770A0();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      v43 = sub_1A9977A20();
      sub_1A9976CE0();
      v44 = *(swift_getTupleTypeMetadata2() + 48);
      v45 = v60;
      (*(v24 + 32))(v60, v30, Action);
      (*(v24 + 56))(v45, 0, 1, Action);
      return (*(*(v43 - 8) + 8))(&v28[v44], v43);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v33 = v55;
      v34 = v57;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v36 = *(TupleTypeMetadata3 + 48);
      v49 = *(TupleTypeMetadata3 + 64);
      (*(v53 + 32))(v54, v28, v33);
      v37 = v50;
      v38 = v48;
      (*(v50 + 32))(v48, &v28[v36], v34);
      v39 = v52;
      v40 = &v28[v49];
      v41 = v51;
      (*(v52 + 32))(v51, v40, v56);
      sub_1A985AD18(v58, v54, v38, v41, v59);
      (*(v39 + 8))(v41, v56);
      (*(v37 + 8))(v38, v57);
      (*(v53 + 8))(v54, v55);
      (*(v24 + 8))(v30, Action);
      return (*(v24 + 56))(v60, 1, 1, Action);
    }

    (*(v24 + 8))(v28, Action);
  }

  v46 = v60;
  (*(v24 + 32))(v60, v30, Action);
  return (*(v24 + 56))(v46, 0, 1, Action);
}

uint64_t sub_1A985AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v56 = a1;
  v57 = a5;
  v55 = a4;
  v52 = a2;
  v53 = a3;
  v7 = *v5;
  v61 = *(*v5 + 96);
  v60 = sub_1A99770A0();
  v58 = *(v60 - 8);
  v54 = *(v58 + 64);
  v8 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v45 - v9;
  v50 = v7[11];
  v10 = *(v50 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v45 - v13;
  v49 = &v45 - v13;
  v15 = v7[10];
  v47 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v19 = &v45 - v18;
  v48 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v45 - v22;
  v51 = &v45 - v22;
  v24 = sub_1A9976C00();
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  (*(v16 + 16))(v19, v52, v15);
  v46 = v10;
  v25 = v14;
  v26 = v50;
  (*(v10 + 16))(v25, v53, v50);
  v27 = v58;
  (*(v58 + 16))(v59, v55, v60);
  v28 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v29 = (v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (*(v10 + 80) + v29 + 8) & ~*(v10 + 80);
  v31 = (v11 + *(v27 + 80) + v30) & ~*(v27 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  v34 = v47;
  v33 = v48;
  *(v32 + 4) = v47;
  *(v32 + 5) = v26;
  v35 = v26;
  *(v32 + 6) = v61;
  v36 = v7[13];
  *(v32 + 7) = v36;
  v55 = v7[14];
  *(v32 + 8) = v55;
  v37 = v7[15];
  *(v32 + 9) = v37;
  v38 = &v32[v28];
  v39 = v34;
  (*(v16 + 32))(v38, v33);
  *&v32[v29] = v6;
  (*(v46 + 32))(&v32[v30], v49, v35);
  (*(v58 + 32))(&v32[v31], v59, v60);

  v40 = sub_1A97B4F40(0, 0, v51, &unk_1A999A448, v32);
  *&v41 = v39;
  *(&v41 + 1) = v35;
  *&v42 = v61;
  *(&v42 + 1) = v36;
  v63 = v42;
  v62 = v41;
  v64 = v55;
  v65 = v37;
  v43 = type metadata accessor for CombineLatestStateMachine();
  sub_1A97F479C(v40, v57, v43);
}

uint64_t sub_1A985B1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A9976B80();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1A985B234, v6, v8);
}

uint64_t sub_1A985B234()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1A985B2DC;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A985B2DC()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

void sub_1A985B3B4(void *a1)
{
  v2 = *a1;
  v31 = *(*a1 + 104);
  v3 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = v2[14];
  v5 = v2[11];
  swift_getAssociatedTypeWitness();
  v6 = v2[15];
  v7 = v2[12];
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v9 = sub_1A9977A20();
  v29 = *(v9 - 8);
  AssociatedTypeWitness = v9;
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v28 = v27 - v11;
  v12 = a1[2];
  v33 = v3;
  v34 = v5;
  v13 = v31;
  v35 = v7;
  v36 = v31;
  v37 = v4;
  v38 = v6;
  v39 = v3;
  v40 = v5;
  v41 = v7;
  v42 = v31;
  v43 = v4;
  v44 = v6;
  type metadata accessor for CombineLatestStateMachine();
  v39 = v3;
  v40 = v5;
  v41 = v7;
  v42 = v13;
  v43 = v4;
  v44 = v6;
  type metadata accessor for CombineLatestStateMachine.CancelledAction();
  sub_1A99770A0();
  sub_1A9862D90(sub_1A9860B54, v32, v12);
  v14 = v39;
  if ((~v39 & 0xF000000000000007) != 0)
  {
    v31 = v41;
    if (v39 < 0)
    {
      v20 = *(v40 + 16);
      if (v20)
      {
        v21 = (v40 + 32);
        sub_1A9976BC0();
        sub_1A97FC63C();

        do
        {
          v22 = *v21++;
          v23 = swift_allocError();
          sub_1A99766C0();
          swift_allocError();
          *v24 = v23;
          swift_continuation_throwingResumeWithError();
          --v20;
        }

        while (v20);
      }

      else
      {
      }

      sub_1A9976CB0();
      sub_1A9860BBC(v14);
    }

    else
    {
      v27[0] = TupleTypeMetadata3;
      v27[1] = v40;
      v15 = *(v41 + 16);
      if (v15)
      {
        v16 = (v41 + 32);
        sub_1A9976BC0();
        sub_1A97FC63C();

        do
        {
          v17 = *v16++;
          v18 = swift_allocError();
          sub_1A99766C0();
          swift_allocError();
          *v19 = v18;
          swift_continuation_throwingResumeWithError();
          --v15;
        }

        while (v15);
      }

      else
      {
      }

      sub_1A9976CB0();
      v25 = v28;
      (*(*(v27[0] - 8) + 56))(v28, 1, 1);
      v26 = AssociatedTypeWitness;
      swift_storeEnumTagMultiPayload();
      (*(v29 + 32))(*(*(v14 + 64) + 40), v25, v26);
      swift_continuation_resume();

      sub_1A9860BBC(v14);
    }
  }
}

uint64_t sub_1A985B880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A985B8A8, 0, 0);
}

uint64_t sub_1A985B8A8()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x1E69E88A0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1A985B998;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v5, v6, v7, 0, 0, &unk_1A999A458, v1, v8);
}

void sub_1A985B998()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 56);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t sub_1A985BACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[18] = a2;
  v7 = *a4;
  v6[23] = *(*a4 + 104);
  v8 = v7[10];
  v6[24] = v8;
  swift_getAssociatedTypeWitness();
  v6[25] = v7[14];
  v9 = v7[11];
  v6[26] = v9;
  swift_getAssociatedTypeWitness();
  v6[27] = v7[15];
  v10 = v7[12];
  v6[28] = v10;
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  v6[29] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v11 = sub_1A9977A20();
  v6[30] = v11;
  v12 = *(v11 - 8);
  v6[31] = v12;
  v13 = *(v12 + 64) + 15;
  v6[32] = swift_task_alloc();
  v14 = sub_1A99770A0();
  v6[33] = v14;
  v15 = *(v14 - 8);
  v6[34] = v15;
  v16 = *(v15 + 64) + 15;
  v6[35] = swift_task_alloc();
  v17 = *(v10 - 8);
  v6[36] = v17;
  v6[37] = *(v17 + 64);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v18 = *(v9 - 8);
  v6[40] = v18;
  v6[41] = *(v18 + 64);
  v6[42] = swift_task_alloc();
  v19 = *(v8 - 8);
  v6[43] = v19;
  v6[44] = *(v19 + 64);
  v6[45] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00) - 8) + 64) + 15;
  v6[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A985BE7C, 0, 0);
}

uint64_t sub_1A985BE7C()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[43];
  v39 = v0[44];
  v41 = v1;
  v44 = v0[42];
  v45 = v0[41];
  v43 = v0[40];
  v47 = v0[34];
  v48 = v0[35];
  v50 = v0[33];
  v52 = v0[36];
  v60 = v0[28];
  v62 = v0[27];
  v4 = v0[26];
  v58 = v0[25];
  v5 = v0[24];
  v46 = v0[22];
  v42 = v0[21];
  v6 = v0[19];
  v54 = v0[20];
  v56 = v0[23];
  v63 = v0[18];
  v7 = sub_1A9976C00();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v6, v5);
  v9 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v5;
  *(v10 + 5) = v4;
  *(v10 + 6) = v60;
  *(v10 + 7) = v56;
  *(v10 + 8) = v58;
  *(v10 + 9) = v62;
  (*(v3 + 32))(&v10[v9], v2, v5);
  *&v10[(v39 + v9 + 7) & 0xFFFFFFFFFFFFFFF8] = v54;

  sub_1A985952C(v41, &unk_1A999A468, v10);
  sub_1A9860FD4(v41);
  v38 = v8;
  v40 = v7;
  v8(v41, 1, 1, v7);
  (*(v43 + 16))(v44, v42, v4);
  v11 = (*(v43 + 80) + 80) & ~*(v43 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v5;
  *(v12 + 5) = v4;
  *(v12 + 6) = v60;
  *(v12 + 7) = v56;
  *(v12 + 8) = v58;
  *(v12 + 9) = v62;
  (*(v43 + 32))(&v12[v11], v44, v4);
  *&v12[(v45 + v11 + 7) & 0xFFFFFFFFFFFFFFF8] = v54;

  sub_1A985952C(v41, &unk_1A999A478, v12);
  sub_1A9860FD4(v41);
  (*(v47 + 16))(v48, v46, v50);
  if ((*(v52 + 48))(v48, 1, v60) == 1)
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
  }

  else
  {
    v13 = v0[46];
    v14 = v0[38];
    v15 = v0[39];
    v16 = v0[36];
    v49 = v14;
    v51 = v0[37];
    v17 = v0[28];
    v61 = v0[27];
    v57 = v0[26];
    v59 = v0[25];
    v53 = v0[24];
    v55 = v0[23];
    v18 = v0[20];
    v19 = v0[18];
    v20 = *(v16 + 32);
    v20(v15, v0[35], v17);
    v38(v13, 1, 1, v40);
    (*(v16 + 16))(v14, v15, v17);
    v21 = (*(v16 + 80) + 80) & ~*(v16 + 80);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v53;
    v22[5] = v57;
    v22[6] = v17;
    v22[7] = v55;
    v22[8] = v59;
    v22[9] = v61;
    v20(v22 + v21, v49, v17);
    *(v22 + ((v51 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;

    sub_1A985952C(v13, &unk_1A999A490, v22);
    sub_1A9860FD4(v13);
    (*(v16 + 8))(v15, v17);
  }

  v23 = v0[29];
  v24 = *v0[18];
  if (sub_1A9976D00())
  {
    v26 = v0[45];
    v25 = v0[46];
    v27 = v0[42];
    v29 = v0[38];
    v28 = v0[39];
    v30 = v0[35];
    v31 = v0[32];

    v32 = v0[1];

    return v32();
  }

  else
  {
    v34 = *(MEMORY[0x1E69E8708] + 4);
    v35 = swift_task_alloc();
    v0[47] = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B31E0, &qword_1A999A480);
    *v35 = v0;
    v35[1] = sub_1A985C424;
    v37 = v0[18];

    return MEMORY[0x1EEE6DAC8](v0 + 49, 0, 0, v36);
  }
}

uint64_t sub_1A985C424()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_1A985C6B0;
  }

  else
  {
    v3 = sub_1A985C538;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A985C538()
{
  v1 = *(v0 + 232);
  v2 = **(v0 + 144);
  if (sub_1A9976D00())
  {
    v4 = *(v0 + 360);
    v3 = *(v0 + 368);
    v5 = *(v0 + 336);
    v7 = *(v0 + 304);
    v6 = *(v0 + 312);
    v8 = *(v0 + 280);
    v9 = *(v0 + 256);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(MEMORY[0x1E69E8708] + 4);
    v13 = swift_task_alloc();
    *(v0 + 376) = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B31E0, &qword_1A999A480);
    *v13 = v0;
    v13[1] = sub_1A985C424;
    v15 = *(v0 + 144);

    return MEMORY[0x1EEE6DAC8](v0 + 392, 0, 0, v14);
  }
}

uint64_t sub_1A985C6B0()
{
  v1 = *(v0 + 384);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v51 = *(*(v0 + 160) + 16);
  v8 = swift_task_alloc();
  v8[2] = v6;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v7;
  v8[6] = v5;
  v8[7] = v3;
  v8[8] = v1;
  *(v0 + 16) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v2;
  *(v0 + 40) = v7;
  *(v0 + 48) = v5;
  *(v0 + 56) = v3;
  type metadata accessor for CombineLatestStateMachine();
  *(v0 + 64) = v6;
  *(v0 + 72) = v4;
  *(v0 + 80) = v2;
  *(v0 + 88) = v7;
  *(v0 + 96) = v5;
  *(v0 + 104) = v3;
  type metadata accessor for CombineLatestStateMachine.UpstreamThrewAction();
  sub_1A99770A0();
  sub_1A9862D90(sub_1A9861158, v8, v51);

  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  if ((~(v10 & v11) & 0xF000000000000007) != 0)
  {
    v50 = *(v0 + 120);
    v48 = *(v0 + 136);
    v49 = *(v0 + 128);
    if (v11 < 0)
    {
      v19 = *(v12 + 16);
      if (v19)
      {
        v20 = (v12 + 32);
        v21 = v9;
        sub_1A9976BC0();
        sub_1A97FC63C();

        do
        {
          v22 = *(v0 + 232);
          v23 = *v20++;
          v24 = swift_allocError();
          sub_1A99766C0();
          swift_allocError();
          *v25 = v24;
          swift_continuation_throwingResumeWithError();
          --v19;
        }

        while (v19);
      }

      else
      {
        v26 = v9;
      }

      v28 = *(v0 + 248);
      v27 = *(v0 + 256);
      v29 = *(v0 + 240);
      sub_1A9976CB0();
      v9 = v50;
      *v27 = v50;
      swift_storeEnumTagMultiPayload();
      (*(v28 + 32))(*(*(v10 + 64) + 40), v27, v29);
      swift_continuation_resume();
    }

    else
    {
      v13 = v9[2];
      if (v13)
      {
        v14 = v9 + 4;
        sub_1A9976BC0();
        sub_1A97FC63C();

        do
        {
          v15 = *(v0 + 232);
          v16 = *v14++;
          v17 = swift_allocError();
          sub_1A99766C0();
          swift_allocError();
          *v18 = v17;
          swift_continuation_throwingResumeWithError();
          --v13;
        }

        while (v13);
      }

      else
      {
      }

      sub_1A9976CB0();
      v9 = v50;
    }

    v11 = v49;
  }

  v30 = *(v0 + 384);
  v31 = *(v0 + 232);
  v32 = **(v0 + 144);
  sub_1A9976D10();
  sub_1A98611D4(v10, v9, v11);

  v33 = *(v0 + 232);
  v34 = **(v0 + 144);
  if (sub_1A9976D00())
  {
    v36 = *(v0 + 360);
    v35 = *(v0 + 368);
    v37 = *(v0 + 336);
    v39 = *(v0 + 304);
    v38 = *(v0 + 312);
    v40 = *(v0 + 280);
    v41 = *(v0 + 256);

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v44 = *(MEMORY[0x1E69E8708] + 4);
    v45 = swift_task_alloc();
    *(v0 + 376) = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B31E0, &qword_1A999A480);
    *v45 = v0;
    v45[1] = sub_1A985C424;
    v47 = *(v0 + 144);

    return MEMORY[0x1EEE6DAC8](v0 + 392, 0, 0, v46);
  }
}
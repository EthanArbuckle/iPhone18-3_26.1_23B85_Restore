uint64_t CFunctionPayload.functionInput.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CFunctionPayload(0) + 24);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CFunctionPayload.streamsOutput.setter(char a1)
{
  result = type metadata accessor for CFunctionPayload(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t CFunctionPayload.init(bundle:functionName:functionInput:streamsOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  v10 = type metadata accessor for CFunctionPayload(0);
  v11 = *(v10 + 24);
  v12 = sub_25F4A25E0();
  result = (*(*(v12 - 8) + 32))(a6 + v11, a4, v12);
  *(a6 + *(v10 + 28)) = a5;
  return result;
}

uint64_t sub_25F43583C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F435910()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4359D0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F435AA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F43A874();
  *a2 = result;
  return result;
}

void sub_25F435AD0(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656C646E7562;
  v4 = 0x6E6F6974636E7566;
  v5 = 0xED00007475706E49;
  if (*v1 != 2)
  {
    v4 = 0x4F736D6165727473;
    v5 = 0xED00007475707475;
  }

  if (*v1)
  {
    v3 = 0x6E6F6974636E7566;
    v2 = 0xEC000000656D614ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25F435B60()
{
  v1 = 0x656C646E7562;
  v2 = 0x6E6F6974636E7566;
  if (*v0 != 2)
  {
    v2 = 0x4F736D6165727473;
  }

  if (*v0)
  {
    v1 = 0x6E6F6974636E7566;
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

uint64_t sub_25F435C28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E880, &qword_25F4AB0F8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v14 = *a1;
  v13 = *(a1 + 8);
  v15 = *(a1 + 24);
  v29 = *(a1 + 32);
  v30 = v15;
  v16 = *(v6 + 56);
  v27 = v13;
  v28 = v16;
  *(&v27 - v11) = 2;
  v17 = *(a1 + 16);
  v18 = type metadata accessor for CFunctionPayload(0);
  v19 = *(v18 + 24);
  v20 = sub_25F4A25E0();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v12[v28], a1 + v19, v20);
  LODWORD(v28) = *(a1 + *(v18 + 28));
  v41 = 0;
  v22 = v27;
  v38 = v14;
  v39 = v27;
  v40 = v17;
  v37 = 1;
  v35 = v30;
  v36 = v29;
  sub_25F404B8C(v12, v10, &qword_27FD6E880, &qword_25F4AB0F8);
  LOBYTE(v18) = *v10;
  v23 = &v10[*(v6 + 56)];
  v24 = v31;
  (*(v21 + 32))(v31, v23, v20);
  (*(v21 + 56))(v24, 0, 1, v20);
  v34 = v18;
  v33 = 3;
  v32 = v28;
  sub_25F438A3C(v14, v22, v17);
  sub_25F438A94();
  sub_25F438AE8();

  v25 = sub_25F4A28B0();
  sub_25F3F21F4(v24, &qword_27FD6DAA0, &qword_25F4A5550);

  sub_25F438B3C(v38, v39, v40);
  sub_25F3F21F4(v12, &qword_27FD6E880, &qword_25F4AB0F8);
  return v25;
}

uint64_t CFunctionPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = &type metadata for CFunctionPayload.Key;
  v10 = sub_25F438A94();
  v35 = v10;
  LOBYTE(v33[0]) = 0;
  sub_25F438AE8();
  sub_25F4A2580();
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v31 = a2;
    v32 = v9;
    __swift_destroy_boxed_opaque_existential_1(v33);
    v11 = v36;
    v12 = v37;
    v13 = v38;
    if (v38 == 255)
    {
      v14 = 0;
    }

    else
    {
      v14 = v36;
    }

    if (v38 == 255)
    {
      v15 = 0;
    }

    else
    {
      v15 = v37;
    }

    v29 = v15;
    v30 = v14;
    if (v38 == 255)
    {
      v16 = 2;
    }

    else
    {
      v16 = v38;
    }

    v34 = &type metadata for CFunctionPayload.Key;
    v35 = v10;
    LOBYTE(v33[0]) = 1;
    sub_25F4A2530();
    v39 = v13;
    v26 = v16;
    v27 = v12;
    v28 = v11;
    __swift_destroy_boxed_opaque_existential_1(v33);
    v17 = v36;
    v18 = v37;
    v34 = &type metadata for CFunctionPayload.Key;
    v35 = v10;
    LOBYTE(v33[0]) = 2;
    v19 = v32;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v33);
    v34 = &type metadata for CFunctionPayload.Key;
    v35 = v10;
    LOBYTE(v33[0]) = 3;
    sub_25F4A2580();
    (*(v6 + 8))(a1, v5, v39);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v21 = v17;
    LOBYTE(v17) = v40;
    v22 = v31;
    v23 = v29;
    *v31 = v30;
    v22[1] = v23;
    *(v22 + 16) = v26;
    v22[3] = v21;
    v22[4] = v18;
    v24 = type metadata accessor for CFunctionPayload(0);
    result = (*(v6 + 32))(v22 + *(v24 + 24), v19, v5);
    *(v22 + *(v24 + 28)) = v17 & 1;
  }

  return result;
}

__n128 StaticLayerHostPayload.layerHostPayload.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t StaticLayerHostPayload.renderPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 120);
  v13 = *(v1 + 104);
  v3 = v13;
  v14 = v4;
  v15 = *(v1 + 136);
  v5 = v15;
  v6 = *(v1 + 56);
  v10[0] = *(v1 + 40);
  v10[1] = v6;
  v11 = *(v1 + 72);
  v7 = v11;
  v12 = v2;
  *a1 = v10[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  return sub_25F438B50(v10, v9);
}

__n128 StaticLayerHostPayload.init(layerHostPayload:renderPayload:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  v4 = *(a2 + 32);
  *(a3 + 88) = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a3 + 104) = *(a2 + 64);
  *(a3 + 120) = v5;
  result = *a2;
  v7 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v7;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 136) = *(a2 + 96);
  *(a3 + 72) = v4;
  return result;
}

uint64_t sub_25F4363F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x61507265646E6572;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = 0x800000025F4B6210;
  }

  else
  {
    v5 = 0xED000064616F6C79;
  }

  if (*a2)
  {
    v6 = 0x61507265646E6572;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = 0xED000064616F6C79;
  }

  else
  {
    v7 = 0x800000025F4B6210;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F4364AC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F436540()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4365C0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F43665C(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B6210;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x61507265646E6572;
    v2 = 0xED000064616F6C79;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_25F4366AC()
{
  if (*v0)
  {
    result = 0x61507265646E6572;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t StaticLayerHostPayload.propertyListValue.getter()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t sub_25F436760(uint64_t a1)
{
  v1 = *(a1 + 32);
  *&v27[55] = *(a1 + 88);
  *&v27[71] = *(a1 + 104);
  *&v27[87] = *(a1 + 120);
  *&v27[103] = *(a1 + 136);
  *&v27[7] = *(a1 + 40);
  *&v27[23] = *(a1 + 56);
  *&v27[39] = *(a1 + 72);
  v26 = 0;
  v2 = *(a1 + 16);
  v23 = *a1;
  v24 = v2;
  v25 = v1 & 1;
  v28 = 1;
  v31 = *&v27[32];
  v30 = *&v27[16];
  v29 = *v27;
  *&v34[15] = *&v27[95];
  *v34 = *&v27[80];
  v33 = *&v27[64];
  v32 = *&v27[48];
  v3 = *(a1 + 88);
  v4 = *(a1 + 120);
  v19 = *(a1 + 104);
  v20 = v4;
  v21 = *(a1 + 136);
  v5 = *(a1 + 56);
  v15 = *(a1 + 40);
  v16 = v5;
  v17 = *(a1 + 72);
  v18 = v3;
  v22 = 1;
  sub_25F43A9D0(a1, &v8);
  sub_25F404B8C(&v28, &v8, &qword_27FD6E878, &unk_25F4AB0E8);
  sub_25F438BB4();
  sub_25F438C08();
  sub_25F438C5C();
  v6 = sub_25F4A28D0();
  v35[4] = v19;
  v35[5] = v20;
  v36 = v21;
  v35[0] = v15;
  v35[1] = v16;
  v35[2] = v17;
  v35[3] = v18;
  sub_25F3F21F4(v35, &qword_27FD6E870, &qword_25F4AB0E0);
  v12 = *&v27[48];
  v13 = *&v27[64];
  v14[0] = *&v27[80];
  *(v14 + 15) = *&v27[95];
  v9 = *v27;
  v10 = *&v27[16];
  v8 = 1;
  v11 = *&v27[32];
  sub_25F3F21F4(&v8, &qword_27FD6E878, &unk_25F4AB0E8);
  return v6;
}

uint64_t StaticLayerHostPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v17 + 1) = &type metadata for StaticLayerHostPayload.Key;
  v5 = sub_25F438BB4();
  *&v18 = v5;
  LOBYTE(v16) = 0;
  sub_25F438C08();
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v16);
    v13 = v24;
    v14 = v23;
    v8 = v25;
    v15[3] = &type metadata for StaticLayerHostPayload.Key;
    v15[4] = v5;
    LOBYTE(v15[0]) = 1;
    sub_25F438C5C();
    sub_25F4A2530();
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    *(&v26[5] + 7) = v21;
    *(&v26[4] + 7) = v20;
    *(&v26[3] + 7) = v19;
    *(&v26[1] + 7) = v17;
    *(v26 + 7) = v16;
    *(&v26[6] + 7) = v22;
    *(&v26[2] + 7) = v18;
    *a2 = v14;
    *(a2 + 16) = v13;
    *(a2 + 32) = v8;
    v10 = v26[2];
    *(a2 + 81) = v26[3];
    v11 = v26[5];
    *(a2 + 97) = v26[4];
    *(a2 + 113) = v11;
    *(a2 + 128) = *(&v26[5] + 15);
    v12 = v26[1];
    *(a2 + 33) = v26[0];
    *(a2 + 49) = v12;
    *(a2 + 65) = v10;
  }

  return result;
}

uint64_t sub_25F436B64()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t NSPreviewHostablePreviewReply.auditToken.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return result;
}

double NSPreviewHostablePreviewReply.size.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t NSPreviewHostablePreviewReply.initialRenderPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 144);
  v13 = *(v1 + 128);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 160);
  v4 = v15;
  v5 = *(v1 + 80);
  v10[0] = *(v1 + 64);
  v10[1] = v5;
  v6 = *(v1 + 112);
  v11 = *(v1 + 96);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_25F438B50(v10, v9);
}

__n128 NSPreviewHostablePreviewReply.init(auditToken:windowNumber:size:scaleFactor:initialRenderPayload:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a8;
  *(a7 + 48) = a9;
  *(a7 + 56) = a10;
  v10 = *(a6 + 80);
  *(a7 + 128) = *(a6 + 64);
  *(a7 + 144) = v10;
  *(a7 + 160) = *(a6 + 96);
  v11 = *(a6 + 16);
  *(a7 + 64) = *a6;
  *(a7 + 80) = v11;
  result = *(a6 + 48);
  *(a7 + 96) = *(a6 + 32);
  *(a7 + 112) = result;
  return result;
}

uint64_t sub_25F436CA8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F436D9C()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F436E7C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F436F6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F43A8C0();
  *a2 = result;
  return result;
}

void sub_25F436F9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E65;
  v4 = 0x6B6F547469647561;
  v5 = 0xE400000000000000;
  v6 = 1702521203;
  v7 = 0xEB00000000726F74;
  v8 = 0x636146656C616373;
  if (v2 != 3)
  {
    v8 = 0xD000000000000014;
    v7 = 0x800000025F4B6260;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x754E776F646E6977;
    v3 = 0xEC0000007265626DLL;
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

uint64_t sub_25F43704C()
{
  v1 = *v0;
  v2 = 0x6B6F547469647561;
  v3 = 1702521203;
  v4 = 0x636146656C616373;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x754E776F646E6977;
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

uint64_t NSPreviewHostablePreviewReply.propertyListValue.getter()
{
  v10 = v0[8];
  v11 = v0[9];
  v12 = *(v0 + 20);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25F4A25A0();
}

uint64_t sub_25F437168(uint64_t a1)
{
  v1 = *(a1 + 96);
  *(&v41[3] + 7) = *(a1 + 112);
  v2 = *(a1 + 112);
  *(&v41[4] + 7) = *(a1 + 128);
  v3 = *(a1 + 128);
  *(&v41[5] + 7) = *(a1 + 144);
  *(&v41[6] + 7) = *(a1 + 160);
  v4 = *(a1 + 80);
  *(v41 + 7) = *(a1 + 64);
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  *(&v41[1] + 7) = v4;
  *(&v41[2] + 7) = *(a1 + 96);
  v7 = *(a1 + 16);
  v37 = *a1;
  v38 = v7;
  v31 = *(a1 + 40);
  v45 = v41[2];
  v44 = v41[1];
  v43 = v41[0];
  *&v48[15] = *(&v41[5] + 15);
  *v48 = v41[5];
  v47 = v41[4];
  v46 = v41[3];
  v8 = *(a1 + 144);
  v24 = v3;
  v25 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v40 = 0;
  v39 = 0;
  v36 = 1;
  v34 = v9;
  v35 = 0;
  v33 = 2;
  v32 = 0;
  v30 = 3;
  v28 = v10;
  v29 = 0;
  v42 = 4;
  v26 = *(a1 + 160);
  v20 = v5;
  v21 = v6;
  v22 = v1;
  v23 = v2;
  v27 = 4;
  sub_25F43A998(a1, &v13);
  sub_25F404B8C(&v42, &v13, &qword_27FD6E868, &qword_25F4AB0D8);
  type metadata accessor for audit_token_t(0);
  type metadata accessor for CGSize(0);
  sub_25F438CB8();
  sub_25F438C5C();
  v11 = sub_25F4A28A0();
  v49[4] = v24;
  v49[5] = v25;
  v50 = v26;
  v49[0] = v20;
  v49[1] = v21;
  v49[2] = v22;
  v49[3] = v23;
  sub_25F3F21F4(v49, &qword_27FD6E870, &qword_25F4AB0E0);
  v17 = v41[3];
  v18 = v41[4];
  v19[0] = v41[5];
  *(v19 + 15) = *(&v41[5] + 15);
  v14 = v41[0];
  v15 = v41[1];
  v13 = 4;
  v16 = v41[2];
  sub_25F3F21F4(&v13, &qword_27FD6E868, &qword_25F4AB0D8);
  return v11;
}

uint64_t NSPreviewHostablePreviewReply.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[3] = &type metadata for NSPreviewHostablePreviewReply.Key;
  v5 = sub_25F438CB8();
  v31[4] = v5;
  LOBYTE(v31[0]) = 0;
  type metadata accessor for audit_token_t(0);
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
    v29 = v32;
    v30 = v33;
    *(&v19 + 1) = &type metadata for NSPreviewHostablePreviewReply.Key;
    *&v20 = v5;
    LOBYTE(v18) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(&v18);
    v7 = v28;
    *(&v19 + 1) = &type metadata for NSPreviewHostablePreviewReply.Key;
    *&v20 = v5;
    LOBYTE(v18) = 2;
    type metadata accessor for CGSize(0);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(&v18);
    v8 = v26;
    v9 = v27;
    *(&v19 + 1) = &type metadata for NSPreviewHostablePreviewReply.Key;
    *&v20 = v5;
    LOBYTE(v18) = 3;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(&v18);
    v11 = v25;
    v17[3] = &type metadata for NSPreviewHostablePreviewReply.Key;
    v17[4] = v5;
    LOBYTE(v17[0]) = 4;
    sub_25F438C5C();
    sub_25F4A2530();
    v12 = sub_25F4A25E0();
    (*(*(v12 - 8) + 8))(a1, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    v13 = v30;
    *a2 = v29;
    *(a2 + 16) = v13;
    *(a2 + 32) = v7;
    *(a2 + 40) = v8;
    *(a2 + 48) = v9;
    *(a2 + 56) = v11;
    v14 = v23;
    *(a2 + 128) = v22;
    *(a2 + 144) = v14;
    *(a2 + 160) = v24;
    v15 = v19;
    *(a2 + 64) = v18;
    *(a2 + 80) = v15;
    v16 = v21;
    *(a2 + 96) = v20;
    *(a2 + 112) = v16;
  }

  return result;
}

uint64_t sub_25F4376E0()
{
  v10 = v0[8];
  v11 = v0[9];
  v12 = *(v0 + 20);
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25F4A25A0();
}

uint64_t MacOSSnapshotPayload.renderPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_25F438B50(v10, v9);
}

__n128 MacOSSnapshotPayload.init(renderPayload:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t MacOSSnapshotPayload.propertyListValue.getter()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + 12);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_25F438D54();
  sub_25F438C5C();
  return sub_25F4A25C0();
}

__n128 MacOSSnapshotPayload.init(propertyListValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[3] = &type metadata for MacOSSnapshotPayload.Key;
  v9[4] = sub_25F438D54();
  sub_25F438C5C();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  if (!v2)
  {
    v7 = v15;
    *(a2 + 64) = v14;
    *(a2 + 80) = v7;
    *(a2 + 96) = v16;
    v8 = v11;
    *a2 = v10;
    *(a2 + 16) = v8;
    result = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_25F437A64()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + 12);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_25F438D54();
  sub_25F438C5C();
  return sub_25F4A25C0();
}

__n128 sub_25F437AF8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9[3] = &type metadata for MacOSSnapshotPayload.Key;
  v9[4] = sub_25F438D54();
  sub_25F438C5C();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v9);
  if (!v2)
  {
    v7 = v15;
    *(a2 + 64) = v14;
    *(a2 + 80) = v7;
    *(a2 + 96) = v16;
    v8 = v11;
    *a2 = v10;
    *(a2 + 16) = v8;
    result = v13;
    *(a2 + 32) = v12;
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t _s19PreviewsMessagingOS15CFunctionBundleO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_25F4A3270();
        sub_25F438A3C(v6, v5, 0);
        sub_25F438A3C(v3, v2, 0);
        sub_25F438A54(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_15;
      }

      sub_25F438A3C(v14, v2, 0);
      sub_25F438A3C(v3, v2, 0);
      sub_25F438A54(v3, v2, 0);
      v18 = v3;
      v19 = v2;
      v20 = 0;
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_25F4A3270();
        sub_25F438A3C(v6, v5, 1u);
        sub_25F438A3C(v3, v2, 1u);
        sub_25F438A54(v3, v2, 1u);
        v11 = v6;
        v12 = v5;
        v13 = 1;
LABEL_15:
        sub_25F438A54(v11, v12, v13);
        return v10 & 1;
      }

      sub_25F438A3C(v8, v2, 1u);
      sub_25F438A3C(v3, v2, 1u);
      sub_25F438A54(v3, v2, 1u);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_24;
    }

LABEL_20:
    sub_25F438A3C(*a2, *(a2 + 8), v7);
    sub_25F438A3C(v3, v2, v4);
    sub_25F438A54(v3, v2, v4);
    sub_25F438A54(v6, v5, v7);
    return 0;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
    goto LABEL_20;
  }

  sub_25F438A54(*a1, v2, 2u);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_24:
  sub_25F438A54(v18, v19, v20);
  return 1;
}

BOOL _s19PreviewsMessagingOS10RegistryIDV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_25F4A20A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E8A8, &qword_25F4AB118);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_25F4A3270() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_25F4A3270() & 1) == 0 || a1[4] != a2[4])
  {
    return 0;
  }

  v25 = v8;
  v17 = *(type metadata accessor for RegistryID(0) + 28);
  v18 = *(v13 + 48);
  sub_25F404B8C(a1 + v17, v16, &qword_27FD6E620, &qword_25F4A9820);
  sub_25F404B8C(a2 + v17, &v16[v18], &qword_27FD6E620, &qword_25F4A9820);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_25F3F21F4(v16, &qword_27FD6E620, &qword_25F4A9820);
      return 1;
    }

    goto LABEL_13;
  }

  sub_25F404B8C(v16, v12, &qword_27FD6E620, &qword_25F4A9820);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_13:
    sub_25F3F21F4(v16, &qword_27FD6E8A8, &qword_25F4AB118);
    return 0;
  }

  v21 = v25;
  (*(v5 + 32))(v25, &v16[v18], v4);
  sub_25F438210(&qword_27FD6E8B0, MEMORY[0x277CC95F0]);
  v22 = sub_25F4A2C00();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v12, v4);
  sub_25F3F21F4(v16, &qword_27FD6E620, &qword_25F4A9820);
  return (v22 & 1) != 0;
}

uint64_t sub_25F438210(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F438260()
{
  result = qword_27FD6E650;
  if (!qword_27FD6E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E650);
  }

  return result;
}

unint64_t sub_25F4382B4()
{
  result = qword_27FD6E658;
  if (!qword_27FD6E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E658);
  }

  return result;
}

unint64_t sub_25F438330()
{
  result = qword_27FD6E668;
  if (!qword_27FD6E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E668);
  }

  return result;
}

unint64_t sub_25F438384()
{
  result = qword_27FD6E670;
  if (!qword_27FD6E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E670);
  }

  return result;
}

uint64_t sub_25F4383D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F438440()
{
  result = qword_27FD6E688;
  if (!qword_27FD6E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E688);
  }

  return result;
}

unint64_t sub_25F438494()
{
  result = qword_27FD6E690;
  if (!qword_27FD6E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E690);
  }

  return result;
}

uint64_t sub_25F4384E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F438570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_25F438600()
{
  result = qword_27FD6E698;
  if (!qword_27FD6E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E698);
  }

  return result;
}

unint64_t sub_25F438654()
{
  result = qword_27FD6E6A8;
  if (!qword_27FD6E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6A8);
  }

  return result;
}

unint64_t sub_25F4386A8()
{
  result = qword_27FD6E6B8;
  if (!qword_27FD6E6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6E6B0, &qword_25F4A9840);
    sub_25F43872C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6B8);
  }

  return result;
}

unint64_t sub_25F43872C()
{
  result = qword_27FD6E6C0;
  if (!qword_27FD6E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6C0);
  }

  return result;
}

uint64_t sub_25F438780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F4387E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_25F4329F4();
}

unint64_t sub_25F4387EC()
{
  result = qword_27FD6E6C8;
  if (!qword_27FD6E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6C8);
  }

  return result;
}

uint64_t sub_25F438840()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_25F433104();
}

unint64_t sub_25F43884C()
{
  result = qword_27FD6E6D0;
  if (!qword_27FD6E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6D0);
  }

  return result;
}

unint64_t sub_25F4388C8()
{
  result = qword_27FD6E6D8;
  if (!qword_27FD6E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6D8);
  }

  return result;
}

unint64_t sub_25F438924()
{
  result = qword_27FD6E6E0;
  if (!qword_27FD6E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6E0);
  }

  return result;
}

_BYTE *sub_25F438978(_BYTE *result, _BYTE *a2)
{
  v3 = *(v2 + 32);
  *result = 0;
  *a2 = 0x201u >> (8 * v3);
  return result;
}

unint64_t sub_25F438994()
{
  result = qword_27FD6E6E8;
  if (!qword_27FD6E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6E8);
  }

  return result;
}

unint64_t sub_25F4389E8()
{
  result = qword_27FD6E6F0;
  if (!qword_27FD6E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6F0);
  }

  return result;
}

uint64_t sub_25F438A3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_25F438A54(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_25F438A94()
{
  result = qword_27FD6E6F8;
  if (!qword_27FD6E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E6F8);
  }

  return result;
}

unint64_t sub_25F438AE8()
{
  result = qword_27FD6E700;
  if (!qword_27FD6E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E700);
  }

  return result;
}

uint64_t sub_25F438B3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_25F438A54(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_25F438BB4()
{
  result = qword_27FD6E708;
  if (!qword_27FD6E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E708);
  }

  return result;
}

unint64_t sub_25F438C08()
{
  result = qword_27FD6E710;
  if (!qword_27FD6E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E710);
  }

  return result;
}

unint64_t sub_25F438C5C()
{
  result = qword_27FD6E718;
  if (!qword_27FD6E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E718);
  }

  return result;
}

unint64_t sub_25F438CB8()
{
  result = qword_27FD6E720;
  if (!qword_27FD6E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E720);
  }

  return result;
}

uint64_t sub_25F438D0C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v4;
  *(a2 + 96) = *(v3 + 96);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  v6 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v6;
  return sub_25F43A960(v3, v8);
}

unint64_t sub_25F438D54()
{
  result = qword_27FD6E728;
  if (!qword_27FD6E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E728);
  }

  return result;
}

unint64_t sub_25F438DAC()
{
  result = qword_27FD6E730;
  if (!qword_27FD6E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E730);
  }

  return result;
}

unint64_t sub_25F438E4C()
{
  result = qword_27FD6E740;
  if (!qword_27FD6E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E740);
  }

  return result;
}

unint64_t sub_25F438EA4()
{
  result = qword_27FD6E748;
  if (!qword_27FD6E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E748);
  }

  return result;
}

uint64_t sub_25F438F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F438FFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E620, &qword_25F4A9820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F4390AC()
{
  sub_25F439140();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25F439140()
{
  if (!qword_27FD6E760)
  {
    sub_25F4A20A0();
    v0 = sub_25F4A3060();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD6E760);
    }
  }
}

uint64_t sub_25F439198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F4391E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F43924C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewSpecification.Value(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F4392CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewSpecification.Value(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F43933C()
{
  result = type metadata accessor for PreviewSpecification.Value(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25F4393A8()
{
  sub_25F43941C();
  if (v0 <= 0x3F)
  {
    sub_25F439480();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_25F43941C()
{
  if (!qword_27FD6E788)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD6E788);
    }
  }
}

void sub_25F439480()
{
  if (!qword_27FD6E790)
  {
    type metadata accessor for RegistryID(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD6E790);
    }
  }
}

uint64_t sub_25F439500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewSpecification(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F4395D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PreviewSpecification(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_25F439688()
{
  type metadata accessor for PreviewSpecification(319);
  if (v0 <= 0x3F)
  {
    sub_25F43970C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F43970C()
{
  if (!qword_27FD6E7A8)
  {
    v0 = sub_25F4A2E20();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD6E7A8);
    }
  }
}

uint64_t sub_25F439774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F4397BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25F439820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RegistryID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25F4398F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RegistryID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F4399B0()
{
  result = type metadata accessor for RegistryID(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS15CFunctionBundleO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_25F439A50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F439A98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_25F439ADC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25F439B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25F4A25E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F439BD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_25F4A25E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F439C7C()
{
  result = sub_25F4A25E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_25F439D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F439D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_25F439E2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F439E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 136) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25F439F18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F439F60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F43A0D4()
{
  result = qword_27FD6E7D0;
  if (!qword_27FD6E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E7D0);
  }

  return result;
}

unint64_t sub_25F43A12C()
{
  result = qword_27FD6E7D8;
  if (!qword_27FD6E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E7D8);
  }

  return result;
}

unint64_t sub_25F43A184()
{
  result = qword_27FD6E7E0;
  if (!qword_27FD6E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E7E0);
  }

  return result;
}

unint64_t sub_25F43A1DC()
{
  result = qword_27FD6E7E8;
  if (!qword_27FD6E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E7E8);
  }

  return result;
}

unint64_t sub_25F43A234()
{
  result = qword_27FD6E7F0;
  if (!qword_27FD6E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E7F0);
  }

  return result;
}

unint64_t sub_25F43A28C()
{
  result = qword_27FD6E7F8;
  if (!qword_27FD6E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E7F8);
  }

  return result;
}

unint64_t sub_25F43A2E4()
{
  result = qword_27FD6E800;
  if (!qword_27FD6E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E800);
  }

  return result;
}

unint64_t sub_25F43A33C()
{
  result = qword_27FD6E808;
  if (!qword_27FD6E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E808);
  }

  return result;
}

unint64_t sub_25F43A394()
{
  result = qword_27FD6E810;
  if (!qword_27FD6E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E810);
  }

  return result;
}

unint64_t sub_25F43A3EC()
{
  result = qword_27FD6E818;
  if (!qword_27FD6E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E818);
  }

  return result;
}

unint64_t sub_25F43A444()
{
  result = qword_27FD6E820;
  if (!qword_27FD6E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E820);
  }

  return result;
}

unint64_t sub_25F43A49C()
{
  result = qword_27FD6E828;
  if (!qword_27FD6E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E828);
  }

  return result;
}

unint64_t sub_25F43A4F4()
{
  result = qword_27FD6E830;
  if (!qword_27FD6E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E830);
  }

  return result;
}

unint64_t sub_25F43A54C()
{
  result = qword_27FD6E838;
  if (!qword_27FD6E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E838);
  }

  return result;
}

unint64_t sub_25F43A5A4()
{
  result = qword_27FD6E840;
  if (!qword_27FD6E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E840);
  }

  return result;
}

unint64_t sub_25F43A5FC()
{
  result = qword_27FD6E848;
  if (!qword_27FD6E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E848);
  }

  return result;
}

unint64_t sub_25F43A650()
{
  result = qword_27FD6E850;
  if (!qword_27FD6E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E850);
  }

  return result;
}

unint64_t sub_25F43A6A4()
{
  result = qword_27FD6E858;
  if (!qword_27FD6E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E858);
  }

  return result;
}

uint64_t sub_25F43A6F8()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F43A744()
{
  v0 = sub_25F4A3170();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F43A790()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F43A7DC()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F43A828()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F43A874()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F43A8C0()
{
  v0 = sub_25F4A3170();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F43A90C()
{
  result = qword_27FD6E860;
  if (!qword_27FD6E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E860);
  }

  return result;
}

unint64_t sub_25F43AA08()
{
  result = qword_27FD6E888;
  if (!qword_27FD6E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E888);
  }

  return result;
}

uint64_t sub_25F43AAE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v44 - v7;
  v9 = sub_25F4A25E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for LazyPropertyList();
  v13 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_25F4A2AE0();
  v16 = *(v49 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v49);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2AC0();
  sub_25F404B8C(v3, &v54, &qword_27FD6E930, &qword_25F4AB208);

  v20 = sub_25F4A2AD0();
  v21 = sub_25F4A3000();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = v8;
    v23 = v22;
    v24 = swift_slowAlloc();
    v47 = v9;
    v25 = v24;
    v53 = v24;
    *v23 = 136446466;
    v45 = v15;
    v46 = v10;
    v26 = a2;
    v27 = *v3;
    v28 = v3[1];

    sub_25F3F21F4(v3, &qword_27FD6E930, &qword_25F4AB208);
    v29 = sub_25F41272C(v27, v28, &v53);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2082;
    v54 = v52;
    v55 = v26;

    v30 = sub_25F4A2C30();
    v32 = sub_25F41272C(v30, v31, &v53);
    a2 = v26;
    v15 = v45;

    *(v23 + 14) = v32;
    v10 = v46;
    _os_log_impl(&dword_25F3DE000, v20, v21, "%{public}s sending one-way message: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    v33 = v25;
    v9 = v47;
    MEMORY[0x25F8DE250](v33, -1, -1);
    v34 = v23;
    v8 = v48;
    MEMORY[0x25F8DE250](v34, -1, -1);
  }

  else
  {
    sub_25F3F21F4(v3, &qword_27FD6E930, &qword_25F4AB208);
  }

  v35 = (*(v16 + 8))(v19, v49);
  v36 = v51;
  v54 = v52;
  v55 = a2;
  if (v3[5])
  {
    v37 = v3[4];
    MEMORY[0x28223BE20](v35);
    *(&v44 - 4) = v39;
    *(&v44 - 3) = v38;
    *(&v44 - 2) = &v54;
    sub_25F4A25C0();
  }

  else
  {
    sub_25F4A2940();
  }

  (*(v10 + 32))(v15, v36, v9);
  swift_storeEnumTagMultiPayload();
  v40 = v3[2];
  v41 = v3[3];
  v42 = type metadata accessor for TransportReply();
  (*(*(v42 - 8) + 56))(v8, 1, 1, v42);
  v40(v15, v8);
  sub_25F3F21F4(v8, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F440ACC(v15, type metadata accessor for LazyPropertyList);
}

uint64_t sub_25F43AFDC(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v27 = a1;
  v2 = type metadata accessor for TransportReply();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F4A2A70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E940, &qword_25F4AB220);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v26 - v17);
  v19 = *(v12 + 56);
  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E938, &unk_25F4AB210);
  v20 = sub_25F4A2F70();
  (*(v7 + 8))(v10, v6);
  *v18 = v20;
  sub_25F4A2A80();
  sub_25F404B8C(v18, v16, &qword_27FD6E940, &qword_25F4AB220);
  v21 = *v16;

  sub_25F43B7F4(v10, &v16[*(v12 + 56)], v5);
  sub_25F43B2D0(v27, v28, v5);
  sub_25F440ACC(v5, type metadata accessor for TransportReply);
  sub_25F428728(v18, v16, &qword_27FD6E940, &qword_25F4AB220);
  v22 = *v16;
  v23 = *(v12 + 56);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E948, &qword_25F4AB228);
  (*(*(v24 - 8) + 8))(&v16[v23], v24);
  return v22;
}

uint64_t sub_25F43B2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v45 - v9;
  v11 = sub_25F4A25E0();
  v52 = *(v11 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v11);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for LazyPropertyList();
  v14 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_25F4A2AE0();
  v17 = *(v49 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v49);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2AC0();
  sub_25F404B8C(v4, &v55, &qword_27FD6E930, &qword_25F4AB208);

  v21 = sub_25F4A2AD0();
  v22 = sub_25F4A3000();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v47 = a3;
    v24 = v23;
    v25 = swift_slowAlloc();
    v46 = v11;
    v26 = v25;
    v54 = v25;
    *v24 = 136446466;
    v48 = v10;
    v45 = v16;
    v27 = a2;
    v29 = *v4;
    v28 = v4[1];

    sub_25F3F21F4(v4, &qword_27FD6E930, &qword_25F4AB208);
    v30 = sub_25F41272C(v29, v28, &v54);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2082;
    v55 = v53;
    v56 = v27;

    v31 = sub_25F4A2C30();
    v33 = sub_25F41272C(v31, v32, &v54);
    a2 = v27;
    v16 = v45;

    *(v24 + 14) = v33;
    v10 = v48;
    _os_log_impl(&dword_25F3DE000, v21, v22, "%{public}s sending two-way message: %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    v34 = v26;
    v11 = v46;
    MEMORY[0x25F8DE250](v34, -1, -1);
    v35 = v24;
    a3 = v47;
    MEMORY[0x25F8DE250](v35, -1, -1);
  }

  else
  {
    sub_25F3F21F4(v4, &qword_27FD6E930, &qword_25F4AB208);
  }

  v36 = (*(v17 + 8))(v20, v49);
  v55 = v53;
  v56 = a2;
  v37 = v51;
  if (v4[5])
  {
    v38 = v4[4];
    MEMORY[0x28223BE20](v36);
    *(&v45 - 4) = v40;
    *(&v45 - 3) = v39;
    *(&v45 - 2) = &v55;
    sub_25F4A25C0();
  }

  else
  {
    sub_25F4A2940();
  }

  (*(v52 + 32))(v16, v37, v11);
  swift_storeEnumTagMultiPayload();
  v41 = v4[2];
  v42 = v4[3];
  sub_25F440780(a3, v10, type metadata accessor for TransportReply);
  v43 = type metadata accessor for TransportReply();
  (*(*(v43 - 8) + 56))(v10, 0, 1, v43);
  v41(v16, v10);
  sub_25F3F21F4(v10, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F440ACC(v16, type metadata accessor for LazyPropertyList);
}

uint64_t sub_25F43B7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a1;
  v34 = a3;
  v5 = sub_25F4A2910();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E948, &qword_25F4AB228);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = sub_25F4A2A70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E950, &qword_25F4AB230);
  v33 = *(v31 - 8);
  v18 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v20 = &v27 - v19;
  (*(v14 + 16))(v17, a1, v13);
  v21 = *(v9 + 16);
  v28 = v8;
  v21(v12, a2, v8);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v22, v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E938, &unk_25F4AB210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2430();
  sub_25F4A2420();
  sub_25F4A2A80();
  type metadata accessor for LazyPropertyList();
  v24 = v31;
  sub_25F4A2490();
  (*(v9 + 8))(v29, v28);
  v25 = *(v14 + 8);
  v25(v30, v13);
  v25(v17, v13);
  return (*(v33 + 8))(v20, v24);
}

uint64_t sub_25F43BBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E988, &qword_25F4AB258);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_25F404B8C(a1, &v12 - v6, &qword_27FD6E988, &qword_25F4AB258);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_25F428728(v7, a2, &qword_27FD6E990, &qword_25F4AB260);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

uint64_t sub_25F43BD40(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v51 = type metadata accessor for AsyncMessageStream.Event(0);
  v3 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v49 = (v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D428, &qword_25F4A41D8);
  v64 = *(v52 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B8, &qword_25F4AB2A0);
  v8 = *(v7 - 8);
  v61 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - v9;
  v11 = *(a2 + 16);
  v48 = *(a2 + 8);
  v59 = v11;
  v63 = type metadata accessor for AsyncMessageStream(0);
  v67 = v63;
  v53 = type metadata accessor for AsyncMessageStream;
  v12 = sub_25F440A1C(&qword_27FD6D440, type metadata accessor for AsyncMessageStream);
  v68 = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v66);
  v47 = a2;
  sub_25F440780(a2, boxed_opaque_existential_1, type metadata accessor for AsyncMessageStream);
  v56 = *(v8 + 16);
  v57 = v8 + 16;
  v14 = v62;
  v56(v10, v62, v7);
  v60 = *(v8 + 80);
  v15 = (v60 + 16) & ~v60;
  v16 = swift_allocObject();
  v55 = *(v8 + 32);
  v17 = v7;
  v55(v16 + v15, v10, v7);
  sub_25F412F74(v66, v65);
  v18 = swift_allocObject();
  v58 = v18;
  *(v18 + 16) = sub_25F440B40;
  *(v18 + 24) = v16;
  sub_25F412FDC(v65, v18 + 32);
  v19 = v59;

  __swift_destroy_boxed_opaque_existential_1(v66);
  v67 = v63;
  v68 = v12;
  v20 = __swift_allocate_boxed_opaque_existential_1(v66);
  sub_25F440780(a2, v20, type metadata accessor for AsyncMessageStream);
  v21 = v10;
  v22 = v56;
  v56(v10, v14, v17);
  v54 = v15;
  v23 = swift_allocObject();
  v24 = v10;
  v25 = v55;
  v46 = v8 + 32;
  v55(v23 + v15, v24, v17);
  sub_25F412F74(v66, v65);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_25F44080C;
  *(v26 + 24) = v23;
  sub_25F412FDC(v65, v26 + 32);
  __swift_destroy_boxed_opaque_existential_1(v66);
  v27 = swift_allocObject();
  *(v27 + 2) = v48;
  *(v27 + 3) = v19;
  v28 = v58;
  *(v27 + 4) = sub_25F440800;
  *(v27 + 5) = v28;
  *(v27 + 6) = sub_25F4408DC;
  *(v27 + 7) = v26;
  v43[1] = v26;
  v44 = v21;
  v45 = v17;
  v22(v21, v62, v17);
  v29 = v54;
  v30 = swift_allocObject();
  v31 = v30 + v29;
  v32 = v30;
  v25(v31, v21, v17);
  v33 = *(v63 + 24);
  v34 = v49;
  *v49 = sub_25F440948;
  v34[1] = v32;
  v48 = v32;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  v35 = v50;
  sub_25F4A2EE0();
  v36 = *(v64 + 8);
  v64 += 8;
  v37 = v52;
  v36(v35, v52);
  *v34 = sub_25F440940;
  v34[1] = v27;
  swift_storeEnumTagMultiPayload();

  sub_25F4A2EE0();

  v36(v35, v37);
  v38 = v44;
  v39 = v45;
  v56(v44, v62, v45);
  v40 = v54;
  v41 = swift_allocObject();
  v55(v41 + v40, v38, v39);
  sub_25F440A1C(&qword_27FD6D450, v53);
  sub_25F4A2930();
}

uint64_t sub_25F43C410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E988, &qword_25F4AB258);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9C0, &qword_25F4AB2A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  sub_25F404B8C(a1, v5, &qword_27FD6E990, &qword_25F4AB260);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B8, &qword_25F4AB2A0);
  sub_25F4A2EE0();
  v12 = (*(v7 + 88))(v10, v6);
  LODWORD(v5) = *MEMORY[0x277D85748];
  result = (*(v7 + 8))(v10, v6);
  if (v12 == v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9C8, qword_25F4AB2B8);
    sub_25F3F2708(qword_27FD6E9D0, &qword_27FD6E9C8, qword_25F4AB2B8);
    swift_allocError();
    sub_25F404B8C(a1, v14, &qword_27FD6E990, &qword_25F4AB260);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25F43C684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E988, &qword_25F4AB258);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9C0, &qword_25F4AB2A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B8, &qword_25F4AB2A0);
  sub_25F4A2EE0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25F43C80C(uint64_t a1, void *a2)
{
  v4 = sub_25F4A25E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27[-1] - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27[-1] - v13;
  result = LazyPropertyList.propertyList.getter(&v27[-1] - v13);
  if (!v2)
  {
    v16 = v5;
    v28 = 0;
    v17 = a2[3];
    v18 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v17);
    v19 = (*(v18 + 40))(v17, v18);
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      (*(v16 + 16))(v12, v14, v4);
      v27[3] = MEMORY[0x277D837D0];
      v27[4] = MEMORY[0x277D405A0];
      v27[0] = v21;
      v27[1] = v22;
      v23 = v28;
      sub_25F4A2530();
      v24 = *(v16 + 8);
      v24(v12, v4);
      v24(v14, v4);
      if (v23)
      {
        return __swift_destroy_boxed_opaque_existential_1(v27);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v27);
        return v27[5];
      }
    }

    else
    {
      (*(v16 + 16))(v9, v14, v4);
      v25 = v28;
      sub_25F4A2950();
      if (v25)
      {
        return (*(v16 + 8))(v14, v4);
      }

      else
      {
        (*(v16 + 8))(v14, v4);
        return v27[0];
      }
    }
  }

  return result;
}

uint64_t sub_25F43CACC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void *a4)
{
  v7 = sub_25F4A2AE0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v15 - v11);
  *v12 = sub_25F43C80C(a1, a4);
  v12[1] = v13;
  swift_storeEnumTagMultiPayload();
  a2(v12);
  return sub_25F3F21F4(v12, &qword_27FD6E990, &qword_25F4AB260);
}

uint64_t sub_25F43CD54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void *a5)
{
  v21[1] = a4;
  v22 = a3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v8 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v9 = sub_25F4A2A70();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v23 = sub_25F4A2AE0();
  v11 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v21 - v14);
  v16 = sub_25F43C80C(a1, a5);
  v18 = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B0, &unk_25F4AB290) + 48);
  *v15 = v16;
  v15[1] = v18;
  sub_25F440780(a2, v15 + v19, type metadata accessor for TransportReply);
  swift_storeEnumTagMultiPayload();
  v22(v15);
  return sub_25F3F21F4(v15, &qword_27FD6E990, &qword_25F4AB260);
}

uint64_t SampleStreamAgent.__allocating_init(messageStream:description:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  SampleStreamAgent.init(messageStream:description:offset:)(a1, a2, a3, a4);
  return v11;
}

uint64_t SampleStreamAgent.init(messageStream:description:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for MessageStream(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v24 - v16;
  *(v5 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_messages) = &unk_2871762A0;
  *(v5 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_replies) = &unk_287176330;
  sub_25F440780(a1, v5 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_messageStream, type metadata accessor for MessageStream);
  v18 = (v5 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_description);
  *v18 = a2;
  v18[1] = a3;
  sub_25F43D5E0(1953066601, 0xE400000000000000);

  sub_25F43EAF0(sub_25F43DC1C, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E8E0, &qword_25F4AB158);
  v19 = sub_25F4A2EA0();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  sub_25F440780(a1, v13, type metadata accessor for MessageStream);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = swift_allocObject();
  sub_25F440A64(v13, v21 + v20, type metadata accessor for MessageStream);
  sub_25F4A2A40();

  v22 = swift_allocObject();
  *(v22 + 16) = v5;
  *(v22 + 24) = a4;

  sub_25F4A2A20();

  sub_25F440A1C(&qword_27FD6E8E8, type metadata accessor for MessageStream);

  sub_25F4A25F0();

  sub_25F440ACC(a1, type metadata accessor for MessageStream);
  return v5;
}

uint64_t sub_25F43D5E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25F4A2AE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA__0();

  v11 = sub_25F4A2AD0();
  v12 = _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA0__0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_25F41272C(*(v3 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_description), *(v3 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_description + 8), &v17);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_25F41272C(a1, a2, &v17);
    _os_log_impl(&dword_25F3DE000, v11, v12, "StreamAgent[%s]: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8DE250](v14, -1, -1);
    MEMORY[0x25F8DE250](v13, -1, -1);
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_25F43D7D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = sub_25F4A2120();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E998, &qword_25F4AB278);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for MessageStream.Responder(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  sub_25F404B8C(a2, v12, &qword_27FD6E998, &qword_25F4AB278);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25F3F21F4(v12, &qword_27FD6E998, &qword_25F4AB278);
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_25F4A30F0();

    v37[0] = 0xD000000000000015;
    v37[1] = 0x800000025F4B7EF0;
    MEMORY[0x25F8DD480](v18, v19);
    MEMORY[0x25F8DD480](39, 0xE100000000000000);
    sub_25F43D5E0(v37[0], v37[1]);
  }

  sub_25F440A64(v12, v17, type metadata accessor for MessageStream.Responder);
  v21 = *(v36 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_replies);
  result = *(v21 + 16);
  if (!result)
  {
    goto LABEL_10;
  }

  result = sub_25F43FDB4(result);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(v21 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v22 = v18;
  v23 = v21 + 16 * result;
  v25 = *(v23 + 32);
  v24 = *(v23 + 40);
  v37[0] = 45;
  v37[1] = 0xE100000000000000;

  sub_25F4A2110();
  sub_25F440A1C(&qword_27FD6E928, MEMORY[0x277D403A8]);
  v26 = v17;
  v27 = v35;
  v28 = sub_25F4A3210();
  MEMORY[0x25F8DD480](v28);

  (*(v34 + 8))(v8, v27);
  v29 = v37[0];
  v30 = v37[1];
  v37[0] = v25;
  v37[1] = v24;

  MEMORY[0x25F8DD480](v29, v30);

  v32 = v37[0];
  v31 = v37[1];
  v37[0] = 0;
  v37[1] = 0xE000000000000000;
  sub_25F4A30F0();

  strcpy(v37, "got message '");
  HIWORD(v37[1]) = -4864;
  MEMORY[0x25F8DD480](v22, v19);
  MEMORY[0x25F8DD480](0x206C6C6977202C27, 0xEF2720796C706572);
  MEMORY[0x25F8DD480](v32, v31);
  MEMORY[0x25F8DD480](39, 0xE100000000000000);
  sub_25F43D5E0(v37[0], v37[1]);

  sub_25F43DC24(v32, v31);

  return sub_25F440ACC(v26, type metadata accessor for MessageStream.Responder);
}

uint64_t sub_25F43DC24(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4A25E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  v18[0] = sub_25F4A2A70();
  v13 = *(v18[0] - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v18[0]);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[2] = a1;
  v18[3] = a2;
  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E938, &unk_25F4AB210);
  sub_25F3F2708(&qword_27FD6E958, &qword_27FD6E938, &unk_25F4AB210);
  sub_25F4A2940();
  (*(v5 + 32))(v12, v8, v4);
  type metadata accessor for LazyPropertyList();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v12, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v13 + 8))(v16, v18[0]);
}

uint64_t sub_25F43DEE4(uint64_t *a1)
{
  v2 = *a1;
  v5 = *(a1 + 3);
  v3 = a1[5];
  sub_25F43D5E0(0x646E657320746F67, 0xEA00000000007265);
  v6 = v2;
  v7 = *(a1 + 1);
  v8 = v5;
  v9 = v3;
  return sub_25F43DF74(&v6);
}

uint64_t sub_25F43DF74(__int128 *a1)
{
  v2 = sub_25F4A2AF0();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_25F4A2B10();
  v27 = *(v28 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v28);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F4A2B30();
  v26 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = a1[1];
  v32 = *a1;
  v33 = v17;
  v34 = a1[2];
  sub_25F43FFC8();
  v24 = sub_25F4A3050();
  sub_25F4A2B20();
  sub_25F4A2B40();
  v25 = *(v10 + 8);
  v25(v14, v9);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v20 = v33;
  *(v19 + 24) = v32;
  *(v19 + 16) = v18;
  *(v19 + 40) = v20;
  *(v19 + 56) = v34;
  aBlock[4] = sub_25F44009C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F43E9CC;
  aBlock[3] = &block_descriptor;
  v21 = _Block_copy(aBlock);
  sub_25F404B8C(&v32, v30, &qword_27FD6E908, &qword_25F4AB1E0);

  sub_25F4A2B00();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25F440A1C(&qword_27FD6E910, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E918, &qword_25F4AB1E8);
  sub_25F3F2708(&qword_27FD6E920, &qword_27FD6E918, &qword_25F4AB1E8);
  sub_25F4A30A0();
  v22 = v24;
  MEMORY[0x25F8DD850](v16, v8, v5, v21);
  _Block_release(v21);

  (*(v29 + 8))(v5, v2);
  (*(v27 + 8))(v8, v28);
  return (v25)(v16, v26);
}

uint64_t SampleStreamAgent.deinit()
{
  sub_25F43D5E0(0x74696E696564, 0xE600000000000000);
  sub_25F440ACC(v0 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_messageStream, type metadata accessor for MessageStream);
  v1 = *(v0 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_description + 8);

  v2 = *(v0 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_messages);

  v3 = *(v0 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_replies);

  return v0;
}

uint64_t SampleStreamAgent.__deallocating_deinit()
{
  sub_25F43D5E0(0x74696E696564, 0xE600000000000000);
  sub_25F440ACC(v0 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_messageStream, type metadata accessor for MessageStream);
  v1 = *(v0 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_description + 8);

  v2 = *(v0 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_messages);

  v3 = *(v0 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_replies);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_25F43E528(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = a2[1];
    v6 = *a2;
    v7 = v3;
    v8 = a2[2];
    sub_25F43E5E8(&v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    v8 = a2[2];
    sub_25F43DF74(&v6, 20.0);
  }

  return result;
}

unint64_t sub_25F43E5E8(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_25F4A2120();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v29 = *a1;
  v30 = v13;
  v31 = a1[2];
  v14 = *(v2 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_messages);
  result = *(v14 + 16);
  if (!result)
  {
    goto LABEL_10;
  }

  result = sub_25F43FDB4(result);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(v14 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v16 = v14 + 16 * result;
  v18 = *(v16 + 32);
  v17 = *(v16 + 40);
  v27 = 45;
  v28 = 0xE100000000000000;

  sub_25F4A2110();
  sub_25F440A1C(&qword_27FD6E928, MEMORY[0x277D403A8]);
  v19 = sub_25F4A3210();
  MEMORY[0x25F8DD480](v19);

  (*(v9 + 8))(v12, v8);
  v20 = v27;
  v21 = v28;
  v27 = v18;
  v28 = v17;

  MEMORY[0x25F8DD480](v20, v21);

  v23 = v27;
  v22 = v28;
  v27 = 0;
  MEMORY[0x25F8DE260](&v27, 8);
  if ((v27 & 0x20000) != 0)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_25F4A30F0();

    v27 = 0xD000000000000011;
    v28 = 0x800000025F4B7E90;
    MEMORY[0x25F8DD480](v23, v22);
    MEMORY[0x25F8DD480](0x7220687469772027, 0xEC000000796C7065);
    sub_25F43D5E0(v27, v28);

    v24 = sub_25F43AFDC(v23, v22);

    v25 = sub_25F4A2EA0();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = sub_25F4400C0;
    v26[5] = v2;
    v26[6] = v24;
    sub_25F494FEC(0, 0, v7, &unk_25F4AB1F8, v26);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_25F4A30F0();

    v27 = 0xD000000000000019;
    v28 = 0x800000025F4B7EB0;
    MEMORY[0x25F8DD480](v23, v22);
    MEMORY[0x25F8DD480](39, 0xE100000000000000);
    sub_25F43D5E0(v27, v28);

    sub_25F43AAE8(v23, v22);
  }
}

uint64_t sub_25F43E9CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_25F43EA10(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD000000000000012, 0x800000025F4B7ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E968, &qword_25F4AB238);
  sub_25F4A3140();
  MEMORY[0x25F8DD480](39, 0xE100000000000000);
  sub_25F43D5E0(0, 0xE000000000000000);
}

uint64_t sub_25F43EAF0(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v29 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E970, &qword_25F4AB240);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E978, &qword_25F4AB248);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E980, &qword_25F4AB250);
  v15 = *(v31 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v31);
  v18 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - v19;
  v35 = v2 + *(type metadata accessor for MessageStream(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E988, &qword_25F4AB258);
  (*(v6 + 104))(v9, *MEMORY[0x277D85778], v30);
  sub_25F4A2F60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  sub_25F4A2F20();
  (*(v11 + 8))(v14, v10);
  v21 = sub_25F4A2EA0();
  v22 = v32;
  (*(*(v21 - 8) + 56))(v32, 1, 1, v21);
  v23 = v31;
  (*(v15 + 16))(v18, v20, v31);
  v24 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v15 + 32))(v25 + v24, v18, v23);
  v26 = (v25 + ((v16 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v34;
  *v26 = v33;
  v26[1] = v27;

  sub_25F494FEC(0, 0, v22, &unk_25F4AB270, v25);

  return (*(v15 + 8))(v20, v23);
}

uint64_t sub_25F43EF10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25F43EF30, 0, 0);
}

uint64_t sub_25F43EF30()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for MessageStream(0) + 20);
  v0[4] = *(v2 + 8);
  v0[5] = *(v2 + 16);
  v3 = sub_25F440A1C(&qword_27FD6D440, type metadata accessor for AsyncMessageStream);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AsyncMessageStream(0);

  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_25F43F0B8;

  return v9(v5, v3);
}

uint64_t sub_25F43F0B8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = sub_25F43F224;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v9 = sub_25F43F1EC;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F43F1EC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  *v2 = *(v0 + 32);
  *(v2 + 8) = v1;
  *(v2 + 16) = vextq_s8(v3, v3, 8uLL);
  *(v2 + 32) = xmmword_25F4AB140;
  return (*(v0 + 8))();
}

uint64_t sub_25F43F224()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_25F43F288()
{
  v1 = (type metadata accessor for MessageStream(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = (v0 + v3 + v1[7]);
  v7 = *v6;

  v8 = *(v6 + 2);

  v9 = type metadata accessor for AsyncMessageStream(0);
  v10 = *(v9 + 24);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  (*(*(v11 - 8) + 8))(&v6[v10], v11);
  v12 = *&v6[*(v9 + 28)];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F43F3B4(uint64_t a1)
{
  v4 = *(type metadata accessor for MessageStream(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F3F30B0;

  return sub_25F43EF10(a1, v1 + v5);
}

uint64_t sub_25F43F490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = *(*(type metadata accessor for TransportReply() - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E998, &qword_25F4AB278) - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  v6[11] = v9;
  v10 = *(v9 - 8);
  v6[12] = v10;
  v11 = *(v10 + 64) + 15;
  v6[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9A0, &qword_25F4AB280) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9A8, &qword_25F4AB288);
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F43F664, 0, 0);
}

uint64_t sub_25F43F664()
{
  v1 = v0[17];
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E980, &qword_25F4AB250);
  sub_25F4A2F10();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_25F43F72C;
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_25F43F72C()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F43F828, 0, 0);
}

uint64_t sub_25F43F828()
{
  v1 = v0[14];
  if ((*(v0[12] + 48))(v1, 1, v0[11]) == 1)
  {
    v2 = v0[13];
    v4 = v0[9];
    v3 = v0[10];
    (*(v0[16] + 8))(v0[17], v0[15]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    sub_25F428728(v1, v0[13], &qword_27FD6E990, &qword_25F4AB260);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = v0[13];
    v9 = v0[10];
    if (EnumCaseMultiPayload == 1)
    {
      v10 = v0[8];
      v11 = v0[9];
      v12 = v0[7];
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B0, &unk_25F4AB290) + 48);
      v14 = v8[1];
      v0[2] = *v8;
      v0[3] = v14;
      sub_25F440A64(v8 + v13, v11, type metadata accessor for TransportReply);
      sub_25F440780(v11, v9, type metadata accessor for TransportReply);
      v15 = type metadata accessor for MessageStream.Responder(0);
      (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
      v12(v0 + 2, v9);
      sub_25F3F21F4(v9, &qword_27FD6E998, &qword_25F4AB278);
      sub_25F440ACC(v11, type metadata accessor for TransportReply);
    }

    else
    {
      v17 = v0[7];
      v16 = v0[8];
      v18 = v8[1];
      v0[4] = *v8;
      v0[5] = v18;
      v19 = type metadata accessor for MessageStream.Responder(0);
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
      v17(v0 + 4, v9);
      sub_25F3F21F4(v9, &qword_27FD6E998, &qword_25F4AB278);
    }

    v20 = *(MEMORY[0x277D85798] + 4);
    v21 = swift_task_alloc();
    v0[18] = v21;
    *v21 = v0;
    v21[1] = sub_25F43F72C;
    v22 = v0[17];
    v23 = v0[14];
    v24 = v0[15];

    return MEMORY[0x2822003E8](v23, 0, 0, v24);
  }
}

uint64_t sub_25F43FB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a4;
  v6[9] = a5;
  v8 = *(MEMORY[0x277D857D0] + 4);
  v9 = swift_task_alloc();
  v6[10] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E938, &unk_25F4AB210);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  *v9 = v6;
  v9[1] = sub_25F43FC1C;
  v12 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v6 + 5, a6, v10, v11, v12);
}

uint64_t sub_25F43FC1C()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F43FD18, 0, 0);
}

uint64_t sub_25F43FD18()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 48);
  }

  *(v0 + 16) = v3;
  *(v0 + 24) = v6;
  *(v0 + 32) = v5;
  v1(v0 + 16);
  sub_25F4401DC(v3, v4, v5);
  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_25F43FDB4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x25F8DE260](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x25F8DE260](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F43FE40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F43FE78(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25F43DEE4(a1);
}

uint64_t type metadata accessor for SampleStreamAgent()
{
  result = qword_27FD6E8F0;
  if (!qword_27FD6E8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F43FEF4()
{
  result = type metadata accessor for MessageStream(319);
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

unint64_t sub_25F43FFC8()
{
  result = qword_27FD6E900;
  if (!qword_27FD6E900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD6E900);
  }

  return result;
}

uint64_t sub_25F440014()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F44004C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F4400C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F440110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F3FAD34;

  return sub_25F43FB34(a1, v4, v5, v6, v7, v8);
}

void sub_25F4401DC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25F4401EC(void *a1, void *a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[4];
  v6 = v5[1];
  *a2 = *v5;
  a2[1] = v6;
  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_25F440238(uint64_t a1, __int128 *a2)
{
  v3 = sub_25F4A2A70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(a2 + 16);
  v9 = *a2;
  v10 = v6;
  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E948, &qword_25F4AB228);
  sub_25F3F2708(&qword_27FD6E960, &qword_27FD6E948, &qword_25F4AB228);
  sub_25F4A2660();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_25F4403BC(uint64_t a1, __int128 *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E948, &qword_25F4AB228) - 8) + 80);

  return sub_25F440238(a1, a2);
}

uint64_t sub_25F440448@<X0>(void *a1@<X8>)
{
  v3 = sub_25F4A25E0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  result = LazyPropertyList.propertyList.getter(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E938, &unk_25F4AB210);
    sub_25F3F2708(&qword_27FD6E958, &qword_27FD6E938, &unk_25F4AB210);
    result = sub_25F4A2950();
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_25F440558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E980, &qword_25F4AB250);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F440640(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E980, &qword_25F4AB250) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F3F30B0;

  return sub_25F43F490(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_25F440780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_34Tm()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25F4408E8()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  if (v0[6])
  {
    v3 = v0[7];
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F440948()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B8, &qword_25F4AB2A0) - 8) + 80);

  return sub_25F43C684();
}

uint64_t sub_25F4409B4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B8, &qword_25F4AB2A0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_25F4A2EF0();
}

uint64_t sub_25F440A1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F440A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F440ACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F440BC0(void *a1, void *a2)
{
  v4 = sub_25F4A2710();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F4A2A70();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[10] || a2[10])
  {
    sub_25F4A2A80();
    sub_25F4A2720();
    (*(v10 + 8))(v13, v9);
    v15 = a1[2];
    v14 = a1[3];
    swift_getObjectType();
    v23 = v15;
    v16 = *(*(v14 + 8) + 8);
    swift_unknownObjectRetain();
    sub_25F4A2700();
    sub_25F4A2690();
    v17 = *(v5 + 8);
    v17(v8, v4);
    swift_unknownObjectRelease();
    v19 = a2[2];
    v18 = a2[3];
    swift_getObjectType();
    v23 = v19;
    v20 = *(*(v18 + 8) + 8);
    swift_unknownObjectRetain();
    sub_25F4A2700();
    sub_25F4A2690();
    v17(v8, v4);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_25F441250(a2);
    return sub_25F441250(a1);
  }
}

void *sub_25F440E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  result[9] = a8;
  result[10] = 0;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  return result;
}

uint64_t sub_25F440F18(uint64_t a1)
{
  v3 = sub_25F4A2A70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 80);
  if (v8)
  {
    v10 = *(v8 + 48);
    v9 = *(v8 + 56);

    v10(a1, v8);
  }

  else
  {
    sub_25F4A2A80();
    sub_25F4A2720();
    return (*(v4 + 8))(v7, v3);
  }
}

void *sub_25F441088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = 0;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  return v8;
}

uint64_t sub_25F4410A4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 32);

    MEMORY[0x25F8DD480](v2, v1);
    MEMORY[0x25F8DD480](8231, 0xE200000000000000);

    v3 = 39;
    v4 = 0xE100000000000000;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x25F8DD480](v3, v4);

  MEMORY[0x25F8DD480](0x203D20657069705BLL, 0xE800000000000000);
  v6 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EA58, &unk_25F4AB3B8);
  sub_25F4A3140();
  MEMORY[0x25F8DD480](93, 0xE100000000000000);

  MEMORY[0x25F8DD480](0, 0xE000000000000000);

  return 0x6E6F6974636E754ALL;
}

uint64_t sub_25F441228()
{
  v1 = *(v0 + 80);
  *(v0 + 80) = 0;
}

uint64_t sub_25F441250(uint64_t a1)
{
  v2 = v1;
  v4 = v1[10];
  v1[10] = a1;

  v6 = v1[8];
  v5 = v1[9];
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);

  v6(v7, v8, v2);
  v10 = v2[2];
  v9 = v2[3];
  swift_getObjectType();
  v11 = *(v9 + 8);
  swift_unknownObjectRetain();

  sub_25F4A28F0();
  swift_unknownObjectRelease();
}

void *sub_25F44131C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  return v0;
}

uint64_t sub_25F44135C()
{
  sub_25F44131C();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t ServiceMessage.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ServiceMessage.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServiceMessage.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ServiceMessage(0) + 20);

  return sub_25F4414B8(v3, a1);
}

uint64_t sub_25F4414B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceMessage.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ServiceMessage.content.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ServiceMessage(0) + 20);

  return sub_25F441580(a1, v3);
}

uint64_t sub_25F441580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceMessage.Content(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ServiceMessage.description.getter()
{
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD000000000000010, 0x800000025F4B8060);
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v2 = 0xE200000000000000;
    v1 = 11565;
  }

  MEMORY[0x25F8DD480](v1, v2);

  MEMORY[0x25F8DD480](8250, 0xE200000000000000);
  ServiceMessage.messageType.getter();
  sub_25F4A3140();
  MEMORY[0x25F8DD480](62, 0xE100000000000000);
  return 0;
}

uint64_t ServiceMessage.messageType.getter()
{
  v1 = type metadata accessor for ServiceMessage.Content(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServiceMessage(0);
  sub_25F4414B8(v0 + *(v5 + 20), v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_25F442334(v4, type metadata accessor for ServiceMessage.Content);
      result = 3;
      break;
    case 2:
      sub_25F442334(v4, type metadata accessor for ServiceMessage.Content);
      result = 4;
      break;
    case 3:
      result = 5;
      break;
    case 4:
      sub_25F442334(v4, type metadata accessor for ServiceMessage.Content);
      result = 6;
      break;
    case 5:
      sub_25F442334(v4, type metadata accessor for ServiceMessage.Content);
      result = 7;
      break;
    case 6:
      sub_25F442334(v4, type metadata accessor for ServiceMessage.Content);
      result = 8;
      break;
    case 7:
      result = 9;
      break;
    case 8:
      result = 10;
      break;
    case 9:
      sub_25F442334(v4, type metadata accessor for ServiceMessage.Content);
      result = 11;
      break;
    case 10:
      sub_25F442334(v4, type metadata accessor for ServiceMessage.Content);
      result = 12;
      break;
    case 11:
      sub_25F442334(v4, type metadata accessor for ServiceMessage.Content);
      result = 13;
      break;
    case 12:
      return result;
    default:
      result = 1;
      break;
  }

  return result;
}

uint64_t ServiceMessage.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  updated = type metadata accessor for ShellUpdatePayload();
  v3 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ForwardPayload(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v66 - v12;
  v14 = sub_25F4A25E0();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v67 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v66 = &v66 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v66 - v20;
  v22 = type metadata accessor for ServiceMessage.Content(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(type metadata accessor for ServiceMessage(0) + 20);
  v70 = v1;
  sub_25F4414B8(v1 + v26, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = *(v25 + 7);
      v45 = *(v25 + 5);
      v92 = *(v25 + 6);
      v93 = v44;
      v46 = *(v25 + 7);
      v94 = *(v25 + 8);
      v47 = *(v25 + 3);
      v48 = *(v25 + 1);
      v88 = *(v25 + 2);
      v89 = v47;
      v49 = *(v25 + 3);
      v50 = *(v25 + 5);
      v90 = *(v25 + 4);
      v91 = v50;
      v51 = *(v25 + 1);
      v86 = *v25;
      v87 = v51;
      v52 = *(v25 + 168);
      v96 = *(v25 + 152);
      v97 = v52;
      v53 = *(v25 + 200);
      v98 = *(v25 + 184);
      v99 = v53;
      v82 = v92;
      v83 = v46;
      v84 = *(v25 + 8);
      v78 = v88;
      v79 = v49;
      v80 = v90;
      v81 = v45;
      v95 = v25[144];
      v85 = v25[144];
      v76 = v86;
      v77 = v48;
      sub_25F442498();
      v54 = v66;
      sub_25F4A2940();
      sub_25F4424EC(&v86);
      v72 = v96;
      v73 = v97;
      v74 = v98;
      v75 = v99;
      sub_25F44251C();
      v55 = v67;
      sub_25F4A2940();
      sub_25F442570(&v96);
      sub_25F4A2550();
      v56 = *(v68 + 8);
      v57 = v55;
      v58 = v69;
      v56(v57, v69);
      v56(v54, v58);
      goto LABEL_17;
    case 2u:
      v33 = *(v25 + 1);
      v34 = *(v25 + 2);
      v35 = *(v25 + 3);
      v36 = *(v25 + 4);
      v37 = *(v25 + 5);
      *&v86 = *v25;
      *(&v86 + 1) = v33;
      *&v87 = v34;
      *(&v87 + 1) = v35;
      *&v88 = v36;
      *(&v88 + 1) = v37;
      sub_25F442444();
      sub_25F4A2940();

      goto LABEL_16;
    case 3u:
    case 7u:
    case 8u:
      v27 = v25[32];
      v28 = *(v25 + 1);
      v86 = *v25;
      v87 = v28;
      LOBYTE(v88) = v27;
      sub_25F44228C();
      sub_25F4A2940();
      goto LABEL_17;
    case 4u:
      sub_25F442394(v25, v9, type metadata accessor for ForwardPayload);
      sub_25F4423FC(&qword_27FD6EAB0, type metadata accessor for ForwardPayload);
      sub_25F4A2940();
      sub_25F442334(v9, type metadata accessor for ForwardPayload);
      goto LABEL_17;
    case 5u:
      sub_25F442394(v25, v5, type metadata accessor for ShellUpdatePayload);
      sub_25F4423FC(&qword_27FD6EAA8, type metadata accessor for ShellUpdatePayload);
      sub_25F4A2940();
      sub_25F442334(v5, type metadata accessor for ShellUpdatePayload);
      goto LABEL_17;
    case 6u:
      v62 = *(v25 + 1);
      v63 = *(v25 + 2);
      v64 = *(v25 + 3);
      LODWORD(v86) = *v25;
      *(&v86 + 1) = v62;
      *&v87 = v63;
      *(&v87 + 1) = v64;
      sub_25F4422E0();
      goto LABEL_15;
    case 9u:
      v31 = *(v25 + 1);
      v32 = v25[16];
      *&v86 = *v25;
      *(&v86 + 1) = v31;
      LOBYTE(v87) = v32;
      sub_25F442238();
LABEL_15:
      sub_25F4A2940();
      goto LABEL_16;
    case 0xAu:
      v59 = *(v25 + 1);
      v60 = *(v25 + 2);
      v61 = *(v25 + 3);
      *&v86 = *v25;
      *(&v86 + 1) = v59;
      *&v87 = v60;
      *(&v87 + 1) = v61;
      sub_25F4421E4();
      sub_25F4A2940();

      goto LABEL_16;
    case 0xBu:
      v29 = *(v25 + 1);
      v30 = *(v25 + 2);
      *&v86 = *v25;
      *(&v86 + 1) = v29;
      *&v87 = v30;
      sub_25F44213C();
      sub_25F4A2940();

LABEL_16:

      goto LABEL_17;
    case 0xCu:
      _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
LABEL_17:
      v43 = v70;
      break;
    default:
      v38 = *v25;
      v39 = v71;
      if (v38 == 2)
      {
        v41 = v68;
        v40 = v69;
        (*(v68 + 56))(v13, 1, 1, v69);
        _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
        v42 = (*(v41 + 48))(v13, 1, v40);
        v43 = v70;
        if (v42 != 1)
        {
          sub_25F3F21F4(v13, &qword_27FD6DAA0, &qword_25F4A5550);
        }
      }

      else
      {
        LOBYTE(v86) = v38 & 1;
        sub_25F4425A0();
        sub_25F4A2940();
        v41 = v68;
        v40 = v69;
        (*(v68 + 56))(v13, 0, 1, v69);
        (*(v41 + 32))(v21, v13, v40);
        v43 = v70;
      }

      (*(v41 + 32))(v39, v21, v40);
      break;
  }

  v76 = *v43;
  *(&v87 + 1) = &type metadata for ServiceMessage.PayloadKey;
  *&v88 = sub_25F442190();
  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(&v86);
}

unint64_t sub_25F44213C()
{
  result = qword_27FD6EA78;
  if (!qword_27FD6EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EA78);
  }

  return result;
}

unint64_t sub_25F442190()
{
  result = qword_27FD6EA80;
  if (!qword_27FD6EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EA80);
  }

  return result;
}

unint64_t sub_25F4421E4()
{
  result = qword_27FD6EA88;
  if (!qword_27FD6EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EA88);
  }

  return result;
}

unint64_t sub_25F442238()
{
  result = qword_27FD6EA90;
  if (!qword_27FD6EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EA90);
  }

  return result;
}

unint64_t sub_25F44228C()
{
  result = qword_27FD6EA98;
  if (!qword_27FD6EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EA98);
  }

  return result;
}

unint64_t sub_25F4422E0()
{
  result = qword_27FD6EAA0;
  if (!qword_27FD6EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAA0);
  }

  return result;
}

uint64_t sub_25F442334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F442394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F4423FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F442444()
{
  result = qword_27FD6EAB8;
  if (!qword_27FD6EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAB8);
  }

  return result;
}

unint64_t sub_25F442498()
{
  result = qword_27FD6EAC0;
  if (!qword_27FD6EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAC0);
  }

  return result;
}

unint64_t sub_25F44251C()
{
  result = qword_27FD6EAC8;
  if (!qword_27FD6EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAC8);
  }

  return result;
}

unint64_t sub_25F4425A0()
{
  result = qword_27FD6EAD0;
  if (!qword_27FD6EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAD0);
  }

  return result;
}

uint64_t sub_25F4425F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64616F6C796170;
  }

  else
  {
    v4 = 0x546567617373656DLL;
  }

  if (v3)
  {
    v5 = 0xEB00000000657079;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x64616F6C796170;
  }

  else
  {
    v6 = 0x546567617373656DLL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xEB00000000657079;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F4426A4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F442730()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4427A8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44283C(uint64_t *a1@<X8>)
{
  v2 = 0x546567617373656DLL;
  if (*v1)
  {
    v2 = 0x64616F6C796170;
  }

  v3 = 0xEB00000000657079;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F442884()
{
  if (*v0)
  {
    result = 0x64616F6C796170;
  }

  else
  {
    result = 0x546567617373656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_25F4428C8()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F44293C()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F442A14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6ED98, &qword_25F4AD588);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-v10];
  v12 = ServiceMessage.messageType.getter();
  v13 = *(v5 + 56);
  *v11 = 1;
  ServiceMessage.payload.getter(&v11[v13]);
  v20[15] = 0;
  v20[14] = v12;
  sub_25F404B8C(v11, v9, &qword_27FD6ED98, &qword_25F4AD588);
  v14 = *v9;
  v15 = *(v5 + 56);
  v16 = sub_25F4A25E0();
  v17 = *(v16 - 8);
  (*(v17 + 32))(v3, &v9[v15], v16);
  (*(v17 + 56))(v3, 0, 1, v16);
  v20[13] = v14;
  sub_25F442E0C();
  sub_25F442E60();
  v18 = sub_25F4A28D0();
  sub_25F3F21F4(v3, &qword_27FD6DAA0, &qword_25F4A5550);
  sub_25F3F21F4(v11, &qword_27FD6ED98, &qword_25F4AD588);
  return v18;
}

uint64_t ServiceMessage.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &type metadata for ServiceMessage.Key;
  v10 = sub_25F442E0C();
  v16 = v10;
  LOBYTE(v14[0]) = 0;
  sub_25F442E60();
  sub_25F4A2530();
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v11 = v17;
    v15 = &type metadata for ServiceMessage.Key;
    v16 = v10;
    LOBYTE(v14[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    ServiceMessage.init(messageType:payload:)(v11, v9, a2);
    return (*(v6 + 8))(a1, v5);
  }
}

unint64_t sub_25F442E0C()
{
  result = qword_27FD6EAD8;
  if (!qword_27FD6EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAD8);
  }

  return result;
}

unint64_t sub_25F442E60()
{
  result = qword_27FD6EAE0;
  if (!qword_27FD6EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAE0);
  }

  return result;
}

uint64_t ServiceMessage.init(messageType:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v146 = a1;
  v151 = a3;
  v4 = sub_25F4A25E0();
  v152 = *(v4 - 8);
  v153 = v4;
  v5 = *(v152 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v139 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v150 = &v124 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v149 = &v124 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v148 = &v124 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v147 = &v124 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v142 = &v124 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v137 = &v124 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v138 = &v124 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v145 = &v124 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v141 = &v124 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v136 = &v124 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v144 = &v124 - v29;
  MEMORY[0x28223BE20](v28);
  v143 = &v124 - v30;
  v140 = type metadata accessor for ServiceMessage.Content(0);
  v31 = *(*(v140 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v140);
  v135 = (&v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v32);
  v134 = (&v124 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v133 = (&v124 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v132 = (&v124 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v131 = (&v124 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v124 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v124 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v124 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v124 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v124 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v124 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v124 - v60;
  *(&v154[1] + 1) = &type metadata for ServiceMessage.PayloadKey;
  *&v155 = sub_25F442190();
  v62 = v183;
  sub_25F4A2580();
  v183 = v62;
  if (v62)
  {
    (*(v152 + 8))(a2, v153);
    return __swift_destroy_boxed_opaque_existential_1(v154);
  }

  else
  {
    v125 = v56;
    v126 = v53;
    v128 = v61;
    v129 = v50;
    v127 = v44;
    v130 = v47;
    v65 = v141;
    v64 = v142;
    v124 = v59;
    v67 = v151;
    v66 = v152;
    v68 = v146;
    __swift_destroy_boxed_opaque_existential_1(v154);
    v69 = *(&v173 + 1);
    *v67 = v173;
    v67[1] = v69;
    switch(v68)
    {
      case 1:
        v94 = a2;
        v95 = v153;
        (*(v66 + 16))(v143, a2, v153);
        sub_25F4425A0();
        v96 = v183;
        sub_25F4A2950();
        if (v96)
        {

          v97 = 2;
        }

        else
        {
          v97 = v154[0];
        }

        v112 = v151;
        v113 = v128;
        (*(v66 + 8))(v94, v95);
        *v113 = v97;
        swift_storeEnumTagMultiPayload();
        v114 = type metadata accessor for ServiceMessage(0);
        return sub_25F442394(v113, v112 + *(v114 + 20), type metadata accessor for ServiceMessage.Content);
      case 2:
      case 3:
        v70 = v66;
        v71 = *(v66 + 16);
        v72 = v153;
        v71(v144, a2, v153);
        sub_25F442498();
        v73 = v183;
        sub_25F4A2950();
        if (v73)
        {
          goto LABEL_18;
        }

        v169 = v179;
        v170 = v180;
        v171 = v181;
        v172 = v182;
        v165 = v175;
        v166 = v176;
        v167 = v177;
        v168 = v178;
        v163 = v173;
        v164 = v174;
        v71(v136, a2, v72);
        sub_25F44251C();
        sub_25F4A2950();
        (*(v70 + 8))(a2, v72);
        *(v162 + 8) = v162[5];
        *(&v162[1] + 8) = v162[6];
        *(&v162[2] + 8) = v162[7];
        *(&v162[3] + 8) = v162[8];
        v159 = v169;
        v160 = v170;
        v161 = v171;
        LOBYTE(v162[0]) = v172;
        v155 = v165;
        v156 = v166;
        v157 = v167;
        v158 = v168;
        v154[0] = v163;
        v154[1] = v164;
        v117 = v162[2];
        v81 = v124;
        *(v124 + 10) = v162[1];
        *(v81 + 176) = v117;
        *(v81 + 192) = v162[3];
        *(v81 + 208) = *&v162[4];
        v118 = v160;
        *(v81 + 96) = v159;
        *(v81 + 112) = v118;
        v119 = v162[0];
        *(v81 + 128) = v161;
        *(v81 + 144) = v119;
        v120 = v156;
        *(v81 + 32) = v155;
        *(v81 + 48) = v120;
        v121 = v158;
        *(v81 + 64) = v157;
        *(v81 + 80) = v121;
        v122 = v154[1];
        *v81 = v154[0];
        *(v81 + 16) = v122;
        goto LABEL_36;
      case 4:
        v74 = v66;
        v82 = *(v66 + 16);
        v83 = v65;
        v76 = a2;
        v77 = v153;
        v82(v83, a2, v153);
        sub_25F442444();
        v84 = v183;
        sub_25F4A2950();
        if (v84)
        {
          goto LABEL_29;
        }

        (*(v74 + 8))(a2, v77);
        v85 = v154[1];
        v81 = v125;
        *v125 = v154[0];
        *(v81 + 16) = v85;
        *(v81 + 32) = v155;
        goto LABEL_36;
      case 5:
        v74 = v66;
        v99 = *(v66 + 16);
        v76 = a2;
        v77 = v153;
        v99(v145, a2, v153);
        sub_25F44228C();
        v100 = v183;
        sub_25F4A2950();
        if (v100)
        {
          goto LABEL_29;
        }

        (*(v74 + 8))(a2, v77);
        v101 = v155;
        v102 = v154[1];
        v81 = v126;
        *v126 = v154[0];
        *(v81 + 16) = v102;
        *(v81 + 32) = v101;
        goto LABEL_36;
      case 6:
        type metadata accessor for ForwardPayload(0);
        v72 = v153;
        (*(v66 + 16))(v138, a2, v153);
        sub_25F4423FC(&qword_27FD6EAB0, type metadata accessor for ForwardPayload);
        v81 = v129;
        v105 = v183;
        sub_25F4A2950();
        if (!v105)
        {
          goto LABEL_33;
        }

        (*(v66 + 8))(a2, v72);
        goto LABEL_25;
      case 7:
        type metadata accessor for ShellUpdatePayload();
        v70 = v66;
        v72 = v153;
        (*(v66 + 16))(v137, a2, v153);
        sub_25F4423FC(&qword_27FD6EAA8, type metadata accessor for ShellUpdatePayload);
        v81 = v130;
        v98 = v183;
        sub_25F4A2950();
        if (!v98)
        {
LABEL_33:
          (*(v66 + 8))(a2, v72);
          goto LABEL_36;
        }

LABEL_18:
        (*(v70 + 8))(a2, v72);
LABEL_25:

        break;
      case 8:
        v74 = v66;
        v110 = *(v66 + 16);
        v76 = a2;
        v77 = v153;
        v110(v64, a2, v153);
        sub_25F4422E0();
        v111 = v183;
        sub_25F4A2950();
        if (v111)
        {
          goto LABEL_29;
        }

        (*(v74 + 8))(a2, v77);
        v115 = *(v154 + 8);
        v116 = *(&v154[1] + 1);
        v81 = v127;
        *v127 = v154[0];
        *(v81 + 8) = v115;
        *(v81 + 24) = v116;
        goto LABEL_36;
      case 9:
        v74 = v66;
        v89 = *(v66 + 16);
        v76 = a2;
        v77 = v153;
        v89(v147, a2, v153);
        sub_25F44228C();
        v90 = v183;
        sub_25F4A2950();
        if (v90)
        {
          goto LABEL_29;
        }

        (*(v74 + 8))(a2, v77);
        v91 = v155;
        v92 = v154[1];
        v81 = v131;
        *v131 = v154[0];
        *(v81 + 16) = v92;
        *(v81 + 32) = v91;
        goto LABEL_36;
      case 10:
        v74 = v66;
        v106 = *(v66 + 16);
        v76 = a2;
        v77 = v153;
        v106(v148, a2, v153);
        sub_25F44228C();
        v107 = v183;
        sub_25F4A2950();
        if (v107)
        {
          goto LABEL_29;
        }

        (*(v74 + 8))(a2, v77);
        v108 = v155;
        v109 = v154[1];
        v81 = v132;
        *v132 = v154[0];
        *(v81 + 16) = v109;
        *(v81 + 32) = v108;
        goto LABEL_36;
      case 11:
        v74 = v66;
        v75 = *(v66 + 16);
        v76 = a2;
        v77 = v153;
        v75(v149, a2, v153);
        sub_25F442238();
        v78 = v183;
        sub_25F4A2950();
        if (v78)
        {
          goto LABEL_29;
        }

        (*(v74 + 8))(a2, v77);
        v79 = *(&v154[0] + 1);
        v80 = v154[1];
        v81 = v133;
        *v133 = *&v154[0];
        *(v81 + 8) = v79;
        *(v81 + 16) = v80;
        goto LABEL_36;
      case 12:
        v74 = v66;
        v86 = *(v66 + 16);
        v76 = a2;
        v77 = v153;
        v86(v150, a2, v153);
        sub_25F4421E4();
        v87 = v183;
        sub_25F4A2950();
        if (v87)
        {
          goto LABEL_29;
        }

        (*(v74 + 8))(a2, v77);
        v88 = *(&v154[0] + 1);
        v81 = v134;
        *v134 = *&v154[0];
        *(v81 + 8) = v88;
        *(v81 + 16) = v154[1];
        goto LABEL_36;
      case 13:
        v74 = v66;
        v103 = *(v66 + 16);
        v76 = a2;
        v77 = v153;
        v103(v139, a2, v153);
        sub_25F44213C();
        v104 = v183;
        sub_25F4A2950();
        if (v104)
        {
LABEL_29:
          (*(v74 + 8))(v76, v77);
        }

        else
        {
          (*(v74 + 8))(a2, v77);
          v81 = v135;
          *v135 = *&v154[0];
          *(v81 + 8) = *(v154 + 8);
LABEL_36:
          swift_storeEnumTagMultiPayload();
          v123 = type metadata accessor for ServiceMessage(0);
          result = sub_25F442394(v81, v151 + *(v123 + 20), type metadata accessor for ServiceMessage.Content);
        }

        break;
      default:
        (*(v66 + 8))(a2, v153);
        v93 = *(type metadata accessor for ServiceMessage(0) + 20);
        return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t ServiceMessage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_25F44F2F0();
  a2[1] = v4;
  v5 = type metadata accessor for ServiceMessage(0);
  return sub_25F442394(a1, a2 + *(v5 + 20), type metadata accessor for ServiceMessage.Content);
}

unint64_t ServiceMessage.MessageType.rawValue.getter(char a1)
{
  result = 1735289200;
  switch(a1)
  {
    case 1:
      result = 0x696C696261706163;
      break;
    case 2:
      result = 0x68636E75616CLL;
      break;
    case 3:
      result = 0x68636E75616C6572;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7463656E6E6F63;
      break;
    case 6:
      result = 0x64726177726F66;
      break;
    case 7:
      result = 0x657461647075;
      break;
    case 8:
      result = 0x70556C65636E6163;
      break;
    case 9:
      result = 1886352499;
      break;
    case 10:
      result = 1819044203;
      break;
    case 11:
      result = 0x6567727570;
      break;
    case 12:
      result = 0x73746E6169726176;
      break;
    case 13:
      result = 0x4F746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25F444084@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s19PreviewsMessagingOS14ServiceMessageV0E4TypeO8rawValueAESgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_25F4440B4@<X0>(unint64_t *a1@<X8>)
{
  result = ServiceMessage.MessageType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F4440E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F45205C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4441A4()
{
  result = sub_25F4A2A90();
  qword_27FD6EA60 = result;
  return result;
}

void *sub_25F4441DC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = (*result)++;
  *a2 = v2;
  return result;
}

PreviewsMessagingOS::OSCapabilities __swiftcall OSCapabilities.init(supportsExecutionPoints:supportsPreviewVariants:supportsContentOverrides:supportsScreenshotRequests:supportsNSPreviewHostableMacPreviews:supportsNSPreviewHostableCatalystPreviews:supportsPerUpdateMessageStreams:supportsRegistryPreviews:supportsExternalRegistries:supportsUpdateCancelation:jitCapabilities:)(Swift::Bool supportsExecutionPoints, Swift::Bool supportsPreviewVariants, Swift::Bool supportsContentOverrides, Swift::Bool supportsScreenshotRequests, Swift::Bool supportsNSPreviewHostableMacPreviews, Swift::Bool supportsNSPreviewHostableCatalystPreviews, Swift::Bool supportsPerUpdateMessageStreams, Swift::Bool supportsRegistryPreviews, Swift::Bool supportsExternalRegistries, Swift::Bool supportsUpdateCancelation, PreviewsMessagingOS::JITCapabilities jitCapabilities)
{
  *v11 = supportsExecutionPoints;
  v11[1] = supportsPreviewVariants;
  v11[2] = supportsContentOverrides;
  v11[3] = supportsScreenshotRequests;
  v11[4] = supportsNSPreviewHostableMacPreviews;
  v11[5] = supportsNSPreviewHostableCatalystPreviews;
  v11[6] = supportsPerUpdateMessageStreams;
  v11[7] = supportsRegistryPreviews;
  v11[8] = supportsExternalRegistries;
  v11[9] = supportsUpdateCancelation;
  v11[10] = jitCapabilities.supportsJITLinking;
  v11[11] = jitCapabilities.supportsLoadCommands;
  result.supportsExternalRegistries = supportsPreviewVariants;
  result.supportsExecutionPoints = supportsExecutionPoints;
  return result;
}

uint64_t static OSCapabilities.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD6D380 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_27FD6EA68;
  *(a1 + 8) = dword_27FD6EA70;
  return result;
}

uint64_t OSCapabilities.jitCapabilities.getter()
{
  if (*(v0 + 11))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + 10);
}

uint64_t OSCapabilities.jitCapabilities.setter(uint64_t result)
{
  *(v1 + 10) = result & 1;
  *(v1 + 11) = BYTE1(result) & 1;
  return result;
}

unint64_t sub_25F4444EC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0xD00000000000001ALL;
    if (a1 != 3)
    {
      v4 = 0xD000000000000024;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = v4;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000017;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x626170614374696ALL;
    if (a1 == 9)
    {
      v1 = 0xD000000000000019;
    }

    if (a1 == 8)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 == 6)
    {
      v2 = 0xD00000000000001FLL;
    }

    else
    {
      v2 = 0xD000000000000018;
    }

    if (a1 == 5)
    {
      v2 = 0xD000000000000029;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25F4446C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F44FC00();
  *a2 = result;
  return result;
}

unint64_t sub_25F4446F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F4444EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t OSCapabilities.propertyListValue.getter()
{
  v1 = vand_s8(*v0, 0x101010101010101);
  v1.i32[0] = v0[1].i32[0];
  return sub_25F4A25A0();
}

uint64_t sub_25F444784()
{
  sub_25F4521AC();
  sub_25F452200();
  return sub_25F4A2840();
}

uint64_t OSCapabilities.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27FD6D380 != -1)
  {
    swift_once();
  }

  v19 = qword_27FD6EA68;
  v20 = dword_27FD6EA70;
  KeyPath = swift_getKeyPath();
  sub_25F444CA8(KeyPath, a1, 0);
  if (v2)
  {
    v16 = sub_25F4A25E0();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  else
  {

    v6 = swift_getKeyPath();
    sub_25F444CA8(v6, a1, 1);

    v7 = swift_getKeyPath();
    sub_25F444CA8(v7, a1, 2);

    v8 = swift_getKeyPath();
    sub_25F444CA8(v8, a1, 3);

    v9 = swift_getKeyPath();
    sub_25F444CA8(v9, a1, 4);

    v10 = swift_getKeyPath();
    sub_25F444CA8(v10, a1, 5);

    v11 = swift_getKeyPath();
    sub_25F444CA8(v11, a1, 6);

    v12 = swift_getKeyPath();
    sub_25F444CA8(v12, a1, 7);

    v13 = swift_getKeyPath();
    sub_25F444CA8(v13, a1, 8);

    v14 = swift_getKeyPath();
    sub_25F444CA8(v14, a1, 9);

    v15 = swift_getKeyPath();
    sub_25F444D64(v15, a1, 10);
    v17 = sub_25F4A25E0();
    (*(*(v17 - 8) + 8))(a1, v17);

    *a2 = v19;
    *(a2 + 8) = v20;
  }

  return result;
}

uint64_t sub_25F444CA8(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for OSCapabilities.Key;
  v6[4] = sub_25F4521AC();
  LOBYTE(v6[0]) = a3;
  sub_25F4A2580();
  result = __swift_destroy_boxed_opaque_existential_1(v6);
  if (!v3 && v7 != 2)
  {
    LOBYTE(v6[0]) = v7 & 1;
    return swift_setAtWritableKeyPath();
  }

  return result;
}

uint64_t sub_25F444D64(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for OSCapabilities.Key;
  v6[4] = sub_25F4521AC();
  LOBYTE(v6[0]) = a3;
  sub_25F452200();
  sub_25F4A2580();
  result = __swift_destroy_boxed_opaque_existential_1(v6);
  if (!v3 && v7 != 2)
  {
    LOWORD(v6[0]) = v7 & 0x101;
    return swift_setAtWritableKeyPath();
  }

  return result;
}

uint64_t sub_25F444E30()
{
  v1 = vand_s8(*v0, 0x101010101010101);
  v1.i32[0] = v0[1].i32[0];
  return sub_25F4A25A0();
}

uint64_t AgentDescriptor.idAcrossRelaunches.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AgentDescriptor.idAcrossRelaunches.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AgentDescriptor.bundle.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

__n128 AgentDescriptor.bundle.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1[1].n128_u64[1];
  v5 = v1[2].n128_u64[1];

  result = v7;
  v1[1] = v7;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u64[1] = v3;
  return result;
}

void __swiftcall AgentDescriptor.init(idAcrossRelaunches:bundle:)(PreviewsMessagingOS::AgentDescriptor *__return_ptr retstr, Swift::String idAcrossRelaunches, PreviewsMessagingOS::AgentDescriptor::Bundle bundle)
{
  v3 = *bundle.bundleID._countAndFlagsBits;
  v4 = *(bundle.bundleID._countAndFlagsBits + 8);
  retstr->idAcrossRelaunches = idAcrossRelaunches;
  retstr->bundle.bundleID._countAndFlagsBits = v3;
  retstr->bundle.bundleID._object = v4;
  retstr->bundle.path = *(bundle.bundleID._countAndFlagsBits + 16);
}

uint64_t sub_25F445004(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656C646E7562;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = 0x800000025F4B64A0;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x656C646E7562;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0x800000025F4B64A0;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F4450AC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F445130()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4451A0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44522C(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B64A0;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x656C646E7562;
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_25F44526C()
{
  if (*v0)
  {
    result = 0x656C646E7562;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t AgentDescriptor.propertyListValue.getter()
{
  v1 = sub_25F4A25E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[1];
  v12 = *v0;
  v13 = v6;
  v14 = v0[2];
  v9 = &v12;
  sub_25F4A25A0();
  v10 = v13;
  v11 = v14;
  sub_25F44F534();
  sub_25F4A2940();
  sub_25F4A2540();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_25F4453D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 2);
  v13[0] = *(a1 + 1);
  v13[1] = v3;
  v12 = 0;
  v10 = v1;
  v11 = v2;
  v9 = 1;
  v7 = v13[0];
  v8 = v3;

  sub_25F4520E8(v13, v6);
  sub_25F44F588();
  sub_25F44F534();
  v4 = sub_25F4A28D0();
  sub_25F403404(v7, *(&v7 + 1));

  return v4;
}

void AgentDescriptor.init(propertyListValue:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v19 + 1) = &type metadata for AgentDescriptor.Key;
  v10 = sub_25F44F588();
  v20 = v10;
  LOBYTE(v18[0]) = 0;
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v2)
  {
    (*(v6 + 16))(v9, a1, v5);
    sub_25F44F534();
    sub_25F4A2950();
    (*(v6 + 8))(a1, v5);

    v11 = 0;
    v12 = v18[0];
    v13 = v18[1];
    v14 = 0xE000000000000000;
    v15 = v19;
  }

  else
  {
    v16[0] = v21;
    v23 = v22;
    *(&v19 + 1) = &type metadata for AgentDescriptor.Key;
    v20 = v10;
    LOBYTE(v18[0]) = 1;
    sub_25F44F534();
    sub_25F4A2530();
    (*(v6 + 8))(a1, v5);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v12 = v16[1];
    v13 = v16[2];
    v15 = v17;
    v11 = v16[0];
    v14 = v23;
  }

  *a2 = v11;
  *(a2 + 8) = v14;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
}

uint64_t static AgentDescriptor.Bundle.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25F4A3270(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_25F4A3270() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AgentDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25F4A2C60();
  sub_25F4A2C60();
  if (!v6)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t AgentDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v6)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F4458F0()
{
  v1 = sub_25F4A25E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[1];
  v12 = *v0;
  v13 = v6;
  v14 = v0[2];
  v9 = &v12;
  sub_25F4A25A0();
  v10 = v13;
  v11 = v14;
  sub_25F44F534();
  sub_25F4A2940();
  sub_25F4A2540();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_25F445A38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v6)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F445AE0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25F4A2C60();
  sub_25F4A2C60();
  if (!v6)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t sub_25F445B7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v6)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t AgentDescriptor.bundleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AgentDescriptor.path.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AgentDescriptor.description.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  MEMORY[0x25F8DD480](*v0, v0[1]);
  MEMORY[0x25F8DD480](58, 0xE100000000000000);

  if (v4)
  {
    MEMORY[0x25F8DD480](58, 0xE100000000000000);
    MEMORY[0x25F8DD480](v3, v4);
  }

  MEMORY[0x25F8DD480](v2, v1);

  return 0;
}

uint64_t sub_25F445D40()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  MEMORY[0x25F8DD480](*v0, v0[1]);
  MEMORY[0x25F8DD480](58, 0xE100000000000000);

  if (v4)
  {
    MEMORY[0x25F8DD480](58, 0xE100000000000000);
    MEMORY[0x25F8DD480](v3, v4);
  }

  MEMORY[0x25F8DD480](v2, v1);

  return 0;
}

uint64_t AgentDescriptor.Bundle.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AgentDescriptor.Bundle.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AgentDescriptor.Bundle.path.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AgentDescriptor.Bundle.path.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

PreviewsMessagingOS::AgentDescriptor::Bundle __swiftcall AgentDescriptor.Bundle.init(bundleID:path:)(Swift::String bundleID, Swift::String_optional path)
{
  v2->value = bundleID;
  v2[1] = path;
  result.path = path;
  result.bundleID = bundleID;
  return result;
}

uint64_t sub_25F445F18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1752457584;
  if (v2 != 1)
  {
    v4 = 0x696D697263736964;
    v3 = 0xEC000000746E616ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x4449656C646E7562;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1752457584;
  if (*a2 != 1)
  {
    v8 = 0x696D697263736964;
    v7 = 0xEC000000746E616ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x4449656C646E7562;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F44601C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4460C0()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F446150()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4461F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F44FC4C();
  *a2 = result;
  return result;
}

void sub_25F446220(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1752457584;
  if (v2 != 1)
  {
    v5 = 0x696D697263736964;
    v4 = 0xEC000000746E616ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4449656C646E7562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F446280()
{
  v1 = 1752457584;
  if (*v0 != 1)
  {
    v1 = 0x696D697263736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_25F4462DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x42646E4168746170;
  }

  else
  {
    v4 = 0x4449656C646E7562;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEF4449656C646E75;
  }

  if (*a2)
  {
    v6 = 0x42646E4168746170;
  }

  else
  {
    v6 = 0x4449656C646E7562;
  }

  if (*a2)
  {
    v7 = 0xEF4449656C646E75;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F446390()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F446420()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F44649C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F446534(uint64_t *a1@<X8>)
{
  v2 = 0x4449656C646E7562;
  if (*v1)
  {
    v2 = 0x42646E4168746170;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEF4449656C646E75;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F446580(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F452324();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F44665C()
{
  sub_25F44F5E8();
  sub_25F452158();
  return sub_25F4A28C0();
}

uint64_t AgentDescriptor.Bundle.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = &type metadata for AgentDescriptor.Bundle.Key;
  v5 = sub_25F44F5E8();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    v7 = v16;
    v13 = &type metadata for AgentDescriptor.Bundle.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    sub_25F4A2580();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v11;
  }

  return result;
}

uint64_t AgentDescriptor.Bundle.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25F4A2C60();
  if (!v4)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t AgentDescriptor.Bundle.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v4)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F4469DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v4)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F446A68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25F4A2C60();
  if (!v4)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t sub_25F446AE4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v4)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F446B6C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25F4A3270(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_25F4A3270() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AgentDescriptor.Bundle.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 24))
  {
    v3 = *(v1 + 16);

    sub_25F4A1FF0();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_25F4A2040();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t AgentDescriptor.Bundle.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v6 = *v0;
    v7 = v0[1];

    MEMORY[0x25F8DD480](58, 0xE100000000000000);
    MEMORY[0x25F8DD480](v3, v2);
    return v6;
  }

  else
  {
    v4 = v0[1];
  }

  return v1;
}

uint64_t AgentDescriptor.Bundle.missingPathError.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  a1[3] = &type metadata for AgentDescriptor.Bundle.MissingPathError;
  a1[4] = sub_25F44F63C();
  *a1 = v4;
  a1[1] = v3;
}

unint64_t sub_25F446DB4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A30F0();

  MEMORY[0x25F8DD480](v1, v2);
  return 0xD000000000000011;
}

uint64_t sub_25F446E30(uint64_t a1)
{
  v2 = sub_25F44F63C();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F446E6C(uint64_t a1)
{
  v2 = sub_25F44F63C();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F446EA8()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v6 = *v0;
    v7 = v0[1];

    MEMORY[0x25F8DD480](58, 0xE100000000000000);
    MEMORY[0x25F8DD480](v3, v2);
    return v6;
  }

  else
  {
    v4 = v0[1];
  }

  return v1;
}

uint64_t PreviewAgentRole.description.getter()
{
  v1 = 0x20676E696E6E7552;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7377656976657250;
  }
}

PreviewsMessagingOS::PreviewAgentRole_optional __swiftcall PreviewAgentRole.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PreviewAgentRole.rawValue.getter()
{
  v1 = 0x41676E696E6E7572;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7377656976657270;
  }
}

uint64_t sub_25F447050(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x41676E696E6E7572;
  v4 = 0xEA00000000007070;
  if (v2 != 1)
  {
    v3 = 0x6C616E7265747865;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7377656976657270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x41676E696E6E7572;
  v8 = 0xEA00000000007070;
  if (*a2 != 1)
  {
    v7 = 0x6C616E7265747865;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7377656976657270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F44715C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F447204()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F447298()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F447348(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000007070;
  v5 = 0x41676E696E6E7572;
  if (v2 != 1)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7377656976657270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F4473AC()
{
  v1 = 0x20676E696E6E7552;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7377656976657250;
  }
}

uint64_t sub_25F447410(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F451F40();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t PreviewAgentBootstrapMode.description.getter(char a1)
{
  if (a1)
  {
    return 0x636578452054494ALL;
  }

  else
  {
    return 0x6E6942206C6C7546;
  }
}

PreviewsMessagingOS::PreviewAgentBootstrapMode_optional __swiftcall PreviewAgentBootstrapMode.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_25F4A3170();

  if (v1 == 1)
  {
    v2.value = PreviewsMessagingOS_PreviewAgentBootstrapMode_jitExecutor;
  }

  else
  {
    v2.value = PreviewsMessagingOS_PreviewAgentBootstrapMode_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t PreviewAgentBootstrapMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x756365784574696ALL;
  }

  else
  {
    return 0x616E69426C6C7566;
  }
}

uint64_t sub_25F4475B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x756365784574696ALL;
  }

  else
  {
    v4 = 0x616E69426C6C7566;
  }

  if (v3)
  {
    v5 = 0xEA00000000007972;
  }

  else
  {
    v5 = 0xEB00000000726F74;
  }

  if (*a2)
  {
    v6 = 0x756365784574696ALL;
  }

  else
  {
    v6 = 0x616E69426C6C7566;
  }

  if (*a2)
  {
    v7 = 0xEB00000000726F74;
  }

  else
  {
    v7 = 0xEA00000000007972;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F447668()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4476F8()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F447774()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44780C(uint64_t *a1@<X8>)
{
  v2 = 0x616E69426C6C7566;
  if (*v1)
  {
    v2 = 0x756365784574696ALL;
  }

  v3 = 0xEA00000000007972;
  if (*v1)
  {
    v3 = 0xEB00000000726F74;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F447858()
{
  if (*v0)
  {
    result = 0x636578452054494ALL;
  }

  else
  {
    result = 0x6E6942206C6C7546;
  }

  *v0;
  return result;
}

uint64_t sub_25F4478A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F451EEC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

PreviewsMessagingOS::CapabilitiesPayload __swiftcall CapabilitiesPayload.init()()
{
  v1 = v0;
  result.isRunningInXTP = sub_25F4A2A10();
  *v1 = result.isRunningInXTP;
  return result;
}

uint64_t LaunchPayload.workspaceID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LaunchPayload.workspaceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LaunchPayload.agentDescriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

__n128 LaunchPayload.agentDescriptor.setter(__int128 *a1)
{
  v8 = a1[1];
  v9 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);

  result = v8;
  *(v1 + 16) = v9;
  *(v1 + 32) = v8;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t LaunchPayload.environment.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t LaunchPayload.arguments.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

double LaunchPayload.binaryType.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 92);
  *a1 = result;
  return result;
}

double LaunchPayload.binaryType.setter(double *a1)
{
  result = *a1;
  *(v1 + 92) = *a1;
  return result;
}

uint64_t LaunchPayload.targetDescriptions.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

__n128 LaunchPayload.hostAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  result = *(v1 + 112);
  v4 = *(v1 + 128);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 LaunchPayload.hostAuditToken.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v3;
  *(v1 + 144) = *(a1 + 32);
  return result;
}

__n128 LaunchPayload.init(workspaceID:agentDescriptor:agentRole:agentBootstrapMode:environment:arguments:processType:binaryType:targetDescriptions:hostAuditToken:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, void *a10, uint64_t a11, uint64_t a12)
{
  v12 = *a3;
  v13 = *(a3 + 2);
  v14 = *(a3 + 3);
  v15 = *a4;
  v16 = *a8;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v12;
  *(a9 + 32) = v13;
  *(a9 + 40) = v14;
  *(a9 + 48) = a3[2];
  *(a9 + 64) = v15;
  *(a9 + 65) = a5 & 1;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = v16;
  *(a9 + 92) = *a10;
  *(a9 + 104) = a11;
  result = *a12;
  v18 = *(a12 + 16);
  *(a9 + 112) = *a12;
  *(a9 + 128) = v18;
  *(a9 + 144) = *(a12 + 32);
  return result;
}

unint64_t sub_25F447DB4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x636170736B726F77;
    v7 = 0x6C6F52746E656761;
    v8 = 0xD000000000000012;
    if (a1 != 3)
    {
      v8 = 0x6D6E6F7269766E65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656449746E656761;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0x736544746E656761;
    if (a1 != 9)
    {
      v2 = 0x6964754174736F68;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x746E656D75677261;
    v4 = 0x54737365636F7270;
    if (a1 != 6)
    {
      v4 = 0x79547972616E6962;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25F447F7C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25F4A3270();
  }

  return v12 & 1;
}

uint64_t sub_25F448028(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_25F4A3300();
  a3(v5);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4480AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_25F4A2C60();
}

uint64_t sub_25F44811C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_25F4A3300();
  a4(v6);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F448184@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F44FC98();
  *a2 = result;
  return result;
}

unint64_t sub_25F4481B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F447DB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t LaunchPayload.propertyListValue.getter()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v11 = *(v0 + 144);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t sub_25F448258(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 2);
  v45[0] = *(a1 + 1);
  v45[1] = v3;
  v46 = *(a1 + 3);
  v47[0] = v3;
  v47[1] = v46;
  v4 = *(a1 + 64);
  v5 = *(a1 + 65);
  v6 = a1[9];
  v7 = a1[10];
  v8 = *(a1 + 88);
  v9 = *(a1 + 92);
  v10 = a1[13];
  v11 = *(a1 + 144);
  v44 = 0;
  v42 = v2;
  v43 = v1;
  v41 = 1;
  v39 = v3;
  v40 = v46;
  v38 = 9;
  v35 = v45[0];
  v36 = v3;
  v37 = v46;
  v34 = 2;
  v33 = v4;
  v32 = 3;
  v31 = v5;
  v30 = 4;
  v29 = v6;
  v28 = 5;
  v27 = v7;
  v26 = 6;
  v25 = v8;
  v24 = 7;
  v22 = v9;
  v23 = 0;
  v21 = 8;
  v20 = v10;
  v19 = 10;
  v12 = *(a1 + 8);
  v16 = *(a1 + 7);
  v17 = v12;
  v18 = v11 & 1;

  sub_25F452120(v45, v15);
  sub_25F4520E8(v47, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EB28, &qword_25F4AB528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DA00, &qword_25F4A5350);
  type metadata accessor for audit_token_t(0);
  sub_25F44F698();
  sub_25F44F534();
  sub_25F44F6EC();
  sub_25F44F740();
  sub_25F44F794();
  sub_25F44F7E8();
  sub_25F41A91C();
  sub_25F44F870();
  sub_25F44F8C4();
  sub_25F4502D8(&qword_27FD6DA08, &qword_27FD6DA00, &qword_25F4A5350, sub_25F3FC25C);
  v13 = sub_25F4A2840();
  sub_25F3E4814(v35, *(&v35 + 1));
  sub_25F403404(v39, *(&v39 + 1));

  return v13;
}

uint64_t LaunchPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v29 + 1) = &type metadata for LaunchPayload.Key;
  v5 = sub_25F44F698();
  v30 = v5;
  LOBYTE(v28) = 9;
  sub_25F44F6EC();
  sub_25F4A2530();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(&v28);
    *(&v29 + 1) = &type metadata for LaunchPayload.Key;
    v30 = v5;
    LOBYTE(v28) = 1;
    sub_25F4A2530();
  }

  __swift_destroy_boxed_opaque_existential_1(&v28);
  v6 = v31[1];
  v7 = v32;
  v20 = v31[2];
  v21 = v31[0];
  v8 = v34;
  v19 = v33;
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 0;
  sub_25F4A2530();
  v18 = v7;
  __swift_destroy_boxed_opaque_existential_1(v31);
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 2;
  sub_25F44F740();
  sub_25F4A2580();
  __swift_destroy_boxed_opaque_existential_1(v31);
  if (v28 == 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v28;
  }

  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 3;
  sub_25F44F794();
  sub_25F4A2580();
  v17 = v9;
  __swift_destroy_boxed_opaque_existential_1(v31);
  v10 = v28;
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EB28, &qword_25F4AB528);
  sub_25F44F7E8();
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
  sub_25F41A91C();
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 6;
  sub_25F44F870();
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 7;
  sub_25F44F8C4();
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DA00, &qword_25F4A5350);
  sub_25F4502D8(&qword_27FD6DA08, &qword_27FD6DA00, &qword_25F4A5350, sub_25F3FC25C);
  sub_25F4A2580();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v11 = v28;
  if (!v28)
  {
    v11 = MEMORY[0x277D84F90];
  }

  v16 = v11;
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 10;
  type metadata accessor for audit_token_t(0);
  sub_25F4A2580();
  v12 = sub_25F4A25E0();
  (*(*(v12 - 8) + 8))(a1, v12);
  result = __swift_destroy_boxed_opaque_existential_1(v31);
  v14 = v30;
  *a2 = v26;
  *(a2 + 8) = v27;
  *(a2 + 16) = v21;
  *(a2 + 24) = v6;
  *(a2 + 32) = v20;
  *(a2 + 40) = v18;
  *(a2 + 48) = v19;
  *(a2 + 56) = v8;
  *(a2 + 64) = v17;
  *(a2 + 65) = v10 & 1;
  *(a2 + 72) = v25;
  *(a2 + 80) = v24;
  *(a2 + 88) = v23;
  *(a2 + 92) = v22;
  *(a2 + 104) = v16;
  v15 = v29;
  *(a2 + 112) = v28;
  *(a2 + 128) = v15;
  *(a2 + 144) = v14;
  return result;
}

uint64_t sub_25F448DA0()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[8];
  v11 = *(v0 + 144);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t BinaryType.init(cpuType:cpuSubtype:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double static BinaryType.unspecified.getter@<D0>(void *a1@<X8>)
{
  result = NAN;
  *a1 = -1;
  return result;
}

uint64_t sub_25F448E9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7974627553757063;
  }

  else
  {
    v4 = 0x65707954757063;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEA00000000006570;
  }

  if (*a2)
  {
    v6 = 0x7974627553757063;
  }

  else
  {
    v6 = 0x65707954757063;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006570;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F448F48()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F448FD0()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F449044()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4490D4(uint64_t *a1@<X8>)
{
  v2 = 0x65707954757063;
  if (*v1)
  {
    v2 = 0x7974627553757063;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006570;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F449118()
{
  if (*v0)
  {
    result = 0x7974627553757063;
  }

  else
  {
    result = 0x65707954757063;
  }

  *v0;
  return result;
}

uint64_t BinaryType.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v12 = &type metadata for BinaryType.Key;
  v5 = sub_25F44F920();
  v13 = v5;
  LOBYTE(v11[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
    v6 = v14;
    v12 = &type metadata for BinaryType.Key;
    v13 = v5;
    LOBYTE(v11[0]) = 1;
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v6;
    a2[1] = v10;
  }

  return result;
}

PreviewsMessagingOS::ProcessType_optional __swiftcall ProcessType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

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

unint64_t ProcessType.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x746163696C707061;
  }

  *v0;
  return result;
}

uint64_t sub_25F449478(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x746163696C707061;
  }

  if (v3)
  {
    v5 = 0xEB000000006E6F69;
  }

  else
  {
    v5 = 0x800000025F4B65C0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x746163696C707061;
  }

  if (*a2)
  {
    v7 = 0x800000025F4B65C0;
  }

  else
  {
    v7 = 0xEB000000006E6F69;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F44952C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4495BC()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F449638()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4496D0(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B65C0;
  v3 = 0x746163696C707061;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEB000000006E6F69;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F44971C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F451E98();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4497E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574616C756D6973;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000064;
  }

  if (*a2)
  {
    v6 = 0x6574616C756D6973;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (*a2)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F44988C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F449914()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F449988()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F449A18(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x6574616C756D6973;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F449A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F451DA4();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t DeviceType.propertyListValue.getter()
{
  v1 = sub_25F4A25E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[1];
  v15 = *v0;
  v16 = v6;
  v7 = v0[3];
  v17 = v0[2];
  v18 = v7;
  v10 = &v15;
  sub_25F44F98C();
  sub_25F44F9E0();
  result = sub_25F4A25C0();
  if (*(&v15 + 1))
  {
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v11 = v15;
    sub_25F44FA34();
    sub_25F4A2940();
    sub_25F4A2540();
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t DeviceType.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  v19[3] = &type metadata for DeviceType.Key;
  v19[4] = sub_25F44F98C();
  sub_25F44F9E0();
  sub_25F4A2580();
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  if (v20 == 2)
  {
    (*(v6 + 16))(v12, a1, v5);
    sub_25F44FA34();
    sub_25F4A2950();
  }

  else
  {
    if ((v20 & 1) == 0)
    {
      result = (*(v6 + 8))(a1, v5);
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      goto LABEL_9;
    }

    (*(v6 + 16))(v10, a1, v5);
    sub_25F44FA34();
    sub_25F4A2950();
  }

  result = (*(v6 + 8))(a1, v5);
  v14 = v18[0];
  v15 = v18[1];
  v16 = v18[2];
  v17 = v18[3];
LABEL_9:
  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  return result;
}

uint64_t static DeviceType.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t DeviceType.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x25F8DDB20](1);
  }

  v1 = *v0;
  MEMORY[0x25F8DDB20](2);

  return sub_25F4A2C60();
}

uint64_t DeviceType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A3300();
  if (v2)
  {
    MEMORY[0x25F8DDB20](2);
    sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](1);
  }

  return sub_25F4A3350();
}

uint64_t sub_25F44A0EC()
{
  v1 = sub_25F4A25E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[1];
  v15 = *v0;
  v16 = v6;
  v7 = v0[3];
  v17 = v0[2];
  v18 = v7;
  v10 = &v15;
  sub_25F44F98C();
  sub_25F44F9E0();
  result = sub_25F4A25C0();
  if (*(&v15 + 1))
  {
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v11 = v15;
    sub_25F44FA34();
    sub_25F4A2940();
    sub_25F4A2540();
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_25F44A270()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A3300();
  if (v2)
  {
    MEMORY[0x25F8DDB20](2);
    sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](1);
  }

  return sub_25F4A3350();
}

uint64_t sub_25F44A2E0()
{
  if (!v0[1])
  {
    return MEMORY[0x25F8DDB20](1);
  }

  v1 = *v0;
  MEMORY[0x25F8DDB20](2);

  return sub_25F4A2C60();
}

uint64_t sub_25F44A358()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A3300();
  if (v2)
  {
    MEMORY[0x25F8DDB20](2);
    sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](1);
  }

  return sub_25F4A3350();
}

uint64_t sub_25F44A3C4(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t SimulatorDevicePayload.deviceIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SimulatorDevicePayload.deviceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double SimulatorDevicePayload.displaySize.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t SimulatorDevicePayload.deviceEnvironment.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t SimulatorDevicePayload.frameBufferMaskPath.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SimulatorDevicePayload.frameBufferMaskPath.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SimulatorDevicePayload.init(deviceIdentifier:displaySize:displayScale:deviceEnvironment:maskPath:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a7;
  *(a6 + 24) = a8;
  *(a6 + 32) = a9;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

uint64_t sub_25F44A5F8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44A6E8()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F44A7C4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44A8B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F44FCE4();
  *a2 = result;
  return result;
}

void sub_25F44A8E0(unint64_t *a1@<X8>)
{
  v2 = 0x5379616C70736964;
  v3 = *v1;
  v4 = 0xEB00000000657A69;
  v5 = 0xEC000000656C6163;
  v6 = 0x800000025F4B6620;
  v7 = 0xD000000000000013;
  if (v3 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x800000025F4B6640;
  }

  if (v3 == 2)
  {
    v7 = 0x5379616C70736964;
  }

  else
  {
    v5 = v6;
  }

  if (!*v1)
  {
    v2 = 0xD000000000000010;
    v4 = 0x800000025F4B65F0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v2 = v7;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8;
}

unint64_t sub_25F44A98C()
{
  v1 = 0x5379616C70736964;
  v2 = *v0;
  v3 = 0xD000000000000013;
  if (v2 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v2 == 2)
  {
    v3 = 0x5379616C70736964;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t SimulatorDevicePayload.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25F4A25A0();
}

uint64_t sub_25F44AA84(uint64_t *a1)
{
  v2 = *(a1 + 3);
  v6 = *a1;
  v7 = a1[1];
  v5 = *(a1 + 1);
  v4 = a1[4];
  v3 = a1[5];
  type metadata accessor for CGSize(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EB28, &qword_25F4AB528);
  sub_25F44FA90();
  sub_25F44F7E8();
  return sub_25F4A28A0();
}

uint64_t SimulatorDevicePayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = &type metadata for SimulatorDevicePayload.Key;
  v5 = sub_25F44FA90();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    v8 = v19;
    v7 = v20;
    v17 = &type metadata for SimulatorDevicePayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 1;
    type metadata accessor for CGSize(0);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = &type metadata for SimulatorDevicePayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v16);
    v9 = v21;
    v17 = &type metadata for SimulatorDevicePayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EB28, &qword_25F4AB528);
    sub_25F44F7E8();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = &type metadata for SimulatorDevicePayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 4;
    sub_25F4A2580();
    v11 = sub_25F4A25E0();
    (*(*(v11 - 8) + 8))(a1, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v9;
    *(a2 + 40) = v13;
    *(a2 + 48) = v12;
  }

  return result;
}

uint64_t sub_25F44AE90()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25F4A25A0();
}

uint64_t PrepareToRelaunchPayload.agentDescriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

__n128 PrepareToRelaunchPayload.agentDescriptor.setter(__int128 *a1)
{
  v8 = a1[1];
  v9 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);

  result = v8;
  *v1 = v9;
  *(v1 + 16) = v8;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

void __swiftcall PrepareToRelaunchPayload.init(agentDescriptor:)(PreviewsMessagingOS::PrepareToRelaunchPayload *__return_ptr retstr, PreviewsMessagingOS::AgentDescriptor *agentDescriptor)
{
  countAndFlagsBits = agentDescriptor->bundle.bundleID._countAndFlagsBits;
  object = agentDescriptor->bundle.bundleID._object;
  retstr->agentDescriptor.idAcrossRelaunches = agentDescriptor->idAcrossRelaunches;
  retstr->agentDescriptor.bundle.bundleID._countAndFlagsBits = countAndFlagsBits;
  retstr->agentDescriptor.bundle.bundleID._object = object;
  retstr->agentDescriptor.bundle.path = agentDescriptor->bundle.path;
}

uint64_t sub_25F44AFFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x736544746E656761;
  }

  else
  {
    v4 = 0x656449746E656761;
  }

  if (v3)
  {
    v5 = 0xEF7265696669746ELL;
  }

  else
  {
    v5 = 0xEF726F7470697263;
  }

  if (*a2)
  {
    v6 = 0x736544746E656761;
  }

  else
  {
    v6 = 0x656449746E656761;
  }

  if (*a2)
  {
    v7 = 0xEF726F7470697263;
  }

  else
  {
    v7 = 0xEF7265696669746ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F44B0BC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44B158()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F44B1E0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44B284(uint64_t *a1@<X8>)
{
  v2 = 0x656449746E656761;
  if (*v1)
  {
    v2 = 0x736544746E656761;
  }

  v3 = 0xEF7265696669746ELL;
  if (*v1)
  {
    v3 = 0xEF726F7470697263;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F44B2DC()
{
  if (*v0)
  {
    result = 0x736544746E656761;
  }

  else
  {
    result = 0x656449746E656761;
  }

  *v0;
  return result;
}

uint64_t PrepareToRelaunchPayload.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_25F4A25A0();
}

uint64_t sub_25F44B380(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v21[0] = a1[2];
  v21[1] = v3;
  v21[2] = v4;
  v21[3] = v5;
  v20 = 0;
  v16 = v21[0];
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v15 = 1;
  v9 = v1;
  v10 = v2;
  v11 = v21[0];
  v12 = v3;
  v13 = v4;
  v14 = v5;
  sub_25F4520B0(a1, v8);
  sub_25F4520E8(v21, v8);
  sub_25F44FAEC();
  sub_25F44F534();
  sub_25F44F6EC();
  v6 = sub_25F4A28D0();
  sub_25F3E4814(v9, v10);
  sub_25F403404(v16, v17);
  return v6;
}

uint64_t PrepareToRelaunchPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = &type metadata for PrepareToRelaunchPayload.Key;
  v5 = sub_25F44FAEC();
  v15 = v5;
  LOBYTE(v13[0]) = 1;
  sub_25F44F6EC();
  sub_25F4A2530();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = &type metadata for PrepareToRelaunchPayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 0;
    sub_25F4A2530();
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  else
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v13);
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  *a2 = v16;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_25F44B61C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  return sub_25F4A25A0();
}

uint64_t sub_25F44B684(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6580592;
  }

  else
  {
    v4 = 0x6B6F547469647561;
  }

  if (v3)
  {
    v5 = 0xEA00000000006E65;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6580592;
  }

  else
  {
    v6 = 0x6B6F547469647561;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xEA00000000006E65;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F44B728()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44B7A8()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F44B814()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44B89C(uint64_t *a1@<X8>)
{
  v2 = 6580592;
  if (!*v1)
  {
    v2 = 0x6B6F547469647561;
  }

  v3 = 0xEA00000000006E65;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F44B8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F451DF8();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F44B99C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6B6F547469647561;
  v4 = 0xEA00000000006E65;
  if (v2 != 1)
  {
    v3 = 6580592;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  v7 = 0x6B6F547469647561;
  v8 = 0xEA00000000006E65;
  if (*a2 != 1)
  {
    v7 = 6580592;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F44BA9C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44BB44()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F44BBD8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44BC7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F44FD30();
  *a2 = result;
  return result;
}

void sub_25F44BCAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0xEA00000000006E65;
  v5 = 0x6B6F547469647561;
  if (v2 != 1)
  {
    v5 = 6580592;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F44BD10()
{
  v1 = 0x6B6F547469647561;
  if (*v0 != 1)
  {
    v1 = 6580592;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t ProcessID.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_25F44FB58();
  sub_25F44FBAC();
  sub_25F4A25C0();
  v6 = *v0;
  if ((v0[4] & 1) == 0)
  {
    v8 = *v0;
    v9 = *(v0 + 1);
    v10 = v0[3];
    v12 = &type metadata for ProcessID.Key;
    v13 = v5;
    LOBYTE(v11[0]) = 1;
    type metadata accessor for audit_token_t(0);
    sub_25F4A2520();
    __swift_destroy_boxed_opaque_existential_1(v11);
    sub_25F4A2FF0();
  }

  v12 = &type metadata for ProcessID.Key;
  v13 = v5;
  LOBYTE(v11[0]) = 2;
  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t ProcessID.pid.getter()
{
  result = *v0;
  if ((*(v0 + 32) & 1) == 0)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 8);
    return sub_25F4A2FF0();
  }

  return result;
}

double ProcessID.init(propertyListValue:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25F44FD7C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_25F44BF44()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return ProcessID.propertyListValue.getter();
}

double sub_25F44BF80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25F44FD7C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t ForwardPayload.messagePayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ForwardPayload(0) + 20);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ForwardPayload.messagePayload.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ForwardPayload(0) + 20);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ForwardPayload.pid.setter(int a1)
{
  result = type metadata accessor for ForwardPayload(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ForwardPayload.contentDomain.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ForwardPayload(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ForwardPayload.contentDomain.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ForwardPayload(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ForwardPayload.previewInterfaceOrientation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ForwardPayload(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ForwardPayload.previewInterfaceOrientation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ForwardPayload(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t ForwardPayload.sceneIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ForwardPayload(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ForwardPayload.sceneIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ForwardPayload(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ForwardPayload.init(messageType:messagePayload:pid:contentDomain:previewInterfaceOrientation:sceneIdentifier:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v11 = *a1;
  v12 = *a4;
  v13 = *a5;
  v14 = type metadata accessor for ForwardPayload(0);
  v15 = v14[7];
  a8[v15] = 3;
  v16 = v14[8];
  a8[v16] = 4;
  v17 = &a8[v14[9]];
  *a8 = v11;
  v18 = v14[5];
  v19 = sub_25F4A25E0();
  result = (*(*(v19 - 8) + 32))(&a8[v18], a2, v19);
  *&a8[v14[6]] = a3;
  a8[v15] = v12;
  a8[v16] = v13;
  *v17 = a6;
  v17[1] = a7;
  return result;
}

uint64_t sub_25F44C500()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F44C618@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F451E4C();
  *a2 = result;
  return result;
}

void sub_25F44C648(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657079;
  v4 = 0x546567617373656DLL;
  v5 = 0xD000000000000012;
  v6 = 0x800000025F4B6670;
  v7 = 0x800000025F4B6690;
  v8 = 0xD00000000000001BLL;
  if (v2 != 4)
  {
    v8 = 0x656449656E656373;
    v7 = 0xEF7265696669746ELL;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEE0064616F6C7961;
  v10 = 0x506567617373656DLL;
  if (v2 != 1)
  {
    v10 = 6580592;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_25F44C728()
{
  v1 = *v0;
  v2 = 0x546567617373656DLL;
  v3 = 0xD000000000000012;
  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0x656449656E656373;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x506567617373656DLL;
  if (v1 != 1)
  {
    v5 = 6580592;
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

uint64_t sub_25F44C840(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6ED78, &unk_25F4AD578);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v13 = *a1;
  v14 = *(v6 + 56);
  *(&v27 - v11) = 1;
  v15 = type metadata accessor for ForwardPayload(0);
  v16 = v15[5];
  v17 = sub_25F4A25E0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v12[v14], &a1[v16], v17);
  LODWORD(v14) = *&a1[v15[6]];
  LOBYTE(v16) = a1[v15[7]];
  v19 = v15[9];
  LOBYTE(v15) = a1[v15[8]];
  v20 = &a1[v19];
  v21 = *&a1[v19];
  v28 = *(v20 + 1);
  v42 = 0;
  v41 = v13;
  sub_25F404B8C(v12, v10, &qword_27FD6ED78, &unk_25F4AD578);
  v22 = *v10;
  v23 = &v10[*(v6 + 56)];
  v24 = v29;
  (*(v18 + 32))(v29, v23, v17);
  (*(v18 + 56))(v24, 0, 1, v17);
  v40 = v22;
  v39 = 2;
  v37 = v14;
  v38 = 0;
  v36 = 3;
  v35 = v16;
  v34 = 4;
  v33 = v15;
  v32 = 5;
  v30 = v21;
  v31 = v28;
  sub_25F450014();
  sub_25F450068();
  sub_25F4500BC();
  sub_25F43AA08();
  v25 = sub_25F4A2890();
  sub_25F3F21F4(v24, &qword_27FD6DAA0, &qword_25F4A5550);
  sub_25F3F21F4(v12, &qword_27FD6ED78, &unk_25F4AD578);
  return v25;
}

uint64_t ForwardPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &type metadata for ForwardPayload.Key;
  v10 = sub_25F450014();
  v29 = v10;
  LOBYTE(v27[0]) = 0;
  sub_25F450068();
  sub_25F4A2530();
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
    v11 = v32;
    v28 = &type metadata for ForwardPayload.Key;
    v29 = v10;
    LOBYTE(v27[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v27);
    v28 = &type metadata for ForwardPayload.Key;
    v29 = v10;
    LOBYTE(v27[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v27);
    v24 = v30;
    v28 = &type metadata for ForwardPayload.Key;
    v29 = v10;
    LOBYTE(v27[0]) = 3;
    sub_25F4500BC();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v27);
    v23 = v31;
    v28 = &type metadata for ForwardPayload.Key;
    v29 = v10;
    LOBYTE(v27[0]) = 4;
    sub_25F43AA08();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v27);
    v22 = v25;
    v28 = &type metadata for ForwardPayload.Key;
    v29 = v10;
    LOBYTE(v27[0]) = 5;
    sub_25F4A2580();
    v13 = v22;
    if (v22 == 4)
    {
      v13 = 0;
    }

    v22 = v13;
    (*(v6 + 8))(a1, v5);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v20 = v26;
    v21 = v25;
    v14 = type metadata accessor for ForwardPayload(0);
    v19 = v14[7];
    a2[v19] = 3;
    v15 = v14[8];
    a2[v15] = 4;
    v16 = &a2[v14[9]];
    *a2 = v11;
    result = (*(v6 + 32))(&a2[v14[5]], v9, v5);
    *&a2[v14[6]] = v24;
    v17 = v22;
    a2[v19] = v23;
    a2[v15] = v17;
    v18 = v20;
    *v16 = v21;
    v16[1] = v18;
  }

  return result;
}
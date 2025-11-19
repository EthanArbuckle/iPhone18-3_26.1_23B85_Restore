uint64_t sub_25F477354()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4773D0()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F477438()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4774BC(uint64_t *a1@<X8>)
{
  v2 = 1835365481;
  if (!*v1)
  {
    v2 = 0x6E6F6974636573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4774F4()
{
  if (*v0)
  {
    result = 1835365481;
  }

  else
  {
    result = 0x6E6F6974636573;
  }

  *v0;
  return result;
}

uint64_t GridIndex.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = &type metadata for GridIndex.Key;
  v5 = sub_25F47C794();
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
    v12 = &type metadata for GridIndex.Key;
    v13 = v5;
    LOBYTE(v11[0]) = 1;
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    v10 = v14;
    *a2 = v6;
    a2[1] = v10;
  }

  return result;
}

uint64_t GridIndex.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x25F8DDB20](*v0);
  return MEMORY[0x25F8DDB20](v1);
}

uint64_t GridIndex.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](v1);
  MEMORY[0x25F8DDB20](v2);
  return sub_25F4A3350();
}

uint64_t sub_25F477850()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](v1);
  MEMORY[0x25F8DDB20](v2);
  return sub_25F4A3350();
}

uint64_t sub_25F4778AC()
{
  v1 = v0[1];
  MEMORY[0x25F8DDB20](*v0);
  return MEMORY[0x25F8DDB20](v1);
}

uint64_t sub_25F4778E8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](v1);
  MEMORY[0x25F8DDB20](v2);
  return sub_25F4A3350();
}

uint64_t GridIndex.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A30F0();

  v3 = sub_25F4A3210();
  MEMORY[0x25F8DD480](v3);

  MEMORY[0x25F8DD480](0x206D65746920202CLL, 0xE800000000000000);
  v4 = sub_25F4A3210();
  MEMORY[0x25F8DD480](v4);

  return 0x206E6F6974636573;
}

uint64_t StaticPreviewReply.contentPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticPreviewReply(0) + 20);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticPreviewReply.controlDescriptions.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticPreviewReply(0) + 24));
}

uint64_t StaticPreviewReply.init(chromeType:controlDescriptions:controlStates:contentPayload:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for StaticPreviewReply(0);
  *&a5[v9[6]] = a2;
  *&a5[v9[7]] = a3;
  v10 = v9[5];
  v11 = sub_25F4A25E0();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v10], a4, v11);
}

uint64_t sub_25F477BDC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F477CC0()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F477D90()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F477E70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48AF24();
  *a2 = result;
  return result;
}

void sub_25F477EA0(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006570;
  v3 = 0x7954656D6F726863;
  v4 = 0xED00007365746174;
  v5 = 0x536C6F72746E6F63;
  if (*v1 != 2)
  {
    v5 = 0x50746E65746E6F63;
    v4 = 0xEE0064616F6C7961;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000025F4B6A50;
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

unint64_t sub_25F477F40()
{
  v1 = 0x7954656D6F726863;
  v2 = 0x536C6F72746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x50746E65746E6F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t StaticPreviewReply.propertyListValue.getter()
{
  v1 = sub_25F4A25E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0;
  sub_25F4A25A0();
  v6 = v0 + *(type metadata accessor for StaticPreviewReply(0) + 20);
  sub_25F4A2550();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_25F4780E4(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v23[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FCF8, &unk_25F4B29C0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-v11];
  v24 = *a1;
  v13 = type metadata accessor for StaticPreviewReply(0);
  v14 = v13[5];
  v15 = *&a1[v13[6]];
  v16 = *&a1[v13[7]];
  v17 = *(v6 + 56);
  *v12 = 3;
  v18 = sub_25F4A25E0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v12[v17], &a1[v14], v18);
  v32 = 0;
  v31 = v24;
  v30 = 1;
  v29 = v15;
  v28 = 2;
  v27 = v16;
  sub_25F404B8C(v12, v10, &qword_27FD6FCF8, &unk_25F4B29C0);
  LOBYTE(v15) = *v10;
  v20 = v25;
  (*(v19 + 32))(v25, &v10[*(v6 + 56)], v18);
  (*(v19 + 56))(v20, 0, 1, v18);
  v26 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F778, &qword_25F4AFB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC80, &unk_25F4AFB40);
  sub_25F47C810();
  sub_25F47C864();
  sub_25F47C8B8();
  sub_25F47C96C();
  v21 = sub_25F4A28B0();
  sub_25F3F21F4(v20, &qword_27FD6DAA0, &qword_25F4A5550);

  sub_25F3F21F4(v12, &qword_27FD6FCF8, &unk_25F4B29C0);
  return v21;
}

uint64_t StaticPreviewReply.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &type metadata for StaticPreviewReply.Key;
  v10 = sub_25F47C810();
  v23 = v10;
  LOBYTE(v21[0]) = 0;
  sub_25F47C864();
  sub_25F4A2580();
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (v24 == 5)
    {
      v11 = 0;
    }

    else
    {
      v11 = v24;
    }

    v22 = &type metadata for StaticPreviewReply.Key;
    v23 = v10;
    LOBYTE(v21[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F778, &qword_25F4AFB38);
    sub_25F47C8B8();
    sub_25F4A2580();
    v19 = v11;
    v20 = a2;
    __swift_destroy_boxed_opaque_existential_1(v21);
    v13 = MEMORY[0x277D84F90];
    if (v24)
    {
      v14 = v24;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v22 = &type metadata for StaticPreviewReply.Key;
    v23 = v10;
    LOBYTE(v21[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC80, &unk_25F4AFB40);
    sub_25F47C96C();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v21);
    if (v24)
    {
      v15 = v24;
    }

    else
    {
      v15 = v13;
    }

    v22 = &type metadata for StaticPreviewReply.Key;
    v23 = v10;
    LOBYTE(v21[0]) = 3;
    sub_25F4A2530();
    (*(v6 + 8))(a1, v5);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v16 = v20;
    *v20 = v19;
    v17 = type metadata accessor for StaticPreviewReply(0);
    *&v16[v17[6]] = v14;
    *&v16[v17[7]] = v15;
    return (*(v6 + 32))(&v16[v17[5]], v9, v5);
  }
}

uint64_t sub_25F478714(uint64_t a1)
{
  v3 = sub_25F4A25E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v1;
  sub_25F4A25A0();
  v8 = v1 + *(a1 + 20);
  sub_25F4A2550();
  return (*(v4 + 8))(v7, v3);
}

uint64_t HostedPreviewReply.hostIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_25F47CA68(v2, v3, v4);
}

__n128 HostedPreviewReply.sceneLayout.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t HostedPreviewReply.contentPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HostedPreviewReply(0) + 24);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_25F4788EC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));
}

uint64_t HostedPreviewReply.controlStates.getter()
{
  v1 = *(v0 + *(type metadata accessor for HostedPreviewReply(0) + 32));
}

unint64_t HostedPreviewReply.screenID.getter()
{
  v1 = *v0;
  LODWORD(v2) = *(v0 + 16);
  if (*(v0 + 16))
  {
    if (v2 == 1 || (v2 = v1 | *(v0 + 8)) != 0)
    {
      v1 = 0;
      LOBYTE(v2) = 1;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v1 = v1;
  }

  return v1 | (v2 << 32);
}

uint64_t HostedPreviewReply.init(hostIdentity:sceneLayout:controlDescriptions:controlStates:contentPayload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *a6 = *a1;
  *(a6 + 16) = v10;
  *(a6 + 24) = *a2;
  *(a6 + 40) = v11;
  v12 = type metadata accessor for HostedPreviewReply(0);
  *(a6 + v12[7]) = a3;
  *(a6 + v12[8]) = a4;
  v13 = v12[6];
  v14 = sub_25F4A25E0();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a5, v14);
}

uint64_t sub_25F478A78()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F478B9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48AF70();
  *a2 = result;
  return result;
}

void sub_25F478BCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000079746974;
  v4 = 0x6E65644974736F68;
  v5 = 0xED00007365746174;
  v6 = 0x536C6F72746E6F63;
  v7 = 0xEE0064616F6C7961;
  v8 = 0x50746E65746E6F63;
  if (v2 != 4)
  {
    v8 = 0x44496E6565726373;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB0000000074756FLL;
  v10 = 0x79614C656E656373;
  if (v2 != 1)
  {
    v10 = 0xD000000000000013;
    v9 = 0x800000025F4B6A50;
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
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_25F478CB8()
{
  v1 = *v0;
  v2 = 0x6E65644974736F68;
  v3 = 0x536C6F72746E6F63;
  v4 = 0x50746E65746E6F63;
  if (v1 != 4)
  {
    v4 = 0x44496E6565726373;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x79614C656E656373;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
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

uint64_t sub_25F478DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FCF0, &qword_25F4B29B8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v35 = *(a1 + 16);
  v14 = *(a1 + 24);
  v32 = *(a1 + 32);
  v33 = v14;
  v31 = *(a1 + 40);
  v15 = type metadata accessor for HostedPreviewReply(0);
  v16 = v15[6];
  v17 = *(a1 + v15[7]);
  v36 = *(a1 + v15[8]);
  v34 = v5;
  v18 = *(v5 + 48);
  *v11 = 4;
  v19 = sub_25F4A25E0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v38 = v11;
  v21(&v11[v18], a1 + v16, v19);
  v22 = *a1;
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1 && *a1 == 0)
    {
      v30 = 0;
      v29 = 1;
    }

    else
    {
      v29 = 0;
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
    v29 = v22;
  }

  v54 = 0;
  v51 = v13;
  v52 = v12;
  v23 = v35;
  v53 = v35;
  v50 = 1;
  v47 = v33;
  v48 = v32;
  v49 = v31;
  v46 = 2;
  v45 = v17;
  v44 = 3;
  v43 = v36;
  sub_25F404B8C(v38, v9, &qword_27FD6FCF0, &qword_25F4B29B8);
  v24 = *v9;
  v25 = v37;
  (*(v20 + 32))(v37, &v9[*(v34 + 48)], v19);
  (*(v20 + 56))(v25, 0, 1, v19);
  v42 = v24;
  v41 = 5;
  v39 = v29;
  v40 = v30;
  sub_25F47CA68(v13, v12, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F778, &qword_25F4AFB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC80, &unk_25F4AFB40);
  sub_25F47CAA8();
  sub_25F47CAFC();
  sub_25F47CB50();
  sub_25F47C8B8();
  sub_25F47C96C();
  v26 = sub_25F4A2890();
  sub_25F3F21F4(v25, &qword_27FD6DAA0, &qword_25F4A5550);

  sub_25F48B4F4(v51, v52, v53);
  sub_25F3F21F4(v38, &qword_27FD6FCF0, &qword_25F4B29B8);
  return v26;
}

uint64_t HostedPreviewReply.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = sub_25F4A25E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = &type metadata for HostedPreviewReply.Key;
  v13 = sub_25F47CAA8();
  v41 = v13;
  LOBYTE(v39[0]) = 0;
  sub_25F47CAFC();
  sub_25F4A2530();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
    v40 = &type metadata for HostedPreviewReply.Key;
    v41 = v13;
    LOBYTE(v39[0]) = 5;
    sub_25F4A2580();

    __swift_destroy_boxed_opaque_existential_1(v39);
    v37 = 0;
    if (BYTE4(v42) == 1)
    {
      v38 = 2;
      v14 = 1;
    }

    else
    {
      v38 = 0;
      v14 = v42;
    }

    v36 = v14;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
    v36 = v42;
    v37 = v43;
    v38 = v44;
  }

  v40 = &type metadata for HostedPreviewReply.Key;
  v41 = v13;
  LOBYTE(v39[0]) = 1;
  sub_25F47CB50();
  sub_25F4A2580();
  v32 = v12;
  __swift_destroy_boxed_opaque_existential_1(v39);
  v33 = v43;
  v34 = v42;
  v15 = v44;
  v40 = &type metadata for HostedPreviewReply.Key;
  v41 = v13;
  LOBYTE(v39[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F778, &qword_25F4AFB38);
  sub_25F47C8B8();
  sub_25F4A2580();
  v31 = v15;
  __swift_destroy_boxed_opaque_existential_1(v39);
  if (v45)
  {
    v16 = v45;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v40 = &type metadata for HostedPreviewReply.Key;
  v41 = v13;
  LOBYTE(v39[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC80, &unk_25F4AFB40);
  sub_25F47C96C();
  sub_25F4A2580();
  __swift_destroy_boxed_opaque_existential_1(v39);
  if (v45)
  {
    v17 = v45;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v40 = &type metadata for HostedPreviewReply.Key;
  v41 = v13;
  LOBYTE(v39[0]) = 4;
  sub_25F4A2580();
  v29 = v17;
  v30 = v16;
  __swift_destroy_boxed_opaque_existential_1(v39);
  v18 = *(v9 + 48);
  if (v18(v7, 1, v8) == 1)
  {
    v19 = v32;
    _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
    (*(v9 + 8))(a1, v8);
    v20 = v18(v7, 1, v8);
    v22 = v33;
    v21 = v34;
    v23 = v31;
    if (v20 != 1)
    {
      sub_25F3F21F4(v7, &qword_27FD6DAA0, &qword_25F4A5550);
    }
  }

  else
  {
    (*(v9 + 8))(a1, v8);
    v19 = v32;
    (*(v9 + 32))(v32, v7, v8);
    v22 = v33;
    v21 = v34;
    v23 = v31;
  }

  v24 = v35;
  v25 = v37;
  *v35 = v36;
  v24[1] = v25;
  *(v24 + 16) = v38;
  v24[3] = v21;
  v24[4] = v22;
  *(v24 + 40) = v23;
  v26 = type metadata accessor for HostedPreviewReply(0);
  v27 = v29;
  *(v24 + v26[7]) = v30;
  *(v24 + v26[8]) = v27;
  return (*(v9 + 32))(v24 + v26[6], v19, v8);
}

uint64_t RenderPayload.bitmapDescription.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_25F47CBBC(v8, &v7);
}

_OWORD *RenderPayload.init(bitmapDescription:selectableRegions:snapshotCornerRadius:scaleFactor:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = result[3];
  *(a3 + 32) = result[2];
  *(a3 + 48) = v5;
  *(a3 + 64) = result[4];
  v6 = result[1];
  *a3 = *result;
  *(a3 + 16) = v6;
  *(a3 + 80) = a2;
  *(a3 + 88) = a4;
  *(a3 + 96) = a5;
  return result;
}

uint64_t sub_25F479828()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F479904()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4799CC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F479AA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48AFBC();
  *a2 = result;
  return result;
}

void sub_25F479AD4(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000726F74;
  v3 = 0x636146656C616373;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x800000025F4B6AA0;
  }

  v4 = 0x800000025F4B6A80;
  if (*v1)
  {
    v4 = 0x800000025F4B69B0;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_25F479B6C()
{
  v1 = 0x636146656C616373;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000014;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0xD000000000000011;
  }

  else
  {
    return v1;
  }
}

uint64_t RenderPayload.propertyListValue.getter()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + 12);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25F4A25A0();
}

uint64_t sub_25F479C60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 48);
  v16 = *(a1 + 32);
  v17 = v2;
  v3 = *(a1 + 48);
  v18 = *(a1 + 64);
  *&v14[39] = v16;
  *&v14[55] = v2;
  *&v14[23] = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = *&v14[23];
  *&v14[71] = v18;
  *&v14[7] = v15[0];
  v22 = *&v14[32];
  v23 = *&v14[48];
  *v24 = *&v14[64];
  v20 = *v14;
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v19 = 0;
  *&v24[15] = *(&v18 + 1);
  v21 = *&v14[16];
  v11 = v16;
  v12 = v3;
  v13 = *(a1 + 64);
  v9 = v15[0];
  v10 = v1;
  sub_25F47CBBC(v15, &v26);
  sub_25F404B8C(&v19, &v26, &qword_27FD6FCE0, &qword_25F4B29A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
  sub_25F47CC20();
  sub_25F47CC74();
  sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
  v7 = sub_25F4A28B0();
  v25[2] = v11;
  v25[3] = v12;
  v25[4] = v13;
  v25[0] = v9;
  v25[1] = v10;
  sub_25F3F21F4(v25, &qword_27FD6FCE8, &qword_25F4B29B0);
  v26 = 0;
  v29 = *&v14[32];
  v30 = *&v14[48];
  *v31 = *&v14[64];
  *&v31[15] = *&v14[79];
  v27 = *v14;
  v28 = *&v14[16];
  sub_25F3F21F4(&v26, &qword_27FD6FCE0, &qword_25F4B29A8);
  return v7;
}

uint64_t RenderPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[3] = &type metadata for RenderPayload.Key;
  v5 = sub_25F47CC20();
  v25[4] = v5;
  LOBYTE(v25[0]) = 0;
  sub_25F47CC74();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v20 = v26;
    v21 = v27;
    v17 = &type metadata for RenderPayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
    sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v16);
    v7 = v19;
    v17 = &type metadata for RenderPayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 2;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v16);
    v8 = v14;
    v17 = &type metadata for RenderPayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 3;
    sub_25F4A2580();
    if (v15)
    {
      v8 = 0.0;
    }

    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    v11 = v14;
    if (v15)
    {
      v11 = 3.0;
    }

    v12 = v23;
    *(a2 + 32) = v22;
    *(a2 + 48) = v12;
    *(a2 + 64) = v24;
    v13 = v21;
    *a2 = v20;
    *(a2 + 16) = v13;
    *(a2 + 80) = v7;
    *(a2 + 88) = v8;
    *(a2 + 96) = v11;
  }

  return result;
}

uint64_t sub_25F47A1D4()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + 12);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_25F4A25A0();
}

uint64_t LayerHostPayload.init(contextID:scaleFactor:width:height:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  return result;
}

uint64_t sub_25F47A288()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47A350()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F47A404()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47A4C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48B008();
  *a2 = result;
  return result;
}

void sub_25F47A4F8(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000044;
  v3 = 0x49747865746E6F63;
  v4 = 0xE500000000000000;
  v5 = 0x6874646977;
  if (*v1 != 2)
  {
    v5 = 0x746867696568;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x636146656C616373;
    v2 = 0xEB00000000726F74;
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

uint64_t sub_25F47A57C()
{
  v1 = 0x49747865746E6F63;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 0x636146656C616373;
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

uint64_t LayerHostPayload.propertyListValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  return sub_25F4A25A0();
}

uint64_t LayerHostPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = &type metadata for LayerHostPayload.Key;
  v5 = sub_25F47CD2C();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = v16;
    v14 = &type metadata for LayerHostPayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = &type metadata for LayerHostPayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = &type metadata for LayerHostPayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 3;
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v6;
    a2[1] = v12;
    a2[2] = v11;
    a2[3] = v10;
  }

  return result;
}

uint64_t sub_25F47A8F8()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = v0[3];
  return sub_25F4A25A0();
}

double PreviewInstancesPayload.init(previewDescription:)@<D0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F7C0, &qword_25F4AFB50);
  v4 = swift_allocObject();
  *&result = 1;
  v6 = a1[2];
  v7 = a1[4];
  v8 = a1[5];
  v4[5] = a1[3];
  v4[6] = v7;
  v4[7] = v8;
  v9 = *a1;
  v10 = a1[1];
  v4[1] = xmmword_25F4A43D0;
  v4[2] = v9;
  v4[3] = v10;
  v4[4] = v6;
  *a2 = v4;
  return result;
}

uint64_t PreviewInstancesPayload.propertyListValue.getter()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F7C8, &qword_25F4AFB58);
  sub_25F47CD80();
  sub_25F4749C4(&qword_27FD6F7D8, &qword_27FD6F7C8, &qword_25F4AFB58, sub_25F47CDD4);
  return sub_25F4A25C0();
}

uint64_t PreviewInstancesPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for PreviewInstancesPayload.Key;
  v7[4] = sub_25F47CD80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F7C8, &qword_25F4AFB58);
  sub_25F4749C4(&qword_27FD6F7D8, &qword_27FD6F7C8, &qword_25F4AFB58, sub_25F47CDD4);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t sub_25F47AC60()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F7C8, &qword_25F4AFB58);
  sub_25F47CD80();
  sub_25F4749C4(&qword_27FD6F7D8, &qword_27FD6F7C8, &qword_25F4AFB58, sub_25F47CDD4);
  return sub_25F4A25C0();
}

uint64_t sub_25F47AD24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for PreviewInstancesPayload.Key;
  v7[4] = sub_25F47CD80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F7C8, &qword_25F4AFB58);
  sub_25F4749C4(&qword_27FD6F7D8, &qword_27FD6F7C8, &qword_25F4AFB58, sub_25F47CDD4);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

__n128 PreviewTraits.layout.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 PreviewTraits.layout.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

void static PreviewTraits.defaultTraits.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

__n128 PreviewTraits.init(layout:orientation:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  v4 = *a2;
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u8[1] = v4;
  return result;
}

uint64_t sub_25F47AF18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7461746E6569726FLL;
  }

  else
  {
    v4 = 0x74756F79616CLL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v6 = 0x7461746E6569726FLL;
  }

  else
  {
    v6 = 0x74756F79616CLL;
  }

  if (*a2)
  {
    v7 = 0xEB000000006E6F69;
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
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F47AFC4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47B04C()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F47B0C0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F47B150(uint64_t *a1@<X8>)
{
  v2 = 0x74756F79616CLL;
  if (*v1)
  {
    v2 = 0x7461746E6569726FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB000000006E6F69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F47B194()
{
  if (*v0)
  {
    result = 0x7461746E6569726FLL;
  }

  else
  {
    result = 0x74756F79616CLL;
  }

  *v0;
  return result;
}

uint64_t PreviewTraits.propertyListValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  return sub_25F4A25A0();
}

uint64_t sub_25F47B224()
{
  sub_25F47CE2C();
  sub_25F47CE80();
  sub_25F43AA08();
  return sub_25F4A28D0();
}

uint64_t PreviewTraits.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = &type metadata for PreviewTraits.Key;
  v5 = sub_25F47CE2C();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F47CE80();
  sub_25F4A2530();
  if (v2)
  {
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = v16;
    v7 = v17;
    v8 = v18;
    v14 = &type metadata for PreviewTraits.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F43AA08();
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 17) = v12;
  }

  return result;
}

uint64_t static PreviewTraits.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  if (v4 == 1)
  {
    v10 = *&v6 | *&v7;
    if (*&v2 | *&v3)
    {
      if (v8)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        return sub_25F46F8DC(v5, v9);
      }
    }

    else
    {
      if (v8)
      {
        v14 = v10 == 0;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        return sub_25F46F8DC(v5, v9);
      }
    }
  }

  else if ((v8 & 1) == 0 && v2 == v6 && v3 == v7)
  {
    return sub_25F46F8DC(v5, v9);
  }

  return 0;
}

BOOL static PreviewTraits.Layout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    v6 = *&v5 | *&v4;
    if (*&v3 | *&v2)
    {
      v7 = v6 != 0;
    }

    else
    {
      v7 = v6 == 0;
    }

    return *(a2 + 16) && v7;
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v8 = *a1;
    v9 = *a2;
    if (v3 != v5)
    {
      return 0;
    }

    else
    {
      v10 = *(a1 + 8);
      v11 = *(a2 + 8);
      return v2 == v4;
    }
  }
}

uint64_t PreviewTraits.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 17);
  if (*(v0 + 16) == 1)
  {
    MEMORY[0x25F8DDB20]((v2 | v1) != 0);
  }

  else
  {
    MEMORY[0x25F8DDB20](2);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x25F8DDB50](v4);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x25F8DDB50](v5);
  }

  sub_25F4A2C60();
}

uint64_t PreviewTraits.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_25F4A3300();
  PreviewTraits.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F47B694()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  return sub_25F4A25A0();
}

uint64_t sub_25F47B6FC()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_25F4A3300();
  PreviewTraits.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F47B75C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_25F4A3300();
  PreviewTraits.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F47B7B4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  if (v4 == 1)
  {
    v10 = *&v6 | *&v7;
    if (*&v2 | *&v3)
    {
      if (v8)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        return sub_25F46F8DC(v5, v9);
      }
    }

    else
    {
      if (v8)
      {
        v14 = v10 == 0;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        return sub_25F46F8DC(v5, v9);
      }
    }
  }

  else if ((v8 & 1) == 0 && v2 == v6 && v3 == v7)
  {
    return sub_25F46F8DC(v5, v9);
  }

  return 0;
}

uint64_t sub_25F47B824(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x74616854657A6973;
  v4 = 0xEC00000073746946;
  if (v2 != 1)
  {
    v3 = 0x6465786966;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656369766564;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x74616854657A6973;
  v8 = 0xEC00000073746946;
  if (*a2 != 1)
  {
    v7 = 0x6465786966;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656369766564;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
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

uint64_t sub_25F47B92C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47B9D0()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F47BA60()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47BB00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48B054();
  *a2 = result;
  return result;
}

void sub_25F47BB30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEC00000073746946;
  v5 = 0x74616854657A6973;
  if (v2 != 1)
  {
    v5 = 0x6465786966;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656369766564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F47BB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48ADA0();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F47BC54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6874646977;
  if (v2 != 1)
  {
    v4 = 0x746867696568;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1684957547;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6874646977;
  if (*a2 != 1)
  {
    v8 = 0x746867696568;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1684957547;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

uint64_t sub_25F47BD40()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47BDD4()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F47BE54()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47BEE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48B0A0();
  *a2 = result;
  return result;
}

void sub_25F47BF14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6874646977;
  if (v2 != 1)
  {
    v5 = 0x746867696568;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1684957547;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F47BF64()
{
  v1 = 0x6874646977;
  if (*v0 != 1)
  {
    v1 = 0x746867696568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t PreviewTraits.Layout.propertyListValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = sub_25F47D170();
  sub_25F47D1C4();
  result = sub_25F4A25C0();
  if ((v3 & 1) == 0)
  {
    v8 = v4;
    v9 = v1;
    v10 = 0;
    v7 = &type metadata for PreviewTraits.Layout.Key;
    LOBYTE(v6[0]) = 1;
    sub_25F4A2520();
    __swift_destroy_boxed_opaque_existential_1(v6);
    v8 = v4;
    v9 = v2;
    v10 = 0;
    v7 = &type metadata for PreviewTraits.Layout.Key;
    LOBYTE(v6[0]) = 2;
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t PreviewTraits.Layout.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = &type metadata for PreviewTraits.Layout.Key;
  v5 = sub_25F47D170();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_25F47D1C4();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v15)
  {
    if (v15 != 1)
    {
      v17 = &type metadata for PreviewTraits.Layout.Key;
      v18 = v5;
      LOBYTE(v16[0]) = 1;
      sub_25F4A2530();
      __swift_destroy_boxed_opaque_existential_1(v16);
      v10 = v15;
      v17 = &type metadata for PreviewTraits.Layout.Key;
      v18 = v5;
      LOBYTE(v16[0]) = 2;
      sub_25F4A2530();
      v13 = sub_25F4A25E0();
      (*(*(v13 - 8) + 8))(a1, v13);
      result = __swift_destroy_boxed_opaque_existential_1(v16);
      v12 = 0;
      v9 = v14;
      goto LABEL_8;
    }

    v8 = sub_25F4A25E0();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v11 = sub_25F4A25E0();
    result = (*(*(v11 - 8) + 8))(a1, v11);
    v10 = 0;
    v9 = 0;
  }

  v12 = 1;
LABEL_8:
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  return result;
}

uint64_t PreviewTraits.Layout.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) == 1)
  {
    return MEMORY[0x25F8DDB20]((v2 | v1) != 0);
  }

  MEMORY[0x25F8DDB20](2);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x25F8DDB50](v3);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x25F8DDB50](v4);
}

uint64_t PreviewTraits.Layout.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_25F4A3300();
  PreviewTraits.Layout.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F47C3DC()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_25F4A3300();
  PreviewTraits.Layout.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F47C434()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_25F4A3300();
  PreviewTraits.Layout.hash(into:)();
  return sub_25F4A3350();
}

BOOL sub_25F47C484(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    v6 = *&v5 | *&v4;
    if (*&v3 | *&v2)
    {
      v7 = v6 != 0;
    }

    else
    {
      v7 = v6 == 0;
    }

    return *(a2 + 16) && v7;
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v8 = *a1;
    v9 = *a2;
    if (v3 != v5)
    {
      return 0;
    }

    else
    {
      v10 = *(a1 + 8);
      v11 = *(a2 + 8);
      return v2 == v4;
    }
  }
}

PreviewsMessagingOS::PreviewTraits::Orientation_optional __swiftcall PreviewTraits.Orientation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PreviewTraits.Orientation.rawValue.getter()
{
  v1 = 0x7469617274726F70;
  *v0;
  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x70616373646E616CLL;
  }
}

void sub_25F47C600(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x7469617274726F70;
  v4 = 0xED00007466654C65;
  if (*v1 != 2)
  {
    v4 = 0xEE00746867695265;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x800000025F4B6AF0;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x70616373646E616CLL;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

_BYTE *sub_25F47C69C(_BYTE *result, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *result = 0;
  if (v5)
  {
    if (v5 == 1)
    {
      *a2 = 2;
    }

    else
    {
      if (v3 | v4)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      *a2 = v6;
    }
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

unint64_t sub_25F47C6E4()
{
  result = qword_27FD6F750;
  if (!qword_27FD6F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F750);
  }

  return result;
}

unint64_t sub_25F47C738()
{
  result = qword_27FD6F758;
  if (!qword_27FD6F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F758);
  }

  return result;
}

uint64_t sub_25F47C78C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25F477568();
}

unint64_t sub_25F47C794()
{
  result = qword_27FD6F760;
  if (!qword_27FD6F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F760);
  }

  return result;
}

unint64_t sub_25F47C810()
{
  result = qword_27FD6F768;
  if (!qword_27FD6F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F768);
  }

  return result;
}

unint64_t sub_25F47C864()
{
  result = qword_27FD6F770;
  if (!qword_27FD6F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F770);
  }

  return result;
}

unint64_t sub_25F47C8B8()
{
  result = qword_27FD6F780;
  if (!qword_27FD6F780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6F778, &qword_25F4AFB38);
    sub_25F47CA20(&qword_27FD6F788, type metadata accessor for CanvasControlDescription);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F780);
  }

  return result;
}

unint64_t sub_25F47C96C()
{
  result = qword_27FD6DC88;
  if (!qword_27FD6DC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6DC80, &unk_25F4AFB40);
    sub_25F47CA20(&qword_27FD6DA68, type metadata accessor for PlistValueBox);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DC88);
  }

  return result;
}

uint64_t sub_25F47CA20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F47CA68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_25F47CAA8()
{
  result = qword_27FD6F790;
  if (!qword_27FD6F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F790);
  }

  return result;
}

unint64_t sub_25F47CAFC()
{
  result = qword_27FD6F798;
  if (!qword_27FD6F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F798);
  }

  return result;
}

unint64_t sub_25F47CB50()
{
  result = qword_27FD6F7A0;
  if (!qword_27FD6F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7A0);
  }

  return result;
}

uint64_t sub_25F47CBA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_25F47CC20()
{
  result = qword_27FD6F7A8;
  if (!qword_27FD6F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7A8);
  }

  return result;
}

unint64_t sub_25F47CC74()
{
  result = qword_27FD6F7B0;
  if (!qword_27FD6F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7B0);
  }

  return result;
}

uint64_t sub_25F47CD1C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_25F47A64C();
}

unint64_t sub_25F47CD2C()
{
  result = qword_27FD6F7B8;
  if (!qword_27FD6F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7B8);
  }

  return result;
}

unint64_t sub_25F47CD80()
{
  result = qword_27FD6F7D0;
  if (!qword_27FD6F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7D0);
  }

  return result;
}

unint64_t sub_25F47CDD4()
{
  result = qword_27FD6F7E0;
  if (!qword_27FD6F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7E0);
  }

  return result;
}

unint64_t sub_25F47CE2C()
{
  result = qword_27FD6F7E8;
  if (!qword_27FD6F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7E8);
  }

  return result;
}

unint64_t sub_25F47CE80()
{
  result = qword_27FD6F7F0;
  if (!qword_27FD6F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7F0);
  }

  return result;
}

uint64_t sub_25F47CED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48B318();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F47CF98()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F47D078()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

_BYTE *sub_25F47D144(_BYTE *result, char *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *result = 0;
  v6 = (v3 | v4) != 0;
  if (v5 != 1)
  {
    v6 = 2;
  }

  *a2 = v6;
  return result;
}

unint64_t sub_25F47D170()
{
  result = qword_27FD6F7F8;
  if (!qword_27FD6F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F7F8);
  }

  return result;
}

unint64_t sub_25F47D1C4()
{
  result = qword_27FD6F800;
  if (!qword_27FD6F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F800);
  }

  return result;
}

uint64_t sub_25F47D218()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t Explanation.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Explanation.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for Explanation.Key;
  v8[4] = sub_25F47D4B4();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

unint64_t sub_25F47D4B4()
{
  result = qword_27FD6F808;
  if (!qword_27FD6F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F808);
  }

  return result;
}

uint64_t Explanation.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_25F47D4B4();
  return sub_25F4A25C0();
}

uint64_t Explanation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static Explanation.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t sub_25F47D5D8()
{
  v2 = *v0;
  v3 = v0[1];
  sub_25F47D4B4();
  return sub_25F4A25C0();
}

uint64_t sub_25F47D648@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8[3] = &type metadata for Explanation.Key;
  v8[4] = sub_25F47D4B4();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v2)
  {
    v7 = v8[6];
    *a2 = v8[5];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_25F47D778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for RuntimeLookup();
  swift_storeEnumTagMultiPayload();
}

uint64_t RuntimeLookup.map<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v20 = a1;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v16);
  if (swift_getEnumCaseMultiPayload())
  {
    v18 = v14[1];
    *a3 = *v14;
    a3[1] = v18;
    type metadata accessor for RuntimeLookup();
  }

  else
  {
    (*(v6 + 32))(v10, v14, v5);
    v20(v10);
    result = (*(v6 + 8))(v10, v5);
    if (v3)
    {
      return result;
    }

    type metadata accessor for RuntimeLookup();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t RuntimeLookup.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v8 = *(a4 + 16);
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = *(a4 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F47DB48, 0, 0);
}

uint64_t sub_25F47DB48()
{
  (*(v0[11] + 16))(v0[12], v0[7], v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[12];
  if (EnumCaseMultiPayload)
  {
    v3 = v0[6];
    v4 = v0[2];
    v5 = v2[1];
    *v4 = *v2;
    v4[1] = v5;
    type metadata accessor for RuntimeLookup();
    swift_storeEnumTagMultiPayload();
    v6 = v0[12];
    v7 = v0[10];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[3];
    (*(v0[9] + 32))(v0[10], v2, v0[8]);
    v16 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_25F47DD10;
    v13 = v0[10];
    v14 = v0[4];
    v15 = v0[2];

    return v16(v15, v13);
  }
}

uint64_t sub_25F47DD10()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_25F47DED0;
  }

  else
  {
    v3 = sub_25F47DE24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F47DE24()
{
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[9] + 8))(v0[10], v0[8]);
  type metadata accessor for RuntimeLookup();
  swift_storeEnumTagMultiPayload();
  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F47DED0()
{
  v1 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t RuntimeLookup.flatMap<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v19 = a1;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v15);
  if (swift_getEnumCaseMultiPayload())
  {
    v16 = v13[1];
    *a3 = *v13;
    a3[1] = v16;
    type metadata accessor for RuntimeLookup();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v4);
    v19(v9);
    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t RuntimeLookup.flatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v8 = *(a4 + 16);
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = *(a4 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F47E25C, 0, 0);
}

uint64_t sub_25F47E25C()
{
  (*(v0[11] + 16))(v0[12], v0[7], v0[5]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[12];
  if (EnumCaseMultiPayload)
  {
    v3 = v0[6];
    v4 = v0[2];
    v5 = v2[1];
    *v4 = *v2;
    v4[1] = v5;
    type metadata accessor for RuntimeLookup();
    swift_storeEnumTagMultiPayload();
    v6 = v0[12];
    v7 = v0[10];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[3];
    (*(v0[9] + 32))(v0[10], v2, v0[8]);
    v16 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_25F47E424;
    v13 = v0[10];
    v14 = v0[4];
    v15 = v0[2];

    return v16(v15, v13);
  }
}

uint64_t sub_25F47E424()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_25F48B534;
  }

  else
  {
    v3 = sub_25F47E538;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F47E538()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t RuntimeLookup.availableValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0xD000000000000010;
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v11 = "Item not supported";
    if (EnumCaseMultiPayload != 2)
    {
      v11 = "incrementalVariant";
      v4 = 0xD000000000000012;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      return (*(*(*(a1 + 16) - 8) + 32))(a2, v7);
    }

    v11 = "Item not located";
  }

  v13 = *v7;
  v12 = v7[1];
  v14 = v11 | 0x8000000000000000;
  v15 = *(a1 + 16);
  type metadata accessor for RuntimeLookup.NoValueError();
  swift_getWitnessTable();
  swift_allocError();
  *v16 = v4;
  v16[1] = v14;
  v16[2] = v13;
  v16[3] = v12;
  return swift_willThrow();
}

uint64_t sub_25F47E78C()
{
  v0 = sub_25F412E30();

  return v0;
}

uint64_t sub_25F47E7C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A0810](a1, WitnessTable);
}

uint64_t sub_25F47E818(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821A07F0](a1, WitnessTable);
}

uint64_t RuntimeLookup.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v18 = *v9;
      v19 = v9[1];
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_25F4A30F0();

      v20 = 0x7070757320746F4ELL;
      v21 = 0xEF203A646574726FLL;
      MEMORY[0x25F8DD480](v18, v19);
      goto LABEL_9;
    }

    v14 = *v9;
    v15 = v9[1];
    v16 = 0x61636F6C20746F4ELL;
    v17 = 979658100;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v2 + 32))(v6, v9, v1);
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_25F4A3240();
      v12 = v20;
      (*(v2 + 8))(v6, v1);
      return v12;
    }

    v14 = *v9;
    v15 = v9[1];
    v16 = 0x616C696176616E55;
    v17 = 979725410;
  }

  v20 = v16;
  v21 = v17 | 0xED00002000000000;
  MEMORY[0x25F8DD480](v14, v15);
LABEL_9:

  return v20;
}

uint64_t sub_25F47EAD4()
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

uint64_t sub_25F47EB20(unsigned __int8 a1)
{
  v1 = 0x64657461636F6CLL;
  v2 = 0x7461636F4C746F6ELL;
  if (a1 != 2)
  {
    v2 = 0x6F70707553746F6ELL;
  }

  if (a1)
  {
    v1 = 0x616C696176616E75;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F47EBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F47EC28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F47EC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F47ED04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F47ED74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25F47EAD4();
  *a3 = result;
  return result;
}

uint64_t sub_25F47EDC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F47EEB4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 8))(v5, a1);
  return EnumCaseMultiPayload;
}

uint64_t sub_25F47EF98()
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

uint64_t sub_25F47EFE4(unsigned __int8 a1)
{
  v1 = 0x696D697263736964;
  v2 = 0x74616E616C707865;
  if (a1 != 2)
  {
    v2 = 0x726F727265;
  }

  if (a1)
  {
    v1 = 0x5664657461636F6CLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F47F074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F47F0E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F47F154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F47F1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F47F234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25F47EF98();
  *a3 = result;
  return result;
}

uint64_t sub_25F47F284@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, *(a1 + 16), *(a1 + 24));
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_25F47F2BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_25F47EFE4(*v1);
}

uint64_t RuntimeLookup<A>.propertyListValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v33 - v9;
  v10 = *(a1 + 16);
  v11 = sub_25F4A3060();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v34 = &v33 - v14;
  v36 = *(v10 - 8);
  v15 = *(v36 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v35 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = (&v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = v10;
  v42 = a2;
  v43 = v3;
  v22 = _s3KeyOMa_3();
  _s12DiscriminantOMa();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v40 = a3;
  sub_25F4A25C0();
  (*(v18 + 16))(v21, v3, a1);
  if (swift_getEnumCaseMultiPayload())
  {
    v26 = v21;
    v25 = *v21;
    v24 = v26[1];
    v44 = v25;
    v45 = v24;
    v49 = v22;
    v50 = WitnessTable;
    LOBYTE(v48[0]) = 2;
    sub_25F47F828();

    sub_25F4A2520();

    __swift_destroy_boxed_opaque_existential_1(v48);
    v44 = 0x616C696176616E75;
    v45 = 0xEB00000000656C62;
    v46 = v25;
    v47 = v24;
    type metadata accessor for RuntimeLookup.NoValueError();
    swift_getWitnessTable();
    v27 = v39;
    sub_25F4A27C0();

    v28 = sub_25F4A25E0();
    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
    v49 = v22;
    v50 = WitnessTable;
    LOBYTE(v48[0]) = 3;
    sub_25F4A2520();
    sub_25F3F21F4(v27, &qword_27FD6DAA0, &qword_25F4A5550);
  }

  else
  {
    v30 = v35;
    v29 = v36;
    (*(v36 + 32))(v35, v21, v10);
    v31 = v34;
    (*(v29 + 16))(v34, v30, v10);
    (*(v29 + 56))(v31, 0, 1, v10);
    v49 = v22;
    v50 = WitnessTable;
    LOBYTE(v48[0]) = 1;
    sub_25F4A2520();
    (*(v37 + 8))(v31, v38);
    (*(v29 + 8))(v30, v10);
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t sub_25F47F7B0(_BYTE *a1, _BYTE *a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  *a1 = 0;
  v7 = type metadata accessor for RuntimeLookup();
  result = sub_25F47EEB4(v7);
  *a2 = result;
  return result;
}

unint64_t sub_25F47F828()
{
  result = qword_27FD6F810;
  if (!qword_27FD6F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F810);
  }

  return result;
}

uint64_t RuntimeLookup<A>.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v36 = type metadata accessor for RuntimeLookup();
  v38 = *(v36 - 8);
  v3 = *(v38 + 64);
  v4 = MEMORY[0x28223BE20](v36);
  v35 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v34 = (&v33 - v7);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v33 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = (&v33 - v11);
  v13 = _s3KeyOMa_3();
  v43 = v13;
  WitnessTable = swift_getWitnessTable();
  v44 = WitnessTable;
  LOBYTE(v42[0]) = 0;
  _s12DiscriminantOMa();
  swift_getWitnessTable();
  v15 = a1;
  v16 = v39;
  sub_25F4A2530();
  if (v16)
  {
    v17 = sub_25F4A25E0();
    (*(*(v17 - 8) + 8))(a1, v17);
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    v39 = v10;
    __swift_destroy_boxed_opaque_existential_1(v42);
    if (v45 > 1u)
    {
      v32 = v37;
      if (v45 == 2)
      {
        v43 = v13;
        v44 = WitnessTable;
        LOBYTE(v42[0]) = 2;
        sub_25F47F828();
        sub_25F4A2580();
        v31 = v38;
        __swift_destroy_boxed_opaque_existential_1(v42);
        if (v41)
        {
          v20 = v40;
        }

        else
        {
          v20 = 0xD000000000000019;
        }

        if (v41)
        {
          v21 = v41;
        }

        else
        {
          v21 = 0x800000025F4B87C0;
        }

        v22 = sub_25F4A25E0();
        (*(*(v22 - 8) + 8))(v15, v22);
        v19 = v34;
        *v34 = v20;
        v19[1] = v21;
        v30 = v36;
      }

      else
      {
        v43 = v13;
        v44 = WitnessTable;
        LOBYTE(v42[0]) = 2;
        sub_25F47F828();
        sub_25F4A2580();
        v31 = v38;
        __swift_destroy_boxed_opaque_existential_1(v42);
        if (v41)
        {
          v26 = v40;
        }

        else
        {
          v26 = 0xD000000000000019;
        }

        if (v41)
        {
          v27 = v41;
        }

        else
        {
          v27 = 0x800000025F4B87C0;
        }

        v28 = sub_25F4A25E0();
        (*(*(v28 - 8) + 8))(v15, v28);
        v19 = v35;
        *v35 = v26;
        v19[1] = v27;
        v30 = v36;
      }

      swift_storeEnumTagMultiPayload();
    }

    else if (v45)
    {
      v43 = v13;
      v44 = WitnessTable;
      LOBYTE(v42[0]) = 2;
      sub_25F47F828();
      sub_25F4A2580();
      v31 = v38;
      __swift_destroy_boxed_opaque_existential_1(v42);
      if (v41)
      {
        v23 = v40;
      }

      else
      {
        v23 = 0xD000000000000019;
      }

      if (v41)
      {
        v24 = v41;
      }

      else
      {
        v24 = 0x800000025F4B87C0;
      }

      v25 = sub_25F4A25E0();
      (*(*(v25 - 8) + 8))(v15, v25);
      v19 = v39;
      *v39 = v23;
      v19[1] = v24;
      v30 = v36;
      swift_storeEnumTagMultiPayload();
      v32 = v37;
    }

    else
    {
      v43 = v13;
      v44 = WitnessTable;
      LOBYTE(v42[0]) = 1;
      v19 = v12;
      sub_25F4A2530();
      v29 = sub_25F4A25E0();
      (*(*(v29 - 8) + 8))(a1, v29);
      __swift_destroy_boxed_opaque_existential_1(v42);
      v30 = v36;
      swift_storeEnumTagMultiPayload();
      v32 = v37;
      v31 = v38;
    }

    return (*(v31 + 32))(v32, v19, v30);
  }
}

uint64_t sub_25F47FE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  return RuntimeLookup<A>.init(propertyListValue:)(a1, a4);
}

uint64_t PreviewFlavor.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (v0[6] < 0)
  {

    sub_25F4A30F0();

    MEMORY[0x25F8DD480](v2, v1);
    MEMORY[0x25F8DD480](8236, 0xE200000000000000);
    if (v3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 7104878;
    }

    if (!v3)
    {
      v3 = 0xE300000000000000;
    }

    MEMORY[0x25F8DD480](v7, v3);

    MEMORY[0x25F8DD480](93, 0xE100000000000000);
    return 0x7972747369676552;
  }

  else
  {
    v8 = *(v0 + 2);
    v9 = *(v0 + 7);
    v5 = PreviewMetadata.description.getter();
    MEMORY[0x25F8DD480](v5);

    MEMORY[0x25F8DD480](93, 0xE100000000000000);
    return 0x5B77656976657250;
  }
}

uint64_t sub_25F47FF74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7972747369676572;
  }

  else
  {
    v4 = 0x77656976657270;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x7972747369676572;
  }

  else
  {
    v6 = 0x77656976657270;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
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

uint64_t sub_25F48001C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4800A0()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F480110()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F48019C(uint64_t *a1@<X8>)
{
  v2 = 0x77656976657270;
  if (*v1)
  {
    v2 = 0x7972747369676572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F4801DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48B0EC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4802AC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F480394()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F480468()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48054C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48B140();
  *a2 = result;
  return result;
}

void sub_25F48057C(uint64_t *a1@<X8>)
{
  v2 = 0xEC000000746E616ELL;
  v3 = 0x696D697263736964;
  v4 = 0xEC00000065707954;
  v5 = 0x7972747369676572;
  if (*v1 != 2)
  {
    v5 = 0x4E79616C70736964;
    v4 = 0xEB00000000656D61;
  }

  if (*v1)
  {
    v3 = 0x4D77656976657270;
    v2 = 0xEF61746164617465;
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

uint64_t sub_25F480620()
{
  v1 = 0x696D697263736964;
  v2 = 0x7972747369676572;
  if (*v0 != 2)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    v1 = 0x4D77656976657270;
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

uint64_t PreviewFlavor.propertyListValue.getter()
{
  v1 = sub_25F4A25E0();
  v18 = *(v1 - 8);
  v19 = v1;
  v2 = *(v18 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[3];
  v37 = v0[2];
  v38 = v5;
  v39 = *(v0 + 8);
  v6 = v0[1];
  v35 = *v0;
  v36 = v6;
  v20 = &v35;
  v7 = sub_25F4820E4();
  sub_25F482138();
  sub_25F4A25C0();
  v8 = v35;
  v9 = v36;
  v10 = v38;
  if ((v38 & 0x8000000000000000) != 0)
  {
    v27[0] = v35;
    *(&v31 + 1) = &type metadata for PreviewFlavor.Key;
    *&v32 = v7;
    LOBYTE(v30) = 2;
    sub_25F42F2B0();

    sub_25F4A2520();

    __swift_destroy_boxed_opaque_existential_1(&v30);
    v27[0] = v9;
    *(&v31 + 1) = &type metadata for PreviewFlavor.Key;
    *&v32 = v7;
    LOBYTE(v30) = 3;
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(&v30);
  }

  else
  {
    v16 = *(&v38 + 1);
    v17 = v39;
    v15 = v37;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    v26 = v39;
    v21[3] = &type metadata for PreviewFlavor.Key;
    v21[4] = v7;
    LOBYTE(v21[0]) = 1;
    v11 = v0[3];
    v27[2] = v0[2];
    v28 = v11;
    v12 = *(v0 + 8);
    v13 = v0[1];
    v27[0] = *v0;
    v27[1] = v13;
    v29 = v12;
    *&v28 = v11 & 0x7FFFFFFFFFFFFFFFLL;
    sub_25F404B8C(v27, &v30, &qword_27FD6F828, &qword_25F4AFB70);
    sub_25F48218C();
    sub_25F4A2520();
    v32 = v24;
    v33 = v25;
    v34 = v26;
    v30 = v22;
    v31 = v23;
    sub_25F3F21F4(&v30, &qword_27FD6F838, &qword_25F4AFB78);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v22 = v8;
    v23 = v9;
    v24 = v15;
    *&v25 = v10;
    *(&v25 + 1) = v16;
    v26 = v17;
    sub_25F4A2940();
    sub_25F4A2540();
    return (*(v18 + 8))(v4, v19);
  }
}

void PreviewFlavor.init(propertyListValue:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = &type metadata for PreviewFlavor.Key;
  v10 = sub_25F4820E4();
  *(&v22 + 1) = v10;
  LOBYTE(v21[0]) = 0;
  sub_25F482138();
  sub_25F4A2530();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(v6 + 16))(v9, a1, v5);
    sub_25F48218C();
    sub_25F4A2950();
    (*(v6 + 8))(a1, v5);

LABEL_5:
    v17 = v21[0];
    v16 = v21[1];
    v13 = v21[2];
    v14 = v22;
    v11 = v23;
    v12 = v25;
    v15 = v24 & 0x10301;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  if ((v20[0] & 1) == 0)
  {
    v20[3] = &type metadata for PreviewFlavor.Key;
    v20[4] = v10;
    LOBYTE(v20[0]) = 1;
    sub_25F48218C();
    sub_25F4A2530();
    (*(v6 + 8))(a1, v5);
    __swift_destroy_boxed_opaque_existential_1(v20);
    goto LABEL_5;
  }

  *&v22 = &type metadata for PreviewFlavor.Key;
  *(&v22 + 1) = v10;
  LOBYTE(v21[0]) = 2;
  sub_25F42F2B0();
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v19 = v20[0];
  v26 = v20[1];
  *&v22 = &type metadata for PreviewFlavor.Key;
  *(&v22 + 1) = v10;
  LOBYTE(v21[0]) = 3;
  sub_25F4A2580();
  (*(v6 + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v21);
  v13 = v20[5];
  *&v14 = v20[6];
  v15 = 0x8000000000000000;
  v16 = v26;
  v17 = v19;
LABEL_6:
  *a2 = v17;
  *(a2 + 8) = v16;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 40) = v11;
  *(a2 + 48) = v15;
  *(a2 + 56) = v12;
}

uint64_t PreviewFlavor.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (v0[6] < 0)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
    if (v3)
    {
      sub_25F4A3320();

      return sub_25F4A2C60();
    }

    else
    {
      return sub_25F4A3320();
    }
  }

  else
  {
    v5 = v0[7];
    v9 = v0[8];
    v6 = v0[4];
    v7 = v0[5];
    MEMORY[0x25F8DDB20](0);
    return PreviewMetadata.hash(into:)();
  }
}

uint64_t PreviewFlavor.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_25F4A3300();
  if (v7 < 0)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
    sub_25F4A3320();
    if (v3)
    {
      sub_25F4A2C60();
    }
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    PreviewMetadata.hash(into:)();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F480EFC()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (v0[6] < 0)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
    if (v3)
    {
      sub_25F4A3320();

      return sub_25F4A2C60();
    }

    else
    {
      return sub_25F4A3320();
    }
  }

  else
  {
    v5 = v0[7];
    v9 = v0[8];
    v6 = v0[4];
    v7 = v0[5];
    MEMORY[0x25F8DDB20](0);
    return PreviewMetadata.hash(into:)();
  }
}

uint64_t sub_25F481008()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  sub_25F4A3300();
  if (v7 < 0)
  {
    MEMORY[0x25F8DDB20](1);
    sub_25F4A2C60();
    sub_25F4A3320();
    if (v3)
    {
      sub_25F4A2C60();
    }
  }

  else
  {
    MEMORY[0x25F8DDB20](0);
    PreviewMetadata.hash(into:)();
  }

  return sub_25F4A3350();
}

uint64_t PreviewMetadata.contentCategory.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t PreviewMetadata.contentCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

__n128 PreviewMetadata.requestedTraits.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u8[0];
  v3 = v1[3].n128_u8[1];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

__n128 PreviewMetadata.requestedTraits.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  v3 = a1[1].n128_u8[1];
  result = *a1;
  v1[2] = *a1;
  v1[3].n128_u8[0] = v2;
  v1[3].n128_u8[1] = v3;
  return result;
}

uint64_t PreviewMetadata.displayName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t PreviewMetadata.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

__n128 PreviewMetadata.init(contentDomain:contentCategory:supportsOnDevice:supportsInteractive:requestedTraits:isPreviewGroup:displayName:)@<Q0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X1>, unsigned __int8 a3@<W2>, unsigned __int8 a4@<W3>, __n128 *a5@<X4>, unsigned __int8 a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a5[1].n128_u8[0];
  v12 = a5[1].n128_u8[1];
  a9->n128_u8[0] = *a1;
  a9->n128_u64[1] = v9;
  a9[1].n128_u64[0] = v10;
  a9[1].n128_u8[8] = a3;
  a9[1].n128_u8[9] = a4;
  result = *a5;
  a9[2] = *a5;
  a9[3].n128_u8[0] = v11;
  a9[3].n128_u8[1] = v12;
  a9[3].n128_u8[2] = a6;
  a9[3].n128_u64[1] = a7;
  a9[4].n128_u64[0] = a8;
  return result;
}

unint64_t PreviewMetadata.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = v0[7];
  v3 = v0[8];

  sub_25F4A30F0();

  MEMORY[0x25F8DD480](v1, v2);
  MEMORY[0x25F8DD480](0x616C70736964202CLL, 0xEF203A656D614E79);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7104878;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x25F8DD480](v5, v6);

  MEMORY[0x25F8DD480](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_25F481440()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F48159C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48B18C();
  *a2 = result;
  return result;
}

void sub_25F4815CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E69616D6FLL;
  v4 = 0x44746E65746E6F63;
  v5 = 0xEE0070756F724777;
  v6 = 0x6569766572507369;
  if (v2 != 5)
  {
    v6 = 0x4E79616C70736964;
    v5 = 0xEB00000000656D61;
  }

  v7 = 0x800000025F4B6BD0;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0x6574736575716572;
    v7 = 0xEF73746961725464;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF79726F67657461;
  v10 = 0x43746E65746E6F63;
  if (v2 != 1)
  {
    v10 = 0xD000000000000010;
    v9 = 0x800000025F4B6BB0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_25F4816F0()
{
  v1 = *v0;
  v2 = 0x44746E65746E6F63;
  v3 = 0x6569766572507369;
  if (v1 != 5)
  {
    v3 = 0x4E79616C70736964;
  }

  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x6574736575716572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x43746E65746E6F63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t PreviewMetadata.propertyListValue.getter()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t sub_25F481868(char *a1)
{
  v1 = *a1;
  v25 = *(a1 + 8);
  v2 = a1[24];
  v3 = a1[25];
  v4 = a1[48];
  v5 = a1[50];
  v6 = a1[49];
  v10 = *(a1 + 56);
  v24 = 0;
  v23 = v1;
  v22 = 1;
  v21 = v25;
  v20 = 2;
  v19 = v2;
  v18 = 3;
  v17 = v3;
  v16 = 4;
  v14 = *(a1 + 2);
  v15 = v4 & 1 | (v6 << 8);
  v13 = 5;
  v12 = v5;
  v11 = 6;
  sub_25F48B430(&v25, v9);
  sub_25F488420();
  sub_25F4500BC();
  sub_25F406680();
  sub_25F488474();
  v7 = sub_25F4A2880();

  return v7;
}

uint64_t PreviewMetadata.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = &type metadata for PreviewMetadata.Key;
  v5 = sub_25F488420();
  v22 = v5;
  LOBYTE(v20[0]) = 0;
  sub_25F4500BC();
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    v6 = v25;
    v21 = &type metadata for PreviewMetadata.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 1;
    sub_25F406680();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for PreviewMetadata.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v8 = v24;
    v21 = &type metadata for PreviewMetadata.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 3;
    sub_25F4A2530();
    v12 = v8;
    __swift_destroy_boxed_opaque_existential_1(v20);
    v9 = v23;
    v21 = &type metadata for PreviewMetadata.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 4;
    sub_25F488474();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for PreviewMetadata.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 5;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = &type metadata for PreviewMetadata.Key;
    v22 = v5;
    LOBYTE(v20[0]) = 6;
    sub_25F4A2580();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v6;
    *(a2 + 8) = v18;
    *(a2 + 16) = v19;
    *(a2 + 24) = v12;
    *(a2 + 25) = v9;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16;
    *(a2 + 49) = v17;
    *(a2 + 50) = v13 & 1;
    *(a2 + 56) = v13;
  }

  return result;
}

uint64_t PreviewMetadata.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v13 = *(v0 + 50);
  v12 = *(v0 + 56);
  v14 = *(v0 + 64);
  *v0;
  sub_25F4A2C60();

  sub_25F4A2C60();
  sub_25F4A3320();
  sub_25F4A3320();
  if (v7)
  {
    MEMORY[0x25F8DDB20]((v6 | v5) != 0);
  }

  else
  {
    MEMORY[0x25F8DDB20](2);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x25F8DDB50](v9);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v5;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x25F8DDB50](v10);
  }

  sub_25F4A2C60();

  sub_25F4A3320();
  if (!v14)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t PreviewMetadata.hashValue.getter()
{
  sub_25F4A3300();
  PreviewMetadata.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F481FD8()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t sub_25F482048()
{
  sub_25F4A3300();
  PreviewMetadata.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F48208C()
{
  sub_25F4A3300();
  PreviewMetadata.hash(into:)();
  return sub_25F4A3350();
}

_BYTE *sub_25F4820CC(_BYTE *result, BOOL *a2)
{
  v3 = *(v2 + 16);
  *result = 0;
  *a2 = *(v3 + 48) < 0;
  return result;
}

unint64_t sub_25F4820E4()
{
  result = qword_27FD6F818;
  if (!qword_27FD6F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F818);
  }

  return result;
}

unint64_t sub_25F482138()
{
  result = qword_27FD6F820;
  if (!qword_27FD6F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F820);
  }

  return result;
}

unint64_t sub_25F48218C()
{
  result = qword_27FD6F830;
  if (!qword_27FD6F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F830);
  }

  return result;
}

uint64_t PlaygroundMetadata.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PlaygroundMetadata.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

PreviewsMessagingOS::PlaygroundMetadata __swiftcall PlaygroundMetadata.init(displayName:)(Swift::String_optional displayName)
{
  object = displayName.value._object;
  countAndFlagsBits = displayName.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.displayName.value._object = v6;
  result.displayName.value._countAndFlagsBits = v5;
  return result;
}

uint64_t static PlaygroundMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_25F4A3270() & 1) != 0)
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

uint64_t sub_25F482324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F4A3270();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F4823BC(uint64_t a1)
{
  v2 = sub_25F4884C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F4823F8(uint64_t a1)
{
  v2 = sub_25F4884C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaygroundMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F850, &qword_25F4AFB80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F4884C8();
  sub_25F4A3380();
  sub_25F4A31E0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t PlaygroundMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F860, &qword_25F4AFB88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F4884C8();
  sub_25F4A3370();
  if (!v2)
  {
    v11 = sub_25F4A31A0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25F4826FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F850, &qword_25F4AFB80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F4884C8();
  sub_25F4A3380();
  sub_25F4A31E0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_25F482838(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_25F4A3270() & 1) != 0)
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

uint64_t sub_25F4828AC()
{
  if (*v0)
  {
    result = 0x7272457765726874;
  }

  else
  {
    result = 0x6F4E646574697865;
  }

  *v0;
  return result;
}

uint64_t sub_25F4828F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F4E646574697865 && a2 == 0xEE00796C6C616D72;
  if (v6 || (sub_25F4A3270() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7272457765726874 && a2 == 0xEA0000000000726FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();

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

uint64_t sub_25F4829F0(uint64_t a1)
{
  v2 = sub_25F48851C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F482A2C(uint64_t a1)
{
  v2 = sub_25F48851C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F482A68@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_25F482AA4(uint64_t a1)
{
  v2 = sub_25F4885C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F482AE0(uint64_t a1)
{
  v2 = sub_25F4885C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F482B20()
{
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](0);
  return sub_25F4A3350();
}

uint64_t sub_25F482B90()
{
  sub_25F4A3300();
  MEMORY[0x25F8DDB20](0);
  return sub_25F4A3350();
}

uint64_t sub_25F482BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F4A3270();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F482C7C(uint64_t a1)
{
  v2 = sub_25F488570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F482CB8(uint64_t a1)
{
  v2 = sub_25F488570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlaygroundEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F868, &qword_25F4AFB90);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F870, &qword_25F4AFB98);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v21 = &v20 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F878, &qword_25F4AFBA0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = v1[1];
  v24 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F48851C();
  sub_25F4A3380();
  if (v15)
  {
    v28 = 1;
    sub_25F488570();
    sub_25F4A31D0();
    v17 = v26;
    sub_25F4A31F0();
    (*(v25 + 8))(v6, v17);
  }

  else
  {
    v27 = 0;
    sub_25F4885C4();
    v19 = v21;
    sub_25F4A31D0();
    (*(v22 + 8))(v19, v23);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t PlaygroundEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F898, &qword_25F4AFBA8);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F8A0, &qword_25F4AFBB0);
  v39 = *(v7 - 8);
  v8 = *(v39 + 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F8A8, &qword_25F4AFBB8);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F48851C();
  v16 = v44;
  sub_25F4A3370();
  if (v16)
  {
    goto LABEL_7;
  }

  v38 = v7;
  v18 = v41;
  v17 = v42;
  v44 = a1;
  v19 = v14;
  v20 = sub_25F4A31C0();
  if (*(v20 + 16) != 1)
  {
    v24 = sub_25F4A3120();
    swift_allocError();
    v26 = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F8B0, &qword_25F4AFBC0) + 48);
    *v26 = &type metadata for PlaygroundEvent;
    sub_25F4A3190();
    sub_25F4A3110();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v43 + 8))(v19, v11);
    swift_unknownObjectRelease();
    a1 = v44;
LABEL_7:
    v32 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  if (*(v20 + 32))
  {
    v46 = 1;
    sub_25F488570();
    v21 = v6;
    sub_25F4A3180();
    v22 = v19;
    v23 = v43;
    v30 = v17;
    v31 = v21;
    v39 = v22;
    v34 = sub_25F4A31B0();
    v36 = v35;
    (*(v40 + 8))(v31, v18);
    (*(v23 + 8))(v39, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0;
    sub_25F4885C4();
    v28 = v10;
    sub_25F4A3180();
    v29 = v43;
    v30 = v17;
    (*(v39 + 1))(v28, v38);
    (*(v29 + 8))(v14, v11);
    swift_unknownObjectRelease();
    v34 = 0;
    v36 = 0;
  }

  *v30 = v34;
  v30[1] = v36;
  v32 = v44;
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t IOSurfacePayload.init(surfaceID:scaleFactor:width:height:selectableRegions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a2;
  return result;
}

uint64_t sub_25F483520()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48360C()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4836E4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4837CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48B1D8();
  *a2 = result;
  return result;
}

void sub_25F4837FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0x4965636166727573;
  v5 = 0xE500000000000000;
  v6 = 0x6874646977;
  v7 = 0xE600000000000000;
  v8 = 0x746867696568;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x800000025F4B69B0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x636146656C616373;
    v3 = 0xEB00000000726F74;
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

uint64_t sub_25F4838A4()
{
  v1 = *v0;
  v2 = 0x4965636166727573;
  v3 = 0x6874646977;
  v4 = 0x746867696568;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x636146656C616373;
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

uint64_t IOSurfacePayload.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

uint64_t sub_25F483998(int *a1)
{
  v6 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  v2 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
  sub_25F488620();
  sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
  return sub_25F4A28A0();
}

uint64_t IOSurfacePayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = &type metadata for IOSurfacePayload.Key;
  v5 = sub_25F488620();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v6 = v17;
    v15 = &type metadata for IOSurfacePayload.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for IOSurfacePayload.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for IOSurfacePayload.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 3;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for IOSurfacePayload.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6F720, &qword_25F4AFB30);
    sub_25F4749C4(&qword_27FD6F730, &qword_27FD6F720, &qword_25F4AFB30, sub_25F475118);
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    *a2 = v6;
    *(a2 + 8) = v13;
    *(a2 + 16) = v12;
    *(a2 + 24) = v11;
    *(a2 + 32) = v10;
  }

  return result;
}

uint64_t sub_25F483D68()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

uint64_t PreviewDescription.contentType.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PreviewDescription.contentType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PreviewDescription.device.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PreviewDescription.device.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PreviewDescription.displayName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PreviewDescription.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

__n128 PreviewDescription.layout.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 PreviewDescription.layout.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  return result;
}

uint64_t PreviewDescription.contentCategory.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 80);
  a1[1] = v2;
}

uint64_t PreviewDescription.contentCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  return result;
}

uint64_t PreviewDescription.init(index:contentType:device:displayName:layout:contentDomain:supportsLive:supportsOnDevice:interfaceOrientation:contentCategory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char a11, char a12, char *a13, uint64_t *a14)
{
  v15 = *(a8 + 16);
  v16 = *a10;
  v17 = *a13;
  v18 = *a14;
  v19 = a14[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = *a8;
  *(a9 + 72) = v15;
  *(a9 + 73) = v16;
  *(a9 + 74) = a11;
  *(a9 + 75) = a12;
  *(a9 + 76) = v17;

  *(a9 + 80) = v18;
  *(a9 + 88) = v19;
  return result;
}

unint64_t sub_25F484190(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x54747865746E6F63;
    if (a1 != 5)
    {
      v7 = 0x7374726F70707573;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7865646E69;
    v2 = 0x656369766564;
    v3 = 0x4E79616C70736964;
    if (a1 != 3)
    {
      v3 = 0x74756F79616CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x54746E65746E6F63;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25F4842EC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_25F484190(*a1);
  v5 = v4;
  if (v3 == sub_25F484190(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F484374()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F484190(v1);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4843D8()
{
  sub_25F484190(*v0);
  sub_25F4A2C60();
}

uint64_t sub_25F48442C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F484190(v1);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F48448C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F48B224();
  *a2 = result;
  return result;
}

unint64_t sub_25F4844BC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F484190(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PreviewDescription.propertyListValue.getter()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t sub_25F484558(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 3);
  v38 = *(a1 + 5);
  v39 = v4;
  v5 = *(a1 + 72);
  v6 = *(a1 + 73);
  v7 = *(a1 + 74);
  v8 = *(a1 + 75);
  v9 = *(a1 + 76);
  v37 = *(a1 + 5);
  v36 = 0;
  v34 = v1;
  v35 = 0;
  v33 = 1;
  v31 = v2;
  v32 = v3;
  v30 = 2;
  v29 = *(a1 + 3);
  v28 = 3;
  v27 = *(a1 + 5);
  v26 = 4;
  v23 = *(a1 + 7);
  v24 = v5 & 1;
  v25 = 0;
  v22 = 5;
  v21 = v6;
  v20 = 6;
  v19 = v7;
  v18 = 7;
  v17 = v8;
  v16 = 8;
  v15 = v9;
  v14 = 9;
  v13 = v37;

  sub_25F404B8C(&v39, v12, &qword_27FD6D5F0, &qword_25F4A4420);
  sub_25F404B8C(&v38, v12, &qword_27FD6D5F0, &qword_25F4A4420);
  sub_25F404B8C(&v37, v12, &qword_27FD6FCD0, &qword_25F4B2998);
  sub_25F48867C();
  sub_25F47CE80();
  sub_25F4500BC();
  sub_25F43AA08();
  sub_25F406680();
  v10 = sub_25F4A2850();

  sub_25F3F21F4(&v38, &qword_27FD6D5F0, &qword_25F4A4420);
  sub_25F3F21F4(&v39, &qword_27FD6D5F0, &qword_25F4A4420);

  return v10;
}

uint64_t PreviewDescription.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = &type metadata for PreviewDescription.Key;
  v5 = sub_25F48867C();
  v17 = v5;
  LOBYTE(v15[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 2;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 3;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 4;
    sub_25F47CE80();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v18 = v14;
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 5;
    sub_25F4500BC();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (v12 == 3)
    {
      v8 = 0;
    }

    else
    {
      v8 = v12;
    }

    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 6;
    sub_25F4A2580();
    v19 = v8;
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 7;
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 8;
    sub_25F43AA08();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v15);
    v9 = v12;
    v16 = &type metadata for PreviewDescription.Key;
    v17 = v5;
    LOBYTE(v15[0]) = 9;
    sub_25F406680();
    sub_25F4A2580();
    if (v12 == 4)
    {
      v9 = 0;
    }

    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    __swift_destroy_boxed_opaque_existential_1(v15);

    v11 = v18;
    *a2 = v12;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v12;
    *(a2 + 48) = v13;
    *(a2 + 56) = v12;
    *(a2 + 64) = v13;
    *(a2 + 72) = v11;
    *(a2 + 73) = v19;
    *(a2 + 74) = (v12 == 2) | v12 & 1;
    *(a2 + 75) = (v12 == 2) | v12 & 1;
    *(a2 + 76) = v9;
    *(a2 + 80) = v12;
    *(a2 + 88) = v13;
  }

  return result;
}

Swift::Void __swiftcall PreviewDescription.describe(with:)(Swift::OpaquePointer *with)
{
  v24 = *v1;
  v37 = v1[1];
  v2 = v1[2];
  v26 = v1[3];
  v39 = v1[4];
  v25 = v1[5];
  v3 = v1[7];
  v38 = v1[6];
  v4 = v1[8];
  v5 = *(v1 + 72);
  v6 = *(v1 + 74);
  v7 = *(v1 + 75);
  v35 = *(v1 + 76);
  v36 = *(v1 + 73);
  v33 = v1[11];
  v34 = v1[10];
  v40 = &unk_287178350;
  sub_25F486004(&v40);
  v8 = v40;
  v9 = *(v40 + 2);
  if (v9)
  {
    v10 = 1702195828;
    if (v7)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    v32 = v11;
    if (v7)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v31 = v12;
    if (!v6)
    {
      v10 = 0x65736C6166;
    }

    v30 = v10;
    if (v6)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v29 = v13;
    v14 = 0x74616854657A6973;
    if (!(v3 | v4))
    {
      v14 = 0x656369766564;
    }

    v15 = 0xEC00000073746946;
    if (!(v3 | v4))
    {
      v15 = 0xE600000000000000;
    }

    if (!v5)
    {
      v14 = 0x6465786966;
    }

    v28 = v14;
    if (v5)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v27 = v16;
    v17 = 32;
    while (1)
    {
      v18 = v8[v17];
      if (v18 > 4)
      {
        break;
      }

      if (v8[v17] <= 1u)
      {
        if (!v8[v17])
        {
          sub_25F488724();
          v40 = sub_25F4A3080();
          v41 = v21;
          goto LABEL_57;
        }

        v40 = v37;
        v41 = v2;

        sub_25F4A2D70();
LABEL_58:

        goto LABEL_59;
      }

      if (v18 == 2)
      {
        if (v39)
        {
          v40 = v26;
          v41 = v39;

          goto LABEL_57;
        }
      }

      else
      {
        if (v18 != 3)
        {
          v40 = v28;
          v41 = v27;
          goto LABEL_57;
        }

        if (v38)
        {
          v40 = v25;
          v41 = v38;

          goto LABEL_57;
        }
      }

LABEL_59:
      ++v17;
      if (!--v9)
      {
        goto LABEL_63;
      }
    }

    if (v8[v17] <= 6u)
    {
      if (v18 == 5)
      {
        if (v36)
        {
          v22 = 0x746567646977;
          if (v36 == 1)
          {
            v23 = 0xE600000000000000;
          }

          else
          {
            v22 = 0x6163696C706D6F63;
            v23 = 0xEC0000006E6F6974;
          }
        }

        else
        {
          v22 = 0x746163696C707061;
          v23 = 0xEB000000006E6F69;
        }

        v40 = v22;
        v41 = v23;
      }

      else
      {
        v40 = v30;
        v41 = v29;
      }
    }

    else
    {
      if (v18 == 7)
      {
        v40 = v32;
        v41 = v31;
        goto LABEL_57;
      }

      if (v18 != 8)
      {
        v40 = v34;
        v41 = v33;
        sub_25F4886D0();

        sub_25F4A2D70();
        goto LABEL_58;
      }

      if (v35 > 1)
      {
        if (v35 == 2)
        {
          v19 = 0xED00007466654C65;
        }

        else
        {
          v19 = 0xEE00746867695265;
        }

        v20 = 0x70616373646E616CLL;
      }

      else if (v35)
      {
        v20 = 0xD000000000000012;
        v19 = 0x800000025F4B6AF0;
      }

      else
      {
        v19 = 0xE800000000000000;
        v20 = 0x7469617274726F70;
      }

      v40 = v20;
      v41 = v19;
    }

LABEL_57:
    sub_25F4A2D70();
    goto LABEL_58;
  }

LABEL_63:
}

uint64_t sub_25F48535C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 4)
  {
    v13 = 0xD000000000000010;
    v14 = 0x800000025F4B6BB0;
    v15 = 0x800000025F4B6190;
    v16 = 0xD000000000000014;
    if (v2 != 8)
    {
      v16 = 0xD000000000000015;
      v15 = 0x800000025F4B6C40;
    }

    if (v2 != 7)
    {
      v13 = v16;
      v14 = v15;
    }

    v17 = 0x54747865746E6F63;
    v18 = 0xEB00000000657079;
    if (v2 != 5)
    {
      v17 = 0x7374726F70707573;
      v18 = 0xEC0000006576694CLL;
    }

    if (*a1 <= 6u)
    {
      v10 = v17;
    }

    else
    {
      v10 = v13;
    }

    if (v2 <= 6)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (*a2 > 4u)
    {
      goto LABEL_16;
    }

LABEL_34:
    if (*a2 > 1u)
    {
      if (v3 == 2)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x656369766564)
        {
          goto LABEL_58;
        }
      }

      else if (v3 == 3)
      {
        v12 = 0xEB00000000656D61;
        if (v10 != 0x4E79616C70736964)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x74756F79616CLL)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_56;
    }

    if (!*a2)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7865646E69)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v19 = 0x6E65746E6F63;
    goto LABEL_55;
  }

  v4 = 0xE500000000000000;
  v5 = 0xE600000000000000;
  v6 = 0x656369766564;
  v7 = 0x4E79616C70736964;
  v8 = 0xEB00000000656D61;
  if (v2 != 3)
  {
    v7 = 0x74756F79616CLL;
    v8 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x54746E65746E6F63;
  if (*a1)
  {
    v4 = 0xEB00000000657079;
  }

  else
  {
    v9 = 0x7865646E69;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 1)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*a2 <= 4u)
  {
    goto LABEL_34;
  }

LABEL_16:
  if (*a2 > 6u)
  {
    if (v3 == 7)
    {
      v12 = 0x800000025F4B6BB0;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_58;
      }
    }

    else if (v3 == 8)
    {
      v12 = 0x800000025F4B6190;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v12 = 0x800000025F4B6C40;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_58;
      }
    }

    goto LABEL_56;
  }

  if (v3 != 5)
  {
    v12 = 0xEC0000006576694CLL;
    if (v10 != 0x7374726F70707573)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v19 = 0x7865746E6F63;
LABEL_55:
  v12 = 0xEB00000000657079;
  if (v10 != (v19 & 0xFFFFFFFFFFFFLL | 0x5474000000000000))
  {
LABEL_58:
    v20 = sub_25F4A3270();
    goto LABEL_59;
  }

LABEL_56:
  if (v11 != v12)
  {
    goto LABEL_58;
  }

  v20 = 0;
LABEL_59:

  return v20 & 1;
}

uint64_t PreviewContentDomain.rawValue.getter()
{
  v1 = 0x746567646977;
  if (*v0 != 1)
  {
    v1 = 0x6163696C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746163696C707061;
  }
}

__n128 PreviewDescription.previewTraits.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 76);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u8[1] = v3;
  return result;
}

uint64_t PreviewDescription.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v16 = *(v0 + 73);
  v17 = *(v0 + 74);
  v18 = *(v0 + 75);
  v19 = *(v0 + 76);
  v9 = *(v0 + 88);
  v14 = *(v0 + 40);
  v15 = *(v0 + 80);
  MEMORY[0x25F8DDB20](*v0);
  sub_25F4A2C60();
  if (v4)
  {
    sub_25F4A3320();
    sub_25F4A2C60();
    v10 = v9;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_25F4A3320();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    MEMORY[0x25F8DDB20](2);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x25F8DDB50](v11);
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x25F8DDB50](v12);
    goto LABEL_14;
  }

  sub_25F4A3320();
  v10 = v9;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_25F4A3320();
  sub_25F4A2C60();
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:
  MEMORY[0x25F8DDB20]((v5 | v7) != 0);
LABEL_14:
  sub_25F4A2C60();

  sub_25F4A3320();
  sub_25F4A3320();
  sub_25F4A2C60();

  if (!v10)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t PreviewDescription.hashValue.getter()
{
  sub_25F4A3300();
  PreviewDescription.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F485A04()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  return sub_25F4A25A0();
}

uint64_t sub_25F485A74()
{
  sub_25F4A3300();
  PreviewDescription.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F485AB8()
{
  sub_25F4A3300();
  PreviewDescription.hash(into:)();
  return sub_25F4A3350();
}

uint64_t sub_25F485AFC()
{
  sub_25F48B2C4();

  return sub_25F4A29D0();
}

PreviewsMessagingOS::PreviewContentDomain_optional __swiftcall PreviewContentDomain.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_25F485B94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746567646977;
  if (v2 != 1)
  {
    v4 = 0x6163696C706D6F63;
    v3 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746163696C707061;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746567646977;
  if (*a2 != 1)
  {
    v8 = 0x6163696C706D6F63;
    v7 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746163696C707061;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB000000006E6F69;
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

uint64_t sub_25F485CA4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F485D54()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F485DF0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F485EA8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0xE600000000000000;
  v5 = 0x746567646977;
  if (v2 != 1)
  {
    v5 = 0x6163696C706D6F63;
    v4 = 0xEC0000006E6F6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746163696C707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F485F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F48B270();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F486004(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F487B5C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25F486070(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25F486070(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25F4A3200();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_25F4A2DC0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25F4864DC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25F486168(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25F486168(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = 0xEB00000000657079;
    v5 = 0x54746E65746E6F63;
    v6 = (*a4 + a3);
    v7 = result - a3;
    v30 = *a4;
LABEL_6:
    v28 = v6;
    v29 = a3;
    v8 = *(v30 + a3);
    v27 = v7;
    while (1)
    {
      if (v8 > 4u)
      {
        if (v8 <= 6u)
        {
          if (v8 == 5)
          {
            v13 = 0x54747865746E6F63;
            v14 = 0xEB00000000657079;
          }

          else
          {
            v13 = 0x7374726F70707573;
            v14 = 0xEC0000006576694CLL;
          }
        }

        else if (v8 == 7)
        {
          v13 = 0xD000000000000010;
          v14 = 0x800000025F4B6BB0;
        }

        else if (v8 == 8)
        {
          v13 = 0xD000000000000014;
          v14 = 0x800000025F4B6190;
        }

        else
        {
          v13 = 0xD000000000000015;
          v14 = 0x800000025F4B6C40;
        }
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x4E79616C70736964;
        }

        else
        {
          v9 = 0x74756F79616CLL;
        }

        if (v8 == 3)
        {
          v10 = 0xEB00000000656D61;
        }

        else
        {
          v10 = 0xE600000000000000;
        }

        if (v8 == 2)
        {
          v9 = 0x656369766564;
          v10 = 0xE600000000000000;
        }

        if (v8)
        {
          v11 = 0x54746E65746E6F63;
        }

        else
        {
          v11 = 0x7865646E69;
        }

        if (v8)
        {
          v12 = 0xEB00000000657079;
        }

        else
        {
          v12 = 0xE500000000000000;
        }

        if (v8 <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }

        if (v8 <= 1u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }
      }

      v15 = *(v6 - 1);
      v16 = 0xD000000000000014;
      if (v15 != 8)
      {
        v16 = 0xD000000000000015;
      }

      v17 = 0x800000025F4B6C40;
      if (v15 == 8)
      {
        v17 = 0x800000025F4B6190;
      }

      if (v15 == 7)
      {
        v16 = 0xD000000000000010;
        v17 = 0x800000025F4B6BB0;
      }

      v18 = 0x7374726F70707573;
      if (v15 == 5)
      {
        v18 = 0x54747865746E6F63;
      }

      v19 = 0xEC0000006576694CLL;
      if (v15 == 5)
      {
        v19 = 0xEB00000000657079;
      }

      if (*(v6 - 1) <= 6u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (v15 == 3)
      {
        v20 = 0x4E79616C70736964;
      }

      else
      {
        v20 = 0x74756F79616CLL;
      }

      if (v15 == 3)
      {
        v21 = 0xEB00000000656D61;
      }

      else
      {
        v21 = 0xE600000000000000;
      }

      if (v15 == 2)
      {
        v20 = 0x656369766564;
        v21 = 0xE600000000000000;
      }

      if (!*(v6 - 1))
      {
        v5 = 0x7865646E69;
        v4 = 0xE500000000000000;
      }

      if (*(v6 - 1) <= 1u)
      {
        v20 = v5;
        v21 = v4;
      }

      if (*(v6 - 1) <= 4u)
      {
        v22 = v20;
      }

      else
      {
        v22 = v16;
      }

      if (*(v6 - 1) <= 4u)
      {
        v23 = v21;
      }

      else
      {
        v23 = v17;
      }

      if (v13 == v22 && v14 == v23)
      {

        v5 = 0x54746E65746E6F63;
        v4 = 0xEB00000000657079;
LABEL_5:
        a3 = v29 + 1;
        v6 = v28 + 1;
        v7 = v27 - 1;
        if (v29 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v24 = sub_25F4A3270();

      v5 = 0x54746E65746E6F63;
      v4 = 0xEB00000000657079;
      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v30)
      {
        break;
      }

      v8 = *v6;
      *v6 = *(v6 - 1);
      *--v6 = v8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25F4864DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v114 = result;
  v7 = *(a3 + 8);
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_219:
    v9 = v6;
    v6 = *v114;
    if (!*v114)
    {
      goto LABEL_257;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_251:
      result = sub_25F487B20(v10);
      v10 = result;
    }

    v105 = v5;
    v122 = v10;
    v106 = *(v10 + 2);
    if (v106 >= 2)
    {
      while (*v9)
      {
        v5 = v106 - 1;
        v107 = *&v10[16 * v106];
        v108 = *&v10[16 * v106 + 24];
        sub_25F487230((*v9 + v107), (*v9 + *&v10[16 * v106 + 16]), *v9 + v108, v6);
        if (v105)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_244;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_25F487B20(v10);
        }

        if (v106 - 2 >= *(v10 + 2))
        {
          goto LABEL_245;
        }

        v109 = &v10[16 * v106];
        *v109 = v107;
        *(v109 + 1) = v108;
        v122 = v10;
        result = sub_25F487A94(v106 - 1);
        v10 = v122;
        v106 = *(v122 + 2);
        if (v106 <= 1)
        {
        }
      }

      goto LABEL_255;
    }
  }

  v8 = 0;
  v9 = 0xEB00000000657079;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v8++;
    if (v8 < v7)
    {
      v12 = *v6;
      v13 = v8;
      v121 = v8[*v6];
      v14 = v11;
      v15 = v12;
      v120 = *(v12 + v14);
      result = sub_25F48535C(&v121, &v120);
      __dst = result;
      if (v5)
      {
      }

      v112 = v14;
      v8 = (v14 + 2);
      if (v8 < v7)
      {
        while (1)
        {
          v17 = v8[v15];
          if (v17 > 4)
          {
            if (v8[v15] <= 6u)
            {
              if (v17 == 5)
              {
                v22 = 0x54747865746E6F63;
              }

              else
              {
                v22 = 0x7374726F70707573;
              }

              if (v17 == 5)
              {
                v23 = 0xEB00000000657079;
              }

              else
              {
                v23 = 0xEC0000006576694CLL;
              }
            }

            else if (v17 == 7)
            {
              v22 = 0xD000000000000010;
              v23 = 0x800000025F4B6BB0;
            }

            else if (v17 == 8)
            {
              v22 = 0xD000000000000014;
              v23 = 0x800000025F4B6190;
            }

            else
            {
              v22 = 0xD000000000000015;
              v23 = 0x800000025F4B6C40;
            }
          }

          else
          {
            v18 = 0xEB00000000656D61;
            if (v17 == 3)
            {
              v19 = 0x4E79616C70736964;
            }

            else
            {
              v19 = 0x74756F79616CLL;
            }

            if (v17 != 3)
            {
              v18 = 0xE600000000000000;
            }

            if (v17 == 2)
            {
              v19 = 0x656369766564;
              v18 = 0xE600000000000000;
            }

            if (v8[v15])
            {
              v20 = 0x54746E65746E6F63;
            }

            else
            {
              v20 = 0x7865646E69;
            }

            if (v8[v15])
            {
              v21 = 0xEB00000000657079;
            }

            else
            {
              v21 = 0xE500000000000000;
            }

            if (v8[v15] <= 1u)
            {
              v22 = v20;
            }

            else
            {
              v22 = v19;
            }

            if (v8[v15] <= 1u)
            {
              v23 = v21;
            }

            else
            {
              v23 = v18;
            }
          }

          v24 = v8[v15 - 1];
          if (v24 > 4)
          {
            if (v8[v15 - 1] <= 6u)
            {
              if (v24 == 5)
              {
                v25 = 0x7865746E6F63;
                goto LABEL_67;
              }

              v9 = 0xEC0000006576694CLL;
              if (v22 != 0x7374726F70707573)
              {
                goto LABEL_8;
              }
            }

            else if (v24 == 7)
            {
              v9 = 0x800000025F4B6BB0;
              if (v22 != 0xD000000000000010)
              {
                goto LABEL_8;
              }
            }

            else if (v24 == 8)
            {
              v9 = 0x800000025F4B6190;
              if (v22 != 0xD000000000000014)
              {
                goto LABEL_8;
              }
            }

            else
            {
              v9 = 0x800000025F4B6C40;
              if (v22 != 0xD000000000000015)
              {
                goto LABEL_8;
              }
            }
          }

          else if (v8[v15 - 1] <= 1u)
          {
            if (v8[v15 - 1])
            {
              v25 = 0x6E65746E6F63;
LABEL_67:
              if (v22 != (v25 & 0xFFFFFFFFFFFFLL | 0x5474000000000000))
              {
                goto LABEL_8;
              }

              goto LABEL_70;
            }

            v9 = 0xE500000000000000;
            if (v22 != 0x7865646E69)
            {
              goto LABEL_8;
            }
          }

          else if (v24 == 2)
          {
            v9 = 0xE600000000000000;
            if (v22 != 0x656369766564)
            {
              goto LABEL_8;
            }
          }

          else if (v24 == 3)
          {
            v9 = 0xEB00000000656D61;
            if (v22 != 0x4E79616C70736964)
            {
              goto LABEL_8;
            }
          }

          else
          {
            v9 = 0xE600000000000000;
            if (v22 != 0x74756F79616CLL)
            {
              goto LABEL_8;
            }
          }

LABEL_70:
          if (v23 == v9)
          {

            if (__dst)
            {
              v13 = (v8 - 1);
              v9 = 0xEB00000000657079;
              v11 = v112;
              goto LABEL_76;
            }

            goto LABEL_9;
          }

LABEL_8:
          v16 = sub_25F4A3270();

          v6 = a3;
          if ((__dst ^ v16))
          {
            v13 = (v8 - 1);
            v9 = 0xEB00000000657079;
            break;
          }

LABEL_9:
          ++v8;
          v9 = 0xEB00000000657079;
          if (v7 == v8)
          {
            v8 = v7;
            v13 = v7 - 1;
            break;
          }
        }
      }

      v11 = v112;
      if (__dst)
      {
LABEL_76:
        if (v8 < v11)
        {
          goto LABEL_248;
        }

        if (v11 <= v13)
        {
          v52 = v8 - 1;
          v53 = v11;
          do
          {
            if (v53 != v52)
            {
              v55 = *v6;
              if (!*v6)
              {
                goto LABEL_254;
              }

              v56 = v53[v55];
              v53[v55] = v52[v55];
              v52[v55] = v56;
            }
          }

          while (++v53 < v52--);
        }
      }
    }

    v26 = *(v6 + 1);
    if (v8 < v26)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_247;
      }

      if (&v8[-v11] < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_249;
        }

        if (v11 + a4 < v26)
        {
          v26 = (v11 + a4);
        }

        if (v26 < v11)
        {
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        if (v8 != v26)
        {
          break;
        }
      }
    }

LABEL_167:
    if (v8 < v11)
    {
      goto LABEL_246;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v57 = v11;
    if ((result & 1) == 0)
    {
      result = sub_25F3EE578(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v59 = *(v10 + 2);
    v58 = *(v10 + 3);
    v9 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = sub_25F3EE578((v58 > 1), v59 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v9;
    v60 = &v10[16 * v59];
    *(v60 + 4) = v57;
    *(v60 + 5) = v8;
    __dstb = *v114;
    if (!*v114)
    {
      goto LABEL_256;
    }

    if (v59)
    {
      while (1)
      {
        v61 = v9 - 1;
        if (v9 >= 4)
        {
          break;
        }

        if (v9 == 3)
        {
          v62 = *(v10 + 4);
          v63 = *(v10 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_187:
          if (v65)
          {
            goto LABEL_235;
          }

          v78 = &v10[16 * v9];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_238;
          }

          v84 = &v10[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_241;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_242;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v9 - 2;
            }

            goto LABEL_208;
          }

          goto LABEL_201;
        }

        v88 = &v10[16 * v9];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_201:
        if (v83)
        {
          goto LABEL_237;
        }

        v91 = &v10[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_240;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_208:
        v99 = v61 - 1;
        if (v61 - 1 >= v9)
        {
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
          goto LABEL_250;
        }

        v100 = *v6;
        if (!*v6)
        {
          goto LABEL_253;
        }

        v101 = v8;
        v102 = v6;
        v103 = *&v10[16 * v99 + 32];
        v6 = *&v10[16 * v61 + 40];
        sub_25F487230((v100 + v103), (v100 + *&v10[16 * v61 + 32]), &v6[v100], __dstb);
        if (v5)
        {
        }

        if (v6 < v103)
        {
          goto LABEL_231;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_25F487B20(v10);
        }

        if (v99 >= *(v10 + 2))
        {
          goto LABEL_232;
        }

        v104 = &v10[16 * v99];
        *(v104 + 4) = v103;
        *(v104 + 5) = v6;
        v122 = v10;
        result = sub_25F487A94(v61);
        v10 = v122;
        v9 = *(v122 + 2);
        v8 = v101;
        v6 = v102;
        if (v9 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v10[16 * v9 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_233;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_234;
      }

      v73 = &v10[16 * v9];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_236;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_239;
      }

      if (v77 >= v69)
      {
        v95 = &v10[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_243;
        }

        if (v64 < v98)
        {
          v61 = v9 - 2;
        }

        goto LABEL_208;
      }

      goto LABEL_187;
    }

LABEL_3:
    v7 = *(v6 + 1);
    v9 = 0xEB00000000657079;
    if (v8 >= v7)
    {
      goto LABEL_219;
    }
  }

  v110 = v5;
  v27 = *v6;
  v28 = &v8[*v6];
  v113 = v11;
  v29 = v11 - v8;
  v116 = v26;
LABEL_89:
  __dsta = v8;
  v30 = v8[v27];
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 > 4u)
    {
      if (v30 <= 6u)
      {
        if (v30 == 5)
        {
          v37 = 0x54747865746E6F63;
          v38 = 0xEB00000000657079;
        }

        else
        {
          v37 = 0x7374726F70707573;
          v38 = 0xEC0000006576694CLL;
        }
      }

      else if (v30 == 7)
      {
        v37 = 0xD000000000000010;
        v38 = 0x800000025F4B6BB0;
      }

      else if (v30 == 8)
      {
        v37 = 0xD000000000000014;
        v38 = 0x800000025F4B6190;
      }

      else
      {
        v37 = 0xD000000000000015;
        v38 = 0x800000025F4B6C40;
      }
    }

    else
    {
      v33 = 0xEB00000000656D61;
      if (v30 == 3)
      {
        v34 = 0x4E79616C70736964;
      }

      else
      {
        v34 = 0x74756F79616CLL;
      }

      if (v30 != 3)
      {
        v33 = 0xE600000000000000;
      }

      if (v30 == 2)
      {
        v34 = 0x656369766564;
        v33 = 0xE600000000000000;
      }

      if (v30)
      {
        v35 = 0x54746E65746E6F63;
      }

      else
      {
        v35 = 0x7865646E69;
      }

      if (v30)
      {
        v36 = 0xEB00000000657079;
      }

      else
      {
        v36 = 0xE500000000000000;
      }

      if (v30 <= 1u)
      {
        v37 = v35;
      }

      else
      {
        v37 = v34;
      }

      if (v30 <= 1u)
      {
        v38 = v36;
      }

      else
      {
        v38 = v33;
      }
    }

    v39 = *(v32 - 1);
    v40 = 0xD000000000000014;
    if (v39 != 8)
    {
      v40 = 0xD000000000000015;
    }

    v41 = 0x800000025F4B6C40;
    if (v39 == 8)
    {
      v41 = 0x800000025F4B6190;
    }

    if (v39 == 7)
    {
      v40 = 0xD000000000000010;
      v41 = 0x800000025F4B6BB0;
    }

    v42 = 0x7374726F70707573;
    if (v39 == 5)
    {
      v42 = 0x54747865746E6F63;
    }

    v43 = 0xEC0000006576694CLL;
    if (v39 == 5)
    {
      v43 = 0xEB00000000657079;
    }

    if (*(v32 - 1) <= 6u)
    {
      v40 = v42;
      v41 = v43;
    }

    v44 = 0xEB00000000656D61;
    if (v39 == 3)
    {
      v45 = 0x4E79616C70736964;
    }

    else
    {
      v45 = 0x74756F79616CLL;
    }

    if (v39 != 3)
    {
      v44 = 0xE600000000000000;
    }

    if (v39 == 2)
    {
      v45 = 0x656369766564;
      v44 = 0xE600000000000000;
    }

    if (*(v32 - 1))
    {
      v46 = 0x54746E65746E6F63;
    }

    else
    {
      v46 = 0x7865646E69;
    }

    if (*(v32 - 1))
    {
      v47 = 0xEB00000000657079;
    }

    else
    {
      v47 = 0xE500000000000000;
    }

    if (*(v32 - 1) <= 1u)
    {
      v45 = v46;
      v44 = v47;
    }

    if (*(v32 - 1) <= 4u)
    {
      v48 = v45;
    }

    else
    {
      v48 = v40;
    }

    if (*(v32 - 1) <= 4u)
    {
      v49 = v44;
    }

    else
    {
      v49 = v41;
    }

    if (v37 == v48 && v38 == v49)
    {

LABEL_88:
      v8 = __dsta + 1;
      ++v28;
      --v29;
      if (__dsta + 1 != v116)
      {
        goto LABEL_89;
      }

      v8 = v116;
      v5 = v110;
      v6 = a3;
      v11 = v113;
      goto LABEL_167;
    }

    v50 = sub_25F4A3270();

    if ((v50 & 1) == 0)
    {
      v9 = 0xEB00000000657079;
      goto LABEL_88;
    }

    if (!v27)
    {
      break;
    }

    v30 = *v32;
    *v32 = *(v32 - 1);
    *--v32 = v30;
    v51 = __CFADD__(v31++, 1);
    v9 = 0xEB00000000657079;
    if (v51)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
LABEL_257:
  __break(1u);
  return result;
}

uint64_t sub_25F487230(_BYTE *__src, _BYTE *a2, unint64_t a3, _BYTE *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < (a3 - a2))
  {
    if (__dst != __src || __dst >= a2)
    {
      memmove(__dst, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1)
    {
      if (v6 < v5)
      {
        while (1)
        {
          v11 = *v6;
          if (v11 > 4)
          {
            if (*v6 <= 6u)
            {
              if (v11 == 5)
              {
                v14 = 0x7865746E6F63;
LABEL_25:
                v12 = v14 & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
                v13 = 0xEB00000000657079;
                goto LABEL_27;
              }

              v12 = 0x7374726F70707573;
              v13 = 0xEC0000006576694CLL;
            }

            else if (v11 == 7)
            {
              v12 = 0xD000000000000010;
              v13 = 0x800000025F4B6BB0;
            }

            else if (v11 == 8)
            {
              v12 = 0xD000000000000014;
              v13 = 0x800000025F4B6190;
            }

            else
            {
              v12 = 0xD000000000000015;
              v13 = 0x800000025F4B6C40;
            }
          }

          else
          {
            if (*v6 <= 1u)
            {
              if (!*v6)
              {
                v13 = 0xE500000000000000;
                v12 = 0x7865646E69;
                goto LABEL_27;
              }

              v14 = 0x6E65746E6F63;
              goto LABEL_25;
            }

            if (v11 == 2)
            {
              v13 = 0xE600000000000000;
              v12 = 0x656369766564;
            }

            else if (v11 == 3)
            {
              v12 = 0x4E79616C70736964;
              v13 = 0xEB00000000656D61;
            }

            else
            {
              v13 = 0xE600000000000000;
              v12 = 0x74756F79616CLL;
            }
          }

LABEL_27:
          v15 = *v4;
          if (v15 > 4)
          {
            if (*v4 <= 6u)
            {
              if (v15 == 5)
              {
                v17 = 0x7865746E6F63;
                goto LABEL_52;
              }

              v16 = 0xEC0000006576694CLL;
              if (v12 != 0x7374726F70707573)
              {
                goto LABEL_57;
              }
            }

            else if (v15 == 7)
            {
              v16 = 0x800000025F4B6BB0;
              if (v12 != 0xD000000000000010)
              {
                goto LABEL_57;
              }
            }

            else if (v15 == 8)
            {
              v16 = 0x800000025F4B6190;
              if (v12 != 0xD000000000000014)
              {
                goto LABEL_57;
              }
            }

            else
            {
              v16 = 0x800000025F4B6C40;
              if (v12 != 0xD000000000000015)
              {
                goto LABEL_57;
              }
            }
          }

          else if (*v4 <= 1u)
          {
            if (*v4)
            {
              v17 = 0x6E65746E6F63;
LABEL_52:
              v16 = 0xEB00000000657079;
              if (v12 != (v17 & 0xFFFFFFFFFFFFLL | 0x5474000000000000))
              {
                goto LABEL_57;
              }

              goto LABEL_55;
            }

            v16 = 0xE500000000000000;
            if (v12 != 0x7865646E69)
            {
              goto LABEL_57;
            }
          }

          else if (v15 == 2)
          {
            v16 = 0xE600000000000000;
            if (v12 != 0x656369766564)
            {
              goto LABEL_57;
            }
          }

          else if (v15 == 3)
          {
            v16 = 0xEB00000000656D61;
            if (v12 != 0x4E79616C70736964)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v16 = 0xE600000000000000;
            if (v12 != 0x74756F79616CLL)
            {
              goto LABEL_57;
            }
          }

LABEL_55:
          if (v13 == v16)
          {

            goto LABEL_61;
          }

LABEL_57:
          v18 = sub_25F4A3270();

          if (v18)
          {
            v19 = v6 + 1;
            v20 = v6;
            if (v7 >= v6 && v7 < v19)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

LABEL_61:
          v21 = v4 + 1;
          v20 = v4;
          v19 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v21)
            {
              goto LABEL_66;
            }
          }

LABEL_65:
          *v7 = *v20;
LABEL_66:
          ++v7;
          if (v4 < v10)
          {
            v6 = v19;
            if (v19 < v5)
            {
              continue;
            }
          }

          v6 = v7;
          goto LABEL_141;
        }
      }

      v6 = v7;
      if (v7 != v4)
      {
        goto LABEL_148;
      }

LABEL_147:
      if (v6 >= v10)
      {
        goto LABEL_148;
      }

      return 1;
    }

    v6 = v7;
LABEL_146:
    if (v6 != v4)
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

  if (__dst != a2 || __dst >= a3)
  {
    memmove(__dst, a2, a3 - a2);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
    goto LABEL_146;
  }

LABEL_74:
  v22 = v6 - 1;
  --v5;
  v23 = v10;
  __dsta = v6 - 1;
  do
  {
    v25 = *--v23;
    v24 = v25;
    if (v25 > 4)
    {
      if (v24 <= 6)
      {
        if (v24 == 5)
        {
          v27 = 0x54747865746E6F63;
          v26 = 0xEB00000000657079;
        }

        else
        {
          v27 = 0x7374726F70707573;
          v26 = 0xEC0000006576694CLL;
        }
      }

      else if (v24 == 7)
      {
        v27 = 0xD000000000000010;
        v26 = 0x800000025F4B6BB0;
      }

      else if (v24 == 8)
      {
        v27 = 0xD000000000000014;
        v26 = 0x800000025F4B6190;
      }

      else
      {
        v27 = 0xD000000000000015;
        v26 = 0x800000025F4B6C40;
      }
    }

    else if (v24 <= 1)
    {
      if (v24)
      {
        v27 = 0x54746E65746E6F63;
      }

      else
      {
        v27 = 0x7865646E69;
      }

      if (v24)
      {
        v26 = 0xEB00000000657079;
      }

      else
      {
        v26 = 0xE500000000000000;
      }
    }

    else if (v24 == 2)
    {
      v26 = 0xE600000000000000;
      v27 = 0x656369766564;
    }

    else if (v24 == 3)
    {
      v26 = 0xEB00000000656D61;
      v27 = 0x4E79616C70736964;
    }

    else
    {
      v26 = 0xE600000000000000;
      v27 = 0x74756F79616CLL;
    }

    v28 = *v22;
    if (v28 > 4)
    {
      if (*v22 > 6u)
      {
        if (v28 == 7)
        {
          v29 = 0x800000025F4B6BB0;
          if (v27 != 0xD000000000000010)
          {
            goto LABEL_129;
          }
        }

        else if (v28 == 8)
        {
          v29 = 0x800000025F4B6190;
          if (v27 != 0xD000000000000014)
          {
            goto LABEL_129;
          }
        }

        else
        {
          v29 = 0x800000025F4B6C40;
          if (v27 != 0xD000000000000015)
          {
            goto LABEL_129;
          }
        }

        goto LABEL_127;
      }

      if (v28 == 5)
      {
        v30 = 0x7865746E6F63;
        goto LABEL_124;
      }

      v29 = 0xEC0000006576694CLL;
      if (v27 != 0x7374726F70707573)
      {
        goto LABEL_129;
      }
    }

    else if (*v22 <= 1u)
    {
      if (*v22)
      {
        v30 = 0x6E65746E6F63;
LABEL_124:
        v29 = 0xEB00000000657079;
        if (v27 != (v30 & 0xFFFFFFFFFFFFLL | 0x5474000000000000))
        {
          goto LABEL_129;
        }

        goto LABEL_127;
      }

      v29 = 0xE500000000000000;
      if (v27 != 0x7865646E69)
      {
        goto LABEL_129;
      }
    }

    else if (v28 == 2)
    {
      v29 = 0xE600000000000000;
      if (v27 != 0x656369766564)
      {
        goto LABEL_129;
      }
    }

    else if (v28 == 3)
    {
      v29 = 0xEB00000000656D61;
      if (v27 != 0x4E79616C70736964)
      {
        goto LABEL_129;
      }
    }

    else
    {
      v29 = 0xE600000000000000;
      if (v27 != 0x74756F79616CLL)
      {
        goto LABEL_129;
      }
    }

LABEL_127:
    if (v26 == v29)
    {

      goto LABEL_130;
    }

LABEL_129:
    v31 = sub_25F4A3270();

    if (v31)
    {
      if (v5 + 1 < v6 || v5 >= v6)
      {
        *v5 = *__dsta;
      }

      if (v10 > v4)
      {
        --v6;
        if (__dsta > v7)
        {
          goto LABEL_74;
        }
      }

      v6 = __dsta;
      if (__dsta == v4)
      {
        goto LABEL_147;
      }

      goto LABEL_148;
    }

LABEL_130:
    v22 = v6 - 1;
    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = *v23;
    }

    --v5;
    v10 = v23;
  }

  while (v23 > v4);
  v10 = v23;
LABEL_141:
  if (v6 == v4)
  {
    goto LABEL_147;
  }

LABEL_148:
  memmove(v6, v4, v10 - v4);
  return 1;
}

uint64_t sub_25F487A94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F487B20(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_25F487B70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D7D0, &unk_25F4B29D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_25F487C64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D718, &qword_25F4A4460);
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

char *sub_25F487D70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6FCC8, &unk_25F4B2988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

BOOL _s19PreviewsMessagingOS15PreviewMetadataV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = a1[24];
  v34 = a1[25];
  *(&v31 + 1) = *(a1 + 4);
  *&v31 = *(a1 + 5);
  v33 = a1[48];
  v29 = a1[49];
  v27 = a1[50];
  v23 = *(a1 + 7);
  v25 = *(a1 + 8);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  *&v30 = *(a2 + 40);
  *(&v30 + 1) = *(a2 + 32);
  v32 = *(a2 + 48);
  v10 = 0xE600000000000000;
  v11 = 0x746567646977;
  v28 = *(a2 + 49);
  v26 = *(a2 + 50);
  if (v2 != 1)
  {
    v11 = 0x6163696C706D6F63;
    v10 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x746163696C707061;
  }

  if (v2)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xEB000000006E6F69;
  }

  v22 = *(a2 + 56);
  v24 = *(a2 + 64);
  v14 = 0xE600000000000000;
  v15 = 0x746567646977;
  if (*a2 != 1)
  {
    v15 = 0x6163696C706D6F63;
    v14 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x746163696C707061;
  }

  if (*a2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xEB000000006E6F69;
  }

  if (v12 == v16 && v13 == v17)
  {
  }

  else
  {
    v18 = sub_25F4A3270();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    result = 0;
    if (v5 != v8)
    {
      return result;
    }
  }

  else
  {
    v20 = sub_25F4A3270();
    result = 0;
    if (v20 & 1) == 0 || ((v5 ^ v8))
    {
      return result;
    }
  }

  if ((v34 ^ v9))
  {
    return result;
  }

  if (v33)
  {
    if (v31 == 0)
    {
      if (!v32 || v30 != 0)
      {
        return 0;
      }
    }

    else if (!v32 || v30 == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v32)
    {
      return 0;
    }

    result = 0;
    if (*(&v31 + 1) != *(&v30 + 1) || *&v31 != *&v30)
    {
      return result;
    }
  }

  v21 = sub_25F46F8DC(v29, v28);
  result = 0;
  if ((v21 & 1) != 0 && ((v27 ^ v26) & 1) == 0)
  {
    if (v25)
    {
      return v24 && (v23 == v22 && v25 == v24 || (sub_25F4A3270() & 1) != 0);
    }

    return !v24;
  }

  return result;
}

BOOL _s19PreviewsMessagingOS13PreviewFlavorO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  *&v28[16] = a1[2];
  v29 = v2;
  v4 = a1[1];
  v27 = *a1;
  *v28 = v4;
  v5 = a2[3];
  v6 = a2[1];
  v33 = a2[2];
  *v34 = v5;
  v7 = a2[1];
  v31 = *a2;
  v32 = v7;
  v8 = a1[3];
  v35[2] = *&v28[16];
  v35[3] = v8;
  v35[0] = v27;
  v35[1] = v3;
  v37 = v31;
  v40 = a2[3];
  v30 = *(a1 + 8);
  *&v34[16] = *(a2 + 8);
  v9 = *(a2 + 8);
  v36 = *(a1 + 8);
  v41 = v9;
  v39 = v33;
  v38 = v6;
  v11 = *(&v4 + 1);
  v10 = v4;
  if ((v29 & 0x8000000000000000) != 0)
  {
    if ((*v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    v14 = *(&v32 + 1);
    if (v27 != v31)
    {
      v15 = sub_25F4A3270();
      v11 = *&v28[8];
      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    if (v11)
    {
      if (!*(&v32 + 1))
      {
        goto LABEL_5;
      }

      if (__PAIR128__(v11, v10) == v32)
      {
        sub_25F48B48C(&v27, &v21);
        sub_25F48B48C(&v31, &v21);
        sub_25F3F21F4(v35, &qword_27FD6FCD8, &qword_25F4B29A0);
        return 1;
      }

      v16 = sub_25F4A3270();
      sub_25F48B48C(&v27, &v21);
      sub_25F48B48C(&v31, &v21);
      sub_25F3F21F4(v35, &qword_27FD6FCD8, &qword_25F4B29A0);
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_25F48B48C(&v27, &v21);
      sub_25F48B48C(&v31, &v21);

      sub_25F3F21F4(v35, &qword_27FD6FCD8, &qword_25F4B29A0);
      if (v14)
      {

        return 0;
      }
    }

    return 1;
  }

  if ((*v34 & 0x8000000000000000) != 0)
  {
LABEL_5:
    sub_25F48B48C(&v27, &v21);
    sub_25F48B48C(&v31, &v21);
    sub_25F3F21F4(v35, &qword_27FD6FCD8, &qword_25F4B29A0);
    return 0;
  }

  v21 = v27;
  v23 = *&v28[8];
  v22 = *v28;
  v24 = *&v28[24];
  v25 = v29;
  v26 = v30;
  v18[0] = v31;
  v18[1] = v32;
  v18[2] = v33;
  v19 = *v34;
  v20 = *&v34[8];
  sub_25F48B48C(&v31, v17);
  sub_25F48B48C(&v27, v17);
  sub_25F48B48C(&v27, v17);
  sub_25F48B48C(&v31, v17);
  v12 = _s19PreviewsMessagingOS15PreviewMetadataV2eeoiySbAC_ACtFZ_0(&v21, v18);
  sub_25F3F21F4(v35, &qword_27FD6FCD8, &qword_25F4B29A0);
  sub_25F48B4C4(&v31);
  sub_25F48B4C4(&v27);
  return v12;
}

unint64_t sub_25F488420()
{
  result = qword_27FD6F840;
  if (!qword_27FD6F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F840);
  }

  return result;
}

unint64_t sub_25F488474()
{
  result = qword_27FD6F848;
  if (!qword_27FD6F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F848);
  }

  return result;
}

unint64_t sub_25F4884C8()
{
  result = qword_27FD6F858;
  if (!qword_27FD6F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F858);
  }

  return result;
}

unint64_t sub_25F48851C()
{
  result = qword_27FD6F880;
  if (!qword_27FD6F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F880);
  }

  return result;
}

unint64_t sub_25F488570()
{
  result = qword_27FD6F888;
  if (!qword_27FD6F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F888);
  }

  return result;
}

unint64_t sub_25F4885C4()
{
  result = qword_27FD6F890;
  if (!qword_27FD6F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F890);
  }

  return result;
}

unint64_t sub_25F488620()
{
  result = qword_27FD6F8B8;
  if (!qword_27FD6F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8B8);
  }

  return result;
}

unint64_t sub_25F48867C()
{
  result = qword_27FD6F8C0;
  if (!qword_27FD6F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8C0);
  }

  return result;
}

unint64_t sub_25F4886D0()
{
  result = qword_27FD6F8C8;
  if (!qword_27FD6F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8C8);
  }

  return result;
}

unint64_t sub_25F488724()
{
  result = qword_27FD6F8D0;
  if (!qword_27FD6F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8D0);
  }

  return result;
}

BOOL _s19PreviewsMessagingOS18PreviewDescriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v32 = *(a1 + 64);
  *(&v32 + 1) = *(a1 + 56);
  v6 = *(a1 + 72);
  v30 = *(a1 + 73);
  v28 = *(a1 + 74);
  v26 = *(a1 + 75);
  v24 = *(a1 + 76);
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  *&v31 = *(a2 + 64);
  *(&v31 + 1) = *(a2 + 56);
  v11 = *(a2 + 72);
  v29 = *(a2 + 73);
  v27 = *(a2 + 74);
  v25 = *(a2 + 75);
  v23 = *(a2 + 76);
  v19 = *(a2 + 80);
  v22 = *(a2 + 88);
  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (v2 != v7 || v3 != v8) && (sub_25F4A3270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (sub_25F4A3270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v32 == 0)
    {
      if (!v11 || v31 != 0)
      {
        return 0;
      }
    }

    else if (!v11 || v31 == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v11 & 1) != 0 || *(&v32 + 1) != *(&v31 + 1) || *&v32 != *&v31)
    {
      return result;
    }
  }

  v13 = 0xEB000000006E6F69;
  v14 = 0x746163696C707061;
  if (v30)
  {
    v15 = v29;
    if (v30 == 1)
    {
      v17 = 0xE600000000000000;
      v16 = 0x746567646977;
    }

    else
    {
      v16 = 0x6163696C706D6F63;
      v17 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    v16 = 0x746163696C707061;
    v17 = 0xEB000000006E6F69;
    v15 = v29;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      v13 = 0xE600000000000000;
      v14 = 0x746567646977;
    }

    else
    {
      v14 = 0x6163696C706D6F63;
      v13 = 0xEC0000006E6F6974;
    }
  }

  if (v16 == v14 && v17 == v13)
  {

    result = 0;
    if (v28 != v27)
    {
      return result;
    }

    goto LABEL_46;
  }

  v18 = sub_25F4A3270();

  result = 0;
  if ((v18 & 1) != 0 && ((v28 ^ v27) & 1) == 0)
  {
LABEL_46:
    if ((v26 ^ v25))
    {
      return result;
    }

    if ((sub_25F46F8DC(v24, v23) & 1) == 0)
    {
      return 0;
    }

    if (v21)
    {
      return v22 && (v20 == v19 && v21 == v22 || (sub_25F4A3270() & 1) != 0);
    }

    if (!v22)
    {

      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_25F488AE0()
{
  result = qword_27FD6F8D8;
  if (!qword_27FD6F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8D8);
  }

  return result;
}

unint64_t sub_25F488B38()
{
  result = qword_27FD6F8E0;
  if (!qword_27FD6F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8E0);
  }

  return result;
}

unint64_t sub_25F488B90()
{
  result = qword_27FD6F8E8;
  if (!qword_27FD6F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8E8);
  }

  return result;
}

unint64_t sub_25F488BE8()
{
  result = qword_27FD6F8F0;
  if (!qword_27FD6F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8F0);
  }

  return result;
}

unint64_t sub_25F488C40()
{
  result = qword_27FD6F8F8;
  if (!qword_27FD6F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F8F8);
  }

  return result;
}

unint64_t sub_25F488C98()
{
  result = qword_27FD6F900;
  if (!qword_27FD6F900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F900);
  }

  return result;
}

unint64_t sub_25F488CF0()
{
  result = qword_27FD6F908;
  if (!qword_27FD6F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F908);
  }

  return result;
}

unint64_t sub_25F488D48()
{
  result = qword_27FD6F910;
  if (!qword_27FD6F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F910);
  }

  return result;
}

unint64_t sub_25F488DA0()
{
  result = qword_27FD6F918;
  if (!qword_27FD6F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F918);
  }

  return result;
}

unint64_t sub_25F488DF8()
{
  result = qword_27FD6F920;
  if (!qword_27FD6F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F920);
  }

  return result;
}

unint64_t sub_25F488E50()
{
  result = qword_27FD6F928;
  if (!qword_27FD6F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6F928);
  }

  return result;
}

uint64_t sub_25F488EBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F488F04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F488F68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25F488FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS12HostIdentityO(uint64_t a1)
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

uint64_t sub_25F4890A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F4A25E0();
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25F48917C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F4A25E0();
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
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_25F489238()
{
  sub_25F4A25E0();
  if (v0 <= 0x3F)
  {
    sub_25F48931C(319, &qword_27FD6F940, type metadata accessor for CanvasControlDescription);
    if (v1 <= 0x3F)
    {
      sub_25F48931C(319, &qword_27FD6F948, type metadata accessor for PlistValueBox);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F48931C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25F4A2E20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25F489384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F4A25E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25F489458(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F4A25E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_25F489514()
{
  sub_25F489610();
  if (v0 <= 0x3F)
  {
    sub_25F4A25E0();
    if (v1 <= 0x3F)
    {
      sub_25F48931C(319, &qword_27FD6F940, type metadata accessor for CanvasControlDescription);
      if (v2 <= 0x3F)
      {
        sub_25F48931C(319, &qword_27FD6F948, type metadata accessor for PlistValueBox);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F489610()
{
  if (!qword_27FD6F960[0])
  {
    v0 = sub_25F4A3060();
    if (!v1)
    {
      atomic_store(v0, qword_27FD6F960);
    }
  }
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PreviewTraits(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 18))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewTraits(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewTraits.Layout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PreviewTraits.Layout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_25F48978C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F4897A8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}
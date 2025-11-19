double sub_1AF99CBAC@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF6E53A0(0, &qword_1EB6309E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C420;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000058;
  *(v2 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C420;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v2 + 48) = v6 | 0x8000000000000000;
  sub_1AF6E53A0(0, &unk_1EB630980);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C680;
  sub_1AF99D3F4(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  v10 = v9;
  v22 = v9;
  v21[0] = 0;
  sub_1AF975674(v21, (v8 + 32));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
  v22 = MEMORY[0x1E69E6448];
  LODWORD(v21[0]) = 0;
  sub_1AF975674(v21, (v8 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
  v22 = v10;
  __asm { FMOV            V0.2S, #1.0 }

  v21[0] = _D0;
  sub_1AF975674(v21, (v8 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = 3;
  v19 = swift_allocObject();
  *&result = 3;
  *(v19 + 16) = xmmword_1AFE4C430;
  *(v18 + 24) = v19 | 0x2000000000000000;
  *(v17 + 16) = v18 | 0x2000000000000000;
  *(v16 + 32) = v17 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v16;
  a1[2] = &unk_1F24F18B8;
  a1[3] = &unk_1F24F18E8;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF99CE90(uint64_t a1, __n128 a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v3 + 24) = v4 | 0x2000000000000000;
  sub_1AF90D394(v3 | 0x2000000000000000);

  sub_1AF9A0BAC();

  v5 = sub_1AFDFDDB8();
  v7 = v6;

  sub_1AF701628();

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](v5, v7);

  MEMORY[0x1B2718AE0](0x78697274614DLL, 0xE600000000000000);
  return 5460564;
}

double sub_1AF99D01C@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF6E53A0(0, &qword_1EB6309E8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C430;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000028;
  *(v2 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C430;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v2 + 48) = v6 | 0x8000000000000000;
  sub_1AF6E53A0(0, &unk_1EB630980);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C680;
  sub_1AF99D3F4(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v10 = v9;
  v18 = v9;
  v17[0] = swift_allocObject();
  *(v17[0] + 16) = 0u;
  sub_1AF975674(v17, (v8 + 32));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
  type metadata accessor for simd_quatf(0);
  v18 = v11;
  v17[0] = swift_allocObject();
  *(v17[0] + 16) = 0u;
  sub_1AF975674(v17, (v8 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
  v18 = v10;
  v17[0] = swift_allocObject();
  *(v17[0] + 16) = xmmword_1AFE208C0;
  sub_1AF975674(v17, (v8 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE431C0;
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = 4;
  v15 = swift_allocObject();
  *&result = 4;
  *(v15 + 16) = xmmword_1AFE4C440;
  *(v14 + 24) = v15 | 0x2000000000000000;
  *(v13 + 16) = v14 | 0x2000000000000000;
  *(v12 + 32) = v13 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v12;
  a1[2] = &unk_1F24F1938;
  a1[3] = &unk_1F24F1968;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

unint64_t sub_1AF99D2FC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 3)
  {
    v2 = 0xD00000000000003ELL;
  }

  else
  {
    v2 = 0xD000000000000023;
  }

  if (v1 == 3)
  {
    v3 = "vfx_make_transform(%rotation, ";
  }

  else
  {
    v3 = "_TtC3VFX21TRSFloat4x4MatrixNode";
  }

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](v2, v3 | 0x8000000000000000);

  MEMORY[0x1B2718AE0](0x656C61637325202CLL, 0xE900000000000029);
  return 0xD00000000000001ELL;
}

void sub_1AF99D3F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF43A0C8();
    v7 = a3(a1, MEMORY[0x1E69E6448], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF99D45C(uint64_t a1, char a2, uint64_t a3)
{
  v8 = swift_allocObject();
  v10 = v8;
  *(v8 + 16) = 0;
  if (qword_1EB6325F0 != -1)
  {
    v8 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v8, v9);
  v16[2] = a1;
  v17 = a2 & 1;
  v18 = a3;
  v19 = v10;
  sub_1AF3FB9C8(sub_1AF9A0D04, v16, v11, v12, v13, MEMORY[0x1E69E7CC0]);
  if (!v4)
  {
    v14 = sub_1AF449CC8();

    *(v3 + 24) = v14;

    if (*(v10 + 16))
    {
      sub_1AF93E174();
    }
  }
}

uint64_t sub_1AF99D5E0@<X0>(void *a1@<X8>)
{
  sub_1AF9A102C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000038;
  *(v2 + 32) = result | 0x8000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = &unk_1F24EFA60;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

uint64_t sub_1AF99D840()
{
  sub_1AF9A102C(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE431C0;
  v2 = OBJC_IVAR____TtC3VFX15_RandomSeedNode_entity;
  v3 = swift_allocObject();
  *(v3 + 16) = *(v0 + v2);
  *(v1 + 32) = v3 | 0x6000000000000004;
  *(v1 + 40) = 3;
  *(v1 + 48) = xmmword_1AFE4C460;
  *(v1 + 64) = 1;
  return v1;
}

uint64_t sub_1AF99D94C()
{
  sub_1AF9A102C(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AFE431C0;
  v2 = OBJC_IVAR____TtC3VFX15_RandomSeedNode_entity;
  v3 = swift_allocObject();
  *(v3 + 16) = *(v0 + v2);
  *(v1 + 32) = v3 | 0x6000000000000000;
  *(v1 + 40) = 1;
  *(v1 + 48) = xmmword_1AFE4C460;
  *(v1 + 64) = 1;
  return v1;
}

uint64_t sub_1AF99DB50()
{

  v0 = sub_1AF9A898C();

  if (v0 - 3 < 2)
  {
    sub_1AF9A102C(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1AFE431C0;
    v2 = sub_1AFDFDE28();
    v6 = sub_1AF578CB0(v2, v3, v4, v5);

    if (v6)
    {
      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      v14 = *(v6 + 32);
      v9 = *(v6 + 48);
      v10 = *(v6 + 56);
      v11 = *(v6 + 58);

      LODWORD(v6) = v10 | (v11 << 16);
    }

    else
    {
      v8 = 0;
      v7 = 0;
      v9 = 0;
      v14 = 0u;
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v12 + 24) = v7;
    *(v12 + 32) = v14;
    *(v12 + 48) = v9;
    *(v12 + 56) = v6 & 1;
    *(v12 + 58) = WORD1(v6);
    *(v12 + 60) = 5;
    *(v1 + 32) = v12 | 0x5000000000000000;
    *(v1 + 40) = 1;
    *(v1 + 48) = xmmword_1AFE4C460;
    *(v1 + 64) = 1;
    return v1;
  }

  if (v0 != 5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF99DD8C@<X0>(void *a1@<X8>)
{
  (*(*v1 + 272))(v22);
  v3 = MEMORY[0x1E69E6F90];
  sub_1AF9A102C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C680;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000038;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000020;
  *(v4 + 40) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000038;
  *(v4 + 48) = v7 | 0x8000000000000000;
  sub_1AF9A102C(0, &unk_1EB630980, &type metadata for AnyValue, v3);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 64) = MEMORY[0x1E69E6530];
  *(v8 + 16) = xmmword_1AFE4C680;
  *(v8 + 32) = xmmword_1AFE87F70;
  v21[3] = &type metadata for RandomMode;
  LOBYTE(v21[0]) = 0;
  sub_1AF975674(v21, (v8 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
  *(v8 + 144) = v9;
  *(v8 + 112) = xmmword_1AFE87170;
  v21[0] = v4;

  sub_1AF48F7D8(v10);
  v19 = v21[0];
  v21[0] = MEMORY[0x1E69E7CC0];

  sub_1AF48F7D8(v11);
  v18 = v21[0];
  v21[0] = &unk_1F24EDB30;

  sub_1AF48F7B0(v12);
  v17 = v21[0];
  v21[0] = v8;

  sub_1AF48F6E4(v13);
  v14 = v21[0];
  v20 = MEMORY[0x1E69E7CC0];

  sub_1AF48F7B0(v15);

  v21[0] = v22[2];
  sub_1AF9A0DEC(v21, &qword_1EB638968, &type metadata for TypeConstraint);

  *a1 = v19;
  a1[1] = v18;
  a1[2] = &unk_1F24EDB80;
  a1[3] = v17;
  a1[4] = v20;
  a1[5] = v14;
  return result;
}

uint64_t sub_1AF99E0B8(unint64_t a1, unsigned __int8 a2)
{
  if (a1 == 0xC000000000000058)
  {
    v3 = 0x646E61725F786676;
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AFE4C420;
    v6 = sub_1AF90F890(v5 | 0x2000000000000000, a1);

    if ((v6 & 1) == 0)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1AFE4C430;
      v8 = sub_1AF90F890(v7 | 0x2000000000000000, a1);

      if ((v8 & 1) == 0)
      {
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1AFE4C440;
        v10 = sub_1AF90F890(v9 | 0x2000000000000000, a1);

        if ((v10 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    v3 = 0xD000000000000013;
  }

  v11 = a2;
  if (a2 == 2)
  {
    v12 = 0xD00000000000001FLL;
  }

  else
  {
    v12 = 0xD000000000000032;
  }

  if (v11 == 2)
  {
    v13 = "%0 + %node_id_hash + %2 + ";
  }

  else
  {
    v13 = "vfx_random01_float4";
  }

  v14 = sub_1AF9A898C();

  if (v14 <= 2u)
  {
    if (!v14)
    {

      v15 = 0xE300000000000000;
      v16 = 3155238;
      goto LABEL_24;
    }

    if (v14 != 1)
    {

      v15 = 0x80000001AFF40C30;
      v16 = 0xD000000000000017;
      goto LABEL_24;
    }

    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](v12, v13 | 0x8000000000000000);

LABEL_19:
    v16 = 0xD00000000000001ALL;
    v15 = 0x80000001AFF40C50;
LABEL_24:
    MEMORY[0x1B2718AE0](40, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v16, v15);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    return v3;
  }

  if (v14 == 3)
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](v12, v13 | 0x8000000000000000);

    MEMORY[0x1B2718AE0](0x6172617025202B20, 0xEA0000000000306DLL);
    goto LABEL_19;
  }

  if (v14 == 4)
  {

    v15 = 0x80000001AFF40C00;
    v16 = 0xD000000000000021;
    goto LABEL_24;
  }

LABEL_25:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF99E56C(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF398();
  if (!v2)
  {
    sub_1AF441150(v5, v5[3]);
    sub_1AF974884();
    sub_1AFDFEE88();
    v4 = *(v1 + OBJC_IVAR____TtC3VFX12_RandomTNode_type);
    *(v1 + OBJC_IVAR____TtC3VFX12_RandomTNode_type) = v5[6];
    sub_1AF445BE4(v4);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5);
  }

  return result;
}

uint64_t sub_1AF99E6E8(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  v5 = *(v1 + OBJC_IVAR____TtC3VFX12_RandomTNode_type);
  sub_1AF448018(v3, v4);
  sub_1AF9748D8();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v3);
}

uint64_t sub_1AF99E7B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX12_RandomTNode_type);
  sub_1AF442064(v1);
  sub_1AF90D394(v1);
  sub_1AF445BE4(v1);

  sub_1AF9A0BAC();

  v2 = sub_1AFDFDDB8();
  v4 = v3;

  sub_1AF701628();

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](v2, v4);

  MEMORY[0x1B2718AE0](0x312E2E2E3020, 0xE600000000000000);
  return 0x6D6F646E6152;
}

uint64_t sub_1AF99E91C(unsigned __int8 *a1)
{
  v3 = *(*(v1 + 32) + 32);
  sub_1AF448650(*(v1 + 24));
  sub_1AF442064(v3);

  v4 = sub_1AF99E0B8(v3, *a1);
  sub_1AF445BE4(v3);
  return v4;
}

uint64_t sub_1AF99E9CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX12_RandomTNode_type);
  sub_1AF442064(v1);
  sub_1AF90D394(v1);
  sub_1AF445BE4(v1);

  sub_1AF9A0BAC();

  v2 = sub_1AFDFDDB8();
  v4 = v3;

  sub_1AF701628();

  sub_1AF725990();
  sub_1AFDFD0A8();

  MEMORY[0x1B2718AE0](v2, v4);

  return 0x6E556D6F646E6152;
}

unint64_t sub_1AF99EB24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AF9A102C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v6 = swift_allocObject();
  v7 = *(v2 + OBJC_IVAR____TtC3VFX12_RandomTNode_type);
  *(v6 + 16) = v7;
  *(v5 + 32) = v6 | 0x8000000000000000;
  result = sub_1AF442064(v7);
  v9 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v5;
  a2[2] = a1;
  a2[3] = v9;
  a2[4] = v9;
  a2[5] = v9;
  return result;
}

uint64_t sub_1AF99EBE0(unsigned __int8 *a1)
{
  v3 = *(*(v1 + 32) + 32);
  sub_1AF448650(*(v1 + 24));
  sub_1AF442064(v3);

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C420;
  sub_1AF442064(v3);
  v5 = sub_1AF90F890(v4 | 0x2000000000000000, v3);

  sub_1AF445BE4(v3);
  if (v5)
  {
    v6 = "vfx_float2_half_one";
LABEL_7:
    v11 = v6 - 32;
    sub_1AFDFE218();

    v12 = sub_1AF99E0B8(v3, *a1);
    MEMORY[0x1B2718AE0](v12);

    MEMORY[0x1B2718AE0](2108704, 0xE300000000000000);
    MEMORY[0x1B2718AE0](0xD000000000000013, v11 | 0x8000000000000000);

    MEMORY[0x1B2718AE0](2697512, 0xE300000000000000);
    sub_1AF445BE4(v3);
    return 0xD000000000000015;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C430;
  sub_1AF442064(v3);
  v8 = sub_1AF90F890(v7 | 0x2000000000000000, v3);

  sub_1AF445BE4(v3);
  if (v8)
  {
    v6 = "vfx_float3_half_one";
    goto LABEL_7;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C440;
  sub_1AF442064(v3);
  v10 = sub_1AF90F890(v9 | 0x2000000000000000, v3);

  sub_1AF445BE4(v3);
  if (v10)
  {
    v6 = "vfx_float4_half_one";
    goto LABEL_7;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF99EE88()
{
  v1 = 0xD000000000000010;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX12_RandomTNode_type);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C420;
  sub_1AF442064(v2);
  sub_1AF442064(v2);
  v4 = sub_1AF90F890(v3 | 0x2000000000000000, v2);

  sub_1AF445BE4(v2);
  if (v4)
  {
    v1 = 0xD000000000000012;
LABEL_4:
    sub_1AF445BE4(v2);
    return v1;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE85120;
  sub_1AF442064(v2);
  v6 = sub_1AF90F890(v5 | 0x2000000000000000, v2);

  sub_1AF445BE4(v2);
  if (v6)
  {
    goto LABEL_4;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF99EFDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = MEMORY[0x1E69E6F90];
  sub_1AF9A102C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  v6 = *(v1 + OBJC_IVAR____TtC3VFX12_RandomTNode_type);
  *(v5 + 16) = v6;
  *(v4 + 32) = v5 | 0x8000000000000000;
  sub_1AF9A102C(0, &unk_1EB630980, &type metadata for AnyValue, v3);
  v7 = swift_allocObject();
  *(v7 + 64) = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = xmmword_1AFE87170;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  v9 = swift_allocObject();
  sub_1AF442064(v6);
  sub_1AF442064(v6);
  sub_1AF90DCF4(v6);
  v11 = v10;
  result = sub_1AF445BE4(v6);
  *(v9 + 16) = v11;
  *(v8 + 32) = v9 | 0x8000000000000000;
  *a1 = v4;
  a1[1] = v8;
  a1[2] = &unk_1F24ED9E0;
  a1[3] = &unk_1F24EDA10;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v7;
  return result;
}

unint64_t sub_1AF99F16C(unsigned __int8 *a1)
{
  sub_1AFDFE218();

  v2 = sub_1AF99E0B8(0xC000000000000058, *a1);
  MEMORY[0x1B2718AE0](v2);

  MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF40AC0);
  return 0xD000000000000011;
}

char *sub_1AF99F220(void *a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + OBJC_IVAR____TtC3VFX12_RandomTNode_type);
  *(v2 + OBJC_IVAR____TtC3VFX12_RandomTNode_type) = v3;
  sub_1AF442064(v3);
  v4 = sub_1AF96FD00(a1);
  (*(*v4 + 320))();
  return v4;
}

uint64_t sub_1AF99F2B0()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF445BE4(*(v0 + OBJC_IVAR____TtC3VFX12_RandomTNode_type));

  return swift_deallocClassInstance();
}

double sub_1AF99F3B4@<D0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9A102C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000058;
  *(v3 + 32) = v4 | 0x8000000000000000;
  sub_1AF9A102C(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v10[3] = MEMORY[0x1E69E6448];
  LODWORD(v10[0]) = 1065353216;
  sub_1AF975674(v10, (v5 + 32));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *&result = 3;
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v6 + 32) = v7 | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v6;
  a1[2] = &unk_1F24EDAD0;
  a1[3] = &unk_1F24EDB00;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v5;
  return result;
}

uint64_t sub_1AF99F54C(_BYTE *a1)
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF40A30);
  LOBYTE(a1) = *a1;
  v2 = sub_1AF99E0B8(0xC000000000000058, a1);
  MEMORY[0x1B2718AE0](v2);

  MEMORY[0x1B2718AE0](0xD000000000000025, 0x80000001AFF40A50);
  v3 = sub_1AF99E0B8(0xC000000000000058, a1);
  MEMORY[0x1B2718AE0](v3);

  MEMORY[0x1B2718AE0](0x6964617225202A20, 0xEB00000000297375);
  return 0;
}

__n128 sub_1AF99F6A8@<Q0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9A102C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v3 + 32) = v4 | 0x8000000000000000;
  sub_1AF9A102C(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  sub_1AF99B394();
  v12[3] = v7;
  v12[0] = swift_allocObject();
  *(v12[0] + 16) = xmmword_1AFE208C0;
  sub_1AF975674(v12, (v6 + 32));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  result = xmmword_1AFE4C430;
  *(v10 + 16) = xmmword_1AFE4C430;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v8 + 32) = v9 | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v8;
  a1[2] = &unk_1F24EDA70;
  a1[3] = &unk_1F24EDAA0;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v6;
  return result;
}

unint64_t sub_1AF99F884(unsigned __int8 *a1)
{
  sub_1AFDFE218();

  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C430;
  v3 = sub_1AF99E0B8(v2 | 0x2000000000000000, *a1);
  v5 = v4;

  MEMORY[0x1B2718AE0](v3, v5);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF409F0);
  return 0xD000000000000010;
}

uint64_t sub_1AF99FA54@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF9A102C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C430;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v5 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v5;
  a1[2] = &unk_1F24F12B8;
  a1[3] = &unk_1F24F12E8;
  v7 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v7;
  return result;
}

double sub_1AF99FBEC@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF9A102C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C430;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C430;
  *(v5 + 16) = v6 | 0x2000000000000000;
  *(v2 + 40) = v5 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *&result = 2;
  *(v9 + 16) = xmmword_1AFE4C420;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v7 + 32) = v8 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v7;
  a1[2] = &unk_1F24F16A8;
  a1[3] = &unk_1F24F16D8;
  v11 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v11;
  return result;
}

__n128 sub_1AF99FDE4@<Q0>(uint64_t *a1@<X8>)
{
  sub_1AF9A102C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C430;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C430;
  *(v5 + 16) = v6 | 0x2000000000000000;
  *(v2 + 40) = v5 | 0x8000000000000000;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v2 + 48) = v7 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  result = xmmword_1AFE4C430;
  *(v11 + 16) = xmmword_1AFE4C430;
  *(v10 + 16) = v11 | 0x2000000000000000;
  *(v9 + 32) = v10 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v9;
  a1[2] = &unk_1F24F1718;
  a1[3] = &unk_1F24F1748;
  v13 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v13;
  return result;
}

double sub_1AF9A0014@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF9A102C(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C6B0;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C430;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C430;
  *(v5 + 16) = v6 | 0x2000000000000000;
  *(v2 + 40) = v5 | 0x8000000000000000;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C430;
  *(v7 + 16) = v8 | 0x2000000000000000;
  *(v2 + 48) = v7 | 0x8000000000000000;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C430;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v2 + 56) = v9 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *&result = 4;
  *(v13 + 16) = xmmword_1AFE4C440;
  *(v12 + 16) = v13 | 0x2000000000000000;
  *(v11 + 32) = v12 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v11;
  a1[2] = &unk_1F24F1798;
  a1[3] = &unk_1F24F17C8;
  v15 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v15;
  return result;
}

uint64_t sub_1AF9A0268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v84 = a6;
  v79 = a4;
  v80 = a5;
  v85 = sub_1AFDFC318();
  v9 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v10);
  v82 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF483618();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v81 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v83 = &v78 - v17;
  v18 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v78 - v24);
  v26 = *(a1 + 8);
  type metadata accessor for RandomNode(0);
  if (swift_dynamicCastClass())
  {
    if (a3)
    {
      sub_1AF9371BC();
      swift_allocError();
      v28 = v27;
      *(v25 + v18[8]) = 0;
      *v25 = v26;
      v29 = v18[5];
      v30 = v85;
      (*(v9 + 16))(v25 + v29, v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v85);
      (*(v9 + 56))(v25 + v29, 0, 1, v30);
      v31 = v25 + v18[6];
      *v31 = 2;
      v31[8] = -64;
      v32 = (v25 + v18[7]);
      *v32 = 0xD000000000000011;
      v32[1] = 0x80000001AFF40D10;
      sub_1AF9A0D28(v25, v28);
      swift_willThrow();
    }

    v34 = v85;
    if (*(*(v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 48))
    {
      v78 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v35 = sub_1AF9A898C();

      if (v35 - 1 < 4)
      {
        type metadata accessor for ConstRandomSeedNode(0);
LABEL_9:
        v36 = swift_allocObject();
        *(v36 + OBJC_IVAR____TtC3VFX15_RandomSeedNode_entity) = a2;
        v37 = MEMORY[0x1E69E7CC0];
        v36[2] = MEMORY[0x1E69E7CC0];
        v36[3] = 0;
        v36[4] = 0;
        sub_1AFDFC308();
        (*(v9 + 56))(v83, 1, 1, v34);
        type metadata accessor for AuthoringNode();
        v38 = swift_allocObject();
        v39 = v38 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
        *v39 = 0;
        *(v39 + 8) = 0;
        *(v39 + 16) = 1;
        v40 = v38 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
        *v40 = 0;
        *(v40 + 8) = 0;
        *(v40 + 16) = 1;
        v41 = v38 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
        *v41 = 0;
        *(v41 + 8) = 1;
        v42 = (v38 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
        *v42 = 0;
        v42[1] = 0;
        *(v38 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v36;
        v43 = *(*v36 + 152);
        v44 = swift_retain_n();
        v80 = v36;
        v43(v87, v44);
        v45 = v87[0];
        v93 = v87[0];
        v92 = v87[1];
        sub_1AF9A0DEC(&v92, &qword_1EB638968, &type metadata for TypeConstraint);
        v91 = v87[2];
        sub_1AF9A0DEC(&v91, &qword_1EB638968, &type metadata for TypeConstraint);
        v90 = v87[3];
        sub_1AF9A0D8C(&v90, sub_1AF445C2C);
        v89 = v87[4];
        sub_1AF9A0D8C(&v89, sub_1AF445C2C);
        v88 = v87[5];
        sub_1AF9A0DEC(&v88, &qword_1EB638978, &type metadata for AnyValue);
        v46 = *(v45 + 16);
        sub_1AF9A0DEC(&v93, &qword_1EB638968, &type metadata for TypeConstraint);
        if (v46)
        {
          v86 = v37;
          sub_1AFC05D04(0, v46, 0);
          v37 = v86;
          v47 = *(v86 + 16);
          v48 = 16 * v47 + 32;
          do
          {
            v86 = v37;
            v49 = *(v37 + 24);
            v50 = v47 + 1;
            if (v47 >= v49 >> 1)
            {
              sub_1AFC05D04(v49 > 1, v47 + 1, 1);
              v37 = v86;
            }

            *(v37 + 16) = v50;
            v51 = (v37 + v48);
            *v51 = 0;
            v51[1] = 0;
            v48 += 16;
            v47 = v50;
            --v46;
          }

          while (v46);
          v34 = v85;
        }

        *(v38 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v37;
        v65 = v83;
        v66 = v81;
        sub_1AF9A0E5C(v83, v81, sub_1AF483618);
        v67 = *(v9 + 48);
        if (v67(v66, 1, v34) == 1)
        {
          v68 = v82;
          sub_1AFDFC308();
          sub_1AF9A0D8C(v65, sub_1AF483618);
          v69 = v67(v66, 1, v34);
          v70 = v78;
          if (v69 != 1)
          {
            sub_1AF9A0D8C(v66, sub_1AF483618);
          }
        }

        else
        {
          sub_1AF9A0D8C(v65, sub_1AF483618);
          v68 = v82;
          (*(v9 + 32))(v82, v66, v34);
          v70 = v78;
        }

        (*(v9 + 32))(v38 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v68, v34);
        (*(v9 + 24))(v80 + OBJC_IVAR____TtC3VFX4Node_authoringID, v38 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v34);

        v71 = v38 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
        *v71 = 0;
        *(v71 + 8) = 0;
        *(v71 + 16) = 1;
        v72 = v38 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
        *v72 = 0;
        *(v72 + 8) = 0;
        *(v72 + 16) = 1;
        v73 = v38 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
        *v73 = 0;
        *(v73 + 8) = 1;
        v74 = (v38 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
        *v74 = 0;
        v74[1] = 0;

        v75 = *(v26 + v70);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v26 + v70) = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          *(v26 + v70) = sub_1AFC0DA6C(v75);
        }

        v77 = *(v26 + v70);
        *(v77 + 32) = v38;
        *(v77 + 40) = 0;

        goto LABEL_27;
      }

      if (!v35)
      {
        type metadata accessor for MutatingRandomSeedNode(0);
        goto LABEL_9;
      }
    }

    *(v21 + v18[8]) = 0;
    *v21 = v26;
    v52 = v18[5];
    (*(v9 + 16))(v21 + v52, v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v34);
    (*(v9 + 56))(v21 + v52, 0, 1, v34);
    v53 = v21 + v18[6];
    *v53 = 2;
    v53[8] = -64;
    v54 = (v21 + v18[7]);
    *v54 = 0xD000000000000013;
    v54[1] = 0x80000001AFF40D30;
    sub_1AF9371BC();
    v55 = swift_allocError();
    sub_1AF9A0E5C(v21, v56, type metadata accessor for GraphError);
    v57 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v58 = v79;
    v59 = *(v79 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

    v60 = swift_isUniquelyReferenced_nonNull_native();
    *(v58 + v57) = v59;
    if ((v60 & 1) == 0)
    {
      v59 = sub_1AF420408(0, v59[2] + 1, 1, v59);
      *(v58 + v57) = v59;
    }

    v61 = v80;
    v63 = v59[2];
    v62 = v59[3];
    if (v63 >= v62 >> 1)
    {
      *(v58 + v57) = sub_1AF420408(v62 > 1, v63 + 1, 1, v59);
    }

    sub_1AF9A0D8C(v21, type metadata accessor for GraphError);
    v64 = *(v58 + v57);
    *(v64 + 16) = v63 + 1;
    *(v64 + 8 * v63 + 32) = v55;
    *(v58 + v57) = v64;
    *(v61 + 16) = 1;
  }

LABEL_27:
  *v84 = v26;
}

uint64_t sub_1AF9A0BAC()
{
  sub_1AFDFD078();

  return sub_1AFDFD1F8();
}

uint64_t sub_1AF9A0C40()
{
  v0 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v0);

  MEMORY[0x1B2718AE0](0x6D61726170253DLL, 0xE700000000000000);
  v1 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v1);

  return 29219;
}

uint64_t sub_1AF9A0D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF9A0D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF9A0DEC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF9A102C(0, a2, a3, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF9A0E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AF9A0ED4(uint64_t a1)
{
  *(a1 + 8) = sub_1AF9A0F04();
  result = sub_1AF9A0F58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9A0F04()
{
  result = qword_1EB640EC8;
  if (!qword_1EB640EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640EC8);
  }

  return result;
}

unint64_t sub_1AF9A0F58()
{
  result = qword_1EB640ED0;
  if (!qword_1EB640ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640ED0);
  }

  return result;
}

unint64_t sub_1AF9A0FB0()
{
  result = qword_1EB640ED8;
  if (!qword_1EB640ED8)
  {
    sub_1AF9A102C(255, &qword_1EB640EE0, &type metadata for RandomMode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640ED8);
  }

  return result;
}

void sub_1AF9A102C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF9A1080()
{
  result = qword_1EB640EE8;
  if (!qword_1EB640EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640EE8);
  }

  return result;
}

unint64_t sub_1AF9A10D4()
{
  result = qword_1EB640EF0;
  if (!qword_1EB640EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640EF0);
  }

  return result;
}

double sub_1AF9A113C()
{

  v0 = sub_1AF9A8814();
  v2 = v1;
  v4 = v3;

  v5.i64[0] = v0;
  v5.i64[1] = v2;
  if (v4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 0;
  }

  *&result = vbicq_s8(v5, vdupq_n_s32(v6)).u64[0];
  return result;
}

uint64_t sub_1AF9A11A0(void *a1, void *a2)
{
  v4 = MEMORY[0x1E69E6370];
  if (swift_conformsToProtocol2())
  {
    type metadata accessor for EnumConstantNode(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      sub_1AF441194(v5 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v19);
      sub_1AF4498F4(0, &qword_1EB641060);
      goto LABEL_19;
    }
  }

  if (sub_1AF0D4478(0, &qword_1ED72F7F0) == v4)
  {
    type metadata accessor for WorldObjectNode(0);
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      sub_1AF44596C(v7 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v19);
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = *(&v19[0] + 1);

      sub_1AF4459C8(v19);
      if (Strong)
      {
        if (a1 == 1)
        {
        }

        else
        {
          v16 = sub_1AF938A24(Strong, v9, a1, a2);
          v18 = v17;

          if (v16)
          {
            swift_unknownObjectRelease();
            Strong = v16;
            v9 = v18;
          }
        }

        *&v19[0] = Strong;
        *(&v19[0] + 1) = v9;
        sub_1AF4498F4(0, &qword_1EB641058);
        goto LABEL_19;
      }

LABEL_22:

      return 2;
    }
  }

  if (sub_1AF0D4478(0, &qword_1ED72E0B0) != v4 || (type metadata accessor for WorldAssetNode(0), (v10 = swift_dynamicCastClass()) == 0))
  {
    type metadata accessor for ConstantNode(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      sub_1AF0D5A54(v6 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v19);
    }

    else
    {
      memset(v19, 0, sizeof(v19));
    }

    sub_1AF9AAB20(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    goto LABEL_19;
  }

  sub_1AF44596C(v10 + OBJC_IVAR____TtC3VFX14WorldAssetNode_reference, v19);
  v11 = swift_unknownObjectWeakLoadStrong();
  v12 = *(&v19[0] + 1);

  sub_1AF4459C8(v19);
  if (!v11)
  {
    goto LABEL_22;
  }

  if (a1 == 1 || !sub_1AF938A24(v11, v12, a1, a2))
  {
    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    swift_unknownObjectRetain();
  }

  v15 = [v14 asset];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *&v19[0] = v15;
  sub_1AF9A8748();
LABEL_19:
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  return v20;
}

uint64_t sub_1AF9A1504(void *a1, void *a2)
{
  v4 = sub_1AF0D4478(0, &qword_1ED72E0B0);
  if (swift_conformsToProtocol2())
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (type metadata accessor for EnumConstantNode(0), (v6 = swift_dynamicCastClass()) == 0))
  {
    type metadata accessor for WorldAssetNode(0);
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      sub_1AF44596C(v7 + OBJC_IVAR____TtC3VFX14WorldAssetNode_reference, v15);
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = *(&v15[0] + 1);

      sub_1AF4459C8(v15);
      if (Strong)
      {
        if (a1 == 1 || !sub_1AF938A24(Strong, v9, a1, a2))
        {
          swift_unknownObjectRetain();
        }

        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          swift_unknownObjectRetain();
        }

        v12 = [v11 asset];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          return v13;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return 0;
    }

    type metadata accessor for ConstantNode(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      sub_1AF0D5A54(v10 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v15);
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    sub_1AF9AAB20(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  }

  else
  {
    sub_1AF441194(v6 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v15);
    sub_1AF4498F4(0, &qword_1EB641060);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v16;
}

uint64_t sub_1AF9A178C(void *a1, void *a2)
{
  type metadata accessor for WorldObjectNode(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    sub_1AF44596C(v4 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v17);
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(&v17[0] + 1);

    sub_1AF4459C8(v17);
    if (Strong)
    {
      if (a1 == 1 || !sub_1AF938A24(Strong, v6, a1, a2))
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v11 = sub_1AF9A30B4();

        swift_unknownObjectRelease();
      }

      else
      {

        v11 = 0;
      }

      v12 = v10 == 0;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *&v17[0] = v11;
      goto LABEL_29;
    }

LABEL_13:

    return 0;
  }

  type metadata accessor for WorldAssetNode(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    type metadata accessor for ConstantNode(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      sub_1AF0D5A54(v13 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v17);
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    sub_1AF9AAB20(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    goto LABEL_33;
  }

  if ((*(v7 + OBJC_IVAR____TtC3VFX14WorldAssetNode_entity + 8) & 1) == 0 && *(v7 + OBJC_IVAR____TtC3VFX14WorldAssetNode_entity) != 0xFFFFFFFFLL)
  {
    return *(v7 + OBJC_IVAR____TtC3VFX14WorldAssetNode_entity);
  }

  sub_1AF44596C(v7 + OBJC_IVAR____TtC3VFX14WorldAssetNode_reference, v17);
  v8 = swift_unknownObjectWeakLoadStrong();
  v9 = *(&v17[0] + 1);

  sub_1AF4459C8(v17);
  if (!v8)
  {
    goto LABEL_13;
  }

  if (a1 == 1 || !sub_1AF938A24(v8, v9, a1, a2))
  {
    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14 || ![v14 asset])
  {
    swift_unknownObjectRelease();

LABEL_27:
    v15 = 0;
    v12 = 1;
    goto LABEL_28;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v15 = sub_1AF9A30B4();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v12 = 0;
LABEL_28:
  swift_unknownObjectRelease();
  *&v17[0] = v15;
LABEL_29:
  BYTE8(v17[0]) = v12;
  sub_1AF9AAB20(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
LABEL_33:
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v18;
}

uint64_t sub_1AF9A1B58(void *a1, void *a2)
{
  v4 = MEMORY[0x1E69E6158];
  if (swift_conformsToProtocol2())
  {
    type metadata accessor for EnumConstantNode(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      sub_1AF441194(v5 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v19);
      sub_1AF4498F4(0, &qword_1EB641060);
      goto LABEL_19;
    }
  }

  if (sub_1AF0D4478(0, &qword_1ED72F7F0) == v4)
  {
    type metadata accessor for WorldObjectNode(0);
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      sub_1AF44596C(v7 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v19);
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = *(&v19[0] + 1);

      sub_1AF4459C8(v19);
      if (Strong)
      {
        if (a1 == 1)
        {
        }

        else
        {
          v16 = sub_1AF938A24(Strong, v9, a1, a2);
          v18 = v17;

          if (v16)
          {
            swift_unknownObjectRelease();
            Strong = v16;
            v9 = v18;
          }
        }

        *&v19[0] = Strong;
        *(&v19[0] + 1) = v9;
        sub_1AF4498F4(0, &qword_1EB641058);
        goto LABEL_19;
      }

LABEL_22:

      goto LABEL_20;
    }
  }

  if (sub_1AF0D4478(0, &qword_1ED72E0B0) != v4 || (type metadata accessor for WorldAssetNode(0), (v10 = swift_dynamicCastClass()) == 0))
  {
    type metadata accessor for ConstantNode(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      sub_1AF0D5A54(v6 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v19);
    }

    else
    {
      memset(v19, 0, 32);
    }

    sub_1AF9AAB20(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    goto LABEL_19;
  }

  sub_1AF44596C(v10 + OBJC_IVAR____TtC3VFX14WorldAssetNode_reference, v19);
  v11 = swift_unknownObjectWeakLoadStrong();
  v12 = *(&v19[0] + 1);

  sub_1AF4459C8(v19);
  if (!v11)
  {
    goto LABEL_22;
  }

  if (a1 == 1 || !sub_1AF938A24(v11, v12, a1, a2))
  {
    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    swift_unknownObjectRetain();
  }

  v15 = [v14 asset];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *&v19[0] = v15;
  sub_1AF9A8748();
LABEL_19:
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v20 = 0;
    v21 = 0;
  }

  return v20;
}

unint64_t sub_1AF9A1EB8(void *a1, void *a2)
{
  v4 = MEMORY[0x1E69E6448];
  if (swift_conformsToProtocol2())
  {
    type metadata accessor for EnumConstantNode(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      sub_1AF441194(v5 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v21);
      sub_1AF4498F4(0, &qword_1EB641060);
      goto LABEL_19;
    }
  }

  if (sub_1AF0D4478(0, &qword_1ED72F7F0) == v4)
  {
    type metadata accessor for WorldObjectNode(0);
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      sub_1AF44596C(v7 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v21);
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = *(&v21[0] + 1);

      sub_1AF4459C8(v21);
      if (Strong)
      {
        if (a1 == 1)
        {
        }

        else
        {
          v18 = sub_1AF938A24(Strong, v9, a1, a2);
          v20 = v19;

          if (v18)
          {
            swift_unknownObjectRelease();
            Strong = v18;
            v9 = v20;
          }
        }

        *&v21[0] = Strong;
        *(&v21[0] + 1) = v9;
        sub_1AF4498F4(0, &qword_1EB641058);
        goto LABEL_19;
      }

LABEL_23:

      v22 = 0;
      v14 = 1;
      goto LABEL_22;
    }
  }

  if (sub_1AF0D4478(0, &qword_1ED72E0B0) == v4)
  {
    type metadata accessor for WorldAssetNode(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      sub_1AF44596C(v10 + OBJC_IVAR____TtC3VFX14WorldAssetNode_reference, v21);
      v11 = swift_unknownObjectWeakLoadStrong();
      v12 = *(&v21[0] + 1);

      sub_1AF4459C8(v21);
      if (v11)
      {
        if (a1 == 1 || !sub_1AF938A24(v11, v12, a1, a2))
        {
          swift_unknownObjectRetain();
        }

        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (v16)
        {
          swift_unknownObjectRetain();
        }

        v17 = [v16 asset];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *&v21[0] = v17;
        sub_1AF9A8748();
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  type metadata accessor for ConstantNode(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    sub_1AF0D5A54(v6 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v21);
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  sub_1AF9AAB20(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
LABEL_19:
  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    v22 = 0;
  }

  v14 = v13 ^ 1;
LABEL_22:
  LOBYTE(v21[0]) = v14;
  return v22 | (v14 << 32);
}

unint64_t sub_1AF9A2230(void *a1, void *a2)
{
  v4 = MEMORY[0x1E69E72F0];
  if (swift_conformsToProtocol2())
  {
    type metadata accessor for EnumConstantNode(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      sub_1AF441194(v5 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v21);
      sub_1AF4498F4(0, &qword_1EB641060);
      goto LABEL_19;
    }
  }

  if (sub_1AF0D4478(0, &qword_1ED72F7F0) == v4)
  {
    type metadata accessor for WorldObjectNode(0);
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      sub_1AF44596C(v7 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v21);
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = *(&v21[0] + 1);

      sub_1AF4459C8(v21);
      if (Strong)
      {
        if (a1 == 1)
        {
        }

        else
        {
          v18 = sub_1AF938A24(Strong, v9, a1, a2);
          v20 = v19;

          if (v18)
          {
            swift_unknownObjectRelease();
            Strong = v18;
            v9 = v20;
          }
        }

        *&v21[0] = Strong;
        *(&v21[0] + 1) = v9;
        sub_1AF4498F4(0, &qword_1EB641058);
        goto LABEL_19;
      }

LABEL_23:

      v22 = 0;
      v14 = 1;
      goto LABEL_22;
    }
  }

  if (sub_1AF0D4478(0, &qword_1ED72E0B0) == v4)
  {
    type metadata accessor for WorldAssetNode(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      sub_1AF44596C(v10 + OBJC_IVAR____TtC3VFX14WorldAssetNode_reference, v21);
      v11 = swift_unknownObjectWeakLoadStrong();
      v12 = *(&v21[0] + 1);

      sub_1AF4459C8(v21);
      if (v11)
      {
        if (a1 == 1 || !sub_1AF938A24(v11, v12, a1, a2))
        {
          swift_unknownObjectRetain();
        }

        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (v16)
        {
          swift_unknownObjectRetain();
        }

        v17 = [v16 asset];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *&v21[0] = v17;
        sub_1AF9A8748();
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  type metadata accessor for ConstantNode(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    sub_1AF0D5A54(v6 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v21);
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  sub_1AF9AAB20(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
LABEL_19:
  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    v22 = 0;
  }

  v14 = v13 ^ 1;
LABEL_22:
  LOBYTE(v21[0]) = v14;
  return v22 | (v14 << 32);
}

uint64_t sub_1AF9A25A8(void *a1, void *a2)
{
  v4 = sub_1AF0D4478(0, &qword_1ED72F7F0);
  if (swift_conformsToProtocol2())
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (type metadata accessor for EnumConstantNode(0), (v6 = swift_dynamicCastClass()) == 0))
  {
    type metadata accessor for WorldObjectNode(0);
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      sub_1AF44596C(v7 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v14);
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = *(&v14[0] + 1);

      sub_1AF4459C8(v14);
      if (Strong)
      {
        if (a1 == 1)
        {
        }

        else
        {
          v11 = sub_1AF938A24(Strong, v9, a1, a2);

          if (v11)
          {
            swift_unknownObjectRelease();
          }
        }

        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          return v12;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return 0;
    }

    type metadata accessor for ConstantNode(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      sub_1AF0D5A54(v10 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v14);
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    sub_1AF9AAB20(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  }

  else
  {
    sub_1AF441194(v6 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v14);
    sub_1AF4498F4(0, &qword_1EB641060);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v15;
}

unint64_t sub_1AF9A27E0(void *a1, void *a2)
{
  v4 = MEMORY[0x1E69E7668];
  if (swift_conformsToProtocol2())
  {
    type metadata accessor for EnumConstantNode(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      sub_1AF441194(v5 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v21);
      sub_1AF4498F4(0, &qword_1EB641060);
      goto LABEL_19;
    }
  }

  if (sub_1AF0D4478(0, &qword_1ED72F7F0) == v4)
  {
    type metadata accessor for WorldObjectNode(0);
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      sub_1AF44596C(v7 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v21);
      Strong = swift_unknownObjectWeakLoadStrong();
      v9 = *(&v21[0] + 1);

      sub_1AF4459C8(v21);
      if (Strong)
      {
        if (a1 == 1)
        {
        }

        else
        {
          v18 = sub_1AF938A24(Strong, v9, a1, a2);
          v20 = v19;

          if (v18)
          {
            swift_unknownObjectRelease();
            Strong = v18;
            v9 = v20;
          }
        }

        *&v21[0] = Strong;
        *(&v21[0] + 1) = v9;
        sub_1AF4498F4(0, &qword_1EB641058);
        goto LABEL_19;
      }

LABEL_23:

      v22 = 0;
      v14 = 1;
      goto LABEL_22;
    }
  }

  if (sub_1AF0D4478(0, &qword_1ED72E0B0) == v4)
  {
    type metadata accessor for WorldAssetNode(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      sub_1AF44596C(v10 + OBJC_IVAR____TtC3VFX14WorldAssetNode_reference, v21);
      v11 = swift_unknownObjectWeakLoadStrong();
      v12 = *(&v21[0] + 1);

      sub_1AF4459C8(v21);
      if (v11)
      {
        if (a1 == 1 || !sub_1AF938A24(v11, v12, a1, a2))
        {
          swift_unknownObjectRetain();
        }

        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (v16)
        {
          swift_unknownObjectRetain();
        }

        v17 = [v16 asset];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *&v21[0] = v17;
        sub_1AF9A8748();
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  type metadata accessor for ConstantNode(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    sub_1AF0D5A54(v6 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v21);
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  sub_1AF9AAB20(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
LABEL_19:
  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    v22 = 0;
  }

  v14 = v13 ^ 1;
LABEL_22:
  LOBYTE(v21[0]) = v14;
  return v22 | (v14 << 32);
}

uint64_t sub_1AF9A2B58()
{
  v1 = *(*(v0 + 24) + 40);
  sub_1AF448650(*(v0 + 24));
  sub_1AF442064(v1);

  v2 = sub_1AF90F890(v1, 0xC0000000000000C8);
  sub_1AF445BE4(v1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = *(*(v0 + 16) + 48);
  if (*v3 != _TtC3VFX21TextureDescriptorNode)
  {
    return 0;
  }

  result = *(v3 + OBJC_IVAR____TtC3VFX21TextureDescriptorNode__descriptor);
  if (!result)
  {

    sub_1AF9A6150();
  }

  return result;
}

unint64_t sub_1AF9A2C3C(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(*(*(v1 + 16) + 32) + OBJC_IVAR____TtC3VFX21TextureDescriptorNode__descriptor);

  if (!v3)
  {
    sub_1AF9A6150();
  }

  v15 = 0;
  RGContextTryResolveTextureDescriptor(a1, v3, &v15, &v16);
  if (v15 == 1)
  {
    v4 = v16;
    v5 = v17;
    v6 = v18;
    v7 = v19;
    v8 = v20;
    v9 = v21;
    v10 = v22;
    v11 = v23 | (v24 << 16);
    *&v14 = sub_1AF445CA8(&v16);
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    v24 = BYTE2(v11);
    v23 = v11;
    *&v13 = sub_1AF445CB0(&v16);
    v16 = v4;
    v17 = v5;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    v24 = BYTE2(v11);
    v23 = v11;
    sub_1AF478AC0(&v16);

    return __PAIR64__(v13, v14);
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF9A2DFC()
{
  v1 = *(*(v0 + 24) + 112);
  sub_1AF448650(*(v0 + 24));
  sub_1AF442064(v1);

  v2 = sub_1AF90F890(v1, 0xC0000000000000C8);
  sub_1AF445BE4(v1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = *(*(v0 + 16) + 192);
  if (*v3 != _TtC3VFX21TextureDescriptorNode)
  {
    return 0;
  }

  result = *(v3 + OBJC_IVAR____TtC3VFX21TextureDescriptorNode__descriptor);
  if (!result)
  {

    sub_1AF9A6150();
  }

  return result;
}

unint64_t sub_1AF9A2EE0()
{
  v1 = *(*(v0 + 16) + 40);

  v2 = sub_1AF3C567C(v1);
  if (v2 == 3)
  {

    return 0;
  }

  else
  {
    v4 = v2;
    sub_1AFDFE218();

    if (v4)
    {
      if (v4 == 1)
      {
        v5 = 0x6874706544;
      }

      else
      {
        v5 = 0x726566667542;
      }

      if (v4 == 1)
      {
        v6 = 0xE500000000000000;
      }

      else
      {
        v6 = 0xE600000000000000;
      }
    }

    else
    {
      v6 = 0xE500000000000000;
      v5 = 0x726F6C6F43;
    }

    MEMORY[0x1B2718AE0](v5, v6);

    return 0xD000000000000016;
  }
}

unint64_t sub_1AF9A2FEC()
{

  sub_1AF9A178C(1, 0);
  if (v0)
  {

    return 0;
  }

  else
  {
    v2 = sub_1AF9A9F5C();

    return v2;
  }
}

uint64_t sub_1AF9A3068()
{

  sub_1AF9A8AD0();
  v1 = v0;

  if (v1)
  {
    return v1;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

unint64_t sub_1AF9A30B4()
{
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    v2 = [v1 coreEntity];
    v3 = v2 & 0xFFFFFFFF00000000;
    v4 = -1;
    if (v2)
    {
      v4 = v2;
    }
  }

  else
  {
    v5 = [v0 behaviorGraph];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 entity];

      v3 = v7 & 0xFFFFFFFF00000000;
      v4 = -1;
      if (v7)
      {
        v4 = v7;
      }
    }

    else
    {
      v3 = 0;
      v4 = -1;
    }
  }

  return v3 | v4;
}

unint64_t sub_1AF9A3170()
{
  v1 = [v0 coreEntity];
  v2 = v1;
  if (!v1)
  {
    v2 = 0xFFFFFFFFLL;
  }

  return v2 | v1 & 0xFFFFFFFF00000000;
}

void *sub_1AF9A31AC()
{
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC3VFX21TextureDescriptorNode__descriptor) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  sub_1AFDFC308();
  return v0;
}

id sub_1AF9A3214(char *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_rendererInfo;
  *&v3[OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_rendererInfo] = 0;
  v5 = OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_texturePreviewsByNodeID;
  *&v3[v5] = sub_1AF42B5E0(MEMORY[0x1E69E7CC0]);
  *&v3[v4] = *&a1[OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_rendererInfo];
  v6 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v3[v5] = *&v6[OBJC_IVAR____TtC3VFX22RenderGraphDiagnostics_texturePreviewsByNodeID];

  v7 = sub_1AF949B90(v6);

  return v7;
}

uint64_t sub_1AF9A32D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for GraphError(0);
  sub_1AF9371BC();
  v6 = swift_allocError();
  v8 = v7;
  v7[v5[8]] = 0;
  *v7 = 0;
  v9 = v5[5];
  v10 = sub_1AFDFC318();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  v11 = &v8[v5[6]];
  *v11 = 0;
  v11[8] = -127;
  v12 = &v8[v5[7]];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
  v14 = *(v2 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v13) = v14;
  if ((result & 1) == 0)
  {
    result = sub_1AF420408(0, v14[2] + 1, 1, v14);
    v14 = result;
    *(v2 + v13) = result;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    result = sub_1AF420408(v16 > 1, v17 + 1, 1, v14);
    v14 = result;
  }

  v14[2] = v17 + 1;
  v14[v17 + 4] = v6;
  *(v2 + v13) = v14;
  return result;
}

uint64_t sub_1AF9A34D4()
{
  swift_unknownObjectRelease();
}

uint64_t sub_1AF9A3620@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC0000000000000D0;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC0000000000000C8;
  *(v5 + 16) = v6;
  *(v3 + 40) = v5 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 64) = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE4C620;
  *(v7 + 32) = xmmword_1AFE87170;
  *(v7 + 104) = v8;
  *(v7 + 72) = xmmword_1AFE87170;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v9 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v9;
  a1[2] = &unk_1F24EF390;
  a1[3] = &unk_1F24EF3C0;
  a1[4] = &unk_1F24EF400;
  a1[5] = v7;
  return result;
}

double sub_1AF9A381C@<D0>(_OWORD *a1@<X8>)
{
  sub_1AF9A8E94(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1AF9A391C@<D0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000098;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000D0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  if (qword_1EB6371F0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB6C3430;
  type metadata accessor for ImplicitWorldAssetNode(0);
  swift_allocObject();
  v8 = v7;
  v9 = sub_1AF9C3E60(v8, 0, 1, 23, 0);

  *(v6 + 64) = type metadata accessor for Node();
  *(v6 + 32) = 0xC000000000000000;
  *(v6 + 40) = v9;
  *(v6 + 104) = MEMORY[0x1E69E6530];
  result = -2.0;
  *(v6 + 72) = xmmword_1AFE87170;
  v11 = MEMORY[0x1E69E7CC0];
  *a1 = v3;
  a1[1] = v11;
  a1[2] = &unk_1F24F0C30;
  a1[3] = &unk_1F24F0C60;
  a1[4] = v11;
  a1[5] = v6;
  return result;
}

uint64_t sub_1AF9A3B28@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v2 + 32) = result | 0x8000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24EE280;
  a1[3] = &unk_1F24EE2B0;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

uint64_t sub_1AF9A3C04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1869768058;
  if (v2 != 1)
  {
    v4 = 6647407;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D6F74737563;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1869768058;
  if (*a2 != 1)
  {
    v8 = 6647407;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D6F74737563;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF9A3CE4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9A3D74()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF9A3DF0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9A3E7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF9AA7F0();
  *a1 = result;
  return result;
}

void sub_1AF9A3EAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1869768058;
  if (v2 != 1)
  {
    v5 = 6647407;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6F74737563;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF9A3FB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v17 = a5;
  v16 = a4;
  v18 = a3;
  sub_1AF9AA938(0, &qword_1EB6410D8, sub_1AF9AA890, &type metadata for ImageFilter.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v16 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9AA890();
  sub_1AFDFF3F8();
  v24 = 0;
  sub_1AFDFE8F8();
  if (!v5)
  {
    v13 = v16;
    v14 = v17;
    v23 = 1;
    sub_1AFDFE8F8();
    v19 = v13;
    v22 = 2;
    sub_1AF9AAB20(0, &qword_1EB6410C0, MEMORY[0x1E69E6448], MEMORY[0x1E69E6BE8]);
    sub_1AF9AA9A0(&qword_1EB6410E0);
    sub_1AFDFE918();
    v21 = v14;
    v20 = 3;
    sub_1AF9AAA24();
    sub_1AFDFE918();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AF9A4238()
{
  v1 = 0x6874646977;
  v2 = 1635017060;
  if (*v0 != 2)
  {
    v2 = 0x746573657270;
  }

  if (*v0)
  {
    v1 = 0x746867696568;
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

uint64_t sub_1AF9A429C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF9AA3B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF9A42C4(uint64_t a1)
{
  v2 = sub_1AF9AA890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9A4300(uint64_t a1)
{
  v2 = sub_1AF9AA890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9A433C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF9AA510(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1AF9A43A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC0000000000000D0;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000058;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000030;
  *(v3 + 48) = v6 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v7 = swift_allocObject();
  *(v7 + 64) = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE4C680;
  *(v7 + 32) = xmmword_1AFE87F70;
  v11 = MEMORY[0x1E69E6448];
  LODWORD(v10[0]) = 1056964608;
  sub_1AF975674(v10, (v7 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
  v11 = MEMORY[0x1E69E72F0];
  LODWORD(v10[0]) = 1;
  sub_1AF975674(v10, (v7 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v8 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v8;
  a1[2] = &unk_1F24F05C0;
  a1[3] = &unk_1F24F05F0;
  a1[4] = &unk_1F24F0640;
  a1[5] = v7;
  return result;
}

double sub_1AF9A46C0@<D0>(_OWORD *a1@<X8>)
{
  sub_1AF9A9580(&unk_1F24F2F38, &unk_1F24F2F68, &unk_1F24F2FB8, v4, 10.0);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1AF9A476C@<D0>(_OWORD *a1@<X8>)
{
  sub_1AF9A9580(&unk_1F24EEA40, &unk_1F24EEA70, &unk_1F24EEAC0, v4, 0.0);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1AF9A47FC@<D0>(_OWORD *a1@<X8>)
{
  sub_1AF9A9798(&unk_1F24F2BE8, &unk_1F24F2C18, &unk_1F24F2C78, v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1AF9A4898@<D0>(_OWORD *a1@<X8>)
{
  sub_1AF9A9798(&unk_1F24F30A0, &unk_1F24F30D0, &unk_1F24F3130, v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1AF9A4938@<D0>(_OWORD *a1@<X8>)
{
  sub_1AF9A9DB4(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1AF9A49C0@<D0>(_OWORD *a1@<X8>)
{
  sub_1AF9A99C8(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1AF9A4A4C@<D0>(_OWORD *a1@<X8>)
{
  sub_1AF9A8C8C(&unk_1F24EDF70, &unk_1F24EDFA0, &unk_1F24EDFF0, v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1AF9A4AF0@<D0>(_OWORD *a1@<X8>)
{
  sub_1AF9A8C8C(&unk_1F24EDEC0, &unk_1F24EDEF0, &unk_1F24EDF40, v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1AF9A4B90@<D0>(_OWORD *a1@<X8>)
{
  sub_1AF9A9C20(&unk_1F24F34E0, &unk_1F24F3510, &unk_1F24F3550, v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_1AF9A4C30@<D0>(_OWORD *a1@<X8>)
{
  sub_1AF9A9C20(&unk_1F24ED5B8, &unk_1F24ED5E8, &unk_1F24ED628, v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1AF9A4CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C620;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC0000000000000A0;
  *(v9 + 32) = v10 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC0000000000000D0;
  *(v9 + 40) = v11 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE4C620;
  sub_1AF9708B8(26, 0, (v12 + 32));
  *(v12 + 104) = MEMORY[0x1E69E6530];
  *(v12 + 72) = xmmword_1AFE87170;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v13 + 32) = result | 0x8000000000000000;
  *a4 = v9;
  a4[1] = v13;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  a4[5] = v12;
  return result;
}

uint64_t sub_1AF9A4EE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC0000000000000A0;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000D0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC0000000000000D0;
  *(v6 + 16) = v7;
  *(v3 + 48) = v6 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C680;
  sub_1AF9708B8(26, 0, (v8 + 32));
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 104) = MEMORY[0x1E69E6530];
  *(v8 + 72) = xmmword_1AFE87170;
  *(v8 + 144) = v9;
  *(v8 + 112) = xmmword_1AFE87170;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v10 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v10;
  a1[2] = &unk_1F24EFB30;
  a1[3] = &unk_1F24EFB60;
  a1[4] = &unk_1F24EFBB0;
  a1[5] = v8;
  return result;
}

double sub_1AF9A5108@<D0>(uint64_t *a1@<X8>)
{
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC0000000000000C8;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *&result = 3;
  *(v6 + 16) = xmmword_1AFE4C430;
  *(v5 + 16) = v6 | 0x2000000000000000;
  *(v4 + 32) = v5 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  a1[2] = &unk_1F24F1828;
  a1[3] = &unk_1F24F1858;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = &unk_1F24F1888;
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF9A528C@<X0>(void *a1@<X8>)
{
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C6B0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000038;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000058;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000058;
  *(v2 + 48) = v5 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v2 + 56) = result | 0x8000000000000000;
  v7 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = &unk_1F24F08D0;
  a1[3] = v7;
  a1[4] = &unk_1F24F0900;
  a1[5] = v7;
  return result;
}

__n128 sub_1AF9A53F0@<Q0>(void *a1@<X8>)
{
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C690;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C440;
  *(v4 + 24) = v5 | 0x2000000000000000;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 4;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C440;
  *(v7 + 24) = v8 | 0x2000000000000000;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v2 + 40) = v6 | 0x8000000000000000;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 4;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C440;
  *(v10 + 24) = v11 | 0x2000000000000000;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v2 + 48) = v9 | 0x8000000000000000;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 4;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C440;
  *(v13 + 24) = v14 | 0x2000000000000000;
  *(v12 + 16) = v13 | 0x2000000000000000;
  *(v2 + 56) = v12 | 0x8000000000000000;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 4;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AFE4C440;
  *(v16 + 24) = v17 | 0x2000000000000000;
  *(v15 + 16) = v16 | 0x2000000000000000;
  *(v2 + 64) = v15 | 0x8000000000000000;
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = 4;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1AFE4C440;
  *(v19 + 24) = v20 | 0x2000000000000000;
  *(v18 + 16) = v19 | 0x2000000000000000;
  *(v2 + 72) = v18 | 0x8000000000000000;
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = 4;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AFE4C440;
  *(v22 + 24) = v23 | 0x2000000000000000;
  *(v21 + 16) = v22 | 0x2000000000000000;
  *(v2 + 80) = v21 | 0x8000000000000000;
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = 4;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1AFE4C440;
  *(v25 + 24) = v26 | 0x2000000000000000;
  *(v24 + 16) = v25 | 0x2000000000000000;
  *(v2 + 88) = v24 | 0x8000000000000000;
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = 4;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1AFE4C440;
  *(v28 + 24) = v29 | 0x2000000000000000;
  *(v27 + 16) = v28 | 0x2000000000000000;
  *(v2 + 96) = v27 | 0x8000000000000000;
  v30 = swift_allocObject();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1AFE4C420;
  *(v30 + 16) = v31 | 0x2000000000000000;
  *(v2 + 104) = v30 | 0x8000000000000000;
  v32 = swift_allocObject();
  v33 = swift_allocObject();
  result = xmmword_1AFE4C440;
  *(v33 + 16) = xmmword_1AFE4C440;
  *(v32 + 16) = v33 | 0x2000000000000000;
  *(v2 + 112) = v32 | 0x8000000000000000;
  v35 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = &unk_1F24F0710;
  a1[3] = v35;
  a1[4] = &unk_1F24F0740;
  a1[5] = v35;
  return result;
}

uint64_t sub_1AF9A5898(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == &type metadata for Entity)
  {
    v3 = *(a1 + 144);
    sub_1AFDFF288();
    v4 = sub_1AF6ADC50(v3);
    MEMORY[0x1B271ACB0](v4);
    v5 = sub_1AFDFF2F8();
    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](6);
    if (v5 == sub_1AFDFF2F8())
    {

      v6 = swift_allocObject();
      *(v6 + 16) = 0xC0000000000000D0;
      return v6;
    }

    v2 = *(a1 + 40);
  }

  if (swift_dynamicCastMetatype())
  {
    v6 = 0xC000000000000030;
LABEL_7:

    return v6;
  }

  if (swift_dynamicCastMetatype())
  {

    return 0xC000000000000038;
  }

  v8 = sub_1AF90DEFC(v2);
  if ((~v8 & 0xF000000000000007) != 0)
  {
    v6 = v8;
    goto LABEL_7;
  }

  sub_1AFDFE218();

  v9 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v9);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF9A5A84@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000098;
  *(v3 + 32) = v4 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  if (qword_1EB6371F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB6C3430;
  type metadata accessor for ImplicitWorldAssetNode(0);
  swift_allocObject();
  v7 = v6;
  v8 = sub_1AF9C3E60(v7, 0, 1, 8, 0);

  *(v5 + 64) = type metadata accessor for Node();
  *(v5 + 32) = 0xC000000000000000;
  *(v5 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v9 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v9;
  a1[2] = &unk_1F24F1AD8;
  a1[3] = &unk_1F24F1B08;
  a1[4] = &unk_1F24F1B38;
  a1[5] = v5;
  return result;
}

uint64_t sub_1AF9A5CB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C630;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC0000000000000E8;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000020;
  *(v5 + 16) = v6;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000058;
  *(v3 + 48) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC000000000000030;
  *(v8 + 16) = v9;
  *(v3 + 56) = v8 | 0x8000000000000000;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000030;
  *(v10 + 16) = v11;
  *(v3 + 64) = v10 | 0x8000000000000000;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 0xC000000000000030;
  *(v12 + 16) = v13;
  *(v3 + 72) = v12 | 0x8000000000000000;
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = 0xC000000000000030;
  *(v14 + 16) = v15;
  *(v3 + 80) = v14 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE4C630;
  v17 = RGResourceIdentifierFinalColor(v16);
  *(v16 + 64) = MEMORY[0x1E69E76D8];
  *(v16 + 32) = 0xC0000000000000E8;
  *(v16 + 40) = v17;
  type metadata accessor for MTLPixelFormat(0);
  v24[3] = v18;
  v24[0] = 0;
  sub_1AF975674(v24, v25);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
  v19 = swift_allocObject();
  *(v19 + 16) = 0xC000000000000000;
  *(v16 + 104) = &type metadata for AnyValue;
  v20 = swift_allocObject();
  *(v16 + 80) = v20;
  sub_1AF914FF0(v25, v20 + 16);
  *(v16 + 72) = v19;
  sub_1AF9151B0(v25);
  v25[3] = MEMORY[0x1E69E6448];
  LODWORD(v25[0]) = 1065353216;
  sub_1AF975674(v25, (v16 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
  v21 = MEMORY[0x1E69E6530];
  *(v16 + 184) = MEMORY[0x1E69E6530];
  *(v16 + 152) = xmmword_1AFE87170;
  *(v16 + 224) = v21;
  *(v16 + 192) = xmmword_1AFE87170;
  *(v16 + 264) = v21;
  *(v16 + 232) = xmmword_1AFE87170;
  *(v16 + 304) = v21;
  *(v16 + 272) = xmmword_1AFE87170;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000C8;
  *(v22 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v22;
  a1[2] = &unk_1F24F19B8;
  a1[3] = &unk_1F24F19E8;
  a1[4] = &unk_1F24F1A78;
  a1[5] = v16;
  return result;
}

uint64_t sub_1AF9A601C()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX21TextureDescriptorNode__descriptor);
  if (v1)
  {
    RGTextureReferenceDescriptorDestroy(v1);
  }

  sub_1AF919DAC(*(v0 + 24));
  v2 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v3 = sub_1AFDFC318();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_1AF9A6150()
{
  type metadata accessor for ConstantNode(0);
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    sub_1AF0D5A54(v0 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_1AF9AAB20(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);

  v1 = 0.0;
  if (swift_dynamicCast())
  {
    v7 = 0;
    v1 = v6;
  }

  if (v1 > 10.0)
  {
    v1 = 10.0;
  }

  v3 = RGResourceIdentifierFinalColor(v2);
  v4 = 1.0;
  if (v1 > 0.0)
  {
    v4 = v1;
  }

  RGTextureReferenceDescriptorCreate(v3, v4);
}

uint64_t sub_1AF9A64C8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputTypes);
  v4 = *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_outputTypes);

  v6 = sub_1AF3C3AA4(v5);

  v7 = *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputValues);

  v9 = sub_1AF3C3AA4(v8);

  *a1 = v3;
  a1[1] = v4;
  a1[2] = &unk_1F24F08A0;
  a1[3] = v6;
  a1[4] = v9;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF9A6598()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_outputTypes);

  sub_1AF3C3AA4(v2);

  sub_1AF3C3AA4(v3);

  v4 = *(v1 + 16);
  if (v4)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AFC06F88(0, v4, 0);
    v5 = 32;
    v6 = v14;
    do
    {
      v7 = *(v1 + v5);
      v8 = swift_allocObject();
      *(v8 + 16) = 0xC0000000000000D0;
      sub_1AF4410A8(v7);
      v9 = sub_1AF9C5694(v7, v8 | 0x8000000000000000);
      sub_1AF441114(v7);

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 3;
      }

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1AFC06F88(v11 > 1, v12 + 1, 1);
      }

      *(v14 + 16) = v12 + 1;
      *(v14 + v12 + 32) = v10;
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t sub_1AF9A6780()
{
  v0 = swift_allocObject();
  sub_1AF9A67B8();
  return v0;
}

void *sub_1AF9A67B8()
{
  v1 = (v0 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputTypes) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputNames) = v2;
  *(v0 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputValues) = v2;
  *(v0 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_outputTypes) = v2;
  *(v0 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_outputNames) = v2;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  sub_1AFDFC308();

  sub_1AF9A6BA0();

  return v0;
}

char *sub_1AF9A6858(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputTypes) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputNames) = v3;
  *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputValues) = v3;
  *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_outputTypes) = v3;
  *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_outputNames) = v3;
  v4 = (a1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
  v5 = *(a1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  *v2 = v5;
  *(v2 + 8) = v6;
  *(v2 + 16) = v7;
  *(v2 + 24) = v8;
  sub_1AF448520(v5);

  v10 = sub_1AF96FD00(v9);

  sub_1AF9A6BA0();

  return v10;
}

uint64_t sub_1AF9A6924()
{
  v1 = (v0 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
  v2 = *(v0 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
  if (v2)
  {
    v3 = v1[2];
    v4 = v1[3];
    v5 = v1[1];

    sub_1AF448520(v2);
    v6 = sub_1AF9A178C(1, 0);
    v8 = v7;

    if (v8)
    {
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = v6;
    }

    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = HIDWORD(v6);
    }

    if (v9 != -1 || v10 != 0)
    {
      v12 = v9 | (v10 << 32);

      v13 = sub_1AF3C96D8(v12);

      if (!v13)
      {
LABEL_24:

        return v13 & 1;
      }

      v14 = sub_1AF8CC57C(v13);
      if (v15)
      {
        if (*(v13 + 16))
        {
          v16 = sub_1AF419914(v14, v15);
          v18 = v17;

          if (v18)
          {
            v19 = (*(v13 + 56) + 32 * v16);
            v20 = *v19;
            v21 = v19[1];
            v22 = v19[2];
            v23 = v19[3];

            if (sub_1AF77627C(v20, v2) & 1) != 0 && (sub_1AFB7B474(v21, v5) & 1) != 0 && (sub_1AFB7B474(v22, v3))
            {
              LOBYTE(v13) = sub_1AFB7B474(v23, v4);

              goto LABEL_24;
            }
          }
        }

        else
        {
        }
      }
    }

    LOBYTE(v13) = 0;
    goto LABEL_24;
  }

  LOBYTE(v13) = 0;
  return v13 & 1;
}

uint64_t sub_1AF9A6B38()
{

  v0 = sub_1AF9A178C(1, 0);
  v2 = v1;

  if (v2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF9A6BA0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000098;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputTypes;
  *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputTypes) = v3;

  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  v7 = (*(*v1 + 328))();
  v9 = v8;
  if (qword_1EB6371F0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB6C3430;
  type metadata accessor for ImplicitWorldAssetNode(0);
  swift_allocObject();
  v11 = v10;
  v12 = sub_1AF9C3E60(v11, 0, 1, v7, v9);

  *(v6 + 64) = type metadata accessor for Node();
  *(v6 + 32) = 0xC000000000000000;
  *(v6 + 40) = v12;
  v141 = OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputValues;
  *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputValues) = v6;

  v140 = OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputNames;
  *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_inputNames) = &unk_1F24F3868;

  v13 = OBJC_IVAR____TtC3VFX18CustomFunctionNode_outputTypes;
  v14 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_outputTypes) = MEMORY[0x1E69E7CC0];

  v139 = OBJC_IVAR____TtC3VFX18CustomFunctionNode_outputNames;
  *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_outputNames) = v14;

  v15 = (v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
  result = *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
  if (result)
  {
    v134 = v7;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v20 = *(v17 + 16);
    v21 = "Scope";
    v138 = v13;
    v135 = v19;
    v136 = v18;
    v137 = v17;
    if (v20)
    {
      sub_1AF448520(result);

      v22 = 72;
      do
      {
        v23 = *(v17 + v22);
        v24 = *(v1 + v141);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v141) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_1AF41FC9C(0, *(v24 + 2) + 1, 1, v24);
          *(v1 + v141) = v24;
        }

        v27 = *(v24 + 2);
        v26 = *(v24 + 3);
        if (v27 >= v26 >> 1)
        {
          v24 = sub_1AF41FC9C(v26 > 1, v27 + 1, 1, v24);
        }

        *(v24 + 2) = v27 + 1;
        v28 = &v24[40 * v27];
        *(v28 + 2) = xmmword_1AFE87170;
        *(v28 + 3) = v142;
        *(v28 + 8) = MEMORY[0x1E69E6530];
        *(v1 + v141) = v24;
        v29 = *(v23 + 16);
        v30 = *(v23 + 24);
        v31 = *(v1 + v140);

        v32 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v140) = v31;
        if ((v32 & 1) == 0)
        {
          v31 = sub_1AF420554(0, *(v31 + 2) + 1, 1, v31);
          *(v1 + v140) = v31;
        }

        v34 = *(v31 + 2);
        v33 = *(v31 + 3);
        if (v34 >= v33 >> 1)
        {
          v31 = sub_1AF420554(v33 > 1, v34 + 1, 1, v31);
        }

        *(v31 + 2) = v34 + 1;
        v35 = &v31[16 * v34];
        *(v35 + 4) = v29;
        *(v35 + 5) = v30;
        *(v1 + v140) = v31;
        v36 = swift_allocObject();

        *(v36 + 16) = sub_1AF9A5898(v37);
        v38 = *(v1 + v5);
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v5) = v38;
        if ((v39 & 1) == 0)
        {
          v38 = sub_1AF41FDE4(0, *(v38 + 2) + 1, 1, v38);
          *(v1 + v5) = v38;
        }

        v17 = v137;
        v41 = *(v38 + 2);
        v40 = *(v38 + 3);
        if (v41 >= v40 >> 1)
        {
          *(v1 + v5) = sub_1AF41FDE4(v40 > 1, v41 + 1, 1, v38);
        }

        v42 = *(v1 + v5);
        *(v42 + 16) = v41 + 1;
        *(v42 + 8 * v41 + 32) = v36 | 0x8000000000000000;
        *(v1 + v5) = v42;
        v22 += 48;
        --v20;
      }

      while (v20);

      v19 = v135;
      v21 = "FlowScope" + 4;
      v18 = v136;
    }

    else
    {
    }

    sub_1AFDFF288();
    v43 = sub_1AF6ADC50(v134);
    MEMORY[0x1B271ACB0](v43);
    v44 = sub_1AFDFF2F8();
    sub_1AFDFF288();
    MEMORY[0x1B271ACB0](19);
    if (v44 == sub_1AFDFF2F8())
    {
      v45 = swift_allocObject();
      v46 = swift_allocObject();
      *(v46 + 16) = 0xC0000000000000C8;
      *(v45 + 16) = v46;
      v47 = *(v1 + v5);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v5) = v47;
      if ((v48 & 1) == 0)
      {
        v47 = sub_1AF41FDE4(0, *(v47 + 2) + 1, 1, v47);
        *(v1 + v5) = v47;
      }

      v50 = *(v47 + 2);
      v49 = *(v47 + 3);
      if (v50 >= v49 >> 1)
      {
        v47 = sub_1AF41FDE4(v49 > 1, v50 + 1, 1, v47);
      }

      *(v47 + 2) = v50 + 1;
      *&v47[8 * v50 + 32] = v45 | 0x8000000000000000;
      *(v1 + v5) = v47;
      v51 = *(v1 + v140);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v140) = v51;
      if ((v52 & 1) == 0)
      {
        v51 = sub_1AF420554(0, *(v51 + 2) + 1, 1, v51);
        *(v1 + v140) = v51;
      }

      v54 = *(v51 + 2);
      v53 = *(v51 + 3);
      if (v54 >= v53 >> 1)
      {
        v51 = sub_1AF420554(v53 > 1, v54 + 1, 1, v51);
      }

      *(v51 + 2) = v54 + 1;
      v55 = &v51[16 * v54];
      *(v55 + 4) = 0x7470697263736564;
      *(v55 + 5) = 0xEA0000000000726FLL;
      *(v1 + v140) = v51;
      v56 = *(v1 + v141);
      v57 = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v141) = v56;
      if ((v57 & 1) == 0)
      {
        v56 = sub_1AF41FC9C(0, *(v56 + 2) + 1, 1, v56);
        *(v1 + v141) = v56;
      }

      v59 = *(v56 + 2);
      v58 = *(v56 + 3);
      if (v59 >= v58 >> 1)
      {
        v56 = sub_1AF41FC9C(v58 > 1, v59 + 1, 1, v56);
      }

      *(v56 + 2) = v59 + 1;
      v60 = &v56[40 * v59];
      *(v60 + 2) = *(v21 + 23);
      *(v60 + 3) = v142;
      *(v60 + 8) = MEMORY[0x1E69E6530];
      *(v1 + v141) = v56;
    }

    v61 = *(v18 + 16);
    if (v61)
    {

      v62 = 72;
      do
      {
        v63 = *(v18 + v62);
        v64 = swift_allocObject();
        v65 = swift_allocObject();
        *(v65 + 16) = 0xC0000000000000C8;
        *(v64 + 16) = v65;
        v66 = *(v1 + v5);

        v67 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v5) = v66;
        if ((v67 & 1) == 0)
        {
          v66 = sub_1AF41FDE4(0, *(v66 + 2) + 1, 1, v66);
          *(v1 + v5) = v66;
        }

        v69 = *(v66 + 2);
        v68 = *(v66 + 3);
        if (v69 >= v68 >> 1)
        {
          v66 = sub_1AF41FDE4(v68 > 1, v69 + 1, 1, v66);
        }

        *(v66 + 2) = v69 + 1;
        *&v66[8 * v69 + 32] = v64 | 0x8000000000000000;
        *(v1 + v5) = v66;
        v142 = *(v63 + 16);

        MEMORY[0x1B2718AE0](0x7470697263736544, 0xEA0000000000726FLL);
        v70 = *(v1 + v140);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v140) = v70;
        if ((v71 & 1) == 0)
        {
          v70 = sub_1AF420554(0, *(v70 + 2) + 1, 1, v70);
          *(v1 + v140) = v70;
        }

        v73 = *(v70 + 2);
        v72 = *(v70 + 3);
        if (v73 >= v72 >> 1)
        {
          v70 = sub_1AF420554(v72 > 1, v73 + 1, 1, v70);
        }

        *(v70 + 2) = v73 + 1;
        *&v70[16 * v73 + 32] = v142;
        *(v1 + v140) = v70;
        v74 = *(v1 + v141);
        v75 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v141) = v74;
        if ((v75 & 1) == 0)
        {
          v74 = sub_1AF41FC9C(0, *(v74 + 2) + 1, 1, v74);
          *(v1 + v141) = v74;
        }

        v77 = *(v74 + 2);
        v76 = *(v74 + 3);
        if (v77 >= v76 >> 1)
        {
          v74 = sub_1AF41FC9C(v76 > 1, v77 + 1, 1, v74);
        }

        *(v74 + 2) = v77 + 1;
        v78 = &v74[40 * v77];
        *(v78 + 2) = xmmword_1AFE87170;
        *(v78 + 3) = v142;
        *(v78 + 8) = MEMORY[0x1E69E6530];
        *(v1 + v141) = v74;
        v80 = *(v63 + 16);
        v79 = *(v63 + 24);
        v81 = *(v1 + v139);

        v82 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v139) = v81;
        if ((v82 & 1) == 0)
        {
          v81 = sub_1AF420554(0, *(v81 + 2) + 1, 1, v81);
          *(v1 + v139) = v81;
        }

        v84 = *(v81 + 2);
        v83 = *(v81 + 3);
        if (v84 >= v83 >> 1)
        {
          v81 = sub_1AF420554(v83 > 1, v84 + 1, 1, v81);
        }

        *(v81 + 2) = v84 + 1;
        v85 = &v81[16 * v84];
        *(v85 + 4) = v80;
        *(v85 + 5) = v79;
        *(v1 + v139) = v81;
        v86 = swift_allocObject();

        v88 = sub_1AF9A5898(v87);
        v89 = sub_1AF90FF6C(v88);
        sub_1AF445BE4(v88);
        *(v86 + 16) = v89;
        v90 = *(v1 + v138);
        v91 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v138) = v90;
        if ((v91 & 1) == 0)
        {
          v90 = sub_1AF41FDE4(0, *(v90 + 2) + 1, 1, v90);
          *(v1 + v138) = v90;
        }

        v93 = *(v90 + 2);
        v92 = *(v90 + 3);
        if (v93 >= v92 >> 1)
        {
          *(v1 + v138) = sub_1AF41FDE4(v92 > 1, v93 + 1, 1, v90);
        }

        v94 = *(v1 + v138);
        *(v94 + 16) = v93 + 1;
        *(v94 + 8 * v93 + 32) = v86 | 0x8000000000000000;
        *(v1 + v138) = v94;
        v62 += 48;
        --v61;
        v18 = v136;
      }

      while (v61);

      v19 = v135;
    }

    v95 = *(v19 + 16);
    if (v95)
    {
      v96 = (v135 + 72);
      do
      {
        v97 = *v96;
        v98 = *(v1 + v141);

        v99 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v141) = v98;
        if ((v99 & 1) == 0)
        {
          v98 = sub_1AF41FC9C(0, *(v98 + 2) + 1, 1, v98);
          *(v1 + v141) = v98;
        }

        v101 = *(v98 + 2);
        v100 = *(v98 + 3);
        if (v101 >= v100 >> 1)
        {
          v98 = sub_1AF41FC9C(v100 > 1, v101 + 1, 1, v98);
        }

        *(v98 + 2) = v101 + 1;
        v102 = &v98[40 * v101];
        *(v102 + 2) = xmmword_1AFE87170;
        *(v102 + 3) = v142;
        *(v102 + 8) = MEMORY[0x1E69E6530];
        *(v1 + v141) = v98;
        v104 = *(v97 + 16);
        v103 = *(v97 + 24);
        v105 = *(v1 + v140);

        v106 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v140) = v105;
        if ((v106 & 1) == 0)
        {
          v105 = sub_1AF420554(0, *(v105 + 2) + 1, 1, v105);
          *(v1 + v140) = v105;
        }

        v108 = *(v105 + 2);
        v107 = *(v105 + 3);
        if (v108 >= v107 >> 1)
        {
          v105 = sub_1AF420554(v107 > 1, v108 + 1, 1, v105);
        }

        *(v105 + 2) = v108 + 1;
        v109 = &v105[16 * v108];
        *(v109 + 4) = v104;
        *(v109 + 5) = v103;
        *(v1 + v140) = v105;
        v111 = *(v97 + 16);
        v110 = *(v97 + 24);
        v112 = *(v1 + v139);

        v113 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v139) = v112;
        if ((v113 & 1) == 0)
        {
          v112 = sub_1AF420554(0, *(v112 + 2) + 1, 1, v112);
          *(v1 + v139) = v112;
        }

        v115 = *(v112 + 2);
        v114 = *(v112 + 3);
        if (v115 >= v114 >> 1)
        {
          v112 = sub_1AF420554(v114 > 1, v115 + 1, 1, v112);
        }

        *(v112 + 2) = v115 + 1;
        v116 = &v112[16 * v115];
        *(v116 + 4) = v111;
        *(v116 + 5) = v110;
        *(v1 + v139) = v112;

        v118 = sub_1AF9A5898(v117);
        v119 = swift_allocObject();
        *(v119 + 16) = v118;
        v120 = *(v1 + v5);
        sub_1AF442064(v118);
        v121 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v5) = v120;
        if ((v121 & 1) == 0)
        {
          v120 = sub_1AF41FDE4(0, *(v120 + 2) + 1, 1, v120);
          *(v1 + v5) = v120;
        }

        v123 = *(v120 + 2);
        v122 = *(v120 + 3);
        if (v123 >= v122 >> 1)
        {
          v120 = sub_1AF41FDE4(v122 > 1, v123 + 1, 1, v120);
        }

        *(v120 + 2) = v123 + 1;
        *&v120[8 * v123 + 32] = v119 | 0x8000000000000000;
        *(v1 + v5) = v120;
        v124 = swift_allocObject();
        *(v124 + 16) = sub_1AF90FF6C(v118);
        v125 = *(v1 + v138);
        v126 = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + v138) = v125;
        if ((v126 & 1) == 0)
        {
          v125 = sub_1AF41FDE4(0, *(v125 + 2) + 1, 1, v125);
          *(v1 + v138) = v125;
        }

        v128 = *(v125 + 2);
        v127 = *(v125 + 3);
        if (v128 >= v127 >> 1)
        {
          *(v1 + v138) = sub_1AF41FDE4(v127 > 1, v128 + 1, 1, v125);
        }

        sub_1AF445BE4(v118);

        v129 = *(v1 + v138);
        *(v129 + 16) = v128 + 1;
        *(v129 + 8 * v128 + 32) = v124 | 0x8000000000000000;
        *(v1 + v138) = v129;
        v96 += 6;
        --v95;
      }

      while (v95);
    }

    v13 = v138;
  }

  v130 = *(v1 + v13);
  if (!*(v130 + 16))
  {
    v131 = swift_allocObject();
    *(v131 + 16) = 0xC0000000000000D0;
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v13) = v130;
    if ((result & 1) == 0)
    {
      result = sub_1AF41FDE4(0, 1, 1, v130);
      v130 = result;
      *(v1 + v13) = result;
    }

    v133 = *(v130 + 16);
    v132 = *(v130 + 24);
    if (v133 >= v132 >> 1)
    {
      result = sub_1AF41FDE4(v132 > 1, v133 + 1, 1, v130);
      v130 = result;
    }

    *(v130 + 16) = v133 + 1;
    *(v130 + 8 * v133 + 32) = v131 | 0x8000000000000000;
    *(v1 + v13) = v130;
  }

  return result;
}

uint64_t sub_1AF9A7A90()
{
  sub_1AF9A8604(*(v0 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection));
}

uint64_t sub_1AF9A7B18()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF9A8604(*(v0 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection));

  return v0;
}

uint64_t sub_1AF9A7D18()
{
  sub_1AF9A7B18();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9A7DD0(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AFDFF398();
  if (!v2)
  {
    sub_1AF441150(v8, v8[3]);
    sub_1AF9AAB20(0, &qword_1EB641018, &type metadata for MetalFunctionReflection, MEMORY[0x1E69E6720]);
    sub_1AF9A8664(&qword_1EB641020, sub_1AF9A85B0);
    sub_1AFDFEE88();
    v4 = (v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
    v5 = *(v1 + OBJC_IVAR____TtC3VFX18CustomFunctionNode_reflection);
    *v4 = v6;
    v4[1] = v7;
    sub_1AF9A8604(v5);
    sub_1AF9A6BA0();
    sub_1AF9A6BA0();
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  }

  return result;
}

uint64_t sub_1AF9A7F10(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AF9AAB20(0, &qword_1EB641018, &type metadata for MetalFunctionReflection, MEMORY[0x1E69E6720]);
  sub_1AF9A8664(&qword_1EB641030, sub_1AF9A86F4);
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AF9A8040@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000098;
  *(v3 + 40) = v5 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v6 = swift_allocObject();
  *(v6 + 64) = MEMORY[0x1E69E6530];
  *(v6 + 16) = xmmword_1AFE4C620;
  *(v6 + 32) = xmmword_1AFE87170;
  if (qword_1EB6371F0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB6C3430;
  type metadata accessor for ImplicitWorldAssetNode(0);
  swift_allocObject();
  v8 = v7;
  v9 = sub_1AF9C3E60(v8, 0, 1, 23, 0);

  *(v6 + 104) = type metadata accessor for Node();
  *(v6 + 72) = 0xC000000000000000;
  *(v6 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v10 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v10;
  a1[2] = &unk_1F24F2188;
  a1[3] = &unk_1F24F21B8;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v6;
  return result;
}

uint64_t sub_1AF9A8258()
{

  v0 = sub_1AF9A178C(1, 0);
  v2 = v1;

  if (v2)
  {
    v3 = -1;
  }

  else
  {
    v3 = v0;
  }

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = HIDWORD(v0);
  }

  sub_1AF9AAB20(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 20) = v4;
  *(v5 + 32) = v6 | 0x1000000000000004;
  *(v5 + 40) = 1;
  *(v5 + 48) = xmmword_1AFE4C460;
  *(v5 + 64) = 1;
  return v5;
}

uint64_t destroy for TexturePreview()
{

  return swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for TexturePreview(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for TexturePreview(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t assignWithTake for TexturePreview(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithCopy for RenderGraphDiagnostics.RendererInfo(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithTake for RenderGraphDiagnostics.RendererInfo(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_1AF9A85B0()
{
  result = qword_1EB641028;
  if (!qword_1EB641028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641028);
  }

  return result;
}

uint64_t sub_1AF9A8604(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AF9A8664(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF9AAB20(255, &qword_1EB641018, &type metadata for MetalFunctionReflection, MEMORY[0x1E69E6720]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF9A86F4()
{
  result = qword_1EB641038;
  if (!qword_1EB641038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641038);
  }

  return result;
}

void sub_1AF9A8748()
{
  if (!qword_1EB641048)
  {
    sub_1AF9A87A0();
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB641048);
    }
  }
}

unint64_t sub_1AF9A87A0()
{
  result = qword_1EB641050;
  if (!qword_1EB641050)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB641050);
  }

  return result;
}

uint64_t sub_1AF9A8814()
{
  sub_1AF9AA938(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v1 = v0;
  if (swift_conformsToProtocol2())
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || (type metadata accessor for EnumConstantNode(0), (v3 = swift_dynamicCastClass()) == 0))
  {
    type metadata accessor for ConstantNode(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      sub_1AF0D5A54(v4 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v6);
    }

    else
    {
      memset(v6, 0, 32);
    }

    sub_1AF9AAB20(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  }

  else
  {
    sub_1AF441194(v3 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v6);
    sub_1AF4498F4(0, &qword_1EB641060);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = 0;
    v8 = 0;
  }

  return v7;
}

uint64_t sub_1AF9A899C(uint64_t a1, unsigned __int8 a2)
{
  type metadata accessor for EnumConstantNode(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    sub_1AF441194(v3 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v6);
    sub_1AF4498F4(0, &qword_1EB641060);
  }

  else
  {
    type metadata accessor for ConstantNode(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      sub_1AF0D5A54(v4 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v6);
    }

    else
    {
      memset(v6, 0, sizeof(v6));
    }

    sub_1AF9AAB20(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return a2;
  }

  return v7;
}

uint64_t sub_1AF9A8AD0()
{
  if (swift_conformsToProtocol2() && (type metadata accessor for EnumConstantNode(0), (v0 = swift_dynamicCastClass()) != 0))
  {
    sub_1AF441194(v0 + OBJC_IVAR____TtC3VFX16EnumConstantNode_value, v3);
    sub_1AF4498F4(0, &qword_1EB641060);
  }

  else
  {
    type metadata accessor for ConstantNode(0);
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      sub_1AF0D5A54(v1 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v3);
    }

    else
    {
      memset(v3, 0, 32);
    }

    sub_1AF9AAB20(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v4 = 0;
    v5 = 0;
    v7 = 0;
    v6 = 0;
  }

  return v4;
}

uint64_t sub_1AF9A8C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C680;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC0000000000000D0;
  *(v8 + 32) = v9 | 0x8000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC000000000000030;
  *(v8 + 40) = v10 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000030;
  *(v8 + 48) = v11 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v7);
  v12 = swift_allocObject();
  *(v12 + 64) = MEMORY[0x1E69E6530];
  *(v12 + 16) = xmmword_1AFE4C680;
  *(v12 + 32) = xmmword_1AFE87F70;
  v13 = MEMORY[0x1E69E72F0];
  v18 = MEMORY[0x1E69E72F0];
  LODWORD(v17[0]) = 3;
  sub_1AF975674(v17, (v12 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
  v18 = v13;
  LODWORD(v17[0]) = 3;
  sub_1AF975674(v17, (v12 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v14 + 32) = result | 0x8000000000000000;
  *a4 = v8;
  a4[1] = v14;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  a4[5] = v12;
  return result;
}

uint64_t sub_1AF9A8E94@<X0>(uint64_t *a1@<X8>)
{
  v1 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE89B90;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC0000000000000A0;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000098;
  *(v4 + 16) = v5;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000098;
  *(v6 + 16) = v7;
  *(v2 + 48) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C440;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v8 + 16) = v9;
  *(v2 + 56) = v8 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC0000000000000E0;
  *(v2 + 64) = v11 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = 0xC0000000000000E0;
  *(v2 + 72) = v12 | 0x8000000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xC000000000000010;
  *(v2 + 80) = v13 | 0x8000000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = 0xC000000000000010;
  *(v2 + 88) = v14 | 0x8000000000000000;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 0xC0000000000000D0;
  *(v15 + 16) = v16;
  *(v2 + 96) = v15 | 0x8000000000000000;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = 0xC0000000000000D0;
  *(v17 + 16) = v18;
  *(v2 + 104) = v17 | 0x8000000000000000;
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = 0xC0000000000000C8;
  *(v19 + 16) = v20;
  *(v2 + 112) = v19 | 0x8000000000000000;
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = 0xC000000000000098;
  *(v22 + 16) = v23 | 0x8000000000000000;
  *(v21 + 16) = v22 | 0x2000000000000000;
  *(v2 + 120) = v21 | 0x6000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v1);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AFE89B90;
  sub_1AF9708B8(26, 0, (v24 + 32));
  if (qword_1EB6371F0 != -1)
  {
    swift_once();
  }

  v25 = qword_1EB6C3430;
  type metadata accessor for ImplicitWorldAssetNode(0);
  swift_allocObject();
  v26 = v25;
  v27 = sub_1AF9C3E60(v26, 0, 1, 17, 0);
  v28 = type metadata accessor for Node();
  v48 = v28;
  v45 = 0xC000000000000000;
  v46 = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = 0xC000000000000000;
  *(v24 + 104) = &type metadata for AnyValue;
  v30 = swift_allocObject();
  *(v24 + 80) = v30;
  sub_1AF914FF0(&v45, v30 + 16);
  *(v24 + 72) = v29;
  sub_1AF9151B0(&v45);
  swift_allocObject();
  v31 = sub_1AF9C3E60(v26, 0, 1, 18, 0);
  v48 = v28;
  v45 = 0xC000000000000000;
  v46 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = 0xC000000000000000;
  *(v24 + 144) = &type metadata for AnyValue;
  v33 = swift_allocObject();
  *(v24 + 120) = v33;
  sub_1AF914FF0(&v45, v33 + 16);
  *(v24 + 112) = v32;
  sub_1AF9151B0(&v45);
  v34 = MEMORY[0x1E69E6530];
  *(v24 + 184) = MEMORY[0x1E69E6530];
  *(v24 + 152) = xmmword_1AFE87170;
  *(v24 + 224) = MEMORY[0x1E69E76D8];
  *(v24 + 192) = xmmword_1AFE89BA0;
  *(v24 + 264) = v34;
  *(v24 + 232) = xmmword_1AFE87170;
  v35 = MEMORY[0x1E69E6370];
  v47 = MEMORY[0x1E69E6370];
  LOBYTE(v45) = 1;
  sub_1AF975674(&v45, (v24 + 272));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v45);
  v47 = v35;
  LOBYTE(v45) = 1;
  sub_1AF975674(&v45, (v24 + 312));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v45);
  *(v24 + 352) = xmmword_1AFE87170;
  *(v24 + 424) = v34;
  *(v24 + 392) = 0xC000000000000000;
  *(v24 + 400) = 0;
  *(v24 + 384) = v34;
  *(v24 + 464) = v34;
  *(v24 + 432) = xmmword_1AFE87170;
  swift_allocObject();
  v36 = sub_1AF9C3E60(v26, 0, 1, 23, 0);

  v48 = v28;
  v45 = 0xC000000000000000;
  v46 = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = 0xC000000000000000;
  *(v24 + 504) = &type metadata for AnyValue;
  v38 = swift_allocObject();
  *(v24 + 480) = v38;
  sub_1AF914FF0(&v45, v38 + 16);
  *(v24 + 472) = v37;
  sub_1AF9151B0(&v45);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1AFE4C6B0;
  v40 = swift_allocObject();
  *(v40 + 16) = 0xC0000000000000D0;
  *(v39 + 32) = v40 | 0x8000000000000000;
  v41 = swift_allocObject();
  *(v41 + 16) = 0xC0000000000000D0;
  *(v39 + 40) = v41 | 0x8000000000000000;
  v42 = swift_allocObject();
  *(v42 + 16) = 0xC0000000000000D0;
  *(v39 + 48) = v42 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v39 + 56) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v39;
  a1[2] = &unk_1F24EF890;
  a1[3] = &unk_1F24EF8C0;
  a1[4] = &unk_1F24EF9A0;
  a1[5] = v24;
  return result;
}

uint64_t sub_1AF9A9580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, float a5@<S0>)
{
  v10 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C680;
  v12 = swift_allocObject();
  *(v12 + 16) = 0xC0000000000000D0;
  *(v11 + 32) = v12 | 0x8000000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xC000000000000020;
  *(v11 + 40) = v13 | 0x8000000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = 0xC000000000000058;
  *(v11 + 48) = v14 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v10);
  v15 = swift_allocObject();
  *(v15 + 64) = MEMORY[0x1E69E6530];
  *(v15 + 16) = xmmword_1AFE4C680;
  *(v15 + 32) = xmmword_1AFE87F70;
  v19 = &type metadata for FilterEdgeMode;
  LOBYTE(v18[0]) = 1;
  sub_1AF975674(v18, (v15 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  v19 = MEMORY[0x1E69E6448];
  *v18 = a5;
  sub_1AF975674(v18, (v15 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v16 + 32) = result | 0x8000000000000000;
  *a4 = v11;
  a4[1] = v16;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  a4[5] = v15;
  return result;
}

uint64_t sub_1AF9A9798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C6B0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC0000000000000D0;
  *(v8 + 32) = v9 | 0x8000000000000000;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC000000000000020;
  *(v8 + 40) = v10 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000030;
  *(v8 + 48) = v11 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = 0xC000000000000030;
  *(v8 + 56) = v12 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v7);
  v13 = swift_allocObject();
  *(v13 + 64) = MEMORY[0x1E69E6530];
  *(v13 + 16) = xmmword_1AFE4C6B0;
  *(v13 + 32) = xmmword_1AFE87F70;
  v19 = &type metadata for FilterEdgeMode;
  LOBYTE(v18[0]) = 1;
  sub_1AF975674(v18, (v13 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  v14 = MEMORY[0x1E69E72F0];
  v19 = MEMORY[0x1E69E72F0];
  LODWORD(v18[0]) = 3;
  sub_1AF975674(v18, (v13 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  v19 = v14;
  LODWORD(v18[0]) = 3;
  sub_1AF975674(v18, (v13 + 152));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v15 + 32) = result | 0x8000000000000000;
  *a4 = v8;
  a4[1] = v15;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  a4[5] = v13;
  return result;
}

uint64_t sub_1AF9A99C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6B0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC0000000000000D0;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000020;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000058;
  *(v3 + 48) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000058;
  *(v3 + 56) = v7 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v8 = swift_allocObject();
  *(v8 + 64) = MEMORY[0x1E69E6530];
  *(v8 + 16) = xmmword_1AFE4C6B0;
  *(v8 + 32) = xmmword_1AFE87F70;
  v13 = &type metadata for FilterEdgeMode;
  LOBYTE(v12[0]) = 1;
  sub_1AF975674(v12, (v8 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  v9 = MEMORY[0x1E69E6448];
  v13 = MEMORY[0x1E69E6448];
  LODWORD(v12[0]) = 1053609165;
  sub_1AF975674(v12, (v8 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  v13 = v9;
  LODWORD(v12[0]) = 1045220557;
  sub_1AF975674(v12, (v8 + 152));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v10 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v10;
  a1[2] = &unk_1F24F3330;
  a1[3] = &unk_1F24F3360;
  a1[4] = &unk_1F24F33C0;
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF9A9C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C620;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC0000000000000D0;
  *(v9 + 32) = v10 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC0000000000000F0;
  *(v9 + 40) = v11 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v8);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E6530];
  *(v12 + 64) = MEMORY[0x1E69E6530];
  *(v12 + 16) = xmmword_1AFE4C620;
  *(v12 + 32) = xmmword_1AFE87F70;
  *(v12 + 104) = v13;
  *(v12 + 72) = xmmword_1AFE87170;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v14 + 32) = result | 0x8000000000000000;
  *a4 = v9;
  a4[1] = v14;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  a4[5] = v12;
  return result;
}

uint64_t sub_1AF9A9DB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9AAB20(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC0000000000000D0;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000020;
  *(v3 + 40) = v5 | 0x8000000000000000;
  sub_1AF9AAB20(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v6 = swift_allocObject();
  *(v6 + 64) = MEMORY[0x1E69E6530];
  *(v6 + 16) = xmmword_1AFE4C620;
  *(v6 + 32) = xmmword_1AFE87F70;
  v9[3] = &type metadata for FilterEdgeMode;
  LOBYTE(v9[0]) = 1;
  sub_1AF975674(v9, (v6 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000D0;
  *(v7 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v7;
  a1[2] = &unk_1F24F3680;
  a1[3] = &unk_1F24F36B0;
  a1[4] = &unk_1F24F36F0;
  a1[5] = v6;
  return result;
}

unint64_t sub_1AF9A9F5C()
{
  sub_1AFDFE218();

  v0 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v0);

  return 0xD000000000000016;
}

uint64_t initializeWithCopy for ImageFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for ImageFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for ImageFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for ImageFilter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for ImageFilter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF9AA1A0()
{
  result = qword_1EB641078;
  if (!qword_1EB641078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641078);
  }

  return result;
}

uint64_t sub_1AF9AA224(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AF9AAB20(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF9AA28C()
{
  result = qword_1EB641090;
  if (!qword_1EB641090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641090);
  }

  return result;
}

unint64_t sub_1AF9AA2E0(uint64_t a1)
{
  *(a1 + 8) = sub_1AF9AA310();
  result = sub_1AF9AA364();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF9AA310()
{
  result = qword_1EB641098;
  if (!qword_1EB641098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641098);
  }

  return result;
}

unint64_t sub_1AF9AA364()
{
  result = qword_1EB6410A0;
  if (!qword_1EB6410A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6410A0);
  }

  return result;
}

uint64_t sub_1AF9AA3B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746573657270 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

uint64_t sub_1AF9AA510(void *a1)
{
  sub_1AF9AA938(0, &qword_1EB6410B0, sub_1AF9AA890, &type metadata for ImageFilter.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF9AA890();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_1AFDFE748();
    v11[30] = 1;
    sub_1AFDFE748();
    sub_1AF9AAB20(0, &qword_1EB6410C0, MEMORY[0x1E69E6448], MEMORY[0x1E69E6BE8]);
    v11[29] = 2;
    sub_1AF9AA9A0(&qword_1EB6410C8);
    sub_1AFDFE768();
    v11[27] = 3;
    sub_1AF9AA8E4();
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AF9AA7F0()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1AF9AA83C()
{
  result = qword_1EB6410A8;
  if (!qword_1EB6410A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6410A8);
  }

  return result;
}

unint64_t sub_1AF9AA890()
{
  result = qword_1EB6410B8;
  if (!qword_1EB6410B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6410B8);
  }

  return result;
}

unint64_t sub_1AF9AA8E4()
{
  result = qword_1EB6410D0;
  if (!qword_1EB6410D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6410D0);
  }

  return result;
}

void sub_1AF9AA938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF9AA9A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF9AAB20(255, &qword_1EB6410C0, MEMORY[0x1E69E6448], MEMORY[0x1E69E6BE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF9AAA24()
{
  result = qword_1EB6410E8;
  if (!qword_1EB6410E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6410E8);
  }

  return result;
}

unint64_t sub_1AF9AAA9C()
{
  result = qword_1EB6410F0;
  if (!qword_1EB6410F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6410F0);
  }

  return result;
}

void sub_1AF9AAB20(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF9AAB74()
{
  result = qword_1EB641108;
  if (!qword_1EB641108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641108);
  }

  return result;
}

unint64_t sub_1AF9AABCC()
{
  result = qword_1EB641110;
  if (!qword_1EB641110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641110);
  }

  return result;
}

unint64_t sub_1AF9AAC24()
{
  result = qword_1EB641118;
  if (!qword_1EB641118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641118);
  }

  return result;
}

unint64_t sub_1AF9AAC7C()
{
  result = qword_1EB641120;
  if (!qword_1EB641120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641120);
  }

  return result;
}

unint64_t sub_1AF9AACD0()
{
  result = qword_1EB641128;
  if (!qword_1EB641128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641128);
  }

  return result;
}

uint64_t sub_1AF9AADA8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_1AFDFDE48();
  v13 = v12;

  if ((v13 & 0x1000000000000000) == 0)
  {

    sub_1AFDFDE48();
    v15 = v14;

    if ((v15 & 0x1000000000000000) == 0)
    {
      v16 = (a5 >> 59) & 1;
      v17 = (a6 & 0x1000000000000000) == 0 || (a5 & 0x800000000000000) != 0;
      v18 = 4 << v17;
      v19 = a1;
      if ((a1 & 0xC) == 4 << v17)
      {
        v19 = sub_1AF87C068(a1, a5, a6);
        if ((a6 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }
      }

      else if ((a6 & 0x1000000000000000) == 0)
      {
LABEL_8:
        v20 = v19 >> 16;
        LOBYTE(v16) = 1;
        goto LABEL_9;
      }

      v20 = sub_1AFDFD148();
LABEL_9:
      if ((a6 & 0x2000000000000000) != 0)
      {
        v21 = HIBYTE(a6) & 0xF;
      }

      else
      {
        v21 = a5;
      }

      v22 = v21 << 16;
      if (v16)
      {
        v23 = v22 | 7;
        if ((a6 & 0x1000000000000000) == 0)
        {
          LOBYTE(v24) = 1;
          goto LABEL_17;
        }
      }

      else
      {
        v23 = v22 | 0xB;
      }

      v24 = (a5 & 0x800000000000000) >> 59;
LABEL_17:
      v25 = a2;
      if ((a2 & 0xC) == 4 << v24)
      {
        v29 = v23;
        v25 = sub_1AF87C068(a2, a5, a6);
        v23 = v29;
      }

      if ((v23 & 0xC) == v18)
      {
        v30 = v25;
        v23 = sub_1AF87C068(v23, a5, a6);
        v25 = v30;
        if ((a6 & 0x1000000000000000) == 0)
        {
LABEL_21:
          v26 = (v23 >> 16) - (v25 >> 16);
          if ((a4 & 0x1000000000000000) != 0)
          {
LABEL_22:
            v27 = v26;
            v28 = sub_1AFDFD118();
            v26 = v27;
LABEL_29:
            MEMORY[0x1B2718A10](v26 + v20 + v28);
            goto LABEL_30;
          }

LABEL_27:
          v28 = a3 & 0xFFFFFFFFFFFFLL;
          if ((a4 & 0x2000000000000000) != 0)
          {
            v28 = HIBYTE(a4) & 0xF;
          }

          goto LABEL_29;
        }
      }

      else if ((a6 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

      v26 = sub_1AFDFD148();
      if ((a4 & 0x1000000000000000) != 0)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

LABEL_30:
  sub_1AFDFD1F8();
  sub_1AF725990();
  sub_1AFDFD0A8();

  sub_1AFDFD0A8();
  sub_1AFDFD1F8();
  sub_1AFDFD0A8();

  return 0;
}

void *sub_1AF9AB098()
{
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC3VFX9StateNode_stateRef + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  v1 = swift_unknownObjectWeakAssign();
  *(v1 + 16) = 0x3E6C6C756E3CLL;
  *(v1 + 24) = 0xE600000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  sub_1AFDFC308();
  return v0;
}

uint64_t sub_1AF9AB128(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701869940;
    v6 = 0x4165646F6ELL;
    if (a1 != 2)
    {
      v6 = 0x4265646F6ELL;
    }

    if (a1)
    {
      v5 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x72696843646E6168;
    v2 = 0x6E696F4A646E6168;
    if (a1 != 7)
    {
      v2 = 0x72657474696D65;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x65646F4379656BLL;
    if (a1 != 4)
    {
      v3 = 0x65527265746C6966;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1AF9AB260()
{
  sub_1AFDFF288();
  sub_1AF3D4ADC();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9AB2B0()
{
  sub_1AFDFF288();
  sub_1AF3D4ADC();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9AB2F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF9B2E88();
  *a1 = result;
  return result;
}

uint64_t sub_1AF9AB324@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF9AB128(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF9AB36C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF9B2E88();
  *a1 = result;
  return result;
}

uint64_t sub_1AF9AB394(uint64_t a1)
{
  v2 = sub_1AF9B3D9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9AB3D0(uint64_t a1)
{
  v2 = sub_1AF9B3D9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1AF9AB40C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF9B45AC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF9AB4E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF9B4084(0, &qword_1EB641260, sub_1AF9B3D9C, &type metadata for TriggerAttachment.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v32 - v9;
  v11 = a1[3];
  v34 = a1;
  sub_1AF441150(a1, v11);
  sub_1AF9B3D9C();
  sub_1AFDFF3B8();
  if (!v2)
  {
    v12 = v7;
    v36[0] = 0;
    sub_1AF9B3DF0();
    sub_1AFDFE768();
    if (v37 > 2u)
    {
      if (v37 <= 4u)
      {
        if (v37 == 3)
        {
          LOBYTE(v37) = 2;
          sub_1AF9B3A20();
          sub_1AFDFE6E8();
          LOBYTE(v37) = 3;
          sub_1AFDFE6E8();
          sub_1AF9B3BE4(v36, &v37);
          if (v37 || v38 != 1)
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            sub_1AF4459C8(&v37);
            if (Strong)
            {
              objc_opt_self();
              v27 = swift_dynamicCastObjCClass();
              if (v27)
              {
                v33 = v27;
LABEL_36:
                sub_1AF9B3BE4(v35, &v37);
                if (v37 || v38 != 1)
                {
                  v29 = swift_unknownObjectWeakLoadStrong();
                  v30 = MEMORY[0x1E69E6720];
                  sub_1AF9B3F34(v35, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
                  sub_1AF9B3F34(v36, &qword_1EB641248, &type metadata for VFXObjectReference, v30);
                  (*(v12 + 8))(v10, v6);
                  sub_1AF4459C8(&v37);
                  if (v29)
                  {
                    objc_opt_self();
                    v31 = swift_dynamicCastObjCClass();
                    v24 = v34;
                    if (!v31)
                    {
                      swift_unknownObjectRelease();
                      v31 = 0;
                    }

                    goto LABEL_43;
                  }
                }

                else
                {
                  v28 = MEMORY[0x1E69E6720];
                  sub_1AF9B3F34(v35, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
                  sub_1AF9B3F34(v36, &qword_1EB641248, &type metadata for VFXObjectReference, v28);
                  (*(v7 + 8))(v10, v6);
                  sub_1AF9B3F34(&v37, &qword_1EB641248, &type metadata for VFXObjectReference, v28);
                }

                v31 = 0;
                v24 = v34;
LABEL_43:
                v37 = v33;
                v38 = v31;
                v39 = 2;
                goto LABEL_44;
              }

              swift_unknownObjectRelease();
            }
          }

          else
          {
            sub_1AF9B3F34(&v37, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
          }

          v33 = 0;
          goto LABEL_36;
        }

        v35[0] = 4;
        sub_1AF6A62B4();
        sub_1AFDFE768();
        v16 = v36[0];
        v35[0] = 5;
        v25 = sub_1AFDFE718();
        (*(v7 + 8))(v10, v6);
        LOBYTE(v37) = v16;
        BYTE1(v37) = v25 & 1;
        v15 = 4;
        goto LABEL_27;
      }

      if (v37 == 5)
      {
        v35[0] = 6;
        sub_1AF51C338();
        sub_1AFDFE768();
        v14 = v36[0];
        v42 = 7;
        sub_1AF51C40C();
        sub_1AFDFE768();
        (*(v7 + 8))(v10, v6);
        LOBYTE(v37) = v14;
        BYTE1(v37) = v35[0];
        v15 = 5;
LABEL_27:
        v39 = v15;
        goto LABEL_28;
      }

      v36[0] = 8;
      sub_1AF9B3A20();
      sub_1AFDFE768();
      (*(v7 + 8))(v10, v6);
      sub_1AF640200(&v37, v40);
      v41 = 3;
LABEL_29:
      v24 = v34;
LABEL_30:
      sub_1AF447144(v40, a2);
      v17 = v24;
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
    }

    if (!v37)
    {
      (*(v7 + 8))(v10, v6);
      memset(v40, 0, sizeof(v40));
      v41 = 6;
      goto LABEL_29;
    }

    if (v37 != 1)
    {
      v36[0] = 1;
      v19 = sub_1AFDFE708();
      v21 = v20;
      (*(v7 + 8))(v10, v6);
      v37 = v19;
      v38 = v21;
      v39 = 1;
LABEL_28:
      sub_1AF447144(&v37, v40);
      goto LABEL_29;
    }

    LOBYTE(v37) = 2;
    sub_1AF9B3A20();
    sub_1AFDFE6E8();
    sub_1AF9B3BE4(v36, &v37);
    if (v37 || v38 != 1)
    {
      v22 = swift_unknownObjectWeakLoadStrong();
      sub_1AF9B3F34(v36, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
      (*(v7 + 8))(v10, v6);
      sub_1AF4459C8(&v37);
      if (v22)
      {
        objc_opt_self();
        v23 = swift_dynamicCastObjCClass();
        v24 = v34;
        if (!v23)
        {
          swift_unknownObjectRelease();
          v23 = 0;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E6720];
      sub_1AF9B3F34(v36, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
      (*(v7 + 8))(v10, v6);
      sub_1AF9B3F34(&v37, &qword_1EB641248, &type metadata for VFXObjectReference, v13);
    }

    v23 = 0;
    v24 = v34;
LABEL_23:
    v37 = v23;
    v39 = 0;
LABEL_44:
    sub_1AF447144(&v37, v40);
    goto LABEL_30;
  }

  v17 = v34;
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
}

void sub_1AF9ABD68(void *a1)
{
  v3 = v1;
  sub_1AF9B4084(0, &qword_1EB641278, sub_1AF9B3D9C, &type metadata for TriggerAttachment.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v30[-v9 - 8];
  sub_1AF441150(a1, a1[3]);
  sub_1AF9B3D9C();
  sub_1AFDFF3F8();
  sub_1AF9B3B24(v3, v34);
  if (v35 > 2u)
  {
    if (v35 <= 4u)
    {
      if (v35 == 3)
      {
        sub_1AF9B3B5C(v34, v30);
        v37 = 6;
        v36 = 0;
        sub_1AF9B3E44();
        sub_1AFDFE918();
        if (!v2)
        {
          v37 = 8;
          sub_1AF9B4270(0, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
          sub_1AF9B3E98();
          sub_1AFDFE918();
        }

        sub_1AF9B3F34(v30, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
      }

      else
      {
        v15 = v34[0];
        v30[0] = 4;
        v37 = 0;
        sub_1AF9B3E44();
        sub_1AFDFE918();
        if (!v2)
        {
          v30[0] = v15;
          v37 = 4;
          sub_1AF6A6308();
          sub_1AFDFE918();
          v30[0] = 5;
          sub_1AFDFE8C8();
        }
      }

      goto LABEL_30;
    }

    if (v35 == 5)
    {
      v11 = v34[0];
      v12 = BYTE1(v34[0]);
      v30[0] = 5;
      v37 = 0;
      sub_1AF9B3E44();
      sub_1AFDFE918();
      if (v2)
      {
LABEL_30:
        (*(v7 + 8))(v10, v6);
        return;
      }

      v30[0] = v11;
      v37 = 6;
      sub_1AF51C38C();
      sub_1AFDFE918();
      v30[0] = v12;
      v37 = 7;
      sub_1AF51C460();
    }

    else
    {
      v30[0] = 0;
      v37 = 0;
      sub_1AF9B3E44();
    }

    sub_1AFDFE918();
    goto LABEL_30;
  }

  if (!v35)
  {
    v13 = v34[0];
    v30[0] = 1;
    v37 = 0;
    sub_1AF9B3E44();
    sub_1AFDFE918();
    if (!v2)
    {
      if (!v13)
      {
        goto LABEL_30;
      }

      v31 = 0;
      swift_unknownObjectWeakInit();
      v31 = &off_1F256A470;
      swift_unknownObjectWeakAssign();
      v13 = v13;
      v16 = [v13 identifier];
      v17 = sub_1AFDFCEF8();
      v19 = v18;

      v32 = v17;
      v33 = v19;
      v37 = 2;
      sub_1AF9B3AD0();
      sub_1AFDFE918();

LABEL_29:
      sub_1AF4459C8(v30);
      goto LABEL_30;
    }

LABEL_16:
    (*(v7 + 8))(v10, v6);

    return;
  }

  if (v35 != 1)
  {
    v13 = v34[0];
    v14 = v34[1];
    v30[0] = 3;
    v37 = 0;
    sub_1AF9B3E44();
    sub_1AFDFE918();
    if (v2)
    {
      (*(v7 + 8))(v10, v6);

      return;
    }

    if (v13)
    {
      v31 = 0;
      swift_unknownObjectWeakInit();
      v31 = &off_1F256A470;
      swift_unknownObjectWeakAssign();
      v29 = v13;
      v20 = [v29 identifier];
      v21 = sub_1AFDFCEF8();
      v23 = v22;

      v32 = v21;
      v33 = v23;
      v37 = 2;
      sub_1AF9B3AD0();
      sub_1AFDFE918();
      sub_1AF4459C8(v30);
    }

    if (v14)
    {
      v31 = 0;
      swift_unknownObjectWeakInit();
      v31 = &off_1F256A470;
      swift_unknownObjectWeakAssign();
      v24 = v14;
      v25 = [v24 identifier];
      v26 = sub_1AFDFCEF8();
      v28 = v27;

      v32 = v26;
      v33 = v28;
      v37 = 3;
      sub_1AF9B3AD0();
      sub_1AFDFE918();

      goto LABEL_29;
    }

    goto LABEL_16;
  }

  v30[0] = 2;
  v37 = 0;
  sub_1AF9B3E44();
  sub_1AFDFE918();
  if (!v2)
  {
    v30[0] = 1;
    sub_1AFDFE8B8();
  }

  (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF9AC484(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = sub_1AF9B3B24(v2, &v45);
  if (v47 > 2u)
  {
    if (v47 - 4 < 3)
    {
      return result;
    }

    sub_1AF9B3B5C(&v45, &v35);
    sub_1AF9B3BE4(&v35, v40);
    if (!v40[0] && v40[1] == 1)
    {
      v6 = MEMORY[0x1E69E6720];
      sub_1AF9B3F34(&v35, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
      return sub_1AF9B3F34(v40, &qword_1EB641248, &type metadata for VFXObjectReference, v6);
    }

    sub_1AF4470F0(v2);
    sub_1AF640200(v40, v41);
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v41, ObjectType, a2);
    sub_1AF9B3F34(&v35, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
    result = sub_1AF640200(v41, v2);
    v27 = 3;
    goto LABEL_29;
  }

  if (!v47)
  {
    if (!v45)
    {
      return result;
    }

    v7 = v45;
    sub_1AF4470F0(v2);
    swift_unknownObjectWeakInit();
    v42 = &off_1F256A470;
    swift_unknownObjectWeakAssign();
    v8 = v7;
    v9 = [v8 identifier];
    v10 = sub_1AFDFCEF8();
    v12 = v11;

    v43 = v10;
    v44 = v12;
    v13 = swift_getObjectType();
    (*(a2 + 16))(v41, v13, a2);
    sub_1AF44596C(v41, &v35);
    Strong = swift_unknownObjectWeakLoadStrong();

    sub_1AF4459C8(&v35);
    sub_1AF4459C8(v41);
    if (Strong)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
LABEL_14:
        v35 = v15;
        v39 = 0;
        return sub_1AF447144(&v35, v3);
      }

      swift_unknownObjectRelease();
    }

    v15 = 0;
    goto LABEL_14;
  }

  if (v47 == 1)
  {
    return sub_1AF4470F0(&v45);
  }

  sub_1AF4470F0(v2);
  v16 = v45;
  v17 = v46;
  if (!v45)
  {
    v25 = 0;
    if (v46)
    {
      goto LABEL_24;
    }

LABEL_21:

LABEL_27:
    result = 0;
    goto LABEL_28;
  }

  swift_unknownObjectWeakInit();
  v36 = &off_1F256A470;
  swift_unknownObjectWeakAssign();
  v18 = v16;
  v19 = [v18 identifier];
  v20 = sub_1AFDFCEF8();
  v22 = v21;

  v37 = v20;
  v38 = v22;
  v23 = swift_getObjectType();
  (*(a2 + 16))(&v35, v23, a2);
  sub_1AF44596C(&v35, v41);
  v24 = swift_unknownObjectWeakLoadStrong();

  sub_1AF4459C8(v41);
  sub_1AF4459C8(&v35);
  if (v24)
  {
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (!v25)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v25 = 0;
  }

  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_24:
  v36 = 0;
  swift_unknownObjectWeakInit();
  v36 = &off_1F256A470;
  swift_unknownObjectWeakAssign();
  v28 = v17;
  v29 = [v28 identifier];
  v30 = sub_1AFDFCEF8();
  v32 = v31;

  v37 = v30;
  v38 = v32;
  v33 = swift_getObjectType();
  (*(a2 + 16))(&v35, v33, a2);
  sub_1AF44596C(&v35, v41);
  v34 = swift_unknownObjectWeakLoadStrong();

  sub_1AF4459C8(v41);
  sub_1AF4459C8(&v35);
  if (!v34)
  {
    goto LABEL_27;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

LABEL_28:
  *v3 = v25;
  *(v3 + 8) = result;
  v27 = 2;
LABEL_29:
  *(v3 + 32) = v27;
  return result;
}

void sub_1AF9AC90C()
{
  sub_1AF9B3B24(v0, v12);
  if (v13 > 2u)
  {
    if (v13 <= 4u)
    {
      if (v13 == 3)
      {
        sub_1AF9B3B5C(v12, v11);
        MEMORY[0x1B271ACB0](4);
        sub_1AF9B3BE4(v11, v10);
        if (v10[0] || v10[1] != 1)
        {
          sub_1AF640200(v10, v9);
          sub_1AFDFF2A8();
          sub_1AFDFD038();
          sub_1AF9B3F34(v11, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
          sub_1AF4459C8(v9);
        }

        else
        {
          sub_1AFDFF2A8();
          sub_1AF9B3F34(v11, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
        }
      }

      else
      {
        v8 = SLOBYTE(v12[0]);
        MEMORY[0x1B271ACB0](5);
        MEMORY[0x1B271ACB0](qword_1AFE8AD78[v8]);
        sub_1AFDFF2A8();
      }

      return;
    }

    if (v13 != 5)
    {
      MEMORY[0x1B271ACB0](0);
      return;
    }

    v1 = BYTE1(v12[0]);
    MEMORY[0x1B271ACB0](6);
    sub_1AFDFF2C8();
    sub_1AFBF62E0(v1);
    sub_1AFDFD038();
LABEL_12:

    return;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      MEMORY[0x1B271ACB0](2);
      sub_1AFDFD038();
      goto LABEL_12;
    }

    v4 = v12[0];
    v5 = v12[1];
    MEMORY[0x1B271ACB0](3);
    if (v4)
    {
      sub_1AFDFF2A8();
      v6 = v4;
      sub_1AFDFDC58();

      if (v5)
      {
LABEL_17:
        sub_1AFDFF2A8();
        v7 = v5;
        sub_1AFDFDC58();

LABEL_24:
        return;
      }
    }

    else
    {
      sub_1AFDFF2A8();
      if (v5)
      {
        goto LABEL_17;
      }
    }

    sub_1AFDFF2A8();
    goto LABEL_24;
  }

  v2 = v12[0];
  MEMORY[0x1B271ACB0](1);
  sub_1AFDFF2A8();
  if (v2)
  {
    v3 = v2;
    sub_1AFDFDC58();
  }
}

uint64_t sub_1AF9ACBC8()
{
  sub_1AFDFF288();
  sub_1AF9AC90C();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9ACC0C()
{
  sub_1AFDFF288();
  sub_1AF9AC90C();
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF9ACC78()
{
  sub_1AF9B4190(0, &unk_1ED72DF20, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v14[-v2];
  v4 = sub_1AFDFCEF8();
  v6 = v5;
  v15 = v4;
  v16 = v5;
  strcpy(v14, "VFXTriggerType");
  v14[15] = -18;
  v7 = sub_1AFDFC328();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_1AF4486E4();
  v8 = sub_1AFDFDEF8();
  v10 = v9;
  v12 = v11;
  sub_1AF7B9068(v3);
  if ((v12 & 1) == 0)
  {
    v4 = sub_1AF9AADA8(v8, v10, 28239, 0xE200000000000000, v4, v6);
  }

  return v4;
}

uint64_t sub_1AF9ACE28()
{
  v1 = v0[4];
  sub_1AF448650(v0[3]);

  (*(*v0 + 152))(v27, v2);
  v3 = v28;
  v34 = v27[0];
  v35[0] = v28;

  v4 = MEMORY[0x1E69E62F8];
  sub_1AF9B3F34(&v34, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v33 = v27[1];
  sub_1AF9B3F34(&v33, &qword_1EB638968, &type metadata for TypeConstraint, v4);
  v32 = v27[2];
  sub_1AF9B3F34(&v32, &qword_1EB638968, &type metadata for TypeConstraint, v4);
  v31 = v27[3];
  sub_1AF9B4130(&v31, sub_1AF445C2C);
  sub_1AF9B4130(v35, sub_1AF445C2C);
  v30 = v29;
  sub_1AF9B3F34(&v30, &qword_1EB638978, &type metadata for AnyValue, v4);
  v5 = *(v1 + 16);
  if (v5 == *(v3 + 16))
  {
    if (v5 >= 2)
    {
      v8 = (v1 + 40);
      v9 = (v3 + 56);
      v6 = MEMORY[0x1E69E7CC0];
      v10 = 1;
      v11 = (v3 + 56);
      do
      {
        v12 = v5;
        v14 = *v8++;
        v13 = v14;
        v16 = *v11;
        v11 += 2;
        v15 = v16;
        if (v16)
        {
          v17 = *(v9 - 1);
          sub_1AF442064(v13);
          v18 = v15;
        }

        else
        {
          sub_1AF442064(v13);
          v19 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v19);

          v17 = 0x6D61726170;
          v18 = 0xE500000000000000;
        }

        v20 = swift_allocObject();
        *(v20 + 16) = v17;
        *(v20 + 24) = v18;

        v21 = sub_1AF937FF8(0, v13);
        if ((~v21 & 0xF000000000000007) == 0)
        {
          sub_1AF442064(v13);
          v21 = v13;
        }

        *(v20 + 32) = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1AF420C34(0, *(v6 + 2) + 1, 1, v6);
        }

        v23 = *(v6 + 2);
        v22 = *(v6 + 3);
        if (v23 >= v22 >> 1)
        {
          v6 = sub_1AF420C34(v22 > 1, v23 + 1, 1, v6);
        }

        sub_1AF445BE4(v13);
        *(v6 + 2) = v23 + 1;
        v24 = &v6[40 * v23];
        *(v24 + 4) = v20 | 0x7000000000000004;
        ++v10;
        v24[40] = 1;
        *(v24 + 3) = xmmword_1AFE4C460;
        v24[64] = 1;
        v9 = v11;
        v5 = v12;
      }

      while (v12 != v10);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    sub_1AF9B4130(v35, sub_1AF445C2C);

    return v6;
  }

  else
  {
    sub_1AFDFE218();

    v25 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v25);

    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
    v26 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v26);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF9AD25C()
{
  v1 = sub_1AF9B3298(v0);
  v2 = sub_1AFA5413C(v1);

  return v2;
}

uint64_t sub_1AF9AD2A8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9AD31C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF9AD370@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF9AD400@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF9AD458(uint64_t a1)
{
  v2 = sub_1AF9B4030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF9AD494(uint64_t a1)
{
  v2 = sub_1AF9B4030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF9AD4D0(void *a1)
{
  v2 = v1;
  sub_1AF9B4084(0, &qword_1EB6412A8, sub_1AF9B4030, &type metadata for OnTriggerNode.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9B4030();
  sub_1AFDFF3F8();
  v11[1] = *(v2 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType);
  type metadata accessor for VFXTriggerType(0);
  sub_1AF9B40EC(&qword_1EB6412B0);
  sub_1AFDFE918();
  return (*(v6 + 8))(v9, v5);
}

void sub_1AF9AD678(void *a1)
{
  v3 = v1;
  sub_1AF9B4084(0, &qword_1EB641290, sub_1AF9B4030, &type metadata for OnTriggerNode.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9B4030();
  sub_1AFDFF3B8();
  if (!v2)
  {
    type metadata accessor for VFXTriggerType(0);
    sub_1AF9B40EC(&qword_1EB6412A0);
    sub_1AFDFE768();
    (*(v7 + 8))(v10, v6);
    v11 = *(v3 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType);
    *(v3 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = v12[1];
  }
}

double sub_1AF9AD858@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 6;
  return result;
}

uint64_t sub_1AF9AD93C@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC0000000000000A0;
  *(v5 + 16) = v6;
  *(v3 + 40) = v5 | 0x8000000000000000;
  sub_1AF9B4270(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v7 = swift_allocObject();
  *(v7 + 64) = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE4C620;
  *(v7 + 32) = xmmword_1AFE87170;
  swift_unknownObjectWeakInit();
  v21 = 0;
  swift_unknownObjectWeakAssign();
  v22 = 0x3E6C6C756E3CLL;
  v23 = 0xE600000000000000;
  type metadata accessor for ImplicitWorldObjectNode(0);
  v8 = swift_allocObject();
  sub_1AF44596C(&v20, v19);
  sub_1AF44596C(v19, v8 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference);
  *(v8 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic) = xmmword_1AFE8A430;
  v9 = MEMORY[0x1E69E7CC0];
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = v9;
  sub_1AFDFC308();
  sub_1AF4459C8(v19);
  sub_1AF4459C8(&v20);
  v24 = type metadata accessor for Node();
  v20 = 0xC000000000000000;
  v21 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC000000000000000;
  *(v7 + 104) = &type metadata for AnyValue;
  v11 = swift_allocObject();
  *(v7 + 80) = v11;
  sub_1AF914FF0(&v20, v11 + 16);
  *(v7 + 72) = v10;
  sub_1AF9151B0(&v20);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE4C6B0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xC000000000000008;
  *(v12 + 32) = v13 | 0x8000000000000000;
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE4C420;
  *(v14 + 16) = v15 | 0x2000000000000000;
  *(v12 + 40) = v14 | 0x8000000000000000;
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AFE4C420;
  *(v16 + 16) = v17 | 0x2000000000000000;
  *(v12 + 48) = v16 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v12 + 56) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v12;
  a1[2] = &unk_1F24F0B30;
  a1[3] = &unk_1F24F0B60;
  a1[4] = &unk_1F24F0BA0;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF9ADCB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC0000000000000A0;
  *(v5 + 16) = v6;
  *(v3 + 40) = v5 | 0x8000000000000000;
  sub_1AF9B4270(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v7 = swift_allocObject();
  *(v7 + 64) = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE4C620;
  *(v7 + 32) = xmmword_1AFE87170;
  swift_unknownObjectWeakInit();
  v23 = 0;
  swift_unknownObjectWeakAssign();
  v24 = 0x3E6C6C756E3CLL;
  v25 = 0xE600000000000000;
  type metadata accessor for ImplicitWorldObjectNode(0);
  v8 = swift_allocObject();
  sub_1AF44596C(&v22, v21);
  sub_1AF44596C(v21, v8 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference);
  *(v8 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic) = xmmword_1AFE8A430;
  v9 = MEMORY[0x1E69E7CC0];
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = v9;
  sub_1AFDFC308();
  sub_1AF4459C8(v21);
  sub_1AF4459C8(&v22);
  v26 = type metadata accessor for Node();
  v22 = 0xC000000000000000;
  v23 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC000000000000000;
  *(v7 + 104) = &type metadata for AnyValue;
  v11 = swift_allocObject();
  *(v7 + 80) = v11;
  sub_1AF914FF0(&v22, v11 + 16);
  *(v7 + 72) = v10;
  sub_1AF9151B0(&v22);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE4C6A0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xC000000000000008;
  *(v12 + 32) = v13 | 0x8000000000000000;
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE4C420;
  *(v14 + 16) = v15 | 0x2000000000000000;
  *(v12 + 40) = v14 | 0x8000000000000000;
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AFE4C420;
  *(v16 + 16) = v17 | 0x2000000000000000;
  *(v12 + 48) = v16 | 0x8000000000000000;
  v18 = swift_allocObject();
  *(v18 + 16) = 0xC000000000000058;
  *(v12 + 56) = v18 | 0x8000000000000000;
  v19 = swift_allocObject();
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000C0;
  *(v19 + 16) = result | 0x6000000000000000;
  *(v12 + 64) = v19 | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v12;
  a1[2] = &unk_1F24EF690;
  a1[3] = &unk_1F24EF6C0;
  a1[4] = &unk_1F24EF700;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF9AE06C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WorldObjectNode(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    sub_1AF44596C(result + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF4459C8(v4);
    if (!Strong)
    {
LABEL_5:
      result = 0;
      goto LABEL_6;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      goto LABEL_5;
    }
  }

LABEL_6:
  *a1 = result;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1AF9AE114@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C6B0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C420;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v4 + 40) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C420;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v4 + 48) = v8 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v4 + 56) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  v11 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24EFF40;
  a1[3] = v11;
  a1[4] = &unk_1F24EFF70;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF9AE2E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1AFDFCEF8();
  v4 = v3;
  if (v2 == sub_1AFDFCEF8() && v4 == v5)
  {

    goto LABEL_8;
  }

  v7 = sub_1AFDFEE28();

  if (v7)
  {
LABEL_8:
    v20 = MEMORY[0x1E69E6F90];
    sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AFE4C680;
    v21 = swift_allocObject();
    *(v21 + 16) = 0xC000000000000008;
    *(v9 + 32) = v21 | 0x8000000000000000;
    v22 = swift_allocObject();
    *(v22 + 16) = 0xC000000000000020;
    *(v9 + 40) = v22 | 0x8000000000000000;
    v23 = swift_allocObject();
    *(v23 + 16) = 0xC000000000000010;
    *(v9 + 48) = v23 | 0x8000000000000000;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AFE4C680;
    v24 = swift_allocObject();
    *(v24 + 16) = 0xC000000000000008;
    *(v12 + 32) = v24 | 0x8000000000000000;
    v25 = swift_allocObject();
    *(v25 + 16) = 0xC000000000000020;
    *(v12 + 40) = v25 | 0x8000000000000000;
    v26 = swift_allocObject();
    *(v26 + 16) = 0xC000000000000010;
    *(v12 + 48) = v26 | 0x8000000000000000;
    sub_1AF9B4270(0, &unk_1EB630980, &type metadata for AnyValue, v20);
    v15 = swift_allocObject();
    *(v15 + 64) = MEMORY[0x1E69E6530];
    *(v15 + 16) = xmmword_1AFE4C680;
    *(v15 + 32) = xmmword_1AFE87F70;
    v28 = &type metadata for VFXKeyCode;
    LOBYTE(v27[0]) = 0;
    sub_1AF975674(v27, (v15 + 72));
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v27);
    v28 = MEMORY[0x1E69E6370];
    LOBYTE(v27[0]) = 1;
    sub_1AF975674(v27, (v15 + 112));
    result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v27);
    v17 = &unk_1F24EFE40;
    v18 = &unk_1F24EFDF0;
    v19 = &unk_1F24EFDC0;
    goto LABEL_9;
  }

  v8 = MEMORY[0x1E69E6F90];
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C620;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC000000000000008;
  *(v9 + 32) = v10 | 0x8000000000000000;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000020;
  *(v9 + 40) = v11 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE4C620;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xC000000000000008;
  *(v12 + 32) = v13 | 0x8000000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = 0xC000000000000020;
  *(v12 + 40) = v14 | 0x8000000000000000;
  sub_1AF9B4270(0, &unk_1EB630980, &type metadata for AnyValue, v8);
  v15 = swift_allocObject();
  *(v15 + 64) = MEMORY[0x1E69E6530];
  *(v15 + 16) = xmmword_1AFE4C620;
  *(v15 + 32) = xmmword_1AFE87F70;
  v28 = &type metadata for VFXKeyCode;
  LOBYTE(v27[0]) = 0;
  sub_1AF975674(v27, (v15 + 72));
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v27);
  v17 = &unk_1F24EFF00;
  v18 = &unk_1F24EFEC0;
  v19 = &unk_1F24EFE90;
LABEL_9:
  *a1 = v9;
  a1[1] = v12;
  a1[2] = v19;
  a1[3] = v18;
  a1[4] = v17;
  a1[5] = v15;
  return result;
}

uint64_t sub_1AF9AE6FC@<X0>(_BYTE *a1@<X8>)
{

  v2 = sub_1AF9A8C08();

  v3 = sub_1AFDFCEF8();
  v5 = v4;
  if (v3 == sub_1AFDFCEF8() && v5 == v6)
  {

    goto LABEL_8;
  }

  v8 = sub_1AFDFEE28();

  if (v8)
  {
LABEL_8:

    v10 = sub_1AF9A11A0(1, 0);

    *a1 = v2;
    a1[1] = v10 & 1;
    goto LABEL_9;
  }

  *a1 = v2;
  a1[1] = 0;
LABEL_9:
  a1[32] = 4;
  return result;
}

uint64_t sub_1AF9AE854@<X0>(uint64_t a1@<X8>)
{

  v2 = sub_1AF9A1B58(1, 0);
  v4 = v3;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_1AF9AE8C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC0000000000000A0;
  *(v5 + 16) = v6;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC0000000000000A0;
  *(v7 + 16) = v8;
  *(v3 + 48) = v7 | 0x8000000000000000;
  sub_1AF9B4270(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v9 = swift_allocObject();
  *(v9 + 64) = MEMORY[0x1E69E6530];
  *(v9 + 16) = xmmword_1AFE4C680;
  *(v9 + 32) = xmmword_1AFE87170;
  swift_unknownObjectWeakInit();
  v31 = 0;
  swift_unknownObjectWeakAssign();
  v32 = 0x3E6C6C756E3CLL;
  v33 = 0xE600000000000000;
  type metadata accessor for ImplicitWorldObjectNode(0);
  v10 = swift_allocObject();
  sub_1AF44596C(&v30, v29);
  sub_1AF44596C(v29, v10 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference);
  *(v10 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic) = xmmword_1AFE8A440;
  v11 = MEMORY[0x1E69E7CC0];
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = v11;
  sub_1AFDFC308();
  sub_1AF4459C8(v29);
  sub_1AF4459C8(&v30);
  v12 = type metadata accessor for Node();
  v34 = v12;
  v30 = 0xC000000000000000;
  v31 = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xC000000000000000;
  *(v9 + 104) = &type metadata for AnyValue;
  v14 = swift_allocObject();
  *(v9 + 80) = v14;
  sub_1AF914FF0(&v30, v14 + 16);
  *(v9 + 72) = v13;
  sub_1AF9151B0(&v30);
  v31 = 0;
  swift_unknownObjectWeakInit();
  v31 = 0;
  swift_unknownObjectWeakAssign();
  v32 = 0x3E6C6C756E3CLL;
  v33 = 0xE600000000000000;
  v15 = swift_allocObject();
  sub_1AF44596C(&v30, v29);
  sub_1AF44596C(v29, v15 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference);
  *(v15 + OBJC_IVAR____TtC3VFX15WorldObjectNode_semantic) = xmmword_1AFE8A440;
  v15[4] = 0;
  v15[2] = MEMORY[0x1E69E7CC0];
  v15[3] = 0;
  sub_1AFDFC308();
  sub_1AF4459C8(v29);
  sub_1AF4459C8(&v30);
  v34 = v12;
  v30 = 0xC000000000000000;
  v31 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = 0xC000000000000000;
  *(v9 + 144) = &type metadata for AnyValue;
  v17 = swift_allocObject();
  *(v9 + 120) = v17;
  sub_1AF914FF0(&v30, v17 + 16);
  *(v9 + 112) = v16;
  sub_1AF9151B0(&v30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AFE4C5F0;
  v19 = swift_allocObject();
  *(v19 + 16) = 0xC000000000000008;
  *(v18 + 32) = v19 | 0x8000000000000000;
  v20 = swift_allocObject();
  *(v20 + 16) = 0xC0000000000000A0;
  *(v18 + 40) = v20 | 0x8000000000000000;
  v21 = swift_allocObject();
  *(v21 + 16) = 0xC0000000000000A0;
  *(v18 + 48) = v21 | 0x8000000000000000;
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AFE4C430;
  *(v22 + 16) = v23 | 0x2000000000000000;
  *(v18 + 56) = v22 | 0x8000000000000000;
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1AFE4C430;
  *(v24 + 16) = v25 | 0x2000000000000000;
  *(v18 + 64) = v24 | 0x8000000000000000;
  v26 = swift_allocObject();
  *(v26 + 16) = 0xC000000000000058;
  *(v18 + 72) = v26 | 0x8000000000000000;
  v27 = swift_allocObject();
  *(v27 + 16) = 0xC000000000000058;
  *(v18 + 80) = v27 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v18 + 88) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v18;
  a1[2] = &unk_1F24EF570;
  a1[3] = &unk_1F24EF5A0;
  a1[4] = &unk_1F24EF5F0;
  a1[5] = v9;
  return result;
}

uint64_t sub_1AF9AEE14@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WorldObjectNode(0);
  v2 = swift_dynamicCastClass();
  if (v2 && (sub_1AF44596C(v2 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v7), Strong = swift_unknownObjectWeakLoadStrong(), sub_1AF4459C8(v7), Strong))
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v4 = 0;
  }

  result = swift_dynamicCastClass();
  if (result)
  {
    sub_1AF44596C(result + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, v7);
    v6 = swift_unknownObjectWeakLoadStrong();
    sub_1AF4459C8(v7);
    if (!v6)
    {
LABEL_10:
      result = 0;
      goto LABEL_11;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      goto LABEL_10;
    }
  }

LABEL_11:
  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 32) = 2;
  return result;
}

void sub_1AF9AEF40(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
  if (v3 != *v2)
  {
    v4 = a2;
    v6 = HIDWORD(a2);
    *v2 = v3;

    v28 = v2;
    v2[1] = MEMORY[0x1E69E7CC8];
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v56 = qword_1ED73B840;
    v57 = 0;
    v58 = 2;
    v59 = 0;
    v60 = 2;
    v61 = 0;
    sub_1AF5C9198(v34);
    sub_1AF9B4190(0, &qword_1ED726A10, sub_1AF66FF40, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AFE431C0;
    *(v7 + 56) = &type metadata for EmitterReference;
    *(v7 + 64) = &off_1F2563D20;
    *(v7 + 32) = v4;
    v8 = v7 + 32;
    *(v7 + 36) = v6;
    sub_1AF5FDBF0(v35);
    sub_1AF9B4130(v34, sub_1AF9B41F4);
    swift_setDeallocating();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
    swift_deallocClassInstance();
    v47[0] = v35[0];
    v47[1] = v35[1];
    v48 = v36;
    sub_1AF6B06C0(a1, v47, 0x200000000, v37);
    v27 = *v37;
    if (*v37)
    {
      v9 = *&v37[40];
      v10 = *(&v38 + 1);
      v11 = *(&v39 + 1);
      v41 = *&v37[8];
      v42 = *&v37[24];
      v25 = v40;
      v26 = v39;
      if (v40 > 0 && *(&v38 + 1))
      {
        v12 = *(*(&v39 + 1) + 32);
        v13 = *(v39 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v33[2] = *&v37[32];
        v33[3] = v38;
        v33[4] = v39;
        v33[5] = v40;
        v33[0] = *v37;
        v33[1] = *&v37[16];
        sub_1AF5DD298(v33, v51);
        v14 = (v9 + 24);
        v24 = v13;
        do
        {
          v32 = v10;
          v15 = *(v14 - 6);
          v16 = *(v14 - 5);
          v17 = *(v14 - 4);
          v30 = *v14;
          v31 = *(v14 - 1);
          v18 = v14[2];
          v29 = v14[1];
          if (v13)
          {
            v19 = *(v18 + 376);

            os_unfair_lock_lock(v19);
            os_unfair_lock_lock(*(v18 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v12);
          v20 = *(v11 + 64);
          v49[0] = *(v11 + 48);
          v49[1] = v20;
          v50 = *(v11 + 80);
          v21 = *(v11 + 32);
          v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;

          *(v11 + 48) = ecs_stack_allocator_allocate(v21, 48 * v22, 8);
          *(v11 + 56) = v22;
          *(v11 + 72) = 0;
          *(v11 + 80) = 0;
          *(v11 + 64) = 0;

          LOBYTE(v43) = 1;
          v51[0] = v26;
          v51[1] = v18;
          v51[2] = v11;
          v51[3] = v17;
          v51[4] = (v16 - v15 + v17);
          v51[5] = v25;
          v51[6] = v15;
          v51[7] = v16;
          v51[8] = 0;
          v51[9] = 0;
          v52 = 1;
          v53 = v31;
          v54 = v30;
          v55 = v29;
          sub_1AFD10DA4(v51, v28);
          v44 = v27;
          v45 = v41;
          v46 = v42;
          sub_1AF630994(v11, &v44, v49);
          sub_1AF62D29C(v18);
          ecs_stack_allocator_pop_snapshot(v12);
          v13 = v24;
          if (v24)
          {
            os_unfair_lock_unlock(*(v18 + 344));
            os_unfair_lock_unlock(*(v18 + 376));
          }

          v14 += 6;
          v10 = v32 - 1;
        }

        while (v32 != 1);
        sub_1AF9B4130(v35, sub_1AF9B41F4);
        v23 = MEMORY[0x1E69E6720];
        sub_1AF9B3F34(v37, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
        sub_1AF9B3F34(v37, &qword_1ED725EA0, &type metadata for QueryResult, v23);
      }

      else
      {
        sub_1AF9B4130(v35, sub_1AF9B41F4);
        sub_1AF9B3F34(v37, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      sub_1AF9B4130(v35, sub_1AF9B41F4);
    }
  }
}

void *sub_1AF9AF45C@<X0>(void *a1@<X8>)
{
  *a1 = -1;
  result = sub_1AF42D750(MEMORY[0x1E69E7CC0]);
  a1[1] = result;
  return result;
}

__n128 sub_1AF9AF494@<Q0>(void *a1@<X8>)
{
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C6B0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000010;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C430;
  *(v4 + 16) = v5 | 0x2000000000000000;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C430;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v2 + 48) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  result = xmmword_1AFE4C430;
  *(v9 + 16) = xmmword_1AFE4C430;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v2 + 56) = v8 | 0x8000000000000000;
  v11 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = &unk_1F24F1FE0;
  a1[3] = v11;
  a1[4] = &unk_1F24F2010;
  a1[5] = v11;
  return result;
}

uint64_t sub_1AF9AF664@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  *(v3 + 40) = 0xA000000000000048;
  sub_1AF9B4270(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v5 = swift_allocObject();
  *(v5 + 64) = MEMORY[0x1E69E6530];
  *(v5 + 16) = xmmword_1AFE4C620;
  *(v5 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(11, 0, (v5 + 72));
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE86410;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000008;
  *(v6 + 32) = v7 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C430;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v6 + 40) = v8 | 0x8000000000000000;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C430;
  *(v10 + 16) = v11 | 0x2000000000000000;
  *(v6 + 48) = v10 | 0x8000000000000000;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE4C430;
  *(v12 + 16) = v13 | 0x2000000000000000;
  *(v6 + 56) = v12 | 0x8000000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = 0xC000000000000010;
  *(v6 + 64) = v14 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000038;
  *(v6 + 72) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v6;
  a1[2] = &unk_1F24F1CF8;
  a1[3] = &unk_1F24F1D28;
  a1[4] = &unk_1F24F1D68;
  a1[5] = v5;
  return result;
}

uint64_t sub_1AF9AF8E8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WorldObjectNode(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    sub_1AF44596C(v2 + OBJC_IVAR____TtC3VFX15WorldObjectNode_reference, &v4);
  }

  else
  {
    v4 = xmmword_1AFE21110;
    v5 = 0;
    v6 = 0;
  }

  result = sub_1AF9B3B5C(&v4, a1);
  *(a1 + 32) = 3;
  return result;
}

uint64_t sub_1AF9AF984@<X0>(void *a1@<X8>)
{
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC0000000000000A8;
  *(v2 + 32) = result | 0x8000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = &unk_1F24F3780;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
  return result;
}

uint64_t sub_1AF9AFA44(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF44596C(v1 + OBJC_IVAR____TtC3VFX9StateNode_stateRef, v3);
  sub_1AF9B3AD0();
  sub_1AF974C50();
  return sub_1AF4459C8(v3);
}

uint64_t sub_1AF9AFAD8(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AF9B3A20();
  result = sub_1AF974940();
  if (!v2)
  {
    return sub_1AF9B3A74(&v4, v1 + OBJC_IVAR____TtC3VFX9StateNode_stateRef);
  }

  return result;
}

uint64_t sub_1AF9AFB70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC3VFX9StateNode_stateRef;
  sub_1AF44596C(v3 + OBJC_IVAR____TtC3VFX9StateNode_stateRef, v8);
  sub_1AF62C830(v8, ObjectType, a2, v9);
  sub_1AF4459C8(v8);
  return sub_1AF9B3A74(v9, v3 + v6);
}

char *sub_1AF9AFC20(void *a1)
{
  v2 = (swift_allocObject() + OBJC_IVAR____TtC3VFX9StateNode_stateRef);
  v2[1] = 0;
  swift_unknownObjectWeakInit();
  v2[1] = 0;
  swift_unknownObjectWeakAssign();
  v2[2] = 0x3E6C6C756E3CLL;
  v2[3] = 0xE600000000000000;
  sub_1AF9B3FD4(a1 + OBJC_IVAR____TtC3VFX9StateNode_stateRef, v2);
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF9AFCB4()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF4459C8(v0 + OBJC_IVAR____TtC3VFX9StateNode_stateRef);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9AFDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C620;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xC000000000000008;
  *(v10 + 32) = v11 | 0x8000000000000000;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v10 + 40) = v12 | 0x8000000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v13 + 32) = result | 0x8000000000000000;
  *a5 = v10;
  a5[1] = v13;
  a5[2] = a2;
  a5[3] = a3;
  v15 = MEMORY[0x1E69E7CC0];
  a5[4] = a4;
  a5[5] = v15;
  return result;
}

uint64_t sub_1AF9AFF24@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC0000000000000A0;
  *(v2 + 40) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000070;
  *(v2 + 48) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v6 + 32) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v6;
  a1[2] = &unk_1F24F0CD0;
  a1[3] = &unk_1F24F0D00;
  v8 = MEMORY[0x1E69E7CC0];
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF9B0090@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000070;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000058;
  *(v3 + 48) = v6 | 0x8000000000000000;
  sub_1AF9B4270(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 64) = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE4C680;
  *(v7 + 32) = xmmword_1AFE87F70;
  *(v7 + 104) = v8;
  *(v7 + 72) = xmmword_1AFE87170;
  v11[3] = MEMORY[0x1E69E6448];
  LODWORD(v11[0]) = 0;
  sub_1AF975674(v11, (v7 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v9 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v9;
  a1[2] = &unk_1F24F3160;
  a1[3] = &unk_1F24F3190;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v7;
  return result;
}

void sub_1AF9B026C(uint64_t a1, uint64_t a2, float a3)
{
  v7 = [v3 worldRef];
  if (v7)
  {
    v12 = v7;
    if (sub_1AF1CFF64(v7, 1))
    {
    }

    else
    {
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v12;
      *(v9 + 24) = a1;
      *(v9 + 32) = a2;
      *(v9 + 40) = a3;
      aBlock[4] = sub_1AF9B3F90;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AFCDA98C;
      aBlock[3] = &unk_1F24E6168;
      v10 = _Block_copy(aBlock);
      v11 = v12;

      [v8 postCommandWithWorldRef:v11 applyBlock:v10];
      _Block_release(v10);
    }
  }
}

uint64_t sub_1AF9B03F4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float a5)
{
  v7 = sub_1AF1CF8AC(a1);
  v8 = *(sub_1AF0FB884(v7) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v9 = *(v8 + 184);

  v10 = sub_1AF6D6574(&type metadata for IncommingTickedEventsComponent, &off_1F255D248, v9);

  v11 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
  v12 = @"VFXTriggerTypeTick";

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1AF424088(0, *(v10 + 16) + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  v16 = *(v10 + 16);
  v15 = *(v10 + 24);
  if (v16 >= v15 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1AF424088(v15 > 1, v16 + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  *(v10 + 16) = v16 + 1;
  v17 = v10 + 48 * v16;
  *(v17 + 32) = v12;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *(v17 + 56) = v11 + a5;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 76) = 0;
  v18 = *(v8 + 184);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v14);

  sub_1AF6D655C(&type metadata for IncommingTickedEventsComponent, &off_1F255D248, v18, sub_1AF9B3FB8);

  swift_unknownObjectRelease();
}

uint64_t sub_1AF9B069C@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6B0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000070;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000058;
  *(v3 + 48) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = 0xC000000000000010;
  *(v3 + 56) = v7 | 0x8000000000000000;
  sub_1AF9B4270(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E6530];
  *(v8 + 64) = MEMORY[0x1E69E6530];
  *(v8 + 16) = xmmword_1AFE4C6B0;
  *(v8 + 32) = xmmword_1AFE87F70;
  *(v8 + 104) = v9;
  *(v8 + 72) = xmmword_1AFE87170;
  v12[3] = MEMORY[0x1E69E6448];
  LODWORD(v12[0]) = 1065353216;
  sub_1AF975674(v12, (v8 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  *(v8 + 184) = v9;
  *(v8 + 152) = xmmword_1AFE87170;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v10 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v10;
  a1[2] = &unk_1F24EF1D0;
  a1[3] = &unk_1F24EF200;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v8;
  return result;
}

uint64_t sub_1AF9B08D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000070;
  *(v3 + 40) = v5 | 0x8000000000000000;
  sub_1AF9B4270(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E6530];
  *(v6 + 64) = MEMORY[0x1E69E6530];
  *(v6 + 16) = xmmword_1AFE4C620;
  *(v6 + 32) = xmmword_1AFE87F70;
  *(v6 + 104) = v7;
  *(v6 + 72) = xmmword_1AFE87170;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v8 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v8;
  a1[2] = &unk_1F24EEB80;
  a1[3] = &unk_1F24EEBB0;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v6;
  return result;
}

uint64_t sub_1AF9B0A80@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE431C0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000020;
  *(v3 + 32) = v4 | 0x8000000000000000;
  sub_1AF9B4270(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  v8[3] = &type metadata for VFXKeyCode;
  LOBYTE(v8[0]) = 0;
  sub_1AF975674(v8, (v5 + 32));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000010;
  *(v6 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v6;
  a1[2] = &unk_1F24EE9E0;
  a1[3] = &unk_1F24EEA10;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v5;
  return result;
}

double sub_1AF9B0C0C@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for simd_float4x4(0);
  v2 = sub_1AFDFD488();
  *(v2 + 16) = 3;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *a1 = v2;
  return result;
}

__n128 sub_1AF9B0C8C@<Q0>(uint64_t *a1@<X8>)
{
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C6B0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 4;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C440;
  *(v7 + 24) = v8 | 0x2000000000000000;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v4 + 40) = v6 | 0x8000000000000000;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 4;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C440;
  *(v10 + 24) = v11 | 0x2000000000000000;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v4 + 48) = v9 | 0x8000000000000000;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 4;
  v14 = swift_allocObject();
  result = xmmword_1AFE4C440;
  *(v14 + 16) = xmmword_1AFE4C440;
  *(v13 + 24) = v14 | 0x2000000000000000;
  *(v12 + 16) = v13 | 0x2000000000000000;
  *(v4 + 56) = v12 | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  v16 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F21F8;
  a1[3] = v16;
  a1[4] = &unk_1F24F2228;
  a1[5] = v16;
  return result;
}

uint64_t sub_1AF9B0ECC()
{
  v0 = sub_1AFA56CA0(&unk_1F2505120);
  sub_1AF9B3F34(&unk_1F2505140, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  v1 = sub_1AFA5413C(v0);

  return v1;
}

__n128 sub_1AF9B0F70@<Q0>(void *a1@<X8>)
{
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C680;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C440;
  *(v4 + 24) = v5 | 0x2000000000000000;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 4;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C440;
  *(v7 + 24) = v8 | 0x2000000000000000;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v2 + 40) = v6 | 0x8000000000000000;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 4;
  v11 = swift_allocObject();
  result = xmmword_1AFE4C440;
  *(v11 + 16) = xmmword_1AFE4C440;
  *(v10 + 24) = v11 | 0x2000000000000000;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v2 + 48) = v9 | 0x8000000000000000;
  v13 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = &unk_1F24ED458;
  a1[3] = v13;
  a1[4] = &unk_1F24ED488;
  a1[5] = v13;
  return result;
}

uint64_t sub_1AF9B1168@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1AF42C914(MEMORY[0x1E69E7CC0]);
  v3 = sub_1AFAB6C14(v2, 2);

  *a1 = v3;
  return result;
}

uint64_t sub_1AF9B11D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C680;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000020;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000020;
  *(v3 + 48) = v6 | 0x8000000000000000;
  sub_1AF9B4270(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v7 = swift_allocObject();
  *(v7 + 64) = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1AFE4C680;
  *(v7 + 32) = xmmword_1AFE87F70;
  v15 = &type metadata for VFXHandTracker.HandChirality;
  LOBYTE(v14[0]) = 1;
  sub_1AF975674(v14, (v7 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
  v15 = &type metadata for VFXHandTracker.Joint;
  LOBYTE(v14[0]) = 11;
  sub_1AF975674(v14, (v7 + 112));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C680;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC000000000000008;
  *(v8 + 32) = v9 | 0x8000000000000000;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 4;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE4C440;
  *(v11 + 24) = v12 | 0x2000000000000000;
  *(v10 + 16) = v11 | 0x2000000000000000;
  *(v8 + 40) = v10 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000010;
  *(v8 + 48) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v8;
  a1[2] = &unk_1F24F2288;
  a1[3] = &unk_1F24F22B8;
  a1[4] = &unk_1F24F2308;
  a1[5] = v7;
  return result;
}

uint64_t sub_1AF9B1458@<X0>(_BYTE *a1@<X8>)
{

  v2 = sub_1AF9A8C18();

  v3 = sub_1AF9A8C28();

  *a1 = v2 & 1;
  a1[1] = v3;
  a1[32] = 5;
  return result;
}

uint64_t sub_1AF9B14F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C620;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000020;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000020;
  *(v3 + 40) = v5 | 0x8000000000000000;
  sub_1AF9B4270(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AFE4C620;
  v13 = &type metadata for VFXHandTracker.HandChirality;
  LOBYTE(v12[0]) = 1;
  sub_1AF975674(v12, (v6 + 32));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  v13 = &type metadata for VFXHandTracker.Joint;
  LOBYTE(v12[0]) = 11;
  sub_1AF975674(v12, (v6 + 72));
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C620;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 4;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C440;
  *(v9 + 24) = v10 | 0x2000000000000000;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v7 + 32) = v8 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000010;
  *(v7 + 40) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v7;
  a1[2] = &unk_1F24ED4D8;
  a1[3] = &unk_1F24ED508;
  a1[4] = &unk_1F24ED548;
  a1[5] = v6;
  return result;
}

double sub_1AF9B1730@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFE20150;
  *(a1 + 16) = xmmword_1AFE20160;
  *(a1 + 32) = xmmword_1AFE20180;
  *(a1 + 48) = xmmword_1AFE201A0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_1AF9B1B38@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0xC000000000000008;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE4C5F0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 4;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE4C440;
  *(v7 + 24) = v8 | 0x2000000000000000;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v4 + 40) = v6 | 0x8000000000000000;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE4C430;
  *(v9 + 16) = v10 | 0x2000000000000000;
  *(v4 + 48) = v9 | 0x8000000000000000;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AFE4C430;
  *(v11 + 16) = v12 | 0x2000000000000000;
  *(v4 + 56) = v11 | 0x8000000000000000;
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C430;
  *(v13 + 16) = v14 | 0x2000000000000000;
  *(v4 + 64) = v13 | 0x8000000000000000;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AFE4C430;
  *(v15 + 16) = v16 | 0x2000000000000000;
  *(v4 + 72) = v15 | 0x8000000000000000;
  v17 = swift_allocObject();
  *(v17 + 16) = 0xC000000000000058;
  *(v4 + 80) = v17 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v4 + 88) = result | 0x8000000000000000;
  *a1 = v2;
  a1[1] = v4;
  v19 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F0A60;
  a1[3] = v19;
  a1[4] = &unk_1F24F0A90;
  a1[5] = v19;
  return result;
}

char *sub_1AF9B1DF4(void *a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType);
  *(v2 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType) = v3;
  v4 = v3;
  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF9B1E44()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9B1F50@<X0>(void *a1@<X8>)
{
  sub_1AF9B4270(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C630;
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE4C440;
  *(v4 + 24) = v5 | 0x2000000000000000;
  *(v3 + 16) = v4 | 0x2000000000000000;
  *(v2 + 32) = v3 | 0x8000000000000000;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE4C430;
  *(v6 + 16) = v7 | 0x2000000000000000;
  *(v2 + 40) = v6 | 0x8000000000000000;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE4C430;
  *(v8 + 16) = v9 | 0x2000000000000000;
  *(v2 + 48) = v8 | 0x8000000000000000;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C430;
  *(v10 + 16) = v11 | 0x2000000000000000;
  *(v2 + 56) = v10 | 0x8000000000000000;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AFE4C430;
  *(v12 + 16) = v13 | 0x2000000000000000;
  *(v2 + 64) = v12 | 0x8000000000000000;
  v14 = swift_allocObject();
  *(v14 + 16) = 0xC000000000000058;
  *(v2 + 72) = v14 | 0x8000000000000000;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000058;
  *(v2 + 80) = result | 0x8000000000000000;
  v16 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = &unk_1F24EEFD0;
  a1[3] = v16;
  a1[4] = &unk_1F24EF000;
  a1[5] = v16;
  return result;
}

void destroy for TriggerAttachment(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 6)
  {
    v1 = *a1 + 6;
  }

  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 != 3 || (*(a1 + 8) & 0xF000000000000007) != 0)
      {
        return;
      }

      MEMORY[0x1B271E060]();
      goto LABEL_17;
    }

    v2 = *(a1 + 8);
  }

  else
  {
    if (v1)
    {
      if (v1 != 1)
      {
        return;
      }

LABEL_17:

      return;
    }

    v2 = *a1;
  }
}

uint64_t initializeWithCopy for TriggerAttachment(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 >= 6)
  {
    v2 = *a2 + 6;
  }

  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        v9 = *a2;
        *result = *a2;
        *(result + 32) = 0;
        v10 = result;
        v11 = v9;
        return v10;
      case 1:
        v14 = *(a2 + 8);
        *result = *a2;
        *(result + 8) = v14;
        *(result + 32) = 1;
        v15 = result;

        return v15;
      case 2:
        v3 = *a2;
        v4 = *(a2 + 8);
        *result = *a2;
        *(result + 8) = v4;
        *(result + 32) = 2;
        v5 = result;
        v6 = v3;
        v7 = v4;
        return v5;
    }

LABEL_15:
    v13 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v13;
    v8 = *(a2 + 32);
    goto LABEL_20;
  }

  if (v2 == 3)
  {
    if ((*(a2 + 8) & 0xF000000000000007) != 0)
    {
      v12 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v12;
    }

    else
    {
      v16 = result;
      v18 = swift_unknownObjectWeakCopyInit();
      v19 = *(a2 + 16);
      *(v18 + 8) = *(a2 + 8);
      *(v18 + 16) = v19;
      *(v16 + 24) = *(a2 + 24);

      result = v16;
    }

    v8 = 3;
    goto LABEL_20;
  }

  if (v2 == 4)
  {
    *result = *a2;
    v8 = 4;
    goto LABEL_20;
  }

  if (v2 != 5)
  {
    goto LABEL_15;
  }

  *result = *a2;
  v8 = 5;
LABEL_20:
  *(result + 32) = v8;
  return result;
}

uint64_t assignWithCopy for TriggerAttachment(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 32);
    if (v4 >= 6)
    {
      v4 = *a1 + 6;
    }

    if (v4 > 1)
    {
      if (v4 != 2)
      {
        if (v4 == 3 && (*(a1 + 8) & 0xF000000000000007) == 0)
        {
          MEMORY[0x1B271E060](a1);
        }

LABEL_15:
        v6 = *(a2 + 32);
        if (v6 >= 6)
        {
          v6 = *a2 + 6;
        }

        if (v6 <= 2)
        {
          switch(v6)
          {
            case 0:
              v12 = *a2;
              *a1 = *a2;
              *(a1 + 32) = 0;
              v13 = v12;
              return a1;
            case 1:
              *a1 = *a2;
              *(a1 + 8) = *(a2 + 1);
              *(a1 + 32) = 1;

              return a1;
            case 2:
              v7 = *a2;
              *a1 = *a2;
              v8 = *(a2 + 1);
              *(a1 + 8) = v8;
              *(a1 + 32) = 2;
              v9 = v7;
              v10 = v8;
              return a1;
          }

LABEL_29:
          v15 = *a2;
          v16 = a2[1];
          *(a1 + 32) = *(a2 + 32);
          *a1 = v15;
          *(a1 + 16) = v16;
          return a1;
        }

        switch(v6)
        {
          case 3:
            if ((*(a2 + 1) & 0xF000000000000007) != 0)
            {
              v14 = a2[1];
              *a1 = *a2;
              *(a1 + 16) = v14;
            }

            else
            {
              swift_unknownObjectWeakCopyInit();
              *(a1 + 8) = *(a2 + 1);
              *(a1 + 16) = *(a2 + 2);
              *(a1 + 24) = *(a2 + 3);
            }

            v11 = 3;
            break;
          case 4:
            *a1 = *a2;
            v11 = 4;
            break;
          case 5:
            *a1 = *a2;
            v11 = 5;
            break;
          default:
            goto LABEL_29;
        }

        *(a1 + 32) = v11;
        return a1;
      }

      v5 = *(a1 + 8);
    }

    else
    {
      if (v4)
      {
        if (v4 == 1)
        {
        }

        goto LABEL_15;
      }

      v5 = *a1;
    }

    goto LABEL_15;
  }

  return a1;
}

uint64_t initializeWithTake for TriggerAttachment(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2 >= 6)
  {
    v2 = *a2 + 6;
  }

  if (v2 <= 2)
  {
    if (!v2)
    {
      *result = *a2;
      *(result + 32) = 0;
      return result;
    }

    if (v2 == 1 || v2 == 2)
    {
      *result = *a2;
      *(result + 32) = v2;
      return result;
    }

    goto LABEL_15;
  }

  switch(v2)
  {
    case 3:
      if ((*(a2 + 8) & 0xF000000000000007) != 0)
      {
        v3 = *(a2 + 16);
        *result = *a2;
        *(result + 16) = v3;
      }

      else
      {
        result = swift_unknownObjectWeakTakeInit();
        *(result + 8) = *(a2 + 8);
        *(result + 16) = *(a2 + 16);
      }

      *(result + 32) = 3;
      break;
    case 4:
      *result = *a2;
      *(result + 32) = 4;
      break;
    case 5:
      *result = *a2;
      *(result + 32) = 5;
      return result;
    default:
LABEL_15:
      v4 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v4;
      *(result + 32) = *(a2 + 32);
      return result;
  }

  return result;
}

uint64_t assignWithTake for TriggerAttachment(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 32);
    if (v3 >= 6)
    {
      v3 = *result + 6;
    }

    if (v3 > 1)
    {
      if (v3 != 2)
      {
        if (v3 != 3 || (*(result + 8) & 0xF000000000000007) != 0)
        {
LABEL_17:
          v6 = *(a2 + 32);
          if (v6 >= 6)
          {
            v6 = *a2 + 6;
          }

          if (v6 > 2)
          {
            switch(v6)
            {
              case 3:
                if ((*(a2 + 8) & 0xF000000000000007) != 0)
                {
                  v7 = *(a2 + 16);
                  *result = *a2;
                  *(result + 16) = v7;
                }

                else
                {
                  result = swift_unknownObjectWeakTakeInit();
                  *(result + 8) = *(a2 + 8);
                  *(result + 16) = *(a2 + 16);
                }

                LOBYTE(v6) = 3;
                goto LABEL_35;
              case 4:
                *result = *a2;
                LOBYTE(v6) = 4;
                goto LABEL_35;
              case 5:
                *result = *a2;
                LOBYTE(v6) = 5;
                goto LABEL_35;
            }
          }

          else
          {
            if (!v6)
            {
              *result = *a2;
              *(result + 32) = 0;
              return result;
            }

            if (v6 == 1 || v6 == 2)
            {
              *result = *a2;
LABEL_35:
              *(result + 32) = v6;
              return result;
            }
          }

          v8 = *(a2 + 16);
          *result = *a2;
          *(result + 16) = v8;
          LOBYTE(v6) = *(a2 + 32);
          goto LABEL_35;
        }

        v4 = result;
        MEMORY[0x1B271E060]();
        goto LABEL_12;
      }

      v4 = result;

      v5 = *(v4 + 8);
    }

    else
    {
      if (v3)
      {
        if (v3 != 1)
        {
          goto LABEL_17;
        }

        v4 = result;
LABEL_12:

LABEL_16:
        result = v4;
        goto LABEL_17;
      }

      v5 = *result;
      v4 = result;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TriggerAttachment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 >= 7)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TriggerAttachment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF9B2894(uint64_t a1)
{
  result = *(a1 + 32);
  if (result >= 6)
  {
    return (*a1 + 6);
  }

  return result;
}

uint64_t sub_1AF9B28B0(uint64_t result, unsigned int a2)
{
  if (a2 > 5)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_1AF9B2908()
{
  result = qword_1EB641240;
  if (!qword_1EB641240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641240);
  }

  return result;
}

uint64_t sub_1AF9B2978(uint64_t a1, uint64_t a2)
{
  sub_1AF9B3B24(a1, v36);
  sub_1AF9B3B24(a2, v38);
  if (v37 <= 2u)
  {
    if (v37)
    {
      if (v37 == 1)
      {
        sub_1AF9B3B24(v36, v32);
        if (v39 != 1)
        {

          goto LABEL_36;
        }

        if (v32[0] == *v38)
        {
          goto LABEL_19;
        }

        goto LABEL_58;
      }

      sub_1AF9B3B24(v36, v32);
      v10 = *(&v32[0] + 1);
      v9 = *&v32[0];
      if (v39 != 2)
      {

        goto LABEL_36;
      }

      v11 = v38[0].i64[1];
      v12 = v38[0].i64[0];
      if (*&v32[0])
      {
        if (!v38[0].i64[0])
        {
LABEL_47:

          goto LABEL_67;
        }

        sub_1AF9B3D50();
        v13 = v9;
        v14 = v12;
        v15 = sub_1AFDFDC48();

        if ((v15 & 1) == 0)
        {

          v9 = v14;
          goto LABEL_47;
        }
      }

      else if (v38[0].i64[0])
      {
        v9 = v38[0].i64[1];
        v11 = *(&v32[0] + 1);
        v10 = v38[0].i64[0];
        goto LABEL_47;
      }

      if (v10)
      {
        if (v11)
        {
          sub_1AF9B3D50();
          v21 = v10;
          v22 = sub_1AFDFDC48();

          if ((v22 & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_59;
        }

        v11 = v10;
      }

      else
      {

        if (!v11)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      sub_1AF9B3B24(v36, v32);
      v8 = *&v32[0];
      if (v39)
      {

        goto LABEL_36;
      }

      v11 = v38[0].i64[0];
      if (*&v32[0])
      {
        if (v38[0].i64[0])
        {
          sub_1AF9B3D50();
          v19 = v8;
          v20 = sub_1AFDFDC48();

          if ((v20 & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_59;
        }

        v11 = *&v32[0];
      }

      else if (!v38[0].i64[0])
      {
        goto LABEL_59;
      }
    }

    goto LABEL_67;
  }

  if (v37 > 4u)
  {
    if (v37 != 5)
    {
      if (v39 == 6)
      {
        v18 = vorrq_s8(v38[0], v38[1]);
        if (!*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))
        {
          goto LABEL_59;
        }
      }

      goto LABEL_36;
    }

    sub_1AF9B3B24(v36, v32);
    if (v39 != 5)
    {
      goto LABEL_36;
    }

    if (LOBYTE(v32[0]) != v38[0].u8[0])
    {
LABEL_67:
      sub_1AF4470F0(v36);
      goto LABEL_68;
    }

    v3 = v38[0].i8[1];
    v4 = sub_1AFBF62E0(SBYTE1(v32[0]));
    v6 = v5;
    if (v4 == sub_1AFBF62E0(v3) && v6 == v7)
    {
LABEL_19:

      goto LABEL_59;
    }

LABEL_58:
    v23 = sub_1AFDFEE28();

    if ((v23 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_59;
  }

  if (v37 == 3)
  {
    sub_1AF9B3B24(v36, v35);
    if (v39 == 3)
    {
      sub_1AF9B3B5C(v35, v32);
      sub_1AF9B3B5C(v38, &v33);
      if (v32[0] == __PAIR128__(1, 0))
      {
        if (v33 || v34 != 1)
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_1AF9B3BE4(v32, v29);
        if (!v33 && v34 == 1)
        {
          sub_1AF4459C8(v29);
LABEL_44:
          sub_1AF9B4130(v32, sub_1AF9B3CC8);
          goto LABEL_67;
        }

        sub_1AF640200(&v33, v26);
        if (v30 != v27 || v31 != v28)
        {
          v24 = sub_1AFDFEE28();
          sub_1AF4459C8(v26);
          sub_1AF4459C8(v29);
          sub_1AF9B3F34(v32, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
          if ((v24 & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_59;
        }

        sub_1AF4459C8(v26);
        sub_1AF4459C8(v29);
      }

      sub_1AF9B3F34(v32, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
LABEL_59:
      sub_1AF4470F0(v36);
      v17 = 1;
      return v17 & 1;
    }

    sub_1AF9B3F34(v35, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
LABEL_36:
    sub_1AF9B4130(v36, sub_1AF9B3C6C);
LABEL_68:
    v17 = 0;
    return v17 & 1;
  }

  sub_1AF9B3B24(v36, v32);
  if (v39 != 4)
  {
    goto LABEL_36;
  }

  if (qword_1AFE8AD78[SLOBYTE(v32[0])] != qword_1AFE8AD78[v38[0].i8[0]])
  {
    goto LABEL_67;
  }

  v16 = BYTE1(v32[0]) ^ v38[0].i8[1];
  sub_1AF4470F0(v36);
  v17 = v16 ^ 1;
  return v17 & 1;
}

uint64_t sub_1AF9B2E88()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF9B2ED4()
{
  sub_1AF9B4270(0, &qword_1ED722F30, &type metadata for ScriptParameter, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE4C620;
  v1 = sub_1AFDFDE28();
  v5 = sub_1AF578CB0(v1, v2, v3, v4);

  if (v5)
  {
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    v14 = *(v5 + 32);
    v8 = *(v5 + 48);
    v9 = *(v5 + 56);
    v10 = *(v5 + 58);

    LODWORD(v5) = v9 | (v10 << 16);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v14 = 0u;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  *(v11 + 32) = v14;
  *(v11 + 48) = v8;
  *(v11 + 56) = v5 & 1;
  *(v11 + 58) = WORD1(v5);
  *(v11 + 60) = 5;
  *(v0 + 32) = v11 | 0x5000000000000000;
  *(v0 + 40) = 1;
  *(v0 + 48) = xmmword_1AFE4C460;
  *(v0 + 64) = 1;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 2;
  *(v0 + 72) = v12 | 0x4000000000000004;
  *(v0 + 80) = 1;
  *(v0 + 88) = xmmword_1AFE4C460;
  *(v0 + 104) = 1;
  return v0;
}

uint64_t sub_1AF9B3074()
{

  sub_1AF9A8C18();

  sub_1AF9A8C28();

  v0 = sub_1AFDFCF88();
  v2 = v1;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF41940);
  v3 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v3);

  MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
  MEMORY[0x1B2718AE0](v0, v2);
  MEMORY[0x1B2718AE0](34, 0xE100000000000000);
  MEMORY[0x1B2718AE0](34, 0xE100000000000000);

  MEMORY[0x1B2718AE0](0xD000000000000040, 0x80000001AFF41980);
  v4 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v4);

  MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
  MEMORY[0x1B2718AE0](v0, v2);

  MEMORY[0x1B2718AE0](34, 0xE100000000000000);
  MEMORY[0x1B2718AE0](34, 0xE100000000000000);

  MEMORY[0x1B2718AE0](15145, 0xE200000000000000);
  return 0;
}

uint64_t sub_1AF9B3298(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1 >= 2)
  {
    for (i = 1; i != v1; i = v10 + 2)
    {
      v9 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v9);

      MEMORY[0x1B2718AE0](0x6D61726170253DLL, 0xE700000000000000);
      v10 = i - 1;
      v11 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v11);

      sub_1AF9B4270(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = 29219;
      *(inited + 40) = 0xE200000000000000;
      sub_1AF441DD8();
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_1AFE431C0;
      *(v13 + 32) = inited;
      v14 = v13 + 32;
      v15 = sub_1AFA56CA0(v13);
      swift_setDeallocating();
      sub_1AF9B3F34(v14, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF426BC8(0, v2[2] + 1, 1, v2);
      }

      v17 = v2[2];
      v16 = v2[3];
      if (v17 >= v16 >> 1)
      {
        v2 = sub_1AF426BC8(v16 > 1, v17 + 1, 1, v2);
      }

      v2[2] = v17 + 1;
      v2[v17 + 4] = v15;
    }
  }

  v3 = sub_1AFA56CA0(v2);

  sub_1AF441DD8();
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = v3;
  v5 = v4 + 32;
  v6 = sub_1AFA56CA0(v4);
  swift_setDeallocating();
  sub_1AF9B3F34(v5, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  return v6;
}

unint64_t sub_1AF9B3530()
{

  v0 = sub_1AF9A1B58(1, 0);
  v2 = v1;

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](v0, v2);

  MEMORY[0x1B2718AE0](34, 0xE100000000000000);
  MEMORY[0x1B2718AE0](34, 0xE100000000000000);

  MEMORY[0x1B2718AE0](15145, 0xE200000000000000);
  return 0xD000000000000027;
}

uint64_t sub_1AF9B3624()
{

  v0 = sub_1AF9A1B58(1, 0);
  v2 = v1;

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000028, 0x80000001AFF41800);
  MEMORY[0x1B2718AE0](v0, v2);

  MEMORY[0x1B2718AE0](34, 0xE100000000000000);
  MEMORY[0x1B2718AE0](34, 0xE100000000000000);

  MEMORY[0x1B2718AE0](0x3325202C3225202CLL, 0xEA00000000003B29);
  return 0;
}

uint64_t sub_1AF9B372C(unsigned __int8 a1)
{
  v1 = a1;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6E242A2064696F76, 0xEE00203D20656D61);
  if (v1 == 3)
  {
    v2 = 12837;
  }

  else
  {
    v2 = 0xD00000000000002ELL;
  }

  if (v1 == 3)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v3 = 0x80000001AFF41760;
  }

  MEMORY[0x1B2718AE0](v2, v3);

  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF41790);
  return 0;
}

unint64_t sub_1AF9B3800()
{

  v0 = sub_1AF9A1B58(1, 0);
  v2 = v1;

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](v0, v2);

  MEMORY[0x1B2718AE0](34, 0xE100000000000000);
  MEMORY[0x1B2718AE0](34, 0xE100000000000000);

  MEMORY[0x1B2718AE0](0x3B293225202CLL, 0xE600000000000000);
  return 0xD000000000000021;
}

unint64_t sub_1AF9B38FC()
{
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_1AFDFE218();

  v11 = 0xD00000000000002DLL;
  v12 = 0x80000001AFF416C0;
  sub_1AF44596C(v0 + OBJC_IVAR____TtC3VFX9StateNode_stateRef, &v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF4459C8(&v9);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v7 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_6;
  }

  v3 = [v2 identifier];
  swift_unknownObjectRelease();
  v4 = sub_1AFDFCEF8();
  v6 = v5;

  v7 = v4;
LABEL_6:
  MEMORY[0x1B2718AE0](v7, v6);

  MEMORY[0x1B2718AE0](10530, 0xE200000000000000);
  return v11;
}

unint64_t sub_1AF9B3A20()
{
  result = qword_1EB634110;
  if (!qword_1EB634110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634110);
  }

  return result;
}

unint64_t sub_1AF9B3AD0()
{
  result = qword_1EB643AE0;
  if (!qword_1EB643AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643AE0);
  }

  return result;
}

uint64_t sub_1AF9B3B5C(uint64_t a1, uint64_t a2)
{
  sub_1AF9B4270(0, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF9B3BE4(uint64_t a1, uint64_t a2)
{
  sub_1AF9B4270(0, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AF9B3C6C()
{
  if (!qword_1EB641250)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB641250);
    }
  }
}

void sub_1AF9B3CC8()
{
  if (!qword_1EB641258)
  {
    sub_1AF9B4270(255, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB641258);
    }
  }
}

unint64_t sub_1AF9B3D50()
{
  result = qword_1ED72F7F0;
  if (!qword_1ED72F7F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED72F7F0);
  }

  return result;
}

unint64_t sub_1AF9B3D9C()
{
  result = qword_1EB641268;
  if (!qword_1EB641268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641268);
  }

  return result;
}

unint64_t sub_1AF9B3DF0()
{
  result = qword_1EB641270;
  if (!qword_1EB641270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641270);
  }

  return result;
}

unint64_t sub_1AF9B3E44()
{
  result = qword_1EB641280;
  if (!qword_1EB641280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641280);
  }

  return result;
}

unint64_t sub_1AF9B3E98()
{
  result = qword_1EB641288;
  if (!qword_1EB641288)
  {
    sub_1AF9B4270(255, &qword_1EB641248, &type metadata for VFXObjectReference, MEMORY[0x1E69E6720]);
    sub_1AF9B3AD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641288);
  }

  return result;
}

uint64_t sub_1AF9B3F34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AF9B4270(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AF9B3FA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1AF9B4030()
{
  result = qword_1EB641298;
  if (!qword_1EB641298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB641298);
  }

  return result;
}

void sub_1AF9B4084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF9B40EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VFXTriggerType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF9B4130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF9B4190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AF9B41F4()
{
  if (!qword_1EB642780)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642780);
    }
  }
}

void sub_1AF9B4270(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF9B42F4()
{
  result = qword_1EB6412B8;
  if (!qword_1EB6412B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6412B8);
  }

  return result;
}

unint64_t sub_1AF9B434C()
{
  result = qword_1EB6412C0;
  if (!qword_1EB6412C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6412C0);
  }

  return result;
}

unint64_t sub_1AF9B43A4()
{
  result = qword_1EB6412C8;
  if (!qword_1EB6412C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6412C8);
  }

  return result;
}

unint64_t sub_1AF9B43FC()
{
  result = qword_1EB6412D0;
  if (!qword_1EB6412D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6412D0);
  }

  return result;
}

unint64_t sub_1AF9B4454()
{
  result = qword_1EB6412D8;
  if (!qword_1EB6412D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6412D8);
  }

  return result;
}

unint64_t sub_1AF9B44AC()
{
  result = qword_1EB6412E0;
  if (!qword_1EB6412E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6412E0);
  }

  return result;
}

unint64_t sub_1AF9B4504()
{
  result = qword_1EB6412E8;
  if (!qword_1EB6412E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6412E8);
  }

  return result;
}

unint64_t sub_1AF9B4558()
{
  result = qword_1EB6412F0;
  if (!qword_1EB6412F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6412F0);
  }

  return result;
}

unint64_t sub_1AF9B45AC(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_1AF9B4784@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AFE4C6A0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0xC000000000000008;
  *(v3 + 32) = v4 | 0x8000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC0000000000000A0;
  *(v3 + 40) = v5 | 0x8000000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xC000000000000098;
  *(v3 + 48) = v6 | 0x8000000000000000;
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000070;
  *(v7 + 16) = v8;
  *(v3 + 56) = v7 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = 0xC000000000000058;
  *(v3 + 64) = v9 | 0x8000000000000000;
  sub_1AF9BE914(0, &unk_1EB630980, &type metadata for AnyValue, v2);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E6530];
  *(v10 + 64) = MEMORY[0x1E69E6530];
  *(v10 + 16) = xmmword_1AFE4C6A0;
  *(v10 + 32) = xmmword_1AFE87170;
  sub_1AF9708B8(32, 0, (v10 + 72));
  if (qword_1EB6371F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB6C3430;
  type metadata accessor for ImplicitWorldAssetNode(0);
  swift_allocObject();
  v13 = v12;
  v14 = sub_1AF9C3E60(v13, 0, 1, 31, 0);

  *(v10 + 144) = type metadata accessor for Node();
  *(v10 + 112) = 0xC000000000000000;
  *(v10 + 120) = v14;
  *(v10 + 184) = v11;
  *(v10 + 152) = xmmword_1AFE87170;
  *(v10 + 224) = v11;
  *(v10 + 192) = xmmword_1AFE87170;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  result = swift_allocObject();
  *(result + 16) = 0xC000000000000008;
  *(v15 + 32) = result | 0x8000000000000000;
  *a1 = v3;
  a1[1] = v15;
  a1[2] = &unk_1F24EFA90;
  a1[3] = &unk_1F24EFAC0;
  a1[4] = MEMORY[0x1E69E7CC0];
  a1[5] = v10;
  return result;
}

uint64_t sub_1AF9B4A40(unsigned __int8 *a1)
{
  type metadata accessor for NilNode(0);
  v2 = swift_dynamicCastClass() != 0;
  v3 = sub_1AF9B4AB4(*a1, v2);
  v4 = sub_1AFA5413C(v3);

  return v4;
}

uint64_t sub_1AF9B4AB4(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1AF0D4478(0, &qword_1EB641520);
    v3 = sub_1AFDFCEC8();
    v4 = NSSelectorFromString(v3);

    v5 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    v6 = strcpy(v67, "_class(");
    v7 = sub_1AF3C4820(&unk_1F25055C8);
    sub_1AF9BE858(&unk_1F25055E8);
    v8 = sub_1AF931974(v6, 0xE700000000000000, v4, v7, 0xC0000000000000A0, a1);
    v10 = v9;

    v11 = sub_1AF9316FC(2036689700, 0xE400000000000000, 0xC0000000000000A0, v8, v10, a1);
    v13 = v12;
  }

  else
  {
    if (a1 == 3)
    {
      v14 = 1819047278;
    }

    else
    {
      v14 = 1280070990;
    }

    v11 = sub_1AF9316FC(2036689700, 0xE400000000000000, 0xC0000000000000A0, v14, 0xE400000000000000, a1);
    v13 = v15;
  }

  v16 = MEMORY[0x1E69E6F90];
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1AFE431C0;
  *(v18 + 32) = inited;
  v19 = v18 + 32;
  v66 = sub_1AFA56CA0(v18);
  swift_setDeallocating();
  sub_1AF974118(v19);
  strcpy(v67, "if (%4 > 0) {\n");
  HIBYTE(v67[1]) = -18;
  v20 = sub_1AF9B5C2C(a1, &unk_1F2505590, &unk_1F25055B0);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1AFE431C0;
  *(v21 + 32) = v20;
  v22 = v21 + 32;
  v23 = sub_1AFA56CA0(v21);
  swift_setDeallocating();
  sub_1AF974118(v22);
  sub_1AFA5413C(v23);

  v24 = sub_1AFAF888C();
  v26 = v25;

  MEMORY[0x1B2718AE0](v24, v26);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1AFE431C0;
  v28 = MEMORY[0x1E69E7CC0];
  *(v27 + 32) = MEMORY[0x1E69E7CC0];
  v29 = v27 + 32;
  v30 = sub_1AFA56CA0(v27);
  swift_setDeallocating();
  sub_1AF974118(v29);
  sub_1AFA5413C(v30);

  sub_1AFAF888C();

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v31 = v67[0];
  v32 = v67[1];
  sub_1AF9BE914(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, v16);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1AFE431C0;
  *(v33 + 32) = v31;
  *(v33 + 40) = v32;
  *(v33 + 48) = 0;
  *(v33 + 56) = 0;
  v34 = sub_1AFDFCEC8();
  v35 = NSSelectorFromString(v34);

  v36 = sub_1AF3C4820(&unk_1F2505600);
  sub_1AF9BE8B4();
  swift_arrayDestroy();
  v37 = sub_1AF931974(12581, 0xE200000000000000, v35, v36, 0xC000000000000000, a1);
  v39 = v38;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_1AFE431C0;
  *(v40 + 32) = v37;
  *(v40 + 40) = v39;
  *(v40 + 48) = 0;
  *(v40 + 56) = 0;
  strcpy(v67, "if (%4 > 0) {\n");
  HIBYTE(v67[1]) = -18;
  sub_1AF0D4478(0, &qword_1EB641518);
  v41 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v41);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v42 = sub_1AF3C4820(v28);
  v43 = sub_1AF931974(0x287373616C635FLL, 0xE700000000000000, sel_commit, v42, 0xC000000000000000, a1);
  v45 = v44;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v46 = v43;
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1AFE431C0;
  *(v47 + 32) = v46;
  *(v47 + 40) = v45;
  *(v47 + 48) = 0;
  *(v47 + 56) = 0;
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_1AFE431C0;
  *(v48 + 32) = v47;
  v49 = v48 + 32;
  v50 = sub_1AFA56CA0(v48);
  swift_setDeallocating();
  sub_1AF974118(v49);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1AFE431C0;
  *(v51 + 32) = v50;
  v52 = v51 + 32;
  v53 = sub_1AFA56CA0(v51);
  swift_setDeallocating();
  sub_1AF974118(v52);
  sub_1AFA5413C(v53);

  v54 = sub_1AFAF888C();
  v56 = v55;

  MEMORY[0x1B2718AE0](v54, v56);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_1AFE431C0;
  *(v57 + 32) = v28;
  v58 = v57 + 32;
  v59 = sub_1AFA56CA0(v57);
  swift_setDeallocating();
  sub_1AF974118(v58);
  sub_1AFA5413C(v59);

  sub_1AFAF888C();

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v60 = v67[0];
  v61 = v67[1];
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_1AFE431C0;
  *(v62 + 32) = v60;
  *(v62 + 40) = v61;
  *(v62 + 48) = 0;
  *(v62 + 56) = 0;
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_1AFE4C6B0;
  *(v63 + 32) = v66;
  *(v63 + 40) = v33;
  *(v63 + 48) = v40;
  *(v63 + 56) = v62;
  v64 = sub_1AFA56CA0(v63);
  swift_setDeallocating();
  sub_1AF9BE914(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v64;
}
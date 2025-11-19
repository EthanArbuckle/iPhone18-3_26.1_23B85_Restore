uint64_t vfx_script_debug_log(_:_:_:)(uint64_t a1)
{
  sub_1AFC4AD78(0, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v26[-v4];
  v6 = sub_1AFDFD0E8();
  v8 = v7;
  v9 = sub_1AFDFD0E8();
  v11 = v10;
  sub_1AFADAE08(a1, v29);
  v12 = v30;
  v13 = v31;
  v14 = sub_1AF67CACC(&type metadata for GraphDebuggingComponent, &off_1F253B628, v31);
  if (v14)
  {
    MEMORY[0x1EEE9AC00](v14, v15);
    *&v26[-48] = v29;
    *&v26[-40] = v6;
    *&v26[-32] = v8;
    *&v26[-24] = v9;
    *&v26[-16] = v11;
    sub_1AFC41560(v13, sub_1AFC4B35C);
  }

  else
  {
    if (*(v12 + 56))
    {
    }

    else
    {
      sub_1AF3CF34C(v13, v5);
      v16 = type metadata accessor for GraphScript(0);
      if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
      {
        sub_1AFC4AF60(v5, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720], sub_1AFC4AD78);
        v17 = 0;
      }

      else
      {
        v17 = v5[40];
        sub_1AFC4B264(v5, type metadata accessor for GraphScript);
      }

      LOBYTE(v27) = v17;
      v18 = sub_1AFDFCF88();
      v20 = v19;
      v27 = v6;
      v28 = v8;
      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v18, v20);

      v21 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v9, v11);

      v22 = v27;
      v23 = v28;
      v24 = sub_1AFDFDA28();
      v27 = 0;
      (*(*v21 + 88))(v24, &v27, v22, v23);
    }
  }

  return sub_1AFABB5D8(v29);
}

uint64_t sub_1AFC48860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AFC4AD78(0, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v38[-1] - v14;
  sub_1AF3CF34C(*(a2 + 24), &v38[-1] - v14);
  v16 = type metadata accessor for GraphScript(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_1AFC4AF60(v15, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720], sub_1AFC4AD78);
    v17 = 0;
  }

  else
  {
    v17 = v15[40];
    sub_1AFC4B264(v15, type metadata accessor for GraphScript);
  }

  LOBYTE(v38[0]) = v17;
  v18 = sub_1AFDFCF88();
  LOBYTE(v43) = 1;
  v38[0] = a3;
  v38[1] = a4;
  v38[2] = v18;
  v38[3] = v19;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  v42 = 1;
  v20 = *(*(a1 + 8) + 16);

  if (!v20 || (sub_1AF419C3C(v38), (v21 & 1) == 0))
  {
    sub_1AFC4B214(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1AFE431C0;
    *(v30 + 32) = a5;
    *(v30 + 40) = a6;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(a1 + 8);
    sub_1AF859370(v30, v38, isUniquelyReferenced_nonNull_native);
    result = sub_1AF6B74FC(v38);
LABEL_11:
    *(a1 + 8) = v43;
    return result;
  }

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(a1 + 8);
  v23 = v43;
  v25 = sub_1AF419C3C(v38);
  v26 = v24;
  v27 = *(v23 + 16) + ((v24 & 1) == 0);
  if (*(v23 + 24) >= v27)
  {
    if (v22)
    {
      if (v24)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1AF8502C0();
      if (v26)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v33 = 0;
    goto LABEL_17;
  }

  sub_1AF8421B0(v27, v22);
  v28 = sub_1AF419C3C(v38);
  if ((v26 & 1) == (v29 & 1))
  {
    v25 = v28;
    if ((v26 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_14:
    v33 = *(*(v43 + 56) + 8 * v25);
LABEL_17:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1AF420554(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_1AF420554(v34 > 1, v35 + 1, 1, v33);
    }

    *(v33 + 2) = v35 + 1;
    v36 = &v33[16 * v35];
    *(v36 + 4) = a5;
    *(v36 + 5) = a6;
    if (v26)
    {

      sub_1AF6B74FC(v38);
      *(*(v43 + 56) + 8 * v25) = v33;
    }

    else
    {
      sub_1AF85B954(v25, v38, v33, v43);
    }

    goto LABEL_11;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t vfx_script_debug_log_value(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  sub_1AFC4AD78(0, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v36 - v10;
  v12 = sub_1AFDFD0E8();
  v14 = v13;
  v15 = sub_1AFDFD0E8();
  v17 = v16;
  sub_1AFADAE08(a1, v40);
  if (a4 > 0x3A)
  {
  }

  else
  {
    v18 = v41;
    v19 = &unk_1F24F5668 + 40 * a4;
    v20 = *(v19 + 3);
    v43[0] = *(v19 + 2);
    v43[1] = v20;
    v44 = *(v19 + 8);
    sub_1AF444F60(v43, &v37);
    v21 = sub_1AF80CC24(v43);
    sub_1AF444FBC(v43);
    sub_1AF7FF23C(a5, v21, v39);
    sub_1AF449D40(v39, &v37);
    v22 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v22 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      *&v39[0] = 0;
      *(&v39[0] + 1) = 0xE000000000000000;
      MEMORY[0x1B2718AE0](v15, v17);

      MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    }

    else
    {

      *&v39[0] = 0;
      *(&v39[0] + 1) = 0xE000000000000000;
    }

    sub_1AF441150(&v37, v38);
    sub_1AFDFEDD8();
    v23 = v39[0];
    v24 = v42;
    v25 = sub_1AF67CACC(&type metadata for GraphDebuggingComponent, &off_1F253B628, v42);
    if (v25)
    {
      MEMORY[0x1EEE9AC00](v25, v26);
      *(&v36 - 6) = v40;
      *(&v36 - 5) = v12;
      *(&v36 - 4) = v14;
      *(&v36 - 3) = v23;
      sub_1AFC41560(v24, sub_1AFC4B35C);
    }

    else
    {
      if (*(v18 + 56))
      {
      }

      else
      {
        sub_1AF3CF34C(v24, v11);
        v27 = type metadata accessor for GraphScript(0);
        if ((*(*(v27 - 8) + 48))(v11, 1, v27) == 1)
        {
          sub_1AFC4AF60(v11, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720], sub_1AFC4AD78);
          v28 = 0;
        }

        else
        {
          v28 = v11[40];
          sub_1AFC4B264(v11, type metadata accessor for GraphScript);
        }

        LOBYTE(v39[0]) = v28;
        v29 = sub_1AFDFCF88();
        v31 = v30;
        v32 = *(v18 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
        *&v39[0] = v12;
        *(&v39[0] + 1) = v14;

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v29, v31);

        MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
        MEMORY[0x1B2718AE0](v23, *(&v23 + 1));

        v33 = v39[0];
        v34 = sub_1AFDFDA28();
        *&v39[0] = 0;
        (*(*v32 + 88))(v34, v39, v33, *(&v33 + 1));
      }
    }

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v37);
  }

  return sub_1AFABB5D8(v40);
}

uint64_t sub_1AFC4908C(uint64_t result, float a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Opacity)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 4 * result) = a2;
  return result;
}

uint64_t sub_1AFC490D4(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for WorldTransform)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = (*(v5 + 128) + v8 + (result << 6));
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_1AFC49124(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for InverseWorldTransform)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = (*(v5 + 128) + v8 + (result << 6));
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_1AFC49174(uint64_t result, __n128 a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Orientation)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 16 * result) = a2;
  return result;
}

uint64_t sub_1AFC491BC(uint64_t result, __n128 a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Position)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 16 * result) = a2;
  return result;
}

uint64_t sub_1AFC49204(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Children)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 8 * a1) = a2;
}

uint64_t sub_1AFC49284(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for MetalScriptReflection)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 8 * a1) = a2;
}

uint64_t sub_1AFC4973C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v13 = *(v6 + 48);
  sub_1AFC28358(0, a3, a4, a5, a6);
  v15 = (v13 + 32);
  v16 = *(v13 + 16) + 1;
  while (--v16)
  {
    v17 = v15 + 5;
    v18 = *v15;
    v15 += 5;
    if (v18 == v14)
    {
      v16 = *(v17 - 2);
      return sub_1AFC4B12C(a2, *(v6 + 128) + v16 + *(*(v14 - 8) + 72) * a1, a3, a4, a5, a6);
    }
  }

  return sub_1AFC4B12C(a2, *(v6 + 128) + v16 + *(*(v14 - 8) + 72) * a1, a3, a4, a5, a6);
}

uint64_t sub_1AFC49808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for VFXTag)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (*(v3 + 128) + v6 + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
}

uint64_t sub_1AFC4988C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for PropagateDirtiness)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 8 * result) = a2;
  return result;
}

uint64_t sub_1AFC498D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for TextureGPURuntime)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (*(v3 + 128) + v6 + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1AFC49974(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleColorInit)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 80 * a1;
  *v8 = *a2;
  v10 = *(a2 + 32);
  v9 = *(a2 + 48);
  v11 = *(a2 + 16);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 16) = v11;
  *(v8 + 32) = v10;
  *(v8 + 48) = v9;
  sub_1AF4422C8(a2, &v13);
}

uint64_t sub_1AFC49A24(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for PointCacheSpawner)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = *(v3 + 128) + v6 + 12 * result;
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  *(v9 + 9) = BYTE1(a3) & 1;
  *(v9 + 10) = BYTE2(a3) & 1;
  *(v9 + 11) = HIBYTE(a3) & 1;
  return result;
}

uint64_t sub_1AFC49A98(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleAngleEvolution)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 40 * a1;
  v9 = *(v8 + 8);
  v10 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(a2 + 32);
  v13[0] = *(a2 + 8);
  *(v13 + 9) = *(a2 + 17);
  sub_1AFC4B1A0(v13, &v12, &qword_1EB63AEF0, sub_1AF8C0110, MEMORY[0x1E69E6720], sub_1AFC4AD78);
  return sub_1AF593EF4(v9);
}

uint64_t sub_1AFC49B9C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleFlockingSolver)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 112 * a1;
  v9 = *v8;
  v10 = *(v8 + 32);
  v21[1] = *(v8 + 16);
  v21[2] = v10;
  v21[0] = v9;
  v11 = *(v8 + 48);
  v12 = *(v8 + 64);
  v13 = *(v8 + 80);
  *&v22[15] = *(v8 + 95);
  v21[4] = v12;
  *v22 = v13;
  v21[3] = v11;
  v14 = *(a2 + 48);
  v15 = *(a2 + 64);
  v16 = *(a2 + 80);
  *(v8 + 95) = *(a2 + 95);
  *(v8 + 64) = v15;
  *(v8 + 80) = v16;
  v18 = *(a2 + 16);
  v17 = *(a2 + 32);
  *v8 = *a2;
  *(v8 + 16) = v18;
  *(v8 + 32) = v17;
  *(v8 + 48) = v14;
  sub_1AF443184(a2, &v20);
  return sub_1AF597500(v21);
}

uint64_t sub_1AFC49C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for ParticleOpacityOverLife)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = *(v5 + 128) + v8 + 32 * a1;
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
}

uint64_t sub_1AFC49D2C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleOpacityEvolution)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = (*(v2 + 128) + v5 + 48 * a1);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v17 = *(a2 + 24);
  v18 = v9;
  v16 = v10;
  *(v8 + 25) = *(a2 + 25);
  v11 = *(a2 + 16);
  *v8 = *a2;
  v8[1] = v11;
  v12 = MEMORY[0x1E69E6448];
  v13 = MEMORY[0x1E69E62F8];
  sub_1AFC4B1A0(&v18, &v15, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8], sub_1AFC4B214);
  sub_1AFC4B1A0(&v17, &v15, &qword_1ED723210, v12, v13, sub_1AFC4B214);
  sub_1AFC4B1A0(&v16, &v15, &qword_1ED723260, &unk_1ED723278, &type metadata for CurveTangents, sub_1AFC4AE3C);
}

uint64_t sub_1AFC49E98(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleOpacityOverVelocity)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 40 * a1;
  v9 = *a2;
  v10 = a2[2];
  v17 = a2[1];
  v18 = v9;
  v16 = v10;
  *(v8 + 32) = *(a2 + 8);
  v11 = *(a2 + 1);
  *v8 = *a2;
  *(v8 + 16) = v11;
  v12 = MEMORY[0x1E69E6448];
  v13 = MEMORY[0x1E69E62F8];
  sub_1AFC4B1A0(&v18, &v15, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8], sub_1AFC4B214);
  sub_1AFC4B1A0(&v17, &v15, &qword_1ED723210, v12, v13, sub_1AFC4B214);
  sub_1AFC4B1A0(&v16, &v15, &qword_1ED723260, &unk_1ED723278, &type metadata for CurveTangents, sub_1AFC4AE3C);
}

uint64_t sub_1AFC4A004(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleTextureFrameEvolution)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 40 * a1;
  v9 = *(v8 + 8);
  v10 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(a2 + 32);
  v13[0] = *(a2 + 8);
  *(v13 + 9) = *(a2 + 17);
  sub_1AFC4B1A0(v13, &v12, &qword_1EB63AEF0, sub_1AF8C0110, MEMORY[0x1E69E6720], sub_1AFC4AD78);
  return sub_1AF593EF4(v9);
}

__n128 sub_1AFC4A108(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for SkinnedMeshBinding)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 80 * a1;
  v9 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a2 + 64);
  result = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = result;
  return result;
}

uint64_t sub_1AFC4A16C(uint64_t a1, void *a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Skeleton)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *a2;
  v9 = *(v2 + 128) + v5 + 40 * a1;
  v10 = a2[2];
  v20 = a2[1];
  v21 = v8;
  v19 = v10;
  v11 = a2[3];
  v17 = a2[4];
  v12 = v17;
  v18 = v11;
  v13 = *(a2 + 1);
  *v9 = *a2;
  *(v9 + 16) = v13;
  *(v9 + 32) = v12;
  sub_1AFC4B1A0(&v21, &v16, &unk_1EB643380, type metadata accessor for SkeletonData, MEMORY[0x1E69E6720], sub_1AFC4AD78);
  v14 = MEMORY[0x1E69E62F8];
  sub_1AFC4B1A0(&v20, &v16, &unk_1EB643388, type metadata accessor for simd_float4x4, MEMORY[0x1E69E62F8], sub_1AFC4AD78);
  sub_1AFC4B1A0(&v19, &v16, &unk_1EB643388, type metadata accessor for simd_float4x4, v14, sub_1AFC4AD78);
  sub_1AFC4B1A0(&v18, &v16, &unk_1EB643388, type metadata accessor for simd_float4x4, v14, sub_1AFC4AD78);
  sub_1AFC4B1A0(&v17, &v16, &unk_1EB643388, type metadata accessor for simd_float4x4, v14, sub_1AFC4AD78);
}

uint64_t sub_1AFC4A344(uint64_t result, __n128 a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Scale3)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 16 * result) = a2;
  return result;
}

uint64_t sub_1AFC4A38C(uint64_t result, float a2, float a3, float a4, float a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for PointLight)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = (*(v5 + 128) + v8 + 16 * result);
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

__n128 sub_1AFC4A3DC(uint64_t a1, __n128 *a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for SpotLight)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 24 * a1;
  result = *a2;
  *v8 = *a2;
  *(v8 + 16) = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_1AFC4A438(uint64_t result, float a2, float a3, float a4, float a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for DirectionalLight)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = (*(v5 + 128) + v8 + 16 * result);
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_1AFC4A488(uint64_t result, float a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for AmbientLight)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 4 * result) = a2;
  return result;
}

uint64_t sub_1AFC4A4D0(uint64_t result, __n128 a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Color)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  *(*(v2 + 128) + v5 + 16 * result) = a2;
  return result;
}

__n128 sub_1AFC4A518(uint64_t a1, __n128 *a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for OrthographicCamera)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 20 * a1;
  result = *a2;
  *v8 = *a2;
  *(v8 + 16) = a2[1].n128_u8[0];
  return result;
}

__n128 sub_1AFC4A574(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for PerspectiveCamera)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 48 * a1;
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  result = *(a2 + 32);
  *(v8 + 32) = result;
  return result;
}

__n128 sub_1AFC4A5D0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ForceField)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = *(v2 + 128) + v5 + 144 * a1;
  v9 = *(a2 + 112);
  *(v8 + 96) = *(a2 + 96);
  *(v8 + 112) = v9;
  *(v8 + 124) = *(a2 + 124);
  v10 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v10;
  v11 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v11;
  result = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = result;
  return result;
}

uint64_t sub_1AFC4A644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for TextureClient)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (*(v3 + 128) + v6 + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
}

uint64_t sub_1AFC4A6C8(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for ProjectionMatrix)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = (*(v5 + 128) + v8 + (result << 6));
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_1AFC4A718(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for GraphScriptingConfig)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = *(v5 + 128) + v8 + 32 * a1;
  *v11 = a2;
  *(v11 + 8) = a3;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5 & 1;
  *(v11 + 25) = BYTE1(a5) & 1;
  *(v11 + 26) = BYTE2(a5) & 1;
}

uint64_t sub_1AFC4A7DC(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for LastFrameWorldTransform)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = (*(v5 + 128) + v8 + (result << 6));
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_1AFC4A82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for Name)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (*(v3 + 128) + v6 + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
}

uint64_t sub_1AFC4A8B0(uint64_t result, __n128 a2, __n128 a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for LocalAABB)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (*(v3 + 128) + v6 + 32 * result);
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_1AFC4A94C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v10 = *(v6 + 48);
  sub_1AFC28358(0, a4, a5, a6, type metadata accessor for ScriptStateRestoration);
  v12 = (v10 + 32);
  v13 = *(v10 + 16) + 1;
  while (--v13)
  {
    v14 = v12 + 5;
    v15 = *v12;
    v12 += 5;
    if (v15 == v11)
    {
      v13 = *(v14 - 2);
      break;
    }
  }

  v16 = (*(v6 + 128) + v13 + 16 * a1);
  *v16 = a2;
  v16[1] = a3;
}

uint64_t sub_1AFC4AB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for ScriptsHolder)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = (*(v4 + 128) + v7 + 24 * a1);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
}

uint64_t sub_1AFC4ABCC(uint64_t a1, __int128 *a2)
{
  v3 = *(v2 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for MaterialRuntime)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = (*(v2 + 128) + v5 + 240 * a1);
  v10 = v8[1];
  v9 = v8[2];
  v33[0] = *v8;
  v33[1] = v10;
  v33[2] = v9;
  v11 = v8[6];
  v13 = v8[3];
  v12 = v8[4];
  v33[5] = v8[5];
  v33[6] = v11;
  v33[3] = v13;
  v33[4] = v12;
  v14 = v8[10];
  v16 = v8[7];
  v15 = v8[8];
  v33[9] = v8[9];
  v33[10] = v14;
  v33[7] = v16;
  v33[8] = v15;
  v17 = v8[14];
  v19 = v8[11];
  v18 = v8[12];
  v33[13] = v8[13];
  v33[14] = v17;
  v33[11] = v19;
  v33[12] = v18;
  v20 = *a2;
  v21 = a2[2];
  v8[1] = a2[1];
  v8[2] = v21;
  *v8 = v20;
  v22 = a2[3];
  v23 = a2[4];
  v24 = a2[6];
  v8[5] = a2[5];
  v8[6] = v24;
  v8[3] = v22;
  v8[4] = v23;
  v25 = a2[7];
  v26 = a2[8];
  v27 = a2[10];
  v8[9] = a2[9];
  v8[10] = v27;
  v8[7] = v25;
  v8[8] = v26;
  v28 = a2[11];
  v29 = a2[12];
  v30 = a2[14];
  v8[13] = a2[13];
  v8[14] = v30;
  v8[11] = v28;
  v8[12] = v29;
  sub_1AF442498(a2, &v32);
  return sub_1AF644CB8(v33);
}

uint64_t sub_1AFC4ACD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for VFXParticleCollisionDataComponent)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (*(v3 + 128) + v6 + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
}

void sub_1AFC4AD78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1AFC4ADDC()
{
  result = qword_1EB632E60;
  if (!qword_1EB632E60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB632E60);
  }

  return result;
}

void sub_1AFC4AE3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AFC4B214(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1AFDFDD58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AFC4AF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFC4B0C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFC4B12C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFC28358(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 24))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AFC4B1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1AFC4B214(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AFC4B264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFC4B2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFC4B378()
{
  sub_1AF378348();
  if (qword_1ED730450 != -1)
  {
    swift_once();
  }

  qword_1ED73B858 = &unk_1F2507948;

  sub_1AFCDB23C();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v4 = *v2;
      v2 += 2;
      sub_1AF6DBCAC(v4, v3);
      --v1;
    }

    while (v1);
  }
}

uint64_t VFXInitialize()
{
  if (qword_1ED72FDA8 != -1)
  {
    return swift_once();
  }

  return result;
}

Swift::Void __swiftcall VFXInitialize()()
{
  if (qword_1ED72FDA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AFC4B954()
{
  v1 = v0;
  v2 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      v4 = result;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v6 = Strong;

        sub_1AF66C3CC(v6, v6, v1, v2, v4, v13);
        sub_1AF44CBE4(v13, &v10);
        if (v11)
        {
          sub_1AF449D40(&v10, v12);
          v7 = sub_1AFC4BE64(v12, *(v1 + 96));
          *&v10 = sub_1AFC4E70C(v7);
          *(&v10 + 1) = v8;
          MEMORY[0x1EEE9AC00](v10, v8);
          sub_1AFC4E068(sub_1AFC4EE68);

          sub_1AF44CB60(v13);
          v9 = v10;
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v12);
          return v9;
        }

        sub_1AF44CB60(v13);

        sub_1AF44CB60(&v10);
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AFC4BB8C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    v4 = result;
    v17 = result;
    v18 = a2;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = v2;
      sub_1AF43C9F0(v4, a2);
      v8 = sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (result)
      {
        result = swift_conformsToProtocol2();
        if (result)
        {
          v9 = result;

          sub_1AFC4E3D4(&v17, v7, v16);
          sub_1AF44CBE4(v16, &v13);
          if (v14)
          {
            v10 = sub_1AF449D40(&v13, v15);
            MEMORY[0x1EEE9AC00](v10, v11);
            v12[2] = v6;
            v12[3] = v15;
            v12[4] = v7;
            v12[5] = v8;
            v12[6] = v9;
            sub_1AFC7BD74(sub_1AFC4EDF8, v12);

            sub_1AF587E7C(v4, a2);
            sub_1AF44CB60(v16);
            sub_1AF439ED8(v17, v18);
            return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v15);
          }

          else
          {

            sub_1AF587E7C(v4, a2);
            sub_1AF44CB60(v16);
            sub_1AF439ED8(v17, v18);
            return sub_1AF44CB60(&v13);
          }
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    return sub_1AF439ED8(v4, a2);
  }

  return result;
}

uint64_t sub_1AFC4BDA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v7 = *(a1 + 40);
  v8 = v7 & 0xFFFFFFFF00000000;
  v9 = *(*(a1 + 160) + 32);
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  v11 = sub_1AF6824B0(a2, a3, v10 | v8);
  if (v11)
  {
    sub_1AF6794BC(v11, v9, a2);
  }

  else
  {

    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1AFC4BE64(uint64_t a1, void *a2)
{
  v4 = sub_1AFDFCF78();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 1;
  switch(a2)
  {
    case 0uLL:
      sub_1AF0D5A54(a1, v21);
      swift_dynamicCast();
      sub_1AFDFCF58();
      v13 = sub_1AFDFCF08();
      v15 = v14;

      (*(v5 + 8))(v9, v4);
      if (v15 >> 60 == 15)
      {
        return 1;
      }

      v17 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v17 == 2)
        {
          v19 = *(v13 + 16);
          v18 = *(v13 + 24);
          sub_1AF587E7C(v13, v15);
          return (v18 - v19 + 1);
        }

        else
        {
          sub_1AF587E7C(v13, v15);
          return 1;
        }
      }

      else if (v17)
      {
        sub_1AF587E7C(v13, v15);
        return (((0xFFFFFFFF00000001 * v13) >> 32) + 1);
      }

      else
      {
        sub_1AF587E7C(v13, v15);
        return BYTE6(v15) + 1;
      }

    case 1uLL:
    case 2uLL:
    case 7uLL:
      return result;
    case 3uLL:
    case 8uLL:
      return 2;
    case 4uLL:
    case 9uLL:
    case 0xCuLL:
      return 4;
    case 5uLL:
    case 6uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xDuLL:
      return 8;
    case 0xEuLL:
    case 0xFuLL:
      return 16;
    case 0x10uLL:
      return 48;
    case 0x11uLL:
      return 64;
    case 0x17uLL:
      return 0;
    case 0x18uLL:
    case 0x19uLL:
      sub_1AF0D5A54(a1, v21);
      sub_1AFC4EE1C();
      if (swift_dynamicCast())
      {
        v11 = v20;
        v12 = [v20 serializedVFXBindingSize];

        return v12;
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v16 = sub_1AFDFDA08();
        v21[0] = 1;
        sub_1AF75A4B4(v16, 0xD000000000000021, 0x80000001AFF4BD30, v21);
        return 0;
      }

    default:
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      MEMORY[0x1B2718AE0](0x206E776F6E6B6E55, 0xED00002065707974, v7);
      v20 = a2;
      sub_1AFDFE458();
      result = sub_1AFDFE518();
      __break(1u);
      return result;
  }
}

void sub_1AFC4C1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 0:
      sub_1AF0D5A54(a1, &v17);
      swift_dynamicCast();
      _s3VFX22VFXMemorySerializationC11writeString_2toySS_SvtFZ_0(v21[0], v21[1], a2);

      return;
    case 1:
    case 2:
    case 7:
      sub_1AF0D5A54(a1, &v17);
      swift_dynamicCast();
      *a2 = v21[0];
      return;
    case 3:
    case 8:
      sub_1AF0D5A54(a1, &v17);
      swift_dynamicCast();
      *a2 = v21[0];
      return;
    case 4:
    case 9:
      sub_1AF0D5A54(a1, &v17);
      swift_dynamicCast();
      *a2 = v21[0];
      return;
    case 5:
    case 6:
    case 10:
      sub_1AF0D5A54(a1, &v17);
      goto LABEL_8;
    case 11:
      sub_1AF0D5A54(a1, &v17);
      goto LABEL_8;
    case 12:
      sub_1AF0D5A54(a1, &v17);
      swift_dynamicCast();
      *a2 = v21[0];
      return;
    case 13:
      sub_1AF0D5A54(a1, &v17);
      sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
LABEL_8:
      swift_dynamicCast();
      *a2 = v21[0];
      return;
    case 14:
      sub_1AF0D5A54(a1, &v17);
      v9 = &qword_1ED72F740;
      v10 = MEMORY[0x1E69E7450];
      goto LABEL_21;
    case 15:
      sub_1AF0D5A54(a1, &v17);
      v9 = &qword_1ED72F6E0;
      v10 = MEMORY[0x1E69E74A8];
LABEL_21:
      sub_1AF87B174(0, v9, v10);
      swift_dynamicCast();
      *a2 = *v21;
      break;
    case 16:
      sub_1AF0D5A54(a1, v21);
      type metadata accessor for simd_float3x3(0);
      swift_dynamicCast();
      v11 = v18;
      v12 = v19;
      *a2 = v17;
      *(a2 + 16) = v11;
      *(a2 + 32) = v12;
      break;
    case 17:
      sub_1AF0D5A54(a1, v21);
      type metadata accessor for simd_float4x4(0);
      swift_dynamicCast();
      v14 = v18;
      v15 = v19;
      v16 = v20;
      *a2 = v17;
      *(a2 + 16) = v14;
      *(a2 + 32) = v15;
      *(a2 + 48) = v16;
      break;
    case 23:
      return;
    case 24:
    case 25:
      sub_1AF0D5A54(a1, &v17);
      sub_1AFC4EE1C();
      if (swift_dynamicCast())
      {
        v4 = v21[0];
        v5 = [v21[0] serializedVFXBindingData];
        v6 = sub_1AFDFC1B8();
        v8 = v7;

        sub_1AFDFC238();
        sub_1AF439ED8(v6, v8);
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v13 = sub_1AFDFDA08();
        *&v17 = 1;
        sub_1AF75A4B4(v13, 0xD00000000000001ELL, 0x80000001AFF4BD10, &v17);
      }

      break;
    default:
      MEMORY[0x1B2718AE0](0x206E776F6E6B6E55, 0xED00002065707974);
      sub_1AFDFE458();
      sub_1AFDFE518();
      __break(1u);
      break;
  }
}

void sub_1AFC4C7A8(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 0:
      v22 = sub_1AFDFCEB8();
      if (v23)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0;
      }

      v25 = 0xE000000000000000;
      *(a3 + 24) = MEMORY[0x1E69E6158];
      if (v23)
      {
        v25 = v23;
      }

      *a3 = v24;
      *(a3 + 8) = v25;
      return;
    case 1:
      v21 = *a1;
      *(a3 + 24) = MEMORY[0x1E69E6370];
      *a3 = v21 & 1;
      return;
    case 2:
      v9 = *a1;
      v10 = MEMORY[0x1E69E7508];
      goto LABEL_28;
    case 3:
      v17 = *a1;
      v18 = MEMORY[0x1E69E75F8];
      goto LABEL_17;
    case 4:
      v7 = *a1;
      v8 = MEMORY[0x1E69E7668];
      goto LABEL_15;
    case 5:
      v13 = *a1;
      v14 = MEMORY[0x1E69E76D8];
      goto LABEL_12;
    case 6:
      v13 = *a1;
      v14 = MEMORY[0x1E69E6530];
      goto LABEL_12;
    case 7:
      v9 = *a1;
      v10 = MEMORY[0x1E69E7230];
LABEL_28:
      *(a3 + 24) = v10;
      *a3 = v9;
      return;
    case 8:
      v17 = *a1;
      v18 = MEMORY[0x1E69E7290];
LABEL_17:
      *(a3 + 24) = v18;
      *a3 = v17;
      return;
    case 9:
      v7 = *a1;
      v8 = MEMORY[0x1E69E72F0];
LABEL_15:
      *(a3 + 24) = v8;
      *a3 = v7;
      return;
    case 10:
      v13 = *a1;
      v14 = MEMORY[0x1E69E7360];
LABEL_12:
      *(a3 + 24) = v14;
      *a3 = v13;
      return;
    case 11:
      v5 = *a1;
      *(a3 + 24) = MEMORY[0x1E69E63B0];
      *a3 = v5;
      return;
    case 12:
      v6 = *a1;
      *(a3 + 24) = MEMORY[0x1E69E6448];
      *a3 = v6;
      return;
    case 13:
      v15 = *a1;
      sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
      *(a3 + 24) = v16;
      *a3 = v15;
      return;
    case 14:
      v35 = *a1;
      v11 = &qword_1ED72F740;
      v12 = MEMORY[0x1E69E7450];
      goto LABEL_30;
    case 15:
      v35 = *a1;
      v11 = &qword_1ED72F6E0;
      v12 = MEMORY[0x1E69E74A8];
LABEL_30:
      sub_1AF87B174(0, v11, v12);
      *(a3 + 24) = v26;
      v27 = swift_allocObject();
      *a3 = v27;
      *(v27 + 16) = v35;
      break;
    case 16:
      v34 = *(a1 + 1);
      v37 = *a1;
      v32 = *(a1 + 2);
      type metadata accessor for simd_float3x3(0);
      *(a3 + 24) = v28;
      v29 = swift_allocObject();
      *a3 = v29;
      v29[1] = v37;
      v29[2] = v34;
      v29[3] = v32;
      break;
    case 17:
      v33 = *(a1 + 1);
      v36 = *a1;
      v30 = *(a1 + 3);
      v31 = *(a1 + 2);
      type metadata accessor for simd_float4x4(0);
      *(a3 + 24) = v19;
      v20 = swift_allocObject();
      *a3 = v20;
      v20[1] = v36;
      v20[2] = v33;
      v20[3] = v31;
      v20[4] = v30;
      break;
    case 23:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      break;
    case 24:
    case 25:
      v4 = [objc_allocWithZone(MEMORY[0x1E6979390]) initWithSerializedVFXBindingDataPointer_];
      *(a3 + 24) = sub_1AFC4EE1C();
      *a3 = v4;
      break;
    default:
      MEMORY[0x1B2718AE0](0x206E776F6E6B6E55, 0xED00002065707974);
      sub_1AFDFE458();
      sub_1AFDFE518();
      __break(1u);
      break;
  }
}

uint64_t sub_1AFC4CB6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 + 40);
  v9 = v8 & 0xFFFFFFFF00000000;
  v10 = *(*(a3 + 160) + 32);
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v12 = sub_1AF6824B0(a4, a5, v11 | v9);
  if (!v12)
  {
  }

  v13 = sub_1AF67A4CC(a2, v12, v10, a4);
  if (v13)
  {
  }

  v16[1] = v16;
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_1AF682600(a4, a5, v11 | v9, sub_1AF702438);
}

uint64_t sub_1AFC4CC98()
{
  swift_weakDestroy();

  return v0;
}

uint64_t sub_1AFC4CCF0()
{
  sub_1AFC4CC98();

  return swift_deallocClassInstance();
}

unint64_t sub_1AFC4CD44@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AFC4EBF8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static VFXMemorySerialization.readString(_:)()
{
  result = sub_1AFDFCEB8();
  if (!v1)
  {
    return 0;
  }

  return result;
}

id static VFXMemorySerialization.readKeyframeAnimation(_:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E6979390]);

  return [v2 initWithSerializedVFXBindingDataPointer_];
}

id VFXMemorySerialization.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VFXMemorySerialization.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXMemorySerialization();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VFXMemorySerialization.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXMemorySerialization();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AFC4D0D8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AFC4ECF4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

__n128 static VFXMemorySerialization.readSIMD3x3F(_:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *a2 = *a1;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

__n128 static VFXMemorySerialization.writeSIMD3x3F(_:to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

__n128 *static VFXMemorySerialization.writeSIMD4x4F(_:to:)(__n128 *result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

uint64_t static VFXMemorySerialization.VFXSerializedBufferSize(_:type:)(id a1, uint64_t a2)
{
  result = 1;
  switch(a2)
  {
    case 0:
      result = [a1 lengthOfBytesUsingEncoding_];
      break;
    case 1:
    case 2:
    case 7:
      return result;
    case 3:
    case 8:
      result = 2;
      break;
    case 4:
    case 9:
    case 12:
      result = 4;
      break;
    case 5:
    case 6:
    case 10:
    case 11:
    case 13:
      result = 8;
      break;
    case 14:
    case 15:
      result = 16;
      break;
    case 16:
      result = 48;
      break;
    case 17:
      result = 64;
      break;
    case 23:
      result = 0;
      break;
    case 24:
    case 25:

      result = [a1 serializedVFXBindingSize];
      break;
    default:
      v4 = sub_1AFDFF4B8();
      MEMORY[0x1B2718AE0](v4);

      result = sub_1AFDFE518();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1AFC4E068(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v26 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      *(&v25 + 7) = 0;
      *&v25 = 0;
      return a1(&v25, &v25);
    }

    sub_1AF439ED8(v5, v4);
    *&v25 = v5;
    *(&v25 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *v2 = xmmword_1AFE6A6C0;
    sub_1AF439ED8(0, 0xC000000000000000);
    sub_1AFDFC138();
    v9 = a1;
    v10 = *(v25 + 16);
    v11 = *(v25 + 24);
    v12 = sub_1AFDFBDB8();
    v13 = sub_1AFDFBDE8();
    v14 = v11 - v10;
    v15 = sub_1AFDFBDD8();
    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    result = v9(v12 + v10 - v13, v12 + v10 - v13 + v16);
    v17 = *(&v25 + 1) | 0x8000000000000000;
    *v2 = v25;
  }

  else
  {
    if (!v6)
    {
      sub_1AF439ED8(v5, v4);
      *&v25 = v5;
      WORD4(v25) = v4;
      BYTE10(v25) = BYTE2(v4);
      BYTE11(v25) = BYTE3(v4);
      BYTE12(v25) = BYTE4(v4);
      BYTE13(v25) = BYTE5(v4);
      BYTE14(v25) = BYTE6(v4);
      result = a1(&v25, &v25 + BYTE6(v4));
      v8 = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
      *v2 = v25;
      v2[1] = v8;
      return result;
    }

    sub_1AF439ED8(v5, v4);
    *v2 = xmmword_1AFE6A6C0;
    sub_1AF439ED8(0, 0xC000000000000000);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = (v5 >> 32) - v5;
      v19 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {

      if (sub_1AFDFBDB8())
      {
        sub_1AFDFBDE8();
      }

      v18 = (v5 >> 32) - v5;
      sub_1AFDFBDF8();
      swift_allocObject();
      v19 = sub_1AFDFBD98();
    }

    v20 = sub_1AFDFBDB8();
    v21 = sub_1AFDFBDE8();
    v22 = sub_1AFDFBDD8();
    if (v22 >= v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = v22;
    }

    a1(v20 + v5 - v21, v20 + v5 - v21 + v23);

    v17 = v19 | 0x4000000000000000;
    *v2 = v5;
  }

  v2[1] = v17;
  return result;
}

uint64_t sub_1AFC4E3D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {

      sub_1AF439ED8(v7, v6);
      *&v22 = v7;
      *(&v22 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1AFE6A6C0;
      sub_1AF439ED8(0, 0xC000000000000000);
      sub_1AFDFC138();
      v12 = *(&v22 + 1);
      v13 = a2;
      v14 = *(v22 + 16);
      v15 = sub_1AFDFBDB8();
      v16 = v14 - sub_1AFDFBDE8();
      sub_1AFDFBDD8();
      sub_1AFC4C7A8((v15 + v16), *(v13 + 96), a3);

      *a1 = v22;
      a1[1] = v12 | 0x8000000000000000;
    }

    else
    {
      *(&v22 + 7) = 0;
      *&v22 = 0;
      sub_1AFC4C7A8(&v22, *(a2 + 96), a3);
    }
  }

  else if (v8)
  {
    v17 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1AF439ED8(v7, v6);
    *a1 = xmmword_1AFE6A6C0;
    sub_1AF439ED8(0, 0xC000000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (sub_1AFDFBDB8())
      {
        sub_1AFDFBDE8();
      }

      sub_1AFDFBDF8();
      swift_allocObject();
      v18 = sub_1AFDFBD98();

      v17 = v18;
    }

    v19 = sub_1AFDFBDB8();
    v20 = v7 - sub_1AFDFBDE8();
    sub_1AFDFBDD8();
    sub_1AFC4C7A8((v19 + v20), *(a2 + 96), a3);

    *a1 = v7;
    a1[1] = v17 | 0x4000000000000000;
  }

  else
  {
    sub_1AF439ED8(v7, v6);
    *&v22 = v7;
    WORD4(v22) = v6;
    BYTE10(v22) = BYTE2(v6);
    BYTE11(v22) = BYTE3(v6);
    BYTE12(v22) = BYTE4(v6);
    BYTE13(v22) = BYTE5(v6);
    BYTE14(v22) = BYTE6(v6);
    sub_1AFC4C7A8(&v22, *(a2 + 96), a3);
    v9 = v22;
    v10 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);

    *a1 = v9;
    a1[1] = v10;
  }

  return result;
}

uint64_t sub_1AFC4E70C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return 0;
    }

    else
    {
      sub_1AFDFBDF8();
      swift_allocObject();
      sub_1AFDFBDC8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1AFDFC178();
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

uint64_t sub_1AFC4E7A8()
{
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 2;
  }

  if (swift_dynamicCastMetatype())
  {
    return 3;
  }

  if (swift_dynamicCastMetatype())
  {
    return 4;
  }

  if (swift_dynamicCastMetatype())
  {
    return 5;
  }

  if (swift_dynamicCastMetatype())
  {
    return 6;
  }

  if (swift_dynamicCastMetatype())
  {
    return 7;
  }

  if (swift_dynamicCastMetatype())
  {
    return 8;
  }

  if (swift_dynamicCastMetatype())
  {
    return 9;
  }

  if (swift_dynamicCastMetatype())
  {
    return 10;
  }

  if (swift_dynamicCastMetatype())
  {
    return 11;
  }

  if (swift_dynamicCastMetatype())
  {
    return 12;
  }

  sub_1AF87B174(0, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  if (swift_dynamicCastMetatype())
  {
    return 13;
  }

  sub_1AF87B174(0, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  if (swift_dynamicCastMetatype())
  {
    return 14;
  }

  sub_1AF87B174(0, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  if (swift_dynamicCastMetatype())
  {
    return 15;
  }

  type metadata accessor for simd_float3x3(0);
  if (swift_dynamicCastMetatype())
  {
    return 16;
  }

  type metadata accessor for simd_float4x4(0);
  if (swift_dynamicCastMetatype())
  {
    return 17;
  }

  if (swift_dynamicCastMetatype())
  {
    return 24;
  }

  sub_1AF8C0110();
  if (swift_dynamicCastMetatype())
  {
    return 25;
  }

  else
  {
    return 23;
  }
}

uint64_t sub_1AFC4EA4C(uint64_t a1)
{
  if ((a1 - 2) > 0x1D)
  {
    return 0;
  }

  else
  {
    return qword_1AFEA6458[a1 - 2];
  }
}

uint64_t _s3VFX22VFXMemorySerializationC11writeString_2toySS_SvtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AFDFCF78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFCF58();
  v9 = sub_1AFDFCF08();
  v11 = v10;
  result = (*(v5 + 8))(v8, v4);
  if (v11 >> 60 != 15)
  {
    v13 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v13 == 2)
      {
        sub_1AFDFC238();
        v14 = *(v9 + 24) - *(v9 + 16);
      }

      else
      {
        sub_1AFDFC238();
        v14 = 0;
      }
    }

    else
    {
      if (v13)
      {
        v14 = (0xFFFFFFFF00000001 * v9) >> 32;
      }

      else
      {
        v14 = BYTE6(v11);
      }

      sub_1AFDFC238();
    }

    *(a3 + v14) = 0;
    return sub_1AF587E7C(v9, v11);
  }

  return result;
}

unint64_t sub_1AFC4EBF8(unint64_t result)
{
  if (result - 23 >= 3)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 0x12)
  {
    return v1;
  }

  return result;
}

uint64_t _s3VFX22VFXMemorySerializationC22writeKeyframeAnimation_2toySo010CAKeyframeF0C_SvtFZ_0(void *a1)
{
  v1 = [a1 serializedVFXBindingData];
  v2 = sub_1AFDFC1B8();
  v4 = v3;

  sub_1AFDFC238();

  return sub_1AF439ED8(v2, v4);
}

unint64_t sub_1AFC4ECF4(unint64_t result)
{
  if (result > 0xC)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1AFC4ED08()
{
  result = qword_1EB6439F8;
  if (!qword_1EB6439F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6439F8);
  }

  return result;
}

unint64_t sub_1AFC4ED60()
{
  result = qword_1EB643A00;
  if (!qword_1EB643A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643A00);
  }

  return result;
}

unint64_t sub_1AFC4EE1C()
{
  result = qword_1EB6329A8;
  if (!qword_1EB6329A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB6329A8);
  }

  return result;
}

unint64_t sub_1AFC4EE9C()
{
  result = qword_1EB643A08;
  if (!qword_1EB643A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643A08);
  }

  return result;
}

uint64_t static VFXMemorySerialization.writeInt(_:to:)(uint64_t result, void *a2)
{

  return static VFXMemorySerialization.writeInt64(_:to:)(result, a2);
}

uint64_t static VFXMemorySerialization.writeInt8(_:to:)(uint64_t result, _BYTE *a2)
{

  return static VFXMemorySerialization.writeUInt8(_:to:)(result, a2);
}

uint64_t static VFXMemorySerialization.writeUInt16(_:to:)(uint64_t result, _WORD *a2)
{

  return static VFXMemorySerialization.writeInt16(_:to:)(result, a2);
}

uint64_t static VFXMemorySerialization.writeUInt32(_:to:)(uint64_t result, _DWORD *a2)
{

  return static VFXMemorySerialization.writeInt32(_:to:)(result, a2);
}

uint64_t static VFXMemorySerialization.writeUInt64(_:to:)(uint64_t result, void *a2)
{

  return static VFXMemorySerialization.writeInt64(_:to:)(result, a2);
}

__n128 *static VFXMemorySerialization.writeSIMD4F(_:to:)(__n128 *result, __n128 a2)
{

  return static VFXMemorySerialization.writeSIMD3F(_:to:)(result, a2);
}

uint64_t static VFXMemorySerialization.readInt(_:)(uint64_t a1)
{

  return static VFXMemorySerialization.readUInt64(_:)(a1);
}

uint64_t static VFXMemorySerialization.readUInt8(_:)(unsigned __int8 *a1)
{

  return static VFXMemorySerialization.readInt8(_:)(a1);
}

uint64_t static VFXMemorySerialization.readInt16(_:)(unsigned __int16 *a1)
{

  return static VFXMemorySerialization.readUInt16(_:)(a1);
}

uint64_t static VFXMemorySerialization.readInt32(_:)(unsigned int *a1)
{

  return static VFXMemorySerialization.readUInt32(_:)(a1);
}

uint64_t static VFXMemorySerialization.readInt64(_:)(uint64_t a1)
{

  return static VFXMemorySerialization.readUInt64(_:)(a1);
}

double static VFXMemorySerialization.readSIMD4F(_:)(uint64_t a1)
{

  *&result = static VFXMemorySerialization.readSIMD3F(_:)(a1).n128_u64[0];
  return result;
}

uint64_t sub_1AFC4F684(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1AF6270E4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1AFC6EDC0(v6);
  return sub_1AFDFE348();
}

double sub_1AFC4F700()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong worldTransform];
    v4 = v2;

    return v4;
  }

  else
  {
    *&result = 1065353216;
  }

  return result;
}

uint64_t sub_1AFC4F780(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_1AFC892CC(*(a1 + 16), 0);
    sub_1AFC86854(&v7, (v4 + 32), v2, a1);

    sub_1AF0FBB14();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = v4;
  sub_1AFC4F684(&v8);
  v5 = v8;
  if (v1)
  {
  }

  return v5;
}

uint64_t sub_1AFC4F854@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a1;
  v8 = HIDWORD(a1);
  sub_1AFC7246C(0, &unk_1EB643AD0, MEMORY[0x1E69E6448], type metadata accessor for EntityValueAccessors);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 48) = v6;
  *(v11 + 52) = v8;
  *(v11 + 56) = a2;
  *(v11 + 64) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v6;
  *(v12 + 28) = v8;
  *(v12 + 32) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = v6;
  *(v13 + 28) = v8;
  *(v13 + 32) = a2;
  *(v11 + 16) = sub_1AFC723C0;
  *(v11 + 24) = v12;
  *(v11 + 32) = sub_1AF599FCC;
  *(v11 + 40) = v13;
  a4[3] = v10;
  a4[4] = &off_1F2535390;
  *a4 = v11;
  return swift_retain_n();
}

uint64_t sub_1AFC4F96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a1 + 32))(&v5, a2, a3);
  if ((v5 & 0x100000000) != 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v5;
  sub_1AFC7246C(0, &qword_1ED726990, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1AFE431C0;
  *(result + 32) = v4;
  return result;
}

uint64_t sub_1AFC4FA10(uint64_t a1, void (*a2)(uint64_t *))
{
  sub_1AF441194(a1, v5);
  sub_1AF648908();
  swift_dynamicCast();
  a2(&v4);
}

uint64_t sub_1AFC4FA7C(uint64_t a1, void (*a2)(uint64_t *))
{
  sub_1AF441194(a1, v5);
  sub_1AF648908();
  type metadata accessor for EntityManager();
  swift_dynamicCast();
  a2(&v4);
}

uint64_t sub_1AFC4FAF8(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  sub_1AF441194(a1, v5);
  sub_1AF648908();
  swift_dynamicCast();
  return a2(v4);
}

uint64_t sub_1AFC4FB5C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFC4FBA8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFC4FBE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v8[1] = 0;
  swift_unknownObjectWeakInit();
  sub_1AF441150(a1, a1[3]);
  sub_1AF974940();
  if (v2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return sub_1AF0FBDE0(v8);
  }

  else
  {
    v8[2] = v6;
    v8[3] = v7;
    sub_1AFC73A9C(v8, a2);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return sub_1AF0F2990(v8);
  }
}

uint64_t sub_1AFC4FD2C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28();
  }
}

id sub_1AFC4FDBC()
{
  v0 = type metadata accessor for VFXReferencePlaceholder();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_name;
  v3 = &v1[OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier];
  *v3 = 0xD000000000000017;
  *(v3 + 1) = 0x80000001AFF4BEC0;
  *&v1[v2] = xmmword_1AFEA6550;
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  qword_1EB6C2AB0 = result;
  return result;
}

id sub_1AFC4FE68()
{
  v0 = type metadata accessor for VFXReferencePlaceholder();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_name;
  v3 = &v1[OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier];
  *v3 = 0xD000000000000013;
  *(v3 + 1) = 0x80000001AFF4BEA0;
  *&v1[v2] = xmmword_1AFEA6560;
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  qword_1EB6C2AB8 = result;
  return result;
}

id sub_1AFC4FF14()
{
  v0 = type metadata accessor for VFXReferencePlaceholder();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_name;
  v3 = &v1[OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier];
  *v3 = 0xD000000000000023;
  *(v3 + 1) = 0x80000001AFF4BEE0;
  *&v1[v2] = xmmword_1AFEA6570;
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  qword_1EB6C2AA8 = result;
  return result;
}

id sub_1AFC4FFC0(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id sub_1AFC50054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXReferencePlaceholder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AFC500DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_name);

  return v1;
}

uint64_t sub_1AFC50118()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX23VFXReferencePlaceholder_identifier);

  return v1;
}

uint64_t sub_1AFC50154(void *a1, uint64_t a2)
{
  v5 = *v2;
  type metadata accessor for VFXBridgingRemapAndResolveContext();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (v7)
  {
    v8 = *(v7 + 80);
    swift_unknownObjectWeakLoadStrong();
    v7 = *(v7 + 56);
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectUnownedInit();
  v23[0] = v2;
  v23[2] = v7;
  swift_unknownObjectUnownedAssign();
  v9 = a1;

  swift_unownedRetain();
  swift_unknownObjectRelease();
  v24 = v8;
  v22 = v2;

  sub_1AFC5047C(&v22, v6);
  if ((v8 & 1) == 0)
  {

    sub_1AF579490(v23);
    if (!a1)
    {
    }

    goto LABEL_6;
  }

  swift_unownedRetainStrong();
  v17 = v5;
  v18 = &off_1F2535E88;
  aBlock[0] = v2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AFC723CC;
  *(v10 + 24) = v6;
  v19 = sub_1AFC723F4;
  v20 = v10;
  v21 = 14;

  sub_1AF6C67D0(aBlock);

  sub_1AF57955C(aBlock);
  sub_1AF579490(v23);
  sub_1AF6C5E30(0);
  if (a1)
  {
LABEL_6:
    v11 = [v9 assetRegistry];
    v12 = [v11 rootNode];

    v13 = swift_allocObject();
    *(v13 + 16) = sub_1AFC723D4;
    *(v13 + 24) = v6;
    v18 = sub_1AFBF7FC8;
    v19 = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AF92EF7C;
    v17 = &unk_1F24E62D0;
    v14 = _Block_copy(aBlock);

    [v12 enumerateHierarchyUsingBlock_];

    _Block_release(v14);
    swift_isEscapingClosureAtFileLocation();
  }
}

uint64_t sub_1AFC5047C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v40 = qword_1ED73B840;
  v41 = 0;
  v42 = 2;
  v43 = 1;
  v44 = 2;
  v45 = 0;

  sub_1AF6B06C0(v3, &v40, 0x200000000, &v25);

  v21 = v25;
  if (v25)
  {
    v20 = v28;
    v22 = v29;
    v5 = v31;
    v33 = v26;
    v34 = v27;
    if (v32 >= 1 && v29)
    {
      v6 = 0;
      v24 = *(v31 + 32);
      i = *(v30 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v19 = i;
      do
      {
        v8 = (v20 + 48 * v6);
        v9 = v8[1];
        v23 = *v8;
        v10 = *(v8 + 2);
        v11 = *(v8 + 4);
        v12 = *(v8 + 5);
        if (i)
        {
          v13 = *(v12 + 376);

          os_unfair_lock_lock(v13);
          os_unfair_lock_lock(*(v12 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v24);
        v14 = *(v5 + 64);
        v38[0] = *(v5 + 48);
        v38[1] = v14;
        v39 = *(v5 + 80);
        v15 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
        *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v15, 8);
        *(v5 + 56) = v15;
        *(v5 + 72) = 0;
        *(v5 + 80) = 0;
        *(v5 + 64) = 0;
        if (v10)
        {
          for (i = v19; v11; --v11)
          {
            v16 = *v10++;
            sub_1AFC724BC(v12, v16, v3, a2);
          }
        }

        else
        {
          v17 = v23;
          i = v19;
          while (v9 != v17)
          {
            v18 = v17 + 1;
            sub_1AFC724BC(v12, v17, v3, a2);
            v17 = v18;
          }
        }

        v35 = v21;
        v36 = v33;
        v37 = v34;
        sub_1AF630994(v5, &v35, v38);
        sub_1AF62D29C(v12);
        ecs_stack_allocator_pop_snapshot(v24);
        if (i)
        {
          os_unfair_lock_unlock(*(v12 + 344));
          os_unfair_lock_unlock(*(v12 + 376));
        }

        ++v6;
      }

      while (v6 != v22);
    }

    return sub_1AFC723FC(&v25, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  return result;
}

id sub_1AFC50784(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 asset];
  if (result)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 authoringGraph];
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
      type metadata accessor for AuthoringGraph();
      v7 = swift_dynamicCast();
      v8 = v11[5];
      MEMORY[0x1EEE9AC00](v7, v9);
      v11[2] = a3;
      v11[3] = &off_1F2532000;
      sub_1AF3FB9C8(sub_1AF42B5A8, v11, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
      v10 = sub_1AF449CC8();

      *(v8 + 24) = v10;

      swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1AFC50994()
{
  v1 = 0xEF72656C6C6F7274;
  sub_1AFC7246C(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE4C620;
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x80000001AFEA8760;
  *(v2 + 48) = 0xD000000000000018;
  *(v2 + 56) = 0x80000001AFEA8780;
  v3 = [v0 light];
  if (v3)
  {

    v2 = sub_1AF420554(1, 3, 1, v2);
    *(v2 + 16) = 3;
    *(v2 + 64) = 0x6E6F43746867694CLL;
    *(v2 + 72) = 0xEF72656C6C6F7274;
  }

  v4 = [v0 camera];
  if (v4)
  {

    v6 = *(v2 + 16);
    v5 = *(v2 + 24);
    if (v6 >= v5 >> 1)
    {
      v2 = sub_1AF420554(v5 > 1, v6 + 1, 1, v2);
    }

    *(v2 + 16) = v6 + 1;
    v7 = v2 + 16 * v6;
    *(v7 + 32) = 0xD000000000000010;
    *(v7 + 40) = 0x80000001AFEA8800;
    v8 = [v0 camera];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 motionBlur];

      if (v10)
      {

        v12 = *(v2 + 16);
        v11 = *(v2 + 24);
        if (v12 >= v11 >> 1)
        {
          v2 = sub_1AF420554(v11 > 1, v12 + 1, 1, v2);
        }

        *(v2 + 16) = v12 + 1;
        v13 = v2 + 16 * v12;
        *(v13 + 32) = 0xD000000000000020;
        *(v13 + 40) = 0x80000001AFEA8850;
      }
    }

    v14 = [v0 camera];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 depthOfField];

      if (v16)
      {

        v18 = *(v2 + 16);
        v17 = *(v2 + 24);
        if (v18 >= v17 >> 1)
        {
          v2 = sub_1AF420554(v17 > 1, v18 + 1, 1, v2);
        }

        *(v2 + 16) = v18 + 1;
        v19 = v2 + 16 * v18;
        *(v19 + 32) = 0xD000000000000022;
        *(v19 + 40) = 0x80000001AFEA8960;
      }
    }

    v20 = [v0 camera];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 grain];

      if (v22)
      {

        v24 = *(v2 + 16);
        v23 = *(v2 + 24);
        if (v24 >= v23 >> 1)
        {
          v2 = sub_1AF420554(v23 > 1, v24 + 1, 1, v2);
        }

        *(v2 + 16) = v24 + 1;
        v25 = v2 + 16 * v24;
        *(v25 + 32) = 0xD00000000000001BLL;
        *(v25 + 40) = 0x80000001AFEA8940;
      }
    }

    v26 = [v0 camera];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 lensBlur];

      if (v28)
      {

        v30 = *(v2 + 16);
        v29 = *(v2 + 24);
        if (v30 >= v29 >> 1)
        {
          v2 = sub_1AF420554(v29 > 1, v30 + 1, 1, v2);
        }

        *(v2 + 16) = v30 + 1;
        v31 = v2 + 16 * v30;
        *(v31 + 32) = 0xD00000000000001ELL;
        *(v31 + 40) = 0x80000001AFEA8920;
      }
    }

    v32 = [v0 camera];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 bloom];

      if (v34)
      {

        v36 = *(v2 + 16);
        v35 = *(v2 + 24);
        if (v36 >= v35 >> 1)
        {
          v2 = sub_1AF420554(v35 > 1, v36 + 1, 1, v2);
        }

        *(v2 + 16) = v36 + 1;
        v37 = v2 + 16 * v36;
        *(v37 + 32) = 0xD00000000000001BLL;
        *(v37 + 40) = 0x80000001AFEA8900;
      }
    }

    v38 = [v0 camera];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 exposure];

      if (v40)
      {

        v42 = *(v2 + 16);
        v41 = *(v2 + 24);
        if (v42 >= v41 >> 1)
        {
          v2 = sub_1AF420554(v41 > 1, v42 + 1, 1, v2);
        }

        *(v2 + 16) = v42 + 1;
        v43 = v2 + 16 * v42;
        *(v43 + 32) = 0xD00000000000001ELL;
        *(v43 + 40) = 0x80000001AFEA88E0;
      }
    }

    v44 = [v0 camera];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 chromaticTransform];

      if (v46)
      {

        v48 = *(v2 + 16);
        v47 = *(v2 + 24);
        if (v48 >= v47 >> 1)
        {
          v2 = sub_1AF420554(v47 > 1, v48 + 1, 1, v2);
        }

        *(v2 + 16) = v48 + 1;
        v49 = v2 + 16 * v48;
        *(v49 + 32) = 0xD000000000000028;
        *(v49 + 40) = 0x80000001AFEA88B0;
      }
    }

    v50 = [v0 camera];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 doughnutBokeh];

      if (v52)
      {

        v54 = *(v2 + 16);
        v53 = *(v2 + 24);
        if (v54 >= v53 >> 1)
        {
          v2 = sub_1AF420554(v53 > 1, v54 + 1, 1, v2);
        }

        *(v2 + 16) = v54 + 1;
        v55 = v2 + 16 * v54;
        *(v55 + 32) = 0xD000000000000023;
        *(v55 + 40) = 0x80000001AFEA8880;
      }
    }

    v56 = [v0 camera];
    if (v56)
    {
      v57 = v56;
      v58 = [v56 motionBlur];

      if (v58)
      {

        v60 = *(v2 + 16);
        v59 = *(v2 + 24);
        if (v60 >= v59 >> 1)
        {
          v2 = sub_1AF420554(v59 > 1, v60 + 1, 1, v2);
        }

        *(v2 + 16) = v60 + 1;
        v61 = v2 + 16 * v60;
        *(v61 + 32) = 0xD000000000000020;
        *(v61 + 40) = 0x80000001AFEA8850;
      }
    }

    v62 = [v0 camera];
    if (v62)
    {
      v63 = v62;
      v64 = [v62 toneMapping];

      if (v64)
      {

        v66 = *(v2 + 16);
        v65 = *(v2 + 24);
        if (v66 >= v65 >> 1)
        {
          v2 = sub_1AF420554(v65 > 1, v66 + 1, 1, v2);
        }

        *(v2 + 16) = v66 + 1;
        v67 = v2 + 16 * v66;
        *(v67 + 32) = 0xD000000000000021;
        *(v67 + 40) = 0x80000001AFEA8820;
      }
    }

    v68 = [v0 camera];
    if (v68)
    {
      v69 = v68;
      v70 = [v68 vignetting];

      if (v70)
      {

        v72 = *(v2 + 16);
        v71 = *(v2 + 24);
        if (v72 >= v71 >> 1)
        {
          v2 = sub_1AF420554(v71 > 1, v72 + 1, 1, v2);
        }

        *(v2 + 16) = v72 + 1;
        v73 = v2 + 16 * v72;
        *(v73 + 32) = 0xD000000000000020;
        *(v73 + 40) = 0x80000001AFF4C100;
      }
    }

    v74 = [v0 camera];
    if (v74)
    {
      v75 = v74;
      v76 = [v74 colorFringe];

      if (v76)
      {

        v78 = *(v2 + 16);
        v77 = *(v2 + 24);
        if (v78 >= v77 >> 1)
        {
          v2 = sub_1AF420554(v77 > 1, v78 + 1, 1, v2);
        }

        *(v2 + 16) = v78 + 1;
        v79 = v2 + 16 * v78;
        *(v79 + 32) = 0xD000000000000021;
        *(v79 + 40) = 0x80000001AFF4C0D0;
      }
    }

    v80 = [v0 camera];
    if (v80)
    {
      v81 = v80;
      v82 = [v80 colorGrading];

      if (v82)
      {

        v84 = *(v2 + 16);
        v83 = *(v2 + 24);
        if (v84 >= v83 >> 1)
        {
          v2 = sub_1AF420554(v83 > 1, v84 + 1, 1, v2);
        }

        *(v2 + 16) = v84 + 1;
        v85 = v2 + 16 * v84;
        *(v85 + 32) = 0xD000000000000022;
        *(v85 + 40) = 0x80000001AFF4C0A0;
      }
    }
  }

  v86 = [v0 physicsBody];
  if (v86)
  {

    v88 = *(v2 + 16);
    v87 = *(v2 + 24);
    if (v88 >= v87 >> 1)
    {
      v2 = sub_1AF420554(v87 > 1, v88 + 1, 1, v2);
    }

    *(v2 + 16) = v88 + 1;
    v89 = v2 + 16 * v88;
    *(v89 + 32) = 0xD000000000000015;
    *(v89 + 40) = 0x80000001AFEA87E0;
  }

  v90 = [v0 forceField];
  if (v90)
  {

    v92 = *(v2 + 16);
    v91 = *(v2 + 24);
    if (v92 >= v91 >> 1)
    {
      v2 = sub_1AF420554(v91 > 1, v92 + 1, 1, v2);
    }

    *(v2 + 16) = v92 + 1;
    v93 = v2 + 16 * v92;
    *(v93 + 32) = 0xD000000000000015;
    *(v93 + 40) = 0x80000001AFEA87C0;
  }

  v94 = [v0 morpher];
  if (v94)
  {

    v96 = *(v2 + 16);
    v95 = *(v2 + 24);
    if (v96 >= v95 >> 1)
    {
      v2 = sub_1AF420554(v95 > 1, v96 + 1, 1, v2);
    }

    *(v2 + 16) = v96 + 1;
    v97 = v2 + 16 * v96;
    *(v97 + 32) = 0xD000000000000011;
    *(v97 + 40) = 0x80000001AFEA87A0;
  }

  v98 = [v0 model];
  if (v98)
  {

    v99 = [v0 model];
    if (v99 && (v100 = v99, objc_opt_self(), v101 = swift_dynamicCastObjCClass(), v100, v101))
    {
      v103 = *(v2 + 16);
      v102 = *(v2 + 24);
      v104 = v103 + 1;
      if (v103 >= v102 >> 1)
      {
        v2 = sub_1AF420554(v102 > 1, v103 + 1, 1, v2);
      }

      v1 = 0x80000001AFEA8740;
      v105 = 0xD000000000000019;
    }

    else
    {
      v105 = 0x6E6F436C65646F4DLL;
      v103 = *(v2 + 16);
      v106 = *(v2 + 24);
      v104 = v103 + 1;
      if (v103 >= v106 >> 1)
      {
        v2 = sub_1AF420554(v106 > 1, v103 + 1, 1, v2);
      }
    }

    *(v2 + 16) = v104;
    v107 = v2 + 16 * v103;
    *(v107 + 32) = v105;
    *(v107 + 40) = v1;
  }

  return v2;
}

uint64_t sub_1AFC514A4()
{
  v1 = [v0 name];
  v2 = sub_1AFDFCEF8();

  return v2;
}

double sub_1AFC514FC()
{
  if ([objc_opt_self() immediateMode])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 0.0;
    }

LABEL_6:
    v3 = Strong;
    [Strong position];
    v6 = v4;

    return v6;
  }

  sub_1AFC73A9C(v0, v7);
  v2 = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v7);
  if (v2)
  {
    objc_opt_self();
    Strong = swift_dynamicCastObjCClass();
    if (Strong)
    {
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  return 0.0;
}

double sub_1AFC515B8()
{
  v0 = sub_1AFC52758();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  [v0 orientation];
  v4 = v2;

  return v4;
}

__n128 sub_1AFC5160C()
{
  v0 = sub_1AFC52758();
  if (v0)
  {
    v1 = v0;
    [v0 scale];
    v8 = v2;

    return v8;
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  return result;
}

double sub_1AFC5165C()
{
  v0 = sub_1AFC52758();
  if (v0)
  {
    v1 = v0;
    [v0 transform];
    v4 = v2;

    return v4;
  }

  else
  {
    *&result = 1065353216;
  }

  return result;
}

double sub_1AFC516D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v1 = Strong;
  [Strong eulerAngles];
  v4 = v2;

  return v4;
}

uint64_t sub_1AFC5172C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  v33 = 0;
  swift_unknownObjectWeakInit();
  v33 = 0;
  swift_unknownObjectWeakAssign();
  v34 = 0x3E6C6C756E3CLL;
  v35 = 0xE600000000000000;
  swift_unknownObjectWeakInit();
  v11 = a1[3];
  v12 = a1[4];
  sub_1AF441150(a1, v11);
  if (sub_1AF694FF8(2037, v11, v12))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v2)
    {
      sub_1AF441150(&v24, v27);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      sub_1AF9B3A74(&v28, v32);
LABEL_9:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v24);
LABEL_17:
      sub_1AF5A5D54(v32, a2);
    }
  }

  else
  {
    v13 = a1[3];
    v14 = a1[4];
    sub_1AF441150(a1, v13);
    if (sub_1AF694FF8(2029, v13, v14))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v2)
      {
        sub_1AF441150(&v24, v27);
        v17 = sub_1AFDFEE38();
        v19 = v18;
        sub_1AF0F2990(v32);
        v33 = 0;
        swift_unknownObjectWeakInit();
        v33 = 0;
        swift_unknownObjectWeakAssign();
        v34 = v17;
        v35 = v19;
        goto LABEL_9;
      }
    }

    else
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v2)
      {
        v28 = 0;
        v29 = 1;
        v30 = 0xD000000000000017;
        v31 = 0x80000001AFF4C150;
        v15 = sub_1AFDFE698();
        if (v16)
        {
          v20 = v15;
        }

        else
        {
          v20 = 0;
        }

        if (v16)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0xE000000000000000;
        }

        (*(v7 + 8))(v10, v6);
        v25 = 0;
        swift_unknownObjectWeakInit();
        v25 = 0;
        v22 = swift_unknownObjectWeakAssign();
        v26 = v20;
        v27 = v21;
        sub_1AF9B3A74(v22, v32);
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AFC73A2C(v32);
}

uint64_t sub_1AFC51B14()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55260;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC7008C;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC700B0;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 216) = 0;
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v2);
  v6 = v5;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x6E6F697469736F70;
  *(v4 + 24) = 0xE800000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v5;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v7 = swift_conformsToProtocol2();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  swift_retain_n();
  v9 = v6;
  if (v8)
  {
    v9 = (*(v7 + 8))(v8, v7);
  }

  v10 = swift_conformsToProtocol2();
  if (v10 && v9)
  {
    *(v4 + 160) = (*(v10 + 8))(v9, v10);
  }

  v11 = *(v4 + 64);
  *(v4 + 64) = sub_1AFC700BC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v11);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  v47 = v0;
  *(v0 + 32) = v4;
  v12 = swift_getKeyPath();
  sub_1AFC700D0(0, &unk_1ED725C88, type metadata accessor for simd_quatf);
  v13 = swift_allocObject();
  v13[4] = sub_1AFC7008C;
  v13[5] = v12;
  v13[2] = sub_1AFC700C4;
  v13[3] = v12;
  v13[6] = v12;
  v14 = swift_allocObject();
  *(v14 + 104) = 0;
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = MEMORY[0x1E69E7CC0];
  *(v14 + 216) = 0;
  type metadata accessor for simd_quatf(0);
  v16 = v15;
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x7461746E6569726FLL;
  *(v14 + 24) = 0xEB000000006E6F69;
  *(v14 + 32) = v12;
  *(v14 + 40) = v15;
  *(v14 + 48) = 0;
  *(v14 + 56) = 1;
  *(v14 + 58) = 0;
  *(v14 + 184) = 0;
  *(v14 + 188) = 1;
  *(v14 + 192) = 0;
  *(v14 + 196) = 1;
  *(v14 + 200) = 0x1000100000000;
  *(v14 + 208) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 96) = 0;
  *(v14 + 144) = xmmword_1AFE55150;
  *(v14 + 80) = v13;
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 210) = 0;
  v17 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v17 && v16)
  {
    v16 = (*(v17 + 8))(v16, v17);
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v16)
  {
    *(v14 + 160) = (*(v18 + 8))(v16, v18);
  }

  v19 = *(v14 + 64);
  *(v14 + 64) = sub_1AFC70124;
  *(v14 + 72) = v12;
  sub_1AF0FB8EC(v19);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  v47[5] = v14;
  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  v21[4] = sub_1AFC73B2C;
  v21[5] = v20;
  v21[2] = sub_1AFC73BD0;
  v21[3] = v20;
  v21[6] = v20;
  v22 = swift_allocObject();
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 168) = 0;
  *(v22 + 216) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0x656C616373;
  *(v22 + 24) = 0xE500000000000000;
  *(v22 + 32) = v20;
  *(v22 + 40) = v6;
  *(v22 + 48) = 0;
  *(v22 + 56) = 1;
  *(v22 + 58) = 0;
  *(v22 + 184) = 0;
  *(v22 + 188) = 1;
  *(v22 + 192) = 0;
  *(v22 + 196) = 1;
  *(v22 + 200) = 0x1000100000000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = 0;
  *(v22 + 104) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  swift_retain_n();
  v23 = v6;
  if (v8)
  {
    v23 = (*(v7 + 8))(v8);
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v23)
  {
    *(v22 + 160) = (*(v24 + 8))(v23, v24);
  }

  v25 = *(v22 + 64);
  *(v22 + 64) = sub_1AFC73B30;
  *(v22 + 72) = v20;
  sub_1AF0FB8EC(v25);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  v47[6] = v22;
  v26 = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1ED722B60, type metadata accessor for simd_float4x4);
  v27 = swift_allocObject();
  v27[4] = sub_1AFC70188;
  v27[5] = v26;
  v27[2] = sub_1AFC701D4;
  v27[3] = v26;
  v27[6] = v26;
  v28 = swift_allocObject();
  *(v28 + 104) = 0;
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 216) = 0;
  type metadata accessor for simd_float4x4(0);
  v30 = v29;
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;
  *(v28 + 16) = 0x726F66736E617274;
  *(v28 + 24) = 0xE90000000000006DLL;
  *(v28 + 32) = v26;
  *(v28 + 40) = v29;
  *(v28 + 48) = 0;
  *(v28 + 56) = 1;
  *(v28 + 58) = 2304;
  *(v28 + 184) = 0;
  *(v28 + 188) = 1;
  *(v28 + 192) = 0;
  *(v28 + 196) = 1;
  *(v28 + 200) = 0x1000100000000;
  *(v28 + 208) = 1;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 96) = 0;
  *(v28 + 144) = xmmword_1AFE22A20;
  *(v28 + 80) = v27;
  *(v28 + 88) = &off_1F2535378;
  *(v28 + 210) = 2304;
  v31 = swift_conformsToProtocol2();
  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  swift_retain_n();
  v33 = v30;
  if (v32)
  {
    v33 = (*(v31 + 8))(v32, v31);
  }

  v34 = swift_conformsToProtocol2();
  if (v34 && v33)
  {
    *(v28 + 160) = (*(v34 + 8))(v33, v34);
  }

  v35 = *(v28 + 64);
  *(v28 + 64) = sub_1AFC701E4;
  *(v28 + 72) = v26;
  sub_1AF0FB8EC(v35);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;

  v47[7] = v28;
  v36 = swift_getKeyPath();
  v37 = swift_allocObject();
  v37[4] = sub_1AFC73C90;
  v37[5] = v36;
  v37[2] = sub_1AFC73C98;
  v37[3] = v36;
  v37[6] = v36;
  v38 = swift_allocObject();
  *(v38 + 112) = 1;
  *(v38 + 128) = 0;
  *(v38 + 136) = 0;
  *(v38 + 120) = 0;
  *(v38 + 160) = MEMORY[0x1E69E7CC0];
  *(v38 + 168) = 0;
  *(v38 + 216) = 0;
  *(v38 + 176) = 0;
  strcpy((v38 + 16), "worldTransform");
  *(v38 + 31) = -18;
  *(v38 + 32) = v36;
  *(v38 + 40) = v30;
  *(v38 + 48) = 0;
  *(v38 + 56) = 1;
  *(v38 + 58) = 16;
  *(v38 + 184) = 0;
  *(v38 + 188) = 1;
  *(v38 + 192) = 0;
  *(v38 + 196) = 1;
  *(v38 + 200) = 0x1000100000000;
  *(v38 + 208) = 1;
  *(v38 + 64) = 0;
  *(v38 + 72) = 0;
  *(v38 + 96) = 0;
  *(v38 + 104) = 0;
  *(v38 + 144) = xmmword_1AFE22A20;
  *(v38 + 80) = v37;
  *(v38 + 88) = &off_1F2535378;
  *(v38 + 210) = 16;
  swift_retain_n();
  if (v32)
  {
    v30 = (*(v31 + 8))(v32, v31);
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v30)
  {
    *(v38 + 160) = (*(v39 + 8))(v30, v39);
  }

  v40 = *(v38 + 64);
  *(v38 + 64) = sub_1AFC73B34;
  *(v38 + 72) = v36;
  sub_1AF0FB8EC(v40);
  *(v38 + 168) = 0;
  *(v38 + 176) = 0;

  *(v38 + 216) = 0;

  v47[8] = v38;
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  v42[4] = sub_1AFC73B2C;
  v42[5] = v41;
  v42[2] = sub_1AFC73BD0;
  v42[3] = v41;
  v42[6] = v41;
  v43 = swift_allocObject();
  *(v43 + 112) = 1;
  *(v43 + 128) = 0;
  *(v43 + 136) = 0;
  *(v43 + 120) = 0;
  *(v43 + 160) = MEMORY[0x1E69E7CC0];
  *(v43 + 168) = 0;
  *(v43 + 216) = 0;
  *(v43 + 176) = 0;
  *(v43 + 16) = 0x72656C7565;
  *(v43 + 24) = 0xE500000000000000;
  *(v43 + 32) = v41;
  *(v43 + 40) = v6;
  *(v43 + 48) = 0;
  *(v43 + 56) = 1;
  *(v43 + 58) = 16;
  *(v43 + 184) = 0;
  *(v43 + 188) = 1;
  *(v43 + 192) = 0;
  *(v43 + 196) = 1;
  *(v43 + 200) = 0x1000100000000;
  *(v43 + 208) = 1;
  *(v43 + 64) = 0;
  *(v43 + 72) = 0;
  *(v43 + 96) = 0;
  *(v43 + 104) = 0;
  *(v43 + 144) = xmmword_1AFE22A20;
  *(v43 + 80) = v42;
  *(v43 + 88) = &off_1F2535378;
  *(v43 + 210) = 16;
  swift_retain_n();
  if (v8)
  {
    v6 = (*(v7 + 8))(v8);
  }

  v44 = swift_conformsToProtocol2();
  if (v44 && v6)
  {
    *(v43 + 160) = (*(v44 + 8))(v6, v44);
  }

  v45 = *(v43 + 64);
  *(v43 + 64) = sub_1AFC73B30;
  *(v43 + 72) = v41;
  sub_1AF0FB8EC(v45);
  *(v43 + 168) = 0;
  *(v43 + 176) = 0;

  *(v43 + 216) = 0;

  v47[9] = v43;
  qword_1EB6C28E0 = v47;
  return result;
}

uint64_t sub_1AFC52758()
{
  if ([objc_opt_self() immediateMode])
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  sub_1AFC73A9C(v0, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v3);
  if (Strong)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_1AFC527FC()
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v0, v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v4);
    if (!Strong)
    {
      return;
    }

    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (!v1)
    {
      swift_unknownObjectRelease();
      return;
    }

LABEL_6:
    v3 = v1;
    [v1 opacity];

    return;
  }

  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    goto LABEL_6;
  }
}

id sub_1AFC528C0()
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v0, v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v5);
    if (Strong)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        goto LABEL_6;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
LABEL_6:
    v3 = result;
    v4 = [result renderingOrder];

    return v4;
  }

  return result;
}

uint64_t sub_1AFC52988(const char **a1)
{
  if ([objc_opt_self() immediateMode])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 1;
    }

LABEL_6:
    v5 = *a1;
    v6 = Strong;
    v7 = [Strong v5];

    return v7 ^ 1;
  }

  sub_1AFC73A9C(v1, v9);
  v4 = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v9);
  if (v4)
  {
    objc_opt_self();
    Strong = swift_dynamicCastObjCClass();
    if (Strong)
    {
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  return 1;
}

void sub_1AFC52A44(char a1, SEL *a2)
{
  if ([objc_opt_self() immediateMode])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }
  }

  else
  {
    sub_1AFC73A9C(v2, v9);
    v6 = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v9);
    if (!v6)
    {
      return;
    }

    objc_opt_self();
    Strong = swift_dynamicCastObjCClass();
    if (!Strong)
    {
      swift_unknownObjectRelease();
      return;
    }
  }

  v7 = (a1 & 1) == 0;
  v8 = Strong;
  [Strong *a2];
}

uint64_t sub_1AFC52B08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFC739C4(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  v34 = 0;
  swift_unknownObjectWeakInit();
  v34 = 0;
  swift_unknownObjectWeakAssign();
  v35 = 0x3E6C6C756E3CLL;
  v36 = 0xE600000000000000;
  swift_unknownObjectWeakInit();
  v11 = a1[3];
  v12 = a1[4];
  sub_1AF441150(a1, v11);
  if (sub_1AF694FF8(2037, v11, v12))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v2)
    {
      sub_1AF441150(&v25, v28);
      sub_1AF9B3A20();
      sub_1AFDFEE88();
      v13 = &v29;
LABEL_9:
      sub_1AF9B3A74(v13, v33);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v25);
LABEL_17:
      sub_1AF5A5F2C(v33, a2);
    }
  }

  else
  {
    v14 = a1[3];
    v15 = a1[4];
    sub_1AF441150(a1, v14);
    if (sub_1AF694FF8(2029, v14, v15))
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AFDFF398();
      if (!v2)
      {
        sub_1AF441150(&v25, v28);
        v18 = sub_1AFDFEE38();
        v20 = v19;
        v30 = 0;
        swift_unknownObjectWeakInit();
        v30 = 0;
        v13 = swift_unknownObjectWeakAssign();
        v31 = v18;
        v32 = v20;
        goto LABEL_9;
      }
    }

    else
    {
      sub_1AF441150(a1, a1[3]);
      sub_1AF445B90();
      sub_1AFDFF3B8();
      if (!v2)
      {
        v29 = 0;
        LOBYTE(v30) = 1;
        v31 = 0xD000000000000017;
        v32 = 0x80000001AFF4C150;
        v16 = sub_1AFDFE698();
        if (v17)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0;
        }

        if (v17)
        {
          v22 = v17;
        }

        else
        {
          v22 = 0xE000000000000000;
        }

        (*(v7 + 8))(v10, v6);
        v26 = 0;
        swift_unknownObjectWeakInit();
        v26 = 0;
        v23 = swift_unknownObjectWeakAssign();
        v27 = v21;
        v28 = v22;
        sub_1AF9B3A74(v23, v33);
        goto LABEL_17;
      }
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return sub_1AFC73A2C(v33);
}

void sub_1AFC52ED0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v2, ObjectType, a2);
  sub_1AFC73A9C(v2, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = [v6 presentationNode];
  swift_unknownObjectRelease();
LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1AFC52FC4(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AF9B3AD0();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AFC53068@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  v1 = swift_unknownObjectWeakAssign();
  *(v1 + 16) = 0x3E6C6C756E3CLL;
  *(v1 + 24) = 0xE600000000000000;

  return swift_unknownObjectWeakInit();
}

BOOL sub_1AFC530C8()
{
  sub_1AFC73A9C(v0, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v5);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = [v2 model];

  if (v3)
  {
  }

  return v3 != 0;
}

uint64_t sub_1AFC53170()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70288;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC702BC;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x656C6269736976;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v2;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AFC702C8;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC702D0;
  v10[5] = v8;
  v10[2] = sub_1AFC70304;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x7974696361706FLL;
  *(v11 + 24) = 0xE700000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AFC70310;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = MEMORY[0x1E69E6530];
  sub_1AFC7246C(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v17 = swift_allocObject();
  v17[4] = sub_1AFC70318;
  v17[5] = v14;
  v17[2] = sub_1AFC7034C;
  v17[3] = v14;
  v17[6] = v14;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  strcpy((v18 + 16), "renderingOrder");
  *(v18 + 31) = -18;
  *(v18 + 32) = v14;
  *(v18 + 40) = v16;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  *(v18 + 58) = 0;
  *(v18 + 184) = 0;
  *(v18 + 188) = 1;
  *(v18 + 192) = 0;
  *(v18 + 196) = 1;
  *(v18 + 200) = 0x1000100000000;
  *(v18 + 208) = 1;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 96) = v15;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE22A20;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;
  v19 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v19)
  {
    v16 = (*(v19 + 8))();
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v16)
  {
    v21 = (*(v20 + 8))(v16, v20);

    *(v18 + 160) = v21;
  }

  else
  {
  }

  *(v18 + 64) = sub_1AFC70358;
  *(v18 + 72) = v14;
  sub_1AF0FB8EC(0);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = 0;
  *(v0 + 48) = v18;
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AFC73C38;
  v24[5] = v22;
  v24[2] = sub_1AFC73BD4;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  *(v25 + 16) = 0x6168537374736163;
  *(v25 + 24) = 0xEB00000000776F64;
  *(v25 + 32) = v22;
  *(v25 + 40) = v2;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 96) = v23;
  *(v25 + 104) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  swift_retain_n();

  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v26 = swift_conformsToProtocol2();
  if (v26 && v2)
  {
    v27 = (*(v26 + 8))(v2, v26);

    *(v25 + 160) = v27;
  }

  else
  {
  }

  *(v25 + 64) = sub_1AFC73B38;
  *(v25 + 72) = v22;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 56) = v25;
  qword_1EB6C2728 = v0;
  return result;
}

void sub_1AFC53A24(float *a1@<X8>)
{
  v2 = sub_1AFC52758();
  if (v2)
  {
    v3 = v2;
    [v2 opacity];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  *a1 = v5;
}

void sub_1AFC53A7C(void *a1@<X8>)
{
  v2 = sub_1AFC52758();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 renderingOrder];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void sub_1AFC53AD4(SEL *a1@<X3>, char *a2@<X8>)
{
  v4 = sub_1AFC52758();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 *a1];

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  *a2 = v7;
}

uint64_t sub_1AFC53B70()
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v0, v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v5 = 0;
    }

    v1 = [v5 light];

    if (v1)
    {
      goto LABEL_3;
    }

    return 2;
  }

  v1 = v0[4];
  v2 = v1;
  if (!v1)
  {
    return 2;
  }

LABEL_3:
  v3 = [v1 type];

  return v3;
}

double sub_1AFC53C58()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (v1)
    {
LABEL_3:
      [v1 extendedLinearSRGBColor];
      v7 = v3;

      return v7;
    }
  }

  else
  {
    sub_1AFC73A9C(v0, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 light];

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0.0;
}

float sub_1AFC53D40()
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v0, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 light];

    if (v1)
    {
      goto LABEL_3;
    }

    return 1.0;
  }

  v1 = v0[4];
  v2 = v1;
  if (!v1)
  {
    return 1.0;
  }

LABEL_3:
  [v1 intensity];
  v4 = v3;

  return v4;
}

id sub_1AFC53E80(SEL *a1, SEL *a2)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v2, v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v11);
    if (Strong)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v9 = 0;
    }

    v5 = [v9 *a2];

    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v5 = v2[4];
  v6 = v5;
  if (!v5)
  {
    return 0;
  }

LABEL_3:
  v7 = [v5 *a1];

  return v7;
}

float sub_1AFC53F84(SEL *a1, SEL *a2)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v2, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v12);
    if (Strong)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v10 = 0;
    }

    v5 = [v10 *a2];

    if (v5)
    {
      goto LABEL_3;
    }

    return 0.0;
  }

  v5 = v2[4];
  v6 = v5;
  if (!v5)
  {
    return 0.0;
  }

LABEL_3:
  [v5 *a1];
  v8 = v7;

  return v8;
}

uint64_t sub_1AFC54154()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFEA6580;
  KeyPath = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1EB63BA20, type metadata accessor for VFXLightType);
  v2 = swift_allocObject();
  v2[4] = sub_1AFC70360;
  v2[5] = KeyPath;
  v2[2] = sub_1AFC70394;
  v2[3] = KeyPath;
  v2[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v3 = swift_allocObject();
  *(v3 + 104) = 0;
  *(v3 + 112) = 1;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 160) = MEMORY[0x1E69E7CC0];
  *(v3 + 216) = 0;
  type metadata accessor for VFXLightType(0);
  v5 = v4;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 16) = 1701869940;
  *(v3 + 24) = 0xE400000000000000;
  *(v3 + 32) = KeyPath;
  *(v3 + 40) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 58) = 0;
  *(v3 + 184) = 0;
  *(v3 + 188) = 1;
  *(v3 + 192) = 0;
  *(v3 + 196) = 1;
  *(v3 + 200) = 0x1000100000000;
  *(v3 + 208) = 1;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 144) = xmmword_1AFE22A20;
  *(v3 + 80) = v2;
  *(v3 + 88) = &off_1F2535378;
  *(v3 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6 && v5)
  {
    v5 = (*(v6 + 8))(v5, v6);
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v5)
  {
    *(v3 + 160) = (*(v7 + 8))(v5, v7);
  }

  v8 = *(v3 + 64);
  *(v3 + 64) = sub_1AFC703A0;
  *(v3 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;

  *(v3 + 216) = 0;

  *(v0 + 32) = v3;
  v9 = swift_getKeyPath();
  v10 = MEMORY[0x1E69E74A8];
  sub_1AFC703CC(0, &qword_1ED725C70, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
  v11 = swift_allocObject();
  v11[4] = sub_1AFC703A8;
  v11[5] = v9;
  v11[2] = sub_1AFC703C0;
  v11[3] = v9;
  v11[6] = v9;
  v12 = swift_allocObject();
  *(v12 + 104) = 0;
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 210) = 0;
  *(v12 + 216) = 0;
  v13 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], v10);
  v15 = v14;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x726F6C6F63;
  *(v12 + 24) = 0xE500000000000000;
  *(v12 + 32) = v9;
  *(v12 + 40) = v14;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 96) = 0;
  *(v12 + 144) = xmmword_1AFE55160;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 0;
  v16 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v16 && v15)
  {
    v15 = (*(v16 + 8))(v15, v16);
  }

  v17 = swift_conformsToProtocol2();
  if (v17 && v15)
  {
    *(v12 + 160) = (*(v17 + 8))(v15, v17);
  }

  v18 = *(v12 + 64);
  *(v12 + 64) = sub_1AFC70440;
  *(v12 + 72) = v9;
  sub_1AF0FB8EC(v18);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;

  *(v0 + 40) = v12;
  v19 = swift_getKeyPath();
  sub_1AFC7246C(0, &unk_1ED722B70, v13, type metadata accessor for EntityGetSet);
  v20 = swift_allocObject();
  v20[4] = sub_1AFC70448;
  v20[5] = v19;
  v20[2] = sub_1AFC7047C;
  v20[3] = v19;
  v20[6] = v19;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 210) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0x7469736E65746E69;
  *(v21 + 24) = 0xE900000000000079;
  *(v21 + 32) = v19;
  *(v21 + 40) = v13;
  *(v21 + 48) = 0;
  *(v21 + 56) = 1;
  *(v21 + 58) = 0;
  *(v21 + 184) = 0;
  *(v21 + 188) = 1;
  *(v21 + 192) = 0;
  *(v21 + 196) = 1;
  *(v21 + 200) = 0x1000100000000;
  *(v21 + 208) = 1;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 96) = 0;
  *(v21 + 104) = 0;
  *(v21 + 144) = xmmword_1AFE22A20;
  *(v21 + 80) = v20;
  *(v21 + 88) = &off_1F2535378;
  *(v21 + 210) = 0;
  v22 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v22)
  {
    v23 = (*(v22 + 8))();
  }

  else
  {
    v23 = v13;
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v23)
  {
    *(v21 + 160) = (*(v24 + 8))(v23, v24);
  }

  v25 = *(v21 + 64);
  *(v21 + 64) = sub_1AFC70488;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(v25);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;

  *(v0 + 48) = v21;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  v27[4] = sub_1AFC73AE4;
  v27[5] = v26;
  v27[2] = sub_1AFC73BD8;
  v27[3] = v26;
  v27[6] = v26;
  v28 = swift_allocObject();
  *(v28 + 112) = 1;
  *(v28 + 128) = 0;
  *(v28 + 136) = 0;
  *(v28 + 120) = 0;
  *(v28 + 160) = MEMORY[0x1E69E7CC0];
  *(v28 + 168) = 0;
  *(v28 + 210) = 0;
  *(v28 + 216) = 0;
  *(v28 + 176) = 0;
  *(v28 + 16) = 0x74617265706D6574;
  *(v28 + 24) = 0xEB00000000657275;
  *(v28 + 32) = v26;
  *(v28 + 40) = v13;
  *(v28 + 48) = 0;
  *(v28 + 56) = 1;
  *(v28 + 58) = 0;
  *(v28 + 184) = 0;
  *(v28 + 188) = 1;
  *(v28 + 192) = 0;
  *(v28 + 196) = 1;
  *(v28 + 200) = 0x1000100000000;
  *(v28 + 208) = 1;
  *(v28 + 64) = 0;
  *(v28 + 72) = 0;
  *(v28 + 96) = 0;
  *(v28 + 104) = 0;
  *(v28 + 144) = xmmword_1AFE22A20;
  *(v28 + 80) = v27;
  *(v28 + 88) = &off_1F2535378;
  *(v28 + 210) = 0;
  swift_retain_n();
  if (v22)
  {
    v13 = (*(v22 + 8))();
  }

  v29 = swift_conformsToProtocol2();
  if (v29 && v13)
  {
    *(v28 + 160) = (*(v29 + 8))(v13, v29);
  }

  v30 = *(v28 + 64);
  *(v28 + 64) = sub_1AFC73B3C;
  *(v28 + 72) = v26;
  sub_1AF0FB8EC(v30);
  *(v28 + 168) = 0;
  *(v28 + 176) = 0;

  *(v28 + 216) = 0;

  *(v0 + 56) = v28;
  v31 = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v33 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v34 = swift_allocObject();
  v34[4] = sub_1AFC703A8;
  v34[5] = v31;
  v34[2] = sub_1AFC70490;
  v34[3] = v31;
  v34[6] = v31;
  v35 = swift_allocObject();
  *(v35 + 104) = 0;
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = MEMORY[0x1E69E7CC0];
  *(v35 + 210) = 0;
  *(v35 + 216) = 0;
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v33);
  v37 = v36;
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;
  *(v35 + 16) = 0x6574784561657261;
  *(v35 + 24) = 0xEB0000000073746ELL;
  *(v35 + 32) = v31;
  *(v35 + 40) = v36;
  *(v35 + 48) = 0;
  *(v35 + 56) = 1;
  *(v35 + 58) = 256;
  *(v35 + 184) = 0;
  *(v35 + 188) = 1;
  *(v35 + 192) = 0;
  *(v35 + 196) = 1;
  *(v35 + 200) = 0x1000100000000;
  *(v35 + 208) = 1;
  *(v35 + 64) = 0;
  *(v35 + 72) = 0;
  *(v35 + 96) = v32;
  *(v35 + 144) = xmmword_1AFE22A20;
  *(v35 + 80) = v34;
  *(v35 + 88) = &off_1F2535378;
  *(v35 + 210) = 256;
  v38 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v38 && v37)
  {
    v37 = (*(v38 + 8))(v37, v38);
  }

  v39 = swift_conformsToProtocol2();
  if (v39 && v37)
  {
    v40 = (*(v39 + 8))(v37, v39);

    *(v35 + 160) = v40;
  }

  else
  {
  }

  v41 = *(v35 + 64);
  *(v35 + 64) = sub_1AFC7049C;
  *(v35 + 72) = v31;
  sub_1AF0FB8EC(v41);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;

  *(v0 + 64) = v35;
  v42 = swift_getKeyPath();
  v43 = swift_getKeyPath();
  v44 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v45 = swift_allocObject();
  v45[4] = sub_1AFC704A4;
  v45[5] = v42;
  v45[2] = sub_1AFC704D0;
  v45[3] = v42;
  v45[6] = v42;
  v46 = swift_allocObject();
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 160) = MEMORY[0x1E69E7CC0];
  *(v46 + 168) = 0;
  *(v46 + 210) = 0;
  *(v46 + 216) = 0;
  *(v46 + 176) = 0;
  *(v46 + 16) = 0x6572417377617264;
  *(v46 + 24) = 0xE900000000000061;
  *(v46 + 32) = v42;
  *(v46 + 40) = v44;
  *(v46 + 48) = 0;
  *(v46 + 56) = 1;
  *(v46 + 58) = 0;
  *(v46 + 184) = 0;
  *(v46 + 188) = 1;
  *(v46 + 192) = 0;
  *(v46 + 196) = 1;
  *(v46 + 200) = 0x1000100000000;
  *(v46 + 208) = 1;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 96) = v43;
  *(v46 + 104) = 0;
  *(v46 + 144) = xmmword_1AFE22A20;
  *(v46 + 80) = v45;
  *(v46 + 88) = &off_1F2535378;
  *(v46 + 210) = 0;
  v47 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v47)
  {
    v48 = (*(v47 + 8))();
  }

  else
  {
    v48 = v44;
  }

  v49 = swift_conformsToProtocol2();
  if (v49 && v48)
  {
    v50 = (*(v49 + 8))(v48, v49);

    *(v46 + 160) = v50;
  }

  else
  {
  }

  v51 = *(v46 + 64);
  *(v46 + 64) = sub_1AFC704DC;
  *(v46 + 72) = v42;
  sub_1AF0FB8EC(v51);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = 0;

  *(v0 + 72) = v46;
  v52 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v54 = swift_allocObject();
  v54[4] = sub_1AFC73C3C;
  v54[5] = v52;
  v54[2] = sub_1AFC73BDC;
  v54[3] = v52;
  v54[6] = v52;
  v55 = swift_allocObject();
  *(v55 + 112) = 1;
  *(v55 + 128) = 0;
  *(v55 + 136) = 0;
  *(v55 + 120) = 0;
  *(v55 + 160) = MEMORY[0x1E69E7CC0];
  *(v55 + 168) = 0;
  *(v55 + 210) = 0;
  *(v55 + 216) = 0;
  *(v55 + 176) = 0;
  *(v55 + 16) = 0x6953656C62756F64;
  *(v55 + 24) = 0xEB00000000646564;
  *(v55 + 32) = v52;
  *(v55 + 40) = v44;
  *(v55 + 48) = 0;
  *(v55 + 56) = 1;
  *(v55 + 58) = 0;
  *(v55 + 184) = 0;
  *(v55 + 188) = 1;
  *(v55 + 192) = 0;
  *(v55 + 196) = 1;
  *(v55 + 200) = 0x1000100000000;
  *(v55 + 208) = 1;
  *(v55 + 64) = 0;
  *(v55 + 72) = 0;
  *(v55 + 96) = v53;
  *(v55 + 104) = 0;
  *(v55 + 144) = xmmword_1AFE22A20;
  *(v55 + 80) = v54;
  *(v55 + 88) = &off_1F2535378;
  *(v55 + 210) = 0;
  swift_retain_n();

  if (v47)
  {
    v56 = (*(v47 + 8))();
  }

  else
  {
    v56 = v44;
  }

  v57 = swift_conformsToProtocol2();
  if (v57 && v56)
  {
    v58 = (*(v57 + 8))(v56, v57);

    *(v55 + 160) = v58;
  }

  else
  {
  }

  v59 = *(v55 + 64);
  *(v55 + 64) = sub_1AFC73B40;
  *(v55 + 72) = v52;
  sub_1AF0FB8EC(v59);
  *(v55 + 168) = 0;
  *(v55 + 176) = 0;

  *(v55 + 216) = 0;

  *(v0 + 80) = v55;
  v60 = swift_getKeyPath();
  v61 = swift_getKeyPath();
  v62 = swift_allocObject();
  v62[4] = sub_1AFC73AE4;
  v62[5] = v60;
  v62[2] = sub_1AFC73BD8;
  v62[3] = v60;
  v62[6] = v60;
  v63 = swift_allocObject();
  *(v63 + 112) = 1;
  *(v63 + 128) = 0;
  *(v63 + 136) = 0;
  *(v63 + 120) = 0;
  *(v63 + 160) = MEMORY[0x1E69E7CC0];
  *(v63 + 168) = 0;
  *(v63 + 216) = 0;
  *(v63 + 176) = 0;
  strcpy((v63 + 16), "spotInnerAngle");
  *(v63 + 31) = -18;
  *(v63 + 32) = v60;
  v64 = MEMORY[0x1E69E6448];
  *(v63 + 40) = MEMORY[0x1E69E6448];
  *(v63 + 48) = 0;
  *(v63 + 56) = 1;
  *(v63 + 58) = 256;
  *(v63 + 184) = 0;
  *(v63 + 188) = 1;
  *(v63 + 192) = 0;
  *(v63 + 196) = 1;
  *(v63 + 200) = 0x1000100000000;
  *(v63 + 208) = 1;
  *(v63 + 64) = 0;
  *(v63 + 72) = 0;
  *(v63 + 96) = v61;
  *(v63 + 104) = 0;
  *(v63 + 144) = xmmword_1AFE22A20;
  *(v63 + 80) = v62;
  *(v63 + 88) = &off_1F2535378;
  *(v63 + 210) = 256;
  swift_retain_n();

  if (v22)
  {
    v65 = (*(v22 + 8))();
  }

  else
  {
    v65 = v64;
  }

  v66 = swift_conformsToProtocol2();
  if (v66 && v65)
  {
    v67 = (*(v66 + 8))(v65, v66);

    *(v63 + 160) = v67;
  }

  else
  {
  }

  *(v63 + 64) = sub_1AFC73B3C;
  *(v63 + 72) = v60;
  sub_1AF0FB8EC(0);
  *(v63 + 168) = 0;
  *(v63 + 176) = 0;

  *(v63 + 216) = 0;
  *(v0 + 88) = v63;
  v68 = swift_getKeyPath();
  v69 = swift_getKeyPath();
  v70 = swift_allocObject();
  v70[4] = sub_1AFC73AE4;
  v70[5] = v68;
  v70[2] = sub_1AFC73BD8;
  v70[3] = v68;
  v70[6] = v68;
  v71 = swift_allocObject();
  *(v71 + 112) = 1;
  *(v71 + 128) = 0;
  *(v71 + 136) = 0;
  *(v71 + 120) = 0;
  *(v71 + 160) = MEMORY[0x1E69E7CC0];
  *(v71 + 168) = 0;
  *(v71 + 216) = 0;
  *(v71 + 176) = 0;
  strcpy((v71 + 16), "spotOuterAngle");
  *(v71 + 31) = -18;
  *(v71 + 32) = v68;
  v72 = MEMORY[0x1E69E6448];
  *(v71 + 40) = MEMORY[0x1E69E6448];
  *(v71 + 48) = 0;
  *(v71 + 56) = 1;
  *(v71 + 58) = 0;
  *(v71 + 184) = 0;
  *(v71 + 188) = 1;
  *(v71 + 192) = 0;
  *(v71 + 196) = 1;
  *(v71 + 200) = 0x1000100000000;
  *(v71 + 208) = 1;
  *(v71 + 64) = 0;
  *(v71 + 72) = 0;
  *(v71 + 96) = v69;
  *(v71 + 104) = 0;
  *(v71 + 144) = xmmword_1AFE22A20;
  *(v71 + 80) = v70;
  *(v71 + 88) = &off_1F2535378;
  *(v71 + 210) = 0;
  swift_retain_n();

  if (v22)
  {
    v73 = (*(v22 + 8))();
  }

  else
  {
    v73 = v72;
  }

  v74 = swift_conformsToProtocol2();
  if (v74 && v73)
  {
    v75 = (*(v74 + 8))(v73, v74);

    *(v71 + 160) = v75;
  }

  else
  {
  }

  *(v71 + 64) = sub_1AFC73B3C;
  *(v71 + 72) = v68;
  sub_1AF0FB8EC(0);
  *(v71 + 168) = 0;
  *(v71 + 176) = 0;

  *(v71 + 216) = 0;
  v76 = v0;
  *(v0 + 96) = v71;
  v77 = swift_getKeyPath();
  v78 = swift_getKeyPath();
  v79 = swift_allocObject();
  v79[4] = sub_1AFC73AE4;
  v79[5] = v77;
  v79[2] = sub_1AFC73BD8;
  v79[3] = v77;
  v79[6] = v77;
  v80 = swift_allocObject();
  *(v80 + 112) = 1;
  *(v80 + 128) = 0;
  *(v80 + 136) = 0;
  *(v80 + 120) = 0;
  *(v80 + 160) = MEMORY[0x1E69E7CC0];
  *(v80 + 168) = 0;
  *(v80 + 216) = 0;
  *(v80 + 176) = 0;
  *(v80 + 16) = 0xD000000000000013;
  *(v80 + 24) = 0x80000001AFF4BF10;
  *(v80 + 32) = v77;
  v81 = MEMORY[0x1E69E6448];
  *(v80 + 40) = MEMORY[0x1E69E6448];
  *(v80 + 48) = 0;
  *(v80 + 56) = 1;
  *(v80 + 58) = 0;
  *(v80 + 184) = 0;
  *(v80 + 188) = 1;
  *(v80 + 192) = 0;
  *(v80 + 196) = 1;
  *(v80 + 200) = 0x1000100000000;
  *(v80 + 208) = 1;
  *(v80 + 64) = 0;
  *(v80 + 72) = 0;
  *(v80 + 96) = v78;
  *(v80 + 104) = 0;
  *(v80 + 144) = xmmword_1AFE22A20;
  *(v80 + 80) = v79;
  *(v80 + 88) = &off_1F2535378;
  *(v80 + 210) = 0;
  swift_retain_n();

  if (v22)
  {
    v82 = (*(v22 + 8))();
  }

  else
  {
    v82 = v81;
  }

  v83 = swift_conformsToProtocol2();
  v84 = v76;
  if (v83 && v82)
  {
    v85 = (*(v83 + 8))(v82, v83);

    *(v80 + 160) = v85;
  }

  else
  {
  }

  *(v80 + 64) = sub_1AFC73B3C;
  *(v80 + 72) = v77;
  sub_1AF0FB8EC(0);
  *(v80 + 168) = 0;
  *(v80 + 176) = 0;

  *(v80 + 216) = 0;
  v76[13] = v80;
  v86 = swift_getKeyPath();
  v87 = swift_getKeyPath();
  v88 = swift_allocObject();
  v88[4] = sub_1AFC73C3C;
  v88[5] = v86;
  v88[2] = sub_1AFC73BDC;
  v88[3] = v86;
  v88[6] = v86;
  v89 = swift_allocObject();
  *(v89 + 112) = 1;
  *(v89 + 128) = 0;
  *(v89 + 136) = 0;
  *(v89 + 120) = 0;
  *(v89 + 160) = MEMORY[0x1E69E7CC0];
  *(v89 + 168) = 0;
  *(v89 + 216) = 0;
  *(v89 + 176) = 0;
  *(v89 + 16) = 0x6168537374736163;
  *(v89 + 24) = 0xEB00000000776F64;
  *(v89 + 32) = v86;
  *(v89 + 40) = v44;
  *(v89 + 48) = 0;
  *(v89 + 56) = 1;
  *(v89 + 58) = 256;
  *(v89 + 184) = 0;
  *(v89 + 188) = 1;
  *(v89 + 192) = 0;
  *(v89 + 196) = 1;
  *(v89 + 200) = 0x1000100000000;
  *(v89 + 208) = 1;
  *(v89 + 64) = 0;
  *(v89 + 72) = 0;
  *(v89 + 96) = v87;
  *(v89 + 104) = 0;
  *(v89 + 144) = xmmword_1AFE22A20;
  *(v89 + 80) = v88;
  *(v89 + 88) = &off_1F2535378;
  *(v89 + 210) = 256;
  swift_retain_n();

  if (v47)
  {
    v44 = (*(v47 + 8))();
  }

  v90 = swift_conformsToProtocol2();
  if (v90 && v44)
  {
    v91 = (*(v90 + 8))(v44, v90);

    *(v89 + 160) = v91;
  }

  else
  {
  }

  *(v89 + 64) = sub_1AFC73B40;
  *(v89 + 72) = v86;
  sub_1AF0FB8EC(0);
  *(v89 + 168) = 0;
  *(v89 + 176) = 0;

  *(v89 + 216) = 0;
  v76[14] = v89;
  v92 = swift_getKeyPath();
  v93 = swift_getKeyPath();
  v94 = swift_allocObject();
  v94[4] = sub_1AFC73AE4;
  v94[5] = v92;
  v94[2] = sub_1AFC73BD8;
  v94[3] = v92;
  v94[6] = v92;
  v95 = swift_allocObject();
  *(v95 + 112) = 1;
  *(v95 + 128) = 0;
  *(v95 + 136) = 0;
  *(v95 + 120) = 0;
  *(v95 + 160) = MEMORY[0x1E69E7CC0];
  *(v95 + 168) = 0;
  *(v95 + 216) = 0;
  *(v95 + 176) = 0;
  *(v95 + 16) = 0x6E49776F64616873;
  *(v95 + 24) = 0xEF797469736E6574;
  *(v95 + 32) = v92;
  v96 = MEMORY[0x1E69E6448];
  *(v95 + 40) = MEMORY[0x1E69E6448];
  *(v95 + 48) = 0;
  *(v95 + 56) = 1;
  *(v95 + 58) = 0;
  *(v95 + 184) = 0;
  *(v95 + 188) = 1;
  *(v95 + 192) = 0;
  *(v95 + 196) = 1;
  *(v95 + 200) = 0x1000100000000;
  *(v95 + 208) = 1;
  *(v95 + 64) = 0;
  *(v95 + 72) = 0;
  *(v95 + 96) = v93;
  *(v95 + 104) = 0;
  *(v95 + 144) = xmmword_1AFE22A20;
  *(v95 + 80) = v94;
  *(v95 + 88) = &off_1F2535378;
  *(v95 + 210) = 0;
  swift_retain_n();

  if (v22)
  {
    v97 = (*(v22 + 8))();
  }

  else
  {
    v97 = v96;
  }

  v98 = swift_conformsToProtocol2();
  if (v98 && v97)
  {
    v99 = (*(v98 + 8))(v97, v98);

    *(v95 + 160) = v99;
  }

  else
  {
  }

  *(v95 + 64) = sub_1AFC73B3C;
  *(v95 + 72) = v92;
  sub_1AF0FB8EC(0);
  *(v95 + 168) = 0;
  *(v95 + 176) = 0;

  *(v95 + 216) = 0;
  v76[15] = v95;
  v100 = swift_getKeyPath();
  v101 = swift_getKeyPath();
  v102 = MEMORY[0x1E69E6530];
  sub_1AFC7246C(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v103 = swift_allocObject();
  v103[4] = sub_1AFC704E4;
  v103[5] = v100;
  v103[2] = sub_1AFC70518;
  v103[3] = v100;
  v103[6] = v100;
  v104 = swift_allocObject();
  *(v104 + 112) = 1;
  *(v104 + 128) = 0;
  *(v104 + 136) = 0;
  *(v104 + 120) = 0;
  *(v104 + 160) = MEMORY[0x1E69E7CC0];
  *(v104 + 168) = 0;
  *(v104 + 216) = 0;
  *(v104 + 176) = 0;
  *(v104 + 16) = 0xD000000000000011;
  *(v104 + 24) = 0x80000001AFF4BF30;
  *(v104 + 32) = v100;
  *(v104 + 40) = v102;
  *(v104 + 48) = 0;
  *(v104 + 56) = 1;
  *(v104 + 58) = 0;
  *(v104 + 184) = 0;
  *(v104 + 188) = 1;
  *(v104 + 192) = 0;
  *(v104 + 196) = 1;
  *(v104 + 200) = 0x1000100000000;
  *(v104 + 208) = 1;
  *(v104 + 64) = 0;
  *(v104 + 72) = 0;
  *(v104 + 96) = v101;
  *(v104 + 104) = 0;
  *(v104 + 144) = xmmword_1AFE22A20;
  *(v104 + 80) = v103;
  *(v104 + 88) = &off_1F2535378;
  *(v104 + 210) = 0;
  v105 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v105)
  {
    v102 = (*(v105 + 8))();
  }

  v106 = swift_conformsToProtocol2();
  if (v106 && v102)
  {
    v107 = (*(v106 + 8))(v102, v106);

    *(v104 + 160) = v107;
  }

  else
  {
  }

  *(v104 + 64) = sub_1AFC70524;
  *(v104 + 72) = v100;
  sub_1AF0FB8EC(0);
  *(v104 + 168) = 0;
  *(v104 + 176) = 0;

  *(v104 + 216) = 0;
  v76[16] = v104;
  v108 = swift_getKeyPath();
  v109 = swift_getKeyPath();
  v110 = swift_allocObject();
  v110[4] = sub_1AFC73AE4;
  v110[5] = v108;
  v110[2] = sub_1AFC73BD8;
  v110[3] = v108;
  v110[6] = v108;
  v111 = swift_allocObject();
  *(v111 + 112) = 1;
  *(v111 + 128) = 0;
  *(v111 + 136) = 0;
  *(v111 + 120) = 0;
  *(v111 + 160) = MEMORY[0x1E69E7CC0];
  *(v111 + 168) = 0;
  *(v111 + 216) = 0;
  *(v111 + 176) = 0;
  *(v111 + 16) = 0x6942776F64616873;
  *(v111 + 24) = 0xEA00000000007361;
  *(v111 + 32) = v108;
  v112 = MEMORY[0x1E69E6448];
  *(v111 + 40) = MEMORY[0x1E69E6448];
  *(v111 + 48) = 0;
  *(v111 + 56) = 1;
  *(v111 + 58) = 0;
  *(v111 + 184) = 0;
  *(v111 + 188) = 1;
  *(v111 + 192) = 0;
  *(v111 + 196) = 1;
  *(v111 + 200) = 0x1000100000000;
  *(v111 + 208) = 1;
  *(v111 + 64) = 0;
  *(v111 + 72) = 0;
  *(v111 + 96) = v109;
  *(v111 + 104) = 0;
  *(v111 + 144) = xmmword_1AFE22A20;
  *(v111 + 80) = v110;
  *(v111 + 88) = &off_1F2535378;
  *(v111 + 210) = 0;
  swift_retain_n();

  if (v22)
  {
    v112 = (*(v22 + 8))();
  }

  v113 = swift_conformsToProtocol2();
  if (v113 && v112)
  {
    v114 = (*(v113 + 8))(v112, v113);

    *(v111 + 160) = v114;
  }

  else
  {
  }

  *(v111 + 64) = sub_1AFC73B3C;
  *(v111 + 72) = v108;
  sub_1AF0FB8EC(0);
  *(v111 + 168) = 0;
  *(v111 + 176) = 0;

  *(v111 + 216) = 0;
  *(v84 + 136) = v111;
  qword_1EB6C3618 = v84;
  return result;
}

void sub_1AFC55E20(uint64_t *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_light);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 type];
  }

  else
  {
    v4 = 2;
  }

  *a1 = v4;
}

void sub_1AFC55E84(float *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_light);
  if (v2)
  {
    v3 = v2;
    [v2 intensity];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  *a1 = v5;
}

BOOL sub_1AFC55EE8()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 type];

      return v3 == 5;
    }
  }

  else
  {
    sub_1AFC73A9C(v0, v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 light];

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

BOOL sub_1AFC55FD4()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 type];

      return v3 == 3;
    }
  }

  else
  {
    sub_1AFC73A9C(v0, v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 light];

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

BOOL sub_1AFC560C0()
{
  v0 = sub_1AFC628C8(&selRef_light);
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  v2 = [v0 type];

  return v2 != 0;
}

void sub_1AFC56114(BOOL *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_light);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 type];

    v5 = v4 != 0;
  }

  else
  {
    v5 = 1;
  }

  *a1 = v5;
}

uint64_t sub_1AFC56180()
{
  v0 = sub_1AFC628C8(&selRef_light);
  if (!v0)
  {
    return 1;
  }

  v1 = v0;
  v2 = [v0 type];

  if (v2 == 2)
  {
    return 1;
  }

  v3 = sub_1AFC628C8(&selRef_light);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 type];

    if (v5 == 3)
    {
      return 1;
    }
  }

  result = sub_1AFC628C8(&selRef_light);
  if (result)
  {
    v7 = result;
    v8 = [result type];

    return v8 == 1;
  }

  return result;
}

float sub_1AFC56284(SEL *a1)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v1, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v10);
    if (Strong)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v8 = 0;
    }

    v3 = [v8 camera];

    if (v3)
    {
      goto LABEL_3;
    }

    return 1.0;
  }

  v3 = v1[4];
  v4 = v3;
  if (!v3)
  {
    return 1.0;
  }

LABEL_3:
  [v3 *a1];
  v6 = v5;

  return v6;
}

double sub_1AFC563CC()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (v1)
    {
LABEL_3:
      [v1 projectionTransform];
      v7 = v3;

      return v7;
    }
  }

  else
  {
    sub_1AFC73A9C(v0, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 camera];

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0.0;
}

double sub_1AFC564C8()
{
  v0 = sub_1AFC628C8(&selRef_camera);
  if (v0)
  {
    v1 = v0;
    [v0 projectionTransform];
    v11 = v2;
    v9 = v4;
    v10 = v3;
    v8 = v5;

    v6.columns[3] = v8;
    v6.columns[2] = v9;
    v6.columns[1] = v10;
    v6.columns[0] = v11;
  }

  else
  {
    v6.columns[0] = 0uLL;
    v6.columns[1] = 0uLL;
    v6.columns[2] = 0uLL;
    v6.columns[3] = 0uLL;
  }

  *&result = __invert_f4(v6);
  return result;
}

double sub_1AFC5654C()
{
  sub_1AFC73A9C(v0, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v6);
  if (Strong)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 worldTransform];
      v5 = v3;
      swift_unknownObjectRelease();
      return v5;
    }

    swift_unknownObjectRelease();
  }

  return 0.0;
}

double sub_1AFC565F0()
{
  sub_1AFC73A9C(v0, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v13);
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
    v7.columns[0] = 0uLL;
    v7.columns[1] = 0uLL;
    v7.columns[2] = 0uLL;
    v7.columns[3] = 0uLL;
    goto LABEL_6;
  }

  [v2 worldTransform];
  v11 = v4;
  v12 = v3;
  v9 = v6;
  v10 = v5;
  swift_unknownObjectRelease();
  v7.columns[3] = v9;
  v7.columns[2] = v10;
  v7.columns[1] = v11;
  v7.columns[0] = v12;
LABEL_6:
  *&result = __invert_f4(v7);
  return result;
}

double sub_1AFC56698()
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v0, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v8);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 camera];

    if (v1)
    {
      goto LABEL_3;
    }

    return 0.0;
  }

  v1 = v0[4];
  v2 = v1;
  if (!v1)
  {
    return 0.0;
  }

LABEL_3:
  [v1 filmOffset];
  v4 = v3;

  return v4;
}

uint64_t sub_1AFC567E8()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFEA6590;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v4 = swift_allocObject();
  v4[4] = sub_1AFC7052C;
  v4[5] = KeyPath;
  v4[2] = sub_1AFC70560;
  v4[3] = KeyPath;
  v4[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v5 = swift_allocObject();
  *(v5 + 112) = 1;
  *(v5 + 128) = 0;
  *(v5 + 136) = 0;
  *(v5 + 120) = 0;
  *(v5 + 160) = MEMORY[0x1E69E7CC0];
  *(v5 + 168) = 0;
  *(v5 + 216) = 0;
  *(v5 + 176) = 0;
  *(v5 + 16) = 0x656C616373;
  *(v5 + 24) = 0xE500000000000000;
  *(v5 + 32) = KeyPath;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  *(v5 + 56) = 1;
  *(v5 + 58) = 0;
  *(v5 + 184) = 0;
  *(v5 + 188) = 1;
  *(v5 + 192) = 0;
  *(v5 + 196) = 1;
  *(v5 + 200) = 0x1000100000000;
  *(v5 + 208) = 1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = v2;
  *(v5 + 104) = 0;
  *(v5 + 144) = xmmword_1AFE22A20;
  *(v5 + 80) = v4;
  *(v5 + 88) = &off_1F2535378;
  *(v5 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();

  if (v6)
  {
    v7 = (*(v6 + 8))();
  }

  else
  {
    v7 = v3;
  }

  v8 = swift_conformsToProtocol2();
  if (v8 && v7)
  {
    v9 = (*(v8 + 8))(v7, v8);

    *(v5 + 160) = v9;
  }

  else
  {
  }

  v10 = *(v5 + 64);
  *(v5 + 64) = sub_1AFC7056C;
  *(v5 + 72) = KeyPath;
  sub_1AF0FB8EC(v10);
  *(v5 + 168) = 0;
  *(v5 + 176) = 0;

  *(v5 + 216) = 0;

  *(v0 + 32) = v5;
  v11 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = swift_allocObject();
  v13[4] = sub_1AFC73AE8;
  v13[5] = v11;
  v13[2] = sub_1AFC73BE0;
  v13[3] = v11;
  v13[6] = v11;
  v14 = swift_allocObject();
  *(v14 + 112) = 1;
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  *(v14 + 120) = 0;
  *(v14 + 160) = MEMORY[0x1E69E7CC0];
  *(v14 + 168) = 0;
  *(v14 + 210) = 0;
  *(v14 + 216) = 0;
  *(v14 + 176) = 0;
  *(v14 + 16) = 0x6E654C6C61636F66;
  *(v14 + 24) = 0xEB00000000687467;
  *(v14 + 32) = v11;
  *(v14 + 40) = v3;
  *(v14 + 48) = 0;
  *(v14 + 56) = 1;
  *(v14 + 58) = 0;
  *(v14 + 184) = 0;
  *(v14 + 188) = 1;
  *(v14 + 192) = 0;
  *(v14 + 196) = 1;
  *(v14 + 200) = 0x1000100000000;
  *(v14 + 208) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 96) = v12;
  *(v14 + 104) = 0;
  *(v14 + 144) = xmmword_1AFE22A20;
  *(v14 + 80) = v13;
  *(v14 + 88) = &off_1F2535378;
  *(v14 + 210) = 0;
  swift_retain_n();

  if (v6)
  {
    v15 = (*(v6 + 8))();
  }

  else
  {
    v15 = v3;
  }

  v16 = swift_conformsToProtocol2();
  if (v16 && v15)
  {
    v17 = (*(v16 + 8))(v15, v16);

    *(v14 + 160) = v17;
  }

  else
  {
  }

  v18 = *(v14 + 64);
  *(v14 + 64) = sub_1AFC73B44;
  *(v14 + 72) = v11;
  sub_1AF0FB8EC(v18);
  *(v14 + 168) = 0;
  *(v14 + 176) = 0;

  *(v14 + 216) = 0;

  *(v0 + 40) = v14;
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = swift_allocObject();
  v21[4] = sub_1AFC73AE8;
  v21[5] = v19;
  v21[2] = sub_1AFC73BE0;
  v21[3] = v19;
  v21[6] = v19;
  v22 = swift_allocObject();
  *(v22 + 112) = 1;
  *(v22 + 128) = 0;
  *(v22 + 136) = 0;
  *(v22 + 120) = 0;
  *(v22 + 160) = MEMORY[0x1E69E7CC0];
  *(v22 + 168) = 0;
  *(v22 + 210) = 0;
  *(v22 + 216) = 0;
  *(v22 + 176) = 0;
  *(v22 + 16) = 0x56664F646C656966;
  *(v22 + 24) = 0xEB00000000776569;
  *(v22 + 32) = v19;
  *(v22 + 40) = v3;
  *(v22 + 48) = 0;
  *(v22 + 56) = 1;
  *(v22 + 58) = 0;
  *(v22 + 184) = 0;
  *(v22 + 188) = 1;
  *(v22 + 192) = 0;
  *(v22 + 196) = 1;
  *(v22 + 200) = 0x1000100000000;
  *(v22 + 208) = 1;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 96) = v20;
  *(v22 + 104) = 0;
  *(v22 + 144) = xmmword_1AFE22A20;
  *(v22 + 80) = v21;
  *(v22 + 88) = &off_1F2535378;
  *(v22 + 210) = 0;
  swift_retain_n();

  if (v6)
  {
    v23 = (*(v6 + 8))();
  }

  else
  {
    v23 = v3;
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v23)
  {
    v25 = (*(v24 + 8))(v23, v24);

    *(v22 + 160) = v25;
  }

  else
  {
  }

  v26 = *(v22 + 64);
  *(v22 + 64) = sub_1AFC73B44;
  *(v22 + 72) = v19;
  sub_1AF0FB8EC(v26);
  *(v22 + 168) = 0;
  *(v22 + 176) = 0;

  *(v22 + 216) = 0;

  *(v0 + 48) = v22;
  v27 = swift_getKeyPath();
  v28 = swift_allocObject();
  v28[4] = sub_1AFC73AE8;
  v28[5] = v27;
  v28[2] = sub_1AFC73BE0;
  v28[3] = v27;
  v28[6] = v27;
  v29 = swift_allocObject();
  *(v29 + 112) = 1;
  *(v29 + 128) = 0;
  *(v29 + 136) = 0;
  *(v29 + 120) = 0;
  *(v29 + 160) = MEMORY[0x1E69E7CC0];
  *(v29 + 168) = 0;
  *(v29 + 210) = 0;
  *(v29 + 216) = 0;
  *(v29 + 176) = 0;
  strcpy((v29 + 16), "sensorHeight");
  *(v29 + 29) = 0;
  *(v29 + 30) = -5120;
  *(v29 + 32) = v27;
  *(v29 + 40) = v3;
  *(v29 + 48) = 0;
  *(v29 + 56) = 1;
  *(v29 + 58) = 0;
  *(v29 + 184) = 0;
  *(v29 + 188) = 1;
  *(v29 + 192) = 0;
  *(v29 + 196) = 1;
  *(v29 + 200) = 0x1000100000000;
  *(v29 + 208) = 1;
  *(v29 + 64) = 0;
  *(v29 + 72) = 0;
  *(v29 + 96) = 0;
  *(v29 + 104) = 0;
  *(v29 + 144) = xmmword_1AFE22A20;
  *(v29 + 80) = v28;
  *(v29 + 88) = &off_1F2535378;
  *(v29 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v30 = (*(v6 + 8))();
  }

  else
  {
    v30 = v3;
  }

  v31 = swift_conformsToProtocol2();
  if (v31 && v30)
  {
    *(v29 + 160) = (*(v31 + 8))(v30, v31);
  }

  v32 = *(v29 + 64);
  *(v29 + 64) = sub_1AFC73B44;
  *(v29 + 72) = v27;
  sub_1AF0FB8EC(v32);
  *(v29 + 168) = 0;
  *(v29 + 176) = 0;

  *(v29 + 216) = 0;

  *(v0 + 56) = v29;
  v33 = swift_getKeyPath();
  v34 = swift_allocObject();
  v34[4] = sub_1AFC73AE8;
  v34[5] = v33;
  v34[2] = sub_1AFC73BE0;
  v34[3] = v33;
  v34[6] = v33;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  *(v35 + 160) = MEMORY[0x1E69E7CC0];
  *(v35 + 168) = 0;
  *(v35 + 210) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  strcpy((v35 + 16), "focusDistance");
  *(v35 + 30) = -4864;
  *(v35 + 32) = v33;
  *(v35 + 40) = v3;
  *(v35 + 48) = 0;
  *(v35 + 56) = 1;
  *(v35 + 58) = 0;
  *(v35 + 184) = 0;
  *(v35 + 188) = 1;
  *(v35 + 192) = 0;
  *(v35 + 196) = 1;
  *(v35 + 200) = 0x1000100000000;
  *(v35 + 208) = 1;
  *(v35 + 64) = 0;
  *(v35 + 72) = 0;
  *(v35 + 96) = 0;
  *(v35 + 104) = 0;
  *(v35 + 144) = xmmword_1AFE22A20;
  *(v35 + 80) = v34;
  *(v35 + 88) = &off_1F2535378;
  *(v35 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v36 = (*(v6 + 8))();
  }

  else
  {
    v36 = v3;
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v36)
  {
    *(v35 + 160) = (*(v37 + 8))(v36, v37);
  }

  v38 = *(v35 + 64);
  *(v35 + 64) = sub_1AFC73B44;
  *(v35 + 72) = v33;
  sub_1AF0FB8EC(v38);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;

  *(v0 + 64) = v35;
  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  v40[4] = sub_1AFC73AE8;
  v40[5] = v39;
  v40[2] = sub_1AFC73BE0;
  v40[3] = v39;
  v40[6] = v39;
  v41 = swift_allocObject();
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  *(v41 + 160) = MEMORY[0x1E69E7CC0];
  *(v41 + 168) = 0;
  *(v41 + 216) = 0;
  *(v41 + 176) = 0;
  *(v41 + 16) = 0x7261654E7ALL;
  *(v41 + 24) = 0xE500000000000000;
  *(v41 + 32) = v39;
  *(v41 + 40) = v3;
  *(v41 + 48) = 0;
  *(v41 + 56) = 1;
  *(v41 + 58) = 256;
  *(v41 + 184) = 0;
  *(v41 + 188) = 1;
  *(v41 + 192) = 0;
  *(v41 + 196) = 1;
  *(v41 + 200) = 0x1000100000000;
  *(v41 + 208) = 1;
  *(v41 + 64) = 0;
  *(v41 + 72) = 0;
  *(v41 + 96) = 0;
  *(v41 + 104) = 0;
  *(v41 + 144) = xmmword_1AFE22A20;
  *(v41 + 80) = v40;
  *(v41 + 88) = &off_1F2535378;
  *(v41 + 210) = 256;
  swift_retain_n();
  if (v6)
  {
    v42 = (*(v6 + 8))();
  }

  else
  {
    v42 = v3;
  }

  v43 = swift_conformsToProtocol2();
  if (v43 && v42)
  {
    *(v41 + 160) = (*(v43 + 8))(v42, v43);
  }

  *(v41 + 64) = sub_1AFC73B44;
  *(v41 + 72) = v39;
  sub_1AF0FB8EC(0);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;
  *(v0 + 72) = v41;
  v44 = swift_getKeyPath();
  v45 = swift_allocObject();
  v45[4] = sub_1AFC73AE8;
  v45[5] = v44;
  v45[2] = sub_1AFC73BE0;
  v45[3] = v44;
  v45[6] = v44;
  v46 = swift_allocObject();
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 160) = MEMORY[0x1E69E7CC0];
  *(v46 + 168) = 0;
  *(v46 + 216) = 0;
  *(v46 + 176) = 0;
  *(v46 + 16) = 1918977658;
  *(v46 + 24) = 0xE400000000000000;
  *(v46 + 32) = v44;
  *(v46 + 40) = v3;
  *(v46 + 48) = 0;
  *(v46 + 56) = 1;
  *(v46 + 58) = 0;
  *(v46 + 184) = 0;
  *(v46 + 188) = 1;
  *(v46 + 192) = 0;
  *(v46 + 196) = 1;
  *(v46 + 200) = 0x1000100000000;
  *(v46 + 208) = 1;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 96) = 0;
  *(v46 + 104) = 0;
  *(v46 + 144) = xmmword_1AFE22A20;
  *(v46 + 80) = v45;
  *(v46 + 88) = &off_1F2535378;
  *(v46 + 210) = 0;
  swift_retain_n();
  if (v6)
  {
    v3 = (*(v6 + 8))();
  }

  v47 = swift_conformsToProtocol2();
  if (v47 && v3)
  {
    *(v46 + 160) = (*(v47 + 8))(v3, v47);
  }

  *(v46 + 64) = sub_1AFC73B44;
  *(v46 + 72) = v44;
  sub_1AF0FB8EC(0);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = 0;
  *(v0 + 80) = v46;
  v48 = swift_getKeyPath();
  v49 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v50 = swift_allocObject();
  v50[4] = sub_1AFC70574;
  v50[5] = v48;
  v50[2] = sub_1AFC705A0;
  v50[3] = v48;
  v50[6] = v48;
  v51 = swift_allocObject();
  *(v51 + 112) = 1;
  *(v51 + 128) = 0;
  *(v51 + 136) = 0;
  *(v51 + 120) = 0;
  *(v51 + 160) = MEMORY[0x1E69E7CC0];
  *(v51 + 168) = 0;
  *(v51 + 216) = 0;
  *(v51 + 176) = 0;
  *(v51 + 16) = 0x52444873746E6177;
  *(v51 + 24) = 0xE800000000000000;
  *(v51 + 32) = v48;
  *(v51 + 40) = v49;
  *(v51 + 48) = 0;
  *(v51 + 56) = 1;
  *(v51 + 58) = 256;
  *(v51 + 184) = 0;
  *(v51 + 188) = 1;
  *(v51 + 192) = 0;
  *(v51 + 196) = 1;
  *(v51 + 200) = 0x1000100000000;
  *(v51 + 208) = 1;
  *(v51 + 64) = 0;
  *(v51 + 72) = 0;
  *(v51 + 96) = 0;
  *(v51 + 104) = 0;
  *(v51 + 144) = xmmword_1AFE22A20;
  *(v51 + 80) = v50;
  *(v51 + 88) = &off_1F2535378;
  *(v51 + 210) = 256;
  v52 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v52)
  {
    v49 = (*(v52 + 8))();
  }

  v53 = swift_conformsToProtocol2();
  if (v53 && v49)
  {
    *(v51 + 160) = (*(v53 + 8))(v49, v53);
  }

  *(v51 + 64) = sub_1AFC705AC;
  *(v51 + 72) = v48;
  sub_1AF0FB8EC(0);
  *(v51 + 168) = 0;
  *(v51 + 176) = 0;

  *(v51 + 216) = 0;
  *(v0 + 88) = v51;
  v54 = swift_getKeyPath();
  v55 = MEMORY[0x1E69E7428];
  sub_1AFC703CC(0, &qword_1ED725C78, &unk_1ED72F770, MEMORY[0x1E69E7428]);
  v56 = swift_allocObject();
  v56[4] = sub_1AFC705B4;
  v56[5] = v54;
  v56[2] = sub_1AFC705E8;
  v56[3] = v54;
  v56[6] = v54;
  v57 = swift_allocObject();
  *(v57 + 104) = 0;
  *(v57 + 112) = 1;
  *(v57 + 128) = 0;
  *(v57 + 136) = 0;
  *(v57 + 120) = 0;
  *(v57 + 160) = MEMORY[0x1E69E7CC0];
  *(v57 + 216) = 0;
  sub_1AFC739C4(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], v55);
  v59 = v58;
  *(v57 + 168) = 0;
  *(v57 + 176) = 0;
  *(v57 + 16) = 0x7366664F6D6C6966;
  *(v57 + 24) = 0xEA00000000007465;
  *(v57 + 32) = v54;
  *(v57 + 40) = v58;
  *(v57 + 48) = 0;
  *(v57 + 56) = 1;
  *(v57 + 58) = 0;
  *(v57 + 184) = 0;
  *(v57 + 188) = 1;
  *(v57 + 192) = 0;
  *(v57 + 196) = 1;
  *(v57 + 200) = 0x1000100000000;
  *(v57 + 208) = 1;
  *(v57 + 64) = 0;
  *(v57 + 72) = 0;
  *(v57 + 96) = 0;
  *(v57 + 144) = xmmword_1AFE22A20;
  *(v57 + 80) = v56;
  *(v57 + 88) = &off_1F2535378;
  *(v57 + 210) = 0;
  v60 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v60 && v59)
  {
    v59 = (*(v60 + 8))(v59, v60);
  }

  v61 = swift_conformsToProtocol2();
  if (v61 && v59)
  {
    *(v57 + 160) = (*(v61 + 8))(v59, v61);
  }

  v62 = *(v57 + 64);
  *(v57 + 64) = sub_1AFC705F4;
  *(v57 + 72) = v54;
  sub_1AF0FB8EC(v62);
  *(v57 + 168) = 0;
  *(v57 + 176) = 0;

  *(v57 + 216) = 0;

  *(v0 + 96) = v57;
  v63 = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1ED722B60, type metadata accessor for simd_float4x4);
  v64 = swift_allocObject();
  v64[4] = sub_1AFC705FC;
  v64[5] = v63;
  v64[2] = sub_1AFC70648;
  v64[3] = v63;
  v64[6] = v63;
  v65 = swift_allocObject();
  *(v65 + 104) = 0;
  *(v65 + 112) = 1;
  *(v65 + 128) = 0;
  *(v65 + 136) = 0;
  *(v65 + 120) = 0;
  *(v65 + 160) = MEMORY[0x1E69E7CC0];
  *(v65 + 216) = 0;
  type metadata accessor for simd_float4x4(0);
  v67 = v66;
  *(v65 + 168) = 0;
  *(v65 + 176) = 0;
  *(v65 + 16) = 0xD000000000000013;
  *(v65 + 24) = 0x80000001AFF226C0;
  *(v65 + 32) = v63;
  *(v65 + 40) = v66;
  *(v65 + 48) = 0;
  *(v65 + 56) = 1;
  *(v65 + 58) = 2048;
  *(v65 + 184) = 0;
  *(v65 + 188) = 1;
  *(v65 + 192) = 0;
  *(v65 + 196) = 1;
  *(v65 + 200) = 0x1000100000000;
  *(v65 + 208) = 1;
  *(v65 + 64) = 0;
  *(v65 + 72) = 0;
  *(v65 + 96) = 0;
  *(v65 + 144) = xmmword_1AFE22A20;
  *(v65 + 80) = v64;
  *(v65 + 88) = &off_1F2535378;
  *(v65 + 210) = 2048;
  v68 = swift_conformsToProtocol2();
  if (v68)
  {
    v69 = v67;
  }

  else
  {
    v69 = 0;
  }

  swift_retain_n();
  v70 = v67;
  if (v69)
  {
    v70 = (*(v68 + 8))(v69, v68);
  }

  v71 = swift_conformsToProtocol2();
  if (v71 && v70)
  {
    *(v65 + 160) = (*(v71 + 8))(v70, v71);
  }

  v72 = *(v65 + 64);
  *(v65 + 64) = sub_1AFC70658;
  *(v65 + 72) = v63;
  sub_1AF0FB8EC(v72);
  *(v65 + 168) = 0;
  *(v65 + 176) = 0;

  *(v65 + 216) = 0;

  *(v0 + 104) = v65;
  v73 = swift_getKeyPath();
  v74 = swift_allocObject();
  v74[4] = sub_1AFC73C94;
  v74[5] = v73;
  v74[2] = sub_1AFC73C9C;
  v74[3] = v73;
  v74[6] = v73;
  v75 = swift_allocObject();
  *(v75 + 112) = 1;
  *(v75 + 128) = 0;
  *(v75 + 136) = 0;
  *(v75 + 120) = 0;
  *(v75 + 160) = MEMORY[0x1E69E7CC0];
  *(v75 + 168) = 0;
  *(v75 + 216) = 0;
  *(v75 + 176) = 0;
  *(v75 + 16) = 0xD00000000000001ALL;
  *(v75 + 24) = 0x80000001AFF4BF50;
  *(v75 + 32) = v73;
  *(v75 + 40) = v67;
  *(v75 + 48) = 0;
  *(v75 + 56) = 1;
  *(v75 + 58) = 16;
  *(v75 + 184) = 0;
  *(v75 + 188) = 1;
  *(v75 + 192) = 0;
  *(v75 + 196) = 1;
  *(v75 + 200) = 0x1000100000000;
  *(v75 + 208) = 1;
  *(v75 + 64) = 0;
  *(v75 + 72) = 0;
  *(v75 + 96) = 0;
  *(v75 + 104) = 0;
  *(v75 + 144) = xmmword_1AFE22A20;
  *(v75 + 80) = v74;
  *(v75 + 88) = &off_1F2535378;
  *(v75 + 210) = 16;
  swift_retain_n();
  v76 = v67;
  if (v69)
  {
    v76 = (*(v68 + 8))(v69, v68);
  }

  v77 = swift_conformsToProtocol2();
  if (v77 && v76)
  {
    *(v75 + 160) = (*(v77 + 8))(v76, v77);
  }

  v78 = *(v75 + 64);
  *(v75 + 64) = sub_1AFC73B48;
  *(v75 + 72) = v73;
  sub_1AF0FB8EC(v78);
  *(v75 + 168) = 0;
  *(v75 + 176) = 0;

  *(v75 + 216) = 0;

  *(v0 + 112) = v75;
  v79 = swift_getKeyPath();
  v80 = swift_allocObject();
  v80[4] = sub_1AFC73C94;
  v80[5] = v79;
  v80[2] = sub_1AFC73C9C;
  v80[3] = v79;
  v80[6] = v79;
  v81 = swift_allocObject();
  *(v81 + 112) = 1;
  *(v81 + 128) = 0;
  *(v81 + 136) = 0;
  *(v81 + 120) = 0;
  *(v81 + 160) = MEMORY[0x1E69E7CC0];
  *(v81 + 168) = 0;
  *(v81 + 216) = 0;
  *(v81 + 176) = 0;
  strcpy((v81 + 16), "worldTransform");
  *(v81 + 31) = -18;
  *(v81 + 32) = v79;
  *(v81 + 40) = v67;
  *(v81 + 48) = 0;
  *(v81 + 56) = 1;
  *(v81 + 58) = 2048;
  *(v81 + 184) = 0;
  *(v81 + 188) = 1;
  *(v81 + 192) = 0;
  *(v81 + 196) = 1;
  *(v81 + 200) = 0x1000100000000;
  *(v81 + 208) = 1;
  *(v81 + 64) = 0;
  *(v81 + 72) = 0;
  *(v81 + 96) = 0;
  *(v81 + 104) = 0;
  *(v81 + 144) = xmmword_1AFE22A20;
  *(v81 + 80) = v80;
  *(v81 + 88) = &off_1F2535378;
  *(v81 + 210) = 2048;
  swift_retain_n();
  v82 = v67;
  if (v69)
  {
    v82 = (*(v68 + 8))(v69, v68);
  }

  v83 = swift_conformsToProtocol2();
  if (v83 && v82)
  {
    *(v81 + 160) = (*(v83 + 8))(v82, v83);
  }

  v84 = *(v81 + 64);
  *(v81 + 64) = sub_1AFC73B48;
  *(v81 + 72) = v79;
  sub_1AF0FB8EC(v84);
  *(v81 + 168) = 0;
  *(v81 + 176) = 0;

  *(v81 + 216) = 0;

  *(v0 + 120) = v81;
  v85 = swift_getKeyPath();
  v86 = swift_allocObject();
  v86[4] = sub_1AFC73C94;
  v86[5] = v85;
  v86[2] = sub_1AFC73C9C;
  v86[3] = v85;
  v86[6] = v85;
  v87 = swift_allocObject();
  *(v87 + 112) = 1;
  *(v87 + 128) = 0;
  *(v87 + 136) = 0;
  *(v87 + 120) = 0;
  *(v87 + 160) = MEMORY[0x1E69E7CC0];
  *(v87 + 168) = 0;
  *(v87 + 216) = 0;
  *(v87 + 176) = 0;
  *(v87 + 16) = 0xD000000000000015;
  *(v87 + 24) = 0x80000001AFF4BF70;
  *(v87 + 32) = v85;
  *(v87 + 40) = v67;
  *(v87 + 48) = 0;
  *(v87 + 56) = 1;
  *(v87 + 58) = 16;
  *(v87 + 184) = 0;
  *(v87 + 188) = 1;
  *(v87 + 192) = 0;
  *(v87 + 196) = 1;
  *(v87 + 200) = 0x1000100000000;
  *(v87 + 208) = 1;
  *(v87 + 64) = 0;
  *(v87 + 72) = 0;
  *(v87 + 96) = 0;
  *(v87 + 104) = 0;
  *(v87 + 144) = xmmword_1AFE22A20;
  *(v87 + 80) = v86;
  *(v87 + 88) = &off_1F2535378;
  *(v87 + 210) = 16;
  swift_retain_n();
  if (v69)
  {
    v67 = (*(v68 + 8))(v69, v68);
  }

  v88 = swift_conformsToProtocol2();
  if (v88 && v67)
  {
    *(v87 + 160) = (*(v88 + 8))(v67, v88);
  }

  v89 = *(v87 + 64);
  *(v87 + 64) = sub_1AFC73B48;
  *(v87 + 72) = v85;
  sub_1AF0FB8EC(v89);
  *(v87 + 168) = 0;
  *(v87 + 176) = 0;

  *(v87 + 216) = 0;

  *(v0 + 128) = v87;
  qword_1EB6C3620 = v0;
  return result;
}

id sub_1AFC580D4(SEL *a1)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v1, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v9);
    if (Strong)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (!v7)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v7 = 0;
    }

    v3 = [v7 camera];

    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v3 = v1[4];
  v4 = v3;
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v5 = [v3 *a1];

  return v5;
}

uint64_t sub_1AFC581C4()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (v1)
    {
LABEL_3:
      v3 = [v1 usesOrthographicProjection];

      return v3 ^ 1;
    }
  }

  else
  {
    sub_1AFC73A9C(v0, v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v7);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (!v6)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v6 = 0;
    }

    v1 = [v6 camera];

    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 1;
}

void sub_1AFC582AC(SEL *a1@<X3>, float *a2@<X8>)
{
  v4 = sub_1AFC628C8(&selRef_camera);
  if (v4)
  {
    v5 = v4;
    [v4 *a1];
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  *a2 = v7;
}

void sub_1AFC58318(simd_float4x4 *a1@<X8>)
{
  v2 = sub_1AFC628C8(&selRef_camera);
  if (v2)
  {
    v3 = v2;
    [v2 projectionTransform];
    v12 = v4;
    v10 = v6;
    v11 = v5;
    v9 = v7;

    v8.columns[3] = v9;
    v8.columns[2] = v10;
    v8.columns[1] = v11;
    v8.columns[0] = v12;
  }

  else
  {
    v8.columns[0] = 0uLL;
    v8.columns[1] = 0uLL;
    v8.columns[2] = 0uLL;
    v8.columns[3] = 0uLL;
  }

  *a1 = j____invert_f4_1(v8);
}

uint64_t sub_1AFC583A4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFC73A9C(a1, v18);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1AF0F2990(v18);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    v12 = 0uLL;
    v13 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    goto LABEL_6;
  }

  [v5 worldTransform];
  v16 = v7;
  v17 = v6;
  v14 = v9;
  v15 = v8;
  result = swift_unknownObjectRelease();
  v11 = v14;
  v10 = v15;
  v13 = v16;
  v12 = v17;
LABEL_6:
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v10;
  a2[3] = v11;
  return result;
}

void sub_1AFC58450(__int128 *a1, void *a2)
{
  v6 = a1[1];
  v7 = *a1;
  v4 = a1[3];
  v5 = a1[2];
  sub_1AFC73A9C(a2, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (Strong)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = 0;
  }

  [v3 setWorldTransform_];
}

void sub_1AFC584F8(void *a1@<X0>, simd_float4x4 *a2@<X8>)
{
  sub_1AFC73A9C(a1, v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v14);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v9.columns[0] = 0uLL;
    v9.columns[1] = 0uLL;
    v9.columns[2] = 0uLL;
    v9.columns[3] = 0uLL;
    goto LABEL_6;
  }

  [v4 worldTransform];
  v12 = v6;
  v13 = v5;
  v10 = v8;
  v11 = v7;
  swift_unknownObjectRelease();
  v9.columns[3] = v10;
  v9.columns[2] = v11;
  v9.columns[1] = v12;
  v9.columns[0] = v13;
LABEL_6:
  *a2 = j____invert_f4_1(v9);
}

void sub_1AFC58608(SEL *a1, SEL *a2)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v2, v10);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v10);
    if (!Strong)
    {
      return;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      swift_unknownObjectRelease();
      return;
    }

    v9 = [v8 camera];
    swift_unknownObjectRelease();
    v5 = [v9 *a2];

    if (!v5)
    {
      return;
    }

LABEL_7:
    [v5 *a1];

    return;
  }

  v5 = v2[4];
  v6 = v5;
  if (v5)
  {
    goto LABEL_7;
  }
}

__n128 sub_1AFC58740()
{
  v0 = sub_1AFC59C10(&selRef_bloom);
  if (v0)
  {
    v1 = v0;
    [v0 colorFilter];
    v8 = v2;

    return v8;
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  return result;
}

id sub_1AFC587C0()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (!v1)
    {
      return 0;
    }

LABEL_7:
    v6 = [v1 iterationCount];

    return v6;
  }

  sub_1AFC73A9C(v0, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (Strong)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 camera];
      swift_unknownObjectRelease();
      v1 = [v5 bloom];

      if (v1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

id sub_1AFC588D4(SEL *a1, SEL *a2)
{
  if ([objc_opt_self() immediateMode])
  {
    v5 = v2[4];
    v6 = v5;
    if (!v5)
    {
      return 0;
    }

LABEL_7:
    v10 = [v5 *a1];

    return v10;
  }

  sub_1AFC73A9C(v2, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v12);
  if (Strong)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 camera];
      swift_unknownObjectRelease();
      v5 = [v9 *a2];

      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_1AFC58A3C()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55170;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC7082C;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70860;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v2;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  v8 = *(v4 + 64);
  *(v4 + 64) = sub_1AFC7086C;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v8);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v9 = swift_getKeyPath();
  v10 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v11 = swift_allocObject();
  v11[4] = sub_1AFC70874;
  v11[5] = v9;
  v11[2] = sub_1AFC708A8;
  v11[3] = v9;
  v11[6] = v9;
  v12 = swift_allocObject();
  *(v12 + 112) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 120) = 0;
  *(v12 + 160) = MEMORY[0x1E69E7CC0];
  *(v12 + 168) = 0;
  *(v12 + 216) = 0;
  *(v12 + 176) = 0;
  *(v12 + 16) = 0x7469736E65746E69;
  *(v12 + 24) = 0xE900000000000079;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 58) = 0;
  *(v12 + 184) = 0;
  *(v12 + 188) = 1;
  *(v12 + 192) = 0;
  *(v12 + 196) = 1;
  *(v12 + 200) = 0x1000100000000;
  *(v12 + 208) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 144) = xmmword_1AFE22A20;
  *(v12 + 80) = v11;
  *(v12 + 88) = &off_1F2535378;
  *(v12 + 210) = 0;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13)
  {
    v14 = (*(v13 + 8))();
  }

  else
  {
    v14 = v10;
  }

  v15 = swift_conformsToProtocol2();
  if (v15 && v14)
  {
    *(v12 + 160) = (*(v15 + 8))(v14, v15);
  }

  *(v12 + 64) = sub_1AFC708B4;
  *(v12 + 72) = v9;
  sub_1AF0FB8EC(0);
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;

  *(v12 + 216) = 0;
  *(v0 + 40) = v12;
  v16 = swift_getKeyPath();
  v17 = swift_allocObject();
  v17[4] = sub_1AFC73AEC;
  v17[5] = v16;
  v17[2] = sub_1AFC73BE4;
  v17[3] = v16;
  v17[6] = v16;
  v18 = swift_allocObject();
  *(v18 + 112) = 1;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 160) = MEMORY[0x1E69E7CC0];
  *(v18 + 168) = 0;
  *(v18 + 216) = 0;
  *(v18 + 176) = 0;
  *(v18 + 16) = 0x6C6F687365726874;
  *(v18 + 24) = 0xE900000000000064;
  *(v18 + 32) = v16;
  *(v18 + 40) = v10;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  *(v18 + 58) = 0;
  *(v18 + 184) = 0;
  *(v18 + 188) = 1;
  *(v18 + 192) = 0;
  *(v18 + 196) = 1;
  *(v18 + 200) = 0x1000100000000;
  *(v18 + 208) = 1;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 96) = 0;
  *(v18 + 104) = 0;
  *(v18 + 144) = xmmword_1AFE22A20;
  *(v18 + 80) = v17;
  *(v18 + 88) = &off_1F2535378;
  *(v18 + 210) = 0;
  swift_retain_n();
  if (v13)
  {
    v19 = (*(v13 + 8))();
  }

  else
  {
    v19 = v10;
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v19)
  {
    *(v18 + 160) = (*(v20 + 8))(v19, v20);
  }

  *(v18 + 64) = sub_1AFC73B4C;
  *(v18 + 72) = v16;
  sub_1AF0FB8EC(0);
  *(v18 + 168) = 0;
  *(v18 + 176) = 0;

  *(v18 + 216) = 0;
  *(v0 + 48) = v18;
  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  v22[4] = sub_1AFC73AEC;
  v22[5] = v21;
  v22[2] = sub_1AFC73BE4;
  v22[3] = v21;
  v22[6] = v21;
  v23 = swift_allocObject();
  *(v23 + 112) = 1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 120) = 0;
  *(v23 + 160) = MEMORY[0x1E69E7CC0];
  *(v23 + 168) = 0;
  *(v23 + 216) = 0;
  *(v23 + 176) = 0;
  *(v23 + 16) = 0xD000000000000013;
  *(v23 + 24) = 0x80000001AFF22B30;
  *(v23 + 32) = v21;
  *(v23 + 40) = v10;
  *(v23 + 48) = 0;
  *(v23 + 56) = 1;
  *(v23 + 58) = 0;
  *(v23 + 184) = 0;
  *(v23 + 188) = 1;
  *(v23 + 192) = 0;
  *(v23 + 196) = 1;
  *(v23 + 200) = 0x1000100000000;
  *(v23 + 208) = 1;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 96) = 0;
  *(v23 + 104) = 0;
  *(v23 + 144) = xmmword_1AFE22A20;
  *(v23 + 80) = v22;
  *(v23 + 88) = &off_1F2535378;
  *(v23 + 210) = 0;
  swift_retain_n();
  if (v13)
  {
    v10 = (*(v13 + 8))();
  }

  v24 = swift_conformsToProtocol2();
  if (v24 && v10)
  {
    *(v23 + 160) = (*(v24 + 8))(v10, v24);
  }

  *(v23 + 64) = sub_1AFC73B4C;
  *(v23 + 72) = v21;
  sub_1AF0FB8EC(0);
  *(v23 + 168) = 0;
  *(v23 + 176) = 0;

  *(v23 + 216) = 0;
  *(v0 + 56) = v23;
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  v26[4] = sub_1AFC73C40;
  v26[5] = v25;
  v26[2] = sub_1AFC73BE8;
  v26[3] = v25;
  v26[6] = v25;
  v27 = swift_allocObject();
  *(v27 + 112) = 1;
  *(v27 + 128) = 0;
  *(v27 + 136) = 0;
  *(v27 + 120) = 0;
  *(v27 + 160) = MEMORY[0x1E69E7CC0];
  *(v27 + 168) = 0;
  *(v27 + 216) = 0;
  *(v27 + 176) = 0;
  strcpy((v27 + 16), "useHighQuality");
  *(v27 + 31) = -18;
  *(v27 + 32) = v25;
  *(v27 + 40) = v2;
  *(v27 + 48) = 0;
  *(v27 + 56) = 1;
  *(v27 + 58) = 0;
  *(v27 + 184) = 0;
  *(v27 + 188) = 1;
  *(v27 + 192) = 0;
  *(v27 + 196) = 1;
  *(v27 + 200) = 0x1000100000000;
  *(v27 + 208) = 1;
  *(v27 + 64) = 0;
  *(v27 + 72) = 0;
  *(v27 + 96) = 0;
  *(v27 + 104) = 0;
  *(v27 + 144) = xmmword_1AFE22A20;
  *(v27 + 80) = v26;
  *(v27 + 88) = &off_1F2535378;
  *(v27 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v2)
  {
    *(v27 + 160) = (*(v28 + 8))(v2, v28);
  }

  *(v27 + 64) = sub_1AFC73B50;
  *(v27 + 72) = v25;
  sub_1AF0FB8EC(0);
  *(v27 + 168) = 0;
  *(v27 + 176) = 0;

  *(v27 + 216) = 0;
  *(v0 + 64) = v27;
  v29 = swift_getKeyPath();
  v30 = MEMORY[0x1E69E7450];
  sub_1AFC703CC(0, qword_1ED72D340, &qword_1ED72F740, MEMORY[0x1E69E7450]);
  v31 = swift_allocObject();
  v31[4] = sub_1AFC708BC;
  v31[5] = v29;
  v31[2] = sub_1AFC708D4;
  v31[3] = v29;
  v31[6] = v29;
  v32 = swift_allocObject();
  *(v32 + 104) = 0;
  *(v32 + 112) = 1;
  *(v32 + 128) = 0;
  *(v32 + 136) = 0;
  *(v32 + 120) = 0;
  *(v32 + 160) = MEMORY[0x1E69E7CC0];
  *(v32 + 216) = 0;
  v33 = MEMORY[0x1E69E6448];
  sub_1AFC739C4(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], v30);
  v35 = v34;
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;
  *(v32 + 16) = 0x6C6946726F6C6F63;
  *(v32 + 24) = 0xEB00000000726574;
  *(v32 + 32) = v29;
  *(v32 + 40) = v34;
  *(v32 + 48) = 0;
  *(v32 + 56) = 1;
  *(v32 + 58) = 0;
  *(v32 + 184) = 0;
  *(v32 + 188) = 1;
  *(v32 + 192) = 0;
  *(v32 + 196) = 1;
  *(v32 + 200) = 0x1000100000000;
  *(v32 + 208) = 1;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0;
  *(v32 + 96) = 0;
  *(v32 + 144) = xmmword_1AFE22A20;
  *(v32 + 80) = v31;
  *(v32 + 88) = &off_1F2535378;
  *(v32 + 210) = 0;
  v36 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v36 && v35)
  {
    v35 = (*(v36 + 8))(v35, v36);
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v35)
  {
    *(v32 + 160) = (*(v37 + 8))(v35, v37);
  }

  v38 = *(v32 + 64);
  *(v32 + 64) = sub_1AFC708E0;
  *(v32 + 72) = v29;
  sub_1AF0FB8EC(v38);
  *(v32 + 168) = 0;
  *(v32 + 176) = 0;

  *(v32 + 216) = 0;

  *(v0 + 72) = v32;
  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  v40[4] = sub_1AFC73AEC;
  v40[5] = v39;
  v40[2] = sub_1AFC73BE4;
  v40[3] = v39;
  v40[6] = v39;
  v41 = swift_allocObject();
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  v42 = MEMORY[0x1E69E7CC0];
  *(v41 + 160) = MEMORY[0x1E69E7CC0];
  *(v41 + 168) = 0;
  *(v41 + 216) = 0;
  *(v41 + 176) = 0;
  *(v41 + 16) = 0x74736172746E6F63;
  *(v41 + 24) = 0xE800000000000000;
  *(v41 + 32) = v39;
  *(v41 + 40) = v33;
  *(v41 + 48) = 0;
  *(v41 + 56) = 1;
  *(v41 + 58) = 0;
  *(v41 + 184) = 0;
  *(v41 + 188) = 1;
  *(v41 + 192) = 0;
  *(v41 + 196) = 1;
  *(v41 + 200) = 0x1000100000000;
  *(v41 + 208) = 1;
  *(v41 + 64) = 0;
  *(v41 + 72) = 0;
  *(v41 + 96) = 0;
  *(v41 + 104) = 0;
  *(v41 + 144) = xmmword_1AFE22A20;
  *(v41 + 80) = v40;
  *(v41 + 88) = &off_1F2535378;
  *(v41 + 210) = 0;
  swift_retain_n();
  if (v13)
  {
    v43 = (*(v13 + 8))();
  }

  else
  {
    v43 = v33;
  }

  v44 = swift_conformsToProtocol2();
  if (v44 && v43)
  {
    *(v41 + 160) = (*(v44 + 8))(v43, v44);
  }

  *(v41 + 64) = sub_1AFC73B4C;
  *(v41 + 72) = v39;
  sub_1AF0FB8EC(0);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;
  *(v0 + 80) = v41;
  v45 = swift_getKeyPath();
  v46 = swift_allocObject();
  v46[4] = sub_1AFC73AEC;
  v46[5] = v45;
  v46[2] = sub_1AFC73BE4;
  v46[3] = v45;
  v46[6] = v45;
  v47 = swift_allocObject();
  *(v47 + 112) = 1;
  *(v47 + 128) = 0;
  *(v47 + 136) = 0;
  *(v47 + 120) = 0;
  *(v47 + 160) = v42;
  *(v47 + 168) = 0;
  *(v47 + 216) = 0;
  *(v47 + 176) = 0;
  *(v47 + 16) = 0x6974617275746173;
  *(v47 + 24) = 0xEA00000000006E6FLL;
  *(v47 + 32) = v45;
  *(v47 + 40) = v33;
  *(v47 + 48) = 0;
  *(v47 + 56) = 1;
  *(v47 + 58) = 0;
  *(v47 + 184) = 0;
  *(v47 + 188) = 1;
  *(v47 + 192) = 0;
  *(v47 + 196) = 1;
  *(v47 + 200) = 0x1000100000000;
  *(v47 + 208) = 1;
  *(v47 + 64) = 0;
  *(v47 + 72) = 0;
  *(v47 + 96) = 0;
  *(v47 + 104) = 0;
  *(v47 + 144) = xmmword_1AFE22A20;
  *(v47 + 80) = v46;
  *(v47 + 88) = &off_1F2535378;
  *(v47 + 210) = 0;
  swift_retain_n();
  if (v13)
  {
    v33 = (*(v13 + 8))();
  }

  v48 = swift_conformsToProtocol2();
  if (v48 && v33)
  {
    *(v47 + 160) = (*(v48 + 8))(v33, v48);
  }

  *(v47 + 64) = sub_1AFC73B4C;
  *(v47 + 72) = v45;
  sub_1AF0FB8EC(0);
  *(v47 + 168) = 0;
  *(v47 + 176) = 0;

  *(v47 + 216) = 0;
  *(v0 + 88) = v47;
  v49 = swift_getKeyPath();
  v50 = MEMORY[0x1E69E6530];
  sub_1AFC7246C(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v51 = swift_allocObject();
  v51[4] = sub_1AFC708E8;
  v51[5] = v49;
  v51[2] = sub_1AFC7091C;
  v51[3] = v49;
  v51[6] = v49;
  v52 = swift_allocObject();
  *(v52 + 112) = 1;
  *(v52 + 128) = 0;
  *(v52 + 136) = 0;
  *(v52 + 120) = 0;
  *(v52 + 160) = v42;
  *(v52 + 168) = 0;
  *(v52 + 216) = 0;
  *(v52 + 176) = 0;
  strcpy((v52 + 16), "iterationCount");
  *(v52 + 31) = -18;
  *(v52 + 32) = v49;
  *(v52 + 40) = v50;
  *(v52 + 48) = 0;
  *(v52 + 56) = 1;
  *(v52 + 58) = 0;
  *(v52 + 184) = 0;
  *(v52 + 188) = 1;
  *(v52 + 192) = 0;
  *(v52 + 196) = 1;
  *(v52 + 200) = 0x1000100000000;
  *(v52 + 208) = 1;
  *(v52 + 64) = 0;
  *(v52 + 72) = 0;
  *(v52 + 96) = 0;
  *(v52 + 104) = 0;
  *(v52 + 144) = xmmword_1AFE22A20;
  *(v52 + 80) = v51;
  *(v52 + 88) = &off_1F2535378;
  *(v52 + 210) = 0;
  v53 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v53)
  {
    v50 = (*(v53 + 8))();
  }

  v54 = swift_conformsToProtocol2();
  if (v54 && v50)
  {
    *(v52 + 160) = (*(v54 + 8))(v50, v54);
  }

  *(v52 + 64) = sub_1AFC70928;
  *(v52 + 72) = v49;
  sub_1AF0FB8EC(0);
  *(v52 + 168) = 0;
  *(v52 + 176) = 0;

  *(v52 + 216) = 0;
  *(v0 + 96) = v52;
  qword_1EB6C2720 = v0;
  return result;
}

void sub_1AFC59B88(void *a1@<X8>)
{
  v2 = sub_1AFC59C10(&selRef_bloom);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 iterationCount];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

id sub_1AFC59C10(SEL *a1)
{
  if (![objc_opt_self() immediateMode])
  {
    sub_1AFC73A9C(v1, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF0F2990(v9);
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = [v6 camera];
        swift_unknownObjectRelease();
        v3 = [v7 *a1];

        return v3;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  v3 = v1[4];
  v4 = v3;
  return v3;
}

void sub_1AFC59D0C(char a1, SEL *a2)
{
  if ([objc_opt_self() immediateMode])
  {
    v5 = v2[4];
    v6 = v5;
    if (!v5)
    {
      return;
    }

    goto LABEL_3;
  }

  sub_1AFC73A9C(v2, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v10);
  if (Strong)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = [v8 camera];
      swift_unknownObjectRelease();
      if (v9)
      {
        v5 = [v9 *a2];

        if (v5)
        {
LABEL_3:
          [v5 setEnabled_];
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AFC59E14()
{
  if ([objc_opt_self() immediateMode])
  {
    v1 = v0[4];
    v2 = v1;
    if (!v1)
    {
      return 1;
    }

LABEL_7:
    v6 = [v1 mode];

    return v6;
  }

  sub_1AFC73A9C(v0, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v8);
  if (Strong)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 camera];
      swift_unknownObjectRelease();
      v1 = [v5 toneMapping];

      if (v1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_1AFC59F8C@<X0>(void *a1@<X0>, void (*a2)(_BYTE *, uint64_t)@<X1>, uint64_t (*a3)(_BYTE *)@<X2>, uint64_t a4@<X8>)
{
  swift_unknownObjectWeakInit();
  v13 = 0;
  swift_unknownObjectWeakAssign();
  v14 = 0x3E6C6C756E3CLL;
  v15 = 0xE600000000000000;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (!v4)
  {
    sub_1AF441150(v11, v11[3]);
    sub_1AF9B3A20();
    sub_1AFDFEE88();
    sub_1AF9B3A74(&v10, v12);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v11);
    a2(v12, a4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return a3(v12);
}

void sub_1AFC5A0D4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v3, ObjectType, a2);
  sub_1AFC73A9C(v3, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1AF0F2990(v13);
  if (!Strong)
  {
    goto LABEL_5;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v10 = [v9 presentationNode];
  swift_unknownObjectRelease();
  v11 = [v10 camera];

  v12 = [v11 *a3];
LABEL_6:

  v5[4] = v12;
}

uint64_t sub_1AFC5A254()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55180;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70B7C;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70BB0;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  v7 = MEMORY[0x1E69E7CC0];
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  *(v4 + 64) = sub_1AFC70BBC;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  sub_1AFC700D0(0, &qword_1EB63BA88, type metadata accessor for VFXCameraToneMappingMode);
  v9 = swift_allocObject();
  v9[4] = sub_1AFC70C28;
  v9[5] = v8;
  v9[2] = sub_1AFC70C5C;
  v9[3] = v8;
  v9[6] = v8;
  v10 = swift_allocObject();
  *(v10 + 104) = 0;
  *(v10 + 112) = 1;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = 0;
  *(v10 + 160) = v7;
  *(v10 + 216) = 0;
  type metadata accessor for VFXCameraToneMappingMode(0);
  v12 = v11;
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;
  *(v10 + 16) = 1701080941;
  *(v10 + 24) = 0xE400000000000000;
  *(v10 + 32) = v8;
  *(v10 + 40) = v11;
  *(v10 + 48) = 0;
  *(v10 + 56) = 1;
  *(v10 + 58) = 0;
  *(v10 + 184) = 0;
  *(v10 + 188) = 1;
  *(v10 + 192) = 0;
  *(v10 + 196) = 1;
  *(v10 + 200) = 0x1000100000000;
  *(v10 + 208) = 1;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 96) = 0;
  *(v10 + 144) = xmmword_1AFE22A20;
  *(v10 + 80) = v9;
  *(v10 + 88) = &off_1F2535378;
  *(v10 + 210) = 0;
  v13 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v13 && v12)
  {
    v12 = (*(v13 + 8))(v12, v13);
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v12)
  {
    *(v10 + 160) = (*(v14 + 8))(v12, v14);
  }

  v15 = *(v10 + 64);
  *(v10 + 64) = sub_1AFC70C68;
  *(v10 + 72) = v8;
  sub_1AF0FB8EC(v15);
  *(v10 + 168) = 0;
  *(v10 + 176) = 0;

  *(v10 + 216) = 0;

  *(v0 + 40) = v10;
  v16 = swift_getKeyPath();
  v17 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v18 = swift_allocObject();
  v18[4] = sub_1AFC70C70;
  v18[5] = v16;
  v18[2] = sub_1AFC70CA4;
  v18[3] = v16;
  v18[6] = v16;
  v19 = swift_allocObject();
  *(v19 + 112) = 1;
  *(v19 + 128) = 0;
  *(v19 + 136) = 0;
  *(v19 + 120) = 0;
  *(v19 + 160) = v7;
  *(v19 + 168) = 0;
  *(v19 + 216) = 0;
  *(v19 + 176) = 0;
  *(v19 + 16) = 0x6E65727453656F74;
  *(v19 + 24) = 0xEB00000000687467;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  *(v19 + 48) = 0;
  *(v19 + 56) = 1;
  *(v19 + 58) = 0;
  *(v19 + 184) = 0;
  *(v19 + 188) = 1;
  *(v19 + 192) = 0;
  *(v19 + 196) = 1;
  *(v19 + 200) = 0x1000100000000;
  *(v19 + 208) = 1;
  *(v19 + 64) = 0;
  *(v19 + 72) = 0;
  *(v19 + 96) = 0;
  *(v19 + 104) = 0;
  *(v19 + 144) = xmmword_1AFE22A20;
  *(v19 + 80) = v18;
  *(v19 + 88) = &off_1F2535378;
  *(v19 + 210) = 0;
  v20 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v20)
  {
    v21 = (*(v20 + 8))();
  }

  else
  {
    v21 = v17;
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v21)
  {
    *(v19 + 160) = (*(v22 + 8))(v21, v22);
  }

  *(v19 + 64) = sub_1AFC70CB0;
  *(v19 + 72) = v16;
  sub_1AF0FB8EC(0);
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;

  *(v19 + 216) = 0;
  *(v0 + 48) = v19;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  v24[4] = sub_1AFC73AF0;
  v24[5] = v23;
  v24[2] = sub_1AFC73BEC;
  v24[3] = v23;
  v24[6] = v23;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = v7;
  *(v25 + 168) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  *(v25 + 16) = 0x74676E654C656F74;
  *(v25 + 24) = 0xE900000000000068;
  *(v25 + 32) = v23;
  *(v25 + 40) = v17;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  swift_retain_n();
  if (v20)
  {
    v26 = (*(v20 + 8))();
  }

  else
  {
    v26 = v17;
  }

  v27 = swift_conformsToProtocol2();
  if (v27 && v26)
  {
    *(v25 + 160) = (*(v27 + 8))(v26, v27);
  }

  *(v25 + 64) = sub_1AFC73B54;
  *(v25 + 72) = v23;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 56) = v25;
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  v29[4] = sub_1AFC73AF0;
  v29[5] = v28;
  v29[2] = sub_1AFC73BEC;
  v29[3] = v28;
  v29[6] = v28;
  v30 = swift_allocObject();
  *(v30 + 112) = 1;
  *(v30 + 128) = 0;
  *(v30 + 136) = 0;
  *(v30 + 120) = 0;
  *(v30 + 160) = MEMORY[0x1E69E7CC0];
  *(v30 + 168) = 0;
  *(v30 + 216) = 0;
  *(v30 + 176) = 0;
  *(v30 + 16) = 0xD000000000000010;
  *(v30 + 24) = 0x80000001AFF4BF90;
  *(v30 + 32) = v28;
  *(v30 + 40) = v17;
  *(v30 + 48) = 0;
  *(v30 + 56) = 1;
  *(v30 + 58) = 0;
  *(v30 + 184) = 0;
  *(v30 + 188) = 1;
  *(v30 + 192) = 0;
  *(v30 + 196) = 1;
  *(v30 + 200) = 0x1000100000000;
  *(v30 + 208) = 1;
  *(v30 + 64) = 0;
  *(v30 + 72) = 0;
  *(v30 + 96) = 0;
  *(v30 + 104) = 0;
  *(v30 + 144) = xmmword_1AFE22A20;
  *(v30 + 80) = v29;
  *(v30 + 88) = &off_1F2535378;
  *(v30 + 210) = 0;
  swift_retain_n();
  if (v20)
  {
    v31 = (*(v20 + 8))();
  }

  else
  {
    v31 = v17;
  }

  v32 = swift_conformsToProtocol2();
  if (v32 && v31)
  {
    *(v30 + 160) = (*(v32 + 8))(v31, v32);
  }

  *(v30 + 64) = sub_1AFC73B54;
  *(v30 + 72) = v28;
  sub_1AF0FB8EC(0);
  *(v30 + 168) = 0;
  *(v30 + 176) = 0;

  *(v30 + 216) = 0;
  *(v0 + 64) = v30;
  v33 = swift_getKeyPath();
  v34 = swift_allocObject();
  v34[4] = sub_1AFC73AF0;
  v34[5] = v33;
  v34[2] = sub_1AFC73BEC;
  v34[3] = v33;
  v34[6] = v33;
  v35 = swift_allocObject();
  *(v35 + 112) = 1;
  *(v35 + 128) = 0;
  *(v35 + 136) = 0;
  *(v35 + 120) = 0;
  v36 = MEMORY[0x1E69E7CC0];
  *(v35 + 160) = MEMORY[0x1E69E7CC0];
  *(v35 + 168) = 0;
  *(v35 + 216) = 0;
  *(v35 + 176) = 0;
  strcpy((v35 + 16), "shoulderLength");
  *(v35 + 31) = -18;
  *(v35 + 32) = v33;
  *(v35 + 40) = v17;
  *(v35 + 48) = 0;
  *(v35 + 56) = 1;
  *(v35 + 58) = 0;
  *(v35 + 184) = 0;
  *(v35 + 188) = 1;
  *(v35 + 192) = 0;
  *(v35 + 196) = 1;
  *(v35 + 200) = 0x1000100000000;
  *(v35 + 208) = 1;
  *(v35 + 64) = 0;
  *(v35 + 72) = 0;
  *(v35 + 96) = 0;
  *(v35 + 104) = 0;
  *(v35 + 144) = xmmword_1AFE22A20;
  *(v35 + 80) = v34;
  *(v35 + 88) = &off_1F2535378;
  *(v35 + 210) = 0;
  swift_retain_n();
  if (v20)
  {
    v37 = (*(v20 + 8))();
  }

  else
  {
    v37 = v17;
  }

  v38 = swift_conformsToProtocol2();
  if (v38 && v37)
  {
    *(v35 + 160) = (*(v38 + 8))(v37, v38);
  }

  *(v35 + 64) = sub_1AFC73B54;
  *(v35 + 72) = v33;
  sub_1AF0FB8EC(0);
  *(v35 + 168) = 0;
  *(v35 + 176) = 0;

  *(v35 + 216) = 0;
  *(v0 + 72) = v35;
  v39 = swift_getKeyPath();
  v40 = swift_allocObject();
  v40[4] = sub_1AFC73AF0;
  v40[5] = v39;
  v40[2] = sub_1AFC73BEC;
  v40[3] = v39;
  v40[6] = v39;
  v41 = swift_allocObject();
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  *(v41 + 160) = v36;
  *(v41 + 168) = 0;
  *(v41 + 216) = 0;
  *(v41 + 176) = 0;
  strcpy((v41 + 16), "shoulderAngle");
  *(v41 + 30) = -4864;
  *(v41 + 32) = v39;
  *(v41 + 40) = v17;
  *(v41 + 48) = 0;
  *(v41 + 56) = 1;
  *(v41 + 58) = 0;
  *(v41 + 184) = 0;
  *(v41 + 188) = 1;
  *(v41 + 192) = 0;
  *(v41 + 196) = 1;
  *(v41 + 200) = 0x1000100000000;
  *(v41 + 208) = 1;
  *(v41 + 64) = 0;
  *(v41 + 72) = 0;
  *(v41 + 96) = 0;
  *(v41 + 104) = 0;
  *(v41 + 144) = xmmword_1AFE22A20;
  *(v41 + 80) = v40;
  *(v41 + 88) = &off_1F2535378;
  *(v41 + 210) = 0;
  swift_retain_n();
  if (v20)
  {
    v42 = (*(v20 + 8))();
  }

  else
  {
    v42 = v17;
  }

  v43 = swift_conformsToProtocol2();
  if (v43 && v42)
  {
    *(v41 + 160) = (*(v43 + 8))(v42, v43);
  }

  *(v41 + 64) = sub_1AFC73B54;
  *(v41 + 72) = v39;
  sub_1AF0FB8EC(0);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;
  *(v0 + 80) = v41;
  v44 = swift_getKeyPath();
  v45 = swift_allocObject();
  v45[4] = sub_1AFC73AF0;
  v45[5] = v44;
  v45[2] = sub_1AFC73BEC;
  v45[3] = v44;
  v45[6] = v44;
  v46 = swift_allocObject();
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 160) = v36;
  *(v46 + 168) = 0;
  *(v46 + 216) = 0;
  *(v46 + 176) = 0;
  *(v46 + 16) = 0x616D6D6167;
  *(v46 + 24) = 0xE500000000000000;
  *(v46 + 32) = v44;
  *(v46 + 40) = v17;
  *(v46 + 48) = 0;
  *(v46 + 56) = 1;
  *(v46 + 58) = 0;
  *(v46 + 184) = 0;
  *(v46 + 188) = 1;
  *(v46 + 192) = 0;
  *(v46 + 196) = 1;
  *(v46 + 200) = 0x1000100000000;
  *(v46 + 208) = 1;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 96) = 0;
  *(v46 + 104) = 0;
  *(v46 + 144) = xmmword_1AFE22A20;
  *(v46 + 80) = v45;
  *(v46 + 88) = &off_1F2535378;
  *(v46 + 210) = 0;
  swift_retain_n();
  if (v20)
  {
    v17 = (*(v20 + 8))();
  }

  v47 = swift_conformsToProtocol2();
  if (v47 && v17)
  {
    *(v46 + 160) = (*(v47 + 8))(v17, v47);
  }

  *(v46 + 64) = sub_1AFC73B54;
  *(v46 + 72) = v44;
  sub_1AF0FB8EC(0);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = 0;
  *(v0 + 88) = v46;
  qword_1EB6C3628 = v0;
  return result;
}

void sub_1AFC5B148(uint64_t *a1@<X8>)
{
  v2 = sub_1AFC59C10(&selRef_toneMapping);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 mode];
  }

  else
  {
    v4 = 1;
  }

  *a1 = v4;
}

uint64_t sub_1AFC5B258()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70CB8;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70CE4;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AFC70CF0;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC70CF8;
  v10[5] = v8;
  v10[2] = sub_1AFC70D2C;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v5;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x65756C6176;
  *(v11 + 24) = 0xE500000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AFC70D38;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C3630 = v0;
  return result;
}

uint64_t sub_1AFC5B798()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70D40;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70D6C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AFC70D78;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC70D80;
  v10[5] = v8;
  v10[2] = sub_1AFC70DB4;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v5;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x737569646172;
  *(v11 + 24) = 0xE600000000000000;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AFC70DC0;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C2710 = v0;
  return result;
}

uint64_t sub_1AFC5BCE8()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550F0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70DC8;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70DF4;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v6 = (*(v5 + 8))();
  }

  else
  {
    v6 = v2;
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v6)
  {
    *(v4 + 160) = (*(v7 + 8))(v6, v7);
  }

  *(v4 + 64) = sub_1AFC70E00;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC70E08;
  v10[5] = v8;
  v10[2] = sub_1AFC70E3C;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x7469736E65746E69;
  *(v11 + 24) = 0xE900000000000079;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v13 = (*(v12 + 8))();
  }

  else
  {
    v13 = v9;
  }

  v14 = swift_conformsToProtocol2();
  if (v14 && v13)
  {
    *(v11 + 160) = (*(v14 + 8))(v13, v14);
  }

  *(v11 + 64) = sub_1AFC70E48;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v15 = swift_getKeyPath();
  v16 = swift_allocObject();
  v16[4] = sub_1AFC73AF4;
  v16[5] = v15;
  v16[2] = sub_1AFC73BF0;
  v16[3] = v15;
  v16[6] = v15;
  v17 = swift_allocObject();
  *(v17 + 112) = 1;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 120) = 0;
  *(v17 + 160) = MEMORY[0x1E69E7CC0];
  *(v17 + 168) = 0;
  *(v17 + 216) = 0;
  *(v17 + 176) = 0;
  *(v17 + 16) = 0x656C616373;
  *(v17 + 24) = 0xE500000000000000;
  *(v17 + 32) = v15;
  *(v17 + 40) = v9;
  *(v17 + 48) = 0;
  *(v17 + 56) = 1;
  *(v17 + 58) = 0;
  *(v17 + 184) = 0;
  *(v17 + 188) = 1;
  *(v17 + 192) = 0;
  *(v17 + 196) = 1;
  *(v17 + 200) = 0x1000100000000;
  *(v17 + 208) = 1;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 144) = xmmword_1AFE22A20;
  *(v17 + 80) = v16;
  *(v17 + 88) = &off_1F2535378;
  *(v17 + 210) = 0;
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && v9)
  {
    *(v17 + 160) = (*(v18 + 8))(v9, v18);
  }

  *(v17 + 64) = sub_1AFC73B58;
  *(v17 + 72) = v15;
  sub_1AF0FB8EC(0);
  *(v17 + 168) = 0;
  *(v17 + 176) = 0;

  *(v17 + 216) = 0;
  *(v0 + 48) = v17;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  v20[4] = sub_1AFC73C44;
  v20[5] = v19;
  v20[2] = sub_1AFC73BF4;
  v20[3] = v19;
  v20[6] = v19;
  v21 = swift_allocObject();
  *(v21 + 112) = 1;
  *(v21 + 128) = 0;
  *(v21 + 136) = 0;
  *(v21 + 120) = 0;
  *(v21 + 160) = MEMORY[0x1E69E7CC0];
  *(v21 + 168) = 0;
  *(v21 + 216) = 0;
  *(v21 + 176) = 0;
  *(v21 + 16) = 0x65726F6C6F437369;
  *(v21 + 24) = 0xE900000000000064;
  *(v21 + 32) = v19;
  *(v21 + 40) = v2;
  *(v21 + 48) = 0;
  *(v21 + 56) = 1;
  *(v21 + 58) = 0;
  *(v21 + 184) = 0;
  *(v21 + 188) = 1;
  *(v21 + 192) = 0;
  *(v21 + 196) = 1;
  *(v21 + 200) = 0x1000100000000;
  *(v21 + 208) = 1;
  *(v21 + 64) = 0;
  *(v21 + 72) = 0;
  *(v21 + 96) = 0;
  *(v21 + 104) = 0;
  *(v21 + 144) = xmmword_1AFE22A20;
  *(v21 + 80) = v20;
  *(v21 + 88) = &off_1F2535378;
  *(v21 + 210) = 0;
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v22 = swift_conformsToProtocol2();
  if (v22 && v2)
  {
    *(v21 + 160) = (*(v22 + 8))(v2, v22);
  }

  *(v21 + 64) = sub_1AFC73B5C;
  *(v21 + 72) = v19;
  sub_1AF0FB8EC(0);
  *(v21 + 168) = 0;
  *(v21 + 176) = 0;

  *(v21 + 216) = 0;
  *(v0 + 56) = v21;
  qword_1EB6C3638 = v0;
  return result;
}

uint64_t sub_1AFC5C5B4()
{
  sub_1AFC7246C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE550E0;
  KeyPath = swift_getKeyPath();
  v2 = MEMORY[0x1E69E6370];
  sub_1AFC7246C(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AFC70E50;
  v3[5] = KeyPath;
  v3[2] = sub_1AFC70E7C;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x64656C62616E65;
  *(v4 + 24) = 0xE700000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = v2;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE22A20;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 0;
  v6 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v6)
  {
    v2 = (*(v6 + 8))();
  }

  v7 = swift_conformsToProtocol2();
  if (v7 && v2)
  {
    *(v4 + 160) = (*(v7 + 8))(v2, v7);
  }

  *(v4 + 64) = sub_1AFC70E88;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(0);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;
  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6448];
  sub_1AFC7246C(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AFC70E90;
  v10[5] = v8;
  v10[2] = sub_1AFC70EC4;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = v5;
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  *(v11 + 16) = 0x7469736E65746E69;
  *(v11 + 24) = 0xE900000000000079;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 58) = 0;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 0;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AFC70ED0;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  qword_1EB6C3640 = v0;
  return result;
}
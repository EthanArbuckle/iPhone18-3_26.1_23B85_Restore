uint64_t sub_1AF71D444@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = 0x746C7561666564;
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[3];
  v6 = a1[4];
  sub_1AF87E644(v6);
  sub_1AF723768();
  v8 = sub_1AFDFD1B8();
  v10 = v9;
  v29 = v4;

  MEMORY[0x1B2718AE0](v8, v10);

  v27 = v4;
  v28 = v5;
  if (v7 && (v11 = [v7 label]) != 0)
  {
    v12 = v11;
    v3 = sub_1AFDFCEF8();
    v14 = v13;

    if (v3 == 0x616665642D786676 && v14 == 0xEB00000000746C75)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (sub_1AFDFEE28())
  {
LABEL_8:
    v15 = v29;

    goto LABEL_10;
  }

  MEMORY[0x1B2718AE0](v3, v14);
  MEMORY[0x1B2718AE0](35, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v5, v29);

  v15 = 0xE600000000000000;
  v5 = 0x3A7361696C61;
LABEL_10:
  v17 = *(v6 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v26 = v5;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1AFC07638(0, v17, 0);
    v18 = v35;
    v19 = (v6 + 49);
    do
    {
      v20 = *(v19 - 17);
      v21 = *(v19 - 9);
      v22 = *(v19 - 1);
      v31 = v19[1];
      v32 = v19[2];
      v33 = v19[3];
      v34 = v19[4];
      v30 = *v19;
      result = sub_1AF725E8C(v20, v21, v22 & 1);
      v24 = *(v35 + 16);
      v23 = *(v35 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_1AFC07638(v23 > 1, v24 + 1, 1);
      }

      *(v35 + 16) = v24 + 1;
      v25 = v35 + 112 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v21;
      *(v25 + 48) = v22;
      *(v25 + 49) = v30;
      *(v25 + 113) = v34;
      *(v25 + 97) = v33;
      *(v25 + 81) = v32;
      *(v25 + 65) = v31;
      v19 += 7;
      --v17;
    }

    while (v17);
    v5 = v26;
  }

  *a2 = v28;
  a2[1] = v27;
  a2[2] = v5;
  a2[3] = v15;
  a2[4] = v18;
  return result;
}

uint64_t sub_1AF71D760()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71D818()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF71D8BC()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71D970@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723CC0();
  *a1 = result;
  return result;
}

void sub_1AF71D9A0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x657079745F6469;
  v4 = 0xEA00000000006570;
  v5 = 0x79745F65756C6176;
  if (*v1 != 2)
  {
    v5 = 0x65756C6176;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 25705;
    v2 = 0xE200000000000000;
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

uint64_t sub_1AF71DA14()
{
  v1 = 0x657079745F6469;
  v2 = 0x79745F65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x65756C6176;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t sub_1AF71DA84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723CC0();
  *a1 = result;
  return result;
}

uint64_t sub_1AF71DAAC(uint64_t a1)
{
  v2 = sub_1AF726E50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71DAE8(uint64_t a1)
{
  v2 = sub_1AF726E50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71DB84@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF71DBDC(uint64_t a1)
{
  v2 = sub_1AF726DFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71DC18(uint64_t a1)
{
  v2 = sub_1AF726DFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71DC54(void *a1)
{
  v3 = v1;
  v5 = MEMORY[0x1E69E6F58];
  sub_1AF7277CC(0, &qword_1EB63DFC0, sub_1AF726DFC, &type metadata for ShaderArchive.FunctionConstantCoder.ValueCodingKeys, MEMORY[0x1E69E6F58]);
  v29 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v31 = &v28 - v8;
  sub_1AF7277CC(0, &qword_1EB63DFD0, sub_1AF726E50, &type metadata for ShaderArchive.FunctionConstantCoder.CodingKeys, v5);
  v10 = v9;
  v42 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v28 - v12;
  sub_1AF441150(a1, a1[3]);
  sub_1AF726E50();
  sub_1AFDFF3F8();
  v15 = *v3;
  v14 = *(v3 + 8);
  v16 = *(v3 + 16);
  v17 = *(v3 + 33);
  v18 = *(v3 + 65);
  *&v36[32] = *(v3 + 49);
  *&v36[48] = v18;
  *&v36[64] = *(v3 + 81);
  *v36 = *(v3 + 17);
  *&v36[16] = v17;
  sub_1AF87D2A4(v15, v14, v16 & 1);
  if (v19)
  {
    LOBYTE(v32) = 0;
    sub_1AFDFE8B8();
    if (v2)
    {
      (*(v42 + 8))(v13, v10);
    }

    LOBYTE(v32) = 1;
    sub_1AFDFE8B8();

    goto LABEL_6;
  }

  LOBYTE(v32) = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    LOBYTE(v32) = 1;
    sub_1AFDFE8F8();
LABEL_6:
    v39 = *&v36[47];
    v40 = *&v36[63];
    v41 = v36[79];
    v37 = *&v36[15];
    v38 = *&v36[31];
    v20 = sub_1AF87901C();
    sub_1AF476764(v20);
    LOBYTE(v32) = 2;
    sub_1AFDFE8B8();

    LOBYTE(v32) = 3;
    sub_1AF726DFC();
    v22 = v31;
    sub_1AFDFE848();
    v23 = v29;
    switch(v41)
    {
      case 1:
        *&v32 = v37;
        v24 = &unk_1ED72F770;
        v25 = MEMORY[0x1E69E7428];
        sub_1AF7277CC(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
        v26 = &qword_1ED72F798;
        goto LABEL_20;
      case 2:
        v32 = v37;
        v24 = &qword_1ED72F740;
        v25 = MEMORY[0x1E69E7450];
        sub_1AF7277CC(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
        v26 = &qword_1ED72F758;
        goto LABEL_20;
      case 3:
        v32 = v37;
        v24 = &qword_1ED72F6E0;
        v25 = MEMORY[0x1E69E74A8];
        sub_1AF7277CC(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
        v26 = &qword_1ED72F710;
LABEL_20:
        sub_1AF726EA4(v26, v24, v25);
        v27 = v31;
        sub_1AFDFE918();
        (*(v30 + 8))(v27, v23);
        return (*(v42 + 8))(v13, v10);
      case 4:
        v32 = v37;
        sub_1AF608A04();
        goto LABEL_26;
      case 5:
        v32 = v37;
        v33 = v38;
        sub_1AF6089B0();
        goto LABEL_26;
      case 6:
        v32 = v37;
        v33 = v38;
        sub_1AF60895C();
        goto LABEL_26;
      case 7:
        v32 = v37;
        *&v33 = v38;
        sub_1AF608908();
        goto LABEL_26;
      case 8:
        v32 = v37;
        v33 = v38;
        v34 = v39;
        sub_1AF6088B4();
        goto LABEL_26;
      case 9:
        v32 = v37;
        v33 = v38;
        v34 = v39;
        sub_1AF608860();
        goto LABEL_26;
      case 10:
        v32 = v37;
        v33 = v38;
        sub_1AF60880C();
        goto LABEL_26;
      case 11:
        v32 = v37;
        v33 = v38;
        v34 = v39;
        v35 = v40;
        sub_1AF6087B8();
        goto LABEL_26;
      case 12:
        v32 = v37;
        v33 = v38;
        v34 = v39;
        v35 = v40;
        sub_1AF48D74C();
LABEL_26:
        sub_1AFDFE918();
        break;
      case 13:
        sub_1AFDFE8C8();
        break;
      case 14:
        sub_1AFDFE948();
        break;
      case 15:
        sub_1AFDFE988();
        break;
      default:
        sub_1AFDFE8E8();
        break;
    }

    (*(v30 + 8))(v22, v23);
  }

  return (*(v42 + 8))(v13, v10);
}

uint64_t sub_1AF71E41C(void *a1)
{
  v3 = v1;
  sub_1AF7277CC(0, &qword_1EB63DF48, sub_1AF726BB0, &type metadata for ShaderArchive.SpecializedFunctionCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF726BB0();
  sub_1AFDFF3F8();
  v15 = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    v14 = 1;
    sub_1AFDFE8B8();
    v12[1] = *(v3 + 32);
    v13 = 2;
    sub_1AF45BD00(0, &qword_1EB63DF58);
    sub_1AF725C38(&qword_1EB63DF60, &qword_1EB63DF58, &type metadata for ShaderArchive.FunctionConstantCoder, sub_1AF726C04);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1AF71E638(char a1)
{
  result = 0x665F786574726576;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
    case 15:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 7:
    case 10:
    case 11:
      result = 0xD000000000000021;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000025;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 13:
      result = 0xD00000000000001ELL;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD00000000000001DLL;
      break;
    case 20:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF71E8B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F6974636E7566;
  if (v2 != 1)
  {
    v4 = 0x746E6174736E6F63;
    v3 = 0xEF7365756C61765FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E6F6974636E7566;
  if (*a2 != 1)
  {
    v8 = 0x746E6174736E6F63;
    v7 = 0xEF7365756C61765FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
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

uint64_t sub_1AF71E9C8()
{
  v1 = 0x6E6F6974636E7566;
  if (*v0 != 1)
  {
    v1 = 0x746E6174736E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1AF71EA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF723D58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF71EA54(uint64_t a1)
{
  v2 = sub_1AF726BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71EA90(uint64_t a1)
{
  v2 = sub_1AF726BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71EB08(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF71E638(*a1);
  v5 = v4;
  if (v3 == sub_1AF71E638(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF71EB90()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF71E638(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71EBF4()
{
  sub_1AF71E638(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AF71EC48()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF71E638(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71ECA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723E74();
  *a1 = result;
  return result;
}

unint64_t sub_1AF71ECD8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF71E638(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF71ED0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723E74();
  *a1 = result;
  return result;
}

uint64_t sub_1AF71ED40(uint64_t a1)
{
  v2 = sub_1AF726CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF71ED7C(uint64_t a1)
{
  v2 = sub_1AF726CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF71EDB8(void *a1, char *a2, void *a3)
{
  sub_1AF7277CC(0, &qword_1EB63DF80, sub_1AF726CAC, &type metadata for ShaderArchive.MTLRenderPipelineDescriptorCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v39 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF726CAC();
  sub_1AFDFF3F8();
  v12 = [a3 vertexFunction];
  if (v12)
  {
    sub_1AF71B800(v12);
    LOBYTE(v40) = 0;
    sub_1AFDFE8B8();
    if (v3)
    {
LABEL_6:
      (*(v39 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v13 = [a3 fragmentFunction];
  if (v13)
  {
    sub_1AF71B800(v13);
    LOBYTE(v40) = 2;
    sub_1AFDFE8B8();
    if (v3)
    {
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v15 = [a3 vertexLinkedFunctions];
  v16 = sub_1AF71F9D0();

  if (!v16)
  {
    v17 = a2;
    v18 = [a3 vertexLinkedFunctions];
    v40 = v17;
    v41 = v18;
    v42 = 1;
    sub_1AF726D00();
    sub_1AFDFE918();
    if (v3)
    {
LABEL_14:

LABEL_15:
      return (*(v39 + 8))(v11, v8);
    }
  }

  v19 = [a3 fragmentLinkedFunctions];
  v20 = sub_1AF71F9D0();

  if (!v20)
  {
    v17 = a2;
    v18 = [a3 fragmentLinkedFunctions];
    v40 = v17;
    v41 = v18;
    v42 = 3;
    sub_1AF726D00();
    sub_1AFDFE918();
    if (v3)
    {
      goto LABEL_14;
    }
  }

  v21 = [a3 vertexDescriptor];
  if (v21)
  {
    v17 = v21;
    if (!sub_1AF476A04())
    {
      v40 = v17;
      v42 = 4;
      sub_1AF477FAC();
      sub_1AFDFE918();
      if (v3)
      {
        goto LABEL_15;
      }
    }
  }

  [a3 rasterSampleCount];
  LOBYTE(v40) = 17;
  sub_1AFDFE8F8();
  if (!v3)
  {
    [a3 isAlphaToOneEnabled];
    LOBYTE(v40) = 16;
    sub_1AFDFE8C8();
    [a3 isAlphaToCoverageEnabled];
    LOBYTE(v40) = 15;
    sub_1AFDFE8C8();
    [a3 isRasterizationEnabled];
    LOBYTE(v40) = 14;
    sub_1AFDFE8C8();
    if ((*&a2[OBJC_IVAR____TtC3VFX13ShaderArchive_family] - 2000) >= 0xFFFFFFFFFFFFFC1ELL)
    {
      [a3 maxVertexAmplificationCount];
      LOBYTE(v40) = 13;
      sub_1AFDFE8F8();
    }

    [a3 inputPrimitiveTopology];
    LOBYTE(v40) = 5;
    sub_1AFDFE8B8();

    v22 = [a3 vertexFunction];
    if (!v22 || (v23 = [v22 patchType], swift_unknownObjectRelease(), v23))
    {
      [a3 tessellationPartitionMode];
      LOBYTE(v40) = 12;
      sub_1AFDFE8B8();

      [a3 maxTessellationFactor];
      LOBYTE(v40) = 6;
      sub_1AFDFE8F8();
      [a3 isTessellationFactorScaleEnabled];
      LOBYTE(v40) = 7;
      sub_1AFDFE8C8();
      [a3 tessellationFactorFormat];
      LOBYTE(v40) = 8;
      sub_1AFDFE8B8();

      [a3 tessellationControlPointIndexType];
      LOBYTE(v40) = 9;
      sub_1AFDFE8B8();

      [a3 tessellationFactorStepFunction];
      LOBYTE(v40) = 10;
      sub_1AFDFE8B8();

      [a3 tessellationOutputWindingOrder];
      LOBYTE(v40) = 11;
      sub_1AFDFE8B8();
    }

    v24 = [a3 colorAttachments];
    v40 = v24;
    v42 = 18;
    sub_1AF726D54();
    sub_1AFDFE918();

    [a3 depthAttachmentPixelFormat];
    MTLPixelFormatGetInfo();
    sub_1AFDFD0E8();
    if (sub_1AFDFD178())
    {
      sub_1AFDFD048();
      v25 = sub_1AF701628();
      v27 = v26;
      v29 = v28;
      v31 = v30;

      MEMORY[0x1B27189E0](v25, v27, v29, v31);
    }

    LOBYTE(v40) = 19;
    sub_1AFDFE8B8();

    [a3 stencilAttachmentPixelFormat];
    MTLPixelFormatGetInfo();
    sub_1AFDFD0E8();
    if (sub_1AFDFD178())
    {
      sub_1AFDFD048();
      v32 = sub_1AF701628();
      v34 = v33;
      v36 = v35;
      v38 = v37;

      MEMORY[0x1B27189E0](v32, v34, v36, v38);
    }

    LOBYTE(v40) = 20;
    sub_1AFDFE8B8();
    (*(v39 + 8))(v11, v8);
  }

  return (*(v39 + 8))(v11, v8);
}

BOOL sub_1AF71F9D0()
{
  v1 = [v0 functions];
  result = 0;
  if (!v1 || ((v2 = v1, sub_1AF447DFC(0, &unk_1ED723170), v3 = sub_1AFDFD418(), v2, v3 >> 62) ? (v4 = sub_1AFDFE108()) : (v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v4))
  {
    v5 = [v0 privateFunctions];
    if (!v5 || ((v6 = v5, sub_1AF447DFC(0, &unk_1ED723170), v7 = sub_1AFDFD418(), v6, v7 >> 62) ? (v8 = sub_1AFDFE108()) : (v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v8))
    {
      v9 = [v0 binaryFunctions];
      if (!v9 || ((v10 = v9, sub_1AF447DFC(0, &unk_1ED723170), v11 = sub_1AFDFD418(), v10, v11 >> 62) ? (v12 = sub_1AFDFE108()) : (v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v12))
      {
        v13 = [v0 groups];
        if (!v13)
        {
          return 1;
        }

        v14 = v13;
        sub_1AF723840(0, &qword_1ED7231F8, &unk_1ED723170, &protocolRef_MTLFunction, MEMORY[0x1E69E62F8]);
        v15 = sub_1AFDFCC08();

        v16 = *(v15 + 16);

        if (!v16)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF71FC30()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71FCF8()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF71FDAC()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF71FE70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723D0C();
  *a1 = result;
  return result;
}

void sub_1AF71FEA0(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000073;
  v3 = 0x6E6F6974636E7566;
  v4 = 0x80000001AFF22F60;
  v5 = 0x7370756F7267;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001AFF22F40;
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

unint64_t sub_1AF71FF24()
{
  v1 = 0x6E6F6974636E7566;
  v2 = 0x7370756F7267;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1AF71FFA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723D0C();
  *a1 = result;
  return result;
}

uint64_t sub_1AF71FFCC(uint64_t a1)
{
  v2 = sub_1AF7276F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF720008(uint64_t a1)
{
  v2 = sub_1AF7276F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF720044(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v65 = a2;
  sub_1AF7277CC(0, &qword_1EB63E0C0, sub_1AF7276F8, &type metadata for ShaderArchive.MTLLinkedFunctionsCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v59 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7276F8();
  sub_1AFDFF3F8();
  v13 = [a3 functions];
  v62 = v12;
  v63 = v8;
  v59 = a3;
  if (!v13)
  {
LABEL_16:
    v28 = [a3 privateFunctions];
    if (!v28)
    {
      goto LABEL_32;
    }

    v29 = v28;
    sub_1AF447DFC(0, &unk_1ED723170);
    v30 = sub_1AFDFD418();

    if (v30 >> 62)
    {
      v31 = sub_1AFDFE108();
      if (v31)
      {
LABEL_19:
        v60 = v4;
        v61 = v9;
        v67 = MEMORY[0x1E69E7CC0];
        sub_1AFC05CE4(0, v31 & ~(v31 >> 63), 0);
        v32 = v30;
        v33 = 0;
        v34 = v67;
        v64 = v30 & 0xC000000000000001;
        v35 = v31;
        do
        {
          if (v64)
          {
            v36 = MEMORY[0x1B2719C70](v33, v32);
          }

          else
          {
            v36 = *(v32 + 8 * v33 + 32);
            swift_unknownObjectRetain();
          }

          v37 = sub_1AF71B800(v36);
          v39 = v38;
          swift_unknownObjectRelease();
          v67 = v34;
          v41 = *(v34 + 16);
          v40 = *(v34 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_1AFC05CE4(v40 > 1, v41 + 1, 1);
            v34 = v67;
          }

          ++v33;
          *(v34 + 16) = v41 + 1;
          v42 = v34 + 16 * v41;
          *(v42 + 32) = v37;
          *(v42 + 40) = v39;
          v32 = v30;
        }

        while (v35 != v33);

        v4 = v60;
        v9 = v61;
        goto LABEL_29;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        goto LABEL_19;
      }
    }

    v34 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v67 = v34;
    v66 = 1;
    sub_1AF45BD00(0, &qword_1ED726C70);
    sub_1AF72774C();
    v12 = v62;
    v8 = v63;
    sub_1AFDFE918();
    if (v4)
    {
      goto LABEL_30;
    }

    a3 = v59;
LABEL_32:
    v43 = [a3 binaryFunctions];
    if (!v43)
    {
      return (*(v9 + 8))(v12, v8);
    }

    v44 = v43;
    sub_1AF447DFC(0, &unk_1ED723170);
    v45 = sub_1AFDFD418();

    if (v45 >> 62)
    {
      v46 = sub_1AFDFE108();
      v61 = v9;
      if (v46)
      {
LABEL_35:
        v60 = v4;
        v67 = MEMORY[0x1E69E7CC0];
        sub_1AFC05CE4(0, v46 & ~(v46 >> 63), 0);
        v47 = v45;
        v48 = 0;
        v49 = v67;
        v64 = v45 & 0xC000000000000001;
        v50 = v46;
        do
        {
          if (v64)
          {
            v51 = MEMORY[0x1B2719C70](v48, v47);
          }

          else
          {
            v51 = *(v47 + 8 * v48 + 32);
            swift_unknownObjectRetain();
          }

          v52 = sub_1AF71B800(v51);
          v54 = v53;
          swift_unknownObjectRelease();
          v67 = v49;
          v56 = *(v49 + 16);
          v55 = *(v49 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_1AFC05CE4(v55 > 1, v56 + 1, 1);
            v49 = v67;
          }

          ++v48;
          *(v49 + 16) = v56 + 1;
          v57 = v49 + 16 * v56;
          *(v57 + 32) = v52;
          *(v57 + 40) = v54;
          v47 = v45;
        }

        while (v50 != v48);

        v12 = v62;
        v8 = v63;
        goto LABEL_46;
      }
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v61 = v9;
      if (v46)
      {
        goto LABEL_35;
      }
    }

    v49 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v67 = v49;
    v66 = 2;
    sub_1AF45BD00(0, &qword_1ED726C70);
    sub_1AF72774C();
    sub_1AFDFE918();
    (*(v61 + 8))(v12, v8);
  }

  v14 = v13;
  sub_1AF447DFC(0, &unk_1ED723170);
  v15 = sub_1AFDFD418();

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_13:

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v16 = sub_1AFDFE108();
  if (!v16)
  {
    goto LABEL_13;
  }

LABEL_4:
  v60 = v3;
  v61 = v9;
  v67 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v16 & ~(v16 >> 63), 0);
  v17 = v15;
  v18 = 0;
  v19 = v67;
  v64 = v15 & 0xC000000000000001;
  v20 = v16;
  do
  {
    if (v64)
    {
      v21 = MEMORY[0x1B2719C70](v18, v17);
    }

    else
    {
      v21 = *(v17 + 8 * v18 + 32);
      swift_unknownObjectRetain();
    }

    v22 = sub_1AF71B800(v21);
    v24 = v23;
    swift_unknownObjectRelease();
    v67 = v19;
    v26 = *(v19 + 16);
    v25 = *(v19 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1AFC05CE4(v25 > 1, v26 + 1, 1);
      v19 = v67;
    }

    ++v18;
    *(v19 + 16) = v26 + 1;
    v27 = v19 + 16 * v26;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
    v17 = v15;
  }

  while (v20 != v18);

  v4 = v60;
  v9 = v61;
LABEL_14:
  v67 = v19;
  v66 = 0;
  sub_1AF45BD00(0, &qword_1ED726C70);
  sub_1AF72774C();
  v12 = v62;
  v8 = v63;
  sub_1AFDFE918();
  if (!v4)
  {

    a3 = v59;
    goto LABEL_16;
  }

LABEL_30:
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AF720768(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F665F6C65786970;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0xD000000000000015;
    }

    if (a1)
    {
      v5 = 0x616D5F6574697277;
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
    v1 = 0xD00000000000001CLL;
    v2 = 0xD000000000000019;
    if (a1 != 7)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001ELL;
    if (a1 == 4)
    {
      v3 = 0xD000000000000013;
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

uint64_t sub_1AF7208CC()
{
  sub_1AFDFF288();
  sub_1AF3D51B4();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF72091C()
{
  sub_1AFDFF288();
  sub_1AF3D51B4();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF720960@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723F14();
  *a1 = result;
  return result;
}

uint64_t sub_1AF720990@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF720768(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF7209D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723F14();
  *a1 = result;
  return result;
}

uint64_t sub_1AF720A00(uint64_t a1)
{
  v2 = sub_1AF727834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF720A3C(uint64_t a1)
{
  v2 = sub_1AF727834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF720A78(void *a1, void *a2)
{
  sub_1AF7277CC(0, &qword_1EB63E0D0, sub_1AF727834, &type metadata for ShaderArchive.MTLRenderPipelineColorAttachmentDescriptorArrayCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v29 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v11 = 0;
  v30 = v10;
  v31 = (v7 + 8);
  v29[1] = 0x80000001AFF31EA0;
  v12 = &selRef_numberWithBool_;
  while (1)
  {
    v13 = [a2 v12[16]];
    if (!v13)
    {
      goto LABEL_3;
    }

    v14 = v13;
    if ([v13 pixelFormat])
    {
      break;
    }

LABEL_3:
    if (++v11 == 8)
    {
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v33);
    }
  }

  v35 = v14;
  sub_1AF448018(v33, v34);
  sub_1AF727834();
  sub_1AFDFEBC8();
  MTLPixelFormatGetInfo();
  sub_1AFDFD0E8();
  if (sub_1AFDFD178())
  {
    sub_1AFDFD048();
    v15 = sub_1AF701628();
    v17 = v16;
    v19 = v18;
    v20 = a2;
    v21 = v6;
    v23 = v22;

    MEMORY[0x1B27189E0](v15, v17, v19, v23);
    v6 = v21;
    a2 = v20;
  }

  LOBYTE(v32) = 0;
  v24 = v30;
  sub_1AFDFE8B8();
  v25 = v35;
  if (v2)
  {
    (*v31)(v24, v6);

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v33);
  }

  sub_1AF476604([v25 writeMask]);
  LOBYTE(v32) = 1;
  sub_1AFDFE8B8();

  if (![v25 isBlendingEnabled])
  {
    (*v31)(v24, v6);
    goto LABEL_32;
  }

  [v25 isBlendingEnabled];
  LOBYTE(v32) = 2;
  sub_1AFDFE8C8();
  v26 = [v25 alphaBlendOperation];
  if (v26 > 1)
  {
    if (v26 != 2 && v26 != 3 && v26 != 4)
    {
      goto LABEL_35;
    }

LABEL_21:
    LOBYTE(v32) = 3;
    sub_1AFDFE8B8();

    v27 = [v25 rgbBlendOperation];
    if (v27 <= 1)
    {
      if (v27 && v27 != 1)
      {
        goto LABEL_35;
      }
    }

    else if (v27 != 2 && v27 != 3 && v27 != 4)
    {
      goto LABEL_35;
    }

    LOBYTE(v32) = 4;
    sub_1AFDFE8B8();

    [v25 destinationAlphaBlendFactor];
    sub_1AF4763B0();
    LOBYTE(v32) = 5;
    sub_1AFDFE8B8();

    [v25 destinationRGBBlendFactor];
    sub_1AF4763B0();
    LOBYTE(v32) = 6;
    sub_1AFDFE8B8();

    [v25 sourceAlphaBlendFactor];
    sub_1AF4763B0();
    LOBYTE(v32) = 7;
    sub_1AFDFE8B8();

    [v25 sourceRGBBlendFactor];
    sub_1AF4763B0();
    LOBYTE(v32) = 8;
    sub_1AFDFE8B8();
    (*v31)(v24, v6);

LABEL_32:

    v12 = &selRef_numberWithBool_;
    goto LABEL_3;
  }

  if (!v26 || v26 == 1)
  {
    goto LABEL_21;
  }

LABEL_35:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF721168(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "compute_function";
  v4 = 0xD000000000000036;
  if (v2 == 1)
  {
    v5 = 0xD000000000000036;
  }

  else
  {
    v5 = 0xD000000000000021;
  }

  if (v2 == 1)
  {
    v6 = "compute_function";
  }

  else
  {
    v6 = "thread_execution_width";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "stencil_attachment_pixel_format";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000021;
    v3 = "thread_execution_width";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "stencil_attachment_pixel_format";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF721240()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7212DC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF721364()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7213FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723EC8();
  *a1 = result;
  return result;
}

void sub_1AF72142C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "compute_function";
  v4 = 0xD000000000000036;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000021;
    v3 = "thread_execution_width";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "stencil_attachment_pixel_format";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

unint64_t sub_1AF721488()
{
  v1 = 0xD000000000000036;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1AF7214E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723EC8();
  *a1 = result;
  return result;
}

uint64_t sub_1AF721508(uint64_t a1)
{
  v2 = sub_1AF726C58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF721544(uint64_t a1)
{
  v2 = sub_1AF726C58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF721580(void *a1, uint64_t a2, void *a3)
{
  v14[1] = a2;
  sub_1AF7277CC(0, &qword_1EB63DF70, sub_1AF726C58, &type metadata for ShaderArchive.MTLComputePipelineDescriptorCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF726C58();
  sub_1AFDFF3F8();
  v12 = [a3 computeFunction];
  if (v12)
  {
    sub_1AF71B800(v12);
    v15 = 0;
    sub_1AFDFE8B8();
    if (v3)
    {
      (*(v8 + 8))(v11, v7);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  [a3 threadGroupSizeIsMultipleOfThreadExecutionWidth];
  v17 = 1;
  sub_1AFDFE8C8();
  if (!v3)
  {
    [a3 maxTotalThreadsPerThreadgroup];
    v16 = 2;
    sub_1AFDFE8F8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF721868@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF7218C0(uint64_t a1)
{
  v2 = sub_1AF726DA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7218FC(uint64_t a1)
{
  v2 = sub_1AF726DA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF721938(void *a1)
{
  sub_1AF7277CC(0, &qword_1EB63DFB0, sub_1AF726DA8, &type metadata for ShaderArchive.MTLLinkedFunctionDescriptorCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = *(v1 + 8);
  sub_1AF441150(a1, a1[3]);
  sub_1AF726DA8();
  sub_1AFDFF3F8();
  sub_1AF71B800(v9);
  sub_1AFDFE8B8();

  return (*(v5 + 8))(v8, v4);
}

id sub_1AF721AE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShaderArchive();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AF721BD8()
{
  result = qword_1EB63DD18;
  if (!qword_1EB63DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DD18);
  }

  return result;
}

unint64_t sub_1AF721C2C()
{
  result = qword_1EB63DD28;
  if (!qword_1EB63DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DD28);
  }

  return result;
}

uint64_t sub_1AF721C80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7374756F79616CLL;
  }

  else
  {
    v3 = 0x7475626972747461;
  }

  if (v2)
  {
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x7374756F79616CLL;
  }

  else
  {
    v5 = 0x7475626972747461;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEA00000000007365;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF721D2C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF721DB4()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF721E28()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF721EB8(uint64_t *a1@<X8>)
{
  v2 = 0x7475626972747461;
  if (*v1)
  {
    v2 = 0x7374756F79616CLL;
  }

  v3 = 0xEA00000000007365;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF721EFC()
{
  if (*v0)
  {
    return 0x7374756F79616CLL;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_1AF721F48(uint64_t a1)
{
  v2 = sub_1AF72593C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF721F84(uint64_t a1)
{
  v2 = sub_1AF72593C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF721FC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x74657366666FLL;
  if (v2 != 1)
  {
    v3 = 0x74616D726F66;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x695F726566667562;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEC0000007865646ELL;
  }

  v6 = 0x74657366666FLL;
  if (*a2 != 1)
  {
    v6 = 0x74616D726F66;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x695F726566667562;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xEC0000007865646ELL;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();
  }

  return v9 & 1;
}

uint64_t sub_1AF7220B8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF72215C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF7221EC()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF72228C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723FAC();
  *a1 = result;
  return result;
}

void sub_1AF7222BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0x74657366666FLL;
  if (v2 != 1)
  {
    v4 = 0x74616D726F66;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x695F726566667562;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1AF72231C()
{
  v1 = 0x74657366666FLL;
  if (*v0 != 1)
  {
    v1 = 0x74616D726F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x695F726566667562;
  }
}

uint64_t sub_1AF722378@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723FAC();
  *a1 = result;
  return result;
}

uint64_t sub_1AF7223A0(uint64_t a1)
{
  v2 = sub_1AF7258E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7223DC(uint64_t a1)
{
  v2 = sub_1AF7258E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF722418(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E75665F70657473;
  v4 = 0xED00006E6F697463;
  if (v2 != 1)
  {
    v3 = 0x7461725F70657473;
    v4 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656469727473;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6E75665F70657473;
  v8 = 0xED00006E6F697463;
  if (*a2 != 1)
  {
    v7 = 0x7461725F70657473;
    v8 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656469727473;
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
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF722538()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7225E8()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF722684()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF722730@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723F60();
  *a1 = result;
  return result;
}

void sub_1AF722760(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xED00006E6F697463;
  v5 = 0x6E75665F70657473;
  if (v2 != 1)
  {
    v5 = 0x7461725F70657473;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656469727473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF7227CC()
{
  v1 = 0x6E75665F70657473;
  if (*v0 != 1)
  {
    v1 = 0x7461725F70657473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656469727473;
  }
}

uint64_t sub_1AF722834@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF723F60();
  *a1 = result;
  return result;
}

uint64_t sub_1AF72285C(uint64_t a1)
{
  v2 = sub_1AF725894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF722898(uint64_t a1)
{
  v2 = sub_1AF725894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF7228D4(void *a1, void *a2)
{
  v3 = v2;
  v60 = a2;
  v5 = MEMORY[0x1E69E6F58];
  sub_1AF7277CC(0, &qword_1EB63DDA8, sub_1AF725894, &type metadata for MTLVertexDescriptorCoder.LayoutCodingKeys, MEMORY[0x1E69E6F58]);
  v49 = v6;
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v48 = &v43 - v8;
  sub_1AF7277CC(0, &qword_1EB63DDB0, sub_1AF7258E8, &type metadata for MTLVertexDescriptorCoder.AttributeCodingKeys, v5);
  v10 = v9;
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v43 - v12;
  sub_1AF7277CC(0, &qword_1EB63DDB8, sub_1AF72593C, &type metadata for MTLVertexDescriptorCoder.CodingKeys, v5);
  v15 = v14;
  v45 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v43 - v17;
  sub_1AF441150(a1, a1[3]);
  sub_1AF72593C();
  sub_1AFDFF3F8();
  LOBYTE(v56[0]) = 0;
  v46 = v18;
  v47 = v15;
  sub_1AFDFE838();
  v19 = 0;
  v50 = v13;
  v51 = (v53 + 8);
  do
  {
    sub_1AF448018(v58, v59);
    sub_1AF7258E8();
    sub_1AFDFEBC8();
    v20 = [v60 attributes];
    v21 = [v20 objectAtIndexedSubscript_];

    if (v21)
    {
      [v21 bufferIndex];
      LOBYTE(v56[0]) = 0;
      sub_1AFDFE8F8();
      if (v3)
      {

LABEL_16:
        (*v51)(v13, v10);
        (*(v45 + 8))(v46, v47);
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v58);
      }

      [v21 offset];
      LOBYTE(v56[0]) = 1;
      sub_1AFDFE8F8();
      v53 = v21;
      [v21 format];
      sub_1AF4715F0();
      sub_1AF9A0BAC();
      v22 = sub_1AFDFDDB8();
      v24 = v23;

      v25 = sub_1AF701628();
      v27 = v26;
      v28 = v10;
      v30 = v29;
      v52 = 0;
      v32 = v31;

      v54 = v22;
      v55 = v24;
      v13 = v50;
      v56[0] = v25;
      v56[1] = v27;
      v56[2] = v30;
      v57 = v32;
      v10 = v28;
      sub_1AF725990();
      sub_1AFDFD0A8();

      LOBYTE(v56[0]) = 2;
      v33 = v52;
      sub_1AFDFE8B8();
      v3 = v33;
      if (v33)
      {

        goto LABEL_16;
      }

      (*v51)(v13, v28);
    }

    else
    {
      (*v51)(v13, v10);
    }

    ++v19;
  }

  while (v19 != 31);
  LOBYTE(v54) = 1;
  sub_1AFDFE838();
  v34 = 0;
  v53 = 0x80000001AFF31DD0;
  v35 = (v44 + 8);
  v36 = v48;
  while (1)
  {
    v37 = v3;
    sub_1AF448018(v56, v57);
    sub_1AF725894();
    sub_1AFDFEBC8();
    v38 = [v60 layouts];
    v39 = [v38 objectAtIndexedSubscript_];

    if (v39)
    {
      break;
    }

    (*v35)(v36, v49);
    v3 = v37;
LABEL_11:
    if (++v34 == 31)
    {
      goto LABEL_18;
    }
  }

  [v39 stride];
  LOBYTE(v54) = 0;
  sub_1AFDFE8F8();
  v3 = v37;
  if (!v37)
  {
    [v39 stepFunction];
    v40 = v49;
    LOBYTE(v54) = 1;
    v41 = v48;
    sub_1AFDFE8B8();

    [v39 stepRate];
    LOBYTE(v54) = 2;
    sub_1AFDFE8F8();
    (*v35)(v41, v40);

    v36 = v41;
    goto LABEL_11;
  }

  (*v35)(v36, v49);
LABEL_18:
  (*(v45 + 8))(v46, v47);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v56);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v58);
}

id sub_1AF7230B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF724798(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1AF7230F8()
{
  v1 = sub_1AFDFC128();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v28 - v8;
  v10 = sub_1AFDFBBE8();
  MEMORY[0x1EEE9AC00](v10, v11);
  v12 = *(v0 + 96);
  if (v12)
  {
    v28 = v2;
    sub_1AFDFBC38();
    swift_allocObject();
    v13 = v12;
    sub_1AFDFBC28();
    sub_1AF7239F8(0, &unk_1EB63F330, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AFE4C620;
    sub_1AFDFBBD8();
    sub_1AFDFBBC8();
    v29 = v14;
    sub_1AF723AAC(&unk_1EB63DD30, MEMORY[0x1E6967F78]);
    sub_1AF7239F8(0, &unk_1EB63F340, MEMORY[0x1E69E62F8]);
    sub_1AF6A07D0();
    sub_1AFDFE058();
    sub_1AFDFBBF8();
    v15 = *&v13[OBJC_IVAR____TtC3VFX13ShaderArchive_lock + 24];
    os_unfair_lock_lock(v15);
    v29 = v13;
    sub_1AF723A58();
    v16 = v13;
    v17 = sub_1AFDFBC08();
    v19 = v18;

    os_unfair_lock_unlock(v15);

    v20 = [objc_opt_self() defaultManager];
    v21 = [v20 temporaryDirectory];

    sub_1AFDFC0B8();
    sub_1AFDFC088();
    if (v19 >> 60 != 15)
    {
      sub_1AF587E54(v17, v19);
      sub_1AFDFC1D8();
      sub_1AF587E7C(v17, v19);
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1AFDFE218();

    v29 = 0xD000000000000022;
    v30 = 0x80000001AFF31D50;
    sub_1AF723AAC(&qword_1EB632790, MEMORY[0x1E6968FB0]);
    v22 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v22);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    v24 = v29;
    v23 = v30;
    v25 = sub_1AFDFDA28();
    if (qword_1ED731058 != -1)
    {
      v27 = v25;
      swift_once();
      v25 = v27;
    }

    v29 = 0;
    sub_1AF0D4F18(v25, &v29, v24, v23);

    sub_1AF587E7C(v17, v19);
    v26 = *(v28 + 8);
    v26(v5, v1);
    v26(v9, v1);
  }
}

unint64_t sub_1AF723768()
{
  result = qword_1ED726890;
  if (!qword_1ED726890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED726890);
  }

  return result;
}

uint64_t sub_1AF7237BC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1AF723840(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AF723840(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AF447DFC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF7238A8(uint64_t a1, uint64_t a2)
{
  sub_1AF45BD00(0, &unk_1ED723240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF72391C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AF723840(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AF72398C(uint64_t a1)
{
  sub_1AF45BD00(0, &unk_1ED723240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AF7239F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFDFBBE8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF723A58()
{
  result = qword_1EB63DD48;
  if (!qword_1EB63DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DD48);
  }

  return result;
}

uint64_t sub_1AF723AAC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1AF723AF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v7 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a4 < 0)
    {
      v8 = a4;
    }

    else
    {
      v8 = a4 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x1B2719B40](a1, a2, v8);
    sub_1AF0D4478(0, a5);
    swift_dynamicCast();
    return v15;
  }

  else
  {
    if (a3)
    {
      sub_1AF0D4478(0, a5);
      sub_1AFDFE0E8();
      sub_1AFDFE0F8();
      swift_dynamicCast();
      v10 = sub_1AFDFDC38();
      v11 = ~(-1 << *(a4 + 32));
      do
      {
        v7 = v10 & v11;
        v12 = *(*(a4 + 48) + 8 * (v10 & v11));
        v13 = sub_1AFDFDC48();

        v10 = v7 + 1;
      }

      while ((v13 & 1) == 0);
    }

    v14 = *(*(a4 + 48) + 8 * v7);

    return v14;
  }
}

uint64_t sub_1AF723C74()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF723CC0()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF723D0C()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF723D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6174736E6F63 && a2 == 0xEF7365756C61765FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

uint64_t sub_1AF723E74()
{
  v0 = sub_1AFDFF118();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF723EC8()
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

uint64_t sub_1AF723F14()
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

uint64_t sub_1AF723F60()
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

uint64_t sub_1AF723FAC()
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

uint64_t sub_1AF723FF8(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = (a1 & 0xC000000000000001) != 0;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1AFDFE108();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1AFC07434(0, v4 & ~(v4 >> 63), 0);
    v5 = v42;
    v6 = v35;
    if (v35)
    {
      v8 = sub_1AFDFE0B8();
    }

    else
    {
      v9 = (v2 + 56);
      v8 = 1 << *(v2 + 32);
      v10 = (v8 + 63) >> 6;
      while (1)
      {
        v12 = *v9++;
        v11 = v12;
        if (v12)
        {
          break;
        }

        v6 -= 64;
        if (!--v10)
        {
          goto LABEL_12;
        }
      }

      v8 = __clz(__rbit64(v11)) - v6;
LABEL_12:
      v7 = *(v2 + 36);
    }

    v13 = 0;
    v39 = v8;
    v40 = v7;
    v33 = v4;
    v41 = v35 != 0;
    v31 = v2 + 64;
    v32 = v2 + 56;
    while (1)
    {
      v36 = v3;
      v37 = v7;
      v14 = v2;
      v15 = sub_1AF723AF4(v8, v7, v3 & 1, v2, &unk_1EB63DE90);
      v42 = v5;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      v18 = a2;
      if (v17 >= v16 >> 1)
      {
        sub_1AFC07434(v16 > 1, v17 + 1, 1);
        v5 = v42;
      }

      *(v5 + 16) = v17 + 1;
      v19 = v5 + 16 * v17;
      *(v19 + 32) = v18;
      *(v19 + 40) = v15;
      if (v35)
      {
        v2 = v14;
        if (sub_1AFDFE0D8())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v22 = v33;
        sub_1AF725E00(0, &qword_1EB63DE88, &unk_1EB63DE90, 0x1E6974030, &qword_1EB63DA88);
        v23 = sub_1AFDFD7A8();
        sub_1AFDFE148();
        v23(v38, 0);
      }

      else
      {
        v20 = v8 >> 6;
        v2 = v14;
        if ((*(v32 + 8 * (v8 >> 6)) & (-2 << v8)) != 0)
        {
          v21 = __clz(__rbit64(*(v32 + 8 * (v8 >> 6)) & (-2 << v8))) | v8 & 0xFFFFFFFFFFFFFFC0;
          v22 = v33;
        }

        else
        {
          v21 = 1 << *(v14 + 32);
          v24 = v20 << 6;
          v25 = v20 + 1;
          v26 = (v31 + 8 * v20);
          v22 = v33;
          while (v25 < (v21 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              sub_1AF0FBAE8(v8, v37, v36 & 1);
              v21 = __clz(__rbit64(v27)) + v24;
              goto LABEL_27;
            }
          }

          sub_1AF0FBAE8(v8, v37, v36 & 1);
        }

LABEL_27:
        v29 = *(v2 + 36);
        v39 = v21;
        v40 = v29;
        v41 = 0;
      }

      if (++v13 == v22)
      {
        break;
      }

      v3 = v41;
      v8 = v39;
      v7 = v40;
    }

    sub_1AF0FBAE8(v39, v40, v41);
  }

  return v5;
}

uint64_t sub_1AF72432C(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = (a1 & 0xC000000000000001) != 0;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1AFDFE108();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1AFC07404(0, v4 & ~(v4 >> 63), 0);
    v5 = v42;
    v6 = v35;
    if (v35)
    {
      v8 = sub_1AFDFE0B8();
    }

    else
    {
      v9 = (v2 + 56);
      v8 = 1 << *(v2 + 32);
      v10 = (v8 + 63) >> 6;
      while (1)
      {
        v12 = *v9++;
        v11 = v12;
        if (v12)
        {
          break;
        }

        v6 -= 64;
        if (!--v10)
        {
          goto LABEL_12;
        }
      }

      v8 = __clz(__rbit64(v11)) - v6;
LABEL_12:
      v7 = *(v2 + 36);
    }

    v13 = 0;
    v39 = v8;
    v40 = v7;
    v33 = v4;
    v41 = v35 != 0;
    v31 = v2 + 64;
    v32 = v2 + 56;
    while (1)
    {
      v36 = v3;
      v37 = v7;
      v14 = v2;
      v15 = sub_1AF723AF4(v8, v7, v3 & 1, v2, &qword_1EB63DAC0);
      v42 = v5;
      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      v18 = a2;
      if (v17 >= v16 >> 1)
      {
        sub_1AFC07404(v16 > 1, v17 + 1, 1);
        v5 = v42;
      }

      *(v5 + 16) = v17 + 1;
      v19 = v5 + 16 * v17;
      *(v19 + 32) = v18;
      *(v19 + 40) = v15;
      if (v35)
      {
        v2 = v14;
        if (sub_1AFDFE0D8())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v22 = v33;
        sub_1AF725E00(0, &qword_1EB63DE80, &qword_1EB63DAC0, 0x1E6974148, &qword_1EB63DAD0);
        v23 = sub_1AFDFD7A8();
        sub_1AFDFE148();
        v23(v38, 0);
      }

      else
      {
        v20 = v8 >> 6;
        v2 = v14;
        if ((*(v32 + 8 * (v8 >> 6)) & (-2 << v8)) != 0)
        {
          v21 = __clz(__rbit64(*(v32 + 8 * (v8 >> 6)) & (-2 << v8))) | v8 & 0xFFFFFFFFFFFFFFC0;
          v22 = v33;
        }

        else
        {
          v21 = 1 << *(v14 + 32);
          v24 = v20 << 6;
          v25 = v20 + 1;
          v26 = (v31 + 8 * v20);
          v22 = v33;
          while (v25 < (v21 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              sub_1AF0FBAE8(v8, v37, v36 & 1);
              v21 = __clz(__rbit64(v27)) + v24;
              goto LABEL_27;
            }
          }

          sub_1AF0FBAE8(v8, v37, v36 & 1);
        }

LABEL_27:
        v29 = *(v2 + 36);
        v39 = v21;
        v40 = v29;
        v41 = 0;
      }

      if (++v13 == v22)
      {
        break;
      }

      v3 = v41;
      v8 = v39;
      v7 = v40;
    }

    sub_1AF0FBAE8(v39, v40, v41);
  }

  return v5;
}

unint64_t sub_1AF724694()
{
  result = qword_1EB63DD58;
  if (!qword_1EB63DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DD58);
  }

  return result;
}

unint64_t sub_1AF7246EC()
{
  result = qword_1EB63DD60;
  if (!qword_1EB63DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DD60);
  }

  return result;
}

unint64_t sub_1AF724744()
{
  result = qword_1EB63DD68;
  if (!qword_1EB63DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DD68);
  }

  return result;
}

id sub_1AF724798(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  sub_1AF7277CC(0, &qword_1EB63DD70, sub_1AF725894, &type metadata for MTLVertexDescriptorCoder.LayoutCodingKeys, MEMORY[0x1E69E6F48]);
  v100 = v3;
  v109 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v98 = &v93 - v5;
  sub_1AF7277CC(0, &qword_1EB63DD80, sub_1AF7258E8, &type metadata for MTLVertexDescriptorCoder.AttributeCodingKeys, v2);
  v7 = v6;
  v107 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v93 - v9;
  sub_1AF7277CC(0, &qword_1EB63DD90, sub_1AF72593C, &type metadata for MTLVertexDescriptorCoder.CodingKeys, v2);
  v12 = v11;
  v103 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v93 - v14;
  sub_1AF441150(a1, a1[3]);
  sub_1AF72593C();
  v16 = v116;
  sub_1AFDFF3B8();
  v108 = v16;
  if (v16)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    return v12;
  }

  v17 = v107;
  v18 = a1;
  v101 = v10;
  v102 = v7;
  v19 = v12;
  v12 = [objc_allocWithZone(MEMORY[0x1E69741E0]) init];
  LOBYTE(v110[0]) = 0;
  v20 = v108;
  sub_1AFDFE658();
  v108 = v20;
  if (v20)
  {
    (*(v103 + 8))(v15, v19);
    goto LABEL_19;
  }

  v95 = v15;
  v94 = v19;
  v21 = 0;
  v97 = (v17 + 8);
  v96 = v18;
  v99 = v12;
  do
  {
    v33 = v21;
    sub_1AF448018(v114, v115);
    sub_1AF7258E8();
    v34 = v108;
    sub_1AFDFEA38();
    if (v34)
    {
      v108 = v34;
      (*(v103 + 8))(v95, v94);
LABEL_18:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v114);
      goto LABEL_19;
    }

    LOBYTE(v110[0]) = 0;
    v35 = sub_1AFDFE748();
    LOBYTE(v110[0]) = 1;
    v36 = sub_1AFDFE748();
    LOBYTE(v110[0]) = 2;
    v37 = sub_1AFDFE708();
    v108 = 0;
    v38 = v37;
    v40 = v39;
    v104 = v35;
    v105 = v36;
    v41 = 0;
    v106 = (v33 + 1);
    v107 = v33;
    do
    {
      v116 = v41;
      sub_1AF4715F0();
      sub_1AFDFD078();
      sub_1AFDFD1F8();
      v42 = sub_1AFDFDDB8();
      v44 = v43;

      sub_1AFDFD078();
      v45 = sub_1AFDFD1F8();
      v47 = v46;
      v49 = v48;
      v50 = v38;
      v51 = v40;
      v53 = v52;

      v112 = v42;
      v113 = v44;
      v110[0] = v45;
      v110[1] = v47;
      v110[2] = v49;
      v111 = v53;
      sub_1AF725990();
      sub_1AFDFD0A8();
      v40 = v51;
      v38 = v50;

      if (v112 == v50 && v113 == v40)
      {

        v22 = v109;
LABEL_7:
        v21 = v106;
        v23 = v107;
        v24 = v116;
        goto LABEL_8;
      }

      v54 = sub_1AFDFEE28();

      v22 = v109;
      if (v54)
      {
        goto LABEL_7;
      }

      v41 = v116 + 1;
    }

    while (v116 != 55);
    v24 = 0;
    v21 = v106;
    v23 = v107;
LABEL_8:

    v12 = v99;
    v25 = [v99 attributes];
    v26 = [objc_allocWithZone(MEMORY[0x1E69741D0]) init];
    [v25 setObject:v26 atIndexedSubscript:v23];

    v27 = [v12 attributes];
    v28 = [v27 objectAtIndexedSubscript_];

    [v28 setBufferIndex_];
    v29 = [v12 attributes];
    v30 = [v29 objectAtIndexedSubscript_];

    [v30 setOffset_];
    v31 = [v12 attributes];
    v32 = [v31 objectAtIndexedSubscript_];

    [v32 setFormat_];
    (*v97)(v101, v102);
    v18 = v96;
  }

  while (v21 != 31);
  LOBYTE(v112) = 1;
  v56 = v94;
  v57 = v95;
  v58 = v108;
  sub_1AFDFE658();
  v108 = v58;
  if (v58)
  {
    (*(v103 + 8))(v57, v56);
    goto LABEL_18;
  }

  v59 = 0;
  v105 = 0x80000001AFF31DD0;
  v106 = (v22 + 8);
  while (1)
  {
    sub_1AF448018(v110, v111);
    sub_1AF725894();
    v60 = v108;
    sub_1AFDFEA38();
    if (v60)
    {
      break;
    }

    LOBYTE(v112) = 0;
    v61 = sub_1AFDFE748();
    LOBYTE(v112) = 1;
    v63 = sub_1AFDFE708();
    v64 = v62;
    if (qword_1F2500618 <= 1)
    {
      if (qword_1F2500618)
      {
        if (qword_1F2500618 != 1)
        {
LABEL_36:
          v66 = 0xE200000000000000;
          v65 = 16718;
          goto LABEL_37;
        }

        v65 = 0x6574726556726550;
        v66 = 0xE900000000000078;
      }

      else
      {
        v66 = 0xE800000000000000;
        v65 = 0x746E6174736E6F43;
      }
    }

    else
    {
      switch(qword_1F2500618)
      {
        case 2:
          v65 = 0x6174736E49726550;
          v66 = 0xEB0000000065636ELL;
          break;
        case 3:
          v66 = 0xE800000000000000;
          v65 = 0x6863746150726550;
          break;
        case 4:
          v65 = 0xD000000000000014;
          v66 = v105;
          break;
        default:
          goto LABEL_36;
      }
    }

LABEL_37:
    v116 = v61;
    if (v65 == v63 && v66 == v62)
    {
      v67 = 0;
      goto LABEL_40;
    }

    v69 = sub_1AFDFEE28();

    if (v69)
    {
      v67 = 0;
LABEL_43:
      v68 = v100;
      goto LABEL_44;
    }

    if (qword_1F2500620 <= 1)
    {
      if (qword_1F2500620)
      {
        if (qword_1F2500620 != 1)
        {
LABEL_57:
          v82 = 0xE200000000000000;
          v81 = 16718;
          goto LABEL_58;
        }

        v81 = 0x6574726556726550;
        v82 = 0xE900000000000078;
      }

      else
      {
        v82 = 0xE800000000000000;
        v81 = 0x746E6174736E6F43;
      }
    }

    else
    {
      switch(qword_1F2500620)
      {
        case 2:
          v81 = 0x6174736E49726550;
          v82 = 0xEB0000000065636ELL;
          break;
        case 3:
          v82 = 0xE800000000000000;
          v81 = 0x6863746150726550;
          break;
        case 4:
          v81 = 0xD000000000000014;
          v82 = v105;
          break;
        default:
          goto LABEL_57;
      }
    }

LABEL_58:
    if (v81 == v63 && v82 == v64)
    {
      v67 = 1;
      goto LABEL_40;
    }

    v83 = sub_1AFDFEE28();

    if (v83)
    {
      v67 = 1;
      goto LABEL_43;
    }

    if (qword_1F2500628 <= 1)
    {
      if (qword_1F2500628)
      {
        if (qword_1F2500628 != 1)
        {
LABEL_74:
          v85 = 0xE200000000000000;
          v84 = 16718;
          goto LABEL_75;
        }

        v84 = 0x6574726556726550;
        v85 = 0xE900000000000078;
      }

      else
      {
        v85 = 0xE800000000000000;
        v84 = 0x746E6174736E6F43;
      }
    }

    else
    {
      switch(qword_1F2500628)
      {
        case 2:
          v84 = 0x6174736E49726550;
          v85 = 0xEB0000000065636ELL;
          break;
        case 3:
          v85 = 0xE800000000000000;
          v84 = 0x6863746150726550;
          break;
        case 4:
          v84 = 0xD000000000000014;
          v85 = v105;
          break;
        default:
          goto LABEL_74;
      }
    }

LABEL_75:
    if (v84 == v63 && v85 == v64)
    {
      v67 = 2;
      goto LABEL_40;
    }

    v86 = sub_1AFDFEE28();

    if (v86)
    {
      v67 = 2;
      goto LABEL_43;
    }

    if (qword_1F2500630 <= 1)
    {
      if (qword_1F2500630)
      {
        if (qword_1F2500630 != 1)
        {
LABEL_91:
          v88 = 0xE200000000000000;
          v87 = 16718;
          goto LABEL_92;
        }

        v87 = 0x6574726556726550;
        v88 = 0xE900000000000078;
      }

      else
      {
        v88 = 0xE800000000000000;
        v87 = 0x746E6174736E6F43;
      }
    }

    else
    {
      switch(qword_1F2500630)
      {
        case 2:
          v87 = 0x6174736E49726550;
          v88 = 0xEB0000000065636ELL;
          break;
        case 3:
          v88 = 0xE800000000000000;
          v87 = 0x6863746150726550;
          break;
        case 4:
          v87 = 0xD000000000000014;
          v88 = v105;
          break;
        default:
          goto LABEL_91;
      }
    }

LABEL_92:
    if (v87 == v63 && v88 == v64)
    {
      v67 = 3;
      goto LABEL_40;
    }

    v89 = sub_1AFDFEE28();

    if (v89)
    {
      v67 = 3;
      goto LABEL_43;
    }

    if (qword_1F2500638 <= 1)
    {
      if (!qword_1F2500638)
      {
        v91 = 0xE800000000000000;
        v90 = 0x746E6174736E6F43;
        goto LABEL_109;
      }

      if (qword_1F2500638 == 1)
      {
        v90 = 0x6574726556726550;
        v91 = 0xE900000000000078;
        goto LABEL_109;
      }
    }

    else
    {
      switch(qword_1F2500638)
      {
        case 2:
          v90 = 0x6174736E49726550;
          v91 = 0xEB0000000065636ELL;
          goto LABEL_109;
        case 3:
          v91 = 0xE800000000000000;
          v90 = 0x6863746150726550;
          goto LABEL_109;
        case 4:
          v90 = 0xD000000000000014;
          v91 = v105;
          goto LABEL_109;
      }
    }

    v91 = 0xE200000000000000;
    v90 = 16718;
LABEL_109:
    if (v90 != v63 || v91 != v64)
    {
      v92 = sub_1AFDFEE28();

      if (v92)
      {
        v67 = 4;
      }

      else
      {
        v67 = 0;
      }

      goto LABEL_43;
    }

    v67 = 4;
LABEL_40:

    v68 = v100;
LABEL_44:

    LOBYTE(v112) = 2;
    v70 = v98;
    v71 = sub_1AFDFE748();
    v108 = 0;
    v72 = v71;
    v109 = v59 + 1;
    v107 = v67;
    v12 = v99;
    v73 = [v99 layouts];
    v74 = [objc_allocWithZone(MEMORY[0x1E69741D8]) init];
    [v73 setObject:v74 atIndexedSubscript:v59];

    v75 = [v12 layouts];
    v76 = [v75 objectAtIndexedSubscript_];

    [v76 setStride_];
    v77 = [v12 layouts];
    v78 = [v77 objectAtIndexedSubscript_];

    [v78 setStepFunction_];
    v79 = [v12 layouts];
    v80 = [v79 objectAtIndexedSubscript_];

    [v80 setStepRate_];
    (*v106)(v70, v68);
    v59 = v109;
    if (v109 == 31)
    {
      (*(v103 + 8))(v95, v94);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v110);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v114);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v96);
      return v12;
    }
  }

  v108 = v60;
  (*(v103 + 8))(v95, v94);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v110);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v114);
  v18 = v96;
LABEL_19:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v18);

  return v12;
}

unint64_t sub_1AF725894()
{
  result = qword_1EB63DD78;
  if (!qword_1EB63DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DD78);
  }

  return result;
}

unint64_t sub_1AF7258E8()
{
  result = qword_1EB63DD88;
  if (!qword_1EB63DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DD88);
  }

  return result;
}

unint64_t sub_1AF72593C()
{
  result = qword_1EB63DD98;
  if (!qword_1EB63DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DD98);
  }

  return result;
}

unint64_t sub_1AF725990()
{
  result = qword_1ED7232B0;
  if (!qword_1ED7232B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7232B0);
  }

  return result;
}

unint64_t sub_1AF7259E4()
{
  result = qword_1EB63DDC8;
  if (!qword_1EB63DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DDC8);
  }

  return result;
}

unint64_t sub_1AF725A38()
{
  result = qword_1EB63DDD8;
  if (!qword_1EB63DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DDD8);
  }

  return result;
}

unint64_t sub_1AF725A8C()
{
  result = qword_1EB63DDE8;
  if (!qword_1EB63DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DDE8);
  }

  return result;
}

unint64_t sub_1AF725AE0()
{
  result = qword_1EB63DDF8;
  if (!qword_1EB63DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DDF8);
  }

  return result;
}

unint64_t sub_1AF725B34()
{
  result = qword_1EB63DE10;
  if (!qword_1EB63DE10)
  {
    sub_1AF7277CC(255, &unk_1EB63DE00, sub_1AF719808, &type metadata for ShaderArchive.Library, MEMORY[0x1E69E64E8]);
    sub_1AF725BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DE10);
  }

  return result;
}

unint64_t sub_1AF725BE4()
{
  result = qword_1EB63DE18;
  if (!qword_1EB63DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DE18);
  }

  return result;
}

uint64_t sub_1AF725C38(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF45BD00(255, a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF725CB0()
{
  result = qword_1EB63DE30;
  if (!qword_1EB63DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DE30);
  }

  return result;
}

unint64_t sub_1AF725D04()
{
  result = qword_1EB63DE48;
  if (!qword_1EB63DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DE48);
  }

  return result;
}

unint64_t sub_1AF725D58()
{
  result = qword_1EB63DE60;
  if (!qword_1EB63DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DE60);
  }

  return result;
}

unint64_t sub_1AF725DAC()
{
  result = qword_1EB63DE78;
  if (!qword_1EB63DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DE78);
  }

  return result;
}

void sub_1AF725E00(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1AF0D4478(255, a3);
    sub_1AF43BD80(a5, a3);
    v8 = sub_1AFDFD7B8();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AF725E8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t initializeWithCopy for FunctionConstant(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_1AF725E8C(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 96) = *(a2 + 96);
  v8 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v8;
  return a1;
}

uint64_t assignWithCopy for FunctionConstant(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_1AF725E8C(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  sub_1AF4456D0(v7, v8, v9);
  *(a1 + 32) = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v12 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v11;
  *(a1 + 80) = v12;
  *(a1 + 48) = v10;
  return a1;
}

__n128 initializeWithTake for FunctionConstant(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for FunctionConstant(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  sub_1AF4456D0(v5, v6, v7);
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  *(a1 + 96) = *(a2 + 96);
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
  return a1;
}

uint64_t getEnumTagSinglePayload for FunctionConstant(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for FunctionConstant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destroy for ShaderArchive.MTLLinkedFunctionDescriptorCoder(id *a1)
{

  return swift_unknownObjectRelease();
}

uint64_t assignWithCopy for ShaderArchive.MTLLinkedFunctionDescriptorCoder(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

id *assignWithTake for ShaderArchive.MTLLinkedFunctionDescriptorCoder(id *a1, _OWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t destroy for ShaderArchive.SpecializedFunctionCoder()
{
}

void *initializeWithCopy for ShaderArchive.SpecializedFunctionCoder(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

void *assignWithCopy for ShaderArchive.SpecializedFunctionCoder(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for ShaderArchive.SpecializedFunctionCoder(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for FunctionDescriptor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FunctionDescriptor(uint64_t result, int a2, int a3)
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

unint64_t sub_1AF72647C()
{
  result = qword_1EB63DEA0;
  if (!qword_1EB63DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DEA0);
  }

  return result;
}

unint64_t sub_1AF7264D4()
{
  result = qword_1EB63DEA8;
  if (!qword_1EB63DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DEA8);
  }

  return result;
}

unint64_t sub_1AF72652C()
{
  result = qword_1EB63DEB0;
  if (!qword_1EB63DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DEB0);
  }

  return result;
}

unint64_t sub_1AF726584()
{
  result = qword_1EB63DEB8;
  if (!qword_1EB63DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DEB8);
  }

  return result;
}

unint64_t sub_1AF7265DC()
{
  result = qword_1EB63DEC0;
  if (!qword_1EB63DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DEC0);
  }

  return result;
}

unint64_t sub_1AF726634()
{
  result = qword_1EB63DEC8;
  if (!qword_1EB63DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DEC8);
  }

  return result;
}

unint64_t sub_1AF72668C()
{
  result = qword_1EB63DED0;
  if (!qword_1EB63DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DED0);
  }

  return result;
}

unint64_t sub_1AF7266E4()
{
  result = qword_1EB63DED8;
  if (!qword_1EB63DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DED8);
  }

  return result;
}

unint64_t sub_1AF72673C()
{
  result = qword_1EB63DEE0;
  if (!qword_1EB63DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DEE0);
  }

  return result;
}

unint64_t sub_1AF726794()
{
  result = qword_1EB63DEE8;
  if (!qword_1EB63DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DEE8);
  }

  return result;
}

unint64_t sub_1AF7267EC()
{
  result = qword_1EB63DEF0;
  if (!qword_1EB63DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DEF0);
  }

  return result;
}

unint64_t sub_1AF726844()
{
  result = qword_1EB63DEF8;
  if (!qword_1EB63DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DEF8);
  }

  return result;
}

unint64_t sub_1AF72689C()
{
  result = qword_1EB63DF00;
  if (!qword_1EB63DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF00);
  }

  return result;
}

unint64_t sub_1AF7268F4()
{
  result = qword_1EB63DF08;
  if (!qword_1EB63DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF08);
  }

  return result;
}

unint64_t sub_1AF72694C()
{
  result = qword_1EB63DF10;
  if (!qword_1EB63DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF10);
  }

  return result;
}

unint64_t sub_1AF7269A4()
{
  result = qword_1EB63DF18;
  if (!qword_1EB63DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF18);
  }

  return result;
}

unint64_t sub_1AF7269FC()
{
  result = qword_1EB63DF20;
  if (!qword_1EB63DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF20);
  }

  return result;
}

unint64_t sub_1AF726A54()
{
  result = qword_1EB63DF28;
  if (!qword_1EB63DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF28);
  }

  return result;
}

unint64_t sub_1AF726AAC()
{
  result = qword_1EB63DF30;
  if (!qword_1EB63DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF30);
  }

  return result;
}

unint64_t sub_1AF726B04()
{
  result = qword_1EB63DF38;
  if (!qword_1EB63DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF38);
  }

  return result;
}

unint64_t sub_1AF726B5C()
{
  result = qword_1EB63DF40;
  if (!qword_1EB63DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF40);
  }

  return result;
}

unint64_t sub_1AF726BB0()
{
  result = qword_1EB63DF50;
  if (!qword_1EB63DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF50);
  }

  return result;
}

unint64_t sub_1AF726C04()
{
  result = qword_1EB63DF68;
  if (!qword_1EB63DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF68);
  }

  return result;
}

unint64_t sub_1AF726C58()
{
  result = qword_1EB63DF78;
  if (!qword_1EB63DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF78);
  }

  return result;
}

unint64_t sub_1AF726CAC()
{
  result = qword_1EB63DF88;
  if (!qword_1EB63DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF88);
  }

  return result;
}

unint64_t sub_1AF726D00()
{
  result = qword_1EB63DF90;
  if (!qword_1EB63DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF90);
  }

  return result;
}

unint64_t sub_1AF726D54()
{
  result = qword_1EB63DF98;
  if (!qword_1EB63DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DF98);
  }

  return result;
}

unint64_t sub_1AF726DA8()
{
  result = qword_1EB63DFB8;
  if (!qword_1EB63DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DFB8);
  }

  return result;
}

unint64_t sub_1AF726DFC()
{
  result = qword_1EB63DFC8;
  if (!qword_1EB63DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DFC8);
  }

  return result;
}

unint64_t sub_1AF726E50()
{
  result = qword_1EB63DFD8;
  if (!qword_1EB63DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63DFD8);
  }

  return result;
}

uint64_t sub_1AF726EA4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF7277CC(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderArchive.MTLRenderPipelineDescriptorCoder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderArchive.MTLRenderPipelineDescriptorCoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AF7270CC()
{
  result = qword_1EB63E030;
  if (!qword_1EB63E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E030);
  }

  return result;
}

unint64_t sub_1AF727124()
{
  result = qword_1EB63E038;
  if (!qword_1EB63E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E038);
  }

  return result;
}

unint64_t sub_1AF72717C()
{
  result = qword_1EB63E040;
  if (!qword_1EB63E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E040);
  }

  return result;
}

unint64_t sub_1AF7271D4()
{
  result = qword_1EB63E048;
  if (!qword_1EB63E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E048);
  }

  return result;
}

unint64_t sub_1AF72722C()
{
  result = qword_1EB63E050;
  if (!qword_1EB63E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E050);
  }

  return result;
}

unint64_t sub_1AF727284()
{
  result = qword_1EB63E058;
  if (!qword_1EB63E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E058);
  }

  return result;
}

unint64_t sub_1AF7272DC()
{
  result = qword_1EB63E060;
  if (!qword_1EB63E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E060);
  }

  return result;
}

unint64_t sub_1AF727334()
{
  result = qword_1EB63E068;
  if (!qword_1EB63E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E068);
  }

  return result;
}

unint64_t sub_1AF72738C()
{
  result = qword_1EB63E070;
  if (!qword_1EB63E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E070);
  }

  return result;
}

unint64_t sub_1AF7273E4()
{
  result = qword_1EB63E078;
  if (!qword_1EB63E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E078);
  }

  return result;
}

unint64_t sub_1AF72743C()
{
  result = qword_1EB63E080;
  if (!qword_1EB63E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E080);
  }

  return result;
}

unint64_t sub_1AF727494()
{
  result = qword_1EB63E088;
  if (!qword_1EB63E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E088);
  }

  return result;
}

unint64_t sub_1AF7274EC()
{
  result = qword_1EB63E090;
  if (!qword_1EB63E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E090);
  }

  return result;
}

unint64_t sub_1AF727544()
{
  result = qword_1EB63E098;
  if (!qword_1EB63E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E098);
  }

  return result;
}

unint64_t sub_1AF72759C()
{
  result = qword_1EB63E0A0;
  if (!qword_1EB63E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E0A0);
  }

  return result;
}

unint64_t sub_1AF7275F4()
{
  result = qword_1EB63E0A8;
  if (!qword_1EB63E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E0A8);
  }

  return result;
}

unint64_t sub_1AF72764C()
{
  result = qword_1EB63E0B0;
  if (!qword_1EB63E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E0B0);
  }

  return result;
}

unint64_t sub_1AF7276A4()
{
  result = qword_1EB63E0B8;
  if (!qword_1EB63E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E0B8);
  }

  return result;
}

unint64_t sub_1AF7276F8()
{
  result = qword_1EB63E0C8;
  if (!qword_1EB63E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E0C8);
  }

  return result;
}

unint64_t sub_1AF72774C()
{
  result = qword_1EB639870;
  if (!qword_1EB639870)
  {
    sub_1AF45BD00(255, &qword_1ED726C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB639870);
  }

  return result;
}

void sub_1AF7277CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF727834()
{
  result = qword_1EB63E0D8;
  if (!qword_1EB63E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E0D8);
  }

  return result;
}

unint64_t sub_1AF7278AC()
{
  result = qword_1EB63E0E0;
  if (!qword_1EB63E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E0E0);
  }

  return result;
}

unint64_t sub_1AF727904()
{
  result = qword_1EB63E0E8;
  if (!qword_1EB63E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E0E8);
  }

  return result;
}

unint64_t sub_1AF72795C()
{
  result = qword_1EB63E0F0;
  if (!qword_1EB63E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E0F0);
  }

  return result;
}

unint64_t sub_1AF7279B4()
{
  result = qword_1EB63E0F8;
  if (!qword_1EB63E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E0F8);
  }

  return result;
}

unint64_t sub_1AF727A0C()
{
  result = qword_1EB63E100;
  if (!qword_1EB63E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E100);
  }

  return result;
}

unint64_t sub_1AF727A64()
{
  result = qword_1EB63E108;
  if (!qword_1EB63E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E108);
  }

  return result;
}

uint64_t sub_1AF727AD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v13 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v11 = a3;
    v5 = (a2 + 64);
    while (1)
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v12[0] = v7;
      v12[1] = v6;
      v12[2] = v8;
      v12[3] = v9;
      v12[4] = v10;
      swift_unknownObjectRetain();

      result = v13(v12);
      if (v3)
      {
        break;
      }

      if (result)
      {
        goto LABEL_7;
      }

      result = swift_unknownObjectRelease();
      v5 += 5;
      if (!--v4)
      {
        v7 = 0;
        v6 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
LABEL_7:
        a3 = v11;
        goto LABEL_9;
      }
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_9:
    *a3 = v7;
    a3[1] = v6;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
  }

  return result;
}

uint64_t sub_1AF727C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v26 - v12;
  sub_1AF0D4320(a3, v26 - v12, &qword_1ED726C10, v9);
  v14 = sub_1AFDFD668();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_1AF0D438C(v13, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1AFDFD658();
    (*(v15 + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1AFDFD5B8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1AFDFCFB8();

      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20 + 32;
      v24 = swift_task_create();
      sub_1AF0D438C(a3, &qword_1ED726C10, MEMORY[0x1E69E85F0]);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AF0D438C(a3, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1AF727F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v26 - v12;
  sub_1AF0D4320(a3, v26 - v12, &qword_1ED726C10, v9);
  v14 = sub_1AFDFD668();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_1AF0D438C(v13, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1AFDFD658();
    (*(v15 + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1AFDFD5B8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1AFDFCFB8();

      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20 + 32;
      v24 = swift_task_create();
      sub_1AF0D438C(a3, &qword_1ED726C10, MEMORY[0x1E69E85F0]);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AF0D438C(a3, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1AF728260()
{
  sub_1AF0D4E74();
  v102 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v101 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1AFDFC298();
  v104 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v4);
  v99 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1AFDFCB28();
  v105 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v6);
  v107 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v106 = &v84 - v10;
  v11 = sub_1AFDFCA68();
  v85 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AF43ED8C(MEMORY[0x1E69E7CC0]);
  sub_1AF43ED8C(v15);
  v98 = v0 + OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  v16 = *(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v16);

  v18 = sub_1AF73F4F8(v17);

  v103 = v0;

  v87 = sub_1AF73F7D4(v19);

  v20 = v14;
  os_unfair_lock_unlock(v16);
  *v14 = 10;
  v21 = *MEMORY[0x1E69E7F48];
  v22 = *(v85 + 104);
  v84 = v11;
  v23 = v11;
  v24 = v18;
  v22(v14, v21, v23);
  v25 = 1 << *(v18 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v18 + 64);
  v28 = (v25 + 63) >> 6;
  ++v105;
  v86 = "Failed compiling ";
  v96 = (v104 + 32);
  v97 = " renderPipeline hash";

  v29 = 0;
  v95 = xmmword_1AFE431C0;
  v94 = xmmword_1AFE749F0;
  v109 = v20;
  v88 = v18;
  for (i = v28; v27; v28 = i)
  {
LABEL_9:
    while (1)
    {
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v32 = (v29 << 9) | (8 * v31);
      v33 = *(v24 + 56);
      v104 = *(*(v24 + 48) + v32);
      v34 = *(v33 + v32);
      v35 = v107;
      sub_1AFDFCB18();
      v36 = v106;
      MEMORY[0x1B2718560](v35, v109);
      v37 = *v105;
      v38 = v108;
      (*v105)(v35, v108);
      sub_1AFDFDA98();
      v37(v36, v38);
      if (sub_1AFDFCA78())
      {
        break;
      }

      v28 = i;
      if (!v27)
      {
        goto LABEL_6;
      }
    }

    v91 = *(v98 + 24);
    v92 = v34;
    os_unfair_lock_lock(v91);
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v115[0] = 0;
    v115[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000024, v86 | 0x8000000000000000);
    *&v111 = v104;
    v39 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v39);

    MEMORY[0x1B2718AE0](0xD000000000000014, v97 | 0x8000000000000000);
    v40 = v115[0];
    v41 = v115[1];
    v42 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    sub_1AF6EFB60();
    v43 = swift_allocObject();
    *(v43 + 16) = v95;
    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = sub_1AF0D544C();
    *(v43 + 32) = v40;
    *(v43 + 40) = v41;

    sub_1AFDFC4C8();

    v90 = v40;
    v44 = v99;
    sub_1AFDFC288();
    v45 = v101;
    v46 = v102[12];
    v89 = v102[16];
    v47 = v42;
    v48 = v41;
    v49 = &v101[v102[20]];
    (*v96)(v101, v44, v100);
    *(v45 + v46) = v47;
    v50 = v90;
    *(v45 + v89) = 0;
    *v49 = v50;
    *(v49 + 1) = v48;

    sub_1AFDFC608();

    sub_1AF7470C4(v45, sub_1AF0D4E74);

    sub_1AF74554C();
    v51 = swift_allocError();
    *v52 = v94;
    *(v52 + 16) = 0;
    *(v52 + 24) = 1;
    v115[0] = v51;
    sub_1AF745F84(v115);
    memcpy(v116, v115, 0x1B1uLL);
    v53 = v103;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v111 = *(v53 + 48);
    *(v53 + 48) = 0x8000000000000000;
    sub_1AF854898(v116, v104, isUniquelyReferenced_nonNull_native);
    *(v53 + 48) = v111;
    os_unfair_lock_unlock(v91);

    v24 = v88;
  }

LABEL_6:
  while (1)
  {
    v30 = v29 + 1;
    if (v29 + 1 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v29++ + 72);
    if (v27)
    {
      v29 = v30;
      goto LABEL_9;
    }
  }

  v55 = v87;
  v56 = 1 << *(v87 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v87 + 64);
  v59 = (v56 + 63) >> 6;
  v86 = " in a timely manner.";

  v60 = 0;
  for (i = v59; v58; v59 = i)
  {
LABEL_26:
    while (1)
    {
      v62 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v63 = (v60 << 9) | (8 * v62);
      v64 = *(v55 + 56);
      v104 = *(*(v55 + 48) + v63);
      v65 = *(v64 + v63);
      v66 = v107;
      sub_1AFDFCB18();
      v67 = v106;
      MEMORY[0x1B2718560](v66, v109);
      v68 = *v105;
      v69 = v108;
      (*v105)(v66, v108);
      sub_1AFDFDA98();
      v68(v67, v69);
      if (sub_1AFDFCA78())
      {
        break;
      }

      v59 = i;
      if (!v58)
      {
        goto LABEL_23;
      }
    }

    v91 = *(v98 + 24);
    os_unfair_lock_lock(v91);
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v111 = 0;
    *(&v111 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000025, v86 | 0x8000000000000000);
    v110 = v104;
    v70 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v70);

    MEMORY[0x1B2718AE0](0xD000000000000014, v97 | 0x8000000000000000);
    v71 = v111;
    v72 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v92 = v65;
    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    sub_1AF6EFB60();
    v73 = swift_allocObject();
    *(v73 + 16) = v95;
    *(v73 + 56) = MEMORY[0x1E69E6158];
    *(v73 + 64) = sub_1AF0D544C();
    *(v73 + 32) = v71;

    sub_1AFDFC4C8();

    v90 = v71;
    v74 = v99;
    sub_1AFDFC288();
    v75 = v101;
    v89 = v102[12];
    v76 = v102[16];
    v77 = &v101[v102[20]];
    (*v96)(v101, v74, v100);
    v78 = v90;
    *(v75 + v89) = v72;
    *(v75 + v76) = 0;
    *v77 = v78;
    *(v77 + 1) = *(&v71 + 1);

    sub_1AFDFC608();

    sub_1AF7470C4(v75, sub_1AF0D4E74);

    sub_1AF74554C();
    v79 = swift_allocError();
    *v80 = v94;
    *(v80 + 16) = 0;
    *(v80 + 24) = 1;
    *&v115[1] = v111;
    v115[0] = v79;
    *&v115[3] = v112;
    *&v115[5] = v113;
    v115[7] = v114;
    LOBYTE(v115[8]) = 2;
    v81 = v103;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v110 = *(v81 + 56);
    *(v81 + 56) = 0x8000000000000000;
    sub_1AF853A48(v115, v104, v82);
    *(v81 + 56) = v110;
    os_unfair_lock_unlock(v91);

    v55 = v87;
  }

LABEL_23:
  while (1)
  {
    v61 = v60 + 1;
    if (v60 + 1 >= v59)
    {
      break;
    }

    v58 = *(v55 + 8 * v60++ + 72);
    if (v58)
    {
      v60 = v61;
      goto LABEL_26;
    }
  }

  (*(v85 + 8))(v109, v84);
}

void sub_1AF728E38()
{
  v1 = v0;
  v22 = *MEMORY[0x1E69E9840];
  v2 = [objc_allocWithZone(MEMORY[0x1E6973FE8]) init];
  v3 = sub_1AFDFC048();
  [v2 setUrl_];

  v4 = *(v1 + 16);
  v20 = 0;
  v5 = [v4 newBinaryArchiveWithDescriptor:v2 error:&v20];
  v6 = v20;
  if (v5)
  {
    v7 = swift_unknownObjectRetain();
    MEMORY[0x1B2718E00](v7);
    if (*((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1AFDFE218();

    v20 = 0xD00000000000001FLL;
    v21 = 0x80000001AFF325D0;
    sub_1AFDFC128();
    sub_1AF48F374();
    v8 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v8);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    v10 = v20;
    v9 = v21;
    v11 = sub_1AFDFDA28();
    if (qword_1ED731058 != -1)
    {
      v18 = v11;
      swift_once();
      v11 = v18;
    }

    v20 = 0;
    sub_1AF0D4F18(v11, &v20, v10, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v6;
    v13 = sub_1AFDFBF58();

    swift_willThrow();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF325A0);
    sub_1AFDFC128();
    sub_1AF48F374();
    v14 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v14);

    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v16 = v20;
    v15 = v21;
    v17 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v19 = v17;
      swift_once();
      v17 = v19;
    }

    v20 = 0;
    sub_1AF0D4F18(v17, &v20, v16, v15);
  }
}

void sub_1AF7291E4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1AFDFCEC8();
  v2 = [v0 BOOLForKey_];

  byte_1EB633470 = v2;
}

uint64_t VFXCoreSetBinaryArchives()
{
  sub_1AF447DFC(0, &qword_1EB63BD20);
  v0 = sub_1AFDFD418();
  v1 = swift_unknownObjectRetain();
  _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v1);
  sub_1AF729350(v0);
  swift_unknownObjectRelease();
}

uint64_t VFXCoreSetBinaryArchives(archive:device:)(unint64_t a1, void *a2)
{
  _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(a2);
  sub_1AF729350(a1);
}

uint64_t sub_1AF729350(unint64_t a1)
{
  sub_1AF0D4E74();
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v33 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1AFDFC298();
  v6 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v7);
  v34 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 168) = MEMORY[0x1E69E7CC0];

  sub_1AF490718(v9);
  if (a1 >> 62)
  {
    result = sub_1AFDFE108();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v11 = 0;
  v29 = 0x80000001AFF326D0;
  v30 = a1 & 0xC000000000000001;
  v28 = (v6 + 32);
  v27 = xmmword_1AFE431C0;
  v31 = result;
  v32 = a1;
  v12 = v34;
  do
  {
    if (v30)
    {
      v13 = MEMORY[0x1B2719C70](v11, a1);
    }

    else
    {
      v13 = *(a1 + 8 * v11 + 32);
      swift_unknownObjectRetain();
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1AFDFE218();

    v38 = 0xD00000000000001CLL;
    v39 = v29;
    v14 = [v13 label];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1AFDFCEF8();
      v18 = v17;
    }

    else
    {
      v18 = 0xE200000000000000;
      v16 = 16718;
    }

    MEMORY[0x1B2718AE0](v16, v18);

    MEMORY[0x1B2718AE0](34, 0xE100000000000000);
    v20 = v38;
    v19 = v39;
    v21 = sub_1AFDFDA28();
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v37 = v13;
    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    ++v11;
    sub_1AF6EFB60();
    v22 = swift_allocObject();
    *(v22 + 16) = v27;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1AF0D544C();
    *(v22 + 32) = v20;
    *(v22 + 40) = v19;

    sub_1AFDFC4C8();

    sub_1AFDFC288();
    v23 = v36[12];
    v24 = v36[16];
    v25 = v33;
    v26 = &v33[v36[20]];
    (*v28)(v33, v12, v35);
    *(v25 + v23) = v21;
    *(v25 + v24) = 0;
    *v26 = v20;
    *(v26 + 1) = v19;
    sub_1AFDFC608();
    swift_unknownObjectRelease();

    sub_1AF7470C4(v25, sub_1AF0D4E74);
    result = v31;
    a1 = v32;
  }

  while (v31 != v11);
  return result;
}

id VFXCoreGetShaderCache()
{
  v0 = swift_unknownObjectRetain();
  ShaderCache6deviceyXlSo9MTLDevice_p_tF_0 = _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v0);
  swift_unknownObjectRelease();

  return ShaderCache6deviceyXlSo9MTLDevice_p_tF_0;
}

id VFXCoreGetRecordingShaderArchive()
{
  v0 = swift_unknownObjectRetain();
  v1 = *(_s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v0) + 96);

  swift_unknownObjectRelease();

  return v1;
}

void *VFXCoreGetRecordingShaderArchive(device:)(void *a1)
{
  v1 = *(_s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(a1) + 96);
  v2 = v1;

  return v1;
}

uint64_t sub_1AF729848()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1AF7299E0();
  }

  return result;
}

uint64_t sub_1AF729898()
{
  MEMORY[0x1B271DEA0](*(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24), -1, -1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1AF0D438C(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_urlToSaveBinaryArchiveTo, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  sub_1AF744EF4(*(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation));

  return v0;
}

uint64_t sub_1AF729988()
{
  sub_1AF729898();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF7299E0()
{
  sub_1AF0D4E74();
  v90 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v89 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1AFDFC298();
  v4 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v5);
  v87 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_reloadCallback);

  v7(v8);

  *(v0 + 104) = 1;
  v77 = *(v0 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v77);
  v79 = v0;
  v9 = *(v0 + 48);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  v81 = "nc compilation disabled";
  v86 = (v4 + 32);
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v80 = MEMORY[0x1E69E7CC0];
  v85 = xmmword_1AFE431C0;
  v82 = v13;
  v83 = v9;
  while (v12)
  {
LABEL_8:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = (*(v9 + 56) + 440 * (v16 | (v14 << 6)));
    memcpy(v95, v17, 0x1B1uLL);
    memmove(v96, v17, 0x1B1uLL);
    if (sub_1AF745F90(v96) == 1)
    {
      nullsub_106();
      memcpy(v93, v95, sizeof(v93));
      nullsub_106();
      v29 = v28;
      memcpy(v94, v95, 0x1B1uLL);
      nullsub_106();
      sub_1AF7472F0(v30, &v92);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_1AF424D98(0, *(v80 + 2) + 1, 1, v80);
      }

      v32 = *(v80 + 2);
      v31 = *(v80 + 3);
      if (v32 >= v31 >> 1)
      {
        v80 = sub_1AF424D98(v31 > 1, v32 + 1, 1, v80);
      }

      v33 = v80;
      *(v80 + 2) = v32 + 1;
      memcpy(&v33[432 * v32 + 32], v29, 0x1B0uLL);
    }

    else
    {
      sub_1AF7450E4(v95, v94, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v94[0] = 0;
      *(&v94[0] + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      *v93 = v94[0];
      MEMORY[0x1B2718AE0](0xD00000000000001ELL, v81 | 0x8000000000000000);
      memcpy(v94, v95, 0x1B1uLL);
      sub_1AF0D2DA0(0, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
      sub_1AFDFE458();
      v18 = *v93;
      v19 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      sub_1AF6EFB60();
      v20 = swift_allocObject();
      *(v20 + 16) = v85;
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1AF0D544C();
      *(v20 + 32) = v18;

      sub_1AFDFC4C8();

      v91 = *(&v18 + 1);
      v84 = v18;
      v21 = v87;
      sub_1AFDFC288();
      v22 = v89;
      v23 = v90[12];
      v24 = v90[16];
      v25 = v19;
      v26 = &v89[v90[20]];
      (*v86)(v89, v21, v88);
      *(v22 + v23) = v25;
      *(v22 + v24) = 0;
      v27 = v91;
      *v26 = v84;
      *(v26 + 1) = v27;
      sub_1AFDFC608();

      sub_1AF0D2D44(v95, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
      sub_1AF7470C4(v22, sub_1AF0D4E74);
      v13 = v82;
      v9 = v83;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (v14 + 1 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v14++ + 72);
    if (v12)
    {
      v14 = v15;
      goto LABEL_8;
    }
  }

  v34 = *(v79 + 56);
  v35 = 1 << *(v34 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v34 + 64);
  v38 = (v35 + 63) >> 6;
  v81 = "Cannot reload RenderPipeline: ";
  swift_bridgeObjectRetain_n();
  v39 = 0;
  v78 = MEMORY[0x1E69E7CC0];
  v82 = v38;
  v83 = v34;
  while (v37)
  {
LABEL_28:
    v41 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v42 = *(v34 + 56) + 72 * (v41 | (v39 << 6));
    v96[0] = *v42;
    v44 = *(v42 + 32);
    v43 = *(v42 + 48);
    v45 = *(v42 + 64);
    v96[1] = *(v42 + 16);
    v96[2] = v44;
    LOBYTE(v96[4]) = v45;
    v96[3] = v43;
    if (v45 == 1)
    {
      v94[2] = v96[2];
      v94[3] = v96[3];
      LOBYTE(v94[4]) = v96[4];
      v94[0] = v96[0];
      v94[1] = v96[1];
      v95[2] = v96[2];
      v95[3] = v96[3];
      LOBYTE(v95[4]) = v96[4];
      v95[0] = v96[0];
      v95[1] = v96[1];
      sub_1AF747328(v95, v93);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1AF424C8C(0, *(v78 + 2) + 1, 1, v78);
      }

      v53 = *(v78 + 2);
      v52 = *(v78 + 3);
      if (v53 >= v52 >> 1)
      {
        v78 = sub_1AF424C8C(v52 > 1, v53 + 1, 1, v78);
      }

      v54 = v78;
      *(v78 + 2) = v53 + 1;
      v55 = &v54[64 * v53];
      v56 = v94[0];
      v57 = v94[1];
      v58 = v94[3];
      *(v55 + 4) = v94[2];
      *(v55 + 5) = v58;
      *(v55 + 2) = v56;
      *(v55 + 3) = v57;
    }

    else
    {
      sub_1AF7450E4(v96, v95, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v95[0] = 0;
      *(&v95[0] + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v94[0] = v95[0];
      MEMORY[0x1B2718AE0](0xD00000000000001FLL, v81 | 0x8000000000000000);
      v95[2] = v96[2];
      v95[3] = v96[3];
      LOBYTE(v95[4]) = v96[4];
      v95[0] = v96[0];
      v95[1] = v96[1];
      sub_1AF0D2DA0(0, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
      sub_1AFDFE458();
      v46 = v94[0];
      LODWORD(v91) = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      sub_1AF6EFB60();
      v47 = swift_allocObject();
      *(v47 + 16) = v85;
      *(v47 + 56) = MEMORY[0x1E69E6158];
      *(v47 + 64) = sub_1AF0D544C();
      *(v47 + 32) = v46;

      sub_1AFDFC4C8();

      v48 = v87;
      sub_1AFDFC288();
      v49 = v89;
      v84 = v90[12];
      v50 = v90[16];
      v51 = &v89[v90[20]];
      (*v86)(v89, v48, v88);
      *(v49 + v84) = v91;
      *(v49 + v50) = 0;
      *v51 = v46;
      sub_1AFDFC608();

      sub_1AF0D2D44(v96, &qword_1EB633970, &type metadata for ShaderCache.ComputePipeline, type metadata accessor for ShaderCache.Status);
      sub_1AF7470C4(v49, sub_1AF0D4E74);
      v38 = v82;
      v34 = v83;
    }
  }

  while (1)
  {
    v40 = v39 + 1;
    if (v39 + 1 >= v38)
    {
      break;
    }

    v37 = *(v34 + 8 * v39++ + 72);
    if (v37)
    {
      v39 = v40;
      goto LABEL_28;
    }
  }

  os_unfair_lock_unlock(v77);
  v59 = v79;
  sub_1AF73F470();
  v60 = *(v80 + 2);
  if (v60)
  {
    v61 = v80 + 40;
    do
    {
      memcpy(v96, v61 - 8, 0x1B0uLL);
      memcpy(v94, v61, 0x1A0uLL);
      v62 = *(&v96[26] + 1) != 0;
      sub_1AF7472F0(v96, v95);
      v63 = sub_1AF730058(v94, v62);
      sub_1AF6022A8(v63, v64, v65);
      sub_1AF747360(v96);
      v61 += 432;
      --v60;
    }

    while (v60);
  }

  v66 = v78;
  v67 = *(v78 + 2);
  if (v67)
  {
    v68 = v67 - 1;
    for (i = 32; ; i += 64)
    {
      v70 = *&v66[i + 16];
      v71 = *&v66[i + 32];
      v72 = *&v66[i + 48];
      v96[0] = *&v66[i];
      v96[1] = v70;
      v96[2] = v71;
      v96[3] = v72;
      *v93 = *(&v96[0] + 1);
      *&v93[8] = v70;
      *&v93[16] = *(&v96[1] + 8);
      *&v93[32] = *(&v71 + 1);
      *&v93[40] = v72;
      v73 = *(&v72 + 1) != 0;
      sub_1AF747328(v96, v95);
      sub_1AF73BD84(v93, v73, 0, 0);
      v75 = v74;
      sub_1AF747390(v96);
      swift_unknownObjectRelease();

      if (!v68)
      {
        break;
      }

      --v68;
    }
  }

  *(v59 + 104) = 0;
  return result;
}

uint64_t *sub_1AF72A584(uint64_t *a1, uint64_t a2, void *a3)
{
  v149 = a3;
  v162[5] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v137 - v15;
  v152 = v7;
  if (!v7)
  {
    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v155 = 0xD00000000000001ALL;
    *(&v155 + 1) = 0x80000001AFF322D0;
    MEMORY[0x1B2718AE0](v4, v5);
    v21 = v155;
    sub_1AF74554C();
    swift_allocError();
    *v22 = v21;
    *(v22 + 16) = 0;
    *(v22 + 24) = 1;
    swift_willThrow();
    return v5;
  }

  v150 = v4;
  if (!v6)
  {
    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    v23 = v152;
    swift_unknownObjectRetain();
    sub_1AFDFE218();

    *&v155 = 0x6E6F6974636E7546;
    *(&v155 + 1) = 0xE900000000000020;
    MEMORY[0x1B2718AE0](v150, v5);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF322F0);
    v24 = [v23 label];
    if (v24)
    {
      v25 = v24;
      v5 = sub_1AFDFCEF8();
      v27 = v26;
    }

    else
    {
      v27 = 0xE700000000000000;
      v5 = 0x746C7561666564;
    }

    MEMORY[0x1B2718AE0](v5, v27);

    v30 = v155;
    sub_1AF74554C();
    swift_allocError();
    *v31 = v30;
    *(v31 + 16) = 0;
    *(v31 + 24) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    return v5;
  }

  swift_unknownObjectRetain();
  v17 = v152;
  swift_unknownObjectRetain();
  v144 = sub_1AF8836C4(v150, v5, v17, v8);
  v145 = v5;
  v146 = v6;
  v18 = v149;
  if (v149)
  {
    v19 = v149;
    v147 = v149;
    v20 = v151;
  }

  else
  {
    v20 = v151;
    v28 = *(v151 + 96);
    if (!v28)
    {
      v147 = 0;
      goto LABEL_16;
    }

    v147 = *(v151 + 96);
    v19 = v28;
  }

  v29 = v18;
  v5 = sub_1AF71B2EC(a1);

  if (v5)
  {
LABEL_11:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return v5;
  }

LABEL_16:
  if (*(v20 + 104))
  {
    goto LABEL_23;
  }

  v33 = *(v20 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
  os_unfair_lock_lock(v33);
  v34 = *(v20 + 64);
  if (!*(v34 + 16) || (v35 = sub_1AF449CB8(v144), (v36 & 1) == 0))
  {
    os_unfair_lock_unlock(v33);
LABEL_23:
    v143 = (v20 + OBJC_IVAR____TtC3VFX11ShaderCache_lock);
    v50 = *(v20 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
    os_unfair_lock_lock(v50);
    v51 = *(v20 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation);
    v52 = v147;
    if (v51)
    {
      if (v51 == 1)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v155 = 0;
        *(&v155 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        v153 = v155;
        MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32160);
        v53 = *(a1 + 1);
        v155 = *a1;
        v156 = v53;
        v157 = a1[4];
        sub_1AFDFE458();
        v54 = v153;
        v55 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v120 = v55;
          swift_once();
          v55 = v120;
        }

        *&v155 = 0;
        sub_1AF0D4F18(v55, &v155, v54, *(&v54 + 1));

        v52 = v147;
      }

      else
      {
        *(&v156 + 1) = &type metadata for FunctionDescriptor;
        v56 = swift_allocObject();
        *&v155 = v56;
        v57 = *(a1 + 1);
        *(v56 + 16) = *a1;
        *(v56 + 32) = v57;
        *(v56 + 48) = a1[4];
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_1AF744EE0(v51);

        v51(&v155);
        sub_1AF744EF4(v51);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v155);
      }
    }

    v147 = v52;
    os_unfair_lock_unlock(v50);
    v58 = v150;
    v59 = v150;
    v60 = v145;
    sub_1AF8837E8(v150, v145, v152, v8);
    *&v155 = v59;
    *(&v155 + 1) = v61;
    MEMORY[0x1B2718AE0](0x3A6873616820, 0xE600000000000000);
    v62 = v144;
    *&v153 = v144;
    v63 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v63);

    sub_1AF744BC0("makeFunction", 12, 2u, v155, *(&v155 + 1), v62, v154);
    v64 = v146;
    swift_getObjectType();
    if (!sub_1AF8832C4())
    {
      swift_unknownObjectRetain_n();
      v5 = v64;
      v68 = v58;
      v67 = v8;
LABEL_64:
      v71 = v147;
LABEL_65:
      sub_1AF8837E8(v68, v145, v152, v67);
      v123 = sub_1AFDFCEC8();

      [v5 setLabel_];
      swift_unknownObjectRelease();

      if (v71)
      {
        v124 = v71;
        sub_1AF71B388(v5, a1);
      }

      v125 = v143;
      v126 = *(v143 + 3);
      os_unfair_lock_lock(v126);
      v158[0] = v5;
      v158[1] = v68;
      v158[2] = v145;
      v158[3] = v146;
      v158[4] = v152;
      v158[5] = v67;
      v159 = 1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v127 = v71;
      v128 = v151;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v155 = *(v128 + 64);
      *(v128 + 64) = 0x8000000000000000;
      sub_1AF8537B0(v158, v144, isUniquelyReferenced_nonNull_native);
      *(v128 + 64) = v155;
      os_unfair_lock_unlock(v126);
      v130 = *(v125 + 3);
      os_unfair_lock_lock(v130);
      sub_1AF73FAD8(v128 + 144);
      os_unfair_lock_unlock(v130);
      sub_1AF744F08(v154);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v5;
    }

    v65 = sub_1AF745858(v58, v60, v8);
    v66 = v65;
    v67 = v8;
    if (v149)
    {
      v68 = v150;
      v69 = v65;
LABEL_62:
      *&v155 = 0;
      v121 = [v152 newFunctionWithDescriptor:v69 error:&v155];
      if (!v121)
      {
        v131 = v155;
        sub_1AFDFBF58();

        swift_willThrow();
        v132 = v143;
        v133 = *(v143 + 3);
        os_unfair_lock_lock(v133);
        memset(v160, 0, sizeof(v160));
        v161 = -1;
        v5 = v151;
        sub_1AF824DEC(v160, v144);
        os_unfair_lock_unlock(v133);
        swift_willThrow();
        v134 = *(v132 + 3);
        os_unfair_lock_lock(v134);
        sub_1AF73FAD8(v5 + 144);
        os_unfair_lock_unlock(v134);
        sub_1AF744F08(v154);
        goto LABEL_11;
      }

      v5 = v121;
      v122 = v155;

      swift_unknownObjectRetain();
      goto LABEL_64;
    }

    if (qword_1ED7247D8 != -1)
    {
      swift_once();
    }

    v68 = v150;
    v69 = v66;
    if (byte_1EB633470 != 1)
    {
      goto LABEL_62;
    }

    v70 = *(v151 + 168);
    v71 = v147;
    if (v70 >> 62)
    {
      if (!sub_1AFDFE108())
      {
        goto LABEL_62;
      }
    }

    else if (!*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_62;
    }

    [v66 setOptions_];
    *&v155 = 0;
    v5 = [v152 newFunctionWithDescriptor:v66 error:&v155];
    v72 = v155;
    v149 = v5;
    if (!v5)
    {
      v73 = v72;
      v74 = sub_1AFDFBF58();

      swift_willThrow();
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v155 = 542983771;
      *(&v155 + 1) = 0xE400000000000000;
      swift_getErrorValue();
      v75 = sub_1AFDFF1D8();
      MEMORY[0x1B2718AE0](v75);

      v148 = v74;
      v76 = v155;
      v77 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v136 = v77;
        swift_once();
        v77 = v136;
      }

      *&v155 = 0;
      sub_1AF0D4F18(v77, &v155, v76, *(&v76 + 1));

      v5 = 0;
      v148 = 0;
      v68 = v150;
    }

    [v69 setOptions_];
    if (v5)
    {
      v78 = qword_1ED730EA0;
      swift_unknownObjectRetain();
      if (v78 != -1)
      {
        swift_once();
      }

      *&v155 = 0;
      *(&v155 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v155 = 0x6E756F46205D465BLL;
      *(&v155 + 1) = 0xEA00000000002064;
      *&v153 = sub_1AF87E644(v67);
      sub_1AF723768();
      v79 = sub_1AFDFD1B8();
      v81 = v80;
      *&v153 = v68;
      *(&v153 + 1) = v145;

      MEMORY[0x1B2718AE0](v79, v81);

      MEMORY[0x1B2718AE0](v153, *(&v153 + 1));

      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32140);
      v82 = v155;
      v83 = sub_1AFDFD9F8();
      if (qword_1ED731058 != -1)
      {
        v135 = v83;
        swift_once();
        v83 = v135;
      }

      *&v155 = 0;
      sub_1AF0D4F18(v83, &v155, v82, *(&v82 + 1));

      v68 = v150;
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  v37 = *(v34 + 56) + 56 * v35;
  v5 = *v37;
  v38 = *(v37 + 8);
  v39 = *(v37 + 16);
  v40 = *(v37 + 24);
  v41 = *(v37 + 40);
  v42 = *(v37 + 48);
  v43 = *v37;
  v44 = v39;
  v45 = v40;
  v149 = *(v37 + 32);
  v151 = v41;
  sub_1AF447894(v43, v38, v39, v40, v149, v41, v42);
  os_unfair_lock_unlock(v33);
  LODWORD(v144) = v42;
  if (v42 != 1)
  {
    type metadata accessor for ShaderCache.FunctionWrapper();
    v84 = swift_allocObject();
    v85 = v151;
    v143 = v84;
    v84[1] = 0u;
    v139 = (v84 + 1);
    v84[2] = 0u;
    v84[3] = 0u;
    v86 = v45;
    v87 = v42;
    v88 = v45;
    v89 = v149;
    v90 = v85;
    sub_1AF746DCC(v5, v38, v44, v86, v149, v85, v87);
    sub_1AF447894(v5, v38, v44, v88, v89, v90, 0);
    v91 = v44;
    v92 = dispatch_group_create();
    dispatch_group_enter(v92);
    sub_1AFDFD648();
    v93 = sub_1AFDFD668();
    (*(*(v93 - 8) + 56))(v16, 0, 1, v93);
    v94 = swift_allocObject();
    v95 = v143;
    v94[2] = v92;
    v94[3] = v95;
    v138 = v94;
    v94[4] = v5;
    v140 = v38;
    v141 = v88;
    v142 = v91;
    v96 = v91;
    v97 = v95;
    sub_1AF746DCC(v5, v38, v96, v88, v149, v90, v144);
    v98 = qword_1ED730EA0;
    v99 = v92;

    if (v98 != -1)
    {
      swift_once();
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v100 = qword_1ED73B8A0;
    v101 = MEMORY[0x1E69E85F0];
    sub_1AF0D4320(v16, v13, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
    v102 = swift_allocObject();
    v102[2] = 0;
    v102[3] = 0;
    v102[4] = v100;
    v102[5] = &unk_1AFE74DE0;
    v102[6] = v138;
    swift_retain_n();

    sub_1AF7402EC(0, 0, v13, &unk_1AFE74DF0, v102);

    sub_1AF0D438C(v16, &qword_1ED726C10, v101);
    sub_1AFDFDAA8();
    v103 = *v139;
    if (*v139)
    {
      v104 = v97[7];
      v150 = v97[6];
      v105 = v97[4];
      v145 = v97[5];
      v137 = v104;
      v138 = v105;
      v139 = v103;
      sub_1AF746FA8(v103);
      v107 = v140;
      v106 = v141;
      v108 = v142;
      v109 = v149;
      v110 = v151;
      v111 = v144;
      sub_1AF7457C8(v5, v140, v142, v141, v149, v151, v144);

      sub_1AF7457C8(v5, v107, v108, v106, v109, v110, v111);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1AF7457C8(v5, v107, v108, v106, v109, v110, v111);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v139;
    }

    *&v155 = 0;
    *(&v155 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v155 = 0xD000000000000011;
    *(&v155 + 1) = 0x80000001AFF32600;
    MEMORY[0x1B2718AE0](v150, v145);
    v112 = v155;
    sub_1AF74554C();
    swift_allocError();
    *v113 = v112;
    *(v113 + 16) = 0;
    *(v113 + 24) = 1;
    swift_willThrow();

    v115 = v140;
    v114 = v141;
    v116 = v142;
    v117 = v149;
    v118 = v151;
    v119 = v144;
    sub_1AF7457C8(v5, v140, v142, v141, v149, v151, v144);
    sub_1AF7457C8(v5, v115, v116, v114, v117, v118, v119);
    sub_1AF7457E0(v5, v115, v116, v114, v117, v118, 0);
    goto LABEL_11;
  }

  v162[0] = v38;
  v162[1] = v44;
  v46 = v149;
  v162[2] = v45;
  v162[3] = v149;
  v47 = v151;
  v162[4] = v151;
  v48 = v147;
  if (v147)
  {
    swift_unknownObjectRetain();

    v49 = v48;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_1AF71B388(v5, v162);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_1AF7457C8(v5, v38, v44, v45, v46, v151, v144);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1AF7457C8(v5, v38, v44, v45, v46, v47, v144);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1AF72B7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a2;
  v4[9] = a3;
  v6 = swift_task_alloc();
  v4[10] = v6;
  v7 = sub_1AF5C5358(0, &qword_1ED7268D0);
  *v6 = v4;
  v6[1] = sub_1AF72B878;
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v4 + 2, a4, &type metadata for ShaderCache.Function, v7, v8);
}

uint64_t sub_1AF72B878()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1AF72BA24;
  }

  else
  {
    v2 = sub_1AF72B98C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF72B98C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 56);
  v6 = *(v1 + 16);
  v7 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v7;
  *(v1 + 56) = v5;
  sub_1AF746D60(v6);
  dispatch_group_leave(v2);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1AF72BA24()
{
  dispatch_group_leave(*(v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AF72BA88(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 448) = a3;
  *(v4 + 456) = v3;
  *(v4 + 65) = a2;
  *(v4 + 440) = a1;
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AF72BB48, 0, 0);
}

uint64_t sub_1AF72BB48()
{
  v84 = v0;
  v1 = *(v0 + 440);
  v2 = v1[3];
  *(v0 + 480) = v2;
  if (v2)
  {
    v3 = v1[2];
    *(v0 + 368) = v3;
    if (v3)
    {
      v4 = *(v0 + 448);
      if (v4)
      {
        v5 = *(v0 + 448);
        v6 = v5;
      }

      else
      {
        v6 = *(*(v0 + 456) + 96);
        if (!v6)
        {
          swift_unknownObjectRetain();
          sub_1AF744720(v0 + 368, v0 + 384);
          goto LABEL_21;
        }

        v5 = v6;
        v4 = 0;
      }

      v13 = v4;
      swift_unknownObjectRetain();
      sub_1AF744720(v0 + 368, v0 + 432);
      v14 = v13;
      v15 = sub_1AF71B2EC(v1);

      if (v15)
      {

        sub_1AF7470C4(v0 + 368, sub_1AF744784);
        swift_unknownObjectRelease();
LABEL_12:

        v16 = *(v0 + 8);

        return v16(v15);
      }

LABEL_21:
      *(v0 + 488) = v6;
      v21 = *(v0 + 456);
      v22 = *(v0 + 440);
      v23 = v22[4];
      *(v0 + 376) = v23;
      v24 = sub_1AF8836C4(*v22, v22[1], v2, v23);
      *(v0 + 496) = v24;
      if ((*(v21 + 104) & 1) == 0)
      {
        v25 = *(v0 + 456);
        v26 = *(v25 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24);
        os_unfair_lock_lock(v26);
        v27 = *(v25 + 64);
        if (*(v27 + 16))
        {
          v28 = sub_1AF449CB8(v24);
          if (v29)
          {
            v30 = *(v27 + 56) + 56 * v28;
            v15 = *v30;
            *(v0 + 504) = *v30;
            v31 = *(v30 + 8);
            *(v0 + 512) = v31;
            v32 = *(v30 + 16);
            *(v0 + 520) = v32;
            v33 = *(v30 + 24);
            *(v0 + 528) = v33;
            v34 = *(v30 + 32);
            *(v0 + 536) = v34;
            v35 = *(v30 + 40);
            *(v0 + 544) = v35;
            v36 = *(v30 + 48);
            *(v0 + 66) = v36;
            v80 = v31;
            sub_1AF447894(v15, v31, v32, v33, v34, v35, v36);
            os_unfair_lock_unlock(v26);
            if (v36 == 1)
            {

              sub_1AF7470C4(v0 + 368, sub_1AF744784);
              swift_unknownObjectRelease();
              v37 = swift_unknownObjectRetain();
              sub_1AF7457C8(v37, v80, v32, v33, v34, v35, 1);
              goto LABEL_12;
            }

            v77 = swift_task_alloc();
            *(v0 + 552) = v77;
            v73 = sub_1AF5C5358(0, &qword_1ED7268D0);
            *v77 = v0;
            v77[1] = sub_1AF72C590;
            v74 = MEMORY[0x1E69E7288];
            v75 = v0 + 232;
            v76 = v15;
            goto LABEL_40;
          }
        }

        os_unfair_lock_unlock(v26);
      }

      v38 = *(v0 + 456);
      v39 = OBJC_IVAR____TtC3VFX11ShaderCache_lock;
      *(v0 + 568) = OBJC_IVAR____TtC3VFX11ShaderCache_lock;
      v79 = v38 + v39;
      v81 = v24;
      v40 = *(v38 + v39 + 24);
      os_unfair_lock_lock(v40);
      v41 = *(v38 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation);
      if (v41)
      {
        if (v41 == 1)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v42 = *(v0 + 440);
          v82 = 0;
          v83 = 0xE000000000000000;
          sub_1AFDFE218();
          *(v0 + 352) = 0;
          *(v0 + 360) = 0xE000000000000000;
          MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32160);
          v43 = *v42;
          v44 = v42[1];
          *(v0 + 312) = *(v42 + 4);
          *(v0 + 280) = v43;
          *(v0 + 296) = v44;
          sub_1AFDFE458();
          v46 = *(v0 + 352);
          v45 = *(v0 + 360);
          v47 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v78 = v47;
            swift_once();
            v47 = v78;
          }

          v82 = 0;
          sub_1AF0D4F18(v47, &v82, v46, v45);
        }

        else
        {
          v48 = *(v0 + 440);
          *(v0 + 344) = &type metadata for FunctionDescriptor;
          v49 = swift_allocObject();
          *(v0 + 320) = v49;
          v50 = *(v48 + 32);
          v51 = *(v48 + 16);
          *(v49 + 16) = *v48;
          *(v49 + 32) = v51;
          *(v49 + 48) = v50;
          swift_unknownObjectRetain();
          sub_1AF744720(v0 + 368, v0 + 392);
          sub_1AF744EE0(v41);

          sub_1AF7450E4(v0 + 376, v0 + 400, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
          v41(v0 + 320);
          sub_1AF744EF4(v41);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v0 + 320);
        }
      }

      v52 = *(v0 + 472);
      v54 = *(v0 + 448);
      v53 = *(v0 + 456);
      v55 = *(v0 + 65);
      v56 = *(v0 + 440);
      os_unfair_lock_unlock(v40);
      swift_unknownObjectRetain();
      sub_1AFDFD648();
      v57 = sub_1AFDFD668();
      (*(*(v57 - 8) + 56))(v52, 0, 1, v57);
      v58 = swift_allocObject();
      v59 = *(v56 + 32);
      v60 = *(v56 + 16);
      *(v58 + 16) = *v56;
      *(v58 + 32) = v60;
      *(v58 + 48) = v59;
      *(v58 + 56) = v81;
      *(v58 + 64) = v53;
      *(v58 + 72) = v3;
      *(v58 + 80) = v55;
      *(v58 + 88) = v54;
      *(v58 + 96) = v2;
      *(v58 + 104) = v2;
      swift_unknownObjectRetain_n();
      sub_1AF744720(v0 + 368, v0 + 408);
      swift_unknownObjectRetain();
      sub_1AF744720(v0 + 368, v0 + 416);
      v61 = v54;

      sub_1AF7450E4(v0 + 376, v0 + 424, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
      v62 = qword_1ED730EA0;

      if (v62 != -1)
      {
        swift_once();
      }

      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v63 = *(v0 + 464);
      v64 = *(v0 + 472);
      v65 = *(v0 + 456);
      v66 = qword_1ED73B8A0;
      v67 = MEMORY[0x1E69E85F0];
      sub_1AF0D4320(v64, v63, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
      v68 = swift_allocObject();
      v68[2] = 0;
      v68[3] = 0;
      v68[4] = v66;
      v68[5] = &unk_1AFE74CD0;
      v68[6] = v58;

      v69 = sub_1AF7402EC(0, 0, v63, &unk_1AFE74CE0, v68);
      *(v0 + 576) = v69;
      sub_1AF0D438C(v64, &qword_1ED726C10, v67);
      v70 = *(v79 + 24);
      os_unfair_lock_lock(v70);
      *(v0 + 16) = v69;
      *(v0 + 24) = 0u;
      *(v0 + 40) = 0u;
      *(v0 + 49) = 0u;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = *(v65 + 64);
      *(v65 + 64) = 0x8000000000000000;
      sub_1AF8537B0(v0 + 16, v81, isUniquelyReferenced_nonNull_native);
      *(v65 + 64) = v82;
      os_unfair_lock_unlock(v70);
      v72 = swift_task_alloc();
      *(v0 + 584) = v72;
      v73 = sub_1AF5C5358(0, &qword_1ED7268D0);
      *v72 = v0;
      v72[1] = sub_1AF72C7B4;
      v74 = MEMORY[0x1E69E7288];
      v75 = v0 + 184;
      v76 = v69;
LABEL_40:

      return MEMORY[0x1EEE6DA10](v75, v76, &type metadata for ShaderCache.Function, v73, v74);
    }

    swift_unknownObjectRetain();
    sub_1AFDFE218();

    v82 = 0x6E6F6974636E7546;
    v83 = 0xE900000000000020;
    MEMORY[0x1B2718AE0](*v1, v1[1]);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF322F0);
    v8 = [v2 label];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1AFDFCEF8();
      v12 = v11;
    }

    else
    {
      v12 = 0xE700000000000000;
      v10 = 0x746C7561666564;
    }

    MEMORY[0x1B2718AE0](v10, v12);

    v18 = v83;
    sub_1AF74554C();
    swift_allocError();
    *v19 = v82;
    *(v19 + 8) = v18;
    *(v19 + 16) = 0;
    *(v19 + 24) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1AFDFE218();

    v82 = 0xD00000000000001ALL;
    v83 = 0x80000001AFF322D0;
    MEMORY[0x1B2718AE0](*v1, v1[1]);
    sub_1AF74554C();
    swift_allocError();
    *v7 = 0xD00000000000001ALL;
    *(v7 + 8) = 0x80000001AFF322D0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 1;
    swift_willThrow();
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1AF72C590()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1AF72CAF4;
  }

  else
  {
    v2 = sub_1AF72C6A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF72C6A4()
{
  v1 = *(v0 + 66);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v7 = *(v0 + 504);
  v6 = *(v0 + 512);

  sub_1AF7470C4(v0 + 368, sub_1AF744784);
  swift_unknownObjectRelease();
  sub_1AF7457C8(v7, v6, v5, v4, v3, v2, v1);
  v8 = *(v0 + 232);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_1AF72C7B4()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_1AF72CBDC;
  }

  else
  {
    swift_unknownObjectRelease();
    v2 = sub_1AF72C8D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF72C8D0()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v16 = *(v0 + 208);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  swift_unknownObjectRetain();
  sub_1AF8837E8(v3, v4, v6, v5);
  v7 = sub_1AFDFCEC8();

  [v2 setLabel_];

  swift_unknownObjectRelease();
  if (v1)
  {
    v8 = *(v0 + 440);
    v9 = v1;
    sub_1AF71B388(v2, v8);
  }

  v15 = *(v0 + 496);
  v10 = *(v0 + 456);
  v11 = *(v10 + *(v0 + 568) + 24);
  os_unfair_lock_lock(v11);
  *(v0 + 128) = v2;
  *(v0 + 136) = v3;
  *(v0 + 144) = v4;
  *(v0 + 152) = v16;
  *(v0 + 160) = v6;
  *(v0 + 168) = v5;
  *(v0 + 176) = 1;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v10 + 64);
  *(v10 + 64) = 0x8000000000000000;
  sub_1AF8537B0(v0 + 128, v15, isUniquelyReferenced_nonNull_native);
  *(v10 + 64) = v17;
  os_unfair_lock_unlock(v11);

  sub_1AF7470C4(v0 + 368, sub_1AF744784);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v13 = *(v0 + 8);

  return v13(v2);
}

uint64_t sub_1AF72CAF4()
{
  v1 = *(v0 + 66);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v7 = *(v0 + 504);
  v6 = *(v0 + 512);

  sub_1AF7470C4(v0 + 368, sub_1AF744784);
  swift_unknownObjectRelease();
  sub_1AF7457C8(v7, v6, v5, v4, v3, v2, v1);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1AF72CBDC()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(*(v0 + 456) + *(v0 + 568) + 24);
  os_unfair_lock_lock(v3);
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 120) = -1;
  sub_1AF824DEC(v0 + 72, v1);
  os_unfair_lock_unlock(v3);
  swift_willThrow();

  swift_unknownObjectRelease();

  sub_1AF7470C4(v0 + 368, sub_1AF744784);
  swift_unknownObjectRelease();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1AF72CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 584) = v13;
  *(v8 + 576) = a8;
  *(v8 + 568) = a7;
  *(v8 + 560) = a5;
  *(v8 + 552) = a4;
  *(v8 + 544) = a3;
  *(v8 + 536) = a2;
  *(v8 + 528) = a1;
  v9 = *(a2 + 8);
  *(v8 + 592) = *a2;
  *(v8 + 600) = v9;
  *(v8 + 608) = *(a2 + 16);
  *(v8 + 624) = *(a2 + 32);
  sub_1AF745DE0();
  *(v8 + 632) = v10;
  *(v8 + 640) = *(v10 - 8);
  *(v8 + 648) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AF72CDF4, 0, 0);
}

uint64_t sub_1AF72CDF4()
{
  v1 = v0[78];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[68];
  sub_1AF8837E8(v3, v2, v0[77], v1);
  v29 = v5;
  MEMORY[0x1B2718AE0](0x3A6873616820, 0xE600000000000000);
  v0[59] = v4;
  v6 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v6);

  sub_1AF744BC0("asyncMakeFunction", 17, 2u, v3, v29, v4, (v0 + 26));
  v7 = sub_1AF745858(v3, v2, v1);
  v0[82] = v7;
  swift_getObjectType();
  if (sub_1AF8832C4())
  {
    if (!v0[71])
    {
      if (qword_1ED7247D8 != -1)
      {
        swift_once();
      }

      if (byte_1EB633470 == 1)
      {
        v8 = *(v0[69] + 168);
        if (v8 >> 62)
        {
          if (sub_1AFDFE108())
          {
            goto LABEL_8;
          }
        }

        else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_8:
          v9 = v0 + 18;
          v10 = v0[81];
          v11 = v0[80];
          v12 = v0[79];
          v26 = v0[72];
          [v7 setOptions_];
          v0[18] = v0;
          v0[23] = (v0 + 63);
          v0[19] = sub_1AF72D410;
          swift_continuation_init();
          v0[57] = v12;
          v13 = v7;
          v14 = sub_1AF585714(v0 + 54);
          sub_1AF447DFC(0, &unk_1ED723170);
          sub_1AF5C5358(0, &qword_1ED7268D0);
          sub_1AFDFD5C8();
          (*(v11 + 32))(v14, v10, v12);
          v0[50] = MEMORY[0x1E69E9820];
          v0[51] = 1107296256;
          v0[52] = sub_1AF72E210;
          v0[53] = &unk_1F2539230;
          [v26 newFunctionWithDescriptor:v13 completionHandler:?];
          (*(v11 + 8))(v14, v12);
          goto LABEL_12;
        }
      }
    }

    v9 = v0 + 10;
    v19 = v0[81];
    v20 = v0[80];
    v21 = v0[79];
    v25 = v0[72];
    v28 = v0[82];
    v0[10] = v0;
    v0[15] = (v0 + 62);
    v0[11] = sub_1AF72D968;
    swift_continuation_init();
    v0[49] = v21;
    v22 = sub_1AF585714(v0 + 46);
    sub_1AF447DFC(0, &unk_1ED723170);
    sub_1AF5C5358(0, &qword_1ED7268D0);
    sub_1AFDFD5C8();
    (*(v20 + 32))(v22, v19, v21);
    v0[42] = MEMORY[0x1E69E9820];
    v0[43] = 1107296256;
    v0[44] = sub_1AF72E210;
    v0[45] = &unk_1F2539208;
    [v25 newFunctionWithDescriptor:v28 completionHandler:v0 + 42];
    (*(v20 + 8))(v22, v21);
  }

  else
  {
    v9 = v0 + 2;
    v27 = v7;
    v15 = v0[81];
    v16 = v0[80];
    v17 = v0[79];
    v24 = v0[73];
    v0[2] = v0;
    v0[7] = (v0 + 60);
    v0[3] = sub_1AF72DB5C;
    swift_continuation_init();
    v0[41] = v17;
    v18 = sub_1AF585714(v0 + 38);
    sub_1AF447DFC(0, &unk_1ED723170);
    sub_1AF5C5358(0, &qword_1ED7268D0);
    sub_1AFDFD5C8();
    (*(v16 + 32))(v18, v15, v17);
    v0[34] = MEMORY[0x1E69E9820];
    v0[35] = 1107296256;
    v0[36] = sub_1AF72E210;
    v0[37] = &unk_1F25391E0;
    [v24 newFunctionWithDescriptor:v27 completionHandler:v0 + 34];
    (*(v16 + 8))(v18, v17);
  }

LABEL_12:

  return MEMORY[0x1EEE6DEC8](v9);
}

uint64_t sub_1AF72D410()
{
  v1 = *(*v0 + 176);
  *(*v0 + 664) = v1;
  if (v1)
  {
    v2 = sub_1AF72DD50;
  }

  else
  {
    v2 = sub_1AF72D520;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF72D520()
{
  v28 = v0;
  v1 = *(v0 + 504);
  [*(v0 + 656) setOptions_];
  if (v1)
  {
    v2 = qword_1ED730EA0;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 624);
    v4 = *(v0 + 600);
    v5 = *(v0 + 592);
    sub_1AFDFE218();

    *(v0 + 520) = sub_1AF87E644(v3);
    sub_1AF723768();
    v6 = sub_1AFDFD1B8();
    v8 = v7;
    v27[0] = v5;
    v27[1] = v4;

    MEMORY[0x1B2718AE0](v6, v8);

    MEMORY[0x1B2718AE0](v5, v4);

    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32140);
    v9 = sub_1AFDFD9F8();
    if (qword_1ED731058 != -1)
    {
      v24 = v9;
      swift_once();
      v9 = v24;
    }

    v10 = *(v0 + 656);
    v27[0] = 0;
    sub_1AF0D4F18(v9, v27, 0x465B20646E756F46, 0xEA0000000000205DLL);
    swift_unknownObjectRelease();

    v11 = *(v0 + 624);
    v12 = *(v0 + 616);
    v13 = *(v0 + 608);
    v14 = *(v0 + 600);
    v15 = *(v0 + 592);
    v16 = *(v0 + 552);
    v17 = *(v0 + 528);
    *(v0 + 464) = *(*(v0 + 536) + 16);
    *v17 = v1;
    v17[1] = v15;
    v17[2] = v14;
    v17[3] = v13;
    v17[4] = v12;
    v17[5] = v11;

    sub_1AF744720(v0 + 464, v0 + 488);
    swift_unknownObjectRetain();

    sub_1AF73FAD8(v16 + 144);
    sub_1AF744F08(v0 + 208);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 648);
    v21 = *(v0 + 640);
    v22 = *(v0 + 632);
    v25 = *(v0 + 576);
    v26 = *(v0 + 656);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 496;
    *(v0 + 88) = sub_1AF72D968;
    swift_continuation_init();
    *(v0 + 392) = v22;
    v23 = sub_1AF585714((v0 + 368));
    sub_1AF447DFC(0, &unk_1ED723170);
    sub_1AF5C5358(0, &qword_1ED7268D0);
    sub_1AFDFD5C8();
    (*(v21 + 32))(v23, v20, v22);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1AF72E210;
    *(v0 + 360) = &unk_1F2539208;
    [v25 newFunctionWithDescriptor:v26 completionHandler:v0 + 336];
    (*(v21 + 8))(v23, v22);

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }
}

uint64_t sub_1AF72D968()
{
  v1 = *(*v0 + 112);
  *(*v0 + 672) = v1;
  if (v1)
  {
    v2 = sub_1AF72E0D8;
  }

  else
  {
    v2 = sub_1AF72DA78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF72DA78()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  v7 = *(v0 + 552);
  v8 = *(v0 + 528);
  *(v0 + 464) = *(*(v0 + 536) + 16);
  *v8 = v1;
  v8[1] = v6;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v3;
  v8[5] = v2;

  sub_1AF744720(v0 + 464, v0 + 488);
  swift_unknownObjectRetain();

  sub_1AF73FAD8(v7 + 144);
  sub_1AF744F08(v0 + 208);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF72DB5C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 680) = v1;
  if (v1)
  {
    v2 = sub_1AF72E174;
  }

  else
  {
    v2 = sub_1AF72DC6C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AF72DC6C()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  v7 = *(v0 + 552);
  v8 = *(v0 + 528);
  *(v0 + 464) = *(*(v0 + 536) + 16);
  *v8 = v1;
  v8[1] = v6;
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v3;
  v8[5] = v2;

  sub_1AF744720(v0 + 464, v0 + 488);
  swift_unknownObjectRetain();

  sub_1AF73FAD8(v7 + 144);
  sub_1AF744F08(v0 + 208);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1AF72DD50()
{
  v19 = v0;
  swift_willThrow();
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 624);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  sub_1AFDFE218();

  strcpy(v17, "Missing [F] ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  *(v0 + 512) = sub_1AF87E644(v1);
  sub_1AF723768();
  v4 = sub_1AFDFD1B8();
  v6 = v5;
  v18[0] = v3;
  v18[1] = v2;

  MEMORY[0x1B2718AE0](v4, v6);

  MEMORY[0x1B2718AE0](v3, v2);

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32140);
  v7 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v13 = v7;
    swift_once();
    v7 = v13;
  }

  v8 = *(v0 + 664);
  v18[0] = 0;
  sub_1AF0D4F18(v7, v18, v17[0], v17[1]);

  [*(v0 + 656) setOptions_];
  v9 = *(v0 + 648);
  v10 = *(v0 + 640);
  v11 = *(v0 + 632);
  v15 = *(v0 + 576);
  v16 = *(v0 + 656);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 496;
  *(v0 + 88) = sub_1AF72D968;
  swift_continuation_init();
  *(v0 + 392) = v11;
  v12 = sub_1AF585714((v0 + 368));
  sub_1AF447DFC(0, &unk_1ED723170);
  sub_1AF5C5358(0, &qword_1ED7268D0);
  sub_1AFDFD5C8();
  (*(v10 + 32))(v12, v9, v11);
  *(v0 + 336) = MEMORY[0x1E69E9820];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_1AF72E210;
  *(v0 + 360) = &unk_1F2539208;
  [v15 newFunctionWithDescriptor:v16 completionHandler:v0 + 336];
  (*(v10 + 8))(v12, v11);

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1AF72E0D8()
{
  v1 = v0[82];
  swift_willThrow();

  sub_1AF73FAD8(v0[69] + 144);
  sub_1AF744F08((v0 + 26));

  v2 = v0[1];

  return v2();
}

uint64_t sub_1AF72E174()
{
  v1 = v0[82];
  swift_willThrow();

  sub_1AF73FAD8(v0[69] + 144);
  sub_1AF744F08((v0 + 26));

  v2 = v0[1];

  return v2();
}

void sub_1AF72E210(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1AF441150((a1 + 32), *(a1 + 56));
  sub_1AF745DE0();
  if (a3)
  {
    v4 = a3;
    sub_1AFDFD5D8();
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1AFDFD5E8();
  }
}

uint64_t sub_1AF72E2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 208) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  sub_1AF746B0C();
  *(v8 + 152) = v9;
  *(v8 + 160) = *(v9 - 8);
  *(v8 + 168) = swift_task_alloc();
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AF72E3D0, 0, 0);
}

uint64_t sub_1AF72E3D0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v31 = *(v0 + 144);
    v30 = *(v0 + 208);
    v29 = **(v0 + 104);
    v3 = sub_1AFDFD668();
    v4 = *(v3 - 8);
    v28 = *(v4 + 56);
    v27 = (v4 + 48);
    v26 = (v4 + 8);
    v5 = (v1 + 40);
    v6 = &qword_1ED726C10;
    do
    {
      v35 = v2;
      v10 = *(v0 + 176);
      v9 = *(v0 + 184);
      v32 = *(v0 + 136);
      v33 = *(v0 + 144);
      v11 = v6;
      v13 = *(v0 + 120);
      v12 = *(v0 + 128);
      v14 = *(v5 - 1);
      v15 = *v5;
      v34 = v5;
      v28(v9, 1, 1, v3);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = v13;
      *(v16 + 40) = v14;
      *(v16 + 48) = v15;
      *(v16 + 56) = v12;
      v6 = v11;
      *(v16 + 64) = v32;
      *(v16 + 72) = v30;
      *(v16 + 80) = v33;
      sub_1AF0D4320(v9, v10, v11, MEMORY[0x1E69E85F0]);
      LODWORD(v9) = (*v27)(v10, 1, v3);

      swift_unknownObjectRetain();

      v17 = v31;
      v18 = *(v0 + 176);
      if (v9 == 1)
      {
        sub_1AF0D438C(*(v0 + 176), v11, MEMORY[0x1E69E85F0]);
      }

      else
      {
        sub_1AFDFD658();
        (*v26)(v18, v3);
      }

      if (*(v16 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v19 = sub_1AFDFD5B8();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      sub_1AF7469C4();

      if (v21 | v19)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v21;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 184);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v29;
      swift_task_create();

      sub_1AF0D438C(v8, v11, MEMORY[0x1E69E85F0]);
      v5 = v34 + 2;
      v2 = v35 - 1;
    }

    while (v35 != 1);
  }

  v22 = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = MEMORY[0x1E69E7CC0];
  sub_1AF7469C4();
  sub_1AF5C5358(0, &qword_1ED7268D0);
  sub_1AFDFD6B8();
  *(v0 + 192) = v22;
  v23 = swift_task_alloc();
  *(v0 + 200) = v23;
  *v23 = v0;
  v23[1] = sub_1AF72E7CC;
  v24 = *(v0 + 152);

  return MEMORY[0x1EEE6DAD8](v0 + 80, 0, 0, v24, v0 + 88);
}

uint64_t sub_1AF72E7CC()
{

  if (v0)
  {

    v1 = sub_1AF72EA88;
  }

  else
  {
    v1 = sub_1AF72E8E4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1AF72E8E4()
{
  if (v0[10])
  {
    v1 = swift_unknownObjectRetain();
    MEMORY[0x1B2718E00](v1);
    if (*((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
    swift_unknownObjectRelease();
    v0[24] = v0[9];
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v2[1] = sub_1AF72E7CC;
    v3 = v0[19];

    return MEMORY[0x1EEE6DAD8](v0 + 10, 0, 0, v3, v0 + 11);
  }

  else
  {
    v4 = v0[24];
    v5 = v0[12];
    (*(v0[20] + 8))(v0[21], v0[19]);
    *v5 = v4;

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1AF72EA88()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AF72EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 216) = a8;
  *(v8 + 224) = v11;
  *(v8 + 256) = v10;
  *(v8 + 200) = a6;
  *(v8 + 208) = a7;
  *(v8 + 184) = a4;
  *(v8 + 192) = a5;
  *(v8 + 176) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AF72EB60, 0, 0);
}

uint64_t sub_1AF72EB60()
{
  *(v0 + 16) = *(v0 + 192);
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);
  *(v0 + 24) = *(v0 + 200);
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v4 = *(*(v3 + 32) + OBJC_IVAR____TtC3VFX13ShaderLibrary_library);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1AF882DB8(v4, 0, (v0 + 56));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v5 = swift_task_alloc();
  *(v0 + 232) = v5;
  *v5 = v0;
  v5[1] = sub_1AF72ED0C;
  v6 = *(v0 + 224);
  v7 = *(v0 + 256);

  return sub_1AF72BA88(v0 + 56, v7, v6);
}

uint64_t sub_1AF72ED0C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_1AF72EF28;
  }

  else
  {
    *(v4 + 248) = a1;
    v5 = sub_1AF72EE34;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AF72EE34()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 176);
  *(v0 + 112) = *(v0 + 56);
  sub_1AF585778(v0 + 112);
  *(v0 + 152) = *(v0 + 72);
  sub_1AF7470C4(v0 + 152, sub_1AF744784);
  *(v0 + 160) = *(v0 + 80);
  sub_1AF7470C4(v0 + 160, sub_1AF745FA4);
  *(v0 + 168) = *(v0 + 88);
  sub_1AF0D2D44(v0 + 168, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1AF72EF28()
{
  *(v0 + 96) = *(v0 + 56);
  sub_1AF585778(v0 + 96);
  *(v0 + 128) = *(v0 + 72);
  sub_1AF7470C4(v0 + 128, sub_1AF744784);
  *(v0 + 136) = *(v0 + 80);
  sub_1AF7470C4(v0 + 136, sub_1AF745FA4);
  *(v0 + 144) = *(v0 + 88);
  sub_1AF0D2D44(v0 + 144, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AF72F010(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == sub_1AFDFC0D8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1AFDFEE28();
  }

  return v5 & 1;
}

id sub_1AF72F088(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  [v9 setInputPrimitiveTopology_];
  if (a2)
  {
    v10 = [swift_unknownObjectRetain() functionConstantsDictionary];
    sub_1AF0D4478(0, &qword_1ED726B70);
    v11 = sub_1AFDFCC08();

    v12 = *(v11 + 16);

    if (v12 && *(a1 + 1))
    {
      *&v83 = sub_1AF87E644(*(a1 + 4));
      sub_1AF723768();
      sub_1AFDFD1B8();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (a3)
  {
    v13 = [swift_unknownObjectRetain() functionConstantsDictionary];
    sub_1AF0D4478(0, &qword_1ED726B70);
    v14 = sub_1AFDFCC08();

    v15 = *(v14 + 16);

    if (v15 && *(a1 + 1))
    {
      *&v83 = sub_1AF87E644(*(a1 + 4));
      sub_1AF723768();
      sub_1AFDFD1B8();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v71 = (a1 + 264);
  [v9 setVertexFunction_];
  [v9 setFragmentFunction_];
  v16 = [v9 fragmentLinkedFunctions];
  v80 = v9;
  v70 = v4;
  if (a4)
  {
    sub_1AF447DFC(0, &unk_1ED723170);
    v17 = sub_1AFDFD3F8();
  }

  else
  {
    v17 = 0;
  }

  [v16 setPrivateFunctions_];

  v18 = *(a1 + 22);
  v19 = *(a1 + 23);
  v20 = *(a1 + 24);
  v21 = *(a1 + 25);
  v68 = *(a1 + 26);
  v69 = a1;
  v72 = *(a1 + 27);
  v74 = *(a1 + 28);
  v76 = *(a1 + 29);
  v78 = *(a1 + 30);
  v81 = *(a1 + 31);
  [v9 setRasterSampleCount_];
  v22 = [v9 colorAttachments];
  v23 = [v22 objectAtIndexedSubscript_];

  [v23 setPixelFormat_];
  v24 = [v9 colorAttachments];
  v25 = [v24 objectAtIndexedSubscript_];

  [v25 setPixelFormat_];
  v26 = [v9 colorAttachments];
  v27 = [v26 objectAtIndexedSubscript_];

  [v27 setPixelFormat_];
  v28 = [v9 colorAttachments];
  v29 = [v28 objectAtIndexedSubscript_];

  [v29 setPixelFormat_];
  v30 = [v9 colorAttachments];
  v31 = [v30 objectAtIndexedSubscript_];

  [v31 setPixelFormat_];
  v32 = [v9 colorAttachments];
  v33 = [v32 objectAtIndexedSubscript_];

  [v33 setPixelFormat_];
  v34 = [v9 colorAttachments];
  v35 = [v34 objectAtIndexedSubscript_];

  [v35 setPixelFormat_];
  v36 = [v9 colorAttachments];
  v37 = [v36 objectAtIndexedSubscript_];

  [v37 setPixelFormat_];
  [v9 setDepthAttachmentPixelFormat_];
  [v9 setStencilAttachmentPixelFormat_];
  v38 = 0;
  v77 = *(a1 + 280);
  v79 = *v71;
  v39 = &v83 + 3;
  v73 = *(a1 + 312);
  v75 = *(a1 + 296);
  do
  {
    v83 = v79;
    v84 = v77;
    v85 = v75;
    v86 = v73;
    v82 = *(v39 - 2);
    v40 = *(v39 - 1);
    v41 = *v39;
    v42 = v39[1];
    v43 = v39[2];
    v44 = v39[3];
    v45 = v39[4];
    v46 = [v80 colorAttachments];
    v47 = [v46 objectAtIndexedSubscript_];

    if (v40 != 1 || v41 || v43 != 1 || v44 || v42 | v45)
    {
      [v47 setBlendingEnabled_];
      [v47 setSourceRGBBlendFactor_];
      [v47 setDestinationRGBBlendFactor_];
      [v47 setSourceAlphaBlendFactor_];
      [v47 setDestinationAlphaBlendFactor_];
      [v47 setRgbBlendOperation_];
      [v47 setAlphaBlendOperation_];
    }

    else
    {
      [v47 setBlendingEnabled_];
    }

    v39 += 8;
    ++v38;
    [v47 setWriteMask_];
  }

  while (v38 != 8);
  [v80 setRasterizationEnabled_];
  v48 = *(v69 + 401);
  if (v48 >= 2 && [*(v70 + 16) supportsVertexAmplificationCount_])
  {
    [v80 setMaxVertexAmplificationCount_];
  }

  v49 = *(v69 + 42);
  if (v49)
  {
    v50 = *(v69 + 41);
    v51 = objc_allocWithZone(MEMORY[0x1E69741E0]);

    v52 = [v51 init];
    sub_1AF8C0378(v52, v50, v49);
  }

  else
  {
    v52 = 0;
  }

  [v80 setVertexDescriptor_];

  v53 = *(v69 + 368);
  if (v53 != 2)
  {
    v54 = *(v69 + 48);
    v55 = *(v69 + 49);
    v56 = *(v69 + 47);
    v58 = *(v69 + 44);
    v57 = *(v69 + 45);
    [v80 setTessellationFactorFormat_];
    [v80 setTessellationPartitionMode_];
    [v80 setMaxTessellationFactor_];
    [v80 setTessellationFactorScaleEnabled_];
    [v80 setTessellationControlPointIndexType_];
    [v80 setTessellationFactorStepFunction_];
    [v80 setTessellationOutputWindingOrder_];
  }

  v59 = v69[9];
  v91 = v69[8];
  v92 = v59;
  v93 = v69[10];
  v60 = v69[5];
  v87 = v69[4];
  v88 = v60;
  v61 = v69[7];
  v89 = v69[6];
  v90 = v61;
  v62 = v69[1];
  v83 = *v69;
  v84 = v62;
  v63 = v69[3];
  v85 = v69[2];
  v86 = v63;
  sub_1AF896E9C();
  v64 = sub_1AFDFCEC8();

  [v80 setLabel_];

  v65 = *(v70 + 168);
  if (v65 >> 62)
  {
    if (!sub_1AFDFE108())
    {
      return v80;
    }

    goto LABEL_33;
  }

  if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    sub_1AF447DFC(0, &qword_1EB63BD20);

    v66 = sub_1AFDFD3F8();

    [v80 setBinaryArchives_];
  }

  return v80;
}

id sub_1AF72F9BC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v56 = (a1 + 264);
  v10 = [objc_allocWithZone(MEMORY[0x1E6974108]) init];
  [v10 setFragmentFunction_];
  [v10 setObjectFunction_];
  [v10 setMeshFunction_];
  v11 = [v10 fragmentLinkedFunctions];
  if (a5)
  {
    sub_1AF447DFC(0, &unk_1ED723170);
    a5 = sub_1AFDFD3F8();
  }

  [v11 setPrivateFunctions_];

  v12 = *(a1 + 22);
  v13 = *(a1 + 23);
  v14 = *(a1 + 24);
  v15 = *(a1 + 25);
  v16 = *(a1 + 26);
  v57 = *(a1 + 27);
  v59 = *(a1 + 28);
  v61 = *(a1 + 29);
  v63 = *(a1 + 30);
  v66 = *(a1 + 31);
  v54 = a1;
  [v10 setRasterSampleCount_];
  v17 = [v10 colorAttachments];
  v65 = v10;
  v18 = [v17 objectAtIndexedSubscript_];

  [v18 setPixelFormat_];
  v19 = [v10 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript_];

  [v20 setPixelFormat_];
  v21 = [v10 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript_];

  [v22 setPixelFormat_];
  v23 = [v10 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript_];

  [v24 setPixelFormat_];
  v25 = [v10 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript_];

  [v26 setPixelFormat_];
  v27 = [v10 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript_];

  [v28 setPixelFormat_];
  v29 = [v10 colorAttachments];
  v30 = [v29 objectAtIndexedSubscript_];

  [v30 setPixelFormat_];
  v31 = [v10 colorAttachments];
  v32 = [v31 objectAtIndexedSubscript_];

  [v32 setPixelFormat_];
  [v10 setDepthAttachmentPixelFormat_];
  [v10 setStencilAttachmentPixelFormat_];
  v33 = v10;
  v34 = 0;
  v62 = v56[1];
  v64 = *v56;
  v35 = &v68 + 3;
  v58 = v56[3];
  v60 = v56[2];
  do
  {
    v68 = v64;
    v69 = v62;
    v70 = v60;
    v71 = v58;
    v67 = *(v35 - 2);
    v36 = *(v35 - 1);
    v37 = *v35;
    v38 = v35[1];
    v39 = v35[2];
    v40 = v35[3];
    v41 = v35[4];
    v42 = [v33 colorAttachments];
    v43 = [v42 objectAtIndexedSubscript_];

    if (v36 != 1 || v37 || v39 != 1 || v40 || v38 | v41)
    {
      [v43 setBlendingEnabled_];
      [v43 setSourceRGBBlendFactor_];
      [v43 setDestinationRGBBlendFactor_];
      [v43 setSourceAlphaBlendFactor_];
      [v43 setDestinationAlphaBlendFactor_];
      [v43 setRgbBlendOperation_];
      [v43 setAlphaBlendOperation_];
    }

    else
    {
      [v43 setBlendingEnabled_];
    }

    v35 += 8;
    ++v34;
    [v43 setWriteMask_];

    v33 = v65;
  }

  while (v34 != 8);
  [v65 setRasterizationEnabled_];
  v44 = *(v54 + 401);
  if (v44 >= 2 && [*(v55 + 16) supportsVertexAmplificationCount_])
  {
    [v65 setMaxVertexAmplificationCount_];
  }

  v45 = v54[9];
  v76 = v54[8];
  v77 = v45;
  v78 = v54[10];
  v46 = v54[5];
  v72 = v54[4];
  v73 = v46;
  v47 = v54[7];
  v74 = v54[6];
  v75 = v47;
  v48 = v54[1];
  v68 = *v54;
  v69 = v48;
  v49 = v54[3];
  v70 = v54[2];
  v71 = v49;
  sub_1AF896E9C();
  v50 = sub_1AFDFCEC8();

  [v65 setLabel_];

  v51 = *(v55 + 168);
  if (v51 >> 62)
  {
    if (!sub_1AFDFE108())
    {
      return v65;
    }

    goto LABEL_17;
  }

  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    sub_1AF447DFC(0, &qword_1EB63BD20);

    v52 = sub_1AFDFD3F8();

    [v65 setBinaryArchives_];
  }

  return v65;
}

uint64_t sub_1AF730058(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v2;
  v6 = v5;
  v8 = v7;
  v213 = v9;
  v10 = v3;
  v243[1] = *MEMORY[0x1E69E9840];
  sub_1AF0D0D84(0, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v15 = &v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v187 - v17;
  v19 = v10[1];
  if (!v19 && !v10[16])
  {
    sub_1AF74554C();
    result = swift_allocError();
    *v31 = 0xD000000000000048;
    *(v31 + 8) = 0x80000001AFF323B0;
    *(v31 + 16) = 0;
    *(v31 + 24) = 1;
    return result;
  }

  v210 = v10[4];
  v211 = v6;
  v20 = swift_unknownObjectRetain();
  sub_1AF89987C(v20, 0, v229);
  v209 = v8;
  v212 = 0;
  memcpy(v228, v229, sizeof(v228));
  swift_unknownObjectRelease();
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*(&v229[25] + 1));
  v21 = sub_1AFDFF2F8();
  v22 = v213;
  v23 = v21 ^ v213 & 1;
  v24 = v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock;
  os_unfair_lock_lock(*(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_lock + 24));
  if (*(v4 + 104))
  {
    sub_1AF745E70(v242);
    if ((v22 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    v25 = v242;
    goto LABEL_13;
  }

  v26 = *(v4 + 48);
  if (*(v26 + 16))
  {
    v27 = sub_1AF449CB8(v23);
    if (v28)
    {
      v29 = (*(v26 + 56) + 440 * v27);
      memcpy(v224, v29, 0x1B1uLL);
      memmove(v242, v29, 0x1B1uLL);
      nullsub_106();
      sub_1AF7450E4(v224, v223, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
      goto LABEL_12;
    }
  }

  sub_1AF745E70(v242);
  if (v213)
  {
    goto LABEL_12;
  }

  memcpy(v225, v242, 0x1B1uLL);
  v53 = *(v4 + 48);
  if (!*(v53 + 16))
  {
    sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
    sub_1AF745E70(v226);
    goto LABEL_6;
  }

  v54 = sub_1AF449CB8(v21 ^ 1);
  if (v55)
  {
    memcpy(v224, (*(v53 + 56) + 440 * v54), 0x1B1uLL);
    sub_1AF7450E4(v224, v242, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
    sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
    memcpy(v242, v224, 0x1B1uLL);
    nullsub_106();
  }

  else
  {
    sub_1AF745EB8(v225, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
    sub_1AF745E70(v242);
  }

LABEL_5:
  memcpy(v226, v242, 0x1B1uLL);
LABEL_6:
  v25 = v226;
LABEL_13:
  memcpy(v227, v25, 0x1B1uLL);
  v32 = *(v4 + 72);
  if (*(v32 + 16) && (v33 = sub_1AF449CB8(v23), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + v33) ^ 1;
  }

  else
  {
    v35 = 1;
  }

  os_unfair_lock_unlock(*(v24 + 24));
  if ((*(v4 + 104) & 1) == 0 && (v35 & 1) == 0)
  {
    sub_1AF745EB8(v227, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
    sub_1AF602304(v229);
    return 1;
  }

  memcpy(v224, v227, 0x1B1uLL);
  if (sub_1AF745F14(v224) != 1)
  {
    memcpy(v242, v224, 0x1B1uLL);
    v48 = sub_1AF745F90(v242);
    if (v48)
    {
      if (v48 == 1)
      {
        nullsub_106();
        v50 = v49;
        sub_1AF602304(v229);
        v51 = *v50;
        v52 = v50[53];
        swift_unknownObjectRetain();
        sub_1AF745EB8(v227, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
        return v51;
      }

      else
      {
        nullsub_106();
        v69 = *v68;
        sub_1AF602304(v229);
        return v69;
      }
    }

    nullsub_106();
    if (v209)
    {
      sub_1AF602304(v229);
      sub_1AF745EB8(v227, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
      return 0;
    }

    memcpy(v223, v227, 0x1B1uLL);
    sub_1AF7450E4(v223, v221, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
    CACurrentMediaTime();
    sub_1AFDFDAA8();
    v82 = *(v24 + 24);
    os_unfair_lock_lock(v82);
    v83 = *(v4 + 48);
    if (*(v83 + 16) && (v84 = sub_1AF449CB8(v23), (v85 & 1) != 0))
    {
      v86 = (*(v83 + 56) + 440 * v84);
      memcpy(v220, v86, 0x1B1uLL);
      memmove(v221, v86, 0x1B1uLL);
      nullsub_106();
      sub_1AF7450E4(v220, v219, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline, type metadata accessor for ShaderCache.Status);
      memcpy(v222, v221, sizeof(v222));
    }

    else
    {
      sub_1AF745E70(v222);
    }

    os_unfair_lock_unlock(v82);
    memcpy(v221, v222, 0x1B1uLL);
    if (sub_1AF745F14(v221) == 1)
    {
      sub_1AF74554C();
      v89 = swift_allocError();
      *v90 = 0xD00000000000001CLL;
      *(v90 + 8) = 0x80000001AFF324C0;
      *(v90 + 16) = 0;
      *(v90 + 24) = 1;
      sub_1AF745EB8(v227, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
      sub_1AF602304(v229);
    }

    else
    {
      memcpy(v220, v221, 0x1B1uLL);
      v91 = sub_1AF745F90(v220);
      if (v91)
      {
        if (v91 == 1)
        {
          nullsub_106();
          v93 = v92;
          sub_1AF745EB8(v227, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
          sub_1AF602304(v229);
          sub_1AF745EB8(v227, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
          v94 = *v93;
          v95 = v93[53];
          swift_unknownObjectRetain();
          sub_1AF745EB8(v222, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
          return v94;
        }

        else
        {
          nullsub_106();
          v148 = *v147;
          sub_1AF745EB8(v227, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
          sub_1AF602304(v229);
          sub_1AF745EB8(v227, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
          return v148;
        }
      }

      nullsub_106();
      sub_1AF74554C();
      v89 = swift_allocError();
      *v146 = 0xD00000000000002ALL;
      *(v146 + 8) = 0x80000001AFF324E0;
      *(v146 + 16) = 0;
      *(v146 + 24) = 1;
      sub_1AF745EB8(v227, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
      sub_1AF602304(v229);
      sub_1AF745EB8(v222, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
    }

    sub_1AF745EB8(v227, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
    return v89;
  }

  if ((v209 & 1) == 0 || v211)
  {
    v36 = *&v229[8];
  }

  else
  {
    if (qword_1ED730F98 != -1)
    {
      swift_once();
    }

    v36 = *&v229[8];
    if ((byte_1ED72FA72 & 1) == 0 && !*&v229[8])
    {
      v37 = dispatch_group_create();
      dispatch_group_enter(v37);
      v38 = v23;
      v39 = *(v24 + 24);
      os_unfair_lock_lock(v39);
      v223[0] = v37;
      sub_1AF74600C(v223);
      memcpy(v242, v223, 0x1B1uLL);
      v40 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v222 = *(v4 + 48);
      *(v4 + 48) = 0x8000000000000000;
      sub_1AF854898(v242, v38, isUniquelyReferenced_nonNull_native);
      *(v4 + 48) = *v222;
      os_unfair_lock_unlock(v39);
      sub_1AFDFD648();
      v42 = sub_1AFDFD668();
      (*(*(v42 - 8) + 56))(v18, 0, 1, v42);
      v43 = swift_allocObject();
      *(v43 + 16) = v40;
      *(v43 + 24) = v4;
      memcpy((v43 + 32), v229, 0x1A0uLL);
      *(v43 + 448) = 1;
      *(v43 + 456) = 0;
      memcpy((v43 + 464), v10, 0x1A0uLL);
      *(v43 + 880) = v213 & 1;
      *(v43 + 888) = v38;
      v44 = v40;

      sub_1AF745F28(v229, v222);
      sub_1AF745F28(v10, v222);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v45 = qword_1ED73B8A0;
      v46 = MEMORY[0x1E69E85F0];
      sub_1AF0D4320(v18, v15, &qword_1ED726C10, MEMORY[0x1E69E85F0]);
      v47 = swift_allocObject();
      v47[2] = 0;
      v47[3] = 0;
      v47[4] = v45;
      v47[5] = &unk_1AFE74D08;
      v47[6] = v43;
      swift_retain_n();

      sub_1AF727C00(0, 0, v15, &unk_1AFE74D10, v47);

      sub_1AF602304(v229);

      sub_1AF0D438C(v18, &qword_1ED726C10, v46);
      return 0;
    }
  }

  v204 = v24;
  v189 = *&v229[0];
  v56 = *(&v229[1] + 1);
  v190 = *&v229[1];
  v57 = *&v229[5];
  v197 = *(&v229[0] + 1);
  v198 = *(&v229[5] + 1);
  v59 = *(&v229[6] + 1);
  v58 = *&v229[6];
  v60 = *&v229[7];
  v191 = *&v229[2];
  v192 = *(&v229[7] + 1);
  v61 = *(&v229[8] + 1);
  v63 = *(&v229[9] + 1);
  v62 = *&v229[9];
  v207 = *(&v229[10] + 1);
  v64 = *&v229[10];
  v208 = v4;
  v205 = v23;
  v199 = *(&v229[1] + 1);
  v200 = *(&v229[9] + 1);
  v201 = *&v229[9];
  v202 = *(&v229[8] + 1);
  if (*&v229[3])
  {
    v193 = *&v229[5];
    v194 = *&v229[7];
    v195 = *(&v229[6] + 1);
    v196 = *&v229[6];
    v65 = v36;
    v220[0] = *(&v229[2] + 1);
    *&v220[1] = v229[3];
    *&v220[3] = v229[4];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v66 = v212;
    v67 = sub_1AF72A584(v220, 0, v211);
    v212 = v66;
    if (v66)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v4 = v208;
LABEL_83:
      v99 = v204;
LABEL_84:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v242[0] = 0;
      v242[1] = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF32460);
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v100 = v242[0];
      v101 = v242[1];
      v102 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v174 = v102;
        swift_once();
        v102 = v174;
      }

      v242[0] = 0;
      sub_1AF0D4F18(v102, v242, v100, v101);

      v103 = *(v99 + 24);
      os_unfair_lock_lock(v103);
      v104 = v212;
      v223[0] = v212;
      sub_1AF745F84(v223);
      memcpy(v242, v223, 0x1B1uLL);
      v105 = v104;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v214 = *(v4 + 48);
      *(v4 + 48) = 0x8000000000000000;
      v107 = v205;
      sub_1AF854898(v242, v205, v106);
      *(v4 + 48) = v214;
      v108 = swift_isUniquelyReferenced_nonNull_native();
      v214 = *(v4 + 72);
      *(v4 + 72) = 0x8000000000000000;
      sub_1AF85390C(0, v107, v108);
      *(v4 + 72) = v214;

      os_unfair_lock_unlock(v103);
      sub_1AF745EB8(v227, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);
      sub_1AF602304(v229);
      return v104;
    }

    v70 = v67;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v4 = v208;
    v23 = v205;
    v36 = v65;
    v62 = v201;
    v61 = v202;
    v56 = v199;
    v63 = v200;
    v59 = v195;
    v58 = v196;
    v57 = v193;
    v60 = v194;
  }

  else
  {
    v70 = 0;
  }

  v203 = v70;
  if (v64)
  {
    v71 = *(v64 + 16);
    v72 = MEMORY[0x1E69E7CC0];
    if (v71)
    {
      v193 = v57;
      v194 = v60;
      v195 = v59;
      v196 = v58;
      v188 = v36;
      v242[0] = MEMORY[0x1E69E7CC0];
      sub_1AFDFE368();
      v73 = (v64 + 40);
      v206 = v19;
      v4 = v208;
      while (1)
      {
        v74 = *(v73 - 1);
        v75 = *v73;
        if (v19)
        {
          v76 = v210;
        }

        else
        {
          v76 = MEMORY[0x1E69E7CC0];
        }

        v219[0] = v74;
        v219[1] = v75;
        v219[2] = 0;
        v219[3] = v207;
        v219[4] = v76;
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain();
        v77 = swift_unknownObjectRetain();
        v78 = v212;
        sub_1AF882DB8(v77, 0, &v230);
        v212 = v78;
        if (v78)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_bridgeObjectRelease_n();
          swift_unknownObjectRelease();
          goto LABEL_79;
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        v79 = v212;
        sub_1AF72A584(&v230, 0, v211);
        v212 = v79;
        if (v79)
        {
          break;
        }

        v216 = v230;
        sub_1AF585778(&v216);
        v235 = v231;
        sub_1AF7470C4(&v235, sub_1AF744784);
        v234 = v232;
        sub_1AF7470C4(&v234, sub_1AF745FA4);
        v215 = v233;
        sub_1AF0D2D44(&v215, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);

        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
        v73 += 2;
        --v71;
        v19 = v206;
        if (!v71)
        {
          v72 = v242[0];
          v23 = v205;
          v61 = v202;
          v70 = v203;
          v56 = v199;
          v63 = v200;
          v36 = v188;
          v62 = v201;
          v59 = v195;
          v58 = v196;
          v57 = v193;
          v60 = v194;
          goto LABEL_60;
        }
      }

      swift_unknownObjectRelease();
      *v222 = v230;
      sub_1AF585778(v222);
      v221[0] = v231;
      sub_1AF7470C4(v221, sub_1AF744784);
      v237 = v232;
      sub_1AF7470C4(&v237, sub_1AF745FA4);
      v236[0] = v233;
      sub_1AF0D2D44(v236, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
LABEL_79:

      goto LABEL_83;
    }
  }

  else
  {
    v72 = 0;
  }

LABEL_60:
  if (v36)
  {
    v210 = v72;
    if (v198)
    {
      v188 = v36;
      v237 = v57;
      v238 = v198;
      v239 = v58;
      v240 = v59;
      v241 = v60;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v80 = v212;
      v81 = sub_1AF72A584(&v237, 0, v211);
      v212 = v80;
      if (v80)
      {
        goto LABEL_69;
      }

      v96 = v81;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v36 = v188;
      v62 = v201;
      v61 = v202;
      v63 = v200;
    }

    else
    {
      v96 = 0;
    }

    v236[0] = v192;
    v236[1] = v36;
    v236[2] = v61;
    v236[3] = v62;
    v236[4] = v63;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v97 = v212;
    v98 = sub_1AF72A584(v236, 0, v211);
    v212 = v97;
    if (v97)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      goto LABEL_83;
    }

    v109 = v98;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v110 = sub_1AF72F9BC(v229, v96, v109, v203, v210);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v111 = 0;
  }

  else
  {
    if (v197)
    {
      v210 = v72;
      v237 = v189;
      v238 = v197;
      v239 = v190;
      v240 = v56;
      v241 = v191;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v87 = v212;
      v88 = sub_1AF72A584(&v237, 0, v211);
      v212 = v87;
      if (v87)
      {
LABEL_69:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        goto LABEL_83;
      }

      v112 = v88;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v70 = v203;
      v72 = v210;
    }

    else
    {
      v112 = 0;
    }

    v111 = sub_1AF72F088(v229, v112, v70, v72);
    swift_unknownObjectRelease();

    v110 = 0;
  }

  v113 = sub_1AF899C78();
  v115 = v114;
  if (v213)
  {
    v116 = "makeRenderPipelineRefl";
  }

  else
  {
    v116 = "makeRenderPipeline";
  }

  if (v213)
  {
    v117 = 22;
  }

  else
  {
    v117 = 18;
  }

  if (v213)
  {
    v118 = 3;
  }

  else
  {
    v118 = 0;
  }

  sub_1AF744BC0(v116, v117, 2u, v113, v115, v23, v221);
  v99 = v204;
  v119 = *(v204 + 24);
  os_unfair_lock_lock(v119);
  v120 = *(v4 + OBJC_IVAR____TtC3VFX11ShaderCache_onShaderCompilation);
  if (v120)
  {
    if (v120 == 1)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v242[0] = 0;
      v242[1] = 0xE000000000000000;
      sub_1AFDFE218();
      v223[0] = v242[0];
      v223[1] = v242[1];
      MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32160);
      memcpy(v242, v229, 0x1A0uLL);
      sub_1AFDFE458();
      v121 = v223[0];
      v122 = v223[1];
      v123 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v175 = v123;
        swift_once();
        v123 = v175;
      }

      v242[0] = 0;
      sub_1AF0D4F18(v123, v242, v121, v122);
    }

    else
    {
      v223[3] = &type metadata for RenderPipelineDescriptor;
      v223[0] = swift_allocObject();
      memcpy(v223[0] + 16, v229, 0x1A0uLL);
      sub_1AF745F28(v229, v242);
      sub_1AF744EE0(v120);
      v120(v223);
      sub_1AF744EF4(v120);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v223);
    }
  }

  os_unfair_lock_unlock(v119);
  if (!v110)
  {
    if (!v111)
    {
      v149 = v190;
      *v222 = v189;
      *&v222[8] = v197;
      *&v222[16] = v190;
      v150 = v199;
      *&v222[24] = v199;
      v151 = v191;
      *&v222[32] = v191;
      if (v197)
      {
        v217[0] = v189;
        v217[1] = v197;
        sub_1AF7450E4(v222, v242, &qword_1ED7225F0, &type metadata for FunctionDescriptor, MEMORY[0x1E69E6720]);
        swift_unknownObjectRetain();
        sub_1AF585778(v217);
        v243[0] = v149;
        sub_1AF7470C4(v243, sub_1AF744784);
        swift_unknownObjectRelease();
        v218 = v151;
        sub_1AF0D2D44(&v218, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
      }

      else
      {
        v150 = 0;
      }

      sub_1AF74554C();
      v164 = swift_allocError();
      *v165 = 0xD000000000000015;
      *(v165 + 8) = 0x80000001AFF32440;
      *(v165 + 16) = v150;
      *(v165 + 24) = 0;
      v212 = v164;
      swift_willThrow();
      v166 = *(v99 + 24);
      os_unfair_lock_lock(v166);
      sub_1AF73FAD8(v4 + 112);
      os_unfair_lock_unlock(v166);
      goto LABEL_160;
    }

    v210 = 0;
    if (v211)
    {
      v129 = v111;
LABEL_153:
      v168 = 0;
      goto LABEL_154;
    }

    v152 = qword_1ED7247D8;
    v153 = v111;
    if (v152 != -1)
    {
      v176 = v153;
      swift_once();
      v153 = v176;
    }

    if (byte_1EB633470 != 1)
    {
      goto LABEL_153;
    }

    v154 = *(v4 + 168);
    if (v154 >> 62)
    {
      v177 = v153;
      v178 = sub_1AFDFE108();
      v153 = v177;
      if (!v178)
      {
        goto LABEL_153;
      }
    }

    else if (!*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_153;
    }

    v155 = *(v4 + 16);
    v242[0] = 0;
    v223[0] = 0;
    v156 = [v155 newRenderPipelineStateWithDescriptor:v153 options:v118 | 4 reflection:v242 error:v223];
    v157 = v242[0];
    if (v156)
    {
      v130 = v156;
      v158 = qword_1ED730EA0;
      v159 = v223[0];
      v213 = v157;
      swift_unknownObjectRetain();
      if (v158 != -1)
      {
        swift_once();
      }

      v242[0] = 0;
      v242[1] = 0xE000000000000000;
      sub_1AFDFE218();

      v242[0] = 0x6E756F46205D525BLL;
      v242[1] = 0xEA00000000002064;
      v160 = sub_1AF899C78();
      MEMORY[0x1B2718AE0](v160);

      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32140);
      v161 = v242[0];
      v162 = v242[1];
      v163 = sub_1AFDFD9F8();
      v99 = v204;
      if (qword_1ED731058 != -1)
      {
        v185 = v163;
        swift_once();
        v163 = v185;
      }

      v242[0] = 0;
      sub_1AF0D4F18(v163, v242, v161, v162);

      goto LABEL_155;
    }

    v167 = v223[0];
    v168 = v157;
    v169 = sub_1AFDFBF58();

    swift_willThrow();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v242[0] = 542986843;
    v242[1] = 0xE400000000000000;
    swift_getErrorValue();
    v170 = sub_1AFDFF1D8();
    MEMORY[0x1B2718AE0](v170);

    v171 = v242[0];
    v172 = v242[1];
    v173 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v186 = v173;
      swift_once();
      v173 = v186;
    }

    v242[0] = 0;
    sub_1AF0D4F18(v173, v242, v171, v172);

    v212 = 0;
    v4 = v208;
    v99 = v204;
LABEL_154:
    v179 = *(v4 + 16);
    v242[0] = v168;
    v223[0] = 0;
    v130 = [v179 newRenderPipelineStateWithDescriptor:v111 options:v118 reflection:v242 error:v223];
    v180 = v223[0];
    v213 = v242[0];
    v181 = v180;

    if (!v130)
    {
      v183 = sub_1AFDFBF58();

      v212 = v183;
      swift_willThrow();

      goto LABEL_158;
    }

LABEL_155:
    v182 = v212;
    sub_1AF73BC10(v111, v209 & 1, v211, &OBJC_IVAR____TtC3VFX13ShaderArchive_renderPipelines, sub_1AF70D78C, &selRef_addRenderPipelineFunctionsWithDescriptor_error_);
    v212 = v182;
    if (!v182)
    {
      v211 = v111;

      swift_unknownObjectRelease();
      goto LABEL_117;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_158:
    v184 = *(v99 + 24);
    os_unfair_lock_lock(v184);
    sub_1AF73FAD8(v4 + 112);
    os_unfair_lock_unlock(v184);
    goto LABEL_159;
  }

  swift_getObjectType();
  v124 = v110;
  v125 = v212;
  v126 = sub_1AFDFDC88();
  v212 = v125;
  if (v125)
  {

    v128 = *(v99 + 24);
    os_unfair_lock_lock(v128);
    sub_1AF73FAD8(v4 + 112);
    os_unfair_lock_unlock(v128);

LABEL_159:
LABEL_160:
    sub_1AF744F08(v221);
    swift_unknownObjectRelease();
    goto LABEL_84;
  }

  v130 = v126;
  v210 = v110;
  v211 = v111;
  v213 = v127;

LABEL_117:
  v131 = *(v99 + 24);
  v132 = v213;
  os_unfair_lock_lock(v131);
  v133 = 0;
  v134 = *(v4 + 48);
  v135 = 1 << *(v134 + 32);
  v136 = *(v134 + 64);
  v137 = -1;
  if (v135 < 64)
  {
    v137 = ~(-1 << v135);
  }

  v138 = v137 & v136;
  v139 = (v135 + 63) >> 6;
  if ((v137 & v136) != 0)
  {
    while (1)
    {
      v140 = v133;
LABEL_123:
      v141 = __clz(__rbit64(v138));
      v138 &= v138 - 1;
      memmove(v242, (*(v134 + 56) + 440 * (v141 | (v140 << 6))), 0x1B1uLL);
      if (sub_1AF745F90(v242) == 1)
      {
        nullsub_106();
        v133 = v140;
        if (!v138)
        {
          break;
        }
      }

      else
      {
        v133 = v140;
        if (!v138)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v140 = v133 + 1;
    if (v133 + 1 >= v139)
    {
      break;
    }

    v138 = *(v134 + 72 + 8 * v133++);
    if (v138)
    {
      goto LABEL_123;
    }
  }

  memcpy(&v223[1], v228, 0x1A0uLL);
  v223[0] = v130;
  v223[53] = v213;
  sub_1AF745F98(v223);
  memcpy(v242, v223, 0x1B1uLL);
  sub_1AF745F28(v229, v222);
  v142 = v132;
  swift_unknownObjectRetain();
  v143 = v208;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  *v222 = *(v143 + 48);
  *(v143 + 48) = 0x8000000000000000;
  sub_1AF854898(v242, v205, v144);
  *(v143 + 48) = *v222;
  os_unfair_lock_unlock(v131);

  v145 = *(v204 + 24);
  os_unfair_lock_lock(v145);
  sub_1AF73FAD8(v143 + 112);
  os_unfair_lock_unlock(v145);
  sub_1AF745EB8(v227, &unk_1ED725D70, qword_1ED725D80, &type metadata for ShaderCache.RenderPipeline);

  sub_1AF744F08(v221);
  swift_unknownObjectRelease();
  sub_1AF602304(v229);
  return v130;
}

uint64_t sub_1AF732098(int a1, uint64_t a2, uint64_t a3, void *__src, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 11160) = v12;
  *(v8 + 3882) = a8;
  *(v8 + 11112) = a7;
  *(v8 + 11064) = a6;
  *(v8 + 3881) = a5;
  *(v8 + 11016) = __src;
  *(v8 + 10968) = a3;
  *(v8 + 10920) = a2;
  memcpy((v8 + 8760), __src, 0x1A0uLL);
  sub_1AF7460FC();
  *(v8 + 11208) = v9;
  *(v8 + 11256) = *(v9 - 8);
  *(v8 + 11304) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AF7321BC, 0, 0);
}

uint64_t sub_1AF7321BC()
{
  v1 = *(v0 + 11112);
  v2 = *(v0 + 11064);
  v3 = *(v0 + 3881);
  v4 = *(v0 + 11016);
  v5 = *(v0 + 10968);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  memcpy((v6 + 24), v4, 0x1A0uLL);
  *(v6 + 440) = v3;
  *(v6 + 448) = v2;
  v7 = swift_allocObject();
  *(v0 + 11352) = v7;
  *(v7 + 16) = &unk_1AFE74D20;
  *(v7 + 24) = v6;

  sub_1AF745F28(v4, v0 + 9592);
  v8 = v2;
  sub_1AF744784();
  swift_asyncLet_begin();
  v9 = swift_allocObject();
  memcpy((v9 + 16), v4, 0x1A0uLL);
  *(v9 + 432) = v5;
  memcpy((v9 + 440), v1, 0x1A0uLL);
  *(v9 + 856) = v3;
  *(v9 + 864) = v2;
  v10 = swift_allocObject();
  *(v0 + 11400) = v10;
  *(v10 + 16) = &unk_1AFE74D40;
  *(v10 + 24) = v9;

  sub_1AF745F28(v4, v0 + 7096);
  v11 = v8;
  sub_1AF745F28(v1, v0 + 6264);
  sub_1AF0D0D84(0, &qword_1ED7231F0, sub_1AF746664);
  swift_asyncLet_begin();
  *(v0 + 11448) = v4[1];
  *(v0 + 11496) = v4[3];
  if (v4[16])
  {
    v12 = *(v0 + 11064);
    v13 = *(v0 + 11016);
    v14 = *(v0 + 10968);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    memcpy((v15 + 24), v13, 0x1A0uLL);
    *(v15 + 440) = v3;
    *(v15 + 448) = v12;
    v16 = swift_allocObject();
    *(v0 + 11544) = v16;
    *(v16 + 16) = &unk_1AFE74D78;
    *(v16 + 24) = v15;

    v17 = 10680;
    sub_1AF745F28(v13, v0 + 7512);
    v18 = v11;
    swift_asyncLet_begin();
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    memcpy((v19 + 24), v13, 0x1A0uLL);
    *(v19 + 440) = v3;
    *(v19 + 448) = v12;
    v20 = swift_allocObject();
    *(v0 + 11592) = v20;
    *(v20 + 16) = &unk_1AFE74D90;
    *(v20 + 24) = v19;

    sub_1AF745F28(v13, v0 + 8344);
    v21 = v18;
    swift_asyncLet_begin();
    v22 = sub_1AF7326B0;
    v23 = 11984;
    v24 = v0 + 2576;
  }

  else
  {
    v17 = 10632;
    v25 = *(v0 + 11064);
    v26 = *(v0 + 11016);
    v27 = *(v0 + 10968);
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    memcpy((v28 + 24), v26, 0x1A0uLL);
    *(v28 + 440) = v3;
    *(v28 + 448) = v25;
    v29 = swift_allocObject();
    *(v0 + 12024) = v29;
    *(v29 + 16) = &unk_1AFE74D60;
    *(v29 + 24) = v28;

    sub_1AF745F28(v26, v0 + 6680);
    v30 = v11;
    swift_asyncLet_begin();
    v22 = sub_1AF733880;
    v23 = 11744;
    v24 = v0 + 1936;
  }

  return MEMORY[0x1EEE6DEC0](v24, v0 + v17, v22, v0 + v23);
}
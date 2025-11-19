uint64_t sub_1AF915ACC()
{
  v1 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF915C2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX12SubGraphNode_name);

  return v1;
}

uint64_t sub_1AF915C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(v3 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph))
  {
    v20 = 0;
    v21 = 0;
    MEMORY[0x1EEE9AC00](a1, a2);
    v18[6] = &v21;
    v18[7] = &v20;
    MEMORY[0x1EEE9AC00](v5, v6);
    v18[2] = sub_1AF919DEC;
    v18[3] = v7;

    v8 = MEMORY[0x1E69E7CC0];
    v19[0] = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    v19[1] = v9;
    sub_1AF412D4C(sub_1AF919F20, v18, 1, 0x1000000000000000uLL, 0, v8, v19);

    v12 = v20;
    v11 = v21;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = &unk_1F24F37E0;
    v15 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = (v3 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
    v11 = *(v3 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
    v12 = v17[1];
    v14 = v17[2];
    v13 = v17[3];
    v15 = v17[4];
    v16 = v17[5];
  }

  *a3 = v11;
  a3[1] = v12;
  a3[2] = v14;
  a3[3] = v13;
  a3[4] = v15;
  a3[5] = v16;
  return result;
}

uint64_t sub_1AF915E18(uint64_t result, uint64_t *a2, void *a3)
{
  if (!*(*(result + 16) + 16))
  {
    v3 = *(result + 8);
    if (*v3 == _TtC3VFX17SubGraphEnterNode)
    {
      v4 = *(v3 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 8);
      v5 = *(v4 + 16);
      v6 = v5 != 0;
      v7 = (2 * v5) | 1;

      v10 = sub_1AF61FB90(v9, v4 + 32, v6, v7);

      *a2 = v10;
    }

    else
    {
      if (*v3 != _TtC3VFX18SubGraphReturnNode)
      {
        return result;
      }

      *a3 = *(v3 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
    }
  }

  return result;
}

char *sub_1AF915F50(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC3VFX12SubGraphNode_name);
  *v3 = 0x6870617247627553;
  v3[1] = 0xE800000000000000;
  v4 = OBJC_IVAR____TtC3VFX12SubGraphNode_graph;
  *(v1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = 0;
  v5 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_name + 8);
  *v3 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_name);
  v3[1] = v5;
  *(v1 + v4) = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
  v6 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature + 8);
  v7 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature + 16);
  v8 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature + 24);
  v9 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature + 32);
  v10 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature + 40);
  v11 = (v1 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
  *v11 = *(a1 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  v11[5] = v10;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF916060()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF916150()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF91622C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF916318@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF918AE0();
  *a1 = result;
  return result;
}

void sub_1AF916348(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xEB00000000746E75;
  v6 = 0x6F4374757074756FLL;
  v7 = 0x6D614E7475706E69;
  v8 = 0xEB0000000073656DLL;
  if (v2 == 3)
  {
    v8 = 0xEA00000000007365;
  }

  else
  {
    v7 = 0x614E74757074756FLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x756F437475706E69;
    v3 = 0xEA0000000000746ELL;
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

uint64_t sub_1AF9163F4()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6F4374757074756FLL;
  v4 = 0x6D614E7475706E69;
  if (v1 != 3)
  {
    v4 = 0x614E74757074756FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x756F437475706E69;
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

uint64_t sub_1AF91649C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF918AE0();
  *a1 = result;
  return result;
}

uint64_t sub_1AF9164C4(uint64_t a1)
{
  v2 = sub_1AF918A8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF916500(uint64_t a1)
{
  v2 = sub_1AF918A8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF91653C(void *a1)
{
  v3 = v1;
  sub_1AF9192B0(0, &qword_1EB640610, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v18 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF918A8C();
  sub_1AFDFF3F8();
  v19 = 0;

  sub_1AFDFE8B8();
  if (v2)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    v11 = (v3 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
    v12 = *(v3 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    v16 = v11[4];

    v18[1] = v14;

    sub_1AF918B2C(v12, v13, v15, v16);
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1AF916774(void *a1)
{
  v3 = v1;
  sub_1AF9192B0(0, &qword_1EB640600, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AF918A8C();
  result = sub_1AFDFF3B8();
  if (!v2)
  {
    v17[15] = 0;
    v12 = sub_1AFDFE708();
    v13 = (v3 + OBJC_IVAR____TtC3VFX12SubGraphNode_name);
    *v13 = v12;
    v13[1] = v14;

    sub_1AF918F0C(v18);
    (*(v7 + 8))(v10, v6);
    v15 = (v3 + OBJC_IVAR____TtC3VFX12SubGraphNode__signature);
    v16 = v18[1];
    *v15 = v18[0];
    v15[1] = v16;
    v15[2] = v18[2];
  }

  return result;
}

uint64_t sub_1AF916988()
{
  v0 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CD0];
  v16 = &v19;
  v13 = sub_1AF919398;
  v14 = &v15;

  v17 = sub_1AF42B0F4(v0);
  v18 = v1;
  sub_1AF412D4C(sub_1AF9193B4, v12, 1, 0x1000000000000000uLL, 0, v0, &v17);

  v3 = v19;
  MEMORY[0x1EEE9AC00](v2, v4);
  v11[6] = v3;
  v11[7] = &v20;
  MEMORY[0x1EEE9AC00](v5, v6);
  v11[2] = sub_1AF9193CC;
  v11[3] = v7;

  v8 = MEMORY[0x1E69E7CC0];
  v17 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  v18 = v9;
  sub_1AF412D4C(sub_1AF919F20, v11, 1, 0x1000000000000000uLL, 0, v8, &v17);

  return v20;
}

uint64_t sub_1AF916B68(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 16) + 16))
  {
    v2 = *(result + 8);
    result = sub_1AF7025B4(v2, a2);
    if ((result & 1) == 0)
    {
      v3 = *v2;
      result = swift_conformsToProtocol2();
      if (result)
      {
        v4 = *(result + 48);
        v5 = result;

        v6 = v4(v3, v5);
        sub_1AF490C24(v6);
      }
    }
  }

  return result;
}

uint64_t sub_1AF916C54(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v93 = *a1;
  if (v93 == 3)
  {
    sub_1AFDFE218();

    v94 = 0xD000000000000024;
    v95 = 0x80000001AFF3A8D0;
    v4 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v4);

    MEMORY[0x1B2718AE0](15145, 0xE200000000000000);
    sub_1AF919A38(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = 0xD000000000000024;
    *(inited + 40) = 0x80000001AFF3A8D0;
    sub_1AF441DD8();
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_1AFE431C0;
    *(v6 + 32) = inited;
    v7 = v6 + 32;
    v89 = sub_1AFA56CA0(v6);
    swift_setDeallocating();
    sub_1AF919968(v7, &unk_1ED723290, &type metadata for CodeEmitter.Code);
    v91 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = *(*(a2 + 32) + 16);

    v90 = v8;
    if (v8)
    {
      v10 = 0;
      v87 = v9 + 32;
      v91 = MEMORY[0x1E69E7CC0];
      v11 = MEMORY[0x1E69E7CC0];
      do
      {
        v92 = v11;
        v12 = *(v87 + 8 * v10);
        sub_1AF442064(v12);
        sub_1AF90EDE8(v12, &v94, 0.0);
        v13 = sub_1AF930984(v12, &v94, 3174949, 0xE300000000000000, v93);
        v15 = v14;
        v17 = v16;
        v19 = v18;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v94);
        v94 = 0;
        v95 = 0xE000000000000000;
        v20 = sub_1AF937FF8(v93, v12);
        if ((~v20 & 0xF000000000000007) == 0)
        {
          sub_1AF442064(v12);
          v20 = v12;
        }

        v21 = sub_1AF94B594(v93, v20);
        v23 = v22;
        sub_1AF445BE4(v20);
        MEMORY[0x1B2718AE0](v21, v23);

        MEMORY[0x1B2718AE0](7480608, 0xE300000000000000);
        v24 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v24);

        MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
        MEMORY[0x1B2718AE0](v13, v15);

        MEMORY[0x1B2718AE0](59, 0xE100000000000000);
        v25 = v94;
        v26 = v95;
        sub_1AF919A38(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
        v27 = swift_initStackObject();
        *(v27 + 16) = xmmword_1AFE431C0;
        *(v27 + 32) = v25;
        *(v27 + 40) = v26;
        *(v27 + 48) = 0;
        *(v27 + 56) = 0;
        v94 = v17;
        v95 = v19;
        v28 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v28);

        sub_1AF4486E4();
        v29 = sub_1AFDFDEB8();
        v31 = v30;

        v32 = *(v91 + 2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96 = v91;
        if (!isUniquelyReferenced_nonNull_native || v32 >= *(v91 + 3) >> 1)
        {
          v91 = sub_1AF420554(isUniquelyReferenced_nonNull_native, v32 + 1, 1, v91);
          v96 = v91;
        }

        sub_1AF64DF78(0, 0, 1, v29, v31);

        sub_1AF441DD8();
        v34 = swift_initStackObject();
        *(v34 + 16) = xmmword_1AFE4C620;
        *(v34 + 32) = v27;
        *(v34 + 40) = MEMORY[0x1E69E7CC0];
        v35 = sub_1AFA56CA0(v34);
        swift_setDeallocating();
        sub_1AF919A38(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
        swift_arrayDestroy();
        v11 = v92;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1AF426BC8(0, v92[2] + 1, 1, v92);
        }

        v37 = v11[2];
        v36 = v11[3];
        if (v37 >= v36 >> 1)
        {
          v11 = sub_1AF426BC8(v36 > 1, v37 + 1, 1, v11);
        }

        ++v10;
        sub_1AF445BE4(v12);
        v11[2] = v37 + 1;
        v11[v37 + 4] = v35;
      }

      while (v90 != v10);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      v91 = MEMORY[0x1E69E7CC0];
    }

    v38 = sub_1AFA56CA0(v11);

    sub_1AF441DD8();
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_1AFE431C0;
    *(v39 + 32) = v38;
    v40 = v39 + 32;
    v89 = sub_1AFA56CA0(v39);
    swift_setDeallocating();
    sub_1AF919968(v40, &unk_1ED723290, &type metadata for CodeEmitter.Code);
    v3 = a1;
    v2 = a2;
  }

  v41 = *(v3 + 3);
  v42 = *(v3 + 4);
  v43 = *(v3 + 2);
  v44 = v3[40];

  sub_1AF487F80(v43, v41);

  sub_1AFA55030(v43, v41, 1, v93, v43, v41, v42, v44, v2);
  v46 = v45;

  sub_1AF487074(v43, v41);
  v94 = v43;
  v95 = v46;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v47 = v94;
  v48 = v95;
  sub_1AF919A38(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1AFE431C0;
  *(v49 + 32) = v47;
  *(v49 + 40) = v48;
  *(v49 + 48) = 0;
  *(v49 + 56) = 0;
  v88 = v49;
  if (v93 == 3)
  {
    v50 = *(*(v2 + 32) + 16);
    if (v50)
    {
      v51 = 0;
      v52 = MEMORY[0x1E69E7CC0];
      do
      {
        v94 = 0;
        v95 = 0xE000000000000000;
        sub_1AFDFE218();

        v94 = 0x72252074736E6F63;
        v95 = 0xE800000000000000;
        v53 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v53);

        MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF3A8B0);
        v54 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v54);

        MEMORY[0x1B2718AE0](15197, 0xE200000000000000);
        v55 = v94;
        v56 = v95;
        v57 = swift_initStackObject();
        *(v57 + 16) = xmmword_1AFE431C0;
        *(v57 + 32) = v55;
        *(v57 + 40) = v56;
        sub_1AF441DD8();
        *(v57 + 48) = 0;
        *(v57 + 56) = 0;
        v58 = swift_initStackObject();
        *(v58 + 16) = xmmword_1AFE431C0;
        *(v58 + 32) = v57;
        v59 = v58 + 32;
        v60 = sub_1AFA56CA0(v58);
        swift_setDeallocating();
        sub_1AF919968(v59, &unk_1ED723290, &type metadata for CodeEmitter.Code);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1AF426BC8(0, v52[2] + 1, 1, v52);
        }

        v62 = v52[2];
        v61 = v52[3];
        if (v62 >= v61 >> 1)
        {
          v52 = sub_1AF426BC8(v61 > 1, v62 + 1, 1, v52);
        }

        ++v51;
        v52[2] = v62 + 1;
        v52[v62 + 4] = v60;
      }

      while (v50 != v51);
    }

    else
    {
      v52 = MEMORY[0x1E69E7CC0];
    }

    v64 = sub_1AFA56CA0(v52);

    sub_1AF441DD8();
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_1AFE431C0;
    *(v65 + 32) = v64;
    v66 = v65 + 32;
    v63 = sub_1AFA56CA0(v65);
    swift_setDeallocating();
    sub_1AF919968(v66, &unk_1ED723290, &type metadata for CodeEmitter.Code);
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

  v67 = 0;
  v68 = *(v91 + 2) + 1;
  v69 = MEMORY[0x1E69E7CC0];
LABEL_31:
  v70 = &v91[16 * v67 + 40];
  while (v68 != ++v67)
  {
    v72 = *(v70 - 1);
    v71 = *v70;
    v70 += 16;
    v73 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v73 = v72 & 0xFFFFFFFFFFFFLL;
    }

    if (v73)
    {

      v74 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v69;
      if ((v74 & 1) == 0)
      {
        sub_1AFC05CE4(0, *(v69 + 16) + 1, 1);
        v69 = v94;
      }

      v76 = *(v69 + 16);
      v75 = *(v69 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_1AFC05CE4(v75 > 1, v76 + 1, 1);
        v69 = v94;
      }

      *(v69 + 16) = v76 + 1;
      v77 = v69 + 16 * v76;
      *(v77 + 32) = v72;
      *(v77 + 40) = v71;
      goto LABEL_31;
    }
  }

  v78 = *(v69 + 16);

  if (v78)
  {
    v79 = sub_1AFA54F5C(v91);

    sub_1AF441DD8();
    v80 = swift_initStackObject();
    *(v80 + 16) = xmmword_1AFE4C620;
    *(v80 + 32) = &unk_1F2504B40;
    *(v80 + 40) = v79;
    v81 = sub_1AFA56CA0(v80);
    swift_setDeallocating();
    sub_1AF919A38(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
  }

  else
  {

    v81 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF441DD8();
  v82 = swift_initStackObject();
  *(v82 + 16) = xmmword_1AFE4C6B0;
  *(v82 + 32) = v89;
  *(v82 + 40) = v88;
  *(v82 + 48) = v63;
  *(v82 + 56) = v81;
  v83 = sub_1AFA56CA0(v82);
  swift_setDeallocating();
  sub_1AF919A38(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v83;
}

uint64_t sub_1AF9177A4()
{
}

uint64_t sub_1AF917844()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF917A3C(unsigned __int8 *a1)
{
  v2 = sub_1AF916C54(a1, v1);
  v3 = sub_1AFA5413C(v2);

  return v3;
}

uint64_t sub_1AF917A8C@<X0>(void *a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  v3 = *(v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  v4 = *(v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 8);
  v5 = *(v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 16);
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t sub_1AF917B44()
{
}

void *sub_1AF917C40(uint64_t *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = MEMORY[0x1E69E7CC0];
  if (*(v4 + 16))
  {

    v6 = v4;
  }

  else
  {
    v13 = *(*a1 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v22 = MEMORY[0x1E69E7CC0];
      sub_1AFC05DE8(0, v13, 0);
      v6 = v22;
      v14 = *(v22 + 16);
      v15 = 16 * v14 + 32;
      do
      {
        v22 = v6;
        v16 = *(v6 + 24);
        v17 = v14 + 1;
        if (v14 >= v16 >> 1)
        {
          sub_1AFC05DE8(v16 > 1, v14 + 1, 1);
          v6 = v22;
        }

        *(v6 + 16) = v17;
        v18 = (v6 + v15);
        *v18 = 0;
        v18[1] = 0;
        v15 += 16;
        v14 = v17;
        --v13;
      }

      while (v13);
    }
  }

  sub_1AF919A38(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0xC000000000000008;
  *(v7 + 32) = v8 | 0x8000000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xC000000000000008;
  *(v9 + 32) = v10 | 0x8000000000000000;
  sub_1AF48F7D8(*a1);
  v22 = a1[1];
  sub_1AF919968(&v22, &qword_1EB638968, &type metadata for TypeConstraint);
  v21 = a1[2];
  sub_1AF919968(&v21, &qword_1EB638968, &type metadata for TypeConstraint);

  v20 = a1[4];
  sub_1AF9199D8(&v20, sub_1AF445C2C);
  v19 = a1[5];
  sub_1AF919968(&v19, &qword_1EB638978, &type metadata for AnyValue);
  sub_1AF48F7B0(v6);
  v11 = (v2 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  *v11 = v7;
  v11[1] = v9;
  v11[2] = &unk_1F24FFD50;
  v11[3] = v5;
  v11[4] = &unk_1F24FFD20;
  v11[5] = v5;
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = v5;
  sub_1AFDFC308();
  return v2;
}

uint64_t sub_1AF917EEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature;
  v4 = *(v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 8);
  v5 = *(v4 + 16);
  v6 = v5 != 0;
  v7 = (2 * v5) | 1;

  v9 = sub_1AF61FB90(v8, v4 + 32, v6, v7);

  v10 = *(v3 + 32);
  v11 = *(v10 + 16);
  v12 = v11 != 0;
  v13 = (2 * v11) | 1;

  v15 = sub_1AF61FBA4(v14, v10 + 32, v12, v13);

  v17 = MEMORY[0x1E69E7CC0];
  *a1 = v9;
  a1[1] = v17;
  a1[2] = &unk_1F24FD790;
  a1[3] = v15;
  a1[4] = v17;
  a1[5] = v17;
  return result;
}

uint64_t sub_1AF917FE4(void *a1)
{
  sub_1AF9192B0(0, &qword_1EB640610, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF918A8C();
  sub_1AFDFF3F8();
  sub_1AF917EEC(&v11);
  v23 = v14;
  v24 = v15;
  v21 = v11;
  v22 = v12;
  sub_1AF918B2C(v11, v12, v14, v15);
  (*(v5 + 8))(v8, v4);
  sub_1AF919968(&v21, &qword_1EB638968, &type metadata for TypeConstraint);
  sub_1AF919968(&v22, &qword_1EB638968, &type metadata for TypeConstraint);
  if (v1)
  {
    v20 = v13;
    sub_1AF919968(&v20, &qword_1EB638968, &type metadata for TypeConstraint);
    sub_1AF9199D8(&v23, sub_1AF445C2C);
    sub_1AF9199D8(&v24, sub_1AF445C2C);
    v19 = v16;
    v9 = &v19;
  }

  else
  {
    v18 = v13;
    sub_1AF919968(&v18, &qword_1EB638968, &type metadata for TypeConstraint);
    sub_1AF9199D8(&v23, sub_1AF445C2C);
    sub_1AF9199D8(&v24, sub_1AF445C2C);
    v17 = v16;
    v9 = &v17;
  }

  return sub_1AF919968(v9, &qword_1EB638978, &type metadata for AnyValue);
}

void *sub_1AF9182C0(uint64_t *a1)
{
  v3 = a1[1];
  sub_1AF919A38(0, &qword_1EB6309E8, &type metadata for TypeConstraint, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xC000000000000008;
  *(v4 + 32) = v5 | 0x8000000000000000;
  v6 = a1[4];
  v13 = *a1;

  sub_1AF919968(&v13, &qword_1EB638968, &type metadata for TypeConstraint);
  v12 = a1[2];
  sub_1AF919968(&v12, &qword_1EB638968, &type metadata for TypeConstraint);
  v11 = a1[3];
  sub_1AF9199D8(&v11, sub_1AF445C2C);

  v10 = a1[5];
  sub_1AF919968(&v10, &qword_1EB638978, &type metadata for AnyValue);
  v7 = (v1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  *v7 = v3;
  v7[1] = v4;
  v7[2] = &unk_1F24FFD80;
  v7[3] = v6;
  v8 = MEMORY[0x1E69E7CC0];
  v7[4] = MEMORY[0x1E69E7CC0];
  v7[5] = v8;
  v1[2] = v8;
  v1[3] = 0;
  v1[4] = 0;
  sub_1AFDFC308();
  return v1;
}

char *sub_1AF918450(void *a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 8);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 16);
  v5 = *(a1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 24);
  v6 = *(a1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 32);
  v7 = *(a1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 40);
  v8 = (v2 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  *v8 = *(a1 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF9184F8(void *a1, void (*a2)(uint64_t *))
{
  v25 = a2;
  v4 = v2;
  sub_1AF9192B0(0, &qword_1EB640600, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v23 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF918A8C();
  result = sub_1AFDFF3B8();
  if (!v3)
  {
    v13 = v25;
    sub_1AF918F0C(v24);
    v23[1] = 0;
    v14 = swift_allocObject();
    v13(v24);
    (*(v8 + 8))(v11, v7);
    v15 = *(v14 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
    v16 = *(v14 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 8);
    v17 = *(v14 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 16);
    v18 = *(v14 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 24);
    v19 = *(v14 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 32);
    v20 = *(v14 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 40);

    v21 = (v4 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
    v22 = *(v4 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature + 8);
    v25 = *(v4 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
    v23[0] = v22;
    *v21 = v15;
    v21[1] = v16;
    v21[2] = v17;
    v21[3] = v18;
    v21[4] = v19;
    v21[5] = v20;
  }

  return result;
}

uint64_t sub_1AF91875C()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF9188C0(void *a1)
{
  v2 = v1;
  sub_1AF9192B0(0, &qword_1EB640610, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF918A8C();
  sub_1AFDFF3F8();
  v10 = v2 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature;
  v11 = *(v2 + OBJC_IVAR____TtC3VFX20SubGraphEndpointNode__signature);
  v12 = *(v10 + 24);

  sub_1AF918B2C(MEMORY[0x1E69E7CC0], v11, MEMORY[0x1E69E7CC0], v12);
  (*(v6 + 8))(v9, v5);

  swift_arrayDestroy();
}

unint64_t sub_1AF918A8C()
{
  result = qword_1EB640608;
  if (!qword_1EB640608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640608);
  }

  return result;
}

uint64_t sub_1AF918AE0()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF918B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v34 = *(a1 + 16);
  if (v34)
  {
    v30 = a2;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v34, 0);
    v6 = v34;
    v7 = 0;
    v8 = *(a3 + 16);
    v9 = (a3 + 40);
    do
    {
      if (v7 < v8 && *v9)
      {
        sub_1AF4486E4();
        v10 = sub_1AFDFDE98();
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);

        v6 = v34;
      }

      else
      {
        v11 = 0;
        v12 = 0xE000000000000000;
      }

      v14 = *(v35 + 16);
      v13 = *(v35 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AFC05CE4(v13 > 1, v14 + 1, 1);
        v6 = v34;
      }

      ++v7;
      *(v35 + 16) = v14 + 1;
      v15 = v35 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v9 += 2;
    }

    while (v6 != v7);
    v4 = a4;
    a2 = v30;
  }

  v33 = *(a2 + 16);
  if (v33)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v33, 0);
    v16 = v33;
    v17 = 0;
    v18 = v36;
    v19 = *(v4 + 16);
    v20 = (v4 + 40);
    do
    {
      if (v17 < v19 && *v20)
      {
        v21 = v19;
        sub_1AF4486E4();
        v22 = sub_1AFDFDE98();
        v23 = *(v22 + 32);
        v24 = *(v22 + 40);

        v19 = v21;
        v16 = v33;
      }

      else
      {
        v23 = 0;
        v24 = 0xE000000000000000;
      }

      v37 = v18;
      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        v28 = v19;
        sub_1AFC05CE4(v25 > 1, v26 + 1, 1);
        v19 = v28;
        v16 = v33;
        v18 = v37;
      }

      ++v17;
      *(v18 + 16) = v26 + 1;
      v27 = v18 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      v20 += 2;
    }

    while (v16 != v17);
  }

  sub_1AF9192B0(0, &qword_1EB640610, MEMORY[0x1E69E6F58]);
  sub_1AFDFE8F8();
  if (v31)
  {
  }

  else
  {
    sub_1AFDFE8F8();
    sub_1AF919A38(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF919314(&qword_1EB639870);
    sub_1AFDFE918();

    sub_1AFDFE918();
  }
}

uint64_t sub_1AF918F0C@<X0>(uint64_t *a1@<X8>)
{
  sub_1AF9192B0(0, &qword_1EB640600, MEMORY[0x1E69E6F48]);
  result = sub_1AFDFE748();
  if (v1)
  {
    return result;
  }

  v4 = result;
  LOBYTE(v32) = 2;
  v5 = sub_1AFDFE748();
  sub_1AF919A38(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF919314(&qword_1ED726C58);
  sub_1AFDFE768();
  v6 = v32;
  sub_1AFDFE768();
  v7 = v32;
  if (v4 < 1)
  {
    v9 = v4;
    v8 = MEMORY[0x1E69E7CC0];
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = sub_1AFDFD488();
    v9 = v4;
    *(v8 + 16) = v4;
  }

  memset_pattern16((v8 + 32), &unk_1AFE854D0, 8 * v9);
LABEL_6:
  if (v5 >= 1)
  {
    v10 = sub_1AFDFD488();
    v11 = v5;
    *(v10 + 16) = v5;
LABEL_9:
    memset_pattern16((v10 + 32), &unk_1AFE854D0, 8 * v11);
    goto LABEL_10;
  }

  v11 = v5;
  v10 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  v29 = v10;
  v30 = v8;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = *(v32 + 16);
  v31 = v32;
  if (v13)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1AFC05DE8(0, v13, 0);
    v14 = v33;
    v15 = (v6 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v19 = *(v33 + 16);
      v18 = *(v33 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1AFC05DE8(v18 > 1, v19 + 1, 1);
      }

      *(v33 + 16) = v19 + 1;
      v20 = v33 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += 2;
      --v13;
    }

    while (v13);

    v7 = v31;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v7 + 16);
  if (v21)
  {
    sub_1AFC05DE8(0, v21, 0);
    v22 = v12;
    v23 = (v7 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);

      if (v27 >= v26 >> 1)
      {
        sub_1AFC05DE8(v26 > 1, v27 + 1, 1);
      }

      *(v22 + 16) = v27 + 1;
      v28 = v22 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      v23 += 2;
      --v21;
    }

    while (v21);

    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v30;
  a1[1] = v29;
  a1[2] = &unk_1F2500088;
  a1[3] = v14;
  a1[4] = v22;
  a1[5] = v12;
  return result;
}

void sub_1AF9192B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF918A8C();
    v7 = a3(a1, &type metadata for SubGraphNode.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AF919314(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF919A38(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF9193E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a5)
  {
    v9 = sub_1AFA56CA0(&unk_1F2504AB0);
    sub_1AF919968(&unk_1F2504AD0, &unk_1ED723290, &type metadata for CodeEmitter.Code);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v50 = v9;
  v51 = a6;
  v49 = a1;
  if (a1 == 3)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v11 = *(a4 + 16);
    if (v11)
    {
      sub_1AF919A38(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      sub_1AF441DD8();
      v12 = (a4 + 80);
      v13 = MEMORY[0x1E69E7CC0];
      do
      {
        v14 = *(v12 - 6);
        v15 = *(v12 - 4);
        v16 = *(v12 - 1);
        v17 = *v12;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE431C0;
        *(inited + 32) = v16;
        *(inited + 40) = v17;
        *(inited + 48) = 0;
        *(inited + 56) = 0;
        v19 = swift_initStackObject();
        *(v19 + 16) = xmmword_1AFE431C0;
        *(v19 + 32) = inited;
        swift_bridgeObjectRetain_n();
        sub_1AF443EE0(v14);
        sub_1AF444224(v15);
        v20 = sub_1AFA56CA0(v19);
        swift_setDeallocating();
        sub_1AF919968(v19 + 32, &unk_1ED723290, &type metadata for CodeEmitter.Code);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1AF426BC8(0, v13[2] + 1, 1, v13);
        }

        v22 = v13[2];
        v21 = v13[3];
        if (v22 >= v21 >> 1)
        {
          v13 = sub_1AF426BC8(v21 > 1, v22 + 1, 1, v13);
        }

        sub_1AF443F24(v14);
        sub_1AF444AF4(v15);

        v13[2] = v22 + 1;
        v13[v22 + 4] = v20;
        v12 += 7;
        --v11;
      }

      while (v11);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v23 = sub_1AFA56CA0(v13);

    sub_1AF441DD8();
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1AFE431C0;
    *(v24 + 32) = v23;
    v25 = v24 + 32;
    v10 = sub_1AFA56CA0(v24);
    swift_setDeallocating();
    sub_1AF919968(v25, &unk_1ED723290, &type metadata for CodeEmitter.Code);
    a6 = v51;
  }

  v26 = *(*(a6 + 24) + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v52 = v10;
  if (v26)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v26, 0);
    v28 = 0;
    v27 = v53;
    do
    {
      v29 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v29);

      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1AFC05CE4(v30 > 1, v31 + 1, 1);
      }

      ++v28;
      *(v53 + 16) = v31 + 1;
      v32 = v53 + 16 * v31;
      *(v32 + 32) = 37;
      *(v32 + 40) = 0xE100000000000000;
    }

    while (v26 != v28);
    a6 = v51;
  }

  v33 = sub_1AFA54F5C(v27);

  if (v49 == 3)
  {
    v34 = sub_1AFA56CA0(&unk_1F2504B18);
    v35 = &unk_1F2504B38;
  }

  else
  {
    v36 = *(*(a6 + 32) + 16);
    v37 = MEMORY[0x1E69E7CC0];
    if (v36)
    {
      v54 = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, v36, 0);
      v38 = 0;
      v37 = v54;
      do
      {
        v39 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v39);

        v41 = *(v54 + 16);
        v40 = *(v54 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1AFC05CE4(v40 > 1, v41 + 1, 1);
        }

        ++v38;
        *(v54 + 16) = v41 + 1;
        v42 = v54 + 16 * v41;
        *(v42 + 32) = 29221;
        *(v42 + 40) = 0xE200000000000000;
      }

      while (v36 != v38);
      v10 = v52;
    }

    v43 = sub_1AFA54F5C(v37);

    sub_1AF441DD8();
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_1AFE431C0;
    *(v44 + 32) = v43;
    v45 = (v44 + 32);
    v34 = sub_1AFA56CA0(v44);
    swift_setDeallocating();
    v35 = v45;
  }

  sub_1AF919968(v35, &unk_1ED723290, &type metadata for CodeEmitter.Code);
  sub_1AF441DD8();
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_1AFE4C6B0;
  *(v46 + 32) = v50;
  *(v46 + 40) = v10;
  *(v46 + 48) = v33;
  *(v46 + 56) = v34;
  v47 = sub_1AFA56CA0(v46);
  swift_setDeallocating();
  sub_1AF919A38(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v47;
}

uint64_t sub_1AF919968(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF919A38(0, a2, a3, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF9199D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF919A38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF919A88(char a1)
{
  v2 = *(*(v1 + 24) + 16);
  if (v2)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v2, 0);
    v4 = 4;
    v21 = a1;
    do
    {
      v5 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v5);

      if (a1 == 3)
      {
        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        v6 = *(*(v22 + 24) + 8 * v4);
        sub_1AF448650(*(v22 + 24));
        sub_1AF442064(v6);

        v7 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v7);

        v8 = 0x5B7374756F627573;
        v9 = 0xE800000000000000;
        v10 = v6;
        v11 = 3;
      }

      else
      {
        v6 = *(*(v22 + 24) + 8 * v4);
        sub_1AF448650(*(v22 + 24));
        sub_1AF442064(v6);

        v12 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v12);

        v8 = 0x74756F627573;
        v9 = 0xE600000000000000;
        v10 = v6;
        v11 = a1;
      }

      v13 = sub_1AF92EF80(v8, v9, v10, 37, 0xE100000000000000, v11);
      v15 = v14;

      sub_1AF445BE4(v6);
      v17 = *(v23 + 16);
      v16 = *(v23 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1AFC05CE4(v16 > 1, v17 + 1, 1);
      }

      *(v23 + 16) = v17 + 1;
      v18 = v23 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      ++v4;
      --v2;
      a1 = v21;
    }

    while (v2);
  }

  sub_1AF919A38(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v19 = sub_1AFDFCD98();

  return v19;
}

uint64_t sub_1AF919DAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1AF919E1C()
{
  result = qword_1EB640618;
  if (!qword_1EB640618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640618);
  }

  return result;
}

unint64_t sub_1AF919E74()
{
  result = qword_1EB640620;
  if (!qword_1EB640620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640620);
  }

  return result;
}

unint64_t sub_1AF919ECC()
{
  result = qword_1EB640628;
  if (!qword_1EB640628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640628);
  }

  return result;
}

uint64_t sub_1AF919F44()
{
  v1 = *(v0 + 16);
  if (*(v1 + 16) && (v2 = sub_1AF0D3F10(&type metadata for AuthoringNodeCoder.UserDataInfo_pre3002), (v3 & 1) != 0))
  {
    return *(*(v1 + 56) + 24 * v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF919FA0@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v5 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  sub_1AF441194(v1 + 72, v25);
  v7 = v27;
  v8 = v28;
  sub_1AF441150(v25, v27);
  v9 = sub_1AFDFD048();
  v10 = (*(v8 + 16))(v9, v7, v8);
  v12 = v11;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
  if (!v2)
  {
    sub_1AF43C9F0(v10, v12);
    v25[0] = sub_1AF61657C(v10, v12);
    sub_1AFDFCF58();
    sub_1AF920CE8(0, &unk_1ED726C20, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
    sub_1AF615BA0();
    v14 = sub_1AFDFCF28();
    v16 = v15;

    if (v16)
    {
      v17 = v14 == 0x30316E6962786676 && v16 == 0xE800000000000000;
      if (v17 || (sub_1AFDFEE28() & 1) != 0)
      {

        sub_1AF441194(v3 + 72, &v26);
        v18 = sub_1AF60A9E4();
        v19 = *(v3 + 48);
        v25[0] = v18;
        v25[1] = v19;
        v24[3] = &type metadata for _BinaryDecoder.SingleValueStore;
        v24[4] = &off_1F2531380;
        v24[0] = swift_allocObject();
        v20 = sub_1AF60FFFC(&v26, v24[0] + 16);
        MEMORY[0x1EEE9AC00](v20, v21);
        v24[-4] = v18;
        v24[-3] = &v26;
        v24[-2] = v18;

        sub_1AF91A2B4(v24, sub_1AF920D38, a1);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
        sub_1AF439ED8(v10, v12);
        return sub_1AF6151E8(v25);
      }

      sub_1AF60A3B8();
      swift_allocError();
      *v22 = v14;
      *(v22 + 8) = v16;
      v23 = 1;
    }

    else
    {
      sub_1AF60A3B8();
      swift_allocError();
      *v22 = 0;
      *(v22 + 8) = 0;
      v23 = 6;
    }

    *(v22 + 16) = v23;
    swift_willThrow();
    return sub_1AF439ED8(v10, v12);
  }

  return result;
}

uint64_t sub_1AF91A2B4@<X0>(uint64_t *a1@<X0>, void (*a2)(_OWORD *__return_ptr)@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  sub_1AF441194(v3 + 72, v25);
  sub_1AF6156AC((v3 + 72), a1);
  v9 = a1[3];
  v10 = a1[4];
  sub_1AF441150(a1, v9);
  v11 = (*(v10 + 56))(v9, v10);
  v13 = v12;
  a2(v24);
  if (v4)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
  }

  if ((v13 & 1) == 0)
  {
    v18 = a1[3];
    v19 = a1[4];
    sub_1AF441150(a1, v18);
    v20 = (*(v19 + 56))(v18, v19);
    if ((v21 & 1) == 0 && v11 == v20)
    {
      v22 = a1[3];
      v23 = a1[4];
      sub_1AF441150(a1, v22);
      sub_1AF60B28C(v22, v23);
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v5 + 72);
  result = sub_1AF616568(v25, v5 + 72);
  v15 = v24[3];
  v16 = v24[4];
  a3[2] = v24[2];
  a3[3] = v15;
  a3[4] = v16;
  v17 = v24[1];
  *a3 = v24[0];
  a3[1] = v17;
  return result;
}

__n128 sub_1AF91A458@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(a1 + 24) == 1 && *(a1 + 16) && (v7 = sub_1AF919F44()) != 0)
  {
    v9 = v7;
    v10 = v8;
    sub_1AF920D58();
    sub_1AF6121A0(a2, &type metadata for _BinaryDecoder.SingleValueStore, &type metadata for AuthoringNodeCoder.UserDataInfo_pre3002, v9, &off_1F2531380, a3, v10);
  }

  else
  {
    v13[3] = type metadata accessor for _BinaryDecoder();
    v13[4] = sub_1AF92037C(qword_1ED72B938, type metadata accessor for _BinaryDecoder);
    v13[0] = a1;

    sub_1AF91DC50(v13, v14);
    if (!v3)
    {
      v12 = v14[3];
      *(a3 + 32) = v14[2];
      *(a3 + 48) = v12;
      *(a3 + 64) = v14[4];
      result = v14[1];
      *a3 = v14[0];
      *(a3 + 16) = result;
    }
  }

  return result;
}

uint64_t sub_1AF91A59C()
{
  sub_1AFDFE218();

  v1 = *(v0 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name);
  v2 = *(v0 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name + 8);

  MEMORY[0x1B2718AE0](v1, v2);

  return 0x676E69646F636544;
}

void sub_1AF91A640(void *a1@<X8>)
{
  *a1 = &unk_1F24F0230;
  a1[1] = &unk_1F24F0288;
  v1 = MEMORY[0x1E69E7CC0];
  a1[2] = &unk_1F24F0258;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
}

char *sub_1AF91A670(void *a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name + 8);
  v4 = (v2 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name);
  *v4 = *(a1 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name);
  v4[1] = v3;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF91A70C()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF91A8B8(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  result = sub_1AF974940();
  if (!v2)
  {
    v4 = (v1 + OBJC_IVAR____TtC3VFX17DecodingErrorNode_name);
    *v4 = v5;
    v4[1] = v6;
  }

  return result;
}

void sub_1AF91A96C(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3 >= 1)
  {
    v5 = sub_1AFDFD488();
    *(v5 + 16) = v3;
LABEL_4:
    memset_pattern16((v5 + 32), &unk_1AFE854D0, 8 * v3);
    goto LABEL_5;
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    goto LABEL_4;
  }

LABEL_5:
  *a1 = v5;
  a1[1] = &unk_1F24F2070;
  a1[2] = &unk_1F24F2098;
  a1[3] = v4;
  a1[4] = v4;
  a1[5] = v4;
}

char *sub_1AF91AA44(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = *(a1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID + 8);
  v5 = (v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  *v5 = *(a1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  v5[1] = v4;
  *(v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount) = *(a1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_inputCount);
  v6 = OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload;

  sub_1AF91AED8(a1 + v6, v3);
  v8 = *(a1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  v7 = *(a1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn + 8);

  v9 = (v1 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn);
  *v9 = v8;
  v9[1] = v7;

  return sub_1AF96FD00(a1);
}

uint64_t sub_1AF91AB0C()
{
  v1 = MEMORY[0x1E69E7CA0];
  v2 = MEMORY[0x1E69E6720];
  sub_1AF920458(v0 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload, &v4, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF920CE8);
  sub_1AF920CE8(0, &qword_1ED726850, v1 + 8, v2);
  return sub_1AFDFCF88();
}

uint64_t sub_1AF91ABE0()
{

  sub_1AF920C2C(v0 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
}

uint64_t sub_1AF91AC60()
{

  sub_1AF919DAC(*(v0 + 24));
  v1 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1AF920C2C(v0 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);

  return swift_deallocClassInstance();
}

void *sub_1AF91AE74()
{
  result = (*(v0 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_decodeFn))(v3);
  if (!v1)
  {
    return sub_1AF7E8BCC(v3, v0 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload);
  }

  return result;
}

uint64_t sub_1AF91AED8(uint64_t a1, uint64_t a2)
{
  sub_1AF920CE8(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF91AF64(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x65756C6176;
    if (a1 != 2)
    {
      v6 = 0x6870617267627573;
    }

    if (a1)
    {
      v5 = 1701869940;
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
    v1 = 1702521203;
    v2 = 0x7865646E497ALL;
    if (a1 != 7)
    {
      v2 = 0x6E69726F68747561;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6F666E4972657375;
    if (a1 != 4)
    {
      v3 = 0x6E6F697469736F70;
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

uint64_t sub_1AF91B074()
{
  sub_1AFDFF288();
  sub_1AF3D49A4();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF91B0C4()
{
  sub_1AFDFF288();
  sub_1AF3D49A4();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF91B108@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF91DA48();
  *a1 = result;
  return result;
}

uint64_t sub_1AF91B138@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF91AF64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF91B180@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF91DA48();
  *a1 = result;
  return result;
}

uint64_t sub_1AF91B1A8(uint64_t a1)
{
  v2 = sub_1AF920BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF91B1E4(uint64_t a1)
{
  v2 = sub_1AF920BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF91B220(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v54 = a5;
  v57 = a4;
  v9 = sub_1AFDFC318();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF92022C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v52 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v51 - v18;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1AFDFE218();

  v58 = 0xD000000000000016;
  v59 = 0x80000001AFF3AAC0;
  v51 = a2;
  MEMORY[0x1B2718AE0](a2, a3);
  v60 = v58;
  v61 = v59;
  if (a1)
  {
    v58 = 8250;
    v59 = 0xE200000000000000;
    swift_getErrorValue();
    v20 = a1;
    v21 = sub_1AFDFF1D8();
    MEMORY[0x1B2718AE0](v21);

    MEMORY[0x1B2718AE0](v58, v59);
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v23 = v60;
  v22 = v61;
  v24 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v50 = v24;
    swift_once();
    v24 = v50;
  }

  v58 = 0;
  sub_1AF0D4F18(v24, &v58, v23, v22);
  v25 = v57[3];
  v26 = v57[4];
  sub_1AF441150(v57, v25);
  LODWORD(v25) = *(sub_1AF6950A0(v25, v26) + 82);

  if (v25 == 1)
  {
    v27 = sub_1AFDFDA08();
    v58 = 0;
    sub_1AF0D4F18(v27, &v58, v23, v22);

    type metadata accessor for DecodingErrorNode(0);
    v28 = swift_allocObject();
    v29 = &v28[OBJC_IVAR____TtC3VFX17DecodingErrorNode_name];
    *v29 = v51;
    v29[1] = a3;
    v30 = MEMORY[0x1E69E7CC0];
    *(v28 + 2) = MEMORY[0x1E69E7CC0];
    *(v28 + 3) = 0;
    *(v28 + 4) = 0;
    v31 = OBJC_IVAR____TtC3VFX4Node_authoringID;

    v51 = v31;
    sub_1AFDFC308();
    (*(v10 + 56))(v19, 1, 1, v9);
    type metadata accessor for AuthoringNode();
    v32 = swift_allocObject();
    *(v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v28;
    v58 = v30;

    sub_1AFC05D04(0, 1, 0);
    v33 = v58;
    v35 = *(v58 + 16);
    v34 = *(v58 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1AFC05D04(v34 > 1, v35 + 1, 1);
      v33 = v58;
    }

    *(v33 + 16) = v35 + 1;
    v36 = v33 + 16 * v35;
    *(v36 + 32) = 0;
    *(v36 + 40) = 0;
    *(v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v33;
    v37 = v52;
    sub_1AF920458(v19, v52, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92022C);
    v38 = *(v10 + 48);
    if (v38(v37, 1, v9) == 1)
    {
      v39 = v53;
      sub_1AFDFC308();
      sub_1AF9204CC(v19, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v38(v37, 1, v9) != 1)
      {
        sub_1AF9204CC(v37, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF9204CC(v19, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      v39 = v53;
      (*(v10 + 32))(v53, v37, v9);
    }

    (*(v10 + 32))(v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v39, v9);
    v41 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v42 = *(v10 + 24);
    v43 = v51;
    v42(&v28[v51], v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v9);

    v44 = v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v44 = 0;
    *(v44 + 8) = 0;
    *(v44 + 16) = 1;
    v45 = v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 16) = 1;
    v46 = v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v46 = 0;
    *(v46 + 8) = 1;
    v47 = (v32 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v47 = 0;
    v47[1] = 0;
    (*(v10 + 8))(v32 + v41, v9);
    (*(v10 + 16))(v32 + v41, v54, v9);
    v42(&v28[v43], v32 + v41, v9);
    v48 = v56;
    sub_1AF91DFE4(v57, v55, v32);
    if (v48)
    {
    }
  }

  else
  {
    sub_1AF4567E0();
    v32 = swift_allocError();
    *v40 = v23;
    *(v40 + 8) = v22;
    *(v40 + 16) = 32;
    swift_willThrow();
  }

  return v32;
}

uint64_t sub_1AF91B8F8(void *a1, __objc2_class **a2)
{
  v29 = a2;
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF920E00(0, &qword_1EB640690, sub_1AF920BD8, &type metadata for AuthoringNodeCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF920BD8();
  v13 = v29;
  sub_1AFDFF3F8();
  (*(v4 + 16))(v7, v13 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3);
  LOBYTE(v30) = 0;
  sub_1AF92037C(&qword_1EB639808, MEMORY[0x1E69695A8]);

  v14 = v28;
  sub_1AFDFE918();
  if (v14)
  {

    (*(v4 + 8))(v7, v3);
    return (*(v27 + 8))(v12, v9);
  }

  else
  {
    v16 = v27;
    (*(v4 + 8))(v7, v3);
    v17 = *(v13 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
    sub_1AFDFF4B8();
    LOBYTE(v30) = 1;
    sub_1AFDFE8B8();

    v18 = *(v13 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 16);
    v30 = *(v13 + OBJC_IVAR____TtC3VFX13AuthoringNode_position);
    v31 = v18;
    v32 = 5;
    type metadata accessor for CGPoint(0);
    v19 = v13;
    v20 = v12;
    sub_1AF92037C(&qword_1EB640698, type metadata accessor for CGPoint);
    sub_1AFDFE8A8();
    v21 = *(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 16);
    v30 = *(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_size);
    v31 = v21;
    v32 = 6;
    type metadata accessor for CGSize(0);
    sub_1AF92037C(&qword_1EB6406A0, type metadata accessor for CGSize);
    sub_1AFDFE8A8();
    LOBYTE(v30) = 7;
    sub_1AFDFE898();
    v22 = v16;
    LOBYTE(v30) = 8;

    sub_1AFDFE868();

    v23 = *v17;
    v24 = swift_conformsToProtocol2();
    if (v24)
    {
      v25 = v24;
      v32 = 2;

      sub_1AFDFE858();
      (*(v25 + 8))(&v30, v23, v25);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v30);
    }

    if (*v29 == _TtC3VFX21AuthoringSubGraphNode)
    {
      *&v30 = *(v29 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph);
      v32 = 3;
      sub_1AF448068();

      sub_1AFDFE918();
    }

    return (*(v22 + 8))(v20, v9);
  }
}

uint64_t sub_1AF91BFB0(void *a1)
{
  sub_1AF920E00(0, &qword_1EB6406A8, sub_1AF920DAC, &type metadata for EdgeCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF920DAC();
  sub_1AFDFF3F8();
  v14 = 0;
  sub_1AFDFC318();
  sub_1AF92037C(&qword_1EB639808, MEMORY[0x1E69695A8]);
  sub_1AFDFE918();
  if (!v1)
  {
    type metadata accessor for EdgeCoder(0);
    v13 = 1;
    sub_1AFDFE8F8();
    v12 = 2;
    sub_1AFDFE918();
    v11 = 3;
    sub_1AFDFE8F8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF91C200@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = sub_1AFDFC318();
  v34 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v35 = v29 - v8;
  sub_1AF920E00(0, &qword_1EB630A48, sub_1AF920DAC, &type metadata for EdgeCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v29 - v11;
  v13 = type metadata accessor for EdgeCoder(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF441150(a1, a1[3]);
  sub_1AF920DAC();
  v36 = v12;
  v17 = v37;
  sub_1AFDFF3B8();
  if (v17)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v37 = v5;
  v18 = v16;
  v19 = v34;
  v41 = 0;
  v20 = sub_1AF92037C(&qword_1ED72DF38, MEMORY[0x1E69695A8]);
  v21 = v31;
  sub_1AFDFE768();
  v29[1] = v20;
  v22 = *(v19 + 32);
  v22(v16, v35, v21);
  v40 = 1;
  v23 = sub_1AFDFE748();
  v29[0] = v22;
  v35 = v13;
  *&v16[*(v13 + 20)] = v23;
  v39 = 2;
  v24 = v37;
  sub_1AFDFE768();
  v25 = a1;
  v26 = v35;
  (v29[0])(v18 + *(v35 + 6), v24, v21);
  v38 = 3;
  v27 = sub_1AFDFE748();
  (*(v32 + 8))(v36, v33);
  *(v18 + *(v26 + 7)) = v27;
  sub_1AF9201C8(v18, v30);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
  return sub_1AF920C88(v18, type metadata accessor for EdgeCoder);
}

uint64_t sub_1AF91C6AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF91E41C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF91C700()
{
  v1 = 0x44497475706E69;
  v2 = 0x444974757074756FLL;
  if (*v0 != 2)
  {
    v2 = 0x6E4974757074756FLL;
  }

  if (*v0)
  {
    v1 = 0x646E497475706E69;
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

uint64_t sub_1AF91C788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF91DAE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF91C7B0(uint64_t a1)
{
  v2 = sub_1AF920DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF91C7EC(uint64_t a1)
{
  v2 = sub_1AF920DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF91C858(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7365676465;
  if (v2 != 1)
  {
    v5 = 0x6F666E4972657375;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7365646F6ELL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x7365676465;
  if (*a2 != 1)
  {
    v8 = 0x6F666E4972657375;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7365646F6ELL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF91C94C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF91C9E8()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF91CA70()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF91CB08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF91DA94();
  *a1 = result;
  return result;
}

void sub_1AF91CB38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7365676465;
  if (v2 != 1)
  {
    v5 = 0x6F666E4972657375;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7365646F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF91CB90()
{
  v1 = 0x7365676465;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365646F6ELL;
  }
}

uint64_t sub_1AF91CBE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF91DA94();
  *a1 = result;
  return result;
}

uint64_t sub_1AF91CC0C(uint64_t a1)
{
  v2 = sub_1AF920040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF91CC48(uint64_t a1)
{
  v2 = sub_1AF920040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF91CC84(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(a1 + 16) + 16))
  {
    v10 = *(a1 + 8);
    (*(v5 + 16))(v9, v10 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v4, v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a2;
    *a2 = 0x8000000000000000;
    sub_1AF8583B0(v10, v9, isUniquelyReferenced_nonNull_native);
    (*(v5 + 8))(v9, v4);
    *a2 = v13;
  }
}

uint64_t sub_1AF91CDD4(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  sub_1AF920E00(0, &qword_1EB640640, sub_1AF920040, &type metadata for AuthoringGraphCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF920040();
  sub_1AFDFF3F8();
  v10 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v31 = &v29;
  v32 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
  v33 = v11;
  v26 = a2;
  sub_1AF41420C(sub_1AF920290, v30, 0, 0x1000000000000000uLL, 0, v10, &v32);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v12 = sub_1AF42A0E4(v32, v33, sub_1AF42ADF4);

    v13 = 0;
    v32 = v10;
    v14 = v12[2];
    while (v14 != v13)
    {
      if (v12[v13++ + 4])
      {

        MEMORY[0x1B2718E00](v16);
        if (v32[2] >= v32[3] >> 1)
        {
          sub_1AFDFD458();
        }

        sub_1AFDFD4B8();
        v10 = v32;
      }
    }

    v32 = v10;
    v28 = 0;
    sub_1AF920CE8(0, &qword_1EB630D90, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E62F8]);
    sub_1AF920298(&qword_1EB640648, sub_1AF920328);
    sub_1AFDFE918();

    v32 = v29;
    v28 = 1;
    sub_1AF92022C(0, &qword_1EB630D70, type metadata accessor for EdgeCoder, MEMORY[0x1E69E62F8]);
    sub_1AF920104(&qword_1EB640658, &qword_1EB640660);
    sub_1AFDFE918();
    if (*(v26 + 16))
    {
      v18 = objc_opt_self();

      v19 = sub_1AFDFCBE8();

      v32 = 0;
      v20 = [v18 dataWithJSONObject:v19 options:0 error:&v32];

      v21 = v32;
      if (v20)
      {
        v22 = sub_1AFDFC1B8();
        v24 = v23;

        v32 = v22;
        v33 = v24;
        v28 = 2;
        sub_1AF8711B4();
        sub_1AFDFE918();
        sub_1AF439ED8(v32, v33);
      }

      else
      {
        v25 = v21;
        sub_1AFDFBF58();

        swift_willThrow();
      }
    }

    (*(v27 + 8))(v9, v6);
  }

  return result;
}

void sub_1AF91D334(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for EdgeCoder(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF92022C(0, &qword_1EB640668, type metadata accessor for EdgeCoder, MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v48 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = 0;
  if (!*(*(a1 + 16) + 16))
  {
    v49 = a3;
    v50 = v48 - v22;
    v58 = v6;
    v24 = *(a1 + 8);
    v25 = *(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
    v26 = *(v25 + 16);
    v52 = v10;
    v53 = v7;
    v51 = v15;
    v48[2] = a2;
    v55 = v24;
    if (v26)
    {
      v59 = MEMORY[0x1E69E7CC0];

      sub_1AFC0789C(0, v26, 0);
      v27 = 0;
      v29 = v58;
      v28 = v59;
      v54 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v56 = (v7 + 56);
      v48[1] = v25;
      v30 = (v25 + 40);
      do
      {
        v31 = *(v30 - 1);
        if (v31)
        {
          v57 = *v30;
          v32 = sub_1AFDFC318();
          v33 = v28;
          v34 = v26;
          v35 = v12;
          v36 = *(*(v32 - 8) + 16);
          v36(v19, v55 + v54, v32);
          v36(&v19[*(v58 + 24)], v31 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v32);
          v12 = v35;
          v26 = v34;
          v28 = v33;
          v37 = v57;
          v29 = v58;
          v38 = 0;
          *&v19[*(v58 + 20)] = v27;
          *&v19[*(v29 + 28)] = v37;
        }

        else
        {
          v38 = 1;
        }

        (*v56)(v19, v38, 1, v29);
        v59 = v28;
        v40 = *(v28 + 16);
        v39 = *(v28 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1AFC0789C(v39 > 1, v40 + 1, 1);
          v28 = v59;
        }

        ++v27;
        *(v28 + 16) = v40 + 1;
        sub_1AF9203C4(v19, v28 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v40);
        v30 += 2;
      }

      while (v26 != v27);

      v10 = v52;
      v7 = v53;
      v15 = v51;
      v41 = *(v28 + 16);
      if (v41)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
      v29 = v58;
      v41 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v41)
      {
LABEL_11:
        v42 = v28 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
        v58 = *(v12 + 72);
        v43 = (v7 + 48);
        v44 = MEMORY[0x1E69E7CC0];
        v45 = v50;
        do
        {
          sub_1AF920458(v42, v45, &qword_1EB640668, type metadata accessor for EdgeCoder, MEMORY[0x1E69E6720], sub_1AF92022C);
          sub_1AF9203C4(v45, v15);
          if ((*v43)(v15, 1, v29) == 1)
          {
            sub_1AF9204CC(v15, &qword_1EB640668, type metadata accessor for EdgeCoder);
          }

          else
          {
            sub_1AF92053C(v15, v10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_1AF426CF0(0, v44[2] + 1, 1, v44);
            }

            v47 = v44[2];
            v46 = v44[3];
            if (v47 >= v46 >> 1)
            {
              v44 = sub_1AF426CF0(v46 > 1, v47 + 1, 1, v44);
            }

            v44[2] = v47 + 1;
            v10 = v52;
            sub_1AF92053C(v52, v44 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v47);
            v45 = v50;
            v15 = v51;
          }

          v42 += v58;
          --v41;
        }

        while (v41);

        goto LABEL_23;
      }
    }

    v44 = MEMORY[0x1E69E7CC0];
LABEL_23:
    sub_1AF490CF0(v44);
    a3 = v49;
    v23 = v55;
  }

  *a3 = v23;
}

void *sub_1AF91D89C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF91F298(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF91D8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
  v8 = *(v3 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
  v9 = v8[2];
  v10 = a3 - v9;
  if (a3 != v9)
  {
    v11 = 2 * v9;
    do
    {
      v12 = v8[v11];
      v13 = v8[v11 + 1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v7) = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_1AFC0DA6C(v8);
        *(v3 + v7) = v8;
      }

      v15 = &v8[v11];
      v15[2] = v12;
      v15[3] = v13;

      v8 = *(v3 + v7);
      v11 -= 2;
    }

    while (!__CFADD__(v10++, 1));
  }

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v7) = v8;
  if ((v17 & 1) == 0)
  {
    v8 = sub_1AFC0DA6C(v8);
    *(v3 + v7) = v8;
  }

  v18 = &v8[2 * a3];
  v18[4] = a1;
  v18[5] = a2;
}

__n128 sub_1AF91D9EC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF91DC50(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1AF91DA48()
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

uint64_t sub_1AF91DA94()
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

uint64_t sub_1AF91DAE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497475706E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E497475706E69 && a2 == 0xEA00000000007865 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444974757074756FLL && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E4974757074756FLL && a2 == 0xEB00000000786564)
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

uint64_t sub_1AF91DC50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1AF920E00(0, &qword_1ED726A70, sub_1AF445B90, &type metadata for StringCodingKeys, MEMORY[0x1E69E6F48]);
  v34 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF445B90();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  v33 = a2;
  type metadata accessor for CGPoint(0);
  v35 = 0;
  v36 = 1;
  strcpy(v37, "position");
  BYTE1(v37[1]) = 0;
  WORD1(v37[1]) = 0;
  HIDWORD(v37[1]) = -402653184;
  sub_1AF92037C(&qword_1EB640678, type metadata accessor for CGPoint);
  v11 = v34;
  sub_1AFDFE6E8();
  v12 = v38;
  v13 = v39;
  v43 = v40;
  type metadata accessor for CGSize(0);
  v35 = 0;
  v36 = 1;
  v37[0] = 1702521203;
  v37[1] = 0xE400000000000000;
  sub_1AF92037C(&qword_1EB640680, type metadata accessor for CGSize);
  sub_1AFDFE6E8();
  v31 = v13;
  v32 = v12;
  v15 = v38;
  v14 = v39;
  v42 = v40;
  v35 = 0;
  v36 = 1;
  v37[0] = 0x7865646E497ALL;
  v37[1] = 0xE600000000000000;
  v30 = sub_1AFDFE6D8();
  v41 = v16 & 1;
  v35 = 0;
  v36 = 1;
  strcpy(v37, "authoringName");
  HIWORD(v37[1]) = -4864;
  v17 = sub_1AFDFE698();
  v18 = *(v10 + 8);
  v29 = v19;
  v18(v9, v11);
  v20 = v43;
  LOBYTE(v11) = v42;
  v21 = v41;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v23 = v14;
  v24 = v33;
  v25 = v30;
  v26 = v31;
  *v33 = v32;
  v24[1] = v26;
  *(v24 + 16) = v20;
  v24[3] = v15;
  v24[4] = v23;
  *(v24 + 40) = v11;
  v24[6] = v25;
  *(v24 + 56) = v21;
  v27 = v29;
  v24[8] = v17;
  v24[9] = v27;
  return result;
}

uint64_t sub_1AF91DFE4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1AF441150(a1, v5);
  if (!sub_1AF69504C(3002, v5, v6))
  {
    type metadata accessor for CGPoint(0);
    LOBYTE(v34) = 5;
    sub_1AF920E00(0, &unk_1EB630AC0, sub_1AF920BD8, &type metadata for AuthoringNodeCoder.CodingKeys, MEMORY[0x1E69E6F48]);
    sub_1AF92037C(&qword_1EB640678, type metadata accessor for CGPoint);
    result = sub_1AFDFE6E8();
    if (v3)
    {
      return result;
    }

    v24 = v38;
    v25 = a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v25 = v37;
    *(v25 + 16) = v24;
    type metadata accessor for CGSize(0);
    LOBYTE(v34) = 6;
    sub_1AF92037C(&qword_1EB640680, type metadata accessor for CGSize);
    sub_1AFDFE6E8();
    v26 = v38;
    v27 = a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v27 = v37;
    *(v27 + 16) = v26;
    LOBYTE(v37) = 7;
    v28 = sub_1AFDFE6D8();
    v30 = a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v30 = v28;
    *(v30 + 8) = v29 & 1;
    LOBYTE(v37) = 8;
    v31 = sub_1AFDFE698();
    v33 = (a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v33 = v31;
    v33[1] = v32;
  }

  LOBYTE(v34) = 4;
  sub_1AF920E00(0, &unk_1EB630AC0, sub_1AF920BD8, &type metadata for AuthoringNodeCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  sub_1AF8710A0();
  result = sub_1AFDFE6E8();
  if (!v3)
  {
    v8 = *(&v37 + 1);
    if (*(&v37 + 1) >> 60 != 15)
    {
      v9 = v37;
      v10 = MEMORY[0x1E69E7CC0];
      v11 = sub_1AF43A744(MEMORY[0x1E69E7CC0]);
      v12 = type metadata accessor for _BinaryDecoder.DataStream();
      v13 = swift_allocObject();
      v13[2] = v37;
      v13[3] = v8;
      v13[4] = 0;
      v35 = v12;
      v36 = &off_1F2531128;
      *&v34 = v13;
      type metadata accessor for _BinaryDecoder();
      v14 = swift_allocObject();
      *(v14 + 48) = v10;
      *(v14 + 64) = 0;
      *(v14 + 112) = v10;
      sub_1AF616568(&v34, v14 + 72);
      *(v14 + 56) = v11;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;

      sub_1AF587E54(v9, v8);
      sub_1AF919FA0(&v37);

      sub_1AF587E7C(v9, v8);
      v15 = v38;
      v16 = v40;
      v17 = v41;
      v18 = v42;
      v19 = v43;
      v20 = v39;
      v21 = a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
      *v21 = v37;
      *(v21 + 16) = v15;
      v22 = a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
      *v22 = v20;
      *(v22 + 16) = v16;
      v23 = a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
      *v23 = v17;
      *(v23 + 8) = v18;
      *(a3 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName) = v19;
    }
  }

  return result;
}

uint64_t sub_1AF91E41C(void *a1)
{
  sub_1AF92022C(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v86 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v84 = v78 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v85 = v78 - v10;
  v89 = sub_1AFDFC318();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89, v11);
  v13 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v88 = v78 - v16;
  sub_1AF920E00(0, &unk_1EB630AC0, sub_1AF920BD8, &type metadata for AuthoringNodeCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v78 - v21;
  v23 = a1[4];
  sub_1AF441150(a1, a1[3]);
  sub_1AF920BD8();
  v24 = v90;
  sub_1AFDFF3B8();
  if (!v24)
  {
    v25 = v86;
    v83 = v13;
    v26 = v87;
    v90 = v19;
    LOBYTE(v91[0]) = 0;
    sub_1AF92037C(&qword_1ED72DF38, MEMORY[0x1E69695A8]);
    sub_1AFDFE768();
    v27 = v18;
    LOBYTE(v91[0]) = 1;
    v29 = a1;
    v30 = sub_1AFDFE708();
    v82 = v31;
    v81 = v22;
    if (qword_1EB631E00 != -1)
    {
      swift_once();
    }

    v32 = a1[3];
    v33 = a1[4];
    sub_1AF441150(a1, v32);
    sub_1AF695174(v32, v33);
    v34 = v30;
    v35 = v30;
    v36 = v82;
    v37 = sub_1AF966E30(v34, v82);
    if (v37)
    {
      v78[1] = v35;
      v79 = a1;
      v38 = *v37;
      v80 = v37;
      v39 = swift_conformsToProtocol2();
      if (v39)
      {
        v40 = v39;
        v92 = 2;
        sub_1AFDFE688();
        v44 = v80;
        (*(v40 + 16))(v91, *v80, v40);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v91);
        v38 = *v44;
        v59 = v44;
      }

      else
      {
        v59 = v80;
      }

      v43 = v87;
      if (v38 == _TtC3VFX12SubGraphNode)
      {
        v92 = 3;
        sub_1AF4480BC();

        sub_1AFDFE768();
        v29 = v79;
        v78[0] = 0;

        v60 = v91[0];
        v61 = v25;
        v62 = v25;
        v63 = v89;
        (v43[7])(v62, 1, 1, v89);
        type metadata accessor for AuthoringSubGraphNode(0);
        swift_allocObject();
        v64 = sub_1AF91526C(v60, v59, MEMORY[0x1E69E7CC0], v61);
      }

      else
      {
        v78[0] = 0;

        (v43[7])(v85, 1, 1, v89);
        type metadata accessor for AuthoringNode();
        v86 = swift_allocObject();
        *&v86[OBJC_IVAR____TtC3VFX13AuthoringNode_raw] = v59;
        v45 = *(*v59 + 152);
        swift_retain_n();
        v45(v93);
        v46 = v93[0];
        v99 = v93[0];
        v98 = v93[1];
        v47 = MEMORY[0x1E69E62F8];
        sub_1AF920C2C(&v98, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
        v97 = v93[2];
        sub_1AF920C2C(&v97, &qword_1EB638968, &type metadata for TypeConstraint, v47);
        v96 = v93[3];
        sub_1AF920C88(&v96, sub_1AF445C2C);
        v95 = v93[4];
        sub_1AF920C88(&v95, sub_1AF445C2C);
        v94 = v93[5];
        sub_1AF920C2C(&v94, &qword_1EB638978, &type metadata for AnyValue, v47);
        v48 = *(v46 + 16);
        sub_1AF920C2C(&v99, &qword_1EB638968, &type metadata for TypeConstraint, v47);
        v49 = MEMORY[0x1E69E7CC0];
        if (v48)
        {
          v91[0] = MEMORY[0x1E69E7CC0];
          sub_1AFC05D04(0, v48, 0);
          v49 = v91[0];
          v50 = *(v91[0] + 16);
          v51 = 16 * v50 + 32;
          v52 = v84;
          v53 = v85;
          do
          {
            v91[0] = v49;
            v54 = *(v49 + 24);
            v55 = v50 + 1;
            if (v50 >= v54 >> 1)
            {
              sub_1AFC05D04(v54 > 1, v50 + 1, 1);
              v49 = v91[0];
            }

            *(v49 + 16) = v55;
            v56 = (v49 + v51);
            *v56 = 0;
            v56[1] = 0;
            v51 += 16;
            v50 = v55;
            --v48;
          }

          while (v48);
        }

        else
        {
          v52 = v84;
          v53 = v85;
        }

        *&v86[OBJC_IVAR____TtC3VFX13AuthoringNode_inputs] = v49;
        sub_1AF920458(v53, v52, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92022C);
        v43 = v26;
        v65 = v26[6];
        v66 = v53;
        v63 = v89;
        if ((v65)(v52, 1, v89) == 1)
        {
          v67 = v83;
          sub_1AFDFC308();
          sub_1AF9204CC(v66, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
          if ((v65)(v52, 1, v63) != 1)
          {
            sub_1AF9204CC(v52, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
          }
        }

        else
        {
          sub_1AF9204CC(v66, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
          v68 = v26[4];
          v67 = v83;
          (v68)(v83, v52, v63);
        }

        v64 = v86;
        (v43[4])(&v86[OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID], v67, v63);
        (v43[3])(v80 + OBJC_IVAR____TtC3VFX4Node_authoringID, v64 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v63);

        v69 = v64 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
        *v69 = 0;
        *(v69 + 8) = 0;
        *(v69 + 16) = 1;
        v70 = v64 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
        *v70 = 0;
        *(v70 + 8) = 0;
        *(v70 + 16) = 1;
        v71 = v64 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
        *v71 = 0;
        *(v71 + 8) = 1;
        v72 = (v64 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
        *v72 = 0;
        v72[1] = 0;
        v29 = v79;
      }

      v73 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v74 = v43[1];

      v87 = v74;
      v74(v64 + v73, v63);
      v23 = v64;
      (v43[2])(v64 + v73, v88, v63);
      (v43[3])(*(v64 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + OBJC_IVAR____TtC3VFX4Node_authoringID, v64 + v73, v63);
      v75 = v43;
      v76 = v81;
      v77 = v78[0];
      sub_1AF91DFE4(v29, v81, v64);
      if (v77)
      {

        (v87)(v88, v63);
        (*(v90 + 8))(v76, v27);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);

        return v23;
      }

      v57 = v90;
      v42 = v76;
      v41 = v88;
      v58 = v75;
    }

    else
    {
      v41 = v88;
      v42 = v81;
      v23 = sub_1AF91B220(0, v35, v36, a1, v88, v81);

      v57 = v90;
      v58 = v87;
    }

    v58[1](v41, v89);
    (*(v57 + 8))(v42, v27);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
    return v23;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v23;
}

void *sub_1AF91F298(void *a1)
{
  v98 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1AFDFC298();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v8);
  v89 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for EdgeCoder(0);
  v87 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v10);
  v91 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF920E00(0, &qword_1EB630AB0, sub_1AF920040, &type metadata for AuthoringGraphCoder.CodingKeys, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v71 - v16;
  v18 = a1[3];
  v19 = a1[4];
  sub_1AF441150(a1, v18);
  if (!sub_1AF694FF8(2039, v18, v19))
  {
    type metadata accessor for AuthoringGraph();
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E7CC0];
    v20[2] = 0;
    v20[3] = v21;
    v20[4] = 0;
    v20[5] = 0;
    v20[6] = sub_1AF42B088(v21);
    sub_1AFDFC308();

    goto LABEL_6;
  }

  v86 = v7;
  v20 = a1[3];
  sub_1AF441150(a1, v20);
  sub_1AF920040();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF920CE8(0, &qword_1EB630D90, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E62F8]);
    LOBYTE(v93) = 0;
    sub_1AF920298(&qword_1EB630D88, sub_1AF920094);
    sub_1AFDFE768();
    v81 = v17;
    v23 = v96[2];
    v76 = v4;
    v83 = v13;
    v84 = v14;
    if (v23)
    {
      v93 = MEMORY[0x1E69E7CC0];
      sub_1AFDFE368();
      v24 = 32;
      do
      {

        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
        v24 += 8;
        --v23;
      }

      while (v23);

      v25 = v93;
      v13 = v83;
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for AuthoringGraph();
    v20 = swift_allocObject();
    v26 = MEMORY[0x1E69E7CC0];
    v20[2] = 0;
    v20[3] = v26;
    v20[4] = 0;
    v20[5] = 0;
    v20[6] = sub_1AF42B088(v26);
    sub_1AFDFC308();
    v20[3] = v25;

    LOBYTE(v93) = 2;
    sub_1AF8710A0();
    sub_1AFDFE6E8();
    v27 = v97;
    if (v97 >> 60 == 15)
    {
LABEL_17:
      v33 = MEMORY[0x1E69E7CC0];
      v95 = sub_1AF42B088(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1EEE9AC00](v95, v34);
      v71[-2] = &v95;
      MEMORY[0x1EEE9AC00](v35, v36);
      v71[-2] = sub_1AF9200E8;
      v71[-1] = v37;
      v96 = sub_1AF42B0F4(v33);
      v97 = v38;
      sub_1AF412AA8(sub_1AF441EF8, &v71[-4], 1, 0x1000000000000000uLL, 0, v33, &v96);

      sub_1AF92022C(0, &qword_1EB630D70, type metadata accessor for EdgeCoder, MEMORY[0x1E69E62F8]);
      LOBYTE(v93) = 1;
      sub_1AF920104(&qword_1EB630D68, &qword_1EB630EE8);
      sub_1AFDFE768();
      v39 = v96[2];
      v40 = v84;
      if (v39)
      {
        v41 = (v87[80] + 32) & ~v87[80];
        v42 = v95;
        v71[0] = v96;
        v43 = v96 + v41;
        v79 = *(v87 + 9);
        v75 = 0x80000001AFF3AA80;
        v74 = "graph decoding error: ";
        v73 = (v88 + 32);
        v72 = xmmword_1AFE431C0;
        v44 = v91;
        v80 = v95;
        v71[1] = 0;
        while (1)
        {
          v87 = v43;
          v88 = v39;
          sub_1AF9201C8(v43, v44);
          v49 = v92;
          if (v42[2])
          {
            break;
          }

          v53 = 0;
          v85 = 0;
LABEL_33:
          v56 = *(v44 + v49[5]);
          v57 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
          v58 = *(v53 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
          if (v56 < v58[2])
          {
            v45 = *(v44 + v49[7]);
            v46 = v53;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v46 + v57) = v58;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              *(v46 + v57) = sub_1AFC0DA6C(v58);
            }

            sub_1AF920C88(v44, type metadata accessor for EdgeCoder);
            v48 = *(v46 + v57) + 16 * v56;
            *(v48 + 32) = v85;
            *(v48 + 40) = v45;
          }

          else
          {
            v82 = v53;
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v96 = 0;
            v97 = 0xE000000000000000;
            sub_1AFDFE218();

            v96 = 0xD000000000000016;
            v97 = v75;
            v93 = 60;
            v94 = 0xE100000000000000;
            v59 = sub_1AFDFF4B8();
            MEMORY[0x1B2718AE0](v59);

            MEMORY[0x1B2718AE0](58, 0xE100000000000000);
            v60 = sub_1AF9703D8();
            MEMORY[0x1B2718AE0](v60);

            MEMORY[0x1B2718AE0](62, 0xE100000000000000);
            MEMORY[0x1B2718AE0](v93, v94);

            MEMORY[0x1B2718AE0](0xD000000000000011, v74 | 0x8000000000000000);
            v62 = v96;
            v61 = v97;
            v63 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF92022C(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
            v64 = swift_allocObject();
            *(v64 + 16) = v72;
            *(v64 + 56) = MEMORY[0x1E69E6158];
            *(v64 + 64) = sub_1AF0D544C();
            *(v64 + 32) = v62;
            *(v64 + 40) = v61;

            sub_1AFDFC4C8();

            v78 = v62;
            v65 = v89;
            sub_1AFDFC288();
            v77 = v76[12];
            v66 = v76[16];
            LOBYTE(v64) = v63;
            v67 = v86;
            v68 = v61;
            v69 = &v86[v76[20]];
            (*v73)(v86, v65, v90);
            *(v67 + v77) = v64;
            *(v67 + v66) = 0;
            *v69 = v78;
            *(v69 + 1) = v68;

            sub_1AFDFC608();

            sub_1AF920C88(v67, sub_1AF0D4E74);

            v44 = v91;
            sub_1AF920C88(v91, type metadata accessor for EdgeCoder);
          }

          v43 = &v87[v79];
          v39 = v88 - 1;
          v13 = v83;
          v40 = v84;
          v42 = v80;
          if (v88 == 1)
          {
            goto LABEL_41;
          }
        }

        v50 = sub_1AF419940(v44);
        if (v51)
        {
          v52 = *(v42[7] + 8 * v50);

          if (!v42[2])
          {
            goto LABEL_31;
          }
        }

        else
        {
          v52 = 0;
          if (!v42[2])
          {
            goto LABEL_31;
          }
        }

        v54 = sub_1AF419940(v44 + v49[6]);
        if (v55)
        {
          v85 = *(v42[7] + 8 * v54);

LABEL_32:
          v53 = v52;
          goto LABEL_33;
        }

LABEL_31:
        v85 = 0;
        goto LABEL_32;
      }

LABEL_41:

      sub_1AF9114A4();
      (*(v40 + 8))(v81, v13);

      goto LABEL_6;
    }

    v28 = v96;
    v29 = objc_opt_self();
    v30 = sub_1AFDFC1A8();
    v96 = 0;
    v31 = [v29 JSONObjectWithData:v30 options:0 error:&v96];

    if (v31)
    {
      v32 = v96;
      sub_1AFDFDFB8();
      sub_1AF587E7C(v28, v27);
      swift_unknownObjectRelease();
      sub_1AF4468AC();
      if (swift_dynamicCast())
      {
        v20[2] = v93;
      }

      goto LABEL_17;
    }

    v70 = v96;
    sub_1AFDFBF58();

    swift_willThrow();
    sub_1AF587E7C(v28, v27);
    (*(v84 + 8))(v81, v13);
LABEL_6:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

    return v20;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v20;
}

unint64_t sub_1AF920040()
{
  result = qword_1EB631988;
  if (!qword_1EB631988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631988);
  }

  return result;
}

unint64_t sub_1AF920094()
{
  result = qword_1EB631B70;
  if (!qword_1EB631B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631B70);
  }

  return result;
}

uint64_t sub_1AF920104(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AF92022C(255, &qword_1EB630D70, type metadata accessor for EdgeCoder, MEMORY[0x1E69E62F8]);
    sub_1AF92037C(a2, type metadata accessor for EdgeCoder);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF9201C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EdgeCoder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AF92022C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF920298(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AF920CE8(255, &qword_1EB630D90, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF920328()
{
  result = qword_1EB640650;
  if (!qword_1EB640650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640650);
  }

  return result;
}

uint64_t sub_1AF92037C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AF9203C4(uint64_t a1, uint64_t a2)
{
  sub_1AF92022C(0, &qword_1EB640668, type metadata accessor for EdgeCoder, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF920458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AF9204CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF92022C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF92053C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EdgeCoder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1AF9205C0(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AFDFC318();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v9 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v8((a1 + v9), (a2 + v9), v7);
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t sub_1AF9206B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC318();
  v7 = *(*(v4 - 8) + 8);
  (v7)((v4 - 8), a1, v4);
  v5 = a1 + *(a2 + 24);

  return v7(v5, v4);
}

uint64_t sub_1AF920758(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AFDFC318();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v8 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7(a1 + v8, a2 + v8, v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1AF920804(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AFDFC318();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7(a1 + a3[6], a2 + a3[6], v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1AF9208B4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AFDFC318();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v8 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7(a1 + v8, a2 + v8, v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1AF920960(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AFDFC318();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v8 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7(a1 + v8, a2 + v8, v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1AF920A34()
{
  result = sub_1AFDFC318();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1AF920AD4()
{
  result = qword_1EB640670;
  if (!qword_1EB640670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640670);
  }

  return result;
}

unint64_t sub_1AF920B2C()
{
  result = qword_1EB631978;
  if (!qword_1EB631978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631978);
  }

  return result;
}

unint64_t sub_1AF920B84()
{
  result = qword_1EB631980;
  if (!qword_1EB631980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631980);
  }

  return result;
}

unint64_t sub_1AF920BD8()
{
  result = qword_1EB631B88;
  if (!qword_1EB631B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631B88);
  }

  return result;
}

uint64_t sub_1AF920C2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AF920CE8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AF920C88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF920CE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF920D58()
{
  result = qword_1EB640688;
  if (!qword_1EB640688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640688);
  }

  return result;
}

unint64_t sub_1AF920DAC()
{
  result = qword_1EB630F00;
  if (!qword_1EB630F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630F00);
  }

  return result;
}

void sub_1AF920E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t initializeWithCopy for AuthoringNodeCoder.UserDataInfo_pre3002(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;

  return a1;
}

uint64_t assignWithCopy for AuthoringNodeCoder.UserDataInfo_pre3002(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v3;
  v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v4;
  v5 = *(a2 + 6);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 9);

  return a1;
}

uint64_t assignWithTake for AuthoringNodeCoder.UserDataInfo_pre3002(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;

  return a1;
}

unint64_t sub_1AF920FD4()
{
  result = qword_1EB6406B0;
  if (!qword_1EB6406B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6406B0);
  }

  return result;
}

unint64_t sub_1AF92102C()
{
  result = qword_1EB6406B8;
  if (!qword_1EB6406B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6406B8);
  }

  return result;
}

unint64_t sub_1AF921084()
{
  result = qword_1EB630EF0;
  if (!qword_1EB630EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630EF0);
  }

  return result;
}

unint64_t sub_1AF9210DC()
{
  result = qword_1EB630EF8;
  if (!qword_1EB630EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630EF8);
  }

  return result;
}

unint64_t sub_1AF921134()
{
  result = qword_1EB631B78;
  if (!qword_1EB631B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631B78);
  }

  return result;
}

unint64_t sub_1AF92118C()
{
  result = qword_1EB631B80;
  if (!qword_1EB631B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB631B80);
  }

  return result;
}

uint64_t sub_1AF9211E0(uint64_t a1, void *a2)
{
  v4 = v2;
  v20[16] = 1;
  v7 = MEMORY[0x1E69E7CC0];
  sub_1AF3FB9C8(sub_1AF42B5C4, v20, 0, 0x1000000000000000uLL, 1, MEMORY[0x1E69E7CC0]);
  v8 = sub_1AF449CC8();

  v9 = swift_allocObject();
  *(v9 + 2) = 0;
  *(v9 + 3) = v7;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  *(v9 + 6) = sub_1AF42B088(v7);
  v10 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  sub_1AFDFC308();
  *(v9 + 3) = v8;
  sub_1AF9114A4();
  v11 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  v12 = sub_1AFDFC318();
  (*(*(v12 - 8) + 24))(&v9[v10], v4 + v11, v12);
  sub_1AF92199C(a2, v13);
  sub_1AF9233B0(a2);
  if (v3)
  {
  }

  else
  {
    type metadata accessor for GraphTypeResolver();
    v14 = swift_allocObject();

    v15 = a2;
    v16 = MEMORY[0x1E69E7CC0];
    *(v14 + 32) = sub_1AF42BA48(MEMORY[0x1E69E7CC0]);
    *(v14 + 40) = sub_1AF42BC98(v16);
    *(v14 + 48) = 0;
    *(v14 + 56) = sub_1AF42BEA0(v16);
    *(v14 + 16) = v9;
    *(v14 + 24) = v15;
    *(v14 + 64) = a1 & 1;
    a1 = sub_1AF93E534();

    v19 = sub_1AF921528(v18);

    *&v15[OBJC_IVAR____TtC3VFX16GraphDiagnostics_rawNodesByID] = v19;
  }

  return a1;
}

void *sub_1AF921528(uint64_t a1)
{
  sub_1AF92371C();
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v57 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v56 = &v49 - v10;
  v53 = MEMORY[0x1E69E7CC8];
  v60 = MEMORY[0x1E69E7CC8];
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v54 = a1;
  v55 = v14;
LABEL_5:
  v16 = v15;
  if (!v13)
  {
    goto LABEL_7;
  }

  do
  {
    v15 = v16;
LABEL_9:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = v17 | (v15 << 6);
    v19 = *(a1 + 48);
    v20 = sub_1AFDFC318();
    v21 = *(v20 - 8);
    v22 = v21;
    v23 = *(v21 + 72);
    v24 = v56;
    (*(v21 + 16))(v56, v19 + v23 * v18, v20);
    v25 = *(a1 + 56) + 16 * v18;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = v58;
    v29 = &v24[*(v58 + 48)];
    *v29 = v26;
    v29[8] = v27;
    v30 = v24;
    v31 = v57;
    sub_1AF9237AC(v30, v57, sub_1AF92371C);
    v32 = v31 + *(v28 + 48);
    v33 = *v32;
    if (*(v32 + 8) != 1)
    {
      v50 = v23;
      v51 = v22;
      sub_1AF9237AC(v31, v52, sub_1AF92371C);
      v34 = v53[2];
      if (v53[3] <= v34)
      {
        sub_1AF85AA64(v26, v27);
        sub_1AF85AA64(v33, 0);
        sub_1AF82C660(v34 + 1, 1);
      }

      else
      {
        sub_1AF85AA64(v26, v27);
        sub_1AF85AA64(v33, 0);
      }

      v14 = v55;
      v35 = v60;
      sub_1AF923814(&qword_1EB633A20, MEMORY[0x1E69695A8]);
      v36 = sub_1AFDFCCF8();
      v37 = v35 + 64;
      v53 = v35;
      v38 = -1 << *(v35 + 32);
      v39 = v36 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v35 + 64 + 8 * (v39 >> 6))) != 0)
      {
        v41 = __clz(__rbit64((-1 << v39) & ~*(v35 + 64 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
        v43 = v50;
        v42 = v51;
      }

      else
      {
        v44 = (63 - v38) >> 6;
        v43 = v50;
        do
        {
          if (v40 + 1 == v44)
          {
            v40 = 0;
          }

          else
          {
            ++v40;
          }

          v45 = *(v37 + 8 * v40);
        }

        while (v45 == -1);
        v41 = __clz(__rbit64(~v45)) + (v40 << 6);
        v42 = v51;
      }

      v46 = v52 + *(v58 + 48);
      *(v37 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v47 = v53;
      (*(v42 + 32))(v53[6] + v41 * v43);
      *(v47[7] + 8 * v41) = v33;
      ++v47[2];
      sub_1AF85AA70(*v46, *(v46 + 8));
      a1 = v54;
      goto LABEL_5;
    }

    v59 = *v32;
    sub_1AF85AA64(v26, v27);
    sub_1AF61FF58();
    swift_willThrowTypedImpl();
    sub_1AF923984(v31, sub_1AF92371C);
    v16 = v15;
    a1 = v54;
    v14 = v55;
  }

  while (v13);
LABEL_7:
  while (1)
  {
    v15 = v16 + 1;
    if (v16 + 1 >= v14)
    {
      break;
    }

    v13 = *(a1 + 8 * v16++ + 72);
    if (v13)
    {
      goto LABEL_9;
    }
  }

  return v53;
}

uint64_t sub_1AF92199C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1EB6325E8 != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  LOBYTE(v24) = v4;
  v25 = v5;
  LOBYTE(v26) = v6;
  v27 = sub_1AF921C70;
  v28 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  sub_1AF3FB9C8(sub_1AF9238C0, v23, v4, v5, v6, MEMORY[0x1E69E7CC0]);
  v8 = sub_1AF449CC8();

  *(v2 + 24) = v8;

  v32 = sub_1AF42B0C8(v7);
  MEMORY[0x1EEE9AC00](v32, v9);
  v28 = 0x1000000000000000;
  v29 = &v32;
  MEMORY[0x1EEE9AC00](v10, v11);
  v24 = sub_1AF915204;
  v25 = v12;
  v30 = sub_1AF42B0F4(v7);
  v31 = v13;
  sub_1AF412AA8(sub_1AF9122F0, v23, 1, 0x1000000000000000uLL, 0, v7, &v30);

  v14 = sub_1AF3D9910(v32);

  MEMORY[0x1EEE9AC00](v15, v16);
  v26 = v14;
  v27 = v2;
  v28 = v3;
  MEMORY[0x1EEE9AC00](v17, v18);
  v23[0] = sub_1AF923910;
  v23[1] = v19;
  v30 = sub_1AF42B0F4(v7);
  v31 = v20;
  sub_1AF412AA8(sub_1AF449DD8, &v22, 1, 0x1000000000000000uLL, 0, v7, &v30);
}

uint64_t sub_1AF921C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF923930(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v43 - v19;
  v21 = *a3;
  if (*a3 || (v22 = *(**(*(a1 + 8) + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152), v43 = *a3, v22(v45), v44 = a4, v23 = v45[0], v50 = v45[1], v51 = v45[0], sub_1AF9121F8(&v50, &qword_1EB638968, &type metadata for TypeConstraint), v49 = v45[2], sub_1AF9121F8(&v49, &qword_1EB638968, &type metadata for TypeConstraint), v48 = v45[3], sub_1AF923984(&v48, sub_1AF445C2C), v47 = v45[4], sub_1AF923984(&v47, sub_1AF445C2C), v46 = v45[5], sub_1AF9121F8(&v46, &qword_1EB638978, &type metadata for AnyValue), v24 = v23 + 8 * a2, a4 = v44, v25 = *(v24 + 32), sub_1AF4410A8(v25), sub_1AF9121F8(&v51, &qword_1EB638968, &type metadata for TypeConstraint), v26 = swift_allocObject(), *(v26 + 16) = 0xC000000000000008, v27 = sub_1AF9C5694(v25, v26 | 0x8000000000000000), , sub_1AF441114(v25), v21 = v43, !v27))
  {
    *a4 = v21;
  }

  else
  {
    type metadata accessor for ImplicitNoopNode(0);
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E7CC0];
    *(v28 + 3) = 0;
    *(v28 + 4) = 0;
    *(v28 + 2) = v29;
    *&v43 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    sub_1AFDFC308();
    (*(v9 + 56))(v20, 1, 1, v8);
    type metadata accessor for AuthoringNode();
    v30 = swift_allocObject();
    v31 = v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 1;
    v32 = v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 1;
    v33 = v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v33 = 0;
    *(v33 + 8) = 1;
    v34 = (v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v34 = 0;
    v34[1] = 0;
    *(v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v28;
    *(v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v29;
    sub_1AF487314(v20, v16);
    v35 = v9;
    v36 = *(v9 + 48);
    LODWORD(v29) = v36(v16, 1, v8);

    if (v29 == 1)
    {
      sub_1AFDFC308();
      sub_1AF9239E4(v20, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v36(v16, 1, v8) != 1)
      {
        sub_1AF9239E4(v16, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AF9239E4(v20, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v35 + 32))(v12, v16, v8);
    }

    (*(v35 + 32))(v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v12, v8);
    (*(v35 + 24))(&v28[v43], v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v8);

    v38 = v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 1;
    v39 = v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v39 = 0;
    *(v39 + 8) = 0;
    *(v39 + 16) = 1;
    v40 = v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v40 = 0;
    *(v40 + 8) = 1;
    v41 = (v30 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v41 = 0;
    v41[1] = 0;

    v42 = v44;
    *v44 = v30;
    v42[1] = 0;
  }

  return result;
}

uint64_t sub_1AF922210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v102 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v101 = &v94 - v13;
  v117 = sub_1AFDFC318();
  v14 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v15);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF923930(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v111 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v103 = &v94 - v23;
  v24 = *(a1 + 8);
  v110 = *(a1 + 40);
  v118 = v24;
  v112 = OBJC_IVAR____TtC3VFX13AuthoringNode_raw;
  result = sub_1AF9749E4();
  if (result)
  {
    v26 = *(a2 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    v100 = v4;
    v116 = v14;
    if (v26)
    {
      v28 = sub_1AF0D3F10(v118);
      if (v29)
      {
        v30 = *(*(a2 + 56) + 8 * v28);
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    v98 = v8;
    v99 = a4;
    v31 = *(v30 + 16);
    v109 = v17;
    if (v31)
    {
      v120 = v27;
      sub_1AFC06F08(0, v31, 0);
      v32 = v120;
      v33 = *(v120 + 16);
      v34 = 40;
      do
      {
        v35 = *(v30 + v34);
        v120 = v32;
        v36 = *(v32 + 24);
        if (v33 >= v36 >> 1)
        {
          sub_1AFC06F08(v36 > 1, v33 + 1, 1);
          v32 = v120;
        }

        *(v32 + 16) = v33 + 1;
        *(v32 + 8 * v33 + 32) = v35;
        v34 += 24;
        ++v33;
        --v31;
      }

      while (v31);
      v115 = v32;
    }

    else
    {

      v115 = MEMORY[0x1E69E7CC0];
    }

    (*(**(v118 + v112) + 152))(&v120, v37);
    v38 = v121;
    v131 = v121;
    v130 = v120;
    sub_1AF9121F8(&v130, &qword_1EB638968, &type metadata for TypeConstraint);
    v129 = v122;
    sub_1AF9121F8(&v129, &qword_1EB638968, &type metadata for TypeConstraint);
    v128 = v123;
    sub_1AF923984(&v128, sub_1AF445C2C);
    v127 = v124;
    sub_1AF923984(&v127, sub_1AF445C2C);
    v126 = v125;
    sub_1AF9121F8(&v126, &qword_1EB638978, &type metadata for AnyValue);
    v39 = *(v38 + 16);
    v40 = v103;
    v41 = v117;
    if (v39)
    {
      v42 = 0;
      v43 = v38 + 32;
      v114 = (v115 + 32);
      v96 = (v116 + 16);
      v95 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v106 = (v116 + 56);
      v97 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
      v94 = 0x80000001AFF3AAE0;
      v113 = (v116 + 32);
      v104 = (v116 + 24);
      v108 = v39;
      v107 = v43;
      v105 = (v116 + 48);
      do
      {
        v44 = *(v43 + 8 * v42);
        v45 = swift_allocObject();
        *(v45 + 16) = 0xC000000000000008;
        sub_1AF4410A8(v44);
        v46 = sub_1AF9C5694(v44, v45 | 0x8000000000000000);

        if (v46)
        {
          v47 = v114;
          v48 = *(v115 + 16);
          if (!v48)
          {
LABEL_22:
            v117 = v44;
            if (**(v118 + v112) == _TtC3VFX24InspectorSetECSValueNode || ((v50 = **(v118 + v112), type metadata accessor for InspectorSetWorldValueNode(0), v51 = swift_dynamicCastClass(), v50 != _TtC3VFX29InspectorSetParticleValueNode) ? (v52 = v51 == 0) : (v52 = 0), !v52 || (type metadata accessor for SubGraphEndpointNode(0), swift_dynamicCastClass()) || (type metadata accessor for OnTriggerNode(0), swift_dynamicCastClass())))
            {
              type metadata accessor for ImplicitStartNode(0);
              v53 = swift_allocObject();
              *(v53 + 4) = 0;
              v54 = MEMORY[0x1E69E7CC0];
              *(v53 + 2) = MEMORY[0x1E69E7CC0];
              *(v53 + 3) = 0;
              v116 = OBJC_IVAR____TtC3VFX4Node_authoringID;
              sub_1AFDFC308();
              (*v106)(v40, 1, 1, v41);
              type metadata accessor for AuthoringNode();
              v55 = swift_allocObject();
              v56 = v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
              *v56 = 0;
              *(v56 + 8) = 0;
              *(v56 + 16) = 1;
              v57 = v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
              *v57 = 0;
              *(v57 + 8) = 0;
              *(v57 + 16) = 1;
              v58 = v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
              *v58 = 0;
              *(v58 + 8) = 1;
              v59 = (v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
              *v59 = 0;
              v59[1] = 0;
              *(v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v53;
              v119 = v54;

              sub_1AFC05D04(0, 1, 0);
              v60 = v119;
              v61 = v40;
              v63 = *(v119 + 16);
              v62 = *(v119 + 24);
              if (v63 >= v62 >> 1)
              {
                sub_1AFC05D04(v62 > 1, v63 + 1, 1);
                v60 = v119;
              }

              *(v60 + 16) = v63 + 1;
              v64 = v60 + 16 * v63;
              *(v64 + 32) = 0;
              *(v64 + 40) = 0;
              *(v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v60;
              v65 = v111;
              sub_1AF487314(v61, v111);
              v66 = *v105;
              if ((*v105)(v65, 1, v41) == 1)
              {
                v67 = v109;
                sub_1AFDFC308();
                sub_1AF9239E4(v61, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
                v52 = v66(v65, 1, v41) == 1;
                v68 = v65;
                v40 = v61;
                v69 = v110;
                if (!v52)
                {
                  sub_1AF9239E4(v68, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
                }
              }

              else
              {
                sub_1AF9239E4(v61, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
                v67 = v109;
                (*v113)(v109, v65, v41);
                v40 = v61;
                v69 = v110;
              }

              (*v113)((v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID), v67, v41);
              (*v104)(&v53[v116], v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v41);

              v70 = v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
              *v70 = 0;
              *(v70 + 8) = 0;
              *(v70 + 16) = 1;
              v71 = v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
              *v71 = 0;
              *(v71 + 8) = 0;
              *(v71 + 16) = 1;
              v72 = v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
              *v72 = 0;
              *(v72 + 8) = 1;
              v73 = (v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
              *v73 = 0;
              v73[1] = 0;

              v74 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
              v75 = *(v55 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v55 + v74) = v75;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v75 = sub_1AFC0DA6C(v75);
                *(v55 + v74) = v75;
              }

              v75[4] = v118;
              v75[5] = v42;

              MEMORY[0x1B2718E00](v77);
              if (*((*v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1AFDFD458();
              }

              sub_1AFDFD4B8();
              sub_1AF441114(v117);
            }

            else
            {
              v78 = v98;
              v79 = v98[5];
              v80 = v101;
              (*v96)(&v101[v79], v118 + v95, v41);
              (*v106)(&v80[v79], 0, 1, v41);
              v80[v78[8]] = 0;
              *v80 = 0;
              v81 = &v80[v78[6]];
              *v81 = 1;
              v81[8] = -64;
              v82 = &v80[v78[7]];
              *v82 = 0xD00000000000002ALL;
              *(v82 + 1) = v94;
              v83 = v102;
              sub_1AF92385C(v80, v102);
              *(v83 + v78[8]) = 1;
              sub_1AF923814(&qword_1EB638988, type metadata accessor for GraphError);
              v84 = swift_allocError();
              sub_1AF92385C(v83, v85);
              v86 = v99;
              v87 = v97;
              v88 = *(v99 + v97);
              v89 = swift_isUniquelyReferenced_nonNull_native();
              *(v86 + v87) = v88;
              if ((v89 & 1) == 0)
              {
                v88 = sub_1AF420408(0, v88[2] + 1, 1, v88);
                *(v86 + v97) = v88;
              }

              v91 = v88[2];
              v90 = v88[3];
              if (v91 >= v90 >> 1)
              {
                v88 = sub_1AF420408(v90 > 1, v91 + 1, 1, v88);
              }

              v88[2] = v91 + 1;
              v88[v91 + 4] = v84;
              *(v99 + v97) = v88;
              v92 = swift_allocError();
              sub_1AF9237AC(v102, v93, type metadata accessor for GraphError);
              sub_1AF441114(v117);
              sub_1AF923984(v101, type metadata accessor for GraphError);

              v40 = v103;
            }

            v39 = v108;
            v43 = v107;
            goto LABEL_17;
          }

          while (1)
          {
            v49 = *v47++;
            if (v49 == v42)
            {
              break;
            }

            if (!--v48)
            {
              goto LABEL_22;
            }
          }
        }

        sub_1AF441114(v44);
LABEL_17:
        ++v42;
      }

      while (v42 != v39);
    }

    return sub_1AF9121F8(&v131, &qword_1EB638968, &type metadata for TypeConstraint);
  }

  return result;
}

uint64_t sub_1AF922E30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AF923930(0, &qword_1EB632708, type metadata accessor for GraphError);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (v35 - v6);
  v8 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
  type metadata accessor for ImportErrorNode(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC3VFX15ImportErrorNode_message + 8);
    if (v10)
    {
      v11 = *(v9 + OBJC_IVAR____TtC3VFX15ImportErrorNode_message);
      v35[0] = 0;
      v35[1] = 0xE000000000000000;

      sub_1AFDFE218();

      strcpy(v35, "Import error: ");
      HIBYTE(v35[1]) = -18;
      MEMORY[0x1B2718AE0](v11, v10);

      v13 = v35[0];
      v12 = v35[1];
      v14 = type metadata accessor for GraphError(0);
      *(v7 + v14[8]) = 0;
      *v7 = a1;
      v15 = v14[5];
      v16 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v17 = sub_1AFDFC318();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v7 + v15, a1 + v16, v17);
      (*(v18 + 56))(v7 + v15, 0, 1, v17);
      v19 = v7 + v14[6];
      *v19 = 1;
      v19[8] = -64;
      v20 = v14[7];
      *(v7 + v20) = v13;
    }

    else
    {
      v14 = type metadata accessor for GraphError(0);
      *(v7 + v14[8]) = 0;
      *v7 = a1;
      v28 = v14[5];
      v29 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v30 = sub_1AFDFC318();
      v31 = *(v30 - 8);
      (*(v31 + 16))(v7 + v28, a1 + v29, v30);
      (*(v31 + 56))(v7 + v28, 0, 1, v30);
      v32 = v7 + v14[6];
      *v32 = 1;
      v32[8] = -64;
      v20 = v14[7];
      *(v7 + v20) = 0x652074726F706D49;
      v12 = 0xEC000000726F7272;
    }

    *(v7 + v20 + 8) = v12;
    type metadata accessor for GraphError(0);
    (*(*(v14 - 1) + 56))(v7, 0, 1, v14);
    sub_1AF923330(v7, a2);
  }

  else if (*v8 == _TtC3VFX17DecodingErrorNode)
  {
    v21 = type metadata accessor for GraphError(0);
    *(a2 + v21[8]) = 0;
    *a2 = a1;
    v22 = v21[5];
    v23 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v24 = sub_1AFDFC318();
    v25 = *(v24 - 8);
    (*(v25 + 16))(a2 + v22, a1 + v23, v24);
    (*(v25 + 56))(a2 + v22, 0, 1, v24);
    v26 = a2 + v21[6];
    *v26 = 1;
    v26[8] = -64;
    *(a2 + v21[7]) = xmmword_1AFE85CF0;
    (*(*(v21 - 1) + 56))(a2, 0, 1, v21);
  }

  else
  {
    v33 = type metadata accessor for GraphError(0);
    v34 = *(*(v33 - 8) + 56);

    return v34(a2, 1, 1, v33);
  }
}

uint64_t sub_1AF923330(uint64_t a1, uint64_t a2)
{
  sub_1AF923930(0, &qword_1EB632708, type metadata accessor for GraphError);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF9233B0(uint64_t a1)
{
  v3 = *v1;
  v9 = a1;
  v10 = v3;
  v7[2] = sub_1AF923790;
  v7[3] = &v8;
  v4 = MEMORY[0x1E69E7CC0];
  v11[0] = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  v11[1] = v5;
  sub_1AF412AA8(sub_1AF441EF8, v7, 1, 0x1000000000000000uLL, 0, v4, v11);

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF923490(uint64_t a1, uint64_t a2)
{
  sub_1AF923930(0, &qword_1EB632708, type metadata accessor for GraphError);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v22 - v6);
  v8 = type metadata accessor for GraphError(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF922E30(*(a1 + 8), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1AF9239E4(v7, &qword_1EB632708, type metadata accessor for GraphError);
  }

  sub_1AF9237AC(v7, v12, type metadata accessor for GraphError);
  sub_1AF923814(&qword_1EB638988, type metadata accessor for GraphError);
  v14 = swift_allocError();
  sub_1AF92385C(v12, v15);
  v16 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
  v17 = *(a2 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1AF420408(0, v17[2] + 1, 1, v17);
    *(a2 + v16) = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    *(a2 + v16) = sub_1AF420408(v19 > 1, v20 + 1, 1, v17);
  }

  result = sub_1AF923984(v12, type metadata accessor for GraphError);
  v21 = *(a2 + v16);
  *(v21 + 16) = v20 + 1;
  *(v21 + 8 * v20 + 32) = v14;
  *(a2 + v16) = v21;
  return result;
}

void sub_1AF92371C()
{
  if (!qword_1EB632778)
  {
    sub_1AFDFC318();
    sub_1AF444718();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB632778);
    }
  }
}

uint64_t sub_1AF9237AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF923814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AF92385C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF9238C0@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  result = sub_1AF923A40(v9, v5, v6);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_1AF923930(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF923984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF9239E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1AF923930(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF923A40(uint64_t a1, unint64_t a2, void (*a3)(void *__return_ptr, _OWORD *, uint64_t *, uint64_t, void *))
{
  v4 = *(a1 + 8);

  v5 = sub_1AF97228C();
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v35 = v4;
  if (!v6)
  {

    v9 = MEMORY[0x1E69E7CC0];
    v24 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v24)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v44 = MEMORY[0x1E69E7CC0];
  sub_1AFC05D98(0, v6, 0);
  v8 = 0;
  v9 = v44;
  v37 = *(**(v4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);
  v33 = a2;
  v36 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
  v10 = (v5 + 40);
  v38 = v6;
  do
  {
    v11 = *(v10 - 1);
    v12 = *v10;
    v13 = *(a1 + 16);
    v43[0] = *a1;
    v43[1] = v13;
    v43[2] = *(a1 + 32);

    v37(v45, v14);

    v15 = v45[0];
    v51 = v45[0];
    v50 = v45[1];
    sub_1AF9121F8(&v50, &qword_1EB638968, &type metadata for TypeConstraint);
    v49 = v45[2];
    sub_1AF9121F8(&v49, &qword_1EB638968, &type metadata for TypeConstraint);
    v48 = v45[3];
    sub_1AF923984(&v48, sub_1AF445C2C);
    v47 = v45[4];
    sub_1AF923984(&v47, sub_1AF445C2C);
    v46 = v45[5];
    sub_1AF9121F8(&v46, &qword_1EB638978, &type metadata for AnyValue);
    v16 = *(v15 + 8 * v8 + 32);
    sub_1AF4410A8(v16);
    sub_1AF9121F8(&v51, &qword_1EB638968, &type metadata for TypeConstraint);
    if (v36)
    {
      if (v36 == 1)
      {
        v17 = sub_1AF9C5694(v16, v33 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v16);
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_1AF441114(v16);
      }
    }

    else
    {
      v18 = sub_1AF9C5694(v16, v33);
      sub_1AF441114(v16);
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    if (v11)
    {
      v19 = v12;
    }

    else
    {
      v19 = 0;
    }

    v40[0] = v11;
    v40[1] = v19;
    v41 = v35;

    a3(v42, v43, &v41, v8, v40);

    v20 = v42[0];

    if (v20)
    {
      v12 = v42[1];
      v11 = v20;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

LABEL_16:
    v44 = v9;
    v22 = v9[2];
    v21 = v9[3];
    if (v22 >= v21 >> 1)
    {
      sub_1AFC05D98(v21 > 1, v22 + 1, 1);
      v9 = v44;
    }

    v10 += 2;
    ++v8;
    v9[2] = v22 + 1;
    v23 = &v9[2 * v22];
    v23[4] = v11;
    v23[5] = v12;
  }

  while (v38 != v8);

  v7 = MEMORY[0x1E69E7CC0];
  v24 = v9[2];
  if (!v24)
  {
    goto LABEL_29;
  }

LABEL_22:
  *&v43[0] = v7;
  sub_1AFC05D04(0, v24, 0);
  v7 = *&v43[0];
  v25 = *(*&v43[0] + 16);
  v26 = 16 * v25;
  v27 = v9 + 5;
  do
  {
    v28 = *(v27 - 1);
    if (v28)
    {
      v29 = *v27;
    }

    else
    {
      v29 = 0;
    }

    *&v43[0] = v7;
    v30 = *(v7 + 24);

    if (v25 >= v30 >> 1)
    {
      sub_1AFC05D04(v30 > 1, v25 + 1, 1);
      v7 = *&v43[0];
    }

    v27 += 2;
    *(v7 + 16) = v25 + 1;
    v31 = v7 + v26;
    *(v31 + 32) = v28;
    *(v31 + 40) = v29;
    v26 += 16;
    ++v25;
    --v24;
  }

  while (v24);
LABEL_29:

  *(v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v7;

  return v35;
}

uint64_t sub_1AF923E60(int a1)
{
  v2 = v1;
  v71 = a1;
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v70 = &v54 - v9;
  sub_1AF483618();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v69 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v54 - v15;
  v17 = sub_1AF96FB80(1);
  v18 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
  v19 = *(v4 + 16);
  v56 = v4 + 16;
  v55 = v19;
  v19(v16, v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3);
  v20 = *(v4 + 56);
  v58 = v16;
  v20(v16, 0, 1, v3);
  v21 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position);
  v67 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 8);
  v68 = v21;
  v66 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 16);
  v22 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 8);
  v65 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size);
  v64 = v22;
  v63 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 16);
  v62 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex);
  v61 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex + 8);
  v23 = *(v1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName + 8);
  v59 = *(v2 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  type metadata accessor for AuthoringNode();
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v17;
  v25 = *(v18 + 16);
  v26 = *(*v17 + 152);
  v60 = v23;

  v26(v74, v27);
  v28 = v74[0];
  v79 = v74[1];
  v80 = v74[0];
  sub_1AF9121F8(&v79, &qword_1EB638968, &type metadata for TypeConstraint);
  v78 = v74[2];
  sub_1AF9121F8(&v78, &qword_1EB638968, &type metadata for TypeConstraint);
  v77 = v74[3];
  sub_1AF9199D8(&v77, sub_1AF445C2C);
  v76 = v74[4];
  sub_1AF9199D8(&v76, sub_1AF445C2C);
  v75 = v74[5];
  sub_1AF9121F8(&v75, &qword_1EB638978, &type metadata for AnyValue);
  v29 = *(v28 + 16);
  sub_1AF9121F8(&v80, &qword_1EB638968, &type metadata for TypeConstraint);
  if (v29 <= v25)
  {
    v30 = v25;
  }

  else
  {
    v30 = v29;
  }

  if (v30)
  {
    v54 = v4;
    v73 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D04(0, v30, 0);
    v31 = 0;
    v32 = v73;
    do
    {
      v33 = 0uLL;
      if (v31 < v25)
      {
        v72 = *(v18 + 16 * v31 + 32);

        v33 = v72;
      }

      v73 = v32;
      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      if (v35 >= v34 >> 1)
      {
        v72 = v33;
        sub_1AFC05D04(v34 > 1, v35 + 1, 1);
        v33 = v72;
        v32 = v73;
      }

      ++v31;
      *(v32 + 16) = v35 + 1;
      *(v32 + 16 * v35 + 32) = v33;
    }

    while (v30 != v31);

    v4 = v54;
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  *(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v32;
  v36 = v58;
  v37 = v69;
  sub_1AF487314(v58, v69);
  v38 = *(v4 + 48);
  v39 = v38(v37, 1, v3);
  v40 = v70;
  if (v39 == 1)
  {
    sub_1AFDFC308();
    sub_1AF9199D8(v36, sub_1AF483618);
    if (v38(v37, 1, v3) != 1)
    {
      sub_1AF9199D8(v37, sub_1AF483618);
    }
  }

  else
  {
    sub_1AF9199D8(v36, sub_1AF483618);
    (*(v4 + 32))(v40, v37, v3);
  }

  (*(v4 + 32))(v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v40, v3);
  v41 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v42 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v43 = *(v4 + 24);
  v43(v17 + OBJC_IVAR____TtC3VFX4Node_authoringID, v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3);

  v44 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  v45 = v67;
  *v44 = v68;
  *(v44 + 8) = v45;
  *(v44 + 16) = v66;
  v46 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  v47 = v64;
  *v46 = v65;
  *(v46 + 8) = v47;
  *(v46 + 16) = v63;
  v48 = v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v48 = v62;
  *(v48 + 8) = v61;
  v49 = (v24 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  v50 = v60;
  *v49 = v59;
  v49[1] = v50;
  if ((v71 & 1) == 0)
  {
    v51 = v57;
    sub_1AFDFC308();
    (*(v4 + 40))(v24 + v41, v51, v3);
    v43(v17 + v42, v24 + v41, v3);
    v52 = *(v4 + 8);

    v52(v17 + v42, v3);
    v55(v17 + v42, v24 + v41, v3);
  }

  return v24;
}

uint64_t sub_1AF924540()
{
  v1 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AuthoringNode()
{
  result = qword_1EB6323A8;
  if (!qword_1EB6323A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF924664()
{
  result = sub_1AFDFC318();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF924740()
{
  v0 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v0);

  MEMORY[0x1B2718AE0](58, 0xE100000000000000);
  v1 = sub_1AF9703D8();
  MEMORY[0x1B2718AE0](v1);

  MEMORY[0x1B2718AE0](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_1AF924808()
{
  v1 = sub_1AFDFC318();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  sub_1AFDFF288();
  (*(v2 + 16))(v5, v7 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v1);
  sub_1AF4644D8();
  sub_1AFDFCD08();
  (*(v2 + 8))(v5, v1);
  MEMORY[0x1B271ACB0](v6);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF92492C()
{
  v1 = sub_1AFDFC318();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[1];
  (*(v2 + 16))(v6, *v0 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v1, v4);
  sub_1AF4644D8();
  sub_1AFDFCD08();
  (*(v2 + 8))(v6, v1);
  return MEMORY[0x1B271ACB0](v7);
}

uint64_t sub_1AF924A40()
{
  v1 = sub_1AFDFC318();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  sub_1AFDFF288();
  (*(v2 + 16))(v5, v7 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v1);
  sub_1AF4644D8();
  sub_1AFDFCD08();
  (*(v2 + 8))(v5, v1);
  MEMORY[0x1B271ACB0](v6);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF924B70(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1AFDFC318();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v21 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = *a2;
  v17 = a2[1];
  v18 = *(v5 + 16);
  v18(&v21 - v12, v14 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v4, v11);
  (v18)(v8, v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v4);
  LOBYTE(a2) = sub_1AFDFC2D8();
  v19 = *(v5 + 8);
  v19(v8, v4);
  v19(v13, v4);
  return a2 & (v15 == v17);
}

unint64_t sub_1AF924CE8()
{
  result = qword_1EB6406C0;
  if (!qword_1EB6406C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6406C0);
  }

  return result;
}

uint64_t sub_1AF924D3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1AFC06F08(0, v1, 0);
    v4 = 0;
    v2 = v26;
    v5 = a1 + 64;
    v6 = 1 << *(a1 + 32);
    v7 = (v6 + 63) >> 6;
    v8 = (a1 + 64);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (v10)
      {
        break;
      }

      v4 -= 64;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v6 = __clz(__rbit64(v9)) - v4;
LABEL_7:
    for (i = 0; i != v1; ++i)
    {
      v13 = *(*(a1 + 48) + 8 * v6);
      v14 = *(a1 + 36);
      v16 = *(v26 + 16);
      v15 = *(v26 + 24);
      if (v16 >= v15 >> 1)
      {
        v24 = *(a1 + 36);
        v25 = v6;
        sub_1AFC06F08(v15 > 1, v16 + 1, 1);
        v14 = v24;
        v6 = v25;
      }

      *(v26 + 16) = v16 + 1;
      *(v26 + 8 * v16 + 32) = v13;
      v17 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (-2 << v6)) != 0)
      {
        v12 = __clz(__rbit64(*(v5 + 8 * (v6 >> 6)) & (-2 << v6))) | v6 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = 1 << *(a1 + 32);
        v18 = v17 << 6;
        v19 = v17 + 1;
        v20 = (a1 + 72 + 8 * v17);
        while (v19 < (v12 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_1AF0FBAE8(v6, v14, 0);
            v12 = __clz(__rbit64(v21)) + v18;
            goto LABEL_9;
          }
        }

        sub_1AF0FBAE8(v6, v14, 0);
      }

LABEL_9:
      v6 = v12;
    }
  }

  return v2;
}

uint64_t sub_1AF924F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1AFC06F08(0, v1, 0);
    v4 = 0;
    v2 = v34;
    v5 = 1 << *(a1 + 32);
    v6 = (v5 + 63) >> 6;
    v26 = a1 + 64;
    v7 = (a1 + 64);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (v9)
      {
        break;
      }

      v4 -= 64;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    v5 = __clz(__rbit64(v8)) - v4;
LABEL_7:
    v10 = 0;
    v27 = v1;
    do
    {
      v13 = *(a1 + 36);
      sub_1AF447040(*(a1 + 48) + 48 * v5, v33);
      sub_1AFDFF288();
      sub_1AF447040(v33, &v29);
      v14 = v29;
      if (v32)
      {
        if (v32 == 1)
        {
          sub_1AF447144(v30, v28);
          MEMORY[0x1B271ACB0](3);
          sub_1AFDFCEF8();
          sub_1AFDFD038();

          sub_1AF9AC90C();

          sub_1AF4470F0(v28);
        }

        else
        {
          v15 = v31 || v30[2] | v30[3] | v29 | v30[1] | v30[0];
          MEMORY[0x1B271ACB0](v15);
        }
      }

      else
      {
        MEMORY[0x1B271ACB0](2);
        sub_1AFDFF2A8();
      }

      v16 = sub_1AFDFF2F8();
      sub_1AF44709C(v33);
      v34 = v2;
      v18 = *(v2 + 16);
      v17 = *(v2 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AFC06F08(v17 > 1, v18 + 1, 1);
        v2 = v34;
      }

      *(v2 + 16) = v18 + 1;
      *(v2 + 8 * v18 + 32) = v16;
      v19 = v5 >> 6;
      if ((*(v26 + 8 * (v5 >> 6)) & (-2 << v5)) != 0)
      {
        v11 = __clz(__rbit64(*(v26 + 8 * (v5 >> 6)) & (-2 << v5))) | v5 & 0xFFFFFFFFFFFFFFC0;
        v12 = v27;
      }

      else
      {
        v11 = 1 << *(a1 + 32);
        v20 = v19 << 6;
        v21 = v19 + 1;
        v22 = (a1 + 72 + 8 * v19);
        v12 = v27;
        while (v21 < (v11 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1AF0FBAE8(v5, v13, 0);
            v11 = __clz(__rbit64(v23)) + v20;
            goto LABEL_9;
          }
        }

        sub_1AF0FBAE8(v5, v13, 0);
      }

LABEL_9:
      ++v10;
      v5 = v11;
    }

    while (v10 != v12);
  }

  return v2;
}

uint64_t sub_1AF9251E0(uint64_t *a1)
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
  sub_1AF92CA88(v6);
  return sub_1AFDFE348();
}

unint64_t sub_1AF92525C(unint64_t result, unint64_t a2)
{
  v4 = result;
  v5 = HIDWORD(result);
  if (HIDWORD(result) || result != -1)
  {
    v6 = HIDWORD(a2);
    if (HIDWORD(a2) || a2 != -1)
    {
      v7 = v2;
      v8 = *v2;
      swift_unownedRetainStrong();
      sub_1AF6937A8(v4, &type metadata for IsSubEntityOf, &off_1F2564150, a2);

      swift_unownedRetainStrong();

      swift_unownedRetainStrong();

      result = swift_unknownObjectUnownedLoadStrong();
      if (result)
      {
        result = swift_unknownObjectRelease();
      }

      if (*(v7 + 24) == 1)
      {
        swift_unownedRetainStrong();
        v9[0] = v4;
        v9[1] = v5;
        v10 = v8;
        v11 = &type metadata for IsSubEntityOf;
        v12 = &off_1F2564150;
        v13 = a2;
        v14 = v6;
        v15 = v8;
        v16 = 8;
        sub_1AF6C67D0(v9);

        return sub_1AF57955C(v9);
      }
    }
  }

  return result;
}

void sub_1AF925378(void *a1)
{
  v2 = v1;
  v74 = sub_1AF43F7C0(MEMORY[0x1E69E7CC0]);
  sub_1AFCDACFC(a1, &v74);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v106 = qword_1ED73B840;
  v107 = 0;
  v108 = 2;
  v109 = 0;
  v110 = 2;
  v111 = 0;
  sub_1AF705058(3, &v75);
  v100 = v75;
  v101 = v76;
  v102 = v77;
  v103 = v78 | 1;
  v104 = v79;
  v105 = v80;
  v4 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(v2, &v100, 0x200000000, &v81);
  if (v81)
  {
    v93 = v81;
    v96 = v84;
    v97 = v85;
    v98 = v86;
    v99 = v87;
    v94 = v82;
    v95 = v83;
    v5 = sub_1AF6B9944();
    sub_1AF92E794(&v81, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF89FF4C);
    v6 = *(v5 + 16);
    if (v6)
    {
LABEL_5:
      v112 = v4;
      v7 = v74;
      v8 = 32;
      do
      {
        if (*(v7 + 16))
        {
          v9 = sub_1AF449D3C(*(v5 + v8));
          if (v10)
          {
            v11 = *(v7 + 56) + 16 * v9;
            v12 = *(v11 + 8);
            v13 = *v11;
            v14 = sub_1AF92AABC(v13, v12, 0, MEMORY[0x1E69E7CD0]);
            sub_1AF93E174();

            if (v62)
            {

              sub_1AF92DFB0(&v75, sub_1AF92EABC);

              return;
            }
          }
        }

        v8 += 8;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v6 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  sub_1AF6B06C0(v2, &v100, 0x200000000, v88);
  if (*&v88[0])
  {
    if (v92 >= 1 && v90)
    {
      v15 = v89;
      v58 = v89 + 48 * v90;
      v59 = v91;
      do
      {
        v16 = *(v15 + 40);
        v17 = *(v16 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v17);
        os_unfair_lock_lock(*(v16 + 344));
        LODWORD(v17) = *(v16 + 24);

        v68 = 0;
        v66 = 0u;
        v67 = 0u;
        memset(v73, 0, 40);
        v18 = sub_1AF65A4B4(v17, 0, 0, &type metadata for GraphComponent, &off_1F2547EF8, &v66, v73);

        v19 = MEMORY[0x1E69E6720];
        sub_1AF92E794(v73, &qword_1ED72C1C0, sub_1AF66FF40, MEMORY[0x1E69E6720], sub_1AF92EB14);
        sub_1AF92E794(&v66, &qword_1ED72C1C0, sub_1AF66FF40, v19, sub_1AF92EB14);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v18);
        }

        else
        {
          v21 = *(v16 + 232);
          v20 = *(v16 + 240);
          v22 = *(v16 + 120);
          v57 = *(v16 + 28);
          v56 = *(v16 + 32);
          v23 = *(v16 + 16);
          v24 = *(v16 + 40);
          v25 = v24[200];
          v112 = *(*(v23 + 88) + 8 * v18 + 32);

          if ((v25 & 1) != 0 || *(v112 + 200) == 1)
          {
            *(v23 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v24 = *(v16 + 40);
          }

          if (v24[212])
          {
            v55 = 0;
          }

          else
          {
            v55 = *(v112 + 212);
          }

          v54 = v24[208];
          v64 = *(v16 + 128);
          v26 = *(v16 + 256);
          v27 = v21;
          v28 = v62;
          sub_1AF5B4FCC(v24, v27, v20, 0, v16);
          v60 = *(v16 + 256);
          v61 = v26;
          v29 = v60 - v26;
          if (v60 == v26)
          {
            v30 = 0;
          }

          else
          {
            v30 = v26;
          }

          v62 = v28;
          v63 = v30;
          v73[0] = v30;
          v31 = *(*(v16 + 40) + 24);
          v32 = *(v31 + 16);
          if (v32)
          {
            v52 = v22;
            v53 = v15;
            v33 = v31 + 32;
            v51 = v31;

            for (i = 0; i != v32; ++i)
            {
              v35 = v33 + 40 * i;
              if ((*(v35 + 32) & 1) == 0)
              {
                v36 = *(v112 + 24);
                v37 = *(v36 + 16);
                if (v37)
                {
                  v38 = (v36 + 32);
                  while (*v38 != *v35)
                  {
                    v38 += 5;
                    if (!--v37)
                    {
                      goto LABEL_31;
                    }
                  }
                }

                else
                {
LABEL_31:
                  sub_1AF640BC8();
                }
              }
            }

            v15 = v53;
            LOBYTE(v22) = v52;
          }

          v39 = v57;
          v40 = v56;
          if (*(v23 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v23 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v16 + 72) * v29);
          }

          if (*(v16 + 184))
          {
            v41 = 0;
          }

          else
          {
            v41 = *(v16 + 168);
          }

          v72 = 0;

          MEMORY[0x1EEE9AC00](v42, v43);
          *(&v51 - 28) = v39;
          *(&v51 - 108) = v40;
          v44 = v112;
          *(&v51 - 13) = v16;
          *(&v51 - 12) = v44;
          *(&v51 - 11) = 0u;
          *(&v51 - 9) = 0u;
          *(&v51 - 7) = v73;
          *(&v51 - 6) = v64;
          *(&v51 - 5) = &v72;
          LOBYTE(v44) = v55;
          *(&v51 - 32) = v54;
          *(&v51 - 7) = v18;
          *(&v51 - 24) = v44;
          v45 = v60;
          *(&v51 - 2) = v59;
          *(&v66 + 1) = v45;
          *&v67 = v41;
          DWORD2(v67) = -1;
          v68 = v61;
          v69 = v45;
          v70 = v61;
          v71 = v45;
          *&v66 = v61;
          v63 = v46;
          if (v29 >= 1)
          {
            do
            {
              v65 = v40;
              sub_1AF6248A8(v18, v39 | (v40 << 32), v22, v23, &v66, sub_1AF5C5ACC);
            }

            while ((*(&v66 + 1) - v66) > 0);
          }

          v47 = *(v16 + 192);
          if (v47)
          {
            v48 = *(v16 + 208);
            v50 = v60;
            v49 = v61;
            sub_1AF75D364(v61, v60, v47);
            sub_1AF75D364(v49, v50, v48);
          }
        }

        v15 += 48;
        os_unfair_lock_unlock(*(v16 + 344));
        os_unfair_lock_unlock(*(v16 + 376));
      }

      while (v15 != v58);
    }

    sub_1AF92E794(v88, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF89FF4C);
  }

  sub_1AF92DFB0(&v75, sub_1AF92EABC);
}

uint64_t sub_1AF925B2C(uint64_t a1)
{
  v1 = 1 << *(a1 + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(a1 + 64);
  v4 = (v1 + 63) >> 6;

  v6 = 0;
  v27 = v5;
  v7 = v5 + 72;
  v8 = MEMORY[0x1E69E7CC8];
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_6:
  v9 = v6;
LABEL_13:
  v12 = __clz(__rbit64(v3));
  v3 &= v3 - 1;
  v13 = v12 | (v9 << 6);
  sub_1AF447040(*(v27 + 48) + 48 * v13, v36);
  sub_1AF85B49C(*(v27 + 56) + 40 * v13, &v29);
  sub_1AF4473A0(v36, &v37);
  v40 = v29;
  *v41 = v30;
  *&v41[16] = v31;
  v11 = v9;
  while (1)
  {
    sub_1AF92E9D8(&v37, v42, &qword_1EB6406F0, sub_1AF92EA58);
    if (*(&v44 + 1) == 2)
    {
      break;
    }

    sub_1AF4473A0(v42, v36);
    v34[0] = v43;
    v34[1] = v44;
    v35 = v45;
    sub_1AFDFF288();
    sub_1AF447040(v36, &v29);
    v14 = v29;
    if (v33)
    {
      if (v33 == 1)
      {
        sub_1AF447144(&v29 + 8, v28);
        MEMORY[0x1B271ACB0](3);
        sub_1AFDFCEF8();
        sub_1AFDFD038();

        sub_1AF9AC90C();

        sub_1AF4470F0(v28);
      }

      else
      {
        v15 = v32 || *(&v30 + 1) | v31 | v29 | v30 | *(&v29 + 1);
        MEMORY[0x1B271ACB0](v15);
      }
    }

    else
    {
      MEMORY[0x1B271ACB0](2);
      sub_1AFDFF2A8();
    }

    v16 = sub_1AFDFF2F8();
    sub_1AF85B49C(v34, &v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v29 = v8;
    v18 = sub_1AF449CB8(v16);
    v20 = v19;
    if (v8[3] < (v8[2] + ((v19 & 1) == 0)))
    {
      sub_1AF83CA24(v8[2] + ((v19 & 1) == 0), isUniquelyReferenced_nonNull_native);
      v18 = sub_1AF449CB8(v16);
      if ((v20 & 1) != (v21 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

LABEL_29:
      v8 = v29;
      if (v20)
      {
        goto LABEL_5;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v25 = v18;
    sub_1AF84D31C();
    v18 = v25;
    v8 = v29;
    if (v20)
    {
LABEL_5:
      sub_1AF85B4F8(&v37, v8[7] + 40 * v18);
      sub_1AF92E918(v34);
      sub_1AF44709C(v36);
      v6 = v11;
      if (v3)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }

LABEL_30:
    v8[(v18 >> 6) + 8] |= 1 << v18;
    *(v8[6] + 8 * v18) = v16;
    v22 = v8[7] + 40 * v18;
    v23 = v37;
    v24 = v38;
    *(v22 + 32) = v39;
    *v22 = v23;
    *(v22 + 16) = v24;
    sub_1AF92E918(v34);
    sub_1AF44709C(v36);
    ++v8[2];
    v6 = v11;
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_7:
    if (v4 <= v6 + 1)
    {
      v10 = v6 + 1;
    }

    else
    {
      v10 = v4;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v6 + 1;
      if (v6 + 1 >= v4)
      {
        break;
      }

      v3 = *(v7 + 8 * v6++);
      if (v3)
      {
        goto LABEL_13;
      }
    }

    v3 = 0;
    *v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *&v41[8] = xmmword_1AFE505D0;
  }

  return v8;
}

uint64_t sub_1AF925F0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  swift_unknownObjectRetain();
  v6 = sub_1AF92D900(v5, a1);
  result = swift_unknownObjectRelease();
  *a2 = v6;
  return result;
}

uint64_t sub_1AF925F78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v12[16] = 1;
  v7 = sub_1AF3DA770(0, 0x1000000000000000uLL, 0, sub_1AF449D00, v12);
  sub_1AF9114A4();
  v8 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  v9 = sub_1AFDFC318();
  (*(*(v9 - 8) + 24))(v7 + v8, v6 + v8, v9);

  *v3 = v7;
  ObjectType = swift_getObjectType();
  return sub_1AF98EE94(a1, v7, ObjectType, a2);
}

uint64_t sub_1AF92606C@<X0>(void *a1@<X8>)
{
  type metadata accessor for AuthoringGraph();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  v2[2] = 0;
  v2[3] = v3;
  v2[4] = 0;
  v2[5] = 0;
  v2[6] = sub_1AF42B088(v3);
  result = sub_1AFDFC308();
  *a1 = v2;
  return result;
}

void *sub_1AF9260D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF92DBF4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF926100(void *a1)
{
  v2 = *v1;
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  v6 = v2;
  sub_1AF448018(v4, v5);
  sub_1AF448068();
  sub_1AFDFEC38();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

uint64_t sub_1AF9261A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    v3 = sub_1AFDFE108();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B2719C70](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      if (*v5 == _TtC3VFX24InspectorSetECSValueNode || (type metadata accessor for InspectorSetWorldValueNode(0), swift_dynamicCastClass()))
      {
        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
      }

      else
      {
      }
    }

    v6 = v28;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v23 = sub_1AFDFE108();
    if (v23)
    {
      v24 = v23;
      v7 = sub_1AFC892CC(v23, 0);

      sub_1AF56E010(v7 + 32, v24, v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    v7 = v6;
  }

  v28 = v7;
  sub_1AF9251E0(&v28);

  v8 = v28;
  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    v9 = sub_1AFDFE108();
  }

  else
  {
    v9 = *(v28 + 16);
  }

  v27 = v9 - 1;
  if (v9 <= 1)
  {
  }

  else
  {
    v10 = 0;
    v26 = v8 & 0xC000000000000001;
    do
    {
      if (v26)
      {
        v11 = MEMORY[0x1B2719C70](v10 + 1, v8);
        v12 = MEMORY[0x1B2719C70](v10, v8);
        v14 = v12;
      }

      else
      {
        v15 = v8 + 8 * v10;
        v14 = *(v15 + 32);
        v11 = *(v15 + 40);
      }

      MEMORY[0x1EEE9AC00](v12, v13);
      v25[6] = sub_1AF92EF34;
      v25[7] = v11;
      MEMORY[0x1EEE9AC00](v16, v17);
      v25[2] = sub_1AF92EF78;
      v25[3] = v18;
      sub_1AF3FC1C0(sub_1AF92EF58, v25, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
      v19 = sub_1AF449CC8();

      *(a1 + 16) = v19;

      v20 = *(v14 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + 16) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_1AFC0DC4C(v20);
        *(v14 + 16) = v20;
      }

      *(v20 + 4) = v11;
      *(v20 + 5) = 0;

      ++v10;
    }

    while (v27 != v10);
  }
}

uint64_t sub_1AF92658C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    v3 = sub_1AFDFE108();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B2719C70](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      if (*v5 == _TtC3VFX29InspectorSetParticleValueNode)
      {
        sub_1AFDFE328();
        sub_1AFDFE398();
        sub_1AFDFE3A8();
        sub_1AFDFE348();
      }

      else
      {
      }
    }

    v6 = v28;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v23 = sub_1AFDFE108();
    if (v23)
    {
      v24 = v23;
      v7 = sub_1AFC892CC(v23, 0);

      sub_1AF56E010(v7 + 32, v24, v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    v7 = v6;
  }

  v28 = v7;
  sub_1AF9251E0(&v28);

  v8 = v28;
  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    v9 = sub_1AFDFE108();
  }

  else
  {
    v9 = *(v28 + 16);
  }

  v27 = v9 - 1;
  if (v9 <= 1)
  {
  }

  else
  {
    v10 = 0;
    v26 = v8 & 0xC000000000000001;
    do
    {
      if (v26)
      {
        v11 = MEMORY[0x1B2719C70](v10 + 1, v8);
        v12 = MEMORY[0x1B2719C70](v10, v8);
        v14 = v12;
      }

      else
      {
        v15 = v8 + 8 * v10;
        v14 = *(v15 + 32);
        v11 = *(v15 + 40);
      }

      MEMORY[0x1EEE9AC00](v12, v13);
      v25[6] = sub_1AF92E8D4;
      v25[7] = v11;
      MEMORY[0x1EEE9AC00](v16, v17);
      v25[2] = sub_1AF915248;
      v25[3] = v18;
      sub_1AF3FC1C0(sub_1AF92E8FC, v25, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
      v19 = sub_1AF449CC8();

      *(a1 + 16) = v19;

      v20 = *(v14 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + 16) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_1AFC0DC4C(v20);
        *(v14 + 16) = v20;
      }

      *(v20 + 4) = v11;
      *(v20 + 5) = 0;

      ++v10;
    }

    while (v27 != v10);
  }
}

uint64_t sub_1AF926958()
{
  v0 = sub_1AF43F2F8(MEMORY[0x1E69E7CC0]);
  v1 = sub_1AF932728();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_1AFDFE108();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_36:

    goto LABEL_37;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_36;
  }

LABEL_3:
  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2719C70](i, v2);
    }

    else
    {
    }

    type metadata accessor for StartNode(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(*(v6 + 16) + 32);
      if (*v7 == _TtC3VFX29InspectorSetParticleValueNode)
      {
        v8 = 0;
        v28[0] = *(v7 + OBJC_IVAR____TtC3VFX29InspectorSetParticleValueNode_stage);
      }

      else
      {
        type metadata accessor for OnTriggerNode(0);
        v9 = swift_dynamicCastClass();
        if (!v9)
        {
          goto LABEL_17;
        }

        *v28 = *(v9 + OBJC_IVAR____TtC3VFX13OnTriggerNode_eventType);
        v10 = *v28;
        v11 = *(*v9 + 320);

        v11(&v28[8], v10);

        v8 = 1;
      }
    }

    else
    {
      type metadata accessor for OnFirstFrameNode(0);
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for OnUpdateNode(0);
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for OnParticleStageNode(0);
          v21 = swift_dynamicCastClass();
          if (v21)
          {
            v8 = 0;
            v28[0] = *(v21 + OBJC_IVAR____TtC3VFX19OnParticleStageNode_stage);
            goto LABEL_18;
          }
        }

LABEL_17:
        v8 = 2;
        memset(v28, 0, sizeof(v28));
        goto LABEL_18;
      }

      *v28 = 1;
      memset(&v28[8], 0, 33);
      v8 = 2;
    }

LABEL_18:
    v29 = v8;
    if (v0[2] && (v12 = sub_1AF41AED0(v28), (v13 & 1) != 0))
    {
      v27 = *(v0[7] + 8 * v12);
    }

    else
    {
      v27 = MEMORY[0x1E69E7CC0];
    }

    MEMORY[0x1B2718E00](v14);
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
    v15 = v27;
    sub_1AF447040(v28, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v0;
    v17 = sub_1AF41AED0(v26);
    v19 = v18;
    if (v0[3] < (v0[2] + ((v18 & 1) == 0)))
    {
      sub_1AF83BD58(v0[2] + ((v18 & 1) == 0), isUniquelyReferenced_nonNull_native);
      v17 = sub_1AF41AED0(v26);
      if ((v19 & 1) != (v20 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

LABEL_28:
      if ((v19 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v22 = v17;
    sub_1AF84CC48();
    v17 = v22;
    v0 = v25;
    if ((v19 & 1) == 0)
    {
LABEL_4:
      v0[(v17 >> 6) + 8] |= 1 << v17;
      v5 = v17;
      sub_1AF447040(v26, v0[6] + 48 * v17);
      *(v0[7] + 8 * v5) = v15;

      sub_1AF44709C(v26);
      sub_1AF44709C(v28);
      ++v0[2];
      continue;
    }

LABEL_29:
    *(v0[7] + 8 * v17) = v15;

    sub_1AF44709C(v26);
    sub_1AF44709C(v28);
  }

LABEL_37:

  v23 = sub_1AF92E264(v0);

  return v23;
}

uint64_t sub_1AF926DC4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v279 = a5;
  v275 = type metadata accessor for TriggerScript(0);
  MEMORY[0x1EEE9AC00](v275, v10);
  v274 = &v251 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ParticleUpdateScript(0);
  MEMORY[0x1EEE9AC00](updated, v12);
  v271 = &v251 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  inited = type metadata accessor for ParticleInitScript(0);
  MEMORY[0x1EEE9AC00](inited, v14);
  v270 = &v251 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = type metadata accessor for GraphScript(0);
  MEMORY[0x1EEE9AC00](v278, v16);
  v277 = &v251 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = a3;
  if (a2)
  {
    swift_getObjectType();
    v17 = sub_1AF92975C();
    v20 = v18 == 0;
    if (v18)
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    v286 = v21;
  }

  else
  {
    v286 = 0;
    v20 = 1;
  }

  *&v290 = 0;
  MEMORY[0x1EEE9AC00](v17, v18);
  *(&v251 - 4) = &v290;
  *(&v251 - 3) = sub_1AF9298B4;
  MEMORY[0x1EEE9AC00](v22, v23);
  v249 = sub_1AF92DD30;
  v250 = v24;
  v25 = MEMORY[0x1E69E7CC0];
  *&v297 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  *(&v297 + 1) = v26;
  sub_1AF412AA8(sub_1AF9122F0, (&v251 - 4), 1, 0x1000000000000000uLL, 0, v25, &v297);
  if (v5)
  {
    goto LABEL_184;
  }

  v288 = v20;
  v282 = a2;

  v29 = v290;
  if (v290)
  {
  }

  v280 = v29;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = MEMORY[0x1E69E7CC0];
  sub_1AF3FB9C8(sub_1AF92DD50, (&v251 - 4), 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
  v31 = sub_1AF449CC8();

  *(a1 + 24) = v31;

  MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v249 = sub_1AF92DD70;
  v250 = v36;
  sub_1AF3FB9C8(sub_1AF92EF04, (&v251 - 4), 0, 0x1000000000000000uLL, 0, v30);
  v37 = sub_1AF449CC8();

  *(a1 + 24) = v37;

  v38 = v288;
  sub_1AF99D45C(v286, v288, a4);
  sub_1AF9211E0(1, a4);
  v287 = 0;
  v265 = sub_1AF932954();

  v40 = swift_allocObject();
  v42 = v40;
  v40[16] = 0;
  v43 = v282;
  if (v282)
  {
    v289 = &unk_1F25D71B0;
    v40 = swift_dynamicCastObjCProtocolConditional();
    if (v40)
    {
      v40 = [v40 world];
      v44 = v40;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  a2 = &v251;
  MEMORY[0x1EEE9AC00](v40, v41);
  *(&v251 - 6) = a4;
  *(&v251 - 5) = v42;
  *(&v251 - 4) = v44;
  *(&v251 - 3) = v43;
  MEMORY[0x1EEE9AC00](v45, v46);
  v249 = sub_1AF92DDFC;
  v250 = v47;
  v317 = v43;
  v48 = MEMORY[0x1E69E7CC0];
  *&v297 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  *(&v297 + 1) = v49;
  v50 = v287;
  sub_1AF412D4C(sub_1AF441EF8, (&v251 - 4), 1, 0x1000000000000000uLL, 0, v48, &v297);
  if (v50)
  {
LABEL_184:

    __break(1u);
LABEL_185:

    __break(1u);
LABEL_186:
    sub_1AFDFF1A8();
    __break(1u);
LABEL_187:
    *&v311[0] = 0;
    *(&v311[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF3AC20);
    sub_1AFDFE458();
    LODWORD(v250) = 0;
    v249 = 402;
    sub_1AFDFE518();
    __break(1u);

    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v42[16])
  {
    sub_1AF93E174();
  }

  MEMORY[0x1EEE9AC00](v51, v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v55 = MEMORY[0x1E69E7CC0];
  *&v297 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  *(&v297 + 1) = v56;
  v57 = v265;
  sub_1AF412D4C(sub_1AF449DD8, (&v251 - 4), 1, 0x1000000000000000uLL, 0, v55, &v297);

  MEMORY[0x1EEE9AC00](v58, v59);
  MEMORY[0x1EEE9AC00](v60, v61);
  v249 = sub_1AF92DE3C;
  v250 = v62;
  v63 = MEMORY[0x1E69E7CC0];
  *&v297 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  *(&v297 + 1) = v64;
  sub_1AF412D4C(sub_1AF449DD8, (&v251 - 4), 1, 0x1000000000000000uLL, 0, v63, &v297);
  a2 = 0;

  type metadata accessor for GraphScopeChecker();
  swift_allocObject();

  v65 = a4;
  sub_1AF93411C(v57, v65);
  v66 = sub_1AF9359F4();

  type metadata accessor for GraphRunModeChecker();
  v67 = swift_allocObject();
  *(v67 + 16) = v57;
  *(v67 + 24) = v65;

  v276 = v65;
  v68 = sub_1AF9361BC();
  swift_setDeallocating();

  swift_deallocClassInstance();
  if (v66 & 1) != 0 && (v68)
  {
    v287 = 0;
    v69 = v276;
  }

  else
  {
    v69 = v276;
    sub_1AF93E174();
    v287 = 0;
  }

  v70 = sub_1AF43F1BC(MEMORY[0x1E69E7CC0]);
  v268 = sub_1AF926958();
  if (v38)
  {
    goto LABEL_31;
  }

  v71 = v286;
  if (v286 == 0xFFFFFFFF)
  {
    v303 = 0;
    v301 = 0u;
    v302 = 0u;
    v299 = 0u;
    v300 = 0u;
    v298 = 0u;
    v297 = 0u;
  }

  else
  {

    sub_1AF3CA1CC(v71, &v297);
  }

  v294 = v301;
  v295 = v302;
  v290 = v297;
  v291 = v298;
  v296 = v303;
  v292 = v299;
  v293 = v300;
  if (!v297)
  {
LABEL_31:
    v267 = 0;
  }

  else
  {
    v267 = BYTE13(v293);
    sub_1AF92E794(&v290, &unk_1EB634140, &type metadata for EmitterDescription, MEMORY[0x1E69E6720], sub_1AF89FF4C);
  }

  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  v252 = (v72 + 16);
  v73 = swift_allocObject();
  swift_weakInit();
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  *(v74 + 24) = v72;
  v263 = v74;
  v75 = v268;
  v76 = 1 << *(v268 + 32);
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v78 = v77 & *(v268 + 64);
  v260 = 0x80000001AFF3AC60;
  v261 = (v76 + 63) >> 6;
  v253 = v72;

  v79 = 0;
  v80 = v75 + 72;
  v259 = xmmword_1AFE85E00;
  v256 = xmmword_1AFE22A20;
  v255 = xmmword_1AFE431C0;
  v266 = v75 + 72;
  if (!v78)
  {
    goto LABEL_36;
  }

LABEL_35:
  v81 = v79;
LABEL_43:
  v281 = (v78 - 1) & v78;
  v84 = __clz(__rbit64(v78)) | (v81 << 6);
  v85 = v268;
  sub_1AF447040(*(v268 + 48) + 48 * v84, &v312);
  v86 = *(*(v85 + 56) + 8 * v84);
  sub_1AF4473A0(&v312, &v290);
  *&v293 = v86;

  while (1)
  {
    sub_1AF92E9D8(&v290, &v297, &qword_1EB6406C8, sub_1AF92DE60);
    v87 = v300;
    if (!v300)
    {
      break;
    }

    sub_1AF4473A0(&v297, &v290);
    sub_1AF447040(&v290, &v312);
    v317 = v87;
    v284 = v70;
    if (!v316)
    {
      v103 = swift_allocObject();
      v269 = &v251;
      *(v103 + 16) = 0;
      LOBYTE(v312) = 0;
      MEMORY[0x1EEE9AC00](v103, v104);
      *(&v251 - 6) = v87;
      *(&v251 - 5) = v69;
      *(&v251 - 4) = v105;
      *(&v251 - 3) = 0xD000000000000012;
      v249 = v260;
      v250 = &v312;
      v106 = v287;
      sub_1AF3FC1C0(sub_1AF92EF1C, (&v251 - 8), 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
      v107 = sub_1AF449CC8();

      v87[2] = v107;

      if (*(v103 + 16) == 1)
      {
        sub_1AF93E174();
        v70 = v284;
        if (v106)
        {
          goto LABEL_183;
        }

        v96 = 0;
      }

      else
      {
        v96 = v106;
        v70 = v284;
      }

      if (v312 == 1)
      {
        sub_1AF938D88();
      }

LABEL_57:
      if ((v267 & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    v88 = sub_1AF44709C(&v312);
    LOBYTE(v311[0]) = 0;
    MEMORY[0x1EEE9AC00](v88, v89);
    MEMORY[0x1EEE9AC00](v90, v91);
    v249 = sub_1AF92DECC;
    v250 = v92;
    v93 = MEMORY[0x1E69E7CC0];
    *&v312 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    *(&v312 + 1) = v94;
    v95 = v287;
    sub_1AF412D4C(sub_1AF9122F0, (&v251 - 4), 1, 0x1000000000000000uLL, 0, v93, &v312);
    if (v95)
    {
      goto LABEL_185;
    }

    v96 = 0;

    if (v311[0])
    {
      goto LABEL_57;
    }

    v97 = v317;
    v98 = [objc_allocWithZone(type metadata accessor for GraphDiagnostics(0)) init];
    v99 = swift_allocObject();
    v287 = &v251;
    *(v99 + 16) = 0;
    LOBYTE(v312) = 0;
    MEMORY[0x1EEE9AC00](v99, v100);
    *(&v251 - 6) = v97;
    *(&v251 - 5) = v98;
    *(&v251 - 4) = v101;
    *(&v251 - 3) = 0;
    v249 = 0xE000000000000000;
    v250 = &v312;
    sub_1AF3FC1C0(sub_1AF92DEE8, (&v251 - 8), 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
    v102 = sub_1AF449CC8();

    v97[2] = v102;

    sub_1AF93E174();
    v96 = 0;
    v70 = v284;
    if (v312 == 1)
    {
      sub_1AF938D88();
    }

    v69 = v276;
    if ((v267 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_62:
    sub_1AF447040(&v290, &v312);
    if (v316)
    {
      sub_1AF44709C(&v312);
LABEL_64:
      sub_1AF447040(&v290, &v312);
      if (!v316 || (sub_1AF44709C(&v312), !v280))
      {
        v117 = 0;
        v118 = v96;
        goto LABEL_82;
      }

      v108 = swift_allocObject();
      v110 = v108;
      *(v108 + 16) = 0;
      if (qword_1EB6325F0 != -1)
      {
        v108 = swift_once();
      }

      v287 = &v251;
      MEMORY[0x1EEE9AC00](v108, v109);
      v249 = v69;
      v250 = v110;
      v111 = v317;
      sub_1AF3FC1C0(sub_1AF92E754, (&v251 - 4), v112, v113, v114, MEMORY[0x1E69E7CC0]);
      v70 = v69;
      v115 = v96;
      v116 = sub_1AF449CC8();

      v111[2] = v116;

      if (*(v110 + 16) != 1)
      {

        v117 = 3;
LABEL_80:
        v118 = v115;
        v69 = v70;
        goto LABEL_81;
      }

      sub_1AF93E174();
      if (v115)
      {
        goto LABEL_183;
      }

      v117 = 3;
      goto LABEL_77;
    }

    v119 = swift_allocObject();
    v121 = v119;
    *(v119 + 16) = 0;
    if (qword_1EB6325F0 != -1)
    {
      v119 = swift_once();
    }

    v287 = &v251;
    MEMORY[0x1EEE9AC00](v119, v120);
    v249 = v69;
    v250 = v121;
    v122 = v317;
    sub_1AF3FC1C0(sub_1AF92EF40, (&v251 - 4), v123, v124, v125, MEMORY[0x1E69E7CC0]);
    v70 = v69;
    v115 = v96;
    v126 = sub_1AF449CC8();

    v122[2] = v126;

    if (*(v121 + 16) != 1)
    {

      v117 = 2;
      goto LABEL_80;
    }

    sub_1AF93E174();
    if (v115)
    {
LABEL_183:

      sub_1AF44709C(&v290);

      sub_1AF929900(v252, v69);

      goto LABEL_11;
    }

    v117 = 2;
LABEL_77:
    v118 = 0;
LABEL_81:
    v70 = v284;
LABEL_82:
    sub_1AF937E48(v282, v283, v285, v69);
    v287 = v118;
    if (v118)
    {
      sub_1AF44709C(&v290);

      goto LABEL_182;
    }

    LODWORD(v269) = v117;
    if (v288 || !sub_1AFABF13C(v286))
    {
      if (sub_1AF932A58(v69))
      {
        v127 = sub_1AF92E558(&v290);
        v132 = v131;
        v133 = byte_1EB6C3348;
        type metadata accessor for GraphCodeGen();
        swift_allocObject();

        v135 = sub_1AF94C4E4(v134, v117, v133);
        *(v135 + 40) = 1;
        *(v135 + 16) = v259;

        *(v135 + 32) = v279;

        v136 = v287;
        sub_1AF95665C(v69);
        v287 = v136;
        if (v136)
        {
          sub_1AF44709C(&v290);

LABEL_182:

          sub_1AF929900(v252, v69);

LABEL_11:
          byte_1EB6C3349 = 0;
          return v70;
        }

        v137 = sub_1AF95644C(v127, v132);
        v129 = v138;
        v140 = v139;
        v142 = v141;

        if (v142)
        {

          v127 = 0;
          v128 = 0;
          v129 = 0;
          v130 = 0;
          v70 = v284;
          a2 = 1;
        }

        else
        {
          v128 = v137;
          v143 = v140;
          v70 = v284;
          a2 = v132;
          v130 = v143;
        }
      }

      else
      {
        v127 = 0;
        a2 = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
      }
    }

    else
    {
      v127 = 0;
      v128 = 0;
      v129 = 0;
      v130 = 0;
      a2 = 1;
    }

    sub_1AF447040(&v290, &v312);
    if (!v316)
    {
      sub_1AF447040(&v312, v311);
      if (LOBYTE(v311[0]) == 5)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            v264 = v127;
            v150 = v128;
            v151 = *(updated + 40);
            v152 = type metadata accessor for ScriptIndex();
            v153 = v271;
            (*(*(v152 - 8) + 56))(&v271[v151], 1, 1, v152);
            *(v153 + 40) = 1;
            v154 = v263;
            *(v153 + 48) = sub_1AF92DE58;
            *(v153 + 56) = v154;
            *(v153 + 24) = 0x4020100u >> (8 * v269);
            sub_1AF89FF4C(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
            v155 = swift_allocObject();
            *(v155 + 16) = v255;
            *(v155 + 32) = v264;
            *(v155 + 40) = a2;
            *(v153 + 8) = v129;
            *(v153 + 16) = v155;
            *(v153 + 32) = v130;
            *v153 = v150;
            *(&v305 + 1) = updated;
            v306 = &off_1F255BB20;
            v156 = sub_1AF585714(&v304);
            sub_1AF92E010(v153, v156, type metadata accessor for ParticleUpdateScript);
            v308 = v304;
            *v309 = v305;
            *&v309[16] = v306;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v310[0] = v70;
            sub_1AF857470(&v308, &v290, isUniquelyReferenced_nonNull_native);
            sub_1AF92DF5C(v264, a2);

            sub_1AF44709C(&v290);
            v70 = v310[0];
            v158 = type metadata accessor for ParticleUpdateScript;
            goto LABEL_162;
          }

LABEL_111:
          sub_1AF447040(&v290, &v304);
          v308 = 0u;
          memset(v309, 0, sizeof(v309));
          v164 = swift_isUniquelyReferenced_nonNull_native();
          v310[0] = v70;
          v165 = sub_1AF41AED0(&v304);
          v167 = v166;
          if (v70[3] >= (v70[2] + ((v166 & 1) == 0)))
          {
            if ((v164 & 1) == 0)
            {
              v245 = v165;
              sub_1AF84D184();
              v165 = v245;
            }
          }

          else
          {
            sub_1AF83C6A4(v70[2] + ((v166 & 1) == 0), v164);
            v165 = sub_1AF41AED0(&v304);
            if ((v167 & 1) != (v168 & 1))
            {
              goto LABEL_186;
            }
          }

          v69 = v276;
          v70 = v310[0];
          if (v167)
          {
            sub_1AF85B4F8(&v308, *(v310[0] + 56) + 40 * v165);

            sub_1AF44709C(&v304);
LABEL_140:
            sub_1AF44709C(&v290);
LABEL_164:
            v80 = v266;
            v78 = v281;
LABEL_165:
            sub_1AF44709C(&v312);
            if (v78)
            {
              goto LABEL_35;
            }

            goto LABEL_36;
          }

          *(v310[0] + 8 * (v165 >> 6) + 64) |= 1 << v165;
          v219 = v165;
          sub_1AF447040(&v304, v70[6] + 48 * v165);
          v220 = v70[7] + 40 * v219;
          v221 = v308;
          v222 = *v309;
          *(v220 + 32) = *&v309[16];
          *v220 = v221;
          *(v220 + 16) = v222;

          sub_1AF44709C(&v304);
LABEL_143:
          sub_1AF44709C(&v290);
          ++v70[2];
          goto LABEL_164;
        }

LABEL_117:
        sub_1AF447040(&v290, &v304);
        v308 = 0uLL;
        *v309 = 0;
        *&v309[8] = v256;
        v175 = swift_isUniquelyReferenced_nonNull_native();
        v310[0] = v70;
        v176 = sub_1AF41AED0(&v304);
        v178 = v177;
        if (v70[3] >= (v70[2] + ((v177 & 1) == 0)))
        {
          if ((v175 & 1) == 0)
          {
            v246 = v176;
            sub_1AF84D184();
            v176 = v246;
          }
        }

        else
        {
          sub_1AF83C6A4(v70[2] + ((v177 & 1) == 0), v175);
          v176 = sub_1AF41AED0(&v304);
          if ((v178 & 1) != (v179 & 1))
          {
            goto LABEL_186;
          }
        }

        v69 = v276;
        v70 = v310[0];
        if (v178)
        {
          sub_1AF85B4F8(&v308, *(v310[0] + 56) + 40 * v176);

          sub_1AF44709C(&v304);
LABEL_148:
          sub_1AF44709C(&v290);
LABEL_151:
          v78 = v281;
          v80 = v266;
          goto LABEL_165;
        }

        *(v310[0] + 8 * (v176 >> 6) + 64) |= 1 << v176;
        v223 = v176;
        sub_1AF447040(&v304, v70[6] + 48 * v176);
        v224 = v70[7] + 40 * v223;
        v225 = v308;
        v226 = *v309;
        *(v224 + 32) = *&v309[16];
        *v224 = v225;
        *(v224 + 16) = v226;

        sub_1AF44709C(&v304);
LABEL_150:
        sub_1AF44709C(&v290);
        ++v70[2];
        goto LABEL_151;
      }

      if (LOBYTE(v311[0]) != 3)
      {
        goto LABEL_187;
      }

      if (!a2)
      {
        goto LABEL_117;
      }

      if (a2 == 1)
      {
        goto LABEL_111;
      }

      v264 = v127;
      v231 = v128;
      v232 = *(inited + 40);
      v233 = type metadata accessor for ScriptIndex();
      v153 = v270;
      (*(*(v233 - 8) + 56))(&v270[v232], 1, 1, v233);
      *(v153 + 40) = 1;
      v234 = v263;
      *(v153 + 48) = sub_1AF92DE58;
      *(v153 + 56) = v234;
      *v153 = 0x4020100u >> (8 * v269);
      sub_1AF89FF4C(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v235 = swift_allocObject();
      *(v235 + 16) = v255;
      *(v235 + 32) = v264;
      *(v235 + 40) = a2;
      *(v153 + 24) = v235;
      *(v153 + 32) = v130;
      *(v153 + 8) = v231;
      *(v153 + 16) = v129;
      *(&v305 + 1) = inited;
      v306 = &off_1F255BA00;
      v236 = sub_1AF585714(&v304);
      sub_1AF92E010(v153, v236, type metadata accessor for ParticleInitScript);
      v308 = v304;
      *v309 = v305;
      *&v309[16] = v306;

      v237 = swift_isUniquelyReferenced_nonNull_native();
      v310[0] = v70;
      sub_1AF857470(&v308, &v290, v237);
      sub_1AF92DF5C(v264, a2);

      sub_1AF44709C(&v290);
      v70 = v310[0];
      v158 = type metadata accessor for ParticleInitScript;
LABEL_162:
      v193 = v158;
      v194 = v153;
LABEL_163:
      sub_1AF92DFB0(v194, v193);
      v69 = v276;
      goto LABEL_164;
    }

    if (v316 == 1)
    {
      sub_1AF447040(&v312, v311);
      v144 = *&v311[0];
      sub_1AF447144(v311 + 8, v310);
      if (!a2)
      {
        v169 = v144;
        sub_1AF447040(&v290, &v304);
        v308 = 0uLL;
        *v309 = 0;
        *&v309[8] = v256;
        v170 = swift_isUniquelyReferenced_nonNull_native();
        v307 = v70;
        v171 = sub_1AF41AED0(&v304);
        v173 = v172;
        if (v70[3] >= (v70[2] + ((v172 & 1) == 0)))
        {
          if ((v170 & 1) == 0)
          {
            v244 = v171;
            sub_1AF84D184();
            v171 = v244;
          }
        }

        else
        {
          sub_1AF83C6A4(v70[2] + ((v172 & 1) == 0), v170);
          v171 = sub_1AF41AED0(&v304);
          if ((v173 & 1) != (v174 & 1))
          {
            goto LABEL_186;
          }
        }

        v69 = v276;
        v70 = v307;
        if (v173)
        {
          sub_1AF85B4F8(&v308, v307[7] + 40 * v171);

          sub_1AF44709C(&v304);
          sub_1AF4470F0(v310);
          goto LABEL_148;
        }

        v307[(v171 >> 6) + 8] |= 1 << v171;
        v215 = v171;
        sub_1AF447040(&v304, v70[6] + 48 * v171);
        v216 = v70[7] + 40 * v215;
        v217 = v308;
        v218 = *v309;
        *(v216 + 32) = *&v309[16];
        *v216 = v217;
        *(v216 + 16) = v218;

        sub_1AF44709C(&v304);
        sub_1AF4470F0(v310);
        goto LABEL_150;
      }

      v257 = v144;
      if (a2 == 1)
      {
        sub_1AF447040(&v290, &v304);
        v308 = 0u;
        memset(v309, 0, sizeof(v309));
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v307 = v70;
        v146 = sub_1AF41AED0(&v304);
        v148 = v147;
        if (v70[3] >= (v70[2] + ((v147 & 1) == 0)))
        {
          if ((v145 & 1) == 0)
          {
            v243 = v146;
            sub_1AF84D184();
            v146 = v243;
          }
        }

        else
        {
          sub_1AF83C6A4(v70[2] + ((v147 & 1) == 0), v145);
          v146 = sub_1AF41AED0(&v304);
          if ((v148 & 1) != (v149 & 1))
          {
            goto LABEL_186;
          }
        }

        v69 = v276;
        v70 = v307;
        if (v148)
        {
          sub_1AF85B4F8(&v308, v307[7] + 40 * v146);

          sub_1AF44709C(&v304);
          sub_1AF4470F0(v310);
          goto LABEL_140;
        }

        v307[(v146 >> 6) + 8] |= 1 << v146;
        v211 = v146;
        sub_1AF447040(&v304, v70[6] + 48 * v146);
        v212 = v70[7] + 40 * v211;
        v213 = v308;
        v214 = *v309;
        *(v212 + 32) = *&v309[16];
        *v212 = v213;
        *(v212 + 16) = v214;

        sub_1AF44709C(&v304);
        sub_1AF4470F0(v310);
        goto LABEL_143;
      }

      v258 = v130;
      v180 = v275;
      v254 = v129;
      v262 = v128;
      v181 = *(v275 + 44);
      v182 = type metadata accessor for ScriptIndex();
      v183 = *(*(v182 - 8) + 56);
      v184 = v127;
      v264 = v127;
      v185 = v274;
      v183(&v274[v181], 1, 1, v182);
      v186 = v185 + *(v180 + 52);
      *v186 = 0u;
      *(v186 + 16) = 0u;
      *(v186 + 32) = 6;
      *(v185 + 41) = 1;
      v187 = v263;
      *(v185 + 48) = sub_1AF92DE58;
      *(v185 + 56) = v187;
      v188 = 0x4020100u >> (8 * v269);
      v269 = *(v180 + 48);
      *(v185 + 24) = v188;
      sub_1AF89FF4C(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v189 = swift_allocObject();
      *(v189 + 16) = v255;
      *(v189 + 32) = v184;
      *(v189 + 40) = a2;
      *(v185 + 32) = v189;
      v190 = v262;
      *v185 = v258;
      *(v185 + 8) = v190;
      *(v185 + 16) = v254;
      *(v185 + 40) = 0;
      *(v269 + v185) = v257;

      sub_1AF92DF00(v310, v186);
      *(&v305 + 1) = v180;
      v306 = &off_1F255BBE8;
      v191 = sub_1AF585714(&v304);
      sub_1AF92E010(v185, v191, type metadata accessor for TriggerScript);
      v308 = v304;
      *v309 = v305;
      *&v309[16] = v306;
      v192 = swift_isUniquelyReferenced_nonNull_native();
      v307 = v70;
      sub_1AF857470(&v308, &v290, v192);
      sub_1AF92DF5C(v264, a2);

      sub_1AF4470F0(v310);
      sub_1AF44709C(&v290);
      v70 = v307;
      v193 = type metadata accessor for TriggerScript;
      v194 = v185;
      goto LABEL_163;
    }

    sub_1AF44709C(&v312);
    if (!a2)
    {
      sub_1AF447040(&v290, &v312);
      memset(v311, 0, 24);
      *(&v311[1] + 8) = v256;
      v195 = swift_isUniquelyReferenced_nonNull_native();
      *&v304 = v70;
      v160 = sub_1AF41AED0(&v312);
      v197 = v196;
      if (v70[3] >= (v70[2] + ((v196 & 1) == 0)))
      {
        if ((v195 & 1) == 0)
        {
          v248 = v160;
          sub_1AF84D184();
          v160 = v248;
        }
      }

      else
      {
        sub_1AF83C6A4(v70[2] + ((v196 & 1) == 0), v195);
        v160 = sub_1AF41AED0(&v312);
        if ((v197 & 1) != (v198 & 1))
        {
          goto LABEL_186;
        }
      }

      v69 = v276;
      v70 = v304;
      if (v197)
      {
LABEL_159:
        sub_1AF85B4F8(v311, v70[7] + 40 * v160);

        sub_1AF44709C(&v312);
        sub_1AF44709C(&v290);
        goto LABEL_177;
      }

      goto LABEL_160;
    }

    if (a2 == 1)
    {
      sub_1AF447040(&v290, &v312);
      memset(v311, 0, 40);
      v159 = swift_isUniquelyReferenced_nonNull_native();
      *&v304 = v70;
      v160 = sub_1AF41AED0(&v312);
      v162 = v161;
      if (v70[3] >= (v70[2] + ((v161 & 1) == 0)))
      {
        if ((v159 & 1) == 0)
        {
          v247 = v160;
          sub_1AF84D184();
          v160 = v247;
        }
      }

      else
      {
        sub_1AF83C6A4(v70[2] + ((v161 & 1) == 0), v159);
        v160 = sub_1AF41AED0(&v312);
        if ((v162 & 1) != (v163 & 1))
        {
          goto LABEL_186;
        }
      }

      v69 = v276;
      v70 = v304;
      if (v162)
      {
        goto LABEL_159;
      }

LABEL_160:
      *(v304 + 8 * (v160 >> 6) + 64) |= 1 << v160;
      v227 = v160;
      sub_1AF447040(&v312, v70[6] + 48 * v160);
      v228 = v70[7] + 40 * v227;
      v229 = v311[0];
      v230 = v311[1];
      *(v228 + 32) = *&v311[2];
      *v228 = v229;
      *(v228 + 16) = v230;

      sub_1AF44709C(&v312);
      sub_1AF44709C(&v290);
      ++v70[2];
      goto LABEL_177;
    }

    v199 = v128;
    v200 = *(v278 + 44);
    v201 = type metadata accessor for ScriptIndex();
    v202 = *(*(v201 - 8) + 56);
    v258 = v130;
    v203 = v127;
    v204 = v277;
    v205 = &v277[v200];
    v206 = v129;
    v202(v205, 1, 1, v201);
    v204[41] = 1;
    v207 = v263;
    *(v204 + 6) = sub_1AF92DE58;
    *(v204 + 7) = v207;
    v204[24] = 0x4020100u >> (8 * v269);
    sub_1AF89FF4C(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v208 = swift_allocObject();
    *(v208 + 16) = v255;
    v264 = v203;
    *(v208 + 32) = v203;
    *(v208 + 40) = a2;
    v209 = v258;
    *(v204 + 4) = v208;
    *v204 = v209;
    *(v204 + 1) = v199;
    v262 = v199;
    *(v204 + 2) = v206;
    sub_1AF447040(&v290, &v312);
    v210 = v312;
    if (!v316)
    {
      v238 = v312;

      if (v238 == 3)
      {
        v239 = 13;
      }

      else
      {
        v239 = 14;
      }

      v69 = v276;
      goto LABEL_176;
    }

    v69 = v276;
    if (v316 == 1)
    {

      sub_1AF4470F0(&v312 + 8);
    }

    else
    {
      if (v315 || *(&v313 + 1) | v314 | v312 | v313 | *(&v312 + 1))
      {

        v239 = 1;
        goto LABEL_176;
      }
    }

    v239 = 0;
LABEL_176:
    v240 = v277;
    v277[40] = v239;
    *(&v313 + 1) = v278;
    v314 = &off_1F255B588;
    v241 = sub_1AF585714(&v312);
    sub_1AF92E010(v240, v241, type metadata accessor for GraphScript);
    v311[0] = v312;
    v311[1] = v313;
    *&v311[2] = v314;
    v242 = swift_isUniquelyReferenced_nonNull_native();
    *&v304 = v70;
    sub_1AF857470(v311, &v290, v242);
    sub_1AF92DF5C(v264, a2);

    sub_1AF44709C(&v290);
    v70 = v304;
    sub_1AF92DFB0(v240, type metadata accessor for GraphScript);
LABEL_177:
    v80 = v266;
    v78 = v281;
    if (v281)
    {
      goto LABEL_35;
    }

LABEL_36:
    if (v261 <= v79 + 1)
    {
      v82 = v79 + 1;
    }

    else
    {
      v82 = v261;
    }

    v83 = v82 - 1;
    while (1)
    {
      v81 = v79 + 1;
      if (v79 + 1 >= v261)
      {
        break;
      }

      v78 = *(v80 + 8 * v79++);
      if (v78)
      {
        v79 = v81;
        goto LABEL_43;
      }
    }

    v281 = 0;
    *&v293 = 0;
    v291 = 0u;
    v292 = 0u;
    v79 = v83;
    v290 = 0u;
  }

  sub_1AF929900(v252, v69);

  byte_1EB6C3349 = 0;
  return v70;
}

unint64_t sub_1AF92949C()
{
  v1 = [v0 coreEntity];
  v2 = v1 & 0xFFFFFFFF00000000;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v0;
    if ([v5 coreEntityManager])
    {
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();

      sub_1AF449D40(&v12, &v13);
      sub_1AF441150(&v13, v14);
      v7 = v2 | v3;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v13);
      return v7;
    }
  }

  v8 = [v0 behaviorGraph];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v8 entityManager];

  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  type metadata accessor for EntityManager();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v2 | v3;
}

unint64_t sub_1AF929618()
{
  v1 = [v0 coreEntity];
  v2 = v1 & 0xFFFFFFFF00000000;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  if ([v0 coreEntityManager])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
    sub_1AF449D40(&v9, &v10);
    sub_1AF441150(&v10, v11);
    v4 = v2 | v3;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v10);
  }

  else
  {
    v5 = [v0 behaviorGraph];
    if (v5 && (v6 = v5, v7 = [v5 entityManager], v6, sub_1AFDFDFB8(), swift_unknownObjectRelease(), type metadata accessor for EntityManager(), (swift_dynamicCast() & 1) != 0))
    {

      return v2 | v3;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1AF92975C()
{
  v1 = sub_1AF9A30B4();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v0;
    if ([v3 coreEntityManager])
    {
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();

      sub_1AF449D40(&v9, &v10);
      sub_1AF441150(&v10, v11);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v10);
      return v1;
    }
  }

  v5 = [v0 behaviorGraph];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 entityManager];

  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  type metadata accessor for EntityManager();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v1;
}

void sub_1AF929900(void **a1, void *a2)
{
  v4 = *(swift_getObjectType() + 192);
  v5 = v4(a2);
  v6 = *a1;
  *a1 = v5;
}

uint64_t sub_1AF929970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AFDFCA88();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AFDFCAC8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(a4 + 16);
    if (v18)
    {
      v29 = result;
      v30 = v12;
      sub_1AF615168();
      v19 = v18;
      v27 = sub_1AFDFDB08();
      v20 = swift_allocObject();
      v28 = v8;
      v21 = v20;
      swift_weakInit();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = a1;
      v22[4] = a2;
      v22[5] = v19;
      aBlock[4] = sub_1AF92E7F4;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AFCDA044;
      aBlock[3] = &unk_1F2547D88;
      v23 = _Block_copy(aBlock);
      v24 = v19;

      sub_1AFDFCAA8();
      v31 = MEMORY[0x1E69E7CC0];
      sub_1AF92E800(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
      sub_1AF92EB14(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1AF6FD510();
      sub_1AFDFE058();
      v25 = v27;
      MEMORY[0x1B2719530](0, v16, v11, v23);
      _Block_release(v23);

      (*(v28 + 8))(v11, v7);
      (*(v13 + 8))(v16, v30);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AF929D10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v71 = a3;
  v8 = HIDWORD(a1);
  if (HIDWORD(a1))
  {
    v9 = 0;
  }

  else
  {
    v9 = a1 == -1;
  }

  v10 = v9;
  if (v9 || (, v11 = sub_1AF3CAA18(a1), v13 = v12, v15 = v14, , !v11))
  {
    v11 = sub_1AF42C520(MEMORY[0x1E69E7CC0]);

    v16 = 0;
    v70 = 0;
    v15 = 0xFFFFFFFFLL;
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v70 = HIDWORD(v13);
    v16 = HIDWORD(v15);
  }

  sub_1AF85B49C(a4, &v86);
  if (v87 == 1)
  {
    if (!v10)
    {
LABEL_38:
      v73 = v11;
      v74 = __PAIR64__(v70, v13);
      v75 = __PAIR64__(v16, v15);

      MEMORY[0x1EEE9AC00](v45, v46);

      sub_1AFC75668(0, sub_1AF92E9B0);
      swift_bridgeObjectRelease_n();
    }
  }

  v68 = v10;
  v69 = v15;
  v67 = v13;
  if (!v87)
  {
    v17 = *(v11 + 16);
    v66 = v8;
    if (v17 && (v18 = sub_1AF449CB8(v71), (v19 & 1) != 0))
    {
      v20 = (*(v11 + 56) + 8 * v18);
      v21 = *v20;
      v22 = v20[1] << 32;
    }

    else
    {
      v22 = 0;
      v21 = 0xFFFFFFFFLL;
    }

    v29 = sub_1AF3CB520(v22 | v21);
    if (v29)
    {
      sub_1AFD08440(v5, v29, v30);
    }

    v31 = v16;
    v32 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v32)
    {
      v33 = *(v32 + 80);
      swift_unknownObjectWeakLoadStrong();
      v34 = *(v32 + 56);
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    swift_unknownObjectUnownedInit();
    v73 = v5;
    v75 = v34;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v76) = v33;
    sub_1AF6C8594(v22 | v21);
    sub_1AF579490(&v73);
    if (v33)
    {
      v38 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v38 ^ 1);
    }

    v39 = sub_1AF449CB8(v71);
    v40 = v68;
    LODWORD(v15) = v69;
    LODWORD(v16) = v31;
    if (v41)
    {
      v42 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v11;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF846E40();
        v11 = v73;
      }

      sub_1AF6B2F08(v42, v11);
    }

    LOBYTE(v81[0]) = 3;
    v84 = 0;
    sub_1AFDFF288();
    sub_1AF933064();
    v44 = sub_1AFDFF2F8();
    sub_1AF44709C(v81);
    if (v44 == v71)
    {
      v70 = 0;
      LODWORD(v13) = -1;
      if (!v68)
      {
        goto LABEL_38;
      }
    }

    LOBYTE(v81[0]) = 5;
    v84 = 0;
    sub_1AFDFF288();
    sub_1AF933064();
    v48 = sub_1AFDFF2F8();
    sub_1AF44709C(v81);
    if (v48 == v71)
    {
      LODWORD(v15) = -1;
      LODWORD(v16) = 0;
    }

LABEL_64:
    LODWORD(v13) = v67;
    if (!v40)
    {
      goto LABEL_38;
    }
  }

  sub_1AF0FBA54(&v86, v85);
  v23 = *(v11 + 16);
  v65 = v16;
  if (v23)
  {
    v24 = sub_1AF449CB8(v71);
    if (v25)
    {
      v26 = (*(v11 + 56) + 8 * v24);
      v28 = *v26;
      v27 = v26[1];
LABEL_54:
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v73 = v11;
      sub_1AF852D2C(v28 | (v27 << 32), v71, v56);
      v11 = v73;
      LOBYTE(v81[0]) = 3;
      v84 = 0;
      sub_1AFDFF288();
      sub_1AF933064();
      v57 = sub_1AFDFF2F8();
      v58 = sub_1AF44709C(v81);
      if (v57 == v71)
      {
        v67 = v28;
        v60 = v27;
        v61 = &v88;
      }

      else
      {
        LOBYTE(v81[0]) = 5;
        v84 = 0;
        sub_1AFDFF288();
        sub_1AF933064();
        v62 = sub_1AFDFF2F8();
        v58 = sub_1AF44709C(v81);
        if (v62 == v71)
        {
          v63 = v28;
        }

        else
        {
          v63 = v69;
        }

        v69 = v63;
        if (v62 == v71)
        {
          v60 = v27;
        }

        else
        {
          v60 = v65;
        }

        v61 = &v87;
      }

      *(v61 - 32) = v60;
      MEMORY[0x1EEE9AC00](v58, v59);
      sub_1AFC75668(0, sub_1AF92E954);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v85);
      v40 = v68;
      LODWORD(v15) = v69;
      LODWORD(v16) = v65;
      goto LABEL_64;
    }
  }

  sub_1AF85B49C(a4, &v73);
  v35 = v76;
  sub_1AF92E918(&v73);
  if (v35 >= 2)
  {
    v66 = v8;
    v64 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
    v36 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v36)
    {
      v37 = *(v36 + 80);
      swift_unknownObjectWeakLoadStrong();
      v36 = *(v36 + 56);
    }

    else
    {
      v37 = 0;
    }

    v82 = 0;
    swift_unknownObjectUnownedInit();
    v81[0] = v5;
    v82 = v36;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v83 = v37;
    swift_unownedRetainStrong();
    v49 = **(v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

    LOBYTE(v73) = 1;
    v50 = MEMORY[0x1E69E7CC0];
    v28 = sub_1AF62C02C(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v49);
    v27 = HIDWORD(v28);
    swift_unownedRetainStrong();

    if (v37)
    {
      swift_unownedRetainStrong();
      v72 = 1;
      v73 = v28;
      v74 = v5;
      v75 = v50;
      v76 = v50;
      v77 = 1;
      v78 = 0;
      v79 = 1;
      v80 = 2;
      sub_1AF6C67D0(&v73);

      sub_1AF57955C(&v73);
    }

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v51 = a1;
    sub_1AF579490(v81);
    if (v37)
    {
      v52 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v52 ^ 1);
    }

    v53 = *(v5 + v64);
    if (v53)
    {
      v54 = *(v53 + 80);
      swift_unknownObjectWeakLoadStrong();
      v53 = *(v53 + 56);
    }

    else
    {
      v54 = 0;
    }

    v75 = 0;
    swift_unknownObjectUnownedInit();
    v73 = v5;
    v75 = v53;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v76) = v54;
    sub_1AF92525C(v28, v51);
    sub_1AF579490(&v73);
    if (v54)
    {
      v55 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v55 ^ 1);
    }

    goto LABEL_54;
  }

  sub_1AFDFE518();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AF92A61C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 0xFFFFFFFF || (, v6 = sub_1AF3CAA18(a1), , !v6))
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = sub_1AF924D3C(v6);
  }

  v8 = *(v7 + 16);

  v9 = MEMORY[0x1B27191B0](v8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  *&v35 = v9;
  v10 = *(v7 + 16);
  if (v10)
  {
    v11 = 32;
    do
    {
      sub_1AF70D168(v33, *(v7 + v11));
      v11 += 8;
      --v10;
    }

    while (v10);

    v12 = v35;
  }

  else
  {
    v12 = v9;
  }

  v13 = sub_1AF924F00(a3);
  v14 = MEMORY[0x1B27191B0](*(v13 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  *&v35 = v14;
  v15 = *(v13 + 16);
  if (v15)
  {
    v16 = 32;
    do
    {
      sub_1AF70D168(v33, *(v13 + v16));
      v16 += 8;
      --v15;
    }

    while (v15);

    v17 = v35;
  }

  else
  {
    v18 = v14;

    v17 = v18;
  }

  v19 = sub_1AF92A974(v17, v12);
  v20 = v19;
  v21 = *(v19 + 16);
  if (v21)
  {
    v22 = sub_1AFC8581C(*(v19 + 16), 0);
    sub_1AFC874F4(&v35, v22 + 4, v21, v20);
    sub_1AF0FBB14();
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1AF925B2C(a3);
  v24 = v22[2];
  if (v24)
  {
    v25 = 4;
    do
    {
      v26 = v22[v25];
      if (*(v23 + 16) && (v27 = sub_1AF449CB8(v22[v25]), (v28 & 1) != 0))
      {
        sub_1AF85B49C(*(v23 + 56) + 40 * v27, v33);
        v35 = v33[0];
        v36 = v33[1];
        v37 = v34;
      }

      else
      {
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
      }

      sub_1AF929D10(a1, a2, v26, &v35);
      sub_1AF92E918(&v35);
      ++v25;
      --v24;
    }

    while (v24);
  }

  v29 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

  if (v29)
  {
    v30 = *(v29 + 80);
    swift_unknownObjectWeakLoadStrong();
    v29 = *(v29 + 56);
  }

  else
  {
    v30 = 0;
  }

  *&v36 = 0;
  swift_unknownObjectUnownedInit();
  *&v35 = a2;
  *&v36 = v29;
  swift_unknownObjectUnownedAssign();
  swift_unownedRetain();
  swift_unknownObjectRelease();
  BYTE8(v36) = v30;
  sub_1AF6C8780(a1);
  sub_1AF579490(&v35);
  if (v30)
  {
    v31 = [objc_opt_self() immediateMode];
    sub_1AF6C5E30(v31 ^ 1);
  }
}

uint64_t sub_1AF92A974(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v12 = a2;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v3;
LABEL_8:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_1AF70D168(&v11, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));
  }

  while (1)
  {
    v8 = v3 + 1;
    if (v3 + 1 >= v7)
    {
      break;
    }

    v6 = *(a1 + 8 * v3++ + 64);
    if (v6)
    {
      v3 = v8;
      goto LABEL_8;
    }
  }

  return v12;
}

unsigned int *sub_1AF92AA4C(unsigned int *result, uint64_t a2)
{
  v3 = *result;
  v4 = result[1];
  if (v3 != a2 || v4 != HIDWORD(a2))
  {
    v7 = *(result + 1);
    v6 = *(result + 2);
    v8 = v3 | (v4 << 32);

    sub_1AF92A61C(v8, v7, v6);
  }

  return result;
}

id sub_1AF92AABC(unint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  swift_getObjectType();
  v9 = sub_1AF92975C();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  if (v10)
  {
    v12 = HIDWORD(v9);
  }

  else
  {
    v12 = 0;
  }

  if (v11 == -1 && v12 == 0)
  {
    v33 = sub_1AF43F1BC(MEMORY[0x1E69E7CC0]);
    if (a3)
    {
      v34 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v34)
      {
        v35 = *(v34 + 80);
        swift_unknownObjectWeakLoadStrong();
        v34 = *(v34 + 56);
      }

      else
      {
        v35 = 0;
      }

      swift_unknownObjectUnownedInit();
      v77[0] = v4;
      v78 = v34;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v79 = v35;
      v42 = swift_allocObject();
      *(v42 + 16) = 0xFFFFFFFFLL;
      *(v42 + 24) = v4;
      if (v35)
      {
        v43 = v42;
        swift_unownedRetainStrong();
        v72 = &_s18ReplicationPayloadVN;
        v73 = &off_1F2547F18;
        v69 = 0xFFFFFFFFLL;
        v70 = v4;
        v71 = v33;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_1AF92EF70;
        *(v44 + 24) = v43;
        v45 = sub_1AF92EF74;
LABEL_32:
        v74 = v45;
        v75 = v44;
        v76 = 14;

        sub_1AF6C67D0(&v69);

        sub_1AF57955C(&v69);
        sub_1AF579490(v77);
        v48 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v48 ^ 1);
        goto LABEL_34;
      }

LABEL_33:

      sub_1AF579490(v77);
      goto LABEL_34;
    }

    v36 = 0xFFFFFFFFLL;
LABEL_27:
    sub_1AF92A61C(v36, v4, v33);
LABEL_34:

    return [objc_allocWithZone(type metadata accessor for GraphDiagnostics(0)) init];
  }

  v14 = sub_1AF3CB8BC(v11 | (v12 << 32));
  if (!v14)
  {
    v33 = sub_1AF43F1BC(MEMORY[0x1E69E7CC0]);
    if (a3)
    {
      v37 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
      if (v37)
      {
        v38 = *(v37 + 80);
        swift_unknownObjectWeakLoadStrong();
        v37 = *(v37 + 56);
      }

      else
      {
        v38 = 0;
      }

      swift_unknownObjectUnownedInit();
      v77[0] = v4;
      v78 = v37;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v79 = v38;
      v46 = swift_allocObject();
      *(v46 + 16) = v11;
      *(v46 + 20) = v12;
      *(v46 + 24) = v4;
      if (v38)
      {
        v47 = v46;
        swift_unownedRetainStrong();
        v72 = &_s18ReplicationPayloadVN;
        v73 = &off_1F2547F18;
        v69 = __PAIR64__(v12, v11);
        v70 = v4;
        v71 = v33;
        v44 = swift_allocObject();
        *(v44 + 16) = sub_1AF92DD20;
        *(v44 + 24) = v47;
        v45 = sub_1AF92DD28;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    v36 = v11 | (v12 << 32);
    goto LABEL_27;
  }

  v15 = v14;
  v59 = v11 | (v12 << 32);
  v62 = a3;
  v60 = v11;
  v61 = v12;
  v63 = type metadata accessor for GraphDiagnostics(0);
  v66 = a4;
  v16 = objc_allocWithZone(v63);
  v17 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_graphID;
  v67 = v4;
  v18 = sub_1AFDFC318();
  v19 = *(v18 - 8);
  v65 = a2;
  v20 = v19;
  v21 = *(v19 + 56);
  v21(&v16[v17], 1, 1, v18);
  v22 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_rawNodesByID;

  v23 = MEMORY[0x1E69E7CC0];
  *&v16[v22] = sub_1AF42B7E0(MEMORY[0x1E69E7CC0]);
  *&v16[OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics] = v23;
  sub_1AF92E794(&v16[v17], &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92EB14);
  v64 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  (*(v20 + 16))(&v16[v17], v15 + OBJC_IVAR____TtC3VFX14AuthoringGraph_id, v18);
  v21(&v16[v17], 0, 1, v18);
  v68.receiver = v16;
  v68.super_class = v63;
  v24 = objc_msgSendSuper2(&v68, sel_init);

  v63 = &v58;
  MEMORY[0x1EEE9AC00](v25, v26);
  v57[16] = 1;

  sub_1AF3FB9C8(sub_1AF42B5C4, v57, 0, 0x1000000000000000uLL, 1, v23);
  v27 = sub_1AF449CC8();

  type metadata accessor for AuthoringGraph();
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = v23;
  *(v28 + 4) = 0;
  *(v28 + 5) = 0;
  *(v28 + 6) = sub_1AF42B088(v23);
  v29 = OBJC_IVAR____TtC3VFX14AuthoringGraph_id;
  sub_1AFDFC308();
  *(v28 + 3) = v27;
  sub_1AF9114A4();
  v30 = v67;
  (*(v20 + 24))(&v28[v29], v15 + v64, v18);

  v31 = v24;
  v32 = sub_1AF926DC4(v28, a1, v65, v24, v66);
  if (v62)
  {
    v39 = v32;
    v40 = *(v30 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    if (v40)
    {
      v41 = *(v40 + 80);
      swift_unknownObjectWeakLoadStrong();
      v40 = *(v40 + 56);
    }

    else
    {
      v41 = 0;
    }

    v78 = 0;
    swift_unknownObjectUnownedInit();
    v77[0] = v30;
    v78 = v40;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v79 = v41;
    v50 = swift_allocObject();
    v51 = v60;
    v52 = v61;
    *(v50 + 16) = v60;
    *(v50 + 20) = v52;
    *(v50 + 24) = v30;
    if (v41)
    {
      v53 = v52;
      v54 = v50;
      swift_unownedRetainStrong();
      v72 = &_s18ReplicationPayloadVN;
      v73 = &off_1F2547F18;
      v69 = __PAIR64__(v53, v51);
      v70 = v30;
      v71 = v39;
      v55 = swift_allocObject();
      *(v55 + 16) = sub_1AF92EF70;
      *(v55 + 24) = v54;
      v74 = sub_1AF92EF74;
      v75 = v55;
      v76 = 14;

      sub_1AF6C67D0(&v69);

      sub_1AF57955C(&v69);
      sub_1AF579490(v77);
      v56 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v56 ^ 1);
    }

    else
    {

      sub_1AF579490(v77);
    }
  }

  else
  {
    sub_1AF92A61C(v59, v30, v32);
  }

  return v31;
}

void sub_1AF92B444(void *a1, uint64_t a2, uint64_t *a3)
{
  ObjectType = swift_getObjectType();

  sub_1AF92E078(a1, a3, ObjectType, a2);
}

void sub_1AF92B498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v6 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AF92EB14(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v45 = v41 - v12;
  sub_1AFDFD638();
  v13 = sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_26;
  }

  v15 = Strong;
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {

LABEL_26:

    return;
  }

  v41[1] = v15;
  v42 = v16;
  v43 = v13;
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = (a2 + 80);
    while (1)
    {
      v19 = *(v18 - 6);
      v21 = *(v18 - 1);
      v20 = *v18;
      if (!*(v18 - 16))
      {
        break;
      }

      v22 = sub_1AFDFEE28();

      if (v22)
      {
        goto LABEL_13;
      }

LABEL_8:
      v18 += 7;
      if (!--v17)
      {
        goto LABEL_18;
      }
    }

LABEL_13:
    type metadata accessor for GraphCodeGen();
    v23 = v45;
    sub_1AF94ADBC(v19, v44, v45);
    sub_1AF487314(v23, v9 + v6[5]);
    *(v9 + v6[8]) = 0;
    *v9 = 0;
    v24 = v9 + v6[6];
    *v24 = 8;
    v24[8] = -64;
    v25 = (v9 + v6[7]);
    *v25 = v21;
    v25[1] = v20;
    sub_1AF92E800(&qword_1EB638988, type metadata accessor for GraphError);
    v26 = swift_allocError();
    sub_1AF92E010(v9, v27, type metadata accessor for GraphError);
    v28 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v29 = *(a4 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + v28) = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_1AF420408(0, v29[2] + 1, 1, v29);
      *(a4 + v28) = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      *(a4 + v28) = sub_1AF420408(v31 > 1, v32 + 1, 1, v29);
    }

    sub_1AF92DFB0(v9, type metadata accessor for GraphError);
    sub_1AF92E794(v45, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92EB14);
    v33 = *(a4 + v28);
    *(v33 + 16) = v32 + 1;
    *(v33 + 8 * v32 + 32) = v26;
    *(a4 + v28) = v33;
    goto LABEL_8;
  }

LABEL_18:
  v34 = objc_opt_self();
  v35 = v42;
  v36 = [v34 worldWithWorldRef_];
  v37 = sub_1AF93E128();
  if (sub_1AF3D8564(&unk_1EB6440D0) && (v38 = swift_unknownObjectWeakLoadStrong(), , v38))
  {
    ObjectType = swift_getObjectType();
    v40 = swift_conformsToProtocol2();
    if (v40)
    {
      (*(v40 + 24))(v37, ObjectType, v40);

      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1AF92B9EC(void *a1)
{
  v2 = a1;
  sub_1AF92BA28(v2, v1);
}

uint64_t sub_1AF92BA28(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  *v60 = MEMORY[0x1E69E7CC0];
  v4 = sub_1AF92949C();
  if (v5)
  {
    if (v4 != 0xFFFFFFFF)
    {
      v6 = v4;

      v7 = sub_1AF3CB8BC(v6);

      if (v7)
      {
        v8 = v3;
        v9 = v3;
        v10 = MEMORY[0x1E69E7CC0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1AF426E64(0, v10[2] + 1, 1, v10);
        }

        v12 = v10[2];
        v11 = v10[3];
        if (v12 >= v11 >> 1)
        {
          v10 = sub_1AF426E64(v11 > 1, v12 + 1, 1, v10);
        }

        v10[2] = v12 + 1;
        v13 = &v10[3 * v12];
        v13[4] = v9;
        v13[5] = &off_1F256A548;
        v13[6] = v7;
        *v60 = v10;
        v3 = v8;
      }
    }
  }

  v14 = [v3 rootNode];
  v15 = swift_allocObject();
  *(v15 + 16) = v60;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1AF92CA38;
  *(v16 + 24) = v15;
  *&v61[2] = sub_1AF92EEFC;
  *(&v61[2] + 1) = v16;
  *&v61[0] = MEMORY[0x1E69E9820];
  *(&v61[0] + 1) = 1107296256;
  *&v61[1] = sub_1AF92EF7C;
  *(&v61[1] + 1) = &unk_1F24E6140;
  v17 = _Block_copy(v61);

  [v14 enumerateHierarchyUsingBlock_];

  _Block_release(v17);
  swift_isEscapingClosureAtFileLocation();

  v18 = [v3 assetRegistry];
  v19 = [v18 rootNode];

  v20 = swift_allocObject();
  *(v20 + 16) = v60;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AF92CA58;
  *(v21 + 24) = v20;
  *&v61[2] = sub_1AF92CA60;
  *(&v61[2] + 1) = v21;
  *&v61[0] = MEMORY[0x1E69E9820];
  *(&v61[0] + 1) = 1107296256;
  *&v61[1] = sub_1AF92EF7C;
  *(&v61[1] + 1) = &unk_1F2547B80;
  v22 = _Block_copy(v61);

  [v19 enumerateHierarchyUsingBlock_];

  _Block_release(v22);
  swift_isEscapingClosureAtFileLocation();

  v23 = *v60;
  v24 = *(*v60 + 16);
  if (v24)
  {

    v25 = v3;
    v26 = v23 + 48;
    do
    {
      v27 = *(v26 - 16);
      v28 = *(v26 - 8);
      v26 += 24;
      v29 = v27;

      v30 = [v25 scene];

      v31 = sub_1AF92AABC(v29, v28, 0, MEMORY[0x1E69E7CD0]);

      --v24;
    }

    while (v24);

    v3 = v25;
  }

  v32 = [v3 scene];
  v33 = *&v32[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  sub_1AF8D360C(v33);
  sub_1AF8BD8C0(v33);
  type metadata accessor for ScriptCompilerSystem();
  swift_allocObject();
  v34 = sub_1AFA5C588();
  v35 = OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  *(v33 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig) = 1;
  v34[2] = v33;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;

  v37 = dispatch_group_create();

  dispatch_group_enter(v37);
  memcpy(v61, v34 + 12, 0x148uLL);
  sub_1AFA70744(v34, 0, v37, 1, 0, 0, v61, v36, v34);
  memcpy(v60, v34 + 53, sizeof(v60));
  sub_1AFA74E78(v34, 0, v37, 1, 0, 0, v60, v36, v34);
  memcpy(v59, v34 + 94, sizeof(v59));
  sub_1AFA7959C(v34, 0, v37, 1, 0, 0, v59, v36, v34);
  memcpy(v58, v34 + 135, sizeof(v58));
  sub_1AFA7E50C(v34, 0, v37, 1, 0, 0, v58, v36, v34);
  memcpy(v57, v34 + 176, sizeof(v57));
  sub_1AFA833C4(v34, 0, v37, 1, 0, 0, v57, v36, v34);
  memcpy(__dst, v34 + 258, sizeof(__dst));
  sub_1AFA87AFC(v34, 0, v37, 1, 0, 0, __dst, v36, v34);
  memcpy(v55, v34 + 299, sizeof(v55));
  sub_1AFA8C234(v34, 0, v37, 1, 0, 0, v55, v36, v34);
  memcpy(v54, v34 + 340, sizeof(v54));
  sub_1AFA90A30(v34, 0, v37, 1, 0, 0, v54, v36, v34);
  memcpy(v53, v34 + 217, sizeof(v53));
  sub_1AFA967B8(v34, 0, v37, 1, 0, 0, v53, v36, v34);
  dispatch_group_leave(v37);
  sub_1AFDFDAA8();
  dispatch_group_enter(v37);
  memcpy(v52, v34 + 12, sizeof(v52));
  sub_1AFA70744(v34, 0, v37, 1, 0, 1, v52, v36, v34);
  memcpy(v51, v34 + 53, sizeof(v51));
  sub_1AFA74E78(v34, 0, v37, 1, 0, 1, v51, v36, v34);
  memcpy(v50, v34 + 94, sizeof(v50));
  sub_1AFA7959C(v34, 0, v37, 1, 0, 1, v50, v36, v34);
  memcpy(v49, v34 + 135, sizeof(v49));
  sub_1AFA7E50C(v34, 0, v37, 1, 0, 1, v49, v36, v34);
  memcpy(v48, v34 + 176, sizeof(v48));
  sub_1AFA833C4(v34, 0, v37, 1, 0, 1, v48, v36, v34);
  memcpy(v47, v34 + 258, sizeof(v47));
  sub_1AFA87AFC(v34, 0, v37, 1, 0, 1, v47, v36, v34);
  memcpy(v46, v34 + 299, sizeof(v46));
  sub_1AFA8C234(v34, 0, v37, 1, 0, 1, v46, v36, v34);
  memcpy(v45, v34 + 340, sizeof(v45));
  sub_1AFA90A30(v34, 0, v37, 1, 0, 1, v45, v36, v34);
  memcpy(v44, v34 + 217, sizeof(v44));
  sub_1AFA967B8(v34, 0, v37, 1, 0, 1, v44, v36, v34);

  dispatch_group_leave(v37);
  v38 = *(v36 + 16);
  if (v38)
  {
    swift_willThrow();
    v39 = v38;

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v43[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF3AB90);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v40 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v42 = v40;
      swift_once();
      v40 = v42;
    }

    v43[0] = 0;
    sub_1AF0D4F18(v40, v43, 0, 0xE000000000000000);
  }

  else
  {
  }

  *(v33 + v35) = 0;
}

uint64_t sub_1AF92C524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = sub_1AF6C97E0(*v2);
  v7 = v6;
  v8 = HIDWORD(v6);
  v9 = *(a1 + OBJC_IVAR____TtC3VFX15DefaultRemapper_destinationEntityManager);
  swift_unownedRetainStrong();

  swift_unknownObjectRetain();
  v10 = sub_1AF92D900(v5, a1);
  result = swift_unknownObjectRelease();
  *a2 = v7;
  *(a2 + 4) = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_1AF92C5D0(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF92EB14(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v28 - v16;
  v18 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v18;
  v30[2] = *(a1 + 32);
  if (a2(v30))
  {
    v19 = *(a1 + 8);
  }

  else
  {
    v31 = v2;
    _s11DeletedNodeCMa_0(0);
    v19 = swift_allocObject();
    _s11DeletedNodeCMa(0);
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E7CC0];
    *(v20 + 3) = 0;
    *(v20 + 4) = 0;
    *(v20 + 2) = v21;
    v29 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    sub_1AFDFC308();
    (*(v6 + 56))(v17, 1, 1, v5);
    *(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v20;
    *(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v21;
    sub_1AF487314(v17, v13);
    v22 = *(v6 + 48);
    if (v22(v13, 1, v5) == 1)
    {
      sub_1AFDFC308();

      sub_1AF92E794(v17, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92EB14);
      if (v22(v13, 1, v5) != 1)
      {
        sub_1AF92E794(v13, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92EB14);
      }
    }

    else
    {

      sub_1AF92E794(v17, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1AF92EB14);
      (*(v6 + 32))(v9, v13, v5);
    }

    (*(v6 + 32))(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v9, v5);
    (*(v6 + 24))(&v20[v29], v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v5);

    v23 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 1;
    v24 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 1;
    v25 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v25 = 0;
    *(v25 + 8) = 1;
    v26 = (v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v26 = 0;
    v26[1] = 0;
  }

  return v19;
}

uint64_t sub_1AF92CA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF92CA88(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2)
    {
      return sub_1AF92CB78(0, v2, 1, a1);
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      type metadata accessor for Node();
      v6 = sub_1AFDFD488();
      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
    }

    v7 = v6 & 0xFFFFFFFFFFFFFF8;
    v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
    v8[1] = v5;
    sub_1AF92CD04(v8, v9, a1, v4);
    *(v7 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF92CB78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v20 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
    do
    {
      v7 = *(v20 + 8 * v4);
      v8 = v6;
      v22 = v5;
      while (1)
      {
        v9 = *v5;
        v10 = *(*v7 + 128);

        v12 = v10(v11);
        v14 = v13;
        if (v12 == (*(*v9 + 128))() && v14 == v15)
        {
          break;
        }

        v17 = sub_1AFDFEE28();

        if (v17)
        {
          v18 = *v5;
          v7 = v5[1];
          *v5 = v7;
          v5[1] = v18;
          --v5;
          if (!__CFADD__(v8++, 1))
          {
            continue;
          }
        }

        goto LABEL_5;
      }

LABEL_5:
      ++v4;
      v5 = v22 + 1;
      --v6;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_1AF92CD04(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v91 = *a1;
    v8 = MEMORY[0x1E69E7CC0];
    v88 = a4;
    while (1)
    {
      v9 = v7++;
      v96 = v8;
      if (v7 < v6)
      {
        v92 = v6;
        v10 = *a3;
        v11 = v9;
        v12 = v7;
        v89 = v11;
        v13 = *(*a3 + 8 * v11);
        v14 = *(**(*a3 + 8 * v7) + 128);

        v16 = v14(v15);
        v18 = v17;
        if (v16 == (*(*v13 + 128))() && v18 == v19)
        {
          v94 = 0;
        }

        else
        {
          v94 = sub_1AFDFEE28();
        }

        v86 = v5;

        v21 = 8 * v89;
        v22 = v10 + 8 * v89 + 16;
        v23 = 8 * v89 + 8;
        v8 = v96;
        v7 = v12;
        do
        {
          v25 = v7;
          v26 = v23;
          if (++v7 >= v92)
          {
            break;
          }

          v98 = v7;
          v27 = *(v22 - 8);
          v28 = *(**v22 + 128);

          v30 = v28(v29);
          v32 = v31;
          v34 = v30 == (*(*v27 + 128))() && v32 == v33;
          v24 = v34 ? 0 : sub_1AFDFEE28();

          v22 += 8;
          v23 = v26 + 8;
          v8 = v96;
          v7 = v98;
        }

        while (((v94 ^ v24) & 1) == 0);
        if (v89 >= v7 || (v94 & 1) == 0)
        {
          v5 = v86;
          a4 = v88;
          v9 = v89;
        }

        else
        {
          v35 = v89;
          do
          {
            if (v35 != v25)
            {
              v36 = *a3;
              v37 = *(*a3 + v21);
              *(v36 + v21) = *(*a3 + v26);
              *(v36 + v26) = v37;
            }

            ++v35;
            v26 -= 8;
            v21 += 8;
            v39 = v35 < v25--;
          }

          while (v39);
          v5 = v86;
          a4 = v88;
          v9 = v89;
        }
      }

      v38 = a3[1];
      v39 = v7 < v38 && v7 - v9 < a4;
      if (v39)
      {
        if (v9 + a4 >= v38)
        {
          v40 = a3[1];
        }

        else
        {
          v40 = v9 + a4;
        }

        if (v9 + a4 == v7)
        {
          v7 = v40;
        }

        else
        {
          v87 = v5;
          v93 = *a3;
          v95 = v40;
          v41 = *a3 + 8 * v7 - 8;
          v90 = v9;
          v42 = v9 - v7;
          do
          {
            v99 = v7;
            v43 = *(v93 + 8 * v7);
            v44 = v42;
            v45 = v41;
            while (1)
            {
              v46 = *v45;
              v47 = *(*v43 + 128);

              v49 = v47(v48);
              v51 = v50;
              if (v49 == (*(*v46 + 128))() && v51 == v52)
              {
                break;
              }

              v54 = sub_1AFDFEE28();

              if (v54)
              {
                v55 = *v45;
                v43 = v45[1];
                *v45 = v43;
                v45[1] = v55;
                --v45;
                if (!__CFADD__(v44++, 1))
                {
                  continue;
                }
              }

              goto LABEL_39;
            }

LABEL_39:
            v7 = v99 + 1;
            v41 += 8;
            --v42;
          }

          while (v99 + 1 != v95);
          v7 = v95;
          v5 = v87;
          v8 = v96;
          v9 = v90;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF4209A4(0, *(v8 + 2) + 1, 1, v8);
      }

      v58 = *(v8 + 2);
      v57 = *(v8 + 3);
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v8 = sub_1AF4209A4(v57 > 1, v58 + 1, 1, v8);
      }

      *(v8 + 2) = v59;
      v60 = v8 + 32;
      v61 = &v8[16 * v58 + 32];
      *v61 = v9;
      *(v61 + 1) = v7;
      if (v58)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      a4 = v88;
      if (v7 >= v6)
      {
        goto LABEL_71;
      }
    }

    while (1)
    {
      v62 = v59 - 1;
      if (v59 >= 4)
      {
        v66 = &v60[16 * v59];
        v67 = *(v66 - 7) - *(v66 - 8);
        v65 = *(v66 - 5) - *(v66 - 6);
        v68 = &v8[16 * v59];
        v63 = *v68;
        v64 = *(v68 + 1);
        if (v65 - v63 + v64 >= v67)
        {
          v71 = v59 - 2;
          v70 = *&v60[16 * v62 + 8] - *&v60[16 * v62];
          goto LABEL_65;
        }
      }

      else
      {
        if (v59 != 3)
        {
          v69 = *&v8[16 * v59 + 8] - *&v8[16 * v59];
          v70 = *&v60[16 * v62 + 8] - *&v60[16 * v62];
LABEL_62:
          if (v70 < v69)
          {
            goto LABEL_3;
          }

          goto LABEL_67;
        }

        v63 = *(v8 + 6);
        v64 = *(v8 + 7);
        v65 = *(v8 + 5) - *(v8 + 4);
      }

      v69 = v64 - v63;
      v70 = *&v60[16 * v62 + 8] - *&v60[16 * v62];
      if (v69 + v70 < v65)
      {
        goto LABEL_62;
      }

      v71 = v59 - 2;
LABEL_65:
      if (v65 < v70)
      {
        v62 = v71;
      }

LABEL_67:
      v72 = &v60[16 * v62];
      v73 = *(v72 - 2);
      v74 = *(v72 + 1);
      sub_1AF92D3D0((*a3 + 8 * v73), (*a3 + 8 * *v72), (*a3 + 8 * v74), v91);
      if (v5)
      {
      }

      *(v72 - 2) = v73;
      *(v72 - 1) = v74;
      v75 = *(v8 + 2);
      v59 = v75 - 1;
      memmove(&v60[16 * v62], v72 + 16, 16 * (v75 - 1 - v62));
      *(v8 + 2) = v75 - 1;
      if (v75 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_71:
  v76 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AF650C88(v8);
  }

  v77 = v8 + 16;
  v78 = *(v8 + 2);
  if (v78 >= 2)
  {
    do
    {
      v79 = &v8[16 * v78];
      v80 = *v79;
      v81 = &v77[2 * v78];
      v82 = v81[1];
      sub_1AF92D3D0((*a3 + 8 * *v79), (*a3 + 8 * *v81), (*a3 + 8 * v82), v76);
      if (v5)
      {
        break;
      }

      *v79 = v80;
      *(v79 + 1) = v82;
      v83 = *v77 - 1;
      memmove(&v77[2 * v78], v81 + 2, 16 * (*v77 - v78));
      *v77 = v83;
      v78 = v83;
    }

    while (v83 > 1);
  }
}